uint64_t SyncedModelTester.localParticipant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_localParticipant;
  swift_beginAccess();
  return sub_26C3DDD48(v3 + v4, a1, &qword_280497268, &qword_26C46CFE0);
}

uint64_t sub_26C3D7624(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_26C3DDD48(a1, &v6 - v3, &qword_280497268, &qword_26C46CFE0);
  return SyncedModelTester.localParticipant.setter(v4);
}

uint64_t SyncedModelTester.localParticipant.setter(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_localParticipant;
  swift_beginAccess();
  sub_26C3DDCE0(a1, v3 + v4, &qword_280497268, &qword_26C46CFE0);
  return swift_endAccess();
}

void (*SyncedModelTester.localParticipant.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = *(v1 + 24);
  v10 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_localParticipant;
  swift_beginAccess();
  sub_26C3DDD48(v9 + v10, v8, &qword_280497268, &qword_26C46CFE0);
  return sub_26C3D7864;
}

void sub_26C3D7864(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_26C3DDD48(*(*a1 + 40), v3, &qword_280497268, &qword_26C46CFE0);
    SyncedModelTester.localParticipant.setter(v3);
    sub_26C3DE270(v4, &qword_280497268, &qword_26C46CFE0);
  }

  else
  {
    SyncedModelTester.localParticipant.setter(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t SyncedModelTester.ownerState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  swift_beginAccess();
  return sub_26C3DDBB0(v3 + v4, a1, type metadata accessor for SyncedModelOwnerState);
}

uint64_t sub_26C3D79A4(uint64_t a1)
{
  v2 = type metadata accessor for SyncedModelOwnerState(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C3DDBB0(a1, v4, type metadata accessor for SyncedModelOwnerState);
  return SyncedModelTester.ownerState.setter(v4);
}

uint64_t SyncedModelTester.ownerState.setter(uint64_t a1)
{
  v3 = type metadata accessor for SyncedModelOwnerState(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7];
  v9 = *(v1 + 24);
  sub_26C3DDBB0(a1, &v12[-v7], type metadata accessor for SyncedModelOwnerState);
  v10 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  swift_beginAccess();
  sub_26C3DDBB0(v9 + v10, v6, type metadata accessor for SyncedModelOwnerState);
  swift_beginAccess();
  sub_26C3DD644(v8, v9 + v10);
  swift_endAccess();
  sub_26C412324(v6);
  sub_26C3DD6A8(a1);
  sub_26C3DD6A8(v6);
  return sub_26C3DD6A8(v8);
}

void (*SyncedModelTester.ownerState.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(type metadata accessor for SyncedModelOwnerState(0) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = *(v1 + 24);
  v10 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  swift_beginAccess();
  sub_26C3DDBB0(v9 + v10, v8, type metadata accessor for SyncedModelOwnerState);
  return sub_26C3D7C94;
}

void sub_26C3D7C94(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_26C3DDBB0(*(*a1 + 40), v3, type metadata accessor for SyncedModelOwnerState);
    SyncedModelTester.ownerState.setter(v3);
    sub_26C3DD6A8(v4);
  }

  else
  {
    SyncedModelTester.ownerState.setter(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t SyncedModelTester.shouldReceiveOwnership.getter()
{
  v0 = sub_26C3DD704();
  sub_26C3DD720(v0, v1);
  return v0;
}

uint64_t sub_26C3D7D5C@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = sub_26C3DD704();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_allocObject();
    v3 = v5;
    v7 = v6;
    v2 = v4;
    *(v7 + 16) = v4;
    *(v7 + 24) = v5;
    v8 = sub_26C3DDE74;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;

  return sub_26C3DD720(v2, v3);
}

uint64_t sub_26C3D7DF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_26C3DDE3C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_26C3DD720(v1, v2);
  return SyncedModelTester.shouldReceiveOwnership.setter(v4, v3);
}

uint64_t SyncedModelTester.shouldReceiveOwnership.setter(uint64_t a1, uint64_t a2)
{
  v3 = (*(v2 + 24) + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_shouldReceiveOwnership);
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_26C3DD730(v4, v5);
}

uint64_t (*SyncedModelTester.shouldReceiveOwnership.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = (*(v1 + 24) + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_shouldReceiveOwnership);
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;
  sub_26C3DD720(v4, v5);
  return sub_26C3D7F08;
}

uint64_t sub_26C3D7F08(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_26C3DD720(*a1, v2);
    v5 = (*(v4 + 24) + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_shouldReceiveOwnership);
    v6 = *v5;
    v7 = v5[1];
    *v5 = v3;
    v5[1] = v2;
    sub_26C3DD730(v6, v7);
    v8 = v3;
    v9 = v2;
  }

  else
  {
    v10 = (*(v4 + 24) + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_shouldReceiveOwnership);
    v8 = *v10;
    v9 = v10[1];
    *v10 = v3;
    v10[1] = v2;
  }

  return sub_26C3DD730(v8, v9);
}

Swift::Void __swiftcall SyncedModelTester.releaseRemoteOwnership()()
{
  v1 = type metadata accessor for SyncedModelOwnerState(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15[-v6];
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = *(v0 + 24);
  v11 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  swift_beginAccess();
  sub_26C3DDBB0(v10 + v11, v9, type metadata accessor for SyncedModelOwnerState);
  v12 = sub_26C46BCD4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v9, 2, v12);
  sub_26C3DD6A8(v9);
  if (!v14)
  {
    (*(v13 + 56))(v7, 1, 2, v12);
    sub_26C3DDBB0(v10 + v11, v4, type metadata accessor for SyncedModelOwnerState);
    swift_beginAccess();
    sub_26C3DD644(v7, v10 + v11);
    swift_endAccess();
    sub_26C412324(v4);
    sub_26C3DD6A8(v4);
    sub_26C3DD6A8(v7);
  }
}

uint64_t SyncedModelTester.applyRemoteChange<A>(value:keyPath:participant:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SyncedModelOwnerState(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  v12 = *(v3 + 24);
  v13 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  swift_beginAccess();
  sub_26C3DDBB0(v12 + v13, v11, type metadata accessor for SyncedModelOwnerState);
  v14 = sub_26C46BCD4();
  (*(*(v14 - 8) + 56))(v9, 2, 2, v14);
  LOBYTE(v12) = _s12SyncedModels0A15ModelOwnerStateO2eeoiySbAC_ACtFZ_0(v11, v9);
  sub_26C3DD6A8(v9);
  result = sub_26C3DD6A8(v11);
  if ((v12 & 1) == 0)
  {
    v16[2] = *(v3 + 16);
    swift_unknownObjectRetain();
    swift_getAtKeyPath();
    swift_unknownObjectRelease();
    sub_26C3E096C(a1, a3);
  }

  return result;
}

{
  return sub_26C3D836C(a1, a2, a3, sub_26C3FD628);
}

uint64_t sub_26C3D836C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v8 = type metadata accessor for SyncedModelOwnerState(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - v12;
  v14 = *(v4 + 24);
  v15 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  swift_beginAccess();
  sub_26C3DDBB0(v14 + v15, v13, type metadata accessor for SyncedModelOwnerState);
  v16 = sub_26C46BCD4();
  (*(*(v16 - 8) + 56))(v11, 2, 2, v16);
  LOBYTE(v14) = _s12SyncedModels0A15ModelOwnerStateO2eeoiySbAC_ACtFZ_0(v13, v11);
  sub_26C3DD6A8(v11);
  result = sub_26C3DD6A8(v13);
  if ((v14 & 1) == 0)
  {
    v18[2] = *(v4 + 16);
    swift_unknownObjectRetain();
    swift_getAtKeyPath();
    swift_unknownObjectRelease();
    a4(a1, a3);
  }

  return result;
}

uint64_t SyncedModelTester.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SyncedModelTester.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_26C3D8578()
{
  result = sub_26C3E8DD4(MEMORY[0x277D84F90]);
  qword_280498528 = result;
  return result;
}

uint64_t (*sub_26C3D85A0())()
{
  if (qword_280497140 != -1)
  {
    swift_once();
  }

  v0 = sub_26C46C8E4();
  v2 = v1;
  swift_beginAccess();
  v3 = qword_280498528;
  if (!*(qword_280498528 + 16))
  {

    goto LABEL_7;
  }

  v4 = sub_26C42C2A8(v0, v2);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = *(v3 + 56);
  *(swift_allocObject() + 16) = *(v7 + 16 * v4);

  v8 = sub_26C3DE1EC;
LABEL_8:
  swift_endAccess();
  return v8;
}

uint64_t static SyncedModelsTester.enableTestMode<A>(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_280497140 != -1)
  {
    swift_once();
  }

  v9 = sub_26C46C8E4();
  v11 = v10;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a2;
  v12[5] = a3;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = qword_280498528;
  qword_280498528 = 0x8000000000000000;
  sub_26C3DBDE0(sub_26C3DD778, v12, v9, v11, isUniquelyReferenced_nonNull_native);

  qword_280498528 = v15;
  return swift_endAccess();
}

uint64_t sub_26C3D87FC(uint64_t a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_26C3DE214(a1, v10);
  type metadata accessor for SyncedModelTester(0, a4, a5, v8);
  result = swift_dynamicCast();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_26C3D888C(void *a1, uint64_t a2)
{
  v3 = v2;
  if (*a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1[1] == 1;
  }

  if (v5)
  {
    sub_26C3DE270(a1, &qword_280497378, &unk_26C46E560);
    v8 = sub_26C42C1C8(a2);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v14 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_26C42E174();
        v12 = v14;
      }

      sub_26C3DE0D8(*(v12 + 56) + 16 * v10, &v15);
      sub_26C42CC9C(v10, v12);
      *v3 = v12;
    }

    else
    {
      v15 = xmmword_26C46CFD0;
    }

    return sub_26C3DE270(&v15, &qword_280497378, &unk_26C46E560);
  }

  else
  {
    sub_26C3DE0D8(a1, &v15);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_26C3DBCC0(&v15, a2, v6);
    *v2 = v13;
  }

  return result;
}

uint64_t sub_26C3D899C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_26C3DBDE0(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_26C42C2A8(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_26C42E2F0();
        v16 = v18;
      }

      result = sub_26C42CE30(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_26C3D8AA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_26C3DE270(a1, &qword_280497368, &qword_26C46E220);
    v5 = sub_26C42C320(a2);
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_26C42E6FC();
        v10 = v13;
      }

      sub_26C3DDEFC(*(v10 + 56) + 8 * v8, &v15);
      sub_26C42D300(v8, v10);
      *v3 = v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = (v7 & 1) == 0;
    return sub_26C3DE270(&v15, &qword_280497368, &qword_26C46E220);
  }

  else
  {
    sub_26C3DDEFC(a1, &v15);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_26C3DC144(&v15, a2, v11);
    *v2 = v14;
  }

  return result;
}

uint64_t sub_26C3D8BB4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_26C46BCD4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_26C3DE270(a1, &qword_280497268, &qword_26C46CFE0);
    sub_26C42C790(a2, v7);
    v12 = sub_26C46BB54();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_26C3DE270(v7, &qword_280497268, &qword_26C46CFE0);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_26C3DC264(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_26C46BB54();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_26C3D8DE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_26C3DC468(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_26C46BB54();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_26C42C210(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_26C42EBCC();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_26C46BB54();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_26C42D490(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_26C46BB54();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_26C3D8FA0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497328, &qword_26C46E550);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_26C3DE270(a1, &qword_280497328, &qword_26C46E550);
    sub_26C42CAF8(a2);
    v12 = sub_26C46BB54();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_26C3DE270(v7, &qword_280497328, &qword_26C46E550);
  }

  else
  {
    sub_26C3DDC70(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_26C3DC634(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_26C46BB54();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_26C3D91B4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497308, &unk_26C46D100);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for CachedOwnershipRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_26C3DE270(a1, &qword_280497308, &unk_26C46D100);
    sub_26C42C944(a2);
    v12 = sub_26C46BB54();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_26C3DE270(v7, &qword_280497308, &unk_26C46D100);
  }

  else
  {
    sub_26C3DDAE8(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_26C3DC810(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_26C46BB54();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_26C3D93C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    sub_26C3DC9F8(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    v11 = sub_26C46BB54();
    result = (*(*(v11 - 8) + 8))(a4, v11);
    *v4 = v24;
  }

  else
  {
    v13 = sub_26C42C210(a4);
    if (v14)
    {
      v15 = v13;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v4;
      v25 = *v5;
      if (!v16)
      {
        sub_26C42F888();
        v17 = v25;
      }

      v18 = *(v17 + 48);
      v19 = sub_26C46BB54();
      v20 = *(v19 - 8);
      v21 = *(v20 + 8);
      v21(v18 + *(v20 + 72) * v15, v19);

      sub_26C42DE50(v15, v17);
      result = (v21)(a4, v19);
      *v5 = v17;
    }

    else
    {
      v22 = sub_26C46BB54();
      v23 = *(*(v22 - 8) + 8);

      return v23(a4, v22);
    }
  }

  return result;
}

uint64_t static SyncedModelsTester.disableTestMode<A>(for:)()
{
  if (qword_280497140 != -1)
  {
    swift_once();
  }

  v0 = sub_26C46C8E4();
  v2 = v1;
  swift_beginAccess();
  sub_26C3D899C(0, 0, v0, v2);
  return swift_endAccess();
}

uint64_t sub_26C3D9678(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497380, &unk_26C46D170);
  result = sub_26C46C614();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(v5 + 56) + 16 * v19;
      if (v4)
      {
        sub_26C3DE0D8(v21, v31);
      }

      else
      {
        sub_26C3DE190(v21, v31);
      }

      result = MEMORY[0x26D6A1200](*(v7 + 40), v20, 4);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      result = sub_26C3DE0D8(v31, *(v7 + 56) + 16 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_26C3D98F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497388, &qword_26C46D740);
  v33 = v4;
  result = sub_26C46C614();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_26C46C814();
      sub_26C46C1E4();
      result = sub_26C46C844();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26C3D9BAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26C46BB54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497360, &unk_26C46D150);
  v43 = v4;
  result = sub_26C46C614();
  v10 = result;
  if (*(v8 + 16))
  {
    v48 = v5;
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
    v39 = v2;
    v40 = (v6 + 16);
    v41 = v8;
    v42 = v6;
    v45 = (v6 + 32);
    v17 = result + 64;
    v18 = v44;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v22 = (v15 - 1) & v15;
LABEL_15:
      v25 = v21 | (v11 << 6);
      v26 = *(v8 + 48) + *(v42 + 72) * v25;
      v46 = *(v42 + 72);
      v47 = v22;
      if (v43)
      {
        (*v45)(v18, v26, v48);
        v27 = (*(v8 + 56) + 16 * v25);
        v29 = *v27;
        v28 = v27[1];
      }

      else
      {
        (*v40)(v18, v26, v48);
        v30 = (*(v8 + 56) + 16 * v25);
        v29 = *v30;
        v28 = v30[1];
        sub_26C3DDDB0(*v30, v28);
      }

      sub_26C3DDC18();
      result = sub_26C46C1A4();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v18 = v44;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v18 = v44;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v10 + 48) + v46 * v19, v18, v48);
      v20 = (*(v10 + 56) + 16 * v19);
      *v20 = v29;
      v20[1] = v28;
      ++*(v10 + 16);
      v8 = v41;
      v15 = v47;
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

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v8 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_26C3D9F64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497370, &unk_26C46D160);
  result = sub_26C46C614();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v20 = 8 * (v17 | (v8 << 6));
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + v20;
      if (v4)
      {
        sub_26C3DDEFC(v22, v32);
      }

      else
      {
        sub_26C3DDFB4(v22, v32);
      }

      result = sub_26C46C804();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 8 * v15;
      *(*(v7 + 48) + v16) = v21;
      result = sub_26C3DDEFC(v32, *(v7 + 56) + v16);
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_26C3DA1E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_26C46BCD4();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C46BB54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497320, &unk_26C46D110);
  v47 = v4;
  result = sub_26C46C614();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_26C3DDC18();
      result = sub_26C46C1A4();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
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
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_26C3DA65C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26C46BB54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497350, &unk_26C46D140);
  v40 = v4;
  result = sub_26C46C614();
  v10 = result;
  if (*(v8 + 16))
  {
    v44 = v5;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v8;
    v39 = v6;
    v42 = (v6 + 32);
    v17 = result + 64;
    v18 = v41;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v42)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      sub_26C3DDC18();
      result = sub_26C46C1A4();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v18 = v41;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v18 = v41;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v42)(*(v10 + 48) + v43 * v19, v18, v44);
      *(*(v10 + 56) + 8 * v19) = v26;
      ++*(v10 + 16);
      v8 = v38;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_26C3DAA08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497348, &qword_26C46D138);
  result = sub_26C46C614();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        sub_26C3DDDB0(v30, *(&v30 + 1));
      }

      result = MEMORY[0x26D6A1200](*(v7 + 40), v20, 4);
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_26C3DAC84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26C46BB54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497340, &qword_26C46D130);
  v44 = v4;
  result = sub_26C46C614();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v8;
    v40 = v2;
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
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v48 = *(v43 + 72);
      v27 = v26 + v48 * v25;
      if (v44)
      {
        (*v45)(v49, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v46 = v28[1];
        v47 = v29;
      }

      else
      {
        (*v41)(v49, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v46 = v30[1];
        v47 = v31;
      }

      sub_26C3DDC18();
      result = sub_26C46C1A4();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
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

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v11 + 48) + v48 * v19, v49, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v46;
      *v20 = v47;
      v20[1] = v21;
      ++*(v11 + 16);
      v9 = v42;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_26C3DB03C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CachedOwnershipRequest(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C46BB54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497310, &qword_26C46E540);
  v43 = v4;
  result = sub_26C46C614();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_26C3DDAE8(v27 + v28 * v24, v47);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_26C3DDBB0(v29 + v28 * v24, v47, type metadata accessor for CachedOwnershipRequest);
      }

      sub_26C3DDC18();
      result = sub_26C46C1A4();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_26C3DDAE8(v47, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_26C3DB484(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
  v45 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v39 - v6;
  v7 = sub_26C46BB54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497338, &unk_26C46D700);
  v46 = v4;
  result = sub_26C46C614();
  v13 = result;
  if (*(v11 + 16))
  {
    v49 = v10;
    v40 = v2;
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
    v41 = (v8 + 16);
    v42 = v8;
    v47 = (v8 + 32);
    v20 = result + 64;
    v43 = v11;
    v44 = v7;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v48 = *(v8 + 72);
      v27 = v26 + v48 * v25;
      if (v46)
      {
        (*v47)(v49, v27, v7);
        v28 = *(v11 + 56);
        v29 = *(v45 + 72);
        sub_26C3DDC70(v28 + v29 * v25, v50);
      }

      else
      {
        (*v41)(v49, v27, v7);
        v30 = *(v11 + 56);
        v29 = *(v45 + 72);
        sub_26C3DDD48(v30 + v29 * v25, v50, &qword_280497330, &unk_26C46D120);
      }

      sub_26C3DDC18();
      result = sub_26C46C1A4();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v7 = v44;
      (*v47)((*(v13 + 48) + v48 * v21), v49, v44);
      result = sub_26C3DDC70(v50, *(v13 + 56) + v29 * v21);
      ++*(v13 + 16);
      v8 = v42;
      v11 = v43;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v11 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v15, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v3 = v13;
  return result;
}

uint64_t sub_26C3DB8CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26C46BB54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497358, &unk_26C46E5F0);
  v43 = v4;
  result = sub_26C46C614();
  v11 = result;
  if (*(v9 + 16))
  {
    v47 = v8;
    v39 = v2;
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
    v40 = (v6 + 16);
    v41 = v9;
    v42 = v6;
    v44 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v46 = *(v42 + 72);
      v26 = v25 + v46 * v24;
      if (v43)
      {
        (*v44)(v47, v26, v5);
        v27 = *(v9 + 56) + 24 * v24;
        v48 = *v27;
        v45 = *(v27 + 16);
      }

      else
      {
        (*v40)(v47, v26, v5);
        v28 = *(v9 + 56) + 24 * v24;
        v48 = *v28;
        v29 = *(v28 + 16);

        v45 = v29;
      }

      sub_26C3DDC18();
      result = sub_26C46C1A4();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v44)(*(v11 + 48) + v46 * v19, v47, v5);
      v20 = *(v11 + 56) + 24 * v19;
      *v20 = v48;
      *(v20 + 16) = v45;
      ++*(v11 + 16);
      v9 = v41;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_26C3DBCC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_26C42C1C8(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_26C42E174();
      v9 = v17;
      goto LABEL_8;
    }

    sub_26C3D9678(v14, a3 & 1);
    v9 = sub_26C42C1C8(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_26C46C7A4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 16 * v9;

    return sub_26C3DE134(a1, v20);
  }

  else
  {

    return sub_26C3DCBF8(v9, a2, a1, v19);
  }
}

uint64_t sub_26C3DBDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_26C42C2A8(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_26C3D98F4(v18, a5 & 1);
      v13 = sub_26C42C2A8(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_26C46C7A4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_26C42E2F0();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_26C3DBF68(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v30 = a1;
  v9 = sub_26C46BB54();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_26C42C210(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_26C42E470();
      goto LABEL_9;
    }

    sub_26C3D9BAC(v18, a4 & 1);
    v21 = sub_26C42C210(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_26C46C7A4();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v30;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    v26 = *v25;
    v27 = v25[1];
    *v25 = v30;
    v25[1] = a2;

    return sub_26C3DDEA8(v26, v27);
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_26C3DCC60(v15, v12, v23, a2, v24);
  }
}

uint64_t sub_26C3DC144(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_26C42C320(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_26C42E6FC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_26C3D9F64(v14, a3 & 1);
    v9 = sub_26C42C320(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_26C46C7A4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 8 * v9;

    return sub_26C3DDF58(a1, v20);
  }

  else
  {

    return sub_26C3DCD20(v9, a2, a1, v19);
  }
}

uint64_t sub_26C3DC264(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26C46BB54();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_26C42C210(a2);
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
      sub_26C42E878();
      goto LABEL_7;
    }

    sub_26C3DA1E4(v17, a3 & 1);
    v28 = sub_26C42C210(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_26C3DCD8C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_26C46C7A4();
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
  v21 = v20[7];
  v22 = sub_26C46BCD4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_26C3DC468(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26C46BB54();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_26C42C210(a2);
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
      sub_26C42EBCC();
      goto LABEL_7;
    }

    sub_26C3DA65C(v17, a3 & 1);
    v22 = sub_26C42C210(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_26C3DCE80(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_26C46C7A4();
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
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_26C3DC634(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26C46BB54();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_26C42C210(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
      return sub_26C3DDCE0(a1, v21 + *(*(v22 - 8) + 72) * v14, &qword_280497330, &unk_26C46D120);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_26C42F56C();
    goto LABEL_7;
  }

  sub_26C3DB484(v17, a3 & 1);
  v24 = sub_26C42C210(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_26C46C7A4();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_26C3DCF38(v14, v11, a1, v20);
}

uint64_t sub_26C3DC810(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26C46BB54();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_26C42C210(a2);
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
      sub_26C42F240();
      goto LABEL_7;
    }

    sub_26C3DB03C(v17, a3 & 1);
    v24 = sub_26C42C210(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_26C3DD020(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_26C46C7A4();
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
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for CachedOwnershipRequest(0) - 8) + 72) * v14;

  return sub_26C3DDB4C(a1, v22);
}

uint64_t sub_26C3DC9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v28 = a1;
  v29 = a2;
  v10 = sub_26C46BB54();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_26C42C210(a4);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a5 & 1) == 0)
  {
    if (v21 >= v19 && (a5 & 1) == 0)
    {
      sub_26C42F888();
      goto LABEL_9;
    }

    sub_26C3DB8CC(v19, a5 & 1);
    v22 = sub_26C42C210(a4);
    if ((v20 & 1) == (v23 & 1))
    {
      v16 = v22;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_26C46C7A4();
    __break(1u);
    return result;
  }

LABEL_9:
  v24 = v29;
  v25 = *v6;
  if (v20)
  {
    v26 = (v25[7] + 24 * v16);
    *v26 = v28;
    v26[1] = v24;
    v26[2] = a3;
  }

  else
  {
    (*(v11 + 16))(v13, a4, v10);
    return sub_26C3DD0FC(v16, v13, v28, v24, a3, v25);
  }
}

uint64_t sub_26C3DCBF8(unint64_t a1, int a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  result = sub_26C3DE0D8(a3, a4[7] + 16 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_26C3DCC60(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_26C46BB54();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_26C3DCD20(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_26C3DDEFC(a3, a4[7] + 8 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_26C3DCD8C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26C46BB54();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_26C46BCD4();
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

uint64_t sub_26C3DCE80(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26C46BB54();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
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

uint64_t sub_26C3DCF38(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26C46BB54();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
  result = sub_26C3DDC70(a3, v10 + *(*(v11 - 8) + 72) * a1);
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

uint64_t sub_26C3DD020(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26C46BB54();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for CachedOwnershipRequest(0);
  result = sub_26C3DDAE8(a3, v10 + *(*(v11 - 8) + 72) * a1);
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

uint64_t sub_26C3DD0FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_26C46BB54();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = (a6[7] + 24 * a1);
  *v15 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

uint64_t _s12SyncedModels0A15ModelOwnerStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, char *a2)
{
  v35 = a2;
  v3 = sub_26C46BB54();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  v9 = sub_26C46BCD4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SyncedModelOwnerState(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497390, &unk_26C46D180);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v32 - v18;
  v20 = *(v17 + 56);
  sub_26C3DDBB0(a1, &v32 - v18, type metadata accessor for SyncedModelOwnerState);
  v21 = v10;
  sub_26C3DDBB0(v35, &v19[v20], type metadata accessor for SyncedModelOwnerState);
  v22 = *(v10 + 48);
  v23 = v22(v19, 2, v9);
  if (!v23)
  {
    v35 = v6;
    sub_26C3DDBB0(v19, v15, type metadata accessor for SyncedModelOwnerState);
    if (!v22(&v19[v20], 2, v9))
    {
      v26 = *(v10 + 32);
      v32 = v12;
      v26(v12, &v19[v20], v9);
      v27 = v8;
      sub_26C46BCC4();
      v28 = v35;
      sub_26C46BCC4();
      v24 = sub_26C46BB14();
      v29 = v34;
      v30 = *(v33 + 8);
      v30(v28, v34);
      v30(v27, v29);
      v31 = *(v21 + 8);
      v31(v32, v9);
      v31(v15, v9);
      sub_26C3DD6A8(v19);
      return v24 & 1;
    }

    (*(v10 + 8))(v15, v9);
    goto LABEL_9;
  }

  if (v23 == 1)
  {
    if (v22(&v19[v20], 2, v9) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v22(&v19[v20], 2, v9) != 2)
  {
LABEL_9:
    sub_26C3DE270(v19, &qword_280497390, &unk_26C46D180);
    v24 = 0;
    return v24 & 1;
  }

  sub_26C3DD6A8(v19);
  v24 = 1;
  return v24 & 1;
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

uint64_t type metadata accessor for SyncedModelOwnerState(uint64_t a1)
{
  result = qword_280497270;
  if (!qword_280497270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26C3DD644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncedModelOwnerState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C3DD6A8(uint64_t a1)
{
  v2 = type metadata accessor for SyncedModelOwnerState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C3DD720(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26C3DD730(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26C3DD740()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 sub_26C3DD790(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_26C3DD7C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C46BCD4();
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

uint64_t sub_26C3DD848(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_26C46BCD4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_26C3DD8D0(uint64_t a1)
{
  v1 = sub_26C46BCD4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for SyncedModelsTester(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SyncedModelsTester(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void type metadata accessor for CFRunLoopObserver()
{
  if (!qword_280497300)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280497300);
    }
  }
}

uint64_t sub_26C3DDAE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedOwnershipRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C3DDB4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedOwnershipRequest(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C3DDBB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_26C3DDC18()
{
  result = qword_280497318;
  if (!qword_280497318)
  {
    sub_26C46BB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497318);
  }

  return result;
}

uint64_t sub_26C3DDC70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C3DDCE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_26C3DDD48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26C3DDDB0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_26C3DDE04()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C3DDE74@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26C3DDEA8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t *sub_26C3DE010(uint64_t a1)
{
  v2 = *v1;
  v1[2] = a1;
  v3 = type metadata accessor for TestSyncedModelController(0);
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  v6 = swift_unknownObjectRetain();
  v1[3] = sub_26C412CF4(v6, v3, v4, v5);
  return v1;
}

uint64_t sub_26C3DE214(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26C3DE270(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26C3DE314()
{
  v0 = sub_26C46BFA4();
  __swift_allocate_value_buffer(v0, qword_280498530);
  __swift_project_value_buffer(v0, qword_280498530);
  return sub_26C46BF94();
}

uint64_t sub_26C3DE390(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;
  sub_26C46C474();
  sub_26C3DE518(sub_26C3DE4F8, v4, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v2, v5);
  if (v5[1])
  {
    return v5[0];
  }

  else
  {
    return 7104878;
  }
}

uint64_t sub_26C3DE428@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_26C46C1D4();
  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t sub_26C3DE518@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
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

uint64_t sub_26C3DE85C(uint64_t a1)
{
  v1 = swift_allocObject();
  *(v1 + 24) = MEMORY[0x277D84F98];
  *(v1 + 32) = xmmword_26C46D190;
  sub_26C46BC14();
  *(v1 + 16) = sub_26C46BC04();
  return v1;
}

uint64_t sub_26C3DE8CC(uint64_t a1)
{
  *(v1 + 24) = MEMORY[0x277D84F98];
  *(v1 + 32) = xmmword_26C46D190;
  sub_26C46BC14();
  *(v1 + 16) = sub_26C46BC04();
  return v1;
}

uint64_t sub_26C3DE928(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v76 = a3;
  v11 = sub_26C46C0A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v73 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_26C46C0D4();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26C46C0B4();
  v69 = *(v15 - 8);
  v70 = v15;
  MEMORY[0x28223BE20](v15);
  v68 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26C46BB54();
  v75 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v82 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage(0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v24 = 0;
    if (v23 != 2)
    {
      goto LABEL_10;
    }

    v26 = *(a1 + 16);
    v25 = *(a1 + 24);
    v27 = __OFSUB__(v25, v26);
    v24 = v25 - v26;
    if (!v27)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v23)
  {
    v24 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v24) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v24 = v24;
LABEL_10:
  v28 = v6[4];
  v81 = v17;
  if (v28 >= v24)
  {
    goto LABEL_17;
  }

  v29 = v6[5];
  v27 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v27)
  {
    __break(1u);
    goto LABEL_34;
  }

  v6[5] = v30;
  if (v30 < 201)
  {
    goto LABEL_18;
  }

  v80 = v20;
  v67 = v12;
  if (qword_280497148 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v31 = sub_26C46BFA4();
    __swift_project_value_buffer(v31, qword_280498530);
    v32 = sub_26C46BF84();
    v33 = sub_26C46C3F4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v65 = a4;
      v35 = v34;
      *v34 = 134217984;
      *(v34 + 4) = 200;
      _os_log_impl(&dword_26C3D6000, v32, v33, "SyncedModel message size has been constantly increasing for more than %ld messages.", v34, 0xCu);
      v36 = v35;
      a4 = v65;
      MEMORY[0x26D6A18D0](v36, -1, -1);
    }

    v12 = v67;
    v20 = v80;
LABEL_17:
    v6[5] = 0;
LABEL_18:
    if (v23 > 1)
    {
      break;
    }

    if (!v23)
    {
      v37 = a1;
      v38 = a5;
      v39 = v20;
      v40 = BYTE6(a2);
      goto LABEL_27;
    }

    LODWORD(v40) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v37 = a1;
      v38 = a5;
      v39 = v20;
      v40 = v40;
      goto LABEL_27;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  if (v23 == 2)
  {
    v42 = *(a1 + 16);
    v41 = *(a1 + 24);
    v27 = __OFSUB__(v41, v42);
    v40 = v41 - v42;
    if (!v27)
    {
      v37 = a1;
      v38 = a5;
      v39 = v20;
      goto LABEL_27;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v37 = a1;
  v38 = a5;
  v39 = v20;
  v40 = 0;
LABEL_27:
  v6[4] = v40;
  v43 = sub_26C411A3C(60000, v37, a2);
  v44 = *(v43 + 16);
  if (v44 == 1)
  {

    sub_26C46BB44();
    v45 = &v22[*(v39 + 20)];
    *v45 = v37;
    v45[1] = a2;
    v22[*(v39 + 24)] = 1;
    sub_26C3DDDB0(v37, a2);
    sub_26C3E04A0(&qword_2804973E0, type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage, &unk_26C46D254);
    sub_26C3E04A0(&qword_2804973E8, type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage, &unk_26C46D22C);
    sub_26C46BBE4();
    return sub_26C3E02C0(v22);
  }

  else
  {
    v66 = v43;
    v65 = a4;
    v63 = v38;
    v67 = v12;
    v64 = v11;
    v47 = v82;
    sub_26C46BB44();
    v48 = dispatch_group_create();
    v80 = swift_allocObject();
    *(v80 + 16) = 0;
    if (v44)
    {
      v79 = v6[2];
      v49 = (v66 + 32);
      v77 = *(v75 + 16);
      v78 = v75 + 16;
      do
      {
        v77(v22, v47, v81);
        --v44;
        v50 = *v49++;
        *&v22[*(v39 + 20)] = v50;
        v22[*(v39 + 24)] = v44 == 0;
        sub_26C3DDDB0(v50, *(&v50 + 1));
        dispatch_group_enter(v48);
        v51 = swift_allocObject();
        *(v51 + 16) = v80;
        *(v51 + 24) = v48;
        sub_26C3E04A0(&qword_2804973E0, type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage, &unk_26C46D254);
        sub_26C3E04A0(&qword_2804973E8, type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage, &unk_26C46D22C);

        v52 = v48;
        v47 = v82;
        sub_26C46BBE4();

        sub_26C3E02C0(v22);
      }

      while (v44);
    }

    sub_26C3E03F0();
    v54 = v69;
    v53 = v70;
    v55 = v68;
    (*(v69 + 104))(v68, *MEMORY[0x277D851C8], v70);
    v56 = sub_26C46C464();
    (*(v54 + 8))(v55, v53);
    v57 = swift_allocObject();
    v58 = v63;
    v57[2] = v65;
    v57[3] = v58;
    v57[4] = v80;
    aBlock[4] = sub_26C3E047C;
    aBlock[5] = v57;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26C3DF384;
    aBlock[3] = &block_descriptor;
    v59 = _Block_copy(aBlock);

    v60 = v71;
    sub_26C46C0C4();
    v83 = MEMORY[0x277D84F90];
    sub_26C3E04A0(&qword_2804973F8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497400, &qword_26C46D290);
    sub_26C3E04E8();
    v61 = v73;
    v62 = v64;
    sub_26C46C484();
    sub_26C46C414();
    _Block_release(v59);

    (*(v67 + 8))(v61, v62);
    (*(v72 + 8))(v60, v74);
    (*(v75 + 8))(v47, v81);
  }
}

void sub_26C3DF27C(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = a1;
  if (!a1)
  {
    swift_beginAccess();
    v6 = *(a2 + 16);
    v7 = v6;
  }

  swift_beginAccess();
  v8 = *(a2 + 16);
  *(a2 + 16) = v6;
  v9 = a1;

  dispatch_group_leave(a3);
}

void sub_26C3DF318(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  v6 = v5;
  a1(v5);
}

uint64_t sub_26C3DF384(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_26C3DF3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 24);
    if (*(v9 + 16))
    {

      v10 = sub_26C42C210(a1);
      if (v11)
      {
        v12 = (*(v9 + 56) + 16 * v10);
        v13 = *v12;
        v14 = v12[1];
        sub_26C3DDDB0(*v12, v14);
      }

      else
      {
        v13 = 0;
        v14 = 0xC000000000000000;
      }
    }

    else
    {
      v13 = 0;
      v14 = 0xC000000000000000;
    }

    *&v24 = v13;
    *(&v24 + 1) = v14;
    v15 = type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage(0);
    sub_26C46BAB4();
    if (*(a1 + *(v15 + 24)))
    {
      swift_beginAccess();
      sub_26C42C6B4(a1, &v23);
      sub_26C3E05C4(v23, *(&v23 + 1));
      swift_endAccess();

      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497410, &qword_26C46D298);
      v17 = *(v16 + 48);
      *a4 = v24;
      v18 = sub_26C46BBD4();
      (*(*(v18 - 8) + 16))(&a4[v17], a2, v18);
      return (*(*(v16 - 8) + 56))(a4, 0, 1, v16);
    }

    v20 = v24;
    swift_beginAccess();
    sub_26C3DDDB0(v24, *(&v24 + 1));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v23 = *(v8 + 24);
    *(v8 + 24) = 0x8000000000000000;
    sub_26C3DBF68(v20, *(&v20 + 1), a1, isUniquelyReferenced_nonNull_native);
    *(v8 + 24) = v23;
    swift_endAccess();

    sub_26C3DDEA8(v20, *(&v20 + 1));
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497410, &qword_26C46D298);
  return (*(*(v22 - 8) + 56))(a4, 1, 1, v22);
}

uint64_t sub_26C3DF678()
{
  v1 = *v0;
  sub_26C46C814();
  MEMORY[0x26D6A1230](v1);
  return sub_26C46C844();
}

uint64_t sub_26C3DF6EC(uint64_t a1)
{
  v2 = *v1;
  sub_26C46C814();
  MEMORY[0x26D6A1230](v2);
  return sub_26C46C844();
}

uint64_t sub_26C3DF730()
{
  v1 = 0x64616F6C796170;
  if (*v0 != 1)
  {
    v1 = 0x6E7568437473616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_26C3DF788@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26C3E084C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26C3DF7C8(uint64_t a1)
{
  v2 = sub_26C3E0168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26C3DF804(uint64_t a1)
{
  v2 = sub_26C3E0168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26C3DF840(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804973C8, &qword_26C46D288);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C3E0168();
  sub_26C46C8B4();
  LOBYTE(v13) = 0;
  sub_26C46BB54();
  sub_26C3E04A0(&qword_2804973D0, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_26C46C6D4();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage(0) + 20));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    sub_26C3DDDB0(v13, v10);
    sub_26C3E031C();
    sub_26C46C6D4();
    sub_26C3DDEA8(v13, v14);
    LOBYTE(v13) = 2;
    sub_26C46C6C4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26C3DFA50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_26C46BB54();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804973A8, &qword_26C46D280);
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v20 - v6;
  v8 = type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C3E0168();
  sub_26C46C894();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v24;
  v11 = v25;
  v21 = v8;
  v22 = v10;
  LOBYTE(v28) = 0;
  sub_26C3E04A0(&qword_2804973B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v14 = v26;
  v13 = v27;
  sub_26C46C684();
  (*(v11 + 32))(v22, v14, v4);
  v29 = 1;
  sub_26C3E0208();
  sub_26C46C684();
  *&v22[*(v21 + 20)] = v28;
  LOBYTE(v28) = 2;
  v15 = sub_26C46C674();
  (*(v12 + 8))(v7, v13);
  v16 = v15 & 1;
  v18 = v22;
  v17 = v23;
  v22[*(v21 + 24)] = v16;
  sub_26C3E025C(v18, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26C3E02C0(v18);
}

uint64_t sub_26C3DFE44()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26C3DFEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C46BB54();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26C3DFF9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26C46BB54();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage(uint64_t a1)
{
  result = qword_280497398;
  if (!qword_280497398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26C3E00A0(uint64_t a1)
{
  result = sub_26C46BB54();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

unint64_t sub_26C3E0168()
{
  result = qword_2804973B0;
  if (!qword_2804973B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804973B0);
  }

  return result;
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

unint64_t sub_26C3E0208()
{
  result = qword_2804973C0;
  if (!qword_2804973C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804973C0);
  }

  return result;
}

uint64_t sub_26C3E025C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C3E02C0(uint64_t a1)
{
  v2 = type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26C3E031C()
{
  result = qword_2804973D8;
  if (!qword_2804973D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804973D8);
  }

  return result;
}

uint64_t sub_26C3E0370()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26C3E03A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_26C3E03F0()
{
  result = qword_2804973F0;
  if (!qword_2804973F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804973F0);
  }

  return result;
}

uint64_t sub_26C3E043C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26C3E04A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26C3E04E8()
{
  result = qword_280497408;
  if (!qword_280497408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497400, &qword_26C46D290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497408);
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

uint64_t sub_26C3E0594@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_26C3E05C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26C3DDEA8(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26C3E0748()
{
  result = qword_280497418;
  if (!qword_280497418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497418);
  }

  return result;
}

unint64_t sub_26C3E07A0()
{
  result = qword_280497420;
  if (!qword_280497420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497420);
  }

  return result;
}

unint64_t sub_26C3E07F8()
{
  result = qword_280497428;
  if (!qword_280497428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497428);
  }

  return result;
}

uint64_t sub_26C3E084C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_26C46C764() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000 || (sub_26C46C764() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E7568437473616CLL && a2 == 0xE90000000000006BLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_26C46C764();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_26C3E096C(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v4 = *v2;
  v5 = *(*v2 + 280);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v30 = *(TupleTypeMetadata3 - 8);
  v31 = TupleTypeMetadata3;
  v7 = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v9 = v25 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v25 - v11;
  v13 = *(v5 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = v25 - v14;
  v27 = v25 - v14;
  v16 = *(v4 + 304);
  swift_beginAccess();
  v28 = v13;
  v26 = *(v13 + 16);
  v26(v15, &v2[v16], v5);
  swift_beginAccess();
  (*(v13 + 24))(&v2[v16], a1, v5);
  swift_endAccess();
  v25[1] = *&v2[*(*v2 + 336)];
  v17 = sub_26C46BCD4();
  v18 = *(v17 - 8);
  v19 = v12;
  (*(v18 + 16))(v12, v29, v17);
  (*(v18 + 56))(v12, 0, 1, v17);
  v20 = *(v31 + 48);
  v21 = *(v31 + 64);
  v22 = v26;
  v23 = v27;
  v26(v9, v27, v5);
  v22(&v9[v20], &v2[v16], v5);
  sub_26C3E9F28(v19, &v9[v21], &qword_280497268, &qword_26C46CFE0);
  sub_26C46BFE4();
  (*(v30 + 8))(v9, v31);
  return (*(v28 + 8))(v23, v5);
}

uint64_t sub_26C3E0D08(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t), uint64_t a3)
{
  v55 = a3;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v53 = &v46 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v46 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v46 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v18 = sub_26C46BB54();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v46 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v46 - v26;
  sub_26C3DDD48(a1, v60, &qword_280497450, &qword_26C471080);
  if (!v61)
  {
    return sub_26C3DE270(v60, &qword_280497450, &qword_26C471080);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
  result = swift_dynamicCast();
  if (result)
  {
    v51 = v7;
    v29 = v58;
    v30 = v59;
    ObjectType = swift_getObjectType();
    v52 = v29;
    v32 = sub_26C3F8720(ObjectType, v30);
    v33 = *(v56 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);
    if (v33 && (Strong = swift_weakLoadStrong()) != 0)
    {
      v48 = Strong;
      v50 = v33;
      sub_26C3DDD48(v54, v17, &qword_280497430, &unk_26C46D3D0);
      v54 = *(v19 + 48);
      v35 = v54(v17, 1, v18);
      v49 = v32;
      if (v35 == 1)
      {

        sub_26C3DE270(v17, &qword_280497430, &unk_26C46D3D0);
      }

      else
      {
        (*(v19 + 32))(v27, v17, v18);
        v47 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
        swift_beginAccess();
        v46 = *(v19 + 24);

        v46(v32 + v47, v27, v18);
        swift_endAccess();
        (*(v19 + 8))(v27, v18);
      }

      sub_26C3DDD48(v55, v15, &qword_280497430, &unk_26C46D3D0);
      v40 = v54(v15, 1, v18);
      v41 = v51;
      if (v40 == 1)
      {
        sub_26C3DE270(v15, &qword_280497430, &unk_26C46D3D0);
        v42 = v49;
      }

      else
      {
        (*(v19 + 32))(v25, v15, v18);
        (*(v19 + 16))(v12, v25, v18);
        (*(v19 + 56))(v12, 0, 1, v18);
        v43 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
        v42 = v49;
        swift_beginAccess();
        v44 = v53;
        sub_26C3DDD48(v42 + v43, v53, &qword_280497430, &unk_26C46D3D0);
        swift_beginAccess();
        sub_26C3E9EB8(v12, v42 + v43);
        swift_endAccess();
        sub_26C3DDD48(v42 + v43, v41, &qword_280497430, &unk_26C46D3D0);
        sub_26C418F90(v44, v41);
        sub_26C3DE270(v41, &qword_280497430, &unk_26C46D3D0);
        sub_26C3DE270(v44, &qword_280497430, &unk_26C46D3D0);
        sub_26C3DE270(v12, &qword_280497430, &unk_26C46D3D0);
        (*(v19 + 8))(v25, v18);
      }

      sub_26C3E9FFC(v42, v50);
      v45 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      swift_beginAccess();
      (*(v19 + 16))(v22, v42 + v45, v18);
      swift_beginAccess();
      sub_26C3D8DE0(0, v22);
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      swift_beginAccess();
      (*(v19 + 16))(v22, v32 + v36, v18);
      v37 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__pendingModelControllers;
      v38 = v56;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57[0] = *(v38 + v37);
      *(v38 + v37) = 0x8000000000000000;
      sub_26C3DC468(v32, v22, isUniquelyReferenced_nonNull_native);
      (*(v19 + 8))(v22, v18);
      *(v38 + v37) = v57[0];
      swift_endAccess();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_26C3E13DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26C46BB54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C3DE214(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
  result = swift_dynamicCast();
  if (result)
  {
    v9 = v14[2];
    ObjectType = swift_getObjectType();
    v11 = sub_26C3F8720(ObjectType, v9);
    v12 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    swift_beginAccess();
    (*(v5 + 16))(v7, v11 + v12, v4);
    swift_beginAccess();
    sub_26C3D8DE0(0, v7);
    swift_endAccess();
    if (*(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller) && swift_weakLoadStrong())
    {
      v13 = sub_26C3F8720(ObjectType, v9);
      sub_26C3EA514(v13);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t SyncedPropertyBase.deinit()
{
  sub_26C3E9BAC(v0 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp, type metadata accessor for LamportTimestamp);

  return v0;
}

uint64_t SyncedPropertyBase.__deallocating_deinit()
{
  sub_26C3E9BAC(v0 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp, type metadata accessor for LamportTimestamp);

  return swift_deallocClassInstance();
}

uint64_t sub_26C3E16D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_26C46C764() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_26C46C764() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_26C46C764() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72656E776FLL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_26C46C764();

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

unint64_t sub_26C3E1830(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_26C3E1854(unsigned __int8 a1)
{
  v1 = 0x65756C6176;
  v2 = 25705;
  if (a1 != 2)
  {
    v2 = 0x72656E776FLL;
  }

  if (a1)
  {
    v1 = 0x6D617473656D6974;
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

uint64_t sub_26C3E18C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BA8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26C3E1934(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_26C3E19A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26C3E1A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_26C3E1A80@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26C3E1830(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26C3E1AAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26C3E184C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_26C3E1AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26C3E16D4(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_26C3E1B28@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26C3E1830(a1);
  *a2 = result;
  return result;
}

uint64_t sub_26C3E1B50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26C3E1BA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t SyncedProperty.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SyncedProperty.init(from:)(a1);
  return v2;
}

void *SyncedProperty.init(from:)(void *a1)
{
  v2 = v1;
  v66 = a1;
  v3 = *v1;
  v61 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v49 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = v48 - v7;
  v57 = type metadata accessor for LamportTimestamp(0);
  v8 = MEMORY[0x28223BE20](v57);
  v51 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v59 = v48 - v11;
  v12 = v3[35];
  v56 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v52 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v60 = v48 - v15;
  v16 = v3[37];
  v55 = v3[36];
  type metadata accessor for SyncedProperty.CodingKeys(255, v12, v55, v16);
  WitnessTable = swift_getWitnessTable();
  v17 = sub_26C46C694();
  v18 = *(v17 - 8);
  v53 = v17;
  v54 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = v48 - v19;
  v21 = swift_conformsToProtocol2();
  if (v12)
  {
    v22 = v21 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = !v22;
  *(v2 + v3[39]) = v23;
  v24 = *(*v2 + 320);
  v25 = sub_26C46BB54();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v28 = v26 + 56;
  v27(v2 + v24, 1, 1, v25);
  v27(v2 + *(*v2 + 328), 1, 1, v25);
  v29 = *(*v2 + 336);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  v58 = v12;
  swift_getTupleTypeMetadata3();
  sub_26C46C014();
  *(v2 + v29) = sub_26C46C004();
  __swift_project_boxed_opaque_existential_1(v66, v66[3]);
  v30 = v63;
  sub_26C46C894();
  if (v30)
  {
    __swift_destroy_boxed_opaque_existential_1(v66);
    sub_26C3DE270(v2 + *(*v2 + 320), &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v2 + *(*v2 + 328), &qword_280497430, &unk_26C46D3D0);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v48[1] = v28;
    WitnessTable = v27;
    v63 = v25;
    v31 = v56;
    v32 = v59;
    v65 = 0;
    v33 = v58;
    v34 = v53;
    sub_26C46C684();
    (*(v31 + 32))(v2 + *(*v2 + 304), v60, v33);
    v65 = 1;
    sub_26C3E9C70(&qword_280497438, type metadata accessor for LamportTimestamp, &unk_26C46DFE0);
    sub_26C46C684();
    v61 = v20;
    v36 = v32;
    v37 = v32;
    v38 = v51;
    sub_26C3E91AC(v36, v51, type metadata accessor for LamportTimestamp);
    *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller) = 0;
    *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__parentPropertyID) = -1;
    *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__propertyID) = -1;
    v39 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__pendingModelControllers;
    *(v2 + v39) = sub_26C3E8EF0(MEMORY[0x277D84F90]);
    sub_26C3E9F90(v38, v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp, type metadata accessor for LamportTimestamp);
    v40 = *(*v2 + 304);
    swift_beginAccess();
    (*(v31 + 16))(v52, v2 + v40, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      LOBYTE(v64) = 2;
      sub_26C3E9C70(&qword_2804973B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
      v41 = v50;
      v42 = v63;
      v43 = v61;
      sub_26C46C684();
      v44 = v54;
      WitnessTable(v41, 0, 1, v42);
      v45 = *(*v2 + 320);
      swift_beginAccess();
      sub_26C3E90D8(v41, v2 + v45);
      swift_endAccess();
      LOBYTE(v64) = 3;
      v46 = v49;
      sub_26C46C664();
      sub_26C3E9BAC(v59, type metadata accessor for LamportTimestamp);
      (*(v44 + 8))(v43, v34);
      v47 = *(*v2 + 328);
      swift_beginAccess();
      sub_26C3E90D8(v46, v2 + v47);
      swift_endAccess();
    }

    else
    {
      sub_26C3E9BAC(v37, type metadata accessor for LamportTimestamp);
      (*(v54 + 8))(v61, v34);
    }

    __swift_destroy_boxed_opaque_existential_1(v66);
  }

  return v2;
}

uint64_t SyncedProperty.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v45 - v6;
  v49 = sub_26C46BB54();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for LamportTimestamp(0);
  v8 = MEMORY[0x28223BE20](v52);
  v53 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v4[35];
  v59 = *(v54 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v50 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  v14 = v4[36];
  ObjectType = v4[37];
  type metadata accessor for SyncedProperty.CodingKeys(255, v15, v14, ObjectType);
  swift_getWitnessTable();
  v16 = sub_26C46C6E4();
  v58 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C46C8B4();
  v19 = *(*v2 + 304);
  swift_beginAccess();
  v21 = v59 + 16;
  v20 = *(v59 + 2);
  v51 = v2;
  v22 = v54;
  v20(v13, v2 + v19, v54);
  v63 = 0;
  v56 = v16;
  v23 = v22;
  v24 = v57;
  sub_26C46C6D4();
  if (v24)
  {
    (*(v59 + 1))(v13, v22);
    return (*(v58 + 8))(v18, v56);
  }

  else
  {
    v45 = v21;
    ObjectType = v19;
    v57 = v20;
    (*(v59 + 1))(v13, v22);
    v26 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp;
    v27 = v51;
    swift_beginAccess();
    v28 = v53;
    sub_26C3E91AC(v27 + v26, v53, type metadata accessor for LamportTimestamp);
    LOBYTE(v61) = 1;
    sub_26C3E9C70(&qword_280497448, type metadata accessor for LamportTimestamp, &unk_26C46DFB8);
    v29 = v56;
    sub_26C46C6D4();
    v30 = v29;
    sub_26C3E9BAC(v28, type metadata accessor for LamportTimestamp);
    v57(v50, v27 + ObjectType, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
    if (swift_dynamicCast())
    {
      v31 = v62;
      v32 = v18;
      ObjectType = swift_getObjectType();
      v57 = v31;
      v33 = sub_26C3F8720(ObjectType, v31);
      v34 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      swift_beginAccess();
      v35 = v48;
      v36 = v33 + v34;
      v37 = v47;
      v38 = v49;
      (*(v48 + 16))(v47, v36, v49);

      v60 = 2;
      sub_26C3E9C70(&qword_2804973D0, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
      v59 = v32;
      sub_26C46C6D4();
      (*(v35 + 8))(v37, v38);
      v39 = sub_26C3F8720(ObjectType, v57);
      v40 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
      swift_beginAccess();
      v41 = v39 + v40;
      v42 = v46;
      sub_26C3DDD48(v41, v46, &qword_280497430, &unk_26C46D3D0);

      v64 = 3;
      v43 = v59;
      sub_26C46C6B4();
      v44 = v58;
      swift_unknownObjectRelease();
      sub_26C3DE270(v42, &qword_280497430, &unk_26C46D3D0);
      return (*(v44 + 8))(v43, v30);
    }

    else
    {
      return (*(v58 + 8))(v18, v29);
    }
  }
}

uint64_t SyncedProperty.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SyncedProperty.init(wrappedValue:)(a1);
  return v2;
}

void *SyncedProperty.init(wrappedValue:)(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v30 = (&v29 - v7);
  v8 = type metadata accessor for LamportTimestamp(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 280);
  if (swift_conformsToProtocol2())
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  *(v2 + *(v3 + 312)) = v14;
  v15 = *(*v2 + 320);
  v16 = sub_26C46BB54();
  v17 = *(*(v16 - 8) + 56);
  v17(v2 + v15, 1, 1, v16);
  v17(v2 + *(*v2 + 328), 1, 1, v16);
  v18 = *(*v2 + 336);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  swift_getTupleTypeMetadata3();
  sub_26C46C014();
  *(v2 + v18) = sub_26C46C004();
  v19 = *(v12 - 8);
  v20 = *(v19 + 16);
  v20(v2 + *(*v2 + 304), v32, v12);
  *v11 = 0;
  sub_26C46BD14();
  v21 = *(v9 + 32);
  v22 = type metadata accessor for PBUUID(0);
  (*(*(v22 - 8) + 56))(&v11[v21], 1, 1, v22);
  *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller) = 0;
  *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__parentPropertyID) = -1;
  *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__propertyID) = -1;
  v23 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__pendingModelControllers;
  *(v2 + v23) = sub_26C3E8EF0(MEMORY[0x277D84F90]);
  sub_26C3E9F90(v11, v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp, type metadata accessor for LamportTimestamp);
  if (*(v2 + *(*v2 + 312)) == 1)
  {
    v33[3] = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    v25 = v32;
    v20(boxed_opaque_existential_0, v32, v12);
    v26 = v30;
    v17(v30, 1, 1, v16);
    v27 = v31;
    v17(v31, 1, 1, v16);

    sub_26C3E0D08(v33, v26, v27);

    (*(v19 + 8))(v25, v12);
    sub_26C3DE270(v27, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v26, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v33, &qword_280497450, &qword_26C471080);
  }

  else
  {
    (*(v19 + 8))(v32, v12);
  }

  return v2;
}

uint64_t SyncedProperty.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 304);
  swift_beginAccess();
  return (*(*(*(v3 + 280) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26C3E330C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = &v5 - v1;
  (*(v3 + 16))(&v5 - v1);
  return SyncedProperty.wrappedValue.setter(v2);
}

uint64_t SyncedProperty.wrappedValue.setter(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = *v1;
  v116 = type metadata accessor for LamportTimestamp(0);
  v97 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v100 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for PropertyChangedMessage(0);
  MEMORY[0x28223BE20](v95);
  v98 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for ValueData(0);
  v96 = *(v101 - 8);
  v6 = MEMORY[0x28223BE20](v101);
  v99 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v102 = &v93 - v8;
  v9 = *(v3 + 280);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v109 = *(TupleTypeMetadata3 - 8);
  v110 = TupleTypeMetadata3;
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v108 = &v93 - v12;
  MEMORY[0x28223BE20](v11);
  v107 = &v93 - v13;
  v113 = type metadata accessor for PBUUID(0);
  v111 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v115 = (&v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v104 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v103 = (&v93 - v19);
  MEMORY[0x28223BE20](v18);
  v21 = &v93 - v20;
  v22 = sub_26C46BB54();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v114 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v112 = (&v93 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v93 - v29;
  v119 = v9;
  v120 = *(v9 - 8);
  MEMORY[0x28223BE20](v28);
  v117 = &v93 - v31;
  v32 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller;
  v33 = *&v1[OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller];
  if (v33)
  {
    v34 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller;
    v35 = v23;
    v36 = *(*v33 + 744);

    if ((v36(v37) & 1) == 0)
    {
      if (qword_280497148 == -1)
      {
LABEL_7:
        v44 = sub_26C46BFA4();
        __swift_project_value_buffer(v44, qword_280498530);
        v45 = sub_26C46BF84();
        v46 = sub_26C46C3D4();
        v47 = os_log_type_enabled(v45, v46);
        v48 = v118;
        if (v47)
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&dword_26C3D6000, v45, v46, "Controller does not exist or model is owned by somebody else", v49, 2u);
          MEMORY[0x26D6A18D0](v49, -1, -1);
        }

        v50 = v119;
        v51 = v120[1];

        return v51(v48, v50);
      }

LABEL_27:
      swift_once();
      goto LABEL_7;
    }

    v23 = v35;
    v32 = v34;
  }

  v38 = *(*v1 + 304);
  swift_beginAccess();
  v39 = v119;
  v40 = v120[2];
  v106 = v120 + 2;
  v105 = v40;
  v40(v117, &v2[v38], v119);
  swift_beginAccess();
  v41 = v120[3];
  v94 = v38;
  v41(&v2[v38], v118, v39);
  swift_endAccess();
  v42 = *(v32 + v2);
  if (v42)
  {
    v43 = *(v23 + 2);
    v43(v21, v42 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v22);
    v93 = *(v23 + 7);
    v93(v21, 0, 1, v22);
    (*(v23 + 4))(v30, v21, v22);
  }

  else
  {
    v93 = *(v23 + 7);
    v93(v21, 1, 1, v22);
    if (qword_280497190 != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v22, qword_2804985C0);
    v43 = *(v23 + 2);
    v43(v30, v53, v22);
    if ((*(v23 + 6))(v21, 1, v22) != 1)
    {
      sub_26C3DE270(v21, &qword_280497430, &unk_26C46D3D0);
    }
  }

  v54 = &v2[OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp];
  swift_beginAccess();
  v55 = v112;
  v43(v112, v30, v22);
  v56 = v114;
  v43(v114, v55, v22);
  v57 = v115;
  sub_26C40F280(v56, v115);
  v58 = *(v23 + 1);
  v58(v55, v22);
  v58(v30, v22);
  v59 = *(v116 + 24);
  sub_26C3DE270(v54 + v59, &qword_280497458, &unk_26C46D3F0);
  sub_26C3E9F90(v57, v54 + v59, type metadata accessor for PBUUID);
  (*(v111 + 56))(v54 + v59, 0, 1, v113);
  v60 = *v54 + 1;
  if (*v54 == -1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v113 = v22;
  v114 = v23;
  v115 = v32;
  v112 = v54;
  *v54 = v60;
  swift_endAccess();
  v61 = sub_26C46BCD4();
  v62 = v107;
  (*(*(v61 - 8) + 56))(v107, 1, 1, v61);
  v63 = v110;
  v64 = *(v110 + 48);
  v65 = *(v110 + 64);
  v66 = v108;
  v67 = v105;
  v68 = v119;
  v105(v108, v117, v119);
  v67(&v66[v64], v118, v68);
  sub_26C3E9F28(v62, &v66[v65], &qword_280497268, &qword_26C46CFE0);
  sub_26C46BFE4();
  (*(v109 + 8))(v66, v63);
  if (v2[*(*v2 + 312)] == 1)
  {
    v69 = v119;
    v122 = v119;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v121);
    v67(boxed_opaque_existential_0, v117, v69);
    sub_26C3E13DC(v121);
    __swift_destroy_boxed_opaque_existential_1(v121);
    v122 = v69;
    v71 = __swift_allocate_boxed_opaque_existential_0(v121);
    v67(v71, &v2[v94], v69);
    v72 = v113;
    v73 = v103;
    v74 = v93;
    v93(v103, 1, 1, v113);
    v75 = v104;
    v74(v104, 1, 1, v72);
    sub_26C3E0D08(v121, v73, v75);
    sub_26C3DE270(v75, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v73, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v121, &qword_280497450, &qword_26C471080);
  }

  v76 = *(v115 + v2);
  v77 = v118;
  if (v76)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v79 = Strong;

      if (!sub_26C3EA940() || *(v79 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_options) == 1)
      {
        v80 = v102;
        sub_26C3E4470(v77, v102);
        sub_26C3E91AC(v112, v100, type metadata accessor for LamportTimestamp);
        LODWORD(v114) = *&v2[OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__propertyID];
        sub_26C3E91AC(v80, v99, type metadata accessor for ValueData);
        v81 = v98;
        *v98 = 0;
        v115 = 0;
        v82 = v95;
        sub_26C46BD14();
        v83 = *(v82 + 24);
        v84 = *(v97 + 56);
        v85 = v116;
        v84(&v81[v83], 1, 1, v116);
        v86 = *(v82 + 28);
        v87 = *(v96 + 56);
        v87(&v81[v86], 1, 1, v101);
        sub_26C3DE270(&v81[v83], &qword_280497468, &unk_26C46D400);
        sub_26C3E9F90(v100, &v81[v83], type metadata accessor for LamportTimestamp);
        v84(&v81[v83], 0, 1, v85);
        *v81 = v114;
        sub_26C3DE270(&v81[v86], &qword_280497470, &unk_26C46E870);
        sub_26C3E9F90(v99, &v81[v86], type metadata accessor for ValueData);
        v88 = (v87)(&v81[v86], 0, 1, v101);
        MEMORY[0x28223BE20](v88);
        *(&v93 - 2) = v76;
        *(&v93 - 1) = v81;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497478, &qword_26C46D410);
        sub_26C46BB64();

        v89 = v119;
        v90 = v120[1];
        ++v120;
        v90(v118, v119);
        sub_26C3E9BAC(v102, type metadata accessor for ValueData);
        v90(v117, v89);

        return sub_26C3E9BAC(v81, type metadata accessor for PropertyChangedMessage);
      }
    }
  }

  v91 = v120[1];
  ++v120;
  v92 = v119;
  v91(v77, v119);
  return (v91)(v117, v92);
}

uint64_t sub_26C3E4470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v63 = a1;
  v58 = *v2;
  v3 = v58;
  v61 = *(v58 + 280);
  v59 = *(v61 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v57 = &v54 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v54 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v54 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v54 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v54 - v25;
  MEMORY[0x28223BE20](v24);
  v29 = &v54 - v28;
  if (*(v2 + *(v3 + 312)))
  {
    v55 = v27;
    v30 = *(v59 + 16);
    v31 = v61;
    v30(v10, v63, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
    if (swift_dynamicCast())
    {
      v32 = v62;
      ObjectType = swift_getObjectType();
      v34 = sub_26C3F8720(ObjectType, v32);
      v35 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      swift_beginAccess();
      v36 = sub_26C46BB54();
      v37 = *(v36 - 8);
      (*(v37 + 16))(v23, v34 + v35, v36);

      v38 = *(v37 + 56);
      v38(v23, 0, 1, v36);
      v39 = v57;
      v30(v57, v63, v31);
      v40 = v55;
      v38(v55, 1, 1, v36);
      sub_26C40C88C(v23, v39, v40, v31, *(v58 + 296), v60);
      return swift_unknownObjectRelease();
    }

    v51 = sub_26C46BB54();
    v52 = *(*(v51 - 8) + 56);
    v52(v19, 1, 1, v51);
    v53 = v56;
    v30(v56, v63, v31);
    v52(v16, 1, 1, v51);
    v45 = *(v58 + 296);
    v46 = v60;
    v47 = v19;
    v48 = v53;
    v49 = v16;
    v50 = v31;
  }

  else
  {
    v42 = sub_26C46BB54();
    v43 = *(*(v42 - 8) + 56);
    v43(v29, 1, 1, v42);
    v44 = v61;
    (*(v59 + 16))(v12, v63, v61);
    v43(v26, 1, 1, v42);
    v45 = *(v58 + 296);
    v46 = v60;
    v47 = v29;
    v48 = v12;
    v49 = v26;
    v50 = v44;
  }

  return sub_26C40C88C(v47, v48, v49, v50, v45, v46);
}

void (*SyncedProperty.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 280);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  SyncedProperty.wrappedValue.getter(v9);
  return sub_26C3E4AB4;
}

void sub_26C3E4AB4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    SyncedProperty.wrappedValue.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    SyncedProperty.wrappedValue.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_26C3E4B70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for LamportTimestamp(0);
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497470, &unk_26C46E870);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ValueData(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for PropertyChangedMessage(0);
  v32 = a1;
  sub_26C3DDD48(a1 + *(v31 + 28), v12, &qword_280497470, &unk_26C46E870);
  v17 = *(v14 + 48);
  if (v17(v12, 1, v13) == 1)
  {
    *v16 = xmmword_26C46D3C0;
    sub_26C46BD14();
    v29 = v9;
    v18 = v6;
    v19 = *(v13 + 24);
    v20 = type metadata accessor for PBUUID(0);
    v21 = *(*(v20 - 8) + 56);
    v30 = a2;
    v22 = &v16[v19];
    v6 = v18;
    v9 = v29;
    v21(v22, 1, 1, v20);
    v21(&v16[*(v13 + 28)], 1, 1, v20);
    a2 = v30;
    if (v17(v12, 1, v13) != 1)
    {
      sub_26C3DE270(v12, &qword_280497470, &unk_26C46E870);
    }
  }

  else
  {
    sub_26C3E9F90(v12, v16, type metadata accessor for ValueData);
  }

  sub_26C3DDD48(v32 + *(v31 + 24), v6, &qword_280497468, &unk_26C46D400);
  v23 = v34;
  v24 = *(v33 + 48);
  if (v24(v6, 1, v34) == 1)
  {
    *v9 = 0;
    sub_26C46BD14();
    v25 = *(v23 + 24);
    v26 = type metadata accessor for PBUUID(0);
    (*(*(v26 - 8) + 56))(v9 + v25, 1, 1, v26);
    if (v24(v6, 1, v23) != 1)
    {
      sub_26C3DE270(v6, &qword_280497468, &unk_26C46D400);
    }
  }

  else
  {
    sub_26C3E9F90(v6, v9, type metadata accessor for LamportTimestamp);
  }

  sub_26C3E4FD8(v16, v9, a2, 0);
  sub_26C3E9BAC(v9, type metadata accessor for LamportTimestamp);
  return sub_26C3E9BAC(v16, type metadata accessor for ValueData);
}

void sub_26C3E4FD8(uint64_t a1, _DWORD *a2, uint64_t a3, int a4)
{
  v102 = a4;
  v92 = a3;
  v109 = a2;
  v99 = a1;
  v98 = *v4;
  v5 = *(v98 + 280);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v94 = *(TupleTypeMetadata3 - 8);
  v6 = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v93 = &v86 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v91 = &v86 - v9;
  v101 = *(v5 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v103 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v104 = &v86 - v12;
  v13 = type metadata accessor for LamportTimestamp(0);
  MEMORY[0x28223BE20](v13);
  v106 = (&v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = type metadata accessor for PBUUID(0);
  v15 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v97 = (&v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v96 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v86 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v90 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v89 = (&v86 - v26);
  MEMORY[0x28223BE20](v25);
  v28 = &v86 - v27;
  v29 = sub_26C46BB54();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v107 = v4;
  v108 = &v86 - v34;
  v35 = *(v4 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);
  if (!v35)
  {
    sub_26C46C5E4();
    __break(1u);
    return;
  }

  v36 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
  swift_beginAccess();
  sub_26C3DDD48(v35 + v36, v28, &qword_280497430, &unk_26C46D3D0);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {

    sub_26C3DE270(v28, &qword_280497430, &unk_26C46D3D0);
    v37 = v109;
    v38 = v107;
LABEL_15:
    v55 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp;
    swift_beginAccess();
    v56 = v106;
    sub_26C3E91AC(v38 + v55, v106, type metadata accessor for LamportTimestamp);
    v57 = sub_26C41111C(v56, v37);
    sub_26C3E9BAC(v56, type metadata accessor for LamportTimestamp);
    v58 = v104;
    v59 = v103;
    if (v57 & 1) != 0 || (v102)
    {
      v105 = v35;
      v64 = *(*v38 + 304);
      swift_beginAccess();
      v65 = v101;
      v66 = *(v101 + 16);
      v108 = v64;
      v66(v58, &v64[v38], v5);
      sub_26C40CC14(v5, *(v98 + 288), v59);
      v107 = v66;
      v71 = v108;
      swift_beginAccess();
      (*(v65 + 40))(&v71[v38], v59, v5);
      swift_endAccess();
      if (*(v38 + *(*v38 + 312)) == 1)
      {
        v111 = v5;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v110);
        v73 = v107;
        v107(boxed_opaque_existential_0, v58, v5);
        sub_26C3E13DC(v110);
        __swift_destroy_boxed_opaque_existential_1(v110);
        v111 = v5;
        v74 = __swift_allocate_boxed_opaque_existential_0(v110);
        v73(v74, &v108[v38], v5);
        v75 = v89;
        sub_26C40CE7C(v89);
        v76 = v90;
        sub_26C40D13C(v90);
        sub_26C3E0D08(v110, v75, v76);
        sub_26C3DE270(v76, &qword_280497430, &unk_26C46D3D0);
        sub_26C3DE270(v75, &qword_280497430, &unk_26C46D3D0);
        sub_26C3DE270(v110, &qword_280497450, &qword_26C471080);
      }

      v77 = v106;
      sub_26C3E91AC(v109, v106, type metadata accessor for LamportTimestamp);
      swift_beginAccess();
      sub_26C3E9C0C(v77, v38 + v55);
      swift_endAccess();
      v109 = *(v38 + *(*v38 + 336));
      v78 = sub_26C46BCD4();
      v79 = *(v78 - 8);
      v80 = v91;
      (*(v79 + 16))(v91, v92, v78);
      (*(v79 + 56))(v80, 0, 1, v78);
      v81 = TupleTypeMetadata3;
      v82 = *(TupleTypeMetadata3 + 48);
      v83 = *(TupleTypeMetadata3 + 64);
      v84 = v93;
      v85 = v107;
      v107(v93, v58, v5);
      v85(&v84[v82], &v108[v38], v5);
      sub_26C3E9F28(v80, &v84[v83], &qword_280497268, &qword_26C46CFE0);
      sub_26C46BFE4();

      (*(v94 + 8))(v84, v81);
      (*(v101 + 8))(v58, v5);
    }

    else
    {
      if (qword_280497148 != -1)
      {
        swift_once();
      }

      v60 = sub_26C46BFA4();
      __swift_project_value_buffer(v60, qword_280498530);
      v61 = sub_26C46BF84();
      v62 = sub_26C46C3D4();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_26C3D6000, v61, v62, "SyncedProperty: Timestamp failed and not forcing replace", v63, 2u);
        MEMORY[0x26D6A18D0](v63, -1, -1);
      }
    }

    return;
  }

  v86 = v33;
  v88 = v5;
  v87 = v30;
  (*(v30 + 32))(v108, v28, v29);
  v39 = *(v13 + 24);
  v40 = v109;
  sub_26C3DDD48(v109 + v39, v21, &qword_280497458, &unk_26C46D3F0);
  v41 = *(v15 + 48);
  v42 = v100;
  v43 = v41(v21, 1, v100);
  v44 = v35;
  v45 = v43;
  v105 = v44;

  sub_26C3DE270(v21, &qword_280497458, &unk_26C46D3F0);
  if (v45 == 1)
  {
    if (qword_280497190 != -1)
    {
      swift_once();
    }

    v46 = __swift_project_value_buffer(v29, qword_2804985C0);
    v47 = v87;
    v48 = v86;
    (*(v87 + 16))(v86, v46, v29);
    v35 = v105;
    v5 = v88;
    v38 = v107;
    v49 = v108;
  }

  else
  {
    v50 = v96;
    sub_26C3DDD48(v40 + v39, v96, &qword_280497458, &unk_26C46D3F0);
    if (v41(v50, 1, v42) == 1)
    {
      v51 = v97;
      *v97 = 0;
      v51[1] = 0;
      sub_26C46BD14();
      v52 = v41(v50, 1, v42);
      v35 = v105;
      v5 = v88;
      v38 = v107;
      v49 = v108;
      if (v52 != 1)
      {
        sub_26C3DE270(v50, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v51 = v97;
      sub_26C3E9F90(v50, v97, type metadata accessor for PBUUID);
      v35 = v105;
      v5 = v88;
      v38 = v107;
      v49 = v108;
    }

    v48 = v86;
    sub_26C40F3CC();
    sub_26C3E9BAC(v51, type metadata accessor for PBUUID);
    v47 = v87;
  }

  sub_26C3E9C70(&qword_2804975A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v53 = sub_26C46C1C4();
  v54 = *(v47 + 8);
  v54(v48, v29);
  if (v53)
  {
    v54(v49, v29);
    v37 = v109;
    goto LABEL_15;
  }

  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v67 = sub_26C46BFA4();
  __swift_project_value_buffer(v67, qword_280498530);
  v68 = sub_26C46BF84();
  v69 = sub_26C46C3D4();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_26C3D6000, v68, v69, "SyncedProperty: Cannot apply property changed message. Not the current owner or unowned", v70, 2u);
    MEMORY[0x26D6A18D0](v70, -1, -1);
  }

  else
  {
  }

  v54(v49, v29);
}

uint64_t sub_26C3E5F6C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49 = a3;
  v52 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v43 - v7;
  v50 = type metadata accessor for LamportTimestamp(0);
  v47 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497470, &unk_26C46E870);
  MEMORY[0x28223BE20](v11 - 8);
  v51 = &v43 - v12;
  v13 = type metadata accessor for ValueData(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_26C46BD44();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = type metadata accessor for PropertyCatchupData(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v4 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);
  v46 = v13;
  if (v21 && (Strong = swift_weakLoadStrong()) != 0)
  {
    v23 = v20;
    v24 = v16;
    v25 = v14;
    v26 = v4;
    v27 = *(Strong + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_options);

    v48 = v27 ^ 1;
    v4 = v26;
    v14 = v25;
    v16 = v24;
    v20 = v23;
  }

  else
  {
    v48 = 0;
  }

  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_26C3DDDB0(v52, a2);
  sub_26C46BD34();
  sub_26C3E9C70(&qword_2804975A0, type metadata accessor for PropertyCatchupData, &unk_26C46F65C);
  sub_26C46BE54();
  v28 = v51;
  sub_26C3DDD48(&v20[*(v18 + 20)], v51, &qword_280497470, &unk_26C46E870);
  v29 = *(v14 + 48);
  v30 = v46;
  v31 = v29(v28, 1, v46);
  v45 = v16;
  if (v31 == 1)
  {
    *v16 = xmmword_26C46D3C0;
    sub_26C46BD14();
    v43 = *(v30 + 24);
    v32 = type metadata accessor for PBUUID(0);
    v44 = v20;
    v33 = v32;
    v34 = *(*(v32 - 8) + 56);
    v52 = v4;
    v34(v16 + v43, 1, 1, v32);
    v35 = v33;
    v20 = v44;
    v34(v16 + *(v30 + 28), 1, 1, v35);
    v36 = v51;
    if (v29(v51, 1, v30) != 1)
    {
      sub_26C3DE270(v36, &qword_280497470, &unk_26C46E870);
    }
  }

  else
  {
    sub_26C3E9F90(v28, v16, type metadata accessor for ValueData);
  }

  sub_26C3DDD48(&v20[*(v18 + 24)], v8, &qword_280497468, &unk_26C46D400);
  v37 = *(v47 + 48);
  if (v37(v8, 1, v50) == 1)
  {
    *v10 = 0;
    v38 = v50;
    sub_26C46BD14();
    v39 = *(v38 + 24);
    v40 = type metadata accessor for PBUUID(0);
    (*(*(v40 - 8) + 56))(&v10[v39], 1, 1, v40);
    if (v37(v8, 1, v38) != 1)
    {
      sub_26C3DE270(v8, &qword_280497468, &unk_26C46D400);
    }
  }

  else
  {
    sub_26C3E9F90(v8, v10, type metadata accessor for LamportTimestamp);
  }

  v41 = v45;
  sub_26C3E4FD8(v45, v10, v49, v48 & 1);
  sub_26C3E9BAC(v10, type metadata accessor for LamportTimestamp);
  sub_26C3E9BAC(v41, type metadata accessor for ValueData);
  return sub_26C3E9BAC(v20, type metadata accessor for PropertyCatchupData);
}

uint64_t *sub_26C3E66DC()
{
  v80 = *v0;
  v2 = v80;
  v81 = v1;
  v73 = type metadata accessor for LamportTimestamp(0);
  v67 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for PropertyCatchupData(0);
  MEMORY[0x28223BE20](v72);
  v68 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for ValueData(0);
  v65 = *(v66 - 8);
  v5 = MEMORY[0x28223BE20](v66);
  v70 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v86 = &v62 - v8;
  v9 = *(v2 + 280);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v7);
  v78 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v76 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v75 = &v62 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v69 = &v62 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v62 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v62 - v25;
  v27 = sub_26C46BB54();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v83 = v26;
  v30 = v26;
  v31 = v29;
  v29(v30, 1, 1, v27);
  v84 = v24;
  v31(v24, 1, 1, v27);
  v32 = *(*v0 + 304);
  swift_beginAccess();
  v33 = *(v10 + 16);
  v82 = v0;
  v77 = v10 + 16;
  v74 = v33;
  v33(v14, v0 + v32, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
  v79 = v9;
  if (swift_dynamicCast())
  {
    v34 = v85;
    ObjectType = swift_getObjectType();
    v35 = sub_26C3F8720(ObjectType, v34);
    v64 = v32;
    v36 = v83;
    sub_26C3DE270(v83, &qword_280497430, &unk_26C46D3D0);
    v37 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    swift_beginAccess();
    v38 = v35 + v37;
    v39 = v69;
    (*(v28 + 16))(v69, v38, v27);

    v31(v39, 0, 1, v27);
    sub_26C3E9F28(v39, v36, &qword_280497430, &unk_26C46D3D0);
    v40 = sub_26C3F8720(ObjectType, v34);
    swift_unknownObjectRelease();
    v41 = v84;
    sub_26C3DE270(v84, &qword_280497430, &unk_26C46D3D0);
    v42 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
    swift_beginAccess();
    sub_26C3DDD48(v40 + v42, v41, &qword_280497430, &unk_26C46D3D0);

    v43 = v36;
    v32 = v64;
  }

  else
  {
    v43 = v83;
    v41 = v84;
  }

  v44 = v75;
  sub_26C3DDD48(v43, v75, &qword_280497430, &unk_26C46D3D0);
  v45 = v82;
  v46 = v82 + v32;
  v48 = v78;
  v47 = v79;
  v74(v78, v46, v79);
  v49 = v76;
  sub_26C3DDD48(v41, v76, &qword_280497430, &unk_26C46D3D0);
  v50 = v81;
  v51 = v86;
  sub_26C40C88C(v44, v48, v49, v47, *(v80 + 296), v86);
  if (v50)
  {
    v52 = &qword_280497430;
    sub_26C3DE270(v41, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v43, &qword_280497430, &unk_26C46D3D0);
  }

  else
  {
    sub_26C3E91AC(v51, v70, type metadata accessor for ValueData);
    v53 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp;
    swift_beginAccess();
    sub_26C3E91AC(v45 + v53, v71, type metadata accessor for LamportTimestamp);
    v54 = v68;
    sub_26C46BD14();
    v55 = *(v72 + 20);
    v56 = v72;
    v57 = *(v65 + 56);
    v58 = v66;
    v57(v54 + v55, 1, 1, v66);
    v59 = *(v56 + 24);
    v60 = *(v67 + 56);
    v60(v54 + v59, 1, 1, v73);
    sub_26C3DE270(v54 + v55, &qword_280497470, &unk_26C46E870);
    sub_26C3E9F90(v70, v54 + v55, type metadata accessor for ValueData);
    v57(v54 + v55, 0, 1, v58);
    sub_26C3DE270(v54 + v59, &qword_280497468, &unk_26C46D400);
    sub_26C3E9F90(v71, v54 + v59, type metadata accessor for LamportTimestamp);
    v60(v54 + v59, 0, 1, v73);
    sub_26C3E9C70(&qword_2804975A0, type metadata accessor for PropertyCatchupData, &unk_26C46F65C);
    v52 = sub_26C46BE64();
    sub_26C3E9BAC(v86, type metadata accessor for ValueData);
    sub_26C3DE270(v84, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v83, &qword_280497430, &unk_26C46D3D0);
    sub_26C3E9BAC(v54, type metadata accessor for PropertyCatchupData);
  }

  return v52;
}

uint64_t sub_26C3E6FEC()
{
  v1 = type metadata accessor for PBUUID(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v51 = (&v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v46 = (&v44 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  v11 = sub_26C46BB54();
  v55 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v44 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v49 = &v44 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v44 - v17;
  MEMORY[0x28223BE20](v16);
  v54 = &v44 - v18;
  v19 = type metadata accessor for LamportTimestamp(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v0;
  v22 = v0 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp;
  swift_beginAccess();
  v48 = v22;
  sub_26C3E91AC(v22, v21, type metadata accessor for LamportTimestamp);
  v47 = v19;
  v23 = *(v19 + 24);
  sub_26C3DDD48(&v21[v23], v10, &qword_280497458, &unk_26C46D3F0);
  v52 = v2;
  v24 = *(v2 + 48);
  LODWORD(v22) = v24(v10, 1, v1);
  sub_26C3DE270(v10, &qword_280497458, &unk_26C46D3F0);
  v53 = v1;
  if (v22 == 1)
  {
    if (qword_280497190 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v11, qword_2804985C0);
    v26 = v54;
    v27 = v55;
    (*(v55 + 16))(v54, v25, v11);
  }

  else
  {
    v28 = v45;
    sub_26C3DDD48(&v21[v23], v45, &qword_280497458, &unk_26C46D3F0);
    if (v24(v28, 1, v1) == 1)
    {
      v29 = v46;
      *v46 = 0;
      v29[1] = 0;
      sub_26C46BD14();
      v30 = v24(v28, 1, v1);
      v26 = v54;
      v27 = v55;
      if (v30 != 1)
      {
        sub_26C3DE270(v28, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v29 = v46;
      sub_26C3E9F90(v28, v46, type metadata accessor for PBUUID);
      v26 = v54;
      v27 = v55;
    }

    sub_26C40F3CC();
    sub_26C3E9BAC(v29, type metadata accessor for PBUUID);
  }

  v31 = v56;
  sub_26C3E9BAC(v21, type metadata accessor for LamportTimestamp);
  if (qword_280497190 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v11, qword_2804985C0);
  v33 = *(v27 + 16);
  v33(v31, v32, v11);
  v34 = sub_26C46BB14();
  v35 = *(v27 + 8);
  v35(v31, v11);
  result = (v35)(v26, v11);
  if (v34)
  {
    v37 = *(v50 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);
    if (v37)
    {
      v38 = v44;
      v33(v44, v37 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v11);
      v39 = v49;
      (*(v27 + 32))(v49, v38, v11);
    }

    else
    {
      v39 = v49;
      v33(v49, v32, v11);
    }

    v40 = v53;
    v41 = v48;
    swift_beginAccess();
    v33(v31, v39, v11);
    v42 = v51;
    sub_26C40F280(v31, v51);
    v35(v39, v11);
    v43 = *(v47 + 24);
    sub_26C3DE270(v41 + v43, &qword_280497458, &unk_26C46D3F0);
    sub_26C3E9F90(v42, v41 + v43, type metadata accessor for PBUUID);
    (*(v52 + 56))(v41 + v43, 0, 1, v40);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_26C3E7670()
{
  v1 = *v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  result = MEMORY[0x28223BE20](v4);
  v9 = (v18 - v8 + 64);
  if (*(v0 + *(v1 + 312)) == 1)
  {
    v10 = *(v2 + 304);
    swift_beginAccess();
    v11 = *(v2 + 280);
    v18[3] = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, v0 + v10, v11);
    v13 = *(*v0 + 320);
    swift_beginAccess();
    sub_26C3DDD48(v0 + v13, v9, &qword_280497430, &unk_26C46D3D0);
    v14 = *(*v0 + 328);
    swift_beginAccess();
    sub_26C3DDD48(v0 + v14, v6, &qword_280497430, &unk_26C46D3D0);
    sub_26C3E0D08(v18, v9, v6);
    sub_26C3DE270(v6, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v9, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v18, &qword_280497450, &qword_26C471080);
    v15 = sub_26C46BB54();
    v16 = *(*(v15 - 8) + 56);
    v16(v9, 1, 1, v15);
    swift_beginAccess();
    sub_26C3E90D8(v9, v0 + v13);
    swift_endAccess();
    v16(v9, 1, 1, v15);
    swift_beginAccess();
    sub_26C3E90D8(v9, v0 + v14);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_26C3E7940(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](a1);
  v7 = v13 - v6;
  if (*(v1 + *(v8 + 312)) == 1)
  {
    v9 = result;
    v10 = *(v5 + 304);
    swift_beginAccess();
    (*(v3 + 16))(v7, v1 + v10, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
    result = swift_dynamicCast();
    if (result)
    {
      v11 = v13[2];
      ObjectType = swift_getObjectType();
      sub_26C3F8720(ObjectType, v11);
      sub_26C415270(v9);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_26C3E7AD8()
{
  v1 = *v0;
  if (*(v0 + *(*v0 + 312)) == 1)
  {
    v2 = *(v1 + 304);
    swift_beginAccess();
    v3 = *(v1 + 280);
    v5[3] = v3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
    (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v0 + v2, v3);
    sub_26C3E13DC(v5);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }
}

uint64_t SyncedProperty.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_26C46BFF4();
}

uint64_t sub_26C3E7C98()
{
  (*(*(*(*v0 + 280) - 8) + 8))(v0 + *(*v0 + 304));
  sub_26C3DE270(v0 + *(*v0 + 320), &qword_280497430, &unk_26C46D3D0);
  sub_26C3DE270(v0 + *(*v0 + 328), &qword_280497430, &unk_26C46D3D0);
}

uint64_t *SyncedProperty.deinit()
{
  v1 = *v0;
  sub_26C3E9BAC(v0 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp, type metadata accessor for LamportTimestamp);

  (*(*(*(v1 + 280) - 8) + 8))(v0 + *(*v0 + 304));
  sub_26C3DE270(v0 + *(*v0 + 320), &qword_280497430, &unk_26C46D3D0);
  sub_26C3DE270(v0 + *(*v0 + 328), &qword_280497430, &unk_26C46D3D0);

  return v0;
}

uint64_t SyncedProperty.__deallocating_deinit()
{
  SyncedProperty.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_26C3E7F78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SyncedProperty.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26C3E7FC8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_26C3E8014(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_26C3E804C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_26C3E80A8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_26C3E80A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26C3E8174(v11, 0, 0, 1, a1, a2);
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
    sub_26C3DE214(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26C3E8174(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26C3E8280(a5, a6);
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
    result = sub_26C46C554();
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

void *sub_26C3E8280(uint64_t a1, unint64_t a2)
{
  v3 = sub_26C3E82CC(a1, a2);
  sub_26C3E83FC(&unk_287CF3830);
  return v3;
}

void *sub_26C3E82CC(uint64_t a1, unint64_t a2)
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

  v6 = sub_26C3E84E8(v5, 0);
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

  result = sub_26C46C554();
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
        v10 = sub_26C46C204();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26C3E84E8(v10, 0);
        result = sub_26C46C514();
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

uint64_t sub_26C3E83FC(uint64_t result)
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

  result = sub_26C3E855C(result, v11, 1, v3);
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

void *sub_26C3E84E8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804975B8, &unk_26C46D6E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26C3E855C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804975B8, &unk_26C46D6E0);
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

unint64_t sub_26C3E8650(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497380, &unk_26C46D170);
    v3 = sub_26C46C624();
    for (i = a1 + 32; ; i += 24)
    {
      sub_26C3DDD48(i, &v11, &qword_2804975E0, &qword_26C46D728);
      v5 = v11;
      result = sub_26C42C1C8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      result = sub_26C3DE0D8(&v12, v3[7] + 16 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_26C3E876C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804975D8, &qword_26C46D720);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497320, &unk_26C46D110);
    v7 = sub_26C46C624();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26C3DDD48(v9, v5, &qword_2804975D8, &qword_26C46D720);
      result = sub_26C42C210(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_26C46BB54();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_26C46BCD4();
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

unint64_t sub_26C3E898C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804975D0, &unk_26C46D710);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497310, &qword_26C46E540);
    v7 = sub_26C46C624();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26C3DDD48(v9, v5, &qword_2804975D0, &unk_26C46D710);
      result = sub_26C42C210(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_26C46BB54();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for CachedOwnershipRequest(0);
      result = sub_26C3E9F90(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for CachedOwnershipRequest);
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

unint64_t sub_26C3E8BA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804975C8, &qword_26C46D6F8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497338, &unk_26C46D700);
    v7 = sub_26C46C624();
    v21 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_26C3DDD48(v8, v5, &qword_2804975C8, &qword_26C46D6F8);
      result = sub_26C42C210(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = sub_26C46BB54();
      (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
      result = sub_26C3E9F28(&v5[v21], v15 + *(*(v16 - 8) + 72) * v12, &qword_280497330, &unk_26C46D120);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v8 += v9;
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

unint64_t sub_26C3E8DD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497388, &qword_26C46D740);
    v3 = sub_26C46C624();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_26C42C2A8(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_26C3E8EF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804975E8, &unk_26C46D730);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497350, &unk_26C46D140);
    v7 = sub_26C46C624();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26C3DDD48(v9, v5, &qword_2804975E8, &unk_26C46D730);
      result = sub_26C42C210(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_26C46BB54();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
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

uint64_t sub_26C3E90D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_26C3E91AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 sub_26C3E9270(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for SyncedPropertyBase(uint64_t a1)
{
  result = qword_280497480;
  if (!qword_280497480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26C3E9378(uint64_t a1)
{
  result = type metadata accessor for LamportTimestamp(319);
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

void sub_26C3E9448(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_26C3E959C(319);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_26C3E959C(uint64_t a1)
{
  if (!qword_280497510[0])
  {
    sub_26C46BB54();
    v1 = sub_26C46C474();
    if (!v2)
    {
      atomic_store(v1, qword_280497510);
    }
  }
}

uint64_t sub_26C3E95FC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_26C3E968C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26C3E9790(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497370, &unk_26C46D160);
    v3 = sub_26C46C624();
    for (i = a1 + 32; ; i += 16)
    {
      sub_26C3DDD48(i, &v11, &qword_2804975C0, &qword_26C46D6F0);
      v5 = v11;
      result = sub_26C42C320(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_26C3DDEFC(&v12, v3[7] + 8 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_26C3E98B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497348, &qword_26C46D138);
  v3 = sub_26C46C624();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_26C42C1C8(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    v10 = (v3[7] + 16 * result);
    *v10 = v5;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_26C3DDDB0(v5, v6);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v9 - 4);
    v5 = *(v9 - 1);
    v6 = *v9;
    result = sub_26C42C1C8(v4);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26C3E99BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497598, &unk_26C46E010);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497340, &qword_26C46D130);
    v7 = sub_26C46C624();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26C3DDD48(v9, v5, &qword_280497598, &unk_26C46E010);
      result = sub_26C42C210(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_26C46BB54();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
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

uint64_t sub_26C3E9BAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C3E9C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LamportTimestamp(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C3E9C70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26C3E9CB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804975B0, &unk_26C46D6D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497358, &unk_26C46E5F0);
    v7 = sub_26C46C624();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26C3DDD48(v9, v5, &qword_2804975B0, &unk_26C46D6D0);
      result = sub_26C42C210(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_26C46BB54();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 24 * v13;
      v17 = *(v8 + 2);
      *v16 = *v8;
      *(v16 + 16) = v17;
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

uint64_t sub_26C3E9EB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C3E9F28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_26C3E9F90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_26C3E9FFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26C46BCD4();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v43 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38[-v9];
  v11 = sub_26C46BB54();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
  swift_beginAccess();
  v16 = *(v12 + 16);
  v44 = v15;
  v42 = v16;
  v16(v14, a1 + v15, v11);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *(v3 + 32);
  *(v3 + 32) = 0x8000000000000000;
  sub_26C3DC468(a1, v14, isUniquelyReferenced_nonNull_native);
  v41 = *(v12 + 8);
  v41(v14, v11);
  *(v3 + 32) = v47;
  swift_endAccess();
  v18 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__authorityParticipant;
  swift_beginAccess();
  sub_26C3DDD48(a2 + v18, v10, &qword_280497268, &qword_26C46CFE0);
  sub_26C414BC4(v3, 2, 1, v10);
  sub_26C3DE270(v10, &qword_280497268, &qword_26C46CFE0);
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v19 = sub_26C46BFA4();
  __swift_project_value_buffer(v19, qword_280498530);

  v20 = sub_26C46BF84();
  v21 = sub_26C46C404();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v47 = v40;
    *v22 = 136315394;
    v23 = v45;
    v24 = *(v45 + 16);
    v25 = v3 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant;
    v39 = v21;
    v26 = v43;
    v27 = v46;
    v24(v43, v25, v46);
    sub_26C46BCC4();
    (*(v23 + 8))(v26, v27);
    sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v28 = sub_26C46C704();
    v30 = v29;
    v31 = v41;
    v41(v14, v11);
    v32 = sub_26C3E80A8(v28, v30, &v47);

    *(v22 + 4) = v32;
    *(v22 + 12) = 2080;
    v42(v14, a1 + v44, v11);
    v33 = sub_26C46BB04();
    v35 = v34;
    v31(v14, v11);
    v36 = sub_26C3E80A8(v33, v35, &v47);

    *(v22 + 14) = v36;
    _os_log_impl(&dword_26C3D6000, v20, v39, "SyncedModelManager[%s] Registered dynamic SyncedModel with uuid:%s", v22, 0x16u);
    v37 = v40;
    swift_arrayDestroy();
    MEMORY[0x26D6A18D0](v37, -1, -1);
    MEMORY[0x26D6A18D0](v22, -1, -1);
  }
}

void sub_26C3EA514(uint64_t a1)
{
  v2 = v1;
  v37 = sub_26C46BCD4();
  v34 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C46BB54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
  swift_beginAccess();
  v36 = *(v7 + 16);
  v36(v9, a1 + v10, v6);
  swift_beginAccess();
  sub_26C3D8DE0(0, v9);
  swift_endAccess();
  sub_26C41588C();
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v11 = sub_26C46BFA4();
  __swift_project_value_buffer(v11, qword_280498530);

  v12 = sub_26C46BF84();
  v13 = sub_26C46C404();

  v35 = v13;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = v10;
    v15 = v7;
    v16 = v14;
    v33 = swift_slowAlloc();
    v38[0] = v33;
    *v16 = 136315394;
    v17 = v34;
    v18 = v2 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant;
    v19 = v37;
    (*(v34 + 16))(v5, v18, v37);
    v32 = v12;
    sub_26C46BCC4();
    (*(v17 + 8))(v5, v19);
    sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v20 = sub_26C46C704();
    v22 = v21;
    v23 = *(v15 + 8);
    v23(v9, v6);
    v24 = sub_26C3E80A8(v20, v22, v38);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v36(v9, a1 + v31, v6);
    v25 = sub_26C46BB04();
    v27 = v26;
    v23(v9, v6);
    v28 = sub_26C3E80A8(v25, v27, v38);

    *(v16 + 14) = v28;
    v12 = v32;
    _os_log_impl(&dword_26C3D6000, v32, v35, "SyncedModelManager[%s] Unregistered dynamic SyncedModel with uuid:%s", v16, 0x16u);
    v29 = v33;
    swift_arrayDestroy();
    MEMORY[0x26D6A18D0](v29, -1, -1);
    MEMORY[0x26D6A18D0](v16, -1, -1);
  }
}

BOOL sub_26C3EA940()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  sub_26C46C024();

  return v2 == 1;
}

uint64_t CatchupKind.hashValue.getter()
{
  v1 = *v0;
  sub_26C46C814();
  MEMORY[0x26D6A1230](v1);
  return sub_26C46C844();
}

uint64_t SyncedModelOptions.description.getter()
{
  sub_26C46C524();
  MEMORY[0x26D6A0C00](0xD000000000000021, 0x800000026C4759C0);
  sub_26C46C5B4();
  return 0;
}

unint64_t sub_26C3EAB2C()
{
  result = qword_2804975F0;
  if (!qword_2804975F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804975F0);
  }

  return result;
}

uint64_t sub_26C3EAB80()
{
  sub_26C46C524();
  MEMORY[0x26D6A0C00](0xD000000000000021, 0x800000026C4759C0);
  sub_26C46C5B4();
  return 0;
}

uint64_t sub_26C3EAC30(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_26C3EACC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26C3EAD84(uint64_t a1, char a2, void *a3, unsigned __int8 *a4)
{
  v5 = v4;
  v10 = sub_26C46BB54();
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x28223BE20](v10);
  v55 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26C46BCD4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  v19 = *a4;
  v20 = MEMORY[0x277D84F90];
  *(v5 + 16) = MEMORY[0x277D84F90];
  *(v5 + 24) = 0;
  *(v5 + 32) = sub_26C3E8EF0(v20);
  *(v5 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_remoteParticipants) = v20;
  v21 = (v5 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_sendDataHandler);
  *v21 = 0;
  v21[1] = 0;
  *(v5 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_precatchupMessageBuffer) = v20;
  v58 = v13;
  v22 = *(v13 + 16);
  v22(v5 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, a1, v12);
  *(v5 + 48) = a2;
  *(v5 + 40) = a3;
  v54 = v19;
  *(v5 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_options) = v19;
  v23 = qword_280497148;
  v59 = a3;
  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_26C46BFA4();
  __swift_project_value_buffer(v24, qword_280498530);
  v22(v18, a1, v12);

  v25 = sub_26C46BF84();
  v26 = sub_26C46C404();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v53 = a1;
    v49 = v18;
    v28 = v27;
    v52 = swift_slowAlloc();
    v61 = v52;
    *v28 = 136315650;
    v22(v16, v5 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v12);
    v29 = v55;
    v51 = v25;
    sub_26C46BCC4();
    v50 = v26;
    v58 = *(v58 + 8);
    (v58)(v16, v12);
    v48 = sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v30 = v57;
    v31 = sub_26C46C704();
    v33 = v32;
    v56 = *(v56 + 8);
    (v56)(v29, v30);
    v34 = sub_26C3E80A8(v31, v33, &v61);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2080;
    v60 = v54;
    sub_26C3F86C4();
    v35 = sub_26C46C704();
    v37 = sub_26C3E80A8(v35, v36, &v61);

    *(v28 + 14) = v37;
    *(v28 + 22) = 2080;
    v38 = v49;
    sub_26C46BCC4();
    v39 = sub_26C46C704();
    v41 = v40;
    (v56)(v29, v30);
    v42 = v58;
    (v58)(v38, v12);
    v43 = sub_26C3E80A8(v39, v41, &v61);

    *(v28 + 24) = v43;
    v44 = v51;
    _os_log_impl(&dword_26C3D6000, v51, v50, "SyncedModelManager[%s] Init with options: %s. Local participant:%s", v28, 0x20u);
    v45 = v52;
    swift_arrayDestroy();
    MEMORY[0x26D6A18D0](v45, -1, -1);
    MEMORY[0x26D6A18D0](v28, -1, -1);

    v42(v53, v12);
  }

  else
  {

    v46 = *(v58 + 8);
    v46(a1, v12);
    v46(v18, v12);
  }

  return v5;
}

uint64_t sub_26C3EB2B8()
{
  v1 = v0;
  v2 = sub_26C46BCF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SyncedModelManager.MessageWrapper(0);
  MEMORY[0x28223BE20](v6);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = *(v1 + 24);
  if (result)
  {
    v36 = v7;
    v33 = v3;
    v34 = v2;

    sub_26C41409C();
    swift_beginAccess();
    v11 = v1;
    v12 = *(v1 + 32);
    v15 = *(v12 + 64);
    v14 = v12 + 64;
    v13 = v15;
    v16 = 1 << *(*(v1 + 32) + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v19 = (v16 + 63) >> 6;

    v20 = 0;
    if (v18)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return result;
      }

      if (v21 >= v19)
      {
        break;
      }

      v18 = *(v14 + 8 * v21);
      ++v20;
      if (v18)
      {
        v20 = v21;
        do
        {
LABEL_10:
          v18 &= v18 - 1;

          sub_26C41409C();
        }

        while (v18);
        continue;
      }
    }

    v22 = v11;
    swift_beginAccess();
    v23 = *(v11 + 16);
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = *(v6 + 20);
      v26 = v23 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
      v36 = *(v36 + 72);
      v37 = v25;
      v27 = (v33 + 16);
      v28 = (v33 + 8);
      v33 = v23;

      v29 = v34;
      do
      {
        sub_26C3F69B8(v26, v9, type metadata accessor for SyncedModelManager.MessageWrapper);
        v30 = *v9;
        v31 = v9[1];
        (*v27)(v5, v9 + v37, v29);
        sub_26C3DDDB0(v30, v31);
        sub_26C3F6910(v9, type metadata accessor for SyncedModelManager.MessageWrapper);
        sub_26C3EB618(v30, v31, v5);
        sub_26C3DDEA8(v30, v31);
        (*v28)(v5, v29);
        v26 += v36;
        --v24;
      }

      while (v24);
    }

    else
    {
    }

    *(v22 + 16) = MEMORY[0x277D84F90];
  }

  return result;
}

void sub_26C3EB618(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = a3;
  v7 = sub_26C46BCD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C46BB54();
  v35 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v14 = sub_26C46BFA4();
  __swift_project_value_buffer(v14, qword_280498530);

  sub_26C3DDDB0(a1, a2);
  v15 = sub_26C46BF84();
  v16 = sub_26C46C3D4();

  sub_26C3DDEA8(a1, a2);
  v34 = v16;
  v17 = os_log_type_enabled(v15, v16);
  v18 = v4;
  if (v17)
  {
    v19 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37 = v32;
    *v19 = 136315394;
    (*(v8 + 16))(v10, v18 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v7);
    v33 = v18;
    sub_26C46BCC4();
    (*(v8 + 8))(v10, v7);
    sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v20 = sub_26C46C704();
    v22 = v21;
    (*(v35 + 8))(v13, v11);
    v23 = sub_26C3E80A8(v20, v22, &v37);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = a1;
    v25 = a2;
    v26 = sub_26C46BAA4();
    v28 = sub_26C3E80A8(v26, v27, &v37);

    *(v19 + 14) = v28;
    v18 = v33;
    _os_log_impl(&dword_26C3D6000, v15, v34, "SyncedModelManager[%s] Sending data of size:%s", v19, 0x16u);
    v29 = v32;
    swift_arrayDestroy();
    MEMORY[0x26D6A18D0](v29, -1, -1);
    MEMORY[0x26D6A18D0](v19, -1, -1);
  }

  else
  {
    v24 = a1;
    v25 = a2;
  }

  v30 = *(v18 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_sendDataHandler);
  if (v30)
  {
    v31 = *(v18 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_sendDataHandler + 8);

    v30(v24, v25, v36);
    sub_26C3DD730(v30, v31);
  }
}

uint64_t sub_26C3EB9EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26C46BCF4();
  v95 = *(v4 - 8);
  v96 = v4;
  MEMORY[0x28223BE20](v4);
  v94 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  MEMORY[0x28223BE20](v6 - 8);
  v97 = &v88 - v7;
  v8 = sub_26C46BCD4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v99 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C46BB54();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v15 = sub_26C46BFA4();
  v16 = __swift_project_value_buffer(v15, qword_280498530);

  v101 = v16;
  v17 = sub_26C46BF84();
  LODWORD(v16) = sub_26C46C404();

  LODWORD(v93) = v16;
  v18 = os_log_type_enabled(v17, v16);
  v19 = 0x280497000uLL;
  v100 = v12;
  v102 = v14;
  v98 = a1;
  if (v18)
  {
    v89 = v17;
    v20 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v103[0] = v88;
    *v20 = 136315650;
    v21 = *(v9 + 2);
    v90 = v2;
    v22 = v99;
    v21(v99, v2 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v8);
    sub_26C46BCC4();
    v91 = v9;
    v92 = v8;
    (*(v9 + 1))(v22, v8);
    sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v23 = sub_26C46C704();
    v25 = v24;
    v26 = *(v12 + 8);
    v26(v14, v11);
    v27 = sub_26C3E80A8(v23, v25, v103);

    *(v20 + 4) = v27;
    *(v20 + 12) = 2080;
    v28 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    swift_beginAccess();
    v29 = *(v12 + 16);
    v29(v14, a1 + v28, v11);
    v30 = sub_26C46BB04();
    v32 = v31;
    v26(v14, v11);
    v33 = sub_26C3E80A8(v30, v32, v103);

    *(v20 + 14) = v33;
    *(v20 + 22) = 2080;
    if (qword_280497198 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v11, qword_2804985D8);
    v29(v14, v34, v11);
    v35 = sub_26C46BB04();
    v37 = v36;
    v26(v14, v11);
    v38 = sub_26C3E80A8(v35, v37, v103);

    *(v20 + 24) = v38;
    v39 = v89;
    _os_log_impl(&dword_26C3D6000, v89, v93, "SyncedModelManager[%s] Setting root model that had original UUID=%s to UUID=%s", v20, 0x20u);
    v40 = v88;
    swift_arrayDestroy();
    MEMORY[0x26D6A18D0](v40, -1, -1);
    MEMORY[0x26D6A18D0](v20, -1, -1);

    v9 = v91;
    v8 = v92;
    v12 = v100;
    a1 = v98;
    v2 = v90;
    v19 = 0x280497000;
  }

  else
  {
  }

  if (*(v19 + 408) != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v11, qword_2804985D8);
  v42 = v102;
  (*(v12 + 16))(v102, v41, v11);
  v43 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
  swift_beginAccess();
  (*(v12 + 40))(a1 + v43, v42, v11);
  swift_endAccess();
  *(v2 + 24) = a1;

  v44 = *(v2 + 48);

  v45 = sub_26C46BF84();
  v46 = sub_26C46C404();

  v47 = os_log_type_enabled(v45, v46);
  v48 = &qword_280498000;
  if (v44 != 1)
  {
    if (v47)
    {
      v61 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v103[0] = v93;
      *v61 = 136315138;
      v62 = v99;
      (*(v9 + 2))(v99, v2 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v8);
      v63 = v102;
      sub_26C46BCC4();
      (*(v9 + 1))(v62, v8);
      sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v64 = sub_26C46C704();
      v65 = v9;
      v67 = v66;
      v68 = v63;
      v48 = &qword_280498000;
      (*(v100 + 8))(v68, v11);
      v69 = sub_26C3E80A8(v64, v67, v103);
      v9 = v65;

      *(v61 + 4) = v69;
      _os_log_impl(&dword_26C3D6000, v45, v46, "SyncedModelManager[%s] Not initial authority so sending catchup request", v61, 0xCu);
      v70 = v93;
      __swift_destroy_boxed_opaque_existential_1(v93);
      MEMORY[0x26D6A18D0](v70, -1, -1);
      MEMORY[0x26D6A18D0](v61, -1, -1);
    }

    v71 = v97;
    (*(v9 + 7))(v97, 1, 1, v8);
    sub_26C414BC4(v2, 1, 1, v71);
    sub_26C3DE270(v71, &qword_280497268, &qword_26C46CFE0);
    LOBYTE(v103[0]) = 1;

    sub_26C46C034();

    goto LABEL_18;
  }

  if (v47)
  {
    v49 = swift_slowAlloc();
    v91 = v49;
    v93 = swift_slowAlloc();
    v103[0] = v93;
    *v49 = 136315138;
    v92 = *(v9 + 2);
    v50 = v99;
    v92(v99, v2 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v8);
    v51 = v102;
    sub_26C46BCC4();
    (*(v9 + 1))(v50, v8);
    sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v52 = sub_26C46C704();
    v53 = v9;
    v55 = v54;
    (*(v100 + 8))(v51, v11);
    v56 = sub_26C3E80A8(v52, v55, v103);
    v9 = v53;

    v57 = v91;
    *(v91 + 1) = v56;
    v58 = v57;
    _os_log_impl(&dword_26C3D6000, v45, v46, "SyncedModelManager[%s] Is initial authority", v57, 0xCu);
    v59 = v93;
    __swift_destroy_boxed_opaque_existential_1(v93);
    MEMORY[0x26D6A18D0](v59, -1, -1);
    MEMORY[0x26D6A18D0](v58, -1, -1);

    v60 = v92;
  }

  else
  {

    v60 = *(v9 + 2);
  }

  v72 = v97;
  v60(v97, v2 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v8);
  (*(v9 + 7))(v72, 0, 1, v8);
  sub_26C414BC4(v2, 1, 1, v72);
  result = sub_26C3DE270(v72, &qword_280497268, &qword_26C46CFE0);
  v48 = &qword_280498000;
  if (*(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_options))
  {
LABEL_18:
    result = sub_26C3EC674();
  }

  if (*(v2 + v48[175]) == 1)
  {

    v74 = sub_26C46BF84();
    v75 = sub_26C46C404();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v103[0] = v77;
      *v76 = 136315138;
      v78 = v99;
      (*(v9 + 2))(v99, v2 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v8);
      v79 = v102;
      sub_26C46BCC4();
      (*(v9 + 1))(v78, v8);
      sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v80 = sub_26C46C704();
      v81 = v11;
      v83 = v82;
      (*(v100 + 8))(v79, v81);
      v84 = sub_26C3E80A8(v80, v83, v103);

      *(v76 + 4) = v84;
      _os_log_impl(&dword_26C3D6000, v74, v75, "SyncedModelManager[%s] Broadcasting existing state", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x26D6A18D0](v77, -1, -1);
      MEMORY[0x26D6A18D0](v76, -1, -1);
    }

    v86 = v94;
    v85 = v95;
    v87 = v96;
    (*(v95 + 104))(v94, *MEMORY[0x277CCB260], v96);
    sub_26C3ECC34(v86);
    return (*(v85 + 8))(v86, v87);
  }

  return result;
}

uint64_t sub_26C3EC674()
{
  v1 = sub_26C46BCF4();
  v44 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v43 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for SyncMessage(0);
  MEMORY[0x28223BE20](v41);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CatchupRequestMessage(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = &v36 - v8;
  v9 = sub_26C46BCD4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26C46BB54();
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v16 = sub_26C46BFA4();
  __swift_project_value_buffer(v16, qword_280498530);

  v17 = sub_26C46BF84();
  v18 = sub_26C46C404();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v36 = v1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v39 = v0;
    v22 = v21;
    v45 = v21;
    *v20 = 136315138;
    (*(v10 + 16))(v12, v39 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v9);
    sub_26C46BCC4();
    (*(v10 + 8))(v12, v9);
    sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v23 = v38;
    v24 = sub_26C46C704();
    v26 = v25;
    (*(v37 + 8))(v15, v23);
    v27 = sub_26C3E80A8(v24, v26, &v45);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_26C3D6000, v17, v18, "SyncedModelManager[%s] Requesting catchup", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x26D6A18D0](v22, -1, -1);
    v28 = v20;
    v1 = v36;
    MEMORY[0x26D6A18D0](v28, -1, -1);
  }

  v29 = v42;
  sub_26C46BD14();
  v30 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v31 = *(*(v30 - 8) + 56);
  v31(v4, 1, 1, v30);
  sub_26C46BD14();
  v32 = v40;
  sub_26C3F69B8(v29, v40, type metadata accessor for CatchupRequestMessage);
  sub_26C3DE270(v4, &qword_280497650, &unk_26C46D930);
  sub_26C3F6A20(v32, v4, type metadata accessor for CatchupRequestMessage);
  swift_storeEnumTagMultiPayload();
  v31(v4, 0, 1, v30);
  v34 = v43;
  v33 = v44;
  (*(v44 + 104))(v43, *MEMORY[0x277CCB260], v1);
  sub_26C3F5D78(v4, v34);
  (*(v33 + 8))(v34, v1);
  sub_26C3F6910(v29, type metadata accessor for CatchupRequestMessage);
  return sub_26C3F6910(v4, type metadata accessor for SyncMessage);
}

void sub_26C3ECC34(uint64_t a1)
{
  v2 = v1;
  v88 = type metadata accessor for SyncMessage(0);
  MEMORY[0x28223BE20](v88);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for CatchupResponseMessage(0);
  v6 = MEMORY[0x28223BE20](v86);
  v87 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v89 = (&v76 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497638, &unk_26C46D920);
  MEMORY[0x28223BE20](v9);
  v91 = &v76 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v96 = &v76 - v15;
  v92 = type metadata accessor for ModelData(0);
  MEMORY[0x28223BE20](v92);
  v97 = (&v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = sub_26C46BCD4();
  v17 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v95 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26C46BB54();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v2 + 24);
  if (v23)
  {
    v85 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v80 = a1;
    v81 = v5;
    v24 = qword_280497148;

    if (v24 != -1)
    {
      swift_once();
    }

    v90 = v9;
    v82 = v14;
    v25 = sub_26C46BFA4();
    v26 = __swift_project_value_buffer(v25, qword_280498530);

    v84 = v26;
    v27 = sub_26C46BF84();
    v28 = sub_26C46C404();

    v29 = os_log_type_enabled(v27, v28);
    v30 = &qword_280498000;
    v93 = v17;
    v79 = v19;
    v78 = v20;
    if (v29)
    {
      v31 = v20;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v83 = v2;
      v77 = v33;
      v98[0] = v33;
      *v32 = 136315138;
      v34 = v94;
      v35 = v95;
      (*(v93 + 16))(v95, v83 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v94);
      v36 = v85;
      sub_26C46BCC4();
      (*(v93 + 8))(v35, v34);
      sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v37 = sub_26C46C704();
      v38 = v23;
      v40 = v39;
      (*(v31 + 8))(v36, v19);
      v41 = sub_26C3E80A8(v37, v40, v98);
      v23 = v38;
      v30 = &qword_280498000;

      *(v32 + 4) = v41;
      _os_log_impl(&dword_26C3D6000, v27, v28, "SyncedModelManager[%s] Sending catchup response for root model.", v32, 0xCu);
      v42 = v77;
      __swift_destroy_boxed_opaque_existential_1(v77);
      v2 = v83;
      MEMORY[0x26D6A18D0](v42, -1, -1);
      v43 = v32;
      v17 = v93;
      MEMORY[0x26D6A18D0](v43, -1, -1);
    }

    else
    {

      v34 = v94;
    }

    sub_26C416CE4(v97);
    v55 = v30[174];
    v56 = v23;
    v57 = *(v17 + 16);
    v76 = v55;
    v58 = v96;
    v83 = v17 + 16;
    v77 = v57;
    (v57)(v96, v2 + v55, v34);
    (*(v17 + 56))(v58, 0, 1, v34);
    v59 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__authorityParticipant;
    swift_beginAccess();
    v60 = v91;
    v61 = *(v90 + 48);
    sub_26C3DDD48(v58, v91, &qword_280497268, &qword_26C46CFE0);
    v94 = v56;
    sub_26C3DDD48(v56 + v59, v60 + v61, &qword_280497268, &qword_26C46CFE0);
    v62 = *(v17 + 48);
    if (v62(v60, 1, v34) == 1)
    {
      sub_26C3DE270(v58, &qword_280497268, &qword_26C46CFE0);
      if (v62(v60 + v61, 1, v34) == 1)
      {
        sub_26C3DE270(v60, &qword_280497268, &qword_26C46CFE0);
        v63 = 1;
LABEL_21:
        sub_26C3F6970(&qword_280497648, type metadata accessor for ModelData, &unk_26C46F0BC);
        v68 = sub_26C46BE64();
        v70 = v69;
        v71 = v89;
        *v89 = xmmword_26C46D3C0;
        sub_26C46BD14();
        sub_26C3DDEA8(*v71, *(v71 + 8));
        *v71 = v68;
        *(v71 + 8) = v70;
        *(v71 + 16) = 0;
        *(v71 + 24) = v63 & 1;
        v72 = type metadata accessor for SyncMessage.OneOf_Contents(0);
        v73 = *(*(v72 - 8) + 56);
        v74 = v81;
        v73(v81, 1, 1, v72);
        sub_26C46BD14();
        v75 = v87;
        sub_26C3F69B8(v71, v87, type metadata accessor for CatchupResponseMessage);
        sub_26C3DE270(v74, &qword_280497650, &unk_26C46D930);
        sub_26C3F6A20(v75, v74, type metadata accessor for CatchupResponseMessage);
        swift_storeEnumTagMultiPayload();
        v73(v74, 0, 1, v72);
        sub_26C3F5D78(v74, v80);

        sub_26C3F6910(v97, type metadata accessor for ModelData);
        sub_26C3F6910(v74, type metadata accessor for SyncMessage);
        sub_26C3F6910(v71, type metadata accessor for CatchupResponseMessage);
        return;
      }
    }

    else
    {
      v64 = v82;
      sub_26C3DDD48(v60, v82, &qword_280497268, &qword_26C46CFE0);
      if (v62(v60 + v61, 1, v34) != 1)
      {
        v66 = v95;
        (*(v17 + 32))(v95, v60 + v61, v34);
        sub_26C3F6970(&qword_280497658, MEMORY[0x277CCB248], MEMORY[0x277CCB258]);
        v63 = sub_26C46C1C4();
        v67 = *(v17 + 8);
        v67(v66, v34);
        sub_26C3DE270(v96, &qword_280497268, &qword_26C46CFE0);
        v67(v64, v34);
        sub_26C3DE270(v60, &qword_280497268, &qword_26C46CFE0);
        goto LABEL_21;
      }

      sub_26C3DE270(v96, &qword_280497268, &qword_26C46CFE0);
      (*(v17 + 8))(v64, v34);
    }

    sub_26C3DE270(v60, &qword_280497638, &unk_26C46D920);
    v63 = 0;
    goto LABEL_21;
  }

  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v44 = sub_26C46BFA4();
  __swift_project_value_buffer(v44, qword_280498530);

  v97 = sub_26C46BF84();
  v45 = sub_26C46C404();

  if (os_log_type_enabled(v97, v45))
  {
    v46 = v17;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v98[0] = v48;
    *v47 = 136315138;
    v49 = v94;
    v50 = v95;
    (*(v46 + 16))(v95, v2 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v94);
    sub_26C46BCC4();
    (*(v46 + 8))(v50, v49);
    sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v51 = sub_26C46C704();
    v53 = v52;
    (*(v20 + 8))(v22, v19);
    v54 = sub_26C3E80A8(v51, v53, v98);

    *(v47 + 4) = v54;
    _os_log_impl(&dword_26C3D6000, v97, v45, "SyncedModelManager[%s] Cannot send catchup because no root model exists", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x26D6A18D0](v48, -1, -1);
    MEMORY[0x26D6A18D0](v47, -1, -1);
  }

  else
  {
    v65 = v97;
  }
}

uint64_t sub_26C3EDA30(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v152 = a2;
  v141 = a3;
  v138 = type metadata accessor for SyncedModelManager.SyncedModelMessageBufferItem(0);
  v139 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v140 = (&v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_26C46BB54();
  v148 = *(v5 - 8);
  v149 = v5;
  MEMORY[0x28223BE20](v5);
  v147 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C46BCD4();
  v8 = *(v7 - 8);
  v150 = v7;
  v151 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v144 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v146 = &v130 - v12;
  MEMORY[0x28223BE20](v11);
  v143 = &v130 - v13;
  v14 = type metadata accessor for CatchupResponseMessage(0);
  MEMORY[0x28223BE20](v14 - 8);
  v137 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v130 - v17;
  v145 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  isa = v145[-1].isa;
  v19 = MEMORY[0x28223BE20](v145);
  v21 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v130 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v130 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v130 - v28;
  v30 = sub_26C46BD44();
  MEMORY[0x28223BE20](v30 - 8);
  v31 = type metadata accessor for SyncMessage(0);
  MEMORY[0x28223BE20](v31);
  v33 = (&v130 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v155 = 0;
  memset(v154, 0, sizeof(v154));
  sub_26C3DDDB0(a1, v152);
  sub_26C46BD34();
  sub_26C3F6970(&qword_280497660, type metadata accessor for SyncMessage, &unk_26C47073C);
  sub_26C46BE54();
  v34 = v27;
  v152 = v21;
  v35 = v143;
  v36 = v144;
  v136 = v29;
  sub_26C3DDD48(v33, v18, &qword_280497650, &unk_26C46D930);
  if ((*(isa + 6))(v18, 1, v145) == 1)
  {
    sub_26C3DE270(v18, &qword_280497650, &unk_26C46D930);
    v37 = v153;
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v38 = sub_26C46BFA4();
    __swift_project_value_buffer(v38, qword_280498530);

    v39 = sub_26C46BF84();
    v40 = sub_26C46C3E4();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v154[0] = v42;
      *v41 = 136315138;
      v43 = v151;
      v44 = v37 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant;
      v45 = v146;
      v46 = v150;
      (*(v151 + 16))(v146, v44, v150);
      v47 = v147;
      sub_26C46BCC4();
      (*(v43 + 8))(v45, v46);
      sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v48 = v149;
      v49 = sub_26C46C704();
      v51 = v50;
      (*(v148 + 1))(v47, v48);
      v52 = sub_26C3E80A8(v49, v51, v154);

      *(v41 + 4) = v52;
      _os_log_impl(&dword_26C3D6000, v39, v40, "SyncedModelManager[%s] Received message without contents", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x26D6A18D0](v42, -1, -1);
      MEMORY[0x26D6A18D0](v41, -1, -1);
    }

    goto LABEL_28;
  }

  v53 = v136;
  sub_26C3F6A20(v18, v136, type metadata accessor for SyncMessage.OneOf_Contents);
  v54 = v153;
  if (!sub_26C3EA940())
  {
    sub_26C3EED28(v33, v141);
    v88 = v53;
LABEL_27:
    sub_26C3F6910(v88, type metadata accessor for SyncMessage.OneOf_Contents);
LABEL_28:
    v128 = v33;
    return sub_26C3F6910(v128, type metadata accessor for SyncMessage);
  }

  v55 = v54;
  sub_26C3F69B8(v53, v27, type metadata accessor for SyncMessage.OneOf_Contents);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v57 = v141;
  if (EnumCaseMultiPayload != 2)
  {
    sub_26C3F6910(v34, type metadata accessor for SyncMessage.OneOf_Contents);
    v59 = v151;
    v89 = v36;
    v90 = v24;
LABEL_17:
    v91 = v55;
    v92 = v57;
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v93 = sub_26C46BFA4();
    __swift_project_value_buffer(v93, qword_280498530);
    sub_26C3F69B8(v136, v90, type metadata accessor for SyncMessage.OneOf_Contents);
    v94 = *(v59 + 16);
    v143 = v90;
    v95 = v150;
    v94(v89, v92, v150);

    v96 = sub_26C46BF84();
    v97 = sub_26C46C404();

    LODWORD(v137) = v97;
    if (os_log_type_enabled(v96, v97))
    {
      v98 = v33;
      v99 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      *&v154[0] = v135;
      *v99 = 136315650;
      v134 = v96;
      v100 = v146;
      v94(v146, (v91 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant), v95);
      v101 = v147;
      sub_26C46BCC4();
      v102 = *(v59 + 8);
      v151 = v59 + 8;
      v133 = v102;
      v102(v100, v95);
      v132 = sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v146 = (v59 + 16);
      v103 = v149;
      v104 = sub_26C46C704();
      v106 = v105;
      isa = v98;
      v131 = *(v148 + 1);
      v131(v101, v103);
      v107 = sub_26C3E80A8(v104, v106, v154);
      v91 = v153;

      *(v99 + 4) = v107;
      *(v99 + 12) = 256;
      v108 = v143;
      v109 = v152;
      sub_26C3F69B8(v143, v152, type metadata accessor for SyncMessage.OneOf_Contents);
      LOBYTE(v107) = swift_getEnumCaseMultiPayload();
      v148 = v94;
      sub_26C3F6910(v109, type metadata accessor for SyncMessage.OneOf_Contents);
      sub_26C3F6910(v108, type metadata accessor for SyncMessage.OneOf_Contents);
      *(v99 + 14) = v107;
      *(v99 + 15) = 2080;
      v110 = v144;
      sub_26C46BCC4();
      v111 = sub_26C46C704();
      v113 = v112;
      v131(v101, v103);
      v114 = v141;
      v33 = isa;
      v133(v110, v95);
      v115 = sub_26C3E80A8(v111, v113, v154);

      *(v99 + 17) = v115;
      v116 = v134;
      _os_log_impl(&dword_26C3D6000, v134, v137, "SyncedModelManager[%s] Received message before root model has caught up. Caching in precatchup buffer. Message was type:%hhu from participant:%s", v99, 0x19u);
      v117 = v135;
      swift_arrayDestroy();
      MEMORY[0x26D6A18D0](v117, -1, -1);
      v118 = v99;
      v92 = v114;
      v119 = v148;
      MEMORY[0x26D6A18D0](v118, -1, -1);
    }

    else
    {
      sub_26C3F6910(v143, type metadata accessor for SyncMessage.OneOf_Contents);

      (*(v59 + 8))(v89, v95);
      v119 = v94;
    }

    v120 = v139;
    v121 = v140;
    v122 = v138;
    sub_26C3F69B8(v33, v140, type metadata accessor for SyncMessage);
    v119(v121 + *(v122 + 20), v92, v95);
    v123 = OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_precatchupMessageBuffer;
    swift_beginAccess();
    v124 = *(v91 + v123);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v91 + v123) = v124;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v124 = sub_26C42BDE8(0, v124[2] + 1, 1, v124);
      *(v91 + v123) = v124;
    }

    v127 = v124[2];
    v126 = v124[3];
    if (v127 >= v126 >> 1)
    {
      v124 = sub_26C42BDE8((v126 > 1), v127 + 1, 1, v124);
    }

    v124[2] = v127 + 1;
    sub_26C3F6A20(v140, v124 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v127, type metadata accessor for SyncedModelManager.SyncedModelMessageBufferItem);
    *(v91 + v123) = v124;
    swift_endAccess();
    v88 = v136;
    goto LABEL_27;
  }

  v58 = v137;
  sub_26C3F6A20(v34, v137, type metadata accessor for CatchupResponseMessage);
  v59 = v151;
  if (*(v58 + 24) != 1)
  {
    v89 = v36;
    v90 = v24;
    sub_26C3F6910(v58, type metadata accessor for CatchupResponseMessage);
    goto LABEL_17;
  }

  isa = v33;
  v60 = v55;
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v61 = sub_26C46BFA4();
  __swift_project_value_buffer(v61, qword_280498530);
  v62 = *(v59 + 16);
  v63 = v35;
  v64 = v35;
  v65 = v57;
  v66 = v57;
  v67 = v150;
  v62(v64, v66, v150);

  v68 = sub_26C46BF84();
  v69 = sub_26C46C404();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v140 = v70;
    v152 = swift_slowAlloc();
    *&v154[0] = v152;
    *v70 = 136315394;
    v145 = v68;
    v71 = v146;
    v62(v146, (v60 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant), v67);
    LODWORD(v144) = v69;
    v72 = v147;
    sub_26C46BCC4();
    v151 = *(v59 + 8);
    (v151)(v71, v67);
    sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v73 = v149;
    v74 = sub_26C46C704();
    v76 = v75;
    v77 = *(v148 + 1);
    v77(v72, v73);
    v78 = sub_26C3E80A8(v74, v76, v154);

    v79 = v140;
    *(v140 + 1) = v78;
    *(v79 + 12) = 2080;
    sub_26C46BCC4();
    v80 = sub_26C46C704();
    v82 = v81;
    v65 = v141;
    v77(v72, v73);
    v83 = v136;
    v84 = isa;
    (v151)(v63, v150);
    v85 = sub_26C3E80A8(v80, v82, v154);

    *(v79 + 14) = v85;
    v86 = v145;
    _os_log_impl(&dword_26C3D6000, v145, v144, "SyncedModelManager[%s] Received catchup response from authority:%s)", v79, 0x16u);
    v87 = v152;
    swift_arrayDestroy();
    MEMORY[0x26D6A18D0](v87, -1, -1);
    MEMORY[0x26D6A18D0](v79, -1, -1);
  }

  else
  {

    (*(v59 + 8))(v63, v67);
    v84 = isa;
    v83 = v136;
  }

  sub_26C3EED28(v84, v65);
  sub_26C3F6910(v137, type metadata accessor for CatchupResponseMessage);
  sub_26C3F6910(v83, type metadata accessor for SyncMessage.OneOf_Contents);
  v128 = v84;
  return sub_26C3F6910(v128, type metadata accessor for SyncMessage);
}

uint64_t sub_26C3EED28(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v446 = a2;
  v430 = type metadata accessor for OwnershipHandoffReplyMessage(0);
  MEMORY[0x28223BE20](v430);
  v435 = v381 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v429 = type metadata accessor for OwnershipHandoffRequestMessage(0);
  MEMORY[0x28223BE20](v429);
  v434 = v381 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v428 = type metadata accessor for OwnershipChangeBroadcastMessage(0);
  MEMORY[0x28223BE20](v428);
  v433 = v381 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v426 = type metadata accessor for OwnershipChangeReplyMessage(0);
  MEMORY[0x28223BE20](v426);
  v432 = v381 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v423 = type metadata accessor for OwnershipChangeRequestMessage(0);
  MEMORY[0x28223BE20](v423);
  v431 = v381 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v427 = v381 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v425 = v381 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v424 = v381 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v422 = v381 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v421 = v381 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v409 = v381 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v394 = v381 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v395 = v381 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v404 = v381 - v26;
  MEMORY[0x28223BE20](v25);
  v400 = v381 - v27;
  v28 = type metadata accessor for PBUUID(0);
  v29 = *(v28 - 8);
  v440 = v28;
  v441 = v29;
  v30 = MEMORY[0x28223BE20](v28);
  v420 = (v381 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x28223BE20](v30);
  v419 = (v381 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  v418 = (v381 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v417 = (v381 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v416 = (v381 - v39);
  v40 = MEMORY[0x28223BE20](v38);
  v408 = (v381 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v393 = (v381 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v397 = (v381 - v45);
  v46 = MEMORY[0x28223BE20](v44);
  v405 = (v381 - v47);
  MEMORY[0x28223BE20](v46);
  v398 = (v381 - v48);
  v49 = type metadata accessor for SyncTransactionMessage(0);
  v50 = MEMORY[0x28223BE20](v49);
  v410 = v381 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v401 = v381 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v402 = v381 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v407 = v381 - v57;
  MEMORY[0x28223BE20](v56);
  v436 = v381 - v58;
  v59 = type metadata accessor for CatchupResponseMessage(0);
  MEMORY[0x28223BE20](v59 - 8);
  v437 = v381 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_26C46BB54();
  v62 = *(v61 - 8);
  v444 = v61;
  v445 = v62;
  v63 = MEMORY[0x28223BE20](v61);
  v415 = v381 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v63);
  v414 = v381 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v413 = v381 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v412 = v381 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v411 = v381 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v406 = v381 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v392 = v381 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v396 = v381 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v403 = v381 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v399 = v381 - v82;
  MEMORY[0x28223BE20](v81);
  v439 = v381 - v83;
  v448 = sub_26C46BCD4();
  v443 = *(v448 - 1);
  v84 = MEMORY[0x28223BE20](v448);
  v438 = v381 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v87 = v381 - v86;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  MEMORY[0x28223BE20](v88 - 8);
  v90 = v381 - v89;
  v91 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v92 = *(v91 - 8);
  v93 = MEMORY[0x28223BE20](v91);
  v442 = (v381 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = MEMORY[0x28223BE20](v93);
  v97 = v381 - v96;
  v98 = MEMORY[0x28223BE20](v95);
  v100 = v381 - v99;
  MEMORY[0x28223BE20](v98);
  v449 = v381 - v101;
  sub_26C3DDD48(a1, v90, &qword_280497650, &unk_26C46D930);
  if ((*(v92 + 48))(v90, 1, v91) == 1)
  {
    return sub_26C3DE270(v90, &qword_280497650, &unk_26C46D930);
  }

  v390 = v91;
  v391 = v49;
  sub_26C3F6A20(v90, v449, type metadata accessor for SyncMessage.OneOf_Contents);
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v103 = sub_26C46BFA4();
  v104 = __swift_project_value_buffer(v103, qword_280498530);
  sub_26C3F69B8(v449, v100, type metadata accessor for SyncMessage.OneOf_Contents);
  v105 = v443;
  v106 = v443 + 16;
  v107 = *(v443 + 16);
  v108 = v87;
  v109 = v448;
  v107(v87, v446, v448);
  v110 = v447;

  v389 = v104;
  v111 = sub_26C46BF84();
  v112 = sub_26C46C3D4();

  v388 = v112;
  v113 = os_log_type_enabled(v111, v112);
  v386 = v106;
  v387 = v107;
  if (v113)
  {
    v114 = swift_slowAlloc();
    v382 = v108;
    v115 = v114;
    v384 = swift_slowAlloc();
    v450 = v384;
    *v115 = 136315650;
    v383 = v111;
    v116 = v438;
    v107(v438, &v110[OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant], v109);
    v117 = v439;
    sub_26C46BCC4();
    v385 = *(v105 + 8);
    v385(v116, v448);
    v381[1] = sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v118 = v444;
    v119 = sub_26C46C704();
    v121 = v120;
    v381[0] = v445[1].isa;
    (v381[0])(v117, v118);
    v122 = sub_26C3E80A8(v119, v121, &v450);

    *(v115 + 4) = v122;
    *(v115 + 12) = 256;
    sub_26C3F69B8(v100, v97, type metadata accessor for SyncMessage.OneOf_Contents);
    LOBYTE(v122) = swift_getEnumCaseMultiPayload();
    sub_26C3F6910(v97, type metadata accessor for SyncMessage.OneOf_Contents);
    sub_26C3F6910(v100, type metadata accessor for SyncMessage.OneOf_Contents);
    *(v115 + 14) = v122;
    *(v115 + 15) = 2080;
    v123 = v382;
    sub_26C46BCC4();
    v124 = sub_26C46C704();
    v126 = v125;
    v127 = v117;
    v128 = v118;
    v129 = v447;
    v130 = v448;
    (v381[0])(v127, v128);
    v131 = v385;
    v385(v123, v130);
    v132 = sub_26C3E80A8(v124, v126, &v450);

    *(v115 + 17) = v132;
    v133 = v383;
    _os_log_impl(&dword_26C3D6000, v383, v388, "SyncedModelManager[%s] Received message of type:%hhu from participant:%s", v115, 0x19u);
    v134 = v384;
    swift_arrayDestroy();
    MEMORY[0x26D6A18D0](v134, -1, -1);
    MEMORY[0x26D6A18D0](v115, -1, -1);

    v135 = v441;
  }

  else
  {
    sub_26C3F6910(v100, type metadata accessor for SyncMessage.OneOf_Contents);

    v131 = *(v105 + 8);
    v131(v108, v109);
    v135 = v441;
    v129 = v110;
    v130 = v109;
  }

  v136 = v442;
  sub_26C3F69B8(v449, v442, type metadata accessor for SyncMessage.OneOf_Contents);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v138 = v445;
  v139 = v440;
  v140 = v391;
  if (EnumCaseMultiPayload > 3)
  {
    v146 = v444;
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v147 = v434;
        sub_26C3F6A20(v136, v434, type metadata accessor for OwnershipHandoffRequestMessage);
        v168 = v425;
        sub_26C3DDD48(v147 + *(v429 + 28), v425, &qword_280497458, &unk_26C46D3F0);
        v169 = *(v135 + 48);
        if (v169(v168, 1, v139) == 1)
        {
          v170 = v419;
          *v419 = 0;
          v170[1] = 0;
          sub_26C46BD14();
          if (v169(v168, 1, v139) != 1)
          {
            sub_26C3DE270(v168, &qword_280497458, &unk_26C46D3F0);
          }
        }

        else
        {
          v170 = v419;
          sub_26C3F6A20(v168, v419, type metadata accessor for PBUUID);
        }

        v216 = v414;
        sub_26C40F3CC();
        sub_26C3F6910(v170, type metadata accessor for PBUUID);
        v217 = sub_26C3F3210(v216, *v147, *(v147 + 8));
        isa = v138[1].isa;
        isa(v216, v146);
        if (v217)
        {
          sub_26C420A44(v147, v446);

          v215 = type metadata accessor for OwnershipHandoffRequestMessage;
        }

        else
        {

          v240 = sub_26C46BF84();
          v241 = sub_26C46C3E4();

          if (os_log_type_enabled(v240, v241))
          {
            v242 = swift_slowAlloc();
            v385 = v131;
            v243 = v242;
            v447 = swift_slowAlloc();
            v450 = v447;
            *v243 = 136315138;
            v244 = v438;
            v245 = v448;
            v387(v438, &v129[OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant], v448);
            v246 = v439;
            sub_26C46BCC4();
            v385(v244, v245);
            sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v247 = sub_26C46C704();
            v249 = v248;
            isa(v246, v146);
            v250 = sub_26C3E80A8(v247, v249, &v450);

            *(v243 + 4) = v250;
            _os_log_impl(&dword_26C3D6000, v240, v241, "SyncedModelManager[%s] Received ownership handoff request for unknown model", v243, 0xCu);
            v251 = v447;
            __swift_destroy_boxed_opaque_existential_1(v447);
            MEMORY[0x26D6A18D0](v251, -1, -1);
            MEMORY[0x26D6A18D0](v243, -1, -1);
          }

          v215 = type metadata accessor for OwnershipHandoffRequestMessage;
        }
      }

      else
      {
        v147 = v435;
        sub_26C3F6A20(v136, v435, type metadata accessor for OwnershipHandoffReplyMessage);
        v193 = v427;
        sub_26C3DDD48(v147 + *(v430 + 28), v427, &qword_280497458, &unk_26C46D3F0);
        v194 = *(v135 + 48);
        if (v194(v193, 1, v139) == 1)
        {
          v195 = v420;
          *v420 = 0;
          v195[1] = 0;
          sub_26C46BD14();
          if (v194(v193, 1, v139) != 1)
          {
            sub_26C3DE270(v193, &qword_280497458, &unk_26C46D3F0);
          }
        }

        else
        {
          v195 = v420;
          sub_26C3F6A20(v193, v420, type metadata accessor for PBUUID);
        }

        v225 = v415;
        sub_26C40F3CC();
        sub_26C3F6910(v195, type metadata accessor for PBUUID);
        v226 = sub_26C3F3210(v225, *v147, *(v147 + 8));
        v227 = v138[1].isa;
        v227(v225, v146);
        if (v226)
        {
          sub_26C4221FC(v147);
        }

        else
        {

          v276 = sub_26C46BF84();
          v277 = sub_26C46C3E4();

          if (os_log_type_enabled(v276, v277))
          {
            v278 = swift_slowAlloc();
            v385 = v131;
            v279 = v278;
            v447 = swift_slowAlloc();
            v450 = v447;
            *v279 = 136315138;
            v280 = v438;
            v281 = v448;
            v387(v438, &v129[OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant], v448);
            v282 = v439;
            sub_26C46BCC4();
            v385(v280, v281);
            sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v283 = sub_26C46C704();
            v285 = v284;
            v227(v282, v146);
            v286 = sub_26C3E80A8(v283, v285, &v450);

            *(v279 + 4) = v286;
            _os_log_impl(&dword_26C3D6000, v276, v277, "SyncedModelManager[%s] Received ownership handoff reply for unknown model", v279, 0xCu);
            v287 = v447;
            __swift_destroy_boxed_opaque_existential_1(v447);
            MEMORY[0x26D6A18D0](v287, -1, -1);
            MEMORY[0x26D6A18D0](v279, -1, -1);
          }
        }

        v215 = type metadata accessor for OwnershipHandoffReplyMessage;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v147 = v432;
      sub_26C3F6A20(v136, v432, type metadata accessor for OwnershipChangeReplyMessage);
      v148 = v422;
      sub_26C3DDD48(v147 + *(v426 + 32), v422, &qword_280497458, &unk_26C46D3F0);
      v149 = *(v135 + 48);
      if (v149(v148, 1, v139) == 1)
      {
        v150 = v417;
        *v417 = 0;
        v150[1] = 0;
        sub_26C46BD14();
        if (v149(v148, 1, v139) != 1)
        {
          sub_26C3DE270(v148, &qword_280497458, &unk_26C46D3F0);
        }
      }

      else
      {
        v150 = v417;
        sub_26C3F6A20(v148, v417, type metadata accessor for PBUUID);
      }

      v212 = v412;
      sub_26C40F3CC();
      sub_26C3F6910(v150, type metadata accessor for PBUUID);
      v213 = sub_26C3F3210(v212, *v147, *(v147 + 8));
      v214 = v138[1].isa;
      v214(v212, v146);
      if (v213)
      {
        sub_26C41E638(v147);

        v215 = type metadata accessor for OwnershipChangeReplyMessage;
      }

      else
      {

        v228 = sub_26C46BF84();
        v229 = sub_26C46C3E4();

        if (os_log_type_enabled(v228, v229))
        {
          v230 = swift_slowAlloc();
          v385 = v131;
          v231 = v230;
          v447 = swift_slowAlloc();
          v450 = v447;
          *v231 = 136315138;
          v232 = v438;
          v233 = v448;
          v387(v438, &v129[OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant], v448);
          v234 = v439;
          sub_26C46BCC4();
          v385(v232, v233);
          sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v235 = sub_26C46C704();
          v237 = v236;
          v214(v234, v146);
          v238 = sub_26C3E80A8(v235, v237, &v450);

          *(v231 + 4) = v238;
          _os_log_impl(&dword_26C3D6000, v228, v229, "SyncedModelManager[%s] Received ownership request reply for unknown model", v231, 0xCu);
          v239 = v447;
          __swift_destroy_boxed_opaque_existential_1(v447);
          MEMORY[0x26D6A18D0](v239, -1, -1);
          MEMORY[0x26D6A18D0](v231, -1, -1);
        }

        v215 = type metadata accessor for OwnershipChangeReplyMessage;
      }
    }

    else
    {
      v147 = v433;
      sub_26C3F6A20(v136, v433, type metadata accessor for OwnershipChangeBroadcastMessage);
      v186 = v424;
      sub_26C3DDD48(v147 + *(v428 + 32), v424, &qword_280497458, &unk_26C46D3F0);
      v187 = *(v135 + 48);
      if (v187(v186, 1, v139) == 1)
      {
        v188 = v418;
        *v418 = 0;
        v188[1] = 0;
        sub_26C46BD14();
        if (v187(v186, 1, v139) != 1)
        {
          sub_26C3DE270(v186, &qword_280497458, &unk_26C46D3F0);
        }
      }

      else
      {
        v188 = v418;
        sub_26C3F6A20(v186, v418, type metadata accessor for PBUUID);
      }

      v219 = v413;
      sub_26C40F3CC();
      sub_26C3F6910(v188, type metadata accessor for PBUUID);
      v220 = sub_26C3F3210(v219, *v147, *(v147 + 8));
      v221 = v138[1].isa;
      v221(v219, v146);
      if (v220)
      {
        sub_26C41F870(v147, v446);

        v215 = type metadata accessor for OwnershipChangeBroadcastMessage;
      }

      else
      {

        v252 = sub_26C46BF84();
        v253 = sub_26C46C3E4();

        if (os_log_type_enabled(v252, v253))
        {
          v254 = swift_slowAlloc();
          v385 = v131;
          v255 = v254;
          v447 = swift_slowAlloc();
          v450 = v447;
          *v255 = 136315138;
          v256 = v438;
          v257 = v448;
          v387(v438, &v129[OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant], v448);
          v258 = v439;
          sub_26C46BCC4();
          v385(v256, v257);
          sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v259 = sub_26C46C704();
          v261 = v260;
          v221(v258, v146);
          v262 = sub_26C3E80A8(v259, v261, &v450);

          *(v255 + 4) = v262;
          _os_log_impl(&dword_26C3D6000, v252, v253, "SyncedModelManager[%s] Received ownership change broadcast for unknown model", v255, 0xCu);
          v263 = v447;
          __swift_destroy_boxed_opaque_existential_1(v447);
          MEMORY[0x26D6A18D0](v263, -1, -1);
          MEMORY[0x26D6A18D0](v255, -1, -1);
        }

        v215 = type metadata accessor for OwnershipChangeBroadcastMessage;
      }
    }

    goto LABEL_78;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_26C3F6A20(v136, v437, type metadata accessor for CatchupResponseMessage);

      v151 = sub_26C46BF84();
      v152 = sub_26C46C404();

      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v154 = v444;
        v155 = v131;
        v156 = v153;
        v157 = swift_slowAlloc();
        v450 = v157;
        *v156 = 136315138;
        v158 = v438;
        v387(v438, &v447[OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant], v130);
        v159 = v130;
        v160 = v439;
        sub_26C46BCC4();
        v155(v158, v159);
        sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v161 = sub_26C46C704();
        v163 = v162;
        (v138[1].isa)(v160, v154);
        v164 = sub_26C3E80A8(v161, v163, &v450);

        *(v156 + 4) = v164;
        _os_log_impl(&dword_26C3D6000, v151, v152, "SyncedModelManager[%s] Received catchup response", v156, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v157);
        MEMORY[0x26D6A18D0](v157, -1, -1);
        MEMORY[0x26D6A18D0](v156, -1, -1);
      }

      v143 = v437;
      sub_26C3F2A38(v437, v446);
      v165 = type metadata accessor for CatchupResponseMessage;
      goto LABEL_25;
    }

    v147 = v431;
    sub_26C3F6A20(v136, v431, type metadata accessor for OwnershipChangeRequestMessage);
    v189 = v421;
    sub_26C3DDD48(v147 + *(v423 + 32), v421, &qword_280497458, &unk_26C46D3F0);
    v190 = *(v135 + 48);
    v191 = v130;
    if (v190(v189, 1, v139) == 1)
    {
      v192 = v416;
      *v416 = 0;
      v192[1] = 0;
      sub_26C46BD14();
      if (v190(v189, 1, v139) != 1)
      {
        sub_26C3DE270(v189, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v192 = v416;
      sub_26C3F6A20(v189, v416, type metadata accessor for PBUUID);
    }

    v222 = v411;
    sub_26C40F3CC();
    sub_26C3F6910(v192, type metadata accessor for PBUUID);
    v223 = sub_26C3F3210(v222, *v147, *(v147 + 8));
    v224 = v138[1].isa;
    v224(v222, v444);
    if (v223)
    {
      sub_26C419DF8(v147, v446);
    }

    else
    {

      v264 = sub_26C46BF84();
      v265 = sub_26C46C3E4();

      if (os_log_type_enabled(v264, v265))
      {
        v266 = swift_slowAlloc();
        v267 = v444;
        v385 = v131;
        v268 = v266;
        v447 = swift_slowAlloc();
        v450 = v447;
        *v268 = 136315138;
        v269 = v438;
        v387(v438, &v129[OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant], v191);
        v270 = v439;
        sub_26C46BCC4();
        v385(v269, v191);
        sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v271 = sub_26C46C704();
        v273 = v272;
        v224(v270, v267);
        v274 = sub_26C3E80A8(v271, v273, &v450);

        *(v268 + 4) = v274;
        _os_log_impl(&dword_26C3D6000, v264, v265, "SyncedModelManager[%s] Received ownership request for unknown model", v268, 0xCu);
        v275 = v447;
        __swift_destroy_boxed_opaque_existential_1(v447);
        MEMORY[0x26D6A18D0](v275, -1, -1);
        MEMORY[0x26D6A18D0](v268, -1, -1);
      }
    }

    v215 = type metadata accessor for OwnershipChangeRequestMessage;
LABEL_78:
    v166 = v215;
    v167 = v147;
    goto LABEL_79;
  }

  if (EnumCaseMultiPayload)
  {

    v171 = sub_26C46BF84();
    v172 = sub_26C46C404();

    if (os_log_type_enabled(v171, v172))
    {
      v173 = swift_slowAlloc();
      v174 = v444;
      v175 = v131;
      v176 = v173;
      v177 = swift_slowAlloc();
      v450 = v177;
      *v176 = 136315138;
      v178 = v438;
      v387(v438, &v447[OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant], v130);
      v179 = v130;
      v180 = v439;
      sub_26C46BCC4();
      v175(v178, v179);
      sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v181 = sub_26C46C704();
      v183 = v182;
      (v138[1].isa)(v180, v174);
      v184 = sub_26C3E80A8(v181, v183, &v450);

      *(v176 + 4) = v184;
      _os_log_impl(&dword_26C3D6000, v171, v172, "SyncedModelManager[%s] Received catchup request", v176, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v177);
      MEMORY[0x26D6A18D0](v177, -1, -1);
      MEMORY[0x26D6A18D0](v176, -1, -1);
    }

    sub_26C3F20BC(v446);
    sub_26C3F6910(v449, type metadata accessor for SyncMessage.OneOf_Contents);
    v185 = v442;
    return sub_26C3F6910(v185, type metadata accessor for SyncMessage.OneOf_Contents);
  }

  v141 = v130;
  v142 = v136;
  v143 = v436;
  sub_26C3F6A20(v142, v436, type metadata accessor for SyncTransactionMessage);
  v144 = *v143;
  if (*(v143 + 8) != 1)
  {
    v196 = v143;
    v197 = v410;
    sub_26C3F69B8(v143, v410, type metadata accessor for SyncTransactionMessage);

    v198 = sub_26C46BF84();
    v199 = sub_26C46C3E4();

    if (os_log_type_enabled(v198, v199))
    {
      LODWORD(v447) = v199;
      v200 = swift_slowAlloc();
      v446 = swift_slowAlloc();
      v450 = v446;
      *v200 = 136315650;
      v201 = v438;
      v387(v438, &v129[OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant], v141);
      v202 = v439;
      sub_26C46BCC4();
      v131(v201, v141);
      sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v203 = v444;
      v204 = sub_26C46C704();
      v206 = v205;
      v448 = v138[1].isa;
      (v448)(v202, v203);
      v207 = sub_26C3E80A8(v204, v206, &v450);

      *(v200 + 4) = v207;
      *(v200 + 12) = 2048;
      *(v200 + 14) = v144;
      *(v200 + 22) = 2080;
      v208 = v409;
      sub_26C3DDD48(v197 + *(v140 + 36), v409, &qword_280497458, &unk_26C46D3F0);
      v209 = v440;
      v210 = *(v441 + 48);
      if (v210(v208, 1, v440) == 1)
      {
        v211 = v408;
        *v408 = 0;
        v211[1] = 0;
        sub_26C46BD14();
        if (v210(v208, 1, v209) != 1)
        {
          sub_26C3DE270(v208, &qword_280497458, &unk_26C46D3F0);
        }
      }

      else
      {
        v211 = v408;
        sub_26C3F6A20(v208, v408, type metadata accessor for PBUUID);
      }

      v310 = v406;
      sub_26C40F3CC();
      sub_26C3F6910(v211, type metadata accessor for PBUUID);
      v311 = sub_26C46BB04();
      v313 = v312;
      (v448)(v310, v444);
      sub_26C3F6910(v197, type metadata accessor for SyncTransactionMessage);
      v314 = sub_26C3E80A8(v311, v313, &v450);

      *(v200 + 24) = v314;
      v315 = "SyncedModelManager[%s] Received unrecognized model type:%ld for model UUID:%s";
      v316 = v447;
      v317 = v198;
      v318 = v200;
      v319 = 32;
      goto LABEL_108;
    }

    v288 = v197;
LABEL_112:
    sub_26C3F6910(v288, type metadata accessor for SyncTransactionMessage);
    v167 = v196;
    goto LABEL_113;
  }

  if (!v144)
  {
    v196 = v143;
    v289 = v407;
    sub_26C3F69B8(v143, v407, type metadata accessor for SyncTransactionMessage);

    v198 = sub_26C46BF84();
    v290 = sub_26C46C3E4();

    if (os_log_type_enabled(v198, v290))
    {
      LODWORD(v447) = v290;
      v200 = swift_slowAlloc();
      v446 = swift_slowAlloc();
      v450 = v446;
      *v200 = 136315394;
      v291 = v438;
      v387(v438, &v129[OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant], v141);
      v292 = v289;
      v293 = v439;
      sub_26C46BCC4();
      v131(v291, v141);
      sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v294 = v444;
      v295 = sub_26C46C704();
      v297 = v296;
      v298 = v138[1].isa;
      v298(v293, v294);
      v299 = sub_26C3E80A8(v295, v297, &v450);

      *(v200 + 4) = v299;
      *(v200 + 12) = 2080;
      v300 = v400;
      sub_26C3DDD48(v292 + *(v140 + 36), v400, &qword_280497458, &unk_26C46D3F0);
      v301 = v440;
      v302 = *(v441 + 48);
      if (v302(v300, 1, v440) == 1)
      {
        v303 = v398;
        *v398 = 0;
        v303[1] = 0;
        sub_26C46BD14();
        if (v302(v300, 1, v301) != 1)
        {
          sub_26C3DE270(v300, &qword_280497458, &unk_26C46D3F0);
        }
      }

      else
      {
        v303 = v398;
        sub_26C3F6A20(v300, v398, type metadata accessor for PBUUID);
      }

      v363 = v399;
      sub_26C40F3CC();
      sub_26C3F6910(v303, type metadata accessor for PBUUID);
      v364 = sub_26C46BB04();
      v366 = v365;
      v298(v363, v444);
      sub_26C3F6910(v407, type metadata accessor for SyncTransactionMessage);
      v367 = sub_26C3E80A8(v364, v366, &v450);

      *(v200 + 14) = v367;
      v315 = "SyncedModelManager[%s] Received SyncTransactionMessage for an unregistered model with UUID:%s";
      v316 = v447;
      v317 = v198;
      v318 = v200;
      v319 = 22;
LABEL_108:
      _os_log_impl(&dword_26C3D6000, v317, v316, v315, v318, v319);
      v368 = v446;
      swift_arrayDestroy();
      v369 = v368;
LABEL_109:
      MEMORY[0x26D6A18D0](v369, -1, -1);
      v370 = v200;
LABEL_110:
      MEMORY[0x26D6A18D0](v370, -1, -1);

      v167 = v436;
      v166 = type metadata accessor for SyncTransactionMessage;
      goto LABEL_79;
    }

    v288 = v289;
    goto LABEL_112;
  }

  if (v144 != 1)
  {
    v304 = v143 + *(v140 + 36);
    v305 = v404;
    sub_26C3DDD48(v304, v404, &qword_280497458, &unk_26C46D3F0);
    v308 = *(v135 + 48);
    v306 = v135 + 48;
    v307 = v308;
    if (v308(v305, 1, v139) == 1)
    {
      v309 = v405;
      *v405 = 0;
      v309[1] = 0;
      sub_26C46BD14();
      if (v307(v305, 1, v139) != 1)
      {
        sub_26C3DE270(v305, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v309 = v405;
      sub_26C3F6A20(v305, v405, type metadata accessor for PBUUID);
    }

    v320 = v403;
    sub_26C40F3CC();
    sub_26C3F6910(v309, type metadata accessor for PBUUID);
    swift_beginAccess();
    if (*(*(v129 + 4) + 16))
    {
      sub_26C42C210(v320);
      if (v321)
      {
        swift_endAccess();
        v322 = v138[1].isa;

        v322(v320, v444);
        v143 = v436;
        goto LABEL_96;
      }
    }

    v446 = v307;
    v385 = v131;
    v441 = v306;
    swift_endAccess();
    v323 = v444;
    v324 = v129;
    v325 = v138[1].isa;
    v325(v320, v444);
    v326 = v436;
    v327 = v402;
    sub_26C3F69B8(v436, v402, type metadata accessor for SyncTransactionMessage);

    v328 = sub_26C46BF84();
    v329 = sub_26C46C3E4();

    LODWORD(v447) = v329;
    if (os_log_type_enabled(v328, v329))
    {
      v445 = v328;
      v330 = swift_slowAlloc();
      v442 = swift_slowAlloc();
      v450 = v442;
      *v330 = 136315394;
      v331 = v438;
      v387(v438, &v324[OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant], v141);
      v332 = v439;
      sub_26C46BCC4();
      v385(v331, v141);
      sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v333 = sub_26C46C704();
      v335 = v334;
      v448 = v325;
      v325(v332, v323);
      v336 = sub_26C3E80A8(v333, v335, &v450);

      *(v330 + 4) = v336;
      *(v330 + 12) = 2080;
      v337 = v395;
      sub_26C3DDD48(v327 + *(v140 + 36), v395, &qword_280497458, &unk_26C46D3F0);
      v338 = v440;
      v339 = v446;
      if (v446(v337, 1, v440) == 1)
      {
        v340 = v397;
        *v397 = 0;
        v340[1] = 0;
        sub_26C46BD14();
        v341 = v339(v337, 1, v338);
        v342 = v396;
        v343 = v447;
        if (v341 != 1)
        {
          sub_26C3DE270(v337, &qword_280497458, &unk_26C46D3F0);
        }
      }

      else
      {
        v340 = v397;
        sub_26C3F6A20(v337, v397, type metadata accessor for PBUUID);
        v342 = v396;
        v343 = v447;
      }

      sub_26C40F3CC();
      sub_26C3F6910(v340, type metadata accessor for PBUUID);
      v371 = sub_26C46BB04();
      v373 = v372;
      (v448)(v342, v444);
      sub_26C3F6910(v327, type metadata accessor for SyncTransactionMessage);
      v374 = sub_26C3E80A8(v371, v373, &v450);

      *(v330 + 14) = v374;
      v198 = v445;
      _os_log_impl(&dword_26C3D6000, v445, v343, "SyncedModelManager[%s] Received SyncTransactionMessage for an unregistered dynamic model UUID:%s", v330, 0x16u);
      v375 = v442;
      swift_arrayDestroy();
      MEMORY[0x26D6A18D0](v375, -1, -1);
      v370 = v330;
      goto LABEL_110;
    }

    sub_26C3F6910(v327, type metadata accessor for SyncTransactionMessage);
    v167 = v326;
LABEL_113:
    v166 = type metadata accessor for SyncTransactionMessage;
    goto LABEL_79;
  }

  v145 = v387;
  if (!*(v129 + 3))
  {
    v385 = v131;
    v196 = v143;
    v344 = v401;
    sub_26C3F69B8(v143, v401, type metadata accessor for SyncTransactionMessage);

    v198 = sub_26C46BF84();
    v345 = sub_26C46C3E4();

    if (os_log_type_enabled(v198, v345))
    {
      LODWORD(v447) = v345;
      v200 = swift_slowAlloc();
      v346 = swift_slowAlloc();
      v347 = v129;
      v348 = v346;
      v450 = v346;
      *v200 = 136315394;
      v349 = v438;
      v145(v438, &v347[OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant], v141);
      v350 = v439;
      sub_26C46BCC4();
      v385(v349, v141);
      sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v351 = v444;
      v352 = sub_26C46C704();
      v354 = v353;
      v355 = v351;
      v356 = v138[1].isa;
      v356(v350, v355);
      v357 = sub_26C3E80A8(v352, v354, &v450);

      *(v200 + 4) = v357;
      *(v200 + 12) = 2080;
      v358 = v344 + *(v140 + 36);
      v359 = v394;
      sub_26C3DDD48(v358, v394, &qword_280497458, &unk_26C46D3F0);
      v360 = v440;
      v361 = *(v441 + 48);
      if (v361(v359, 1, v440) == 1)
      {
        v362 = v393;
        *v393 = 0;
        v362[1] = 0;
        sub_26C46BD14();
        if (v361(v359, 1, v360) != 1)
        {
          sub_26C3DE270(v359, &qword_280497458, &unk_26C46D3F0);
        }
      }

      else
      {
        v362 = v393;
        sub_26C3F6A20(v359, v393, type metadata accessor for PBUUID);
      }

      v376 = v392;
      sub_26C40F3CC();
      sub_26C3F6910(v362, type metadata accessor for PBUUID);
      v377 = sub_26C46BB04();
      v379 = v378;
      v356(v376, v444);
      sub_26C3F6910(v401, type metadata accessor for SyncTransactionMessage);
      v380 = sub_26C3E80A8(v377, v379, &v450);

      *(v200 + 14) = v380;
      _os_log_impl(&dword_26C3D6000, v198, v447, "SyncedModelManager[%s] Received SyncTransactionMessage for an unregistered static model UUID:%s", v200, 0x16u);
      swift_arrayDestroy();
      v369 = v348;
      goto LABEL_109;
    }

    v288 = v344;
    goto LABEL_112;
  }

LABEL_96:
  sub_26C415A38(v143, v446);

  v165 = type metadata accessor for SyncTransactionMessage;
LABEL_25:
  v166 = v165;
  v167 = v143;
LABEL_79:
  sub_26C3F6910(v167, v166);
  v185 = v449;
  return sub_26C3F6910(v185, type metadata accessor for SyncMessage.OneOf_Contents);
}