unint64_t sub_1C06725AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE19108;
  if (!qword_1EBE19108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE19108);
  }

  return result;
}

unint64_t sub_1C0672604()
{
  result = qword_1EBE19110;
  if (!qword_1EBE19110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE19118, &qword_1C0982498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE19110);
  }

  return result;
}

uint64_t sub_1C06727B0(uint64_t a1)
{
  result = sub_1C095D38C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C0672844(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static AddressOntologyNode.StreetAddressNode.streetNameNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static AddressOntologyNode.StreetAddressNode.streetNumberNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static AddressOntologyNode.StreetAddressNode.streetTypeNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A28, &unk_1C0972FA0);

  return swift_initStaticObject();
}

uint64_t static AddressOntologyNode.StreetAddressNode.crossStreetNameNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static AddressOntologyNode.StreetAddressNode.crossStreetTypeNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A28, &unk_1C0972FA0);

  return swift_initStaticObject();
}

uint64_t static AddressOntologyNode.StreetAddressNode.crossStreetJoinNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A20, &unk_1C0972F90);

  return swift_initStaticObject();
}

uint64_t sub_1C0672A0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EA0, &qword_1C0973000);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C09787B0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
  inited = swift_initStaticObject();
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 32) = inited;
  v3 = swift_initStaticObject();
  *(v0 + 96) = v1;
  *(v0 + 104) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 72) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A28, &unk_1C0972FA0);
  v5 = swift_initStaticObject();
  *(v0 + 136) = v4;
  *(v0 + 144) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 112) = v5;
  v6 = swift_initStaticObject();
  *(v0 + 176) = v1;
  *(v0 + 184) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 152) = v6;
  v7 = swift_initStaticObject();
  *(v0 + 216) = v4;
  *(v0 + 224) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 192) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A20, &unk_1C0972F90);
  result = swift_initStaticObject();
  *(v0 + 256) = v8;
  *(v0 + 264) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 232) = result;
  qword_1EBE19150 = v0;
  return result;
}

uint64_t static AddressOntologyNode.StreetAddressNode.childNodes.getter()
{
  if (qword_1EBE15668 != -1)
  {
    swift_once();
  }
}

uint64_t AddressOntologyNode.StreetAddressNode.__allocating_init(name:multicardinal:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  if (qword_1EBE15668 != -1)
  {
    v10 = v6;
    swift_once();
    v6 = v10;
  }

  v7 = qword_1EBE19150;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3 & 1;
  *(v6 + 40) = v7;
  v8 = v6;

  return v8;
}

uint64_t AddressOntologyNode.StreetAddressNode.init(name:multicardinal:)(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_1EBE15668 != -1)
  {
    v6 = a1;
    v7 = a2;
    v8 = a3;
    swift_once();
    a1 = v6;
    a2 = v7;
    a3 = v8;
  }

  v4 = qword_1EBE19150;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  *(v3 + 40) = v4;

  return v3;
}

uint64_t AddressOntologyNode.StreetAddressNode.deinit()
{

  return v0;
}

uint64_t AddressOntologyNode.StreetAddressNode.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t Node.connectedNodes(nodeKind:edgeKind:)(__int128 *a1, __int128 *a2)
{
  v3 = *v2;
  v6 = *a2;
  v7 = v3;
  v5 = *a1;
  return sub_1C0519A28(&v7, &v6, &v5);
}

void Node.name.getter(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  swift_unownedRetainStrong();
  v5 = v3[8];
  v4 = v3[9];
  v7 = v3[10];
  v6 = v3[11];
  v8 = v3[12];

  *a1 = v5;
  a1[1] = v4;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v8;
}

uint64_t Node.vertex.getter()
{
  v0 = *(swift_unownedRetainStrong() + 56);

  return v0;
}

uint64_t Node.identifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  *(v3 + 104) = a1;
}

uint64_t Node.utteranceAlignments.setter(uint64_t a1)
{
  *(swift_unownedRetainStrong() + 112) = a1;
}

uint64_t Node.identifiers.getter()
{
  v1 = *(v0 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v2 = *(v1 + 104);

  return v2;
}

uint64_t Node.utteranceAlignments.getter()
{
  v1 = *(v0 + 8);
  swift_unownedRetainStrong();
  v2 = *(v1 + 112);

  return v2;
}

uint64_t Node.entitySpans.getter()
{
  v1 = *(v0 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v2 = *(v1 + 120);

  return v2;
}

void Node.kind.getter(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  swift_unownedRetainStrong();
  v5 = *(v3 + 80);
  v4 = *(v3 + 88);

  *a1 = v5;
  a1[1] = v4;
}

void sub_1C06730BC(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  swift_unownedRetainStrong();
  v5 = *(v3 + 80);
  v4 = *(v3 + 88);

  *a1 = v5;
  a1[1] = v4;
}

void sub_1C0673108(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  swift_unownedRetainStrong();
  v5 = v3[8];
  v4 = v3[9];
  v7 = v3[10];
  v6 = v3[11];
  v8 = v3[12];

  *a1 = v5;
  a1[1] = v4;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v8;
}

uint64_t sub_1C06731A4()
{
  v1 = *(v0 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v2 = *(v1 + 104);

  return v2;
}

uint64_t sub_1C0673200()
{
  v1 = *(v0 + 8);
  swift_unownedRetainStrong();
  v2 = *(v1 + 112);

  return v2;
}

uint64_t sub_1C0673240()
{
  v1 = *(v0 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v2 = *(v1 + 120);

  return v2;
}

uint64_t sub_1C067329C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C095DFEC();
  if ((a3 & 1) == 0)
  {
    MEMORY[0x1C68DDE90](0);
    if ((a2 & 1) == 0)
    {
      sub_1C095E00C();
      MEMORY[0x1C68DDEC0](a1);
      return sub_1C095E03C();
    }

    goto LABEL_5;
  }

  MEMORY[0x1C68DDE90](1);
  if (!a2)
  {
LABEL_5:
    sub_1C095E00C();
    return sub_1C095E03C();
  }

  sub_1C095E00C();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C0673360(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  if ((v1[2] & 1) == 0)
  {
    MEMORY[0x1C68DDE90](0);
    if ((v3 & 1) == 0)
    {
      sub_1C095E00C();
      return MEMORY[0x1C68DDEC0](v2);
    }

    return sub_1C095E00C();
  }

  MEMORY[0x1C68DDE90](1);
  if (!v3)
  {
    return sub_1C095E00C();
  }

  sub_1C095E00C();

  return sub_1C095D7BC();
}

uint64_t sub_1C0673400(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  sub_1C095DFEC();
  if ((v4 & 1) == 0)
  {
    MEMORY[0x1C68DDE90](0);
    if ((v3 & 1) == 0)
    {
      sub_1C095E00C();
      MEMORY[0x1C68DDEC0](v2);
      return sub_1C095E03C();
    }

    goto LABEL_5;
  }

  MEMORY[0x1C68DDE90](1);
  if (!v3)
  {
LABEL_5:
    sub_1C095E00C();
    return sub_1C095E03C();
  }

  sub_1C095E00C();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C06734CC(uint64_t a1)
{
  v2 = *(v1 + 40);
  if (v2 == 255)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_1C095E00C();
  if ((v2 & 1) == 0)
  {
    MEMORY[0x1C68DDE90](0);
    if ((v4 & 1) == 0)
    {
      sub_1C095E00C();
      MEMORY[0x1C68DDEC0](v3);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  MEMORY[0x1C68DDE90](1);
  if (!v4)
  {
LABEL_6:
    sub_1C095E00C();
    goto LABEL_7;
  }

  sub_1C095E00C();
  sub_1C095D7BC();
LABEL_7:
  MEMORY[0x1C68DDEC0](*(v1 + 56));
  v5 = *(v1 + 96);
  sub_1C095D7BC();
  sub_1C095D7BC();
  if (!v5)
  {
    return sub_1C095E00C();
  }

  sub_1C095E00C();
  if (!*(v5 + 24))
  {
    return sub_1C095E00C();
  }

  sub_1C095E00C();
  sub_1C095D7BC();
  sub_1C095D7BC();
  sub_1C095D7BC();

  return sub_1C095D7BC();
}

uint64_t sub_1C0673644()
{
  sub_1C095DFEC();
  sub_1C06734CC(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C06736AC(uint64_t a1)
{
  sub_1C095DFEC();
  sub_1C06734CC(v2);
  return sub_1C095E03C();
}

void sub_1C06736F8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v4 = *(v3 + 104);

  *a2 = v4;
}

uint64_t sub_1C0673760(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a2[1];
  swift_unownedRetainStrong();
  swift_beginAccess();
  *(v3 + 104) = v2;

  swift_unownedRetain();

  return swift_unownedRelease();
}

void (*Node.identifiers.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *v1;
  v6 = v1[1];
  *(v3 + 80) = v5;
  *(v3 + 88) = v6;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v7 = *(v6 + 104);

  *(v4 + 72) = v7;
  return sub_1C0673898;
}

void sub_1C0673898(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  swift_unownedRetainStrong();
  v5 = v3[11];
  swift_beginAccess();
  *(v5 + 104) = v4;
  if (a2)
  {

    swift_unownedRetain();

    swift_unownedRelease();
  }

  else
  {

    swift_unownedRetain();

    swift_unownedRelease();
  }

  free(v3);
}

uint64_t sub_1C06739A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a2[1];
  swift_unownedRetainStrong();
  *(v3 + 112) = v2;

  swift_unownedRetain();

  return swift_unownedRelease();
}

uint64_t (*Node.utteranceAlignments.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  v4 = v1[1];
  a1[1] = v3;
  a1[2] = v4;
  swift_unownedRetainStrong();
  v5 = *(v4 + 112);

  *a1 = v5;
  return sub_1C0673A8C;
}

uint64_t sub_1C0673A8C(uint64_t *a1, char a2)
{
  v3 = a1[2];
  v4 = *a1;
  swift_unownedRetainStrong();
  *(v3 + 112) = v4;
  if (a2)
  {

    swift_unownedRetain();

    swift_unownedRelease();
  }

  else
  {

    swift_unownedRetain();

    return swift_unownedRelease();
  }
}

void sub_1C0673B7C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v4 = *(v3 + 120);

  *a2 = v4;
}

uint64_t sub_1C0673BE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a2[1];
  swift_unownedRetainStrong();
  swift_beginAccess();
  *(v3 + 120) = v2;

  swift_unownedRetain();

  return swift_unownedRelease();
}

uint64_t Node.entitySpans.setter(uint64_t a1)
{
  v3 = *(v1 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  *(v3 + 120) = a1;
}

void (*Node.entitySpans.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *v1;
  v6 = v1[1];
  *(v3 + 80) = v5;
  *(v3 + 88) = v6;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v7 = *(v6 + 120);

  *(v4 + 72) = v7;
  return sub_1C0673D84;
}

void sub_1C0673D84(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  swift_unownedRetainStrong();
  v5 = v3[11];
  swift_beginAccess();
  *(v5 + 120) = v4;
  if (a2)
  {

    swift_unownedRetain();

    swift_unownedRelease();
  }

  else
  {

    swift_unownedRetain();

    swift_unownedRelease();
  }

  free(v3);
}

uint64_t Node.normalizedStringPayloads.getter()
{
  v1 = *(v0 + 8);
  swift_unownedRetainStrong();
  v3 = v1[8];
  v2 = v1[9];

  if (qword_1ED5D7CA0 != -1)
  {
    swift_once();
  }

  if (v3 == xmmword_1ED5D7CA8 && v2 == *(&xmmword_1ED5D7CA8 + 1))
  {

    goto LABEL_10;
  }

  v5 = sub_1C095DF3C();

  if (v5)
  {
LABEL_10:
    swift_unownedRetainStrong();
    v6 = v1[6];

    return v6;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t Node.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  swift_unownedRetainStrong();
  v4 = v3[12];

  sub_1C095D7BC();
  sub_1C095D7BC();
  if (v4 && (sub_1C095E00C(), *(v4 + 24)))
  {
    sub_1C095E00C();
    sub_1C095D7BC();
    sub_1C095D7BC();
    sub_1C095D7BC();
    sub_1C095D7BC();
  }

  else
  {
    sub_1C095E00C();
  }

  swift_unownedRetainStrong();
  v5 = v3[7];

  MEMORY[0x1C68DDEC0](v5);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v6 = v3[13];

  sub_1C0571154(a1, v6);

  swift_unownedRetainStrong();
  v7 = v3[14];

  sub_1C057106C(a1, v7);

  swift_unownedRetainStrong();
  v9 = v3[8];
  v8 = v3[9];

  if (qword_1ED5D7CA0 != -1)
  {
    swift_once();
  }

  if (__PAIR128__(v8, v9) == xmmword_1ED5D7CA8)
  {

LABEL_10:
    swift_unownedRetainStrong();
    v11 = v3[6];

    goto LABEL_12;
  }

  v10 = sub_1C095DF3C();

  if (v10)
  {
    goto LABEL_10;
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_12:
  MEMORY[0x1C68DDE90](*(v11 + 16));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + 40;
    do
    {

      sub_1C095D7BC();

      v13 += 16;
      --v12;
    }

    while (v12);
  }

  swift_unownedRetainStrong();
  swift_beginAccess();
  v14 = v3[15];

  MEMORY[0x1C68DDE90](*(v14 + 16));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v15 - 1;
    for (i = 32; ; i += 192)
    {
      v18 = *(v14 + i);
      v19 = *(v14 + i + 16);
      v20 = *(v14 + i + 48);
      v34[2] = *(v14 + i + 32);
      v34[3] = v20;
      v34[0] = v18;
      v34[1] = v19;
      v21 = *(v14 + i + 64);
      v22 = *(v14 + i + 80);
      v23 = *(v14 + i + 112);
      v34[6] = *(v14 + i + 96);
      v34[7] = v23;
      v34[4] = v21;
      v34[5] = v22;
      v24 = *(v14 + i + 128);
      v25 = *(v14 + i + 144);
      v26 = *(v14 + i + 160);
      *(v35 + 9) = *(v14 + i + 169);
      v34[9] = v25;
      v35[0] = v26;
      v34[8] = v24;
      v27 = *(v14 + i + 144);
      v46 = *(v14 + i + 128);
      v47 = v27;
      v48[0] = *(v14 + i + 160);
      *(v48 + 9) = *(v14 + i + 169);
      v28 = *(v14 + i + 80);
      v42 = *(v14 + i + 64);
      v43 = v28;
      v29 = *(v14 + i + 112);
      v44 = *(v14 + i + 96);
      v45 = v29;
      v30 = *(v14 + i + 16);
      v38 = *(v14 + i);
      v39 = v30;
      v31 = *(v14 + i + 48);
      v40 = *(v14 + i + 32);
      v41 = v31;
      sub_1C0521E78(v34, v33);
      UsoEntitySpan.hash(into:)(a1);
      v36[8] = v46;
      v36[9] = v47;
      v37[0] = v48[0];
      *(v37 + 9) = *(v48 + 9);
      v36[4] = v42;
      v36[5] = v43;
      v36[6] = v44;
      v36[7] = v45;
      v36[0] = v38;
      v36[1] = v39;
      v36[2] = v40;
      v36[3] = v41;
      sub_1C05755CC(v36);
      if (!v16)
      {
        break;
      }

      --v16;
    }
  }
}

double Node.addUsoIdentifier(usoIdentifier:)(__int128 *a1)
{
  v2 = a1[2];
  v3 = a1[4];
  v20 = a1[3];
  v21[0] = v3;
  *(v21 + 9) = *(a1 + 73);
  v4 = a1[1];
  v17 = *a1;
  v18 = v4;
  v19 = v2;
  v5 = *(v1 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v6 = *(v5 + 104);
  sub_1C0518B04(&v17, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 104) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1C0519CF8(0, *(v6 + 2) + 1, 1, v6);
    *(v5 + 104) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1C0519CF8((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[96 * v9];
  v11 = v18;
  *(v10 + 2) = v17;
  *(v10 + 3) = v11;
  v12 = v19;
  v13 = v20;
  v14 = v21[0];
  *(v10 + 105) = *(v21 + 9);
  *(v10 + 5) = v13;
  *(v10 + 6) = v14;
  *(v10 + 4) = v12;
  *(v5 + 104) = v6;
  swift_endAccess();

  return result;
}

double Node.addUtteranceAlignment(utteranceAlignment:)(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(v1 + 8);
  swift_unownedRetainStrong();
  v5 = *(v4 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 112) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1C052233C(0, *(v5 + 2) + 1, 1, v5);
    *(v4 + 112) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1C052233C((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[16 * v8];
  *(v9 + 8) = v2;
  *(v9 + 5) = v3;
  *(v4 + 112) = v5;

  return result;
}

double Node.connect(to:name:order:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, _OWORD *a4@<X8>)
{
  v6 = *(a1 + 8);
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v12 = *v4;
  v13 = *(swift_unownedRetainStrong() + 56);

  swift_unownedRetainStrong();
  v14 = *(v6 + 56);

  *&v28 = v13;
  *(&v28 + 1) = v14;
  LODWORD(v29) = a3;
  *(&v29 + 1) = v8;
  *&v30 = v7;
  *(&v30 + 1) = v10;
  *&v31 = v9;
  *(&v31 + 1) = v11;
  swift_beginAccess();
  v15 = *(v12 + 16);

  sub_1C0514AC4(&v28, v27);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v12 + 16) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1C0514F9C(0, *(v15 + 2) + 1, 1, v15);
    *(v12 + 16) = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1C0514F9C((v17 > 1), v18 + 1, 1, v15);
  }

  *(v15 + 2) = v18 + 1;
  v19 = &v15[64 * v18];
  v20 = v28;
  v21 = v29;
  v22 = v31;
  *(v19 + 4) = v30;
  *(v19 + 5) = v22;
  *(v19 + 2) = v20;
  *(v19 + 3) = v21;
  *(v12 + 16) = v15;
  swift_endAccess();
  v23 = v29;
  *a4 = v28;
  a4[1] = v23;
  result = *&v30;
  v25 = v31;
  a4[2] = v30;
  a4[3] = v25;
  return result;
}

double Node.addEntitySpan(entitySpan:)(__int128 *a1)
{
  v2 = a1[9];
  v32 = a1[8];
  v33 = v2;
  v34[0] = a1[10];
  *(v34 + 9) = *(a1 + 169);
  v3 = a1[5];
  v28 = a1[4];
  v29 = v3;
  v4 = a1[7];
  v30 = a1[6];
  v31 = v4;
  v5 = a1[1];
  v24 = *a1;
  v25 = v5;
  v6 = a1[3];
  v26 = a1[2];
  v27 = v6;
  v7 = *(v1 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v8 = *(v7 + 120);
  sub_1C0521E78(&v24, v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 120) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1C0522E00(0, *(v8 + 2) + 1, 1, v8);
    *(v7 + 120) = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1C0522E00((v10 > 1), v11 + 1, 1, v8);
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[192 * v11];
  v13 = v24;
  v14 = v25;
  v15 = v27;
  *(v12 + 4) = v26;
  *(v12 + 5) = v15;
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  v16 = v28;
  v17 = v29;
  v18 = v31;
  *(v12 + 8) = v30;
  *(v12 + 9) = v18;
  *(v12 + 6) = v16;
  *(v12 + 7) = v17;
  v19 = v32;
  v20 = v33;
  v21 = v34[0];
  *(v12 + 201) = *(v34 + 9);
  *(v12 + 11) = v20;
  *(v12 + 12) = v21;
  *(v12 + 10) = v19;
  *(v7 + 120) = v8;
  swift_endAccess();

  return result;
}

uint64_t Node.hashValue.getter()
{
  v3 = *v0;
  sub_1C095DFEC();
  Node.hash(into:)(v2);
  return sub_1C095E03C();
}

uint64_t sub_1C06748AC()
{
  v3 = *v0;
  sub_1C095DFEC();
  Node.hash(into:)(v2);
  return sub_1C095E03C();
}

uint64_t sub_1C06748FC(uint64_t a1)
{
  v4 = *v1;
  sub_1C095DFEC();
  Node.hash(into:)(v3);
  return sub_1C095E03C();
}

uint64_t _s12SiriOntology4NodeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  swift_unownedRetainStrong();
  v4 = v2[7];

  swift_unownedRetainStrong();
  v5 = v3[7];

  if (v4 == v5 && (swift_unownedRetainStrong(), v7 = v2[8], v6 = v2[9], v9 = v2[10], v8 = v2[11], v10 = v2[12], , , , , v27[0] = v7, v27[1] = v6, v27[2] = v9, v27[3] = v8, v27[4] = v10, swift_unownedRetainStrong(), v12 = v3[8], v11 = v3[9], v14 = v3[10], v13 = v3[11], v15 = v3[12], , , , , v26[0] = v12, v26[1] = v11, v26[2] = v14, v26[3] = v13, v26[4] = v15, LOBYTE(v11) = sub_1C051D4D0(v27, v26), , , , , , , (v11 & 1) != 0) && (swift_unownedRetainStrong(), swift_beginAccess(), v16 = v2[13], , , swift_unownedRetainStrong(), swift_beginAccess(), v17 = v3[13], , , v18 = sub_1C055AB4C(v16, v17), , , (v18 & 1) != 0) && (swift_unownedRetainStrong(), v19 = v2[14], , , swift_unownedRetainStrong(), v20 = v3[14], , , v21 = sub_1C055ACCC(v19, v20), , , (v21 & 1) != 0))
  {
    swift_unownedRetainStrong();
    swift_beginAccess();
    v22 = v2[15];

    swift_unownedRetainStrong();
    swift_beginAccess();
    v23 = v3[15];

    v24 = sub_1C055ADC8(v22, v23);
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

unint64_t sub_1C0674BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE19158;
  if (!qword_1EBE19158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE19158);
  }

  return result;
}

uint64_t sub_1C0674C44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C0674C8C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1C0674CD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1C0674D1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_1C0674D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE19160;
  if (!qword_1EBE19160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE19160);
  }

  return result;
}

unint64_t sub_1C0674DD8()
{
  result = qword_1EBE19168;
  if (!qword_1EBE19168)
  {
    type metadata accessor for NodeRef();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE19168);
  }

  return result;
}

BOOL sub_1C0674E2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      if (a2)
      {
        if (a5)
        {
          return 1;
        }
      }

      else if (!(a5 & 1 | (a1 != a4)))
      {
        return 1;
      }
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  if (!a2)
  {
    return !a5;
  }

  if (!a5)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return (sub_1C095DF3C() & 1) != 0;
}

uint64_t sub_1C0674EC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  if (v2 == 255)
  {
    if (v3 == 255)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  if (v3 == 255)
  {
    goto LABEL_15;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (v2)
  {
    if (v3)
    {
      if (v5)
      {
        if (!v7)
        {
          goto LABEL_15;
        }

        if (v4 != v6 || v5 != v7)
        {
          v8 = a1;
          v9 = a2;
          v10 = sub_1C095DF3C();
          a2 = v9;
          v11 = v10;
          a1 = v8;
          if ((v11 & 1) == 0)
          {
            goto LABEL_15;
          }
        }
      }

      else if (v7)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

LABEL_15:
    v20 = 0;
    return v20 & 1;
  }

  if (v3)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v7 & 1 | (v4 != v6))
  {
    goto LABEL_15;
  }

LABEL_12:
  if (*(a1 + 56) != *(a2 + 56))
  {
    goto LABEL_15;
  }

  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  v15 = *(a1 + 96);
  v23[0] = *(a1 + 64);
  v23[1] = v12;
  v23[2] = v13;
  v23[3] = v14;
  v23[4] = v15;
  v16 = *(a2 + 72);
  v17 = *(a2 + 80);
  v18 = *(a2 + 88);
  v19 = *(a2 + 96);
  v22[0] = *(a2 + 64);
  v22[1] = v16;
  v22[2] = v17;
  v22[3] = v18;
  v22[4] = v19;

  v20 = sub_1C051D4D0(v23, v22);

  return v20 & 1;
}

void static Kind.DefinedValue.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "DefinedValue");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t Name.type.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

Swift::String __swiftcall Name.toString()()
{
  v1 = *v0;
  v2 = v0[1];
  v6 = v0[2];
  v7 = v0[3];

  MEMORY[0x1C68DD690](95, 0xE100000000000000);
  MEMORY[0x1C68DD690](v1, v2);
  v3 = v6;
  v4 = v7;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_1C067518C()
{
  if (qword_1ED5D7C68 != -1)
  {
    swift_once();
  }

  qword_1EBE19170 = qword_1ED5D7C70;
  *algn_1EBE19178 = *algn_1ED5D7C78;
  qword_1EBE19180 = qword_1ED5D7C80;
  unk_1EBE19188 = unk_1ED5D7C88;
  qword_1EBE19190 = qword_1ED5D7C90;
}

uint64_t static GraphConstants.Root.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBE15670 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_1EBE19178;
  v2 = qword_1EBE19180;
  v3 = unk_1EBE19188;
  v4 = qword_1EBE19190;
  *a1 = qword_1EBE19170;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

uint64_t sub_1C06752B4()
{
  if (qword_1ED5BD000 != -1)
  {
    swift_once();
  }

  qword_1EBE19198 = qword_1ED5BD008;
  unk_1EBE191A0 = unk_1ED5BD010;
  qword_1EBE191A8 = qword_1ED5BD018;
  unk_1EBE191B0 = unk_1ED5BD020;
  qword_1EBE191B8 = qword_1ED5BD028;
}

uint64_t static GraphConstants.TaskEdgeName.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBE15678 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EBE191A0;
  v2 = qword_1EBE191A8;
  v3 = unk_1EBE191B0;
  v4 = qword_1EBE191B8;
  *a1 = qword_1EBE19198;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

uint64_t sub_1C06753DC()
{
  if (qword_1EBE155F8 != -1)
  {
    swift_once();
  }

  qword_1EBE191C0 = qword_1EBE17F68;
  *algn_1EBE191C8 = unk_1EBE17F70;
  qword_1EBE191D0 = qword_1EBE17F78;
  unk_1EBE191D8 = unk_1EBE17F80;
  qword_1EBE191E0 = qword_1EBE17F88;
}

uint64_t static GraphConstants.EntityEdgeName.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBE15680 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_1EBE191C8;
  v2 = qword_1EBE191D0;
  v3 = unk_1EBE191D8;
  v4 = qword_1EBE191E0;
  *a1 = qword_1EBE191C0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

uint64_t sub_1C0675504()
{
  if (qword_1EBE15608 != -1)
  {
    swift_once();
  }

  qword_1EBE191E8 = qword_1EBE17FB8;
  unk_1EBE191F0 = qword_1EBE17FC0;
  qword_1EBE191F8 = qword_1EBE17FC8;
  unk_1EBE19200 = qword_1EBE17FD0;
  qword_1EBE19208 = qword_1EBE17FD8;
}

uint64_t static GraphConstants.Operand.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBE15688 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EBE191F0;
  v2 = qword_1EBE191F8;
  v3 = unk_1EBE19200;
  v4 = qword_1EBE19208;
  *a1 = qword_1EBE191E8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

uint64_t sub_1C067562C()
{
  if (qword_1ED5D7CA0 != -1)
  {
    swift_once();
  }

  xmmword_1EBE19210 = xmmword_1ED5D7CA8;
  xmmword_1EBE19220 = xmmword_1ED5D7CB8;
  qword_1EBE19230 = qword_1ED5D7CC8;
}

uint64_t static GraphConstants.PrimitiveString.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE15690 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *(&xmmword_1EBE19210 + 1);
  v2 = xmmword_1EBE19220;
  v3 = qword_1EBE19230;
  *a1 = xmmword_1EBE19210;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
}

uint64_t sub_1C0675754()
{
  if (qword_1ED5BDED8 != -1)
  {
    swift_once();
  }

  xmmword_1EBE19238 = xmmword_1ED5BDEE0;
  xmmword_1EBE19248 = xmmword_1ED5BDEF0;
  qword_1EBE19258 = qword_1ED5BDF00;
}

uint64_t static GraphConstants.PrimitiveInteger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE15698 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *(&xmmword_1EBE19238 + 1);
  v2 = xmmword_1EBE19248;
  v3 = qword_1EBE19258;
  *a1 = xmmword_1EBE19238;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
}

uint64_t Node.usoIdentifiers.getter()
{
  v1 = *(v0 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v2 = *(v1 + 104);

  return v2;
}

uint64_t Node.usoIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  *(v3 + 104) = a1;

  swift_unownedRetain();

  return swift_unownedRelease();
}

void (*Node.usoIdentifiers.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 80) = v1;
  v5 = *(v1 + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v6 = *(v5 + 104);

  *(v4 + 72) = v6;
  return sub_1C0675A08;
}

void sub_1C0675A08(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  v5 = *(*(*a1 + 80) + 8);
  swift_unownedRetainStrong();
  swift_beginAccess();
  *(v5 + 104) = v4;
  if (a2)
  {
    swift_bridgeObjectRetain_n();

    swift_unownedRetain();

    swift_unownedRelease();
  }

  else
  {

    swift_unownedRetain();

    swift_unownedRelease();
  }

  free(v3);
}

void static UsoProtobufConversionUtils.getUsoGraphFromProtobufGraph(protobufGraph:vocabManager:)(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C0675BBC(a1, v6);

  sub_1C0798000(v6, a2);
}

uint64_t sub_1C0675BBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static UsoProtobufConversionUtils.getProtoGraphFromUsoGraph(graph:vocabManager:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = Graph.protobufGraphSiriNl(vocabManager:)(a1, a2);
  if (!v2)
  {
    v5 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
    return (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
  }

  return result;
}

void *UsoEntityBuilder_uso_unknown_entity.deinit()
{

  return v0;
}

uint64_t UsoEntityBuilder_uso_unknown_entity.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C0675D64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0xD000000000000010, 0x80000001C09B7540, (v2 + 152), a1, a2, &qword_1EBE1E230, &qword_1C0993170);
  return swift_endAccess();
}

uint64_t sub_1C0675E38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x6974636165526F74, 0xEE00657079546E6FLL, (v2 + 152), a1, a2, &qword_1EBE1E230, &qword_1C0993170);
  return swift_endAccess();
}

uint64_t sub_1C0675F00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 152);
  if (!*(v5 + 16))
  {
    goto LABEL_16;
  }

  v6 = sub_1C0516A8C(a1, a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_15;
  }

  v8 = *(*(v5 + 56) + 8 * v6);

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_15:

    goto LABEL_16;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1C68DDAD0](0, v8);
LABEL_8:

    if (v10)
    {
      type metadata accessor for UsoPrimitiveStringBuilder();
      if (swift_dynamicCastClass() && (, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90), swift_dynamicCast()))
      {
        v11 = v12;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_17;
    }

LABEL_16:
    v11 = 0;
LABEL_17:

    return v11;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0676090(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  v7 = *(v3 + 152);
  if (!*(v7 + 16))
  {
    goto LABEL_12;
  }

  v8 = sub_1C0516A8C(a1, a2);
  if ((v9 & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = *(*(v7 + 56) + 8 * v8);

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_11:

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1C68DDAD0](0, v10);
    goto LABEL_8;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v10 + 32);

LABEL_8:

LABEL_13:
    v13 = a3(v12);

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t UsoTaskBuilder_ReferenceFromReactionTypeToReactionType_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000027;
  *(v0 + 64) = 0x80000001C09E4330;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceFromReactionTypeToReactionType_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000027;
  *(v0 + 64) = 0x80000001C09E4330;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceVideoFilter_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000014;
  *(v0 + 64) = 0x80000001C09E4360;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceVideoFilter_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000014;
  *(v0 + 64) = 0x80000001C09E4360;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C067650C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x7265626D756ELL, 0xE600000000000000, (v2 + 152), a1, a2, &qword_1EBE1E1F8, &qword_1C0993130);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceNumberTrigger_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000016;
  *(v0 + 64) = 0x80000001C09E4380;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceNumberTrigger_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000016;
  *(v0 + 64) = 0x80000001C09E4380;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C0676750(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x656C69666F7270, 0xE700000000000000, (v2 + 152), a1, a2, &qword_1EBE1DE18, &qword_1C0992CD0);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceProfile_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000010;
  *(v0 + 64) = 0x80000001C09E43A0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceProfile_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000010;
  *(v0 + 64) = 0x80000001C09E43A0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C06769A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x6E6F697463616572, 0xEC00000065707954, (v2 + 152), a1, a2, &qword_1EBE1E230, &qword_1C0993170);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceReactionType_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000015;
  *(v0 + 64) = 0x80000001C09E43C0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceReactionType_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000015;
  *(v0 + 64) = 0x80000001C09E43C0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C0676BFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x754474657366666FLL, 0xEE006E6F69746172, (v2 + 152), a1, a2, &qword_1EBE1E188, &unk_1C09A4F60);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceControlOffsetDuration_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001ELL;
  *(v0 + 64) = 0x80000001C09E43E0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceControlOffsetDuration_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001ELL;
  *(v0 + 64) = 0x80000001C09E43E0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C0676E58(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x697254746E657665, 0xEC00000072656767, (v2 + 152), a1, a2, &qword_1EBE1E250, &qword_1C0993198);
  return swift_endAccess();
}

uint64_t sub_1C0676F14(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4AE0(0x6E65697069636572, 0xEA00000000007374, (v2 + 152), a1, a2, &qword_1EBE172B8, &unk_1C09A4F40);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_RecipientsEventTrigger_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000016;
  *(v0 + 64) = 0x80000001C09E4400;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_RecipientsEventTrigger_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000016;
  *(v0 + 64) = 0x80000001C09E4400;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceTrigger_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000010;
  *(v0 + 64) = 0x80000001C09E4420;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceTrigger_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000010;
  *(v0 + 64) = 0x80000001C09E4420;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C0677420(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x6D6572757361656DLL, 0xEF74696E55746E65, (v2 + 152), a1, a2, &qword_1EBE1E0F8, &qword_1C0993020);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceMeasurementUnit_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000018;
  *(v0 + 64) = 0x80000001C09E4440;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceMeasurementUnit_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000018;
  *(v0 + 64) = 0x80000001C09E4440;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferencePhotoCollectionFilter_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001ELL;
  *(v0 + 64) = 0x80000001C09E4460;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferencePhotoCollectionFilter_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001ELL;
  *(v0 + 64) = 0x80000001C09E4460;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C06777B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C0970C90;
  type metadata accessor for UsoPrimitiveStringBuilder();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  v7[5] = a1;
  v7[6] = a2;
  v7[2] = v8;
  v7[3] = v8;
  v7[4] = v8;
  *(v6 + 32) = v7;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + 152);
  *(v3 + 152) = 0x8000000000000000;
  sub_1C051D194(v6, 0x676E69727473, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  *(v3 + 152) = v11;
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceStringTrigger_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000016;
  *(v0 + 64) = 0x80000001C09E4480;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceStringTrigger_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000016;
  *(v0 + 64) = 0x80000001C09E4480;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferencePhotoMemoryFilter_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001ALL;
  *(v0 + 64) = 0x80000001C09E44A0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferencePhotoMemoryFilter_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001ALL;
  *(v0 + 64) = 0x80000001C09E44A0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferencePhotoTag_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000011;
  *(v0 + 64) = 0x80000001C09E44C0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferencePhotoTag_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000011;
  *(v0 + 64) = 0x80000001C09E44C0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceSlideshowFilter_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000018;
  *(v0 + 64) = 0x80000001C09E44E0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceSlideshowFilter_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000018;
  *(v0 + 64) = 0x80000001C09E44E0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceDurationTrigger_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000018;
  *(v0 + 64) = 0x80000001C09E4500;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceDurationTrigger_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000018;
  *(v0 + 64) = 0x80000001C09E4500;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceTargetSelect_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000015;
  *(v0 + 64) = 0x80000001C09E4520;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceTargetSelect_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000015;
  *(v0 + 64) = 0x80000001C09E4520;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C06781FC(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4AE0(0x65506E6564646968, 0xEC000000656C706FLL, (v2 + 152), a1, a2, &qword_1EBE172B8, &unk_1C09A4F40);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_RecipientsHiddenPeople_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000016;
  *(v0 + 64) = 0x80000001C09E4540;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_RecipientsHiddenPeople_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000016;
  *(v0 + 64) = 0x80000001C09E4540;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C06784C0(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4AE0(0x656C706F6570, 0xE600000000000000, (v2 + 152), a1, a2, &qword_1EBE172B8, &unk_1C09A4F40);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceSetPeople_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000012;
  *(v0 + 64) = 0x80000001C09E4560;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceSetPeople_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000012;
  *(v0 + 64) = 0x80000001C09E4560;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C06786E8(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4AE0(0x73676E6974746573, 0xE800000000000000, (v2 + 152), a1, a2, &qword_1EBE172A8, &qword_1C09931B0);
  return swift_endAccess();
}

uint64_t sub_1C06787E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6)
{
  v12 = swift_allocObject();
  _s12SiriOntology14UsoTaskBuilderC16baseEntityString04verbH00I4Name06entityJ0ACSS_SSSgAA0J0VAJtcfc_0(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t sub_1C067889C(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4AE0(0x69746E4572657375, 0xEC00000073656974, (v2 + 152), a1, a2, &qword_1EBE172C8, &qword_1C09931D0);
  return swift_endAccess();
}

void *sub_1C06789CC()
{
  swift_beginAccess();
  v1 = *(v0 + 152);

  v2 = sub_1C06DA494(0xD000000000000013, 0x80000001C09B7560, v1);

  return v2;
}

uint64_t sub_1C0678A48(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4AE0(0xD000000000000013, 0x80000001C09B7560, (v2 + 152), a1, a2, &qword_1EBE17298, &qword_1C0970A88);
  return swift_endAccess();
}

uint64_t sub_1C0678B14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0xD000000000000010, 0x80000001C09B7580, (v2 + 152), a1, a2, &qword_1EBE1DBC8, &qword_1C09929F8);
  return swift_endAccess();
}

uint64_t sub_1C0678BDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x656D695465746164, 0xE800000000000000, (v2 + 152), a1, a2, &qword_1EBE170C8, &qword_1C09708A0);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferencePhotoFilter_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000014;
  *(v0 + 64) = 0x80000001C09E4580;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferencePhotoFilter_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000014;
  *(v0 + 64) = 0x80000001C09E4580;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C0678EA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x68706172676F6567, 0xEE00616572416369, (v2 + 152), a1, a2, &qword_1EBE1E268, &qword_1C09931B8);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceGeographicArea_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000017;
  *(v0 + 64) = 0x80000001C09E45A0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceGeographicArea_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000017;
  *(v0 + 64) = 0x80000001C09E45A0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferencePhotoCollection_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000018;
  *(v0 + 64) = 0x80000001C09E45C0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferencePhotoCollection_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000018;
  *(v0 + 64) = 0x80000001C09E45C0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C0679288(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x64616F6C796170, 0xE700000000000000, (v2 + 152), a1, a2, &qword_1EBE1DE50, &unk_1C0992D08);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceVoiceCommandPayload_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001CLL;
  *(v0 + 64) = 0x80000001C09E45E0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceVoiceCommandPayload_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001CLL;
  *(v0 + 64) = 0x80000001C09E45E0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C0679548(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x72656767697274, 0xE700000000000000, (v2 + 152), a1, a2, &qword_1EBE1E250, &qword_1C0993198);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceControl_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000010;
  *(v0 + 64) = 0x80000001C09E4600;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceControl_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000010;
  *(v0 + 64) = 0x80000001C09E4600;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C067979C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x656D695465746164, 0xED000065676E6152, (v2 + 152), a1, a2, &qword_1EBE1E278, &qword_1C09931C8);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceDateTimeRangeTrigger_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001DLL;
  *(v0 + 64) = 0x80000001C09E4620;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceDateTimeRangeTrigger_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001DLL;
  *(v0 + 64) = 0x80000001C09E4620;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C0679A70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x6D6572757361656DLL, 0xEB00000000746E65, (v2 + 152), a1, a2, &qword_1EBE1E208, &qword_1C0993140);
  return swift_endAccess();
}

uint64_t UsoTaskBuilder_ReferenceMeasurementTrigger_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001BLL;
  *(v0 + 64) = 0x80000001C09E4640;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceMeasurementTrigger_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD00000000000001BLL;
  *(v0 + 64) = 0x80000001C09E4640;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferencePaymentSortKey_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000017;
  *(v0 + 64) = 0x80000001C09E4660;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferencePaymentSortKey_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000017;
  *(v0 + 64) = 0x80000001C09E4660;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C0679ECC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x6E6F697461727564, 0xE800000000000000, (v2 + 152), a1, a2, &qword_1EBE1E188, &unk_1C09A4F60);
  return swift_endAccess();
}

uint64_t sub_1C0679F50(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  v7 = *(v3 + 152);

  v8 = a3(a1, a2, v7);

  return v8;
}

uint64_t UsoTaskBuilder_ReferenceControlDuration_uso_unknown_entity.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000018;
  *(v0 + 64) = 0x80000001C09E4680;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ReferenceControlDuration_uso_unknown_entity.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09E4310;
  *(v0 + 56) = 0xD000000000000018;
  *(v0 + 64) = 0x80000001C09E4680;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t _s12SiriOntology14UsoTaskBuilderC16baseEntityString04verbH0ACSS_SSSgtcfC_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *(v8 + 64) = a4;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0u;
  v9 = MEMORY[0x1E69E7CC0];
  *(v8 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v8 + 16) = v9;
  *(v8 + 24) = v9;
  *(v8 + 32) = v9;
  return v8;
}

uint64_t _s12SiriOntology14UsoTaskBuilderC16baseEntityString04verbH00I4Name06entityJ0ACSS_SSSgAA0J0VAJtcfc_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6)
{
  v7 = *a5;
  v8 = a5[1];
  v9 = *(a5 + 4);
  v10 = *a6;
  v11 = a6[1];
  v12 = *(a6 + 4);
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 56) = a3;
  *(v6 + 64) = a4;
  *(v6 + 72) = v7;
  *(v6 + 88) = v8;
  *(v6 + 104) = v9;
  *(v6 + 112) = v10;
  *(v6 + 128) = v11;
  *(v6 + 144) = v12;
  v13 = MEMORY[0x1E69E7CC0];
  *(v6 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v6 + 16) = v13;
  *(v6 + 24) = v13;
  *(v6 + 32) = v13;
  return v6;
}

uint64_t sub_1C067A284(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x746E756F6D61, 0xE600000000000000, (v2 + 152), a1, a2, &qword_1EBE1E1F8, &qword_1C0993130);
  return swift_endAccess();
}

uint64_t sub_1C067A350(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0x656D7473756A6461, 0xEE0065707954746ELL, (v2 + 152), a1, a2, &qword_1EBE1DF68, &qword_1C0992E58);
  return swift_endAccess();
}

uint64_t sub_1C067A460(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C052569C(0xD000000000000013, 0x80000001C09B75A0, (v2 + 152), a1, a2, &qword_1EBE1DF98, &qword_1C0992E88);
  return swift_endAccess();
}

uint64_t sub_1C067A4F4(__n128 a1)
{
  v1 = swift_allocObject();
  *(v1 + 40) = 0xD000000000000012;
  *(v1 + 48) = 0x80000001C09E4310;
  *(v1 + 56) = a1;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v1 + 16) = v2;
  *(v1 + 24) = v2;
  *(v1 + 32) = v2;
  return v1;
}

uint64_t sub_1C067A598(__n128 a1)
{
  *(v1 + 40) = 0xD000000000000012;
  *(v1 + 48) = 0x80000001C09E4310;
  *(v1 + 56) = a1;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v1 + 16) = v2;
  *(v1 + 24) = v2;
  *(v1 + 32) = v2;
  return v1;
}

uint64_t UsoTaskBuilder_noVerb_common_EventTrigger.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_EventTrigger.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_EventTrigger.init()()
{
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x80000001C09CD9C0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976140;
  *(v0 + 120) = 0x80000001C09CD9C0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_commonTimer_TimerAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_commonTimer_TimerAttribute.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_commonTimer_TimerAttribute.init()()
{
  *(v0 + 40) = 0xD00000000000001ALL;
  *(v0 + 48) = 0x80000001C09CD9E0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976110;
  *(v0 + 120) = 0x80000001C09CD9E0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_VoiceTrigger.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_VoiceTrigger.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_VoiceTrigger.init()()
{
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x80000001C09CDA00;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976140;
  *(v0 + 120) = 0x80000001C09CDA00;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_preview_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_preview_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_preview_common_AppEntity.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDA40;
  *(v0 + 56) = xmmword_1C0982A10;
  *(v0 + 72) = 0xD000000000000011;
  *(v0 + 80) = 0x80000001C09CDA20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDA40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_create_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_create_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_paste_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_paste_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_paste_common_AppEntity.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDA40;
  *(v0 + 56) = xmmword_1C0982A40;
  *(v0 + 72) = 0xD000000000000015;
  *(v0 + 80) = 0x80000001C09CDA60;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDA40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_AppEntity.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDA40;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDA40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_update_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_AppEntity.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDA40;
  *(v0 + 56) = xmmword_1C0982A60;
  *(v0 + 72) = 0xD000000000000016;
  *(v0 + 80) = 0x80000001C09CDAA0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDA40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_skipForward_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_skipForward_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_skipForward_common_AppEntity.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDA40;
  *(v0 + 56) = xmmword_1C0982A70;
  *(v0 + 72) = 0xD000000000000015;
  *(v0 + 80) = 0x80000001C09CDAC0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDA40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_skipBackward_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_skipBackward_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_skipBackward_common_AppEntity.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDA40;
  *(v0 + 56) = xmmword_1C0982A80;
  *(v0 + 72) = 0xD000000000000016;
  *(v0 + 80) = 0x80000001C09CDAE0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDA40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_enterMarkup_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_enterMarkup_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_enterMarkup_common_AppEntity.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDA40;
  *(v0 + 56) = xmmword_1C0982A90;
  *(v0 + 72) = 0xD000000000000015;
  *(v0 + 80) = 0x80000001C09CDB00;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDA40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_copy_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_copy_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_like_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_like_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_unlike_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_unlike_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_unlike_common_AppEntity.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDA40;
  *(v0 + 56) = xmmword_1C0982AE0;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDB20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDA40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_close_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_close_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_delete_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_AppEntity.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDA40;
  *(v0 + 56) = xmmword_1C0982B10;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDB40;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDA40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_cut_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_cut_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_exitMarkup_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_exitMarkup_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_exitMarkup_common_AppEntity.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDA40;
  *(v0 + 56) = xmmword_1C0982B40;
  *(v0 + 72) = 0xD000000000000014;
  *(v0 + 80) = 0x80000001C09CDB60;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDA40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_adjust_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_adjust_common_AppEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_adjust_common_AppEntity.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDA40;
  *(v0 + 56) = xmmword_1C0982B50;
  *(v0 + 72) = 0xD000000000000011;
  *(v0 + 80) = 0x80000001C09CDB80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDA40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_open_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_open_common_AppEntity.init()();
  return v0;
}

uint64_t sub_1C067C0B0(uint64_t a1, __n128 a2, __n128 a3)
{
  *(v3 + 40) = 0xD000000000000010;
  *(v3 + 48) = 0x80000001C09CDA40;
  *(v3 + 56) = a2;
  *(v3 + 72) = a3;
  *(v3 + 88) = xmmword_1C0975360;
  *(v3 + 104) = xmmword_1C0976090;
  *(v3 + 120) = 0x80000001C09CDA40;
  *(v3 + 128) = xmmword_1C0982A00;
  *(v3 + 144) = 0;

  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = v4;
  *(v3 + 24) = v4;

  *(v3 + 32) = v4;
  return v3;
}

uint64_t UsoTaskBuilder_noVerb_common_DurationComponent.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_DurationComponent.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_DurationComponent.init()()
{
  *(v0 + 40) = 0xD000000000000018;
  *(v0 + 48) = 0x80000001C09CDBA0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976170;
  *(v0 + 120) = 0x80000001C09CDBA0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_PhoneCallMode.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_PhoneCallMode.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_PhoneCallMode.init()()
{
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x80000001C09CDBC0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976150;
  *(v0 + 120) = 0x80000001C09CDBC0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_appleContact_ContactAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_appleContact_ContactAttribute.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_appleContact_ContactAttribute.init()()
{
  *(v0 + 40) = 0xD00000000000001DLL;
  *(v0 + 48) = 0x80000001C09CDBE0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760C0;
  *(v0 + 120) = 0x80000001C09CDBE0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_PersonProperty.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_PersonProperty.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_PersonProperty.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_PersonProperty.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_PersonProperty.init()()
{
  *(v0 + 40) = 0xD000000000000015;
  *(v0 + 48) = 0x80000001C09CDC00;
  *(v0 + 56) = xmmword_1C0982B80;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001C09CDC20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976160;
  *(v0 + 120) = 0x80000001C09CDC00;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_PersonProperty.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_PersonProperty.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_PersonProperty.init()()
{
  *(v0 + 40) = 0xD000000000000015;
  *(v0 + 48) = 0x80000001C09CDC00;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976160;
  *(v0 + 120) = 0x80000001C09CDC00;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_state_common_PersonProperty.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_state_common_PersonProperty.init()();
  return v0;
}

uint64_t sub_1C067CAB0(uint64_t a1, __n128 a2, __n128 a3)
{
  *(v3 + 40) = 0xD000000000000015;
  *(v3 + 48) = 0x80000001C09CDC00;
  *(v3 + 56) = a2;
  *(v3 + 72) = a3;
  *(v3 + 88) = xmmword_1C0975360;
  *(v3 + 104) = xmmword_1C0976160;
  *(v3 + 120) = 0x80000001C09CDC00;
  *(v3 + 128) = xmmword_1C0982A00;
  *(v3 + 144) = 0;

  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = v4;
  *(v3 + 24) = v4;

  *(v3 + 32) = v4;
  return v3;
}

uint64_t UsoTaskBuilder_justify_common_SiriOpinion.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_justify_common_SiriOpinion.init()();
  return v0;
}

uint64_t UsoTaskBuilder_justify_common_SiriOpinion.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09CDC60;
  *(v0 + 56) = xmmword_1C0982BB0;
  *(v0 + 72) = 0xD000000000000011;
  *(v0 + 80) = 0x80000001C09CDC40;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760F0;
  *(v0 + 120) = 0x80000001C09CDC60;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_SiriOpinion.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_SiriOpinion.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_SiriOpinion.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09CDC60;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760F0;
  *(v0 + 120) = 0x80000001C09CDC60;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_SiriOpinion.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_SiriOpinion.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_SiriOpinion.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09CDC60;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760F0;
  *(v0 + 120) = 0x80000001C09CDC60;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_SiriOpinion.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_SiriOpinion.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_SiriOpinion.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09CDC60;
  *(v0 + 56) = xmmword_1C0982B80;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001C09CDC20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760F0;
  *(v0 + 120) = 0x80000001C09CDC60;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_TemperatureComponent.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_TemperatureComponent.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_TemperatureComponent.init()()
{
  *(v0 + 40) = 0xD00000000000001BLL;
  *(v0 + 48) = 0x80000001C09CDC80;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976060;
  *(v0 + 120) = 0x80000001C09CDC80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_SearchObject.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_SearchObject.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_SearchObject.init()()
{
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x80000001C09CDCA0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976140;
  *(v0 + 120) = 0x80000001C09CDCA0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_update_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_update_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_Voicemail.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDCC0;
  *(v0 + 56) = xmmword_1C0982A60;
  *(v0 + 72) = 0xD000000000000016;
  *(v0 + 80) = 0x80000001C09CDAA0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDCC0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_call_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_call_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_previous_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_previous_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_previous_common_Voicemail.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDCC0;
  *(v0 + 56) = xmmword_1C0982BE0;
  *(v0 + 72) = 0xD000000000000012;
  *(v0 + 80) = 0x80000001C09CDCE0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDCC0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_stop_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_stop_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_play_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_play_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_continue_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_continue_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_continue_common_Voicemail.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDCC0;
  *(v0 + 56) = xmmword_1C0982C30;
  *(v0 + 72) = 0xD000000000000012;
  *(v0 + 80) = 0x80000001C09CDD00;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDCC0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_request_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_Voicemail.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDCC0;
  *(v0 + 56) = xmmword_1C0982C40;
  *(v0 + 72) = 0xD000000000000017;
  *(v0 + 80) = 0x80000001C09CDD20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDCC0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_Voicemail.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDCC0;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDCC0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_skip_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_skip_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_read_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_read_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_delete_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_Voicemail.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDCC0;
  *(v0 + 56) = xmmword_1C0982B10;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDB40;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDCC0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_repeat_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_repeat_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_repeat_common_Voicemail.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDCC0;
  *(v0 + 56) = xmmword_1C0982C90;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDD40;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDCC0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_pause_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_pause_common_Voicemail.init()();
  return v0;
}

uint64_t sub_1C067E490(uint64_t a1, __n128 a2, __n128 a3)
{
  *(v3 + 40) = 0xD000000000000010;
  *(v3 + 48) = 0x80000001C09CDCC0;
  *(v3 + 56) = a2;
  *(v3 + 72) = a3;
  *(v3 + 88) = xmmword_1C0975360;
  *(v3 + 104) = xmmword_1C0976090;
  *(v3 + 120) = 0x80000001C09CDCC0;
  *(v3 + 128) = xmmword_1C0982A00;
  *(v3 + 144) = 0;

  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = v4;
  *(v3 + 24) = v4;

  *(v3 + 32) = v4;
  return v3;
}

uint64_t UsoTaskBuilder_resume_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_resume_common_Voicemail.init()();
  return v0;
}

uint64_t UsoTaskBuilder_resume_common_Voicemail.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CDCC0;
  *(v0 + 56) = xmmword_1C0982CC0;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDD60;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CDCC0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_request_common_RecurringDateTimeRange.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_RecurringDateTimeRange.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_RecurringDateTimeRange.init()()
{
  *(v0 + 40) = 0xD00000000000001DLL;
  *(v0 + 48) = 0x80000001C09CDD80;
  *(v0 + 56) = xmmword_1C0982C40;
  *(v0 + 72) = 0xD000000000000017;
  *(v0 + 80) = 0x80000001C09CDD20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760C0;
  *(v0 + 120) = 0x80000001C09CDD80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_RecurringDateTimeRange.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_RecurringDateTimeRange.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_RecurringDateTimeRange.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_RecurringDateTimeRange.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_RecurringDateTimeRange.init()()
{
  *(v0 + 40) = 0xD00000000000001DLL;
  *(v0 + 48) = 0x80000001C09CDD80;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760C0;
  *(v0 + 120) = 0x80000001C09CDD80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_RecurringDateTimeRange.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_RecurringDateTimeRange.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_RecurringDateTimeRange.init()()
{
  *(v0 + 40) = 0xD00000000000001DLL;
  *(v0 + 48) = 0x80000001C09CDD80;
  *(v0 + 56) = xmmword_1C0982B80;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001C09CDC20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760C0;
  *(v0 + 120) = 0x80000001C09CDD80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_read_common_RecurringDateTimeRange.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_read_common_RecurringDateTimeRange.init()();
  return v0;
}

uint64_t sub_1C067ECFC(uint64_t a1, __n128 a2, __n128 a3)
{
  *(v3 + 40) = 0xD00000000000001DLL;
  *(v3 + 48) = 0x80000001C09CDD80;
  *(v3 + 56) = a2;
  *(v3 + 72) = a3;
  *(v3 + 88) = xmmword_1C0975360;
  *(v3 + 104) = xmmword_1C09760C0;
  *(v3 + 120) = 0x80000001C09CDD80;
  *(v3 + 128) = xmmword_1C0982A00;
  *(v3 + 144) = 0;

  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = v4;
  *(v3 + 24) = v4;

  *(v3 + 32) = v4;
  return v3;
}

uint64_t UsoTaskBuilder_convert_common_RecurringDateTimeRange.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_convert_common_RecurringDateTimeRange.init()();
  return v0;
}

uint64_t UsoTaskBuilder_convert_common_RecurringDateTimeRange.init()()
{
  *(v0 + 40) = 0xD00000000000001DLL;
  *(v0 + 48) = 0x80000001C09CDD80;
  *(v0 + 56) = xmmword_1C0982CD0;
  *(v0 + 72) = 0xD00000000000001DLL;
  *(v0 + 80) = 0x80000001C09CDDA0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760C0;
  *(v0 + 120) = 0x80000001C09CDD80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_create_common_Workout.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_create_common_Workout.init()();
  return v0;
}

uint64_t UsoTaskBuilder_create_common_Workout.init()()
{
  *(v0 + 40) = xmmword_1C0982CE0;
  *(v0 + 56) = xmmword_1C0982A20;
  *(v0 + 72) = xmmword_1C0982A30;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977680;
  *(v0 + 120) = xmmword_1C0982CF0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Workout.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_Workout.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Workout.init()()
{
  *(v0 + 40) = xmmword_1C0982CE0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977680;
  *(v0 + 120) = xmmword_1C0982CF0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_Workout.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_Workout.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_Workout.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_update_common_Workout.init()();
  return v0;
}

uint64_t UsoTaskBuilder_cancel_common_Workout.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_cancel_common_Workout.init()();
  return v0;
}

uint64_t UsoTaskBuilder_stop_common_Workout.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_stop_common_Workout.init()();
  return v0;
}

uint64_t UsoTaskBuilder_pause_common_Workout.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_pause_common_Workout.init()();
  return v0;
}

uint64_t UsoTaskBuilder_resume_common_Workout.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_resume_common_Workout.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_commonStock_StockAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_commonStock_StockAttribute.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_commonStock_StockAttribute.init()()
{
  *(v0 + 40) = 0xD00000000000001ALL;
  *(v0 + 48) = 0x80000001C09CDE40;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976110;
  *(v0 + 120) = 0x80000001C09CDE40;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_softwareUpdate_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_softwareUpdate_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_softwareUpdate_common_UserEntity.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDE80;
  *(v0 + 56) = xmmword_1C0982D10;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001C09CDE60;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDE80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_request_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_UserEntity.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDE80;
  *(v0 + 56) = xmmword_1C0982C40;
  *(v0 + 72) = 0xD000000000000017;
  *(v0 + 80) = 0x80000001C09CDD20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDE80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_stopPing_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_stopPing_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_stopPing_common_UserEntity.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDE80;
  *(v0 + 56) = xmmword_1C0982D20;
  *(v0 + 72) = 0xD000000000000012;
  *(v0 + 80) = 0x80000001C09CDEA0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDE80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_UserEntity.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDE80;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDE80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_find_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_find_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_getLocation_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_getLocation_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_getLocation_common_UserEntity.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDE80;
  *(v0 + 56) = xmmword_1C0982D50;
  *(v0 + 72) = 0xD000000000000015;
  *(v0 + 80) = 0x80000001C09CDEC0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDE80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_reping_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_reping_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_reping_common_UserEntity.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDE80;
  *(v0 + 56) = xmmword_1C0982D60;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDEE0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDE80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_UserEntity.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDE80;
  *(v0 + 56) = xmmword_1C0982B80;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001C09CDC20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDE80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_ping_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_ping_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_reset_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_reset_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_discoverCapabilities_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_discoverCapabilities_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_discoverCapabilities_common_UserEntity.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDE80;
  *(v0 + 56) = 0xD000000000000014;
  *(v0 + 64) = 0x80000001C09DE280;
  *(v0 + 72) = 0xD00000000000001ELL;
  *(v0 + 80) = 0x80000001C09CDF00;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDE80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_checkLocation_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkLocation_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkLocation_common_UserEntity.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDE80;
  *(v0 + 56) = xmmword_1C0982DB0;
  *(v0 + 72) = 0xD000000000000025;
  *(v0 + 80) = 0x80000001C09CDF20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDE80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_restart_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_restart_common_UserEntity.init()();
  return v0;
}

uint64_t UsoTaskBuilder_restart_common_UserEntity.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDE80;
  *(v0 + 56) = xmmword_1C0982DC0;
  *(v0 + 72) = 0xD000000000000011;
  *(v0 + 80) = 0x80000001C09CDF50;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDE80;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_UserEntity.init()();
  return v0;
}

uint64_t sub_1C0680AE0(uint64_t a1, __n128 a2, __n128 a3)
{
  *(v3 + 40) = 0xD000000000000011;
  *(v3 + 48) = 0x80000001C09CDE80;
  *(v3 + 56) = a2;
  *(v3 + 72) = a3;
  *(v3 + 88) = xmmword_1C0975360;
  *(v3 + 104) = xmmword_1C09761B0;
  *(v3 + 120) = 0x80000001C09CDE80;
  *(v3 + 128) = xmmword_1C0982A00;
  *(v3 + 144) = 0;

  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = v4;
  *(v3 + 24) = v4;

  *(v3 + 32) = v4;
  return v3;
}

uint64_t UsoTaskBuilder_noVerb_common_Religion.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_Religion.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Religion.init()()
{
  *(v0 + 40) = xmmword_1C0982DD0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977C40;
  *(v0 + 120) = xmmword_1C0982DE0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_hear_common_SiriContent.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_hear_common_SiriContent.init()();
  return v0;
}

uint64_t UsoTaskBuilder_tell_common_SiriContent.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_tell_common_SiriContent.init()();
  return v0;
}

uint64_t UsoTaskBuilder_repeat_common_SiriContent.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_repeat_common_SiriContent.init()();
  return v0;
}

uint64_t UsoTaskBuilder_repeat_common_SiriContent.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09CDF70;
  *(v0 + 56) = xmmword_1C0982C90;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDD40;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760F0;
  *(v0 + 120) = 0x80000001C09CDF70;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_SiriContent.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_SiriContent.init()();
  return v0;
}

uint64_t UsoTaskBuilder_unlike_common_SiriContent.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_unlike_common_SiriContent.init()();
  return v0;
}

uint64_t UsoTaskBuilder_unlike_common_SiriContent.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09CDF70;
  *(v0 + 56) = xmmword_1C0982AE0;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDB20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760F0;
  *(v0 + 120) = 0x80000001C09CDF70;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_discoverCapabilities_common_SiriContent.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_discoverCapabilities_common_SiriContent.init()();
  return v0;
}

uint64_t UsoTaskBuilder_discoverCapabilities_common_SiriContent.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09CDF70;
  *(v0 + 56) = 0xD000000000000014;
  *(v0 + 64) = 0x80000001C09DE280;
  *(v0 + 72) = 0xD00000000000001ELL;
  *(v0 + 80) = 0x80000001C09CDF00;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760F0;
  *(v0 + 120) = 0x80000001C09CDF70;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_like_common_SiriContent.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_like_common_SiriContent.init()();
  return v0;
}

uint64_t sub_1C06814D8(uint64_t a1, __n128 a2, __n128 a3)
{
  *(v3 + 40) = 0xD000000000000012;
  *(v3 + 48) = 0x80000001C09CDF70;
  *(v3 + 56) = a2;
  *(v3 + 72) = a3;
  *(v3 + 88) = xmmword_1C0975360;
  *(v3 + 104) = xmmword_1C09760F0;
  *(v3 + 120) = 0x80000001C09CDF70;
  *(v3 + 128) = xmmword_1C0982A00;
  *(v3 + 144) = 0;

  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = v4;
  *(v3 + 24) = v4;

  *(v3 + 32) = v4;
  return v3;
}

uint64_t UsoTaskBuilder_noVerb_common_MonthOfYear.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_MonthOfYear.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_MonthOfYear.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09CDF90;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760F0;
  *(v0 + 120) = 0x80000001C09CDF90;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_PhoneNumber.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_PhoneNumber.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_PhoneNumber.init()()
{
  *(v0 + 40) = 0xD000000000000012;
  *(v0 + 48) = 0x80000001C09CDFB0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760F0;
  *(v0 + 120) = 0x80000001C09CDFB0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_create_common_Clock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_create_common_Clock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_create_common_Clock.init()()
{
  *(v0 + 40) = xmmword_1C0982E30;
  *(v0 + 56) = xmmword_1C0982A20;
  *(v0 + 72) = xmmword_1C0982A30;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977360;
  *(v0 + 120) = xmmword_1C0982E40;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_Clock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_Clock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Clock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_Clock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Clock.init()()
{
  *(v0 + 40) = xmmword_1C0982E30;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977360;
  *(v0 + 120) = xmmword_1C0982E40;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_Clock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_delete_common_Clock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_appleMessage_MessageAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_appleMessage_MessageAttribute.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_appleMessage_MessageAttribute.init()()
{
  *(v0 + 40) = 0xD00000000000001DLL;
  *(v0 + 48) = 0x80000001C09CDFD0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760C0;
  *(v0 + 120) = 0x80000001C09CDFD0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_NoteFolder.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_NoteFolder.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_NoteFolder.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDFF0;
  *(v0 + 56) = xmmword_1C0982B80;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001C09CDC20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDFF0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_NoteFolder.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_NoteFolder.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_NoteFolder.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDFF0;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDFF0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_request_common_NoteFolder.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_NoteFolder.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_NoteFolder.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDFF0;
  *(v0 + 56) = xmmword_1C0982C40;
  *(v0 + 72) = 0xD000000000000017;
  *(v0 + 80) = 0x80000001C09CDD20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDFF0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_update_common_NoteFolder.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_update_common_NoteFolder.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_NoteFolder.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDFF0;
  *(v0 + 56) = xmmword_1C0982A60;
  *(v0 + 72) = 0xD000000000000016;
  *(v0 + 80) = 0x80000001C09CDAA0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDFF0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_create_common_NoteFolder.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_create_common_NoteFolder.init()();
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_NoteFolder.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_delete_common_NoteFolder.init()();
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_NoteFolder.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CDFF0;
  *(v0 + 56) = xmmword_1C0982B10;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDB40;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CDFF0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_NoteFolder.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_NoteFolder.init()();
  return v0;
}

uint64_t sub_1C0682808(uint64_t a1, __n128 a2, __n128 a3)
{
  *(v3 + 40) = 0xD000000000000011;
  *(v3 + 48) = 0x80000001C09CDFF0;
  *(v3 + 56) = a2;
  *(v3 + 72) = a3;
  *(v3 + 88) = xmmword_1C0975360;
  *(v3 + 104) = xmmword_1C09761B0;
  *(v3 + 120) = 0x80000001C09CDFF0;
  *(v3 + 128) = xmmword_1C0982A00;
  *(v3 + 144) = 0;

  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = v4;
  *(v3 + 24) = v4;

  *(v3 + 32) = v4;
  return v3;
}

uint64_t UsoTaskBuilder_noVerb_commonAlarm_AlarmAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_commonAlarm_AlarmAttribute.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_commonAlarm_AlarmAttribute.init()()
{
  *(v0 + 40) = 0xD00000000000001ALL;
  *(v0 + 48) = 0x80000001C09CE010;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976110;
  *(v0 + 120) = 0x80000001C09CE010;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_commonContact_ContactAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_commonContact_ContactAttribute.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_commonContact_ContactAttribute.init()()
{
  *(v0 + 40) = 0xD00000000000001ELL;
  *(v0 + 48) = 0x80000001C09CE030;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976080;
  *(v0 + 120) = 0x80000001C09CE030;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_DeviceProperty.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_DeviceProperty.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_DeviceProperty.init()()
{
  *(v0 + 40) = 0xD000000000000015;
  *(v0 + 48) = 0x80000001C09CE050;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976160;
  *(v0 + 120) = 0x80000001C09CE050;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_MeasurementUnit.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_MeasurementUnit.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_MeasurementUnit.init()()
{
  *(v0 + 40) = 0xD000000000000016;
  *(v0 + 48) = 0x80000001C09CE070;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976120;
  *(v0 + 120) = 0x80000001C09CE070;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_ReminderList.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_ReminderList.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_ReminderList.init()()
{
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x80000001C09CE090;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976140;
  *(v0 + 120) = 0x80000001C09CE090;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_ReminderList.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_ReminderList.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_ReminderList.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_ReminderList.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_ReminderList.init()()
{
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x80000001C09CE090;
  *(v0 + 56) = xmmword_1C0982C40;
  *(v0 + 72) = 0xD000000000000017;
  *(v0 + 80) = 0x80000001C09CDD20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976140;
  *(v0 + 120) = 0x80000001C09CE090;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_ReminderList.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_ReminderList.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_ReminderList.init()()
{
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x80000001C09CE090;
  *(v0 + 56) = xmmword_1C0982B80;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001C09CDC20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976140;
  *(v0 + 120) = 0x80000001C09CE090;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_ReminderList.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_delete_common_ReminderList.init()();
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_ReminderList.init()()
{
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x80000001C09CE090;
  *(v0 + 56) = xmmword_1C0982B10;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDB40;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976140;
  *(v0 + 120) = 0x80000001C09CE090;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_create_common_ReminderList.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_create_common_ReminderList.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_ReminderList.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_update_common_ReminderList.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_ReminderList.init()()
{
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x80000001C09CE090;
  *(v0 + 56) = xmmword_1C0982A60;
  *(v0 + 72) = 0xD000000000000016;
  *(v0 + 80) = 0x80000001C09CDAA0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976140;
  *(v0 + 120) = 0x80000001C09CE090;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_read_common_ReminderList.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_read_common_ReminderList.init()();
  return v0;
}

uint64_t sub_1C06838E4(uint64_t a1, __n128 a2, __n128 a3)
{
  *(v3 + 40) = 0xD000000000000013;
  *(v3 + 48) = 0x80000001C09CE090;
  *(v3 + 56) = a2;
  *(v3 + 72) = a3;
  *(v3 + 88) = xmmword_1C0975360;
  *(v3 + 104) = xmmword_1C0976140;
  *(v3 + 120) = 0x80000001C09CE090;
  *(v3 + 128) = xmmword_1C0982A00;
  *(v3 + 144) = 0;

  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = v4;
  *(v3 + 24) = v4;

  *(v3 + 32) = v4;
  return v3;
}

uint64_t UsoTaskBuilder_noVerb_common_Stock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_Stock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Stock.init()()
{
  *(v0 + 40) = xmmword_1C0982E50;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09777C0;
  *(v0 + 120) = xmmword_1C0982E60;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_create_common_Stock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_create_common_Stock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_create_common_Stock.init()()
{
  *(v0 + 40) = xmmword_1C0982E50;
  *(v0 + 56) = xmmword_1C0982A20;
  *(v0 + 72) = xmmword_1C0982A30;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09777C0;
  *(v0 + 120) = xmmword_1C0982E60;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_read_common_Stock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_read_common_Stock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_read_common_Stock.init()()
{
  *(v0 + 40) = xmmword_1C0982E50;
  *(v0 + 56) = xmmword_1C0982C70;
  *(v0 + 72) = xmmword_1C0982C80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09777C0;
  *(v0 + 120) = xmmword_1C0982E60;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_Stock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_delete_common_Stock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_Stock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_Stock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_Stock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_update_common_Stock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_Stock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_Stock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_Stock.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_Stock.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_AppSection.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_AppSection.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_AppSection.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE0B0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE0B0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_previous_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_previous_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_previous_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982BE0;
  *(v0 + 72) = 0xD000000000000012;
  *(v0 + 80) = 0x80000001C09CDCE0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_redial_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_redial_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_redial_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982E70;
  *(v0 + 72) = 0xD000000000000016;
  *(v0 + 80) = 0x80000001C09CE0F0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_callback_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_callback_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_callback_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982E80;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001C09CE110;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_stop_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_stop_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_hangup_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_hangup_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_hangup_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982E90;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CE130;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_videocall_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_videocall_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_videocall_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982EA0;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CE150;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_join_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_join_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_join_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982EB0;
  *(v0 + 72) = 0xD000000000000014;
  *(v0 + 80) = 0x80000001C09CE170;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_request_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982C40;
  *(v0 + 72) = 0xD000000000000017;
  *(v0 + 80) = 0x80000001C09CDD20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_read_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_read_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_update_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982A60;
  *(v0 + 72) = 0xD000000000000016;
  *(v0 + 80) = 0x80000001C09CDAA0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_skip_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_skip_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_delete_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982B10;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDB40;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_continue_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_continue_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_continue_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982C30;
  *(v0 + 72) = 0xD000000000000012;
  *(v0 + 80) = 0x80000001C09CDD00;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_call_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_call_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_answer_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_answer_common_PhoneCall.init()();
  return v0;
}

uint64_t UsoTaskBuilder_answer_common_PhoneCall.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE0D0;
  *(v0 + 56) = xmmword_1C0982EC0;
  *(v0 + 72) = 0xD000000000000016;
  *(v0 + 80) = 0x80000001C09CE190;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE0D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_ContactAddress.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_ContactAddress.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_ContactAddress.init()()
{
  *(v0 + 40) = 0xD000000000000015;
  *(v0 + 48) = 0x80000001C09CE1B0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976160;
  *(v0 + 120) = 0x80000001C09CE1B0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_LocalisedString.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_LocalisedString.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_LocalisedString.init()()
{
  *(v0 + 40) = 0xD000000000000016;
  *(v0 + 48) = 0x80000001C09CE1D0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976120;
  *(v0 + 120) = 0x80000001C09CE1D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_ProductCategory.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_ProductCategory.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_ProductCategory.init()()
{
  *(v0 + 40) = 0xD000000000000016;
  *(v0 + 48) = 0x80000001C09CE1F0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976120;
  *(v0 + 120) = 0x80000001C09CE1F0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_NumberSign.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_NumberSign.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_NumberSign.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE210;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE210;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_action_common_Utilities.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_action_common_Utilities.init()();
  return v0;
}

uint64_t UsoTaskBuilder_action_common_Utilities.init()()
{
  *(v0 + 40) = 0xD000000000000010;
  *(v0 + 48) = 0x80000001C09CE230;
  *(v0 + 56) = xmmword_1C0982ED0;
  *(v0 + 72) = xmmword_1C0982EE0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976090;
  *(v0 + 120) = 0x80000001C09CE230;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_PersonName.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_PersonName.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_PersonName.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE250;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE250;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_commonNotification_NotificationAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_commonNotification_NotificationAttribute.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_commonNotification_NotificationAttribute.init()()
{
  *(v0 + 40) = 0xD000000000000028;
  *(v0 + 48) = 0x80000001C09CE270;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761D0;
  *(v0 + 120) = 0x80000001C09CE270;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_commonPhoneCall_PhoneCallAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_commonPhoneCall_PhoneCallAttribute.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_commonPhoneCall_PhoneCallAttribute.init()()
{
  *(v0 + 40) = 0xD000000000000022;
  *(v0 + 48) = 0x80000001C09CE2A0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976070;
  *(v0 + 120) = 0x80000001C09CE2A0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_SettingValue.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_SettingValue.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_SettingValue.init()()
{
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x80000001C09CE2D0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976140;
  *(v0 + 120) = 0x80000001C09CE2D0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_learnNameCorrection_common_PersonContact.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_learnNameCorrection_common_PersonContact.init()();
  return v0;
}

uint64_t UsoTaskBuilder_learnNameCorrection_common_PersonContact.init()()
{
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x80000001C09CE320;
  *(v0 + 56) = 0xD000000000000013;
  *(v0 + 64) = 0x80000001C09D96F0;
  *(v0 + 72) = 0xD000000000000023;
  *(v0 + 80) = 0x80000001C09CE2F0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976150;
  *(v0 + 120) = 0x80000001C09CE320;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_read_common_PersonContact.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_read_common_PersonContact.init()();
  return v0;
}

uint64_t UsoTaskBuilder_create_common_PersonContact.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_create_common_PersonContact.init()();
  return v0;
}

uint64_t UsoTaskBuilder_forgetNameCorrection_common_PersonContact.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_forgetNameCorrection_common_PersonContact.init()();
  return v0;
}

uint64_t UsoTaskBuilder_forgetNameCorrection_common_PersonContact.init()()
{
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x80000001C09CE320;
  *(v0 + 56) = 0xD000000000000014;
  *(v0 + 64) = 0x80000001C09D96D0;
  *(v0 + 72) = 0xD00000000000001ELL;
  *(v0 + 80) = 0x80000001C09CE340;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976150;
  *(v0 + 120) = 0x80000001C09CE320;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_PersonContact.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_delete_common_PersonContact.init()();
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_PersonContact.init()()
{
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x80000001C09CE320;
  *(v0 + 56) = xmmword_1C0982B10;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDB40;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976150;
  *(v0 + 120) = 0x80000001C09CE320;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_PersonContact.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_PersonContact.init()();
  return v0;
}

uint64_t sub_1C0686E54(uint64_t a1, __n128 a2, __n128 a3)
{
  *(v3 + 40) = 0xD000000000000014;
  *(v3 + 48) = 0x80000001C09CE320;
  *(v3 + 56) = a2;
  *(v3 + 72) = a3;
  *(v3 + 88) = xmmword_1C0975360;
  *(v3 + 104) = xmmword_1C0976150;
  *(v3 + 120) = 0x80000001C09CE320;
  *(v3 + 128) = xmmword_1C0982A00;
  *(v3 + 144) = 0;

  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = v4;
  *(v3 + 24) = v4;

  *(v3 + 32) = v4;
  return v3;
}

uint64_t UsoTaskBuilder_summarise_common_PersonContact.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_PersonContact.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_PersonContact.init()()
{
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x80000001C09CE320;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976150;
  *(v0 + 120) = 0x80000001C09CE320;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_update_common_PersonContact.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_update_common_PersonContact.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_PersonContact.init()()
{
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x80000001C09CE320;
  *(v0 + 56) = xmmword_1C0982A60;
  *(v0 + 72) = 0xD000000000000016;
  *(v0 + 80) = 0x80000001C09CDAA0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976150;
  *(v0 + 120) = 0x80000001C09CE320;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_SportsItem.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_SportsItem.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_SportsItem.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE360;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE360;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_reset_common_Timer.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_reset_common_Timer.init()();
  return v0;
}

uint64_t UsoTaskBuilder_reset_common_Timer.init()()
{
  *(v0 + 40) = xmmword_1C0982EF0;
  *(v0 + 56) = xmmword_1C0982D90;
  *(v0 + 72) = 0xD000000000000015;
  *(v0 + 80) = 0x80000001C09CE380;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977340;
  *(v0 + 120) = xmmword_1C0982F00;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_create_common_Timer.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_create_common_Timer.init()();
  return v0;
}

uint64_t UsoTaskBuilder_create_common_Timer.init()()
{
  *(v0 + 40) = xmmword_1C0982EF0;
  *(v0 + 56) = xmmword_1C0982A20;
  *(v0 + 72) = xmmword_1C0982A30;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977340;
  *(v0 + 120) = xmmword_1C0982F00;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_start_common_Timer.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_start_common_Timer.init()();
  return v0;
}

uint64_t UsoTaskBuilder_start_common_Timer.init()()
{
  *(v0 + 40) = xmmword_1C0982EF0;
  *(v0 + 56) = xmmword_1C0982F10;
  *(v0 + 72) = xmmword_1C0982F20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977340;
  *(v0 + 120) = xmmword_1C0982F00;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_Timer.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_delete_common_Timer.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_Timer.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_update_common_Timer.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_Timer.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_Timer.init()();
  return v0;
}

uint64_t UsoTaskBuilder_pause_common_Timer.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_pause_common_Timer.init()();
  return v0;
}

uint64_t UsoTaskBuilder_pause_common_Timer.init()()
{
  *(v0 + 40) = xmmword_1C0982EF0;
  *(v0 + 56) = xmmword_1C0982CA0;
  *(v0 + 72) = xmmword_1C0982CB0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977340;
  *(v0 + 120) = xmmword_1C0982F00;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_resume_common_Timer.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_resume_common_Timer.init()();
  return v0;
}

uint64_t UsoTaskBuilder_resume_common_Timer.init()()
{
  *(v0 + 40) = xmmword_1C0982EF0;
  *(v0 + 56) = xmmword_1C0982CC0;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDD60;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977340;
  *(v0 + 120) = xmmword_1C0982F00;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Timer.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_Timer.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Timer.init()()
{
  *(v0 + 40) = xmmword_1C0982EF0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977340;
  *(v0 + 120) = xmmword_1C0982F00;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_Timer.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_Timer.init()();
  return v0;
}

uint64_t UsoTaskBuilder_stop_common_Timer.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_stop_common_Timer.init()();
  return v0;
}

uint64_t UsoTaskBuilder_stop_common_Timer.init()()
{
  *(v0 + 40) = xmmword_1C0982EF0;
  *(v0 + 56) = xmmword_1C0982BF0;
  *(v0 + 72) = xmmword_1C0982C00;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977340;
  *(v0 + 120) = xmmword_1C0982F00;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_request_common_Timer.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_Timer.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_SearchQualifier.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_SearchQualifier.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_SearchQualifier.init()()
{
  *(v0 + 40) = 0xD000000000000016;
  *(v0 + 48) = 0x80000001C09CE3A0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976120;
  *(v0 + 120) = 0x80000001C09CE3A0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_Reaction.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_Reaction.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Reaction.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_Reaction.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Reaction.init()()
{
  *(v0 + 40) = xmmword_1C0982F30;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977C40;
  *(v0 + 120) = xmmword_1C0982F40;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_Reaction.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_Reaction.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_Reaction.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_Reaction.init()();
  return v0;
}

uint64_t UsoTaskBuilder_action_common_CrisisSupport.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_action_common_CrisisSupport.init()();
  return v0;
}

uint64_t UsoTaskBuilder_action_common_CrisisSupport.init()()
{
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x80000001C09CE3C0;
  *(v0 + 56) = xmmword_1C0982ED0;
  *(v0 + 72) = xmmword_1C0982EE0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976150;
  *(v0 + 120) = 0x80000001C09CE3C0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_DateTimeRange.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_DateTimeRange.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_DateTimeRange.init()()
{
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x80000001C09CE3E0;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976150;
  *(v0 + 120) = 0x80000001C09CE3E0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_request_common_DateTimeRange.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_DateTimeRange.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_DateTimeRange.init()()
{
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x80000001C09CE3E0;
  *(v0 + 56) = xmmword_1C0982C40;
  *(v0 + 72) = 0xD000000000000017;
  *(v0 + 80) = 0x80000001C09CDD20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976150;
  *(v0 + 120) = 0x80000001C09CE3E0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_convert_common_DateTimeRange.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_convert_common_DateTimeRange.init()();
  return v0;
}

uint64_t UsoTaskBuilder_convert_common_DateTimeRange.init()()
{
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x80000001C09CE3E0;
  *(v0 + 56) = xmmword_1C0982CD0;
  *(v0 + 72) = 0xD00000000000001DLL;
  *(v0 + 80) = 0x80000001C09CDDA0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976150;
  *(v0 + 120) = 0x80000001C09CE3E0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_DateTimeRange.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_DateTimeRange.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_DateTimeRange.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_DateTimeRange.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_DateTimeRange.init()()
{
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x80000001C09CE3E0;
  *(v0 + 56) = xmmword_1C0982B80;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001C09CDC20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976150;
  *(v0 + 120) = 0x80000001C09CE3E0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_read_common_DateTimeRange.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_read_common_DateTimeRange.init()();
  return v0;
}

uint64_t sub_1C06890E4(uint64_t a1, __n128 a2, __n128 a3)
{
  *(v3 + 40) = 0xD000000000000014;
  *(v3 + 48) = 0x80000001C09CE3E0;
  *(v3 + 56) = a2;
  *(v3 + 72) = a3;
  *(v3 + 88) = xmmword_1C0975360;
  *(v3 + 104) = xmmword_1C0976150;
  *(v3 + 120) = 0x80000001C09CE3E0;
  *(v3 + 128) = xmmword_1C0982A00;
  *(v3 + 144) = 0;

  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = v4;
  *(v3 + 24) = v4;

  *(v3 + 32) = v4;
  return v3;
}

uint64_t UsoTaskBuilder_noVerb_appleWriting_WritingAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_appleWriting_WritingAttribute.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_appleWriting_WritingAttribute.init()()
{
  *(v0 + 40) = 0xD00000000000001DLL;
  *(v0 + 48) = 0x80000001C09CE400;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760C0;
  *(v0 + 120) = 0x80000001C09CE400;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_TimeZone.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_TimeZone.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_TimeZone.init()()
{
  *(v0 + 40) = xmmword_1C0982F50;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977340;
  *(v0 + 120) = xmmword_1C0982F60;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_update_common_PersonRelationship.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_update_common_PersonRelationship.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_PersonRelationship.init()()
{
  *(v0 + 40) = 0xD000000000000019;
  *(v0 + 48) = 0x80000001C09CE420;
  *(v0 + 56) = xmmword_1C0982A60;
  *(v0 + 72) = 0xD000000000000016;
  *(v0 + 80) = 0x80000001C09CDAA0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760D0;
  *(v0 + 120) = 0x80000001C09CE420;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_PersonRelationship.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_PersonRelationship.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_PersonRelationship.init()()
{
  *(v0 + 40) = 0xD000000000000019;
  *(v0 + 48) = 0x80000001C09CE420;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760D0;
  *(v0 + 120) = 0x80000001C09CE420;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_ActivationValue.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_ActivationValue.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_ActivationValue.init()()
{
  *(v0 + 40) = 0xD000000000000016;
  *(v0 + 48) = 0x80000001C09CE440;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976120;
  *(v0 + 120) = 0x80000001C09CE440;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Color.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_Color.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Color.init()()
{
  *(v0 + 40) = xmmword_1C0982F70;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977360;
  *(v0 + 120) = xmmword_1C0982F80;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_Email.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_delete_common_Email.init()();
  return v0;
}

uint64_t UsoTaskBuilder_cc_common_Email.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_cc_common_Email.init()();
  return v0;
}

uint64_t UsoTaskBuilder_send_common_Email.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_send_common_Email.init()();
  return v0;
}

uint64_t UsoTaskBuilder_send_common_Email.init()()
{
  *(v0 + 40) = xmmword_1C0982F90;
  *(v0 + 56) = xmmword_1C0982FB0;
  *(v0 + 72) = xmmword_1C0982FC0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977450;
  *(v0 + 120) = xmmword_1C0982FA0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_save_common_Email.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_save_common_Email.init()();
  return v0;
}

uint64_t UsoTaskBuilder_forward_common_Email.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_forward_common_Email.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_Email.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_update_common_Email.init()();
  return v0;
}

uint64_t UsoTaskBuilder_reply_common_Email.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_reply_common_Email.init()();
  return v0;
}

uint64_t UsoTaskBuilder_previous_common_Email.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_previous_common_Email.init()();
  return v0;
}

uint64_t UsoTaskBuilder_read_common_Email.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_read_common_Email.init()();
  return v0;
}

uint64_t UsoTaskBuilder_read_common_Email.init()()
{
  *(v0 + 40) = xmmword_1C0982F90;
  *(v0 + 56) = xmmword_1C0982C70;
  *(v0 + 72) = xmmword_1C0982C80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977450;
  *(v0 + 120) = xmmword_1C0982FA0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_continue_common_Email.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_continue_common_Email.init()();
  return v0;
}

uint64_t UsoTaskBuilder_stop_common_Email.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_stop_common_Email.init()();
  return v0;
}

uint64_t UsoTaskBuilder_stop_common_Email.init()()
{
  *(v0 + 40) = xmmword_1C0982F90;
  *(v0 + 56) = xmmword_1C0982BF0;
  *(v0 + 72) = xmmword_1C0982C00;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977450;
  *(v0 + 120) = xmmword_1C0982FA0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_skip_common_Email.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_skip_common_Email.init()();
  return v0;
}

uint64_t UsoTaskBuilder_skip_common_Email.init()()
{
  *(v0 + 40) = xmmword_1C0982F90;
  *(v0 + 56) = xmmword_1C0982C50;
  *(v0 + 72) = xmmword_1C0982C60;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977450;
  *(v0 + 120) = xmmword_1C0982FA0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_Email.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_Email.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_Email.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_Email.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Email.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_Email.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Email.init()()
{
  *(v0 + 40) = xmmword_1C0982F90;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977450;
  *(v0 + 120) = xmmword_1C0982FA0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_request_common_Email.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_Email.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_DeviceCategory.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_DeviceCategory.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_DeviceCategory.init()()
{
  *(v0 + 40) = 0xD000000000000015;
  *(v0 + 48) = 0x80000001C09CE4E0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976160;
  *(v0 + 120) = 0x80000001C09CE4E0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_DateTime.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_DateTime.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_DateTime.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_DateTime.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_DateTime.init()()
{
  *(v0 + 40) = xmmword_1C0982FD0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977330;
  *(v0 + 120) = xmmword_1C0982FE0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_convert_common_DateTime.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_convert_common_DateTime.init()();
  return v0;
}

uint64_t UsoTaskBuilder_convert_common_DateTime.init()()
{
  *(v0 + 40) = xmmword_1C0982FD0;
  *(v0 + 56) = xmmword_1C0982CD0;
  *(v0 + 72) = 0xD00000000000001DLL;
  *(v0 + 80) = 0x80000001C09CDDA0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977330;
  *(v0 + 120) = xmmword_1C0982FE0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_request_common_DateTime.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_DateTime.init()();
  return v0;
}

uint64_t UsoTaskBuilder_read_common_DateTime.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_read_common_DateTime.init()();
  return v0;
}

uint64_t UsoTaskBuilder_read_common_DateTime.init()()
{
  *(v0 + 40) = xmmword_1C0982FD0;
  *(v0 + 56) = xmmword_1C0982C70;
  *(v0 + 72) = xmmword_1C0982C80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977330;
  *(v0 + 120) = xmmword_1C0982FE0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_DateTime.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_DateTime.init()();
  return v0;
}

uint64_t UsoTaskBuilder_removeFilter_apple_PhotoMemory.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_removeFilter_apple_PhotoMemory.init()();
  return v0;
}

uint64_t UsoTaskBuilder_removeFilter_apple_PhotoMemory.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE530;
  *(v0 + 56) = xmmword_1C0982FF0;
  *(v0 + 72) = 0xD000000000000027;
  *(v0 + 80) = 0x80000001C09CE500;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE530;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_removeTag_apple_PhotoMemory.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_removeTag_apple_PhotoMemory.init()();
  return v0;
}

uint64_t UsoTaskBuilder_removeTag_apple_PhotoMemory.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE530;
  *(v0 + 56) = xmmword_1C0983000;
  *(v0 + 72) = 0xD00000000000001BLL;
  *(v0 + 80) = 0x80000001C09CE550;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE530;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_create_apple_PhotoMemory.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_create_apple_PhotoMemory.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_apple_PhotoMemory.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_apple_PhotoMemory.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_apple_PhotoMemory.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE530;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE530;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_removeFromAlbum_apple_PhotoMemory.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_removeFromAlbum_apple_PhotoMemory.init()();
  return v0;
}

uint64_t UsoTaskBuilder_removeFromAlbum_apple_PhotoMemory.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE530;
  *(v0 + 56) = xmmword_1C0983010;
  *(v0 + 72) = 0xD000000000000028;
  *(v0 + 80) = 0x80000001C09CE570;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE530;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_apple_PhotoMemory.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_apple_PhotoMemory.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_apple_PhotoMemory.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE530;
  *(v0 + 56) = xmmword_1C0982B80;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001C09CDC20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE530;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_applyTag_apple_PhotoMemory.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_applyTag_apple_PhotoMemory.init()();
  return v0;
}

uint64_t UsoTaskBuilder_applyTag_apple_PhotoMemory.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE530;
  *(v0 + 56) = xmmword_1C0983020;
  *(v0 + 72) = 0xD00000000000001ALL;
  *(v0 + 80) = 0x80000001C09CE5A0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE530;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_like_apple_PhotoMemory.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_like_apple_PhotoMemory.init()();
  return v0;
}

uint64_t UsoTaskBuilder_delete_apple_PhotoMemory.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_delete_apple_PhotoMemory.init()();
  return v0;
}

uint64_t UsoTaskBuilder_delete_apple_PhotoMemory.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE530;
  *(v0 + 56) = xmmword_1C0982B10;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDB40;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE530;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_addToAlbum_apple_PhotoMemory.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_addToAlbum_apple_PhotoMemory.init()();
  return v0;
}

uint64_t UsoTaskBuilder_addToAlbum_apple_PhotoMemory.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE530;
  *(v0 + 56) = xmmword_1C0983030;
  *(v0 + 72) = 0xD000000000000023;
  *(v0 + 80) = 0x80000001C09CE5C0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE530;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_play_apple_PhotoMemory.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_play_apple_PhotoMemory.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_apple_PhotoMemory.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_apple_PhotoMemory.init()();
  return v0;
}

uint64_t sub_1C068C2B4(uint64_t a1, __n128 a2, __n128 a3)
{
  *(v3 + 40) = 0xD000000000000011;
  *(v3 + 48) = 0x80000001C09CE530;
  *(v3 + 56) = a2;
  *(v3 + 72) = a3;
  *(v3 + 88) = xmmword_1C0975360;
  *(v3 + 104) = xmmword_1C09761B0;
  *(v3 + 120) = 0x80000001C09CE530;
  *(v3 + 128) = xmmword_1C0982A00;
  *(v3 + 144) = 0;

  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = v4;
  *(v3 + 24) = v4;

  *(v3 + 32) = v4;
  return v3;
}

uint64_t UsoTaskBuilder_unlike_apple_PhotoMemory.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_unlike_apple_PhotoMemory.init()();
  return v0;
}

uint64_t UsoTaskBuilder_unlike_apple_PhotoMemory.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE530;
  *(v0 + 56) = xmmword_1C0982AE0;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDB20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE530;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_applyFilter_apple_PhotoMemory.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_applyFilter_apple_PhotoMemory.init()();
  return v0;
}

uint64_t UsoTaskBuilder_applyFilter_apple_PhotoMemory.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE530;
  *(v0 + 56) = xmmword_1C0983040;
  *(v0 + 72) = 0xD000000000000026;
  *(v0 + 80) = 0x80000001C09CE5F0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE530;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_request_common_SiriPossession.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_SiriPossession.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_SiriPossession.init()()
{
  *(v0 + 40) = 0xD000000000000015;
  *(v0 + 48) = 0x80000001C09CE620;
  *(v0 + 56) = xmmword_1C0982C40;
  *(v0 + 72) = 0xD000000000000017;
  *(v0 + 80) = 0x80000001C09CDD20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976160;
  *(v0 + 120) = 0x80000001C09CE620;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_state_common_SiriPossession.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_state_common_SiriPossession.init()();
  return v0;
}

uint64_t UsoTaskBuilder_deny_common_SiriPossession.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_deny_common_SiriPossession.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_SiriPossession.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_SiriPossession.init()();
  return v0;
}

uint64_t sub_1C068CA54(uint64_t a1, __n128 a2, __n128 a3)
{
  *(v3 + 40) = 0xD000000000000015;
  *(v3 + 48) = 0x80000001C09CE620;
  *(v3 + 56) = a2;
  *(v3 + 72) = a3;
  *(v3 + 88) = xmmword_1C0975360;
  *(v3 + 104) = xmmword_1C0976160;
  *(v3 + 120) = 0x80000001C09CE620;
  *(v3 + 128) = xmmword_1C0982A00;
  *(v3 + 144) = 0;

  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = v4;
  *(v3 + 24) = v4;

  *(v3 + 32) = v4;
  return v3;
}

uint64_t UsoTaskBuilder_summarise_common_SiriPossession.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_SiriPossession.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_SiriPossession.init()()
{
  *(v0 + 40) = 0xD000000000000015;
  *(v0 + 48) = 0x80000001C09CE620;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976160;
  *(v0 + 120) = 0x80000001C09CE620;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_SiriPossession.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_SiriPossession.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_SiriPossession.init()()
{
  *(v0 + 40) = 0xD000000000000015;
  *(v0 + 48) = 0x80000001C09CE620;
  *(v0 + 56) = xmmword_1C0982B80;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001C09CDC20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976160;
  *(v0 + 120) = 0x80000001C09CE620;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_PersonSocialAction.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_PersonSocialAction.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_PersonSocialAction.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_PersonSocialAction.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_PersonSocialAction.init()()
{
  *(v0 + 40) = 0xD000000000000019;
  *(v0 + 48) = 0x80000001C09CE640;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09760D0;
  *(v0 + 120) = 0x80000001C09CE640;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_state_common_PersonSocialAction.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_state_common_PersonSocialAction.init()();
  return v0;
}

uint64_t sub_1C068D138(uint64_t a1, __n128 a2, __n128 a3)
{
  *(v3 + 40) = 0xD000000000000019;
  *(v3 + 48) = 0x80000001C09CE640;
  *(v3 + 56) = a2;
  *(v3 + 72) = a3;
  *(v3 + 88) = xmmword_1C0975360;
  *(v3 + 104) = xmmword_1C09760D0;
  *(v3 + 120) = 0x80000001C09CE640;
  *(v3 + 128) = xmmword_1C0982A00;
  *(v3 + 144) = 0;

  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = v4;
  *(v3 + 24) = v4;

  *(v3 + 32) = v4;
  return v3;
}

uint64_t UsoTaskBuilder_pause_common_Journey.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_pause_common_Journey.init()();
  return v0;
}

uint64_t UsoTaskBuilder_start_common_Journey.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_start_common_Journey.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_Journey.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_Journey.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_Journey.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_update_common_Journey.init()();
  return v0;
}

uint64_t UsoTaskBuilder_stop_common_Journey.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_stop_common_Journey.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Journey.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_Journey.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Journey.init()()
{
  *(v0 + 40) = xmmword_1C0983070;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0978480;
  *(v0 + 120) = xmmword_1C0983080;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Photo.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_Photo.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Photo.init()()
{
  *(v0 + 40) = xmmword_1C0983090;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977390;
  *(v0 + 120) = xmmword_1C09830A0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_unlike_common_Photo.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_unlike_common_Photo.init()();
  return v0;
}

uint64_t UsoTaskBuilder_unhide_common_Photo.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_unhide_common_Photo.init()();
  return v0;
}

uint64_t UsoTaskBuilder_applyTag_common_Photo.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_applyTag_common_Photo.init()();
  return v0;
}

uint64_t UsoTaskBuilder_applyTag_common_Photo.init()()
{
  *(v0 + 40) = xmmword_1C0983090;
  *(v0 + 56) = xmmword_1C0983020;
  *(v0 + 72) = 0xD00000000000001ALL;
  *(v0 + 80) = 0x80000001C09CE5A0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977390;
  *(v0 + 120) = xmmword_1C09830A0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_addToAlbum_common_Photo.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_addToAlbum_common_Photo.init()();
  return v0;
}

uint64_t UsoTaskBuilder_addToAlbum_common_Photo.init()()
{
  *(v0 + 40) = xmmword_1C0983090;
  *(v0 + 56) = xmmword_1C0983030;
  *(v0 + 72) = 0xD000000000000023;
  *(v0 + 80) = 0x80000001C09CE5C0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977390;
  *(v0 + 120) = xmmword_1C09830A0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_skipBackward_common_Photo.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_skipBackward_common_Photo.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_Photo.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_Photo.init()();
  return v0;
}

uint64_t UsoTaskBuilder_create_common_Photo.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_create_common_Photo.init()();
  return v0;
}

uint64_t UsoTaskBuilder_create_common_Photo.init()()
{
  *(v0 + 40) = xmmword_1C0983090;
  *(v0 + 56) = xmmword_1C0982A20;
  *(v0 + 72) = xmmword_1C0982A30;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977390;
  *(v0 + 120) = xmmword_1C09830A0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_removeTag_common_Photo.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_removeTag_common_Photo.init()();
  return v0;
}

uint64_t UsoTaskBuilder_removeTag_common_Photo.init()()
{
  *(v0 + 40) = xmmword_1C0983090;
  *(v0 + 56) = xmmword_1C0983000;
  *(v0 + 72) = 0xD00000000000001BLL;
  *(v0 + 80) = 0x80000001C09CE550;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977390;
  *(v0 + 120) = xmmword_1C09830A0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_Photo.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_delete_common_Photo.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_Photo.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_Photo.init()();
  return v0;
}

uint64_t UsoTaskBuilder_like_common_Photo.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_like_common_Photo.init()();
  return v0;
}

uint64_t UsoTaskBuilder_like_common_Photo.init()()
{
  *(v0 + 40) = xmmword_1C0983090;
  *(v0 + 56) = xmmword_1C0982AC0;
  *(v0 + 72) = xmmword_1C0982AD0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977390;
  *(v0 + 120) = xmmword_1C09830A0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_play_common_Photo.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_play_common_Photo.init()();
  return v0;
}

uint64_t UsoTaskBuilder_play_common_Photo.init()()
{
  *(v0 + 40) = xmmword_1C0983090;
  *(v0 + 56) = xmmword_1C0982C10;
  *(v0 + 72) = xmmword_1C0982C20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977390;
  *(v0 + 120) = xmmword_1C09830A0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_applyFilter_common_Photo.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_applyFilter_common_Photo.init()();
  return v0;
}

uint64_t UsoTaskBuilder_applyFilter_common_Photo.init()()
{
  *(v0 + 40) = xmmword_1C0983090;
  *(v0 + 56) = xmmword_1C0983040;
  *(v0 + 72) = 0xD000000000000020;
  *(v0 + 80) = 0x80000001C09CE6C0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977390;
  *(v0 + 120) = xmmword_1C09830A0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_hide_common_Photo.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_hide_common_Photo.init()();
  return v0;
}

uint64_t UsoTaskBuilder_removeFilter_common_Photo.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_removeFilter_common_Photo.init()();
  return v0;
}

uint64_t UsoTaskBuilder_removeFilter_common_Photo.init()()
{
  *(v0 + 40) = xmmword_1C0983090;
  *(v0 + 56) = xmmword_1C0982FF0;
  *(v0 + 72) = 0xD000000000000021;
  *(v0 + 80) = 0x80000001C09CE710;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977390;
  *(v0 + 120) = xmmword_1C09830A0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_skipForward_common_Photo.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_skipForward_common_Photo.init()();
  return v0;
}

uint64_t UsoTaskBuilder_removeFromAlbum_common_Photo.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_removeFromAlbum_common_Photo.init()();
  return v0;
}

uint64_t UsoTaskBuilder_removeFromAlbum_common_Photo.init()()
{
  *(v0 + 40) = xmmword_1C0983090;
  *(v0 + 56) = xmmword_1C0983010;
  *(v0 + 72) = 0xD000000000000028;
  *(v0 + 80) = 0x80000001C09CE570;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977390;
  *(v0 + 120) = xmmword_1C09830A0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_commonMessage_MessageAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_commonMessage_MessageAttribute.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_commonMessage_MessageAttribute.init()()
{
  *(v0 + 40) = 0xD00000000000001ELL;
  *(v0 + 48) = 0x80000001C09CE760;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976080;
  *(v0 + 120) = 0x80000001C09CE760;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Salutation.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_Salutation.init()();
  return v0;
}

uint64_t UsoTaskBuilder_tell_common_Salutation.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_tell_common_Salutation.init()();
  return v0;
}

uint64_t sub_1C068EFEC(uint64_t a1, __n128 a2, __n128 a3)
{
  *(v3 + 40) = 0xD000000000000011;
  *(v3 + 48) = 0x80000001C09CE780;
  *(v3 + 56) = a2;
  *(v3 + 72) = a3;
  *(v3 + 88) = xmmword_1C0975360;
  *(v3 + 104) = xmmword_1C09761B0;
  *(v3 + 120) = 0x80000001C09CE780;
  *(v3 + 128) = xmmword_1C0982A00;
  *(v3 + 144) = 0;

  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = v4;
  *(v3 + 24) = v4;

  *(v3 + 32) = v4;
  return v3;
}

uint64_t UsoTaskBuilder_noVerb_common_Organization.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_Organization.init()();
  return v0;
}

uint64_t UsoTaskBuilder_create_common_Organization.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_create_common_Organization.init()();
  return v0;
}

uint64_t UsoTaskBuilder_read_common_Organization.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_read_common_Organization.init()();
  return v0;
}

uint64_t sub_1C068F2F4(uint64_t a1, __n128 a2, __n128 a3)
{
  *(v3 + 40) = 0xD000000000000013;
  *(v3 + 48) = 0x80000001C09CE7A0;
  *(v3 + 56) = a2;
  *(v3 + 72) = a3;
  *(v3 + 88) = xmmword_1C0975360;
  *(v3 + 104) = xmmword_1C0976140;
  *(v3 + 120) = 0x80000001C09CE7A0;
  *(v3 + 128) = xmmword_1C0982A00;
  *(v3 + 144) = 0;

  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = v4;
  *(v3 + 24) = v4;

  *(v3 + 32) = v4;
  return v3;
}

uint64_t UsoTaskBuilder_update_common_Organization.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_update_common_Organization.init()();
  return v0;
}

uint64_t UsoTaskBuilder_update_common_Organization.init()()
{
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x80000001C09CE7A0;
  *(v0 + 56) = xmmword_1C0982A60;
  *(v0 + 72) = 0xD000000000000016;
  *(v0 + 80) = 0x80000001C09CDAA0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976140;
  *(v0 + 120) = 0x80000001C09CE7A0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_request_common_Organization.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_Organization.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_Organization.init()()
{
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x80000001C09CE7A0;
  *(v0 + 56) = xmmword_1C0982C40;
  *(v0 + 72) = 0xD000000000000017;
  *(v0 + 80) = 0x80000001C09CDD20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976140;
  *(v0 + 120) = 0x80000001C09CE7A0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_Organization.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_Organization.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_Organization.init()()
{
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x80000001C09CE7A0;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976140;
  *(v0 + 120) = 0x80000001C09CE7A0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_Organization.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_delete_common_Organization.init()();
  return v0;
}

uint64_t UsoTaskBuilder_delete_common_Organization.init()()
{
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x80000001C09CE7A0;
  *(v0 + 56) = xmmword_1C0982B10;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000001C09CDB40;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976140;
  *(v0 + 120) = 0x80000001C09CE7A0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_Organization.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_Organization.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_Organization.init()()
{
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x80000001C09CE7A0;
  *(v0 + 56) = xmmword_1C0982B80;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001C09CDC20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976140;
  *(v0 + 120) = 0x80000001C09CE7A0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_commonArithmetic_ArithmeticAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_commonArithmetic_ArithmeticAttribute.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_commonArithmetic_ArithmeticAttribute.init()()
{
  *(v0 + 40) = 0xD000000000000024;
  *(v0 + 48) = 0x80000001C09CE7C0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976200;
  *(v0 + 120) = 0x80000001C09CE7C0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_MultipliedNumber.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_MultipliedNumber.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_MultipliedNumber.init()()
{
  *(v0 + 40) = 0xD000000000000017;
  *(v0 + 48) = 0x80000001C09CE7F0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976050;
  *(v0 + 120) = 0x80000001C09CE7F0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_setDateTimeRange_common_CarSetting.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_setDateTimeRange_common_CarSetting.init()();
  return v0;
}

uint64_t UsoTaskBuilder_setDateTimeRange_common_CarSetting.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE840;
  *(v0 + 56) = 0xD000000000000010;
  *(v0 + 64) = 0x80000001C09D9710;
  *(v0 + 72) = 0xD00000000000002ELL;
  *(v0 + 80) = 0x80000001C09CE810;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE840;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_CarSetting.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_CarSetting.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_CarSetting.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE840;
  *(v0 + 56) = xmmword_1C0982B80;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001C09CDC20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE840;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_setDuration_common_CarSetting.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_setDuration_common_CarSetting.init()();
  return v0;
}

uint64_t UsoTaskBuilder_setDuration_common_CarSetting.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE840;
  *(v0 + 56) = xmmword_1C09830B0;
  *(v0 + 72) = 0xD000000000000024;
  *(v0 + 80) = 0x80000001C09CE860;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE840;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_setNumber_common_CarSetting.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_setNumber_common_CarSetting.init()();
  return v0;
}

uint64_t UsoTaskBuilder_setNumber_common_CarSetting.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE840;
  *(v0 + 56) = xmmword_1C09830C0;
  *(v0 + 72) = 0xD000000000000020;
  *(v0 + 80) = 0x80000001C09CE890;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE840;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_increaseBy_common_CarSetting.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_increaseBy_common_CarSetting.init()();
  return v0;
}

uint64_t UsoTaskBuilder_increaseBy_common_CarSetting.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE840;
  *(v0 + 56) = xmmword_1C09830D0;
  *(v0 + 72) = 0xD000000000000021;
  *(v0 + 80) = 0x80000001C09CE8C0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE840;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_decreaseByMeasurement_common_CarSetting.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_decreaseByMeasurement_common_CarSetting.init()();
  return v0;
}

uint64_t UsoTaskBuilder_decreaseByMeasurement_common_CarSetting.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE840;
  *(v0 + 56) = 0xD000000000000015;
  *(v0 + 64) = 0x80000001C09DDCF0;
  *(v0 + 72) = 0xD000000000000031;
  *(v0 + 80) = 0x80000001C09CE8F0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE840;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_open_common_CarSetting.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_open_common_CarSetting.init()();
  return v0;
}

uint64_t UsoTaskBuilder_toggle_common_CarSetting.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_toggle_common_CarSetting.init()();
  return v0;
}

uint64_t UsoTaskBuilder_toggle_common_CarSetting.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE840;
  *(v0 + 56) = xmmword_1C09830E0;
  *(v0 + 72) = 0xD000000000000017;
  *(v0 + 80) = 0x80000001C09CE930;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE840;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_disable_common_CarSetting.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_disable_common_CarSetting.init()();
  return v0;
}

uint64_t UsoTaskBuilder_disable_common_CarSetting.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE840;
  *(v0 + 56) = xmmword_1C09830F0;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001C09CE950;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE840;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_set_common_CarSetting.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_set_common_CarSetting.init()();
  return v0;
}

uint64_t UsoTaskBuilder_set_common_CarSetting.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE840;
  *(v0 + 56) = xmmword_1C0983100;
  *(v0 + 72) = 0xD000000000000014;
  *(v0 + 80) = 0x80000001C09CE970;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE840;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_setMeasurement_common_CarSetting.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_setMeasurement_common_CarSetting.init()();
  return v0;
}

uint64_t UsoTaskBuilder_setMeasurement_common_CarSetting.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE840;
  *(v0 + 56) = xmmword_1C0983110;
  *(v0 + 72) = 0xD00000000000002ALL;
  *(v0 + 80) = 0x80000001C09CE990;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE840;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_CarSetting.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_CarSetting.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_CarSetting.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE840;
  *(v0 + 56) = xmmword_1C0982A50;
  *(v0 + 72) = 0xD000000000000013;
  *(v0 + 80) = 0x80000001C09CDA80;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE840;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_setLabel_common_CarSetting.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_setLabel_common_CarSetting.init()();
  return v0;
}

uint64_t UsoTaskBuilder_setLabel_common_CarSetting.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE840;
  *(v0 + 56) = xmmword_1C0983120;
  *(v0 + 72) = 0xD00000000000001FLL;
  *(v0 + 80) = 0x80000001C09CE9C0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE840;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_setProfile_common_CarSetting.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_setProfile_common_CarSetting.init()();
  return v0;
}

uint64_t UsoTaskBuilder_setProfile_common_CarSetting.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE840;
  *(v0 + 56) = xmmword_1C0983130;
  *(v0 + 72) = 0xD00000000000001BLL;
  *(v0 + 80) = 0x80000001C09CE9E0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE840;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_request_common_CarSetting.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_CarSetting.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_CarSetting.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE840;
  *(v0 + 56) = xmmword_1C0982C40;
  *(v0 + 72) = 0xD000000000000017;
  *(v0 + 80) = 0x80000001C09CDD20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE840;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_CarSetting.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_CarSetting.init()();
  return v0;
}

uint64_t sub_1C0691588(uint64_t a1, __n128 a2, __n128 a3)
{
  *(v3 + 40) = 0xD000000000000011;
  *(v3 + 48) = 0x80000001C09CE840;
  *(v3 + 56) = a2;
  *(v3 + 72) = a3;
  *(v3 + 88) = xmmword_1C0975360;
  *(v3 + 104) = xmmword_1C09761B0;
  *(v3 + 120) = 0x80000001C09CE840;
  *(v3 + 128) = xmmword_1C0982A00;
  *(v3 + 144) = 0;

  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = v4;
  *(v3 + 24) = v4;

  *(v3 + 32) = v4;
  return v3;
}

uint64_t UsoTaskBuilder_decreaseBy_common_CarSetting.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_decreaseBy_common_CarSetting.init()();
  return v0;
}

uint64_t UsoTaskBuilder_decreaseBy_common_CarSetting.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE840;
  *(v0 + 56) = xmmword_1C0983140;
  *(v0 + 72) = 0xD000000000000021;
  *(v0 + 80) = 0x80000001C09CEA00;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE840;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_increaseByMeasurement_common_CarSetting.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_increaseByMeasurement_common_CarSetting.init()();
  return v0;
}

uint64_t UsoTaskBuilder_increaseByMeasurement_common_CarSetting.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE840;
  *(v0 + 56) = 0xD000000000000015;
  *(v0 + 64) = 0x80000001C09DDCD0;
  *(v0 + 72) = 0xD000000000000031;
  *(v0 + 80) = 0x80000001C09CEA30;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE840;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_enable_common_CarSetting.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_enable_common_CarSetting.init()();
  return v0;
}

uint64_t UsoTaskBuilder_enable_common_CarSetting.init()()
{
  *(v0 + 40) = 0xD000000000000011;
  *(v0 + 48) = 0x80000001C09CE840;
  *(v0 + 56) = xmmword_1C0983150;
  *(v0 + 72) = 0xD000000000000017;
  *(v0 + 80) = 0x80000001C09CEA70;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C09761B0;
  *(v0 + 120) = 0x80000001C09CE840;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_TimeUnit.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_TimeUnit.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_TimeUnit.init()()
{
  *(v0 + 40) = xmmword_1C0983160;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977340;
  *(v0 + 120) = xmmword_1C0983170;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_OffsetDirection.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_OffsetDirection.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_OffsetDirection.init()()
{
  *(v0 + 40) = 0xD000000000000016;
  *(v0 + 48) = 0x80000001C09CEA90;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976120;
  *(v0 + 120) = 0x80000001C09CEA90;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Interjection.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_Interjection.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Interjection.init()()
{
  *(v0 + 40) = 0xD000000000000013;
  *(v0 + 48) = 0x80000001C09CEAB0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976140;
  *(v0 + 120) = 0x80000001C09CEAB0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_Event.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_Event.init()();
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_Event.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_Event.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Event.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_Event.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Event.init()()
{
  *(v0 + 40) = xmmword_1C0983180;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977450;
  *(v0 + 120) = xmmword_1C0983190;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_request_common_Event.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_Event.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_MedicationEvent.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_MedicationEvent.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_MedicationEvent.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_request_common_MedicationEvent.init()();
  return v0;
}

uint64_t UsoTaskBuilder_request_common_MedicationEvent.init()()
{
  *(v0 + 40) = 0xD000000000000016;
  *(v0 + 48) = 0x80000001C09CEAD0;
  *(v0 + 56) = xmmword_1C0982C40;
  *(v0 + 72) = 0xD000000000000017;
  *(v0 + 80) = 0x80000001C09CDD20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976120;
  *(v0 + 120) = 0x80000001C09CEAD0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_snooze_common_MedicationEvent.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_snooze_common_MedicationEvent.init()();
  return v0;
}

uint64_t UsoTaskBuilder_snooze_common_MedicationEvent.init()()
{
  *(v0 + 40) = 0xD000000000000016;
  *(v0 + 48) = 0x80000001C09CEAD0;
  *(v0 + 56) = xmmword_1C09831A0;
  *(v0 + 72) = 0xD000000000000017;
  *(v0 + 80) = 0x80000001C09CEAF0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976120;
  *(v0 + 120) = 0x80000001C09CEAD0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_MedicationEvent.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_checkExistence_common_MedicationEvent.init()();
  return v0;
}

uint64_t UsoTaskBuilder_checkExistence_common_MedicationEvent.init()()
{
  *(v0 + 40) = 0xD000000000000016;
  *(v0 + 48) = 0x80000001C09CEAD0;
  *(v0 + 56) = xmmword_1C0982B80;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x80000001C09CDC20;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976120;
  *(v0 + 120) = 0x80000001C09CEAD0;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_create_common_MedicationEvent.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_create_common_MedicationEvent.init()();
  return v0;
}

uint64_t sub_1C0692984(uint64_t a1, __n128 a2, __n128 a3)
{
  *(v3 + 40) = 0xD000000000000016;
  *(v3 + 48) = 0x80000001C09CEAD0;
  *(v3 + 56) = a2;
  *(v3 + 72) = a3;
  *(v3 + 88) = xmmword_1C0975360;
  *(v3 + 104) = xmmword_1C0976120;
  *(v3 + 120) = 0x80000001C09CEAD0;
  *(v3 + 128) = xmmword_1C0982A00;
  *(v3 + 144) = 0;

  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = v4;
  *(v3 + 24) = v4;

  *(v3 + 32) = v4;
  return v3;
}

uint64_t UsoTaskBuilder_noVerb_common_RecurringDateTime.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_RecurringDateTime.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_RecurringDateTime.init()()
{
  *(v0 + 40) = 0xD000000000000018;
  *(v0 + 48) = 0x80000001C09CEB10;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0976170;
  *(v0 + 120) = 0x80000001C09CEB10;
  *(v0 + 128) = xmmword_1C0982A00;
  *(v0 + 144) = 0;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Date.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_Date.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Date.init()()
{
  *(v0 + 40) = xmmword_1C09831B0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977330;
  *(v0 + 120) = xmmword_1C09831C0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_summarise_common_Message.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_summarise_common_Message.init()();
  return v0;
}

uint64_t UsoTaskBuilder_open_common_Message.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_open_common_Message.init()();
  return v0;
}

uint64_t UsoTaskBuilder_open_common_Message.init()()
{
  *(v0 + 40) = xmmword_1C09831D0;
  *(v0 + 56) = xmmword_1C0982B60;
  *(v0 + 72) = xmmword_1C0982B70;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977350;
  *(v0 + 120) = xmmword_1C09831E0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_previous_common_Message.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_previous_common_Message.init()();
  return v0;
}

uint64_t sub_1C0693088(uint64_t a1, __n128 a2, __n128 a3, __n128 a4)
{
  *(v4 + 40) = a2;
  *(v4 + 56) = xmmword_1C0982BE0;
  *(v4 + 72) = 0xD000000000000012;
  *(v4 + 80) = 0x80000001C09CDCE0;
  *(v4 + 88) = xmmword_1C0975360;
  *(v4 + 104) = a3;
  *(v4 + 120) = a4;
  *(v4 + 136) = xmmword_1C0982D00;

  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v4 + 16) = v5;
  *(v4 + 24) = v5;

  *(v4 + 32) = v5;
  return v4;
}

uint64_t UsoTaskBuilder_noVerb_common_Message.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_noVerb_common_Message.init()();
  return v0;
}

uint64_t UsoTaskBuilder_noVerb_common_Message.init()()
{
  *(v0 + 40) = xmmword_1C09831D0;
  *(v0 + 56) = xmmword_1C0975340;
  *(v0 + 72) = xmmword_1C0975350;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977350;
  *(v0 + 120) = xmmword_1C09831E0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_unreact_common_Message.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_unreact_common_Message.init()();
  return v0;
}

uint64_t UsoTaskBuilder_unreact_common_Message.init()()
{
  *(v0 + 40) = xmmword_1C09831D0;
  *(v0 + 56) = xmmword_1C09831F0;
  *(v0 + 72) = 0xD00000000000001DLL;
  *(v0 + 80) = 0x80000001C09CEB30;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977350;
  *(v0 + 120) = xmmword_1C09831E0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t UsoTaskBuilder_check_common_Message.__allocating_init()()
{
  v0 = swift_allocObject();
  UsoTaskBuilder_check_common_Message.init()();
  return v0;
}