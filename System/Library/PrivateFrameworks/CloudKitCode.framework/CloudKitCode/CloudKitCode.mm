uint64_t sub_2438714D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243871508@<X0>(uint64_t *a1@<X8>)
{
  result = Ckcode_ProtectedEnvelope.encrypted.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_243871560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = a1 + *(a3 + 20);
  }

  return sub_243873AA4(v8, a2, v7);
}

uint64_t sub_243871608(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for UnknownStorage();
    v10 = a1 + *(a4 + 20);
  }

  return sub_243873554(v10, a2, a2, v9);
}

uint64_t sub_2438716BC@<X0>(uint64_t *a1@<X8>)
{
  result = Ckcode_Proto2Any.typeURL.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2438716EC@<X0>(uint64_t *a1@<X8>)
{
  result = Ckcode_Proto2Any.value.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24387171C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = Ckcode_Proto2ProtectedEnvelope.encrypted.getter(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_243871774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2438798E0();
  type metadata accessor for UnknownStorage();
  sub_24387993C();
  if (*(v7 + 84) == a2)
  {

    return sub_243873AA4(v3, a2, v6);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20) + 8);
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
}

void sub_243871828()
{
  sub_243879914();
  type metadata accessor for UnknownStorage();
  sub_24387993C();
  if (*(v5 + 84) == v3)
  {

    sub_243873554(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }
}

uint64_t sub_2438718C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  sub_24387993C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = a1 + *(a3 + 20);
  }

  return sub_243873AA4(v9, a2, v8);
}

uint64_t sub_243871968()
{
  sub_243879914();
  sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  sub_24387993C();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v6 = type metadata accessor for UnknownStorage();
    v7 = v1 + *(v2 + 20);
  }

  return sub_243873554(v7, v0, v0, v6);
}

uint64_t sub_243871A08@<X0>(uint64_t *a1@<X8>)
{
  result = Ckcode_RecordTransport.localSerialization.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_243871A38@<X0>(uint64_t *a1@<X8>)
{
  result = Ckcode_RecordTransport.wireSerialization.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_243871A68@<X0>(uint64_t *a1@<X8>)
{
  result = Ckcode_RecordTransport.encryptedMasterKey.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_243871A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_243873AA4(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_243871B54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_243873554(v10, a2, a2, v9);
  }

  else
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_243871C48()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243871C80()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243871CB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243871CF0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243871FA4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_243871FB4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

__n128 sub_243872000(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

void *sub_24387200C()
{
  sub_24388A818();
  result = sub_243880A58(v1);
  *v0 = result;
  return result;
}

uint64_t sub_243872054()
{
  sub_24388A818();
  result = sub_243881234(v1);
  *v0 = result & 1;
  return result;
}

uint64_t sub_2438720D0()
{
  sub_24388A818();
  result = sub_24388264C(v1);
  *v0 = result & 1;
  return result;
}

uint64_t sub_243872128()
{
  sub_24388A818();
  result = sub_243882750(v1);
  *v0 = result & 1;
  return result;
}

uint64_t sub_243872190()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2438721CC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_243872204()
{

  v0 = sub_24388A694();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2438722B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2438722F0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24387233C(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x245D42700);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

uint64_t sub_243872360()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243872398()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

__n128 sub_243872428(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_24387244C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24388FED4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2438724CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2438915A4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_243872528@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2438915FC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_243872590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = sub_243873AA4(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2438725D8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for URL();

  return sub_243873554(a1, v5, a3, v6);
}

uint64_t sub_243872638()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243872674()
{

  v0 = sub_24388A694();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

void sub_2438726A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_243899BAC();
  v5 = v4;
  v7 = v6;
  v8 = ~(-1 << *(v3 + 32));
  for (i = v9 & v8; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v8)
  {
    v11 = (*(v3 + 48) + 16 * i);
    v12 = *v11 == v7 && v11[1] == v5;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  sub_243899B78();
}

uint64_t sub_243872754()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_243872800()
{
  sub_243899B18();
  v2 = sub_243873884(&qword_27ED94EE8, &qword_24389E4C0);

  return sub_243873AA4(v1, v0, v2);
}

uint64_t sub_243872850()
{
  sub_243899B18();
  sub_243873884(&qword_27ED94EE8, &qword_24389E4C0);
  v0 = sub_24389B1B0();

  return sub_243873554(v0, v1, v2, v3);
}

uint64_t sub_243872898()
{
  sub_243899B18();
  v2 = sub_243873884(&qword_27ED94EE0, &qword_24389E4B8);

  return sub_243873AA4(v1, v0, v2);
}

uint64_t sub_2438728E8()
{
  sub_243899B18();
  sub_243873884(&qword_27ED94EE0, &qword_24389E4B8);
  v0 = sub_24389B1B0();

  return sub_243873554(v0, v1, v2, v3);
}

uint64_t sub_243872930()
{
  v1 = sub_243873884(&qword_27ED94F38, &qword_24389E628);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2438729C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2438729FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_243873E40(a1, a2);
  }

  return a1;
}

id CKDatabase.codeConnection(toService:local:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  result = [v4 container];
  if (result)
  {
    v9 = result;
    v10 = [v4 databaseScope];
    type metadata accessor for CodeConnection();
    swift_allocObject();
    v11 = sub_243873324(a1, a2, v9, v10, a3 & 1);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243872AFC(uint64_t a1)
{
  v2 = sub_243872FEC(&qword_27ED946E0, type metadata accessor for CKError, &unk_24389C8FC);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_243872B68(uint64_t a1)
{
  v2 = sub_243872FEC(&qword_27ED946E0, type metadata accessor for CKError, &unk_24389C8FC);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_243872BD8(uint64_t a1)
{
  v2 = sub_243872FEC(&qword_27ED94718, type metadata accessor for CKError, &unk_24389C940);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_243872C68(uint64_t a1)
{
  v2 = sub_243872FEC(&qword_27ED94718, type metadata accessor for CKError, &unk_24389C940);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_243872CD4(uint64_t a1)
{
  v2 = sub_243872FEC(&qword_27ED94718, type metadata accessor for CKError, &unk_24389C940);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_243872D40(void *a1, uint64_t a2)
{
  v4 = sub_243872FEC(&qword_27ED94718, type metadata accessor for CKError, &unk_24389C940);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_243872DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_243872FEC(&qword_27ED94718, type metadata accessor for CKError, &unk_24389C940);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

Swift::Int sub_243872E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_243872EB4(uint64_t a2@<X8>)
{
  sub_243872EE8();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_243872F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243872FEC(&qword_27ED94718, type metadata accessor for CKError, &unk_24389C940);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_243872FEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_243873168(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_243873200()
{
  result = qword_27ED94708;
  if (!qword_27ED94708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED94708);
  }

  return result;
}

uint64_t sub_243873324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return v5;
}

void sub_243873338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v34 = a5;
  v35 = a4;
  v32 = a2;
  v33 = a1;
  v36 = a6;
  v37 = a7;
  v38 = a8;
  v39 = a9;
  v15 = type metadata accessor for CodeOperation.DestinationServer(0, &v36);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v30 - v16;
  v18 = type metadata accessor for Optional();
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v30 - v20;
  v22 = *(v9 + 24);
  v31 = *(v9 + 16);
  (*(*(a6 - 8) + 16))(&v30 - v20, a3, a6, v19);
  sub_243873554(v21, 0, 1, a6);
  v23 = *(v9 + 48);
  v24 = type metadata accessor for URL();
  if (v23)
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  sub_243873554(v17, v25, 2, v24);
  v36 = a6;
  v37 = a7;
  v38 = a8;
  v39 = a9;
  type metadata accessor for CodeOperation(0, &v36);

  v26 = v32;

  CodeOperation.__allocating_init(service:functionName:request:destinationServer:)(v31, v22, v33, v26);
  v28 = v27;

  sub_2438914F0();
  [v28 configureConvenience_];
  v29 = [*(v10 + 32) databaseWithDatabaseScope_];
  [v29 addOperation_];
}

uint64_t CodeConnection.deinit()
{

  return v0;
}

uint64_t CodeConnection.__deallocating_deinit()
{
  CodeConnection.deinit();

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

uint64_t Invocable.invoke<A>(function:request:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v16 = *(a8 + 8);
  v17 = type metadata accessor for Google_Protobuf_Empty();
  v18 = sub_2438737BC();

  v16(a1, a2, a3, sub_243873790, v15, a7, v17, a9, v18, a6, a8);
}

unint64_t sub_2438737BC()
{
  result = qword_27ED94728;
  if (!qword_27ED94728)
  {
    type metadata accessor for Google_Protobuf_Empty();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED94728);
  }

  return result;
}

uint64_t sub_243873884(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2438738D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_243873964(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t Ckcode_ProtectedEnvelope.encrypted.getter()
{
  v0 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  sub_243876184(v0);
  sub_243876190();
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - v2;
  v4 = sub_2438761E0();
  sub_2438760B4(v4, v5, &qword_27ED94960, &qword_24389CB10);
  v6 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  if (sub_243873AA4(v3, 1, v6) == 1)
  {
    sub_24387605C(v3, &qword_27ED94960, &qword_24389CB10);
    return 0;
  }

  sub_243876224();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_243873ACC(v3);
    return 0;
  }

  return *v3;
}

uint64_t sub_243873ACC(uint64_t a1)
{
  v2 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243873B28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_243873DE8(*a1, v2);
  return Ckcode_ProtectedEnvelope.encrypted.setter(v1, v2);
}

uint64_t Ckcode_ProtectedEnvelope.encrypted.setter(uint64_t a1, uint64_t a2)
{
  sub_24387605C(v2, &qword_27ED94960, &qword_24389CB10);
  *v2 = a1;
  v2[1] = a2;
  v5 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  sub_2438761E0();
  swift_storeEnumTagMultiPayload();
  sub_2438761BC();

  return sub_243873554(v6, v7, v8, v5);
}

void (*Ckcode_ProtectedEnvelope.encrypted.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = sub_243873964(0x28uLL);
  *a1 = v4;
  v4[2] = v2;
  v5 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  sub_243876184(v5);
  v7 = sub_243873964(*(v6 + 64));
  v4[3] = v7;
  v8 = sub_243876218();
  sub_2438760B4(v8, v9, &qword_27ED94960, &qword_24389CB10);
  v4[4] = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  sub_24387619C(v7);
  if (v10)
  {
    sub_24387605C(v7, &qword_27ED94960, &qword_24389CB10);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      v12 = *v7;
      goto LABEL_8;
    }

    sub_243873ACC(v7);
  }

  v12 = xmmword_24389CAE0;
LABEL_8:
  *v4 = v12;
  return sub_243873D04;
}

void sub_243873D04(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[2];
  if (a2)
  {
    sub_243873DE8(**a1, v3);
    sub_24387605C(v7, &qword_27ED94960, &qword_24389CB10);
    *v7 = v4;
    v7[1] = v3;
    sub_243876218();
    swift_storeEnumTagMultiPayload();
    sub_2438761BC();
    sub_243873554(v8, v9, v10, v6);
    sub_243873E40(*v2, v2[1]);
  }

  else
  {
    sub_24387605C((*a1)[2], &qword_27ED94960, &qword_24389CB10);
    *v7 = v4;
    v7[1] = v3;
    sub_243876218();
    swift_storeEnumTagMultiPayload();
    sub_2438761BC();
    sub_243873554(v11, v12, v13, v6);
  }

  free(v5);

  free(v2);
}

uint64_t sub_243873DE8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_243873E40(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t Ckcode_ProtectedEnvelope.value.getter()
{
  v1 = v0;
  v2 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  sub_243876184(v2);
  sub_243876190();
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  sub_2438760B4(v1, &v10 - v4, &qword_27ED94960, &qword_24389CB10);
  v6 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  if (sub_243873AA4(v5, 1, v6) == 1)
  {
    sub_24387605C(v5, &qword_27ED94960, &qword_24389CB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for Google_Protobuf_Any();
      sub_243876174();
      v7 = sub_243876224();
      return v8(v7);
    }

    sub_243873ACC(v5);
  }

  return Google_Protobuf_Any.init()();
}

uint64_t sub_243873FC8(uint64_t a1)
{
  v2 = type metadata accessor for Google_Protobuf_Any();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return Ckcode_ProtectedEnvelope.value.setter();
}

uint64_t Ckcode_ProtectedEnvelope.value.setter()
{
  sub_24387605C(v0, &qword_27ED94960, &qword_24389CB10);
  type metadata accessor for Google_Protobuf_Any();
  sub_243876174();
  v1 = sub_2438761E0();
  v2(v1);
  v3 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  sub_2438761E0();
  swift_storeEnumTagMultiPayload();
  sub_2438761BC();

  return sub_243873554(v4, v5, v6, v3);
}

void (*Ckcode_ProtectedEnvelope.value.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = sub_243873964(0x38uLL);
  *a1 = v4;
  *v4 = v1;
  v5 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  sub_243876184(v5);
  v7 = sub_243873964(*(v6 + 64));
  v4[1] = v7;
  v8 = type metadata accessor for Google_Protobuf_Any();
  v4[2] = v8;
  sub_243876204();
  v10 = v9;
  v4[3] = v9;
  v12 = *(v11 + 64);
  v4[4] = sub_243873964(v12);
  v13 = sub_243873964(v12);
  v4[5] = v13;
  sub_2438760B4(v2, v7, &qword_27ED94960, &qword_24389CB10);
  v14 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  v4[6] = v14;
  if (sub_243873AA4(v7, 1, v14) == 1)
  {
    sub_24387605C(v7, &qword_27ED94960, &qword_24389CB10);
LABEL_6:
    Google_Protobuf_Any.init()();
    return sub_2438742EC;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_243873ACC(v7);
    goto LABEL_6;
  }

  (*(v10 + 32))(v13, v7, v8);
  return sub_2438742EC;
}

void sub_2438742EC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v6 = (*a1)[3];
  v5 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v3, v8);
    sub_24387605C(v9, &qword_27ED94960, &qword_24389CB10);
    (*(v6 + 32))(v9, v5, v8);
    swift_storeEnumTagMultiPayload();
    sub_2438761BC();
    sub_243873554(v10, v11, v12, v4);
    (*(v6 + 8))(v3, v8);
  }

  else
  {
    sub_24387605C(**a1, &qword_27ED94960, &qword_24389CB10);
    (*(v6 + 32))(v9, v3, v8);
    swift_storeEnumTagMultiPayload();
    sub_2438761BC();
    sub_243873554(v13, v14, v15, v4);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Ckcode_ProtectedEnvelope.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Ckcode_ProtectedEnvelope(0) + 20);
  type metadata accessor for UnknownStorage();
  sub_243876174();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_2438744E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Ckcode_ProtectedEnvelope.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Ckcode_ProtectedEnvelope(0) + 20);
  type metadata accessor for UnknownStorage();
  sub_243876174();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t static Ckcode_ProtectedEnvelope.OneOf_Contents.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Google_Protobuf_Any();
  sub_243876204();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_2438761C8();
  type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  sub_243876174();
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v28 - v13);
  v15 = sub_243873884(&qword_27ED94748, &qword_24389CB18);
  sub_243876184(v15);
  sub_243876190();
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  v20 = (&v28 + *(v19 + 56) - v17);
  sub_24387487C(a1, &v28 - v17);
  sub_24387487C(a2, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24387487C(v18, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v7 + 32))(v2, v20, v5);
      sub_243876218();
      v21 = static Google_Protobuf_Any.== infix(_:_:)();
      v22 = *(v7 + 8);
      v22(v2, v5);
      v22(v11, v5);
LABEL_9:
      sub_243873ACC(v18);
      return v21 & 1;
    }

    (*(v7 + 8))(v11, v5);
  }

  else
  {
    sub_24387487C(v18, v14);
    v23 = *v14;
    v24 = v14[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v25 = *v20;
      v26 = v20[1];
      v21 = MEMORY[0x245D420F0](v23, v24, *v20, v26);
      sub_243873E40(v25, v26);
      sub_243873E40(v23, v24);
      goto LABEL_9;
    }

    sub_243873E40(v23, v24);
  }

  sub_24387605C(v18, &qword_27ED94748, &qword_24389CB18);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_24387487C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Ckcode_ProtectedEnvelope.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  sub_243873554(a1, 1, 1, v2);
  type metadata accessor for Ckcode_ProtectedEnvelope(0);
  return UnknownStorage.init()();
}

uint64_t sub_243874950()
{
  v0 = type metadata accessor for _NameMap();
  sub_243876110(v0, qword_27ED94730);
  sub_243874BC0(v0, qword_27ED94730);
  sub_243873884(&qword_27ED94780, qword_24389D0B0);
  v1 = (sub_243873884(&qword_27ED94788, &unk_24389CD10) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24389CAF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "encrypted";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t static Ckcode_ProtectedEnvelope._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ED946A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = sub_243874BC0(v2, qword_27ED94730);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_243874BC0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t Ckcode_ProtectedEnvelope.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v10 = sub_243876224();
      sub_243874E48(v10, v11, a2, a3);
    }

    else if (result == 1)
    {
      v8 = sub_2438761E0();
      sub_243874C7C(v8, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_243874C7C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v13 = xmmword_24389CB00;
  dispatch thunk of Decoder.decodeSingularBytesField(value:)();
  v9 = v13;
  if (v4 || *(&v13 + 1) >> 60 == 15)
  {
    return sub_2438729FC(v13, *(&v13 + 1));
  }

  sub_2438760B4(a2, v8, &qword_27ED94960, &qword_24389CB10);
  v14 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  v10 = sub_243873AA4(v8, 1, v14);
  sub_243873DE8(v9, *(&v9 + 1));
  sub_24387605C(v8, &qword_27ED94960, &qword_24389CB10);
  if (v10 != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  sub_2438729FC(v9, *(&v9 + 1));
  sub_24387605C(a2, &qword_27ED94960, &qword_24389CB10);
  *a2 = v9;
  v12 = v14;
  swift_storeEnumTagMultiPayload();
  return sub_243873554(a2, 0, 1, v12);
}

uint64_t sub_243874E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v43 = a3;
  v42 = a2;
  v5 = type metadata accessor for Google_Protobuf_Any();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v19 = sub_243873884(&qword_27ED94778, &unk_24389CD00);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v35 - v23;
  sub_243873554(&v35 - v23, 1, 1, v5);
  v37 = a1;
  v25 = a1;
  v26 = v13;
  sub_2438760B4(v25, v12, &qword_27ED94960, &qword_24389CB10);
  v27 = sub_243873AA4(v12, 1, v13);
  v36 = v26;
  if (v27 == 1)
  {
    sub_24387605C(v12, &qword_27ED94960, &qword_24389CB10);
  }

  else
  {
    sub_243875A4C(v12, v18);
    sub_243875A4C(v18, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24387605C(v24, &qword_27ED94778, &unk_24389CD00);
      v28 = *(v39 + 32);
      v28(v9, v15, v5);
      v28(v24, v9, v5);
      sub_243873554(v24, 0, 1, v5);
    }

    else
    {
      sub_243873ACC(v15);
    }
  }

  sub_243875D78(qword_280D49098, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
  v29 = v40;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v29)
  {
    v30 = v24;
    return sub_24387605C(v30, &qword_27ED94778, &unk_24389CD00);
  }

  sub_2438760B4(v24, v21, &qword_27ED94778, &unk_24389CD00);
  if (sub_243873AA4(v21, 1, v5) == 1)
  {
    sub_24387605C(v24, &qword_27ED94778, &unk_24389CD00);
    v30 = v21;
    return sub_24387605C(v30, &qword_27ED94778, &unk_24389CD00);
  }

  v32 = *(v39 + 32);
  v32(v38, v21, v5);
  if (v27 != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  sub_24387605C(v24, &qword_27ED94778, &unk_24389CD00);
  v33 = v37;
  sub_24387605C(v37, &qword_27ED94960, &qword_24389CB10);
  v32(v33, v38, v5);
  v34 = v36;
  swift_storeEnumTagMultiPayload();
  return sub_243873554(v33, 0, 1, v34);
}

uint64_t Ckcode_ProtectedEnvelope.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  sub_243876184(v5);
  sub_243876190();
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  sub_2438760B4(v3, &v19 - v7, &qword_27ED94960, &qword_24389CB10);
  v9 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  if (sub_243873AA4(v8, 1, v9) == 1)
  {
    goto LABEL_2;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2438761EC();
    sub_2438755B4(v11, v12, v13, v14);
    result = sub_243873ACC(v8);
    if (!v4)
    {
LABEL_2:
      type metadata accessor for Ckcode_ProtectedEnvelope(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  else
  {
    sub_243873ACC(v8);
    v15 = sub_2438761EC();
    result = sub_24387546C(v15, v16, v17, v18);
    if (!v4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_24387546C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v12 - v6);
  sub_2438760B4(a1, &v12 - v6, &qword_27ED94960, &qword_24389CB10);
  v8 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  if (sub_243873AA4(v7, 1, v8) == 1)
  {
    result = sub_24387605C(v7, &qword_27ED94960, &qword_24389CB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v10 = *v7;
      v9 = v7[1];
      dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      return sub_243873E40(v10, v9);
    }

    result = sub_243873ACC(v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_2438755B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v5 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Google_Protobuf_Any();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2438760B4(a1, v7, &qword_27ED94960, &qword_24389CB10);
  v12 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  if (sub_243873AA4(v7, 1, v12) == 1)
  {
    result = sub_24387605C(v7, &qword_27ED94960, &qword_24389CB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v9 + 32))(v11, v7, v8);
      sub_243875D78(qword_280D49098, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return (*(v9 + 8))(v11, v8);
    }

    result = sub_243873ACC(v7);
  }

  __break(1u);
  return result;
}

uint64_t static Ckcode_ProtectedEnvelope.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  sub_243876174();
  MEMORY[0x28223BE20](v5);
  sub_2438761C8();
  v6 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  sub_243876184(v6);
  sub_243876190();
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = sub_243873884(&qword_27ED94750, &qword_24389CB20);
  sub_243876184(v10);
  sub_243876190();
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_2438760B4(a1, &v20 - v12, &qword_27ED94960, &qword_24389CB10);
  sub_2438760B4(a2, &v13[v15], &qword_27ED94960, &qword_24389CB10);
  sub_24387619C(v13);
  if (v16)
  {
    sub_24387619C(&v13[v15]);
    if (v16)
    {
      sub_24387605C(v13, &qword_27ED94960, &qword_24389CB10);
LABEL_12:
      type metadata accessor for Ckcode_ProtectedEnvelope(0);
      type metadata accessor for UnknownStorage();
      sub_243875D78(&qword_27ED94758, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_9;
  }

  sub_2438760B4(v13, v9, &qword_27ED94960, &qword_24389CB10);
  sub_24387619C(&v13[v15]);
  if (v16)
  {
    sub_243873ACC(v9);
LABEL_9:
    sub_24387605C(v13, &qword_27ED94750, &qword_24389CB20);
    goto LABEL_10;
  }

  sub_243875A4C(&v13[v15], v2);
  v18 = static Ckcode_ProtectedEnvelope.OneOf_Contents.== infix(_:_:)(v9, v2);
  sub_243873ACC(v2);
  sub_243873ACC(v9);
  sub_24387605C(v13, &qword_27ED94960, &qword_24389CB10);
  if (v18)
  {
    goto LABEL_12;
  }

LABEL_10:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_243875A4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Int Ckcode_ProtectedEnvelope.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Ckcode_ProtectedEnvelope(0);
  sub_243875D78(&qword_27ED94760, type metadata accessor for Ckcode_ProtectedEnvelope, "iә> \x1B");
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_243875BB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_243875D78(&qword_27ED94770, type metadata accessor for Ckcode_ProtectedEnvelope, &protocol conformance descriptor for Ckcode_ProtectedEnvelope);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_243875C38(uint64_t a1)
{
  v2 = sub_243875D78(&qword_280D496C0, type metadata accessor for Ckcode_ProtectedEnvelope, &protocol conformance descriptor for Ckcode_ProtectedEnvelope);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_243875CA8(uint64_t a1, uint64_t a2)
{
  sub_243875D78(&qword_280D496C0, type metadata accessor for Ckcode_ProtectedEnvelope, &protocol conformance descriptor for Ckcode_ProtectedEnvelope);

  return Message.hash(into:)();
}

Swift::Int sub_243875D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_243875D78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_243875F0C(uint64_t a1)
{
  sub_243875F90(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_243875F90(uint64_t a1)
{
  if (!qword_280D496C8)
  {
    type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_280D496C8);
    }
  }
}

uint64_t sub_243875FF0(uint64_t a1)
{
  result = type metadata accessor for Google_Protobuf_Any();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24387605C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_243873884(a2, a3);
  sub_243876174();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2438760B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_243873884(a3, a4);
  sub_243876174();
  v5 = sub_243876224();
  v6(v5);
  return a2;
}

uint64_t *sub_243876110(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t Ckcode_Proto2Any.typeURL.getter()
{
  sub_2438798AC();

  return sub_243876224();
}

uint64_t sub_243876298(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Ckcode_Proto2Any.typeURL.setter(v1, v2);
}

uint64_t Ckcode_Proto2Any.typeURL.setter(uint64_t a1, uint64_t a2)
{
  sub_2438798AC();
  v6 = (v2 + v5);

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void (*Ckcode_Proto2Any.typeURL.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = sub_243873964(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  sub_2438798AC();
  *(v3 + 8) = v4;
  v5 = (v1 + v4);
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v6;
  *v3 = v7;
  v3[1] = v8;

  return sub_2438763AC;
}

void sub_2438763AC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall Ckcode_Proto2Any.clearTypeURL()()
{
  sub_2438798AC();
  v2 = (v0 + v1);

  *v2 = 0;
  v2[1] = 0;
}

uint64_t Ckcode_Proto2Any.value.getter()
{
  sub_2438798EC();
  v1 = sub_243879948(v0);
  sub_2438764C4(v1, v2);
  return sub_243876224();
}

uint64_t sub_2438764C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_243873DE8(result, a2);
  }

  return result;
}

uint64_t sub_2438764D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_243873DE8(*a1, v2);
  return Ckcode_Proto2Any.value.setter(v1, v2);
}

uint64_t Ckcode_Proto2Any.value.setter(uint64_t a1, uint64_t a2)
{
  sub_2438798EC();
  v6 = v2 + v5;
  result = sub_2438729FC(*v6, *(v6 + 8));
  *v6 = a1;
  *(v6 + 8) = a2;
  return result;
}

uint64_t (*Ckcode_Proto2Any.value.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  sub_2438798EC();
  *(a1 + 24) = v3;
  v6 = sub_243879948(v3);
  if (!v5 & v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xC000000000000000;
  if (!(!v5 & v4))
  {
    v9 = v7;
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  sub_2438764C4(v6, v7);
  return sub_2438765BC;
}

uint64_t sub_2438765BC(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = (a1[2] + *(a1 + 6));
  v4 = *a1;
  if (a2)
  {
    v5 = sub_2438761E0();
    sub_243873DE8(v5, v6);
    v7 = sub_24387995C();
    sub_2438729FC(v7, v8);
    *v3 = v4;
    v3[1] = v2;
    v9 = sub_2438761E0();

    return sub_243873E40(v9, v10);
  }

  else
  {
    v12 = sub_24387995C();
    result = sub_2438729FC(v12, v13);
    *v3 = v4;
    v3[1] = v2;
  }

  return result;
}

Swift::Void __swiftcall Ckcode_Proto2Any.clearValue()()
{
  sub_2438798EC();
  v2 = (v0 + v1);
  sub_2438729FC(*(v0 + v1), *(v0 + v1 + 8));
  *v2 = xmmword_24389CB00;
}

uint64_t Ckcode_Proto2Any.unknownFields.getter()
{
  type metadata accessor for UnknownStorage();
  sub_243876174();
  v0 = sub_243876224();

  return v1(v0);
}

uint64_t Ckcode_Proto2Any.unknownFields.setter()
{
  sub_2438798E0();
  type metadata accessor for UnknownStorage();
  sub_243876174();
  v0 = sub_2438761E0();

  return v1(v0);
}

double Ckcode_Proto2Any.init()@<D0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = sub_2438798AC();
  v4 = (a1 + v3);
  *v4 = 0;
  v4[1] = 0;
  result = 0.0;
  *(a1 + *(v2 + 24)) = xmmword_24389CB00;
  return result;
}

uint64_t sub_2438767F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Ckcode_Proto2ProtectedEnvelope.encrypted.getter(uint64_t a1)
{
  v1 = sub_24387995C();
  v3 = sub_243873884(v1, v2);
  sub_243876184(v3);
  sub_243876190();
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = sub_2438761E0();
  sub_2438760B4(v7, v8, &qword_27ED947C0, &qword_24389CD20);
  v9 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  if (sub_243873AA4(v6, 1, v9) == 1)
  {
    sub_24387605C(v6, &qword_27ED947C0, &qword_24389CD20);
    return 0;
  }

  sub_243876224();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2438771A0();
    return 0;
  }

  return *v6;
}

uint64_t sub_2438769A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_243873DE8(*a1, v2);
  return Ckcode_Proto2ProtectedEnvelope.encrypted.setter(v1, v2);
}

uint64_t Ckcode_Proto2ProtectedEnvelope.encrypted.setter(uint64_t a1, uint64_t a2)
{
  sub_24387605C(v2, &qword_27ED947C0, &qword_24389CD20);
  *v2 = a1;
  v2[1] = a2;
  v5 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  sub_2438761E0();
  swift_storeEnumTagMultiPayload();
  sub_2438761BC();

  return sub_243873554(v6, v7, v8, v5);
}

void (*Ckcode_Proto2ProtectedEnvelope.encrypted.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = sub_243873964(0x28uLL);
  *a1 = v4;
  v4[2] = v2;
  v5 = sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  sub_243876184(v5);
  v7 = sub_243873964(*(v6 + 64));
  v4[3] = v7;
  v8 = sub_243876218();
  sub_2438760B4(v8, v9, &qword_27ED947C0, &qword_24389CD20);
  v10 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  v4[4] = v10;
  if (sub_243873AA4(v7, 1, v10) == 1)
  {
    sub_24387605C(v7, &qword_27ED947C0, &qword_24389CD20);
  }

  else
  {
    sub_24387995C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v11 = *v7;
      goto LABEL_7;
    }

    sub_2438771A0();
  }

  v11 = xmmword_24389CAE0;
LABEL_7:
  *v4 = v11;
  return sub_243876B9C;
}

void sub_243876B9C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[2];
  if (a2)
  {
    v8 = sub_2438798C8();
    sub_243873DE8(v8, v9);
    sub_24387605C(v7, &qword_27ED947C0, &qword_24389CD20);
    *v7 = v4;
    v7[1] = v3;
    sub_243876218();
    swift_storeEnumTagMultiPayload();
    sub_2438761BC();
    sub_243873554(v10, v11, v12, v6);
    sub_243873E40(*v2, v2[1]);
  }

  else
  {
    sub_24387605C((*a1)[2], &qword_27ED947C0, &qword_24389CD20);
    *v7 = v4;
    v7[1] = v3;
    sub_243876218();
    swift_storeEnumTagMultiPayload();
    sub_2438761BC();
    sub_243873554(v13, v14, v15, v6);
  }

  free(v5);

  free(v2);
}

double Ckcode_Proto2ProtectedEnvelope.value.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  sub_243876184(v4);
  sub_243876190();
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  sub_2438760B4(v2, &v13 - v6, &qword_27ED947C0, &qword_24389CD20);
  v8 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  if (sub_243873AA4(v7, 1, v8) == 1)
  {
    sub_24387605C(v7, &qword_27ED947C0, &qword_24389CD20);
  }

  else
  {
    sub_243879968();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2438797F4();
      sub_2438761E0();
      sub_2438792B0();
      return result;
    }

    sub_2438771A0();
  }

  UnknownStorage.init()();
  v10 = sub_2438798AC();
  v12 = (a1 + v11);
  *v12 = 0;
  v12[1] = 0;
  result = 0.0;
  *(a1 + *(v10 + 24)) = xmmword_24389CB00;
  return result;
}

uint64_t sub_243876DB4(uint64_t a1)
{
  v1 = type metadata accessor for Ckcode_Proto2Any(0);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2438775CC();
  return Ckcode_Proto2ProtectedEnvelope.value.setter();
}

uint64_t Ckcode_Proto2ProtectedEnvelope.value.setter()
{
  sub_24387605C(v0, &qword_27ED947C0, &qword_24389CD20);
  sub_2438797F4();
  sub_243876224();
  sub_2438792B0();
  v1 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  sub_2438761E0();
  swift_storeEnumTagMultiPayload();
  sub_2438761BC();

  return sub_243873554(v2, v3, v4, v1);
}

void (*Ckcode_Proto2ProtectedEnvelope.value.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = sub_243873964(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  sub_243876184(v4);
  v6 = sub_243873964(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Ckcode_Proto2Any(0);
  sub_243876174();
  v9 = *(v8 + 64);
  v3[2] = sub_243873964(v9);
  v10 = sub_243873964(v9);
  v3[3] = v10;
  v11 = sub_243879908();
  sub_2438760B4(v11, v12, &qword_27ED947C0, &qword_24389CD20);
  v13 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  v3[4] = v13;
  if (sub_243873AA4(v6, 1, v13) == 1)
  {
    sub_24387605C(v6, &qword_27ED947C0, &qword_24389CD20);
LABEL_6:
    UnknownStorage.init()();
    v14 = &v10[*(v7 + 20)];
    *v14 = 0;
    *(v14 + 1) = 0;
    *&v10[*(v7 + 24)] = xmmword_24389CB00;
    return sub_243877070;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2438771A0();
    goto LABEL_6;
  }

  sub_2438797F4();
  sub_2438792B0();
  return sub_243877070;
}

void sub_243877070(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    sub_2438775CC();
    sub_24387605C(v7, &qword_27ED947C0, &qword_24389CD20);
    sub_2438792B0();
    sub_2438798C8();
    swift_storeEnumTagMultiPayload();
    sub_2438761BC();
    sub_243873554(v8, v9, v10, v4);
    sub_24387986C();
    sub_2438771A0();
  }

  else
  {
    sub_24387605C(**a1, &qword_27ED947C0, &qword_24389CD20);
    sub_2438797F4();
    sub_2438792B0();
    sub_2438798C8();
    swift_storeEnumTagMultiPayload();
    sub_2438761BC();
    sub_243873554(v11, v12, v13, v4);
  }

  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_2438771A0()
{
  v1 = sub_2438798E0();
  v2(v1);
  sub_243876174();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Ckcode_Proto2ProtectedEnvelope.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Ckcode_Proto2ProtectedEnvelope(0) + 20);
  type metadata accessor for UnknownStorage();
  sub_243876174();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Ckcode_Proto2ProtectedEnvelope.unknownFields.setter()
{
  v2 = sub_2438798E0();
  v3 = *(type metadata accessor for Ckcode_Proto2ProtectedEnvelope(v2) + 20);
  type metadata accessor for UnknownStorage();
  sub_243876174();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Ckcode_Proto2ProtectedEnvelope.unknownFields.modify())()
{
  v0 = sub_2438798E0();
  type metadata accessor for Ckcode_Proto2ProtectedEnvelope(v0);
  return nullsub_1;
}

uint64_t static Ckcode_Proto2ProtectedEnvelope.OneOf_Contents.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Ckcode_Proto2Any(0);
  v3 = sub_243876184(v2);
  MEMORY[0x28223BE20](v3);
  type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  sub_243876174();
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  v6 = sub_243873884(&qword_27ED947C8, &qword_24389CD28);
  sub_243876184(v6);
  sub_243876190();
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v11 = (&v21 + *(v10 + 56) - v8);
  sub_2438775CC();
  sub_2438775CC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_243879824();
    sub_2438775CC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2438797F4();
      sub_2438792B0();
      v12 = static Ckcode_Proto2Any.== infix(_:_:)();
      sub_2438771A0();
      sub_2438771A0();
LABEL_9:
      sub_24387980C();
      sub_2438771A0();
      return v12 & 1;
    }

    sub_24387986C();
    sub_2438771A0();
  }

  else
  {
    sub_243879824();
    sub_2438775CC();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v15 = *v11;
      v16 = v11[1];
      v17 = sub_243879968();
      v12 = MEMORY[0x245D420F0](v17);
      sub_243873E40(v15, v16);
      v18 = sub_243879968();
      sub_243873E40(v18, v19);
      goto LABEL_9;
    }

    v13 = sub_243879968();
    sub_243873E40(v13, v14);
  }

  sub_24387605C(v9, &qword_27ED947C8, &qword_24389CD28);
  v12 = 0;
  return v12 & 1;
}

uint64_t sub_2438775CC()
{
  v1 = sub_24387989C();
  v2(v1);
  sub_243876174();
  v3 = sub_243876224();
  v4(v3);
  return v0;
}

uint64_t static Ckcode_Proto2Any.== infix(_:_:)()
{
  v2 = sub_24387989C();
  v3 = type metadata accessor for Ckcode_Proto2Any(v2);
  v4 = *(v3 + 20);
  v5 = (v1 + v4);
  v6 = *(v1 + v4 + 8);
  v7 = (v0 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *v5 == *v7 && v6 == v8;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = *(v3 + 24);
  v11 = *(v0 + v10 + 8);
  if (*(v1 + v10 + 8) >> 60 != 15)
  {
    if (v11 >> 60 == 15)
    {
      goto LABEL_14;
    }

    v19 = sub_24387983C();
    v20 = MEMORY[0x245D420F0](v19);
    v21 = sub_2438798C8();
    sub_2438729FC(v21, v22);
    v23 = sub_243876218();
    sub_2438729FC(v23, v24);
    if (v20)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v11 >> 60 != 15)
  {
LABEL_14:
    v14 = sub_24387983C();
    sub_2438729FC(v14, v15);
    v16 = sub_2438798C8();
    sub_2438729FC(v16, v17);
    return 0;
  }

  v12 = sub_24387983C();
  sub_2438729FC(v12, v13);
LABEL_17:
  type metadata accessor for UnknownStorage();
  sub_243879884();
  sub_243879268(v25, v26, MEMORY[0x277D216D0]);
  sub_2438761E0();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Ckcode_Proto2ProtectedEnvelope.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  sub_243873554(a1, 1, 1, v2);
  type metadata accessor for Ckcode_Proto2ProtectedEnvelope(0);
  return UnknownStorage.init()();
}

uint64_t sub_2438777E0()
{
  v0 = type metadata accessor for _NameMap();
  sub_243876110(v0, qword_27ED94790);
  sub_243874BC0(v0, qword_27ED94790);
  sub_243873884(&qword_27ED94780, qword_24389D0B0);
  v1 = (sub_243873884(&qword_27ED94788, &unk_24389CD10) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24389CAF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type_url";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Ckcode_Proto2Any.decodeMessage<A>(decoder:)()
{
  sub_243879928();
  while (1)
  {
    sub_243879908();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_2438761E0();
      sub_2438798D4();
      sub_243877AA4(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      sub_2438761E0();
      sub_2438798D4();
      sub_243877A40(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t Ckcode_Proto2Any.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_243879974();
  result = sub_243877B5C(v4, v5, v6, v7);
  if (!v3)
  {
    v9 = sub_243879974();
    sub_243877BD4(v9, v10, v11, v12);
    sub_243879908();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_243877B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Ckcode_Proto2Any(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_243877BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Ckcode_Proto2Any(0);
  v6 = a1 + *(result + 24);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_243873DE8(*v6, *(v6 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return sub_2438729FC(v8, v7);
  }

  return result;
}

uint64_t sub_243877D38(uint64_t a1, uint64_t a2)
{
  v4 = sub_243879268(&qword_27ED94860, type metadata accessor for Ckcode_Proto2Any, &protocol conformance descriptor for Ckcode_Proto2Any);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_243877DB8(uint64_t a1)
{
  v2 = sub_243879268(&qword_27ED947F0, type metadata accessor for Ckcode_Proto2Any, &protocol conformance descriptor for Ckcode_Proto2Any);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_243877E28(uint64_t a1, uint64_t a2)
{
  sub_243879268(&qword_27ED947F0, type metadata accessor for Ckcode_Proto2Any, &protocol conformance descriptor for Ckcode_Proto2Any);

  return Message.hash(into:)();
}

uint64_t sub_243877EC4()
{
  v0 = type metadata accessor for _NameMap();
  sub_243876110(v0, qword_27ED947A8);
  sub_243874BC0(v0, qword_27ED947A8);
  sub_243873884(&qword_27ED94780, qword_24389D0B0);
  v1 = (sub_243873884(&qword_27ED94788, &unk_24389CD10) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24389CAF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "encrypted";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_2438780B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = sub_243874BC0(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Ckcode_Proto2ProtectedEnvelope.decodeMessage<A>(decoder:)()
{
  sub_243879928();
  while (1)
  {
    sub_243879908();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_243876224();
      sub_2438798D4();
      sub_243878380(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      sub_2438761E0();
      sub_2438798D4();
      sub_2438781B4(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_2438781B4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v13 = xmmword_24389CB00;
  dispatch thunk of Decoder.decodeSingularBytesField(value:)();
  v9 = v13;
  if (v4 || *(&v13 + 1) >> 60 == 15)
  {
    return sub_2438729FC(v13, *(&v13 + 1));
  }

  sub_2438760B4(a2, v8, &qword_27ED947C0, &qword_24389CD20);
  v14 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  v10 = sub_243873AA4(v8, 1, v14);
  sub_243873DE8(v9, *(&v9 + 1));
  sub_24387605C(v8, &qword_27ED947C0, &qword_24389CD20);
  if (v10 != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  sub_2438729FC(v9, *(&v9 + 1));
  sub_24387605C(a2, &qword_27ED947C0, &qword_24389CD20);
  *a2 = v9;
  v12 = v14;
  swift_storeEnumTagMultiPayload();
  return sub_243873554(a2, 0, 1, v12);
}

uint64_t sub_243878380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Ckcode_Proto2Any(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = sub_243873884(&qword_27ED94868, &qword_24389D0A8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_243873554(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_2438760B4(a1, v10, &qword_27ED947C0, &qword_24389CD20);
  v26 = sub_243873AA4(v10, 1, v11);
  v27 = v11;
  if (v26 == 1)
  {
    sub_24387605C(v10, &qword_27ED947C0, &qword_24389CD20);
  }

  else
  {
    sub_2438792B0();
    sub_2438792B0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24387605C(v18, &qword_27ED94868, &qword_24389D0A8);
      sub_2438792B0();
      sub_2438792B0();
      sub_243873554(v18, 0, 1, v5);
    }

    else
    {
      sub_2438771A0();
    }
  }

  sub_243879268(&qword_27ED947F0, type metadata accessor for Ckcode_Proto2Any, &protocol conformance descriptor for Ckcode_Proto2Any);
  v19 = v29;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v19)
  {
    v20 = v18;
    return sub_24387605C(v20, &qword_27ED94868, &qword_24389D0A8);
  }

  sub_2438760B4(v18, v15, &qword_27ED94868, &qword_24389D0A8);
  if (sub_243873AA4(v15, 1, v5) == 1)
  {
    sub_24387605C(v18, &qword_27ED94868, &qword_24389D0A8);
    v20 = v15;
    return sub_24387605C(v20, &qword_27ED94868, &qword_24389D0A8);
  }

  sub_2438792B0();
  if (v26 != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v22 = v27;
  sub_24387605C(v18, &qword_27ED94868, &qword_24389D0A8);
  v23 = v25;
  sub_24387605C(v25, &qword_27ED947C0, &qword_24389CD20);
  sub_2438792B0();
  swift_storeEnumTagMultiPayload();
  return sub_243873554(v23, 0, 1, v22);
}

uint64_t Ckcode_Proto2ProtectedEnvelope.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  sub_243876184(v5);
  sub_243876190();
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  sub_2438760B4(v3, &v19 - v7, &qword_27ED947C0, &qword_24389CD20);
  v9 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  if (sub_243873AA4(v8, 1, v9) == 1)
  {
    goto LABEL_2;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2438798D4();
    sub_243878B34(v11, v12, v13, v14);
    sub_24387980C();
    result = sub_2438771A0();
    if (!v4)
    {
LABEL_2:
      type metadata accessor for Ckcode_Proto2ProtectedEnvelope(0);
      sub_2438798C8();
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  else
  {
    sub_24387980C();
    sub_2438771A0();
    sub_2438798D4();
    result = sub_2438789D8(v15, v16, v17, v18);
    if (!v4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_2438789D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v12 - v6);
  sub_2438760B4(a1, &v12 - v6, &qword_27ED947C0, &qword_24389CD20);
  v8 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  if (sub_243873AA4(v7, 1, v8) == 1)
  {
    result = sub_24387605C(v7, &qword_27ED947C0, &qword_24389CD20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v10 = *v7;
      v9 = v7[1];
      dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      return sub_243873E40(v10, v9);
    }

    result = sub_2438771A0();
  }

  __break(1u);
  return result;
}

uint64_t sub_243878B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Ckcode_Proto2Any(0);
  MEMORY[0x28223BE20](v8);
  sub_2438760B4(a1, v7, &qword_27ED947C0, &qword_24389CD20);
  v9 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  if (sub_243873AA4(v7, 1, v9) == 1)
  {
    result = sub_24387605C(v7, &qword_27ED947C0, &qword_24389CD20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2438792B0();
      sub_243879268(&qword_27ED947F0, type metadata accessor for Ckcode_Proto2Any, &protocol conformance descriptor for Ckcode_Proto2Any);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return sub_2438771A0();
    }

    result = sub_2438771A0();
  }

  __break(1u);
  return result;
}

uint64_t static Ckcode_Proto2ProtectedEnvelope.== infix(_:_:)()
{
  v2 = sub_24387989C();
  type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(v2);
  sub_243876174();
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  sub_243876184(v6);
  sub_243876190();
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = sub_243873884(&qword_27ED947D8, &qword_24389CD30);
  sub_243876184(v10);
  sub_243876190();
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v15 = *(v14 + 56);
  sub_2438760B4(v1, &v22 - v12, &qword_27ED947C0, &qword_24389CD20);
  sub_2438760B4(v0, &v13[v15], &qword_27ED947C0, &qword_24389CD20);
  sub_243879988(v13);
  if (v16)
  {
    sub_243879988(&v13[v15]);
    if (v16)
    {
      sub_24387605C(v13, &qword_27ED947C0, &qword_24389CD20);
LABEL_12:
      type metadata accessor for Ckcode_Proto2ProtectedEnvelope(0);
      type metadata accessor for UnknownStorage();
      sub_243879884();
      sub_243879268(v19, v20, MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_9;
  }

  sub_2438760B4(v13, v9, &qword_27ED947C0, &qword_24389CD20);
  sub_243879988(&v13[v15]);
  if (v16)
  {
    sub_24387980C();
    sub_2438771A0();
LABEL_9:
    sub_24387605C(v13, &qword_27ED947D8, &qword_24389CD30);
    goto LABEL_10;
  }

  sub_243879824();
  sub_2438792B0();
  v18 = static Ckcode_Proto2ProtectedEnvelope.OneOf_Contents.== infix(_:_:)(v9, v5);
  sub_2438771A0();
  sub_2438771A0();
  sub_24387605C(v13, &qword_27ED947C0, &qword_24389CD20);
  if (v18)
  {
    goto LABEL_12;
  }

LABEL_10:
  v17 = 0;
  return v17 & 1;
}

Swift::Int sub_243879018(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  v6 = sub_243876218();
  sub_243879268(v6, v7, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_2438790F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_243879268(&qword_27ED94858, type metadata accessor for Ckcode_Proto2ProtectedEnvelope, &protocol conformance descriptor for Ckcode_Proto2ProtectedEnvelope);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_243879178(uint64_t a1)
{
  v2 = sub_243879268(&qword_27ED94808, type metadata accessor for Ckcode_Proto2ProtectedEnvelope, &protocol conformance descriptor for Ckcode_Proto2ProtectedEnvelope);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2438791E8(uint64_t a1, uint64_t a2)
{
  sub_243879268(&qword_27ED94808, type metadata accessor for Ckcode_Proto2ProtectedEnvelope, &protocol conformance descriptor for Ckcode_Proto2ProtectedEnvelope);

  return Message.hash(into:)();
}

uint64_t sub_243879268(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2438792B0()
{
  v1 = sub_24387989C();
  v2(v1);
  sub_243876174();
  v3 = sub_243876224();
  v4(v3);
  return v0;
}

void sub_24387956C(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_243879628(319, &qword_27ED94828, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_243879628(319, &qword_280D49650, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_243879628(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24387969C(uint64_t a1)
{
  sub_243879720(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_243879720(uint64_t a1)
{
  if (!qword_27ED94840)
  {
    type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED94840);
    }
  }
}

uint64_t sub_243879778(uint64_t a1)
{
  result = type metadata accessor for Ckcode_Proto2Any(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24387983C()
{
  sub_2438764C4(v1, v0);
  sub_2438764C4(v3, v2);
  return v1;
}

uint64_t Ckcode_RecordTransport.contents.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2438799B4(v2, v3);
}

uint64_t sub_2438799B4(uint64_t a1, uint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_2438799C8(a1, a2);
  }

  return a1;
}

uint64_t Ckcode_RecordTransport.contents.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_243879A04(*v1, v1[1]);
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t sub_243879A04(uint64_t a1, uint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_243879A18(a1, a2);
  }

  return a1;
}

uint64_t Ckcode_RecordTransport.localSerialization.getter()
{
  if ((*(v0 + 8) & 0x2000000000000000) == 0)
  {
    v1 = sub_2438761E0();
    sub_2438799C8(v1, v2);
  }

  return sub_2438761E0();
}

uint64_t sub_243879A80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_243873DE8(*a1, v2);
  return Ckcode_RecordTransport.localSerialization.setter(v1, v2);
}

uint64_t Ckcode_RecordTransport.localSerialization.setter(uint64_t a1, uint64_t a2)
{
  result = sub_243879A04(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*Ckcode_RecordTransport.localSerialization.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = v1[1];
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = 0;
    v3 = 0xC000000000000000;
  }

  else
  {
    v4 = *v1;
    v5 = sub_24387995C();
    sub_2438799C8(v5, v6);
  }

  *a1 = v4;
  a1[1] = v3;
  return sub_243879B68;
}

uint64_t sub_243879B68(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = sub_2438761E0();
    sub_243873DE8(v5, v6);
    v7 = sub_24387995C();
    sub_243879A04(v7, v8);
    *v3 = v4;
    v3[1] = v2;
    v9 = sub_2438761E0();

    return sub_243873E40(v9, v10);
  }

  else
  {
    v12 = sub_24387995C();
    result = sub_243879A04(v12, v13);
    *v3 = v4;
    v3[1] = v2;
  }

  return result;
}

uint64_t Ckcode_RecordTransport.wireSerialization.getter()
{
  v1 = 0;
  v2 = v0[1];
  if ((~v2 & 0x3000000000000000) != 0 && (v2 & 0x2000000000000000) != 0)
  {
    v1 = *v0;
    sub_2438799C8(*v0, v2);
  }

  return v1;
}

uint64_t sub_243879C44(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_243873DE8(*a1, v2);
  return Ckcode_RecordTransport.wireSerialization.setter(v1, v2);
}

uint64_t Ckcode_RecordTransport.wireSerialization.setter(uint64_t a1, uint64_t a2)
{
  v4 = a2 | 0x2000000000000000;
  result = sub_243879A04(*v2, v2[1]);
  *v2 = a1;
  v2[1] = v4;
  return result;
}

uint64_t (*Ckcode_RecordTransport.wireSerialization.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = 0;
  a1[2] = v1;
  v4 = v1[1];
  v5 = 0xC000000000000000;
  if ((~v4 & 0x3000000000000000) != 0 && (v4 & 0x2000000000000000) != 0)
  {
    v3 = *v1;
    v5 = v4 & 0xDFFFFFFFFFFFFFFFLL;
    sub_2438799C8(*v1, v4);
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_243879D38;
}

uint64_t sub_243879D38(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = v2 | 0x2000000000000000;
  if (a2)
  {
    sub_243873DE8(*a1, v2);
    v6 = sub_24387995C();
    sub_243879A04(v6, v7);
    *v3 = v4;
    v3[1] = v5;

    return sub_243873E40(v4, v2);
  }

  else
  {
    v9 = sub_24387995C();
    result = sub_243879A04(v9, v10);
    *v3 = v4;
    v3[1] = v5;
  }

  return result;
}

uint64_t Ckcode_RecordTransport.encryptedMasterKey.getter()
{
  v0 = type metadata accessor for Ckcode_RecordTransport(0);
  v1 = sub_243879948(*(v0 + 24));
  if (!v4 & v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v1;
  }

  sub_2438764C4(v1, v2);
  return v5;
}

uint64_t type metadata accessor for Ckcode_RecordTransport(uint64_t a1)
{
  result = qword_280D49708;
  if (!qword_280D49708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243879E58(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_243873DE8(*a1, v2);
  return Ckcode_RecordTransport.encryptedMasterKey.setter(v1, v2);
}

uint64_t Ckcode_RecordTransport.encryptedMasterKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Ckcode_RecordTransport(0) + 24);
  result = sub_2438729FC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*Ckcode_RecordTransport.encryptedMasterKey.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for Ckcode_RecordTransport(0) + 24);
  *(a1 + 24) = v3;
  v6 = sub_243879948(v3);
  if (!v5 & v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xC000000000000000;
  if (!(!v5 & v4))
  {
    v9 = v7;
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  sub_2438764C4(v6, v7);
  return sub_2438765BC;
}

Swift::Void __swiftcall Ckcode_RecordTransport.clearEncryptedMasterKey()()
{
  v1 = v0 + *(type metadata accessor for Ckcode_RecordTransport(0) + 24);
  sub_2438729FC(*v1, *(v1 + 8));
  *v1 = xmmword_24389CB00;
}

uint64_t Ckcode_RecordTransport.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Ckcode_RecordTransport(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Ckcode_RecordTransport.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Ckcode_RecordTransport(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Ckcode_RecordTransport.OneOf_Contents.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if ((v3 & 0x2000000000000000) != 0)
  {
    if ((v5 & 0x2000000000000000) != 0)
    {
      sub_24387B27C();
      v7 = v3 & 0xDFFFFFFFFFFFFFFFLL;
      v9 = v5 & 0xDFFFFFFFFFFFFFFFLL;
      v6 = v2;
      v8 = v4;
      goto LABEL_7;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
    sub_24387B27C();
    v6 = v2;
    v7 = v3;
    v8 = v4;
    v9 = v5;
LABEL_7:
    v10 = MEMORY[0x245D420F0](v6, v7, v8, v9);
    goto LABEL_8;
  }

  sub_24387B27C();
  v10 = 0;
LABEL_8:
  sub_243879A18(v2, v3);
  sub_243879A18(v4, v5);
  return v10 & 1;
}

double Ckcode_RecordTransport.init()@<D0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_24389D0D0;
  v2 = type metadata accessor for Ckcode_RecordTransport(0);
  UnknownStorage.init()();
  result = 0.0;
  *(a1 + *(v2 + 24)) = xmmword_24389CB00;
  return result;
}

uint64_t sub_24387A210()
{
  v0 = type metadata accessor for _NameMap();
  sub_243876110(v0, qword_27ED94870);
  sub_243874BC0(v0, qword_27ED94870);
  sub_243873884(&qword_27ED94780, qword_24389D0B0);
  v1 = (sub_243873884(&qword_27ED94788, &unk_24389CD10) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24389D0E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "localSerialization";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "wireSerialization";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "encryptedMasterKey";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t static Ckcode_RecordTransport._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ED946B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = sub_243874BC0(v2, qword_27ED94870);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Ckcode_RecordTransport.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v12 = sub_2438761E0();
        sub_24387A740(v12, v13, a2, a3);
        break;
      case 2:
        v10 = sub_2438761E0();
        sub_24387A650(v10, v11, a2, a3);
        break;
      case 1:
        v8 = sub_2438761E0();
        sub_24387A564(v8, v9, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t Ckcode_RecordTransport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~*(v3 + 8) & 0x3000000000000000) == 0 || ((v5 = sub_2438761EC(), (v9 & 0x2000000000000000) != 0) ? (result = sub_24387A8CC(v5, v6, v7, v8)) : (result = sub_24387A844(v5, v6, v7, v8)), !v4))
  {
    v11 = sub_2438761EC();
    result = sub_24387A960(v11, v12, v13, v14);
    if (!v4)
    {
      type metadata accessor for Ckcode_RecordTransport(0);
      sub_2438798C8();
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t *sub_24387A844(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result[1];
  if ((v4 & 0x2000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *result;
    sub_2438799C8(*result, v4);
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return sub_243879A04(v5, v4);
  }

  return result;
}

uint64_t *sub_24387A8CC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result[1];
  if ((~v4 & 0x3000000000000000) != 0 && (v4 & 0x2000000000000000) != 0)
  {
    v5 = *result;
    sub_2438799C8(*result, v4);
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return sub_243879A04(v5, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24387A960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Ckcode_RecordTransport(0);
  v6 = a1 + *(result + 24);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_243873DE8(*v6, *(v6 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return sub_2438729FC(v8, v7);
  }

  return result;
}

uint64_t static Ckcode_RecordTransport.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  v8 = v6 & 0x3000000000000000;
  if ((~v4 & 0x3000000000000000) == 0)
  {
    if (v8 == 0x3000000000000000)
    {
      v9 = sub_243876218();
      sub_2438799B4(v9, v10);
      v11 = sub_2438798C8();
      sub_2438799B4(v11, v12);
LABEL_4:
      v13 = sub_243876218();
      sub_243879A04(v13, v14);
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (v8 == 0x3000000000000000)
  {
LABEL_9:
    v23 = sub_243876218();
    sub_2438799B4(v23, v24);
    v25 = sub_2438798C8();
    sub_2438799B4(v25, v26);
    v27 = sub_243876218();
    sub_243879A04(v27, v28);
    v29 = sub_2438798C8();
LABEL_19:
    sub_243879A04(v29, v30);
    return 0;
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    if ((v6 & 0x2000000000000000) != 0)
    {
      v68 = sub_243876218();
      sub_2438799B4(v68, v69);
      v70 = sub_243876218();
      sub_2438799B4(v70, v71);
      v72 = sub_243876218();
      sub_2438799B4(v72, v73);
      v74 = sub_2438798C8();
      sub_2438799B4(v74, v75);
      v76 = sub_2438798C8();
      sub_2438799B4(v76, v77);
      v78 = MEMORY[0x245D420F0](v5, v4 & 0xDFFFFFFFFFFFFFFFLL, v7, v6 & 0xDFFFFFFFFFFFFFFFLL);
      v79 = sub_243876218();
      sub_243879A18(v79, v80);
      v81 = sub_2438798C8();
      sub_243879A18(v81, v82);
      v83 = sub_2438798C8();
      sub_243879A04(v83, v84);
      v85 = sub_243876218();
      sub_243879A04(v85, v86);
      if (v78)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }

LABEL_17:
    v55 = sub_243876218();
    sub_2438799B4(v55, v56);
    v57 = sub_243876218();
    sub_2438799B4(v57, v58);
    v59 = sub_2438798C8();
    sub_2438799B4(v59, v60);
    v61 = sub_243876218();
    sub_243879A18(v61, v62);
    v63 = sub_2438798C8();
    sub_243879A18(v63, v64);
LABEL_18:
    v29 = sub_243876218();
    goto LABEL_19;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    goto LABEL_17;
  }

  v31 = sub_243876218();
  sub_2438799B4(v31, v32);
  v33 = sub_243876218();
  sub_2438799B4(v33, v34);
  v35 = sub_243876218();
  sub_2438799B4(v35, v36);
  v37 = sub_2438798C8();
  sub_2438799B4(v37, v38);
  v39 = sub_2438798C8();
  sub_2438799B4(v39, v40);
  v41 = sub_243876218();
  v42 = MEMORY[0x245D420F0](v41);
  v43 = sub_243876218();
  sub_243879A18(v43, v44);
  v45 = sub_2438798C8();
  sub_243879A18(v45, v46);
  v47 = sub_2438798C8();
  sub_243879A04(v47, v48);
  v49 = sub_243876218();
  sub_243879A04(v49, v50);
  v51 = sub_243876218();
  sub_243879A04(v51, v52);
  if ((v42 & 1) == 0)
  {
    return 0;
  }

LABEL_5:
  v15 = *(type metadata accessor for Ckcode_RecordTransport(0) + 24);
  v17 = *(a1 + v15);
  v16 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v20 = *v18;
  v19 = v18[1];
  if (v16 >> 60 != 15)
  {
    if (v19 >> 60 != 15)
    {
      v66 = sub_24387B24C();
      v67 = MEMORY[0x245D420F0](v66);
      sub_2438729FC(v20, v19);
      sub_2438729FC(v17, v16);
      if (v67)
      {
        goto LABEL_22;
      }

      return 0;
    }

LABEL_15:
    v53 = sub_24387B24C();
    sub_2438729FC(v53, v54);
    sub_2438729FC(v20, v19);
    return 0;
  }

  if (v19 >> 60 != 15)
  {
    goto LABEL_15;
  }

  v21 = sub_24387B24C();
  sub_2438729FC(v21, v22);
LABEL_22:
  type metadata accessor for UnknownStorage();
  sub_24387B204(&qword_27ED94758, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int Ckcode_RecordTransport.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Ckcode_RecordTransport(0);
  sub_24387B204(&qword_27ED94888, type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_24387AD90(uint64_t a1, uint64_t a2)
{
  v4 = sub_24387B204(&qword_27ED94898, type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24387AE10(uint64_t a1)
{
  v2 = sub_24387B204(qword_280D49750, type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24387AE80(uint64_t a1, uint64_t a2)
{
  sub_24387B204(qword_280D49750, type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);

  return Message.hash(into:)();
}

void sub_24387B048(uint64_t a1)
{
  sub_243879628(319, &qword_280D49648, &type metadata for Ckcode_RecordTransport.OneOf_Contents);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      sub_243879628(319, &qword_280D49650, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24387B104(uint64_t a1)
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

__n128 sub_24387B12C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24387B138(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 3 && *(a1 + 16))
    {
      v2 = *a1 + 2;
    }

    else
    {
      v2 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
      if (v2 >= 2)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_24387B184(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

uint64_t sub_24387B204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24387B24C()
{
  sub_2438764C4(v1, v0);
  sub_2438764C4(v3, v2);
  return v1;
}

uint64_t sub_24387B27C()
{
  sub_2438799C8(v0, v2);

  return sub_2438799C8(v1, v3);
}

uint64_t sub_24387B2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[2] = a4;
  v23[0] = a2;
  v6 = *(a2 + 16);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v6 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 16);
  v23[1] = a1;
  v20(v13, a1, a3, v16);
  if (swift_dynamicCast())
  {
    sub_243873554(v10, 0, 1, v6);
    (*(v14 + 32))(v18, v10, v6);
    (*v24)(v18);
    return (*(v14 + 8))(v18, v6);
  }

  else
  {
    sub_243873554(v10, 1, 1, v6);
    (*(v8 + 8))(v10, v7);
    v22 = *(v24 + 8);
    v25 = *v24;
    v26 = v22;

    swift_getWitnessTable();
    dispatch thunk of Message.traverse<A>(visitor:)();
  }
}

uint64_t sub_24387B588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Sequence.forEach(_:)();
}

uint64_t sub_24387B690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Dictionary();
  swift_getWitnessTable();
  return Sequence.forEach(_:)();
}

uint64_t sub_24387B820(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_24387BA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24387BAC4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24387BB04(uint64_t result, int a2, int a3)
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

uint64_t sub_24387BBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v38 = a4;
  v8 = type metadata accessor for Optional();
  sub_24387C120();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  sub_24387C120();
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24387C120();
  v18 = v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 + 16);
  v37 = v5;
  v24(v16, v5, a2, v20);
  if (swift_dynamicCast())
  {
    sub_243873554(v13, 0, 1, a3);
    v25 = *(v18 + 32);
    v25(v22, v13, a3);
    sub_24387C084(a3, a3);
    swift_allocObject();
    v26 = static Array._adoptStorage(_:count:)();
    v25(v27, v22, a3);
    type metadata accessor for Array();
  }

  else
  {
    sub_243873554(v13, 1, 1, a3);
    (*(v10 + 8))(v13, v8);
    v28 = swift_allocObject();
    *(v28 + 16) = static Array._allocateUninitialized(_:)();
    v29 = swift_allocObject();
    v29[2] = a2;
    v29[3] = a3;
    v30 = v36;
    v29[4] = v38;
    v29[5] = v30;
    v29[6] = v28;
    nullsub_1();
    v39 = v31;
    v40 = v32;
    type metadata accessor for ExtractingVisitor(0, a3, v30, v33);

    swift_getWitnessTable();
    v34 = v41;
    dispatch thunk of Message.traverse<A>(visitor:)();
    v26 = v40;

    if (!v34)
    {
      swift_beginAccess();
      v26 = *(v28 + 16);
    }
  }

  return v26;
}

uint64_t sub_24387BF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  swift_beginAccess();
  type metadata accessor for Array();
  Array.append(_:)();
  return swift_endAccess();
}

uint64_t sub_24387C084(uint64_t a1, uint64_t a2)
{
  if (sub_24387C0F0(a2, a2))
  {

    return sub_243873884(&qword_27ED948A0, &unk_24389D640);
  }

  else
  {

    return MEMORY[0x2821FDC00]();
  }
}

uint64_t sub_24387C0F0(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24387C130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24387C1D0(a2, v6);
  memset(v9, 0, sizeof(v9));
  v7 = a1;
  v8 = 0;
  sub_24387C240(v6, v9);
  sub_24387C2B0();
  dispatch thunk of Message.decodeMessage<A>(decoder:)();
  return sub_24387C304(&v7);
}

uint64_t sub_24387C1D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_243873884(&qword_27ED948A8, &unk_24389DB70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24387C240(uint64_t a1, uint64_t a2)
{
  v4 = sub_243873884(&qword_27ED948A8, &unk_24389DB70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_24387C2B0()
{
  result = qword_280D49528[0];
  if (!qword_280D49528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D49528);
  }

  return result;
}

uint64_t sub_24387C358@<X0>(Swift::Int *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v82[0] = a2;
  v7 = v6;
  v79 = a1;
  v72 = a6;
  v82[1] = a3;
  v82[2] = a4;
  v74 = a5;
  v75 = a4;
  v82[3] = a5;
  v78 = type metadata accessor for SubstitutingVisitor(0, v82);
  sub_24387C120();
  v76 = v10;
  MEMORY[0x28223BE20](v11);
  v73 = &v65 - v12;
  type metadata accessor for Optional();
  sub_24387C120();
  v70 = v14;
  v71 = v13;
  MEMORY[0x28223BE20](v13);
  v69 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v68 = &v65 - v17;
  sub_24387C120();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v66 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v67 = (&v65 - v24);
  MEMORY[0x28223BE20](v25);
  v27 = &v65 - v26;
  sub_24387C120();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v33);
  v36 = *(v29 + 16);
  v35 = v29 + 16;
  v80 = v7;
  v77 = v36;
  (v36)(&v65 - v37, v7, a2, v34);
  if (!swift_dynamicCast())
  {
    v67 = v19;
    v41 = swift_allocObject();
    *(v41 + 16) = v79;
    v68 = (v41 + 16);

    *(v41 + 24) = Array.startIndex.getter();
    v79 = (v41 + 24);
    v77(v32, v80, a2);
    v42 = swift_allocObject();
    v42[2] = a2;
    v42[3] = a3;
    v43 = v74;
    v44 = v75;
    v42[4] = v75;
    v42[5] = v43;
    v42[6] = v41;
    v45 = v73;
    sub_24387E6B0(v32, sub_24387CC58, v42, a2, a3, v44, v43, v73);

    v46 = v78;
    swift_getWitnessTable();
    v47 = v81;
    dispatch thunk of Message.traverse<A>(visitor:)();
    if (v47)
    {
      (*(v76 + 8))(v45, v46);
    }

    else
    {
      v80 = v35;
      v81 = v41;
      v75 = a2;
      v48 = v45;
      v49 = v68;
      swift_beginAccess();
      v50 = *v49;
      v51 = MEMORY[0x245D42520](v50, a3);
      v52 = v79;
      v53 = *v79;
      v54 = a3;
      if (*v79 == v51)
      {
        v55 = 1;
        v56 = v69;
      }

      else
      {
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          v61 = v66;
          v62 = v67;
          v67[2](v66, v50 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + v67[9] * v53, v54);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v21 != 8)
          {
LABEL_25:
            __break(1u);
            return result;
          }

          v83 = result;
          v61 = v66;
          v62 = v67;
          v67[2](v66, &v83, v54);
          swift_unknownObjectRelease();
          v52 = v79;
        }

        v56 = v69;
        v62[4](v69, v61, v54);
        Array.formIndex(after:)(v52);
        v55 = 0;
      }

      sub_243873554(v56, v55, 1, v54);
      swift_endAccess();
      v63 = sub_243873AA4(v56, 1, v54);
      (*(v70 + 8))(v56, v71);
      if (v63 == 1)
      {
        v77(v72, v48, v75);
      }

      else
      {
        sub_24387CC68();
        swift_allocError();
        *v64 = 1;
        swift_willThrow();
      }

      (*(v76 + 8))(v48, v78);
    }
  }

  (v19[1])(v27, a3);
  v38 = v79;
  v39 = MEMORY[0x245D42500](v79, a3);
  if (v39 == 1)
  {
    v82[0] = v38;
    type metadata accessor for Array();
    swift_getWitnessTable();
    v57 = v68;
    Collection.first.getter();
    result = sub_243873AA4(v57, 1, a3);
    if (result != 1)
    {
      v19[4](v67, v57, a3);
      return swift_dynamicCast();
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v39)
  {
    sub_24387CC68();
    swift_allocError();
    *v59 = 1;
  }

  else
  {
    sub_24387CC68();
    swift_allocError();
    *v40 = 0;
  }

  return swift_willThrow();
}

uint64_t sub_24387CAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = MEMORY[0x245D42520](v6, a2);
  v10 = *(a1 + 24);
  v8 = (a1 + 24);
  v9 = v10;
  if (v10 == v7)
  {
    v11 = a3;
    v12 = 1;
LABEL_6:
    sub_243873554(v11, v12, 1, a2);
    return swift_endAccess();
  }

  IsNativeType = Array._hoistableIsNativeTypeChecked()();
  Array._checkSubscript(_:wasNativeTypeChecked:)();
  if (IsNativeType)
  {
    (*(*(a2 - 8) + 16))(a3, v6 + ((*(*(a2 - 8) + 80) + 32) & ~*(*(a2 - 8) + 80)) + *(*(a2 - 8) + 72) * v9, a2);
LABEL_5:
    Array.formIndex(after:)(v8);
    v11 = a3;
    v12 = 0;
    goto LABEL_6;
  }

  result = _ArrayBuffer._getElementSlowPath(_:)();
  v15 = *(a2 - 8);
  if (*(v15 + 64) == 8)
  {
    v16 = result;
    (*(v15 + 16))(a3, &v16, a2);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_24387CC68()
{
  result = qword_27ED948B0;
  if (!qword_27ED948B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED948B0);
  }

  return result;
}

uint64_t sub_24387CCBC(void *a1)
{
  sub_24387C1D0((v1 + 2), v11);
  if (!v12)
  {
    goto LABEL_5;
  }

  sub_24387C1D0(v11, v10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_24387E12C(v10);
LABEL_5:
    v3 = MEMORY[0x277D837D0];
    v4 = *v1;
    v5 = *(v1 + 8);
    sub_24387E070();
    swift_allocError();
    *v6 = v3;
    *(v6 + 8) = v4;
    *(v6 + 16) = v5;
    swift_willThrow();
    return sub_24387E0C4(v11);
  }

  *a1 = v8;
  a1[1] = v9;
  sub_24387E12C(v10);
  return sub_24387E0C4(v11);
}

uint64_t sub_24387CDA8(uint64_t a1)
{
  sub_24387C1D0((v1 + 2), v10);
  if (!v11)
  {
    goto LABEL_5;
  }

  sub_24387C1D0(v10, v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_24387E12C(v9);
LABEL_5:
    v3 = MEMORY[0x277CC9318];
    v4 = *v1;
    v5 = *(v1 + 8);
    sub_24387E070();
    swift_allocError();
    *v6 = v3;
    *(v6 + 8) = v4;
    *(v6 + 16) = v5;
    swift_willThrow();
    return sub_24387E0C4(v10);
  }

  sub_243873E40(*a1, *(a1 + 8));
  *a1 = v8;
  sub_24387E12C(v9);
  return sub_24387E0C4(v10);
}

uint64_t sub_24387CE94(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24387C1D0((v2 + 2), v13);
  if (!v14)
  {
    goto LABEL_5;
  }

  sub_24387C1D0(v13, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_24387E12C(v12);
LABEL_5:
    v8 = *v2;
    v9 = *(v2 + 8);
    sub_24387E070();
    swift_allocError();
    *v10 = a2;
    *(v10 + 8) = v8;
    *(v10 + 16) = v9;
    swift_willThrow();
    return sub_24387E0C4(v13);
  }

  (*(v5 + 8))(a1, a2);
  (*(v5 + 32))(a1, v7, a2);
  sub_24387E12C(v12);
  return sub_24387E0C4(v13);
}

uint64_t sub_24387D014(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  sub_24387C1D0((v2 + 2), v13);
  sub_243873884(&qword_27ED948A8, &unk_24389DB70);
  if (swift_dynamicCast())
  {
    (*(v6 + 8))(a1, v5);
    (*(v6 + 32))(a1, v8, v5);
  }

  else
  {
    v9 = *v2;
    v10 = *(v2 + 8) | 0x40;
    sub_24387E070();
    swift_allocError();
    *v11 = a2;
    *(v11 + 8) = v9;
    *(v11 + 16) = v10;
    swift_willThrow();
  }

  return sub_24387E0C4(v13);
}

uint64_t sub_24387D190()
{
  v3 = sub_24387E528();
  v4 = sub_24387C1D0(v3, v15);
  if (!v16)
  {
    goto LABEL_5;
  }

  sub_24387E698(v4, v5, v6, v7);
  sub_243873884(v2, v1);
  if ((sub_24387E544(&v13, v8) & 1) == 0)
  {
    sub_24387E12C(v14);
LABEL_5:
    v9 = sub_24387E070();
    v10 = sub_24387E560(&type metadata for OneFieldDecoderError, v9);
    sub_24387E4F8(v10, v11);
    return sub_24387E0C4(v15);
  }

  *v0 = v13;
  sub_24387E12C(v14);
  return sub_24387E0C4(v15);
}

uint64_t sub_24387D254(void *a1, uint64_t a2)
{
  sub_24387C1D0((v2 + 2), v11);
  if (!v12)
  {
    goto LABEL_5;
  }

  sub_24387C1D0(v11, v10);
  type metadata accessor for Array();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_24387E12C(v10);
LABEL_5:
    v5 = *v2;
    v6 = *(v2 + 8) | 0x80;
    sub_24387E070();
    swift_allocError();
    *v7 = a2;
    *(v7 + 8) = v5;
    *(v7 + 16) = v6;
    swift_willThrow();
    return sub_24387E0C4(v11);
  }

  *a1 = v9;
  sub_24387E12C(v10);
  return sub_24387E0C4(v11);
}

uint64_t sub_24387D354()
{
  result = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {
    *v0 = 0;
    *(v0 + 8) = 1;
  }

  return result;
}

uint64_t sub_24387D370()
{
  v1 = sub_24387E518();
  v2 = sub_24387C1D0(v1, v13);
  if (!v14)
  {
    goto LABEL_5;
  }

  sub_24387E698(v2, v3, v4, v5);
  if ((sub_24387E544(&v11, v6) & 1) == 0)
  {
    sub_24387E12C(v12);
LABEL_5:
    v7 = sub_24387E600();
    v8 = sub_24387E560(&type metadata for OneFieldDecoderError, v7);
    sub_24387E4F8(v8, v9);
    return sub_24387E0C4(v13);
  }

  *v0 = v11;
  sub_24387E12C(v12);
  return sub_24387E0C4(v13);
}

uint64_t sub_24387D448()
{
  v1 = sub_24387E518();
  v2 = sub_24387C1D0(v1, v13);
  if (!v14)
  {
    goto LABEL_5;
  }

  sub_24387E698(v2, v3, v4, v5);
  if ((sub_24387E544(&v11, v6) & 1) == 0)
  {
    sub_24387E12C(v12);
LABEL_5:
    v7 = sub_24387E600();
    v8 = sub_24387E560(&type metadata for OneFieldDecoderError, v7);
    sub_24387E4F8(v8, v9);
    return sub_24387E0C4(v13);
  }

  *v0 = v11;
  sub_24387E12C(v12);
  return sub_24387E0C4(v13);
}

uint64_t sub_24387D5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_24387E588(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v22)
  {
    goto LABEL_5;
  }

  sub_24387C1D0(v21, v20);
  if ((sub_24387E658(&v23, v9, v10, v11, v12, v13, v14, v15, v20[0]) & 1) == 0)
  {
    sub_24387E12C(v20);
LABEL_5:
    v16 = sub_24387E600();
    v17 = sub_24387E560(&type metadata for OneFieldDecoderError, v16);
    sub_24387E4F8(v17, v18);
    return sub_24387E0C4(v21);
  }

  *v8 = v23;
  sub_24387E12C(v20);
  return sub_24387E0C4(v21);
}

uint64_t sub_24387D680()
{
  v3 = sub_24387E528();
  sub_24387C1D0(v3, v9);
  sub_243873884(&qword_27ED948A8, &unk_24389DB70);
  sub_243873884(v2, v1);
  if (swift_dynamicCast())
  {
    v4 = v10;
    *v0 = v9[10];
    *(v0 + 4) = v4;
  }

  else
  {
    v5 = sub_24387E070();
    v6 = sub_24387E560(&type metadata for OneFieldDecoderError, v5);
    sub_24387E4F8(v6, v7);
  }

  return sub_24387E0C4(v9);
}

uint64_t sub_24387D74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_24387E588(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v22)
  {
    goto LABEL_5;
  }

  sub_24387C1D0(v21, v20);
  if ((sub_24387E658(&v23, v9, v10, v11, v12, v13, v14, v15, v20[0]) & 1) == 0)
  {
    sub_24387E12C(v20);
LABEL_5:
    v16 = sub_24387E600();
    v17 = sub_24387E560(&type metadata for OneFieldDecoderError, v16);
    sub_24387E4F8(v17, v18);
    return sub_24387E0C4(v21);
  }

  *v8 = v23;
  sub_24387E12C(v20);
  return sub_24387E0C4(v21);
}

uint64_t sub_24387D7EC()
{
  v3 = sub_24387E528();
  sub_24387C1D0(v3, v19);
  sub_243873884(&qword_27ED948A8, &unk_24389DB70);
  v4 = sub_243873884(v2, v1);
  sub_24387E578(v4, v5, v6, v7, v8, v9, v10, v11, v16);
  if (swift_dynamicCast())
  {
    *v0 = v17;
    *(v0 + 8) = v18;
  }

  else
  {
    v12 = sub_24387E070();
    v13 = sub_24387E560(&type metadata for OneFieldDecoderError, v12);
    sub_24387E4F8(v13, v14);
  }

  return sub_24387E0C4(v19);
}

uint64_t sub_24387D8B0()
{
  v1 = sub_24387E518();
  v2 = sub_24387C1D0(v1, v13);
  if (!v14)
  {
    goto LABEL_5;
  }

  sub_24387E698(v2, v3, v4, v5);
  if ((sub_24387E544(&v11, v6) & 1) == 0)
  {
    sub_24387E12C(v12);
LABEL_5:
    v7 = sub_24387E600();
    v8 = sub_24387E560(&type metadata for OneFieldDecoderError, v7);
    sub_24387E4F8(v8, v9);
    return sub_24387E0C4(v13);
  }

  *v0 = v11;
  sub_24387E12C(v12);
  return sub_24387E0C4(v13);
}

uint64_t sub_24387D958()
{
  v1 = sub_24387E518();
  sub_24387C1D0(v1, v6);
  sub_243873884(&qword_27ED948A8, &unk_24389DB70);
  sub_243873884(&qword_27ED948E8, &qword_24389D878);
  if (swift_dynamicCast())
  {
    *v0 = v5;
  }

  else
  {
    v2 = sub_24387E5E4();
    sub_24387E560(&type metadata for OneFieldDecoderError, v2);
    sub_24387E5C8(v3, MEMORY[0x277D839B0]);
  }

  return sub_24387E0C4(v6);
}

uint64_t sub_24387DA5C()
{
  v1 = sub_24387E518();
  sub_24387C1D0(v1, v14);
  sub_243873884(&qword_27ED948A8, &unk_24389DB70);
  v2 = sub_243873884(&qword_27ED948D8, &qword_24389D868);
  sub_24387E578(v2, v3, v4, v5, v6, v7, v8, v9, v13);
  if (swift_dynamicCast())
  {

    *v0 = v13;
  }

  else
  {
    v10 = sub_24387E5E4();
    sub_24387E560(&type metadata for OneFieldDecoderError, v10);
    sub_24387E5C8(v11, MEMORY[0x277D837D0]);
  }

  return sub_24387E0C4(v14);
}

uint64_t sub_24387DB60()
{
  v1 = sub_24387E518();
  sub_24387C1D0(v1, v14);
  sub_243873884(&qword_27ED948A8, &unk_24389DB70);
  v2 = sub_243873884(&qword_27ED948C8, &qword_24389D858);
  sub_24387E578(v2, v3, v4, v5, v6, v7, v8, v9, v13);
  if (swift_dynamicCast())
  {
    sub_2438729FC(*v0, *(v0 + 8));
    *v0 = v13;
  }

  else
  {
    v10 = sub_24387E5E4();
    sub_24387E560(&type metadata for OneFieldDecoderError, v10);
    sub_24387E5C8(v11, MEMORY[0x277CC9318]);
  }

  return sub_24387E0C4(v14);
}

uint64_t sub_24387DC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for Dictionary();
  return sub_24387CE94(a1, v6);
}

uint64_t sub_24387DD70()
{
  sub_24387E5B0();
  v1 = sub_24387E638();
  v5 = sub_24387E618(v1, v2, v3, v4, MEMORY[0x277D218A0]);
  v6 = sub_24387E678(v5);
  return sub_24387CE94(v0, v6);
}

unint64_t sub_24387E070()
{
  result = qword_27ED948B8;
  if (!qword_27ED948B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED948B8);
  }

  return result;
}

uint64_t sub_24387E0C4(uint64_t a1)
{
  v2 = sub_243873884(&qword_27ED948A8, &unk_24389DB70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24387E12C(void *a1)
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

__n128 initializeBufferWithCopyOfBuffer for OneFieldDecoderError(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for OneFieldDecoderError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFE && *(a1 + 17))
    {
      v2 = *a1 + 16381;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 6) | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (((*(a1 + 16) >> 1) & 0x1F) << 7)))) ^ 0x3FFF;
      if (v2 >= 0x3FFD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for OneFieldDecoderError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 16) = 0;
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 16) = (v3 >> 6) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_24387E288(uint64_t result, char a2)
{
  v2 = *(result + 16) & 1 | (a2 << 6);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 16) = v2;
  return result;
}

uint64_t sub_24387E2B8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_24387E2D0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_24387E2E4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24387E338(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_24387E4F8(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v2;

  return swift_willThrow();
}

uint64_t sub_24387E544(uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_24387E560(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_24387E588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_24387C1D0(v8 + 16, va);
}

uint64_t sub_24387E5C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return swift_willThrow();
}

unint64_t sub_24387E5E4()
{

  return sub_24387E070();
}

unint64_t sub_24387E600()
{

  return sub_24387E070();
}

uint64_t sub_24387E618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_24387E638()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_24387E658(uint64_t a1, void x1_0, void x2_0, void a4, void a5, void a6, void a7, void a8, uint64_t a3)
{

  return swift_dynamicCast();
}

uint64_t sub_24387E678(uint64_t a1)
{

  return type metadata accessor for Dictionary();
}

uint64_t sub_24387E698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);

  return sub_24387C1D0(va1, va);
}

uint64_t sub_24387E6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  result = type metadata accessor for SubstitutingVisitor(0, v17);
  v16 = (a8 + *(result + 52));
  *v16 = a2;
  v16[1] = a3;
  return result;
}

uint64_t sub_24387E75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  (*(v2 + *(a1 + 52)))(v8);
  if (sub_243873AA4(v10, 1, v5) != 1)
  {
    return (*(*(v5 - 8) + 32))(a2, v10, v5);
  }

  (*(v7 + 8))(v10, v6);
  sub_24387CC68();
  swift_allocError();
  *v11 = 0;
  return swift_willThrow();
}

uint64_t sub_24387E8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a2;
  v35 = a1;
  v38 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 24);
  v13 = *(v11 + 40);
  v36[0] = v14;
  v36[1] = v12;
  v36[2] = v15;
  v37 = v13;
  v16 = type metadata accessor for SubstitutingVisitor(0, v36);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  if (v12 == a4)
  {
    v37 = v12;
    v25 = sub_24387FE78(v36);
    v26 = v34;
    sub_24387E75C(a3, v25);
    if (v26)
    {
      return sub_24387FED8(v36);
    }

    sub_24387C130(v33, v36, *(a3 + 16), *(a3 + 32));
  }

  else
  {
    v21 = v20;
    v32 = v17;
    v22 = *(v38 + 16);
    v38 += 16;
    v29 = v22;
    (v22)(v10, v35, a4, v18);
    v30 = a3;
    v31 = v5;
    sub_24387E6B0(v10, *(v5 + *(a3 + 52)), *(v5 + *(a3 + 52) + 8), a4, v12, a5, v13, v21);

    swift_getWitnessTable();
    v23 = v34;
    dispatch thunk of Message.traverse<A>(visitor:)();
    if (v23)
    {
      return (*(v32 + 8))(v21, v16);
    }

    v37 = a4;
    v27 = sub_24387FE78(v36);
    v29(v27, v21, a4);
    sub_24387C130(v33, v36, *(v30 + 16), *(v30 + 32));
    (*(v32 + 8))(v21, v16);
  }

  return sub_24387E0C4(v36);
}

uint64_t sub_24387EBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a2;
  v19 = static Array._allocateUninitialized(_:)();
  v9 = MEMORY[0x245D42500](a1, a4);
  v10 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(v9);
  v16 = &v15;
  v18[0] = a1;
  MEMORY[0x28223BE20](v11);
  v12 = *(a3 + 16);
  v15 = *(a3 + 32);
  swift_getWitnessTable();
  Sequence.forEach(_:)();
  if (!v5)
  {
    v13 = v15;
    v18[3] = v10;
    v18[0] = v19;

    sub_24387C130(v17, v18, v12, v13);
    sub_24387E0C4(v18);
  }
}

uint64_t sub_24387EDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v10;
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  v14 = type metadata accessor for SubstitutingVisitor(0, v16);
  result = sub_24387E75C(v14, v9);
  if (!v6)
  {
    swift_dynamicCast();
    type metadata accessor for Array();
    return Array.append(_:)();
  }

  return result;
}

uint64_t sub_24387EF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = a4;
  v31 = a7;
  v29 = a3;
  v32 = a2;
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v17;
  v35 = v16;
  v36 = a9;
  v37 = v18;
  v19 = type metadata accessor for SubstitutingVisitor(0, &v34);
  v33 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v26 - v21;
  v27 = *(v13 + 16);
  v28 = v13 + 16;
  v27(v15, a1, a6, v20);
  v34 = v30;
  v35 = a5;
  v36 = v31;
  v37 = a8;
  v23 = type metadata accessor for SubstitutingVisitor(0, &v34);
  sub_24387E6B0(v15, *(v32 + *(v23 + 52)), *(v32 + *(v23 + 52) + 8), a6, a5, a9, a8, v22);

  swift_getWitnessTable();
  v24 = v38;
  dispatch thunk of Message.traverse<A>(visitor:)();
  if (!v24)
  {
    (v27)(v15, v22, a6);
    type metadata accessor for Array();
    Array.append(_:)();
  }

  return (*(v33 + 8))(v22, v19);
}

uint64_t sub_24387F16C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a2;
  v30 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = MEMORY[0x245D423B0](a1, AssociatedTypeWitness, a5, AssociatedConformanceWitness);
  v14 = MEMORY[0x245D423A0](v13, AssociatedTypeWitness, a5, AssociatedConformanceWitness);
  v33 = v14;
  if (a3[3] == a5)
  {
    v28 = &v27;
    v32[0] = a1;
    MEMORY[0x28223BE20](v14);
    v21 = a3[4];
    MEMORY[0x28223BE20](v22);
    v27 = v23;
    v18 = type metadata accessor for Dictionary();
    swift_getWitnessTable();
    v24 = v31;
    Sequence.forEach(_:)();
    if (!v24)
    {
      v20 = v27;
      goto LABEL_6;
    }
  }

  else
  {
    v28 = &v27;
    v32[0] = a1;
    MEMORY[0x28223BE20](v14);
    v15 = a3[2];
    v16 = a3[4];
    MEMORY[0x28223BE20](v17);
    v18 = type metadata accessor for Dictionary();
    swift_getWitnessTable();
    v19 = v31;
    Sequence.forEach(_:)();
    if (!v19)
    {
      v20 = v15;
      v21 = v16;
LABEL_6:
      v25 = v33;
      type metadata accessor for Dictionary();
      v32[3] = v18;
      v32[0] = v25;

      sub_24387C130(v29, v32, v20, v21);
      sub_24387E0C4(v32);
    }
  }
}

uint64_t sub_24387F4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = a5;
  v34 = a4;
  v31 = a3;
  v32 = a10;
  MEMORY[0x28223BE20](a1);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v16;
  v17 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v29 - v18;
  v29 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v22 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v24 = &v29 - v23;
  (*(v21 + 16))(&v29 - v23, a1, AssociatedTypeWitness, v22);
  v35[0] = v33;
  v35[1] = a6;
  v35[2] = a9;
  v35[3] = v32;
  v25 = type metadata accessor for SubstitutingVisitor(0, v35);
  v26 = v35[5];
  sub_24387E75C(v25, v15);
  if (v26)
  {
    return (*(v21 + 8))(v24, AssociatedTypeWitness);
  }

  v28 = v30;
  swift_dynamicCast();
  sub_243873554(v19, 0, 1, v28);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Dictionary();
  return Dictionary.subscript.setter();
}

uint64_t sub_24387F760(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_24387F7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v43 = a5;
  v44 = a3;
  v37 = a1;
  v42 = a9;
  v40 = a4;
  v41 = a12;
  v16 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v16 - 8);
  v38 = &v31 - v17;
  v36 = *(a11 + 8);
  v39 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v34 = &v31 - v18;
  v19 = *(a8 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a8;
  v47 = a6;
  v48 = a12;
  v49 = a10;
  v23 = type metadata accessor for SubstitutingVisitor(0, &v46);
  v45 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v31 - v25;
  v32 = *(v19 + 16);
  v32(v22, a2, a8, v24);
  v46 = v43;
  v47 = a6;
  v48 = v42;
  v49 = a10;
  v27 = type metadata accessor for SubstitutingVisitor(0, &v46);
  sub_24387E6B0(v22, *(v44 + *(v27 + 52)), *(v44 + *(v27 + 52) + 8), a8, a6, v41, a10, v26);

  swift_getWitnessTable();
  v28 = v50;
  dispatch thunk of Message.traverse<A>(visitor:)();
  if (!v28)
  {
    (*(v33 + 16))(v34, v37, AssociatedTypeWitness);
    v29 = v38;
    (v32)(v38, v26, a8);
    sub_243873554(v29, 0, 1, a8);
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
  }

  return (*(v45 + 8))(v26, v23);
}

Swift::Int sub_24387FBE8(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x245D42800](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_24387FC4C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x245D42800](v1);
  return Hasher._finalize()();
}

uint64_t *sub_24387FE78(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_24387FED8(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x245D42E40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubstitutingVisitorError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SubstitutingVisitorError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2438800B4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_243880448();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24388013C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_243873AA4(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_243880278(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_243873554(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_243880448()
{
  result = qword_280D49640;
  if (!qword_280D49640)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280D49640);
  }

  return result;
}

unint64_t sub_243880494()
{
  result = qword_27ED94950;
  if (!qword_27ED94950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED94950);
  }

  return result;
}

uint64_t sub_243880568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Optional();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return sub_2438806E0(v8);
}

uint64_t sub_243880638@<X0>(uint64_t a1@<X8>)
{
  sub_24388A608();
  v4 = *(v3 + 112);
  sub_24388A800();
  sub_24388A4E4();
  swift_beginAccess();
  sub_24388A608();
  type metadata accessor for Optional();
  sub_243876174();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_2438806E0(uint64_t a1)
{
  sub_24388A608();
  v4 = *(v3 + 112);
  v5 = sub_24388A800();
  sub_24388A61C(v5, v6);
  sub_24388A608();
  type metadata accessor for Optional();
  sub_243876174();
  (*(v7 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_24388078C()
{
  sub_24388A5E0();
  sub_24388A768();
  sub_24388A3F4();
  return sub_24388A5D4();
}

uint64_t sub_2438807EC@<X0>(uint64_t a2@<X8>)
{
  sub_24388A608();
  v5 = *(v4 + 120);
  sub_24388A800();
  sub_24388A4E4();
  swift_beginAccess();
  sub_24388A608();
  type metadata accessor for Optional();
  sub_243876174();
  return (*(v6 + 16))(a2, v2 + v5);
}

uint64_t sub_243880894(uint64_t a1)
{
  sub_24388A608();
  v4 = *(v3 + 120);
  v5 = sub_24388A800();
  sub_24388A61C(v5, v6);
  sub_24388A608();
  type metadata accessor for Optional();
  sub_243876174();
  (*(v7 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_243880940(uint64_t a1)
{
  sub_24388A768();

  return sub_243876224();
}

void sub_243880990(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_243880AAC(v1);
}

void sub_2438809C0(void *a1)
{
  v2 = v1;
  v4 = [v2 configuration];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 container];
    [v5 setContainer_];
  }

  else
  {
    __break(1u);
  }
}

void *sub_243880A58(uint64_t a1)
{
  sub_24388A768();
  v3 = *(v2 + 136);
  sub_24388A4B4(v4);
  v5 = *(v1 + v3);
  v6 = v5;
  return v5;
}

void sub_243880AAC(void *a1)
{
  sub_2438809C0(a1);
  sub_24388A768();
  v4 = *(v3 + 136);
  sub_24388A590(v5);
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
}

void (*sub_243880B10(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_243873964(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  sub_24388A768();
  v5 = *(v4 + 136);
  sub_24388A4E4();
  swift_beginAccess();
  v6 = *(v1 + v5);
  v3[3] = v6;
  v7 = v6;
  return sub_243880BAC;
}

void sub_243880BAC(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_243880AAC(v3);
  }

  else
  {
    sub_243880AAC(*(*a1 + 24));
  }

  free(v2);
}

void *sub_243880CE8()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0xA0));
  v2 = v1;
  return v1;
}

void sub_243880D38(uint64_t a1)
{
  sub_24388A768();
  v3 = *(v2 + 160);
  v4 = *(v1 + v3);
  *(v1 + v3) = v5;
}

double sub_243880D78@<D0>(uint64_t a1@<X8>)
{
  sub_243880E10(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_243880DBC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6[0] = *a1;
  v6[1] = v1;
  v6[2] = v2;
  v6[3] = v3;
  v7 = v4;
  sub_243880E88(v6[0], v1, v2, v3, v4);
  return sub_243880EE8(v6);
}

uint64_t sub_243880E10@<X0>(uint64_t a2@<X8>)
{
  sub_24388A768();
  v5 = v2 + *(v4 + 168);
  sub_24388A4E4();
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  *a2 = *v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  v10 = *(v5 + 32);
  *(a2 + 32) = v10;
  return sub_243880E88(v6, v7, v8, v9, v10);
}

uint64_t sub_243880E88(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else if (!a5)
  {

    return sub_243873DE8(result, a2);
  }

  return result;
}

uint64_t sub_243880EE8(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_24388A768();
  sub_24388A434(v4);
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v9;
  v10 = *(v1 + 32);
  *(v1 + 32) = v3;
  return sub_243880F5C(v5, v6, v7, v8, v10);
}

uint64_t sub_243880F5C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else if (!a5)
  {

    return sub_243873E40(result, a2);
  }

  return result;
}

uint64_t sub_243880FBC()
{
  sub_24388A5E0();
  sub_24388A768();
  sub_24388A3F4();
  return sub_24388A5D4();
}

double sub_24388101C@<D0>(_OWORD *a1@<X8>)
{
  sub_24388109C(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_243881058(uint64_t *a1)
{
  v1 = a1[1];
  v7[0] = *a1;
  v7[1] = v1;
  sub_2438764C4(v7[0], v1);
  return sub_2438810EC(v7, v2, v3, v4, v5);
}

uint64_t sub_24388109C@<X0>(uint64_t *a2@<X8>)
{
  sub_243880E10(&v5);
  result = v5;
  v4 = v6;
  if (v9)
  {
    sub_243880F5C(v5, v6, v7, v8, v9);
    result = 0;
    v4 = 0xF000000000000000;
  }

  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2438810EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1];
  if (v5 >> 60 == 15)
  {
    v11 = 0u;
    v12 = 0u;
    v13 = 2;
    return sub_243880EE8(&v11);
  }

  else
  {
    *&v11 = *a1;
    *(&v11 + 1) = v5;
    v12 = 0uLL;
    v13 = 0;
    v7 = sub_24388A708();
    sub_243873DE8(v7, v8);
    sub_243880EE8(&v11);
    v9 = sub_24388A708();
    return sub_2438729FC(v9, v10);
  }
}

uint64_t (*sub_24388116C(uint64_t *a1))(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a1[2] = v1;
  sub_24388109C(a1);
  return sub_2438811B4;
}

uint64_t sub_2438811B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1];
  if (a2)
  {
    v15 = *a1;
    v16 = v5;
    v6 = sub_24388A708();
    sub_2438764C4(v6, v7);
    sub_2438810EC(&v15, v8, v9, v10, v11);
    v12 = sub_24388A708();

    return sub_2438729FC(v12, v13);
  }

  else
  {
    v15 = *a1;
    v16 = v5;
    return sub_2438810EC(&v15, a2, a3, a4, a5);
  }
}

uint64_t sub_243881234(uint64_t a1)
{
  sub_24388A768();
  v3 = *(v2 + 176);
  sub_24388A4B4(v4);
  return *(v1 + v3);
}

uint64_t sub_243881280(uint64_t a1)
{
  v2 = a1;
  sub_24388A768();
  v4 = *(v3 + 176);
  result = sub_24388A590(v5);
  *(v1 + v4) = v2;
  return result;
}

uint64_t sub_2438812D8()
{
  sub_24388A5E0();
  sub_24388A768();
  sub_24388A3F4();
  return sub_24388A5D4();
}

void *sub_243881338()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0xB8));
  v2 = v1;
  return v1;
}

void sub_243881384(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2438819B4(a1, *v5);
  if (!v10 || (v11 = sub_24388ECDC(a2, a3, v10), , !v11) || (v12 = sub_24388ED30(a4, v11), , !v12))
  {
    v13 = objc_allocWithZone(MEMORY[0x277CBC510]);
    v14 = a1;

    sub_2438814C8([v13 init], v14, a2, a3, a4);
    v12 = 0;
  }

  v15 = sub_2438819B4(a1, *v5);
  if (!v15)
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = sub_24388ECDC(a2, a3, v15);
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = sub_24388ED30(a4, v16);

  if (v17)
  {

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_2438814C8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = a2;
  v13 = sub_2438819B4(v12, v11);

  if (v13)
  {
  }

  else
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = *v6;
    sub_243899208(MEMORY[0x277D84F98], v14, isUniquelyReferenced_nonNull_native);

    v11 = v65;
    *v6 = v65;
  }

  v16 = v12;

  v17 = sub_2438819B4(v16, v11);
  if (!v17)
  {
    goto LABEL_36;
  }

  v18 = v17;
  v62 = a1;

  v19 = sub_24388ECDC(a3, a4, v18);

  v63 = a5;
  if (v19)
  {
  }

  else
  {
    v20 = v16;
    swift_bridgeObjectRetain_n();
    v21 = v20;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v6;
    v66 = *v6;
    v24 = sub_243898F8C();
    v26 = *(v23 + 16);
    v27 = (v25 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v29 = v24;
    v30 = v25;
    sub_243873884(&unk_27ED94E80, &unk_24389E390);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v22, v28))
    {
      v31 = sub_243898F8C();
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_37;
      }

      v29 = v31;
    }

    if ((v30 & 1) == 0)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v33 = *(*(v66 + 56) + 8 * v29);

    v34 = swift_isUniquelyReferenced_nonNull_native();
    sub_2438990D8(MEMORY[0x277D84F98], a3, a4, v34);

    if (v33)
    {
      *(*(v66 + 56) + 8 * v29) = v33;
    }

    else
    {

      sub_24388A094(0, &unk_27ED94AF0, 0x277CBC5D0);
      sub_243873884(&unk_27ED94E90, &unk_24389DF30);
      sub_243889FD8();
      _NativeDictionary._delete(at:)();
    }

    *v6 = v66;
  }

  v35 = v16;
  swift_bridgeObjectRetain_n();
  v36 = v35;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v6;
  v67 = *v6;
  v39 = sub_243898F8C();
  v41 = *(v38 + 16);
  v42 = (v40 & 1) == 0;
  v43 = v41 + v42;
  if (__OFADD__(v41, v42))
  {
    __break(1u);
    goto LABEL_31;
  }

  v44 = v39;
  v45 = v40;
  sub_243873884(&unk_27ED94E80, &unk_24389E390);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v37, v43))
  {
    v46 = sub_243898F8C();
    if ((v45 & 1) == (v47 & 1))
    {
      v44 = v46;
      goto LABEL_20;
    }

LABEL_37:
    sub_24388A094(0, &unk_27ED94AF0, 0x277CBC5D0);
    goto LABEL_38;
  }

LABEL_20:
  if ((v45 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v48 = *(*(v67 + 56) + 8 * v44);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v64 = v48;
  v50 = sub_243898EF4(a3, a4);
  v52 = *(v48 + 16);
  v53 = (v51 & 1) == 0;
  v54 = v52 + v53;
  if (__OFADD__(v52, v53))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v55 = v50;
  v56 = v51;
  sub_243873884(&unk_27ED94EA0, &unk_24389E3A0);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v49, v54))
  {
    v57 = sub_243898EF4(a3, a4);
    if ((v56 & 1) != (v58 & 1))
    {
LABEL_38:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v55 = v57;
  }

  if ((v56 & 1) == 0)
  {
    goto LABEL_33;
  }

  v59 = *(*(v48 + 56) + 8 * v55);

  v60 = v62;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  sub_243898FCC(v60, v63, v61);
  if (v59)
  {

    *(*(v64 + 56) + 8 * v55) = v59;
  }

  else
  {

    sub_24388A040(*(v64 + 48) + 16 * v55);
    sub_243873884(&qword_27ED94B10, &qword_24389DF40);
    _NativeDictionary._delete(at:)();
  }

  *(*(v67 + 56) + 8 * v44) = v64;

  *v6 = v67;
}

uint64_t sub_2438819B4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_243898F8C();
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

void sub_243881A04(uint64_t a1, void *a2)
{
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    sub_243899208(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v11;
  }

  else
  {
    v5 = sub_243898F8C();
    if (v6)
    {
      v7 = v5;
      v8 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v9 = *(*v2 + 24);
      sub_243873884(&unk_27ED94E80, &unk_24389E390);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v8, v9);

      sub_24388A094(0, &unk_27ED94AF0, 0x277CBC5D0);
      sub_243873884(&unk_27ED94E90, &unk_24389DF30);
      sub_243889FD8();
      _NativeDictionary._delete(at:)();

      *v2 = v12;
    }

    else
    {
    }
  }
}

uint64_t sub_243881B7C(uint64_t a1)
{
  sub_24388A768();
  sub_24388A4B4(v1);
}

void *CKCodeOperation.init(functionName:request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = MEMORY[0x277D85000];
  v9 = *MEMORY[0x277D85000];
  v10 = *MEMORY[0x277D85000] & *v3;
  v11 = *(v10 + 0x70);
  v12 = *(v10 + 0x50);
  sub_243873554(v3 + v11, 1, 1, v12);
  sub_24388A3A8();
  v14 = *((v9 & v7) + 0x58);
  sub_243873554(v3 + *(v13 + 120), 1, 1, v14);
  sub_24388A3A8();
  *(v3 + *(v15 + 136)) = 0;
  sub_24388A3A8();
  v17 = MEMORY[0x277D84F90];
  *(v3 + *(v16 + 144)) = MEMORY[0x277D84F90];
  *(v3 + *((*v8 & *v3) + 0x98)) = v17;
  sub_24388A3A8();
  *(v3 + *(v18 + 160)) = 0;
  sub_24388A3A8();
  v20 = v3 + *(v19 + 168);
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v20[32] = 2;
  sub_24388A3A8();
  *(v3 + *(v21 + 176)) = 0;
  sub_24388A3A8();
  *(v3 + *(v22 + 184)) = 0;
  *&v23 = v12;
  *(&v23 + 1) = v14;
  v42 = v23;
  v43 = *(v10 + 96);
  *(v3 + *((*v8 & *v3) + 0xC0)) = MEMORY[0x277D84F98];
  sub_24388A3A8();
  sub_24388A744(*(v24 + 200));
  sub_24388A3A8();
  sub_24388A744(*(v25 + 208));
  sub_24388A3A8();
  sub_24388A744(*(v26 + 216));
  sub_24388A3A8();
  sub_24388A744(*(v27 + 240));
  sub_24388A3A8();
  sub_24388A744(*(v28 + 248));
  sub_24388A61C(v3 + v11, &v44);
  v29 = type metadata accessor for Optional();
  v30 = *(v29 - 8);
  (*(v30 + 24))(v3 + v11, a3, v29);
  swift_endAccess();
  sub_24388A3A8();
  v32 = (v3 + *(v31 + 128));
  *v32 = a1;
  v32[1] = a2;
  sub_24388A3A8();
  *(v3 + *(v33 + 232)) = 0;
  sub_24388A3A8();
  *(v3 + *(v34 + 224)) = 1;
  v44 = v42;
  v45 = v43;
  v35 = type metadata accessor for CKCodeOperation(0, &v44);
  v46.receiver = v3;
  v46.super_class = v35;
  v36 = objc_msgSendSuper2(&v46, sel_init);
  *&v44 = v12;
  *(&v44 + 1) = v14;
  v45 = v43;
  type metadata accessor for CKCodeOperation.CallbackRelay(0, &v44);
  v37 = v36;
  v38 = sub_243881FEC(v37);
  (*(v30 + 8))(a3, v29);
  v39 = *((*v8 & *v37) + 0xB8);
  v40 = *(v37 + v39);
  *(v37 + v39) = v38;

  return v37;
}

uint64_t sub_243882020@<X0>(uint64_t (**a1)()@<X8>, uint64_t a2@<X0>)
{
  result = sub_243882120(a2);
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_24388A32C;
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7;
  a1[1] = result;
  return result;
}

uint64_t sub_243882090(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
  }

  sub_243871FA4(v1, v2);
  return sub_24388216C();
}

uint64_t sub_243882120(uint64_t a1)
{
  sub_24388A768();
  sub_24388A480(v1);
  return sub_24388A458();
}

uint64_t sub_24388216C()
{
  sub_24388A5EC();
  sub_24388A768();
  sub_24388A434(v0);
  return sub_24388A824();
}

uint64_t sub_2438821C0()
{
  sub_24388A5E0();
  sub_24388A768();
  sub_24388A3F4();
  return sub_24388A5D4();
}

uint64_t sub_243882220@<X0>(uint64_t (**a1)()@<X8>, uint64_t a2@<X0>)
{
  result = sub_243882320(a2);
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_24388A2DC;
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7;
  a1[1] = result;
  return result;
}

uint64_t sub_243882290(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
  }

  sub_243871FA4(v1, v2);
  return sub_24388236C();
}

uint64_t sub_243882320(uint64_t a1)
{
  sub_24388A768();
  sub_24388A480(v1);
  return sub_24388A458();
}

uint64_t sub_24388236C()
{
  sub_24388A5EC();
  sub_24388A768();
  sub_24388A434(v0);
  return sub_24388A824();
}

uint64_t sub_2438823C0()
{
  sub_24388A5E0();
  sub_24388A768();
  sub_24388A3F4();
  return sub_24388A5D4();
}

uint64_t sub_243882420@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>, uint64_t a4@<X0>)
{
  v10 = *(a1 + a2 - 16);
  v11 = *(a1 + a2 - 32);
  result = sub_243882548(a4);
  if (result)
  {
    v7 = result;
    v8 = v6;
    result = swift_allocObject();
    *(result + 16) = v11;
    *(result + 32) = v10;
    *(result + 48) = v7;
    *(result + 56) = v8;
    v9 = sub_24388A2AC;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  a3[1] = result;
  return result;
}

uint64_t sub_2438824AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = swift_allocObject();
    v8 = *(v6 - 16);
    *(v7 + 16) = *(v6 - 32);
    *(v7 + 32) = v8;
    *(v7 + 48) = v4;
    *(v7 + 56) = v5;
  }

  sub_243871FA4(v4, v5);
  return sub_243882594();
}

uint64_t sub_243882548(uint64_t a1)
{
  sub_24388A768();
  sub_24388A480(v1);
  return sub_24388A458();
}

uint64_t sub_243882594()
{
  sub_24388A5EC();
  sub_24388A768();
  sub_24388A434(v0);
  return sub_24388A824();
}

uint64_t sub_2438825E8()
{
  sub_24388A5E0();
  sub_24388A768();
  sub_24388A3F4();
  return sub_24388A5D4();
}

uint64_t sub_24388264C(uint64_t a1)
{
  sub_24388A768();
  v3 = *(v2 + 224);
  sub_24388A4B4(v4);
  return *(v1 + v3);
}

uint64_t sub_243882698(uint64_t a1)
{
  v2 = a1;
  sub_24388A768();
  v4 = *(v3 + 224);
  result = sub_24388A590(v5);
  *(v1 + v4) = v2;
  return result;
}

uint64_t sub_2438826F0()
{
  sub_24388A5E0();
  sub_24388A768();
  sub_24388A3F4();
  return sub_24388A5D4();
}

uint64_t sub_243882750(uint64_t a1)
{
  sub_24388A768();
  v3 = *(v2 + 232);
  sub_24388A4B4(v4);
  return *(v1 + v3);
}

uint64_t sub_24388279C(uint64_t a1)
{
  v2 = a1;
  sub_24388A768();
  v4 = *(v3 + 232);
  result = sub_24388A590(v5);
  *(v1 + v4) = v2;
  return result;
}

uint64_t sub_2438827F4()
{
  sub_24388A5E0();
  sub_24388A768();
  sub_24388A3F4();
  return sub_24388A5D4();
}

uint64_t sub_243882854@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>, uint64_t a4@<X0>)
{
  v10 = *(a1 + a2 - 16);
  v11 = *(a1 + a2 - 32);
  result = sub_24388297C(a4);
  if (result)
  {
    v7 = result;
    v8 = v6;
    result = swift_allocObject();
    *(result + 16) = v11;
    *(result + 32) = v10;
    *(result + 48) = v7;
    *(result + 56) = v8;
    v9 = sub_24388A274;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  a3[1] = result;
  return result;
}

uint64_t sub_2438828E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = swift_allocObject();
    v8 = *(v6 - 16);
    *(v7 + 16) = *(v6 - 32);
    *(v7 + 32) = v8;
    *(v7 + 48) = v4;
    *(v7 + 56) = v5;
  }

  sub_243871FA4(v4, v5);
  return sub_2438829C8();
}

uint64_t sub_24388297C(uint64_t a1)
{
  sub_24388A768();
  sub_24388A480(v1);
  return sub_24388A458();
}

uint64_t sub_2438829C8()
{
  sub_24388A5EC();
  sub_24388A768();
  sub_24388A434(v0);
  return sub_24388A824();
}

uint64_t sub_243882A1C()
{
  sub_24388A5E0();
  sub_24388A768();
  sub_24388A3F4();
  return sub_24388A5D4();
}

uint64_t sub_243882A7C(uint64_t a1)
{
  sub_24388A768();
  v1 = sub_243876224();
  sub_243871FA4(v1, v2);
  return sub_243876224();
}

uint64_t sub_243882ACC()
{
  v1 = sub_24388A4D4();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CKCodeOperation(v1, v2);
  v3 = objc_msgSendSuper2(&v6, sel_hasCKOperationCallbacksSet);
  if (v3)
  {
    return 1;
  }

  result = sub_243882120(v3);
  if (result || (result = sub_243882548(0)) != 0 || (result = sub_243882320(0)) != 0 || (result = sub_24388297C(0)) != 0)
  {
    sub_243871FB4(result, v5);
    return 1;
  }

  return result;
}

uint64_t sub_243882B68(void *a1)
{
  v1 = a1;
  v2 = sub_243882ACC();

  return v2 & 1;
}

id sub_243882B9C(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  sub_24388A768();
  v3 = v2;
  v6 = *((v5 & v4) + 0x50);
  v7 = type metadata accessor for Optional();
  sub_243876204();
  v9 = v8;
  sub_243876190();
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v14 = sub_243880A58(v13);
  if (!v14 || (v14, sub_243880638(v12), v15 = sub_243873AA4(v12, 1, v6), (*(v9 + 8))(v12, v7), v15 == 1) || (v16 = [v1 resolvedConfiguration], v17 = objc_msgSend(v16, sel_isLongLived), v16, (v17 & 1) != 0))
  {
    sub_24388A714();
    related decl 'e' for CKErrorCode.init(_:description:)();
    return swift_willThrow();
  }

  v23 = 0;
  v24 = v6;
  v19 = *(v3 + 104);
  v25 = *(v3 + 88);
  v26 = v19;
  v20 = type metadata accessor for CKCodeOperation(0, &v24);
  v22.receiver = v1;
  v22.super_class = v20;
  if ((objc_msgSendSuper2(&v22, sel_CKOperationShouldRun_, &v23) & 1) == 0)
  {
    v21 = v23;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return v23;
}

uint64_t sub_243882E04(void *a1)
{
  v1 = a1;
  sub_243882B9C(v1);

  return 1;
}

void sub_243882EA4()
{
  sub_24388A664();
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v3 = *MEMORY[0x277D85000] & *v0;
  v103 = type metadata accessor for Google_Protobuf_Any();
  sub_243876204();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_24388A424();
  v102 = v8 - v7;
  v9 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  v10 = sub_243876184(v9);
  MEMORY[0x28223BE20](v10);
  sub_24388A414();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v108 = &v93 - v15;
  v16 = sub_24388A64C();
  v17 = type metadata accessor for Ckcode_ProtectedEnvelope(v16);
  sub_243876204();
  v107 = v18;
  MEMORY[0x28223BE20](v19);
  sub_24388A424();
  v106 = v21 - v20;
  v22 = *((v2 & v1) + 0x50);
  v23 = type metadata accessor for Optional();
  sub_243876184(v23);
  sub_243876190();
  MEMORY[0x28223BE20](v24);
  v26 = &v93 - v25;
  sub_24387C120();
  v28 = v27;
  sub_243876190();
  MEMORY[0x28223BE20](v29);
  v31 = &v93 - v30;
  sub_243880638(v26);
  if (sub_243873AA4(v26, 1, v22) == 1)
  {
    goto LABEL_31;
  }

  v104 = v5;
  v105 = v17;
  v100 = v13;
  v101 = v0;
  v94 = v28;
  (*(v28 + 32))(v31, v26, v22);
  v32 = type metadata accessor for Ckcode_RecordTransport(0);
  v93 = v3;
  v33 = *(v3 + 96);
  sub_24388A3D0();
  v36 = sub_243888CF0(v34, v35, &protocol conformance descriptor for Ckcode_RecordTransport);
  v96 = v31;
  v97 = v22;
  v95 = v33;
  v37 = sub_24387BBC4(v32, v22, v32, v33, v36);
  v38 = 0;
  v39 = *(v37 + 16);
  v40 = v32 - 8;
  v41 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v39 == v38)
    {

      sub_24388A508();
      v56 = sub_243888CF0(v54, v55, &protocol conformance descriptor for Ckcode_ProtectedEnvelope);
      v57 = sub_24387BBC4(v105, v97, v105, v95, v56);
      v58 = *(v57 + 16);
      v60 = v100;
      v59 = v101;
      v61 = v108;
      if (!v58)
      {
        v64 = MEMORY[0x277D84F90];
LABEL_27:

        sub_243880C4C(v41);
        sub_243880CB4(v64);
        v90 = *(v93 + 88);
        v91 = *(v93 + 104);
        v89 = v97;
        v109[0] = v97;
        v109[1] = v90;
        v109[2] = v95;
        v109[3] = v91;
        v92 = type metadata accessor for CKCodeOperation(0, v109);
        v110.receiver = v59;
        v110.super_class = v92;
        objc_msgSendSuper2(&v110, sel_performCKOperation);
LABEL_28:
        (*(v94 + 8))(v96, v89);
        sub_24388A67C();
        return;
      }

      v62 = 0;
      sub_24388A634();
      v105 = v57 + v63;
      v98 = (v104 + 8);
      v99 = v104 + 32;
      v104 = "localSerialization";
      v64 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v62 >= *(v57 + 16))
        {
          goto LABEL_30;
        }

        v65 = v106;
        sub_24388A0D4(v105 + *(v107 + 72) * v62, v106, type metadata accessor for Ckcode_ProtectedEnvelope);
        v66 = sub_243876224();
        sub_243888D38(v66, v67);
        sub_24388A130(v65, type metadata accessor for Ckcode_ProtectedEnvelope);
        v68 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
        if (sub_243873AA4(v61, 1, v68) != 1)
        {
          v69 = sub_24388A7DC();
          sub_243888D38(v69, v70);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v71 = sub_24388A7DC();
            v72(v71);
            sub_243888CF0(qword_280D49098, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
            v73 = Message.serializedData(partial:)();
            v75 = v74;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v81 = sub_24388A5C4();
              v64 = sub_243888BE8(v81, v82, v83, v64);
            }

            v77 = *(v64 + 2);
            v76 = *(v64 + 3);
            if (v77 >= v76 >> 1)
            {
              v84 = sub_24388A5B0(v76);
              v64 = sub_243888BE8(v84, v85, v86, v64);
            }

            (*v98)(v102, v103);
            *(v64 + 2) = v77 + 1;
            v78 = &v64[16 * v77];
            *(v78 + 4) = v73;
            *(v78 + 5) = v75;
            v60 = v100;
            v59 = v101;
            goto LABEL_23;
          }

          sub_24388A130(v60, type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents);
        }

        sub_24388A714();
        v79 = related decl 'e' for CKErrorCode.init(_:description:)();
        v80 = _convertErrorToNSError(_:)();

        [v59 finishWithError_];
LABEL_23:
        ++v62;
        v61 = v108;
        sub_24387605C(v108, &qword_27ED94960, &qword_24389CB10);
        if (v58 == v62)
        {
          goto LABEL_27;
        }
      }
    }

    if (v38 >= *(v37 + 16))
    {
      break;
    }

    v42 = (v37 + ((*(*v40 + 80) + 32) & ~*(*v40 + 80)) + *(*v40 + 72) * v38);
    v43 = v42[1];
    if ((v43 & 0x2000000000000000) != 0)
    {

      sub_24388A714();
      v87 = related decl 'e' for CKErrorCode.init(_:description:)();
      v88 = _convertErrorToNSError(_:)();

      [v101 finishWithError_];
      v89 = v97;
      goto LABEL_28;
    }

    v44 = *v42;
    sub_2438799C8(*v42, v42[1]);
    sub_243873DE8(v44, v43);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_24388A5C4();
      v41 = sub_243888BE8(v48, v49, v50, v41);
    }

    v46 = *(v41 + 2);
    v45 = *(v41 + 3);
    if (v46 >= v45 >> 1)
    {
      v51 = sub_24388A5B0(v45);
      v41 = sub_243888BE8(v51, v52, v53, v41);
    }

    sub_243879A04(v44, v43);
    *(v41 + 2) = v46 + 1;
    v47 = &v41[16 * v46];
    *(v47 + 4) = v44;
    *(v47 + 5) = v43;
    ++v38;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  sub_24388A4A4();
  swift_unexpectedError();
  __break(1u);
}

void sub_243883684(void *a1)
{
  v1 = a1;
  sub_243882EA4();
}

uint64_t sub_2438836F8()
{
  sub_2438836CC();

  return swift_getObjCClassFromMetadata();
}

id sub_24388372C()
{
  v0 = sub_243883720();

  return v0;
}

void sub_24388376C(void *a1)
{
  v1 = a1;
  sub_243883754();
}

void sub_2438837D0(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  sub_2438837B4(a3);
}

id sub_243883844(void *a1)
{
  v1 = a1;
  v2 = sub_243883828();

  return v2;
}

void sub_243883888(uint64_t a1)
{
  sub_24388A664();
  v2 = v1;
  v4 = v3;
  v5 = *MEMORY[0x277D85000] & *v1;
  v6 = type metadata accessor for URL();
  sub_243876204();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_24388A424();
  v12 = v11 - v10;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClassUnconditional();
  v14 = sub_243880A58(v13);
  if (!v14)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = v14;
  v16 = [v14 serviceName];

  if (!v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = MEMORY[0x245D42400](v17);
  }

  [v13 setServiceName_];

  v19 = sub_243880A58(v18);
  if (!v19)
  {
    goto LABEL_20;
  }

  v20 = v19;
  v21 = [v19 serviceInstanceURL];

  if (v21)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v22);
    v24 = v23;
    (*(v8 + 8))(v12, v6);
  }

  else
  {
    v24 = 0;
  }

  [v13 setClientRuntimeProvidedServiceURL_];

  v26 = sub_243880A58(v25);
  if (!v26)
  {
    goto LABEL_21;
  }

  v27 = v26;
  CKCodeService.databaseScope.getter();
  v29 = v28;

  v30 = sub_243880A58([v13 setEnqueuedOnContainerService_]);
  if (!v30)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v31 = v30;
  v32 = CKCodeService.databaseScope.getter();
  v34 = v33;

  if (v34)
  {
    v35 = 1;
  }

  else
  {
    v35 = v32;
  }

  v36 = sub_243880940([v13 setDatabaseScope_]);
  v37 = MEMORY[0x245D42400](v36);

  [v13 setFunctionName_];

  sub_243880C18();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 setRequestLocalSerializations_];

  sub_243880C80();
  v39 = Array._bridgeToObjectiveC()().super.isa;

  [v13 setRequestLocalEnvelopes_];

  sub_243880E10(&v55);
  v40 = v56;
  if (v57)
  {
    if (v57 == 1)
    {
      [v13 setDataProtectionType_];
      v41 = sub_24388A5FC();
      v42 = MEMORY[0x245D42400](v41);

      [v13 setTrustedTargetDomain_];

      v43 = MEMORY[0x245D42400](v40, *(&v40 + 1));

      [v13 setTrustedTargetOID_];
    }

    else
    {
      v44 = [v13 setDataProtectionType_];
    }
  }

  else
  {
    v45 = sub_24388A5FC();
    sub_243873DE8(v45, v46);
    sub_24388A5FC();
    v47 = Data._bridgeToObjectiveC()().super.isa;
    v48 = sub_24388A5FC();
    sub_243880F5C(v48, v49, v40, *(&v40 + 1), 0);
    [v13 setPermittedRemoteMeasurement_];

    [v13 setDataProtectionType_];
    v50 = sub_24388A5FC();
    v44 = sub_243880F5C(v50, v51, v40, *(&v40 + 1), 0);
  }

  v52 = [v13 setShouldSendRecordPCSKeys_];
  [v13 setShouldFetchAssetContentInMemory_];
  v53 = *(v5 + 96);
  v55 = *(v5 + 80);
  v56 = v53;
  v54.receiver = v2;
  v54.super_class = type metadata accessor for CKCodeOperation(0, &v55);
  objc_msgSendSuper2(&v54, sel_fillOutOperationInfo_, v4);
  sub_24388A67C();
}

void sub_243883D08(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_243883888(v4);
}

id sub_243883DDC(uint64_t a1)
{
  sub_24388A094(0, &qword_280D49658, 0x277CBC7B0);
  [swift_getObjCClassFromMetadata() applyDaemonCallbackInterfaceTweaks_];
  sub_24388A094(0, &qword_280D49670, 0x277CBC3E0);
  [swift_getObjCClassFromMetadata() applyDaemonCallbackInterfaceTweaks_];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_24388A4D4();
  v5 = (*MEMORY[0x277D85000] & *type metadata accessor for CKCodeOperation(v3, v4));
  v7.receiver = ObjCClassFromMetadata;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, a1);
}

void sub_243883EC0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjCClassMetadata();
  v4 = a3;
  sub_243883DDC(v4);
}

void sub_243883F10(uint64_t a1)
{
  sub_24388A664();
  v108 = v2;
  v4 = v3;
  v6 = v5;
  v117 = v7;
  v115 = v8;
  v9 = *v1;
  v10 = *MEMORY[0x277D85000];
  v112 = *MEMORY[0x277D85000] & *v1;
  type metadata accessor for Ckcode_ProtectedEnvelope(0);
  sub_243876204();
  v113 = v12;
  v114 = v11;
  MEMORY[0x28223BE20](v11);
  sub_24388A424();
  v104 = v14 - v13;
  v15 = sub_24388A64C();
  v118 = type metadata accessor for Ckcode_RecordTransport(v15);
  sub_243876204();
  v116 = v16;
  MEMORY[0x28223BE20](v17);
  sub_24388A424();
  v20 = v19 - v18;
  v21 = *((v10 & v9) + 0x50);
  v22 = type metadata accessor for Optional();
  sub_243876184(v22);
  sub_243876190();
  MEMORY[0x28223BE20](v23);
  v25 = &v100 - v24;
  sub_24387C120();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_24388A414();
  v31 = (v29 - v30);
  MEMORY[0x28223BE20](v32);
  v105 = &v100 - v33;
  sub_24388A6FC();
  MEMORY[0x28223BE20](v34);
  v36 = &v100 - v35;
  v106 = v1;
  sub_243880638(v25);
  if (sub_243873AA4(v25, 1, v21) == 1)
  {
    __break(1u);
  }

  else
  {
    v107 = v4;
    v37 = *(v27 + 32);
    v102 = v27 + 32;
    v103 = v31;
    v101 = v37;
    v37(v36, v25, v21);
    v38 = v115;
    v39 = *(v115 + 16);
    v40 = MEMORY[0x277D84F90];
    v110 = v27;
    v111 = v21;
    v109 = v36;
    if (v39)
    {
      v100 = v6;
      v41 = sub_24388A6CC(MEMORY[0x277D84F90]);
      sub_243899608(v41, v42, v43);
      v45 = 0;
      v46 = v119;
      v115 = v38 + 32;
      do
      {
        *&v47 = MEMORY[0x28223BE20](v44);
        *(&v100 - 2) = v47;
        v48 = v117;
        *(&v100 - 2) = v45;
        *(&v100 - 1) = v48;
        v49 = sub_24388A80C();
        sub_243873DE8(v49, v50);
        sub_24388A3D0();
        v52 = sub_243888CF0(qword_280D49750, v51, &protocol conformance descriptor for Ckcode_RecordTransport);
        static Message.with(_:)();
        v53 = sub_24388A80C();
        sub_243873E40(v53, v54);
        v119 = v46;
        v56 = v46[2];
        v55 = v46[3];
        if (v56 >= v55 >> 1)
        {
          sub_243899608(v55 > 1, v56 + 1, 1);
          v46 = v119;
        }

        ++v45;
        v46[2] = v56 + 1;
        sub_24388A634();
        sub_24388A4F0();
        v44 = sub_24388A1C4(v20, v57, v58);
      }

      while (v39 != v45);
      v59 = v111;
      v60 = v105;
      v61 = v109;
      sub_24387C358(v46, v111, v118, *(v112 + 96), v52, v105);
      v62 = sub_24388A640();
      v63(v62);

      v64 = v101(v61, v60, v59);
      if (*MEMORY[0x277CBC810] == 1)
      {
        v65 = sub_243882A7C(v64);
        v6 = v100;
        if (v65)
        {
          v65(v61);
          v66 = sub_243876224();
          sub_243871FB4(v66, v67);
        }
      }

      else
      {
        v6 = v100;
      }

      v40 = MEMORY[0x277D84F90];
    }

    v68 = *(v6 + 16);
    if (v68)
    {
      v69 = sub_24388A6CC(v40);
      sub_2438995B0(v69, v70, v71);
      v73 = v119;
      v74 = v6 + 32;
      v75 = v104;
      do
      {
        *&v76 = MEMORY[0x28223BE20](v72);
        *(&v100 - 1) = v76;
        v77 = sub_24388A80C();
        sub_243873DE8(v77, v78);
        sub_24388A508();
        v118 = sub_243888CF0(&qword_280D496C0, v79, &protocol conformance descriptor for Ckcode_ProtectedEnvelope);
        static Message.with(_:)();
        v80 = sub_24388A80C();
        sub_243873E40(v80, v81);
        v119 = v73;
        v83 = v73[2];
        v82 = v73[3];
        if (v83 >= v82 >> 1)
        {
          sub_2438995B0(v82 > 1, v83 + 1, 1);
          v73 = v119;
        }

        v73[2] = v83 + 1;
        sub_24388A634();
        v72 = sub_24388A1C4(v75, v73 + v84 + *(v85 + 72) * v83, type metadata accessor for Ckcode_ProtectedEnvelope);
        v74 += 16;
        --v68;
      }

      while (v68);
      v86 = v111;
      v87 = v103;
      v88 = v109;
      sub_24387C358(v73, v111, v114, *(v112 + 96), v118, v103);
      v89 = sub_24388A640();
      v90(v89);

      v101(v88, v87, v86);
    }

    sub_24388EE30();
    v91 = Message.serializedData(partial:)();
    sub_243873DE8(v91, v92);
    v93 = sub_24388A7F4();
    v107(v93);
    v94 = sub_24388A7F4();
    sub_243873E40(v94, v95);
    v96 = sub_24388A7F4();
    sub_243873E40(v96, v97);
    v98 = sub_24388A640();
    v99(v98);
    sub_24388A67C();
  }
}

uint64_t sub_243884680(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a3 | 0x2000000000000000;
  v10 = *a1;
  v11 = a1[1];
  sub_243873DE8(a2, a3);
  result = sub_243879A04(v10, v11);
  *a1 = a2;
  a1[1] = v9;
  if (*(a5 + 16) > a4)
  {
    if (a4 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_243889CD8(a5 + 32 * a4 + 32, v16);
      result = swift_dynamicCast();
      if (result)
      {
        v13 = a1 + *(type metadata accessor for Ckcode_RecordTransport(0) + 24);
        result = sub_2438729FC(*v13, *(v13 + 1));
        *v13 = v14;
        *(v13 + 1) = v15;
      }
    }
  }

  return result;
}

uint64_t sub_243884764(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  sub_24387605C(a1, &qword_27ED94960, &qword_24389CB10);
  *a1 = a2;
  a1[1] = a3;
  v6 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  swift_storeEnumTagMultiPayload();
  sub_243873554(a1, 0, 1, v6);
  return sub_243873DE8(a2, a3);
}

void sub_2438847F8(uint64_t a1)
{
  sub_24388A664();
  v96 = v3;
  v97 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v1;
  v9 = *MEMORY[0x277D85000];
  v92 = type metadata accessor for Ckcode_RecordTransport(0);
  sub_243876204();
  v99 = v10;
  MEMORY[0x28223BE20](v11);
  sub_24388A414();
  v100 = v12 - v13;
  sub_24388A6FC();
  MEMORY[0x28223BE20](v14);
  v91 = (v84 - v15);
  v16 = *((v9 & v8) + 0x58);
  v101 = type metadata accessor for Optional();
  sub_243876204();
  v90 = v17;
  sub_243876190();
  MEMORY[0x28223BE20](v18);
  sub_24388A738();
  v93 = v19;
  sub_24388A64C();
  v20 = type metadata accessor for BinaryDecodingOptions();
  v21 = sub_243876184(v20);
  MEMORY[0x28223BE20](v21);
  sub_24388A424();
  sub_24387C120();
  v95 = v22;
  MEMORY[0x28223BE20](v23);
  sub_24388A414();
  v94 = (v24 - v25);
  sub_24388A6FC();
  MEMORY[0x28223BE20](v26);
  v28 = v84 - v27;
  v105 = v7;
  v106 = v5;
  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  v29 = v9 & v8;
  v30 = v16;
  v98 = v1;
  v31 = *(v29 + 104);
  sub_24388A79C();
  sub_24388EE30();
  v32 = sub_24388A708();
  sub_243873DE8(v32, v33);
  v34 = sub_24388A79C();
  j___s21InternalSwiftProtobuf21BinaryDecodingOptionsVACycfC(v34);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v35 = v93;
  v36 = sub_24388A7E8();
  v84[1] = v37;
  v84[0] = v38;
  v38(v36);
  sub_243873554(v35, 0, 1, v16);
  sub_243880894(v35);
  sub_24388A3D0();
  v41 = sub_243888CF0(v39, v40, &protocol conformance descriptor for Ckcode_RecordTransport);
  v42 = v92;
  v88 = v30;
  v87 = v31;
  v86 = v41;
  v89 = v28;
  v43 = sub_24387BBC4(v92, v30, v92, v31, v41);
  v85 = 0;
  v44 = v43;
  v45 = 0;
  v46 = *(v43 + 16);
  v47 = MEMORY[0x277D84F90];
  v48 = v101;
  for (i = v42; ; v42 = i)
  {
    v50 = v100;
    if (v46 == v45)
    {
      break;
    }

    if (v45 >= *(v44 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_24388A634();
    v53 = (v44 + v51 + *(v52 + 72) * v45);
    v54 = v53[1];
    if ((~v54 & 0x3000000000000000) == 0 || (v54 & 0x2000000000000000) == 0)
    {

      sub_24388A714();
      v81 = related decl 'e' for CKErrorCode.init(_:description:)();
      v82 = _convertErrorToNSError(_:)();

      [v98 finishWithError_];
      v83 = v81;
      v97(0, v81);

      (*(v95 + 8))(v89, v88);
LABEL_17:
      sub_24388A67C();
      return;
    }

    v55 = *v53;
    sub_2438799C8(*v53, v53[1]);
    sub_243873DE8(v55, v54 & 0xDFFFFFFFFFFFFFFFLL);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_24388A5C4();
      v47 = sub_243888BE8(v59, v60, v61, v47);
    }

    v57 = *(v47 + 2);
    v56 = *(v47 + 3);
    if (v57 >= v56 >> 1)
    {
      v47 = sub_243888BE8((v56 > 1), v57 + 1, 1, v47);
    }

    sub_243879A04(v55, v54);
    *(v47 + 2) = v57 + 1;
    v58 = &v47[16 * v57];
    *(v58 + 4) = v55;
    *(v58 + 5) = v54 & 0xDFFFFFFFFFFFFFFFLL;
    ++v45;
    v48 = v101;
  }

  v62 = v91;
  *v91 = xmmword_24389D0D0;
  UnknownStorage.init()();
  *(v62 + *(v42 + 24)) = xmmword_24389CB00;
  sub_24388A538();
  sub_24388A0D4(v62, v50, v63);
  v64 = *(v47 + 2);

  v65 = sub_24388EE3C(v50, v64);
  v66 = v88;
  v67 = v42;
  v68 = v89;
  v69 = v85;
  sub_24387C358(v65, v88, v67, v87, v86, v94);
  if (!v69)
  {

    v71 = v97;
    v72 = v95;
    if (*(v47 + 2))
    {
      v73 = sub_24388297C(v70);
      if (v73)
      {
        v74 = v73;
        v75 = v93;
        (v84[0])(v93, v94, v66);
        sub_243873554(v75, 0, 1, v66);
        v74(v75);
        v76 = sub_243876224();
        sub_243871FB4(v76, v77);
        v78 = v75;
        v68 = v89;
        (*(v90 + 8))(v78, v48);
      }
    }

    v71(v47, 0);

    v79 = *(v72 + 8);
    v79(v94, v66);
    sub_24388A520();
    sub_24388A130(v62, v80);
    v79(v68, v66);
    goto LABEL_17;
  }

  sub_24388A4A4();
LABEL_20:
  swift_unexpectedError();
  __break(1u);
}

void sub_243884F10(uint64_t a1)
{
  sub_24388A664();
  v3 = v2;
  sub_24388A768();
  v64 = v4;
  v75 = v1;
  v7 = *((v6 & v5) + 0x58);
  sub_24387C120();
  v9 = v8;
  sub_243876190();
  MEMORY[0x28223BE20](v10);
  sub_24388A738();
  v70 = v11;
  sub_24388A64C();
  v12 = type metadata accessor for Optional();
  sub_243876204();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_24388A414();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v69 = &v61 - v20;
  sub_24388A6FC();
  MEMORY[0x28223BE20](v21);
  v23 = &v61 - v22;
  v63 = type metadata accessor for Ckcode_RecordTransport(0);
  sub_243876204();
  MEMORY[0x28223BE20](v24);
  sub_24388A414();
  v27 = v25 - v26;
  v29.n128_f64[0] = MEMORY[0x28223BE20](v28);
  v31 = (&v61 - v30);
  if (v3 >> 62)
  {
LABEL_21:
    if (v3 < 0)
    {
      v60 = v3;
    }

    else
    {
      v60 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v32 = MEMORY[0x245D42700](v60, v29);
    if (!v32)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v32 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v32)
    {
      goto LABEL_18;
    }
  }

  v61 = v9;
  v62 = v18;
  v67 = v7;
  v68 = v23;
  v65 = v14;
  v66 = v12;
  v9 = 0;
  v14 = 0;
  v74 = v3 & 0xC000000000000001;
  v71 = v3 & 0xFFFFFFFFFFFFFF8;
  v23 = MEMORY[0x277D84F90];
  v72 = v32;
  v73 = v3;
  do
  {
    if (v74)
    {
      v33 = MEMORY[0x245D426C0](v9, v3, v29);
    }

    else
    {
      if (v9 >= *(v71 + 16))
      {
        goto LABEL_20;
      }

      v33 = *(v3 + 8 * v9 + 32);
    }

    v7 = v33;
    v18 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    sub_24388545C(v33);
    v12 = v7;
    Ckcode_RecordTransport.init(_:)(v12, v31);
    sub_24388A538();
    sub_24388A0D4(v31, v27, v34);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_24388A5C4();
      v23 = sub_243888DF0(v40, v41, v42, v23);
    }

    v36 = *(v23 + 2);
    v35 = *(v23 + 3);
    v7 = (v36 + 1);
    if (v36 >= v35 >> 1)
    {
      v43 = sub_24388A5B0(v35);
      v23 = sub_243888DF0(v43, v44, v45, v23);
    }

    sub_24388A520();
    sub_24388A130(v31, v37);
    *(v23 + 2) = v7;
    sub_24388A634();
    sub_24388A4F0();
    sub_24388A1C4(v27, v38, v39);
    ++v9;
    v3 = v73;
  }

  while (v18 != v72);
  v46 = v69;
  sub_2438807EC(v69);
  v47 = v67;
  if (sub_243873AA4(v46, 1, v67))
  {

    v49 = v65;
    v48 = v66;
    v50 = *(v65 + 8);
    v50(v46, v66);
    v51 = 1;
  }

  else
  {
    (*(v61 + 16))(v70, v46, v47);
    v49 = v65;
    v48 = v66;
    v50 = *(v65 + 8);
    v50(v46, v66);
    v54 = *(v64 + 104);
    sub_24388A3D0();
    v57 = sub_243888CF0(v55, v56, &protocol conformance descriptor for Ckcode_RecordTransport);
    sub_24387C358(v23, v47, v63, v54, v57, v68);
    v58 = sub_24388A7DC();
    v59(v58);

    v51 = 0;
  }

  v52 = v68;
  sub_243873554(v68, v51, 1, v47);
  v53 = v62;
  (*(v49 + 16))(v62, v52, v48);
  sub_243880894(v53);
  v50(v52, v48);
LABEL_18:
  sub_24388A67C();
}

void sub_24388545C(void *a1)
{
  v2 = [a1 recordID];
  v3 = sub_243881B7C(v2);
  v56 = v1;
  v4 = sub_2438819B4(v2, v3);

  if (!v4)
  {
    return;
  }

  v5 = 0;
  v6 = v4 + 64;
  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 64);
  v10 = (v7 + 63) >> 6;
  v55 = v4;
  v53 = v10;
  v54 = v4 + 64;
  if (!v9)
  {
LABEL_7:
    while (1)
    {
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v11 >= v10)
      {

        return;
      }

      v9 = *(v6 + 8 * v11);
      ++v5;
      if (v9)
      {
        goto LABEL_10;
      }
    }

LABEL_50:
    __break(1u);
  }

LABEL_6:
  v11 = v5;
LABEL_10:
  v12 = __clz(__rbit64(v9));
  v9 &= v9 - 1;
  v13 = v12 | (v11 << 6);
  v14 = (*(v4 + 48) + 16 * v13);
  v15 = *v14;
  v16 = v14[1];
  v17 = *(*(v4 + 56) + 8 * v13);

  v52 = v15;
  v18 = MEMORY[0x245D42640](v15, v16);
  v19 = v18;
  v20 = 0;
  v21 = v17 + 64;
  v22 = 1 << *(v17 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & *(v17 + 64);
  v25 = (v22 + 63) >> 6;
  v58 = v17;
  v59 = v18;
  v57 = v25;
  if (!v24)
  {
LABEL_15:
    while (1)
    {
      v26 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v26 >= v25)
      {

        swift_unknownObjectRelease();

        v5 = v11;
        v4 = v55;
        v10 = v53;
        v6 = v54;
        if (!v9)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      v24 = *(v21 + 8 * v26);
      ++v20;
      if (v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  while (1)
  {
    v26 = v20;
LABEL_18:
    v27 = (v26 << 9) | (8 * __clz(__rbit64(v24)));
    v60 = *(*(v17 + 56) + v27);
    if (!v19)
    {
LABEL_46:
      v51 = v60;
      _StringGuts.grow(_:)(46);

      MEMORY[0x245D42450](v52, v16);

      related decl 'e' for CKErrorCode.init(_:description:)();
      swift_willThrow();
      swift_unknownObjectRelease();

      goto LABEL_47;
    }

    v28 = *(*(v17 + 48) + v27);
    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    if (v29)
    {
      v30 = v29;
      v31 = v60;
      if (v28 < 0)
      {
      }

      else
      {
        swift_unknownObjectRetain();
        if (v28 < [v30 count])
        {
          v32 = [v30 objectAtIndexedSubscript_];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_24388A094(0, &qword_280D49520, 0x277CBC190);
          swift_dynamicCast();
          v33 = v61;
          goto LABEL_25;
        }

        swift_unknownObjectRelease();
      }

      related decl 'e' for CKErrorCode.init(_:description:)();
      swift_willThrow();

      swift_unknownObjectRelease();
      goto LABEL_45;
    }

    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    if (!v34)
    {
      goto LABEL_46;
    }

    v33 = v34;
    swift_unknownObjectRetain_n();
    v35 = v60;
LABEL_25:
    if (*MEMORY[0x277CBC810] == 1)
    {
      v36 = MEMORY[0x245D42400](0xD000000000000018, 0x80000002438A1B50);
      v37 = [v56 _BOOLForUnitTestOverride_defaultValue_];

      if (v37)
      {
        break;
      }
    }

    sub_24388A4E4();
    v40 = [v38 v39];
    v41 = 0;
    if (!v40)
    {
      v50 = v41;

      _convertNSErrorToError(_:)();

      goto LABEL_44;
    }

    v24 &= v24 - 1;
    v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    switch(v44 >> 62)
    {
      case 1uLL:
        v45 = v42;
        v46 = v42 >> 32;
        goto LABEL_32;
      case 2uLL:
        v45 = *(v42 + 16);
        v46 = *(v42 + 24);
        goto LABEL_32;
      case 3uLL:
        goto LABEL_51;
      default:
        v45 = 0;
        v46 = BYTE6(v44);
LABEL_32:
        if (v45 == v46)
        {
LABEL_51:
          __break(1u);
          return;
        }

        sub_24388A7E8();
        isa = Data._bridgeToObjectiveC()().super.isa;
        [v33 setAssetContent_];

        v48 = sub_24388A7E8();
        sub_243873E40(v48, v49);

        v20 = v26;
        v17 = v58;
        v19 = v59;
        v25 = v57;
        if (!v24)
        {
          goto LABEL_15;
        }

        break;
    }
  }

  [v33 setAssetContent_];
  type metadata accessor for CKError(0);
  sub_2438975D8(MEMORY[0x277D84F90]);
  sub_243888CF0(&qword_27ED94718, type metadata accessor for CKError, &unk_24389C940);
  _BridgedStoredNSError.init(_:userInfo:)();
LABEL_44:
  swift_willThrow();
  swift_unknownObjectRelease();

LABEL_45:

LABEL_47:
}

void sub_243885B3C(uint64_t a1)
{
  sub_24388A664();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_24388A768();
  v9 = type metadata accessor for Logger();
  sub_243876204();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_24388A424();
  v16 = v15 - v14;
  if (v8)
  {
    v17 = sub_243882120(v13);
    if (!v17)
    {
      v30 = v8;
      v31 = v4;
      goto LABEL_14;
    }

    v19 = v17;
    v20 = v18;
    v21 = v8;
    v22 = v21;
    if (v6)
    {
      v8 = v19;
      v19 = v20;
      v23 = v6;
      v22 = v2;
      sub_24388545C(v23);

      sub_24388A720();
      if (!v4)
      {
        v43 = v23;
        v20(v2, v6, 0);
        goto LABEL_13;
      }
    }

    else if (!v4)
    {
      v32 = v21;
      _StringGuts.grow(_:)(67);
      v51[0] = 0;
      v51[1] = 0xE000000000000000;
      MEMORY[0x245D42450](0xD00000000000003DLL, 0x80000002438A1AE0);
      v33 = sub_24388A788();
      type metadata accessor for CKCodeOperation(v33, v34);
      swift_getWitnessTable();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      MEMORY[0x245D42450](8250, 0xE200000000000000);
      v35 = [v32 description];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      MEMORY[0x245D42450](v36, v38);

      v4 = related decl 'e' for CKErrorCode.init(_:description:)();
      v39 = v4;
      v19(v32, v4, 1);

      v40 = sub_24388A5FC();
      v31 = sub_243871FB4(v40, v41);
      goto LABEL_14;
    }

    v42 = v4;
    v43 = _convertErrorToNSError(_:)();
    v44 = [v43 CKClientSuitableError];
    v19(v22, v44, 1);

LABEL_13:
    v45 = sub_24388A5FC();
    sub_243871FB4(v45, v46);

LABEL_14:
    v47 = sub_243882750(v31);
    if (v47 & 1) != 0 && (sub_24388264C(v47))
    {
      sub_24388A61C(v2 + *((*MEMORY[0x277D85000] & *v2) + 0xC0), v51);
      v48 = v8;
      v49 = sub_24388A788();
      type metadata accessor for CKCodeOperation.AssetInfo(v49, v50);
      sub_243881A04(0, v48);
      swift_endAccess();
    }

    if (v4)
    {
      sub_243880D38(v4);
    }

    goto LABEL_20;
  }

  CKLog.getter();
  v24 = v2;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v2;
    v29 = v24;
    _os_log_impl(&dword_243870000, v25, v26, "Ignoring handleFetch with nil recordID %@", v27, 0xCu);
    sub_24387605C(v28, qword_27ED949D0, ":\x1B");
    sub_24388A750();
    sub_24388A750();
  }

  (*(v11 + 8))(v16, v9);
LABEL_20:
  sub_24388A67C();
}

void (*sub_243885F7C(uint64_t a1, double a2))(uint64_t, double)
{
  result = sub_243882320(a1);
  if (result)
  {
    result(a1, a2);
    v5 = sub_243876224();

    return sub_243871FB4(v5, v6);
  }

  return result;
}

void sub_243885FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_24388A768();
  sub_24388A768();
  sub_24388A61C(v7 + *(v11 + 192), v20);
  v12 = sub_24388A4D4();
  type metadata accessor for CKCodeOperation.AssetInfo(v12, v13);
  v14 = sub_24388A5FC();
  sub_243881384(v14, v15, a3, a4, v16);
  v18 = v17;
  swift_endAccess();
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v18 writeData:isa atOffset:a7];
}

void sub_243886108(uint64_t a1)
{
  sub_24388A664();
  v2 = v1;
  v59 = v3;
  sub_24388A768();
  v5 = *(v4 + 88);
  sub_243888DA8(&qword_27ED949C8, ":\x1B");
  type metadata accessor for Result();
  sub_243876204();
  v56 = v7;
  v57 = v6;
  sub_243876190();
  MEMORY[0x28223BE20](v8);
  sub_24388A738();
  v55 = v9;
  sub_24388A64C();
  type metadata accessor for Optional();
  sub_243876204();
  sub_243876190();
  MEMORY[0x28223BE20](v10);
  sub_24388A738();
  v54 = v11;
  sub_24387C120();
  v53 = v12;
  sub_243876190();
  MEMORY[0x28223BE20](v13);
  sub_24388A738();
  v52 = v14;
  sub_24388A64C();
  v15 = type metadata accessor for Logger();
  sub_243876204();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_24388A414();
  v58 = v19 - v20;
  sub_24388A6FC();
  MEMORY[0x28223BE20](v21);
  CKLog.getter();
  v22 = v1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v1;
    v27 = v22;
    _os_log_impl(&dword_243870000, v23, v24, "In CKCodeOperation._finishOnCallbackQueueWithError() for %@", v25, 0xCu);
    sub_24387605C(v26, qword_27ED949D0, ":\x1B");
    sub_24388A750();
    sub_24388A750();
  }

  v28 = *(v17 + 8);
  v29 = sub_24388A7E8();
  v30 = v28(v29);
  v31 = sub_243882548(v30);
  if (v31)
  {
    v33 = v31;
    v34 = v32;
    v35 = v59;
    v36 = v59;
    if (v59 || (v36 = sub_243880CE8()) != 0)
    {
      v37 = v59;
      v38 = v36;
      v39 = _convertErrorToNSError(_:)();

      *v55 = [v39 CKClientSuitableError];
      swift_storeEnumTagMultiPayload();
      v33(v55);
      sub_243871FB4(v33, v34);

      (*(v56 + 8))(v55, v57);
    }

    else
    {
      sub_2438807EC(v54);
      if (sub_243873AA4(v54, 1, v5) == 1)
      {
        v46 = sub_24388A7F4();
        v47(v46);
        *v55 = related decl 'e' for CKErrorCode.init(_:description:)();
        swift_storeEnumTagMultiPayload();
        v33(v55);
        sub_243871FB4(v33, v34);
        v48 = sub_24388A7C8();
        v49(v48);
        v35 = 0;
      }

      else
      {
        (*(v53 + 32))(v52, v54, v5);
        (*(v53 + 16))(v55, v52, v5);
        swift_storeEnumTagMultiPayload();
        v33(v55);
        sub_243871FB4(v33, v34);
        v50 = sub_24388A7C8();
        v51(v50);
        (*(v53 + 8))(v52, v5);
      }
    }
  }

  else
  {
    CKLog.getter();
    v40 = v22;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v40;
      *v44 = v2;
      v45 = v40;
      _os_log_impl(&dword_243870000, v41, v42, "In CKCodeOperation._finishOnCallbackQueueWithError(), no result block set for %@", v43, 0xCu);
      sub_24387605C(v44, qword_27ED949D0, ":\x1B");
      sub_24388A750();
      sub_24388A750();
    }

    (v28)(v58, v15);
    v35 = v59;
  }

  sub_243886718(v22, v35);
  sub_24388A67C();
}

void sub_243886718(void *a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85000] & *a1;
  if (a2)
  {
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 96);
  v7[0] = *(v3 + 80);
  v7[1] = v5;
  v6 = type metadata accessor for CKCodeOperation(0, v7);
  v8.receiver = a1;
  v8.super_class = v6;
  objc_msgSendSuper2(&v8, sel__finishOnCallbackQueueWithError_, v4);
}

void sub_2438867C8(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  sub_243886108(a3);
}

uint64_t sub_243886820@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243881338();
  v3 = result;
  if (result)
  {
    v4 = sub_24388A4D4();
    result = type metadata accessor for CKCodeOperation.CallbackRelay(v4, v5);
  }

  else
  {
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  return result;
}

id sub_2438868B0()
{
  sub_243886820(v8);
  v0 = v9;
  if (v9)
  {
    v1 = sub_24388A220(v8, v9);
    v2 = *(v0 - 8);
    v3 = MEMORY[0x28223BE20](v1);
    v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v2 + 16))(v5, v3);
    v6 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v2 + 8))(v5, v0);
    sub_24387E12C(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_2438869F4(void *a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4 = *(v3 + 96);
  v8[0] = *(v3 + 80);
  v8[1] = v4;
  v5 = type metadata accessor for CKCodeOperation.CallbackRelay(0, v8);
  v9.receiver = v1;
  v9.super_class = v5;
  v6 = objc_msgSendSuper2(&v9, sel_init);

  return v6;
}

uint64_t sub_243886AB0()
{
  v1[18] = v0;
  v2 = sub_243873884(&qword_27ED94E70, &qword_24389DF00);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243886B7C, 0, 0);
}

uint64_t sub_243886B7C()
{
  v1 = sub_2438869E4();
  v0[22] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[20];
    v4 = v0[19];
    v0[2] = v0;
    v0[3] = sub_243886CF4;
    swift_continuation_init();
    v0[17] = v4;
    v5 = sub_24387FE78(v0 + 14);
    sub_243873884(&qword_27ED949C8, ":\x1B");
    sub_24388A6A4(MEMORY[0x277D84F78]);
    v6 = sub_24388A6E4();
    v7(v6);
    sub_24388A564();
    v0[11] = 1107296256;
    sub_24388A550();
    [v2 handleWillStart_];
    (*(v3 + 8))(v5, v4);
    v1 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v1);
}

uint64_t sub_243886CF4()
{
  sub_24388A7BC();
  sub_24388A7B0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = sub_24388A39C;
  }

  else
  {
    v5 = sub_24388A3A0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_243886E1C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24388A384;

  return sub_243886AB0();
}

uint64_t sub_243886EC4()
{
  v1[18] = v0;
  v2 = sub_243873884(&qword_27ED94E70, &qword_24389DF00);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243886F90, 0, 0);
}

uint64_t sub_243886F90()
{
  v1 = sub_2438869E4();
  v0[22] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[20];
    v4 = v0[19];
    v0[2] = v0;
    v0[3] = sub_243887108;
    swift_continuation_init();
    v0[17] = v4;
    v5 = sub_24387FE78(v0 + 14);
    sub_243873884(&qword_27ED949C8, ":\x1B");
    sub_24388A6A4(MEMORY[0x277D84F78]);
    v6 = sub_24388A6E4();
    v7(v6);
    sub_24388A564();
    v0[11] = 1107296256;
    sub_24388A550();
    [v2 handleDidStart_];
    (*(v3 + 8))(v5, v4);
    v1 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v1);
}

uint64_t sub_243887108()
{
  sub_24388A7BC();
  sub_24388A7B0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = sub_243887278;
  }

  else
  {
    v5 = sub_243887210;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_243887210()
{
  sub_24388A7BC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_243887278()
{
  v1 = *(v0 + 176);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_243887314(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  sub_24388A694();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v6 = a1;
  sub_243876224();

  return sub_24388F02C();
}

uint64_t sub_243887378(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_243887420;

  return sub_243886EC4();
}

uint64_t sub_243887420(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;
  sub_24388A7B0();
  *v6 = v5;
  v7 = *(v4 + 16);
  v8 = *v2;
  *v6 = *v2;

  v9 = *(v4 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(v9, 0);
  }

  _Block_release(*(v5 + 24));
  v11 = *(v8 + 8);

  return v11();
}

void sub_2438875AC(void *a1)
{
  v1 = a1;
  sub_2438875A0();
}

void sub_243887600(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2438875F4(v4);
}

void sub_243887674(uint64_t a1, SEL *a2)
{
  v4 = sub_2438869E4();
  if (v4)
  {
    v5 = v4;
    [v4 *a2];
  }

  else
  {
    __break(1u);
  }
}

void sub_2438876D8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_243887668(v4);
}

void sub_243887740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2438869E4();
  if (v6)
  {
    v7 = v6;
    v9[4] = a2;
    v9[5] = a3;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_24388F12C;
    v9[3] = &unk_28569B438;
    v8 = _Block_copy(v9);

    [v7 openFileWithOpenInfo:a1 reply:v8];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_243887850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2438869E4();
  if (v6)
  {
    v7 = v6;
    v9[4] = a2;
    v9[5] = a3;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_24388F204;
    v9[3] = &unk_28569B488;
    v8 = _Block_copy(v9);

    [v7 handleFinishWithAssetDownloadStagingInfo:a1 reply:v8];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243887960(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

void sub_243887A08(uint64_t a1, uint64_t a2)
{
  v4 = sub_2438869E4();
  if (v4)
  {
    v5 = v4;
    if (a2)
    {
      v6 = _convertErrorToNSError(_:)();
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    [v5 handleOperationDidCompleteWithMetrics:a1 error:?];
  }

  else
  {
    __break(1u);
  }
}

void sub_243887A94(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a1;
  v9 = a4;
  sub_243887A08(a3, a4);
}

void sub_243887B10(char a1, char a2, uint64_t a3)
{
  v6 = sub_2438869E4();
  if (v6)
  {
    v7 = v6;
    if (a3)
    {
      v8 = _convertErrorToNSError(_:)();
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    [v7 handleDiscretionaryOperationShouldStart:a1 & 1 nonDiscretionary:a2 & 1 error:?];
  }

  else
  {
    __break(1u);
  }
}

void sub_243887BAC(void *a1, uint64_t a2, char a3, char a4, void *a5)
{
  v8 = a1;
  v9 = a5;
  sub_243887B10(a3, a4, a5);
}

void sub_243887C2C(SEL *a1)
{
  v2 = sub_2438869E4();
  if (v2)
  {
    v3 = v2;
    [v2 *a1];
  }

  else
  {
    __break(1u);
  }
}

void sub_243887C80(void *a1)
{
  v1 = a1;
  sub_243887C20();
}

void sub_243887CC8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2438869E4();
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0x245D42400](a1, a2);
    v14[4] = a4;
    v14[5] = a5;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_2438999A8;
    v14[3] = &unk_28569B4D8;
    v13 = _Block_copy(v14);

    [v11 handleDaemonOperationWillStartWithClassName:v12 isTopLevelDaemonOperation:a3 & 1 replyBlock:v13];
    _Block_release(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243887DCC(void *a1, int a2, uint64_t a3, char a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = a1;
  sub_243887CC8(v8, v10, a4, sub_243889D4C, v11);
}

void sub_243887EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v14 = sub_2438869E4();
  if (v14)
  {
    v15 = v14;
    v16 = MEMORY[0x245D42400](a1, a2);
    v18[4] = a4;
    v18[5] = a5;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_2438999A8;
    v18[3] = a6;
    v17 = _Block_copy(v18);

    [v15 *a7];
    _Block_release(v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243888028(void *a1, int a2, uint64_t a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, id, uint64_t, uint64_t))
{
  v12 = _Block_copy(aBlock);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = a4;
  v18 = a1;
  a8(v13, v15, v17, a7, v16);
}

void sub_2438880FC(uint64_t a1)
{
  v2 = sub_2438869E4();
  if (v2)
  {
    v3 = v2;
    sub_243883F10(a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243888188(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v7;
  v9 = a1;
  sub_2438880FC(v8);
}

void sub_243888294(uint64_t a1)
{
  v2 = sub_2438869E4();
  if (v2)
  {
    v3 = v2;
    sub_2438847F8(a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_243888318(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = a3;
  v11 = a1;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(swift_allocObject() + 16) = v6;
  sub_243888294(v8);

  sub_243873E40(v8, v10);
}

void sub_2438883F0(uint64_t a1)
{
  v2 = sub_2438869E4();
  if (v2)
  {
    v3 = v2;
    sub_243884F10(a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24388844C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_24388A094(0, &unk_280D49510, 0x277CBC5A0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = a1;
  sub_2438883F0(v4);
}

void sub_2438884C0(uint64_t a1)
{
  v2 = sub_2438869E4();
  if (v2)
  {
    v3 = v2;
    sub_243885B3C(a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_243888534(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a1;
  v12 = a5;
  sub_2438884C0(a3);
}

void sub_2438885CC(uint64_t a1, double a2)
{
  v4 = sub_2438869E4();
  if (v4)
  {
    v5 = v4;
    sub_243885F7C(a1, a2);
  }

  else
  {
    __break(1u);
  }
}

void sub_243888638(void *a1, double a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a1;
  sub_2438885CC(v6, a2);
}

void sub_2438886B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_2438869E4();
  if (v14)
  {
    v15 = v14;
    sub_243885FF8(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243888754(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = a3;
  v16 = a6;
  v17 = a1;
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  sub_2438886B0(v15, v12, v14, a5, v18, v20, a7);
  sub_243873E40(v18, v20);
}

id CKCodeOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_243888934()
{
  v1 = sub_24388A4D4();
  v4.receiver = v0;
  v4.super_class = v2(v1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2438889AC(char *a1)
{
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x70);
  type metadata accessor for Optional();
  sub_243876174();
  (*(v3 + 8))(&a1[v2]);
  sub_24388A3BC();
  v5 = *(v4 + 120);
  type metadata accessor for Optional();
  sub_243876174();
  (*(v6 + 8))(&a1[v5]);
  sub_24388A3BC();

  sub_24388A3BC();

  sub_24388A3BC();

  sub_24388A3BC();

  sub_24388A3BC();

  sub_24388A3BC();
  v10 = sub_24388A658(*(v9 + 168));
  sub_243880F5C(v10, v12, *(v11 + 16), *(v11 + 24), *(v11 + 32));
  sub_24388A3BC();

  sub_24388A3BC();

  sub_24388A3BC();
  v15 = sub_24388A658(*(v14 + 200));
  sub_243871FB4(v15, v16);
  sub_24388A3BC();
  v18 = sub_24388A658(*(v17 + 208));
  sub_243871FB4(v18, v19);
  sub_24388A3BC();
  v21 = sub_24388A658(*(v20 + 216));
  sub_243871FB4(v21, v22);
  sub_24388A3BC();
  v24 = sub_24388A658(*(v23 + 240));
  sub_243871FB4(v24, v25);
  sub_24388A3BC();
  v27 = sub_24388A658(*(v26 + 248));

  return sub_243871FB4(v27, v28);
}

char *sub_243888BE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_243873884(&qword_27ED94B18, &qword_24389DF48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_243888CF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243888D38(uint64_t a1, uint64_t a2)
{
  v4 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243888DA8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_243888DF0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_243888EEC(v8, v7);
  type metadata accessor for Ckcode_RecordTransport(0);
  sub_24388A634();
  if (v5)
  {
    sub_243889018(a4 + v10, v8, v9 + v10, type metadata accessor for Ckcode_RecordTransport);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_243888EEC(uint64_t a1, uint64_t a2)
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

  sub_243873884(&unk_27ED94AE0, &unk_24389E3D0);
  v4 = *(type metadata accessor for Ckcode_RecordTransport(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_243889018(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), sub_243876174(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = sub_24388A774();

    MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = sub_24388A774();

    MEMORY[0x2821FE820](v9);
  }
}

uint64_t sub_2438890D8(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_243889AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_243889B28(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 sub_243889B44(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_243889B58(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243889B98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_243889BE0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_243889C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_243889CB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243889CD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_243889D64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_243889E0C;
  v2 = sub_243876224();

  return v3(v2);
}