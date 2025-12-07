uint64_t sub_181F341E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_182AD2258();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 24) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for NWActorID(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839810, &qword_182AED938);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_181F34A98()
{

  return swift_deallocObject();
}

uint64_t sub_181F34AE0()
{

  return swift_deallocObject();
}

uint64_t sub_181F34B90()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5C0, &qword_182AF7AB0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_181F34BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_182AD21E8();
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

uint64_t sub_181F34C80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_182AD21E8();
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

uint64_t sub_181F34E7C()
{

  return swift_deallocObject();
}

uint64_t sub_181F34EC4()
{

  return swift_deallocObject();
}

uint64_t sub_181F34FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0, &unk_182AF9540);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360, &unk_182AEB460);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 64);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_181F35108(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0, &unk_182AF9540);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360, &unk_182AEB460);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 64);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_181F35244()
{

  return swift_deallocObject();
}

uint64_t sub_181F35284()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_181F352C0()
{
  MEMORY[0x1865DF630](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_181F35328()
{

  return swift_deallocObject();
}

uint64_t sub_181F35370()
{

  return swift_deallocObject();
}

uint64_t sub_181F353B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F353F0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F35454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteCallEnvelope(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_181F354C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteCallEnvelope(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_181F35530()
{

  return swift_deallocObject();
}

uint64_t sub_181F35568()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790, &qword_182AE5F68);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  sub_181C1F2E4(*(v0 + v4 + 8), *(v0 + v4 + 16));

  return swift_deallocObject();
}

uint64_t sub_181F35658()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_181F35694()
{
  v1 = (type metadata accessor for RemoteCallEnvelope(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = sub_182AD2258();
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);
  v6 = v3 + v1[7];

  v7 = type metadata accessor for NWActorID(0);
  v5(v6 + *(v7 + 20), v4);

  return swift_deallocObject();
}

uint64_t sub_181F35808@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_udp_options_get_prefer_no_checksum(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_181F3589C()
{

  return swift_deallocObject();
}

uint64_t sub_181F35908()
{

  return swift_deallocObject();
}

uint64_t sub_181F35950()
{

  return swift_deallocObject();
}

uint64_t sub_181F35B38(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_182AD2258();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_181F35BE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_182AD2258();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_181F35C88()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &type metadata for FrameArray;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

_BYTE *sub_181F35CC0(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*result == 1)
  {
    if ((*(a2 + 8) & 8) != 0)
    {
      return result;
    }

    v3 = v2 | 8;
  }

  else
  {
    if ((*(a2 + 8) & 8) == 0)
    {
      return result;
    }

    v3 = v2 & 0xF7;
  }

  *(a2 + 8) = v3;
  return result;
}

_BYTE *sub_181F35CFC(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (*result == 1)
  {
    if ((*(a2 + 32) & 8) != 0)
    {
      return result;
    }

    v3 = v2 | 8;
  }

  else
  {
    if ((*(a2 + 32) & 8) == 0)
    {
      return result;
    }

    v3 = v2 & 0xF7;
  }

  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_181F35D28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_181F35D70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

__n128 sub_181F35DB4@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  result = *(v3 + 24);
  *a2 = result;
  a2[1].n128_u64[0] = v4;
  return result;
}

__n128 sub_181F35E04(__n128 *a1, uint64_t *a2)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = *a2;
  swift_beginAccess();
  result = v5;
  *(v3 + 24) = v5;
  *(v3 + 40) = v2;
  return result;
}

__n128 sub_181F35E58@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[4].n128_u64[0];
  result = v3[3];
  *a2 = result;
  a2[1].n128_u64[0] = v4;
  return result;
}

__n128 sub_181F35EA8(__n128 *a1, __n128 **a2)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = *a2;
  swift_beginAccess();
  result = v5;
  v3[3] = v5;
  v3[4].n128_u64[0] = v2;
  return result;
}

uint64_t sub_181F35EFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_181F35F44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 72) = v2;
  return result;
}

double sub_181F35F88@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v2 = *(*a1 + 24);
  *a2 = v3;
  a2[1] = v2;

  return result;
}

double sub_181F35FD0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v2 = *(*a1 + 24);
  *a2 = v3;
  a2[1] = v2;

  return result;
}

double sub_181F36014@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  *a2 = v3;
  a2[1] = v2;

  return result;
}

__n128 sub_181F36028@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  result = (*a1)[4];
  *a2 = result;
  return result;
}

double sub_181F3603C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 80);
  v2 = *(*a1 + 88);
  *a2 = v3;
  a2[1] = v2;

  return result;
}

double sub_181F36050@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 96);
  v2 = *(*a1 + 104);
  *a2 = v3;
  a2[1] = v2;

  return result;
}

double sub_181F36064@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 112);
  v2 = *(*a1 + 120);
  *a2 = v3;
  a2[1] = v2;

  return result;
}

double sub_181F360A0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 136);
  v2 = *(*a1 + 144);
  *a2 = v3;
  a2[1] = v2;

  return result;
}

double sub_181F36240@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v3 = a2;
  }

  *a3 = a1;
  *(a3 + 8) = v3;

  return result;
}

uint64_t sub_181F362A8()
{

  return swift_deallocObject();
}

double sub_181F362E0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);

  return result;
}

uint64_t sub_181F36330@<X0>(uint64_t *a1@<X8>)
{
  result = QUIC.Stream.streamApplicationErrorCode.getter();
  *a1 = result;
  return result;
}

__n128 sub_181F36390(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_181F3639C@<D0>(uint64_t a1@<X8>)
{
  NetworkConnection<>.applicationError.getter(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

nw_protocol_metadata_t sub_181F363E0(__int128 *a1)
{
  v1 = *(a1 + 2);
  v3 = *a1;
  v4 = v1;

  return NetworkConnection<>.applicationError.setter(&v3);
}

nw_protocol_metadata_t sub_181F36438@<X0>(nw_protocol_metadata_t *a1@<X8>)
{
  result = NetworkConnection<>.localMaxStreamsUnidirectional.getter();
  *a1 = result;
  return result;
}

nw_protocol_metadata_t sub_181F3649C@<X0>(nw_protocol_metadata_t *a1@<X8>)
{
  result = NetworkConnection<>.localMaxStreamsBidirectional.getter();
  *a1 = result;
  return result;
}

nw_protocol_metadata_t sub_181F36580@<X0>(nw_protocol_metadata_t *a1@<X8>)
{
  result = NetworkChannel<>.streamApplicationErrorCode.getter();
  *a1 = result;
  return result;
}

uint64_t sub_181F365EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_182AD35D8();
  v6 = *(*(v5 - 8) + 48);

  return v6(a1, a2, v5);
}

uint64_t sub_181F3665C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_182AD35D8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

uint64_t sub_181F366F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_181F3672C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_181F36780()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790, &qword_182AE5F68);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_181F36858()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F36898()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F368D8()
{
  v1 = *(v0 + 56);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 40);
  v7 = v1;
  type metadata accessor for Coder.Metadata(255, &v4);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v2 = sub_182AD34D8();
  (*(*(v2 - 8) + 8))(v0 + ((*(*(v2 - 8) + 80) + 64) & ~*(*(v2 - 8) + 80)), v2);
  return swift_deallocObject();
}

uint64_t sub_181F36A10()
{

  return swift_deallocObject();
}

uint64_t sub_181F36A70()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_181F36B08()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F36B58()
{

  return swift_deallocObject();
}

uint64_t sub_181F36B90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B098, &qword_182AFE2E0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F36C68()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F36CB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B098, &qword_182AFE2E0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F36D8C()
{
  v1 = type metadata accessor for NWPath(0);
  v2 = (*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + *(v1 + 44);
  v4 = type metadata accessor for NWEndpoint(0);
  v5 = *(*(v4 - 8) + 48);
  if (!v5(v3, 1, v4))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
        }
      }

      else
      {
        sub_181E605C8(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 2:

          break;
        case 3:
          v10 = sub_182AD2058();
          (*(*(v10 - 8) + 8))(v3, v10);
          break;
        case 4:
          swift_unknownObjectRelease();
          break;
      }
    }
  }

  v6 = v0 + v2 + *(v1 + 48);
  if (!v5(v6, 1, v4))
  {
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 1)
    {
      if (v9)
      {
        if (v9 == 1)
        {
        }
      }

      else
      {
        sub_181E605C8(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24));
      }
    }

    else
    {
      switch(v9)
      {
        case 2:

          break;
        case 3:
          v11 = sub_182AD2058();
          (*(*(v11 - 8) + 8))(v6, v11);
          break;
        case 4:
          swift_unknownObjectRelease();
          break;
      }
    }
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F37090()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F370D8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F37144()
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v1 = sub_182AD34D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F37240()
{

  return swift_deallocObject();
}

uint64_t sub_181F37278()
{
  type metadata accessor for JSON.Metadata(255, v0[4], v0[6], v0[7]);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v1 = sub_182AD34D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F37358()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v1 = sub_182AD34D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F3741C()
{

  return swift_deallocObject();
}

uint64_t sub_181F37454()
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v1 = sub_182AD34D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F37550()
{
  v1 = sub_182AD35A8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_181F37618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Framer.Metadata(255, *(v4 + 16), *(v4 + 32), a4);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v5 = sub_182AD34D8();
  (*(*(v5 - 8) + 8))(v4 + ((*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_181F37710(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_181F37724()
{
  v1 = *(v0 + 64);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 48);
  v7 = v1;
  type metadata accessor for Coder.Metadata(255, &v4);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v2 = sub_182AD34D8();
  (*(*(v2 - 8) + 8))(v0 + ((*(*(v2 - 8) + 80) + 80) & ~*(*(v2 - 8) + 80)), v2);
  return swift_deallocObject();
}

uint64_t sub_181F37820()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_181F37884()
{

  return swift_deallocObject();
}

uint64_t sub_181F378BC()
{

  return swift_deallocObject();
}

uint64_t sub_181F378F4()
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v1 = sub_182AD34D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F37CA4()
{

  return swift_deallocObject();
}

uint64_t sub_181F37CDC()
{

  return swift_deallocObject();
}

uint64_t sub_181F382C4@<X0>(_BYTE *a1@<X8>)
{
  result = nw_tcp_options_get_no_delay();
  *a1 = result;
  return result;
}

uint64_t sub_181F38308@<X0>(_BYTE *a1@<X8>)
{
  result = nw_tcp_options_get_no_push();
  *a1 = result;
  return result;
}

uint64_t sub_181F3834C@<X0>(_BYTE *a1@<X8>)
{
  result = nw_tcp_options_get_no_options();
  *a1 = result;
  return result;
}

uint64_t sub_181F38390@<X0>(_BYTE *a1@<X8>)
{
  result = nw_tcp_options_get_enable_keepalive();
  *a1 = result;
  return result;
}

uint64_t sub_181F383D4@<X0>(void *a2@<X8>)
{
  result = nw_tcp_options_get_keepalive_count();
  *a2 = result;
  return result;
}

uint64_t sub_181F38434@<X0>(void *a2@<X8>)
{
  result = nw_tcp_options_get_keepalive_idle_time();
  *a2 = result;
  return result;
}

uint64_t sub_181F38494@<X0>(void *a2@<X8>)
{
  result = nw_tcp_options_get_keepalive_interval();
  *a2 = result;
  return result;
}

uint64_t sub_181F384F4@<X0>(void *a1@<X8>)
{
  result = nw_tcp_options_get_maximum_segment_size();
  *a1 = result;
  return result;
}

uint64_t sub_181F38554@<X0>(void *a1@<X8>)
{
  result = nw_tcp_options_get_connection_timeout();
  *a1 = result;
  return result;
}

uint64_t sub_181F385B4@<X0>(void *a1@<X8>)
{
  result = nw_tcp_options_get_persist_timeout();
  *a1 = result;
  return result;
}

uint64_t sub_181F38614@<X0>(void *a1@<X8>)
{
  result = nw_tcp_options_get_retransmit_connection_drop_time();
  *a1 = result;
  return result;
}

uint64_t sub_181F38674@<X0>(_BYTE *a1@<X8>)
{
  result = nw_tcp_options_get_retransmit_fin_drop();
  *a1 = result;
  return result;
}

uint64_t sub_181F386B8@<X0>(_BYTE *a1@<X8>)
{
  result = nw_tcp_options_get_disable_ack_stretching();
  *a1 = result;
  return result;
}

uint64_t sub_181F386FC@<X0>(_BYTE *a1@<X8>)
{
  result = nw_tcp_options_get_enable_fast_open();
  *a1 = result;
  return result;
}

uint64_t sub_181F38740@<X0>(_BYTE *a1@<X8>)
{
  result = nw_tcp_options_get_disable_ecn();
  *a1 = result;
  return result;
}

uint64_t sub_181F38788()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_181F387C4()
{

  return swift_deallocObject();
}

uint64_t sub_181F38858(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for NWEndpoint(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 28)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_181F388FC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = type metadata accessor for NWEndpoint(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_181F38A18()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &unk_1EEFD0728;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_181F38A54()
{

  return swift_deallocObject();
}

uint64_t sub_181F38A9C()
{

  return swift_deallocObject();
}

double sub_181F38B50@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  HTTPResponse.status.getter(&v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_181F38B9C(__int128 *a1)
{
  v1 = *(a1 + 2);
  v3 = *a1;
  v4 = v1;

  return HTTPResponse.status.setter(&v3);
}

uint64_t sub_181F38BF0()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_181F38C48()
{

  return swift_deallocObject();
}

uint64_t sub_181F38CF4()
{

  return swift_deallocObject();
}

uint64_t sub_181F38D2C()
{

  return swift_deallocObject();
}

uint64_t sub_181F38DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NWBrowser.Result(0);
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

uint64_t sub_181F38EB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NWBrowser.Result(0);
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

_DWORD *sub_181F38F6C@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  if (result)
  {
    *a2 = *result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_181F38F80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B450, &unk_182B00970);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_181F38FF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B450, &unk_182B00970);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_181F39074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_182AD2B78();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B450, &unk_182B00970);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_181F39170(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_182AD2B78();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B450, &unk_182B00970);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_181F39278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_182AD2B78();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B450, &unk_182B00970);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_181F39390(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_182AD2B78();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B450, &unk_182B00970);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_181F394C4()
{

  return swift_deallocObject();
}

uint64_t sub_181F394FC()
{

  return swift_deallocObject();
}

void sub_181F39D9C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

uint64_t sub_181F39DB8()
{

  return swift_deallocObject();
}

uint64_t sub_181F39DF0()
{
  sub_181C1F2E4(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_181F39E28@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  result = NWTXTRecord.subscript.getter(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_181F39E80()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_181F39EBC()
{

  return swift_deallocObject();
}

uint64_t sub_181F39F54@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_181F39FC0()
{

  return swift_deallocObject();
}

uint64_t sub_181F3A00C()
{

  return swift_deallocObject();
}

uint64_t sub_181F3A080()
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v1 = sub_182AD34D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_181F3A190()
{
  v1 = type metadata accessor for NWPath(0);
  v2 = (*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + *(v1 + 44);
  v4 = type metadata accessor for NWEndpoint(0);
  v5 = *(*(v4 - 8) + 48);
  if (!v5(v3, 1, v4))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
        }
      }

      else
      {
        sub_181E605C8(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 2:

          break;
        case 3:
          v10 = sub_182AD2058();
          (*(*(v10 - 8) + 8))(v3, v10);
          break;
        case 4:
          swift_unknownObjectRelease();
          break;
      }
    }
  }

  v6 = v0 + v2 + *(v1 + 48);
  if (!v5(v6, 1, v4))
  {
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 1)
    {
      if (v9)
      {
        if (v9 == 1)
        {
        }
      }

      else
      {
        sub_181E605C8(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24));
      }
    }

    else
    {
      switch(v9)
      {
        case 2:

          break;
        case 3:
          v11 = sub_182AD2058();
          (*(*(v11 - 8) + 8))(v6, v11);
          break;
        case 4:
          swift_unknownObjectRelease();
          break;
      }
    }
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F3A5D0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_181F3A608()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

__n128 sub_181F3A6D0@<Q0>(uint64_t a1@<X8>)
{
  ProtocolOptions<>.tlsOptions.getter(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_181F3A724(uint64_t a1)
{
  v2 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v2;
  v7 = *(a1 + 64);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  sub_1820752BC(v6, v5);
  return ProtocolOptions<>.tlsOptions.setter(a1);
}

uint64_t sub_181F3A79C()
{

  return swift_deallocObject();
}

uint64_t sub_181F3A7E4()
{

  return swift_deallocObject();
}

void sub_181F3A8B4(uint64_t a1@<X0>, void *a2@<X8>)
{

  sub_18228AA98(a1, a2);
}

BOOL sub_181F3B05C@<W0>(nw_proxy_config_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_proxy_config_get_failover_allowed(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_181F3B098@<X0>(uint64_t *a1@<X8>)
{
  result = ProxyConfiguration.matchDomains.getter();
  *a1 = result;
  return result;
}

uint64_t sub_181F3B100@<X0>(uint64_t *a1@<X8>)
{
  result = ProxyConfiguration.excludedDomains.getter();
  *a1 = result;
  return result;
}

char *sub_181F3B168@<X0>(char **a1@<X8>)
{
  result = NSURLSessionConfiguration.proxyConfigurations.getter();
  *a1 = result;
  return result;
}

uint64_t sub_181F3B1FC()
{

  return swift_deallocObject();
}

uint64_t sub_181F3B244()
{

  return swift_deallocObject();
}

void *sub_181F3B46C@<X0>(void *result@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v3 = 0;
  if (*result && *a2 <= 0x4Du && (v3 = *(*result + 8 * *a2), v3 < 0))
  {
    __break(1u);
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

void *sub_181F3B498(void *result, void *a2, unsigned int *a3)
{
  if (*a2)
  {
    v3 = *a3;
    if (v3 <= 0x4D)
    {
      if ((*result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        *(*a2 + 8 * v3) = *result;
      }
    }
  }

  return result;
}

uint64_t sub_181F3B4D0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {
    result = sub_181A41ED0();
    if (v5)
    {
      v4 = *(*(v3 + 56) + 8 * result);
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4;
  return result;
}

__n128 sub_181F3B530@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = *(a1 + 144);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *a1;
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  return result;
}

__n128 sub_181F3B564(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = *(a1 + 144);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *a1;
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_181F3B598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_182AD2258();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for NWActorID(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_181F3B6A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_182AD2258();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for NWActorID(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_181F3B7B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_182AD2258();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_181F3B820(uint64_t a1, uint64_t a2)
{
  v4 = sub_182AD2258();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

double sub_181F3B8D4@<D0>(_OWORD *a1@<X8>)
{
  ProtocolOptions.protocolInstance.getter(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_181F3B910(uint64_t *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  sub_1822B3360(v3[0], v1);
  return ProtocolOptions.protocolInstance.setter(v3);
}

__n128 sub_181F3B960(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_181F3B96C@<X0>(uint64_t *a1@<X8>)
{
  result = ProtocolOptions.protocolHandle.getter();
  *a1 = result;
  return result;
}

uint64_t sub_181F3B9D0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for NWActorID(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_181F3BA7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NWActorID(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_181F3BB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_182AD2258();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = ((*(a1 + *(a3 + 24) + 24) >> 60) & 3 | (4 * *(a1 + *(a3 + 24) + 32))) ^ 0x3FF;
    if (v10 >= 0x3FB)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }
}

uint64_t sub_181F3BBE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_182AD2258();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = a1 + *(a4 + 24);
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *(v11 + 24) = (~a2 & 3) << 60;
    *(v11 + 32) = ~a2 >> 2;
  }

  return result;
}

uint64_t sub_181F3BCD0()
{

  return swift_deallocObject();
}

uint64_t sub_181F3BD18()
{

  return swift_deallocObject();
}

uint64_t sub_181F3BD50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_181F3BD98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_181F3BEDC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for RemoteCallEnvelope(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_181F3BF88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RemoteCallEnvelope(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

double sub_181F3C064@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 56);
  v2 = *(*a1 + 64);
  *a2 = v3;
  a2[1] = v2;

  return result;
}

uint64_t sub_181F3C1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NWActorDiscoveryMechanism.Target(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83C088, &unk_182B082E0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_181F3C2C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NWActorDiscoveryMechanism.Target(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83C088, &unk_182B082E0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_181F3CF20(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

BOOL sub_181F3CFBC(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_181F3CFEC@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_181F3D018@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t getEnumTagSinglePayload for MultipathSpaceID(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MultipathSpaceID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_181F3D150(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181F3D16C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_181F3D1B4@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_181F3D1E4(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

_WORD *sub_181F3D214@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

BOOL sub_181F3D290(_WORD *a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int16 *sub_181F3D2C0@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

unsigned __int16 *sub_181F3D2EC@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

void *sub_181F3D3E0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void *sub_181F3D400@<X0>(unint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    v4 = a1 + 8;
    if (a1 < 0xFFFFFFFFFFFFFFF8)
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_8:
    v4 = qword_182AF7938[a1];
    goto LABEL_9;
  }

  if (a2 != 1)
  {
    goto LABEL_8;
  }

  if (a1)
  {
    v4 = 49;
  }

  else
  {
    v4 = 48;
  }

LABEL_9:
  result = InPlaceSerializer.vle(_:)(v4, &v7);
  v6 = v8;
  *a3 = v7;
  *(a3 + 8) = v6;
  return result;
}

double sub_181F3D4A8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

void sub_181F3D4C0(uint64_t result, void *a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_181F68E5C(result, a2, a3);
  }
}

double sub_181F3D4E8()
{
  sub_181F3D244();

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_181F3D56C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 624))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181F3D58C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 616) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
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

  *(result + 624) = v3;
  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AgentResult(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AgentResult(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EthernetAddress(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EthernetAddress(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 6) = v3;
  return result;
}

uint64_t __swift_memcpy12_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VSOCKAddress(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VSOCKAddress(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
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

__n128 __swift_memcpy56_4(uint64_t a1, uint64_t a2)
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

uint64_t sub_181F3D8E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181F3D908(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 56) = v3;
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_181F3D978(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181F3D998(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
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

  *(result + 72) = v3;
  return result;
}

uint64_t sub_181F3DADC(uint64_t a1, uint64_t a2)
{
  sub_182AD44E8();
  swift_getWitnessTable();
  sub_182AD2368();
  return sub_182AD4558();
}

uint64_t sub_181F3DB4C(uint64_t a1, id *a2)
{
  result = sub_182AD2F68();
  *a2 = 0;
  return result;
}

uint64_t sub_181F3DBC4(uint64_t a1, id *a2)
{
  v3 = sub_182AD2F78();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_181F3DC44@<X0>(uint64_t *a1@<X8>)
{
  sub_182AD2F88();
  v2 = sub_182AD2F58();

  *a1 = v2;
  return result;
}

uint64_t sub_181F3DC88()
{
  v0 = sub_182AD2F88();
  v1 = MEMORY[0x1865D9D70](v0);

  return v1;
}

uint64_t sub_181F3DCC4(uint64_t a1)
{
  sub_182AD2F88();
  sub_182AD30E8();
}

uint64_t sub_181F3DD18(uint64_t a1)
{
  sub_182AD2F88();
  sub_182AD44E8();
  sub_182AD30E8();
  v1 = sub_182AD4558();

  return v1;
}

uint64_t sub_181F3DD8C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_182AD2358();
}

uint64_t sub_181F3DE40(void *a1, uint64_t *a2)
{
  v2 = sub_182AD2F88();
  v4 = v3;
  if (v2 == sub_182AD2F88() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_182AD4268();
  }

  return v7 & 1;
}

uint64_t sub_181F3DF10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_181F3DF58@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_182AD2F58();

  *a2 = v3;
  return result;
}

uint64_t sub_181F3DFA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_182AD2F88();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy40_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_181F3DFF4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181F3E014(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Recovery.PathState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Recovery.PathState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_181F3E100(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181F3E120(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 96) = v3;
  return result;
}

uint64_t sub_181F3E1F0(uint64_t a1)
{
  v2 = sub_181F3DF10(&qword_1EA838490, type metadata accessor for URLResourceKey, &unk_182AE38F4);
  v3 = sub_181F3DF10(&qword_1EA838498, type metadata accessor for URLResourceKey, &unk_182AE3894);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_181F3E410(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 272))
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

uint64_t sub_181F3E46C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy21_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Interface.NetworkSignature(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Interface.NetworkSignature(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
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

  *(result + 21) = v3;
  return result;
}

uint64_t sub_181F3E618()
{
  v1 = 0x6669636570736E75;
  v2 = 0x6D6165727473;
  if (*v0 != 2)
  {
    v2 = 0x6567617373656DLL;
  }

  if (*v0)
  {
    v1 = 0x6D61726761746164;
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

uint64_t sub_181F3E6D0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_181E7EB7C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_181F3E71C()
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

uint64_t sub_181F3E7B4(uint64_t a1, unsigned __int8 a2, __n128 a3)
{
  sub_182AD30E8();
}

uint64_t sub_181F3E900(uint64_t a1, unsigned __int8 a2, __n128 a3)
{
  sub_182AD30E8();
}

uint64_t sub_181F3EA84(uint64_t a1)
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

uint64_t sub_181F3EAD8()
{
  v1 = *v0;
  v2 = 0x64656C6261736964;
  v3 = 0x7461676572676761;
  v4 = 0x6142746567726174;
  if (v1 != 4)
  {
    v4 = 0x646E614865727570;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7265766F646E6168;
  if (v1 != 1)
  {
    v5 = 0x7463617265746E69;
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

uint64_t sub_181F3EBB0()
{
  v1 = 0x746C7561666564;
  v2 = 0x74696269686F7270;
  if (*v0 != 2)
  {
    v2 = 0x6574736973726570;
  }

  if (*v0)
  {
    v1 = 0x776F6C6C61;
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

uint64_t sub_181F3EC2C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_181F48244(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_181F3EC58()
{
  v1 = *v0;
  v2 = 0x6666652074736562;
  v3 = 0xD000000000000011;
  v4 = 0x69736E6F70736572;
  if (v1 != 4)
  {
    v4 = 0x6E696C616E676973;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x756F72676B636162;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t _s7Network10NWEndpointO11ScreenStateO9hashValueSivg_0()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t sub_181F3ED80(uint64_t a1)
{
  v2 = *v1;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v2);
  return sub_182AD4558();
}

unint64_t sub_181F3EDC4()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x70752069662D6977;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_181F3EE28()
{
  v1 = 1919251317;
  if (*v0 != 1)
  {
    v1 = 0x65746973626577;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65706F6C65766564;
  }
}

uint64_t sub_181F3EE80()
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

uint64_t sub_181F3EEC8(uint64_t a1)
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

uint64_t sub_181F3EF0C()
{
  v1 = 0x726566657270;
  if (*v0 != 1)
  {
    v1 = 0x64696F7661;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_181F3EF64()
{
  sub_182AD44E8();
  swift_getObjectType();
  sub_182AD2EB8();
  return sub_182AD4558();
}

uint64_t sub_181F3F014(uint64_t a1)
{
  sub_182AD44E8();
  swift_getObjectType();
  sub_182AD2EB8();
  return sub_182AD4558();
}

uint64_t sub_181F3F06C(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v4 = a2[1];
  ObjectType = swift_getObjectType();
  v7 = 0;
  return (*(v2 + 24))(v3, v4, &v7, ObjectType, v2) & 1;
}

void sub_181F3F0D8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*(v1 + 16))
  {
    *v1 = v2;
    *(v1 + 8) = v3;
    *(v1 + 16) = 0;
  }

  else if (*(v1 + 320))
  {
    v4 = *sub_182AD2388();

    *(v1 + 320) = v4;
    v5 = *(v4 + 24);
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v1 + 320);
    if (*(v8 + 16) < v6 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181B8477C(isUniquelyReferenced_nonNull_native, v6, 0);
      v8 = *(v1 + 320);
    }

    sub_181B855B4((v8 + 16), v8 + 40, v2, v3);
  }

  v9 = *(v1 + 288);
  if (!v9 || *(v9 + 48) < 2uLL)
  {
    return;
  }

  if (*(v9 + 64))
  {
    v10 = *(v9 + 64);
  }

  else
  {
    v10 = *sub_182AD2388();
  }

  v11 = *(v10 + 24);
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v13 = swift_isUniquelyReferenced_nonNull_native();
  if (*(v10 + 16) < v12 || (v13 & 1) == 0)
  {
    sub_181B8477C(v13, v12, 0);
  }

  sub_181B855B4((v10 + 16), v10 + 40, v2, v3);
  sub_181F48984(v10);
}

uint64_t sub_181F3F258@<X0>(_DWORD *a2@<X8>)
{
  v3 = sub_1822C135C();

  *a2 = v3;
  return result;
}

uint64_t Parameters.server.setter(uint64_t result)
{
  v2 = *(v1 + 120);
  if (result)
  {
    if ((v2 & 0x200) == 0)
    {
      *(v1 + 120) = v2 | 0x200;
    }

    *(v1 + 210) = 0;
    if ((*(v1 + 124) & 6) != 4)
    {
      *(v1 + 124) = ~*(v1 + 124) & 4 | *(v1 + 124) & 0xFFFFFFFD;
    }
  }

  else if ((v2 & 0x200) != 0)
  {
    *(v1 + 120) = v2 & 0xFFFFFDFF;
  }

  return result;
}

uint64_t *(*Parameters.server.modify(uint64_t a1))(uint64_t *result, char a2)
{
  *a1 = v1;
  v2 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x200) != 0;
  return sub_181F3F328;
}

uint64_t *sub_181F3F328(uint64_t *result, char a2)
{
  if (a2)
  {
    return Parameters.server.setter(*(result + 12));
  }

  v2 = *(result + 2);
  if (*(result + 12))
  {
    v3 = *result;
    if ((v2 & 0x200) == 0)
    {
      *(v3 + 120) = v2 | 0x200;
    }

    *(v3 + 210) = 0;
    if ((*(v3 + 124) & 6) != 4)
    {
      *(v3 + 124) = ~*(v3 + 124) & 4 | *(v3 + 124) & 0xFFFFFFFD;
    }
  }

  else if ((v2 & 0x200) != 0)
  {
    *(*result + 120) = v2 & 0xFFFFFDFF;
  }

  return result;
}

uint64_t sub_181F3F3B4()
{
  sub_182AD44E8();
  sub_182AD4538();
  return sub_182AD4558();
}

uint64_t sub_181F3F3FC(uint64_t a1)
{
  sub_182AD44E8();
  sub_182AD4538();
  return sub_182AD4558();
}

uint64_t Parameters.defaultStack.setter(uint64_t a1)
{

  *(v1 + 344) = a1;
  return result;
}

uint64_t sub_181F3F49C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  if (!a2)
  {
    sub_182AD4518();
    if (a3)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

  sub_182AD4518();
  MEMORY[0x1865DB070](a2[3]);
  v9 = a2[4];
  if (a2[2] >= a2[3] + v9)
  {
    v10 = a2[3] + v9;
  }

  else
  {
    v10 = a2[2];
  }

  v18 = a2[4];
  v20 = v10;

  while (1)
  {
    if (v9 != v10)
    {
      goto LABEL_6;
    }

    if ((sub_181F47FDC() & 1) == 0)
    {
      break;
    }

    v9 = v18;
    v10 = v20;
LABEL_6:
    v18 = v9 + 1;
    swift_getObjectType();
    sub_182AD2EB8();
    ++v9;
  }

  if (a3)
  {
LABEL_11:
    sub_182AD4518();
    MEMORY[0x1865DB070](a3[3]);
    v11 = a3[4];
    if (a3[2] >= a3[3] + v11)
    {
      v12 = a3[3] + v11;
    }

    else
    {
      v12 = a3[2];
    }

    v19 = a3[4];
    v21 = v12;

    while (1)
    {
      if (v11 == v12)
      {
        if ((sub_181F47FDC() & 1) == 0)
        {

          if (a4)
          {
            goto LABEL_20;
          }

LABEL_24:
          sub_182AD4518();
          if (!a5)
          {
            return sub_182AD4518();
          }

LABEL_21:
          sub_182AD4518();
          hash = nw_proxy_config_get_hash(a5);
          return MEMORY[0x1865DB070](hash);
        }

        v11 = v19;
        v12 = v21;
      }

      v19 = v11 + 1;
      v13 = swift_unknownObjectRetain();
      v14 = nw_proxy_config_get_hash(v13);
      MEMORY[0x1865DB070](v14);
      swift_unknownObjectRelease();
      ++v11;
    }
  }

LABEL_23:
  sub_182AD4518();
  if (!a4)
  {
    goto LABEL_24;
  }

LABEL_20:
  sub_182AD4518();
  v15 = nw_proxy_config_get_hash(a4);
  MEMORY[0x1865DB070](v15);
  if (a5)
  {
    goto LABEL_21;
  }

  return sub_182AD4518();
}

uint64_t sub_181F3F6A0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_182AD44E8();
  sub_181F3F49C(v6, v1, v2, v4, v3);
  return sub_182AD4558();
}

uint64_t sub_181F3F70C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_182AD44E8();
  sub_181F3F49C(v7, v2, v3, v5, v4);
  return sub_182AD4558();
}

uint64_t sub_181F3F784()
{
  v1 = *v0;
  sub_182AD44E8();
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  sub_181F3F49C(v7, v2, v3, v4, v5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return sub_182AD4558();
}

uint64_t sub_181F3F828(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  sub_181F3F49C(a1, v4, v5, v6, v7);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_181F3F8C8(uint64_t a1)
{
  v2 = *v1;
  sub_182AD44E8();
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  sub_181F3F49C(v8, v3, v4, v5, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return sub_182AD4558();
}

uint64_t sub_181F3F968(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(*a2 + 16);
  v7 = *(*a2 + 24);
  v8 = *(*a2 + 32);
  v9 = *(*a2 + 40);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v10 = sub_181F3F498(v2, v3, v4, v5, v6, v7, v8, v9);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v10 & 1;
}

uint64_t sub_181F3FA68()
{
  v1 = *v0;
  sub_182AD44E8();
  sub_182AD4518();
  if (v1)
  {
    v2 = v1[2];
    v3 = v1[3];
    v4 = v1[4];
    v5 = v1[5];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_181F3F49C(v7, v2, v3, v4, v5);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return sub_182AD4558();
}

uint64_t sub_181F3FB28(uint64_t a1)
{
  v3 = *v1;
  if (!*v1)
  {
    return sub_182AD4518();
  }

  sub_182AD4518();
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  sub_181F3F49C(a1, v4, v5, v6, v7);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_181F3FBF8(uint64_t a1)
{
  v2 = *v1;
  sub_182AD44E8();
  sub_182AD4518();
  if (v2)
  {
    v3 = v2[2];
    v4 = v2[3];
    v5 = v2[4];
    v6 = v2[5];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_181F3F49C(v8, v3, v4, v5, v6);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return sub_182AD4558();
}

uint64_t sub_181F3FCC0()
{
  v1 = *v0;
  sub_182AD44E8();
  v2 = xpc_hash(v1);
  MEMORY[0x1865DB070](v2);
  return sub_182AD4558();
}

uint64_t sub_181F3FD3C(uint64_t a1)
{
  v2 = *v1;
  sub_182AD44E8();
  v3 = xpc_hash(v2);
  MEMORY[0x1865DB070](v3);
  return sub_182AD4558();
}

void sub_181F3FDA4(char a1)
{
  v3 = *(v1 + 344);
  ProtocolStack.transport.getter(&v16);
  if ((~v17 & 0xF000000000000007) != 0)
  {
    sub_181A53008(v16, v17);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v4 = *(&xmmword_1ED411C48 + 1);
    v5 = unk_1ED411C58;
    v6 = byte_1ED411C60;
    memset(v18, 0, sizeof(v18));
    v19 = 0;
    v20 = 0x100000201;
    v7 = xmmword_1ED411C48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
    swift_allocObject();
    v8 = sub_181AAC92C(v7, v4, v5, v6, v18);
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    *(v3 + 32) = v8;
    *(v3 + 40) = 0x2000000000000000;
    sub_181F49A24(v4, v5, v6);
    sub_181A5301C(v9, v10);
  }

  ProtocolStack.transport.getter(&v16);
  v11 = v17;
  if ((~v17 & 0xF000000000000007) != 0)
  {
    v12 = v16;
    if (v17 >> 61 == 1)
    {
      v13 = v16 + *(*v16 + 128);
      swift_beginAccess();
      if (*(v13 + 40) == 2)
      {
        __break(1u);
        return;
      }

      v14 = HIDWORD(*(v13 + 40));
      if (a1)
      {
        if ((v14 & 0x2000) == 0)
        {
          v15 = v14 | 0x2000;
LABEL_14:
          *(v13 + 44) = v15;
        }
      }

      else if ((v14 & 0x2000) != 0)
      {
        v15 = v14 & 0xFFFFDFFF;
        goto LABEL_14;
      }
    }

    sub_181A53008(v12, v11);
  }
}

void sub_181F3FF68(char a1)
{
  v3 = *(v1 + 344);
  ProtocolStack.transport.getter(&v16);
  if ((~v17 & 0xF000000000000007) != 0)
  {
    sub_181A53008(v16, v17);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v4 = *(&xmmword_1ED411C48 + 1);
    v5 = unk_1ED411C58;
    v6 = byte_1ED411C60;
    memset(v18, 0, sizeof(v18));
    v19 = 0;
    v20 = 0x100000201;
    v7 = xmmword_1ED411C48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
    swift_allocObject();
    v8 = sub_181AAC92C(v7, v4, v5, v6, v18);
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    *(v3 + 32) = v8;
    *(v3 + 40) = 0x2000000000000000;
    sub_181F49A24(v4, v5, v6);
    sub_181A5301C(v9, v10);
  }

  ProtocolStack.transport.getter(&v16);
  v11 = v17;
  if ((~v17 & 0xF000000000000007) != 0)
  {
    v12 = v16;
    if (v17 >> 61 == 1)
    {
      v13 = v16 + *(*v16 + 128);
      swift_beginAccess();
      if (*(v13 + 40) == 2)
      {
        __break(1u);
        return;
      }

      v14 = HIDWORD(*(v13 + 40));
      if (a1)
      {
        if ((v14 & 0x4000) == 0)
        {
          v15 = v14 | 0x4000;
LABEL_14:
          *(v13 + 44) = v15;
        }
      }

      else if ((v14 & 0x4000) != 0)
      {
        v15 = v14 & 0xFFFFBFFF;
        goto LABEL_14;
      }
    }

    sub_181A53008(v12, v11);
  }
}

void sub_181F4012C(char a1)
{
  v3 = *(v1 + 344);
  ProtocolStack.transport.getter(&v16);
  if ((~v17 & 0xF000000000000007) != 0)
  {
    sub_181A53008(v16, v17);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v4 = *(&xmmword_1ED411C48 + 1);
    v5 = unk_1ED411C58;
    v6 = byte_1ED411C60;
    memset(v18, 0, sizeof(v18));
    v19 = 0;
    v20 = 0x100000201;
    v7 = xmmword_1ED411C48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
    swift_allocObject();
    v8 = sub_181AAC92C(v7, v4, v5, v6, v18);
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    *(v3 + 32) = v8;
    *(v3 + 40) = 0x2000000000000000;
    sub_181F49A24(v4, v5, v6);
    sub_181A5301C(v9, v10);
  }

  ProtocolStack.transport.getter(&v16);
  v11 = v17;
  if ((~v17 & 0xF000000000000007) != 0)
  {
    v12 = v16;
    if (v17 >> 61 == 1)
    {
      v13 = v16 + *(*v16 + 128);
      swift_beginAccess();
      if (*(v13 + 40) == 2)
      {
        __break(1u);
        return;
      }

      v14 = HIDWORD(*(v13 + 40));
      if (a1)
      {
        if ((v14 & 1) == 0)
        {
          v15 = v14 | 1;
LABEL_14:
          *(v13 + 44) = v15;
        }
      }

      else if (v14)
      {
        v15 = v14 & 0xFFFFFFFE;
        goto LABEL_14;
      }
    }

    sub_181A53008(v12, v11);
  }
}

void sub_181F402F0(char a1)
{
  v3 = *(v1 + 344);
  ProtocolStack.transport.getter(&v16);
  if ((~v17 & 0xF000000000000007) != 0)
  {
    sub_181A53008(v16, v17);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v4 = *(&xmmword_1ED411C48 + 1);
    v5 = unk_1ED411C58;
    v6 = byte_1ED411C60;
    memset(v18, 0, sizeof(v18));
    v19 = 0;
    v20 = 0x100000201;
    v7 = xmmword_1ED411C48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
    swift_allocObject();
    v8 = sub_181AAC92C(v7, v4, v5, v6, v18);
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    *(v3 + 32) = v8;
    *(v3 + 40) = 0x2000000000000000;
    sub_181F49A24(v4, v5, v6);
    sub_181A5301C(v9, v10);
  }

  ProtocolStack.transport.getter(&v16);
  v11 = v17;
  if ((~v17 & 0xF000000000000007) != 0)
  {
    v12 = v16;
    if (v17 >> 61 == 1)
    {
      v13 = v16 + *(*v16 + 128);
      swift_beginAccess();
      if (*(v13 + 40) == 2)
      {
        __break(1u);
        return;
      }

      v14 = HIDWORD(*(v13 + 40));
      if (a1)
      {
        if ((v14 & 2) == 0)
        {
          v15 = v14 | 2;
LABEL_14:
          *(v13 + 44) = v15;
        }
      }

      else if ((v14 & 2) != 0)
      {
        v15 = v14 & 0xFFFFFFFD;
        goto LABEL_14;
      }
    }

    sub_181A53008(v12, v11);
  }
}

void sub_181F404B4(char a1)
{
  v3 = *(v1 + 344);
  ProtocolStack.transport.getter(&v16);
  if ((~v17 & 0xF000000000000007) != 0)
  {
    sub_181A53008(v16, v17);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v4 = *(&xmmword_1ED411C48 + 1);
    v5 = unk_1ED411C58;
    v6 = byte_1ED411C60;
    memset(v18, 0, sizeof(v18));
    v19 = 0;
    v20 = 0x100000201;
    v7 = xmmword_1ED411C48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
    swift_allocObject();
    v8 = sub_181AAC92C(v7, v4, v5, v6, v18);
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    *(v3 + 32) = v8;
    *(v3 + 40) = 0x2000000000000000;
    sub_181F49A24(v4, v5, v6);
    sub_181A5301C(v9, v10);
  }

  ProtocolStack.transport.getter(&v16);
  v11 = v17;
  if ((~v17 & 0xF000000000000007) != 0)
  {
    v12 = v16;
    if (v17 >> 61 == 1)
    {
      v13 = v16 + *(*v16 + 128);
      swift_beginAccess();
      if (*(v13 + 40) == 2)
      {
        __break(1u);
        return;
      }

      v14 = HIDWORD(*(v13 + 40));
      if (a1)
      {
        if ((v14 & 0x20) == 0)
        {
          v15 = v14 | 0x20;
LABEL_14:
          *(v13 + 44) = v15;
        }
      }

      else if ((v14 & 0x20) != 0)
      {
        v15 = v14 & 0xFFFFFFDF;
        goto LABEL_14;
      }
    }

    sub_181A53008(v12, v11);
  }
}

void sub_181F40678(char a1)
{
  v3 = *(v1 + 344);
  ProtocolStack.transport.getter(&v16);
  if ((~v17 & 0xF000000000000007) != 0)
  {
    sub_181A53008(v16, v17);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v4 = *(&xmmword_1ED411C48 + 1);
    v5 = unk_1ED411C58;
    v6 = byte_1ED411C60;
    memset(v18, 0, sizeof(v18));
    v19 = 0;
    v20 = 0x100000201;
    v7 = xmmword_1ED411C48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
    swift_allocObject();
    v8 = sub_181AAC92C(v7, v4, v5, v6, v18);
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    *(v3 + 32) = v8;
    *(v3 + 40) = 0x2000000000000000;
    sub_181F49A24(v4, v5, v6);
    sub_181A5301C(v9, v10);
  }

  ProtocolStack.transport.getter(&v16);
  v11 = v17;
  if ((~v17 & 0xF000000000000007) != 0)
  {
    v12 = v16;
    if (v17 >> 61 == 1)
    {
      v13 = v16 + *(*v16 + 128);
      swift_beginAccess();
      if (*(v13 + 40) == 2)
      {
        __break(1u);
        return;
      }

      v14 = HIDWORD(*(v13 + 40));
      if (a1)
      {
        if ((v14 & 0x40) == 0)
        {
          v15 = v14 | 0x40;
LABEL_14:
          *(v13 + 44) = v15;
        }
      }

      else if ((v14 & 0x40) != 0)
      {
        v15 = v14 & 0xFFFFFFBF;
        goto LABEL_14;
      }
    }

    sub_181A53008(v12, v11);
  }
}

void sub_181F4083C(int a1)
{
  v3 = *(v1 + 344);
  ProtocolStack.transport.getter(&v14);
  if ((~v15 & 0xF000000000000007) != 0)
  {
    sub_181A53008(v14, v15);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v4 = *(&xmmword_1ED411C48 + 1);
    v5 = unk_1ED411C58;
    v6 = byte_1ED411C60;
    memset(v16, 0, sizeof(v16));
    v17 = 0;
    v18 = 0x100000201;
    v7 = xmmword_1ED411C48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
    swift_allocObject();
    v8 = sub_181AAC92C(v7, v4, v5, v6, v16);
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    *(v3 + 32) = v8;
    *(v3 + 40) = 0x2000000000000000;
    sub_181F49A24(v4, v5, v6);
    sub_181A5301C(v9, v10);
  }

  ProtocolStack.transport.getter(&v14);
  v11 = v15;
  if ((~v15 & 0xF000000000000007) != 0)
  {
    v12 = v14;
    if (v15 >> 61 == 1)
    {
      v13 = v14 + *(*v14 + 128);
      swift_beginAccess();
      if (*(v13 + 40) == 2)
      {
        __break(1u);
        return;
      }

      *(v13 + 16) = a1;
    }

    sub_181A53008(v12, v11);
  }
}

void sub_181F409E0(int a1)
{
  v3 = *(v1 + 344);
  ProtocolStack.transport.getter(&v14);
  if ((~v15 & 0xF000000000000007) != 0)
  {
    sub_181A53008(v14, v15);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v4 = *(&xmmword_1ED411C48 + 1);
    v5 = unk_1ED411C58;
    v6 = byte_1ED411C60;
    memset(v16, 0, sizeof(v16));
    v17 = 0;
    v18 = 0x100000201;
    v7 = xmmword_1ED411C48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
    swift_allocObject();
    v8 = sub_181AAC92C(v7, v4, v5, v6, v16);
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    *(v3 + 32) = v8;
    *(v3 + 40) = 0x2000000000000000;
    sub_181F49A24(v4, v5, v6);
    sub_181A5301C(v9, v10);
  }

  ProtocolStack.transport.getter(&v14);
  v11 = v15;
  if ((~v15 & 0xF000000000000007) != 0)
  {
    v12 = v14;
    if (v15 >> 61 == 1)
    {
      v13 = v14 + *(*v14 + 128);
      swift_beginAccess();
      if (*(v13 + 40) == 2)
      {
        __break(1u);
        return;
      }

      *(v13 + 20) = a1;
    }

    sub_181A53008(v12, v11);
  }
}

void sub_181F40B84(char a1)
{
  v3 = *(v1 + 344);
  ProtocolStack.transport.getter(&v16);
  if ((~v17 & 0xF000000000000007) != 0)
  {
    sub_181A53008(v16, v17);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v4 = *(&xmmword_1ED411C48 + 1);
    v5 = unk_1ED411C58;
    v6 = byte_1ED411C60;
    memset(v18, 0, sizeof(v18));
    v19 = 0;
    v20 = 0x100000201;
    v7 = xmmword_1ED411C48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
    swift_allocObject();
    v8 = sub_181AAC92C(v7, v4, v5, v6, v18);
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    *(v3 + 32) = v8;
    *(v3 + 40) = 0x2000000000000000;
    sub_181F49A24(v4, v5, v6);
    sub_181A5301C(v9, v10);
  }

  ProtocolStack.transport.getter(&v16);
  v11 = v17;
  if ((~v17 & 0xF000000000000007) != 0)
  {
    v12 = v16;
    if (v17 >> 61 == 1)
    {
      v13 = v16 + *(*v16 + 128);
      swift_beginAccess();
      if (*(v13 + 40) == 2)
      {
        __break(1u);
        return;
      }

      v14 = HIDWORD(*(v13 + 40));
      if (a1)
      {
        if ((v14 & 0x200) == 0)
        {
          v15 = v14 | 0x200;
LABEL_14:
          *(v13 + 44) = v15;
        }
      }

      else if ((v14 & 0x200) != 0)
      {
        v15 = v14 & 0xFFFFFDFF;
        goto LABEL_14;
      }
    }

    sub_181A53008(v12, v11);
  }
}

uint64_t sub_181F40D48()
{
  v1 = v0;
  v2 = *(v0 + 120);
  if ((v2 & 0x20000) != 0)
  {
    *(v0 + 120) = v2 & 0xFFFDFFFF;
  }

  v3 = *(v0 + 344);
  ProtocolStack.transport.getter(&v12);
  if ((~v13 & 0xF000000000000007) != 0)
  {
    result = sub_181A53008(v12, v13);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v4 = *(&xmmword_1ED411C48 + 1);
    v5 = unk_1ED411C58;
    v6 = byte_1ED411C60;
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    v16 = 0x100000201;
    v7 = xmmword_1ED411C48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
    swift_allocObject();
    v8 = sub_181AAC92C(v7, v4, v5, v6, v14);
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    *(v3 + 32) = v8;
    *(v3 + 40) = 0x2000000000000000;
    sub_181F49A24(v4, v5, v6);
    result = sub_181A5301C(v9, v10);
  }

  *(v1 + 113) = 2;
  if ((*(v1 + 214) & 0x10) == 0)
  {
    *(v1 + 214) |= 0x10u;
  }

  return result;
}

void *sub_181F40E9C@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *__dst = 0;
  *&__dst[8] = 0;
  __dst[16] = 1;
  *&__dst[25] = 0;
  *&__dst[17] = 0;
  __dst[33] = 1;
  memset(&__dst[36], 0, 32);
  __dst[68] = 1;
  sub_181A53D78(&__dst[128]);
  *&__dst[328] = 0;
  *&__dst[336] = 0xF000000000000000;
  Parameters.init(noInternetProtocol:)(0, __src);
  v6 = v27;
  *&__dst[352] = v28;
  *&__dst[368] = v29;
  *&__dst[384] = v30;
  v32[8] = *&__dst[256];
  v32[9] = *&__dst[272];
  v32[10] = *&__dst[288];
  v32[4] = *&__dst[192];
  v32[5] = *&__dst[208];
  v32[6] = *&__dst[224];
  v32[7] = *&__dst[240];
  v32[0] = *&__dst[128];
  v32[1] = *&__dst[144];
  v32[2] = *&__dst[160];
  v32[3] = *&__dst[176];
  sub_181A41E7C(v32);
  sub_181D9D680(0, 0xF000000000000000);
  memcpy(__dst, __src, 0x158uLL);
  *&__dst[344] = v6;
  v7 = qword_1ED40FF40;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = *(&xmmword_1ED411BF0 + 1);
  v9 = unk_1ED411C00;
  v10 = byte_1ED411C08;
  type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions(0);
  swift_allocObject();
  sub_181F49A24(v8, v9, v10);
  sub_181AACB6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  swift_allocObject();
  v11 = sub_181AA94EC();
  if (a1)
  {

    a1(v11);
    sub_181A554F4(a1, a2);
  }

  v12 = *(v6 + 32);
  v13 = *(v6 + 40);
  *(v6 + 32) = v11;
  *(v6 + 40) = 0x6000000000000000;

  sub_181A5301C(v12, v13);

  ProtocolStack.transport.getter(&v24);
  v14 = v25;
  if ((~v25 & 0xF000000000000007) != 0)
  {
    v22 = v24;

    sub_181A554F4(a1, a2);
    sub_181A53008(v22, v14);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v15 = *(&xmmword_1ED411C48 + 1);
    v16 = unk_1ED411C58;
    v17 = byte_1ED411C60;
    v18 = xmmword_1ED411C48;

    sub_181A554F4(a1, a2);
    memset(__src, 0, 40);
    *&__src[40] = 0x100000201;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
    swift_allocObject();
    v19 = sub_181AAC92C(v18, v15, v16, v17, __src);
    v20 = *(v6 + 32);
    v21 = *(v6 + 40);
    *(v6 + 32) = v19;
    *(v6 + 40) = 0x2000000000000000;
    sub_181F49A24(v15, v16, v17);
    sub_181A5301C(v20, v21);
  }

  __dst[113] = 2;
  return memcpy(a3, __dst, 0x188uLL);
}

void *sub_181F411E4@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  __src[0] = 0uLL;
  LOBYTE(__src[1]) = 1;
  *(&__src[1] + 9) = 0;
  *(&__src[1] + 1) = 0;
  BYTE1(__src[2]) = 1;
  *(&__src[2] + 4) = 0u;
  *(&__src[3] + 4) = 0u;
  BYTE4(__src[4]) = 1;
  sub_181A53D78(&__src[8]);
  *(&__src[20] + 1) = 0;
  *&__src[21] = 0xF000000000000000;
  Parameters.init(noInternetProtocol:)(0, &v39);
  __src[4] = v43;
  __src[5] = v44;
  __src[6] = v45;
  __src[0] = v39;
  __src[1] = v40;
  __src[2] = v41;
  __src[3] = v42;
  v9 = v47;
  __src[22] = v62;
  __src[23] = v63;
  v10 = v61;
  *&__src[7] = v46;
  *&__src[24] = v64;
  v66[8] = __src[16];
  v66[9] = __src[17];
  v66[10] = __src[18];
  v66[4] = __src[12];
  v66[5] = __src[13];
  v66[6] = __src[14];
  v66[7] = __src[15];
  v66[0] = __src[8];
  v66[1] = __src[9];
  v66[2] = __src[10];
  v66[3] = __src[11];
  sub_181A41E7C(v66);
  sub_181D9D680(0, 0xF000000000000000);
  v35 = v9;
  DWORD2(__src[7]) = v9;
  *(&__src[18] + 12) = v59;
  *(&__src[19] + 12) = *v60;
  *(&__src[20] + 8) = *&v60[12];
  *(&__src[16] + 12) = v57;
  *(&__src[17] + 12) = v58;
  *(&__src[13] + 12) = v54;
  *(&__src[14] + 12) = v55;
  *(&__src[15] + 12) = v56;
  *(&__src[9] + 12) = v50;
  *(&__src[10] + 12) = v51;
  *(&__src[11] + 12) = v52;
  *(&__src[12] + 12) = v53;
  *(&__src[7] + 12) = v48;
  *(&__src[8] + 12) = v49;
  *(&__src[21] + 1) = v10;

  options_0 = _nw_quic_create_options_0();
  if (a1)
  {

    a1(options_0);
    sub_181A554F4(a1, a2);
  }

  if (a3)
  {
    v34 = a2;
    v12 = qword_1ED40FF40;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = *(&xmmword_1ED411BF0 + 1);
    v14 = unk_1ED411C00;
    v15 = byte_1ED411C08;
    type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions(0);
    swift_allocObject();
    sub_181F49A24(v13, v14, v15);
    sub_181AACB6C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
    swift_allocObject();
    v16 = sub_181AA94EC();
    a3();
    sub_181A554F4(a3, a4);
    v17 = *(*v16 + 128);
    swift_beginAccess();
    v18 = *(v16 + v17);

    a2 = v34;
    if (v18)
    {
      v19 = *(*options_0 + 128);
      swift_beginAccess();
      v20 = *(options_0 + v19);
      if (v20)
      {
        swift_beginAccess();
        *(v20 + 48) = v18;
      }
    }
  }

  v21 = *(v10 + 32);
  v22 = *(v10 + 40);
  *(v10 + 32) = options_0;
  *(v10 + 40) = 0x4000000000000000;

  sub_181A5301C(v21, v22);

  ProtocolStack.transport.getter(&v37);
  v23 = v38;
  if ((~v38 & 0xF000000000000007) != 0)
  {
    v32 = v37;

    sub_181A554F4(a3, a4);
    sub_181A554F4(a1, a2);
    sub_181A53008(v32, v23);
  }

  else
  {
    v24 = a2;
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v25 = *(&xmmword_1ED411C48 + 1);
    v26 = unk_1ED411C58;
    v27 = byte_1ED411C60;
    v28 = xmmword_1ED411C48;

    sub_181A554F4(a3, a4);
    sub_181A554F4(a1, v24);
    v39 = 0u;
    v40 = 0u;
    *&v41 = 0;
    *(&v41 + 1) = 0x100000201;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
    swift_allocObject();
    v29 = sub_181AAC92C(v28, v25, v26, v27, &v39);
    v30 = *(v10 + 32);
    v31 = *(v10 + 40);
    *(v10 + 32) = v29;
    *(v10 + 40) = 0x2000000000000000;
    sub_181F49A24(v25, v26, v27);
    sub_181A5301C(v30, v31);
  }

  BYTE1(__src[7]) = 2;
  if ((v35 & 0x2000) == 0)
  {
    DWORD2(__src[7]) = v35 | 0x2000;
  }

  return memcpy(a5, __src, 0x188uLL);
}

void *sub_181F416D0@<X0>(void (*a1)(uint64_t)@<X0>, void *a3@<X8>)
{
  __src[0] = 0uLL;
  LOBYTE(__src[1]) = 1;
  *(&__src[1] + 9) = 0;
  *(&__src[1] + 1) = 0;
  BYTE1(__src[2]) = 1;
  *(&__src[2] + 4) = 0u;
  *(&__src[3] + 4) = 0u;
  BYTE4(__src[4]) = 1;
  sub_181A53D78(&__src[8]);
  *(&__src[20] + 1) = 0;
  *&__src[21] = 0xF000000000000000;
  Parameters.init(noInternetProtocol:)(0, &v22);
  __src[4] = v26;
  __src[5] = v27;
  __src[6] = v28;
  __src[0] = v22;
  __src[1] = v23;
  __src[2] = v24;
  __src[3] = v25;
  v5 = v30;
  __src[22] = v45;
  __src[23] = v46;
  v6 = v44;
  *&__src[7] = v29;
  *&__src[24] = v47;
  v49[8] = __src[16];
  v49[9] = __src[17];
  v49[10] = __src[18];
  v49[4] = __src[12];
  v49[5] = __src[13];
  v49[6] = __src[14];
  v49[7] = __src[15];
  v49[0] = __src[8];
  v49[1] = __src[9];
  v49[2] = __src[10];
  v49[3] = __src[11];
  sub_181A41E7C(v49);
  sub_181D9D680(0, 0xF000000000000000);
  DWORD2(__src[7]) = v5;
  *(&__src[18] + 12) = v42;
  *(&__src[19] + 12) = *v43;
  *(&__src[20] + 8) = *&v43[12];
  *(&__src[16] + 12) = v40;
  *(&__src[17] + 12) = v41;
  *(&__src[13] + 12) = v37;
  *(&__src[14] + 12) = v38;
  *(&__src[15] + 12) = v39;
  *(&__src[9] + 12) = v33;
  *(&__src[10] + 12) = v34;
  *(&__src[11] + 12) = v35;
  *(&__src[12] + 12) = v36;
  *(&__src[7] + 12) = v31;
  *(&__src[8] + 12) = v32;
  *(&__src[21] + 1) = v6;

  options_0 = _nw_quic_create_options_0();

  a1(options_0);

  v8 = *(v6 + 32);
  v9 = *(v6 + 40);
  *(v6 + 32) = options_0;
  *(v6 + 40) = 0x4000000000000000;

  sub_181A5301C(v8, v9);

  ProtocolStack.transport.getter(&v20);
  v10 = v21;
  if ((~v21 & 0xF000000000000007) != 0)
  {
    v18 = v20;

    sub_181A53008(v18, v10);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v11 = *(&xmmword_1ED411C48 + 1);
    v12 = unk_1ED411C58;
    v13 = byte_1ED411C60;
    v14 = xmmword_1ED411C48;

    v22 = 0u;
    v23 = 0u;
    *&v24 = 0;
    *(&v24 + 1) = 0x100000201;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
    swift_allocObject();
    v15 = sub_181AAC92C(v14, v11, v12, v13, &v22);
    v16 = *(v6 + 32);
    v17 = *(v6 + 40);
    *(v6 + 32) = v15;
    *(v6 + 40) = 0x2000000000000000;
    sub_181F49A24(v11, v12, v13);
    sub_181A5301C(v16, v17);
  }

  BYTE1(__src[7]) = 2;
  if ((v5 & 0x2000) == 0)
  {
    DWORD2(__src[7]) = v5 | 0x2000;
  }

  return memcpy(a3, __src, 0x188uLL);
}

void *sub_181F419F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t, double)@<X7>, void *a9@<X8>, uint64_t a10)
{
  *&__dst[8] = 0;
  *__dst = 0;
  __dst[16] = 1;
  *&__dst[25] = 0;
  *&__dst[17] = 0;
  __dst[33] = 1;
  memset(&__dst[36], 0, 32);
  __dst[68] = 1;
  sub_181A53D78(&__dst[128]);
  *&__dst[328] = 0;
  *&__dst[336] = 0xF000000000000000;
  Parameters.init(noInternetProtocol:)(0, __src);
  v13 = v90;
  v14 = v91;
  *&__dst[360] = v92;
  *&__dst[376] = v93;
  v105[8] = *&__dst[256];
  v105[9] = *&__dst[272];
  v105[10] = *&__dst[288];
  v105[4] = *&__dst[192];
  v105[5] = *&__dst[208];
  v105[6] = *&__dst[224];
  v105[7] = *&__dst[240];
  v105[0] = *&__dst[128];
  v105[1] = *&__dst[144];
  v105[2] = *&__dst[160];
  v105[3] = *&__dst[176];
  sub_181A41E7C(v105);
  sub_181D9D680(0, 0xF000000000000000);
  memcpy(__dst, __src, 0x158uLL);
  *&__dst[344] = v13;
  *&__dst[352] = v14;

  if (nw_protocol_copy_tls_definition())
  {
    v15 = swift_unknownObjectRetain();
    v16 = v15;
  }

  else
  {
    v15 = nw_protocol_copy_tls_definition();
    v16 = 0;
  }

  sub_181AA82B4(__src, v15, 0, 0, 0, 255, v16);
  v87[0] = *__src;
  v87[1] = *&__src[16];
  v87[2] = *&__src[32];
  v87[3] = *&__src[48];
  v88 = *&__src[64];
  v17 = *&__src[32];
  sub_181F49A24(*&__src[8], *&__src[16], __src[24]);
  sub_181AA90F0(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A3A0, &qword_182AE4BC0);
  swift_allocObject();
  v18 = sub_181AA94EC();
  sub_181F49A88(v87, &unk_1EA838740, &qword_182AE4BC8);
  if (a1)
  {

    (a1)(v18);
    sub_181A554F4(a1, a2);
  }

  v71 = v18;
  v65 = a2;
  options_0 = _nw_quic_create_options_0();
  v20 = a6;
  if (a3)
  {

    a3(options_0);
    sub_181A554F4(a3, a4);
  }

  v63 = a3;
  if (!a5)
  {
    goto LABEL_14;
  }

  v21 = qword_1ED40FF40;

  if (v21 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v22 = *(&xmmword_1ED411BF0 + 1);
    v23 = unk_1ED411C00;
    v24 = byte_1ED411C08;
    type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions(0);
    swift_allocObject();
    sub_181F49A24(v22, v23, v24);
    sub_181AACB6C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
    swift_allocObject();
    v25 = sub_181AA94EC();
    a5();
    sub_181A554F4(a5, v20);
    v26 = *(*v25 + 128);
    swift_beginAccess();
    v27 = *(v25 + v26);

    if (v27)
    {
      v28 = *(*options_0 + 128);
      swift_beginAccess();
      v29 = *(options_0 + v28);
      if (v29)
      {
        swift_beginAccess();
        *(v29 + 48) = v27;
      }
    }

LABEL_14:
    v30 = *(*options_0 + 184);
    swift_beginAccess();
    *(options_0 + v30) = 1;
    v31 = *(*options_0 + 128);
    swift_beginAccess();
    v32 = *(options_0 + v31);
    if (v32)
    {
      swift_beginAccess();
      v33 = *(v32 + 48);
      v34 = sub_181AA8428(&qword_1ED40FD40, &qword_1EA83A3A0, &qword_182AE4BC0);
      *(v33 + 112) = v71;
      *(v33 + 120) = v34;

      swift_unknownObjectRelease();
    }

    v64 = a1;
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v35 = *(&xmmword_1ED411C48 + 1);
    v36 = unk_1ED411C58;
    v37 = byte_1ED411C60;
    memset(v102, 0, sizeof(v102));
    v103 = 0;
    v104 = 0x100000201;
    v38 = xmmword_1ED411C48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
    swift_allocObject();
    v39 = sub_181AAC92C(v38, v35, v36, v37, v102);
    sub_181F49A24(v35, v36, v37);
    if (a8)
    {
      v40 = sub_181AA39C0(a8, a10);
      a8(v39, v40);
      sub_181A554F4(a8, a10);
    }

    v41 = *(v13 + 32);
    v42 = *(v13 + 40);
    *(v13 + 32) = options_0;
    *(v13 + 40) = 0x4000000000000000;

    sub_181A5301C(v41, v42);

    *&v83 = 0;
    DWORD2(v83) = 0;
    BYTE12(v83) = 1;
    v20 = &v79;
    *(&v83 + 13) = 6;
    *&v84 = 0;
    BYTE8(v84) = 0;
    v43 = MEMORY[0x1E69E7CC0];
    *&v85 = MEMORY[0x1E69E7CC0];
    *(&v85 + 1) = MEMORY[0x1E69E7CC0];
    a1 = 2;
    v86 = 2;

    sub_181F48044(v44, 2, &v83);

    BYTE8(v84) = 2;
    v86 = 18;
    *&v79 = 0;
    DWORD2(v79) = 0;
    BYTE12(v79) = 1;
    *(&v79 + 13) = 6;
    BYTE8(v80) = 0;
    *&v81 = v43;
    *(&v81 + 1) = v43;
    v82 = 0;
    *&v80 = a7;

    sub_181B285A8(v45, 3, &v79);

    sub_181B28748(v46, 2, &v79, &unk_1ED40FF50, &unk_1EA838DE0, &unk_182AE6F00, 0x2000000000000000);

    v82 = 16;
    v47 = *sub_182AD2388();

    *&__dst[352] = v47;
    v100[0] = v83;
    v100[1] = v84;
    v100[2] = v85;
    v101 = v86;
    v48 = *(v47 + 24);
    v49 = v48 + 1;
    if (!__OFADD__(v48, 1))
    {
      break;
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (*(v47 + 16) < v49 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181B29AC4(isUniquelyReferenced_nonNull_native, v49, 0);
    v47 = *&__dst[352];
  }

  result = sub_181B29C9C((v47 + 16), v47 + 40, v100);
  v52 = *&__dst[352];
  if (*&__dst[352])
  {
    v98[0] = v79;
    v98[1] = v80;
    v98[2] = v81;
    v99 = v82;
    v53 = *(*&__dst[352] + 24);
    v54 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      return result;
    }

    v55 = swift_isUniquelyReferenced_nonNull_native();
    if (*(v52 + 16) < v54 || (v55 & 1) == 0)
    {
      sub_181B29AC4(v55, v54, 0);
      v52 = *&__dst[352];
    }

    sub_181B29C9C((v52 + 16), v52 + 40, v98);
  }

  ProtocolStack.transport.getter(&v77);
  if ((~v78 & 0xF000000000000007) != 0)
  {
    sub_181A53008(v77, v78);

    sub_181A554F4(a8, a10);

    sub_181A554F4(a5, a6);
    sub_181A554F4(v63, a4);
    sub_181A554F4(v64, v65);
    v73 = v83;
    v74 = v84;
    v75 = v85;
    v76 = v86;
    sub_181B29DA0(&v73);
  }

  else
  {
    v56 = *(&xmmword_1ED411C48 + 1);
    v57 = unk_1ED411C58;
    v58 = byte_1ED411C60;
    v59 = xmmword_1ED411C48;

    sub_181A554F4(a8, a10);

    sub_181A554F4(a5, a6);
    sub_181A554F4(v63, a4);
    sub_181A554F4(v64, v65);
    v73 = v83;
    v74 = v84;
    v75 = v85;
    v76 = v86;
    sub_181B29DA0(&v73);
    memset(v95, 0, sizeof(v95));
    v96 = 0;
    v97 = 0x100000201;
    swift_allocObject();
    v60 = sub_181AAC92C(v59, v56, v57, v58, v95);
    v61 = *(v13 + 32);
    v62 = *(v13 + 40);
    *(v13 + 32) = v60;
    *(v13 + 40) = 0x2000000000000000;
    sub_181F49A24(v56, v57, v58);
    sub_181A5301C(v61, v62);
  }

  __dst[113] = 2;
  v73 = v79;
  v74 = v80;
  v75 = v81;
  v76 = v82;
  sub_181B29DA0(&v73);
  return memcpy(a9, __dst, 0x188uLL);
}

void *sub_181F423F0@<X0>(char a1@<W0>, void (*a2)(uint64_t, double)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *__dst = 0;
  *&__dst[8] = 0;
  __dst[16] = 1;
  *&__dst[25] = 0;
  *&__dst[17] = 0;
  __dst[33] = 1;
  memset(&__dst[36], 0, 32);
  __dst[68] = 1;
  sub_181A53D78(&__dst[128]);
  *&__dst[328] = 0;
  *&__dst[336] = 0xF000000000000000;
  Parameters.init(noInternetProtocol:)(0, __src);
  *&__dst[352] = v41;
  *&__dst[368] = v42;
  v8 = v40;
  *&__dst[384] = v43;
  v45[8] = *&__dst[256];
  v45[9] = *&__dst[272];
  v45[10] = *&__dst[288];
  v45[4] = *&__dst[192];
  v45[5] = *&__dst[208];
  v45[6] = *&__dst[224];
  v45[7] = *&__dst[240];
  v45[0] = *&__dst[128];
  v45[1] = *&__dst[144];
  v45[2] = *&__dst[160];
  v45[3] = *&__dst[176];
  sub_181A41E7C(v45);
  sub_181D9D680(0, 0xF000000000000000);
  memcpy(__dst, __src, 0x158uLL);
  *&__dst[344] = v8;
  v9 = qword_1ED40FD30;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = *(&xmmword_1ED411A98 + 1);
  v11 = unk_1ED411AA8;
  v12 = byte_1ED411AB0;
  v13 = xmmword_1ED411A98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DD0, &qword_182AE4BE0);
  swift_allocObject();
  v14 = sub_181CFD414(v13, v10, v11, v12, 0);
  v15 = (v14 + *(*v14 + 128));
  result = swift_beginAccess();
  if (v15[1])
  {
    __break(1u);
  }

  else
  {
    *v15 = a1;
    v17 = v8[4];
    v18 = v8[5];
    v8[4] = v14;
    v8[5] = 0x8000000000000000;
    sub_181F49A24(v10, v11, v12);
    sub_181A5301C(v17, v18);

    if (a2)
    {
      v19 = qword_1ED4102F0;

      if (v19 != -1)
      {
        swift_once();
      }

      v20 = *(&xmmword_1ED411D60 + 1);
      v21 = unk_1ED411D70;
      v22 = byte_1ED411D78;
      v23 = xmmword_1ED411D60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760, &qword_182AE4BE8);
      swift_allocObject();
      v24 = sub_181BB68A0(v23, v20, v21, v22, 0);
      v25 = sub_181F49A24(v20, v21, v22);
      a2(v24, v25);
      sub_181A554F4(a2, a3);
      swift_beginAccess();
      v26 = v8[6];
      v27 = v8[7];
      v8[6] = v24;
      v8[7] = 0;
      sub_181A52FE0(v26, v27);
    }

    ProtocolStack.transport.getter(&v37);
    v28 = v38;
    if ((~v38 & 0xF000000000000007) != 0)
    {
      v36 = v37;
      sub_181A554F4(a2, a3);
      sub_181A53008(v36, v28);
    }

    else
    {
      if (qword_1ED410028 != -1)
      {
        swift_once();
      }

      v29 = *(&xmmword_1ED40FF68 + 1);
      v30 = unk_1ED40FF78;
      v31 = byte_1ED40FF80;
      v32 = xmmword_1ED40FF68;
      sub_181A554F4(a2, a3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710, &qword_182AE4BA0);
      swift_allocObject();
      v33 = sub_181CFD414(v32, v29, v30, v31, 0);
      v34 = v8[4];
      v35 = v8[5];
      v8[4] = v33;
      v8[5] = 0;
      sub_181F49A24(v29, v30, v31);
      sub_181A5301C(v34, v35);
    }

    __dst[113] = 1;
    return memcpy(a4, __dst, 0x188uLL);
  }

  return result;
}

void *sub_181F42834@<X0>(void (*a1)(uint64_t, double)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __src[0] = 0uLL;
  LOBYTE(__src[1]) = 1;
  *(&__src[1] + 9) = 0;
  *(&__src[1] + 1) = 0;
  BYTE1(__src[2]) = 1;
  *(&__src[2] + 4) = 0u;
  *(&__src[3] + 4) = 0u;
  BYTE4(__src[4]) = 1;
  sub_181A53D78(&__src[8]);
  *(&__src[20] + 1) = 0;
  *&__src[21] = 0xF000000000000000;
  Parameters.init(noInternetProtocol:)(0, &v30);
  v5 = v43;
  v6 = v53;
  __src[22] = v54;
  __src[23] = v55;
  *&__src[24] = v56;
  v61[9] = __src[17];
  v61[10] = __src[18];
  v61[4] = __src[12];
  v61[5] = __src[13];
  v61[7] = __src[15];
  v61[8] = __src[16];
  v61[6] = __src[14];
  v61[0] = __src[8];
  v61[1] = __src[9];
  v61[2] = __src[10];
  v61[3] = __src[11];
  sub_181A41E7C(v61);
  sub_181D9D680(0, 0xF000000000000000);
  __src[10] = v40;
  __src[11] = v41;
  __src[12] = *v42;
  *(&__src[12] + 14) = *&v42[14];
  __src[6] = v36;
  __src[7] = v37;
  __src[8] = v38;
  __src[9] = v39;
  __src[2] = v32;
  __src[3] = v33;
  __src[4] = v34;
  __src[5] = v35;
  __src[0] = v30;
  __src[1] = v31;
  v26 = v5;
  BYTE6(__src[13]) = v5;
  *(&__src[18] + 7) = v49;
  *(&__src[19] + 7) = v50;
  *(&__src[20] + 7) = v51;
  *(&__src[16] + 7) = v47;
  *(&__src[17] + 7) = v48;
  BYTE7(__src[21]) = v52;
  *(&__src[14] + 7) = v45;
  *(&__src[15] + 7) = v46;
  *(&__src[13] + 7) = v44;
  *(&__src[21] + 1) = v6;
  v7 = qword_1ED410038;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = *(&xmmword_1ED411C48 + 1);
  v9 = unk_1ED411C58;
  v10 = byte_1ED411C60;
  v30 = 0u;
  v31 = 0u;
  *&v32 = 0;
  *(&v32 + 1) = 0x100000201;
  v11 = xmmword_1ED411C48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
  swift_allocObject();
  v12 = sub_181AAC92C(v11, v8, v9, v10, &v30);
  sub_181F49A24(v8, v9, v10);
  if (a1)
  {
    v13 = sub_181AA39C0(a1, a2);
    a1(v12, v13);
    sub_181A554F4(a1, a2);
  }

  v14 = *(v6 + 32);
  v15 = *(v6 + 40);
  *(v6 + 32) = v12;
  *(v6 + 40) = 0x2000000000000000;

  sub_181A5301C(v14, v15);

  ProtocolStack.transport.getter(&v28);
  v16 = v29;
  if ((~v29 & 0xF000000000000007) != 0)
  {
    v24 = v28;

    sub_181A554F4(a1, a2);
    sub_181A53008(v24, v16);
  }

  else
  {
    v17 = *(&xmmword_1ED411C48 + 1);
    v18 = unk_1ED411C58;
    v19 = byte_1ED411C60;
    v20 = xmmword_1ED411C48;

    sub_181A554F4(a1, a2);
    memset(v58, 0, sizeof(v58));
    v59 = 0;
    v60 = 0x100000201;
    swift_allocObject();
    v21 = sub_181AAC92C(v20, v17, v18, v19, v58);
    v22 = *(v6 + 32);
    v23 = *(v6 + 40);
    *(v6 + 32) = v21;
    *(v6 + 40) = 0x2000000000000000;
    sub_181F49A24(v17, v18, v19);
    sub_181A5301C(v22, v23);
  }

  BYTE1(__src[7]) = 2;
  if ((v26 & 4) == 0)
  {
    BYTE6(__src[13]) = v26 | 4;
  }

  return memcpy(a3, __src, 0x188uLL);
}

uint64_t sub_181F42BD8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  nw_context_activate(*(*a1 + 16));
  v4 = nw_context_copy_cache_context(*(v3 + 16));
  type metadata accessor for NetworkContext();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  *(a2 + 280) = v5;
  return result;
}

uint64_t Parameters.context.setter(uint64_t a1)
{
  nw_context_activate(*(a1 + 16));
  v3 = nw_context_copy_cache_context(*(a1 + 16));

  type metadata accessor for NetworkContext();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  *(v1 + 280) = v4;
  return result;
}

uint64_t (*Parameters.context.modify(void *a1))()
{
  v3 = *(v1 + 280);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_181F42CFC;
}

uint64_t sub_181F42CFC(void *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 16);
  if (a2)
  {

    nw_context_activate(v4);
    v5 = nw_context_copy_cache_context(*(v2 + 16));

    type metadata accessor for NetworkContext();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;

    *(v3 + 280) = v6;
  }

  else
  {
    nw_context_activate(*(*a1 + 16));
    v8 = nw_context_copy_cache_context(*(v2 + 16));

    type metadata accessor for NetworkContext();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;

    *(v3 + 280) = v9;
  }

  return result;
}

uint64_t Parameters.hash(into:)(uint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 17);
  v4 = *(v1 + 25);
  v5 = *(v1 + 33);
  v6 = *(v1 + 68);
  v49 = *(v1 + 113);
  v53 = *(v1 + 114);
  v60 = v1[39];
  v48 = v1[13];
  v56 = v1[42];
  v7 = v1[44];
  v55 = v1[40];
  v61 = v1[45];
  v57 = v1[46];
  v58 = v1[47];
  v59 = v1[48];
  v54 = *(v1 + 116);
  v51 = *(v1 + 96);
  v52 = *(v1 + 112);
  v46 = v1[9];
  v47 = v1[11];
  v50 = *(v1 + 80);
  if (v1[2])
  {
    sub_182AD4518();
    if ((v5 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_182AD4518();
    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v8 = *(v1 + 33);
  v9 = *(v1 + 68);
  v10 = *(v1 + 25);
  v11 = *(v1 + 17);
  v13 = *v1;
  v12 = v1[1];
  sub_182AD4518();
  *&v67 = v13;
  *(&v67 + 1) = v12;
  v3 = v11;
  v4 = v10;
  v6 = v9;
  sub_182AD44F8();
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_182AD4518();
  *&v67 = v3;
  *(&v67 + 1) = v4;
  sub_182AD44F8();
  if ((v6 & 1) == 0)
  {
LABEL_4:
    sub_182AD4518();
    sub_182AD4538();
    sub_182AD4538();
    sub_182AD4538();
    sub_182AD4538();
    sub_182AD4538();
    sub_182AD4538();
    sub_182AD4538();
    sub_182AD4538();
    goto LABEL_8;
  }

LABEL_7:
  sub_182AD4518();
LABEL_8:
  v14 = v55;
  if (v50)
  {
    sub_182AD4518();
    if (!v51)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_182AD4518();
    if (!v52)
    {
      goto LABEL_11;
    }

LABEL_14:
    sub_182AD4518();
    goto LABEL_15;
  }

  sub_182AD4518();
  MEMORY[0x1865DB0B0](v46);
  if (v51)
  {
    goto LABEL_13;
  }

LABEL_10:
  sub_182AD4518();
  MEMORY[0x1865DB070](v47);
  if (v52)
  {
    goto LABEL_14;
  }

LABEL_11:
  sub_182AD4518();
  MEMORY[0x1865DB070](v48);
LABEL_15:
  MEMORY[0x1865DB070](v49);
  if (v53 != 2)
  {
    sub_182AD4518();
  }

  sub_182AD4518();
  sub_182AD4518();
  MEMORY[0x1865DB070](v54);
  sub_182AD4538();
  sub_182AD4538();
  v15 = *(v1 + 17);
  v75 = *(v1 + 16);
  v76 = v15;
  v77 = *(v1 + 18);
  v16 = *(v1 + 13);
  v71 = *(v1 + 12);
  v72 = v16;
  v17 = *(v1 + 15);
  v73 = *(v1 + 14);
  v74 = v17;
  v18 = *(v1 + 9);
  v67 = *(v1 + 8);
  v68 = v18;
  v19 = *(v1 + 11);
  v69 = *(v1 + 10);
  v70 = v19;
  sub_18226C71C(a1);
  if (v60)
  {
    sub_182AD4518();
    sub_182AD30E8();
    v20 = v56;
    if (v55)
    {
LABEL_19:
      sub_182AD4518();
      MEMORY[0x1865DB070](v55[3]);
      v21 = v55[4];
      if (v55[2] >= v55[3] + v21)
      {
        v22 = v55[3] + v21;
      }

      else
      {
        v22 = v55[2];
      }

      *&v67 = v55;
      *(&v67 + 1) = v21;
      *&v68 = v22;
      while (1)
      {
        if (v21 == v22)
        {
          if ((sub_181F47FDC() & 1) == 0)
          {

            goto LABEL_30;
          }

          v21 = *(&v67 + 1);
          v14 = v67;
          v22 = v68;
        }

        v23 = v21 + 1;
        *(&v67 + 1) = v21 + 1;
        v65 = *&v14[2 * v21 + 5];
        sub_182AD44F8();
        v21 = v23;
      }
    }
  }

  else
  {
    sub_182AD4518();
    v20 = v56;
    if (v55)
    {
      goto LABEL_19;
    }
  }

  sub_182AD4518();
LABEL_30:
  sub_182AD4518();
  if (v20 >> 60 != 15)
  {
    sub_182AD2168();
  }

  ProtocolStack.hash(into:)(a1);
  if (v7)
  {
    sub_182AD4518();
    MEMORY[0x1865DB070](v7[3]);
    v24 = v7[4];
    if (v7[2] >= v7[3] + v24)
    {
      v25 = v7[3] + v24;
    }

    else
    {
      v25 = v7[2];
    }

    v62 = v7;
    v63 = v7[4];
    v64 = v25;

    while (1)
    {
      if (v24 == v25)
      {
        if ((sub_181F47FDC() & 1) == 0)
        {

          if (v61)
          {
            goto LABEL_42;
          }

LABEL_64:
          sub_182AD4518();
          goto LABEL_70;
        }

        v24 = v63;
        v7 = v62;
        v25 = v64;
      }

      v63 = v24 + 1;
      v26 = &v7[7 * v24];
      v27 = *(v26 + 5);
      v28 = *(v26 + 7);
      v29 = *(v26 + 9);
      LOWORD(v70) = *(v26 + 44);
      v68 = v28;
      v69 = v29;
      v67 = v27;
      sub_181B29D44(&v67, &v65);
      sub_18221C2D8(a1);
      sub_181B29DA0(&v67);
      ++v24;
    }
  }

  sub_182AD4518();
  if (!v61)
  {
    goto LABEL_64;
  }

LABEL_42:
  sub_182AD4518();
  v31 = v61[2];
  v30 = v61[3];
  v32 = v61[4];
  v33 = v61[5];
  if (!v31)
  {
    sub_182AD4518();
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    if (v30)
    {
      goto LABEL_52;
    }

    goto LABEL_66;
  }

  sub_182AD4518();
  MEMORY[0x1865DB070](v31[3]);
  v34 = v31[4];
  if (v31[2] >= v31[3] + v34)
  {
    v35 = v31[3] + v34;
  }

  else
  {
    v35 = v31[2];
  }

  *&v65 = v31;
  *(&v65 + 1) = v34;
  v66 = v35;
  swift_unknownObjectRetain();
  swift_retain_n();

  swift_unknownObjectRetain();
  while (1)
  {
    if (v34 != v35)
    {
      goto LABEL_47;
    }

    if ((sub_181F47FDC() & 1) == 0)
    {
      break;
    }

    v34 = *(&v65 + 1);
    v35 = v66;
LABEL_47:
    *(&v65 + 1) = v34 + 1;
    swift_getObjectType();
    sub_182AD2EB8();
    ++v34;
  }

  if (v30)
  {
LABEL_52:
    sub_182AD4518();
    MEMORY[0x1865DB070](v30[3]);
    v36 = v30[4];
    if (v30[2] >= v30[3] + v36)
    {
      v37 = v30[3] + v36;
    }

    else
    {
      v37 = v30[2];
    }

    *&v65 = v30;
    *(&v65 + 1) = v36;
    v66 = v37;

    while (1)
    {
      if (v36 == v37)
      {
        if ((sub_181F47FDC() & 1) == 0)
        {

          if (v32)
          {
            goto LABEL_61;
          }

LABEL_67:
          sub_182AD4518();
          if (!v33)
          {
            goto LABEL_68;
          }

LABEL_62:
          sub_182AD4518();
          hash = nw_proxy_config_get_hash(v33);
          MEMORY[0x1865DB070](hash);
          goto LABEL_69;
        }

        v36 = *(&v65 + 1);
        v37 = v66;
      }

      *(&v65 + 1) = v36 + 1;
      v38 = swift_unknownObjectRetain();
      v39 = nw_proxy_config_get_hash(v38);
      MEMORY[0x1865DB070](v39);
      swift_unknownObjectRelease();
      ++v36;
    }
  }

LABEL_66:
  sub_182AD4518();
  if (!v32)
  {
    goto LABEL_67;
  }

LABEL_61:
  sub_182AD4518();
  v40 = nw_proxy_config_get_hash(v32);
  MEMORY[0x1865DB070](v40);
  if (v33)
  {
    goto LABEL_62;
  }

LABEL_68:
  sub_182AD4518();
LABEL_69:

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_70:
  if (v57)
  {
    sub_182AD4518();
    v42 = v57;
    sub_182AD3988();

    if (v58)
    {
      goto LABEL_72;
    }

LABEL_75:
    sub_182AD4518();
    if (!v59)
    {
      return sub_182AD4518();
    }

LABEL_73:
    sub_182AD4518();
    v44 = xpc_hash(v59);
    return MEMORY[0x1865DB070](v44);
  }

  else
  {
    sub_182AD4518();
    if (!v58)
    {
      goto LABEL_75;
    }

LABEL_72:
    sub_182AD4518();
    v43 = v58;
    sub_182AD3988();

    if (v59)
    {
      goto LABEL_73;
    }

    return sub_182AD4518();
  }
}

uint64_t Parameters.hashValue.getter()
{
  sub_182AD44E8();
  Parameters.hash(into:)(v1);
  return sub_182AD4558();
}

uint64_t sub_181F43668()
{
  sub_182AD44E8();
  Parameters.hash(into:)(v1);
  return sub_182AD4558();
}

uint64_t sub_181F436AC(uint64_t a1)
{
  sub_182AD44E8();
  Parameters.hash(into:)(v2);
  return sub_182AD4558();
}

char *sub_181F436F0(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = HIDWORD(a1);
  v9 = sub_181F59624(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  v12 = v10 >> 1;
  v13 = v11 + 1;
  if (v10 >> 1 <= v11)
  {
    v9 = sub_181F59624((v10 > 1), v11 + 1, 1, v9);
    v10 = *(v9 + 3);
    v12 = v10 >> 1;
  }

  *(v9 + 2) = v13;
  *&v9[4 * v11 + 32] = v7;
  v14 = v11 + 2;
  if (v12 < (v11 + 2))
  {
    v9 = sub_181F59624((v10 > 1), v11 + 2, 1, v9);
  }

  v15 = HIDWORD(a2);
  *(v9 + 2) = v14;
  *&v9[4 * v13 + 32] = v8;
  v16 = *(v9 + 3);
  v17 = v11 + 3;
  if ((v11 + 3) > (v16 >> 1))
  {
    v9 = sub_181F59624((v16 > 1), v11 + 3, 1, v9);
  }

  *(v9 + 2) = v17;
  *&v9[4 * v14 + 32] = a2;
  v18 = *(v9 + 3);
  v19 = v11 + 4;
  if ((v11 + 4) > (v18 >> 1))
  {
    v9 = sub_181F59624((v18 > 1), v11 + 4, 1, v9);
  }

  v20 = HIDWORD(a3);
  *(v9 + 2) = v19;
  *&v9[4 * v17 + 32] = v15;
  v21 = *(v9 + 3);
  v22 = v11 + 5;
  if ((v11 + 5) > (v21 >> 1))
  {
    v9 = sub_181F59624((v21 > 1), v11 + 5, 1, v9);
  }

  *(v9 + 2) = v22;
  *&v9[4 * v19 + 32] = a3;
  v23 = *(v9 + 3);
  v24 = v11 + 6;
  if ((v11 + 6) > (v23 >> 1))
  {
    v9 = sub_181F59624((v23 > 1), v11 + 6, 1, v9);
  }

  *(v9 + 2) = v24;
  *&v9[4 * v22 + 32] = v20;
  v25 = *(v9 + 3);
  v26 = v11 + 7;
  if ((v11 + 7) > (v25 >> 1))
  {
    v9 = sub_181F59624((v25 > 1), v11 + 7, 1, v9);
  }

  *(v9 + 2) = v26;
  *&v9[4 * v24 + 32] = a4;
  v27 = *(v9 + 3);
  if ((v11 + 8) > (v27 >> 1))
  {
    v9 = sub_181F59624((v27 > 1), v11 + 8, 1, v9);
  }

  *(v9 + 2) = v11 + 8;
  *&v9[4 * v26 + 32] = HIDWORD(a4);
  return v9;
}

uint64_t sub_181F4392C()
{
  sub_182AD44E8();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  return sub_182AD4558();
}

uint64_t sub_181F439F4()
{
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  return sub_182AD4538();
}

uint64_t sub_181F43A84(uint64_t a1)
{
  sub_182AD44E8();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  return sub_182AD4558();
}

BOOL sub_181F43B48(int32x4_t *a1, int32x4_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vceqq_s32(*a1, *a2))) & 1) != 0 && a1[1].i32[0] == a2[1].i32[0] && a1[1].i32[1] == a2[1].i32[1] && a1[1].i32[2] == a2[1].i32[2])
  {
    return a1[1].i32[3] == a2[1].i32[3];
  }

  return result;
}

uint64_t sub_181F43BB8()
{
  sub_182AD44E8();
  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t sub_181F43C08(uint64_t a1)
{
  sub_182AD44E8();
  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t sub_181F43C54@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_182AD3F48();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_181F43CA8@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_182AD3F48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_181F43D00(uint64_t a1)
{
  v2 = sub_181F49964();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F43D3C(uint64_t a1)
{
  v2 = sub_181F49964();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181F43D78(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v14[0] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838688, &qword_182AE4B28);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F49964();
  sub_182AD4638();
  v14[3] = sub_181F436F0(a2, a3, a4, v14[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838698, &qword_182AE4B30);
  sub_181F499B8(&unk_1EA8367C0, MEMORY[0x1E69E7670], MEMORY[0x1E69E6300]);
  sub_182AD4118();

  return (*(v10 + 8))(v12, v9);
}

void *sub_181F43F28@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_181F4972C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_181F43F90()
{
  ProtocolStack.transport.getter(&v7);
  if ((~v8 & 0xF000000000000007) == 0)
  {
    goto LABEL_2;
  }

  v2 = v8 >> 61;
  if ((v8 >> 61) <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        sub_181A53008(v7, v8);
        v1 = 0;
        v0 = 6;
        return v0 | (v1 << 8);
      }

      goto LABEL_14;
    }

LABEL_12:
    sub_181A53008(v7, v8);
    v1 = 0;
    v0 = 17;
    return v0 | (v1 << 8);
  }

  if (v2 == 2 || v2 == 3)
  {
    goto LABEL_12;
  }

  if (v2 != 4)
  {
LABEL_14:
    sub_181A53008(v7, v8);
LABEL_2:
    v0 = 0;
    v1 = 1;
    return v0 | (v1 << 8);
  }

  v3 = v8;
  v4 = v7;
  v5 = (v7 + *(*v7 + 128));
  result = swift_beginAccess();
  if ((v5[1] & 1) == 0)
  {
    v0 = *v5;
    sub_181A53008(v4, v3);
    v1 = 0;
    return v0 | (v1 << 8);
  }

  __break(1u);
  return result;
}

uint64_t sub_181F44098(char a1, void *a2, __n128 a3)
{
  v3 = a2[4];
  v4 = a2[3] + v3;
  if (a2[2] < v4)
  {
    v4 = a2[2];
  }

  v10 = a2[4];
  v11 = v4;
  v5 = a1;
  v6 = a2;
  while (v3 != v11)
  {
LABEL_4:
    v7 = v6 + v3++;
    v10 = v3;
    if (qword_182AE5178[v7[40]] == qword_182AE5178[v5])
    {

      return 1;
    }
  }

  if (sub_181F47FDC())
  {
    v6 = a2;
    v3 = v10;
    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_181F44168(char a1, void *a2, __n128 a3)
{
  v3 = a2[4];
  v4 = a2[3] + v3;
  if (a2[2] < v4)
  {
    v4 = a2[2];
  }

  v10 = a2[4];
  v11 = v4;
  v5 = a1;
  v6 = a2;
  while (v3 != v11)
  {
LABEL_4:
    v7 = v6 + v3++;
    v10 = v3;
    if (qword_182AE51A0[v7[40]] == qword_182AE51A0[v5])
    {

      return 1;
    }
  }

  if (sub_181F47FDC())
  {
    v6 = a2;
    v3 = v10;
    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_181F44238(uint64_t a1, void *a2, __n128 a3)
{
  v4 = a2[4];
  v5 = a2[3] + v4;
  if (a2[2] < v5)
  {
    v5 = a2[2];
  }

  v16 = a2[4];
  v17 = v5;
  v6 = a2;
  while (1)
  {
    if (v4 != v5)
    {
      goto LABEL_8;
    }

    if ((sub_181F47FDC() & 1) == 0)
    {
      break;
    }

    v6 = a2;
    v4 = v16;
LABEL_8:
    v7 = &v6[v4++];
    v16 = v4;
    v8 = v7[5];
    v9 = *(v8 + 40) == *(a1 + 40) && *(v8 + 48) == *(a1 + 48);
    if (!v9 && (sub_182AD4268() & 1) == 0 || *(v8 + 16) != *(a1 + 16))
    {
      goto LABEL_4;
    }

    v10 = *(a1 + 184);
    if (v10 > 1)
    {
      if (v10 == 3)
      {
        v11 = 4;
      }

      else
      {
        v11 = 1;
      }

      if (v10 == 2)
      {
        v12 = 3;
      }

      else
      {
        v12 = v11;
      }

LABEL_23:
      if (*(v8 + 184))
      {
        v13 = qword_182AE5178[*(v8 + 184)] == v12;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }

    if (*(a1 + 184))
    {
      v12 = 2;
      goto LABEL_23;
    }

LABEL_28:
    if (qword_182AE51A0[*(v8 + 185)] == qword_182AE51A0[*(a1 + 185)] || !*(v8 + 185) || !*(a1 + 185))
    {

      return 1;
    }

LABEL_4:
    v5 = v17;
  }

  return 0;
}

uint64_t sub_181F443B8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 224);
  v25 = v3;
  if (!v3 || (v4 = *(v3 + 48)) == 0)
  {
    v4 = *sub_182AD2388();
  }

  swift_retain_n();
  v5 = v4[4];
  v6 = v4[3] + v5;
  if (v4[2] < v6)
  {
    v6 = v4[2];
  }

  v26 = v4[4];
  v27 = v6;
  v7 = v4;
  while (1)
  {
    if (v5 != v6)
    {
      goto LABEL_18;
    }

    if ((sub_181F47FDC() & 1) == 0)
    {
      break;
    }

    v7 = v4;
    v5 = v26;
LABEL_18:
    v12 = &v7[v5++];
    v26 = v5;
    v13 = v12[5];
    v14 = *(v13 + 40) == *(v2 + 40) && *(v13 + 48) == *(v2 + 48);
    if (!v14 && (sub_182AD4268() & 1) == 0 || *(v13 + 16) != *(v2 + 16))
    {
      goto LABEL_14;
    }

    v15 = *(v2 + 184);
    if (v15 > 1)
    {
      if (v15 == 3)
      {
        v16 = 4;
      }

      else
      {
        v16 = 1;
      }

      if (v15 == 2)
      {
        v17 = 3;
      }

      else
      {
        v17 = v16;
      }

LABEL_33:
      if (*(v13 + 184))
      {
        v18 = qword_182AE5178[*(v13 + 184)] == v17;
      }

      else
      {
        v18 = 1;
      }

      if (!v18)
      {
        goto LABEL_14;
      }

      goto LABEL_7;
    }

    if (*(v2 + 184))
    {
      v17 = 2;
      goto LABEL_33;
    }

LABEL_7:
    v8 = *(v13 + 185);
    v9 = *(v2 + 185);
    if (qword_182AE51A0[v8] == qword_182AE51A0[v9] || v8 == 0 || v9 == 0)
    {

      goto LABEL_46;
    }

LABEL_14:
    v6 = v27;
  }

  v20 = v4[3];
  v21 = v20 + 1;
  if (__OFADD__(v20, 1))
  {
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v4[2] < v21 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181F4604C(isUniquelyReferenced_nonNull_native, v21, 0);
  }

  sub_181F46ACC(v4 + 2, (v4 + 5), v2);
  v23 = v25;
  if (!v25)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v23 = swift_allocObject();
    sub_18226B448(v23 + 16);
    *(v24 + 224) = v23;
  }

  *(v23 + 48) = v4;
LABEL_46:
}

uint64_t sub_181F445E4(unsigned __int8 *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = *a1;
  v31 = a1[1];
  v30 = a1[2];
  v29 = a1[3];
  v28 = a1[4];
  v27 = a1[5];
  v26 = a1[6];
  v25 = a1[7];
  v24 = a1[8];
  v2 = a1[9];
  v3 = a1[10];
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1[13];
  v7 = a1[14];
  v8 = a1[15];
  v9 = *(v1 + 224);
  v22 = v9;
  if (!v9 || (v10 = *(v9 + 64)) == 0)
  {
    v10 = *sub_182AD2388();
  }

  v38 = v10;
  v11 = swift_retain_n();
  v12 = v11[4];
  v13 = v11[3] + v12;
  if (v11[2] < v13)
  {
    v13 = v11[2];
  }

  v35 = v11;
  v36 = v12;
  v37 = v13;

  v14 = v23;
  while (v12 != v37)
  {
LABEL_7:
    v36 = v12 + 1;
    *uu1 = *(v14 + 16 * v12 + 40);
    uu2[0] = v32;
    uu2[1] = v31;
    uu2[2] = v30;
    uu2[3] = v29;
    uu2[4] = v28;
    uu2[5] = v27;
    uu2[6] = v26;
    uu2[7] = v25;
    uu2[8] = v24;
    uu2[9] = v2;
    uu2[10] = v3;
    uu2[11] = v4;
    uu2[12] = v5;
    uu2[13] = v6;
    uu2[14] = v7;
    uu2[15] = v8;
    ++v12;
    if (!uuid_compare(uu1, uu2))
    {
    }
  }

  if (sub_181F47FDC())
  {
    v14 = v35;
    v12 = v36;
    goto LABEL_7;
  }

  v16 = v23;

  v17 = *(v23 + 24);
  v18 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (*(v23 + 16) < v18 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181B8477C(isUniquelyReferenced_nonNull_native, v18, 0);
    v16 = v38;
  }

  sub_181B855B4((v16 + 16), v16 + 40, v32 | (v31 << 8) | (v30 << 16) | (v29 << 24) | (v28 << 32) | (v27 << 40) | (v26 << 48) | (v25 << 56), v24 | (v2 << 8) | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40) | (v7 << 48) | (v8 << 56));
  v20 = v22;
  if (!v22)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v20 = swift_allocObject();
    sub_18226B448(v20 + 16);
    *(v21 + 224) = v20;
  }

  *(v20 + 64) = v16;
}

uint64_t sub_181F448AC(unsigned __int8 *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = *a1;
  v31 = a1[1];
  v30 = a1[2];
  v29 = a1[3];
  v28 = a1[4];
  v27 = a1[5];
  v26 = a1[6];
  v25 = a1[7];
  v24 = a1[8];
  v2 = a1[9];
  v3 = a1[10];
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1[13];
  v7 = a1[14];
  v8 = a1[15];
  v9 = *(v1 + 224);
  v22 = v9;
  if (!v9 || (v10 = *(v9 + 80)) == 0)
  {
    v10 = *sub_182AD2388();
  }

  v38 = v10;
  v11 = swift_retain_n();
  v12 = v11[4];
  v13 = v11[3] + v12;
  if (v11[2] < v13)
  {
    v13 = v11[2];
  }

  v35 = v11;
  v36 = v12;
  v37 = v13;

  v14 = v23;
  while (v12 != v37)
  {
LABEL_7:
    v36 = v12 + 1;
    *uu1 = *(v14 + 16 * v12 + 40);
    uu2[0] = v32;
    uu2[1] = v31;
    uu2[2] = v30;
    uu2[3] = v29;
    uu2[4] = v28;
    uu2[5] = v27;
    uu2[6] = v26;
    uu2[7] = v25;
    uu2[8] = v24;
    uu2[9] = v2;
    uu2[10] = v3;
    uu2[11] = v4;
    uu2[12] = v5;
    uu2[13] = v6;
    uu2[14] = v7;
    uu2[15] = v8;
    ++v12;
    if (!uuid_compare(uu1, uu2))
    {
    }
  }

  if (sub_181F47FDC())
  {
    v14 = v35;
    v12 = v36;
    goto LABEL_7;
  }

  v16 = v23;

  v17 = *(v23 + 24);
  v18 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (*(v23 + 16) < v18 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181B8477C(isUniquelyReferenced_nonNull_native, v18, 0);
    v16 = v38;
  }

  sub_181B855B4((v16 + 16), v16 + 40, v32 | (v31 << 8) | (v30 << 16) | (v29 << 24) | (v28 << 32) | (v27 << 40) | (v26 << 48) | (v25 << 56), v24 | (v2 << 8) | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40) | (v7 << 48) | (v8 << 56));
  v20 = v22;
  if (!v22)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v20 = swift_allocObject();
    sub_18226B448(v20 + 16);
    *(v21 + 224) = v20;
  }

  *(v20 + 80) = v16;
}

uint64_t sub_181F44B74(uint64_t *a1, __n128 a2)
{
  v3 = *(v2 + 224);
  if (v3)
  {
    v4 = *a1;
    v5 = a1[1];
    v6 = a1[2];
    v7 = a1[3];
    v8 = *(v3 + 88);
    if (!v8)
    {
      goto LABEL_69;
    }

    v9 = v8[4];
    v10 = v8[3] + v9;
    if (v8[2] < v10)
    {
      v10 = v8[2];
    }

    v25 = *(v3 + 88);
    v26 = v8[4];
    v28 = v10;
    v11 = v25;
    while (1)
    {
      if (v9 == v10)
      {
        if ((sub_181F47FDC() & 1) == 0)
        {

LABEL_69:
          v17 = *(v3 + 104);
          if (!v17)
          {
            return 0;
          }

          v18 = v17[4];
          v19 = v17[3] + v18;
          if (v17[2] < v19)
          {
            v19 = v17[2];
          }

          v27 = v17[4];
          v29 = v19;
          v20 = v17;
          while (2)
          {
            if (v18 == v19)
            {
              if ((sub_181F47FDC() & 1) == 0)
              {

                return 0;
              }

              v20 = v17;
              v18 = v27;
            }

            v21 = &v20[4 * v18++];
            v27 = v18;
            v22 = v21[6];
            v23 = v21[7];
            v24 = v21[8];
            if (v22 > 2)
            {
              switch(v22)
              {
                case 3:
                  if (v5 != 3)
                  {
                    goto LABEL_74;
                  }

                  break;
                case 4:
                  if (v5 == 4)
                  {
                    break;
                  }

                  goto LABEL_74;
                case 5:
                  if (v5 != 5)
                  {
                    goto LABEL_74;
                  }

                  break;
                default:
LABEL_93:
                  if (v5 < 6 || (v21[5] != v4 || v22 != v5) && (sub_182AD4268() & 1) == 0)
                  {
                    goto LABEL_74;
                  }

                  break;
              }
            }

            else if (v22)
            {
              if (v22 != 1)
              {
                if (v22 == 2)
                {
                  if (v5 == 2)
                  {
                    break;
                  }

LABEL_74:
                  v19 = v29;
                  continue;
                }

                goto LABEL_93;
              }

              if (v5 != 1)
              {
                goto LABEL_74;
              }
            }

            else if (v5)
            {
              goto LABEL_74;
            }

            break;
          }

          if (v24 > 4)
          {
            if (v24 <= 6)
            {
              if (v24 == 5)
              {
                if (v7 == 5)
                {
                  goto LABEL_134;
                }
              }

              else if (v7 == 6)
              {
                goto LABEL_134;
              }

              goto LABEL_74;
            }

            switch(v24)
            {
              case 7:
                if (v7 == 7)
                {
                  goto LABEL_134;
                }

                goto LABEL_74;
              case 8:
                if (v7 == 8)
                {
                  goto LABEL_134;
                }

                goto LABEL_74;
              case 9:
                if (v7 == 9)
                {
                  goto LABEL_134;
                }

                goto LABEL_74;
            }
          }

          else
          {
            if (v24 > 1)
            {
              if (v24 == 2)
              {
                if (v7 == 2)
                {
                  goto LABEL_134;
                }
              }

              else if (v24 == 3)
              {
                if (v7 == 3)
                {
                  goto LABEL_134;
                }
              }

              else if (v7 == 4)
              {
                goto LABEL_134;
              }

              goto LABEL_74;
            }

            if (!v24)
            {
              if (!v7)
              {
                goto LABEL_134;
              }

              goto LABEL_74;
            }

            if (v24 == 1)
            {
              if (v7 == 1)
              {
                goto LABEL_134;
              }

              goto LABEL_74;
            }
          }

          if (v7 >= 0xA && (v23 == v6 && v24 == v7 || (sub_182AD4268() & 1) != 0))
          {
LABEL_134:

            return 2;
          }

          goto LABEL_74;
        }

        v11 = v25;
        v9 = v26;
      }

      v12 = (v11 + 32 * v9++);
      v26 = v9;
      v13 = v12[6];
      v14 = v12[7];
      v15 = v12[8];
      if (v13 > 2)
      {
        switch(v13)
        {
          case 3:
            if (v5 != 3)
            {
              goto LABEL_7;
            }

            goto LABEL_34;
          case 4:
            if (v5 != 4)
            {
              goto LABEL_7;
            }

            goto LABEL_34;
          case 5:
            if (v5 != 5)
            {
              goto LABEL_7;
            }

            goto LABEL_34;
        }
      }

      else
      {
        switch(v13)
        {
          case 0:
            if (v5)
            {
              goto LABEL_7;
            }

            goto LABEL_34;
          case 1:
            if (v5 != 1)
            {
              goto LABEL_7;
            }

            goto LABEL_34;
          case 2:
            if (v5 != 2)
            {
              goto LABEL_7;
            }

            goto LABEL_34;
        }
      }

      if (v5 < 6 || (v12[5] != v4 || v13 != v5) && (sub_182AD4268() & 1) == 0)
      {
        goto LABEL_7;
      }

LABEL_34:
      if (v15 > 4)
      {
        if (v15 <= 6)
        {
          if (v15 == 5)
          {
            if (v7 == 5)
            {
              goto LABEL_67;
            }
          }

          else if (v7 == 6)
          {
            goto LABEL_67;
          }

          goto LABEL_7;
        }

        switch(v15)
        {
          case 7:
            if (v7 == 7)
            {
              goto LABEL_67;
            }

            goto LABEL_7;
          case 8:
            if (v7 == 8)
            {
              goto LABEL_67;
            }

            goto LABEL_7;
          case 9:
            if (v7 == 9)
            {
              goto LABEL_67;
            }

            goto LABEL_7;
        }
      }

      else
      {
        if (v15 > 1)
        {
          if (v15 == 2)
          {
            if (v7 == 2)
            {
              goto LABEL_67;
            }
          }

          else if (v15 == 3)
          {
            if (v7 == 3)
            {
              goto LABEL_67;
            }
          }

          else if (v7 == 4)
          {
            goto LABEL_67;
          }

          goto LABEL_7;
        }

        if (!v15)
        {
          if (!v7)
          {
            goto LABEL_67;
          }

          goto LABEL_7;
        }

        if (v15 == 1)
        {
          if (v7 == 1)
          {
            goto LABEL_67;
          }

          goto LABEL_7;
        }
      }

      if (v7 >= 0xA && (v14 == v6 && v15 == v7 || (sub_182AD4268() & 1) != 0))
      {
LABEL_67:

        return 1;
      }

LABEL_7:
      v10 = v28;
    }
  }

  return 0;
}

uint64_t sub_181F4502C(unsigned __int8 *a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v48 = *a1;
  v47 = a1[1];
  v46 = a1[2];
  v45 = a1[3];
  v44 = a1[4];
  v43 = a1[5];
  v42 = a1[6];
  v41 = a1[7];
  v40 = a1[8];
  v2 = a1[9];
  v3 = a1[10];
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1[13];
  v7 = a1[14];
  v8 = a1[15];
  v9 = *(v1 + 224);
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = *(v9 + 96);
  v52 = v10;
  if ((*(v9 + 152) & 1) == 0)
  {
    v13 = *(v9 + 144);
    v38 = *(v9 + 136);
    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = *sub_182AD2388();
      v52 = v14;
    }

    v15 = v14[3];
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_37;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v14[2] < v16 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181B8477C(isUniquelyReferenced_nonNull_native, v16, 0);
      v14 = v52;
    }

    sub_181B855B4(v14 + 2, (v14 + 5), v38, v13);
    v11 = v52;
    if (v52)
    {
      goto LABEL_4;
    }

LABEL_13:
    v12 = *sub_182AD2388();
    v51 = v12;
    swift_retain_n();
    goto LABEL_14;
  }

  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_4:
  v51 = v11;
  v12 = v11;
LABEL_14:
  v18 = v12[4];
  v19 = v12[3] + v18;
  if (v12[2] < v19)
  {
    v19 = v12[2];
  }

  v52 = v12;
  v53 = v18;
  v54 = v19;

  v39 = v12;
  while (1)
  {
    if (v18 != v54)
    {
      goto LABEL_18;
    }

    if ((sub_181F47FDC() & 1) == 0)
    {
      break;
    }

    v12 = v52;
    v18 = v53;
LABEL_18:
    v53 = v18 + 1;
    *uu1 = *&v12[2 * v18 + 5];
    uu2[0] = v48;
    uu2[1] = v47;
    uu2[2] = v46;
    uu2[3] = v45;
    uu2[4] = v44;
    uu2[5] = v43;
    uu2[6] = v42;
    uu2[7] = v41;
    uu2[8] = v40;
    uu2[9] = v2;
    uu2[10] = v3;
    uu2[11] = v4;
    uu2[12] = v5;
    uu2[13] = v6;
    uu2[14] = v7;
    uu2[15] = v8;
    ++v18;
    if (!uuid_compare(uu1, uu2))
    {
    }
  }

  v20 = v39;

  v21 = v39[3];
  v22 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v23 = swift_isUniquelyReferenced_nonNull_native();
  if (v39[2] < v22 || (v23 & 1) == 0)
  {
    sub_181B8477C(v23, v22, 0);
    v20 = v51;
  }

  sub_181B855B4(v20 + 2, (v20 + 5), v48 | (v47 << 8) | (v46 << 16) | (v45 << 24) | (v44 << 32) | (v43 << 40) | (v42 << 48) | (v41 << 56), v40 | (v2 << 8) | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40) | (v7 << 48) | (v8 << 56));
  v24 = v37;
  if (!v37)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v25 = swift_allocObject();
    sub_18226B448(v25 + 16);
    v24 = v25;
    *(v36 + 224) = v25;
  }

  *uu1 = v20;
  if ((*(v24 + 152) & 1) == 0)
  {
    v26 = v20;
    v28 = *(v24 + 136);
    v27 = *(v24 + 144);
    v29 = v24;
    v30 = v26;

    v31 = sub_18226E164(uu1, v28, v27);
    v32 = *uu1;
    v33 = *(*uu1 + 24);
    if (v33 >= v31)
    {
      v34 = v31;
      if ((v31 & 0x8000000000000000) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1820E5F10();
          v32 = *uu1;
        }

        sub_181B64818(v34, v33, (v32 + 16), v32 + 40, &v52);
        sub_18226E660(v34, v33, (v32 + 16), (v32 + 40));

        v24 = v29;
        v20 = v30;
        goto LABEL_33;
      }

LABEL_39:
      __break(1u);
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_33:
  *(v24 + 96) = v20;
}

uint64_t sub_181F45454(unsigned __int8 *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = *a1;
  v31 = a1[1];
  v30 = a1[2];
  v29 = a1[3];
  v28 = a1[4];
  v27 = a1[5];
  v26 = a1[6];
  v25 = a1[7];
  v24 = a1[8];
  v2 = a1[9];
  v3 = a1[10];
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1[13];
  v7 = a1[14];
  v8 = a1[15];
  v9 = *(v1 + 224);
  v22 = v9;
  if (!v9 || (v10 = *(v9 + 112)) == 0)
  {
    v10 = *sub_182AD2388();
  }

  v38 = v10;
  v11 = swift_retain_n();
  v12 = v11[4];
  v13 = v11[3] + v12;
  if (v11[2] < v13)
  {
    v13 = v11[2];
  }

  v35 = v11;
  v36 = v12;
  v37 = v13;

  v14 = v23;
  while (v12 != v37)
  {
LABEL_7:
    v36 = v12 + 1;
    *uu1 = *(v14 + 16 * v12 + 40);
    uu2[0] = v32;
    uu2[1] = v31;
    uu2[2] = v30;
    uu2[3] = v29;
    uu2[4] = v28;
    uu2[5] = v27;
    uu2[6] = v26;
    uu2[7] = v25;
    uu2[8] = v24;
    uu2[9] = v2;
    uu2[10] = v3;
    uu2[11] = v4;
    uu2[12] = v5;
    uu2[13] = v6;
    uu2[14] = v7;
    uu2[15] = v8;
    ++v12;
    if (!uuid_compare(uu1, uu2))
    {
    }
  }

  if (sub_181F47FDC())
  {
    v14 = v35;
    v12 = v36;
    goto LABEL_7;
  }

  v16 = v23;

  v17 = *(v23 + 24);
  v18 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (*(v23 + 16) < v18 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181B8477C(isUniquelyReferenced_nonNull_native, v18, 0);
    v16 = v38;
  }

  sub_181B855B4((v16 + 16), v16 + 40, v32 | (v31 << 8) | (v30 << 16) | (v29 << 24) | (v28 << 32) | (v27 << 40) | (v26 << 48) | (v25 << 56), v24 | (v2 << 8) | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40) | (v7 << 48) | (v8 << 56));
  v20 = v22;
  if (!v22)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v20 = swift_allocObject();
    sub_18226B448(v20 + 16);
    *(v21 + 224) = v20;
  }

  *(v20 + 112) = v16;
}

uint64_t sub_181F45728()
{
  v1 = *v0;
  sub_182AD44E8();
  sub_181F3E900(v4, v1, v2);
  return sub_182AD4558();
}

uint64_t sub_181F45778(uint64_t a1)
{
  v2 = *v1;
  sub_182AD44E8();
  sub_181F3E900(v5, v2, v3);
  return sub_182AD4558();
}

unint64_t sub_181F457BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_181F49918(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_181F457EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_181E75FB0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_181F45818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_181F49918(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_181F4584C(uint64_t a1)
{
  v2 = sub_181E75F5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MutableParametersStorage.__allocating_init(_:)(const void *a1)
{
  v2 = swift_allocObject();
  memcpy((v2 + 16), a1, 0x188uLL);
  return v2;
}

unint64_t MutableParametersStorage.description.getter()
{
  swift_beginAccess();
  memcpy(v2, (v0 + 16), sizeof(v2));
  return Parameters.description.getter();
}

uint64_t MutableParametersStorage.hash(into:)(uint64_t a1)
{
  swift_beginAccess();
  memcpy(v4, (v1 + 16), sizeof(v4));
  return Parameters.hash(into:)(a1);
}

uint64_t MutableParametersStorage.deinit()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_181F48214(__dst);
  return v0;
}

uint64_t MutableParametersStorage.hashValue.getter()
{
  sub_182AD44E8();
  swift_beginAccess();
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  Parameters.hash(into:)(v3);
  return sub_182AD4558();
}

uint64_t sub_181F45A58()
{
  v1 = *v0;
  sub_182AD44E8();
  swift_beginAccess();
  memcpy(__dst, (v1 + 16), sizeof(__dst));
  Parameters.hash(into:)(v4);
  return sub_182AD4558();
}

uint64_t sub_181F45ACC(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  memcpy(v5, (v3 + 16), sizeof(v5));
  return Parameters.hash(into:)(a1);
}

uint64_t sub_181F45B30(uint64_t a1)
{
  v2 = *v1;
  sub_182AD44E8();
  swift_beginAccess();
  memcpy(__dst, (v2 + 16), sizeof(__dst));
  Parameters.hash(into:)(v5);
  return sub_182AD4558();
}

unint64_t sub_181F45BA0()
{
  v1 = *v0;
  swift_beginAccess();
  memcpy(v3, (v1 + 16), sizeof(v3));
  return Parameters.description.getter();
}

uint64_t static ImmutableParametersStorage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, (a1 + 16), sizeof(__dst));
  memcpy(__src, (a1 + 16), sizeof(__src));
  memcpy(v8, (a2 + 16), sizeof(v8));
  memcpy(v5, (a2 + 16), sizeof(v5));
  sub_181F481DC(__dst, v10);
  sub_181F481DC(v8, v10);
  LOBYTE(a2) = _s7Network10ParametersV2eeoiySbAC_ACtFZ_0(__src, v5);
  memcpy(v9, v5, sizeof(v9));
  sub_181F48214(v9);
  memcpy(v10, __src, sizeof(v10));
  sub_181F48214(v10);
  return a2 & 1;
}

uint64_t _s7Network24MutableParametersStorageCfD_0()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_181F48214(__dst);
  return swift_deallocClassInstance();
}

uint64_t ImmutableParametersStorage.hashValue.getter()
{
  sub_182AD44E8();
  memcpy(v2, (v0 + 16), sizeof(v2));
  Parameters.hash(into:)(v3);
  return sub_182AD4558();
}

uint64_t sub_181F45E00()
{
  v1 = *v0;
  sub_182AD44E8();
  memcpy(v3, (v1 + 16), sizeof(v3));
  Parameters.hash(into:)(v4);
  return sub_182AD4558();
}

uint64_t sub_181F45EB0(uint64_t a1)
{
  v2 = *v1;
  sub_182AD44E8();
  memcpy(v4, (v2 + 16), sizeof(v4));
  Parameters.hash(into:)(v5);
  return sub_182AD4558();
}

uint64_t sub_181F45F4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  memcpy(__dst, (*a1 + 16), sizeof(__dst));
  memcpy(__src, (v2 + 16), sizeof(__src));
  memcpy(v8, (v3 + 16), sizeof(v8));
  memcpy(v5, (v3 + 16), sizeof(v5));
  sub_181F481DC(__dst, v10);
  sub_181F481DC(v8, v10);
  LOBYTE(v2) = static Parameters.== infix(_:_:)(__src, v5);
  memcpy(v9, v5, sizeof(v9));
  sub_181F48214(v9);
  memcpy(v10, __src, sizeof(v10));
  sub_181F48214(v10);
  return v2 & 1;
}

uint64_t sub_181F4604C(char a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838730, &qword_182AE4BB8);
    v9 = swift_allocObject();
    v12 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v12;
    if (v12 >= 1)
    {
      sub_1820E5500(v9 + 16, v9 + 40, v5, v4 + 40);
    }
  }

  else
  {
    sub_182AD2398();
    if (a1)
    {
      v8 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838730, &qword_182AE4BB8);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 40;
      if (v10 < 40)
      {
        v11 = v10 - 33;
      }

      *(v9 + 16) = v11 >> 3;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        sub_181AB76EC(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838730, &qword_182AE4BB8);
      v9 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v9);
      v14 = v13 - 40;
      if (v13 < 40)
      {
        v14 = v13 - 33;
      }

      v15 = *(v4 + 24);
      *(v9 + 16) = v14 >> 3;
      *(v9 + 24) = v15;
      *(v9 + 32) = 0;
      if (v15 >= 1)
      {
        sub_181F4762C(v9 + 16, v9 + 40, v5, v4 + 40);
      }
    }
  }

  *v3 = v9;
  return result;
}

uint64_t sub_181F461F8(char a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838788, &qword_182AE4C10);
    v9 = swift_allocObject();
    v13 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v13;
    if (v13 >= 1)
    {
      sub_1820E56A8(v9 + 16, v9 + 40, v5, v4 + 40, v12);
    }
  }

  else
  {
    type metadata accessor for FrameArrayEntry();
    sub_182AD2398();
    if (a1)
    {
      v8 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838788, &qword_182AE4C10);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 40;
      if (v10 < 40)
      {
        v11 = v10 - 33;
      }

      *(v9 + 16) = v11 >> 3;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        sub_181AB76EC(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838788, &qword_182AE4C10);
      v9 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v9);
      v15 = v14 - 40;
      if (v14 < 40)
      {
        v15 = v14 - 33;
      }

      v16 = *(v4 + 24);
      *(v9 + 16) = v15 >> 3;
      *(v9 + 24) = v16;
      *(v9 + 32) = 0;
      if (v16 >= 1)
      {
        sub_181F47BD4(v9 + 16, v9 + 40, v5, v4 + 40, type metadata accessor for FrameArrayEntry);
      }
    }
  }

  *v3 = v9;
  return result;
}

uint64_t sub_181F463C8(char a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838768, &qword_182AE4BF0);
    v9 = swift_allocObject();
    v10 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v10;
    if (v10 >= 1)
    {
      sub_1820E56D4(v9 + 16, v9 + 40, v5, v4 + 40);
    }
  }

  else
  {
    sub_182AD2398();
    if (a1)
    {
      v8 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838768, &qword_182AE4BF0);
      v9 = swift_allocObject();
      *(v9 + 16) = (_swift_stdlib_malloc_size(v9) - 40) / 40;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        sub_181F46F08(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838768, &qword_182AE4BF0);
      v9 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v9);
      v12 = *(v4 + 24);
      *(v9 + 16) = (v11 - 40) / 40;
      *(v9 + 24) = v12;
      *(v9 + 32) = 0;
      if (v12 >= 1)
      {
        sub_181F477F4(v9 + 16, v9 + 40, v5, v4 + 40);
      }
    }
  }

  *v3 = v9;
  return result;
}

uint64_t sub_181F46590(char a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838778, &qword_182AE4C00);
    v9 = swift_allocObject();
    v10 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v10;
    if (v10 >= 1)
    {
      sub_1820E589C(v9 + 16, v9 + 40, v5, v4 + 40);
    }
  }

  else
  {
    sub_182AD2398();
    if (a1)
    {
      v8 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838778, &qword_182AE4C00);
      v9 = swift_allocObject();
      *(v9 + 16) = (_swift_stdlib_malloc_size(v9) - 40) / 24;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        sub_181F47044(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838778, &qword_182AE4C00);
      v9 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v9);
      v12 = *(v4 + 24);
      *(v9 + 16) = (v11 - 40) / 24;
      *(v9 + 24) = v12;
      *(v9 + 32) = 0;
      if (v12 >= 1)
      {
        sub_181F478E4(v9 + 16, v9 + 40, v5, v4 + 40);
      }
    }
  }

  *v3 = v9;
  return result;
}

uint64_t sub_181F46758(char a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838780, &qword_182AE4C08);
    v9 = swift_allocObject();
    v12 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v12;
    if (v12 >= 1)
    {
      sub_1820E57B4(v9 + 16, (v9 + 40), v5, (v4 + 40));
    }
  }

  else
  {
    sub_182AD2398();
    if (a1)
    {
      v8 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838780, &qword_182AE4C08);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 40;
      if (v10 < 40)
      {
        v11 = v10 - 33;
      }

      *(v9 + 16) = v11 >> 3;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        sub_181AB76EC(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838780, &qword_182AE4C08);
      v9 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v9);
      v14 = v13 - 40;
      if (v13 < 40)
      {
        v14 = v13 - 33;
      }

      v15 = *(v4 + 24);
      *(v9 + 16) = v14 >> 3;
      *(v9 + 24) = v15;
      *(v9 + 32) = 0;
      if (v15 >= 1)
      {
        sub_181F47ADC(v9 + 16, (v9 + 40), v5, (v4 + 40));
      }
    }
  }

  *v3 = v9;
  return result;
}

uint64_t sub_181F46904(char a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386C8, &qword_182AE4B50);
    v9 = swift_allocObject();
    v10 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v10;
    if (v10 >= 1)
    {
      sub_1820E5CF8(v9 + 16, (v9 + 40), v5, (v4 + 40));
    }
  }

  else
  {
    sub_182AD2398();
    if (a1)
    {
      v8 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386C8, &qword_182AE4B50);
      v9 = swift_allocObject();
      *(v9 + 16) = (_swift_stdlib_malloc_size(v9) - 40) / 24;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        sub_181F47044(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386C8, &qword_182AE4B50);
      v9 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v9);
      v12 = *(v4 + 24);
      *(v9 + 16) = (v11 - 40) / 24;
      *(v9 + 24) = v12;
      *(v9 + 32) = 0;
      if (v12 >= 1)
      {
        sub_181F47DCC(v9 + 16, (v9 + 40), v5, (v4 + 40));
      }
    }
  }

  *v3 = v9;
  return result;
}

void sub_181F46ACC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = __OFADD__(v4, v3);
  v5 = v4 + v3;
  if (!v6)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *a1);
      if (v5 < *a1 || (v5 -= *a1, !v6))
      {
LABEL_9:
        *(a2 + 8 * v5) = a3;
        v6 = __OFADD__(v3, 1);
        v7 = v3 + 1;
        if (!v6)
        {
          a1[1] = v7;

          return;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *a1);
      v5 += *a1;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
}

void *sub_181F46B3C(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v6 = __OFADD__(v4, v3);
  v5 = v4 + v3;
  if (!v6)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v6))
      {
LABEL_9:
        v7 = a2 + 40 * v5;
        v8 = *(a3 + 16);
        *v7 = *a3;
        *(v7 + 16) = v8;
        *(v7 + 32) = *(a3 + 32);
        v6 = __OFADD__(v3, 1);
        v9 = v3 + 1;
        if (!v6)
        {
          result[1] = v9;
          return sub_181F49AE8(a3, v10);
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *result);
      v5 += *result;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_181F46BDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[1];
  v5 = a1[2];
  v8 = __OFADD__(v5, v6);
  v7 = v5 + v6;
  if (!v8)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      v8 = __OFSUB__(v7, *a1);
      if (v7 < *a1 || (v7 -= *a1, !v8))
      {
LABEL_9:
        v9 = (a2 + 24 * v7);
        *v9 = a3;
        v9[1] = a4;
        v9[2] = a5;
        v10 = a1[1];
        v8 = __OFADD__(v10, 1);
        v11 = v10 + 1;
        if (!v8)
        {
          a1[1] = v11;

          return;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v7 < 0)
    {
      v8 = __OFADD__(v7, *a1);
      v7 += *a1;
      if (v8)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
}

void *sub_181F46C5C(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[1];
  v3 = result[2];
  v6 = __OFADD__(v3, v4);
  v5 = v3 + v4;
  if (!v6)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v6))
      {
LABEL_9:
        *(a2 + 8 * v5) = a3;
        v7 = result[1];
        v6 = __OFADD__(v7, 1);
        v8 = v7 + 1;
        if (!v6)
        {
          result[1] = v8;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *result);
      v5 += *result;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_181F46CB8(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[v4];
  if (v12 != __dst || &v12[v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[v8];
  if (&__dst[v8] != v11 || v16 >= &v11[v7])
  {

    memmove(v16, v11, v7);
  }
}

void sub_181F46DE0(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[32 * v4];
  if (v12 != __dst || &v12[32 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 32 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[32 * v8];
  if (v16 != v11 || v16 >= &v11[32 * v7])
  {

    memmove(v16, v11, 32 * v7);
  }
}

void sub_181F46F08(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_32;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = &a4[40 * v4];
  if (v12 != __dst || &v12[40 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 40 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v16 = &__dst[40 * v8];
  v17 = 40 * v7;
  if (v16 != v11 || v16 >= &v11[v17])
  {

    memmove(v16, v11, v17);
  }
}

void sub_181F47044(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_32;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = &a4[24 * v4];
  if (v12 != __dst || &v12[24 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 24 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v16 = &__dst[24 * v8];
  if (v16 != v11 || v16 >= &v11[24 * v7])
  {

    memmove(v16, v11, 24 * v7);
  }
}

void sub_181F47184(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 < 1)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if (!__src)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  memcpy(__dst, &__src[16 * v4], 16 * v9);
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(&__dst[16 * v9], v10, 16 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t sub_181F4727C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_181F47360(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_181F47450(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_181F47534(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 < 1)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if (!__src)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  memcpy(__dst, &__src[v4], v9);
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(&__dst[v9], v10, v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t sub_181F4762C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_181F47710(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_181F477F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_181F478E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_181F479D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A410, &unk_182AE6EF0);
      swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A410, &unk_182AE6EF0);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_181F47ADC(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 < 1)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if (!__src)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  memcpy(__dst, &__src[8 * v4], 8 * v9);
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(&__dst[8 * v9], v10, 8 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

void sub_181F47BD4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = a3[1];
  if (v6 < v8)
  {
    v9 = v8 - v6;
    if (!__OFSUB__(v8, v6))
    {
      v10 = a4;
      if (v6 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = 0;
  v9 = 0;
  if (v8 >= 1)
  {
LABEL_7:
    if (a4)
    {
      (a5)(0, a2);
      swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v6 < v8 && v9 >= 1)
  {
    if (v10)
    {
      (a5)(0, a2);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_181F47CDC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_181F47DCC(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 < 1)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if (!__src)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  memcpy(__dst, &__src[24 * v4], 24 * v9);
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(&__dst[24 * v9], v10, 24 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

void sub_181F47ED4(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 < 1)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if (!__src)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  memcpy(__dst, &__src[20 * v4], 20 * v9);
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(&__dst[20 * v9], v10, 20 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t sub_181F47FDC()
{
  v1 = *v0;
  v3 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  v6 = __OFADD__(v2, v3);
  v4 = v2 + v3;
  if (v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 < 0)
  {
LABEL_7:
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(v1 + 16);
    v6 = __OFADD__(v4, v7);
    v4 += v7;
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v5 = *(v1 + 16);
  v6 = __OFSUB__(v4, v5);
  v1 = v4 - v5;
  if (v1 < 0 == v6)
  {
    v4 = v1;
    if (v6)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

LABEL_9:
  if (!v4 || v4 == v0[1])
  {
    return 0;
  }

  v0[1] = 0;
  v0[2] = v4;
  return 1;
}

uint64_t sub_181F48044(uint64_t a1, char a2, uint64_t *a3)
{
  result = sub_181AA8428(&qword_1ED40F830, &qword_1EA838AB0, &qword_182AE6A10);
  v7 = result;
  v8 = *a3;
  if (!*a3)
  {
    type metadata accessor for ProtocolStack();
    v8 = swift_allocObject();
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    *(v8 + 16) = 0;
    *(v8 + 40) = xmmword_182AE3C80;
    *(v8 + 56) = 0xF000000000000007;
    *(v8 + 64) = 2;
    *(v8 + 72) = 0;
    *(v8 + 80) = 0;
    *(v8 + 88) = xmmword_182AE3C90;
    *(v8 + 104) = 0xF000000000000007;
    swift_beginAccess();
    v9 = *(v8 + 48);
    v10 = *(v8 + 56);
    *(v8 + 48) = xmmword_182AE3CA0;
    result = sub_181A52FE0(v9, v10);
    *a3 = v8;
  }

  switch(a2)
  {
    case 1:

      sub_181F61FE0(v13, v7, v20);
      v14 = v20[0];
      v15 = v20[1];
      swift_beginAccess();
      v16 = *(v8 + 48);
      v17 = *(v8 + 56);
      *(v8 + 48) = v14;
      *(v8 + 56) = v15;
      sub_181A52FE0(v16, v17);
      break;
    case 2:
      v11 = *(v8 + 32);
      v12 = *(v8 + 40);
      *(v8 + 32) = a1;
      *(v8 + 40) = 0x4000000000000000;

      sub_181A5301C(v11, v12);
      break;
    case 3:
      v18 = a1;
      v19 = 0;

      sub_181B2A5BC(&v18);
      sub_181AAD084(v18, v19);
      break;
    default:
      return result;
  }
}