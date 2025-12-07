uint64_t sub_10071ED28(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_1006C2718(a1, v1 + 16, v4);
}

uint64_t sub_10071EDD4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_10069D2C0(v3, v2);
}

uint64_t sub_10071EE70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100AD30EC(a1, v4, v1 + 24);
}

uint64_t sub_10071EF1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_100AD30EC(a1, v4, v1 + 24);
}

uint64_t sub_10071EFC8()
{
  v1 = *(type metadata accessor for DateInterval() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1006B3094(v3, v4, v0 + v2, v6, v7);
}

uint64_t sub_10071F074()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_1006B064C(v2);
}

void sub_10071F1A4(uint64_t a1)
{
  v3 = *(type metadata accessor for BeaconEstimatedLocation(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v6 + 40);

  sub_1006CEAE0(a1, v5, v1 + v4, v6, v7);
}

uint64_t sub_10071F268(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for Date() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = *(v1 + v7);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100014744;

  return sub_1006CABFC(a1, v10, v11, v12, v13, v1 + v6, v14, v1 + v9);
}

uint64_t sub_10071F3E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1006CB9C0(v2, v3);
}

uint64_t sub_10071F500(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1006C4188(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_10071F5CC(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100AC1364(a1, v5, v1 + v4, v6);
}

void sub_10071F6F0(void **a1, uint64_t a2)
{
  type metadata accessor for BeaconNamingRecord(0);
  v4 = *a1;

  sub_1006E9A14(v4, a2);
}

uint64_t sub_10071F7C0(void (*a1)(void))
{
  v3 = type metadata accessor for OwnedBeaconRecord(0);
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 24) & ~v4;
  v22 = *(*(v3 - 1) + 64);
  a1(*(v1 + 16));
  v6 = v1 + v5;
  sub_100016590(*(v1 + v5), *(v1 + v5 + 8));
  v7 = v3[5];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v1 + v5 + v7, v8);
  v11 = v1 + v5 + v3[6];
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
      v10(v11, v8);
      v21 = (v4 + 24) & ~v4;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_12:
      v5 = v21;
LABEL_13:

      break;
    case 3:
      v10(v11, v8);
      v21 = (v4 + 24) & ~v4;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_12;
    case 4:
      goto LABEL_13;
  }

LABEL_14:
  v13 = v3[7];
  if (!(*(v9 + 48))(v6 + v13, 1, v8))
  {
    v10(v6 + v13, v8);
  }

  v14 = v3[8];
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(v6 + v14, v15);
  sub_100016590(*(v6 + v3[9]), *(v6 + v3[9] + 8));
  v16 = (v6 + v3[10]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  v18 = (v6 + v3[11]);
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_100016590(*v18, v19);
  }

  sub_100016590(*(v6 + v3[12]), *(v6 + v3[12] + 8));
  sub_100016590(*(v6 + v3[13]), *(v6 + v3[13] + 8));

  return _swift_deallocObject(v1, ((v22 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10071FB4C()
{
  v2 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1006C4D10(v4, v0 + v3, v6, v7);
}

uint64_t sub_10071FC64(uint64_t a1)
{
  v3 = [*(v1 + 16) roleId];
  result = type metadata accessor for BeaconNamingRecord(0);
  *(a1 + *(result + 28)) = v3;
  return result;
}

uint64_t sub_10071FCA8(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1006C3DDC(a1, v4, v5, v6, v7);
}

uint64_t sub_10071FD20()
{
  v1 = (type metadata accessor for BeaconNamingRecord(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2 + v4, v5);
  v6(v0 + v2 + v1[8], v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10071FE5C()
{
  v1 = (type metadata accessor for BeaconNamingRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[8], v6);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10071FFB8(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + v7);
  v9 = (v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = *a1;

  return a3(v12, v3 + v6, v8, v10, v11);
}

uint64_t sub_10072007C()
{
  v1 = *(type metadata accessor for TimeBasedKeysCriteria(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v0 + v3);
  v7 = v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_1006BE7DC(v0 + v2, v6, v0 + v5, v8, v9);
}

uint64_t sub_100720188(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for DateInterval() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100014744;

  return sub_1006B5C0C(a1, v1 + v6, v1 + v9);
}

uint64_t sub_100720318(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_1006B96F8(a1, v4, v1 + 24, v5);
}

uint64_t sub_1007203CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_1006BDC30(a1, v4, v1 + 24, v5);
}

uint64_t sub_1007204C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_1006BD9C0(a1, v4, v1 + 24, v5);
}

uint64_t sub_1007205CC()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];

  return sub_1006CE73C(v3, v4, v6, v0 + v2, v5);
}

uint64_t sub_100720660(uint64_t a1)
{

  return _swift_deallocObject(v1, a1);
}

uint64_t sub_1007206AC()
{
  v1 = *(v0 + 24);
  Transaction.capture()();
  return v1();
}

unint64_t sub_100720740()
{
  result = qword_1016A78C8;
  if (!qword_1016A78C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A78C8);
  }

  return result;
}

uint64_t sub_100720794(uint64_t a1)
{
  sub_100007BAC((v1 + 16));

  return _swift_deallocObject(v1, a1);
}

uint64_t sub_1007207F8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void sub_100720980(uint64_t a1)
{
  v3 = *(type metadata accessor for LeashRecord(0) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1006E3B70(a1, *(v1 + 16), v1 + v5, *(v1 + v6), v1 + ((v4 + v6 + 8) & ~v4), type metadata accessor for LeashRecord, &qword_1016A78E0, &qword_1013B6888, type metadata accessor for LeashRecord, sub_1009F074C, type metadata accessor for LeashRecord);
}

void sub_100720B2C(uint64_t a1)
{
  v3 = *(type metadata accessor for SafeLocation(0) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1006E3B70(a1, *(v1 + 16), v1 + v5, *(v1 + v6), v1 + ((v4 + v6 + 8) & ~v4), type metadata accessor for SafeLocation, &unk_1016B1480, &qword_1013B6890, type metadata accessor for SafeLocation, sub_1009F04E0, type metadata accessor for SafeLocation);
}

uint64_t sub_100720D10(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + 32);
  QueueSynchronizer.conditionalSync<A>(_:)();
  return a2(v4);
}

uint64_t sub_100720D98(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v3 + v8);
  v10 = *(v3 + 16);

  return a3(a1, v10, v3 + v7, v9, v3 + ((v6 + v8 + 8) & ~v6));
}

uint64_t sub_100720E7C(uint64_t a1)
{
  v4 = *(type metadata accessor for MACAddress() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v1 + v6);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_100014744;

  return sub_1006D952C(a1, v7, v8, v1 + v5, v12, v10, v11);
}

uint64_t sub_100720FB8()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 24);
}

uint64_t sub_100721090(uint64_t a1)
{
  v4 = *(type metadata accessor for MACAddress() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v1 + v6);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_100014744;

  return sub_1006D9138(a1, v7, v8, v1 + v5, v12, v10, v11);
}

uint64_t sub_10072121C(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v3 + 16);
  v8 = (v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = *a1;

  return a3(v11, v7, v3 + v6, v9, v10);
}

void sub_100721300(uint64_t a1)
{
  v3 = *(type metadata accessor for LostModeRecord(0) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1006E3B70(a1, *(v1 + 16), v1 + v5, *(v1 + v6), v1 + ((v4 + v6 + 8) & ~v4), type metadata accessor for LostModeRecord, &qword_1016B1840, &qword_1013B68F0, type metadata accessor for LostModeRecord, sub_1009F0274, type metadata accessor for LostModeRecord);
}

uint64_t sub_100721438(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_10069F014(a1, v5, v4);
}

uint64_t sub_1007214E4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_10069F2BC(a1, a2, v2);
}

uint64_t sub_100721590()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1006A4634(v2, v3);
}

uint64_t sub_100721628(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_1006A87BC(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_100721758(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = (a5 >> 58) & 0xC | (a2 >> 60) & 3;
  if (v5 <= 5)
  {
    if (v5 == 1)
    {
      sub_100016590(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      result = a3;
      v6 = a4;
    }

    else
    {
      if (v5 != 5)
      {
        return result;
      }

      sub_100016590(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      v6 = a5 & 0xCFFFFFFFFFFFFFFFLL;
      result = a4;
    }
  }

  else
  {
    if (v5 != 6 && v5 != 7 && v5 != 9)
    {
      return result;
    }

    v6 = a2 & 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_100016590(result, v6);
}

uint64_t sub_10072180C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_1006A52F4(v4, v5, v0 + v3, v6);
}

uint64_t sub_100721920(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1006A86FC(a1, v6, v1 + v5);
}

uint64_t sub_100721A04(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return _swift_deallocObject(v2, 48);
}

uint64_t sub_100721A9C(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  return sub_100698B50(a1, v4, v5);
}

uint64_t sub_100721B10(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_100698C48(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100721BB8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a3(a1, v6, v7, v8);
}

uint64_t sub_100721C44(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40);
}

uint64_t sub_100721C9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100721D04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for AirPodsPairingLockAckEndPoint(uint64_t a1)
{
  result = qword_1016A7960;
  if (!qword_1016A7960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100721FC0()
{
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v0 = URLComponents.path.modify();
  v1._countAndFlagsBits = 0xD00000000000001ALL;
  v1._object = 0x800000010135DA20;
  String.append(_:)(v1);
  v0(&v7, 0);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v2 = qword_10177C218;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 isInternalBuild];

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
    v6 = [v2 stringForKey:v5];

    if (v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URLComponents.host.setter();
    }
  }
}

uint64_t sub_1007221B0(uint64_t a1, char a2, char a3)
{
  *(v4 + 27) = a3;
  *(v4 + 26) = a2;
  *(v4 + 88) = a1;
  *(v4 + 96) = v3;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  *(v4 + 104) = swift_task_alloc();
  v5 = type metadata accessor for BookmarkMetaData(0);
  *(v4 + 112) = v5;
  *(v4 + 120) = *(v5 - 8);
  *(v4 + 128) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016998B8, &unk_1013B6AD0);
  *(v4 + 136) = swift_task_alloc();
  v6 = type metadata accessor for SystemInfo.DeviceLockState();
  *(v4 + 144) = v6;
  *(v4 + 152) = *(v6 - 8);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = type metadata accessor for BeaconKeyManager.FileKey(0);
  *(v4 + 184) = swift_task_alloc();
  v7 = type metadata accessor for OwnerSharingCircle(0);
  *(v4 + 192) = v7;
  v8 = *(v7 - 8);
  *(v4 + 200) = v8;
  *(v4 + 208) = *(v8 + 64);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v4 + 272) = v9;
  *(v4 + 280) = *(v9 - 8);
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  v10 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  *(v4 + 312) = v10;
  *(v4 + 320) = *(v10 - 8);
  *(v4 + 328) = swift_task_alloc();

  return _swift_task_switch(sub_1007224FC, v3, 0);
}

uint64_t sub_1007224FC()
{
  v1 = *(v0 + 26);
  v2 = sub_100D110E8(*(v0 + 88), v1);
  *(v0 + 336) = v2;
  if (v1)
  {
    v5 = 0;
    *(v0 + 368) = _swiftEmptyDictionarySingleton;
    v6 = *(v2 + 32);
    *(v0 + 41) = v6;
    v7 = 1 << v6;
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v2 + 56);
    *(v0 + 28) = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    v10 = (v7 + 63) >> 6;
    while (1)
    {
      *(v0 + 376) = 0;
      if (!v9)
      {
        break;
      }

LABEL_5:
      *(v0 + 384) = v9;
      *(v0 + 392) = v5;
      v11 = *(*(v2 + 48) + (__clz(__rbit64(v9)) | (v5 << 6)));
      *(v0 + 42) = v11;
      if ((v11 - 7) >= 0xC && ((1 << v11) & 0x1C) == 0)
      {
        *(v0 + 43) = ((1 << v11) & 0x21) == 0;
        v3 = *(*(v0 + 96) + 152);
        *(v0 + 440) = v3;
        v13 = sub_1007239B0;
LABEL_18:
        v2 = v13;
        v4 = 0;

        return _swift_task_switch(v2, v3, v4);
      }

      v9 &= v9 - 1;
    }

    while (1)
    {
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        v21 = *(v0 + 96);

        v22 = sub_1000035D0((v21 + 112), *(v21 + 136));
        v3 = *v22;
        *(v0 + 400) = *v22;
        v13 = sub_1007229F4;
        goto LABEL_18;
      }

      v9 = *(v2 + 56 + 8 * v12);
      ++v5;
      if (v9)
      {
        v5 = v12;
        goto LABEL_5;
      }
    }

    __break(1u);
    return _swift_task_switch(v2, v3, v4);
  }

  else
  {
    v14 = *(v0 + 192);
    v15 = *(v0 + 88);
    v16 = 0x4000201u >> (8 * *(v15 + *(v14 + 28)));
    v17 = *(v14 + 20);
    v18 = v2;
    v19 = swift_task_alloc();
    *(v0 + 344) = v19;
    *v19 = v0;
    v19[1] = sub_100722744;

    return sub_100726054(v15 + v17, v16, v18);
  }
}

uint64_t sub_100722744(uint64_t a1)
{
  v4 = *v2;
  v4[44] = v1;

  v5 = v4[12];
  if (v1)
  {
    v6 = sub_1007243B8;
  }

  else
  {
    v4[45] = a1;
    v6 = sub_100722880;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100722880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = *(v3 + 352);
  *(v3 + 368) = *(v3 + 360);
  v6 = *(v3 + 336);
  v7 = *(v6 + 32);
  *(v3 + 41) = v7;
  v8 = 1 << v7;
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 7);
  *(v3 + 28) = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v11 = (v8 + 63) >> 6;
  while (1)
  {
    *(v3 + 376) = v5;
    if (!v10)
    {
      break;
    }

LABEL_4:
    *(v3 + 384) = v10;
    *(v3 + 392) = v4;
    v12 = *(*(v6 + 6) + (__clz(__rbit64(v10)) | (v4 << 6)));
    *(v3 + 42) = v12;
    if ((v12 - 7) >= 0xC && ((1 << v12) & 0x1C) == 0)
    {
      *(v3 + 43) = ((1 << v12) & 0x21) == 0;
      a2 = *(*(v3 + 96) + 152);
      *(v3 + 440) = a2;
      v14 = sub_1007239B0;
LABEL_14:
      v6 = v14;
      a3 = 0;

      return _swift_task_switch(v6, a2, a3);
    }

    v10 &= v10 - 1;
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      v15 = *(v3 + 96);

      v16 = sub_1000035D0((v15 + 112), *(v15 + 136));
      a2 = *v16;
      *(v3 + 400) = *v16;
      v14 = sub_1007229F4;
      goto LABEL_14;
    }

    v10 = *(v6 + v13 + 7);
    ++v4;
    if (v10)
    {
      v4 = v13;
      goto LABEL_4;
    }
  }

  __break(1u);
  return _swift_task_switch(v6, a2, a3);
}

uint64_t sub_1007229F4()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v5 = *(v0 + 192);
  v6 = *(v0 + 88);
  v32 = sub_100D110E8(v6, *(v0 + 26));
  v7 = *(v4 + 16);
  v7(v1, v6 + *(v5 + 20), v3);
  v7(v2, v6 + *(v5 + 24), v3);
  if (qword_101694560 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 288);
  v9 = *(v0 + 272);
  v10 = *(v0 + 192);
  v11 = *(v0 + 88);
  v12 = sub_1000076D4(v9, qword_10177A900);
  v7(v8, v12, v9);
  v13 = 8 * *(v11 + *(v10 + 28));
  v31 = *(v0 + 368);
  v15 = *(v0 + 320);
  v14 = *(v0 + 328);
  v17 = *(v0 + 304);
  v16 = *(v0 + 312);
  v19 = *(v0 + 288);
  v18 = *(v0 + 296);
  v20 = *(v0 + 272);
  v21 = *(v0 + 280);
  v29 = *(v0 + 26);
  v30 = 0x4000201u >> v13;
  UUID.init()();
  v22 = *(v21 + 32);
  v22(v14 + v16[5], v17, v20);
  v22(v14 + v16[6], v18, v20);
  v22(v14 + v16[7], v19, v20);
  *(v14 + v16[8]) = v32;
  *(v14 + v16[9]) = v30;
  *(v14 + v16[10]) = v29;
  *(v14 + v16[11]) = v31;
  static Date.trustedNow.getter(v14 + v16[12]);
  sub_1000BC4D4(&qword_1016A7A78, &qword_1013B6AE8);
  v23 = *(v15 + 80);
  *(v0 + 44) = v23;
  v24 = (v23 + 32) & ~v23;
  v25 = swift_allocObject();
  *(v0 + 408) = v25;
  *(v25 + 16) = xmmword_101385D80;
  sub_100729630(v14, v25 + v24, type metadata accessor for SharingCircleKeyManager.Instruction);
  v26 = swift_task_alloc();
  *(v0 + 416) = v26;
  *v26 = v0;
  v26[1] = sub_100722CAC;
  v27 = *(v0 + 27);

  return sub_100C7BF64(v25, v27);
}

uint64_t sub_100722CAC()
{
  v2 = *v1;
  *(v2 + 424) = v0;

  v3 = *(v2 + 408);
  v4 = *(v2 + 400);
  v5 = (*(v2 + 44) + 32) & ~*(v2 + 44);
  swift_setDeallocating();
  sub_100729698(v3 + v5, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_deallocClassInstance();
  if (v0)
  {
    v6 = sub_10072320C;
  }

  else
  {
    v6 = sub_100722E38;
  }

  return _swift_task_switch(v6, v4, 0);
}

uint64_t sub_100722E38()
{
  sub_100729698(*(v0 + 328), type metadata accessor for SharingCircleKeyManager.Instruction);
  v1 = swift_task_alloc();
  *(v0 + 432) = v1;
  *v1 = v0;
  v1[1] = sub_100722EF8;

  return sub_100EC9FEC(2);
}

uint64_t sub_100722EF8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10072320C()
{
  v1 = *(v0 + 96);
  sub_100729698(*(v0 + 328), type metadata accessor for SharingCircleKeyManager.Instruction);

  return _swift_task_switch(sub_10072328C, v1, 0);
}

uint64_t sub_10072328C()
{
  v39 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 88);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_100729630(v3, v2, type metadata accessor for OwnerSharingCircle);
  sub_100729630(v3, v1, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 264);
    v36 = *(v0 + 256);
    v8 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v8 = 141559043;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_1007296F8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_100729698(v7, type metadata accessor for OwnerSharingCircle);
    v12 = sub_1000136BC(v9, v11, &v38);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2160;
    *(v8 + 24) = 1752392040;
    *(v8 + 32) = 2081;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_100729698(v36, type metadata accessor for OwnerSharingCircle);
    v16 = sub_1000136BC(v13, v15, &v38);

    *(v8 + 34) = v16;
    *(v8 + 42) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 44) = v17;
    *v37 = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "Keys upload failure for circle: %{private,mask.hash}s, beacon: %{private,mask.hash}s, error %{public}@.", v8, 0x34u);
    sub_10000B3A8(v37, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v19 = *(v0 + 256);
    v18 = *(v0 + 264);

    sub_100729698(v19, type metadata accessor for OwnerSharingCircle);
    sub_100729698(v18, type metadata accessor for OwnerSharingCircle);
  }

  *(v0 + 72) = *(v0 + 424);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast() && *(v0 + 25) == 20)
  {
    v20 = swift_task_alloc();
    *(v0 + 464) = v20;
    *v20 = v0;
    v20[1] = sub_100724B14;
    v21 = 1;
LABEL_16:

    return sub_100EC9FEC(v21);
  }

  v22 = *(v0 + 424);

  *(v0 + 80) = v22;
  swift_errorRetain();
  if (!swift_dynamicCast() || *(v0 + 40) != 1 || *(v0 + 32) < 6uLL)
  {

    v35 = swift_task_alloc();
    *(v0 + 472) = v35;
    *v35 = v0;
    v35[1] = sub_100724D70;
    v21 = 0;
    goto LABEL_16;
  }

  v23 = *(v0 + 216);
  v24 = *(v0 + 200);
  v26 = *(v0 + 96);
  v25 = *(v0 + 104);
  v27 = *(v0 + 88);
  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v25, 1, 1, v28);
  sub_100729630(v27, v23, type metadata accessor for OwnerSharingCircle);
  v30 = sub_1007296F8(&unk_1016A7A80, v29, type metadata accessor for ShareKeysUploadUseCase, &unk_1013B6A98);
  v31 = (*(v24 + 80) + 40) & ~*(v24 + 80);
  v32 = swift_allocObject();
  v32[2] = v26;
  v32[3] = v30;
  v32[4] = v26;
  sub_100729184(v23, v32 + v31, type metadata accessor for OwnerSharingCircle);
  swift_retain_n();
  sub_100A838D4(0, 0, v25, &unk_1013B6AF8, v32);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1007239B0()
{

  v1 = swift_task_alloc();
  *(v0 + 448) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_100723A90;
  v3 = *(v0 + 440);

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v3, v2);
}

uint64_t sub_100723A90()
{
  v1 = *(*v0 + 440);

  return _swift_task_switch(sub_100723BA8, v1, 0);
}

uint64_t sub_100723BA8()
{
  v1 = v0[12];
  v0[57] = v0[7];
  return _swift_task_switch(sub_100723BCC, v1, 0);
}

uint64_t sub_100723BCC()
{
  v70 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 43);
  v3 = *(v0 + 376);
  v4 = *(v0 + 184);
  v5 = *(v0 + 176);
  v6 = *(v0 + 88);
  v7 = *(*(v0 + 192) + 24);
  (*(*(v0 + 280) + 16))(v4, v6 + v7, *(v0 + 272));
  *(v4 + *(v5 + 20)) = v2;
  v8 = swift_task_alloc();
  *(v8 + 16) = v1;
  *(v8 + 24) = v4;
  sub_1000BC4D4(&qword_1016A7A70, &qword_1013B6AE0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();

  v9 = *(v0 + 64);
  if (v9)
  {
    goto LABEL_2;
  }

  v19 = sub_1012E710C((v6 + v7), v2, 0);
  if (!v19)
  {
    v48 = *(v0 + 184);

    v49 = type metadata accessor for BeaconKeyManager.FileKey;
    v50 = v48;
    goto LABEL_20;
  }

  v9 = v19;
  v20 = *(v0 + 28);
  v22 = *(v0 + 160);
  v21 = *(v0 + 168);
  v23 = *(v0 + 144);
  v24 = *(v0 + 152);
  static SystemInfo.lockState.getter();
  (*(v24 + 104))(v22, v20, v23);
  sub_1007296F8(&qword_10169F338, 255, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v24 + 8);
  v26(v22, v23);
  v26(v21, v23);
  v27 = *(v0 + 456);
  if (v25)
  {
LABEL_2:
  }

  else
  {
    v51 = *(v0 + 184);
    v52 = swift_task_alloc();
    v52[2] = v27;
    v52[3] = v51;
    v52[4] = v9;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  }

  sub_100729698(*(v0 + 184), type metadata accessor for BeaconKeyManager.FileKey);
  v7 = *(v9 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_firstIndex);
  v10 = *(v9 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_lastIndex);

  if (v10 < v7)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
LABEL_15:
    v30 = *(v0 + 240);
    v31 = *(v0 + 248);
    v32 = *(v0 + 88);
    v33 = type metadata accessor for Logger();
    sub_1000076D4(v33, qword_10177A560);
    sub_100729630(v32, v31, type metadata accessor for OwnerSharingCircle);
    sub_100729630(v32, v30, type metadata accessor for OwnerSharingCircle);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 248);
      v66 = *(v0 + 240);
      v67 = *(v0 + 42);
      v37 = swift_slowAlloc();
      v69[0] = swift_slowAlloc();
      *v37 = 141559555;
      *(v37 + 4) = 1752392040;
      *(v37 + 12) = 2081;
      v68 = v35;
      sub_1007296F8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v1;
      v1 = v39;
      sub_100729698(v36, type metadata accessor for OwnerSharingCircle);
      v40 = sub_1000136BC(v38, v1, v69);

      *(v37 + 14) = v40;
      *(v37 + 22) = 2160;
      *(v37 + 24) = 1752392040;
      *(v37 + 32) = 2081;
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      sub_100729698(v66, type metadata accessor for OwnerSharingCircle);
      v44 = sub_1000136BC(v41, v43, v69);

      *(v37 + 34) = v44;
      *(v37 + 42) = 2082;
      v45 = sub_10125403C(v67);
      v47 = sub_1000136BC(v45, v46, v69);

      *(v37 + 44) = v47;
      *(v37 + 52) = 2048;
      *(v37 + 54) = v7;
      *(v37 + 62) = 2048;
      *(v37 + 64) = v65;
      _os_log_impl(&_mh_execute_header, v34, v68, "Bookmark updated for circle: %{private,mask.hash}s, beacon: %{private,mask.hash}s, keyType: %{public}s, lower bound on disk is %llu, bookmark: %llu.", v37, 0x48u);
      swift_arrayDestroy();

      goto LABEL_21;
    }

    v54 = *(v0 + 240);
    v53 = *(v0 + 248);

    sub_100729698(v54, type metadata accessor for OwnerSharingCircle);
    v50 = v53;
    v49 = type metadata accessor for OwnerSharingCircle;
LABEL_20:
    sub_100729698(v50, v49);
    goto LABEL_21;
  }

  if (*(*(v0 + 368) + 16) && (v11 = sub_100771F0C(*(v0 + 42)), (v12 & 1) != 0))
  {
    sub_100729630(*(*(v0 + 368) + 56) + *(*(v0 + 120) + 72) * v11, *(v0 + 136), type metadata accessor for BookmarkMetaData);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = *(v0 + 136);
  v15 = *(v0 + 112);
  v16 = *(v0 + 120);
  (*(v16 + 56))(v14, v13, 1, v15);
  v17 = (*(v16 + 48))(v14, 1, v15);
  v18 = *(v0 + 136);
  if (!v17)
  {
    v28 = *(v0 + 128);
    v29 = *(v0 + 136);
    sub_100729630(v18, v28, type metadata accessor for BookmarkMetaData);
    sub_10000B3A8(v29, &qword_1016998B8, &unk_1013B6AD0);
    v1 = *(v28 + 8);
    sub_100729698(v28, type metadata accessor for BookmarkMetaData);
    if (v1 >= v7)
    {
      goto LABEL_21;
    }

    if (qword_101694480 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

  sub_10000B3A8(v18, &qword_1016998B8, &unk_1013B6AD0);
LABEL_21:
  v56 = *(v0 + 384);
  v55 = *(v0 + 392);
  do
  {
    *(v0 + 376) = v3;
    v56 &= v56 - 1;
    if (!v56)
    {
      while (1)
      {
        v58 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        v57 = *(v0 + 336);
        if (v58 >= (((1 << *(v0 + 41)) + 63) >> 6))
        {
          v62 = *(v0 + 96);

          v63 = sub_1000035D0((v62 + 112), *(v62 + 136));
          v60 = *v63;
          *(v0 + 400) = *v63;
          v61 = sub_1007229F4;
          goto LABEL_32;
        }

        v56 = *(v57 + 8 * v58 + 56);
        ++v55;
        if (v56)
        {
          v55 = v58;
          goto LABEL_28;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

    v57 = *(v0 + 336);
LABEL_28:
    *(v0 + 384) = v56;
    *(v0 + 392) = v55;
    v59 = *(*(v57 + 48) + (__clz(__rbit64(v56)) | (v55 << 6)));
    *(v0 + 42) = v59;
  }

  while ((v59 - 7) < 0xC || ((1 << v59) & 0x1C) != 0);
  *(v0 + 43) = ((1 << v59) & 0x21) == 0;
  v60 = *(*(v0 + 96) + 152);
  *(v0 + 440) = v60;
  v61 = sub_1007239B0;
LABEL_32:

  return _swift_task_switch(v61, v60, 0);
}

uint64_t sub_1007243B8()
{
  v48 = v0;
  if (qword_101694480 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v1 = *(v0 + 224);
    v2 = *(v0 + 232);
    v3 = *(v0 + 88);
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177A560);
    sub_100729630(v3, v2, type metadata accessor for OwnerSharingCircle);
    sub_100729630(v3, v1, type metadata accessor for OwnerSharingCircle);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 232);
      v46 = *(v0 + 224);
      v8 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v8 = 141559043;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      sub_1007296F8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v10;
      sub_100729698(v7, type metadata accessor for OwnerSharingCircle);
      v12 = sub_1000136BC(v9, v11, &v47);

      *(v8 + 14) = v12;
      *(v8 + 22) = 2112;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 24) = v13;
      *v45 = v13;
      *(v8 + 32) = 2160;
      *(v8 + 34) = 1752392040;
      *(v8 + 42) = 2081;
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      sub_100729698(v46, type metadata accessor for OwnerSharingCircle);
      v17 = sub_1000136BC(v14, v16, &v47);

      *(v8 + 44) = v17;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to set bookmark for sharing circle. beacon: %{private,mask.hash}s, Error: %@, circle: %{private,mask.hash}s.", v8, 0x34u);
      sub_10000B3A8(v45, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();
    }

    else
    {
      v19 = *(v0 + 224);
      v18 = *(v0 + 232);

      sub_100729698(v19, type metadata accessor for OwnerSharingCircle);
      sub_100729698(v18, type metadata accessor for OwnerSharingCircle);
    }

    *(v0 + 48) = *(v0 + 352);
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if (swift_dynamicCast())
    {
      if (*(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
      {
        break;
      }
    }

    v32 = 0;
    *(v0 + 368) = _swiftEmptyDictionarySingleton;
    v33 = *(v0 + 336);
    v34 = *(v33 + 32);
    *(v0 + 41) = v34;
    v35 = 1 << v34;
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v33 + 56);
    *(v0 + 28) = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    v38 = (v35 + 63) >> 6;
    while (1)
    {
      *(v0 + 376) = 0;
      if (!v37)
      {
        break;
      }

LABEL_14:
      *(v0 + 384) = v37;
      *(v0 + 392) = v32;
      v39 = *(*(v33 + 48) + (__clz(__rbit64(v37)) | (v32 << 6)));
      *(v0 + 42) = v39;
      if ((v39 - 7) >= 0xC && ((1 << v39) & 0x1C) == 0)
      {
        *(v0 + 43) = ((1 << v39) & 0x21) == 0;
        v41 = *(*(v0 + 96) + 152);
        *(v0 + 440) = v41;
        v42 = sub_1007239B0;
LABEL_24:

        return _swift_task_switch(v42, v41, 0);
      }

      v37 &= v37 - 1;
    }

    while (1)
    {
      v40 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v40 >= v38)
      {
        v43 = *(v0 + 96);

        v44 = sub_1000035D0((v43 + 112), *(v43 + 136));
        v41 = *v44;
        *(v0 + 400) = *v44;
        v42 = sub_1007229F4;
        goto LABEL_24;
      }

      v37 = *(v33 + 56 + 8 * v40);
      ++v32;
      if (v37)
      {
        v32 = v40;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v20 = *(v0 + 216);
  v21 = *(v0 + 200);
  v23 = *(v0 + 96);
  v22 = *(v0 + 104);
  v24 = *(v0 + 88);

  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v22, 1, 1, v25);
  sub_100729630(v24, v20, type metadata accessor for OwnerSharingCircle);
  v27 = sub_1007296F8(&unk_1016A7A80, v26, type metadata accessor for ShareKeysUploadUseCase, &unk_1013B6A98);
  v28 = (*(v21 + 80) + 40) & ~*(v21 + 80);
  v29 = swift_allocObject();
  v29[2] = v23;
  v29[3] = v27;
  v29[4] = v23;
  sub_100729184(v20, v29 + v28, type metadata accessor for OwnerSharingCircle);
  swift_retain_n();
  sub_100A838D4(0, 0, v22, &unk_1013B6B10, v29);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_100724B14()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_100724C24, v1, 0);
}

uint64_t sub_100724C24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100724D70()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_100724E80, v1, 0);
}

uint64_t sub_100724E80(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100724FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100724FEC, a4, 0);
}

uint64_t sub_100724FEC()
{
  *(v0 + 32) = *sub_1000035D0((*(v0 + 16) + 160), *(*(v0 + 16) + 184));

  return _swift_task_switch(sub_100725064, 0, 0);
}

uint64_t sub_100725064()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v2 = v0[3];
    v3 = *(v0[4] + 24);
    ObjectType = swift_getObjectType();
    v5 = *(type metadata accessor for OwnerSharingCircle(0) + 20);
    v9 = (*(v3 + 8) + **(v3 + 8));
    v6 = swift_task_alloc();
    v0[6] = v6;
    *v6 = v0;
    v6[1] = sub_1007251F4;

    return v9(v2 + v5, ObjectType, v3);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1007251F4()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100729A60, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100725330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100725350, a4, 0);
}

uint64_t sub_100725350()
{
  *(v0 + 32) = *sub_1000035D0((*(v0 + 16) + 160), *(*(v0 + 16) + 184));

  return _swift_task_switch(sub_1007253C8, 0, 0);
}

uint64_t sub_1007253C8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v2 = v0[3];
    v3 = *(v0[4] + 24);
    ObjectType = swift_getObjectType();
    v5 = *(type metadata accessor for OwnerSharingCircle(0) + 20);
    v9 = (*(v3 + 8) + **(v3 + 8));
    v6 = swift_task_alloc();
    v0[6] = v6;
    *v6 = v0;
    v6[1] = sub_100725558;

    return v9(v2 + v5, ObjectType, v3);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100725558()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100725694, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100725694()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007256F8(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = type metadata accessor for OwnerSharingCircle(0);
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_10072579C, v2, 0);
}

uint64_t sub_10072579C()
{
  v26 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_100729630(v3, v2, type metadata accessor for OwnerSharingCircle);
  sub_100729630(v3, v1, type metadata accessor for OwnerSharingCircle);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  if (v7)
  {
    v24 = *(v0 + 64);
    v10 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v10 = 141559043;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v23 = v6;
    type metadata accessor for UUID();
    sub_1007296F8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_100729698(v9, type metadata accessor for OwnerSharingCircle);
    v14 = sub_1000136BC(v11, v13, &v25);

    *(v10 + 14) = v14;
    *(v10 + 22) = 2160;
    *(v10 + 24) = 1752392040;
    *(v10 + 32) = 2081;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_100729698(v8, type metadata accessor for OwnerSharingCircle);
    v18 = sub_1000136BC(v15, v17, &v25);

    *(v10 + 34) = v18;
    *(v10 + 42) = 1024;
    *(v10 + 44) = v24;
    _os_log_impl(&_mh_execute_header, v5, v23, "Upload keys: share-id: %{private,mask.hash}s,              beacon: %{private,mask.hash}s,              initial: %{BOOL}d.", v10, 0x30u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100729698(v8, type metadata accessor for OwnerSharingCircle);
    sub_100729698(v9, type metadata accessor for OwnerSharingCircle);
  }

  v19 = swift_task_alloc();
  *(v0 + 56) = v19;
  *v19 = v0;
  v19[1] = sub_100729A64;
  v20 = *(v0 + 64);
  v21 = *(v0 + 16);

  return sub_1007221B0(v21, v20, 0);
}

uint64_t sub_100725B0C(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = type metadata accessor for OwnerSharingCircle(0);
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100725BB0, v2, 0);
}

uint64_t sub_100725BB0()
{
  v26 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_100729630(v3, v2, type metadata accessor for OwnerSharingCircle);
  sub_100729630(v3, v1, type metadata accessor for OwnerSharingCircle);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  if (v7)
  {
    v24 = *(v0 + 64);
    v10 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v10 = 141559043;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v23 = v6;
    type metadata accessor for UUID();
    sub_1007296F8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_100729698(v9, type metadata accessor for OwnerSharingCircle);
    v14 = sub_1000136BC(v11, v13, &v25);

    *(v10 + 14) = v14;
    *(v10 + 22) = 2160;
    *(v10 + 24) = 1752392040;
    *(v10 + 32) = 2081;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_100729698(v8, type metadata accessor for OwnerSharingCircle);
    v18 = sub_1000136BC(v15, v17, &v25);

    *(v10 + 34) = v18;
    *(v10 + 42) = 1024;
    *(v10 + 44) = v24;
    _os_log_impl(&_mh_execute_header, v5, v23, "Force Upload keys: share-id: %{private,mask.hash}s,              beacon: %{private,mask.hash}s,              initial: %{BOOL}d.", v10, 0x30u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100729698(v8, type metadata accessor for OwnerSharingCircle);
    sub_100729698(v9, type metadata accessor for OwnerSharingCircle);
  }

  v19 = swift_task_alloc();
  *(v0 + 56) = v19;
  *v19 = v0;
  v19[1] = sub_100725F20;
  v20 = *(v0 + 64);
  v21 = *(v0 + 16);

  return sub_1007221B0(v21, v20, 1);
}

uint64_t sub_100725F20()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100726054(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 152) = a2;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for BookmarkMetaData(0);
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  v6 = type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData(0);
  *(v4 + 88) = v6;
  *(v4 + 96) = *(v6 - 8);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = type metadata accessor for KeyDropShareMetaDataResponse(0);
  *(v4 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_1007261CC, v3, 0);
}

uint64_t sub_1007261CC()
{
  sub_1000035D0((*(v0 + 32) + 112), *(*(v0 + 32) + 136));
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_10072627C;
  v2 = *(v0 + 120);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 152);

  return sub_100CA41A0(v2, v3, v5, v4);
}

uint64_t sub_10072627C()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {
    v3 = v2[4];

    return _swift_task_switch(sub_100726BF8, v3, 0);
  }

  else
  {
    v4 = *(v2[15] + *(v2[14] + 28));
    v5 = swift_task_alloc();
    v2[18] = v5;
    *v5 = v2;
    v5[1] = sub_100726408;
    v6 = v2[2];

    return sub_100726CA0(v4, v6);
  }
}

uint64_t sub_100726408()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100726518, v1, 0);
}

uint64_t sub_100726518()
{
  v1 = v0;
  v2 = *(v0[15] + *(v0[14] + 24));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v64 = v1[11];
    v57 = v1[8];
    v58 = v1[10];
    v59 = v1[6];
    v60 = v1[5];
    v61 = v1[12];
    v5 = _swiftEmptyDictionarySingleton;
    v56 = *(v2 + 16);
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v6 = v1[13];
      sub_100729630(v2 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v4, v6, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
      v7 = *(v6 + v64[7]);
      v8 = v7 & ~(v7 >> 63);
      v9 = v6 + v64[6];
      if ((*(v9 + 8) & 1) == 0 && ((v10 = *v9, v10 >= 1) ? (v11 = v8 >= v10) : (v11 = 1), v11))
      {
        if (v10 > v8)
        {
          goto LABEL_49;
        }

        v12 = v2;
        v13 = v1[13];
        v14 = *v13;
        v15 = v1[8];
        v62 = v1[7];
        v16 = v5;
        v17 = v10 & ~(v10 >> 63);
        v18 = *(v60 + 20);
        sub_100729630(&v13[v64[5]], v15 + v18, type metadata accessor for KeyDropInterface.KeyAlignment);
        v19 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
        (*(*(v19 - 8) + 56))(v15 + v18, 0, 1, v19);
        *v15 = v17;
        v5 = v16;
        *(v57 + 8) = v8;
        *(v15 + *(v60 + 24)) = v14;
        sub_100729184(v15, v62, type metadata accessor for BookmarkMetaData);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v16;
        v21 = sub_100771F0C(v14);
        v23 = v16[2];
        v24 = (v22 & 1) == 0;
        v25 = __OFADD__(v23, v24);
        v26 = v23 + v24;
        if (v25)
        {
          goto LABEL_50;
        }

        v27 = v22;
        if (v16[3] < v26)
        {
          sub_100FE7AB0(v26, isUniquelyReferenced_nonNull_native);
          v5 = v16;
          v21 = sub_100771F0C(v14);
          v2 = v12;
          v3 = v56;
          if ((v27 & 1) != (v28 & 1))
          {
            goto LABEL_43;
          }

LABEL_30:
          v44 = v1[7];
          if ((v27 & 1) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_3;
        }

        v2 = v12;
        if (isUniquelyReferenced_nonNull_native)
        {
          v3 = v56;
          goto LABEL_30;
        }

        v49 = v21;
        sub_101005B0C();
        v21 = v49;
        v5 = v65;
        v3 = v56;
        v44 = v1[7];
        if ((v27 & 1) == 0)
        {
LABEL_31:
          v5[(v21 >> 6) + 8] |= 1 << v21;
          *(v5[6] + v21) = v14;
          sub_100729184(v44, v5[7] + *(v59 + 72) * v21, type metadata accessor for BookmarkMetaData);
          v47 = v5[2];
          v25 = __OFADD__(v47, 1);
          v46 = v47 + 1;
          if (v25)
          {
            goto LABEL_51;
          }

          goto LABEL_32;
        }
      }

      else
      {
        v63 = v4;
        v29 = v1[13];
        v31 = v1[9];
        v30 = v1[10];
        v32 = v1;
        v33 = *v29;
        v1 = v5;
        v34 = *(v60 + 20);
        sub_100729630(&v29[v64[5]], v30 + v34, type metadata accessor for KeyDropInterface.KeyAlignment);
        v35 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
        v36 = v30 + v34;
        v5 = v1;
        (*(*(v35 - 8) + 56))(v36, 0, 1, v35);
        *v30 = v8;
        *(v58 + 8) = v8;
        *(v30 + *(v60 + 24)) = v33;
        sub_100729184(v30, v31, type metadata accessor for BookmarkMetaData);
        v37 = swift_isUniquelyReferenced_nonNull_native();
        v66 = v1;
        v21 = sub_100771F0C(v33);
        v39 = v1[2];
        v40 = (v38 & 1) == 0;
        v25 = __OFADD__(v39, v40);
        v41 = v39 + v40;
        if (v25)
        {
          goto LABEL_47;
        }

        v42 = v38;
        if (v1[3] >= v41)
        {
          v1 = v32;
          if ((v37 & 1) == 0)
          {
            v48 = v21;
            sub_101005B0C();
            v21 = v48;
            v5 = v66;
          }

          v4 = v63;
          v44 = v1[9];
          if ((v42 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          sub_100FE7AB0(v41, v37);
          v5 = v1;
          v21 = sub_100771F0C(v33);
          v1 = v32;
          v4 = v63;
          if ((v42 & 1) != (v43 & 1))
          {
LABEL_43:

            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          }

          v44 = v1[9];
          if ((v42 & 1) == 0)
          {
LABEL_25:
            v5[(v21 >> 6) + 8] |= 1 << v21;
            *(v5[6] + v21) = v33;
            sub_100729184(v44, v5[7] + *(v59 + 72) * v21, type metadata accessor for BookmarkMetaData);
            v45 = v5[2];
            v25 = __OFADD__(v45, 1);
            v46 = v45 + 1;
            if (v25)
            {
              goto LABEL_48;
            }

LABEL_32:
            v5[2] = v46;
            goto LABEL_4;
          }
        }
      }

LABEL_3:
      sub_100729120(v44, v5[7] + *(v59 + 72) * v21);
LABEL_4:
      ++v4;
      sub_100729698(v1[13], type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
      if (v3 == v4)
      {
        goto LABEL_36;
      }
    }
  }

  v5 = _swiftEmptyDictionarySingleton;
LABEL_36:
  if (qword_101694480 != -1)
  {
LABEL_52:
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_1000076D4(v50, qword_10177A560);

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 134217984;
    *(v53 + 4) = v5[2];

    _os_log_impl(&_mh_execute_header, v51, v52, "Generated existing metadata, found %ld key types ranges.", v53, 0xCu);
  }

  else
  {
  }

  sub_100729698(v1[15], type metadata accessor for KeyDropShareMetaDataResponse);

  v54 = v1[1];

  return v54(v5);
}

uint64_t sub_100726BF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100726CA0(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  v3[12] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016BC360, &qword_10139CBE0);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v3[17] = *(v5 + 64);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v3[28] = swift_task_alloc();
  v6 = type metadata accessor for OwnerSharingCircle(0);
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();

  return _swift_task_switch(sub_100726EE0, v2, 0);
}

uint64_t sub_100726EE0()
{
  v1 = *(*(v0 + 88) + 152);
  *(v0 + 256) = v1;
  return _swift_task_switch(sub_100726F04, v1, 0);
}

uint64_t sub_100726F04()
{
  v1 = v0[32];
  v2 = v0[26];
  v3 = v0[16];
  v4 = v0[15];
  v5 = v0[10];
  v6 = *(v3 + 16);
  v0[33] = v6;
  v0[34] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[35] = v8;
  *(v8 + 16) = v1;
  v9 = *(v3 + 32);
  v0[36] = v9;
  v0[37] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v2, v4);

  v10 = swift_task_alloc();
  v0[38] = v10;
  *v10 = v0;
  v10[1] = sub_100727080;
  v12 = v0[27];
  v11 = v0[28];

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_1003CA280, v8, v12);
}

uint64_t sub_100727080()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_1007271AC, v1, 0);
}

uint64_t sub_1007271AC()
{
  v1 = v0[28];
  if ((*(v0[30] + 48))(v1, 1, v0[29]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[11];
    sub_100729184(v1, v0[31], type metadata accessor for OwnerSharingCircle);
    sub_1000035D0((v4 + 112), *(v4 + 136));
    v5 = swift_task_alloc();
    v0[39] = v5;
    *v5 = v0;
    v5[1] = sub_1007273AC;
    v7 = v0[9];
    v6 = v0[10];

    return sub_100CA560C(v7, v6);
  }
}

uint64_t sub_1007273AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 320) = a1;
  *(v4 + 328) = v1;

  v5 = *(v3 + 88);
  if (v1)
  {

    v6 = sub_100728428;
  }

  else
  {
    v6 = sub_1007274EC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1007274EC()
{
  v147 = v0;
  v131 = _swiftEmptyDictionarySingleton;
  *(v0 + 64) = _swiftEmptyDictionarySingleton;
  v142 = *(v0 + 320);
  v130 = (v0 + 64);
  v1 = *(*(v0 + 248) + *(*(v0 + 232) + 32));
  v132 = v1 + 64;
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v138 = *(v0 + 128);
  v139 = *(*(v0 + 248) + *(*(v0 + 232) + 32));
  v140 = (v138 + 8);

  v6 = 0;
  v143 = v0;
  v141 = v5;
LABEL_4:
  v7 = v6;
  while (1)
  {
    if (!v4)
    {
      if (v5 <= v7 + 1)
      {
        v10 = v7 + 1;
      }

      else
      {
        v10 = v5;
      }

      v11 = v10 - 1;
      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v9 >= v5)
        {
          v51 = *(v0 + 104);
          v52 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
          (*(*(v52 - 8) + 56))(v51, 1, 1, v52);
          v4 = 0;
          goto LABEL_17;
        }

        v4 = *(v132 + 8 * v9);
        ++v7;
        if (v4)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_62:

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

    v9 = v7;
LABEL_16:
    v12 = *(v0 + 288);
    v13 = *(v0 + 208);
    v14 = *(v0 + 120);
    v15 = *(v0 + 104);
    v16 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v17 = v16 | (v9 << 6);
    (*(v0 + 264))(v13, *(v139 + 48) + *(v138 + 72) * v17, v14);
    v18 = *(*(v139 + 56) + v17);
    v19 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
    v20 = *(v19 + 48);
    v12(v15, v13, v14);
    *(v15 + v20) = v18;
    v0 = v143;
    (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
    v11 = v9;
LABEL_17:
    v21 = *(v0 + 112);
    sub_1007291EC(*(v0 + 104), v21);
    v22 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
    if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
    {
      break;
    }

    v23 = *(*(v0 + 112) + *(v22 + 48));
    (*(v0 + 288))(*(v0 + 200));
    if (*(v142 + 16) && (v24 = sub_1000210EC(*(v0 + 200)), (v25 & 1) != 0))
    {
      if (((1 << v23) & 0x16) != 0)
      {
        (*v140)(*(v0 + 200), *(v0 + 120));
        v7 = v11;
        v5 = v141;
      }

      else
      {
        v5 = v141;
        if (*(*(v142 + 56) + v24) == 1)
        {
          v53 = *(v0 + 192);
          (*(v0 + 264))(v53, *(v0 + 200), *(v0 + 120));
          v54 = *(v0 + 64);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v146[0] = v54;
          v56 = sub_1000210EC(v53);
          v59 = v54;
          v60 = *(v54 + 16);
          v61 = (v57 & 1) == 0;
          v62 = __OFADD__(v60, v61);
          v63 = v60 + v61;
          if (v62)
          {
            __break(1u);
LABEL_66:
            __break(1u);
            return _swift_task_switch(v56, v57, v58);
          }

          v64 = v57;
          if (*(v59 + 24) >= v63)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v131 = v59;
              if ((v57 & 1) == 0)
              {
                goto LABEL_38;
              }
            }

            else
            {
              v72 = v56;
              sub_1010062B8();
              v56 = v72;
              v59 = v146[0];
              v131 = v146[0];
              if ((v64 & 1) == 0)
              {
                goto LABEL_38;
              }
            }

LABEL_36:
            v68 = *(v0 + 192);
            v69 = *(v0 + 120);
            *(*(v59 + 56) + v56) = 1;
            v70 = *v140;
            (*v140)(v68, v69);
            v71 = v131;
            goto LABEL_40;
          }

          v65 = *(v0 + 192);
          sub_100FE88DC(v63, isUniquelyReferenced_nonNull_native);
          v66 = v146[0];
          v56 = sub_1000210EC(v65);
          if ((v64 & 1) != (v67 & 1))
          {
            goto LABEL_62;
          }

          v59 = v66;
          v131 = v66;
          if (v64)
          {
            goto LABEL_36;
          }

LABEL_38:
          v73 = *(v0 + 264);
          v74 = *(v0 + 192);
          v75 = *(v0 + 120);
          *(v59 + 8 * (v56 >> 6) + 64) |= 1 << v56;
          v76 = v56;
          v73(v131[6] + *(v138 + 72) * v56, v74, v75);
          *(v131[7] + v76) = 1;
          v70 = *(v138 + 8);
          v56 = (v70)(v74, v75);
          v71 = v131;
          v77 = v131[2];
          v62 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v62)
          {
            goto LABEL_66;
          }

          v131[2] = v78;
LABEL_40:
          v137 = v70;
          *v130 = v71;
          if (qword_101694480 != -1)
          {
            swift_once();
          }

          v79 = *(v0 + 264);
          v80 = *(v0 + 200);
          v82 = *(v0 + 176);
          v81 = *(v0 + 184);
          v83 = *(v0 + 120);
          v84 = *(v0 + 80);
          v85 = type metadata accessor for Logger();
          sub_1000076D4(v85, qword_10177A560);
          v79(v81, v84, v83);
          v79(v82, v80, v83);
          v86 = Logger.logObject.getter();
          v87 = static os_log_type_t.error.getter();
          v88 = os_log_type_enabled(v86, v87);
          v89 = *(v0 + 200);
          v91 = *(v0 + 176);
          v90 = *(v0 + 184);
          v92 = *(v0 + 120);
          if (v88)
          {
            v136 = *(v0 + 200);
            v93 = swift_slowAlloc();
            v146[0] = swift_slowAlloc();
            *v93 = 141558787;
            *(v93 + 4) = 1752392040;
            *(v93 + 12) = 2081;
            sub_1007296F8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v94 = dispatch thunk of CustomStringConvertible.description.getter();
            loga = v86;
            v96 = v95;
            v137(v90, v92);
            v0 = v143;
            v97 = sub_1000136BC(v94, v96, v146);

            *(v93 + 14) = v97;
            *(v93 + 22) = 2160;
            *(v93 + 24) = 1752392040;
            *(v93 + 32) = 2081;
            v98 = dispatch thunk of CustomStringConvertible.description.getter();
            v100 = v99;
            v137(v91, v92);
            v101 = sub_1000136BC(v98, v100, v146);

            *(v93 + 34) = v101;
            _os_log_impl(&_mh_execute_header, loga, v87, "Circle on server contains a member who accepted,\nshare-id: %{private,mask.hash}s, member-id: %{private,mask.hash}s.", v93, 0x2Au);
            swift_arrayDestroy();

            v137(v136, v92);
          }

          else
          {

            v137(v91, v92);
            v137(v90, v92);
            v137(v89, v92);
          }

          v5 = v141;
          v6 = v11;
          goto LABEL_4;
        }

        (*v140)(*(v0 + 200), *(v0 + 120));
        v7 = v11;
      }
    }

    else
    {
      v144 = v11;
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 264);
      v27 = *(v0 + 200);
      v29 = *(v0 + 160);
      v28 = *(v0 + 168);
      v30 = *(v0 + 120);
      v31 = *(v0 + 80);
      v32 = type metadata accessor for Logger();
      sub_1000076D4(v32, qword_10177A560);
      v26(v28, v31, v30);
      v26(v29, v27, v30);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      v35 = os_log_type_enabled(v33, v34);
      v36 = *(v0 + 200);
      v38 = *(v0 + 160);
      v37 = *(v0 + 168);
      v39 = *(v0 + 120);
      if (v35)
      {
        v40 = swift_slowAlloc();
        v146[0] = swift_slowAlloc();
        *v40 = 141558787;
        *(v40 + 4) = 1752392040;
        *(v40 + 12) = 2081;
        sub_1007296F8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v135 = v34;
        log = v33;
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = v42;
        v44 = *v140;
        (*v140)(v37, v39);
        v45 = sub_1000136BC(v41, v43, v146);

        *(v40 + 14) = v45;
        *(v40 + 22) = 2160;
        *(v40 + 24) = 1752392040;
        *(v40 + 32) = 2081;
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;
        v44(v38, v39);
        v49 = v44;
        v50 = sub_1000136BC(v46, v48, v146);

        *(v40 + 34) = v50;
        _os_log_impl(&_mh_execute_header, log, v135, "Owner circle contains a member which is not in the server share,\nshare-id: %{private,mask.hash}s,\nmember-id: %{private,mask.hash}s.", v40, 0x2Au);
        swift_arrayDestroy();

        v0 = v143;

        v49(v36, v39);
      }

      else
      {

        v8 = *v140;
        (*v140)(v38, v39);
        v8(v37, v39);
        v8(v36, v39);
      }

      v7 = v144;
      v5 = v141;
    }
  }

  if (!v131[2])
  {
    v126 = *(v0 + 248);

    goto LABEL_58;
  }

  v102 = *(v0 + 328);
  v103 = *(v0 + 248);
  v104 = *(v0 + 96);
  v105 = swift_task_alloc();
  *(v105 + 16) = v103;
  *(v105 + 24) = v130;
  sub_100EC0C48(sub_10072925C, v104);
  if (!v102)
  {
    v127 = *(v0 + 256);

    v56 = sub_100728554;
    v57 = v127;
    v58 = 0;

    return _swift_task_switch(v56, v57, v58);
  }

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v106 = *(v0 + 264);
  v107 = *(v0 + 144);
  v108 = *(v0 + 120);
  v109 = *(v0 + 80);
  v110 = type metadata accessor for Logger();
  sub_1000076D4(v110, qword_10177A560);
  v106(v107, v109, v108);
  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.error.getter();
  v113 = os_log_type_enabled(v111, v112);
  v114 = *(v0 + 144);
  v115 = *(v0 + 120);
  v116 = (*(v0 + 128) + 8);
  if (v113)
  {
    v117 = swift_slowAlloc();
    v146[0] = swift_slowAlloc();
    *v117 = 141558531;
    *(v117 + 4) = 1752392040;
    *(v117 + 12) = 2081;
    v145 = v112;
    sub_1007296F8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v118 = dispatch thunk of CustomStringConvertible.description.getter();
    v120 = v119;
    (*v116)(v114, v115);
    v121 = sub_1000136BC(v118, v120, v146);

    *(v117 + 14) = v121;
    *(v117 + 22) = 2080;
    swift_beginAccess();
    sub_1007296F8(&qword_1016967B0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

    v122 = Dictionary.description.getter();
    v124 = v123;

    v125 = sub_1000136BC(v122, v124, v146);

    *(v117 + 24) = v125;
    _os_log_impl(&_mh_execute_header, v111, v145, "Failed to update members from server response,\nshare-id: %{private,mask.hash}s, updatedMembers: %s.", v117, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*v116)(v114, v115);
  }

  v0 = v143;
  v126 = *(v143 + 248);
LABEL_58:
  sub_100729698(v126, type metadata accessor for OwnerSharingCircle);

  v128 = *(v0 + 8);

  return v128();
}

uint64_t sub_100728428()
{
  sub_100729698(*(v0 + 248), type metadata accessor for OwnerSharingCircle);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10072857C()
{
  v1 = v0[42];
  v2 = v0[12];
  v3 = swift_task_alloc();
  v0[43] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[44] = v4;
  *v4 = v0;
  v4[1] = sub_100728674;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 1);
}

uint64_t sub_100728674()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_100728B94;
  }

  else
  {

    v2 = sub_100728790;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1007287AC()
{
  v26 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[10];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  v1(v2, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[19];
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[12];
  if (v8)
  {
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1007296F8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v12;
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v25);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2080;
    swift_beginAccess();
    sub_1007296F8(&qword_1016967B0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

    v18 = Dictionary.description.getter();
    v20 = v19;

    v21 = sub_1000136BC(v18, v20, &v25);

    *(v13 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v6, v7, "Circle on server updated members state,\nshare-id: %{private,mask.hash}s, updatedMembers: %s.", v13, 0x20u);
    swift_arrayDestroy();

    sub_10000B3A8(v24, &qword_1016975C8, &qword_10138C1F0);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
    sub_10000B3A8(v12, &qword_1016975C8, &qword_10138C1F0);
  }

  sub_100729698(v0[31], type metadata accessor for OwnerSharingCircle);

  v22 = v0[1];

  return v22();
}

uint64_t sub_100728B94()
{
  v1 = *(v0 + 88);

  return _swift_task_switch(sub_100728C00, v1, 0);
}

uint64_t sub_100728C00()
{
  v24 = v0;
  sub_10000B3A8(v0[12], &qword_1016975C8, &qword_10138C1F0);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[10];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  v1(v2, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[18];
  v10 = v0[15];
  v11 = (v0[16] + 8);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1007296F8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*v11)(v9, v10);
    v16 = sub_1000136BC(v13, v15, &v23);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2080;
    swift_beginAccess();
    sub_1007296F8(&qword_1016967B0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

    v17 = Dictionary.description.getter();
    v19 = v18;

    v20 = sub_1000136BC(v17, v19, &v23);

    *(v12 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to update members from server response,\nshare-id: %{private,mask.hash}s, updatedMembers: %s.", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*v11)(v9, v10);
  }

  sub_100729698(v0[31], type metadata accessor for OwnerSharingCircle);

  v21 = v0[1];

  return v21();
}

uint64_t sub_100728FE8()
{
  sub_100007BAC((v0 + 112));

  sub_100007BAC((v0 + 160));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100729054(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for OwnerSharingCircle(0);
  v7 = *(a2 + *(v6 + 32));
  v8 = *a3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v7;
  sub_1007292B8(v8, sub_1003153D0, 0, isUniquelyReferenced_nonNull_native, &v13);

  v10 = v13;
  v11 = *(v6 + 32);

  *(a1 + v11) = v10;
  return result;
}

uint64_t sub_100729120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BookmarkMetaData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100729184(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007291EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016BC360, &qword_10139CBE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007292B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v50 = a5;
  v42 = type metadata accessor for UUID();
  v9 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_10169DB08, &qword_10139CBE8);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - v13;
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v43 = a1;
  v44 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v45 = v16;
  v46 = 0;
  v47 = v19 & v17;
  v48 = a2;
  v49 = a3;
  v20 = (v9 + 32);
  v40 = (v9 + 8);
  v41 = v9;

  v39 = a3;

  while (1)
  {
    sub_10061D55C(v14);
    v21 = sub_1000BC4D4(&qword_10169DB10, &qword_1013B3510);
    if ((*(*(v21 - 8) + 48))(v14, 1, v21) == 1)
    {
      sub_1000128F8(v43);
    }

    v22 = *(v21 + 48);
    v23 = *v20;
    (*v20)(v11, v14, v42);
    v24 = v14[v22];
    v25 = *v50;
    v27 = sub_1000210EC(v11);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((a4 & 1) == 0)
      {
        sub_1010062B8();
      }
    }

    else
    {
      sub_100FE88DC(v30, a4 & 1);
      v32 = sub_1000210EC(v11);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_19;
      }

      v27 = v32;
    }

    v34 = *v50;
    if (v31)
    {
      (*v40)(v11, v42);
      *(v34[7] + v27) = v24;
      a4 = 1;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v23((v34[6] + *(v41 + 72) * v27), v11, v42);
      *(v34[7] + v27) = v24;
      v35 = v34[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_18;
      }

      v34[2] = v37;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100729630(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100729698(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007296F8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100729740(uint64_t a1)
{
  v4 = *(type metadata accessor for OwnerSharingCircle(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_100725330(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100729838()
{
  v1 = (type metadata accessor for OwnerSharingCircle(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  swift_unknownObjectRelease();

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2 + v4, v5);
  v6(v0 + v2 + v1[8], v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100729968(uint64_t a1)
{
  v4 = *(type metadata accessor for OwnerSharingCircle(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100724FCC(a1, v6, v7, v8, v1 + v5);
}

void sub_100729E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(a3 + 16))(a3);
}

uint64_t sub_100729ED8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
    v11 = v6;
    swift_once();
    v6 = v11;
  }

  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, qword_10177C410, "AccessoryDiscoveryService.pairingStatus", 39, 2, _swiftEmptyArrayStorage);
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = v7;
  v9 = a1;

  static Transaction.asyncTask(name:block:)();
}

void sub_10072A250(char *a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v6 = _Block_copy(aBlock);
  v7 = *&a1[OBJC_IVAR____TtC12searchpartyd28AccessoryDiscoveryTrampoline_implementation];
  _Block_copy(v6);
  v8 = a1;
  a4(v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

id sub_10072A678()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryDiscoveryTrampoline();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10072A6E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100E17094(v2, v3, v5, v4);
}

uint64_t sub_10072A78C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014650;

  return sub_100E15C98(v0 + v3, v5, v7, v8);
}

uint64_t sub_10072A8B8()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014650;

  return sub_100E18C30(v0 + v3, v5, v6);
}

uint64_t type metadata accessor for PencilPairingLockCheckResponse(uint64_t a1)
{
  result = qword_1016A7B78;
  if (!qword_1016A7B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10072AA38(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1002359B8(319, &qword_1016BD350, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_1002359B8(319, &qword_10169A330, &type metadata for Data);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10072AB10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for UUID();
  v33 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A7BC8, &qword_1013B6C18);
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = v29 - v7;
  v9 = type metadata accessor for PencilPairingLockCheckResponse(0);
  v10 = __chkstk_darwin(v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12[*(v10 + 44)] = 0;
  v13 = a1[3];
  v37 = a1;
  sub_1000035D0(a1, v13);
  sub_10072B4EC();
  v14 = v8;
  v15 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return sub_100007BAC(v37);
  }

  v30 = v5;
  v31 = v3;
  v16 = v34;
  v36 = v9;
  v39 = 0;
  v17 = sub_1000E307C();
  v18 = v14;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = *(&v38 + 1);
  *v12 = v38;
  *(v12 + 1) = v19;
  v39 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v17;
  *(v12 + 1) = v38;
  v39 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v12;
  *(v12 + 2) = v38;
  v39 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29[1] = v20;
  *(v12 + 3) = v38;
  LOBYTE(v38) = 4;
  sub_100395BEC();
  v22 = v30;
  v23 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = v36;
  (*(v33 + 32))(v21 + *(v36 + 32), v22, v23);
  LOBYTE(v38) = 5;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = (v21 + *(v24 + 36));
  *v26 = v25;
  v26[1] = v27;
  v39 = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v16 + 8))(v18, v35);
  *(v21 + *(v24 + 40)) = v38;
  sub_10072B540(v21, v32);
  sub_100007BAC(v37);
  return sub_10072B5A4(v21);
}

uint64_t sub_10072B0D0(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10072B208@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10072B718(*a1);
  *a2 = result;
  return result;
}

void sub_10072B238(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000007265626DLL;
  v4 = 0x754E6C6169726573;
  v5 = 0xED00006449656C70;
  v6 = 0x704164656B73616DLL;
  if (v2 != 5)
  {
    v6 = 0xD000000000000013;
    v5 = 0x8000000101347DB0;
  }

  v7 = 0xEA00000000006E67;
  v8 = 0x6953726576726573;
  if (v2 != 3)
  {
    v8 = 0x6449616E6D66;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEF7265626D754E6CLL;
  v10 = 0x6169726553746C61;
  if (v2 != 1)
  {
    v10 = 0x5364656573;
    v9 = 0xE500000000000000;
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

unint64_t sub_10072B338()
{
  v1 = *v0;
  v2 = 0x754E6C6169726573;
  v3 = 0x704164656B73616DLL;
  if (v1 != 5)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x6953726576726573;
  if (v1 != 3)
  {
    v4 = 0x6449616E6D66;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6169726553746C61;
  if (v1 != 1)
  {
    v5 = 0x5364656573;
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

unint64_t sub_10072B434@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10072B718(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10072B45C(uint64_t a1)
{
  v2 = sub_10072B4EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10072B498(uint64_t a1)
{
  v2 = sub_10072B4EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10072B4EC()
{
  result = qword_1016A7BD0;
  if (!qword_1016A7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A7BD0);
  }

  return result;
}

uint64_t sub_10072B540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PencilPairingLockCheckResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10072B5A4(uint64_t a1)
{
  v2 = type metadata accessor for PencilPairingLockCheckResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10072B614()
{
  result = qword_1016A7BD8;
  if (!qword_1016A7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A7BD8);
  }

  return result;
}

unint64_t sub_10072B66C()
{
  result = qword_1016A7BE0;
  if (!qword_1016A7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A7BE0);
  }

  return result;
}

unint64_t sub_10072B6C4()
{
  result = qword_1016A7BE8;
  if (!qword_1016A7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A7BE8);
  }

  return result;
}

unint64_t sub_10072B718(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101609C28, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10072B764(uint64_t *a1, int a2)
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

uint64_t sub_10072B7AC(uint64_t result, int a2, int a3)
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

uint64_t sub_10072B7F8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B078);
  sub_1000076D4(v0, qword_10177B078);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10072B87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = type metadata accessor for Connection.TransactionMode();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016A7C00, &unk_1013B6DF0);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for Table();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_10072BA04, 0, 0);
}

uint64_t sub_10072BA04()
{
  v1 = sub_100027FA4();
  if (v1)
  {
    v2 = v1;
    (*(*(v0 + 120) + 16))(*(v0 + 128), *(v0 + 48) + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_findMyServiceDevices, *(v0 + 112));
    if (qword_1016953A0 != -1)
    {
      swift_once();
    }

    v3 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
    sub_1000076D4(v3, qword_10177CA88);
    sub_1000041A4(&qword_1016A7C08, &qword_10169DE00, &unk_10139D160, &protocol conformance descriptor for Expression<A>);
    Expressible.asSQL()();
    v4._countAndFlagsBits = 8236;
    v4._object = 0xE200000000000000;
    String.append(_:)(v4);
    if (qword_1016952D0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 104);
    v6 = *(v0 + 80);
    v7 = *(v0 + 72);
    v19 = *(v0 + 128);
    v20 = *(v0 + 64);
    v8 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    v18 = *(v0 + 32);
    sub_1000076D4(v8, qword_10177C818);
    sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
    v9 = Expressible.asSQL()();
    String.append(_:)(v9);

    sub_1000041A4(&qword_1016A7C10, &qword_1016A7C00, &unk_1013B6DF0, &protocol conformance descriptor for Expression<A>);
    ExpressionType.init(literal:)();
    *(v0 + 16) = _swiftEmptyArrayStorage;
    v10 = swift_task_alloc();
    v10[1].i64[0] = v2;
    v10[1].i64[1] = v19;
    v10[2] = vextq_s8(v18, v18, 8uLL);
    v10[3].i64[0] = v0 + 16;
    v10[3].i64[1] = v5;
    (*(v7 + 104))(v6, enum case for Connection.TransactionMode.deferred(_:), v20);
    Connection.transaction(_:block:)();
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v13 = *(v0 + 16);
    if (*(v13 + 16))
    {
      *(v0 + 24) = v13;

      AsyncStreamProvider.yield(value:transaction:)();

      swift_bridgeObjectRelease_n();
    }

    else
    {
    }

    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 112);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    (*(v15 + 8))(v14, v16);

    v12 = *(v0 + 8);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v11 = 2;
    *(v11 + 4) = 1;
    swift_willThrow();

    v12 = *(v0 + 8);
  }

  return v12();
}

uint64_t sub_10072BEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v340 = a6;
  v336 = a5;
  v353 = a4;
  v345 = a2;
  v348 = a1;
  v307 = type metadata accessor for Delete();
  v306 = *(v307 - 8);
  __chkstk_darwin(v307);
  v305 = &v301 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v346 = type metadata accessor for Table();
  v314 = *(v346 - 8);
  v8 = __chkstk_darwin(v346);
  v349 = &v301 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v315 = &v301 - v10;
  v371 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  v352 = *(v371 - 1);
  __chkstk_darwin(v371);
  v358 = &v301 - v11;
  v339 = type metadata accessor for Insert();
  v351 = *(v339 - 8);
  __chkstk_darwin(v339);
  v357 = &v301 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v14 = __chkstk_darwin(v13 - 8);
  v317 = &v301 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v316 = &v301 - v17;
  v18 = __chkstk_darwin(v16);
  v318 = &v301 - v19;
  __chkstk_darwin(v18);
  v326 = &v301 - v20;
  v342 = type metadata accessor for FindMyServiceDeviceStore.ListChange(0);
  v341 = *(v342 - 8);
  v21 = __chkstk_darwin(v342);
  v304 = &v301 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v322 = &v301 - v24;
  __chkstk_darwin(v23);
  v347 = &v301 - v25;
  v26 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v27 = __chkstk_darwin(v26 - 8);
  v312 = &v301 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v311 = &v301 - v30;
  __chkstk_darwin(v29);
  v335 = &v301 - v31;
  MyServiceDevice = type metadata accessor for FindMyServiceDevice(0);
  v308 = *(MyServiceDevice - 1);
  v32 = __chkstk_darwin(MyServiceDevice);
  v350 = &v301 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v325 = &v301 - v35;
  v36 = __chkstk_darwin(v34);
  v324 = &v301 - v37;
  v38 = __chkstk_darwin(v36);
  v323 = &v301 - v39;
  v40 = __chkstk_darwin(v38);
  v320 = &v301 - v41;
  v42 = __chkstk_darwin(v40);
  v319 = &v301 - v43;
  v44 = __chkstk_darwin(v42);
  v321 = &v301 - v45;
  v46 = __chkstk_darwin(v44);
  v327 = &v301 - v47;
  v48 = __chkstk_darwin(v46);
  v359 = &v301 - v49;
  v50 = __chkstk_darwin(v48);
  v363 = &v301 - v51;
  v52 = __chkstk_darwin(v50);
  v54 = &v301 - v53;
  v55 = __chkstk_darwin(v52);
  v366 = &v301 - v56;
  __chkstk_darwin(v55);
  v58 = (&v301 - v57);
  v59 = type metadata accessor for Row();
  v60 = *(v59 - 8);
  v61 = __chkstk_darwin(v59);
  v367 = &v301 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v64 = &v301 - v63;
  v65 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  __chkstk_darwin(v65 - 8);
  v370 = (&v301 - v66);
  v368 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v67 = *(v368 - 8);
  v68 = __chkstk_darwin(v368);
  v313 = &v301 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v71 = &v301 - v70;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v338 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v72 = sub_1000076D4(v338, qword_10177C818);
  v73 = type metadata accessor for UUID();
  v344 = v72;
  v361 = v73;
  == infix<A>(_:_:)();
  v343 = a3;
  v74 = v71;
  v374 = v346;
  v375 = &protocol witness table for Table;
  sub_1000280DC(&v372);
  QueryType.filter(_:)();
  v77 = *(v67 + 8);
  v75 = v67 + 8;
  v76 = v77;
  v77(v71, v368);
  v78 = v376;
  v79 = Connection.prepare(_:)();
  v376 = v78;
  if (v78)
  {
    return sub_100007BAC(&v372);
  }

  v81 = v79;
  v362 = v76;
  v302 = v74;
  v360 = v75;
  sub_100007BAC(&v372);
  v303 = v81;
  v82 = dispatch thunk of _AnySequenceBox._makeIterator()();
  v83 = v370;
  v365 = v82;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v84 = *(v60 + 48);
  v364 = v60 + 48;
  v356 = v84;
  if (v84(v83, 1, v59) == 1)
  {
    v85 = _swiftEmptyDictionarySingleton;
LABEL_10:
    v337 = v85;

    v99 = *(v353 + 16);
    if (v99)
    {
      v100 = v353 + ((*(v308 + 80) + 32) & ~*(v308 + 80));
      v367 = *(v308 + 72);
      v329 = v361 - 8;
      v334 = (v352 + 16);
      v333 = (v352 + 8);
      v332 = (v351 + 1);
      *&v98 = 136315394;
      v328 = v98;
      *&v98 = 136315138;
      v309 = v98;
      *(&v101 + 1) = 54;
      v331 = xmmword_1013B6D70;
      *&v101 = 138412290;
      v310 = v101;
      v301 = v100;
      v102 = v100;
      v366 = v99;
      v103 = v99;
      v104 = MyServiceDevice;
      v105 = v363;
      v330 = v54;
      do
      {
        v364 = v102;
        v365 = v103;
        sub_10073132C(v102, v54);
        if (qword_101694AD8 != -1)
        {
          swift_once();
        }

        v356 = type metadata accessor for Logger();
        v109 = sub_1000076D4(v356, qword_10177B740);
        sub_10073132C(v54, v105);
        v110 = v359;
        sub_10073132C(v54, v359);
        v370 = v109;
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v372 = swift_slowAlloc();
          *v113 = v328;
          v114 = v335;
          sub_1000D2A70(v105, v335, &qword_1016980D0, &unk_10138F3B0);
          v115 = v361;
          v116 = *(v361 - 8);
          if ((*(v116 + 48))(v114, 1, v361) == 1)
          {
            sub_10000B3A8(v114, &qword_1016980D0, &unk_10138F3B0);
            v117 = 0xE400000000000000;
            v118 = 1162760014;
          }

          else
          {
            v119 = v114;
            v118 = UUID.uuidString.getter();
            v117 = v120;
            v121 = v119;
            v110 = v359;
            (*(v116 + 8))(v121, v115);
          }

          sub_100731400(v363);
          v122 = sub_1000136BC(v118, v117, &v372);

          *(v113 + 4) = v122;
          *(v113 + 12) = 2080;
          v104 = MyServiceDevice;
          v123 = (v110 + MyServiceDevice[8]);
          v124 = *v123;
          v125 = v123[1];

          sub_100731400(v110);
          v126 = sub_1000136BC(v124, v125, &v372);

          *(v113 + 14) = v126;
          _os_log_impl(&_mh_execute_header, v111, v112, "Check Insert got beacon %s, name: %s", v113, 0x16u);
          swift_arrayDestroy();

          v54 = v330;
        }

        else
        {

          sub_100731400(v110);
          sub_100731400(v105);
        }

        v127 = &v54[v104[5]];
        v128 = *(v127 + 1);
        if (v128)
        {
          v351 = *v127;
          v129 = v104[7];
          v130 = v337;
          v131 = v337[2];
          v352 = v129;
          if (v131 && (v132 = sub_1000210EC(&v54[v129]), (v133 & 1) != 0))
          {
            v134 = v321;
            sub_10073132C(v130[7] + v132 * v367, v321);
            v135 = v134;
            v136 = v327;
            sub_10073145C(v135, v327, type metadata accessor for FindMyServiceDevice);
            v137 = sub_1008BD92C(v136, v54);
            v138 = v324;
            v139 = v323;
            if (v137)
            {
              sub_10073132C(v54, v323);
              sub_10073132C(v54, v138);
              v140 = Logger.logObject.getter();
              v141 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v140, v141))
              {
                v142 = v139;
                v143 = swift_slowAlloc();
                v370 = swift_slowAlloc();
                v372 = v370;
                *v143 = v328;
                v144 = v142;
                v145 = v312;
                sub_1000D2A70(v144, v312, &qword_1016980D0, &unk_10138F3B0);
                v146 = v361;
                v147 = *(v361 - 8);
                if ((*(v147 + 48))(v145, 1, v361) == 1)
                {
                  sub_10000B3A8(v145, &qword_1016980D0, &unk_10138F3B0);
                  v148 = 0xE400000000000000;
                  v149 = 1162760014;
                }

                else
                {
                  v239 = v145;
                  v149 = UUID.uuidString.getter();
                  v148 = v240;
                  (*(v147 + 8))(v239, v146);
                }

                sub_100731400(v323);
                v241 = sub_1000136BC(v149, v148, &v372);

                *(v143 + 4) = v241;
                *(v143 + 12) = 2080;
                v104 = MyServiceDevice;
                v242 = v324;
                v243 = &v324[MyServiceDevice[8]];
                v244 = *v243;
                v245 = v243[1];

                sub_100731400(v242);
                v246 = sub_1000136BC(v244, v245, &v372);

                *(v143 + 14) = v246;
                _os_log_impl(&_mh_execute_header, v140, v141, "Insert no change got beacon %s, name: %s", v143, 0x16u);
                swift_arrayDestroy();

                v54 = v330;
              }

              else
              {

                sub_100731400(v138);
                sub_100731400(v139);
              }

              v247 = v317;
              sub_1000D2A70(&v54[v104[31]], v317, &unk_101696AC0, &qword_101390A60);
              v248 = type metadata accessor for URL();
              v249 = *(v248 - 8);
              if ((*(v249 + 48))(v247, 1, v248) == 1)
              {
                sub_100731400(v327);
                sub_10000B3A8(v247, &unk_101696AC0, &qword_101390A60);
                v354 = 0;
                v355 = 0;
              }

              else
              {
                v354 = URL.absoluteString.getter();
                v355 = v250;
                sub_100731400(v327);
                (*(v249 + 8))(v247, v248);
              }

              v169 = MyServiceDevice;
            }

            else
            {
              sub_10073132C(v54, v322);
              swift_storeEnumTagMultiPayload();
              v223 = v336;
              v224 = *v336;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v223 = v224;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v224 = sub_100A5DDC8(0, v224[2] + 1, 1, v224);
                *v336 = v224;
              }

              v226 = v319;
              v228 = v224[2];
              v227 = v224[3];
              if (v228 >= v227 >> 1)
              {
                v224 = sub_100A5DDC8((v227 > 1), v228 + 1, 1, v224);
                *v336 = v224;
              }

              v224[2] = v228 + 1;
              sub_10073145C(v322, v224 + ((*(v341 + 80) + 32) & ~*(v341 + 80)) + *(v341 + 72) * v228, type metadata accessor for FindMyServiceDeviceStore.ListChange);
              sub_10073132C(v54, v226);
              v229 = v320;
              sub_10073132C(v54, v320);
              v230 = Logger.logObject.getter();
              v231 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v230, v231))
              {
                v232 = swift_slowAlloc();
                v370 = swift_slowAlloc();
                v372 = v370;
                *v232 = v328;
                v233 = v311;
                sub_1000D2A70(v226, v311, &qword_1016980D0, &unk_10138F3B0);
                v234 = v361;
                v235 = *(v361 - 8);
                if ((*(v235 + 48))(v233, 1, v361) == 1)
                {
                  sub_10000B3A8(v233, &qword_1016980D0, &unk_10138F3B0);
                  v236 = 0xE400000000000000;
                  v237 = 1162760014;
                }

                else
                {
                  v251 = v233;
                  v237 = UUID.uuidString.getter();
                  v236 = v252;
                  (*(v235 + 8))(v251, v234);
                }

                sub_100731400(v319);
                v253 = sub_1000136BC(v237, v236, &v372);

                *(v232 + 4) = v253;
                *(v232 + 12) = 2080;
                v238 = MyServiceDevice;
                v254 = v320;
                v255 = (v320 + MyServiceDevice[8]);
                v256 = *v255;
                v257 = v255[1];

                sub_100731400(v254);
                v258 = sub_1000136BC(v256, v257, &v372);

                *(v232 + 14) = v258;
                _os_log_impl(&_mh_execute_header, v230, v231, "Insert got beacon %s, name: %s", v232, 0x16u);
                swift_arrayDestroy();

                v54 = v330;
              }

              else
              {

                sub_100731400(v229);
                sub_100731400(v226);
                v238 = MyServiceDevice;
              }

              v259 = v316;
              sub_1000D2A70(&v54[v238[31]], v316, &unk_101696AC0, &qword_101390A60);
              v260 = type metadata accessor for URL();
              v261 = v238;
              v262 = *(v260 - 8);
              v263 = *(v262 + 48);
              if (v263(v259, 1, v260) == 1)
              {
                v264 = v327 + v261[31];
                v265 = v318;
                sub_1000D2A70(v264, v318, &unk_101696AC0, &qword_101390A60);
                if (v263(v259, 1, v260) != 1)
                {
                  sub_10000B3A8(v259, &unk_101696AC0, &qword_101390A60);
                }
              }

              else
              {
                v265 = v318;
                (*(v262 + 32))(v318, v259, v260);
                (*(v262 + 56))(v265, 0, 1, v260);
              }

              if (v263(v265, 1, v260) == 1)
              {
                sub_100731400(v327);
                sub_10000B3A8(v265, &unk_101696AC0, &qword_101390A60);
                v354 = 0;
                v355 = 0;
              }

              else
              {
                v354 = URL.absoluteString.getter();
                v355 = v266;
                sub_100731400(v327);
                (*(v262 + 8))(v265, v260);
              }

              v169 = MyServiceDevice;
            }
          }

          else
          {
            sub_10073132C(v54, v347);
            swift_storeEnumTagMultiPayload();
            v150 = v336;
            v151 = *v336;
            v152 = swift_isUniquelyReferenced_nonNull_native();
            *v150 = v151;
            if ((v152 & 1) == 0)
            {
              v151 = sub_100A5DDC8(0, v151[2] + 1, 1, v151);
              *v336 = v151;
            }

            v153 = v326;
            v155 = v151[2];
            v154 = v151[3];
            if (v155 >= v154 >> 1)
            {
              v151 = sub_100A5DDC8((v154 > 1), v155 + 1, 1, v151);
              *v336 = v151;
            }

            v151[2] = v155 + 1;
            sub_10073145C(v347, v151 + ((*(v341 + 80) + 32) & ~*(v341 + 80)) + *(v341 + 72) * v155, type metadata accessor for FindMyServiceDeviceStore.ListChange);
            sub_1000D2A70(&v54[MyServiceDevice[31]], v153, &unk_101696AC0, &qword_101390A60);
            v156 = type metadata accessor for URL();
            v157 = *(v156 - 8);
            if ((*(v157 + 48))(v153, 1, v156) == 1)
            {
              sub_10000B3A8(v153, &unk_101696AC0, &qword_101390A60);
              v354 = 0;
              v355 = 0;
            }

            else
            {
              v354 = URL.absoluteString.getter();
              v355 = v168;
              (*(v157 + 8))(v153, v156);
            }

            v169 = MyServiceDevice;
          }

          sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
          v170 = *(type metadata accessor for Setter() - 8);
          v171 = *(v170 + 72);
          v172 = (*(v170 + 80) + 32) & ~*(v170 + 80);
          v173 = swift_allocObject();
          *(v173 + 16) = v331;
          if (qword_101695398 != -1)
          {
            v267 = v173;
            swift_once();
            v173 = v267;
          }

          v353 = v173;
          v174 = v173 + v172;
          v175 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
          sub_1000076D4(v175, qword_10177CA70);
          <- infix<A>(_:_:)();
          if (qword_1016953A0 != -1)
          {
            swift_once();
          }

          v370 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
          sub_1000076D4(v370, qword_10177CA88);
          v372 = v351;
          v373 = v128;
          <- infix<A>(_:_:)();
          <- infix<A>(_:_:)();
          v176 = v338;
          if (qword_1016953A8 != -1)
          {
            v268 = v338;
            swift_once();
            v176 = v268;
          }

          sub_1000076D4(v176, qword_10177CAA0);
          <- infix<A>(_:_:)();
          if (qword_1016953B0 != -1)
          {
            swift_once();
          }

          v177 = v370;
          sub_1000076D4(v370, qword_10177CAB8);
          v178 = &v54[v169[8]];
          v179 = *(v178 + 1);
          v372 = *v178;
          v373 = v179;

          <- infix<A>(_:_:)();

          if (qword_1016953B8 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v177, qword_10177CAD0);
          v180 = 3158066;
          v181 = 3223602;
          if (v54[v169[9]] != 2)
          {
            v181 = 3354674;
          }

          if (!v54[v169[9]])
          {
            v180 = 12589;
          }

          v182 = 0xE200000000000000;
          if (v54[v169[9]])
          {
            v182 = 0xE300000000000000;
          }

          if (v54[v169[9]] <= 1u)
          {
            v183 = v180;
          }

          else
          {
            v183 = v181;
          }

          if (v54[v169[9]] <= 1u)
          {
            v184 = v182;
          }

          else
          {
            v184 = 0xE300000000000000;
          }

          v372 = v183;
          v373 = v184;
          <- infix<A>(_:_:)();

          if (qword_1016953C0 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v371, qword_10177CAE8);
          v185 = &v54[v169[10]];
          v186 = *(v185 + 1);
          v372 = *v185;
          v373 = v186;

          <- infix<A>(_:_:)();

          if (qword_1016953C8 != -1)
          {
            swift_once();
          }

          v352 = v174 - v171;
          sub_1000076D4(v177, qword_10177CB00);
          v187 = &v54[v169[11]];
          v188 = *(v187 + 1);
          v372 = *v187;
          v373 = v188;

          <- infix<A>(_:_:)();

          if (qword_1016953D0 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v177, qword_10177CB18);
          v189 = &v54[v169[12]];
          v190 = *(v189 + 1);
          v372 = *v189;
          v373 = v190;

          <- infix<A>(_:_:)();

          v191 = v177;
          v192 = v169;
          if (qword_1016953D8 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v191, qword_10177CB30);
          v193 = &v54[v169[13]];
          v194 = *(v193 + 1);
          v372 = *v193;
          v373 = v194;

          <- infix<A>(_:_:)();

          if (qword_1016953E0 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v191, qword_10177CB48);
          v195 = &v54[v169[14]];
          v196 = *(v195 + 1);
          v372 = *v195;
          v373 = v196;

          <- infix<A>(_:_:)();

          if (qword_1016953E8 != -1)
          {
            swift_once();
          }

          v197 = sub_1000BC4D4(&qword_1016A7BF8, &qword_1013B6DD8);
          sub_1000076D4(v197, qword_10177CB60);
          v198 = &v54[v169[15]];
          v199 = *v198;
          LOBYTE(v198) = v198[8];
          v372 = v199;
          LOBYTE(v373) = v198;
          <- infix<A>(_:_:)();
          if (qword_1016953F0 != -1)
          {
            swift_once();
          }

          v200 = v371;
          v201 = sub_1000076D4(v371, qword_10177CB78);
          (*v334)(v358, v201, v200);
          v202 = v54[v169[16]];
          if (v202 <= 1)
          {
            v203 = 0x64656772616843;
            if (!v54[v169[16]])
            {
              v203 = 0x6E776F6E6B6E55;
            }

            v204 = 0xE700000000000000;
          }

          else if (v202 == 2)
          {
            v204 = 0xE800000000000000;
            v203 = 0x676E696772616843;
          }

          else if (v202 == 3)
          {
            v203 = 0x6772616843746F4ELL;
            v204 = 0xEB00000000676E69;
          }

          else
          {
            v203 = 0;
            v204 = 0;
          }

          v372 = v203;
          v373 = v204;
          v205 = v358;
          <- infix<A>(_:_:)();

          (*v333)(v205, v371);
          if (qword_1016953F8 != -1)
          {
            swift_once();
          }

          v206 = v368;
          sub_1000076D4(v368, qword_10177CB90);
          LOBYTE(v372) = v54[v192[17]];
          <- infix<A>(_:_:)();
          if (qword_101695400 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v206, qword_10177CBA8);
          LOBYTE(v372) = v54[v192[18]];
          <- infix<A>(_:_:)();
          if (qword_101695408 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v206, qword_10177CBC0);
          LOBYTE(v372) = v54[v192[19]];
          <- infix<A>(_:_:)();
          if (qword_101695410 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v370, qword_10177CBD8);
          v207 = &v54[v192[20]];
          v208 = *(v207 + 1);
          v372 = *v207;
          v373 = v208;

          <- infix<A>(_:_:)();

          if (qword_101695418 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v368, qword_10177CBF0);
          LOBYTE(v372) = v54[v192[21]];
          <- infix<A>(_:_:)();
          if (qword_101695420 != -1)
          {
            swift_once();
          }

          v209 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
          sub_1000076D4(v209, qword_10177CC08);
          type metadata accessor for Date();
          <- infix<A>(_:_:)();
          if (qword_101695428 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v209, qword_10177CC20);
          <- infix<A>(_:_:)();
          v210 = v192;
          if (qword_101695430 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v209, qword_10177CC38);
          <- infix<A>(_:_:)();
          v211 = v368;
          if (qword_101695438 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v211, qword_10177CC50);
          LOBYTE(v372) = v54[v210[25]];
          <- infix<A>(_:_:)();
          if (qword_101695440 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v370, qword_10177CC68);
          v212 = &v54[v210[26]];
          v213 = v210;
          v214 = *(v212 + 1);
          v372 = *v212;
          v373 = v214;

          <- infix<A>(_:_:)();

          if (qword_101695448 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v211, qword_10177CC80);
          LOBYTE(v372) = v54[v213[27]];
          <- infix<A>(_:_:)();
          v104 = v213;
          if (qword_101695450 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v211, qword_10177CC98);
          LOBYTE(v372) = v54[v213[28]];
          <- infix<A>(_:_:)();
          v105 = v363;
          if (qword_101695458 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v211, qword_10177CCB0);
          LOBYTE(v372) = v54[v104[29]];
          <- infix<A>(_:_:)();
          if (qword_101695460 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v371, qword_10177CCC8);
          v372 = v354;
          v373 = v355;
          <- infix<A>(_:_:)();

          v215 = sub_1000BC4D4(&qword_1016A7C00, &unk_1013B6DF0);
          v374 = v215;
          v375 = sub_1000041A4(&qword_1016A7C20, &qword_1016A7C00, &unk_1013B6DF0, &protocol conformance descriptor for Expression<A>);
          v216 = sub_1000280DC(&v372);
          (*(*(v215 - 8) + 16))(v216, v340, v215);
          QueryType.upsert(_:onConflictOf:)();

          sub_100007BAC(&v372);
          v217 = v376;
          Connection.run(_:)();
          if (v217)
          {
            v106 = v349;
            if (qword_101694848 != -1)
            {
              swift_once();
            }

            v376 = 0;
            sub_1000076D4(v356, qword_10177B078);
            swift_errorRetain();
            v218 = Logger.logObject.getter();
            v219 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v218, v219))
            {
              v220 = swift_slowAlloc();
              v221 = swift_slowAlloc();
              *v220 = v310;
              swift_errorRetain();
              v222 = _swift_stdlib_bridgeErrorToNSError();
              *(v220 + 4) = v222;
              *v221 = v222;
              _os_log_impl(&_mh_execute_header, v218, v219, "Failed to upsert device: %@.", v220, 0xCu);
              sub_10000B3A8(v221, &qword_10169BB30, &unk_10138B3C0);

              v105 = v363;
            }

            else
            {
            }
          }

          else
          {
            v376 = 0;
            v106 = v349;
          }

          v107 = v362;
          (*v332)(v357, v339);
        }

        else
        {
          v158 = v325;
          sub_10073132C(v54, v325);
          v159 = Logger.logObject.getter();
          v160 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v159, v160))
          {
            v161 = swift_slowAlloc();
            v162 = v158;
            v163 = swift_slowAlloc();
            v372 = v163;
            *v161 = v309;
            v164 = (v162 + v104[8]);
            v165 = *v164;
            v166 = v164[1];

            sub_100731400(v162);
            v167 = sub_1000136BC(v165, v166, &v372);

            *(v161 + 4) = v167;
            _os_log_impl(&_mh_execute_header, v159, v160, "Cannot insert device without ID, name: %s.", v161, 0xCu);
            sub_100007BAC(v163);
          }

          else
          {

            sub_100731400(v158);
          }

          v106 = v349;
          v107 = v362;
          v105 = v363;
        }

        v108 = v365;
        sub_100731400(v54);
        v102 = v364 + v367;
        v103 = v108 - 1;
      }

      while (v103);

      v269 = (v350 + v104[5]);
      v270 = _swiftEmptyArrayStorage;
      v271 = v301;
      do
      {
        v273 = v271;
        v274 = v350;
        sub_10073132C(v271, v350);
        v276 = *v269;
        v275 = v269[1];

        sub_100731400(v274);
        if (v275)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v270 = sub_100A5B2CC(0, *(v270 + 2) + 1, 1, v270);
          }

          v278 = *(v270 + 2);
          v277 = *(v270 + 3);
          if (v278 >= v277 >> 1)
          {
            v270 = sub_100A5B2CC((v277 > 1), v278 + 1, 1, v270);
          }

          *(v270 + 2) = v278 + 1;
          v272 = &v270[16 * v278];
          *(v272 + 4) = v276;
          *(v272 + 5) = v275;
          v107 = v362;
        }

        v271 = v273 + v367;
        --v366;
      }

      while (v366);
    }

    else
    {

      v270 = _swiftEmptyArrayStorage;
      v106 = v349;
      v107 = v362;
    }

    v279 = v302;
    == infix<A>(_:_:)();
    v280 = v346;
    QueryType.filter(_:)();
    v281 = v368;
    v107(v279, v368);
    v372 = v270;
    if (qword_1016953A0 != -1)
    {
      swift_once();
    }

    v282 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
    sub_1000076D4(v282, qword_10177CA88);
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_1000041A4(&qword_1016A7C18, &qword_1016B0470, &qword_10138EB80, &protocol conformance descriptor for [A]);
    v283 = v313;
    Collection<>.contains(_:)();

    LOBYTE(v372) = 0;
    == infix<A>(_:_:)();
    v284 = v283;
    v285 = v362;
    v362(v284, v281);
    v286 = v315;
    QueryType.filter(_:)();
    v285(v279, v281);
    v287 = v314;
    v288 = *(v314 + 8);
    v288(v106, v280);
    v374 = v280;
    v375 = &protocol witness table for Table;
    v289 = sub_1000280DC(&v372);
    (*(v287 + 16))(v289, v286, v280);
    v290 = v376;
    Connection.prepare(_:)();
    v291 = v280;
    if (v290)
    {
      v288(v286, v280);

      return sub_100007BAC(&v372);
    }

    else
    {
      sub_100007BAC(&v372);
      v292 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      v293 = *(v292 + 16);
      if (v293)
      {
        v371 = v288;
        v376 = 0;
        v372 = _swiftEmptyArrayStorage;
        sub_101125038(0, v293, 0);
        v294 = v372;
        v295 = v292 + ((*(v308 + 80) + 32) & ~*(v308 + 80));
        v296 = *(v308 + 72);
        v297 = v304;
        do
        {
          sub_10073132C(v295, v297);
          swift_storeEnumTagMultiPayload();
          v372 = v294;
          v299 = v294[2];
          v298 = v294[3];
          if (v299 >= v298 >> 1)
          {
            sub_101125038((v298 > 1), v299 + 1, 1);
            v294 = v372;
          }

          v294[2] = v299 + 1;
          sub_10073145C(v297, v294 + ((*(v341 + 80) + 32) & ~*(v341 + 80)) + *(v341 + 72) * v299, type metadata accessor for FindMyServiceDeviceStore.ListChange);
          v295 += v296;
          --v293;
        }

        while (v293);

        v291 = v346;
        v286 = v315;
        v288 = v371;
      }

      else
      {

        v294 = _swiftEmptyArrayStorage;
      }

      sub_10039A250(v294);
      v300 = v305;
      QueryType.delete()();
      Connection.run(_:)();

      (*(v306 + 8))(v300, v307);
      return (v288)(v286, v291);
    }
  }

  else
  {
    v87 = *(v60 + 32);
    v86 = v60 + 32;
    v354 = v87;
    v88 = (v86 - 16);
    v355 = (v86 - 24);
    v85 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      (v354)(v64, v83, v59);
      v89 = v367;
      (*v88)(v367, v64, v59);

      v90 = v376;
      sub_10072F0C0(v89, v58);
      v376 = v90;
      if (v90)
      {
        break;
      }

      v91 = MyServiceDevice[7];
      v92 = v59;
      v93 = v64;
      v94 = v86;
      v95 = v366;
      sub_10073132C(v58, v366);
      v96 = swift_isUniquelyReferenced_nonNull_native();
      v372 = v85;
      v97 = v95;
      v86 = v94;
      v64 = v93;
      v59 = v92;
      v83 = v370;
      sub_100FFFDD0(v97, v58 + v91, v96);

      sub_100731400(v58);
      (*v355)(v64, v59);
      v85 = v372;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (v356(v83, 1, v59) == 1)
      {
        goto LABEL_10;
      }
    }

    (*v355)(v64, v59);
  }
}

uint64_t sub_10072F0C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (qword_101695398 != -1)
  {
    swift_once();
  }

  v4 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v4, qword_10177CA70);
  type metadata accessor for UUID();
  Row.subscript.getter();
  if (qword_1016953A0 != -1)
  {
    swift_once();
  }

  v5 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v5, qword_10177CA88);
  Row.subscript.getter();
  MyServiceDevice = type metadata accessor for FindMyServiceDevice(0);
  *(a2 + MyServiceDevice[5]) = string;
  v7 = (a2 + MyServiceDevice[6]);
  *v7 = 0;
  v7[1] = 0;
  if (qword_1016953A8 != -1)
  {
    swift_once();
  }

  v8 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v8, qword_10177CAA0);
  Row.subscript.getter();
  if (qword_1016953B0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v5, qword_10177CAB8);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[8]) = string;
  if (qword_1016953B8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v5, qword_10177CAD0);
  Row.subscript.getter();
  v9 = sub_1008BEAAC(string);
  if (v9 == 4)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  *(a2 + MyServiceDevice[9]) = v10;
  if (qword_1016953C0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v11, qword_10177CAE8);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[10]) = string;
  if (qword_1016953C8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v5, qword_10177CB00);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[11]) = string;
  if (qword_1016953D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v5, qword_10177CB18);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[12]) = string;
  if (qword_1016953D8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v5, qword_10177CB30);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[13]) = string;
  if (qword_1016953E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v5, qword_10177CB48);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[14]) = string;
  if (qword_1016953E8 != -1)
  {
    swift_once();
  }

  v12 = sub_1000BC4D4(&qword_1016A7BF8, &qword_1013B6DD8);
  sub_1000076D4(v12, qword_10177CB60);
  Row.subscript.getter();
  v13 = a2 + MyServiceDevice[15];
  *v13 = string._countAndFlagsBits;
  v13[8] = string._object;
  if (qword_1016953F0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v11, qword_10177CB78);
  Row.subscript.getter();
  v14._object = string._object;
  if (string._object)
  {
    v14._countAndFlagsBits = string._countAndFlagsBits;
    v15 = sub_1008BEAF8(v14);
  }

  else
  {
    v15 = 4;
  }

  *(a2 + MyServiceDevice[16]) = v15;
  if (qword_101695460 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v11, qword_10177CCC8);
  Row.subscript.getter();
  if (string._object)
  {
    URL.init(string:)();
  }

  else
  {
    v16 = MyServiceDevice[31];
    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 56))(a2 + v16, 1, 1, v17);
  }

  if (qword_1016953F8 != -1)
  {
    swift_once();
  }

  v18 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_1000076D4(v18, qword_10177CB90);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[17]) = string._countAndFlagsBits;
  if (qword_101695400 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v18, qword_10177CBA8);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[18]) = string._countAndFlagsBits;
  if (qword_101695408 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v18, qword_10177CBC0);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[19]) = string._countAndFlagsBits;
  if (qword_101695410 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v5, qword_10177CBD8);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[20]) = string;
  if (qword_101695418 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v18, qword_10177CBF0);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[21]) = string._countAndFlagsBits;
  if (qword_101695420 != -1)
  {
    swift_once();
  }

  v19 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v19, qword_10177CC08);
  type metadata accessor for Date();
  Row.subscript.getter();
  if (qword_101695438 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v18, qword_10177CC50);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[25]) = string._countAndFlagsBits;
  if (qword_101695428 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v19, qword_10177CC20);
  Row.subscript.getter();
  if (qword_101695430 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v19, qword_10177CC38);
  Row.subscript.getter();
  if (qword_101695440 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v5, qword_10177CC68);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[26]) = string;
  if (qword_101695448 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v18, qword_10177CC80);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[27]) = string._countAndFlagsBits;
  if (qword_101695450 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v18, qword_10177CC98);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[28]) = string._countAndFlagsBits;
  *(a2 + MyServiceDevice[30]) = 4;
  if (qword_101695458 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v18, qword_10177CCB0);
  Row.subscript.getter();
  v20 = type metadata accessor for Row();
  result = (*(*(v20 - 8) + 8))(a1, v20);
  *(a2 + MyServiceDevice[29]) = string._countAndFlagsBits;
  return result;
}

uint64_t sub_10072FCA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a1;
  v67 = a2;
  MyServiceDevice = type metadata accessor for FindMyServiceDevice(0);
  v76 = *(MyServiceDevice - 8);
  v5 = __chkstk_darwin(MyServiceDevice - 8);
  v78 = (&v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v62 = &v61 - v7;
  v8 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v9 = __chkstk_darwin(v8 - 8);
  v74 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v71 = &v61 - v11;
  v73 = type metadata accessor for Row();
  v12 = *(v73 - 8);
  v13 = __chkstk_darwin(v73);
  v72 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v69 = &v61 - v16;
  __chkstk_darwin(v15);
  v18 = &v61 - v17;
  v65 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v19 = *(v65 - 8);
  __chkstk_darwin(v65);
  v21 = &v61 - v20;
  v22 = type metadata accessor for Table();
  v64 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100028E90();
  if (!v25)
  {
    sub_10020223C();
    swift_allocError();
    *v32 = 2;
    *(v32 + 4) = 1;
    return swift_willThrow();
  }

  v68 = v18;
  v70 = v12;
  v63 = v25;
  v61 = a3;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v26 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v26, qword_10177C818);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  v27 = *(v19 + 8);
  v28 = v65;
  v27(v21, v65);
  if (qword_1016953A8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v26, qword_10177CAA0);
  == infix<A>(_:_:)();
  v77[3] = v22;
  v77[4] = &protocol witness table for Table;
  sub_1000280DC(v77);
  QueryType.filter(_:)();
  v27(v21, v28);
  (*(v64 + 8))(v24, v22);
  v29 = v75;
  v30 = Connection.prepare(_:)();
  if (v29)
  {

    return sub_100007BAC(v77);
  }

  v33 = v30;
  sub_100007BAC(v77);

  v34 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  v77[0] = _swiftEmptyArrayStorage;
  sub_101124F70(0, v34 & ~(v34 >> 63), 0);
  v35 = v77[0];
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  v75 = result;
  if (v34 < 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v67 = v33;
  v36 = v73;
  if (v34)
  {
    v37 = (v70 + 48);
    v38 = (v70 + 16);
    v39 = (v70 + 8);
    do
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v40 = v74;
      result = (*v37)(v74, 1, v36);
      if (result == 1)
      {
        goto LABEL_24;
      }

      v41 = v72;
      (*v38)(v72, v40, v36);
      sub_10072F0C0(v41, v78);
      (*v39)(v40, v36);
      v77[0] = v35;
      v43 = *(v35 + 16);
      v42 = *(v35 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_101124F70((v42 > 1), v43 + 1, 1);
        v35 = v77[0];
      }

      *(v35 + 16) = v43 + 1;
      sub_10073145C(v78, v35 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v43, type metadata accessor for FindMyServiceDevice);
      --v34;
      v36 = v73;
    }

    while (v34);
  }

  v44 = v71;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v45 = v44;
  v46 = v70;
  v78 = *(v70 + 48);
  if (v78(v44, 1, v36) != 1)
  {
    v49 = *(v46 + 32);
    v48 = v46 + 32;
    v74 = v49;
    v50 = (v48 - 16);
    v70 = v48;
    v51 = (v48 - 24);
    v52 = v62;
    do
    {
      v53 = v68;
      (v74)(v68, v45, v36);
      v54 = v69;
      (*v50)(v69, v53, v36);
      sub_10072F0C0(v54, v52);
      v55 = v52;
      (*v51)(v53, v36);
      v77[0] = v35;
      v57 = *(v35 + 16);
      v56 = *(v35 + 24);
      v58 = v36;
      if (v57 >= v56 >> 1)
      {
        sub_101124F70((v56 > 1), v57 + 1, 1);
        v55 = v62;
        v35 = v77[0];
      }

      *(v35 + 16) = v57 + 1;
      sub_10073145C(v55, v35 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v57, type metadata accessor for FindMyServiceDevice);
      v59 = v71;
      v52 = v55;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v45 = v59;
      v60 = v78(v59, 1, v58);
      v36 = v58;
    }

    while (v60 != 1);
  }

  sub_10000B3A8(v45, &qword_101699D68, &unk_1013B6450);
  sub_1000BC4D4(&qword_1016A7BF0, &qword_1013B6DD0);
  inited = swift_initStackObject();
  *(inited + 16) = v35;
  *(inited + 24) = 0;
  sub_1007311FC(v61);
}

uint64_t sub_100730604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a1;
  MyServiceDevice = type metadata accessor for FindMyServiceDevice(0);
  v87 = *(MyServiceDevice - 8);
  v4 = __chkstk_darwin(MyServiceDevice - 8);
  v89 = (&v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v70 = &v68 - v6;
  v7 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v8 = __chkstk_darwin(v7 - 8);
  v85 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v82 = &v68 - v10;
  v84 = type metadata accessor for Row();
  v11 = *(v84 - 8);
  v12 = __chkstk_darwin(v84);
  v83 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v79 = &v68 - v15;
  __chkstk_darwin(v14);
  v80 = &v68 - v16;
  v17 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v17 - 8);
  v74 = &v68 - v18;
  v76 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v68 - v19;
  v20 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v68 - v22;
  v24 = type metadata accessor for Table();
  v72 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_100028E90())
  {
    sub_10020223C();
    swift_allocError();
    *v39 = 2;
    *(v39 + 4) = 1;
    return swift_willThrow();
  }

  v81 = v11;
  v69 = a2;
  v71 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_findMyServiceDevices;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v27 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v27, qword_10177C818);
  v28 = type metadata accessor for UUID();
  v29 = v77;
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v21 + 8))(v23, v20);
  if (qword_101695398 != -1)
  {
    swift_once();
  }

  v30 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v30, qword_10177CA70);
  v31 = *(type metadata accessor for BeaconIdentifier(0) + 20);
  v32 = *(v28 - 8);
  v33 = v29 + v31;
  v34 = v74;
  (*(v32 + 16))(v74, v33, v28);
  (*(v32 + 56))(v34, 0, 1, v28);
  v35 = v73;
  == infix<A>(_:_:)();
  sub_10000B3A8(v34, &qword_1016980D0, &unk_10138F3B0);
  v88[3] = v24;
  v88[4] = &protocol witness table for Table;
  sub_1000280DC(v88);
  QueryType.filter(_:)();
  (*(v75 + 8))(v35, v76);
  (*(v72 + 8))(v26, v24);
  v36 = v86;
  v37 = Connection.prepare(_:)();
  if (v36)
  {

    return sub_100007BAC(v88);
  }

  v40 = v37;
  sub_100007BAC(v88);

  v41 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  v88[0] = _swiftEmptyArrayStorage;
  sub_101124F70(0, v41 & ~(v41 >> 63), 0);
  v42 = v88[0];
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  v86 = result;
  if (v41 < 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v77 = v40;
  v43 = v84;
  if (v41)
  {
    v44 = (v81 + 48);
    v45 = (v81 + 16);
    v46 = (v81 + 8);
    do
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v47 = v85;
      result = (*v44)(v85, 1, v43);
      if (result == 1)
      {
        goto LABEL_24;
      }

      v48 = v83;
      (*v45)(v83, v47, v43);
      sub_10072F0C0(v48, v89);
      (*v46)(v47, v43);
      v88[0] = v42;
      v50 = *(v42 + 16);
      v49 = *(v42 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_101124F70((v49 > 1), v50 + 1, 1);
        v42 = v88[0];
      }

      *(v42 + 16) = v50 + 1;
      sub_10073145C(v89, v42 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v50, type metadata accessor for FindMyServiceDevice);
      --v41;
      v43 = v84;
    }

    while (v41);
  }

  v51 = v82;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v52 = v51;
  v53 = v81;
  v89 = *(v81 + 48);
  if (v89(v51, 1, v43) != 1)
  {
    v56 = *(v53 + 32);
    v55 = v53 + 32;
    v85 = v56;
    v57 = (v55 - 16);
    v81 = v55;
    v58 = (v55 - 24);
    v59 = v70;
    do
    {
      v60 = v80;
      (v85)(v80, v52, v43);
      v61 = v79;
      (*v57)(v79, v60, v43);
      sub_10072F0C0(v61, v59);
      v62 = v59;
      (*v58)(v60, v43);
      v88[0] = v42;
      v64 = *(v42 + 16);
      v63 = *(v42 + 24);
      v65 = v43;
      if (v64 >= v63 >> 1)
      {
        sub_101124F70((v63 > 1), v64 + 1, 1);
        v62 = v70;
        v42 = v88[0];
      }

      *(v42 + 16) = v64 + 1;
      sub_10073145C(v62, v42 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v64, type metadata accessor for FindMyServiceDevice);
      v66 = v82;
      v59 = v62;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v52 = v66;
      v67 = v89(v66, 1, v65);
      v43 = v65;
    }

    while (v67 != 1);
  }

  sub_10000B3A8(v52, &qword_101699D68, &unk_1013B6450);
  sub_1000BC4D4(&qword_1016A7BF0, &qword_1013B6DD0);
  inited = swift_initStackObject();
  *(inited + 16) = v42;
  *(inited + 24) = 0;
  sub_1007311FC(v69);
}

uint64_t sub_1007310F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Row();
  __chkstk_darwin(v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  result = sub_10072F0C0(v7, a2);
  if (v2)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    result = swift_allocError();
    *v10 = v2;
  }

  return result;
}

void sub_1007311FC(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v3 == v5)
  {
    MyServiceDevice = type metadata accessor for FindMyServiceDevice(0);
    v7 = *(*(MyServiceDevice - 8) + 56);
    v8 = MyServiceDevice;
    v9 = a1;
    v10 = 1;
  }

  else
  {
    if (v3 >= v5)
    {
      __break(1u);
      return;
    }

    v11 = type metadata accessor for FindMyServiceDevice(0);
    v12 = *(v11 - 8);
    sub_10073132C(v4 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v3, a1);
    *(v1 + 24) = v3 + 1;
    v7 = *(v12 + 56);
    v9 = a1;
    v10 = 0;
    v8 = v11;
  }

  v7(v9, v10, 1, v8);
}

uint64_t sub_10073132C(uint64_t a1, uint64_t a2)
{
  MyServiceDevice = type metadata accessor for FindMyServiceDevice(0);
  (*(*(MyServiceDevice - 8) + 16))(a2, a1, MyServiceDevice);
  return a2;
}

uint64_t type metadata accessor for FindMyServiceDeviceStore.ListChange(uint64_t a1)
{
  result = qword_1016A7C98;
  if (!qword_1016A7C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100731400(uint64_t a1)
{
  MyServiceDevice = type metadata accessor for FindMyServiceDevice(0);
  (*(*(MyServiceDevice - 8) + 8))(a1, MyServiceDevice);
  return a1;
}

uint64_t sub_10073145C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007314C4(uint64_t a1)
{
  result = type metadata accessor for FindMyServiceDevice(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_100731528(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v46 = type metadata accessor for TimeBasedKey(0);
  v45 = *(v46 - 8);
  v4 = __chkstk_darwin(v46);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = (v38 - v7);
  v44 = type metadata accessor for Date();
  v9 = *(v44 - 8);
  __chkstk_darwin(v44);
  v53 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DateInterval();
  v11 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for SharedBeaconRecord(0) + 20);
  v48 = a1;
  v38[1] = v13;
  v47 = v2;
  v14 = sub_1012E7748((a1 + v13), v2 & 1, 0);
  if (v14)
  {
    v15 = v14;
    v16 = *(v14 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_firstIndex);
    v43 = *(v14 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_lastIndex);
    if (v43 >= v16)
    {
      v41 = (v9 + 8);
      v40 = (v11 + 16);
      v39 = (v11 + 8);
      v17 = _swiftEmptyArrayStorage;
      v42 = v14;
      do
      {
        v18 = objc_autoreleasePoolPush();
        sub_100F0A450(v16, v15, 0, &v54, v55);
        v9 = v6;
        objc_autoreleasePoolPop(v18);
        v49 = v55[1];
        v50 = v55[0];
        v20 = v56;
        v19 = v57;
        sub_100A8AD0C(v53);
        if (v47)
        {
          if (qword_101694940 != -1)
          {
            swift_once();
          }

          OS_dispatch_queue.sync<A>(execute:)();
          v21 = sub_101073C10(*&v55[0]);

          if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (qword_101694940 != -1)
          {
            swift_once();
          }

          OS_dispatch_queue.sync<A>(execute:)();
          v21 = sub_101073524(*&v55[0]);

          if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_22;
          }
        }

        v22 = v51;
        v23 = v53;
        sub_1008849E8(v53, v16, v21, v51);
        (*v41)(v23, v44);
        v24 = v46;
        (*v40)(v8 + *(v46 + 20), v22, v52);
        *v8 = v16;
        v25 = v8 + *(v24 + 24);
        v26 = v49;
        *v25 = v50;
        *(v25 + 1) = v26;
        *(v25 + 4) = v20;
        *(v25 + 5) = v19;
        v6 = v9;
        sub_100739F64(v8, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_100A5BDF0(0, v17[2] + 1, 1, v17);
        }

        v15 = v42;
        v28 = v17[2];
        v27 = v17[3];
        if (v28 >= v27 >> 1)
        {
          v17 = sub_100A5BDF0((v27 > 1), v28 + 1, 1, v17);
        }

        sub_10073AA30(v8, type metadata accessor for TimeBasedKey);
        (*v39)(v51, v52);
        v17[2] = v28 + 1;
        sub_1000185B4(v9, v17 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v28, type metadata accessor for TimeBasedKey);
        if (v43 == v16)
        {

          return v17;
        }

        ++v16;
      }

      while (v16 != &_mh_execute_header);
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
    }

    __break(1u);
    swift_once();
    v29 = qword_10177B550;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10138B360;
    *(v30 + 56) = &type metadata for UInt64;
    *(v30 + 64) = &protocol witness table for UInt64;
    *(v30 + 32) = v16;
    v31 = UUID.uuidString.getter();
    v33 = v32;
    *(v30 + 96) = &type metadata for String;
    v34 = sub_100008C00();
    *(v30 + 104) = v34;
    *(v30 + 72) = v31;
    *(v30 + 80) = v33;
    swift_getErrorValue();
    v35 = Error.localizedDescription.getter();
    *(v30 + 136) = &type metadata for String;
    *(v30 + 144) = v34;
    *(v30 + 112) = v35;
    *(v30 + 120) = v36;
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v29, "subsequence.rootKeys failed for index %lu for %@: %@", 52, 2, v30);
  }

  return 0;
}

uint64_t sub_100731BF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *(v7 + 720) = v6;
  *(v7 + 1267) = a6;
  *(v7 + 1266) = a5;
  *(v7 + 1265) = a4;
  *(v7 + 712) = a3;
  *(v7 + 704) = a2;
  *(v7 + 696) = a1;
  *(v7 + 728) = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  *(v7 + 736) = swift_task_alloc();
  v8 = _s18ConnectionKeyGroupVMa(0);
  *(v7 + 744) = v8;
  *(v7 + 752) = *(v8 - 8);
  *(v7 + 760) = swift_task_alloc();
  v9 = type metadata accessor for Date();
  *(v7 + 768) = v9;
  *(v7 + 776) = *(v9 - 8);
  *(v7 + 784) = swift_task_alloc();
  *(v7 + 792) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v7 + 800) = v10;
  v11 = *(v10 - 8);
  *(v7 + 808) = v11;
  *(v7 + 816) = *(v11 + 64);
  *(v7 + 824) = swift_task_alloc();
  *(v7 + 832) = swift_task_alloc();
  *(v7 + 840) = swift_task_alloc();
  *(v7 + 848) = swift_task_alloc();
  *(v7 + 856) = swift_task_alloc();
  *(v7 + 864) = swift_task_alloc();
  *(v7 + 872) = swift_task_alloc();
  *(v7 + 880) = swift_task_alloc();
  *(v7 + 888) = swift_task_alloc();
  *(v7 + 896) = swift_task_alloc();
  sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  *(v7 + 904) = swift_task_alloc();
  v12 = type metadata accessor for SharedBeaconRecord(0);
  *(v7 + 912) = v12;
  *(v7 + 920) = *(v12 - 8);
  *(v7 + 928) = swift_task_alloc();
  v13 = type metadata accessor for TimeBasedKey(0);
  *(v7 + 936) = v13;
  *(v7 + 944) = *(v13 - 8);
  *(v7 + 952) = swift_task_alloc();
  *(v7 + 960) = swift_task_alloc();
  *(v7 + 968) = swift_task_alloc();
  *(v7 + 976) = swift_task_alloc();
  v14 = type metadata accessor for DateInterval();
  *(v7 + 984) = v14;
  *(v7 + 992) = *(v14 - 8);
  *(v7 + 1000) = swift_task_alloc();
  *(v7 + 1008) = swift_task_alloc();
  *(v7 + 1016) = swift_task_alloc();
  sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  *(v7 + 1024) = swift_task_alloc();
  v15 = type metadata accessor for OwnedBeaconRecord(0);
  *(v7 + 1032) = v15;
  *(v7 + 1040) = *(v15 - 8);
  *(v7 + 1048) = swift_task_alloc();

  return _swift_task_switch(sub_100732050, 0, 0);
}

uint64_t sub_100732050(uint64_t a1)
{
  v265 = v1;
  if (*(v1 + 1266) == 1)
  {
    v2 = *(v1 + 1040);
    sub_10001F280(*(v1 + 696), v1 + 112);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v3 = swift_dynamicCast();
    v4 = *(v2 + 56);
    if (v3)
    {
      v5 = *(v1 + 1048);
      v6 = *(v1 + 1024);
      v4(v6, 0, 1, *(v1 + 1032));
      sub_1000185B4(v6, v5, type metadata accessor for OwnedBeaconRecord);
      a1 = static os_log_type_t.error.getter();
      if (qword_101694A20 != -1)
      {
        goto LABEL_131;
      }

      while (1)
      {
        v7 = *(v1 + 1265);
        v8 = qword_10177B550;
        os_log(_:dso:log:_:_:)(a1, &_mh_execute_header, qword_10177B550, "*** forceGenerate triggered ***", 31, 2, _swiftEmptyArrayStorage);
        v9 = *(v1 + 1048);
        v10 = *(v1 + 1032);
        if (v7)
        {
          v11 = (v9 + *(v10 + 40));
          v12 = v11[1];
          if (v12 >> 60 == 15)
          {
            sub_100720740();
            swift_allocError();
            *v13 = 0;
            swift_willThrow();
            v262 = _swiftEmptyArrayStorage;
            v144 = static os_log_type_t.error.getter();
            v145 = os_log_type_enabled(v8, v144);
            v146 = *(v1 + 1048);
            if (v145)
            {
              v147 = swift_slowAlloc();
              v148 = swift_slowAlloc();
              v263 = v148;
              *v147 = 136315138;
              swift_getErrorValue();
              v149 = Error.localizedDescription.getter();
              v151 = sub_1000136BC(v149, v150, &v263);

              *(v147 + 4) = v151;
              _os_log_impl(&_mh_execute_header, v8, v144, "Error during forceGenerate: %s", v147, 0xCu);
              sub_100007BAC(v148);
            }

            sub_10073AA30(v146, type metadata accessor for OwnedBeaconRecord);
            goto LABEL_115;
          }

          v109 = *v11;
        }

        else
        {
          v108 = (v9 + *(v10 + 36));
          v109 = *v108;
          v12 = v108[1];
        }

        sub_100017D5C(v109, v12);
        v137 = *(v1 + 1048);
        v138 = (v137 + *(*(v1 + 1032) + 52));
        v139 = (v137 + *(*(v1 + 1032) + 48));
        v140 = *v139;
        v141 = v139[1];
        v243 = *v138;
        v248 = v138[1];
        sub_100017D5C(*v138, v248);
        v253 = v140;
        v259 = v141;
        sub_100017D5C(v140, v141);
        if (qword_101694FA8 != -1)
        {
          swift_once();
        }

        v142 = *(v1 + 704);
        *(v1 + 592) = 0x7365547265646E75;
        *(v1 + 600) = 0xE900000000000074;
        SynchronousCache.cachedValue<A>(key:computeBlock:)();
        v143 = sub_100A7563C(v109, v12, v142);
        v221 = v109;
        v223 = v12;
        v152 = *(v1 + 992);
        v234 = *(v1 + 944);
        v238 = *(v1 + 1032);
        v231 = *(v1 + 936);
        v228 = *(v1 + 1265);
        v263 = v143;
        v264 = v153;
        v224 = (v152 + 8);
        v226 = (v152 + 16);
        v154 = *(v1 + 704);
        v262 = _swiftEmptyArrayStorage;
        while (1)
        {
          v155 = objc_autoreleasePoolPush();
          v156 = v263;
          v157 = v264;
          sub_100017D5C(v263, v264);
          sub_100A76468(v253, v259, v243, v248, v156, v157, 1, &v263, (v1 + 64));
          v158 = *(v1 + 1048);
          v159 = *(v1 + 1016);
          v160 = *(v1 + 984);
          v161 = *(v1 + 976);
          v162 = *(v1 + 968);
          sub_100016590(v156, v157);
          v163 = *(v238 + 32);
          v164 = sub_1007382B8(v228 & 1);
          sub_1008849E8(v158 + v163, v154, v164, v159);
          (*v226)(v161 + *(v231 + 20), v159, v160);
          *v161 = v154;
          v165 = (v161 + *(v231 + 24));
          v167 = *(v1 + 80);
          v166 = *(v1 + 96);
          *v165 = *(v1 + 64);
          v165[1] = v167;
          v165[2] = v166;
          sub_100739F64(v161, v162);
          v168 = v262;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v168 = sub_100A5BDF0(0, v262[2] + 1, 1, v262);
          }

          v170 = v168[2];
          v169 = v168[3];
          v262 = v170 >= v169 >> 1 ? sub_100A5BDF0((v169 > 1), v170 + 1, 1, v168) : v168;
          v171 = *(v1 + 1016);
          v172 = *(v1 + 984);
          v173 = *(v1 + 968);
          sub_10073AA30(*(v1 + 976), type metadata accessor for TimeBasedKey);
          (*v224)(v171, v172);
          v262[2] = v170 + 1;
          a1 = sub_1000185B4(v173, v262 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v170, type metadata accessor for TimeBasedKey);
          if (v154 == -1)
          {
            break;
          }

          v174 = *(v1 + 712);
          objc_autoreleasePoolPop(v155);
          if (v154++ >= v174)
          {
            v209 = *(v1 + 1048);
            sub_100016590(v243, v248);
            sub_100016590(v253, v259);
            sub_100016590(v221, v223);
            sub_10073AA30(v209, type metadata accessor for OwnedBeaconRecord);
            sub_100016590(v263, v264);
            goto LABEL_115;
          }
        }

LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        v218 = a1;
        swift_once();
        a1 = v218;
      }
    }

    v84 = *(v1 + 1024);
    v4(v84, 1, 1, *(v1 + 1032));
    sub_10000B3A8(v84, &unk_1016A9A20, &qword_10138B280);
    v85 = static os_log_type_t.error.getter();
    if (qword_101694A20 != -1)
    {
      v219 = v85;
      swift_once();
      v85 = v219;
    }

    os_log(_:dso:log:_:_:)(v85, &_mh_execute_header, qword_10177B550, "Can't use forceGenerate for a SharedBeaconRecord!", 49, 2, _swiftEmptyArrayStorage);
LABEL_78:
    v262 = 0;
    v241 = 0;
    v126 = 3;
    goto LABEL_116;
  }

  v14 = *(v1 + 712);
  v15 = *(v1 + 704);
  *(v1 + 680) = &_swiftEmptySetSingleton;
  if (v14 < v15)
  {
    goto LABEL_130;
  }

  v16 = 0;
  v232 = 0;
  v235 = (v1 + 472);
  *(v1 + 1056) = OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore;
  v17 = _swiftEmptyArrayStorage;
  v18 = 1;
  v19 = _swiftEmptyArrayStorage;
  v20 = _swiftEmptyArrayStorage;
  while (1)
  {
    *(v1 + 1096) = v20;
    *(v1 + 1088) = v19;
    *(v1 + 1080) = v17;
    v250 = v16;
    v255 = v15;
    *(v1 + 1072) = v15;
    *(v1 + 1268) = v18 & 1;
    *(v1 + 1064) = v16;
    v21 = *(v1 + 920);
    sub_10001F280(*(v1 + 696), v1 + 152);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v22 = swift_dynamicCast();
    v23 = *(v21 + 56);
    if (v22)
    {
      v24 = *(v1 + 928);
      v25 = *(v1 + 912);
      v26 = *(v1 + 904);
      v23(v26, 0, 1, v25);
      sub_1000185B4(v26, v24, type metadata accessor for SharedBeaconRecord);
      v27 = *(v24 + *(v25 + 64));
      *(v1 + 1269) = v27;
      if (v27 == 4 || v27 == 2)
      {
        if (*(v1 + 1265))
        {
          v106 = &type metadata for SecondaryIndex;
          *(v1 + 456) = &type metadata for SecondaryIndex;
          v107 = sub_10022A4D4();
          *(v1 + 464) = v107;
          *(v1 + 432) = v255;
        }

        else
        {
          v127 = *(v1 + 928);
          v128 = *(v1 + 912);
          *(v1 + 456) = &type metadata for PrimaryIndex;
          *(v1 + 464) = sub_10002A2B8();
          *(v1 + 432) = v255;
          if (*(v127 + *(v128 + 44)) != -1 && v27 != 4 && *(v127 + *(v128 + 48)) != -1)
          {
            v129 = *(v1 + 696);
            v130 = v129[3];
            v131 = v129[4];
            sub_1000035D0(v129, v130);
            (*(*(*(v131 + 8) + 8) + 32))(v130);
            v132 = getuid();
            sub_1000294F0(v132);
            v133 = swift_task_alloc();
            *(v1 + 1104) = v133;
            *v133 = v1;
            v133[1] = sub_100733DE8;
            v134 = *(v1 + 896);
            v135 = *(v1 + 888);

            return sub_1006868C4(v135, v134, v255);
          }

          if (qword_101694480 != -1)
          {
            swift_once();
          }

          v194 = *(v1 + 696);
          v195 = type metadata accessor for Logger();
          sub_1000076D4(v195, qword_10177A560);
          sub_10001F280(v194, v1 + 272);
          v196 = Logger.logObject.getter();
          v197 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v196, v197))
          {
            v198 = *(v1 + 880);
            v199 = *(v1 + 808);
            v200 = *(v1 + 800);
            v201 = swift_slowAlloc();
            v202 = swift_slowAlloc();
            v263 = v202;
            *v201 = 141558275;
            *(v201 + 4) = 1752392040;
            *(v201 + 12) = 2081;
            v204 = *(v1 + 296);
            v203 = *(v1 + 304);
            sub_1000035D0((v1 + 272), v204);
            (*(*(*(v203 + 8) + 8) + 32))(v204);
            sub_100739ED0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v205 = dispatch thunk of CustomStringConvertible.description.getter();
            v207 = v206;
            (*(v199 + 8))(v198, v200);
            sub_100007BAC((v1 + 272));
            v208 = sub_1000136BC(v205, v207, &v263);

            *(v201 + 14) = v208;
            _os_log_impl(&_mh_execute_header, v196, v197, "Skipping connection keys fetching: %{private,mask.hash}s.", v201, 0x16u);
            sub_100007BAC(v202);
          }

          else
          {

            sub_100007BAC((v1 + 272));
          }

          v106 = *(v1 + 456);
          v107 = *(v1 + 464);
        }

        *(v1 + 1168) = xmmword_10138BBF0;
        v211 = *(v1 + 696);
        v212 = sub_1000035D0((v1 + 432), v106);
        v213 = v211[3];
        v214 = v211[4];
        sub_1000035D0(v211, v213);
        (*(*(*(v214 + 8) + 8) + 32))(v213);
        sub_1005F9784();
        v215 = swift_task_alloc();
        *(v1 + 1184) = v215;
        *v215 = v1;
        v215[1] = sub_10073454C;
        v216 = *(v1 + 864);
        v217 = *(v1 + 856);

        return sub_1006858D0(v217, v216, v212, v106, v107);
      }

      sub_10073AA30(*(v1 + 928), type metadata accessor for SharedBeaconRecord);
    }

    else
    {
      v29 = *(v1 + 904);
      v23(v29, 1, 1, *(v1 + 912));
      sub_10000B3A8(v29, &unk_101698C30, &unk_101392630);
    }

    v245 = v18;
    v30 = *(v1 + 1265);
    v31 = *(v1 + 696);
    v33 = v31[3];
    v32 = v31[4];
    sub_1000035D0(v31, v33);
    (*(*(*(v32 + 8) + 8) + 32))(v33);
    v261 = v17;
    v34 = v20;
    if (v30)
    {
      *(v1 + 256) = &type metadata for SecondaryIndex;
      v35 = sub_10022A4D4();
    }

    else
    {
      *(v1 + 256) = &type metadata for PrimaryIndex;
      v35 = sub_10002A2B8();
    }

    v36 = *(v1 + 848);
    v37 = *(v1 + 808);
    v38 = *(v1 + 800);
    v39 = *(v1 + 736);
    v40 = *(v1 + 728);
    v41 = *(v1 + 1267);
    *(v1 + 264) = v35;
    *(v1 + 232) = v255;
    sub_100031694((v1 + 232), v1 + 192);
    (*(v37 + 16))(v39, v36, v38);
    sub_10001F280(v1 + 192, v39 + *(v40 + 20));
    sub_1012DE5A0(v39, v41, (v1 + 16));
    sub_10073AA30(v39, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100007BAC((v1 + 192));
    v42 = *(v37 + 8);
    a1 = v42(v36, v38);
    v43 = *(v1 + 40);
    v44 = v43 >> 60;
    v45 = v43 >> 60 != 15;
    if (v43 >> 60 == 15)
    {
      v16 = v250;
      if (v245)
      {
        v16 = v255;
      }

      v20 = v34;
    }

    else
    {
      v225 = v43 >> 60;
      v46 = *(v1 + 1265);
      v47 = *(v1 + 696);
      *v235 = *(v1 + 16);
      *(v1 + 488) = *(v1 + 32);
      *(v1 + 576) = *(v1 + 48);
      v48 = v47[3];
      v49 = v47[4];
      sub_1000035D0(v47, v48);
      (*(v49 + 192))(v48, v49);
      v240 = v34;
      v227 = v43;
      v229 = v42;
      if (v46)
      {
        if (qword_101694940 != -1)
        {
          swift_once();
        }

        v50 = v232;
        OS_dispatch_queue.sync<A>(execute:)();
        v51 = *(v1 + 632);
        KeyPath = swift_getKeyPath();
        v53 = sub_1010790F4(KeyPath, v51);
        if (v54)
        {
          _StringGuts.grow(_:)(40);
          *(v1 + 560) = 0;
          *(v1 + 568) = 0xE000000000000000;
          v177._countAndFlagsBits = 0xD000000000000026;
          v177._object = 0x800000010134CA80;
          String.append(_:)(v177);
          *(v1 + 624) = KeyPath;
          sub_1000BC4D4(&qword_1016A5870, &qword_1013B3260);
          goto LABEL_103;
        }

        v55 = v53;

        if ((v55 & 0x8000000000000000) != 0)
        {
          goto LABEL_125;
        }
      }

      else
      {
        if (qword_101694940 != -1)
        {
          swift_once();
        }

        v50 = v232;
        OS_dispatch_queue.sync<A>(execute:)();
        v56 = *(v1 + 608);
        v57 = swift_getKeyPath();
        v58 = sub_1010790F4(v57, v56);
        if (v59)
        {
          _StringGuts.grow(_:)(40);
          *(v1 + 544) = 0;
          *(v1 + 552) = 0xE000000000000000;
          v176._countAndFlagsBits = 0xD000000000000026;
          v176._object = 0x800000010134CA80;
          String.append(_:)(v176);
          *(v1 + 616) = v57;
          sub_1000BC4D4(&qword_1016A5870, &qword_1013B3260);
LABEL_103:
          _print_unlocked<A, B>(_:_:)();
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v55 = v58;

        if ((v55 & 0x8000000000000000) != 0)
        {
          goto LABEL_126;
        }
      }

      v232 = v50;
      v60 = *(v1 + 1000);
      v61 = *(v1 + 992);
      v62 = *(v1 + 960);
      v220 = *(v1 + 984);
      v222 = *(v1 + 952);
      v63 = *(v1 + 936);
      v64 = *(v1 + 784);
      v65 = *(v1 + 776);
      v66 = *(v1 + 768);
      sub_1008849E8(v64, v255, v55, v60);
      (*(v65 + 8))(v64, v66);
      (*(v61 + 16))(v62 + *(v63 + 20), v60, v220);
      *v62 = v255;
      v67 = v62 + *(v63 + 24);
      v68 = *(v1 + 488);
      *v67 = *v235;
      *(v67 + 2) = v68;
      *(v67 + 3) = v227;
      *(v67 + 2) = *(v1 + 576);
      sub_100739F64(v62, v222);
      v17 = v261;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_100A5BDF0(0, v261[2] + 1, 1, v261);
      }

      v42 = v229;
      v70 = v17[2];
      v69 = v17[3];
      if (v70 >= v69 >> 1)
      {
        v17 = sub_100A5BDF0((v69 > 1), v70 + 1, 1, v17);
      }

      v71 = *(v1 + 952);
      v72 = *(v1 + 944);
      v17[2] = v70 + 1;
      a1 = sub_1000185B4(v71, v17 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v70, type metadata accessor for TimeBasedKey);
      if (v245)
      {
        v73 = *(v1 + 1000);
        v74 = *(v1 + 992);
        v75 = *(v1 + 984);
        sub_10073AA30(*(v1 + 960), type metadata accessor for TimeBasedKey);
        a1 = (*(v74 + 8))(v73, v75);
        v16 = 0;
        v20 = v240;
      }

      else
      {
        v76 = v255 - 1;
        if (!v255)
        {
          goto LABEL_127;
        }

        if (v76 < v250)
        {
          goto LABEL_128;
        }

        v20 = v240;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100A5BCE0(0, *(v240 + 2) + 1, 1, v240);
        }

        v78 = *(v20 + 2);
        v77 = *(v20 + 3);
        if (v78 >= v77 >> 1)
        {
          v20 = sub_100A5BCE0((v77 > 1), v78 + 1, 1, v20);
        }

        v79 = *(v1 + 1000);
        v80 = *(v1 + 992);
        v81 = *(v1 + 984);
        sub_10073AA30(*(v1 + 960), type metadata accessor for TimeBasedKey);
        a1 = (*(v80 + 8))(v79, v81);
        *(v20 + 2) = v78 + 1;
        v82 = &v20[16 * v78];
        *(v82 + 4) = v250;
        *(v82 + 5) = v76;
        v16 = 0;
      }

      v44 = v225;
      v45 = 1;
    }

    v83 = *(v1 + 1072);
    v19 = *(v1 + 1088);
    if (v83 == *(v1 + 712))
    {
      break;
    }

    v18 = v45;
    v15 = v83 + 1;
    if (v83 == -1)
    {
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }
  }

  if (v44 >= 0xF)
  {
    if (v16 > *(v1 + 712))
    {
      __break(1u);
    }

    else if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_56;
    }

    v20 = sub_100A5BCE0(0, *(v20 + 2) + 1, 1, v20);
LABEL_56:
    v87 = *(v20 + 2);
    v86 = *(v20 + 3);
    if (v87 >= v86 >> 1)
    {
      v20 = sub_100A5BCE0((v86 > 1), v87 + 1, 1, v20);
    }

    v88 = *(v1 + 712);
    *(v20 + 2) = v87 + 1;
    v89 = &v20[16 * v87];
    *(v89 + 4) = v16;
    *(v89 + 5) = v88;
  }

  v262 = v17;
  v230 = v42;
  if (!v17[2])
  {

    v258 = static os_log_type_t.error.getter();
    if (qword_101694A20 != -1)
    {
      swift_once();
    }

    v110 = *(v1 + 824);
    v111 = *(v1 + 800);
    v112 = *(v1 + 720);
    v237 = *(v1 + 1265);
    v242 = *(v1 + 704);
    v247 = *(v1 + 712);
    v113 = *(v1 + 696);
    v252 = qword_10177B550;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_1013917A0;
    *(v1 + 648) = *v112;
    sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
    v115 = String.init<A>(describing:)();
    v117 = v116;
    *(v114 + 56) = &type metadata for String;
    v118 = sub_100008C00();
    *(v114 + 32) = v115;
    *(v114 + 40) = v117;
    *(v114 + 96) = &type metadata for String;
    *(v114 + 104) = v118;
    *(v114 + 64) = v118;
    *(v114 + 72) = 0xD00000000000004DLL;
    *(v114 + 80) = 0x800000010135DB80;
    v119 = v113[3];
    v120 = v113[4];
    sub_1000035D0(v113, v119);
    (*(*(*(v120 + 8) + 8) + 32))(v119);
    v121 = UUID.uuidString.getter();
    v123 = v122;
    v230(v110, v111);
    *(v114 + 136) = &type metadata for String;
    *(v114 + 144) = v118;
    *(v114 + 112) = v121;
    *(v114 + 120) = v123;
    v124 = 0x7972616D6972702ELL;
    if (v237)
    {
      v124 = 0x61646E6F6365732ELL;
    }

    v125 = 0xE800000000000000;
    if (v237)
    {
      v125 = 0xEA00000000007972;
    }

    *(v114 + 176) = &type metadata for String;
    *(v114 + 184) = v118;
    *(v114 + 152) = v124;
    *(v114 + 160) = v125;
    *(v114 + 216) = &type metadata for UInt64;
    *(v114 + 224) = &protocol witness table for UInt64;
    *(v114 + 192) = v242;
    *(v114 + 256) = &type metadata for UInt64;
    *(v114 + 264) = &protocol witness table for UInt64;
    *(v114 + 232) = v247;
    os_log(_:dso:log:_:_:)(v258, &_mh_execute_header, v252, "%@: %@. Unable to obtain keys for beacon %{mask.hash}@, sequence %@, index %llu - %llu", 86, 2, v114);

    goto LABEL_78;
  }

  if (*(v20 + 2))
  {
    v241 = v20;
    v256 = static os_log_type_t.error.getter();
    if (qword_101694A20 != -1)
    {
      swift_once();
    }

    v90 = *(v1 + 832);
    v91 = *(v1 + 800);
    v92 = *(v1 + 720);
    v233 = *(v1 + 1265);
    v246 = *(v1 + 712);
    v236 = *(v1 + 704);
    v93 = *(v1 + 696);
    v251 = qword_10177B550;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_10138B420;
    *(v1 + 672) = *v92;
    sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
    v95 = String.init<A>(describing:)();
    v97 = v96;
    *(v94 + 56) = &type metadata for String;
    v98 = sub_100008C00();
    *(v94 + 32) = v95;
    *(v94 + 40) = v97;
    *(v94 + 96) = &type metadata for String;
    *(v94 + 104) = v98;
    *(v94 + 64) = v98;
    *(v94 + 72) = 0xD00000000000004DLL;
    *(v94 + 80) = 0x800000010135DB80;
    v99 = v93[3];
    v100 = v93[4];
    sub_1000035D0(v93, v99);
    (*(*(*(v100 + 8) + 8) + 32))(v99);
    v101 = UUID.uuidString.getter();
    v103 = v102;
    v230(v90, v91);
    *(v94 + 136) = &type metadata for String;
    *(v94 + 144) = v98;
    *(v94 + 112) = v101;
    *(v94 + 120) = v103;
    v104 = 0x7972616D6972702ELL;
    if (v233)
    {
      v104 = 0x61646E6F6365732ELL;
    }

    v105 = 0xE800000000000000;
    if (v233)
    {
      v105 = 0xEA00000000007972;
    }

    *(v94 + 176) = &type metadata for String;
    *(v94 + 184) = v98;
    *(v94 + 152) = v104;
    *(v94 + 160) = v105;
    *(v94 + 216) = &type metadata for UInt64;
    *(v94 + 224) = &protocol witness table for UInt64;
    *(v94 + 192) = v236;
    *(v94 + 256) = &type metadata for UInt64;
    *(v94 + 264) = &protocol witness table for UInt64;
    *(v94 + 232) = v246;
    *(v94 + 296) = sub_1000BC4D4(&qword_1016A7CD0, &qword_1013B6E40);
    *(v94 + 304) = sub_1000041A4(&qword_1016A7CD8, &qword_1016A7CD0, &qword_1013B6E40, &protocol conformance descriptor for [A]);
    *(v94 + 272) = v241;
    swift_bridgeObjectRetain_n();
    os_log(_:dso:log:_:_:)(v256, &_mh_execute_header, v251, "%@: %@. Unable to obtain keys for beacon %{mask.hash}@, sequence %@, index %llu - %llu, gaps %@.", 96, 2, v94);

    v257 = 0;
    goto LABEL_117;
  }

  v260 = static os_log_type_t.default.getter();
  if (qword_101694A20 != -1)
  {
    swift_once();
  }

  v178 = *(v1 + 840);
  v179 = *(v1 + 800);
  v180 = *(v1 + 720);
  v239 = *(v1 + 1265);
  v244 = *(v1 + 704);
  v249 = *(v1 + 712);
  v181 = *(v1 + 696);
  v254 = qword_10177B550;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v182 = swift_allocObject();
  *(v182 + 16) = xmmword_1013917A0;
  *(v1 + 664) = *v180;
  sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
  v183 = String.init<A>(describing:)();
  v185 = v184;
  *(v182 + 56) = &type metadata for String;
  v186 = sub_100008C00();
  *(v182 + 32) = v183;
  *(v182 + 40) = v185;
  *(v182 + 96) = &type metadata for String;
  *(v182 + 104) = v186;
  *(v182 + 64) = v186;
  *(v182 + 72) = 0xD00000000000004DLL;
  *(v182 + 80) = 0x800000010135DB80;
  v187 = v181[3];
  v188 = v181[4];
  sub_1000035D0(v181, v187);
  (*(*(*(v188 + 8) + 8) + 32))(v187);
  v189 = UUID.uuidString.getter();
  v191 = v190;
  v230(v178, v179);
  *(v182 + 136) = &type metadata for String;
  *(v182 + 144) = v186;
  *(v182 + 112) = v189;
  *(v182 + 120) = v191;
  v192 = 0x7972616D6972702ELL;
  if (v239)
  {
    v192 = 0x61646E6F6365732ELL;
  }

  v193 = 0xE800000000000000;
  if (v239)
  {
    v193 = 0xEA00000000007972;
  }

  *(v182 + 176) = &type metadata for String;
  *(v182 + 184) = v186;
  *(v182 + 152) = v192;
  *(v182 + 160) = v193;
  *(v182 + 216) = &type metadata for UInt64;
  *(v182 + 224) = &protocol witness table for UInt64;
  *(v182 + 192) = v244;
  *(v182 + 256) = &type metadata for UInt64;
  *(v182 + 264) = &protocol witness table for UInt64;
  *(v182 + 232) = v249;
  os_log(_:dso:log:_:_:)(v260, &_mh_execute_header, v254, "%{public}@: %{public}@. Keys for Beacon %{mask.hash}@, sequence %{public}@, index %llu - %llu", 93, 2, v182);

LABEL_115:
  v241 = 0;
  v126 = 1;
LABEL_116:
  v257 = v126;
LABEL_117:

  v210 = *(v1 + 8);

  return v210(v262, v241, v257);
}

uint64_t sub_100733DE8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[139] = v2;

  v7 = v6[112];
  v8 = v6[111];
  v9 = v6[100];
  v10 = v6[101] + 8;
  if (v2)
  {
    v11 = *v10;
    v6[156] = *v10;
    v6[157] = v10 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v8, v9);
    v11(v7, v9);
    v12 = sub_100737CF8;
  }

  else
  {
    v6[140] = a2;
    v6[141] = a1;
    v13 = *v10;
    v6[142] = *v10;
    v6[143] = v10 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v8, v9);
    v13(v7, v9);
    v12 = sub_100733FE8;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_100733FE8()
{
  v1 = v0[140];
  if (v1 >> 60 == 15)
  {
    v2 = v0[142];
    v3 = v0[110];
    v4 = v0[109];
    v5 = v0[100];
    v6 = v0[87];
    v8 = v6[3];
    v7 = v6[4];
    sub_1000035D0(v6, v8);
    (*(*(*(v7 + 8) + 8) + 32))(v8);
    LOBYTE(v7) = sub_100DE8BCC(v3, v4);
    v2(v3, v5);
    if (v7)
    {
      v9 = v0[87];
      v10 = v9[3];
      v11 = v9[4];
      sub_1000035D0(v9, v10);
      (*(*(*(v11 + 8) + 8) + 32))(v10);
      if (qword_1016954F8 != -1)
      {
        swift_once();
      }

      v12 = v0[110];
      v13 = v0[109];
      v14 = v0[101];
      v15 = v0[100];
      v0[144] = qword_1016CCD18;
      (*(v14 + 16))(v13, v12, v15);
      v16 = (*(v14 + 80) + 16) & ~*(v14 + 80);
      v17 = swift_allocObject();
      v0[145] = v17;
      (*(v14 + 32))(v17 + v16, v13, v15);
      sub_1000BC4D4(&qword_1016A4720, &qword_1013B1060);
      sub_1000041A4(&unk_1016C2150, &qword_1016A4720, &qword_1013B1060, &protocol conformance descriptor for AsyncKeyedThrottle<A>);
      v19 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100734348, v19, v18);
    }

    v20 = 0;
    v1 = 0xF000000000000000;
  }

  else
  {
    v20 = v0[141];
  }

  v0[147] = v1;
  v0[146] = v20;
  v21 = v0[87];
  v22 = v0[57];
  v23 = v0[58];
  v24 = sub_1000035D0(v0 + 54, v22);
  v25 = v21[3];
  v26 = v21[4];
  sub_1000035D0(v21, v25);
  (*(*(*(v26 + 8) + 8) + 32))(v25);
  sub_1005F9784();
  v27 = swift_task_alloc();
  v0[148] = v27;
  *v27 = v0;
  v27[1] = sub_10073454C;
  v28 = v0[108];
  v29 = v0[107];

  return sub_1006858D0(v29, v28, v24, v22, v23);
}

uint64_t sub_100734348()
{
  v1 = v0[142];
  v2 = v0[110];
  v3 = v0[100];
  dispatch thunk of AsyncKeyedThrottle.throttle(key:block:)();

  v1(v2, v3);

  return _swift_task_switch(sub_100734404, 0, 0);
}

uint64_t sub_100734404()
{
  *(v0 + 1168) = xmmword_10138BBF0;
  v1 = *(v0 + 696);
  v2 = *(v0 + 456);
  v3 = *(v0 + 464);
  v4 = sub_1000035D0((v0 + 432), v2);
  v5 = v1[3];
  v6 = v1[4];
  sub_1000035D0(v1, v5);
  (*(*(*(v6 + 8) + 8) + 32))(v5);
  sub_1005F9784();
  v7 = swift_task_alloc();
  *(v0 + 1184) = v7;
  *v7 = v0;
  v7[1] = sub_10073454C;
  v8 = *(v0 + 864);
  v9 = *(v0 + 856);

  return sub_1006858D0(v9, v8, v4, v2, v3);
}

uint64_t sub_10073454C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[149] = a1;
  v4[150] = a2;
  v4[151] = v2;

  if (v2)
  {
    v5 = v4[108];
    v6 = v4[100];
    v7 = *(v4[101] + 8);
    v7(v4[107], v6);
    v7(v5, v6);

    v8 = sub_1007380B0;
  }

  else
  {
    v9 = v4[108];
    v10 = v4[107];
    v11 = v4[101];
    v12 = v4[100];
    v13 = *(v11 + 8);
    v4[152] = v13;
    v4[153] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v10, v12);
    v13(v9, v12);
    v8 = sub_100734720;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100734720()
{
  v261 = v0;
  v234 = (v0 + 472);
  if (*(v0 + 1200) >> 60 != 15)
  {
    v252 = *(v0 + 1176);
    v24 = *(v0 + 1072);
    v25 = *(v0 + 1008);
    v26 = *(v0 + 792);
    v27 = *(v0 + 776);
    v28 = *(v0 + 768);
    v29 = *(v0 + 1265);
    v30 = *(v0 + 696);
    v31 = v30[3];
    v32 = v30[4];
    sub_1000035D0(v30, v31);
    (*(v32 + 192))(v31, v32);
    v33 = sub_1007382B8(v29 & 1);
    sub_1008849E8(v26, v24, v33, v25);
    (*(v27 + 8))(v26, v28);
    type metadata accessor for __DataStorage();
    swift_allocObject();
    v34 = __DataStorage.init(length:)();
    if (v252 >> 60 == 15)
    {
      v243 = 0x2000000000;
      v248 = v34 | 0x4000000000000000;
      sub_100017D5C(0x2000000000, v34 | 0x4000000000000000);
      v253 = *(v0 + 1176);
      v35 = *(v0 + 1168);
    }

    else
    {
      v35 = *(v0 + 1168);
      v243 = v35;
      v248 = *(v0 + 1176);
      v253 = v248;
    }

    v42 = *(v0 + 1200);
    v43 = *(v0 + 1192);
    v44 = *(v0 + 1008);
    v45 = *(v0 + 992);
    v46 = *(v0 + 984);
    v47 = *(v0 + 760);
    v48 = *(v0 + 744);
    sub_10001F280(v0 + 432, (v47 + 32));
    (*(v45 + 16))(&v47[*(v48 + 28)], v44, v46);
    *v47 = v43;
    *(v47 + 1) = v42;
    *(v47 + 2) = v243;
    *(v47 + 3) = v248;
    sub_10002E98C(v35, v253);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v0 + 1088);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v50 = sub_100A5BE18(0, v50[2] + 1, 1, *(v0 + 1088));
    }

    v52 = v50[2];
    v51 = v50[3];
    if (v52 >= v51 >> 1)
    {
      v50 = sub_100A5BE18((v51 > 1), v52 + 1, 1, v50);
    }

    v53 = *(v0 + 1176);
    v54 = *(v0 + 1168);
    v247 = *(v0 + 1072);
    v55 = *(v0 + 1008);
    v56 = *(v0 + 992);
    v57 = *(v0 + 984);
    v58 = *(v0 + 928);
    v59 = *(v0 + 752);
    v238 = *(v0 + 760);
    v242 = *(v0 + 712);

    sub_100006654(v54, v53);
    v60 = *(v56 + 8);
    v40 = (v56 + 8);
    v60(v55, v57);
    sub_10073AA30(v58, type metadata accessor for SharedBeaconRecord);
    v50[2] = v52 + 1;
    sub_1000185B4(v238, v50 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v52, _s18ConnectionKeyGroupVMa);
    sub_100007BAC((v0 + 432));
    if (v247 != v242)
    {
      v232 = *(v0 + 1208);
      v61 = *(v0 + 1096);
      v62 = *(v0 + 1080);
      v63 = *(v0 + 1268);
      v64 = *(v0 + 1064);
      v65 = *(v0 + 1072);
      goto LABEL_29;
    }

    v249 = 0;
    v227 = 2;
    v254 = v50;
    goto LABEL_104;
  }

  if (*(v0 + 1269) == 2)
  {
    v1 = *(v0 + 1216);
    v2 = *(v0 + 880);
    v3 = *(v0 + 872);
    v4 = *(v0 + 800);
    v5 = *(v0 + 696);
    v7 = v5[3];
    v6 = v5[4];
    sub_1000035D0(v5, v7);
    (*(*(*(v6 + 8) + 8) + 32))(v7);
    LOBYTE(v6) = sub_100DE8BCC(v2, v3);
    v1(v2, v4);
    if (v6)
    {
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 696);
      v9 = type metadata accessor for Logger();
      sub_1000076D4(v9, qword_10177A560);
      sub_10001F280(v8, v0 + 392);
      sub_10001F280(v0 + 432, v0 + 352);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = *(v0 + 1216);
        v13 = *(v0 + 880);
        v14 = *(v0 + 800);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v260 = v16;
        *v15 = 141558531;
        *(v15 + 4) = 1752392040;
        *(v15 + 12) = 2081;
        v18 = *(v0 + 416);
        v17 = *(v0 + 424);
        sub_1000035D0((v0 + 392), v18);
        (*(*(*(v17 + 8) + 8) + 32))(v18);
        sub_100739ED0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v21 = v20;
        v12(v13, v14);
        sub_100007BAC((v0 + 392));
        v22 = sub_1000136BC(v19, v21, &v260);

        *(v15 + 14) = v22;
        *(v15 + 22) = 2048;
        sub_1000035D0((v0 + 352), *(v0 + 376));
        dispatch thunk of RawRepresentable.rawValue.getter();
        v23 = *(v0 + 640);
        sub_100007BAC((v0 + 352));
        *(v15 + 24) = v23;
        _os_log_impl(&_mh_execute_header, v10, v11, "Didn't find keys for beacon: %{private,mask.hash}s, requesting download - index %llu.", v15, 0x20u);
        sub_100007BAC(v16);
      }

      else
      {
        sub_100007BAC((v0 + 352));

        sub_100007BAC((v0 + 392));
      }

      v66 = *(v0 + 696);
      v67 = v66[3];
      v68 = v66[4];
      sub_1000035D0(v66, v67);
      (*(*(*(v68 + 8) + 8) + 32))(v67);
      if (qword_1016954F8 != -1)
      {
        swift_once();
      }

      v69 = *(v0 + 880);
      v70 = *(v0 + 872);
      v71 = *(v0 + 808);
      v72 = *(v0 + 800);
      *(v0 + 1232) = qword_1016CCD18;
      (*(v71 + 16))(v70, v69, v72);
      v73 = (*(v71 + 80) + 16) & ~*(v71 + 80);
      v74 = swift_allocObject();
      *(v0 + 1240) = v74;
      (*(v71 + 32))(v74 + v73, v70, v72);
      sub_1000BC4D4(&qword_1016A4720, &qword_1013B1060);
      sub_1000041A4(&unk_1016C2150, &qword_1016A4720, &qword_1013B1060, &protocol conformance descriptor for AsyncKeyedThrottle<A>);
      v76 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_10073653C, v76, v75);
    }
  }

  v36 = *(v0 + 1176);
  v37 = *(v0 + 1168);
  sub_10073AA30(*(v0 + 928), type metadata accessor for SharedBeaconRecord);
  sub_100006654(v37, v36);
  v38 = *(v0 + 1072);
  v39 = *(v0 + 712);
  v40 = *(*(v0 + 1088) + 16);
  sub_100007BAC((v0 + 432));
  if (v40 && v38 == v39)
  {
    v254 = *(v0 + 1088);

    v249 = 0;
    v41 = 2;
    goto LABEL_103;
  }

  v53 = *(v0 + 1216);
  v232 = *(v0 + 1208);
  v61 = *(v0 + 1096);
  v62 = *(v0 + 1080);
  v63 = *(v0 + 1268);
  v64 = *(v0 + 1064);
  while (1)
  {
    v65 = *(v0 + 1072);
    v50 = *(v0 + 1088);
    if (v65 == *(v0 + 712))
    {
      break;
    }

LABEL_29:
    v77 = v65 + 1;
    if (v65 == -1)
    {
      __break(1u);
LABEL_117:
      v40 = sub_100A5BDF0(0, v40[2] + 1, 1, v40);
      goto LABEL_53;
    }

    *(v0 + 1096) = v61;
    *(v0 + 1088) = v50;
    *(v0 + 1080) = v62;
    *(v0 + 1072) = v77;
    LOBYTE(v242) = v63;
    *(v0 + 1268) = v63 & 1;
    v238 = v64;
    *(v0 + 1064) = v64;
    v78 = *(v0 + 920);
    sub_10001F280(*(v0 + 696), v0 + 152);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v79 = swift_dynamicCast();
    v80 = *(v78 + 56);
    if (v79)
    {
      v81 = *(v0 + 928);
      v82 = *(v0 + 912);
      v83 = *(v0 + 904);
      v80(v83, 0, 1, v82);
      sub_1000185B4(v83, v81, type metadata accessor for SharedBeaconRecord);
      v84 = *(v81 + *(v82 + 64));
      *(v0 + 1269) = v84;
      if (v84 == 4 || v84 == 2)
      {
        if (*(v0 + 1265))
        {
          v158 = &type metadata for SecondaryIndex;
          *(v0 + 456) = &type metadata for SecondaryIndex;
          v159 = sub_10022A4D4();
          *(v0 + 464) = v159;
          *(v0 + 432) = v77;
LABEL_113:
          *(v0 + 1168) = xmmword_10138BBF0;
          v219 = *(v0 + 696);
          v220 = sub_1000035D0((v0 + 432), v158);
          v221 = v219[3];
          v222 = v219[4];
          sub_1000035D0(v219, v221);
          (*(*(*(v222 + 8) + 8) + 32))(v221);
          sub_1005F9784();
          v223 = swift_task_alloc();
          *(v0 + 1184) = v223;
          *v223 = v0;
          v223[1] = sub_10073454C;
          v224 = *(v0 + 864);
          v225 = *(v0 + 856);

          return sub_1006858D0(v225, v224, v220, v158, v159);
        }

        v176 = *(v0 + 928);
        v177 = *(v0 + 912);
        *(v0 + 456) = &type metadata for PrimaryIndex;
        *(v0 + 464) = sub_10002A2B8();
        *(v0 + 432) = v77;
        if (*(v176 + *(v177 + 44)) == -1 || v84 == 4 || *(v176 + *(v177 + 48)) == -1)
        {
          if (qword_101694480 != -1)
          {
            swift_once();
          }

          v204 = *(v0 + 696);
          v205 = type metadata accessor for Logger();
          sub_1000076D4(v205, qword_10177A560);
          sub_10001F280(v204, v0 + 272);
          v206 = Logger.logObject.getter();
          v207 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v206, v207))
          {
            v208 = *(v0 + 880);
            v209 = *(v0 + 808);
            v210 = *(v0 + 800);
            v211 = swift_slowAlloc();
            v212 = swift_slowAlloc();
            v260 = v212;
            *v211 = 141558275;
            *(v211 + 4) = 1752392040;
            *(v211 + 12) = 2081;
            v214 = *(v0 + 296);
            v213 = *(v0 + 304);
            sub_1000035D0((v0 + 272), v214);
            (*(*(*(v213 + 8) + 8) + 32))(v214);
            sub_100739ED0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v215 = dispatch thunk of CustomStringConvertible.description.getter();
            v217 = v216;
            (*(v209 + 8))(v208, v210);
            sub_100007BAC((v0 + 272));
            v218 = sub_1000136BC(v215, v217, &v260);

            *(v211 + 14) = v218;
            _os_log_impl(&_mh_execute_header, v206, v207, "Skipping connection keys fetching: %{private,mask.hash}s.", v211, 0x16u);
            sub_100007BAC(v212);
          }

          else
          {

            sub_100007BAC((v0 + 272));
          }

          v158 = *(v0 + 456);
          v159 = *(v0 + 464);
          goto LABEL_113;
        }

        v178 = *(v0 + 696);
        v179 = v178[3];
        v180 = v178[4];
        sub_1000035D0(v178, v179);
        (*(*(*(v180 + 8) + 8) + 32))(v179);
        v181 = getuid();
        sub_1000294F0(v181);
        v182 = swift_task_alloc();
        *(v0 + 1104) = v182;
        *v182 = v0;
        v182[1] = sub_100733DE8;
        v183 = *(v0 + 896);
        v184 = *(v0 + 888);

        return sub_1006868C4(v184, v183, v77);
      }

      sub_10073AA30(*(v0 + 928), type metadata accessor for SharedBeaconRecord);
    }

    else
    {
      v85 = *(v0 + 904);
      v80(v85, 1, 1, *(v0 + 912));
      sub_10000B3A8(v85, &unk_101698C30, &unk_101392630);
    }

    v86 = *(v0 + 1265);
    v87 = *(v0 + 696);
    v89 = v87[3];
    v88 = v87[4];
    sub_1000035D0(v87, v89);
    (*(*(*(v88 + 8) + 8) + 32))(v89);
    v255 = v62;
    v256 = v77;
    v247 = v61;
    if (v86)
    {
      v90 = &type metadata for SecondaryIndex;
      v91 = sub_10022A4D4();
    }

    else
    {
      v90 = &type metadata for PrimaryIndex;
      v91 = sub_10002A2B8();
    }

    v92 = *(v0 + 848);
    v93 = *(v0 + 808);
    v94 = *(v0 + 800);
    v95 = *(v0 + 736);
    v96 = *(v0 + 728);
    v61 = *(v0 + 1267);
    *(v0 + 256) = v90;
    *(v0 + 264) = v91;
    v40 = v256;
    *(v0 + 232) = v256;
    sub_100031694((v0 + 232), v0 + 192);
    (*(v93 + 16))(v95, v92, v94);
    sub_10001F280(v0 + 192, v95 + *(v96 + 20));
    sub_1012DE5A0(v95, v61, (v0 + 16));
    sub_10073AA30(v95, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100007BAC((v0 + 192));
    v53 = *(v93 + 8);
    v53(v92, v94);
    v97 = *(v0 + 40);
    if (v97 >> 60 == 15)
    {
      v63 = 0;
      v64 = v238;
      if (v242)
      {
        v64 = v256;
      }

      v61 = v247;
      v62 = v255;
    }

    else
    {
      v98 = *(v0 + 1265);
      v99 = *(v0 + 696);
      *v234 = *(v0 + 16);
      *(v0 + 488) = *(v0 + 32);
      *(v0 + 576) = *(v0 + 48);
      v100 = v99[3];
      v101 = v99[4];
      sub_1000035D0(v99, v100);
      (*(v101 + 192))(v100, v101);
      v102 = qword_101694940 == -1;
      if (v98)
      {
        if (qword_101694940 != -1)
        {
          swift_once();
        }

        v40 = v232;
        OS_dispatch_queue.sync<A>(execute:)();
        v103 = *(v0 + 632);
        KeyPath = swift_getKeyPath();
        v105 = sub_1010790F4(KeyPath, v103);
        if (v106)
        {
          _StringGuts.grow(_:)(40);
          *(v0 + 560) = 0;
          *(v0 + 568) = 0xE000000000000000;
          v185._countAndFlagsBits = 0xD000000000000026;
          v185._object = 0x800000010134CA80;
          String.append(_:)(v185);
          *(v0 + 624) = KeyPath;
          sub_1000BC4D4(&qword_1016A5870, &qword_1013B3260);
LABEL_95:
          _print_unlocked<A, B>(_:_:)();
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v107 = v105;

        if ((v107 & 0x8000000000000000) == 0)
        {
          goto LABEL_52;
        }

        __break(1u);
      }

      if (!v102)
      {
        swift_once();
      }

      v40 = v232;
      OS_dispatch_queue.sync<A>(execute:)();
      v108 = *(v0 + 608);
      v109 = swift_getKeyPath();
      v110 = sub_1010790F4(v109, v108);
      if (v111)
      {
        _StringGuts.grow(_:)(40);
        *(v0 + 544) = 0;
        *(v0 + 552) = 0xE000000000000000;
        v186._countAndFlagsBits = 0xD000000000000026;
        v186._object = 0x800000010134CA80;
        String.append(_:)(v186);
        *(v0 + 616) = v109;
        sub_1000BC4D4(&qword_1016A5870, &qword_1013B3260);
        goto LABEL_95;
      }

      v107 = v110;

      if ((v107 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

LABEL_52:
      v230 = v53;
      v232 = v40;
      v112 = *(v0 + 1000);
      v228 = v97;
      v113 = *(v0 + 992);
      v114 = *(v0 + 984);
      v115 = *(v0 + 960);
      v229 = *(v0 + 952);
      v116 = *(v0 + 936);
      v117 = *(v0 + 784);
      v118 = *(v0 + 776);
      v119 = *(v0 + 768);
      sub_1008849E8(v117, v256, v107, v112);
      (*(v118 + 8))(v117, v119);
      (*(v113 + 16))(v115 + *(v116 + 20), v112, v114);
      v53 = v256;
      *v115 = v256;
      v120 = v115 + *(v116 + 24);
      v121 = *(v0 + 488);
      *v120 = *v234;
      *(v120 + 2) = v121;
      *(v120 + 3) = v228;
      *(v120 + 2) = *(v0 + 576);
      sub_100739F64(v115, v229);
      v40 = v255;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_117;
      }

LABEL_53:
      v61 = v247;
      v123 = v40[2];
      v122 = v40[3];
      if (v123 >= v122 >> 1)
      {
        v40 = sub_100A5BDF0((v122 > 1), v123 + 1, 1, v40);
      }

      v124 = *(v0 + 952);
      v125 = *(v0 + 944);
      v40[2] = v123 + 1;
      sub_1000185B4(v124, v40 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v123, type metadata accessor for TimeBasedKey);
      if (v242)
      {
        v126 = *(v0 + 1000);
        v127 = v40;
        v128 = *(v0 + 992);
        v129 = *(v0 + 984);
        sub_10073AA30(*(v0 + 960), type metadata accessor for TimeBasedKey);
        v130 = *(v128 + 8);
        v40 = (v128 + 8);
        v130(v126, v129);
        v62 = v127;
        v64 = 0;
        v63 = 1;
        v53 = v230;
      }

      else
      {
        v109 = v53 - 1;
        if (!v53)
        {
          goto LABEL_119;
        }

        if (v109 >= v238)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_60;
          }

          goto LABEL_121;
        }

LABEL_120:
        __break(1u);
LABEL_121:
        v61 = sub_100A5BCE0(0, *(v61 + 16) + 1, 1, v61);
LABEL_60:
        v132 = *(v61 + 16);
        v131 = *(v61 + 24);
        v62 = v40;
        if (v132 >= v131 >> 1)
        {
          v61 = sub_100A5BCE0((v131 > 1), v132 + 1, 1, v61);
        }

        v133 = *(v0 + 1000);
        v134 = *(v0 + 992);
        v135 = *(v0 + 984);
        sub_10073AA30(*(v0 + 960), type metadata accessor for TimeBasedKey);
        v136 = *(v134 + 8);
        v40 = (v134 + 8);
        v136(v133, v135);
        *(v61 + 16) = v132 + 1;
        v137 = v61 + 16 * v132;
        *(v137 + 32) = v238;
        *(v137 + 40) = v109;
        v63 = 1;
        v64 = 0;
        v53 = v230;
      }
    }
  }

  if ((v63 & 1) == 0)
  {
    if (v64 > *(v0 + 712))
    {
      __break(1u);
    }

    else if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_66;
    }

    v61 = sub_100A5BCE0(0, *(v61 + 16) + 1, 1, v61);
LABEL_66:
    v139 = *(v61 + 16);
    v138 = *(v61 + 24);
    if (v139 >= v138 >> 1)
    {
      v61 = sub_100A5BCE0((v138 > 1), v139 + 1, 1, v61);
    }

    v140 = *(v0 + 712);
    *(v61 + 16) = v139 + 1;
    v141 = v61 + 16 * v139;
    *(v141 + 32) = v64;
    *(v141 + 40) = v140;
  }

  v254 = v62;
  v231 = v53;
  if (v62[2])
  {
    if (*(v61 + 16))
    {
      v249 = v61;
      v257 = static os_log_type_t.error.getter();
      if (qword_101694A20 != -1)
      {
        swift_once();
      }

      v142 = *(v0 + 832);
      v143 = *(v0 + 800);
      v144 = *(v0 + 720);
      v233 = *(v0 + 1265);
      v235 = *(v0 + 704);
      v239 = *(v0 + 712);
      v145 = *(v0 + 696);
      v244 = qword_10177B550;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v146 = swift_allocObject();
      *(v146 + 16) = xmmword_10138B420;
      *(v0 + 672) = *v144;
      sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
      v147 = String.init<A>(describing:)();
      v149 = v148;
      *(v146 + 56) = &type metadata for String;
      v150 = sub_100008C00();
      *(v146 + 32) = v147;
      *(v146 + 40) = v149;
      *(v146 + 96) = &type metadata for String;
      *(v146 + 104) = v150;
      *(v146 + 64) = v150;
      *(v146 + 72) = 0xD00000000000004DLL;
      *(v146 + 80) = 0x800000010135DB80;
      v151 = v145[3];
      v152 = v145[4];
      sub_1000035D0(v145, v151);
      (*(*(*(v152 + 8) + 8) + 32))(v151);
      v153 = UUID.uuidString.getter();
      v155 = v154;
      v231(v142, v143);
      *(v146 + 136) = &type metadata for String;
      *(v146 + 144) = v150;
      *(v146 + 112) = v153;
      *(v146 + 120) = v155;
      v156 = 0x7972616D6972702ELL;
      if (v233)
      {
        v156 = 0x61646E6F6365732ELL;
      }

      v157 = 0xE800000000000000;
      if (v233)
      {
        v157 = 0xEA00000000007972;
      }

      *(v146 + 176) = &type metadata for String;
      *(v146 + 184) = v150;
      *(v146 + 152) = v156;
      *(v146 + 160) = v157;
      *(v146 + 216) = &type metadata for UInt64;
      *(v146 + 224) = &protocol witness table for UInt64;
      *(v146 + 192) = v235;
      *(v146 + 256) = &type metadata for UInt64;
      *(v146 + 264) = &protocol witness table for UInt64;
      *(v146 + 232) = v239;
      *(v146 + 296) = sub_1000BC4D4(&qword_1016A7CD0, &qword_1013B6E40);
      *(v146 + 304) = sub_1000041A4(&qword_1016A7CD8, &qword_1016A7CD0, &qword_1013B6E40, &protocol conformance descriptor for [A]);
      *(v146 + 272) = v249;
      swift_bridgeObjectRetain_n();
      os_log(_:dso:log:_:_:)(v257, &_mh_execute_header, v244, "%@: %@. Unable to obtain keys for beacon %{mask.hash}@, sequence %@, index %llu - %llu, gaps %@.", 96, 2, v146);

      v227 = 0;
      goto LABEL_104;
    }

    v259 = static os_log_type_t.default.getter();
    if (qword_101694A20 != -1)
    {
      swift_once();
    }

    v187 = *(v0 + 840);
    v188 = *(v0 + 800);
    v189 = *(v0 + 720);
    v237 = *(v0 + 1265);
    v241 = *(v0 + 704);
    v246 = *(v0 + 712);
    v190 = *(v0 + 696);
    v251 = qword_10177B550;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v191 = swift_allocObject();
    *(v191 + 16) = xmmword_1013917A0;
    *(v0 + 664) = *v189;
    sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
    v192 = String.init<A>(describing:)();
    v194 = v193;
    *(v191 + 56) = &type metadata for String;
    v195 = sub_100008C00();
    *(v191 + 32) = v192;
    *(v191 + 40) = v194;
    *(v191 + 96) = &type metadata for String;
    *(v191 + 104) = v195;
    *(v191 + 64) = v195;
    *(v191 + 72) = 0xD00000000000004DLL;
    *(v191 + 80) = 0x800000010135DB80;
    v196 = v190[3];
    v197 = v190[4];
    sub_1000035D0(v190, v196);
    (*(*(*(v197 + 8) + 8) + 32))(v196);
    v198 = UUID.uuidString.getter();
    v200 = v199;
    v53(v187, v188);
    *(v191 + 136) = &type metadata for String;
    *(v191 + 144) = v195;
    *(v191 + 112) = v198;
    *(v191 + 120) = v200;
    v201 = 0x7972616D6972702ELL;
    if (v237)
    {
      v201 = 0x61646E6F6365732ELL;
    }

    v202 = 0xE800000000000000;
    if (v237)
    {
      v202 = 0xEA00000000007972;
    }

    *(v191 + 176) = &type metadata for String;
    *(v191 + 184) = v195;
    *(v191 + 152) = v201;
    *(v191 + 160) = v202;
    *(v191 + 216) = &type metadata for UInt64;
    *(v191 + 224) = &protocol witness table for UInt64;
    *(v191 + 192) = v241;
    *(v191 + 256) = &type metadata for UInt64;
    *(v191 + 264) = &protocol witness table for UInt64;
    *(v191 + 232) = v246;
    os_log(_:dso:log:_:_:)(v259, &_mh_execute_header, v251, "%{public}@: %{public}@. Keys for Beacon %{mask.hash}@, sequence %{public}@, index %llu - %llu", 93, 2, v191);

    v249 = 0;
    v41 = 1;
  }

  else
  {

    v258 = static os_log_type_t.error.getter();
    if (qword_101694A20 != -1)
    {
      swift_once();
    }

    v160 = *(v0 + 824);
    v161 = *(v0 + 800);
    v162 = *(v0 + 720);
    v236 = *(v0 + 1265);
    v240 = *(v0 + 704);
    v245 = *(v0 + 712);
    v163 = *(v0 + 696);
    v250 = qword_10177B550;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v164 = swift_allocObject();
    *(v164 + 16) = xmmword_1013917A0;
    *(v0 + 648) = *v162;
    sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
    v165 = String.init<A>(describing:)();
    v167 = v166;
    *(v164 + 56) = &type metadata for String;
    v168 = sub_100008C00();
    *(v164 + 32) = v165;
    *(v164 + 40) = v167;
    *(v164 + 96) = &type metadata for String;
    *(v164 + 104) = v168;
    *(v164 + 64) = v168;
    *(v164 + 72) = 0xD00000000000004DLL;
    *(v164 + 80) = 0x800000010135DB80;
    v169 = v163[3];
    v170 = v163[4];
    sub_1000035D0(v163, v169);
    (*(*(*(v170 + 8) + 8) + 32))(v169);
    v171 = UUID.uuidString.getter();
    v173 = v172;
    v53(v160, v161);
    *(v164 + 136) = &type metadata for String;
    *(v164 + 144) = v168;
    *(v164 + 112) = v171;
    *(v164 + 120) = v173;
    v174 = 0x7972616D6972702ELL;
    if (v236)
    {
      v174 = 0x61646E6F6365732ELL;
    }

    v175 = 0xE800000000000000;
    if (v236)
    {
      v175 = 0xEA00000000007972;
    }

    *(v164 + 176) = &type metadata for String;
    *(v164 + 184) = v168;
    *(v164 + 152) = v174;
    *(v164 + 160) = v175;
    *(v164 + 216) = &type metadata for UInt64;
    *(v164 + 224) = &protocol witness table for UInt64;
    *(v164 + 192) = v240;
    *(v164 + 256) = &type metadata for UInt64;
    *(v164 + 264) = &protocol witness table for UInt64;
    *(v164 + 232) = v245;
    os_log(_:dso:log:_:_:)(v258, &_mh_execute_header, v250, "%@: %@. Unable to obtain keys for beacon %{mask.hash}@, sequence %@, index %llu - %llu", 86, 2, v164);

    v249 = 0;
    v254 = 0;
    v41 = 3;
  }

LABEL_103:
  v227 = v41;
LABEL_104:

  v203 = *(v0 + 8);

  return v203(v254, v249, v227);
}

uint64_t sub_10073653C()
{
  v1 = v0[152];
  v2 = v0[110];
  v3 = v0[100];
  dispatch thunk of AsyncKeyedThrottle.throttle(key:block:)();

  v1(v2, v3);

  return _swift_task_switch(sub_1007365F8, 0, 0);
}

uint64_t sub_1007365F8()
{
  v185 = v0;
  v1 = *(v0 + 928);
  sub_100006654(*(v0 + 1168), *(v0 + 1176));
  sub_10073AA30(v1, type metadata accessor for SharedBeaconRecord);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 712);
  v4 = *(*(v0 + 1088) + 16);
  sub_100007BAC((v0 + 432));
  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v176 = *(v0 + 1088);

    v172 = 0;
    v12 = 2;
    goto LABEL_83;
  }

  v6 = *(v0 + 1096);
  v7 = *(v0 + 1080);
  v8 = *(v0 + 1268);
  KeyPath = *(v0 + 1064);
  v10 = *(v0 + 1072);
  if (v10 == *(v0 + 712))
  {
    v11 = *(v0 + 1216);
LABEL_54:

    if (v8)
    {
LABEL_60:
      v176 = v7;
      if (v7[2])
      {
        if (*(v6 + 2))
        {
          v172 = v6;
          v180 = static os_log_type_t.error.getter();
          if (qword_101694A20 != -1)
          {
            swift_once();
          }

          v72 = *(v0 + 832);
          v158 = *(v0 + 800);
          v73 = *(v0 + 720);
          v159 = *(v0 + 1265);
          v162 = *(v0 + 704);
          v166 = *(v0 + 712);
          v74 = *(v0 + 696);
          v169 = qword_10177B550;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v75 = swift_allocObject();
          *(v75 + 16) = xmmword_10138B420;
          *(v0 + 672) = *v73;
          sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
          v76 = String.init<A>(describing:)();
          v78 = v77;
          *(v75 + 56) = &type metadata for String;
          v79 = sub_100008C00();
          *(v75 + 32) = v76;
          *(v75 + 40) = v78;
          *(v75 + 96) = &type metadata for String;
          *(v75 + 104) = v79;
          *(v75 + 64) = v79;
          *(v75 + 72) = 0xD00000000000004DLL;
          *(v75 + 80) = 0x800000010135DB80;
          v80 = v74[3];
          v81 = v74[4];
          sub_1000035D0(v74, v80);
          (*(*(*(v81 + 8) + 8) + 32))(v80);
          v82 = UUID.uuidString.getter();
          v84 = v83;
          v11(v72, v158);
          *(v75 + 136) = &type metadata for String;
          *(v75 + 144) = v79;
          *(v75 + 112) = v82;
          *(v75 + 120) = v84;
          v85 = 0x7972616D6972702ELL;
          if (v159)
          {
            v85 = 0x61646E6F6365732ELL;
          }

          v86 = 0xE800000000000000;
          if (v159)
          {
            v86 = 0xEA00000000007972;
          }

          *(v75 + 176) = &type metadata for String;
          *(v75 + 184) = v79;
          *(v75 + 152) = v85;
          *(v75 + 160) = v86;
          *(v75 + 216) = &type metadata for UInt64;
          *(v75 + 224) = &protocol witness table for UInt64;
          *(v75 + 192) = v162;
          *(v75 + 256) = &type metadata for UInt64;
          *(v75 + 264) = &protocol witness table for UInt64;
          *(v75 + 232) = v166;
          *(v75 + 296) = sub_1000BC4D4(&qword_1016A7CD0, &qword_1013B6E40);
          *(v75 + 304) = sub_1000041A4(&qword_1016A7CD8, &qword_1016A7CD0, &qword_1013B6E40, &protocol conformance descriptor for [A]);
          *(v75 + 272) = v172;
          swift_bridgeObjectRetain_n();
          os_log(_:dso:log:_:_:)(v180, &_mh_execute_header, v169, "%@: %@. Unable to obtain keys for beacon %{mask.hash}@, sequence %@, index %llu - %llu, gaps %@.", 96, 2, v75);

          v181 = 0;
          goto LABEL_84;
        }

        v183 = static os_log_type_t.default.getter();
        if (qword_101694A20 != -1)
        {
          swift_once();
        }

        v102 = *(v0 + 840);
        v161 = *(v0 + 800);
        v103 = *(v0 + 720);
        v164 = *(v0 + 1265);
        v168 = *(v0 + 704);
        v171 = *(v0 + 712);
        v104 = *(v0 + 696);
        v175 = qword_10177B550;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v105 = swift_allocObject();
        *(v105 + 16) = xmmword_1013917A0;
        *(v0 + 664) = *v103;
        sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
        v106 = String.init<A>(describing:)();
        v108 = v107;
        *(v105 + 56) = &type metadata for String;
        v109 = sub_100008C00();
        *(v105 + 32) = v106;
        *(v105 + 40) = v108;
        *(v105 + 96) = &type metadata for String;
        *(v105 + 104) = v109;
        *(v105 + 64) = v109;
        *(v105 + 72) = 0xD00000000000004DLL;
        *(v105 + 80) = 0x800000010135DB80;
        v110 = v104[3];
        v111 = v104[4];
        sub_1000035D0(v104, v110);
        (*(*(*(v111 + 8) + 8) + 32))(v110);
        v112 = UUID.uuidString.getter();
        v114 = v113;
        v11(v102, v161);
        *(v105 + 136) = &type metadata for String;
        *(v105 + 144) = v109;
        *(v105 + 112) = v112;
        *(v105 + 120) = v114;
        v115 = 0x7972616D6972702ELL;
        if (v164)
        {
          v115 = 0x61646E6F6365732ELL;
        }

        v116 = 0xE800000000000000;
        if (v164)
        {
          v116 = 0xEA00000000007972;
        }

        *(v105 + 176) = &type metadata for String;
        *(v105 + 184) = v109;
        *(v105 + 152) = v115;
        *(v105 + 160) = v116;
        *(v105 + 216) = &type metadata for UInt64;
        *(v105 + 224) = &protocol witness table for UInt64;
        *(v105 + 192) = v168;
        *(v105 + 256) = &type metadata for UInt64;
        *(v105 + 264) = &protocol witness table for UInt64;
        *(v105 + 232) = v171;
        os_log(_:dso:log:_:_:)(v183, &_mh_execute_header, v175, "%{public}@: %{public}@. Keys for Beacon %{mask.hash}@, sequence %{public}@, index %llu - %llu", 93, 2, v105);

        v172 = 0;
        v12 = 1;
      }

      else
      {

        v182 = static os_log_type_t.error.getter();
        if (qword_101694A20 != -1)
        {
          swift_once();
        }

        v87 = *(v0 + 824);
        v160 = *(v0 + 800);
        v88 = *(v0 + 720);
        v163 = *(v0 + 1265);
        v167 = *(v0 + 704);
        v170 = *(v0 + 712);
        v89 = *(v0 + 696);
        v174 = qword_10177B550;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v90 = swift_allocObject();
        *(v90 + 16) = xmmword_1013917A0;
        *(v0 + 648) = *v88;
        sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
        v91 = String.init<A>(describing:)();
        v93 = v92;
        *(v90 + 56) = &type metadata for String;
        v94 = sub_100008C00();
        *(v90 + 32) = v91;
        *(v90 + 40) = v93;
        *(v90 + 96) = &type metadata for String;
        *(v90 + 104) = v94;
        *(v90 + 64) = v94;
        *(v90 + 72) = 0xD00000000000004DLL;
        *(v90 + 80) = 0x800000010135DB80;
        v95 = v89[3];
        v96 = v89[4];
        sub_1000035D0(v89, v95);
        (*(*(*(v96 + 8) + 8) + 32))(v95);
        v97 = UUID.uuidString.getter();
        v99 = v98;
        v11(v87, v160);
        *(v90 + 136) = &type metadata for String;
        *(v90 + 144) = v94;
        *(v90 + 112) = v97;
        *(v90 + 120) = v99;
        v100 = 0x7972616D6972702ELL;
        if (v163)
        {
          v100 = 0x61646E6F6365732ELL;
        }

        v101 = 0xE800000000000000;
        if (v163)
        {
          v101 = 0xEA00000000007972;
        }

        *(v90 + 176) = &type metadata for String;
        *(v90 + 184) = v94;
        *(v90 + 152) = v100;
        *(v90 + 160) = v101;
        *(v90 + 216) = &type metadata for UInt64;
        *(v90 + 224) = &protocol witness table for UInt64;
        *(v90 + 192) = v167;
        *(v90 + 256) = &type metadata for UInt64;
        *(v90 + 264) = &protocol witness table for UInt64;
        *(v90 + 232) = v170;
        os_log(_:dso:log:_:_:)(v182, &_mh_execute_header, v174, "%@: %@. Unable to obtain keys for beacon %{mask.hash}@, sequence %@, index %llu - %llu", 86, 2, v90);

        v172 = 0;
        v176 = 0;
        v12 = 3;
      }

LABEL_83:
      v181 = v12;
LABEL_84:

      v117 = *(v0 + 8);

      return v117(v176, v172, v181);
    }

    if (KeyPath > *(v0 + 712))
    {
      __break(1u);
    }

    else if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_57:
      v69 = *(v6 + 2);
      v68 = *(v6 + 3);
      if (v69 >= v68 >> 1)
      {
        v6 = sub_100A5BCE0((v68 > 1), v69 + 1, 1, v6);
      }

      v70 = *(v0 + 712);
      *(v6 + 2) = v69 + 1;
      v71 = &v6[16 * v69];
      *(v71 + 4) = KeyPath;
      *(v71 + 5) = v70;
      goto LABEL_60;
    }

    v6 = sub_100A5BCE0(0, *(v6 + 2) + 1, 1, v6);
    goto LABEL_57;
  }

  v165 = (v0 + 472);
  v13 = *(v0 + 1064);
LABEL_9:
  v173 = v6;
LABEL_10:
  v177 = v7;
  while (1)
  {
    v14 = v10 + 1;
    if (v10 == -1)
    {
      __break(1u);
LABEL_104:
      _StringGuts.grow(_:)(40);
      *(v0 + 560) = 0;
      *(v0 + 568) = 0xE000000000000000;
      v151._countAndFlagsBits = 0xD000000000000026;
      v151._object = 0x800000010134CA80;
      String.append(_:)(v151);
      *(v0 + 624) = KeyPath;
      sub_1000BC4D4(&qword_1016A5870, &qword_1013B3260);
LABEL_106:
      _print_unlocked<A, B>(_:_:)();
      return _assertionFailure(_:_:file:line:flags:)();
    }

    *(v0 + 1096) = v6;
    *(v0 + 1080) = v7;
    *(v0 + 1072) = v14;
    *(v0 + 1268) = v8 & 1;
    *(v0 + 1064) = v13;
    v15 = *(v0 + 920);
    sub_10001F280(*(v0 + 696), v0 + 152);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v16 = swift_dynamicCast();
    v17 = *(v15 + 56);
    if (v16)
    {
      break;
    }

    v23 = *(v0 + 904);
    v17(v23, 1, 1, *(v0 + 912));
    sub_10000B3A8(v23, &unk_101698C30, &unk_101392630);
LABEL_19:
    v24 = *(v0 + 1265);
    v25 = *(v0 + 696);
    v26 = v25[3];
    v27 = v25[4];
    sub_1000035D0(v25, v26);
    (*(*(*(v27 + 8) + 8) + 32))(v26);
    v179 = v8;
    if (v24)
    {
      *(v0 + 256) = &type metadata for SecondaryIndex;
      v28 = sub_10022A4D4();
    }

    else
    {
      *(v0 + 256) = &type metadata for PrimaryIndex;
      v28 = sub_10002A2B8();
    }

    KeyPath = *(v0 + 848);
    v29 = *(v0 + 808);
    v30 = *(v0 + 800);
    v31 = *(v0 + 736);
    v32 = *(v0 + 728);
    v33 = *(v0 + 1267);
    *(v0 + 264) = v28;
    *(v0 + 232) = v14;
    sub_100031694((v0 + 232), v0 + 192);
    (*(v29 + 16))(v31, KeyPath, v30);
    sub_10001F280(v0 + 192, v31 + *(v32 + 20));
    sub_1012DE5A0(v31, v33, (v0 + 16));
    sub_10073AA30(v31, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100007BAC((v0 + 192));
    v11 = *(v29 + 8);
    v11(KeyPath, v30);
    v34 = *(v0 + 40);
    if (v34 >> 60 != 15)
    {
      v35 = *(v0 + 1265);
      v36 = *(v0 + 696);
      *v165 = *(v0 + 16);
      *(v0 + 488) = *(v0 + 32);
      *(v0 + 576) = *(v0 + 48);
      v37 = v36[3];
      v38 = v36[4];
      sub_1000035D0(v36, v37);
      (*(v38 + 192))(v37, v38);
      if (v35)
      {
        if (qword_101694940 != -1)
        {
          swift_once();
        }

        OS_dispatch_queue.sync<A>(execute:)();
        v39 = *(v0 + 632);
        KeyPath = swift_getKeyPath();
        v40 = sub_1010790F4(KeyPath, v39);
        if (v41)
        {
          goto LABEL_104;
        }

        v42 = v40;

        if ((v42 & 0x8000000000000000) != 0)
        {
          goto LABEL_110;
        }
      }

      else
      {
        if (qword_101694940 != -1)
        {
          swift_once();
        }

        OS_dispatch_queue.sync<A>(execute:)();
        v43 = *(v0 + 608);
        v44 = swift_getKeyPath();
        v45 = sub_1010790F4(v44, v43);
        if (v46)
        {
          _StringGuts.grow(_:)(40);
          *(v0 + 544) = 0;
          *(v0 + 552) = 0xE000000000000000;
          v152._countAndFlagsBits = 0xD000000000000026;
          v152._object = 0x800000010134CA80;
          String.append(_:)(v152);
          *(v0 + 616) = v44;
          sub_1000BC4D4(&qword_1016A5870, &qword_1013B3260);
          goto LABEL_106;
        }

        v42 = v45;

        if ((v42 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          swift_once();
          goto LABEL_96;
        }
      }

      v47 = *(v0 + 992);
      v155 = *(v0 + 1000);
      v156 = *(v0 + 984);
      v48 = *(v0 + 960);
      v157 = *(v0 + 952);
      v49 = *(v0 + 784);
      v50 = *(v0 + 776);
      v153 = *(v0 + 768);
      v154 = *(v0 + 936);
      sub_1008849E8(v49, v14, v42, v155);
      (*(v50 + 8))(v49, v153);
      (*(v47 + 16))(v48 + *(v154 + 20), v155, v156);
      *v48 = v14;
      v51 = v48 + *(v154 + 24);
      v52 = *(v0 + 488);
      *v51 = *v165;
      *(v51 + 2) = v52;
      *(v51 + 3) = v34;
      *(v51 + 2) = *(v0 + 576);
      sub_100739F64(v48, v157);
      v7 = v177;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100A5BDF0(0, v177[2] + 1, 1, v177);
      }

      v6 = v173;
      v54 = v7[2];
      v53 = v7[3];
      if (v54 >= v53 >> 1)
      {
        v7 = sub_100A5BDF0((v53 > 1), v54 + 1, 1, v7);
      }

      v55 = *(v0 + 952);
      v56 = *(v0 + 944);
      v7[2] = v54 + 1;
      result = sub_1000185B4(v55, v7 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v54, type metadata accessor for TimeBasedKey);
      if (v179)
      {
        v58 = *(v0 + 1000);
        v59 = *(v0 + 992);
        KeyPath = *(v0 + 984);
        sub_10073AA30(*(v0 + 960), type metadata accessor for TimeBasedKey);
        (*(v59 + 8))(v58, KeyPath);
        v13 = 0;
        v10 = *(v0 + 1072);
        v8 = 1;
        if (v10 != *(v0 + 712))
        {
          goto LABEL_10;
        }

LABEL_53:
        KeyPath = v13;
        goto LABEL_54;
      }

      v60 = v14 - 1;
      if (!v14)
      {
        __break(1u);
LABEL_113:
        __break(1u);
        return result;
      }

      if (v60 < v13)
      {
        goto LABEL_113;
      }

      v178 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100A5BCE0(0, *(v173 + 2) + 1, 1, v173);
      }

      v62 = *(v6 + 2);
      v61 = *(v6 + 3);
      if (v62 >= v61 >> 1)
      {
        v63 = sub_100A5BCE0((v61 > 1), v62 + 1, 1, v6);
      }

      else
      {
        v63 = v6;
      }

      v64 = *(v0 + 1000);
      v65 = *(v0 + 992);
      v66 = *(v0 + 984);
      sub_10073AA30(*(v0 + 960), type metadata accessor for TimeBasedKey);
      (*(v65 + 8))(v64, v66);
      KeyPath = 0;
      v6 = v63;
      *(v63 + 2) = v62 + 1;
      v67 = &v63[16 * v62];
      *(v67 + 4) = v13;
      *(v67 + 5) = v60;
      v10 = *(v0 + 1072);
      v8 = 1;
      v13 = 0;
      v7 = v178;
      if (v10 == *(v0 + 712))
      {
        goto LABEL_54;
      }

      goto LABEL_9;
    }

    if (v179)
    {
      v13 = v14;
    }

    v10 = *(v0 + 1072);
    v8 = 0;
    v6 = v173;
    v7 = v177;
    if (v10 == *(v0 + 712))
    {
      goto LABEL_53;
    }
  }

  v18 = *(v0 + 928);
  v19 = *(v0 + 912);
  v20 = *(v0 + 904);
  v17(v20, 0, 1, v19);
  sub_1000185B4(v20, v18, type metadata accessor for SharedBeaconRecord);
  v21 = *(v18 + *(v19 + 64));
  *(v0 + 1269) = v21;
  if (v21 != 4 && v21 != 2)
  {
    sub_10073AA30(*(v0 + 928), type metadata accessor for SharedBeaconRecord);
    goto LABEL_19;
  }

  if (*(v0 + 1265))
  {
    v118 = &type metadata for SecondaryIndex;
    *(v0 + 456) = &type metadata for SecondaryIndex;
    v119 = sub_10022A4D4();
    *(v0 + 464) = v119;
    *(v0 + 432) = v14;
    goto LABEL_100;
  }

  v120 = *(v0 + 928);
  v121 = *(v0 + 912);
  *(v0 + 456) = &type metadata for PrimaryIndex;
  *(v0 + 464) = sub_10002A2B8();
  *(v0 + 432) = v14;
  if (*(v120 + *(v121 + 44)) != -1 && v21 != 4 && *(v120 + *(v121 + 48)) != -1)
  {
    v122 = *(v0 + 696);
    v123 = v122[3];
    v124 = v122[4];
    sub_1000035D0(v122, v123);
    (*(*(*(v124 + 8) + 8) + 32))(v123);
    v125 = getuid();
    sub_1000294F0(v125);
    v126 = swift_task_alloc();
    *(v0 + 1104) = v126;
    *v126 = v0;
    v126[1] = sub_100733DE8;
    v127 = *(v0 + 896);
    v128 = *(v0 + 888);

    return sub_1006868C4(v128, v127, v14);
  }

  if (qword_101694480 != -1)
  {
    goto LABEL_111;
  }

LABEL_96:
  v129 = *(v0 + 696);
  v130 = type metadata accessor for Logger();
  sub_1000076D4(v130, qword_10177A560);
  sub_10001F280(v129, v0 + 272);
  v131 = Logger.logObject.getter();
  v132 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = *(v0 + 880);
    v134 = *(v0 + 808);
    v135 = *(v0 + 800);
    v136 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v184 = v137;
    *v136 = 141558275;
    *(v136 + 4) = 1752392040;
    *(v136 + 12) = 2081;
    v139 = *(v0 + 296);
    v138 = *(v0 + 304);
    sub_1000035D0((v0 + 272), v139);
    (*(*(*(v138 + 8) + 8) + 32))(v139);
    sub_100739ED0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v140 = dispatch thunk of CustomStringConvertible.description.getter();
    v142 = v141;
    (*(v134 + 8))(v133, v135);
    sub_100007BAC((v0 + 272));
    v143 = sub_1000136BC(v140, v142, &v184);

    *(v136 + 14) = v143;
    _os_log_impl(&_mh_execute_header, v131, v132, "Skipping connection keys fetching: %{private,mask.hash}s.", v136, 0x16u);
    sub_100007BAC(v137);
  }

  else
  {

    sub_100007BAC((v0 + 272));
  }

  v118 = *(v0 + 456);
  v119 = *(v0 + 464);
LABEL_100:
  *(v0 + 1168) = xmmword_10138BBF0;
  v144 = *(v0 + 696);
  v145 = sub_1000035D0((v0 + 432), v118);
  v147 = v144[3];
  v146 = v144[4];
  sub_1000035D0(v144, v147);
  (*(*(*(v146 + 8) + 8) + 32))(v147);
  sub_1005F9784();
  v148 = swift_task_alloc();
  *(v0 + 1184) = v148;
  *v148 = v0;
  v148[1] = sub_10073454C;
  v149 = *(v0 + 864);
  v150 = *(v0 + 856);

  return sub_1006858D0(v150, v149, v145, v118, v119);
}

uint64_t sub_100737CF8()
{
  v29 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 696);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  sub_10001F280(v1, v0 + 312);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1248);
    v6 = *(v0 + 880);
    v7 = *(v0 + 800);
    v8 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v10 = *(v0 + 336);
    v9 = *(v0 + 344);
    sub_1000035D0((v0 + 312), v10);
    (*(*(*(v9 + 8) + 8) + 32))(v10);
    sub_100739ED0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v5(v6, v7);
    sub_100007BAC((v0 + 312));
    v14 = sub_1000136BC(v11, v13, &v28);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2080;
    swift_getErrorValue();
    v15 = Error.localizedDescription.getter();
    v17 = sub_1000136BC(v15, v16, &v28);

    *(v8 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error getting connectionKeys for beacon: %{private,mask.hash}s %s.", v8, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC((v0 + 312));
  }

  *(v0 + 1168) = xmmword_10138BBF0;
  v18 = *(v0 + 696);
  v19 = *(v0 + 456);
  v20 = *(v0 + 464);
  v21 = sub_1000035D0((v0 + 432), v19);
  v22 = v18[3];
  v23 = v18[4];
  sub_1000035D0(v18, v22);
  (*(*(*(v23 + 8) + 8) + 32))(v22);
  sub_1005F9784();
  v24 = swift_task_alloc();
  *(v0 + 1184) = v24;
  *v24 = v0;
  v24[1] = sub_10073454C;
  v25 = *(v0 + 864);
  v26 = *(v0 + 856);

  return sub_1006858D0(v26, v25, v21, v19, v20);
}

uint64_t sub_1007380B0()
{
  v1 = v0[116];
  sub_100006654(v0[146], v0[147]);
  sub_10073AA30(v1, type metadata accessor for SharedBeaconRecord);
  sub_100007BAC(v0 + 54);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1007382B8(char a1)
{
  v1 = qword_101694940 == -1;
  if (a1)
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    v2 = sub_101073C10(v4);

    if ((v2 & 0x8000000000000000) == 0)
    {
      return v2;
    }

    __break(1u);
  }

  if (!v1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v2 = sub_101073524(v4);

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007383E8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Date();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[10] = v5;
  *v5 = v2;
  v5[1] = sub_100738534;

  return daemon.getter();
}

uint64_t sub_100738534(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 88) = a1;

  v3 = swift_task_alloc();
  *(v2 + 96) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100739ED0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100739ED0(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100738710;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100738710(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_100738B98;
  }

  else
  {

    *(v4 + 112) = a1;
    v5 = sub_100738840;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100738840()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  (*(*(*(v3 + 8) + 8) + 32))(v2);
  v4 = v1[3];
  v5 = v1[4];
  sub_1000035D0(v1, v4);
  (*(v5 + 192))(v4, v5);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_100738968;
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[2];

  return sub_1010CD424(v9, v7, v8);
}

uint64_t sub_100738968()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100738B1C, 0, 0);
}

uint64_t sub_100738B1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100738B98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100738C14(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v2[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169E358, &qword_101404C50);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[13] = v5;
  *v5 = v2;
  v5[1] = sub_100738DDC;

  return daemon.getter();
}

uint64_t sub_100738DDC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 112) = a1;

  v3 = swift_task_alloc();
  *(v2 + 120) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100739ED0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100739ED0(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100738FB8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100738FB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_1007395D4;
  }

  else
  {

    v4 = sub_1007390D4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1007390D4()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  (*(*(*(v3 + 8) + 8) + 32))(v2);
  v4 = v1[3];
  v5 = v1[4];
  sub_1000035D0(v1, v4);
  (*(v5 + 192))(v4, v5);
  v6 = v1[3];
  v7 = v1[4];
  sub_1000035D0(v1, v6);
  *(v0 + 152) = (*(v7 + 112))(v6, v7) & 1;
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = sub_100739230;
  v9 = *(v0 + 96);
  v10 = *(v0 + 48);

  return sub_1010D4938(v10, v9);
}

uint64_t sub_100739230()
{
  v1 = *(*v0 + 128);

  return _swift_task_switch(sub_100739340, v1, 0);
}

uint64_t sub_100739340()
{
  v1 = *(v0 + 40);
  sub_10073A9C0(*(v0 + 48), v1);
  v2 = type metadata accessor for KeySyncSnapshot(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 32);
    sub_10000B3A8(*(v0 + 40), &qword_10169E358, &qword_101404C50);
    v4 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  }

  else
  {
    v5 = *(v0 + 40);
    sub_10112FB78(*(v0 + 152), *(v0 + 32));
    sub_10073AA30(v5, type metadata accessor for KeySyncSnapshot);
  }

  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 56);
  v11 = *(v0 + 64);
  v12 = *(v0 + 48);
  v13 = *(v0 + 32);
  sub_1010D4F70(v9, v13, *(v0 + 16));
  sub_10000B3A8(v13, &unk_1016AF8A0, &unk_10139D7C0);
  sub_10000B3A8(v12, &qword_10169E358, &qword_101404C50);
  (*(v11 + 8))(v9, v10);
  (*(v7 + 8))(v6, v8);

  return _swift_task_switch(sub_100739528, 0, 0);
}

uint64_t sub_100739528()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007395D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100739680(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v77 = type metadata accessor for Date();
  v10 = *(v77 - 8);
  v11 = __chkstk_darwin(v77);
  v13 = &v61[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v61[-v14];
  v73 = type metadata accessor for UUID();
  v75 = *(v73 - 1);
  v16 = __chkstk_darwin(v73);
  v67 = &v61[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v74 = &v61[-v19];
  v20 = __chkstk_darwin(v18);
  v22 = &v61[-v21];
  __chkstk_darwin(v20);
  v24 = &v61[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = v25;
  (*(v25 + 16))(v24, a1, a4);
  (*(*(*(a5 + 8) + 8) + 32))(a4);
  v26 = *(a5 + 192);
  v72 = a4;
  v26(a4, a5);
  v27 = *a3;
  v28 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v29 = sub_10088756C(v22, v15, a3 + *(v28 + 36), 0);
  if (((v29 | v27) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v68 = v24;
  v65 = v29;
  v66 = v27;
  v30 = v29 - v27;
  DateInterval.start.getter();
  a3 = sub_10088756C(v22, v15, v13, 0);
  v31 = *(v10 + 8);
  v10 += 8;
  v32 = v77;
  v31(v13, v77);
  DateInterval.end.getter();
  v76 = v22;
  a2 = sub_10088756C(v22, v15, v13, 0);
  v69 = v31;
  result = (v31)(v13, v32);
  v27 = v30;
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  v70 = v15;
  if ((v30 & 0x8000000000000000) == 0 && v30 >= a3)
  {
    if (qword_101694A18 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v35 = type metadata accessor for Logger();
      sub_1000076D4(v35, qword_10177B538);
      v36 = v75;
      v37 = v67;
      v38 = v73;
      (*(v75 + 16))(v67, v76, v73);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v64 = v10;
        v42 = v41;
        v63 = swift_slowAlloc();
        v78 = v63;
        *v42 = 141558787;
        *(v42 + 4) = 1752392040;
        *(v42 + 12) = 2081;
        sub_100739ED0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v62 = v40;
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v44;
        (*(v36 + 8))(v37, v38);
        v46 = sub_1000136BC(v43, v45, &v78);

        *(v42 + 14) = v46;
        *(v42 + 22) = 2048;
        *(v42 + 24) = a3;
        *(v42 + 32) = 2048;
        *(v42 + 34) = v27;
        _os_log_impl(&_mh_execute_header, v39, v62, "        Buckets clamped for beacon %{private,mask.hash}s,starting secondary index %llu <= factor %lld -- clamping to 1.", v42, 0x2Au);
        sub_100007BAC(v63);

        v10 = v64;
      }

      else
      {

        (*(v36 + 8))(v37, v38);
      }

      a3 = v38;
      v22 = v74;
      a1 = 1;
      p_weak_ivar_lyt = (&BeaconKeyManager + 56);
      if (v65 != v66)
      {
LABEL_14:
        if (a2 < v27)
        {
          if (a1 <= a2)
          {
            v47 = a2;
          }

          else
          {
            v47 = a1;
          }

          goto LABEL_23;
        }
      }

LABEL_18:
      if ((a2 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v47 = a2 - v27;
      if (__OFSUB__(a2, v27))
      {
        goto LABEL_33;
      }

      if ((v47 & 0x8000000000000000) == 0)
      {
        if (a1 > v47)
        {
          v47 = a1;
        }

LABEL_23:
        v74 = v47;
        a2 = v76;
        if (p_weak_ivar_lyt[323] != -1)
        {
LABEL_30:
          swift_once();
        }

        v48 = type metadata accessor for Logger();
        sub_1000076D4(v48, qword_10177B538);
        v49 = v75;
        (*(v75 + 16))(v22, a2, a3);
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = a3;
          a3 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v64 = v10;
          v73 = v53;
          v78 = v53;
          *a3 = 141559043;
          *(a3 + 4) = 1752392040;
          *(a3 + 12) = 2081;
          sub_100739ED0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v10 = v52;
          v54 = dispatch thunk of CustomStringConvertible.description.getter();
          v55 = v22;
          v57 = v56;
          a2 = *(v49 + 8);
          (a2)(v55, v10);
          v58 = sub_1000136BC(v54, v57, &v78);

          *(a3 + 14) = v58;
          *(a3 + 22) = 2048;
          *(a3 + 24) = a1;
          *(a3 + 32) = 2048;
          v59 = v74;
          *(a3 + 34) = v74;
          *(a3 + 42) = 2048;
          *(a3 + 44) = v27;
          _os_log_impl(&_mh_execute_header, v50, v51, "        Buckets for beacon %{private,mask.hash}s,secondary index %llu - %llu (factor %lld).", a3, 0x34u);
          sub_100007BAC(v73);

          v69(v70, v77);
          (a2)(v76, v10);
        }

        else
        {

          v60 = *(v49 + 8);
          v60(v22, a3);
          v69(v70, v77);
          v60(a2, a3);
          v59 = v74;
        }

        if (v59 >= a1)
        {
          (*(v71 + 8))(v68, v72);
          return a1;
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      swift_once();
    }
  }

  v22 = v74;
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  a1 = a3 - v30;
  if (__OFSUB__(a3, v30))
  {
    __break(1u);
  }

  else if ((a1 & 0x8000000000000000) == 0)
  {
    a3 = v73;
    if (v30 < 1)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_100739ED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s18ConnectionKeyGroupVMa(uint64_t a1)
{
  result = qword_1016A7D38;
  if (!qword_1016A7D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100739F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeBasedKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100739FC8()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10073ACF0;

  return sub_1012D7B38(v0 + v3);
}

uint64_t sub_10073A094()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001BBA4C;

  return sub_1012D7B38(v0 + v3);
}

unint64_t sub_10073A160(uint64_t a1, void (*a2)(char *, uint64_t), unint64_t *a3, char *a4, uint64_t a5)
{
  v73 = a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v79 = v9;
  v80 = v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v66 - v14;
  v75 = type metadata accessor for UUID();
  v16 = *(v75 - 8);
  v17 = __chkstk_darwin(v75);
  v68 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v74 = &v66 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v66 - v22;
  v24 = *(a4 - 1);
  __chkstk_darwin(v21);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v26, a1, a4);
  (*(*(*(a5 + 8) + 8) + 32))(a4);
  v27 = *(a5 + 192);
  v71 = v26;
  v72 = a4;
  v27(a4, a5);
  v28 = *a3;
  v29 = *(sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) + 36);
  if (v28)
  {
    v30 = ~(v28 / 0x60);
  }

  else
  {
    v30 = 0;
  }

  v78 = v15;
  v31 = sub_10088756C(v23, v15, a3 + v29, 1uLL);
  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v32 = v24;
  v76 = v16;
  v33 = v31 + v30;
  DateInterval.start.getter();
  v34 = v78;
  v35 = sub_10088756C(v23, v78, v13, 1uLL);
  v36 = v79;
  v37 = v80 + 8;
  v38 = *(v80 + 8);
  v38(v13, v79);
  DateInterval.end.getter();
  v77 = v23;
  v39 = v34;
  v15 = v35;
  v23 = sub_10088756C(v23, v39, v13, 1uLL);
  v40 = v36;
  v30 = v33;
  v80 = v37;
  v73 = v38;
  result = (v38)(v13, v40);
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  v70 = v32;
  if ((v33 & 0x8000000000000000) == 0 && v33 >= v35)
  {
    if (qword_101694A18 != -1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v43 = type metadata accessor for Logger();
      sub_1000076D4(v43, qword_10177B538);
      v44 = v76;
      v45 = v68;
      v46 = v75;
      (*(v76 + 16))(v68, v77, v75);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v69 = v30;
        v50 = v49;
        v67 = swift_slowAlloc();
        v81 = v67;
        *v50 = 141558787;
        *(v50 + 4) = 1752392040;
        *(v50 + 12) = 2081;
        sub_100739ED0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v51 = dispatch thunk of CustomStringConvertible.description.getter();
        v53 = v52;
        (*(v44 + 8))(v45, v46);
        v54 = sub_1000136BC(v51, v53, &v81);

        *(v50 + 14) = v54;
        *(v50 + 22) = 2048;
        *(v50 + 24) = v15;
        *(v50 + 32) = 2048;
        *(v50 + 34) = v69;
        _os_log_impl(&_mh_execute_header, v47, v48, "        Buckets clamped for beacon %{private,mask.hash}s,starting secondary index %llu <= factor %lld -- clamping to 1.", v50, 0x2Au);
        sub_100007BAC(v67);

        v30 = v69;
      }

      else
      {

        (*(v44 + 8))(v45, v46);
      }

      a4 = v74;
      v24 = 1;
      v16 = v76;
      p_weak_ivar_lyt = (&BeaconKeyManager + 56);
      if (v30)
      {
LABEL_17:
        if (v23 < v30)
        {
          if (v24 <= v23)
          {
            v55 = v23;
          }

          else
          {
            v55 = v24;
          }

          goto LABEL_26;
        }
      }

LABEL_21:
      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      v55 = v23 - v30;
      if (__OFSUB__(v23, v30))
      {
        goto LABEL_36;
      }

      if ((v55 & 0x8000000000000000) == 0)
      {
        if (v24 > v55)
        {
          v55 = v24;
        }

LABEL_26:
        v76 = v55;
        a1 = v75;
        v23 = v77;
        if (p_weak_ivar_lyt[323] != -1)
        {
LABEL_33:
          swift_once();
        }

        v56 = type metadata accessor for Logger();
        sub_1000076D4(v56, qword_10177B538);
        (*(v16 + 16))(a4, v23, a1);
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v69 = v30;
          v30 = v59;
          v23 = swift_slowAlloc();
          v81 = v23;
          *v30 = 141559043;
          *(v30 + 4) = 1752392040;
          *(v30 + 12) = 2081;
          sub_100739ED0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v60 = dispatch thunk of CustomStringConvertible.description.getter();
          v61 = a4;
          v63 = v62;
          v15 = *(v16 + 8);
          (v15)(v61, a1);
          v64 = sub_1000136BC(v60, v63, &v81);

          *(v30 + 14) = v64;
          *(v30 + 22) = 2048;
          *(v30 + 24) = v24;
          *(v30 + 32) = 2048;
          v65 = v76;
          *(v30 + 34) = v76;
          *(v30 + 42) = 2048;
          *(v30 + 44) = v69;
          _os_log_impl(&_mh_execute_header, v57, v58, "        Buckets for beacon %{private,mask.hash}s,secondary index %llu - %llu (factor %lld).", v30, 0x34u);
          sub_100007BAC(v23);

          v73(v78, v79);
          (v15)(v77, a1);
        }

        else
        {

          v30 = *(v16 + 8);
          (v30)(a4, a1);
          v73(v78, v79);
          (v30)(v23, a1);
          v65 = v76;
        }

        if (v65 >= v24)
        {
          (*(v70 + 8))(v71, v72);
          return v24;
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
    }
  }

  a4 = v74;
  if ((v35 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

  v24 = v35 - v33;
  if (__OFSUB__(v15, v33))
  {
    __break(1u);
  }

  else if ((v24 & 0x8000000000000000) == 0)
  {
    v16 = v76;
    if (v33 < 1)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_10073A9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169E358, &qword_101404C50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10073AA30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10073AAC8(uint64_t a1)
{
  result = sub_10073AB64();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DateInterval();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10073AB64()
{
  result = qword_1016A7D48;
  if (!qword_1016A7D48)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1016A7D48);
  }

  return result;
}

uint64_t sub_10073ABC8(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_10073ABE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10073AC2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_10073AC70(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_10073AC9C()
{
  result = qword_1016A7D80;
  if (!qword_1016A7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A7D80);
  }

  return result;
}

uint64_t sub_10073AD2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for BeaconObservation(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v4 + 16);
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 16))(v12, a1, v14);
  v15 = *(v9 + 28);
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 16))(&v12[v15], a2, v16);
  v12[*(v9 + 32)] = a3;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_101385D80;
  sub_10073B64C(v12, v18 + v17);
  type metadata accessor for Transaction();
  v21 = v13;
  v22 = v18;
  v23 = 0;
  v24 = 0;
  static Transaction.named<A>(_:with:)();

  return sub_10073B5F0(v12);
}

uint64_t sub_10073AF28(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v4 = __chkstk_darwin(v3 - 8);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v38 - v6;
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = __chkstk_darwin(v8 - 8);
  v44 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v43 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v42 = &v38 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v38 - v20;
  __chkstk_darwin(v19);
  v23 = &v38 - v22;
  v40 = a1;
  v24 = sub_100035730(a1, sub_10073B524, 0);
  sub_1012BB138(v24, v7);

  v25 = type metadata accessor for BeaconObservation(0);
  v39 = *(*(v25 - 8) + 48);
  if (v39(v7, 1, v25) == 1)
  {
    sub_10000B3A8(v7, &qword_1016A42E0, &qword_1013B0010);
    v26 = *(v14 + 56);
    v26(v12, 1, 1, v13);
    static Date.distantPast.getter();
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_10000B3A8(v12, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    (*(v14 + 16))(v12, &v7[*(v25 + 20)], v13);
    sub_10073B5F0(v7);
    v26 = *(v14 + 56);
    v26(v12, 0, 1, v13);
    (*(v14 + 32))(v23, v12, v13);
  }

  Date.advanced(by:)();
  sub_10031A74C();
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v27 = *(v14 + 8);
    v27(v21, v13);
    v27(v23, v13);
    v28 = 0;
  }

  else
  {
    v29 = sub_100035730(v40, sub_10073B55C, 0);
    v30 = v41;
    sub_1012BB138(v29, v41);

    if (v39(v30, 1, v25) == 1)
    {
      sub_10000B3A8(v30, &qword_1016A42E0, &qword_1013B0010);
      v31 = v44;
      v26(v44, 1, 1, v13);
      v32 = v42;
      static Date.distantPast.getter();
      if ((*(v14 + 48))(v31, 1, v13) != 1)
      {
        sub_10000B3A8(v31, &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      v33 = v44;
      (*(v14 + 16))(v44, v30 + *(v25 + 20), v13);
      sub_10073B5F0(v30);
      v26(v33, 0, 1, v13);
      v32 = v42;
      (*(v14 + 32))(v42, v33, v13);
    }

    v34 = v43;
    Date.advanced(by:)();
    v35 = dispatch thunk of static Comparable.< infix(_:_:)();
    v36 = *(v14 + 8);
    v36(v34, v13);
    v36(v32, v13);
    v36(v21, v13);
    v36(v23, v13);
    v28 = v35 ^ 1;
  }

  return v28 & 1;
}