void *sub_2144D6CDC(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

uint64_t sub_2144D6FA4()
{
  v1 = *v0;

  return v1;
}

void sub_2144D6FD4(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_2144D702C()
{
  v1 = *(v0 + 16);

  return v1;
}

void sub_2144D705C(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_2144D70B4()
{
  v1 = *(v0 + 32);

  return v1;
}

void sub_2144D70E4(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_2144D713C()
{
  v1 = *(v0 + 48);

  return v1;
}

void sub_2144D716C(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_2144D71C4()
{
  v1 = *(v0 + 64);

  return v1;
}

void sub_2144D71F4(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_2144D724C()
{
  v1 = *(v0 + 80);

  return v1;
}

void sub_2144D727C(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t sub_2144D72E0(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

void (*sub_2144D7310(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1F8uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 248;
  *(v4 + 496) = v2;
  result = sub_213FB2E54(v2, v4 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v5 + 272))
  {
    v8 = *(v6 + 208);
    *(v5 + 192) = *(v6 + 192);
    *(v5 + 208) = v8;
    *(v5 + 224) = *(v6 + 224);
    *(v5 + 240) = *(v6 + 240);
    v9 = *(v6 + 144);
    *(v5 + 128) = *(v6 + 128);
    *(v5 + 144) = v9;
    v10 = *(v6 + 176);
    *(v5 + 160) = *(v6 + 160);
    *(v5 + 176) = v10;
    v11 = *(v6 + 80);
    *(v5 + 64) = *(v6 + 64);
    *(v5 + 80) = v11;
    v12 = *(v6 + 112);
    *(v5 + 96) = *(v6 + 96);
    *(v5 + 112) = v12;
    v13 = *(v6 + 16);
    *v5 = *v6;
    *(v5 + 16) = v13;
    v14 = *(v6 + 48);
    *(v5 + 32) = *(v6 + 32);
    *(v5 + 48) = v14;
    return sub_2140A3C24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_2144D73F8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2140A3E5C;
}

uint64_t sub_2144D7484()
{
  v1 = *v0;

  return v1;
}

void sub_2144D74B4(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_2144D750C()
{
  v1 = *v0;

  return v1;
}

void sub_2144D753C(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_2144D766C()
{
  v1 = *(v0 + *(type metadata accessor for MessagesAppBalloon(0) + 24));

  return v1;
}

void sub_2144D76AC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessagesAppBalloon(0) + 24));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2144D7814@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MessagesAppBalloon(0) + 32));
  v5 = v3[5];
  v15 = v3[4];
  v4 = v15;
  v16[0] = v5;
  *(v16 + 9) = *(v3 + 89);
  v6 = *(v16 + 9);
  v7 = v3[3];
  v13 = v3[2];
  v8 = v13;
  v14 = v7;
  v9 = v3[1];
  v12[0] = *v3;
  v12[1] = v9;
  *a1 = v12[0];
  a1[1] = v9;
  a1[4] = v4;
  a1[5] = v5;
  a1[2] = v8;
  a1[3] = v7;
  *(a1 + 89) = v6;
  return sub_213FB2E54(v12, &v11, &qword_27C907DF8, &qword_214755E10);
}

__n128 sub_2144D7898(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for MessagesAppBalloon(0) + 32));
  v4 = v3[5];
  v10[4] = v3[4];
  v11[0] = v4;
  *(v11 + 9) = *(v3 + 89);
  v5 = v3[3];
  v10[2] = v3[2];
  v10[3] = v5;
  v6 = v3[1];
  v10[0] = *v3;
  v10[1] = v6;
  sub_213FB2DF4(v10, &qword_27C907DF8, &qword_214755E10);
  v7 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v7;
  *(v3 + 89) = *(a1 + 89);
  v8 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v8;
  result = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = result;
  return result;
}

uint64_t sub_2144D799C(uint64_t a1, char a2)
{
  result = type metadata accessor for MessagesAppBalloon(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_2144D7A2C()
{
  v1 = *(v0 + *(type metadata accessor for MessagesAppBalloon(0) + 40));

  return v1;
}

void sub_2144D7A6C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessagesAppBalloon(0) + 40));

  *v5 = a1;
  v5[1] = a2;
}

void sub_2144D7BD4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for MessagesAppBalloon(0) + 48);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }
}

double sub_2144D7C70(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for MessagesAppBalloon(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2144D7D38(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for MessagesAppBalloon(0) + 48);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144D7E88(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for MessagesAppBalloon(0) + 48);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_214065C38;
  }

  return result;
}

uint64_t sub_2144D7F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for MessagesAppBalloon(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_2144D7FE4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for MessagesAppBalloon(0) + 48);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2144D807C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for MessagesAppBalloon(0) + 48);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_2140660B8;
}

uint64_t sub_2144D8128@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MessagesAppBalloon(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_213FDC9D0(v4, v5);
}

uint64_t sub_2144D8170(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for MessagesAppBalloon(0) + 52));
  result = sub_213FDC6D0(*v4, v4[1]);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_2144D81FC()
{
  v1 = v0 + *(type metadata accessor for MessagesAppBalloon(0) + 56);
  v2 = *v1;
  sub_213FDCA18(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_2144D8240(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for MessagesAppBalloon(0) + 56);
  result = sub_213FDC6BC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_2144D82D0()
{
  v1 = *(v0 + *(type metadata accessor for MessagesAppBalloon(0) + 60));

  return v1;
}

void sub_2144D8310(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessagesAppBalloon(0) + 60));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2144D84D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144D8538(uint64_t a1)
{
  *(a1 + 8) = sub_2144D85A0(&qword_27C90CF20, asc_2146FAFE0);
  result = sub_2144D85A0(&qword_27C90CEF0, byte_2146FB008);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144D85A0(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for MessagesAppBalloon(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_2144D860C(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_2144D8814(319, &qword_280B353F8, MEMORY[0x277CC95F0]);
    if (v2 <= 0x3F)
    {
      sub_2144D8814(319, &qword_280B30B80, MEMORY[0x277CC9260]);
      if (v3 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B2F2C0, &type metadata for MessagesAppBalloon.Layout);
        if (v4 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B34BC8, MEMORY[0x277D83B88]);
          if (v5 <= 0x3F)
          {
            sub_21403BEC8(319, &qword_280B2F2D0, &type metadata for MessagesAppBalloon.AppIconImage);
            if (v6 <= 0x3F)
            {
              sub_214084AA4(319);
              if (v7 <= 0x3F)
              {
                sub_21403BEC8(319, &qword_280B2F2C8, &type metadata for MessagesAppBalloon.LiveLayout);
                if (v8 <= 0x3F)
                {
                  sub_21403BEC8(319, &qword_280B2FDD0, MEMORY[0x277CC9318]);
                  if (v9 <= 0x3F)
                  {
                    sub_2144D8814(319, qword_280B2F7D8, type metadata accessor for EncodedAppData);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_2144D8814(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2144D8894(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2144D88F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2144D89C4(uint64_t a1)
{
  *(a1 + 8) = sub_2144D8A78(&qword_27C914960, byte_2146FBB20);
  result = sub_2144D8A78(&qword_27C914968, byte_2146FBB48);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for RecoverJunkCommand(uint64_t a1)
{
  result = qword_280B30410;
  if (!qword_280B30410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2144D8A78(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for RecoverJunkCommand(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MBDRichCards.init(payloadData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_2146D85C8();
  swift_allocObject();
  sub_2146D85B8();
  sub_2144D8B98();
  sub_2146D8598();

  result = sub_213FB54FC(a1, a2);
  if (!v3)
  {
    *a3 = v8;
    a3[1] = v9;
  }

  return result;
}

unint64_t sub_2144D8B98()
{
  result = qword_27C914970;
  if (!qword_27C914970)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MBDRichCards, &type metadata for MBDRichCards, v0, v1);
    atomic_store(result, &qword_27C914970);
  }

  return result;
}

unint64_t sub_2144D8BEC(uint64_t a1)
{
  *(a1 + 8) = sub_214300464();
  result = sub_21430053C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2144D8C2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E68D0;
  *(inited + 32) = 1684828002;
  *(inited + 40) = 0xE400000000000000;
  v1 = sub_2146D9988();
  v2 = sub_21403EBDC();
  *(inited + 48) = v1;
  *(inited + 72) = v2;
  *(inited + 80) = 0x7363696C617469;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = sub_2146D9988();
  *(inited + 120) = v2;
  *(inited + 128) = 0x6E696C7265646E75;
  *(inited + 136) = 0xE900000000000065;
  v3 = sub_2146D9988();
  *(inited + 168) = v2;
  *(inited + 144) = v3;
  v4 = sub_2140457C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE0, &unk_2146EA760);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_2144D8D64(uint64_t a1, uint64_t a2)
{
  if (sub_2146D9778() & 1) != 0 || !a1 && a2 == 0xE000000000000000 || (sub_2146DA6A8())
  {
    v9 = a2;
    sub_214069AD8();
    if ((sub_2146D9E08() & 1) == 0)
    {
      return 1;
    }

    v4 = sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      v7 = v4;
      swift_once();
      v4 = v7;
    }

    sub_2146D91D8(v4, &dword_213FAF000, qword_280B35410, "Invalid path component passed as stickerExternalURI. Cannot be backtracking components.", 87, 2, MEMORY[0x277D84F90], 11822, 0xE200000000000000, a1, v9);
  }

  else
  {
    v6 = sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      v8 = v6;
      swift_once();
      v6 = v8;
    }

    sub_2146D91D8(v6, &dword_213FAF000, qword_280B35410, "Invalid sticker external URI format. Must begin with sticker:/// or be an empty string.", 87, 2, MEMORY[0x277D84F90]);
  }

  return 0;
}

uint64_t sub_2144D8EF4()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[7];
  v3 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E6910;
  *(inited + 32) = 0x6D754E656E6F6870;
  *(inited + 40) = 0xEB00000000726562;
  if (v1)
  {
    v6 = MEMORY[0x277D837D0];
    *(inited + 48) = v2;
    *(inited + 56) = v1;
    *(inited + 72) = v6;
    *(inited + 80) = 0x6B6361626C6C6166;
    *(inited + 88) = 0xEB000000006C7255;
    if (!v3)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      *(inited + 112) = 0;
LABEL_6:
      *(inited + 96) = v7;
      *(inited + 104) = v8;
      *(inited + 120) = v9;
      v10 = inited;

      sub_213FDC9D0(v4, v3);
      v11 = sub_214045690(v10);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
      swift_arrayDestroy();
      v12 = sub_2140418B8(v11);

      return v12;
    }

    if (v3 != 1)
    {
      v9 = MEMORY[0x277D837D0];
      v7 = v4;
      v8 = v3;
      goto LABEL_6;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144D9098(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6B6361626C6C6166;
  }

  else
  {
    v3 = 0x6D754E656E6F6870;
  }

  if (v2)
  {
    v4 = 0xEB00000000726562;
  }

  else
  {
    v4 = 0xEB000000006C7255;
  }

  if (*a2)
  {
    v5 = 0x6B6361626C6C6166;
  }

  else
  {
    v5 = 0x6D754E656E6F6870;
  }

  if (*a2)
  {
    v6 = 0xEB000000006C7255;
  }

  else
  {
    v6 = 0xEB00000000726562;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2144D9150()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2144D91E4(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2144D9264(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2144D92F4(char *a2@<X8>)
{
  v3 = sub_2146DA098();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_2144D9354(uint64_t *a1@<X8>)
{
  v2 = 0x6D754E656E6F6870;
  if (*v1)
  {
    v2 = 0x6B6361626C6C6166;
  }

  v3 = 0xEB00000000726562;
  if (*v1)
  {
    v3 = 0xEB000000006C7255;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_2144D93A4(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_2144D9408(uint64_t a1)
{
  v2 = sub_2144D98E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144D9444(uint64_t a1)
{
  v2 = sub_2144D98E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2144D9480@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914978, &qword_214756340);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144D98E0();
  sub_2146DAA08();
  if (!v2)
  {
    v19 = 0;
    v9 = sub_2146DA168();
    v11 = v10;
    v19 = 1;
    v12 = sub_2146DA0F8();
    sub_2140FDAFC(v9, v11, v12, v13, v17);
    (*(v6 + 8))(v8, v5);
    v14 = v18[0];
    a2[2] = v17[2];
    a2[3] = v14;
    *(a2 + 57) = *(v18 + 9);
    v15 = v17[1];
    *a2 = v17[0];
    a2[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2144D967C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914988, &unk_214756348);
  v12 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  v7 = v1[3];
  v8 = v1[7];
  v10 = v1[8];
  v11 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144D98E0();
  sub_2146DAA28();
  if (!v7)
  {
    goto LABEL_6;
  }

  LOBYTE(v13) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v12 + 8))(v6, v4);

    return;
  }

  if (v10 == 1)
  {
LABEL_6:
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    v13 = v11;
    v14 = v10;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    (*(v12 + 8))(v6, v4);
  }
}

unint64_t sub_2144D98E0()
{
  result = qword_27C914980;
  if (!qword_27C914980)
  {
    result = swift_getWitnessTable(aIq, &_s19CodingConfigurationV10CodingKeysON_11, v0, v1);
    atomic_store(result, &qword_27C914980);
  }

  return result;
}

unint64_t sub_2144D9958()
{
  result = qword_27C914990;
  if (!qword_27C914990)
  {
    result = swift_getWitnessTable(byte_2147564B8, &_s19CodingConfigurationV10CodingKeysON_11, v0, v1);
    atomic_store(result, &qword_27C914990);
  }

  return result;
}

unint64_t sub_2144D99B0()
{
  result = qword_27C914998;
  if (!qword_27C914998)
  {
    result = swift_getWitnessTable(byte_2147563F0, &_s19CodingConfigurationV10CodingKeysON_11, v0, v1);
    atomic_store(result, &qword_27C914998);
  }

  return result;
}

unint64_t sub_2144D9A08()
{
  result = qword_27C9149A0;
  if (!qword_27C9149A0)
  {
    result = swift_getWitnessTable(byte_214756418, &_s19CodingConfigurationV10CodingKeysON_11, v0, v1);
    atomic_store(result, &qword_27C9149A0);
  }

  return result;
}

uint64_t XPCCodable.init(from:)(void *a1, uint64_t a2)
{
  v4 = sub_2146D9F58();
  swift_allocError();
  v6 = v5;
  sub_2146D9EF8();
  type metadata accessor for XPCCodable(0, a2, v7, v8);
  sub_2146DAA78();

  MEMORY[0x2160545D0](0xD000000000000021, 0x800000021479BD00);
  sub_2146D9F28();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84168], v4);
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2144D9CC0(uint64_t a1, uint64_t a2)
{
  v3 = sub_2146D9F78();
  swift_allocError();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9179F0, &qword_21477E720);
  v8 = type metadata accessor for XPCCodable(0, a2, v6, v7);
  v5[3] = swift_getMetatypeMetadata();
  *v5 = v8;
  sub_2146D9EF8();
  sub_2146DAA78();

  MEMORY[0x2160545D0](0xD000000000000021, 0x800000021479BD30);
  sub_2146D9F28();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D841A8], v3);
  return swift_willThrow();
}

uint64_t sub_2144D9E14(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2144D9E84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_2144D9FC4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_2144DA1CC()
{
  v1 = type metadata accessor for MBDChipAction(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F58, &qword_2146F4150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v32 - v5);
  v7 = type metadata accessor for MBDChip(0);
  sub_2144DA65C(v0 + *(v7 + 20), v6);
  v8 = type metadata accessor for MBDChipContent(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    goto LABEL_5;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v19 = *v6;
    v20 = v6[1];
    v21 = v6[3];
    v32 = v6[2];
    v33 = v19;
    v23 = v6[4];
    v22 = v6[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146E6910;
    *(inited + 32) = 1701869940;
    v25 = MEMORY[0x277D83B88];
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = 0;
    *(inited + 72) = v25;
    *(inited + 80) = 1885956195;
    *(inited + 88) = 0xE400000000000000;
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_2146EA710;
    *(v26 + 32) = 0x6974736567677573;
    *(v26 + 40) = 0xEA00000000006E6FLL;
    v34 = v33;
    v35 = v20;
    v36 = v32;
    v37 = v21;
    v38 = v23;
    v39 = v22;
    v27 = sub_2143E26FC();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *(v26 + 72) = v28;
    *(v26 + 48) = v27;
    v29 = sub_214045690(v26);
    swift_setDeallocating();
    sub_213FB2DF4(v26 + 32, &qword_27C903FD0, &unk_2146F14B0);
    v30 = sub_2140418B8(v29);

    *(inited + 120) = v28;
    *(inited + 96) = v30;

    v31 = sub_214045690(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
    swift_arrayDestroy();
    v14 = sub_2140418B8(v31);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_2146EA710;
    *(v15 + 32) = 1701869940;
    v16 = v15 + 32;
    *(v15 + 72) = MEMORY[0x277D83B88];
    *(v15 + 40) = 0xE400000000000000;
    *(v15 + 48) = -1;
    v17 = sub_214045690(v15);
    swift_setDeallocating();
    sub_213FB2DF4(v16, &qword_27C903FD0, &unk_2146F14B0);
    v14 = sub_2140418B8(v17);
LABEL_6:

    return v14;
  }

  sub_2144DB2D4(v6, v3, type metadata accessor for MBDChipAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_2146E6910;
  *(v10 + 32) = 1701869940;
  v11 = MEMORY[0x277D83B88];
  *(v10 + 40) = 0xE400000000000000;
  *(v10 + 48) = 1;
  *(v10 + 72) = v11;
  *(v10 + 80) = 1885956195;
  *(v10 + 88) = 0xE400000000000000;
  v12 = MBDChipAction.dictionaryRepresentation.getter();
  *(v10 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
  *(v10 + 96) = v12;
  v13 = sub_214045690(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
  swift_arrayDestroy();
  v14 = sub_2140418B8(v13);

  sub_2144DB33C(v3, type metadata accessor for MBDChipAction);
  return v14;
}

uint64_t sub_2144DA65C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F58, &qword_2146F4150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2144DA6D0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1885956195;
  }

  else
  {
    v2 = 1701869940;
  }

  if (*a2)
  {
    v3 = 1885956195;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2146DA6A8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2144DA748()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2144DA7B0(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2144DA7FC(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2144DA860(char *a2@<X8>)
{
  v3 = sub_2146DA098();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_2144DA8C0(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 1885956195;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

void sub_2144DA8E8(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_2144DA94C(uint64_t a1)
{
  v2 = sub_2144DB280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144DA988(uint64_t a1)
{
  v2 = sub_2144DB280();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2144DA9C4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v28 = type metadata accessor for MBDChipAction(0);
  MEMORY[0x28223BE20](v28);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MBDChipContent(0);
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9149A8, &qword_2147565E0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v12 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2144DB280();
  v13 = v31;
  sub_2146DAA08();
  if (!v13)
  {
    v31 = v4;
    v14 = v9;
    v15 = v5;
    v16 = v30;
    v38 = 0;
    sub_2142E93B4();
    sub_2146DA1C8();
    v17 = v33;
    v18 = v7;
    swift_storeEnumTagMultiPayload();
    v37 = v17;
    if (v17)
    {
      v19 = v14;
      if (v17 == 1)
      {
        v38 = 1;
        sub_2144DB39C();
        sub_2146DA0D8();
        sub_2144DB33C(v18, type metadata accessor for MBDChipContent);
        (*(v14 + 8))(v11, v8);
        v20 = v29;
        v21 = v34;
        v22 = v35;
        v23 = v36;
        *v18 = v33;
        *(v18 + 8) = v21;
        *(v18 + 16) = v22;
        *(v18 + 32) = v23;
        swift_storeEnumTagMultiPayload();
LABEL_8:
        v25 = *(type metadata accessor for MBDChip(0) + 20);
        sub_2144DB2D4(v18, &v16[v25], type metadata accessor for MBDChipContent);
        (*(v20 + 56))(&v16[v25], 0, 1, v15);
        *v16 = v37;
        return __swift_destroy_boxed_opaque_existential_1(v32);
      }

      LOBYTE(v33) = 1;
      sub_2144DB3F0(&qword_27C9149B8, protocol conformance descriptor for MBDChipAction);
      v24 = v31;
      sub_2146DA0D8();
      sub_2144DB33C(v18, type metadata accessor for MBDChipContent);
      (*(v19 + 8))(v11, v8);
      sub_2144DB2D4(v24, v18, type metadata accessor for MBDChipAction);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      (*(v14 + 8))(v11, v8);
    }

    v20 = v29;
    goto LABEL_8;
  }

  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_2144DADFC(void *a1)
{
  v26 = type metadata accessor for MBDChipAction(0);
  MEMORY[0x28223BE20](v26);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F58, &qword_2146F4150);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9149C8, qword_2147565E8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144DB280();
  v14 = v27;
  sub_2146DAA28();
  LOBYTE(v29) = *v14;
  v34 = 0;
  sub_2142E94BC();
  v15 = v28;
  sub_2146DA388();
  if (v15)
  {
    return (*(v11 + 8))(v13, v10);
  }

  v28 = v11;
  v17 = type metadata accessor for MBDChip(0);
  sub_2144DA65C(&v14[*(v17 + 20)], v9);
  v18 = type metadata accessor for MBDChipContent(0);
  if ((*(*(v18 - 8) + 48))(v9, 1, v18) == 1)
  {
    (*(v28 + 8))(v13, v10);
  }

  else
  {
    v19 = v7;
    sub_2144DA65C(v9, v7);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v21 = v28;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2144DB2D4(v19, v3, type metadata accessor for MBDChipAction);
        LOBYTE(v29) = 1;
        sub_2144DB3F0(&qword_27C9149D0, protocol conformance descriptor for MBDChipAction);
        sub_2146DA2A8();
        sub_2144DB33C(v3, type metadata accessor for MBDChipAction);
        (*(v21 + 8))(v13, v10);
      }

      else
      {
        (*(v28 + 8))(v13, v10);
        sub_2144DB33C(v19, type metadata accessor for MBDChipContent);
      }
    }

    else
    {
      v22 = *(v7 + 1);
      v23 = *(v7 + 2);
      v24 = *(v7 + 5);
      v29 = *v7;
      v30 = v22;
      v31 = v23;
      v27 = *(v7 + 24);
      v32 = v27;
      v33 = v24;
      v34 = 1;
      sub_2144DB434();
      sub_2146DA2A8();
      (*(v28 + 8))(v13, v10);
    }
  }

  return sub_213FB2DF4(v9, &qword_27C903F58, &qword_2146F4150);
}

unint64_t sub_2144DB280()
{
  result = qword_27C9149B0;
  if (!qword_27C9149B0)
  {
    result = swift_getWitnessTable(byte_214756780, &_s19CodingConfigurationV10CodingKeysON_12, v0, v1);
    atomic_store(result, &qword_27C9149B0);
  }

  return result;
}

uint64_t sub_2144DB2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2144DB33C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2144DB39C()
{
  result = qword_27C9149C0;
  if (!qword_27C9149C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MBDChipReply, &type metadata for MBDChipReply, v0, v1);
    atomic_store(result, &qword_27C9149C0);
  }

  return result;
}

uint64_t sub_2144DB3F0(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for MBDChipAction(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2144DB434()
{
  result = qword_27C9149D8;
  if (!qword_27C9149D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MBDChipReply, &type metadata for MBDChipReply, v0, v1);
    atomic_store(result, &qword_27C9149D8);
  }

  return result;
}

unint64_t sub_2144DB4AC()
{
  result = qword_27C9149E0;
  if (!qword_27C9149E0)
  {
    result = swift_getWitnessTable(aQ9, &_s19CodingConfigurationV10CodingKeysON_12, v0, v1);
    atomic_store(result, &qword_27C9149E0);
  }

  return result;
}

unint64_t sub_2144DB504()
{
  result = qword_27C9149E8;
  if (!qword_27C9149E8)
  {
    result = swift_getWitnessTable(byte_214756690, &_s19CodingConfigurationV10CodingKeysON_12, v0, v1);
    atomic_store(result, &qword_27C9149E8);
  }

  return result;
}

unint64_t sub_2144DB55C()
{
  result = qword_27C9149F0;
  if (!qword_27C9149F0)
  {
    result = swift_getWitnessTable(aE_81, &_s19CodingConfigurationV10CodingKeysON_12, v0, v1);
    atomic_store(result, &qword_27C9149F0);
  }

  return result;
}

uint64_t sub_2144DB5B0@<X0>(_DWORD *a3@<X8>)
{
  v132 = a3;
  v148 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  MEMORY[0x28223BE20](v4);
  v130 = (&v124 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v131 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v136 = &v124 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v124 - v12;
  v14 = objc_allocWithZone(MEMORY[0x277D43170]);
  v15 = sub_2146D8A38();
  v16 = [v14 initWithData_];

  v17 = sub_2146D8958();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  v18 = [v16 position];
  if (v18 >= [v16 length])
  {
    v58 = 0;
    v21 = 0xF000000000000000;
LABEL_58:

    sub_2140861C4();
    swift_allocError();
    *v59 = 1;
    swift_willThrow();

    v60 = v58;
LABEL_59:
    sub_213FDC6BC(v60, v21);
    return sub_213FB2DF4(v13, &unk_27C9131A0, &unk_2146E9D10);
  }

  v128 = v3;
  v126 = v7;
  v129 = v4;
  v127 = v6;
  v138 = 0;
  v139 = 0;
  v140 = 0;
  v19 = 0;
  v20 = 0;
  LODWORD(v133) = 0;
  v135 = 0;
  v137 = 1;
  v21 = 0xF000000000000000;
  v134 = 1;
  while (([v16 hasError] & 1) == 0)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    while (1)
    {
      LOBYTE(v144) = 0;
      v26 = [v16 position] + 1;
      if (v26 >= [v16 position] && (v27 = objc_msgSend(v16, "position") + 1, v27 <= objc_msgSend(v16, "length")))
      {
        v28 = [v16 data];
        [v28 getBytes:&v144 range:{objc_msgSend(v16, "position"), 1}];

        [v16 setPosition:{objc_msgSend(v16, "position") + 1}];
      }

      else
      {
        [v16 _setError];
      }

      v25 |= (v144 & 0x7F) << v23;
      if ((v144 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      if (v24++ >= 9)
      {
        v30 = 0;
        goto LABEL_18;
      }
    }

    if ([v16 hasError])
    {
      v30 = 0;
    }

    else
    {
      v30 = v25;
    }

LABEL_18:
    if ([v16 hasError])
    {

      sub_2140861C4();
      swift_allocError();
      *v80 = 0;
      swift_willThrow();

      v60 = v138;
      goto LABEL_59;
    }

    v31 = v30 >> 3;
    if ((v30 >> 3) > 3)
    {
      switch(v31)
      {
        case 4:

          v46 = PBReaderReadString();
          if (v46)
          {
            v47 = v46;
            v19 = sub_2146D95B8();
            v140 = v48;
          }

          else
          {
            v19 = 0;
            v140 = 0;
          }

          goto LABEL_4;
        case 5:

          v52 = PBReaderReadString();
          if (v52)
          {
            v53 = v52;
            v20 = sub_2146D95B8();
            v139 = v54;
          }

          else
          {
            v20 = 0;
            v139 = 0;
          }

          goto LABEL_4;
        case 6:
          *&v144 = 0;
          v37 = [v16 position] + 8;
          if (v37 >= [v16 position] && (v38 = objc_msgSend(v16, "position") + 8, v38 <= objc_msgSend(v16, "length")))
          {
            v57 = [v16 data];
            [v57 getBytes:&v144 range:{objc_msgSend(v16, "position"), 8}];

            [v16 setPosition:{objc_msgSend(v16, "position") + 8}];
          }

          else
          {
            [v16 _setError];
          }

          v134 = 0;
          v135 = v144;
          goto LABEL_4;
      }
    }

    else
    {
      switch(v31)
      {
        case 1:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          while (1)
          {
            LOBYTE(v144) = 0;
            v42 = [v16 position] + 1;
            if (v42 >= [v16 position] && (v43 = objc_msgSend(v16, "position") + 1, v43 <= objc_msgSend(v16, "length")))
            {
              v44 = [v16 data];
              [v44 getBytes:&v144 range:{objc_msgSend(v16, "position"), 1}];

              [v16 setPosition:{objc_msgSend(v16, "position") + 1}];
            }

            else
            {
              [v16 _setError];
            }

            v41 |= (v144 & 0x7F) << v39;
            if ((v144 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            if (v40++ > 8)
            {
              LODWORD(v133) = 0;
              v137 = 0;
              goto LABEL_4;
            }
          }

          v55 = [v16 hasError];
          v137 = 0;
          if (v55)
          {
            v56 = 0;
          }

          else
          {
            v56 = v41;
          }

          LODWORD(v133) = v56;
          goto LABEL_4;
        case 2:
          v49 = PBReaderReadString();
          if (v49)
          {
            v50 = v49;
            sub_2146D95B8();

            v51 = v136;
            sub_2146D8928();

            sub_213FB2DF4(v13, &unk_27C9131A0, &unk_2146E9D10);
            sub_214032588(v51, v13);
          }

          goto LABEL_4;
        case 3:
          v32 = PBReaderReadData();
          if (v32)
          {
            v33 = v32;
            v34 = sub_2146D8A58();
            v36 = v35;
            sub_213FDC6BC(v138, v21);

            v138 = v34;
            v21 = v36;
          }

          else
          {
            sub_213FDC6BC(v138, v21);
            v138 = 0;
            v21 = 0xF000000000000000;
          }

          goto LABEL_4;
      }
    }

    PBReaderSkipValueWithTag();
LABEL_4:
    v22 = [v16 position];
    if (v22 >= [v16 length])
    {
      break;
    }
  }

  if (v137)
  {
    v58 = v138;
    goto LABEL_58;
  }

  v136 = v19;
  v125 = v20;
  v62 = v131;
  sub_213FB2E54(v13, v131, &unk_27C9131A0, &unk_2146E9D10);
  v63 = type metadata accessor for WalletCloudStoreZoneInvitationMessage(0);
  v64 = v63[5];
  v137 = v13;
  v65 = v132;
  sub_2144DC944(v132 + v64);
  sub_2144DCAF0(&v144);
  v66 = v145;
  v67 = v146;
  v68 = v147;
  sub_2144DCC4C(v142);
  v69 = v143;
  *v65 = v133;
  v70 = (v65 + v63[6]);
  *v70 = v138;
  v70[1] = v21;
  v71 = v65 + v63[7];
  *v71 = v144;
  *(v71 + 2) = v66;
  *(v71 + 3) = v67;
  v71[32] = v68;
  v72 = v65 + v63[8];
  v73 = v142[1];
  *v72 = v142[0];
  *(v72 + 1) = v73;
  v72[32] = v69;
  v74 = v65 + v63[9];
  *v74 = v135;
  v74[8] = v134 & 1;
  v138 = v64;
  v75 = v65 + v64;
  v76 = v130;
  sub_213FB2E54(v75, v130, &qword_27C903F38, &unk_2146E9D40);
  v77 = *v76;
  LOBYTE(v142[0]) = *(v76 + *(v129 + 32));
  *&v144 = 0xD00000000000002ELL;
  *(&v144 + 1) = 0x8000000214790C00;
  v145 = 0xD00000000000001CLL;
  v146 = 0x800000021478A360;
  v78 = v128;
  v79 = v77(v62, v142, &v144);
  if (v78)
  {

    sub_213FB2DF4(v62, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v137, &unk_27C9131A0, &unk_2146E9D10);

    goto LABEL_66;
  }

  if (v79)
  {

    v81 = *(v129 + 28);
    v82 = v130;
    sub_213FB2DF4(v130 + v81, &qword_27C903F40, &unk_2146F1C50);
    sub_213FB2E54(v131, v82 + v81, &unk_27C9131A0, &unk_2146E9D10);
    (*(v126 + 56))(v82 + v81, 0, 1, v127);
    sub_2144DCFC0(v82, v132 + v138);
    v83 = *v71;
    v84 = *(v71 + 1);
    v86 = *(v71 + 2);
    v85 = *(v71 + 3);
    v87 = v71[32];
    *&v142[0] = v136;
    *(&v142[0] + 1) = v140;
    v134 = v87;
    v141 = v87;
    *&v144 = 0xD000000000000039;
    *(&v144 + 1) = 0x8000000214790C30;
    v129 = 0x8000000214790C30;
    v145 = 0xD00000000000001CLL;
    v146 = 0x800000021478A360;
    v138 = 0x800000021478A360;

    v133 = v86;
    v130 = v85;
    sub_213FDC9D0(v86, v85);
    v88 = v84;
    v135 = v83;
    v89 = v83(v142, &v141, &v144);
    v90 = v137;
    if (v89)
    {
      sub_213FDC6D0(v133, v130);
      v93 = v138;

      v94 = *(v71 + 2);
      v95 = *(v71 + 3);

      sub_213FDC6D0(v94, v95);
      v96 = v136;
      *v71 = v135;
      *(v71 + 1) = v88;
      v98 = v139;
      v97 = v140;
      *(v71 + 2) = v96;
      *(v71 + 3) = v97;
      v71[32] = v134;
      v100 = *v72;
      v99 = *(v72 + 1);
      v101 = v72;
      v102 = *(v72 + 2);
      v103 = *(v72 + 3);
      v140 = v101;
      v104 = v101[32];
      *&v142[0] = v125;
      *(&v142[0] + 1) = v98;
      LODWORD(v135) = v104;
      v141 = v104;
      *&v144 = 0xD00000000000002ELL;
      *(&v144 + 1) = 0x8000000214790C70;
      v145 = 0xD00000000000001CLL;
      v146 = v93;

      sub_213FDC9D0(v102, v103);
      v136 = v100;
      if ((v100)(v142, &v141, &v144))
      {
        sub_213FDC6D0(v102, v103);

        sub_213FB2DF4(v131, &unk_27C9131A0, &unk_2146E9D10);
        sub_213FB2DF4(v137, &unk_27C9131A0, &unk_2146E9D10);
        v112 = v140;
        v113 = *(v140 + 2);
        v114 = *(v140 + 3);

        result = sub_213FDC6D0(v113, v114);
        *v112 = v136;
        *(v112 + 1) = v99;
        v115 = v139;
        *(v112 + 2) = v125;
        *(v112 + 3) = v115;
        v112[32] = v135;
        return result;
      }

      sub_214031C4C();
      swift_allocError();
      *v116 = 0xD00000000000002ELL;
      v116[1] = 0x8000000214790C70;
      v117 = v138;
      v116[2] = 0xD00000000000001CLL;
      v116[3] = v117;
      swift_willThrow();

      v119 = v136;
      v118 = v137;
      v120 = v135;
      sub_213FB2DF4(v131, &unk_27C9131A0, &unk_2146E9D10);
      sub_213FB2DF4(v118, &unk_27C9131A0, &unk_2146E9D10);
      v121 = v140;
      v122 = *(v140 + 2);
      v123 = *(v140 + 3);

      sub_213FDC6D0(v122, v123);
      *v121 = v119;
      *(v121 + 1) = v99;
      *(v121 + 2) = v102;
      *(v121 + 3) = v103;
      v121[32] = v120;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      v105 = v129;
      *v106 = 0xD000000000000039;
      v106[1] = v105;
      v107 = v138;
      v106[2] = 0xD00000000000001CLL;
      v106[3] = v107;
      swift_willThrow();

      v108 = v133;

      sub_213FB2DF4(v131, &unk_27C9131A0, &unk_2146E9D10);
      sub_213FB2DF4(v90, &unk_27C9131A0, &unk_2146E9D10);
      v109 = *(v71 + 2);
      v110 = *(v71 + 3);

      sub_213FDC6D0(v109, v110);
      *v71 = v135;
      *(v71 + 1) = v88;
      v111 = v130;
      *(v71 + 2) = v108;
      *(v71 + 3) = v111;
      v71[32] = v134;
    }

    return sub_2140860F8(v132);
  }

  sub_214031C4C();
  swift_allocError();
  *v91 = 0xD00000000000002ELL;
  v91[1] = 0x8000000214790C00;
  v91[2] = 0xD00000000000001CLL;
  v91[3] = 0x800000021478A360;
  swift_willThrow();

  sub_213FB2DF4(v131, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2DF4(v137, &unk_27C9131A0, &unk_2146E9D10);
  v76 = v130;
LABEL_66:
  v92 = v132;
  sub_2144DCFC0(v76, v132 + v138);
  return sub_2140860F8(v92);
}

id sub_2144DC484()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v34 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - v6;
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v34 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (!v11)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = v11;
  [v11 writeUint32:*v0 forTag:1];
  v13 = type metadata accessor for WalletCloudStoreZoneInvitationMessage(0);
  v14 = v13[5];
  v35 = v0;
  v15 = v0 + v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(&v15[*(v16 + 28)], v3, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
LABEL_20:
    sub_213FB2DF4(v3, &qword_27C903F40, &unk_2146F1C50);
    goto LABEL_21;
  }

  sub_214032588(v3, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_213FB2DF4(v7, &unk_27C9131A0, &unk_2146E9D10);
  }

  else
  {
    v17 = v34;
    (*(v9 + 32))(v34, v7, v8);
    sub_2146D8868();
    v3 = v18;
    v19 = sub_2146D9588();

    [v12 writeString:v19 forTag:2];

    (*(v9 + 8))(v17, v8);
  }

  v20 = v35;
  v21 = v35 + v13[6];
  v22 = *(v21 + 1);
  if (v22 >> 60 != 15)
  {
    v23 = *v21;
    sub_21402D9F8(*v21, *(v21 + 1));
    v3 = sub_2146D8A38();
    [v12 writeData:v3 forTag:3];

    sub_213FDC6BC(v23, v22);
  }

  v24 = v20 + v13[7];
  v25 = *(v24 + 24);
  if (v25)
  {
    if (v25 == 1)
    {
      goto LABEL_21;
    }

    v26 = *(v24 + 16);

    v3 = sub_2146D9588();
    sub_213FDC6D0(v26, v25);
    [v12 writeString:v3 forTag:4];
  }

  v27 = v20 + v13[8];
  v28 = *(v27 + 24);
  if (!v28)
  {
    goto LABEL_14;
  }

  if (v28 != 1)
  {
    v29 = *(v27 + 16);

    v3 = sub_2146D9588();
    sub_213FDC6D0(v29, v28);
    [v12 writeString:v3 forTag:5];

LABEL_14:
    v30 = v20 + v13[9];
    if ((*(v30 + 8) & 1) == 0)
    {
      [v12 writeDouble:6 forTag:*v30];
    }

    v31 = [v12 immutableData];
    if (v31)
    {
      v32 = v31;

      return v32;
    }

    goto LABEL_19;
  }

LABEL_21:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_2144DC944@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  v4 = sub_214069764(&unk_2826537C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_21409A858;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_214069888(&unk_282653868);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_21409A860;
  *(v8 + 24) = v9;
  *(v3 + 40) = v8;
  v10 = sub_2142E0124(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_21409A868;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_21404352C(inited, a1);
}

unint64_t sub_2144DCAF0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  strcpy((v5 + 16), "com.apple.pay");
  *(v5 + 30) = -4864;
  *(v4 + 16) = sub_2142EEE5C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2144DCC4C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
  *(v4 + 16) = sub_21407B588;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403254C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2144DCDE0(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 20);

  return sub_2144DCFC0(a1, v3);
}

uint64_t sub_2144DCE24@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_2144DCE90(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 28));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144DCF08@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t type metadata accessor for WalletCloudStoreZoneInvitationMessage(uint64_t a1)
{
  result = qword_27C9149F8;
  if (!qword_27C9149F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2144DCFC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 sub_2144DD030(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 32));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144DD0A8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v6 + *(v7 + 28), v5, &qword_27C903F40, &unk_2146F1C50);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) != 1)
  {
    return sub_214032588(v5, a1);
  }

  sub_213FB2DF4(v5, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144DD224()
{
  v1 = v0 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 28);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

uint64_t sub_2144DD2B4()
{
  v1 = v0 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 32);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

uint64_t sub_2144DD374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = a1 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v7 + *(v8 + 28), v6, &qword_27C903F40, &unk_2146F1C50);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) != 1)
  {
    return sub_214032588(v6, a2);
  }

  sub_213FB2DF4(v6, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144DD4F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_213FB2E54(a1, &v9 - v6, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(v7, v5, &unk_27C9131A0, &unk_2146E9D10);
  type metadata accessor for WalletCloudStoreZoneInvitationMessage(0);
  sub_21402F5FC(v5);
  return sub_213FB2DF4(v7, &unk_27C9131A0, &unk_2146E9D10);
}

uint64_t sub_2144DD5F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_213FB2E54(a1, &v6 - v3, &unk_27C9131A0, &unk_2146E9D10);
  type metadata accessor for WalletCloudStoreZoneInvitationMessage(0);
  sub_21402F5FC(v4);
  return sub_213FB2DF4(a1, &unk_27C9131A0, &unk_2146E9D10);
}

void (*sub_2144DD6B8(void *a1))(uint64_t a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50) - 8) + 64);
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
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 20);
  *(v5 + 8) = v14;
  v15 = v1 + v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v15 + *(v16 + 28), v8, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_214032588(v8, v13);
    return sub_2144DD8E8;
  }

  return result;
}

void sub_2144DD8E8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 8);
  if (a2)
  {
    sub_213FB2E54(*(*a1 + 24), v3, &unk_27C9131A0, &unk_2146E9D10);
    sub_21402F5FC(v3);
    sub_213FB2DF4(v4, &unk_27C9131A0, &unk_2146E9D10);
  }

  else
  {
    sub_21402F5FC(*(*a1 + 24));
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

void (*sub_2144DD9AC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 8) = v4;
  v6 = *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 20);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &qword_27C903F38, &unk_2146E9D40);
  return sub_2144DDA6C;
}

void sub_2144DDA6C(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_2144DCFC0(v1, *a1 + *(a1 + 16));

  free(v1);
}

uint64_t sub_2144DDAB0()
{
  v1 = v0 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 24);
  v2 = *v1;
  sub_213FDCA18(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_2144DDAF4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 24);
  result = sub_213FDC6BC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

void sub_2144DDB84(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 28);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }
}

double sub_2144DDC20(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for WalletCloudStoreZoneInvitationMessage(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2144DDCE8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 28);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144DDE38(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 28);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21409E1C0;
  }

  return result;
}

uint64_t sub_2144DDF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_2144DDF94(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 28);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2144DE02C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 28);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21409E45C;
}

void sub_2144DE0D8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 32);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }
}

double sub_2144DE174(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for WalletCloudStoreZoneInvitationMessage(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2144DE23C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 32);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144DE38C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 32);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_2144DE478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_2144DE4E8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 32);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2144DE580(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for WalletCloudStoreZoneInvitationMessage(0) + 32);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21439DFAC;
}

uint64_t sub_2144DE658(uint64_t a1, char a2)
{
  result = type metadata accessor for WalletCloudStoreZoneInvitationMessage(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_2144DE6E8(uint64_t a1)
{
  *(a1 + 8) = sub_2144DE750(&qword_27C909B30, aIym);
  result = sub_2144DE750(&qword_27C909B48, byte_2146FD9E8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144DE750(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for WalletCloudStoreZoneInvitationMessage(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_2144DE7C0(uint64_t a1)
{
  sub_21409A2B4(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2FDD0, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
      if (v3 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B34BD0, MEMORY[0x277D839F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2144DE908@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CrossServiceAssociationMessage(0) + 20);
  v4 = sub_2146D8B88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CrossServiceAssociationMessage(uint64_t a1)
{
  result = qword_280B2E900;
  if (!qword_280B2E900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2144DE9D0(uint64_t a1)
{
  v3 = *(type metadata accessor for CrossServiceAssociationMessage(0) + 20);
  v4 = sub_2146D8B88();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_2144DEA94(uint64_t a1)
{
  *(a1 + 8) = sub_2144DEAFC(&qword_27C914A08, byte_2146F8E70);
  result = sub_2144DEAFC(&unk_27C914A10, aA_107);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144DEAFC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for CrossServiceAssociationMessage(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2144DEB68(uint64_t a1)
{
  result = type metadata accessor for Metadata(319);
  if (v2 <= 0x3F)
  {
    result = sub_2146D8B88();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2144DEBEC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 sub_2144DEC44(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_i64[0];
  v7 = v1[1].n128_u64[1];

  sub_213FDC6BC(v6, v7);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144DECAC()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2144DED34(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_2144DEDFC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 24);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A1B10;
  }

  return result;
}

void (*sub_2144DEE9C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2143A1DC4;
}

unint64_t sub_2144DEF3C(uint64_t a1)
{
  *(a1 + 8) = sub_214325210();
  result = sub_214324FC4();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144DF070()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v48 - v2;
  v4 = sub_2146D8958();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2145A8204();
  v9 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
  v10 = v8;
  v11 = [v9 initRequiringSecureCoding_];
  v12 = sub_2146D9588();
  sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
  [v11 setClassName:v12 forClass:swift_getObjCClassFromMetadata()];

  [v11 encodeObject:v10 forKey:*MEMORY[0x277CCA308]];
  v49 = v10;

  v13 = [v11 encodedData];
  v14 = sub_2146D8A58();
  v16 = v15;

  v17 = sub_2146D8A48();
  v19 = v18;
  sub_213FB54FC(v14, v16);
  v53 = MEMORY[0x277D837D0];
  *&v52 = v17;
  *(&v52 + 1) = v19;
  v20 = v0;
  sub_213FDC730(&v52, v51);
  v21 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = v21;
  sub_2140524DC(v51, 12400, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
  v23 = v50;
  v24 = type metadata accessor for FMFShareInvitation(0);
  v25 = v20 + v24[5];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_21407E1D8(v25 + *(v26 + 28), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_213FB2DF4(v3, &unk_27C9131A0, &unk_2146E9D10);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v27 = sub_2146D8868();
    v29 = v28;
    (*(v5 + 8))(v7, v4);
    v30 = MEMORY[0x277D837D0];
    v53 = MEMORY[0x277D837D0];
    *&v52 = v27;
    *(&v52 + 1) = v29;
    sub_213FDC730(&v52, v51);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v23;
    sub_2140524DC(v51, 12656, 0xE200000000000000, v31);
    v32 = v20 + v24[6];
    v33 = *(v32 + 24);
    if (v33)
    {
      v34 = v50;
      v35 = *(v32 + 16);
      v53 = v30;
      *&v52 = v35;
      *(&v52 + 1) = v33;
      sub_213FDC730(&v52, v51);

      v36 = swift_isUniquelyReferenced_nonNull_native();
      v50 = v34;
      sub_2140524DC(v51, 0xD000000000000015, 0x800000021479B0F0, v36);
      v37 = v20 + v24[7];
      v38 = *(v37 + 24);
      if (v38)
      {
        v39 = v50;
        v40 = *(v37 + 16);
        v53 = v30;
        *&v52 = v40;
        *(&v52 + 1) = v38;
        sub_213FDC730(&v52, v51);

        v41 = swift_isUniquelyReferenced_nonNull_native();
        v50 = v39;
        sub_2140524DC(v51, 118, 0xE100000000000000, v41);
        v42 = v20 + v24[8];
        v43 = *(v42 + 24);
        if (v43)
        {
          v44 = v50;
          v45 = *(v42 + 16);
          v53 = v30;
          *&v52 = v45;
          *(&v52 + 1) = v43;
          sub_213FDC730(&v52, v51);

          v46 = swift_isUniquelyReferenced_nonNull_native();
          v50 = v44;
          sub_2140524DC(v51, 0x64726F6365526B63, 0xEC000000656D614ELL, v46);

          return v50;
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

void sub_2144DF660(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_21402D9F8(a1, a2);
  v8 = sub_21404A62C();
  if (!v3)
  {
    v20 = v8;
    sub_213FB54FC(a1, a2);
    v21 = v20;
    [v21 _enableStrictSecureDecodingMode];
    [v21 setDecodingFailurePolicy_];
    v22 = sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = sub_2146D9588();
    [v21 setClass:ObjCClassFromMetadata forClassName:v24];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913160, &unk_21473D7C0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2146EA710;
    *(v25 + 32) = v22;
    sub_2146D95B8();
    sub_2146D9D08();

    if (v32[3])
    {
      if (swift_dynamicCast())
      {
        sub_2145A8530(v33, a3);
LABEL_10:

        return;
      }
    }

    else
    {
      sub_213FB2DF4(v32, &qword_27C913170, &qword_2146EAB20);
    }

    v29 = sub_2146D9F58();
    swift_allocError();
    v31 = v30;
    sub_2146D9F28();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84168], v29);
    swift_willThrow();
    goto LABEL_10;
  }

  sub_213FB54FC(a1, a2);
  v33 = v3;
  v9 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
  sub_21404A8B8(0, &qword_27C9131B0, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    sub_21404A6EC();
    swift_allocError();
    v11 = v10;
    v12 = v32[4];
    v13 = [v12 domain];
    v14 = sub_2146D95B8();
    v16 = v15;

    MEMORY[0x2160545D0](v14, v16);

    *v11 = 0xD000000000000014;
    v11[1] = 0x800000021478AAD0;
    v32[0] = [v12 code];
    v17 = sub_2146DA428();
    v19 = v18;

    v11[2] = v17;
    v11[3] = v19;
    v11[4] = 0xD000000000000012;
    v11[5] = 0x800000021479BD60;
    swift_willThrow();
  }

  else
  {

    sub_21404A6EC();
    swift_allocError();
    v27 = v26;
    v28 = v3;
    sub_214689A34(v3, 0xD000000000000012, 0x800000021479BD60, v27);
    swift_willThrow();
  }
}

uint64_t sub_2144DFAC0()
{
  sub_2144DF070();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2144DFB14()
{
  sub_2144DF070();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t XPCDecoder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = sub_214046008(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t XPCDecoder.DataDecodingStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t XPCDecoder.UUIDDecodingStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t XPCDecoder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = sub_214046008(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_2144DFCF0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_2144DFD34(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_2144DFDC4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 17);
  return result;
}

uint64_t sub_2144DFE08(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 17) = v2;
  return result;
}

double sub_2144DFE98()
{
  swift_beginAccess();

  return result;
}

double sub_2144DFED0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;

  return result;
}

uint64_t sub_2144DFF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a4;
  v29 = a5;
  v9 = sub_2146D9D38();
  v28 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = (*(*v5 + 112))(&v32 + 1, v10);
  v14 = BYTE1(v32);
  v15 = (*(*v5 + 136))(&v32, v13);
  v16 = v32;
  v17 = (*(*v5 + 160))(v15);
  type metadata accessor for _XPCDecoder();
  v18 = swift_allocObject();
  *(v18 + 40) = a2;
  v19 = MEMORY[0x277D84F90];
  *(v18 + 16) = v14;
  *(v18 + 17) = v16;
  *(v18 + 24) = v17;
  *(v18 + 32) = v19;
  swift_unknownObjectRetain();
  v20 = v31;
  sub_2144E09EC(a3, v12);
  if (!v20)
  {
    v22 = v28;
    v21 = v29;
    v23 = *(a3 - 8);
    if ((*(v23 + 48))(v12, 1, a3) != 1)
    {

      return (*(v23 + 32))(v21, v12, a3);
    }

    (*(v22 + 8))(v12, v9);
    v24 = sub_2146D9F58();
    swift_allocError();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v26 = a1;
    sub_2146D9F28();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84170], v24);
    swift_willThrow();
  }
}

uint64_t sub_2144E029C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 40);
  swift_getObjectType();
  if (sub_214090088())
  {
    v7 = sub_2146D9F58();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v9 = sub_2146DA258();
    swift_beginAccess();

    sub_2146D9F28();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84170], v7);
  }

  else
  {
    if (sub_21408FD98() == 7)
    {

      swift_unknownObjectRetain();
      sub_2144E05B8(v3, v6);
      v11 = type metadata accessor for _XPCKeyedDecodingContainer(0, a2, a3, v10);
      swift_getWitnessTable(aAc, v11);
      return sub_2146DA268();
    }

    swift_beginAccess();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    v14 = sub_2146D9F58();
    swift_allocError();
    v16 = v15;

    sub_2146D9EF8();

    v17 = sub_2144EB524(v6);
    MEMORY[0x2160545D0](v17);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v16 = v13;
    sub_2146D9F28();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
  }

  return swift_willThrow();
}

uint64_t sub_2144E05B8(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  if (sub_21408FD98() == 7)
  {
    swift_beginAccess();

    return a1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144E067C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 40);
  swift_getObjectType();
  if (sub_214090088())
  {
    v5 = sub_2146D9F58();
    swift_allocError();
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A58, &qword_214756CC8);
    swift_beginAccess();

    sub_2146D9F28();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84170], v5);
    return swift_willThrow();
  }

  if (sub_21408FD98() != 6)
  {
    swift_beginAccess();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041C8, &qword_214756CC0);
    v12 = sub_2146D9F58();
    swift_allocError();
    v14 = v13;

    sub_2146D9EF8();

    v15 = sub_2144EB524(v4);
    MEMORY[0x2160545D0](v15);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v14 = v11;
    sub_2146D9F28();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84160], v12);
    return swift_willThrow();
  }

  swift_unknownObjectRetain();
  if (sub_21408FD98() == 6)
  {
    swift_beginAccess();
    v8 = *(v1 + 32);
    a1[3] = &type metadata for _XPCUnkeyedDecodingContainer;
    a1[4] = sub_2144EDEAC();
    v9 = swift_allocObject();
    *a1 = v9;
    v9[2] = v2;
    v9[3] = v4;
    v9[4] = v8;
    v9[5] = 0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144E09EC@<X0>(uint64_t a1@<X2>, uint64_t a3@<X8>)
{
  type metadata accessor for _XPCDecoder();
  sub_2144EDF18(qword_280B355B0, byte_214756C60);

  result = sub_2146D9AF8();
  if (!v3)
  {
    return (*(*(a1 - 8) + 56))(a3, 0, 1, a1);
  }

  return result;
}

void *sub_2144E0AD0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (a2 == MEMORY[0x277CC9318])
  {
    result = sub_2144E0D54(a1);
    if (v6)
    {
      return result;
    }

    if (v18 >> 60 != 15)
    {
      v21[0] = result;
      v21[1] = v18;
LABEL_14:
      v19 = swift_dynamicCast() ^ 1;
      return (*(*(a3 - 8) + 56))(a5, v19, 1, a3);
    }

    return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A40, &qword_214750318) == a2)
  {
    result = sub_2144E103C(a1, v21);
    if (v6)
    {
      return result;
    }

    if ((v21[0] & 0x100000000) == 0)
    {
      goto LABEL_14;
    }

    return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  }

  v20 = a5;
  v22 = a3;
  if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917A10, &unk_214756CB0) != a2)
  {
    swift_beginAccess();
    v11 = *(v5 + 16);
    v12 = *(v5 + 17);
    v15 = v5 + 24;
    v13 = *(v5 + 24);
    v14 = *(v15 + 8);
    type metadata accessor for _XPCDecoder();
    v16 = swift_allocObject();
    *(v16 + 32) = v14;
    *(v16 + 40) = a1;
    *(v16 + 16) = v11;
    *(v16 + 17) = v12;
    *(v16 + 24) = v13;

    swift_unknownObjectRetain();
    sub_2144E09EC(v22, v20);
  }

  result = sub_2144E12F0(a1, v21);
  if (!v6)
  {
    if (!v21[0])
    {
      return (*(*(v22 - 8) + 56))(a5, 1, 1, v22);
    }

    a3 = v22;
    goto LABEL_14;
  }

  return result;
}

_BYTE *sub_2144E0D54(void *a1)
{
  swift_getObjectType();
  if (sub_214090088())
  {
    return 0;
  }

  if (!*(v1 + 16))
  {
    v7 = sub_2146D9F58();
    swift_allocError();
    v9 = v8;
    swift_beginAccess();

    sub_2146D9F28();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84168], v7);
    return swift_willThrow();
  }

  if (*(v1 + 16) == 1)
  {
    if (sub_21408FD98() == 5)
    {
      length = xpc_data_get_length(a1);
      if (length < 1)
      {
        return 0;
      }

      v6 = length;
      result = xpc_data_get_bytes_ptr(a1);
      if (result)
      {
        return sub_2144668E8(result, v6);
      }

      return result;
    }

    swift_beginAccess();
    v12 = sub_2146D9F58();
    swift_allocError();
    v14 = v13;

    sub_2146D9EF8();

    v15 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v15);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v14 = MEMORY[0x277CC9318];
    sub_2146D9F28();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84160], v12);
    return swift_willThrow();
  }

  result = sub_2144E1878(a1);
  if (!v2)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = sub_2146D89C8();

    return v11;
  }

  return result;
}

uint64_t sub_2144E103C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    *a2 = 0;
    *(a2 + 4) = 1;
    return result;
  }

  if (sub_21408FD98() == 7)
  {
    if (xpc_dictionary_get_value(a1, "mpr_p"))
    {
      v5 = xpc_mach_send_copy_right();
      result = swift_unknownObjectRelease();
      *a2 = v5;
      *(a2 + 4) = 0;
      return result;
    }

    v11 = sub_2146D9F58();
    swift_allocError();
    v13 = v12;
    swift_beginAccess();

    sub_2146D9F28();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84168], v11);
  }

  else
  {
    swift_beginAccess();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    v7 = sub_2146D9F58();
    swift_allocError();
    v9 = v8;

    sub_2146D9EF8();

    v10 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v10);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v9 = v6;
    sub_2146D9F28();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
  }

  return swift_willThrow();
}

uint64_t sub_2144E12F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    *a2 = 0;
    return result;
  }

  if (sub_21408FD98() != 7)
  {
    swift_beginAccess();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    v15 = sub_2146D9F58();
    swift_allocError();
    v17 = v16;

    sub_2146D9EF8();

    v18 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v18);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v17 = v14;
    sub_2146D9F28();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84160], v15);
    return swift_willThrow();
  }

  v6 = xpc_dictionary_get_value(a1, "mpr_s");
  if (!v6)
  {
    v19 = sub_2146D9F58();
    swift_allocError();
    v21 = v20;
    swift_beginAccess();

    sub_2146D9F28();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84168], v19);
    return swift_willThrow();
  }

  v7 = sub_2144EB93C(v6);
  if (v2)
  {
    return swift_unknownObjectRelease();
  }

  if (v8 & 1) != 0 || (v22 = v7, sub_2144E103C(a1, &v24), (v25))
  {
    swift_beginAccess();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    v10 = sub_2146D9F58();
    swift_allocError();
    v12 = v11;

    sub_2146D9EF8();

    v13 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v13);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v12 = v9;
    sub_2146D9F28();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D84160], v10);
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  type metadata accessor for MachImage();
  swift_allocObject();
  v23 = sub_21463EB14(&v24, v22);
  result = swift_unknownObjectRelease();
  *a2 = v23;
  return result;
}

uint64_t sub_2144E176C()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2144E1808@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for _XPCDecoder();
  a1[4] = sub_2144EDF18(&qword_280B35348, aD_11);
  *a1 = v3;
}

const char *sub_2144E1878(void *a1)
{
  swift_getObjectType();
  if (sub_214090088())
  {
    return 0;
  }

  if (sub_21408FD98() == 3)
  {
    result = xpc_string_get_string_ptr(a1);
    if (result)
    {
      return sub_2146D96E8();
    }
  }

  else
  {
    swift_beginAccess();
    v3 = sub_2146D9F58();
    swift_allocError();
    v5 = v4;

    sub_2146D9EF8();

    v6 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v6);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v5 = MEMORY[0x277D837D0];
    sub_2146D9F28();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84160], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E1A48()
{
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v1 = sub_2146D9F58();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v3 = MEMORY[0x277D837D0];
    swift_beginAccess();

    sub_2146D9F28();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E1B6C()
{
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v1 = sub_2146D9F58();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v3 = MEMORY[0x277D839B0];
    swift_beginAccess();

    sub_2146D9F28();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E1C90()
{
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v1 = sub_2146D9F58();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v3 = MEMORY[0x277D83B88];
    swift_beginAccess();

    sub_2146D9F28();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E1DB4()
{
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v1 = sub_2146D9F58();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v3 = MEMORY[0x277D84900];
    swift_beginAccess();

    sub_2146D9F28();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E1ED8()
{
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v1 = sub_2146D9F58();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v3 = MEMORY[0x277D84958];
    swift_beginAccess();

    sub_2146D9F28();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E1FFC()
{
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v1 = sub_2146D9F58();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v3 = MEMORY[0x277D849A8];
    swift_beginAccess();

    sub_2146D9F28();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E2120()
{
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v1 = sub_2146D9F58();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v3 = MEMORY[0x277D84A28];
    swift_beginAccess();

    sub_2146D9F28();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E2244()
{
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v1 = sub_2146D9F58();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v3 = MEMORY[0x277D83E88];
    swift_beginAccess();

    sub_2146D9F28();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E2368()
{
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v1 = sub_2146D9F58();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v3 = MEMORY[0x277D84B78];
    swift_beginAccess();

    sub_2146D9F28();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E248C()
{
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v1 = sub_2146D9F58();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v3 = MEMORY[0x277D84C58];
    swift_beginAccess();

    sub_2146D9F28();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E25B0()
{
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v1 = sub_2146D9F58();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v3 = MEMORY[0x277D84CC0];
    swift_beginAccess();

    sub_2146D9F28();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E26D4()
{
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v1 = sub_2146D9F58();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v3 = MEMORY[0x277D84D38];
    swift_beginAccess();

    sub_2146D9F28();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E27F8()
{
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v1 = sub_2146D9F58();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v3 = MEMORY[0x277D83A90];
    swift_beginAccess();

    sub_2146D9F28();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E291C()
{
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v1 = sub_2146D9F58();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v3 = MEMORY[0x277D839F8];
    swift_beginAccess();

    sub_2146D9F28();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E2A40(uint64_t a1)
{
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v3 = sub_2146D9F58();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v5 = a1;
    swift_beginAccess();

    sub_2146D9EF8();

    v6 = sub_2146DAA78();
    MEMORY[0x2160545D0](v6);

    MEMORY[0x2160545D0](0xD00000000000001ELL, 0x800000021479BE70);
    sub_2146D9F28();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E2BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v9 = sub_2146D9D38();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - v10;
  result = sub_2144E2A40(a1);
  if (!v5)
  {
    sub_2144E0AD0(*(v4 + 40), a1, a2, v11);
    v13 = *(a2 - 8);
    result = (*(v13 + 48))(v11, 1, a2);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return (*(v13 + 32))(a4, v11, a2);
    }
  }

  return result;
}

double sub_2144E2D20()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_2144E2D98()
{
  v2 = *v0;
  LOBYTE(result) = sub_2144E1B6C();
  if (v1)
  {
    return result & 1;
  }

  result = sub_2144EBC6C(*(v2 + 40));
  if (result != 2)
  {
    return result & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2144E2DE0()
{
  v2 = *v0;
  result = sub_2144E1A48();
  if (!v1)
  {
    result = sub_2144E1878(*(v2 + 40));
    if (!v4)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2144E2E1C()
{
  v2 = *v0;
  result = sub_2144E291C();
  if (!v1)
  {
    result = sub_2144EDCD8(*(v2 + 40));
    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2144E2E60()
{
  v2 = *v0;
  result = sub_2144E27F8();
  if (!v1)
  {
    result = sub_2144EDAF8(*(v2 + 40));
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2144E307C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void))
{
  v7 = *v4;
  result = a3(a1, a2);
  if (!v5)
  {
    result = a4(*(v7 + 40));
    if ((result & 0x100) != 0)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2144E3104(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void))
{
  v7 = *v4;
  result = a3(a1, a2);
  if (!v5)
  {
    result = a4(*(v7 + 40));
    if ((result & 0x10000) != 0)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2144E318C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void))
{
  v7 = *v4;
  result = a3(a1, a2);
  if (!v5)
  {
    result = a4(*(v7 + 40));
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2144E3214(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void))
{
  v7 = *v4;
  result = a3(a1, a2);
  if (!v5)
  {
    result = a4(*(v7 + 40));
    if (v9)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2144E3298()
{
  v1 = v0;
  v2 = *(v0 + 8);
  v3 = *(v1 + 24);
  if (v3 >= xpc_array_get_count(v2))
  {
    v7 = sub_2146D9F58();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913170, &qword_2146EAB20);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;

    v11 = sub_2146DA428();
    MEMORY[0x2160545D0](v11);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v12 = swift_allocObject();
    *(inited + 32) = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v3;
    *(v12 + 40) = 0;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84170], v7);
    swift_willThrow();
  }

  else
  {
    v4 = xpc_array_get_value(v2, v3);
    swift_getObjectType();
    v5 = sub_21408FD98();
    swift_unknownObjectRelease();
    if (v5 == 11)
    {
      *(v1 + 24) = v3 + 1;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

__int128 *sub_2144E34F4()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v17 = sub_2146D9F58();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v19 = MEMORY[0x277D837D0];
    v20 = *v0;
    swift_beginAccess();
    v21 = *(v20 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v40[1] = 0xE600000000000000;
    v40[14] = v4;

    v23 = sub_2146DA428();
    MEMORY[0x2160545D0](v23);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v24 = swift_allocObject();
    *(inited + 32) = v24;
    *(v24 + 16) = 0x207865646E49;
    *(v24 + 24) = 0xE600000000000000;
    *(v24 + 32) = v4;
    *(v24 + 40) = 0;
    v40[0] = v21;
    v14 = v40;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v37 = 0x207865646E49;
    *(&v37 + 1) = 0xE600000000000000;
    v40[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v38 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v39 = v11;
    v12 = swift_allocObject();
    *&v37 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_213FB77C8(&v37, &v7[5 * v10 + 4]);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_2144E1878(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = v15;
      v26 = v16;
      v36 = v11;
      swift_unknownObjectRelease();
      if (v26)
      {
        v2[3] = v4 + 1;
        sub_2144E4BBC(v2);
        return v14;
      }

      v35 = sub_2146D9F58();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v28 = MEMORY[0x277D837D0];
      v29 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v30 = swift_initStackObject();
      *(v30 + 16) = xmmword_2146EA710;
      *&v37 = 0x207865646E49;
      *(&v37 + 1) = 0xE600000000000000;
      v40[0] = v4;

      v31 = sub_2146DA428();
      MEMORY[0x2160545D0](v31);

      v33 = *(&v37 + 1);
      v32 = v37;
      *(v30 + 56) = &type metadata for XPCCodingKey;
      *(v30 + 64) = v36;
      v34 = swift_allocObject();
      *(v30 + 32) = v34;
      *(v34 + 16) = __PAIR128__(v33, v32);
      *(v34 + 32) = v4;
      *(v34 + 40) = 0;
      *&v37 = v29;
      v14 = &v37;
      sub_21468B984(v30);
      sub_2146D9F28();
      (*(*(v35 - 8) + 104))(v28, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_2144E4BBC(v2);
  }

  return v14;
}

uint64_t sub_2144E3A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v55 = a3;
  v9 = sub_2146D9D38();
  v53 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  v12 = v4[1];
  v13 = v4[3];
  if (v13 >= xpc_array_get_count(v12))
  {
    v26 = sub_2146D9F58();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v28 = a1;
    v29 = *v4;
    swift_beginAccess();
    v30 = *(v29 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v60 = 0x207865646E49;
    v61 = 0xE600000000000000;
    v62 = v13;

    v32 = sub_2146DA428();
    MEMORY[0x2160545D0](v32);

    v33 = v60;
    v34 = v61;
    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v35 = swift_allocObject();
    *(inited + 32) = v35;
    *(v35 + 16) = v33;
    *(v35 + 24) = v34;
    *(v35 + 32) = v13;
    *(v35 + 40) = 0;
    v60 = v30;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84170], v26);
    return swift_willThrow();
  }

  v48 = v9;
  v49 = a4;
  v14 = *v4;
  *&v57 = 0x207865646E49;
  *(&v57 + 1) = 0xE600000000000000;
  v60 = v13;
  v15 = sub_2146DA428();
  MEMORY[0x2160545D0](v15);

  v50 = *(&v57 + 1);
  v51 = v57;
  swift_beginAccess();
  v16 = *(v14 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v14 + 32) = v16;
  v54 = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_2140954FC(0, v16[2] + 1, 1, v16);
    *(v14 + 32) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  v52 = v5;
  if (v19 >= v18 >> 1)
  {
    v16 = sub_2140954FC((v18 > 1), v19 + 1, 1, v16);
  }

  v58 = &type metadata for XPCCodingKey;
  v20 = sub_2144EE044();
  v59 = v20;
  v21 = swift_allocObject();
  *&v57 = v21;
  v22 = v50;
  *(v21 + 16) = v51;
  *(v21 + 24) = v22;
  *(v21 + 32) = v13;
  *(v21 + 40) = 0;
  v16[2] = v19 + 1;
  sub_213FB77C8(&v57, &v16[5 * v19 + 4]);
  *(v14 + 32) = v16;
  swift_endAccess();
  v23 = xpc_array_get_value(v12, v13);
  v24 = v54;
  v25 = v56;
  sub_2144E0AD0(v23, v54, a2, v11);
  if (v25)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v37 = *(a2 - 8);
    if ((*(v37 + 48))(v11, 1, a2) != 1)
    {
      (*(v37 + 32))(v49, v11, a2);
      v47 = v52;
      v52[3] = v13 + 1;
      return sub_2144E4BBC(v47);
    }

    (*(v53 + 8))(v11, v48);
    v38 = sub_2146D9F58();
    swift_allocError();
    v40 = v39;
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v40 = v24;
    v41 = *(v14 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    v42 = swift_initStackObject();
    *(v42 + 16) = xmmword_2146EA710;
    *&v57 = 0x207865646E49;
    *(&v57 + 1) = 0xE600000000000000;
    v60 = v13;

    v43 = sub_2146DA428();
    MEMORY[0x2160545D0](v43);

    v44 = v57;
    *(v42 + 56) = &type metadata for XPCCodingKey;
    *(v42 + 64) = v20;
    v45 = swift_allocObject();
    *(v42 + 32) = v45;
    *(v45 + 16) = v44;
    *(v45 + 32) = v13;
    *(v45 + 40) = 0;
    *&v57 = v41;
    sub_21468B984(v42);
    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;
    sub_2146D9EF8();

    *&v57 = 0x6465746365707845;
    *(&v57 + 1) = 0xE900000000000020;
    v46 = sub_2146DAA78();
    MEMORY[0x2160545D0](v46);

    MEMORY[0x2160545D0](0xD000000000000018, 0x800000021479C6E0);
    sub_2146D9F28();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84170], v38);
    swift_willThrow();
  }

  v47 = v52;
  return sub_2144E4BBC(v47);
}

uint64_t sub_2144E4110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v5 = *v3;
  v6 = v3[3];
  *&v33 = 0x207865646E49;
  *(&v33 + 1) = 0xE600000000000000;
  v37 = v6;
  v7 = sub_2146DA428();
  MEMORY[0x2160545D0](v7);

  swift_beginAccess();
  v8 = *(v5 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_2140954FC(0, v8[2] + 1, 1, v8);
    *(v5 + 32) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_2140954FC((v10 > 1), v11 + 1, 1, v8);
  }

  v35 = &type metadata for XPCCodingKey;
  v36 = sub_2144EE044();
  v12 = swift_allocObject();
  *&v33 = v12;
  *(v12 + 16) = 0x207865646E49;
  *(v12 + 24) = 0xE600000000000000;
  *(v12 + 32) = v6;
  *(v12 + 40) = 0;
  v8[2] = v11 + 1;
  sub_213FB77C8(&v33, &v8[5 * v11 + 4]);
  *(v5 + 32) = v8;
  swift_endAccess();
  v13 = v4[1];
  if (v6 < xpc_array_get_count(v13))
  {
    v14 = xpc_array_get_value(v13, v6);
    swift_getObjectType();
    if (sub_214090088())
    {
      v15 = sub_2146D9F58();
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v17 = sub_2146DA258();

      sub_2146D9F28();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84170], v15);
    }

    else
    {
      if (sub_21408FD98() == 7)
      {
        v4[3] = v6 + 1;

        swift_unknownObjectRetain();
        v21 = v38;
        *&v33 = sub_2144E05B8(v5, v14);
        *(&v33 + 1) = v22;
        v34 = v23;
        v25 = type metadata accessor for _XPCKeyedDecodingContainer(0, v21, a3, v24);
        swift_getWitnessTable(aAc, v25);
        sub_2146DA268();
LABEL_13:
        swift_unknownObjectRelease();
        return sub_2144E4BBC(v4);
      }

      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
      v27 = sub_2146D9F58();
      swift_allocError();
      v29 = v28;
      *&v33 = 0;
      *(&v33 + 1) = 0xE000000000000000;
      sub_2146D9EF8();

      *&v33 = 0xD000000000000035;
      *(&v33 + 1) = 0x800000021479C460;
      v30 = sub_2144EB524(v14);
      MEMORY[0x2160545D0](v30);

      MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v29 = v26;

      sub_2146D9F28();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
    }

    swift_willThrow();
    goto LABEL_13;
  }

  v18 = sub_2146D9F58();
  swift_allocError();
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
  *v20 = sub_2146DA258();

  sub_2146D9F28();
  (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84170], v18);
  swift_willThrow();
  return sub_2144E4BBC(v4);
}

uint64_t sub_2144E4640@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = *v1;
  v4 = v1[3];
  *&v28 = 0x207865646E49;
  *(&v28 + 1) = 0xE600000000000000;
  v31 = v4;
  v5 = sub_2146DA428();
  MEMORY[0x2160545D0](v5);

  swift_beginAccess();
  v6 = *(v3 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 32) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_2140954FC(0, v6[2] + 1, 1, v6);
    *(v3 + 32) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_2140954FC((v8 > 1), v9 + 1, 1, v6);
  }

  v29 = &type metadata for XPCCodingKey;
  v30 = sub_2144EE044();
  v10 = swift_allocObject();
  *&v28 = v10;
  *(v10 + 16) = 0x207865646E49;
  *(v10 + 24) = 0xE600000000000000;
  *(v10 + 32) = v4;
  *(v10 + 40) = 0;
  v6[2] = v9 + 1;
  sub_213FB77C8(&v28, &v6[5 * v9 + 4]);
  *(v3 + 32) = v6;
  swift_endAccess();
  v11 = v2[1];
  if (v4 >= xpc_array_get_count(v11))
  {
    v16 = sub_2146D9F58();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A58, &qword_214756CC8);

    sub_2146D9F28();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
    return sub_2144E4BBC(v2);
  }

  v12 = xpc_array_get_value(v11, v4);
  swift_getObjectType();
  if (sub_214090088())
  {
    v13 = sub_2146D9F58();
    swift_allocError();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A58, &qword_214756CC8);

    sub_2146D9F28();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84170], v13);
LABEL_13:
    swift_willThrow();
    swift_unknownObjectRelease();
    return sub_2144E4BBC(v2);
  }

  if (sub_21408FD98() != 6)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041C8, &qword_214756CC0);
    v23 = sub_2146D9F58();
    swift_allocError();
    v25 = v24;
    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;
    sub_2146D9EF8();

    *&v28 = 0xD000000000000028;
    *(&v28 + 1) = 0x800000021479C500;
    v26 = sub_2144EB524(v12);
    MEMORY[0x2160545D0](v26);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v25 = v22;

    sub_2146D9F28();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
    goto LABEL_13;
  }

  v2[3] = v4 + 1;
  swift_unknownObjectRetain();
  if (sub_21408FD98() == 6)
  {
    v19 = *(v3 + 32);
    v20 = v32;
    v32[3] = &type metadata for _XPCUnkeyedDecodingContainer;
    v20[4] = sub_2144EDEAC();
    v21 = swift_allocObject();
    *v20 = v21;

    swift_unknownObjectRelease();
    v21[2] = v3;
    v21[3] = v12;
    v21[4] = v19;
    v21[5] = 0;
    return sub_2144E4BBC(v2);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144E4BBC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 32);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_214508E84(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    __swift_destroy_boxed_opaque_existential_1(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *(v1 + 32) = v2;
    swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2144E4EB0()
{
  result = sub_2146DA4B8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2144E4F00()
{
  result = sub_2146DA4C8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2144E4FA8()
{
  result = sub_2146DA4F8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2144E4FF8()
{
  result = sub_2146DA4D8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2144E5138()
{
  result = sub_2146DA508();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2144E5188(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_2144E525C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = sub_2146D9948();
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = &v14;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2144F2364;
  *(v9 + 24) = v8;
  aBlock[4] = sub_2144F2370;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2144E54C8;
  aBlock[3] = &block_descriptor_1;
  v10 = _Block_copy(aBlock);

  xpc_dictionary_apply(a2, v10);
  _Block_release(v10);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v12 = v14;

    return v12;
  }

  return result;
}

uint64_t sub_2144E53CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2146D9D38();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_2146D96E8();
  sub_2146DAA48();
  result = (*(*(a4 - 8) + 48))(v7, 1, a4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_2146D9978();
    sub_2146D9968();
    return 1;
  }

  return result;
}

uint64_t sub_2144E54C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

BOOL sub_2144E5520(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2146DAA38();
  v7 = sub_2146D9628();

  v8 = xpc_dictionary_get_value(a3, (v7 + 32));

  if (v8)
  {
    swift_unknownObjectRelease();
  }

  return v8 != 0;
}

BOOL sub_2144E55A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v9 = sub_2146DAA38();
  v11 = sub_2140900AC(v9, v10);

  if (v11)
  {
    swift_getObjectType();
    v12 = sub_214090088();
    swift_unknownObjectRelease();
    return v12;
  }

  else
  {
    v14 = sub_2146D9F58();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090);
    v16[3] = a5;
    v16[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
    swift_beginAccess();

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    sub_2146DA688();
    MEMORY[0x2160545D0](46, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84158], v14);
    swift_willThrow();
    return 0;
  }
}

uint64_t sub_2144E57B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a4;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v38 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  swift_getObjectType();
  v44 = a1;
  v16 = sub_2146DAA38();
  v41 = a3;
  v18 = sub_2140900AC(v16, v17);

  v40 = v18;
  if (v18)
  {
    v37 = a6;
    v19 = *(v11 + 16);
    v20 = v44;
    v44 = a5;
    v19(v15, v20, a5);
    swift_beginAccess();
    v21 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    *(a2 + 32) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, *(v21 + 16) + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v25 = *(v21 + 16);
    v24 = *(v21 + 24);
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v26 = v38;
    v27 = v44;
    v19(v38, v15, v44);
    sub_21467F264(v25, v26, (v23 + 32), v27, v37);
    (*(v11 + 8))(v15, v27);
    *(v23 + 32) = v21;
    swift_endAccess();
    v28 = v39;
    LOBYTE(v21) = v23;
    v29 = sub_2144EBC6C(v40);
    if (!v28)
    {
      LOBYTE(v21) = v29;
      if (v29 == 2)
      {
        v21 = sub_2146D9F58();
        swift_allocError();
        v31 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
        *v31 = MEMORY[0x277D839B0];

        sub_2146D9F28();
        (*(*(v21 - 8) + 104))(v31, *MEMORY[0x277D84170], v21);
        swift_willThrow();
      }
    }

    sub_2144EA580(v23);
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = sub_2146D9F58();
    swift_allocError();
    v33 = v32;
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v33[3] = a5;
    v33[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    (*(v11 + 16))(boxed_opaque_existential_0, v44, a5);
    swift_beginAccess();
    v43[0] = 0;
    v43[1] = 0xE000000000000000;

    v21 = v43;
    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v42 - 8) + 104))(v33, *MEMORY[0x277D84158]);
    swift_willThrow();
  }

  return v21 & 1;
}

int64_t sub_2144E5C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a4;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  swift_getObjectType();
  v48 = a1;
  v16 = sub_2146DAA38();
  v44 = a3;
  v18 = sub_2140900AC(v16, v17);

  v43 = v18;
  if (v18)
  {
    v40 = a6;
    v19 = *(v11 + 16);
    v20 = v48;
    v48 = a5;
    v19(v15, v20, a5);
    swift_beginAccess();
    v21 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    *(a2 + 32) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, v21[2] + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v26 = v41;
    v27 = v48;
    v19(v41, v15, v48);
    sub_21467F264(v25, v26, (v23 + 32), v27, v40);
    (*(v11 + 8))(v15, v27);
    *(v23 + 32) = v21;
    swift_endAccess();
    v28 = v42;
    v29 = sub_2144EB93C(v43);
    if (v28)
    {
      goto LABEL_9;
    }

    if (v30)
    {
      v31 = sub_2146D9F58();
      swift_allocError();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v33 = MEMORY[0x277D83B88];

      sub_2146D9F28();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84170], v31);
      swift_willThrow();
LABEL_9:
      sub_2144EA580(v23);
      return swift_unknownObjectRelease();
    }

    v38 = v29;
    sub_2144EA580(v23);
    swift_unknownObjectRelease();
    return v38;
  }

  else
  {
    v45 = sub_2146D9F58();
    swift_allocError();
    v36 = v35;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v36[3] = a5;
    v36[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
    (*(v11 + 16))(boxed_opaque_existential_0, v48, a5);
    swift_beginAccess();
    v46 = 0;
    v47 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v45 - 8) + 104))(v36, *MEMORY[0x277D84158]);
    return swift_willThrow();
  }
}

uint64_t sub_2144E6118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a4;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v40 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  swift_getObjectType();
  v47 = a1;
  v16 = sub_2146DAA38();
  v43 = a3;
  v18 = sub_2140900AC(v16, v17);

  v42 = v18;
  if (v18)
  {
    v39 = a6;
    v19 = *(v11 + 16);
    v20 = v47;
    v47 = a5;
    v19(v15, v20, a5);
    swift_beginAccess();
    v21 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    *(a2 + 32) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, v21[2] + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v26 = v40;
    v27 = v47;
    v19(v40, v15, v47);
    sub_21467F264(v25, v26, (v23 + 32), v27, v39);
    (*(v11 + 8))(v15, v27);
    *(v23 + 32) = v21;
    swift_endAccess();
    v28 = v41;
    v29 = sub_2144EBE2C(v42);
    if (!v28)
    {
      if ((v29 & 0x100) == 0)
      {
        v30 = v29;
        sub_2144EA580(v23);
        swift_unknownObjectRelease();
        return v30;
      }

      v35 = sub_2146D9F58();
      swift_allocError();
      v37 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v37 = MEMORY[0x277D84900];

      sub_2146D9F28();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84170], v35);
      swift_willThrow();
    }

    sub_2144EA580(v23);
    return swift_unknownObjectRelease();
  }

  else
  {
    v44 = sub_2146D9F58();
    swift_allocError();
    v33 = v32;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v33[3] = a5;
    v33[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    (*(v11 + 16))(boxed_opaque_existential_0, v47, a5);
    swift_beginAccess();
    v45 = 0;
    v46 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v44 - 8) + 104))(v33, *MEMORY[0x277D84158]);
    return swift_willThrow();
  }
}

uint64_t sub_2144E65C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a4;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v40 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  swift_getObjectType();
  v47 = a1;
  v16 = sub_2146DAA38();
  v43 = a3;
  v18 = sub_2140900AC(v16, v17);

  v42 = v18;
  if (v18)
  {
    v39 = a6;
    v19 = *(v11 + 16);
    v20 = v47;
    v47 = a5;
    v19(v15, v20, a5);
    swift_beginAccess();
    v21 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    *(a2 + 32) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, v21[2] + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v26 = v40;
    v27 = v47;
    v19(v40, v15, v47);
    sub_21467F264(v25, v26, (v23 + 32), v27, v39);
    (*(v11 + 8))(v15, v27);
    *(v23 + 32) = v21;
    swift_endAccess();
    v28 = v41;
    v29 = sub_2144EC158(v42);
    if (!v28)
    {
      if ((v29 & 0x10000) == 0)
      {
        v30 = v29;
        sub_2144EA580(v23);
        swift_unknownObjectRelease();
        return v30;
      }

      v35 = sub_2146D9F58();
      swift_allocError();
      v37 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v37 = MEMORY[0x277D84958];

      sub_2146D9F28();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84170], v35);
      swift_willThrow();
    }

    sub_2144EA580(v23);
    return swift_unknownObjectRelease();
  }

  else
  {
    v44 = sub_2146D9F58();
    swift_allocError();
    v33 = v32;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v33[3] = a5;
    v33[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    (*(v11 + 16))(boxed_opaque_existential_0, v47, a5);
    swift_beginAccess();
    v45 = 0;
    v46 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v44 - 8) + 104))(v33, *MEMORY[0x277D84158]);
    return swift_willThrow();
  }
}

uint64_t *sub_2144E6A70(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a4;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v39 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - v14;
  swift_getObjectType();
  v45 = a1;
  v16 = sub_2146DAA38();
  v42 = a3;
  v18 = sub_2140900AC(v16, v17);

  v41 = v18;
  if (v18)
  {
    v38 = a6;
    v19 = *(v11 + 16);
    v20 = v45;
    v45 = a5;
    v19(v15, v20, a5);
    swift_beginAccess();
    v21 = a2[4];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    a2[4] = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, v21[2] + 1, 1, v21);
      a2[4] = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      a2[4] = v21;
    }

    v26 = v39;
    v27 = v45;
    v19(v39, v15, v45);
    sub_21467F264(v25, v26, v23 + 4, v27, v38);
    (*(v11 + 8))(v15, v27);
    v23[4] = v21;
    swift_endAccess();
    v28 = v40;
    v29 = v23;
    v30 = sub_2144EC488(v41);
    if (!v28)
    {
      v29 = v30;
      if ((v30 & 0x100000000) != 0)
      {
        v29 = sub_2146D9F58();
        swift_allocError();
        v35 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
        *v35 = MEMORY[0x277D849A8];

        sub_2146D9F28();
        (*(*(v29 - 1) + 104))(v35, *MEMORY[0x277D84170], v29);
        swift_willThrow();
      }
    }

    sub_2144EA580(v23);
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = sub_2146D9F58();
    swift_allocError();
    v32 = v31;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v32[3] = a5;
    v32[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
    (*(v11 + 16))(boxed_opaque_existential_0, v45, a5);
    swift_beginAccess();
    v44[0] = 0;
    v44[1] = 0xE000000000000000;

    v29 = v44;
    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v43 - 8) + 104))(v32, *MEMORY[0x277D84158]);
    swift_willThrow();
  }

  return v29;
}

int64_t sub_2144E6F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a4;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  swift_getObjectType();
  v48 = a1;
  v16 = sub_2146DAA38();
  v44 = a3;
  v18 = sub_2140900AC(v16, v17);

  v43 = v18;
  if (v18)
  {
    v40 = a6;
    v19 = *(v11 + 16);
    v20 = v48;
    v48 = a5;
    v19(v15, v20, a5);
    swift_beginAccess();
    v21 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    *(a2 + 32) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, v21[2] + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v26 = v41;
    v27 = v48;
    v19(v41, v15, v48);
    sub_21467F264(v25, v26, (v23 + 32), v27, v40);
    (*(v11 + 8))(v15, v27);
    *(v23 + 32) = v21;
    swift_endAccess();
    v28 = v42;
    v29 = sub_2144EC7C4(v43);
    if (v28)
    {
      goto LABEL_9;
    }

    if (v30)
    {
      v31 = sub_2146D9F58();
      swift_allocError();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v33 = MEMORY[0x277D84A28];

      sub_2146D9F28();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84170], v31);
      swift_willThrow();
LABEL_9:
      sub_2144EA580(v23);
      return swift_unknownObjectRelease();
    }

    v38 = v29;
    sub_2144EA580(v23);
    swift_unknownObjectRelease();
    return v38;
  }

  else
  {
    v45 = sub_2146D9F58();
    swift_allocError();
    v36 = v35;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v36[3] = a5;
    v36[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
    (*(v11 + 16))(boxed_opaque_existential_0, v48, a5);
    swift_beginAccess();
    v46 = 0;
    v47 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v45 - 8) + 104))(v36, *MEMORY[0x277D84158]);
    return swift_willThrow();
  }
}

uint64_t sub_2144E73C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a4;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  swift_getObjectType();
  v48 = a1;
  v16 = sub_2146DAA38();
  v44 = a3;
  v18 = sub_2140900AC(v16, v17);

  v43 = v18;
  if (v18)
  {
    v40 = a6;
    v19 = *(v11 + 16);
    v20 = v48;
    v48 = a5;
    v19(v15, v20, a5);
    swift_beginAccess();
    v21 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    *(a2 + 32) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, v21[2] + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v26 = v41;
    v27 = v48;
    v19(v41, v15, v48);
    sub_21467F264(v25, v26, (v23 + 32), v27, v40);
    (*(v11 + 8))(v15, v27);
    *(v23 + 32) = v21;
    swift_endAccess();
    v28 = v42;
    v29 = sub_2144ECAF8(v43);
    if (v28)
    {
      goto LABEL_9;
    }

    if (v30)
    {
      v31 = sub_2146D9F58();
      swift_allocError();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v33 = MEMORY[0x277D83E88];

      sub_2146D9F28();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84170], v31);
      swift_willThrow();
LABEL_9:
      sub_2144EA580(v23);
      return swift_unknownObjectRelease();
    }

    v38 = v29;
    sub_2144EA580(v23);
    swift_unknownObjectRelease();
    return v38;
  }

  else
  {
    v45 = sub_2146D9F58();
    swift_allocError();
    v36 = v35;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v36[3] = a5;
    v36[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
    (*(v11 + 16))(boxed_opaque_existential_0, v48, a5);
    swift_beginAccess();
    v46 = 0;
    v47 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v45 - 8) + 104))(v36, *MEMORY[0x277D84158]);
    return swift_willThrow();
  }
}

uint64_t sub_2144E7874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a4;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v40 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  swift_getObjectType();
  v47 = a1;
  v16 = sub_2146DAA38();
  v43 = a3;
  v18 = sub_2140900AC(v16, v17);

  v42 = v18;
  if (v18)
  {
    v39 = a6;
    v19 = *(v11 + 16);
    v20 = v47;
    v47 = a5;
    v19(v15, v20, a5);
    swift_beginAccess();
    v21 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    *(a2 + 32) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, v21[2] + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v26 = v40;
    v27 = v47;
    v19(v40, v15, v47);
    sub_21467F264(v25, v26, (v23 + 32), v27, v39);
    (*(v11 + 8))(v15, v27);
    *(v23 + 32) = v21;
    swift_endAccess();
    v28 = v41;
    v29 = sub_2144ECE28(v42);
    if (!v28)
    {
      if ((v29 & 0x100) == 0)
      {
        v30 = v29;
        sub_2144EA580(v23);
        swift_unknownObjectRelease();
        return v30;
      }

      v35 = sub_2146D9F58();
      swift_allocError();
      v37 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v37 = MEMORY[0x277D84B78];

      sub_2146D9F28();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84170], v35);
      swift_willThrow();
    }

    sub_2144EA580(v23);
    return swift_unknownObjectRelease();
  }

  else
  {
    v44 = sub_2146D9F58();
    swift_allocError();
    v33 = v32;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v33[3] = a5;
    v33[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    (*(v11 + 16))(boxed_opaque_existential_0, v47, a5);
    swift_beginAccess();
    v45 = 0;
    v46 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v44 - 8) + 104))(v33, *MEMORY[0x277D84158]);
    return swift_willThrow();
  }
}

uint64_t sub_2144E7D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a4;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v40 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  swift_getObjectType();
  v47 = a1;
  v16 = sub_2146DAA38();
  v43 = a3;
  v18 = sub_2140900AC(v16, v17);

  v42 = v18;
  if (v18)
  {
    v39 = a6;
    v19 = *(v11 + 16);
    v20 = v47;
    v47 = a5;
    v19(v15, v20, a5);
    swift_beginAccess();
    v21 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    *(a2 + 32) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, v21[2] + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v26 = v40;
    v27 = v47;
    v19(v40, v15, v47);
    sub_21467F264(v25, v26, (v23 + 32), v27, v39);
    (*(v11 + 8))(v15, v27);
    *(v23 + 32) = v21;
    swift_endAccess();
    v28 = v41;
    v29 = sub_2144ED158(v42);
    if (!v28)
    {
      if ((v29 & 0x10000) == 0)
      {
        v30 = v29;
        sub_2144EA580(v23);
        swift_unknownObjectRelease();
        return v30;
      }

      v35 = sub_2146D9F58();
      swift_allocError();
      v37 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v37 = MEMORY[0x277D84C58];

      sub_2146D9F28();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84170], v35);
      swift_willThrow();
    }

    sub_2144EA580(v23);
    return swift_unknownObjectRelease();
  }

  else
  {
    v44 = sub_2146D9F58();
    swift_allocError();
    v33 = v32;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v33[3] = a5;
    v33[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    (*(v11 + 16))(boxed_opaque_existential_0, v47, a5);
    swift_beginAccess();
    v45 = 0;
    v46 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v44 - 8) + 104))(v33, *MEMORY[0x277D84158]);
    return swift_willThrow();
  }
}

uint64_t *sub_2144E81CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a4;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v39 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - v14;
  swift_getObjectType();
  v45 = a1;
  v16 = sub_2146DAA38();
  v42 = a3;
  v18 = sub_2140900AC(v16, v17);

  v41 = v18;
  if (v18)
  {
    v38 = a6;
    v19 = *(v11 + 16);
    v20 = v45;
    v45 = a5;
    v19(v15, v20, a5);
    swift_beginAccess();
    v21 = a2[4];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    a2[4] = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, v21[2] + 1, 1, v21);
      a2[4] = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      a2[4] = v21;
    }

    v26 = v39;
    v27 = v45;
    v19(v39, v15, v45);
    sub_21467F264(v25, v26, v23 + 4, v27, v38);
    (*(v11 + 8))(v15, v27);
    v23[4] = v21;
    swift_endAccess();
    v28 = v40;
    v29 = v23;
    v30 = sub_2144ED488(v41);
    if (!v28)
    {
      v29 = v30;
      if ((v30 & 0x100000000) != 0)
      {
        v29 = sub_2146D9F58();
        swift_allocError();
        v35 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
        *v35 = MEMORY[0x277D84CC0];

        sub_2146D9F28();
        (*(*(v29 - 1) + 104))(v35, *MEMORY[0x277D84170], v29);
        swift_willThrow();
      }
    }

    sub_2144EA580(v23);
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = sub_2146D9F58();
    swift_allocError();
    v32 = v31;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v32[3] = a5;
    v32[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
    (*(v11 + 16))(boxed_opaque_existential_0, v45, a5);
    swift_beginAccess();
    v44[0] = 0;
    v44[1] = 0xE000000000000000;

    v29 = v44;
    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v43 - 8) + 104))(v32, *MEMORY[0x277D84158]);
    swift_willThrow();
  }

  return v29;
}

uint64_t sub_2144E8678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a4;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  swift_getObjectType();
  v48 = a1;
  v16 = sub_2146DAA38();
  v44 = a3;
  v18 = sub_2140900AC(v16, v17);

  v43 = v18;
  if (v18)
  {
    v40 = a6;
    v19 = *(v11 + 16);
    v20 = v48;
    v48 = a5;
    v19(v15, v20, a5);
    swift_beginAccess();
    v21 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    *(a2 + 32) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, v21[2] + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v26 = v41;
    v27 = v48;
    v19(v41, v15, v48);
    sub_21467F264(v25, v26, (v23 + 32), v27, v40);
    (*(v11 + 8))(v15, v27);
    *(v23 + 32) = v21;
    swift_endAccess();
    v28 = v42;
    v29 = sub_2144ED7C4(v43);
    if (v28)
    {
      goto LABEL_9;
    }

    if (v30)
    {
      v31 = sub_2146D9F58();
      swift_allocError();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v33 = MEMORY[0x277D84D38];

      sub_2146D9F28();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84170], v31);
      swift_willThrow();
LABEL_9:
      sub_2144EA580(v23);
      return swift_unknownObjectRelease();
    }

    v38 = v29;
    sub_2144EA580(v23);
    swift_unknownObjectRelease();
    return v38;
  }

  else
  {
    v45 = sub_2146D9F58();
    swift_allocError();
    v36 = v35;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v36[3] = a5;
    v36[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
    (*(v11 + 16))(boxed_opaque_existential_0, v48, a5);
    swift_beginAccess();
    v46 = 0;
    v47 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v45 - 8) + 104))(v36, *MEMORY[0x277D84158]);
    return swift_willThrow();
  }
}

float sub_2144E8B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a4;
  v12 = *(a5 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v39 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  swift_getObjectType();
  v44 = a1;
  v17 = sub_2146DAA38();
  v42 = a3;
  v19 = sub_2140900AC(v17, v18);

  v41 = v19;
  if (!v19)
  {
    v43 = sub_2146D9F58();
    swift_allocError();
    v32 = v31;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v32[3] = a5;
    v32[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
    (*(v12 + 16))(boxed_opaque_existential_0, v44, a5);
    swift_beginAccess();
    v45 = 0;
    v46 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v43 - 8) + 104))(v32, *MEMORY[0x277D84158]);
    swift_willThrow();
    return v6;
  }

  v38 = a6;
  v20 = *(v12 + 16);
  v21 = v44;
  v44 = a5;
  v20(v16, v21, a5);
  swift_beginAccess();
  v22 = *(a2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = a2;
  *(a2 + 32) = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_2140954FC(0, v22[2] + 1, 1, v22);
    *(a2 + 32) = v22;
  }

  v26 = v22[2];
  v25 = v22[3];
  if (v26 >= v25 >> 1)
  {
    v22 = sub_2140954FC((v25 > 1), v26 + 1, 1, v22);
    *(a2 + 32) = v22;
  }

  v27 = v39;
  v28 = v44;
  v20(v39, v16, v44);
  sub_21467F264(v26, v27, (v24 + 32), v28, v38);
  (*(v12 + 8))(v16, v28);
  *(v24 + 32) = v22;
  swift_endAccess();
  v29 = v40;
  v30 = sub_2144EDAF8(v41);
  if (v29)
  {
LABEL_11:
    sub_2144EA580(v24);
    swift_unknownObjectRelease();
    return v6;
  }

  if ((v30 & 0x100000000) != 0)
  {
    v34 = sub_2146D9F58();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v36 = MEMORY[0x277D83A90];

    sub_2146D9F28();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84170], v34);
    swift_willThrow();
    goto LABEL_11;
  }

  v6 = *&v30;
  sub_2144EA580(v24);
  swift_unknownObjectRelease();
  return v6;
}

double sub_2144E8FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a4;
  v12 = *(a5 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v40 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - v15;
  swift_getObjectType();
  v45 = a1;
  v17 = sub_2146DAA38();
  v43 = a3;
  v19 = sub_2140900AC(v17, v18);

  v42 = v19;
  if (v19)
  {
    v39 = a6;
    v20 = *(v12 + 16);
    v21 = v45;
    v45 = a5;
    v20(v16, v21, a5);
    swift_beginAccess();
    v22 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = a2;
    *(a2 + 32) = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_2140954FC(0, v22[2] + 1, 1, v22);
      *(a2 + 32) = v22;
    }

    v26 = v22[2];
    v25 = v22[3];
    if (v26 >= v25 >> 1)
    {
      v22 = sub_2140954FC((v25 > 1), v26 + 1, 1, v22);
      *(a2 + 32) = v22;
    }

    v27 = v40;
    v28 = v45;
    v20(v40, v16, v45);
    sub_21467F264(v26, v27, (v24 + 32), v28, v39);
    (*(v12 + 8))(v16, v28);
    *(v24 + 32) = v22;
    swift_endAccess();
    v29 = v41;
    v30 = sub_2144EDCD8(v42);
    if (!v29)
    {
      if ((v31 & 1) == 0)
      {
        v6 = *&v30;
        sub_2144EA580(v24);
        swift_unknownObjectRelease();
        return v6;
      }

      v32 = sub_2146D9F58();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v34 = MEMORY[0x277D839F8];

      sub_2146D9F28();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84170], v32);
      swift_willThrow();
    }

    sub_2144EA580(v24);
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = sub_2146D9F58();
    swift_allocError();
    v36 = v35;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v36[3] = a5;
    v36[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
    (*(v12 + 16))(boxed_opaque_existential_0, v45, a5);
    swift_beginAccess();
    v46 = 0;
    v47 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v44 - 8) + 104))(v36, *MEMORY[0x277D84158]);
    swift_willThrow();
  }

  return v6;
}

const char *sub_2144E948C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a4;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  swift_getObjectType();
  v48 = a1;
  v16 = sub_2146DAA38();
  v44 = a3;
  v18 = sub_2140900AC(v16, v17);

  v43 = v18;
  if (v18)
  {
    v40 = a6;
    v19 = *(v11 + 16);
    v20 = v48;
    v48 = a5;
    v19(v15, v20, a5);
    swift_beginAccess();
    v21 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    *(a2 + 32) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, v21[2] + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v26 = v41;
    v27 = v48;
    v19(v41, v15, v48);
    sub_21467F264(v25, v26, (v23 + 32), v27, v40);
    (*(v11 + 8))(v15, v27);
    *(v23 + 32) = v21;
    swift_endAccess();
    v28 = v42;
    v29 = sub_2144E1878(v43);
    if (v28)
    {
      goto LABEL_7;
    }

    if (!v30)
    {
      v36 = sub_2146D9F58();
      swift_allocError();
      v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v38 = MEMORY[0x277D837D0];

      sub_2146D9F28();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84170], v36);
      swift_willThrow();
LABEL_7:
      sub_2144EA580(v23);
      return swift_unknownObjectRelease();
    }

    v35 = v29;
    sub_2144EA580(v23);
    swift_unknownObjectRelease();
    return v35;
  }

  else
  {
    v45 = sub_2146D9F58();
    swift_allocError();
    v33 = v32;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v33[3] = a5;
    v33[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    (*(v11 + 16))(boxed_opaque_existential_0, v48, a5);
    swift_beginAccess();
    v46 = 0;
    v47 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v45 - 8) + 104))(v33, *MEMORY[0x277D84158]);
    return swift_willThrow();
  }
}

uint64_t sub_2144E9944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v60 = a5;
  v61 = a7;
  v51 = a9;
  v52 = a1;
  v15 = sub_2146D9D38();
  v49 = *(v15 - 8);
  v50 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v58 = &v49 - v17;
  v18 = *(a6 - 8);
  v19 = MEMORY[0x28223BE20](v16);
  v56 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v49 - v21;
  swift_getObjectType();
  v66 = a2;
  v23 = a8;
  v24 = sub_2146DAA38();
  v59 = a4;
  v26 = sub_2140900AC(v24, v25);

  if (!v26)
  {
    v44 = sub_2146D9F58();
    v58 = swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090);
    v46[3] = a6;
    v46[4] = v23;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v46);
    (*(v18 + 16))(boxed_opaque_existential_0, v66, a6);
    swift_beginAccess();
    v62 = 0;
    v63 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84158], v44);
    return swift_willThrow();
  }

  v53 = v26;
  v54 = a8;
  v55 = a10;
  v27 = *(v18 + 16);
  v28 = v66;
  v66 = a6;
  v27(v22, v28, a6);
  swift_beginAccess();
  v29 = *(a3 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = a3;
  *(a3 + 32) = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = sub_2140954FC(0, v29[2] + 1, 1, v29);
    *(a3 + 32) = v29;
  }

  v33 = v29[2];
  v32 = v29[3];
  if (v33 >= v32 >> 1)
  {
    v29 = sub_2140954FC((v32 > 1), v33 + 1, 1, v29);
    *(a3 + 32) = v29;
  }

  v34 = v56;
  v35 = v66;
  v27(v56, v22, v66);
  sub_21467F264(v33, v34, (v31 + 32), v35, v54);
  (*(v18 + 8))(v22, v35);
  *(v31 + 32) = v29;
  swift_endAccess();
  v36 = v57;
  v37 = v58;
  v38 = v61;
  sub_2144E0AD0(v53, v61, v61, v58);
  if (v36)
  {
    goto LABEL_11;
  }

  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v37, 1, v38) != 1)
  {
    (*(v39 + 32))(v51, v37, v38);
LABEL_11:
    sub_2144EA580(v31);
    return swift_unknownObjectRelease();
  }

  (*(v49 + 8))(v37, v50);
  v40 = sub_2146D9F58();
  v58 = swift_allocError();
  v42 = v41;
  v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
  *v42 = v52;
  v64 = 0;
  v65 = 0xE000000000000000;

  sub_2146D9EF8();

  v64 = 0x6465746365707845;
  v65 = 0xE900000000000020;
  v43 = sub_2146DAA78();
  MEMORY[0x2160545D0](v43);

  MEMORY[0x2160545D0](0xD00000000000001ELL, 0x800000021479CA20);
  sub_2146D9F28();
  (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84170], v40);
  swift_willThrow();
  sub_2144EA580(v31);
  return swift_unknownObjectRelease();
}

uint64_t sub_2144E9F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v50 = a6;
  v53 = a7;
  v49 = a4;
  v57 = a3;
  v46 = a8;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  v17 = *(v11 + 16);
  v52 = v18;
  v17(&v45 - v15);
  swift_beginAccess();
  v19 = *(a2 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 32) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_2140954FC(0, v19[2] + 1, 1, v19);
    *(a2 + 32) = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  v48 = a9;
  if (v22 >= v21 >> 1)
  {
    v19 = sub_2140954FC((v21 > 1), v22 + 1, 1, v19);
    *(a2 + 32) = v19;
  }

  (v17)(v14, v16, a5);
  v47 = v17;
  v23 = v53;
  sub_21467F264(v22, v14, (a2 + 32), a5, v53);
  (*(v11 + 8))(v16, a5);
  *(a2 + 32) = v19;
  swift_endAccess();
  swift_getObjectType();
  v24 = v52;
  v25 = sub_2146DAA38();
  v27 = sub_2140900AC(v25, v26);

  if (v27)
  {
    swift_getObjectType();
    if (sub_21408FD98() == 7)
    {
      swift_unknownObjectRetain();
      v28 = v50;
      v29 = v48;
      v54 = sub_2144E05B8(a2, v27);
      v55 = v30;
      v56 = v31;
      v33 = type metadata accessor for _XPCKeyedDecodingContainer(0, v28, v29, v32);
      swift_getWitnessTable(aAc, v33);
      sub_2146DA268();
      swift_unknownObjectRelease();
      return sub_2144EA580(a2);
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    v41 = sub_2146D9F58();
    swift_allocError();
    v43 = v42;
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_2146D9EF8();

    v54 = 0xD000000000000035;
    v55 = 0x800000021479C460;
    v44 = sub_2144EB524(v27);
    MEMORY[0x2160545D0](v44);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v43 = v40;

    sub_2146D9F28();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {

    v46 = sub_2146D9F58();
    v51 = swift_allocError();
    v35 = v24;
    v37 = v36;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v37[3] = a5;
    v37[4] = v23;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v37);
    v47(boxed_opaque_existential_0, v35, a5);
    v54 = 0;
    v55 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0x6720746F6E6E6143, 0xEB00000000207465);
    sub_2146DA258();
    v39 = sub_2146DAA78();
    MEMORY[0x2160545D0](v39);

    MEMORY[0x2160545D0](0xD00000000000001BLL, 0x800000021479C9E0);
    sub_2146DA688();
    sub_2146D9F28();
    (*(*(v46 - 8) + 104))(v37, *MEMORY[0x277D84158]);
    swift_willThrow();
  }

  return sub_2144EA580(a2);
}

uint64_t sub_2144EA580(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 32);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_214508E84(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    __swift_destroy_boxed_opaque_existential_1(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *(a1 + 32) = v2;
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2144EA624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v45 = a7;
  v47 = a6;
  v49 = a4;
  v50 = a3;
  v10 = *(a5 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  v16 = *(v10 + 16);
  v16(&v45 - v14, a1, v17);
  swift_beginAccess();
  v18 = *(a2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = a2;
  *(a2 + 32) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_2140954FC(0, v18[2] + 1, 1, v18);
    *(v53 + 32) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  v48 = a1;
  if (v21 >= v20 >> 1)
  {
    v44 = sub_2140954FC((v20 > 1), v21 + 1, 1, v18);
    v22 = v16;
    v18 = v44;
    *(v53 + 32) = v44;
  }

  else
  {
    v22 = v16;
  }

  v46 = v22;
  v22(v13, v15, a5);
  v23 = v53;
  v24 = v47;
  sub_21467F264(v21, v13, (v53 + 32), a5, v47);
  (*(v10 + 8))(v15, a5);
  *(v23 + 32) = v18;
  v25 = v24;
  swift_endAccess();
  swift_getObjectType();
  v26 = v48;
  v27 = sub_2146DAA38();
  v29 = sub_2140900AC(v27, v28);

  if (!v29)
  {
    v35 = sub_2146D9F58();
    swift_allocError();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090);
    v37[3] = a5;
    v37[4] = v25;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v37);
    v46(boxed_opaque_existential_0, v26, a5);
    v51 = 0;
    v52 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000003ELL, 0x800000021479C9A0);
    sub_2146DA688();
    MEMORY[0x2160545D0](41, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84158], v35);
    swift_willThrow();
    return sub_2144EA580(v53);
  }

  swift_getObjectType();
  if (sub_21408FD98() != 6)
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041C8, &qword_214756CC0);
    v40 = sub_2146D9F58();
    swift_allocError();
    v42 = v41;
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_2146D9EF8();

    v51 = 0xD000000000000028;
    v52 = 0x800000021479C500;
    v43 = sub_2144EB524(v29);
    MEMORY[0x2160545D0](v43);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v42 = v39;

    sub_2146D9F28();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    return sub_2144EA580(v53);
  }

  swift_unknownObjectRetain();
  if (sub_21408FD98() == 6)
  {
    v30 = v53;
    v31 = *(v53 + 32);
    v32 = v45;
    v45[3] = &type metadata for _XPCUnkeyedDecodingContainer;
    v32[4] = sub_2144EDEAC();
    v33 = swift_allocObject();
    *v32 = v33;

    swift_unknownObjectRelease();
    v33[2] = v30;
    v33[3] = v29;
    v33[4] = v31;
    v33[5] = 0;
    return sub_2144EA580(v30);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144EB0D4()
{
  result = sub_2146DA768();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2144EB124()
{
  result = sub_2146DA778();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2144EB1CC()
{
  result = sub_2146DA7A8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2144EB21C()
{
  result = sub_2146DA788();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2144EB35C()
{
  result = sub_2146DA7B8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2144EB3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_2144EB524(uint64_t a1)
{
  swift_getObjectType();
  if (sub_214090088())
  {
    return 0x76206C6C756E2061;
  }

  v2 = 0x7265626D756E2061;
  if (sub_21408FD98() != 1 && sub_21408FD98() != 2)
  {
    if (sub_21408FD98() == 3)
    {
      return 0x676E697274732061;
    }

    else if (sub_21408FD98() == 6)
    {
      return 0x7961727261206E61;
    }

    else if (sub_21408FD98() == 7)
    {
      return 0x6F69746369642061;
    }

    else
    {
      v4 = MEMORY[0x216056E20](a1);
      xpc_type_get_name(v4);
      return sub_2146D96E8();
    }
  }

  return v2;
}

unint64_t sub_2144EB694()
{
  result = qword_27C914A28;
  if (!qword_27C914A28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCDecoder.DataDecodingStrategy, &type metadata for XPCDecoder.DataDecodingStrategy, v0, v1);
    atomic_store(result, &qword_27C914A28);
  }

  return result;
}

unint64_t sub_2144EB6EC()
{
  result = qword_27C914A30;
  if (!qword_27C914A30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCDecoder.UUIDDecodingStrategy, &type metadata for XPCDecoder.UUIDDecodingStrategy, v0, v1);
    atomic_store(result, &qword_27C914A30);
  }

  return result;
}

int64_t sub_2144EB93C(void *a1)
{
  swift_getObjectType();
  if (sub_214090088())
  {
    return 0;
  }

  if (sub_21408FD98() != 1)
  {
    swift_beginAccess();
    v9 = sub_2146D9F58();
    swift_allocError();
    v11 = v10;

    sub_2146D9EF8();

    v12 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v12);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v11 = MEMORY[0x277D83B88];
    sub_2146D9F28();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D84160], v9);
    return swift_willThrow();
  }

  value = xpc_int64_get_value(a1);
  v4 = xpc_int64_get_value(a1);
  result = value;
  if (value != v4)
  {
    v5 = sub_2146D9F58();
    swift_allocError();
    v7 = v6;
    swift_beginAccess();

    sub_2146D9EF8();

    xpc_int64_get_value(a1);
    v8 = sub_2146DA428();
    MEMORY[0x2160545D0](v8);

    MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479BEC0);
    MEMORY[0x2160545D0](7630409, 0xE300000000000000);
    MEMORY[0x2160545D0](46, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84168], v5);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144EBC6C(void *a1)
{
  swift_getObjectType();
  if (sub_214090088())
  {
    return 2;
  }

  if (!sub_21408FD98())
  {
    return xpc_BOOL_get_value(a1);
  }

  swift_beginAccess();
  v3 = sub_2146D9F58();
  swift_allocError();
  v5 = v4;

  sub_2146D9EF8();

  v6 = sub_2144EB524(a1);
  MEMORY[0x2160545D0](v6);

  MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
  *v5 = MEMORY[0x277D839B0];
  sub_2146D9F28();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84160], v3);
  return swift_willThrow();
}

uint64_t sub_2144EBE2C(void *a1)
{
  swift_getObjectType();
  v2 = sub_214090088();
  if (v2)
  {
    value = 0;
    return value | (v2 << 8);
  }

  if (sub_21408FD98() == 1)
  {
    value = xpc_int64_get_value(a1);
    if (xpc_int64_get_value(a1) == value)
    {
      return value | (v2 << 8);
    }

    v5 = sub_2146D9F58();
    swift_allocError();
    v7 = v6;
    swift_beginAccess();

    sub_2146D9EF8();

    xpc_int64_get_value(a1);
    v8 = sub_2146DA428();
    MEMORY[0x2160545D0](v8);

    MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479BEC0);
    MEMORY[0x2160545D0](947154505, 0xE400000000000000);
    MEMORY[0x2160545D0](46, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84168], v5);
  }

  else
  {
    swift_beginAccess();
    v9 = sub_2146D9F58();
    swift_allocError();
    v11 = v10;

    sub_2146D9EF8();

    v12 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v12);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v11 = MEMORY[0x277D84900];
    sub_2146D9F28();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D84160], v9);
  }

  return swift_willThrow();
}

uint64_t sub_2144EC158(void *a1)
{
  swift_getObjectType();
  v2 = sub_214090088();
  if (v2)
  {
    value = 0;
    return value | (v2 << 16);
  }

  if (sub_21408FD98() == 1)
  {
    value = xpc_int64_get_value(a1);
    if (xpc_int64_get_value(a1) == value)
    {
      return value | (v2 << 16);
    }

    v5 = sub_2146D9F58();
    swift_allocError();
    v7 = v6;
    swift_beginAccess();

    sub_2146D9EF8();

    xpc_int64_get_value(a1);
    v8 = sub_2146DA428();
    MEMORY[0x2160545D0](v8);

    MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479BEC0);
    MEMORY[0x2160545D0](0x3631746E49, 0xE500000000000000);
    MEMORY[0x2160545D0](46, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84168], v5);
  }

  else
  {
    swift_beginAccess();
    v9 = sub_2146D9F58();
    swift_allocError();
    v11 = v10;

    sub_2146D9EF8();

    v12 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v12);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v11 = MEMORY[0x277D84958];
    sub_2146D9F28();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D84160], v9);
  }

  return swift_willThrow();
}

uint64_t sub_2144EC488(void *a1)
{
  swift_getObjectType();
  v2 = sub_214090088();
  if (v2)
  {
    value = 0;
    return value | (v2 << 32);
  }

  if (sub_21408FD98() == 1)
  {
    value = xpc_int64_get_value(a1);
    if (xpc_int64_get_value(a1) == value)
    {
      return value | (v2 << 32);
    }

    v5 = sub_2146D9F58();
    swift_allocError();
    v7 = v6;
    swift_beginAccess();

    sub_2146D9EF8();

    xpc_int64_get_value(a1);
    v8 = sub_2146DA428();
    MEMORY[0x2160545D0](v8);

    MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479BEC0);
    MEMORY[0x2160545D0](0x3233746E49, 0xE500000000000000);
    MEMORY[0x2160545D0](46, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84168], v5);
  }

  else
  {
    swift_beginAccess();
    v9 = sub_2146D9F58();
    swift_allocError();
    v11 = v10;

    sub_2146D9EF8();

    v12 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v12);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v11 = MEMORY[0x277D849A8];
    sub_2146D9F28();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D84160], v9);
  }

  return swift_willThrow();
}

int64_t sub_2144EC7C4(void *a1)
{
  swift_getObjectType();
  if (sub_214090088())
  {
    return 0;
  }

  if (sub_21408FD98() != 1)
  {
    swift_beginAccess();
    v9 = sub_2146D9F58();
    swift_allocError();
    v11 = v10;

    sub_2146D9EF8();

    v12 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v12);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v11 = MEMORY[0x277D84A28];
    sub_2146D9F28();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D84160], v9);
    return swift_willThrow();
  }

  value = xpc_int64_get_value(a1);
  v4 = xpc_int64_get_value(a1);
  result = value;
  if (value != v4)
  {
    v5 = sub_2146D9F58();
    swift_allocError();
    v7 = v6;
    swift_beginAccess();

    sub_2146D9EF8();

    xpc_int64_get_value(a1);
    v8 = sub_2146DA428();
    MEMORY[0x2160545D0](v8);

    MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479BEC0);
    MEMORY[0x2160545D0](0x3436746E49, 0xE500000000000000);
    MEMORY[0x2160545D0](46, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84168], v5);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144ECAF8(void *a1)
{
  swift_getObjectType();
  if (sub_214090088())
  {
    return 0;
  }

  if (sub_21408FD98() != 2)
  {
    swift_beginAccess();
    v9 = sub_2146D9F58();
    swift_allocError();
    v11 = v10;

    sub_2146D9EF8();

    v12 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v12);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v11 = MEMORY[0x277D83E88];
    sub_2146D9F28();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D84160], v9);
    return swift_willThrow();
  }

  value = xpc_uint64_get_value(a1);
  v4 = xpc_uint64_get_value(a1);
  result = value;
  if (value != v4)
  {
    v5 = sub_2146D9F58();
    swift_allocError();
    v7 = v6;
    swift_beginAccess();

    sub_2146D9EF8();

    xpc_uint64_get_value(a1);
    v8 = sub_2146DA428();
    MEMORY[0x2160545D0](v8);

    MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479BEC0);
    MEMORY[0x2160545D0](1953384789, 0xE400000000000000);
    MEMORY[0x2160545D0](46, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84168], v5);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144ECE28(void *a1)
{
  swift_getObjectType();
  v2 = sub_214090088();
  if (v2)
  {
    value = 0;
    return value | (v2 << 8);
  }

  if (sub_21408FD98() == 2)
  {
    value = xpc_uint64_get_value(a1);
    if (xpc_uint64_get_value(a1) == value)
    {
      return value | (v2 << 8);
    }

    v5 = sub_2146D9F58();
    swift_allocError();
    v7 = v6;
    swift_beginAccess();

    sub_2146D9EF8();

    xpc_uint64_get_value(a1);
    v8 = sub_2146DA428();
    MEMORY[0x2160545D0](v8);

    MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479BEC0);
    MEMORY[0x2160545D0](0x38746E4955, 0xE500000000000000);
    MEMORY[0x2160545D0](46, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84168], v5);
  }

  else
  {
    swift_beginAccess();
    v9 = sub_2146D9F58();
    swift_allocError();
    v11 = v10;

    sub_2146D9EF8();

    v12 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v12);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v11 = MEMORY[0x277D84B78];
    sub_2146D9F28();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D84160], v9);
  }

  return swift_willThrow();
}

uint64_t sub_2144ED158(void *a1)
{
  swift_getObjectType();
  v2 = sub_214090088();
  if (v2)
  {
    value = 0;
    return value | (v2 << 16);
  }

  if (sub_21408FD98() == 2)
  {
    value = xpc_uint64_get_value(a1);
    if (xpc_uint64_get_value(a1) == value)
    {
      return value | (v2 << 16);
    }

    v5 = sub_2146D9F58();
    swift_allocError();
    v7 = v6;
    swift_beginAccess();

    sub_2146D9EF8();

    xpc_uint64_get_value(a1);
    v8 = sub_2146DA428();
    MEMORY[0x2160545D0](v8);

    MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479BEC0);
    MEMORY[0x2160545D0](0x3631746E4955, 0xE600000000000000);
    MEMORY[0x2160545D0](46, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84168], v5);
  }

  else
  {
    swift_beginAccess();
    v9 = sub_2146D9F58();
    swift_allocError();
    v11 = v10;

    sub_2146D9EF8();

    v12 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v12);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v11 = MEMORY[0x277D84C58];
    sub_2146D9F28();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D84160], v9);
  }

  return swift_willThrow();
}

uint64_t sub_2144ED488(void *a1)
{
  swift_getObjectType();
  v2 = sub_214090088();
  if (v2)
  {
    value = 0;
    return value | (v2 << 32);
  }

  if (sub_21408FD98() == 2)
  {
    value = xpc_uint64_get_value(a1);
    if (xpc_uint64_get_value(a1) == value)
    {
      return value | (v2 << 32);
    }

    v5 = sub_2146D9F58();
    swift_allocError();
    v7 = v6;
    swift_beginAccess();

    sub_2146D9EF8();

    xpc_uint64_get_value(a1);
    v8 = sub_2146DA428();
    MEMORY[0x2160545D0](v8);

    MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479BEC0);
    MEMORY[0x2160545D0](0x3233746E4955, 0xE600000000000000);
    MEMORY[0x2160545D0](46, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84168], v5);
  }

  else
  {
    swift_beginAccess();
    v9 = sub_2146D9F58();
    swift_allocError();
    v11 = v10;

    sub_2146D9EF8();

    v12 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v12);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v11 = MEMORY[0x277D84CC0];
    sub_2146D9F28();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D84160], v9);
  }

  return swift_willThrow();
}

uint64_t sub_2144ED7C4(void *a1)
{
  swift_getObjectType();
  if (sub_214090088())
  {
    return 0;
  }

  if (sub_21408FD98() != 2)
  {
    swift_beginAccess();
    v9 = sub_2146D9F58();
    swift_allocError();
    v11 = v10;

    sub_2146D9EF8();

    v12 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v12);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v11 = MEMORY[0x277D84D38];
    sub_2146D9F28();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D84160], v9);
    return swift_willThrow();
  }

  value = xpc_uint64_get_value(a1);
  v4 = xpc_uint64_get_value(a1);
  result = value;
  if (value != v4)
  {
    v5 = sub_2146D9F58();
    swift_allocError();
    v7 = v6;
    swift_beginAccess();

    sub_2146D9EF8();

    xpc_uint64_get_value(a1);
    v8 = sub_2146DA428();
    MEMORY[0x2160545D0](v8);

    MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479BEC0);
    MEMORY[0x2160545D0](0x3436746E4955, 0xE600000000000000);
    MEMORY[0x2160545D0](46, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84168], v5);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144EDAF8(void *a1)
{
  swift_getObjectType();
  v2 = sub_214090088();
  if (v2)
  {
    v3 = 0;
    return v3 | (v2 << 32);
  }

  if (sub_21408FD98() == 4)
  {
    *&v4 = xpc_double_get_value(a1);
    v3 = v4;
    return v3 | (v2 << 32);
  }

  swift_beginAccess();
  v6 = sub_2146D9F58();
  swift_allocError();
  v8 = v7;

  sub_2146D9EF8();

  v9 = sub_2144EB524(a1);
  MEMORY[0x2160545D0](v9);

  MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
  *v8 = MEMORY[0x277D83A90];
  sub_2146D9F28();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84160], v6);
  return swift_willThrow();
}

uint64_t sub_2144EDCD8(void *a1)
{
  swift_getObjectType();
  if (sub_214090088())
  {
    return 0;
  }

  if (sub_21408FD98() == 4)
  {
    return xpc_double_get_value(a1);
  }

  swift_beginAccess();
  v3 = sub_2146D9F58();
  swift_allocError();
  v5 = v4;

  sub_2146D9EF8();

  v6 = sub_2144EB524(a1);
  MEMORY[0x2160545D0](v6);

  MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
  *v5 = MEMORY[0x277D839F8];
  sub_2146D9F28();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84160], v3);
  return swift_willThrow();
}

unint64_t sub_2144EDEAC()
{
  result = qword_280B332A0;
  if (!qword_280B332A0)
  {
    result = swift_getWitnessTable(byte_214756F20, &type metadata for _XPCUnkeyedDecodingContainer, v0, v1);
    atomic_store(result, &qword_280B332A0);
  }

  return result;
}

uint64_t sub_2144EDF18(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for _XPCDecoder();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2144EDF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2144EDFA4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2144EDFEC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2144EE044()
{
  result = qword_280B34848[0];
  if (!qword_280B34848[0])
  {
    result = swift_getWitnessTable(byte_214767F10, &type metadata for XPCCodingKey, v0, v1);
    atomic_store(result, qword_280B34848);
  }

  return result;
}

uint64_t sub_2144EE098()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v15 = sub_2146D9F58();
    swift_allocError();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v17 = MEMORY[0x277D839B0];
    v18 = *v0;
    swift_beginAccess();
    v19 = *(v18 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v37[1] = 0xE600000000000000;
    v37[14] = v4;

    v21 = sub_2146DA428();
    MEMORY[0x2160545D0](v21);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v22 = swift_allocObject();
    *(inited + 32) = v22;
    *(v22 + 16) = 0x207865646E49;
    *(v22 + 24) = 0xE600000000000000;
    *(v22 + 32) = v4;
    *(v22 + 40) = 0;
    v37[0] = v19;
    v7 = v37;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84170], v15);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v34 = 0x207865646E49;
    *(&v34 + 1) = 0xE600000000000000;
    v37[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, *(v7 + 2) + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v35 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v36 = v11;
    v12 = swift_allocObject();
    *&v34 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    *(v7 + 2) = v10 + 1;
    sub_213FB77C8(&v34, v7 + 40 * v10 + 32);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    LOBYTE(v7) = v5;
    v14 = sub_2144EBC6C(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      LOBYTE(v7) = v14;
      v33 = v11;
      swift_unknownObjectRelease();
      if (v7 != 2)
      {
        v2[3] = v4 + 1;
        sub_2144E4BBC(v2);
        return v7 & 1;
      }

      v32 = sub_2146D9F58();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v24 = MEMORY[0x277D839B0];
      v25 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_2146EA710;
      *&v34 = 0x207865646E49;
      *(&v34 + 1) = 0xE600000000000000;
      v37[0] = v4;

      v27 = sub_2146DA428();
      MEMORY[0x2160545D0](v27);

      v29 = *(&v34 + 1);
      v28 = v34;
      *(v26 + 56) = &type metadata for XPCCodingKey;
      *(v26 + 64) = v33;
      v30 = swift_allocObject();
      *(v26 + 32) = v30;
      *(v30 + 16) = __PAIR128__(v29, v28);
      *(v30 + 32) = v4;
      *(v30 + 40) = 0;
      *&v34 = v25;
      v7 = &v34;
      sub_21468B984(v26);
      sub_2146D9F28();
      (*(*(v32 - 8) + 104))(v24, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_2144E4BBC(v2);
  }

  return v7 & 1;
}

__int128 *sub_2144EE5C0()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v17 = sub_2146D9F58();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v19 = MEMORY[0x277D83B88];
    v20 = *v0;
    swift_beginAccess();
    v21 = *(v20 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v39[1] = 0xE600000000000000;
    v39[14] = v4;

    v23 = sub_2146DA428();
    MEMORY[0x2160545D0](v23);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v24 = swift_allocObject();
    *(inited + 32) = v24;
    *(v24 + 16) = 0x207865646E49;
    *(v24 + 24) = 0xE600000000000000;
    *(v24 + 32) = v4;
    *(v24 + 40) = 0;
    v39[0] = v21;
    v14 = v39;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v36 = 0x207865646E49;
    *(&v36 + 1) = 0xE600000000000000;
    v39[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v37 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v38 = v11;
    v12 = swift_allocObject();
    *&v36 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_213FB77C8(&v36, &v7[5 * v10 + 4]);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_2144EB93C(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = v15;
      v25 = v16;
      swift_unknownObjectRelease();
      if ((v25 & 1) == 0)
      {
        v2[3] = v4 + 1;
        sub_2144E4BBC(v2);
        return v14;
      }

      v35 = sub_2146D9F58();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v27 = MEMORY[0x277D83B88];
      v28 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_2146EA710;
      *&v36 = 0x207865646E49;
      *(&v36 + 1) = 0xE600000000000000;
      v39[0] = v4;

      v30 = sub_2146DA428();
      MEMORY[0x2160545D0](v30);

      v32 = *(&v36 + 1);
      v31 = v36;
      *(v29 + 56) = &type metadata for XPCCodingKey;
      *(v29 + 64) = v11;
      v33 = swift_allocObject();
      *(v29 + 32) = v33;
      *(v33 + 16) = __PAIR128__(v32, v31);
      *(v33 + 32) = v4;
      *(v33 + 40) = 0;
      *&v36 = v28;
      v14 = &v36;
      sub_21468B984(v29);
      sub_2146D9F28();
      (*(*(v35 - 8) + 104))(v27, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_2144E4BBC(v2);
  }

  return v14;
}

__int128 *sub_2144EEADC()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_2146D9F58();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v18 = MEMORY[0x277D84900];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v38[1] = 0xE600000000000000;
    v38[14] = v4;

    v22 = sub_2146DA428();
    MEMORY[0x2160545D0](v22);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v4;
    *(v23 + 40) = 0;
    v38[0] = v20;
    v14 = v38;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v35 = 0x207865646E49;
    *(&v35 + 1) = 0xE600000000000000;
    v38[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v36 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v37 = v11;
    v12 = swift_allocObject();
    *&v35 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_213FB77C8(&v35, &v7[5 * v10 + 4]);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_2144EBE2C(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_2144E4BBC(v2);
      return v14;
    }

    v14 = v15;
    v34 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x100) != 0)
    {
      v33 = sub_2146D9F58();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v25 = MEMORY[0x277D84900];
      v26 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_2146EA710;
      *&v35 = 0x207865646E49;
      *(&v35 + 1) = 0xE600000000000000;
      v38[0] = v4;

      v28 = sub_2146DA428();
      MEMORY[0x2160545D0](v28);

      v30 = *(&v35 + 1);
      v29 = v35;
      *(v27 + 56) = &type metadata for XPCCodingKey;
      *(v27 + 64) = v34;
      v31 = swift_allocObject();
      *(v27 + 32) = v31;
      *(v31 + 16) = __PAIR128__(v30, v29);
      *(v31 + 32) = v4;
      *(v31 + 40) = 0;
      *&v35 = v26;
      v14 = &v35;
      sub_21468B984(v27);
      sub_2146D9F28();
      (*(*(v33 - 8) + 104))(v25, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_2144E4BBC(v2);
  }

  return v14;
}

__int128 *sub_2144EEFFC()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_2146D9F58();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v18 = MEMORY[0x277D84958];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v38[1] = 0xE600000000000000;
    v38[14] = v4;

    v22 = sub_2146DA428();
    MEMORY[0x2160545D0](v22);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v4;
    *(v23 + 40) = 0;
    v38[0] = v20;
    v14 = v38;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v35 = 0x207865646E49;
    *(&v35 + 1) = 0xE600000000000000;
    v38[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v36 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v37 = v11;
    v12 = swift_allocObject();
    *&v35 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_213FB77C8(&v35, &v7[5 * v10 + 4]);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_2144EC158(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_2144E4BBC(v2);
      return v14;
    }

    v14 = v15;
    v34 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x10000) != 0)
    {
      v33 = sub_2146D9F58();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v25 = MEMORY[0x277D84958];
      v26 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_2146EA710;
      *&v35 = 0x207865646E49;
      *(&v35 + 1) = 0xE600000000000000;
      v38[0] = v4;

      v28 = sub_2146DA428();
      MEMORY[0x2160545D0](v28);

      v30 = *(&v35 + 1);
      v29 = v35;
      *(v27 + 56) = &type metadata for XPCCodingKey;
      *(v27 + 64) = v34;
      v31 = swift_allocObject();
      *(v27 + 32) = v31;
      *(v31 + 16) = __PAIR128__(v30, v29);
      *(v31 + 32) = v4;
      *(v31 + 40) = 0;
      *&v35 = v26;
      v14 = &v35;
      sub_21468B984(v27);
      sub_2146D9F28();
      (*(*(v33 - 8) + 104))(v25, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_2144E4BBC(v2);
  }

  return v14;
}

uint64_t sub_2144EF51C()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_2146D9F58();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v18 = MEMORY[0x277D849A8];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v38[1] = 0xE600000000000000;
    v38[14] = v4;

    v22 = sub_2146DA428();
    MEMORY[0x2160545D0](v22);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v4;
    *(v23 + 40) = 0;
    v38[0] = v20;
    v14 = v38;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v35 = 0x207865646E49;
    *(&v35 + 1) = 0xE600000000000000;
    v38[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v36 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v37 = v11;
    v12 = swift_allocObject();
    *&v35 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_213FB77C8(&v35, &v7[5 * v10 + 4]);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_2144EC488(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_2144E4BBC(v2);
      return v14;
    }

    v14 = v15;
    v34 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x100000000) != 0)
    {
      v33 = sub_2146D9F58();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v25 = MEMORY[0x277D849A8];
      v26 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_2146EA710;
      *&v35 = 0x207865646E49;
      *(&v35 + 1) = 0xE600000000000000;
      v38[0] = v4;

      v28 = sub_2146DA428();
      MEMORY[0x2160545D0](v28);

      v30 = *(&v35 + 1);
      v29 = v35;
      *(v27 + 56) = &type metadata for XPCCodingKey;
      *(v27 + 64) = v34;
      v31 = swift_allocObject();
      *(v27 + 32) = v31;
      *(v31 + 16) = __PAIR128__(v30, v29);
      *(v31 + 32) = v4;
      *(v31 + 40) = 0;
      *&v35 = v26;
      v14 = &v35;
      sub_21468B984(v27);
      sub_2146D9F28();
      (*(*(v33 - 8) + 104))(v25, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_2144E4BBC(v2);
  }

  return v14;
}

__int128 *sub_2144EFA3C()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v17 = sub_2146D9F58();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v19 = MEMORY[0x277D84A28];
    v20 = *v0;
    swift_beginAccess();
    v21 = *(v20 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v40[1] = 0xE600000000000000;
    v40[14] = v4;

    v23 = sub_2146DA428();
    MEMORY[0x2160545D0](v23);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v24 = swift_allocObject();
    *(inited + 32) = v24;
    *(v24 + 16) = 0x207865646E49;
    *(v24 + 24) = 0xE600000000000000;
    *(v24 + 32) = v4;
    *(v24 + 40) = 0;
    v40[0] = v21;
    v14 = v40;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v37 = 0x207865646E49;
    *(&v37 + 1) = 0xE600000000000000;
    v40[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v38 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v39 = v11;
    v12 = swift_allocObject();
    *&v37 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_213FB77C8(&v37, &v7[5 * v10 + 4]);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_2144EC7C4(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = v15;
      v25 = v16;
      v36 = v11;
      swift_unknownObjectRelease();
      if ((v25 & 1) == 0)
      {
        v2[3] = v4 + 1;
        sub_2144E4BBC(v2);
        return v14;
      }

      v35 = sub_2146D9F58();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v27 = MEMORY[0x277D84A28];
      v28 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_2146EA710;
      *&v37 = 0x207865646E49;
      *(&v37 + 1) = 0xE600000000000000;
      v40[0] = v4;

      v30 = sub_2146DA428();
      MEMORY[0x2160545D0](v30);

      v32 = *(&v37 + 1);
      v31 = v37;
      *(v29 + 56) = &type metadata for XPCCodingKey;
      *(v29 + 64) = v36;
      v33 = swift_allocObject();
      *(v29 + 32) = v33;
      *(v33 + 16) = __PAIR128__(v32, v31);
      *(v33 + 32) = v4;
      *(v33 + 40) = 0;
      *&v37 = v28;
      v14 = &v37;
      sub_21468B984(v29);
      sub_2146D9F28();
      (*(*(v35 - 8) + 104))(v27, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_2144E4BBC(v2);
  }

  return v14;
}

__int128 *sub_2144EFF60()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v17 = sub_2146D9F58();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v19 = MEMORY[0x277D83E88];
    v20 = *v0;
    swift_beginAccess();
    v21 = *(v20 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v40[1] = 0xE600000000000000;
    v40[14] = v4;

    v23 = sub_2146DA428();
    MEMORY[0x2160545D0](v23);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v24 = swift_allocObject();
    *(inited + 32) = v24;
    *(v24 + 16) = 0x207865646E49;
    *(v24 + 24) = 0xE600000000000000;
    *(v24 + 32) = v4;
    *(v24 + 40) = 0;
    v40[0] = v21;
    v14 = v40;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v37 = 0x207865646E49;
    *(&v37 + 1) = 0xE600000000000000;
    v40[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v38 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v39 = v11;
    v12 = swift_allocObject();
    *&v37 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_213FB77C8(&v37, &v7[5 * v10 + 4]);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_2144ECAF8(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = v15;
      v25 = v16;
      v36 = v11;
      swift_unknownObjectRelease();
      if ((v25 & 1) == 0)
      {
        v2[3] = v4 + 1;
        sub_2144E4BBC(v2);
        return v14;
      }

      v35 = sub_2146D9F58();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v27 = MEMORY[0x277D83E88];
      v28 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_2146EA710;
      *&v37 = 0x207865646E49;
      *(&v37 + 1) = 0xE600000000000000;
      v40[0] = v4;

      v30 = sub_2146DA428();
      MEMORY[0x2160545D0](v30);

      v32 = *(&v37 + 1);
      v31 = v37;
      *(v29 + 56) = &type metadata for XPCCodingKey;
      *(v29 + 64) = v36;
      v33 = swift_allocObject();
      *(v29 + 32) = v33;
      *(v33 + 16) = __PAIR128__(v32, v31);
      *(v33 + 32) = v4;
      *(v33 + 40) = 0;
      *&v37 = v28;
      v14 = &v37;
      sub_21468B984(v29);
      sub_2146D9F28();
      (*(*(v35 - 8) + 104))(v27, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_2144E4BBC(v2);
  }

  return v14;
}

__int128 *sub_2144F0484()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_2146D9F58();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v18 = MEMORY[0x277D84B78];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v38[1] = 0xE600000000000000;
    v38[14] = v4;

    v22 = sub_2146DA428();
    MEMORY[0x2160545D0](v22);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v4;
    *(v23 + 40) = 0;
    v38[0] = v20;
    v14 = v38;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v35 = 0x207865646E49;
    *(&v35 + 1) = 0xE600000000000000;
    v38[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v36 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v37 = v11;
    v12 = swift_allocObject();
    *&v35 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_213FB77C8(&v35, &v7[5 * v10 + 4]);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_2144ECE28(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_2144E4BBC(v2);
      return v14;
    }

    v14 = v15;
    v34 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x100) != 0)
    {
      v33 = sub_2146D9F58();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v25 = MEMORY[0x277D84B78];
      v26 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_2146EA710;
      *&v35 = 0x207865646E49;
      *(&v35 + 1) = 0xE600000000000000;
      v38[0] = v4;

      v28 = sub_2146DA428();
      MEMORY[0x2160545D0](v28);

      v30 = *(&v35 + 1);
      v29 = v35;
      *(v27 + 56) = &type metadata for XPCCodingKey;
      *(v27 + 64) = v34;
      v31 = swift_allocObject();
      *(v27 + 32) = v31;
      *(v31 + 16) = __PAIR128__(v30, v29);
      *(v31 + 32) = v4;
      *(v31 + 40) = 0;
      *&v35 = v26;
      v14 = &v35;
      sub_21468B984(v27);
      sub_2146D9F28();
      (*(*(v33 - 8) + 104))(v25, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_2144E4BBC(v2);
  }

  return v14;
}

__int128 *sub_2144F09A4()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_2146D9F58();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v18 = MEMORY[0x277D84C58];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v38[1] = 0xE600000000000000;
    v38[14] = v4;

    v22 = sub_2146DA428();
    MEMORY[0x2160545D0](v22);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v4;
    *(v23 + 40) = 0;
    v38[0] = v20;
    v14 = v38;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v35 = 0x207865646E49;
    *(&v35 + 1) = 0xE600000000000000;
    v38[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v36 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v37 = v11;
    v12 = swift_allocObject();
    *&v35 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_213FB77C8(&v35, &v7[5 * v10 + 4]);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_2144ED158(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_2144E4BBC(v2);
      return v14;
    }

    v14 = v15;
    v34 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x10000) != 0)
    {
      v33 = sub_2146D9F58();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v25 = MEMORY[0x277D84C58];
      v26 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_2146EA710;
      *&v35 = 0x207865646E49;
      *(&v35 + 1) = 0xE600000000000000;
      v38[0] = v4;

      v28 = sub_2146DA428();
      MEMORY[0x2160545D0](v28);

      v30 = *(&v35 + 1);
      v29 = v35;
      *(v27 + 56) = &type metadata for XPCCodingKey;
      *(v27 + 64) = v34;
      v31 = swift_allocObject();
      *(v27 + 32) = v31;
      *(v31 + 16) = __PAIR128__(v30, v29);
      *(v31 + 32) = v4;
      *(v31 + 40) = 0;
      *&v35 = v26;
      v14 = &v35;
      sub_21468B984(v27);
      sub_2146D9F28();
      (*(*(v33 - 8) + 104))(v25, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_2144E4BBC(v2);
  }

  return v14;
}

uint64_t sub_2144F0EC4()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_2146D9F58();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v18 = MEMORY[0x277D84CC0];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v38[1] = 0xE600000000000000;
    v38[14] = v4;

    v22 = sub_2146DA428();
    MEMORY[0x2160545D0](v22);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v4;
    *(v23 + 40) = 0;
    v38[0] = v20;
    v14 = v38;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v35 = 0x207865646E49;
    *(&v35 + 1) = 0xE600000000000000;
    v38[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v36 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v37 = v11;
    v12 = swift_allocObject();
    *&v35 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_213FB77C8(&v35, &v7[5 * v10 + 4]);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_2144ED488(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_2144E4BBC(v2);
      return v14;
    }

    v14 = v15;
    v34 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x100000000) != 0)
    {
      v33 = sub_2146D9F58();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v25 = MEMORY[0x277D84CC0];
      v26 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_2146EA710;
      *&v35 = 0x207865646E49;
      *(&v35 + 1) = 0xE600000000000000;
      v38[0] = v4;

      v28 = sub_2146DA428();
      MEMORY[0x2160545D0](v28);

      v30 = *(&v35 + 1);
      v29 = v35;
      *(v27 + 56) = &type metadata for XPCCodingKey;
      *(v27 + 64) = v34;
      v31 = swift_allocObject();
      *(v27 + 32) = v31;
      *(v31 + 16) = __PAIR128__(v30, v29);
      *(v31 + 32) = v4;
      *(v31 + 40) = 0;
      *&v35 = v26;
      v14 = &v35;
      sub_21468B984(v27);
      sub_2146D9F28();
      (*(*(v33 - 8) + 104))(v25, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_2144E4BBC(v2);
  }

  return v14;
}

__int128 *sub_2144F13E4()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v17 = sub_2146D9F58();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v19 = MEMORY[0x277D84D38];
    v20 = *v0;
    swift_beginAccess();
    v21 = *(v20 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v40[1] = 0xE600000000000000;
    v40[14] = v4;

    v23 = sub_2146DA428();
    MEMORY[0x2160545D0](v23);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v24 = swift_allocObject();
    *(inited + 32) = v24;
    *(v24 + 16) = 0x207865646E49;
    *(v24 + 24) = 0xE600000000000000;
    *(v24 + 32) = v4;
    *(v24 + 40) = 0;
    v40[0] = v21;
    v14 = v40;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v37 = 0x207865646E49;
    *(&v37 + 1) = 0xE600000000000000;
    v40[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v38 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v39 = v11;
    v12 = swift_allocObject();
    *&v37 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_213FB77C8(&v37, &v7[5 * v10 + 4]);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_2144ED7C4(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = v15;
      v25 = v16;
      v36 = v11;
      swift_unknownObjectRelease();
      if ((v25 & 1) == 0)
      {
        v2[3] = v4 + 1;
        sub_2144E4BBC(v2);
        return v14;
      }

      v35 = sub_2146D9F58();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v27 = MEMORY[0x277D84D38];
      v28 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_2146EA710;
      *&v37 = 0x207865646E49;
      *(&v37 + 1) = 0xE600000000000000;
      v40[0] = v4;

      v30 = sub_2146DA428();
      MEMORY[0x2160545D0](v30);

      v32 = *(&v37 + 1);
      v31 = v37;
      *(v29 + 56) = &type metadata for XPCCodingKey;
      *(v29 + 64) = v36;
      v33 = swift_allocObject();
      *(v29 + 32) = v33;
      *(v33 + 16) = __PAIR128__(v32, v31);
      *(v33 + 32) = v4;
      *(v33 + 40) = 0;
      *&v37 = v28;
      v14 = &v37;
      sub_21468B984(v29);
      sub_2146D9F28();
      (*(*(v35 - 8) + 104))(v27, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_2144E4BBC(v2);
  }

  return v14;
}