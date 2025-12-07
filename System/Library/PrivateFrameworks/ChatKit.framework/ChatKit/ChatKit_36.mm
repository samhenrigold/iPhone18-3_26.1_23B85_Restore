uint64_t sub_190B3B7AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_190D53910();
}

id EffectPickerExtensionDetails.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EffectPickerExtensionDetails.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DD60, &unk_190DF4488);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - v3;
  v5 = OBJC_IVAR____TtC7ChatKit28EffectPickerExtensionDetails__currentEffect;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B768, &qword_190DEC300);
  sub_190D538D0();
  (*(v2 + 32))(&v0[v5], v4, v1);
  *&v0[OBJC_IVAR____TtC7ChatKit28EffectPickerExtensionDetails_effectData] = MEMORY[0x1E69E7CC0];
  v6 = type metadata accessor for EffectPickerExtensionDetails(0);
  v8.receiver = v0;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_init);
}

id EffectPickerExtensionDetails.__deallocating_deinit(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EffectPickerExtensionDetails(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_190B3BC08@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EffectPickerExtensionDetails(0);
  result = sub_190D538C0();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for EffectPickerExtensionDetails(uint64_t a1)
{
  result = qword_1EAD5DD70;
  if (!qword_1EAD5DD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_190B3BC98()
{
  result = qword_1EAD5DD68;
  if (!qword_1EAD5DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DD68);
  }

  return result;
}

void sub_190B3BD04(uint64_t a1)
{
  sub_190B3BE20(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_190B3BE20(uint64_t a1)
{
  if (!qword_1EAD5DD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B768, &qword_190DEC300);
    v1 = sub_190D53920();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAD5DD80);
    }
  }
}

double sub_190B3BE94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_190D52690();
    sub_190D52690();

    sub_190D52690();
  }

  return result;
}

uint64_t sub_190B3BF0C()
{
  v0 = sub_190D51FC0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69A66A0], v0, v2);
  v5 = sub_190D51FB0();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_190B3C054@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_190D51FC0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69A66A0], v2, v4);
  v7 = sub_190D51FB0();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  a1[1] = v9;
  return result;
}

uint64_t sub_190B3C150()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DDF8, &qword_190DF49D8);
  __swift_allocate_value_buffer(v0, qword_1EAD9E308);
  __swift_project_value_buffer(v0, qword_1EAD9E308);
  sub_190B93088();
  return sub_190D53860();
}

uint64_t sub_190B3C210()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E180, &unk_190DEBF50);
  __swift_allocate_value_buffer(v0, qword_1EAD9E320);
  __swift_project_value_buffer(v0, qword_1EAD9E320);
  [objc_opt_self() isTimeSensitiveCustomModelAvailable];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B588, &unk_190DEBF60);
  sub_190D536E0();
  *(swift_allocObject() + 16) = xmmword_190DD1D90;
  sub_190D536D0();
  return sub_190D53860();
}

uint64_t sub_190B3C374@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a1;
  v17 = sub_190D513E0();
  v3 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DE00, &qword_190DF49E0);
  v6 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DE08, &qword_190DF49E8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  sub_190233640(&qword_1EAD5DE10, &qword_1EAD5DE08, &qword_190DF49E8, MEMORY[0x1E6968DA8]);
  sub_190D51400();
  v19 = 5;
  sub_190D513F0();
  v13 = v17;
  (*(v3 + 104))(v5, *MEMORY[0x1E6968C30], v17);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DE18, &unk_190DF49F0);
  a2[4] = sub_190B45A3C();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_190233640(&qword_1EAD5DE38, &qword_1EAD5DE00, &qword_190DF49E0, MEMORY[0x1E6968D20]);
  v14 = v18;
  sub_190D513D0();
  (*(v3 + 8))(v5, v13);
  (*(v6 + 8))(v8, v14);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_190B3C69C@<X0>(uint64_t *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A958, &unk_190DEBB40);
  a2[4] = sub_190233640(&qword_1EAD46308, &qword_1EAD5A958, &unk_190DEBB40, MEMORY[0x1E6968DA0]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_190233640(&qword_1EAD46300, &qword_1EAD5A958, &unk_190DEBB40, MEMORY[0x1E6968DA8]);
  return sub_190D51400();
}

uint64_t sub_190B3C7B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57118, &qword_190DDF3E0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - v2;
  v4 = sub_190D536F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57120, &qword_190DDF3E8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  sub_190D53700();
  v12 = MEMORY[0x1E6982AC0];
  MEMORY[0x193AEEF00](v7, v4, MEMORY[0x1E6982AC0]);
  (*(v5 + 8))(v7, v4);
  v16 = v4;
  v17 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x193AEEF30](v11, v8, OpaqueTypeConformance2);
  v16 = v8;
  v17 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_190D53680();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v14;
}

double sub_190B3CA58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_translationTipObservation;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_190D50920();

  return result;
}

double sub_190B3CAC0()
{
  swift_beginAccess();
  sub_190D50920();
  return result;
}

double sub_190B3CB08(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_translationTipObservation;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void (*sub_190B3CBD8(uint64_t *a1))(id **, char)
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
  v5 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_chatController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190B45D84;
}

void (*sub_190B3CCA0(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190B1942C;
}

void (*sub_190B3CD68(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_checkInDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190B18530;
}

void (*sub_190B3CE30(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_translationDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190B1942C;
}

void sub_190B3CEDC()
{
  if (*(v0 + OBJC_IVAR____TtC7ChatKit16CKChatTipManager____lazy_storage___checkInTip) == 1)
  {
    *(v0 + OBJC_IVAR____TtC7ChatKit16CKChatTipManager____lazy_storage___checkInTip) = 0;
  }
}

void sub_190B3CF10(void *a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_190B3CF68(uint64_t *a1))(id **, char)
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
  v5 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_translationTipView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190B3D000;
}

uint64_t sub_190B3D004(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DDB8, &unk_190DF4670);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for TranslationTip(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190B3D474(a1, v11, v9);
  v12 = *a2;
  sub_190B3D548(v11, v6, v13);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager____lazy_storage___translationTip;
  swift_beginAccess();
  sub_190B3D4D8(v6, v12 + v14);
  return swift_endAccess();
}

uint64_t sub_190B3D170@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DDB8, &unk_190DF4670);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager____lazy_storage___translationTip;
  swift_beginAccess();
  sub_190B3D404(v1 + v9, v8);
  v10 = type metadata accessor for TranslationTip(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_190B3D548(v8, a1, v12);
  }

  sub_19022EEA4(v8, &qword_1EAD5DDB8, &unk_190DF4670);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = [Strong conversation];

    v16 = [v15 uniqueIdentifier];
    v17 = sub_190D56F10();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v21 = *(v10 + 24);
  v22 = sub_190D519C0();
  v23.n128_f64[0] = (*(*(v22 - 8) + 56))(a1 + v21, 1, 1, v22);
  *a1 = v17;
  a1[1] = v19;
  a1[2] = MEMORY[0x1E69E7CC0];
  sub_190B3D474(a1, v5, v23);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_190B3D4D8(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_190B3D404(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DDB8, &unk_190DF4670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190B3D474(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TranslationTip(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_190B3D4D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DDB8, &unk_190DF4670);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_190B3D548(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TranslationTip(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_190B3D5AC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DDB8, &unk_190DF4670);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - v5;
  sub_190B3D548(a1, &v10 - v5, v4);
  v7 = type metadata accessor for TranslationTip(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager____lazy_storage___translationTip;
  swift_beginAccess();
  sub_190B3D4D8(v6, v1 + v8);
  return swift_endAccess();
}

void (*sub_190B3D6A4(uint64_t *a1))(uint64_t **a1, char a2, __n128 a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DDB8, &unk_190DF4670) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = type metadata accessor for TranslationTip(0);
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[10] = v10;
  sub_190B3D170(v10);
  return sub_190B3D7C4;
}

void sub_190B3D7C4(uint64_t **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = ((*a1)[9] + 56);
  v5 = (*a1)[10];
  v6 = (*a1)[7];
  v7 = (*a1)[8];
  v8 = (*a1)[6];
  if (a2)
  {
    sub_190B3D474(v3[10], v3[7], a3);
    (*v4)(v6, 0, 1, v7);
    v9 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager____lazy_storage___translationTip;
    swift_beginAccess();
    sub_190B3D4D8(v6, v8 + v9);
    swift_endAccess();
    sub_190B3D900(v5, v10);
  }

  else
  {
    sub_190B3D548(v3[10], v3[7], a3);
    (*v4)(v6, 0, 1, v7);
    v11 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager____lazy_storage___translationTip;
    swift_beginAccess();
    sub_190B3D4D8(v6, v8 + v11);
    swift_endAccess();
  }

  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_190B3D900(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for TranslationTip(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_190B3D970(void *a1, unsigned int *a2)
{
  v5 = sub_190D51FC0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v2 + *a1);
  if (v10[1])
  {
    v11 = *v10;
  }

  else
  {
    (*(v6 + 104))(v9, *a2, v5, v7);
    v11 = sub_190D51FB0();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *v10 = v11;
    v10[1] = v13;
    sub_190D52690();
  }

  sub_190D52690();
  return v11;
}

void (*sub_190B3DADC(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_messageRequestsDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190B1942C;
}

id CKChatTipManager.__allocating_init(chatController:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_190B44AB0(a1);

  return v4;
}

id CKChatTipManager.init(chatController:)(void *a1)
{
  v2 = sub_190B44AB0(a1);

  return v2;
}

uint64_t sub_190B3DC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54880, &unk_190DD7C50);
  v4[9] = swift_task_alloc();
  v5 = sub_190D53840();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54888, &unk_190DF4A40);
  v4[14] = swift_task_alloc();
  v4[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54890, &unk_190DD7C60);
  v4[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54898, &qword_190DF4A50);
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD548A0, &unk_190DD7C70);
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = sub_190D572A0();
  v4[24] = sub_190D57290();
  v9 = sub_190D57240();
  v4[25] = v9;
  v4[26] = v8;

  return MEMORY[0x1EEE6DFA0](sub_190B3DEBC, v9, v8);
}

uint64_t sub_190B3DEBC()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v0[6] = sub_190B3CEC8();
  v0[7] = v4;
  sub_190B44D54();
  sub_190D53530();

  MEMORY[0x193AF3CF0](v3);
  sub_190233640(&qword_1EAD46710, &qword_1EAD54888, &unk_190DF4A40, MEMORY[0x1E69E86A0]);
  sub_190D57380();
  sub_190D58480();
  (*(v1 + 8))(v2, v3);
  sub_190D58490();
  v0[27] = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_inlineTip;
  v5 = sub_190D57290();
  v0[28] = v5;
  if (v5)
  {
    swift_getObjectType();
    v6 = sub_190D57240();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v0[29] = v6;
  v0[30] = v8;

  return MEMORY[0x1EEE6DFA0](sub_190B3E074, v6, v8);
}

uint64_t sub_190B3E074()
{
  v1 = v0[28];
  v0[31] = sub_190D58470();
  sub_190233640(&qword_1EAD46718, &qword_1EAD54890, &unk_190DD7C60, MEMORY[0x1E69E8690]);
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_190B3E178;
  v3 = v0[9];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v3, v1, v4);
}

uint64_t sub_190B3E178()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_190B3E460;
  }

  else
  {
    (*(v2 + 248))();
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_190B3E2A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_190B3E2A0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_19022EEA4(v3, &qword_1EAD54880, &unk_190DD7C50);
    v4 = v0[25];
    v5 = v0[26];

    return MEMORY[0x1EEE6DFA0](sub_190B3E788, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[12], v3, v1);
    v6 = sub_190D58480();
    v0[33] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[34] = v8;
    *v8 = v0;
    v8[1] = sub_190B3E478;
    v9 = v0[12];

    return (v11)(v0 + 35, v9);
  }
}

uint64_t sub_190B3E478()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);

  (*(v3 + 8))(v2, v4);
  *(v1 + 281) = *(v1 + 280);
  v5 = *(v1 + 240);
  v6 = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](sub_190B3E624, v6, v5);
}

uint64_t sub_190B3E624()
{

  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return MEMORY[0x1EEE6DFA0](sub_190B3E688, v1, v2);
}

uint64_t sub_190B3E688()
{
  if (*(v0 + 281))
  {
    sub_190B3EBD8();
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      v2 = swift_unknownObjectWeakLoadStrong();
      if (v2)
      {
        v3 = v2;
        [v2 removeFromSuperview];
      }

      swift_unknownObjectWeakAssign();
    }
  }

  v4 = sub_190D57290();
  *(v0 + 224) = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = sub_190D57240();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v0 + 232) = v5;
  *(v0 + 240) = v7;

  return MEMORY[0x1EEE6DFA0](sub_190B3E074, v5, v7);
}

uint64_t sub_190B3E788()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

double sub_190B3E888()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      [v2 removeFromSuperview];
    }

    swift_unknownObjectWeakAssign();
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {

    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      [v5 removeFromSuperview];
    }

    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      [v7 tipManagerDidDismissTranscriptBannerTip];
      swift_unknownObjectRelease();
    }
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {

    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      [v9 removeFromSuperview];
    }

    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      [v11 tipManagerDidDismissTranscriptBannerTip];
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {

    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      [v13 removeFromSuperview];
    }

    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      [v15 tipManagerDidDismissTranscriptBannerTip];
      swift_unknownObjectRelease();
    }
  }

  v16 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_tipObservation;
  if (*(v0 + OBJC_IVAR____TtC7ChatKit16CKChatTipManager_tipObservation))
  {
    sub_190D50920();
    sub_190D57330();
  }

  *(v0 + v16) = 0;

  v17 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_checkInTipObservation;
  if (*(v0 + OBJC_IVAR____TtC7ChatKit16CKChatTipManager_checkInTipObservation))
  {
    sub_190D50920();
    sub_190D57330();
  }

  *(v0 + v17) = 0;

  v18 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_translationTipObservation;
  swift_beginAccess();
  if (*(v0 + v18))
  {
    sub_190D50920();
    sub_190D57330();
  }

  *(v0 + v18) = 0;

  return result;
}

void sub_190B3EBD8()
{
  v1 = sub_190D56420();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  if (![Strong shouldShowTipsWithAlignment_])
  {
LABEL_12:

    return;
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7 || (v7 = swift_unknownObjectWeakLoadStrong()) != 0 || (swift_beginAccess(), (v7 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v8 = v7;

    return;
  }

  v6 = v6;
  v9 = [v6 view];
  if (!v9)
  {

    goto LABEL_12;
  }

  v10 = v9;
  v44[1] = v0;
  v11 = sub_190B3CEC8();
  v13 = v12;
  v46 = &type metadata for UndoOrEditMessageTip;
  v47 = sub_190B44D54();
  v45[0] = v11;
  v45[1] = v13;
  v14 = objc_allocWithZone(sub_190D53600());
  v15 = sub_190D53610();
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 secondaryLabelColor];
  [v17 setTintColor_];

  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = [objc_opt_self() sharedBehaviors];
  if (v19)
  {
    v20 = v19;
    sub_190D56410();
    v46 = sub_190D564A0();
    v47 = MEMORY[0x1E6981AD0];
    __swift_allocate_boxed_opaque_existential_1(v45);
    sub_190D56440();
    (*(v2 + 8))(v4, v1);
    sub_190D535E0();
    v44[0] = v20;
    [v20 tipViewCornerRadius];
    sub_190D535C0();
    [v10 addSubview_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_190DD55F0;
    v22 = [v17 topAnchor];
    v23 = [v10 safeAreaLayoutGuide];
    v24 = [v23 topAnchor];

    v25 = [v22 constraintEqualToAnchor:v24 constant:2.0];
    *(v21 + 32) = v25;
    v45[0] = v21;
    v26 = [v6 traitCollection];

    v27 = [v26 horizontalSizeClass];
    if (v27 == 1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_190DD5CE0;
      v29 = [v17 leadingAnchor];
      v30 = [v10 safeAreaLayoutGuide];
      v31 = [v30 leadingAnchor];

      v32 = &selRef_constraintEqualToAnchor_constant_;
      v33 = [v29 constraintEqualToAnchor:v31 constant:20.0];
      v34 = -20.0;
      v35 = &selRef_trailingAnchor;
    }

    else
    {
      [v17 sizeToFit];
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_190DD5CE0;
      v29 = [v17 centerXAnchor];
      v36 = [v10 safeAreaLayoutGuide];
      v31 = [v36 centerXAnchor];

      v33 = [v29 constraintEqualToAnchor_];
      v32 = &selRef_constraintLessThanOrEqualToAnchor_constant_;
      v35 = &selRef_widthAnchor;
      v34 = -40.0;
    }

    v37 = v33;

    *(inited + 32) = v37;
    v38 = [v17 *v35];

    v39 = [v10 safeAreaLayoutGuide];
    v40 = [v39 *v35];

    v41 = [v38 *v32];
    *(inited + 40) = v41;
    sub_190CAA5E8(inited);
    v42 = objc_opt_self();
    sub_1902188FC(0, &qword_1EAD45040, 0x1E696ACD8);
    v43 = sub_190D57160();

    [v42 activateConstraints_];

    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

double sub_190B3F23C()
{
  v0 = sub_190D53710();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[0] = sub_190B3CEC8();
  v6[1] = v4;
  (*(v1 + 104))(v3, *MEMORY[0x1E6982AE0], v0);
  sub_190B44D54();
  sub_190D53520();
  (*(v1 + 8))(v3, v0);

  return result;
}

uint64_t sub_190B3F4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[52] = a4;
  v5 = sub_190D56420();
  v4[53] = v5;
  v4[54] = *(v5 - 8);
  v4[55] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54880, &unk_190DD7C50);
  v4[56] = swift_task_alloc();
  v6 = sub_190D53840();
  v4[57] = v6;
  v4[58] = *(v6 - 8);
  v4[59] = swift_task_alloc();
  v4[60] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54888, &unk_190DF4A40);
  v4[61] = swift_task_alloc();
  v4[62] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54890, &unk_190DD7C60);
  v4[63] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54898, &qword_190DF4A50);
  v4[64] = v7;
  v4[65] = *(v7 - 8);
  v4[66] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD548A0, &unk_190DD7C70);
  v4[67] = v8;
  v4[68] = *(v8 - 8);
  v4[69] = swift_task_alloc();
  v4[70] = sub_190D572A0();
  v4[71] = sub_190D57290();
  v10 = sub_190D57240();
  v4[72] = v10;
  v4[73] = v9;

  return MEMORY[0x1EEE6DFA0](sub_190B3F788, v10, v9);
}

uint64_t sub_190B3F788()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  sub_190B3CEDC();
  *(v0 + 592) = sub_190B45CF8();
  sub_190D53530();
  MEMORY[0x193AF3CF0](v3);
  sub_190233640(&qword_1EAD46710, &qword_1EAD54888, &unk_190DF4A40, MEMORY[0x1E69E86A0]);
  sub_190D57380();
  sub_190D58480();
  (*(v2 + 8))(v1, v3);
  sub_190D58490();
  *(v0 + 600) = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_checkInTipView;
  *(v0 + 608) = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_delegate;
  *(v0 + 616) = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_chatController;
  *(v0 + 624) = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_inlineTip;
  *(v0 + 632) = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_translationTipView;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  *(v0 + 640) = 0u;
  v4 = sub_190D57290();
  *(v0 + 656) = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = sub_190D57240();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v0 + 672) = v7;
  *(v0 + 664) = v5;

  return MEMORY[0x1EEE6DFA0](sub_190B3F9AC, v5, v7);
}

uint64_t sub_190B3F9AC()
{
  v1 = v0[82];
  v0[85] = sub_190D58470();
  sub_190233640(&qword_1EAD46718, &qword_1EAD54890, &unk_190DD7C60, MEMORY[0x1E69E8690]);
  v2 = swift_task_alloc();
  v0[86] = v2;
  *v2 = v0;
  v2[1] = sub_190B3FAB0;
  v3 = v0[56];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v3, v1, v4);
}

uint64_t sub_190B3FAB0()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 672);
    v4 = *(v2 + 664);
    v5 = sub_190B3FDA4;
  }

  else
  {
    (*(v2 + 680))();
    v3 = *(v2 + 672);
    v4 = *(v2 + 664);
    v5 = sub_190B3FBE0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_190B3FBE0()
{
  v1 = v0[57];
  v2 = v0[58];
  v3 = v0[56];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_19022EEA4(v3, &qword_1EAD54880, &unk_190DD7C50);
    v4 = v0[73];
    v5 = v0[72];

    return MEMORY[0x1EEE6DFA0](sub_190B40AAC, v5, v4);
  }

  else
  {
    (*(v2 + 32))(v0[59], v3, v1);
    v6 = sub_190D58480();
    v0[87] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[88] = v8;
    *v8 = v0;
    v8[1] = sub_190B3FDBC;
    v9 = v0[59];

    return (v11)(v0 + 89, v9);
  }
}

uint64_t sub_190B3FDBC()
{
  v1 = *v0;
  v2 = *(*v0 + 472);
  v3 = *(*v0 + 464);
  v4 = *(*v0 + 456);

  (*(v3 + 8))(v2, v4);
  *(v1 + 713) = *(v1 + 712);
  v5 = *(v1 + 672);
  v6 = *(v1 + 664);

  return MEMORY[0x1EEE6DFA0](sub_190B3FF68, v6, v5);
}

uint64_t sub_190B3FF68()
{

  v1 = *(v0 + 584);
  v2 = *(v0 + 576);

  return MEMORY[0x1EEE6DFA0](sub_190B3FFD0, v2, v1);
}

uint64_t sub_190B3FFD0()
{
  if ((*(v0 + 713) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12)
      {
        v13 = v12;
        [v12 removeFromSuperview];
      }

      swift_unknownObjectWeakAssign();
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        [v14 tipManagerDidDismissTranscriptBannerTip];
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_17;
  }

  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    v2 = v1;
    if ([v1 shouldShowTipsWithAlignment_])
    {
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        goto LABEL_7;
      }

      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        goto LABEL_7;
      }

      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        goto LABEL_7;
      }

      v74 = v2;
      v26 = [v74 view];
      if (!v26)
      {
        v3 = v74;
LABEL_7:

        v4 = swift_unknownObjectWeakLoadStrong();
        if (!v4)
        {
          goto LABEL_26;
        }

        v5 = swift_unknownObjectWeakLoadStrong();
        if (v5)
        {
          v6 = v5;
          [v5 removeFromSuperview];
        }

        swift_unknownObjectWeakAssign();
        swift_beginAccess();
        v7 = swift_unknownObjectWeakLoadStrong();
        if (v7)
        {
          v8 = v0[69];
          v9 = v0[68];
          v10 = v0[67];
          [v7 tipManagerDidDismissTranscriptBannerTip];
          swift_unknownObjectRelease();

          (*(v9 + 8))(v8, v10);
        }

        else
        {
LABEL_26:
          v21 = v0[69];
          v22 = v0[68];
          v23 = v0[67];

          (*(v22 + 8))(v21, v23);
        }

        goto LABEL_27;
      }

      v27 = v26;
      v28 = v0[74];
      v0[23] = &type metadata for CheckInTip;
      v0[24] = v28;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      objc_allocWithZone(sub_190D53600());
      v29 = sub_190D53610();
      [v29 setTranslatesAutoresizingMaskIntoConstraints_];
      v72 = objc_opt_self();
      v19 = [v72 sharedBehaviors];
      if (v19)
      {
        v30 = v19;
        v31 = v0[54];
        v32 = v0[55];
        v33 = v0[53];
        sub_190D56410();
        v34 = sub_190D564A0();
        v35 = MEMORY[0x1E6981AD0];
        v0[28] = v34;
        v0[29] = v35;
        __swift_allocate_boxed_opaque_existential_1(v0 + 25);
        sub_190D56440();
        (*(v31 + 8))(v32, v33);
        sub_190D535E0();
        v70 = v30;
        [v30 tipViewCornerRadius];
        sub_190D535C0();
        [v27 addSubview_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_190DD55F0;
        v37 = [v29 topAnchor];
        v38 = [v27 safeAreaLayoutGuide];
        v39 = [v38 topAnchor];

        v40 = [v37 constraintEqualToAnchor:v39 constant:2.0];
        *(v36 + 32) = v40;
        v0[51] = v36;
        v41 = [v74 traitCollection];

        v42 = [v41 horizontalSizeClass];
        v71 = v27;
        if (v42 == 1)
        {
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_190DD5CE0;
          v44 = [v29 leadingAnchor];
          v45 = [v27 safeAreaLayoutGuide];
          v46 = [v45 leadingAnchor];

          v47 = [v44 constraintEqualToAnchor:v46 constant:20.0];
          *(inited + 32) = v47;
          v73 = (inited + 40);
          v48 = [v29 trailingAnchor];
          v49 = [v27 safeAreaLayoutGuide];
          v50 = [v49 trailingAnchor];

          v51 = [v48 constraintEqualToAnchor:v50 constant:-20.0];
        }

        else
        {
          [v29 sizeToFit];
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_190DD55F0;
          v73 = (inited + 32);
          v48 = [v29 centerXAnchor];
          v52 = [v27 safeAreaLayoutGuide];
          v50 = [v52 centerXAnchor];

          v51 = [v48 constraintEqualToAnchor_];
        }

        v53 = v0[81];
        v54 = v0[80];
        v55 = v51;

        *v73 = v55;
        sub_190CAA5E8(inited);
        v56 = objc_opt_self();
        sub_1902188FC(0, &qword_1EAD45040, 0x1E696ACD8);
        v57 = sub_190D57160();
        [v56 activateConstraints_];

        swift_unknownObjectWeakAssign();
        v58 = objc_opt_self();
        v59 = swift_allocObject();
        *(v59 + 16) = v29;
        v60 = v29;
        sub_19022123C(v54, v53);
        v61 = swift_allocObject();
        *(v61 + 16) = sub_190B45D54;
        *(v61 + 24) = v59;
        v0[6] = sub_190984F4C;
        v0[7] = v61;
        v0[2] = MEMORY[0x1E69E9820];
        v0[3] = 1107296256;
        v0[4] = sub_19088B7B8;
        v0[5] = &block_descriptor_110_1;
        v62 = _Block_copy(v0 + 2);
        sub_190D50920();

        [v58 performWithoutAnimation_];
        _Block_release(v62);
        LOBYTE(v62) = swift_isEscapingClosureAtFileLocation();

        if ((v62 & 1) == 0)
        {
          [v60 setAlpha_];

          v19 = [v72 sharedBehaviors];
          if (v19)
          {
            v63 = v19;

            [v63 updateTranscriptInsetsAnimationDuration];
            v65 = v64;

            v66 = swift_allocObject();
            *(v66 + 16) = v60;
            v0[12] = sub_19085EA24;
            v0[13] = v66;
            v0[8] = MEMORY[0x1E69E9820];
            v0[9] = 1107296256;
            v0[10] = sub_190840E6C;
            v0[11] = &block_descriptor_116_0;
            v67 = _Block_copy(v0 + 8);
            v68 = v60;

            [v58 animateWithDuration:v67 animations:v65];
            _Block_release(v67);
            v69 = swift_unknownObjectWeakLoadStrong();
            if (v69)
            {
              [v69 tipManagerDidShowTranscriptBannerTip];

              swift_unknownObjectRelease();
            }

            else
            {
            }

            v0[81] = v59;
            v0[80] = sub_190B45D54;
LABEL_17:
            v15 = sub_190D57290();
            v0[82] = v15;
            if (v15)
            {
              swift_getObjectType();
              v16 = sub_190D57240();
              v18 = v17;
            }

            else
            {
              v16 = 0;
              v18 = 0;
            }

            v0[84] = v18;
            v0[83] = v16;
            v19 = sub_190B3F9AC;
            v20 = v16;

            return MEMORY[0x1EEE6DFA0](v19, v20, v18);
          }

LABEL_44:
          __break(1u);
          return MEMORY[0x1EEE6DFA0](v19, v20, v18);
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_44;
    }

    (*(v0[68] + 8))(v0[69], v0[67]);
  }

  else
  {
    (*(v0[68] + 8))(v0[69], v0[67]);
  }

LABEL_27:
  sub_19022123C(v0[80], v0[81]);

  v24 = v0[1];

  return v24();
}

uint64_t sub_190B40AAC()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];

  (*(v2 + 8))(v1, v3);
  sub_19022123C(v0[80], v0[81]);

  v4 = v0[1];

  return v4();
}

void sub_190B40BA4(uint64_t a1, uint64_t a2)
{
  if (sub_190D53810() == 0x6F6D2D6E7261656CLL && v2 == 0xEA00000000006572)
  {
  }

  else
  {
    v3 = sub_190D58760();

    if ((v3 & 1) == 0)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v8 = Strong;
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {

        v14 = swift_unknownObjectWeakLoadStrong();
        if (v14)
        {
          v15 = v14;
          [v14 removeFromSuperview];
        }

LABEL_17:
        swift_unknownObjectWeakAssign();
        swift_beginAccess();
        v16 = swift_unknownObjectWeakLoadStrong();
        if (v16)
        {
          [v16 tipManagerDidDismissTranscriptBannerTip];

          swift_unknownObjectRelease();
          return;
        }
      }

LABEL_19:

      return;
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      [v6 learnMoreButtonTapped];
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {

      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        [v10 removeFromSuperview];
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }
}

double sub_190B40E2C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0, &qword_190DD7B00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_190D572E0();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_190D572A0();
  v10 = v3;
  v11 = sub_190D57290();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  *&v10[*a3] = sub_190857E08(0, 0, v8, a2, v12);

  return result;
}

uint64_t sub_190B40F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[53] = a4;
  v5 = sub_190D56420();
  v4[54] = v5;
  v4[55] = *(v5 - 8);
  v4[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54880, &unk_190DD7C50);
  v4[57] = swift_task_alloc();
  v6 = sub_190D53840();
  v4[58] = v6;
  v4[59] = *(v6 - 8);
  v4[60] = swift_task_alloc();
  v4[61] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54888, &unk_190DF4A40);
  v4[62] = swift_task_alloc();
  v4[63] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54890, &unk_190DD7C60);
  v4[64] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54898, &qword_190DF4A50);
  v4[65] = v7;
  v4[66] = *(v7 - 8);
  v4[67] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD548A0, &unk_190DD7C70);
  v4[68] = v8;
  v4[69] = *(v8 - 8);
  v4[70] = swift_task_alloc();
  v4[71] = sub_190D572A0();
  v4[72] = sub_190D57290();
  v10 = sub_190D57240();
  v4[73] = v10;
  v4[74] = v9;

  return MEMORY[0x1EEE6DFA0](sub_190B41240, v10, v9);
}

uint64_t sub_190B41240()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  *(v0 + 400) = sub_190B3D95C();
  *(v0 + 408) = v4;
  *(v0 + 600) = sub_190B45C9C();
  sub_190D53530();

  MEMORY[0x193AF3CF0](v3);
  sub_190233640(&qword_1EAD46710, &qword_1EAD54888, &unk_190DF4A40, MEMORY[0x1E69E86A0]);
  sub_190D57380();
  sub_190D58480();
  (*(v2 + 8))(v1, v3);
  sub_190D58490();
  *(v0 + 608) = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_messageRequestsTipView;
  *(v0 + 616) = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_delegate;
  *(v0 + 624) = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_chatController;
  *(v0 + 632) = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_inlineTip;
  *(v0 + 640) = OBJC_IVAR____TtC7ChatKit16CKChatTipManager____lazy_storage___messageRequestsTip;
  swift_beginAccess();
  swift_beginAccess();
  *(v0 + 648) = 0u;
  v5 = sub_190D57290();
  *(v0 + 664) = v5;
  if (v5)
  {
    swift_getObjectType();
    v6 = sub_190D57240();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *(v0 + 680) = v8;
  *(v0 + 672) = v6;

  return MEMORY[0x1EEE6DFA0](sub_190B4146C, v6, v8);
}

uint64_t sub_190B4146C()
{
  v1 = v0[83];
  v0[86] = sub_190D58470();
  sub_190233640(&qword_1EAD46718, &qword_1EAD54890, &unk_190DD7C60, MEMORY[0x1E69E8690]);
  v2 = swift_task_alloc();
  v0[87] = v2;
  *v2 = v0;
  v2[1] = sub_190B41570;
  v3 = v0[57];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v3, v1, v4);
}

uint64_t sub_190B41570()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 680);
    v4 = *(v2 + 672);
    v5 = sub_190B41864;
  }

  else
  {
    (*(v2 + 688))();
    v3 = *(v2 + 680);
    v4 = *(v2 + 672);
    v5 = sub_190B416A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_190B416A0()
{
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[57];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_19022EEA4(v3, &qword_1EAD54880, &unk_190DD7C50);
    v4 = v0[74];
    v5 = v0[73];

    return MEMORY[0x1EEE6DFA0](sub_190B426E0, v5, v4);
  }

  else
  {
    (*(v2 + 32))(v0[60], v3, v1);
    v6 = sub_190D58480();
    v0[88] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[89] = v8;
    *v8 = v0;
    v8[1] = sub_190B4187C;
    v9 = v0[60];

    return (v11)(v0 + 90, v9);
  }
}

uint64_t sub_190B4187C()
{
  v1 = *v0;
  v2 = *(*v0 + 480);
  v3 = *(*v0 + 472);
  v4 = *(*v0 + 464);

  (*(v3 + 8))(v2, v4);
  *(v1 + 721) = *(v1 + 720);
  v5 = *(v1 + 680);
  v6 = *(v1 + 672);

  return MEMORY[0x1EEE6DFA0](sub_190B41A28, v6, v5);
}

uint64_t sub_190B41A28()
{

  v1 = *(v0 + 592);
  v2 = *(v0 + 584);

  return MEMORY[0x1EEE6DFA0](sub_190B41A90, v2, v1);
}

uint64_t sub_190B41A90()
{
  if ((*(v0 + 721) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12)
      {
        v13 = v12;
        [v12 removeFromSuperview];
      }

      swift_unknownObjectWeakAssign();
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        [v14 tipManagerDidDismissTranscriptBannerTip];
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_17;
  }

  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    v2 = v1;
    if ([v1 shouldShowTipsWithAlignment_] & 1) != 0 && (objc_msgSend(v2, sel_wantsMessageRequestsTip))
    {
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        goto LABEL_7;
      }

      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        goto LABEL_7;
      }

      v94 = v2;
      v26 = [v94 view];
      if (!v26)
      {
        v3 = v94;
LABEL_7:

        v4 = swift_unknownObjectWeakLoadStrong();
        if (!v4)
        {
          goto LABEL_29;
        }

        v5 = swift_unknownObjectWeakLoadStrong();
        if (v5)
        {
          v6 = v5;
          [v5 removeFromSuperview];
        }

        swift_unknownObjectWeakAssign();
        swift_beginAccess();
        v7 = swift_unknownObjectWeakLoadStrong();
        if (v7)
        {
          v8 = v0[70];
          v9 = v0[69];
          v10 = v0[68];
          [v7 tipManagerDidDismissTranscriptBannerTip];
          swift_unknownObjectRelease();

          (*(v9 + 8))(v8, v10);
        }

        else
        {
LABEL_29:
          v23 = v0[70];
          v24 = v0[69];
          v25 = v0[68];

          (*(v24 + 8))(v23, v25);
        }

        goto LABEL_26;
      }

      v27 = v26;
      v28 = v0[75];
      v29 = (v0[53] + v0[80]);
      v30 = *v29;
      v31 = v29[1];
      v0[30] = &type metadata for MessageRequestsTip;
      v0[31] = v28;
      v0[27] = v30;
      v0[28] = v31;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v32 = objc_allocWithZone(sub_190D53600());
      sub_190D52690();
      v33 = sub_190D53610();
      v34 = objc_opt_self();
      v19 = [v34 sharedBehaviors];
      if (v19)
      {
        v35 = v19;
        v36 = v0[55];
        v37 = v0[56];
        v38 = v0[54];
        sub_190D56410();
        v39 = sub_190D564A0();
        v40 = MEMORY[0x1E6981AD0];
        v0[35] = v39;
        v0[36] = v40;
        __swift_allocate_boxed_opaque_existential_1(v0 + 32);
        sub_190D56440();
        (*(v36 + 8))(v37, v38);
        sub_190D535E0();
        v90 = v35;
        [v35 tipViewCornerRadius];
        sub_190D535C0();
        v41 = v33;
        [v41 setTranslatesAutoresizingMaskIntoConstraints_];
        [v27 addSubview_];
        v91 = v34;
        if (CKIsRunningInMacCatalyst())
        {
          v42 = [v94 entryView];
          if (v42)
          {
            v43 = v42;
            [v42 bounds];
            Height = CGRectGetHeight(v96);

            v45 = Height + 20.0;
          }

          else
          {
            v45 = 0.0;
          }
        }

        else
        {
          [v94 bottomInsetPadding];
          v45 = v46;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_190DD55F0;
        v48 = [v41 bottomAnchor];
        v49 = [v27 safeAreaLayoutGuide];
        v50 = [v49 bottomAnchor];

        v51 = [v48 constraintEqualToAnchor:v50 constant:-v45];
        *(v47 + 32) = v51;
        v0[52] = v47;
        v52 = [v94 traitCollection];

        v53 = [v52 horizontalSizeClass];
        if (v53 == 1)
        {
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_190DD5CE0;
          v55 = [v41 leadingAnchor];
          v56 = [v27 safeAreaLayoutGuide];
          v57 = [v56 leadingAnchor];

          v58 = [v55 constraintEqualToAnchor:v57 constant:20.0];
          *(inited + 32) = v58;
          v92 = (inited + 40);
          v93 = inited;
          v59 = [v41 trailingAnchor];
          v60 = [v27 safeAreaLayoutGuide];
          v61 = [v60 trailingAnchor];

          v62 = [v59 constraintEqualToAnchor:v61 constant:-20.0];
        }

        else
        {
          [v41 sizeToFit];
          v63 = swift_initStackObject();
          *(v63 + 16) = xmmword_190DDA780;
          v64 = [v41 leadingAnchor];
          v65 = [v27 safeAreaLayoutGuide];
          v66 = [v65 leadingAnchor];

          v67 = [v64 constraintGreaterThanOrEqualToAnchor:v66 constant:20.0];
          *(v63 + 32) = v67;
          v68 = [v41 trailingAnchor];
          v69 = [v27 safeAreaLayoutGuide];
          v70 = [v69 trailingAnchor];

          v71 = [v68 constraintLessThanOrEqualToAnchor:v70 constant:-20.0];
          *(v63 + 40) = v71;
          v92 = (v63 + 48);
          v93 = v63;
          v59 = [v41 centerXAnchor];
          v72 = [v27 safeAreaLayoutGuide];
          v61 = [v72 centerXAnchor];

          v62 = [v59 constraintEqualToAnchor_];
        }

        v73 = v0[82];
        v74 = v0[81];
        v75 = v62;

        *v92 = v75;
        sub_190CAA5E8(v93);
        v76 = objc_opt_self();
        sub_1902188FC(0, &qword_1EAD45040, 0x1E696ACD8);
        v77 = sub_190D57160();
        [v76 activateConstraints_];

        swift_unknownObjectWeakAssign();
        v78 = objc_opt_self();
        v79 = swift_allocObject();
        *(v79 + 16) = v41;
        v80 = v41;
        sub_19022123C(v74, v73);
        v81 = swift_allocObject();
        *(v81 + 16) = sub_190B45D70;
        *(v81 + 24) = v79;
        v0[13] = sub_190838A04;
        v0[14] = v81;
        v0[9] = MEMORY[0x1E69E9820];
        v0[10] = 1107296256;
        v0[11] = sub_19088B7B8;
        v0[12] = &block_descriptor_85;
        v82 = _Block_copy(v0 + 9);
        sub_190D50920();

        [v78 performWithoutAnimation_];
        _Block_release(v82);
        LOBYTE(v82) = swift_isEscapingClosureAtFileLocation();

        if ((v82 & 1) == 0)
        {
          [v80 setAlpha_];

          v19 = [v91 sharedBehaviors];
          if (v19)
          {
            v83 = v19;

            [v83 updateTranscriptInsetsAnimationDuration];
            v85 = v84;

            v86 = swift_allocObject();
            *(v86 + 16) = v80;
            v0[19] = sub_190B45D74;
            v0[20] = v86;
            v0[15] = MEMORY[0x1E69E9820];
            v0[16] = 1107296256;
            v0[17] = sub_190840E6C;
            v0[18] = &block_descriptor_97_0;
            v87 = _Block_copy(v0 + 15);
            v88 = v80;

            [v78 animateWithDuration:v87 animations:v85];
            _Block_release(v87);
            v89 = swift_unknownObjectWeakLoadStrong();
            if (v89)
            {
              [v89 tipManagerDidShowTranscriptBannerTip];

              swift_unknownObjectRelease();
            }

            else
            {
            }

            v0[82] = v79;
            v0[81] = sub_190B45D70;
LABEL_17:
            v15 = sub_190D57290();
            v0[83] = v15;
            if (v15)
            {
              swift_getObjectType();
              v16 = sub_190D57240();
              v18 = v17;
            }

            else
            {
              v16 = 0;
              v18 = 0;
            }

            v0[85] = v18;
            v0[84] = v16;
            v19 = sub_190B4146C;
            v20 = v16;

            return MEMORY[0x1EEE6DFA0](v19, v20, v18);
          }

LABEL_49:
          __break(1u);
          return MEMORY[0x1EEE6DFA0](v19, v20, v18);
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_49;
    }

    (*(v0[69] + 8))(v0[70], v0[68]);
  }

  else
  {
    (*(v0[69] + 8))(v0[70], v0[68]);
  }

LABEL_26:
  sub_19022123C(v0[81], v0[82]);

  v21 = v0[1];

  return v21();
}

uint64_t sub_190B426E0()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];

  (*(v2 + 8))(v1, v3);
  sub_19022123C(v0[81], v0[82]);

  v4 = v0[1];

  return v4();
}

void sub_190B427D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_190D56ED0();
  v3 = sub_190D56ED0();
  IMSetDomainBoolForKey();

  if (sub_190D53810() == 0xD000000000000010 && 0x8000000190E753B0 == v4)
  {

LABEL_5:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();

      if (v8)
      {
        [v8 setUpFilteringButtonTapped];
LABEL_8:
        swift_unknownObjectRelease();
        return;
      }
    }

    return;
  }

  v5 = sub_190D58760();

  if (v5)
  {
    goto LABEL_5;
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {

      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12)
      {
        v13 = v12;
        [v12 removeFromSuperview];
      }

      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        [v14 tipManagerDidDismissTranscriptBannerTip];

        goto LABEL_8;
      }
    }
  }
}

double sub_190B42A14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0, &qword_190DD7B00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_190D572E0();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_190D572A0();
  v12 = a1;
  v13 = sub_190D57290();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v12;
  *&v12[*a5] = sub_190857E08(0, 0, v10, a4, v14);

  return result;
}

double sub_190B42B5C()
{
  if (sub_190B42E6C() & 1) != 0 || (sub_190B43164())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      v2 = swift_unknownObjectWeakLoadStrong();
      if (v2)
      {
        v3 = v2;
        [v2 removeFromSuperview];
      }

      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        [v4 tipManagerDidDismissTranscriptBannerTip];
        swift_unknownObjectRelease();
      }
    }

    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {

      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        [v6 removeFromSuperview];
      }

      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        [v8 tipManagerDidDismissTranscriptBannerTip];
        swift_unknownObjectRelease();
      }
    }

    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {

      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        [v10 removeFromSuperview];
      }

      swift_unknownObjectWeakAssign();
    }

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {

      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v14 = v13;
        [v13 removeFromSuperview];
      }

      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      v15 = swift_unknownObjectWeakLoadStrong();
      if (v15)
      {
        [v15 tipManagerDidDismissTranscriptBannerTip];
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_190B42E00()
{
  if (sub_190B42E6C())
  {
    return 1;
  }

  return sub_190B43164();
}

uint64_t sub_190B42E6C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong superview];
  }

  else
  {
    v2 = 0;
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
    if (!v2)
    {
      goto LABEL_40;
    }

    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v3 view];

  if (!v2)
  {
    if (!v5)
    {
      goto LABEL_40;
    }

    goto LABEL_12;
  }

  if (!v5)
  {
LABEL_10:
    v5 = v2;
LABEL_12:

    goto LABEL_13;
  }

  sub_1902188FC(0, &qword_1EAD46530, 0x1E69DD250);
  v6 = sub_190D57D90();

  if (v6)
  {
    goto LABEL_40;
  }

LABEL_13:
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 superview];

    v10 = swift_unknownObjectWeakLoadStrong();
    if (!v10)
    {
      if (!v9)
      {
        goto LABEL_40;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v10 = swift_unknownObjectWeakLoadStrong();
    if (!v10)
    {
      goto LABEL_40;
    }

    v9 = 0;
  }

  v11 = v10;
  v12 = [v10 view];

  if (!v9)
  {
    if (!v12)
    {
      goto LABEL_40;
    }

    goto LABEL_25;
  }

  if (!v12)
  {
LABEL_23:
    v12 = v9;
LABEL_25:

    goto LABEL_26;
  }

  sub_1902188FC(0, &qword_1EAD46530, 0x1E69DD250);
  v13 = sub_190D57D90();

  if (v13)
  {
    goto LABEL_40;
  }

LABEL_26:
  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = [v14 superview];

    v17 = swift_unknownObjectWeakLoadStrong();
    if (!v17)
    {
      if (!v16)
      {
        goto LABEL_40;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v17 = swift_unknownObjectWeakLoadStrong();
    if (!v17)
    {
      goto LABEL_40;
    }

    v16 = 0;
  }

  v18 = v17;
  v19 = [v17 view];

  if (!v16)
  {
    if (v19)
    {
      v20 = 0;
      goto LABEL_39;
    }

LABEL_40:
    v20 = 1;
    return v20 & 1;
  }

  if (!v19)
  {
LABEL_35:
    v20 = 0;
    goto LABEL_36;
  }

  sub_1902188FC(0, &qword_1EAD46530, 0x1E69DD250);
  v20 = sub_190D57D90();

LABEL_36:
  v19 = v16;
LABEL_39:

  return v20 & 1;
}

uint64_t sub_190B43164()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong superview];
  }

  else
  {
    v2 = 0;
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
    if (v2)
    {
      goto LABEL_9;
    }

LABEL_14:
    v6 = 1;
    return v6 & 1;
  }

  v4 = v3;
  v5 = [v3 view];

  if (!v2)
  {
    if (v5)
    {
      v6 = 0;
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if (!v5)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  sub_1902188FC(0, &qword_1EAD46530, 0x1E69DD250);
  v6 = sub_190D57D90();

LABEL_10:
  v5 = v2;
LABEL_11:

  return v6 & 1;
}

void sub_190B432B4()
{
  if (sub_190B42E6C() & 1) != 0 || (sub_190B43164())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong || (Strong = swift_unknownObjectWeakLoadStrong()) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) != 0 || (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
    {
      v1 = Strong;
      [Strong frame];
      CGRectGetHeight(v2);
    }
  }
}

id CKChatTipManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKChatTipManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKChatTipManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_190B43590(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_190B435B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_190B435B0(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B590, &unk_190DEBB50);
  v10 = *(sub_190D53830() - 8);
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
  v15 = *(sub_190D53830() - 8);
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

uint64_t sub_190B43788(uint64_t a1)
{
  v2 = sub_190D53830();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DE40, &qword_190DF4A00);
  MEMORY[0x1EEE9AC00](v30);
  v29 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v31 = MEMORY[0x1E69E7CC0];
  sub_190B43590(0, 0, 0);
  v10 = v31;
  v28 = *(a1 + 16);
  if (v28)
  {
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = *(v12 + 56);
    v26 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v27 = v13;
    v15 = a1 + v26;
    v24 = (v12 + 16);
    v25 = v14;
    do
    {
      v16 = v29;
      v17 = *(v30 + 48);
      *v29 = v11;
      v18 = v12;
      v27(v16 + v17, v15, v2);
      sub_190B45B78(v16, v9);
      sub_190D53820();
      sub_19022EEA4(v9, &qword_1EAD5DE40, &qword_190DF4A00);
      v31 = v10;
      v19 = v2;
      v21 = *(v10 + 16);
      v20 = *(v10 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_190B43590((v20 > 1), v21 + 1, 1);
        v10 = v31;
      }

      ++v11;
      *(v10 + 16) = v21 + 1;
      v22 = v25;
      (*v24)(v10 + v26 + v21 * v25, v5, v19);
      v15 += v22;
      v2 = v19;
      v12 = v18;
    }

    while (v28 != v11);
  }

  return v10;
}

id sub_190B43A08(uint64_t a1)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();
    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    sub_190D56F10();
    sub_19081E484();
    return sub_190D555F0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190B43AF0(uint64_t a1)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();
    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    sub_190D56F10();
    sub_19081E484();
    return sub_190D555F0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190B43BD8()
{
  v0 = sub_190D53830();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CKFrameworkBundle(v4);
  if (result)
  {
    v6 = result;
    v7 = sub_190D56ED0();
    v8 = sub_190D56ED0();
    v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

    v10 = sub_190D56F10();
    v12 = v11;

    v16[0] = v10;
    v16[1] = v12;
    sub_19081E484();
    sub_190D53800();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B590, &unk_190DEBB50);
    v13 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_190DD1D90;
    (*(v1 + 32))(v14 + v13, v3, v0);
    v15 = sub_190B43788(v14);
    swift_setDeallocating();
    (*(v1 + 8))(v14 + v13, v0);
    swift_deallocClassInstance();
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190B43E18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DE48, &qword_190DF4A08);
  v1 = *(v0 - 8);
  v38 = v0;
  v39 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v36 = &v30 - v2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57118, &qword_190DDF3E0);
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = &v30 - v3;
  v4 = sub_190D536B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DE50, &unk_190DF4A10);
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v30 - v8;
  v10 = sub_190D536F0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57120, &qword_190DDF3E8);
  v31 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  sub_190D53700();
  v17 = MEMORY[0x1E6982AC0];
  MEMORY[0x193AEEF00](v13, v10, MEMORY[0x1E6982AC0]);
  (*(v11 + 8))(v13, v10);
  sub_190D536C0();
  v18 = MEMORY[0x1E6982A88];
  MEMORY[0x193AEEF00](v7, v4, MEMORY[0x1E6982A88]);
  (*(v5 + 8))(v7, v4);
  v40 = v10;
  v41 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v33;
  MEMORY[0x193AEEF30](v16, v14, OpaqueTypeConformance2);
  v40 = v14;
  v41 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeConformance2();
  v40 = v4;
  v41 = v18;
  v22 = swift_getOpaqueTypeConformance2();
  v24 = v35;
  v23 = v36;
  v25 = v32;
  sub_190D53690();
  v40 = v24;
  v41 = v25;
  v42 = v21;
  v43 = v22;
  swift_getOpaqueTypeConformance2();
  v26 = v23;
  v27 = v38;
  v28 = sub_190D53680();
  (*(v39 + 8))(v26, v27);
  (*(v37 + 8))(v20, v24);
  (*(v34 + 8))(v9, v25);
  (*(v31 + 8))(v16, v14);
  return v28;
}

id sub_190B44334(uint64_t a1)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();
    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    sub_190D56F10();
    sub_19081E484();
    return sub_190D555F0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190B4441C(uint64_t a1)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();
    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    sub_190D56F10();
    sub_19081E484();
    return sub_190D555F0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190B44504()
{
  v0 = sub_190D53830();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CKFrameworkBundle(v4);
  if (result)
  {
    v6 = result;
    v7 = sub_190D56ED0();
    v8 = sub_190D56ED0();
    v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

    v10 = sub_190D56F10();
    v12 = v11;

    v16[0] = v10;
    v16[1] = v12;
    sub_19081E484();
    sub_190D53800();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B590, &unk_190DEBB50);
    v13 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_190DD1D90;
    (*(v1 + 32))(v14 + v13, v3, v0);
    v15 = sub_190B43788(v14);
    swift_setDeallocating();
    (*(v1 + 8))(v14 + v13, v0);
    swift_deallocClassInstance();
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190B4474C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E180, &unk_190DEBF50);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DDF8, &qword_190DF49D8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = sub_190D537E0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD51E08 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_1EAD9E308);
  (*(v5 + 16))(v7, v12, v4);
  sub_190D537F0();
  sub_190D53640();
  v13 = *(v9 + 8);
  v13(v11, v8);
  if (qword_1EAD51E10 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v0, qword_1EAD9E320);
  (*(v1 + 16))(v3, v14, v0);
  sub_190D537F0();
  sub_190D53640();
  v13(v11, v8);
  sub_190D52690();

  v15 = sub_190D53650();

  return v15;
}

id sub_190B44AB0(void *a1)
{
  *&v1[OBJC_IVAR____TtC7ChatKit16CKChatTipManager_tipObservation] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit16CKChatTipManager_checkInTipObservation] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit16CKChatTipManager_translationTipObservation] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit16CKChatTipManager_messageRequestsTipObservation] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC7ChatKit16CKChatTipManager____lazy_storage___undoOrEditMessageTip];
  *v3 = 0;
  v3[1] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC7ChatKit16CKChatTipManager____lazy_storage___checkInTip] = 1;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager____lazy_storage___translationTip;
  v5 = type metadata accessor for TranslationTip(0);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  swift_unknownObjectWeakInit();
  v6 = &v1[OBJC_IVAR____TtC7ChatKit16CKChatTipManager____lazy_storage___messageRequestsTip];
  *v6 = 0;
  v6[1] = 0;
  swift_unknownObjectWeakInit();
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = a1;
  }

  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  v10.receiver = v1;
  v10.super_class = type metadata accessor for CKChatTipManager(0);
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_190B44CA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA0;

  return sub_190B3DC44(a1, v4, v5, v6);
}

unint64_t sub_190B44D54()
{
  result = qword_1EAD46978;
  if (!qword_1EAD46978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46978);
  }

  return result;
}

uint64_t sub_190B44DA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA0;

  return sub_190B3F4B0(a1, v4, v5, v6);
}

uint64_t sub_190B44E5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA0;

  return sub_190B40F68(a1, v4, v5, v6);
}

uint64_t type metadata accessor for CKChatTipManager(uint64_t a1)
{
  result = qword_1EAD46A50;
  if (!qword_1EAD46A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190B44F64(uint64_t a1, __n128 a2)
{
  sub_190B4589C(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_190B4589C(uint64_t a1, __n128 a2)
{
  if (!qword_1EAD46A78)
  {
    type metadata accessor for TranslationTip(255);
    v2 = sub_190D58050();
    if (!v3)
    {
      atomic_store(v2, &qword_1EAD46A78);
    }
  }
}

unint64_t sub_190B45938()
{
  result = qword_1EAD46B70;
  if (!qword_1EAD46B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46B70);
  }

  return result;
}

unint64_t sub_190B45990()
{
  result = qword_1EAD46A20;
  if (!qword_1EAD46A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46A20);
  }

  return result;
}

unint64_t sub_190B459E8()
{
  result = qword_1ED7769D8;
  if (!qword_1ED7769D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7769D8);
  }

  return result;
}

unint64_t sub_190B45A3C()
{
  result = qword_1EAD5DE20;
  if (!qword_1EAD5DE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DE18, &unk_190DF49F0);
    sub_190233640(&qword_1EAD5DE28, &qword_1EAD5DE08, &qword_190DF49E8, MEMORY[0x1E6968DA0]);
    sub_190B45AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DE20);
  }

  return result;
}

unint64_t sub_190B45AF4()
{
  result = qword_1EAD5DE30;
  if (!qword_1EAD5DE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DE00, &qword_190DF49E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DE30);
  }

  return result;
}

uint64_t sub_190B45B78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DE40, &qword_190DF4A00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190B45BE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA4;

  return sub_190B3F4B0(a1, v4, v5, v6);
}

unint64_t sub_190B45C9C()
{
  result = qword_1EAD46A28;
  if (!qword_1EAD46A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46A28);
  }

  return result;
}

unint64_t sub_190B45CF8()
{
  result = qword_1EAD5DE58;
  if (!qword_1EAD5DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DE58);
  }

  return result;
}

Swift::Void __swiftcall CKChatTipManager.dismissTranslationTip()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v1 = swift_unknownObjectWeakLoadStrong();
    if (v1)
    {
      v2 = v1;
      [v1 removeFromSuperview];
    }

    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      [v3 tipManagerDidDismissTranscriptBannerTip];
      swift_unknownObjectRelease();
    }
  }
}

void CKChatTipManager.presentTranslationTip(languages:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0, &qword_190DD7B00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v100 = &v96 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DDB8, &unk_190DF4670);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = &v96 - v7;
  v102 = type metadata accessor for TranslationTip(0);
  v97 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v101 = (&v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10, &qword_190DE84D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v96 = &v96 - v10;
  v11 = sub_190D519C0();
  v109 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v104 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v96 - v14;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B530, &qword_190DEB910);
  v110 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v119 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v118 = &v96 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v117 = &v96 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v96 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v96 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v96 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B538, &qword_190DEB918);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v103 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v96 - v34;
  v38 = *(a1 + 64);
  v121 = a1 + 64;
  v39 = 1 << *(a1 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v38;
  v106 = a2;
  v122 = v11;
  v107 = v15;
  v108 = &v96 - v34;
  v105 = v35;
  v120 = a1;
  if (!v41)
  {
    v46 = 0;
    while (((v39 + 63) >> 6) - 1 != v46)
    {
      v42 = v46 + 1;
      v47 = *(a1 + 72 + 8 * v46);
      v41 -= 64;
      ++v46;
      if (v47)
      {
        v44 = (v47 - 1) & v47;
        v43 = __clz(__rbit64(v47)) - v41;
        v45 = (v39 + 63) >> 6;
        goto LABEL_9;
      }
    }

    v66 = v110;
    v67 = v123;
    (*(v110 + 56))(v37, 1, 1, v123, v36);
LABEL_21:
    v68 = v105;
    sub_19022FD14(v37, v105, &qword_1EAD5B538, &qword_190DEB918);
    v71 = *(v66 + 48);
    v70 = v66 + 48;
    v69 = v71;
    v72 = v71(v68, 1, v67);
    v73 = v109;
    if (v72 != 1)
    {

      v74 = *(v73 + 32);
      v110 = v70;
      v75 = v104;
      v74(v104, v68, v11);
      v74(v15, v75, v11);
      v37 = v108;
      v68 = v103;
      sub_19022FD14(v108, v103, &qword_1EAD5B538, &qword_190DEB918);
      if (v69(v68, 1, v67) != 1)
      {
        v76 = *(v73 + 8);
        v124 = *(v68 + *(v67 + 48));
        v125 = v76;
        v76(v68, v11);
        v77 = v96;
        (*(v73 + 16))(v96, v107, v11);
        (*(v73 + 56))(v77, 0, 1, v11);
        v78 = v101;
        v79 = v99;
        sub_190B3D170(v101);
        v80 = v102;
        sub_190B46A98(v77, v78 + *(v102 + 24), &qword_1EAD54C10, &qword_190DE84D0);
        v81 = v98;
        sub_190B3D548(v78, v98, v82);
        v83 = *(v97 + 56);
        v83(v81, 0, 1, v80);
        v84 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager____lazy_storage___translationTip;
        swift_beginAccess();
        sub_190B46A98(v81, v79 + v84, &qword_1EAD5DDB8, &unk_190DF4670);
        swift_endAccess();
        sub_190B3D170(v78);

        v78[2] = v124;
        sub_190B3D548(v78, v81, v85);
        v83(v81, 0, 1, v80);
        swift_beginAccess();
        sub_190B46A98(v81, v79 + v84, &qword_1EAD5DDB8, &unk_190DF4670);
        swift_endAccess();
        v86 = sub_190D572E0();
        v87 = v100;
        (*(*(v86 - 8) + 56))(v100, 1, 1, v86);
        sub_190D572A0();
        v88 = v120;
        sub_190D52690();
        v89 = v79;
        v90 = sub_190D57290();
        v91 = swift_allocObject();
        v92 = MEMORY[0x1E69E85E0];
        v91[2] = v90;
        v91[3] = v92;
        v91[4] = v89;
        v91[5] = v88;
        v93 = sub_190857E08(0, 0, v87, &unk_190DF4A60, v91);
        v94 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_translationTipObservation;
        swift_beginAccess();
        *&v89[v94] = v93;

        sub_190B3D170(v78);
        v125(v107, v122);
        sub_19022EEA4(v108, &qword_1EAD5B538, &qword_190DEB918);
        sub_19022FD14(v78 + *(v80 + 24), v106, &qword_1EAD54C10, &qword_190DE84D0);
        sub_190B3D900(v78, v95);
        return;
      }

      (*(v73 + 8))(v107, v11);
    }

    sub_19022EEA4(v37, &qword_1EAD5B538, &qword_190DEB918);
    sub_19022EEA4(v68, &qword_1EAD5B538, &qword_190DEB918);
    (*(v73 + 56))(v106, 1, 1, v11);
    return;
  }

  v42 = 0;
  v43 = __clz(__rbit64(v41));
  v44 = (v41 - 1) & v41;
  v45 = (v39 + 63) >> 6;
LABEL_9:
  v48 = *(a1 + 48);
  v50 = v109 + 16;
  v49 = *(v109 + 16);
  v113 = *(v109 + 72);
  v114 = v49;
  (v49)(v26, v48 + v113 * v43, v11, v36);
  *&v26[*(v123 + 48)] = *(*(a1 + 56) + 8 * v43);
  v124 = v29;
  sub_190A77958(v26, v29);
  v115 = v50;
  v112 = (v50 - 8);
  sub_190D52690();
  sub_190D52690();
  v116 = v45;
  v111 = v23;
  while (v44)
  {
    v51 = v42;
    v52 = v124;
LABEL_18:
    v53 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v54 = v53 | (v51 << 6);
    v55 = v117;
    v56 = v122;
    v114(v117, *(a1 + 48) + v54 * v113, v122);
    v57 = *(*(a1 + 56) + 8 * v54);
    v58 = v123;
    *(v55 + *(v123 + 48)) = v57;
    sub_190A77958(v55, v23);
    v59 = v23;
    v60 = v118;
    sub_19022FD14(v52, v118, &qword_1EAD5B530, &qword_190DEB910);
    v125 = *(*(v60 + *(v58 + 48)) + 16);
    sub_190D52690();

    v61 = v59;
    v62 = v119;
    sub_19022FD14(v61, v119, &qword_1EAD5B530, &qword_190DEB910);
    v63 = *(*(v62 + *(v58 + 48)) + 16);

    v64 = *v112;
    (*v112)(v62, v56);
    v64(v60, v56);
    if (v63 >= v125)
    {
      v23 = v111;
      sub_19022EEA4(v111, &qword_1EAD5B530, &qword_190DEB910);
    }

    else
    {
      v65 = v124;
      sub_19022EEA4(v124, &qword_1EAD5B530, &qword_190DEB910);
      v23 = v111;
      sub_190A77958(v111, v65);
    }

    v42 = v51;
    a1 = v120;
    v45 = v116;
  }

  v52 = v124;
  while (1)
  {
    v51 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v51 >= v45)
    {

      v37 = v108;
      sub_190A77958(v52, v108);
      v66 = v110;
      v67 = v123;
      (*(v110 + 56))(v37, 0, 1, v123);
      v11 = v122;
      v15 = v107;
      goto LABEL_21;
    }

    v44 = *(v121 + 8 * v51);
    ++v42;
    if (v44)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t type metadata accessor for TranslationTip(uint64_t a1)
{
  result = qword_1EAD46A80;
  if (!qword_1EAD46A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190B46A98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_190B46B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54880, &unk_190DD7C50);
  v5[29] = swift_task_alloc();
  v6 = sub_190D53840();
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54888, &unk_190DF4A40);
  v5[34] = swift_task_alloc();
  v5[35] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54890, &unk_190DD7C60);
  v5[36] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54898, &qword_190DF4A50);
  v5[37] = v7;
  v5[38] = *(v7 - 8);
  v5[39] = swift_task_alloc();
  v5[40] = type metadata accessor for TranslationTip(0);
  v5[41] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD548A0, &unk_190DD7C70);
  v5[42] = v8;
  v5[43] = *(v8 - 8);
  v5[44] = swift_task_alloc();
  v5[45] = sub_190D572A0();
  v5[46] = sub_190D57290();
  v10 = sub_190D57240();
  v5[47] = v10;
  v5[48] = v9;

  return MEMORY[0x1EEE6DFA0](sub_190B46DA8, v10, v9);
}

uint64_t sub_190B46DA8()
{
  v1 = v0[41];
  v2 = v0[38];
  v3 = v0[39];
  v4 = v0[37];
  sub_190B3D170(v1);
  sub_190B4C634(&qword_1EAD5DE68, type metadata accessor for TranslationTip, &protocol conformance descriptor for TranslationTip);
  sub_190D53530();
  sub_190B3D900(v1, v5);
  MEMORY[0x193AF3CF0](v4);
  sub_190233640(&qword_1EAD46710, &qword_1EAD54888, &unk_190DF4A40, MEMORY[0x1E69E86A0]);
  sub_190D57380();
  sub_190D58480();
  (*(v2 + 8))(v3, v4);
  sub_190D58490();
  v6 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_delegate;
  v0[49] = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_translationTipView;
  v0[50] = v6;
  v0[51] = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_chatController;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v0[52] = 0;
  v0[53] = 0;
  v7 = sub_190D57290();
  v0[54] = v7;
  if (v7)
  {
    swift_getObjectType();
    v8 = sub_190D57240();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v0[55] = v8;
  v0[56] = v10;

  return MEMORY[0x1EEE6DFA0](sub_190B46FF0, v8, v10);
}

uint64_t sub_190B46FF0()
{
  v1 = v0[54];
  v0[57] = sub_190D58470();
  sub_190233640(&qword_1EAD46718, &qword_1EAD54890, &unk_190DD7C60, MEMORY[0x1E69E8690]);
  v2 = swift_task_alloc();
  v0[58] = v2;
  *v2 = v0;
  v2[1] = sub_190B470F4;
  v3 = v0[29];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v3, v1, v4);
}

uint64_t sub_190B470F4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 440);
    v4 = *(v2 + 448);
    v5 = sub_190B473DC;
  }

  else
  {
    (*(v2 + 456))();
    v3 = *(v2 + 440);
    v4 = *(v2 + 448);
    v5 = sub_190B4721C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_190B4721C()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_19022EEA4(v3, &qword_1EAD54880, &unk_190DD7C50);
    v4 = v0[47];
    v5 = v0[48];

    return MEMORY[0x1EEE6DFA0](sub_190B47B74, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[32], v3, v1);
    v6 = sub_190D58480();
    v0[59] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[60] = v8;
    *v8 = v0;
    v8[1] = sub_190B473F4;
    v9 = v0[32];

    return (v11)(v0 + 61, v9);
  }
}

uint64_t sub_190B473F4()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 240);

  (*(v3 + 8))(v2, v4);
  *(v1 + 489) = *(v1 + 488);
  v5 = *(v1 + 448);
  v6 = *(v1 + 440);

  return MEMORY[0x1EEE6DFA0](sub_190B475A0, v6, v5);
}

uint64_t sub_190B475A0()
{

  v1 = *(v0 + 376);
  v2 = *(v0 + 384);

  return MEMORY[0x1EEE6DFA0](sub_190B47604, v1, v2);
}

uint64_t sub_190B47604()
{
  if ((*(v0 + 489) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      v26 = swift_unknownObjectWeakLoadStrong();
      if (v26)
      {
        v27 = v26;
        [v26 removeFromSuperview];
      }

      swift_unknownObjectWeakAssign();
      v28 = swift_unknownObjectWeakLoadStrong();
      if (v28)
      {
        [v28 tipManagerDidDismissTranscriptBannerTip];
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_16;
  }

  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    v2 = v1;
    if (([v1 shouldShowTipsWithAlignment_] & 1) != 0 && (v3 = objc_msgSend(v2, sel_view)) != 0)
    {
      v4 = v3;
      v5 = v0[28];
      sub_190B42B5C();
      v6 = sub_190B47D28(v5, v2);
      if (v6)
      {
        v8 = v0[52];
        v7 = v0[53];
        v9 = v6;
        [v4 addSubview_];
        swift_unknownObjectWeakAssign();
        sub_190B47F90();
        v10 = objc_opt_self();
        v11 = swift_allocObject();
        *(v11 + 16) = v9;
        v12 = v9;
        sub_19022123C(v8, v7);
        v13 = swift_allocObject();
        *(v13 + 16) = sub_190B45D54;
        *(v13 + 24) = v11;
        v0[6] = sub_190838A04;
        v0[7] = v13;
        v0[2] = MEMORY[0x1E69E9820];
        v0[3] = 1107296256;
        v0[4] = sub_19088B7B8;
        v0[5] = &block_descriptor_86;
        v14 = _Block_copy(v0 + 2);
        sub_190D50920();

        [v10 performWithoutAnimation_];
        _Block_release(v14);
        LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

        if (v14)
        {
          __break(1u);
        }

        else
        {
          [v12 setAlpha_];

          v15 = [objc_opt_self() sharedBehaviors];
          if (v15)
          {
            v18 = v15;
            [v15 updateTranscriptInsetsAnimationDuration];
            v20 = v19;

            v21 = swift_allocObject();
            *(v21 + 16) = v12;
            v0[12] = sub_19085EA24;
            v0[13] = v21;
            v0[8] = MEMORY[0x1E69E9820];
            v0[9] = 1107296256;
            v0[10] = sub_190840E6C;
            v0[11] = &block_descriptor_18_0;
            v22 = _Block_copy(v0 + 8);
            v23 = v12;

            [v10 animateWithDuration:v22 animations:v20];
            _Block_release(v22);
            v24 = swift_unknownObjectWeakLoadStrong();
            if (v24)
            {
              [v24 tipManagerDidShowTranscriptBannerTip];
              swift_unknownObjectRelease();
            }

            v0[52] = sub_190B45D54;
            v0[53] = v11;
LABEL_16:
            v29 = sub_190D57290();
            v0[54] = v29;
            if (v29)
            {
              swift_getObjectType();
              v30 = sub_190D57240();
              v17 = v31;
            }

            else
            {
              v30 = 0;
              v17 = 0;
            }

            v0[55] = v30;
            v0[56] = v17;
            v15 = sub_190B46FF0;
            v16 = v30;

            return MEMORY[0x1EEE6DFA0](v15, v16, v17);
          }
        }

        __break(1u);
        return MEMORY[0x1EEE6DFA0](v15, v16, v17);
      }

      (*(v0[43] + 8))(v0[44], v0[42]);
    }

    else
    {
      (*(v0[43] + 8))(v0[44], v0[42]);
    }
  }

  else
  {
    (*(v0[43] + 8))(v0[44], v0[42]);
  }

  sub_19022123C(v0[52], v0[53]);

  v32 = v0[1];

  return v32();
}

uint64_t sub_190B47B74()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];

  (*(v2 + 8))(v1, v3);
  sub_19022123C(v0[52], v0[53]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_190B47C68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA0;

  return sub_190B46B00(a1, v4, v5, v7, v6);
}

id sub_190B47D28(uint64_t a1, void *a2)
{
  v4 = sub_190D56420();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TranslationTip(0);
  v19 = sub_190B4C634(&qword_1EAD5DE68, type metadata accessor for TranslationTip, &protocol conformance descriptor for TranslationTip);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  sub_190B3D170(boxed_opaque_existential_1);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  objc_allocWithZone(sub_190D53600());
  sub_190D52690();
  v11 = a2;
  v12 = sub_190D53610();
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = sub_190D55E10();
  v18 = MEMORY[0x1E69815C0];
  v19 = MEMORY[0x1E6981568];
  v17[0] = v13;
  sub_190D535A0();
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v15 = result;
    sub_190D56410();
    v18 = sub_190D564A0();
    v19 = MEMORY[0x1E6981AD0];
    __swift_allocate_boxed_opaque_existential_1(v17);
    sub_190D56440();
    (*(v5 + 8))(v7, v4);
    sub_190D535E0();
    [v15 tipViewCornerRadius];
    sub_190D535C0();

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190B47F90()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        v5 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_190DD55F0;
        v7 = v5;
        v8 = [v7 topAnchor];
        v9 = [v3 safeAreaLayoutGuide];
        v10 = [v9 topAnchor];

        v11 = [v8 constraintEqualToAnchor:v10 constant:2.0];
        *(v6 + 32) = v11;
        v45 = v6;
        v12 = [v1 traitCollection];

        v13 = [v12 horizontalSizeClass];
        if (v13 == 1)
        {
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_190DD5CE0;
          v15 = [v7 leadingAnchor];
          v16 = [v3 safeAreaLayoutGuide];
          v17 = [v16 leadingAnchor];

          v18 = [v15 constraintEqualToAnchor:v17 constant:20.0];
          *(inited + 32) = v18;
          v19 = [v7 trailingAnchor];
          v20 = [v3 safeAreaLayoutGuide];
          v21 = [v20 trailingAnchor];

          v22 = [v19 constraintEqualToAnchor:v21 constant:-20.0];
          *(inited + 40) = v22;
          sub_190CAA5E8(inited);
          [v3 frame];
          v24 = v23 + -40.0;
          sub_190D535D0();
          v26 = v25;
          v27 = [v7 heightAnchor];
          v28 = [v27 constraintEqualToConstant_];

          MEMORY[0x193AF29E0]();
          if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_190D571A0();
          }
        }

        else
        {
          [v7 sizeToFit];
          v29 = swift_initStackObject();
          *(v29 + 16) = xmmword_190DD55F0;
          v30 = [v7 centerXAnchor];
          v31 = [v3 safeAreaLayoutGuide];
          v32 = [v31 centerXAnchor];

          v33 = [v30 constraintEqualToAnchor_];
          *(v29 + 32) = v33;
          sub_190CAA5E8(v29);
          [v3 frame];
          v35 = v34;
          sub_190D535D0();
          v37 = v36;
          v38 = 400.0;
          if (v35 <= 400.0)
          {
            v38 = v35;
          }

          v24 = v38 + -40.0;
          v39 = [v7 heightAnchor];
          v40 = [v39 constraintEqualToConstant_];

          MEMORY[0x193AF29E0]();
          if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_190D571A0();
          }
        }

        sub_190D571E0();
        v41 = [v7 widthAnchor];

        v42 = [v41 constraintEqualToConstant_];
        MEMORY[0x193AF29E0]();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_190D571A0();
        }

        sub_190D571E0();
        v43 = objc_opt_self();
        sub_19086225C();
        v44 = sub_190D57160();

        [v43 activateConstraints_];

        goto LABEL_17;
      }
    }

LABEL_17:
  }
}

void sub_190B4877C(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v44 = a1;
  v45 = a4;
  v49 = sub_190D53830();
  v46 = *(v49 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0, &qword_190DD7B00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10, &qword_190DE84D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_190D519C0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    sub_1908A731C(a3, v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_19022EEA4(v10, &qword_1EAD54C10, &qword_190DE84D0);
    }

    else
    {
      v42 = *(v12 + 32);
      v43 = v12 + 32;
      v42(v17, v10, v11);
      if (*(a3 + 16))
      {
        v20 = sub_190875EE0(v17);
        if (v21)
        {
          v41 = *(*(a3 + 56) + 8 * v20);
          v22 = sub_190D572E0();
          (*(*(v22 - 8) + 56))(v47, 1, 1, v22);
          v23 = v46;
          (*(v46 + 16))(v48, v44, v49);
          (*(v12 + 16))(v14, v17, v11);
          sub_190D572A0();
          v40 = a3;
          sub_190D52690();
          v45 = v45;
          sub_190D52690();
          v44 = v19;
          v37 = sub_190D57290();
          v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
          v39 = (v5 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
          v38 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
          v25 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
          v26 = (*(v12 + 80) + v25 + 8) & ~*(v12 + 80);
          v27 = (v13 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
          v28 = swift_allocObject();
          v29 = MEMORY[0x1E69E85E0];
          *(v28 + 16) = v37;
          *(v28 + 24) = v29;
          (*(v23 + 32))(v28 + v24, v48, v49);
          v30 = v44;
          v31 = v38;
          *(v28 + v39) = v45;
          *(v28 + v31) = v40;
          *(v28 + v25) = v30;
          v42((v28 + v26), v14, v11);
          *(v28 + v27) = v41;
          sub_190857E08(0, 0, v47, &unk_190DF4B28, v28);

          (*(v12 + 8))(v17, v11);
          return;
        }
      }

      (*(v12 + 8))(v17, v11);
    }

    swift_beginAccess();
    v32 = swift_unknownObjectWeakLoadStrong();
    if (!v32)
    {
      goto LABEL_13;
    }

    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      v34 = v33;
      [v33 removeFromSuperview];
    }

    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    v35 = swift_unknownObjectWeakLoadStrong();
    if (v35)
    {
      [v35 tipManagerDidDismissTranscriptBannerTip];

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_13:
    }
  }
}

uint64_t sub_190B48CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[40] = a8;
  v8[41] = v14;
  v8[38] = a6;
  v8[39] = a7;
  v8[36] = a4;
  v8[37] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10, &qword_190DE84D0);
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v9 = sub_190D519C0();
  v8[46] = v9;
  v8[47] = *(v9 - 8);
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v8[50] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B530, &qword_190DEB910);
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  v8[53] = swift_task_alloc();
  sub_190D572A0();
  v8[54] = sub_190D57290();
  v11 = sub_190D57240();
  v8[55] = v11;
  v8[56] = v10;

  return MEMORY[0x1EEE6DFA0](sub_190B48EA4, v11, v10);
}

uint64_t sub_190B48EA4()
{
  v102 = v0;
  v1 = v0;
  if (sub_190D53810() == 0xD000000000000020 && 0x8000000190E75500 == v2)
  {

LABEL_11:
    v8 = *(v0 + 304);
    v91 = [*(v0 + 296) conversation];
    v9 = *(v8 + 16);
    v97 = v0;
    if (v9)
    {
      v96 = *(v0 + 400);
      v10 = *(v0 + 376);
      v11 = *(v0 + 304);
      v101 = MEMORY[0x1E69E7CC0];
      sub_19082DBB4(0, v9, 0);
      v12 = v101;
      v13 = v11 + 64;
      v14 = sub_190D58180();
      v15 = v14;
      v16 = 0;
      v100 = *(v11 + 36);
      v95 = v10;
      v94 = v11 + 64;
      v92 = v11 + 72;
      v93 = v9;
      while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v11 + 32))
      {
        v19 = v15 >> 6;
        if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
        {
          goto LABEL_60;
        }

        if (v100 != *(v11 + 36))
        {
          goto LABEL_61;
        }

        v98 = v16;
        v99 = v12;
        v21 = *(v97 + 416);
        v20 = *(v97 + 424);
        v22 = *(v97 + 408);
        v23 = *(v97 + 368);
        (*(v95 + 16))(v20, *(v11 + 48) + *(v95 + 72) * v15, v23);
        v24 = *(*(v11 + 56) + 8 * v15);
        (*(v95 + 32))(v21, v20, v23);
        *(v21 + *(v96 + 48)) = v24;
        sub_19022FD14(v21, v22, &qword_1EAD5B530, &qword_190DEB910);
        sub_190D52690();

        v25 = sub_190D518C0();
        v27 = v26;
        sub_19022EEA4(v21, &qword_1EAD5B530, &qword_190DEB910);
        v28 = v22;
        v12 = v99;
        v14 = (*(v95 + 8))(v28, v23);
        v101 = v99;
        v30 = *(v99 + 16);
        v29 = *(v99 + 24);
        if (v30 >= v29 >> 1)
        {
          v14 = sub_19082DBB4((v29 > 1), v30 + 1, 1);
          v12 = v101;
        }

        *(v12 + 16) = v30 + 1;
        v31 = v12 + 16 * v30;
        *(v31 + 32) = v25;
        *(v31 + 40) = v27;
        v17 = 1 << *(v11 + 32);
        if (v15 >= v17)
        {
          goto LABEL_62;
        }

        v13 = v94;
        v32 = *(v94 + 8 * v19);
        if ((v32 & (1 << v15)) == 0)
        {
          goto LABEL_63;
        }

        if (v100 != *(v11 + 36))
        {
          goto LABEL_64;
        }

        v33 = v32 & (-2 << (v15 & 0x3F));
        if (v33)
        {
          v17 = __clz(__rbit64(v33)) | v15 & 0x7FFFFFFFFFFFFFC0;
          v18 = v93;
        }

        else
        {
          v34 = v11;
          v35 = v19 << 6;
          v18 = v93;
          v36 = (v92 + 8 * v19);
          v37 = v19 + 1;
          while (v37 < (v17 + 63) >> 6)
          {
            v39 = *v36++;
            v38 = v39;
            v35 += 64;
            ++v37;
            if (v39)
            {
              sub_19086E9E0(v15, v100, 0);
              v17 = __clz(__rbit64(v38)) + v35;
              goto LABEL_30;
            }
          }

          sub_19086E9E0(v15, v100, 0);
LABEL_30:
          v11 = v34;
        }

        v16 = v98 + 1;
        v15 = v17;
        if (v98 + 1 == v18)
        {
          v1 = v97;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
    }

    else
    {
LABEL_32:
      v40 = v1[37];
      v41 = sub_190D57160();

      [v91 setSuggestedTranslationLanguageCodes_];

      v42 = [v40 conversation];
      v43 = [v42 suggestedTranslationLanguageCodes];

      v44 = sub_190D57180();
      v45 = *(v44 + 16);

      if (v45 == 1)
      {

        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v47 = Strong;
          sub_190D518C0();
          v48 = sub_190D56ED0();

          v49 = sub_190D57160();
          [v47 enableAutomaticTranslationButtonTappedWithLanguageCode:v48 userTranslationLanguageCode:0 affectedMessageGUIDs:v49];
          swift_unknownObjectRelease();
        }

        swift_beginAccess();
        v50 = swift_unknownObjectWeakLoadStrong();
        if (!v50)
        {
          goto LABEL_56;
        }

        v51 = swift_unknownObjectWeakLoadStrong();
        if (v51)
        {
          v52 = v51;
          [v51 removeFromSuperview];
        }

        goto LABEL_38;
      }

      v54 = v1[49];
      v55 = v1[46];
      v56 = v1[47];
      v58 = v1[44];
      v57 = v1[45];
      v59 = v1[37];
      sub_190D52030();
      sub_190D51FE0();
      (*(v56 + 16))(v57, v54, v55);
      v60 = *(v56 + 56);
      v60(v57, 0, 1, v55);
      v60(v58, 1, 1, v55);
      v61 = [v59 &selRef_connectIfNeeded + 2];
      v62 = [v61 suggestedTranslationLanguageCodes];

      v63 = sub_190D57180();
      v64 = *(v63 + 16);
      if (v64)
      {
        v65 = v1[47];
        v101 = MEMORY[0x1E69E7CC0];
        sub_19082DD94(0, v64, 0);
        v66 = v101;
        v67 = v63 + 40;
        do
        {
          sub_190D52690();
          sub_190D518B0();
          v101 = v66;
          v69 = *(v66 + 16);
          v68 = *(v66 + 24);
          if (v69 >= v68 >> 1)
          {
            sub_19082DD94((v68 > 1), v69 + 1, 1);
            v66 = v101;
          }

          v70 = v1[48];
          v71 = v1[46];
          *(v66 + 16) = v69 + 1;
          (*(v65 + 32))(v66 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v69, v70, v71);
          v67 += 16;
          --v64;
        }

        while (v64);
      }

      else
      {

        v66 = MEMORY[0x1E69E7CC0];
      }

      v73 = v1[44];
      v72 = v1[45];
      v74 = v1[42];
      v75 = v1[43];
      v77 = v1[38];
      v76 = v1[39];
      sub_19022FD14(v72, v75, &qword_1EAD54C10, &qword_190DE84D0);
      sub_19022FD14(v73, v74, &qword_1EAD54C10, &qword_190DE84D0);
      v78 = sub_190D51930();
      LOBYTE(v101) = 0;
      type metadata accessor for CKLanguageSelectionViewModel(0);
      swift_allocObject();
      v79 = v78;
      v1 = v97;
      v80 = CKLanguageSelectionViewModel.init(excludedLocale:currentSelectedLocale:suggestedLanguages:preferredLanguages:mode:)(v75, v74, v66, v79, &v101);
      *(v97 + 456) = v80;
      sub_19022EEA4(v73, &qword_1EAD54C10, &qword_190DE84D0);
      sub_19022EEA4(v72, &qword_1EAD54C10, &qword_190DE84D0);
      sub_190B49BF4(v77, v80, v76);
      *(v97 + 464) = v81;
      if (!v81)
      {
        (*(*(v97 + 376) + 8))(*(v97 + 392), *(v97 + 368));

        goto LABEL_56;
      }

      v82 = v81;
      v83 = [v81 popoverPresentationController];
      if (v83)
      {
        v84 = v83;
        swift_beginAccess();
        v85 = swift_unknownObjectWeakLoadStrong();
        [v84 setSourceView_];

        [v84 setPermittedArrowDirections_];
      }

      v86 = [*(v97 + 296) navigationController];
      *(v97 + 472) = v86;
      if (!v86)
      {
        (*(*(v97 + 376) + 8))(*(v97 + 392), *(v97 + 368));

        goto LABEL_56;
      }

      v87 = v86;
      *(v97 + 16) = v97;
      *(v97 + 24) = sub_190B499E4;
      v88 = swift_continuation_init();
      *(v97 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57930, &qword_190DD97C8);
      *(v97 + 80) = MEMORY[0x1E69E9820];
      *(v97 + 88) = 1107296256;
      *(v97 + 96) = sub_19088DB28;
      *(v97 + 104) = &block_descriptor_31_1;
      *(v97 + 112) = v88;
      [v87 presentViewController:v82 animated:1 completion:v97 + 80];
      v14 = v97 + 16;
    }

    return MEMORY[0x1EEE6DEC8](v14);
  }

  v4 = sub_190D58760();

  if (v4)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {

    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      [v6 removeFromSuperview];
    }

LABEL_38:
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    v53 = swift_unknownObjectWeakLoadStrong();
    if (v53)
    {
      [v53 tipManagerDidDismissTranscriptBannerTip];
      swift_unknownObjectRelease();
    }
  }

LABEL_56:

  v89 = v1[1];

  return v89();
}

uint64_t sub_190B499E4()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 440);

  return MEMORY[0x1EEE6DFA0](sub_190B49AEC, v2, v1);
}

uint64_t sub_190B49AEC()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[49];
  v4 = v0[46];
  v5 = v0[47];

  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

void sub_190B49BF4(uint64_t a1, uint64_t a2, void *a3)
{
  v72 = a3;
  v73 = a1;
  v70 = sub_190D51920();
  v4 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B530, &qword_190DEB910);
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v56 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = CKFrameworkBundle(Strong);
    if (v12)
    {
      v13 = v12;
      v56 = v11;
      v57 = a2;
      v14 = sub_190D56ED0();
      v15 = sub_190D56ED0();
      v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

      if (!v16)
      {
        sub_190D56F10();
        v16 = sub_190D56ED0();
      }

      v71 = [objc_opt_self() alertControllerWithTitle:0 message:v16 preferredStyle:0];

      v17 = *(v73 + 64);
      v58 = v73 + 64;
      v18 = 1 << *(v73 + 32);
      v19 = -1;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      v20 = v19 & v17;
      v21 = (v18 + 63) >> 6;
      v63 = "anslate-messages";
      v62 = *MEMORY[0x1E69A6648];
      v61 = (v4 + 104);
      v60 = (v4 + 8);
      v59 = &v76;
      sub_190D52690();
      v22 = 0;
      v23 = v72;
      if (v20)
      {
        while (1)
        {
          v24 = v22;
LABEL_13:
          v25 = __clz(__rbit64(v20));
          v20 &= v20 - 1;
          v26 = v25 | (v24 << 6);
          v27 = v73;
          v28 = *(v73 + 48);
          v29 = sub_190D519C0();
          v30 = v64;
          (*(*(v29 - 8) + 16))(v64, v28 + *(*(v29 - 8) + 72) * v26, v29);
          v31 = v69;
          *(v30 + *(v68 + 48)) = *(*(v27 + 56) + 8 * v26);
          v32 = v70;
          (*v61)(v31, v62, v70);
          sub_190D52690();
          sub_1908EA100(0xD000000000000029, v63 | 0x8000000000000000, v30, v31);
          (*v60)(v31, v32);
          v33 = v65;
          sub_19022FD14(v30, v65, &qword_1EAD5B530, &qword_190DEB910);
          v34 = (*(v67 + 80) + 24) & ~*(v67 + 80);
          v35 = swift_allocObject();
          *(v35 + 16) = v23;
          sub_190A77958(v33, v35 + v34);
          v36 = v23;
          v37 = sub_190D56ED0();

          v78 = sub_190B4C868;
          v79 = v35;
          aBlock = MEMORY[0x1E69E9820];
          v75 = 1107296256;
          v76 = sub_19084156C;
          v77 = &block_descriptor_37_0;
          v38 = _Block_copy(&aBlock);

          v39 = [objc_opt_self() actionWithTitle:v37 style:0 handler:v38];
          _Block_release(v38);

          v40 = v71;
          [v71 addAction_];
          [v40 setPreferredAction_];

          sub_19022EEA4(v30, &qword_1EAD5B530, &qword_190DEB910);
          if (!v20)
          {
            goto LABEL_9;
          }
        }
      }

      while (1)
      {
LABEL_9:
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
          goto LABEL_21;
        }

        if (v24 >= v21)
        {
          break;
        }

        v20 = *(v58 + 8 * v24);
        ++v22;
        if (v20)
        {
          v22 = v24;
          goto LABEL_13;
        }
      }

      v42 = CKFrameworkBundle(v41);
      if (!v42)
      {
        goto LABEL_22;
      }

      v43 = v42;
      v44 = sub_190D56ED0();
      v45 = sub_190D56ED0();
      v46 = [v43 localizedStringForKey:v44 value:0 table:v45];

      if (!v46)
      {
        sub_190D56F10();
        v46 = sub_190D56ED0();
      }

      v47 = swift_allocObject();
      v49 = v71;
      v48 = v72;
      v47[2] = v57;
      v47[3] = v49;
      v50 = v56;
      v47[4] = v48;
      v47[5] = v50;
      v78 = sub_190B4C8E8;
      v79 = v47;
      aBlock = MEMORY[0x1E69E9820];
      v75 = 1107296256;
      v76 = sub_19084156C;
      v77 = &block_descriptor_43_2;
      v51 = _Block_copy(&aBlock);
      v52 = v48;
      sub_190D50920();
      v53 = v49;
      v54 = v50;

      v55 = [objc_opt_self() actionWithTitle:v46 style:0 handler:v51];
      _Block_release(v51);

      [v53 addAction_];
    }

    else
    {
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }
  }
}

double sub_190B4A390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B530, &qword_190DEB910);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_19022FD14(a3, v6, &qword_1EAD5B530, &qword_190DEB910);

    sub_190D518C0();
    v9 = sub_190D56ED0();

    v10 = sub_190D519C0();
    v11 = *(*(v10 - 8) + 8);
    v11(v6, v10);
    sub_19022FD14(a3, v6, &qword_1EAD5B530, &qword_190DEB910);
    v12 = sub_190D57160();

    v11(v6, v10);
    [v8 enableAutomaticTranslationButtonTappedWithLanguageCode:v9 userTranslationLanguageCode:0 affectedMessageGUIDs:v12];

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {

    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      [v15 removeFromSuperview];
    }

    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      [v17 tipManagerDidDismissTranscriptBannerTip];
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_190B4A5FC(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = CKFrameworkBundle(a1);
  if (v9)
  {
    v10 = v9;
    v11 = sub_190D56ED0();
    v12 = sub_190D56ED0();
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

    v14 = sub_190D56F10();
    v16 = v15;

    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    v18 = a3;
    v19 = CKFrameworkBundle(a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C18, &qword_190DE27F0);
    sub_190D55FC0();
    v20 = v25;
    sub_190D55FC0();
    v21 = v25;
    v26 = a2;
    LOBYTE(v27) = 1;
    v28 = v21;
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C20, &qword_190DD8890));
    sub_190D50920();
    v22 = sub_190D54B60();
    v23 = [a5 navigationController];
    if (v23)
    {
      v24 = v23;
      [v23 presentViewController:v22 animated:1 completion:0];
    }

    [v18 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

id sub_190B4A824(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0, &qword_190DD7B00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v40 - v7;
  v9 = type metadata accessor for TranslationTip(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_190D519C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v20 = v40 - v19;
  v21 = *a1;
  if (*a1 == 1)
  {

    return [a2 dismissViewControllerAnimated:1 completion:{0, v18}];
  }

  else
  {
    v43 = v17;
    sub_190D52030();
    sub_190D51FE0();
    if (v21)
    {
      v23 = sub_190D518C0();
      v41 = v24;
      v42 = v23;
      sub_190B3D170(v11);
      sub_190D52690();
      sub_190B3D900(v11, v25);
      sub_190D518C0();
      swift_beginAccess();
      v40[1] = a3;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v27 = Strong;
        v28 = sub_190D56ED0();
        v29 = sub_190D56ED0();

        v30 = sub_190D57160();

        [v27 enableAutomaticTranslationButtonTappedWithLanguageCode:v28 userTranslationLanguageCode:v29 affectedMessageGUIDs:v30];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v31 = sub_190D572E0();
      (*(*(v31 - 8) + 56))(v8, 1, 1, v31);
      v32 = v43;
      (*(v13 + 16))(v15, v20, v43);
      v33 = (*(v13 + 80) + 48) & ~*(v13 + 80);
      v34 = swift_allocObject();
      *(v34 + 2) = 0;
      *(v34 + 3) = 0;
      v35 = v41;
      *(v34 + 4) = v42;
      *(v34 + 5) = v35;
      (*(v13 + 32))(&v34[v33], v15, v32);
      sub_190857E08(0, 0, v8, &unk_190DF4B38, v34);

      swift_beginAccess();
      v36 = swift_unknownObjectWeakLoadStrong();
      if (v36)
      {

        v37 = swift_unknownObjectWeakLoadStrong();
        if (v37)
        {
          v38 = v37;
          [v37 removeFromSuperview];
        }

        swift_unknownObjectWeakAssign();
        swift_beginAccess();
        v39 = swift_unknownObjectWeakLoadStrong();
        if (v39)
        {
          [v39 tipManagerDidDismissTranscriptBannerTip];
          swift_unknownObjectRelease();
        }
      }
    }

    return (*(v13 + 8))(v20, v43);
  }
}

uint64_t sub_190B4ACA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_190B4ACC8, 0, 0);
}

uint64_t sub_190B4ACC8()
{
  v1 = v0[4];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80, &unk_190DD64E0);
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = xmmword_190DD1DA0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v3 + 48) = sub_190D518C0();
  *(v3 + 56) = v4;
  sub_190D52100();
  sub_190D52690();
  v0[7] = sub_190D520F0();
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_190B4ADCC;

  return MEMORY[0x1EEE10B80](v3);
}

uint64_t sub_190B4ADCC()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_190B4AF10, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_190B4AF10()
{
  v17 = v0;

  if (qword_1EAD51CA0 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9E028);
  v3 = v1;
  v4 = sub_190D53020();
  v5 = sub_190D576A0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54020, &qword_190DD6530);
    v11 = sub_190D56F50();
    v13 = sub_19021D9F8(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_19020E000, v4, v5, "Failed to download translation assets: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x193AF7A40](v9, -1, -1);
    MEMORY[0x193AF7A40](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_190B4B0F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E180, &unk_190DEBF50);
  __swift_allocate_value_buffer(v0, qword_1EAD9D5F8);
  __swift_project_value_buffer(v0, qword_1EAD9D5F8);
  type metadata accessor for TranslationTip(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B588, &unk_190DEBF60);
  sub_190D536E0();
  *(swift_allocObject() + 16) = xmmword_190DD1D90;
  sub_190D536D0();
  return sub_190D53860();
}

uint64_t TranslationTip.id.getter()
{
  v1 = v0;
  v2 = sub_190D51FC0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69A6668], v2, v4);
  v7 = sub_190D51FB0();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v11[0] = v7;
  v11[1] = v9;
  MEMORY[0x193AF28B0](95, 0xE100000000000000);
  MEMORY[0x193AF28B0](*v1, v1[1]);
  return v11[0];
}

id TranslationTip.title.getter(uint64_t a1)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();
    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    sub_190D56F10();
    sub_19081E484();
    return sub_190D555F0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id TranslationTip.actions.getter()
{
  v1 = sub_190D51920();
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10, &qword_190DE84D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_190D519C0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = type metadata accessor for TranslationTip(0);
  sub_19022FD14(v0 + *(v14 + 24), v6, &qword_1EAD54C10, &qword_190DE84D0);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    sub_190D518C0();
    v24 = *(v8 + 8);
    v24(v6, v7);
    sub_190D518B0();
    (*(v8 + 32))(v13, v10, v7);
    v26 = v29;
    v25 = v30;
    (*(v29 + 104))(v3, *MEMORY[0x1E69A6648], v30);
    v21 = sub_1908EA100(0xD000000000000029, 0x8000000190E75530, v13, v3);
    v23 = v27;
    (*(v26 + 8))(v3, v25);
    v24(v13, v7);
    goto LABEL_5;
  }

  v15 = sub_19022EEA4(v6, &qword_1EAD54C10, &qword_190DE84D0);
  result = CKFrameworkBundle(v15);
  if (result)
  {
    v17 = result;
    v18 = sub_190D56ED0();
    v19 = sub_190D56ED0();
    v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

    v21 = sub_190D56F10();
    v23 = v22;

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B590, &unk_190DEBB50);
    sub_190D53830();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_190DD1D90;
    v31 = v21;
    v32 = v23;
    sub_19081E484();
    sub_190D53800();
    return v28;
  }

  __break(1u);
  return result;
}

uint64_t TranslationTip.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B578, &unk_190DEBF40);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - v2;
  v4 = sub_190D537C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B580, &unk_190DEBB30);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  sub_190D53700();
  v12 = MEMORY[0x1E6982B20];
  MEMORY[0x193AEEF00](v7, v4, MEMORY[0x1E6982B20]);
  (*(v5 + 8))(v7, v4);
  v16 = v4;
  v17 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x193AEEF30](v11, v8, OpaqueTypeConformance2);
  v16 = v8;
  v17 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_190D53680();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v14;
}

uint64_t TranslationTip.rules.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E180, &unk_190DEBF50);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - v2;
  v4 = sub_190D537E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD45F78 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EAD9D5F8);
  swift_beginAccess();
  (*(v1 + 16))(v3, v8, v0);
  sub_190D537F0();
  sub_190D53640();
  (*(v5 + 8))(v7, v4);
  v9 = sub_190D52690();

  return v9;
}

uint64_t sub_190B4BD94()
{
  v1 = v0;
  v2 = sub_190D51FC0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69A6668], v2, v4);
  v7 = sub_190D51FB0();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v11[0] = v7;
  v11[1] = v9;
  MEMORY[0x193AF28B0](95, 0xE100000000000000);
  MEMORY[0x193AF28B0](*v1, v1[1]);
  return v11[0];
}

uint64_t sub_190B4BEF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E180, &unk_190DEBF50);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - v2;
  v4 = sub_190D537E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD45F78 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EAD9D5F8);
  swift_beginAccess();
  (*(v1 + 16))(v3, v8, v0);
  sub_190D537F0();
  sub_190D53640();
  (*(v5 + 8))(v7, v4);
  v9 = sub_190D52690();

  return v9;
}

uint64_t sub_190B4C110()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B578, &unk_190DEBF40);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - v2;
  v4 = sub_190D537C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B580, &unk_190DEBB30);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  sub_190D53700();
  v12 = MEMORY[0x1E6982B20];
  MEMORY[0x193AEEF00](v7, v4, MEMORY[0x1E6982B20]);
  (*(v5 + 8))(v7, v4);
  v16 = v4;
  v17 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x193AEEF30](v11, v8, OpaqueTypeConformance2);
  v16 = v8;
  v17 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_190D53680();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v14;
}

uint64_t sub_190B4C3B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_190D51FC0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69A6668], v4, v6);
  v9 = sub_190D51FB0();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v14 = v9;
  v15 = v11;
  MEMORY[0x193AF28B0](95, 0xE100000000000000);
  result = MEMORY[0x193AF28B0](*v2, v2[1]);
  v13 = v15;
  *a1 = v14;
  a1[1] = v13;
  return result;
}

void sub_190B4C550(uint64_t a1)
{
  sub_190B4C5E4();
  if (v1 <= 0x3F)
  {
    sub_190A6C63C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_190B4C5E4()
{
  if (!qword_1EAD46728)
  {
    v0 = sub_190D57200();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD46728);
    }
  }
}

uint64_t sub_190B4C634(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_190B4C688(uint64_t a1)
{
  v3 = *(sub_190D53830() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_190D519C0() - 8);
  v9 = (*(v8 + 80) + v7 + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v5);
  v13 = *(v1 + v6);
  v14 = *(v1 + v7);
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_190221DA4;

  return sub_190B48CE4(a1, v10, v11, v1 + v4, v12, v13, v14, v1 + v9);
}

double sub_190B4C868(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B530, &qword_190DEB910) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_190B4A390(a1, v4, v5);
}

uint64_t sub_190B4C8FC(uint64_t a1)
{
  v4 = *(sub_190D519C0() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_190221DA0;

  return sub_190B4ACA4(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_190B4CA80(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1 == 0xD000000000000020 && 0x8000000190E5F000 == a2 || (sub_190D58760() & 1) != 0)
    {
      return 1;
    }

    v4 = sub_190D56ED0();
  }

  else
  {
    v4 = 0;
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for TapbackBlurView();
  v5 = objc_msgSendSuper2(&v6, sel__shouldAnimatePropertyWithKey_, v4);

  return v5;
}

id sub_190B4CBDC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TapbackBlurView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_190B4CC48()
{
  v32 = sub_190D519C0();
  v0 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v2 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1E69E7CC0];
  v3 = sub_190D56ED0();
  v4 = [objc_opt_self() systemImageNamed_];

  v5 = 0;
  v6 = (v0 + 8);
  v30 = "ChatKit/TapbackBlurView.swift";
  v31 = xmmword_190DD1D90;
  while (1)
  {
    v7 = *(&unk_1F04033F8 + v5 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040, &unk_190DDF780);
    v8 = swift_allocObject();
    *(v8 + 16) = v31;
    v9 = objc_allocWithZone(MEMORY[0x1E696ADA0]);
    v10 = [v9 init];
    [v10 setNumberStyle_];
    sub_190D51980();
    v11 = sub_190D51940();
    (*v6)(v2, v32);
    [v10 setLocale_];

    v12 = v7 == 1.25 ? 2 : 1;
    [v10 setMaximumFractionDigits_];
    v13 = sub_190D51C70();
    v14 = [v10 stringFromNumber_];

    if (v14)
    {
      v15 = sub_190D56F10();
      v17 = v16;

      v10 = v14;
    }

    else
    {
      v15 = sub_190D573C0();
      v17 = v18;
    }

    *(v8 + 56) = MEMORY[0x1E69E6158];
    v19 = sub_19081EA10();
    *(v8 + 64) = v19;
    *(v8 + 32) = v15;
    *(v8 + 40) = v17;
    result = CKFrameworkBundle(v19);
    if (!result)
    {
      break;
    }

    v21 = result;
    sub_1902188FC(0, &qword_1EAD464F0, 0x1E69DC628);
    v22 = sub_190D56ED0();
    v23 = sub_190D56ED0();
    v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

    sub_190D56F10();
    sub_190D56EE0();

    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v7;
    v27 = v4;
    v28 = sub_190D57DC0();
    MEMORY[0x193AF29E0]();
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    sub_190D571E0();

    v5 += 8;
    if (v5 == 32)
    {
      sub_1902188FC(0, &unk_1EAD44ED0, 0x1E69DCC60);
      v29 = sub_190D57C90();

      return v29;
    }
  }

  __break(1u);
  return result;
}

void sub_190B4D0F0(double a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_playbackSpeed;
    *(Strong + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_playbackSpeed) = a1;
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    aBlock[4] = sub_190B4D5C4;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190840E6C;
    aBlock[3] = &block_descriptor_87;
    v9 = _Block_copy(aBlock);
    v10 = v5;

    [v7 animateWithDuration:0 delay:v9 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:0.0];
    _Block_release(v9);
    if (*&v5[v6] == 1.0)
    {
      [v10 setNeedsLayout];
      [v10 layoutIfNeeded];
    }

    v11 = v10;
    v12 = [v11 delegate];
    if (v12)
    {
      v13 = v12;
      if ([v12 respondsToSelector_])
      {
        [v13 playbackSpeedDidChangeForAudioMessageBalloonView:v11 playbackSpeed:*&v5[v6]];

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_190B4D324(void *a1)
{
  [a1 translationInView_];
  v4 = v3;
  if ([a1 state] == 1)
  {
    v5 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_time;
    swift_beginAccess();
    v6 = *&v1[v5];
    v7 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_initialTimeBeforePan;
    swift_beginAccess();
    *&v1[v7] = v6;
    v8 = [v1 delegate];
    if (!v8)
    {
      return;
    }

    v9 = v8;
    if ([v8 respondsToSelector_])
    {
      [v9 audioBalloonScrubberWithRecognizer:a1 didChangeValue:*&v1[v5]];
    }

    goto LABEL_13;
  }

  v10 = sub_190BE94C4();
  [v10 frame];
  v12 = v11;

  v13 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_duration;
  v14 = v4 / v12;
  swift_beginAccess();
  v15 = *&v1[v13];
  v16 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_initialTimeBeforePan;
  swift_beginAccess();
  v17 = v14 * v15 + *&v1[v16];
  if (v15 >= v17)
  {
    v19 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_time;
    swift_beginAccess();
    if (*&v1[v19] >= 0.0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0.0;
    }
  }

  else
  {
    v18 = v15 + -0.01;
  }

  v20 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_time;
  swift_beginAccess();
  *&v1[v20] = v18;
  sub_190BEA640();
  v21 = [v1 delegate];
  if (v21)
  {
    v22 = v21;
    if ([v21 respondsToSelector_])
    {
      [v22 audioBalloonScrubberWithRecognizer:a1 didChangeValue:v18];
    }

LABEL_13:
    swift_unknownObjectRelease();
  }
}

id CKConversationPriorityLabel.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CKConversationPriorityLabel.init(frame:)()
{
  *&v0[OBJC_IVAR____TtC7ChatKit27CKConversationPriorityLabel_classification] = 0;
  v0[OBJC_IVAR____TtC7ChatKit27CKConversationPriorityLabel_ck_highlighted] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CKConversationPriorityLabel();
  v1 = objc_msgSendSuper2(&v3, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_190B4DD1C();

  return v1;
}

uint64_t sub_190B4D80C()
{
  v1 = OBJC_IVAR____TtC7ChatKit27CKConversationPriorityLabel_classification;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_190B4D8C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit27CKConversationPriorityLabel_classification;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    sub_190B4DD1C();
  }
}

void sub_190B4D920(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit27CKConversationPriorityLabel_classification;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  if (v2 != v5)
  {
    sub_190B4DD1C();
  }
}

void (*sub_190B4D984(uint64_t *a1))(uint64_t a1, __n128 a2)
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
  v5 = OBJC_IVAR____TtC7ChatKit27CKConversationPriorityLabel_classification;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_190B4DA18;
}

void sub_190B4DA18(uint64_t a1, __n128 a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if (v3 != v6)
  {
    sub_190B4DD1C();
  }

  free(v2);
}

uint64_t sub_190B4DAB8()
{
  v1 = OBJC_IVAR____TtC7ChatKit27CKConversationPriorityLabel_ck_highlighted;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_190B4DB6C(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC7ChatKit27CKConversationPriorityLabel_ck_highlighted;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    sub_190B4DD1C();
  }
}

void sub_190B4DBD0(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit27CKConversationPriorityLabel_ck_highlighted;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  if (v2 != v5)
  {
    sub_190B4DD1C();
  }
}

void (*sub_190B4DC34(uint64_t *a1))(uint64_t a1, __n128 a2)
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
  v5 = OBJC_IVAR____TtC7ChatKit27CKConversationPriorityLabel_ck_highlighted;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_190B4DCC8;
}

void sub_190B4DCC8(uint64_t a1, __n128 a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (v5 != v6)
  {
    sub_190B4DD1C();
  }

  free(v2);
}

void sub_190B4DD1C()
{
  v1 = OBJC_IVAR____TtC7ChatKit27CKConversationPriorityLabel_classification;
  swift_beginAccess();
  v2 = sub_190B4DDF8(*&v0[v1]);
  v4 = v3;
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = v2;
    v7 = OBJC_IVAR____TtC7ChatKit27CKConversationPriorityLabel_ck_highlighted;
    swift_beginAccess();
    sub_190B4E1F0(v6, v4, v0[v7]);
    v9 = v8;

    [v0 setAttributedText_];
  }

  else
  {

    [v0 setAttributedText_];
  }
}

id sub_190B4DDF8(uint64_t a1)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();

    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    v6 = sub_190D56F10();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CKConversationPriorityLabel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKConversationPriorityLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190B4DFC8(char a1)
{
  v3 = objc_opt_self();
  v4 = &selRef_whiteColor;
  if ((a1 & 1) == 0)
  {
    v4 = &selRef_quaternarySystemFillColor;
  }

  v5 = [v3 *v4];
  [v1 setColor_];
  [v1 setScale_];
  [v1 setStyle_];
  [v1 setPlatterSize_];
  [v1 setShape_];
}

void sub_190B4E1F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = [objc_opt_self() preferredFontForTextStyle_];
  if ((a3 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = [objc_opt_self() sharedBehaviors];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 theme];

    if (v7)
    {
      v8 = [v7 conversationListSelectedCellColor];

      if (v8)
      {
LABEL_7:
        v9 = [objc_allocWithZone(MEMORY[0x1E69655F0]) init];
        sub_190B4DFC8(a3 & 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5AC30, qword_190DDC340);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_190DD9C20;
        v11 = *MEMORY[0x1E69DB648];
        *(inited + 32) = *MEMORY[0x1E69DB648];
        v12 = sub_1902188FC(0, &qword_1EAD46540, 0x1E69DB878);
        *(inited + 40) = v4;
        v13 = *MEMORY[0x1E69DB650];
        *(inited + 64) = v12;
        *(inited + 72) = v13;
        v14 = sub_1902188FC(0, &qword_1EAD46520, 0x1E69DC888);
        *(inited + 80) = v8;
        v15 = *MEMORY[0x1E69655D0];
        *(inited + 104) = v14;
        *(inited + 112) = v15;
        *(inited + 144) = sub_1902188FC(0, &qword_1EAD5DE88, 0x1E69655F0);
        *(inited + 120) = v9;
        v16 = v11;
        v17 = v4;
        v18 = v13;
        v19 = v8;
        v20 = v15;
        v21 = v9;
        sub_190821998(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A50, &unk_190DD8980);
        swift_arrayDestroy();
        v22 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v23 = sub_190D56ED0();
        type metadata accessor for Key(0);
        sub_19082B370();
        v24 = sub_190D56D60();

        [v22 initWithString:v23 attributes:v24];

        return;
      }

      __break(1u);
LABEL_6:
      v8 = [objc_opt_self() secondaryLabelColor];
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall SendMenuViewController.installReorderingGesture()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCC48]) initWithTarget:v0 action:sel__handleReorderingGesture_];
  v2 = sub_19097C1B4();
  [v2 addGestureRecognizer_];
}

Swift::Void __swiftcall SendMenuViewController.handleReorderingGesture(_:)(UILongPressGestureRecognizer *a1)
{
  v3 = [(UILongPressGestureRecognizer *)a1 state];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v15 = sub_19097C1B4();
      v16 = v15;
      v14 = sel_endInteractiveMovement;
    }

    else
    {
      if (v3 != 4)
      {
        return;
      }

      v12 = sub_19097C1B4();
      [v12 cancelInteractiveMovement];

      v16 = sub_19097C334();
      v13 = sub_19084E244();
      [v13 removeAllBehaviors];

      v14 = sel_invalidateLayout;
      v15 = v16;
    }

    [v15 v14];
  }

  else if (v3 == 1)
  {

    sub_190B4E728(a1);
  }

  else if (v3 == 2)
  {
    v4 = sub_19097C1B4();
    [(UILongPressGestureRecognizer *)a1 locationInView:v4];
    v6 = v5;
    v8 = v7;

    v9 = (v1 + OBJC_IVAR___CKSendMenuViewController_reorderGestureDragPointOffsetFromCellCenter);
    swift_beginAccess();
    [*(v1 + OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuCollectionView) updateInteractiveMovementTargetPosition_];
    v10 = sub_19097C334();
    v11 = sub_19084E244();
    [v11 removeAllBehaviors];

    [v10 invalidateLayout];
  }
}

void sub_190B4E728(void *a1)
{
  v2 = v1;
  v4 = sub_190D51C00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v34 - v10;
  [a1 startPoint];
  v13 = v12;
  v15 = v14;
  v16 = sub_19097C1B4();
  v17 = [v16 indexPathForItemAtPoint_];

  if (v17)
  {
    sub_190D51BC0();

    (*(v5 + 32))(v11, v7, v4);
    v18 = OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuCollectionView;
    v19 = *(v2 + OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuCollectionView);
    v20 = sub_190D51BB0();
    v21 = [v19 cellForItemAtIndexPath_];

    if (v21)
    {
      [*(v2 + v18) convertPoint:v21 toCoordinateSpace:{v13, v15}];
      v22 = [v21 hitTest:0 withEvent:?];
      if (v22)
      {

        v23 = *(v2 + v18);
        v24 = sub_190D51BB0();
        [v23 beginInteractiveMovementForItemAtIndexPath_];

        v25 = sub_19097C334();
        v26 = sub_190D51BB0();
        v27 = [v25 layoutAttributesForItemAtIndexPath_];

        if (v27)
        {
          [v27 center];
          v29 = v28;
          v31 = v30;

          (*(v5 + 8))(v11, v4);
          v32 = (v2 + OBJC_IVAR___CKSendMenuViewController_reorderGestureDragPointOffsetFromCellCenter);
          swift_beginAccess();
          *v32 = v29 - v13;
          v32[1] = v31 - v15;
        }

        else
        {
          (*(v5 + 8))(v11, v4);

          v33 = (v2 + OBJC_IVAR___CKSendMenuViewController_reorderGestureDragPointOffsetFromCellCenter);
          swift_beginAccess();
          *v33 = 0;
          v33[1] = 0;
        }

        return;
      }
    }

    (*(v5 + 8))(v11, v4);
  }
}

uint64_t sub_190B4EACC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 96);
  v3 = swift_allocObject();
  v4 = *(v0 + 80);
  v5 = *(v0 + 112);
  *(v3 + 112) = *(v0 + 96);
  *(v3 + 128) = v5;
  *(v3 + 144) = *(v0 + 128);
  v6 = *(v0 + 16);
  v16 = *(v0 + 32);
  v17 = *(v0 + 48);
  v7 = *(v0 + 64);
  *(v3 + 48) = v16;
  *(v3 + 64) = v17;
  v18 = *(v0 + 80);
  v19 = v7;
  *(v3 + 80) = *(v0 + 64);
  *(v3 + 96) = v4;
  v15 = *(v0 + 16);
  *(v3 + 16) = *v0;
  *(v3 + 32) = v6;
  v8 = swift_allocObject();
  v9 = *(v0 + 112);
  *(v8 + 112) = *(v0 + 96);
  *(v8 + 128) = v9;
  *(v8 + 144) = *(v0 + 128);
  v10 = *(v0 + 48);
  *(v8 + 48) = *(v0 + 32);
  *(v8 + 64) = v10;
  v11 = *(v0 + 80);
  *(v8 + 80) = *(v0 + 64);
  *(v8 + 96) = v11;
  v12 = *(v0 + 16);
  *(v8 + 16) = *v0;
  *(v8 + 32) = v12;
  type metadata accessor for KeyboardListenerWrapperView.Coordinator();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = v15;
  *(v13 + 40) = v16;
  *(v13 + 56) = v17;
  *(v13 + 72) = v19;
  *(v13 + 88) = v18;
  *(v13 + 104) = v2;
  *(v13 + 112) = sub_190B4F97C;
  *(v13 + 120) = v3;
  *(v13 + 128) = sub_190B4FA14;
  *(v13 + 136) = v8;
  sub_190B4FA3C(v0, v20);
  sub_190B4FA3C(v0, v20);
  sub_190D50920();
  sub_190D50920();
  sub_190D50920();
  sub_190D50920();
  sub_190D50920();
  sub_190D50920();
  return v13;
}

char *sub_190B4EC68()
{
  type metadata accessor for KeyboardListenerWrapperView.KeyboardListenerView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DEA0, &unk_190DF4D90);
  sub_190D55030();
  *&v0[OBJC_IVAR____TtCV7ChatKit27KeyboardListenerWrapperViewP33_5345905B395817E069A47C024E09EBB320KeyboardListenerView_keyboardListenerDelegate + 8] = &off_1F041AA60;
  swift_unknownObjectWeakAssign();

  return v0;
}

id sub_190B4ECFC(id result)
{
  if (*v1 == 1)
  {
    v2 = result;
    result = [result isFirstResponder];
    if ((result & 1) == 0)
    {

      return [v2 becomeFirstResponder];
    }
  }

  return result;
}

uint64_t sub_190B4ED60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190B4EACC();
  *a1 = result;
  return result;
}

uint64_t sub_190B4EDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190B4FA74();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_190B4EE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190B4FA74();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_190B4EE84(uint64_t a1)
{
  sub_190B4FA74();
  sub_190D54C10();
  __break(1u);
}

void *sub_190B4EEAC()
{

  return v0;
}

uint64_t sub_190B4EF04()
{
  sub_190B4EEAC();

  return swift_deallocClassInstance();
}

void sub_190B4EFCC(uint64_t a1, uint64_t a2, char a3)
{
  sub_1902188FC(0, &qword_1EAD5DEB0, 0x1E69DCDF0);
  sub_190B4FAC8();
  v6 = sub_190D57400();
  v30.receiver = v3;
  v30.super_class = type metadata accessor for KeyboardListenerWrapperView.KeyboardListenerView();
  objc_msgSendSuper2(&v30, sel_pressesEnded_withEvent_, v6, a2);

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_190D581B0();
    sub_190D574D0();
    a1 = v31;
    v7 = v32;
    v8 = v33;
    v9 = v34;
    v10 = v35;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);
    sub_190D52690();
    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  while (a1 < 0)
  {
    if (!sub_190D581E0() || (swift_dynamicCast(), v19 = v29, v17 = v9, v18 = v10, !v29))
    {
LABEL_28:
      sub_190219C78(a1);
      return;
    }

LABEL_19:
    v20 = [v19 key];
    if (v20 && (v21 = v20, v22 = [v20 modifierFlags], v21, (v22 & 0x20000) != 0))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_8;
      }

      (*(Strong + 112))(a3 & 1);
    }

    else
    {
      v23 = [v19 key];
      if (!v23 || (v24 = v23, v25 = [v23 modifierFlags], v24, (v25 & 0x100000) == 0) || (v26 = swift_unknownObjectWeakLoadStrong()) == 0)
      {
LABEL_8:

        goto LABEL_9;
      }

      (*(v26 + 128))(a3 & 1);
    }

    swift_unknownObjectRelease();
LABEL_9:
    v9 = v17;
    v10 = v18;
  }

  v15 = v9;
  v16 = v10;
  v17 = v9;
  if (v10)
  {
LABEL_15:
    v18 = (v16 - 1) & v16;
    v19 = *(*(a1 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_28;
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

double sub_190B4F2A8(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  sub_1902188FC(0, &qword_1EAD5DEB0, 0x1E69DCDF0);
  sub_190B4FAC8();
  v8 = sub_190D57410();
  v9 = a4;
  v10 = a1;
  sub_190B4EFCC(v8, a4, a5);

  return result;
}

id sub_190B4F7CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KeyboardListenerWrapperView.KeyboardListenerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_190B4F86C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_190B4F8B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_190B4F928()
{
  result = qword_1EAD5DE98;
  if (!qword_1EAD5DE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DE98);
  }

  return result;
}

uint64_t objectdestroyTm_32()
{

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

unint64_t sub_190B4FA74()
{
  result = qword_1EAD5DEA8;
  if (!qword_1EAD5DEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DEA8);
  }

  return result;
}

unint64_t sub_190B4FAC8()
{
  result = qword_1EAD5DEB8;
  if (!qword_1EAD5DEB8)
  {
    sub_1902188FC(255, &qword_1EAD5DEB0, 0x1E69DCDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DEB8);
  }

  return result;
}

void sub_190B4FB30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_190DE5950;
  v1 = sub_190D56ED0();
  v2 = objc_opt_self();
  v3 = [v2 keyCommandWithInput:v1 modifierFlags:0 action:sel_spaceBarPressed];

  *(v0 + 32) = v3;
  *(v0 + 40) = [v2 keyCommandWithInput:*MEMORY[0x1E69DDF30] modifierFlags:0 action:sel_upArrowPressed];
  *(v0 + 48) = [v2 keyCommandWithInput:*MEMORY[0x1E69DDE90] modifierFlags:0 action:sel_downArrowPressed];
  *(v0 + 56) = [v2 keyCommandWithInput:*MEMORY[0x1E69DDF10] modifierFlags:0 action:sel_leftArrowPressed];
  *(v0 + 64) = [v2 keyCommandWithInput:*MEMORY[0x1E69DDF28] modifierFlags:0 action:sel_rightArrowPressed];
  v4 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x193AF3B90](i, v0);
      }

      else
      {
        if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v6 = *(v0 + 8 * i + 32);
      }

      v7 = v6;
      [v6 setWantsPriorityOverSystemBehavior_];
    }
  }
}

void __swiftcall CKChatController.textSelectionAction(chatItem:)(UIAction_optional *__return_ptr retstr, CKChatItem *chatItem)
{
  v4 = [objc_opt_self() sharedFeatureFlags];
  v5 = [v4 isTextSelectionEnabled];

  if (v5)
  {
    v6 = [v2 collectionViewController];
    v7 = [v6 balloonViewForChatItem_];

    if (v7)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;
        v10 = CKFrameworkBundle(v8);
        if (v10)
        {
          v11 = v10;
          sub_1902188FC(0, &qword_1EAD464F0, 0x1E69DC628);
          v12 = sub_190D56ED0();
          v13 = sub_190D56ED0();
          v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

          sub_190D56F10();
          v15 = objc_opt_self();
          v16 = sub_190D56ED0();
          v17 = [v15 __systemImageNamedSwift_];

          v18 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v19 = swift_allocObject();
          *(v19 + 16) = v18;
          *(v19 + 24) = v9;
          sub_190D57DC0();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
      }
    }
  }
}

void *sub_190B4FF84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_190D56770();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D567A0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    [result setTargetFirstResponder_];
    [v13 endHoldingScrollGeometryUpdatesForReason_];
    sub_1902188FC(0, &qword_1EAD46670, 0x1E69E9610);
    v14 = sub_190D57870();
    v20 = v8;
    v15 = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = v13;
    aBlock[4] = sub_190B5150C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190840E6C;
    aBlock[3] = &block_descriptor_19_0;
    v17 = _Block_copy(aBlock);
    v18 = a3;
    v19 = v13;

    sub_190D56790();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_190840DB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0, &unk_190DD6E80);
    sub_190840E08();
    sub_190D58170();
    MEMORY[0x193AF3110](0, v11, v7, v17);
    _Block_release(v17);

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v20);
  }

  return result;
}

void sub_190B50284(uint64_t a1, void *a2)
{
  if (CKTextBalloonView.beginTextSelection()())
  {
    v4 = [a2 delegate];
    if (v4)
    {
      v5 = v4;
      if ([v4 respondsToSelector_])
      {
        [v5 chatController:a2 didStartTextSelectionInView:a1];
      }

      swift_unknownObjectRelease();
    }

    v6 = [a2 chat];
    if (v6)
    {
      v7 = v6;
      [v6 beginHoldingChatItemsUpdatesForReason_];
    }
  }
}

void __swiftcall CKChatController.setBackgroundAction(chatItem:)(UIAction_optional *__return_ptr retstr, CKMessagePartChatItem_optional *chatItem)
{
  v3 = v2;
  v5 = sub_190D515F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v78 - v9;
  if (!chatItem)
  {
    if (qword_1EAD51CD8 != -1)
    {
      swift_once();
    }

    v29 = sub_190D53040();
    __swift_project_value_buffer(v29, qword_1EAD9E0B8);
    v30 = sub_190D53020();
    v31 = sub_190D576C0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_19020E000, v30, v31, "ChatItem is nil. Not providing set-as-background option", v32, 2u);
      MEMORY[0x193AF7A40](v32, -1, -1);
    }

    return;
  }

  v83 = v8;
  v11 = qword_1EAD51CD8;
  v12 = chatItem;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = sub_190D53040();
  v14 = __swift_project_value_buffer(v13, qword_1EAD9E0B8);
  v15 = v12;
  v16 = sub_190D53020();
  v17 = sub_190D576C0();
  v18 = os_log_type_enabled(v16, v17);
  v84 = v6;
  if (!v18)
  {

    goto LABEL_14;
  }

  v85 = v14;
  v86 = v3;
  v82 = v10;
  v19 = v5;
  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v87 = v21;
  *v20 = 136315138;
  v22 = [(CKMessagePartChatItem_optional *)v15 IMChatItem];
  if (!v22)
  {

    __break(1u);
    goto LABEL_45;
  }

  v23 = v22;
  v24 = [v22 guid];

  v6 = v15;
  if (!v24)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v25 = sub_190D56F10();
  v27 = v26;

  v28 = sub_19021D9F8(v25, v27, &v87);

  *(v20 + 4) = v28;
  _os_log_impl(&dword_19020E000, v16, v17, "Requesting set-as-background option for chatItem: %s", v20, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v21);
  MEMORY[0x193AF7A40](v21, -1, -1);
  MEMORY[0x193AF7A40](v20, -1, -1);

  v5 = v19;
  v10 = v82;
  v15 = v6;
  v14 = v85;
  v3 = v86;
LABEL_14:
  if (![v3 shouldShowSetBackgroundContextMenuItem])
  {
    v35 = sub_190D53020();
    v36 = sub_190D576C0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_19020E000, v35, v36, "Current conversation does not support backgrounds capability, or backgrounds rae disabled, not providing set as background option", v37, 2u);
      MEMORY[0x193AF7A40](v37, -1, -1);
    }

    goto LABEL_20;
  }

  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (v33)
  {
    v34 = [v3 currentTopChatItemForAggregateChatItem_];
  }

  else
  {
    v34 = v15;
  }

  v6 = v34;
  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  if (v38)
  {
    v81 = v5;
    v39 = [v38 mediaObject];
    v40 = [v39 backgroundFileURL];

    if (v40)
    {
      v86 = v3;
      sub_190D515B0();

      v41 = [objc_opt_self() currentDevice];
      v42 = [v41 userInterfaceIdiom];

      v44 = 0;
      if (v42 > 4)
      {
        if (v42 != 5)
        {
          if (v42 != 6)
          {
            goto LABEL_38;
          }

          v51 = [objc_opt_self() systemGrayColor];
          v52 = [objc_opt_self() configurationWithHierarchicalColor_];

          v53 = v52;
          v54 = sub_190D56ED0();
          v44 = [objc_opt_self() _systemImageNamed_withConfiguration_];

LABEL_37:
          v43 = v44;
LABEL_38:
          v79 = v6;
          v80 = v44;
          v85 = v14;
          v82 = v15;
          v55 = CKFrameworkBundle(v43);
          if (v55)
          {
            v56 = v55;
            sub_1902188FC(0, &qword_1EAD464F0, 0x1E69DC628);
            v57 = sub_190D56ED0();
            v58 = sub_190D56ED0();
            v59 = [v56 localizedStringForKey:v57 value:0 table:v58];

            sub_190D56F10();
            v60 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v62 = v83;
            v61 = v84;
            v63 = v81;
            (v84->value.super.super._imChatItem)(v83, v10, v81);
            v64 = (LOBYTE(v61->value.super.super._maxWidth) + 24) & ~LOBYTE(v61->value.super.super._maxWidth);
            v65 = swift_allocObject();
            *(v65 + 16) = v60;
            (v61->value.super.super._transcriptText)(v65 + v64, v62, v63);
            v66 = v80;
            v86 = sub_190D57DC0();
            v6 = v82;
            v67 = sub_190D53020();
            v68 = sub_190D576C0();
            if (!os_log_type_enabled(v67, v68))
            {

              (*&v61->value.super.super._zOrder)(v10, v63);
              return;
            }

            v82 = v10;
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v87 = v70;
            *v69 = 136315138;
            v71 = [(CKMessagePartChatItem_optional *)v6 IMChatItem];
            if (v71)
            {
              v72 = v71;
              v73 = [v71 guid];

              if (v73)
              {
                v74 = sub_190D56F10();
                v76 = v75;

                v77 = sub_19021D9F8(v74, v76, &v87);

                *(v69 + 4) = v77;
                _os_log_impl(&dword_19020E000, v67, v68, "Providing set-as-background option for chatItem: %s", v69, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v70);
                MEMORY[0x193AF7A40](v70, -1, -1);
                MEMORY[0x193AF7A40](v69, -1, -1);

                (*&v84->value.super.super._zOrder)(v82, v81);
                return;
              }

              goto LABEL_48;
            }

LABEL_47:

            __break(1u);
LABEL_48:
            __break(1u);
            return;
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }
      }

      else if (v42 > 1)
      {
        goto LABEL_38;
      }

      v53 = sub_190D56ED0();
      v44 = [objc_opt_self() _systemImageNamed_];
      goto LABEL_37;
    }

    v48 = sub_190D53020();
    v49 = sub_190D576C0();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_19020E000, v48, v49, "BackgroundFileURL not provided. Media object not supported or fileURL missing.", v50, 2u);
      MEMORY[0x193AF7A40](v50, -1, -1);
    }

LABEL_20:
    return;
  }

  v45 = sub_190D53020();
  v46 = sub_190D576C0();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_19020E000, v45, v46, "Current chatItem is not attachmentMessagePartChatItem. Not providing set-as-background option", v47, 2u);
    MEMORY[0x193AF7A40](v47, -1, -1);
  }
}

void sub_190B50E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_190D515F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v37 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [Strong conversation];
    v14 = [v13 chat];

    if (v14)
    {
      v15 = [v14 chatIdentifier];
      if (v15)
      {
        v16 = v15;
        v38 = [objc_allocWithZone(type metadata accessor for CKCommunicationSafetyFlowPresenter()) init];
        v17 = a3;
        v18 = *(v5 + 16);
        v37[1] = v17;
        v18(v10);
        (v18)(v7, v10, v4);
        v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = v12;
        (*(v5 + 32))(v20 + v19, v10, v4);
        v21 = objc_opt_self();
        v22 = v12;
        v23 = [v21 sharedManager];
        if (!v23)
        {

          (*(v5 + 8))(v7, v4);
          __break(1u);
          return;
        }

        v24 = v23;
        v25 = [v23 checksForSensitivityOnSend];

        if (v25)
        {

          (*(v5 + 8))(v7, v4);
          v26 = [objc_opt_self() sharedManager];
          v27 = sub_190D51570();
          v28 = swift_allocObject();
          v29 = v38;
          v28[2] = v38;
          v28[3] = 1;
          v28[4] = v22;
          v28[5] = 0;
          v28[6] = sub_190B51488;
          v28[7] = v20;
          aBlock[4] = sub_190B514FC;
          aBlock[5] = v28;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_190B271EC;
          aBlock[3] = &block_descriptor_88;
          v30 = _Block_copy(aBlock);
          v31 = v22;
          v32 = v29;
          sub_190D50920();

          [v26 isSensitiveContent:v27 withChatID:v16 completionHandler:v30];

          _Block_release(v30);

          v12 = v27;
        }

        else
        {

          v36 = sub_190D51570();
          [v22 _handleSetAsBackgroundActionForAssetURL:v36];

          (*(v5 + 8))(v7, v4);
          v16 = v22;
          v12 = v38;
        }

        goto LABEL_13;
      }
    }

    if (qword_1EAD51CD8 != -1)
    {
      swift_once();
    }

    v33 = sub_190D53040();
    __swift_project_value_buffer(v33, qword_1EAD9E0B8);
    v16 = sub_190D53020();
    v34 = sub_190D576A0();
    if (os_log_type_enabled(v16, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_19020E000, v16, v34, "Failed to begin set-as-background action as chat is unavailable", v35, 2u);
      MEMORY[0x193AF7A40](v35, -1, -1);
    }

LABEL_13:
  }
}

void sub_190B5134C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = sub_190D51570();
    [a2 _handleSetAsBackgroundActionForAssetURL_];
  }
}

void sub_190B51414(uint64_t a1)
{
  v3 = *(sub_190D515F0() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_190B50E70(a1, v4, v5);
}

void sub_190B51488(uint64_t a1)
{
  sub_190D515F0();
  v3 = *(v1 + 16);

  sub_190B5134C(a1, v3);
}

id sub_190B5151C()
{
  type metadata accessor for HostedSensitiveContentButton();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_190B51554(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  sub_190B51AD0(*v1);
  v9 = (a1 + OBJC_IVAR____TtC7ChatKit28HostedSensitiveContentButton_didShowContentHandler);
  v10 = *(a1 + OBJC_IVAR____TtC7ChatKit28HostedSensitiveContentButton_didShowContentHandler);
  v11 = *(a1 + OBJC_IVAR____TtC7ChatKit28HostedSensitiveContentButton_didShowContentHandler + 8);
  *v9 = v3;
  v9[1] = v4;
  sub_19029063C(v3, v4);
  sub_19022123C(v10, v11);
  v12 = (a1 + OBJC_IVAR____TtC7ChatKit28HostedSensitiveContentButton_didAskForMoreHelp);
  v13 = *(a1 + OBJC_IVAR____TtC7ChatKit28HostedSensitiveContentButton_didAskForMoreHelp);
  v14 = *(a1 + OBJC_IVAR____TtC7ChatKit28HostedSensitiveContentButton_didAskForMoreHelp + 8);
  *v12 = v5;
  v12[1] = v6;
  sub_19029063C(v5, v6);
  sub_19022123C(v13, v14);
  v15 = (a1 + OBJC_IVAR____TtC7ChatKit28HostedSensitiveContentButton_didBlockHandler);
  v16 = *(a1 + OBJC_IVAR____TtC7ChatKit28HostedSensitiveContentButton_didBlockHandler);
  v17 = v15[1];
  *v15 = v7;
  v15[1] = v8;
  sub_19029063C(v7, v8);

  return sub_19022123C(v16, v17);
}

uint64_t sub_190B5163C(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a2 | a4))
  {
    return 0;
  }

  return result;
}

uint64_t sub_190B51654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190B523F0();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_190B516B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190B523F0();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_190B5171C(uint64_t a1)
{
  sub_190B523F0();
  sub_190D54C10();
  __break(1u);
}

uint64_t sub_190B51744(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A3E0, &unk_190DE75A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v26 = sub_190D57E10();
  v5 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_190D53260();
  v8 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  if (a1)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  if (a1)
  {
    v15 = 4;
  }

  else
  {
    v15 = 16;
  }

  sub_190D53250();
  v16 = [objc_opt_self() effectWithStyle_];
  sub_190D53220();
  v17 = [objc_opt_self() configurationWithScale_];
  sub_190D57F70();
  v18 = v17;
  v19 = sub_190D56ED0();
  v20 = [objc_opt_self() systemImageNamed:v19 withConfiguration:v18];

  sub_190D57F60();
  v21 = [objc_opt_self() labelColor];
  sub_190D57F00();
  (*(v5 + 104))(v7, *MEMORY[0x1E69DC508], v26);
  sub_190D57E20();
  v22 = v25;
  (*(v8 + 16))(v10, v13, v25);
  sub_190D57DF0();
  sub_190D53310();
  v23 = sub_190D53300();
  (*(*(v23 - 8) + 56))(v4, 0, 1, v23);
  sub_190D57F10();

  return (*(v8 + 8))(v13, v22);
}

uint64_t sub_190B51AD0(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940, &unk_190DDF3F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  *(v2 + OBJC_IVAR____TtC7ChatKit28HostedSensitiveContentButton_style) = a1 & 1;
  sub_190B51744(a1 & 1);
  v7 = sub_190D57FB0();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  return sub_190D57FE0();
}

id sub_190B51C84(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC7ChatKit28HostedSensitiveContentButton_didShowContentHandler];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR____TtC7ChatKit28HostedSensitiveContentButton_didAskForMoreHelp];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR____TtC7ChatKit28HostedSensitiveContentButton_didBlockHandler];
  *v5 = 0;
  v5[1] = 0;
  v1[OBJC_IVAR____TtC7ChatKit28HostedSensitiveContentButton_style] = 0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for HostedSensitiveContentButton();
  v6 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_190B51D54();
  }

  return v7;
}

void sub_190B51D54()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_190D56EC0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940, &unk_190DDF3F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26[-v11];
  sub_190B51744(*(v0 + OBJC_IVAR____TtC7ChatKit28HostedSensitiveContentButton_style));
  v13 = sub_190D57FB0();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  sub_190D57FE0();
  v14 = [v0 imageView];
  if (v14)
  {
    v15 = v14;
    [v14 _setOverrideUserInterfaceStyle_];
  }

  [v1 setShowsMenuAsPrimaryAction_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53838, &unk_190DF1300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1D90;
  *(inited + 32) = sub_190D56F10();
  *(inited + 40) = v17;
  sub_190D56E50();
  v18 = (*(v4 + 16))(v6, v9, v3);
  v19 = CKFrameworkBundle(v18);
  sub_190D51980();
  v20 = sub_190D56F30();
  v22 = v21;
  (*(v4 + 8))(v9, v3);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v20;
  *(inited + 56) = v22;
  sub_190820FDC(inited);
  swift_setDeallocating();
  sub_19099F008(inited + 32);
  v23 = objc_opt_self();
  v24 = sub_190D56D60();

  v25 = [v23 menuWithDelegate:v1 contextDictionary:v24 additionalOptions:128];

  [v1 setMenu_];
}

char *sub_190B52138(char *result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = &result[*a4];
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 1);
    v7 = result;
    v8 = sub_19029063C(v5, v6);
    v5(v8);

    return sub_19022123C(v5, v6);
  }

  return result;
}

id sub_190B521B8()
{
  v0 = [objc_opt_self() labelColor];

  return v0;
}

id sub_190B521F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostedSensitiveContentButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190B522B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_190B52314(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_190B52398()
{
  result = qword_1EAD5DEE8;
  if (!qword_1EAD5DEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DEE8);
  }

  return result;
}

unint64_t sub_190B523F0()
{
  result = qword_1EAD5DEF8;
  if (!qword_1EAD5DEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DEF8);
  }

  return result;
}

uint64_t sub_190B5244C@<X0>(void *a1@<X8>)
{
  type metadata accessor for ClarityUIConversationList(0);
  swift_allocObject();
  sub_190C3CC7C();
  sub_190D55FC0();
  *a1 = v4;
  a1[1] = v5;
  v2 = *(type metadata accessor for ClarityUIRootView(0) + 20);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5DF20, &qword_190DF93B0);
  return swift_storeEnumTagMultiPayload();
}

id sub_190B52538(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ClarityUISceneDelegate();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_190B525AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DF08, &qword_190DF5020);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  type metadata accessor for ClarityUIRootView(0);
  sub_190B526C8();
  sub_190D540B0();
  sub_190B52720();
  sub_190D53BD0();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_190B526C8()
{
  result = qword_1EAD5DF10;
  if (!qword_1EAD5DF10)
  {
    type metadata accessor for ClarityUIRootView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DF10);
  }

  return result;
}

unint64_t sub_190B52720()
{
  result = qword_1EAD5DF18;
  if (!qword_1EAD5DF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DF08, &qword_190DF5020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DF18);
  }

  return result;
}

void sub_190B52798()
{
  [v0 setHidden_];
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    CGAffineTransformMakeScale(&v5, 0.0, 0.0);
    [v0 setTransform_];
    if (qword_1EAD51E20 != -1)
    {
      swift_once();
    }

    v1 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:qword_1EAD9E338 timingParameters:0.0];
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    *&v5.tx = sub_190B529EC;
    *&v5.ty = v2;
    *&v5.a = MEMORY[0x1E69E9820];
    *&v5.b = 1107296256;
    *&v5.c = sub_190840E6C;
    *&v5.d = &block_descriptor_89;
    v3 = _Block_copy(&v5);
    v4 = v0;

    [v1 addAnimations_];
    _Block_release(v3);
    [v1 startAnimationAfterDelay_];
  }
}

id sub_190B52930()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:83.58024 damping:13.6058 initialVelocity:{0.0, 0.0}];
  qword_1EAD9E338 = result;
  return result;
}

id TapbackView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TapbackView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for TapbackView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id TapbackView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TapbackView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TapbackView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id TapbackView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_190B52E28(uint64_t a1)
{
  v3 = sub_190D51840();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0, &unk_190DE0210);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v29[-v12];
  if (a1 == 1)
  {
    v14 = MEMORY[0x193AF5640](*MEMORY[0x1E69A6D10], *MEMORY[0x1E69A6D78], v11);
    if (v14)
    {
      a1 = v14;
      sub_190D58140();
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }

    v33[0] = v31;
    v33[1] = v32;
    if (*(&v32 + 1))
    {
      v15 = swift_dynamicCast();
      (*(v4 + 56))(v13, v15 ^ 1u, 1, v3);
    }

    else
    {
      sub_19022EEA4(v33, &unk_1EAD551C0, &unk_190DD9790);
      (*(v4 + 56))(v13, 1, 1, v3);
    }

    sub_190880754(v13, v9);
    if ((*(v4 + 48))(v9, 1, v3) == 1)
    {
      sub_19022EEA4(v9, &unk_1EAD5E5D0, &unk_190DE0210);
      a1 = 1;
LABEL_24:
      sub_19022EEA4(v13, &unk_1EAD5E5D0, &unk_190DE0210);
      return a1;
    }

    (*(v4 + 32))(v6, v9, v3);
    v16 = sub_190D56ED0();
    v17 = IMBagIntValueWithDefault();

    if (v17 == -1)
    {
      if (qword_1EAD51E28 != -1)
      {
        swift_once();
      }

      v24 = sub_190D53040();
      __swift_project_value_buffer(v24, qword_1EAD5DF30);
      v25 = sub_190D53020();
      v26 = sub_190D57680();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_19020E000, v25, v26, "MiC Onboarding Tip is snoozed. There is no defined threshold, so we will not show a tip!", v27, 2u);
        MEMORY[0x193AF7A40](v27, -1, -1);
      }

      (*(v4 + 8))(v6, v3);
      a1 = 0;
      goto LABEL_24;
    }

    sub_190D517B0();
    v19 = fabs(v18) / 86400.0;
    if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v19 > -9.22337204e18)
    {
      if (v19 < 9.22337204e18)
      {
        v1 = v19;
        a1 = v17 < v19;
        if (qword_1EAD51E28 == -1)
        {
LABEL_16:
          v20 = sub_190D53040();
          __swift_project_value_buffer(v20, qword_1EAD5DF30);
          v21 = sub_190D53020();
          v22 = sub_190D57680();
          if (os_log_type_enabled(v21, v22))
          {
            v30 = v17 < v1;
            v23 = swift_slowAlloc();
            *v23 = 134218496;
            *(v23 + 4) = v1;
            *(v23 + 12) = 2048;
            *(v23 + 14) = v17;
            *(v23 + 22) = 1024;
            *(v23 + 24) = v30;
            _os_log_impl(&dword_19020E000, v21, v22, "MiC Onboarding Tip is snoozed. daysSinceSnoozeDate=%ld dayThreshold=%lld isPastSnoozePeriod=%{BOOL}d", v23, 0x1Cu);
            MEMORY[0x193AF7A40](v23, -1, -1);
          }

          (*(v4 + 8))(v6, v3);
          goto LABEL_24;
        }

LABEL_29:
        swift_once();
        goto LABEL_16;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_28;
  }

  return 0;
}

unint64_t CKCloudTipType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_190B53354()
{
  result = qword_1EAD5DF48;
  if (!qword_1EAD5DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DF48);
  }

  return result;
}

uint64_t sub_190B533B8()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD5DF30);
  __swift_project_value_buffer(v0, qword_1EAD5DF30);
  sub_190D53010();
  return sub_190D53030();
}

id sub_190B534B4()
{
  v0 = sub_190D56ED0();
  v1 = [objc_opt_self() _systemImageNamed_];

  return v1;
}

uint64_t InboxCellData.imageName.getter()
{
  v1 = *(v0 + OBJC_IVAR___CKInboxCellData_imageName);
  sub_190D52690();
  return v1;
}

uint64_t InboxCellData.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___CKInboxCellData_title);
  sub_190D52690();
  return v1;
}

id InboxCellData.__allocating_init(imageName:title:filterMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR___CKInboxCellData_imageName];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v11[OBJC_IVAR___CKInboxCellData_title];
  *v13 = a3;
  *(v13 + 1) = a4;
  *&v11[OBJC_IVAR___CKInboxCellData_filterMode] = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

id InboxCellData.init(imageName:title:filterMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = &v5[OBJC_IVAR___CKInboxCellData_imageName];
  *v6 = a1;
  *(v6 + 1) = a2;
  v7 = &v5[OBJC_IVAR___CKInboxCellData_title];
  *v7 = a3;
  *(v7 + 1) = a4;
  *&v5[OBJC_IVAR___CKInboxCellData_filterMode] = a5;
  v9.receiver = v5;
  v9.super_class = type metadata accessor for InboxCellData();
  return objc_msgSendSuper2(&v9, sel_init);
}

id InboxCellData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InboxCellData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InboxCellData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_190B53894(uint64_t a1)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();
    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    v6 = sub_190D56F10();
    v8 = v7;

    v9 = type metadata accessor for InboxCellData();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR___CKInboxCellData_imageName];
    *v11 = 0xD000000000000013;
    *(v11 + 1) = 0x8000000190E6E200;
    v12 = &v10[OBJC_IVAR___CKInboxCellData_title];
    *v12 = v6;
    v12[1] = v8;
    *&v10[OBJC_IVAR___CKInboxCellData_filterMode] = 1;
    v13.receiver = v10;
    v13.super_class = v9;
    result = objc_msgSendSuper2(&v13, sel_init);
    qword_1EAD460E8 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190B53A20(uint64_t a1)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();
    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    v6 = sub_190D56F10();
    v8 = v7;

    v9 = type metadata accessor for InboxCellData();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR___CKInboxCellData_imageName];
    *v11 = 0xD000000000000012;
    *(v11 + 1) = 0x8000000190E75CA0;
    v12 = &v10[OBJC_IVAR___CKInboxCellData_title];
    *v12 = v6;
    v12[1] = v8;
    *&v10[OBJC_IVAR___CKInboxCellData_filterMode] = 2;
    v13.receiver = v10;
    v13.super_class = v9;
    result = objc_msgSendSuper2(&v13, sel_init);
    qword_1EAD460D0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190B53BB0(uint64_t a1)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();
    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    v6 = sub_190D56F10();
    v8 = v7;

    v9 = type metadata accessor for InboxCellData();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR___CKInboxCellData_imageName];
    *v11 = 0xD000000000000025;
    *(v11 + 1) = 0x8000000190E6E1D0;
    v12 = &v10[OBJC_IVAR___CKInboxCellData_title];
    *v12 = v6;
    v12[1] = v8;
    *&v10[OBJC_IVAR___CKInboxCellData_filterMode] = 3;
    v13.receiver = v10;
    v13.super_class = v9;
    result = objc_msgSendSuper2(&v13, sel_init);
    qword_1EAD460B8 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190B53D40(uint64_t a1)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();
    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    v6 = sub_190D56F10();
    v8 = v7;

    v9 = type metadata accessor for InboxCellData();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR___CKInboxCellData_imageName];
    strcpy(&v10[OBJC_IVAR___CKInboxCellData_imageName], "message.badge");
    *(v11 + 7) = -4864;
    v12 = &v10[OBJC_IVAR___CKInboxCellData_title];
    *v12 = v6;
    v12[1] = v8;
    *&v10[OBJC_IVAR___CKInboxCellData_filterMode] = 8;
    v13.receiver = v10;
    v13.super_class = v9;
    result = objc_msgSendSuper2(&v13, sel_init);
    qword_1EAD460A0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190B53ED0(uint64_t a1)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();
    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    v6 = sub_190D56F10();
    v8 = v7;

    v9 = type metadata accessor for InboxCellData();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR___CKInboxCellData_imageName];
    *v11 = 0x69622E6B72616D78;
    *(v11 + 1) = 0xE90000000000006ELL;
    v12 = &v10[OBJC_IVAR___CKInboxCellData_title];
    *v12 = v6;
    v12[1] = v8;
    *&v10[OBJC_IVAR___CKInboxCellData_filterMode] = 9;
    v13.receiver = v10;
    v13.super_class = v9;
    result = objc_msgSendSuper2(&v13, sel_init);
    qword_1EAD46078 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190B54048(uint64_t a1)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();
    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    v6 = sub_190D56F10();
    v8 = v7;

    v9 = type metadata accessor for InboxCellData();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR___CKInboxCellData_imageName];
    *v11 = 0x6873617274;
    *(v11 + 1) = 0xE500000000000000;
    v12 = &v10[OBJC_IVAR___CKInboxCellData_title];
    *v12 = v6;
    v12[1] = v8;
    *&v10[OBJC_IVAR___CKInboxCellData_filterMode] = 7;
    v13.receiver = v10;
    v13.super_class = v9;
    result = objc_msgSendSuper2(&v13, sel_init);
    qword_1EAD46090 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190B541C0(uint64_t a1)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();
    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    v6 = sub_190D56F10();
    v8 = v7;

    v9 = type metadata accessor for InboxCellData();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR___CKInboxCellData_imageName];
    *v11 = 6775156;
    *(v11 + 1) = 0xE300000000000000;
    v12 = &v10[OBJC_IVAR___CKInboxCellData_title];
    *v12 = v6;
    v12[1] = v8;
    *&v10[OBJC_IVAR___CKInboxCellData_filterMode] = 4;
    v13.receiver = v10;
    v13.super_class = v9;
    result = objc_msgSendSuper2(&v13, sel_init);
    qword_1EAD5DF50 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190B54334(uint64_t a1)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();
    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    v6 = sub_190D56F10();
    v8 = v7;

    v9 = type metadata accessor for InboxCellData();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR___CKInboxCellData_imageName];
    *v11 = 0x6E6F68706167656DLL;
    *(v11 + 1) = 0xE900000000000065;
    v12 = &v10[OBJC_IVAR___CKInboxCellData_title];
    *v12 = v6;
    v12[1] = v8;
    *&v10[OBJC_IVAR___CKInboxCellData_filterMode] = 5;
    v13.receiver = v10;
    v13.super_class = v9;
    result = objc_msgSendSuper2(&v13, sel_init);
    qword_1EAD5DF58 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190B544B4(uint64_t a1)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();
    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    v6 = sub_190D56F10();
    v8 = v7;

    v9 = type metadata accessor for InboxCellData();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR___CKInboxCellData_imageName];
    *v11 = 0x69622E6B72616D78;
    *(v11 + 1) = 0xE90000000000006ELL;
    v12 = &v10[OBJC_IVAR___CKInboxCellData_title];
    *v12 = v6;
    v12[1] = v8;
    *&v10[OBJC_IVAR___CKInboxCellData_filterMode] = 6;
    v13.receiver = v10;
    v13.super_class = v9;
    result = objc_msgSendSuper2(&v13, sel_init);
    qword_1EAD5DF60 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190B54634(uint64_t a1)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();
    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    v6 = sub_190D56F10();
    v8 = v7;

    v9 = type metadata accessor for InboxCellData();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR___CKInboxCellData_imageName];
    *v11 = 0x69622E6B72616D78;
    *(v11 + 1) = 0xE90000000000006ELL;
    v12 = &v10[OBJC_IVAR___CKInboxCellData_title];
    *v12 = v6;
    v12[1] = v8;
    *&v10[OBJC_IVAR___CKInboxCellData_filterMode] = 6;
    v13.receiver = v10;
    v13.super_class = v9;
    result = objc_msgSendSuper2(&v13, sel_init);
    qword_1EAD5DF68 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id TapbackStickerView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double sub_190B549A8(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_190B54A08(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___CKTapbackStickerView_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190863E2C;
}

void sub_190B54AA0()
{
  v1 = [objc_opt_self() sharedTimer];
  if (v1)
  {
    v9 = v1;
    v2 = [v0 window];
    v3 = v2;
    if (v2)
    {
    }

    v4 = *&v0[OBJC_IVAR___CKTapbackStickerView_animatedImage];
    if (v4)
    {
      v5 = [v4 frames];
      sub_1902188FC(0, &qword_1EAD44EB0, 0x1E69DCAB8);
      v6 = sub_190D57180();

      if (v6 >> 62)
      {
        v7 = sub_190D581C0();
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = &selRef_removeAnimationTimerObserver_;
      if (v3 && v7 >= 2)
      {
        v0[OBJC_IVAR___CKTapbackStickerView_hasCommittedFirstFrame] = 0;
        v8 = &selRef_addAnimationTimerObserver_;
      }
    }

    else
    {
      v8 = &selRef_removeAnimationTimerObserver_;
    }

    [v9 *v8];
  }
}

void sub_190B54C08()
{
  v1 = *&v0[OBJC_IVAR___CKTapbackStickerView_animatedImage];
  if (!v1)
  {
    return;
  }

  v2 = objc_opt_self();
  v16 = v1;
  if (![v2 accessibilityAnimatedImagesDisabled])
  {
    v8 = [v2 sharedTimer];
    if (v8)
    {
      v9 = v8;
      [v8 animationTime];
      v11 = v10;

      v0[OBJC_IVAR___CKTapbackStickerView_hasCommittedFirstFrame] = 1;
      v12 = objc_opt_self();
      [v12 begin];
      [v12 setDisableActions_];
      [v0 animationTimerFired_];
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = v11;
      aBlock[4] = sub_190B58000;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_190840E6C;
      aBlock[3] = &block_descriptor_41_1;
      v15 = _Block_copy(aBlock);

      [v12 setCompletionBlock_];
      _Block_release(v15);
      [v12 commit];

      return;
    }

LABEL_19:
    __break(1u);
    return;
  }

  v3 = *&v0[OBJC_IVAR___CKTapbackStickerView_contentView];
  v4 = [v16 frames];
  sub_1902188FC(0, &qword_1EAD44EB0, 0x1E69DCAB8);
  v5 = sub_190D57180();

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  if (!sub_190D581C0())
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x193AF3B90](0, v5);
    goto LABEL_8;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_19;
  }

  v6 = *(v5 + 32);
LABEL_8:
  v7 = v6;
LABEL_14:

  [v3 setImage_];
}

uint64_t sub_190B54EE8()
{
  v1 = v0 + OBJC_IVAR___CKTapbackStickerView_initialFrameIndex;
  swift_beginAccess();
  return *v1;
}

void sub_190B54F34(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___CKTapbackStickerView_initialFrameIndex;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_190B54FF4()
{
  v1 = OBJC_IVAR___CKTapbackStickerView_isAnimationPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_190B55038(char a1)
{
  v3 = OBJC_IVAR___CKTapbackStickerView_isAnimationPaused;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_190B550E8()
{
  v1 = [*(v0 + OBJC_IVAR___CKTapbackStickerView_contentView) image];

  return v1;
}

void sub_190B55128()
{
  sub_19024C978(v0 + OBJC_IVAR___CKTapbackStickerView_delegate);

  v1 = *(v0 + OBJC_IVAR___CKTapbackStickerView_animatedImage);
}

id TapbackStickerView.__deallocating_deinit()
{
  v1 = [objc_opt_self() sharedTimer];
  if (v1)
  {
    v2 = v1;
    [v1 removeAnimationTimerObserver_];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for TapbackStickerView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *TapbackStickerView.init()()
{
  *&v0[OBJC_IVAR___CKTapbackStickerView_attributionScaleFactor] = 0x3FE6A09E667F3BCDLL;
  v1 = &v0[OBJC_IVAR___CKTapbackStickerView_platterEdgeInsets];
  __asm { FMOV            V0.2D, #4.0 }

  *v1 = _Q0;
  v1[1] = _Q0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___CKTapbackStickerView_fallbackView] = 0;
  v0[OBJC_IVAR___CKTapbackStickerView_expectsAnimatedImage] = 0;
  *&v0[OBJC_IVAR___CKTapbackStickerView_animatedImage] = 0;
  v7 = &v0[OBJC_IVAR___CKTapbackStickerView_initialFrameIndex];
  *v7 = 0;
  v7[8] = 1;
  v0[OBJC_IVAR___CKTapbackStickerView_hasCommittedFirstFrame] = 0;
  v0[OBJC_IVAR___CKTapbackStickerView_isAnimationPaused] = 0;
  v0[OBJC_IVAR___CKTapbackStickerView_isSelected] = 0;
  v0[OBJC_IVAR___CKTapbackStickerView_isPlaceholderImage] = 0;
  v8 = &v0[OBJC_IVAR___CKTapbackStickerView_frameSize];
  *v8 = 0;
  v8[1] = 0;
  *&v0[OBJC_IVAR___CKTapbackStickerView_displayScale] = 0;
  v9 = [objc_allocWithZone(CKBalloonImageView) initWithFrame_];
  *&v0[OBJC_IVAR___CKTapbackStickerView_contentView] = v9;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for TapbackStickerView();
  v10 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR___CKTapbackStickerView_contentView;
  v12 = *&v10[OBJC_IVAR___CKTapbackStickerView_contentView];
  v13 = v10;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53D50, &unk_190DD5F90);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_190DD1D90;
  v15 = sub_190D53180();
  v16 = MEMORY[0x1E69DC050];
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  MEMORY[0x193AF3550](v14, sel_displayScaleChanged);

  swift_unknownObjectRelease();

  return v13;
}

void sub_190B5553C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = [objc_opt_self() sharedInstance];
  if (!v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  v18 = [objc_opt_self() sharedInstance];
  if (!v18)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v8 = sub_190D56ED0();
  v9 = [v18 transferForGUID_];

  v10 = sub_190D56ED0();
  v11 = [v7 mediaObjectWithTransferGUID:v10 imMessage:0];

  if (v9 && v11)
  {
    sub_190B56BE4(v9, v11);
  }

  else
  {
    if (qword_1EAD52000 != -1)
    {
      swift_once();
    }

    v12 = sub_190D53040();
    __swift_project_value_buffer(v12, qword_1EAD9E5C0);
    sub_190D52690();
    v13 = sub_190D53020();
    v14 = sub_190D576A0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_19021D9F8(a1, a2, &v19);
      _os_log_impl(&dword_19020E000, v13, v14, "Unable to find file transfer %s referenced by tapback", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x193AF7A40](v16, -1, -1);
      MEMORY[0x193AF7A40](v15, -1, -1);
    }

    v17 = *(v3 + OBJC_IVAR___CKTapbackStickerView_animatedImage);
    *(v3 + OBJC_IVAR___CKTapbackStickerView_animatedImage) = 0;

    sub_190B54AA0();
    sub_190B54C08();
    *(v3 + OBJC_IVAR___CKTapbackStickerView_isPlaceholderImage) = 1;
    sub_190B55D58();

    *(v3 + OBJC_IVAR___CKTapbackStickerView_expectsAnimatedImage) = 0;
  }
}

uint64_t sub_190B5584C()
{
  v1 = OBJC_IVAR___CKTapbackStickerView_isSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_190B55908(char a1)
{
  v3 = OBJC_IVAR___CKTapbackStickerView_isSelected;
  swift_beginAccess();
  *(v1 + v3) = a1;
  if (*(v1 + OBJC_IVAR___CKTapbackStickerView_isPlaceholderImage) == 1)
  {
    sub_190B559DC();
  }
}

void sub_190B55970(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKTapbackStickerView_isSelected;
  swift_beginAccess();
  *(v3 + v4) = v2;
  if (*(v3 + OBJC_IVAR___CKTapbackStickerView_isPlaceholderImage) == 1)
  {
    sub_190B559DC();
  }
}

void sub_190B559DC()
{
  v1 = OBJC_IVAR___CKTapbackStickerView_fallbackView;
  v2 = *&v0[OBJC_IVAR___CKTapbackStickerView_fallbackView];
  if (!v2)
  {
    [v0 bounds];
    v7 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
    v8 = [objc_opt_self() systemFontOfSize_];
    v9 = [objc_opt_self() configurationWithFont:v8 scale:3];
    v10 = sub_190D56ED0();
    v11 = [objc_opt_self() _systemImageNamed_withConfiguration_];

    [v7 setImage_];
    v12 = v7;
    v13 = sub_190D56ED0();
    [v12 setAccessibilityLabel_];

    [v0 addSubview_];
    v14 = *&v0[v1];
    *&v0[v1] = v12;

    v2 = *&v0[v1];
    if (!v2)
    {
      return;
    }
  }

  v15 = v2;
  [v0 bounds];
  [v15 setFrame_];
  [v15 setContentMode_];
  v16 = [objc_opt_self() sharedBehaviors];
  if (!v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v16 theme];
  if (!v18)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = OBJC_IVAR___CKTapbackStickerView_isSelected;
  swift_beginAccess();
  if (v0[v20])
  {
    v21 = &selRef_messageAcknowledgmentWhiteColor;
  }

  else
  {
    v21 = &selRef_messageAcknowledgmentGrayColor;
  }

  v22 = [v19 *v21];
  [v15 setTintColor_];
}

void (*sub_190B55CAC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_190B55D10;
}

void sub_190B55D10(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0 && *(*(a1 + 24) + OBJC_IVAR___CKTapbackStickerView_isPlaceholderImage) == 1)
  {
    sub_190B559DC();
  }
}

void sub_190B55D58()
{
  if (*(v0 + OBJC_IVAR___CKTapbackStickerView_isPlaceholderImage) == 1)
  {
    sub_190B559DC();
    if (qword_1EAD52020 != -1)
    {
      swift_once();
    }

    v1 = sub_190D53040();
    __swift_project_value_buffer(v1, qword_1EAD9E620);
    oslog = sub_190D53020();
    v2 = sub_190D576A0();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_19020E000, oslog, v2, "Drawing placeholder sticker image due to failure to generate or display preview", v3, 2u);
      MEMORY[0x193AF7A40](v3, -1, -1);
    }

    v4 = oslog;
  }

  else
  {
    v5 = OBJC_IVAR___CKTapbackStickerView_fallbackView;
    v6 = *(v0 + OBJC_IVAR___CKTapbackStickerView_fallbackView);
    if (!v6)
    {
      return;
    }

    [v6 removeFromSuperview];
    v4 = *(v0 + v5);
    *(v0 + v5) = 0;
  }
}

void sub_190B55EF8(void *a1, uint64_t a2, const char **a3, void (*a4)(id))
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for TapbackStickerView();
  v6 = *a3;
  v7 = v9.receiver;
  v8 = objc_msgSendSuper2(&v9, v6);
  a4(v8);
}

void sub_190B55FA8()
{
  if (*&v0[OBJC_IVAR___CKTapbackStickerView_animatedImage] || v0[OBJC_IVAR___CKTapbackStickerView_expectsAnimatedImage] == 1)
  {
    v1 = *&v0[OBJC_IVAR___CKTapbackStickerView_contentView];
    [v1 setContentMode_];
    v2 = [v1 constraints];
    if (!v2)
    {
      sub_1902188FC(0, &qword_1EAD45040, 0x1E696ACD8);
      sub_190D57180();
      v2 = sub_190D57160();
    }

    [v1 removeConstraints_];

    v3 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_190DD86A0;
    v5 = [v1 leadingAnchor];
    v6 = [v0 leadingAnchor];
    v7 = [v5 constraintEqualToAnchor_];

    *(v4 + 32) = v7;
    v8 = [v0 trailingAnchor];
    v9 = [v1 trailingAnchor];
    v10 = [v8 constraintEqualToAnchor_];

    *(v4 + 40) = v10;
    v11 = [v1 topAnchor];
    v12 = [v0 topAnchor];
    v13 = [v11 constraintEqualToAnchor_];

    *(v4 + 48) = v13;
    v14 = [v0 bottomAnchor];
    v15 = [v1 bottomAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    *(v4 + 56) = v16;
    sub_1902188FC(0, &qword_1EAD45040, 0x1E696ACD8);
    v54 = sub_190D57160();

    [v3 activateConstraints_];
    goto LABEL_6;
  }

  v17 = *&v0[OBJC_IVAR___CKTapbackStickerView_contentView];
  v18 = [v17 image];
  if (!v18)
  {
    goto LABEL_20;
  }

  if ((v0[OBJC_IVAR___CKTapbackStickerView_isPlaceholderImage] & 1) != 0 || (v54 = v18, [v0 frame], v18 = v54, v20 == 0.0) && v19 == 0.0 || ((objc_msgSend(v0, sel_frame), v18 = v54, v22 = &v0[OBJC_IVAR___CKTapbackStickerView_frameSize], v23 == *&v0[OBJC_IVAR___CKTapbackStickerView_frameSize]) ? (v24 = v21 == *&v0[OBJC_IVAR___CKTapbackStickerView_frameSize + 8]) : (v24 = 0), v24 && (v25 = *&v0[OBJC_IVAR___CKTapbackStickerView_displayScale], v26 = objc_msgSend(v0, sel_traitCollection), objc_msgSend(v26, sel_displayScale), v28 = v27, v26, v18 = v54, v25 == v28)))
  {

LABEL_20:
    if (v0[OBJC_IVAR___CKTapbackStickerView_isPlaceholderImage] == 1)
    {

      sub_190B559DC();
    }

    return;
  }

  v29 = [v18 CGImage];
  if (!v29)
  {
LABEL_6:

    return;
  }

  v30 = v29;
  [v0 frame];
  *v22 = v31;
  *(v22 + 1) = v32;
  v33 = [v0 traitCollection];
  [v33 displayScale];
  v35 = v34;

  *&v0[OBJC_IVAR___CKTapbackStickerView_displayScale] = v35;
  [v0 frame];
  Height = CGRectGetHeight(v61);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong tapbackContentContainerRect];
    x = v62.origin.x;
    y = v62.origin.y;
    width = v62.size.width;
    v41 = v62.size.height;
    v42 = CGRectGetWidth(v62);
    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = v41;
    v43 = CGRectGetHeight(v63);
    swift_unknownObjectRelease();
    if (v43 >= v42)
    {
      v43 = v42;
    }
  }

  else
  {
    v43 = Height;
  }

  v44 = [objc_opt_self() sharedBehaviors];
  if (v44)
  {
    v45 = v44;
    [v44 emojiTapbackScaleFactor];

    sub_190D51CF0();
    v64.origin.x = 0.0;
    v64.origin.y = 0.0;
    v64.size.width = v43;
    v64.size.height = v43;
    v46 = (CGRectGetHeight(v64) - Height) * 0.5;
    v47 = v58 - v46;
    v48 = v59 - v46;
    v49 = CGImageGetWidth(v30);
    v65.size.height = CGImageGetHeight(v30);
    *&v55.c = v57;
    *&v55.a = v56;
    v55.tx = v47;
    v55.ty = v48;
    v65.origin.x = 0.0;
    v65.origin.y = 0.0;
    v65.size.width = v49;
    v66 = CGRectApplyAffineTransform(v65, &v55);
    v50 = (v66.size.height - v43) * 0.5;
    v51 = v66.origin.x - v50;
    v52 = v66.origin.y - v50;
    if (v43 < v66.size.height)
    {
      v66.origin.y = v52;
      v66.origin.x = v51;
    }

    [v17 setFrame_];
    [v17 setContentMode_];
    v53 = [v17 constraints];
    if (!v53)
    {
      sub_1902188FC(0, &qword_1EAD45040, 0x1E696ACD8);
      sub_190D57180();
      v53 = sub_190D57160();
    }

    [v17 removeConstraints_];
  }

  else
  {
    __break(1u);
  }
}

id TapbackStickerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

Swift::Void __swiftcall TapbackStickerView.animationTimerFired(_:)(Swift::Double a1)
{
  v3 = OBJC_IVAR___CKTapbackStickerView_isAnimationPaused;
  swift_beginAccess();
  if ((v1[v3] & 1) == 0)
  {
    if (v1[OBJC_IVAR___CKTapbackStickerView_hasCommittedFirstFrame] == 1)
    {
      v4 = *&v1[OBJC_IVAR___CKTapbackStickerView_animatedImage];
      if (v4)
      {
        v5 = v4;
        v6 = [v5 frames];
        sub_1902188FC(0, &qword_1EAD44EB0, 0x1E69DCAB8);
        v7 = sub_190D57180();

        v8 = [v5 frameIndexForAnimationTime_];
        v9 = &v1[OBJC_IVAR___CKTapbackStickerView_initialFrameIndex];
        swift_beginAccess();
        if (v9[8])
        {
          goto LABEL_9;
        }

        v9 = *v9;
        if (v7 >> 62)
        {
          goto LABEL_19;
        }

        v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10 < 2)
        {
LABEL_9:
          while ((v7 & 0xC000000000000001) == 0)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v8 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v11 = *(v7 + 8 * v8 + 32);
              goto LABEL_13;
            }

            __break(1u);
LABEL_19:
            v10 = sub_190D581C0();
            if (v10 >= 2)
            {
              goto LABEL_7;
            }
          }

          v11 = MEMORY[0x193AF3B90](v8, v7);
LABEL_13:
          v12 = v11;

          v13 = *&v1[OBJC_IVAR___CKTapbackStickerView_contentView];
          [v13 setImage_];
          [v13 setCurrentFrameIndex_];
        }

        else
        {
LABEL_7:
          if (!__OFADD__(v8, v9))
          {
            v8 = &v9[v8] % v10;
            goto LABEL_9;
          }

          __break(1u);
        }
      }
    }

    else
    {
      v1[OBJC_IVAR___CKTapbackStickerView_hasCommittedFirstFrame] = 1;
      v14 = objc_opt_self();
      [v14 begin];
      [v14 setDisableActions_];
      [v1 animationTimerFired_];
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = a1;
      aBlock[4] = sub_190B56B5C;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_190840E6C;
      aBlock[3] = &block_descriptor_90;
      v17 = _Block_copy(aBlock);

      [v14 setCompletionBlock_];
      _Block_release(v17);
      [v14 commit];
    }
  }
}

void sub_190B56AD4(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___CKTapbackStickerView_animatedImage);

    [v5 setAnimationStartTimeOffset_];
  }
}

void sub_190B56BE4(void *a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___CKTapbackStickerView_animatedImage;
  v7 = *&v2[OBJC_IVAR___CKTapbackStickerView_animatedImage];
  *&v2[OBJC_IVAR___CKTapbackStickerView_animatedImage] = 0;

  sub_190B54AA0();
  sub_190B54C08();
  v8 = [a2 needsAnimation];
  v9 = OBJC_IVAR___CKTapbackStickerView_expectsAnimatedImage;
  v2[OBJC_IVAR___CKTapbackStickerView_expectsAnimatedImage] = v8;
  v10 = [a2 transferGUID];
  if (v10)
  {
    v11 = v10;
    v12 = sub_190D56F10();
    v14 = v13;
  }

  else
  {
    v14 = 0x8000000190E75E30;
    v12 = 0xD000000000000017;
  }

  v15 = [objc_opt_self() sharedManager];
  if (!v15)
  {
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = [v15 isFeatureEnabled];

  if (v17 && [a1 commSafetySensitive] == 1)
  {
    if (qword_1EAD52020 != -1)
    {
      swift_once();
    }

    v18 = sub_190D53040();
    __swift_project_value_buffer(v18, qword_1EAD9E620);
    sub_190D52690();
    v19 = sub_190D53020();
    v20 = sub_190D576C0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v87[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_19021D9F8(v12, v14, v87);
      _os_log_impl(&dword_19020E000, v19, v20, "File transfer is sensitive and not viewable, displaying placeholder. %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x193AF7A40](v22, -1, -1);
      MEMORY[0x193AF7A40](v21, -1, -1);
    }

    v23 = 1;
    goto LABEL_68;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    v26 = a2;
    v27 = [v3 traitCollection];
    [v27 displayScale];
    v29 = v28;

    v30 = [v25 strikeImageAtPreviewSize:100.0 scaleFactor:v29];
    if (v30)
    {
      v31 = v30;
      if (qword_1EAD52020 != -1)
      {
        swift_once();
      }

      v32 = sub_190D53040();
      __swift_project_value_buffer(v32, qword_1EAD9E620);
      sub_190D52690();
      v33 = sub_190D53020();
      v34 = sub_190D576C0();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *&v87[0] = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_19021D9F8(v12, v14, v87);
        _os_log_impl(&dword_19020E000, v33, v34, "Successfully applied stike image to %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x193AF7A40](v36, -1, -1);
        MEMORY[0x193AF7A40](v35, -1, -1);
      }

      [*&v3[OBJC_IVAR___CKTapbackStickerView_contentView] setImage_];
    }

    else
    {
      if ([objc_opt_self() genmojiFileTransferShouldDisplayAsPermanentlyFailed_])
      {
        if (qword_1EAD52020 != -1)
        {
          swift_once();
        }

        v37 = sub_190D53040();
        __swift_project_value_buffer(v37, qword_1EAD9E620);
        sub_190D52690();
        v38 = sub_190D53020();
        v39 = sub_190D576A0();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *&v87[0] = v41;
          *v40 = 136315138;
          *(v40 + 4) = sub_19021D9F8(v12, v14, v87);
          _os_log_impl(&dword_19020E000, v38, v39, "Unable to generate preview for genmoji, displaying tapback as placeholder image. %s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          MEMORY[0x193AF7A40](v41, -1, -1);
          MEMORY[0x193AF7A40](v40, -1, -1);
        }

        v23 = 1;
        goto LABEL_68;
      }

      if (qword_1EAD52020 != -1)
      {
        swift_once();
      }

      v50 = sub_190D53040();
      __swift_project_value_buffer(v50, qword_1EAD9E620);
      sub_190D52690();
      v51 = sub_190D53020();
      v52 = sub_190D57690();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *&v87[0] = v54;
        *v53 = 136315138;
        *(v53 + 4) = sub_19021D9F8(v12, v14, v87);
        _os_log_impl(&dword_19020E000, v51, v52, "Genmoji transfer is pending (downloading, or generating preview), temporarily displaying as an empty tapback. %s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v54);
        MEMORY[0x193AF7A40](v54, -1, -1);
        MEMORY[0x193AF7A40](v53, -1, -1);
      }
    }

    goto LABEL_67;
  }

  if ([a2 previewForTapback])
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v85 = 0u;
    v86 = 0u;
  }

  v87[0] = v85;
  v87[1] = v86;
  if (v3[v9] != 1)
  {
LABEL_42:
    sub_19023C414(v87, &v85);
    if (*(&v86 + 1))
    {
      sub_1902188FC(0, &qword_1EAD44EB0, 0x1E69DCAB8);
      if (swift_dynamicCast())
      {
        v55 = v84;
        if (qword_1EAD52020 != -1)
        {
          swift_once();
        }

        v56 = sub_190D53040();
        __swift_project_value_buffer(v56, qword_1EAD9E620);
        sub_190D52690();
        v57 = sub_190D53020();
        v58 = sub_190D576C0();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          *&v85 = v60;
          *v59 = 136315138;
          *(v59 + 4) = sub_19021D9F8(v12, v14, &v85);
          _os_log_impl(&dword_19020E000, v57, v58, "Successfully applied preview image to %s", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v60);
          MEMORY[0x193AF7A40](v60, -1, -1);
          MEMORY[0x193AF7A40](v59, -1, -1);
        }

        [*&v3[OBJC_IVAR___CKTapbackStickerView_contentView] setImage_];
        goto LABEL_66;
      }
    }

    else
    {
      sub_19021E7D8(&v85);
    }

    if ([a2 transcoderPreviewGenerationFailed])
    {
      if (qword_1EAD52020 != -1)
      {
        swift_once();
      }

      v61 = sub_190D53040();
      __swift_project_value_buffer(v61, qword_1EAD9E620);
      sub_19023C414(v87, &v85);
      sub_190D52690();
      v62 = sub_190D53020();
      v63 = sub_190D576A0();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v84 = v65;
        *v64 = 136315394;
        if (*(&v86 + 1))
        {
          v66 = 7630702;
        }

        else
        {
          v66 = 0;
        }

        if (*(&v86 + 1))
        {
          v67 = 0xE300000000000000;
        }

        else
        {
          v67 = 0xE000000000000000;
        }

        sub_19021E7D8(&v85);
        v68 = sub_19021D9F8(v66, v67, &v84);

        *(v64 + 4) = v68;
        *(v64 + 12) = 2080;
        *(v64 + 14) = sub_19021D9F8(v12, v14, &v84);
        _os_log_impl(&dword_19020E000, v62, v63, "Expected sticker image but was unable to display preview as animated image or static image. Preview is %s nil. %s", v64, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193AF7A40](v65, -1, -1);
        MEMORY[0x193AF7A40](v64, -1, -1);

        v69 = v87;
      }

      else
      {

        sub_19021E7D8(v87);
        v69 = &v85;
      }

      sub_19021E7D8(v69);
      v23 = 1;
      goto LABEL_68;
    }

    if (qword_1EAD52020 != -1)
    {
      swift_once();
    }

    v70 = sub_190D53040();
    __swift_project_value_buffer(v70, qword_1EAD9E620);
    sub_190D52690();
    v71 = sub_190D53020();
    v72 = sub_190D57690();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v85 = v74;
      *v73 = 136315138;
      *(v73 + 4) = sub_19021D9F8(v12, v14, &v85);
      _os_log_impl(&dword_19020E000, v71, v72, "Sticker transfer is pending (downloading, or generating preview), temporarily displaying as an empty tapback. %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x193AF7A40](v74, -1, -1);
      MEMORY[0x193AF7A40](v73, -1, -1);
    }

    goto LABEL_66;
  }

  sub_19023C414(v87, &v85);
  if (!*(&v86 + 1))
  {
    sub_19021E7D8(&v85);
    goto LABEL_42;
  }

  sub_1902188FC(0, &unk_1EAD5E000, off_1E72E4750);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_42;
  }

  v42 = v84;
  if (qword_1EAD52020 != -1)
  {
    swift_once();
  }

  v43 = sub_190D53040();
  __swift_project_value_buffer(v43, qword_1EAD9E620);
  sub_190D52690();
  v44 = sub_190D53020();
  v45 = sub_190D576C0();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&v85 = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_19021D9F8(v12, v14, &v85);
    _os_log_impl(&dword_19020E000, v44, v45, "Successfully applied preview animated image to %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x193AF7A40](v47, -1, -1);
    MEMORY[0x193AF7A40](v46, -1, -1);
  }

  v48 = *&v3[v6];
  *&v3[v6] = v42;
  v49 = v42;

  sub_190B54AA0();
  sub_190B54C08();

LABEL_66:
  sub_19021E7D8(v87);
LABEL_67:
  v23 = 0;
LABEL_68:
  if (qword_1EAD52020 != -1)
  {
    swift_once();
  }

  v75 = sub_190D53040();
  __swift_project_value_buffer(v75, qword_1EAD9E620);
  sub_190D52690();
  v76 = sub_190D53020();
  v77 = sub_190D576C0();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *&v87[0] = v79;
    *v78 = 136315394;
    v80 = sub_19021D9F8(v12, v14, v87);

    *(v78 + 4) = v80;
    *(v78 + 12) = 2080;
    if (v23)
    {
      v81 = 0x6C6F686563616C70;
    }

    else
    {
      v81 = 0x77656976657270;
    }

    if (v23)
    {
      v82 = 0xEB00000000726564;
    }

    else
    {
      v82 = 0xE700000000000000;
    }

    v83 = sub_19021D9F8(v81, v82, v87);

    *(v78 + 14) = v83;
    _os_log_impl(&dword_19020E000, v76, v77, "Configured %s as %s", v78, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v79, -1, -1);
    MEMORY[0x193AF7A40](v78, -1, -1);
  }

  else
  {
  }

  v3[OBJC_IVAR___CKTapbackStickerView_isPlaceholderImage] = v23;
  sub_190B55D58();
}

void sub_190B579F0()
{
  *(v0 + OBJC_IVAR___CKTapbackStickerView_attributionScaleFactor) = 0x3FE6A09E667F3BCDLL;
  v1 = (v0 + OBJC_IVAR___CKTapbackStickerView_platterEdgeInsets);
  __asm { FMOV            V0.2D, #4.0 }

  *v1 = _Q0;
  v1[1] = _Q0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___CKTapbackStickerView_fallbackView) = 0;
  *(v0 + OBJC_IVAR___CKTapbackStickerView_expectsAnimatedImage) = 0;
  *(v0 + OBJC_IVAR___CKTapbackStickerView_animatedImage) = 0;
  v7 = v0 + OBJC_IVAR___CKTapbackStickerView_initialFrameIndex;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR___CKTapbackStickerView_hasCommittedFirstFrame) = 0;
  *(v0 + OBJC_IVAR___CKTapbackStickerView_isAnimationPaused) = 0;
  *(v0 + OBJC_IVAR___CKTapbackStickerView_isSelected) = 0;
  *(v0 + OBJC_IVAR___CKTapbackStickerView_isPlaceholderImage) = 0;
  v8 = (v0 + OBJC_IVAR___CKTapbackStickerView_frameSize);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR___CKTapbackStickerView_displayScale) = 0;
  sub_190D58510();
  __break(1u);
}

void _s7ChatKit18TapbackStickerViewC9configure3for10isSelectedySo9IMTapbackC_SbtF_0(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v4 transferGUID];
    v7 = sub_190D56F10();
    v9 = v8;

    sub_190B5553C(v7, v9);
  }

  else
  {
    v10 = v1;
    if (qword_1EAD52020 != -1)
    {
      swift_once();
    }

    v11 = sub_190D53040();
    __swift_project_value_buffer(v11, qword_1EAD9E620);
    v12 = sub_190D53020();
    v13 = sub_190D576A0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_19020E000, v12, v13, "Unexpected type: expected sticker tapback. Configuring view as placeholder.", v14, 2u);
      MEMORY[0x193AF7A40](v14, -1, -1);
    }

    v15 = *(v10 + OBJC_IVAR___CKTapbackStickerView_animatedImage);
    *(v10 + OBJC_IVAR___CKTapbackStickerView_animatedImage) = 0;

    sub_190B54AA0();
    sub_190B54C08();
    *(v10 + OBJC_IVAR___CKTapbackStickerView_isPlaceholderImage) = 1;
    sub_190B55D58();
    *(v10 + OBJC_IVAR___CKTapbackStickerView_expectsAnimatedImage) = 0;
  }
}

id sub_190B58008(void *a1)
{
  *&v1[OBJC_IVAR____TtC7ChatKit20CKSuggestedReplyView_suggestedReply] = a1;
  v81.receiver = v1;
  v81.super_class = type metadata accessor for CKSuggestedReplyView();
  v80 = a1;
  v3 = objc_msgSendSuper2(&v81, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = objc_opt_self();
  v5 = v3;
  result = [v4 sharedBehaviors];
  if (!result)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  v8 = [result suggestedRepliesViewBackgroundColor];

  [v5 setBackgroundColor_];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v78 = objc_opt_self();
  v10 = [v78 labelColor];
  [v9 setTextColor_];

  [v9 setMinimumScaleFactor_];
  [v9 setAdjustsFontSizeToFitWidth_];
  v11 = *MEMORY[0x1E69DDD80];
  v12 = *MEMORY[0x1E69DB980];
  v13 = objc_opt_self();
  v14 = [v13 preferredFontDescriptorWithTextStyle_];
  v15 = [v14 fontDescriptorWithSymbolicTraits_];
  v77 = v4;
  if (v15)
  {
    v16 = v15;

    v14 = v16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E018, &qword_190DF51D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1D90;
  v18 = *MEMORY[0x1E69DB8F0];
  *(inited + 32) = *MEMORY[0x1E69DB8F0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E020, &qword_190DF51E0);
  v19 = swift_initStackObject();
  v20 = MEMORY[0x1E69DB990];
  *(v19 + 16) = xmmword_190DD1D90;
  v21 = *v20;
  *(v19 + 32) = *v20;
  *(v19 + 40) = v12;
  v22 = v18;
  v23 = v21;
  v24 = sub_190821780(v19);
  swift_setDeallocating();
  sub_19022EEA4(v19 + 32, &qword_1EAD5E028, &qword_190DF51E8);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E030, &unk_190DF51F0);
  *(inited + 40) = v24;
  sub_190821870(inited);
  swift_setDeallocating();
  sub_19022EEA4(inited + 32, &qword_1EAD538A0, &qword_190E00380);
  type metadata accessor for AttributeName(0);
  sub_190B58DC0();
  v25 = sub_190D56D60();

  v26 = [v14 fontDescriptorByAddingAttributes_];

  v27 = objc_opt_self();
  v28 = [v27 fontWithDescriptor:v26 size:0.0];

  [v9 setFont_];
  [v9 setNumberOfLines_];
  sub_190D577D0();
  [v9 setContentCompressionResistancePriority:0 forAxis:?];
  sub_190D577D0();
  [v9 setContentCompressionResistancePriority:1 forAxis:?];
  sub_190D577E0();
  [v9 setContentHuggingPriority:0 forAxis:?];
  sub_190D577E0();
  [v9 setContentHuggingPriority:1 forAxis:?];
  v29 = [v80 suggestion];
  v30 = [v29 displayText];

  if (!v30)
  {
    sub_190D56F10();
    v30 = sub_190D56ED0();
  }

  [v9 setText_];

  v31 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  v32 = [v78 secondaryLabelColor];
  [v31 setTextColor_];

  [v31 setMinimumScaleFactor_];
  [v31 setAdjustsFontSizeToFitWidth_];
  v33 = [v13 preferredFontDescriptorWithTextStyle_];
  v34 = [v33 fontDescriptorWithSymbolicTraits_];
  if (v34)
  {
    v35 = v34;

    v33 = v35;
  }

  v36 = [v27 fontWithDescriptor:v33 size:0.0];

  [v31 setFont_];
  result = CKFrameworkBundle(v37);
  if (!result)
  {
    goto LABEL_15;
  }

  v38 = result;
  v39 = sub_190D56ED0();
  v40 = sub_190D56ED0();
  v41 = [v38 localizedStringForKey:v39 value:0 table:v40];

  if (!v41)
  {
    sub_190D56F10();
    v41 = sub_190D56ED0();
  }

  [v31 setText_];

  [v31 setNumberOfLines_];
  sub_190D577E0();
  [v31 setContentCompressionResistancePriority:0 forAxis:?];
  sub_190D577E0();
  [v31 setContentCompressionResistancePriority:1 forAxis:?];
  sub_190D577E0();
  [v31 setContentHuggingPriority:0 forAxis:?];
  sub_190D577E0();
  [v31 setContentHuggingPriority:1 forAxis:?];
  [v5 addSubview_];
  [v5 addSubview_];
  result = [v77 sharedBehaviors];
  if (!result)
  {
    goto LABEL_16;
  }

  v42 = result;
  [result suggestedReplyViewInsetVertical];
  v44 = v43;

  result = [v77 sharedBehaviors];
  if (result)
  {
    v45 = result;
    [result suggestedReplyViewInsetHorizontal];
    v47 = v46;

    v79 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_190DDA050;
    v49 = [v9 topAnchor];
    v50 = [v5 layoutMarginsGuide];
    v51 = [v50 topAnchor];

    v52 = [v49 constraintEqualToAnchor:v51 constant:v44];
    *(v48 + 32) = v52;
    v53 = [v9 leadingAnchor];
    v54 = [v5 layoutMarginsGuide];
    v55 = [v54 &selRef_keyTransparencyDetailsStatusCellDidRequestVerification_ + 1];

    v56 = [v53 constraintEqualToAnchor:v55 constant:v47];
    *(v48 + 40) = v56;
    v57 = [v9 trailingAnchor];
    v58 = [v5 layoutMarginsGuide];
    v59 = [v58 trailingAnchor];

    v60 = [v57 constraintEqualToAnchor:v59 constant:-v47];
    *(v48 + 48) = v60;
    v61 = [v31 topAnchor];
    v62 = [v9 bottomAnchor];

    v63 = [v61 constraintEqualToAnchor:v62 constant:2.0];
    *(v48 + 56) = v63;
    v64 = [v31 leadingAnchor];
    v65 = [v5 layoutMarginsGuide];
    v66 = [v65 leadingAnchor];

    v67 = [v64 constraintEqualToAnchor:v66 constant:v47];
    *(v48 + 64) = v67;
    v68 = [v31 bottomAnchor];
    v69 = [v5 layoutMarginsGuide];
    v70 = [v69 bottomAnchor];

    v71 = [v68 constraintEqualToAnchor:v70 constant:-v44];
    *(v48 + 72) = v71;
    v72 = [v31 trailingAnchor];

    v73 = [v5 layoutMarginsGuide];
    v74 = [v73 trailingAnchor];

    v75 = [v72 constraintEqualToAnchor:v74 constant:-v47];
    *(v48 + 80) = v75;
    sub_19086225C();
    v76 = sub_190D57160();

    [v79 activateConstraints_];

    return v5;
  }

LABEL_17:
  __break(1u);
  return result;
}