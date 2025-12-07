uint64_t sub_25F41CA98@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a4@<X8>)
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
  }

  else
  {
    (*(v8 + 32))(v11, v13, v7);
    a1(v11);
    (*(v8 + 8))(v11, v7);
  }

  sub_25F4A3360();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TransportReply.send(file:line:column:function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v17 = a8;
  v16[0] = a6;
  v16[1] = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  MEMORY[0x28223BE20](v8);
  v10 = v16 - v9;
  v11 = sub_25F4A2A70();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2A80();
  _s19PreviewsMessagingOS24CanvasControlDescriptionV9ModifiersV17propertyListValue0a10FoundationC008PropertyI0Vvg_0();
  type metadata accessor for LazyPropertyList(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  sub_25F4A2410();
  sub_25F3F21F4(v10, &qword_27FD6DEB8, &unk_25F4A8D20);
  return (*(v12 + 8))(v14, v11);
}

uint64_t TransportReply.send(result:file:line:column:function:)(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v22 = a8;
  v20[1] = a6;
  v20[2] = a7;
  v21 = a2;
  v20[0] = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  MEMORY[0x28223BE20](v10);
  v12 = (v20 - v11);
  v13 = sub_25F4A2A70();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2A80();
  if (v21)
  {
    v17 = v20[0];
    *v12 = v20[0];
    swift_storeEnumTagMultiPayload();
    v18 = v17;
  }

  else
  {
    _s19PreviewsMessagingOS24CanvasControlDescriptionV9ModifiersV17propertyListValue0a10FoundationC008PropertyI0Vvg_0();
    type metadata accessor for LazyPropertyList(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  sub_25F4A2410();
  sub_25F3F21F4(v12, &qword_27FD6DEB8, &unk_25F4A8D20);
  return (*(v14 + 8))(v16, v13);
}

uint64_t TransportReply.track<A, B>(task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a1;
  v18 = a5;
  v19 = sub_25F4A2A70();
  v8 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v11 = sub_25F4A24A0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - v13;
  sub_25F4A2A80();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v16 = v18;
  v15[4] = a4;
  v15[5] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  sub_25F4A2480();

  (*(v8 + 8))(v10, v19);
  sub_25F4A2400();
  return (*(v12 + 8))(v14, v11);
}

uint64_t TransportReply.track<A>(task:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_25F4A2A70();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E398, &unk_25F4A8D38);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  sub_25F4A2A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  sub_25F4A2480();
  (*(v4 + 8))(v6, v3);
  sub_25F4A2400();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_25F41D4E8()
{
  _s19PreviewsMessagingOS24CanvasControlDescriptionV9ModifiersV17propertyListValue0a10FoundationC008PropertyI0Vvg_0();
  type metadata accessor for LazyPropertyList(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t TransportReply.wrappingError(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4A2A70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2A80();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A23D0();

  return (*(v5 + 8))(v7, v4);
}

uint64_t TransportReply.loggingResult(logger:level:for:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a5;
  v22 = a3;
  v21 = a2;
  v7 = sub_25F4A2AE0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_25F4A2A70();
  v11 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F4A2A80();
  (*(v8 + 16))(v10, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = v14 + v9;
  v16 = (v14 + v9) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v14, v10, v7);
  *(v17 + v15) = v21;
  v18 = v17 + v16;
  *(v18 + 8) = v22;
  *(v18 + 16) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  type metadata accessor for LazyPropertyList(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A23E0();

  return (*(v11 + 8))(v13, v23);
}

uint64_t sub_25F41D94C@<X0>(uint64_t a1@<X0>, os_log_type_t a2@<W2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  MEMORY[0x28223BE20](v10);
  v12 = (&v26 - v11);
  sub_25F404B8C(a1, &v26 - v11, &qword_27FD6DEB8, &unk_25F4A8D20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;

    v14 = v13;
    v15 = sub_25F4A2AD0();
    v16 = sub_25F4A3010();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v17 = 136446466;
      *(v17 + 4) = sub_25F41272C(a3, a4, &v27);
      *(v17 + 12) = 2114;
      v20 = v13;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v21;
      *v18 = v21;
      _os_log_impl(&dword_25F3DE000, v15, v16, "Sending reply 'Failure' for %{public}s\nError: %{public}@", v17, 0x16u);
      sub_25F3F21F4(v18, &qword_27FD6DEC8, &qword_25F4AB2B0);
      MEMORY[0x25F8DE250](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x25F8DE250](v19, -1, -1);
      MEMORY[0x25F8DE250](v17, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v22 = sub_25F4A2AD0();
    if (os_log_type_enabled(v22, a2))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_25F41272C(a3, a4, &v27);
      _os_log_impl(&dword_25F3DE000, v22, a2, "Sending reply 'Success' for %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x25F8DE250](v24, -1, -1);
      MEMORY[0x25F8DE250](v23, -1, -1);
    }

    sub_25F3F21F4(v12, &qword_27FD6DEB8, &unk_25F4A8D20);
  }

  return sub_25F404B8C(a1, a5, &qword_27FD6DEB8, &unk_25F4A8D20);
}

uint64_t TransportReply.init<A>(file:line:column:function:handler:)@<X0>(unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v25 = a8;
  v23 = a6;
  v24 = a7;
  v21 = a4;
  v22 = a5;
  v20[1] = a3;
  v27 = a9;
  v26 = a10;
  v13 = sub_25F4A2910();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_25F4A2A70();
  MEMORY[0x28223BE20](v14 - 8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v15 = sub_25F4A24A0();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v20 - v16;
  sub_25F4A2A80();
  v18 = swift_allocObject();
  v18[2] = a12;
  v18[3] = a13;
  v18[4] = v26;
  v18[5] = a11;

  sub_25F4A2430();
  sub_25F4A2420();
  TransportReply.init<A>(resuming:)(v17, a12, a13);
}

uint64_t TransportReply.init<A>(resuming:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F4A2A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2A80();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v11 = sub_25F4A24A0();
  type metadata accessor for LazyPropertyList(0);
  sub_25F4A2490();

  (*(*(v11 - 8) + 8))(a1, v11);
  return (*(v7 + 8))(v9, v6);
}

uint64_t TransportReply.init(file:line:column:function:handler:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v22 = a8;
  v21[1] = a6;
  v21[2] = a7;
  v21[0] = a5;
  v25 = a9;
  v26 = a11;
  v23 = a10;
  v11 = sub_25F4A2910();
  MEMORY[0x28223BE20](v11 - 8);
  v24 = sub_25F4A2A70();
  v12 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E398, &unk_25F4A8D38);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v21 - v17;
  sub_25F4A2A80();
  v19 = swift_allocObject();
  *(v19 + 16) = v23;
  *(v19 + 24) = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A2430();
  sub_25F4A2420();
  sub_25F4A2A80();
  type metadata accessor for LazyPropertyList(0);
  sub_25F4A2480();

  (*(v12 + 8))(v14, v24);
  return (*(v16 + 8))(v18, v15);
}

uint64_t TransportReply.init(resuming:)(uint64_t a1)
{
  v2 = sub_25F4A2A70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2A80();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E398, &unk_25F4A8D38);
  type metadata accessor for LazyPropertyList(0);
  sub_25F4A2480();
  (*(*(v6 - 8) + 8))(a1, v6);
  return (*(v3 + 8))(v5, v2);
}

uint64_t static TransportReply.ignored.getter()
{
  v0 = type metadata accessor for LazyPropertyList(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  v2 = MEMORY[0x277D84950];

  return MEMORY[0x2821A0560](v0, v1, v2);
}

uint64_t sub_25F41E538()
{
  v1 = sub_25F4A25E0();
  MEMORY[0x28223BE20](v1);
  result = LazyPropertyList.propertyList.getter(&v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!v0)
  {
    return sub_25F4A2950();
  }

  return result;
}

uint64_t sub_25F41E5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F4A25E0();
  MEMORY[0x28223BE20](v4 - 8);
  result = LazyPropertyList.propertyList.getter(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!v3)
  {
    return sub_25F4A2950();
  }

  return result;
}

uint64_t TransportReply.init<A>(file:line:column:function:resuming:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v34 = a8;
  v32 = a6;
  v33 = a7;
  v30 = a4;
  v31 = a5;
  v29 = a3;
  v27 = a1;
  v28 = a2;
  v36 = a9;
  v26 = a10;
  v12 = sub_25F4A2910();
  MEMORY[0x28223BE20](v12 - 8);
  v35 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v14 = sub_25F4A2E80();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  v18 = sub_25F4A2A70();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = sub_25F4A24A0();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v25 - v20;
  sub_25F4A2A80();
  (*(v15 + 16))(v17, a10, v14);
  v22 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a11;
  *(v23 + 24) = a12;
  (*(v15 + 32))(v23 + v22, v17, v14);
  sub_25F4A2430();
  sub_25F4A2420();
  TransportReply.init<A>(resuming:)(v21, a11, a12);
  return (*(v15 + 8))(v26, v14);
}

uint64_t sub_25F41E990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v5 = sub_25F4A2E80();
  return sub_25F41E9F8(a2, v5);
}

uint64_t sub_25F41E9F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F4A3360();
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    return sub_25F4A2E60();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    return sub_25F4A2E70();
  }
}

uint64_t TransportReply.init(file:line:column:function:resuming:)@<X0>(uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v32 = a8;
  v30 = a6;
  v31 = a7;
  v27 = a4;
  v28 = a5;
  v26 = a3;
  v25 = a2;
  v36 = a9;
  v29 = a10;
  v10 = sub_25F4A2910();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E3A0, &qword_25F4A8DA8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = sub_25F4A2A70();
  v34 = *(v15 - 8);
  v35 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E398, &unk_25F4A8D38);
  v18 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v20 = &v25 - v19;
  sub_25F4A2A80();
  (*(v12 + 16))(v14, a10, v11);
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = swift_allocObject();
  (*(v12 + 32))(v22 + v21, v14, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A2430();
  sub_25F4A2420();
  sub_25F4A2A80();
  type metadata accessor for LazyPropertyList(0);
  v23 = v33;
  sub_25F4A2480();
  (*(v12 + 8))(v29, v11);
  (*(v34 + 8))(v17, v35);
  return (*(v18 + 8))(v20, v23);
}

uint64_t sub_25F41F00C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v2 = *a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E3A0, &qword_25F4A8DA8);
    return sub_25F4A2E60();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E3A0, &qword_25F4A8DA8);
    return sub_25F4A2E70();
  }
}

uint64_t sub_25F41F088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_25F4A2A70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2A80();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A2F80();
  swift_getWitnessTable();
  sub_25F4A2660();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_25F41F1E4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_25F4A2A70();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  LOBYTE(a2) = *(a2 + 8);
  sub_25F4A2A80();
  v9 = v7;
  v10 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DFA0, &qword_25F4A8D30);
  sub_25F421780();
  sub_25F4A2660();
  return (*(v4 + 8))(v6, v3);
}

__n128 sub_25F41F3E0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25F41F414()
{
  sub_25F4A2940();
  type metadata accessor for LazyPropertyList(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F41F46C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F41F4A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25F41F4D8()
{
  v1 = sub_25F4A2AE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_25F41F574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_25F4A2AE0() - 8);
  v6 = ((*(v5 + 80) + 16) & ~*(v5 + 80)) + *(v5 + 64);
  v7 = v2 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v2 + v6);

  return sub_25F41D94C(a1, v10, v8, v9, a2);
}

uint64_t sub_25F41F624()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_2Tm(uint64_t (*a1)(void, uint64_t, uint64_t, void))
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v5 = a1(0, v3, v4, MEMORY[0x277D84950]);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(v6 + 64);
  (*(v6 + 8))(v1 + v8, v5);

  return MEMORY[0x2821FE8E8](v1, v8 + v9, v7 | 7);
}

uint64_t sub_25F41F7E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v11 = *(a3(0, v8, v10, MEMORY[0x277D84950]) - 8);
  v12 = v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80));

  return a4(a1, a2, v12, v8, v9);
}

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_25F41F974(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t TransportReply.init<A>(file:line:column:function:fulfilling:)@<X0>(unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11)
{
  v25 = a8;
  v23 = a6;
  v24 = a7;
  v21 = a4;
  v22 = a5;
  v20[3] = a3;
  v26 = a9;
  v11 = *a10;
  v12 = sub_25F4A2910();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_25F4A2A70();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = *(v11 + *MEMORY[0x277D40568]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v15 = sub_25F4A24A0();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v20 - v16;
  sub_25F4A2A80();
  v18 = swift_allocObject();
  *(v18 + 16) = a11;
  *(v18 + 24) = a10;

  sub_25F4A2430();
  sub_25F4A2420();
  TransportReply.init<A>(resuming:)(v17, v14, a11);
}

uint64_t (*TransportReply.makeEncodedReplyHandler(callsite:)(uint64_t a1))(void *a1, void *a2)
{
  v2 = v1;
  v4 = sub_25F4A2A70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TransportReply(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_25F412F00(v2, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = (v10 + *(v5 + 80) + v11) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_25F421668(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11, type metadata accessor for TransportReply);
  (*(v5 + 32))(v13 + v12, v7, v4);
  return sub_25F4202B0;
}

uint64_t type metadata accessor for TransportReply(uint64_t a1)
{
  result = qword_27FD6E3B0;
  if (!qword_27FD6E3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F41FEAC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = (&v33 - v16);
  if (a1)
  {
    v18 = a1;
    v19 = [v18 data];
    v20 = sub_25F4A2060();
    v22 = v21;

    *v17 = v20;
    v17[1] = v22;
    type metadata accessor for LazyPropertyList(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_25F4A2410();

    return sub_25F3F21F4(v17, &qword_27FD6DEB8, &unk_25F4A8D20);
  }

  if (!a2)
  {
    sub_25F42172C();
    *v17 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    sub_25F4A2410();
    return sub_25F3F21F4(v17, &qword_27FD6DEB8, &unk_25F4A8D20);
  }

  v34 = v9;
  v35 = a4;
  (*(v9 + 16))(v11, a3, v8);
  swift_getErrorValue();
  v24 = a2;
  sub_25F4A32B0();
  v25 = v37;
  v26 = __swift_project_boxed_opaque_existential_1(v36, v37);
  v33 = &v33;
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v29);
  v30 = sub_25F4A3230();
  if (v30)
  {
    v31 = v30;
    (*(v27 + 8))(v29, v25);
  }

  else
  {
    v31 = swift_allocError();
    (*(v27 + 32))(v32, v29, v25);
  }

  *v15 = v31;
  swift_storeEnumTagMultiPayload();
  sub_25F4A2410();

  sub_25F3F21F4(v15, &qword_27FD6DEB8, &unk_25F4A8D20);
  (*(v34 + 8))(v11, v8);
  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_25F4202B0(void *a1, void *a2)
{
  v5 = *(type metadata accessor for TransportReply(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_25F4A2A70() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_25F41FEAC(a1, a2, v2 + v6, v9);
}

uint64_t TransportReply.init(encodedReplyHandler:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F4A2910();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F4A2A70();
  MEMORY[0x28223BE20](v10 - 8);
  sub_25F4A2A80();
  *(swift_allocObject() + 16) = a3;
  (*(v7 + 104))(v9, *MEMORY[0x277D404C0], v6);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  type metadata accessor for LazyPropertyList(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  return sub_25F4A2440();
}

unint64_t sub_25F4205A4(void *a1)
{
  v2 = sub_25F4A25E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LazyPropertyList(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = [a1 data];
  v16 = sub_25F4A2060();
  v18 = v17;

  *v8 = v16;
  v8[1] = v18;
  swift_storeEnumTagMultiPayload();
  LazyPropertyList.propertyList.getter(v14);
  sub_25F4216D0(v8);
  (*(v3 + 56))(v14, 0, 1, v2);
  sub_25F404B8C(v14, v12, &qword_27FD6DAA0, &qword_25F4A5550);
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    sub_25F3F21F4(v14, &qword_27FD6DAA0, &qword_25F4A5550);
    v19 = 0;
    v20 = 0;
  }

  else
  {
    (*(v3 + 32))(v5, v12, v2);
    sub_25F40CA7C();
    v19 = sub_25F4A3210();
    v20 = v21;
    (*(v3 + 8))(v5, v2);
    sub_25F3F21F4(v14, &qword_27FD6DAA0, &qword_25F4A5550);
  }

  v26 = 0;
  v27 = 0xE000000000000000;
  sub_25F4A30F0();

  v26 = 0xD000000000000013;
  v27 = 0x800000025F4B78E0;
  if (v20)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0xD000000000000010;
  }

  if (v20)
  {
    v23 = v20;
  }

  else
  {
    v23 = 0x800000025F4B7900;
  }

  MEMORY[0x25F8DD480](v22, v23);

  return v26;
}

uint64_t sub_25F4208E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F420928(uint64_t a1, void (*a2)(void *, void *))
{
  v4 = type metadata accessor for LazyPropertyList(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  MEMORY[0x28223BE20](v7);
  v9 = (&v15[-1] - v8);
  sub_25F404B8C(a1, &v15[-1] - v8, &qword_27FD6DEB8, &unk_25F4A8D20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    swift_getErrorValue();
    sub_25F4A32B0();
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v11 = sub_25F4A27D0();
    a2(0, v11);

    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_25F421668(v9, v6, type metadata accessor for LazyPropertyList);
    v13 = LazyPropertyList.encoded.getter();
    a2(v13, 0);

    return sub_25F4216D0(v6);
  }
}

uint64_t (*TransportReply.makeEagerReplyHandler(callsite:)(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F4A2A70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TransportReply(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_25F412F00(v2, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = (v10 + *(v5 + 80) + v11) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_25F421668(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11, type metadata accessor for TransportReply);
  (*(v5 + 32))(v13 + v12, v7, v4);
  return sub_25F4210B4;
}

uint64_t sub_25F420CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[0] = a3;
  v15[1] = a2;
  v4 = sub_25F4A25E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E3C8, &qword_25F4A8DF8);
  MEMORY[0x28223BE20](v8);
  v10 = (v15 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  MEMORY[0x28223BE20](v11);
  v13 = (v15 - v12);
  sub_25F404B8C(a1, v10, &qword_27FD6E3C8, &qword_25F4A8DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v13 = *v10;
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    (*(v5 + 16))(v13, v7, v4);
    type metadata accessor for LazyPropertyList(0);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 8))(v7, v4);
  }

  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  sub_25F4A2410();
  return sub_25F3F21F4(v13, &qword_27FD6DEB8, &unk_25F4A8D20);
}

uint64_t objectdestroy_36Tm()
{
  v1 = *(type metadata accessor for TransportReply(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_25F4A2A70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  (*(*(v11 - 8) + 8))(v0 + v3, v11);
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_25F4210B4(uint64_t a1)
{
  v3 = *(type metadata accessor for TransportReply(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_25F4A2A70() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_25F420CE8(a1, v1 + v4, v7);
}

uint64_t TransportReply.init(eagerReplyHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v12[1] = a1;
  v14 = a3;
  v3 = sub_25F4A2910();
  MEMORY[0x28223BE20](v3 - 8);
  v13 = sub_25F4A2A70();
  v4 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E3A8, &qword_25F4A8DB0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  sub_25F4A2A80();
  sub_25F4A25E0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A2430();
  sub_25F4A2440();
  sub_25F4A2A80();
  type metadata accessor for LazyPropertyList(0);
  sub_25F4A2490();

  (*(v4 + 8))(v6, v13);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_25F421478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F421504(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_25F421580(uint64_t a1)
{
  sub_25F4215EC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25F4215EC(uint64_t a1)
{
  if (!qword_27FD6E3C0)
  {
    type metadata accessor for LazyPropertyList(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
    v1 = sub_25F4A24A0();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD6E3C0);
    }
  }
}

uint64_t sub_25F421668(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F4216D0(uint64_t a1)
{
  v2 = type metadata accessor for LazyPropertyList(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25F42172C()
{
  result = qword_27FD6E3D0;
  if (!qword_27FD6E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E3D0);
  }

  return result;
}

unint64_t sub_25F421780()
{
  result = qword_27FD6E3D8[0];
  if (!qword_27FD6E3D8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6DFA0, &qword_25F4A8D30);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD6E3D8);
  }

  return result;
}

void sub_25F421808(uint64_t a1)
{
  v10 = MEMORY[0x277D83428] + 64;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    v11 = *(AssociatedTypeWitness - 8) + 64;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v3 = swift_getAssociatedTypeWitness();
    if (v4 <= 0x3F)
    {
      v12 = *(v3 - 8) + 64;
      sub_25F427AFC(319);
      if (v5 <= 0x3F)
      {
        swift_getTupleTypeLayout2();
        v13 = &v9;
        swift_getTupleTypeLayout2();
        v14 = &v8;
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
        sub_25F4A2510();
        if (v6 <= 0x3F)
        {
          swift_getTupleTypeLayout2();
          v15 = &v7;
          v16 = "\b";
          v17 = &unk_25F4A8EA0;
          swift_initClassMetadata2();
        }
      }
    }
  }
}

char *sub_25F421A74(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = swift_getAssociatedTypeWitness();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  (*(v11 + 16))(&v17 - v9, v18);
  (*(v5 + 16))(v7, v19, v4);
  swift_allocObject();
  v12 = sub_25F423740(v10, v7);
  type metadata accessor for Junction(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  WitnessTable = swift_getWitnessTable();

  *&v12[*(*v12 + 144)] = sub_25F440E98(v15, WitnessTable, 0, 0, sub_25F4288AC, v12, sub_25F428838, v12);
  swift_retain_n();

  v20 = v12;

  swift_getWitnessTable();
  sub_25F4A28F0();

  return v12;
}

uint64_t sub_25F421D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = *v4;
  v5[9] = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250);
  v5[10] = swift_task_alloc();
  v6 = type metadata accessor for AsyncMessageStream(0);
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v5[13] = *(v7 + 64);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E470, &qword_25F4A8F70);
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E478, &qword_25F4A8F78);
  v5[19] = v9;
  v10 = *(v9 - 8);
  v5[20] = v10;
  v5[21] = *(v10 + 64);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  swift_getObjectType();
  v12 = sub_25F4A2E40();
  v5[24] = v12;
  v5[25] = v11;

  return MEMORY[0x2822009F8](sub_25F422004, v12, v11);
}

uint64_t sub_25F422004()
{
  v1 = v0[23];
  v21 = v0[22];
  v30 = v0[21];
  v27 = v0[20];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[17];
  v32 = v0[15];
  v22 = v0[14];
  v23 = v0[12];
  v6 = v0[9];
  v26 = v0[10];
  v7 = v0[7];
  v31 = v0[6];
  v28 = v0[4];
  v29 = v0[5];
  type metadata accessor for AsyncMessageStream.Event(0);
  (*(v5 + 104))(v2, *MEMORY[0x277D85778], v4);
  sub_25F4A2EB0();
  (*(v5 + 8))(v2, v4);
  sub_25F404B8C(v1, v21, &qword_27FD6E478, &qword_25F4A8F78);
  v8 = *(v3 + 48);
  sub_25F4A30F0();
  MEMORY[0x25F8DD480](0x206567617373656DLL, 0xEF206D6165727473);
  v24 = *(v6 + 80);
  v25 = *(v6 + 88);
  swift_getAssociatedTypeWitness();
  sub_25F4A3240();
  sub_25F3E1EB4(v21 + v8, 0, 0xE000000000000000, v32);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E480, &qword_25F4A8F80);
  (*(*(v9 - 8) + 8))(v21, v9);
  v0[2] = v7;
  sub_25F429D04(v32, v22, type metadata accessor for AsyncMessageStream);
  v10 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v11 = swift_allocObject();
  sub_25F429D70(v22, v11 + v10, type metadata accessor for AsyncMessageStream);
  swift_getWitnessTable();
  sub_25F4A28F0();

  v12 = sub_25F4A2EA0();
  (*(*(v12 - 8) + 56))(v26, 1, 1, v12);
  sub_25F404B8C(v1, v21, &qword_27FD6E478, &qword_25F4A8F78);
  v13 = (*(v27 + 80) + 56) & ~*(v27 + 80);
  v14 = swift_allocObject();
  v14[2] = v28;
  v14[3] = v29;
  v14[4] = v24;
  v14[5] = v25;
  v14[6] = v7;
  sub_25F428728(v21, v14 + v13, &qword_27FD6E478, &qword_25F4A8F78);
  v15 = (v14 + ((v30 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = v28;
  v15[1] = v29;
  swift_unknownObjectRetain_n();

  sub_25F494FEC(0, 0, v26, &unk_25F4A9050, v14);

  v16 = swift_task_alloc();
  v0[26] = v16;
  v16[2] = v7;
  v16[3] = v31;
  v16[4] = v32;
  v17 = swift_task_alloc();
  v0[27] = v17;
  *v17 = v0;
  v17[1] = sub_25F4224B4;
  v18 = v0[11];
  v19 = v0[3];

  return MEMORY[0x2822008A0](v19, v28, v29, 0xD000000000000020, 0x800000025F4B7B60, sub_25F42A0F0, v16, v18);
}

uint64_t sub_25F4224B4()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_25F4226EC;
  }

  else
  {
    v5 = sub_25F42260C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25F42260C()
{
  v1 = v0[15];
  sub_25F3F21F4(v0[23], &qword_27FD6E478, &qword_25F4A8F78);
  sub_25F42A0FC(v1, type metadata accessor for AsyncMessageStream);

  v2 = v0[1];

  return v2();
}

uint64_t sub_25F4226EC()
{
  v1 = v0[15];
  sub_25F3F21F4(v0[23], &qword_27FD6E478, &qword_25F4A8F78);
  sub_25F42A0FC(v1, type metadata accessor for AsyncMessageStream);

  v2 = v0[1];

  return v2();
}

uint64_t sub_25F4227CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E470, &qword_25F4A8F70);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E478, &qword_25F4A8F78);
  v5[11] = v8;
  v9 = *(v8 - 8);
  v5[12] = v9;
  v5[13] = *(v9 + 64);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = *(v6 + 88);
  v5[17] = *(v6 + 80);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v5[18] = sub_25F4A2510();
  sub_25F4A24F0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5[19] = TupleTypeMetadata2;
  v5[20] = *(TupleTypeMetadata2 - 8);
  v5[21] = swift_task_alloc();
  swift_getObjectType();
  v12 = sub_25F4A2E40();
  v5[22] = v12;
  v5[23] = v11;

  return MEMORY[0x2822009F8](sub_25F422A98, v12, v11);
}

uint64_t sub_25F422A98()
{
  (*(v0[20] + 16))(v0[21], v0[6] + *(*v0[6] + 136), v0[19]);

  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_25F422B84;
  v2 = v0[18];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return MEMORY[0x2821A05F8](v5, v3, v4, v2);
}

uint64_t sub_25F422B84()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = v2[22];
    v4 = v2[23];
    v5 = sub_25F423034;
  }

  else
  {
    (*(*(v2[18] - 8) + 8))(v2[21]);
    v3 = v2[22];
    v4 = v2[23];
    v5 = sub_25F422CC8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_25F422CC8()
{
  v22 = v0[16];
  v23 = v0[17];
  v1 = v0[14];
  v2 = v0[15];
  v17 = v0[12];
  v18 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[6];
  v21 = v0[7];
  v19 = v0[4];
  v20 = v0[5];
  v16 = v0[2];
  type metadata accessor for AsyncMessageStream.Event(0);
  (*(v6 + 104))(v4, *MEMORY[0x277D85778], v5);
  sub_25F4A2EB0();
  (*(v6 + 8))(v4, v5);
  sub_25F404B8C(v2, v1, &qword_27FD6E478, &qword_25F4A8F78);
  v8 = *(v3 + 48);
  sub_25F4A30F0();
  MEMORY[0x25F8DD480](0x206567617373656DLL, 0xEF206D6165727473);
  swift_getAssociatedTypeWitness();
  sub_25F4A3240();
  sub_25F3E1EB4(v1 + v8, 0, 0xE000000000000000, v16);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E480, &qword_25F4A8F80);
  (*(*(v9 - 8) + 8))(v1, v9);
  v10 = sub_25F4A2EA0();
  (*(*(v10 - 8) + 56))(v21, 1, 1, v10);
  sub_25F404B8C(v2, v1, &qword_27FD6E478, &qword_25F4A8F78);
  v11 = (*(v17 + 80) + 56) & ~*(v17 + 80);
  v12 = swift_allocObject();
  v12[2] = v19;
  v12[3] = v20;
  v12[4] = v23;
  v12[5] = v22;
  v12[6] = v7;
  sub_25F428728(v1, v12 + v11, &qword_27FD6E478, &qword_25F4A8F78);
  v13 = (v12 + ((v18 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v19;
  v13[1] = v20;
  swift_unknownObjectRetain_n();

  sub_25F494FEC(0, 0, v21, &unk_25F4A8F98, v12);

  sub_25F3F21F4(v2, &qword_27FD6E478, &qword_25F4A8F78);

  v14 = v0[1];

  return v14();
}

uint64_t sub_25F423034()
{
  (*(*(v0[18] - 8) + 8))(v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F423154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_getObjectType();
  swift_getWitnessTable();
  return sub_25F4A2900();
}

uint64_t sub_25F423228(uint64_t a1, char *a2)
{
  v3 = *a2;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v28 = sub_25F4A2510();
  v27 = sub_25F4A24F0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = *(TupleTypeMetadata2 - 8);
  v26 = TupleTypeMetadata2;
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v24 = &v21 - v5;
  v6 = sub_25F4A2A70();
  v22 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E468, &qword_25F4A8F58);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  *&a2[*(v3 + 144)] = 0;

  sub_25F404B8C(&a2[*(*a2 + 120)], v13, &qword_27FD6E468, &qword_25F4A8F58);
  v30 = *&v13[*(v11 + 56)];
  sub_25F4A2A80();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E500, &qword_25F4AEF30);
  sub_25F428848();
  sub_25F4A2650();
  v14 = *(v7 + 8);
  v29 = v7 + 8;
  v14(v9, v6);
  v21 = v14;

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4A0, &qword_25F4A8FC8);
  v16 = *(*(v15 - 8) + 8);
  v16(v13, v15);
  sub_25F404B8C(&a2[*(*a2 + 128)], v13, &qword_27FD6E468, &qword_25F4A8F58);
  v30 = *&v13[*(v11 + 56)];
  sub_25F4A2A80();
  sub_25F4A2650();
  v17 = v22;
  v14(v9, v22);

  v16(v13, v15);
  v18 = v24;
  v19 = v26;
  (*(v25 + 16))(v24, &a2[*(*a2 + 136)], v26);
  v30 = *&v18[*(v19 + 48)];
  sub_25F4A2A80();
  swift_getWitnessTable();
  sub_25F4A2650();
  v21(v9, v17);

  return (*(*(v28 - 8) + 8))(v18);
}

char *sub_25F423740(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  v26[2] = *v2;
  v29 = sub_25F4A2A70();
  v4 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2990();
  swift_allocObject();
  *(v2 + 2) = sub_25F4A2980();
  v7 = &v3[*(*v3 + 120)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E468, &qword_25F4A8F58);
  v9 = *(v8 + 48);
  sub_25F4A2A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  v10 = sub_25F4A24E0();
  v12 = v4 + 8;
  v11 = *(v4 + 8);
  v13 = v29;
  v11(v6, v29);
  v26[1] = v12;
  *&v7[v9] = v10;
  v14 = &v3[*(*v3 + 128)];
  v15 = *(v8 + 48);
  sub_25F4A2A80();
  v16 = sub_25F4A24E0();
  v11(v6, v13);
  *&v14[v15] = v16;
  v17 = &v3[*(*v3 + 136)];
  swift_getAssociatedTypeWitness();
  sub_25F4A2510();
  sub_25F4A24F0();
  v18 = *(swift_getTupleTypeMetadata2() + 48);
  sub_25F4A2A80();
  v19 = sub_25F4A24E0();
  v11(v6, v29);
  *&v17[v18] = v19;
  *&v3[*(*v3 + 144)] = 0;
  v20 = &v3[*(*v3 + 152)];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = *(*v3 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&v3[v21], v27, AssociatedTypeWitness);
  v23 = *(*v3 + 112);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedTypeWitness();
  (*(*(v24 - 8) + 32))(&v3[v23], v28, v24);
  return v3;
}

uint64_t sub_25F423C4C(uint64_t a1)
{
  type metadata accessor for AsyncMessageStream(0);
  sub_25F42A30C(&qword_27FD6D448, type metadata accessor for AsyncMessageStream, &protocol conformance descriptor for AsyncMessageStream);
  return sub_25F4A2690();
}

uint64_t sub_25F423CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_25F3FAD34;

  return sub_25F423DA8(a5, a6, a7);
}

uint64_t sub_25F423DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v4[8] = *v3;
  v5 = sub_25F4A2710();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D548, &qword_25F4A4370);
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v4[14] = *(v7 + 64);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E468, &qword_25F4A8F58);
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E488, &qword_25F4A8FB0);
  v4[19] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for PipeEvent.Content(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v4[20] = v11;
  v4[21] = *(v11 - 8);
  v4[22] = swift_task_alloc();
  v12 = type metadata accessor for AsyncMessageStream.Event(0);
  v4[23] = v12;
  v4[24] = *(v12 - 8);
  v4[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E490, &qword_25F4A8FB8);
  v4[26] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E498, &qword_25F4A8FC0);
  v4[27] = v13;
  v4[28] = *(v13 - 8);
  v4[29] = swift_task_alloc();
  swift_getObjectType();
  v15 = sub_25F4A2E40();
  v4[30] = v15;
  v4[31] = v14;

  return MEMORY[0x2822009F8](sub_25F424188, v15, v14);
}

uint64_t sub_25F424188()
{
  v1 = *(v0 + 56);
  swift_getObjectType();
  sub_25F4A2E50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E480, &qword_25F4A8F80);
  sub_25F4A2F10();
  v2 = *v1;
  *(v0 + 256) = *(*v1 + 120);
  *(v0 + 272) = *(v2 + 152);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v0 + 280) = v5;
  *v5 = v0;
  v5[1] = sub_25F4242FC;
  v6 = *(v0 + 208);
  v7 = *(v0 + 216);

  return MEMORY[0x2822003E8](v6, v3, v4, v7);
}

uint64_t sub_25F4242FC()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return MEMORY[0x2822009F8](sub_25F42441C, v3, v2);
}

uint64_t sub_25F42441C()
{
  v1 = v0[26];
  if ((*(v0[24] + 48))(v1, 1, v0[23]) == 1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    sub_25F429D70(v1, v0[25], type metadata accessor for AsyncMessageStream.Event);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v13 = v0[18];
        v49 = v0[32];
        v14 = v0[16];
        v50 = v0[15];
        v15 = v0[13];
        v16 = v0[14];
        v17 = v0[12];
        v19 = v0[6];
        v18 = v0[7];
        v20 = v0[5];
        v21 = *(v15 + 32);
        v21(v14, v0[25], v17);
        v51 = sub_25F425530(v20, v19);
        v23 = v22;
        v52 = v13;
        sub_25F404B8C(v18 + v49, v13, &qword_27FD6E468, &qword_25F4A8F58);

        (*(v15 + 16))(v50, v14, v17);
        v24 = (*(v15 + 80) + 16) & ~*(v15 + 80);
        v25 = (v16 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
        v26 = swift_allocObject();
        v21(v26 + v24, v50, v17);
        v27 = (v26 + v25);
        *v27 = v51;
        v27[1] = v23;

        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4A0, &qword_25F4A8FC8);
        sub_25F4A24B0();

        (*(v15 + 8))(v14, v17);
        (*(*(v28 - 8) + 8))(v52, v28);
      }

      else
      {
        v41 = v0[10];
        v40 = v0[11];
        v42 = v0[9];
        v43 = v0[7];
        (*(v41 + 32))(v40, v0[25], v42);
        v0[2] = v43;
        swift_getWitnessTable();
        sub_25F4A2690();
        (*(v41 + 8))(v40, v42);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v29 = v0[25];
      v30 = v0[18];
      v31 = v0[19];
      v33 = *v29;
      v32 = v29[1];
      sub_25F404B8C(v0[7] + v0[33], v30, &qword_27FD6E468, &qword_25F4A8F58);

      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      *(v34 + 24) = v32;

      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4A0, &qword_25F4A8FC8);
      sub_25F4A24C0();

      (*(*(v35 - 8) + 8))(v30, v35);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4A8, &qword_25F4A8FD0);
      v37 = *(v36 - 8);
      v38 = (*(v37 + 48))(v31, 1, v36);
      v39 = v0[19];
      if (v38 == 1)
      {

        sub_25F3F21F4(v39, &qword_27FD6E488, &qword_25F4A8FB0);
      }

      else
      {
        v0[3] = v0[7];
        swift_getWitnessTable();
        sub_25F4A26A0();

        (*(v37 + 8))(v39, v36);
      }
    }

    else
    {
      v5 = v0[25];
      v7 = v0[21];
      v6 = v0[22];
      v8 = v0[20];
      v9 = (v0[7] + v0[34]);
      v10 = v5[1];
      v11 = *v9;
      v12 = v9[1];
      *v9 = *v5;
      v9[1] = v10;

      sub_25F41305C(v11, v12);
      swift_storeEnumTagMultiPayload();
      sub_25F425258(v6);

      (*(v7 + 8))(v6, v8);
    }

    v44 = v0[5];
    v45 = v0[6];
    v46 = swift_task_alloc();
    v0[35] = v46;
    *v46 = v0;
    v46[1] = sub_25F4242FC;
    v47 = v0[26];
    v48 = v0[27];

    return MEMORY[0x2822003E8](v47, v44, v45, v48);
  }
}

uint64_t sub_25F424A88(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v50 = a3;
  v45 = a1;
  v5 = *a2;
  v6 = type metadata accessor for AsyncMessageStream(0);
  v52 = *(v6 - 8);
  v51 = *(v52 + 64);
  MEMORY[0x28223BE20](v6);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E398, &unk_25F4A8D38);
  v9 = *(v8 - 8);
  v57 = v8;
  v58 = v9;
  MEMORY[0x28223BE20](v8);
  v53 = &v41 - v10;
  v59 = a2;
  v43 = *(v5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for PipeEvent.Content(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v14 = *(v13 - 8);
  v55 = v13;
  v56 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v17 = sub_25F4A2910();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E518, &qword_25F4A9060);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - v20;
  v22 = sub_25F4A2A70();
  v46 = *(v22 - 8);
  v47 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6E520, &qword_25F4A9068);
  v48 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = &v41 - v25;
  sub_25F4A2A80();
  (*(v19 + 16))(v21, v45, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A2430();
  sub_25F4A2460();
  v26 = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedTypeWitness();
  type metadata accessor for TransportReply(255);
  v28 = *(swift_getTupleTypeMetadata3() + 48);
  (*(*(v26 - 8) + 16))(v16, &v59[*(*v59 + 104)], v26);
  (*(*(v27 - 8) + 16))(&v16[v28], v50, v27);
  sub_25F4A2A80();
  v29 = v49;
  sub_25F429D04(v54, v49, type metadata accessor for AsyncMessageStream);
  v30 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v31 = swift_allocObject();
  sub_25F429D70(v29, v31 + v30, type metadata accessor for AsyncMessageStream);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_25F42A26C;
  *(v32 + 24) = v31;
  v33 = v53;
  v34 = v44;
  v35 = v41;
  sub_25F4A2480();

  v36 = v47;
  v37 = *(v46 + 8);
  v37(v24, v47);
  sub_25F4A2A80();
  type metadata accessor for LazyPropertyList(0);
  v38 = v57;
  sub_25F4A2480();
  v37(v24, v36);
  (*(v58 + 8))(v33, v38);
  v39 = v55;
  swift_storeEnumTagMultiPayload();
  sub_25F425258(v16);
  (*(v56 + 8))(v16, v39);
  return (*(v48 + 8))(v35, v34);
}

uint64_t sub_25F425258(uint64_t a1)
{
  v21 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = swift_getAssociatedTypeWitness();
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  v8 = type metadata accessor for PipeEvent.Content(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v13 = type metadata accessor for PipeEvent(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v18 - v15;
  (*(v9 + 16))(v11, v21, v8);
  (*(v19 + 16))(v6, v1 + *(*v1 + 112), v20);
  sub_25F40BD68(v11, v6, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  sub_25F40C854(sub_25F427F54);
  return (*(v14 + 8))(v16, v13);
}

uint64_t (*sub_25F425530(uint64_t a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = a1;
  v54 = a2;
  v51 = *v2;
  v63 = *(v51 + 88);
  v64 = *(v51 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v57 = &v48 - v4;
  v61 = type metadata accessor for EndpointInvalidated(0, v5, v6, v7);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  v8 = MEMORY[0x28223BE20](v61);
  v55 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250);
  MEMORY[0x28223BE20](v11 - 8);
  v50 = &v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4B0, &qword_25F4A8FD8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4B8, &qword_25F4A8FE0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v48 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4C0, &qword_25F4A8FE8);
  (*(v14 + 104))(v16, *MEMORY[0x277D85778], v13);
  sub_25F4A2EB0();
  (*(v14 + 8))(v16, v13);
  v65 = v3;
  v48 = v23;
  sub_25F404B8C(v23, v21, &qword_27FD6E4B8, &qword_25F4A8FE0);
  v24 = *(v18 + 80);
  v62 = v24 | 7;
  v25 = v19;
  v49 = v19;
  v26 = swift_allocObject();
  sub_25F428728(v21, v26 + ((v24 + 16) & ~v24), &qword_27FD6E4B8, &qword_25F4A8FE0);
  swift_getWitnessTable();
  sub_25F4A28F0();

  v27 = sub_25F4A2EA0();
  v28 = v50;
  (*(*(v27 - 8) + 56))(v50, 1, 1, v27);
  sub_25F404B8C(v23, v21, &qword_27FD6E4B8, &qword_25F4A8FE0);
  v29 = (v24 + 56) & ~v24;
  v30 = (v25 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v33 = v53;
  v32 = v54;
  v31[2] = v53;
  v31[3] = v32;
  v34 = v63;
  v31[4] = v64;
  v31[5] = v34;
  v31[6] = v3;
  sub_25F428728(v21, v31 + v29, &qword_27FD6E4B8, &qword_25F4A8FE0);
  v35 = (v31 + v30);
  *v35 = v33;
  v35[1] = v32;
  swift_unknownObjectRetain_n();

  sub_25F494FEC(0, 0, v28, &unk_25F4A9008, v31);

  v36 = AssociatedTypeWitness;
  v37 = v57;
  (*(v59 + 16))(v57, v3 + *(*v3 + 104), AssociatedTypeWitness);
  v38 = v52;
  sub_25F40CFA0(v37, v36, v52);
  sub_25F428728(v48, v21, &qword_27FD6E4B8, &qword_25F4A8FE0);
  v39 = v58 + 32;
  v40 = *(v58 + 32);
  v41 = v55;
  v42 = v61;
  v40(v55, v38, v61);
  v43 = (v24 + 32) & ~v24;
  v44 = (v43 + v49 + *(v39 + 48)) & ~*(v39 + 48);
  v45 = swift_allocObject();
  v46 = v63;
  *(v45 + 16) = v64;
  *(v45 + 24) = v46;
  sub_25F428728(v21, v45 + v43, &qword_27FD6E4B8, &qword_25F4A8FE0);
  v40((v45 + v44), v41, v42);
  return sub_25F428600;
}

uint64_t sub_25F425BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 8))
  {
    sub_25F427F70(*a1, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D548, &qword_25F4A4370);
    return sub_25F4A2E60();
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a3;
    *(v7 + 24) = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D548, &qword_25F4A4370);
    return sub_25F4A2E70();
  }
}

uint64_t sub_25F425C9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4B8, &qword_25F4A8FE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4D0, &qword_25F4A8FF8);
  return sub_25F4A2EF0();
}

uint64_t sub_25F425CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_25F3F30B0;

  return sub_25F425DA4(a5, a6, a7);
}

uint64_t sub_25F425DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v4[17] = swift_task_alloc();
  v5 = sub_25F4A2A70();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for PipeEvent.Content(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v4[21] = v9;
  v4[22] = *(v9 - 8);
  v4[23] = swift_task_alloc();
  v10 = sub_25F4A25E0();
  v4[24] = v10;
  v4[25] = *(v10 - 8);
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = type metadata accessor for LazyPropertyList(0);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4E0, &qword_25F4A9028);
  v4[32] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4E8, &unk_25F4A9030);
  v4[33] = v11;
  v4[34] = *(v11 - 8);
  v4[35] = swift_task_alloc();
  swift_getObjectType();
  v12 = sub_25F4A2E40();
  v4[36] = v12;
  v4[37] = v13;

  return MEMORY[0x2822009F8](sub_25F42615C, v12, v13);
}

uint64_t sub_25F42615C()
{
  swift_getObjectType();
  sub_25F4A2E50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4C8, &qword_25F4A8FF0);
  sub_25F4A2F10();
  v1 = v0[13];
  v2 = v0[14];
  v3 = swift_task_alloc();
  v0[38] = v3;
  *v3 = v0;
  v3[1] = sub_25F4262B0;
  v4 = v0[32];
  v5 = v0[33];

  return MEMORY[0x2822003E8](v4, v1, v2, v5);
}

uint64_t sub_25F4262B0()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return MEMORY[0x2822009F8](sub_25F426404, v3, v2);
}

uint64_t sub_25F426404()
{
  v1 = *(v0 + 256);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4C0, &qword_25F4A8FE8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

    v3 = *(v0 + 8);

    return v3();
  }

  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  v7 = *(v0 + 224);
  v8 = *(v2 + 48);
  sub_25F429D70(v1, v5, type metadata accessor for LazyPropertyList);
  sub_25F428728(v1 + v8, v7, &qword_27FD6DEB0, &qword_25F4AB200);
  sub_25F429D04(v5, v6, type metadata accessor for LazyPropertyList);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(v0 + 240);
  if (EnumCaseMultiPayload != 1)
  {
    (*(*(v0 + 200) + 32))(*(v0 + 208), v10, *(v0 + 192));
    goto LABEL_10;
  }

  v11 = *v10;
  v12 = v10[1];
  v13 = objc_opt_self();
  v14 = sub_25F4A2050();
  *(v0 + 80) = 0;
  v15 = [v13 propertyListWithData:v14 options:0 format:0 error:v0 + 80];

  v16 = *(v0 + 80);
  if (v15)
  {
    sub_25F4A3090();
    swift_unknownObjectRelease();
    sub_25F4031FC(v0 + 16, v0 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4F0, &qword_25F4AD740);
    if (swift_dynamicCast())
    {
      sub_25F4A2560();
      sub_25F428790(v11, v12);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
LABEL_10:
      v46 = *(v0 + 248);
      v17 = *(v0 + 224);
      v18 = *(v0 + 200);
      v19 = *(v0 + 208);
      v21 = *(v0 + 184);
      v20 = *(v0 + 192);
      v22 = *(v0 + 168);
      v23 = *(v0 + 176);
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEC0, qword_25F4A71E0) + 48);
      (*(v18 + 16))(v21, v19, v20);
      sub_25F404B8C(v17, v21 + v24, &qword_27FD6DEB0, &qword_25F4AB200);
      swift_storeEnumTagMultiPayload();
      sub_25F425258(v21);
      (*(v23 + 8))(v21, v22);
      (*(v18 + 8))(v19, v20);
      sub_25F3F21F4(v17, &qword_27FD6DEB0, &qword_25F4AB200);
      v25 = type metadata accessor for LazyPropertyList;
      v26 = v46;
LABEL_16:
      sub_25F42A0FC(v26, v25);
      goto LABEL_17;
    }

    sub_25F4287E4();
    v28 = swift_allocError();
    sub_25F4031FC(v0 + 16, v29);
    swift_willThrow();
    sub_25F428790(v11, v12);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    v27 = v16;
    v28 = sub_25F4A1FD0();

    swift_willThrow();
    sub_25F428790(v11, v12);
  }

  v30 = *(v0 + 216);
  sub_25F404B8C(*(v0 + 224), v30, &qword_27FD6DEB0, &qword_25F4AB200);
  v31 = type metadata accessor for TransportReply(0);
  v32 = (*(*(v31 - 8) + 48))(v30, 1, v31);
  v33 = *(v0 + 248);
  v34 = *(v0 + 216);
  v35 = *(v0 + 224);
  if (v32 != 1)
  {
    v37 = *(v0 + 152);
    v36 = *(v0 + 160);
    v39 = *(v0 + 136);
    v38 = *(v0 + 144);
    sub_25F4A2A80();
    *v39 = v28;
    swift_storeEnumTagMultiPayload();
    v40 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
    sub_25F4A2410();

    sub_25F3F21F4(v39, &qword_27FD6DEB8, &unk_25F4A8D20);
    (*(v37 + 8))(v36, v38);
    sub_25F3F21F4(v35, &qword_27FD6DEB0, &qword_25F4AB200);
    sub_25F42A0FC(v33, type metadata accessor for LazyPropertyList);
    v25 = type metadata accessor for TransportReply;
    v26 = v34;
    goto LABEL_16;
  }

  sub_25F3F21F4(v35, &qword_27FD6DEB0, &qword_25F4AB200);
  sub_25F42A0FC(v33, type metadata accessor for LazyPropertyList);
  sub_25F3F21F4(v34, &qword_27FD6DEB0, &qword_25F4AB200);
LABEL_17:
  v41 = *(v0 + 104);
  v42 = *(v0 + 112);
  v43 = swift_task_alloc();
  *(v0 + 304) = v43;
  *v43 = v0;
  v43[1] = sub_25F4262B0;
  v44 = *(v0 + 256);
  v45 = *(v0 + 264);

  return MEMORY[0x2822003E8](v44, v41, v42, v45);
}

uint64_t sub_25F426AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34[0] = a6;
  v34[1] = a5;
  v35 = a4;
  v42 = a3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  MEMORY[0x28223BE20](v37);
  v39 = (v34 - v8);
  v40 = sub_25F4A2A70();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v36 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  MEMORY[0x28223BE20](v10 - 8);
  v41 = v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4C0, &qword_25F4A8FE8);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4D8, &unk_25F4A9010);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v34 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4B8, &qword_25F4A8FE0);
  v20 = *(v13 + 56);
  sub_25F429D04(a1, v15, type metadata accessor for LazyPropertyList);
  sub_25F404B8C(a2, &v15[v20], &qword_27FD6DEB0, &qword_25F4AB200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4D0, &qword_25F4A8FF8);
  sub_25F4A2EE0();
  v21 = (*(v17 + 88))(v19, v16);
  LODWORD(v20) = *MEMORY[0x277D85748];
  result = (*(v17 + 8))(v19, v16);
  if (v21 == v20)
  {
    v23 = v41;
    sub_25F404B8C(a2, v41, &qword_27FD6DEB0, &qword_25F4AB200);
    v24 = type metadata accessor for TransportReply(0);
    if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
    {
      return sub_25F3F21F4(v23, &qword_27FD6DEB0, &qword_25F4AB200);
    }

    else
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v28 = type metadata accessor for EndpointInvalidated(0, AssociatedTypeWitness, v26, v27);
      swift_getWitnessTable();
      v29 = swift_allocError();
      (*(*(v28 - 8) + 16))(v30, v35, v28);
      v31 = v36;
      sub_25F4A2A80();
      v32 = v39;
      *v39 = v29;
      swift_storeEnumTagMultiPayload();
      v33 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
      sub_25F4A2410();
      sub_25F3F21F4(v32, &qword_27FD6DEB8, &unk_25F4A8D20);
      (*(v38 + 8))(v31, v40);

      return sub_25F42A0FC(v23, type metadata accessor for TransportReply);
    }
  }

  return result;
}

uint64_t sub_25F426FC8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v14 - v8;
  if (*(a2 + *(v4 + 144)))
  {

    sub_25F440F18(a1);
  }

  else
  {
    (*(v7 + 16))(v9, a2 + *(v5 + 112), AssociatedTypeWitness);
    type metadata accessor for EndpointInvalidated(0, AssociatedTypeWitness, v11, v12);
    swift_getWitnessTable();
    swift_allocError();
    sub_25F40CFA0(v9, AssociatedTypeWitness, v13);
    return swift_willThrow();
  }
}

uint64_t sub_25F4271F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(AssociatedTypeWitness - 8) + 32))(a6, a1, AssociatedTypeWitness);
  v18 = *(*(v13 - 8) + 32);
  v18(a6 + v14, a2, v13);
  v16 = a6 + *(type metadata accessor for Outlet.EndpointCollision(0, a4, a5, v15) + 36);

  return (v18)(v16, a3, v13);
}

uint64_t sub_25F4273A0(uint64_t a1)
{
  v17 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v7 = &v14 - v6;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_25F4A30F0();
  MEMORY[0x25F8DD480](0xD000000000000025, 0x800000025F4B7B90);
  v16 = *(v5 + 16);
  v16(v7, v1, TupleTypeMetadata2);
  v8 = *(TupleTypeMetadata2 + 48);
  sub_25F4A3240();
  v15 = *(*(v3 - 8) + 8);
  v15(&v7[v8], v3);
  v9 = *(*(AssociatedTypeWitness - 8) + 8);
  v9(v7, AssociatedTypeWitness);
  MEMORY[0x25F8DD480](0x6F206D6F72662027, 0xEF27206E69676972);
  sub_25F4A3240();
  MEMORY[0x25F8DD480](39, 0xE100000000000000);
  v17 = v18;
  v18 = 0;
  v14 = v19;
  v19 = 0xE000000000000000;
  sub_25F4A30F0();
  MEMORY[0x25F8DD480](0xD000000000000039, 0x800000025F4B7BC0);
  v16(v7, v1, TupleTypeMetadata2);
  v10 = *(TupleTypeMetadata2 + 48);
  sub_25F4A3240();
  v15(&v7[v10], v3);
  v9(v7, AssociatedTypeWitness);
  MEMORY[0x25F8DD480](10535, 0xE200000000000000);
  v11 = v18;
  v12 = v19;
  v18 = v17;
  v19 = v14;
  MEMORY[0x25F8DD480](0x737561636562202CLL, 0xEA00000000002065);
  MEMORY[0x25F8DD480](v11, v12);

  return v18;
}

uint64_t sub_25F427714(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0810](a1, WitnessTable);
}

uint64_t sub_25F427768(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A07F0](a1, WitnessTable);
}

char *sub_25F4277BC()
{

  v1 = *(*v0 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  v3 = *(*v0 + 112);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = swift_getAssociatedTypeWitness();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_25F3F21F4(v0 + *(*v0 + 120), &qword_27FD6E468, &qword_25F4A8F58);
  sub_25F3F21F4(v0 + *(*v0 + 128), &qword_27FD6E468, &qword_25F4A8F58);
  v5 = *(*v0 + 136);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A2510();
  sub_25F4A24F0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 8))(v0 + v5, TupleTypeMetadata2);

  sub_25F41305C(*(v0 + *(*v0 + 152)), *(v0 + *(*v0 + 152) + 8));
  return v0;
}

uint64_t sub_25F427A8C()
{
  sub_25F4277BC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_25F427AFC(uint64_t a1)
{
  if (!qword_27FD6E460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
    v1 = sub_25F4A2510();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD6E460);
    }
  }
}

uint64_t sub_25F427B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0980](a1, a2, a3, WitnessTable);
}

uint64_t sub_25F427C08(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F427C48(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E478, &qword_25F4A8F78) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25F3FAD34;

  return sub_25F423CF4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_25F427D9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D548, &qword_25F4A4370);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25F427E48(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D548, &qword_25F4A4370) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_25F425BD4(a1, v1 + v4, v6, v7);
}

uint64_t sub_25F427EF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_25F427F70(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_25F427FA4()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4B8, &qword_25F4A8FE0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4C8, &qword_25F4A8FF0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[14];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4D0, &qword_25F4A8FF8);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25F4280E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4B8, &qword_25F4A8FE0);

  return sub_25F425C9C();
}

uint64_t sub_25F42815C()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4B8, &qword_25F4A8FE0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4C8, &qword_25F4A8FF0);
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[14];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4D0, &qword_25F4A8FF8);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_25F4282BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4B8, &qword_25F4A8FE0) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25F3F30B0;

  return sub_25F425CF0(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_25F428404()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4B8, &qword_25F4A8FE0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = v3 + *(*v1 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(type metadata accessor for EndpointInvalidated(0, AssociatedTypeWitness, v6, v7) - 8);
  v9 = *(v8 + 80);
  v10 = (v4 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v2 | v9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4C8, &qword_25F4A8FF0);
  (*(*(v13 - 8) + 8))(v0 + v3, v13);
  v14 = v1[14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4D0, &qword_25F4A8FF8);
  (*(*(v15 - 8) + 8))(v0 + v3 + v14, v15);
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v10, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v10 + v11, v12 | 7);
}

uint64_t sub_25F428600(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4B8, &qword_25F4A8FE0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(type metadata accessor for EndpointInvalidated(0, AssociatedTypeWitness, v11, v12) - 8);
  v14 = v2 + ((v9 + *(v13 + 80)) & ~*(v13 + 80));

  return sub_25F426AC4(a1, a2, v2 + v8, v14, v5, v6);
}

uint64_t sub_25F428728(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25F428790(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_25F4287E4()
{
  result = qword_27FD6E4F8;
  if (!qword_27FD6E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E4F8);
  }

  return result;
}

unint64_t sub_25F428848()
{
  result = qword_27FD6E508;
  if (!qword_27FD6E508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6E500, &qword_25F4AEF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E508);
  }

  return result;
}

uint64_t sub_25F4288C4(uint64_t a1)
{
  v2 = v1;
  v139 = a1;
  v136 = *v1;
  v122 = v136;
  v3 = v136[11];
  v4 = v136[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v100 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v107 = &v92 - v5;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  MEMORY[0x28223BE20](v93);
  v94 = &v92 - v6;
  v7 = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  v8 = sub_25F4A2510();
  v9 = sub_25F4A24F0();
  v103 = v8;
  v99 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v97 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v101 = &v92 - v10;
  v117 = type metadata accessor for TransportReply(0);
  v11 = MEMORY[0x28223BE20](v117);
  v126 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = v7;
  v123 = *(v7 - 8);
  MEMORY[0x28223BE20](v11);
  v128 = &v92 - v13;
  v14 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v116 = v14;
  v125 = swift_getAssociatedTypeWitness();
  v127 = *(v125 - 8);
  v15 = MEMORY[0x28223BE20](v125);
  v96 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v106 = &v92 - v18;
  MEMORY[0x28223BE20](v17);
  v124 = &v92 - v19;
  v105 = type metadata accessor for LazyPropertyList(0);
  MEMORY[0x28223BE20](v105);
  v104 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  MEMORY[0x28223BE20](v21 - 8);
  v119 = &v92 - v22;
  v23 = sub_25F4A25E0();
  v120 = *(v23 - 8);
  v121 = v23;
  MEMORY[0x28223BE20](v23);
  v118 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_25F4A2710();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25F4A2A70();
  v131 = *(v26 - 8);
  v132 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v95 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v134 = &v92 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v109 = &v92 - v32;
  MEMORY[0x28223BE20](v31);
  v108 = &v92 - v33;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E468, &qword_25F4A8F58);
  v34 = MEMORY[0x28223BE20](v130);
  v111 = &v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v110 = &v92 - v36;
  v38 = type metadata accessor for PipeEvent.Content(0, v4, v3, v37);
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v92 - v40;
  type metadata accessor for PipeEvent(0, v4, v3, v42);
  v43 = v136[13];
  v136 = v3;
  v102 = v4;
  v44 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v45 = v139;
  if ((sub_25F4A2C00() & 1) == 0)
  {
    v137 = 0;
    v138 = 0xE000000000000000;
    sub_25F4A30F0();
    MEMORY[0x25F8DD480](0x272074656C74754FLL, 0xE800000000000000);
    sub_25F4A3240();
    MEMORY[0x25F8DD480](0xD000000000000016, 0x800000025F4B7AF0);
    sub_25F4A3240();
    MEMORY[0x25F8DD480](39, 0xE100000000000000);
    sub_25F4A2A80();
    sub_25F4A23B0();
    sub_25F42A30C(&qword_27FD6E510, MEMORY[0x277D40410], MEMORY[0x277D40418]);
    swift_allocError();
    sub_25F4A23C0();
    return swift_willThrow();
  }

  v92 = v43;
  (*(v39 + 16))(v41, v45, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEC0, qword_25F4A71E0) + 48);
      v73 = v120;
      v72 = v121;
      v74 = v118;
      (*(v120 + 32))(v118, v41, v121);
      v75 = v119;
      sub_25F428728(&v41[v71], v119, &qword_27FD6DEB0, &qword_25F4AB200);
      v76 = &v2[*(*v2 + 152)];
      v77 = *v76;
      if (*v76)
      {
        v78 = *(v76 + 1);
        v79 = v104;
        (*(v73 + 16))(v104, v74, v72);
        swift_storeEnumTagMultiPayload();

        v77(v79, v75);
        sub_25F41305C(v77, v78);
        sub_25F42A0FC(v79, type metadata accessor for LazyPropertyList);
      }

      else
      {
        sub_25F4A2A80();
        sub_25F4A23B0();
        sub_25F42A30C(&qword_27FD6E510, MEMORY[0x277D40410], MEMORY[0x277D40418]);
        swift_allocError();
        sub_25F4A23C0();
        swift_willThrow();
      }

      sub_25F3F21F4(v75, &qword_27FD6DEB0, &qword_25F4AB200);
      return (*(v73 + 8))(v74, v72);
    }

    else
    {
      v52 = v125;
      v53 = v129;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v55 = *(TupleTypeMetadata3 + 48);
      v56 = *(TupleTypeMetadata3 + 64);
      v57 = v124;
      (*(v127 + 32))(v124, v41, v52);
      v58 = v123;
      (*(v123 + 32))(v128, &v41[v55], v53);
      v59 = &v41[v56];
      v60 = v126;
      sub_25F429D70(v59, v126, type metadata accessor for TransportReply);
      v61 = *(*v2 + 112);
      swift_getAssociatedConformanceWitness();
      if (sub_25F4A2C00())
      {
        v47 = v101;
        v62 = TupleTypeMetadata2;
        (*(v97 + 16))(v101, &v2[*(*v2 + 136)], TupleTypeMetadata2);
        v137 = *(v47 + *(v62 + 48));
        v63 = v95;
        sub_25F4A2A80();
        swift_getWitnessTable();
        v64 = v128;
        v65 = v133;
        sub_25F4A2630();
        if (v65)
        {
          (*(v131 + 8))(v63, v132);

          sub_25F42A0FC(v60, type metadata accessor for TransportReply);
          (*(v58 + 8))(v64, v129);
          (*(v127 + 8))(v124, v125);
          v49 = v103;
          v50 = v103;
          return (*(*(v50 - 8) + 8))(v47, v49);
        }

        v87 = v60;
        v88 = v132;
        v89 = *(v131 + 8);
        v89(v63, v132);

        (*(*(v103 - 8) + 8))(v47);
        v90 = v134;
        sub_25F4A2A80();
        v91 = v94;
        _s19PreviewsMessagingOS24CanvasControlDescriptionV9ModifiersV17propertyListValue0a10FoundationC008PropertyI0Vvg_0();
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
        sub_25F4A2410();
        sub_25F3F21F4(v91, &qword_27FD6DEB8, &unk_25F4A8D20);
        v89(v90, v88);
        sub_25F42A0FC(v87, type metadata accessor for TransportReply);
        (*(v58 + 8))(v64, v129);
        return (*(v127 + 8))(v124, v125);
      }

      else
      {
        (*(v100 + 16))(v107, &v2[v92], v44);
        v80 = v127;
        v81 = *(v127 + 16);
        v81(v106, &v2[v61], v52);
        v82 = v96;
        v81(v96, v57, v52);
        v83 = v102;
        v84 = v136;
        type metadata accessor for Outlet.EndpointCollision(0, v102, v136, v85);
        swift_getWitnessTable();
        swift_allocError();
        sub_25F4271F8(v107, v106, v82, v83, v84, v86);
        swift_willThrow();
        sub_25F42A0FC(v126, type metadata accessor for TransportReply);
        (*(v58 + 8))(v128, v129);
        return (*(v80 + 8))(v57, v52);
      }
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v66 = v110;
    sub_25F404B8C(&v2[*(*v2 + 120)], v110, &qword_27FD6E468, &qword_25F4A8F58);
    v137 = *(v66 + *(v130 + 48));
    v67 = v108;
    sub_25F4A2A80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E500, &qword_25F4AEF30);
    sub_25F428848();
    sub_25F4A2640();
    (*(v131 + 8))(v67, v132);

    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4A0, &qword_25F4A8FC8);
    return (*(*(v68 - 8) + 8))(v66, v68);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v47 = v111;
      sub_25F404B8C(&v2[*(*v2 + 128)], v111, &qword_27FD6E468, &qword_25F4A8F58);
      v137 = *(v47 + *(v130 + 48));
      v48 = v109;
      sub_25F4A2A80();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E500, &qword_25F4AEF30);
      sub_25F428848();
      sub_25F4A2640();
      (*(v131 + 8))(v48, v132);

      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E4A0, &qword_25F4A8FC8);
      v50 = v49;
      return (*(*(v50 - 8) + 8))(v47, v49);
    }

    v137 = v2;
    v69 = v122;
    swift_getWitnessTable();
    v70 = v112;
    sub_25F441084(v69);
    sub_25F4A2690();
    return (*(v113 + 8))(v70, v114);
  }
}

uint64_t sub_25F429D04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F429D70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F429DD8(uint64_t a1)
{
  type metadata accessor for AsyncMessageStream(0);

  return sub_25F423C4C(a1);
}

uint64_t objectdestroyTm_1()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E478, &qword_25F4A8F78) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E480, &qword_25F4A8F80);
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[14];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D430, &qword_25F4A41E0);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_25F429FA8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E478, &qword_25F4A8F78) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25F3FAD34;

  return sub_25F423CF4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_25F42A0FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_29Tm()
{
  v1 = (type metadata accessor for AsyncMessageStream(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D430, &qword_25F4A41E0);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25F42A30C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F42A354(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = v2;
  result = swift_getTupleTypeMetadata2();
  if (v5 <= 0x3F)
  {
    if (v3 > 0x3F)
    {
      return AssociatedTypeWitness;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F42A490(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v24 = AssociatedTypeWitness;
  v7 = *(v6 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(*(v8 - 8) + 64) + v11 + (v13 & ~v11)) & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v24);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_25F42A790(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  v12 = *(v6 + 64) + v11;
  v13 = ((*(v8 + 64) + v11 + (v12 & ~v11)) & ~v11) + *(v8 + 64);
  v14 = a3 - v10;
  if (a3 <= v10)
  {
    v17 = 0;
    v15 = a1;
    v16 = a2;
  }

  else
  {
    v15 = a1;
    v16 = a2;
    if (v13 <= 3)
    {
      v20 = ((v14 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v17 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v17 = v21;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  if (v10 < v16)
  {
    v18 = ~v10 + v16;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v18 & ~(-1 << (8 * v13));
        bzero(v15, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v15 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&v15[v13] = v19;
              }

              else
              {
                *&v15[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *v15 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v15 = v22;
        v15[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(v15, v13);
      *v15 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      v15[v13] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&v15[v13] = 0;
      if (!v16)
      {
        return;
      }

      goto LABEL_31;
    }

    *&v15[v13] = 0;
  }

  else if (v17)
  {
    v15[v13] = 0;
    if (!v16)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v16)
  {
    return;
  }

LABEL_31:
  if (v7 >= v9)
  {
    v24 = *(v6 + 56);

    v24(v15);
  }

  else
  {
    v23 = *(v8 + 56);

    v23(&v15[v12] & ~v11);
  }
}

uint64_t Transport.activation.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F42AC9C;

  return v7(a1, a2);
}

uint64_t sub_25F42AC9C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;

  if (!v2)
  {
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t Transport.invalidatedError.getter@<X0>(uint64_t *a3@<X8>)
{
  sub_25F4A30F0();
  sub_25F4A3250();
  MEMORY[0x25F8DD480](0xD000000000000010, 0x800000025F4B7C30);
  a3[3] = sub_25F4A2610();
  a3[4] = sub_25F42AE68();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_25F4A2620();
}

unint64_t sub_25F42AE68()
{
  result = qword_27FD6DFC0[0];
  if (!qword_27FD6DFC0[0])
  {
    sub_25F4A2610();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD6DFC0);
  }

  return result;
}

uint64_t dispatch thunk of Transport.sender.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F42AFEC;

  return v7(a1, a2);
}

uint64_t sub_25F42AFEC(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t UVPropertyList.decoded.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 data];
  v4 = sub_25F4A2060();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  type metadata accessor for LazyPropertyList(0);

  return swift_storeEnumTagMultiPayload();
}

id LazyPropertyList.encoded.getter()
{
  v0 = sub_25F4A2AE0();
  MEMORY[0x28223BE20](v0);
  v1 = LazyPropertyList.data.getter();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277D40FE8]);
  v5 = sub_25F4A2050();
  v6 = [v4 initWithData_];

  sub_25F428790(v1, v3);
  return v6;
}

id PropertyList.encoded.getter()
{
  v1 = type metadata accessor for LazyPropertyList(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25F4A25E0();
  (*(*(v4 - 8) + 16))(v3, v0, v4);
  swift_storeEnumTagMultiPayload();
  v5 = LazyPropertyList.encoded.getter();
  sub_25F4216D0(v3);
  return v5;
}

uint64_t UVPropertyList.eagerlyDecoded.getter()
{
  v1 = [v0 dictionary];
  sub_25F4A2B60();

  return sub_25F4A2560();
}

uint64_t sub_25F42B530(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEC8, &qword_25F4AB2B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F42B598(uint64_t a1, unsigned __int8 a2)
{
  sub_25F4A2C60();
}

uint64_t sub_25F42B6C0(uint64_t a1, unsigned __int8 a2)
{
  sub_25F4A2C60();
}

uint64_t sub_25F42B81C(uint64_t a1, unsigned __int8 a2)
{
  sub_25F4A2C60();
}

PreviewsMessagingOS::BitmapDescription::ByteOrder_optional __swiftcall BitmapDescription.ByteOrder.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_25F4A3170();

  if (v1 == 1)
  {
    v2.value = PreviewsMessagingOS_BitmapDescription_ByteOrder_big;
  }

  else
  {
    v2.value = PreviewsMessagingOS_BitmapDescription_ByteOrder_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t BitmapDescription.ByteOrder.rawValue.getter(char a1)
{
  if (a1)
  {
    return 6777186;
  }

  else
  {
    return 0x656C7474696CLL;
  }
}

uint64_t sub_25F42BA28(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 6777186;
  }

  else
  {
    v3 = 0x656C7474696CLL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 6777186;
  }

  else
  {
    v5 = 0x656C7474696CLL;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F42BAC4()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F42BB3C(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F42BBA0(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F42BC14@<X0>(char *a2@<X8>)
{
  v3 = sub_25F4A3170();

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

void sub_25F42BC74(uint64_t *a1@<X8>)
{
  v2 = 6777186;
  if (!*v1)
  {
    v2 = 0x656C7474696CLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F42BCA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F42D054();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t BitmapDescription.data.getter()
{
  v1 = *v0;
  sub_25F42BDA0(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_25F42BDA0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t BitmapDescription.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_25F428790(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t BitmapDescription.colorSpace.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t BitmapDescription.colorSpace.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t BitmapDescription.init(data:width:height:bytesPerRow:bitmapInfo:bitsPerComponent:bitsPerPixel:colorSpace:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

uint64_t sub_25F42C028()
{
  v1 = *v0;
  sub_25F4A3300();
  MEMORY[0x25F8DDB20](v1);
  return sub_25F4A3350();
}

uint64_t sub_25F42C09C(uint64_t a1)
{
  v2 = *v1;
  sub_25F4A3300();
  MEMORY[0x25F8DDB20](v2);
  return sub_25F4A3350();
}

CGImageRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BitmapDescription.makeImage()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  bytesPerRow = *(v0 + 32);
  bitmapInfo = *(v0 + 40);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = sub_25F4A2050();
  v6 = CGDataProviderCreateWithCFData(v5);
  if (!v6)
  {
    sub_25F42C274();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    v9 = v5;
LABEL_8:

    return v3;
  }

  v7 = v6;
  v8 = sub_25F4A2C10();
  v9 = CGColorSpaceCreateWithName(v8);

  if (!v9)
  {
    sub_25F42C274();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();

    v9 = v7;
    goto LABEL_8;
  }

  v10 = CGImageCreate(v1, v2, v4, v3, bytesPerRow, v9, bitmapInfo, v7, 0, 0, kCGRenderingIntentDefault);
  if (!v10)
  {
    sub_25F42C274();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();

    goto LABEL_8;
  }

  v3 = v10;

  return v3;
}

unint64_t sub_25F42C274()
{
  result = qword_27FD6E5A8;
  if (!qword_27FD6E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E5A8);
  }

  return result;
}

unint64_t sub_25F42C2C8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1635017060;
    v6 = 0x746867696568;
    if (a1 != 2)
    {
      v6 = 0x7265507365747962;
    }

    if (a1)
    {
      v5 = 0x6874646977;
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
    v1 = 0xD000000000000010;
    v2 = 0x5072655073746962;
    if (a1 != 7)
    {
      v2 = 0x617053726F6C6F63;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6564724F65747962;
    if (a1 != 4)
    {
      v3 = 0x6E4970616D746962;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_25F42C3FC()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F42B6C0(v3, v1);
  return sub_25F4A3350();
}

uint64_t sub_25F42C44C(uint64_t a1)
{
  v2 = *v1;
  sub_25F4A3300();
  sub_25F42B6C0(v4, v2);
  return sub_25F4A3350();
}

unint64_t sub_25F42C490@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F42D008(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_25F42C4C0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25F42C2C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25F42C54C(__int128 *a1)
{
  v38 = *a1;
  v1 = v38;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(a1 + 10);
  v6 = *(a1 + 6);
  v7 = *(a1 + 7);
  v8 = *(a1 + 8);
  v9 = *(a1 + 9);
  v37 = 0;
  v36 = v38;
  v35 = 1;
  v33 = v2;
  v34 = 0;
  v32 = 2;
  v30 = v3;
  v31 = 0;
  v29 = 3;
  v27 = v4;
  v28 = 0;
  v26 = 4;
  v25 = (v5 & 0x4000) != 0;
  v24 = 5;
  v22 = v5;
  v23 = 0;
  v21 = 6;
  v19 = v6;
  v20 = 0;
  v18 = 7;
  v16 = v7;
  v17 = 0;
  v15 = 8;
  v13 = v8;
  v14 = v9;
  sub_25F42D0A8(&v38, v12);
  sub_25F42BDA0(v1, *(&v1 + 1));
  sub_25F42CB94();
  sub_25F42CBE8();
  v10 = sub_25F4A2860();
  sub_25F42D104(v36, *(&v36 + 1));
  sub_25F428790(v1, *(&v1 + 1));
  return v10;
}

uint64_t BitmapDescription.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = &type metadata for BitmapDescription.Key;
  v5 = sub_25F42CB94();
  v22 = v5;
  LOBYTE(v20[0]) = 5;
  sub_25F4A2580();
  if (v2)
  {
    v9 = sub_25F4A25E0();
    (*(*(v9 - 8) + 8))(a1, v9);
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
    if (BYTE4(v18) == 1)
    {
      v21 = &type metadata for BitmapDescription.Key;
      v22 = v5;
      LOBYTE(v20[0]) = 4;
      sub_25F42CBE8();
      sub_25F4A2530();
      __swift_destroy_boxed_opaque_existential_1(v20);
      if (v23)
      {
        v6 = 16386;
      }

      else
      {
        v6 = 8194;
      }
    }

    else
    {
      v6 = v18;
    }

    v21 = &type metadata for BitmapDescription.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 6;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v20);
    if (v19)
    {
      v7 = 8;
    }

    else
    {
      v7 = v18;
    }

    v21 = &type metadata for BitmapDescription.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 7;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v20);
    if (v19)
    {
      v8 = 32;
    }

    else
    {
      v8 = v18;
    }

    v21 = &type metadata for BitmapDescription.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 8;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v11 = v19;
    if (v19)
    {
      v15 = v18;
    }

    else
    {
      v15 = sub_25F4A2C20();
      v11 = v12;
    }

    v21 = &type metadata for BitmapDescription.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 0;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = &type metadata for BitmapDescription.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v14 = v23;
    v21 = &type metadata for BitmapDescription.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 2;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = &type metadata for BitmapDescription.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 3;
    sub_25F4A2530();
    v13 = sub_25F4A25E0();
    (*(*(v13 - 8) + 8))(a1, v13);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v18;
    *(a2 + 8) = v19;
    *(a2 + 16) = v14;
    *(a2 + 24) = v17;
    *(a2 + 32) = v16;
    *(a2 + 40) = v6;
    *(a2 + 48) = v7;
    *(a2 + 56) = v8;
    *(a2 + 64) = v15;
    *(a2 + 72) = v11;
  }

  return result;
}

unint64_t sub_25F42CB94()
{
  result = qword_27FD6E5B0;
  if (!qword_27FD6E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E5B0);
  }

  return result;
}

unint64_t sub_25F42CBE8()
{
  result = qword_27FD6E5B8;
  if (!qword_27FD6E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E5B8);
  }

  return result;
}

unint64_t sub_25F42CC40()
{
  result = qword_27FD6E5C0;
  if (!qword_27FD6E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E5C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_25F42CD3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F42CD84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BitmapDescription.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BitmapDescription.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F42CF5C()
{
  result = qword_27FD6E5C8;
  if (!qword_27FD6E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E5C8);
  }

  return result;
}

unint64_t sub_25F42CFB4()
{
  result = qword_27FD6E5D0;
  if (!qword_27FD6E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E5D0);
  }

  return result;
}

unint64_t sub_25F42D008(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F42D054()
{
  result = qword_27FD6E5D8;
  if (!qword_27FD6E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E5D8);
  }

  return result;
}

uint64_t sub_25F42D104(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25F428790(result, a2);
  }

  return result;
}

uint64_t SelectableRegion.path.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SelectableRegion.accessibilityElement.getter()
{
  v1 = *(v0 + 48);
  sub_25F42D18C(v1, *(v0 + 56));
  return v1;
}

uint64_t sub_25F42D18C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25F42BDA0(result, a2);
  }

  return result;
}

uint64_t SelectableRegion.init(path:rect:accessibilityElement:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a7;
  *(a5 + 32) = a8;
  *(a5 + 40) = a9;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  return result;
}

void SelectableRegion.scaledBy(_:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v6 = *v2;
  v5 = *(v2 + 1);
  v7 = v2[2];
  v8 = v2[3];
  v10 = v2[4];
  v9 = v2[5];
  v11 = *(v2 + 6);
  v12 = *(v2 + 7);

  sub_25F42D18C(v11, v12);
  v14.origin.x = v7;
  v14.origin.y = v8;
  v14.size.width = v10;
  v14.size.height = v9;
  if (!CGRectIsNull(v14))
  {
    v15.origin.x = v7;
    v15.origin.y = v8;
    v15.size.width = v10;
    v15.size.height = v9;
    if (!CGRectIsInfinite(v15))
    {
      v16.origin.x = v7;
      v16.origin.y = v8;
      v16.size.width = v10;
      v16.size.height = v9;
      v13 = CGRectGetWidth(v16) * a2;
      v17.origin.x = v7;
      v17.origin.y = v8;
      v17.size.width = v10;
      v17.size.height = v9;
      v9 = CGRectGetHeight(v17) * a2;
      v7 = v7 * a2;
      v8 = v8 * a2;
      v10 = v13;
    }
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v10;
  *(a1 + 40) = v9;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
}

uint64_t sub_25F42D2B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1952671090;
  v5 = 0x800000025F4B6070;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001ELL;
    v3 = 0x800000025F4B6070;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1752457584;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1952671090;
  if (*a2 == 1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xD00000000000001ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1752457584;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F42D390()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F42D428(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F42D4AC(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F42D540@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F42DB8C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F42D570(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1952671090;
  if (v2 != 1)
  {
    v5 = 0xD00000000000001ELL;
    v4 = 0x800000025F4B6070;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1752457584;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_25F42D5C4()
{
  v1 = 1952671090;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1752457584;
  }
}

uint64_t sub_25F42D664(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 2);
  v17 = *(a1 + 3);
  v4 = v17;
  v16 = 0;
  v14 = v1;
  v15 = v2;
  v13 = 1;
  v10 = *(a1 + 1);
  v11 = v3;
  v12 = 0;
  v9 = 2;
  v8 = v17;

  sub_25F42DBD8(&v17, v7);
  sub_25F42D18C(v4, *(&v4 + 1));
  type metadata accessor for CGRect(0);
  sub_25F42D984();
  v5 = sub_25F4A28C0();
  sub_25F42D104(v8, *(&v8 + 1));

  sub_25F42D104(v4, *(&v4 + 1));
  return v5;
}

uint64_t SelectableRegion.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = &type metadata for SelectableRegion.Key;
  v5 = sub_25F42D984();
  v16 = v5;
  LOBYTE(v14[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    v8 = v17;
    v7 = v18;
    v15 = &type metadata for SelectableRegion.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 1;
    type metadata accessor for CGRect(0);
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v14);
    v15 = &type metadata for SelectableRegion.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 2;
    sub_25F4A2580();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    *a2 = v8;
    *(a2 + 8) = v7;
    *(a2 + 16) = v12;
    *(a2 + 32) = v13;
    *(a2 + 48) = v11;
  }

  return result;
}

unint64_t sub_25F42D984()
{
  result = qword_27FD6E5E0;
  if (!qword_27FD6E5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E5E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F42DA7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_25F42DAC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F42DB38()
{
  result = qword_27FD6E5E8;
  if (!qword_27FD6E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E5E8);
  }

  return result;
}

unint64_t sub_25F42DB8C(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F42DBD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E5F0, &unk_25F4A97D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void __swiftcall Error.makeNSError()(NSError *__return_ptr retstr)
{
  v3 = v2;
  v4 = v1;
  v5 = *(v1 - 8);
  v6 = (MEMORY[0x28223BE20])();
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v31 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = *(v5 + 16);
  v16(&v31 - v14, v3, v4);
  v17 = sub_25F4A3230();
  if (v17)
  {
    v18 = v17;
    (*(v5 + 8))(v15, v4);
  }

  else
  {
    v18 = swift_allocError();
    (*(v5 + 32))(v19, v15, v4);
  }

  v20 = sub_25F4A1FC0();

  v21 = [v20 userInfo];
  v22 = sub_25F4A2B60();

  v23 = *(v22 + 16);

  if (v23 < 2)
  {
    v16(v10, v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E5F8, &qword_25F4A97E0);
    if (swift_dynamicCast())
    {
      sub_25F412FDC(&v33, v36);
      v26 = objc_opt_self();
      __swift_project_boxed_opaque_existential_1(v36, v37);
      sub_25F4A3210();
      v27 = sub_25F4A2C10();

      [v26 uv:v27 errorWithDescription:?];
    }

    else
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      sub_25F3F21F4(&v33, &qword_27FD6E600, &qword_25F4A97E8);
      v16(v32, v3, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E608, &qword_25F4A97F0);
      if (!swift_dynamicCast())
      {
        v35 = 0;
        v33 = 0u;
        v34 = 0u;
        sub_25F3F21F4(&v33, &qword_27FD6E610, qword_25F4A97F8);
        v29 = objc_opt_self();
        v36[0] = 0;
        v36[1] = 0xE000000000000000;
        sub_25F4A3240();
        v30 = sub_25F4A2C10();

        [v29 uv:v30 errorWithDescription:?];

        return;
      }

      sub_25F412FDC(&v33, v36);
      __swift_project_boxed_opaque_existential_1(v36, v37);
      sub_25F4A27D0();
    }

    __swift_destroy_boxed_opaque_existential_1(v36);
    return;
  }

  v16(v13, v3, v4);
  v24 = sub_25F4A3230();
  if (v24)
  {
    v25 = v24;
    (*(v5 + 8))(v13, v4);
  }

  else
  {
    v25 = swift_allocError();
    (*(v5 + 32))(v28, v13, v4);
  }

  sub_25F4A1FC0();
}

void sub_25F42E174(uint64_t a1@<X8>)
{
  strcpy(a1, "providerName");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

unint64_t sub_25F42E228()
{
  result = qword_27FD6E618;
  if (!qword_27FD6E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E618);
  }

  return result;
}

uint64_t ProviderPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8[3] = &type metadata for ProviderPayload.Key;
  v8[4] = sub_25F42E228();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  if (!v2)
  {
    v7 = v8[6];
    *a2 = v8[5];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_25F42E3EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8[3] = &type metadata for ProviderPayload.Key;
  v8[4] = sub_25F42E228();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  if (!v2)
  {
    v7 = v8[6];
    *a2 = v8[5];
    a2[1] = v7;
  }

  return result;
}

uint64_t RegistryType.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RegistryType.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static RegistryType.< infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_25F4A3270();
  }
}

uint64_t sub_25F42E5AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F43A90C();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F42E670(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_25F4A3270();
  }
}

uint64_t sub_25F42E6A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_25F4A3270() ^ 1) & 1;
  }
}

uint64_t sub_25F42E6E8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_25F4A3270() ^ 1) & 1;
  }
}

uint64_t sub_25F42E73C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_25F4A3270();
  }
}

uint64_t RegistryID.init(sourceFilePath:registryType:registryIndexInFile:sidecarIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  *a6 = a1;
  a6[1] = a2;
  a6[2] = v8;
  a6[3] = v9;
  a6[4] = a4;
  v10 = a6 + *(type metadata accessor for RegistryID(0) + 28);

  return sub_25F42E808(a5, v10);
}

uint64_t sub_25F42E808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E620, &qword_25F4A9820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F42E884()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F42E968(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F42EA38(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F42EB18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F43A6F8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F42EB48(unint64_t *a1@<X8>)
{
  v2 = 0xEE0068746150656CLL;
  v3 = 0x6946656372756F73;
  v4 = 0x800000025F4B60C0;
  v5 = 0xD000000000000013;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000025F4B60E0;
  }

  if (*v1)
  {
    v3 = 0x7972747369676572;
    v2 = 0xEC00000065707954;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_25F42EBE8()
{
  v1 = 0x6946656372756F73;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x7972747369676572;
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

uint64_t sub_25F42ECC0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E8B8, &qword_25F4AB120);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-v7];
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = a1[4];
  v14 = *(v3 + 56);
  v19[-v7] = 3;
  v15 = type metadata accessor for RegistryID(0);
  sub_25F404B8C(a1 + *(v15 + 28), &v8[v14], &qword_27FD6E620, &qword_25F4A9820);
  v28 = 0;
  v26 = v10;
  v27 = v9;
  v25 = 1;
  v23 = v11;
  v24 = v12;
  v22 = 2;
  v20 = v13;
  v21 = 0;
  sub_25F404B8C(v8, v6, &qword_27FD6E8B8, &qword_25F4AB120);
  v16 = *(v3 + 56);
  v19[15] = *v6;
  sub_25F4A20A0();
  sub_25F42F25C();
  sub_25F42F2B0();

  v17 = sub_25F4A28B0();

  sub_25F3F21F4(v8, &qword_27FD6E8B8, &qword_25F4AB120);
  sub_25F3F21F4(&v6[v16], &qword_27FD6E620, &qword_25F4A9820);
  return v17;
}

uint64_t RegistryID.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E620, &qword_25F4A9820);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v25 = &type metadata for RegistryID.Key;
  v8 = sub_25F42F25C();
  v26 = v8;
  LOBYTE(v24[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v9 = sub_25F4A25E0();
    (*(*(v9 - 8) + 8))(a1, v9);
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
    v11 = v27;
    v10 = v28;
    v25 = &type metadata for RegistryID.Key;
    v26 = v8;
    LOBYTE(v24[0]) = 1;
    sub_25F42F2B0();
    sub_25F4A2580();
    v29 = v11;
    __swift_destroy_boxed_opaque_existential_1(v24);
    if (v23)
    {
      v12 = v22;
    }

    else
    {
      v12 = 0x77656976657270;
    }

    if (v23)
    {
      v13 = v23;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    v25 = &type metadata for RegistryID.Key;
    v26 = v8;
    LOBYTE(v24[0]) = 2;
    sub_25F4A2530();
    v20 = v12;
    v21 = v13;
    __swift_destroy_boxed_opaque_existential_1(v24);
    v14 = v22;
    v25 = &type metadata for RegistryID.Key;
    v26 = v8;
    LOBYTE(v24[0]) = 3;
    sub_25F4A20A0();
    sub_25F4A2580();
    v16 = sub_25F4A25E0();
    (*(*(v16 - 8) + 8))(a1, v16);
    __swift_destroy_boxed_opaque_existential_1(v24);
    *a2 = v29;
    a2[1] = v10;
    v17 = v21;
    a2[2] = v20;
    a2[3] = v17;
    a2[4] = v14;
    v18 = type metadata accessor for RegistryID(0);
    return sub_25F42E808(v7, a2 + *(v18 + 28));
  }
}

unint64_t sub_25F42F25C()
{
  result = qword_27FD6E628;
  if (!qword_27FD6E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E628);
  }

  return result;
}

unint64_t sub_25F42F2B0()
{
  result = qword_27FD6E630;
  if (!qword_27FD6E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E630);
  }

  return result;
}

uint64_t RegistryID.description.getter()
{
  v1 = v0;
  v2 = sub_25F4A1FE0();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E638, &qword_25F4A9828);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = &v32 - v5;
  v37 = sub_25F4A2040();
  v6 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E620, &qword_25F4A9820);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_25F4A20A0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RegistryID(0);
  sub_25F404B8C(v1 + *(v16 + 28), v11, &qword_27FD6E620, &qword_25F4A9820);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_25F3F21F4(v11, &qword_27FD6E620, &qword_25F4A9820);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_25F4A30F0();

    v40 = 0x7972747369676552;
    v41 = 0xE90000000000002DLL;
    v17 = v1;
    v18 = v37;
    (*(v6 + 56))(v34, 1, 1, v37);
    (*(v35 + 104))(v38, *MEMORY[0x277CC91D8], v36);

    sub_25F4A2030();
    v19 = sub_25F4A2000();
    v21 = v20;
    (*(v6 + 8))(v8, v18);
    MEMORY[0x25F8DD480](v19, v21);

    MEMORY[0x25F8DD480](35, 0xE100000000000000);
    v39 = v17[4];
    v22 = sub_25F4A3210();
    MEMORY[0x25F8DD480](v22);

    MEMORY[0x25F8DD480](91, 0xE100000000000000);
    MEMORY[0x25F8DD480](v17[2], v17[3]);
    MEMORY[0x25F8DD480](93, 0xE100000000000000);
    return v40;
  }

  else
  {
    v33 = v13;
    (*(v13 + 32))(v15, v11, v12);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_25F4A30F0();

    v40 = 0x7972747369676552;
    v41 = 0xE90000000000002DLL;
    v24 = v1;
    v25 = v37;
    (*(v6 + 56))(v34, 1, 1, v37);
    (*(v35 + 104))(v38, *MEMORY[0x277CC91D8], v36);

    sub_25F4A2030();
    v26 = sub_25F4A2000();
    v28 = v27;
    (*(v6 + 8))(v8, v25);
    MEMORY[0x25F8DD480](v26, v28);

    MEMORY[0x25F8DD480](0x726163656469732ELL, 0xE90000000000002DLL);
    sub_25F438210(&qword_27FD6E640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v29 = sub_25F4A3210();
    MEMORY[0x25F8DD480](v29);

    MEMORY[0x25F8DD480](35, 0xE100000000000000);
    v39 = v24[4];
    v30 = sub_25F4A3210();
    MEMORY[0x25F8DD480](v30);

    MEMORY[0x25F8DD480](91, 0xE100000000000000);
    MEMORY[0x25F8DD480](v24[2], v24[3]);
    MEMORY[0x25F8DD480](93, 0xE100000000000000);
    v23 = v40;
    (*(v33 + 8))(v15, v12);
  }

  return v23;
}

uint64_t RegistryID.hash(into:)(uint64_t a1)
{
  v2 = sub_25F4A20A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E620, &qword_25F4A9820);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_25F4A2C60();
  sub_25F4A2C60();
  MEMORY[0x25F8DDB20](*(v1 + 32));
  v9 = type metadata accessor for RegistryID(0);
  sub_25F404B8C(v1 + *(v9 + 28), v8, &qword_27FD6E620, &qword_25F4A9820);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_25F4A3320();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_25F4A3320();
  sub_25F438210(&qword_27FD6E648, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25F4A2BE0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t RegistryID.hashValue.getter()
{
  sub_25F4A3300();
  RegistryID.hash(into:)(v1);
  return sub_25F4A3350();
}

uint64_t sub_25F42FBE8()
{
  sub_25F4A3300();
  RegistryID.hash(into:)(v1);
  return sub_25F4A3350();
}

uint64_t sub_25F42FC2C(uint64_t a1)
{
  sub_25F4A3300();
  RegistryID.hash(into:)(v2);
  return sub_25F4A3350();
}

uint64_t RuntimeRegistryLocation.file.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 RuntimeRegistryLocation.file.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

void __swiftcall RuntimeRegistryLocation.init(file:line:)(PreviewsMessagingOS::RuntimeRegistryLocation *__return_ptr retstr, PreviewsMessagingOS::FileID file, Swift::Int line)
{
  v3 = *(file.moduleName._countAndFlagsBits + 16);
  v4 = *(file.moduleName._countAndFlagsBits + 24);
  retstr->file.moduleName = *file.moduleName._countAndFlagsBits;
  retstr->file.fileName._countAndFlagsBits = v3;
  retstr->file.fileName._object = v4;
  retstr->line = file.moduleName._object;
}

uint64_t sub_25F42FD70(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1701734764;
  }

  else
  {
    v2 = 1701603686;
  }

  if (*a2)
  {
    v3 = 1701734764;
  }

  else
  {
    v3 = 1701603686;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25F4A3270();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25F42FDE8()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F42FE50(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F42FE9C(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F42FF0C(uint64_t *a1@<X8>)
{
  v2 = 1701603686;
  if (*v1)
  {
    v2 = 1701734764;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_25F42FF34()
{
  if (*v0)
  {
    return 1701734764;
  }

  else
  {
    return 1701603686;
  }
}

uint64_t sub_25F42FFA8(__int128 *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v14 = 0;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v10 = 1;
  v8 = v4;
  v9 = 0;
  sub_25F43AA5C(a1, v7);
  sub_25F438260();
  sub_25F4382B4();
  v5 = sub_25F4A28D0();
  sub_25F403404(v11, *(&v11 + 1), v12, v13);
  return v5;
}

uint64_t RuntimeRegistryLocation.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v15 = &type metadata for RuntimeRegistryLocation.Key;
  v5 = sub_25F438260();
  v16 = v5;
  LOBYTE(v14[0]) = 0;
  sub_25F4382B4();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    v8 = v17;
    v7 = v18;
    v10 = v19;
    v9 = v20;
    v15 = &type metadata for RuntimeRegistryLocation.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 1;
    sub_25F4A2530();
    v12 = sub_25F4A25E0();
    (*(*(v12 - 8) + 8))(a1, v12);
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    v13 = v21;
    *a2 = v8;
    a2[1] = v7;
    a2[2] = v10;
    a2[3] = v9;
    a2[4] = v13;
  }

  return result;
}

uint64_t sub_25F43027C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x7972747369676572;
  }

  else
  {
    v2 = 0x72656469766F7270;
  }

  if (*a2)
  {
    v3 = 0x7972747369676572;
  }

  else
  {
    v3 = 0x72656469766F7270;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25F4A3270();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25F430314()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F43039C(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F430410(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F4304A0(uint64_t *a1@<X8>)
{
  v2 = 0x72656469766F7270;
  if (*v1)
  {
    v2 = 0x7972747369676572;
  }

  *a1 = v2;
  a1[1] = 0xEF77656976657250;
}

uint64_t sub_25F4304E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F43A650();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F4305B4()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4306AC(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F430790(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F430884@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F43A744(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F4308B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E616ELL;
  v4 = 0x696D697263736964;
  v5 = 0xEF72656469766F72;
  v6 = 0x506E497865646E69;
  v7 = 0x4449656C62617473;
  if (v2 != 3)
  {
    v7 = 0x6E6F697461636F6CLL;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x72656469766F7270;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_25F430968()
{
  v1 = *v0;
  v2 = 0x696D697263736964;
  v3 = 0x506E497865646E69;
  v4 = 0x4449656C62617473;
  if (v1 != 3)
  {
    v4 = 0x6E6F697461636F6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x72656469766F7270;
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

uint64_t PreviewSpecification.Value.propertyListValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E660, &qword_25F4A9830);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for RegistryID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PreviewSpecification.Value(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v0;
  v11 = sub_25F438330();
  sub_25F438384();
  sub_25F4A25C0();
  sub_25F4383D8(v0, v10, type metadata accessor for PreviewSpecification.Value);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E678, &qword_25F4A9838) + 48);
    v13 = *v12;
    v19 = *(v12 + 1);
    v20 = v13;
    v14 = *(v12 + 4);
    sub_25F4384E8(v10, v7, type metadata accessor for RegistryID);
    sub_25F4383D8(v7, v3, type metadata accessor for RegistryID);
    (*(v5 + 56))(v3, 0, 1, v4);
    *(&v27 + 1) = &type metadata for PreviewSpecification.Value.Key;
    v28 = v11;
    LOBYTE(v26) = 3;
    sub_25F438210(&qword_27FD6E680, type metadata accessor for RegistryID, &protocol conformance descriptor for RegistryID);
    sub_25F4A2520();
    sub_25F3F21F4(v3, &qword_27FD6E660, &qword_25F4A9830);
    __swift_destroy_boxed_opaque_existential_1(&v26);
    v26 = v20;
    v27 = v19;
    v28 = v14;
    v24 = &type metadata for PreviewSpecification.Value.Key;
    v25 = v11;
    LOBYTE(v22) = 4;
    sub_25F438440();
    sub_25F4A2520();
    sub_25F403404(v26, *(&v26 + 1), v27, *(&v27 + 1));
    sub_25F438780(v7, type metadata accessor for RegistryID);
    v15 = &v22;
  }

  else
  {
    v16 = v10[1];
    v17 = v10[2];
    v22 = *v10;
    v23 = v16;
    *(&v27 + 1) = &type metadata for PreviewSpecification.Value.Key;
    v28 = v11;
    LOBYTE(v26) = 1;
    sub_25F438494();
    sub_25F4A2520();

    __swift_destroy_boxed_opaque_existential_1(&v26);
    v22 = v17;
    LOBYTE(v23) = 0;
    *(&v27 + 1) = &type metadata for PreviewSpecification.Value.Key;
    v28 = v11;
    LOBYTE(v26) = 2;
    sub_25F4A2520();
    v15 = &v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_25F430DD8(_BYTE *a1, BOOL *a2, uint64_t a3)
{
  v6 = type metadata accessor for PreviewSpecification.Value(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  sub_25F4383D8(a3, v8, type metadata accessor for PreviewSpecification.Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = type metadata accessor for PreviewSpecification.Value;
  if (EnumCaseMultiPayload == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E678, &qword_25F4A9838);

    v10 = type metadata accessor for RegistryID;
  }

  result = sub_25F438780(v8, v10);
  *a2 = EnumCaseMultiPayload == 1;
  return result;
}

uint64_t PreviewSpecification.Value.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PreviewSpecification.Value(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v20 - v9);
  v24 = &type metadata for PreviewSpecification.Value.Key;
  v11 = sub_25F438330();
  v25 = v11;
  LOBYTE(v23[0]) = 0;
  sub_25F438384();
  sub_25F4A2530();
  if (v2)
  {
    v12 = sub_25F4A25E0();
    (*(*(v12 - 8) + 8))(a1, v12);
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
    v24 = &type metadata for PreviewSpecification.Value.Key;
    v25 = v11;
    if (v21)
    {
      LOBYTE(v23[0]) = 3;
      type metadata accessor for RegistryID(0);
      sub_25F438210(&qword_27FD6E680, type metadata accessor for RegistryID, &protocol conformance descriptor for RegistryID);
      sub_25F4A2530();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E678, &qword_25F4A9838);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v24 = &type metadata for PreviewSpecification.Value.Key;
      v25 = v11;
      LOBYTE(v23[0]) = 4;
      sub_25F438440();
      sub_25F4A2530();
      v16 = sub_25F4A25E0();
      (*(*(v16 - 8) + 8))(a1, v16);
      __swift_destroy_boxed_opaque_existential_1(v23);
      swift_storeEnumTagMultiPayload();
      v17 = v8;
    }

    else
    {
      LOBYTE(v23[0]) = 1;
      sub_25F438494();
      sub_25F4A2530();
      __swift_destroy_boxed_opaque_existential_1(v23);
      v15 = v21;
      v14 = v22;
      v24 = &type metadata for PreviewSpecification.Value.Key;
      v25 = v11;
      LOBYTE(v23[0]) = 2;
      sub_25F4A2530();
      v18 = sub_25F4A25E0();
      (*(*(v18 - 8) + 8))(a1, v18);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v19 = v26;
      *v10 = v15;
      v10[1] = v14;
      v10[2] = v19;
      swift_storeEnumTagMultiPayload();
      v17 = v10;
    }

    return sub_25F4384E8(v17, a2, type metadata accessor for PreviewSpecification.Value);
  }
}

uint64_t PreviewSpecification.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25F4A25E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PreviewSpecification.Value(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5);
  PreviewSpecification.Value.init(propertyListValue:)(v8, v11);
  if (v2)
  {
    return (*(v6 + 8))(a1, v5);
  }

  (*(v6 + 8))(a1, v5);
  return sub_25F4384E8(v11, a2, type metadata accessor for PreviewSpecification.Value);
}

uint64_t static PreviewSpecification.providerPreview(provider:indexInProvider:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  a3[1] = v3;
  a3[2] = a2;
  type metadata accessor for PreviewSpecification.Value(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t static PreviewSpecification.registryPreview(stableID:location:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v10 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E678, &qword_25F4A9838) + 48));
  sub_25F4383D8(a1, a3, type metadata accessor for RegistryID);
  *v10 = v6;
  v10[1] = v5;
  v10[2] = v8;
  v10[3] = v7;
  v10[4] = v9;
  type metadata accessor for PreviewSpecification.Value(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t PreviewSpecification.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RegistryID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PreviewSpecification.Value(0);
  MEMORY[0x28223BE20](v5);
  v7 = (v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25F4383D8(v1, v7, type metadata accessor for PreviewSpecification.Value);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E678, &qword_25F4A9838);

    sub_25F4384E8(v7, v4, type metadata accessor for RegistryID);
    v8 = RegistryID.description.getter();
    sub_25F438780(v4, type metadata accessor for RegistryID);
    return v8;
  }

  else
  {
    v10 = *v7;
    v11 = v7[1];
    v12 = v7[2];
    v15 = v10;
    v16 = v11;
    MEMORY[0x25F8DD480](95, 0xE100000000000000);
    v14[1] = v12;
    v13 = sub_25F4A3210();
    MEMORY[0x25F8DD480](v13);

    return v15;
  }
}

uint64_t sub_25F43182C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25F4A25E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PreviewSpecification.Value(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5);
  PreviewSpecification.Value.init(propertyListValue:)(v8, v11);
  if (v2)
  {
    return (*(v6 + 8))(a1, v5);
  }

  (*(v6 + 8))(a1, v5);
  return sub_25F4384E8(v11, a2, type metadata accessor for PreviewSpecification.Value);
}

uint64_t PreviewPayload.renderEffects.getter()
{
  type metadata accessor for PreviewPayload(0);
}

uint64_t PreviewPayload.renderEffects.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreviewPayload(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PreviewPayload.init(previewSpecification:renderEffects:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_25F4384E8(a1, a3, type metadata accessor for PreviewSpecification);
  result = type metadata accessor for PreviewPayload(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_25F431B50(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x66457265646E6572;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (v2)
  {
    v4 = 0x800000025F4B6140;
  }

  else
  {
    v4 = 0xED00007374636566;
  }

  if (*a2)
  {
    v5 = 0x66457265646E6572;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (*a2)
  {
    v6 = 0xED00007374636566;
  }

  else
  {
    v6 = 0x800000025F4B6140;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F431C08()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F431C9C(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F431D1C(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F431DB8(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F4B6140;
  v3 = 0xD000000000000014;
  if (*v1)
  {
    v3 = 0x66457265646E6572;
    v2 = 0xED00007374636566;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25F431E08()
{
  if (*v0)
  {
    return 0x66457265646E6572;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_25F431E90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E898, &qword_25F4AB108);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E8A0, &qword_25F4AB110);
  v6 = v5 - 8;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = *(v6 + 56);
  *(&v18 - v10) = 0;
  sub_25F4383D8(a1, &v18 + v12 - v10, type metadata accessor for PreviewSpecification);
  v13 = *(a1 + *(type metadata accessor for PreviewPayload(0) + 20));
  sub_25F404B8C(v11, v9, &qword_27FD6E8A0, &qword_25F4AB110);
  v14 = *v9;
  sub_25F4384E8(&v9[*(v6 + 56)], v4, type metadata accessor for PreviewSpecification);
  v15 = type metadata accessor for PreviewSpecification(0);
  (*(*(v15 - 8) + 56))(v4, 0, 1, v15);
  v20 = v14;
  v19 = 1;
  v18 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E6B0, &qword_25F4A9840);
  sub_25F438600();
  sub_25F438210(&qword_27FD6E6A0, type metadata accessor for PreviewSpecification, &protocol conformance descriptor for PreviewSpecification);
  sub_25F4386A8();
  v16 = sub_25F4A28D0();
  sub_25F3F21F4(v4, &qword_27FD6E898, &qword_25F4AB108);
  sub_25F3F21F4(v11, &qword_27FD6E8A0, &qword_25F4AB110);
  return v16;
}

void PreviewPayload.init(propertyListValue:)(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v15 = a2;
  v4 = sub_25F4A25E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PreviewSpecification(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &type metadata for PreviewPayload.Key;
  v11 = sub_25F438600();
  v19 = v11;
  LOBYTE(v16) = 0;
  sub_25F438210(&qword_27FD6E6A0, type metadata accessor for PreviewSpecification, &protocol conformance descriptor for PreviewSpecification);
  sub_25F4A2530();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  if (v2)
  {
    (*(v5 + 16))(v7, a1, v4);
    sub_25F438654();
    sub_25F4A2950();

    (*(v5 + 8))(a1, v4);
    v12 = v17;
    v13 = v18;
    v14 = v15;
    *v15 = v16;
    *(v14 + 2) = v12;
    type metadata accessor for PreviewSpecification.Value(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v18 = &type metadata for PreviewPayload.Key;
    v19 = v11;
    LOBYTE(v16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E6B0, &qword_25F4A9840);
    sub_25F4386A8();
    sub_25F4A2530();
    (*(v5 + 8))(a1, v4);
    __swift_destroy_boxed_opaque_existential_1(&v16);
    v13 = v20;
    v14 = v15;
    sub_25F4384E8(v10, v15, type metadata accessor for PreviewSpecification);
  }

  *(v14 + *(type metadata accessor for PreviewPayload(0) + 20)) = v13;
}

uint64_t PreviewPayload.init(providerPreviewPayload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = v3;
  type metadata accessor for PreviewSpecification.Value(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for PreviewPayload(0);
  *(a2 + *(result + 20)) = v4;
  return result;
}

uint64_t ProviderPreviewPayload.providerPayload.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t ProviderPreviewPayload.providerName.getter()
{
  v1 = *v0;

  return v1;
}

PreviewsMessagingOS::ProviderPreviewPayload __swiftcall ProviderPreviewPayload.init(providerPayload:previewID:renderEffects:)(PreviewsMessagingOS::ProviderPayload providerPayload, Swift::Int previewID, Swift::OpaquePointer renderEffects)
{
  v4 = *(providerPayload.providerName._countAndFlagsBits + 8);
  *v3 = *providerPayload.providerName._countAndFlagsBits;
  v3[1] = v4;
  v3[2] = providerPayload.providerName._object;
  v3[3] = previewID;
  result.providerPayload = providerPayload;
  result.renderEffects = renderEffects;
  result.previewID = previewID;
  return result;
}

uint64_t sub_25F432564(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4977656976657270;
  v4 = 0xE900000000000044;
  if (v2 != 1)
  {
    v3 = 0x66457265646E6572;
    v4 = 0xED00007374636566;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x72656469766F7270;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEF64616F6C796150;
  }

  v7 = 0x4977656976657270;
  v8 = 0xE900000000000044;
  if (*a2 != 1)
  {
    v7 = 0x66457265646E6572;
    v8 = 0xED00007374636566;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x72656469766F7270;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEF64616F6C796150;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F432690()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F432750(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F4327FC(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F4328B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F43A790(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F4328E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF64616F6C796150;
  v4 = 0xE900000000000044;
  v5 = 0x4977656976657270;
  if (v2 != 1)
  {
    v5 = 0x66457265646E6572;
    v4 = 0xED00007374636566;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x72656469766F7270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F432964()
{
  v1 = 0x4977656976657270;
  if (*v0 != 1)
  {
    v1 = 0x66457265646E6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72656469766F7270;
  }
}

uint64_t sub_25F4329F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E6B0, &qword_25F4A9840);
  sub_25F4387EC();
  sub_25F438494();
  sub_25F4386A8();
  v4 = sub_25F4A28C0();

  return v4;
}

uint64_t ProviderPreviewPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v15 = &type metadata for ProviderPreviewPayload.Key;
  v5 = sub_25F4387EC();
  v16 = v5;
  LOBYTE(v14[0]) = 0;
  sub_25F438494();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    v8 = v17;
    v7 = v18;
    v15 = &type metadata for ProviderPreviewPayload.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v14);
    v15 = &type metadata for ProviderPreviewPayload.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E6B0, &qword_25F4A9840);
    sub_25F4386A8();
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v14);
    if (v12)
    {
      v10 = v12;
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v11 = sub_25F4A25E0();
    result = (*(*(v11 - 8) + 8))(a1, v11);
    *a2 = v8;
    a2[1] = v7;
    a2[2] = v13;
    a2[3] = v10;
  }

  return result;
}

uint64_t FileID.moduleName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FileID.fileName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FileID.fileName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

PreviewsMessagingOS::FileID __swiftcall FileID.init(moduleName:fileName:)(Swift::String moduleName, Swift::String fileName)
{
  *v2 = moduleName;
  v2[1] = fileName;
  result.fileName = fileName;
  result.moduleName = moduleName;
  return result;
}

uint64_t sub_25F432DFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656D614E656C6966;
  }

  else
  {
    v3 = 0x614E656C75646F6DLL;
  }

  if (v2)
  {
    v4 = 0xEA0000000000656DLL;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x656D614E656C6966;
  }

  else
  {
    v5 = 0x614E656C75646F6DLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA0000000000656DLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F432EA8()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F432F30(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F432FA4(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F433034(uint64_t *a1@<X8>)
{
  v2 = 0x614E656C75646F6DLL;
  if (*v1)
  {
    v2 = 0x656D614E656C6966;
  }

  v3 = 0xEA0000000000656DLL;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F433078()
{
  if (*v0)
  {
    return 0x656D614E656C6966;
  }

  else
  {
    return 0x614E656C75646F6DLL;
  }
}

uint64_t FileID.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = &type metadata for FileID.Key;
  v5 = sub_25F43884C();
  v15 = v5;
  LOBYTE(v13[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v8 = v16;
    v7 = v17;
    v14 = &type metadata for FileID.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 1;
    sub_25F4A2530();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
    *a2 = v8;
    a2[1] = v7;
    a2[2] = v11;
    a2[3] = v12;
  }

  return result;
}

uint64_t FileID.description.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x25F8DD480](47, 0xE100000000000000);
  MEMORY[0x25F8DD480](v1, v2);
  return v4;
}

uint64_t static FileID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25F4A3270(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_25F4A3270();
    }
  }

  return result;
}

uint64_t FileID.hash(into:)(uint64_t a1)
{
  sub_25F4A2C60();

  return sub_25F4A2C60();
}

uint64_t FileID.hashValue.getter()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F433538()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F4335A0(uint64_t a1)
{
  sub_25F4A2C60();

  return sub_25F4A2C60();
}

uint64_t sub_25F4335F0(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F433654()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x25F8DD480](47, 0xE100000000000000);
  MEMORY[0x25F8DD480](v1, v2);
  return v4;
}

uint64_t sub_25F4336B4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25F4A3270(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_25F4A3270();
    }
  }

  return result;
}

uint64_t RegistryPayload.location.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RegistryPayload(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = v5;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
}

__n128 RegistryPayload.location.setter(__int128 *a1)
{
  v5 = a1[1];
  v6 = *a1;
  v2 = *(a1 + 4);
  v3 = v1 + *(type metadata accessor for RegistryPayload(0) + 20);

  result = v5;
  *v3 = v6;
  *(v3 + 16) = v5;
  *(v3 + 32) = v2;
  return result;
}

__n128 RegistryPayload.init(stableID:location:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2[1];
  v8 = *a2;
  v4 = *(a2 + 4);
  sub_25F4384E8(a1, a3, type metadata accessor for RegistryID);
  v5 = a3 + *(type metadata accessor for RegistryPayload(0) + 20);
  result = v7;
  *v5 = v8;
  *(v5 + 16) = v7;
  *(v5 + 32) = v4;
  return result;
}

uint64_t RegistryPayload.registryType.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_25F433964(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  else
  {
    v2 = 0x4449656C62617473;
  }

  if (*a2)
  {
    v3 = 0x6E6F697461636F6CLL;
  }

  else
  {
    v3 = 0x4449656C62617473;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25F4A3270();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25F4339EC()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F433A64(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F433AC0(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F433B40(uint64_t *a1@<X8>)
{
  v2 = 0x4449656C62617473;
  if (*v1)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

uint64_t sub_25F433B78()
{
  if (*v0)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 0x4449656C62617473;
  }
}

uint64_t sub_25F433BE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E660, &qword_25F4A9830);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E890, &qword_25F4AB100);
  v6 = v5 - 8;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = *(v6 + 56);
  *(&v23 - v10) = 0;
  sub_25F4383D8(a1, &v23 + v12 - v10, type metadata accessor for RegistryID);
  v13 = (a1 + *(type metadata accessor for RegistryPayload(0) + 20));
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[2];
  v17 = v13[3];
  v18 = v13[4];
  sub_25F404B8C(v11, v9, &qword_27FD6E890, &qword_25F4AB100);
  v19 = *v9;
  sub_25F4384E8(&v9[*(v6 + 56)], v4, type metadata accessor for RegistryID);
  v20 = type metadata accessor for RegistryID(0);
  (*(*(v20 - 8) + 56))(v4, 0, 1, v20);
  v29 = v19;
  v28 = 1;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  sub_25F4388C8();
  sub_25F438210(&qword_27FD6E680, type metadata accessor for RegistryID, &protocol conformance descriptor for RegistryID);
  sub_25F438440();

  v21 = sub_25F4A28D0();
  sub_25F403404(v23, v24, v25, v26);
  sub_25F3F21F4(v4, &qword_27FD6E660, &qword_25F4A9830);
  sub_25F3F21F4(v11, &qword_27FD6E890, &qword_25F4AB100);
  return v21;
}

uint64_t RegistryPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for RegistryID(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v19 + 1) = &type metadata for RegistryPayload.Key;
  v8 = sub_25F4388C8();
  v20 = v8;
  LOBYTE(v18) = 0;
  sub_25F438210(&qword_27FD6E680, type metadata accessor for RegistryID, &protocol conformance descriptor for RegistryID);
  sub_25F4A2530();
  if (v2)
  {
    v9 = sub_25F4A25E0();
    (*(*(v9 - 8) + 8))(a1, v9);
    return __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v18);
    v17[3] = &type metadata for RegistryPayload.Key;
    v17[4] = v8;
    LOBYTE(v17[0]) = 1;
    sub_25F438440();
    sub_25F4A2530();
    v11 = sub_25F4A25E0();
    (*(*(v11 - 8) + 8))(a1, v11);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v15 = v19;
    v16 = v18;
    v12 = v20;
    sub_25F4384E8(v7, a2, type metadata accessor for RegistryID);
    result = type metadata accessor for RegistryPayload(0);
    v13 = a2 + *(result + 20);
    v14 = v15;
    *v13 = v16;
    *(v13 + 16) = v14;
    *(v13 + 32) = v12;
  }

  return result;
}

uint64_t sub_25F434184(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0x66457265646E6572;
  }

  if (v2)
  {
    v4 = 0xED00007374636566;
  }

  else
  {
    v4 = 0x800000025F4B6190;
  }

  if (*a2)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0x66457265646E6572;
  }

  if (*a2)
  {
    v6 = 0x800000025F4B6190;
  }

  else
  {
    v6 = 0xED00007374636566;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F43423C()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4342D0(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F434350(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F4343EC(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F4B6190;
  v3 = 0x66457265646E6572;
  if (*v1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xED00007374636566;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25F43443C()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x66457265646E6572;
  }
}

uint64_t sub_25F4344C8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E6B0, &qword_25F4A9840);
  sub_25F438924();
  sub_25F43AA08();
  sub_25F4386A8();
  return sub_25F4A28D0();
}

uint64_t MainPreviewPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9[3] = &type metadata for MainPreviewPayload.Key;
  v9[4] = sub_25F438924();
  LOBYTE(v9[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E6B0, &qword_25F4A9840);
  sub_25F4386A8();
  sub_25F4A2580();
  if (v2)
  {
    v5 = sub_25F4A25E0();
    (*(*(v5 - 8) + 8))(a1, v5);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v8 = sub_25F4A25E0();
    result = (*(*(v8 - 8) + 8))(a1, v8);
    *a2 = v7;
  }

  return result;
}

uint64_t sub_25F4346E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x64656B6E696CLL;
  if (v2 != 1)
  {
    v3 = 0x646564616F6CLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1852399981;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = 0x64656B6E696CLL;
  if (*a2 != 1)
  {
    v6 = 0x646564616F6CLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1852399981;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F4347D4()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F434868(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F4348E8(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F434978@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F43A7DC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F4349A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x64656B6E696CLL;
  if (v2 != 1)
  {
    v4 = 0x646564616F6CLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1852399981;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_25F4349F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F43A6A4();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F434ABC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x800000025F4B61C0;
  if (v2 == 1)
  {
    v5 = 0x800000025F4B61C0;
  }

  else
  {
    v3 = 0x6150656C646E7562;
    v5 = 0xEA00000000006874;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x696D697263736964;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEC000000746E616ELL;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 0x6150656C646E7562;
    v4 = 0xEA00000000006874;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696D697263736964;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC000000746E616ELL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F434BC4()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F434C78(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F434D18(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F434DC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F43A828(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F434DF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E616ELL;
  v4 = 0x800000025F4B61C0;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 0x6150656C646E7562;
    v4 = 0xEA00000000006874;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696D697263736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_25F434E68()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6150656C646E7562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t CFunctionBundle.propertyListValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = sub_25F438994();
  sub_25F4389E8();
  result = sub_25F4A25C0();
  if (v3)
  {
    if (v3 != 1)
    {
      return result;
    }

    v10 = v1;
    v11 = v2;
    v8 = &type metadata for CFunctionBundle.Key;
    v9 = v4;
    v6 = 2;
  }

  else
  {
    v10 = v1;
    v11 = v2;
    v8 = &type metadata for CFunctionBundle.Key;
    v9 = v4;
    v6 = 1;
  }

  LOBYTE(v7[0]) = v6;
  sub_25F4A2520();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t CFunctionBundle.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = &type metadata for CFunctionBundle.Key;
  v5 = sub_25F438994();
  v18 = v5;
  LOBYTE(v16[0]) = 0;
  sub_25F4389E8();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
    if (v14)
    {
      v17 = &type metadata for CFunctionBundle.Key;
      v18 = v5;
      if (v14 == 1)
      {
        LOBYTE(v16[0]) = 1;
        sub_25F4A2530();
        v8 = sub_25F4A25E0();
        (*(*(v8 - 8) + 8))(a1, v8);
        result = __swift_destroy_boxed_opaque_existential_1(v16);
        v9 = 0;
        v10 = v14;
        v11 = v15;
      }

      else
      {
        LOBYTE(v16[0]) = 2;
        sub_25F4A2530();
        v13 = sub_25F4A25E0();
        (*(*(v13 - 8) + 8))(a1, v13);
        result = __swift_destroy_boxed_opaque_existential_1(v16);
        v10 = v14;
        v11 = v15;
        v9 = 1;
      }
    }

    else
    {
      v12 = sub_25F4A25E0();
      result = (*(*(v12 - 8) + 8))(a1, v12);
      v10 = 0;
      v11 = 0;
      v9 = 2;
    }

    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v9;
  }

  return result;
}

uint64_t CFunctionBundle.hash(into:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    if (*(v1 + 16) != 1)
    {
      return MEMORY[0x25F8DDB20](0);
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x25F8DDB20](v2);

  return sub_25F4A2C60();
}

uint64_t CFunctionBundle.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_25F4A3300();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x25F8DDB20](0);
      return sub_25F4A3350();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x25F8DDB20](v2);
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F435318()
{
  v1 = *(v0 + 16);
  sub_25F4A3300();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x25F8DDB20](0);
      return sub_25F4A3350();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x25F8DDB20](v2);
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F4353A4(uint64_t a1)
{
  if (*(v1 + 16))
  {
    if (*(v1 + 16) != 1)
    {
      return MEMORY[0x25F8DDB20](0);
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x25F8DDB20](v2);

  return sub_25F4A2C60();
}

uint64_t sub_25F43542C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_25F4A3300();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x25F8DDB20](0);
      return sub_25F4A3350();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x25F8DDB20](v3);
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t CFunctionPayload.bundle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_25F438A3C(v2, v3, v4);
}

uint64_t CFunctionPayload.bundle.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_25F438A54(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t CFunctionPayload.functionName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t CFunctionPayload.functionName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t CFunctionPayload.functionInput.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CFunctionPayload(0) + 24);
  v4 = sub_25F4A25E0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CFunctionPayload.functionInput.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CFunctionPayload(0) + 24);
  v4 = sub_25F4A25E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CFunctionPayload.streamsOutput.setter(char a1)
{
  result = type metadata accessor for CFunctionPayload(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t CFunctionPayload.init(bundle:functionName:functionInput:streamsOutput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v9 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v9;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  v10 = type metadata accessor for CFunctionPayload(0);
  v11 = *(v10 + 24);
  v12 = sub_25F4A25E0();
  result = (*(*(v12 - 8) + 32))(a6 + v11, a4, v12);
  *(a6 + *(v10 + 28)) = a5;
  return result;
}

uint64_t sub_25F43583C()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F435910(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F4359D0(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F435AA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F43A874(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F435AD0(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x656C646E7562;
  v4 = 0x6E6F6974636E7566;
  v5 = 0xED00007475706E49;
  if (*v1 != 2)
  {
    v4 = 0x4F736D6165727473;
    v5 = 0xED00007475707475;
  }

  if (*v1)
  {
    v3 = 0x6E6F6974636E7566;
    v2 = 0xEC000000656D614ELL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_25F435B60()
{
  v1 = 0x656C646E7562;
  v2 = 0x6E6F6974636E7566;
  if (*v0 != 2)
  {
    v2 = 0x4F736D6165727473;
  }

  if (*v0)
  {
    v1 = 0x6E6F6974636E7566;
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

uint64_t sub_25F435C28(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = &v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E880, &qword_25F4AB0F8);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[3];
  v27 = a1[4];
  v28 = v13;
  v14 = *(v5 + 56);
  v25 = v11;
  v26 = v14;
  *(&v25 - v9) = 2;
  v15 = *(a1 + 16);
  v16 = type metadata accessor for CFunctionPayload(0);
  v17 = *(v16 + 24);
  v18 = sub_25F4A25E0();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v10[v26], a1 + v17, v18);
  LODWORD(v26) = *(a1 + *(v16 + 28));
  v39 = 0;
  v20 = v25;
  v36 = v12;
  v37 = v25;
  v38 = v15;
  v35 = 1;
  v33 = v28;
  v34 = v27;
  sub_25F404B8C(v10, v8, &qword_27FD6E880, &qword_25F4AB0F8);
  LOBYTE(v16) = *v8;
  v21 = &v8[*(v5 + 56)];
  v22 = v29;
  (*(v19 + 32))(v29, v21, v18);
  (*(v19 + 56))(v22, 0, 1, v18);
  v32 = v16;
  v31 = 3;
  v30 = v26;
  sub_25F438A3C(v12, v20, v15);
  sub_25F438A94();
  sub_25F438AE8();

  v23 = sub_25F4A28B0();
  sub_25F3F21F4(v22, &qword_27FD6DAA0, &qword_25F4A5550);

  sub_25F438B3C(v36, v37, v38);
  sub_25F3F21F4(v10, &qword_27FD6E880, &qword_25F4AB0F8);
  return v23;
}

uint64_t CFunctionPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_25F4A25E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = &type metadata for CFunctionPayload.Key;
  v9 = sub_25F438A94();
  v34 = v9;
  LOBYTE(v32[0]) = 0;
  sub_25F438AE8();
  sub_25F4A2580();
  if (v2)
  {
    (*(v6 + 8))(a1, v5);
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v30 = a2;
    v31 = v8;
    __swift_destroy_boxed_opaque_existential_1(v32);
    v10 = v35;
    v11 = v36;
    v12 = v37;
    if (v37 == 255)
    {
      v13 = 0;
    }

    else
    {
      v13 = v35;
    }

    if (v37 == 255)
    {
      v14 = 0;
    }

    else
    {
      v14 = v36;
    }

    v28 = v14;
    v29 = v13;
    if (v37 == 255)
    {
      v15 = 2;
    }

    else
    {
      v15 = v37;
    }

    v33 = &type metadata for CFunctionPayload.Key;
    v34 = v9;
    LOBYTE(v32[0]) = 1;
    sub_25F4A2530();
    v38 = v12;
    v25 = v15;
    v26 = v11;
    v27 = v10;
    __swift_destroy_boxed_opaque_existential_1(v32);
    v16 = v35;
    v17 = v36;
    v33 = &type metadata for CFunctionPayload.Key;
    v34 = v9;
    LOBYTE(v32[0]) = 2;
    v18 = v31;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v32);
    v33 = &type metadata for CFunctionPayload.Key;
    v34 = v9;
    LOBYTE(v32[0]) = 3;
    sub_25F4A2580();
    (*(v6 + 8))(a1, v5, v38);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v20 = v16;
    LOBYTE(v16) = v39;
    v21 = v30;
    v22 = v28;
    *v30 = v29;
    v21[1] = v22;
    *(v21 + 16) = v25;
    v21[3] = v20;
    v21[4] = v17;
    v23 = type metadata accessor for CFunctionPayload(0);
    result = (*(v6 + 32))(v21 + *(v23 + 24), v18, v5);
    *(v21 + *(v23 + 28)) = v16 & 1;
  }

  return result;
}

__n128 StaticLayerHostPayload.layerHostPayload.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t StaticLayerHostPayload.renderPayload.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 120);
  v13 = *(v1 + 104);
  v3 = v13;
  v14 = v4;
  v15 = *(v1 + 136);
  v5 = v15;
  v6 = *(v1 + 56);
  v10[0] = *(v1 + 40);
  v10[1] = v6;
  v11 = *(v1 + 72);
  v7 = v11;
  v12 = v2;
  *a1 = v10[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  return sub_25F438B50(v10, v9);
}

__n128 StaticLayerHostPayload.init(layerHostPayload:renderPayload:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  v4 = *(a2 + 32);
  *(a3 + 88) = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a3 + 104) = *(a2 + 64);
  *(a3 + 120) = v5;
  result = *a2;
  v7 = *(a2 + 16);
  *(a3 + 40) = *a2;
  *(a3 + 56) = v7;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 136) = *(a2 + 96);
  *(a3 + 72) = v4;
  return result;
}

uint64_t sub_25F4363F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x61507265646E6572;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = 0x800000025F4B6210;
  }

  else
  {
    v4 = 0xED000064616F6C79;
  }

  if (*a2)
  {
    v5 = 0x61507265646E6572;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (*a2)
  {
    v6 = 0xED000064616F6C79;
  }

  else
  {
    v6 = 0x800000025F4B6210;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F4364AC()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F436540(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F4365C0(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F43665C(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F4B6210;
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0x61507265646E6572;
    v2 = 0xED000064616F6C79;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25F4366AC()
{
  if (*v0)
  {
    return 0x61507265646E6572;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_25F436760(__int128 *a1)
{
  v1 = *(a1 + 32);
  *&v27[55] = *(a1 + 88);
  *&v27[71] = *(a1 + 104);
  *&v27[87] = *(a1 + 120);
  *&v27[103] = *(a1 + 17);
  *&v27[7] = *(a1 + 40);
  *&v27[23] = *(a1 + 56);
  *&v27[39] = *(a1 + 72);
  v26 = 0;
  v2 = a1[1];
  v23 = *a1;
  v24 = v2;
  v25 = v1 & 1;
  v28 = 1;
  v31 = *&v27[32];
  v30 = *&v27[16];
  v29 = *v27;
  *&v34[15] = *&v27[95];
  *v34 = *&v27[80];
  v33 = *&v27[64];
  v32 = *&v27[48];
  v3 = *(a1 + 88);
  v4 = *(a1 + 120);
  v19 = *(a1 + 104);
  v20 = v4;
  v21 = *(a1 + 17);
  v5 = *(a1 + 56);
  v15 = *(a1 + 40);
  v16 = v5;
  v17 = *(a1 + 72);
  v18 = v3;
  v22 = 1;
  sub_25F43A9D0(a1, &v8);
  sub_25F404B8C(&v28, &v8, &qword_27FD6E878, &unk_25F4AB0E8);
  sub_25F438BB4();
  sub_25F438C08();
  sub_25F438C5C();
  v6 = sub_25F4A28D0();
  v35[4] = v19;
  v35[5] = v20;
  v36 = v21;
  v35[0] = v15;
  v35[1] = v16;
  v35[2] = v17;
  v35[3] = v18;
  sub_25F3F21F4(v35, &qword_27FD6E870, &qword_25F4AB0E0);
  v12 = *&v27[48];
  v13 = *&v27[64];
  v14[0] = *&v27[80];
  *(v14 + 15) = *&v27[95];
  v9 = *v27;
  v10 = *&v27[16];
  v8 = 1;
  v11 = *&v27[32];
  sub_25F3F21F4(&v8, &qword_27FD6E878, &unk_25F4AB0E8);
  return v6;
}

uint64_t StaticLayerHostPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(&v17 + 1) = &type metadata for StaticLayerHostPayload.Key;
  v5 = sub_25F438BB4();
  *&v18 = v5;
  LOBYTE(v16) = 0;
  sub_25F438C08();
  sub_25F4A2580();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v16);
    v13 = v24;
    v14 = v23;
    v8 = v25;
    v15[3] = &type metadata for StaticLayerHostPayload.Key;
    v15[4] = v5;
    LOBYTE(v15[0]) = 1;
    sub_25F438C5C();
    sub_25F4A2530();
    v9 = sub_25F4A25E0();
    (*(*(v9 - 8) + 8))(a1, v9);
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    *(&v26[5] + 7) = v21;
    *(&v26[4] + 7) = v20;
    *(&v26[3] + 7) = v19;
    *(&v26[1] + 7) = v17;
    *(v26 + 7) = v16;
    *(&v26[6] + 7) = v22;
    *(&v26[2] + 7) = v18;
    *a2 = v14;
    *(a2 + 16) = v13;
    *(a2 + 32) = v8;
    v10 = v26[2];
    *(a2 + 81) = v26[3];
    v11 = v26[5];
    *(a2 + 97) = v26[4];
    *(a2 + 113) = v11;
    *(a2 + 128) = *(&v26[5] + 15);
    v12 = v26[1];
    *(a2 + 33) = v26[0];
    *(a2 + 49) = v12;
    *(a2 + 65) = v10;
  }

  return result;
}

uint64_t NSPreviewHostablePreviewReply.initialRenderPayload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 144);
  v13 = *(v1 + 128);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 160);
  v4 = v15;
  v5 = *(v1 + 80);
  v10[0] = *(v1 + 64);
  v10[1] = v5;
  v6 = *(v1 + 112);
  v11 = *(v1 + 96);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_25F438B50(v10, v9);
}

__n128 NSPreviewHostablePreviewReply.init(auditToken:windowNumber:size:scaleFactor:initialRenderPayload:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a8;
  *(a7 + 48) = a9;
  *(a7 + 56) = a10;
  v10 = *(a6 + 80);
  *(a7 + 128) = *(a6 + 64);
  *(a7 + 144) = v10;
  *(a7 + 160) = *(a6 + 96);
  v11 = *(a6 + 16);
  *(a7 + 64) = *a6;
  *(a7 + 80) = v11;
  result = *(a6 + 48);
  *(a7 + 96) = *(a6 + 32);
  *(a7 + 112) = result;
  return result;
}

uint64_t sub_25F436CA8()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F436D9C(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F436E7C(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F436F6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F43A8C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F436F9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006E65;
  v4 = 0x6B6F547469647561;
  v5 = 0xE400000000000000;
  v6 = 1702521203;
  v7 = 0xEB00000000726F74;
  v8 = 0x636146656C616373;
  if (v2 != 3)
  {
    v8 = 0xD000000000000014;
    v7 = 0x800000025F4B6260;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x754E776F646E6977;
    v3 = 0xEC0000007265626DLL;
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

uint64_t sub_25F43704C()
{
  v1 = *v0;
  v2 = 0x6B6F547469647561;
  v3 = 1702521203;
  v4 = 0x636146656C616373;
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
    v2 = 0x754E776F646E6977;
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

uint64_t sub_25F437168(uint64_t a1)
{
  v1 = *(a1 + 96);
  *(&v46[3] + 7) = *(a1 + 112);
  v2 = *(a1 + 112);
  *(&v46[4] + 7) = *(a1 + 128);
  v3 = *(a1 + 128);
  *(&v46[5] + 7) = *(a1 + 144);
  *(&v46[6] + 7) = *(a1 + 160);
  v4 = *(a1 + 80);
  *(v46 + 7) = *(a1 + 64);
  v5 = *(a1 + 64);
  v6 = *(a1 + 80);
  *(&v46[1] + 7) = v4;
  *(&v46[2] + 7) = *(a1 + 96);
  v7 = *(a1 + 16);
  v43[0] = *a1;
  v43[1] = v7;
  v37 = *(a1 + 40);
  v50 = v46[2];
  v49 = v46[1];
  v48 = v46[0];
  *&v53[15] = *(&v46[5] + 15);
  *v53 = v46[5];
  v52 = v46[4];
  v51 = v46[3];
  v8 = *(a1 + 144);
  v30 = v3;
  v31 = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 56);
  v45 = 0;
  v44 = 0;
  v42 = 1;
  v40 = v9;
  v41 = 0;
  v39 = 2;
  v38 = 0;
  v36 = 3;
  v34 = v10;
  v35 = 0;
  v47 = 4;
  v32 = *(a1 + 160);
  v26 = v5;
  v27 = v6;
  v28 = v1;
  v29 = v2;
  v33 = 4;
  sub_25F43A998(a1, &v19);
  sub_25F404B8C(&v47, &v19, &qword_27FD6E868, &qword_25F4AB0D8);
  type metadata accessor for audit_token_t(0);
  v12 = v11;
  type metadata accessor for CGSize(0);
  v14 = v13;
  v15 = sub_25F438CB8();
  v16 = sub_25F438C5C();
  v17 = sub_25F4A28A0(&v45, v43, &v42, &v40, &v39, &v37, &v36, &v34, &v33, &v26, &type metadata for NSPreviewHostablePreviewReply.Key, v12, &type metadata for NSPreviewHostablePreviewReply.Key, MEMORY[0x277D83B88], &type metadata for NSPreviewHostablePreviewReply.Key, v14, &type metadata for NSPreviewHostablePreviewReply.Key, MEMORY[0x277D85048], &type metadata for NSPreviewHostablePreviewReply.Key, &type metadata for RenderPayload, v15, MEMORY[0x277D40600], v15, MEMORY[0x277D405F8], v15, MEMORY[0x277D40618], v15, MEMORY[0x277D40390], v15, v16);
  v54[4] = v30;
  v54[5] = v31;
  v55 = v32;
  v54[0] = v26;
  v54[1] = v27;
  v54[2] = v28;
  v54[3] = v29;
  sub_25F3F21F4(v54, &qword_27FD6E870, &qword_25F4AB0E0);
  v23 = v46[3];
  v24 = v46[4];
  v25[0] = v46[5];
  *(v25 + 15) = *(&v46[5] + 15);
  v20 = v46[0];
  v21 = v46[1];
  v19 = 4;
  v22 = v46[2];
  sub_25F3F21F4(&v19, &qword_27FD6E868, &qword_25F4AB0D8);
  return v17;
}

uint64_t NSPreviewHostablePreviewReply.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31[3] = &type metadata for NSPreviewHostablePreviewReply.Key;
  v5 = sub_25F438CB8();
  v31[4] = v5;
  LOBYTE(v31[0]) = 0;
  type metadata accessor for audit_token_t(0);
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v31);
    v29 = v32;
    v30 = v33;
    *(&v19 + 1) = &type metadata for NSPreviewHostablePreviewReply.Key;
    *&v20 = v5;
    LOBYTE(v18) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(&v18);
    v7 = v28;
    *(&v19 + 1) = &type metadata for NSPreviewHostablePreviewReply.Key;
    *&v20 = v5;
    LOBYTE(v18) = 2;
    type metadata accessor for CGSize(0);
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(&v18);
    v8 = v26;
    v9 = v27;
    *(&v19 + 1) = &type metadata for NSPreviewHostablePreviewReply.Key;
    *&v20 = v5;
    LOBYTE(v18) = 3;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(&v18);
    v11 = v25;
    v17[3] = &type metadata for NSPreviewHostablePreviewReply.Key;
    v17[4] = v5;
    LOBYTE(v17[0]) = 4;
    sub_25F438C5C();
    sub_25F4A2530();
    v12 = sub_25F4A25E0();
    (*(*(v12 - 8) + 8))(a1, v12);
    result = __swift_destroy_boxed_opaque_existential_1(v17);
    v13 = v30;
    *a2 = v29;
    *(a2 + 16) = v13;
    *(a2 + 32) = v7;
    *(a2 + 40) = v8;
    *(a2 + 48) = v9;
    *(a2 + 56) = v11;
    v14 = v23;
    *(a2 + 128) = v22;
    *(a2 + 144) = v14;
    *(a2 + 160) = v24;
    v15 = v19;
    *(a2 + 64) = v18;
    *(a2 + 80) = v15;
    v16 = v21;
    *(a2 + 96) = v20;
    *(a2 + 112) = v16;
  }

  return result;
}

uint64_t MacOSSnapshotPayload.renderPayload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_25F438B50(v10, v9);
}

__n128 MacOSSnapshotPayload.init(renderPayload:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

uint64_t MacOSSnapshotPayload.propertyListValue.getter()
{
  sub_25F438D54();
  sub_25F438C5C();
  return sub_25F4A25C0();
}

__n128 MacOSSnapshotPayload.init(propertyListValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[3] = &type metadata for MacOSSnapshotPayload.Key;
  v9[4] = sub_25F438D54();
  sub_25F438C5C();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  __swift_destroy_boxed_opaque_existential_1(v9);
  if (!v2)
  {
    v7 = v15;
    *(a2 + 64) = v14;
    *(a2 + 80) = v7;
    *(a2 + 96) = v16;
    v8 = v11;
    *a2 = v10;
    *(a2 + 16) = v8;
    result = v13;
    *(a2 + 32) = v12;
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_25F437A64()
{
  sub_25F438D54();
  sub_25F438C5C();
  return sub_25F4A25C0();
}

__n128 sub_25F437AF8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[3] = &type metadata for MacOSSnapshotPayload.Key;
  v9[4] = sub_25F438D54();
  sub_25F438C5C();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  __swift_destroy_boxed_opaque_existential_1(v9);
  if (!v2)
  {
    v7 = v15;
    *(a2 + 64) = v14;
    *(a2 + 80) = v7;
    *(a2 + 96) = v16;
    v8 = v11;
    *a2 = v10;
    *(a2 + 16) = v8;
    result = v13;
    *(a2 + 32) = v12;
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t _s19PreviewsMessagingOS15CFunctionBundleO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v14 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_25F4A3270();
        sub_25F438A3C(v6, v5, 0);
        sub_25F438A3C(v3, v2, 0);
        sub_25F438A54(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
        goto LABEL_15;
      }

      sub_25F438A3C(v14, v2, 0);
      sub_25F438A3C(v3, v2, 0);
      sub_25F438A54(v3, v2, 0);
      v18 = v3;
      v19 = v2;
      v20 = 0;
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_25F4A3270();
        sub_25F438A3C(v6, v5, 1u);
        sub_25F438A3C(v3, v2, 1u);
        sub_25F438A54(v3, v2, 1u);
        v11 = v6;
        v12 = v5;
        v13 = 1;
LABEL_15:
        sub_25F438A54(v11, v12, v13);
        return v10 & 1;
      }

      sub_25F438A3C(v8, v2, 1u);
      sub_25F438A3C(v3, v2, 1u);
      sub_25F438A54(v3, v2, 1u);
      v18 = v3;
      v19 = v2;
      v20 = 1;
      goto LABEL_24;
    }

LABEL_20:
    sub_25F438A3C(*a2, a2[1], v7);
    sub_25F438A3C(v3, v2, v4);
    sub_25F438A54(v3, v2, v4);
    sub_25F438A54(v6, v5, v7);
    return 0;
  }

  if (v7 != 2 || (v5 | v6) != 0)
  {
    goto LABEL_20;
  }

  sub_25F438A54(*a1, v2, 2u);
  v18 = 0;
  v19 = 0;
  v20 = 2;
LABEL_24:
  sub_25F438A54(v18, v19, v20);
  return 1;
}

BOOL _s19PreviewsMessagingOS10RegistryIDV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_25F4A20A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E620, &qword_25F4A9820);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E8A8, &qword_25F4AB118);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_25F4A3270() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_25F4A3270() & 1) == 0 || a1[4] != a2[4])
  {
    return 0;
  }

  v22 = v7;
  v14 = *(type metadata accessor for RegistryID(0) + 28);
  v15 = *(v11 + 48);
  sub_25F404B8C(a1 + v14, v13, &qword_27FD6E620, &qword_25F4A9820);
  sub_25F404B8C(a2 + v14, &v13[v15], &qword_27FD6E620, &qword_25F4A9820);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_25F404B8C(v13, v10, &qword_27FD6E620, &qword_25F4A9820);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = v22;
      (*(v5 + 32))(v22, &v13[v15], v4);
      sub_25F438210(&qword_27FD6E8B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v19 = sub_25F4A2C00();
      v20 = *(v5 + 8);
      v20(v18, v4);
      v20(v10, v4);
      sub_25F3F21F4(v13, &qword_27FD6E620, &qword_25F4A9820);
      return (v19 & 1) != 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_12:
    sub_25F3F21F4(v13, &qword_27FD6E8A8, &qword_25F4AB118);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_25F3F21F4(v13, &qword_27FD6E620, &qword_25F4A9820);
  return 1;
}

uint64_t sub_25F438210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25F438260()
{
  result = qword_27FD6E650;
  if (!qword_27FD6E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E650);
  }

  return result;
}

unint64_t sub_25F4382B4()
{
  result = qword_27FD6E658;
  if (!qword_27FD6E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E658);
  }

  return result;
}

unint64_t sub_25F438330()
{
  result = qword_27FD6E668;
  if (!qword_27FD6E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E668);
  }

  return result;
}

unint64_t sub_25F438384()
{
  result = qword_27FD6E670;
  if (!qword_27FD6E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E670);
  }

  return result;
}

uint64_t sub_25F4383D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25F438440()
{
  result = qword_27FD6E688;
  if (!qword_27FD6E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E688);
  }

  return result;
}

unint64_t sub_25F438494()
{
  result = qword_27FD6E690;
  if (!qword_27FD6E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E690);
  }

  return result;
}

uint64_t sub_25F4384E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F438570(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_25F438600()
{
  result = qword_27FD6E698;
  if (!qword_27FD6E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E698);
  }

  return result;
}

unint64_t sub_25F438654()
{
  result = qword_27FD6E6A8;
  if (!qword_27FD6E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E6A8);
  }

  return result;
}

unint64_t sub_25F4386A8()
{
  result = qword_27FD6E6B8;
  if (!qword_27FD6E6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6E6B0, &qword_25F4A9840);
    sub_25F43872C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E6B8);
  }

  return result;
}

unint64_t sub_25F43872C()
{
  result = qword_27FD6E6C0;
  if (!qword_27FD6E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E6C0);
  }

  return result;
}

uint64_t sub_25F438780(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25F4387EC()
{
  result = qword_27FD6E6C8;
  if (!qword_27FD6E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E6C8);
  }

  return result;
}

unint64_t sub_25F43884C()
{
  result = qword_27FD6E6D0;
  if (!qword_27FD6E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E6D0);
  }

  return result;
}

unint64_t sub_25F4388C8()
{
  result = qword_27FD6E6D8;
  if (!qword_27FD6E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E6D8);
  }

  return result;
}

unint64_t sub_25F438924()
{
  result = qword_27FD6E6E0;
  if (!qword_27FD6E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E6E0);
  }

  return result;
}

_BYTE *sub_25F438978(_BYTE *result, _BYTE *a2)
{
  v3 = *(v2 + 32);
  *result = 0;
  *a2 = 0x201u >> (8 * v3);
  return result;
}

unint64_t sub_25F438994()
{
  result = qword_27FD6E6E8;
  if (!qword_27FD6E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E6E8);
  }

  return result;
}

unint64_t sub_25F4389E8()
{
  result = qword_27FD6E6F0;
  if (!qword_27FD6E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E6F0);
  }

  return result;
}

uint64_t sub_25F438A3C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_25F438A54(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_25F438A94()
{
  result = qword_27FD6E6F8;
  if (!qword_27FD6E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E6F8);
  }

  return result;
}

unint64_t sub_25F438AE8()
{
  result = qword_27FD6E700;
  if (!qword_27FD6E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E700);
  }

  return result;
}

uint64_t sub_25F438B3C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_25F438A54(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_25F438BB4()
{
  result = qword_27FD6E708;
  if (!qword_27FD6E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E708);
  }

  return result;
}

unint64_t sub_25F438C08()
{
  result = qword_27FD6E710;
  if (!qword_27FD6E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E710);
  }

  return result;
}

unint64_t sub_25F438C5C()
{
  result = qword_27FD6E718;
  if (!qword_27FD6E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E718);
  }

  return result;
}

unint64_t sub_25F438CB8()
{
  result = qword_27FD6E720;
  if (!qword_27FD6E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E720);
  }

  return result;
}

uint64_t sub_25F438D0C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 80);
  *(a2 + 64) = *(v3 + 64);
  *(a2 + 80) = v4;
  *(a2 + 96) = *(v3 + 96);
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v5;
  v6 = *(v3 + 48);
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v6;
  return sub_25F43A960(v3, v8);
}

unint64_t sub_25F438D54()
{
  result = qword_27FD6E728;
  if (!qword_27FD6E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E728);
  }

  return result;
}

unint64_t sub_25F438DAC()
{
  result = qword_27FD6E730;
  if (!qword_27FD6E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E730);
  }

  return result;
}

unint64_t sub_25F438E4C()
{
  result = qword_27FD6E740;
  if (!qword_27FD6E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E740);
  }

  return result;
}

unint64_t sub_25F438EA4()
{
  result = qword_27FD6E748;
  if (!qword_27FD6E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E748);
  }

  return result;
}

uint64_t sub_25F438F2C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E620, &qword_25F4A9820);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25F438FFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E620, &qword_25F4A9820);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25F4390AC(uint64_t a1)
{
  sub_25F439140(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25F439140(uint64_t a1)
{
  if (!qword_27FD6E760)
  {
    sub_25F4A20A0();
    v1 = sub_25F4A3060();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD6E760);
    }
  }
}

uint64_t sub_25F439198(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25F4391E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F43924C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewSpecification.Value(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F4392CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewSpecification.Value(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25F43933C(uint64_t a1)
{
  result = type metadata accessor for PreviewSpecification.Value(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25F4393A8(uint64_t a1)
{
  sub_25F43941C();
  if (v1 <= 0x3F)
  {
    sub_25F439480(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_25F43941C()
{
  if (!qword_27FD6E788)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FD6E788);
    }
  }
}

void sub_25F439480(uint64_t a1)
{
  if (!qword_27FD6E790)
  {
    type metadata accessor for RegistryID(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FD6E790);
    }
  }
}

uint64_t sub_25F439500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PreviewSpecification(0);
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

uint64_t sub_25F4395D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PreviewSpecification(0);
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

void sub_25F439688(uint64_t a1)
{
  type metadata accessor for PreviewSpecification(319);
  if (v1 <= 0x3F)
  {
    sub_25F43970C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F43970C()
{
  if (!qword_27FD6E7A8)
  {
    v0 = sub_25F4A2E20();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD6E7A8);
    }
  }
}

uint64_t sub_25F439774(uint64_t a1, int a2)
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

uint64_t sub_25F4397BC(uint64_t result, int a2, int a3)
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

uint64_t sub_25F439820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RegistryID(0);
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

uint64_t sub_25F4398F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RegistryID(0);
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

uint64_t sub_25F4399B0(uint64_t a1)
{
  result = type metadata accessor for RegistryID(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19PreviewsMessagingOS15CFunctionBundleO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_25F439A50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F439A98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F439ADC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_25F439B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25F4A25E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25F439BD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_25F4A25E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}