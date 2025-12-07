void (*InclusionProof.perApplicationTreeEntry.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for LogEntry(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for InclusionProof(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(v16 + v17, v8, &qword_27DAF2150, &qword_22FFB5CA0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = MEMORY[0x277D84F90];
    *(v14 + 24) = xmmword_22FFB33B0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 1;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v19 = *(v9 + 40);
    v20 = type metadata accessor for SignedObject(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2150, &qword_22FFB5CA0);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for LogEntry);
  }

  return sub_22FF3A184;
}

void sub_22FF3A184(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22FF37224(*(v2 + 120), *(v2 + 112), type metadata accessor for LogEntry);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for InclusionProof._StorageClass(0);
      swift_allocObject();
      v6 = sub_22FF44578(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22FF36190(v10, v14, type metadata accessor for LogEntry);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
    swift_beginAccess();
    sub_22FEFF0DC(v14, v6 + v15, &qword_27DAF2150, &qword_22FFB5CA0);
    swift_endAccess();
    sub_22FF3728C(v9, type metadata accessor for LogEntry);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for InclusionProof._StorageClass(0);
      swift_allocObject();
      v18 = sub_22FF44578(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22FF36190(v9, v14, type metadata accessor for LogEntry);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
    swift_beginAccess();
    sub_22FEFF0DC(v14, v18 + v23, &qword_27DAF2150, &qword_22FFB5CA0);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL sub_22FF3A404(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v4 + *(type metadata accessor for InclusionProof(0) + 20));
  v13 = *a3;
  swift_beginAccess();
  sub_22FEBF3A4(v12 + v13, v11, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14) != 1;
  sub_22FEAEA34(v11, a1, a2);
  return v15;
}

uint64_t sub_22FF3A54C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = *(type metadata accessor for InclusionProof(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for InclusionProof._StorageClass(0);
    swift_allocObject();
    v15 = sub_22FF44578(v15);
    *(v9 + v13) = v15;
  }

  v16 = a3(0);
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = *a4;
  swift_beginAccess();
  sub_22FEFF0DC(v12, v15 + v17, a1, a2);
  return swift_endAccess();
}

uint64_t sub_22FF3A6B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for LogEntry(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF37224(a1, v10, type metadata accessor for LogEntry);
  v11 = *(type metadata accessor for InclusionProof(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for InclusionProof._StorageClass(0);
    swift_allocObject();
    v13 = sub_22FF44578(v13);
    *(a2 + v11) = v13;
  }

  sub_22FF36190(v10, v6, type metadata accessor for LogEntry);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_22FEFF0DC(v6, v13 + v14, &qword_27DAF2150, &qword_22FFB5CA0);
  return swift_endAccess();
}

uint64_t InclusionProof.topLevelTreeEntry.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for InclusionProof(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for InclusionProof._StorageClass(0);
    swift_allocObject();
    v9 = sub_22FF44578(v9);
    *(v2 + v7) = v9;
  }

  sub_22FF36190(a1, v6, type metadata accessor for LogEntry);
  v10 = type metadata accessor for LogEntry(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_22FEFF0DC(v6, v9 + v11, &qword_27DAF2150, &qword_22FFB5CA0);
  return swift_endAccess();
}

void (*InclusionProof.topLevelTreeEntry.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for LogEntry(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for InclusionProof(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(v16 + v17, v8, &qword_27DAF2150, &qword_22FFB5CA0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = MEMORY[0x277D84F90];
    *(v14 + 24) = xmmword_22FFB33B0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 1;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v19 = *(v9 + 40);
    v20 = type metadata accessor for SignedObject(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2150, &qword_22FFB5CA0);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for LogEntry);
  }

  return sub_22FF3ACD8;
}

void sub_22FF3ACD8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22FF37224(*(v2 + 120), *(v2 + 112), type metadata accessor for LogEntry);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for InclusionProof._StorageClass(0);
      swift_allocObject();
      v6 = sub_22FF44578(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22FF36190(v10, v14, type metadata accessor for LogEntry);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
    swift_beginAccess();
    sub_22FEFF0DC(v14, v6 + v15, &qword_27DAF2150, &qword_22FFB5CA0);
    swift_endAccess();
    sub_22FF3728C(v9, type metadata accessor for LogEntry);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for InclusionProof._StorageClass(0);
      swift_allocObject();
      v18 = sub_22FF44578(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22FF36190(v9, v14, type metadata accessor for LogEntry);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
    swift_beginAccess();
    sub_22FEFF0DC(v14, v18 + v23, &qword_27DAF2150, &qword_22FFB5CA0);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

uint64_t sub_22FF3B008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for LogEntry(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF37224(a1, v10, type metadata accessor for LogEntry);
  v11 = *(type metadata accessor for PatInclusionProof(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PatInclusionProof._StorageClass(0);
    swift_allocObject();
    v13 = sub_22FF4676C(v13);
    *(a2 + v11) = v13;
  }

  sub_22FF36190(v10, v6, type metadata accessor for LogEntry);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_22FEFF0DC(v6, v13 + v14, &qword_27DAF2150, &qword_22FFB5CA0);
  return swift_endAccess();
}

uint64_t PatInclusionProof.perApplicationTreeEntry.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for PatInclusionProof(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PatInclusionProof._StorageClass(0);
    swift_allocObject();
    v9 = sub_22FF4676C(v9);
    *(v2 + v7) = v9;
  }

  sub_22FF36190(a1, v6, type metadata accessor for LogEntry);
  v10 = type metadata accessor for LogEntry(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_22FEFF0DC(v6, v9 + v11, &qword_27DAF2150, &qword_22FFB5CA0);
  return swift_endAccess();
}

void (*PatInclusionProof.perApplicationTreeEntry.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for LogEntry(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for PatInclusionProof(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(v16 + v17, v8, &qword_27DAF2150, &qword_22FFB5CA0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = MEMORY[0x277D84F90];
    *(v14 + 24) = xmmword_22FFB33B0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 1;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v19 = *(v9 + 40);
    v20 = type metadata accessor for SignedObject(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2150, &qword_22FFB5CA0);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for LogEntry);
  }

  return sub_22FF3B628;
}

void sub_22FF3B628(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22FF37224(*(v2 + 120), *(v2 + 112), type metadata accessor for LogEntry);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for PatInclusionProof._StorageClass(0);
      swift_allocObject();
      v6 = sub_22FF4676C(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22FF36190(v10, v14, type metadata accessor for LogEntry);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
    swift_beginAccess();
    sub_22FEFF0DC(v14, v6 + v15, &qword_27DAF2150, &qword_22FFB5CA0);
    swift_endAccess();
    sub_22FF3728C(v9, type metadata accessor for LogEntry);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for PatInclusionProof._StorageClass(0);
      swift_allocObject();
      v18 = sub_22FF4676C(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22FF36190(v9, v14, type metadata accessor for LogEntry);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
    swift_beginAccess();
    sub_22FEFF0DC(v14, v18 + v23, &qword_27DAF2150, &qword_22FFB5CA0);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

uint64_t sub_22FF3B8B0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = *(v3 + *(a1(0) + 20));
  v11 = *a2;
  swift_beginAccess();
  sub_22FEBF3A4(v10 + v11, v9, &qword_27DAF2150, &qword_22FFB5CA0);
  v12 = type metadata accessor for LogEntry(0);
  v13 = *(*(v12 - 8) + 48);
  if (v13(v9, 1, v12) != 1)
  {
    return sub_22FF36190(v9, a3, type metadata accessor for LogEntry);
  }

  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 16) = MEMORY[0x277D84F90];
  *(a3 + 24) = xmmword_22FFB33B0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v14 = *(v12 + 40);
  v15 = type metadata accessor for SignedObject(0);
  (*(*(v15 - 8) + 56))(a3 + v14, 1, 1, v15);
  result = (v13)(v9, 1, v12);
  if (result != 1)
  {
    return sub_22FEAEA34(v9, &qword_27DAF2150, &qword_22FFB5CA0);
  }

  return result;
}

uint64_t sub_22FF3BAAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for LogEntry(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF37224(a1, v10, type metadata accessor for LogEntry);
  v11 = *(type metadata accessor for PatInclusionProof(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PatInclusionProof._StorageClass(0);
    swift_allocObject();
    v13 = sub_22FF4676C(v13);
    *(a2 + v11) = v13;
  }

  sub_22FF36190(v10, v6, type metadata accessor for LogEntry);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_22FEFF0DC(v6, v13 + v14, &qword_27DAF2150, &qword_22FFB5CA0);
  return swift_endAccess();
}

uint64_t PatInclusionProof.topLevelTreeEntry.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for PatInclusionProof(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PatInclusionProof._StorageClass(0);
    swift_allocObject();
    v9 = sub_22FF4676C(v9);
    *(v2 + v7) = v9;
  }

  sub_22FF36190(a1, v6, type metadata accessor for LogEntry);
  v10 = type metadata accessor for LogEntry(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_22FEFF0DC(v6, v9 + v11, &qword_27DAF2150, &qword_22FFB5CA0);
  return swift_endAccess();
}

void (*PatInclusionProof.topLevelTreeEntry.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for LogEntry(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for PatInclusionProof(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(v16 + v17, v8, &qword_27DAF2150, &qword_22FFB5CA0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = MEMORY[0x277D84F90];
    *(v14 + 24) = xmmword_22FFB33B0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 1;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v19 = *(v9 + 40);
    v20 = type metadata accessor for SignedObject(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2150, &qword_22FFB5CA0);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for LogEntry);
  }

  return sub_22FF3C0CC;
}

void sub_22FF3C0CC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22FF37224(*(v2 + 120), *(v2 + 112), type metadata accessor for LogEntry);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for PatInclusionProof._StorageClass(0);
      swift_allocObject();
      v6 = sub_22FF4676C(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22FF36190(v10, v14, type metadata accessor for LogEntry);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
    swift_beginAccess();
    sub_22FEFF0DC(v14, v6 + v15, &qword_27DAF2150, &qword_22FFB5CA0);
    swift_endAccess();
    sub_22FF3728C(v9, type metadata accessor for LogEntry);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for PatInclusionProof._StorageClass(0);
      swift_allocObject();
      v18 = sub_22FF4676C(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22FF36190(v9, v14, type metadata accessor for LogEntry);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
    swift_beginAccess();
    sub_22FEFF0DC(v14, v18 + v23, &qword_27DAF2150, &qword_22FFB5CA0);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL sub_22FF3C328(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for PatInclusionProof(0) + 20));
  v7 = *a1;
  swift_beginAccess();
  sub_22FEBF3A4(v6 + v7, v5, &qword_27DAF2150, &qword_22FFB5CA0);
  v8 = type metadata accessor for LogEntry(0);
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  sub_22FEAEA34(v5, &qword_27DAF2150, &qword_22FFB5CA0);
  return v9;
}

uint64_t sub_22FF3C454(uint64_t *a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for PatInclusionProof(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PatInclusionProof._StorageClass(0);
    swift_allocObject();
    v9 = sub_22FF4676C(v9);
    *(v3 + v7) = v9;
  }

  v10 = type metadata accessor for LogEntry(0);
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = *a1;
  swift_beginAccess();
  sub_22FEFF0DC(v6, v9 + v11, &qword_27DAF2150, &qword_22FFB5CA0);
  return swift_endAccess();
}

uint64_t sub_22FF3C5F8@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X8>)
{
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v9 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t sub_22FF3C6B8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF3C754(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ChangeLogNodeV2.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_22FFB33B0;
  type metadata accessor for ChangeLogNodeV2(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t (*PerApplicationTreeNode.objectMapHead.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for SignedObject(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for PerApplicationTreeNode(0) + 20);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF2338, &unk_22FFBB620);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_22FFB33B0;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v17 = *(v9 + 24);
    v18 = type metadata accessor for Signature(0);
    (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2338, &unk_22FFBB620);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for SignedObject);
  }

  return sub_22FF4F568;
}

uint64_t sub_22FF3CB6C@<X0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = a1(0);
  sub_22FEBF3A4(v2 + *(v8 + 20), v7, &qword_27DAF2338, &unk_22FFBB620);
  v9 = type metadata accessor for SignedObject(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22FF36190(v7, a2, type metadata accessor for SignedObject);
  }

  *a2 = xmmword_22FFB33B0;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v11 = *(v9 + 24);
  v12 = type metadata accessor for Signature(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2338, &unk_22FFBB620);
  }

  return result;
}

uint64_t sub_22FF3CD1C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = a2(0);
  sub_22FEBF3A4(a1 + *(v9 + 20), v8, &qword_27DAF2338, &unk_22FFBB620);
  v10 = type metadata accessor for SignedObject(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_22FF36190(v8, a3, type metadata accessor for SignedObject);
  }

  *a3 = xmmword_22FFB33B0;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Signature(0);
  (*(*(v13 - 8) + 56))(&a3[v12], 1, 1, v13);
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF2338, &unk_22FFBB620);
  }

  return result;
}

uint64_t sub_22FF3CED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for SignedObject(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF37224(a1, v11, type metadata accessor for SignedObject);
  v12 = *(a5(0) + 20);
  sub_22FEAEA34(a2 + v12, &qword_27DAF2338, &unk_22FFBB620);
  sub_22FF36190(v11, a2 + v12, type metadata accessor for SignedObject);
  return (*(v9 + 56))(a2 + v12, 0, 1, v8);
}

uint64_t sub_22FF3D024(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  sub_22FEAEA34(v2 + v4, &qword_27DAF2338, &unk_22FFBB620);
  sub_22FF36190(a1, v2 + v4, type metadata accessor for SignedObject);
  v5 = type metadata accessor for SignedObject(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*TopLevelTreeNode.patHead.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for SignedObject(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for TopLevelTreeNode(0) + 20);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF2338, &unk_22FFBB620);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_22FFB33B0;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v17 = *(v9 + 24);
    v18 = type metadata accessor for Signature(0);
    (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2338, &unk_22FFBB620);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for SignedObject);
  }

  return sub_22FF3D340;
}

BOOL sub_22FF3D394(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = a1(0);
  sub_22FEBF3A4(v1 + *(v6 + 20), v5, &qword_27DAF2338, &unk_22FFBB620);
  v7 = type metadata accessor for SignedObject(0);
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_22FEAEA34(v5, &qword_27DAF2338, &unk_22FFBB620);
  return v8;
}

uint64_t sub_22FF3D4B0(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 20);
  sub_22FEAEA34(v1 + v2, &qword_27DAF2338, &unk_22FFBB620);
  v3 = type metadata accessor for SignedObject(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t sub_22FF3D57C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for SignedObject(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t PerApplicationTreeConfigNode.vrfPublicKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31E8, &qword_22FFBB648);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for PerApplicationTreeConfigNode(0);
  sub_22FEBF3A4(v1 + *(v6 + 28), v5, &qword_27DAF31E8, &qword_22FFBB648);
  v7 = type metadata accessor for VRFPublicKey(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22FF36190(v5, a1, type metadata accessor for VRFPublicKey);
  }

  *a1 = xmmword_22FFB33B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22FEAEA34(v5, &qword_27DAF31E8, &qword_22FFBB648);
  }

  return result;
}

uint64_t sub_22FF3D770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31E8, &qword_22FFBB648);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for PerApplicationTreeConfigNode(0);
  sub_22FEBF3A4(a1 + *(v7 + 28), v6, &qword_27DAF31E8, &qword_22FFBB648);
  v8 = type metadata accessor for VRFPublicKey(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22FF36190(v6, a2, type metadata accessor for VRFPublicKey);
  }

  *a2 = xmmword_22FFB33B0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF31E8, &qword_22FFBB648);
  }

  return result;
}

uint64_t sub_22FF3D8E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VRFPublicKey(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF37224(a1, v7, type metadata accessor for VRFPublicKey);
  v8 = *(type metadata accessor for PerApplicationTreeConfigNode(0) + 28);
  sub_22FEAEA34(a2 + v8, &qword_27DAF31E8, &qword_22FFBB648);
  sub_22FF36190(v7, a2 + v8, type metadata accessor for VRFPublicKey);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t PerApplicationTreeConfigNode.vrfPublicKey.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PerApplicationTreeConfigNode(0) + 28);
  sub_22FEAEA34(v1 + v3, &qword_27DAF31E8, &qword_22FFBB648);
  sub_22FF36190(a1, v1 + v3, type metadata accessor for VRFPublicKey);
  v4 = type metadata accessor for VRFPublicKey(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*PerApplicationTreeConfigNode.vrfPublicKey.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31E8, &qword_22FFBB648) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for VRFPublicKey(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for PerApplicationTreeConfigNode(0) + 28);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF31E8, &qword_22FFBB648);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_22FFB33B0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF31E8, &qword_22FFBB648);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for VRFPublicKey);
  }

  return sub_22FF3DCF8;
}

void sub_22FF3DD34(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v17 = (*a1)[1];
  if (a2)
  {
    sub_22FF37224(v12, v11, a6);
    sub_22FEAEA34(v15 + v10, a3, a4);
    sub_22FF36190(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_22FF3728C(v12, a6);
  }

  else
  {
    sub_22FEAEA34(v15 + v10, a3, a4);
    sub_22FF36190(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

BOOL sub_22FF3DEAC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_22FEBF3A4(v4 + *(v12 + 28), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_22FEAEA34(v11, a1, a2);
  return v14;
}

uint64_t sub_22FF3DFE4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_22FEAEA34(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t PerApplicationTreeConfigNode.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_22FFB33B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v2 = type metadata accessor for PerApplicationTreeConfigNode(0);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for VRFPublicKey(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t sub_22FF3E2B8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_22FFB33B0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  a1(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

void LogClosedNode.earliestVersionForNextTree.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t LogClosedNode.earliestVersionForNextTree.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t LogClosedNode.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for LogClosedNode(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF3E43C()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2FE8);
  __swift_project_value_buffer(v0, qword_27DAF2FE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN_VERSION";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "V1";
  *(v10 + 8) = 2;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "V2";
  *(v12 + 1) = 2;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "V3";
  *(v14 + 1) = 2;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 999999999;
  *v15 = "FUTURE";
  *(v15 + 8) = 6;
  *(v15 + 16) = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF3E70C()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF3000);
  __swift_project_value_buffer(v0, qword_27DAF3000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB7C40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN_APPLICATION";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IDS_MESSAGING";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CLOUDKIT";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "IDS_MULTIPLEX_ICLOUD";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "IDS_FACETIME";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "PRIVATE_CLOUD_COMPUTE";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "PRIVATE_CLOUD_COMPUTE_INTERNAL";
  *(v20 + 1) = 30;
  v20[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF3EA58()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF3018);
  __swift_project_value_buffer(v0, qword_27DAF3018);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22FFB7C40;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 0;
  *v4 = "UNKNOWN_STATUS";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22FFB1298();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 1;
  *v8 = "OK";
  *(v8 + 8) = 2;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "MUTATION_PENDING";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "ALREADY_EXISTS";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "INTERNAL_ERROR";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "INVALID_REQUEST";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "NOT_FOUND";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v7();
  return sub_22FFB12A8();
}

uint64_t sub_22FF3ED9C()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF3030);
  __swift_project_value_buffer(v0, qword_27DAF3030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN_VRF";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "ECVRF_ED25519_SHA512_Elligator2";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF3EFAC()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_28148F5B0);
  __swift_project_value_buffer(v0, qword_28148F5B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22FFB6380;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 0;
  *v5 = "UNKNOWN_LOG";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22FFB1298();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "PER_APPLICATION_CHANGE_LOG";
  *(v9 + 8) = 26;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "PER_APPLICATION_TREE";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "TOP_LEVEL_TREE";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "CT_LOG";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "AT_LOG";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  return sub_22FFB12A8();
}

uint64_t sub_22FF3F2B4()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF3048);
  __swift_project_value_buffer(v0, qword_27DAF3048);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN_MAP";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PER_APP_OBJECT_MAP";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF3F4C4()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_28148F3D8);
  __swift_project_value_buffer(v0, qword_28148F3D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_22FFB6390;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 0;
  *v5 = "PACL_NODE";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22FFB1298();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "PAT_NODE";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "PAT_CONFIG_NODE";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "TLT_NODE";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "TLT_CONFIG_NODE";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "LOG_CLOSED_NODE";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "CT_NODE";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "ATL_NODE";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  return sub_22FFB12A8();
}

uint64_t sub_22FF3F864()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF3060);
  __swift_project_value_buffer(v0, qword_27DAF3060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "output";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "proof";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t VRFWitness.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FFB1058();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        sub_22FFB10C8();
      }

      else if (result == 1)
      {
        sub_22FF46A04();
        sub_22FFB1098();
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t VRFWitness.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_22FF46A04(), result = sub_22FFB1208(), !v4))
  {
    v6 = v3[2];
    v7 = v3[3];
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_12;
      }

      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((v7 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v9 = v6;
      v10 = v6 >> 32;
    }

    if (v9 == v10)
    {
      goto LABEL_12;
    }

LABEL_11:
    result = sub_22FFB1228();
    if (v4)
    {
      return result;
    }

LABEL_12:
    v11 = v3[4];
    v12 = v3[5];
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_21;
      }

      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
    }

    else
    {
      if (!v13)
      {
        if ((v12 & 0xFF000000000000) == 0)
        {
          goto LABEL_21;
        }

LABEL_20:
        result = sub_22FFB1228();
        if (v4)
        {
          return result;
        }

        goto LABEL_21;
      }

      v14 = v11;
      v15 = v11 >> 32;
    }

    if (v14 != v15)
    {
      goto LABEL_20;
    }

LABEL_21:
    type metadata accessor for VRFWitness(0);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF3FD18@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = xmmword_22FFB33B0;
  *(a2 + 32) = xmmword_22FFB33B0;
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF3FD9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF3648, type metadata accessor for VRFWitness, &protocol conformance descriptor for VRFWitness);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF3FE3C(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF3380, type metadata accessor for VRFWitness, &protocol conformance descriptor for VRFWitness);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF3FEA8(uint64_t a1, uint64_t a2)
{
  sub_22FF4BE20(&qword_27DAF3380, type metadata accessor for VRFWitness, &protocol conformance descriptor for VRFWitness);

  return sub_22FFB11A8();
}

uint64_t sub_22FF3FF48()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF3078);
  __swift_project_value_buffer(v0, qword_27DAF3078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "vrfKey";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t VRFPublicKey.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FFB1058();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22FFB10C8();
      }

      else if (result == 2)
      {
        sub_22FF46A04();
        sub_22FFB1098();
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t sub_22FF402D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF3640, type metadata accessor for VRFPublicKey, &protocol conformance descriptor for VRFPublicKey);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF40378(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF3398, type metadata accessor for VRFPublicKey, &protocol conformance descriptor for VRFPublicKey);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF403E4(uint64_t a1, uint64_t a2)
{
  sub_22FF4BE20(&qword_27DAF3398, type metadata accessor for VRFPublicKey, &protocol conformance descriptor for VRFPublicKey);

  return sub_22FFB11A8();
}

uint64_t sub_22FF40480()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_28148F358);
  __swift_project_value_buffer(v0, qword_28148F358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "signature";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "signingKeySPKIHash";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "algorithm";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t Signature.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FFB1058();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3)
      {
        sub_22FF4BE68();
        sub_22FFB1098();
      }

      else if (result == 2 || result == 1)
      {
        sub_22FFB10C8();
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t Signature.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 == v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_22FFB1228();
  if (v4)
  {
    return result;
  }

LABEL_10:
  v11 = v3[2];
  v12 = v3[3];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
  }

  else
  {
    if (!v13)
    {
      if ((v12 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      result = sub_22FFB1228();
      if (v4)
      {
        return result;
      }

      goto LABEL_19;
    }

    v14 = v11;
    v15 = v11 >> 32;
  }

  if (v14 != v15)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (!v3[4] || (sub_22FF4BE68(), result = sub_22FFB1208(), !v4))
  {
    type metadata accessor for Signature(0);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF40934@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_22FFB33B0;
  *(a2 + 16) = xmmword_22FFB33B0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF409B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF3638, type metadata accessor for Signature, &protocol conformance descriptor for Signature);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF40A58(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_28148F348, type metadata accessor for Signature, &protocol conformance descriptor for Signature);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF40AC4(uint64_t a1, uint64_t a2)
{
  sub_22FF4BE20(&qword_28148F348, type metadata accessor for Signature, &protocol conformance descriptor for Signature);

  return sub_22FFB11A8();
}

uint64_t sub_22FF40B44()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_28148F398);
  __swift_project_value_buffer(v0, qword_28148F398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ECDSA_SHA256";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF40D74()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_2814909F8);
  __swift_project_value_buffer(v0, qword_2814909F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "object";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "signature";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t SignedObject.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22FFB1058();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22FFB10C8();
    }

    else if (result == 2)
    {
      sub_22FF40FF0(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_22FF40FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SignedObject(0);
  type metadata accessor for Signature(0);
  sub_22FF4BE20(&qword_28148F348, type metadata accessor for Signature, &protocol conformance descriptor for Signature);
  return sub_22FFB1128();
}

uint64_t SignedObject.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
LABEL_8:
    if (v11 == v12)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_22FFB1228();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v10)
  {
    v11 = v8;
    v12 = v8 >> 32;
    goto LABEL_8;
  }

  if ((v9 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = sub_22FF4117C(v3, a1, a2, a3);
  if (!v4)
  {
    type metadata accessor for SignedObject(0);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF4117C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A48, &qword_22FFB9178);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Signature(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SignedObject(0);
  sub_22FEBF3A4(a1 + *(v12 + 24), v7, &qword_27DAF2A48, &qword_22FFB9178);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2A48, &qword_22FFB9178);
  }

  sub_22FF36190(v7, v11, type metadata accessor for Signature);
  sub_22FF4BE20(&qword_28148F348, type metadata accessor for Signature, &protocol conformance descriptor for Signature);
  sub_22FFB1288();
  return sub_22FF3728C(v11, type metadata accessor for Signature);
}

uint64_t sub_22FF413E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_22FFB33B0;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Signature(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_22FF414C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF3630, type metadata accessor for SignedObject, &protocol conformance descriptor for SignedObject);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF41560(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_2814909E8, type metadata accessor for SignedObject, &protocol conformance descriptor for SignedObject);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF415CC(uint64_t a1, uint64_t a2)
{
  sub_22FF4BE20(&qword_2814909E8, type metadata accessor for SignedObject, &protocol conformance descriptor for SignedObject);

  return sub_22FFB11A8();
}

uint64_t sub_22FF41664()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF3090);
  __swift_project_value_buffer(v0, qword_27DAF3090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB6390;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "logBeginningMs";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "logSize";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "logHeadHash";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "revision";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "logType";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "application";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "treeId";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "timestampMs";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t LogHead.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FFB1058();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7 || result == 8)
          {
LABEL_4:
            sub_22FFB1108();
          }
        }

        else
        {
          if (result == 5)
          {
            sub_22FF4C33C();
          }

          else
          {
            sub_22FF03CAC();
          }

          sub_22FFB1098();
        }
      }

      else if (result > 2)
      {
        if (result != 3)
        {
          goto LABEL_4;
        }

        sub_22FFB10C8();
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_4;
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t LogHead.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3)
  {
    result = sub_22FFB1268();
    if (v4)
    {
      return result;
    }
  }

  if (v3[1])
  {
    result = sub_22FFB1268();
    if (v4)
    {
      return result;
    }
  }

  v6 = v3[2];
  v7 = v3[3];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_14;
    }

    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    goto LABEL_12;
  }

  if (v8)
  {
    v9 = v6;
    v10 = v6 >> 32;
LABEL_12:
    if (v9 == v10)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_13:
  result = sub_22FFB1228();
  if (v4)
  {
    return result;
  }

LABEL_14:
  if (!v3[4] || (result = sub_22FFB1268(), !v4))
  {
    v11 = v4;
    if (v3[5])
    {
      sub_22FF4C33C();
      result = sub_22FFB1208();
      if (v4)
      {
        return result;
      }

      v11 = 0;
    }

    if (v3[7])
    {
      sub_22FF03CAC();
      v12 = v11;
      result = sub_22FFB1208();
      if (v11)
      {
        return result;
      }
    }

    else
    {
      v12 = v11;
    }

    if (!v3[9] || (result = sub_22FFB1268(), !v12))
    {
      if (!v3[10] || (result = sub_22FFB1268(), !v12))
      {
        type metadata accessor for LogHead(0);
        return sub_22FFB0F68();
      }
    }
  }

  return result;
}

uint64_t sub_22FF41D80@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xC000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF41E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF3628, type metadata accessor for LogHead, &protocol conformance descriptor for LogHead);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF41EAC(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF33C0, type metadata accessor for LogHead, &protocol conformance descriptor for LogHead);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF41F18(uint64_t a1, uint64_t a2)
{
  sub_22FF4BE20(&qword_27DAF33C0, type metadata accessor for LogHead, &protocol conformance descriptor for LogHead);

  return sub_22FFB11A8();
}

uint64_t sub_22FF41FB0()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_28148F4B8);
  __swift_project_value_buffer(v0, qword_28148F4B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22FFB6380;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "logType";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22FFB1298();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "slh";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "hashesOfPeersInPathToRoot";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "nodeBytes";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "nodePosition";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "nodeType";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  return sub_22FFB12A8();
}

uint64_t LogEntry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22FFB1058();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4)
        {
          sub_22FFB10C8();
          goto LABEL_5;
        }

        if (result != 5)
        {
          if (result != 6)
          {
            goto LABEL_5;
          }

          v11 = v4;
          sub_22FF058DC();
          goto LABEL_17;
        }

        sub_22FFB1108();
      }

      else
      {
        switch(result)
        {
          case 1:
            v11 = v4;
            sub_22FF4C33C();
LABEL_17:
            v4 = v11;
            sub_22FFB1098();
            break;
          case 2:
            sub_22FF423F0(a1, v5, a2, a3);
            break;
          case 3:
            sub_22FFB10A8();
            break;
        }
      }

LABEL_5:
      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t sub_22FF423F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LogEntry(0);
  type metadata accessor for SignedObject(0);
  sub_22FF4BE20(&qword_2814909E8, type metadata accessor for SignedObject, &protocol conformance descriptor for SignedObject);
  return sub_22FFB1128();
}

uint64_t LogEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3)
  {
    sub_22FF4C33C();
    result = sub_22FFB1208();
    if (v4)
    {
      return result;
    }
  }

  result = sub_22FF42658(v3, a1, a2, a3);
  if (v4)
  {
    return result;
  }

  if (*(v3[2] + 16))
  {
    sub_22FFB1218();
  }

  v9 = v3[3];
  v10 = v3[4];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
  }

  else
  {
    if (!v11)
    {
      if ((v10 & 0xFF000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v12 = v9;
    v13 = v9 >> 32;
  }

  if (v12 != v13)
  {
LABEL_15:
    sub_22FFB1228();
  }

LABEL_16:
  if (v3[5])
  {
    sub_22FFB1268();
  }

  if (v3[6])
  {
    sub_22FF058DC();
    sub_22FFB1208();
  }

  type metadata accessor for LogEntry(0);
  return sub_22FFB0F68();
}

uint64_t sub_22FF42658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for SignedObject(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LogEntry(0);
  sub_22FEBF3A4(a1 + *(v12 + 40), v7, &qword_27DAF2338, &unk_22FFBB620);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2338, &unk_22FFBB620);
  }

  sub_22FF36190(v7, v11, type metadata accessor for SignedObject);
  sub_22FF4BE20(&qword_2814909E8, type metadata accessor for SignedObject, &protocol conformance descriptor for SignedObject);
  sub_22FFB1288();
  return sub_22FF3728C(v11, type metadata accessor for SignedObject);
}

uint64_t sub_22FF428C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = xmmword_22FFB33B0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(a1 + 40);
  v5 = type metadata accessor for SignedObject(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_22FF429B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF3620, type metadata accessor for LogEntry, &protocol conformance descriptor for LogEntry);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF42A54(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_28148F4A8, type metadata accessor for LogEntry, &protocol conformance descriptor for LogEntry);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF42AC0(uint64_t a1, uint64_t a2)
{
  sub_22FF4BE20(&qword_28148F4A8, type metadata accessor for LogEntry, &protocol conformance descriptor for LogEntry);

  return sub_22FFB11A8();
}

uint64_t sub_22FF42B58()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF30A8);
  __swift_project_value_buffer(v0, qword_27DAF30A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22FFB7C30;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "logBeginningMs";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22FFB1298();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "mapHeadHash";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "application";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "changeLogHead";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "revision";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "mapType";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "treeId";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "timestampMs";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "populating";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  return sub_22FFB12A8();
}

uint64_t MapHead.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22FFB1058();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          if (result != 3)
          {
            sub_22FF43098(a1, v5, a2, a3);
            goto LABEL_5;
          }

          v11 = v4;
          sub_22FF03CAC();
          goto LABEL_22;
        }

        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2)
        {
          sub_22FFB10C8();
        }
      }

      else
      {
        if (result <= 6)
        {
          if (result == 5)
          {
            goto LABEL_4;
          }

          v11 = v4;
          sub_22FF4C7C8();
LABEL_22:
          v4 = v11;
          sub_22FFB1098();
          goto LABEL_5;
        }

        if (result == 7 || result == 8)
        {
LABEL_4:
          sub_22FFB1108();
          goto LABEL_5;
        }

        if (result == 9)
        {
          sub_22FFB1088();
        }
      }

LABEL_5:
      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t sub_22FF43098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MapHead(0);
  type metadata accessor for LogHead(0);
  sub_22FF4BE20(&qword_27DAF33C0, type metadata accessor for LogHead, &protocol conformance descriptor for LogHead);
  return sub_22FFB1128();
}

uint64_t MapHead.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3)
  {
    result = sub_22FFB1268();
    if (v4)
    {
      return result;
    }
  }

  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_12;
    }

    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
LABEL_10:
    if (v12 == v13)
    {
      goto LABEL_12;
    }

LABEL_11:
    result = sub_22FFB1228();
    if (v4)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (v11)
  {
    v12 = v9;
    v13 = v9 >> 32;
    goto LABEL_10;
  }

  if ((v10 & 0xFF000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (!*(v3 + 24) || (sub_22FF03CAC(), result = sub_22FFB1208(), !v4))
  {
    result = sub_22FF4336C(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 40))
      {
        sub_22FFB1268();
      }

      if (*(v3 + 48))
      {
        sub_22FF4C7C8();
        sub_22FFB1208();
      }

      if (*(v3 + 64))
      {
        sub_22FFB1268();
      }

      if (*(v3 + 72))
      {
        sub_22FFB1268();
      }

      if (*(v3 + 80) == 1)
      {
        sub_22FFB11F8();
      }

      type metadata accessor for MapHead(0);
      return sub_22FFB0F68();
    }
  }

  return result;
}

uint64_t sub_22FF4336C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31A8, &qword_22FFBB630);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for LogHead(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MapHead(0);
  sub_22FEBF3A4(a1 + *(v12 + 52), v7, &qword_27DAF31A8, &qword_22FFBB630);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF31A8, &qword_22FFBB630);
  }

  sub_22FF36190(v7, v11, type metadata accessor for LogHead);
  sub_22FF4BE20(&qword_27DAF33C0, type metadata accessor for LogHead, &protocol conformance descriptor for LogHead);
  sub_22FFB1288();
  return sub_22FF3728C(v11, type metadata accessor for LogHead);
}

uint64_t sub_22FF435D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = xmmword_22FFB6370;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(a1 + 52);
  v5 = type metadata accessor for LogHead(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_22FF436C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF3618, type metadata accessor for MapHead, &protocol conformance descriptor for MapHead);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF43764(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF33E0, type metadata accessor for MapHead, &protocol conformance descriptor for MapHead);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF437D0(uint64_t a1, uint64_t a2)
{
  sub_22FF4BE20(&qword_27DAF33E0, type metadata accessor for MapHead, &protocol conformance descriptor for MapHead);

  return sub_22FFB11A8();
}

uint64_t sub_22FF43868()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF30C0);
  __swift_project_value_buffer(v0, qword_27DAF30C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "smh";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "hashesOfPeersInPathToRoot";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "mapLeaf";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t MapEntry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22FFB1058();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_22FFB10C8();
        break;
      case 2:
        sub_22FFB10A8();
        break;
      case 1:
        sub_22FF43B50(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_22FF43B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MapEntry(0);
  type metadata accessor for SignedObject(0);
  sub_22FF4BE20(&qword_2814909E8, type metadata accessor for SignedObject, &protocol conformance descriptor for SignedObject);
  return sub_22FFB1128();
}

uint64_t MapEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FF43CFC(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      sub_22FFB1218();
    }

    v6 = v3[1];
    v7 = v3[2];
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_13;
      }

      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((v7 & 0xFF000000000000) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      v9 = v6;
      v10 = v6 >> 32;
    }

    if (v9 != v10)
    {
LABEL_12:
      sub_22FFB1228();
    }

LABEL_13:
    type metadata accessor for MapEntry(0);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF43CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for SignedObject(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MapEntry(0);
  sub_22FEBF3A4(a1 + *(v12 + 28), v7, &qword_27DAF2338, &unk_22FFBB620);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2338, &unk_22FFBB620);
  }

  sub_22FF36190(v7, v11, type metadata accessor for SignedObject);
  sub_22FF4BE20(&qword_2814909E8, type metadata accessor for SignedObject, &protocol conformance descriptor for SignedObject);
  sub_22FFB1288();
  return sub_22FF3728C(v11, type metadata accessor for SignedObject);
}

uint64_t sub_22FF43F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = xmmword_22FFB33B0;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for SignedObject(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_22FF44044(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF3610, type metadata accessor for MapEntry, &protocol conformance descriptor for MapEntry);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF440E4(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF33F8, type metadata accessor for MapEntry, &protocol conformance descriptor for MapEntry);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF44150(uint64_t a1, uint64_t a2)
{
  sub_22FF4BE20(&qword_27DAF33F8, type metadata accessor for MapEntry, &protocol conformance descriptor for MapEntry);

  return sub_22FFB11A8();
}

uint64_t sub_22FF441F4()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF30D8);
  __swift_project_value_buffer(v0, qword_27DAF30D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "mapEntry";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "index";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "perApplicationTreeEntry";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "topLevelTreeEntry";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF44460()
{
  type metadata accessor for InclusionProof._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
  v2 = type metadata accessor for MapEntry(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index) = xmmword_22FFB33B0;
  v3 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  v4 = type metadata accessor for LogEntry(0);
  v5 = *(*(v4 - 8) + 56);
  v5(v0 + v3, 1, 1, v4);
  result = (v5)(v0 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry, 1, 1, v4);
  qword_27DAF30F0 = v0;
  return result;
}

uint64_t sub_22FF44578(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31B0, &unk_22FFBB638);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
  v10 = type metadata accessor for MapEntry(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = (v1 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index);
  *(v1 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index) = xmmword_22FFB33B0;
  v12 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  v13 = type metadata accessor for LogEntry(0);
  v14 = *(*(v13 - 8) + 56);
  v14(v1 + v12, 1, 1, v13);
  v25 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  v14(v1 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry, 1, 1, v13);
  v15 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v15, v8, &qword_27DAF31B0, &unk_22FFBB638);
  swift_beginAccess();
  sub_22FEFF0DC(v8, v1 + v9, &qword_27DAF31B0, &unk_22FFBB638);
  swift_endAccess();
  v16 = (a1 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index);
  swift_beginAccess();
  v18 = *v16;
  v17 = v16[1];
  swift_beginAccess();
  v19 = *v11;
  v20 = v11[1];
  *v11 = v18;
  v11[1] = v17;
  sub_22FEA5608(v18, v17);
  sub_22FEA55AC(v19, v20);
  v21 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v21, v5, &qword_27DAF2150, &qword_22FFB5CA0);
  swift_beginAccess();
  sub_22FEFF0DC(v5, v1 + v12, &qword_27DAF2150, &qword_22FFB5CA0);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v22, v5, &qword_27DAF2150, &qword_22FFB5CA0);

  v23 = v25;
  swift_beginAccess();
  sub_22FEFF0DC(v5, v1 + v23, &qword_27DAF2150, &qword_22FFB5CA0);
  swift_endAccess();
  return v1;
}

uint64_t sub_22FF44918()
{
  sub_22FEAEA34(v0 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry, &qword_27DAF31B0, &unk_22FFBB638);
  sub_22FEA55AC(*(v0 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index), *(v0 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index + 8));
  sub_22FEAEA34(v0 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry, &qword_27DAF2150, &qword_22FFB5CA0);
  sub_22FEAEA34(v0 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry, &qword_27DAF2150, &qword_22FFB5CA0);

  return swift_deallocClassInstance();
}

uint64_t sub_22FF44A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_22FFB1058();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        sub_22FF44CA4(a2, a1, a3, a4);
      }

      else if (result == 5)
      {
        sub_22FF44D80(a2, a1, a3, a4);
      }
    }

    else if (result == 2)
    {
      sub_22FF44B3C(a2, a1, a3, a4);
    }

    else if (result == 3)
    {
      sub_22FF44C18(a2, a1, a3, a4);
    }
  }

  return result;
}

uint64_t sub_22FF44B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for MapEntry(0);
  sub_22FF4BE20(&qword_27DAF33F8, type metadata accessor for MapEntry, &protocol conformance descriptor for MapEntry);
  sub_22FFB1128();
  return swift_endAccess();
}

uint64_t sub_22FF44C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22FFB10C8();
  return swift_endAccess();
}

uint64_t sub_22FF44CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LogEntry(0);
  sub_22FF4BE20(&qword_28148F4A8, type metadata accessor for LogEntry, &protocol conformance descriptor for LogEntry);
  sub_22FFB1128();
  return swift_endAccess();
}

uint64_t sub_22FF44D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LogEntry(0);
  sub_22FF4BE20(&qword_28148F4A8, type metadata accessor for LogEntry, &protocol conformance descriptor for LogEntry);
  sub_22FFB1128();
  return swift_endAccess();
}

uint64_t sub_22FF44E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22FF44FCC(a1, a2, a3, a4);
  if (!v4)
  {
    v10 = (a1 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2 || *(v11 + 16) == *(v11 + 24))
      {
        goto LABEL_11;
      }
    }

    else if (v13)
    {
      if (v11 == v11 >> 32)
      {
        goto LABEL_11;
      }
    }

    else if ((v12 & 0xFF000000000000) == 0)
    {
      goto LABEL_11;
    }

    sub_22FEA5608(v11, v12);
    sub_22FFB1228();
    sub_22FEA55AC(v11, v12);
LABEL_11:
    sub_22FF451F4(a1, a2, a3, a4);
    return sub_22FF4541C(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_22FF44FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31B0, &unk_22FFBB638);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for MapEntry(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v12, v7, &qword_27DAF31B0, &unk_22FFBB638);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF31B0, &unk_22FFBB638);
  }

  sub_22FF36190(v7, v11, type metadata accessor for MapEntry);
  sub_22FF4BE20(&qword_27DAF33F8, type metadata accessor for MapEntry, &protocol conformance descriptor for MapEntry);
  sub_22FFB1288();
  return sub_22FF3728C(v11, type metadata accessor for MapEntry);
}

uint64_t sub_22FF451F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for LogEntry(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v12, v7, &qword_27DAF2150, &qword_22FFB5CA0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2150, &qword_22FFB5CA0);
  }

  sub_22FF36190(v7, v11, type metadata accessor for LogEntry);
  sub_22FF4BE20(&qword_28148F4A8, type metadata accessor for LogEntry, &protocol conformance descriptor for LogEntry);
  sub_22FFB1288();
  return sub_22FF3728C(v11, type metadata accessor for LogEntry);
}

uint64_t sub_22FF4541C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for LogEntry(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v12, v7, &qword_27DAF2150, &qword_22FFB5CA0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2150, &qword_22FFB5CA0);
  }

  sub_22FF36190(v7, v11, type metadata accessor for LogEntry);
  sub_22FF4BE20(&qword_28148F4A8, type metadata accessor for LogEntry, &protocol conformance descriptor for LogEntry);
  sub_22FFB1288();
  return sub_22FF3728C(v11, type metadata accessor for LogEntry);
}

BOOL sub_22FF45688(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v81 = type metadata accessor for LogEntry(0);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v75 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2158, &unk_22FFB7B80);
  v4 = MEMORY[0x28223BE20](v83);
  v76 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v79 = &v74 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v74 = (&v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v78 = &v74 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v77 = (&v74 - v13);
  MEMORY[0x28223BE20](v12);
  v84 = &v74 - v14;
  v15 = type metadata accessor for MapEntry(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v82 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3658, &qword_22FFBDB00);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v74 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31B0, &unk_22FFBB638);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v85 = (&v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v26 = &v74 - v25;
  v27 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v27, v26, &qword_27DAF31B0, &unk_22FFBB638);
  v28 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
  v29 = v86;
  swift_beginAccess();
  v30 = *(v19 + 56);
  sub_22FEBF3A4(v26, v21, &qword_27DAF31B0, &unk_22FFBB638);
  v31 = v29 + v28;
  v32 = v29;
  sub_22FEBF3A4(v31, &v21[v30], &qword_27DAF31B0, &unk_22FFBB638);
  v33 = *(v16 + 48);
  if (v33(v21, 1, v15) == 1)
  {

    sub_22FEAEA34(v26, &qword_27DAF31B0, &unk_22FFBB638);
    v34 = a1;
    if (v33(&v21[v30], 1, v15) == 1)
    {
      sub_22FEAEA34(v21, &qword_27DAF31B0, &unk_22FFBB638);
      goto LABEL_9;
    }

LABEL_6:
    v36 = &qword_27DAF3658;
    v37 = &qword_22FFBDB00;
LABEL_7:
    sub_22FEAEA34(v21, v36, v37);
    goto LABEL_20;
  }

  v34 = a1;
  v35 = v85;
  sub_22FEBF3A4(v21, v85, &qword_27DAF31B0, &unk_22FFBB638);
  if (v33(&v21[v30], 1, v15) == 1)
  {

    sub_22FEAEA34(v26, &qword_27DAF31B0, &unk_22FFBB638);
    sub_22FF3728C(v35, type metadata accessor for MapEntry);
    goto LABEL_6;
  }

  v38 = v82;
  sub_22FF36190(&v21[v30], v82, type metadata accessor for MapEntry);

  v39 = _s16CloudAttestation8MapEntryV2eeoiySbAC_ACtFZ_0(v35, v38);
  sub_22FF3728C(v38, type metadata accessor for MapEntry);
  sub_22FEAEA34(v26, &qword_27DAF31B0, &unk_22FFBB638);
  sub_22FF3728C(v35, type metadata accessor for MapEntry);
  sub_22FEAEA34(v21, &qword_27DAF31B0, &unk_22FFBB638);
  if ((v39 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  v40 = (v34 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index);
  swift_beginAccess();
  v42 = *v40;
  v41 = v40[1];
  v43 = (v32 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index);
  swift_beginAccess();
  v45 = *v43;
  v44 = v43[1];
  sub_22FEA5608(v42, v41);
  sub_22FEA5608(v45, v44);
  v46 = sub_22FEC3DC8(v42, v41, v45, v44);
  sub_22FEA55AC(v45, v44);
  sub_22FEA55AC(v42, v41);
  if (!v46)
  {
    goto LABEL_20;
  }

  v47 = v32;
  v48 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  v49 = v84;
  sub_22FEBF3A4(v34 + v48, v84, &qword_27DAF2150, &qword_22FFB5CA0);
  v50 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  v51 = *(v83 + 48);
  v21 = v79;
  sub_22FEBF3A4(v49, v79, &qword_27DAF2150, &qword_22FFB5CA0);
  sub_22FEBF3A4(v47 + v50, &v21[v51], &qword_27DAF2150, &qword_22FFB5CA0);
  v52 = *(v80 + 48);
  v53 = v81;
  if ((v52)(v21, 1, v81) != 1)
  {
    v54 = v77;
    sub_22FEBF3A4(v21, v77, &qword_27DAF2150, &qword_22FFB5CA0);
    if ((v52)(&v21[v51], 1, v53) != 1)
    {
      v85 = v52;
      v55 = &v21[v51];
      v56 = v75;
      sub_22FF36190(v55, v75, type metadata accessor for LogEntry);
      v57 = _s16CloudAttestation8LogEntryV2eeoiySbAC_ACtFZ_0(v54, v56);
      sub_22FF3728C(v56, type metadata accessor for LogEntry);
      sub_22FEAEA34(v84, &qword_27DAF2150, &qword_22FFB5CA0);
      sub_22FF3728C(v54, type metadata accessor for LogEntry);
      sub_22FEAEA34(v21, &qword_27DAF2150, &qword_22FFB5CA0);
      if (v57)
      {
        goto LABEL_17;
      }

LABEL_20:

      return 0;
    }

    sub_22FEAEA34(v84, &qword_27DAF2150, &qword_22FFB5CA0);
    sub_22FF3728C(v54, type metadata accessor for LogEntry);
    goto LABEL_15;
  }

  sub_22FEAEA34(v49, &qword_27DAF2150, &qword_22FFB5CA0);
  if ((v52)(&v21[v51], 1, v53) != 1)
  {
LABEL_15:
    v36 = &qword_27DAF2158;
    v37 = &unk_22FFB7B80;
    goto LABEL_7;
  }

  v85 = v52;
  sub_22FEAEA34(v21, &qword_27DAF2150, &qword_22FFB5CA0);
LABEL_17:
  v58 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  v59 = v78;
  sub_22FEBF3A4(v34 + v58, v78, &qword_27DAF2150, &qword_22FFB5CA0);
  v60 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  v61 = v53;
  v62 = *(v83 + 48);
  v63 = v76;
  sub_22FEBF3A4(v59, v76, &qword_27DAF2150, &qword_22FFB5CA0);
  v64 = v47 + v60;
  v65 = v62;
  v66 = v63 + v62;
  v67 = v61;
  sub_22FEBF3A4(v64, v66, &qword_27DAF2150, &qword_22FFB5CA0);
  v68 = v61;
  v69 = v85;
  if ((v85)(v63, 1, v68) == 1)
  {

    sub_22FEAEA34(v59, &qword_27DAF2150, &qword_22FFB5CA0);
    if ((v69)(v63 + v65, 1, v67) == 1)
    {
      sub_22FEAEA34(v63, &qword_27DAF2150, &qword_22FFB5CA0);
      return 1;
    }

    goto LABEL_25;
  }

  v71 = v74;
  sub_22FEBF3A4(v63, v74, &qword_27DAF2150, &qword_22FFB5CA0);
  if ((v69)(v63 + v65, 1, v67) == 1)
  {

    sub_22FEAEA34(v78, &qword_27DAF2150, &qword_22FFB5CA0);
    sub_22FF3728C(v71, type metadata accessor for LogEntry);
LABEL_25:
    sub_22FEAEA34(v63, &qword_27DAF2158, &unk_22FFB7B80);
    return 0;
  }

  v72 = v75;
  sub_22FF36190(v63 + v65, v75, type metadata accessor for LogEntry);
  v73 = _s16CloudAttestation8LogEntryV2eeoiySbAC_ACtFZ_0(v71, v72);

  sub_22FF3728C(v72, type metadata accessor for LogEntry);
  sub_22FEAEA34(v78, &qword_27DAF2150, &qword_22FFB5CA0);
  sub_22FF3728C(v71, type metadata accessor for LogEntry);
  sub_22FEAEA34(v63, &qword_27DAF2150, &qword_22FFB5CA0);
  return (v73 & 1) != 0;
}

uint64_t sub_22FF462DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF3608, type metadata accessor for InclusionProof, &protocol conformance descriptor for InclusionProof);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF4637C(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF3410, type metadata accessor for InclusionProof, &protocol conformance descriptor for InclusionProof);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF463E8(uint64_t a1, uint64_t a2)
{
  sub_22FF4BE20(&qword_27DAF3410, type metadata accessor for InclusionProof, &protocol conformance descriptor for InclusionProof);

  return sub_22FFB11A8();
}

uint64_t sub_22FF464C4()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF30F8);
  __swift_project_value_buffer(v0, qword_27DAF30F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "perApplicationTreeEntry";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "topLevelTreeEntry";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF466B0()
{
  type metadata accessor for PatInclusionProof._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  v2 = type metadata accessor for LogEntry(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  result = (v3)(v0 + OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry, 1, 1, v2);
  qword_27DAF3110 = v0;
  return result;
}

uint64_t sub_22FF4676C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  v7 = type metadata accessor for LogEntry(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  v9 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  v8(v1 + OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry, 1, 1, v7);
  v10 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v10, v5, &qword_27DAF2150, &qword_22FFB5CA0);
  swift_beginAccess();
  sub_22FEFF0DC(v5, v1 + v6, &qword_27DAF2150, &qword_22FFB5CA0);
  swift_endAccess();
  v11 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v11, v5, &qword_27DAF2150, &qword_22FFB5CA0);

  swift_beginAccess();
  sub_22FEFF0DC(v5, v1 + v9, &qword_27DAF2150, &qword_22FFB5CA0);
  swift_endAccess();
  return v1;
}

unint64_t sub_22FF46A04()
{
  result = qword_27DAF31F0;
  if (!qword_27DAF31F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF31F0);
  }

  return result;
}

uint64_t sub_22FF46A58()
{
  sub_22FEAEA34(v0 + OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry, &qword_27DAF2150, &qword_22FFB5CA0);
  sub_22FEAEA34(v0 + OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry, &qword_27DAF2150, &qword_22FFB5CA0);

  return swift_deallocClassInstance();
}

uint64_t sub_22FF46B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = *(v7 + v14);
    a5(0);
    swift_allocObject();
    v16 = a6(v17);
    *(v10 + v14) = v16;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t sub_22FF46C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_22FFB1058();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22FF46CC8(a2, a1, a3, a4);
    }

    else if (result == 2)
    {
      sub_22FF46DA4(a2, a1, a3, a4);
    }
  }

  return result;
}

uint64_t sub_22FF46CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LogEntry(0);
  sub_22FF4BE20(&qword_28148F4A8, type metadata accessor for LogEntry, &protocol conformance descriptor for LogEntry);
  sub_22FFB1128();
  return swift_endAccess();
}

uint64_t sub_22FF46DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for LogEntry(0);
  sub_22FF4BE20(&qword_28148F4A8, type metadata accessor for LogEntry, &protocol conformance descriptor for LogEntry);
  sub_22FFB1128();
  return swift_endAccess();
}

uint64_t sub_22FF46EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF46F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22FF46F90(a1, a2, a3, a4);
  if (!v4)
  {
    return sub_22FF471B8(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_22FF46F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for LogEntry(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v12, v7, &qword_27DAF2150, &qword_22FFB5CA0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2150, &qword_22FFB5CA0);
  }

  sub_22FF36190(v7, v11, type metadata accessor for LogEntry);
  sub_22FF4BE20(&qword_28148F4A8, type metadata accessor for LogEntry, &protocol conformance descriptor for LogEntry);
  sub_22FFB1288();
  return sub_22FF3728C(v11, type metadata accessor for LogEntry);
}

uint64_t sub_22FF471B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for LogEntry(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v12, v7, &qword_27DAF2150, &qword_22FFB5CA0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2150, &qword_22FFB5CA0);
  }

  sub_22FF36190(v7, v11, type metadata accessor for LogEntry);
  sub_22FF4BE20(&qword_28148F4A8, type metadata accessor for LogEntry, &protocol conformance descriptor for LogEntry);
  sub_22FFB1288();
  return sub_22FF3728C(v11, type metadata accessor for LogEntry);
}

BOOL sub_22FF47424(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogEntry(0);
  v47 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v42 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2158, &unk_22FFB7B80);
  v7 = MEMORY[0x28223BE20](v6);
  v45 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v39[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v41 = &v39[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v44 = &v39[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v46 = &v39[-v17];
  MEMORY[0x28223BE20](v16);
  v19 = &v39[-v18];
  v20 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v20, v19, &qword_27DAF2150, &qword_22FFB5CA0);
  v21 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  v43 = v6;
  v22 = *(v6 + 48);
  sub_22FEBF3A4(v19, v10, &qword_27DAF2150, &qword_22FFB5CA0);
  v23 = v47;
  sub_22FEBF3A4(a2 + v21, &v10[v22], &qword_27DAF2150, &qword_22FFB5CA0);
  v26 = *(v23 + 48);
  v24 = v23 + 48;
  v25 = v26;
  if (v26(v10, 1, v4) != 1)
  {
    v27 = v46;
    sub_22FEBF3A4(v10, v46, &qword_27DAF2150, &qword_22FFB5CA0);
    if (v25(&v10[v22], 1, v4) != 1)
    {
      v47 = v24;
      v28 = &v10[v22];
      v29 = v42;
      sub_22FF36190(v28, v42, type metadata accessor for LogEntry);

      v40 = _s16CloudAttestation8LogEntryV2eeoiySbAC_ACtFZ_0(v27, v29);
      sub_22FF3728C(v29, type metadata accessor for LogEntry);
      sub_22FEAEA34(v19, &qword_27DAF2150, &qword_22FFB5CA0);
      sub_22FF3728C(v27, type metadata accessor for LogEntry);
      sub_22FEAEA34(v10, &qword_27DAF2150, &qword_22FFB5CA0);
      if (v40)
      {
        goto LABEL_9;
      }

LABEL_7:

      return 0;
    }

    sub_22FEAEA34(v19, &qword_27DAF2150, &qword_22FFB5CA0);
    sub_22FF3728C(v27, type metadata accessor for LogEntry);
LABEL_6:
    sub_22FEAEA34(v10, &qword_27DAF2158, &unk_22FFB7B80);
    goto LABEL_7;
  }

  sub_22FEAEA34(v19, &qword_27DAF2150, &qword_22FFB5CA0);
  if (v25(&v10[v22], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  v47 = v24;
  sub_22FEAEA34(v10, &qword_27DAF2150, &qword_22FFB5CA0);
LABEL_9:
  v30 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  v31 = v44;
  sub_22FEBF3A4(a1 + v30, v44, &qword_27DAF2150, &qword_22FFB5CA0);
  v32 = OBJC_IVAR____TtCV16CloudAttestation17PatInclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__topLevelTreeEntry;
  swift_beginAccess();
  v33 = *(v43 + 48);
  v34 = v45;
  sub_22FEBF3A4(v31, v45, &qword_27DAF2150, &qword_22FFB5CA0);
  sub_22FEBF3A4(a2 + v32, &v34[v33], &qword_27DAF2150, &qword_22FFB5CA0);
  if (v25(v34, 1, v4) == 1)
  {

    sub_22FEAEA34(v31, &qword_27DAF2150, &qword_22FFB5CA0);
    if (v25(&v34[v33], 1, v4) == 1)
    {
      sub_22FEAEA34(v34, &qword_27DAF2150, &qword_22FFB5CA0);
      return 1;
    }

    goto LABEL_14;
  }

  v35 = v41;
  sub_22FEBF3A4(v34, v41, &qword_27DAF2150, &qword_22FFB5CA0);
  if (v25(&v34[v33], 1, v4) == 1)
  {

    sub_22FEAEA34(v31, &qword_27DAF2150, &qword_22FFB5CA0);
    sub_22FF3728C(v35, type metadata accessor for LogEntry);
LABEL_14:
    sub_22FEAEA34(v34, &qword_27DAF2158, &unk_22FFB7B80);
    return 0;
  }

  v37 = v42;
  sub_22FF36190(&v34[v33], v42, type metadata accessor for LogEntry);
  v38 = _s16CloudAttestation8LogEntryV2eeoiySbAC_ACtFZ_0(v35, v37);

  sub_22FF3728C(v37, type metadata accessor for LogEntry);
  sub_22FEAEA34(v31, &qword_27DAF2150, &qword_22FFB5CA0);
  sub_22FF3728C(v35, type metadata accessor for LogEntry);
  sub_22FEAEA34(v34, &qword_27DAF2150, &qword_22FFB5CA0);
  return (v38 & 1) != 0;
}

uint64_t sub_22FF47B60@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, uint64_t a5@<X8>)
{
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v9 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t sub_22FF47C28(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF3600, type metadata accessor for PatInclusionProof, &protocol conformance descriptor for PatInclusionProof);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF47CC8(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF3428, type metadata accessor for PatInclusionProof, &protocol conformance descriptor for PatInclusionProof);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF47D34(uint64_t a1, uint64_t a2)
{
  sub_22FF4BE20(&qword_27DAF3428, type metadata accessor for PatInclusionProof, &protocol conformance descriptor for PatInclusionProof);

  return sub_22FFB11A8();
}

uint64_t ChangeLogNodeV2.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22FFB1058();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22FFB10C8();
    }
  }

  return result;
}

uint64_t ChangeLogNodeV2.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2 || *(v5 + 16) == *(v5 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v7)
  {
    if (v5 == v5 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_22FFB1228();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  type metadata accessor for ChangeLogNodeV2(0);
  return sub_22FFB0F68();
}

uint64_t static ChangeLogNodeV2.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  type metadata accessor for ChangeLogNodeV2(0);
  sub_22FFB0F88();
  sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF480E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF35F8, type metadata accessor for ChangeLogNodeV2, &protocol conformance descriptor for ChangeLogNodeV2);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF48180(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF3440, type metadata accessor for ChangeLogNodeV2, &protocol conformance descriptor for ChangeLogNodeV2);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF481EC(uint64_t a1, uint64_t a2)
{
  sub_22FF4BE20(&qword_27DAF3440, type metadata accessor for ChangeLogNodeV2, &protocol conformance descriptor for ChangeLogNodeV2);

  return sub_22FFB11A8();
}

uint64_t sub_22FF48268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  sub_22FFB0F88();
  sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t PerApplicationTreeNode.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22FFB1058();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_22FF488FC(a1, v5, a2, a3, type metadata accessor for PerApplicationTreeNode);
    }
  }

  return result;
}

uint64_t sub_22FF484EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF35F0, type metadata accessor for PerApplicationTreeNode, &protocol conformance descriptor for PerApplicationTreeNode);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF4858C(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF3458, type metadata accessor for PerApplicationTreeNode, &protocol conformance descriptor for PerApplicationTreeNode);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF485F8(uint64_t a1, uint64_t a2)
{
  sub_22FF4BE20(&qword_27DAF3458, type metadata accessor for PerApplicationTreeNode, &protocol conformance descriptor for PerApplicationTreeNode);

  return sub_22FFB11A8();
}

uint64_t sub_22FF486DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22FFB2D10;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = a3;
  *v13 = a4;
  *(v13 + 8) = a5;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x277D21870];
  v15 = sub_22FFB1298();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return sub_22FFB12A8();
}

uint64_t TopLevelTreeNode.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22FFB1058();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22FF488FC(a1, v5, a2, a3, type metadata accessor for TopLevelTreeNode);
    }
  }

  return result;
}

uint64_t sub_22FF488FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for SignedObject(0);
  sub_22FF4BE20(&qword_2814909E8, type metadata accessor for SignedObject, &protocol conformance descriptor for SignedObject);
  return sub_22FFB1128();
}

uint64_t sub_22FF489E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  result = sub_22FF48A44(v5, a1, a2, a3, a4, a5);
  if (!v6)
  {
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF48A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v17[2] = a6;
  v17[3] = a3;
  v17[5] = a4;
  v17[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = type metadata accessor for SignedObject(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(0);
  sub_22FEBF3A4(a1 + *(v15 + 20), v10, &qword_27DAF2338, &unk_22FFBB620);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_22FEAEA34(v10, &qword_27DAF2338, &unk_22FFBB620);
  }

  sub_22FF36190(v10, v14, type metadata accessor for SignedObject);
  sub_22FF4BE20(&qword_2814909E8, type metadata accessor for SignedObject, &protocol conformance descriptor for SignedObject);
  sub_22FFB1288();
  return sub_22FF3728C(v14, type metadata accessor for SignedObject);
}

uint64_t sub_22FF48CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for SignedObject(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_22FF48DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF35E8, type metadata accessor for TopLevelTreeNode, &protocol conformance descriptor for TopLevelTreeNode);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF48E44(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF3470, type metadata accessor for TopLevelTreeNode, &protocol conformance descriptor for TopLevelTreeNode);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF48EB0(uint64_t a1, uint64_t a2)
{
  sub_22FF4BE20(&qword_27DAF3470, type metadata accessor for TopLevelTreeNode, &protocol conformance descriptor for TopLevelTreeNode);

  return sub_22FFB11A8();
}

uint64_t sub_22FF48F78()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF3160);
  __swift_project_value_buffer(v0, qword_27DAF3160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "vrfPublicKey";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "publicKeyBytes";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "earliestVersion";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t PerApplicationTreeConfigNode.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22FFB1058();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_22FF03C58();
          sub_22FFB1098();
          break;
        case 2:
          sub_22FFB10C8();
          break;
        case 1:
          sub_22FF49290(a1, v5, a2, a3);
          break;
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t sub_22FF49290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PerApplicationTreeConfigNode(0);
  type metadata accessor for VRFPublicKey(0);
  sub_22FF4BE20(&qword_27DAF3398, type metadata accessor for VRFPublicKey, &protocol conformance descriptor for VRFPublicKey);
  return sub_22FFB1128();
}

uint64_t PerApplicationTreeConfigNode.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FF49468(v3, a1, a2, a3);
  if (v4)
  {
    return result;
  }

  v6 = *v3;
  v7 = v3[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_11;
    }

    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
  }

  else
  {
    if (!v8)
    {
      if ((v7 & 0xFF000000000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v9 = v6;
    v10 = v6 >> 32;
  }

  if (v9 != v10)
  {
LABEL_10:
    sub_22FFB1228();
  }

LABEL_11:
  if (v3[2])
  {
    sub_22FF03C58();
    sub_22FFB1208();
  }

  type metadata accessor for PerApplicationTreeConfigNode(0);
  return sub_22FFB0F68();
}

uint64_t sub_22FF49468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31E8, &qword_22FFBB648);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for VRFPublicKey(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PerApplicationTreeConfigNode(0);
  sub_22FEBF3A4(a1 + *(v12 + 28), v7, &qword_27DAF31E8, &qword_22FFBB648);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF31E8, &qword_22FFBB648);
  }

  sub_22FF36190(v7, v11, type metadata accessor for VRFPublicKey);
  sub_22FF4BE20(&qword_27DAF3398, type metadata accessor for VRFPublicKey, &protocol conformance descriptor for VRFPublicKey);
  sub_22FFB1288();
  return sub_22FF3728C(v11, type metadata accessor for VRFPublicKey);
}

uint64_t sub_22FF496D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_22FFB33B0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for VRFPublicKey(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_22FF497B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF35E0, type metadata accessor for PerApplicationTreeConfigNode, &protocol conformance descriptor for PerApplicationTreeConfigNode);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF49854(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF3488, type metadata accessor for PerApplicationTreeConfigNode, &protocol conformance descriptor for PerApplicationTreeConfigNode);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF498C0(uint64_t a1, uint64_t a2)
{
  sub_22FF4BE20(&qword_27DAF3488, type metadata accessor for PerApplicationTreeConfigNode, &protocol conformance descriptor for PerApplicationTreeConfigNode);

  return sub_22FFB11A8();
}

uint64_t sub_22FF4995C()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF3178);
  __swift_project_value_buffer(v0, qword_27DAF3178);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "publicKeyBytes";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "earliestVersion";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t TopLevelTreeConfigNode.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FFB1058();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22FFB10C8();
      }

      else if (result == 3)
      {
        sub_22FF03C58();
        sub_22FFB1098();
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t sub_22FF49C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, void (*a7)(void))
{
  result = *v7;
  v11 = v7[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_11;
    }

    v13 = *(result + 16);
    v14 = *(result + 24);
    goto LABEL_8;
  }

  if (v12)
  {
    v13 = result;
    v14 = result >> 32;
LABEL_8:
    if (v13 == v14)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if ((v11 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v15 = a4;
  result = sub_22FFB1228();
  if (v8)
  {
    return result;
  }

  a4 = v15;
LABEL_11:
  if (!v7[2] || (a4(result), result = sub_22FFB1208(), !v8))
  {
    a7(0);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF49E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF35D8, type metadata accessor for TopLevelTreeConfigNode, &protocol conformance descriptor for TopLevelTreeConfigNode);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF49EC0(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF34A0, type metadata accessor for TopLevelTreeConfigNode, &protocol conformance descriptor for TopLevelTreeConfigNode);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF49F2C(uint64_t a1, uint64_t a2)
{
  sub_22FF4BE20(&qword_27DAF34A0, type metadata accessor for TopLevelTreeConfigNode, &protocol conformance descriptor for TopLevelTreeConfigNode);

  return sub_22FFB11A8();
}

uint64_t sub_22FF49FD0()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF3190);
  __swift_project_value_buffer(v0, qword_27DAF3190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestampMs";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "earliestVersionForNextTree";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t LogClosedNode.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FFB1058();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22FFB1108();
      }

      else if (result == 3)
      {
        sub_22FF03C58();
        sub_22FFB1098();
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t LogClosedNode.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_22FFB1268(), !v4))
  {
    if (!v3[1] || (sub_22FF03C58(), result = sub_22FFB1208(), !v4))
    {
      type metadata accessor for LogClosedNode(0);
      return sub_22FFB0F68();
    }
  }

  return result;
}

uint64_t sub_22FF4A39C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_22FFB1CA8();
  a1(0);
  sub_22FF4BE20(a2, a3, a4);
  sub_22FFB1438();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF4A424@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF4A4A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE20(&qword_27DAF35D0, type metadata accessor for LogClosedNode, &protocol conformance descriptor for LogClosedNode);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF4A544(uint64_t a1)
{
  v2 = sub_22FF4BE20(&qword_27DAF34B8, type metadata accessor for LogClosedNode, &protocol conformance descriptor for LogClosedNode);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF4A5B0(uint64_t a1, uint64_t a2)
{
  sub_22FF4BE20(&qword_27DAF34B8, type metadata accessor for LogClosedNode, &protocol conformance descriptor for LogClosedNode);

  return sub_22FFB11A8();
}

uint64_t _s16CloudAttestation7MapHeadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogHead(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31A8, &qword_22FFBB630);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v28 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3660, &qword_22FFBDB08);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  if (*a1 != *a2)
  {
    goto LABEL_45;
  }

  v15 = v12;
  if (!sub_22FEC3DC8(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)))
  {
    goto LABEL_45;
  }

  v16 = *(a1 + 24);
  v17 = *(a2 + 24);
  if (*(a2 + 32) == 1)
  {
    if (v17 <= 2)
    {
      if (v17)
      {
        if (v17 == 1)
        {
          if (v16 != 1)
          {
            goto LABEL_45;
          }
        }

        else if (v16 != 2)
        {
          goto LABEL_45;
        }
      }

      else if (v16)
      {
        goto LABEL_45;
      }
    }

    else if (v17 > 4)
    {
      if (v17 == 5)
      {
        if (v16 != 5)
        {
          goto LABEL_45;
        }
      }

      else if (v16 != 6)
      {
        goto LABEL_45;
      }
    }

    else if (v17 == 3)
    {
      if (v16 != 3)
      {
        goto LABEL_45;
      }
    }

    else if (v16 != 4)
    {
      goto LABEL_45;
    }
  }

  else if (v16 != v17)
  {
    goto LABEL_45;
  }

  v29 = type metadata accessor for MapHead(0);
  v18 = *(v29 + 52);
  v19 = *(v15 + 48);
  sub_22FEBF3A4(a1 + v18, v14, &qword_27DAF31A8, &qword_22FFBB630);
  v20 = a2 + v18;
  v21 = v19;
  sub_22FEBF3A4(v20, &v14[v19], &qword_27DAF31A8, &qword_22FFBB630);
  v22 = *(v5 + 48);
  if (v22(v14, 1, v4) != 1)
  {
    sub_22FEBF3A4(v14, v10, &qword_27DAF31A8, &qword_22FFBB630);
    if (v22(&v14[v21], 1, v4) != 1)
    {
      sub_22FF36190(&v14[v21], v7, type metadata accessor for LogHead);
      v23 = _s16CloudAttestation7LogHeadV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_22FF3728C(v7, type metadata accessor for LogHead);
      sub_22FF3728C(v10, type metadata accessor for LogHead);
      sub_22FEAEA34(v14, &qword_27DAF31A8, &qword_22FFBB630);
      if ((v23 & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_24;
    }

    sub_22FF3728C(v10, type metadata accessor for LogHead);
LABEL_15:
    sub_22FEAEA34(v14, &qword_27DAF3660, &qword_22FFBDB08);
    goto LABEL_45;
  }

  if (v22(&v14[v21], 1, v4) != 1)
  {
    goto LABEL_15;
  }

  sub_22FEAEA34(v14, &qword_27DAF31A8, &qword_22FFBB630);
LABEL_24:
  if (*(a1 + 40) == *(a2 + 40))
  {
    v24 = *(a1 + 48);
    v25 = *(a2 + 48);
    if (*(a1 + 56))
    {
      v24 = v24 != 0;
    }

    if (*(a2 + 56) == 1)
    {
      if (v25)
      {
        if (v24 != 1)
        {
          goto LABEL_45;
        }
      }

      else if (v24)
      {
        goto LABEL_45;
      }
    }

    else if (v24 != v25)
    {
      goto LABEL_45;
    }

    if (*(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
    {
      sub_22FFB0F88();
      sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v26 = sub_22FFB1478();
      return v26 & 1;
    }
  }

LABEL_45:
  v26 = 0;
  return v26 & 1;
}

uint64_t _s16CloudAttestation7LogHeadV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  if (*a1 != *a2 || a1[1] != *(a2 + 8) || !sub_22FEC3DC8(a1[2], a1[3], *(a2 + 16), *(a2 + 24)) || a1[4] != *(a2 + 32))
  {
    return 0;
  }

  v4 = a1[5];
  v5 = *(a2 + 40);
  if (*(a2 + 48) == 1)
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        if (v4 != 3)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v4 != 4)
        {
          return 0;
        }
      }

      else if (v4 != 5)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = a1[7];
  v7 = *(a2 + 56);
  if (*(a2 + 64) == 1)
  {
    if (v7 <= 2)
    {
      if (v7)
      {
        if (v7 == 1)
        {
          if (v6 != 1)
          {
            return 0;
          }
        }

        else if (v6 != 2)
        {
          return 0;
        }
      }

      else if (v6)
      {
        return 0;
      }
    }

    else if (v7 > 4)
    {
      if (v7 == 5)
      {
        if (v6 != 5)
        {
          return 0;
        }
      }

      else if (v6 != 6)
      {
        return 0;
      }
    }

    else if (v7 == 3)
    {
      if (v6 != 3)
      {
        return 0;
      }
    }

    else if (v6 != 4)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  if (a1[9] == *(a2 + 72) && a1[10] == *(a2 + 80))
  {
    type metadata accessor for LogHead(0);
    sub_22FFB0F88();
    sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22FFB1478() & 1;
  }

  return 0;
}

uint64_t _s16CloudAttestation28PerApplicationTreeConfigNodeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VRFPublicKey(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31E8, &qword_22FFBB648);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3650, &qword_22FFBDAE8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  v30 = type metadata accessor for PerApplicationTreeConfigNode(0);
  v14 = *(v30 + 28);
  v15 = *(v11 + 56);
  v32 = a1;
  sub_22FEBF3A4(a1 + v14, v13, &qword_27DAF31E8, &qword_22FFBB648);
  sub_22FEBF3A4(a2 + v14, &v13[v15], &qword_27DAF31E8, &qword_22FFBB648);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_22FEBF3A4(v13, v9, &qword_27DAF31E8, &qword_22FFBB648);
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_22FF3728C(v9, type metadata accessor for VRFPublicKey);
      goto LABEL_15;
    }

    v22 = v31;
    sub_22FF36190(&v13[v15], v31, type metadata accessor for VRFPublicKey);
    if (sub_22FEC3DC8(*v9, *(v9 + 1), *v22, *(v22 + 8)))
    {
      v23 = *(v9 + 2);
      v24 = *(v22 + 16);
      v25 = 3;
      if (!v23)
      {
        v25 = 0;
      }

      if (v9[24])
      {
        v23 = v25;
      }

      if (*(v22 + 24) == 1)
      {
        if (v24)
        {
          if (v23 != 3)
          {
            goto LABEL_24;
          }
        }

        else if (v23)
        {
          goto LABEL_24;
        }
      }

      else if (v23 != v24)
      {
        goto LABEL_24;
      }

      sub_22FFB0F88();
      sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v28 = sub_22FFB1478();
      sub_22FF3728C(v22, type metadata accessor for VRFPublicKey);
      sub_22FF3728C(v9, type metadata accessor for VRFPublicKey);
      sub_22FEAEA34(v13, &qword_27DAF31E8, &qword_22FFBB648);
      if ((v28 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_4;
    }

LABEL_24:
    sub_22FF3728C(v22, type metadata accessor for VRFPublicKey);
    sub_22FF3728C(v9, type metadata accessor for VRFPublicKey);
    v20 = &qword_27DAF31E8;
    v21 = &qword_22FFBB648;
    goto LABEL_25;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_15:
    v20 = &qword_27DAF3650;
    v21 = &qword_22FFBDAE8;
LABEL_25:
    sub_22FEAEA34(v13, v20, v21);
    goto LABEL_26;
  }

  sub_22FEAEA34(v13, &qword_27DAF31E8, &qword_22FFBB648);
LABEL_4:
  v17 = v32;
  if (sub_22FEC3DC8(*v32, *(v32 + 8), *a2, *(a2 + 8)))
  {
    v18 = *(v17 + 16);
    if (*(v17 + 24) == 1)
    {
      v18 = qword_22FFBDB58[v18];
    }

    v19 = *(a2 + 16);
    if (*(a2 + 24))
    {
      if (v19 <= 1)
      {
        if (v19)
        {
          if (v18 == 1)
          {
            goto LABEL_29;
          }
        }

        else if (!v18)
        {
          goto LABEL_29;
        }
      }

      else if (v19 == 2)
      {
        if (v18 == 2)
        {
          goto LABEL_29;
        }
      }

      else if (v19 == 3)
      {
        if (v18 == 3)
        {
          goto LABEL_29;
        }
      }

      else if (v18 == 999999999)
      {
        goto LABEL_29;
      }
    }

    else if (v18 == v19)
    {
LABEL_29:
      sub_22FFB0F88();
      sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v26 = sub_22FFB1478();
      return v26 & 1;
    }
  }

LABEL_26:
  v26 = 0;
  return v26 & 1;
}

uint64_t _s16CloudAttestation22TopLevelTreeConfigNodeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (!sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  if (*(a1 + 24) == 1)
  {
    v4 = qword_22FFBDB58[v4];
  }

  v5 = *(a2 + 16);
  if (!*(a2 + 24))
  {
LABEL_16:
    if (v4 != v5)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (v4 == 2)
      {
        goto LABEL_17;
      }

      return 0;
    }

    if (v5 == 3)
    {
      if (v4 == 3)
      {
        goto LABEL_17;
      }

      return 0;
    }

    v5 = 999999999;
    goto LABEL_16;
  }

  if (v5)
  {
    if (v4 == 1)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v4)
  {
    return 0;
  }

LABEL_17:
  type metadata accessor for TopLevelTreeConfigNode(0);
  sub_22FFB0F88();
  sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF4B314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v23 = a1;
  v5 = type metadata accessor for SignedObject(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v22 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2648, &unk_22FFBDAF0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  v15 = *(a3(0) + 20);
  v16 = *(v12 + 56);
  sub_22FEBF3A4(v23 + v15, v14, &qword_27DAF2338, &unk_22FFBB620);
  sub_22FEBF3A4(a2 + v15, &v14[v16], &qword_27DAF2338, &unk_22FFBB620);
  v17 = *(v6 + 48);
  if (v17(v14, 1, v5) == 1)
  {
    if (v17(&v14[v16], 1, v5) == 1)
    {
      sub_22FEAEA34(v14, &qword_27DAF2338, &unk_22FFBB620);
LABEL_9:
      sub_22FFB0F88();
      sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_22FFB1478();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  sub_22FEBF3A4(v14, v10, &qword_27DAF2338, &unk_22FFBB620);
  if (v17(&v14[v16], 1, v5) == 1)
  {
    sub_22FF3728C(v10, type metadata accessor for SignedObject);
LABEL_6:
    sub_22FEAEA34(v14, &qword_27DAF2648, &unk_22FFBDAF0);
    goto LABEL_7;
  }

  v19 = v22;
  sub_22FF36190(&v14[v16], v22, type metadata accessor for SignedObject);
  v20 = _s16CloudAttestation12SignedObjectV2eeoiySbAC_ACtFZ_0(v10, v19);
  sub_22FF3728C(v19, type metadata accessor for SignedObject);
  sub_22FF3728C(v10, type metadata accessor for SignedObject);
  sub_22FEAEA34(v14, &qword_27DAF2338, &unk_22FFBB620);
  if (v20)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t _s16CloudAttestation8MapEntryV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for SignedObject(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2648, &unk_22FFBDAF0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for MapEntry(0);
  v14 = *(v23 + 28);
  v15 = *(v11 + 56);
  v25 = a1;
  sub_22FEBF3A4(a1 + v14, v13, &qword_27DAF2338, &unk_22FFBB620);
  sub_22FEBF3A4(a2 + v14, &v13[v15], &qword_27DAF2338, &unk_22FFBB620);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_22FEBF3A4(v13, v9, &qword_27DAF2338, &unk_22FFBB620);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v17 = v24;
      sub_22FF36190(&v13[v15], v24, type metadata accessor for SignedObject);
      v18 = _s16CloudAttestation12SignedObjectV2eeoiySbAC_ACtFZ_0(v9, v17);
      sub_22FF3728C(v17, type metadata accessor for SignedObject);
      sub_22FF3728C(v9, type metadata accessor for SignedObject);
      sub_22FEAEA34(v13, &qword_27DAF2338, &unk_22FFBB620);
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_11:
      v20 = 0;
      return v20 & 1;
    }

    sub_22FF3728C(v9, type metadata accessor for SignedObject);
LABEL_6:
    sub_22FEAEA34(v13, &qword_27DAF2648, &unk_22FFBDAF0);
    goto LABEL_11;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_22FEAEA34(v13, &qword_27DAF2338, &unk_22FFBB620);
LABEL_8:
  v19 = v25;
  if ((sub_22FEE7C00(*v25, *a2) & 1) == 0 || !sub_22FEC3DC8(v19[1], v19[2], *(a2 + 8), *(a2 + 16)))
  {
    goto LABEL_11;
  }

  sub_22FFB0F88();
  sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v20 = sub_22FFB1478();
  return v20 & 1;
}

uint64_t sub_22FF4BA08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {

    v10 = a4(v8, v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_22FFB0F88();
  sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t _s16CloudAttestation13LogClosedNodeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {
    v2 = qword_22FFBDB58[v2];
  }

  v3 = *(a2 + 8);
  if (!*(a2 + 16))
  {
LABEL_16:
    if (v2 != v3)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v2 == 2)
      {
        goto LABEL_17;
      }

      return 0;
    }

    if (v3 == 3)
    {
      if (v2 == 3)
      {
        goto LABEL_17;
      }

      return 0;
    }

    v3 = 999999999;
    goto LABEL_16;
  }

  if (v3)
  {
    if (v2 == 1)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

LABEL_17:
  type metadata accessor for LogClosedNode(0);
  sub_22FFB0F88();
  sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t _s16CloudAttestation12VRFPublicKeyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (!sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  v6 = 3;
  if (!v4)
  {
    v6 = 0;
  }

  if (*(a1 + 24))
  {
    v4 = v6;
  }

  if (*(a2 + 24) == 1)
  {
    if (v5)
    {
      if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  type metadata accessor for VRFPublicKey(0);
  sub_22FFB0F88();
  sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t _s16CloudAttestation10VRFWitnessV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = 3;
  if (!*a1)
  {
    v6 = 0;
  }

  if (*(a1 + 8))
  {
    v4 = v6;
  }

  if (*(a2 + 8) == 1)
  {
    if (v5)
    {
      if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (sub_22FEC3DC8(*(a1 + 16), *(a1 + 24), a2[2], a2[3]) && sub_22FEC3DC8(*(a1 + 32), *(a1 + 40), a2[4], a2[5]))
  {
    type metadata accessor for VRFWitness(0);
    sub_22FFB0F88();
    sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22FFB1478() & 1;
  }

  return 0;
}

uint64_t sub_22FF4BE20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22FF4BE68()
{
  result = qword_28148F388;
  if (!qword_28148F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F388);
  }

  return result;
}

uint64_t _s16CloudAttestation9SignatureV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (!sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !sub_22FEC3DC8(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (*(a1 + 40))
  {
    v4 = v4 != 0;
  }

  if (*(a2 + 40) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  type metadata accessor for Signature(0);
  sub_22FFB0F88();
  sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t _s16CloudAttestation12SignedObjectV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signature(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A48, &qword_22FFB9178);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3668, &unk_22FFBDB10);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (!sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    goto LABEL_8;
  }

  v21 = v7;
  v22 = type metadata accessor for SignedObject(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  sub_22FEBF3A4(a1 + v14, v13, &qword_27DAF2A48, &qword_22FFB9178);
  sub_22FEBF3A4(a2 + v14, &v13[v15], &qword_27DAF2A48, &qword_22FFB9178);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_22FEAEA34(v13, &qword_27DAF2A48, &qword_22FFB9178);
LABEL_11:
      sub_22FFB0F88();
      sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_22FFB1478();
      return v17 & 1;
    }

    goto LABEL_7;
  }

  sub_22FEBF3A4(v13, v10, &qword_27DAF2A48, &qword_22FFB9178);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_22FF3728C(v10, type metadata accessor for Signature);
LABEL_7:
    sub_22FEAEA34(v13, &qword_27DAF3668, &unk_22FFBDB10);
    goto LABEL_8;
  }

  v19 = v21;
  sub_22FF36190(&v13[v15], v21, type metadata accessor for Signature);
  v20 = _s16CloudAttestation9SignatureV2eeoiySbAC_ACtFZ_0(v10, v19);
  sub_22FF3728C(v19, type metadata accessor for Signature);
  sub_22FF3728C(v10, type metadata accessor for Signature);
  sub_22FEAEA34(v13, &qword_27DAF2A48, &qword_22FFB9178);
  if (v20)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = 0;
  return v17 & 1;
}

unint64_t sub_22FF4C33C()
{
  result = qword_28148F5A0;
  if (!qword_28148F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F5A0);
  }

  return result;
}

uint64_t _s16CloudAttestation8LogEntryV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SignedObject(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2648, &unk_22FFBDAF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = *a1;
  v15 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v15 > 2)
    {
      if (v15 == 3)
      {
        if (v14 != 3)
        {
          goto LABEL_31;
        }
      }

      else if (v15 == 4)
      {
        if (v14 != 4)
        {
          goto LABEL_31;
        }
      }

      else if (v14 != 5)
      {
        goto LABEL_31;
      }
    }

    else if (v15)
    {
      if (v15 == 1)
      {
        if (v14 != 1)
        {
          goto LABEL_31;
        }
      }

      else if (v14 != 2)
      {
        goto LABEL_31;
      }
    }

    else if (v14)
    {
      goto LABEL_31;
    }
  }

  else if (v14 != v15)
  {
    goto LABEL_31;
  }

  v16 = type metadata accessor for LogEntry(0);
  v17 = *(v16 + 40);
  v18 = a1;
  v19 = *(v11 + 48);
  v25 = v16;
  v26 = v18;
  sub_22FEBF3A4(v18 + v17, v13, &qword_27DAF2338, &unk_22FFBB620);
  sub_22FEBF3A4(a2 + v17, &v13[v19], &qword_27DAF2338, &unk_22FFBB620);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) != 1)
  {
    sub_22FEBF3A4(v13, v10, &qword_27DAF2338, &unk_22FFBB620);
    if (v20(&v13[v19], 1, v4) == 1)
    {
      sub_22FF3728C(v10, type metadata accessor for SignedObject);
      goto LABEL_17;
    }

    sub_22FF36190(&v13[v19], v7, type metadata accessor for SignedObject);
    v21 = _s16CloudAttestation12SignedObjectV2eeoiySbAC_ACtFZ_0(v10, v7);
    sub_22FF3728C(v7, type metadata accessor for SignedObject);
    sub_22FF3728C(v10, type metadata accessor for SignedObject);
    sub_22FEAEA34(v13, &qword_27DAF2338, &unk_22FFBB620);
    if (v21)
    {
      goto LABEL_19;
    }

LABEL_31:
    v23 = 0;
    return v23 & 1;
  }

  if (v20(&v13[v19], 1, v4) != 1)
  {
LABEL_17:
    sub_22FEAEA34(v13, &qword_27DAF2648, &unk_22FFBDAF0);
    goto LABEL_31;
  }

  sub_22FEAEA34(v13, &qword_27DAF2338, &unk_22FFBB620);
LABEL_19:
  v22 = v26;
  if ((sub_22FEE7C00(v26[2], *(a2 + 16)) & 1) == 0 || !sub_22FEC3DC8(v22[3], v22[4], *(a2 + 24), *(a2 + 32)) || v22[5] != *(a2 + 40) || !sub_22FEDA098(v22[6], *(v22 + 56), *(a2 + 48)))
  {
    goto LABEL_31;
  }

  sub_22FFB0F88();
  sub_22FF4BE20(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v23 = sub_22FFB1478();
  return v23 & 1;
}

unint64_t sub_22FF4C7C8()
{
  result = qword_27DAF3228;
  if (!qword_27DAF3228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3228);
  }

  return result;
}

unint64_t sub_22FF4C820()
{
  result = qword_27DAF3280;
  if (!qword_27DAF3280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3280);
  }

  return result;
}

unint64_t sub_22FF4C878()
{
  result = qword_27DAF3288;
  if (!qword_27DAF3288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3288);
  }

  return result;
}

unint64_t sub_22FF4C900()
{
  result = qword_27DAF32A0;
  if (!qword_27DAF32A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF32A0);
  }

  return result;
}

unint64_t sub_22FF4C958()
{
  result = qword_27DAF32A8;
  if (!qword_27DAF32A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF32A8);
  }

  return result;
}

unint64_t sub_22FF4C9B0()
{
  result = qword_27DAF32B0;
  if (!qword_27DAF32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF32B0);
  }

  return result;
}

unint64_t sub_22FF4CA38()
{
  result = qword_27DAF32C8;
  if (!qword_27DAF32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF32C8);
  }

  return result;
}

unint64_t sub_22FF4CA90()
{
  result = qword_27DAF32D0;
  if (!qword_27DAF32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF32D0);
  }

  return result;
}

unint64_t sub_22FF4CAE8()
{
  result = qword_27DAF32D8;
  if (!qword_27DAF32D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF32D8);
  }

  return result;
}

unint64_t sub_22FF4CB70()
{
  result = qword_27DAF32F0;
  if (!qword_27DAF32F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF32F0);
  }

  return result;
}

unint64_t sub_22FF4CBC8()
{
  result = qword_27DAF32F8;
  if (!qword_27DAF32F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF32F8);
  }

  return result;
}

unint64_t sub_22FF4CC20()
{
  result = qword_27DAF3300;
  if (!qword_27DAF3300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3300);
  }

  return result;
}

unint64_t sub_22FF4CCA8()
{
  result = qword_27DAF3318;
  if (!qword_27DAF3318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3318);
  }

  return result;
}

unint64_t sub_22FF4CD00()
{
  result = qword_28148F598;
  if (!qword_28148F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F598);
  }

  return result;
}

unint64_t sub_22FF4CD58()
{
  result = qword_28148F588;
  if (!qword_28148F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F588);
  }

  return result;
}

unint64_t sub_22FF4CDE0()
{
  result = qword_28148F590;
  if (!qword_28148F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F590);
  }

  return result;
}

unint64_t sub_22FF4CE38()
{
  result = qword_27DAF3330;
  if (!qword_27DAF3330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3330);
  }

  return result;
}

unint64_t sub_22FF4CE90()
{
  result = qword_27DAF3338;
  if (!qword_27DAF3338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3338);
  }

  return result;
}

unint64_t sub_22FF4CF18()
{
  result = qword_27DAF3350;
  if (!qword_27DAF3350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3350);
  }

  return result;
}

unint64_t sub_22FF4CF70()
{
  result = qword_28148F3C0;
  if (!qword_28148F3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F3C0);
  }

  return result;
}

unint64_t sub_22FF4CFC8()
{
  result = qword_28148F3B0;
  if (!qword_28148F3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F3B0);
  }

  return result;
}

unint64_t sub_22FF4D050()
{
  result = qword_28148F3B8;
  if (!qword_28148F3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F3B8);
  }

  return result;
}

unint64_t sub_22FF4D0A8()
{
  result = qword_28148F380;
  if (!qword_28148F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F380);
  }

  return result;
}

unint64_t sub_22FF4D134()
{
  result = qword_28148F378;
  if (!qword_28148F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F378);
  }

  return result;
}

uint64_t sub_22FF4E4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_22FFB0F88();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22FF4E568(uint64_t a1)
{
  sub_22FFB0F88();
  if (v1 <= 0x3F)
  {
    sub_22FF4E840(319, qword_28148F2F8, type metadata accessor for Signature);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22FF4E640(uint64_t a1)
{
  result = sub_22FFB0F88();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22FF4E70C(uint64_t a1)
{
  sub_22FF4E7F0();
  if (v1 <= 0x3F)
  {
    sub_22FFB0F88();
    if (v2 <= 0x3F)
    {
      sub_22FF4E840(319, qword_281490998, type metadata accessor for SignedObject);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22FF4E7F0()
{
  if (!qword_28148F158)
  {
    v0 = sub_22FFB1738();
    if (!v1)
    {
      atomic_store(v0, &qword_28148F158);
    }
  }
}

void sub_22FF4E840(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22FFB1888();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22FF4E8BC(uint64_t a1)
{
  sub_22FFB0F88();
  if (v1 <= 0x3F)
  {
    sub_22FF4E840(319, &qword_27DAF3508, type metadata accessor for LogHead);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FF4E9C4(uint64_t a1)
{
  sub_22FF4E7F0();
  if (v1 <= 0x3F)
  {
    sub_22FFB0F88();
    if (v2 <= 0x3F)
    {
      sub_22FF4E840(319, qword_281490998, type metadata accessor for SignedObject);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_159Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFB0F88();
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

uint64_t __swift_store_extra_inhabitant_index_160Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FFB0F88();
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

uint64_t sub_22FF4EC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_22FFB0F88();
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

uint64_t __swift_get_extra_inhabitant_index_186Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFB0F88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t __swift_store_extra_inhabitant_index_187Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22FFB0F88();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_22FF4EF80(uint64_t a1)
{
  sub_22FFB0F88();
  if (v1 <= 0x3F)
  {
    sub_22FF4E840(319, qword_281490998, type metadata accessor for SignedObject);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FF4F048(uint64_t a1)
{
  sub_22FFB0F88();
  if (v1 <= 0x3F)
  {
    sub_22FF4E840(319, &qword_27DAF3580, type metadata accessor for VRFPublicKey);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_90Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_91Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_22FF4F2E4(uint64_t a1)
{
  sub_22FF4E840(319, &qword_27DAF35B8, type metadata accessor for MapEntry);
  if (v1 <= 0x3F)
  {
    sub_22FF4E840(319, qword_28148F448, type metadata accessor for LogEntry);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_22FF4F3F4(uint64_t a1)
{
  sub_22FF4E840(319, qword_28148F448, type metadata accessor for LogEntry);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t ProvisioningCertificate.fingerprint<A>(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = SecCertificateCopyData(*v3);
  v5 = sub_22FFB07E8();
  v7 = v6;

  sub_22FEB0E54();
  sub_22FFB1378();
  return sub_22FEA55AC(v5, v7);
}

uint64_t ProvisioningCertificate.init<A>(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = sub_22FEC4190(a1, a2, *(*(*(*(a3 + 8) + 8) + 8) + 8));
  v10 = v9;
  v11 = sub_22FFB07B8();
  sub_22FEA55AC(v8, v10);
  v12 = SecCertificateCreateWithData(0, v11);

  if (v12)
  {
    ProvisioningCertificate.init(from:)(v12, v15);
    result = (*(*(a2 - 8) + 8))(a1, a2);
    if (!v4)
    {
      v14 = v15[1];
      *a4 = v15[0];
      a4[1] = v14;
      a4[2] = v15[2];
    }
  }

  else
  {
    type metadata accessor for ProvisioningCertificate.Error(0);
    sub_22FF50A14(&qword_27DAF1EA0, type metadata accessor for ProvisioningCertificate.Error, &protocol conformance descriptor for ProvisioningCertificate.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(*(a2 - 8) + 8))(a1, a2);
  }

  return result;
}

uint64_t ProvisioningCertificate.chassisID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t ProvisioningCertificate.deviceIdentity.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t ProvisioningCertificate.data.getter()
{
  v1 = SecCertificateCopyData(*v0);
  v2 = sub_22FFB07E8();

  return v2;
}

void ProvisioningCertificate.init(from:)(__SecCertificate *a1@<X0>, __SecCertificate **a2@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = sub_22FFB0D38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v44 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = SecCertificateCopyKey(a1);
  if (!v15)
  {
    type metadata accessor for ProvisioningCertificate.Error(0);
    sub_22FF50A14(&qword_27DAF1EA0, type metadata accessor for ProvisioningCertificate.Error, &protocol conformance descriptor for ProvisioningCertificate.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return;
  }

  v45 = v6;
  v46 = v14;
  v48 = v15;
  v49 = 0;
  v16 = qword_28148F890;
  v17 = a1;
  if (v16 != -1)
  {
    swift_once();
  }

  v47 = v5;
  v18 = sub_22FFB0C98();
  __swift_project_value_buffer(v18, qword_28148F898);
  sub_22FFB0C78();
  v19 = sub_22FFB1488();

  v20 = SecCertificateCopyExtensionValue();

  if (!v20)
  {
    goto LABEL_13;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_13;
  }

  v50 = xmmword_22FFB2D00;
  sub_22FFB07D8();

  v21 = *(&v50 + 1);
  if (*(&v50 + 1) >> 60 == 15)
  {
LABEL_13:
    v28 = 0;
    v29 = 0;
    goto LABEL_14;
  }

  v22 = v50;
  sub_22FEA5608(v50, *(&v50 + 1));
  sub_22FF4FFE0(v22, v21, &v50);
  if (v2)
  {

    *&v50 = v2;
    v23 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
    v24 = v47;
    if (swift_dynamicCast())
    {

      v25 = v45;
      v26 = v46;
      (*(v45 + 32))(v46, v12, v24);
      type metadata accessor for ProvisioningCertificate.Error(0);
      sub_22FF50A14(&qword_27DAF1EA0, type metadata accessor for ProvisioningCertificate.Error, &protocol conformance descriptor for ProvisioningCertificate.Error);
      swift_allocError();
      (*(v25 + 16))(v27, v26, v24);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_22FEA56EC(v22, v21);
      (*(v25 + 8))(v26, v24);
    }

    else
    {

      type metadata accessor for ProvisioningCertificate.Error(0);
      sub_22FF50A14(&qword_27DAF1EA0, type metadata accessor for ProvisioningCertificate.Error, &protocol conformance descriptor for ProvisioningCertificate.Error);
      swift_allocError();
      *v42 = v2;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_22FEA56EC(v22, v21);
    }

    return;
  }

  sub_22FEA56EC(v22, v21);
  v28 = *(&v50 + 1);
  v29 = v50;
LABEL_14:
  if (qword_28148F8B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v18, qword_28148F8B8);
  sub_22FFB0C78();
  v30 = sub_22FFB1488();

  v31 = SecCertificateCopyExtensionValue();

  if (!v31)
  {
    goto LABEL_23;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_23;
  }

  v50 = xmmword_22FFB2D00;
  sub_22FFB07D8();

  v32 = *(&v50 + 1);
  if (*(&v50 + 1) >> 60 == 15)
  {
LABEL_23:
    v39 = 0;
    v40 = 0;
LABEL_24:
    v41 = v48;
    *a2 = v17;
    a2[1] = v41;
    a2[2] = v29;
    a2[3] = v28;
    a2[4] = v39;
    a2[5] = v40;
    return;
  }

  v33 = v50;
  sub_22FEA5608(v50, *(&v50 + 1));
  sub_22FF5053C(v33, v32, &v50);
  if (!v2)
  {
    sub_22FEA56EC(v33, v32);
    v40 = *(&v50 + 1);
    v39 = v50;
    goto LABEL_24;
  }

  v44 = v33;
  *&v50 = v2;
  v34 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
  v35 = v47;
  if (swift_dynamicCast())
  {

    v36 = v45;
    (*(v45 + 32))(v46, v9, v35);
    type metadata accessor for ProvisioningCertificate.Error(0);
    sub_22FF50A14(&qword_27DAF1EA0, type metadata accessor for ProvisioningCertificate.Error, &protocol conformance descriptor for ProvisioningCertificate.Error);
    swift_allocError();
    v37 = v46;
    (*(v36 + 16))(v38, v46, v35);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22FEA56EC(v44, v32);
    (*(v36 + 8))(v37, v35);
  }

  else
  {

    type metadata accessor for ProvisioningCertificate.Error(0);
    sub_22FF50A14(&qword_27DAF1EA0, type metadata accessor for ProvisioningCertificate.Error, &protocol conformance descriptor for ProvisioningCertificate.Error);
    swift_allocError();
    *v43 = v2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22FEA56EC(v44, v32);
  }
}

void sub_22FF4FFE0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = a3;
  v38 = sub_22FFB0D38();
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22FFB14F8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_22FFB0BE8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22FFB0C28();
  v36 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  sub_22FF6C960(a1, a2);
  sub_22FFB0DB8();
  v14 = v39;
  sub_22FFB0DD8();
  v15 = v14;
  if (v14)
  {
    v16 = v38;
  }

  else
  {
    (*(v36 + 16))(v11, v13, v8);
    v20 = sub_22FFB0C18();
    sub_22FF960FC(v20, v21, v22, v23);
    v25 = v24;
    v27 = v26;
    sub_22FFB14E8();
    v28 = sub_22FFB14B8();
    v30 = v29;
    sub_22FEA55AC(v25, v27);
    if (v30)
    {
      v31 = *(v36 + 8);
      v31(v11, v8);
      v31(v13, v8);
      v32 = v34;
      *v34 = v28;
      v32[1] = v30;
      return;
    }

    sub_22FF50A14(&qword_27DAF1CA0, MEMORY[0x277D6A9C0], MEMORY[0x277D6A9C8]);
    v16 = v38;
    v15 = swift_allocError();
    sub_22FFB0D28();
    swift_willThrow();
    v33 = *(v36 + 8);
    v33(v11, v8);
    v33(v13, v8);
  }

  v40 = v15;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
  v18 = v37;
  if (swift_dynamicCast())
  {
    (*(v35 + 8))(v18, v16);
    v40 = v15;
    sub_22FF50A14(&qword_27DAF1CA0, MEMORY[0x277D6A9C0], MEMORY[0x277D6A9C8]);
    swift_allocError();
    v19 = v15;
    swift_dynamicCast();
  }

  else
  {
    swift_getErrorValue();
    sub_22FFB1C48();
    sub_22FF50A14(&qword_27DAF1CA0, MEMORY[0x277D6A9C0], MEMORY[0x277D6A9C8]);
    swift_allocError();
    sub_22FFB0D18();
  }

  swift_willThrow();
}

void sub_22FF5053C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = a3;
  v5 = sub_22FFB0D38();
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22FFB0BE8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_22FFB0C28();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  sub_22FF6C960(a1, a2);
  sub_22FFB0DB8();
  v16 = v26;
  sub_22FFB0DD8();
  if (v16)
  {
    v27[0] = v16;
    v18 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
    v19 = v25;
    if (swift_dynamicCast())
    {
      (*(v24 + 8))(v7, v19);
      v27[0] = v16;
      sub_22FF50A14(&qword_27DAF1CA0, MEMORY[0x277D6A9C0], MEMORY[0x277D6A9C8]);
      swift_allocError();
      v20 = v16;
      swift_dynamicCast();
    }

    else
    {
      swift_getErrorValue();
      sub_22FFB1C48();
      sub_22FF50A14(&qword_27DAF1CA0, MEMORY[0x277D6A9C0], MEMORY[0x277D6A9C8]);
      swift_allocError();
      sub_22FFB0D18();
    }

    swift_willThrow();
  }

  else
  {
    v17 = v23;
    (*(v10 + 16))(v13, v15, v9);
    ProvisioningCertificate.DeviceIdentity.init(extensionValue:)(v13, v27);
    (*(v10 + 8))(v15, v9);
    v21 = v27[1];
    *v17 = v27[0];
    v17[1] = v21;
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22FF50970(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22FF509B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22FF50A14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ProvisioningCertificate.ChassisID.init<A>(extensionValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v42 = a4;
  v47 = sub_22FFB0D38();
  v44 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22FFB14F8();
  MEMORY[0x28223BE20](v7 - 8);
  v41[1] = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FFB0BE8();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v11 = *(a2 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22FFB0C28();
  v43 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v45 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v41 - v17;
  v49 = v11;
  v50 = a1;
  (*(v11 + 16))(v13, a1, a2);
  v51 = a2;
  sub_22FFB18E8();
  sub_22FFB0DB8();
  v19 = v48;
  sub_22FFB0DD8();
  if (v19)
  {
    v20 = v19;
    v21 = v47;
  }

  else
  {
    v26 = v42;
    v27 = v43;
    (*(v43 + 16))(v45, v18, v14);
    v28 = sub_22FFB0C18();
    sub_22FF960FC(v28, v29, v30, v31);
    v33 = v32;
    v35 = v34;
    sub_22FFB14E8();
    v36 = sub_22FFB14B8();
    v38 = v37;
    sub_22FEA55AC(v33, v35);
    if (v38)
    {
      (*(v49 + 8))(v50, v51);
      v39 = *(v27 + 8);
      v39(v45, v14);
      result = (v39)(v18, v14);
      *v26 = v36;
      v26[1] = v38;
      return result;
    }

    sub_22FF512D0();
    v21 = v47;
    v20 = swift_allocError();
    sub_22FFB0D28();
    swift_willThrow();
    v40 = *(v27 + 8);
    v40(v45, v14);
    v40(v18, v14);
  }

  v52 = v20;
  v22 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
  v23 = v46;
  if (swift_dynamicCast())
  {
    (*(v44 + 8))(v23, v21);
    v52 = v20;
    sub_22FF512D0();
    swift_allocError();
    v24 = v20;
    swift_dynamicCast();
  }

  else
  {
    swift_getErrorValue();
    sub_22FFB1C48();
    sub_22FF512D0();
    swift_allocError();
    sub_22FFB0D18();
  }

  swift_willThrow();

  return (*(v49 + 8))(v50, v51);
}

uint64_t sub_22FF50FF8()
{
  v0 = sub_22FFB0C98();
  __swift_allocate_value_buffer(v0, qword_28148F898);
  __swift_project_value_buffer(v0, qword_28148F898);
  return sub_22FFB0C88();
}

uint64_t static ProvisioningCertificate.ChassisID.objectIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28148F890 != -1)
  {
    swift_once();
  }

  v2 = sub_22FFB0C98();
  v3 = __swift_project_value_buffer(v2, qword_28148F898);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ProvisioningCertificate.ChassisID.string.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ProvisioningCertificate.ChassisID.init(extensionValue:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22FFB14F8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_22FFB0C18();
  sub_22FF960FC(v5, v6, v7, v8);
  v10 = v9;
  v12 = v11;
  sub_22FFB14E8();
  v13 = sub_22FFB14B8();
  v15 = v14;
  sub_22FEA55AC(v10, v12);
  if (v15)
  {
    v16 = sub_22FFB0C28();
    result = (*(*(v16 - 8) + 8))(a1, v16);
    *a2 = v13;
    a2[1] = v15;
  }

  else
  {
    sub_22FFB0D38();
    sub_22FF512D0();
    swift_allocError();
    sub_22FFB0D28();
    swift_willThrow();
    v18 = sub_22FFB0C28();
    return (*(*(v18 - 8) + 8))(a1, v18);
  }

  return result;
}

unint64_t sub_22FF512D0()
{
  result = qword_27DAF1CA0;
  if (!qword_27DAF1CA0)
  {
    sub_22FFB0D38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1CA0);
  }

  return result;
}

uint64_t static ProvisioningCertificate.ChassisID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22FFB1BC8();
  }
}

uint64_t ProvisioningCertificate.ChassisID.hashValue.getter()
{
  sub_22FFB1CA8();
  sub_22FFB1548();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF513AC()
{
  sub_22FFB1CA8();
  sub_22FFB1548();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF51400()
{
  sub_22FFB1CA8();
  sub_22FFB1548();
  return sub_22FFB1CF8();
}

unint64_t sub_22FF5144C()
{
  result = qword_27DAF3670;
  if (!qword_27DAF3670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3670);
  }

  return result;
}

uint64_t sub_22FF514A0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22FFB1BC8();
  }
}

uint64_t sub_22FF514D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22FF51518(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ProvisioningCertificate.DeviceIdentity.init<A>(extensionValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v28 = a4;
  v31 = sub_22FFB0D38();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22FFB0BE8();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22FFB0C28();
  v27 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  v33 = v9;
  v34 = a1;
  (*(v9 + 16))(v11, a1, a2);
  v35 = a2;
  sub_22FFB18E8();
  sub_22FFB0DB8();
  v18 = v32;
  sub_22FFB0DD8();
  if (v18)
  {
    v36[0] = v18;
    v21 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
    v22 = v30;
    v23 = v31;
    if (swift_dynamicCast())
    {
      (*(v29 + 8))(v22, v23);
      v36[0] = v18;
      sub_22FF512D0();
      swift_allocError();
      v24 = v18;
      swift_dynamicCast();
    }

    else
    {
      swift_getErrorValue();
      sub_22FFB1C48();
      sub_22FF512D0();
      swift_allocError();
      sub_22FFB0D18();
    }

    swift_willThrow();

    return (*(v33 + 8))(v34, v35);
  }

  else
  {
    v20 = v27;
    v19 = v28;
    (*(v27 + 16))(v15, v17, v12);
    ProvisioningCertificate.DeviceIdentity.init(extensionValue:)(v15, v36);
    (*(v33 + 8))(v34, v35);
    result = (*(v20 + 8))(v17, v12);
    v26 = v36[1];
    *v19 = v36[0];
    v19[1] = v26;
  }

  return result;
}

uint64_t sub_22FF519F8()
{
  v0 = sub_22FFB0C98();
  __swift_allocate_value_buffer(v0, qword_28148F8B8);
  __swift_project_value_buffer(v0, qword_28148F8B8);
  return sub_22FFB0C88();
}

uint64_t static ProvisioningCertificate.DeviceIdentity.objectIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28148F8B0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FFB0C98();
  v3 = __swift_project_value_buffer(v2, qword_28148F8B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ProvisioningCertificate.DeviceIdentity.identity.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ProvisioningCertificate.DeviceIdentity.init(extensionValue:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v56 = a2;
  v63 = sub_22FFB0D38();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22FFB14F8();
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22FFB0C28();
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x28223BE20](v8);
  v58 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22FFB0CC8();
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CD8, &qword_22FFB43D0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v54 - v20;
  v64 = a1;
  sub_22FFB0C18();
  sub_22FF52248();
  sub_22FFB0D98();
  if (v2)
  {
    v22 = v66;
    v23 = v63;
  }

  else
  {
    v55 = v19;
    v24 = v21;
    v25 = v59;
    v26 = v60;
    v27 = v67;
    if (v67[2] && (v28 = sub_22FFA6338(2), (v29 & 1) != 0))
    {
      (*(v25 + 2))(v24, v27[7] + *(v25 + 9) * v28, v26);
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    (*(v25 + 7))(v24, v30, 1, v26);
    v31 = v55;
    sub_22FF52F38(v24, v55);
    if ((*(v25 + 6))(v31, 1, v26) == 1)
    {
      sub_22FEAEA34(v24, &qword_27DAF1CD8, &qword_22FFB43D0);
    }

    else
    {
      (*(v25 + 4))(v15, v31, v26);
      (*(v25 + 2))(v13, v15, v26);
      v36 = v58;
      v37 = v66;
      sub_22FFB0DA8();
      v38 = sub_22FFB0C18();
      v39 = v37;
      v40 = v38;
      v42 = v41;
      v59 = v15;
      v60 = v24;
      v43 = v25;
      v45 = v44;
      v46 = v36;
      v48 = v47;
      v49 = *(v65 + 8);
      v49(v46, v39);
      v67 = v40;
      v68 = v42;
      v69 = v45;
      v70 = v48;
      sub_22FFB14E8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CA8, &qword_22FFC0150);
      sub_22FEC734C();
      v50 = sub_22FFB14C8();
      v52 = v51;
      swift_unknownObjectRelease();
      (*(v43 + 1))(v59, v26);
      sub_22FEAEA34(v60, &qword_27DAF1CD8, &qword_22FFB43D0);
      if (v52)
      {
        result = (v49)(v64, v66);
        v53 = v56;
        *v56 = v50;
        v53[1] = v52;
        return result;
      }
    }

    sub_22FF512D0();
    v23 = v63;
    v3 = swift_allocError();
    sub_22FFB0D18();
    swift_willThrow();
    v22 = v66;
  }

  v67 = v3;
  v32 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
  v33 = v62;
  if (swift_dynamicCast())
  {
    (*(v61 + 8))(v33, v23);
    v67 = v3;
    sub_22FF512D0();
    swift_allocError();
    v34 = v3;
    swift_dynamicCast();
  }

  else
  {
    swift_getErrorValue();
    sub_22FFB1C48();
    sub_22FF512D0();
    swift_allocError();
    sub_22FFB0D18();
  }

  swift_willThrow();

  return (*(v65 + 8))(v64, v22);
}

unint64_t sub_22FF52248()
{
  result = qword_28148F8D0;
  if (!qword_28148F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F8D0);
  }

  return result;
}

uint64_t ProvisioningCertificate.DeviceIdentity.Definition.properties.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

unint64_t ProvisioningCertificate.DeviceIdentity.Definition.init()@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22FFA7B9C(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t ProvisioningCertificate.DeviceIdentity.Definition.init(derEncoded:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  v4 = sub_22FFB0BE8();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22FFB0D08();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v28 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = sub_22FFB0C28();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22FFA7B9C(MEMORY[0x277D84F90]);
  (*(v8 + 16))(v12, a1, v7);
  sub_22FFB0DE8();
  if (v2)
  {
    (*(v8 + 8))(a1, v7);
  }

  else
  {
    v23 = v7;
    v24 = v14;
    v17 = v27;
    sub_22FFB0C18();
    sub_22FFB0E98();
    swift_unknownObjectRelease();
    v18 = v6;
    v19 = _s16CloudAttestation7ReleaseV17defaultIdentifier17SwiftASN1Internal0gE0VvgZ_0();
    MEMORY[0x28223BE20](v19);
    *(&v23 - 2) = &v29;
    sub_22FFB0EA8();
    v21 = *(v8 + 8);
    v22 = v23;
    v21(a1, v23);
    (*(v26 + 8))(v18, v17);
    v21(v28, v22);
    result = (*(v24 + 8))(v16, v13);
    *v25 = v29;
  }

  return result;
}

uint64_t sub_22FF5271C(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CD8, &qword_22FFB43D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - v4;
  v55 = sub_22FFB0C58();
  v51 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_22FFB0CE8();
  v8 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_22FFB0C68();
  v45 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22FFB0BE8();
  v48 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CC8, &qword_22FFBEEA0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v53 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - v16;
  v18 = sub_22FFB0D08();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v59 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  sub_22FFB0C48();
  v21 = v19;
  v22 = *(v19 + 48);
  if (v22(v17, 1, v18) == 1)
  {
    return sub_22FEAEA34(v17, &qword_27DAF1CC8, &qword_22FFBEEA0);
  }

  v40 = v22;
  v43 = v5;
  v25 = *(v21 + 32);
  v24 = v21 + 32;
  ++v48;
  v49 = v25;
  v47 = (v8 + 88);
  v46 = *MEMORY[0x277D6A9A8];
  v38 = v8;
  v41 = (v45 + 4);
  v42 = (v8 + 96);
  v44 = (v51 + 1);
  ++v45;
  v50 = v18;
  v51 = (v24 - 24);
  v26 = v59;
  v39 = v24;
  while (1)
  {
    v49(v26, v17, v18);
    v27 = v56;
    sub_22FFB0CD8();
    v28 = sub_22FFB0BD8();
    (*v48)(v27, v57);
    sub_22FFB0CF8();
    v29 = v58;
    v30 = (*v47)(v10, v58);
    if (v30 != v46)
    {
      (*(v38 + 8))(v10, v29);
      sub_22FFB0D38();
      sub_22FF512D0();
      swift_allocError();
      sub_22FFB0D18();
      swift_willThrow();
LABEL_11:
      v18 = v50;
      return (*v51)(v59, v18);
    }

    (*v42)(v10, v29);
    (*v41)(v60, v10, v61);
    sub_22FFB0C38();
    v31 = sub_22FFB0CC8();
    v32 = v43;
    v33 = v62;
    sub_22FFB0D88();
    v62 = v33;
    if (v33)
    {
      (*v44)(v7, v55);
      (*v45)(v60, v61);
      goto LABEL_11;
    }

    (*(*(v31 - 8) + 56))(v32, 0, 1, v31);
    sub_22FECBE04(v32, v28);
    v34 = v53;
    sub_22FFB0C48();
    v18 = v50;
    v35 = v40;
    v36 = v40(v34, 1, v50);
    sub_22FEAEA34(v34, &qword_27DAF1CC8, &qword_22FFBEEA0);
    if (v36 != 1)
    {
      break;
    }

    (*v44)(v7, v55);
    (*v45)(v60, v61);
    v26 = v59;
    (*v51)(v59, v18);
    sub_22FFB0C48();
    if (v35(v17, 1, v18) == 1)
    {
      return sub_22FEAEA34(v17, &qword_27DAF1CC8, &qword_22FFBEEA0);
    }
  }

  sub_22FFB0D38();
  sub_22FF512D0();
  swift_allocError();
  sub_22FFB0D18();
  swift_willThrow();
  (*v44)(v7, v55);
  (*v45)(v60, v61);
  return (*v51)(v59, v18);
}

uint64_t sub_22FF52F38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CD8, &qword_22FFB43D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ProvisioningCertificate.Error(uint64_t a1)
{
  result = qword_27DAF3678;
  if (!qword_27DAF3678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22FF53030(uint64_t a1)
{
  result = sub_22FFB0D38();
  if (v2 <= 0x3F)
  {
    result = sub_22FED85D4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t SEP.Attestation.identity.getter()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5[0] = 0;
  v4[0] = 0;
  v4[3] = v5;
  v4[4] = v4;
  return sub_22FED55F8(v1, v2, sub_22FEB341C);
}

unint64_t SEP.Attestation.boardID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 62;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v4 = sub_22FF55E14(*(v1 + 16));
      v5 = HIDWORD(v4) & 1;
    }

    else
    {
      uint64 = aks_attest_context_get_uint64();
      LODWORD(v4) = 0;
      LOBYTE(v5) = uint64 != 0;
      if (!uint64)
      {
        LODWORD(v4) = 0;
      }
    }
  }

  else if (v2)
  {
    if (v1 > v1 >> 32)
    {
      __break(1u);
      __break(1u);
    }

    v4 = sub_22FF55E14(v1);
    v5 = HIDWORD(v4) & 1;
  }

  else
  {
    v3 = aks_attest_context_get_uint64();
    LODWORD(v4) = 0;
    LOBYTE(v5) = v3 != 0;
    if (!v3)
    {
      LODWORD(v4) = 0;
    }
  }

  return v4 | (v5 << 32);
}

uint64_t SEP.Attestation.nonce.getter()
{

  return sub_22FF545A8(sub_22FF55EEC);
}

uint64_t SEP.Attestation.osType.getter()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5[0] = 0;
  v4[0] = 0;
  v4[3] = v5;
  v4[4] = v4;
  return sub_22FED55F8(v1, v2, sub_22FED545C);
}

uint64_t SEP.Attestation.sealDataA.getter()
{

  return sub_22FF53AE0(sub_22FF55F0C);
}

uint64_t SEP.Attestation.sealedHash(at:)(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  memset(v5, 0, 86);
  v6 = a1;
  v7 = v5;
  return sub_22FED55F8(v3, v2, sub_22FED86EC);
}

uint64_t SEP.Attestation.restrictedExecutionMode.getter()
{

  return sub_22FF535A8(14);
}

uint64_t SEP.Attestation.ephemeralDataMode.getter()
{

  return sub_22FF535A8(16);
}

uint64_t sub_22FF535A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_8;
    }

    v6 = *(v4 + 16);
    return sub_22FF55D44(v6, v3 & 0x3FFFFFFFFFFFFFFFLL, a1);
  }

  if (v5)
  {
    v6 = v4;
    if (v4 > v4 >> 32)
    {
      __break(1u);
    }

    return sub_22FF55D44(v6, v3 & 0x3FFFFFFFFFFFFFFFLL, a1);
  }

LABEL_8:
  if (aks_attest_context_get_uint64())
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t SEP.Attestation.developerMode.getter()
{

  return sub_22FF535A8(15);
}

uint64_t SEP.Attestation.sealDataB.getter()
{

  return sub_22FF53AE0(sub_22FF55F3C);
}

uint64_t SEP.Attestation.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v11 = sub_22FF55750(*MEMORY[0x277CEE028]);
  *(&v11 + 1) = v6;
  sub_22FF55368(&v11, 0);
  v12 = v11;
  sub_22FEA5608(a1, a2);
  v7 = sub_22FF558A4(&v12, a1, a2);
  result = sub_22FEA55AC(a1, a2);
  if (v7)
  {
    sub_22FF55FA4();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    sub_22FEA55AC(a1, a2);
    return sub_22FEA55AC(v12, *(&v12 + 1));
  }

  else
  {
    v10 = v12;
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = v10;
  }

  return result;
}

void *SEP.Attestation.init(from:signer:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_22FEA5608(a1, a2);
  SEP.Attestation.init(from:)(a1, a2, v20);
  if (v4)
  {

    v9 = a1;
    v10 = a2;
    return sub_22FEA55AC(v9, v10);
  }

  v21 = v20[0];
  v22 = v20[1];
  *&v20[0] = 0;
  result = SecKeyCopyExternalRepresentation(a3, v20);
  if (result)
  {
    v12 = result;
    v13 = sub_22FFB07E8();
    v15 = v14;

    sub_22FF54D1C(v13, v15, &v21);
    sub_22FEA55AC(v13, v15);

    result = sub_22FEA55AC(a1, a2);
    v16 = v22;
    *a4 = v21;
    a4[1] = v16;
    return result;
  }

  v17 = *&v20[0];
  if (*&v20[0])
  {
    type metadata accessor for CFError(0);
    sub_22FF55FF8();
    swift_allocError();
    *v18 = v17;
    swift_willThrow();

    sub_22FEA55AC(a1, a2);
    v19 = v22;
    sub_22FEA55AC(v21, *(&v21 + 1));
    v10 = v19 >> 64;
    v9 = v19;
    return sub_22FEA55AC(v9, v10);
  }

  __break(1u);
  return result;
}

uint64_t SEP.Attestation.sealData.getter()
{

  return sub_22FF53AE0(sub_22FF56050);
}

uint64_t sub_22FF53AE0(uint64_t (*a1)(void *))
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v10[0] = 0;
  v6[0] = 0;
  v6[3] = v10;
  v6[4] = v6;
  v7 = *v1;
  v8 = v3;
  v9 = v4;
  return sub_22FED55F8(v3, v4, a1);
}

uint64_t sub_22FF53B64()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05A50);
  __swift_project_value_buffer(v0, qword_27DB05A50);
  return sub_22FFB12E8();
}

uint64_t SEP.Attestation.data.getter()
{
  v1 = *v0;
  sub_22FEA5608(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_22FF53C1C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _DWORD *a4@<X8>)
{
  if (!result)
  {
LABEL_21:
    __break(1u);
  }

  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_16;
    }

    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    v8 = sub_22FFB0588();
    if (v8)
    {
      v9 = sub_22FFB05B8();
      if (__OFSUB__(v6, v9))
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v8 += v6 - v9;
    }

    if (__OFSUB__(v7, v6))
    {
      goto LABEL_18;
    }

    sub_22FFB05A8();
    if (v8)
    {
LABEL_16:
      v15 = aks_attest_context_init();
      *a4 = v15;
      return v15;
    }

    __break(1u);
  }

  else if (!v5)
  {
    goto LABEL_16;
  }

  v10 = a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = sub_22FFB0588();
  if (!v11)
  {
    v15 = sub_22FFB05A8();
    goto LABEL_23;
  }

  v12 = v11;
  v13 = sub_22FFB05B8();
  if (__OFSUB__(v10, v13))
  {
    goto LABEL_19;
  }

  v14 = v10 - v13 + v12;
  v15 = sub_22FFB05A8();
  if (v14)
  {
    goto LABEL_16;
  }

LABEL_23:
  __break(1u);
  return v15;
}

double SEP.Attestation.init<A>(from:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = sub_22FEC4190(a1, a2, *(*(*(*(a3 + 8) + 8) + 8) + 8));
  SEP.Attestation.init(from:)(v8, v9, v12);
  (*(*(a2 - 8) + 8))(a1, a2);
  if (!v4)
  {
    result = *v12;
    v11 = v12[1];
    *a4 = v12[0];
    a4[1] = v11;
  }

  return result;
}

void sub_22FF53E94(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (aks_attest_context_verify())
    {
      sub_22FF55FA4();
      swift_allocError();
      *v3 = 3;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

double SEP.Attestation.init<A>(from:signer:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v10 = sub_22FEC4190(a1, a3, *(*(*(*(a4 + 8) + 8) + 8) + 8));
  SEP.Attestation.init(from:signer:)(v10, v11, a2, v14);
  (*(*(a3 - 8) + 8))(a1, a3);
  if (!v5)
  {
    result = *v14;
    v13 = v14[1];
    *a5 = v14[0];
    a5[1] = v13;
  }

  return result;
}

uint64_t sub_22FF53FB0@<X0>(uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  v23 = sub_22FFB0948();
  v24 = v5;
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = v9;
  v29 = v10;
  v30 = v11;
  v31 = v12;
  if (aks_attest_context_get_sealed_hash())
  {
    v13 = type metadata accessor for SEP.SealedHash(0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  else
  {
    v15 = *(a2 + 54);
    v22[0] = *(a2 + 38);
    v22[1] = v15;
    v22[2] = *(a2 + 70);
    v16 = sub_22FF56430(v22, *(a2 + 37));
    v18 = v17;
    v19 = *(a2 + 16);
    v20 = type metadata accessor for SEP.SealedHash(0);
    v21 = &a3[*(v20 + 20)];
    *v21 = v16;
    v21[1] = v18;
    type metadata accessor for SEP.SealedHash.Value(0);
    swift_storeEnumTagMultiPayload();
    *a3 = v19;
    return (*(*(v20 - 8) + 56))(a3, 0, 1, v20);
  }
}

_BYTE *sub_22FF542BC@<X0>(uint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X5>, unint64_t a5@<X6>, void *a7@<X8>, uint64_t (*a8)(void *))
{
  result = aks_attest_context_get();
  if (result || (result = *a2) == 0)
  {
    *a7 = 0;
    a7[1] = 0;
    a7[2] = 0x3000000000000000;
  }

  else
  {
    v14 = sub_22FF56430(result, *a3);
    v16 = v15;
    MEMORY[0x28223BE20](v14);
    sub_22FED55F8(a4, a5, a8);
    return SEP.SealData.init(for:data:)(v14, v16, a7);
  }

  return result;
}

_BYTE *sub_22FF543F8@<X0>(uint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_22FFB14F8();
  MEMORY[0x28223BE20](v7 - 8);
  result = aks_attest_context_get();
  if (!result)
  {
    result = *a2;
    if (*a2)
    {
      v10 = sub_22FF56430(result, *a3);
      v12 = v11;
      sub_22FFB14E8();
      v13 = sub_22FFB14B8();
      if (v14)
      {
        SEP.Identity.init(string:)(v13, v14, &v15);
        result = sub_22FEA55AC(v10, v12);
        v9 = v16;
        if (v16 != 2)
        {
          *a4 = v15;
          goto LABEL_3;
        }
      }

      else
      {
        result = sub_22FEA55AC(v10, v12);
      }
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  v9 = 2;
LABEL_3:
  *(a4 + 16) = v9;
  return result;
}

uint64_t SEP.Attestation.rawPublicKeyData.getter()
{

  return sub_22FF545A8(sub_22FF56080);
}

uint64_t sub_22FF545A8(uint64_t (*a1)(void *))
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v7[0] = 0;
  v6[0] = 0;
  v6[3] = v7;
  v6[4] = v6;
  sub_22FED55F8(v3, v4, a1);
  return v6[5];
}

_BYTE *sub_22FF54628@<X0>(uint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t *a5@<X8>)
{
  if (aks_attest_context_get())
  {
    result = 0;
    v9 = 0xF000000000000000;
LABEL_5:
    *a5 = result;
    a5[1] = v9;
    return result;
  }

  result = *a2;
  if (*a2)
  {
    result = sub_22FF56430(result, *a3);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t SEP.Attestation.cryptexLockdown.getter()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F08, &qword_22FFB4B00);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2];
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (qword_281490280 != -1)
  {
    swift_once();
  }

  v6 = sub_22FFB0958();
  v7 = __swift_project_value_buffer(v6, qword_281491418);
  memset(v12, 0, sizeof(v12));
  *&v11[-16] = MEMORY[0x28223BE20](v7);
  *&v11[-8] = v12;
  sub_22FED55F8(v5, v4, sub_22FF56508);
  v8 = type metadata accessor for SEP.SealedHash(0);
  if ((*(*(v8 - 8) + 48))(v3, 1, v8) == 1)
  {
    sub_22FEAEA34(v3, &qword_27DAF1F08, &qword_22FFB4B00);
    return 2;
  }

  else
  {
    v10 = *v3;
    sub_22FF560A0(v3);
    return (v10 >> 2) & 1;
  }
}

uint64_t SEP.Attestation.publicKeyData.getter@<X0>(uint64_t a1@<X8>)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3690, &qword_22FFBDE20);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26[-1] - v7;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v29[0] = 0;
  v26[0] = 0;
  v26[3] = v29;
  v26[4] = v26;
  result = sub_22FED55F8(v9, v10, sub_22FF56520);
  v12 = v28;
  if (v28 >> 60 == 15)
  {
    goto LABEL_16;
  }

  v13 = v27;
  v14 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    if (v14 != 2 || *(v27 + 16) == *(v27 + 24))
    {
      goto LABEL_15;
    }
  }

  else if (v14)
  {
    if (v27 == v27 >> 32)
    {
LABEL_15:
      result = sub_22FEA56EC(v27, v28);
LABEL_16:
      *a1 = xmmword_22FFBDE10;
      return result;
    }
  }

  else if ((v28 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

  sub_22FF54FA4(v9, v10, v8);
  v15 = sub_22FFB09C8();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    goto LABEL_9;
  }

  sub_22FF560FC(v8, v6);
  v21 = (*(v16 + 88))(v6, v15);
  if (v21 == *MEMORY[0x277CEDFE8])
  {
    *a1 = v13;
    *(a1 + 8) = v12 | 0x2000000000000000;
    return sub_22FEAEA34(v8, &qword_27DAF3690, &qword_22FFBDE20);
  }

  if (v21 != *MEMORY[0x277CEDFF0] && v21 != *MEMORY[0x277CEE000] && v21 != *MEMORY[0x277CEDFF8] && v21 != *MEMORY[0x277CEE008])
  {
    (*(v16 + 8))(v6, v15);
LABEL_9:
    if (qword_27DAF1478 != -1)
    {
      swift_once();
    }

    v17 = sub_22FFB12F8();
    __swift_project_value_buffer(v17, qword_27DB05A50);
    v18 = sub_22FFB12D8();
    v19 = sub_22FFB1828();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22FE99000, v18, v19, "Unsupported public key type", v20, 2u);
      MEMORY[0x23190EFF0](v20, -1, -1);
    }

    sub_22FEA56EC(v13, v12);

    *a1 = xmmword_22FFBDE10;
    return sub_22FEAEA34(v8, &qword_27DAF3690, &qword_22FFBDE20);
  }

  result = sub_22FEAEA34(v8, &qword_27DAF3690, &qword_22FFBDE20);
  *a1 = v13;
  *(a1 + 8) = v12;
  return result;
}

void *sub_22FF54C44@<X0>(void *a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  result = aks_attest_context_get();
  if (!result && *a2 && *a3 == 1)
  {
    result = sub_22FF54CC8(**a2, &v9);
    v8 = v9;
  }

  else
  {
    v8 = 8;
  }

  *a4 = v8;
  return result;
}

uint64_t sub_22FF54CC8@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result & 0xF8) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_22FF54D1C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = *a3;
      v6 = a3[1];
      v7 = a3[2];
      v8 = a3[3];
      MEMORY[0x28223BE20](a1);
      sub_22FEA5608(v5, v6);
      sub_22FEA5608(v7, v8);
      sub_22FED55F8(v7, v8, sub_22FF564E0);
      sub_22FEA55AC(v5, v6);
      return sub_22FEA55AC(v7, v8);
    }

    v13 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    v11 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    a1 = a1;
    v12 = v13;
    return sub_22FF5512C(a1, v12, v11, a3);
  }

  if (v4 == 2)
  {
    v10 = *(a1 + 24);
    v11 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    a1 = *(a1 + 16);
    v12 = v10;
    return sub_22FF5512C(a1, v12, v11, a3);
  }

  v14 = *a3;
  v15 = a3[1];
  v16 = a3[2];
  v17 = a3[3];
  MEMORY[0x28223BE20](a1);
  sub_22FEA5608(v14, v15);
  sub_22FEA5608(v16, v17);
  sub_22FED55F8(v16, v17, sub_22FF56538);
  sub_22FEA55AC(v14, v15);
  return sub_22FEA55AC(v16, v17);
}

uint64_t sub_22FF54FA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = a3;
      goto LABEL_9;
    }

    v5 = a1;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_22FF5525C(v5, a3);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    return sub_22FF5525C(v5, a3);
  }

  v4 = a3;
LABEL_9:
  if (!aks_attest_context_get_uint64())
  {
    return sub_22FFB09B8();
  }

  v7 = sub_22FFB09C8();
  return (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
}

uint64_t sub_22FF5512C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = sub_22FFB0588();
  if (!result)
  {
    if (!__OFSUB__(a2, a1))
    {
      goto LABEL_4;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = sub_22FFB05B8();
  if (!__OFSUB__(a1, result))
  {
    if (!__OFSUB__(a2, a1))
    {
LABEL_4:
      v8 = sub_22FFB05A8();
      v9 = *a4;
      v10 = a4[1];
      v12 = a4[2];
      v11 = a4[3];
      MEMORY[0x28223BE20](v8);
      sub_22FEA5608(v9, v10);
      sub_22FEA5608(v12, v11);
      sub_22FED55F8(v12, v11, sub_22FF56538);
      sub_22FEA55AC(v9, v10);
      return sub_22FEA55AC(v12, v11);
    }

    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22FF5525C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22FFB0588();
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = sub_22FFB05B8();
  if (__OFSUB__(a1, v6))
  {
    __break(1u);
LABEL_9:
    sub_22FFB05A8();
LABEL_10:
    __break(1u);
  }

  v7 = a1 - v6 + v5;
  sub_22FFB05A8();
  if (!v7)
  {
    goto LABEL_10;
  }

  if (!aks_attest_context_get_uint64())
  {
    return sub_22FFB09B8();
  }

  v8 = sub_22FFB09C8();
  return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
}

uint64_t *sub_22FF55368(uint64_t *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v22 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_22FEA55AC(v5, v4);
      __b = v5;
      v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_22FFB33B0;
      sub_22FEA55AC(0, 0xC000000000000000);
      result = sub_22FF555D0(&__b, v2);
      v7 = __b;
      v8 = v21 | 0x4000000000000000;
    }

    else
    {
      __c = a2;
      sub_22FEA55AC(v5, v4);
      __b = v5;
      LOWORD(v21) = v4;
      BYTE2(v21) = BYTE2(v4);
      BYTE3(v21) = BYTE3(v4);
      BYTE4(v21) = BYTE4(v4);
      BYTE5(v21) = BYTE5(v4);
      BYTE6(v21) = BYTE6(v4);
      result = memset(&__b, __c, BYTE6(v4));
      v7 = __b;
      v8 = v21 | ((WORD2(v21) | (BYTE6(v21) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    return result;
  }

  if (v6 != 2)
  {
    return result;
  }

  sub_22FEA55AC(v5, v4);
  __b = v5;
  v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_22FFB33B0;
  sub_22FEA55AC(0, 0xC000000000000000);
  sub_22FFB06C8();
  v9 = v21;
  v10 = *(__b + 16);
  v11 = *(__b + 24);
  result = sub_22FFB0588();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = sub_22FFB05B8();
  v14 = v10 - v13;
  if (__OFSUB__(v10, v13))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v15 = __OFSUB__(v11, v10);
  v16 = v11 - v10;
  if (v15)
  {
    goto LABEL_16;
  }

  v17 = sub_22FFB05A8();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  result = memset(v12 + v14, v2, v18);
  *v3 = __b;
  v3[1] = v9 | 0x8000000000000000;
  return result;
}

uint64_t sub_22FF555D0(int *a1, int a2)
{
  result = sub_22FFB0708();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_22FFB0588();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_22FFB05B8();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_22FFB05A8();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  memset((v7 + v8), a2, v11);
}

unint64_t sub_22FF55678(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_22FF55698(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_22FF55750(uint64_t result)
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
      sub_22FFB05D8();
      swift_allocObject();
      sub_22FFB0598();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_22FFB0738();
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

uint64_t sub_22FF557F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_22FFB0588();
  if (!result)
  {
    goto LABEL_9;
  }

  v11 = result;
  result = sub_22FFB05B8();
  v12 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_22FFB05A8();
  result = sub_22FF53C1C(v11 + v12, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return result;
}

unint64_t sub_22FF558A4(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v9)
    {
      sub_22FEA5608(a2, a3);
      sub_22FEA5608(a2, a3);
      sub_22FEA55AC(v8, v7);
      *&v21 = v8;
      WORD4(v21) = v7;
      BYTE10(v21) = BYTE2(v7);
      BYTE11(v21) = BYTE3(v7);
      BYTE12(v21) = BYTE4(v7);
      BYTE13(v21) = BYTE5(v7);
      BYTE14(v21) = BYTE6(v7);
      sub_22FF53C1C(&v21, a2, a3, &v20);
      if (v3)
      {
        v7 = v21;
        v10 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
        sub_22FEA55AC(a2, a3);
        sub_22FEA55AC(a2, a3);
        *a1 = v7;
        a1[1] = v10;
      }

      else
      {
        v7 = v20;
        v16 = v21;
        v17 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
        sub_22FEA55AC(a2, a3);
        sub_22FEA55AC(a2, a3);
        *a1 = v16;
        a1[1] = v17;
      }

      return v7;
    }

    v14 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    sub_22FEA5608(a2, a3);
    sub_22FEA5608(a2, a3);
    sub_22FEA5608(v8, v7);
    sub_22FEA55AC(v8, v7);
    *a1 = xmmword_22FFB33B0;
    sub_22FEA55AC(0, 0xC000000000000000);
    v15 = v8 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v15 < v8)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (sub_22FFB0588() && __OFSUB__(v8, sub_22FFB05B8()))
      {
LABEL_23:
        __break(1u);
      }

      sub_22FFB05D8();
      swift_allocObject();
      v18 = sub_22FFB0568();

      v14 = v18;
    }

    if (v15 >= v8)
    {
      sub_22FEA5608(a2, a3);

      v7 = sub_22FF557F0(v8, v8 >> 32, v14, a2, a3);
      sub_22FEA55AC(a2, a3);

      sub_22FEA55AC(a2, a3);
      sub_22FEA55AC(a2, a3);
      *a1 = v8;
      a1[1] = v14 | 0x4000000000000000;
      return v7;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v9 == 2)
  {
    sub_22FEA5608(a2, a3);
    sub_22FEA5608(a2, a3);
    sub_22FEA5608(v8, v7);
    sub_22FEA55AC(v8, v7);
    *&v21 = v8;
    *(&v21 + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_22FFB33B0;
    sub_22FEA55AC(0, 0xC000000000000000);
    sub_22FFB06C8();
    v11 = *(&v21 + 1);
    v7 = *(v21 + 16);
    v12 = *(v21 + 24);
    sub_22FEA5608(a2, a3);
    v13 = sub_22FF557F0(v7, v12, *(&v21 + 1), a2, a3);
    if (!v3)
    {
      v7 = v13;
    }

    sub_22FEA55AC(a2, a3);
    sub_22FEA55AC(a2, a3);
    sub_22FEA55AC(a2, a3);
    *a1 = v21;
    a1[1] = v11 | 0x8000000000000000;
  }

  else
  {
    *(&v21 + 7) = 0;
    *&v21 = 0;
    sub_22FF53C1C(&v21, a2, a3, &v20);
    if (!v3)
    {
      return v20;
    }
  }

  return v7;
}

uint64_t sub_22FF55D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22FFB0588();
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = sub_22FFB05B8();
  if (__OFSUB__(a1, v6))
  {
    __break(1u);
LABEL_9:
    sub_22FFB05A8();
LABEL_10:
    __break(1u);
  }

  v7 = a1 - v6 + v5;
  sub_22FFB05A8();
  if (!v7)
  {
    goto LABEL_10;
  }

  if (aks_attest_context_get_uint64())
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22FF55E14(uint64_t a1)
{
  v2 = sub_22FFB0588();
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = sub_22FFB05B8();
  if (__OFSUB__(a1, v4))
  {
    __break(1u);
    __break(1u);
LABEL_6:
    sub_22FFB05A8();
LABEL_7:
    __break(1u);
  }

  v5 = a1 - v4 + v3;
  sub_22FFB05A8();
  if (!v5)
  {
    goto LABEL_7;
  }

  return (aks_attest_context_get_uint64() != 0) << 32;
}

unint64_t sub_22FF55FA4()
{
  result = qword_27DAF3688;
  if (!qword_27DAF3688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3688);
  }

  return result;
}

unint64_t sub_22FF55FF8()
{
  result = qword_27DAF1518;
  if (!qword_27DAF1518)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1518);
  }

  return result;
}

uint64_t sub_22FF560A0(uint64_t a1)
{
  v2 = type metadata accessor for SEP.SealedHash(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FF560FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3690, &qword_22FFBDE20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FF56170()
{
  result = qword_27DAF3698;
  if (!qword_27DAF3698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3698);
  }

  return result;
}

unint64_t sub_22FF561C8()
{
  result = qword_27DAF36A0;
  if (!qword_27DAF36A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF36A0);
  }

  return result;
}

uint64_t sub_22FF5621C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22FF56270(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t _s11AttestationV6OSTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11AttestationV6OSTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22FF56430(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_22FF55698(a1, &a1[a2]);
  }

  sub_22FFB05D8();
  swift_allocObject();
  sub_22FFB0578();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_22FFB0738();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t SEP.Identity.udid.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84CC0];
  *(v3 + 16) = xmmword_22FFB2D20;
  v5 = MEMORY[0x277D84D30];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = v1;
  v6 = MEMORY[0x277D84D90];
  *(v3 + 96) = MEMORY[0x277D84D38];
  *(v3 + 104) = v6;
  *(v3 + 72) = v2;

  return sub_22FFB14D8();
}

uint64_t SEP.Identity.ArchBits.SecurityDomain.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *a2 = v2;
  return result;
}

uint64_t SEP.Identity.init(chipID:ecid:archBits:swSeed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = v5;
  *(a5 + 17) = v6;
  *(a5 + 18) = v7;
  *(a5 + 20) = a4;
  return result;
}