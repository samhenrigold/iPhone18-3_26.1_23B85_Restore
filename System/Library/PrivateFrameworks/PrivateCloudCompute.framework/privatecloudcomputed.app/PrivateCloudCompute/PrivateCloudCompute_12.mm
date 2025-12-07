unint64_t sub_10012DB48(char a1)
{
  result = 0xD000000000000013;
  switch(a1)
  {
    case 1:
    case 28:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
    case 8:
    case 16:
      result = 0xD00000000000001BLL;
      break;
    case 4:
    case 25:
    case 26:
    case 29:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 6:
    case 10:
      result = 0xD000000000000021;
      break;
    case 7:
    case 31:
      result = 0xD000000000000019;
      break;
    case 9:
    case 32:
      result = 0xD000000000000017;
      break;
    case 11:
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 13:
    case 18:
    case 19:
      result = 0xD00000000000001FLL;
      break;
    case 14:
      result = 0xD00000000000001ELL;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0xD000000000000027;
      break;
    case 21:
      result = 0xD000000000000025;
      break;
    case 22:
      result = 0xD000000000000026;
      break;
    case 23:
      result = 0xD00000000000002CLL;
      break;
    case 24:
      result = 0xD000000000000032;
      break;
    case 30:
      result = 0xD000000000000029;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrustedRequestError.Code(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 32;
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

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrustedRequestError.Code(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10012DFD0()
{
  result = qword_10022EA30[0];
  if (!qword_10022EA30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10022EA30);
  }

  return result;
}

void sub_10012E024(void *a1)
{
  sub_1001D0E60();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          sub_1001D1F00();
          if (v5 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v6 <= 0x3F)
            {
              swift_checkMetadataState();
              if (v7 <= 0x3F)
              {
                swift_checkMetadataState();
                if (v8 <= 0x3F)
                {
                  swift_checkMetadataState();
                  if (v9 <= 0x3F)
                  {
                    sub_100012FF8(319);
                    if (v10 <= 0x3F)
                    {
                      swift_checkMetadataState();
                      if (v11 <= 0x3F)
                      {
                        swift_initClassMetadata2();
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

uint64_t sub_10012E35C()
{
  v1 = *v0;
  v24 = *v0;
  v2 = qword_100243510;
  v3 = sub_1001D0E60();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_100011CF0((v0 + qword_100243518));
  v23 = v1[14];
  (*(*(v23 - 8) + 8))(v0 + *(*v0 + 240));
  v4 = v1[15];
  (*(*(v4 - 8) + 8))(v0 + *(*v0 + 248), v4);
  v5 = v1[10];
  (*(*(v5 - 8) + 8))(v0 + *(*v0 + 256), v5);
  v6 = *(*v0 + 264);
  v22 = v1[11];
  v7 = sub_1001D1F00();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = v1[12];
  (*(*(v8 - 8) + 8))(v0 + *(*v0 + 272), v8);
  v9 = v1[13];
  (*(*(v9 - 8) + 8))(v0 + *(*v0 + 280), v9);
  v10 = v1[16];
  (*(*(v10 - 8) + 8))(v0 + *(*v0 + 288), v10);
  v11 = v1[18];
  (*(*(v11 - 8) + 8))(v0 + *(*v0 + 296), v11);

  v12 = *(*v0 + 328);
  v13 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = v1[17];
  (*(*(v14 - 8) + 8))(v0 + *(*v0 + 336), v14);
  *&v15 = v5;
  *(&v15 + 1) = v22;
  v16 = v1[27];
  *&v17 = v8;
  *(&v17 + 1) = v9;
  v25[1] = v17;
  v25[0] = v15;
  *&v15 = v23;
  *(&v15 + 1) = v4;
  *&v17 = v10;
  *(&v17 + 1) = v14;
  v25[3] = v17;
  v25[2] = v15;
  v26 = v11;
  v18 = *(v24 + 21);
  v27 = *(v24 + 19);
  v28 = v18;
  v19 = *(v24 + 25);
  v29 = *(v24 + 23);
  v30 = v19;
  v31 = v16;
  type metadata accessor for TrustedRequestFactory.Metrics(255, v25);
  v20 = sub_1001CFF70();
  sub_10015607C(v20);
  return v0;
}

uint64_t sub_10012E880()
{
  sub_10012E35C();

  return swift_deallocClassInstance();
}

char *sub_10012E8F0(_OWORD *a1)
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for () + 8;
  }

  v1 = a1[1];
  v6[0] = *a1;
  v6[1] = v1;
  v2 = a1[3];
  v6[2] = a1[2];
  v6[3] = v2;
  v3 = a1[5];
  v6[4] = a1[4];
  v6[5] = v3;
  v4 = a1[7];
  v6[6] = a1[6];
  v6[7] = v4;
  v6[8] = a1[8];
  type metadata accessor for TrustedRequestFactory.Metrics(255, v6);
  return sub_1001CFF60();
}

uint64_t sub_10012E984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10012E9C0(uint64_t *a1, int a2)
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

uint64_t sub_10012EA08(uint64_t result, int a2, int a3)
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

void sub_10012EA44(char a1)
{
  v2 = v1;

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_1000954E0(*(v2 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix), *(v2 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix + 8), &v13);
    *(v6 + 12) = 2080;
    v7 = a1 & 1;
    v8 = sub_1001D1820();
    v10 = sub_1000954E0(v8, v9, &v13);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s request task cancelled reason=%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v7 = a1 & 1;
  }

  v11 = *(v2 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_cancellationObserver + 24);
  v12 = *(v2 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_cancellationObserver + 32);
  sub_100024DC8((v2 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_cancellationObserver), v11);
  (*(v12 + 8))(v7, v11, v12);
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  sub_1001D1C20();
}

uint64_t sub_10012EC34()
{
  v1 = OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logger;
  v2 = sub_1001D0E60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100011CF0((v0 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_cancellationObserver));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrustedRequestXPCProxy(uint64_t a1)
{
  result = qword_10022EB68;
  if (!qword_10022EB68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10012ED88(uint64_t a1)
{
  result = sub_1001D0E60();
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

char *sub_10012EE48()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return &unk_100222048;
  }

  else
  {
    return &type metadata for () + 8;
  }
}

unint64_t sub_10012EE70(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - v13;

  sub_100012038(a1, a2);
  v15 = sub_1001D0E50();
  v16 = sub_1001D1E00();

  if (!os_log_type_enabled(v15, v16))
  {
    sub_100011E48(a1, a2);

LABEL_14:
    v25 = sub_1001D1BA0();
    (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    *(v26 + 32) = v6;
    *(v26 + 40) = a1;
    *(v26 + 48) = a2;
    *(v26 + 56) = a3 & 1;
    *(v26 + 64) = a4;
    *(v26 + 72) = a5;

    sub_100012038(a1, a2);

    sub_10015C9F4(0, 0, v14, &unk_1001DFD20, v26);
  }

  v27 = a4;
  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v28 = v18;
  *v17 = 136315650;
  result = sub_1000954E0(*(v6 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix), *(v6 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix + 8), &v28);
  *(v17 + 4) = result;
  *(v17 + 12) = 2048;
  v20 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v20 != 2)
    {
      v21 = 0;
      goto LABEL_13;
    }

    v23 = *(a1 + 16);
    v22 = *(a1 + 24);
    v24 = __OFSUB__(v22, v23);
    v21 = v22 - v23;
    if (!v24)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v20)
  {
    v21 = BYTE6(a2);
LABEL_13:
    *(v17 + 14) = v21;
    sub_100011E48(a1, a2);
    *(v17 + 22) = 1024;
    *(v17 + 24) = a3 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s xpc.send received data.count=%ld isComplete=%{BOOL}d", v17, 0x1Cu);
    sub_100011CF0(v18);

    a4 = v27;
    goto LABEL_14;
  }

  LODWORD(v21) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v21 = v21;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_10012F144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 48) = a8;
  *(v8 + 56) = v12;
  *(v8 + 128) = a7;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 24) = a4;
  v9 = sub_1001D0200();
  *(v8 + 64) = v9;
  *(v8 + 72) = *(v9 - 8);
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_10012F230, 0, 0);
}

uint64_t sub_10012F230()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(*(v0 + 24) + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_outgoingUserDataWriter);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
  sub_100012038(v2, v3);
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_10012F354;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000017, 0x80000001001E6E60, sub_100130DDC, v5, &type metadata for () + 8);
}

uint64_t sub_10012F354()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10012F500;
  }

  else
  {

    v2 = sub_10012F470;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012F470()
{
  v1 = v0[6];
  sub_100011E48(v0[4], v0[5]);
  v1(0, 0xF000000000000000);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10012F500()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  sub_100011E48(v0[4], v0[5]);

  static PrivateCloudComputeError.wrapAny(error:)(v1, v2);
  sub_1001309E4(&qword_1002292F0, &protocol conformance descriptor for PrivateCloudComputeError);
  swift_willThrowTypedImpl();

  v5 = swift_allocError();
  v6 = *(v4 + 32);
  v6(v7, v2, v3);
  v0[2] = v5;
  swift_errorRetain();
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  if (swift_dynamicCast())
  {
    v8 = v0[10];
    v9 = v0[8];
    v10 = v0[9];
    v11 = v0[6];
    v6(v8, v0[11], v9);
    sub_1001309E4(&qword_10022EC28, &protocol conformance descriptor for PrivateCloudComputeError);
    sub_1001309E4(qword_10022EC30, &protocol conformance descriptor for PrivateCloudComputeError);
    v12 = sub_1001D07B0();
    v14 = v13;
    v11();
    sub_100011E48(v12, v14);
    (*(v10 + 8))(v8, v9);

    v15 = v0[1];

    return v15();
  }

  else
  {

    return sub_1001D2180();
  }
}

uint64_t sub_10012F8AC(uint64_t a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  a4(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

uint64_t sub_10012F920(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  result = __chkstk_darwin(v6 - 8);
  v9 = &v20 - v8;
  v10 = *(v2 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_callIDs);
  v11 = (v2 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_callIDs);
  do
  {
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    v12 = v10;
    atomic_compare_exchange_strong_explicit(v11, &v12, v10 + 1, memory_order_relaxed, memory_order_relaxed);
    v13 = v12 == v10;
    v10 = v12;
  }

  while (!v13);

  v14 = sub_1001D0E50();
  v15 = sub_1001D1E00();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_1000954E0(*(v3 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix), *(v3 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix + 8), &v21);
    *(v16 + 12) = 2048;
    *(v16 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s xpc.next received callID=%ld", v16, 0x16u);
    sub_100011CF0(v17);
  }

  v18 = sub_1001D1BA0();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v3;
  v19[5] = v10;
  v19[6] = a1;
  v19[7] = a2;

  sub_10015C9F4(0, 0, v9, &unk_1001DFD08, v19);
}

uint64_t sub_10012FB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = sub_1001D0200();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v9 = swift_task_alloc();
  v7[12] = v9;
  v10 = swift_task_alloc();
  v7[13] = v10;
  *v10 = v7;
  v10[1] = sub_10012FC90;

  return sub_100130470(v9);
}

uint64_t sub_10012FC90(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 112) = a1;
  *(v4 + 120) = a2;

  if (v2)
  {
    v5 = sub_10012FFF4;
  }

  else
  {
    v5 = sub_10012FDA4;
  }

  return _swift_task_switch(v5, 0, 0);
}

unint64_t sub_10012FDA4()
{
  v26 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  sub_100089C38(v1, v2);
  v3 = sub_1001D0E50();
  v4 = sub_1001D1E00();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 120);
  if (!v5)
  {
    sub_10002683C(*(v0 + 112), *(v0 + 120));
    goto LABEL_5;
  }

  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = -1;
  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v25 = v11;
  *v10 = 136315650;
  result = sub_1000954E0(*(v8 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix), *(v8 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix + 8), &v25);
  *(v10 + 4) = result;
  *(v10 + 12) = 2048;
  *(v10 + 14) = v7;
  *(v10 + 22) = 2048;
  v13 = *(v0 + 120);
  if (v6 >> 60 != 15)
  {
    v18 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v18 != 2)
      {
        v9 = 0;
        goto LABEL_3;
      }

      v19 = *(*(v0 + 112) + 16);
      v20 = *(*(v0 + 112) + 24);
      v9 = v20 - v19;
      if (!__OFSUB__(v20, v19))
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    else if (!v18)
    {
      v9 = BYTE6(v13);
      goto LABEL_3;
    }

    v21 = *(v0 + 112);
    v22 = *(v0 + 116);
    v23 = __OFSUB__(v22, v21);
    v24 = v22 - v21;
    if (v23)
    {
      __break(1u);
      return result;
    }

    v9 = v24;
  }

LABEL_3:
  v14 = *(v0 + 112);
  *(v10 + 24) = v9;
  sub_10002683C(v14, v13);
  _os_log_impl(&_mh_execute_header, v3, v4, "%s xpc.next responding callID=%ld count=%ld", v10, 0x20u);
  sub_100011CF0(v11);

LABEL_5:

  v16 = *(v0 + 112);
  v15 = *(v0 + 120);
  (*(v0 + 40))(v16, v15, 0, 0xF000000000000000);
  sub_10002683C(v16, v15);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10012FFF4()
{
  v35 = v0;
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[7];
  sub_1001309E4(&qword_1002292F0, &protocol conformance descriptor for PrivateCloudComputeError);
  v4 = swift_allocError();
  v5 = *(v2 + 32);
  v5(v6, v1, v3);
  v0[2] = v4;
  swift_errorRetain();
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  if (swift_dynamicCast())
  {
    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[8];
    v10 = v0[7];
    v5(v7, v0[9], v10);
    v32 = *(v9 + 16);
    v32(v8, v7, v10);

    v11 = sub_1001D0E50();
    v12 = sub_1001D1DE0();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[10];
    v15 = v0[7];
    v16 = v0[8];
    if (v13)
    {
      v28 = v0[3];
      v29 = v0[4];
      v17 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v17 = 136315650;
      *(v17 + 4) = sub_1000954E0(*(v28 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix), *(v28 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix + 8), &v34);
      *(v17 + 12) = 2048;
      *(v17 + 14) = v29;
      *(v17 + 22) = 2112;
      swift_allocError();
      v32(v18, v14, v15);
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v33 = *(v16 + 8);
      v33(v14, v15);
      *(v17 + 24) = v19;
      *v30 = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s xpc.next responding callID=%ld error=%@", v17, 0x20u);
      sub_100024B10(v30);

      sub_100011CF0(v31);
    }

    else
    {

      v33 = *(v16 + 8);
      v33(v14, v15);
    }

    v21 = v0[11];
    v22 = v0[7];
    v23 = v0[5];
    sub_1001309E4(&qword_10022EC28, &protocol conformance descriptor for PrivateCloudComputeError);
    sub_1001309E4(qword_10022EC30, &protocol conformance descriptor for PrivateCloudComputeError);
    v24 = sub_1001D07B0();
    v26 = v25;
    v23(0, 0xF000000000000000, v24, v25);
    sub_100011E48(v24, v26);
    v33(v21, v22);

    v27 = v0[1];

    return v27();
  }

  else
  {

    return sub_1001D2180();
  }
}

uint64_t sub_100130470(uint64_t a1)
{
  *(v2 + 32) = v1;
  *(v2 + 40) = a1;
  return _swift_task_switch(sub_100130490, 0, 0);
}

uint64_t sub_100130490()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_incomingUserDataReader);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_100011AC0(qword_100229648, &unk_1001D6B30);
  *v2 = v0;
  v2[1] = sub_100130580;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_100130A28, v1, v3);
}

uint64_t sub_100130580()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100130694;
  }

  else
  {
    v2 = sub_10001477C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100130694()
{
  static PrivateCloudComputeError.wrapAny(error:)(*(v0 + 56), *(v0 + 40));
  sub_1001D0200();
  sub_1001309E4(&qword_1002292F0, &protocol conformance descriptor for PrivateCloudComputeError);
  swift_willThrowTypedImpl();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001307E0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_1001CFBE0().super.isa;
  }

  if (a4 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1001CFBE0().super.isa;
  }

  v9 = v8;
  (*(a5 + 16))(a5, isa);
}

uint64_t sub_100130888()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001308C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100130910(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000130E0;

  return sub_10012FB70(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001309E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001D0200();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100130A30(uint64_t a1, uint64_t a2)
{

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000954E0(*(a1 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix), *(a1 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix + 8), &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s xpc.cancel received", v6, 0xCu);
    sub_100011CF0(v7);
  }

  sub_10012EA44(0);
  v8 = *(a2 + 16);

  return v8(a2);
}

uint64_t sub_100130B68(uint64_t a1, uint64_t a2)
{

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000954E0(*(a1 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix), *(a1 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix + 8), &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s xpc.close received (no-op)", v6, 0xCu);
    sub_100011CF0(v7);
  }

  v8 = *(a2 + 16);

  return v8(a2);
}

uint64_t sub_100130C9C()
{
  swift_unknownObjectRelease();

  sub_100011E48(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100130CEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10005B61C;

  return sub_10012F144(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100130DF0(uint64_t a1)
{
  result = sub_1001D0E60();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

unint64_t sub_100130EFC(char a1)
{
  result = 0x5F44494C41564E49;
  switch(a1)
  {
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      return result;
    case 4:
      result = 0x425F4445494E4544;
      break;
    case 5:
    case 9:
    case 12:
      result = 0xD00000000000001CLL;
      break;
    case 6:
    case 14:
    case 19:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 13:
      result = 0xD000000000000025;
      break;
    case 15:
      result = 0xD00000000000001ALL;
      break;
    case 16:
      result = 0xD00000000000001ALL;
      break;
    case 17:
    case 21:
      result = 0xD000000000000035;
      break;
    case 18:
      result = 0xD000000000000020;
      break;
    case 20:
      result = 0xD00000000000001FLL;
      break;
    case 22:
      result = 0xD000000000000028;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1001311A8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100130EFC(*a1);
  v5 = v4;
  if (v3 == sub_100130EFC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1001D2470();
  }

  return v8 & 1;
}

Swift::Int sub_100131230()
{
  v1 = *v0;
  sub_1001D2580();
  sub_100130EFC(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_100131294(uint64_t a1)
{
  sub_100130EFC(*v1);
  sub_1001D1880();
}

Swift::Int sub_1001312E8()
{
  v1 = *v0;
  sub_1001D2580();
  sub_100130EFC(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

unint64_t sub_100131348@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100131544(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100131378@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100130EFC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t *sub_1001313A4()
{
  v1 = *v0;
  v2 = qword_100243558;
  v3 = sub_1001D0E60();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 128));
  return v0;
}

uint64_t sub_1001314B8()
{
  sub_1001313A4();

  return swift_deallocClassInstance();
}

unint64_t sub_100131544(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001D24A0();

  if (v2 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for PrivacyProxyErrorReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivacyProxyErrorReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001316EC()
{
  result = qword_10022ECD8[0];
  if (!qword_10022ECD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10022ECD8);
  }

  return result;
}

uint64_t sub_100131740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  return (*(v5 + 32))(a3, v7, a2);
}

double sub_100131814@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[2];
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness - 8);
  v13 = &v15 - v12;
  (*(v6 + 16))(v9, v2, v5);
  sub_1001D1C90();
  return sub_100131970(v13, v5, a1[3], a1[4], v10, a1[6], a1[7], a1[8], a2);
}

double sub_100131970@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v17 = type metadata accessor for LengthPrefixDeframer.AsyncIterator(0, &v21);
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  type metadata accessor for LengthPrefixDeframer.AsyncIterator.State(0, &v21);
  swift_storeEnumTagMultiPayload();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a9, a1, AssociatedTypeWitness);
  result = 0.0;
  *(a9 + *(v17 + 76)) = xmmword_1001D3A00;
  return result;
}

uint64_t sub_100131AB8(uint64_t a1, void *a2)
{
  *(v3 + 112) = a2;
  *(v3 + 120) = v2;
  *(v3 + 104) = a1;
  sub_1001D0980();
  *(v3 + 128) = swift_task_alloc();
  v5 = a2[6];
  v6 = *(v5 + 8);
  *(v3 + 136) = v6;
  *(v3 + 144) = *(*(v6 + 24) + 16);
  v7 = a2[3];
  *(v3 + 152) = v7;
  *(v3 + 160) = swift_getAssociatedTypeWitness();
  *(v3 + 168) = swift_task_alloc();
  v8 = sub_1001D1F00();
  *(v3 + 176) = v8;
  *(v3 + 184) = *(v8 - 8);
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = *(v7 - 8);
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  v9 = a2[4];
  *(v3 + 240) = v9;
  v10 = a2[7];
  v11 = a2[8];
  *(v3 + 248) = v11;
  *&v12 = a2[2];
  *(&v12 + 1) = v7;
  *&v13 = v9;
  *(&v13 + 1) = a2[5];
  *(v3 + 32) = v13;
  *(v3 + 16) = v12;
  *(v3 + 48) = v5;
  *(v3 + 56) = v10;
  *(v3 + 64) = v11;
  v14 = type metadata accessor for LengthPrefixDeframer.AsyncIterator.State(0, v3 + 16);
  *(v3 + 256) = v14;
  *(v3 + 264) = *(v14 - 8);
  *(v3 + 272) = swift_task_alloc();

  return _swift_task_switch(sub_100131D30, 0, 0);
}

uint64_t sub_100131D30()
{
  v1 = *(v0 + 264);
  v2 = *(*(v0 + 112) + 80);
  *(v0 + 320) = v2;
  v3 = *(v1 + 16);
  *(v0 + 280) = v3;
  v3(*(v0 + 272), *(v0 + 120) + v2, *(v0 + 256));
  while (1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 2)
    {
      break;
    }

    v5 = *(v0 + 192);
    v6 = *(v0 + 200);
    v7 = *(v0 + 152);
    sub_1001337B8(*(v0 + 112), v5);
    if ((*(v6 + 48))(v5, 1, v7) == 1)
    {
      (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
      v19 = swift_task_alloc();
      *(v0 + 288) = v19;
      *v19 = v0;
      v20 = sub_100132570;
      goto LABEL_37;
    }

    v8 = *(v0 + 320);
    v9 = *(v0 + 256);
    v10 = *(v0 + 264);
    v11 = *(v0 + 232);
    v12 = *(v0 + 152);
    v13 = *(v0 + 120);
    v14 = *(*(v0 + 200) + 32);
    v14(v11, *(v0 + 192), v12);
    (*(v10 + 8))(v13 + v8, v9);
    v14(v13 + v8, v11, v12);
    swift_storeEnumTagMultiPayload();
    (*(v0 + 280))(*(v0 + 272), *(v0 + 120) + *(v0 + 320), *(v0 + 256));
  }

  if (EnumCaseMultiPayload)
  {
    if (**(v0 + 272))
    {
      swift_willThrow();

      v51 = *(v0 + 8);
LABEL_42:

      return v51();
    }

    v52 = EnumCaseMultiPayload;
LABEL_41:
    (*(*(*(v0 + 240) - 8) + 56))(*(v0 + 104), v52, 1);

    v51 = *(v0 + 8);
    goto LABEL_42;
  }

  v52 = 0;
  v16 = *(v0 + 216);
  v15 = *(v0 + 224);
  v17 = *(v0 + 200);
  v18 = *(v0 + 152);
  (*(v17 + 32))(v15, *(v0 + 272), v18);
  (*(v17 + 16))(v16, v15, v18);
  if ((sub_1001D1F80() & 1) != 0 && sub_1001D1F70() > 64)
  {
    *(v0 + 96) = 0x8000000000000000;
    if (sub_1001D1F80())
    {
      if (sub_1001D1F70() < 64)
      {
        goto LABEL_24;
      }

      v28 = *(v0 + 200);
      v29 = *(v0 + 208);
      v30 = *(v0 + 152);
      sub_1001354C4();
      sub_1001D1F50();
      v31 = sub_1001D1760();
      result = (*(v28 + 8))(v29, v30);
      if ((v31 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_45:
      __break(1u);
      return result;
    }

    v21 = sub_1001D1F80();
    v22 = sub_1001D1F70();
    if (v21)
    {
      v23 = *(v0 + 208);
      v24 = *(v0 + 200);
      if (v22 > 64)
      {
        v25 = *(v0 + 152);
        sub_1001354C4();
        sub_1001D1F50();
        v26 = sub_1001D1760();
        result = (*(v24 + 8))(v23, v25);
        if ((v26 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_45;
      }

      v32 = *(v0 + 152);
      swift_getAssociatedConformanceWitness();
      sub_1001D24D0();
      sub_1001D2450();
      v33 = sub_1001D1760();
      result = (*(v24 + 8))(v23, v32);
      if (v33)
      {
        goto LABEL_45;
      }

LABEL_24:
      sub_1001D1F60();
      goto LABEL_25;
    }

    if (v22 < 64)
    {
      goto LABEL_24;
    }
  }

LABEL_25:
  if (sub_1001D1F70() <= 64)
  {
    goto LABEL_30;
  }

  while (1)
  {
    *(v0 + 88) = 0x7FFFFFFFFFFFFFFFLL;
    v34 = sub_1001D1F80();
    v35 = sub_1001D1F70();
    if ((v34 & 1) == 0)
    {
      break;
    }

    if (v35 < 65)
    {
      goto LABEL_34;
    }

LABEL_28:
    v36 = *(v0 + 208);
    v37 = *(v0 + 200);
    v38 = *(v0 + 152);
    sub_1001354C4();
    sub_1001D1F50();
    v39 = sub_1001D1760();
    (*(v37 + 8))(v36, v38);
    if (v39)
    {
      __break(1u);
LABEL_30:
      if (sub_1001D1F70() == 64 && (sub_1001D1F80() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_35;
  }

  if (v35 >= 64)
  {
    goto LABEL_28;
  }

LABEL_34:
  sub_1001D1F60();
LABEL_35:
  v40 = *(v0 + 216);
  v41 = *(v0 + 200);
  v42 = *(v0 + 152);
  v43 = *(v0 + 112);
  v44 = sub_1001D1F60();
  v45 = *(v41 + 8);
  *(v0 + 296) = v45;
  *(v0 + 304) = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v45(v40, v42);
  v46 = sub_100133F10(v44, v43);
  if (v47 >> 60 != 15)
  {
    v49 = v46;
    v50 = v47;
    (*(*(v0 + 264) + 8))(*(v0 + 120) + *(v0 + 320), *(v0 + 256));
    swift_storeEnumTagMultiPayload();
    *(v0 + 72) = v49;
    *(v0 + 80) = v50;
    sub_100012038(v49, v50);
    sub_1001D0970();
    sub_1001D0B10();
    v45(*(v0 + 224), *(v0 + 152));
    sub_10002683C(v49, v50);
    goto LABEL_41;
  }

  v19 = swift_task_alloc();
  *(v0 + 312) = v19;
  *v19 = v0;
  v20 = sub_100132E8C;
LABEL_37:
  v19[1] = v20;
  v48 = *(v0 + 112);

  return sub_100133954(v48);
}

uint64_t sub_100132570()
{

  return _swift_task_switch(sub_10013266C, 0, 0);
}

uint64_t sub_10013266C()
{
  while (1)
  {
    (*(v0 + 280))(*(v0 + 272), *(v0 + 120) + *(v0 + 320), *(v0 + 256));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 2)
    {
      break;
    }

    v2 = *(v0 + 192);
    v3 = *(v0 + 200);
    v4 = *(v0 + 152);
    sub_1001337B8(*(v0 + 112), v2);
    if ((*(v3 + 48))(v2, 1, v4) == 1)
    {
      (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
      v16 = swift_task_alloc();
      *(v0 + 288) = v16;
      *v16 = v0;
      v17 = sub_100132570;
      goto LABEL_36;
    }

    v5 = *(v0 + 320);
    v6 = *(v0 + 256);
    v7 = *(v0 + 264);
    v8 = *(v0 + 232);
    v9 = *(v0 + 152);
    v10 = *(v0 + 120);
    v11 = *(*(v0 + 200) + 32);
    v11(v8, *(v0 + 192), v9);
    (*(v7 + 8))(v10 + v5, v6);
    v11(v10 + v5, v8, v9);
    swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload)
  {
    if (**(v0 + 272))
    {
      swift_willThrow();

      v48 = *(v0 + 8);
LABEL_41:

      return v48();
    }

    v49 = EnumCaseMultiPayload;
LABEL_40:
    (*(*(*(v0 + 240) - 8) + 56))(*(v0 + 104), v49, 1);

    v48 = *(v0 + 8);
    goto LABEL_41;
  }

  v49 = 0;
  v13 = *(v0 + 216);
  v12 = *(v0 + 224);
  v14 = *(v0 + 200);
  v15 = *(v0 + 152);
  (*(v14 + 32))(v12, *(v0 + 272), v15);
  (*(v14 + 16))(v13, v12, v15);
  if ((sub_1001D1F80() & 1) != 0 && sub_1001D1F70() > 64)
  {
    *(v0 + 96) = 0x8000000000000000;
    if (sub_1001D1F80())
    {
      if (sub_1001D1F70() < 64)
      {
        goto LABEL_23;
      }

      v25 = *(v0 + 200);
      v26 = *(v0 + 208);
      v27 = *(v0 + 152);
      sub_1001354C4();
      sub_1001D1F50();
      v28 = sub_1001D1760();
      result = (*(v25 + 8))(v26, v27);
      if ((v28 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_44:
      __break(1u);
      return result;
    }

    v18 = sub_1001D1F80();
    v19 = sub_1001D1F70();
    if (v18)
    {
      v20 = *(v0 + 208);
      v21 = *(v0 + 200);
      if (v19 > 64)
      {
        v22 = *(v0 + 152);
        sub_1001354C4();
        sub_1001D1F50();
        v23 = sub_1001D1760();
        result = (*(v21 + 8))(v20, v22);
        if ((v23 & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_44;
      }

      v29 = *(v0 + 152);
      swift_getAssociatedConformanceWitness();
      sub_1001D24D0();
      sub_1001D2450();
      v30 = sub_1001D1760();
      result = (*(v21 + 8))(v20, v29);
      if (v30)
      {
        goto LABEL_44;
      }

LABEL_23:
      sub_1001D1F60();
      goto LABEL_24;
    }

    if (v19 < 64)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  if (sub_1001D1F70() <= 64)
  {
    goto LABEL_29;
  }

  while (1)
  {
    *(v0 + 88) = 0x7FFFFFFFFFFFFFFFLL;
    v31 = sub_1001D1F80();
    v32 = sub_1001D1F70();
    if ((v31 & 1) == 0)
    {
      break;
    }

    if (v32 < 65)
    {
      goto LABEL_33;
    }

LABEL_27:
    v33 = *(v0 + 208);
    v34 = *(v0 + 200);
    v35 = *(v0 + 152);
    sub_1001354C4();
    sub_1001D1F50();
    v36 = sub_1001D1760();
    (*(v34 + 8))(v33, v35);
    if (v36)
    {
      __break(1u);
LABEL_29:
      if (sub_1001D1F70() == 64 && (sub_1001D1F80() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_34;
  }

  if (v32 >= 64)
  {
    goto LABEL_27;
  }

LABEL_33:
  sub_1001D1F60();
LABEL_34:
  v37 = *(v0 + 216);
  v38 = *(v0 + 200);
  v39 = *(v0 + 152);
  v40 = *(v0 + 112);
  v41 = sub_1001D1F60();
  v42 = *(v38 + 8);
  *(v0 + 296) = v42;
  *(v0 + 304) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42(v37, v39);
  v43 = sub_100133F10(v41, v40);
  if (v44 >> 60 != 15)
  {
    v46 = v43;
    v47 = v44;
    (*(*(v0 + 264) + 8))(*(v0 + 120) + *(v0 + 320), *(v0 + 256));
    swift_storeEnumTagMultiPayload();
    *(v0 + 72) = v46;
    *(v0 + 80) = v47;
    sub_100012038(v46, v47);
    sub_1001D0970();
    sub_1001D0B10();
    v42(*(v0 + 224), *(v0 + 152));
    sub_10002683C(v46, v47);
    goto LABEL_40;
  }

  v16 = swift_task_alloc();
  *(v0 + 312) = v16;
  *v16 = v0;
  v17 = sub_100132E8C;
LABEL_36:
  v16[1] = v17;
  v45 = *(v0 + 112);

  return sub_100133954(v45);
}

uint64_t sub_100132E8C()
{

  return _swift_task_switch(sub_100132F88, 0, 0);
}

uint64_t sub_100132F88()
{
  (*(v0 + 296))(*(v0 + 224), *(v0 + 152));
  while (1)
  {
    (*(v0 + 280))(*(v0 + 272), *(v0 + 120) + *(v0 + 320), *(v0 + 256));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 2)
    {
      break;
    }

    v2 = *(v0 + 192);
    v3 = *(v0 + 200);
    v4 = *(v0 + 152);
    sub_1001337B8(*(v0 + 112), v2);
    if ((*(v3 + 48))(v2, 1, v4) == 1)
    {
      (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
      v16 = swift_task_alloc();
      *(v0 + 288) = v16;
      *v16 = v0;
      v17 = sub_100132570;
      goto LABEL_37;
    }

    v5 = *(v0 + 320);
    v6 = *(v0 + 256);
    v7 = *(v0 + 264);
    v8 = *(v0 + 232);
    v9 = *(v0 + 152);
    v10 = *(v0 + 120);
    v11 = *(*(v0 + 200) + 32);
    v11(v8, *(v0 + 192), v9);
    (*(v7 + 8))(v10 + v5, v6);
    v11(v10 + v5, v8, v9);
    swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload)
  {
    if (**(v0 + 272))
    {
      swift_willThrow();

      v48 = *(v0 + 8);
LABEL_42:

      return v48();
    }

    v49 = EnumCaseMultiPayload;
LABEL_41:
    (*(*(*(v0 + 240) - 8) + 56))(*(v0 + 104), v49, 1);

    v48 = *(v0 + 8);
    goto LABEL_42;
  }

  v49 = 0;
  v13 = *(v0 + 216);
  v12 = *(v0 + 224);
  v14 = *(v0 + 200);
  v15 = *(v0 + 152);
  (*(v14 + 32))(v12, *(v0 + 272), v15);
  (*(v14 + 16))(v13, v12, v15);
  if ((sub_1001D1F80() & 1) != 0 && sub_1001D1F70() > 64)
  {
    *(v0 + 96) = 0x8000000000000000;
    if (sub_1001D1F80())
    {
      if (sub_1001D1F70() < 64)
      {
        goto LABEL_24;
      }

      v25 = *(v0 + 200);
      v26 = *(v0 + 208);
      v27 = *(v0 + 152);
      sub_1001354C4();
      sub_1001D1F50();
      v28 = sub_1001D1760();
      result = (*(v25 + 8))(v26, v27);
      if ((v28 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_45:
      __break(1u);
      return result;
    }

    v18 = sub_1001D1F80();
    v19 = sub_1001D1F70();
    if (v18)
    {
      v20 = *(v0 + 208);
      v21 = *(v0 + 200);
      if (v19 > 64)
      {
        v22 = *(v0 + 152);
        sub_1001354C4();
        sub_1001D1F50();
        v23 = sub_1001D1760();
        result = (*(v21 + 8))(v20, v22);
        if ((v23 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_45;
      }

      v29 = *(v0 + 152);
      swift_getAssociatedConformanceWitness();
      sub_1001D24D0();
      sub_1001D2450();
      v30 = sub_1001D1760();
      result = (*(v21 + 8))(v20, v29);
      if (v30)
      {
        goto LABEL_45;
      }

LABEL_24:
      sub_1001D1F60();
      goto LABEL_25;
    }

    if (v19 < 64)
    {
      goto LABEL_24;
    }
  }

LABEL_25:
  if (sub_1001D1F70() <= 64)
  {
    goto LABEL_30;
  }

  while (1)
  {
    *(v0 + 88) = 0x7FFFFFFFFFFFFFFFLL;
    v31 = sub_1001D1F80();
    v32 = sub_1001D1F70();
    if ((v31 & 1) == 0)
    {
      break;
    }

    if (v32 < 65)
    {
      goto LABEL_34;
    }

LABEL_28:
    v33 = *(v0 + 208);
    v34 = *(v0 + 200);
    v35 = *(v0 + 152);
    sub_1001354C4();
    sub_1001D1F50();
    v36 = sub_1001D1760();
    (*(v34 + 8))(v33, v35);
    if (v36)
    {
      __break(1u);
LABEL_30:
      if (sub_1001D1F70() == 64 && (sub_1001D1F80() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_35;
  }

  if (v32 >= 64)
  {
    goto LABEL_28;
  }

LABEL_34:
  sub_1001D1F60();
LABEL_35:
  v37 = *(v0 + 216);
  v38 = *(v0 + 200);
  v39 = *(v0 + 152);
  v40 = *(v0 + 112);
  v41 = sub_1001D1F60();
  v42 = *(v38 + 8);
  *(v0 + 296) = v42;
  *(v0 + 304) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42(v37, v39);
  v43 = sub_100133F10(v41, v40);
  if (v44 >> 60 != 15)
  {
    v46 = v43;
    v47 = v44;
    (*(*(v0 + 264) + 8))(*(v0 + 120) + *(v0 + 320), *(v0 + 256));
    swift_storeEnumTagMultiPayload();
    *(v0 + 72) = v46;
    *(v0 + 80) = v47;
    sub_100012038(v46, v47);
    sub_1001D0970();
    sub_1001D0B10();
    v42(*(v0 + 224), *(v0 + 152));
    sub_10002683C(v46, v47);
    goto LABEL_41;
  }

  v16 = swift_task_alloc();
  *(v0 + 312) = v16;
  *v16 = v0;
  v17 = sub_100132E8C;
LABEL_37:
  v16[1] = v17;
  v45 = *(v0 + 112);

  return sub_100133954(v45);
}

uint64_t sub_1001337B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1001D2160();
  v6 = sub_100133F10(v5 / 8, a1);
  if (v7 >> 60 == 15)
  {
    v8 = *(*(v4 - 8) + 56);

    return v8(a2, 1, 1, v4);
  }

  else
  {
    v10 = __chkstk_darwin(v6);
    v12 = v11;
    sub_1001CFBD0();
    sub_10002683C(v10, v12);
    return (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_100133954(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  *(v2 + 16) = *(a1 + 16);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  *(v2 + 56) = v5;
  v6 = type metadata accessor for LengthPrefixDeframer.AsyncIterator.State(0, v2 + 16);
  *(v2 + 104) = v6;
  *(v2 + 112) = *(v6 - 8);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_task_alloc();
  *(v2 + 136) = v9;
  *v9 = v2;
  v9[1] = sub_100133AF0;

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 72, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_100133AF0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100133E64;
  }

  else
  {
    v2 = sub_100133C04;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100133C04()
{
  v1 = v0[10];
  if (v1 >> 60 != 15)
  {
    v5 = v0[9];
    sub_1001CFC30();
    sub_10002683C(v5, v1);
    goto LABEL_16;
  }

  v2 = v0[12];
  v3 = *(v0[11] + 80);
  (*(v0[14] + 16))(v0[16], v2 + v3, v0[13]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v6 = v0[15];
    v7 = v0[16];
    v8 = v0[13];
    v9 = v0[14];
    sub_100089CEC();
    *v6 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    (*(v9 + 40))(v2 + v3, v6, v8);
    (*(v9 + 8))(v7, v8);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[14] + 8))(v0[16], v0[13]);
    goto LABEL_16;
  }

  v10 = (v0[12] + *(v0[11] + 76));
  v11 = *v10;
  v12 = v10[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2 || *(v11 + 16) == *(v11 + 24))
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (!v13)
  {
    if ((v12 & 0xFF000000000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_13:
    v15 = v0[14];
    v14 = v0[15];
    v16 = v0[13];
    sub_100089CEC();
    *v14 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    (*(v15 + 40))(v2 + v3, v14, v16);
    goto LABEL_16;
  }

  if (v11 != v11 >> 32)
  {
    goto LABEL_13;
  }

LABEL_15:
  (*(v0[14] + 8))(v2 + v3, v0[13]);
  *(v2 + v3) = 0;
  swift_storeEnumTagMultiPayload();
LABEL_16:

  v17 = v0[1];

  return v17();
}

uint64_t sub_100133E64()
{
  v1 = v0[18];
  v2 = v0[12];
  v3 = *(v0[11] + 80);
  (*(v0[14] + 8))(v2 + v3, v0[13]);
  *(v2 + v3) = v1;
  swift_storeEnumTagMultiPayload();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100133F10(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = v2 + *(a2 + 76);
    v4 = *v3;
    v5 = *(v3 + 8);
    v6 = v5 >> 62;
    if ((v5 >> 62) <= 1)
    {
      if (!v6)
      {
        if (BYTE6(v5) < result)
        {
          return 0;
        }

LABEL_10:
        v11 = result;
        sub_100012038(*v3, *(v3 + 8));
        sub_10007A708(v11, v4, v5, &v13);
        v12 = v13;
        sub_10008570C(v11);
        return v12;
      }

      if (!__OFSUB__(HIDWORD(v4), v4))
      {
        if (HIDWORD(v4) - v4 < result)
        {
          return 0;
        }

        goto LABEL_10;
      }

      goto LABEL_17;
    }

    if (v6 == 2)
    {
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      v9 = __OFSUB__(v7, v8);
      v10 = v7 - v8;
      if (v9)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return result;
      }

      if (v10 >= result)
      {
        goto LABEL_10;
      }
    }

    else if (result <= 0)
    {
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

uint64_t sub_100134000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = __chkstk_darwin(a1);
  if (result)
  {
    sub_1001343D8(0, v9, a4, &v11 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    return sub_1001D2170();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001340EC(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000130E0;

  return sub_100131AB8(a1, a2);
}

uint64_t sub_100134194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_100134268;

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_100134268()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_100134378@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4.n128_f64[0] = sub_100131814(a1, a2);
  v5 = *(*(a1 - 1) + 8);

  return v5(v2, a1, v4);
}

uint64_t sub_1001343D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(a1);
  v11 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v24 - v13;
  v15 = *(v8 + 80);
  if (((v15 + 1) & v15) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = *(v8 + 72);
  if (v15 <= 0xF)
  {
    if (v12 >= 1025)
    {
      goto LABEL_12;
    }

LABEL_8:
    result = __chkstk_darwin(v12);
    v20 = &v24 - v19;
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      memcpy(&v24 - v19, (a2 + a1), v9);
      (*(v8 + 16))(v11, v20, a3);
      v21 = *(v8 + 32);
      v21(v14, v11, a3);
      return (v21)(a4, v14, a3);
    }
  }

  else
  {
    while (1)
    {
      v12 = swift_slowAlloc();
      if ((v9 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      v22 = v12;
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      v12 = v22;
      if (isStackAllocationSafe)
      {
        goto LABEL_8;
      }
    }

    v16 = (a2 + a1);
    v17 = v12;
    memcpy(v12, v16, v9);
    (*(v8 + 16))(a4, v17, a3);
  }

  return result;
}

void sub_100134620(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_100134968(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_100134698(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
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
      if (v11 >= 3)
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

  return (v5 | v10) + 254;
}

void sub_1001347B0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
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

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
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

void sub_100134968(uint64_t a1)
{
  if (!qword_10022ED60[0])
  {
    sub_100011DF4(&qword_100227A58, &qword_1001D3600);
    v1 = sub_1001D1F00();
    if (!v2)
    {
      atomic_store(v1, qword_10022ED60);
    }
  }
}

uint64_t sub_1001349CC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 16);
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v13 = 0;
    v15 = result;
    v16 = &type metadata for Data;
    v6 = *(a1 + 64);
    v8 = v3;
    v9 = *(a1 + 24);
    v10 = v2;
    v11 = *(a1 + 48);
    v12 = v6;
    result = type metadata accessor for LengthPrefixDeframer.AsyncIterator.State(319, &v8);
    if (v7 <= 0x3F)
    {
      v14 = 0;
      v17 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100134AA4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(*(a3 + 24) - 8) + 64);
  v9 = *(v6 + 64);
  if (v8 <= 8)
  {
    v8 = 8;
  }

  if (v7 <= 0xFD)
  {
    v10 = 253;
  }

  else
  {
    v10 = *(v6 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 24) - 8) + 80) & 0xF8 | 7;
  if (a2 <= v10)
  {
    goto LABEL_30;
  }

  v12 = v8 + ((v11 + ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v11) + 1;
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((a2 - v10 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v16 < 2)
    {
LABEL_30:
      if (v7 < 0xFD)
      {
        v21 = *(((((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11) + v8);
        if (v21 >= 3)
        {
          return (v21 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v20 = *(v6 + 48);

        return v20(a1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_30;
  }

LABEL_17:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 <= 3)
    {
      v18 = v12;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

void sub_100134D0C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = 8;
  if (*(*(*(a4 + 24) - 8) + 64) > 8uLL)
  {
    v11 = *(*(*(a4 + 24) - 8) + 64);
  }

  if (v9 <= 0xFD)
  {
    v12 = 253;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = *(*(*(a4 + 24) - 8) + 80) & 0xF8 | 7;
  v14 = v11 + ((v13 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v13) + 1;
  if (a3 <= v12)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 - v12 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (v12 < a2)
  {
    v16 = ~v12 + a2;
    if (v14 < 4)
    {
      v17 = (v16 >> (8 * v14)) + 1;
      if (v11 + ((v13 + ((v10 + 7) & 0xFFFFFFF8) + 16) & ~v13) != -1)
      {
        v20 = v16 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_57:
              if (v15 == 2)
              {
                *&a1[v14] = v17;
              }

              else
              {
                *&a1[v14] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v15)
    {
      a1[v14] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v14] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v15)
  {
    goto LABEL_32;
  }

  a1[v14] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 < 0xFD)
  {
    v22 = (((&a1[v10 + 7] & 0xFFFFFFFFFFFFFFF8) + v13 + 16) & ~v13);
    if (a2 > 0xFD)
    {
      v23 = (v11 + 1);
      v24 = -1 << (8 * (v11 + 1));
      if (v23 <= 3)
      {
        v25 = ~v24;
      }

      else
      {
        v25 = -1;
      }

      if (v23)
      {
        v26 = v25 & (a2 - 254);
        if (v23 <= 3)
        {
          v27 = v23;
        }

        else
        {
          v27 = 4;
        }

        bzero(v22, v23);
        if (v27 > 2)
        {
          if (v27 == 3)
          {
            *v22 = v26;
            v22[2] = BYTE2(v26);
          }

          else
          {
            *v22 = v26;
          }
        }

        else if (v27 == 1)
        {
          *v22 = v26;
        }

        else
        {
          *v22 = v26;
        }
      }
    }

    else
    {
      v22[v11] = -a2;
    }
  }

  else
  {
    v21 = *(v8 + 56);

    v21(a1, a2);
  }
}

uint64_t sub_100135074(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001350E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_100135224(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

unint64_t sub_100135464()
{
  result = qword_10022EE68;
  if (!qword_10022EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022EE68);
  }

  return result;
}

unint64_t sub_1001354C4()
{
  result = qword_10022EE70;
  if (!qword_10022EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022EE70);
  }

  return result;
}

uint64_t AsyncConnectionWriterProtocol.write<A>(_:isComplete:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 104) = a2;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  return _swift_task_switch(sub_100135544, 0, 0);
}

uint64_t sub_100135544()
{
  v1 = sub_100135914(*(v0 + 16), 0, 1, *(v0 + 32), *(v0 + 48));
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  v12 = *(v0 + 40);
  v3 = v1;
  v4 = v2;
  sub_1001D1090();
  sub_100012038(v3, v4);
  v5 = sub_1001D1060();
  *(v0 + 80) = v5;
  v11 = (*(v12 + 8) + **(v12 + 8));
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_100135704;
  v7 = *(v0 + 40);
  v8 = *(v0 + 24);
  v9 = *(v0 + 104);

  return v11(v3, v4, v5, v9, v8, v7);
}

uint64_t sub_100135704()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_100135894;
  }

  else
  {
    v4 = *(v2 + 72);
    v5 = *(v2 + 64);

    sub_100011E48(v5, v4);
    v3 = sub_100135830;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100135830()
{
  sub_100011E48(v0[8], v0[9]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_100135894()
{
  v1 = v0[9];
  v2 = v0[8];

  sub_100011E48(v2, v1);
  sub_100011E48(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_100135914(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001D0B00();
  if (!v5)
  {
    v11 = v9;
    v12 = v10;
    v30 = v9;
    v31 = v10;
    if ((a3 & 1) == 0)
    {
      if (a2 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v13 = sub_1001A3C70(a2 + 1);
      v14 = sub_1001583E0(v13);
      if (v15 >> 60 != 15)
      {
        v16 = v14;
        v17 = v15;
        sub_1001CFC30();
        sub_10002683C(v16, v17);
        v11 = v30;
        v12 = v31;
      }
    }

    v18 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_21;
      }

      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      v22 = __OFSUB__(v20, v21);
      v23 = v20 - v21;
      if (!v22)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v18)
    {
      v27 = (v12 >> 24) & 0xFF000000;
      v29 = xmmword_1001D3A00;
      v19 = BYTE6(v12);
      goto LABEL_24;
    }

    LODWORD(v23) = HIDWORD(v11) - v11;
    if (__OFSUB__(HIDWORD(v11), v11))
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }

    v23 = v23;
LABEL_15:
    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v23))
    {
      v27 = bswap32(v23);
      v29 = xmmword_1001D3A00;
      if (v18 != 2)
      {
        LODWORD(v19) = HIDWORD(v11) - v11;
        if (__OFSUB__(HIDWORD(v11), v11))
        {
          goto LABEL_32;
        }

        v19 = v19;
        goto LABEL_24;
      }

      v25 = *(v11 + 16);
      v24 = *(v11 + 24);
      v22 = __OFSUB__(v24, v25);
      v19 = v24 - v25;
      if (!v22)
      {
LABEL_24:
        if (!__OFADD__(v19, 4))
        {
          sub_1001CFBA0(v19 + 4);
          v28[3] = &type metadata for UnsafeRawBufferPointer;
          v28[4] = &protocol witness table for UnsafeRawBufferPointer;
          v28[0] = &v27;
          v28[1] = v28;
          sub_100024DC8(v28, &type metadata for UnsafeRawBufferPointer);
          sub_1001CFBB0();
          sub_100011CF0(v28);
          sub_1001CFC30();
          a1 = v29;
          sub_100011E48(v11, v12);
          return a1;
        }

        goto LABEL_29;
      }

      __break(1u);
LABEL_21:
      v19 = 0;
      v27 = 0;
      v29 = xmmword_1001D3A00;
      goto LABEL_24;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return a1;
}

uint64_t NWConnectionReceived.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10002683C(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t NWConnectionReceived.contentContext.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t NWConnectionReceived.init(data:contentContext:isComplete:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_10002683C(0, 0xF000000000000000);
  sub_100089C38(a1, a2);

  sub_10002683C(a1, a2);

  return a1;
}

uint64_t sub_100135C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v8[12] = type metadata accessor for NWAsyncConnection.Inbound(0);
  v8[13] = swift_task_alloc();
  type metadata accessor for NWConnectionWrapper.State(0);
  v8[14] = swift_task_alloc();
  v9 = sub_1001CFDA0();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();
  v10 = sub_1001D02F0();
  v8[18] = v10;
  v8[19] = *(v10 - 8);
  v8[20] = swift_task_alloc();
  v11 = sub_1001D0E60();
  v8[21] = v11;
  v8[22] = *(v11 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();

  return _swift_task_switch(sub_100135E98, 0, 0);
}

uint64_t sub_100135E98()
{
  v59 = v0;
  v1 = *(v0 + 224);
  v42 = *(v0 + 216);
  v2 = *(v0 + 200);
  v50 = *(v0 + 192);
  v47 = *(v0 + 184);
  v55 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 152);
  v45 = *(v0 + 144);
  v46 = *(v0 + 168);
  v5 = *(v0 + 128);
  v54 = *(v0 + 136);
  v6 = *(v0 + 120);
  v52 = *(v0 + 112);
  v53 = v6;
  v49 = *(v0 + 64);
  v7 = *(v0 + 56);
  v44 = v7;
  v41 = *(v0 + 48);
  v8 = *(v0 + 40);
  sub_100011AC0(&qword_10022EE80, &qword_1001E01A8);
  v9 = swift_allocObject();
  *(v0 + 232) = v9;
  *(v9 + 16) = 0;
  *(v9 + 24) = _swiftEmptyArrayStorage;
  *(v9 + 32) = 0;
  v43 = *(v5 + 16);
  v43(&v1[*(v2 + 28)], v7, v6);
  *(v1 + 1) = v8;
  *(v1 + 2) = v9;
  v48 = v9;
  *v1 = v41;
  sub_100141D18(v1, v42);
  v10 = enum case for TC2LogCategory.network(_:);
  v11 = *(v4 + 104);

  v12 = v41;
  v11(v3, v10, v45);
  sub_1001D08B0();
  (*(v4 + 8))(v3, v45);
  v13 = *(v55 + 16);
  v13(v47, v50, v46);
  v43(v54, v44, v6);
  type metadata accessor for NWConnectionWrapper(0);
  v14 = swift_allocObject();
  *(v0 + 240) = v14;
  v15 = (v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock);
  v16 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
  (*(*(v16 - 8) + 56))(v52, 1, 2, v16);
  *v15 = 0;
  v17 = *(sub_100011AC0(&qword_10022F110, &qword_1001E0620) + 28);
  v18 = sub_100011AC0(&qword_10022F118, &unk_1001E0628);
  bzero(v15 + v17, *(*(v18 - 8) + 64));
  sub_100141D7C(v52, v15 + v17);
  *(v14 + 16) = v8;
  v51 = v13;
  v13((v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger), v47, v46);
  sub_100141538(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  v57 = sub_1001D23A0();
  v58 = v19;
  v61._countAndFlagsBits = 1130045498;
  v61._object = 0xE400000000000000;
  sub_1001D18B0(v61);
  *(v0 + 16) = sub_1001D1000();
  v62._countAndFlagsBits = sub_1001D23A0();
  sub_1001D18B0(v62);

  v63._countAndFlagsBits = 2629725;
  v63._object = 0xE300000000000000;
  sub_1001D18B0(v63);
  sub_1001D18B0(v49);
  v64._countAndFlagsBits = 41;
  v64._object = 0xE100000000000000;
  sub_1001D18B0(v64);
  v20 = v58;
  v21 = (v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix);
  *v21 = v57;
  v21[1] = v20;
  *(v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_readyEvent) = v48;

  sub_1001D10B0();
  (*(v5 + 8))(v54, v53);
  v22 = *(v55 + 8);
  *(v0 + 248) = v22;
  *(v0 + 256) = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v47, v46);
  *(v0 + 264) = OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger;

  v23 = sub_1001D0E50();
  v24 = sub_1001D1DD0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v57 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_1000954E0(*(v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v57);
    _os_log_impl(&_mh_execute_header, v23, v24, "%s start", v25, 0xCu);
    sub_100011CF0(v26);
  }

  v28 = *(v0 + 208);
  v27 = *(v0 + 216);
  v29 = *(v0 + 192);
  v30 = *(v0 + 168);
  v32 = *(v0 + 96);
  v31 = *(v0 + 104);
  v33 = *(v0 + 80);
  sub_1001D1170();
  v51(v31 + *(v32 + 20), v29, v30);
  v34 = *(v32 + 24);
  sub_100011AC0(qword_100227990, &unk_1001D34D0);
  v35 = swift_allocObject();
  *(v35 + 20) = 0;
  *(v35 + 16) = 0;
  *(v31 + v34) = v35;
  *v31 = v14;
  sub_100141D18(v27, v28);
  *(v0 + 24) = v14;

  v56 = (v33 + *v33);
  v36 = swift_task_alloc();
  *(v0 + 272) = v36;
  *v36 = v0;
  v36[1] = sub_1001364F4;
  v37 = *(v0 + 208);
  v38 = *(v0 + 104);
  v39 = *(v0 + 32);

  return v56(v39, v38, v0 + 24, v37);
}

uint64_t sub_1001364F4()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_10013685C;
  }

  else
  {
    sub_100141DE8(*(v2 + 208), type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
    v3 = sub_100136624;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100136624()
{
  v14 = v0;
  sub_100141DE8(v0[13], type metadata accessor for NWAsyncConnection.Inbound);

  v1 = sub_1001D0E50();
  v2 = sub_1001D1E00();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[30];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000954E0(*(v3 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v3 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v13);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s cancel", v4, 0xCu);
    sub_100011CF0(v5);
  }

  v6 = v0[31];
  v8 = v0[27];
  v7 = v0[28];
  v9 = v0[24];
  v10 = v0[21];
  sub_1001D1180();

  v6(v9, v10);
  sub_100141DE8(v8, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
  sub_100141DE8(v7, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10013685C()
{
  v15 = v0;
  v1 = v0[26];
  sub_100141DE8(v0[13], type metadata accessor for NWAsyncConnection.Inbound);
  sub_100141DE8(v1, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);

  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[30];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000954E0(*(v4 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v4 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s cancel", v5, 0xCu);
    sub_100011CF0(v6);
  }

  v7 = v0[31];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[24];
  v11 = v0[21];
  sub_1001D1180();

  v7(v10, v11);
  sub_100141DE8(v8, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
  sub_100141DE8(v9, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100136AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v11;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  v8[5] = a2;
  v8[6] = a3;
  v8[4] = a1;
  v8[13] = type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();

  return _swift_task_switch(sub_100136B6C, 0, 0);
}

uint64_t sub_100136B6C()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 40);
  sub_100011AC0(&qword_10022EE80, &qword_1001E01A8);
  v8 = swift_allocObject();
  *(v0 + 128) = v8;
  *(v8 + 16) = 0;
  *(v8 + 24) = _swiftEmptyArrayStorage;
  *(v8 + 32) = 0;
  v9 = *(v3 + 28);
  v10 = sub_1001CFDA0();
  v21 = *(v0 + 80);
  (*(*(v10 - 8) + 16))(&v1[v9], v5, v10);
  *(v1 + 1) = v7;
  *(v1 + 2) = v8;
  *v1 = v6;
  sub_100141D18(v1, v2);
  *(v0 + 16) = v2;
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *(v11 + 16) = v4;
  *(v11 + 24) = v21;

  v12 = v6;
  v13 = swift_task_alloc();
  *(v0 + 24) = v3;
  *(v0 + 144) = v13;
  *v13 = v0;
  v13[1] = sub_100136D44;
  v14 = *(v0 + 64);
  v15 = *(v0 + 72);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);
  v18 = *(v0 + 32);
  v19 = *(v0 + 40);

  return sub_100137104(v18, v19, v16, v17, v14, v15, v8, v0 + 16);
}

uint64_t sub_100136D44()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_100136F38;
  }

  else
  {
    sub_100141DE8(*(v2 + 112), type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
    v3 = sub_100136E98;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100136E98()
{
  sub_100141DE8(*(v0 + 120), type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100136F38()
{
  v1 = v0[14];
  sub_100141DE8(v0[15], type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
  sub_100141DE8(v1, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100136FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int *a5)
{
  v9 = *a4;
  v12 = (a5 + *a5);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_10005B61C;

  return v12(a1, a2, a3, v9);
}

uint64_t sub_100137104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v29;
  v8[14] = v30;
  v8[11] = v27;
  v8[12] = v28;
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  if (v29 == 1)
  {
    TupleTypeMetadata = *(v30 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v10 = swift_task_alloc();
    if (v29)
    {
      v11 = 0;
      v12 = v30 & 0xFFFFFFFFFFFFFFFELL;
      if (v29 < 4)
      {
        goto LABEL_9;
      }

      if (v10 - v12 < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v29 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = (v10 + 16);
      v15 = v29 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != v29)
      {
LABEL_9:
        v17 = v29 - v11;
        v18 = 8 * v11;
        v19 = (v10 + 8 * v11);
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19++ = v21;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v8[15] = TupleTypeMetadata;
  v8[16] = *(TupleTypeMetadata - 8);
  v8[17] = swift_task_alloc();
  v8[18] = type metadata accessor for NWAsyncConnection.Inbound(0);
  v8[19] = swift_task_alloc();
  type metadata accessor for NWConnectionWrapper.State(0);
  v8[20] = swift_task_alloc();
  v22 = sub_1001CFDA0();
  v8[21] = v22;
  v8[22] = *(v22 - 8);
  v8[23] = swift_task_alloc();
  v23 = sub_1001D02F0();
  v8[24] = v23;
  v8[25] = *(v23 - 8);
  v8[26] = swift_task_alloc();
  v24 = sub_1001D0E60();
  v8[27] = v24;
  v8[28] = *(v24 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();

  return _swift_task_switch(sub_10013741C, 0, 0);
}

uint64_t sub_10013741C()
{
  v52 = v0;
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  v8 = *(v0 + 176);
  v43 = *(v0 + 168);
  v44 = *(v0 + 184);
  v48 = *(v0 + 160);
  v47 = *(v0 + 72);
  v9 = *(v0 + 48);
  v46 = *(v0 + 56);
  v45 = *(v0 + 32);
  (*(v5 + 104))(v6, enum case for TC2LogCategory.network(_:), v7);
  sub_1001D08B0();
  (*(v5 + 8))(v6, v7);
  v10 = *(v3 + 16);
  v10(v2, v1, v4);
  (*(v8 + 16))(v44, v9, v43);
  type metadata accessor for NWConnectionWrapper(0);
  v11 = swift_allocObject();
  *(v0 + 248) = v11;
  v12 = (v11 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock);
  v13 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
  (*(*(v13 - 8) + 56))(v48, 1, 2, v13);
  *v12 = 0;
  v14 = *(sub_100011AC0(&qword_10022F110, &qword_1001E0620) + 28);
  v15 = sub_100011AC0(&qword_10022F118, &unk_1001E0628);
  bzero(v12 + v14, *(*(v15 - 8) + 64));
  sub_100141D7C(v48, v12 + v14);
  *(v11 + 16) = v45;
  v10(v11 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger, v2, v4);
  sub_100141538(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  v50 = sub_1001D23A0();
  v51 = v16;
  v54._countAndFlagsBits = 1130045498;
  v54._object = 0xE400000000000000;
  sub_1001D18B0(v54);
  *(v0 + 16) = sub_1001D1000();
  v55._countAndFlagsBits = sub_1001D23A0();
  sub_1001D18B0(v55);

  v56._countAndFlagsBits = 2629725;
  v56._object = 0xE300000000000000;
  sub_1001D18B0(v56);
  sub_1001D18B0(v46);
  v57._countAndFlagsBits = 41;
  v57._object = 0xE100000000000000;
  sub_1001D18B0(v57);
  v17 = v51;
  v18 = (v11 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix);
  *v18 = v50;
  v18[1] = v17;
  *(v11 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_readyEvent) = v47;

  sub_1001D10B0();
  (*(v8 + 8))(v44, v43);
  v19 = *(v3 + 8);
  *(v0 + 256) = v19;
  *(v0 + 264) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v2, v4);
  *(v0 + 272) = OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger;

  v20 = sub_1001D0E50();
  v21 = sub_1001D1DD0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v50 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1000954E0(*(v11 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v11 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v50);
    _os_log_impl(&_mh_execute_header, v20, v21, "%s start", v22, 0xCu);
    sub_100011CF0(v23);
  }

  v24 = *(v0 + 240);
  v25 = *(v0 + 216);
  v27 = *(v0 + 144);
  v26 = *(v0 + 152);
  v28 = *(v0 + 104);
  sub_1001D1170();
  v10(v26 + *(v27 + 20), v24, v25);
  v29 = *(v27 + 24);
  sub_100011AC0(qword_100227990, &unk_1001D34D0);
  v30 = swift_allocObject();
  *(v30 + 20) = 0;
  *(v30 + 16) = 0;
  *(v26 + v29) = v30;
  *v26 = v11;
  v31 = swift_task_alloc();
  *(v0 + 280) = v31;
  if (v28)
  {
    v32 = 0;
    v33 = *(v0 + 112) & 0xFFFFFFFFFFFFFFFELL;
    v34 = 32;
    do
    {
      v37 = *(v0 + 104);
      if (v37 == 1)
      {
        v35 = 0;
      }

      else
      {
        v35 = *(*(v0 + 120) + v34);
      }

      v36 = *(v0 + 136) + v35;
      (*(*(*(v33 + 8 * v32) - 8) + 16))(v36, *(*(v0 + 80) + 8 * v32));
      *(v31 + 8 * v32++) = v36;
      v34 += 16;
    }

    while (v32 != v37);
  }

  v38 = *(v0 + 88);

  v49 = (v38 + *v38);
  v39 = swift_task_alloc();
  *(v0 + 288) = v39;
  *v39 = v0;
  v39[1] = sub_100137A68;
  v40 = *(v0 + 152);
  v41 = *(v0 + 24);

  return v49(v41, v40, v11, v31);
}

uint64_t sub_100137A68()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_100137D8C;
  }

  else
  {
    (*(v2[16] + 8))(v2[17], v2[15]);
    v3 = sub_100137B94;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100137B94()
{
  v12 = v0;
  sub_100141DE8(v0[19], type metadata accessor for NWAsyncConnection.Inbound);

  v1 = sub_1001D0E50();
  v2 = sub_1001D1E00();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[31];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000954E0(*(v3 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v3 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v11);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s cancel", v4, 0xCu);
    sub_100011CF0(v5);
  }

  v6 = v0[32];
  v7 = v0[30];
  v8 = v0[27];
  sub_1001D1180();

  v6(v7, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100137D8C()
{
  v15 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_100141DE8(v0[19], type metadata accessor for NWAsyncConnection.Inbound);
  (*(v2 + 8))(v1, v3);

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[31];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000954E0(*(v6 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v6 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v14);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s cancel", v7, 0xCu);
    sub_100011CF0(v8);
  }

  v9 = v0[32];
  v10 = v0[30];
  v11 = v0[27];
  sub_1001D1180();

  v9(v10, v11);

  v12 = v0[1];

  return v12();
}

uint64_t NWAsyncConnection.connect<A>(parameters:endpoint:activity:on:requestID:logComment:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v13;
  *(v8 + 80) = v12;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_1001D0F40();
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 - 8);
  *(v8 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100138084, 0, 0);
}

uint64_t sub_100138084()
{
  v1 = v0[5];
  (*(v0[14] + 16))(v0[15], v0[4], v0[13]);
  sub_1001D11A0();
  swift_allocObject();

  v2 = sub_1001D1140();
  v0[16] = v2;
  if (v1)
  {
    v4 = v0[11];
    v3 = v0[12];
    v5 = v0[8];
    v6 = v0[5];
    v7 = swift_task_alloc();
    v0[17] = v7;
    v8 = *(v0 + 3);
    v9 = *(v0 + 9);
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
    *(v7 + 32) = v8;
    *(v7 + 48) = v5;
    *(v7 + 56) = v9;
    *(v7 + 72) = v4;

    v10 = swift_task_alloc();
    v0[18] = v10;
    *v10 = v0;
    v10[1] = sub_100138280;
    v11 = v0[2];

    return NWConnection.withActivity<A>(activity:_:)(v11, v6, &unk_1001E0138, v7);
  }

  else
  {
    v13 = swift_task_alloc();
    v0[20] = v13;
    *v13 = v0;
    v13[1] = sub_100138414;
    v14 = v0[11];
    v15 = v0[9];
    v16 = v0[10];
    v17 = v0[7];
    v18 = v0[8];
    v19 = v0[6];
    v20 = v0[2];

    return sub_100136AB4(v20, v2, v19, v17, v18, v15, v16, v14);
  }
}

uint64_t sub_100138280()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_100138600;
  }

  else
  {

    v2 = sub_10013839C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013839C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100138414()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_100138594;
  }

  else
  {
    v2 = sub_100138528;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100138528()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100138594()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100138600()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100138680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_10005B61C;

  return sub_100136AB4(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100138778(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10005B61C;

  return sub_100138680(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_100138864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = swift_task_alloc();
  *(v9 + 16) = v15;
  v15[2] = a9;
  v15[3] = v22;
  v15[4] = v23;
  v16 = swift_task_alloc();
  *(v9 + 24) = v16;
  *v16 = v9;
  v16[1] = sub_1001428B0;

  return NWAsyncConnection.connect<A>(parameters:endpoint:activity:on:requestID:logComment:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100138988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  *(v5 + 16) = a3;
  v11 = (a5 + *a5);
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_100138AA8;

  return v11(a1, a2, v5 + 16, a4);
}

uint64_t sub_100138AA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t NWAsyncConnection.Outbound.write(content:contentContext:isComplete:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return _swift_task_switch(sub_100138BC4, 0, 0);
}

uint64_t sub_100138BC4()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v8 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v8;
  *(v4 + 40) = v3;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_10011181C;
  v6 = *(v0 + 40);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v5, &unk_1001E0148, v4, sub_10013DCE0, v6, 0, 0, &type metadata for () + 8);
}

uint64_t sub_100138CDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *v4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v6;
  return _swift_task_switch(sub_100138D08, 0, 0);
}

uint64_t sub_100138D08()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v8 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v8;
  *(v4 + 40) = v3;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_100138E20;
  v6 = *(v0 + 40);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v5, &unk_1001E0778, v4, sub_1001428BC, v6, 0, 0, &type metadata for () + 8);
}

uint64_t sub_100138E20()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1001428D8;
  }

  else
  {

    v2 = sub_1001428C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t NWAsyncConnection.Inbound.makeAsyncIterator()@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for NWAsyncConnection.Inbound(0);
  v4 = *&v1[*(v3 + 24)];
  os_unfair_lock_lock((v4 + 20));
  if (*(v4 + 16) == 1)
  {
    result = sub_1001D2180();
    __break(1u);
  }

  else
  {
    *(v4 + 16) = 1;
    os_unfair_lock_unlock((v4 + 20));
    v5 = *v1;
    v6 = *(v3 + 20);
    v7 = type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator(0);
    v8 = v7[5];
    v9 = sub_1001D0E60();
    (*(*(v9 - 8) + 16))(&a1[v8], &v1[v6], v9);
    *&a1[v7[6]] = 0;
    a1[v7[7]] = 0;
    *a1 = v5;
  }

  return result;
}

uint64_t NWAsyncConnection.Inbound.AsyncIterator.next()()
{
  v1[6] = v0;
  v2 = sub_1001D0E60();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100139140, 0, 0);
}

uint64_t sub_100139140()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator(0);
  v6 = *(v5 + 20);
  v26 = *(v3 + 16);
  v27 = v4;
  v26(v1, v4 + v6, v2);
  v7 = sub_1001D0E50();
  v8 = sub_1001D1DD0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Waiting for data on NW connection", v9, 2u);
  }

  v10 = *(v0 + 80);
  v11 = *(v0 + 56);
  v12 = *(v0 + 64);
  v13 = *(v0 + 48);

  v14 = *(v12 + 8);
  v14(v10, v11);
  v15 = *(v5 + 28);
  *(v0 + 44) = v15;
  if (*(v13 + v15) == 1)
  {
    v26(*(v0 + 72), v27 + v6, *(v0 + 56));
    v16 = sub_1001D0E50();
    v17 = sub_1001D1DE0();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 72);
    v20 = *(v0 + 56);
    if (v18)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Continuing iteration on NW connection that previously completed", v21, 2u);
    }

    v14(v19, v20);

    v22 = *(v0 + 8);

    return v22(0, 0, 1, 0);
  }

  else
  {
    v24 = **(v0 + 48);
    v25 = swift_task_alloc();
    *(v0 + 88) = v25;
    *v25 = v0;
    v25[1] = sub_100139430;

    return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 16, &unk_1001E0158, v24, sub_10013DDC4, v24, 0, 0, &type metadata for NWConnectionReceived);
  }
}

uint64_t sub_100139430()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1001395F4;
  }

  else
  {
    v2 = sub_100139544;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100139544()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  if (v4 == 1)
  {
    *(*(v0 + 48) + *(v0 + 44)) = 1;
  }

  v5 = *(v0 + 8);

  return v5(v2, v1, v3, v4);
}

uint64_t sub_1001395F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100139660(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1001396F0;

  return NWAsyncConnection.Inbound.AsyncIterator.next()();
}

uint64_t sub_1001396F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *v5;
  v11 = *v5;

  if (!v4)
  {
    v12 = *(v10 + 16);
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = a3;
    *(v12 + 24) = a4;
  }

  v13 = *(v11 + 8);

  return v13();
}

uint64_t sub_100139824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = sub_1001398B8;

  return NWAsyncConnection.Inbound.AsyncIterator.next()();
}

uint64_t sub_1001398B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *v5;
  v10[8] = v4;

  if (v4)
  {
    if (v10[4])
    {
      swift_getObjectType();
      v11 = sub_1001D1A70();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    return _swift_task_switch(sub_100139A50, v11, v13);
  }

  else
  {
    v14 = v10[3];
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    v15 = v10[1];

    return v15();
  }
}

uint64_t sub_100139A50()
{
  v1 = v0[8];
  v2 = v0[6];
  v0[2] = v1;
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

Swift::Int TC2NetworkActivityResult.hashValue.getter(char a1)
{
  sub_1001D2580();
  sub_1001D2590(a1 & 1);
  return sub_1001D25C0();
}

uint64_t NWAsyncConnection.OHTTPStreamFactory.withOHTTPSubStream<A>(ohttpContext:gatewayKeyConfig:mediaType:logComment:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 96) = v12;
  *(v9 + 104) = v8;
  *(v9 + 80) = v11;
  *(v9 + 64) = a7;
  *(v9 + 72) = a8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  return _swift_task_switch(sub_100139BE4, 0, 0);
}

uint64_t sub_100139BE4()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_100139C78;

  return sub_10013F08C(v1);
}

uint64_t sub_100139C78()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10013A0C4;
  }

  else
  {
    v2 = sub_100139D8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100139D8C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  sub_1001D11A0();

  sub_100012038(v2, v1);
  v3 = sub_1001D10F0();
  *(v0 + 128) = v3;
  if (v3)
  {
    v4 = v3;
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    sub_10005A1A4();
    v19 = *(v0 + 80);
    v7 = sub_1001D1E40();
    *(v0 + 136) = v7;
    v8 = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) + 28);
    v9 = swift_task_alloc();
    *(v0 + 144) = v9;
    *(v9 + 16) = v6;
    *(v9 + 24) = v19;
    v10 = swift_task_alloc();
    *(v0 + 152) = v10;
    *v10 = v0;
    v10[1] = sub_100139F90;
    v13 = *(v0 + 16);
    v12 = v0 + 16;
    v11 = v13;
    v14 = *(v12 + 48);
    v15 = *(v12 + 56);

    return sub_100137104(v11, v4, v7, v5 + v8, v14, v15, 0, v12);
  }

  else
  {
    sub_100141174();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_100139F90()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_10013A14C;
  }

  else
  {
    v3 = sub_10013A0DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10013A0DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013A14C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013A1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v11 = (a5 + *a5);
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_10005B61C;

  return v11(a1, a2, a3);
}

uint64_t sub_10013A2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v14;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  v8[7] = a2;
  v8[8] = a3;
  v8[6] = a1;
  v8[15] = type metadata accessor for NWAsyncConnection.Inbound(0);
  v8[16] = swift_task_alloc();
  type metadata accessor for NWConnectionWrapper.State(0);
  v8[17] = swift_task_alloc();
  v9 = sub_1001CFDA0();
  v8[18] = v9;
  v8[19] = *(v9 - 8);
  v8[20] = swift_task_alloc();
  v10 = sub_1001D02F0();
  v8[21] = v10;
  v8[22] = *(v10 - 8);
  v8[23] = swift_task_alloc();
  v11 = sub_1001D0E60();
  v8[24] = v11;
  v8[25] = *(v11 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();

  return _swift_task_switch(sub_10013A4C4, 0, 0);
}

uint64_t sub_10013A4C4()
{
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = sub_10013A558;

  return sub_10013F08C(v1);
}

uint64_t sub_10013A558()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_10013AD40;
  }

  else
  {
    v2 = sub_10013A66C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013A66C()
{
  v50 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_1001D11A0();
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;

  sub_100012038(v1, v2);
  v3 = sub_1001D1100();
  *(v0 + 240) = v3;
  if (v3)
  {
    v4 = *(v0 + 208);
    v5 = *(v0 + 216);
    v6 = *(v0 + 200);
    v7 = *(v0 + 176);
    v8 = *(v0 + 184);
    v10 = *(v0 + 160);
    v9 = *(v0 + 168);
    v42 = v3;
    v11 = *(v0 + 152);
    v40 = *(v0 + 192);
    v41 = *(v0 + 144);
    v45 = *(v0 + 136);
    v44 = *(v0 + 96);
    v43 = *(v0 + 80);
    sub_10005A1A4();
    *(v0 + 248) = sub_1001D1E40();
    v12 = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) + 28);
    (*(v7 + 104))(v8, enum case for TC2LogCategory.network(_:), v9);
    sub_1001D08B0();
    (*(v7 + 8))(v8, v9);
    v13 = *(v6 + 16);
    v13(v4, v5, v40);
    (*(v11 + 16))(v10, v44 + v12, v41);
    type metadata accessor for NWConnectionWrapper(0);
    v14 = swift_allocObject();
    *(v0 + 256) = v14;
    v15 = (v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock);
    v16 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
    (*(*(v16 - 8) + 56))(v45, 1, 2, v16);
    *v15 = 0;
    v17 = *(sub_100011AC0(&qword_10022F110, &qword_1001E0620) + 28);
    v18 = sub_100011AC0(&qword_10022F118, &unk_1001E0628);
    bzero(v15 + v17, *(*(v18 - 8) + 64));
    sub_100141D7C(v45, v15 + v17);
    *(v14 + 16) = v42;
    v46 = v13;
    v13((v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger), v4, v40);
    sub_100141538(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

    v48 = sub_1001D23A0();
    v49 = v19;
    v52._countAndFlagsBits = 1130045498;
    v52._object = 0xE400000000000000;
    sub_1001D18B0(v52);
    *(v0 + 32) = sub_1001D1000();
    v53._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v53);

    v54._countAndFlagsBits = 2629725;
    v54._object = 0xE300000000000000;
    sub_1001D18B0(v54);
    sub_1001D18B0(v43);
    v55._countAndFlagsBits = 41;
    v55._object = 0xE100000000000000;
    sub_1001D18B0(v55);
    v20 = v49;
    v21 = (v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix);
    *v21 = v48;
    v21[1] = v20;
    *(v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_readyEvent) = 0;

    sub_1001D10B0();
    (*(v11 + 8))(v10, v41);
    v22 = *(v6 + 8);
    *(v0 + 264) = v22;
    *(v0 + 272) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v4, v40);
    *(v0 + 280) = OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger;

    v23 = sub_1001D0E50();
    v24 = sub_1001D1DD0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v48 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1000954E0(*(v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v48);
      _os_log_impl(&_mh_execute_header, v23, v24, "%s start", v25, 0xCu);
      sub_100011CF0(v26);
    }

    v27 = *(v0 + 216);
    v28 = *(v0 + 192);
    v30 = *(v0 + 120);
    v29 = *(v0 + 128);
    v31 = *(v0 + 104);
    sub_1001D1170();
    v46(v29 + *(v30 + 20), v27, v28);
    v32 = *(v30 + 24);
    sub_100011AC0(qword_100227990, &unk_1001D34D0);
    v33 = swift_allocObject();
    *(v33 + 20) = 0;
    *(v33 + 16) = 0;
    *(v29 + v32) = v33;
    *v29 = v14;
    *(v0 + 40) = v14;

    v47 = (v31 + *v31);
    v34 = swift_task_alloc();
    *(v0 + 288) = v34;
    *v34 = v0;
    v34[1] = sub_10013ADE8;
    v35 = *(v0 + 128);
    v36 = *(v0 + 48);

    return v47(v36, v35, v0 + 40);
  }

  else
  {
    sub_100141174();
    swift_allocError();
    *v38 = 0;
    swift_willThrow();

    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_10013AD40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013ADE8()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_10013B0EC;
  }

  else
  {
    v2 = sub_10013AEFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013AEFC()
{
  v13 = v0;
  sub_100141DE8(v0[16], type metadata accessor for NWAsyncConnection.Inbound);

  v1 = sub_1001D0E50();
  v2 = sub_1001D1E00();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[32];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000954E0(*(v3 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v3 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v12);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s cancel", v4, 0xCu);
    sub_100011CF0(v5);
  }

  v6 = v0[33];
  v7 = v0[31];
  v8 = v0[27];
  v9 = v0[24];
  sub_1001D1180();

  v6(v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10013B0EC()
{
  v13 = v0;
  sub_100141DE8(v0[16], type metadata accessor for NWAsyncConnection.Inbound);

  v1 = sub_1001D0E50();
  v2 = sub_1001D1E00();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[32];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000954E0(*(v3 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v3 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v12);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s cancel", v4, 0xCu);
    sub_100011CF0(v5);
  }

  v6 = v0[33];
  v7 = v0[31];
  v8 = v0[27];
  v9 = v0[24];
  sub_1001D1180();

  v6(v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t NWAsyncConnection.OHTTPStreamFactory.withOHTTPSubStream<A, B>(ohttpContext:standaloneAEADKey:logComment:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[11] = v13;
  v9[12] = v8;
  v9[9] = a8;
  v9[10] = v12;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v9[13] = *(v12 - 8);
  v9[14] = swift_task_alloc();

  return _swift_task_switch(sub_10013B3A8, 0, 0);
}

uint64_t sub_10013B3A8()
{
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_10013B43C;

  return sub_10013F08C(v1);
}

uint64_t sub_10013B43C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_10013B8A4;
  }

  else
  {
    v2 = sub_10013B550;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013B550()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);
  sub_1001D11A0();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_1001D1100();
  *(v0 + 136) = v5;
  if (v5)
  {
    v6 = v5;
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);
    sub_10005A1A4();
    v21 = *(v0 + 72);
    v22 = *(v0 + 56);
    v9 = sub_1001D1E40();
    *(v0 + 144) = v9;
    v10 = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) + 28);
    v11 = swift_task_alloc();
    *(v0 + 152) = v11;
    *(v11 + 16) = v21;
    *(v11 + 32) = v8;
    *(v11 + 40) = v22;
    v12 = swift_task_alloc();
    *(v0 + 160) = v12;
    *v12 = v0;
    v12[1] = sub_10013B770;
    v15 = *(v0 + 16);
    v14 = v0 + 16;
    v13 = v15;
    v16 = *(v14 + 24);
    v17 = *(v14 + 32);

    return sub_100137104(v13, v6, v9, v7 + v10, v16, v17, 0, v14);
  }

  else
  {
    sub_100141174();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_10013B770()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_10013B984;
  }

  else
  {
    v3 = sub_10013B908;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10013B8A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013B908()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013B984()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013B9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v11 = (a5 + *a5);
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_10005B61C;

  return v11(a1, a2, a3);
}

uint64_t NWAsyncConnection.OHTTPStreamFactory.withOHTTPSubStream<A>(ohttpContext:logComment:aeadDelivery:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = v11;
  v9[11] = v8;
  v9[8] = a7;
  v9[9] = a8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  return _swift_task_switch(sub_10013BB48, 0, 0);
}

uint64_t sub_10013BB48()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_10013BBDC;

  return sub_10013F08C(v1);
}

uint64_t sub_10013BBDC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_10013C06C;
  }

  else
  {
    v2 = sub_10013BCF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013BCF0()
{
  sub_1001D11A0();

  v1 = sub_1001D1110();
  *(v0 + 112) = v1;
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    sub_100011AC0(&qword_10022EE80, &qword_1001E01A8);
    v7 = swift_allocObject();
    *(v0 + 120) = v7;
    *(v7 + 16) = 0;
    *(v7 + 24) = _swiftEmptyArrayStorage;
    *(v7 + 32) = 0;
    sub_10005A1A4();
    v18 = *(v0 + 64);
    v19 = *(v0 + 48);
    v8 = sub_1001D1E40();
    *(v0 + 128) = v8;
    v9 = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) + 28);
    v10 = swift_task_alloc();
    *(v0 + 136) = v10;
    *(v10 + 16) = v4;
    *(v10 + 24) = v3;
    *(v10 + 32) = v2;
    *(v10 + 40) = v6;
    *(v10 + 48) = v5;
    *(v10 + 56) = v7;
    *(v10 + 64) = v19;
    *(v10 + 80) = v18;

    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    *v11 = v0;
    v11[1] = sub_10013BF20;
    v12 = *(v0 + 32);
    v13 = *(v0 + 40);
    v14 = *(v0 + 16);

    return sub_100137104(v14, v2, v8, v3 + v9, v12, v13, v7, v0 + 16);
  }

  else
  {
    sub_100141174();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_10013BF20()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 128);

  if (v0)
  {
    v4 = sub_10013C0FC;
  }

  else
  {
    v4 = sub_10013C084;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10013C084()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013C0FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013C174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v15;
  *(v8 + 120) = v14;
  *(v8 + 104) = v13;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  v9 = sub_1001D02F0();
  *(v8 + 144) = v9;
  *(v8 + 152) = *(v9 - 8);
  *(v8 + 160) = swift_task_alloc();
  v10 = sub_1001D0E60();
  *(v8 + 168) = v10;
  *(v8 + 176) = *(v10 - 8);
  *(v8 + 184) = swift_task_alloc();

  return _swift_task_switch(sub_10013C2B0, 0, 0);
}

uint64_t sub_10013C2B0()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[11];
  v4 = v0[12];
  (*(v2 + 104))(v1, enum case for TC2LogCategory.network(_:), v3);
  sub_1001D08B0();
  (*(v2 + 8))(v1, v3);
  type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0);
  sub_1001CFDA0();
  sub_100141538(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v9 = sub_1001D23A0();
  v10 = v6;
  v12._countAndFlagsBits = 1130045498;
  v12._object = 0xE400000000000000;
  sub_1001D18B0(v12);
  v0[6] = sub_1001D1000();
  v13._countAndFlagsBits = sub_1001D23A0();
  sub_1001D18B0(v13);

  v14._countAndFlagsBits = 2629725;
  v14._object = 0xE300000000000000;
  sub_1001D18B0(v14);
  v15._countAndFlagsBits = v5;
  v15._object = v4;
  sub_1001D18B0(v15);
  v16._countAndFlagsBits = 41;
  v16._object = 0xE100000000000000;
  sub_1001D18B0(v16);
  v0[24] = v9;
  v0[25] = v10;
  v7 = swift_task_alloc();
  v0[26] = v7;
  *v7 = v0;
  v7[1] = sub_10013C4A8;

  return sub_10013F08C(v7);
}

uint64_t sub_10013C4A8()
{
  *(*v1 + 216) = v0;

  if (v0)
  {

    v2 = sub_10013C7D4;
  }

  else
  {
    v2 = sub_10013C5C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013C5C4()
{
  v3 = (*(v0 + 112) + **(v0 + 112));
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = sub_10013C6B0;

  return v3();
}

uint64_t sub_10013C6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[29] = a1;
  v6[30] = a2;
  v6[31] = a3;
  v6[32] = a4;
  v6[33] = v4;

  if (v4)
  {

    v7 = sub_10013CF00;
  }

  else
  {
    v7 = sub_10013C864;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10013C7D4()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_10013C864()
{
  v50 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  sub_100012038(*(v0 + 232), *(v0 + 240));
  sub_100012038(v1, v2);

  v3 = sub_1001D0E50();
  v4 = sub_1001D1DD0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 256);
  if (!v5)
  {
    v14 = *(v0 + 248);
    sub_100011E48(*(v0 + 232), *(v0 + 240));
    sub_100011E48(v14, v6);
    goto LABEL_24;
  }

  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v49[0] = v10;
  *v9 = 136315650;
  result = sub_1000954E0(v8, v7, v49);
  *(v9 + 4) = result;
  *(v9 + 12) = 2048;
  v12 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = *(v0 + 262);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v12 != 2)
  {
    v13 = 0;
    goto LABEL_13;
  }

  v15 = *(*(v0 + 248) + 16);
  v16 = *(*(v0 + 248) + 24);
  v17 = __OFSUB__(v16, v15);
  v13 = v16 - v15;
  if (v17)
  {
    __break(1u);
LABEL_10:
    v18 = *(v0 + 248);
    v19 = *(v0 + 252);
    v17 = __OFSUB__(v19, v18);
    LODWORD(v13) = v19 - v18;
    if (v17)
    {
      __break(1u);
      goto LABEL_35;
    }

    v13 = v13;
  }

LABEL_13:
  v20 = *(v0 + 240);
  *(v9 + 14) = v13;
  *(v9 + 22) = 2048;
  v21 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v21 != 2)
    {
      v22 = 0;
      goto LABEL_23;
    }

    v23 = *(*(v0 + 232) + 16);
    v24 = *(*(v0 + 232) + 24);
    v17 = __OFSUB__(v24, v23);
    v22 = v24 - v23;
    if (!v17)
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_20:
    v25 = *(v0 + 232);
    v26 = *(v0 + 236);
    v17 = __OFSUB__(v26, v25);
    LODWORD(v22) = v26 - v25;
    if (!v17)
    {
      v22 = v22;
      goto LABEL_23;
    }

LABEL_35:
    __break(1u);
    return result;
  }

  if (v21)
  {
    goto LABEL_20;
  }

  v22 = BYTE6(v20);
LABEL_23:
  v28 = *(v0 + 248);
  v27 = *(v0 + 256);
  v29 = *(v0 + 232);
  *(v9 + 24) = v22;
  sub_100011E48(v29, v20);
  sub_100011E48(v28, v27);
  _os_log_impl(&_mh_execute_header, v3, v4, "%s updating obliviousHTTPConnection aeadNonce.count=%ld, aeadKey.count=%ld", v9, 0x20u);
  sub_100011CF0(v10);

LABEL_24:

  v30 = *(v0 + 232);
  *(v0 + 16) = *(v0 + 248);
  *(v0 + 32) = v30;
  if (sub_1001D1130())
  {

    v31 = sub_1001D0E50();
    v32 = sub_1001D1DD0();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 200);
    if (v33)
    {
      v35 = *(v0 + 192);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v49[0] = v37;
      *v36 = 136315138;
      v38 = sub_1000954E0(v35, v34, v49);

      *(v36 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s did update obliviousHTTPConnection", v36, 0xCu);
      sub_100011CF0(v37);
    }

    else
    {
    }

    v48 = (*(v0 + 128) + **(v0 + 128));
    v45 = swift_task_alloc();
    *(v0 + 272) = v45;
    *v45 = v0;
    v45[1] = sub_10013CD38;
    v46 = *(v0 + 56);
    v47 = *(v0 + 64);

    return v48(v46, v47);
  }

  else
  {
    v39 = *(v0 + 248);
    v40 = *(v0 + 256);
    v42 = *(v0 + 232);
    v41 = *(v0 + 240);

    sub_100141174();
    swift_allocError();
    *v43 = 1;
    swift_willThrow();
    sub_100011E48(v42, v41);
    sub_100011E48(v39, v40);
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

    v44 = *(v0 + 8);

    return v44();
  }
}

uint64_t sub_10013CD38()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_10013CF90;
  }

  else
  {
    v2 = sub_10013CE4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013CE4C()
{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  sub_100011E48(v0[29], v0[30]);
  sub_100011E48(v1, v2);
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10013CF00()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10013CF90()
{
  v1 = v0[31];
  v2 = v0[32];
  sub_100011E48(v0[29], v0[30]);
  sub_100011E48(v1, v2);
  (*(v0[22] + 8))(v0[23], v0[21]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10013D05C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100011AC0(&qword_10022F1C0, &qword_1001E0748);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  (*(v4 + 16))(&v10 - v5, a1, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v6, v3);
  sub_1001D1120();
}

uint64_t sub_10013D1AC(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022F1C8, &qword_1001E0750);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  sub_10001208C(a1, &v7 - v3, &qword_10022F1C8, &qword_1001E0750);
  v5 = sub_1001D10E0();
  result = (*(*(v5 - 8) + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100011AC0(&qword_10022F1C0, &qword_1001E0748);
    return sub_1001D1AA0();
  }

  return result;
}

uint64_t sub_10013D2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = swift_task_alloc();
  *(v9 + 16) = v15;
  v15[2] = a9;
  v15[3] = v22;
  v15[4] = v23;
  v16 = swift_task_alloc();
  *(v9 + 24) = v16;
  *v16 = v9;
  v16[1] = sub_10013D3D8;

  return NWAsyncConnection.OHTTPStreamFactory.withOHTTPSubStream<A>(ohttpContext:gatewayKeyConfig:mediaType:logComment:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_10013D3D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10013D4E8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a3;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_1001428B4;

  return v9(a1, a2, v4 + 16);
}

uint64_t sub_10013D5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  v15[2] = a8;
  v15[3] = v21;
  v15[4] = v22;
  v15[5] = a6;
  v15[6] = a7;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_1001428B0;

  return NWAsyncConnection.OHTTPStreamFactory.withOHTTPSubStream<A, B>(ohttpContext:standaloneAEADKey:logComment:_:)(a1, a2, a3, a4, a5, &unk_1001E0760, v15, a8);
}

uint64_t sub_10013D724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1000130E0;

  return NWAsyncConnection.OHTTPStreamFactory.withOHTTPSubStream<A>(ohttpContext:logComment:aeadDelivery:body:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_10013D828(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10013D848, 0, 0);
}

uint64_t sub_10013D848()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_10013D8DC;

  return sub_10013F08C(v1);
}

uint64_t sub_10013D8DC()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_10013DC00;
  }

  else
  {
    v2 = sub_10013D9F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013D9F0()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  v4 = sub_1001D10E0();
  *v3 = v0;
  v3[1] = sub_10013DAEC;
  v5 = v0[2];

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000019, 0x80000001001E6F70, sub_100142310, v2, v4);
}

uint64_t sub_10013DAEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10013DC18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10005B61C;

  return sub_1001446A8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10013DD28(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10005B61C;

  return sub_1001454AC(a1, v1);
}

uint64_t sub_10013DDCC(uint64_t result)
{
  if (*(v1 + 49))
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    v3 = *v1;
    v4 = *(v2 + 1);
    v6[0] = *v2;
    v6[1] = v4;
    v6[2] = *(v2 + 2);
    v7 = *(v2 + 24);

    sub_100011F00(v6, &qword_1002295E8, &unk_1001E0660);

    sub_1001D19B0();
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1001D19F0();
    }

    v5 = sub_1001D1A20();
    *v2 = v3;
    *(v2 + 49) = 0;
  }

  return v5;
}

uint64_t sub_10013DEB4(uint64_t result)
{
  if (*(v1 + 9))
  {
    __break(1u);
  }

  else
  {
    v3 = *v1;

    sub_1001D19B0();
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1001D19F0();
    }

    v2 = sub_1001D1A20();
    *v1 = v3;
    *(v1 + 4) = 0;
  }

  return v2;
}

uint64_t sub_10013DF5C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100011AC0(&qword_10022F158, &qword_1001E06C0);
  __chkstk_darwin(v3);
  v5 = (&v7 - v4);
  sub_10001208C(v2, &v7 - v4, &qword_10022F158, &qword_1001E06C0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100011F00(v2, &qword_10022F158, &qword_1001E06C0);
    v8 = *v5;

    sub_1001D19B0();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1001D19F0();
    }

    sub_1001D1A20();
    *v2 = v8;
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void sub_10013E0A8(__int128 *a1, uint64_t a2)
{
  v3 = *v2;
  v27 = *(a1 + 24);
  v4 = a1[1];
  v26[0] = *a1;
  v26[1] = v4;
  v26[2] = a1[2];
  if (v3 != 2)
  {
    if (v3)
    {
      v7 = a1[1];
      v21 = *a1;
      v22 = v7;
      v23 = a1[2];
      v24 = *(a1 + 48);
      v25 = HIBYTE(v27);
      sub_10001208C(v26, v16, &qword_1002295E8, &unk_1001E0660);
      sub_100011F00(&v21, &qword_1002295E8, &unk_1001E0660);
      return;
    }

    if ((v27 & 0x100) == 0)
    {
      v5 = a1[1];
      v21 = *a1;
      v22 = v5;
      v23 = a1[2];
      v24 = *(a1 + 48);
      v25 = HIBYTE(v27);
      sub_10001208C(v26, v16, &qword_1002295E8, &unk_1001E0660);
      sub_100011F00(&v21, &qword_1002295E8, &unk_1001E0660);
      sub_10013DDCC(a2);
      *v2 = a2;

      return;
    }

    goto LABEL_7;
  }

  if ((v27 & 0x100) != 0)
  {
LABEL_7:
    v8 = a1[2];
    v22 = a1[1];
    v23 = v8;
    v21 = *a1;
    v24 = *(a1 + 48);
    v25 = HIBYTE(v27);
    v17 = v21;
    v18 = v22;
    v19 = v8;
    v20 = v24 & 1;
    v9 = (a2 + *(*a2 + 88));
    sub_10001208C(v26, v16, &qword_1002295E8, &unk_1001E0660);
    sub_10001208C(&v21, v16, &qword_1002295E8, &unk_1001E0660);
    os_unfair_lock_lock(v9);
    v10 = sub_100011AC0(&qword_1002295F0, &qword_1001D6990);
    sub_1001467FC(v9 + *(v10 + 28), &v17);
    os_unfair_lock_unlock(v9);
    sub_100011F00(&v21, &qword_1002295E8, &unk_1001E0660);
    sub_1001286C4(v17, *(&v17 + 1), v18, *(&v18 + 1), v19, *(&v19 + 1), v20);
    *v2 = 1;
    return;
  }

  v11 = a1[1];
  v21 = *a1;
  v22 = v11;
  v23 = a1[2];
  v24 = *(a1 + 48);
  v25 = HIBYTE(v27);
  sub_10001208C(v26, v16, &qword_1002295E8, &unk_1001E0660);
  sub_100011F00(&v21, &qword_1002295E8, &unk_1001E0660);
  v13 = (a2 + *(*a2 + 88));
  os_unfair_lock_lock(v13);
  v14 = sub_100011AC0(&qword_1002295F0, &qword_1001D6990);
  sub_100140F34(v13 + *(v14 + 28), v15, &qword_10022F128, &unk_1001E0670, &qword_1002295D8, &qword_1001D6988);
  os_unfair_lock_unlock(v13);
}

void sub_10013E398(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*v2 == 2)
  {
    if ((*(a1 + 9) & 1) == 0)
    {
      v8 = (a2 + *(*a2 + 88));
      os_unfair_lock_lock(v8);
      v9 = sub_100011AC0(&qword_10022F1D8, &unk_1001E0860);
      sub_100140F34(v8 + *(v9 + 28), &v10, &qword_10022D298, &qword_1001DE530, &qword_100227B38, &qword_1001D36D0);
      os_unfair_lock_unlock(v8);
      return;
    }

LABEL_8:
    v11 = *a1;
    v12 = v4 & 1;
    v6 = (a2 + *(*a2 + 88));
    sub_1001427A0(v3, v4, 1, sub_1001428C0);
    sub_1001422F8(v3, v4 & 1);
    os_unfair_lock_lock(v6);
    v7 = sub_100011AC0(&qword_10022F1D8, &unk_1001E0860);
    sub_1001469DC(v6 + *(v7 + 28), &v11);
    os_unfair_lock_unlock(v6);
    sub_1001427B4(v3, v4, 1, sub_1001428C4);
    sub_1001427B4(v3, v4, 1, sub_1001428C4);
    *v2 = 1;
    return;
  }

  if (*v2)
  {
    return;
  }

  if (*(a1 + 9))
  {
    goto LABEL_8;
  }

  sub_10013DEB4(a2);
  *v2 = a2;
}

void sub_10013E57C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*v2 == 2)
  {
    if ((*(a1 + 9) & 1) == 0)
    {
      v8 = (a2 + *(*a2 + 88));
      os_unfair_lock_lock(v8);
      v9 = sub_100011AC0(&qword_10022F198, &qword_1001E0718);
      sub_100140F34(v8 + *(v9 + 28), &v10, &qword_10022F1A0, &unk_1001E0720, &qword_10022F1A8, &qword_1001E0870);
      os_unfair_lock_unlock(v8);
      return;
    }

LABEL_8:
    v11 = *a1;
    v12 = v4 & 1;
    v6 = (a2 + *(*a2 + 88));
    sub_1001427A0(v3, v4, 1, sub_1001428C0);
    sub_1001422F8(v3, v4 & 1);
    os_unfair_lock_lock(v6);
    v7 = sub_100011AC0(&qword_10022F198, &qword_1001E0718);
    sub_100146B68(v6 + *(v7 + 28), &v11);
    os_unfair_lock_unlock(v6);
    sub_1001427B4(v3, v4, 1, sub_1001428C4);
    sub_1001427B4(v3, v4, 1, sub_1001428C4);
    *v2 = 1;
    return;
  }

  if (*v2)
  {
    return;
  }

  if (*(a1 + 9))
  {
    goto LABEL_8;
  }

  sub_10013DEB4(a2);
  *v2 = a2;
}

void sub_10013E760(uint64_t a1, uint64_t a2)
{
  v5 = sub_100011AC0(&qword_10022F188, &qword_1001E06F0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v11 = &v28[-v10];
  v12 = __chkstk_darwin(v9);
  v14 = &v28[-v13];
  __chkstk_darwin(v12);
  v16 = &v28[-v15];
  v17 = sub_100011AC0(&qword_10022F150, &qword_1001E06B8);
  __chkstk_darwin(v17 - 8);
  v19 = &v28[-v18];
  v20 = *v2;
  sub_10001208C(a1, &v28[-v18], &qword_10022F158, &qword_1001E06C0);
  if (v20 == 2)
  {
    sub_100011AC0(&qword_10022F158, &qword_1001E06C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000DBEF4(v19, v11, &qword_10022F188, &qword_1001E06F0);
      sub_10001208C(v11, v8, &qword_10022F188, &qword_1001E06F0);
      v24 = (a2 + *(*a2 + 88));
      os_unfair_lock_lock(v24);
      v25 = sub_100011AC0(&qword_10022F160, &qword_1001E06C8);
      sub_100146CFC(v24 + *(v25 + 28), v8);
      os_unfair_lock_unlock(v24);
      sub_100011F00(v11, &qword_10022F188, &qword_1001E06F0);
      v23 = v8;
      goto LABEL_8;
    }

    sub_100011F00(v19, &qword_10022F158, &qword_1001E06C0);
    v26 = (a2 + *(*a2 + 88));
    os_unfair_lock_lock(v26);
    v27 = sub_100011AC0(&qword_10022F160, &qword_1001E06C8);
    sub_100140F34(v26 + *(v27 + 28), v28, &qword_10022F168, &unk_1001E06D0, &qword_10022F170, &unk_1001E18C0);
    os_unfair_lock_unlock(v26);
  }

  else
  {
    if (v20)
    {
      sub_100011F00(v19, &qword_10022F158, &qword_1001E06C0);
      return;
    }

    sub_100011AC0(&qword_10022F158, &qword_1001E06C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000DBEF4(v19, v16, &qword_10022F188, &qword_1001E06F0);
      sub_10001208C(v16, v14, &qword_10022F188, &qword_1001E06F0);
      v21 = (a2 + *(*a2 + 88));
      os_unfair_lock_lock(v21);
      v22 = sub_100011AC0(&qword_10022F160, &qword_1001E06C8);
      sub_100146CFC(v21 + *(v22 + 28), v14);
      os_unfair_lock_unlock(v21);
      sub_100011F00(v16, &qword_10022F188, &qword_1001E06F0);
      v23 = v14;
LABEL_8:
      sub_100011F00(v23, &qword_10022F188, &qword_1001E06F0);
      *v2 = 1;
      return;
    }

    sub_100011F00(v19, &qword_10022F158, &qword_1001E06C0);
    sub_10013DF5C(a2);
    *v2 = a2;
  }
}

unint64_t sub_10013EB64(__int128 *a1)
{
  v2 = *v1;
  v24 = *(a1 + 24);
  v3 = a1[1];
  v22[0] = *a1;
  v22[1] = v3;
  v23 = a1[2];
  v18 = v22[0];
  v19 = v3;
  v20 = v23;
  v21 = *(a1 + 48);
  v4 = HIBYTE(v24);
  if (v2)
  {
    if (v2 != 1 && v2 != 2 && (v24 & 0x100) == 0)
    {
      v8 = a1[1];
      v13 = *a1;
      v14 = v8;
      v15 = a1[2];
      v16 = *(a1 + 48);
      v17 = HIBYTE(v24);
      sub_10001208C(v22, v12, &qword_1002295E8, &unk_1001E0660);
      sub_100011F00(&v13, &qword_1002295E8, &unk_1001E0660);
      v9 = (v2 + *(*v2 + 88));
      os_unfair_lock_lock(v9);
      v10 = sub_100011AC0(&qword_1002295F0, &qword_1001D6990);
      sub_100140F34(v9 + *(v10 + 28), v11, &qword_10022F128, &unk_1001E0670, &qword_1002295D8, &qword_1001D6988);
      os_unfair_lock_unlock(v9);
      result = sub_100141EFC(v2);
      *v1 = 2;
      return result;
    }

    v5 = a1[1];
    v13 = *a1;
    v14 = v5;
    v15 = a1[2];
    v6 = *(a1 + 48);
  }

  else
  {
    *v1 = 2;
    v13 = v18;
    v14 = v19;
    v15 = v20;
    v6 = v21;
  }

  v16 = v6;
  v17 = v4;
  sub_10001208C(v22, v12, &qword_1002295E8, &unk_1001E0660);
  return sub_100011F00(&v13, &qword_1002295E8, &unk_1001E0660);
}

uint64_t sub_10013ED28(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_10013ED48, 0, 0);
}

uint64_t sub_10013ED48()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v0 + 16;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = sub_100011AC0(&qword_1002295D0, &qword_1001E0650);
  *v4 = v0;
  v4[1] = sub_10013EE70;
  v6 = *(v0 + 32);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &unk_1001E0648, v2, sub_100141EF4, v3, 0, 0, v5);
}

uint64_t sub_10013EE70()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10013F008;
  }

  else
  {

    v2 = sub_10013EF94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013EF94()
{
  sub_100011F00(v0 + 24, &qword_10022F120, &qword_1001E0658);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013F008()
{

  sub_100011F00(v0 + 24, &qword_10022F120, &qword_1001E0658);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013F08C(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_10013F0AC, 0, 0);
}

uint64_t sub_10013F0AC()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v0 + 16;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_10013F1C8;
  v5 = *(v0 + 32);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v5, &unk_1001E0798, v2, sub_100142790, v3, 0, 0, &type metadata for () + 8);
}

uint64_t sub_10013F1C8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10013F360;
  }

  else
  {

    v2 = sub_10013F2EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013F2EC()
{
  sub_100011F00(v0 + 24, &qword_10022F1D0, &unk_1001E07A0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013F360()
{

  sub_100011F00(v0 + 24, &qword_10022F1D0, &unk_1001E07A0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013F404()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v0 + 16;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_10013F51C;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 32, &unk_1001E0708, v2, sub_1001422E8, v3, 0, 0, &type metadata for Int);
}

uint64_t sub_10013F51C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10013F6B8;
  }

  else
  {

    v2 = sub_10013F640;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013F640()
{
  sub_100011F00(v0 + 24, &qword_10022F190, &qword_1001E0710);
  v1 = *(v0 + 32);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10013F6B8()
{

  sub_100011F00(v0 + 24, &qword_10022F190, &qword_1001E0710);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013F73C(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_10013F75C, 0, 0);
}

uint64_t sub_10013F75C()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v0 + 16;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  *v4 = v0;
  v4[1] = sub_10013F878;
  v6 = *(v0 + 32);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &unk_1001E06A0, v2, sub_100141FC0, v3, 0, 0, v5);
}

uint64_t sub_10013F878()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10013FA10;
  }

  else
  {

    v2 = sub_10013F99C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013F99C()
{
  sub_100011F00(v0 + 24, &qword_10022F140, &qword_1001E06A8);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013FA10()
{

  sub_100011F00(v0 + 24, &qword_10022F140, &qword_1001E06A8);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013FA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10013FAB8, 0, 0);
}

uint64_t sub_10013FAB8()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_100011AC0(&qword_1002295D0, &qword_1001E0650);
  *v2 = v0;
  v2[1] = sub_10013FBB8;
  v4 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0x2865766965636572, 0xE900000000000029, sub_100141F0C, v1, v3);
}

uint64_t sub_10013FBB8()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10013FCF4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10013FCF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013FD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10013FD7C, 0, 0);
}

uint64_t sub_10013FD7C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_10013FE70;
  v3 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0x2865766965636572, 0xE900000000000029, sub_100142798, v1, &type metadata for () + 8);
}

uint64_t sub_10013FE70()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001428DC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10013FFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10013FFD0, 0, 0);
}

uint64_t sub_10013FFD0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  *v2 = v0;
  v2[1] = sub_10013FE70;
  v4 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0x2865766965636572, 0xE900000000000029, sub_100141FC8, v1, v3);
}

uint64_t sub_1001400C4(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v6 = sub_100011AC0(&qword_10022F128, &unk_1001E0670);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_100011AC0(&qword_1002295D8, &qword_1001D6988);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = *(v10 + 16);
  v13(&v19 - v11, a1, v9);
  sub_100011AC0(&qword_10022F130, &qword_1001E0680);
  v14 = swift_allocObject();
  v13(v8, v12, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v15 = (v14 + *(*v14 + 88));
  *v15 = 0;
  v16 = *(sub_100011AC0(&qword_1002295F0, &qword_1001D6990) + 28);
  v17 = sub_100011AC0(&qword_10022F138, &qword_1001E0688);
  bzero(v15 + v16, *(*(v17 - 8) + 64));
  sub_1000DBEF4(v8, v15 + v16, &qword_10022F128, &unk_1001E0670);
  (*(v10 + 8))(v12, v9);
  os_unfair_lock_lock((a2 + 16));
  os_unfair_lock_lock(a3);
  sub_10013E0A8((a2 + 24), v14);
  os_unfair_lock_unlock(a3);
  os_unfair_lock_unlock((a2 + 16));
}

uint64_t sub_10014032C(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v6 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = *(v10 + 16);
  v13(&v19 - v11, a1, v9);
  sub_100011AC0(&qword_10022F1E0, &qword_1001E07B0);
  v14 = swift_allocObject();
  v13(v8, v12, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v15 = (v14 + *(*v14 + 88));
  *v15 = 0;
  v16 = *(sub_100011AC0(&qword_10022F1D8, &unk_1001E0860) + 28);
  v17 = sub_100011AC0(&qword_10022F1E8, &qword_1001E07B8);
  bzero(v15 + v16, *(*(v17 - 8) + 64));
  sub_1000DBEF4(v8, v15 + v16, &qword_10022D298, &qword_1001DE530);
  (*(v10 + 8))(v12, v9);
  os_unfair_lock_lock((a2 + 16));
  os_unfair_lock_lock(a3);
  sub_10013E398((a2 + 24), v14);
  os_unfair_lock_unlock(a3);
  os_unfair_lock_unlock((a2 + 16));
}

uint64_t sub_100140594(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v6 = sub_100011AC0(&qword_10022F1A0, &unk_1001E0720);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_100011AC0(&qword_10022F1A8, &qword_1001E0870);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = *(v10 + 16);
  v13(&v19 - v11, a1, v9);
  sub_100011AC0(&qword_10022F1B0, &qword_1001E0730);
  v14 = swift_allocObject();
  v13(v8, v12, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v15 = (v14 + *(*v14 + 88));
  *v15 = 0;
  v16 = *(sub_100011AC0(&qword_10022F198, &qword_1001E0718) + 28);
  v17 = sub_100011AC0(&qword_10022F1B8, &qword_1001E0738);
  bzero(v15 + v16, *(*(v17 - 8) + 64));
  sub_1000DBEF4(v8, v15 + v16, &qword_10022F1A0, &unk_1001E0720);
  (*(v10 + 8))(v12, v9);
  os_unfair_lock_lock((a2 + 16));
  os_unfair_lock_lock(a3);
  sub_10013E57C((a2 + 24), v14);
  os_unfair_lock_unlock(a3);
  os_unfair_lock_unlock((a2 + 16));
}

uint64_t sub_1001407FC(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v6 = sub_100011AC0(&qword_10022F168, &unk_1001E06D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_100011AC0(&qword_10022F170, &unk_1001E18C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = *(v10 + 16);
  v13(&v21 - v11, a1, v9);
  sub_100011AC0(&qword_10022F178, &qword_1001E06E0);
  v14 = swift_allocObject();
  v13(v8, v12, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v15 = (v14 + *(*v14 + 88));
  *v15 = 0;
  v16 = *(sub_100011AC0(&qword_10022F160, &qword_1001E06C8) + 28);
  v17 = sub_100011AC0(&qword_10022F180, &qword_1001E06E8);
  bzero(v15 + v16, *(*(v17 - 8) + 64));
  sub_1000DBEF4(v8, v15 + v16, &qword_10022F168, &unk_1001E06D0);
  (*(v10 + 8))(v12, v9);
  v18 = (a2 + *(*a2 + 88));
  os_unfair_lock_lock(v18);
  v19 = *(sub_100011AC0(&qword_10022F148, &qword_1001E06B0) + 28);
  os_unfair_lock_lock(a3);
  sub_10013E760(v18 + v19, v14);
  os_unfair_lock_unlock(a3);
  os_unfair_lock_unlock(v18);
}

void sub_100140A94(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock((a1 + 16));
  os_unfair_lock_lock(a2);
  sub_10013EB64((a1 + 24));
  os_unfair_lock_unlock(a2);

  os_unfair_lock_unlock((a1 + 16));
}

void sub_100140AF8(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 16));
  os_unfair_lock_lock(a2);
  v4 = *(a2 + 8);
  if (v4 - 1 >= 2)
  {
    if (!v4)
    {
LABEL_5:
      *(a2 + 8) = 2;
      goto LABEL_6;
    }

    if ((*(a1 + 33) & 1) == 0)
    {
      v5 = (v4 + *(*v4 + 88));
      os_unfair_lock_lock(v5);
      v6 = sub_100011AC0(&qword_10022F1D8, &unk_1001E0860);
      sub_100140F34(v5 + *(v6 + 28), &v7, &qword_10022D298, &qword_1001DE530, &qword_100227B38, &qword_1001D36D0);
      os_unfair_lock_unlock(v5);
      sub_100141EFC(v4);
      goto LABEL_5;
    }
  }

LABEL_6:
  os_unfair_lock_unlock(a2);
  os_unfair_lock_unlock((a1 + 16));
}

void sub_100140BF0(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 16));
  os_unfair_lock_lock(a2);
  v4 = *(a2 + 8);
  if (v4 - 1 >= 2)
  {
    if (!v4)
    {
LABEL_5:
      *(a2 + 8) = 2;
      goto LABEL_6;
    }

    if ((*(a1 + 33) & 1) == 0)
    {
      v5 = (v4 + *(*v4 + 88));
      os_unfair_lock_lock(v5);
      v6 = sub_100011AC0(&qword_10022F198, &qword_1001E0718);
      sub_100140F34(v5 + *(v6 + 28), &v7, &qword_10022F1A0, &unk_1001E0720, &qword_10022F1A8, &qword_1001E0870);
      os_unfair_lock_unlock(v5);
      sub_100141EFC(v4);
      goto LABEL_5;
    }
  }

LABEL_6:
  os_unfair_lock_unlock(a2);
  os_unfair_lock_unlock((a1 + 16));
}

void sub_100140CE8(uint64_t a1, os_unfair_lock_s *a2)
{
  v3 = (a1 + *(*a1 + 88));
  os_unfair_lock_lock(v3);
  v4 = *(sub_100011AC0(&qword_10022F148, &qword_1001E06B0) + 28);
  os_unfair_lock_lock(a2);
  sub_100140D7C(&a2[2]._os_unfair_lock_opaque, v3 + v4);
  os_unfair_lock_unlock(a2);
  os_unfair_lock_unlock(v3);
}

void sub_100140D7C(unint64_t *a1, uint64_t a2)
{
  v5 = sub_100011AC0(&qword_10022F150, &qword_1001E06B8);
  __chkstk_darwin(v5 - 8);
  v7 = &v12[-v6 - 8];
  v8 = *a1;
  sub_10001208C(a2, &v12[-v6 - 8], &qword_10022F158, &qword_1001E06C0);
  switch(v8)
  {
    case 0uLL:
      *a1 = 2;
LABEL_8:
      sub_100011F00(v7, &qword_10022F158, &qword_1001E06C0);
      return;
    case 1uLL:
      goto LABEL_8;
    case 2uLL:
      goto LABEL_8;
  }

  sub_100011AC0(&qword_10022F158, &qword_1001E06C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_8;
  }

  sub_100011F00(v7, &qword_10022F158, &qword_1001E06C0);
  v9 = (v8 + *(*v8 + 88));
  os_unfair_lock_lock(v9);
  v10 = sub_100011AC0(&qword_10022F160, &qword_1001E06C8);
  sub_100140F34(v9 + *(v10 + 28), v12, &qword_10022F168, &unk_1001E06D0, &qword_10022F170, &unk_1001E18C0);
  os_unfair_lock_unlock(v9);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    sub_100141EFC(v8);
    *a1 = 2;
  }
}

uint64_t sub_100140F34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = sub_100011AC0(a3, a4);
  __chkstk_darwin(v11 - 8);
  v13 = v20 - v12;
  v14 = sub_100011AC0(a5, a6);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v20 - v16;
  sub_10001208C(a1, v13, a3, a4);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_100011F00(v13, a3, a4);
  }

  sub_100011F00(a1, a3, a4);
  (*(v15 + 32))(v17, v13, v14);
  sub_1001D1AC0();
  sub_100141538(&qword_1002295E0, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
  v19 = swift_allocError();
  sub_1001D16E0();
  v20[1] = v19;
  sub_1001D1A90();
  (*(v15 + 8))(v17, v14);
  return (*(v15 + 56))(a1, 1, 1, v14);
}

unint64_t sub_100141174()
{
  result = qword_10022EE78;
  if (!qword_10022EE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022EE78);
  }

  return result;
}

uint64_t sub_1001411E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 24);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10005B61C;

  return sub_10013A1BC(a1, a2, a3, a4, v10);
}

void sub_1001412D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10005B61C;

  JUMPOUT(0x10013B9FCLL);
}

uint64_t sub_1001413D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v12 = v4[6];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_10005B61C;

  return sub_10013C174(a1, a2, a3, a4, v9, v10, v11, v12);
}

uint64_t sub_100141538(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001415D8()
{
  result = qword_10022EEE8;
  if (!qword_10022EEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022EEE8);
  }

  return result;
}

uint64_t sub_100141674(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1001416D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_100141788(uint64_t a1)
{
  type metadata accessor for NWConnectionWrapper(319);
  if (v1 <= 0x3F)
  {
    sub_1001D0E60();
    if (v2 <= 0x3F)
    {
      sub_100141CB8(319, &unk_10022EF98, &type metadata for Bool, &type metadata accessor for OSAllocatedUnfairLock);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10014185C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001D0E60();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10014191C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1001D0E60();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001419C0(uint64_t a1)
{
  type metadata accessor for NWConnectionWrapper(319);
  if (v1 <= 0x3F)
  {
    sub_1001D0E60();
    if (v2 <= 0x3F)
    {
      sub_100134968(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100141A78(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001CFDA0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_100141B38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1001CFDA0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100141BDC(uint64_t a1)
{
  sub_10005A1A4();
  if (v1 <= 0x3F)
  {
    sub_1001D11A0();
    if (v2 <= 0x3F)
    {
      sub_100141CB8(319, &unk_10022F0D0, &type metadata for () + 8, type metadata accessor for AsyncEvent);
      if (v3 <= 0x3F)
      {
        sub_1001CFDA0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100141CB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100141D18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100141D7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWConnectionWrapper.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100141DE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100141E48(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000130E0;

  return sub_10013FA94(a1, v5, v4);
}

unint64_t sub_100141EFC(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_100141F14(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10005B61C;

  return sub_10013FFAC(a1, v5, v4);
}

uint64_t sub_100141FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_100141FF4, 0, 0);
}

uint64_t sub_100141FF4()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1001420E4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0x2865766965636572, 0xE900000000000029, sub_1001422F0, v1, &type metadata for Int);
}

uint64_t sub_1001420E4()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100111938, 0, 0);
  }

  else
  {
    v3 = v2[3];

    *v3 = v2[2];
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100142230(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10005B61C;

  return sub_100141FD0(a1, v5, v4);
}

uint64_t sub_1001422F8(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_100142304(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_100142318()
{
  v1 = sub_100011AC0(&qword_10022F1C0, &qword_1001E0748);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001423AC(uint64_t a1)
{
  sub_100011AC0(&qword_10022F1C0, &qword_1001E0748);

  return sub_10013D1AC(a1);
}

uint64_t sub_100142428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 40);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10005B61C;

  return sub_10013D4E8(a1, a2, a3, v8);
}

uint64_t sub_10014251C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 24);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10005B61C;

  return sub_10013D4E8(a1, a2, a3, v8);
}

uint64_t sub_1001425FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 24);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10005B61C;

  return sub_100138988(a1, a2, a3, a4, v10);
}

uint64_t sub_1001426E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10005B61C;

  return sub_10013FD58(a1, v5, v4);
}

double sub_1001427A0(uint64_t a1, char a2, char a3, void (*a4)(uint64_t, void))
{
  if (a3)
  {
    a4(a1, a2 & 1);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1001427B4(uint64_t a1, char a2, char a3, uint64_t (*a4)(uint64_t, void))
{
  if (a3)
  {
    return a4(a1, a2 & 1);
  }

  else
  {
  }
}

uint64_t sub_1001427C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = *(v4 + 24);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10005B61C;

  return sub_100136FE8(a1, a2, a3, a4, v10);
}

void sub_100142904(uint64_t a1)
{
  v204 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v192 = *(v204 - 8);
  __chkstk_darwin(v204);
  v197 = &v190 - v2;
  v3 = sub_1001D12E0();
  v4 = *(v3 - 8);
  v208 = v3;
  v209 = v4;
  __chkstk_darwin(v3);
  v196 = &v190 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_100011AC0(&qword_10022F390, "̷");
  __chkstk_darwin(v202);
  v207 = &v190 - v6;
  v7 = sub_100011AC0(&qword_10022F398, "з");
  __chkstk_darwin(v7 - 8);
  v201 = &v190 - v8;
  v9 = sub_100011AC0(&qword_10022F3A0, "з");
  v10 = __chkstk_darwin(v9 - 8);
  v199 = &v190 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v210 = (&v190 - v13);
  __chkstk_darwin(v12);
  v206 = &v190 - v14;
  v15 = type metadata accessor for NWConnectionWrapper.State(0);
  v16 = __chkstk_darwin(v15 - 8);
  v194 = (&v190 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v16);
  v195 = &v190 - v19;
  __chkstk_darwin(v18);
  v205 = &v190 - v20;
  v21 = sub_1001D1310();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v190 = (&v190 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __chkstk_darwin(v23);
  v198 = (&v190 - v26);
  v27 = __chkstk_darwin(v25);
  v203 = (&v190 - v28);
  v29 = __chkstk_darwin(v27);
  v31 = &v190 - v30;
  __chkstk_darwin(v29);
  v33 = &v190 - v32;
  v34 = sub_1001D1160();
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v191 = &v190 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v193 = &v190 - v39;
  __chkstk_darwin(v38);
  v41 = (&v190 - v40);
  v42 = *(v35 + 16);
  v42(&v190 - v40, a1, v34);
  v43 = (*(v35 + 88))(v41, v34);
  if (v43 == enum case for NWConnection.State.waiting(_:))
  {
    (*(v35 + 96))(v41, v34);
    v22[4](v33, v41, v21);
    v44 = OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger;
    v45 = v22[2];
    v204 = v33;
    v45(v31, v33, v21);
    v46 = v211;

    v195 = v44;
    v47 = sub_1001D0E50();
    v48 = sub_1001D1DE0();

    v49 = os_log_type_enabled(v47, v48);
    v50 = v46;
    v200 = v21;
    v197 = v45;
    if (v49)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v198 = v22;
      v53 = v52;
      v194 = swift_slowAlloc();
      v212[0] = v194;
      *v51 = 136315394;
      *(v51 + 4) = sub_1000954E0(*(v50 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v50 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), v212);
      *(v51 + 12) = 2112;
      sub_100147098(&qword_10022F3A8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v45(v54, v31, v21);
      v55 = _swift_stdlib_bridgeErrorToNSError();
      v203 = v198[1];
      (v203)(v31, v21);
      *(v51 + 14) = v55;
      *v53 = v55;
      _os_log_impl(&_mh_execute_header, v47, v48, "%s state changed to waiting error=%@", v51, 0x16u);
      sub_100011F00(v53, &unk_1002301D0, &qword_1001D4F50);

      sub_100011CF0(v194);
    }

    else
    {

      v203 = v22[1];
      (v203)(v31, v21);
    }

    v72 = v208;
    v73 = v205;
    v74 = (v50 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock);
    os_unfair_lock_lock((v50 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock));
    v75 = *(sub_100011AC0(&qword_10022F110, &qword_1001E0620) + 28);
    sub_100146FC8(v74 + v75, v73);
    v76 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
    v77 = *(v76 - 8);
    v78 = (*(v77 + 48))(v73, 2, v76);
    v79 = v206;
    v80 = v210;
    if (v78)
    {
      if (v78 != 1)
      {
        os_unfair_lock_unlock(v74);
        v98 = v204;
        goto LABEL_35;
      }

      sub_10014703C(v74 + v75);
      (v197)(v74 + v75, v204, v200);
      (*(v77 + 56))(v74 + v75, 0, 2, v76);
    }

    else
    {
      (v203)(v73, v200);
    }

    os_unfair_lock_unlock(v74);
    v86 = v201;
    sub_1001D1010();
    v87 = sub_1001D1300();
    v88 = *(v87 - 8);
    if ((*(v88 + 48))(v86, 1, v87) == 1)
    {
      sub_100011F00(v86, &qword_10022F398, "з");
      v89 = 1;
    }

    else
    {
      sub_1001D12F0();
      (*(v88 + 8))(v86, v87);
      v89 = 0;
    }

    v90 = v209;
    v91 = *(v209 + 56);
    v91(v79, v89, 1, v72);
    (*(v90 + 104))(v80, enum case for NWPath.Status.unsatisfied(_:), v72);
    v91(v80, 0, 1, v72);
    v92 = *(v202 + 48);
    v93 = v207;
    sub_10001208C(v79, v207, &qword_10022F3A0, "з");
    v94 = v93;
    sub_10001208C(v80, v93 + v92, &qword_10022F3A0, "з");
    v95 = v90;
    v96 = v80;
    v97 = *(v95 + 48);
    if (v97(v94, 1, v72) == 1)
    {
      sub_100011F00(v96, &qword_10022F3A0, "з");
      v94 = v207;
      sub_100011F00(v79, &qword_10022F3A0, "з");
      if (v97(v94 + v92, 1, v72) == 1)
      {
        sub_100011F00(v94, &qword_10022F3A0, "з");
        v98 = v204;
LABEL_32:
        v106 = v98;
        v107 = v211;

        v108 = sub_1001D0E50();
        v109 = sub_1001D1E00();

        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          v212[0] = v111;
          *v110 = 136315138;
          *(v110 + 4) = sub_1000954E0(*(v107 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v107 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), v212);
          _os_log_impl(&_mh_execute_header, v108, v109, "%s cancel", v110, 0xCu);
          sub_100011CF0(v111);
        }

        sub_1001D1180();
        sub_1001D10B0();
        v98 = v106;
        goto LABEL_35;
      }
    }

    else
    {
      v99 = v199;
      sub_10001208C(v94, v199, &qword_10022F3A0, "з");
      if (v97(v94 + v92, 1, v72) != 1)
      {
        v101 = v209;
        v102 = v94 + v92;
        v103 = v196;
        (*(v209 + 32))(v196, v102, v72);
        sub_100147098(&qword_10022F3B0, &type metadata accessor for NWPath.Status, &protocol conformance descriptor for NWPath.Status);
        v104 = sub_1001D1790();
        v105 = *(v101 + 8);
        v105(v103, v72);
        sub_100011F00(v210, &qword_10022F3A0, "з");
        sub_100011F00(v79, &qword_10022F3A0, "з");
        v105(v199, v72);
        sub_100011F00(v94, &qword_10022F3A0, "з");
        v98 = v204;
        if (v104)
        {
          goto LABEL_32;
        }

LABEL_35:
        (v203)(v98, v200);
        return;
      }

      sub_100011F00(v210, &qword_10022F3A0, "з");
      sub_100011F00(v79, &qword_10022F3A0, "з");
      (*(v209 + 8))(v99, v72);
    }

    sub_100011F00(v94, &qword_10022F390, "̷");
    v98 = v204;
    goto LABEL_35;
  }

  v56 = v21;
  v57 = v211;
  if (v43 == enum case for NWConnection.State.failed(_:))
  {
    (*(v35 + 96))(v41, v34);
    v58 = v22;
    v59 = v22[4];
    v60 = v203;
    v61 = v56;
    v59(v203, v41, v56);
    v62 = v198;
    v210 = v58[2];
    (v210)(v198, v60, v56);
    v63 = v57;

    v64 = sub_1001D0E50();
    v65 = sub_1001D1DE0();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v212[0] = v68;
      *v66 = 136315394;
      *(v66 + 4) = sub_1000954E0(*(v63 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v63 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), v212);
      *(v66 + 12) = 2112;
      sub_100147098(&qword_10022F3A8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      (v210)(v69, v62, v61);
      v70 = _swift_stdlib_bridgeErrorToNSError();
      v71 = v58[1];
      (v71)(v62, v61);
      *(v66 + 14) = v70;
      *v67 = v70;
      _os_log_impl(&_mh_execute_header, v64, v65, "%s state changed to failed error=%@", v66, 0x16u);
      sub_100011F00(v67, &unk_1002301D0, &qword_1001D4F50);

      sub_100011CF0(v68);

      (v71)(v203, v61);
    }

    else
    {

      v100 = v58[1];
      (v100)(v62, v61);
      (v100)(v60, v61);
    }

    return;
  }

  if (v43 == enum case for NWConnection.State.setup(_:))
  {

    v81 = sub_1001D0E50();
    v82 = sub_1001D1DD0();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v212[0] = v84;
      *v83 = 136315138;
      *(v83 + 4) = sub_1000954E0(*(v57 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v57 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), v212);
      v85 = "%s state changed to setup";
LABEL_29:
      _os_log_impl(&_mh_execute_header, v81, v82, v85, v83, 0xCu);
      sub_100011CF0(v84);

      goto LABEL_30;
    }

    goto LABEL_30;
  }

  if (v43 == enum case for NWConnection.State.preparing(_:))
  {

    v81 = sub_1001D0E50();
    v82 = sub_1001D1DD0();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v212[0] = v84;
      *v83 = 136315138;
      *(v83 + 4) = sub_1000954E0(*(v57 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v57 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), v212);
      v85 = "%s state changed to preparing";
      goto LABEL_29;
    }

LABEL_30:

    return;
  }

  if (v43 == enum case for NWConnection.State.ready(_:))
  {
    v112 = v211;

    v113 = sub_1001D0E50();
    v114 = sub_1001D1DD0();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v212[0] = v116;
      *v115 = 136315138;
      *(v115 + 4) = sub_1000954E0(*(v57 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v57 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), v212);
      _os_log_impl(&_mh_execute_header, v113, v114, "%s state changed to ready", v115, 0xCu);
      sub_100011CF0(v116);
    }

    v117 = v195;
    v118 = (v112 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock);
    os_unfair_lock_lock((v112 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock));
    v119 = *(sub_100011AC0(&qword_10022F110, &qword_1001E0620) + 28);
    sub_100146FC8(v118 + v119, v117);
    v120 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
    v121 = *(v120 - 8);
    v122 = (*(v121 + 48))(v117, 2, v120);
    if (v122)
    {
      if (v122 != 1)
      {
        goto LABEL_53;
      }

      sub_10014703C(v118 + v119);
    }

    else
    {
      sub_10014703C(v118 + v119);
      (v22[1])(v117, v56);
    }

    (*(v121 + 56))(v118 + v119, 2, 2, v120);
LABEL_53:
    os_unfair_lock_unlock(v118);
    v143 = *(v112 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_readyEvent);
    if (!v143)
    {
      return;
    }

    os_unfair_lock_lock((v143 + 16));
    if ((*(v143 + 33) & 1) == 0)
    {
      v35 = *(v143 + 24);
      v208 = v143;
      LODWORD(v207) = *(v143 + 32);
      v144 = v35 & 0xFFFFFFFFFFFFFF8;
      if (v35 >> 62)
      {
        goto LABEL_107;
      }

      v34 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        while (1)
        {
          v145 = 0;
          v134 = (v35 & 0xC000000000000001);
          v146 = (v192 + 48);
          v209 = v192 + 8;
          v210 = (v192 + 16);
          v211 = (v192 + 48);
          while (v134)
          {
            v147 = sub_1001D2040();
            v133 = (v145 + 1);
            if (__OFADD__(v145, 1))
            {
LABEL_66:
              __break(1u);
              goto LABEL_67;
            }

LABEL_62:
            v41 = (v147 + *(*v147 + 88));
            os_unfair_lock_lock(v41);
            v148 = *(sub_100011AC0(&qword_10022F1D8, &unk_1001E0860) + 28);
            if (!(*v146)(v41 + v148, 1, v204))
            {
              v149 = v41 + v148;
              v150 = v197;
              v151 = v134;
              v152 = v34;
              v153 = v35;
              v154 = v144;
              v155 = v204;
              (*v210)(v197, v149, v204);
              sub_1001D1AA0();
              v156 = v155;
              v144 = v154;
              v35 = v153;
              v34 = v152;
              v134 = v151;
              v146 = v211;
              (*v209)(v150, v156);
            }

            os_unfair_lock_unlock(v41);

            ++v145;
            if (v133 == v34)
            {
              goto LABEL_108;
            }
          }

          if (v145 < *(v144 + 16))
          {
            break;
          }

          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          v34 = sub_1001D2190();
          if (!v34)
          {
            goto LABEL_108;
          }
        }

        v147 = *(v35 + 8 * v145 + 32);

        v133 = (v145 + 1);
        if (__OFADD__(v145, 1))
        {
          goto LABEL_66;
        }

        goto LABEL_62;
      }

LABEL_108:
      sub_10014702C(v35, v207, 0);
      v143 = v208;
      *(v208 + 24) = 0;
      *(v143 + 32) = 256;
    }

    os_unfair_lock_unlock((v143 + 16));
    return;
  }

  if (v43 != enum case for NWConnection.State.cancelled(_:))
  {
    v133 = v193;
    v42(v193, a1, v34);

    v134 = sub_1001D0E50();
    v135 = sub_1001D1DE0();

    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      LODWORD(v209) = v135;
      v137 = v136;
      v210 = swift_slowAlloc();
      v212[0] = v210;
      *v137 = 136315394;
      *(v137 + 4) = sub_1000954E0(*(v57 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v57 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), v212);
      *(v137 + 12) = 2082;
      v42(v191, v133, v34);
      v138 = sub_1001D1820();
      v140 = v139;
      v141 = *(v35 + 8);
      v141(v133, v34);
      v142 = sub_1000954E0(v138, v140, v212);

      *(v137 + 14) = v142;
      _os_log_impl(&_mh_execute_header, v134, v209, "%s state change to unexpected state=%{public}s", v137, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
LABEL_67:

      v141 = *(v35 + 8);
      v141(v133, v34);
    }

    v141(v41, v34);
    return;
  }

  v123 = sub_1001D0E50();
  v124 = sub_1001D1DD0();

  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v212[0] = v126;
    *v125 = 136315138;
    *(v125 + 4) = sub_1000954E0(*(v57 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v57 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), v212);
    _os_log_impl(&_mh_execute_header, v123, v124, "%s state changed to cancelled", v125, 0xCu);
    sub_100011CF0(v126);
  }

  v127 = v56;
  v128 = v57 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock;
  os_unfair_lock_lock((v57 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock));
  v129 = sub_100011AC0(&qword_10022F110, &qword_1001E0620);
  v130 = v194;
  sub_100146FC8(v128 + *(v129 + 28), v194);
  v131 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
  v132 = (*(*(v131 - 8) + 48))(v130, 2, v131);
  if (v132)
  {
    if (v132 != 1)
    {
      goto LABEL_86;
    }

    sub_1001D1AC0();
    sub_100147098(&qword_1002295E0, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    v35 = swift_allocError();
    sub_1001D16E0();
  }

  else
  {
    v157 = v22[4];
    v158 = v190;
    v157(v190, v130, v127);
    sub_100147098(&qword_10022F3A8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
    v35 = swift_allocError();
    v157(v159, v158, v127);
  }

  os_unfair_lock_unlock(v128);
  if (!v35)
  {
LABEL_87:
    v173 = *(v57 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_readyEvent);
    if (!v173)
    {
      return;
    }

    os_unfair_lock_lock((v173 + 16));
    if ((*(v173 + 33) & 1) == 0)
    {
      v35 = *(v173 + 24);
      v174 = *(v173 + 32);
      v144 = v35 & 0xFFFFFFFFFFFFFF8;
      v208 = v173;
      LODWORD(v207) = v174;
      if (v35 >> 62)
      {
        v175 = sub_1001D2190();
        if (v175)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v175 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v175)
        {
LABEL_91:
          v176 = 0;
          v177 = v35 & 0xC000000000000001;
          v178 = (v192 + 48);
          v209 = v192 + 8;
          v210 = (v192 + 16);
          v211 = (v192 + 48);
          do
          {
            if (v177)
            {
              v179 = sub_1001D2040();
              v180 = v176 + 1;
              if (__OFADD__(v176, 1))
              {
                goto LABEL_100;
              }
            }

            else
            {
              if (v176 >= *(v144 + 16))
              {
                goto LABEL_105;
              }

              v179 = *(v35 + 8 * v176 + 32);

              v180 = v176 + 1;
              if (__OFADD__(v176, 1))
              {
LABEL_100:
                __break(1u);
                goto LABEL_101;
              }
            }

            v41 = (v179 + *(*v179 + 88));
            os_unfair_lock_lock(v41);
            v181 = *(sub_100011AC0(&qword_10022F1D8, &unk_1001E0860) + 28);
            if (!(*v178)(v41 + v181, 1, v204))
            {
              v182 = v41 + v181;
              v183 = v197;
              v184 = v177;
              v185 = v175;
              v186 = v35;
              v187 = v144;
              v188 = v204;
              (*v210)(v197, v182, v204);
              sub_1001D1AA0();
              v189 = v188;
              v144 = v187;
              v35 = v186;
              v175 = v185;
              v177 = v184;
              v178 = v211;
              (*v209)(v183, v189);
            }

            os_unfair_lock_unlock(v41);

            ++v176;
          }

          while (v180 != v175);
        }
      }

      sub_10014702C(v35, v207, 0);
      v173 = v208;
      *(v208 + 24) = 0;
      *(v173 + 32) = 256;
    }

    os_unfair_lock_unlock((v173 + 16));

    return;
  }

  v128 = *(v57 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_readyEvent);
  if (v128)
  {
    os_unfair_lock_lock((v128 + 16));
    if ((*(v128 + 33) & 1) == 0)
    {
      v144 = *(v128 + 24);
      LODWORD(v206) = *(v128 + 32);
      v160 = v144 & 0xFFFFFFFFFFFFFF8;
      v207 = v128;
      if (v144 >> 62)
      {
        v161 = sub_1001D2190();
      }

      else
      {
        v161 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      swift_errorRetain();
      if (v161)
      {
        v162 = 0;
        v163 = (v144 & 0xC000000000000001);
        v210 = (v144 & 0xC000000000000001);
        v211 = (v192 + 48);
        v208 = v192 + 8;
        v209 = v192 + 16;
        do
        {
          if (v163)
          {
            v41 = sub_1001D2040();
            v57 = (v162 + 1);
            if (__OFADD__(v162, 1))
            {
              goto LABEL_85;
            }
          }

          else
          {
            if (v162 >= *(v160 + 16))
            {
              goto LABEL_106;
            }

            v41 = *(v144 + 8 * v162 + 32);

            v57 = (v162 + 1);
            if (__OFADD__(v162, 1))
            {
LABEL_85:
              __break(1u);
LABEL_86:
              os_unfair_lock_unlock(v128);
              goto LABEL_87;
            }
          }

          v164 = (v41 + *(*&v41->_os_unfair_lock_opaque + 88));
          swift_errorRetain();
          os_unfair_lock_lock(v164);
          v128 = *(sub_100011AC0(&qword_10022F1D8, &unk_1001E0860) + 28);
          if (!(*v211)(v164 + v128, 1, v204))
          {
            v165 = v164 + v128;
            v128 = v197;
            v166 = v161;
            v167 = v144;
            v168 = v160;
            v169 = v204;
            (*v209)(v197, v165, v204);
            sub_100011AC0(&qword_100227A58, &qword_1001D3600);
            v170 = swift_allocError();
            *v171 = v35;
            v212[0] = v170;
            swift_errorRetain();
            sub_1001D1A90();
            v172 = v169;
            v160 = v168;
            v144 = v167;
            v161 = v166;
            v163 = v210;
            (*v208)(v128, v172);
          }

          os_unfair_lock_unlock(v164);

          ++v162;
        }

        while (v57 != v161);
      }

LABEL_101:
      sub_10014702C(v144, v206, 0);
      v128 = v207;
      *(v207 + 24) = v35;
      *(v128 + 32) = 257;
    }

    os_unfair_lock_unlock((v128 + 16));
  }
}

uint64_t sub_1001446A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a6;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  return _swift_task_switch(sub_1001446D0, 0, 0);
}

uint64_t sub_1001446D0()
{
  v37 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  *(v0 + 48) = OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger;
  sub_100089C38(v2, v1);

  v3 = sub_1001D0E50();
  v4 = sub_1001D1DD0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = *(v0 + 16);
    v8 = -1;
    v9 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v9 = 136315906;
    v10 = sub_1000954E0(*(v7 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v7 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v36);
    *(v9 + 4) = v10;
    *(v9 + 12) = 2048;
    v17 = *(v0 + 32);
    if (v6 >> 60 == 15)
    {
LABEL_3:
      v18 = *(v0 + 80);
      v19 = *(v0 + 24);
      *(v9 + 14) = v8;
      sub_10002683C(v19, v17);
      *(v9 + 22) = 2080;
      v20 = sub_1001D1040();
      v22 = sub_1000954E0(v20, v21, &v36);

      *(v9 + 24) = v22;
      *(v9 + 32) = 1024;
      *(v9 + 34) = v18;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s send content.count=%ld context=%s isComplete=%{BOOL}d", v9, 0x26u);
      swift_arrayDestroy();

      goto LABEL_5;
    }

    v27 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v27 != 2)
      {
        v8 = 0;
        goto LABEL_3;
      }

      v28 = *(*(v0 + 24) + 16);
      v29 = *(*(v0 + 24) + 24);
      v8 = v29 - v28;
      if (!__OFSUB__(v29, v28))
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    else if (!v27)
    {
      v8 = BYTE6(v17);
      goto LABEL_3;
    }

    v30 = *(v0 + 24);
    v31 = *(v0 + 28);
    v32 = __OFSUB__(v31, v30);
    v33 = v31 - v30;
    if (v32)
    {
      __break(1u);
      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, v17, v11, v12, v13, v14, v15, v16);
    }

    v8 = v33;
    goto LABEL_3;
  }

  sub_10002683C(*(v0 + 24), *(v0 + 32));
LABEL_5:

  v23 = *(v0 + 80);
  v25 = *(v0 + 32);
  v24 = *(v0 + 40);
  v35 = *(v0 + 16);
  v26 = swift_task_alloc();
  *(v0 + 56) = v26;
  *(v26 + 16) = v35;
  *(v26 + 32) = v25;
  *(v26 + 40) = v24;
  *(v26 + 48) = v23;
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_1001449C4;
  v14 = sub_1001472FC;
  v13 = 0x80000001001E6FF0;
  v16 = &type metadata for () + 8;
  v17 = 0;
  v11 = 0;
  v12 = 0xD000000000000029;
  v15 = v26;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, v17, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1001449C4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100144C28;
  }

  else
  {

    v2 = sub_100144AE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100144AE0()
{
  v9 = v0;

  v1 = sub_1001D0E50();
  v2 = sub_1001D1DD0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 16);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000954E0(*(v3 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v3 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s send finished", v4, 0xCu);
    sub_100011CF0(v5);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100144C28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100144C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v20 = a6;
  v19[3] = a4;
  v19[4] = a5;
  v19[2] = a3;
  v8 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - v10;
  v12 = sub_1001D10A0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19[1] = *(a2 + 16);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  (*(v9 + 32))(v17 + v16, v11, v8);
  *v15 = sub_1001473DC;
  v15[1] = v17;
  (*(v13 + 104))(v15, enum case for NWConnection.SendCompletion.contentProcessed(_:), v12);

  sub_1001D1150();
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_100144EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NWConnectionWrapper.State(0);
  __chkstk_darwin(v6 - 8);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&qword_10022F3C0, &qword_1001E0888);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_1001D1310();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v50 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v42 - v16;
  __chkstk_darwin(v15);
  v19 = &v42 - v18;
  sub_10001208C(a1, v10, &qword_10022F3C0, &qword_1001E0888);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100011F00(v10, &qword_10022F3C0, &qword_1001E0888);
    sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
    return sub_1001D1AA0();
  }

  else
  {
    v48 = a3;
    v45 = *(v12 + 32);
    v45(v19, v10, v11);
    v21 = v19;
    v22 = *(v12 + 16);
    v46 = v21;
    v22(v17);

    v23 = sub_1001D0E50();
    v24 = sub_1001D1DE0();

    v25 = os_log_type_enabled(v23, v24);
    v47 = v22;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v44 = v12 + 32;
      v27 = v26;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v51 = v43;
      *v27 = 136315394;
      *(v27 + 4) = sub_1000954E0(*(a2 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(a2 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v51);
      *(v27 + 12) = 2112;
      sub_100147098(&qword_10022F3A8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      (v22)(v28, v17, v11);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      v30 = *(v12 + 8);
      v30(v17, v11);
      *(v27 + 14) = v29;
      v31 = v42;
      *v42 = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s send failed error=%@", v27, 0x16u);
      sub_100011F00(v31, &unk_1002301D0, &qword_1001D4F50);

      sub_100011CF0(v43);
    }

    else
    {

      v30 = *(v12 + 8);
      v30(v17, v11);
    }

    v32 = v50;
    v33 = (a2 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock);
    os_unfair_lock_lock((a2 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock));
    v34 = sub_100011AC0(&qword_10022F110, &qword_1001E0620);
    v35 = v49;
    sub_100146FC8(v33 + *(v34 + 28), v49);
    v36 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
    v37 = (*(*(v36 - 8) + 48))(v35, 2, v36);
    v38 = v46;
    if (v37)
    {
      v39 = v47;
      (v47)(v32, v46, v11);
    }

    else
    {
      v45(v32, v35, v11);
      v39 = v47;
    }

    os_unfair_lock_unlock(v33);
    sub_100147098(&qword_10022F3A8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
    v40 = swift_allocError();
    v39(v41, v32, v11);
    v51 = v40;
    sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
    sub_1001D1A90();
    v30(v32, v11);
    return (v30)(v38, v11);
  }
}

uint64_t sub_1001454AC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for NWConnectionWrapper.State(0);
  v2[4] = swift_task_alloc();
  v3 = sub_1001D1310();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = sub_100011AC0(&qword_10022F3B8, &qword_1001E0880);
  v2[10] = swift_task_alloc();
  sub_100011AC0(&qword_10022F3C0, &qword_1001E0888);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_10014563C, 0, 0);
}

uint64_t sub_10014563C()
{
  v12 = v0;
  v0[15] = OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger;

  v1 = sub_1001D0E50();
  v2 = sub_1001D1DD0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[3];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000954E0(*(v3 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v3 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v11);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s receive", v4, 0xCu);
    sub_100011CF0(v5);
  }

  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1001457F8;
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[3];

  return withCheckedContinuation<A>(isolation:function:_:)(v7, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_100147144, v9, v8);
}

uint64_t sub_1001457F8()
{

  return _swift_task_switch(sub_1001458F4, 0, 0);
}

unint64_t sub_1001458F4()
{
  v59 = v0;
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[10];
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  v54 = *(v3 + 24);
  sub_10014714C(v3 + *(v0[9] + 80), v1);
  sub_10001208C(v1, v2, &qword_10022F3C0, &qword_1001E0888);

  sub_100089C38(v5, v4);
  v7 = sub_1001D0E50();
  v8 = sub_1001D1DD0();

  v55 = v5;
  v56 = v6;
  v57 = v4;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[3];
    v10 = -1;
    v11 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v58 = v12;
    *v11 = 136315906;
    result = sub_1000954E0(*(v9 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v9 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v58);
    *(v11 + 4) = result;
    *(v11 + 12) = 2048;
    if (v4 >> 60 == 15)
    {
LABEL_3:
      v52 = v12;
      v15 = v0[12];
      v14 = v0[13];
      v16 = v4;
      v18 = v0[5];
      v17 = v0[6];
      *(v11 + 14) = v10;
      sub_10002683C(v5, v16);
      *(v11 + 22) = 1024;
      *(v11 + 24) = v54;
      *(v11 + 28) = 2112;
      sub_10001208C(v14, v15, &qword_10022F3C0, &qword_1001E0888);
      v19 = (*(v17 + 48))(v15, 1, v18);
      v21 = v0[12];
      v20 = v0[13];
      if (v19 == 1)
      {
        sub_100011F00(v0[12], &qword_10022F3C0, &qword_1001E0888);
        sub_100011F00(v20, &qword_10022F3C0, &qword_1001E0888);
        v22 = 0;
      }

      else
      {
        v26 = v0[5];
        v25 = v0[6];
        sub_100147098(&qword_10022F3A8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
        swift_allocError();
        (*(v25 + 32))(v27, v21, v26);
        v22 = _swift_stdlib_bridgeErrorToNSError();
        sub_100011F00(v20, &qword_10022F3C0, &qword_1001E0888);
      }

      *(v11 + 30) = v22;
      *v53 = v22;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s receive finished data.count=%ld isComplete=%{BOOL}d error=%@", v11, 0x26u);
      sub_100011F00(v53, &unk_1002301D0, &qword_1001D4F50);

      sub_100011CF0(v52);

      goto LABEL_11;
    }

    v24 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v24 != 2)
      {
        v10 = 0;
        goto LABEL_3;
      }

      v51 = *(v5 + 16);
      v50 = *(v5 + 24);
      v10 = v50 - v51;
      if (!__OFSUB__(v50, v51))
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    else if (!v24)
    {
      v10 = BYTE6(v4);
      goto LABEL_3;
    }

    if (__OFSUB__(HIDWORD(v5), v5))
    {
      __break(1u);
      return result;
    }

    v10 = HIDWORD(v5) - v5;
    goto LABEL_3;
  }

  v23 = v0[13];
  sub_10002683C(v5, v4);

  sub_100011F00(v23, &qword_10022F3C0, &qword_1001E0888);
LABEL_11:
  v28 = v0[11];
  v30 = v0[5];
  v29 = v0[6];
  sub_10001208C(v0[14], v28, &qword_10022F3C0, &qword_1001E0888);
  if ((*(v29 + 48))(v28, 1, v30) == 1)
  {
    v31 = v0[11];
    v32 = v0[2];
    sub_100011F00(v0[14], &qword_10022F3C0, &qword_1001E0888);
    sub_100011F00(v31, &qword_10022F3C0, &qword_1001E0888);
    sub_10002683C(0, 0xF000000000000000);
    sub_100089C38(v5, v57);

    sub_10002683C(v5, v57);

    *v32 = v5;
    *(v32 + 8) = v57;
    *(v32 + 16) = v56;
    *(v32 + 24) = v54;

    v33 = v0[1];
  }

  else
  {
    v35 = v0 + 4;
    v34 = v0[4];
    v36 = v0[3];
    v37 = *(v0[6] + 32);
    v37(v0[8], v0[11], v0[5]);
    v38 = (v36 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock);
    os_unfair_lock_lock((v36 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock));
    v39 = sub_100011AC0(&qword_10022F110, &qword_1001E0620);
    sub_100146FC8(v38 + *(v39 + 28), v34);
    v40 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
    v41 = (*(*(v40 - 8) + 48))(v34, 2, v40);
    v42 = v0[6];
    if (v41)
    {
      v37 = *(v42 + 16);
      v35 = v0 + 8;
    }

    v43 = *v35;
    v44 = v0[14];
    v45 = v0[7];
    v46 = v0[8];
    v47 = v0[5];
    v37(v45, v43, v47);
    os_unfair_lock_unlock(v38);
    sub_100147098(&qword_10022F3A8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
    swift_allocError();
    (*(v42 + 16))(v48, v45, v47);
    swift_willThrow();

    sub_10002683C(v55, v57);
    v49 = *(v42 + 8);
    v49(v45, v47);
    v49(v46, v47);
    sub_100011F00(v44, &qword_10022F3C0, &qword_1001E0888);

    v33 = v0[1];
  }

  return v33();
}

uint64_t sub_100146008(uint64_t a1)
{
  v2 = sub_100011AC0(qword_10022F3C8, &qword_1001E0890);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_1001D1190();
}

uint64_t sub_10014615C(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = sub_100011AC0(&qword_10022F3B8, &qword_1001E0880);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v16 - v12;
  v14 = *(v11 + 88);
  *v13 = a1;
  *(v13 + 1) = a2;
  *(v13 + 2) = a3;
  v13[24] = a4;
  sub_10001208C(a5, &v13[v14], &qword_10022F3C0, &qword_1001E0888);
  sub_100089C38(a1, a2);

  sub_100011AC0(qword_10022F3C8, &qword_1001E0890);
  return sub_1001D1AA0();
}

void sub_100146264(uint64_t a1, const char *a2, ...)
{

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000954E0(*(a1 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(a1 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v8);
    _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 0xCu);
    sub_100011CF0(v7);
  }

  sub_1001D1020();
}

uint64_t sub_100146378()
{

  v1 = OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger;
  v2 = sub_1001D0E60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = v0 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock;
  v4 = sub_100011AC0(&qword_10022F110, &qword_1001E0620);
  sub_10014703C(v3 + *(v4 + 28));

  return swift_deallocClassInstance();
}

void sub_100146494(uint64_t a1)
{
  sub_1001D0E60();
  if (v1 <= 0x3F)
  {
    sub_100146584(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100146584(uint64_t a1)
{
  if (!qword_10022F248)
  {
    type metadata accessor for NWConnectionWrapper.State(255);
    v1 = sub_1001CFF60();
    if (!v2)
    {
      atomic_store(v1, &qword_10022F248);
    }
  }
}

char *sub_1001465FC()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100011AC0(&qword_10022F110, &qword_1001E0620);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100146640(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
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

uint64_t sub_1001466CC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10014675C(uint64_t a1)
{
  sub_1001467B4();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1001467B4()
{
  if (!qword_10022F368)
  {
    v0 = sub_1001D1310();
    if (!v1)
    {
      atomic_store(v0, &qword_10022F368);
    }
  }
}

BOOL sub_1001467FC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100011AC0(&qword_1002295D8, &qword_1001D6988);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - v7;
  v9 = (*(v6 + 48))(a1, 1, v5);
  if (!v9)
  {
    (*(v6 + 16))(v8, a1, v5);
    v10 = *a2;
    if (*(a2 + 48))
    {
      sub_100011AC0(&qword_100227A58, &qword_1001D3600);
      v11 = swift_allocError();
      *v12 = v10;
      v20[0] = v11;
      swift_errorRetain();
      sub_1001D1A90();
    }

    else
    {
      v14 = *(a2 + 32);
      v13 = *(a2 + 40);
      v20[7] = v2;
      v15 = *(a2 + 16);
      v16 = *(a2 + 24);
      v17 = *(a2 + 8);
      v20[0] = v10;
      v20[1] = v17;
      v20[2] = v15;
      v20[3] = v16;
      v20[4] = v14;
      v20[5] = v13;
      v18 = v13;
      sub_100012038(v10, v17);
      sub_100012038(v15, v16);
      sub_100012038(v14, v18);
      sub_1001D1AA0();
    }

    (*(v6 + 8))(v8, v5);
  }

  return v9 != 0;
}

BOOL sub_1001469DC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - v6;
  v8 = (*(v5 + 48))(a1, 1, v4);
  if (!v8)
  {
    (*(v5 + 16))(v7, a1, v4);
    if (a2[1])
    {
      v9 = *a2;
      sub_100011AC0(&qword_100227A58, &qword_1001D3600);
      v10 = swift_allocError();
      *v11 = v9;
      v13[1] = v10;
      swift_errorRetain();
      sub_1001D1A90();
    }

    else
    {
      sub_1001D1AA0();
    }

    (*(v5 + 8))(v7, v4);
  }

  return v8 != 0;
}

BOOL sub_100146B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022F1A8, &qword_1001E0870);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v8 = (*(v5 + 48))(a1, 1, v4);
  if (!v8)
  {
    (*(v5 + 16))(v7, a1, v4);
    v9 = *a2;
    if (*(a2 + 8))
    {
      sub_100011AC0(&qword_100227A58, &qword_1001D3600);
      v10 = swift_allocError();
      *v11 = v9;
      v14 = v10;
      swift_errorRetain();
      sub_1001D1A90();
    }

    else
    {
      v14 = *a2;
      sub_1001D1AA0();
    }

    (*(v5 + 8))(v7, v4);
  }

  return v8 != 0;
}

BOOL sub_100146CFC(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v4 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  __chkstk_darwin(v4 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100011AC0(&qword_10022F188, &qword_1001E06F0);
  v8 = __chkstk_darwin(v7);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v24 = v23 - v11;
  v12 = sub_100011AC0(&qword_10022F170, &unk_1001E18C0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v23 - v14;
  v16 = a1;
  v17 = (*(v13 + 48))(a1, 1, v12);
  if (!v17)
  {
    v23[0] = v6;
    v23[1] = v2;
    (*(v13 + 16))(v15, v16, v12);
    v18 = v24;
    sub_10001208C(v25, v24, &qword_10022F188, &qword_1001E06F0);
    sub_10001208C(v18, v10, &qword_10022F188, &qword_1001E06F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = *v10;
      sub_100011AC0(&qword_100227A58, &qword_1001D3600);
      v20 = swift_allocError();
      *v21 = v19;
      v26 = v20;
      sub_1001D1A90();
    }

    else
    {
      sub_1001470E0(v10, v23[0]);
      sub_1001D1AA0();
    }

    sub_100011F00(v18, &qword_10022F188, &qword_1001E06F0);
    (*(v13 + 8))(v15, v12);
  }

  return v17 != 0;
}

uint64_t sub_100146FC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWConnectionWrapper.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014702C(uint64_t a1, char a2, char a3)
{
  if (a3)
  {
    return sub_1001428C4(a1, a2 & 1);
  }

  else
  {
  }
}

uint64_t sub_10014703C(uint64_t a1)
{
  v2 = type metadata accessor for NWConnectionWrapper.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100147098(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001470E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014714C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022F3C0, &qword_1001E0888);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001471BC()
{
  v1 = sub_100011AC0(qword_10022F3C8, &qword_1001E0890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100147250(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_100011AC0(qword_10022F3C8, &qword_1001E0890);

  return sub_10014615C(a1, a2, a3, a4, a5);
}

uint64_t sub_10014730C()
{
  v1 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001473DC(uint64_t a1)
{
  v3 = *(sub_100011AC0(&qword_100227B38, &qword_1001D36D0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100144EC0(a1, v4, v5);
}

uint64_t sub_10014745C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = *(a5 - 8);
  __chkstk_darwin(a1);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, v7, v18);
  (*(v15 + 32))(a7, v17, a5);
  v20 = type metadata accessor for OnResponseHeadSequence(0, a5, a6, v19);
  v21 = (a7 + *(v20 + 36));
  *v21 = a1;
  v21[1] = a2;
  v22 = (a7 + *(v20 + 40));
  *v22 = a3;
  v22[1] = a4;
}

uint64_t sub_1001475B0(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_1001479FC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100147658(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((((v9 + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v9 + 9) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}