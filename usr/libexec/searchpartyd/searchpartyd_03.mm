uint64_t sub_100052AFC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for OwnedBeaconRecord(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for UUID();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_100052C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100052D34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100052DF0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100052E9C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100052F44()
{
  sub_100007BAC((v0 + 16));
  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_100052F8C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100052FC4()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100052FFC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100053034()
{

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_10005306C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64) + v3;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 1);
}

uint64_t sub_1000531C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10005328C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_10005334C()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100053384()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1000533CC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100053408()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100053440()
{

  sub_100016590(*(v0 + 24), *(v0 + 32));
  sub_10038B978(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_10005348C()
{
  if (*(v0 + 57) == 1)
  {
    v1 = *(v0 + 56);
    if (v1 <= 4)
    {
      if (*(v0 + 56) <= 1u)
      {
        if (*(v0 + 56))
        {
          sub_100007BAC((v0 + 16));
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      if (v1 == 2)
      {

        goto LABEL_24;
      }

      if (v1 == 3)
      {

        goto LABEL_25;
      }

      if (v1 != 4)
      {
        goto LABEL_25;
      }

LABEL_12:

      goto LABEL_25;
    }

    if (*(v0 + 56) <= 7u)
    {
      if (v1 != 5 && v1 != 6)
      {
        if (v1 != 7)
        {
          goto LABEL_25;
        }

LABEL_24:

        goto LABEL_25;
      }

      goto LABEL_12;
    }

    switch(v1)
    {
      case 8u:

        goto LABEL_24;
      case 9u:

        break;
      case 0xAu:
        goto LABEL_24;
    }
  }

LABEL_25:

  return _swift_deallocObject(v0, 58);
}

uint64_t sub_100053598()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000535D0()
{

  sub_10038BCE4(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_100053628()
{

  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100053670()
{
  sub_10038BCE4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49);
}

uint64_t sub_1000536B0()
{
  v1 = *(v0 + 56);
  if (v1 <= 4)
  {
    if (*(v0 + 56) <= 1u)
    {
      if (*(v0 + 56))
      {
        sub_100007BAC((v0 + 16));
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (v1 == 2)
    {

      goto LABEL_23;
    }

    if (v1 == 3)
    {

      goto LABEL_24;
    }

    if (v1 != 4)
    {
      goto LABEL_24;
    }

LABEL_11:

    goto LABEL_24;
  }

  if (*(v0 + 56) <= 7u)
  {
    if (v1 != 5 && v1 != 6)
    {
      if (v1 != 7)
      {
        goto LABEL_24;
      }

LABEL_23:

      goto LABEL_24;
    }

    goto LABEL_11;
  }

  switch(v1)
  {
    case 8u:

      goto LABEL_23;
    case 9u:

      break;
    case 0xAu:
      goto LABEL_23;
  }

LABEL_24:

  return _swift_deallocObject(v0, 57);
}

uint64_t sub_1000537AC()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000537F8()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000538C8()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000539CC()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100053A48()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_100053A98()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));

  return _swift_deallocObject(v0, 128);
}

uint64_t sub_100053B00()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));
  sub_100016590(*(v0 + 160), *(v0 + 168));
  sub_100016590(*(v0 + 176), *(v0 + 184));
  sub_100016590(*(v0 + 192), *(v0 + 200));
  sub_100016590(*(v0 + 208), *(v0 + 216));
  sub_100016590(*(v0 + 232), *(v0 + 240));
  sub_100016590(*(v0 + 248), *(v0 + 256));
  sub_100016590(*(v0 + 264), *(v0 + 272));

  return _swift_deallocObject(v0, 280);
}

uint64_t sub_100053BB0()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_100053C08()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100053C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMNAccountType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for URLComponents();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100053D3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FMNAccountType();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for URLComponents();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100053E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 11)
  {
    v4 = *(a1 + 8) >> 60;
    v5 = ((4 * v4) & 0xC) == 0;
    v6 = ((4 * v4) & 0xC | (v4 >> 2)) ^ 0xF;
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

void *sub_100053EF8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 11)
  {
    *result = 0;
    result[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100053FC4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 24);
}

uint64_t sub_1000540A0()
{
  v1 = type metadata accessor for OwnerPeerTrust(0);
  v2 = *(*(v1 - 1) + 80);
  v14 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for OwnerSharingCircle(0);
  v4 = *(*(v3 - 8) + 80);
  v13 = *(*(v3 - 8) + 64);

  v5 = v0 + ((v2 + 24) & ~v2);
  sub_100016590(*v5, *(v5 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);
  v9 = v5 + v1[7];
  type metadata accessor for PeerCommunicationIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
      }

      else
      {
        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_15;
        }
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  switch(EnumCaseMultiPayload)
  {
    case 0:
      goto LABEL_14;
    case 1:
      v8(v9, v7);
      break;
    case 2:
      goto LABEL_14;
  }

LABEL_15:
  v11 = (((v2 + 24) & ~v2) + v14 + v4) & ~v4;

  sub_100016590(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  sub_100016590(*(v0 + v11), *(v0 + v11 + 8));
  v8(v0 + v11 + *(v3 + 20), v7);
  v8(v0 + v11 + *(v3 + 24), v7);

  return _swift_deallocObject(v0, v13 + v11 + 1);
}

uint64_t sub_10005433C()
{
  v1 = (type metadata accessor for MemberSharingCircle(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2 + v4, v5);
  v6(v0 + v2 + v1[8], v5);
  v6(v0 + v2 + v1[9], v5);
  v6(v0 + v2 + v1[10], v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100054494()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, v3 + v2 + 1);
}

uint64_t sub_1000545B8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 9);
}

uint64_t sub_100054690()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1000546DC()
{
  v1 = (type metadata accessor for OwnerSharingCircle(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2 + v4, v5);
  v6(v0 + v2 + v1[8], v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100054804()
{
  v1 = (type metadata accessor for OwnerSharingCircle(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[8], v6);

  if (*(v0 + v3 + 16) >= 4uLL)
  {
  }

  return _swift_deallocObject(v0, v3 + 24);
}

uint64_t sub_100054950()
{

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_100054998()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100054A74()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100054ABC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100054AFC()
{
  v1 = (type metadata accessor for MemberSharingCircle(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for MemberPeerTrust(0);
  v5 = (v2 + v3 + *(*(v4 - 1) + 80)) & ~*(*(v4 - 1) + 80);
  v17 = *(*(v4 - 1) + 64);

  v6 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v7 = v1[7];
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v10 = v6 + v7;
  v11 = v5;
  v9(v10, v8);
  v9(v6 + v1[8], v8);
  v9(v6 + v1[9], v8);
  v9(v6 + v1[10], v8);

  v12 = v0 + v5;
  sub_100016590(*(v0 + v5), *(v0 + v5 + 8));
  v9(v0 + v5 + v4[5], v8);
  v13 = v0 + v5 + v4[7];
  type metadata accessor for PeerCommunicationIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      v15 = v17;
      if (EnumCaseMultiPayload == 4)
      {
      }

      else
      {
        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_10:

LABEL_12:
    v15 = v17;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v9(v13, v8);
    goto LABEL_12;
  }

  v15 = v17;
  if (EnumCaseMultiPayload != 2)
  {
    goto LABEL_15;
  }

LABEL_14:

LABEL_15:

  sub_100016590(*(v12 + v4[9]), *(v12 + v4[9] + 8));

  return _swift_deallocObject(v0, v11 + v15);
}

uint64_t sub_100054DC8()
{
  v1 = type metadata accessor for OwnerPeerTrust(0);
  v2 = *(*(v1 - 1) + 80);
  v13 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for OwnerSharingCircle(0);
  v4 = *(*(v3 - 8) + 80);
  v14 = *(*(v3 - 8) + 64);

  v5 = v0 + ((v2 + 24) & ~v2);
  sub_100016590(*v5, *(v5 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);
  v9 = v5 + v1[7];
  type metadata accessor for PeerCommunicationIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
      }

      else
      {
        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_15;
        }
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  switch(EnumCaseMultiPayload)
  {
    case 0:
      goto LABEL_14;
    case 1:
      v8(v9, v7);
      break;
    case 2:
      goto LABEL_14;
  }

LABEL_15:
  v11 = (((v2 + 24) & ~v2) + v13 + v4) & ~v4;

  sub_100016590(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  sub_100016590(*(v0 + v11), *(v0 + v11 + 8));
  v8(v0 + v11 + *(v3 + 20), v7);
  v8(v0 + v11 + *(v3 + 24), v7);

  return _swift_deallocObject(v0, v11 + v14);
}

uint64_t sub_1000550A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_100055160(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10005520C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMNAccountType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for URLComponents();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000552FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FMNAccountType();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for URLComponents();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10005540C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100055448()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 32) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 32) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, ((v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000557CC()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 48) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 48) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v20);
}

uint64_t sub_100055B40()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, ((v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
}

uint64_t sub_100055EC0()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 64) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 64) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 64) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, ((((v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100056278()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_1000562C0()
{

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_100056334()
{

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_10005636C()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  v6 = *(*(v5 - 1) + 80);
  v22 = *(*(v5 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = v0 + ((v4 + v6 + 8) & ~v6);
  sub_100016590(*v7, *(v7 + 8));
  v8 = v5[5];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v7 + v8, v9);
  v12 = v7 + v5[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v11(v12, v9);
        sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

        break;
      case 3:
        v11(v12, v9);
        sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

        break;
      case 4:
        break;
      default:
        goto LABEL_12;
    }
  }

LABEL_12:
  v14 = v5[7];
  if (!(*(v10 + 48))(v7 + v14, 1, v9))
  {
    v11(v7 + v14, v9);
  }

  v15 = v5[8];
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 8))(v7 + v15, v16);
  sub_100016590(*(v7 + v5[9]), *(v7 + v5[9] + 8));
  v17 = (v7 + v5[10]);
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_100016590(*v17, v18);
  }

  v19 = (v7 + v5[11]);
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    sub_100016590(*v19, v20);
  }

  sub_100016590(*(v7 + v5[12]), *(v7 + v5[12] + 8));
  sub_100016590(*(v7 + v5[13]), *(v7 + v5[13] + 8));

  return _swift_deallocObject(v0, ((((v22 + ((v4 + v6 + 8) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100056788()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  v6 = *(*(v5 - 1) + 80);
  v22 = *(*(v5 - 1) + 64);

  (*(v2 + 8))(v0 + v3, v1);

  v7 = v0 + ((v4 + v6 + 16) & ~v6);
  sub_100016590(*v7, *(v7 + 8));
  v8 = v5[5];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v7 + v8, v9);
  v12 = v7 + v5[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v11(v12, v9);
        sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

        break;
      case 3:
        v11(v12, v9);
        sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

        break;
      case 4:
        break;
      default:
        goto LABEL_12;
    }
  }

LABEL_12:
  v14 = v5[7];
  if (!(*(v10 + 48))(v7 + v14, 1, v9))
  {
    v11(v7 + v14, v9);
  }

  v15 = v5[8];
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 8))(v7 + v15, v16);
  sub_100016590(*(v7 + v5[9]), *(v7 + v5[9] + 8));
  v17 = (v7 + v5[10]);
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_100016590(*v17, v18);
  }

  v19 = (v7 + v5[11]);
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    sub_100016590(*v19, v20);
  }

  sub_100016590(*(v7 + v5[12]), *(v7 + v5[12] + 8));
  sub_100016590(*(v7 + v5[13]), *(v7 + v5[13] + 8));

  return _swift_deallocObject(v0, ((((((v4 + v6 + 16) & ~v6) + v22) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100056BAC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100056BE4()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((((v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  v6 = *(*(v5 - 1) + 80);
  v22 = *(*(v5 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);

  v23 = (v6 + v4 + 8) & ~v6;
  v7 = v0 + v23;
  sub_100016590(*v7, *(v7 + 8));
  v8 = v5[5];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v0 + v23 + v8, v9);
  v12 = v0 + v23 + v5[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v11(v12, v9);
        sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

        break;
      case 3:
        v11(v12, v9);
        sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

        break;
      case 4:
        break;
      default:
        goto LABEL_12;
    }
  }

LABEL_12:
  v14 = v5[7];
  if (!(*(v10 + 48))(v7 + v14, 1, v9))
  {
    v11(v7 + v14, v9);
  }

  v15 = v5[8];
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 8))(v7 + v15, v16);
  sub_100016590(*(v7 + v5[9]), *(v7 + v5[9] + 8));
  v17 = (v7 + v5[10]);
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_100016590(*v17, v18);
  }

  v19 = (v7 + v5[11]);
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    sub_100016590(*v19, v20);
  }

  sub_100016590(*(v7 + v5[12]), *(v7 + v5[12] + 8));
  sub_100016590(*(v7 + v5[13]), *(v7 + v5[13] + 8));

  return _swift_deallocObject(v0, ((v22 + v23 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100057010()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000570B4()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v20);
}

uint64_t sub_100057420()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 32) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 32) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, ((v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
}

uint64_t sub_1000577A0()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 64);
  v19 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v19;
  sub_100016590(*(v0 + v19), *(v0 + v19 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v19 + v4, v5);
  v8 = v0 + v19 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v2 = v18;
LABEL_13:

      break;
    case 3:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v10 = v1[7];
  if (!(*(v6 + 48))(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v11 = v1[8];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);
  sub_100016590(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v13 = (v3 + v1[10]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100016590(*v13, v14);
  }

  v15 = (v3 + v1[11]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100016590(*v15, v16);
  }

  sub_100016590(*(v3 + v1[12]), *(v3 + v1[12] + 8));
  sub_100016590(*(v3 + v1[13]), *(v3 + v1[13] + 8));

  return _swift_deallocObject(v0, ((((v19 + v2) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100057B2C()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 64);
  v19 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v19;
  sub_100016590(*(v0 + v19), *(v0 + v19 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v19 + v4, v5);
  v8 = v0 + v19 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v2 = v18;
LABEL_13:

      break;
    case 3:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v10 = v1[7];
  if (!(*(v6 + 48))(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v11 = v1[8];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);
  sub_100016590(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v13 = (v3 + v1[10]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100016590(*v13, v14);
  }

  v15 = (v3 + v1[11]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100016590(*v15, v16);
  }

  sub_100016590(*(v3 + v1[12]), *(v3 + v1[12] + 8));
  sub_100016590(*(v3 + v1[13]), *(v3 + v1[13] + 8));

  return _swift_deallocObject(v0, ((((((v19 + v2) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100057ECC()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100057F5C()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v3 = v0 + ((v2 + 32) & ~v2);
  sub_100016590(*v3, *(v3 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v7(v3 + v1[6], v5);

  v8 = v1[18];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = v1[19];
  v11 = *(v6 + 48);
  if (!v11(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v12 = v3 + v1[20];
  v13 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = *(v13 + 20);
    if (!v11(v12 + v14, 1, v5))
    {
      v7(v12 + v14, v5);
    }
  }

  return _swift_deallocObject(v0, ((v16 + ((v2 + 32) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000581F0()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v1[9];
  v8 = type metadata accessor for MACAddress();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100058350()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (v2 + *(*v1 + 64) + 31) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v1[9];
  v8 = type metadata accessor for MACAddress();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1000584D4()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10005850C()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v1[9];
  v8 = type metadata accessor for MACAddress();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_100058678()
{
  v1 = *(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  if ((*(*(v5 - 1) + 48))(v0 + v2, 1, v5))
  {
    goto LABEL_22;
  }

  sub_100016590(*v4, *(v4 + 8));
  v6 = v5[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v20 = *(v8 + 8);
  v20(v4 + v6, v7);
  v9 = v4 + v5[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v20(v9, v7);
        v19 = v3;
        sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

        break;
      case 3:
        v20(v9, v7);
        v19 = v3;
        sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

        break;
      case 4:
        goto LABEL_14;
      default:
        goto LABEL_15;
    }

    v3 = v19;
LABEL_14:

    goto LABEL_15;
  }

  if (!EnumCaseMultiPayload)
  {
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {

    goto LABEL_14;
  }

LABEL_15:
  v11 = v5[7];
  if (!(*(v8 + 48))(v4 + v11, 1, v7))
  {
    v20(v4 + v11, v7);
  }

  v12 = v5[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v5[9]), *(v4 + v5[9] + 8));
  v14 = (v4 + v5[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v5[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v5[12]), *(v4 + v5[12] + 8));
  sub_100016590(*(v4 + v5[13]), *(v4 + v5[13] + 8));

LABEL_22:

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100058A44()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100058B10()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100058BD4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100058C98()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v1[9];
  v8 = type metadata accessor for MACAddress();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_100058E08()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v20 + v3 + 1);
}

uint64_t sub_1000591A8()
{

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_1000591E0()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10005923C()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 32) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 32) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v20);
}

uint64_t sub_1000595B0()
{
  v1 = type metadata accessor for BeaconEstimatedLocation(0);
  v29 = *(*(v1 - 1) + 80);
  v2 = (v29 + 16) & ~v29;
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  v30 = *(*(v4 - 1) + 64);
  v28 = *(*(v4 - 1) + 80);
  v26 = (v2 + v3 + v28) & ~v28;
  v5 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v27 = *(v7 - 8);
  v8 = *(v27 + 8);
  v8(v5 + v6, v7);
  v8(v5 + v1[6], v7);
  v9 = v1[10];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v31 = *(v11 + 8);
  v31(v5 + v9, v10);
  v12 = v1[12];
  if (!(*(v11 + 48))(v5 + v12, 1, v10))
  {
    v31(v5 + v12, v10);
  }

  v13 = v26;
  v14 = v0 + v26;
  sub_100016590(*(v0 + v26), *(v0 + v26 + 8));
  v15 = v8;
  v8(v0 + v26 + v4[5], v7);
  v16 = v0 + v26 + v4[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v8(v16, v7);
      v19 = v26;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        v18 = v0;
        if (EnumCaseMultiPayload != 4)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      v8(v16, v7);
      v19 = v26;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
    }

    v13 = v19;
    v8 = v15;
    goto LABEL_14;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_14:
    v18 = v0;
    goto LABEL_15;
  }

  v18 = v0;
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_16;
  }

LABEL_15:

LABEL_16:
  v20 = v4[7];
  if (!(*(v27 + 48))(v14 + v20, 1, v7))
  {
    v8(v14 + v20, v7);
  }

  v31(v14 + v4[8], v10);
  sub_100016590(*(v14 + v4[9]), *(v14 + v4[9] + 8));
  v21 = (v14 + v4[10]);
  v22 = v21[1];
  if (v22 >> 60 != 15)
  {
    sub_100016590(*v21, v22);
  }

  v23 = (v14 + v4[11]);
  v24 = v23[1];
  if (v24 >> 60 != 15)
  {
    sub_100016590(*v23, v24);
  }

  sub_100016590(*(v14 + v4[12]), *(v14 + v4[12] + 8));
  sub_100016590(*(v14 + v4[13]), *(v14 + v4[13] + 8));

  return _swift_deallocObject(v18, v13 + v30);
}

uint64_t sub_100059A78()
{

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_100059AD0()
{

  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));

  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));
  sub_100016590(*(v0 + 160), *(v0 + 168));
  sub_100016590(*(v0 + 176), *(v0 + 184));
  sub_100016590(*(v0 + 192), *(v0 + 200));
  sub_100016590(*(v0 + 208), *(v0 + 216));
  sub_100016590(*(v0 + 224), *(v0 + 232));
  sub_100016590(*(v0 + 240), *(v0 + 248));

  sub_100016590(*(v0 + 272), *(v0 + 280));

  return _swift_deallocObject(v0, 296);
}

uint64_t sub_100059B90()
{

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_100059BE8()
{

  sub_100408170(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 41);
}

uint64_t sub_100059C7C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100059CB4()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100059CF8()
{
  v1 = *(sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    goto LABEL_23;
  }

  sub_100016590(*v4, *(v4 + 8));
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  v6 = v5[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v20 = *(v8 + 8);
  v20(v4 + v6, v7);
  v9 = v4 + v5[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v20(v9, v7);
        v19 = v3;
        sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

        break;
      case 3:
        v20(v9, v7);
        v19 = v3;
        sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

        break;
      case 4:
        goto LABEL_15;
      default:
        goto LABEL_16;
    }

    v3 = v19;
LABEL_15:

    goto LABEL_16;
  }

  if (!EnumCaseMultiPayload)
  {
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {

    goto LABEL_15;
  }

LABEL_16:
  v11 = v5[7];
  if (!(*(v8 + 48))(v4 + v11, 1, v7))
  {
    v20(v4 + v11, v7);
  }

  v12 = v5[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v5[9]), *(v4 + v5[9] + 8));
  v14 = (v4 + v5[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v5[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v5[12]), *(v4 + v5[12] + 8));
  sub_100016590(*(v4 + v5[13]), *(v4 + v5[13] + 8));

LABEL_23:

  return _swift_deallocObject(v0, ((((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10005A1AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UUID();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_10005A318(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for UUID();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10005A480(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10005A52C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10005A648()
{

  sub_100016590(v0[8], v0[9]);
  sub_100016590(v0[10], v0[11]);
  sub_100016590(v0[12], v0[13]);
  sub_100016590(v0[14], v0[15]);
  sub_100016590(v0[16], v0[17]);
  sub_100016590(v0[18], v0[19]);
  sub_100016590(v0[20], v0[21]);
  sub_100016590(v0[22], v0[23]);
  sub_100016590(v0[24], v0[25]);
  v1 = v0[27];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[26], v1);
  }

  sub_100016590(v0[28], v0[29]);
  sub_100016590(v0[30], v0[31]);

  v2 = v0[35];
  if (v2 >> 60 != 15)
  {
    sub_100016590(v0[34], v2);
  }

  return _swift_deallocObject(v0, 288);
}

uint64_t sub_10005A720()
{
  sub_100016590(v0[2], v0[3]);
  sub_100016590(v0[4], v0[5]);
  v1 = v0[7];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[6], v1);
  }

  sub_100016590(v0[15], v0[16]);
  sub_100016590(v0[17], v0[18]);
  sub_100016590(v0[19], v0[20]);

  sub_100016590(v0[26], v0[27]);
  sub_100016590(v0[28], v0[29]);
  sub_100016590(v0[30], v0[31]);
  sub_100016590(v0[32], v0[33]);
  sub_100016590(v0[34], v0[35]);
  v2 = v0[37];
  if (v2 >> 60 != 15)
  {
    sub_100016590(v0[36], v2);
  }

  v3 = v0[41];
  if (v3 >> 60 != 15)
  {
    sub_100016590(v0[40], v3);
  }

  sub_100016590(v0[42], v0[43]);
  sub_100016590(v0[44], v0[45]);

  return _swift_deallocObject(v0, 368);
}

uint64_t sub_10005A828(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for BeaconProductInfoRecord(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[9];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_10005A954(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v13 = type metadata accessor for BeaconProductInfoRecord(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[9];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_10005AA80()
{
  swift_unknownObjectRelease();

  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));

  v1 = *(v0 + 136);
  if (v1 >> 60 != 15)
  {
    sub_100016590(*(v0 + 128), v1);
  }

  return _swift_deallocObject(v0, 200);
}

uint64_t sub_10005AB2C()
{
  v1 = (type metadata accessor for AccessoryPairingLockAckResponse(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10005AC1C()
{
  v1 = *(type metadata accessor for AccessoryUnpairData(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return _swift_deallocObject(v0, ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10005ADB0()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10005ADF0()
{
  swift_unknownObjectRelease();
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));

  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));

  v1 = *(v0 + 168);
  if (v1 >> 60 != 15)
  {
    sub_100016590(*(v0 + 160), v1);
  }

  return _swift_deallocObject(v0, 256);
}

uint64_t sub_10005AEB0()
{

  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));

  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));

  v1 = *(v0 + 184);
  if (v1 >> 60 != 15)
  {
    sub_100016590(*(v0 + 176), v1);
  }

  return _swift_deallocObject(v0, 216);
}

uint64_t sub_10005AF58()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10005AF90()
{
  v1 = (type metadata accessor for AccessoryPairingLockCheckResponse(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  sub_100016590(*(v4 + 16), *(v4 + 24));
  sub_100016590(*(v4 + 32), *(v4 + 40));

  v5 = v1[10];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10005B0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

uint64_t sub_10005B170(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_10005B26C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10005B2A4()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10005B2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

uint64_t sub_10005B398(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_10005B458(char a1)
{
  if (a1)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10005B484(char a1)
{
  if (a1)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

id sub_10005B4A4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  *(a2 + 8) = 0;
  return v2;
}

uint64_t sub_10005B4C0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10005B514()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 9);
}

uint64_t sub_10005B614()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10005B64C()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 9);
}

uint64_t sub_10005B730()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10005B784()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (v3 + 32) & ~v3;
  v6 = (v4 + v3 + v5) & ~v3;
  v7 = (v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v5, v1);
  v8(v0 + v6, v1);
  v9 = *(v0 + v7 + 8);
  if (v9 >> 60 != 15)
  {
    sub_100016590(*(v0 + v7), v9);
  }

  return _swift_deallocObject(v0, v7 + 18);
}

uint64_t sub_10005B8A0()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10005B99C()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10005BA88()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10005BB6C()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v25 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for OwnedBeaconGroup(0);
  v24 = *(*(v3 - 8) + 80);
  v23 = *(*(v3 - 8) + 64);
  v26 = v0;
  v4 = v0 + ((v2 + 16) & ~v2);
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v4 + v5, v6);
  v9 = v4 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:

      break;
    case 3:
      v8(v9, v6);
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_12;
  }

LABEL_13:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = v8;
  v17 = (v4 + v1[11]);
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_100016590(*v17, v18);
  }

  v19 = (((v25 + ((v2 + 16) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + v24 + 8) & ~v24;
  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  sub_100016590(*(v26 + v19), *(v26 + v19 + 8));
  v16(v26 + v19 + *(v3 + 24), v6);
  v20 = *(v3 + 28);
  v21 = type metadata accessor for MACAddress();
  (*(*(v21 - 8) + 8))(v26 + v19 + v20, v21);

  return _swift_deallocObject(v26, ((v23 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10005BFF4()
{
  v1 = v0;
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  v20 = *(*(v2 - 1) + 64);
  v3 = (*(*(v2 - 1) + 80) + 16) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v2[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v2[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = v0;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v1 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = v0;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v2[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v2[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v2[9]), *(v4 + v2[9] + 8));
  v14 = (v4 + v2[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v2[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v2[12]), *(v4 + v2[12] + 8));
  sub_100016590(*(v4 + v2[13]), *(v4 + v2[13] + 8));

  return _swift_deallocObject(v1, v3 + v20);
}

uint64_t sub_10005C360()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_100016590(*(v0 + 24), *(v0 + 32));
  v4 = v0 + v2;
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v1[9];
  v8 = type metadata accessor for MACAddress();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10005C4E0()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10005C5D4()
{
  v1 = (type metadata accessor for StandaloneBeacon(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v12 = (((((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v1[7];
  v6 = type metadata accessor for MACAddress();
  v7 = *(*(v6 - 8) + 8);
  v7(v3 + v5, v6);
  v7(v3 + v1[8], v6);

  v8 = v1[10];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  sub_100016590(*(v3 + v1[11]), *(v3 + v1[11] + 8));
  v10 = v3 + v1[12];
  sub_100016590(*v10, *(v10 + 8));
  sub_100016590(*(v10 + 16), *(v10 + 24));
  sub_100016590(*(v10 + 32), *(v10 + 40));
  sub_100016590(*(v3 + v1[13]), *(v3 + v1[13] + 8));

  return _swift_deallocObject(v0, v12 + 8);
}

uint64_t sub_10005C804()
{
  v1 = (type metadata accessor for StandaloneBeacon(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v12 = (((((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v1[7];
  v6 = type metadata accessor for MACAddress();
  v7 = *(*(v6 - 8) + 8);
  v7(v3 + v5, v6);
  v7(v3 + v1[8], v6);

  v8 = v1[10];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  sub_100016590(*(v3 + v1[11]), *(v3 + v1[11] + 8));
  v10 = v3 + v1[12];
  sub_100016590(*v10, *(v10 + 8));
  sub_100016590(*(v10 + 16), *(v10 + 24));
  sub_100016590(*(v10 + 32), *(v10 + 40));
  sub_100016590(*(v3 + v1[13]), *(v3 + v1[13] + 8));

  return _swift_deallocObject(v0, v12 + 8);
}

uint64_t sub_10005CA14()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10005CAB0()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10005CB74()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10005CBAC()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v1[9];
  v8 = type metadata accessor for MACAddress();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_10005CD18()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[8];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v1[9];
  v7 = type metadata accessor for MACAddress();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10005CE68()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v1[9];
  v8 = type metadata accessor for MACAddress();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10005D088()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10005D0DC()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10005D124()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10005D198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10005D204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10005D278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10005D344(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10005D400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10005D4D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DateInterval();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_10005D598()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10005D5D0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10005D614()
{
  v1 = type metadata accessor for AccessoryPairingAnalytics(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v14 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v7 = v1[5];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  sub_100016590(*(v3 + v1[7]), *(v3 + v1[7] + 8));

  sub_100016590(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v8 = v1[12];
  v9 = type metadata accessor for MACAddress();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v1[14];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);

  return _swift_deallocObject(v0, v2 + v14);
}

uint64_t sub_10005D85C()
{
  sub_100016590(v0[2], v0[3]);
  sub_100016590(v0[4], v0[5]);
  sub_100016590(v0[6], v0[7]);
  v1 = v0[9];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[8], v1);
  }

  v2 = v0[11];
  if (v2 >> 60 != 15)
  {
    sub_100016590(v0[10], v2);
  }

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_10005D900()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10005D938()
{

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_10005D980()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_10005D9B8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10005D9FC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10005DA34()
{

  sub_100016590(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10005DA74()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10005DB90()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10005DBC8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10005DC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10005DCDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10005DD94()
{

  return _swift_deallocObject(v0, 97);
}

uint64_t sub_10005DDDC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10005DEB0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10005DFA0()
{
  v1 = (type metadata accessor for LocationFetcher(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100007BAC((v0 + v2 + 24));
  v4 = v1[10];
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10005E0E8()
{

  sub_100007BAC((v0 + 40));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_10005E138()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10005E1C4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10005E204()
{
  v1 = *(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10005E35C()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10005E3A4()
{
  v1 = *(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  swift_unknownObjectRelease();

  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, ((((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10005E510()
{

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10005E550()
{
  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10005E598()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10005E5D0()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10005E610()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v5 + v4) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v3;
  v8 = (v5 + v7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v9 = *(v2 + 8);
  v9(v0 + v4, v1);

  v9(v0 + v7, v1);

  return _swift_deallocObject(v0, v8 + 16);
}

uint64_t sub_10005E740()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10005E808()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10005E840()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  v24 = *(*(v4 - 1) + 80);
  v5 = (v2 + v3 + v24) & ~v24;
  v25 = *(*(v4 - 1) + 64);

  v6 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v7 = v1[8];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v6 + v7, v8);
  v11 = v1[9];
  v12 = type metadata accessor for MACAddress();
  (*(*(v12 - 8) + 8))(v6 + v11, v12);

  v13 = v0 + v5;
  sub_100016590(*(v0 + v5), *(v0 + v5 + 8));
  v10(v0 + v5 + v4[5], v8);
  v14 = v0 + v5 + v4[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v10(v14, v8);
        sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

        break;
      case 3:
        v10(v14, v8);
        sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

        break;
      case 4:
        break;
      default:
        goto LABEL_12;
    }
  }

LABEL_12:
  v16 = v4[7];
  if (!(*(v9 + 48))(v13 + v16, 1, v8))
  {
    v10(v13 + v16, v8);
  }

  v17 = v4[8];
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 8))(v13 + v17, v18);
  sub_100016590(*(v13 + v4[9]), *(v13 + v4[9] + 8));
  v19 = (v13 + v4[10]);
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    sub_100016590(*v19, v20);
  }

  v21 = (v13 + v4[11]);
  v22 = v21[1];
  if (v22 >> 60 != 15)
  {
    sub_100016590(*v21, v22);
  }

  sub_100016590(*(v13 + v4[12]), *(v13 + v4[12] + 8));
  sub_100016590(*(v13 + v4[13]), *(v13 + v4[13] + 8));

  return _swift_deallocObject(v0, ((v25 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10005ECC0()
{
  v1 = v0;
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  v20 = *(*(v2 - 1) + 64);
  v3 = (*(*(v2 - 1) + 80) + 16) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v2[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v2[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = v0;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v1 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = v0;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v2[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v2[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v2[9]), *(v4 + v2[9] + 8));
  v14 = (v4 + v2[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v2[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v2[12]), *(v4 + v2[12] + 8));
  sub_100016590(*(v4 + v2[13]), *(v4 + v2[13] + 8));

  return _swift_deallocObject(v1, v3 + v20);
}

uint64_t sub_10005F028()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[8];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v1[9];
  v7 = type metadata accessor for MACAddress();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10005F178()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v1[9];
  v8 = type metadata accessor for MACAddress();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10005F2E8()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, v3 + v2 + 1);
}

uint64_t sub_10005F40C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64) + v3;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 1);
}

uint64_t sub_10005F4DC()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);

  v3 = v0 + ((v2 + 24) & ~v2);
  sub_100016590(*v3, *(v3 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v7(v3 + v1[6], v5);

  v8 = v1[18];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = v1[19];
  v11 = *(v6 + 48);
  if (!v11(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v12 = v3 + v1[20];
  v13 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = *(v13 + 20);
    if (!v11(v12 + v14, 1, v5))
    {
      v7(v12 + v14, v5);
    }
  }

  return _swift_deallocObject(v0, ((v2 + 24) & ~v2) + v16);
}

uint64_t sub_10005F7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ServerStatusCode();
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

uint64_t sub_10005F8AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ServerStatusCode();
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

uint64_t sub_10005F968()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10005F9A8()
{
  v1 = sub_1000BC4D4(&unk_1016A2780, &qword_1013AB558);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  sub_100007BAC((v0 + v4));

  return _swift_deallocObject(v0, ((((v4 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10005FA90()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10005FAC8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10005FB74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10005FC28()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10005FC78()
{
  v1 = sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10005FD5C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10005FD9C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10005FE0C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10005FE58()
{
  v1 = sub_1000BC4D4(&qword_1016A2C00, &unk_1013AC440);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10005FF28()
{
  v1 = sub_1000BC4D4(&qword_1016A2C00, &unk_1013AC440);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  v5 = (v0 + v4);
  v6 = *(v0 + v4 + 8);
  if (v6 >> 60 != 15)
  {
    sub_100016590(*v5, v6);
  }

  sub_100016590(v5[8], v5[9]);
  sub_100016590(v5[10], v5[11]);
  sub_100016590(v5[12], v5[13]);

  sub_100016590(v5[18], v5[19]);
  sub_100016590(v5[20], v5[21]);
  sub_100016590(v5[22], v5[23]);
  sub_100016590(v5[24], v5[25]);
  sub_100016590(v5[26], v5[27]);
  v7 = v5[29];
  if (v7 >> 60 != 15)
  {
    sub_100016590(v5[28], v7);
  }

  sub_100016590(v5[30], v5[31]);
  sub_100016590(v5[32], v5[33]);

  v8 = v5[37];
  if (v8 >> 60 != 15)
  {
    sub_100016590(v5[36], v8);
  }

  return _swift_deallocObject(v0, ((v4 + 311) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000600E8()
{
  v1 = v0[3];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[2], v1);
  }

  sub_100016590(v0[10], v0[11]);
  sub_100016590(v0[12], v0[13]);
  sub_100016590(v0[14], v0[15]);

  sub_100016590(v0[20], v0[21]);
  sub_100016590(v0[22], v0[23]);
  sub_100016590(v0[24], v0[25]);
  sub_100016590(v0[26], v0[27]);
  sub_100016590(v0[28], v0[29]);
  v2 = v0[31];
  if (v2 >> 60 != 15)
  {
    sub_100016590(v0[30], v2);
  }

  sub_100016590(v0[32], v0[33]);
  sub_100016590(v0[34], v0[35]);

  v3 = v0[39];
  if (v3 >> 60 != 15)
  {
    sub_100016590(v0[38], v3);
  }

  return _swift_deallocObject(v0, 320);
}

uint64_t sub_1000601E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000602B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10006041C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100060454()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10006048C()
{

  return _swift_deallocObject(v0, 41);
}

uint64_t sub_1000604CC()
{

  return _swift_deallocObject(v0, 24);
}

id sub_100060504@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_10006059C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000605F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100060638()
{
  v1 = sub_1000BC4D4(&qword_1016A3440, &qword_1013ADEB8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10006071C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMNAccountType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for URLComponents();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10006080C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FMNAccountType();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for URLComponents();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100060910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100060A2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100060BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100060C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_100060CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100060D20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100060D90(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000BC4D4(&qword_1016A3B60, &qword_1013AEE08);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000BC4D4(&qword_1016A3B68, &unk_1013AEE10);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 247)
  {
    v14 = *(a1 + a3[6]);
    if (v14 <= 8)
    {
      v15 = 8;
    }

    else
    {
      v15 = *(a1 + a3[6]);
    }

    v16 = v15 - 8;
    if (v14 >= 8)
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = type metadata accessor for Date();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[7];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_100060F20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000BC4D4(&qword_1016A3B60, &qword_1013AEE08);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1000BC4D4(&qword_1016A3B68, &unk_1013AEE10);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 247)
  {
    *(a1 + a4[6]) = a2 + 8;
  }

  else
  {
    v15 = type metadata accessor for Date();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1000610A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100061160(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10006120C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMNAccountType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for URLComponents();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000612FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FMNAccountType();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for URLComponents();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000613F8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for MACAddress();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[9] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_100061504(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = type metadata accessor for MACAddress();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[9] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_100061618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for MACAddress();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100061690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for MACAddress();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_10006170C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMNAccountType();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100061778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMNAccountType();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100061858(uint64_t a1)
{
  result = type metadata accessor for SharedBeaconRecord(0);
  *(a1 + *(result + 52)) = 1;
  return result;
}

uint64_t sub_1000618A4()
{
  v1 = type metadata accessor for ShareRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v12 = *(*(v1 - 1) + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2 + v3, v4);
  v5(v0 + v2 + v1[6], v4);
  v6 = v1[7];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v2 + v6, v7);
  v10 = v1[8];
  if (!(*(v8 + 48))(v0 + v2 + v10, 1, v7))
  {
    v9(v0 + v2 + v10, v7);
  }

  return _swift_deallocObject(v0, ((v12 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100061AA8()
{
  v1 = type metadata accessor for ShareRecord(0);
  v12 = *(*(v1 - 1) + 64);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2 + v3, v4);
  v5(v0 + v2 + v1[6], v4);
  v6 = v1[7];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v2 + v6, v7);
  v10 = v1[8];
  if (!(*(v8 + 48))(v0 + v2 + v10, 1, v7))
  {
    v9(v0 + v2 + v10, v7);
  }

  return _swift_deallocObject(v0, ((((v12 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100061CA8()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100061CF8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100061D34()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100061DDC()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 32) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 32) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v20);
}

uint64_t sub_100062150()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 64);
  v19 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v19;
  sub_100016590(*(v0 + v19), *(v0 + v19 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v19 + v4, v5);
  v8 = v0 + v19 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v2 = v18;
LABEL_13:

      break;
    case 3:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v10 = v1[7];
  if (!(*(v6 + 48))(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v11 = v1[8];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);
  sub_100016590(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v13 = (v3 + v1[10]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100016590(*v13, v14);
  }

  v15 = (v3 + v1[11]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100016590(*v15, v16);
  }

  sub_100016590(*(v3 + v1[12]), *(v3 + v1[12] + 8));
  sub_100016590(*(v3 + v1[13]), *(v3 + v1[13] + 8));

  return _swift_deallocObject(v0, ((v2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000624F8()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, ((v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
}

uint64_t sub_10006287C()
{
  v1 = type metadata accessor for ShareInstruction(0);
  v26 = *(*(v1 - 8) + 80);
  v24 = *(*(v1 - 8) + 64);

  v27 = v0;
  v25 = (v26 + 24) & ~v26;
  v2 = v0 + v25;

  v23 = v1;
  v3 = v0 + v25 + *(v1 + 24);
  sub_100016590(*v3, *(v3 + 8));
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  v5 = v4[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v3 + v5, v6);
  v9 = v3 + v4[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:

      break;
    case 3:
      v8(v9, v6);
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_12;
  }

LABEL_13:
  v11 = v4[7];
  if (!(*(v7 + 48))(v3 + v11, 1, v6))
  {
    v8(v3 + v11, v6);
  }

  v22 = v8;
  v12 = v4[8];
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v3 + v12, v13);
  sub_100016590(*(v3 + v4[9]), *(v3 + v4[9] + 8));
  v16 = (v3 + v4[10]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  v18 = (v3 + v4[11]);
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_100016590(*v18, v19);
  }

  sub_100016590(*(v3 + v4[12]), *(v3 + v4[12] + 8));
  sub_100016590(*(v3 + v4[13]), *(v3 + v4[13] + 8));

  v22(v2 + *(v23 + 32), v6);
  v20 = *(v23 + 36);
  if (!(*(v14 + 48))(v2 + v20, 1, v13))
  {
    v15(v2 + v20, v13);
  }

  return _swift_deallocObject(v27, ((v24 + v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100062CC4()
{
  v1 = type metadata accessor for ShareRecord(0);
  v13 = *(*(v1 - 1) + 64);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2 + v3, v4);
  v5(v0 + v2 + v1[6], v4);
  v6 = v1[7];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v2 + v6, v7);
  v10 = v1[8];
  if (!(*(v8 + 48))(v0 + v2 + v10, 1, v7))
  {
    v9(v0 + v2 + v10, v7);
  }

  v11 = (v13 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v11 + 8);
}

uint64_t sub_100062EC8()
{
  v1 = *(sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = v0 + v2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v15 = v3;
    sub_100016590(*v4, *(v4 + 8));
    v5 = type metadata accessor for ShareRecord(0);
    v6 = v5[5];
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 8);
    v8(v4 + v6, v7);
    v8(v4 + v5[6], v7);
    v9 = v5[7];
    v10 = type metadata accessor for Date();
    v11 = *(v10 - 8);
    v12 = *(v11 + 8);
    v12(v4 + v9, v10);
    v13 = v5[8];
    if (!(*(v11 + 48))(v4 + v13, 1, v10))
    {
      v12(v4 + v13, v10);
    }

    v3 = v15;
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000630DC()
{
  v1 = type metadata accessor for ShareInstruction(0);
  v26 = *(*(v1 - 8) + 80);
  v24 = *(*(v1 - 8) + 64);

  v27 = v0;
  v25 = (v26 + 32) & ~v26;
  v2 = v0 + v25;

  v23 = v1;
  v3 = v0 + v25 + *(v1 + 24);
  sub_100016590(*v3, *(v3 + 8));
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  v5 = v4[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v3 + v5, v6);
  v9 = v3 + v4[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:

      break;
    case 3:
      v8(v9, v6);
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_12;
  }

LABEL_13:
  v11 = v4[7];
  if (!(*(v7 + 48))(v3 + v11, 1, v6))
  {
    v8(v3 + v11, v6);
  }

  v22 = v8;
  v12 = v4[8];
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v3 + v12, v13);
  sub_100016590(*(v3 + v4[9]), *(v3 + v4[9] + 8));
  v16 = (v3 + v4[10]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  v18 = (v3 + v4[11]);
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_100016590(*v18, v19);
  }

  sub_100016590(*(v3 + v4[12]), *(v3 + v4[12] + 8));
  sub_100016590(*(v3 + v4[13]), *(v3 + v4[13] + 8));

  v22(v2 + *(v23 + 32), v6);
  v20 = *(v23 + 36);
  if (!(*(v14 + 48))(v2 + v20, 1, v13))
  {
    v15(v2 + v20, v13);
  }

  return _swift_deallocObject(v27, v25 + v24);
}

uint64_t sub_10006350C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_10006355C()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000635D0()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100063608()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100063648()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 64);
  v19 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v19;
  sub_100016590(*(v0 + v19), *(v0 + v19 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v19 + v4, v5);
  v8 = v0 + v19 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v2 = v18;
LABEL_13:

      break;
    case 3:
      v7(v8, v5);
      v18 = v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v10 = v1[7];
  if (!(*(v6 + 48))(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v11 = v1[8];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);
  sub_100016590(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v13 = (v3 + v1[10]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100016590(*v13, v14);
  }

  v15 = (v3 + v1[11]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100016590(*v15, v16);
  }

  sub_100016590(*(v3 + v1[12]), *(v3 + v1[12] + 8));
  sub_100016590(*(v3 + v1[13]), *(v3 + v1[13] + 8));

  return _swift_deallocObject(v0, ((v2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
}

uint64_t sub_1000639C4()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100063A0C()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v16 = *(*(v1 - 1) + 64);
  v15 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v2 = v0 + v15;
  sub_100016590(*(v0 + v15), *(v0 + v15 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v15 + v3, v4);
  v6(v0 + v15 + v1[6], v4);

  v7 = v1[18];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v15 + v7, v8);
  v9 = v1[19];
  v10 = *(v5 + 48);
  if (!v10(v0 + v15 + v9, 1, v4))
  {
    v6(v2 + v9, v4);
  }

  v11 = v2 + v1[20];
  v12 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = *(v12 + 20);
    if (!v10(v11 + v13, 1, v4))
    {
      v6(v11 + v13, v4);
    }
  }

  return _swift_deallocObject(v0, ((((v16 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100063CA8()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v16 = *(*(v1 - 1) + 64);
  v15 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v2 = v0 + v15;
  sub_100016590(*(v0 + v15), *(v0 + v15 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v15 + v3, v4);
  v6(v0 + v15 + v1[6], v4);

  v7 = v1[18];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v15 + v7, v8);
  v9 = v1[19];
  v10 = *(v5 + 48);
  if (!v10(v0 + v15 + v9, 1, v4))
  {
    v6(v2 + v9, v4);
  }

  v11 = v2 + v1[20];
  v12 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = *(v12 + 20);
    if (!v10(v11 + v13, 1, v4))
    {
      v6(v11 + v13, v4);
    }
  }

  return _swift_deallocObject(v0, ((v16 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
}

uint64_t sub_100063F4C()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 48) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 48) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, ((v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000642D4()
{
  v1 = v0;
  v2 = type metadata accessor for ShareRecord(0);
  v29 = *(*(v2 - 1) + 80);
  v3 = (v29 + 32) & ~v29;
  v4 = (*(*(v2 - 1) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  v28 = *(*(v5 - 1) + 80);
  v25 = (v4 + v28 + 24) & ~v28;
  v27 = *(*(v5 - 1) + 64);
  swift_unknownObjectRelease();
  v6 = v1 + v3;
  sub_100016590(*(v1 + v3), *(v1 + v3 + 8));
  v7 = v2[5];
  v8 = type metadata accessor for UUID();
  v26 = *(v8 - 8);
  v9 = *(v26 + 8);
  v9(v6 + v7, v8);
  v9(v6 + v2[6], v8);
  v10 = v2[7];
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v30 = *(v12 + 8);
  v30(v6 + v10, v11);
  v13 = v2[8];
  if (!(*(v12 + 48))(v6 + v13, 1, v11))
  {
    v30(v6 + v13, v11);
  }

  v14 = v1 + v25;
  sub_100016590(*(v1 + v25), *(v1 + v25 + 8));
  v9(v1 + v25 + v5[5], v8);
  v15 = v1 + v25 + v5[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = v1;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_15;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9(v15, v8);
      v18 = v9;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_14:
      v9 = v18;
LABEL_15:

      break;
    case 3:
      v9(v15, v8);
      v18 = v9;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_14;
    case 4:
      goto LABEL_15;
  }

LABEL_16:
  v19 = v5[7];
  if (!(*(v26 + 48))(v14 + v19, 1, v8))
  {
    v9(v14 + v19, v8);
  }

  v30(v14 + v5[8], v11);
  sub_100016590(*(v14 + v5[9]), *(v14 + v5[9] + 8));
  v20 = (v14 + v5[10]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100016590(*v20, v21);
  }

  v22 = (v14 + v5[11]);
  v23 = v22[1];
  if (v23 >> 60 != 15)
  {
    sub_100016590(*v22, v23);
  }

  sub_100016590(*(v14 + v5[12]), *(v14 + v5[12] + 8));
  sub_100016590(*(v14 + v5[13]), *(v14 + v5[13] + 8));

  return _swift_deallocObject(v17, ((v27 + v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000647C8()
{
  v1 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000648A4()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10006493C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10006498C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1000649D4()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100064A0C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100064A54()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v23 = *(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v19 = *(v3 + 80);
  v18 = *(v3 + 64);
  v24 = v0;
  v21 = (v23 + 16) & ~v23;
  v4 = v0 + v21;
  sub_100016590(*(v0 + v21), *(v0 + v21 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v21 + v5, v6);
  v8(v0 + v21 + v1[6], v6);

  v9 = *(v3 + 8);
  v22 = v2;
  v9(v0 + v21 + v1[18], v2);
  v10 = v1[19];
  v11 = *(v7 + 48);
  if (!v11(v4 + v10, 1, v6))
  {
    v8(v4 + v10, v6);
  }

  v12 = v4 + v1[20];
  v13 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = *(v13 + 20);
    if (!v11(v12 + v14, 1, v6))
    {
      v8(v12 + v14, v6);
    }
  }

  v15 = (v21 + v20 + v19) & ~v19;
  v16 = (v18 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9(v24 + v15, v22);

  return _swift_deallocObject(v24, v16 + 8);
}

uint64_t sub_100064D50()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v16 = *(*(v1 - 1) + 64);
  v17 = v0;
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v7(v3 + v1[6], v5);

  v8 = v1[18];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = v1[19];
  v11 = *(v6 + 48);
  if (!v11(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v12 = v3 + v1[20];
  v13 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = *(v13 + 20);
    if (!v11(v12 + v14, 1, v5))
    {
      v7(v12 + v14, v5);
    }
  }

  return _swift_deallocObject(v17, v2 + v16);
}

uint64_t sub_100064FD4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000652C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SharedBeaconRecord(0);
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

uint64_t sub_100065384(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SharedBeaconRecord(0);
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

uint64_t sub_10006543C()
{
  v1 = type metadata accessor for MessagingMessageContext(0);
  v2 = (*(*(v1 - 8) + 80) + 80) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  sub_100016590(*(v0 + 48), *(v0 + 56));

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v0 + v2, 1, v5);
  v8 = *(v6 + 8);
  if (!v7)
  {
    v8(v0 + v2, v5);
  }

  v8(v4 + *(v1 + 20), v5);

  v9 = *(v1 + 44);
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v4 + v9, v10);

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000656D4()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10006570C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100065748()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100065780()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000657BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000657F4()
{

  return _swift_deallocObject(v0, 33);
}

uint64_t sub_100065834()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for OwnerSharingCircle(0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);

  v8 = *(v2 + 8);
  v8(v0 + v3, v1);
  sub_100016590(*(v0 + v6), *(v0 + v6 + 8));
  v8(v0 + v6 + v5[7], v1);
  v8(v0 + v6 + v5[8], v1);

  return _swift_deallocObject(v0, v6 + v7);
}

uint64_t sub_1000659B0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for OwnedBeaconRecord(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for BeaconNamingRecord(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100065AD4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for OwnedBeaconRecord(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for BeaconNamingRecord(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100065BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URLComponents();
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

uint64_t sub_100065CB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URLComponents();
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

uint64_t sub_100065DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
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

uint64_t sub_100065E34(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

BOOL sub_100065EF0(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1000662E0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100066318()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100066350@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 400))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000663B0()
{
  v1 = (type metadata accessor for LocationFetcher(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  sub_100007BAC((v4 + 24));
  v5 = v1[10];
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  sub_100007BAC((v0 + v3));

  return _swift_deallocObject(v0, ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10006650C()
{
  v1 = (type metadata accessor for LocationFetcher(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for BeaconEstimatedLocation(0);
  v24 = *(*(v4 - 1) + 80);
  v5 = (v2 + v3 + v24) & ~v24;
  v22 = *(*(v4 - 1) + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v21 = *(v7 + 80);
  v20 = *(v7 + 64);

  v8 = v0 + v2;

  sub_100007BAC((v8 + 24));
  v9 = v1[10];
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  v25 = v0;
  v23 = v5;
  v11 = v0 + v5;
  sub_100016590(*(v0 + v5), *(v0 + v5 + 8));
  v12 = *(v7 + 8);
  v12(v11 + v4[5], v6);
  v12(v11 + v4[6], v6);
  v13 = v4[10];
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(v11 + v13, v14);
  v17 = v4[12];
  if (!(*(v15 + 48))(v11 + v17, 1, v14))
  {
    v16(v11 + v17, v14);
  }

  v18 = (v23 + v22 + v21) & ~v21;

  v12(v25 + v18, v6);

  return _swift_deallocObject(v25, v20 + v18 + 1);
}

uint64_t sub_100066844()
{
  v1 = (type metadata accessor for LocationFetcher(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v22 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v28 = *(v3 - 8);
  v27 = (v22 + *(v28 + 80) + 16) & ~*(v28 + 80);
  v4 = (*(v28 + 64) + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = type metadata accessor for RawSearchResult(0);
  v26 = *(*(v9 - 1) + 80);
  v30 = (v7 + v8 + v26) & ~v26;
  v25 = *(*(v9 - 1) + 64);
  v31 = type metadata accessor for Date();
  v10 = *(v31 - 8);
  v23 = *(v10 + 80);
  v24 = *(v10 + 64);

  sub_100007BAC((v0 + v2 + 24));
  v11 = v1[10];
  v12 = type metadata accessor for Logger();
  (*(*(v12 - 8) + 8))(v0 + v2 + v11, v12);

  v13 = *(v0 + v22 + 8);
  if ((~v13 & 0x3000000000000000) != 0)
  {
    sub_10001E524(*(v0 + v22), v13);
  }

  v14 = *(v6 + 8);
  v14(v0 + v27, v5);
  sub_100007BAC((v0 + v27 + *(v3 + 20)));

  v29 = v5;
  v14(v0 + v7, v5);
  v15 = v0 + v30;
  v16 = v3;
  v17 = *(v10 + 8);
  v17(v0 + v30 + v9[5], v31);
  v18 = v9[10];
  if (!(*(v10 + 48))(v0 + v30 + v18, 1, v31))
  {
    v17(v15 + v18, v31);
  }

  v19 = v15 + v9[11];
  if (!(*(v28 + 48))(v19, 1, v16))
  {
    v14(v19, v29);
    sub_100007BAC((v19 + *(v16 + 20)));
  }

  v20 = (v30 + v25 + v23) & ~v23;
  v14(v15 + v9[12], v29);
  v17(v0 + v20, v31);

  return _swift_deallocObject(v0, v20 + v24);
}

uint64_t sub_100066CE0()
{
  v1 = v0;
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  v20 = *(*(v2 - 1) + 64);
  v3 = (*(*(v2 - 1) + 80) + 16) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v2[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v2[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = v0;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v1 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = v0;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v2[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v2[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v2[9]), *(v4 + v2[9] + 8));
  v14 = (v4 + v2[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v2[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v2[12]), *(v4 + v2[12] + 8));
  sub_100016590(*(v4 + v2[13]), *(v4 + v2[13] + 8));

  return _swift_deallocObject(v1, v3 + v20);
}

uint64_t sub_100067048()
{
  v1 = (type metadata accessor for LocationFetcher(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  sub_100007BAC((v4 + 24));
  v5 = v1[10];
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  sub_100007BAC((v0 + v3));

  return _swift_deallocObject(v0, v3 + 40);
}

uint64_t sub_10006718C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000671C4()
{
  v1 = (type metadata accessor for LocationFetcher(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  sub_100007BAC((v4 + 24));
  v5 = v1[10];
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_100067320()
{
  v1 = (type metadata accessor for LocationFetcher(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;

  sub_100007BAC((v4 + 24));
  v5 = v1[10];
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_100067488()
{
  v1 = v0;
  v2 = (type metadata accessor for LocationFetcher(0) - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v4 = (*(*v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v25 = *(v5 - 8);
  v6 = (v4 + *(v25 + 80) + 40) & ~*(v25 + 80);
  v7 = *(v25 + 64);
  v22 = type metadata accessor for Date();
  v8 = *(v22 - 8);
  v26 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for RawSearchResult(0);
  v23 = *(*(v10 - 1) + 80);
  v28 = (v26 + v9 + v23) & ~v23;
  v24 = *(*(v10 - 1) + 64);
  swift_unknownObjectRelease();
  v11 = v1 + v3;

  sub_100007BAC((v11 + 24));
  v12 = v2[10];
  v13 = type metadata accessor for Logger();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);

  sub_100007BAC((v1 + v4));
  v14 = v1 + v6;
  v15 = type metadata accessor for UUID();
  v16 = *(*(v15 - 8) + 8);
  v16(v14, v15);
  sub_100007BAC((v14 + *(v5 + 20)));
  v17 = *(v8 + 8);
  v17(v1 + v26, v22);
  v27 = v1;
  v18 = v1 + v28;
  v17(v1 + v28 + v10[5], v22);
  v19 = v10[10];
  if (!(*(v8 + 48))(v1 + v28 + v19, 1, v22))
  {
    v17(v18 + v19, v22);
  }

  v20 = v18 + v10[11];
  if (!(*(v25 + 48))(v20, 1, v5))
  {
    v16(v20, v15);
    sub_100007BAC((v20 + *(v5 + 20)));
  }

  v16(v18 + v10[12], v15);

  return _swift_deallocObject(v27, v28 + v24);
}

uint64_t sub_100067888()
{
  v1 = (type metadata accessor for LocationFetcher(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = (((v2 + *(*v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v4 = v0 + v2;

  sub_100007BAC((v4 + 24));
  v5 = v1[10];
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_100067A60()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100067AA0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100067AD8()
{
  v1 = (type metadata accessor for LocationFetcher(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v2;

  sub_100007BAC((v8 + 24));
  v9 = v1[10];
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  (*(v5 + 8))(v0 + v6, v4);

  return _swift_deallocObject(v0, v6 + v7);
}

uint64_t sub_100067C94()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100067D58(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Logger();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_100067E04(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void **sub_100067EFC@<X0>(void **result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    v3 = 0;
  }

  else
  {
    result = v3;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_100067F50()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100067F88()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100067FC0()
{

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_100068010()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_100068060()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 65);
}

uint64_t sub_1000680B4()
{
  v1 = *(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v6 + 8);
}

uint64_t sub_1000681E0()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100068218()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10006829C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for UUID();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100068354(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000683F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100068470()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000684B0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100068574()
{
  v1 = type metadata accessor for PairingSuccessResult();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10006864C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 11)
  {
    v4 = *(a1 + 8) >> 60;
    v5 = ((4 * v4) & 0xC) == 0;
    v6 = ((4 * v4) & 0xC | (v4 >> 2)) ^ 0xF;
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

void *sub_10006870C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 11)
  {
    *result = 0;
    result[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

_BYTE *sub_100068810@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *result;
  a2[41] = 0;
  return result;
}

uint64_t sub_100068834()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100068870()
{
  v1 = (type metadata accessor for AccessoryCommand(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[7], v5);
  v7 = v4 + v1[8];
  sub_10067B5AC(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1000689B0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_100068ABC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return _swift_deallocObject(v0, v8 + 16);
}

uint64_t sub_100068B90()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100068BE0()
{

  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100068C20()
{
  sub_10067F4FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), sub_100016590);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_100068C74()
{

  sub_10067F4FC(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), sub_100016590);

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_100068CD8()
{
  v1 = *(v0 + 56);
  if (v1 <= 4)
  {
    if (*(v0 + 56) <= 1u)
    {
      if (*(v0 + 56))
      {
        sub_100007BAC((v0 + 16));
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (v1 == 2)
    {

      goto LABEL_23;
    }

    if (v1 == 3)
    {

      goto LABEL_24;
    }

    if (v1 != 4)
    {
      goto LABEL_24;
    }

LABEL_11:

    goto LABEL_24;
  }

  if (*(v0 + 56) <= 7u)
  {
    if (v1 != 5 && v1 != 6)
    {
      if (v1 != 7)
      {
        goto LABEL_24;
      }

LABEL_23:

      goto LABEL_24;
    }

    goto LABEL_11;
  }

  switch(v1)
  {
    case 8u:

      goto LABEL_23;
    case 9u:

      break;
    case 0xAu:
      goto LABEL_23;
  }

LABEL_24:

  return _swift_deallocObject(v0, 57);
}

uint64_t sub_100068DE8()
{
  v1 = (type metadata accessor for AccessoryCommand(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64) + v2;

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[7], v5);
  v7 = v4 + v1[8];
  sub_10067B5AC(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));

  return _swift_deallocObject(v0, v3 + 1);
}

uint64_t sub_100068F18()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100068F50()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (type metadata accessor for AccessoryCommand(0) - 8);
  v8 = (v6 + v5 + *(*v7 + 80)) & ~*(*v7 + 80);
  v12 = (((*(*v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);
  v9(v0 + v8, v1);
  v9(v0 + v8 + v7[7], v1);
  v10 = v0 + v8 + v7[8];
  sub_10067B5AC(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32));

  return _swift_deallocObject(v0, ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100069148()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (type metadata accessor for AccessoryCommand(0) - 8);
  v8 = (v6 + v5 + *(*v7 + 80)) & ~*(*v7 + 80);
  v12 = (((*(*v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);
  v9(v0 + v8, v1);
  v9(v0 + v8 + v7[7], v1);
  v10 = v0 + v8 + v7[8];
  sub_10067B5AC(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32));

  return _swift_deallocObject(v0, v12 + 8);
}

uint64_t sub_100069328()
{
  v1 = (type metadata accessor for AccessoryCommand(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[7], v5);
  v7 = v4 + v1[8];
  sub_10067B5AC(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));

  return _swift_deallocObject(v0, ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000694B0()
{
  v1 = (type metadata accessor for AccessoryCommand(0) - 8);
  v2 = (*(*v1 + 80) + 33) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_10067FBEC(*(v0 + 24), *(v0 + 32));
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[7], v5);
  v7 = v4 + v1[8];
  sub_10067B5AC(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1000695F4()
{
  v1 = (type metadata accessor for AccessoryCommand(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  sub_10067FBEC(*(v0 + 16), *(v0 + 24));

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v5(v0 + v2 + v1[7], v4);
  v6 = v0 + v2 + v1[8];
  sub_10067B5AC(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100069728()
{
  v1 = (type metadata accessor for AccessoryCommand(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = (v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  v11 = v0 + v2;
  v12 = *(v5 + 8);
  v12(v11, v4);
  v12(v11 + v1[7], v4);
  v13 = v11 + v1[8];
  sub_10067B5AC(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24), *(v13 + 32));

  v12(v0 + v7, v4);
  v12(v0 + v9, v4);

  return _swift_deallocObject(v0, v10 + 8);
}

uint64_t sub_100069908()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100069944()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10006997C()
{
  v1 = (type metadata accessor for AccessoryCommand(0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v2 + v3 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;

  v10 = v0 + v2;
  v11 = *(v5 + 8);
  v11(v10, v4);
  v11(v10 + v1[7], v4);
  v12 = v10 + v1[8];
  sub_10067B5AC(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32));
  v11(v0 + v7, v4);
  v11(v0 + v9, v4);

  return _swift_deallocObject(v0, v9 + v8);
}

uint64_t sub_100069B44()
{
  v1 = (type metadata accessor for AccessoryCommand(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v5(v0 + v2 + v1[7], v4);
  v6 = v0 + v2 + v1[8];
  sub_10067B5AC(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100069C74()
{

  return _swift_deallocObject(v0, 32);
}

void *sub_100069D10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_101124F50(0, v1, 0);
  v2 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v4 = result;
  v5 = a1;
  v6 = 0;
  v22 = v1;
  while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v5 + 32))
  {
    v9 = v4 >> 6;
    if ((*(v2 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(v5 + 36);
    v10 = _swiftEmptyArrayStorage[2];
    v11 = _swiftEmptyArrayStorage[3];
    result = **(&off_10162F760 + *(*(v5 + 48) + v4));
    if (v10 >= v11 >> 1)
    {
      v19 = v11 > 1;
      v20 = result;
      sub_101124F50(v19, v10 + 1, 1);
      result = v20;
    }

    _swiftEmptyArrayStorage[2] = v10 + 1;
    _swiftEmptyArrayStorage[v10 + 4] = result;
    v7 = 1 << *(v5 + 32);
    if (v4 >= v7)
    {
      goto LABEL_22;
    }

    v2 = a1 + 56;
    v12 = *(a1 + 56 + 8 * v9);
    if ((v12 & (1 << v4)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(v5 + 36))
    {
      goto LABEL_24;
    }

    v13 = v12 & (-2 << (v4 & 0x3F));
    if (v13)
    {
      v7 = __clz(__rbit64(v13)) | v4 & 0x7FFFFFFFFFFFFFC0;
      v8 = v22;
    }

    else
    {
      v14 = v9 << 6;
      v15 = v9 + 1;
      v16 = (a1 + 64 + 8 * v9);
      v8 = v22;
      while (v15 < (v7 + 63) >> 6)
      {
        v18 = *v16++;
        v17 = v18;
        v14 += 64;
        ++v15;
        if (v18)
        {
          result = sub_1000BB408(v4, v23, 0);
          v5 = a1;
          v7 = __clz(__rbit64(v17)) + v14;
          goto LABEL_4;
        }
      }

      result = sub_1000BB408(v4, v23, 0);
      v5 = a1;
    }

LABEL_4:
    ++v6;
    v4 = v7;
    if (v6 == v8)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100069F5C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 17);
}

uint64_t sub_10006A02C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10006A064()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10006A0A4()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10006A0F4()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v8 = v0 + v2;
  sub_100016590(*v8, *(v8 + 8));
  v9 = *(v5 + 8);
  v9(v8 + v1[8], v4);
  v10 = v1[9];
  v11 = type metadata accessor for MACAddress();
  (*(*(v11 - 8) + 8))(v8 + v10, v11);

  v9(v0 + v6, v4);

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_10006A2E8()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v1[9];
  v8 = type metadata accessor for MACAddress();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_10006A444()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v1[9];
  v8 = type metadata accessor for MACAddress();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10006A5A4()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v13 = *(*v1 + 64);
  v12 = (v2 + ((v13 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v2;

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  v11 = *(*(v6 - 8) + 8);
  v11(v4 + v5, v6);
  v7 = v1[9];
  v8 = type metadata accessor for MACAddress();
  v9 = *(*(v8 - 8) + 8);
  v9(v4 + v7, v8);

  sub_100016590(*(v0 + v12), *(v0 + v12 + 8));
  v11(v0 + v12 + v1[8], v6);
  v9(v0 + v12 + v1[9], v8);

  return _swift_deallocObject(v0, v12 + v13);
}

uint64_t sub_10006A7A4()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 24) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, ((((v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10006AB38()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10006AB70()
{
  v1 = (type metadata accessor for BeaconNamingRecord(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[8], v6);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10006ACC4()
{
  v1 = (type metadata accessor for BeaconNamingRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v10 = *(*v1 + 64);
  v4 = (v2 + ((v10 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v2;

  v5 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);
  v8(v5 + v1[8], v7);

  sub_100016590(*(v0 + v4), *(v0 + v4 + 8));
  v8(v0 + v4 + v1[7], v7);
  v8(v0 + v4 + v1[8], v7);

  return _swift_deallocObject(v0, v4 + v10);
}

uint64_t sub_10006AEA4()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v35 = *(*(v1 - 1) + 80);
  v2 = (v35 + 24) & ~v35;
  v32 = *(*(v1 - 1) + 64);
  v3 = (v32 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v33 = v0;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v34 = *(v7 + 8);
  v34(v4 + v5, v6);
  v8 = v4 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v34(v8, v6);
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:

      break;
    case 3:
      v34(v8, v6);
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_12;
  }

LABEL_13:
  v10 = v1[7];
  v30 = *(v7 + 48);
  if (!v30(v4 + v10, 1, v6))
  {
    v34(v4 + v10, v6);
  }

  v11 = v35 + v3 + 8;
  v12 = v1[8];
  v13 = type metadata accessor for Date();
  v14 = (*(v13 - 8) + 8);
  v29 = *v14;
  (*v14)(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v15 = (v4 + v1[10]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100016590(*v15, v16);
  }

  v17 = v11 & ~v35;
  v18 = (v4 + v1[11]);
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_100016590(*v18, v19);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  v31 = v17;
  v20 = v33 + v17;
  sub_100016590(*v20, *(v20 + 8));
  v34(v33 + v17 + v1[5], v6);
  v21 = v33 + v17 + v1[6];
  v22 = swift_getEnumCaseMultiPayload();
  if (v22 <= 1)
  {
    if (v22)
    {
      if (v22 != 1)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_30;
  }

  switch(v22)
  {
    case 2:
      v34(v21, v6);
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_30:

      break;
    case 3:
      v34(v21, v6);
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_30;
    case 4:
      goto LABEL_30;
  }

LABEL_31:
  v23 = v1[7];
  if (!v30(v20 + v23, 1, v6))
  {
    v34(v20 + v23, v6);
  }

  v29(v20 + v1[8], v13);
  sub_100016590(*(v20 + v1[9]), *(v20 + v1[9] + 8));
  v24 = (v20 + v1[10]);
  v25 = v24[1];
  if (v25 >> 60 != 15)
  {
    sub_100016590(*v24, v25);
  }

  v26 = (v20 + v1[11]);
  v27 = v26[1];
  if (v27 >> 60 != 15)
  {
    sub_100016590(*v26, v27);
  }

  sub_100016590(*(v20 + v1[12]), *(v20 + v1[12] + 8));
  sub_100016590(*(v20 + v1[13]), *(v20 + v1[13] + 8));

  return _swift_deallocObject(v33, v31 + v32);
}

uint64_t sub_10006B4A4()
{
  v1 = (type metadata accessor for OwnedDeviceKeyRecord(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[8], v6);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  sub_100016590(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10006B5F8()
{
  v1 = (type metadata accessor for OwnedDeviceKeyRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v11 = *(*v1 + 64);
  v4 = (v2 + ((v11 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v2;

  v5 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);
  v8(v5 + v1[8], v7);
  sub_100016590(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  sub_100016590(*(v5 + v1[10]), *(v5 + v1[10] + 8));

  v9 = v0 + v4;
  sub_100016590(*(v0 + v4), *(v0 + v4 + 8));
  v8(v0 + v4 + v1[7], v7);
  v8(v0 + v4 + v1[8], v7);
  sub_100016590(*(v9 + v1[9]), *(v9 + v1[9] + 8));
  sub_100016590(*(v9 + v1[10]), *(v9 + v1[10] + 8));

  return _swift_deallocObject(v0, v4 + v11);
}

uint64_t sub_10006B7C0()
{
  v1 = (type metadata accessor for KeyAlignmentRecord(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[8], v6);
  v8 = v1[10];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v4 + v8, v9);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10006B930()
{
  v1 = (type metadata accessor for KeyAlignmentRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v14 = *(*v1 + 64);
  v13 = (v2 + ((v14 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v2;

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[8], v6);
  v8 = v1[10];
  v9 = type metadata accessor for Date();
  v11 = *(*(v9 - 8) + 8);
  v11(v4 + v8, v9);

  sub_100016590(*(v12 + v13), *(v12 + v13 + 8));
  v7(v12 + v13 + v1[7], v6);
  v7(v12 + v13 + v1[8], v6);
  v11(v12 + v13 + v1[10], v9);

  return _swift_deallocObject(v12, v13 + v14);
}

uint64_t sub_10006BB30()
{
  v1 = type metadata accessor for ShareRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v12 = *(*(v1 - 1) + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2 + v3, v4);
  v5(v0 + v2 + v1[6], v4);
  v6 = v1[7];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v2 + v6, v7);
  v10 = v1[8];
  if (!(*(v8 + 48))(v0 + v2 + v10, 1, v7))
  {
    v9(v0 + v2 + v10, v7);
  }

  return _swift_deallocObject(v0, ((v12 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10006BD24()
{
  v1 = type metadata accessor for ShareRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v18 = *(*(v1 - 1) + 64);
  v19 = (v2 + ((v18 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v2;

  v17 = v0;
  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[6], v6);
  v8 = v1[7];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v4 + v8, v9);
  v12 = v1[8];
  v16 = *(v10 + 48);
  if (!v16(v4 + v12, 1, v9))
  {
    v11(v4 + v12, v9);
  }

  v13 = v17 + v19;
  sub_100016590(*v13, *(v13 + 8));
  v7(v17 + v19 + v1[5], v6);
  v7(v17 + v19 + v1[6], v6);
  v11(v17 + v19 + v1[7], v9);
  v14 = v1[8];
  if (!v16(v17 + v19 + v14, 1, v9))
  {
    v11(v13 + v14, v9);
  }

  return _swift_deallocObject(v17, v19 + v18);
}

uint64_t sub_10006BFF0()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v26 = *(*(v1 - 1) + 80);
  v2 = (v26 + 24) & ~v26;
  v25 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v24 = *(v4 + 80);
  v23 = *(v4 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v22 = *(v6 + 80);
  v21 = *(v6 + 64);

  v27 = v0;
  v7 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v8 = *(v4 + 8);
  v8(v7 + v1[5], v3);
  v9 = v7 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v28 = v8;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v3);
      v11 = (v26 + 24) & ~v26;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v2 = v11;
      v8 = v28;
LABEL_13:

      break;
    case 3:
      v8(v9, v3);
      v11 = (v26 + 24) & ~v26;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v12 = v1[7];
  if (!(*(v4 + 48))(v7 + v12, 1, v3))
  {
    v8(v7 + v12, v3);
  }

  v13 = *(v6 + 8);
  v13(v7 + v1[8], v5);
  sub_100016590(*(v7 + v1[9]), *(v7 + v1[9] + 8));
  v14 = (v7 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v7 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  v18 = (((v25 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v24 + 8) & ~v24;
  v19 = (v18 + v23 + v22) & ~v22;
  sub_100016590(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  sub_100016590(*(v7 + v1[13]), *(v7 + v1[13] + 8));

  v28(v27 + v18, v3);
  v13(v27 + v19, v5);

  return _swift_deallocObject(v27, ((v21 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10006C45C()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v26 = *(*(v1 - 1) + 80);
  v2 = (v26 + 32) & ~v26;
  v25 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v24 = *(v4 + 80);
  v23 = *(v4 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v22 = *(v6 + 80);
  v21 = *(v6 + 64);
  swift_unknownObjectRelease();
  v27 = v0;
  v7 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v8 = *(v4 + 8);
  v8(v7 + v1[5], v3);
  v9 = v7 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v28 = v8;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v3);
      v11 = (v26 + 32) & ~v26;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v2 = v11;
      v8 = v28;
LABEL_13:

      break;
    case 3:
      v8(v9, v3);
      v11 = (v26 + 32) & ~v26;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v12 = v1[7];
  if (!(*(v4 + 48))(v7 + v12, 1, v3))
  {
    v8(v7 + v12, v3);
  }

  v13 = *(v6 + 8);
  v13(v7 + v1[8], v5);
  sub_100016590(*(v7 + v1[9]), *(v7 + v1[9] + 8));
  v14 = (v7 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v7 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  v18 = (v2 + v25 + v24) & ~v24;
  v19 = (((v23 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) + v22 + 8) & ~v22;
  sub_100016590(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  sub_100016590(*(v7 + v1[13]), *(v7 + v1[13] + 8));

  v28(v27 + v18, v3);
  v13(v27 + v19, v5);

  return _swift_deallocObject(v27, ((v21 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10006C8D8()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v27 = *(*(v1 - 1) + 80);
  v2 = (v27 + 24) & ~v27;
  v3 = *(*(v1 - 1) + 64);
  v26 = type metadata accessor for ShareRecord(0);
  v29 = *(*(v26 - 1) + 80);
  v25 = *(*(v26 - 1) + 64);

  v28 = v0;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v2 + v5, v6);
  v9 = v0 + v2 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:

      break;
    case 3:
      v8(v9, v6);
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_12;
  }

LABEL_13:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v24 = v8;
  v12 = v2 + v3 + v29;
  v13 = v1[8];
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v23 = *(v15 + 8);
  v23(v4 + v13, v14);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v16 = (v4 + v1[10]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  v18 = v12 & ~v29;
  v19 = (v4 + v1[11]);
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    sub_100016590(*v19, v20);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  sub_100016590(*(v0 + v18), *(v0 + v18 + 8));
  v24(v0 + v18 + v26[5], v6);
  v24(v0 + v18 + v26[6], v6);
  v23(v0 + v18 + v26[7], v14);
  v21 = v26[8];
  if (!(*(v15 + 48))(v28 + v18 + v21, 1, v14))
  {
    v23(v28 + v18 + v21, v14);
  }

  return _swift_deallocObject(v28, v18 + v25);
}

uint64_t sub_10006CDAC()
{
  v1 = type metadata accessor for ShareRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v12 = *(*(v1 - 1) + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2 + v3, v4);
  v5(v0 + v2 + v1[6], v4);
  v6 = v1[7];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v2 + v6, v7);
  v10 = v1[8];
  if (!(*(v8 + 48))(v0 + v2 + v10, 1, v7))
  {
    v9(v0 + v2 + v10, v7);
  }

  return _swift_deallocObject(v0, v2 + v12);
}

uint64_t sub_10006CF88()
{
  v1 = type metadata accessor for ShareRecord(0);
  v12 = *(*(v1 - 1) + 64);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2 + v3, v4);
  v5(v0 + v2 + v1[6], v4);
  v6 = v1[7];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v2 + v6, v7);
  v10 = v1[8];
  if (!(*(v8 + 48))(v0 + v2 + v10, 1, v7))
  {
    v9(v0 + v2 + v10, v7);
  }

  return _swift_deallocObject(v0, ((((v12 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10006D1AC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10006D1E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10006D21C()
{
  v1 = type metadata accessor for DateInterval();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10006D334()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10006D3B0()
{
  v1 = type metadata accessor for BeaconEstimatedLocation(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v13 = *(*(v1 - 1) + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2 + v3, v4);
  v5(v0 + v2 + v1[6], v4);
  v6 = v1[10];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v2 + v6, v7);
  v10 = v1[12];
  if (!(*(v8 + 48))(v0 + v2 + v10, 1, v7))
  {
    v9(v0 + v2 + v10, v7);
  }

  v11 = (v13 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_100007BAC((v0 + v11));

  return _swift_deallocObject(v0, v11 + 41);
}

uint64_t sub_10006D58C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_10006D6F0()
{
  v1 = (type metadata accessor for KeyAlignmentRecord(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2 + v4, v5);
  v6(v0 + v2 + v1[8], v5);
  v7 = v1[10];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10006D848()
{
  v1 = (type metadata accessor for KeyAlignmentRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[8], v6);
  v8 = v1[10];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v4 + v8, v9);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10006D9C0()
{

  sub_100007BAC((v0 + 40));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_10006DA14()
{
  v1 = (type metadata accessor for BeaconNamingRecord(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[8], v6);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_10006DB7C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10006DBB4()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 40) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 40) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v20);
}

uint64_t sub_10006DF28()
{
  v1 = *(type metadata accessor for TimeBasedKeysCriteria(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v9 = type metadata accessor for DateInterval();
    (*(*(v9 - 8) + 8))(v0 + v2, v9);
  }

  v10 = (((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6;

  (*(v5 + 8))(v0 + v10, v4);

  return _swift_deallocObject(v0, ((v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10006E0E0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for DateInterval();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_10006E230()
{
  v1 = type metadata accessor for OwnedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v20 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v0 + v3 + v1[6];
  type metadata accessor for StableIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v19 = (v2 + 40) & ~v2;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v3 = v19;
LABEL_13:

      break;
    case 3:
      v8(v9, v6);
      v19 = (v2 + 40) & ~v2;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v11 = v1[7];
  if (!(*(v7 + 48))(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[8];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v14 = (v4 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return _swift_deallocObject(v0, ((v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10006E5B8()
{
  v1 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10006E64C()
{
  v1 = (type metadata accessor for LeashRecord(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10006E760()
{
  v1 = (type metadata accessor for LeashRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v10 = *(*v1 + 64);
  v4 = (v2 + ((v10 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v2;

  v5 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);

  sub_100016590(*(v0 + v4), *(v0 + v4 + 8));
  v8(v0 + v4 + v1[7], v7);

  return _swift_deallocObject(v0, v4 + v10);
}

uint64_t sub_10006E8D0()
{
  v1 = (type metadata accessor for SafeLocation(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10006E9F4()
{
  v1 = (type metadata accessor for SafeLocation(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v10 = *(*v1 + 64);
  v4 = (v2 + ((v10 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v2;

  v5 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);

  sub_100016590(*(v0 + v4), *(v0 + v4 + 8));
  v8(v0 + v4 + v1[7], v7);

  return _swift_deallocObject(v0, v4 + v10);
}

uint64_t sub_10006EB84()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);

  v3 = v0 + ((v2 + 24) & ~v2);
  sub_100016590(*v3, *(v3 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v7(v3 + v1[6], v5);

  v8 = v1[18];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = v1[19];
  v11 = *(v6 + 48);
  if (!v11(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v12 = v3 + v1[20];
  v13 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = *(v13 + 20);
    if (!v11(v12 + v14, 1, v5))
    {
      v7(v12 + v14, v5);
    }
  }

  return _swift_deallocObject(v0, ((v16 + ((v2 + 24) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10006EE18()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v24 = *(*(v1 - 1) + 64);
  v4 = v2 + ((v24 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;

  v25 = v0;
  v5 = v0 + v3;
  sub_100016590(*v5, *(v5 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v5 + v6, v7);
  v9(v5 + v1[6], v7);

  v10 = v1[18];
  v11 = type metadata accessor for Date();
  v23 = *(*(v11 - 8) + 8);
  v23(v5 + v10, v11);
  v12 = v1[19];
  v26 = *(v8 + 48);
  if (!v26(v5 + v12, 1, v7))
  {
    v9(v5 + v12, v7);
  }

  v27 = v4 & ~v2;
  v13 = v5 + v1[20];
  v14 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v15 = (*(v14 - 8) + 48);
  v22 = *v15;
  if (!(*v15)(v13, 1, v14))
  {
    v16 = *(v14 + 20);
    if (!v26(v13 + v16, 1, v7))
    {
      v9(v13 + v16, v7);
    }
  }

  v17 = v25 + v27;
  sub_100016590(*v17, *(v17 + 8));
  v9(v25 + v27 + v1[5], v7);
  v9(v25 + v27 + v1[6], v7);

  v23(v25 + v27 + v1[18], v11);
  v18 = v1[19];
  if (!v26(v25 + v27 + v18, 1, v7))
  {
    v9(v17 + v18, v7);
  }

  v19 = v17 + v1[20];
  if (!v22(v19, 1, v14))
  {
    v20 = *(v14 + 20);
    if (!v26(v19 + v20, 1, v7))
    {
      v9(v19 + v20, v7);
    }
  }

  return _swift_deallocObject(v25, v27 + v24);
}

uint64_t sub_10006F214()
{
  v1 = (type metadata accessor for LostModeRecord(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[8], v6);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10006F378()
{
  v1 = (type metadata accessor for LostModeRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v10 = *(*v1 + 64);
  v4 = (v2 + ((v10 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v2;

  v5 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);
  v8(v5 + v1[8], v7);

  sub_100016590(*(v0 + v4), *(v0 + v4 + 8));
  v8(v0 + v4 + v1[7], v7);
  v8(v0 + v4 + v1[8], v7);

  return _swift_deallocObject(v0, v4 + v10);
}

uint64_t sub_10006F560()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10006F5A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10006F5D8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10006F6B4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10006F790()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10006F7C8()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v1[9];
  v8 = type metadata accessor for MACAddress();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_10006F938()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 17) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[8];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v1[9];
  v7 = type metadata accessor for MACAddress();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10006FA80()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[8];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v1[9];
  v7 = type metadata accessor for MACAddress();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10006FBD8()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[8];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v1[9];
  v7 = type metadata accessor for MACAddress();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10006FD28()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v1[9];
  v8 = type metadata accessor for MACAddress();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10006FFE0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10007008C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100070130()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000701FC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100070234()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10007027C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000702B4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100070364()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100070410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1000704E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = a2;
  }

  return result;
}

uint64_t sub_1000705AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DateInterval();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100070658(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DateInterval();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100070700()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100070738()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100070780()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000707B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100070864(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100070908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000709D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100070A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_100070BA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Date();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100070CC0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100070D08(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1000BC4D4(&qword_1016A62E0, &unk_1013B8C30);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for ServerStatusCode();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_100070E8C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1000BC4D4(&qword_1016A62E0, &unk_1013B8C30);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for ServerStatusCode();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_100071010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10007107C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000710EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000711A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100071358()
{
  v1 = (type metadata accessor for BeaconObservation(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = v1[7];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  return _swift_deallocObject(v0, ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10007148C()
{
  v1 = (type metadata accessor for BeaconObservation(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = v1[7];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_1000715D0()
{
  v1 = (type metadata accessor for BeaconObservation(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (((((((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = v1[7];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_100071730()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  sub_100007BAC((v0 + v4));

  return _swift_deallocObject(v0, ((((v4 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000717F4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100071890()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();
  v5 = v0[5];
  if (v5 >> 60 != 15)
  {
    sub_100016590(v0[4], v5);
  }

  v6 = (v3 + 152) & ~v3;
  sub_100007BAC(v0 + 13);

  (*(v2 + 8))(v0 + v6, v1);

  return _swift_deallocObject(v0, ((v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}