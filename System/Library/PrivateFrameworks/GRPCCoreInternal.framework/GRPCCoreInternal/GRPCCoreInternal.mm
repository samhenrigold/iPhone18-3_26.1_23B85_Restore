uint64_t ClientResponse.Contents.metadata.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t ClientResponse.Contents.message.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  sub_24DC2E0D8();
  v5 = sub_24DCB5904();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_24DC2E0D8()
{
  result = qword_27F19ED50;
  if (!qword_27F19ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19ED50);
  }

  return result;
}

uint64_t ClientResponse.Contents.message.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  sub_24DC2E0D8();
  v5 = sub_24DCB5904();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ClientResponse.Contents.trailingMetadata.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 32);

  *(v2 + v4) = v3;
  return result;
}

uint64_t ClientResponse.Contents.init(metadata:message:trailingMetadata:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v8 = *a3;
  *a5 = *a1;
  v9 = type metadata accessor for ClientResponse.Contents(0, a4, a3, a4);
  (*(*(a4 - 8) + 32))(&a5[*(v9 + 28)], a2, a4);
  sub_24DC2E0D8();
  sub_24DCB5904();
  result = swift_storeEnumTagMultiPayload();
  *&a5[*(v9 + 32)] = v8;
  return result;
}

uint64_t ClientResponse.Contents.init(metadata:error:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  v10 = *(a2 + 4);
  *a5 = *a1;
  v11 = type metadata accessor for ClientResponse.Contents(0, a3, a3, a4);
  v12 = a5 + *(v11 + 28);
  *v12 = v6;
  *(v12 + 1) = v7;
  *(v12 + 2) = v8;
  *(v12 + 3) = v9;
  *(v12 + 4) = v10;
  sub_24DC2E0D8();
  sub_24DCB5904();
  swift_storeEnumTagMultiPayload();
  *(a5 + *(v11 + 32)) = v9;
}

uint64_t ClientResponse.accepted.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for ClientResponse.Contents(255, *(a1 + 16), a2, a3);
  sub_24DC2E0D8();
  v6 = sub_24DCB5904();
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, v4, v6);
}

uint64_t ClientResponse.accepted.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ClientResponse.Contents(255, *(a2 + 16), a3, a4);
  sub_24DC2E0D8();
  v6 = sub_24DCB5904();
  v7 = *(*(v6 - 8) + 40);

  return v7(v4, a1, v6);
}

uint64_t ClientResponse.init(accepted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for ClientResponse.Contents(255, a2, a3, a4);
  sub_24DC2E0D8();
  v7 = sub_24DCB5904();
  v8 = *(*(v7 - 8) + 32);

  return v8(a5, a1, v7);
}

uint64_t StreamingClientResponse.Contents.metadata.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t StreamingClientResponse.Contents.bodyParts.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = type metadata accessor for StreamingClientResponse.Contents.BodyPart(255, *(a1 + 16), a3, a4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v8 = type metadata accessor for RPCAsyncSequence(0, v6, v7, MEMORY[0x277D84950]);
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, v4 + 8, v8);
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

uint64_t StreamingClientResponse.Contents.bodyParts.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for StreamingClientResponse.Contents.BodyPart(255, *(a2 + 16), a3, a4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v8 = type metadata accessor for RPCAsyncSequence(0, v6, v7, MEMORY[0x277D84950]);
  v9 = *(*(v8 - 8) + 40);

  return v9(v4 + 8, a1, v8);
}

__n128 StreamingClientResponse.Contents.init(metadata:bodyParts:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v4;
  *(a3 + 40) = *(a2 + 32);
  return result;
}

uint64_t StreamingClientResponse.accepted.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  type metadata accessor for StreamingClientResponse.Contents(255, *(a1 + 16), a3, a4);
  sub_24DC2E0D8();
  v6 = sub_24DCB5904();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4, v6);
}

uint64_t StreamingClientResponse.accepted.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for StreamingClientResponse.Contents(255, *(a2 + 16), a3, a4);
  sub_24DC2E0D8();
  v6 = sub_24DCB5904();
  v7 = *(*(v6 - 8) + 40);

  return v7(v4, a1, v6);
}

__n128 StreamingClientResponse.init(accepted:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

uint64_t ClientResponse.init(message:metadata:trailingMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for ClientResponse.Contents(0, a4, a3, a4);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  v14 = *a2;
  v16 = *a3;
  v17 = v14;
  ClientResponse.Contents.init(metadata:message:trailingMetadata:)(&v17, a1, &v16, a4, v13);
  (*(v11 + 32))(a5, v13, v10);
  sub_24DC2E0D8();
  sub_24DCB5904();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ClientResponse.init(of:metadata:error:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ClientResponse.Contents(0, a3, a2, a3);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17[-v10];
  v12 = *a1;
  v13 = *a2;
  v14 = *(a2 + 8);
  v20 = *(a2 + 32);
  v21 = v12;
  v17[0] = v13;
  v18 = v14;
  v19 = *(a2 + 16);
  ClientResponse.Contents.init(metadata:error:)(&v21, v17, a3, v15, v11);
  (*(v9 + 32))(a4, v11, v8);
  sub_24DC2E0D8();
  sub_24DCB5904();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ClientResponse.init(of:error:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 32);
  *a4 = *a1;
  *(a4 + 8) = v4;
  *(a4 + 16) = *(a1 + 16);
  *(a4 + 32) = v5;
  type metadata accessor for ClientResponse.Contents(255, a2, a2, a3);
  sub_24DC2E0D8();
  sub_24DCB5904();

  return swift_storeEnumTagMultiPayload();
}

uint64_t ClientResponse.metadata.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = v4;
  v7 = type metadata accessor for ClientResponse.Contents(0, *(a1 + 16), a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v18 - v9);
  sub_24DC2E0D8();
  v11 = sub_24DCB5904();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - v13;
  (*(v12 + 16))(&v18 - v13, v5, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 8))(v14, v11);
    return Metadata.init(dictionaryLiteral:)();
  }

  else
  {
    (*(v8 + 32))(v10, v14, v7);
    v16 = *v10;
    v17 = *(v8 + 8);

    result = v17(v10, v7);
    *a4 = v16;
  }

  return result;
}

double ClientResponse.message.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  sub_24DC2E0D8();
  v5 = sub_24DCB5904();
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v17 = v4;
  type metadata accessor for ClientResponse.Contents(255, v4, v8, v9);
  v10 = sub_24DCB5904();
  sub_24DC2F064(sub_24DC2EFC8, v10, v7);
  sub_24DC2F270(v5, v18, a2);
  if (v2)
  {
    v12 = v18[0];
    v13 = v19;
    v14 = v21;
    v16 = v20;
    swift_allocError();
    *v15 = v12;
    *(v15 + 8) = v13;
    result = *&v16;
    *(v15 + 16) = v16;
    *(v15 + 32) = v14;
  }

  return result;
}

uint64_t sub_24DC2EFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(type metadata accessor for ClientResponse.Contents(0, *(v4 + 16), a2, a3) + 28);
  sub_24DC2E0D8();
  v8 = sub_24DCB5904();
  v9 = *(*(v8 - 8) + 16);

  return v9(a4, a1 + v7, v8);
}

uint64_t sub_24DC2F064@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a4, v13, a2[3]);
    sub_24DCB5904();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v8 + 32))(v11, v13, v7);
    a1(v11);
    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_24DC2F270@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t ClientResponse.trailingMetadata.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = v4;
  v7 = type metadata accessor for ClientResponse.Contents(0, *(a1 + 16), a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  sub_24DC2E0D8();
  v11 = sub_24DCB5904();
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  (*(v14 + 16))(&v19 - v12, v5, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(v13 + 3);
    v16 = *(v13 + 4);

    result = MEMORY[0x2530363B0](v16);
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    v15 = *&v10[*(v7 + 32)];
    v18 = *(v8 + 8);

    result = v18(v10, v7);
  }

  *a4 = v15;
  return result;
}

__n128 StreamingClientResponse.init(of:metadata:bodyParts:)@<Q0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v4;
  *(a3 + 40) = *(a2 + 32);
  *(a3 + 48) = 0;
  return result;
}

__n128 StreamingClientResponse.init(of:error:)@<Q0>(__n128 *a1@<X1>, __n128 *a2@<X8>)
{
  v2 = a1->n128_u64[1];
  v3 = a1[2].n128_u64[0];
  a2->n128_u8[0] = a1->n128_u8[0];
  a2->n128_u64[1] = v2;
  result = a1[1];
  a2[1] = result;
  a2[2].n128_u64[0] = v3;
  a2[3].n128_u8[0] = 1;
  return result;
}

uint64_t StreamingClientResponse.metadata.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = v4;
  v7 = type metadata accessor for StreamingClientResponse.Contents(255, *(a1 + 16), a2, a3);
  sub_24DC2E0D8();
  v8 = sub_24DCB5904();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v14, v5, v8);
  if (v15)
  {
    (*(v9 + 8))(v14, v8);
    return Metadata.init(dictionaryLiteral:)();
  }

  else
  {
    v13[0] = v14[0];
    v13[1] = v14[1];
    v13[2] = v14[2];
    v11 = *&v14[0];
    v12 = *(*(v7 - 8) + 8);

    result = v12(v13, v7);
    *a4 = v11;
  }

  return result;
}

uint64_t StreamingClientResponse.messages.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v27 = a4;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for StreamingClientResponse.Contents.BodyPart(255, v5, a2, a3);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v7 = type metadata accessor for RPCAsyncSequence(255, v6, v26, MEMORY[0x277D84950]);
  swift_getWitnessTable();
  v8 = sub_24DCB5734();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v17 = type metadata accessor for StreamingClientResponse.Contents(255, v5, v15, v16);
  sub_24DC2E0D8();
  v18 = sub_24DCB5904();
  (*(*(v18 - 8) + 16))(&v30, v4, v18);
  if (v33)
  {
    v19 = v30;
    v20 = *(&v30 + 1);
    v21 = v32;
    v25 = v31;
    v22 = swift_allocError();
    *v23 = v19;
    *(v23 + 8) = v20;
    *(v23 + 16) = v25;
    *(v23 + 32) = v21;
    *&v29[0] = v22;
    sub_24DC3EFE0(v29, v5, v26, MEMORY[0x277D84950], v27);
    return MEMORY[0x2530363B0](v22);
  }

  else
  {
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    (*(*(v7 - 8) + 16))(v28, v29 + 8, v7);
    *(swift_allocObject() + 16) = v5;
    sub_24DCB5264();

    (*(v9 + 16))(v12, v14, v8);
    swift_getWitnessTable();
    RPCAsyncSequence.init<A>(wrapping:)();
    (*(v9 + 8))(v14, v8);
    return (*(*(v17 - 8) + 8))(v29, v17);
  }
}

uint64_t sub_24DC2FA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = type metadata accessor for StreamingClientResponse.Contents.BodyPart(0, a3, a3, a4);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC2FAD4, 0, 0);
}

uint64_t sub_24DC2FAD4()
{
  (*(v0[6] + 16))(v0[7], v0[3], v0[5]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[4];
    (*(v0[6] + 8))(v0[7], v0[5]);
    v2 = *(v1 - 8);
    v3 = 1;
  }

  else
  {
    v2 = *(v0[4] - 8);
    (*(v2 + 32))(v0[2], v0[7]);
    v3 = 0;
  }

  (*(v2 + 56))(v0[2], v3, 1, v0[4]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24DC2FC50(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24DC2FD00;

  return sub_24DC2FA0C(a1, a2, v6, v7);
}

uint64_t sub_24DC2FD00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t StreamingClientResponse.bodyParts.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = *(a1 + 16);
  v8 = type metadata accessor for StreamingClientResponse.Contents(255, v7, a2, a3);
  sub_24DC2E0D8();
  v9 = sub_24DCB5904();
  (*(*(v9 - 8) + 16))(&v27, v5, v9);
  if (v30)
  {
    v12 = v27;
    v13 = *(&v27 + 1);
    v14 = v29;
    v25 = v28;
    v15 = swift_allocError();
    *v16 = v12;
    *(v16 + 8) = v13;
    *(v16 + 16) = v25;
    *(v16 + 32) = v14;
    *&v26[0] = v15;
    v19 = type metadata accessor for StreamingClientResponse.Contents.BodyPart(0, v7, v17, v18);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
    sub_24DC3EFE0(v26, v19, v20, MEMORY[0x277D84950], a4);
    return MEMORY[0x2530363B0](v15);
  }

  else
  {
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    v22 = type metadata accessor for StreamingClientResponse.Contents.BodyPart(255, v7, v10, v11);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
    v24 = type metadata accessor for RPCAsyncSequence(0, v22, v23, MEMORY[0x277D84950]);
    (*(*(v24 - 8) + 16))(a4, v26 + 8, v24);
    return (*(*(v8 - 8) + 8))(v26, v8);
  }
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

uint64_t static StreamingClientResponse.Contents.BodyPart<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27[1] = a4;
  v30 = a1;
  v31 = a2;
  v29 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v27[0] = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StreamingClientResponse.Contents.BodyPart(0, v6, v6, v7);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v27 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v28 = *(TupleTypeMetadata2 - 8);
  v16 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v18 = v27 - v17;
  v19 = *(v16 + 48);
  v20 = *(v9 + 16);
  v20(v27 - v17, v30, v8);
  v20(&v18[v19], v31, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v20(v14, v18, v8);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v23 = v29;
      v24 = v27[0];
      (*(v29 + 32))(v27[0], &v18[v19], a3);
      v22 = sub_24DCB4DA4();
      v25 = *(v23 + 8);
      v25(v24, a3);
      v25(v14, a3);
      goto LABEL_9;
    }

    (*(v29 + 8))(v14, a3);
    goto LABEL_7;
  }

  v20(v12, v18, v8);
  v21 = *v12;
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_7:
    v22 = 0;
    v9 = v28;
    v8 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v32 = *&v18[v19];
  v33 = v21;
  sub_24DC303C8();
  v22 = sub_24DCB4DA4();

LABEL_9:
  (*(v9 + 8))(v18, v8);
  return v22 & 1;
}

unint64_t sub_24DC303C8()
{
  result = qword_27F19ED60;
  if (!qword_27F19ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19ED60);
  }

  return result;
}

uint64_t sub_24DC30430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ClientResponse.Contents(255, *(a1 + 16), a3, a4);
  sub_24DC2E0D8();
  result = sub_24DCB5904();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DC304C0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 80) & 0xF8;
  v5 = (v4 + 15) & ~v4 & 0x1F8;
  v6 = *(v3 + 64);
  if (v6 <= 0x28)
  {
    v6 = 40;
  }

  v7 = ((v6 + v5 + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 <= 0x28)
  {
    v7 = 40;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_29;
  }

  v8 = v7 | 1;
  if ((v7 | 1) <= 3)
  {
    v9 = ((a2 + 1) >> 8) + 1;
  }

  else
  {
    v9 = 2;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_25;
      }
    }

    else
    {
      v12 = *&a1[v8];
      if (v12)
      {
        goto LABEL_25;
      }
    }

LABEL_29:
    v16 = a1[v7];
    if (v16 >= 2)
    {
      return (v16 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v11)
  {
    goto LABEL_29;
  }

  v12 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_29;
  }

LABEL_25:
  v14 = (v12 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v15 = *a1;
  }

  else
  {
    v14 = 0;
    v15 = *a1;
  }

  return (v15 | v14) + 255;
}

void sub_24DC305F8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 80) & 0xF8;
  v7 = (v6 + 15) & ~v6 & 0x1F8;
  v8 = *(v5 + 64);
  if (v8 <= 0x28)
  {
    v8 = 40;
  }

  v9 = ((v8 + v7 + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 <= 0x28)
  {
    v9 = 40;
  }

  v10 = v9 | 1;
  if (a3 < 0xFF)
  {
    v13 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_18;
    }

LABEL_26:
    if (v13 > 1)
    {
      if (v13 != 2)
      {
        *&a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      *&a1[v10] = 0;
    }

    else if (v13)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_36:
      a1[v9] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (v10 <= 3)
  {
    v11 = ((a3 + 1) >> 8) + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 <= 0xFE)
  {
    goto LABEL_26;
  }

LABEL_18:
  v14 = a2 - 255;
  v15 = (a2 - 255) >> 8;
  bzero(a1, v9 | 1);
  if (v10 <= 3)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v14;
    if (v13 > 1)
    {
LABEL_23:
      if (v13 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v14;
    if (v13 > 1)
    {
      goto LABEL_23;
    }
  }

  if (v13)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_24DC307B0(uint64_t a1)
{
  sub_24DC2E0D8();
  result = sub_24DCB5904();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DC3084C(unint64_t *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (v4 <= 0x28)
  {
    v4 = 40;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v7 = *(v3 + 80) & 0xF8;
  v8 = ((v4 + ((v7 + 15) & ~v7 & 0x1F8) + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = v8 & 0xFFFFFFF8;
  v10 = a2 - 2147483646;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 == 4)
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  else if (v12 == 2)
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
LABEL_5:
      v5 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v5) = -1;
      }

      return (v5 + 1);
    }
  }

  v14 = v13 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return (v9 | v14) ^ 0x80000000;
}

int *sub_24DC30964(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 64);
  if (v5 <= 0x28)
  {
    v5 = 40;
  }

  v6 = ((v5 + (((*(v4 + 80) & 0xF8) + 15) & ~(*(v4 + 80) & 0xF8) & 0x1F8) + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (a3 < 0)
  {
    v8 = a3 - 2147483646;
    if (v6)
    {
      v8 = 2;
    }

    if (v8 >= 0x10000)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    if (v8 < 0x100)
    {
      v7 = 1;
    }

    else
    {
      v7 = v9;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v10 = a2 & 0x7FFFFFFF;
    if (v6)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10 + 1;
    }

    if (v6)
    {
      v12 = result;
      bzero(result, v6);
      result = v12;
      *v12 = v10;
    }

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        *(result + v6) = v11;
      }

      else
      {
        *(result + v6) = v11;
      }
    }

    else if (v7)
    {
      *(result + v6) = v11;
    }

    return result;
  }

  v7 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v7 <= 1)
  {
    if (v7)
    {
      *(result + v6) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v7 == 2)
  {
    *(result + v6) = 0;
    goto LABEL_28;
  }

  *(result + v6) = 0;
  if (a2)
  {
LABEL_29:
    *result = (a2 - 1);
  }

  return result;
}

uint64_t sub_24DC30AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24DC30B40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24DC30B88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_24DC30BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_24DC30C44(uint64_t *a1, int a2)
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

uint64_t sub_24DC30C8C(uint64_t result, int a2, int a3)
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

uint64_t sub_24DC30CD8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DC30D44(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_24DC30E5C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t RuntimeError.message.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t RuntimeError.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t RuntimeError.cause.getter()
{
  v1 = *(v0 + 24);
  MEMORY[0x2530363C0](v1);
  return v1;
}

uint64_t RuntimeError.cause.setter(uint64_t a1)
{
  result = MEMORY[0x2530363B0](*(v1 + 24));
  *(v1 + 24) = a1;
  return result;
}

_BYTE *RuntimeError.init(code:message:cause:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t RuntimeError.hash(into:)(uint64_t a1)
{
  MEMORY[0x253035FF0](*v1);

  return sub_24DCB4D44();
}

uint64_t static RuntimeError.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_24DCB57A4();
  }
}

uint64_t RuntimeError.hashValue.getter()
{
  v1 = *v0;
  sub_24DCB58A4();
  MEMORY[0x253035FF0](v1);
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t sub_24DC312B0()
{
  v1 = *v0;
  sub_24DCB58A4();
  MEMORY[0x253035FF0](v1);
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t sub_24DC31314(uint64_t a1)
{
  MEMORY[0x253035FF0](*v1);

  return sub_24DCB4D44();
}

uint64_t sub_24DC31368(uint64_t a1)
{
  v2 = *v1;
  sub_24DCB58A4();
  MEMORY[0x253035FF0](v2);
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t sub_24DC313C8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_24DCB57A4();
  }
}

uint64_t RuntimeError.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  if (v3)
  {
    v6 = 0;
    MEMORY[0x2530363C0](v3);
    sub_24DCB54D4();
    sub_24DC316E0();
    v4 = sub_24DCB5744();
    MEMORY[0x253035590](v4);

    MEMORY[0x253035590](2236474, 0xE300000000000000);
    MEMORY[0x253035590](v1, v2);
    MEMORY[0x253035590](0x6573756163282022, 0xEB0000000022203ALL);
    swift_getErrorValue();
    sub_24DCB5784();
    MEMORY[0x253035590](10530, 0xE200000000000000);
    MEMORY[0x2530363B0](v3);
  }

  else
  {
    sub_24DC316E0();
    v6 = sub_24DCB5744();
    MEMORY[0x253035590](2236474, 0xE300000000000000);
    MEMORY[0x253035590](v1, v2);
    MEMORY[0x253035590](34, 0xE100000000000000);
  }

  return v6;
}

uint64_t RuntimeError.Code.hashValue.getter()
{
  v1 = *v0;
  sub_24DCB58A4();
  MEMORY[0x253035FF0](v1);
  return sub_24DCB58F4();
}

uint64_t sub_24DC31698()
{
  v1 = *v0;
  sub_24DCB58A4();
  MEMORY[0x253035FF0](v1);
  return sub_24DCB58F4();
}

unint64_t sub_24DC316E0()
{
  result = qword_27F19ED68;
  if (!qword_27F19ED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19ED68);
  }

  return result;
}

uint64_t sub_24DC31734(uint64_t a1)
{
  v2 = *v1;
  sub_24DCB58A4();
  MEMORY[0x253035FF0](v2);
  return sub_24DCB58F4();
}

unint64_t sub_24DC317B0()
{
  result = qword_27F19ED70;
  if (!qword_27F19ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19ED70);
  }

  return result;
}

unint64_t sub_24DC31808()
{
  result = qword_27F19ED78;
  if (!qword_27F19ED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19ED78);
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

uint64_t sub_24DC3189C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24DC318E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Timeout.Unit(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Timeout.Unit(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24DC31AC0()
{
  result = qword_27F19FA80[0];
  if (!qword_27F19FA80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F19FA80);
  }

  return result;
}

BOOL sub_24DC31BA4(void *a1, uint64_t *a2)
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

void *sub_24DC31BD4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_24DC31C00@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_24DC31CEC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24DC31D1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_24DC331A8(a1);

  *a2 = v3;
  return result;
}

BOOL sub_24DC31D5C(__int16 a1, __int16 a2)
{
  if ((a1 & 0x100) != 0)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return (a2 & 0x100) != 0 && a2 == 1;
      }

      else
      {
        return (a2 & 0x100) != 0 && a2 > 1u;
      }
    }

    else
    {
      return (a2 & 0x100) != 0 && !a2;
    }
  }

  else
  {
    if ((a2 & 0x100) != 0)
    {
      return 0;
    }

    return a1 == a2;
  }
}

BOOL sub_24DC31DD0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[1] != 1)
  {
    if ((a2[1] & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*a1)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = a2[1];
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = a2[1];
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t sub_24DC31E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_24DCB5384())
  {
    return 0;
  }

  result = sub_24DCB5374();
  if (__OFADD__(result, 2))
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = (result + 2) / 3;
  if ((v4 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  MEMORY[0x28223BE20](4 * v4);
  return sub_24DCB4E04();
}

void *sub_24DC31F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v32 - v12;
  (*(v8 + 16))(v10, a2, a4);
  sub_24DCB4F04();
  swift_getAssociatedConformanceWitness();
  v14 = 0;
  v34 = a3;
  v15 = a3 + 32;
  while (1)
  {
    sub_24DCB5444();
    if (v40 == 1)
    {
      (*(v33 + 8))(v13, AssociatedTypeWitness);
      return v14;
    }

    v18 = v39;
    sub_24DCB5444();
    v19 = v37;
    v20 = v38;
    result = sub_24DCB5444();
    v22 = *(v34 + 16);
    if (v22 <= v18 >> 2)
    {
      break;
    }

    v23 = v35;
    v24 = v36;
    *(a1 + v14) = *(v15 + (v18 >> 2));
    v25 = v19 >> 4;
    if (v20)
    {
      v25 = 0;
    }

    v26 = v25 & 0xFFFFFFCF | (16 * (v18 & 3));
    if (v22 <= v26)
    {
      goto LABEL_20;
    }

    v27 = *(v15 + v26);
    v28 = a1 + v14;
    *(a1 + v14 + 1) = v27;
    if (v20)
    {
      *(v28 + 2) = 61;
      if ((v24 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v29 = v23 >> 6;
      if (v24)
      {
        v29 = 0;
      }

      v30 = v29 & 0xFFFFFFC3 | (4 * (v19 & 0xF));
      if (v22 <= v30)
      {
        goto LABEL_22;
      }

      *(v28 + 2) = *(v15 + v30);
      if ((v24 & 1) == 0)
      {
LABEL_16:
        v31 = v23 & 0x3F;
        if (v22 <= v31)
        {
          goto LABEL_23;
        }

        v16 = *(v15 + v31);
        goto LABEL_3;
      }
    }

    v16 = 61;
LABEL_3:
    *(a1 + v14 + 3) = v16;
    v17 = __OFADD__(v14, 4);
    v14 += 4;
    if (v17)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void *sub_24DC32250(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  if ((a2 & 0x1000000000000000) != 0)
  {

    v6 = sub_24DC329BC(v6, v5);
    v13 = v12;

    v5 = v13;
LABEL_9:
    v10 = sub_24DC32250(v6, v5, a3);
    if (v3)
    {
    }

    v11 = v10;

    return v11;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
    v14[0] = a1;
    v14[1] = v5 & 0xFFFFFFFFFFFFFFLL;
    v7 = v14;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = sub_24DCB5504();
  }

  result = sub_24DC3236C(v7, v8, a3, &v15);
  if (!v3)
  {
    result = v15;
    if (!v15)
    {

      goto LABEL_9;
    }
  }

  return result;
}

uint64_t sub_24DC3236C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  if (a2 < 1)
  {
    *a4 = MEMORY[0x277D84F90];
    return result;
  }

  if (__OFADD__(a2, 3))
  {
    goto LABEL_77;
  }

  v9 = result;
  v10 = 3 * ((a2 + 3) >> 2);
  v11 = sub_24DCB5014();
  v12 = v11;
  *(v11 + 16) = v10;
  if (v9)
  {
    v13 = a2 & 3;
    if ((a3 & 2) != 0)
    {
      if (v13 == 1)
      {
        goto LABEL_6;
      }
    }

    else if ((a2 & 3) != 0)
    {
LABEL_6:
      sub_24DC331E0();
      v14 = swift_allocError();
      *v15 = 256;
      result = swift_willThrow();
      goto LABEL_73;
    }

    v29 = v11 + 32;
    v30 = (__PAIR128__(a2 >> 2, v13) - 1) >> 64;
    v31 = &unk_2860EAC40;
    if ((a3 & 1) == 0)
    {
      v31 = &unk_2860EBCC0;
    }

    v32 = &unk_2860EB060;
    if ((a3 & 1) == 0)
    {
      v32 = &unk_2860EC0E0;
    }

    v33 = &unk_2860EB480;
    if ((a3 & 1) == 0)
    {
      v33 = &unk_2860EC500;
    }

    v34 = &unk_2860EB8A0;
    if ((a3 & 1) == 0)
    {
      v34 = &unk_2860EC920;
    }

    if (v30 >= 1)
    {
      v35 = 0;
      v36 = (v9 + 3);
      v37 = v11 + 32;
      v38 = v30;
      while (v35 != 0xA000000000000000)
      {
        v39 = *(v36 - 3);
        v40 = v32[*(v36 - 2)] | v31[v39] | v33[*(v36 - 1)] | v34[*v36];
        if (v40 >= 0x1FFFFFF)
        {
          goto LABEL_72;
        }

        *v37 = v40;
        *(v37 + 2) = BYTE2(v40);
        v35 -= 3;
        v37 += 3;
        v36 += 4;
        if (!--v38)
        {
          v41 = -v35;
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v41 = 0;
LABEL_43:
    v43 = 4 * v30;
    v44 = (v9 + 4 * v30);
    v39 = *v44;
    v45 = v44[1];
    v46 = (4 * v30) | 2;
    if (v46 >= a2)
    {
      v46 = 0;
      v47 = 1;
    }

    else
    {
      LODWORD(v46) = *(v9 + v46);
      v47 = v46 == 61;
      if (v46 == 61)
      {
        v46 = 0;
      }

      else
      {
        v46 = v46;
      }
    }

    v48 = v43 | 3;
    if (v48 >= a2)
    {
      v53 = v31[v39];
      v54 = v32[v45];
      v55 = 65;
      if (!v47)
      {
        v55 = v46;
      }

      v50 = v54 | v53 | v33[v55];
    }

    else
    {
      v49 = *(v9 + v48);
      if (v47)
      {
        v46 = 65;
      }

      v50 = v32[v45] | v31[v39] | v33[v46];
      if (v49 == 61)
      {
        LOBYTE(v51) = 0;
      }

      else
      {
        LOBYTE(v51) = v49;
      }

      if (v49 != 61)
      {
        v52 = 0;
        v51 = v51;
LABEL_63:
        v56 = v34[v51] | v50;
        if (v56 <= 0x1FFFFFE)
        {
          *(v29 + v41) = v56;
          v28 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
            goto LABEL_82;
          }

          if (!v47)
          {
            *(v29 + v28) = BYTE1(v56);
            v57 = __OFADD__(v28, 1);
            v28 = v41 + 2;
            if (v57)
            {
              goto LABEL_81;
            }
          }

          if ((v52 & 1) == 0)
          {
            *(v29 + v28) = BYTE2(v56);
            v57 = __OFADD__(v28++, 1);
            if (v57)
            {
LABEL_82:
              __break(1u);
            }
          }

          v58 = v10 < v28;
          if (v5)
          {
            goto LABEL_74;
          }

LABEL_70:
          if (v58)
          {
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

LABEL_71:
          *(v12 + 16) = v28;
          *a4 = v12;
          return result;
        }

LABEL_72:
        sub_24DC331E0();
        v14 = swift_allocError();
        *v59 = v39;
        v59[1] = 0;
        swift_willThrow();

LABEL_73:
        v28 = 0;
        v58 = v10 < 0;
        if (v14)
        {
LABEL_74:
          if (!v58)
          {
            goto LABEL_75;
          }

          goto LABEL_78;
        }

        goto LABEL_70;
      }
    }

    v52 = 1;
    v51 = 65;
    goto LABEL_63;
  }

  v16 = MEMORY[0xFFFFFFFFFFFFFFFE];
  if (MEMORY[0xFFFFFFFFFFFFFFFE] == 61)
  {
    v17 = 65;
  }

  else
  {
    v17 = MEMORY[0xFFFFFFFFFFFFFFFE];
  }

  if (MEMORY[0xFFFFFFFFFFFFFFFF] == 61)
  {
    v18 = 65;
  }

  else
  {
    v18 = MEMORY[0xFFFFFFFFFFFFFFFF];
  }

  v19 = MEMORY[0xFFFFFFFFFFFFFFFC];
  v20 = &unk_2860EAC40;
  if ((a3 & 1) == 0)
  {
    v20 = &unk_2860EBCC0;
  }

  v21 = &unk_2860EB060;
  v22 = v20[MEMORY[0xFFFFFFFFFFFFFFFC]];
  if ((a3 & 1) == 0)
  {
    v21 = &unk_2860EC0E0;
  }

  v23 = v21[MEMORY[0xFFFFFFFFFFFFFFFD]];
  v24 = &unk_2860EB480;
  if ((a3 & 1) == 0)
  {
    v24 = &unk_2860EC500;
  }

  v25 = v24[v17];
  v26 = &unk_2860EB8A0;
  if ((a3 & 1) == 0)
  {
    v26 = &unk_2860EC920;
  }

  v27 = v23 | v22 | v25 | v26[v18];
  if (v27 <= 0x1FFFFFE)
  {
    *(v11 + 32) = v27;
    if (v16 == 61)
    {
      v28 = 1;
      if (MEMORY[0xFFFFFFFFFFFFFFFF] == 61)
      {
        goto LABEL_49;
      }
    }

    else
    {
      *(v11 + 33) = BYTE1(v27);
      v28 = 2;
      if (MEMORY[0xFFFFFFFFFFFFFFFF] == 61)
      {
LABEL_49:

        goto LABEL_71;
      }
    }

    *(v11 + 32 + v28++) = BYTE2(v27);
    goto LABEL_49;
  }

  sub_24DC331E0();
  swift_allocError();
  *v42 = v19;
  v42[1] = 0;
  swift_willThrow();

  v28 = 0;
LABEL_75:
  *(v12 + 16) = v28;
}

uint64_t sub_24DC3290C(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = swift_slowAlloc();
    result = a2(v6, v3);
    if (v2)
    {
LABEL_5:
      MEMORY[0x253036540](v6, -1, -1);
      return v5;
    }

    if (result <= v5)
    {
      *(v6 + result) = 0;
      v5 = sub_24DCB4E64();
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24DC329BC(uint64_t a1, unint64_t a2)
{
  v2 = sub_24DCB4EF4();
  v6 = sub_24DC32D40(v2, v3, v4, v5);

  return v6;
}

unint64_t sub_24DC32A40()
{
  result = qword_27F19ED80;
  if (!qword_27F19ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19ED80);
  }

  return result;
}

unint64_t sub_24DC32A98()
{
  result = qword_27F19ED88;
  if (!qword_27F19ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19ED88);
  }

  return result;
}

unint64_t sub_24DC32AF0()
{
  result = qword_27F19ED90;
  if (!qword_27F19ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19ED90);
  }

  return result;
}

unint64_t sub_24DC32B48()
{
  result = qword_27F19ED98;
  if (!qword_27F19ED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19ED98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Base64.DecodingError(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for Base64.DecodingError(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_24DC32CEC(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24DC32D0C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

uint64_t sub_24DC32D40(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_24DCB5434();
    if (!v9 || (v10 = v9, v11 = sub_24DC32E98(v9, 0), v12 = sub_24DC32F0C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_24DCB4DF4();

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
      return sub_24DCB4DF4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_24DCB5504();
LABEL_4:

  return sub_24DCB4DF4();
}

void *sub_24DC32E98(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EDA8, qword_24DCB8060);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_24DC32F0C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_24DC3312C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24DCB4EB4();
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
          result = sub_24DCB5504();
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

    result = sub_24DC3312C(v12, a6, a7);
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

    result = sub_24DCB4E74();
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

unint64_t sub_24DC3312C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24DCB4EC4();
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
    v5 = MEMORY[0x2530355D0](15, a1 >> 16);
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

uint64_t sub_24DC331A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_24DC331E0()
{
  result = qword_27F19EDA0;
  if (!qword_27F19EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EDA0);
  }

  return result;
}

uint64_t dispatch thunk of ClientTransport.connect()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC334F4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ClientTransport.withStream<A>(descriptor:options:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 48) + **(a8 + 48));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_24DC2FD00;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t MethodConfig.Name.service.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24DC33528@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

void sub_24DC33534(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
  sub_24DC335C4();
}

void MethodConfig.Name.service.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;

  sub_24DC335C4();
}

void sub_24DC335C4()
{
  v1 = v0[1];
  v2 = *v0 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (!v2)
  {
    v3 = v0[3];
    v4 = v0[2] & 0xFFFFFFFFFFFFLL;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(v3) & 0xF;
    }

    if (v4)
    {

      static RuntimeError.Code.invalidArgument.getter(&v6);
      sub_24DC3C254();
      swift_allocError();
      RuntimeError.init(code:message:cause:)(&v6, 0xD00000000000002DLL, 0x800000024DCC5470, 0, v5);
      swift_willThrow();

      swift_unexpectedError();
      __break(1u);
    }
  }
}

void sub_24DC336BC()
{
  v1 = v0[1];
  v2 = *v0 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (!v2)
  {
    v3 = v0[3];
    if ((v3 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(v3) & 0xF;
    }

    else
    {
      v4 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      static RuntimeError.Code.invalidArgument.getter(&v6);
      sub_24DC3C254();
      swift_allocError();
      RuntimeError.init(code:message:cause:)(&v6, 0xD00000000000002DLL, 0x800000024DCC5470, 0, v5);
      swift_willThrow();
    }
  }
}

void sub_24DC33790(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_24DC335C4();
  }
}

uint64_t MethodConfig.Name.method.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MethodConfig.Name.method.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

GRPCCoreInternal::MethodConfig::Name __swiftcall MethodConfig.Name.init(service:method:)(Swift::String service, Swift::String method)
{
  object = method._object;
  countAndFlagsBits = method._countAndFlagsBits;
  v5 = service._object;
  v6 = service._countAndFlagsBits;
  v7 = v2;

  sub_24DC336BC();

  *v7 = v6;
  v7[1] = v5;
  v7[2] = countAndFlagsBits;
  v7[3] = object;
  result.method._object = v11;
  result.method._countAndFlagsBits = v10;
  result.service._object = v9;
  result.service._countAndFlagsBits = v8;
  return result;
}

uint64_t static MethodConfig.Name.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_24DCB57A4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_24DCB57A4();
    }
  }

  return result;
}

uint64_t MethodConfig.Name.hash(into:)(uint64_t a1)
{
  sub_24DCB4D44();

  return sub_24DCB4D44();
}

uint64_t MethodConfig.Name.hashValue.getter()
{
  sub_24DCB58A4();
  sub_24DCB4D44();
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t sub_24DC33A5C()
{
  sub_24DCB58A4();
  sub_24DCB4D44();
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t sub_24DC33AC4(uint64_t a1)
{
  sub_24DCB4D44();

  return sub_24DCB4D44();
}

uint64_t sub_24DC33B14(uint64_t a1)
{
  sub_24DCB58A4();
  sub_24DCB4D44();
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t sub_24DC33B78(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_24DCB57A4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_24DCB57A4();
    }
  }

  return result;
}

uint64_t MethodConfig.names.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MethodConfig.timeout.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

uint64_t MethodConfig.maxRequestMessageBytes.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t MethodConfig.maxResponseMessageBytes.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

double sub_24DC33D70@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = -1;
  return result;
}

uint64_t MethodConfig.executionPolicy.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 88);
  v7[0] = *(v1 + 72);
  v7[1] = v2;
  v8[0] = *(v1 + 104);
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 113);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_24DC33DDC(v7, &v6);
}

uint64_t sub_24DC33DDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EDB0, &qword_24DCB80B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 MethodConfig.executionPolicy.setter(uint64_t a1)
{
  v3 = *(v1 + 88);
  v6[0] = *(v1 + 72);
  v6[1] = v3;
  v7[0] = *(v1 + 104);
  *(v7 + 9) = *(v1 + 113);
  sub_24DC3DFD4(v6, &qword_27F19EDB0, &qword_24DCB80B0);
  v4 = *(a1 + 16);
  *(v1 + 72) = *a1;
  *(v1 + 88) = v4;
  *(v1 + 104) = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 113) = result;
  return result;
}

__n128 MethodConfig.init(names:waitForReady:timeout:maxRequestMessageBytes:maxResponseMessageBytes:executionPolicy:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  *(a9 + 72) = 0u;
  *(a9 + 88) = 0u;
  *(a9 + 104) = 0u;
  *(a9 + 120) = 0;
  *(a9 + 128) = -1;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10 & 1;
  v12 = *(a9 + 72);
  v13 = *(a9 + 88);
  v14 = *(a9 + 104);
  *&v18[9] = *(a9 + 113);
  v17[1] = v13;
  *v18 = v14;
  v17[0] = v12;
  sub_24DC3DFD4(v17, &qword_27F19EDB0, &qword_24DCB80B0);
  v15 = *(a11 + 16);
  *(a9 + 72) = *a11;
  *(a9 + 88) = v15;
  *(a9 + 104) = *(a11 + 32);
  result = *(a11 + 41);
  *(a9 + 113) = result;
  return result;
}

uint64_t sub_24DC33FB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_24DCB57A4() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_24DCB57A4() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t MethodConfig.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v21 = *(v2 + 32);
  v22 = *(v2 + 48);
  v19 = v2[5];
  v20 = v2[7];
  v6 = *(v2 + 64);
  v7 = *(v2 + 13);
  v28 = *(v2 + 11);
  *v29 = v7;
  *&v29[9] = *(v2 + 113);
  v27 = *(v2 + 9);
  v8 = *(v4 + 16);
  MEMORY[0x253035FF0](v8);
  if (v8)
  {
    v9 = v4 + 56;
    do
    {

      sub_24DCB4D44();
      sub_24DCB4D44();

      v9 += 32;
      --v8;
    }

    while (v8);
  }

  if (v5 != 2)
  {
    sub_24DCB58C4();
  }

  sub_24DCB58C4();
  if (v21)
  {
    sub_24DCB58C4();
    if (!v22)
    {
      goto LABEL_8;
    }

LABEL_11:
    sub_24DCB58C4();
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_24DCB58C4();
  sub_24DCB5994();
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_24DCB58C4();
  MEMORY[0x253035FF0](v19);
  if (!v6)
  {
LABEL_9:
    sub_24DCB58C4();
    MEMORY[0x253035FF0](v20);
    goto LABEL_13;
  }

LABEL_12:
  sub_24DCB58C4();
LABEL_13:
  if (v29[24] == 255)
  {
    return sub_24DCB58C4();
  }

  v10 = *(&v28 + 1);
  v11 = *&v29[8];
  v12 = *&v29[16];
  sub_24DCB58C4();
  if (v29[24])
  {
    MEMORY[0x253035FF0](1);
    MEMORY[0x253035FF0](v27);
    v13 = *(v2 + 11);
    v24 = *(v2 + 9);
    v25 = v13;
    v26[0] = *(v2 + 13);
    *(v26 + 9) = *(v2 + 113);
    sub_24DC3C1B4(&v24, v23);
    sub_24DCB5994();
    v14 = a1;
    v15 = v10;
  }

  else
  {
    MEMORY[0x253035FF0](0);
    MEMORY[0x253035FF0](v27);
    v17 = *(v2 + 11);
    v24 = *(v2 + 9);
    v25 = v17;
    v26[0] = *(v2 + 13);
    *(v26 + 9) = *(v2 + 113);
    sub_24DC3C1B4(&v24, v23);
    sub_24DCB5994();
    sub_24DCB5994();
    if ((v11 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v18 = v11;
    }

    else
    {
      v18 = 0;
    }

    MEMORY[0x253036020](v18);
    v14 = a1;
    v15 = v12;
  }

  sub_24DC3B8F8(v14, v15);
  return sub_24DC3DFD4(&v27, &qword_27F19EDB0, &qword_24DCB80B0);
}

uint64_t MethodConfig.hashValue.getter()
{
  sub_24DCB58A4();
  MethodConfig.hash(into:)(v1);
  return sub_24DCB58F4();
}

uint64_t sub_24DC34354()
{
  sub_24DCB58A4();
  MethodConfig.hash(into:)(v1);
  return sub_24DCB58F4();
}

uint64_t sub_24DC34398(uint64_t a1)
{
  sub_24DCB58A4();
  MethodConfig.hash(into:)(v2);
  return sub_24DCB58F4();
}

uint64_t sub_24DC34404@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 41);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_24DC3C1EC(v7, &v6);
}

uint64_t RPCExecutionPolicy.retry.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 56))
  {
    result = 0;
    v4 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  else
  {
    v8 = v1[1];
    v9 = v1[2];
    v7 = *v1;

    v5 = v8;
    v6 = v9;
    v4 = v7;
  }

  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t RPCExecutionPolicy.hedge.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = 0uLL;
  v4 = 0uLL;
  if (*(v1 + 56) == 1)
  {
    v6 = v1[1];
    v7 = *v1;

    v4 = v6;
    v3 = v7;
  }

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t static RPCExecutionPolicy.retry(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 32) = v2;
  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  *(a2 + 56) = 0;
}

uint64_t static RPCExecutionPolicy.hedge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 24) = v2;
  *(a2 + 56) = 1;
}

uint64_t static RPCExecutionPolicy.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v16[0] = *a1;
  v16[1] = v2;
  v4 = *a1;
  v3 = a1[1];
  v17[0] = a1[2];
  *(v17 + 9) = *(a1 + 41);
  v5 = a2[1];
  v18[0] = *a2;
  v18[1] = v5;
  v7 = *a2;
  v6 = a2[1];
  v19[0] = a2[2];
  *(v19 + 9) = *(a2 + 41);
  v13 = v4;
  v14 = v3;
  v15[0] = a1[2];
  *(v15 + 9) = *(a1 + 41);
  v10 = v7;
  v11 = v6;
  v12[0] = a2[2];
  *(v12 + 9) = *(a2 + 41);
  sub_24DC3C1EC(v16, v22);
  sub_24DC3C1EC(v18, v22);
  v8 = sub_24DC3BAF8(&v13, &v10);
  v20[0] = v10;
  v20[1] = v11;
  v21[0] = v12[0];
  *(v21 + 9) = *(v12 + 9);
  sub_24DC3C224(v20);
  v22[0] = v13;
  v22[1] = v14;
  v23[0] = v15[0];
  *(v23 + 9) = *(v15 + 9);
  sub_24DC3C224(v22);
  return v8 & 1;
}

uint64_t sub_24DC34678(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[3];
  if (v1[7])
  {
    MEMORY[0x253035FF0](1);
    MEMORY[0x253035FF0](v3);
    sub_24DCB5994();
  }

  else
  {
    v6 = v1[5];
    v5 = v1[6];
    MEMORY[0x253035FF0](0);
    MEMORY[0x253035FF0](v3);
    sub_24DCB5994();
    sub_24DCB5994();
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x253036020](v7);
    v4 = v5;
  }

  return sub_24DC3B8F8(a1, v4);
}

uint64_t sub_24DC34754()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v0 + 56);
  sub_24DCB58A4();
  if (v5)
  {
    MEMORY[0x253035FF0](1);
    MEMORY[0x253035FF0](v1);
    sub_24DCB5994();
  }

  else
  {
    MEMORY[0x253035FF0](0);
    MEMORY[0x253035FF0](v1);
    sub_24DCB5994();
    sub_24DCB5994();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x253036020](v6);
    v2 = v4;
  }

  sub_24DC3B8F8(v8, v2);
  return sub_24DCB58F4();
}

uint64_t sub_24DC34844(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[3];
  if (v1[7])
  {
    MEMORY[0x253035FF0](1);
    MEMORY[0x253035FF0](v3);
    sub_24DCB5994();

    return sub_24DC3B8F8(a1, v4);
  }

  else
  {
    MEMORY[0x253035FF0](0);
    return RetryPolicy.hash(into:)(a1);
  }
}

uint64_t sub_24DC34930(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[3];
  v4 = v1[5];
  v5 = v1[6];
  v6 = *(v1 + 56);
  sub_24DCB58A4();
  if (v6)
  {
    MEMORY[0x253035FF0](1);
    MEMORY[0x253035FF0](v2);
    sub_24DCB5994();
  }

  else
  {
    MEMORY[0x253035FF0](0);
    MEMORY[0x253035FF0](v2);
    sub_24DCB5994();
    sub_24DCB5994();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x253036020](v7);
    v3 = v5;
  }

  sub_24DC3B8F8(v9, v3);
  return sub_24DCB58F4();
}

uint64_t sub_24DC34A18(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v16[0] = *a1;
  v16[1] = v2;
  v4 = *a1;
  v3 = a1[1];
  v17[0] = a1[2];
  *(v17 + 9) = *(a1 + 41);
  v5 = a2[1];
  v18[0] = *a2;
  v18[1] = v5;
  v7 = *a2;
  v6 = a2[1];
  v19[0] = a2[2];
  *(v19 + 9) = *(a2 + 41);
  v13 = v4;
  v14 = v3;
  *v15 = a1[2];
  *&v15[9] = *(a1 + 41);
  v10 = v7;
  v11 = v6;
  *v12 = a2[2];
  *&v12[9] = *(a2 + 41);
  sub_24DC3C1EC(v16, v22);
  sub_24DC3C1EC(v18, v22);
  v8 = sub_24DC343D8();
  v20[0] = v10;
  v20[1] = v11;
  v21[0] = *v12;
  *(v21 + 9) = *&v12[9];
  sub_24DC3C224(v20);
  v22[0] = v13;
  v22[1] = v14;
  v23[0] = *v15;
  *(v23 + 9) = *&v15[9];
  sub_24DC3C224(v22);
  return v8 & 1;
}

unint64_t RetryPolicy.maxAttempts.setter(unint64_t result)
{
  *v1 = result;
  if (result < 2)
  {
    static RuntimeError.Code.invalidArgument.getter(&v5);
    sub_24DCB54D4();

    v3 = sub_24DCB5744();
    MEMORY[0x253035590](v3);

    MEMORY[0x253035590](41, 0xE100000000000000);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v5, 0xD00000000000002BLL, 0x800000024DCC5250, 0, v4);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v2 = 5;
    if (result < 5)
    {
      v2 = result;
    }

    *v1 = v2;
  }

  return result;
}

uint64_t sub_24DC34C74(uint64_t result)
{
  if (result < 2)
  {
    static RuntimeError.Code.invalidArgument.getter(&v3);
    sub_24DCB54D4();

    v1 = sub_24DCB5744();
    MEMORY[0x253035590](v1);

    MEMORY[0x253035590](41, 0xE100000000000000);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v3, 0xD00000000000002BLL, 0x800000024DCC5250, 0, v2);
    return swift_willThrow();
  }

  else if (result >= 5)
  {
    return 5;
  }

  return result;
}

__n128 sub_24DC34DB8@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

uint64_t sub_24DC34DC4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  sub_24DCB59A4();
  result = sub_24DCB5974();
  if (result)
  {
    *(a2 + 8) = v3;
    *(a2 + 16) = v4;
  }

  else
  {
    static RuntimeError.Code.invalidArgument.getter(&v7);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v7, 0xD000000000000028, 0x800000024DCC5280, 0, v6);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t RetryPolicy.initialBackoff.setter(uint64_t a1, uint64_t a2)
{
  sub_24DCB59A4();
  result = sub_24DCB5974();
  if (result)
  {
    *(v2 + 8) = a1;
    *(v2 + 16) = a2;
  }

  else
  {
    static RuntimeError.Code.invalidArgument.getter(&v7);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v7, 0xD000000000000028, 0x800000024DCC5280, 0, v6);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*RetryPolicy.initialBackoff.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 8);
  return sub_24DC34F78;
}

uint64_t sub_24DC34F78(uint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = a1[1];
  sub_24DCB59A4();
  result = sub_24DCB5974();
  if ((a2 & 1) == 0)
  {
    if ((result & 1) == 0)
    {
      static RuntimeError.Code.invalidArgument.getter(v11);
      sub_24DC3C254();
      swift_allocError();
      v8 = v11;
      goto LABEL_7;
    }

LABEL_5:
    v9 = a1[2];
    *(v9 + 8) = v4;
    *(v9 + 16) = v5;
    return result;
  }

  if (result)
  {
    goto LABEL_5;
  }

  static RuntimeError.Code.invalidArgument.getter(&v10);
  sub_24DC3C254();
  swift_allocError();
  v8 = &v10;
LABEL_7:
  RuntimeError.init(code:message:cause:)(v8, 0xD000000000000028, 0x800000024DCC5280, 0, v7);
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

__n128 sub_24DC35090@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

uint64_t sub_24DC3509C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  sub_24DCB59A4();
  result = sub_24DCB5974();
  if (result)
  {
    *(a2 + 24) = v3;
    *(a2 + 32) = v4;
  }

  else
  {
    static RuntimeError.Code.invalidArgument.getter(&v7);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v7, 0xD000000000000024, 0x800000024DCC52B0, 0, v6);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t RetryPolicy.maxBackoff.setter(uint64_t a1, uint64_t a2)
{
  sub_24DCB59A4();
  result = sub_24DCB5974();
  if (result)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    static RuntimeError.Code.invalidArgument.getter(&v7);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v7, 0xD000000000000024, 0x800000024DCC52B0, 0, v6);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*RetryPolicy.maxBackoff.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 24);
  return sub_24DC35250;
}

uint64_t sub_24DC35250(uint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = a1[1];
  sub_24DCB59A4();
  result = sub_24DCB5974();
  if ((a2 & 1) == 0)
  {
    if ((result & 1) == 0)
    {
      static RuntimeError.Code.invalidArgument.getter(v11);
      sub_24DC3C254();
      swift_allocError();
      v8 = v11;
      goto LABEL_7;
    }

LABEL_5:
    v9 = a1[2];
    *(v9 + 24) = v4;
    *(v9 + 32) = v5;
    return result;
  }

  if (result)
  {
    goto LABEL_5;
  }

  static RuntimeError.Code.invalidArgument.getter(&v10);
  sub_24DC3C254();
  swift_allocError();
  v8 = &v10;
LABEL_7:
  RuntimeError.init(code:message:cause:)(v8, 0xD000000000000024, 0x800000024DCC52B0, 0, v7);
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

double sub_24DC35368@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 40);
  *a2 = result;
  return result;
}

void *sub_24DC35374(void *result, uint64_t a2)
{
  if (*result <= 0.0)
  {
    v10 = v5;
    v11 = v4;
    v12 = v3;
    v13 = v2;
    v14 = v6;
    v15 = v7;
    static RuntimeError.Code.invalidArgument.getter(&v9);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v9, 0xD00000000000002BLL, 0x800000024DCC52E0, 0, v8);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    *(a2 + 40) = *result;
  }

  return result;
}

void RetryPolicy.backoffMultiplier.setter(double a1)
{
  if (a1 <= 0.0)
  {
    static RuntimeError.Code.invalidArgument.getter(&v3);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v3, 0xD00000000000002BLL, 0x800000024DCC52E0, 0, v2);
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    *(v1 + 40) = a1;
  }
}

uint64_t (*RetryPolicy.backoffMultiplier.modify(void *a1))(uint64_t result, char a2)
{
  a1[1] = v1;
  *a1 = *(v1 + 40);
  return sub_24DC354F4;
}

uint64_t sub_24DC354F4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (*result <= 0.0)
    {
      static RuntimeError.Code.invalidArgument.getter(v5);
      sub_24DC3C254();
      swift_allocError();
      v3 = v5;
      goto LABEL_7;
    }

LABEL_6:
    *(*(result + 8) + 40) = *result;
    return result;
  }

  if (*result > 0.0)
  {
    goto LABEL_6;
  }

  static RuntimeError.Code.invalidArgument.getter(&v4);
  sub_24DC3C254();
  swift_allocError();
  v3 = &v4;
LABEL_7:
  RuntimeError.init(code:message:cause:)(v3, 0xD00000000000002BLL, 0x800000024DCC52E0, 0, v2);
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t RetryPolicy.retryableStatusCodes.setter(uint64_t a1)
{
  if (*(a1 + 16))
  {

    *(v1 + 48) = a1;
  }

  else
  {
    static RuntimeError.Code.invalidArgument.getter(&v5);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v5, 0xD000000000000025, 0x800000024DCC5310, 0, v4);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*RetryPolicy.retryableStatusCodes.modify(void *a1))()
{
  v3 = *(v1 + 48);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_24DC3573C;
}

uint64_t sub_24DC3573C(void *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if ((a2 & 1) == 0)
  {
    if (v3)
    {
      v6 = a1[1];

      *(v6 + 48) = v2;
      return result;
    }

    static RuntimeError.Code.invalidArgument.getter(v10);
    sub_24DC3C254();
    swift_allocError();
    v8 = v10;
    goto LABEL_10;
  }

  if (!v3)
  {

    static RuntimeError.Code.invalidArgument.getter(&v9);
    sub_24DC3C254();
    swift_allocError();
    v8 = &v9;
LABEL_10:
    RuntimeError.init(code:message:cause:)(v8, 0xD000000000000025, 0x800000024DCC5310, 0, v7);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v4 = a1[1];

  *(v4 + 48) = v2;
}

uint64_t RetryPolicy.init(maxAttempts:initialBackoff:maxBackoff:backoffMultiplier:retryableStatusCodes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v15 = sub_24DC34C74(a1);
  sub_24DCB59A4();
  if ((sub_24DCB5974() & 1) == 0)
  {
    static RuntimeError.Code.invalidArgument.getter(v24);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(v24, 0xD000000000000028, 0x800000024DCC5280, 0, v17);
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_7;
  }

  sub_24DCB59A4();
  result = sub_24DCB5974();
  if ((result & 1) == 0)
  {
LABEL_7:
    static RuntimeError.Code.invalidArgument.getter(&v23);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v23, 0xD000000000000024, 0x800000024DCC52B0, 0, v18);
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_8;
  }

  if (a8 <= 0.0)
  {
LABEL_8:
    static RuntimeError.Code.invalidArgument.getter(&v21);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v21, 0xD00000000000002BLL, 0x800000024DCC52E0, 0, v19);
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_9;
  }

  if (*(a6 + 16))
  {
    *a7 = v15;
    *(a7 + 8) = a2;
    *(a7 + 16) = a3;
    *(a7 + 24) = a4;
    *(a7 + 32) = a5;
    *(a7 + 40) = a8;
    *(a7 + 48) = a6;
    return result;
  }

LABEL_9:
  static RuntimeError.Code.invalidArgument.getter(&v22);
  sub_24DC3C254();
  swift_allocError();
  RuntimeError.init(code:message:cause:)(&v22, 0xD000000000000025, 0x800000024DCC5310, 0, v20);
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_24DC35B54(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v16 = result;
  if (v7)
  {
    do
    {
      v17 = (v7 - 1) & v7;
LABEL_13:
      sub_24DC3DF2C();
      v12 = sub_24DCB4D24();
      v13 = -1 << *(a2 + 32);
      v14 = v12 & ~v13;
      if (((*(v9 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        return 0;
      }

      v15 = ~v13;
      sub_24DC3DF80();
      while ((sub_24DCB4DA4() & 1) == 0)
      {
        v14 = (v14 + 1) & v15;
        if (((*(v9 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          return 0;
        }
      }

      result = v16;
      v7 = v17;
    }

    while (v17);
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v17 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t RetryPolicy.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  MEMORY[0x253035FF0](*v1);
  sub_24DCB5994();
  sub_24DCB5994();
  v5 = 0.0;
  if (v3 != 0.0)
  {
    v5 = v3;
  }

  MEMORY[0x253036020](*&v5);

  return sub_24DC3B8F8(a1, v4);
}

uint64_t RetryPolicy.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = *(v0 + 6);
  sub_24DCB58A4();
  MEMORY[0x253035FF0](*&v1);
  sub_24DCB5994();
  sub_24DCB5994();
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  MEMORY[0x253036020](*&v4);
  sub_24DC3B8F8(v6, v3);
  return sub_24DCB58F4();
}

uint64_t sub_24DC35E74(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[5];
  v4 = *(v1 + 6);
  sub_24DCB58A4();
  MEMORY[0x253035FF0](*&v2);
  sub_24DCB5994();
  sub_24DCB5994();
  v5 = 0.0;
  if (v3 != 0.0)
  {
    v5 = v3;
  }

  MEMORY[0x253036020](*&v5);
  sub_24DC3B8F8(v7, v4);
  return sub_24DCB58F4();
}

unint64_t HedgingPolicy.maxAttempts.setter(unint64_t result)
{
  *v1 = result;
  if (result < 2)
  {
    static RuntimeError.Code.invalidArgument.getter(&v5);
    sub_24DCB54D4();

    v3 = sub_24DCB5744();
    MEMORY[0x253035590](v3);

    MEMORY[0x253035590](41, 0xE100000000000000);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v5, 0xD00000000000002BLL, 0x800000024DCC5250, 0, v4);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v2 = 5;
    if (result < 5)
    {
      v2 = result;
    }

    *v1 = v2;
  }

  return result;
}

unint64_t *sub_24DC360BC(unint64_t *result, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    v3 = result[1];
    v4 = *v3;
    if (*v3 < 2)
    {
      v6 = result;
      static RuntimeError.Code.invalidArgument.getter(&v11);
      v12 = 0;
      v13 = 0xE000000000000000;
      sub_24DCB54D4();

      v12 = 0xD00000000000002BLL;
      v13 = 0x800000024DCC5250;
      *v6 = v4;
      v7 = sub_24DCB5744();
      MEMORY[0x253035590](v7);

      MEMORY[0x253035590](41, 0xE100000000000000);
      v8 = v12;
      v9 = v13;
      sub_24DC3C254();
      swift_allocError();
      RuntimeError.init(code:message:cause:)(&v11, v8, v9, 0, v10);
      swift_willThrow();
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v5 = 5;
      if (v4 < 5)
      {
        v5 = *v3;
      }

      *v3 = v5;
    }
  }

  return result;
}

uint64_t sub_24DC36200(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  sub_24DCB59A4();
  result = sub_24DCB5974();
  if (result)
  {
    static RuntimeError.Code.invalidArgument.getter(&v7);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v7, 0xD000000000000032, 0x800000024DCC5340, 0, v6);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    *(a2 + 8) = v3;
    *(a2 + 16) = v4;
  }

  return result;
}

uint64_t HedgingPolicy.hedgingDelay.setter(uint64_t a1, uint64_t a2)
{
  sub_24DCB59A4();
  result = sub_24DCB5974();
  if (result)
  {
    static RuntimeError.Code.invalidArgument.getter(&v7);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v7, 0xD000000000000032, 0x800000024DCC5340, 0, v6);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    *(v2 + 8) = a1;
    *(v2 + 16) = a2;
  }

  return result;
}

uint64_t (*HedgingPolicy.hedgingDelay.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 8);
  return sub_24DC363C4;
}

uint64_t sub_24DC363C4(uint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = a1[1];
  sub_24DCB59A4();
  result = sub_24DCB5974();
  if ((a2 & 1) == 0)
  {
    if (result)
    {
      static RuntimeError.Code.invalidArgument.getter(v11);
      sub_24DC3C254();
      swift_allocError();
      v8 = v11;
      goto LABEL_7;
    }

LABEL_5:
    v9 = a1[2];
    *(v9 + 8) = v4;
    *(v9 + 16) = v5;
    return result;
  }

  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  static RuntimeError.Code.invalidArgument.getter(&v10);
  sub_24DC3C254();
  swift_allocError();
  v8 = &v10;
LABEL_7:
  RuntimeError.init(code:message:cause:)(v8, 0xD000000000000032, 0x800000024DCC5340, 0, v7);
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t HedgingPolicy.nonFatalStatusCodes.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t HedgingPolicy.init(maxAttempts:hedgingDelay:nonFatalStatusCodes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = sub_24DC34C74(a1);
  sub_24DCB59A4();
  result = sub_24DCB5974();
  if (result)
  {
    static RuntimeError.Code.invalidArgument.getter(v12);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(v12, 0xD000000000000032, 0x800000024DCC5340, 0, v11);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    *a5 = v9;
    a5[1] = a2;
    a5[2] = a3;
    a5[3] = a4;
  }

  return result;
}

uint64_t static HedgingPolicy.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[3];
  v3 = a1[3];
  if ((sub_24DCB5984() & 1) == 0)
  {
    return 0;
  }

  return sub_24DC35B54(v3, v2);
}

uint64_t HedgingPolicy.hash(into:)(uint64_t a1)
{
  v3 = v1[3];
  MEMORY[0x253035FF0](*v1);
  sub_24DCB5994();

  return sub_24DC3B8F8(a1, v3);
}

uint64_t HedgingPolicy.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[3];
  sub_24DCB58A4();
  MEMORY[0x253035FF0](v1);
  sub_24DCB5994();
  sub_24DC3B8F8(v4, v2);
  return sub_24DCB58F4();
}

uint64_t sub_24DC3678C()
{
  v1 = *v0;
  v2 = v0[3];
  sub_24DCB58A4();
  MEMORY[0x253035FF0](v1);
  sub_24DCB5994();
  sub_24DC3B8F8(v4, v2);
  return sub_24DCB58F4();
}

uint64_t sub_24DC36804(uint64_t a1)
{
  v3 = v1[3];
  MEMORY[0x253035FF0](*v1);
  sub_24DCB5994();

  return sub_24DC3B8F8(a1, v3);
}

uint64_t sub_24DC3686C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[3];
  sub_24DCB58A4();
  MEMORY[0x253035FF0](v2);
  sub_24DCB5994();
  sub_24DC3B8F8(v5, v3);
  return sub_24DCB58F4();
}

uint64_t sub_24DC368E0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[3];
  v3 = a1[3];
  if ((sub_24DCB5984() & 1) == 0)
  {
    return 0;
  }

  return sub_24DC35B54(v3, v2);
}

uint64_t sub_24DC36958(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x50676E6967646568;
  v5 = 0xED00007963696C6FLL;
  if (a1 == 5)
  {
    v4 = 0x6C6F507972746572;
    v5 = 0xEB00000000796369;
  }

  v6 = 0xD000000000000016;
  v7 = 0x800000024DCC5120;
  if (a1 != 3)
  {
    v6 = 0xD000000000000017;
    v7 = 0x800000024DCC5140;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x52726F4674696177;
  v9 = 0xEC00000079646165;
  if (a1 != 1)
  {
    v8 = 0x74756F656D6974;
    v9 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 1701667182;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEC00000079646165;
        if (v10 != 0x52726F4674696177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x74756F656D6974)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701667182)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEB00000000796369;
      if (v10 != 0x6C6F507972746572)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xED00007963696C6FLL;
      if (v10 != 0x50676E6967646568)
      {
LABEL_39:
        v13 = sub_24DCB57A4();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0x800000024DCC5120;
    if (v10 != 0xD000000000000016)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0x800000024DCC5140;
    if (v10 != 0xD000000000000017)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_24DC36BB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x426C616974696E69;
    }

    else
    {
      v3 = 0x6D6574744178616DLL;
    }

    if (v2)
    {
      v4 = 0xEE0066666F6B6361;
    }

    else
    {
      v4 = 0xEB00000000737470;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6F6B63614278616DLL;
    v4 = 0xEA00000000006666;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0xD000000000000014;
    }

    if (v2 == 3)
    {
      v4 = 0x800000024DCC51B0;
    }

    else
    {
      v4 = 0x800000024DCC51D0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x426C616974696E69;
    }

    else
    {
      v7 = 0x6D6574744178616DLL;
    }

    if (a2)
    {
      v6 = 0xEE0066666F6B6361;
    }

    else
    {
      v6 = 0xEB00000000737470;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xEA00000000006666;
    if (v3 != 0x6F6B63614278616DLL)
    {
LABEL_37:
      v8 = sub_24DCB57A4();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (a2 == 3)
    {
      v6 = 0x800000024DCC51B0;
    }

    else
    {
      v6 = 0x800000024DCC51D0;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

uint64_t sub_24DC36D7C(uint64_t a1)
{
  sub_24DCB4D44();
}

uint64_t sub_24DC36EAC(uint64_t a1, unsigned __int8 a2)
{
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

unint64_t sub_24DC36FE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24DC3C88C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24DC37018(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  v5 = 0xEB00000000796369;
  v6 = 0x6C6F507972746572;
  if (v2 != 5)
  {
    v6 = 0x50676E6967646568;
    v5 = 0xED00007963696C6FLL;
  }

  v7 = 0xD000000000000016;
  v8 = 0x800000024DCC5120;
  if (v2 != 3)
  {
    v7 = 0xD000000000000017;
    v8 = 0x800000024DCC5140;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xEC00000079646165;
  v10 = 0x52726F4674696177;
  if (v2 != 1)
  {
    v10 = 0x74756F656D6974;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_24DC37110()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6C6F507972746572;
  if (v1 != 5)
  {
    v3 = 0x50676E6967646568;
  }

  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x52726F4674696177;
  if (v1 != 1)
  {
    v5 = 0x74756F656D6974;
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

unint64_t sub_24DC37204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24DC3C88C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24DC37238(uint64_t a1)
{
  v2 = sub_24DC3C2EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24DC37274(uint64_t a1)
{
  v2 = sub_24DC3C2EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MethodConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EDC0, &qword_24DCB80B8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v10 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_24DC3C2EC();
  sub_24DCB5924();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v51);
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    LOBYTE(v66) = -1;
    return sub_24DC3DFD4(&v62, &qword_27F19EDB0, &qword_24DCB80B0);
  }

  v11 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EDC8, &qword_24DCB80C0);
  LOBYTE(v53) = 0;
  sub_24DC3C544(&qword_27F19EDD0, sub_24DC3C38C, MEMORY[0x277D83978]);
  sub_24DCB56A4();
  v13 = v62;
  LOBYTE(v62) = 1;
  v50 = sub_24DCB5654();
  LOBYTE(v53) = 2;
  sub_24DC3C3E0();
  sub_24DCB5674();
  v49 = v13;
  if (v63)
  {
    v14 = 0;
  }

  else
  {
    v14 = v62;
  }

  if (v63)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(&v62 + 1);
  }

  v82 = v63;
  LOBYTE(v62) = 3;
  v16 = sub_24DCB5664();
  v46 = v15;
  v47 = v14;
  v48 = v16;
  v80 = v17 & 1;
  LOBYTE(v62) = 4;
  v45 = sub_24DCB5664();
  v78 = v18 & 1;
  LOBYTE(v62) = 6;
  sub_24DC3C434();
  sub_24DCB5674();
  v19 = v49;
  if (*(&v54 + 1))
  {
    v43 = *(&v54 + 1);
    v20 = *(&v53 + 1);
    v44 = v54;
    v42 = v53;
    (*(v11 + 8))(v9, v6);
    v41 = 1;
    v52 = 1;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0;
    LOBYTE(v66) = -1;
    sub_24DC3DFD4(&v62, &qword_27F19EDB0, &qword_24DCB80B0);
    v22 = v47;
  }

  else
  {
    LOBYTE(v62) = 5;
    sub_24DC3C488();
    sub_24DCB5674();
    (*(v11 + 8))(v9, v6);
    v22 = v47;
    if (v56)
    {
      v34 = v56;
      v3 = *(&v55 + 1);
      v36 = v55;
      v20 = *(&v53 + 1);
      v43 = *(&v54 + 1);
      v44 = v54;
      v42 = v53;
      v52 = 0;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0;
      LOBYTE(v66) = -1;
      sub_24DC3DFD4(&v62, &qword_27F19EDB0, &qword_24DCB80B0);
      v41 = 0;
      v23 = v46;
      v21 = v34;
      goto LABEL_13;
    }

    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v41 = 255;
    LOBYTE(v66) = -1;
    sub_24DC3DFD4(&v62, &qword_27F19EDB0, &qword_24DCB80B0);
    v42 = 0;
    v43 = 0;
    v20 = 0;
    v44 = 0;
    v36 = 0;
    v21 = 0;
    v3 = 0;
  }

  v23 = v46;
LABEL_13:
  v38 = v20;
  *&v53 = v19;
  BYTE8(v53) = v50;
  *(&v53 + 9) = v83[0];
  HIDWORD(v53) = *(v83 + 3);
  *&v54 = v22;
  *(&v54 + 1) = v23;
  v40 = v82;
  LOBYTE(v55) = v82;
  *(&v55 + 1) = *v81;
  DWORD1(v55) = *&v81[3];
  *(&v55 + 1) = v48;
  v39 = v80;
  LOBYTE(v56) = v80;
  *(&v56 + 1) = *v79;
  DWORD1(v56) = *&v79[3];
  *(&v56 + 1) = v45;
  v37 = v78;
  LOBYTE(v57) = v78;
  *(&v57 + 1) = *v77;
  DWORD1(v57) = *&v77[3];
  v25 = v42;
  v24 = v43;
  *(&v57 + 1) = v42;
  *&v58 = v20;
  v26 = v44;
  *(&v58 + 1) = v44;
  *&v59 = v43;
  v27 = v36;
  *(&v59 + 1) = v36;
  *&v60 = v3;
  *(&v60 + 1) = v21;
  v28 = v41;
  v61 = v41;
  v29 = v60;
  *(a2 + 96) = v59;
  *(a2 + 112) = v29;
  *(a2 + 128) = v28;
  v30 = v58;
  *(a2 + 64) = v57;
  *(a2 + 80) = v30;
  v31 = v56;
  *(a2 + 32) = v55;
  *(a2 + 48) = v31;
  v32 = v54;
  *a2 = v53;
  *(a2 + 16) = v32;
  v33 = v21;
  sub_24DC3C4DC(&v53, &v62);
  __swift_destroy_boxed_opaque_existential_1(v51);
  *&v62 = v49;
  BYTE8(v62) = v50;
  *(&v62 + 9) = v83[0];
  HIDWORD(v62) = *(v83 + 3);
  *&v63 = v47;
  *(&v63 + 1) = v46;
  LOBYTE(v64) = v40;
  *(&v64 + 1) = *v81;
  DWORD1(v64) = *&v81[3];
  *(&v64 + 1) = v48;
  LOBYTE(v65) = v39;
  HIDWORD(v65) = *&v79[3];
  *(&v65 + 1) = *v79;
  v66 = v45;
  v67 = v37;
  *v68 = *v77;
  *&v68[3] = *&v77[3];
  v69 = v25;
  v70 = v38;
  v71 = v26;
  v72 = v24;
  v73 = v27;
  v74 = v3;
  v75 = v33;
  v76 = v28;
  return sub_24DC3C514(&v62);
}

uint64_t MethodConfig.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EDF8, &qword_24DCB80C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = *v1;
  v35 = *(v1 + 8);
  v9 = v1[2];
  v33 = v1[3];
  v34 = v9;
  LODWORD(v9) = *(v1 + 32);
  v30 = v1[5];
  v31 = *(v1 + 48);
  v32 = v9;
  v28 = v1[7];
  v29 = *(v1 + 64);
  v10 = v1[10];
  v23 = v1[9];
  v24 = v10;
  v11 = v1[12];
  v25 = v1[11];
  v26 = v11;
  v21 = v1[13];
  v12 = v1[14];
  v22 = v1[15];
  v27 = *(v1 + 128);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DC3C2EC();

  v13 = v4;
  sub_24DCB5944();
  v36 = v8;
  v44 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EDC8, &qword_24DCB80C0);
  sub_24DC3C544(&qword_27F19EE00, sub_24DC3C5BC, MEMORY[0x277D83948]);
  sub_24DCB5724();
  if (v2)
  {
  }

  else
  {
    v15 = v33;
    v14 = v34;
    v16 = v32;

    LOBYTE(v36) = 1;
    sub_24DCB56B4();
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = v14;
    }

    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v15;
    }

    v36 = v17;
    v37 = v18;
    LOBYTE(v38) = v16;
    v44 = 2;
    sub_24DC3C610();
    sub_24DCB56D4();
    LOBYTE(v36) = 3;
    sub_24DCB56C4();
    v44 = 4;
    sub_24DCB56C4();
    if (v27 != 255)
    {
      v36 = v23;
      v37 = v24;
      v38 = v25;
      v39 = v26;
      if (v27)
      {
        v43 = 6;
        sub_24DC3C664();
      }

      else
      {
        v40 = v21;
        v41 = v12;
        v42 = v22;
        v43 = 5;
        sub_24DC3C6B8();
      }

      sub_24DCB5724();
    }
  }

  return (*(v5 + 8))(v7, v13);
}

uint64_t sub_24DC37D24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x646F6874656DLL;
  }

  else
  {
    v3 = 0x65636976726573;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x646F6874656DLL;
  }

  else
  {
    v5 = 0x65636976726573;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DCB57A4();
  }

  return v8 & 1;
}

uint64_t sub_24DC37DC8()
{
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DC37E48(uint64_t a1)
{
  sub_24DCB4D44();
}

uint64_t sub_24DC37EB4(uint64_t a1)
{
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DC37F30@<X0>(char *a2@<X8>)
{
  v3 = sub_24DCB5634();

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

void sub_24DC37F90(uint64_t *a1@<X8>)
{
  v2 = 0x65636976726573;
  if (*v1)
  {
    v2 = 0x646F6874656DLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24DC37FCC()
{
  if (*v0)
  {
    return 0x646F6874656DLL;
  }

  else
  {
    return 0x65636976726573;
  }
}

uint64_t sub_24DC38004@<X0>(char *a3@<X8>)
{
  v4 = sub_24DCB5634();

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

uint64_t sub_24DC38074(uint64_t a1)
{
  v2 = sub_24DC3C70C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24DC380B0(uint64_t a1)
{
  v2 = sub_24DC3C70C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MethodConfig.Name.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EE28, &qword_24DCB80D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DC3C70C();
  sub_24DCB5924();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v20) = 0;
  v9 = sub_24DCB5644();
  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  v24 = v12;
  v13 = 0xE000000000000000;
  if (v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  LOBYTE(v20) = 1;
  v15 = sub_24DCB5644();
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v13 = v16;
  }

  v20 = v24;
  v21 = v14;
  v19 = v17;
  v22 = v17;
  v23 = v13;

  sub_24DC336BC();

  (*(v6 + 8))(v8, v5);
  *a2 = v24;
  a2[1] = v14;
  a2[2] = v19;
  a2[3] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MethodConfig.Name.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EE30, &qword_24DCB80D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *v1;
  v10[1] = v1[1];
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DC3C70C();
  sub_24DCB5944();
  v12 = 1;
  v8 = v10[3];
  sub_24DCB56E4();
  if (!v8)
  {
    v11 = 0;
    sub_24DCB56E4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24DC38528()
{
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DC38628(uint64_t a1)
{
  sub_24DCB4D44();
}

uint64_t sub_24DC38714(uint64_t a1)
{
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

unint64_t sub_24DC38810@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24DC3C8D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24DC38840(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000737470;
  v4 = 0x6D6574744178616DLL;
  v5 = 0xEA00000000006666;
  v6 = 0x6F6B63614278616DLL;
  v7 = 0xD000000000000011;
  v8 = 0x800000024DCC51B0;
  if (v2 != 3)
  {
    v7 = 0xD000000000000014;
    v8 = 0x800000024DCC51D0;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x426C616974696E69;
    v3 = 0xEE0066666F6B6361;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_24DC388FC()
{
  v1 = *v0;
  v2 = 0x6D6574744178616DLL;
  v3 = 0x6F6B63614278616DLL;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x426C616974696E69;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_24DC389B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24DC3C8D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24DC389E8(uint64_t a1)
{
  v2 = sub_24DC3C760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24DC38A24(uint64_t a1)
{
  v2 = sub_24DC3C760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RetryPolicy.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EE38, &qword_24DCB80E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DC3C760();
  sub_24DCB5924();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v47) = 0;
  v9 = sub_24DCB5694();
  v45 = sub_24DC34C74(v9);
  v46 = 1;
  sub_24DC3C3E0();
  sub_24DCB56A4();
  v11 = v47;
  v10 = v48;
  sub_24DCB59A4();
  if ((sub_24DCB5974() & 1) == 0)
  {
    static RuntimeError.Code.invalidArgument.getter(&v47);
    v25 = "t be greater than one (was ";
    sub_24DC3C254();
    swift_allocError();
    v27 = v26;
    v28 = 0xD000000000000028;
LABEL_12:
    v29 = v25 | 0x8000000000000000;
LABEL_13:
    RuntimeError.init(code:message:cause:)(&v47, v28, v29, 0, v27);
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v44 = v10;
  v46 = 2;
  sub_24DCB56A4();
  v13 = v47;
  v12 = v48;
  sub_24DCB59A4();
  if ((sub_24DCB5974() & 1) == 0)
  {
    static RuntimeError.Code.invalidArgument.getter(&v47);
    sub_24DC3C254();
    swift_allocError();
    v29 = 0x800000024DCC52B0;
    v27 = v31;
    v28 = 0xD000000000000024;
    goto LABEL_13;
  }

  v43 = v12;
  LOBYTE(v47) = 3;
  sub_24DCB5684();
  if (v14 <= 0.0)
  {
    static RuntimeError.Code.invalidArgument.getter(&v47);
    v25 = "be greater than zero";
    sub_24DC3C254();
    swift_allocError();
    v27 = v32;
    v28 = 0xD00000000000002BLL;
    goto LABEL_12;
  }

  v15 = *&v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EE40, &qword_24DCB80E8);
  v46 = 4;
  sub_24DC3C7B4();
  sub_24DCB56A4();
  v40 = v13;
  v41 = v11;
  v42 = v47;
  v16 = *(v47 + 16);
  if (v16)
  {
    v47 = MEMORY[0x277D84F90];
    sub_24DC3B6B8(0, v16, 0);
    v17 = v16;
    v18 = v47;
    v19 = *(v47 + 16);
    v20 = 32;
    v21 = v42;
    do
    {
      v22 = *(v21 + v20);
      v47 = v18;
      v23 = *(v18 + 24);
      v24 = v19 + 1;
      if (v19 >= v23 >> 1)
      {
        v38 = v17;
        v39 = v19 + 1;
        HIDWORD(v37) = v22;
        sub_24DC3B6B8((v23 > 1), v19 + 1, 1);
        LOBYTE(v22) = BYTE4(v37);
        v17 = v38;
        v24 = v39;
        v21 = v42;
        v18 = v47;
      }

      *(v18 + 16) = v24;
      *(v18 + v19 + 32) = v22;
      ++v20;
      v19 = v24;
      --v17;
    }

    while (v17);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v33 = sub_24DC3C924(v18);

  if (*(v33 + 16))
  {
    (*(v6 + 8))(v8, v5);
    v34 = v41;
    *a2 = v45;
    a2[1] = v34;
    v35 = v40;
    a2[2] = v44;
    a2[3] = v35;
    a2[4] = v43;
    a2[5] = v15;
    a2[6] = v33;
  }

  else
  {
    static RuntimeError.Code.invalidArgument.getter(&v47);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v47, 0xD000000000000025, 0x800000024DCC5310, 0, v36);
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24DC38FBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v33 = MEMORY[0x277D84F90];
    v32 = *(a1 + 16);
    sub_24DC3B6D8(0, v1, 0);
    v2 = v33;
    v4 = a1 + 56;
    v5 = sub_24DCB5494();
    v6 = v32;
    v7 = 0;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v9 = v5 >> 6;
      v10 = 1 << v5;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_39;
      }

      v11 = *(a1 + 36);
      ++v7;
      v12 = v5 & 0x3F;
      v13 = 0xE200000000000000;
      v14 = 19279;
      switch(*(*(a1 + 48) + v5))
      {
        case 1:
          v14 = 0x454C4C45434E4143;
          goto LABEL_21;
        case 2:
          v13 = 0xE700000000000000;
          v14 = 0x4E574F4E4B4E55;
          break;
        case 3:
          v14 = 0xD000000000000010;
          v13 = 0x800000024DCC5420;
          break;
        case 4:
          v14 = 0xD000000000000011;
          v13 = 0x800000024DCC5400;
          break;
        case 5:
          v14 = 0x4E554F465F544F4ELL;
LABEL_21:
          v13 = 0xE900000000000044;
          break;
        case 6:
          v14 = 0x5F59444145524C41;
          v13 = 0xEE00535453495845;
          break;
        case 7:
          v14 = 0xD000000000000011;
          v13 = 0x800000024DCC53E0;
          break;
        case 8:
          v14 = 0xD000000000000012;
          v13 = 0x800000024DCC53C0;
          break;
        case 9:
          v14 = 0xD000000000000013;
          v13 = 0x800000024DCC53A0;
          break;
        case 0xA:
          v13 = 0xE700000000000000;
          v14 = 0x444554524F4241;
          break;
        case 0xB:
          v14 = 0x525F464F5F54554FLL;
          v13 = 0xEC00000045474E41;
          break;
        case 0xC:
          v14 = 0x4D454C504D494E55;
          v13 = 0xED00004445544E45;
          break;
        case 0xD:
          v13 = 0xE800000000000000;
          v14 = 0x4C414E5245544E49;
          break;
        case 0xE:
          v14 = 0x414C494156414E55;
          v13 = 0xEB00000000454C42;
          break;
        case 0xF:
          v13 = 0xE900000000000053;
          v14 = 0x534F4C5F41544144;
          break;
        case 0x10:
          v14 = 0x4E45485455414E55;
          v13 = 0xEF44455441434954;
          break;
        default:
          break;
      }

      v16 = *(v33 + 16);
      v15 = *(v33 + 24);
      if (v16 >= v15 >> 1)
      {
        v30 = *(a1 + 36);
        v31 = v5;
        v28 = v5 & 0x3F;
        v29 = v7;
        sub_24DC3B6D8((v15 > 1), v16 + 1, 1);
        v12 = v28;
        v7 = v29;
        v6 = v32;
        v11 = v30;
        v5 = v31;
      }

      *(v33 + 16) = v16 + 1;
      v17 = v33 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_40;
      }

      v18 = *(v4 + 8 * v9);
      if ((v18 & v10) == 0)
      {
        goto LABEL_41;
      }

      if (v11 != *(a1 + 36))
      {
        goto LABEL_42;
      }

      v19 = v18 & (-2 << v12);
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (a1 + 64 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            v25 = v7;
            sub_24DC3DF20(v5, v11, 0);
            v7 = v25;
            v6 = v32;
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        v26 = v7;
        sub_24DC3DF20(v5, v11, 0);
        v7 = v26;
        v6 = v32;
      }

LABEL_4:
      v5 = v8;
      if (v7 == v6)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    JUMPOUT(0x24DC39414);
  }

  return v2;
}

uint64_t RetryPolicy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EE58, &unk_24DCB80F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = v1[1];
  v8 = v1[3];
  v16 = v1[2];
  v17 = v7;
  v14 = v1[4];
  v15 = v8;
  v9 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DC3C760();
  sub_24DCB5944();
  LOBYTE(v20) = 0;
  v10 = v18;
  sub_24DCB5714();
  if (!v10)
  {
    v11 = v14;
    v12 = v15;
    v20 = v17;
    v21 = v16;
    v19 = 1;
    sub_24DC3C610();
    sub_24DCB5724();
    v20 = v12;
    v21 = v11;
    v19 = 2;
    sub_24DCB5724();
    LOBYTE(v20) = 3;
    sub_24DCB5704();
    v20 = sub_24DC38FBC(v9);
    v19 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EE60, &qword_24DCBBC90);
    sub_24DC3C998();
    sub_24DCB5724();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24DC39704(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x44676E6967646568;
  v4 = 0xEC00000079616C65;
  v5 = 0x800000024DCC5200;
  if (v2 != 1)
  {
    v3 = 0xD000000000000013;
    v4 = 0x800000024DCC5200;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6D6574744178616DLL;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEB00000000737470;
  }

  v8 = 0x44676E6967646568;
  if (*a2 == 1)
  {
    v5 = 0xEC00000079616C65;
  }

  else
  {
    v8 = 0xD000000000000013;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6D6574744178616DLL;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEB00000000737470;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24DCB57A4();
  }

  return v11 & 1;
}

uint64_t sub_24DC39814()
{
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DC398CC(uint64_t a1)
{
  sub_24DCB4D44();
}

uint64_t sub_24DC39970(uint64_t a1)
{
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

unint64_t sub_24DC39A24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24DC3CA68(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24DC39A54(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000737470;
  v4 = 0xEC00000079616C65;
  v5 = 0x44676E6967646568;
  if (v2 != 1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x800000024DCC5200;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D6574744178616DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_24DC39AC8()
{
  v1 = 0x44676E6967646568;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D6574744178616DLL;
  }
}

unint64_t sub_24DC39B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24DC3CA68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24DC39B6C(uint64_t a1)
{
  v2 = sub_24DC3CA14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24DC39BA8(uint64_t a1)
{
  v2 = sub_24DC3CA14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HedgingPolicy.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EE70, &qword_24DCB8100);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DC3CA14();
  sub_24DCB5924();
  if (!v2)
  {
    LOBYTE(v30) = 0;
    v9 = sub_24DCB5694();
    v29 = sub_24DC34C74(v9);
    v33 = 1;
    sub_24DC3C3E0();
    sub_24DCB56A4();
    v10 = v30;
    v11 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EE40, &qword_24DCB80E8);
    v33 = 2;
    sub_24DC3C7B4();
    sub_24DCB56A4();
    v27 = v11;
    v28 = v10;
    v13 = v30;
    v14 = *(v30 + 16);
    if (v14)
    {
      v25 = a2;
      v30 = MEMORY[0x277D84F90];
      v26 = v13;
      sub_24DC3B6B8(0, v14, 0);
      v15 = v26;
      v16 = v30;
      v17 = *(v30 + 16);
      v18 = 32;
      do
      {
        v19 = *(v15 + v18);
        v30 = v16;
        v20 = *(v16 + 24);
        v21 = v17 + 1;
        if (v17 >= v20 >> 1)
        {
          v24 = v17 + 1;
          v32 = v19;
          sub_24DC3B6B8((v20 > 1), v17 + 1, 1);
          LOBYTE(v19) = v32;
          v15 = v26;
          v21 = v24;
          v16 = v30;
        }

        *(v16 + 16) = v21;
        *(v16 + v17 + 32) = v19;
        ++v18;
        v17 = v21;
        --v14;
      }

      while (v14);

      a2 = v25;
    }

    else
    {

      v16 = MEMORY[0x277D84F90];
    }

    v22 = sub_24DC3C924(v16);

    (*(v6 + 8))(v8, v5);
    v23 = v28;
    *a2 = v29;
    a2[1] = v23;
    a2[2] = v27;
    a2[3] = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t HedgingPolicy.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EE78, &qword_24DCB8108);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v14 = v1[2];
  v15 = v8;
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DC3CA14();
  sub_24DCB5944();
  LOBYTE(v16) = 0;
  sub_24DCB5714();
  if (!v2)
  {
    v10 = v13;
    v16 = v15;
    v17 = v14;
    v18 = 1;
    sub_24DC3C610();
    sub_24DCB5724();
    v16 = sub_24DC38FBC(v10);
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EE60, &qword_24DCBBC90);
    sub_24DC3C998();
    sub_24DCB5724();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24DC3A11C(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

unint64_t sub_24DC3A15C(unint64_t result, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    v11 = 0;
    return v11 | ((v2 == 0) << 8);
  }

  v4 = (result & 0x800000000000000) >> 59;
  v5 = 4 << v4;
  v6 = 11;
  if (((a2 >> 60) & ((result & 0x800000000000000) == 0)) == 0)
  {
    v6 = 7;
  }

  v7 = v6 | (v2 << 16);
  v8 = v6 & 0xC;
  if ((a2 & 0x1000000000000000) == 0)
  {
    v5 = 8;
  }

  if (v8 == v5)
  {
    v13 = result;
    result = sub_24DC3312C(v7, result, a2);
    if (result < 0x4000)
    {
      __break(1u);
LABEL_25:
      v14 = result;
      v9 = sub_24DC3312C(v9, result, a2);
      result = v14;
LABEL_13:
      v10 = v9 >> 16;
      if (v9 >> 16 >= v2)
      {
        __break(1u);
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v11 = sub_24DCB4EB4();
          return v11 | ((v2 == 0) << 8);
        }

        if ((a2 & 0x2000000000000000) != 0)
        {
          v16[0] = result;
          v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          v11 = *(v16 + v10);
          return v11 | ((v2 == 0) << 8);
        }

        if ((result & 0x1000000000000000) != 0)
        {
          v12 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_20:
          v11 = *(v12 + v10);
          return v11 | ((v2 == 0) << 8);
        }
      }

      v12 = sub_24DCB5504();
      goto LABEL_20;
    }

    v7 = result;
    result = v13;
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a2 & 0x1000000000000000) == 0)
  {
LABEL_11:
    v9 = (v7 & 0xFFFFFFFFFFFF0000) - 65532;
    LOBYTE(v4) = 1;
    goto LABEL_12;
  }

  if (v2 >= v7 >> 16)
  {
    v15 = result;
    v9 = sub_24DCB4E84();
    result = v15;
LABEL_12:
    if ((v9 & 0xC) != 4 << v4)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_24DC3A2F8(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCB5934();
  sub_24DCB5954();
  sub_24DCB5954();
  sub_24DCB5324();
  MEMORY[0x253035590](115, 0xE100000000000000);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_24DCB57E4();

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

const char *sub_24DC3A40C@<X0>(const char **a1@<X8>, void *a2@<X0>)
{
  result = sub_24DC3CB80(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_24DC3A478@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCB5914();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v6 = sub_24DCB57C4();
    v7 = v5;
    v8 = v6 == 19279 && v5 == 0xE200000000000000;
    if (v8 || (sub_24DCB57A4() & 1) != 0)
    {

      v9 = sub_24DC4311C();
    }

    else if (v6 == 0x454C4C45434E4143 && v7 == 0xE900000000000044 || (sub_24DCB57A4() & 1) != 0)
    {

      v9 = sub_24DC43650();
    }

    else if (v6 == 0x4E574F4E4B4E55 && v7 == 0xE700000000000000 || (sub_24DCB57A4() & 1) != 0)
    {

      v9 = sub_24DC4365C();
    }

    else if (v6 == 0xD000000000000010 && 0x800000024DCC5420 == v7 || (sub_24DCB57A4() & 1) != 0)
    {

      v9 = sub_24DC43668();
    }

    else if (v6 == 0xD000000000000011 && 0x800000024DCC5400 == v7 || (sub_24DCB57A4() & 1) != 0)
    {

      v9 = sub_24DC43674();
    }

    else if (v6 == 0x4E554F465F544F4ELL && v7 == 0xE900000000000044 || (sub_24DCB57A4() & 1) != 0)
    {

      v9 = sub_24DC43680();
    }

    else if (v6 == 0x5F59444145524C41 && v7 == 0xEE00535453495845 || (sub_24DCB57A4() & 1) != 0)
    {

      v9 = sub_24DC4368C();
    }

    else if (v6 == 0xD000000000000011 && 0x800000024DCC53E0 == v7 || (sub_24DCB57A4() & 1) != 0)
    {

      v9 = sub_24DC43698();
    }

    else if (v6 == 0xD000000000000012 && 0x800000024DCC53C0 == v7 || (sub_24DCB57A4() & 1) != 0)
    {

      v9 = sub_24DC436A4();
    }

    else if (v6 == 0xD000000000000013 && 0x800000024DCC53A0 == v7 || (sub_24DCB57A4() & 1) != 0)
    {

      v9 = sub_24DC436B0();
    }

    else if (v6 == 0x444554524F4241 && v7 == 0xE700000000000000 || (sub_24DCB57A4() & 1) != 0)
    {

      v9 = sub_24DC436BC();
    }

    else if (v6 == 0x525F464F5F54554FLL && v7 == 0xEC00000045474E41 || (sub_24DCB57A4() & 1) != 0)
    {

      v9 = sub_24DC436C8();
    }

    else if (v6 == 0x4D454C504D494E55 && v7 == 0xED00004445544E45 || (sub_24DCB57A4() & 1) != 0)
    {

      v9 = sub_24DC436D4();
    }

    else if (v6 == 0x4C414E5245544E49 && v7 == 0xE800000000000000 || (sub_24DCB57A4() & 1) != 0)
    {

      v9 = sub_24DC436E0();
    }

    else if (v6 == 0x414C494156414E55 && v7 == 0xEB00000000454C42 || (sub_24DCB57A4() & 1) != 0)
    {

      v9 = sub_24DC436EC();
    }

    else if (v6 == 0x534F4C5F41544144 && v7 == 0xE900000000000053 || (sub_24DCB57A4() & 1) != 0)
    {

      v9 = sub_24DC436F8();
    }

    else
    {
      if (v6 == 0x4E45485455414E55 && v7 == 0xEF44455441434954)
      {
      }

      else
      {
        v13 = sub_24DCB57A4();

        if ((v13 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v9 = sub_24DC43704();
    }

    v10 = *v9;
    if (v10 != 17)
    {
      __swift_destroy_boxed_opaque_existential_1(v14);
      *a2 = v10;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

LABEL_10:
    static RuntimeError.Code.invalidArgument.getter(&v15);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v15, 0xD000000000000017, 0x800000024DCC5380, 0, v11);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24DC3AB30(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCB5934();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_24DCB57E4();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_24DC3AE44(unsigned __int8 *a1, unsigned __int8 a2)
{
  v13 = a2;
  v4 = *v2;
  sub_24DC3DF2C();
  v5 = sub_24DCB4D24();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_24DC3DF80();
    while ((sub_24DCB4DA4() & 1) == 0)
    {
      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    v10 = (*(v4 + 48) + v7);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_24DC3B1D0(v13, v7, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    v10 = &v13;
    result = 1;
  }

  *a1 = *v10;
  return result;
}

uint64_t sub_24DC3AF78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EEC8, &qword_24DCB8D48);
  result = sub_24DCB54C4();
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
      v25 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_24DC3DF2C();
      result = sub_24DCB4D24();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v12 + 8 * v19);
          if (v23 != -1)
          {
            v13 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v25;
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

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      bzero((v3 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v24;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24DC3B1D0(uint64_t result, unint64_t a2, char a3)
{
  v14 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24DC3AF78(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_24DC3B350();
      goto LABEL_12;
    }

    sub_24DC3B490(v5 + 1);
  }

  v7 = *v3;
  sub_24DC3DF2C();
  result = sub_24DCB4D24();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    sub_24DC3DF80();
    do
    {
      result = sub_24DCB4DA4();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v9;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v10 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v10 + 48) + a2) = v14;
  v11 = *(v10 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (!v12)
  {
    *(v10 + 16) = v13;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24DCB5814();
  __break(1u);
  return result;
}

void *sub_24DC3B350()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EEC8, &qword_24DCB8D48);
  v2 = *v0;
  v3 = sub_24DCB54B4();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_24DC3B490(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EEC8, &qword_24DCB8D48);
  result = sub_24DCB54C4();
  v5 = result;
  if (*(v3 + 16))
  {
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
      v23 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_24DC3DF2C();
      result = sub_24DCB4D24();
      v16 = -1 << *(v5 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v11 + 8 * v18);
          if (v22 != -1)
          {
            v12 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v23;
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

        v2 = v1;
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

char *sub_24DC3B6B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24DC3B6F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24DC3B6D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24DC3B7EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24DC3B6F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EED0, &qword_24DCB8D50);
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

char *sub_24DC3B7EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EEB0, &qword_24DCB8D40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24DC3B8F8(uint64_t a1, uint64_t a2)
{
  sub_24DCB58F4();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x253035FF0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_24DC3DF2C();
        result = sub_24DCB4D24();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s16GRPCCoreInternal11RetryPolicyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  if ((sub_24DCB5984() & 1) == 0 || (sub_24DCB5984() & 1) == 0 || v2 != v4)
  {
    return 0;
  }

  return sub_24DC35B54(v3, v5);
}

uint64_t sub_24DC3BAF8(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v20 = *a1;
  *v21 = v2;
  *&v21[16] = a1[2];
  v3 = *&v21[16];
  v4 = a2[1];
  v22 = *a2;
  v23 = v4;
  v6 = *a2;
  v5 = a2[1];
  *v24 = a2[2];
  *&v24[9] = *(a2 + 41);
  *&v21[25] = *(a1 + 41);
  v25[0] = v20;
  v25[1] = v2;
  v26[0] = v3;
  *(v26 + 9) = *&v21[25];
  v26[2] = v6;
  v26[3] = v5;
  v27[0] = a2[2];
  *(v27 + 9) = *(a2 + 41);
  if ((v21[40] & 1) == 0)
  {
    if ((v24[24] & 1) == 0)
    {
      v14 = v20;
      v15 = v2;
      v16 = *&v21[8];
      v17 = *&v21[24];
      v18 = *&v21[32];
      v12[0] = v22;
      v12[1] = v23;
      v12[2] = *v24;
      v13 = *&v24[16];
      sub_24DC3C1EC(&v22, v19);
      sub_24DC3C1EC(&v20, v19);
      sub_24DC3C1EC(&v20, v19);
      sub_24DC3C1EC(&v22, v19);
      v9 = _s16GRPCCoreInternal11RetryPolicyV2eeoiySbAC_ACtFZ_0(&v14, v12);
      sub_24DC3DFD4(v25, &qword_27F19EED8, &qword_24DCB8D58);
      sub_24DC3C224(&v22);
      sub_24DC3C224(&v20);
      return v9 & 1;
    }

    goto LABEL_8;
  }

  if ((v24[24] & 1) == 0 || v20 != v22)
  {
LABEL_8:
    sub_24DC3C1EC(&v20, v19);
    sub_24DC3C1EC(&v22, v19);
    sub_24DC3DFD4(v25, &qword_27F19EED8, &qword_24DCB8D58);
    goto LABEL_9;
  }

  v11 = *&v21[8];
  v7 = *(&v23 + 1);
  sub_24DC3C1EC(&v22, v19);
  sub_24DC3C1EC(&v20, v19);
  sub_24DC3C1EC(&v20, v19);
  sub_24DC3C1EC(&v22, v19);
  if ((sub_24DCB5984() & 1) == 0)
  {
    sub_24DC3DFD4(v25, &qword_27F19EED8, &qword_24DCB8D58);
    sub_24DC3C224(&v22);
    sub_24DC3C224(&v20);
    goto LABEL_9;
  }

  v8 = sub_24DC35B54(v11, v7);
  sub_24DC3DFD4(v25, &qword_27F19EED8, &qword_24DCB8D58);
  sub_24DC3C224(&v22);
  sub_24DC3C224(&v20);
  if ((v8 & 1) == 0)
  {
LABEL_9:
    v9 = 0;
    return v9 & 1;
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t _s16GRPCCoreInternal12MethodConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 32);
  v31 = *(a1 + 40);
  v33 = *(a1 + 48);
  v7 = *(a1 + 56);
  v32 = *(a1 + 64);
  v8 = *(a1 + 88);
  v58[0] = *(a1 + 72);
  v58[1] = v8;
  *v59 = *(a1 + 104);
  *&v59[9] = *(a1 + 113);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 32);
  v12 = *(a2 + 48);
  v28 = *(a2 + 56);
  v29 = *(a2 + 40);
  v30 = *(a2 + 64);
  v13 = *(a2 + 88);
  v60[0] = *(a2 + 72);
  v60[1] = v13;
  *v61 = *(a2 + 104);
  *&v61[9] = *(a2 + 113);
  if ((sub_24DC33FB0(v4, v9) & 1) == 0)
  {
    goto LABEL_33;
  }

  v27 = v7;
  if (v5 == 2)
  {
    if (v10 != 2)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v14 = 0;
    if (v10 == 2 || ((v10 ^ v5) & 1) != 0)
    {
      return v14 & 1;
    }
  }

  if (v6)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if ((v11 & 1) != 0 || (sub_24DCB5984() & 1) == 0)
  {
    goto LABEL_33;
  }

  if (v33)
  {
    v15 = v27;
    if (!v12)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (v31 == v29)
    {
      v16 = v12;
    }

    else
    {
      v16 = 1;
    }

    v15 = v27;
    if (v16)
    {
      goto LABEL_33;
    }
  }

  if (v32)
  {
    if (v30)
    {
      goto LABEL_25;
    }

LABEL_33:
    v14 = 0;
    return v14 & 1;
  }

  v17 = v30;
  if (v15 != v28)
  {
    v17 = 1;
  }

  if (v17)
  {
    goto LABEL_33;
  }

LABEL_25:
  v18 = v59[24];
  *&v57[7] = *(a2 + 72);
  *&v57[23] = *(a2 + 88);
  *&v57[39] = *(a2 + 104);
  *&v57[55] = *(a2 + 120);
  v19 = v61[24];
  if (v59[24] == 255)
  {
    if (v61[24] != 255)
    {
      sub_24DC33DDC(v58, &v50);
      sub_24DC33DDC(v60, &v50);
      goto LABEL_32;
    }

    v22 = *(a1 + 88);
    v50 = *(a1 + 72);
    v51 = v22;
    *v52 = *(a1 + 104);
    *&v52[16] = *(a1 + 120);
    v52[24] = -1;
    sub_24DC33DDC(v58, &v47);
    sub_24DC33DDC(v60, &v47);
    sub_24DC3DFD4(&v50, &qword_27F19EDB0, &qword_24DCB80B0);
    v14 = 1;
  }

  else
  {
    v20 = *(a1 + 104);
    *&v52[16] = *(a1 + 120);
    v21 = *(a1 + 88);
    v50 = *(a1 + 72);
    v51 = v21;
    *v52 = v20;
    v52[24] = v59[24];
    v47 = v50;
    v48 = v21;
    v49[0] = v20;
    *(v49 + 9) = *&v52[9];
    if (v61[24] == 255)
    {
      v44 = v50;
      v45 = v51;
      v46[0] = *v52;
      *(v46 + 9) = *&v52[9];
      sub_24DC33DDC(v58, v42);
      sub_24DC33DDC(v60, v42);
      sub_24DC33DDC(&v50, v42);
      sub_24DC3E034(&v44);
LABEL_32:
      v25 = *(a1 + 88);
      v50 = *(a1 + 72);
      v51 = v25;
      *v52 = *(a1 + 104);
      *&v52[16] = *(a1 + 120);
      v52[24] = v18;
      v53 = *v57;
      v54 = *&v57[16];
      *v55 = *&v57[32];
      *&v55[15] = *&v57[47];
      v56 = v19;
      sub_24DC3DFD4(&v50, &qword_27F19EEE0, &unk_24DCB8D60);
      goto LABEL_33;
    }

    v23 = *(a2 + 88);
    v34 = *(a2 + 72);
    v35 = v23;
    *v36 = *(a2 + 104);
    v40[0] = v50;
    v40[1] = v51;
    v41[0] = *v52;
    *(v41 + 9) = *&v52[9];
    v37 = v50;
    v38 = v51;
    *&v36[16] = *(a2 + 120);
    *v39 = *v52;
    *&v39[9] = *&v52[9];
    v36[24] = v61[24];
    sub_24DC33DDC(v58, &v44);
    sub_24DC33DDC(v60, &v44);
    sub_24DC33DDC(&v50, &v44);
    sub_24DC3C1EC(v40, &v44);
    v14 = sub_24DC3BAF8(&v37, &v34);
    v42[0] = v34;
    v42[1] = v35;
    v43[0] = *v36;
    *(v43 + 9) = *&v36[9];
    sub_24DC3C224(v42);
    v44 = v37;
    v45 = v38;
    v46[0] = *v39;
    *(v46 + 9) = *&v39[9];
    sub_24DC3C224(&v44);
    v34 = v47;
    v35 = v48;
    *v36 = v49[0];
    *&v36[9] = *(v49 + 9);
    sub_24DC3E034(&v34);
    v24 = *(a1 + 88);
    v37 = *(a1 + 72);
    v38 = v24;
    *v39 = *(a1 + 104);
    *&v39[16] = *(a1 + 120);
    v39[24] = v18;
    sub_24DC3DFD4(&v37, &qword_27F19EDB0, &qword_24DCB80B0);
  }

  return v14 & 1;
}

unint64_t sub_24DC3C254()
{
  result = qword_27F19EDB8;
  if (!qword_27F19EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EDB8);
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

unint64_t sub_24DC3C2EC()
{
  result = qword_27F19FF10;
  if (!qword_27F19FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19FF10);
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

unint64_t sub_24DC3C38C()
{
  result = qword_27F19EDD8;
  if (!qword_27F19EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EDD8);
  }

  return result;
}

unint64_t sub_24DC3C3E0()
{
  result = qword_27F19EDE0;
  if (!qword_27F19EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EDE0);
  }

  return result;
}

unint64_t sub_24DC3C434()
{
  result = qword_27F19EDE8;
  if (!qword_27F19EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EDE8);
  }

  return result;
}

unint64_t sub_24DC3C488()
{
  result = qword_27F19EDF0;
  if (!qword_27F19EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EDF0);
  }

  return result;
}

uint64_t sub_24DC3C544(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19EDC8, &qword_24DCB80C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24DC3C5BC()
{
  result = qword_27F19EE08;
  if (!qword_27F19EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EE08);
  }

  return result;
}

unint64_t sub_24DC3C610()
{
  result = qword_27F19EE10;
  if (!qword_27F19EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EE10);
  }

  return result;
}

unint64_t sub_24DC3C664()
{
  result = qword_27F19EE18;
  if (!qword_27F19EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EE18);
  }

  return result;
}

unint64_t sub_24DC3C6B8()
{
  result = qword_27F19EE20;
  if (!qword_27F19EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EE20);
  }

  return result;
}

unint64_t sub_24DC3C70C()
{
  result = qword_27F19FF18;
  if (!qword_27F19FF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19FF18);
  }

  return result;
}

unint64_t sub_24DC3C760()
{
  result = qword_27F19FF20;
  if (!qword_27F19FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19FF20);
  }

  return result;
}

unint64_t sub_24DC3C7B4()
{
  result = qword_27F19EE48;
  if (!qword_27F19EE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19EE40, &qword_24DCB80E8);
    sub_24DC3C838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EE48);
  }

  return result;
}

unint64_t sub_24DC3C838()
{
  result = qword_27F19EE50;
  if (!qword_27F19EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EE50);
  }

  return result;
}

unint64_t sub_24DC3C88C(uint64_t a1, uint64_t a2)
{
  v2 = sub_24DCB5634();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24DC3C8D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_24DCB5634();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24DC3C924(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24DC3DF2C();
  result = MEMORY[0x253035A80](v2, &type metadata for Status.Code, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_24DC3AE44(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_24DC3C998()
{
  result = qword_27F19EE68;
  if (!qword_27F19EE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19EE60, &qword_24DCBBC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EE68);
  }

  return result;
}

unint64_t sub_24DC3CA14()
{
  result = qword_27F19FF28[0];
  if (!qword_27F19FF28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F19FF28);
  }

  return result;
}

unint64_t sub_24DC3CA68(uint64_t a1, uint64_t a2)
{
  v2 = sub_24DCB5634();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24DC3CAB4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  result = sub_24DCB4E24();
  if (__OFSUB__(result, v3))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_24DCB4E44();

  return sub_24DCB4EF4();
}

const char *sub_24DC3CB80(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCB5914();
  if (v1)
  {
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v4 = sub_24DCB57C4();
  v6 = v5;
  v7 = v4;
  if ((sub_24DC3A15C(v4, v5) & 0x1FF) != 0x73)
  {

LABEL_13:
    static RuntimeError.Code.invalidArgument.getter(&v15);
    v3 = "INVALID_ARGUMENT";
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v15, 0xD000000000000020, 0x800000024DCC5440, 0, v13);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v14);
LABEL_15:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v3;
  }

  sub_24DC3CAB4(1, v7, v6);

  *&result = COERCE_DOUBLE(sub_24DCB5334());
  if (v9)
  {
    goto LABEL_13;
  }

  v10 = floor(*&result);
  if (v10 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = (*&result - v10) * 1.0e18;
  v12 = COERCE_UNSIGNED_INT64(fabs(v11)) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v12)
  {
    goto LABEL_19;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v11 < 9.22337204e18)
  {
    v3 = sub_24DCB5964();
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v3;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_24DC3CE08()
{
  result = qword_27F19EE80;
  if (!qword_27F19EE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EE80);
  }

  return result;
}

unint64_t sub_24DC3CE60()
{
  result = qword_27F19EE88;
  if (!qword_27F19EE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EE88);
  }

  return result;
}

unint64_t sub_24DC3CEB8()
{
  result = qword_27F19EE90;
  if (!qword_27F19EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EE90);
  }

  return result;
}

unint64_t sub_24DC3CF10()
{
  result = qword_27F19EE98;
  if (!qword_27F19EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EE98);
  }

  return result;
}

unint64_t sub_24DC3CF68()
{
  result = qword_27F19EEA0;
  if (!qword_27F19EEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EEA0);
  }

  return result;
}

unint64_t sub_24DC3CFC0()
{
  result = qword_27F19EEA8;
  if (!qword_27F19EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EEA8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16GRPCCoreInternal18RPCExecutionPolicyVSg(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24DC3D068(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_24DC3D0B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DC3D124(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24DC3D16C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24DC3D1EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24DC3D238(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
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

uint64_t sub_24DC3D2C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24DC3D30C(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_24DC3D368(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24DC3D3B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for GoogleProtobufDuration(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GoogleProtobufDuration(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for GoogleRPCCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GoogleRPCCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HedgingPolicy.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HedgingPolicy.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RetryPolicy.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RetryPolicy.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MethodConfig.Name.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MethodConfig.Name.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MethodConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MethodConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}