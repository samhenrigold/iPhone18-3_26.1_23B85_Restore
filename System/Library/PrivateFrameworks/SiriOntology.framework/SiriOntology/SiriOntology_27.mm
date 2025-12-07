void (*Com_Apple_Siri_Product_Proto_MatchingSpan.label.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v4 + 72) = *(v6 + 16);
  *(v4 + 80) = v7;

  return sub_1C080D1A8;
}

void sub_1C080D1A8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      swift_allocObject();
      v11 = sub_1C081F1B4(v8);

      *(v10 + v9) = v11;
      v8 = v11;
    }

    swift_beginAccess();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      swift_allocObject();
      v16 = sub_1C081F1B4(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    swift_beginAccess();
    *(v13 + 16) = v3;
    *(v13 + 24) = v5;
  }

  free(v2);
}

uint64_t sub_1C080D2F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C081FCD0(a1, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
  v11 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v14 = sub_1C081F1B4(v13);

    *(a2 + v11) = v14;
    v13 = v14;
  }

  sub_1C081E580(v10, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
  (*(v8 + 56))(v6, 0, 1, v7);
  v15 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__serializedValue;
  swift_beginAccess();
  sub_1C051F9D4(v6, v13 + v15, &qword_1EBE17778, &unk_1C0971260);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.serializedValue.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
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
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__serializedValue;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17778, &unk_1C0971260);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 20);
    if (qword_1EBE15458 != -1)
    {
      swift_once();
    }

    *(v14 + v19) = qword_1EBE15460;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17778, &unk_1C0971260);
    }
  }

  else
  {
    sub_1C081E580(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
  }

  return sub_1C080D780;
}

void sub_1C080D780(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1C081FCD0(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      swift_allocObject();
      v9 = sub_1C081F1B4(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1C081E580(v11, v15, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__serializedValue;
    swift_beginAccess();
    sub_1C051F9D4(v15, v6 + v16, &qword_1EBE17778, &unk_1C0971260);
    swift_endAccess();
    sub_1C081FD38(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      swift_allocObject();
      v22 = sub_1C081F1B4(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1C081E580(v10, v15, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__serializedValue;
    swift_beginAccess();
    sub_1C051F9D4(v15, v19 + v25, &qword_1EBE17778, &unk_1C0971260);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

Swift::Void __swiftcall Com_Apple_Siri_Product_Proto_MatchingSpan.clearSerializedValue()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v8 = sub_1C081F1B4(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__serializedValue;
  swift_beginAccess();
  sub_1C051F9D4(v4, v7 + v10, &qword_1EBE17778, &unk_1C0971260);
  swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.input.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__input);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return sub_1C080DBF0;
}

uint64_t sub_1C080DBFC@<X0>(uint64_t a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20)) + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t sub_1C080DC6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v12 = sub_1C081F1B4(v11);

    *(a2 + v9) = v12;
    v11 = v12;
  }

  v13 = (v11 + *a5);
  swift_beginAccess();
  *v13 = v8;
  v13[1] = v7;
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.matchedTerm.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchedTerm);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return sub_1C080DDE8;
}

void sub_1C080DDF4(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v8 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v4 + 96);
      v12 = *(v4 + 88);
      type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      swift_allocObject();
      v13 = sub_1C081F1B4(v10);

      *(v12 + v11) = v13;
      v10 = v13;
    }

    v14 = (v10 + *a3);
    swift_beginAccess();
    *v14 = v5;
    v14[1] = v7;
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v8 + v6);
    if ((v15 & 1) == 0)
    {
      v17 = *(v4 + 96);
      v18 = *(v4 + 88);
      type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      swift_allocObject();
      v19 = sub_1C081F1B4(v16);

      *(v18 + v17) = v19;
      v16 = v19;
    }

    v20 = (v16 + *a3);
    swift_beginAccess();
    *v20 = v5;
    v20[1] = v7;
  }

  free(v4);
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.prefix.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179C8, &qword_1C0972E60) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
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
  v15 = *(v9 + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefix;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE179C8, &qword_1C0972E60);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 20);
    if (qword_1EBE0FD48 != -1)
    {
      swift_once();
    }

    *(v14 + v19) = qword_1EBE0FD50;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE179C8, &qword_1C0972E60);
    }
  }

  else
  {
    sub_1C081E580(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
  }

  return sub_1C080E1E0;
}

void sub_1C080E1EC(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    v6 = *(v4 + 72);
    sub_1C081FCD0(*(v4 + 120), *(v4 + 112), type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v4 + 128);
      v10 = *(v4 + 72);
      type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      swift_allocObject();
      v11 = sub_1C081F1B4(v8);

      *(v10 + v9) = v11;
      v8 = v11;
    }

    v13 = *(v4 + 112);
    v12 = *(v4 + 120);
    v14 = *(v4 + 96);
    v15 = *(v4 + 104);
    v17 = *(v4 + 80);
    v16 = *(v4 + 88);
    sub_1C081E580(v13, v17, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    (*(v15 + 56))(v17, 0, 1, v14);
    v18 = *a3;
    swift_beginAccess();
    sub_1C051F9D4(v17, v8 + v18, &qword_1EBE179C8, &qword_1C0972E60);
    swift_endAccess();
    sub_1C081FD38(v12, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
  }

  else
  {
    v19 = *(v4 + 72);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v19 + v5);
    if ((v20 & 1) == 0)
    {
      v22 = *(v4 + 128);
      v23 = *(v4 + 72);
      type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      swift_allocObject();
      v24 = sub_1C081F1B4(v21);

      *(v23 + v22) = v24;
      v21 = v24;
    }

    v13 = *(v4 + 112);
    v12 = *(v4 + 120);
    v25 = *(v4 + 96);
    v26 = *(v4 + 104);
    v17 = *(v4 + 80);
    v16 = *(v4 + 88);
    sub_1C081E580(v12, v17, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    (*(v26 + 56))(v17, 0, 1, v25);
    v27 = *a3;
    swift_beginAccess();
    sub_1C051F9D4(v17, v21 + v27, &qword_1EBE179C8, &qword_1C0972E60);
    swift_endAccess();
  }

  free(v12);
  free(v13);
  free(v16);
  free(v17);

  free(v4);
}

void sub_1C080E464(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179C8, &qword_1C0972E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  v10 = *(a1 + *(v9 + 20));
  v11 = *a2;
  swift_beginAccess();
  sub_1C05149F8(v10 + v11, v8, &qword_1EBE179C8, &qword_1C0972E60);
  v12 = *(*(v9 - 8) + 48);
  if (v12(v8, 1, v9) == 1)
  {
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v13 = *(v9 + 20);
    if (qword_1EBE0FD48 != -1)
    {
      swift_once();
    }

    *(a3 + v13) = qword_1EBE0FD50;
    v14 = v12(v8, 1, v9);

    if (v14 != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE179C8, &qword_1C0972E60);
    }
  }

  else
  {
    sub_1C081E580(v8, a3, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
  }
}

uint64_t sub_1C080E62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179C8, &qword_1C0972E60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C081FCD0(a1, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
  v15 = *(v11 + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a2 + v15);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v18 = sub_1C081F1B4(v17);

    *(a2 + v15) = v18;
    v17 = v18;
  }

  sub_1C081E580(v14, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
  (*(v12 + 56))(v10, 0, 1, v11);
  v19 = *a5;
  swift_beginAccess();
  sub_1C051F9D4(v10, v17 + v19, &qword_1EBE179C8, &qword_1C0972E60);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.suffix.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179C8, &qword_1C0972E60) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
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
  v15 = *(v9 + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__suffix;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE179C8, &qword_1C0972E60);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 20);
    if (qword_1EBE0FD48 != -1)
    {
      swift_once();
    }

    *(v14 + v19) = qword_1EBE0FD50;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE179C8, &qword_1C0972E60);
    }
  }

  else
  {
    sub_1C081E580(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
  }

  return sub_1C080EAB4;
}

uint64_t sub_1C080EACC(uint64_t *a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179C8, &qword_1C0972E60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  v8 = *(v7 + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v11 = sub_1C081F1B4(v10);

    *(v3 + v8) = v11;
    v10 = v11;
  }

  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v12 = *a1;
  swift_beginAccess();
  sub_1C051F9D4(v6, v10 + v12, &qword_1EBE179C8, &qword_1C0972E60);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.start.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__start;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1C080ECCC;
}

uint64_t sub_1C080ECD8(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v11 = sub_1C081F1B4(v10);

    *(a2 + v8) = v11;
    v10 = v11;
  }

  v12 = *a5;
  result = swift_beginAccess();
  *(v10 + v12) = v7;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.end.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__end;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1C080EE2C;
}

void sub_1C080EE38(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 84);
  v7 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 84);
    v11 = *(v4 + 72);
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v12 = sub_1C081F1B4(v9);

    *(v11 + v10) = v12;
    v9 = v12;
  }

  v13 = *a3;
  swift_beginAccess();
  *(v9 + v13) = v5;

  free(v4);
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.startWithoutPrefix.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__startWithoutPrefix;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1C080EFBC;
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.endWithoutSuffix.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__endWithoutSuffix;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1C080F070;
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.confidence.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__confidence;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1C080F124;
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.prefixSuffixConfidence.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefixSuffixConfidence;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1C080F1D8;
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.explicit.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__explicit;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_1C080F28C;
}

uint64_t sub_1C080F298(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v11 = sub_1C081F1B4(v10);

    *(a2 + v8) = v11;
    v10 = v11;
  }

  v12 = *a5;
  result = swift_beginAccess();
  *(v10 + v12) = v7;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.isSuffixVariableMatch.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isSuffixVariableMatch;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_1C080F3EC;
}

void sub_1C080F3F8(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 80);
    v11 = *(v4 + 72);
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v12 = sub_1C081F1B4(v9);

    *(v11 + v10) = v12;
    v9 = v12;
  }

  v13 = *a3;
  swift_beginAccess();
  *(v9 + v13) = v7;

  free(v4);
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.isPrefixVariableMatch.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPrefixVariableMatch;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_1C080F578;
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.isPayloadVariableMatch.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPayloadVariableMatch;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_1C080F62C;
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.locale.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__locale);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return sub_1C080F6EC;
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.numWords.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__numWords;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1C080F7A0;
}

uint64_t sub_1C080F7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20)) + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchType;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C080F818(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v8 = sub_1C081F1B4(v7);

    *(a2 + v5) = v8;
    v7 = v8;
  }

  v9 = v7 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchType;
  result = swift_beginAccess();
  *v9 = v3;
  *(v9 + 8) = v4;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.matchType.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchType;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return sub_1C080F984;
}

void sub_1C080F984(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v2 + 84);
    v10 = *(v2 + 88);
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v11 = sub_1C081F1B4(v8);

    *(v10 + v9) = v11;
    v8 = v11;
  }

  v12 = v8 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchType;
  swift_beginAccess();
  *v12 = v3;
  *(v12 + 8) = v6;

  free(v2);
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.appID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__appID);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return sub_1C080FB20;
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.matcherNames.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matcherNames;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1C080FBDC;
}

uint64_t sub_1C080FBE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20));
  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_1C080FC54(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v11 = sub_1C081F1B4(v10);

    *(a2 + v8) = v11;
    v10 = v11;
  }

  v12 = *a5;
  swift_beginAccess();
  *(v10 + v12) = v7;
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.tags.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__tags;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1C080FDC0;
}

void sub_1C080FDCC(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v7 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = *(v4 + 88);
      v11 = *(v4 + 80);
      type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      swift_allocObject();
      v12 = sub_1C081F1B4(v9);

      *(v11 + v10) = v12;
      v9 = v12;
    }

    v13 = *a3;
    swift_beginAccess();
    *(v9 + v13) = v5;
  }

  else
  {
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v7 + v6);
    if ((v14 & 1) == 0)
    {
      v16 = *(v4 + 88);
      v17 = *(v4 + 80);
      type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      swift_allocObject();
      v18 = sub_1C081F1B4(v15);

      *(v17 + v16) = v18;
      v15 = v18;
    }

    v19 = *a3;
    swift_beginAccess();
    *(v15 + v19) = v5;
  }

  free(v4);
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.altInterpretationConfidences.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationConfidences;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1C080FFD0;
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.altInterpretationPhoneSequences.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationPhoneSequences;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1C081008C;
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.metadata.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__metadata;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return sub_1C0810140;
}

uint64_t sub_1C081014C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v11 = sub_1C081F1B4(v10);

    *(a2 + v8) = v11;
    v10 = v11;
  }

  v12 = *a5;
  result = swift_beginAccess();
  *(v10 + v12) = v7;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.preItnphrasesStartTime.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesStartTime;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return sub_1C08102A0;
}

void sub_1C08102AC(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 88);
    v11 = *(v4 + 80);
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v12 = sub_1C081F1B4(v9);

    *(v11 + v10) = v12;
    v9 = v12;
  }

  v13 = *a3;
  swift_beginAccess();
  *(v9 + v13) = v5;

  free(v4);
}

void (*Com_Apple_Siri_Product_Proto_MatchingSpan.preItnphrasesEndTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesEndTime;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return sub_1C0810430;
}

uint64_t sub_1C081045C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v4 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  return sub_1C05149F8(v3 + v4, a2, &qword_1EBE1F7F8, &unk_1C0999E50);
}

uint64_t sub_1C08104D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1C05149F8(a1, &v6 - v3, &qword_1EBE1F7F8, &unk_1C0999E50);
  return Com_Apple_Siri_Product_Proto_Value.value.setter(v4);
}

uint64_t Com_Apple_Siri_Product_Proto_Value.value.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_Value._StorageClass(0);
    v9 = swift_allocObject();
    v17 = a1;
    v10 = v9;
    v11 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
    v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
    (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
    v13 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
    swift_beginAccess();
    sub_1C05149F8(v8 + v13, v5, &qword_1EBE1F7F8, &unk_1C0999E50);
    swift_beginAccess();
    sub_1C051F9D4(v5, v10 + v11, &qword_1EBE1F7F8, &unk_1C0999E50);
    swift_endAccess();

    *(v1 + v6) = v10;
    v8 = v10;
    a1 = v17;
  }

  v14 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C051F9D4(a1, v8 + v14, &qword_1EBE1F7F8, &unk_1C0999E50);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_Value.value.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x80uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 96) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50) - 8) + 64);
  if (v3)
  {
    *(v5 + 104) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 104) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 112) = v7;
  v9 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20);
  *(v5 + 120) = v9;
  v10 = *(v1 + v9);
  v11 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v10 + v11, v8, &qword_1EBE1F7F8, &unk_1C0999E50);
  return sub_1C0810878;
}

void sub_1C0810878(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 104);
    v3 = *(v2 + 112);
    sub_1C05149F8(v3, v4, &qword_1EBE1F7F8, &unk_1C0999E50);
    Com_Apple_Siri_Product_Proto_Value.value.setter(v4);
    sub_1C05145B4(v3, &qword_1EBE1F7F8, &unk_1C0999E50);
  }

  else
  {
    v5 = *(v2 + 120);
    v6 = *(v2 + 96);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = *(v2 + 120);
      v10 = *(v2 + 96);
      v9 = *(v2 + 104);
      type metadata accessor for Com_Apple_Siri_Product_Proto_Value._StorageClass(0);
      v11 = swift_allocObject();
      v12 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
      v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
      (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
      v14 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
      swift_beginAccess();
      sub_1C05149F8(v8 + v14, v9, &qword_1EBE1F7F8, &unk_1C0999E50);
      swift_beginAccess();
      sub_1C051F9D4(v9, v11 + v12, &qword_1EBE1F7F8, &unk_1C0999E50);
      swift_endAccess();

      *(v10 + v16) = v11;
      v8 = v11;
    }

    v4 = *(v2 + 104);
    v3 = *(v2 + 112);
    v15 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
    swift_beginAccess();
    sub_1C051F9D4(v3, v8 + v15, &qword_1EBE1F7F8, &unk_1C0999E50);
    swift_endAccess();
  }

  free(v3);
  free(v4);

  free(v2);
}

float Com_Apple_Siri_Product_Proto_Value.floatValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = *(v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v5 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v4 + v5, v3, &qword_1EBE1F7F8, &unk_1C0999E50);
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
  {
    sub_1C05145B4(v3, &qword_1EBE1F7F8, &unk_1C0999E50);
    return 0.0;
  }

  else if (swift_getEnumCaseMultiPayload())
  {
    sub_1C081FD38(v3, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    return 0.0;
  }

  else
  {
    return *v3;
  }
}

uint64_t sub_1C0810BDC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v12 - v5);
  v7 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v8 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v7 + v8, v6, &qword_1EBE1F7F8, &unk_1C0999E50);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    result = sub_1C05145B4(v6, &qword_1EBE1F7F8, &unk_1C0999E50);
  }

  else
  {
    result = swift_getEnumCaseMultiPayload();
    if (!result)
    {
      v11 = *v6;
      goto LABEL_6;
    }

    result = sub_1C081FD38(v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  }

  v11 = 0;
LABEL_6:
  *a2 = v11;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_Value.floatValue.modify(uint64_t *a1))(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 32) = v7;
  v9 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v10 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v9 + v10, v8, &qword_1EBE1F7F8, &unk_1C0999E50);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v11 - 8) + 48))(v8, 1, v11) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1F7F8, &unk_1C0999E50);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v12 = *v8;
      goto LABEL_12;
    }

    sub_1C081FD38(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  }

  v12 = 0;
LABEL_12:
  *(v5 + 40) = v12;
  return sub_1C0810EF4;
}

void sub_1C0810EF4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  Com_Apple_Siri_Product_Proto_Value.floatValue.setter(*(*a1 + 40));
  free(v2);

  free(v1);
}

double Com_Apple_Siri_Product_Proto_Value.doubleValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = *(v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v5 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v4 + v5, v3, &qword_1EBE1F7F8, &unk_1C0999E50);
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
  {
    sub_1C05145B4(v3, &qword_1EBE1F7F8, &unk_1C0999E50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return *v3;
    }

    sub_1C081FD38(v3, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  }

  return 0.0;
}

uint64_t sub_1C08110AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v12 - v5);
  v7 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v8 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v7 + v8, v6, &qword_1EBE1F7F8, &unk_1C0999E50);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    result = sub_1C05145B4(v6, &qword_1EBE1F7F8, &unk_1C0999E50);
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    result = sub_1C081FD38(v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    goto LABEL_6;
  }

  v11 = *v6;
LABEL_7:
  *a2 = v11;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_Value.doubleValue.modify(uint64_t *a1))(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v10 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v9 + v10, v8, &qword_1EBE1F7F8, &unk_1C0999E50);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v11 - 8) + 48))(v8, 1, v11) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1F7F8, &unk_1C0999E50);
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C081FD38(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    goto LABEL_12;
  }

  v12 = *v8;
LABEL_13:
  *(v5 + 24) = v12;
  return sub_1C08113C8;
}

void sub_1C08113C8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  Com_Apple_Siri_Product_Proto_Value.doubleValue.setter(*(*a1 + 24));
  free(v2);

  free(v1);
}

uint64_t Com_Apple_Siri_Product_Proto_Value.intValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v8 - v2);
  v4 = *(v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v5 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v4 + v5, v3, &qword_1EBE1F7F8, &unk_1C0999E50);
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
  {
    sub_1C05145B4(v3, &qword_1EBE1F7F8, &unk_1C0999E50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return *v3;
    }

    sub_1C081FD38(v3, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  }

  return 0;
}

uint64_t sub_1C0811580@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v12 - v5);
  v7 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v8 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v7 + v8, v6, &qword_1EBE1F7F8, &unk_1C0999E50);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    result = sub_1C05145B4(v6, &qword_1EBE1F7F8, &unk_1C0999E50);
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result != 2)
  {
    result = sub_1C081FD38(v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    goto LABEL_6;
  }

  v11 = *v6;
LABEL_7:
  *a2 = v11;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_Value.intValue.modify(uint64_t *a1))(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 32) = v7;
  v9 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v10 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v9 + v10, v8, &qword_1EBE1F7F8, &unk_1C0999E50);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v11 - 8) + 48))(v8, 1, v11) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1F7F8, &unk_1C0999E50);
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1C081FD38(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    goto LABEL_12;
  }

  v12 = *v8;
LABEL_13:
  *(v5 + 40) = v12;
  return sub_1C081189C;
}

void sub_1C081189C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  Com_Apple_Siri_Product_Proto_Value.intValue.setter(*(*a1 + 40));
  free(v2);

  free(v1);
}

uint64_t Com_Apple_Siri_Product_Proto_Value.longValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = *(v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v5 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v4 + v5, v3, &qword_1EBE1F7F8, &unk_1C0999E50);
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
  {
    sub_1C05145B4(v3, &qword_1EBE1F7F8, &unk_1C0999E50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return *v3;
    }

    sub_1C081FD38(v3, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  }

  return 0;
}

uint64_t sub_1C0811A54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v12 - v5);
  v7 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v8 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v7 + v8, v6, &qword_1EBE1F7F8, &unk_1C0999E50);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    result = sub_1C05145B4(v6, &qword_1EBE1F7F8, &unk_1C0999E50);
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result != 3)
  {
    result = sub_1C081FD38(v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    goto LABEL_6;
  }

  v11 = *v6;
LABEL_7:
  *a2 = v11;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_Value.longValue.modify(uint64_t *a1))(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v10 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v9 + v10, v8, &qword_1EBE1F7F8, &unk_1C0999E50);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v11 - 8) + 48))(v8, 1, v11) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1F7F8, &unk_1C0999E50);
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1C081FD38(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    goto LABEL_12;
  }

  v12 = *v8;
LABEL_13:
  *(v5 + 24) = v12;
  return sub_1C0811D70;
}

void sub_1C0811D70(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  Com_Apple_Siri_Product_Proto_Value.longValue.setter(*(*a1 + 24));
  free(v2);

  free(v1);
}

uint64_t Com_Apple_Siri_Product_Proto_Value.stringValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = *(v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v5 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v4 + v5, v3, &qword_1EBE1F7F8, &unk_1C0999E50);
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
  {
    sub_1C05145B4(v3, &qword_1EBE1F7F8, &unk_1C0999E50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return *v3;
    }

    sub_1C081FD38(v3, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  }

  return 0;
}

void (*Com_Apple_Siri_Product_Proto_Value.stringValue.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 40) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[6] = v7;
  v9 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v10 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v9 + v10, v8, &qword_1EBE1F7F8, &unk_1C0999E50);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v11 - 8) + 48))(v8, 1, v11) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1F7F8, &unk_1C0999E50);
LABEL_12:
    v12 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1C081FD38(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    goto LABEL_12;
  }

  v12 = *v8;
  v13 = v8[1];
LABEL_13:
  v5[3] = v12;
  v5[4] = v13;
  return sub_1C08120D8;
}

double Com_Apple_Siri_Product_Proto_Value.dateTimeValue.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v7 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v6 + v7, v5, &qword_1EBE1F7F8, &unk_1C0999E50);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
  {
    sub_1C05145B4(v5, &qword_1EBE1F7F8, &unk_1C0999E50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C081E580(v5, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime);
      return result;
    }

    sub_1C081FD38(v5, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  if (qword_1EBE155E0 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_1EBE17C18;

  return result;
}

void (*Com_Apple_Siri_Product_Proto_Value.dateTimeValue.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[6] = v11;
  v13 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v14 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v13 + v14, v8, &qword_1EBE1F7F8, &unk_1C0999E50);
  v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v15 - 8) + 48))(v8, 1, v15) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1F7F8, &unk_1C0999E50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C081E580(v8, v12, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime);
      return sub_1C0812538;
    }

    sub_1C081FD38(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v16 = *(v9 + 20);
  if (qword_1EBE155E0 != -1)
  {
    swift_once();
  }

  *(v12 + v16) = qword_1EBE17C18;

  return sub_1C0812538;
}

double Com_Apple_Siri_Product_Proto_Value.scalarValue.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v7 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v6 + v7, v5, &qword_1EBE1F7F8, &unk_1C0999E50);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
  {
    sub_1C05145B4(v5, &qword_1EBE1F7F8, &unk_1C0999E50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C081E580(v5, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue);
      return result;
    }

    sub_1C081FD38(v5, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue(0) + 20);
  if (qword_1EBE15928 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_1EBE1FD68;

  return result;
}

uint64_t sub_1C0812750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  sub_1C081FCD0(a1, &v14 - v11, a6);
  return a7(v12);
}

void (*Com_Apple_Siri_Product_Proto_Value.scalarValue.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[6] = v11;
  v13 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v14 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v13 + v14, v8, &qword_1EBE1F7F8, &unk_1C0999E50);
  v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v15 - 8) + 48))(v8, 1, v15) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1F7F8, &unk_1C0999E50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C081E580(v8, v12, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue);
      return sub_1C0812A64;
    }

    sub_1C081FD38(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v16 = *(v9 + 20);
  if (qword_1EBE15928 != -1)
  {
    swift_once();
  }

  *(v12 + v16) = qword_1EBE1FD68;

  return sub_1C0812A64;
}

void sub_1C0812AA4(uint64_t a1, char a2, void (*a3)(void *), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = *(*a1 + 40);
  v8 = *(*a1 + 48);
  v9 = *(*a1 + 32);
  if (a2)
  {
    sub_1C081FCD0(*(*a1 + 48), v7, a4);
    a3(v7);
    sub_1C081FD38(v8, a5);
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v8);
  free(v7);
  free(v9);

  free(v6);
}

uint64_t Com_Apple_Siri_Product_Proto_Value.semanticTagValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = *(v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v5 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v4 + v5, v3, &qword_1EBE1F7F8, &unk_1C0999E50);
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
  {
    sub_1C05145B4(v3, &qword_1EBE1F7F8, &unk_1C0999E50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      return *v3;
    }

    sub_1C081FD38(v3, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  }

  return 0;
}

void (*Com_Apple_Siri_Product_Proto_Value.semanticTagValue.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 40) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[6] = v7;
  v9 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v10 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v9 + v10, v8, &qword_1EBE1F7F8, &unk_1C0999E50);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v11 - 8) + 48))(v8, 1, v11) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1F7F8, &unk_1C0999E50);
LABEL_12:
    v12 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_1C081FD38(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    goto LABEL_12;
  }

  v12 = *v8;
  v13 = v8[1];
LABEL_13:
  v5[3] = v12;
  v5[4] = v13;
  return sub_1C0812E6C;
}

void sub_1C0812E84(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 32);
  if (a2)
  {

    a3(v5, v7);
  }

  else
  {
    a3(*(*a1 + 24), v7);
  }

  free(v6);

  free(v4);
}

uint64_t Com_Apple_Siri_Product_Proto_Value.semanticValue.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v7 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v6 + v7, v5, &qword_1EBE1F7F8, &unk_1C0999E50);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
  {
    sub_1C05145B4(v5, &qword_1EBE1F7F8, &unk_1C0999E50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      return sub_1C081E580(v5, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    }

    sub_1C081FD38(v5, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = MEMORY[0x1E69E7CC0];
  type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

void (*Com_Apple_Siri_Product_Proto_Value.semanticValue.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  v9 = *(*(type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0) - 8) + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[6] = v10;
  v12 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v13 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v12 + v13, v8, &qword_1EBE1F7F8, &unk_1C0999E50);
  v14 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1F7F8, &unk_1C0999E50);
LABEL_15:
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v11[2] = 0;
    v11[3] = 0xE000000000000000;
    v11[4] = 0;
    v11[5] = 0xE000000000000000;
    v11[6] = MEMORY[0x1E69E7CC0];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    return sub_1C081331C;
  }

  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1C081FD38(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    goto LABEL_15;
  }

  sub_1C081E580(v8, v11, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  return sub_1C081331C;
}

void sub_1C08133D4(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = *(a1 + *(a2(0) + 20));
  v12 = *a3;
  swift_beginAccess();
  sub_1C05149F8(v11 + v12, v10, &qword_1EBE17778, &unk_1C0971260);
  v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v10, 1, v13) == 1)
  {
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v15 = *(v13 + 20);
    if (qword_1EBE15458 != -1)
    {
      swift_once();
    }

    *(a4 + v15) = qword_1EBE15460;
    v16 = v14(v10, 1, v13);

    if (v16 != 1)
    {
      sub_1C05145B4(v10, &qword_1EBE17778, &unk_1C0971260);
    }
  }

  else
  {
    sub_1C081E580(v10, a4, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
  }
}

uint64_t sub_1C08135AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C081FCD0(a1, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
  v11 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue._StorageClass(0);
    swift_allocObject();
    v13 = sub_1C081CAFC(v13);
    *(a2 + v11) = v13;
  }

  sub_1C081E580(v10, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C051F9D4(v6, v13 + v14, &qword_1EBE17778, &unk_1C0971260);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_ScalarValue.value.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
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
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17778, &unk_1C0971260);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v19 = *(v9 + 20);
    if (qword_1EBE15458 != -1)
    {
      swift_once();
    }

    *(v14 + v19) = qword_1EBE15460;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17778, &unk_1C0971260);
    }
  }

  else
  {
    sub_1C081E580(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
  }

  return sub_1C0813A34;
}

void sub_1C0813A34(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1C081FCD0(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue._StorageClass(0);
      swift_allocObject();
      v6 = sub_1C081CAFC(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1C081E580(v10, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
    swift_beginAccess();
    sub_1C051F9D4(v14, v6 + v15, &qword_1EBE17778, &unk_1C0971260);
    swift_endAccess();
    sub_1C081FD38(v9, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
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
      type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue._StorageClass(0);
      swift_allocObject();
      v18 = sub_1C081CAFC(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1C081E580(v9, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
    swift_beginAccess();
    sub_1C051F9D4(v14, v18 + v23, &qword_1EBE17778, &unk_1C0971260);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

uint64_t sub_1C0813CB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C081FCD0(a1, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  v11 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue._StorageClass(0);
    swift_allocObject();
    v13 = sub_1C081CAFC(v13);
    *(a2 + v11) = v13;
  }

  sub_1C081E580(v10, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__unit;
  swift_beginAccess();
  sub_1C051F9D4(v6, v13 + v14, &qword_1EBE16B50, &unk_1C096E0F0);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_ScalarValue.unit.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
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
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__unit;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE16B50, &unk_1C096E0F0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0xE000000000000000;
    v14[4] = 0;
    v14[5] = 0xE000000000000000;
    v14[6] = MEMORY[0x1E69E7CC0];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16B50, &unk_1C096E0F0);
    }
  }

  else
  {
    sub_1C081E580(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  }

  return sub_1C0814110;
}

void sub_1C0814110(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1C081FCD0(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue._StorageClass(0);
      swift_allocObject();
      v6 = sub_1C081CAFC(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1C081E580(v10, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__unit;
    swift_beginAccess();
    sub_1C051F9D4(v14, v6 + v15, &qword_1EBE16B50, &unk_1C096E0F0);
    swift_endAccess();
    sub_1C081FD38(v9, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
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
      type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue._StorageClass(0);
      swift_allocObject();
      v18 = sub_1C081CAFC(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1C081E580(v9, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__unit;
    swift_beginAccess();
    sub_1C051F9D4(v14, v18 + v23, &qword_1EBE16B50, &unk_1C096E0F0);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

uint64_t sub_1C0814390(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue._StorageClass(0);
    swift_allocObject();
    v15 = sub_1C081CAFC(v15);
    *(v9 + v13) = v15;
  }

  v16 = a3(0);
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = *a4;
  swift_beginAccess();
  sub_1C051F9D4(v12, v15 + v17, a1, a2);
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_SemanticValue.ontologyNodePojoClassName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Com_Apple_Siri_Product_Proto_SemanticValue.ontologyNodePojoClassName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_SemanticValue.serializedValue.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Com_Apple_Siri_Product_Proto_SemanticValue.serializedValue.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_SemanticValue.semanticValueClassName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Com_Apple_Siri_Product_Proto_SemanticValue.semanticValueClassName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_SemanticValue.tags.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_SemanticValue.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0) + 32);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_SemanticValue.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0) + 32);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C0814828()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1FD08);
  __swift_project_value_buffer(v0, qword_1EBE1FD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1C09A5E10;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 0;
  *v5 = "None";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "StemAndStop";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "StemAndStopSuffix";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "SimpleStemAndStopSuffix";
  *(v13 + 1) = 23;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "Stop";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "StopSuffix";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "Stem";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "StopWithoutSynonyms";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "CompareContains";
  *(v22 + 8) = 15;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "ComparePrefix";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "Compare";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "Phonetic";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "IdentityContains";
  *(v30 + 1) = 16;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "IdentityPrefix";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "IdentitySynonym";
  *(v34 + 1) = 15;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "Identity";
  *(v36 + 1) = 8;
  v36[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t sub_1C0814DA4()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1FD20);
  __swift_project_value_buffer(v0, qword_1EBE1FD20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1C09A5E20;
  v4 = v59 + v3;
  v5 = v59 + v3 + v1[14];
  *(v59 + v3) = 1;
  *v5 = "label";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v59 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "serializedValue";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v59 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "input";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v59 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "matchedTerm";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v59 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "prefix";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v59 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "suffix";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v59 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "start";
  *(v19 + 1) = 5;
  v19[16] = 2;
  v8();
  v20 = (v59 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "end";
  *(v21 + 1) = 3;
  v21[16] = 2;
  v8();
  v22 = v59 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "startWithoutPrefix";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  v23 = (v59 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "endWithoutSuffix";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v59 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "confidence";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  v27 = (v59 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "prefixSuffixConfidence";
  *(v28 + 1) = 22;
  v28[16] = 2;
  v8();
  v29 = (v59 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "explicit";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v8();
  v31 = (v59 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "isSuffixVariableMatch";
  *(v32 + 1) = 21;
  v32[16] = 2;
  v8();
  v33 = (v59 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "isPrefixVariableMatch";
  *(v34 + 1) = 21;
  v34[16] = 2;
  v8();
  v35 = (v59 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "isPayloadVariableMatch";
  *(v36 + 1) = 22;
  v36[16] = 2;
  v8();
  v37 = v59 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "locale";
  *(v37 + 8) = 6;
  *(v37 + 16) = 2;
  v8();
  v38 = (v59 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "numWords";
  *(v39 + 1) = 8;
  v39[16] = 2;
  v8();
  v40 = (v59 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "matchType";
  *(v41 + 1) = 9;
  v41[16] = 2;
  v8();
  v42 = (v59 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "appId";
  *(v43 + 1) = 5;
  v43[16] = 2;
  v8();
  v44 = (v59 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "matcherNames";
  *(v45 + 1) = 12;
  v45[16] = 2;
  v8();
  v46 = (v59 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "tags";
  *(v47 + 1) = 4;
  v47[16] = 2;
  v8();
  v48 = (v59 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "altInterpretationConfidences";
  *(v49 + 1) = 28;
  v49[16] = 2;
  v8();
  v50 = (v59 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "altInterpretationPhoneSequences";
  *(v51 + 1) = 31;
  v51[16] = 2;
  v8();
  v52 = (v59 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 25;
  *v53 = "metadata";
  *(v53 + 1) = 8;
  v53[16] = 2;
  v8();
  v54 = (v59 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 26;
  *v55 = "preITNPhrasesStartTime";
  *(v55 + 1) = 22;
  v55[16] = 2;
  v8();
  v56 = (v59 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 27;
  *v57 = "preITNPhrasesEndTime";
  *(v57 + 1) = 20;
  v57[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t sub_1C0815584()
{
  type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
  swift_allocObject();
  result = sub_1C08155C4();
  qword_1EBE0FD50 = result;
  return result;
}

uint64_t sub_1C08155C4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__serializedValue;
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__input);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchedTerm);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefix;
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v0 + v5, 1, 1, v6);
  v7(v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__suffix, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__start) = 0;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__end) = 0;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__startWithoutPrefix) = 0;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__endWithoutSuffix) = 0;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__confidence) = 0;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefixSuffixConfidence) = 0;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__explicit) = 0;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isSuffixVariableMatch) = 0;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPrefixVariableMatch) = 0;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPayloadVariableMatch) = 0;
  v8 = (v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__locale);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__numWords) = 0;
  v9 = v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchType;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__appID);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matcherNames) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__tags) = v11;
  v12 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationConfidences;
  *(v0 + v12) = sub_1C058B84C(v11);
  v13 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationPhoneSequences;
  *(v0 + v13) = sub_1C058B950(v11);
  *(v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__metadata) = 0;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesStartTime) = 0;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesEndTime) = 0;
  return v0;
}

uint64_t sub_1C0815804()
{

  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__serializedValue, &qword_1EBE17778, &unk_1C0971260);

  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefix, &qword_1EBE179C8, &qword_1C0972E60);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__suffix, &qword_1EBE179C8, &qword_1C0972E60);

  return v0;
}

uint64_t sub_1C0815924()
{
  sub_1C0815804();

  return swift_deallocClassInstance();
}

uint64_t Com_Apple_Siri_Product_Proto_MatchingSpan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    swift_allocObject();
    v12 = sub_1C081F1B4(v11);

    *(v4 + v8) = v12;
    v10 = v12;
  }

  return sub_1C0815A2C(v10, a1, a2, a3);
}

uint64_t sub_1C0815A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C0815CE4(a2, a1, a3, a4);
        continue;
      case 2:
        sub_1C081CF38(a2, a1, a3, a4, &OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__serializedValue);
        continue;
      case 3:
        v12 = &OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__input;
        goto LABEL_33;
      case 4:
        v12 = &OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchedTerm;
        goto LABEL_33;
      case 5:
        sub_1C0815D68(a2, a1, a3, a4);
        continue;
      case 6:
        sub_1C0815E44(a2, a1, a3, a4);
        continue;
      case 7:
        v9 = &OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__start;
        goto LABEL_3;
      case 8:
        v9 = &OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__end;
        goto LABEL_3;
      case 9:
        v9 = &OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__startWithoutPrefix;
        goto LABEL_3;
      case 10:
        v9 = &OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__endWithoutSuffix;
        goto LABEL_3;
      case 11:
        v9 = &OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__confidence;
        goto LABEL_3;
      case 12:
        v9 = &OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefixSuffixConfidence;
        goto LABEL_3;
      case 13:
        v13 = &OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__explicit;
        goto LABEL_26;
      case 14:
        v13 = &OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isSuffixVariableMatch;
        goto LABEL_26;
      case 15:
        v13 = &OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPrefixVariableMatch;
        goto LABEL_26;
      case 16:
        v13 = &OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPayloadVariableMatch;
LABEL_26:
        sub_1C05516B8(a2, a1, a3, a4, v13);
        continue;
      case 17:
        v12 = &OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__locale;
        goto LABEL_33;
      case 18:
        v9 = &OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__numWords;
LABEL_3:
        sub_1C0815F20(a2, a1, a3, a4, v9);
        continue;
      case 19:
        sub_1C0815FA8(a2, a1, a3, a4);
        continue;
      case 20:
        v12 = &OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__appID;
LABEL_33:
        sub_1C0521C7C(a2, a1, a3, a4, v12);
        continue;
      case 21:
        v14 = &OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matcherNames;
        goto LABEL_24;
      case 22:
        v14 = &OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__tags;
LABEL_24:
        v15 = MEMORY[0x1E69D26D0];
        goto LABEL_37;
      case 23:
        sub_1C0816044(a2, a1, a3, a4);
        continue;
      case 24:
        sub_1C0816104(a2, a1, a3, a4);
        continue;
      case 25:
        v14 = &OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__metadata;
        goto LABEL_36;
      case 26:
        v14 = &OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesStartTime;
        goto LABEL_36;
      case 27:
        v14 = &OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesEndTime;
LABEL_36:
        v15 = MEMORY[0x1E69D26D8];
LABEL_37:
        sub_1C08161B0(a2, a1, a3, a4, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C0815CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C095D50C();
  return swift_endAccess();
}

uint64_t sub_1C0815D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  sub_1C081FD98(&qword_1EBE0FC90, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MatchingSpan);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C0815E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  sub_1C081FD98(&qword_1EBE0FC90, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MatchingSpan);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C0815F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_1C095D52C();
  return swift_endAccess();
}

uint64_t sub_1C0815FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_beginAccess();
  sub_1C0820BE8(v4, v5, v6);
  sub_1C095D45C();
  return swift_endAccess();
}

uint64_t sub_1C0816044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C095D34C();
  sub_1C095D33C();
  sub_1C095D40C();
  return swift_endAccess();
}

uint64_t sub_1C0816104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C095D34C();
  sub_1C095D40C();
  return swift_endAccess();
}

uint64_t sub_1C08161B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1C0816288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v96 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179C8, &qword_1C0972E60);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v88 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v86 - v11;
  v92 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  v90 = *(v92 - 8);
  v12 = MEMORY[0x1EEE9AC00](v92);
  v86 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v86 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v86 - v16;
  v18 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v93 = a1;
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {

    sub_1C095D66C();
    if (v5)
    {
    }

    v89 = a3;
  }

  else
  {
    v89 = a3;
  }

  v26 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__serializedValue;
  v27 = v93;
  swift_beginAccess();
  sub_1C05149F8(v27 + v26, v17, &qword_1EBE17778, &unk_1C0971260);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1C05145B4(v17, &qword_1EBE17778, &unk_1C0971260);
    v28 = v5;
  }

  else
  {
    sub_1C081E580(v17, v21, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    sub_1C081FD98(&qword_1EBE15438, type metadata accessor for Com_Apple_Siri_Product_Proto_Value, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Value);
    sub_1C095D6AC();
    v28 = v5;
    if (v5)
    {
      return sub_1C081FD38(v21, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    }

    sub_1C081FD38(v21, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
  }

  v29 = v93;
  v30 = (v93 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__input);
  swift_beginAccess();
  v31 = *v30;
  v32 = v30[1];
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v31 & 0xFFFFFFFFFFFFLL;
  }

  v35 = v91;
  v34 = v92;
  if (v33)
  {

    sub_1C095D66C();
    if (v28)
    {
    }
  }

  v36 = (v29 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchedTerm);
  swift_beginAccess();
  v37 = *v36;
  v38 = v36[1];
  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {

    sub_1C095D66C();
    if (v28)
    {
    }
  }

  v40 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefix;
  swift_beginAccess();
  sub_1C05149F8(v29 + v40, v35, &qword_1EBE179C8, &qword_1C0972E60);
  v41 = *(v90 + 48);
  v90 += 48;
  if (v41(v35, 1, v34) == 1)
  {
    sub_1C05145B4(v35, &qword_1EBE179C8, &qword_1C0972E60);
  }

  else
  {
    v42 = v35;
    v43 = v87;
    sub_1C081E580(v42, v87, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    sub_1C081FD98(&qword_1EBE0FC90, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    sub_1C095D6AC();
    if (v28)
    {
      return sub_1C081FD38(v43, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    }

    sub_1C081FD38(v43, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
  }

  v44 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__suffix;
  swift_beginAccess();
  v45 = v29 + v44;
  v46 = v88;
  sub_1C05149F8(v45, v88, &qword_1EBE179C8, &qword_1C0972E60);
  if (v41(v46, 1, v34) == 1)
  {
    sub_1C05145B4(v46, &qword_1EBE179C8, &qword_1C0972E60);
  }

  else
  {
    v47 = v86;
    sub_1C081E580(v46, v86, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    sub_1C081FD98(&qword_1EBE0FC90, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    sub_1C095D6AC();
    if (v28)
    {
      return sub_1C081FD38(v47, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    }

    sub_1C081FD38(v47, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
  }

  v48 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__start;
  swift_beginAccess();
  if (!*(v29 + v48) || (result = sub_1C095D67C(), !v28))
  {
    v49 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__end;
    swift_beginAccess();
    if (!*(v29 + v49) || (result = sub_1C095D67C(), !v28))
    {
      v50 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__startWithoutPrefix;
      swift_beginAccess();
      if (!*(v29 + v50) || (result = sub_1C095D67C(), !v28))
      {
        v51 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__endWithoutSuffix;
        swift_beginAccess();
        if (!*(v29 + v51) || (result = sub_1C095D67C(), !v28))
        {
          v52 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__confidence;
          swift_beginAccess();
          if (!*(v29 + v52) || (result = sub_1C095D67C(), !v28))
          {
            v53 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefixSuffixConfidence;
            swift_beginAccess();
            if (!*(v29 + v53) || (result = sub_1C095D67C(), !v28))
            {
              v54 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__explicit;
              swift_beginAccess();
              if (*(v29 + v54) != 1 || (result = sub_1C095D5FC(), !v28))
              {
                v55 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isSuffixVariableMatch;
                swift_beginAccess();
                if (*(v29 + v55) != 1 || (result = sub_1C095D5FC(), !v28))
                {
                  v56 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPrefixVariableMatch;
                  swift_beginAccess();
                  if (*(v29 + v56) != 1 || (result = sub_1C095D5FC(), !v28))
                  {
                    v57 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPayloadVariableMatch;
                    swift_beginAccess();
                    if (*(v29 + v57) != 1 || (result = sub_1C095D5FC(), !v28))
                    {
                      v58 = (v29 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__locale);
                      swift_beginAccess();
                      v59 = *v58;
                      v60 = v58[1];
                      v61 = HIBYTE(v60) & 0xF;
                      if ((v60 & 0x2000000000000000) == 0)
                      {
                        v61 = v59 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v61)
                      {

                        sub_1C095D66C();
                        if (v28)
                        {
                        }
                      }

                      v62 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__numWords;
                      swift_beginAccess();
                      if (!*(v29 + v62) || (result = sub_1C095D67C(), !v28))
                      {
                        v63 = v29 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchType;
                        v64 = swift_beginAccess();
                        if (!*v63 || (v67 = *(v63 + 8), v94 = *v63, v95 = v67, sub_1C0820BE8(v64, v65, v66), result = sub_1C095D60C(), !v28))
                        {
                          v68 = (v29 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__appID);
                          swift_beginAccess();
                          v69 = *v68;
                          v70 = v68[1];
                          v71 = HIBYTE(v70) & 0xF;
                          if ((v70 & 0x2000000000000000) == 0)
                          {
                            v71 = v69 & 0xFFFFFFFFFFFFLL;
                          }

                          if (v71)
                          {

                            sub_1C095D66C();
                            if (v28)
                            {
                            }
                          }

                          v72 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matcherNames;
                          v73 = v93;
                          swift_beginAccess();
                          if (!*(*(v73 + v72) + 16) || (, sub_1C095D64C(), result = , !v28))
                          {
                            v74 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__tags;
                            v75 = v93;
                            swift_beginAccess();
                            if (!*(*(v75 + v74) + 16) || (, sub_1C095D64C(), result = , !v28))
                            {
                              v76 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationConfidences;
                              v77 = v93;
                              swift_beginAccess();
                              if (!*(*(v77 + v76) + 16) || (sub_1C095D34C(), sub_1C095D33C(), , sub_1C095D5CC(), result = , !v28))
                              {
                                v78 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationPhoneSequences;
                                v79 = v93;
                                swift_beginAccess();
                                if (!*(*(v79 + v78) + 16) || (sub_1C095D34C(), , sub_1C095D5CC(), result = , !v28))
                                {
                                  v80 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__metadata;
                                  v81 = v93;
                                  swift_beginAccess();
                                  if (!*(v81 + v80) || (result = sub_1C095D68C(), !v28))
                                  {
                                    v82 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesStartTime;
                                    v83 = v93;
                                    swift_beginAccess();
                                    if (!*(v83 + v82) || (result = sub_1C095D68C(), !v28))
                                    {
                                      v84 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesEndTime;
                                      v85 = v93;
                                      swift_beginAccess();
                                      result = *(v85 + v84);
                                      if (result)
                                      {
                                        return sub_1C095D68C();
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1C08170B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  v5 = *(v4 - 8);
  v192 = v4;
  v193 = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v183 = &v182 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v184 = &v182 - v8;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE1FE20, &unk_1C09A6760);
  v9 = MEMORY[0x1EEE9AC00](v191);
  v11 = &v182 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v189 = &v182 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179C8, &qword_1C0972E60);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v185 = &v182 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v186 = &v182 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v187 = &v182 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v188 = &v182 - v20;
  v196 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v21 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v190 = &v182 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179A8, &qword_1C0972E40);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v182 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v195 = &v182 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v182 - v29;
  swift_beginAccess();
  v32 = *(a1 + 16);
  v31 = *(a1 + 24);
  swift_beginAccess();
  if (__PAIR128__(v31, v32) == *(a2 + 16) || (v33 = sub_1C095DF3C(), result = 0, (v33 & 1) != 0))
  {
    v182 = v11;
    v35 = a1;
    v194 = a2;
    v36 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__serializedValue;
    swift_beginAccess();
    v37 = a1 + v36;
    v38 = v194;
    sub_1C05149F8(v37, v30, &qword_1EBE17778, &unk_1C0971260);
    v39 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__serializedValue;
    swift_beginAccess();
    v40 = *(v23 + 48);
    sub_1C05149F8(v30, v25, &qword_1EBE17778, &unk_1C0971260);
    sub_1C05149F8(v38 + v39, &v25[v40], &qword_1EBE17778, &unk_1C0971260);
    v41 = *(v21 + 48);
    v42 = v196;
    if (v41(v25, 1, v196) == 1)
    {

      sub_1C05145B4(v30, &qword_1EBE17778, &unk_1C0971260);
      v43 = v41(&v25[v40], 1, v42);
      v44 = v35;
      if (v43 == 1)
      {
        sub_1C05145B4(v25, &qword_1EBE17778, &unk_1C0971260);
        goto LABEL_14;
      }
    }

    else
    {
      v45 = v38;
      v46 = v35;
      v47 = v195;
      sub_1C05149F8(v25, v195, &qword_1EBE17778, &unk_1C0971260);
      if (v41(&v25[v40], 1, v42) != 1)
      {
        v48 = v190;
        sub_1C081E580(&v25[v40], v190, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
        v49 = *(v42 + 20);
        v50 = *(v47 + v49);
        v51 = *(v48 + v49);

        if (v50 != v51)
        {

          v52 = sub_1C081C1F4(v50, v51);

          if (!v52)
          {
            sub_1C081FD38(v48, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
            sub_1C05145B4(v30, &qword_1EBE17778, &unk_1C0971260);
            sub_1C081FD38(v195, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
            sub_1C05145B4(v25, &qword_1EBE17778, &unk_1C0971260);
            goto LABEL_9;
          }
        }

        sub_1C095D38C();
        sub_1C081FD98(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
        v53 = v195;
        v54 = sub_1C095D73C();
        sub_1C081FD38(v48, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
        sub_1C05145B4(v30, &qword_1EBE17778, &unk_1C0971260);
        sub_1C081FD38(v53, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
        v44 = v46;
        sub_1C05145B4(v25, &qword_1EBE17778, &unk_1C0971260);
        v38 = v45;
        if ((v54 & 1) == 0)
        {
LABEL_9:

          return 0;
        }

LABEL_14:
        v55 = (v44 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__input);
        swift_beginAccess();
        v56 = *v55;
        v57 = v55[1];
        v58 = (v38 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__input);
        swift_beginAccess();
        if ((v56 != *v58 || v57 != v58[1]) && (sub_1C095DF3C() & 1) == 0)
        {
          goto LABEL_9;
        }

        v59 = (v44 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchedTerm);
        swift_beginAccess();
        v60 = *v59;
        v61 = v59[1];
        v62 = (v38 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchedTerm);
        swift_beginAccess();
        if ((v60 != *v62 || v61 != v62[1]) && (sub_1C095DF3C() & 1) == 0)
        {
          goto LABEL_9;
        }

        v63 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefix;
        swift_beginAccess();
        v196 = v44;
        v64 = v188;
        sub_1C05149F8(v44 + v63, v188, &qword_1EBE179C8, &qword_1C0972E60);
        v65 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefix;
        swift_beginAccess();
        v66 = *(v191 + 48);
        v67 = v189;
        sub_1C05149F8(v64, v189, &qword_1EBE179C8, &qword_1C0972E60);
        sub_1C05149F8(v38 + v65, v67 + v66, &qword_1EBE179C8, &qword_1C0972E60);
        v68 = v192;
        v70 = v193 + 48;
        v69 = *(v193 + 48);
        if (v69(v67, 1, v192) == 1)
        {
          sub_1C05145B4(v64, &qword_1EBE179C8, &qword_1C0972E60);
          v71 = v69(v67 + v66, 1, v68);
          v72 = v186;
          if (v71 == 1)
          {
            v193 = v70;
            sub_1C05145B4(v67, &qword_1EBE179C8, &qword_1C0972E60);
LABEL_32:
            v86 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__suffix;
            v87 = v196;
            swift_beginAccess();
            sub_1C05149F8(v87 + v86, v72, &qword_1EBE179C8, &qword_1C0972E60);
            v88 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__suffix;
            swift_beginAccess();
            v89 = *(v191 + 48);
            v90 = v182;
            sub_1C05149F8(v72, v182, &qword_1EBE179C8, &qword_1C0972E60);
            sub_1C05149F8(v38 + v88, v90 + v89, &qword_1EBE179C8, &qword_1C0972E60);
            v91 = v192;
            if (v69(v90, 1, v192) == 1)
            {
              sub_1C05145B4(v72, &qword_1EBE179C8, &qword_1C0972E60);
              v92 = v69(v90 + v89, 1, v91);
              v93 = v196;
              if (v92 == 1)
              {
                sub_1C05145B4(v90, &qword_1EBE179C8, &qword_1C0972E60);
LABEL_42:
                v106 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__start;
                swift_beginAccess();
                LODWORD(v106) = *(v93 + v106);
                v107 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__start;
                swift_beginAccess();
                if (v106 == *(v38 + v107))
                {
                  v108 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__end;
                  swift_beginAccess();
                  LODWORD(v108) = *(v93 + v108);
                  v109 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__end;
                  swift_beginAccess();
                  if (v108 == *(v38 + v109))
                  {
                    v110 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__startWithoutPrefix;
                    swift_beginAccess();
                    LODWORD(v110) = *(v93 + v110);
                    v111 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__startWithoutPrefix;
                    swift_beginAccess();
                    if (v110 == *(v38 + v111))
                    {
                      v112 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__endWithoutSuffix;
                      swift_beginAccess();
                      LODWORD(v112) = *(v93 + v112);
                      v113 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__endWithoutSuffix;
                      swift_beginAccess();
                      if (v112 == *(v38 + v113))
                      {
                        v114 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__confidence;
                        swift_beginAccess();
                        LODWORD(v114) = *(v93 + v114);
                        v115 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__confidence;
                        swift_beginAccess();
                        if (v114 == *(v38 + v115))
                        {
                          v116 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefixSuffixConfidence;
                          swift_beginAccess();
                          LODWORD(v116) = *(v93 + v116);
                          v117 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefixSuffixConfidence;
                          swift_beginAccess();
                          if (v116 == *(v38 + v117))
                          {
                            v118 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__explicit;
                            swift_beginAccess();
                            LODWORD(v118) = *(v93 + v118);
                            v119 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__explicit;
                            swift_beginAccess();
                            if (v118 == *(v38 + v119))
                            {
                              v120 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isSuffixVariableMatch;
                              swift_beginAccess();
                              LODWORD(v120) = *(v93 + v120);
                              v121 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isSuffixVariableMatch;
                              swift_beginAccess();
                              if (v120 == *(v38 + v121))
                              {
                                v122 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPrefixVariableMatch;
                                swift_beginAccess();
                                LODWORD(v122) = *(v93 + v122);
                                v123 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPrefixVariableMatch;
                                swift_beginAccess();
                                if (v122 == *(v38 + v123))
                                {
                                  v124 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPayloadVariableMatch;
                                  swift_beginAccess();
                                  LODWORD(v124) = *(v93 + v124);
                                  v125 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPayloadVariableMatch;
                                  swift_beginAccess();
                                  if (v124 == *(v38 + v125))
                                  {
                                    if (v126 = (v196 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__locale), swift_beginAccess(), v127 = *v126, v128 = v126[1], v129 = (v194 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__locale), swift_beginAccess(), v127 == *v129) && v128 == v129[1] || (sub_1C095DF3C())
                                    {
                                      v130 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__numWords;
                                      v131 = v196;
                                      swift_beginAccess();
                                      LODWORD(v130) = *(v131 + v130);
                                      v132 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__numWords;
                                      v133 = v194;
                                      swift_beginAccess();
                                      if (v130 == *(v133 + v132))
                                      {
                                        v134 = v196 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchType;
                                        swift_beginAccess();
                                        v135 = *v134;
                                        v136 = *(v134 + 8);
                                        v137 = (v194 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchType);
                                        swift_beginAccess();
                                        if (sub_1C05AD890(v135, v136, *v137))
                                        {
                                          if (v138 = (v196 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__appID), swift_beginAccess(), v139 = *v138, v140 = v138[1], v141 = (v194 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__appID), swift_beginAccess(), v139 == *v141) && v140 == v141[1] || (sub_1C095DF3C())
                                          {
                                            v142 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matcherNames;
                                            v143 = v196;
                                            swift_beginAccess();
                                            v144 = *(v143 + v142);
                                            v145 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matcherNames;
                                            v146 = v194;
                                            swift_beginAccess();
                                            if (sub_1C055B098(v144, *(v146 + v145)))
                                            {
                                              v147 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__tags;
                                              v148 = v196;
                                              swift_beginAccess();
                                              v149 = *(v148 + v147);
                                              v150 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__tags;
                                              v151 = v194;
                                              swift_beginAccess();
                                              if (sub_1C055B098(v149, *(v151 + v150)))
                                              {
                                                v152 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationConfidences;
                                                v153 = v196;
                                                swift_beginAccess();
                                                v154 = *(v153 + v152);
                                                v155 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationConfidences;
                                                v156 = v194;
                                                swift_beginAccess();
                                                v157 = *(v156 + v155);

                                                v158 = sub_1C056A1D8(v154, v157);

                                                if (v158)
                                                {
                                                  v159 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationPhoneSequences;
                                                  v160 = v196;
                                                  swift_beginAccess();
                                                  v161 = *(v160 + v159);
                                                  v162 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationPhoneSequences;
                                                  v163 = v194;
                                                  swift_beginAccess();
                                                  v164 = *(v163 + v162);

                                                  v165 = sub_1C056A314(v161, v164);

                                                  if (v165)
                                                  {
                                                    v166 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__metadata;
                                                    v167 = v196;
                                                    swift_beginAccess();
                                                    v168 = *(v167 + v166);
                                                    v169 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__metadata;
                                                    v170 = v194;
                                                    swift_beginAccess();
                                                    if (v168 == *(v170 + v169))
                                                    {
                                                      v171 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesStartTime;
                                                      v172 = v196;
                                                      swift_beginAccess();
                                                      v173 = *(v172 + v171);
                                                      v174 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesStartTime;
                                                      v175 = v194;
                                                      swift_beginAccess();
                                                      if (v173 == *(v175 + v174))
                                                      {
                                                        v176 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesEndTime;
                                                        v177 = v196;
                                                        swift_beginAccess();
                                                        v178 = *(v177 + v176);

                                                        v179 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesEndTime;
                                                        v180 = v194;
                                                        swift_beginAccess();
                                                        v181 = *(v180 + v179);

                                                        return v178 == v181;
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                goto LABEL_9;
              }

              goto LABEL_37;
            }

            v94 = v185;
            sub_1C05149F8(v90, v185, &qword_1EBE179C8, &qword_1C0972E60);
            if (v69(v90 + v89, 1, v91) == 1)
            {
              sub_1C05145B4(v72, &qword_1EBE179C8, &qword_1C0972E60);
              sub_1C081FD38(v94, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
LABEL_37:
              v95 = qword_1EBE1FE20;
              v96 = &unk_1C09A6760;
              v97 = v90;
LABEL_38:
              sub_1C05145B4(v97, v95, v96);
              goto LABEL_9;
            }

            v98 = v90 + v89;
            v99 = v183;
            sub_1C081E580(v98, v183, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
            v100 = *(v91 + 20);
            v101 = *(v94 + v100);
            v102 = *(v99 + v100);
            v93 = v196;
            if (v101 != v102)
            {

              v103 = sub_1C08170B0(v101, v102);

              if (!v103)
              {
                sub_1C081FD38(v99, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
                sub_1C05145B4(v72, &qword_1EBE179C8, &qword_1C0972E60);
                sub_1C081FD38(v185, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
                v97 = v182;
                v95 = &qword_1EBE179C8;
                v96 = &qword_1C0972E60;
                goto LABEL_38;
              }
            }

            sub_1C095D38C();
            sub_1C081FD98(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
            v104 = v185;
            v105 = sub_1C095D73C();
            sub_1C081FD38(v99, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
            sub_1C05145B4(v72, &qword_1EBE179C8, &qword_1C0972E60);
            sub_1C081FD38(v104, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
            sub_1C05145B4(v182, &qword_1EBE179C8, &qword_1C0972E60);
            if (v105)
            {
              goto LABEL_42;
            }

            goto LABEL_9;
          }
        }

        else
        {
          v73 = v187;
          sub_1C05149F8(v67, v187, &qword_1EBE179C8, &qword_1C0972E60);
          if (v69(v67 + v66, 1, v68) != 1)
          {
            v77 = v67 + v66;
            v78 = v184;
            sub_1C081E580(v77, v184, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
            v79 = *(v68 + 20);
            v80 = *(v73 + v79);
            v81 = *(v78 + v79);
            if (v80 == v81 || (, , v82 = sub_1C08170B0(v80, v81), , , v82))
            {
              v193 = v70;
              sub_1C095D38C();
              sub_1C081FD98(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
              v83 = v64;
              v84 = v187;
              v85 = sub_1C095D73C();
              sub_1C081FD38(v78, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
              sub_1C05145B4(v83, &qword_1EBE179C8, &qword_1C0972E60);
              sub_1C081FD38(v84, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
              sub_1C05145B4(v67, &qword_1EBE179C8, &qword_1C0972E60);
              v72 = v186;
              if ((v85 & 1) == 0)
              {
                goto LABEL_9;
              }

              goto LABEL_32;
            }

            sub_1C081FD38(v78, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
            sub_1C05145B4(v64, &qword_1EBE179C8, &qword_1C0972E60);
            sub_1C081FD38(v187, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
            v76 = v67;
            v74 = &qword_1EBE179C8;
            v75 = &qword_1C0972E60;
LABEL_26:
            sub_1C05145B4(v76, v74, v75);
            goto LABEL_9;
          }

          sub_1C05145B4(v64, &qword_1EBE179C8, &qword_1C0972E60);
          sub_1C081FD38(v73, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
        }

        v74 = qword_1EBE1FE20;
        v75 = &unk_1C09A6760;
        v76 = v67;
        goto LABEL_26;
      }

      sub_1C05145B4(v30, &qword_1EBE17778, &unk_1C0971260);
      sub_1C081FD38(v47, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    }

    sub_1C05145B4(v25, &qword_1EBE179A8, &qword_1C0972E40);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1C08186CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C081FD98(&qword_1EBE1FDF8, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MatchingSpan);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C081876C(uint64_t a1)
{
  v2 = sub_1C081FD98(&qword_1EBE0FC90, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MatchingSpan);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C08187D8(uint64_t a1, uint64_t a2)
{
  sub_1C081FD98(&qword_1EBE0FC90, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MatchingSpan);

  return sub_1C095D5AC();
}

uint64_t sub_1C08188B4()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1FD38);
  __swift_project_value_buffer(v0, qword_1EBE1FD38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C0973530;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 6;
  *v5 = "floatValue";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 7;
  *v9 = "doubleValue";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 8;
  *v11 = "intValue";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 9;
  *v13 = "longValue";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 10;
  *v15 = "stringValue";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 11;
  *v17 = "dateTimeValue";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 12;
  *v19 = "scalarValue";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 13;
  *v21 = "semanticTagValue";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 14;
  *v22 = "semanticValue";
  *(v22 + 8) = 13;
  *(v22 + 16) = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t sub_1C0818C50()
{
  type metadata accessor for Com_Apple_Siri_Product_Proto_Value._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  qword_1EBE15460 = v0;
  return result;
}

uint64_t sub_1C0818CD4()
{
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value, &qword_1EBE1F7F8, &unk_1C0999E50);

  return swift_deallocClassInstance();
}

uint64_t Com_Apple_Siri_Product_Proto_Value.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v3 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = a1;
    v14 = v13;
    type metadata accessor for Com_Apple_Siri_Product_Proto_Value._StorageClass(0);
    v15 = swift_allocObject();
    v25 = a3;
    v26 = v4;
    v16 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
    v17 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
    (*(*(v17 - 8) + 56))(v15 + v16, 1, 1, v17);
    v18 = a2;
    v19 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
    swift_beginAccess();
    v20 = v14 + v19;
    a2 = v18;
    sub_1C05149F8(v20, v10, &qword_1EBE1F7F8, &unk_1C0999E50);
    swift_beginAccess();
    v21 = v15 + v16;
    a3 = v25;
    sub_1C051F9D4(v10, v21, &qword_1EBE1F7F8, &unk_1C0999E50);
    swift_endAccess();
    a1 = v24;

    *(v3 + v11) = v15;
    v13 = v15;
  }

  return sub_1C0818F0C(v13, a1, a2, a3);
}

uint64_t sub_1C0818F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 9)
    {
      if (result > 7)
      {
        if (result == 8)
        {
          sub_1C0819538(a1, a2, a3, a4);
        }

        else
        {
          sub_1C0819770(a1, a2, a3, a4);
        }
      }

      else if (result == 6)
      {
        sub_1C08190BC(a1, a2, a3, a4);
      }

      else if (result == 7)
      {
        sub_1C08192F4(a1, a2, a3, a4);
      }
    }

    else if (result <= 11)
    {
      if (result == 10)
      {
        sub_1C081A574(a1, a2, a3, a4, 4u);
      }

      else
      {
        sub_1C08199B4(a1, a2, a3, a4);
      }
    }

    else
    {
      switch(result)
      {
        case 12:
          sub_1C0819F94(a1, a2, a3, a4);
          break;
        case 13:
          sub_1C081A574(a1, a2, a3, a4, 7u);
          break;
        case 14:
          sub_1C081A7C4(a1, a2, a3, a4);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1C08190BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v18 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  v17 = a1;
  sub_1C05149F8(a1 + v10, v9, &qword_1EBE1F7F8, &unk_1C0999E50);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  v12 = *(v11 - 8);
  LODWORD(a1) = (*(v12 + 48))(v9, 1, v11);
  sub_1C05145B4(v9, &qword_1EBE1F7F8, &unk_1C0999E50);
  if (a1 == 1)
  {
    v13 = v20;
  }

  else
  {
    v13 = v20;
    result = sub_1C095D42C();
    if (v13)
    {
      return result;
    }
  }

  v21 = 0;
  v22 = 1;
  result = sub_1C095D46C();
  if (!v13 && (v22 & 1) == 0)
  {
    v15 = v18;
    *v18 = v21;
    swift_storeEnumTagMultiPayload();
    (*(v12 + 56))(v15, 0, 1, v11);
    v16 = v17;
    swift_beginAccess();
    sub_1C051F9D4(v15, v16 + v10, &qword_1EBE1F7F8, &unk_1C0999E50);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1C08192F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v19 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  v18 = a1;
  sub_1C05149F8(a1 + v10, v9, &qword_1EBE1F7F8, &unk_1C0999E50);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  v12 = *(v11 - 8);
  LODWORD(a1) = (*(v12 + 48))(v9, 1, v11);
  sub_1C05145B4(v9, &qword_1EBE1F7F8, &unk_1C0999E50);
  if (a1 == 1)
  {
    v13 = v23;
  }

  else
  {
    v13 = v23;
    result = sub_1C095D42C();
    if (v13)
    {
      return result;
    }
  }

  v21 = 0;
  v22 = 1;
  result = sub_1C095D4DC();
  if (!v13 && (v22 & 1) == 0)
  {
    v15 = v19;
    *v19 = v21;
    swift_storeEnumTagMultiPayload();
    (*(v12 + 56))(v15, 0, 1, v11);
    v16 = v18;
    swift_beginAccess();
    sub_1C051F9D4(v15, v16 + v10, &qword_1EBE1F7F8, &unk_1C0999E50);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1C0819538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v18 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  v17 = a1;
  sub_1C05149F8(a1 + v10, v9, &qword_1EBE1F7F8, &unk_1C0999E50);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  v12 = *(v11 - 8);
  LODWORD(a1) = (*(v12 + 48))(v9, 1, v11);
  sub_1C05145B4(v9, &qword_1EBE1F7F8, &unk_1C0999E50);
  if (a1 == 1)
  {
    v13 = v20;
  }

  else
  {
    v13 = v20;
    result = sub_1C095D42C();
    if (v13)
    {
      return result;
    }
  }

  v21 = 0;
  v22 = 1;
  result = sub_1C095D47C();
  if (!v13 && (v22 & 1) == 0)
  {
    v15 = v18;
    *v18 = v21;
    swift_storeEnumTagMultiPayload();
    (*(v12 + 56))(v15, 0, 1, v11);
    v16 = v17;
    swift_beginAccess();
    sub_1C051F9D4(v15, v16 + v10, &qword_1EBE1F7F8, &unk_1C0999E50);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1C0819770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v19 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  v18 = a1;
  sub_1C05149F8(a1 + v10, v9, &qword_1EBE1F7F8, &unk_1C0999E50);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  v12 = *(v11 - 8);
  LODWORD(a1) = (*(v12 + 48))(v9, 1, v11);
  sub_1C05145B4(v9, &qword_1EBE1F7F8, &unk_1C0999E50);
  if (a1 == 1)
  {
    v13 = v23;
  }

  else
  {
    v13 = v23;
    result = sub_1C095D42C();
    if (v13)
    {
      return result;
    }
  }

  v21 = 0;
  v22 = 1;
  result = sub_1C095D49C();
  if (!v13 && (v22 & 1) == 0)
  {
    v15 = v19;
    *v19 = v21;
    swift_storeEnumTagMultiPayload();
    (*(v12 + 56))(v15, 0, 1, v11);
    v16 = v18;
    swift_beginAccess();
    sub_1C051F9D4(v15, v16 + v10, &qword_1EBE1F7F8, &unk_1C0999E50);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1C08199B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  v54 = a2;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v48 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - v13;
  v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v43 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FE08, &qword_1C09A6748);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v50 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v43 - v25;
  v51 = v6;
  v27 = *(v6 + 56);
  v53 = v5;
  v44 = v27;
  v27(&v43 - v25, 1, 1, v5);
  v28 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  v49 = a1;
  sub_1C05149F8(a1 + v28, v14, &qword_1EBE1F7F8, &unk_1C0999E50);
  v46 = v16;
  v29 = *(v16 + 48);
  v52 = v15;
  if (v29(v14, 1, v15) == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE1F7F8, &unk_1C0999E50);
    v30 = v53;
    v31 = v55;
  }

  else
  {
    sub_1C081E580(v14, v21, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    v34 = v55;
    sub_1C095D42C();
    v31 = v34;
    if (v34)
    {
      sub_1C081FD38(v21, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
      goto LABEL_8;
    }

    sub_1C081E580(v21, v19, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C05145B4(v26, &qword_1EBE1FE08, &qword_1C09A6748);
      v36 = v19;
      v37 = v45;
      sub_1C081E580(v36, v45, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime);
      sub_1C081E580(v37, v26, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime);
      v30 = v53;
      v44(v26, 0, 1, v53);
    }

    else
    {
      sub_1C081FD38(v19, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
      v30 = v53;
    }
  }

  sub_1C081FD98(&qword_1EBE17E70, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_DateTime);
  sub_1C095D55C();
  if (v31)
  {
LABEL_8:
    v33 = v26;
    return sub_1C05145B4(v33, &qword_1EBE1FE08, &qword_1C09A6748);
  }

  v32 = v50;
  sub_1C0575620(v26, v50, &qword_1EBE1FE08, &qword_1C09A6748);
  if ((*(v51 + 48))(v32, 1, v30) != 1)
  {
    v38 = v47;
    sub_1C081E580(v32, v47, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime);
    v39 = v38;
    v40 = v48;
    sub_1C081E580(v39, v48, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime);
    v41 = v52;
    swift_storeEnumTagMultiPayload();
    (*(v46 + 56))(v40, 0, 1, v41);
    v42 = v49;
    swift_beginAccess();
    sub_1C051F9D4(v40, v42 + v28, &qword_1EBE1F7F8, &unk_1C0999E50);
    return swift_endAccess();
  }

  v33 = v32;
  return sub_1C05145B4(v33, &qword_1EBE1FE08, &qword_1C09A6748);
}

uint64_t sub_1C0819F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  v54 = a2;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v48 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - v13;
  v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v43 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FE10, &qword_1C09A6750);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v50 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v43 - v25;
  v51 = v6;
  v27 = *(v6 + 56);
  v53 = v5;
  v44 = v27;
  v27(&v43 - v25, 1, 1, v5);
  v28 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  v49 = a1;
  sub_1C05149F8(a1 + v28, v14, &qword_1EBE1F7F8, &unk_1C0999E50);
  v46 = v16;
  v29 = *(v16 + 48);
  v52 = v15;
  if (v29(v14, 1, v15) == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE1F7F8, &unk_1C0999E50);
    v30 = v53;
    v31 = v55;
  }

  else
  {
    sub_1C081E580(v14, v21, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    v34 = v55;
    sub_1C095D42C();
    v31 = v34;
    if (v34)
    {
      sub_1C081FD38(v21, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
      goto LABEL_8;
    }

    sub_1C081E580(v21, v19, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C05145B4(v26, &qword_1EBE1FE10, &qword_1C09A6750);
      v36 = v19;
      v37 = v45;
      sub_1C081E580(v36, v45, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue);
      sub_1C081E580(v37, v26, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue);
      v30 = v53;
      v44(v26, 0, 1, v53);
    }

    else
    {
      sub_1C081FD38(v19, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
      v30 = v53;
    }
  }

  sub_1C081FD98(&qword_1EBE1FDC8, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_ScalarValue);
  sub_1C095D55C();
  if (v31)
  {
LABEL_8:
    v33 = v26;
    return sub_1C05145B4(v33, &qword_1EBE1FE10, &qword_1C09A6750);
  }

  v32 = v50;
  sub_1C0575620(v26, v50, &qword_1EBE1FE10, &qword_1C09A6750);
  if ((*(v51 + 48))(v32, 1, v30) != 1)
  {
    v38 = v47;
    sub_1C081E580(v32, v47, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue);
    v39 = v38;
    v40 = v48;
    sub_1C081E580(v39, v48, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue);
    v41 = v52;
    swift_storeEnumTagMultiPayload();
    (*(v46 + 56))(v40, 0, 1, v41);
    v42 = v49;
    swift_beginAccess();
    sub_1C051F9D4(v40, v42 + v28, &qword_1EBE1F7F8, &unk_1C0999E50);
    return swift_endAccess();
  }

  v33 = v32;
  return sub_1C05145B4(v33, &qword_1EBE1FE10, &qword_1C09A6750);
}

uint64_t sub_1C081A574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v19 = a5;
  v21 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v20 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  v18 = a1;
  sub_1C05149F8(a1 + v11, v10, &qword_1EBE1F7F8, &unk_1C0999E50);
  v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  v13 = *(v12 - 8);
  LODWORD(a1) = (*(v13 + 48))(v10, 1, v12);
  sub_1C05145B4(v10, &qword_1EBE1F7F8, &unk_1C0999E50);
  if (a1 == 1)
  {
    v14 = v24;
  }

  else
  {
    v14 = v24;
    result = sub_1C095D42C();
    if (v14)
    {
      return result;
    }
  }

  v22 = 0;
  v23 = 0;
  sub_1C095D4FC();
  result = v23;
  if (v14)
  {
  }

  if (v23)
  {
    v16 = v20;
    *v20 = v22;
    *(v16 + 8) = result;
    swift_storeEnumTagMultiPayload();
    (*(v13 + 56))(v16, 0, 1, v12);
    v17 = v18;
    swift_beginAccess();
    sub_1C051F9D4(v16, v17 + v11, &qword_1EBE1F7F8, &unk_1C0999E50);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1C081A7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  v54 = a2;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v48 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - v13;
  v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v43 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v50 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v43 - v25;
  v51 = v6;
  v27 = *(v6 + 56);
  v53 = v5;
  v44 = v27;
  v27(&v43 - v25, 1, 1, v5);
  v28 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  v49 = a1;
  sub_1C05149F8(a1 + v28, v14, &qword_1EBE1F7F8, &unk_1C0999E50);
  v46 = v16;
  v29 = *(v16 + 48);
  v52 = v15;
  if (v29(v14, 1, v15) == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE1F7F8, &unk_1C0999E50);
    v30 = v53;
    v31 = v55;
  }

  else
  {
    sub_1C081E580(v14, v21, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    v34 = v55;
    sub_1C095D42C();
    v31 = v34;
    if (v34)
    {
      sub_1C081FD38(v21, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
      goto LABEL_8;
    }

    sub_1C081E580(v21, v19, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C05145B4(v26, &qword_1EBE16B50, &unk_1C096E0F0);
      v36 = v19;
      v37 = v45;
      sub_1C081E580(v36, v45, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      sub_1C081E580(v37, v26, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      v30 = v53;
      v44(v26, 0, 1, v53);
    }

    else
    {
      sub_1C081FD38(v19, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
      v30 = v53;
    }
  }

  sub_1C081FD98(&qword_1EBE15188, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_SemanticValue);
  sub_1C095D55C();
  if (v31)
  {
LABEL_8:
    v33 = v26;
    return sub_1C05145B4(v33, &qword_1EBE16B50, &unk_1C096E0F0);
  }

  v32 = v50;
  sub_1C0575620(v26, v50, &qword_1EBE16B50, &unk_1C096E0F0);
  if ((*(v51 + 48))(v32, 1, v30) != 1)
  {
    v38 = v47;
    sub_1C081E580(v32, v47, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    v39 = v38;
    v40 = v48;
    sub_1C081E580(v39, v48, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    v41 = v52;
    swift_storeEnumTagMultiPayload();
    (*(v46 + 56))(v40, 0, 1, v41);
    v42 = v49;
    swift_beginAccess();
    sub_1C051F9D4(v40, v42 + v28, &qword_1EBE1F7F8, &unk_1C0999E50);
    return swift_endAccess();
  }

  v33 = v32;
  return sub_1C05145B4(v33, &qword_1EBE16B50, &unk_1C096E0F0);
}

uint64_t sub_1C081ADE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C081AE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(a1 + v11, v10, &qword_1EBE1F7F8, &unk_1C0999E50);
  v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  result = (*(*(v12 - 8) + 48))(v10, 1, v12);
  if (result != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          return sub_1C081B450(a1, a2, a3, a4);
        }

        else
        {
          return sub_1C081B5DC(a1, a2, a3, a4);
        }
      }

      else if (EnumCaseMultiPayload)
      {
        return sub_1C081B2C4(a1, a2, a3, a4);
      }

      else
      {
        return sub_1C081B13C(a1, a2, a3, a4);
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 5)
      {
        if (EnumCaseMultiPayload == 4)
        {
          sub_1C081FD38(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
          return sub_1C081B768(a1, a2, a3, a4);
        }

        sub_1C081B908(a1, a2, a3, a4);
      }

      else if (EnumCaseMultiPayload == 6)
      {
        sub_1C081BB60(a1, a2, a3, a4);
      }

      else
      {
        if (EnumCaseMultiPayload == 7)
        {
          sub_1C081FD38(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
          return sub_1C081BDB8(a1, a2, a3, a4);
        }

        sub_1C081BF58(a1, a2, a3, a4);
      }

      return sub_1C081FD38(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    }
  }

  return result;
}

uint64_t sub_1C081B13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(a1 + v8, v7, &qword_1EBE1F7F8, &unk_1C0999E50);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE1F7F8, &unk_1C0999E50);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    return sub_1C095D61C();
  }

  result = sub_1C081FD38(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_1C081B2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(a1 + v8, v7, &qword_1EBE1F7F8, &unk_1C0999E50);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE1F7F8, &unk_1C0999E50);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C095D65C();
  }

  result = sub_1C081FD38(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_1C081B450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(a1 + v8, v7, &qword_1EBE1F7F8, &unk_1C0999E50);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE1F7F8, &unk_1C0999E50);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    return sub_1C095D62C();
  }

  result = sub_1C081FD38(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_1C081B5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(a1 + v8, v7, &qword_1EBE1F7F8, &unk_1C0999E50);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE1F7F8, &unk_1C0999E50);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    return sub_1C095D63C();
  }

  result = sub_1C081FD38(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_1C081B768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(a1 + v8, v7, &qword_1EBE1F7F8, &unk_1C0999E50);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE1F7F8, &unk_1C0999E50);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1C095D66C();
  }

  result = sub_1C081FD38(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_1C081B908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(a1 + v11, v7, &qword_1EBE1F7F8, &unk_1C0999E50);
  v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE1F7F8, &unk_1C0999E50);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1C081E580(v7, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime);
    sub_1C081FD98(&qword_1EBE17E70, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_DateTime);
    sub_1C095D6AC();
    return sub_1C081FD38(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime);
  }

  result = sub_1C081FD38(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_1C081BB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(a1 + v11, v7, &qword_1EBE1F7F8, &unk_1C0999E50);
  v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE1F7F8, &unk_1C0999E50);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_1C081E580(v7, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue);
    sub_1C081FD98(&qword_1EBE1FDC8, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_ScalarValue);
    sub_1C095D6AC();
    return sub_1C081FD38(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue);
  }

  result = sub_1C081FD38(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_1C081BDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(a1 + v8, v7, &qword_1EBE1F7F8, &unk_1C0999E50);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE1F7F8, &unk_1C0999E50);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_1C095D66C();
  }

  result = sub_1C081FD38(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_1C081BF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(a1 + v11, v7, &qword_1EBE1F7F8, &unk_1C0999E50);
  v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE1F7F8, &unk_1C0999E50);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1C081E580(v7, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    sub_1C081FD98(&qword_1EBE15188, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_SemanticValue);
    sub_1C095D6AC();
    return sub_1C081FD38(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  }

  result = sub_1C081FD38(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  __break(1u);
  return result;
}

BOOL sub_1C081C1F4(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FE00, &qword_1C09A6740);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v26 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  v15 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(a1 + v15, v14, &qword_1EBE1F7F8, &unk_1C0999E50);
  v16 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  v17 = v27;
  swift_beginAccess();
  v18 = *(v7 + 56);
  sub_1C05149F8(v14, v9, &qword_1EBE1F7F8, &unk_1C0999E50);
  sub_1C05149F8(v17 + v16, &v9[v18], &qword_1EBE1F7F8, &unk_1C0999E50);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) != 1)
  {
    v20 = v26;
    sub_1C05149F8(v9, v26, &qword_1EBE1F7F8, &unk_1C0999E50);
    if (v19(&v9[v18], 1, v3) != 1)
    {
      v22 = v25;
      sub_1C081E580(&v9[v18], v25, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
      v23 = _s12SiriOntology010Com_Apple_A20_Product_Proto_ValueV06OneOf_G0O2eeoiySbAE_AEtFZ_0(v20, v22);
      sub_1C081FD38(v22, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
      sub_1C05145B4(v14, &qword_1EBE1F7F8, &unk_1C0999E50);
      sub_1C081FD38(v20, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
      sub_1C05145B4(v9, &qword_1EBE1F7F8, &unk_1C0999E50);
      return (v23 & 1) != 0;
    }

    sub_1C05145B4(v14, &qword_1EBE1F7F8, &unk_1C0999E50);
    sub_1C081FD38(v20, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
LABEL_6:
    sub_1C05145B4(v9, &qword_1EBE1FE00, &qword_1C09A6740);
    return 0;
  }

  sub_1C05145B4(v14, &qword_1EBE1F7F8, &unk_1C0999E50);
  if (v19(&v9[v18], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_1C05145B4(v9, &qword_1EBE1F7F8, &unk_1C0999E50);
  return 1;
}

uint64_t sub_1C081C65C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C081FD98(&qword_1EBE1FDF0, type metadata accessor for Com_Apple_Siri_Product_Proto_Value, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Value);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C081C6FC(uint64_t a1)
{
  v2 = sub_1C081FD98(&qword_1EBE15438, type metadata accessor for Com_Apple_Siri_Product_Proto_Value, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Value);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C081C768(uint64_t a1, uint64_t a2)
{
  sub_1C081FD98(&qword_1EBE15438, type metadata accessor for Com_Apple_Siri_Product_Proto_Value, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Value);

  return sub_1C095D5AC();
}

uint64_t sub_1C081C844()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1FD50);
  __swift_project_value_buffer(v0, qword_1EBE1FD50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "unit";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C081CA30()
{
  type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__unit;
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  result = (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  qword_1EBE1FD68 = v0;
  return result;
}

uint64_t sub_1C081CAFC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__unit;
  v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(a1 + v13, v8, &qword_1EBE17778, &unk_1C0971260);
  swift_beginAccess();
  sub_1C051F9D4(v8, v1 + v9, &qword_1EBE17778, &unk_1C0971260);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__unit;
  swift_beginAccess();
  sub_1C05149F8(a1 + v14, v5, &qword_1EBE16B50, &unk_1C096E0F0);

  swift_beginAccess();
  sub_1C051F9D4(v5, v1 + v11, &qword_1EBE16B50, &unk_1C096E0F0);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C081CD48()
{
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value, &qword_1EBE17778, &unk_1C0971260);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__unit, &qword_1EBE16B50, &unk_1C096E0F0);

  return swift_deallocClassInstance();
}

uint64_t Com_Apple_Siri_Product_Proto_ScalarValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue._StorageClass(0);
    swift_allocObject();
    v10 = sub_1C081CAFC(v11);
    *(v4 + v8) = v10;
  }

  return sub_1C081CE84(v10, a1, a2, a3);
}

uint64_t sub_1C081CE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C095D41C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C081CF38(a2, a1, a3, a4, &OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value);
      }

      else if (result == 2)
      {
        sub_1C081D010(a2, a1, a3, a4);
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C081CF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  sub_1C081FD98(&qword_1EBE15438, type metadata accessor for Com_Apple_Siri_Product_Proto_Value, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Value);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C081D010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  sub_1C081FD98(&qword_1EBE15188, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_SemanticValue);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C081D12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v28 = a4;
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v22 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(a1 + v17, v12, &qword_1EBE17778, &unk_1C0971260);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17778, &unk_1C0971260);
  }

  else
  {
    sub_1C081E580(v12, v16, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    sub_1C081FD98(&qword_1EBE15438, type metadata accessor for Com_Apple_Siri_Product_Proto_Value, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Value);
    v18 = v25;
    sub_1C095D6AC();
    result = sub_1C081FD38(v16, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    if (v18)
    {
      return result;
    }
  }

  v20 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__unit;
  swift_beginAccess();
  sub_1C05149F8(a1 + v20, v7, &qword_1EBE16B50, &unk_1C096E0F0);
  if ((*(v23 + 48))(v7, 1, v24) == 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE16B50, &unk_1C096E0F0);
  }

  v21 = v22;
  sub_1C081E580(v7, v22, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  sub_1C081FD98(&qword_1EBE15188, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_SemanticValue);
  sub_1C095D6AC();
  return sub_1C081FD38(v21, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
}

BOOL sub_1C081D548(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v49 = (&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C08, &unk_1C0970520);
  MEMORY[0x1EEE9AC00](v53);
  v57 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v50 = (&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v49 - v9;
  v58 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v10 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v51 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179A8, &qword_1C0972E40);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v49 - v20;
  v22 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  v23 = a1 + v22;
  v24 = v59;
  sub_1C05149F8(v23, v21, &qword_1EBE17778, &unk_1C0971260);
  v25 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  v26 = *(v13 + 56);
  sub_1C05149F8(v21, v15, &qword_1EBE17778, &unk_1C0971260);
  v27 = v58;
  sub_1C05149F8(v24 + v25, &v15[v26], &qword_1EBE17778, &unk_1C0971260);
  v28 = *(v10 + 48);
  if (v28(v15, 1, v27) != 1)
  {
    v52 = a1;
    sub_1C05149F8(v15, v19, &qword_1EBE17778, &unk_1C0971260);
    v30 = v19;
    if (v28(&v15[v26], 1, v27) != 1)
    {
      v31 = v21;
      v32 = v51;
      sub_1C081E580(&v15[v26], v51, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
      v33 = *(v27 + 20);
      v34 = *(v30 + v33);
      v35 = *(v32 + v33);

      if (v34 == v35 || (, , v36 = sub_1C081C1F4(v34, v35), , , v36))
      {
        sub_1C095D38C();
        sub_1C081FD98(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
        v37 = sub_1C095D73C();
        sub_1C081FD38(v32, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
        sub_1C05145B4(v31, &qword_1EBE17778, &unk_1C0971260);
        sub_1C081FD38(v30, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
        sub_1C05145B4(v15, &qword_1EBE17778, &unk_1C0971260);
        v29 = v52;
        if (v37)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_1C081FD38(v32, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
        sub_1C05145B4(v31, &qword_1EBE17778, &unk_1C0971260);
        sub_1C081FD38(v30, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
        sub_1C05145B4(v15, &qword_1EBE17778, &unk_1C0971260);
      }

LABEL_7:

      return 0;
    }

    sub_1C05145B4(v21, &qword_1EBE17778, &unk_1C0971260);
    sub_1C081FD38(v19, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
LABEL_6:
    sub_1C05145B4(v15, &qword_1EBE179A8, &qword_1C0972E40);
    goto LABEL_7;
  }

  sub_1C05145B4(v21, &qword_1EBE17778, &unk_1C0971260);
  v29 = a1;
  if (v28(&v15[v26], 1, v27) != 1)
  {
    goto LABEL_6;
  }

  sub_1C05145B4(v15, &qword_1EBE17778, &unk_1C0971260);
LABEL_11:
  v38 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__unit;
  swift_beginAccess();
  v39 = v54;
  sub_1C05149F8(v29 + v38, v54, &qword_1EBE16B50, &unk_1C096E0F0);
  v40 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__unit;
  swift_beginAccess();
  v41 = *(v53 + 48);
  v42 = v57;
  sub_1C05149F8(v39, v57, &qword_1EBE16B50, &unk_1C096E0F0);
  sub_1C05149F8(v24 + v40, v42 + v41, &qword_1EBE16B50, &unk_1C096E0F0);
  v43 = v56;
  v44 = *(v55 + 48);
  if (v44(v42, 1, v56) == 1)
  {

    sub_1C05145B4(v39, &qword_1EBE16B50, &unk_1C096E0F0);
    if (v44(v42 + v41, 1, v43) == 1)
    {
      sub_1C05145B4(v42, &qword_1EBE16B50, &unk_1C096E0F0);
      return 1;
    }

    goto LABEL_16;
  }

  v45 = v50;
  sub_1C05149F8(v42, v50, &qword_1EBE16B50, &unk_1C096E0F0);
  if (v44(v42 + v41, 1, v43) == 1)
  {

    sub_1C05145B4(v39, &qword_1EBE16B50, &unk_1C096E0F0);
    sub_1C081FD38(v45, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
LABEL_16:
    sub_1C05145B4(v42, &qword_1EBE16C08, &unk_1C0970520);
    return 0;
  }

  v47 = v49;
  sub_1C081E580(v42 + v41, v49, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  v48 = _s12SiriOntology010Com_Apple_A28_Product_Proto_SemanticValueV2eeoiySbAC_ACtFZ_0(v45, v47);

  sub_1C081FD38(v47, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  sub_1C05145B4(v39, &qword_1EBE16B50, &unk_1C096E0F0);
  sub_1C081FD38(v45, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  sub_1C05145B4(v42, &qword_1EBE16B50, &unk_1C096E0F0);
  return (v48 & 1) != 0;
}

uint64_t sub_1C081DEBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C081FD98(&qword_1EBE1FDE8, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_ScalarValue);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C081DF5C(uint64_t a1)
{
  v2 = sub_1C081FD98(&qword_1EBE1FDC8, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_ScalarValue);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C081DFC8(uint64_t a1, uint64_t a2)
{
  sub_1C081FD98(&qword_1EBE1FDC8, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_ScalarValue);

  return sub_1C095D5AC();
}

uint64_t sub_1C081E0A4()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE15198);
  __swift_project_value_buffer(v0, qword_1EBE15198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971200;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ontologyNodePojoClassName";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "serializedValue";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "semanticValueClassName";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tags";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C081E354(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C095DFEC();
  a1(0);
  sub_1C081FD98(a2, a3, a4);
  sub_1C095D71C();
  return sub_1C095E03C();
}

uint64_t sub_1C081E3F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C081FD98(&qword_1EBE1FDE0, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_SemanticValue);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C081E474(uint64_t a1)
{
  v2 = sub_1C081FD98(&qword_1EBE15188, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_SemanticValue);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C081E4E0(uint64_t a1, uint64_t a2)
{
  sub_1C081FD98(&qword_1EBE15188, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_SemanticValue);

  return sub_1C095D5AC();
}

uint64_t sub_1C081E580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s12SiriOntology010Com_Apple_A28_Product_Proto_SemanticValueV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1C095DF3C() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1C055B098(a1[6], a2[6]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  sub_1C095D38C();
  sub_1C081FD98(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C081E79C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
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

  sub_1C095D38C();
  sub_1C081FD98(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A20_Product_Proto_ValueV06OneOf_G0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v70 = a1;
  v71 = a2;
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v64 = (&v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue(0);
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0);
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v67 = (&v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v62 - v10);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v69 = &v62 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v68 = &v62 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v62 - v17);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v62 - v20);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = (&v62 - v23);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = (&v62 - v26);
  MEMORY[0x1EEE9AC00](v25);
  v29 = (&v62 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FE18, &qword_1C09A6758);
  v31 = MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v62 - v32;
  v34 = (&v62 + *(v31 + 56) - v32);
  sub_1C081FCD0(v70, &v62 - v32, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  sub_1C081FCD0(v71, v34, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        sub_1C081FCD0(v33, v21, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_47;
        }

        v38 = *v21 == *v34;
        goto LABEL_28;
      }

      sub_1C081FCD0(v33, v24, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v38 = *v24 == *v34;
LABEL_28:
        v46 = v38;
        goto LABEL_33;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        sub_1C081FCD0(v33, v27, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          goto LABEL_47;
        }

        v38 = *v27 == *v34;
        goto LABEL_28;
      }

      sub_1C081FCD0(v33, v29, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
      if (!swift_getEnumCaseMultiPayload())
      {
        v38 = *v29 == *v34;
        goto LABEL_28;
      }
    }

LABEL_47:
    sub_1C05145B4(v33, &qword_1EBE1FE18, &qword_1C09A6758);
LABEL_48:
    v46 = 0;
    return v46 & 1;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_1C081FCD0(v33, v18, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
      v37 = *v18;
      v36 = v18[1];
      if (swift_getEnumCaseMultiPayload() == 4)
      {
LABEL_6:
        if (v37 == *v34 && v36 == v34[1])
        {

LABEL_42:
          sub_1C081FD38(v33, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
          v46 = 1;
          return v46 & 1;
        }

        v56 = sub_1C095DF3C();

        if (v56)
        {
          goto LABEL_42;
        }

        goto LABEL_53;
      }

      goto LABEL_18;
    }

    v39 = v68;
    sub_1C081FCD0(v33, v68, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v40 = v65;
      sub_1C081E580(v34, v65, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime);
      v50 = *(v62 + 20);
      v51 = *(v39 + v50);
      v52 = *(v40 + v50);
      if (v51 == v52 || (, , v53 = sub_1C05C219C(v51, v52), , , v53))
      {
        sub_1C095D38C();
        sub_1C081FD98(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
        if (sub_1C095D73C())
        {
          v45 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime;
          goto LABEL_39;
        }
      }

      v60 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime;
LABEL_52:
      v61 = v60;
      sub_1C081FD38(v40, v60);
      sub_1C081FD38(v39, v61);
LABEL_53:
      sub_1C081FD38(v33, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
      goto LABEL_48;
    }

    v55 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime;
LABEL_45:
    v57 = v55;
    v58 = v39;
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v39 = v69;
    sub_1C081FCD0(v33, v69, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v40 = v66;
      sub_1C081E580(v34, v66, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue);
      v41 = *(v63 + 20);
      v42 = *(v39 + v41);
      v43 = *(v40 + v41);
      if (v42 == v43 || (, , v44 = sub_1C081D548(v42, v43), , , v44))
      {
        sub_1C095D38C();
        sub_1C081FD98(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
        if (sub_1C095D73C())
        {
          v45 = type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue;
LABEL_39:
          v54 = v45;
          sub_1C081FD38(v40, v45);
          sub_1C081FD38(v39, v54);
          goto LABEL_42;
        }
      }

      v60 = type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue;
      goto LABEL_52;
    }

    v55 = type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue;
    goto LABEL_45;
  }

  if (EnumCaseMultiPayload == 7)
  {
    sub_1C081FCD0(v33, v11, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    v37 = *v11;
    v36 = v11[1];
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      goto LABEL_6;
    }

LABEL_18:

    goto LABEL_47;
  }

  v47 = v67;
  sub_1C081FCD0(v33, v67, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    v57 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue;
    v58 = v47;
LABEL_46:
    sub_1C081FD38(v58, v57);
    goto LABEL_47;
  }

  v48 = v34;
  v49 = v64;
  sub_1C081E580(v48, v64, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  v46 = _s12SiriOntology010Com_Apple_A28_Product_Proto_SemanticValueV2eeoiySbAC_ACtFZ_0(v47, v49);
  sub_1C081FD38(v49, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  sub_1C081FD38(v47, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
LABEL_33:
  sub_1C081FD38(v33, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  return v46 & 1;
}

uint64_t sub_1C081F1B4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179C8, &qword_1C0972E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v97 = &v90 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v92 = &v90 - v6;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__serializedValue;
  v91 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__serializedValue;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = (v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__input);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchedTerm);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefix;
  v93 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefix;
  v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v1 + v11, 1, 1, v12);
  v94 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__suffix;
  v13(v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__suffix, 1, 1, v12);
  v95 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__start;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__start) = 0;
  v96 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__end;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__end) = 0;
  v98 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__startWithoutPrefix;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__startWithoutPrefix) = 0;
  v99 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__endWithoutSuffix;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__endWithoutSuffix) = 0;
  v100 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__confidence;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__confidence) = 0;
  v101 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefixSuffixConfidence;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefixSuffixConfidence) = 0;
  v102 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__explicit;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__explicit) = 0;
  v103 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isSuffixVariableMatch;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isSuffixVariableMatch) = 0;
  v104 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPrefixVariableMatch;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPrefixVariableMatch) = 0;
  v105 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPayloadVariableMatch;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPayloadVariableMatch) = 0;
  v14 = (v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__locale);
  v106 = (v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__locale);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v107 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__numWords;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__numWords) = 0;
  v15 = v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchType;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = (v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__appID);
  v108 = (v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__appID);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v110 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matcherNames;
  v17 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matcherNames) = MEMORY[0x1E69E7CC0];
  v111 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__tags;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__tags) = v17;
  v18 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationConfidences;
  v112 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationConfidences;
  *(v1 + v18) = sub_1C058B84C(v17);
  v19 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationPhoneSequences;
  v113 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationPhoneSequences;
  *(v1 + v19) = sub_1C058B950(v17);
  v114 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__metadata;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__metadata) = 0;
  v115 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesStartTime;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesStartTime) = 0;
  v109 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesEndTime;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesEndTime) = 0;
  swift_beginAccess();
  v21 = *(a1 + 16);
  v20 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v21;
  *(v1 + 24) = v20;

  v22 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__serializedValue;
  swift_beginAccess();
  v23 = v92;
  sub_1C05149F8(a1 + v22, v92, &qword_1EBE17778, &unk_1C0971260);
  v24 = v91;
  swift_beginAccess();
  sub_1C051F9D4(v23, v1 + v24, &qword_1EBE17778, &unk_1C0971260);
  swift_endAccess();
  v25 = (a1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__input);
  swift_beginAccess();
  v27 = *v25;
  v26 = v25[1];
  swift_beginAccess();
  *v9 = v27;
  v9[1] = v26;

  v28 = (a1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchedTerm);
  swift_beginAccess();
  v30 = *v28;
  v29 = v28[1];
  swift_beginAccess();
  *v10 = v30;
  v10[1] = v29;

  v31 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefix;
  swift_beginAccess();
  v32 = v97;
  sub_1C05149F8(a1 + v31, v97, &qword_1EBE179C8, &qword_1C0972E60);
  v33 = v93;
  swift_beginAccess();
  sub_1C051F9D4(v32, v1 + v33, &qword_1EBE179C8, &qword_1C0972E60);
  swift_endAccess();
  v34 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__suffix;
  swift_beginAccess();
  sub_1C05149F8(a1 + v34, v32, &qword_1EBE179C8, &qword_1C0972E60);
  v35 = v94;
  swift_beginAccess();
  sub_1C051F9D4(v32, v1 + v35, &qword_1EBE179C8, &qword_1C0972E60);
  swift_endAccess();
  v36 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__start;
  swift_beginAccess();
  LODWORD(v36) = *(a1 + v36);
  v37 = v95;
  swift_beginAccess();
  *(v1 + v37) = v36;
  v38 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__end;
  swift_beginAccess();
  LODWORD(v38) = *(a1 + v38);
  v39 = v96;
  swift_beginAccess();
  *(v1 + v39) = v38;
  v40 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__startWithoutPrefix;
  swift_beginAccess();
  LODWORD(v40) = *(a1 + v40);
  v41 = v98;
  swift_beginAccess();
  *(v1 + v41) = v40;
  v42 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__endWithoutSuffix;
  swift_beginAccess();
  LODWORD(v42) = *(a1 + v42);
  v43 = v99;
  swift_beginAccess();
  *(v1 + v43) = v42;
  v44 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__confidence;
  swift_beginAccess();
  LODWORD(v44) = *(a1 + v44);
  v45 = v100;
  swift_beginAccess();
  *(v1 + v45) = v44;
  v46 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefixSuffixConfidence;
  swift_beginAccess();
  LODWORD(v46) = *(a1 + v46);
  v47 = v101;
  swift_beginAccess();
  *(v1 + v47) = v46;
  v48 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__explicit;
  swift_beginAccess();
  LOBYTE(v48) = *(a1 + v48);
  v49 = v102;
  swift_beginAccess();
  *(v1 + v49) = v48;
  v50 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isSuffixVariableMatch;
  swift_beginAccess();
  LOBYTE(v50) = *(a1 + v50);
  v51 = v103;
  swift_beginAccess();
  *(v1 + v51) = v50;
  v52 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPrefixVariableMatch;
  swift_beginAccess();
  LOBYTE(v52) = *(a1 + v52);
  v53 = v104;
  swift_beginAccess();
  *(v1 + v53) = v52;
  v54 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPayloadVariableMatch;
  swift_beginAccess();
  LOBYTE(v54) = *(a1 + v54);
  v55 = v105;
  swift_beginAccess();
  *(v1 + v55) = v54;
  v56 = (a1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__locale);
  swift_beginAccess();
  v58 = *v56;
  v57 = v56[1];
  v59 = v106;
  swift_beginAccess();
  *v59 = v58;
  v59[1] = v57;

  v60 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__numWords;
  swift_beginAccess();
  LODWORD(v60) = *(a1 + v60);
  v61 = v107;
  swift_beginAccess();
  *(v1 + v61) = v60;
  v62 = (a1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchType);
  swift_beginAccess();
  v63 = *v62;
  LOBYTE(v62) = *(v62 + 8);
  swift_beginAccess();
  *v15 = v63;
  *(v15 + 8) = v62;
  v64 = (a1 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__appID);
  swift_beginAccess();
  v66 = *v64;
  v65 = v64[1];
  v67 = v108;
  swift_beginAccess();
  *v67 = v66;
  v67[1] = v65;

  v68 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matcherNames;
  swift_beginAccess();
  v69 = *(a1 + v68);
  v70 = v110;
  swift_beginAccess();
  *(v1 + v70) = v69;

  v71 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__tags;
  swift_beginAccess();
  v72 = *(a1 + v71);
  v73 = v111;
  swift_beginAccess();
  *(v1 + v73) = v72;

  v74 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationConfidences;
  swift_beginAccess();
  v75 = *(a1 + v74);
  v76 = v112;
  swift_beginAccess();
  *(v1 + v76) = v75;

  v77 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationPhoneSequences;
  swift_beginAccess();
  v78 = *(a1 + v77);
  v79 = v113;
  swift_beginAccess();
  *(v1 + v79) = v78;

  v80 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__metadata;
  swift_beginAccess();
  v81 = *(a1 + v80);
  v82 = v114;
  swift_beginAccess();
  *(v1 + v82) = v81;
  v83 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesStartTime;
  swift_beginAccess();
  v84 = *(a1 + v83);
  v85 = v115;
  swift_beginAccess();
  *(v1 + v85) = v84;
  v86 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesEndTime;
  swift_beginAccess();
  v87 = *(a1 + v86);
  v88 = v109;
  swift_beginAccess();
  *(v1 + v88) = v87;
  return v1;
}

uint64_t sub_1C081FCD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C081FD38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C081FD98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C081FDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE0FD88;
  if (!qword_1EBE0FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0FD88);
  }

  return result;
}

unint64_t sub_1C081FE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE0FD78;
  if (!qword_1EBE0FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0FD78);
  }

  return result;
}

unint64_t sub_1C081FE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE0FD80;
  if (!qword_1EBE0FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0FD80);
  }

  return result;
}

unint64_t sub_1C081FEEC()
{
  result = qword_1EBE1FDA0;
  if (!qword_1EBE1FDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1FDA8, &qword_1C09A5F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FDA0);
  }

  return result;
}

uint64_t keypath_get_31Tm_0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, _DWORD *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20));
  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t keypath_get_43Tm@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20));
  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t keypath_get_67Tm@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20));
  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t keypath_set_84Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t sub_1C08205E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1C095D38C();
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

uint64_t sub_1C082066C(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1C0820768(uint64_t a1)
{
  sub_1C0820804();
  if (v1 <= 0x3F)
  {
    sub_1C095D38C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C0820804()
{
  if (!qword_1EBE0FDA8)
  {
    v0 = sub_1C095D9FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBE0FDA8);
    }
  }
}

void sub_1C082085C(uint64_t a1)
{
  sub_1C08209D4(319, &qword_1EBE15418, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
  if (v1 <= 0x3F)
  {
    sub_1C08209D4(319, &qword_1EBE0FC80, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C08209D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C095DB0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C0820A30(uint64_t a1)
{
  sub_1C08209D4(319, &qword_1EBE15468, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C0820AE4(uint64_t a1)
{
  sub_1C08209D4(319, &qword_1EBE15418, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
  if (v1 <= 0x3F)
  {
    sub_1C08209D4(319, qword_1ED5BD8D0, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1C0820BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE0FD90;
  if (!qword_1EBE0FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0FD90);
  }

  return result;
}

__n128 StreetAddressIntentNode.init(intentNode:ontologyNode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 24);
  *a3 = *a1;
  result = *(a1 + 8);
  *(a3 + 8) = result;
  *(a3 + 24) = v3;
  *(a3 + 32) = a2;
  return result;
}

uint64_t StreetAddressIntentNode.intentNode.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
}

double static StreetAddressIntentNode.from(intentNode:ontologyNode:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a3 = *a1;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  a3[4] = a2;

  return result;
}

uint64_t sub_1C0820DD8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  inited = swift_initStaticObject();
  return a4(inited);
}

uint64_t sub_1C0820E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return OntologyNode<>.isEqualTo(_:)(a1, a2, v5, WitnessTable);
}

uint64_t OntologyNode<>.isEqualTo(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C095DB0C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19[-v9 - 8];
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1C0526080(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EA8, &unk_1C0970670);
  v14 = swift_dynamicCast();
  v15 = *(v11 + 56);
  if (v14)
  {
    v15(v10, 0, 1, a2);
    (*(v11 + 32))(v13, v10, a2);
    v16 = sub_1C095D73C();
    (*(v11 + 8))(v13, a2);
  }

  else
  {
    v15(v10, 1, 1, a2);
    (*(v7 + 8))(v10, v6);
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1C08210F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return OntologyNode<>.isEqualTo(_:)(a1, a2, v5, WitnessTable);
}

uint64_t sub_1C0821158()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1C08211B4()
{
  v1 = *v0;
  sub_1C095DFEC();
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  (*(v3 + 8))(v2, v3);
  sub_1C095D7BC();

  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  (*(v5 + 16))(v4, v5);
  sub_1C095E00C();
  return sub_1C095E03C();
}

uint64_t sub_1C0821284(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  (*(v4 + 8))(v3, v4);
  sub_1C095D7BC();

  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  (*(v6 + 16))(v5, v6);
  return sub_1C095E00C();
}

uint64_t sub_1C0821344(uint64_t a1)
{
  sub_1C095DFEC();
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  (*(v4 + 8))(v3, v4);
  sub_1C095D7BC();

  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  (*(v6 + 16))(v5, v6);
  sub_1C095E00C();
  return sub_1C095E03C();
}

uint64_t sub_1C0821410(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  __swift_project_boxed_opaque_existential_1((*a1 + 16), v3);
  return (*(v4 + 24))(v2 + 16, v3, v4) & 1;
}

unint64_t sub_1C0821478()
{
  result = qword_1EBE0FC28;
  if (!qword_1EBE0FC28)
  {
    type metadata accessor for AnyOntologyNode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0FC28);
  }

  return result;
}

uint64_t sub_1C08214CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  type metadata accessor for AnyOntologyNode();
  v7 = swift_allocObject();
  sub_1C0531D80(&v9, v7 + 16);
  return v7;
}

double sub_1C0821558@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 16))(&v30, v7, v8);
  v10 = v30;
  v9 = v31;

  v11 = *(a3 + 8);
  v12 = *(v11 + 8);
  v12(v29, a2, v11);
  v14 = v29[0];
  v13 = v29[1];

  if (v10 == v14 && v9 == v13)
  {
  }

  else
  {
    v15 = sub_1C095DF3C();

    if ((v15 & 1) == 0)
    {
      v12(v29, a2, v11);
      v16 = v29[2];

      v17 = a1[3];
      v18 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v17);
      (*(v18 + 16))(&v30, v17, v18);
      v19 = v30;
      v20 = v31;

      v28[0] = v19;
      v28[1] = v20;
      MEMORY[0x1EEE9AC00](v21);
      v26[2] = v28;
      LOBYTE(v17) = sub_1C0576198(sub_1C058D0A4, v26, v16);

      if ((v17 & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
        v25 = v27;
        *(v27 + 32) = 0;
        result = 0.0;
        *v25 = 0u;
        v25[1] = 0u;
        return result;
      }
    }
  }

  sub_1C0526080(a1, v32);
  v22 = v32[1];
  v23 = v27;
  *v27 = v32[0];
  *(v23 + 16) = v22;
  *(v23 + 32) = v33;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return result;
}

double Entity<A>.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  if (*(a1 + 24))
  {
    sub_1C0526080(a1, v14);
    v10 = type metadata accessor for Entity(0, a2, v8, v9);
    (*(*(v10 - 8) + 8))(a1, v10);
    sub_1C0531D80(v14, v15);
    sub_1C0531D80(v15, a3);
  }

  else
  {
    type metadata accessor for Entity(255, a2, a4, a5);
    v13 = sub_1C095DB0C();
    (*(*(v13 - 8) + 8))(a1, v13);
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t Entity.rawString.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t Entity.rawInt64.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t Entity.init(entityName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = &type metadata for BuilderNode;
  a3[4] = &off_1F3FA1508;
  result = swift_allocObject();
  *a3 = result;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 1;
  v7 = MEMORY[0x1E69E7CC0];
  *(result + 88) = MEMORY[0x1E69E7CC0];
  *(result + 96) = v7;
  *(result + 104) = v7;
  *(result + 112) = v7;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = 0x797469746E45;
  *(result + 40) = 0xE600000000000000;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

uint64_t Entity<A>.init(entityName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = &type metadata for BuilderNode;
  a3[4] = &off_1F3FA1508;
  result = swift_allocObject();
  *a3 = result;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 1;
  v7 = MEMORY[0x1E69E7CC0];
  *(result + 88) = MEMORY[0x1E69E7CC0];
  *(result + 96) = v7;
  *(result + 104) = v7;
  *(result + 112) = v7;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = 0x797469746E45;
  *(result + 40) = 0xE600000000000000;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

double Entity<A>.init<A>(_:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for Entity(255, a3, a3, a4);
  v10 = sub_1C095DB0C();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v19, a1, v10);
  if (v19[3])
  {
    sub_1C0526080(v19, &v20);
    (*(*(v9 - 8) + 8))(v19, v9);
    sub_1C0531D80(&v20, v23);
    sub_1C0526080(v23, v19);
    v12 = sub_1C0821558(v19, a2, a4, &v20);
    (*(v11 + 8))(a1, v10, v12);
    __swift_destroy_boxed_opaque_existential_1(v23);
    if (*(&v21 + 1))
    {
      result = *&v20;
      v16 = v21;
      *a5 = v20;
      *(a5 + 16) = v16;
      *(a5 + 32) = v22;
      return result;
    }

    type metadata accessor for Entity(255, a2, v13, v14);
    v18 = sub_1C095DB0C();
    (*(*(v18 - 8) + 8))(&v20, v18);
  }

  else
  {
    v17 = *(v11 + 8);
    v17(v19, v10);
    v17(a1, v10);
  }

  *(a5 + 32) = 0;
  result = 0.0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  return result;
}

uint64_t sub_1C0821CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C0821CFC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C095DF3C() & 1;
  }
}

uint64_t AddressOntologyNode.AddressReference.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1C095DD6C();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t AddressOntologyNode.AddressReference.rawValue.getter()
{
  if (*v0)
  {
    return 0x79627261656ELL;
  }

  else
  {
    return 6647407;
  }
}

uint64_t sub_1C0821DF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x79627261656ELL;
  }

  else
  {
    v3 = 6647407;
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
    v5 = 0x79627261656ELL;
  }

  else
  {
    v5 = 6647407;
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
    v8 = sub_1C095DF3C();
  }

  return v8 & 1;
}

unint64_t sub_1C0821E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FEA8;
  if (!qword_1EBE1FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FEA8);
  }

  return result;
}

uint64_t sub_1C0821EE8()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C0821F60(uint64_t a1)
{
  sub_1C095D7BC();
}

uint64_t sub_1C0821FC4(uint64_t a1)
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C0822038@<X0>(char *a2@<X8>)
{
  v3 = sub_1C095DD6C();

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

void sub_1C0822098(uint64_t *a1@<X8>)
{
  v2 = 6647407;
  if (*v1)
  {
    v2 = 0x79627261656ELL;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1C08220CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C08220F4(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C08220F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FEB0;
  if (!qword_1EBE1FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FEB0);
  }

  return result;
}

unint64_t sub_1C082214C()
{
  result = qword_1EBE1FEB8;
  if (!qword_1EBE1FEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1FEC0, &qword_1C09A69C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FEB8);
  }

  return result;
}

unint64_t sub_1C08221C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C08221E8(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C08221E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FEC8;
  if (!qword_1EBE1FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FEC8);
  }

  return result;
}

uint64_t UsoEntitySpan.overlaps(_:)(uint64_t a1)
{
  if (*(v1 + 132) & 1) != 0 || (*(v1 + 140))
  {
    return 0;
  }

  v3 = 0;
  if ((*(a1 + 132) & 1) == 0)
  {
    LODWORD(v3) = *(v1 + 128) < *(a1 + 136) && *(a1 + 128) < *(v1 + 136);
    if (*(a1 + 140))
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  return v3;
}

uint64_t UsoEntitySpan.indexesMatch(_:)(uint64_t a1)
{
  v2 = *(a1 + 140);
  v3 = *(v1 + 132);
  v4 = *(v1 + 140);
  if (*(a1 + 132))
  {
    if (v2 & 1 | ((v3 & 1) == 0))
    {
      return v3 & v4;
    }
  }

  else
  {
    if (*(a1 + 128) != *(v1 + 128))
    {
      v3 = 1;
    }

    if ((v3 | v2))
    {
      return (v3 ^ 1) & v4;
    }
  }

  return (*(a1 + 136) == *(v1 + 136)) & ~v4;
}

SiriOntology::UsoEntitySpan::SpanSource_optional __swiftcall UsoEntitySpan.SpanSource.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void __swiftcall AsrAlternative.init(value:probability:)(SiriOntology::AsrAlternative *__return_ptr retstr, Swift::String value, Swift::Float_optional *probability)
{
  retstr->value = value;
  LODWORD(retstr->probability.value) = probability;
  retstr->probability.is_nil = BYTE4(probability) & 1;
}

uint64_t SpanProperty.init(key:valueString:valueInt:valueFloat:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 36) = BYTE4(a5) & 1;
  *(a7 + 40) = a6;
  *(a7 + 44) = BYTE4(a6) & 1;
  return result;
}

__n128 UsoEntitySpan.init(originAppId:sourceComponent:label:matchInfo:properties:startIndex:endIndex:alternatives:originEntityId:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11, __n128 a12, uint64_t a13)
{
  v13 = *a6;
  *(a9 + 56) = a6[1];
  v14 = a6[3];
  *(a9 + 72) = a6[2];
  *(a9 + 88) = v14;
  *(a9 + 104) = a6[4];
  result = a12;
  v16 = *a3;
  *(a9 + 176) = 0;
  *(a9 + 184) = 1;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v16;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = v13;
  *(a9 + 120) = a7;
  *(a9 + 128) = a8;
  *(a9 + 132) = BYTE4(a8) & 1;
  *(a9 + 136) = a10;
  *(a9 + 140) = a11 & 1;
  *(a9 + 144) = a12;
  *(a9 + 160) = a13;
  *(a9 + 168) = 3;
  return result;
}

uint64_t sub_1C08223D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1C0822430@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

__n128 UsoEntitySpan.init(originAppId:sourceComponent:label:matchInfo:properties:startIndex:endIndex:alternatives:originEntityId:payloadAttachmentInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11, __n128 a12, uint64_t a13, char *a14)
{
  v14 = *a6;
  *(a9 + 56) = a6[1];
  v15 = a6[3];
  *(a9 + 72) = a6[2];
  *(a9 + 88) = v15;
  *(a9 + 104) = a6[4];
  result = a12;
  v17 = *a3;
  v18 = *a14;
  *(a9 + 176) = 0;
  *(a9 + 184) = 1;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v17;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = v14;
  *(a9 + 120) = a7;
  *(a9 + 128) = a8;
  *(a9 + 132) = BYTE4(a8) & 1;
  *(a9 + 136) = a10;
  *(a9 + 140) = a11 & 1;
  *(a9 + 144) = a12;
  *(a9 + 160) = a13;
  *(a9 + 168) = v18;
  return result;
}

uint64_t MatchInfo.init(matchSignals:matchScore:maxTokenCount:matchedTokenCount:maxStopWordCount:matchedStopWordCount:editDistance:maxAliasCount:matchedAliasCount:matchedAliasTypes:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11, uint64_t a12)
{
  v12 = *a1;
  result = BYTE4(a8) & 1;
  *a9 = v12;
  *(a9 + 4) = a2;
  *(a9 + 8) = BYTE4(a2) & 1;
  *(a9 + 12) = a3;
  *(a9 + 16) = BYTE4(a3) & 1;
  *(a9 + 20) = a4;
  *(a9 + 24) = BYTE4(a4) & 1;
  *(a9 + 28) = a5;
  *(a9 + 32) = BYTE4(a5) & 1;
  *(a9 + 36) = a6;
  *(a9 + 40) = BYTE4(a6) & 1;
  *(a9 + 44) = a7;
  *(a9 + 48) = BYTE4(a7) & 1;
  *(a9 + 52) = a8;
  *(a9 + 56) = result;
  *(a9 + 60) = a10;
  *(a9 + 64) = a11 & 1;
  *(a9 + 72) = a12;
  return result;
}

uint64_t MatchInfo.init(matchSignalBitSet:matchScore:maxTokenCount:matchedTokenCount:maxStopWordCount:matchedStopWordCount:editDistance:maxAliasCount:matchedAliasCount:matchedAliasTypes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11, uint64_t a12)
{
  *a9 = result;
  *(a9 + 4) = a2;
  *(a9 + 8) = BYTE4(a2) & 1;
  *(a9 + 12) = a3;
  *(a9 + 16) = BYTE4(a3) & 1;
  *(a9 + 20) = a4;
  *(a9 + 24) = BYTE4(a4) & 1;
  *(a9 + 28) = a5;
  *(a9 + 32) = BYTE4(a5) & 1;
  *(a9 + 36) = a6;
  *(a9 + 40) = BYTE4(a6) & 1;
  *(a9 + 44) = a7;
  *(a9 + 48) = BYTE4(a7) & 1;
  *(a9 + 52) = a8;
  *(a9 + 56) = BYTE4(a8) & 1;
  *(a9 + 60) = a10;
  *(a9 + 64) = a11 & 1;
  *(a9 + 72) = a12;
  return result;
}

uint64_t UsoEntitySpan.originAppId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UsoEntitySpan.label.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t UsoEntitySpan.matchInfo.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 88);
  v9 = *(v1 + 72);
  v10 = v3;
  v11 = *(v1 + 104);
  v4 = v11;
  v8[0] = *(v1 + 40);
  v5 = v8[0];
  v8[1] = v2;
  a1[2] = v9;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v2;
  return sub_1C0823F0C(v8, &v7);
}

uint64_t UsoEntitySpan.originEntityId.getter()
{
  v1 = *(v0 + 152);

  return v1;
}

uint64_t UsoEntitySpan.appBundleSemantic.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    v4 = a1;

    a1 = v4;
    v5 = v3;
    v6 = v2;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
    v6 = 0xE700000000000000;
  }

  return sub_1C0546934(v5, v6, a1);
}

unint64_t sub_1C08228B8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x70416E696769726FLL;
    v6 = 0x6C6562616CLL;
    v7 = 0x666E49686374616DLL;
    if (a1 != 3)
    {
      v7 = 0x69747265706F7270;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x6F43656372756F73;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6E456E696769726FLL;
    if (a1 != 8)
    {
      v1 = 0xD000000000000015;
    }

    v2 = 0x646E497472617473;
    v3 = 0x7865646E49646E65;
    if (a1 != 6)
    {
      v3 = 0x74616E7265746C61;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1C0822A58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C08286D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C0822A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C0826EDC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C0822AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C0826EDC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t UsoEntitySpan.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FED0, &qword_1C09A6A58);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - v5;
  v41 = *(v1 + 8);
  v40 = *(v1 + 16);
  v7 = *(v1 + 24);
  v38 = *(v1 + 32);
  v39 = v7;
  v8 = *(v1 + 56);
  v9 = *(v1 + 88);
  v53 = *(v1 + 72);
  v54 = v9;
  v55 = *(v1 + 104);
  v51 = *(v1 + 40);
  v52 = v8;
  v10 = *(v1 + 120);
  v36 = *(v1 + 128);
  v37 = v10;
  v35 = *(v1 + 132);
  v34 = *(v1 + 136);
  v33 = *(v1 + 140);
  v11 = *(v1 + 144);
  v30 = *(v1 + 152);
  v31 = *(v1 + 160);
  v32 = v11;
  LODWORD(v11) = *(v1 + 168);
  v27 = *(v1 + 176);
  v28 = *(v1 + 184);
  v29 = v11;
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C0826EDC(v12, v13, v14);
  sub_1C095E05C();
  LOBYTE(v46) = 0;
  v15 = v56;
  v16 = sub_1C095DE4C();
  if (!v15)
  {
    v19 = v37;
    LOBYTE(v46) = v40;
    LOBYTE(v44[0]) = 1;
    sub_1C0826F30(v16, v17, v18);
    sub_1C095DE8C();
    LOBYTE(v46) = 2;
    sub_1C095DE4C();
    v48 = v53;
    v49 = v54;
    v50 = v55;
    v46 = v51;
    v47 = v52;
    v45 = 3;
    v20 = sub_1C0823F0C(&v51, v44);
    sub_1C0826F84(v20, v21, v22);
    sub_1C095DE8C();
    v44[2] = v48;
    v44[3] = v49;
    v44[4] = v50;
    v44[0] = v46;
    v44[1] = v47;
    sub_1C05145B4(v44, &qword_1EBE1F788, &unk_1C0999A60);
    v43 = v19;
    v42 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FED8, &qword_1C09A6A60);
    sub_1C0826FD8();
    sub_1C095DECC();
    LOBYTE(v43) = 5;
    v42 = v35;
    sub_1C095DEAC();
    LOBYTE(v43) = 6;
    v42 = v33;
    sub_1C095DEAC();
    v43 = v32;
    v42 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FEE0, &qword_1C09A6A68);
    sub_1C08270B0();
    sub_1C095DECC();
    LOBYTE(v43) = 8;
    v23 = sub_1C095DE4C();
    LOBYTE(v43) = v29;
    v42 = 9;
    sub_1C0827188(v23, v24, v25);
    sub_1C095DE8C();
    LOBYTE(v43) = 10;
    sub_1C095DE7C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t UsoEntitySpan.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 56);
  v7 = *(v1 + 88);
  v21[2] = *(v1 + 72);
  v21[3] = v7;
  v22 = *(v1 + 104);
  v21[0] = *(v1 + 40);
  v21[1] = v6;
  v15 = *(v1 + 132);
  v16 = *(v1 + 140);
  v17 = *(v1 + 144);
  v14 = *(v1 + 120);
  v8 = *(v1 + 160);
  v9 = *(v1 + 168);
  v13 = *(v1 + 176);
  v18 = *(v1 + 184);
  if (v3)
  {
    sub_1C095E00C();
    sub_1C095D7BC();
    if (v4 == 7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1C095E00C();
    if (v4 == 7)
    {
LABEL_3:
      sub_1C095E00C();
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_1C095E00C();
      if (*(&v22 + 1))
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  sub_1C095E00C();
  MEMORY[0x1C68DDE90](v4);
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_1C095E00C();
  sub_1C095D7BC();
  if (*(&v22 + 1))
  {
LABEL_5:
    sub_1C095E00C();
    MatchInfo.hash(into:)();
    v10 = *(v1 + 56);
    v11 = *(v1 + 88);
    v20[2] = *(v1 + 72);
    v20[3] = v11;
    v20[4] = *(v1 + 104);
    v20[0] = *(v1 + 40);
    v20[1] = v10;
    sub_1C0823F0C(v21, v19);
    sub_1C08271DC(v20);
    goto LABEL_10;
  }

LABEL_9:
  sub_1C095E00C();
LABEL_10:
  sub_1C05714A8(a1, v14);
  if (v15)
  {
    sub_1C095E00C();
    if (!v16)
    {
LABEL_12:
      sub_1C095E00C();
      sub_1C095E01C();
      goto LABEL_15;
    }
  }

  else
  {
    sub_1C095E00C();
    sub_1C095E01C();
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  sub_1C095E00C();
LABEL_15:
  sub_1C05713F0(a1, v17);
  if (v8)
  {
    sub_1C095E00C();
    sub_1C095D7BC();
    if (v9 == 3)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_1C095E00C();
    if (v9 == 3)
    {
      goto LABEL_20;
    }
  }

  sub_1C095E00C();
  if (v9 != 2)
  {
    sub_1C095E00C();
    MEMORY[0x1C68DDE90](v9 & 1);
    if (v18)
    {
      return sub_1C095E00C();
    }

    goto LABEL_23;
  }

LABEL_20:
  sub_1C095E00C();
  if (v18)
  {
    return sub_1C095E00C();
  }

LABEL_23:
  sub_1C095E00C();
  return MEMORY[0x1C68DDE90](v13);
}

uint64_t UsoEntitySpan.hashValue.getter()
{
  sub_1C095DFEC();
  UsoEntitySpan.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t UsoEntitySpan.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FEE8, &qword_1C09A6A70);
  v5 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v7 = &v41 - v6;
  v82 = 1;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C0826EDC(v8, v9, v10);
  sub_1C095E04C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v5;
  LOBYTE(v61) = 0;
  v12 = sub_1C095DD7C();
  v15 = v14;
  v16 = v12;
  LOBYTE(v55) = 1;
  sub_1C082720C(v12, v14, v17);
  sub_1C095DDBC();
  v52 = v16;
  LODWORD(v16) = v61;
  LOBYTE(v61) = 2;
  v50 = sub_1C095DD7C();
  v51 = v16;
  v53 = v18;
  v76 = 3;
  sub_1C0827260(v50, v18, v19);
  sub_1C095DDBC();
  v88 = v79;
  v89 = v80;
  v90 = v81;
  v86 = v77;
  v87 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FED8, &qword_1C09A6A60);
  LOBYTE(v55) = 4;
  sub_1C08272B4();
  sub_1C095DDFC();
  v54 = v61;
  LOBYTE(v61) = 5;
  v20 = sub_1C095DDDC();
  v85 = BYTE4(v20) & 1;
  LOBYTE(v61) = 6;
  v48 = sub_1C095DDDC();
  v84 = BYTE4(v48) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FEE0, &qword_1C09A6A68);
  LOBYTE(v55) = 7;
  sub_1C082738C();
  sub_1C095DDFC();
  v46 = v20;
  v21 = v61;
  LOBYTE(v61) = 8;
  v45 = sub_1C095DD7C();
  v47 = v22;
  v49 = 0;
  LOBYTE(v55) = 9;
  sub_1C0827464(v45, v22, v23);
  v24 = v49;
  sub_1C095DDBC();
  v49 = v24;
  if (v24)
  {
    (*(v11 + 8))(v7, v91);
    __swift_destroy_boxed_opaque_existential_1(a1);

    *v63 = v88;
    *&v63[2] = v89;
    *&v63[4] = v90;
    v61 = v86;
    v62 = v87;
    sub_1C05145B4(&v61, &qword_1EBE1F788, &unk_1C0999A60);
  }

  else
  {
    v43 = v61;
    v75 = 10;
    v44 = sub_1C095DDAC();
    v49 = 0;
    v26 = v25;
    (*(v11 + 8))(v7, v91);
    v82 = v26 & 1;
    *&v55 = v52;
    *(&v55 + 1) = v15;
    v42 = v15;
    LOBYTE(v56) = v51;
    *(&v56 + 1) = v50;
    *&v57[0] = v53;
    *(&v57[4] + 8) = v90;
    *(&v57[1] + 8) = v87;
    *(&v57[2] + 8) = v88;
    *(&v57[3] + 8) = v89;
    *(v57 + 8) = v86;
    *(&v57[5] + 1) = v54;
    v27 = v45;
    LODWORD(v58) = v46;
    HIDWORD(v41) = v85;
    BYTE4(v58) = v85;
    v28 = v47;
    v29 = v48;
    DWORD2(v58) = v48;
    v30 = v84;
    BYTE12(v58) = v84;
    *&v59 = v21;
    *(&v59 + 1) = v45;
    *&v60[0] = v47;
    v31 = v43;
    BYTE8(v60[0]) = v43;
    *&v60[1] = v44;
    LODWORD(v91) = v82;
    BYTE8(v60[1]) = v82;
    v32 = v55;
    v33 = v56;
    v34 = v57[1];
    a2[2] = v57[0];
    a2[3] = v34;
    *a2 = v32;
    a2[1] = v33;
    v35 = v57[2];
    v36 = v57[3];
    v37 = v57[5];
    a2[6] = v57[4];
    a2[7] = v37;
    a2[4] = v35;
    a2[5] = v36;
    v38 = v58;
    v39 = v59;
    v40 = v60[0];
    *(a2 + 169) = *(v60 + 9);
    a2[9] = v39;
    a2[10] = v40;
    a2[8] = v38;
    sub_1C0521E78(&v55, &v61);
    __swift_destroy_boxed_opaque_existential_1(a1);
    *&v63[3] = v87;
    *&v63[5] = v88;
    *&v63[7] = v89;
    *&v63[9] = v90;
    *&v61 = v52;
    *(&v61 + 1) = v42;
    LOBYTE(v62) = v51;
    *(&v62 + 1) = v50;
    v63[0] = v53;
    *&v63[1] = v86;
    v63[11] = v54;
    v64 = v46;
    v65 = BYTE4(v41);
    v66 = v29;
    v67 = v30;
    v68 = v21;
    v69 = v27;
    v70 = v28;
    v71 = v31;
    *&v72[3] = *&v83[3];
    *v72 = *v83;
    v73 = v44;
    v74 = v91;
    return sub_1C05755CC(&v61);
  }
}

uint64_t sub_1C0823A3C()
{
  sub_1C095DFEC();
  UsoEntitySpan.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C0823A80(uint64_t a1)
{
  sub_1C095DFEC();
  UsoEntitySpan.hash(into:)(v2);
  return sub_1C095E03C();
}

SiriOntology::MatchInfo::AliasType_optional __swiftcall MatchInfo.AliasType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 12;
  if (rawValue < 0xC)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C0823C14()
{
  sub_1C095DFEC();
  sub_1C095E01C();
  return sub_1C095E03C();
}

uint64_t sub_1C0823C88(uint64_t a1)
{
  sub_1C095DFEC();
  sub_1C095E01C();
  return sub_1C095E03C();
}

BOOL sub_1C0823DC0(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1C0823DF0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1C0823E1C@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_1C0823EDC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1C0823F0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F788, &unk_1C0999A60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0824094(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7361696C4178616DLL;
    if (a1 != 7)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0xD000000000000014;
    if (a1 != 5)
    {
      v6 = 0x7473694474696465;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6F6353686374616DLL;
    v2 = 0x6E656B6F5478616DLL;
    v3 = 0xD000000000000011;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000011;
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

uint64_t sub_1C082420C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C0828A80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C0824240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C08274B8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C082427C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C08274B8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t MatchInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FEF0, &qword_1C09A6A78);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = *(v1 + 4);
  v35 = *(v1 + 8);
  v31 = *(v1 + 12);
  v32 = v7;
  v30 = *(v1 + 16);
  v29 = *(v1 + 20);
  LODWORD(v7) = *(v1 + 24);
  v26 = *(v1 + 28);
  v27 = *(v1 + 32);
  v28 = v7;
  v25 = *(v1 + 36);
  v24 = *(v1 + 40);
  v23 = *(v1 + 44);
  v22 = *(v1 + 48);
  v21 = *(v1 + 52);
  v20 = *(v1 + 56);
  v19 = *(v1 + 60);
  HIDWORD(v18) = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C08274B8(v9, v10, v11);
  sub_1C095E05C();
  LOBYTE(v34) = 0;
  v12 = v6;
  v13 = v33;
  sub_1C095DEEC();
  if (v13)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v14 = v30;
  v15 = v27;
  v16 = v28;
  LOBYTE(v34) = 1;
  v36[0] = v35;
  sub_1C095DE6C();
  LOBYTE(v34) = 2;
  v36[0] = v14;
  sub_1C095DEAC();
  LOBYTE(v34) = 3;
  v36[0] = v16;
  sub_1C095DEAC();
  LOBYTE(v34) = 4;
  v36[0] = v15;
  sub_1C095DEAC();
  LOBYTE(v34) = 5;
  v36[0] = v24;
  sub_1C095DEAC();
  LOBYTE(v34) = 6;
  v36[0] = v22;
  sub_1C095DEAC();
  LOBYTE(v34) = 7;
  v36[0] = v20;
  sub_1C095DEAC();
  LOBYTE(v34) = 8;
  v36[0] = BYTE4(v18);
  sub_1C095DEAC();
  v34 = v8;
  v36[0] = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FF00, &qword_1C09A6A80);
  sub_1C082750C();
  sub_1C095DECC();
  return (*(v4 + 8))(v12, v3);
}

uint64_t MatchInfo.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v14 = *(v0 + 32);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  sub_1C095E01C();
  if (v1 == 1)
  {
    sub_1C095E00C();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1C095E00C();
    sub_1C095E01C();
    if (!v2)
    {
LABEL_3:
      sub_1C095E00C();
      sub_1C095E01C();
      v9 = v6;
      if (!v3)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  sub_1C095E00C();
  v9 = v6;
  if (!v3)
  {
LABEL_4:
    sub_1C095E00C();
    sub_1C095E01C();
    if (!v14)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_1C095E00C();
  if (!v14)
  {
LABEL_5:
    sub_1C095E00C();
    sub_1C095E01C();
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  sub_1C095E00C();
  if (!v4)
  {
LABEL_6:
    sub_1C095E00C();
    sub_1C095E01C();
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  sub_1C095E00C();
  if (!v5)
  {
LABEL_7:
    sub_1C095E00C();
    sub_1C095E01C();
    if (!v9)
    {
      goto LABEL_8;
    }

LABEL_16:
    sub_1C095E00C();
    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  sub_1C095E00C();
  if (v9)
  {
    goto LABEL_16;
  }

LABEL_8:
  sub_1C095E00C();
  sub_1C095E01C();
  if (!v7)
  {
LABEL_9:
    sub_1C095E00C();
    sub_1C095E01C();
    goto LABEL_18;
  }

LABEL_17:
  sub_1C095E00C();
LABEL_18:
  result = MEMORY[0x1C68DDE90](*(v8 + 16));
  v11 = *(v8 + 16);
  if (v11)
  {
    v12 = (v8 + 32);
    do
    {
      v13 = *v12++;
      result = MEMORY[0x1C68DDE90](v13);
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t MatchInfo.hashValue.getter()
{
  sub_1C095DFEC();
  MatchInfo.hash(into:)();
  return sub_1C095E03C();
}

uint64_t MatchInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FF18, &qword_1C09A6A88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C08274B8(v9, v10, v11);
  sub_1C095E04C();
  if (!v2)
  {
    LOBYTE(v35) = 0;
    v12 = sub_1C095DE2C();
    LOBYTE(v35) = 1;
    v13 = sub_1C095DD9C();
    v14 = v13;
    v43 = BYTE4(v13) & 1;
    LOBYTE(v35) = 2;
    v34 = sub_1C095DDDC();
    v42 = BYTE4(v34) & 1;
    LOBYTE(v35) = 3;
    v33 = sub_1C095DDDC();
    v41 = BYTE4(v33) & 1;
    LOBYTE(v35) = 4;
    v32 = sub_1C095DDDC();
    v40 = BYTE4(v32) & 1;
    LOBYTE(v35) = 5;
    v31 = sub_1C095DDDC();
    v39 = BYTE4(v31) & 1;
    LOBYTE(v35) = 6;
    v30 = sub_1C095DDDC();
    v38 = BYTE4(v30) & 1;
    LOBYTE(v35) = 7;
    v29 = sub_1C095DDDC();
    v37 = BYTE4(v29) & 1;
    LOBYTE(v35) = 8;
    v28 = sub_1C095DDDC();
    v36 = BYTE4(v28) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FF00, &qword_1C09A6A80);
    v44 = 9;
    sub_1C08275E4();
    sub_1C095DDFC();
    (*(v6 + 8))(v8, v5);
    v16 = v43;
    v17 = v42;
    v18 = v41;
    v19 = v40;
    v20 = v39;
    v21 = v38;
    v22 = v37;
    v23 = v36;
    *a2 = v12;
    *(a2 + 4) = v14;
    *(a2 + 8) = v16;
    v24 = v35;
    *(a2 + 12) = v34;
    *(a2 + 16) = v17;
    v25 = v32;
    *(a2 + 20) = v33;
    *(a2 + 24) = v18;
    *(a2 + 28) = v25;
    *(a2 + 32) = v19;
    v26 = v30;
    *(a2 + 36) = v31;
    *(a2 + 40) = v20;
    *(a2 + 44) = v26;
    *(a2 + 48) = v21;
    *(a2 + 52) = v29;
    *(a2 + 56) = v22;
    *(a2 + 60) = v28;
    *(a2 + 64) = v23;
    *(a2 + 72) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C0824BF4()
{
  sub_1C095DFEC();
  MatchInfo.hash(into:)();
  return sub_1C095E03C();
}

uint64_t sub_1C0824C38(uint64_t a1)
{
  sub_1C095DFEC();
  MatchInfo.hash(into:)();
  return sub_1C095E03C();
}

uint64_t AsrAlternative.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static AsrAlternative.== infix(_:_:)(float *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = *(a1 + 20);
  v4 = *(a2 + 16);
  v5 = *(a2 + 20);
  v6 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (v6 || (v7 = sub_1C095DF3C(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_1C0824D80()
{
  if (*v0)
  {
    return 0x6C696261626F7270;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1C0824DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_1C095DF3C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C696261626F7270 && a2 == 0xEB00000000797469)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C095DF3C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1C0824E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C08276BC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C0824ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C08276BC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t AsrAlternative.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FF30, &qword_1C09A6A90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v12[0] = *(v1 + 16);
  v13 = *(v1 + 20);
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C08276BC(v7, v8, v9);
  sub_1C095E05C();
  v16 = 0;
  v10 = v12[1];
  sub_1C095DEBC();
  if (!v10)
  {
    v15 = 1;
    v14 = v13;
    sub_1C095DE6C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AsrAlternative.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 20);
  sub_1C095D7BC();
  if (v2 == 1)
  {
    return sub_1C095E00C();
  }

  sub_1C095E00C();
  return sub_1C095E01C();
}

uint64_t AsrAlternative.hashValue.getter()
{
  v1 = *(v0 + 20);
  sub_1C095DFEC();
  sub_1C095D7BC();
  sub_1C095E00C();
  if (v1 != 1)
  {
    sub_1C095E01C();
  }

  return sub_1C095E03C();
}

uint64_t AsrAlternative.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FF40, &qword_1C09A6A98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C08276BC(v9, v10, v11);
  sub_1C095E04C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v12 = sub_1C095DDEC();
  v14 = v13;
  v15 = v12;
  v19 = 1;
  v16 = sub_1C095DD9C();
  (*(v6 + 8))(v8, v5);
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16;
  *(a2 + 20) = BYTE4(v16) & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C08253A4(uint64_t a1)
{
  v2 = *(v1 + 20);
  sub_1C095DFEC();
  sub_1C095D7BC();
  sub_1C095E00C();
  if (v2 != 1)
  {
    sub_1C095E01C();
  }

  return sub_1C095E03C();
}

uint64_t sub_1C0825460(float *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = *(a1 + 20);
  v4 = *(a2 + 16);
  v5 = *(a2 + 20);
  v6 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (v6 || (v7 = sub_1C095DF3C(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t SpanProperty.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SpanProperty.valueString.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double SpanProperty.namespaceSemantic.getter@<D0>(_OWORD *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];

  sub_1C0545A38(v4, v3, &v6);
  result = *&v6;
  *a1 = v6;
  return result;
}

uint64_t SpanProperty.valueSemantic.getter@<X0>(__int128 *a1@<X8>)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    v4 = *(v1 + 16);

    result = sub_1C0547398(v4, v3, &v7);
    v6 = v7;
  }

  else
  {
    v6 = xmmword_1C09A6A40;
  }

  *a1 = v6;
  return result;
}

uint64_t sub_1C0825648()
{
  v1 = 7955819;
  v2 = 0x746E4965756C6176;
  if (*v0 != 2)
  {
    v2 = 0x6F6C4665756C6176;
  }

  if (*v0)
  {
    v1 = 0x72745365756C6176;
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

uint64_t sub_1C08256C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C0828DCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C08256FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C0827710(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C0825738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C0827710(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t SpanProperty.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FF48, &qword_1C09A6AA0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = *(v1 + 16);
  v20 = *(v1 + 24);
  v21 = v7;
  v19 = *(v1 + 32);
  v18 = *(v1 + 36);
  v17 = *(v1 + 40);
  v16 = *(v1 + 44);
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C0827710(v8, v9, v10);
  sub_1C095E05C();
  v28 = 0;
  v11 = v22;
  sub_1C095DEBC();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v12 = v18;
  v13 = v16;
  v27 = 1;
  sub_1C095DE4C();
  v26 = 2;
  v25 = v12;
  sub_1C095DE9C();
  v24 = 3;
  v23 = v13;
  sub_1C095DE6C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t SpanProperty.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 36);
  v4 = *(v1 + 44);
  sub_1C095D7BC();
  if (v2)
  {
    sub_1C095E00C();
    sub_1C095D7BC();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1C095E00C();
    sub_1C095E01C();
    if (!v4)
    {
      goto LABEL_4;
    }

    return sub_1C095E00C();
  }

  sub_1C095E00C();
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1C095E00C();
  if (!v4)
  {
LABEL_4:
    sub_1C095E00C();
    return sub_1C095E01C();
  }

  return sub_1C095E00C();
}

uint64_t SpanProperty.hashValue.getter()
{
  sub_1C095DFEC();
  SpanProperty.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t SpanProperty.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FF50, &qword_1C09A6AA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C0827710(v9, v10, v11);
  sub_1C095E04C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v29[0]) = 0;
  v12 = sub_1C095DDEC();
  v14 = v13;
  v26 = v12;
  LOBYTE(v29[0]) = 1;
  *&v25 = sub_1C095DD7C();
  *(&v25 + 1) = v15;
  LOBYTE(v29[0]) = 2;
  v24 = sub_1C095DDCC();
  v35 = BYTE4(v24) & 1;
  v36 = 3;
  v16 = sub_1C095DD9C();
  (*(v6 + 8))(v8, v5);
  v34 = BYTE4(v16) & 1;
  v18 = *(&v25 + 1);
  v17 = v26;
  *&v27 = v26;
  *(&v27 + 1) = v14;
  v19 = v25;
  *v28 = v25;
  *&v28[16] = v24;
  v23 = v35;
  v28[20] = v35;
  *&v28[24] = v16;
  v28[28] = BYTE4(v16) & 1;
  v20 = v25;
  *a2 = v27;
  a2[1] = v20;
  *(a2 + 29) = *&v28[13];
  sub_1C0827764(&v27, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29[0] = v17;
  v29[1] = v14;
  v29[2] = v19;
  v29[3] = v18;
  v30 = v24;
  v31 = v23;
  v32 = v16;
  v33 = BYTE4(v16) & 1;
  return sub_1C082779C(v29);
}

uint64_t sub_1C0825D68()
{
  sub_1C095DFEC();
  SpanProperty.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C0825DAC(uint64_t a1)
{
  sub_1C095DFEC();
  SpanProperty.hash(into:)(v2);
  return sub_1C095E03C();
}

SiriOntology::PayloadAttachmentInfo::AttachmentType_optional __swiftcall PayloadAttachmentInfo.AttachmentType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C0825F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D686361747461 && a2 == 0xEE0065707954746ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C095DF3C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C0825FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C08277CC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C0825FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C08277CC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t PayloadAttachmentInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FF58, &qword_1C09A6AB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C08277CC(v8, v9, v10);
  v11 = sub_1C095E05C();
  v16 = v7;
  sub_1C0827820(v11, v12, v13);
  sub_1C095DE8C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t PayloadAttachmentInfo.hash(into:)()
{
  v1 = *v0;
  if (v1 == 2)
  {
    return sub_1C095E00C();
  }

  sub_1C095E00C();
  return MEMORY[0x1C68DDE90](v1 & 1);
}

uint64_t PayloadAttachmentInfo.hashValue.getter()
{
  v1 = *v0;
  sub_1C095DFEC();
  sub_1C095E00C();
  if (v1 != 2)
  {
    MEMORY[0x1C68DDE90](v1 & 1);
  }

  return sub_1C095E03C();
}

uint64_t PayloadAttachmentInfo.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FF70, &qword_1C09A6AB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C08277CC(v9, v10, v11);
  v12 = sub_1C095E04C();
  if (!v2)
  {
    sub_1C0827874(v12, v13, v14);
    sub_1C095DDBC();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C08263A4()
{
  v1 = *v0;
  sub_1C095DFEC();
  sub_1C095E00C();
  if (v1 != 2)
  {
    MEMORY[0x1C68DDE90](v1 & 1);
  }

  return sub_1C095E03C();
}

uint64_t sub_1C082640C()
{
  v1 = *v0;
  if (v1 == 2)
  {
    return sub_1C095E00C();
  }

  sub_1C095E00C();
  return MEMORY[0x1C68DDE90](v1 & 1);
}

uint64_t sub_1C0826458(uint64_t a1)
{
  v2 = *v1;
  sub_1C095DFEC();
  sub_1C095E00C();
  if (v2 != 2)
  {
    MEMORY[0x1C68DDE90](v2 & 1);
  }

  return sub_1C095E03C();
}

BOOL _s12SiriOntology12SpanPropertyV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 8);
  v5 = *(a1 + 36);
  v6 = *(a1 + 10);
  v7 = *(a1 + 44);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 36);
  v12 = *(a2 + 40);
  v13 = *(a2 + 44);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8 || (v2 != v9 || v3 != v8) && (sub_1C095DF3C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v10)
    {
      v14 = v11;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if ((v7 & 1) == 0)
  {
    if (v6 == v12)
    {
      v16 = v13;
    }

    else
    {
      v16 = 1;
    }

    return (v16 & 1) == 0;
  }

  return (v13 & 1) != 0;
}

uint64_t _s12SiriOntology9MatchInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v12 = *(a1 + 72);
  v11 = *(a2 + 72);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 4) == *(a2 + 4))
    {
      v2 = *(a2 + 8);
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 12) == *(a2 + 12))
    {
      v3 = *(a2 + 16);
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 20) == *(a2 + 20))
    {
      v4 = *(a2 + 24);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 28) == *(a2 + 28))
    {
      v5 = *(a2 + 32);
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 36) == *(a2 + 36))
    {
      v6 = *(a2 + 40);
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  if (*(a1 + 48))
  {
    if (!*(a2 + 48))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 44) == *(a2 + 44))
    {
      v7 = *(a2 + 48);
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 52) == *(a2 + 52))
    {
      v8 = *(a2 + 56);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (*(a1 + 64))
  {
    if (!*(a2 + 64))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 60) == *(a2 + 60))
    {
      v10 = *(a2 + 64);
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  return sub_1C055B65C(v12, v11);
}