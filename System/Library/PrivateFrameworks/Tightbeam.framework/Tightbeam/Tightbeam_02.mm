uint64_t sub_26F067428(void (*a1)(uint64_t, unsigned __int16 *))
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v3 = *(v1 + 56);
  if (v3)
  {
    a1(v3, &v5);
    return v5;
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

uint64_t sub_26F067548(void (*a1)(uint64_t, unsigned int *))
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v3 = *(v1 + 56);
  if (v3)
  {
    a1(v3, &v5);
    return v5;
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

uint64_t sub_26F067668(void (*a1)(uint64_t, void *))
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v3 = *(v1 + 56);
  if (v3)
  {
    a1(v3, v5);
    return v5[0];
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

unint64_t TightbeamDecoder.decode(as:)@<X0>(void *a1@<X8>)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v3 = *(v1 + 56);
  if (v3)
  {
    result = tb_message_decode_capability(v3, v5);
    *a1 = v5[0];
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

void TightbeamDecoder.decode(as:)()
{
  TightbeamMessage.deinit();
  sub_26F073F50();
  __break(1u);
}

__n128 _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF@<Q0>(_DWORD *a1@<X2>, _OWORD *a2@<X8>, size_t a3@<X0>, uint64_t a4@<X1>)
{
  v8 = sub_26F06DA04(a3, a4);
  if (v5)
  {
    v9 = v8;
    TightbeamMessage.deinit();
    *a1 = v9;
  }

  else
  {
    v11 = *(v4 + 48);
    a2[2] = *(v4 + 32);
    a2[3] = v11;
    a2[4] = *(v4 + 64);
    *(a2 + 73) = *(v4 + 73);
    result = *v4;
    v12 = *(v4 + 16);
    *a2 = *v4;
    a2[1] = v12;
  }

  return result;
}

uint64_t TightbeamCapabilityDecoder.init(table:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

Swift::UInt __swiftcall TightbeamCapabilityDecoder.capability(for:)(Swift::Int a1)
{
  v2 = *v1;
  if ((a1 & 0x8000000000000000) == 0 && v2 && v1[1] - *v1 > a1)
  {
    return v2 + a1;
  }

  sub_26F073F00();
  MEMORY[0x274386C80](0xD000000000000019, 0x800000026F0791F0);
  sub_26F057088();
  v5 = sub_26F073EC0();
  MEMORY[0x274386C80](v5);

  MEMORY[0x274386C80](0xD000000000000016, 0x800000026F079210);
  v6 = sub_26F073EC0();
  MEMORY[0x274386C80](v6);

  MEMORY[0x274386C80](41, 0xE100000000000000);
  result = sub_26F073F50();
  __break(1u);
  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for TightbeamMessage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    sub_26F063DBC(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 33) = *(a2 + 33);
  }

  *(a1 + 56) = *(a2 + 56);
  v4 = *(a1 + 88);
  if (v4 == 255)
  {
    goto LABEL_7;
  }

  v5 = *(a2 + 88);
  if (v5 == 255)
  {
    TransportBuffer.deinit();
LABEL_7:
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 73) = *(a2 + 73);
    return a1;
  }

  v6 = *(a2 + 80);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  *(a1 + 88) = v5;
  sub_26F063E10(v7, v8, v9, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for TightbeamMessage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[89])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TightbeamMessage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F067D58(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D14E0, &unk_26F075ED0);
  result = MEMORY[0x28223BE20](v8);
  v11 = &v15[-v10];
  v17 = a1;
  v18 = a2;
  if (!a3)
  {
    return result;
  }

  MEMORY[0x28223BE20](result);
  *&v15[-32] = &v17;
  *&v15[-24] = a3;
  *&v15[-16] = a4;
  *&v15[-8] = a3;
  result = sub_26F068A58(sub_26F0698C8, &v15[-48], a1, a2);
  if ((result & 1) == 0)
  {
    return result;
  }

  v12 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (!v12)
  {
    goto LABEL_8;
  }

  sub_26F058864(v17, v18);
LABEL_8:
  sub_26F073940();
  sub_26F073930();
  sub_26F0699B4(&qword_2806D13D0, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
  result = sub_26F073EA0();
  v13 = 0;
  if (v16)
  {
LABEL_12:
    *&v11[*(v8 + 36)] = v13;
    return sub_26F0698E8(v11);
  }

  else
  {
    v14 = 0;
    while (1)
    {
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      *(a3 + v14) = v15[6];
      result = sub_26F073EA0();
      ++v14;
      if (v16 == 1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26F067F50(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 >= 2u)
  {
    goto LABEL_8;
  }

  v9 = a4[2];
  if (__OFADD__(v9, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a4[3] >= v9 + a3)
  {
    result = sub_26F067D58(a1, a2, *a4 + v9, *a4 + v9 + a3);
    v11 = a4[2];
    v12 = __OFADD__(v11, a3);
    v13 = v11 + a3;
    if (!v12)
    {
      a4[2] = v13;
      return result;
    }

    goto LABEL_7;
  }

LABEL_8:
  result = sub_26F073F50();
  __break(1u);
  return result;
}

void *sub_26F068058(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 >= 2u)
  {
    goto LABEL_8;
  }

  v8 = a3[2];
  if (__OFADD__(v8, a2))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a3[3] >= v8 + a2)
  {
    result = memmove((*a3 + v8), (a1 + 32), *(a1 + 16));
    v10 = a3[2];
    v11 = __OFADD__(v10, a2);
    v12 = v10 + a2;
    if (!v11)
    {
      a3[2] = v12;
      return result;
    }

    goto LABEL_7;
  }

LABEL_8:
  result = sub_26F073F50();
  __break(1u);
  return result;
}

uint64_t sub_26F068168()
{
  v1 = OBJC_IVAR____TtC9Tightbeam16UnixEndpointData_targetUrl;
  v2 = sub_26F0738E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t _tb_unix_client_transport_create_with_endpoint(uint64_t a1)
{
  v2 = sub_26F0738E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  tb_endpoint_get_data(a1);
  v6 = OBJC_IVAR____TtC9Tightbeam16UnixEndpointData_targetUrl;
  v7 = *(v3 + 16);

  v7(v5, v8 + v6, v2);

  type metadata accessor for UnixTransportClient(0);
  v9 = swift_allocObject();
  *(v9 + OBJC_IVAR____TtC9Tightbeam19UnixTransportClient_connection) = 0;
  *(v9 + OBJC_IVAR____TtC9Tightbeam19UnixTransportClient_pendingMessage) = 0;
  (*(v3 + 32))(v9 + OBJC_IVAR____TtC9Tightbeam19UnixTransportClient_targetURL, v5, v2);
  return v9;
}

uint64_t __tb_unix_client_transport_destruct(uint64_t a1)
{
  tb_transport_get_context(a1);
}

uint64_t _tb_unix_client_transport_activate(uint64_t a1)
{
  context = tb_transport_get_context(a1);

  v2 = sub_26F0738D0();
  v4 = v3;
  type metadata accessor for UnixProtocolConnection();
  v5 = swift_allocObject();

  *(context + OBJC_IVAR____TtC9Tightbeam19UnixTransportClient_connection) = sub_26F068BF0(v2, v4, context, 0, v5);

  return 0;
}

uint64_t sub_26F068440()
{
  v0 = sub_26F05E48C();

  return MEMORY[0x2821FE8D8](v0, 121, 7);
}

uint64_t sub_26F068470(uint64_t a1)
{
  v3 = sub_26F073A40();
  v4 = MEMORY[0x28223BE20](v3);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC9Tightbeam19UnixTransportClient_connection);
  if (!v8)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v9 = 1;
  if (*(v1 + OBJC_IVAR____TtC9Tightbeam19UnixTransportClient_pendingMessage))
  {
LABEL_10:
    sub_26F069950();
    swift_allocError();
    *v26 = v9;
    swift_willThrow();
    return v1;
  }

  v29 = v5;
  v30 = OBJC_IVAR____TtC9Tightbeam19UnixTransportClient_pendingMessage;
  v41 = v4;
  v31 = v1;
  type metadata accessor for PendingMessage();
  v10 = swift_allocObject();
  *(v10 + 116) = 0;
  *(v10 + 120) = 1;

  *(v10 + 16) = dispatch_semaphore_create(0);
  TightbeamMessage.init(wrapping:)(a1, &v36);
  swift_beginAccess();
  v11 = v39;
  *(v10 + 56) = v38;
  *(v10 + 72) = v11;
  *(v10 + 88) = v40[0];
  *(v10 + 97) = *(v40 + 9);
  v12 = v37;
  *(v10 + 24) = v36;
  *(v10 + 40) = v12;
  *(v10 + 116) = 0;
  *(v10 + 120) = 1;
  v13 = *(v10 + 112);
  if (v13 != 255)
  {
    v14 = *(v10 + 104);
    v33 = *(v10 + 88);
    v34 = v14;
    v35 = v13;
    v15 = TransportBuffer.rawData.getter();
    v17 = v16;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D13D8, &unk_26F0759B0);
    *(&v37 + 1) = v18;
    *&v38 = sub_26F063E84(&qword_2806D13E0, &qword_2806D13D8, &unk_26F0759B0, MEMORY[0x277CC9BC0]);
    *&v36 = v15;
    *(&v36 + 1) = v17;
    v19 = __swift_project_boxed_opaque_existential_1(&v36, v18);
    v20 = *v19 ? (v19[1] + *v19) : 0;
    sub_26F06D394(*v19, v20, v32);
    v21 = v32[0];
    v22 = v32[1];
    __swift_destroy_boxed_opaque_existential_1(&v36);
    v28 = *(v8 + 56);
    *v7 = sub_26F0699A4;
    v7[1] = v8;
    v23 = v29;
    (*(v29 + 104))(v7, *MEMORY[0x277CD8DB0], v41);
    sub_26F073A30();

    sub_26F073A20();
    sub_26F073A80();

    sub_26F0588B8(v21, v22);
    (*(v23 + 8))(v7, v41);
    swift_endAccess();
    v24 = v31;
    v25 = v30;
    *(v31 + v30) = v10;
    swift_retain_n();

    sub_26F073E60();

    *(v24 + v25) = 0;

    swift_beginAccess();
    v1 = *(v10 + 80);
    if (v1)
    {
      swift_endAccess();

      return v1;
    }
  }

  result = sub_26F073F50();
  __break(1u);
  return result;
}

uint64_t sub_26F0688D0()
{
  v1 = OBJC_IVAR____TtC9Tightbeam19UnixTransportClient_targetURL;
  v2 = sub_26F0738E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_26F06898C(uint64_t a1)
{
  sub_26F073F00();
  MEMORY[0x274386C80](0xD00000000000001FLL, 0x800000026F079350);
  sub_26F073C20();
  sub_26F073F40();
  sub_26F057394(0, 0xE000000000000000);
}

uint64_t sub_26F068A58(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      *v10 = a3;
      *&v10[8] = a4;
      v10[10] = BYTE2(a4);
      v10[11] = BYTE3(a4);
      v10[12] = BYTE4(a4);
      v10[13] = BYTE5(a4);
      result = (a1)(&v11, v10, BYTE6(a4));
      if (!v4)
      {
        goto LABEL_12;
      }

      return result;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

LABEL_8:
    result = sub_26F069248(v8, v9, a4 & 0x3FFFFFFFFFFFFFFFLL, a1);
    if (!v4)
    {
      return result & 1;
    }

    return result;
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    goto LABEL_8;
  }

  memset(v10, 0, sizeof(v10));
  result = (a1)(&v11, v10, 0, a3);
  if (!v4)
  {
LABEL_12:
    LOBYTE(result) = 0;
    return result & 1;
  }

  return result;
}

uint64_t sub_26F068BAC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  a3(&var1, a1, v3);
  return 0;
}

uint64_t sub_26F068BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_26F073E30();
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x28223BE20](v10);
  v36 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_26F073E20();
  MEMORY[0x28223BE20](v34);
  v35 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26F073C50();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26F0739B0();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = (&v31 - v21);
  v41[3] = type metadata accessor for UnixTransportClient(0);
  v41[4] = &off_287F0BFB0;
  v41[0] = a3;
  sub_26F0583F4(v41, (a5 + 2));
  a5[8] = a1;
  a5[9] = a2;
  v39 = a4;
  if (a4)
  {
    a5[7] = a4;
  }

  else
  {
    v32 = a1;
    v33 = v15;
    sub_26F073B50();

    v23 = sub_26F073B40();
    if (qword_2806D11A0 != -1)
    {
      swift_once();
    }

    sub_26F073BC0();
    swift_allocObject();

    v24 = sub_26F073BB0();
    sub_26F073B20();
    v31 = v23;

    v25 = sub_26F073B10();
    if (*v26 >> 62)
    {
      result = sub_26F073F60();
      if (result < 0)
      {
        __break(1u);
        return result;
      }
    }

    sub_26F058578(0, 0, v24);

    v25(v40, 0);

    *v22 = v32;
    v22[1] = a2;
    (*(v17 + 104))(v22, *MEMORY[0x277CD8AF0], v16);
    (*(v17 + 16))(v20, v22, v16);
    sub_26F073B00();
    swift_allocObject();
    v27 = sub_26F073A70();

    (*(v17 + 8))(v22, v16);
    a5[7] = v27;
  }

  sub_26F04B810(sub_26F0699AC, a5);
  sub_26F073A60();

  sub_26F058668();
  sub_26F073AF0();
  sub_26F073980();
  (*(v17 + 8))(v22, v16);
  sub_26F073C40();
  v40[0] = MEMORY[0x277D84F90];
  sub_26F0699B4(&qword_2806D12A0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D12A8, &unk_26F0757D0);
  sub_26F063E84(&qword_2806D12B0, &qword_2806D12A8, &unk_26F0757D0, MEMORY[0x277D83970]);
  sub_26F073ED0();
  (*(v37 + 104))(v36, *MEMORY[0x277D85260], v38);
  v28 = sub_26F073E50();

  sub_26F073AB0();

  if (qword_2806D1180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v29 = v28;
  MEMORY[0x274386D00]();
  if (*((qword_2806D1280 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((qword_2806D1280 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_26F073DC0();
  }

  sub_26F073DE0();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v41);
  return a5;
}

uint64_t sub_26F069248(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  result = sub_26F073800();
  v8 = result;
  if (result)
  {
    result = sub_26F073820();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_26F073810();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return sub_26F068BAC(v8, v14, a4) & 1;
}

uint64_t sub_26F0692F0(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC9Tightbeam19UnixTransportClient_pendingMessage);
  if (v5)
  {
    swift_beginAccess();
    if (*(v5 + 112) > 1u)
    {
      goto LABEL_35;
    }

    v6 = *(v5 + 88);
    v7 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v7 != 2)
      {

        tb_unix_transport_message_buffer_reset(v6, 0, 0);
        goto LABEL_29;
      }

      v12 = *(a1 + 16);
      v11 = *(a1 + 24);
      v13 = v11 - v12;
      if (!__OFSUB__(v11, v12))
      {

        tb_unix_transport_message_buffer_reset(v6, 0, v13);
        v15 = *(a1 + 16);
        v14 = *(a1 + 24);
        if (!__OFSUB__(v14, v15))
        {
          if (v14 == v15)
          {
LABEL_29:
            swift_endAccess();
            swift_beginAccess();
            v20 = *(v5 + 80);
            if (v20)
            {
              swift_endAccess();
              tb_message_set_state(v20, 4);
              sub_26F073E70();
            }

            goto LABEL_35;
          }

LABEL_17:
          if (v7 == 2)
          {
            v18 = *(a1 + 16);
            v17 = *(a1 + 24);
            v16 = v17 - v18;
            if (!__OFSUB__(v17, v18))
            {
              goto LABEL_26;
            }

            __break(1u);
          }

          else if (v7 == 1)
          {
            if (!__OFSUB__(HIDWORD(a1), a1))
            {
              v16 = HIDWORD(a1) - a1;
LABEL_26:
              sub_26F067F50(a1, a2, v16, *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112));
              if (*(v5 + 112) < 2u)
              {
                v19 = *(v5 + 88);
                if (*(v19 + 24) >= 1)
                {
                  *(v19 + 16) = 0;
                  goto LABEL_29;
                }
              }

LABEL_35:
              result = sub_26F073F50();
              __break(1u);
              return result;
            }

LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          v16 = BYTE6(a2);
          goto LABEL_26;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      __break(1u);
    }

    else
    {
      if (!v7)
      {
        v8 = BYTE6(a2);
        goto LABEL_16;
      }

      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v8 = HIDWORD(a1) - a1;
LABEL_16:

        tb_unix_transport_message_buffer_reset(v6, 0, v8);
        if (!v8)
        {
          goto LABEL_29;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  sub_26F073F00();

  v9 = sub_26F0738F0();
  MEMORY[0x274386C80](v9);

  sub_26F057394(0xD000000000000026, 0x800000026F079320);
}

uint64_t _tb_unix_client_transport_send_message_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  tb_transport_get_context(a1);

  v5 = sub_26F068470(a2);

  result = 0;
  if (a3)
  {
    *a3 = v5;
  }

  return result;
}

uint64_t sub_26F069770(uint64_t a1)
{
  result = sub_26F0738E0();
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

uint64_t sub_26F06982C(uint64_t a1)
{
  result = sub_26F0738E0();
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

void *sub_26F0698C8(void *__src, size_t __len)
{
  if (__src)
  {
    if ((__len & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memmove(*(v2 + 40), __src, __len);
    }
  }

  return __src;
}

uint64_t sub_26F0698E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D14E0, &unk_26F075ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26F069950()
{
  result = qword_2806D14E8;
  if (!qword_2806D14E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D14E8);
  }

  return result;
}

uint64_t sub_26F0699B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26F069A10()
{
  result = qword_2806D14F0;
  if (!qword_2806D14F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D14F0);
  }

  return result;
}

uint64_t TightbeamEncoder.count.getter()
{
  v1 = *(v0 + 56);
  if (v1)
  {

    return tb_message_get_size(v1);
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

void *TightbeamEncoder.encode(_:)(const void *a1, uint64_t a2)
{
  if (a1 && (v4 = *(v2 + 56)) != 0)
  {

    return tb_message_encode_buffer(v4, a1, a2 - a1);
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

{
  if (!a1)
  {
    a2 = 0;
  }

  return TightbeamEncoder.encode(_:)(a1, a2);
}

uint64_t _s9Tightbeam0A7EncoderV8subrangeyySnySiG_yAA0A7DecoderVzSo10tb_error_taYKXEtAIYKF(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26F069C90(v4, a1, a2, a3, a4);
  if (result)
  {
    v6 = result;
    type metadata accessor for TransportError(0);
    sub_26F064B50();
    swift_willThrowTypedImpl();
    return v6;
  }

  return result;
}

uint64_t sub_26F069C90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 56);
  if (!v5)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3 - a2;
    if (!__OFSUB__(a3, a2))
    {
      v10 = swift_allocObject();
      *(v10 + 16) = a4;
      *(v10 + 24) = a5;
      v11 = swift_allocObject();
      *(v11 + 16) = sub_26F067D30;
      *(v11 + 24) = v10;
      aBlock[4] = sub_26F06AF54;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26F069A8C;
      aBlock[3] = &block_descriptor_1;
      v12 = _Block_copy(aBlock);

      v13 = tb_message_subrange(v5, a2, v7, v12);
      _Block_release(v12);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return v13;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  __break(1u);
LABEL_9:
  result = sub_26F073F50();
  __break(1u);
  return result;
}

Swift::Void __swiftcall TightbeamEncoder.encode(_:)(Swift::Bool a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {

    tb_message_encode_BOOL(v3, a1);
  }

  else
  {
    sub_26F073F50();
    __break(1u);
  }
}

Swift::Void __swiftcall TightbeamEncoder.encode(_:)(Swift::UInt8 a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {

    tb_message_encode_u8(v3, a1);
  }

  else
  {
    sub_26F073F50();
    __break(1u);
  }
}

Swift::Void __swiftcall TightbeamEncoder.encode(_:)(Swift::UInt16 a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {

    tb_message_encode_u16(v3, a1);
  }

  else
  {
    sub_26F073F50();
    __break(1u);
  }
}

Swift::Void __swiftcall TightbeamEncoder.encode(_:)(Swift::Int8 a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {

    tb_message_encode_s8(v3, a1);
  }

  else
  {
    sub_26F073F50();
    __break(1u);
  }
}

Swift::Void __swiftcall TightbeamEncoder.encode(_:)(Swift::Int16 a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {

    tb_message_encode_s16(v3, a1);
  }

  else
  {
    sub_26F073F50();
    __break(1u);
  }
}

uint64_t sub_26F06A150(uint64_t a1, uint64_t (*a2)(void))
{
  if (*(v2 + 56))
  {

    return a2();
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

uint64_t sub_26F06A1F4(uint64_t a1, uint64_t (*a2)(void))
{
  if (*(v2 + 56))
  {

    return a2();
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall TightbeamEncoder.encode(_:)(Swift::Float a1)
{
  v2 = *(v1 + 56);
  if (v2)
  {

    tb_message_encode_f32(v2, a1);
  }

  else
  {
    sub_26F073F50();
    __break(1u);
  }
}

Swift::Void __swiftcall TightbeamEncoder.encode(_:)(Swift::Double a1)
{
  v2 = *(v1 + 56);
  if (v2)
  {

    tb_message_encode_f64(v2, a1);
  }

  else
  {
    sub_26F073F50();
    __break(1u);
  }
}

uint64_t TightbeamEncoder.encode(_:)(uint64_t *a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    v4 = *a1;

    return tb_message_encode_capability(v3, v4);
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

uint64_t TightbeamEncoder.complete()@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 56);
  if (v2)
  {
    result = tb_message_complete(v2);
    v5 = *(v1 + 48);
    a1[2] = *(v1 + 32);
    a1[3] = v5;
    a1[4] = *(v1 + 64);
    *(a1 + 73) = *(v1 + 73);
    v6 = *(v1 + 16);
    *a1 = *v1;
    a1[1] = v6;
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

uint64_t sub_26F06A4A8(char a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {

    return tb_message_encode_BOOL(v3, a1 & 1);
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

uint64_t sub_26F06A530(char a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {

    return tb_message_encode_u8(v3, a1);
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

uint64_t sub_26F06A5B8(__int16 a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {

    return tb_message_encode_u16(v3, a1);
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

uint64_t sub_26F06A670(char a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {

    return tb_message_encode_s8(v3, a1);
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

uint64_t sub_26F06A6F8(__int16 a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {

    return tb_message_encode_s16(v3, a1);
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

uint64_t sub_26F06A798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (*(v4 + 56))
  {

    return a4();
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

uint64_t sub_26F06A838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (*(v4 + 56))
  {

    return a4();
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

uint64_t sub_26F06A8C0(float a1)
{
  v2 = *(v1 + 56);
  if (v2)
  {

    return tb_message_encode_f32(v2, a1);
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

uint64_t sub_26F06A940(double a1)
{
  v2 = *(v1 + 56);
  if (v2)
  {

    return tb_message_encode_f64(v2, a1);
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall TightbeamSizingEncoder.encode(_:)(Swift::Bool a1)
{
  v2 = tb_message_size_BOOL();
  if (__OFADD__(*v1, v2))
  {
    __break(1u);
  }

  else
  {
    *v1 += v2;
  }
}

uint64_t sub_26F06AA74(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = a2(a1);
  if (__OFADD__(*v2, result))
  {
    __break(1u);
  }

  else
  {
    *v2 += result;
  }

  return result;
}

uint64_t sub_26F06AABC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = a2(a1);
  if (__OFADD__(*v2, result))
  {
    __break(1u);
  }

  else
  {
    *v2 += result;
  }

  return result;
}

uint64_t sub_26F06AB04(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = a2(a1);
  if (__OFADD__(*v2, result))
  {
    __break(1u);
  }

  else
  {
    *v2 += result;
  }

  return result;
}

uint64_t sub_26F06AB4C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = a2(a1);
  if (__OFADD__(*v2, result))
  {
    __break(1u);
  }

  else
  {
    *v2 += result;
  }

  return result;
}

Swift::Void __swiftcall TightbeamSizingEncoder.encode(_:)(Swift::Float a1)
{
  v2 = tb_message_size_f32();
  if (__OFADD__(*v1, v2))
  {
    __break(1u);
  }

  else
  {
    *v1 += v2;
  }
}

Swift::Void __swiftcall TightbeamSizingEncoder.encode(_:)(Swift::Double a1)
{
  v2 = tb_message_size_f64();
  if (__OFADD__(*v1, v2))
  {
    __break(1u);
  }

  else
  {
    *v1 += v2;
  }
}

uint64_t TightbeamSizingEncoder.encode(_:)()
{
  result = tb_message_size_capability();
  if (__OFADD__(*v0, result))
  {
    __break(1u);
  }

  else
  {
    *v0 += result;
  }

  return result;
}

uint64_t sub_26F06AC00()
{
  result = tb_message_size_BOOL();
  if (__OFADD__(*v0, result))
  {
    __break(1u);
  }

  else
  {
    *v0 += result;
  }

  return result;
}

uint64_t sub_26F06ACA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (__OFADD__(*v4, result))
  {
    __break(1u);
  }

  else
  {
    *v4 += result;
  }

  return result;
}

uint64_t sub_26F06ACEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (__OFADD__(*v4, result))
  {
    __break(1u);
  }

  else
  {
    *v4 += result;
  }

  return result;
}

uint64_t sub_26F06AD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (__OFADD__(*v4, result))
  {
    __break(1u);
  }

  else
  {
    *v4 += result;
  }

  return result;
}

uint64_t sub_26F06AD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (__OFADD__(*v4, result))
  {
    __break(1u);
  }

  else
  {
    *v4 += result;
  }

  return result;
}

uint64_t sub_26F06ADAC()
{
  result = tb_message_size_f32();
  if (__OFADD__(*v0, result))
  {
    __break(1u);
  }

  else
  {
    *v0 += result;
  }

  return result;
}

uint64_t sub_26F06ADD8()
{
  result = tb_message_size_f64();
  if (__OFADD__(*v0, result))
  {
    __break(1u);
  }

  else
  {
    *v0 += result;
  }

  return result;
}

uint64_t dispatch thunk of TightbeamEncoderProtocol.encode(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))(a1, a2);
}

{
  return (*(a3 + 16))(a1, a2);
}

{
  return (*(a3 + 24))(a1, a2);
}

{
  return (*(a3 + 32))(a1, a2);
}

{
  return (*(a3 + 40))(a1, a2);
}

{
  return (*(a3 + 48))(a1, a2);
}

{
  return (*(a3 + 56))(a1, a2);
}

{
  return (*(a3 + 64))(a1, a2);
}

{
  return (*(a3 + 72))(a1, a2);
}

uint64_t dispatch thunk of TightbeamEncoderProtocol.encode(_:)(uint64_t a1, uint64_t a2)
{
  return (*(a2 + 80))(a1);
}

{
  return (*(a2 + 88))(a1);
}

uint64_t getEnumTagSinglePayload for TightbeamSizingEncoder(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TightbeamSizingEncoder(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_DWORD *TightbeamEndpoint.constructEndpoint()()
{
  v1 = sub_26F0738E0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v82 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D13B0, &unk_26F075850);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v82 - v12;
  v14 = type metadata accessor for TightbeamEndpoint(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26F06BB90(v0, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload <= 9)
    {
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload <= 11)
    {
      if (EnumCaseMultiPayload == 10)
      {
        v19 = *v16;
        v18 = v16[1];
        type metadata accessor for DelegatedClientEndpointData();
        v20 = swift_allocObject();
        *(v20 + 16) = v19;
        *(v20 + 24) = v18;
        v21 = swift_allocObject();
        *(v21 + 16) = v20;

        v22 = sub_26F06BBF4();
        v23 = sub_26F06BDB8();
        v87 = sub_26F06C94C;
        v88 = v21;
        aBlock = MEMORY[0x277D85DD0];
        v84 = 1107296256;
        v85 = sub_26F06BF04;
        v86 = &block_descriptor_12;
        v24 = _Block_copy(&aBlock);

        v25 = tb_endpoint_create_with_data(v22, v20, v23, v24);
        _Block_release(v24);
      }

      else
      {
        v64 = *v16;
        v65 = v16[3];
        type metadata accessor for DelegatedServiceEndpointData();
        v66 = swift_allocObject();
        *(v66 + 16) = v64;
        v82 = *(v16 + 1);
        *(v66 + 24) = v82;
        *(v66 + 40) = v65;
        v67 = swift_allocObject();
        *(v67 + 16) = v66;

        v68 = sub_26F06BBF4();
        v69 = sub_26F06BDB8();
        v87 = sub_26F06C94C;
        v88 = v67;
        aBlock = MEMORY[0x277D85DD0];
        v84 = 1107296256;
        v85 = sub_26F06BF04;
        v86 = &block_descriptor_6;
        v70 = _Block_copy(&aBlock);

        v25 = tb_endpoint_create_with_data(v68, v66, v69, v70);
        _Block_release(v70);
      }

      goto LABEL_40;
    }

    if (EnumCaseMultiPayload != 12)
    {
      v71 = sub_26F06BBF4();
      v72 = sub_26F06BDB8();
      return tb_endpoint_create(v71, v72);
    }

    v31 = *v16;
    v32 = swift_slowAlloc();
    if ((v31 & 0x8000000000000000) == 0)
    {
      v33 = v32;
      *v32 = 0;
      v32[1] = v31;
      v34 = sub_26F06BBF4();
      v35 = sub_26F06BDB8();
      v36 = swift_allocObject();
      *(v36 + 16) = v33;
      *(v36 + 24) = 1;
      v87 = sub_26F06C948;
      v88 = v36;
      aBlock = MEMORY[0x277D85DD0];
      v84 = 1107296256;
      v85 = sub_26F06BF04;
      v86 = &block_descriptor_2;
      v37 = _Block_copy(&aBlock);

      v38 = tb_endpoint_create_with_data(v34, v33, v35, v37);
      _Block_release(v37);
      return v38;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) < 3)
    {
      v1 = *v16;
LABEL_37:
      v62 = sub_26F06BBF4();
      v63 = sub_26F06BDB8();
      return tb_endpoint_create_with_value(v62, v1, v63);
    }

    v1 = *v16;
    if ((v1 & 0x80000000) == 0)
    {
      if (v1)
      {
        goto LABEL_37;
      }

      goto LABEL_56;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (!EnumCaseMultiPayload)
  {
    v41 = *v16;
    v40 = v16[1];

    if ((v40 & 0x1000000000000000) != 0)
    {
      v41 = sub_26F06C058(v41, v40);
      v42 = v73;

      if ((v42 & 0x2000000000000000) == 0)
      {
LABEL_22:
        if ((v41 & 0x1000000000000000) != 0)
        {
          v43 = ((v42 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v44 = v41 & 0xFFFFFFFFFFFFLL;
          v45 = (v41 & 0xFFFFFFFFFFFFLL) + 1;
          if (!__OFADD__(v41 & 0xFFFFFFFFFFFFLL, 1))
          {
LABEL_24:
            v46 = swift_slowAlloc();
            v47 = v46;
            if (v44)
            {
              v48 = v45 == 0;
            }

            else
            {
              v48 = 1;
            }

            if (v48)
            {
              v44 = 0;
            }

            else
            {
              if (v44 >= v45)
              {
                v44 = v45;
              }

              memcpy(v46, v43, v44);
            }

            *(v47 + v44) = 0;
LABEL_51:
            v76 = swift_allocObject();
            *(v76 + 16) = v47;
            *(v76 + 24) = v45;

            v77 = sub_26F06BBF4();
            v78 = sub_26F06BDB8();
            v87 = sub_26F06C0D8;
            v88 = v76;
            aBlock = MEMORY[0x277D85DD0];
            v84 = 1107296256;
            v85 = sub_26F06BF04;
            v86 = &block_descriptor_36;
            v79 = _Block_copy(&aBlock);

            v80 = tb_endpoint_create_with_data(v77, v47, v78, v79);
            _Block_release(v79);

            return v80;
          }

          goto LABEL_59;
        }

LABEL_57:
        result = sub_26F073F30();
        v43 = result;
        v44 = v81;
        v45 = v81 + 1;
        if (!__OFADD__(v81, 1))
        {
          goto LABEL_24;
        }

LABEL_59:
        __break(1u);
        return result;
      }
    }

    else
    {
      v42 = v40;
      if ((v40 & 0x2000000000000000) == 0)
      {
        goto LABEL_22;
      }
    }

    v74 = HIBYTE(v42) & 0xF;
    aBlock = v41;
    v84 = v42 & 0xFFFFFFFFFFFFFFLL;
    v45 = v74 + 1;
    v75 = swift_slowAlloc();
    v47 = v75;
    if (v74)
    {
      memcpy(v75, &aBlock, HIBYTE(v42) & 0xF);
    }

    *(v47 + v74) = 0;
    goto LABEL_51;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v1 = *v16;
    if ((v1 & 0x80000000) == 0)
    {
      if (v1)
      {
        goto LABEL_37;
      }

      __break(1u);
      goto LABEL_34;
    }

    goto LABEL_53;
  }

  v1 = *v16;
  if ((v1 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v1)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_14:
  if (EnumCaseMultiPayload == 7)
  {
    v49 = *v16;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D14F8, "lT");
    sub_26F06BF70(v16 + *(v50 + 48), v13);
    sub_26F06BFE0(v13, v11);
    type metadata accessor for EveEndpointData(0);
    v51 = swift_allocObject();
    *(v51 + 16) = v49;
    sub_26F06BF70(v11, v51 + OBJC_IVAR____TtC9Tightbeam15EveEndpointData_baseURL);
    v52 = swift_allocObject();
    *(v52 + 16) = v51;

    v53 = sub_26F06BBF4();
    v54 = sub_26F06BDB8();
    v87 = sub_26F06C050;
    v88 = v52;
    aBlock = MEMORY[0x277D85DD0];
    v84 = 1107296256;
    v85 = sub_26F06BF04;
    v86 = &block_descriptor_30;
    v55 = _Block_copy(&aBlock);

    v25 = tb_endpoint_create_with_data(v53, v51, v54, v55);
    _Block_release(v55);

    sub_26F06172C(v13);
    goto LABEL_40;
  }

  if (EnumCaseMultiPayload != 8)
  {
LABEL_34:
    v56 = *(v2 + 32);
    v56(v7, v16, v1);
    (*(v2 + 16))(v5, v7, v1);
    type metadata accessor for UnixEndpointData(0);
    v57 = swift_allocObject();
    v56((v57 + OBJC_IVAR____TtC9Tightbeam16UnixEndpointData_targetUrl), v5, v1);
    v58 = swift_allocObject();
    *(v58 + 16) = v57;

    v59 = sub_26F06BBF4();
    v60 = sub_26F06BDB8();
    v87 = sub_26F06C94C;
    v88 = v58;
    aBlock = MEMORY[0x277D85DD0];
    v84 = 1107296256;
    v85 = sub_26F06BF04;
    v86 = &block_descriptor_18;
    v61 = _Block_copy(&aBlock);

    v25 = tb_endpoint_create_with_data(v59, v57, v60, v61);
    _Block_release(v61);

    (*(v2 + 8))(v7, v1);
    goto LABEL_40;
  }

  (*(v2 + 32))(v7, v16, v1);
  (*(v2 + 16))(v13, v7, v1);
  (*(v2 + 56))(v13, 0, 1, v1);
  type metadata accessor for EveEndpointData(0);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  sub_26F06BF70(v13, v26 + OBJC_IVAR____TtC9Tightbeam15EveEndpointData_baseURL);
  v27 = swift_allocObject();
  *(v27 + 16) = v26;

  v28 = sub_26F06BBF4();
  v29 = sub_26F06BDB8();
  v87 = sub_26F06C94C;
  v88 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v84 = 1107296256;
  v85 = sub_26F06BF04;
  v86 = &block_descriptor_24;
  v30 = _Block_copy(&aBlock);

  v25 = tb_endpoint_create_with_data(v28, v26, v29, v30);
  _Block_release(v30);

  (*(v2 + 8))(v7, v1);
LABEL_40:

  return v25;
}

uint64_t type metadata accessor for TightbeamEndpoint(uint64_t a1)
{
  result = qword_281066E90;
  if (!qword_281066E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F06BB90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TightbeamEndpoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F06BBF4()
{
  v1 = type metadata accessor for TightbeamEndpoint(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F06BB90(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload <= 9)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D14F8, "lT");
        sub_26F06172C(&v3[*(v7 + 48)]);
        return 5;
      }

      else if (EnumCaseMultiPayload == 8)
      {
        v6 = sub_26F0738E0();
        (*(*(v6 - 8) + 8))(v3, v6);
        return 5;
      }

      else
      {
        v8 = sub_26F0738E0();
        (*(*(v8 - 8) + 8))(v3, v8);
        return 9;
      }
    }

    else if ((EnumCaseMultiPayload - 10) >= 2)
    {
      if (EnumCaseMultiPayload == 12)
      {
        return 8;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      sub_26F0651B4(v3);
      return 10;
    }
  }

  else if (EnumCaseMultiPayload > 3)
  {
    return 3;
  }

  else if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      return 11;
    }

    else
    {
      sub_26F0651B4(v3);
      return 2;
    }
  }

  else
  {
    return 2;
  }
}

uint64_t sub_26F06BDB8()
{
  v1 = type metadata accessor for TightbeamEndpoint(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F06BB90(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_26F0651B4(v3);
      return 1;
    }

    if (EnumCaseMultiPayload == 1)
    {
      return 2;
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 2:
        return 3;
      case 7:
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D14F8, "lT");
        sub_26F06172C(&v3[*(v7 + 48)]);
        return 1;
      case 8:
        v5 = sub_26F0738E0();
        (*(*(v5 - 8) + 8))(v3, v5);
        return 1;
    }
  }

  sub_26F0651B4(v3);
  return 0;
}

uint64_t sub_26F06BF04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F06BF70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D13B0, &unk_26F075850);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F06BFE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D13B0, &unk_26F075850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F06C058(uint64_t a1, unint64_t a2)
{
  v2 = sub_26F073DA0();
  v6 = sub_26F06C524(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_26F06C0D8()
{
  result = *(v0 + 16);
  if (result)
  {
    JUMPOUT(0x2743877B0);
  }

  return result;
}

void sub_26F06C140(uint64_t a1)
{
  sub_26F06C2AC();
  if (v1 <= 0x3F)
  {
    sub_26F06C2DC();
    if (v2 <= 0x3F)
    {
      sub_26F06C30C();
      if (v3 <= 0x3F)
      {
        sub_26F06C33C();
        if (v4 <= 0x3F)
        {
          sub_26F06C36C(319);
          if (v5 <= 0x3F)
          {
            sub_26F06C3E4(319, &qword_281066EA8, MEMORY[0x277CC9260]);
            if (v6 <= 0x3F)
            {
              sub_26F06C3E4(319, &qword_281066EA0, MEMORY[0x277CC9260]);
              if (v7 <= 0x3F)
              {
                sub_26F06C3E4(319, &qword_281066DE8, sub_26F06C430);
                if (v8 <= 0x3F)
                {
                  sub_26F06C480(319);
                  if (v9 <= 0x3F)
                  {
                    sub_26F06C4F4();
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

uint64_t sub_26F06C2AC()
{
  result = qword_281066E20;
  if (!qword_281066E20)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_281066E20);
  }

  return result;
}

uint64_t sub_26F06C2DC()
{
  result = qword_281066E00;
  if (!qword_281066E00)
  {
    result = MEMORY[0x277D84CC0];
    atomic_store(MEMORY[0x277D84CC0], &qword_281066E00);
  }

  return result;
}

uint64_t sub_26F06C30C()
{
  result = qword_281066DF8;
  if (!qword_281066DF8)
  {
    result = MEMORY[0x277D84CC0];
    atomic_store(MEMORY[0x277D84CC0], &qword_281066DF8);
  }

  return result;
}

uint64_t sub_26F06C33C()
{
  result = qword_281066E08;
  if (!qword_281066E08)
  {
    result = MEMORY[0x277D83E88];
    atomic_store(MEMORY[0x277D83E88], &qword_281066E08);
  }

  return result;
}

void sub_26F06C36C(uint64_t a1)
{
  if (!qword_281066E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D13B0, &unk_26F075850);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281066E18);
    }
  }
}

void sub_26F06C3E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_26F06C430()
{
  result = qword_281066DE0;
  if (!qword_281066DE0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_281066DE0);
  }

  return result;
}

void sub_26F06C480(uint64_t a1)
{
  if (!qword_281066DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D1500, "vT");
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281066DF0);
    }
  }
}

uint64_t sub_26F06C4F4()
{
  result = qword_281066E10;
  if (!qword_281066E10)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_281066E10);
  }

  return result;
}

uint64_t sub_26F06C524(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_26F073E90();
    if (!v9 || (v10 = v9, v11 = sub_26F06F680(v9, 0), v12 = sub_26F06C67C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_26F073D10();

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
      return sub_26F073D10();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_26F073F30();
LABEL_4:

  return sub_26F073D10();
}

unint64_t sub_26F06C67C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_26F06C89C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_26F073D70();
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
          result = sub_26F073F30();
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

    result = sub_26F06C89C(v12, a6, a7);
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

    result = sub_26F073D50();
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

unint64_t sub_26F06C89C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26F073D80();
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
    v5 = MEMORY[0x274386CB0](15, a1 >> 16);
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

uint64_t _tb_unix_service_transport_create_with_endpoint(uint64_t a1)
{
  v2 = sub_26F0738E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  tb_endpoint_get_data(a1);
  v6 = OBJC_IVAR____TtC9Tightbeam16UnixEndpointData_targetUrl;
  v7 = *(v3 + 16);

  v7(v5, v8 + v6, v2);

  type metadata accessor for UnixTransportService(0);
  v9 = swift_allocObject();
  *(v9 + OBJC_IVAR____TtC9Tightbeam20UnixTransportService_listener) = 0;
  *(v9 + OBJC_IVAR____TtC9Tightbeam20UnixTransportService_transport) = 0;
  (*(v3 + 32))(v9 + OBJC_IVAR____TtC9Tightbeam20UnixTransportService_targetURL, v5, v2);
  return v9;
}

uint64_t type metadata accessor for UnixTransportService(uint64_t a1)
{
  result = qword_281066E28;
  if (!qword_281066E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F06CB54(uint64_t a1)
{
  tb_transport_get_context(a1);

  sub_26F06CEA4(a1);

  return 0;
}

uint64_t sub_26F06CC14(void *a1, uint64_t a2, unint64_t a3)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v6 = tb_alloc_message();
  v33[0] = v6;
  v7 = tb_alloc_transport_message_buffer();
  if (!v7)
  {
    goto LABEL_30;
  }

  v8 = v7;
  v9 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a3);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v9 != 2)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
LABEL_9:
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    v10 = HIDWORD(a2) - a2;
  }

LABEL_12:
  v13 = tb_unix_transport_construct_message_buffer(v10, 0, v8);
  sub_26F0701C0(v13);
  if (!v6)
  {
    goto LABEL_31;
  }

  v14 = tb_message_construct(v6, v8, 1);
  sub_26F0701C0(v14);
  if (v9 <= 1)
  {
    if (!v9)
    {
      v15 = BYTE6(a3);
      goto LABEL_23;
    }

LABEL_20:
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      v15 = HIDWORD(a2) - a2;
      goto LABEL_23;
    }

    goto LABEL_29;
  }

  if (v9 == 2)
  {
    v17 = *(a2 + 16);
    v16 = *(a2 + 24);
    v15 = v16 - v17;
    if (__OFSUB__(v16, v17))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_23:
  sub_26F067F50(a2, a3, v15, v8, 0, 0, 1u);
  if (v8[3] <= 0)
  {
    result = sub_26F073F50();
    __break(1u);
  }

  else
  {
    v8[2] = 0;
    tb_message_set_state(v6, 4);
    tb_transport_call_message_handler(a1, v6, v33);
    v30 = 0;
    v31 = 0;
    v29 = v8;
    v32 = 1;
    v18 = TransportBuffer.data.getter();
    v20 = v19;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D13D8, &unk_26F0759B0);
    v28 = sub_26F06D330();
    v26[0] = v18;
    v26[1] = v20;
    v21 = __swift_project_boxed_opaque_existential_1(v26, v27);
    if (*v21)
    {
      v22 = (v21[1] + *v21);
    }

    else
    {
      v22 = 0;
    }

    sub_26F06D394(*v21, v22, &v25);
    v23 = v25;
    __swift_destroy_boxed_opaque_existential_1(v26);
    tb_unix_transport_destruct_message_buffer(v8);
    tb_free_message(v8);
    tb_free_message(v33[0]);
    sub_26F063E10(v8, 0, 0, 1);
    return v23;
  }

  return result;
}

void *sub_26F06CEA4(uint64_t a1)
{
  v3 = v1;
  *(v1 + OBJC_IVAR____TtC9Tightbeam20UnixTransportService_transport) = a1;
  v4 = sub_26F0738D0();
  v6 = v5;
  v10 = type metadata accessor for UnixTransportService(0);
  v11 = &off_287F0BF88;
  v8[4] = &off_287F0BF68;
  v9[0] = v3;
  v8[3] = v10;
  v8[0] = v3;
  type metadata accessor for UnixListener();
  swift_allocObject();
  swift_retain_n();
  result = sub_26F05D378(v4, v6, v9, v8);
  if (!v2)
  {
    *(v3 + OBJC_IVAR____TtC9Tightbeam20UnixTransportService_listener) = result;
  }

  return result;
}

uint64_t sub_26F06CF88()
{
  v1 = OBJC_IVAR____TtC9Tightbeam20UnixTransportService_targetURL;
  v2 = sub_26F0738E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_26F06D03C(uint64_t a1)
{
  result = sub_26F0738E0();
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

void *sub_26F06D0E4(uint64_t (*a1)(uint64_t a1), uint64_t a2, unint64_t a3)
{
  v7 = sub_26F073A40();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = *(v3 + OBJC_IVAR____TtC9Tightbeam20UnixTransportService_transport);
  if (result)
  {
    v12 = sub_26F06CC14(result, a2, a3);
    v14 = v13;
    *v10 = sub_26F0699A4;
    v10[1] = a1;
    (*(v8 + 104))(v10, *MEMORY[0x277CD8DB0], v7);
    sub_26F073A30();

    sub_26F073A20();
    sub_26F073A80();

    sub_26F0588B8(v12, v14);
    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26F06D26C(uint64_t a1)
{
  sub_26F073F00();
  MEMORY[0x274386C80](0xD00000000000001FLL, 0x800000026F079460);
  sub_26F073C20();
  sub_26F073F40();
  sub_26F057394(0, 0xE000000000000000);
}

unint64_t sub_26F06D330()
{
  result = qword_2806D13E0;
  if (!qword_2806D13E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D13D8, &unk_26F0759B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D13E0);
  }

  return result;
}

_BYTE *sub_26F06D394@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_26F0663D4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_26F06D428(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_26F06D4A4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_26F06D428(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_26F073830();
  swift_allocObject();
  result = sub_26F0737F0();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26F073910();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_26F06D4A4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_26F073830();
  swift_allocObject();
  result = sub_26F0737F0();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t _s9Tightbeam0A7EncoderV6encodeyyxSo10tb_error_taYKAA0A9EncodableRzlF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 16))(v3, a2);
  if (v4)
  {
    v6 = result;
    type metadata accessor for TransportError(0);
    sub_26F064B50();
    swift_allocError();
    *v7 = v6;
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t _s9Tightbeam0A7DecoderV6decode2asxxm_tSo10tb_error_taYKAA0A9DecodableRzlF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 8))(v3, &v8);
  if (v4)
  {
    v6 = v8;
    type metadata accessor for TransportError(0);
    sub_26F064B50();
    swift_allocError();
    *v7 = v6;
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t _s9Tightbeam0A7MessageV17withBufferPointer3for__xAC0D5UsageO_Srys5UInt8VGxACnq_YKXEtq_YKs5ErrorR_r0_lFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a7 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *v12;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v28 = v15;
  v29 = v19;
  v30 = v20;
  result = sub_26F064414(v21, v22, sub_26F06DF68, v24, v16, v17, v18, v14);
  if (v9)
  {
    return (*(v11 + 32))(a9, v14, a7);
  }

  return result;
}

uint64_t TightbeamMessage.init(wrapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  *(a2 + 88) = -1;
  result = tb_message_get_transport_buffer(a1);
  if (result)
  {
    *(a2 + 56) = a1;
    *(a2 + 64) = result;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 1;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0;
    *(a2 + 48) = 3;
    *a2 = 1;
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

uint64_t _s9Tightbeam0A7MessageV19withTransportBufferyxxAA0dE0Vzq_YKXEq_YKs5ErrorR_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v6 + 88) == 255)
  {
    result = sub_26F073F50();
    __break(1u);
  }

  else
  {
    result = v11(v6 + 64, v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v7)
    {
      return (*(v10 + 32))(a6, v13, a4);
    }
  }

  return result;
}

uint64_t sub_26F06DA04(size_t a1, uint64_t a2)
{
  if (*(v2 + 48))
  {
    if (*(v2 + 48) == 1)
    {
      v7 = *(v2 + 32);
      v8 = *(v2 + 40);
      __swift_project_boxed_opaque_existential_1((v2 + 8), v7);
      v9 = (*(v8 + 8))(v7, v8);
      if (v9)
      {
        v10 = *(v2 + 56);
        if (v10)
        {
          v6 = tb_service_connection_message_configure_reply(v9, v10, a1, a2);
          if (v6)
          {
LABEL_9:
            a2 = v6;
            type metadata accessor for TransportError(0);
            sub_26F064B50();
            swift_willThrowTypedImpl();
          }

          return a2;
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    v5 = *(v2 + 56);
    if (v5)
    {
      v6 = tb_client_connection_message_reset(*(*(v2 + 8) + 16), v5, a1, a2);
      if (v6)
      {
        goto LABEL_9;
      }

      return a2;
    }
  }

  result = sub_26F073F50();
  __break(1u);
  return result;
}

uint64_t TightbeamMessage.BufferUsage.hashValue.getter()
{
  v1 = *v0;
  sub_26F074050();
  MEMORY[0x274386FB0](v1);
  return sub_26F074080();
}

BOOL static TightbeamMessage.admissionSearchMultiple(table:selector:)(uint64_t *a1, uint64_t a2, char a3, unint64_t a4)
{
  if (a3)
  {
    a2 = 0;
    a1 = 0;
  }

  return tb_component_admission_search_multiple(a1, a2, a4);
}

uint64_t sub_26F06DCC8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a8;
  v22 = a3;
  v33 = *MEMORY[0x277D85DE8];
  v9 = *(a6 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v10 + 24);
  if (v14 >= 2)
  {
    result = sub_26F073F50();
    __break(1u);
  }

  else
  {
    v15 = *v10;
    v16 = *(v10 + 8);
    v17 = *(v10 + 16);
    if (v11)
    {
      v18 = 4;
    }

    else
    {
      v18 = 1;
    }

    v25 = v18;
    v26 = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    v32 = v15;
    TightbeamMessage.init(wrapping:)(&v25, v24);
    v19 = v23;
    v22(v24, v13);
    if (v19)
    {
      (*(v9 + 32))(v21, v13, a6);
      if (!v14)
      {

        v16(v15);
        MEMORY[0x2743877B0](v15, -1, -1);
        sub_26F063E10(v15, v16, v17, 0);
      }

      return sub_26F063E10(v15, v16, v17, v14);
    }

    else
    {
      if (!v14)
      {

        v16(v15);
        MEMORY[0x2743877B0](v15, -1, -1);
        sub_26F063E10(v15, v16, v17, 0);
      }

      return sub_26F063E10(v15, v16, v17, v14);
    }
  }

  return result;
}

uint64_t sub_26F06DFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = sub_26F06E1A0(a1, a2, a7, a9, v18);
  (*(a10 + 8))(v21, v18, a4, a5, a6 & 1, v17, a8, a10, v14);
  v18[2] = v21[2];
  v19 = v21[3];
  v20[0] = v22[0];
  *(v20 + 9) = *(v22 + 9);
  v18[0] = v21[0];
  v18[1] = v21[1];
  if (LOBYTE(v21[0]) == 2)
  {
    return 0;
  }

  v15 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    TightbeamMessage.deinit();
    return v15;
  }

  result = sub_26F073F50();
  __break(1u);
  return result;
}

double sub_26F06E1A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  TightbeamMessage.init(wrapping:)(a1, a5);
  *&v13[8] = a3;
  *&v13[16] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a2, a3);
  v13[24] = 1;
  if (*(a5 + 48) <= 2u)
  {
    sub_26F063DBC(a5 + 8);
  }

  v10 = *v13;
  *(a5 + 8) = v12;
  *(a5 + 24) = v10;
  result = *&v13[9];
  *(a5 + 33) = *&v13[9];
  return result;
}

uint64_t TightbeamMessage.init(buffer:disposition:state:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *a4 = 0;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 64) = 0;
  *(a4 + 88) = -1;
  v11 = swift_slowAlloc();
  *v11 = 0;
  if (v10 >= 2)
  {
    result = sub_26F073F50();
    __break(1u);
  }

  else
  {
    v12 = v11;
    result = tb_message_construct(v11, v7, a2);
    if ((a3 & 0x100000000) == 0)
    {
      *v12 = a3;
    }

    *(a4 + 8) = 0u;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0;
    *(a4 + 48) = 3;
    *(a4 + 56) = v12;
    *(a4 + 64) = v7;
    *(a4 + 72) = v8;
    *(a4 + 80) = v9;
    *(a4 + 88) = v10;
  }

  return result;
}

__n128 TightbeamMessage.encoder()@<Q0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 48);
  a1[2] = *(v1 + 32);
  a1[3] = v2;
  a1[4] = *(v1 + 64);
  *(a1 + 73) = *(v1 + 73);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v4;
  return result;
}

void TightbeamMessage.deinit()
{
  v1 = *(v0 + 56);
  if (!v1 || (*v0 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (*(v0 + 48) > 1u)
  {
    if (*(v0 + 48) == 2)
    {
      goto LABEL_14;
    }

    v2 = *(v0 + 88);
    if (v2 != 255)
    {
      v1 = *(v0 + 64);
      v3 = *(v0 + 72);
      v0 = *(v0 + 80);
      if (!v2)
      {

        v3(v1);
        MEMORY[0x2743877B0](v1, -1, -1);
        sub_26F063E10(v1, v3, v0, 0);
        LOBYTE(v2) = 0;
      }

      sub_26F063E10(v1, v3, v0, v2);
    }

    sub_26F073F50();
    __break(1u);
LABEL_12:
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    __swift_project_boxed_opaque_existential_1((v0 + 8), v4);
    v6 = (*(v5 + 8))(v4, v5);
    if (!v6)
    {
      __break(1u);
      return;
    }

    tb_service_connection_message_destruct(v6, v1);
    goto LABEL_14;
  }

  if (*(v0 + 48))
  {
    goto LABEL_12;
  }

  tb_client_connection_message_destruct(*(*(v0 + 8) + 16), *(v0 + 56));
LABEL_14:
  tb_message_destruct(v1);
  MEMORY[0x2743877B0](v1, -1, -1);
LABEL_15:
  if (*(v0 + 48) <= 2u)
  {
    sub_26F063DBC(v0 + 8);
  }

  v7 = *(v0 + 88);
  if (v7 != 255)
  {
    v8 = *(v0 + 64);
    v9 = *(v0 + 72);
    v10 = *(v0 + 80);
    if (!v7)
    {

      v9(v8);
      MEMORY[0x2743877B0](v8, -1, -1);
      sub_26F063E10(v8, v9, v10, 0);
      LOBYTE(v7) = 0;
    }

    sub_26F063E10(v8, v9, v10, v7);
  }
}

unint64_t sub_26F06E59C()
{
  result = qword_2806D1508;
  if (!qword_2806D1508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D1508);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9Tightbeam0A7MessageV10Connection33_C29D09F03CCDD34D22F7DF1BD77135E2LLO(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

void *sub_26F06E690(void *result)
{
  v1 = *(result + 40);
  if (v1 >= 3)
  {
    v1 = *result + 3;
  }

  if (v1 == 2)
  {
  }

  if (v1 != 1)
  {
    if (v1)
    {
      return result;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(result);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_26F06E6DC(void *a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return result;
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    v3 = *a1 + 3;
  }

  switch(v3)
  {
    case 2u:
      goto LABEL_7;
    case 1u:
      v4 = a1;
      __swift_destroy_boxed_opaque_existential_1(a1);
      goto LABEL_9;
    case 0u:
LABEL_7:
      v4 = a1;

LABEL_9:
      a1 = v4;
      break;
  }

  v6 = *(a2 + 40);
  if (v6 >= 3)
  {
    v6 = *a2 + 3;
  }

  if (v6 == 2)
  {
    *a1 = *a2;
    *(a1 + 40) = 2;
  }

  else if (v6 == 1)
  {
    result = *a2;
    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 1) = v7;
    a1[4] = *(a2 + 32);
    *(a1 + 40) = 1;
  }

  else if (v6)
  {
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 1) = v8;
    result = *(a2 + 25);
    *(a1 + 25) = result;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t sub_26F06E7C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F06E800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_26F06E84C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t sub_26F06E868(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t ClientConnection.__allocating_init(endpoint:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = TightbeamEndpoint.constructEndpoint()();
  v4 = tb_client_connection_create_with_endpoint(v3);
  tb_client_connection_activate(v4);
  sub_26F0651B4(a1);
  *(v2 + 16) = v4;
  return v2;
}

uint64_t ClientConnection.init(endpoint:)(uint64_t a1)
{
  v2 = v1;
  v4 = TightbeamEndpoint.constructEndpoint()();
  v5 = tb_client_connection_create_with_endpoint(v4);
  tb_client_connection_activate(v5);
  sub_26F0651B4(a1);
  *(v2 + 16) = v5;
  return v2;
}

uint64_t ClientConnection.__allocating_init(connection:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF@<X0>(size_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = -1;

  v7 = swift_slowAlloc();
  *v7 = 0;
  v8 = swift_slowAlloc();
  tb_transport_initialize_message_buffer(v8);
  result = tb_client_connection_message_construct(*(v3 + 16), v7, v8, a1, a2);
  if (result)
  {
    result = sub_26F073F50();
    __break(1u);
  }

  else
  {
    *(a3 + 64) = v8;
    *(a3 + 72) = nullsub_1;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    *(a3 + 8) = v3;
    *(a3 + 48) = 0;
    *(a3 + 56) = v7;
  }

  return result;
}

void _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF(uint64_t a1@<X0>, int *a2@<X1>, _OWORD *a3@<X8>)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v12[0] = 0;
  v5 = *(a1 + 56);
  if (v5)
  {
    v8 = tb_connection_send_query(*(v3 + 16), v5, v12, 2uLL);
    if (v8)
    {
      v9 = v8;
LABEL_4:
      type metadata accessor for TransportError(0);
      sub_26F064B50();
      swift_willThrowTypedImpl();
      TightbeamMessage.deinit();
      *a2 = v9;
      return;
    }

    if (!v12[0])
    {
      v9 = 4;
      goto LABEL_4;
    }

    if (v5 == v12[0])
    {
      v10 = *(a1 + 48);
      a3[2] = *(a1 + 32);
      a3[3] = v10;
      a3[4] = *(a1 + 64);
      *(a3 + 73) = *(a1 + 73);
      v11 = *(a1 + 16);
      *a3 = *a1;
      a3[1] = v11;
    }

    else
    {
      TightbeamMessage.init(wrapping:)(v12[0], a3);
      TightbeamMessage.deinit();
    }
  }

  else
  {
    sub_26F073F50();
    __break(1u);
  }
}

uint64_t _s9Tightbeam16ClientConnectionC10sendOneway7messageyAA0A7MessageVn_tSo10tb_error_taYKF(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = tb_connection_send_query(*(v1 + 16), v2, 0, 0);
    if (v3)
    {
      type metadata accessor for TransportError(0);
      sub_26F064B50();
      swift_willThrowTypedImpl();
    }

    TightbeamMessage.deinit();
    return v3;
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

uint64_t ClientConnection.__deallocating_deinit()
{
  tb_client_connection_destruct(*(v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t _tb_eve_transport_construct_message_buffer(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(result, 24))
  {
    __break(1u);
  }

  else if (result + 24 <= 4096)
  {
    v4 = swift_slowAlloc();
    result = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = 0;
    *a3 = v4;
    *(a3 + 8) = 0;
    *(a3 + 16) = xmmword_26F076370;
    *(a3 + 32) = 24;
    *(a3 + 48) = 0;
  }

  else
  {
    return 2;
  }

  return result;
}

uint64_t _tb_eve_transport_message_buffer_reset(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 + 24;
  if (__OFADD__(a3, 24))
  {
    __break(1u);
  }

  else if (v3 <= 4096)
  {
    v4 = result;
    result = 0;
    *(v4 + 16) = 24;
    *(v4 + 24) = v3;
    *(v4 + 41) = 1;
  }

  else
  {
    return 2;
  }

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

uint64_t sub_26F06EE8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 64))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26F06EEE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26F06EF54(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  if (a4)
  {
    v12 = a5;
    result = (*(*(a7 + 8) + 8))(a1, &v11, a6);
    if (v8)
    {
      *a8 = v11;
    }
  }

  else
  {
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

uint64_t sub_26F06F004(uint64_t a1, uint64_t a2, uint64_t a3, char a4, _DWORD *a5, uint64_t a6)
{
  result = sub_26F06EF54(a1, a2, a3, a4 & 1, *v6, *(a6 + 16), *(a6 + 24), &v10);
  if (v7)
  {
    *a5 = v10;
  }

  return result;
}

uint64_t sub_26F06F094(uint64_t a1)
{
  sub_26F06FB34(a1);

  return swift_unknownObjectRelease();
}

void (*sub_26F06F0CC(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_26F06F15C;
}

void sub_26F06F15C(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t ServiceConnection.__allocating_init(endpoint:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ServiceConnection.init(endpoint:)(a1);
  return v2;
}

uint64_t ServiceConnection.init(endpoint:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  swift_unknownObjectWeakInit();
  v4 = TightbeamEndpoint.constructEndpoint()();
  v13[4] = sub_26F06FB7C;
  v13[5] = v2;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_26F06F428;
  v13[3] = &block_descriptor_3;
  v5 = _Block_copy(v13);

  v6 = tb_service_connection_create_with_endpoint(v4, v5);
  _Block_release(v5);
  if (qword_2806D11A8 != -1)
  {
    swift_once();
  }

  v7 = sub_26F073970();
  __swift_project_value_buffer(v7, qword_2806D1620);
  v8 = sub_26F073950();
  v9 = sub_26F073E10();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_26F06F6F4(0xD00000000000001BLL, 0x800000026F079610, v13);
    _os_log_impl(&dword_26F04A000, v8, v9, "%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2743877B0](v11, -1, -1);
    MEMORY[0x2743877B0](v10, -1, -1);
  }

  sub_26F0651B4(a1);
  *(v2 + 16) = v6;
  return v2;
}

uint64_t sub_26F06F428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

uint64_t sub_26F06F484(uint64_t a1)
{
  v3 = *v1;
  v14 = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(v3 + 80);
    v7 = *(v3 + 88);
    v13 = Strong;
    v8 = type metadata accessor for ServiceConnection(0, v6, v7, v5);
    v10 = type metadata accessor for UnverifiedServiceAdapter(0, v6, v7, v9);
    swift_unknownObjectRetain();
    v11 = sub_26F06DFDC(a1, &v14, &v13, 0, 0, 1, v8, v10, &off_287F0DA88, &off_287F0DBF0);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v11;
  }

  else
  {

    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

uint64_t *sub_26F06F5E8()
{
  result = *(v0 + 16);
  if (result)
  {
    return tb_service_connection_activate(result);
  }

  __break(1u);
  return result;
}

void *ServiceConnection.deinit()
{
  result = *(v0 + 16);
  if (result)
  {
    tb_service_connection_destruct(result);
    MEMORY[0x274387820](v0 + 24);
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ServiceConnection.__deallocating_deinit()
{
  ServiceConnection.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void *sub_26F06F680(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D1300, &unk_26F075750);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_26F06F6F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26F06F7C0(v11, 0, 0, 1, a1, a2);
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
    sub_26F06FD20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26F06F7C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26F06F8CC(a5, a6);
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
    result = sub_26F073F30();
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

void *sub_26F06F8CC(uint64_t a1, unint64_t a2)
{
  v3 = sub_26F06F918(a1, a2);
  sub_26F06FA48(byte_287F0CAB8);
  return v3;
}

void *sub_26F06F918(uint64_t a1, unint64_t a2)
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

  v6 = sub_26F06F680(v5, 0);
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

  result = sub_26F073F30();
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
        v10 = sub_26F073D40();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26F06F680(v10, 0);
        result = sub_26F073EF0();
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

char *sub_26F06FA48(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_26F061794(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v7 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26F06FB7C(uint64_t a1, uint64_t a2)
{

  return sub_26F06F484(a2);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F06FD20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26F06FD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t TightbeamServiceProxy.init(endpoint:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for TightbeamEndpoint(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F06BB90(a1, v6);
  type metadata accessor for ClientConnection();
  v7 = swift_allocObject();
  v8 = TightbeamEndpoint.constructEndpoint()();
  v9 = tb_client_connection_create_with_endpoint(v8);
  tb_client_connection_activate(v9);
  sub_26F0651B4(a1);
  result = sub_26F0651B4(v6);
  *(v7 + 16) = v9;
  *a2 = v7;
  return result;
}

void _s9Tightbeam0A12ServiceProxyV4send5bytes16replyCapabilites_AA0A7DecoderVSgSi_SiyAA0A7EncoderVzSo10tb_error_taYKXEtAMYKF(size_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(_OWORD *)@<X2>, _DWORD *a4@<X4>, _OWORD *a5@<X8>)
{
  v26 = a4;
  v10 = *v5;

  v11 = swift_slowAlloc();
  *v11 = 0;
  v12 = swift_slowAlloc();
  tb_transport_initialize_message_buffer(v12);
  if (tb_client_connection_message_construct(*(v10 + 16), v11, v12, a1, a2))
  {
    goto LABEL_6;
  }

  LOBYTE(v23[0]) = 0;
  *(&v23[0] + 1) = v10;
  LOBYTE(v24) = 0;
  *(&v24 + 1) = v11;
  *v25 = v12;
  *&v25[8] = nullsub_1;
  *&v25[16] = 0;
  v25[24] = 0;
  v13 = a3(v23);
  if (v6)
  {
    v14 = v13;
    TightbeamMessage.deinit();
    *v26 = v14;
    return;
  }

  if (!*(&v24 + 1))
  {
LABEL_6:
    sub_26F073F50();
    __break(1u);
  }

  else
  {
    tb_message_complete(*(&v24 + 1));
    v19[2] = v23[2];
    v19[3] = v24;
    v20[0] = *v25;
    *(v20 + 9) = *&v25[9];
    v19[0] = v23[0];
    v19[1] = v23[1];
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF(v19, &v18, v21);
    v15 = v21[3];
    a5[2] = v21[2];
    a5[3] = v15;
    a5[4] = v22[0];
    *(a5 + 73) = *(v22 + 9);
    v16 = v21[1];
    *a5 = v21[0];
    a5[1] = v16;
  }
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for TightbeamServiceProxy(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for TightbeamServiceProxy(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26F0701C0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_26F073F00();

    v2 = tb_error_t.description.getter(v1);
    MEMORY[0x274386C80](v2);

    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

uint64_t sub_26F07026C()
{
  v0 = sub_26F073970();
  __swift_allocate_value_buffer(v0, qword_2806D1620);
  __swift_project_value_buffer(v0, qword_2806D1620);
  return sub_26F073960();
}

uint64_t sub_26F0702D8()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t _tb_delegated_client_transport_create(uint64_t a1)
{
  data = tb_endpoint_get_data(a1);
  type metadata accessor for DelegatedTransportClient();
  v2 = swift_allocObject();
  *(v2 + 16) = data;
  *(v2 + 24) = 0;

  return v2;
}

uint64_t sub_26F0703AC(__int128 *a1, uint64_t a2)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  v33 = *a1;
  v38 = *a1;
  v39 = v4;
  v40 = v5;
  v6 = TransportBuffer.rawData.getter();
  v8 = v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D13D8, &unk_26F0759B0);
  v37 = sub_26F06D330();
  v35[0] = v6;
  v35[1] = v8;
  v9 = __swift_project_boxed_opaque_existential_1(v35, v36);
  if (*v9)
  {
    v10 = (v9[1] + *v9);
  }

  else
  {
    v10 = 0;
  }

  sub_26F06D394(*v9, v10, v34);
  v12 = v34[0];
  v11 = v34[1];
  __swift_destroy_boxed_opaque_existential_1(v35);
  v13 = *(*(a2 + 16) + 16);

  v14 = v13(v12, v11);
  v16 = v15;

  if (v5 >= 2)
  {
    goto LABEL_34;
  }

  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 != 2)
    {
      tb_delegated_transport_message_buffer_reset(v33, 0, 0);
      goto LABEL_21;
    }

    v20 = *(v14 + 16);
    v19 = *(v14 + 24);
    if (!__OFSUB__(v19, v20))
    {
      tb_delegated_transport_message_buffer_reset(v33, 0, v19 - v20);
      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (!__OFSUB__(v21, v22))
      {
        if (v21 != v22)
        {
          goto LABEL_16;
        }

LABEL_21:
        sub_26F0588B8(v12, v11);
        v24 = v14;
        v25 = v16;
        return sub_26F0588B8(v24, v25);
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!v17)
  {
    v18 = BYTE6(v16);
    goto LABEL_15;
  }

  if (__OFSUB__(HIDWORD(v14), v14))
  {
    goto LABEL_31;
  }

  v18 = HIDWORD(v14) - v14;
LABEL_15:
  tb_delegated_transport_message_buffer_reset(v33, 0, v18);
  if (!v18)
  {
    goto LABEL_21;
  }

LABEL_16:
  if (v17 == 2)
  {
    v27 = *(v14 + 16);
    v26 = *(v14 + 24);
    v23 = v26 - v27;
    if (!__OFSUB__(v26, v27))
    {
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v17 != 1)
  {
LABEL_25:
    v23 = BYTE6(v16);
    goto LABEL_26;
  }

  if (__OFSUB__(HIDWORD(v14), v14))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v23 = HIDWORD(v14) - v14;
LABEL_26:
  v29 = *a1;
  v28 = *(a1 + 1);
  v30 = *(a1 + 2);
  v31 = *(a1 + 24);
  sub_26F067F50(v14, v16, v23, v29, v28, v30, v31);
  if (v31 < 2 && v29[3] >= 1)
  {
    v29[2] = 0;
    sub_26F0588B8(v14, v16);
    v24 = v12;
    v25 = v11;
    return sub_26F0588B8(v24, v25);
  }

LABEL_34:
  result = sub_26F073F50();
  __break(1u);
  return result;
}

uint64_t _tb_delegated_client_transport_send_message_0(uint64_t a1, uint64_t a2, void *a3)
{
  context = tb_transport_get_context(a1);

  TightbeamMessage.init(wrapping:)(a2, v8);
  if (v11 == 255 || (sub_26F0703AC(&v10, context), (v6 = v9) == 0))
  {
    result = sub_26F073F50();
    __break(1u);
  }

  else
  {
    tb_message_set_state(v9, 4);
    TightbeamMessage.deinit();

    if (a3)
    {
      *a3 = v6;
    }

    return 0;
  }

  return result;
}

BOOL admissionSearch(_:_:)(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = v3 - 1;
  v5 = (v3 - 1) / 2;
  if (v3 <= v5)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = *(v2 + 8 * v5);
    result = v7 == a2;
    if (v7 == a2)
    {
      break;
    }

    if (v7 > a2)
    {
      result = 0;
      v4 = v5 - 1;
    }

    else
    {
      v6 = v5 + 1;
    }

    v5 = v6 + (v4 - v6) / 2;
    if (v5 >= v6)
    {
      v10 = __OFSUB__(v4, v5);
      v9 = v4 - v5 < 0;
    }

    else
    {
      v10 = 0;
      v9 = 1;
    }
  }

  while (v9 == v10);
  return result;
}

uint64_t sub_26F070864()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t _tb_delegated_service_transport_create(uint64_t a1)
{
  tb_endpoint_get_data(a1);
  type metadata accessor for DelegatedTransportService();
  v1 = swift_allocObject();

  sub_26F070960(v2);
  return v1;
}

uint64_t _tb_delegated_service_transport_activate(uint64_t a1)
{
  tb_transport_get_context(a1);

  sub_26F070BD4(a1);

  return 0;
}

void *sub_26F070960(uint64_t a1)
{
  v11 = a1;
  v10 = sub_26F073E30();
  v2 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26F073E20();
  MEMORY[0x28223BE20](v5);
  v6 = sub_26F073C50();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_26F058668();
  v9[1] = &OBJC_IVAR____TtC9Tightbeam25DelegatedTransportService_endpointData;
  v9[2] = v7;
  sub_26F073C40();
  v12 = MEMORY[0x277D84F90];
  sub_26F071554(&qword_2806D12A0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D12A8, &unk_26F0757D0);
  sub_26F063E84(&qword_2806D12B0, &qword_2806D12A8, &unk_26F0757D0, MEMORY[0x277D83970]);
  sub_26F073ED0();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v10);
  v1[3] = sub_26F073E50();
  v1[4] = 0;
  v1[2] = v11;
  return v1;
}

uint64_t sub_26F070BD4(uint64_t a1)
{
  v3 = sub_26F073C30();
  v13 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26F073C50();
  v6 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 32) = a1;
  v11 = *(v1 + 24);
  aBlock[4] = sub_26F0715A0;
  v15 = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F070EC0;
  aBlock[3] = &block_descriptor_12_0;
  v9 = _Block_copy(aBlock);

  sub_26F073C40();
  v16 = MEMORY[0x277D84F90];
  sub_26F071554(&qword_2806D1638, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D1640, &qword_26F076648);
  sub_26F063E84(&qword_2806D1648, &qword_2806D1640, &qword_26F076648, MEMORY[0x277D83970]);
  sub_26F073ED0();
  MEMORY[0x274386D90](0, v8, v5, v9);
  _Block_release(v9);
  (*(v13 + 8))(v5, v3);
  (*(v6 + 8))(v8, v12);
}

uint64_t sub_26F070EC0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_26F070F04()
{
  v1 = sub_26F073C30();
  v24 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26F073C50();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  v8 = *(v7 + 16);

  v10 = v8(v9);
  v20 = v11;
  v21 = v10;
  v12 = v11;

  v13 = sub_26F071238(v10, v12);
  v15 = v14;
  v16 = *(v7 + 32);

  v16(v13, v15);

  v19[1] = *(v0 + 24);
  aBlock[4] = sub_26F071538;
  v27 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F070EC0;
  aBlock[3] = &block_descriptor_4;
  v17 = _Block_copy(aBlock);

  sub_26F073C40();
  v25 = MEMORY[0x277D84F90];
  sub_26F071554(&qword_2806D1638, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D1640, &qword_26F076648);
  sub_26F063E84(&qword_2806D1648, &qword_2806D1640, &qword_26F076648, MEMORY[0x277D83970]);
  sub_26F073ED0();
  MEMORY[0x274386D90](0, v6, v3, v17);
  _Block_release(v17);
  sub_26F0588B8(v13, v15);
  sub_26F0588B8(v21, v20);
  (*(v24 + 8))(v3, v1);
  (*(v22 + 8))(v6, v23);
}

uint64_t sub_26F071238(uint64_t a1, unint64_t a2)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v5 = tb_alloc_message();
  v33[0] = v5;
  v6 = tb_alloc_transport_message_buffer();
  if (!v6)
  {
    goto LABEL_31;
  }

  v7 = v6;
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(a2);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_12;
  }

  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  v9 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
    __break(1u);
LABEL_9:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v9 = HIDWORD(a1) - a1;
  }

LABEL_12:
  v12 = tb_delegated_transport_construct_message_buffer(v9, 0, v7);
  sub_26F0701C0(v12);
  if (!v5)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v13 = tb_message_construct(v5, v7, 1);
  sub_26F0701C0(v13);
  if (v8 <= 1)
  {
    if (!v8)
    {
      v14 = BYTE6(a2);
      goto LABEL_23;
    }

LABEL_20:
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v14 = HIDWORD(a1) - a1;
      goto LABEL_23;
    }

    goto LABEL_30;
  }

  if (v8 == 2)
  {
    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v14 = v15 - v16;
    if (__OFSUB__(v15, v16))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_23:
  sub_26F067F50(a1, a2, v14, v7, 0, 0, 1u);
  if (v7[3] < 1)
  {
    result = sub_26F073F50();
    __break(1u);
    return result;
  }

  v7[2] = 0;
  tb_message_set_state(v5, 4);
  v17 = *(v2 + 32);
  if (!v17)
  {
LABEL_33:
    __break(1u);
  }

  tb_transport_call_message_handler(v17, v5, v33);
  v30 = 0;
  v31 = 0;
  v29 = v7;
  v32 = 1;
  v18 = TransportBuffer.data.getter();
  v20 = v19;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D13D8, &unk_26F0759B0);
  v28 = sub_26F063E84(&qword_2806D13E0, &qword_2806D13D8, &unk_26F0759B0, MEMORY[0x277CC9BC0]);
  v26[0] = v18;
  v26[1] = v20;
  v21 = __swift_project_boxed_opaque_existential_1(v26, v27);
  if (*v21)
  {
    v22 = (v21[1] + *v21);
  }

  else
  {
    v22 = 0;
  }

  sub_26F06D394(*v21, v22, &v25);
  v23 = v25;
  __swift_destroy_boxed_opaque_existential_1(v26);
  tb_delegated_transport_destruct_message_buffer(v7);
  tb_free_message(v7);
  tb_free_message(v33[0]);
  sub_26F063E10(v7, 0, 0, 1);
  return v23;
}

uint64_t sub_26F0714F8()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F071554(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void _tb_delegated_c_service_transport_create_cold_1()
{
  printf("TB_ASSERT: ptr != ((void*)0), \b\b (%s:%d)\n", "internal.h", 179);
  _os_crash("TB_ASSERT: ptr != ((void*)0)");
  __break(1u);
}

void tb_afk_interface_transport_create_cold_1()
{
  printf("TB_ASSERT: ptr != __null, \b\b (%s:%d)\n", "internal.h", 179);
  _os_crash("TB_ASSERT: ptr != __null");
  __break(1u);
}

void __tb_afk_interface_transport_create_block_invoke_cold_1(int a1)
{
  printf("TB_ASSERT: response->state == TB_MESSAGE_STATE_READY, %u (%s:%d)\n", a1, "afk_interface_transport.cpp", 132);
  _os_crash("TB_ASSERT: response->state == TB_MESSAGE_STATE_READY");
  __break(1u);
}

void _tb_afk_interface_transport_send_message(int a1)
{
  printf("TB_ASSERT: query->state == TB_MESSAGE_STATE_SENT, %u (%s:%d)\n", a1, "afk_interface_transport.cpp", 40);
  _os_crash("TB_ASSERT: query->state == TB_MESSAGE_STATE_SENT");
  __break(1u);
}

void _tb_afk_interface_transport_send_message()
{
  printf("TB_ASSERT: response, \b\b (%s:%d)\n", "afk_interface_transport.cpp", 67);
  _os_crash("TB_ASSERT: response");
  __break(1u);
}

void _tb_afk_common_transport_construct_message_buffer_cold_1()
{
  printf("TB_ASSERT: ptr != ((void*)0), \b\b (%s:%d)\n", "internal.h", 174);
  _os_crash("TB_ASSERT: ptr != ((void*)0)");
  __break(1u);
}

void tb_afk_user_transport_create_cold_1()
{
  printf("TB_ASSERT: afk_tpt->interface, \b\b (%s:%d)\n", "afk_user_transport.m", 112);
  _os_crash("TB_ASSERT: afk_tpt->interface");
  __break(1u);
}

void __tb_afk_user_transport_create_block_invoke_2_cold_1(int a1)
{
  printf("TB_ASSERT: response->state == TB_MESSAGE_STATE_READY, %u (%s:%d)\n", a1, "afk_user_transport.m", 154);
  _os_crash("TB_ASSERT: response->state == TB_MESSAGE_STATE_READY");
  __break(1u);
}

void _tb_afk_user_transport_send_message_cold_1(int a1)
{
  printf("TB_ASSERT: query->state == TB_MESSAGE_STATE_SENT, %u (%s:%d)\n", a1, "afk_user_transport.m", 27);
  _os_crash("TB_ASSERT: query->state == TB_MESSAGE_STATE_SENT");
  __break(1u);
}

void _tb_afk_user_transport_send_message_cold_2()
{
  printf("TB_ASSERT: response, \b\b (%s:%d)\n", "afk_user_transport.m", 60);
  _os_crash("TB_ASSERT: response");
  __break(1u);
}

void _tb_null_transport_send_message_cold_1(int a1)
{
  printf("TB_ASSERT: err == TB_ERROR_SUCCESS, %u (%s:%d)\n", a1, "null_transport.c", 210);
  _os_crash("TB_ASSERT: err == TB_ERROR_SUCCESS");
  __break(1u);
}

void _tb_delegated_c_client_transport_send_message_cold_1()
{
  printf("TB_ASSERT: response_data.sz > 0 && response_data.buffer != ((void*)0) || response_data.sz == 0, \b\b (%s:%d)\n", "delegated_c_client.c", 60);
  _os_crash("TB_ASSERT: response_data.sz > 0 && response_data.buffer != ((void*)0) || response_data.sz == 0");
  __break(1u);
}

void tb_message_construct_cold_1(int a1)
{
  printf("TB_ASSERT: self->state == TB_MESSAGE_STATE_UNINITIALIZED, %u (%s:%d)\n", a1, "tb_message.c", 85);
  _os_crash("TB_ASSERT: self->state == TB_MESSAGE_STATE_UNINITIALIZED");
  __break(1u);
}

void tb_message_configure_received_cold_1(unsigned __int8 a1)
{
  printf("TB_ASSERT: (disposition == TB_MESSAGE_DISPOSITION_REPLY || disposition == TB_MESSAGE_DISPOSITION_QUERY), %hhu (%s:%d)\n", a1, "tb_message.c", 165);
  _os_crash("TB_ASSERT: (disposition == TB_MESSAGE_DISPOSITION_REPLY || disposition == TB_MESSAGE_DISPOSITION_QUERY)");
  __break(1u);
}

void tb_message_measure_subrange_cold_1()
{
  printf("TB_FATAL: overflow detected when subtracting (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 225);
  _os_crash("TB_FATAL: overflow detected when subtracting");
  __break(1u);
}

void tb_message_subrange_cold_1(uint64_t a1, uint64_t a2)
{
  printf("TB_ASSERT: end <= msg->transport_buffer->size, %zu, %zu (%s:%d)\n", a1, a2, "tb_message.c", 237);
  _os_crash("TB_ASSERT: end <= msg->transport_buffer->size");
  __break(1u);
}

void tb_message_subrange_cold_2()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 236);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_subrange_cold_3(uint64_t a1, uint64_t a2)
{
  printf("TB_ASSERT: start <= msg->transport_buffer->size, %llu, %zu (%s:%d)\n", a1, a2, "tb_message.c", 233);
  _os_crash("TB_ASSERT: start <= msg->transport_buffer->size");
  __break(1u);
}

void tb_message_precheck_encoding_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING, \b\b (%s:%d)\n", "tb_message.c", 526);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING");
  __break(1u);
}

void tb_message_precheck_encoding_cold_2()
{
  printf("TB_FATAL: TB: overflow during encoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 526);
  _os_crash("TB_FATAL: TB: overflow during encoding");
  __break(1u);
}

void tb_message_precheck_encoding_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 526);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_encode_BOOL_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING, \b\b (%s:%d)\n", "tb_message.c", 532);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING");
  __break(1u);
}

void tb_message_encode_BOOL_cold_2()
{
  printf("TB_FATAL: TB: overflow during encoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 532);
  _os_crash("TB_FATAL: TB: overflow during encoding");
  __break(1u);
}

void tb_message_encode_BOOL_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 532);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_encode_u8_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING, \b\b (%s:%d)\n", "tb_message.c", 544);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING");
  __break(1u);
}

void tb_message_encode_u8_cold_2()
{
  printf("TB_FATAL: TB: overflow during encoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 544);
  _os_crash("TB_FATAL: TB: overflow during encoding");
  __break(1u);
}

void tb_message_encode_u8_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 544);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_encode_u16_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING, \b\b (%s:%d)\n", "tb_message.c", 556);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING");
  __break(1u);
}

void tb_message_encode_u16_cold_2()
{
  printf("TB_FATAL: TB: overflow during encoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 556);
  _os_crash("TB_FATAL: TB: overflow during encoding");
  __break(1u);
}

void tb_message_encode_u16_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 556);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_encode_u32_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING, \b\b (%s:%d)\n", "tb_message.c", 568);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING");
  __break(1u);
}

void tb_message_encode_u32_cold_2()
{
  printf("TB_FATAL: TB: overflow during encoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 568);
  _os_crash("TB_FATAL: TB: overflow during encoding");
  __break(1u);
}

void tb_message_encode_u32_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 568);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_encode_u64_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING, \b\b (%s:%d)\n", "tb_message.c", 580);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING");
  __break(1u);
}

void tb_message_encode_u64_cold_2()
{
  printf("TB_FATAL: TB: overflow during encoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 580);
  _os_crash("TB_FATAL: TB: overflow during encoding");
  __break(1u);
}

void tb_message_encode_u64_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 580);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_encode_s8_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING, \b\b (%s:%d)\n", "tb_message.c", 592);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING");
  __break(1u);
}

void tb_message_encode_s8_cold_2()
{
  printf("TB_FATAL: TB: overflow during encoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 592);
  _os_crash("TB_FATAL: TB: overflow during encoding");
  __break(1u);
}

void tb_message_encode_s8_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 592);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_encode_s16_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING, \b\b (%s:%d)\n", "tb_message.c", 604);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING");
  __break(1u);
}

void tb_message_encode_s16_cold_2()
{
  printf("TB_FATAL: TB: overflow during encoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 604);
  _os_crash("TB_FATAL: TB: overflow during encoding");
  __break(1u);
}

void tb_message_encode_s16_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 604);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_encode_s32_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING, \b\b (%s:%d)\n", "tb_message.c", 616);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING");
  __break(1u);
}

void tb_message_encode_s32_cold_2()
{
  printf("TB_FATAL: TB: overflow during encoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 616);
  _os_crash("TB_FATAL: TB: overflow during encoding");
  __break(1u);
}

void tb_message_encode_s32_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 616);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_encode_s64_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING, \b\b (%s:%d)\n", "tb_message.c", 628);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING");
  __break(1u);
}

void tb_message_encode_s64_cold_2()
{
  printf("TB_FATAL: TB: overflow during encoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 628);
  _os_crash("TB_FATAL: TB: overflow during encoding");
  __break(1u);
}

void tb_message_encode_s64_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 628);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_encode_f32_v2_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING, \b\b (%s:%d)\n", "tb_message.c", 642);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING");
  __break(1u);
}

void tb_message_encode_f32_v2_cold_2()
{
  printf("TB_FATAL: TB: overflow during encoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 642);
  _os_crash("TB_FATAL: TB: overflow during encoding");
  __break(1u);
}

void tb_message_encode_f32_v2_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 642);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_encode_f32_cold_1(int a1)
{
  printf("TB_FATAL: tb_message_encode_f32_v2: %d (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 661);
  _os_crash("TB_FATAL: tb_message_encode_f32_v2: %d", v1);
  __break(1u);
}

void tb_message_raw_encode_f32_cold_1(int a1)
{
  printf("TB_FATAL: tb_message_raw_encode_f32_v2: %d (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 667);
  _os_crash("TB_FATAL: tb_message_raw_encode_f32_v2: %d", v1);
  __break(1u);
}

void tb_message_encode_f64_v2_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING, \b\b (%s:%d)\n", "tb_message.c", 676);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_PREPARING");
  __break(1u);
}

void tb_message_encode_f64_v2_cold_2()
{
  printf("TB_FATAL: TB: overflow during encoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 676);
  _os_crash("TB_FATAL: TB: overflow during encoding");
  __break(1u);
}

void tb_message_encode_f64_v2_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 676);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_encode_f64_cold_1(int a1)
{
  printf("TB_FATAL: tb_message_encode_f64_v2: %d (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 695);
  _os_crash("TB_FATAL: tb_message_encode_f64_v2: %d", v1);
  __break(1u);
}

void tb_message_raw_encode_f64_cold_1(int a1)
{
  printf("TB_FATAL: tb_message_raw_encode_f64_v2: %d (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 701);
  _os_crash("TB_FATAL: tb_message_raw_encode_f64_v2: %d", v1);
  __break(1u);
}

void tb_message_encode_buffer_cold_1(uint64_t a1, uint64_t a2)
{
  printf("TB_ASSERT: end <= tpt_buf->size, %zu, %zu (%s:%d)\n", a1, a2, "tb_message.c", 714);
  _os_crash("TB_ASSERT: end <= tpt_buf->size");
  __break(1u);
}

void tb_message_encode_buffer_cold_2()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 713);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_precheck_decoding_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED, \b\b (%s:%d)\n", "tb_message.c", 725);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED");
  __break(1u);
}

void tb_message_precheck_decoding_cold_2()
{
  printf("TB_FATAL: TB: overflow during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 725);
  _os_crash("TB_FATAL: TB: overflow during decoding");
  __break(1u);
}

void tb_message_precheck_decoding_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 725);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_precheck_decoding_cold_4()
{
  printf("TB_FATAL: TB: size 0 buffer during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 725);
  _os_crash("TB_FATAL: TB: size 0 buffer during decoding");
  __break(1u);
}

void tb_message_decode_BOOL_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED, \b\b (%s:%d)\n", "tb_message.c", 731);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED");
  __break(1u);
}

void tb_message_decode_BOOL_cold_2()
{
  printf("TB_FATAL: TB: overflow during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 731);
  _os_crash("TB_FATAL: TB: overflow during decoding");
  __break(1u);
}

void tb_message_decode_BOOL_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 731);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_decode_BOOL_cold_4()
{
  printf("TB_FATAL: TB: size 0 buffer during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 731);
  _os_crash("TB_FATAL: TB: size 0 buffer during decoding");
  __break(1u);
}

void tb_message_decode_u8_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED, \b\b (%s:%d)\n", "tb_message.c", 743);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED");
  __break(1u);
}

void tb_message_decode_u8_cold_2()
{
  printf("TB_FATAL: TB: overflow during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 743);
  _os_crash("TB_FATAL: TB: overflow during decoding");
  __break(1u);
}

void tb_message_decode_u8_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 743);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_decode_u8_cold_4()
{
  printf("TB_FATAL: TB: size 0 buffer during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 743);
  _os_crash("TB_FATAL: TB: size 0 buffer during decoding");
  __break(1u);
}

void tb_message_decode_u16_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED, \b\b (%s:%d)\n", "tb_message.c", 755);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED");
  __break(1u);
}

void tb_message_decode_u16_cold_2()
{
  printf("TB_FATAL: TB: overflow during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 755);
  _os_crash("TB_FATAL: TB: overflow during decoding");
  __break(1u);
}

void tb_message_decode_u16_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 755);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_decode_u16_cold_4()
{
  printf("TB_FATAL: TB: size 0 buffer during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 755);
  _os_crash("TB_FATAL: TB: size 0 buffer during decoding");
  __break(1u);
}

void tb_message_decode_u32_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED, \b\b (%s:%d)\n", "tb_message.c", 767);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED");
  __break(1u);
}

void tb_message_decode_u32_cold_2()
{
  printf("TB_FATAL: TB: overflow during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 767);
  _os_crash("TB_FATAL: TB: overflow during decoding");
  __break(1u);
}

void tb_message_decode_u32_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 767);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_decode_u32_cold_4()
{
  printf("TB_FATAL: TB: size 0 buffer during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 767);
  _os_crash("TB_FATAL: TB: size 0 buffer during decoding");
  __break(1u);
}

void tb_message_decode_u64_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED, \b\b (%s:%d)\n", "tb_message.c", 779);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED");
  __break(1u);
}

void tb_message_decode_u64_cold_2()
{
  printf("TB_FATAL: TB: overflow during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 779);
  _os_crash("TB_FATAL: TB: overflow during decoding");
  __break(1u);
}

void tb_message_decode_u64_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 779);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_decode_u64_cold_4()
{
  printf("TB_FATAL: TB: size 0 buffer during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 779);
  _os_crash("TB_FATAL: TB: size 0 buffer during decoding");
  __break(1u);
}

void tb_message_decode_s8_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED, \b\b (%s:%d)\n", "tb_message.c", 791);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED");
  __break(1u);
}

void tb_message_decode_s8_cold_2()
{
  printf("TB_FATAL: TB: overflow during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 791);
  _os_crash("TB_FATAL: TB: overflow during decoding");
  __break(1u);
}

void tb_message_decode_s8_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 791);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_decode_s8_cold_4()
{
  printf("TB_FATAL: TB: size 0 buffer during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 791);
  _os_crash("TB_FATAL: TB: size 0 buffer during decoding");
  __break(1u);
}

void tb_message_decode_s16_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED, \b\b (%s:%d)\n", "tb_message.c", 803);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED");
  __break(1u);
}

void tb_message_decode_s16_cold_2()
{
  printf("TB_FATAL: TB: overflow during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 803);
  _os_crash("TB_FATAL: TB: overflow during decoding");
  __break(1u);
}

void tb_message_decode_s16_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 803);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_decode_s16_cold_4()
{
  printf("TB_FATAL: TB: size 0 buffer during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 803);
  _os_crash("TB_FATAL: TB: size 0 buffer during decoding");
  __break(1u);
}

void tb_message_decode_s32_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED, \b\b (%s:%d)\n", "tb_message.c", 815);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED");
  __break(1u);
}

void tb_message_decode_s32_cold_2()
{
  printf("TB_FATAL: TB: overflow during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 815);
  _os_crash("TB_FATAL: TB: overflow during decoding");
  __break(1u);
}

void tb_message_decode_s32_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 815);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_decode_s32_cold_4()
{
  printf("TB_FATAL: TB: size 0 buffer during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 815);
  _os_crash("TB_FATAL: TB: size 0 buffer during decoding");
  __break(1u);
}

void tb_message_decode_s64_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED, \b\b (%s:%d)\n", "tb_message.c", 827);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED");
  __break(1u);
}

void tb_message_decode_s64_cold_2()
{
  printf("TB_FATAL: TB: overflow during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 827);
  _os_crash("TB_FATAL: TB: overflow during decoding");
  __break(1u);
}

void tb_message_decode_s64_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 827);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_decode_s64_cold_4()
{
  printf("TB_FATAL: TB: size 0 buffer during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 827);
  _os_crash("TB_FATAL: TB: size 0 buffer during decoding");
  __break(1u);
}

void tb_message_decode_f32_v2_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED, \b\b (%s:%d)\n", "tb_message.c", 840);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED");
  __break(1u);
}

void tb_message_decode_f32_v2_cold_2()
{
  printf("TB_FATAL: TB: overflow during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 840);
  _os_crash("TB_FATAL: TB: overflow during decoding");
  __break(1u);
}

void tb_message_decode_f32_v2_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 840);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_decode_f32_v2_cold_4()
{
  printf("TB_FATAL: TB: size 0 buffer during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 840);
  _os_crash("TB_FATAL: TB: size 0 buffer during decoding");
  __break(1u);
}

void tb_message_decode_f32_cold_1(int a1)
{
  printf("TB_FATAL: tb_message_decode_f32_v2: %d (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 854);
  _os_crash("TB_FATAL: tb_message_decode_f32_v2: %d", v1);
  __break(1u);
}

void tb_message_raw_decode_f32_cold_1(int a1)
{
  printf("TB_FATAL: tb_message_raw_decode_f32_v2: %d (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 860);
  _os_crash("TB_FATAL: tb_message_raw_decode_f32_v2: %d", v1);
  __break(1u);
}

void tb_message_decode_f64_v2_cold_1()
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED, \b\b (%s:%d)\n", "tb_message.c", 868);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED");
  __break(1u);
}

void tb_message_decode_f64_v2_cold_2()
{
  printf("TB_FATAL: TB: overflow during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 868);
  _os_crash("TB_FATAL: TB: overflow during decoding");
  __break(1u);
}

void tb_message_decode_f64_v2_cold_3()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 868);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_decode_f64_v2_cold_4()
{
  printf("TB_FATAL: TB: size 0 buffer during decoding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 868);
  _os_crash("TB_FATAL: TB: size 0 buffer during decoding");
  __break(1u);
}

void tb_message_decode_f64_cold_1(int a1)
{
  printf("TB_FATAL: tb_message_decode_f64_v2: %d (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 882);
  _os_crash("TB_FATAL: tb_message_decode_f64_v2: %d", v1);
  __break(1u);
}

void tb_message_raw_decode_f64_cold_1(int a1)
{
  printf("TB_FATAL: tb_message_raw_decode_f64_v2: %d (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 888);
  _os_crash("TB_FATAL: tb_message_raw_decode_f64_v2: %d", v1);
  __break(1u);
}

void tb_message_decode_buffer_cold_1(uint64_t a1, uint64_t a2)
{
  printf("TB_ASSERT: end <= tpt_buf->size, %zu, %zu (%s:%d)\n", a1, a2, "tb_message.c", 901);
  _os_crash("TB_ASSERT: end <= tpt_buf->size");
  __break(1u);
}

void tb_message_decode_buffer_cold_2()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_message.c", 900);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void __tb_service_connection_create_block_invoke_cold_1(unsigned int *a1)
{
  state = tb_message_get_state(a1);
  printf("TB_ASSERT: tb_message_get_state(message) == TB_MESSAGE_STATE_RECEIVED, %u (%s:%d)\n", state, "tb_connection.c", 354);
  _os_crash("TB_ASSERT: tb_message_get_state(message) == TB_MESSAGE_STATE_RECEIVED");
  __break(1u);
}

void __tb_service_connection_create_block_invoke_cold_2(uint64_t a1)
{
  disposition = tb_message_get_disposition(a1);
  printf("TB_ASSERT: tb_message_get_disposition(message) == TB_MESSAGE_DISPOSITION_QUERY, %hhu (%s:%d)\n", disposition, "tb_connection.c", 356);
  _os_crash("TB_ASSERT: tb_message_get_disposition(message) == TB_MESSAGE_DISPOSITION_QUERY");
  __break(1u);
}

void __tb_service_connection_create_block_invoke_cold_3()
{
  printf("TB_ASSERT: buffer->payload != ((void*)0), \b\b (%s:%d)\n", "tb_connection.c", 358);
  _os_crash("TB_ASSERT: buffer->payload != ((void*)0)");
  __break(1u);
}

void __tb_service_connection_create_block_invoke_cold_4()
{
  printf("TB_ASSERT: buffer, \b\b (%s:%d)\n", "tb_connection.c", 357);
  _os_crash("TB_ASSERT: buffer");
  __break(1u);
}

void _get_reply_list_cold_1()
{
  printf("TB_FATAL: Attempt to retrieve reply list in environment without large message support (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_connection.c", 119);
  _os_crash("TB_FATAL: Attempt to retrieve reply list in environment without large message support");
  __break(1u);
}

void _get_accumulator_list_cold_1()
{
  printf("TB_FATAL: Attempt to retrieve accumulator in environment without large message support (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_connection.c", 95);
  _os_crash("TB_FATAL: Attempt to retrieve accumulator in environment without large message support");
  __break(1u);
}

void _tb_connection_transport_for_endpoint_inplace_cold_1()
{
  printf("TB_ASSERT: 0 && invalid transport type for static initialisation, \b\b (%s:%d)\n", "tb_connection.c", 266);
  _os_crash("TB_ASSERT: 0 && invalid transport type for static initialisation");
  __break(1u);
}

void tb_connection_send_query_cold_1(int a1)
{
  printf("TB_ASSERT: query->state == TB_MESSAGE_STATE_READY, %u (%s:%d)\n", a1, "tb_connection.c", 525);
  _os_crash("TB_ASSERT: query->state == TB_MESSAGE_STATE_READY");
  __break(1u);
}

void tb_connection_send_query_cold_2(unsigned __int8 a1)
{
  printf("TB_ASSERT: query->disposition == TB_MESSAGE_DISPOSITION_QUERY, %hhu (%s:%d)\n", a1, "tb_connection.c", 526);
  _os_crash("TB_ASSERT: query->disposition == TB_MESSAGE_DISPOSITION_QUERY");
  __break(1u);
}

void tb_connection_dealloc_destruct_owned_transport_message_buffer_cold_1()
{
  printf("TB_ASSERT: transport_buffer->connection_owned, \b\b (%s:%d)\n", "tb_connection.c", 738);
  _os_crash("TB_ASSERT: transport_buffer->connection_owned");
  __break(1u);
}

void _tb_connection_message_construct_cold_1()
{
  printf("TB_ASSERT: transport_buffer->wrapping == 0, \b\b (%s:%d)\n", "tb_connection.c", 784);
  _os_crash("TB_ASSERT: transport_buffer->wrapping == 0");
  __break(1u);
}

void _tb_connection_message_destruct_cold_1()
{
  printf("TB_ASSERT: tpt_buf->wrapping == 0, \b\b (%s:%d)\n", "tb_connection.c", 829);
  _os_crash("TB_ASSERT: tpt_buf->wrapping == 0");
  __break(1u);
}

void ___tb_mach_transport_create_block_invoke_cold_1(int a1)
{
  printf("TB_ASSERT: response->state == TB_MESSAGE_STATE_READY, %u (%s:%d)\n", a1, "mach_transport.c", 351);
  _os_crash("TB_ASSERT: response->state == TB_MESSAGE_STATE_READY");
  __break(1u);
}

void _tb_mach_transport_send_message_cold_1(int a1)
{
  printf("TB_ASSERT: query->state == TB_MESSAGE_STATE_SENT, %u (%s:%d)\n", a1, "mach_transport.c", 213);
  _os_crash("TB_ASSERT: query->state == TB_MESSAGE_STATE_SENT");
  __break(1u);
}

void _tb_darwin_transport_send_message_cold_1(int a1)
{
  printf("TB_ASSERT: query->state == TB_MESSAGE_STATE_SENT, %u (%s:%d)\n", a1, "darwin_transport.c", 166);
  _os_crash("TB_ASSERT: query->state == TB_MESSAGE_STATE_SENT");
  __break(1u);
}

void _add_accumulator_cold_1()
{
  printf("TB_ASSERT: success, \b\b (%s:%d)\n", "message_accumulator.c", 35);
  _os_crash("TB_ASSERT: success");
  __break(1u);
}

void tb_message_accumulator_accumulate_cold_1()
{
  printf("TB_ASSERT: !init_err, \b\b (%s:%d)\n", "message_accumulator.c", 146);
  _os_crash("TB_ASSERT: !init_err");
  __break(1u);
}

void tb_message_accumulator_accumulate_cold_3(uint64_t a1, uint64_t a2)
{
  printf("TB_ASSERT: accumulator->total_size >= total, %zu, %zu (%s:%d)\n", a1, a2, "message_accumulator.c", 132);
  _os_crash("TB_ASSERT: accumulator->total_size >= total");
  __break(1u);
}

void tb_message_accumulator_accumulate_cold_4()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/message_accumulator.c", 131);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_accumulator_accumulate_cold_6()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/message_accumulator.c", 82);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_message_accumulator_accumulate_cold_8()
{
  printf("TB_FATAL: overflow detected when multiplying (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/message_accumulator.c", 118);
  _os_crash("TB_FATAL: overflow detected when multiplying");
  __break(1u);
}

void tb_message_splitter_split_required_cold_1()
{
  printf("TB_ASSERT: _Generic((transport), struct tb_endpoint_s *:_tb_priv_tb_endpoint, struct tb_connection_s *:_tb_priv_tb_connection, struct tb_transport_s *:_tb_priv_tb_transport, struct tb_transport_static_context_s *:_tb_priv_tb_transport_static_context)((transport))->static_vtable != ((void*)0), \b\b (%s:%d)\n", "message_splitter.c", 28);
  _os_crash("TB_ASSERT: _Generic((transport), struct tb_endpoint_s *:_tb_priv_tb_endpoint, struct tb_connection_s *:_tb_priv_tb_connection, struct tb_transport_s *:_tb_priv_tb_transport, struct tb_transport_static_context_s *:_tb_priv_tb_transport_static_context)((transport))->static_vtable != ((void*)0)");
  __break(1u);
}

void tb_message_splitter_send_cold_1()
{
  printf("TB_ASSERT: tp_priv->static_vtable != ((void*)0), \b\b (%s:%d)\n", "message_splitter.c", 119);
  _os_crash("TB_ASSERT: tp_priv->static_vtable != ((void*)0)");
  __break(1u);
}

void tb_message_splitter_send_cold_2()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/message_splitter.c", 111);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void tb_reply_splitter_add_reply_cold_1()
{
  printf("TB_ASSERT: original_buffer->connection_owned, \b\b (%s:%d)\n", "message_splitter.c", 331);
  _os_crash("TB_ASSERT: original_buffer->connection_owned");
  __break(1u);
}

void tb_reply_splitter_next_message_cold_1()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/message_splitter.c", 401);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
}

void _tb_forwarding_connection_message_forward_cold_1(int a1)
{
  printf("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED, %u (%s:%d)\n", a1, "tb_forwarding_connection.c", 78);
  _os_crash("TB_ASSERT: msg->state == TB_MESSAGE_STATE_RECEIVED");
  __break(1u);
}

void _tb_forwarding_connection_message_forward_cold_2(uint64_t a1, uint64_t a2)
{
  printf("TB_ASSERT: msg_buf->position >= msg_buf->reserved, %zu, %zu (%s:%d)\n", a1, a2, "tb_forwarding_connection.c", 84);
  _os_crash("TB_ASSERT: msg_buf->position >= msg_buf->reserved");
  __break(1u);
}

void _tb_forwarding_connection_message_forward_cold_3(uint64_t a1, uint64_t a2)
{
  printf("TB_ASSERT: end <= msg_buf->size, %zu, %zu (%s:%d)\n", a1, a2, "tb_forwarding_connection.c", 113);
  _os_crash("TB_ASSERT: end <= msg_buf->size");
  __break(1u);
}

void _tb_forwarding_connection_message_forward_cold_4()
{
  printf("TB_FATAL: overflow detected when adding (%s:%d)\n", "/Library/Caches/com.apple.xbs/Sources/Tightbeam/Runtime/Tightbeam/tb_forwarding_connection.c", 112);
  _os_crash("TB_FATAL: overflow detected when adding");
  __break(1u);
  sub_26F0737F0();
}