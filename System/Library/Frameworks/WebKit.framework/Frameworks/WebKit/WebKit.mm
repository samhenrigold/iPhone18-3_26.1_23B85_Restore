uint64_t static CredentialUpdaterShim.signalUnknownCredential(relyingPartyIdentifier:credentialID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_23B569AD4, 0, 0);
}

uint64_t sub_23B569AD4()
{
  sub_23B59D3D0();
  swift_allocObject();
  v0[6] = sub_23B59D3C0();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_23B569B94;
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  return MEMORY[0x28210CAF8](v5, v4, v2, v3);
}

uint64_t sub_23B569B94()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23B569CD0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23B569CD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B569EC0(uint64_t a1, void *a2, void *aBlock)
{
  v3[2] = _Block_copy(aBlock);
  v3[3] = sub_23B59D820();
  v3[4] = v5;
  v6 = a2;
  v7 = sub_23B59D2F0();
  v9 = v8;

  v3[5] = v7;
  v3[6] = v9;

  return MEMORY[0x2822009F8](sub_23B569F68, 0, 0);
}

uint64_t sub_23B569F68()
{
  sub_23B59D3D0();
  swift_allocObject();
  v0[7] = sub_23B59D3C0();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_23B56A028;
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];

  return MEMORY[0x28210CAF8](v5, v4, v2, v3);
}

uint64_t sub_23B56A028()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23B56A1B4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 40);
    v5 = *(v2 + 16);

    sub_23B56C05C(v4, v3);

    (*(v5 + 16))(v5, 0);
    _Block_release(*(v2 + 16));
    v6 = *(v2 + 8);

    return v6();
  }
}

uint64_t sub_23B56A1B4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);

  sub_23B56C05C(v3, v2);

  v5 = sub_23B59D290();

  (*(v4 + 16))(v4, v5);
  _Block_release(*(v0 + 16));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t static CredentialUpdaterShim.signalAllAcceptedCredentials(relyingPartyIdentifier:userHandle:acceptedCredentialIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_23B56A2A0, 0, 0);
}

uint64_t sub_23B56A2A0()
{
  sub_23B59D3D0();
  swift_allocObject();
  v0[7] = sub_23B59D3C0();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_23B56A364;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return MEMORY[0x28210CB00](v6, v4, v5, v2, v3);
}

uint64_t sub_23B56A364()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23B56A4A0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23B56A4A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B56A6A4(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v4[2] = _Block_copy(aBlock);
  v4[3] = sub_23B59D820();
  v4[4] = v7;
  v8 = a2;
  v9 = a3;
  v10 = sub_23B59D2F0();
  v12 = v11;

  v4[5] = v10;
  v4[6] = v12;
  v4[7] = sub_23B59D890();

  return MEMORY[0x2822009F8](sub_23B56A770, 0, 0);
}

uint64_t sub_23B56A770()
{
  sub_23B59D3D0();
  swift_allocObject();
  v0[8] = sub_23B59D3C0();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_23B56A834;
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return MEMORY[0x28210CB00](v6, v4, v5, v2, v3);
}

uint64_t sub_23B56A834()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23B56A9CC, 0, 0);
  }

  else
  {
    v4 = *(v2 + 40);
    v3 = *(v2 + 48);
    v5 = *(v2 + 16);

    sub_23B56C05C(v4, v3);

    (*(v5 + 16))(v5, 0);
    _Block_release(*(v2 + 16));
    v6 = *(v2 + 8);

    return v6();
  }
}

uint64_t sub_23B56A9CC()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 16);

  sub_23B56C05C(v3, v2);

  v5 = sub_23B59D290();

  (*(v4 + 16))(v4, v5);
  _Block_release(*(v0 + 16));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t static CredentialUpdaterShim.signalCurrentUserDetails(relyingPartyIdentifier:userHandle:newName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_23B56AAC4, 0, 0);
}

uint64_t sub_23B56AAC4()
{
  sub_23B59D3D0();
  swift_allocObject();
  v0[8] = sub_23B59D3C0();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_23B56AB88;
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v6 = v0[3];

  return MEMORY[0x28210CAF0](v7, v6, v4, v5, v2, v3);
}

uint64_t sub_23B56AB88()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23B56ACC4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23B56ACC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B56AEC8(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v4[2] = _Block_copy(aBlock);
  v4[3] = sub_23B59D820();
  v4[4] = v7;
  v8 = a2;
  v9 = a3;
  v10 = sub_23B59D2F0();
  v12 = v11;

  v4[5] = v10;
  v4[6] = v12;
  v13 = sub_23B59D820();
  v15 = v14;

  v4[7] = v13;
  v4[8] = v15;

  return MEMORY[0x2822009F8](sub_23B56AF94, 0, 0);
}

uint64_t sub_23B56AF94()
{
  sub_23B59D3D0();
  swift_allocObject();
  v0[9] = sub_23B59D3C0();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_23B56B058;
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];

  return MEMORY[0x28210CAF0](v7, v6, v4, v5, v2, v3);
}

uint64_t sub_23B56B058()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23B56B1F0, 0, 0);
  }

  else
  {
    v4 = *(v2 + 40);
    v3 = *(v2 + 48);
    v5 = *(v2 + 16);

    sub_23B56C05C(v4, v3);

    (*(v5 + 16))(v5, 0);
    _Block_release(*(v2 + 16));
    v6 = *(v2 + 8);

    return v6();
  }
}

uint64_t sub_23B56B1F0()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 16);

  sub_23B56C05C(v3, v2);

  v5 = sub_23B59D290();

  (*(v4 + 16))(v4, v5);
  _Block_release(*(v0 + 16));
  v6 = *(v0 + 8);

  return v6();
}

id CredentialUpdaterShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CredentialUpdaterShim.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CredentialUpdaterShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

uint64_t sub_23B56B414()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23B56C32C;

  return sub_23B56AEC8(v2, v3, v4, v5);
}

uint64_t sub_23B56B4DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_23B56C32C;

  return v6();
}

uint64_t sub_23B56B5C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23B56C32C;

  return sub_23B56B4DC(v2, v3, v4);
}

uint64_t sub_23B56B688(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_23B56B770;

  return v7();
}

uint64_t sub_23B56B770()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23B56B864(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23B56C32C;

  return sub_23B56B688(a1, v4, v5, v6);
}

uint64_t sub_23B56B930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_23B56BBEC(a3, v23 - v10);
  v12 = sub_23B59D910();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_23B56BC5C(v11);
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

  sub_23B59D900();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_23B59D8B0();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_23B59D830() + 32;
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

    sub_23B56BC5C(a3);

    return v21;
  }

LABEL_8:
  sub_23B56BC5C(a3);
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

uint64_t sub_23B56BBEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B56BC5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B56BCC4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23B56BDBC;

  return v6(a1);
}

uint64_t sub_23B56BDBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23B56BEB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B56BEEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B56C32C;

  return sub_23B56BCC4(a1, v4);
}

uint64_t sub_23B56BFA4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B56B770;

  return sub_23B56BCC4(a1, v4);
}

uint64_t sub_23B56C05C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23B56C100()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23B56C32C;

  return sub_23B56A6A4(v2, v3, v4, v5);
}

uint64_t sub_23B56C1C8()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B56C210()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23B56B770;

  return sub_23B569EC0(v2, v3, v4);
}

uint64_t objectdestroy_10Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B56C330(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_23B59D340();
  v5 = (v4 + OBJC_IVAR____TtC11WebKitSwift27IntelligenceTextEffectChunk_range);
  *v5 = a1;
  v5[1] = a2;
  return v4;
}

uint64_t sub_23B56C398()
{
  v1 = v0 + OBJC_IVAR____TtC11WebKitSwift27IntelligenceTextEffectChunk_range;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_23B56C3E0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11WebKitSwift27IntelligenceTextEffectChunk_range);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_23B56C49C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtCC11WebKitSwift27IntelligenceTextEffectChunk11Replacement_finished) = a3;
  v13 = (v12 + OBJC_IVAR____TtCC11WebKitSwift27IntelligenceTextEffectChunk11Replacement_replacement);
  *v13 = a5;
  v13[1] = a6;
  *(v12 + OBJC_IVAR____TtCC11WebKitSwift27IntelligenceTextEffectChunk11Replacement_characterDelta) = a4;
  sub_23B59D340();
  v14 = (v12 + OBJC_IVAR____TtC11WebKitSwift27IntelligenceTextEffectChunk_range);
  *v14 = a1;
  v14[1] = a2;
  return v12;
}

uint64_t sub_23B56C55C()
{
  v1 = OBJC_IVAR____TtC11WebKitSwift27IntelligenceTextEffectChunk_id;
  v2 = sub_23B59D350();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_23B56C60C()
{
  v1 = OBJC_IVAR____TtC11WebKitSwift27IntelligenceTextEffectChunk_id;
  v2 = sub_23B59D350();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_23B56C6A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11WebKitSwift27IntelligenceTextEffectChunk_id;
  v5 = sub_23B59D350();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_23B56C724()
{
  sub_23B59DB00();
  sub_23B59D330();
  return sub_23B59DB10();
}

uint64_t sub_23B56C7A4(uint64_t a1)
{
  result = sub_23B56C864(&qword_27E15A790, type metadata accessor for IntelligenceTextEffectChunk, &unk_23B59EADC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23B56C864(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23B56C8F4(uint64_t a1)
{
  sub_23B59DB00();
  sub_23B59D330();
  return sub_23B59DB10();
}

uint64_t sub_23B56C964(uint64_t a1)
{
  result = sub_23B59D350();
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

uint64_t sub_23B56CA84(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B56CB20(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 56) = 0;
  *(v3 + 48) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + 24) = a2;
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_23B56CBC8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

void sub_23B56CC78()
{
  v1 = v0;
  if (!v0[4])
  {
    v2 = *v0;
    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for PlatformIntelligenceTextEffectView(0, *(v2 + 80), *(v2 + 96), v3);
      v4 = swift_unknownObjectRetain();
      v5 = sub_23B573480(v4);
      [v5 setUserInteractionEnabled_];
      v6 = v1[3];
      [v6 frame];
      [v5 setFrame_];
      v7 = [v6 superview];
      [v7 addSubview_];

      if ((*(*v1 + 256))())
      {
        [v5 setHidden_];
      }

      sub_23B5734C4();
      swift_unknownObjectRelease();
      v8 = v1[4];
      v1[4] = v5;
    }
  }
}

void sub_23B56CE00()
{
  if (!v0[5] && !v0[6])
  {
    v1 = v0[4];
    if (v1)
    {
      [v1 removeFromSuperview];
      v1 = v0[4];
    }

    v0[4] = 0;
  }
}

uint64_t sub_23B56CE58(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = *v1;
  v3 = type metadata accessor for PlatformIntelligenceTextEffectID(0);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7A8, &qword_23B59EBF8);
  v2[10] = swift_task_alloc();
  sub_23B59D8F0();
  v2[11] = sub_23B59D8E0();
  v5 = sub_23B59D8B0();
  v2[12] = v5;
  v2[13] = v4;

  return MEMORY[0x2822009F8](sub_23B56CFAC, v5, v4);
}

uint64_t sub_23B56CFAC()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = *(v2 + 40);
  v0[14] = v3;
  if (v3)
  {
    if (!v1)
    {
      *(v2 + 40) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      v0[17] = Strong;
      if (Strong)
      {
        v0[2] = Strong;
        v5 = v0[6];
        v6 = *(v3 + *(*v3 + 104));
        v0[18] = v6;
        v8 = *(v5 + 80);
        v7 = *(v5 + 88);
        v9 = *(v7 + 8);

        v24 = (v9 + *v9);
        v10 = swift_task_alloc();
        v0[19] = v10;
        *v10 = v0;
        v10[1] = sub_23B56D580;

        return v24(v6, 1, 1, v8, v7);
      }

      v18 = *(v0[5] + 32);
      v0[20] = v18;
      if (v18)
      {
        sub_23B56F52C(v0[14] + qword_27E15AD18, v0[9]);
        v18;
        v19 = swift_task_alloc();
        v0[21] = v19;
        *v19 = v0;
        v19[1] = sub_23B56D818;
        v20 = v0[9];

        return sub_23B573878(v20);
      }

      sub_23B56CE00();
    }

    goto LABEL_12;
  }

  if (!v1)
  {
LABEL_12:

LABEL_13:

    v17 = v0[1];

    return v17();
  }

  *(v2 + 40) = v1;

  sub_23B56CC78();
  v12 = *(v2 + 32);
  v0[15] = v12;
  if (!v12)
  {
    v21 = v0[10];
    v22 = v0[7];
    v23 = v0[8];

    (*(v23 + 56))(v21, 1, 1, v22);
    sub_23B56F634(v0[10]);
    goto LABEL_13;
  }

  v0[3] = v1;
  v12;
  v13 = swift_task_alloc();
  v0[16] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7B0, &unk_23B59EC00);
  v15 = sub_23B56F69C(&qword_27E15A7B8, &qword_27E15A7B0, &unk_23B59EC00, &unk_23B59EF30);
  *v13 = v0;
  v13[1] = sub_23B56D39C;
  v16 = v0[10];

  return sub_23B57352C(v16, (v0 + 3), v14, v15);
}

uint64_t sub_23B56D39C()
{
  v1 = *v0;
  v2 = *(*v0 + 120);

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_23B56D4DC, v4, v3);
}

uint64_t sub_23B56D4DC()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];

  (*(v3 + 56))(v1, 0, 1, v2);
  sub_23B56F634(v0[10]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23B56D580()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_23B56D6E0, v3, v2);
}

uint64_t sub_23B56D6E0()
{
  v1 = *(v0[5] + 32);
  v0[20] = v1;
  if (v1)
  {
    sub_23B56F52C(v0[14] + qword_27E15AD18, v0[9]);
    v1;
    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_23B56D818;
    v3 = v0[9];

    return sub_23B573878(v3);
  }

  else
  {

    sub_23B56CE00();

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_23B56D818()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 72);

  sub_23B56F590(v3);
  v4 = *(v1 + 104);
  v5 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_23B56D974, v5, v4);
}

uint64_t sub_23B56D974()
{

  sub_23B56CE00();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B56D9F8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for PlatformIntelligenceTextEffectID(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7A8, &qword_23B59EBF8);
  v2[8] = swift_task_alloc();
  sub_23B59D8F0();
  v2[9] = sub_23B59D8E0();
  v5 = sub_23B59D8B0();
  v2[10] = v5;
  v2[11] = v4;

  return MEMORY[0x2822009F8](sub_23B56DB24, v5, v4);
}

uint64_t sub_23B56DB24()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v1 + 48);
  v0[12] = v3;
  if (v3)
  {
    if (!v2)
    {
      *(v1 + 48) = 0;
      v4 = *(v1 + 32);
      v0[15] = v4;
      if (v4)
      {
        sub_23B56F52C(v3 + qword_27E15AD10, v0[7]);
        v4;
        v5 = swift_task_alloc();
        v0[16] = v5;
        *v5 = v0;
        v5[1] = sub_23B56DFA0;
        v6 = v0[7];

        return sub_23B573878(v6);
      }

      sub_23B56CE00();
    }

    goto LABEL_12;
  }

  if (!v2)
  {
LABEL_12:

LABEL_13:

    v13 = v0[1];

    return v13();
  }

  *(v1 + 48) = v2;

  sub_23B56CC78();
  v8 = *(v1 + 32);
  v0[13] = v8;
  if (!v8)
  {
    v14 = v0[8];
    v15 = v0[5];
    v16 = v0[6];

    (*(v16 + 56))(v14, 1, 1, v15);
    sub_23B56F634(v0[8]);
    goto LABEL_13;
  }

  v0[2] = v2;
  v8;
  v9 = swift_task_alloc();
  v0[14] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7C0, qword_23B59EC10);
  v11 = sub_23B56F69C(&qword_27E15A7C8, &qword_27E15A7C0, qword_23B59EC10, &unk_23B59EEA8);
  *v9 = v0;
  v9[1] = sub_23B56DDBC;
  v12 = v0[8];

  return sub_23B57352C(v12, (v0 + 2), v10, v11);
}

uint64_t sub_23B56DDBC()
{
  v1 = *v0;
  v2 = *(*v0 + 104);

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_23B56DEFC, v4, v3);
}

uint64_t sub_23B56DEFC()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];

  (*(v3 + 56))(v1, 0, 1, v2);
  sub_23B56F634(v0[8]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23B56DFA0()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 56);

  sub_23B56F590(v3);
  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_23B56E0FC, v5, v4);
}

uint64_t sub_23B56E0FC()
{

  sub_23B56CE00();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B56E180()
{
  v1[4] = v0;
  v1[5] = *v0;
  sub_23B59D8F0();
  v1[6] = sub_23B59D8E0();
  v3 = sub_23B59D8B0();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_23B56E240, v3, v2);
}

uint64_t sub_23B56E240()
{
  if ((*(**(v0 + 32) + 256))())
  {

LABEL_3:
    v1 = *(v0 + 8);

    return v1();
  }

  v3 = *(v0 + 32);
  (*(*v3 + 264))(1);
  v4 = v3[5];
  *(v0 + 72) = v4;
  if (v4 && (v5 = swift_unknownObjectWeakLoadStrong(), (*(v0 + 80) = v5) != 0))
  {
    v6 = *(v0 + 40);
    v7 = *(v4 + *(*v4 + 104));
    *(v0 + 24) = v7;
    v8 = v0 + 24;
    *(v0 + 88) = v7;
    v9 = *(v6 + 96);
    v10 = *(v9 + 32);
    v11 = *(v6 + 80);

    v20 = (v10 + *v10);
    v12 = swift_task_alloc();
    *(v0 + 96) = v12;
    *v12 = v0;
    v13 = sub_23B56E5B4;
  }

  else
  {
    v14 = *(*(v0 + 32) + 48);
    *(v0 + 104) = v14;
    if (!v14 || (Strong = swift_unknownObjectWeakLoadStrong(), (*(v0 + 112) = Strong) == 0))
    {

      v19 = *(*(v0 + 32) + 32);
      if (v19)
      {
        [v19 setHidden_];
      }

      goto LABEL_3;
    }

    v16 = *(v0 + 40);
    v17 = *(v14 + *(*v14 + 104));
    *(v0 + 16) = v17;
    v8 = v0 + 16;
    *(v0 + 120) = v17;
    v9 = *(v16 + 96);
    v18 = *(v9 + 32);
    v11 = *(v16 + 80);

    v20 = (v18 + *v18);
    v12 = swift_task_alloc();
    *(v0 + 128) = v12;
    *v12 = v0;
    v13 = sub_23B56E90C;
  }

  v12[1] = v13;

  return v20(v8, 1, v11, v9);
}

uint64_t sub_23B56E5B4()
{
  v1 = *v0;

  swift_unknownObjectRelease();

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_23B56E714, v3, v2);
}

uint64_t sub_23B56E714()
{

  v1 = *(v0[4] + 48);
  v0[13] = v1;
  if (v1 && (Strong = swift_unknownObjectWeakLoadStrong(), (v0[14] = Strong) != 0))
  {
    v3 = v0[5];
    v4 = *(v1 + *(*v1 + 104));
    v0[2] = v4;
    v0[15] = v4;
    v5 = *(v3 + 96);
    v6 = *(v5 + 32);
    v7 = *(v3 + 80);

    v12 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_23B56E90C;

    return (v12)(v0 + 2, 1, v7, v5);
  }

  else
  {

    v10 = *(v0[4] + 32);
    if (v10)
    {
      [v10 setHidden_];
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_23B56E90C()
{
  v1 = *v0;

  swift_unknownObjectRelease();

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_23B56EA6C, v3, v2);
}

uint64_t sub_23B56EA6C()
{

  v1 = *(*(v0 + 32) + 32);
  if (v1)
  {
    [v1 setHidden_];
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23B56EAF4()
{
  sub_23B59D8F0();
  *(v0 + 16) = sub_23B59D8E0();
  v2 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B56EB88, v2, v1);
}

uint64_t sub_23B56EB88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B56EBE8()
{
  v1[2] = v0;
  sub_23B59D8F0();
  v1[3] = sub_23B59D8E0();
  v3 = sub_23B59D8B0();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_23B56EC80, v3, v2);
}

uint64_t sub_23B56EC80()
{
  v1 = v0[2];
  if (v1[5])
  {
    v7 = (*(*v1 + 304) + **(*v1 + 304));
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_23B56EEE4;
    v3 = v7;

    return v3(0);
  }

  if (v1[6])
  {
    v8 = (*(*v1 + 312) + **(*v1 + 312));
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_23B56F168;
    v3 = v8;

    return v3(0);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_23B56EEE4()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_23B56F004, v3, v2);
}

uint64_t sub_23B56F004()
{
  v1 = v0[2];
  if (v1[6])
  {
    v5 = (*(*v1 + 312) + **(*v1 + 312));
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_23B56F168;

    return v5(0);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_23B56F168()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_23B56F288, v3, v2);
}

uint64_t sub_23B56F288()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*sub_23B56F2E8(uint64_t (*result)(uint64_t)))(uint64_t)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = result;
    v4 = *(v2 + *(*v2 + 104));
    v5 = *(*v4 + 96);

    v7 = v5(v6);
    v8 = v3(v7);
    (*(*v4 + 104))(v8);
  }

  return result;
}

uint64_t sub_23B56F3E4()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v1;
    sub_23B573E60();

    v3 = v0[4];
    if (v3)
    {
      [v3 removeFromSuperview];
      v1 = v0[4];
    }

    else
    {
      v1 = 0;
    }
  }

  v0[4] = 0;

  v0[5] = 0;

  v0[6] = 0;

  v4 = *(*v0 + 264);

  return v4(0);
}

uint64_t sub_23B56F4B8()
{
  MEMORY[0x23EE9F290](v0 + 16);

  return v0;
}

uint64_t sub_23B56F4F8()
{
  sub_23B56F4B8();

  return MEMORY[0x2821FE8D8](v0, 57, 7);
}

uint64_t sub_23B56F52C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatformIntelligenceTextEffectID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B56F590(uint64_t a1)
{
  v2 = type metadata accessor for PlatformIntelligenceTextEffectID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_23B56F634(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7A8, &qword_23B59EBF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B56F69C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void sub_23B56F798(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52[2] = a2;
  v67 = sub_23B59D4E0();
  v3 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [a1 documentType];
  v6 = sub_23B59D820();
  v52[0] = v7;
  v52[1] = v6;

  v53 = a1;
  v8 = [a1 namespaces];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7D0, &qword_23B59ED28);
  v9 = sub_23B59D7D0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7D8, &qword_23B59ED30);
  v10 = sub_23B59DA60();
  v11 = 0;
  v12 = *(v9 + 64);
  v55 = v9 + 64;
  v57 = v10;
  v58 = v9;
  v13 = 1 << *(v9 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & v12;
  v54 = (v13 + 63) >> 6;
  v66 = v3;
  v64 = v3 + 32;
  v56 = v10 + 64;
  if (v15)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v15));
      v59 = (v15 - 1) & v15;
LABEL_11:
      v60 = v11;
      v19 = v16 | (v11 << 6);
      v20 = *(v58 + 56);
      v21 = (*(v58 + 48) + 16 * v19);
      v22 = v21[1];
      v62 = *v21;
      v63 = v19;
      v23 = *(v20 + 8 * v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7E0, &qword_23B59ED38);
      v24 = sub_23B59DA60();
      v25 = v23 + 64;
      v26 = 1 << *(v23 + 32);
      v27 = v26 < 64 ? ~(-1 << v26) : -1;
      v28 = v27 & *(v23 + 64);
      v29 = (v26 + 63) >> 6;
      v68 = v24 + 64;
      v61 = v22;
      v30 = v24;

      v70 = v23;

      v31 = 0;
      v69 = v30;
      if (v28)
      {
        break;
      }

LABEL_16:
      v33 = v31;
      while (1)
      {
        v31 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
          goto LABEL_29;
        }

        if (v31 >= v29)
        {
          break;
        }

        v34 = *(v25 + 8 * v31);
        ++v33;
        if (v34)
        {
          v32 = __clz(__rbit64(v34));
          v28 = (v34 - 1) & v34;
          goto LABEL_21;
        }
      }

      v46 = v63;
      v47 = v57;
      *(v56 + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v63;
      v48 = (v47[6] + 16 * v46);
      v49 = v61;
      *v48 = v62;
      v48[1] = v49;
      *(v47[7] + 8 * v46) = v30;
      v50 = v47[2];
      v44 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v44)
      {
        goto LABEL_31;
      }

      v47[2] = v51;
      v15 = v59;
      v11 = v60;
      if (!v59)
      {
        goto LABEL_6;
      }
    }

    while (1)
    {
      v32 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_21:
      v35 = v32 | (v31 << 6);
      v36 = (*(v70 + 48) + 16 * v35);
      v37 = *v36;
      v38 = v36[1];
      v39 = *(*(v70 + 56) + 8 * v35);

      v40 = v39;
      [v40 isRetaining];
      v41 = v65;
      sub_23B59D4C0();

      v30 = v69;
      *(v68 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      v42 = (v30[6] + 16 * v35);
      *v42 = v37;
      v42[1] = v38;
      (*(v66 + 32))(v30[7] + *(v66 + 72) * v35, v41, v67);
      v43 = v30[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        break;
      }

      v30[2] = v45;
      if (!v28)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_6:
    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v54)
      {

        sub_23B59D460();

        return;
      }

      v18 = *(v55 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v59 = (v18 - 1) & v18;
        goto LABEL_11;
      }
    }

LABEL_29:
    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_23B56FBD8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = a2;
  v34 = sub_23B59D480();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_23B59D4B0();
  v6 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 documentSets];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7E8, &qword_23B59ED40);
  v10 = sub_23B59D890();

  v11 = *(v10 + 16);
  if (!v11)
  {

LABEL_22:
    [a1 isMandatory];
    sub_23B59D3E0();

    return;
  }

  v24[0] = a1;
  v36 = MEMORY[0x277D84F90];
  sub_23B5704EC(0, v11, 0);
  v12 = 0;
  v13 = v36;
  v29 = v11;
  v30 = v10 + 32;
  v27 = v6;
  v28 = v6 + 32;
  v25 = v10;
  v26 = v8;
  while (v12 < *(v10 + 16))
  {
    v33 = v13;
    v14 = *(v30 + 8 * v12);
    if (v14 >> 62)
    {
      v15 = sub_23B59DA50();
      v32 = v12;
      if (!v15)
      {
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v32 = v12;
      if (!v15)
      {
        goto LABEL_16;
      }
    }

    v35 = MEMORY[0x277D84F90];

    sub_23B570530(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      goto LABEL_24;
    }

    v16 = 0;
    v17 = v35;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x23EE9EAD0](v16, v14);
      }

      else
      {
        v18 = *(v14 + 8 * v16 + 32);
      }

      sub_23B56F798(v18, v5);
      v35 = v17;
      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_23B570530((v19 > 1), v20 + 1, 1);
        v17 = v35;
      }

      ++v16;
      *(v17 + 16) = v20 + 1;
      (*(v3 + 32))(v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20, v5, v34);
    }

    while (v15 != v16);
    v8 = v26;
    v6 = v27;
    v10 = v25;
LABEL_17:
    sub_23B59D490();

    v13 = v33;
    v36 = v33;
    v22 = *(v33 + 16);
    v21 = *(v33 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_23B5704EC((v21 > 1), v22 + 1, 1);
      v13 = v36;
    }

    v23 = v31;
    v12 = v32 + 1;
    *(v13 + 16) = v22 + 1;
    (*(v6 + 32))(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v22, v8, v23);
    if (v12 == v29)
    {

      a1 = v24[0];
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_23B56FFCC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v34 = sub_23B59D440();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_23B59D410();
  v4 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 presentmentRequests];
  type metadata accessor for WKIdentityDocumentPresentmentMobileDocumentPresentmentRequest(0);
  v8 = sub_23B59D890();

  if (v8 >> 62)
  {
    goto LABEL_36;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v10 = MEMORY[0x277D84F90];
  v29 = a1;
  if (v9)
  {
    v39 = MEMORY[0x277D84F90];
    sub_23B5705B8(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
      __break(1u);
      return;
    }

    v11 = 0;
    v37 = v39;
    v10 = MEMORY[0x277D84F90];
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x23EE9EAD0](v11, v8);
      }

      else
      {
        v12 = *(v8 + 8 * v11 + 32);
      }

      sub_23B56FBD8(v12, v6);
      v13 = v37;
      v39 = v37;
      v15 = *(v37 + 2);
      v14 = *(v37 + 3);
      if (v15 >= v14 >> 1)
      {
        sub_23B5705B8((v14 > 1), v15 + 1, 1);
        v10 = MEMORY[0x277D84F90];
        v13 = v39;
      }

      ++v11;
      *(v13 + 2) = v15 + 1;
      v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v37 = v13;
      (*(v4 + 32))(&v13[v16 + *(v4 + 72) * v15], v6, v35);
    }

    while (v9 != v11);

    a1 = v29;
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  v17 = [a1 authenticationCertificates];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7F0, &qword_23B59ED48);
  v18 = sub_23B59D890();

  v19 = *(v18 + 16);
  if (v19)
  {
    v39 = v10;
    sub_23B570574(0, v19, 0);
    v20 = MEMORY[0x277D84F90];
    v21 = 0;
    v6 = v39;
    v35 = v18 + 32;
    v33 = v36 + 32;
    a1 = v32;
    v30 = v19;
    v31 = v18;
    while (1)
    {
      if (v21 >= *(v18 + 16))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v9 = sub_23B59DA50();
        goto LABEL_3;
      }

      v8 = *(v35 + 8 * v21);
      if (v8 >> 62)
      {
        v22 = sub_23B59DA50();
        if (!v22)
        {
LABEL_27:

          goto LABEL_28;
        }
      }

      else
      {
        v22 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v22)
        {
          goto LABEL_27;
        }
      }

      v38 = v20;

      sub_23B59DA10();
      if (v22 < 0)
      {
        goto LABEL_35;
      }

      v23 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x23EE9EAD0](v23, v8);
        }

        else
        {
          v24 = *(v8 + 8 * v23 + 32);
        }

        v25 = v24;
        ++v23;
        v26 = [v24 certificate];

        sub_23B59D9F0();
        v4 = *(v38 + 16);
        sub_23B59DA20();
        sub_23B59DA30();
        sub_23B59DA00();
      }

      while (v22 != v23);
      v18 = v31;
      a1 = v32;
      v20 = MEMORY[0x277D84F90];
      v19 = v30;
LABEL_28:
      sub_23B59D420();

      v39 = v6;
      v8 = *(v6 + 2);
      v27 = *(v6 + 3);
      if (v8 >= v27 >> 1)
      {
        sub_23B570574((v27 > 1), v8 + 1, 1);
        v20 = MEMORY[0x277D84F90];
        v6 = v39;
      }

      ++v21;
      *(v6 + 2) = v8 + 1;
      (*(v36 + 32))(&v6[((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v8], a1, v34);
      if (v21 == v19)
      {

        a1 = v29;
        goto LABEL_33;
      }
    }
  }

LABEL_33:
  sub_23B59D4F0();
}

void *sub_23B5704EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23B570600(a1, a2, a3, *v3, &qword_27E15A810, &qword_23B59ED68, MEMORY[0x277CD2BA8]);
  *v3 = result;
  return result;
}

void *sub_23B570530(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23B570600(a1, a2, a3, *v3, &qword_27E15A808, &qword_23B59ED60, MEMORY[0x277CD2BA0]);
  *v3 = result;
  return result;
}

void *sub_23B570574(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23B570600(a1, a2, a3, *v3, &qword_27E15A7F8, &qword_23B59ED50, MEMORY[0x277CD2B98]);
  *v3 = result;
  return result;
}

void *sub_23B5705B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23B570600(a1, a2, a3, *v3, &qword_27E15A800, &qword_23B59ED58, MEMORY[0x277CD2B90]);
  *v3 = result;
  return result;
}

void *sub_23B570600(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_23B5707DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

uint64_t sub_23B5707EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for PlatformIntelligenceTextEffectID(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_23B59D9C0();
  sub_23B59D9C0();
  v10 = sub_23B59D310();
  sub_23B56F590(v7);
  sub_23B56F590(v9);
  return v10 & 1;
}

id sub_23B5708DC(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  ObjectType = swift_getObjectType();
  *&v3[qword_27E15A860] = a1;
  v6.receiver = v3;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_23B570934(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_23B59D910();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23B59F598;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23B59F5A0;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_23B56B930(0, 0, v9, &unk_23B59F5A8, v14);
}

uint64_t sub_23B570ABC(uint64_t a1, uint64_t a2, void *a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = *MEMORY[0x277D85000] & *a3;
  sub_23B59D8F0();
  v3[6] = sub_23B59D8E0();
  v5 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B570B90, v5, v4);
}

uint64_t sub_23B570B90()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[8] = v7;
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  *v7 = v0;
  v7[1] = sub_23B570C58;
  v10 = v0[2];

  return sub_23B578BC0(v10, v8, v9);
}

uint64_t sub_23B570C58(char a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_23B570DB8(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_23B59D910();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23B59F570;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23B59F578;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_23B56B930(0, 0, v9, &unk_23B59F580, v14);
}

uint64_t sub_23B570F40(uint64_t a1, uint64_t a2, void *a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = *MEMORY[0x277D85000] & *a3;
  sub_23B59D8F0();
  v3[6] = sub_23B59D8E0();
  v5 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B571014, v5, v4);
}

uint64_t sub_23B571014()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[8] = v7;
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  *v7 = v0;
  v7[1] = sub_23B5710DC;
  v10 = v0[2];

  return sub_23B578DB0(v10, v8, v9);
}

uint64_t sub_23B5710DC(void *a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_23B571240(uint64_t a1, char a2)
{
  *(v3 + 128) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *MEMORY[0x277D85000] & *v2;
  sub_23B59D8F0();
  *(v3 + 40) = sub_23B59D8E0();
  v5 = sub_23B59D8B0();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return MEMORY[0x2822009F8](sub_23B571314, v5, v4);
}

uint64_t sub_23B571314()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v29 = *(v1 + 88);
  *(v0 + 64) = v29;
  v3 = *(v1 + 80);
  *(v0 + 72) = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v0 + 80) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 88) = AssociatedConformanceWitness;
  type metadata accessor for UIPonderingTextEffectTextChunkAdapter(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    *(v0 + 96) = *(*(v0 + 24) + qword_27E15A860);
    v9 = *((*MEMORY[0x277D85000] & *v7) + qword_27E15B650 + 16);
    v10 = *(v29 + 32);
    v11 = v7;
    v12 = v2;
    swift_unknownObjectRetain();
    v27 = (v10 + *v10);
    v13 = swift_task_alloc();
    *(v0 + 104) = v13;
    *v13 = v0;
    v13[1] = sub_23B5716CC;
    v14 = *(v0 + 128);
    v15 = v11 + v9;
    v16 = v3;
    v17 = v29;
    v18 = v27;
LABEL_5:

    return v18(v15, v14, v16, v17);
  }

  type metadata accessor for UIReplacementTextEffectTextChunkAdapter(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    *(v0 + 112) = *(*(v0 + 24) + qword_27E15A860);
    v20 = *((*MEMORY[0x277D85000] & *v19) + qword_27E15B6E0 + 16);
    v21 = *(v29 + 32);
    v22 = v19;
    v23 = v2;
    swift_unknownObjectRetain();
    v28 = (v21 + *v21);
    v24 = swift_task_alloc();
    *(v0 + 120) = v24;
    *v24 = v0;
    v24[1] = sub_23B571A04;
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v14 = *(v0 + 128);
    v15 = v22 + v20;
    v18 = v28;
    goto LABEL_5;
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_23B5716CC()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_23B571810, v3, v2);
}

uint64_t sub_23B571810()
{
  v1 = *(v0 + 16);
  type metadata accessor for UIReplacementTextEffectTextChunkAdapter(0, *(v0 + 80), *(v0 + 88), v2);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    *(v0 + 112) = *(*(v0 + 24) + qword_27E15A860);
    v4 = *((*MEMORY[0x277D85000] & *v3) + qword_27E15B6E0 + 16);
    v5 = *(*(v0 + 64) + 32);
    v6 = v3;
    v7 = v1;
    swift_unknownObjectRetain();
    v14 = (v5 + *v5);
    v8 = swift_task_alloc();
    *(v0 + 120) = v8;
    *v8 = v0;
    v8[1] = sub_23B571A04;
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = *(v0 + 128);

    return v14(&v6[v4], v11, v9, v10);
  }

  else
  {

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_23B571A04()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_23B571B48, v3, v2);
}

uint64_t sub_23B571B48()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23B571BB0(void *a1, uint64_t a2, void *a3, char a4, const void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = v12;
  *(v13 + 40) = a1;
  v14 = sub_23B59D910();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23B59F530;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23B59F540;
  v16[5] = v15;
  v17 = a3;
  v18 = a1;
  sub_23B56B930(0, 0, v11, &unk_23B59F550, v16);
}

uint64_t sub_23B571D40(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  sub_23B59D8F0();
  *(v4 + 40) = sub_23B59D8E0();
  v6 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B571DE0, v6, v5);
}

uint64_t sub_23B571DE0()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  *(v0 + 48) = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_23B571EA8;
  v7 = *(v0 + 64);
  v8 = *(v0 + 16);

  return sub_23B571240(v8, v7);
}

uint64_t sub_23B571EA8()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

void sub_23B572000()
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23B5790D4();
}

void sub_23B57207C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v23 - v3;
  v5 = sub_23B59D720();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_23B59D670();
    v11 = qword_27E15A830;
    swift_beginAccess();
    v12 = *&v10[v11];
    if (*(v12 + 16) && (v13 = sub_23B576BAC(v8), (v14 & 1) != 0))
    {
      sub_23B57A610(*(v12 + 56) + 40 * v13, &v24);
    }

    else
    {
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
    }

    swift_endAccess();
    (*(v6 + 8))(v8, v5);
    if (*(&v25 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A880, &qword_23B59F4F0);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      type metadata accessor for PlatformIntelligenceReplacementTextEffect(0, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
      if (swift_dynamicCast())
      {
        v18 = v23[1];
        v19 = sub_23B59D910();
        (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
        sub_23B59D8F0();

        v20 = sub_23B59D8E0();
        v21 = swift_allocObject();
        v22 = MEMORY[0x277D85700];
        v21[2] = v20;
        v21[3] = v22;
        v21[4] = v1;
        v21[5] = v18;
        sub_23B572730(0, 0, v4, &unk_23B59F500, v21);
      }

      else
      {
      }
    }

    else
    {

      sub_23B57A674(&v24, &qword_27E15A878, &qword_23B59F4E8);
    }
  }
}

uint64_t sub_23B5723C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = *a4;
  sub_23B59D8F0();
  v5[5] = sub_23B59D8E0();
  v7 = sub_23B59D8B0();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_23B572488, v7, v6);
}

uint64_t sub_23B572488()
{
  v1 = v0[4];
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);
  v7 = (*(v2 + 56) + **(v2 + 56));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_23B5725B0;
  v5 = v0[3];

  return v7(v5, v3, v2);
}

uint64_t sub_23B5725B0()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_23B5726D0, v3, v2);
}

uint64_t sub_23B5726D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B572730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23B57AC04(a3, v25 - v10, &qword_27E15A970, &qword_23B59F4E0);
  v12 = sub_23B59D910();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23B57A674(v11, &qword_27E15A970, &qword_23B59F4E0);
  }

  else
  {
    sub_23B59D900();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23B59D8B0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23B59D830() + 32;
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

      sub_23B57A674(a3, &qword_27E15A970, &qword_23B59F4E0);

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

  sub_23B57A674(a3, &qword_27E15A970, &qword_23B59F4E0);
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

uint64_t sub_23B572A30()
{
  swift_unknownObjectRelease();
  MEMORY[0x23EE9F290](v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_23B572A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  v9 = *(a4 + 80);
  v10 = *(a4 + 88);
  *v7 = v4;
  v7[1] = sub_23B572B0C;

  return sub_23B579104(a1, v8, v9, v10);
}

uint64_t sub_23B572B0C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_23B572C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_23B56B770;

  return MEMORY[0x2821DCE40](a1, a2, a3, a4, a5);
}

uint64_t sub_23B572CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_23B56C32C;

  return MEMORY[0x2821DCE40](a1, a2, a3, a4, a5);
}

void sub_23B572DCC()
{
  v1 = MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *v0) + qword_27E15B650) - 8) + 8))(&v0[*((*MEMORY[0x277D85000] & *v0) + qword_27E15B650 + 16)]);
  v2 = *&v0[*((*v1 & *v0) + qword_27E15B650 + 24)];
}

void sub_23B572EB0(char *a1)
{
  v2 = MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *a1) + qword_27E15B650) - 8) + 8))(&a1[*((*MEMORY[0x277D85000] & *a1) + qword_27E15B650 + 16)]);
  v3 = *&a1[*((*v2 & *a1) + qword_27E15B650 + 24)];
}

void sub_23B572FA8()
{
  v1 = MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *v0) + qword_27E15B6E0) - 8) + 8))(&v0[*((*MEMORY[0x277D85000] & *v0) + qword_27E15B6E0 + 16)]);

  v2 = *&v0[*((*v1 & *v0) + qword_27E15B6E0 + 32)];
}

void sub_23B5730CC(char *a1)
{
  v2 = MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *a1) + qword_27E15B6E0) - 8) + 8))(&a1[*((*MEMORY[0x277D85000] & *a1) + qword_27E15B6E0 + 16)]);

  v3 = *&a1[*((*v2 & *a1) + qword_27E15B6E0 + 32)];
}

uint64_t type metadata accessor for PlatformIntelligenceTextEffectID(uint64_t a1)
{
  result = qword_27E15B770;
  if (!qword_27E15B770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B573240()
{
  sub_23B59DB00();
  sub_23B59D350();
  sub_23B57A87C(&qword_27E15A798, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23B59D7F0();
  return sub_23B59DB10();
}

uint64_t sub_23B5732C8(uint64_t a1)
{
  sub_23B59D350();
  sub_23B57A87C(&qword_27E15A798, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_23B59D7F0();
}

uint64_t sub_23B57334C(uint64_t a1)
{
  sub_23B59DB00();
  sub_23B59D350();
  sub_23B57A87C(&qword_27E15A798, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23B59D7F0();
  return sub_23B59DB10();
}

void sub_23B5733D4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_23B5797F8();
}

id sub_23B573480(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_23B57988C(a1);
  swift_unknownObjectRelease();
  return v4;
}

id sub_23B5734C4()
{
  v1 = *&v0[qword_27E15A818];
  [v0 addSubview_];
  [v0 bounds];

  return [v1 setFrame_];
}

uint64_t sub_23B57352C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v8 = *v4;
  v9 = *MEMORY[0x277D85000];
  v5[6] = sub_23B59D8F0();
  v5[7] = sub_23B59D8E0();
  v14 = (*(a4 + 48) + **(a4 + 48));
  v10 = swift_task_alloc();
  v5[8] = v10;
  v11 = *((v9 & v8) + 0x50);
  v12 = *((v9 & v8) + 0x58);
  *v10 = v5;
  v10[1] = sub_23B5736BC;

  return v14(v4, v11, v12, a3, a4);
}

uint64_t sub_23B5736BC()
{

  v1 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B5737F8, v1, v0);
}

uint64_t sub_23B5737F8()
{

  sub_23B59D9C0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B573878(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A820, qword_23B59ED90);
  v2[10] = swift_task_alloc();
  v3 = sub_23B59D720();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  sub_23B59D8F0();
  v2[15] = sub_23B59D8E0();
  v5 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B5739B0, v5, v4);
}

uint64_t sub_23B5739B0()
{
  v13 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];

  swift_beginAccess();
  sub_23B576FF0(v4, v3);
  swift_endAccess();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_23B57A674(v0[10], &qword_27E15A820, qword_23B59ED90);
  }

  else
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = v0[11];
    v8 = v0[12];
    (*(v8 + 32))(v5, v0[10], v7);
    (*(v8 + 16))(v6, v5, v7);
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    swift_beginAccess();
    sub_23B573B78(v11, v6);
    swift_endAccess();
    sub_23B59D6D0();
    (*(v8 + 8))(v5, v7);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_23B573B78(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_23B57ABEC(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_23B5782BC(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_23B59D720();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_23B57A674(a1, &qword_27E15A878, &qword_23B59F4E8);
    sub_23B577178(a2, v9);
    v7 = sub_23B59D720();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_23B57A674(v9, &qword_27E15A878, &qword_23B59F4E8);
  }

  return result;
}

uint64_t sub_23B573C94(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A820, qword_23B59ED90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_23B59D720();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_23B57A674(a1, &qword_27E15A820, qword_23B59ED90);
    sub_23B576FF0(a2, v7);
    sub_23B56F590(a2);
    return sub_23B57A674(v7, &qword_27E15A820, qword_23B59ED90);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_23B5780F4(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_23B56F590(a2);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_23B573E60()
{
  v1 = v0;
  sub_23B59D730();
  v2 = MEMORY[0x277D84F90];
  v3 = sub_23B5795F0(MEMORY[0x277D84F90]);
  v4 = qword_27E15A828;
  swift_beginAccess();
  *(v1 + v4) = v3;

  v5 = sub_23B579400(v2);
  v6 = qword_27E15A830;
  swift_beginAccess();
  *(v1 + v6) = v5;
}

void sub_23B573F10(void *a1)
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23B5799DC();
}

id sub_23B573FE0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23B574018(uint64_t a1)
{
  swift_unknownObjectRelease();
}

uint64_t sub_23B574094(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_23B5740E4(a1, a2);
  return v4;
}

uint64_t *sub_23B5740E4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_23B59D340();
  (*(*(*(v5 + 80) - 8) + 32))(v2 + *(*v2 + 104), a1);
  v6 = v2 + *(*v2 + 112);
  *(v6 + 48) = *(a2 + 48);
  v7 = *(a2 + 32);
  *(v6 + 16) = *(a2 + 16);
  *(v6 + 32) = v7;
  *v6 = *a2;
  return v2;
}

double sub_23B5741B0()
{
  v1 = (v0 + *(*v0 + 112));
  if (*v1)
  {
    [*v1 size];
    v3 = v2;
  }

  else
  {
    v3 = 0.0;
  }

  [v1[1] size];
  return v4 - v3;
}

uint64_t sub_23B57421C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_23B59D8F0();
  v2[4] = sub_23B59D8E0();
  v4 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B5742B4, v4, v3);
}

uint64_t sub_23B5742B4()
{
  v1 = v0[3];

  v2 = v1 + *(*v1 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[2];
    v6 = *(v2 + 40);
    v5 = *(v2 + 48);
    v7 = *(v2 + 24);
    v8 = *(v2 + 32);
    v9 = v3;
    v10 = sub_23B5741B0();
    v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    v12 = [v11 layer];
    [v12 setContents_];

    v13 = [v4 addSubview_];
    if (v10 <= 0.0)
    {
      sub_23B59D7B0();
    }

    else
    {
      MEMORY[0x23EE9E8A0](v13, 0.4, 0.7, 0.0);
    }

    sub_23B59D790();

    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v7;
    *(v14 + 32) = v8 + v10;
    *(v14 + 40) = v6;
    *(v14 + 48) = v5;
    sub_23B579A74();
    v15 = v11;
    sub_23B59D960();
  }

  v16 = v0[1];

  return v16();
}

uint64_t *sub_23B5744B8()
{
  v1 = *v0;
  sub_23B56F590(v0 + qword_27E15AD08);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  v2 = v0 + *(*v0 + 112);
  v3 = *v2;
  v4 = *(v2 + 16);

  return v0;
}

uint64_t sub_23B574574()
{
  sub_23B5744B8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23B5745CC(uint64_t a1)
{
  v6 = (*(**v1 + 136) + **(**v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23B56C32C;

  return v6(a1);
}

uint64_t *sub_23B574784(uint64_t a1)
{
  v3 = *v1;
  sub_23B59D340();
  *(v1 + *(*v1 + 112)) = 0;
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 104), a1);
  return v1;
}

uint64_t sub_23B574834(void *a1)
{
  v2[35] = a1;
  v2[36] = v1;
  v3 = *v1;
  v2[37] = *v1;
  v2[38] = *MEMORY[0x277D85000] & *a1;
  v4 = *(v3 + 80);
  v2[39] = v4;
  v2[40] = *(v4 - 8);
  v2[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A820, qword_23B59ED90);
  v2[42] = swift_task_alloc();
  type metadata accessor for PlatformIntelligenceTextEffectID(0);
  v2[43] = swift_task_alloc();
  v5 = sub_23B59D720();
  v2[44] = v5;
  v2[45] = *(v5 - 8);
  v2[46] = swift_task_alloc();
  v6 = sub_23B59D780();
  v2[47] = v6;
  v2[48] = *(v6 - 8);
  v2[49] = swift_task_alloc();
  sub_23B59D8F0();
  v2[50] = sub_23B59D8E0();
  v8 = sub_23B59D8B0();
  v2[51] = v8;
  v2[52] = v7;

  return MEMORY[0x2822009F8](sub_23B574AB4, v8, v7);
}

uint64_t sub_23B574AB4()
{
  v1 = v0[38];
  v2 = v0[36];
  v0[53] = *(v0[35] + qword_27E15A838);
  v3 = *(*v2 + 104);
  v0[54] = v3;
  v4 = *(v1 + 88);
  v0[55] = v4;
  v5 = *(v4 + 24);
  v6 = *(v1 + 80);
  v0[56] = v6;
  v9 = (v5 + *v5);
  v7 = swift_task_alloc();
  v0[57] = v7;
  *v7 = v0;
  v7[1] = sub_23B574C14;

  return v9(v2 + v3, v6, v4);
}

uint64_t sub_23B574C14(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v11 = *(*v1 + 440);
  v4 = *(*v1 + 432);
  v5 = *(*v1 + 288);
  v12 = *v1;
  v3[58] = a1;

  v10 = (*(v11 + 32) + **(v11 + 32));
  v6 = swift_task_alloc();
  v3[59] = v6;
  *v6 = v12;
  v6[1] = sub_23B574E40;
  v7 = v2[56];
  v8 = v3[55];

  return v10(v5 + v4, 0, v7, v8);
}

uint64_t sub_23B574E40()
{
  v1 = *v0;
  v11 = *(*v0 + 440);
  v2 = *(*v0 + 432);
  v3 = *(*v0 + 288);
  v4 = *v0;

  v10 = (*(v11 + 40) + **(v11 + 40));
  v5 = swift_task_alloc();
  v1[60] = v5;
  *v5 = v4;
  v5[1] = sub_23B575064;
  v6 = v1[56];
  v7 = v1[55];
  v8 = v1[36];

  return v10(v1 + 16, v3 + v2, v8, v6, v7);
}

uint64_t sub_23B575064()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 144);
  *(v2 + 488) = v2[8];
  *(v2 + 504) = v3;
  *(v2 + 520) = v2[10];

  v4 = *(v1 + 52);
  v5 = *(v1 + 51);

  return MEMORY[0x2822009F8](sub_23B5751A0, v5, v4);
}

uint64_t sub_23B5751A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 488);
  if (v5)
  {
    v6 = *(v4 + 464);
    v7 = *(v4 + 432);
    v8 = *(v4 + 392);
    v35 = *(v4 + 424);
    v36 = *(v4 + 384);
    v37 = *(v4 + 376);
    v39 = *(v4 + 440);
    v9 = *(v4 + 312);
    v10 = *(v4 + 288);
    v32 = *(v4 + 448);
    v34 = *(v4 + 280);
    v11 = *(*(v4 + 296) + 88);
    *(v4 + 536) = v11;
    v12 = type metadata accessor for UIReplacementTextEffectTextChunkAdapter(0, v9, v11, a4);
    v13 = v6;
    v14 = v5;
    v15 = objc_allocWithZone(v12);
    ObjectType = swift_getObjectType();
    v17 = MEMORY[0x277D85000];
    (*(*(*((*MEMORY[0x277D85000] & *v15) + qword_27E15B6E0) - 8) + 16))(&v15[*((*MEMORY[0x277D85000] & *v15) + qword_27E15B6E0 + 16)], v10 + v7);
    *&v15[*((*v17 & *v15) + qword_27E15B6E0 + 24)] = v6;
    *&v15[*((*v17 & *v15) + qword_27E15B6E0 + 32)] = v14;
    *(v4 + 264) = v15;
    *(v4 + 272) = ObjectType;
    v18 = objc_msgSendSuper2((v4 + 264), sel_init, v32);
    *(v4 + 544) = v18;
    type metadata accessor for UIReplacementTextEffectDelegateAdapter(0, v33, v39, v19);
    v20 = swift_allocObject();
    *(v4 + 552) = v20;
    swift_unknownObjectWeakInit();
    *(v20 + 16) = v35;
    swift_unknownObjectWeakAssign();
    v21 = *(v34 + qword_27E15A818);
    *(v4 + 560) = v21;
    swift_getWitnessTable();
    swift_unknownObjectRetain();
    v22 = v18;
    v23 = v21;

    sub_23B59D770();
    sub_23B59D760();
    (*(v36 + 8))(v8, v37);
    *(v4 + 568) = sub_23B59D6B0();
    swift_allocObject();
    *(v4 + 576) = sub_23B59D680();
    v38 = (*(v39 + 48) + **(v39 + 48));
    v24 = swift_task_alloc();
    *(v4 + 584) = v24;
    *v24 = v4;
    v24[1] = sub_23B5755F0;
    v26 = *(v4 + 440);
    v25 = *(v4 + 448);
    v27 = *(v4 + 288);

    return v38(v27, v25, v26);
  }

  else
  {
    v29 = *(v4 + 496);
    v30 = *(v4 + 464);

    sub_23B579AC0(v29);

    v31 = *(v4 + 8);

    return v31();
  }
}

uint64_t sub_23B5755F0()
{
  v1 = *v0;

  v2 = *(v1 + 416);
  v3 = *(v1 + 408);

  return MEMORY[0x2822009F8](sub_23B575710, v3, v2);
}

uint64_t sub_23B575710()
{
  v41 = v0;
  v0[22] = v0[72];
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[44];
  v33 = v0[67];
  v35 = v0[43];
  v37 = v0[42];
  v38 = v0[62];
  v4 = v0[39];
  v5 = v0[36];
  v6 = MEMORY[0x277D74B28];
  v0[25] = v0[71];
  v0[26] = v6;

  sub_23B59D6C0();
  (*(v1 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  sub_23B59D670();
  v40[3] = type metadata accessor for PlatformIntelligenceReplacementTextEffect(0, v4, v33, v7);
  v40[4] = swift_getWitnessTable();
  v40[0] = v5;
  swift_beginAccess();

  sub_23B573B78(v40, v2);
  swift_endAccess();
  sub_23B56F52C(v5 + qword_27E15AD10, v35);
  sub_23B59D670();
  (*(v1 + 56))(v37, 0, 1, v3);
  swift_beginAccess();
  sub_23B573C94(v37, v35);
  swift_endAccess();
  if (v38 == 1)
  {
    v9 = v0[68];
    v10 = v0[61];
    v11 = v0[58];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[66];
    v15 = v0[65];
    v17 = v0[63];
    v16 = v0[64];
    v18 = v0[62];
    v34 = v0[58];
    v36 = v0[67];
    v31 = v0[54];
    v32 = v0[61];
    v20 = v0[40];
    v19 = v0[41];
    v21 = v0[39];
    v30 = v0[36];
    v0[2] = v34;
    v0[3] = v32;
    v0[4] = v18;
    v0[5] = v17;
    v0[6] = v16;
    v0[7] = v15;
    v0[8] = v14;
    type metadata accessor for PlatformIntelligenceRemainderAffordanceTextEffect(0, v21, v36, v8);
    (*(v20 + 16))(v19, v30 + v31, v21);
    sub_23B579B7C(v18);
    v22 = v32;
    v23 = v34;
    sub_23B579B7C(v18);
    v25 = type metadata accessor for PlatformIntelligenceRemainderAffordanceTextEffect.Previews(0, v21, v36, v24);
    v0[74] = v25;
    v26 = *(v25 - 8);
    v0[75] = v26;
    (*(v26 + 16))(v0 + 9, v0 + 2, v25);
    v27 = swift_allocObject();
    v0[76] = v27;
    sub_23B5740E4(v19, (v0 + 2));
    v39 = (*(*v27 + 136) + **(*v27 + 136));
    v28 = swift_task_alloc();
    v0[77] = v28;
    *v28 = v0;
    v28[1] = sub_23B575BB8;
    v29 = v0[35];

    return v39(v29);
  }
}

uint64_t sub_23B575BB8()
{
  v1 = *v0;

  v2 = *(v1 + 416);
  v3 = *(v1 + 408);

  return MEMORY[0x2822009F8](sub_23B575CD8, v3, v2);
}

uint64_t sub_23B575CD8()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[61];
  v4 = v0[62];
  v7 = v0[68];
  v8 = v0[58];

  (*(v1 + 8))(v0 + 2, v2);
  sub_23B579AC0(v4);

  sub_23B579AC0(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23B575E44(void *a1)
{
  sub_23B57692C(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_23B575E9C(uint64_t a1)
{
  v6 = (*(**v1 + 152) + **(**v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23B56C32C;

  return v6(a1);
}

uint64_t sub_23B576054(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t *sub_23B5760A4(uint64_t a1)
{
  v3 = *v1;
  sub_23B59D340();
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 104), a1);
  return v1;
}

uint64_t sub_23B57613C(void *a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = *v1;
  v2[18] = *MEMORY[0x277D85000] & *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A820, qword_23B59ED90);
  v2[19] = swift_task_alloc();
  type metadata accessor for PlatformIntelligenceTextEffectID(0);
  v2[20] = swift_task_alloc();
  v3 = sub_23B59D720();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  sub_23B59D780();
  v2[24] = swift_task_alloc();
  sub_23B59D8F0();
  v2[25] = sub_23B59D8E0();
  v5 = sub_23B59D8B0();
  v2[26] = v5;
  v2[27] = v4;

  return MEMORY[0x2822009F8](sub_23B576320, v5, v4);
}

uint64_t sub_23B576320()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = *(*v2 + 104);
  v0[28] = v3;
  v5 = *(v1 + 80);
  v4 = *(v1 + 88);
  v8 = (*(v4 + 24) + **(v4 + 24));
  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  v6[1] = sub_23B576470;

  return v8(v2 + v3, v5, v4);
}

uint64_t sub_23B576470(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 240) = a1;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);

  return MEMORY[0x2822009F8](sub_23B576598, v4, v3);
}

uint64_t sub_23B576598()
{
  v32 = v0;
  v1 = *(v0 + 240);

  if (v1)
  {
    v3 = *(v0 + 240);
    v4 = *(v0 + 224);
    v5 = *(v0 + 184);
    v22 = *(v0 + 176);
    v23 = *(v0 + 168);
    v27 = *(v0 + 160);
    v28 = *(v0 + 152);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 120);
    v24 = *(v6 + 88);
    v25 = *(v6 + 80);
    v9 = type metadata accessor for UIPonderingTextEffectTextChunkAdapter(0, v25, v24, v2);
    v26 = v3;
    v10 = objc_allocWithZone(v9);
    ObjectType = swift_getObjectType();
    v12 = MEMORY[0x277D85000];
    (*(*(*((*MEMORY[0x277D85000] & *v10) + qword_27E15B650) - 8) + 16))(&v10[*((*MEMORY[0x277D85000] & *v10) + qword_27E15B650 + 16)], v7 + v4);
    *&v10[*((*v12 & *v10) + qword_27E15B650 + 24)] = v26;
    *(v0 + 104) = v10;
    *(v0 + 112) = ObjectType;
    v13 = objc_msgSendSuper2((v0 + 104), sel_init);
    v14 = *(v8 + qword_27E15A818);
    v21 = v13;
    v15 = v14;
    sub_23B59D770();
    v16 = sub_23B59D700();
    swift_allocObject();
    *(v0 + 16) = sub_23B59D6F0();
    v17 = MEMORY[0x277D74B30];
    *(v0 + 40) = v16;
    *(v0 + 48) = v17;

    sub_23B59D6C0();
    (*(v22 + 8))(v5, v23);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    sub_23B59D6E0();
    v30 = type metadata accessor for PlatformIntelligencePonderingTextEffect(0, v25, v24, v18);
    WitnessTable = swift_getWitnessTable();
    v29[0] = v7;
    swift_beginAccess();

    sub_23B573B78(v29, v5);
    swift_endAccess();
    sub_23B56F52C(v7 + qword_27E15AD18, v27);
    sub_23B59D6E0();
    (*(v22 + 56))(v28, 0, 1, v23);
    swift_beginAccess();
    sub_23B573C94(v28, v27);
    swift_endAccess();
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t *sub_23B57692C(void *a1)
{
  v2 = *v1;
  sub_23B56F590(v1 + *a1);
  (*(*(*(v2 + 80) - 8) + 8))(v1 + *(*v1 + 104));
  return v1;
}

uint64_t sub_23B576A0C(uint64_t a1)
{
  v6 = (*(**v1 + 120) + **(**v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23B56C32C;

  return v6(a1);
}

unint64_t sub_23B576BAC(uint64_t a1)
{
  sub_23B59D720();
  sub_23B57A87C(&qword_27E15A888, MEMORY[0x277D74B38], MEMORY[0x277D74B40]);
  v2 = sub_23B59D7E0();

  return sub_23B576CF8(a1, v2);
}

unint64_t sub_23B576C44(uint64_t a1)
{
  sub_23B59DB00();
  sub_23B59D350();
  sub_23B57A87C(&qword_27E15A798, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23B59D7F0();
  v2 = sub_23B59DB10();

  return sub_23B576EB8(a1, v2);
}

unint64_t sub_23B576CF8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_23B59D720();
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
      sub_23B57A87C(&qword_27E15A890, MEMORY[0x277D74B38], MEMORY[0x277D74B48]);
      v15 = sub_23B59D800();
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

unint64_t sub_23B576EB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatformIntelligenceTextEffectID(0) - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      sub_23B56F52C(*(v2 + 48) + v11 * v9, v7);
      v12 = sub_23B59D310();
      sub_23B56F590(v7);
      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_23B576FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_23B576C44(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23B578638();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for PlatformIntelligenceTextEffectID(0);
    sub_23B56F590(v10 + *(*(v11 - 8) + 72) * v7);
    v12 = *(v9 + 56);
    v13 = sub_23B59D720();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_23B577ACC(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_23B59D720();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_23B577178@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_23B576BAC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23B578938();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_23B59D720();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_23B57ABEC((*(v9 + 56) + 40 * v7), a2);
    sub_23B577DD0(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_23B57725C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_23B59D720();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v51 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlatformIntelligenceTextEffectID(0);
  v46 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A898, &qword_23B59F5B8);
  v47 = v4;
  result = sub_23B59DA70();
  v13 = result;
  if (*(v11 + 16))
  {
    v50 = v10;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v41 = v2;
    v42 = v6 + 16;
    v43 = v6;
    v44 = v5;
    v48 = (v6 + 32);
    v20 = result + 64;
    v21 = v11;
    v45 = v11;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v14 << 6);
      v27 = *(v21 + 48);
      v49 = *(v46 + 72);
      v28 = v27 + v49 * v26;
      if (v47)
      {
        sub_23B57AB88(v28, v50);
        v29 = *(v21 + 56);
        v30 = *(v43 + 72);
        (*(v43 + 32))(v51, v29 + v30 * v26, v5);
      }

      else
      {
        sub_23B56F52C(v28, v50);
        v31 = *(v21 + 56);
        v30 = *(v43 + 72);
        (*(v43 + 16))(v51, v31 + v30 * v26, v5);
      }

      sub_23B59DB00();
      sub_23B59D350();
      sub_23B57A87C(&qword_27E15A798, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_23B59D7F0();
      result = sub_23B59DB10();
      v32 = -1 << *(v13 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v5 = v44;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v5 = v44;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_23B57AB88(v50, *(v13 + 48) + v49 * v22);
      result = (*v48)(*(v13 + 56) + v30 * v22, v51, v5);
      ++*(v13 + 16);
      v21 = v45;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_35;
    }

    v39 = 1 << *(v21 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v45 + 16) = 0;
  }

LABEL_35:
  *v3 = v13;
  return result;
}

uint64_t sub_23B5776E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_23B59D720();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8A0, &qword_23B59F5C0);
  v38 = v4;
  result = sub_23B59DA70();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
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
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_23B57ABEC((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_23B57A610(*(v9 + 56) + 40 * v23, v43);
      }

      sub_23B57A87C(&qword_27E15A888, MEMORY[0x277D74B38], MEMORY[0x277D74B40]);
      result = sub_23B59D7E0();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
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
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_23B57ABEC(v43, *(v11 + 56) + 40 * v19);
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

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
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

unint64_t sub_23B577ACC(int64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for PlatformIntelligenceTextEffectID(0);
  v4 = *(v26 - 8);
  result = MEMORY[0x28223BE20](v26);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_23B59D990();
    v27 = v11;
    v28 = (v12 + 1) & v11;
    v13 = *(v4 + 72);
    do
    {
      v14 = v13 * v10;
      sub_23B56F52C(*(a2 + 48) + v13 * v10, v7);
      sub_23B59DB00();
      sub_23B59D350();
      sub_23B57A87C(&qword_27E15A798, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_23B59D7F0();
      v15 = sub_23B59DB10();
      result = sub_23B56F590(v7);
      v16 = v15 & v11;
      if (a1 >= v28)
      {
        if (v16 >= v28 && a1 >= v16)
        {
LABEL_11:
          if (v13 * a1 < v14 || *(a2 + 48) + v13 * a1 >= (*(a2 + 48) + v14 + v13))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v13 * a1 != v14)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v17 = *(a2 + 56);
          v18 = *(*(sub_23B59D720() - 8) + 72);
          v19 = v18 * a1;
          result = v17 + v18 * a1;
          v20 = v18 * v10;
          v21 = v17 + v18 * v10 + v18;
          if (v19 < v20 || result >= v21)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v11 = v27;
          }

          else
          {
            a1 = v10;
            v11 = v27;
            if (v19 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              a1 = v10;
            }
          }
        }
      }

      else if (v16 >= v28 || a1 >= v16)
      {
        goto LABEL_11;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23B577DD0(int64_t a1, uint64_t a2)
{
  v42 = sub_23B59D720();
  v4 = *(v42 - 8);
  result = MEMORY[0x28223BE20](v42);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v43 = v6;
    v12 = sub_23B59D990();
    v13 = v42;
    v6 = v43;
    v14 = v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v39 = (v12 + 1) & v11;
    v40 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    v38 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v41;
      v21 = v14;
      v22 = v15;
      v40(v41, *(v6 + 48) + v17 * v10, v13);
      sub_23B57A87C(&qword_27E15A888, MEMORY[0x277D74B38], MEMORY[0x277D74B40]);
      v23 = sub_23B59D7E0();
      result = (*v37)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v6 = v43;
          v27 = *(v43 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v43;
            v17 = v18;
            v14 = v21;
            v8 = v38;
          }

          else
          {
            v8 = v38;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v43;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = v28 + 40 * a1;
          v30 = (v28 + 40 * v10);
          if (a1 != v10 || v29 >= v30 + 40)
          {
            v31 = *v30;
            v32 = v30[1];
            *(v29 + 32) = *(v30 + 4);
            *v29 = v31;
            *(v29 + 16) = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v38;
      v17 = v18;
      v6 = v43;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(v6 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v35;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_23B5780F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for PlatformIntelligenceTextEffectID(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_23B576C44(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_23B578638();
      goto LABEL_7;
    }

    sub_23B57725C(v16, a3 & 1);
    v27 = sub_23B576C44(a2);
    if ((v17 & 1) == (v28 & 1))
    {
      v13 = v27;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_23B56F52C(a2, v10);
      return sub_23B578498(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_23B59DAC0();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7];
  v21 = sub_23B59D720();
  v22 = *(v21 - 8);
  v23 = *(v22 + 40);
  v24 = v21;
  v25 = v20 + *(v22 + 72) * v13;

  return v23(v25, a1, v24);
}

uint64_t sub_23B5782BC(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23B59D720();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_23B576BAC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_23B578938();
      goto LABEL_7;
    }

    sub_23B5776E8(v17, a3 & 1);
    v23 = sub_23B576BAC(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_23B578574(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_23B59DAC0();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 40 * v14);
  __swift_destroy_boxed_opaque_existential_1(v21);

  return sub_23B57ABEC(a1, v21);
}

uint64_t sub_23B578498(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for PlatformIntelligenceTextEffectID(0);
  sub_23B57AB88(a2, v8 + *(*(v9 - 8) + 72) * a1);
  v10 = a4[7];
  v11 = sub_23B59D720();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_23B578574(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23B59D720();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_23B57ABEC(a3, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_23B578638()
{
  v1 = v0;
  v2 = sub_23B59D720();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x28223BE20](v2);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PlatformIntelligenceTextEffectID(0);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A898, &qword_23B59F5B8);
  v7 = *v0;
  v8 = sub_23B59DA60();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = *(v36 + 72) * v23;
        sub_23B56F52C(*(v7 + 48) + v24, v19);
        v26 = v38;
        v25 = v39;
        v27 = *(v39 + 72) * v23;
        v28 = v37;
        (*(v39 + 16))(v37, *(v7 + 56) + v27, v38);
        v29 = v40;
        sub_23B57AB88(v19, *(v40 + 48) + v24);
        result = (*(v25 + 32))(*(v29 + 56) + v27, v28, v26);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_23B578938()
{
  v1 = v0;
  v29 = sub_23B59D720();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8A0, &qword_23B59F5C0);
  v3 = *v0;
  v4 = sub_23B59DA60();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 40;
        sub_23B57A610(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        result = sub_23B57ABEC(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
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

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
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

uint64_t sub_23B578BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23B59D8F0();
  v3[5] = sub_23B59D8E0();
  v5 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B578C5C, v5, v4);
}

uint64_t sub_23B578C5C()
{

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for UIPonderingTextEffectTextChunkAdapter(0, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  if (swift_dynamicCastClass())
  {
    v5 = 1;
  }

  else
  {
    type metadata accessor for UIReplacementTextEffectTextChunkAdapter(0, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v5 = *(v5 + *((*MEMORY[0x277D85000] & *v5) + qword_27E15B6E0 + 24)) != 0;
    }
  }

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_23B578DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23B59D8F0();
  v3[5] = sub_23B59D8E0();
  v5 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B578E4C, v5, v4);
}

void *sub_23B578E4C()
{
  v1 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for UIPonderingTextEffectTextChunkAdapter(0, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v7 = v5;
    v8 = v1;

    v9 = *(v7 + *((*MEMORY[0x277D85000] & *v7) + qword_27E15B650 + 24));
  }

  else
  {
    type metadata accessor for UIReplacementTextEffectTextChunkAdapter(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
    result = swift_dynamicCastClass();
    if (!result)
    {
      sub_23B59D9B0();
      MEMORY[0x23EE9E960](0xD000000000000046, 0x800000023B5A0720);
      swift_getObjectType();
      v13 = sub_23B59DB20();
      MEMORY[0x23EE9E960](v13);

      MEMORY[0x23EE9E960](46, 0xE100000000000000);
      return sub_23B59DA40();
    }

    v11 = *(result + *((*MEMORY[0x277D85000] & *result) + qword_27E15B6E0 + 24));
    if (!v11)
    {
      __break(1u);
      return result;
    }

    v9 = v11;
  }

  v12 = *(v0 + 8);

  return v12(v9);
}

uint64_t sub_23B579104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  sub_23B59D8F0();
  v4[5] = sub_23B59D8E0();
  v6 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B5791A0, v6, v5);
}

uint64_t sub_23B5791A0()
{
  v1 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for UIReplacementTextEffectTextChunkAdapter(0, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = v1;

    v8 = *(v6 + *((*MEMORY[0x277D85000] & *v6) + qword_27E15B6E0 + 32));

    v9 = *(v0 + 8);

    return v9(v8);
  }

  else
  {
    sub_23B59D9B0();
    MEMORY[0x23EE9E960](0xD000000000000055, 0x800000023B5A0610);
    swift_getObjectType();
    v11 = sub_23B59DB20();
    MEMORY[0x23EE9E960](v11);

    MEMORY[0x23EE9E960](46, 0xE100000000000000);
    return sub_23B59DA40();
  }
}

unint64_t sub_23B579400(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8B0, &qword_23B59F5D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8A0, &qword_23B59F5C0);
    v7 = sub_23B59DA80();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23B57AC04(v9, v5, &qword_27E15A8B0, &qword_23B59F5D0);
      result = sub_23B576BAC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_23B59D720();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_23B57ABEC(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_23B5795F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8A8, &qword_23B59F5C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A898, &qword_23B59F5B8);
    v7 = sub_23B59DA80();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23B57AC04(v9, v5, &qword_27E15A8A8, &qword_23B59F5C8);
      result = sub_23B576C44(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for PlatformIntelligenceTextEffectID(0);
      sub_23B57AB88(v5, v14 + *(*(v15 - 8) + 72) * v13);
      v16 = v7[7];
      v17 = sub_23B59D720();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
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

void sub_23B5797F8()
{
  v1 = qword_27E15A830;
  v2 = MEMORY[0x277D84F90];
  *(v0 + v1) = sub_23B579400(MEMORY[0x277D84F90]);
  v3 = qword_27E15A828;
  *(v0 + v3) = sub_23B5795F0(v2);
  sub_23B59DA40();
  __break(1u);
}

id sub_23B57988C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *v2;
  v6 = *MEMORY[0x277D85000];
  v7 = qword_27E15A830;
  v8 = MEMORY[0x277D84F90];
  *(v2 + v7) = sub_23B579400(MEMORY[0x277D84F90]);
  v9 = qword_27E15A828;
  *(v2 + v9) = sub_23B5795F0(v8);
  *(v2 + qword_27E15A838) = a1;
  type metadata accessor for UITextEffectViewSourceAdapter(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58), v10);
  v11 = swift_unknownObjectRetain_n();
  v12 = sub_23B5708DC(v11);
  *(v2 + qword_27E15A840) = v12;
  objc_allocWithZone(sub_23B59D750());
  v13 = v12;
  v14 = sub_23B59D740();
  *(v2 + qword_27E15A818) = v14;
  [v14 setClipsToBounds_];
  v16.receiver = v2;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

uint64_t sub_23B579A24()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_23B579A74()
{
  result = qword_27E15A848;
  if (!qword_27E15A848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E15A848);
  }

  return result;
}

void sub_23B579AC0(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

id sub_23B579B7C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_23B579C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23B579D38(uint64_t *a1, unsigned int a2)
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

uint64_t sub_23B579D94(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23B579EA8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B579F54(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B57A020(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B59D350();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23B57A0A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B59D350();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23B57A110(uint64_t a1)
{
  result = sub_23B59D350();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B57A204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23B57A268(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_23B57A2B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23B57A308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_23B59D350();
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23B57A3DC(uint64_t a1)
{
  result = sub_23B59D350();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23B57A4D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B57A4F0(uint64_t result, int a2, int a3)
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

uint64_t sub_23B57A530()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B57A578()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23B56C32C;

  return sub_23B5723C8(v4, v5, v6, v2, v3);
}

uint64_t sub_23B57A610(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23B57A674(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23B57A6D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B57A70C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B56C32C;

  return sub_23B56BCC4(a1, v4);
}

uint64_t sub_23B57A7C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B56B770;

  return sub_23B56BCC4(a1, v4);
}

uint64_t sub_23B57A87C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23B57A8C4()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B57A90C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23B56C32C;

  return sub_23B571D40(v2, v3, v5, v4);
}

uint64_t sub_23B57A9D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23B56B770;

  return sub_23B570F40(v2, v3, v4);
}

uint64_t objectdestroy_80Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23B57AAD0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23B56C32C;

  return sub_23B570ABC(v2, v3, v4);
}

uint64_t sub_23B57AB88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatformIntelligenceTextEffectID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B57ABEC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23B57AC04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23B57AC78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B57AC98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void sub_23B57ACE8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_23B57AD70()
{
  v0 = sub_23B59D660();
  __swift_allocate_value_buffer(v0, qword_27E15BA88);
  __swift_project_value_buffer(v0, qword_27E15BA88);
  return sub_23B59D650();
}

uint64_t sub_23B57ADF0()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_23B59D630();
  swift_allocObject();
  *(v0 + 16) = sub_23B59D620();
  sub_23B580BC4(&qword_27E15BBB0, &unk_23B59F6B8);

  sub_23B59D600();

  sub_23B580BC4(qword_27E15BBB8, &unk_23B59F690);

  sub_23B59D610();

  return v0;
}

uint64_t sub_23B57AEE0(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  v3 = sub_23B59D570();
  v2[39] = v3;
  v2[40] = *(v3 - 8);
  v2[41] = swift_task_alloc();
  v4 = sub_23B59D580();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A978, &qword_23B59F748);
  v2[47] = swift_task_alloc();
  v5 = sub_23B59D540();
  v2[48] = v5;
  v2[49] = *(v5 - 8);
  v2[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  v2[51] = swift_task_alloc();
  v6 = sub_23B59D520();
  v2[52] = v6;
  v2[53] = *(v6 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = sub_23B59D8F0();
  v2[56] = sub_23B59D8E0();
  v8 = sub_23B59D8B0();
  v2[57] = v8;
  v2[58] = v7;

  return MEMORY[0x2822009F8](sub_23B57B174, v8, v7);
}

uint64_t sub_23B57B174()
{
  v56 = v0;
  if (qword_27E15BA80 != -1)
  {
    swift_once();
  }

  v1 = v0;
  v2 = *(v0 + 296);
  v3 = sub_23B59D660();
  *(v0 + 472) = __swift_project_value_buffer(v3, qword_27E15BA88);
  v4 = v2;
  v5 = sub_23B59D640();
  v6 = sub_23B59D940();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 296);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v55 = v9;
    *v8 = 136315138;
    v10 = v7;
    v11 = [v10 description];
    v12 = sub_23B59D820();
    v14 = v13;

    v15 = sub_23B57F234(v12, v14, &v55);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_23B568000, v5, v6, "IdentityDocumentPresentmentController performRequest called with request %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x23EE9F1D0](v9, -1, -1);
    MEMORY[0x23EE9F1D0](v8, -1, -1);
  }

  v54 = v1;
  v16 = [*(v1 + 296) mobileDocumentRequests];
  type metadata accessor for WKIdentityDocumentPresentmentMobileDocumentRequest(0);
  v17 = sub_23B59D890();

  if (v17 >> 62)
  {
    v18 = sub_23B59DA50();
    if (v18)
    {
      goto LABEL_7;
    }

LABEL_17:

    v26 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_17;
  }

LABEL_7:
  v55 = MEMORY[0x277D84F90];
  v19 = sub_23B57F860(0, v18 & ~(v18 >> 63), 0);
  if (v18 < 0)
  {
    __break(1u);
    return MEMORY[0x282200430](v19, v20, v21, v22, v23);
  }

  v24 = 0;
  v25 = v1;
  v26 = v55;
  v27 = *(v1 + 424);
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x23EE9EAD0](v24, v17);
    }

    else
    {
      v28 = *(v17 + 8 * v24 + 32);
    }

    sub_23B56FFCC(v28, *(v25 + 432));
    v55 = v26;
    v30 = *(v26 + 16);
    v29 = *(v26 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_23B57F860((v29 > 1), v30 + 1, 1);
      v25 = v1;
      v26 = v55;
    }

    v31 = *(v25 + 432);
    v32 = *(v25 + 416);
    ++v24;
    *(v26 + 16) = v30 + 1;
    (*(v27 + 32))(v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v30, v31, v32);
  }

  while (v18 != v24);

LABEL_18:

  v33 = sub_23B59D640();
  v34 = sub_23B59D940();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = v54;
    v36 = v54[52];
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v55 = v38;
    *v37 = 136315138;
    v39 = MEMORY[0x23EE9E9A0](v26, v36);
    v41 = sub_23B57F234(v39, v40, &v55);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_23B568000, v33, v34, "IdentityDocumentPresentmentController build converted request %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x23EE9F1D0](v38, -1, -1);
    MEMORY[0x23EE9F1D0](v37, -1, -1);
  }

  else
  {

    v35 = v54;
  }

  v42 = v35[51];
  v44 = v35[37];
  v43 = v35[38];
  v45 = sub_23B59D910();
  (*(*(v45 - 8) + 56))(v42, 1, 1, v45);
  v46 = v44;

  v47 = sub_23B59D8E0();
  v48 = swift_allocObject();
  v49 = MEMORY[0x277D85700];
  v48[2] = v47;
  v48[3] = v49;
  v48[4] = v43;
  v48[5] = v26;
  v48[6] = v46;
  v50 = sub_23B57D2B8(0, 0, v42, &unk_23B59F758, v48);
  v35[60] = v50;
  *(v43 + 24) = v50;

  v51 = swift_task_alloc();
  v35[61] = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8D8, &unk_23B59F640);
  v35[62] = v52;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8E0, &qword_23B59F9C0);
  v35[63] = v22;
  *v51 = v35;
  v51[1] = sub_23B57B6F4;
  v23 = MEMORY[0x277D84950];
  v19 = v35 + 10;
  v20 = v50;
  v21 = v52;

  return MEMORY[0x282200430](v19, v20, v21, v22, v23);
}

uint64_t sub_23B57B6F4()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  v3 = *(v2 + 464);
  v4 = *(v2 + 456);
  if (v0)
  {
    v5 = sub_23B57C2D4;
  }

  else
  {
    v5 = sub_23B57B830;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23B57B830()
{
  v1 = *(v0 + 392);

  sub_23B57A610(v0 + 80, v0 + 120);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v4 = *(v0 + 400);
    v6 = *(v0 + 384);
    v5 = *(v0 + 392);
    v7 = *(v0 + 376);
    v3(v7, 0, 1, v6);
    (*(v5 + 32))(v4, v7, v6);
    v8 = sub_23B59D530();
    v10 = v9;
    v11 = objc_allocWithZone(WKIdentityDocumentPresentmentResponse);
    v12 = sub_23B59D810();
    v13 = sub_23B59D2E0();
    v14 = [v11 initWithProtocolString:v12 responseData:v13];

    sub_23B56C05C(v8, v10);

    (*(v5 + 8))(v4, v6);
    __swift_destroy_boxed_opaque_existential_1((v0 + 80));

    v15 = *(v0 + 8);

    return v15(v14);
  }

  v17 = *(v0 + 376);
  v3(v17, 1, 1, *(v0 + 384));
  sub_23B57A674(v17, &qword_27E15A978, &qword_23B59F748);
  v18 = sub_23B59D640();
  v19 = sub_23B59D950();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_23B568000, v18, v19, "IdentityDocumentPresentmentController unexpectedly received a response that is not of type ISO18013MobileDocumentResponse", v20, 2u);
    MEMORY[0x23EE9F1D0](v20, -1, -1);
  }

  type metadata accessor for WKIdentityDocumentPresentmentError(0);
  *(v0 + 288) = 1;
  sub_23B57FBC0(MEMORY[0x277D84F90]);
  sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError, &unk_23B59FA50);
  sub_23B59D280();
  v21 = *(v0 + 280);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  *(v0 + 160) = v21;
  v22 = v21;
  if (swift_dynamicCast())
  {
    v24 = *(v0 + 360);
    v23 = *(v0 + 368);
    v25 = *(v0 + 344);
    v26 = *(v0 + 352);
    v27 = *(v0 + 328);
    v28 = *(v0 + 336);
    v29 = *(v0 + 320);
    v72 = *(v0 + 312);

    v69 = *(v25 + 32);
    v69(v24, v23, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A988, &qword_23B59F760);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B59F620;
    *(inited + 32) = sub_23B59D820();
    *(inited + 40) = v31;
    *(inited + 48) = sub_23B59D550();
    *(inited + 56) = v32;
    v74 = sub_23B57FD04(inited);
    swift_setDeallocating();
    sub_23B57A674(inited + 32, &qword_27E15A990, &qword_23B59F768);
    v33 = *(v25 + 16);
    v33(v26, v24, v28);
    v71 = *(v29 + 104);
    v71(v27, *MEMORY[0x277CD2BD8], v72);
    sub_23B580B08(&qword_27E15A998, MEMORY[0x277CD2BE8], MEMORY[0x277CD2BF0]);
    v34 = swift_allocError();
    v70 = v33;
    v33(v35, v26, v28);
    LOBYTE(v26) = sub_23B59D560();
    v36 = v72;
    v73 = *(v29 + 8);
    v73(v27, v36);

    if (v26)
    {
      v37 = *(v0 + 360);
      v38 = *(v0 + 336);
      v39 = *(*(v0 + 344) + 8);
      v39(*(v0 + 352), v38);
      *(v0 + 272) = 0;
      sub_23B57D574(v74);

      sub_23B59D280();
    }

    else
    {
      v40 = *(v0 + 352);
      v42 = *(v0 + 328);
      v41 = *(v0 + 336);
      v43 = *(v0 + 312);
      v71(v42, *MEMORY[0x277CD2BC8], v43);
      v44 = swift_allocError();
      v70(v45, v40, v41);
      LOBYTE(v40) = sub_23B59D560();
      v73(v42, v43);

      if (v40)
      {
        v37 = *(v0 + 360);
        v38 = *(v0 + 336);
        v39 = *(*(v0 + 344) + 8);
        v39(*(v0 + 352), v38);
        *(v0 + 256) = 1;
        sub_23B57D574(v74);

        sub_23B59D280();
      }

      else
      {
        v46 = *(v0 + 352);
        v48 = *(v0 + 328);
        v47 = *(v0 + 336);
        v49 = *(v0 + 312);
        v71(v48, *MEMORY[0x277CD2BD0], v49);
        v50 = swift_allocError();
        v70(v51, v46, v47);
        LOBYTE(v46) = sub_23B59D560();
        v73(v48, v49);

        if (v46)
        {
          v37 = *(v0 + 360);
          v38 = *(v0 + 336);
          v39 = *(*(v0 + 344) + 8);
          v39(*(v0 + 352), v38);
          *(v0 + 240) = 2;
          sub_23B57D574(v74);

          sub_23B59D280();
        }

        else
        {
          v52 = *(v0 + 352);
          v54 = *(v0 + 328);
          v53 = *(v0 + 336);
          v55 = *(v0 + 312);
          v71(v54, *MEMORY[0x277CD2BE0], v55);
          v56 = swift_allocError();
          v70(v57, v52, v53);
          LOBYTE(v52) = sub_23B59D560();
          v73(v54, v55);

          if ((v52 & 1) == 0)
          {
            v59 = *(v0 + 344);
            v60 = *(v0 + 352);
            v62 = *(v0 + 328);
            v61 = *(v0 + 336);
            v63 = *(v0 + 312);
            v71(v62, *MEMORY[0x277CD2BC0], v63);
            v64 = swift_allocError();
            v69(v65, v60, v61);
            LOBYTE(v60) = sub_23B59D560();
            v73(v62, v63);

            v66 = (v59 + 8);
            v67 = *(v0 + 360);
            v68 = *(v0 + 336);
            if (v60)
            {
              *(v0 + 208) = 4;
            }

            else
            {
              *(v0 + 192) = 0;
            }

            sub_23B57D574(v74);

            sub_23B59D280();
            swift_willThrow();
            (*v66)(v67, v68);
            v21 = *(v0 + 160);
            goto LABEL_18;
          }

          v37 = *(v0 + 360);
          v38 = *(v0 + 336);
          v39 = *(*(v0 + 344) + 8);
          v39(*(v0 + 352), v38);
          *(v0 + 224) = 3;
          sub_23B57D574(v74);

          sub_23B59D280();
        }
      }
    }

    swift_willThrow();
    v39(v37, v38);
    v21 = *(v0 + 160);
  }

  else
  {

    *(v0 + 176) = 0;
    sub_23B57FBC0(MEMORY[0x277D84F90]);
    sub_23B59D280();
    swift_willThrow();
  }

LABEL_18:

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_23B57C2D4()
{

  v1 = *(v0 + 512);
  *(v0 + 160) = v1;
  v2 = v1;
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 360);
    v3 = *(v0 + 368);
    v5 = *(v0 + 344);
    v6 = *(v0 + 328);
    v7 = *(v0 + 336);
    v8 = *(v0 + 320);
    v51 = *(v0 + 352);
    v52 = *(v0 + 312);

    v48 = *(v5 + 32);
    v48(v4, v3, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A988, &qword_23B59F760);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B59F620;
    *(inited + 32) = sub_23B59D820();
    *(inited + 40) = v10;
    *(inited + 48) = sub_23B59D550();
    *(inited + 56) = v11;
    v54 = sub_23B57FD04(inited);
    swift_setDeallocating();
    sub_23B57A674(inited + 32, &qword_27E15A990, &qword_23B59F768);
    v12 = *(v5 + 16);
    v12(v51, v4, v7);
    v50 = *(v8 + 104);
    v50(v6, *MEMORY[0x277CD2BD8], v52);
    sub_23B580B08(&qword_27E15A998, MEMORY[0x277CD2BE8], MEMORY[0x277CD2BF0]);
    v13 = swift_allocError();
    v49 = v12;
    v12(v14, v51, v7);
    LOBYTE(v5) = sub_23B59D560();
    v15 = *(v8 + 8);
    v15(v6, v52);

    if (v5)
    {
      v16 = *(v0 + 360);
      v17 = *(v0 + 336);
      v18 = *(*(v0 + 344) + 8);
      v18(*(v0 + 352), v17);
      type metadata accessor for WKIdentityDocumentPresentmentError(0);
      *(v0 + 272) = 0;
      sub_23B57D574(v54);

      sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError, &unk_23B59FA50);
      sub_23B59D280();
    }

    else
    {
      v19 = *(v0 + 352);
      v21 = *(v0 + 328);
      v20 = *(v0 + 336);
      v22 = *(v0 + 312);
      v50(v21, *MEMORY[0x277CD2BC8], v22);
      v23 = swift_allocError();
      v49(v24, v19, v20);
      LOBYTE(v19) = sub_23B59D560();
      v15(v21, v22);

      if (v19)
      {
        v16 = *(v0 + 360);
        v17 = *(v0 + 336);
        v18 = *(*(v0 + 344) + 8);
        v18(*(v0 + 352), v17);
        type metadata accessor for WKIdentityDocumentPresentmentError(0);
        *(v0 + 256) = 1;
        sub_23B57D574(v54);

        sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError, &unk_23B59FA50);
        sub_23B59D280();
      }

      else
      {
        v25 = *(v0 + 352);
        v27 = *(v0 + 328);
        v26 = *(v0 + 336);
        v28 = *(v0 + 312);
        v50(v27, *MEMORY[0x277CD2BD0], v28);
        v29 = swift_allocError();
        v49(v30, v25, v26);
        LOBYTE(v25) = sub_23B59D560();
        v15(v27, v28);

        if (v25)
        {
          v16 = *(v0 + 360);
          v17 = *(v0 + 336);
          v18 = *(*(v0 + 344) + 8);
          v18(*(v0 + 352), v17);
          type metadata accessor for WKIdentityDocumentPresentmentError(0);
          *(v0 + 240) = 2;
          sub_23B57D574(v54);

          sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError, &unk_23B59FA50);
          sub_23B59D280();
        }

        else
        {
          v31 = *(v0 + 352);
          v33 = *(v0 + 328);
          v32 = *(v0 + 336);
          v34 = *(v0 + 312);
          v50(v33, *MEMORY[0x277CD2BE0], v34);
          v35 = swift_allocError();
          v49(v36, v31, v32);
          LOBYTE(v31) = sub_23B59D560();
          v15(v33, v34);

          if ((v31 & 1) == 0)
          {
            v39 = *(v0 + 352);
            v53 = *(v0 + 344);
            v41 = *(v0 + 328);
            v40 = *(v0 + 336);
            v42 = *(v0 + 312);
            v50(v41, *MEMORY[0x277CD2BC0], v42);
            v43 = swift_allocError();
            v48(v44, v39, v40);
            v45 = sub_23B59D560();
            v15(v41, v42);

            v46 = *(v0 + 360);
            v47 = *(v0 + 336);
            type metadata accessor for WKIdentityDocumentPresentmentError(0);
            if (v45)
            {
              *(v0 + 208) = 4;
            }

            else
            {
              *(v0 + 192) = 0;
            }

            sub_23B57D574(v54);

            sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError, &unk_23B59FA50);
            sub_23B59D280();
            swift_willThrow();
            (*(v53 + 8))(v46, v47);
            v1 = *(v0 + 160);
            goto LABEL_12;
          }

          v16 = *(v0 + 360);
          v17 = *(v0 + 336);
          v18 = *(*(v0 + 344) + 8);
          v18(*(v0 + 352), v17);
          type metadata accessor for WKIdentityDocumentPresentmentError(0);
          *(v0 + 224) = 3;
          sub_23B57D574(v54);

          sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError, &unk_23B59FA50);
          sub_23B59D280();
        }
      }
    }

    swift_willThrow();
    v18(v16, v17);
    v1 = *(v0 + 160);
  }

  else
  {

    type metadata accessor for WKIdentityDocumentPresentmentError(0);
    *(v0 + 176) = 0;
    sub_23B57FBC0(MEMORY[0x277D84F90]);
    sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError, &unk_23B59FA50);
    sub_23B59D280();
    swift_willThrow();
  }

LABEL_12:

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_23B57CC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = sub_23B59D2D0();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  sub_23B59D8F0();
  v6[9] = sub_23B59D8E0();
  v9 = sub_23B59D8B0();
  v6[10] = v9;
  v6[11] = v8;

  return MEMORY[0x2822009F8](sub_23B57CD6C, v9, v8);
}

uint64_t sub_23B57CD6C()
{
  v1 = v0[5];
  v2 = sub_23B57D0EC(v0[4]);
  v0[12] = v2;
  v3 = [v1 origin];
  sub_23B59D2C0();

  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_23B57CE58;
  v5 = v0[8];
  v6 = v0[2];

  return MEMORY[0x282122940](v6, v2, v5);
}

uint64_t sub_23B57CE58()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_23B57D080;
  }

  else
  {
    v8 = sub_23B57D014;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23B57D014()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B57D080()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B57D0EC(uint64_t a1)
{
  v2 = sub_23B59D520();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_23B57F880(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_23B57F880((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = MEMORY[0x277CD2BB0];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v18);
      v9(boxed_opaque_existential_0Tm, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_23B57ABEC(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_23B57D2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_23B57AC04(a3, v22 - v9, &qword_27E15A970, &qword_23B59F4E0);
  v11 = sub_23B59D910();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_23B57A674(v10, &qword_27E15A970, &qword_23B59F4E0);
  }

  else
  {
    sub_23B59D900();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_23B59D8B0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23B59D830() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8D8, &unk_23B59F640);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_23B57A674(a3, &qword_27E15A970, &qword_23B59F4E0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23B57A674(a3, &qword_27E15A970, &qword_23B59F4E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8D8, &unk_23B59F640);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

unint64_t sub_23B57D574(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A9A8, &unk_23B59FB10);
    v2 = sub_23B59DA80();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_23B580B50(&v22, v24);
        sub_23B580B50(v24, v25);
        sub_23B580B50(v25, &v23);
        result = sub_23B57F7DC(v16, v15, sub_23B57EFA4);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_23B580B50(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_23B580B50(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_23B57D7E0()
{

  sub_23B5809C8(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_23B57D828(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  type metadata accessor for WKIdentityDocumentPresentmentRawRequest();
  sub_23B59D890();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A958, &qword_23B59F6F0);
  return sub_23B59D8D0();
}

uint64_t sub_23B57D898@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_23B59D590();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = [v7 requestProtocol];
  v9 = sub_23B59D820();
  v11 = v10;

  if (v9 == 0x2E6F73692E67726FLL && v11 == 0xEC000000636F646DLL)
  {

    goto LABEL_16;
  }

  v13 = sub_23B59DAB0();

  if (v13)
  {
LABEL_16:
    (*(v4 + 104))(v6, *MEMORY[0x277CD2BF8], v3);
    v20 = [v7 requestData];
    sub_23B59D2F0();

    v21 = v24;
    sub_23B59D5A0();
    v22 = sub_23B59D5B0();
    (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  }

  if (qword_27E15BA80 != -1)
  {
    swift_once();
  }

  v14 = sub_23B59D660();
  __swift_project_value_buffer(v14, qword_27E15BA88);
  v15 = sub_23B59D640();
  v16 = sub_23B59D940();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_23B568000, v15, v16, "IdentityDocumentPresentmentController raw request call back encountered a non-ISO request. Skipping", v17, 2u);
    MEMORY[0x23EE9F1D0](v17, -1, -1);
  }

  v18 = sub_23B59D5B0();
  (*(*(v18 - 8) + 56))(v24, 1, 1, v18);
}

id sub_23B57DC18()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = [Strong presentationAnchor];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_23B57DC70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23B572B0C;

  return sub_23B57FE2C();
}

uint64_t variable initialization expression of WKIdentityDocumentPresentmentController.base()
{
  _s4BaseCMa();
  v0 = swift_allocObject();
  sub_23B57ADF0();
  return v0;
}

uint64_t sub_23B57DEC4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_23B59D8F0();
  v2[4] = sub_23B59D8E0();
  v4 = sub_23B59D8B0();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_23B57DF5C, v4, v3);
}

uint64_t sub_23B57DF5C()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_23B57E000;
  v2 = *(v0 + 16);

  return sub_23B57AEE0(v2);
}

uint64_t sub_23B57E000(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_23B57E190;
  }

  else
  {
    v4[9] = a1;
    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_23B57E128;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23B57E128()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_23B57E190()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B57E37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_23B59D8F0();
  v3[6] = sub_23B59D8E0();
  v5 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B57E41C, v5, v4);
}

uint64_t sub_23B57E41C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];

  v0[7] = _Block_copy(v1);
  v4 = v3;
  v5 = v2;
  v0[8] = sub_23B59D8E0();
  v7 = sub_23B59D8B0();
  v0[9] = v7;
  v0[10] = v6;

  return MEMORY[0x2822009F8](sub_23B57E4D0, v7, v6);
}

uint64_t sub_23B57E4D0()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_23B57E574;
  v2 = *(v0 + 16);

  return sub_23B57AEE0(v2);
}

uint64_t sub_23B57E574(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v5 = *(v3 + 80);
  v6 = *(v3 + 72);
  if (v1)
  {
    v7 = sub_23B57E768;
  }

  else
  {
    v7 = sub_23B57E6B8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23B57E6B8()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[2];

  v4 = v0[12];
  if (v1)
  {
    v5 = v0[7];
    v5[2](v5, v0[12], 0);

    _Block_release(v5);
  }

  else
  {
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_23B57E768()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[2];

  v4 = v0[13];
  if (v1)
  {
    v5 = v0[7];
    v6 = sub_23B59D290();

    (v5)[2](v5, 0, v6);
    _Block_release(v5);
  }

  else
  {
  }

  v7 = v0[1];

  return v7();
}

void __swiftcall WKIdentityDocumentPresentmentController.init()(WKIdentityDocumentPresentmentController *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata(retstr));

  [v1 init];
}

id WKIdentityDocumentPresentmentController.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR___WKIdentityDocumentPresentmentController_base;
  _s4BaseCMa();
  v3 = swift_allocObject();
  sub_23B57ADF0();
  *&v1[v2] = v3;
  v5.receiver = v1;
  v5.super_class = WKIdentityDocumentPresentmentController;
  return objc_msgSendSuper2(&v5, sel_init);
}

unint64_t type metadata accessor for WKIdentityDocumentPresentmentController()
{
  result = qword_27E15BAA0[0];
  if (!qword_27E15BAA0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27E15BAA0);
  }

  return result;
}

uint64_t sub_23B57EB20(uint64_t a1)
{
  v2 = sub_23B580B08(&qword_27E15A9F0, type metadata accessor for WKIdentityDocumentPresentmentError, &unk_23B59F880);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_23B57EB8C(uint64_t a1)
{
  v2 = sub_23B580B08(&qword_27E15A9F0, type metadata accessor for WKIdentityDocumentPresentmentError, &unk_23B59F880);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_23B57EBFC(uint64_t a1)
{
  v2 = sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError, &unk_23B59FA50);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_23B57EC88(uint64_t a1)
{
  v2 = sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError, &unk_23B59FA50);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_23B57ECF4(uint64_t a1)
{
  v2 = sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError, &unk_23B59FA50);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_23B57ED60(void *a1, uint64_t a2)
{
  v4 = sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError, &unk_23B59FA50);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_23B57EE14(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError, &unk_23B59FA50);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_23B57EE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23B59DB00();
  sub_23B59D7F0();
  return sub_23B59DB10();
}

void *sub_23B57EEF0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23B57EF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError, &unk_23B59FA50);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

unint64_t sub_23B57EFA4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23B59DAB0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_23B57F05C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A968, &unk_23B59F700);
  v10 = *(sub_23B59D5B0() - 8);
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
  v15 = *(sub_23B59D5B0() - 8);
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

unint64_t sub_23B57F234(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23B57F300(v11, 0, 0, 1, a1, a2);
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
    sub_23B5806A4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_23B57F300(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23B57F40C(a5, a6);
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
    result = sub_23B59D9E0();
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

void *sub_23B57F40C(uint64_t a1, unint64_t a2)
{
  v3 = sub_23B57F458(a1, a2);
  sub_23B57F588(&unk_284E1AC98);
  return v3;
}

void *sub_23B57F458(uint64_t a1, unint64_t a2)
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

  v6 = sub_23B57F674(v5, 0);
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

  result = sub_23B59D9E0();
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
        v10 = sub_23B59D870();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23B57F674(v10, 0);
        result = sub_23B59D9A0();
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

uint64_t sub_23B57F588(uint64_t result)
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

  result = sub_23B57F6E8(result, v11, 1, v3);
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

void *sub_23B57F674(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A9A0, &unk_23B59F770);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23B57F6E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A9A0, &unk_23B59F770);
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

uint64_t sub_23B57F7DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_23B59DB00();
  sub_23B59D840();
  v5 = sub_23B59DB10();

  return a3(a1, a2, v5);
}

void *sub_23B57F860(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23B57F8A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23B57F880(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23B57FA78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23B57F8A0(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A9D0, &qword_23B59F7A0);
  v10 = *(sub_23B59D520() - 8);
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
  v15 = *(sub_23B59D520() - 8);
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

void *sub_23B57FA78(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A9C0, &qword_23B59F790);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A9C8, &qword_23B59F798);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_23B57FBC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A9A8, &unk_23B59FB10);
    v3 = sub_23B59DA80();
    v4 = a1 + 32;

    while (1)
    {
      sub_23B57AC04(v4, &v13, &qword_27E15A9B8, &unk_23B59FB20);
      v5 = v13;
      v6 = v14;
      result = sub_23B57F7DC(v13, v14, sub_23B57EFA4);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23B580B50(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_23B57FD04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A9B0, &unk_23B59F780);
    v3 = sub_23B59DA80();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23B57F7DC(v5, v6, sub_23B57EFA4);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_23B57FE2C()
{
  v1[19] = v0;
  v1[20] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A950, &qword_23B59F6E8);
  v1[21] = swift_task_alloc();
  v2 = sub_23B59D5B0();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A958, &qword_23B59F6F0);
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  sub_23B59D8F0();
  v1[29] = sub_23B59D8E0();
  v5 = sub_23B59D8B0();
  v1[30] = v5;
  v1[31] = v4;

  return MEMORY[0x2822009F8](sub_23B57FFF4, v5, v4);
}

uint64_t sub_23B57FFF4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[32] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[27];
    v3 = v0[28];
    v5 = v0[26];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_23B5802E4;
    swift_continuation_init();
    v0[17] = v5;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A960, &qword_23B59F6F8);
    sub_23B59D8C0();
    (*(v4 + 32))(boxed_opaque_existential_0Tm, v3, v5);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_23B57D828;
    v0[13] = &block_descriptor;
    [v2 fetchRawRequestsWithCompletionHandler_];
    (*(v4 + 8))(boxed_opaque_existential_0Tm, v5);

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    if (qword_27E15BA80 != -1)
    {
      swift_once();
    }

    v7 = sub_23B59D660();
    __swift_project_value_buffer(v7, qword_27E15BA88);
    v8 = sub_23B59D640();
    v9 = sub_23B59D950();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_23B568000, v8, v9, "IdentityDocumentPresentmentController delegate is not implemented, sending no raw requests", v10, 2u);
      MEMORY[0x23EE9F1D0](v10, -1, -1);
    }

    v11 = v0[1];
    v12 = MEMORY[0x277D84F90];

    return v11(v12);
  }
}

uint64_t sub_23B5802E4()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);

  return MEMORY[0x2822009F8](sub_23B5803EC, v2, v1);
}

uint64_t sub_23B5803EC()
{
  v28 = v0;

  v1 = v0[18];
  swift_unknownObjectRelease();
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23B59DA50())
  {
    v3 = 0;
    v4 = v0[23];
    v25 = v1 & 0xFFFFFFFFFFFFFF8;
    v26 = v1 & 0xC000000000000001;
    v24 = (v4 + 48);
    v22 = v4;
    v5 = (v4 + 32);
    v6 = MEMORY[0x277D84F90];
    v23 = v1;
    while (1)
    {
      if (v26)
      {
        v7 = MEMORY[0x23EE9EAD0](v3, v1);
      }

      else
      {
        if (v3 >= *(v25 + 16))
        {
          goto LABEL_18;
        }

        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v11 = v0[21];
      v10 = v0[22];
      v27 = v7;
      sub_23B57D898(&v27, v11);

      if ((*v24)(v11, 1, v10) == 1)
      {
        sub_23B57A674(v0[21], &qword_27E15A950, &qword_23B59F6E8);
      }

      else
      {
        v13 = v0[24];
        v12 = v0[25];
        v14 = v0[22];
        v15 = *v5;
        (*v5)(v12, v0[21], v14);
        v15(v13, v12, v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_23B57F05C(0, *(v6 + 2) + 1, 1, v6);
        }

        v17 = *(v6 + 2);
        v16 = *(v6 + 3);
        if (v17 >= v16 >> 1)
        {
          v6 = sub_23B57F05C((v16 > 1), v17 + 1, 1, v6);
        }

        v18 = v0[24];
        v19 = v0[22];
        *(v6 + 2) = v17 + 1;
        v15(&v6[((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v17], v18, v19);
        v1 = v23;
      }

      ++v3;
      if (v9 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_21:

  v20 = v0[1];

  return v20(v6);
}

uint64_t sub_23B5806A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_23B5807FC()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23B580844()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23B56C32C;

  return sub_23B57E37C(v2, v3, v4);
}

uint64_t sub_23B5808FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23B56B770;

  return sub_23B56B688(a1, v4, v5, v6);
}

uint64_t sub_23B5809F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23B580A40(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23B56B770;

  return sub_23B57CC74(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_23B580B08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_23B580B50(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23B580BC4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s4BaseCMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B580E14()
{
  result = qword_27E15AA18;
  if (!qword_27E15AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15AA18);
  }

  return result;
}

char *sub_23B580F00(uint64_t a1)
{
  v79 = sub_23B59D4E0();
  v2 = *(v79 - 8);
  v3 = MEMORY[0x28223BE20](v79);
  v77 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v76 = &v60 - v5;
  sub_23B59D470();
  v61 = sub_23B59D810();

  v62 = a1;
  v6 = sub_23B59D450();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AA90, &qword_23B59F980);
  result = sub_23B59DA60();
  v8 = 0;
  v9 = *(v6 + 64);
  v63 = v6 + 64;
  v66 = result;
  v67 = v6;
  v10 = 1 << *(v6 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;
  v78 = v2;
  v74 = v2 + 8;
  v75 = v2 + 16;
  v65 = result + 64;
  v64 = v13;
  v14 = v76;
  v15 = v79;
  if (v12)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v12));
      v68 = (v12 - 1) & v12;
LABEL_11:
      v69 = v8;
      v19 = v16 | (v8 << 6);
      v20 = *(v67 + 56);
      v21 = (*(v67 + 48) + 16 * v19);
      v22 = v21[1];
      v71 = *v21;
      v72 = v19;
      v23 = *(v20 + 8 * v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AA98, &qword_23B59F988);
      v24 = sub_23B59DA60();
      v25 = v24;
      v26 = *(v23 + 64);
      v73 = v23 + 64;
      v27 = 1 << *(v23 + 32);
      v28 = v27 < 64 ? ~(-1 << v27) : -1;
      v29 = v28 & v26;
      v30 = (v27 + 63) >> 6;
      v80 = v24 + 64;
      v70 = v22;

      v82 = v23;

      v31 = 0;
      v81 = v25;
      if (v29)
      {
        break;
      }

LABEL_16:
      v33 = v31;
      while (1)
      {
        v31 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
          goto LABEL_29;
        }

        if (v31 >= v30)
        {
          break;
        }

        v34 = *(v73 + 8 * v31);
        ++v33;
        if (v34)
        {
          v32 = __clz(__rbit64(v34));
          v83 = (v34 - 1) & v34;
          goto LABEL_21;
        }
      }

      v49 = v72;
      v50 = v66;
      *&v65[(v72 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v72;
      v51 = (v50[6] + 16 * v49);
      v52 = v70;
      *v51 = v71;
      v51[1] = v52;
      *(v50[7] + 8 * v49) = v25;
      v53 = v50[2];
      v47 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v47)
      {
        goto LABEL_31;
      }

      v50[2] = v54;
      v12 = v68;
      v8 = v69;
      v13 = v64;
      if (!v68)
      {
        goto LABEL_6;
      }
    }

    while (1)
    {
      v32 = __clz(__rbit64(v29));
      v83 = (v29 - 1) & v29;
LABEL_21:
      v35 = v32 | (v31 << 6);
      v84 = 16 * v35;
      v36 = *(v82 + 56);
      v37 = (*(v82 + 48) + 16 * v35);
      v38 = v37[1];
      v85 = *v37;
      v39 = v78;
      v40 = *(v78 + 16);
      v40(v14, v36 + *(v78 + 72) * v35, v15);
      v41 = v77;
      v40(v77, v14, v15);
      v42 = objc_allocWithZone(WKIdentityDocumentPresentmentMobileDocumentElementInfo);

      v43 = [v42 initWithIsRetaining_];
      v44 = *(v39 + 8);
      v44(v41, v15);
      result = (v44)(v14, v15);
      v25 = v81;
      *(v80 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      v45 = (v25[6] + v84);
      *v45 = v85;
      v45[1] = v38;
      *(v25[7] + 8 * v35) = v43;
      v46 = v25[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        break;
      }

      v25[2] = v48;
      v29 = v83;
      if (!v83)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_6:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v55 = objc_allocWithZone(swift_getObjCClassFromMetadata(&v86));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7D0, &qword_23B59ED28);
        v56 = sub_23B59D7C0();

        v57 = v61;
        v58 = [v55 initWithDocumentType:v61 namespaces:v56];

        v59 = sub_23B59D480();
        (*(*(v59 - 8) + 8))(v62, v59);
        return v58;
      }

      v18 = *(v63 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v68 = (v18 - 1) & v18;
        goto LABEL_11;
      }
    }

LABEL_29:
    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_23B581450(uint64_t a1)
{
  v2 = sub_23B59D480();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  v9 = sub_23B59D4B0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v42 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v12 = sub_23B59D3F0();
  v13 = *(v12 + 16);
  if (v13)
  {
    v55 = MEMORY[0x277D84F90];
    v14 = v12;
    sub_23B581E68(0, v13, 0);
    result = v14;
    v16 = 0;
    v45 = v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v46 = v13;
    v17 = v55;
    v44 = v10 + 16;
    v43 = (v10 + 8);
    v18 = v42;
    v53 = v3 + 16;
    v40 = v9;
    v41 = v3;
    v38 = (v3 + 8);
    v39 = v10;
    v47 = v14;
    while (v16 < result[2])
    {
      v49 = v17;
      v50 = v16;
      (*(v10 + 16))(v18, &v45[*(v10 + 72) * v16], v9);
      v19 = sub_23B59D4A0();
      v20 = *(v19 + 16);
      if (v20)
      {
        v54 = MEMORY[0x277D84F90];
        sub_23B59DA10();
        v21 = type metadata accessor for WKIdentityDocumentPresentmentMobileDocumentIndividualDocumentRequest(0);
        v22 = *(v3 + 80);
        v48 = v19;
        v23 = v19 + ((v22 + 32) & ~v22);
        v51 = *(v3 + 72);
        v52 = v21;
        v24 = *(v3 + 16);
        v25 = v38;
        do
        {
          v24(v8, v23, v2);
          v24(v6, v8, v2);
          sub_23B580F00(v6);
          (*v25)(v8, v2);
          sub_23B59D9F0();
          sub_23B59DA20();
          sub_23B59DA30();
          sub_23B59DA00();
          v23 += v51;
          --v20;
        }

        while (v20);
        v18 = v42;
        v9 = v40;
        (*v43)(v42, v40);

        v26 = v54;
        v3 = v41;
        v10 = v39;
      }

      else
      {

        (*v43)(v18, v9);
        v26 = MEMORY[0x277D84F90];
      }

      v17 = v49;
      v27 = v50;
      v55 = v49;
      v29 = *(v49 + 16);
      v28 = *(v49 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_23B581E68((v28 > 1), v29 + 1, 1);
        v27 = v50;
        v18 = v42;
        v17 = v55;
      }

      v16 = v27 + 1;
      *(v17 + 16) = v29 + 1;
      *(v17 + 8 * v29 + 32) = v26;
      result = v47;
      if (v16 == v46)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v31 = objc_allocWithZone(swift_getObjCClassFromMetadata(v30));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7E8, &qword_23B59ED40);
    v32 = sub_23B59D880();

    v33 = v37;
    v34 = [v31 initWithDocumentSets:v32 isMandatory:sub_23B59D400() & 1];

    v35 = sub_23B59D410();
    (*(*(v35 - 8) + 8))(v33, v35);
    return v34;
  }

  return result;
}

void *sub_23B5818E0(uint64_t a1)
{
  v45 = sub_23B59D440();
  v51 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23B59D410();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - v8;
  v10 = sub_23B59D500();
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  v43 = a1;
  if (v11)
  {
    v54 = MEMORY[0x277D84F90];
    sub_23B59DA10();
    v13 = type metadata accessor for WKIdentityDocumentPresentmentMobileDocumentPresentmentRequest(0);
    v16 = *(v4 + 16);
    v14 = v4 + 16;
    v15 = v16;
    v17 = *(v14 + 64);
    v48 = v10;
    v18 = v10 + ((v17 + 32) & ~v17);
    v49 = *(v14 + 56);
    v50 = v13;
    v52 = v14;
    do
    {
      v15(v9, v18, v3);
      v15(v7, v9, v3);
      sub_23B581450(v7);
      (*(v14 - 8))(v9, v3);
      sub_23B59D9F0();
      sub_23B59DA20();
      sub_23B59DA30();
      sub_23B59DA00();
      v18 += v49;
      --v11;
    }

    while (v11);

    a1 = v43;
    v12 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  type metadata accessor for WKIdentityDocumentPresentmentMobileDocumentPresentmentRequest(0);
  v19 = sub_23B59D880();

  v20 = sub_23B59D510();
  v21 = *(v20 + 16);
  if (!v21)
  {

LABEL_25:
    v38 = objc_allocWithZone(swift_getObjCClassFromMetadata(v37));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7F0, &qword_23B59ED48);
    v39 = sub_23B59D880();

    v40 = [v38 initWithPresentmentRequests:v19 authenticationCertificates:v39];

    v41 = sub_23B59D520();
    (*(*(v41 - 8) + 8))(a1, v41);
    return v40;
  }

  v42 = v19;
  v54 = v12;
  v22 = v20;
  sub_23B581EA8(0, v21, 0);
  result = v22;
  v24 = 0;
  v50 = v22 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
  v25 = v54;
  v48 = v22;
  v49 = v51 + 16;
  v46 = (v51 + 8);
  v47 = v21;
  v27 = v44;
  v26 = v45;
  while (v24 < result[2])
  {
    v52 = v25;
    (*(v51 + 16))(v27, v50 + *(v51 + 72) * v24, v26);
    v28 = sub_23B59D430();
    v29 = v28;
    if (v28 >> 62)
    {
      v30 = sub_23B59DA50();
      if (!v30)
      {
LABEL_19:

        (*v46)(v27, v26);
        v34 = v12;
        goto LABEL_20;
      }
    }

    else
    {
      v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v30)
      {
        goto LABEL_19;
      }
    }

    v53 = v12;
    result = sub_23B59DA10();
    if (v30 < 0)
    {
      goto LABEL_27;
    }

    v31 = 0;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x23EE9EAD0](v31, v29);
      }

      else
      {
        v32 = *(v29 + 8 * v31 + 32);
      }

      v33 = v32;
      ++v31;
      [objc_allocWithZone(WKIdentityDocumentPresentmentRequestAuthenticationCertificate) initWithCertificate_];

      sub_23B59D9F0();
      sub_23B59DA20();
      sub_23B59DA30();
      sub_23B59DA00();
    }

    while (v30 != v31);
    v26 = v45;
    v27 = v44;
    (*v46)(v44, v45);

    v34 = v53;
    v12 = MEMORY[0x277D84F90];
LABEL_20:
    v25 = v52;
    v54 = v52;
    v36 = *(v52 + 16);
    v35 = *(v52 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_23B581EA8((v35 > 1), v36 + 1, 1);
      v25 = v54;
    }

    ++v24;
    *(v25 + 16) = v36 + 1;
    *(v25 + 8 * v36 + 32) = v34;
    result = v48;
    if (v24 == v47)
    {

      a1 = v43;
      v19 = v42;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_23B581E68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23B581EE8(a1, a2, a3, *v3, &qword_27E15AAA8, &qword_23B59F998, &qword_27E15A7E8, &qword_23B59ED40);
  *v3 = result;
  return result;
}

void *sub_23B581EA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23B581EE8(a1, a2, a3, *v3, &qword_27E15AAA0, &qword_23B59F990, &qword_27E15A7F0, &qword_23B59ED48);
  *v3 = result;
  return result;
}

void *sub_23B581EE8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

id sub_23B5822C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v7 = sub_23B59D880();

  return v7;
}

uint64_t sub_23B582370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = sub_23B59D890();
  v9 = *a6;
  swift_beginAccess();
  *(a1 + v9) = v8;
}

id _sSo035WKIdentityDocumentPresentmentMobileB11ElementInfoC11WebKitSwiftEABycfC_0@<X0>(void *a1@<X8>)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata(a1));

  return [v1 init];
}

uint64_t sub_23B582C30(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_23B582D58(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id WKIdentityDocumentPresentmentRawRequest.init()@<X0>(void *a1@<X8>)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata(a1));

  return [v1 init];
}

unint64_t type metadata accessor for WKIdentityDocumentPresentmentRawRequest()
{
  result = qword_27E15BE68;
  if (!qword_27E15BE68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E15BE68);
  }

  return result;
}

id WKIdentityDocumentPresentmentRequest.init()@<X0>(void *a1@<X8>)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata(a1));

  return [v1 init];
}

id WKIdentityDocumentPresentmentResponse.init()@<X0>(void *a1@<X8>)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata(a1));

  return [v1 init];
}

unint64_t type metadata accessor for WKIdentityDocumentPresentmentResponse()
{
  result = qword_27E15BE78;
  if (!qword_27E15BE78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E15BE78);
  }

  return result;
}

id sub_23B583684(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_23B59D810();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_23B583718(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_23B59D820();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_23B583938()
{
  v0 = sub_23B59D660();
  __swift_allocate_value_buffer(v0, qword_27E15BE88);
  __swift_project_value_buffer(v0, qword_27E15BE88);
  return sub_23B59D650();
}

uint64_t variable initialization expression of WKIdentityDocumentRawRequestValidator._unsafeValidator@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_23B59D5E0();
  __swift_allocate_boxed_opaque_existential_0Tm(a1);
  return sub_23B59D5D0();
}

unint64_t sub_23B5839F4(void *a1, uint64_t a2)
{
  v140 = a2;
  v151 = *MEMORY[0x277D85DE8];
  v137 = sub_23B59D570();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = &v130 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_23B59D580();
  v145 = *(v147 - 1);
  v4 = MEMORY[0x28223BE20](v147);
  v134 = &v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v144 = &v130 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v146 = &v130 - v9;
  MEMORY[0x28223BE20](v8);
  v143 = &v130 - v10;
  v11 = sub_23B59D5E0();
  v138 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_23B59D520();
  v131 = *(v132 - 1);
  v14 = MEMORY[0x28223BE20](v132);
  v130 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v130 - v16;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A988, &qword_23B59F760);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B59F9A0;
  strcpy((inited + 32), "deviceRequest");
  *(inited + 46) = -4864;
  v19 = [a1 deviceRequest];
  if (!v19)
  {
    __break(1u);
LABEL_36:
    __break(1u);
  }

  v20 = v19;
  v21 = sub_23B59D820();
  v23 = v22;

  *(inited + 48) = v21;
  *(inited + 56) = v23;
  strcpy((inited + 64), "encryptionInfo");
  *(inited + 79) = -18;
  v142 = a1;
  v24 = [a1 encryptionInfo];
  if (!v24)
  {
    goto LABEL_36;
  }

  v25 = v24;
  v26 = sub_23B59D820();
  v28 = v27;

  *(inited + 80) = v26;
  *(inited + 88) = v28;
  sub_23B57FD04(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A990, &qword_23B59F768);
  swift_arrayDestroy();
  v29 = objc_opt_self();
  v30 = sub_23B59D7C0();

  v149[0] = 0;
  v31 = [v29 dataWithJSONObject:v30 options:0 error:v149];

  v32 = v149[0];
  if (!v31)
  {
    v38 = v32;
    v37 = sub_23B59D2A0();

    swift_willThrow();
LABEL_7:
    v149[0] = v37;
    v39 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8E0, &qword_23B59F9C0);
    v40 = v143;
    v41 = v147;
    v42 = swift_dynamicCast();
    v43 = v146;
    v44 = v144;
    if (!v42)
    {

      v71 = v142;
      if (qword_27E15BE80 != -1)
      {
        swift_once();
      }

      v72 = sub_23B59D660();
      __swift_project_value_buffer(v72, qword_27E15BE88);
      v73 = v37;
      v74 = v71;
      v75 = sub_23B59D640();
      v76 = sub_23B59D940();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v149[0] = v147;
        *v77 = 136315394;
        v79 = v74;
        v80 = [v79 description];
        v81 = sub_23B59D820();
        v83 = v82;

        v84 = sub_23B57F234(v81, v83, v149);

        *(v77 + 4) = v84;
        *(v77 + 12) = 2112;
        v85 = v37;
        v86 = _swift_stdlib_bridgeErrorToNSError();
        *(v77 + 14) = v86;
        *v78 = v86;
        _os_log_impl(&dword_23B568000, v75, v76, "WKIdentityDocumentRawRequestValidator encountered error while validating request %s. Error: %@", v77, 0x16u);
        sub_23B57A674(v78, &qword_27E15AB38, &qword_23B59F9C8);
        MEMORY[0x23EE9F1D0](v78, -1, -1);
        v87 = v147;
        __swift_destroy_boxed_opaque_existential_1(v147);
        MEMORY[0x23EE9F1D0](v87, -1, -1);
        MEMORY[0x23EE9F1D0](v77, -1, -1);
      }

      type metadata accessor for WKIdentityDocumentPresentmentError(0);
      v150 = 1;
      v88 = sub_23B57FBC0(MEMORY[0x277D84F90]);
      sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError, &unk_23B59FA50);
      sub_23B59D280();
      swift_willThrow();
      v89 = v37;
      goto LABEL_29;
    }

    v45 = v145;
    v46 = *(v145 + 32);
    v138 = v145 + 32;
    v132 = v46;
    (v46)(v43, v40, v41);
    v47 = swift_initStackObject();
    *(v47 + 16) = xmmword_23B59F620;
    *(v47 + 32) = sub_23B59D820();
    *(v47 + 40) = v48;
    *(v47 + 48) = sub_23B59D550();
    *(v47 + 56) = v49;
    v141 = sub_23B57FD04(v47);
    swift_setDeallocating();
    sub_23B57A674(v47 + 32, &qword_27E15A990, &qword_23B59F768);
    if (qword_27E15BE80 != -1)
    {
      swift_once();
    }

    v50 = sub_23B59D660();
    __swift_project_value_buffer(v50, qword_27E15BE88);
    v51 = *(v45 + 16);
    (v51)(v44, v43, v41);
    v52 = v142;
    v53 = sub_23B59D640();
    v54 = sub_23B59D940();

    v55 = os_log_type_enabled(v53, v54);
    v143 = v51;
    if (v55)
    {
      v56 = swift_slowAlloc();
      LODWORD(v140) = v54;
      v57 = v56;
      v139 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v150 = v142;
      *v57 = 136315394;
      v58 = v52;
      v59 = v44;
      v60 = [v58 description];
      v61 = sub_23B59D820();
      v63 = v62;

      v64 = v61;
      v43 = v146;
      v65 = sub_23B57F234(v64, v63, &v150);
      v41 = v147;

      *(v57 + 4) = v65;
      *(v57 + 12) = 2112;
      sub_23B580B08(&qword_27E15A998, MEMORY[0x277CD2BE8], MEMORY[0x277CD2BF0]);
      swift_allocError();
      (v143)(v66, v59, v41);
      v67 = _swift_stdlib_bridgeErrorToNSError();
      v68 = v59;
      v51 = v143;
      v144 = *(v45 + 8);
      (v144)(v68, v41);
      *(v57 + 14) = v67;
      v69 = v139;
      *v139 = v67;
      _os_log_impl(&dword_23B568000, v53, v140, "WKIdentityDocumentRawRequestValidator encountered IdentityDocumentPresentmentError while validating request %s. Error: %@", v57, 0x16u);
      sub_23B57A674(v69, &qword_27E15AB38, &qword_23B59F9C8);
      MEMORY[0x23EE9F1D0](v69, -1, -1);
      v70 = v142;
      __swift_destroy_boxed_opaque_existential_1(v142);
      MEMORY[0x23EE9F1D0](v70, -1, -1);
      MEMORY[0x23EE9F1D0](v57, -1, -1);
    }

    else
    {

      v144 = *(v45 + 8);
      (v144)(v44, v41);
    }

    v93 = v134;
    (v51)(v134, v43, v41);
    v94 = *MEMORY[0x277CD2BD8];
    v95 = v136;
    v96 = *(v136 + 13);
    v97 = v135;
    v98 = v43;
    v99 = v137;
    v139 = (v136 + 104);
    v142 = v96;
    (v96)(v135, v94, v137);
    v140 = sub_23B580B08(&qword_27E15A998, MEMORY[0x277CD2BE8], MEMORY[0x277CD2BF0]);
    v100 = swift_allocError();
    (v51)(v101, v93, v41);
    v102 = sub_23B59D560();
    v103 = *(v95 + 1);
    v103(v97, v99);

    if (v102)
    {
      v104 = v93;
      v105 = v147;
      v106 = v144;
      (v144)(v104, v147);
      type metadata accessor for WKIdentityDocumentPresentmentError(0);
      v148 = 0;
      v88 = sub_23B57D574(v141);

      sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError, &unk_23B59FA50);
      sub_23B59D280();
      swift_willThrow();
      v106(v98, v105);
    }

    else
    {
      (v142)(v97, *MEMORY[0x277CD2BC8], v99);
      v107 = v147;
      v108 = swift_allocError();
      (v143)(v109, v93, v107);
      LOBYTE(v107) = sub_23B59D560();
      v136 = v103;
      v103(v97, v99);

      if (v107)
      {
        v110 = v93;
        v111 = v147;
        v112 = v144;
        (v144)(v110, v147);
        type metadata accessor for WKIdentityDocumentPresentmentError(0);
        v113 = 1;
      }

      else
      {
        (v142)(v97, *MEMORY[0x277CD2BD0], v99);
        v114 = v147;
        v115 = swift_allocError();
        (v143)(v116, v93, v114);
        v117 = sub_23B59D560();
        v136(v97, v99);

        if (v117)
        {
          v118 = v93;
          v111 = v147;
          v112 = v144;
          (v144)(v118, v147);
          type metadata accessor for WKIdentityDocumentPresentmentError(0);
          v113 = 2;
        }

        else
        {
          (v142)(v97, *MEMORY[0x277CD2BE0], v99);
          v119 = v147;
          v120 = swift_allocError();
          (v143)(v121, v93, v119);
          v122 = sub_23B59D560();
          v123 = v136;
          v136(v97, v99);

          if ((v122 & 1) == 0)
          {
            (v142)(v97, *MEMORY[0x277CD2BC0], v99);
            v126 = v147;
            v127 = swift_allocError();
            (v132)(v128, v93, v126);
            v129 = sub_23B59D560();
            v123(v97, v99);

            type metadata accessor for WKIdentityDocumentPresentmentError(0);
            if (v129)
            {
              v148 = 4;
            }

            else
            {
              v148 = 0;
            }

            v88 = sub_23B57D574(v141);

            sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError, &unk_23B59FA50);
            sub_23B59D280();
            swift_willThrow();
            (v144)(v146, v126);
            goto LABEL_28;
          }

          v124 = v93;
          v111 = v147;
          v112 = v144;
          (v144)(v124, v147);
          type metadata accessor for WKIdentityDocumentPresentmentError(0);
          v113 = 3;
        }
      }

      v148 = v113;
      v88 = sub_23B57D574(v141);

      sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError, &unk_23B59FA50);
      sub_23B59D280();
      swift_willThrow();
      v112(v146, v111);
    }

LABEL_28:
    v89 = v149[0];
LABEL_29:

    return v88;
  }

  v33 = sub_23B59D2F0();
  v35 = v34;

  sub_23B5806A4(v139 + OBJC_IVAR___WKIdentityDocumentRawRequestValidator__unsafeValidator, v149);
  swift_dynamicCast();
  v36 = v141;
  sub_23B59D5C0();
  if (v36)
  {
    (*(v138 + 8))(v13, v11);
    sub_23B56C05C(v33, v35);
    v37 = v36;
    goto LABEL_7;
  }

  (*(v138 + 8))(v13, v11);
  type metadata accessor for WKIdentityDocumentPresentmentMobileDocumentRequest(0);
  v90 = v131;
  v91 = v130;
  v92 = v132;
  (*(v131 + 16))(v130, v17, v132);
  v88 = sub_23B5818E0(v91);
  sub_23B56C05C(v33, v35);
  (*(v90 + 8))(v17, v92);
  return v88;
}

id WKIdentityDocumentRawRequestValidator.init()()
{
  v1 = &v0[OBJC_IVAR___WKIdentityDocumentRawRequestValidator__unsafeValidator];
  v1[3] = sub_23B59D5E0();
  __swift_allocate_boxed_opaque_existential_0Tm(v1);
  sub_23B59D5D0();
  v3.receiver = v0;
  v3.super_class = WKIdentityDocumentRawRequestValidator;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_23B584FC0()
{
  v1 = OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator____lazy_storage___viewManager;
  if (*&v0[OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator____lazy_storage___viewManager])
  {
    v2 = *&v0[OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator____lazy_storage___viewManager];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AC18, &qword_23B59FDA8);
    v3 = [*&v0[OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_delegate] viewForIntelligenceTextEffectCoordinator_];
    v4 = v0;
    v2 = sub_23B56CB20(v0, v3);
    *&v0[v1] = v2;
  }

  return v2;
}

id WKIntelligenceReplacementTextEffectCoordinator.init(delegate:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata(a2)) initWithDelegate_];
  swift_unknownObjectRelease();
  return v2;
}

id WKIntelligenceReplacementTextEffectCoordinator.init(delegate:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator____lazy_storage___viewManager) = 0;
  *(v1 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_processedRangeOffset) = 0;
  v2 = v1 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_contextRange;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  *(v1 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_replacementQueue) = MEMORY[0x277D84F90];
  v3 = (v1 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_onFlushCompletion);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_delegate) = a1;
  v5.super_class = WKIntelligenceReplacementTextEffectCoordinator;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_23B585464(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_23B59D8F0();
  v3[9] = sub_23B59D8E0();
  v5 = sub_23B59D8B0();
  v3[10] = v5;
  v3[11] = v4;

  return MEMORY[0x2822009F8](sub_23B585500, v5, v4);
}

uint64_t sub_23B585500()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = sub_23B584FC0();
  (*(*v3 + 352))(v3);

  *(v1 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_processedRangeOffset) = 0;
  v4 = v1 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_contextRange;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  v5 = OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_replacementQueue;
  swift_beginAccess();
  *(v1 + v5) = MEMORY[0x277D84F90];

  v6 = OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator____lazy_storage___viewManager;
  v7 = *(**(v1 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator____lazy_storage___viewManager) + 360);

  v7("WebKitSwift/WKIntelligenceReplacementTextEffectCoordinator.swift", 64, 2, 100);

  v8 = *(**(v1 + v6) + 368);

  v8("WebKitSwift/WKIntelligenceReplacementTextEffectCoordinator.swift", 64, 2, 101);

  result = sub_23B59D210();
  if (result == v2)
  {

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[6];
    v11 = v0[7];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      __break(1u);
    }

    else
    {
      *v4 = v12;
      *(v4 + 8) = v13;
      *(v4 + 16) = 0;
      type metadata accessor for IntelligenceTextEffectChunk.Pondering(0);
      v14 = sub_23B56C330(v12, v13);
      v0[12] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7B0, &unk_23B59EC00);
      v0[5] = v14;

      v15 = sub_23B57603C((v0 + 5));
      v0[13] = v15;
      v16 = *(v1 + v6);
      v0[14] = v16;
      v17 = *(*v16 + 304);

      v19 = (v17 + *v17);
      v18 = swift_task_alloc();
      v0[15] = v18;
      *v18 = v0;
      v18[1] = sub_23B585890;

      return v19(v15);
    }
  }

  return result;
}

uint64_t sub_23B585890()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_23B5859D4, v3, v2);
}

uint64_t sub_23B5859D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B585BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_23B59D8F0();
  v4[6] = sub_23B59D8E0();
  v6 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B585C6C, v6, v5);
}

uint64_t sub_23B585C6C()
{
  v1 = v0[5];
  v2 = v0[4];

  v0[7] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_23B585D24;
  v6 = v0[2];
  v5 = v0[3];

  return sub_23B585464(v6, v5);
}

uint64_t sub_23B585D24()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 40);
  v4 = *v0;

  if (v2)
  {
    v5 = *(v1 + 56);
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_23B585E6C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 120) = a6;
  *(v7 + 128) = v6;
  *(v7 + 104) = a4;
  *(v7 + 112) = a5;
  *(v7 + 176) = a3;
  *(v7 + 88) = a1;
  *(v7 + 96) = a2;
  sub_23B59D8F0();
  *(v7 + 136) = sub_23B59D8E0();
  v9 = sub_23B59D8B0();
  *(v7 + 144) = v9;
  *(v7 + 152) = v8;

  return MEMORY[0x2822009F8](sub_23B585F10, v9, v8);
}

uint64_t sub_23B585F10(uint64_t a1)
{
  v3 = *(v1 + 88);
  if (sub_23B59D210() == v3)
  {
LABEL_8:

    v18 = *(v1 + 8);

    return v18();
  }

  v5 = *(v1 + 88);
  v4 = *(v1 + 96);
  v6 = &v5[v4];
  if (__OFADD__(v5, v4))
  {
    __break(1u);
  }

  else
  {
    v7 = *(v1 + 120);
    v2 = *(v1 + 128);
    v9 = *(v1 + 104);
    v8 = *(v1 + 112);
    v10 = *(v1 + 176);
    v11 = swift_allocObject();
    *(v1 + 160) = v11;
    *(v11 + 16) = v8;
    *(v11 + 24) = v7;
    *(v1 + 16) = v5;
    *(v1 + 24) = v6;
    *(v1 + 32) = v10;
    *(v1 + 40) = v9;
    *(v1 + 48) = &unk_23B59FB60;
    *(v1 + 56) = v11;
    v6 = OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_replacementQueue;
    swift_beginAccess();
    v5 = *(v2 + v6);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v6) = v5;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_4;
    }
  }

  v5 = sub_23B58D7D8(0, *(v5 + 2) + 1, 1, v5);
  *(v2 + v6) = v5;
LABEL_4:
  v14 = *(v5 + 2);
  v13 = *(v5 + 3);
  if (v14 >= v13 >> 1)
  {
    v5 = sub_23B58D7D8((v13 > 1), v14 + 1, 1, v5);
  }

  *(v5 + 2) = v14 + 1;
  v15 = &v5[48 * v14];
  v16 = *(v1 + 16);
  v17 = *(v1 + 48);
  *(v15 + 3) = *(v1 + 32);
  *(v15 + 4) = v17;
  *(v15 + 2) = v16;
  *(v2 + v6) = v5;
  swift_endAccess();
  if (v14)
  {

    goto LABEL_8;
  }

  v20 = swift_task_alloc();
  *(v1 + 168) = v20;
  *v20 = v1;
  v20[1] = sub_23B586144;

  return sub_23B5862D0(v1 + 16);
}

uint64_t sub_23B586144()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_23B586264, v3, v2);
}

uint64_t sub_23B586264()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B5862D0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_23B59D8F0();
  v2[5] = sub_23B59D8E0();
  v4 = sub_23B59D8B0();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_23B586368, v4, v3);
}

uint64_t sub_23B586368()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_23B584FC0();
  (*(*v3 + 368))("WebKitSwift/WKIntelligenceReplacementTextEffectCoordinator.swift", 64, 2, 193);

  v5 = *v2;
  v6 = v2[3];
  v7 = OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_processedRangeOffset;
  v0[8] = v6;
  v0[9] = v7;
  v8 = *(v1 + v7);
  v9 = v5 + v8;
  if (__OFADD__(v5, v8))
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = v0[3];
  v11 = *(v10 + 8);
  v12 = v11 + v8;
  if (__OFADD__(v11, v8))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v12 < v9)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v13 = v0[4];
  type metadata accessor for IntelligenceTextEffectChunk.Replacement(0);
  v14 = *(v10 + 16);
  v15 = *(v10 + 32);
  v16 = *(v10 + 40);

  v17 = sub_23B56C49C(v9, v12, v14, v6, v15, v16);
  v0[10] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7C0, qword_23B59EC10);
  v0[2] = v17;

  v18 = sub_23B57476C((v0 + 2));
  v0[11] = v18;
  v19 = *(v13 + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator____lazy_storage___viewManager);
  v0[12] = v19;
  v20 = *(*v19 + 312);

  v22 = (v20 + *v20);
  v21 = swift_task_alloc();
  v0[13] = v21;
  *v21 = v0;
  v21[1] = sub_23B5865F0;

  return v22(v18);
}