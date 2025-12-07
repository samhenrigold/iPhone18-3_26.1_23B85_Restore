uint64_t sub_1000D8DD8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D8E10()
{

  return swift_deallocObject();
}

uint64_t sub_1000D8E70()
{

  return swift_deallocObject();
}

uint64_t sub_1000D8EA8()
{

  return swift_deallocObject();
}

uint64_t sub_1000D8F10(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1000D9058(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000D9194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

  else
  {
    v12 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1000D92E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000D9428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakSummary(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000D9494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakSummary(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000D9504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100AD6FB8, &qword_10094AD40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for Date();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000D9600(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000F24EC(&qword_100AD6FB8, &qword_10094AD40);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for Date();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 36);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000D9708(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000D97C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000D98AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000D99B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000D9AC0()
{
  v1 = sub_1000F24EC(&qword_100AECF48, &qword_100962688);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000D9B64()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D9BB8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D9BF0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D9C30()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D9C70()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D9CA8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D9CE8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000D9D00()
{

  if (*(v0 + 48))
  {
  }

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D9D64()
{

  return swift_deallocObject();
}

uint64_t sub_1000D9DAC()
{
  v1 = sub_1000F24EC(&qword_100AED348, &unk_100962C58);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000D9E54(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000D9F00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000D9FA4()
{

  return swift_deallocObject();
}

uint64_t sub_1000D9FE0()
{

  return swift_deallocObject();
}

uint64_t sub_1000DA018()
{

  return swift_deallocObject();
}

uint64_t sub_1000DA060()
{

  return swift_deallocObject();
}

uint64_t sub_1000DA0A4()
{
  v1 = sub_1000F24EC(&qword_100AED4C8, &qword_100962D18);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000DA138()
{
  v1 = *(v0 + 24);
  if (v1 != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000DA424()
{

  return swift_deallocObject();
}

uint64_t sub_1000DA45C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000DA530()
{

  return swift_deallocObject();
}

uint64_t sub_1000DA580()
{

  return swift_deallocObject();
}

uint64_t sub_1000DA5C4()
{

  return swift_deallocObject();
}

uint64_t sub_1000DA60C()
{

  return swift_deallocObject();
}

uint64_t sub_1000DA64C()
{

  return swift_deallocObject();
}

uint64_t sub_1000DA6A0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DA6D8()
{

  return swift_deallocObject();
}

uint64_t sub_1000DA784@<X0>(uint64_t *a1@<X8>)
{
  sub_1000F24EC(&unk_100AD57F8, &unk_100963F00);
  result = Tips.Event.donations.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000DA7D4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DA80C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1000DA8D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000DA984()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DA9CC()
{

  return swift_deallocObject();
}

uint64_t sub_1000DAA04()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DAA4C()
{
  v1 = *(type metadata accessor for OpenSensitiveURLAction.Destination(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v3 = type metadata accessor for Date();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1000DAB30()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DAB70()
{

  return swift_deallocObject();
}

uint64_t sub_1000DABB0()
{

  return swift_deallocObject();
}

uint64_t sub_1000DABE8()
{

  return swift_deallocObject();
}

uint64_t sub_1000DAC38()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DAC80()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000DAD58()
{

  return swift_deallocObject();
}

uint64_t sub_1000DADA0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DADD8()
{

  return swift_deallocObject();
}

uint64_t sub_1000DAE28()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DAE60()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DAE98()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DAED8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DAF14()
{
  v1 = *(sub_1000F24EC(&qword_100AD6F70, &unk_100962D80) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = type metadata accessor for MusicAssetMetadata();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1000DB034()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DB09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100AEE5B0, &unk_100964900);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000F24EC(&qword_100AD6FF8, &qword_100946040);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1000F24EC(&qword_100AE26D8, &unk_100964910);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1000DB200(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000F24EC(&qword_100AEE5B0, &unk_100964900);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000F24EC(&qword_100AD6FF8, &qword_100946040);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1000F24EC(&qword_100AE26D8, &unk_100964910);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1000DB370()
{
  v1 = type metadata accessor for PrintEntriesView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = sub_1000F24EC(&qword_100AEE5B0, &unk_100964900);
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = *(v1 + 20);
  sub_1000F24EC(&qword_100AD6FE8, &qword_1009648C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  v7 = *(v1 + 24);
  sub_1000F24EC(&qword_100AE27B0, &qword_100953C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000DB550()
{
  v1 = type metadata accessor for PrintEntriesView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v2;
  v5 = sub_1000F24EC(&qword_100AEE5B0, &unk_100964900);
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = *(v1 + 20);
  sub_1000F24EC(&qword_100AD6FE8, &qword_1009648C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DismissAction();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 24);
  sub_1000F24EC(&qword_100AE27B0, &qword_100953C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v9 - 8) + 8))(v4 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000DB9EC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DBA24()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DBA6C()
{

  return swift_deallocObject();
}

uint64_t sub_1000DBAB4()
{

  return swift_deallocObject();
}

uint64_t sub_1000DBAF8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DBB30()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DBB70()
{

  return swift_deallocObject();
}

uint64_t sub_1000DBBD8()
{

  return swift_deallocObject();
}

uint64_t sub_1000DBC18()
{

  return swift_deallocObject();
}

uint64_t sub_1000DBC58()
{

  return swift_deallocObject();
}

uint64_t sub_1000DBCA0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000DBD74()
{

  return swift_deallocObject();
}

uint64_t sub_1000DBDB4()
{

  return swift_deallocObject();
}

uint64_t sub_1000DBDF8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DBE30()
{

  return swift_deallocObject();
}

uint64_t sub_1000DBE78()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DBFA4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DBFDC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000DC0A0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000DC16C()
{

  return swift_deallocObject();
}

uint64_t sub_1000DC1AC()
{
  v1 = type metadata accessor for VisitAssetMetadata();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000DC29C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CloudKitStackConfiguration();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000DC348(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CloudKitStackConfiguration();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000DC3F0()
{
  v1 = *(sub_1000F24EC(&qword_100AEF2A0, &qword_1009651D8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1000F24EC(&unk_100AEF208, &qword_1009651C8);
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1000DC528()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DC568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100AE0D70, &unk_1009521E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000DC634(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000F24EC(&qword_100AE0D70, &unk_1009521E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000DC714()
{

  return swift_deallocObject();
}

uint64_t sub_1000DC74C()
{

  return swift_deallocObject();
}

uint64_t sub_1000DC7D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DC81C()
{

  return swift_deallocObject();
}

uint64_t sub_1000DC89C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000DC8C8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DC900()
{

  return swift_deallocObject();
}

uint64_t sub_1000DC94C()
{
  if (*v0)
  {
    return 1702125924;
  }

  else
  {
    return 0x6D614E6563616C70;
  }
}

uint64_t sub_1000DC998()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DC9F0()
{

  return swift_deallocObject();
}

uint64_t sub_1000DCA2C()
{

  return swift_deallocObject();
}

uint64_t sub_1000DCA6C()
{

  return swift_deallocObject();
}

uint64_t sub_1000DCB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100AD2080, &qword_10095D300);
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
    v12 = *(a1 + *(a3 + 44));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000DCBD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000F24EC(&qword_100AD2080, &qword_10095D300);
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
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000DCC9C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_1000DCCEC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isStreakReminderEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_1000DCD34()
{

  return swift_deallocObject();
}

uint64_t sub_1000DCD6C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DCDA4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000DCE6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000DCF1C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DCF54()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000DD018()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000DD138@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.managedObjectContext.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000DD190()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DD1D0()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000DD230()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DD26C()
{

  return swift_deallocObject();
}

uint64_t sub_1000DD2AC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DD2E8()
{
  v1 = type metadata accessor for UnsupportedEntryMode();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000DD38C()
{

  return swift_deallocObject();
}

uint64_t sub_1000DD3D4()
{

  return swift_deallocObject();
}

uint64_t sub_1000DD40C()
{

  return swift_deallocObject();
}

uint64_t sub_1000DD444()
{
  v1 = type metadata accessor for UnsupportedEntryMode();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000DD524()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DD55C()
{
  v1 = type metadata accessor for UnsupportedEntryMode();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 26) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000DD620()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DD698()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DD6D0()
{

  return swift_deallocObject();
}

uint64_t sub_1000DD718()
{

  return swift_deallocObject();
}

uint64_t sub_1000DD758()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000DD824()
{

  return swift_deallocObject();
}

uint64_t sub_1000DD874()
{

  return swift_deallocObject();
}

uint64_t sub_1000DD8BC()
{

  return swift_deallocObject();
}

uint64_t sub_1000DD9EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DDA24()
{
  v1 = sub_1000F24EC(&qword_100AEF2B0, &qword_1009651E8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000DDB3C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DDB74()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DDBBC(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AF0B88, &qword_1009674B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000DDC58(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10077153C(v1);
}

uint64_t sub_1000DDC88()
{

  return swift_deallocObject();
}

uint64_t sub_1000DDE00()
{

  return swift_deallocObject();
}

uint64_t sub_1000DDE40()
{

  return swift_deallocObject();
}

uint64_t sub_1000DDEF4()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;
  swift_unknownObjectRelease();

  v6 = *(v2 + 8);
  v6(v0 + v4, v1);
  v6(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1000DDFE8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DE030()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DE070()
{

  return swift_deallocObject();
}

uint64_t sub_1000DE2D8()
{

  return swift_deallocObject();
}

uint64_t sub_1000DE320()
{

  return swift_deallocObject();
}

uint64_t sub_1000DE368()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DE3A8()
{
  v1 = sub_1000F24EC(&qword_100ADE618, &unk_100967D20);
  v2 = *(v1 - 8);
  v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v13 = v1;
  v3 = *(v2 + 64);
  v4 = sub_1000F24EC(&qword_100AF1550, &qword_100943C60);
  v5 = *(v4 - 8);
  v6 = (v12 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = sub_1000F24EC(&qword_100ADE620, &unk_10094F380);
  v9 = *(v8 - 8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  (*(v2 + 8))(v0 + v12, v13);
  (*(v5 + 8))(v0 + v6, v4);
  (*(v9 + 8))(v0 + v10, v8);

  return swift_deallocObject();
}

uint64_t sub_1000DE5A4()
{
  v1 = sub_1000F24EC(&qword_100AF1548, &unk_100967D10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v2 + 64) + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v6, v1);

  return swift_deallocObject();
}

uint64_t sub_1000DE678()
{

  return swift_deallocObject();
}

uint64_t sub_1000DE758()
{

  return swift_deallocObject();
}

uint64_t sub_1000DE7C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DE818()
{

  return swift_deallocObject();
}

uint64_t sub_1000DE858()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DE898()
{

  return swift_deallocObject();
}

uint64_t sub_1000DE8E0()
{

  return swift_deallocObject();
}

uint64_t sub_1000DE928()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DE968()
{

  return swift_deallocObject();
}

uint64_t sub_1000DE9B0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = sub_1000F24EC(&qword_100AD4E78, &unk_1009439A0);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000DEB04()
{

  return swift_deallocObject();
}

uint64_t sub_1000DEB3C()
{

  return swift_deallocObject();
}

uint64_t sub_1000DEB84(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
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

uint64_t sub_1000DEC9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000DEDE8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DEE20()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DEE68()
{

  return swift_deallocObject();
}

uint64_t sub_1000DEEB8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DEEF8()
{

  return swift_deallocObject();
}

uint64_t sub_1000DEF44()
{

  return swift_deallocObject();
}

uint64_t sub_1000DEF7C()
{

  return swift_deallocObject();
}

uint64_t sub_1000DEFC4()
{

  return swift_deallocObject();
}

uint64_t sub_1000DF00C()
{

  return swift_deallocObject();
}

uint64_t sub_1000DF044()
{

  return swift_deallocObject();
}

uint64_t sub_1000DF07C()
{

  return swift_deallocObject();
}

uint64_t sub_1000DF0C4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DF104()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DF164()
{

  return swift_deallocObject();
}

uint64_t sub_1000DF1A8()
{

  return swift_deallocObject();
}

uint64_t sub_1000DF244()
{

  return swift_deallocObject();
}

uint64_t sub_1000DF290()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DF2E8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DF320()
{

  return swift_deallocObject();
}

uint64_t sub_1000DF360()
{

  return swift_deallocObject();
}

uint64_t sub_1000DF398()
{

  return swift_deallocObject();
}

uint64_t sub_1000DF3D0()
{

  return swift_deallocObject();
}

uint64_t sub_1000DF430()
{

  return swift_deallocObject();
}

uint64_t sub_1000DF478()
{

  return swift_deallocObject();
}

uint64_t sub_1000DF4B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD0EB8, &unk_10093B5D0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000DF530(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD0EB8, &unk_10093B5D0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000DF5AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000DF618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000DF688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100AD0EB8, &unk_10093B5D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000F24EC(&qword_100AD0EC0, &qword_1009695C0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000DF790(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000F24EC(&qword_100AD0EB8, &unk_10093B5D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000F24EC(&qword_100AD0EC0, &qword_1009695C0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000DF8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EventData();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for TimedData();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000DF994(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for EventData();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for TimedData();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000DFA90()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DFAC8()
{

  return swift_deallocObject();
}

uint64_t sub_1000DFB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for InsightsBentoLayout(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));

  (*(*(v5 - 8) + 8))(v7 + v6[11], v5);
  v8 = v7 + v6[12];
  sub_1004F085C(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72), *(v8 + 80), *(v8 + 88), *(v8 + 96), *(v8 + 104));

  return swift_deallocObject();
}

uint64_t sub_1000DFC8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AF2BB0, &qword_10096A3A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DFCFC(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AF2BB0, &qword_10096A3A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DFD80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADB5E0, &qword_10094B3A8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000DFDF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADB5E0, &qword_10094B3A8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000DFE78()
{
  if (*v0)
  {
    return 25705;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1000DFEA4()
{
  if (*v0)
  {
    return 0x6E617073656D6974;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t sub_1000DFEEC()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1000DFFCC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000E0004()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000E005C()
{

  return swift_deallocObject();
}

uint64_t sub_1000E0094()
{

  return swift_deallocObject();
}

uint64_t sub_1000E00D4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000E011C()
{

  return swift_deallocObject();
}

uint64_t sub_1000E0290@<X0>(uint64_t a1@<X8>)
{
  result = sub_1002392DC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_1000E033C()
{

  return swift_deallocObject();
}

uint64_t sub_1000E0374()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000E03AC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000E03F0()
{

  return swift_deallocObject();
}

uint64_t sub_1000E04B4()
{

  return swift_deallocObject();
}

uint64_t sub_1000E04FC()
{

  return swift_deallocObject();
}

uint64_t sub_1000E0548()
{

  return swift_deallocObject();
}

uint64_t sub_1000E0590()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000E05D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100812158();
  *a1 = result & 1;
  return result;
}

void sub_1000E0604(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100812744(v1);
}

uint64_t sub_1000E06F0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000E0738()
{

  return swift_deallocObject();
}

uint64_t sub_1000E0778()
{

  return swift_deallocObject();
}

uint64_t sub_1000E07C8()
{

  return swift_deallocObject();
}

uint64_t sub_1000E0800()
{

  return swift_deallocObject();
}

id sub_1000E0848@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 status];
  *a2 = result;
  return result;
}

id sub_1000E087C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timeControlStatus];
  *a2 = result;
  return result;
}

uint64_t sub_1000E08B0()
{

  return swift_deallocObject();
}

uint64_t sub_1000E08F0()
{

  return swift_deallocObject();
}

uint64_t sub_1000E0928()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000E0A84()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000E0ABC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000E0B54()
{
  v1 = type metadata accessor for VisitAssetMetadata();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000E0C7C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000E0CCC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000E0D1C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000E0D54()
{
  v1 = sub_1000F24EC(&qword_100AF4358, &unk_10096D408);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1000F24EC(&qword_100AF4350, &qword_10096D400);
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v3 + v8) & ~v3;
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  (*(v7 + 8))(v0 + v8, v6);
  v10(v0 + v9, v1);

  return swift_deallocObject();
}

uint64_t sub_1000E0EE4()
{
  v1 = sub_1000F24EC(&qword_100ADE610, &unk_10094F370);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000E0F78()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000E104C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000E109C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000E10FC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000E11FC()
{

  return swift_deallocObject();
}

uint64_t sub_1000E123C()
{

  return swift_deallocObject();
}

uint64_t sub_1000E1274()
{
  v15 = sub_1000F24EC(&qword_100AF4498, &unk_10096DA20);
  v1 = *(v15 - 8);
  v13 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v2 = *(v1 + 64);
  v3 = sub_1000F24EC(&qword_100AF4490, &qword_10096DA18);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v14 = (v13 + v2 + v5) & ~v5;
  v6 = *(v4 + 64);
  v7 = (v6 + v5 + v14) & ~v5;
  v8 = sub_1000F24EC(&qword_100AF4488, &qword_10096DA10);
  v9 = *(v8 - 8);
  v10 = (v7 + v6 + *(v9 + 80)) & ~*(v9 + 80);
  (*(v1 + 8))(v0 + v13, v15);
  v11 = *(v4 + 8);
  v11(v0 + v14, v3);
  v11(v0 + v7, v3);
  (*(v9 + 8))(v0 + v10, v8);

  return swift_deallocObject();
}

uint64_t sub_1000E14B0()
{

  return swift_deallocObject();
}

uint64_t sub_1000E1510()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000E1548()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000E1588()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000E15E4()
{

  return swift_deallocObject();
}

uint64_t sub_1000E1634(unint64_t *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for DynamicTypeSize();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for SidebarBrickLayoutMetrics(0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1000E1758(void *result, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v9 = type metadata accessor for DynamicTypeSize();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(v10 + 56);
      v13 = v6 + *(a4 + 20);

      return v12(v13, a2, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for SidebarBrickLayoutMetrics(0);
      v15 = *(*(v14 - 8) + 56);
      v16 = v6 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1000E18B0(char *a1, uint64_t a2, int *a3, __n128 a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  v9 = type metadata accessor for DynamicTypeSize();
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_9:
    v14 = *(v11 + 48);

    return v14(&a1[v12], a2, v10);
  }

  v13 = type metadata accessor for SidebarBrickLayoutMetrics(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_1000F24EC(&qword_100AF46C0, &qword_10096DF18);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[7]];

  return v16(v17, a2, v15);
}

char *sub_1000E1A28(char *result, uint64_t a2, int a3, int *a4, __n128 a5)
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v9 = type metadata accessor for DynamicTypeSize();
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a4[5];
LABEL_7:
    v14 = *(v11 + 56);

    return v14(&v6[v12], a2, a2, v10);
  }

  v13 = type metadata accessor for SidebarBrickLayoutMetrics(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a4[6];
    goto LABEL_7;
  }

  v15 = sub_1000F24EC(&qword_100AF46C0, &qword_10096DF18);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v6[a4[7]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1000E1BA0()
{
  sub_1000F2A18(&qword_100AF4608, &qword_10096DD68);
  sub_1000F2A18(&qword_100AF4600, &qword_10096DD60);
  sub_1000F2A18(&qword_100AF3268, &qword_10096AB58);
  sub_100850A68();
  sub_100851000();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000E1C6C(__n128 a1)
{
  v2 = type metadata accessor for SidebarBrickLayoutMetrics(0);
  v3 = v2 - 8;
  v4 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));
  v5 = *(v2 + 32);
  v6 = sub_1000F24EC(&qword_100AD2080, &qword_10095D300);
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + *(v3 + 48), v6);

  return swift_deallocObject();
}

void sub_1000E1E30(uint64_t a1, uint64_t *a2)
{
  sub_10054457C();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

uint64_t sub_1000E1EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Subview();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
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

  else
  {
    v12 = sub_1000F24EC(&qword_100ADD768, &qword_10094DD08);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 48);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1000E2020(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Subview();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    v11 = sub_1000F24EC(&qword_100ADD768, &qword_10094DD08);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000E2188()
{
  sub_1000F2A18(&qword_100AF4998, &qword_10096E3A8);
  sub_100855BE4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000E21F8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000E2230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000E22A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000E2324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 48));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000E23F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 48)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000E24E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000F24EC(&qword_100AF3270, &unk_10096FAD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for InsightsSetScheduleAction(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_1000F24EC(&qword_100AD3A60, &unk_10096EB70);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[10];
    goto LABEL_11;
  }

  v15 = sub_1000F24EC(&qword_100AF46C0, &qword_10096DF18);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[11];
    goto LABEL_11;
  }

  v16 = sub_1000F24EC(&qword_100AE26D8, &unk_100964910);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[14];
    goto LABEL_11;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v18 = *(a1 + a3[15]);
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  else
  {
    v19 = sub_1000F24EC(&qword_100AD7DC8, &qword_100946C30);
    if (*(*(v19 - 8) + 84) == a2)
    {
      v8 = v19;
      v12 = *(v19 - 8);
      v13 = a3[16];
      goto LABEL_11;
    }

    v20 = type metadata accessor for InsightsTipViewModel(0);
    v21 = *(*(v20 - 8) + 48);
    v22 = a1 + a3[18];

    return v21(v22, a2, v20);
  }
}

uint64_t sub_1000E27B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000F24EC(&qword_100AF3270, &unk_10096FAD0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for InsightsSetScheduleAction(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_1000F24EC(&qword_100AD3A60, &unk_10096EB70);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[10];
    goto LABEL_11;
  }

  v17 = sub_1000F24EC(&qword_100AF46C0, &qword_10096DF18);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[11];
    goto LABEL_11;
  }

  result = sub_1000F24EC(&qword_100AE26D8, &unk_100964910);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[14];
    goto LABEL_11;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[15]) = (a2 - 1);
    return result;
  }

  v19 = sub_1000F24EC(&qword_100AD7DC8, &qword_100946C30);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[16];
    goto LABEL_11;
  }

  v20 = type metadata accessor for InsightsTipViewModel(0);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[18];

  return v21(v22, a2, a2, v20);
}

void *sub_1000E2AB8@<X0>(_BYTE *a1@<X8>)
{
  sub_10086BFB4();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000E2BB4()
{
  v1 = *(type metadata accessor for InsightsSetScheduleAction(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  sub_1000F24EC(&qword_100AE27A0, &qword_100953C58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for OpenURLAction();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000E2CBC(__n128 a1)
{
  v2 = type metadata accessor for InsightsTipViewModel(0);
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  swift_unknownObjectRelease();
  v4 = v1 + v3;
  sub_1000F24EC(&qword_100AE27A0, &qword_100953C58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for OpenURLAction();
    (*(*(v5 - 8) + 8))(v1 + v3, v5);
  }

  else
  {
  }

  v6 = v2[6];
  sub_1000F24EC(&qword_100AE27B0, &qword_100953C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
  }

  v8 = (v4 + v2[9]);
  if (v8[3])
  {
    sub_10000BA7C(v8);
  }

  v9 = (v4 + v2[10]);
  if (v9[3])
  {
    sub_10000BA7C(v9);
  }

  return swift_deallocObject();
}

uint64_t sub_1000E2E98()
{
  sub_1000F2A18(&qword_100AF5200, &qword_10096EF58);
  sub_10086C31C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000E2F6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InsightsSocialMediaTransfer(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  type metadata accessor for DataRepresentation();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleTransferRepresentation();

  return swift_getWitnessTable();
}

uint64_t sub_1000E3028()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000E3068()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000E30A0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000E310C()
{

  return swift_deallocObject();
}

uint64_t sub_1000E3144()
{

  return swift_deallocObject();
}

uint64_t sub_1000E3198(unsigned __int8 *a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_1000F24EC(&qword_100AF3270, &unk_10096FAD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = sub_1000F24EC(&qword_100AF46C0, &qword_10096DF18);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v13 = sub_1000F24EC(&qword_100AD3A60, &unk_10096EB70);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[12];
    goto LABEL_11;
  }

  v15 = sub_1000F24EC(&qword_100AD7DC8, &qword_100946C30);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[14]];

  return v16(v17, a2, v15);
}

_BYTE *sub_1000E3374(_BYTE *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
    return result;
  }

  v8 = sub_1000F24EC(&qword_100AF3270, &unk_10096FAD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1000F24EC(&qword_100AF46C0, &qword_10096DF18);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v13 = sub_1000F24EC(&qword_100AD3A60, &unk_10096EB70);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[12];
    goto LABEL_9;
  }

  v15 = sub_1000F24EC(&qword_100AD7DC8, &qword_100946C30);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[14]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1000E3554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StreakSummary(0);
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

uint64_t sub_1000E3610(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for StreakSummary(0);
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

void *sub_1000E36D0@<X0>(_BYTE *a1@<X8>)
{
  sub_100520804();
  result = ContainerValues.subscript.getter();
  *a1 = v3;
  return result;
}

void sub_1000E379C()
{
  sub_100544528();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

void sub_1000E3850(uint64_t a1, uint64_t *a2)
{
  sub_1002825F0();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

uint64_t sub_1000E38CC()
{
  sub_1000F2A18(&qword_100AF5D70, &qword_10096FBD8);
  sub_100884C80();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000E3930()
{
  sub_1000F2A18(&qword_100AF5ED8, &qword_10096FF18);
  sub_1000F2A18(&qword_100ADDAD0, &qword_10094E140);
  sub_1000F2A18(&qword_100AF5EE8, &qword_10096FF28);
  sub_10000B58C(&qword_100AF5EF0, &qword_100AF5EE8, &qword_10096FF28, &protocol conformance descriptor for VStack<A>);
  swift_getOpaqueTypeConformance2();
  sub_1002F4F18();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000E3A3C()
{

  return swift_deallocObject();
}

void sub_1000E3A94(uint64_t a1, uint64_t *a2)
{
  sub_10005C484();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

uint64_t sub_1000E3B40()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000E3B88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000E3C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000E3C9C(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AF60E8, &qword_100970760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000E3D84(uint64_t a1, uint64_t *a2)
{
  sub_1004C6AA8();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

void sub_1000E3E18(uint64_t a1, uint64_t *a2)
{
  sub_1004C6AFC();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

uint64_t sub_1000E3EA0()
{
  sub_1000F2A18(&qword_100AF60E8, &qword_100970760);
  sub_10088DD1C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000E3F1C()
{

  return swift_deallocObject();
}

uint64_t sub_1000E3F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutSubview();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000E3FC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutSubview();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000E4040()
{
  if (*v0)
  {
    return 0x656C61636F6CLL;
  }

  else
  {
    return 0x636E657571657266;
  }
}

uint64_t sub_1000E409C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE26D0, &unk_100953BC0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000E4114(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE26D0, &unk_100953BC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000E41D8()
{

  sub_100280C78(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 57));
  sub_1000467F0(*(v0 + 64), *(v0 + 72));
  sub_1000467F0(*(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_1000E4250()
{

  sub_100280C78(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 57));
  sub_1000467F0(*(v0 + 64), *(v0 + 72));
  sub_1000467F0(*(v0 + 80), *(v0 + 88));

  v1 = *(v0 + 136);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000E433C()
{
  v1 = *(sub_1000F24EC(&qword_100AF6658, &qword_1009717A8) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  v3 = sub_1000F24EC(&qword_100AF6640, &qword_100971768);
  v4 = v2 + *(v3 + 44);
  v5 = type metadata accessor for AsyncImagePhase();
  (*(*(v5 - 8) + 8))(v4, v5);

  sub_1000F24EC(&qword_100AF6660, &qword_1009717C0);

  sub_1000467F0(*(v2 + *(v3 + 48)), *(v2 + *(v3 + 48) + 8));

  return swift_deallocObject();
}

uint64_t sub_1000E44BC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000E451C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000E4588(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD7DC8, &qword_100946C30);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000E4600(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD7DC8, &qword_100946C30);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000E46C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000F24EC(&qword_100AD3A60, &unk_10096EB70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000E4784(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000F24EC(&qword_100AD3A60, &unk_10096EB70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000E4834()
{
  v1 = (type metadata accessor for SettingsWeekdayToggles(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_1000F24EC(&qword_100AD9990, &unk_100942950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for Calendar();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000E49AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE3EF0, &unk_100955780);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E4A24(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000F24EC(&qword_100AE3EF0, &unk_100955780);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000E4AB8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000E4B10()
{

  return swift_deallocObject();
}

uint64_t sub_1000E4B48()
{

  return swift_deallocObject();
}

uint64_t sub_1000E4B90()
{

  return swift_deallocObject();
}

uint64_t sub_1000E4BC8()
{

  return swift_deallocObject();
}

uint64_t sub_1000E4C08()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000E4C48()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000E4C80()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000E4CC0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Locale();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = type metadata accessor for Calendar();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = type metadata accessor for TimeZone();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = type metadata accessor for FormatStyleCapitalizationContext();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = type metadata accessor for Date();
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_1000E4ED8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Locale();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for Calendar();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = type metadata accessor for TimeZone();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v18 = type metadata accessor for FormatStyleCapitalizationContext();
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v20 = type metadata accessor for Date();
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[9];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_1000E50FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakSummary(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000E5168()
{

  return swift_deallocObject();
}

uint64_t sub_1000E51A8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000E51E0()
{

  return swift_deallocObject();
}

uint64_t sub_1000E5220()
{

  return swift_deallocObject();
}

uint64_t sub_1000E5260()
{
  sub_1000F2A18(&qword_100AF6EB8, &unk_1009725F8);
  sub_1000F2A18(&qword_100AF6EB0, &qword_1009725F0);
  sub_1000F2A18(&qword_100AF6EC0, &unk_100972608);
  sub_1008AA18C();
  sub_1000777B4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000E5378()
{

  return swift_deallocObject();
}

uint64_t sub_1000E53C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&unk_100AF7060, &unk_100972850);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1000F24EC(&qword_100AD3A60, &unk_10096EB70);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000E5508(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000F24EC(&unk_100AF7060, &unk_100972850);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_1000F24EC(&qword_100AD3A60, &unk_10096EB70);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000E5648()
{

  return swift_deallocObject();
}

uint64_t sub_1000E5688(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD6F90, &qword_10094B030);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000E5700(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD6F90, &qword_10094B030);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000E5780()
{

  return swift_deallocObject();
}

uint64_t sub_1000E57C0()
{

  return swift_deallocObject();
}

uint64_t sub_1000E5800()
{

  return swift_deallocObject();
}

uint64_t sub_1000E5844()
{

  return swift_deallocObject();
}

uint64_t sub_1000E588C()
{

  return swift_deallocObject();
}

uint64_t sub_1000E58CC()
{
  v1 = type metadata accessor for UUID();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000E595C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000E5994()
{
  v2 = *(v0 + 40);
  v8 = *(v0 + 16);
  v1 = v8;
  v9 = *(v0 + 24);
  v7 = v9;
  v10 = v2;
  v3 = (type metadata accessor for InsightsCapsulePicker(0, &v8) - 8);
  v4 = v0 + ((*(*v3 + 80) + 48) & ~*(*v3 + 80));

  v5 = type metadata accessor for Binding();
  (*(*(v1 - 8) + 8))(v4 + *(v5 + 32), v1);
  (*(*(v7 - 8) + 8))(v4 + v3[15]);

  return swift_deallocObject();
}

uint64_t sub_1000E5AF4()
{
  v2 = *(v0 + 40);
  v12 = *(v0 + 16);
  v1 = v12;
  v13 = *(v0 + 24);
  v11 = v13;
  v14 = v2;
  v3 = (type metadata accessor for InsightsCapsulePicker(0, &v12) - 8);
  v4 = (*(*v3 + 80) + 48) & ~*(*v3 + 80);
  v5 = *(v1 - 8);
  v6 = (v4 + *(*v3 + 64) + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0 + v4;

  v8 = type metadata accessor for Binding();
  v9 = *(v5 + 8);
  v9(v7 + *(v8 + 32), v1);
  (*(*(v11 - 8) + 8))(v7 + v3[15]);

  v9(v0 + v6, v1);
  return swift_deallocObject();
}

uint64_t sub_1000E5CB0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityShowButtonShapes.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000E5CE0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityReduceMotion.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000E5D10(__int128 *a1)
{
  v2 = sub_1000F2A18(&qword_100AF7548, &qword_100972E58);
  v3 = a1[1];
  v21 = *a1;
  v22 = v3;
  v4 = type metadata accessor for InsightsCapsulePicker.ButtonStyle(255, &v21);
  v5 = sub_10000B58C(&qword_100AF7550, &qword_100AF7548, &qword_100972E58, &protocol conformance descriptor for Button<A>);
  WitnessTable = swift_getWitnessTable();
  *&v21 = v2;
  *(&v21 + 1) = v4;
  *&v22 = v5;
  *(&v22 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1000F2A18(&qword_100AD2828, &unk_100972E60);
  v7 = type metadata accessor for _ConditionalContent();
  *&v21 = v2;
  *(&v21 + 1) = v4;
  *&v22 = v5;
  *(&v22 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v9 = sub_1008717F4();
  v24 = OpaqueTypeConformance2;
  v25 = v9;
  swift_getWitnessTable();
  v10 = type metadata accessor for ForEachSubviewCollection();
  v11 = type metadata accessor for Subview.ID();
  v12 = swift_getWitnessTable();
  v13 = sub_1008BF78C(qword_100AF7558, &type metadata accessor for Subview.ID, &protocol conformance descriptor for Subview.ID);
  *&v21 = v10;
  *(&v21 + 1) = v11;
  *&v22 = v7;
  *(&v22 + 1) = v12;
  v23 = v13;
  type metadata accessor for ForEach();
  swift_getWitnessTable();
  type metadata accessor for LazyHStack();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v14 = type metadata accessor for ScrollView();
  v15 = swift_getWitnessTable();
  *&v21 = v14;
  *(&v21 + 1) = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v21 = v14;
  *(&v21 + 1) = v15;
  v17 = swift_getOpaqueTypeConformance2();
  *&v21 = OpaqueTypeMetadata2;
  *(&v21 + 1) = v17;
  v18 = swift_getOpaqueTypeMetadata2();
  *&v21 = OpaqueTypeMetadata2;
  *(&v21 + 1) = v17;
  v19 = swift_getOpaqueTypeConformance2();
  *&v21 = v18;
  *(&v21 + 1) = v19;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000E6084(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AF7628, &qword_100973050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000E61A4(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_1000E61B0(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id OSLogForCategory(void *a1)
{
  v1 = a1;
  v2 = &_os_log_default;
  if (qword_100AF7868 == -1)
  {
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1008C1A54();
    if (v1)
    {
LABEL_3:
      v3 = [qword_100AF7860 objectForKey:v1];

      if (v3)
      {
        goto LABEL_15;
      }

      if ([qword_100AF7860 count] > 0xA)
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
LABEL_12:
          v3 = &_os_log_default;
          v7 = &_os_log_default;
          goto LABEL_15;
        }

        v9 = 0;
        v5 = "ERROR | Too many categories defined, use default";
        v6 = &v9;
      }

      else
      {
        v4 = os_log_create("com.apple.journal", [v1 UTF8String]);
        if (v4)
        {
          v3 = v4;
          [qword_100AF7860 setObject:v4 forKey:v1];
          goto LABEL_15;
        }

        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_12;
        }

        *buf = 0;
        v5 = "ERROR | Failed os_log_create, use default";
        v6 = buf;
      }

      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
      goto LABEL_12;
    }
  }

  v3 = &_os_log_default;
LABEL_15:

  return v3;
}

void sub_1000E6330(id a1)
{
  v1 = [[NSMutableDictionary alloc] initWithCapacity:10];
  v2 = qword_100AF7860;
  qword_100AF7860 = v1;
}

void sub_1000E64FC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = RCActivityWaveformProcessor;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

BOOL sub_1000E686C(uint64_t a1, int a2, unsigned int a3, void *a4)
{
  sub_1000E6A30(a1);
  v8 = (vm_page_size + 4 * a2 - 1) & -vm_page_size;
  *(a1 + 32) = v8 >> 2;
  v9 = malloc_type_calloc((3 * a3), 8uLL, 0x80040B8603338uLL);
  *a1 = &v9[8 * a3];
  *(a1 + 8) = &v9[16 * a3];
  *(a1 + 16) = v9;
  if (a3 < 1)
  {
    return 1;
  }

  **(a1 + 16) = sub_1000E784C(v8, 10, a4);
  v10 = **(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = a3;
    v13 = a3 - 1;
    while (1)
    {
      *(*a1 + 8 * v11) = v10;
      *(*(a1 + 8) + 8 * v11) = *(*(a1 + 16) + 8 * v11);
      *(a1 + 36) = v11 + 1;
      if (v13 == v11)
      {
        return v11 + 1 >= v12;
      }

      *(*(a1 + 16) + 8 * v11 + 8) = sub_1000E784C(v8, 10, a4);
      v10 = *(*(a1 + 16) + 8 * v11++ + 8);
      if (!v10)
      {
        v14 = v11 >= v12;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v14 = 0;
LABEL_9:
    sub_1000E6A30(a1);
  }

  return v14;
}

double sub_1000E6A30(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (*(a1 + 36) >= 1)
    {
      v3 = 0;
      do
      {
        sub_1000E7830(*(*(a1 + 16) + 8 * v3++), 4 * *(a1 + 32));
      }

      while (v3 < *(a1 + 36));
      v2 = *(a1 + 16);
    }

    free(v2);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  atomic_store(0, (a1 + 40));
  return result;
}

uint64_t sub_1000E6C20(uint64_t result, unsigned int a2)
{
  v2 = *(result + 36);
  v3 = (*(result + 24) + a2) % *(result + 32);
  *(result + 24) = v3;
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = 8 * v2;
    do
    {
      *(*(result + 8) + v4) = *(*(result + 16) + v4) + 4 * v3;
      v4 += 8;
    }

    while (v5 != v4);
  }

  atomic_fetch_add((result + 40), a2);
  v6 = atomic_load((result + 40));
  if (v6 > *(result + 32))
  {
    sub_1008C1AEC();
  }

  return result;
}

id sub_1000E6C98(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 40);
  if (*&a2 != -1.0)
  {
    a2 = sub_1000E6CE8(*(*(a1 + 32) + 72), *&a2);
  }

  v3 = *(a1 + 32);

  return [v3 consumeRingBufferIfNecessary];
}

double sub_1000E6CE8(uint64_t *a1, float a2)
{
  v2 = *(a1 + 7);
  v3 = *(a1 + 6);
  if (v2 >= v3)
  {
    v4 = a1[4];
    v5 = *a1;
    v6 = *(a1 + 5) - *(*a1 + 4 * v4);
  }

  else
  {
    *(a1 + 7) = v2 + 1;
    v4 = a1[4];
    v5 = *a1;
    v6 = *(a1 + 5);
  }

  *(v5 + 4 * v4) = a2;
  result = v6 + a2;
  *(a1 + 5) = result;
  a1[4] = (v4 + 1) % v3;
  return result;
}

uint64_t sub_1000E6F84(uint64_t result, int a2)
{
  v2 = (*(result + 28) + a2) % *(result + 32);
  *(result + 28) = v2;
  v3 = *(result + 36);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 8 * v3;
    do
    {
      *(*result + v4) = *(*(result + 16) + v4) + 4 * v2;
      v4 += 8;
    }

    while (v5 != v4);
  }

  atomic_fetch_add((result + 40), -a2);
  v6 = atomic_load((result + 40));
  if ((v6 & 0x80000000) != 0)
  {
    sub_1008C1B18();
  }

  return result;
}

uint64_t *sub_1000E7114(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_1000E718C(a1, a2);
  }

  return a1;
}

void sub_1000E7170(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E718C(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_1000E7270(a1, a2);
  }

  sub_1000E71C8();
}

void sub_1000E71E0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000E723C(exception, a1);
}

std::logic_error *sub_1000E723C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_1000E7270(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_1000E72B8();
}

void sub_1000E72B8()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_1000E7330(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100AF7870;
  qword_100AF7870 = v1;
}

vm_address_t sub_1000E784C(vm_size_t a1, int a2, void *a3)
{
  if (a2 >= 1)
  {
    v6 = 0;
    v7 = a1 - 1;
    v8 = 2 * a1;
    v9 = 1;
    while (1)
    {
      if (((v7 + vm_page_size) & -vm_page_size) != a1)
      {
        sub_1008C1B58();
      }

      address = 0;
      v10 = vm_allocate(mach_task_self_, &address, v8, 1);
      if (v10)
      {
        break;
      }

      v13 = vm_deallocate(mach_task_self_, address + a1, a1);
      if (v13)
      {
        v14 = v13;
        vm_deallocate(mach_task_self_, address, a1);
        v12 = @"VMVMRingBuffer vm_deallocate failed";
        v11 = v14;
        goto LABEL_10;
      }

      *cur_protection = 0;
      target_address = address + a1;
      v15 = vm_remap(mach_task_self_, &target_address, a1, 0, 0, mach_task_self_, address, 0, &cur_protection[1], cur_protection, 1u);
      v16 = address;
      if (v15)
      {
        v17 = v15;
        vm_deallocate(mach_task_self_, address, a1);
        v12 = @"VMVMRingBuffer vm_remap failed";
        v11 = v17;
        goto LABEL_10;
      }

      if (target_address != address + a1)
      {
        vm_deallocate(mach_task_self_, target_address, a1);
        vm_deallocate(mach_task_self_, address, a1);
        v31 = NSLocalizedDescriptionKey;
        v32 = @"VMVMRingBuffer vm_remap failed to map to correct offset";
        [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v23 = v27 = a3;
        v18 = [NSError errorWithDomain:@"com.apple.VoiceMemos.ErrorDomain" code:0 userInfo:v23];
        v24 = v18;

        a3 = v27;
        goto LABEL_11;
      }

      v18 = 0;
LABEL_12:
      v20 = v18;

      v21 = v16 == 0;
      if (!v16)
      {
        v6 = v20;
        if (v9++ < a2)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    v11 = v10;
    v12 = @"VMVMRingBuffer vm_allocate failed";
LABEL_10:
    v18 = sub_1000E7AFC(v12, v11);
    v19 = v18;
LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v16 = 0;
  v20 = 0;
  v21 = 1;
LABEL_19:
  if (a3 && v21)
  {
    v25 = v20;
    *a3 = v20;
  }

  return v16;
}

id sub_1000E7AFC(void *a1, mach_error_t a2)
{
  v3 = a1;
  v4 = [NSString stringWithFormat:@"%@ - %s", v3, mach_error_string(a2)];

  v8 = NSDebugDescriptionErrorKey;
  v9 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [NSError errorWithDomain:NSMachErrorDomain code:a2 userInfo:v5];

  return v6;
}

void sub_1000E9C04(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t sub_1000E9C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v6 = type metadata accessor for UUID();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = type metadata accessor for URL.DirectoryHint();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v8 = type metadata accessor for FileStoreConfiguration();
  v4[24] = v8;
  v4[25] = *(v8 - 8);
  v4[26] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v4[27] = v9;
  v4[28] = *(v9 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v10 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[32] = v10;
  v4[33] = *(v10 - 8);
  v4[34] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v4[35] = v11;
  v4[36] = v13;

  return _swift_task_switch(sub_1000E9ED4, v11, v13);
}

uint64_t sub_1000E9ED4()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = v0[16];
  v5 = v0[17];
  v6 = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
  v0[37] = v6;
  v7 = swift_allocObject();
  v0[38] = v7;
  *(v7 + 16) = &_swiftEmptyDictionarySingleton;
  v8 = swift_allocObject();
  v0[39] = v8;
  *(v8 + 16) = _swiftEmptySetSingleton;
  v9 = swift_allocObject();
  v0[40] = v9;
  v9[2] = v4;
  v9[3] = v6;
  v9[4] = v7;
  v9[5] = v8;
  v9[6] = v5;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);

  v6;

  v10 = swift_task_alloc();
  v0[41] = v10;
  *v10 = v0;
  v10[1] = sub_1000EA108;
  v11 = v0[34];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v10, v11, sub_1000F2B20, v9, &type metadata for () + 1);
}

uint64_t sub_1000EA108()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  (*(v2[33] + 8))(v2[34], v2[32]);

  v3 = v2[36];
  v4 = v2[35];
  if (v0)
  {
    v5 = sub_1000EAAFC;
  }

  else
  {
    v5 = sub_1000EA2E0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000EA2E0()
{
  if (*(*(v0 + 16) + 16) && (v2 = sub_100094E98(0x656D686361747461, 0xEB0000000073746ELL), (v3 & 1) != 0) && (sub_10000BA20(*(*(v0 + 16) + 56) + 32 * v2, v0 + 16), sub_1000F24EC(&unk_100AD13E0, &qword_10093C060), (swift_dynamicCast() & 1) != 0))
  {
    isa = v0;
    v4 = *(v0 + 28);
    v6 = *(isa + 25);
    v5 = *(isa + 26);
    v7 = *(isa + 24);
    v8 = *(isa + 22);
    v9 = *(isa + 14);
    static FileStoreConfiguration.shared.getter();
    FileStoreConfiguration.assetStorageDirectoryURL.getter();
    (*(v6 + 8))(v5, v7);
    v10 = -1 << *(v9 + 32);
    if (-v10 < 64)
    {
      v11 = ~(-1 << -v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v9 + 64);

    swift_beginAccess();
    v13 = 0;
    v14 = (63 - v10) >> 6;
    v72 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v70 = (v8 + 8);
    v71 = (v8 + 104);
    v73 = (v4 + 8);
    v15 = *(isa + 42);
    while (v12)
    {
      v16 = v12;
LABEL_14:
      v12 = (v16 - 1) & v16;
      if (*(v9 + 16))
      {
        v4 = v10;
        v18 = *(v9 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v16))));
        isa = *v18;
        v19 = *(v18 + 8);

        v20 = sub_100094E98(isa, v19);
        if (v21)
        {
          v62 = v15;
          v4 = v75;
          v67 = *(v75 + 232);
          v68 = *(v75 + 216);
          v65 = *(v75 + 184);
          v66 = *(v75 + 168);
          v22 = (*(v9 + 56) + 16 * v20);
          v23 = *(*(v75 + 304) + 16);
          v63 = *v22;
          v64 = v22[1];
          sub_100049ED8(*v22, v64);

          v24 = sub_1000F14B4(isa, v19, v23);
          v26 = v25;

          *(v75 + 96) = v24;
          *(v75 + 104) = v26;
          (*v71)(v65, v72, v66);
          sub_1000777B4();
          URL.appending<A>(path:directoryHint:)();
          (*v70)(v65, v66);

          v27 = [objc_opt_self() defaultManager];
          URL.deletingLastPathComponent()();
          URL._bridgeToObjectiveC()(v28);
          v30 = v29;
          v69 = *v73;
          (*v73)(v67, v68);
          *(v75 + 120) = 0;
          v31 = [v27 createDirectoryAtURL:v30 withIntermediateDirectories:1 attributes:0 error:v75 + 120];

          isa = *(v75 + 120);
          if (!v31)
          {
            goto LABEL_40;
          }

          v32 = isa;
          isa = v64;
          v15 = v62;
          Data.write(to:options:)();
          v10 = v62;
          if (v62)
          {
            v58 = *(v75 + 296);
            v60 = *(v75 + 240);
            v59 = *(v75 + 248);
            v61 = *(v75 + 216);
            sub_1000340DC(v63, v64);

            v69(v60, v61);
            v69(v59, v61);
            goto LABEL_42;
          }

          v69(*(v75 + 240), *(v75 + 216));
          sub_1000340DC(v63, v64);
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        v0 = v75;
        v51 = *(v75 + 248);
        v52 = *(v75 + 216);

        (*v73)(v51, v52);
        goto LABEL_20;
      }

      v16 = *(v9 + 64 + 8 * v17);
      ++v13;
      if (v16)
      {
        v13 = v17;
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_20:
    v33 = *(v0 + 39);
    v34 = *(v0 + 19);
    swift_beginAccess();
    v35 = *(v33 + 16);
    v38 = *(v35 + 56);
    v37 = v35 + 56;
    v36 = v38;
    v39 = -1;
    v40 = -1 << *(*(v33 + 16) + 32);
    if (-v40 < 64)
    {
      v39 = ~(-1 << -v40);
    }

    v4 = v39 & v36;
    v41 = (63 - v40) >> 6;
    v74 = *(v33 + 16);

    v42 = 0;
    while (v4)
    {
      v43 = v75;
LABEL_29:
      (*(v34 + 16))(*(v43 + 160), *(v74 + 48) + *(v34 + 72) * (__clz(__rbit64(v4)) | (v42 << 6)), *(v43 + 144));
      v45 = [objc_opt_self() defaultCenter];
      if (qword_100ACFFA8 != -1)
      {
        swift_once();
      }

      v4 &= v4 - 1;
      v46 = *(v43 + 160);
      v47 = *(v43 + 144);
      v48 = qword_100B2FB98;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v34 + 8))(v46, v47);
      [v45 postNotificationName:v48 object:isa];
    }

    v43 = v75;
    while (1)
    {
      v44 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v44 >= v41)
      {

        v49 = *(v75 + 8);
        goto LABEL_34;
      }

      v4 = *(v37 + 8 * v44);
      ++v42;
      if (v4)
      {
        v42 = v44;
        goto LABEL_29;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_40:
  v53 = *(v4 + 296);
  v55 = *(v4 + 240);
  v54 = *(v4 + 248);
  v56 = *(v4 + 216);
  v57 = isa;

  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_1000340DC(v63, v64);

  v69(v55, v56);
  v69(v54, v56);
LABEL_42:

  v49 = *(v4 + 8);
LABEL_34:

  return v49();
}

uint64_t sub_1000EAAFC()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_1000EAC04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v206 = a4;
  v230 = a3;
  v6 = sub_1000F24EC(&qword_100AD1418, &qword_10093C078);
  __chkstk_darwin(v6 - 8);
  v216 = &v199 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v215 = &v199 - v9;
  v10 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v10 - 8);
  v209 = &v199 - v11;
  v12 = type metadata accessor for UUID();
  v222 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v199 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v199 - v16;
  __chkstk_darwin(v18);
  v205 = &v199 - v19;
  __chkstk_darwin(v20);
  v204 = &v199 - v21;
  __chkstk_darwin(v22);
  v203 = &v199 - v23;
  __chkstk_darwin(v24);
  v228 = &v199 - v25;
  __chkstk_darwin(v26);
  v224 = &v199 - v27;
  __chkstk_darwin(v28);
  v229 = &v199 - v29;
  __chkstk_darwin(v30);
  v218 = &v199 - v31;
  __chkstk_darwin(v32);
  v223 = &v199 - v33;
  __chkstk_darwin(v34);
  v213 = &v199 - v35;
  __chkstk_darwin(v36);
  v217 = &v199 - v37;
  __chkstk_darwin(v38);
  v40 = &v199 - v39;
  v41 = type metadata accessor for Date();
  v42 = *(v41 - 8);
  *&v43 = __chkstk_darwin(v41).n128_u64[0];
  v45 = &v199 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v211 = a1;
    v46 = sub_100094E98(0x7972746E65, 0xE500000000000000);
    if (v47)
    {
      sub_10000BA20(*(v211 + 56) + 32 * v46, &v234);
      sub_1000F24EC(&qword_100AD13D8, &qword_10093C050);
      if (swift_dynamicCast())
      {
        v202 = v17;
        v200 = v14;
        v231 = v41;
        v48 = v233;
        type metadata accessor for JournalEntryMO();
        v49 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v210 = a2;
        v50 = [v49 initWithContext:a2];
        sub_1007A6F50(v48);

        Date.init()();
        isa = Date._bridgeToObjectiveC()().super.isa;
        v52 = *(v42 + 8);
        v53 = v231;
        v52(v45, v231);
        [v50 setCreatedDate:isa];

        Date.init()();
        v54 = Date._bridgeToObjectiveC()().super.isa;
        v52(v45, v53);
        [v50 setUpdatedDate:v54];

        Date.init()();
        v55 = Date._bridgeToObjectiveC()().super.isa;
        v52(v45, v53);
        [v50 setEntryDate:v55];

        JournalEntryMO.updateSortingColumns()();
        v56 = [v50 id];
        v201 = v50;
        if (v56)
        {
          v57 = v56;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v58 = v217;
          UUID.init()();
          v59 = UUID._bridgeToObjectiveC()().super.isa;
          [v50 setId:v59];

          v60 = v40;
          v61 = v222;
          v62 = *(v222 + 16);
          v63 = v213;
          v62(v213, v60, v12);
          v64 = v209;
          v62(v209, v58, v12);
          (*(v61 + 56))(v64, 0, 1, v12);
          swift_beginAccess();
          sub_1004A7034(v64, v63);
          swift_endAccess();
          v65 = *(v61 + 8);
          v65(v58, v12);
          v65(v60, v12);
        }

        v66 = JournalEntryMO.assetOrderingDictionary.getter();
        v67 = 0;
        v68 = *(v66 + 64);
        v208 = v66 + 64;
        v214 = v66;
        v69 = 1 << *(v66 + 32);
        v70 = -1;
        if (v69 < 64)
        {
          v70 = ~(-1 << v69);
        }

        v71 = v70 & v68;
        v207 = (v69 + 63) >> 6;
        v231 = (v222 + 16);
        v227 = (v222 + 32);
        v225 = (v222 + 8);
        v72 = &_swiftEmptyDictionarySingleton;
        v212 = v222 + 40;
        v226 = v12;
        while (1)
        {
          v221 = v72;
          if (!v71)
          {
            if (v207 <= v67 + 1)
            {
              v74 = v67 + 1;
            }

            else
            {
              v74 = v207;
            }

            v75 = v74 - 1;
            while (1)
            {
              v73 = v67 + 1;
              if (__OFADD__(v67, 1))
              {
                break;
              }

              if (v73 >= v207)
              {
                v132 = sub_1000F24EC(&qword_100AD1428, &qword_100945160);
                v133 = v216;
                (*(*(v132 - 8) + 56))(v216, 1, 1, v132);
                v86 = v133;
                v71 = 0;
                goto LABEL_21;
              }

              v71 = *(v208 + 8 * v73);
              ++v67;
              if (v71)
              {
                goto LABEL_20;
              }
            }

            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
          }

          v73 = v67;
LABEL_20:
          v76 = __clz(__rbit64(v71));
          v71 &= v71 - 1;
          v77 = v76 | (v73 << 6);
          v78 = v214;
          v79 = v222;
          v80 = v217;
          (*(v222 + 16))(v217, *(v214 + 48) + *(v222 + 72) * v77, v12);
          v81 = *(*(v78 + 56) + 8 * v77);
          v82 = sub_1000F24EC(&qword_100AD1428, &qword_100945160);
          v83 = *(v82 + 48);
          v84 = *(v79 + 32);
          v85 = v216;
          v84(v216, v80, v12);
          *&v85[v83] = v81;
          (*(*(v82 - 8) + 56))(v85, 0, 1, v82);
          v75 = v73;
          v86 = v85;
LABEL_21:
          v87 = v215;
          sub_100021CEC(v86, v215, &qword_100AD1418, &qword_10093C078);
          v88 = sub_1000F24EC(&qword_100AD1428, &qword_100945160);
          if ((*(*(v88 - 8) + 48))(v87, 1, v88) == 1)
          {
            break;
          }

          v219 = v75;
          ObjCClassFromMetadata = *(v87 + *(v88 + 48));
          v89 = *v227;
          v90 = v223;
          (*v227)(v223, v87, v12);
          v91 = v218;
          UUID.init()();
          v92 = *v231;
          v93 = v229;
          (*v231)(v229, v90, v12);
          v94 = v230;
          swift_beginAccess();
          v92(v224, v91, v12);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v233 = *(v94 + 16);
          v96 = v233;
          *(v94 + 16) = 0x8000000000000000;
          v97 = sub_100361E08(v93);
          v99 = v96[2];
          v100 = (v98 & 1) == 0;
          v101 = __OFADD__(v99, v100);
          v102 = v99 + v100;
          if (v101)
          {
            goto LABEL_82;
          }

          v103 = v98;
          if (v96[3] >= v102)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v134 = v97;
              sub_100821380();
              v97 = v134;
            }
          }

          else
          {
            sub_10081BFD4(v102, isUniquelyReferenced_nonNull_native);
            v97 = sub_100361E08(v229);
            if ((v103 & 1) != (v104 & 1))
            {
              goto LABEL_87;
            }
          }

          v105 = v226;
          v106 = v233;
          if (v103)
          {
            v107 = v222;
            v108 = *(v222 + 72);
            (*(v222 + 40))(v233[7] + v108 * v97, v224, v226);
            v109 = *(v107 + 8);
            v109(v229, v105);
          }

          else
          {
            v233[(v97 >> 6) + 8] |= 1 << v97;
            v110 = v222;
            v108 = *(v222 + 72);
            v111 = v108 * v97;
            v112 = v229;
            v92((v106[6] + v108 * v97), v229, v105);
            v89((v106[7] + v111), v224, v105);
            v109 = *(v110 + 8);
            v109(v112, v105);
            v113 = v106[2];
            v101 = __OFADD__(v113, 1);
            v114 = v113 + 1;
            if (v101)
            {
              goto LABEL_84;
            }

            v106[2] = v114;
            v91 = v218;
          }

          *(v230 + 16) = v106;

          swift_endAccess();
          v115 = v228;
          v92(v228, v91, v105);
          v116 = v221;
          v117 = swift_isUniquelyReferenced_nonNull_native();
          v234 = v116;
          v118 = sub_100361E08(v115);
          v120 = v116;
          v121 = v118;
          v122 = *(v120 + 2);
          v123 = (v119 & 1) == 0;
          v124 = v122 + v123;
          if (__OFADD__(v122, v123))
          {
            goto LABEL_83;
          }

          v125 = v119;
          if (*(v120 + 3) >= v124)
          {
            if (v117)
            {
              v72 = v234;
              if (v119)
              {
                goto LABEL_9;
              }
            }

            else
            {
              sub_100821358();
              v72 = v234;
              if (v125)
              {
                goto LABEL_9;
              }
            }
          }

          else
          {
            sub_10081BC14(v124, v117);
            v126 = sub_100361E08(v228);
            if ((v125 & 1) != (v127 & 1))
            {
LABEL_87:
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

            v121 = v126;
            v72 = v234;
            if (v125)
            {
LABEL_9:
              *(*(v72 + 7) + 8 * v121) = ObjCClassFromMetadata;
              v12 = v226;
              v109(v228, v226);
              v109(v91, v12);
              v109(v223, v12);
              goto LABEL_10;
            }
          }

          *&v72[8 * (v121 >> 6) + 64] |= 1 << v121;
          v128 = *(v72 + 6) + v108 * v121;
          v129 = v228;
          v12 = v226;
          v92(v128, v228, v226);
          *(*(v72 + 7) + 8 * v121) = ObjCClassFromMetadata;
          v109(v129, v12);
          v109(v91, v12);
          v109(v223, v12);
          v130 = *(v72 + 2);
          v101 = __OFADD__(v130, 1);
          v131 = v130 + 1;
          if (v101)
          {
            goto LABEL_85;
          }

          *(v72 + 2) = v131;
LABEL_10:
          v67 = v219;
        }

        v135 = v201;
        JournalEntryMO.assetOrderingDictionary.setter();
        if (*(v211 + 16) && (v136 = sub_100094E98(0x737465737361, 0xE600000000000000), (v137 & 1) != 0))
        {
          sub_10000BA20(*(v211 + 56) + 32 * v136, &v234);
          v216 = sub_1000F24EC(&qword_100AD1430, &unk_10093C090);
          v138 = swift_dynamicCast();
          a2 = v210;
          if (v138)
          {
            v139 = v233;
            v221 = v233[2];
            if (v221)
            {
              type metadata accessor for JournalEntryAssetMO();
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v140 = 0;
              v219 = v139 + 32;
              v224 = (v222 + 56);
              v141 = v203;
              p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
              v218 = v139;
              do
              {
                if (v140 >= *(v139 + 2))
                {
                  goto LABEL_86;
                }

                v143 = *&v219[8 * v140];
                v144 = objc_allocWithZone(ObjCClassFromMetadata);

                v145 = [v144 p:a2 ivar:?lyt[367]];
                sub_1007A6F50(v143);
                v229 = v145;
                v146 = [v145 id];
                if (v146)
                {
                  v223 = v140;
                  v147 = v146;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v148 = v230;
                  swift_beginAccess();
                  v149 = *(v148 + 16);
                  if (*(v149 + 16) && (v150 = sub_100361E08(v141), (v151 & 1) != 0))
                  {
                    v152 = *(v222 + 16);
                    v153 = v204;
                    v154 = v226;
                    v152(v204, *(v149 + 56) + *(v222 + 72) * v150, v226);
                    swift_endAccess();
                    v155 = UUID._bridgeToObjectiveC()().super.isa;
                    [v229 setId:v155];

                    v156 = v213;
                    v152(v213, v153, v154);
                    swift_beginAccess();
                    v157 = v217;
                    sub_100286F3C(v217, v156);
                    swift_endAccess();
                    v158 = v157;
                  }

                  else
                  {
                    swift_endAccess();
                    v159 = v217;
                    UUID.init()();
                    v160 = UUID._bridgeToObjectiveC()().super.isa;
                    [v229 setId:v160];

                    v161 = *v231;
                    v162 = v213;
                    v154 = v226;
                    (*v231)(v213, v141, v226);
                    v163 = v209;
                    v161(v209, v159, v154);
                    (*v224)(v163, 0, 1, v154);
                    swift_beginAccess();
                    sub_1004A7034(v163, v162);
                    swift_endAccess();
                    v164 = v205;
                    v161(v205, v159, v154);
                    swift_beginAccess();
                    sub_100286F3C(v162, v164);
                    swift_endAccess();
                    v158 = v162;
                    v153 = v159;
                    p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
                  }

                  v165 = *v225;
                  (*v225)(v158, v154);
                  v165(v153, v154);
                  v165(v141, v154);
                  v135 = v201;
                  a2 = v210;
                  v139 = v218;
                  v140 = v223;
                }

                [v135 addAssetsObject:v229];
                if (*(v143 + 16) && (v166 = sub_100094E98(0x61747441656C6966, 0xEF73746E656D6863), (v167 & 1) != 0))
                {
                  sub_10000BA20(*(v143 + 56) + 32 * v166, &v234);

                  if (swift_dynamicCast())
                  {
                    v168 = v232;
                    v169 = *(v232 + 16);
                    if (v169)
                    {
                      v223 = v140;
                      type metadata accessor for JournalEntryAssetFileAttachmentMO();
                      v227 = swift_getObjCClassFromMetadata();
                      swift_beginAccess();
                      v170 = 32;
                      do
                      {
                        v228 = v169;
                        v171 = *(v168 + v170);
                        v172 = objc_allocWithZone(v227);

                        v173 = [v172 p:a2 ivar:?lyt[367]];
                        sub_1007A6F50(v171);

                        v174 = [v173 id];
                        if (v174)
                        {
                          v175 = v202;
                          v176 = v174;
                          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                          v177 = v230;
                          swift_beginAccess();
                          v178 = *(v177 + 16);
                          if (*(v178 + 16) && (v179 = sub_100361E08(v175), (v180 & 1) != 0))
                          {
                            v181 = v200;
                            v182 = v226;
                            (*(v222 + 16))(v200, *(v178 + 56) + *(v222 + 72) * v179, v226);
                            swift_endAccess();
                            v183 = UUID._bridgeToObjectiveC()().super.isa;
                            [v173 setId:v183];

                            v184 = v181;
                          }

                          else
                          {
                            swift_endAccess();
                            v185 = v217;
                            UUID.init()();
                            v186 = UUID._bridgeToObjectiveC()().super.isa;
                            [v173 setId:v186];

                            v187 = *v231;
                            v182 = v226;
                            (*v231)(v213, v175, v226);
                            v188 = v209;
                            v187(v209, v185, v182);
                            (*v224)(v188, 0, 1, v182);
                            swift_beginAccess();
                            p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
                            sub_1004A7034(v188, v213);
                            swift_endAccess();
                            v184 = v185;
                            a2 = v210;
                          }

                          v189 = *v225;
                          (*v225)(v184, v182);
                          v189(v175, v182);
                        }

                        v190 = [v173 filePath];
                        if (v190)
                        {
                          v191 = v190;
                          v192 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v194 = v193;

                          v195 = *(v230 + 16);

                          sub_1000F14B4(v192, v194, v195);

                          v196 = String._bridgeToObjectiveC()();
                          a2 = v210;

                          [v173 setFilePath:v196];
                        }

                        [v229 addFileAttachmentsObject:v173];

                        v170 += 8;
                        v169 = (v228 - 1);
                      }

                      while (v228 != 1);

                      v141 = v203;
                      v135 = v201;
                      v139 = v218;
                      v140 = v223;
                    }

                    else
                    {
                    }

                    goto LABEL_51;
                  }
                }

                else
                {
                }

LABEL_51:
                ++v140;
              }

              while (v140 != v221);
            }
          }

          else
          {
          }
        }

        else
        {

          a2 = v210;
        }
      }
    }
  }

  v234 = 0;
  if ([a2 save:{&v234, v43}])
  {
    return v234;
  }

  v198 = v234;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_1000EC268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1000EC300, v7, v6);
}

uint64_t sub_1000EC300()
{
  v1 = v0[4];

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v0[7] = v2;
  v0[8] = v4;

  return _swift_task_switch(sub_1000EC398, v2, v4);
}

uint64_t sub_1000EC398()
{
  v1 = Data.init(contentsOf:options:)();
  v3 = v2;
  sub_1000F19A8(v1, v2);
  v0[9] = v4;
  v5 = v4;
  sub_1000340DC(v1, v3);
  if (v5)
  {
    v6 = v0[4];
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_1000EC504;

    return sub_1000E9C24(v6, &protocol witness table for MainActor, v5);
  }

  else
  {

    v8 = v0[5];
    v9 = v0[6];

    return _swift_task_switch(sub_1000EC728, v8, v9);
  }
}

uint64_t sub_1000EC504()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_1000EC6B0;
  }

  else
  {
    v5 = sub_1000EC640;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000EC640()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1000EC728, v1, v2);
}

uint64_t sub_1000EC6B0()
{

  v0[12] = v0[11];
  v1 = v0[5];
  v2 = v0[6];

  return _swift_task_switch(sub_1000EC788, v1, v2);
}

uint64_t sub_1000EC728()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000EC788()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000EC874()
{
  v1 = v0;
  v20 = type metadata accessor for UTType();
  v2 = *(v20 - 8);
  *&v3 = __chkstk_darwin(v20).n128_u64[0];
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 items];
  sub_1000065A8(0, &unk_100AD4C90, UIDragItem_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = 0;
    v18 = v7 & 0xFFFFFFFFFFFFFF8;
    v19 = v7 & 0xC000000000000001;
    v10 = v2 + 1;
    while (1)
    {
      if (v19)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v18 + 16))
        {
          goto LABEL_14;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v2 = v11;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = [v11 itemProvider];
      static AppInfo.exportContentType.getter();
      UTType.identifier.getter();
      (*v10)(v5, v20);
      v14 = String._bridgeToObjectiveC()();

      v15 = [v13 hasRepresentationConformingToTypeIdentifier:v14 fileOptions:0];

      if (v15)
      {

        return 1;
      }

      ++v9;
      if (v12 == i)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_11:

  return 0;
}

void sub_1000ECB38(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, NSObject *a6)
{
  v36 = a6;
  v33 = a5;
  v34 = a4;
  v7 = sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v35 = &v32 - v18;
  __chkstk_darwin(v19);
  v21 = &v32 - v20;
  sub_1000082B4(a1, v12, &unk_100AD6DD0, &qword_1009437C0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100004F84(v12, &unk_100AD6DD0, &qword_1009437C0);
    v23 = 0;
    v24 = 0;
LABEL_4:
    dispatch_group_leave(v36);
    sub_100004DF8(v23, v24);
    return;
  }

  v22 = *(v14 + 32);
  v22(v21, v12, v13);
  sub_10057757C(v9);
  v25 = v33 + 16;
  (*(v14 + 56))(v9, 0, 1, v13);
  v26 = v35;
  v22(v35, v9, v13);
  (*(v14 + 16))(v16, v26, v13);
  v27 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v25;
  v22((v24 + v27), v16, v13);
  v28 = swift_allocObject();
  v23 = sub_1000F2C5C;
  *(v28 + 16) = sub_1000F2C5C;
  *(v28 + 24) = v24;
  aBlock[4] = sub_100028EF4;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A7D4;
  aBlock[3] = &unk_100A5BD40;
  v29 = _Block_copy(aBlock);

  dispatch_sync(v34, v29);
  _Block_release(v29);
  v30 = *(v14 + 8);
  v30(v35, v13);
  v30(v21, v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    goto LABEL_4;
  }

  __break(1u);
}

uint64_t sub_1000ECF6C(double **a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  swift_beginAccess();
  v9 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1003E4AE0(0, *(v9 + 2) + 1, 1, v9);
    *a1 = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1003E4AE0((v11 > 1), v12 + 1, 1, v9);
    *a1 = v9;
  }

  *(v9 + 2) = v12 + 1;
  return (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
}

void sub_1000ED0FC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = type metadata accessor for JournalShareUtility();
    type metadata accessor for JurassicAlertController();
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = v7;
    v9 = a2;

    v10 = sub_1000ED298(v5, sub_1000F2C54, v8, DebugData.init(name:), 0);

    [v9 presentViewController:v10 animated:1 completion:0];
  }
}

id sub_1000ED298(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v41 = a5;
  v34 = a2;
  v35 = a3;
  v36 = a1;
  v39 = type metadata accessor for AttributedString.CharacterView();
  __chkstk_darwin(v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v7);
  v8 = sub_1000F24EC(&qword_100AD1350, &unk_100949E00);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  v37 = type metadata accessor for AttributedString();
  v13 = *(v37 - 8);
  __chkstk_darwin(v37);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 23390;
  v16._object = 0xE200000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  aBlock = a1;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v17._countAndFlagsBits = 32;
  v17._object = 0xE100000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
  v18._countAndFlagsBits = 1701603654;
  v18._object = 0xE400000000000000;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v18);
  v19._object = 0x80000001008DE360;
  v19._countAndFlagsBits = 0xD000000000000019;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
  String.LocalizationValue.init(stringInterpolation:)();
  v20 = type metadata accessor for Locale();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  aBlock = _swiftEmptyArrayStorage;
  sub_1000F27D8(&qword_100AD1358, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
  sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
  sub_10001F408(&qword_100AD1368, &qword_100AD1360, &unk_10093C020);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  AttributedString.init(localized:options:table:bundle:locale:comment:)();
  AttributedString.characters.getter();
  (*(v13 + 8))(v15, v37);
  sub_1000F27D8(&unk_100AD1370, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
  String.init<A>(_:)();
  v21 = v36;
  sub_1000ED9E0(v36);
  v22 = String._bridgeToObjectiveC()();

  v23 = String._bridgeToObjectiveC()();

  v24 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v22 message:v23 preferredStyle:1];

  if (v21 >= 1)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v34;
    *(v25 + 24) = v35;

    v26 = String._bridgeToObjectiveC()();
    v46 = sub_100028ECC;
    v47 = v25;
    aBlock = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = sub_10016B4D8;
    v45 = &unk_100A5BB60;
    v27 = _Block_copy(&aBlock);

    v28 = [objc_opt_self() actionWithTitle:v26 style:1 handler:v27];
    _Block_release(v27);

    [v24 addAction:v28];
    if (qword_100AD0420 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_100AD0428 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:

  v29 = swift_allocObject();
  *(v29 + 16) = v40;
  *(v29 + 24) = v41;

  v30 = String._bridgeToObjectiveC()();

  v46 = sub_1000F560C;
  v47 = v29;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_10016B4D8;
  v45 = &unk_100A5BB10;
  v31 = _Block_copy(&aBlock);

  v32 = [objc_opt_self() actionWithTitle:v30 style:0 handler:v31];
  _Block_release(v31);

  [v24 addAction:v32];
  return v24;
}

unint64_t sub_1000ED9E0(double *a1)
{
  v2 = 0xD000000000000011;
  v23 = type metadata accessor for AttributedString.CharacterView();
  __chkstk_darwin(v23);
  v3 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v3);
  v4 = sub_1000F24EC(&qword_100AD1350, &unk_100949E00);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for AttributedString();
  __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = v11;
    v22 = v10;
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v14._countAndFlagsBits = 0x5E2074726F706D49;
    v14._object = 0xE90000000000005BLL;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
    v24 = a1;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v15._countAndFlagsBits = 32;
    v15._object = 0xE100000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
    v16._countAndFlagsBits = 0x7972746E45;
    v16._object = 0xE500000000000000;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v16);
    v17._object = 0x80000001008DE3D0;
    v17._countAndFlagsBits = 0xD000000000000011;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
    String.LocalizationValue.init(stringInterpolation:)();
    v18 = type metadata accessor for Locale();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    v24 = _swiftEmptyArrayStorage;
    sub_1000F27D8(&qword_100AD1358, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
    sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
    sub_10001F408(&qword_100AD1368, &qword_100AD1360, &unk_10093C020);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    AttributedString.init(localized:options:table:bundle:locale:comment:)();
    AttributedString.characters.getter();
    (*(v21 + 8))(v13, v22);
    sub_1000F27D8(&unk_100AD1370, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
    return String.init<A>(_:)();
  }

  return v2;
}

double sub_1000EDE48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  sub_1003E9628(0, 0, v6, &unk_10093C038, v8);

  return result;
}

uint64_t sub_1000EDF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = type metadata accessor for URL();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000EE018, 0, 0);
}

uint64_t sub_1000EE018()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  *(v0 + 96) = v2;
  if (v2)
  {
    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 176) = v6;
    *(v0 + 104) = *(v4 + 56);
    *(v0 + 112) = v5;
    *(v0 + 120) = 0;
    *(v0 + 128) = 0;
    v5(*(v0 + 88), v1 + ((v6 + 32) & ~v6), v3);

    return _swift_task_switch(sub_1000EE0FC, 0, 0);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1000EE0FC()
{
  v1 = v0[15];
  v2 = Data.init(contentsOf:options:)();
  if (v1)
  {
    v0[21] = v1;
    v7 = sub_1000EE6E0;
  }

  else
  {
    v4 = v2;
    v5 = v3;
    sub_1000065A8(0, &qword_100AD1380, NSKeyedUnarchiver_ptr);
    sub_1000F24EC(&qword_100AD1388, &unk_10093C040);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_10093B4B0;
    *(v6 + 32) = sub_1000065A8(0, &qword_100AD1390, NSDictionary_ptr);
    *(v6 + 40) = sub_1000065A8(0, &qword_100AD1398, NSArray_ptr);
    *(v6 + 48) = sub_1000065A8(0, &qword_100AD13A0, NSString_ptr);
    *(v6 + 56) = sub_1000065A8(0, &unk_100ADE730, NSNumber_ptr);
    *(v6 + 64) = sub_1000065A8(0, &unk_100AD13B0, NSNull_ptr);
    *(v6 + 72) = sub_1000065A8(0, &unk_100AE5E10, NSDate_ptr);
    *(v6 + 80) = sub_1000065A8(0, &qword_100AD13C0, NSUUID_ptr);
    *(v6 + 88) = sub_1000065A8(0, &qword_100AD13C8, NSData_ptr);
    static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

    if (v0[5])
    {
      sub_1000F24EC(&qword_100AD13D8, &qword_10093C050);
      if (swift_dynamicCast())
      {
        v8 = v0[6];
        v0[17] = v8;
        sub_1000340DC(v4, v5);
        v9 = swift_task_alloc();
        v0[18] = v9;
        *v9 = v0;
        v9[1] = sub_1000EE3EC;

        return sub_1000E9C24(0, 0, v8);
      }
    }

    else
    {
      sub_100004F84((v0 + 2), &qword_100AD13D0, &unk_100942DB0);
    }

    sub_1000340DC(v4, v5);
    v0[20] = 0;
    v7 = sub_1000EE5E0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000EE3EC()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1000EE570;
  }

  else
  {
    v2 = sub_1000EE500;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000EE500()
{

  *(v0 + 160) = *(v0 + 152);

  return _swift_task_switch(sub_1000EE5E0, 0, 0);
}

uint64_t sub_1000EE570()
{

  *(v0 + 168) = *(v0 + 152);

  return _swift_task_switch(sub_1000EE6E0, 0, 0);
}

uint64_t sub_1000EE5E0()
{
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  v1 = *(v0 + 128) + 1;
  if (v1 == *(v0 + 96))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 120) = *(v0 + 160);
    *(v0 + 128) = v1;
    (*(v0 + 112))(*(v0 + 88), *(v0 + 56) + ((*(v0 + 176) + 32) & ~*(v0 + 176)) + *(v0 + 104) * v1, *(v0 + 72));

    return _swift_task_switch(sub_1000EE0FC, 0, 0);
  }
}

uint64_t sub_1000EE6E0()
{
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

  v1 = *(v0 + 128) + 1;
  if (v1 == *(v0 + 96))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 120) = 0;
    *(v0 + 128) = v1;
    (*(v0 + 112))(*(v0 + 88), *(v0 + 56) + ((*(v0 + 176) + 32) & ~*(v0 + 176)) + *(v0 + 104) * v1, *(v0 + 72));

    return _swift_task_switch(sub_1000EE0FC, 0, 0);
  }
}

uint64_t sub_1000EE818@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_1000F24EC(a1, a2);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_1000EE890(uint64_t a1, uint64_t a2)
{
  result = static Float._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t sub_1000EE8E4(uint64_t a1, uint64_t a2)
{
  v3 = static Float._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

BOOL sub_1000EEA0C(_DWORD *a1, int *a2)
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

_DWORD *sub_1000EEA3C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1000EEA68@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

void *sub_1000EEB54@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_1000EEB80@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1000EEBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t))
{
  v9 = 0;
  v10 = 1;
  result = a5(a1, &v9, a3, a4);
  v7 = v9;
  v8 = v10;
  if (v10)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

uint64_t sub_1000EEC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t))
{
  v10 = 0;
  v11 = 1;
  v6 = a5(a1, &v10, a3, a4);
  v7 = v10;
  v8 = v11;
  if (v11)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return v6 & 1;
}

uint64_t sub_1000EECB8@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_1000EECE0(uint64_t a1)
{
  v2 = sub_1000F27D8(&qword_100AD1A70, type metadata accessor for CKError, &unk_10093D728);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000EED4C(uint64_t a1)
{
  v2 = sub_1000F27D8(&qword_100AD1A70, type metadata accessor for CKError, &unk_10093D728);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000EEDB8(uint64_t a1)
{
  v2 = sub_1000F27D8(&qword_100AD1AA0, type metadata accessor for CKError, &unk_10093F890);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000EEE9C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

void sub_1000EEF1C(void *a3@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = String._bridgeToObjectiveC()();

  *a3 = v4;
}

uint64_t sub_1000EEF70(uint64_t a1)
{
  v2 = sub_1000F27D8(&qword_100AD1998, type metadata accessor for LAError, &unk_10093F288);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000EEFDC(uint64_t a1)
{
  v2 = sub_1000F27D8(&qword_100AD1998, type metadata accessor for LAError, &unk_10093F288);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000EF048(void *a1, uint64_t a2)
{
  v4 = sub_1000F27D8(&qword_100AD1998, type metadata accessor for LAError, &unk_10093F288);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000EF0D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F27D8(&qword_100AD1998, type metadata accessor for LAError, &unk_10093F288);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000EF164(uint64_t a1)
{
  v2 = sub_1000F27D8(&qword_100AD19E8, type metadata accessor for CSSearchQueryError, &unk_10093F45C);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000EF1D0(uint64_t a1)
{
  v2 = sub_1000F27D8(&qword_100AD19E8, type metadata accessor for CSSearchQueryError, &unk_10093F45C);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000EF23C(void *a1, uint64_t a2)
{
  v4 = sub_1000F27D8(&qword_100AD19E8, type metadata accessor for CSSearchQueryError, &unk_10093F45C);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000EF2CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F27D8(&qword_100AD19E8, type metadata accessor for CSSearchQueryError, &unk_10093F45C);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000EF348(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1BF8, type metadata accessor for FileProtectionType, &unk_10093D834);
  sub_1000F27D8(&qword_100AD1C00, type metadata accessor for FileProtectionType, &unk_10093D7D4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000EF404(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_1000EF480(uint64_t a1)
{
  v2 = sub_1000F27D8(&qword_100AD1AA0, type metadata accessor for CKError, &unk_10093F890);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000EF4EC(uint64_t a1)
{
  v2 = sub_1000F27D8(&qword_100AD1AA0, type metadata accessor for CKError, &unk_10093F890);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000EF558(void *a1, uint64_t a2)
{
  v4 = sub_1000F27D8(&qword_100AD1AA0, type metadata accessor for CKError, &unk_10093F890);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000EF5E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F27D8(&qword_100AD1AA0, type metadata accessor for CKError, &unk_10093F890);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000EF664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000EF6D8(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_1003C1C88(a1);

  *a2 = v3;
}

void sub_1000EF718(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1003C1CC0(a1);

  *a2 = v3;
}

uint64_t sub_1000EF758(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1AD0, type metadata accessor for Name, &unk_10093F134);
  sub_1000F27D8(&qword_100AD1AD8, type metadata accessor for Name, &unk_10093F0D4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000EF814(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1AE0, type metadata accessor for MarkerFormat, &unk_10093EF6C);
  sub_1000F27D8(&qword_100AD1AE8, type metadata accessor for MarkerFormat, &unk_10093EF14);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000EF8D0(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1C88, type metadata accessor for UIContentSizeCategory, &unk_10093CB34);
  sub_1000F27D8(&qword_100AD1C90, type metadata accessor for UIContentSizeCategory, &unk_10093CAD4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

float sub_1000EF98C@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1000EF998(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1B68, type metadata accessor for UILayoutPriority, &unk_10093E368);
  sub_1000F27D8(&qword_100AD1B70, type metadata accessor for UILayoutPriority, &unk_10093E308);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000EFA54(uint64_t a1)
{
  sub_1000F27D8(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
  sub_1000F27D8(&qword_100AD1200, type metadata accessor for Key, &unk_10093BF24);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000EFB10(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1218, type metadata accessor for Identifier, &unk_10093BBFC);
  sub_1000F27D8(&qword_100AD1220, type metadata accessor for Identifier, &unk_10093BB9C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000EFBCC(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1B98, type metadata accessor for DocumentAttributeKey, &unk_10093F700);
  sub_1000F27D8(&qword_100AD1BA0, type metadata accessor for DocumentAttributeKey, &unk_10093DF80);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000EFC88(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1B88, type metadata accessor for DocumentType, &unk_10093E0D8);
  sub_1000F27D8(&qword_100AD1B90, type metadata accessor for DocumentType, &unk_10093E080);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000EFD44(uint64_t a1)
{
  sub_1000F27D8(&qword_100AF7160, type metadata accessor for OptionsKey, &unk_10093F7C8);
  sub_1000F27D8(&qword_100AD1BE0, type metadata accessor for OptionsKey, &unk_10093DA2C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000EFE00(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1B40, type metadata accessor for Level, &unk_10093E66C);
  sub_1000F27D8(&qword_100AD1B48, type metadata accessor for Level, &unk_10093E60C);
  sub_1000F5258();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000EFEC8(uint64_t a1)
{
  v2 = sub_1000F27D8(&qword_100AD19A0, type metadata accessor for LAError, &unk_10093F3DC);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000EFF34(uint64_t a1)
{
  v2 = sub_1000F27D8(&qword_100AD19A0, type metadata accessor for LAError, &unk_10093F3DC);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000EFFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F27D8(&qword_100AD1998, type metadata accessor for LAError, &unk_10093F288);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000F0024(uint64_t a1)
{
  v2 = sub_1000F27D8(&qword_100AD19F0, type metadata accessor for CSSearchQueryError, &unk_10093F5B0);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000F0090(uint64_t a1)
{
  v2 = sub_1000F27D8(&qword_100AD19F0, type metadata accessor for CSSearchQueryError, &unk_10093F5B0);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000F00FC(uint64_t a1)
{
  v2 = sub_1000F27D8(&qword_100AD19E8, type metadata accessor for CSSearchQueryError, &unk_10093F45C);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000F0168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F27D8(&qword_100AD19E8, type metadata accessor for CSSearchQueryError, &unk_10093F45C);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000F01EC(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1C38, type metadata accessor for FileAttributeKey, &unk_10093FA50);
  sub_1000F27D8(&qword_100AD1C40, type metadata accessor for FileAttributeKey, &unk_10093D1E0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000F02A8(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1C28, type metadata accessor for URLFileProtection, &unk_10093D354);
  sub_1000F27D8(&qword_100AD1C30, type metadata accessor for URLFileProtection, &unk_10093D2F4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000F0364(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1BE8, type metadata accessor for MOAppEngagementEntryInfo, &unk_10093F80C);
  sub_1000F27D8(&qword_100AD1BF0, type metadata accessor for MOAppEngagementEntryInfo, &unk_10093D924);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000F0420(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1C98, type metadata accessor for MKPointOfInterestCategory, &unk_10093F784);
  sub_1000F27D8(&qword_100AD1CA0, type metadata accessor for MKPointOfInterestCategory, &unk_10093C9C0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000F04DC(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1AF0, type metadata accessor for NLLanguage, &unk_10093EE24);
  sub_1000F27D8(&qword_100AD1AF8, type metadata accessor for NLLanguage, &unk_10093EDC4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000F0598(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1BC8, type metadata accessor for GEOPOICategory, &unk_10093DBAC);
  sub_1000F27D8(&unk_100AD1BD0, type metadata accessor for GEOPOICategory, &unk_10093DB4C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000F0654(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1C58, type metadata accessor for Weight, &unk_10093CF90);
  sub_1000F27D8(&qword_100AD1C60, type metadata accessor for Weight, &unk_10093CF30);
  sub_1000F5258();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000F071C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F27D8(&qword_100AD1AA0, type metadata accessor for CKError, &unk_10093F890);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000F07A0(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1C08, type metadata accessor for URLResourceKey, &unk_10093D5E8);
  sub_1000F27D8(&qword_100AD1C10, type metadata accessor for URLResourceKey, &unk_10093D588);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000F085C(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1C78, type metadata accessor for AttributeName, &unk_10093FA94);
  sub_1000F27D8(&qword_100AD1C80, type metadata accessor for AttributeName, &unk_10093CCC4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000F0918(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1C48, type metadata accessor for FeatureKey, &unk_10093D0E8);
  sub_1000F27D8(&qword_100AD1C50, type metadata accessor for FeatureKey, &unk_10093D088);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000F09D4(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1C68, type metadata accessor for TraitKey, &unk_10093CE38);
  sub_1000F27D8(&qword_100AD1C70, type metadata accessor for TraitKey, &unk_10093CDD8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000F0A90(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1D30, type metadata accessor for SystemDesign, &unk_10093FEAC);
  sub_1000F27D8(&qword_100AD1D38, type metadata accessor for SystemDesign, &unk_10093FE4C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000F0B4C(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1B00, type metadata accessor for InfoKey, &unk_10093F5F4);
  sub_1000F27D8(&qword_100AD1B08, type metadata accessor for InfoKey, &unk_10093ECB0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000F0C08(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1B10, type metadata accessor for UIBackgroundTaskIdentifier, &unk_10093EA28);
  sub_1000F27D8(&qword_100AD1B18, type metadata accessor for UIBackgroundTaskIdentifier, &unk_10093E9C8);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000F0CC4(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1BB8, type metadata accessor for NLTagScheme, &unk_10093DD14);
  sub_1000F27D8(&qword_100AD1BC0, type metadata accessor for NLTagScheme, &unk_10093DCB4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000F0D80(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1BA8, type metadata accessor for NLTag, &unk_10093F740);
  sub_1000F27D8(&qword_100AD1BB0, type metadata accessor for NLTag, &unk_10093DE0C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000F0E3C(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1B20, type metadata accessor for LaunchOptionsKey, &unk_10093F638);
  sub_1000F27D8(&qword_100AD1B28, type metadata accessor for LaunchOptionsKey, &unk_10093E8B4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000F0EF8(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1B30, type metadata accessor for NSKeyValueChangeKey, &unk_10093F67C);
  sub_1000F27D8(&qword_100AD1B38, type metadata accessor for NSKeyValueChangeKey, &unk_10093E7A0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000F0FB4(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1208, type metadata accessor for DynamicRange, &unk_10093BE20);
  sub_1000F27D8(&qword_100AD1210, type metadata accessor for DynamicRange, &unk_10093BDC0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000F1070(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1C18, type metadata accessor for MOSuggestionAssetMetadataKey, &unk_10093FA10);
  sub_1000F27D8(&qword_100AD1C20, type metadata accessor for MOSuggestionAssetMetadataKey, &unk_10093D444);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000F112C(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1B58, type metadata accessor for OptionKey, &unk_10093F6C0);
  sub_1000F27D8(&qword_100AD1B60, type metadata accessor for OptionKey, &unk_10093E458);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void sub_1000F11E8(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
}

uint64_t sub_1000F1230(uint64_t a1)
{
  sub_1000F27D8(&qword_100AD1B78, type metadata accessor for ActivityType, &unk_10093E218);
  sub_1000F27D8(&qword_100AD1B80, type metadata accessor for ActivityType, &unk_10093E1C0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void sub_1000F12F4()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
}

uint64_t sub_1000F1330(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

uint64_t sub_1000F1388(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

double sub_1000F13C4(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  return result;
}

uint64_t sub_1000F142C(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_1000F14B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = type metadata accessor for UUID();
  v6 = *(v54 - 8);
  __chkstk_darwin(v54);
  v57 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v56 = &v46 - v9;
  v10 = sub_1000F24EC(&qword_100AD13F0, &qword_10093C068);
  __chkstk_darwin(v10 - 8);
  v53 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v52 = &v46 - v13;
  v62 = a1;
  v63 = a2;
  v14 = *(a3 + 64);
  v47 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v46 = (v15 + 63) >> 6;
  v48 = v6 + 16;
  v49 = v6;
  v55 = (v6 + 32);
  v51 = (v6 + 8);

  v50 = a3;

  v19 = 0;
  if (v17)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v24 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v26 = v49;
      v25 = v50;
      v27 = *(v49 + 72) * (v24 | (v20 << 6));
      v28 = *(v49 + 16);
      v29 = v56;
      v30 = v54;
      v28(v56, *(v50 + 48) + v27, v54);
      v31 = v57;
      v28(v57, *(v25 + 56) + v27, v30);
      v32 = sub_1000F24EC(&qword_100AD13F8, &qword_10093C070);
      v33 = *(v32 + 48);
      v34 = *(v26 + 32);
      v23 = v53;
      v34(v53, v29, v30);
      v34((v23 + v33), v31, v30);
      (*(*(v32 - 8) + 56))(v23, 0, 1, v32);
      v22 = v20;
LABEL_13:
      v35 = v52;
      sub_100021CEC(v23, v52, &qword_100AD13F0, &qword_10093C068);
      v36 = sub_1000F24EC(&qword_100AD13F8, &qword_10093C070);
      if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
      {
        break;
      }

      v37 = *(v36 + 48);
      v38 = v56;
      v39 = *v55;
      v40 = v54;
      (*v55)(v56, v35, v54);
      v41 = v57;
      v39(v57, v35 + v37, v40);
      v60 = UUID.uuidString.getter();
      v61 = v42;
      v58 = UUID.uuidString.getter();
      v59 = v43;
      sub_1000F2B44();
      sub_1000F2B98();
      sub_1000F2BEC();
      RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)();

      v44 = *v51;
      (*v51)(v41, v40);
      result = v44(v38, v40);
      v19 = v22;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    return v62;
  }

  else
  {
LABEL_5:
    if (v46 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v46;
    }

    v22 = v21 - 1;
    v23 = v53;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v46)
      {
        v45 = sub_1000F24EC(&qword_100AD13F8, &qword_10093C070);
        (*(*(v45 - 8) + 56))(v23, 1, 1, v45);
        v17 = 0;
        goto LABEL_13;
      }

      v17 = *(v47 + 8 * v20);
      ++v19;
      if (v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1000F19A8(uint64_t a1, uint64_t a2)
{
  sub_1000065A8(0, &qword_100AD1380, NSKeyedUnarchiver_ptr);
  sub_1000F24EC(&qword_100AD1388, &unk_10093C040);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10093B4B0;
  *(v3 + 32) = sub_1000065A8(0, &qword_100AD1390, NSDictionary_ptr);
  *(v3 + 40) = sub_1000065A8(0, &qword_100AD1398, NSArray_ptr);
  *(v3 + 48) = sub_1000065A8(0, &qword_100AD13A0, NSString_ptr);
  *(v3 + 56) = sub_1000065A8(0, &unk_100ADE730, NSNumber_ptr);
  *(v3 + 64) = sub_1000065A8(0, &unk_100AD13B0, NSNull_ptr);
  *(v3 + 72) = sub_1000065A8(0, &unk_100AE5E10, NSDate_ptr);
  *(v3 + 80) = sub_1000065A8(0, &qword_100AD13C0, NSUUID_ptr);
  *(v3 + 88) = sub_1000065A8(0, &qword_100AD13C8, NSData_ptr);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

  if (!v2)
  {
    if (v4[3])
    {
      sub_1000F24EC(&qword_100AD13D8, &qword_10093C050);
      swift_dynamicCast();
    }

    else
    {
      sub_100004F84(v4, &qword_100AD13D0, &unk_100942DB0);
    }
  }
}

double sub_1000F1BB0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  *&result = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v16 - v9;
  if (*(a1 + 16))
  {
    v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    (*(v4 + 16))(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1 + v11, v3);
    type metadata accessor for MainActor();
    v13 = static MainActor.shared.getter();
    v14 = (v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = &protocol witness table for MainActor;
    (*(v4 + 32))(v15 + v11, v6, v3);
    *(v15 + v14) = ObjectType;
    sub_1003E9628(0, 0, v10, &unk_10093C0B8, v15);
  }

  return result;
}

void sub_1000F1DCC(void *a1, void *a2)
{
  v41 = a2;
  v47 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v2 - 8);
  v44 = v2;
  __chkstk_darwin(v2);
  v42 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for UTType();
  v38 = *(v48 - 8);
  __chkstk_darwin(v48);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v49 = *(v6 - 8);
  v50 = v6;
  __chkstk_darwin(v6);
  v46 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  v39 = *(v9 - 8);
  v40 = v9;
  __chkstk_darwin(v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = dispatch_group_create();
  v13 = sub_1000065A8(0, &qword_100AD6210, OS_dispatch_queue_ptr);
  v45 = "Nothing to import";
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000F27D8(&qword_100AD1500, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000F24EC(&qword_100AD1508, &unk_100954530);
  sub_10001F408(&qword_100AD1510, &qword_100AD1508, &unk_100954530);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v49)[13](v46, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v50);
  v45 = v11;
  v46 = v13;
  v49 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v50 = swift_allocObject();
  *(v50 + 16) = _swiftEmptyArrayStorage;
  v14 = [v47 items];
  sub_1000065A8(0, &unk_100AD4C90, UIDragItem_ptr);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_10:

    v29 = static OS_dispatch_queue.main.getter();
    v30 = swift_allocObject();
    v31 = v41;
    *(v30 + 16) = v50;
    *(v30 + 24) = v31;
    aBlock[4] = sub_1000F2C4C;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A5BCA0;
    v32 = _Block_copy(aBlock);
    v33 = v31;

    v34 = v45;
    static DispatchQoS.unspecified.getter();
    v51 = _swiftEmptyArrayStorage;
    sub_1000F27D8(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
    sub_10001F408(&qword_100AD1530, &unk_100AD6220, &unk_10093C0A0);
    v35 = v42;
    v36 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v32);

    (*(v43 + 8))(v35, v36);
    (*(v39 + 8))(v34, v40);

    return;
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v16 >= 1)
  {
    v17 = 0;
    v47 = (v15 & 0xC000000000000001);
    v18 = (v38 + 8);
    v19 = v15;
    do
    {
      if (v47)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v15 + 8 * v17 + 32);
      }

      v21 = v20;
      ++v17;
      dispatch_group_enter(v12);
      v22 = [v21 itemProvider];
      static AppInfo.exportContentType.getter();
      v23 = swift_allocObject();
      v24 = v49;
      v25 = v50;
      v23[2] = v49;
      v23[3] = v25;
      v23[4] = v12;
      v26 = v24;

      v27 = v12;
      v28 = NSItemProvider.loadFileRepresentation(for:openInPlace:completionHandler:)();

      (*v18)(v5, v48);
      v15 = v19;
    }

    while (v16 != v17);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1000F24DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000F24EC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000F2534()
{
  result = qword_100AD0E48;
  if (!qword_100AD0E48)
  {
    type metadata accessor for _TaskModifier2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD0E48);
  }

  return result;
}

uint64_t sub_1000F265C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000F267C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
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

  *(result + 64) = v3;
  return result;
}

__n128 sub_1000F2708(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000F271C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_1000F27D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F2A18(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000F2A60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_1000EDF58(a1, v4, v5, v7, v6);
}

unint64_t sub_1000F2B44()
{
  result = qword_100AD1400;
  if (!qword_100AD1400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1400);
  }

  return result;
}

unint64_t sub_1000F2B98()
{
  result = qword_100AE1BD0;
  if (!qword_100AE1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1BD0);
  }

  return result;
}

unint64_t sub_1000F2BEC()
{
  result = qword_100AD1410;
  if (!qword_100AD1410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1410);
  }

  return result;
}

uint64_t sub_1000F2C5C()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1000ECF6C(v2, v3);
}

uint64_t sub_1000F2CC0(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_1000EC268(a1, v6, v7, v1 + v5, v8);
}

__n128 sub_1000F2E58(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GalleryCollectionViewLayout.ItemState(uint64_t a1, int a2)
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

uint64_t sub_1000F30F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000F3110(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_1000F4A8C()
{
  result = qword_100AD19C8;
  if (!qword_100AD19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD19C8);
  }

  return result;
}

unint64_t sub_1000F5258()
{
  result = qword_100AD1B50;
  if (!qword_100AD1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1B50);
  }

  return result;
}

id sub_1000F5610(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetMidX(*&a1);
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  CGRectGetMinY(v32);
  DebugData.init(name:)(v9);
  v11 = v10;
  v13 = v12;
  v33.origin.x = a1;
  v33.origin.y = a2;
  v33.size.width = a3;
  v33.size.height = a4;
  CGRectGetMidX(v33);
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  CGRectGetMaxY(v34);
  result = [v4 characterRangeAtPoint:{v11, v13}];
  if (result)
  {
    v16 = result;
    DebugData.init(name:)(*&result);
    v17 = [v4 characterRangeAtPoint:?];
    if (v17)
    {
      v18 = v17;
      v19 = [v4 beginningOfDocument];
      v20 = [v16 start];
      v21 = [v16 end];
      v22 = [v4 offsetFromPosition:v19 toPosition:v20];
      v23 = [v4 offsetFromPosition:v20 toPosition:v21];

      v24 = [v4 beginningOfDocument];
      v25 = [v18 start];
      v26 = [v18 end];
      v27 = [v4 offsetFromPosition:v24 toPosition:v25];
      v28 = [v4 offsetFromPosition:v25 toPosition:v26];

      v30.location = v22;
      v30.length = v23;
      v31.location = v27;
      v31.length = v28;
      location = NSUnionRange(v30, v31).location;

      return location;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_1000F5890()
{
  v1 = [v0 closestPositionToPoint:?];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v0 textRangeFromPosition:v2 toPosition:v2];
  if (v3)
  {
    v4 = v3;
    v5 = [v0 beginningOfDocument];
    v6 = [v4 start];
    v7 = [v4 end];
    v8 = [v0 offsetFromPosition:v5 toPosition:v6];
    [v0 offsetFromPosition:v6 toPosition:v7];

    v2 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_1000F59DC(uint64_t a1, uint64_t a2)
{
  v5 = [v2 documentRange];
  v6 = [v5 location];

  v7 = [v2 locationFromLocation:v6 withOffset:a1];
  swift_unknownObjectRelease();
  if (v7)
  {
    v8 = [v2 locationFromLocation:v7 withOffset:a2];
    if (v8)
    {
      v9 = [objc_allocWithZone(NSTextRange) initWithLocation:v7 endLocation:v8];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v9;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_1000F5AE4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, CGRect *a7)
{
  v8.size.height = a4;
  v8.size.width = a3;
  v8.origin.y = a2;
  v8.origin.x = a1;
  *a7 = CGRectUnion(*a7, v8);
  return 1;
}

void sub_1000F5B2C(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3 = String._bridgeToObjectiveC()();

  qword_100B2F2E0 = v3;
}

uint64_t sub_1000F5B94()
{
  sub_1000F24EC(&qword_100AD1F00, &qword_100940068);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940050;
  *(inited + 32) = 42;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = NSTextListMarkerDisc;
  *(inited + 56) = 45;
  *(inited + 64) = 0xE100000000000000;
  *(inited + 72) = NSTextListMarkerHyphen;
  v1 = NSTextListMarkerDisc;
  v2 = NSTextListMarkerHyphen;
  v3 = sub_100362FCC(inited);
  swift_setDeallocating();
  sub_1000F24EC(&qword_100AD1F08, &unk_100940070);
  result = swift_arrayDestroy();
  off_100AD1EC0 = v3;
  return result;
}

uint64_t sub_1000F5C6C(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return String.remove(at:)(a1);
  }

LABEL_5:
  a1 = String.index(before:)();

  return String.remove(at:)(a1);
}

uint64_t sub_1000F5CD4(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 == a5 && a2 == a6 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

id sub_1000F5D40(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD1EC8, &qword_100940060);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - v6;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000F24EC(&qword_100AD1ED0, &qword_10094AE20);
  v59 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  v12 = sub_1000F24EC(&qword_100AD1ED8, &unk_100948370);
  __chkstk_darwin(v12 - 8);
  v14 = &v51 - v13;
  v15 = sub_1000F24EC(&qword_100AD1EE0, &unk_100948380);
  __chkstk_darwin(v15);
  v18 = &v51 - v17;
  if (!a2)
  {
    return 0;
  }

  v56 = v5;
  v57 = v4;
  v55 = v18;
  v58 = v16;
  v19 = qword_100ACF928;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = off_100AD1EC0;
  if (*(off_100AD1EC0 + 2))
  {
    v21 = sub_100094E98(a1, a2);
    if (v22)
    {
      v23 = v21;

      return [objc_allocWithZone(NSTextList) initWithMarkerFormat:*(v20[7] + 8 * v23) options:0 startingItemNumber:0];
    }
  }

  v25 = sub_1000961EC(a1, a2);
  if (v26)
  {
    if (v25 == 46 && v26 == 0xE100000000000000)
    {

LABEL_12:
      v54 = v15;
      v62 = a1;
      v63 = a2;
      sub_1000F5C6C(v27);

      v29 = v62;
      v30 = v63;
      goto LABEL_16;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v28)
    {
      goto LABEL_12;
    }
  }

  v62 = a1;
  v63 = a2;
  v60 = 46;
  v61 = 0xE100000000000000;
  sub_1000777B4();
  if ((StringProtocol.contains<A>(_:)() & 1) == 0)
  {
    goto LABEL_30;
  }

  v62 = a1;
  v63 = a2;
  v31 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  if (!*(v31 + 16))
  {
    goto LABEL_30;
  }

  v54 = v15;

  v29 = static String._fromSubstring(_:)();
  v30 = v32;

LABEL_16:
  static Locale.autoupdatingCurrent.getter();
  sub_1000F6568();
  IntegerFormatStyle.init(locale:)();
  if ((v30 & 0x2000000000000000) != 0)
  {
    v33 = HIBYTE(v30) & 0xF;
  }

  else
  {
    v33 = v29 & 0xFFFFFFFFFFFFLL;
  }

  v52 = v33;
  v53 = v29;
  String.subscript.getter();
  sub_10000B58C(&qword_100AD1EE8, &qword_100AD1ED0, &qword_10094AE20, &protocol conformance descriptor for IntegerFormatStyle<A>);
  dispatch thunk of RegexComponent.regex.getter();
  v34 = v57;
  Regex.firstMatch(in:)();

  (*(v56 + 8))(v7, v34);
  (*(v59 + 8))(v11, v9);
  v35 = v54;
  v36 = v58;
  if ((*(v58 + 48))(v14, 1, v54) == 1)
  {

    sub_1000F65BC(v14);
    return 0;
  }

  v37 = v55;
  (*(v36 + 32))(v55, v14, v35);
  v38 = Regex.Match.range.getter();
  v39 = v53;
  v40 = sub_10047E900(v38, v53, v30);
  LOBYTE(v39) = sub_1000F5CD4(v39, v30, v40, v41, v42, v43);

  if ((v39 & 1) == 0)
  {
    (*(v36 + 8))(v37, v35);
LABEL_30:

    return 0;
  }

  Regex.Match.range.getter();
  if (v44 >> 14 != 4 * v52)
  {
    (*(v58 + 8))(v37, v35);
    goto LABEL_30;
  }

  if (qword_100ACF920 != -1)
  {
    swift_once();
  }

  v45 = qword_100B2F2E0;
  v46 = v55;
  Regex.Match.output.getter();
  v47 = [objc_allocWithZone(NSTextList) initWithMarkerFormat:v45 options:0 startingItemNumber:v62];
  v62 = Regex.Match.range.getter();
  v63 = v48;
  v60 = v53;
  v61 = v30;
  sub_1000F24EC(&qword_100AD1EF0, &unk_100972800);
  sub_10000B58C(&qword_100AD1EF8, &qword_100AD1EF0, &unk_100972800, &protocol conformance descriptor for Range<A>);
  sub_1000777B4();
  _NSRange.init<A, B>(_:in:)();
  v50 = v49;
  result = (*(v58 + 8))(v46, v35);
  if (!__OFADD__(v50, 1))
  {
    return v47;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000F6568()
{
  result = qword_100AD4E20;
  if (!qword_100AD4E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4E20);
  }

  return result;
}

uint64_t sub_1000F65BC(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD1ED8, &unk_100948370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1000F6624()
{
  sub_1000F9008();
  sub_1000F7D38(*(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType));
  v2 = *(v0 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_stateOfMindAsset);
  if (v2)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = &v2[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    v5 = *&v2[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    v6 = *&v2[OBJC_IVAR____TtC7Journal5Asset_didUpdate + 8];
    *v4 = sub_1000FBA14;
    v4[1] = v3;
    v7 = v2;

    sub_100004DF8(v5, v6);
  }

  return result;
}

void sub_1000F6700(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1000F9008();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
    }

    else
    {
      v6 = 6;
    }

    sub_1000F7D38(v6);
  }
}

uint64_t sub_1000F67F4()
{
  if (*(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) > 6u)
  {

    v2 = 0;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v2 = v1 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1000F6968()
{
  if (*(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) > 6u)
  {

    return 4;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v1)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }
}

id sub_1000F6B24()
{
  if (v0[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] > 6u)
  {

    return 0;
  }

  v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v1)
  {
    return 0;
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for StateOfMindAssetView(0);
  result = objc_msgSendSuper2(&v5, "accessibilityValue");
  if (result)
  {
    v3 = result;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }

  return result;
}

id sub_1000F6D50(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel;
  *&v4[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_secondaryLabel;
  *&v4[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_typeLabel;
  *&v4[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_footnoteLabel;
  *&v4[v12] = [objc_allocWithZone(UILabel) init];
  v13 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_valenceImageView;
  *&v4[v13] = [objc_allocWithZone(UIImageView) init];
  v14 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_gradientView;
  type metadata accessor for GradientView(0);
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_stateOfMindAsset] = 0;
  v15 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_latestImageRequestID;
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  v19.receiver = v4;
  v19.super_class = type metadata accessor for StateOfMindAssetView(0);
  v17 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  sub_1000F70C4();

  return v17;
}

id sub_1000F6F14(void *a1)
{
  v3 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_secondaryLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_typeLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_footnoteLabel;
  *&v1[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_valenceImageView;
  *&v1[v7] = [objc_allocWithZone(UIImageView) init];
  v8 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_gradientView;
  type metadata accessor for GradientView(0);
  *&v1[v8] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_stateOfMindAsset] = 0;
  v9 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_latestImageRequestID;
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 56))(&v1[v9], 1, 1, v10);
  v15.receiver = v1;
  v15.super_class = type metadata accessor for StateOfMindAssetView(0);
  v11 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    sub_1000F70C4();
  }

  return v12;
}

uint64_t sub_1000F70C4()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v4 = String._bridgeToObjectiveC()();

  [v0 setAccessibilityLabel:v4];

  v5 = *(v0 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_stateOfMindAsset);
  if (v5 && (v6 = v5, sub_1001975A4(), v8 = v7, v6, v8))
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v1 setAccessibilityValue:v9];

  [v1 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v10 = sub_1000F75A0();
  v11 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel;
  v12 = *(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel);
  *(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel) = v10;

  v13 = sub_1000F779C(&selRef_setLineBreakMode_, 4, 4);
  v14 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_secondaryLabel;
  v15 = *(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_secondaryLabel);
  *(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_secondaryLabel) = v13;

  v16 = sub_1000F779C(&selRef_setLineBreakMode_, 4, 4);
  v17 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_typeLabel;
  v18 = *(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_typeLabel);
  *(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_typeLabel) = v16;

  v19 = sub_1000F779C(&selRef_setNumberOfLines_, 0, 1);
  v20 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_footnoteLabel;
  v21 = *(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_footnoteLabel);
  *(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_footnoteLabel) = v19;

  v22 = *(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_gradientView);
  [v1 addSubview:v22];
  v23 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_valenceImageView;
  [v1 addSubview:*(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_valenceImageView)];
  v24 = OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView;
  [v1 addSubview:*(v1 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView)];
  [v1 addSubview:*(v1 + v11)];
  [v1 addSubview:*(v1 + v14)];
  [v1 addSubview:*(v1 + v17)];
  [v1 addSubview:*(v1 + v20)];
  sub_1000F24EC(&unk_100AEBEC0, &unk_1009432D0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100940080;
  *(v25 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v25 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  LODWORD(v26) = 1148846080;
  [*(v1 + v11) setContentCompressionResistancePriority:1 forAxis:v26];
  LODWORD(v27) = 1132068864;
  [*(v1 + v23) setContentCompressionResistancePriority:1 forAxis:v27];
  LODWORD(v28) = 1144750080;
  [*(v1 + v23) setContentCompressionResistancePriority:0 forAxis:v28];
  LODWORD(v29) = 1148846080;
  [*(v1 + v14) setContentCompressionResistancePriority:1 forAxis:v29];
  LODWORD(v30) = 1148846080;
  [*(v1 + v17) setContentCompressionResistancePriority:1 forAxis:v30];
  LODWORD(v31) = 1148846080;
  [*(v1 + v20) setContentCompressionResistancePriority:1 forAxis:v31];
  sub_100013178(0.0);

  [v22 setAlpha:0.0];
  v32 = *(v1 + v24);
  sub_100013178(0.0);

  [*(v1 + v11) setAlpha:0.0];
  [*(v1 + v14) setAlpha:0.0];
  [*(v1 + v17) setAlpha:0.0];
  [*(v1 + v20) setAlpha:0.0];
  v33 = [*(v1 + v23) setAlpha:0.0];
  return (*((swift_isaMask & *v1) + 0x100))(v33);
}

id sub_1000F75A0()
{
  v0 = [objc_allocWithZone(UILabel) init];
  if (qword_100AD03F0 != -1)
  {
    swift_once();
  }

  v1 = qword_100B303E8;
  v2 = [qword_100B303E8 fontDescriptor];
  v3 = [v1 fontDescriptor];
  v4 = [v3 symbolicTraits];

  v5 = [v2 fontDescriptorWithSymbolicTraits:v4 | 0x8000];
  if (v5)
  {
    v6 = [objc_opt_self() fontWithDescriptor:v5 size:0.0];
  }

  else
  {
    v6 = v1;
  }

  [v0 setFont:v6];

  v7 = [objc_opt_self() labelColor];
  v8 = [v7 colorWithAlphaComponent:0.6];

  [v0 setTextColor:v8];
  [v0 setPreferredVibrancy:1];
  [v0 setTextAlignment:4];
  [v0 setLineBreakMode:4];
  [v0 setAdjustsFontForContentSizeCategory:1];
  return v0;
}

id sub_1000F779C(SEL *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(UILabel) init];
  if (qword_100AD03E0 != -1)
  {
    swift_once();
  }

  v7 = qword_100B303D8;
  v8 = [qword_100B303D8 fontDescriptor];
  v9 = [v7 fontDescriptor];
  v10 = [v9 symbolicTraits];

  v11 = [v8 fontDescriptorWithSymbolicTraits:v10 | 0x8000];
  if (v11)
  {
    v12 = [objc_opt_self() fontWithDescriptor:v11 size:0.0];
  }

  else
  {
    v12 = v7;
  }

  [v6 setFont:v12];

  v13 = [objc_opt_self() tertiaryLabelColor];
  [v6 setTextColor:v13];

  [v6 setPreferredVibrancy:1];
  [v6 *a1];
  [v6 setTextAlignment:a3];
  [v6 setAdjustsFontForContentSizeCategory:1];
  return v6;
}

double sub_1000F7980(__n128 a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for StateOfMindAssetView(0);
  objc_msgSendSuper2(&v7, "layoutSubviews");
  if (v1[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] > 6u)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      v4 = [v1 traitCollection];
      v5 = [v4 preferredContentSizeCategory];

      LOBYTE(v4) = static UIContentSizeCategory.>= infix(_:_:)();
      if (v4)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      [*&v1[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel] setNumberOfLines:v6];
      [*&v1[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_secondaryLabel] setNumberOfLines:v6];
      [*&v1[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_typeLabel] setNumberOfLines:v6];
    }
  }

  return result;
}

double sub_1000F7BD4()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v6[4] = sub_1000FBC28;
  v6[5] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100006C7C;
  v6[3] = &unk_100A5CB30;
  v3 = _Block_copy(v6);
  v4 = v0;

  [v1 animateWithDuration:1 delay:v3 options:0 animations:0.11 completion:0.0];
  _Block_release(v3);
  [*&v4[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_gradientView] setClipsToBounds:1];
  return sub_1000F9008();
}

void sub_1000F7D38(unsigned int a1)
{
  v2 = v1;
  v4 = _s23YearAdaptiveFormatStyleVMa(0);
  __chkstk_darwin(v4);
  v102 = v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v99 = *(v6 - 8);
  __chkstk_darwin(v6);
  v97 = v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for Date.FormatStyle.DateStyle();
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v9 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v10 - 8);
  v101 = v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v100 = v89 - v13;
  __chkstk_darwin(v14);
  v16 = v89 - v15;
  v17 = sub_1000F24EC(&qword_100AE6680, &qword_1009400E0);
  __chkstk_darwin(v17 - 8);
  v19 = v89 - v18;
  v20 = type metadata accessor for StateOfMindAssetMetadata();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v104 = v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *&v2[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_stateOfMindAsset];
  if (v23)
  {
    v24 = v2;
    v25 = v23;
    v103 = v20;
    sub_1006AAF14(v19);
    v26 = v103;
    if ((*(v21 + 48))(v19, 1, v103) == 1)
    {

      sub_100004F84(v19, &qword_100AE6680, &qword_1009400E0);
      return;
    }

    v89[1] = v4;
    v92 = v21;
    (*(v21 + 32))(v104, v19, v26);
    *&v90 = StateOfMindAssetMetadata.reflectiveInterval.getter();
    LODWORD(v91) = v27;
    sub_1001975A4();
    if (v28)
    {
      v29 = String._bridgeToObjectiveC()();
    }

    else
    {
      v29 = 0;
    }

    [v24 setAccessibilityValue:v29];

    sub_1001956A8(1);
    v95 = a1;
    if (!v31 && v30 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v32 = v6;
      v33 = *&v24[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel];
      sub_100194914();
      v34 = String._bridgeToObjectiveC()();
    }

    else
    {
      v32 = v6;
      v33 = *&v24[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel];
      v34 = String._bridgeToObjectiveC()();
    }

    [v33 setText:v34];

    v35 = v95;
    v93 = v24;
    v94 = v25;
    if (v95 > 3u)
    {
      v36 = v24;
      if (v95 <= 5u)
      {
        if (v95 == 4)
        {

          goto LABEL_30;
        }

        v37 = v32;
LABEL_18:
        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v38 & 1) == 0)
        {
          if (qword_100AD0498 != -1)
          {
            swift_once();
          }

          v89[0] = *(&xmmword_100B30510 + 1);
          sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_100940080;
          StateOfMindAssetMetadata.date.getter();
          v40 = type metadata accessor for Date();
          v41 = *(v40 - 8);
          if ((*(v41 + 48))(v16, 1, v40) == 1)
          {
            sub_100004F84(v16, &unk_100AD4790, &unk_10093B4E0);
            v42 = 0;
            v43 = 0;
          }

          else
          {
            static Date.FormatStyle.DateStyle.omitted.getter();
            v44 = v97;
            static Date.FormatStyle.TimeStyle.shortened.getter();
            v42 = Date.formatted(date:time:)();
            v43 = v45;
            (*(v99 + 8))(v44, v37);
            (*(v96 + 8))(v9, v98);
            (*(v41 + 8))(v16, v40);
          }

          v46 = v93;
          *(v39 + 56) = &type metadata for String;
          *(v39 + 64) = sub_100031B20();
          if (v43)
          {
            v47 = v42;
          }

          else
          {
            v47 = 0;
          }

          v48 = 0xE000000000000000;
          if (v43)
          {
            v48 = v43;
          }

          *(v39 + 32) = v47;
          *(v39 + 40) = v48;
          static String.localizedStringWithFormat(_:_:)();

          v35 = v95;
          v36 = v46;
        }

LABEL_30:
        v49 = v91 | (v90 != 2);
        if (!(v91 & 1 | (v90 != 2)))
        {

          if (qword_100AD0490 != -1)
          {
            swift_once();
          }
        }

        v50 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_typeLabel;
        v51 = *&v36[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_typeLabel];
        v52 = String._bridgeToObjectiveC()();
        [v51 setText:v52];

        sub_100196950(1);
        if ((v54 || v53 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_39;
        }

        if (v35 > 6u)
        {

          goto LABEL_39;
        }

        v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v55)
        {
LABEL_39:

          v56 = *&v36[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_secondaryLabel];
          v57 = String._bridgeToObjectiveC()();

          [v56 setText:v57];
          v58 = v94;
          goto LABEL_51;
        }

        v56 = *&v36[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_secondaryLabel];
        if (v35 <= 2u)
        {
          v58 = v94;
          if (v35 > 1u)
          {
            v59 = v56;

LABEL_50:
            v57 = String._bridgeToObjectiveC()();

            [v56 setText:v57];
LABEL_51:

            if (v35 > 6u)
            {
            }

            else
            {
              v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v62 & 1) == 0)
              {
LABEL_73:
                sub_1000FAA80(v35);

                (*(v92 + 8))(v104, v103);
                return;
              }
            }

            v96 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_footnoteLabel;
            [*&v36[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_footnoteLabel] setHidden:0];
            sub_1001956A8(0);
            if (!v64 && v63 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v65 = *&v36[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel];
              sub_100194914();
              v66 = String._bridgeToObjectiveC()();

              [v65 setText:v66];

              [*&v36[v50] setText:0];
            }

            else
            {
              v67 = *&v36[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel];
              v68 = String._bridgeToObjectiveC()();

              [v67 setText:v68];

              v69 = *&v36[v50];
              sub_100194914();
              v70 = String._bridgeToObjectiveC()();

              [v69 setText:v70];
            }

            v71 = *&v36[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_secondaryLabel];
            sub_100196950(0);
            v72 = String._bridgeToObjectiveC()();

            [v71 setText:v72];

            if (qword_100AD04B8 != -1)
            {
              swift_once();
            }

            v98 = *(&xmmword_100B30550 + 1);
            v99 = xmmword_100B30550;
            v91 = sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
            v73 = swift_allocObject();
            v90 = xmmword_100940050;
            *(v73 + 16) = xmmword_100940050;
            v74 = v100;
            if (qword_100AD0490 != -1)
            {
              swift_once();
            }

            v75 = xmmword_100B30500;
            *(v73 + 56) = &type metadata for String;
            v76 = sub_100031B20();
            *(v73 + 64) = v76;
            *(v73 + 32) = v75;

            StateOfMindAssetMetadata.date.getter();
            v77 = type metadata accessor for Date();
            v78 = *(v77 - 8);
            v79 = *(v78 + 48);
            v80 = v79(v74, 1, v77);
            LODWORD(v97) = v49;
            if (v80 == 1)
            {
              sub_100004F84(v74, &unk_100AD4790, &unk_10093B4E0);
              *(v73 + 96) = &type metadata for String;
              *(v73 + 104) = v76;
              *(v73 + 72) = 0;
              *(v73 + 80) = 0xE000000000000000;
            }

            else
            {
              v81 = v74;
              v82 = v102;
              static Date.FormatStyle.TimeStyle.omitted.getter();
              static FormatStyleCapitalizationContext.standalone.getter();
              static Locale.autoupdatingCurrent.getter();
              static Calendar.autoupdatingCurrent.getter();
              static TimeZone.autoupdatingCurrent.getter();
              static Date.now.getter();
              v106 = &type metadata for String;
              v107 = v76;
              sub_10000688C(&qword_100AD1F88, _s23YearAdaptiveFormatStyleVMa, &unk_100972100);
              Date.formatted<A>(_:)();
              sub_1000FBBCC(v82);
              (*(v78 + 8))(v81, v77);
              sub_100018480(&v105, v73 + 72);
            }

            v100 = static String.localizedStringWithFormat(_:_:)();

            v83 = swift_allocObject();
            *(v83 + 16) = v90;
            if (qword_100AD04B0 != -1)
            {
              swift_once();
            }

            v84 = xmmword_100B30540;
            *(v83 + 56) = &type metadata for String;
            *(v83 + 64) = v76;
            *(v83 + 32) = v84;

            v85 = v101;
            StateOfMindAssetMetadata.date.getter();
            if (v79(v85, 1, v77) == 1)
            {
              sub_100004F84(v85, &unk_100AD4790, &unk_10093B4E0);
              *(v83 + 96) = &type metadata for String;
              *(v83 + 104) = v76;
              *(v83 + 72) = 0;
              *(v83 + 80) = 0xE000000000000000;
            }

            else
            {
              v86 = v102;
              static Date.FormatStyle.TimeStyle.shortened.getter();
              static FormatStyleCapitalizationContext.standalone.getter();
              static Locale.autoupdatingCurrent.getter();
              static Calendar.autoupdatingCurrent.getter();
              static TimeZone.autoupdatingCurrent.getter();
              static Date.now.getter();
              v106 = &type metadata for String;
              v107 = v76;
              sub_10000688C(&qword_100AD1F88, _s23YearAdaptiveFormatStyleVMa, &unk_100972100);
              Date.formatted<A>(_:)();
              sub_1000FBBCC(v86);
              (*(v78 + 8))(v85, v77);
              sub_100018480(&v105, v83 + 72);
            }

            v35 = v95;
            v58 = v94;
            static String.localizedStringWithFormat(_:_:)();

            v87 = *&v93[v96];

            v88 = String._bridgeToObjectiveC()();

            [v87 setText:v88];

            goto LABEL_73;
          }
        }

        else
        {
          v58 = v94;
        }

        v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v61 = v56;

        if (v60)
        {
        }

        v35 = v95;
        goto LABEL_50;
      }
    }

    else
    {
      v36 = v24;
    }

    v37 = v32;
    goto LABEL_18;
  }
}

double sub_1000F9008()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v2 - 8);
  v58 = &v52 - v3;
  v4 = type metadata accessor for UUID();
  v63 = *(v4 - 8);
  __chkstk_darwin(v4);
  v61 = v5;
  v62 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v52 - v7;
  v9 = type metadata accessor for Date();
  v64 = *(v9 - 8);
  v65 = v9;
  __chkstk_darwin(v9);
  v59 = v10;
  v60 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v66 = &v52 - v12;
  v13 = sub_1000F24EC(&qword_100AE6680, &qword_1009400E0);
  __chkstk_darwin(v13 - 8);
  v15 = &v52 - v14;
  v16 = type metadata accessor for StateOfMindAssetMetadata();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_stateOfMindAsset;
  v22 = *&v0[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_stateOfMindAsset];
  if (!v22 || !*(v22 + OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata))
  {
    (*(v17 + 56))(v15, 1, 1, v16, v18);
LABEL_7:
    sub_100004F84(v15, &qword_100AE6680, &qword_1009400E0);
    v26 = *&v0[v21];
    if (!v26)
    {
      return result;
    }

LABEL_8:
    v57 = v26;
    Date.init()();
    v55 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
    if (*(v1 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) > 6u)
    {
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
        v31 = v4;
        if (qword_100ACFB90 != -1)
        {
          swift_once();
        }

        v32 = &qword_100B2F628;
LABEL_23:
        v56 = *v32;
        v33 = [v1 traitCollection];
        v34 = [v33 userInterfaceStyle];

        v54 = v34 != 1;
        v35 = v8;
        UUID.init()();
        v36 = v63;
        v37 = *(v63 + 16);
        v38 = v58;
        v53 = v35;
        v39 = v31;
        v37(v58, v35, v31);
        (*(v36 + 56))(v38, 0, 1, v31);
        v40 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_latestImageRequestID;
        swift_beginAccess();
        sub_100075184(v38, v1 + v40);
        swift_endAccess();
        LODWORD(v58) = v55[v1];
        v55 = [v1 traitCollection];
        v41 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v42 = v62;
        v37(v62, v35, v31);
        v43 = v64;
        v44 = v65;
        v45 = v60;
        (*(v64 + 16))(v60, v66, v65);
        v46 = (*(v36 + 80) + 24) & ~*(v36 + 80);
        v47 = (v61 + *(v43 + 80) + v46) & ~*(v43 + 80);
        v48 = swift_allocObject();
        *(v48 + 16) = v41;
        (*(v36 + 32))(v48 + v46, v42, v39);
        (*(v43 + 32))(v48 + v47, v45, v44);

        v49 = v55;
        v50 = v56;
        v51 = v57;
        sub_100076220(v58, v54, 0, v56, v55, sub_1000FBA1C, v48);

        (*(v36 + 8))(v53, v39);
        (*(v43 + 8))(v66, v44);

        return result;
      }
    }

    v31 = v4;
    if (qword_100ACFB98 != -1)
    {
      swift_once();
    }

    v32 = &qword_100B2F630;
    goto LABEL_23;
  }

  sub_10025BAFC(v15);

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    goto LABEL_7;
  }

  (*(v17 + 32))(v20, v15, v16);
  v23 = [v0 traitCollection];
  if ([v23 userInterfaceStyle] == 1)
  {
    sub_1001954FC();
  }

  else
  {
    sub_100195514();
  }

  v27 = v24;

  if (v27)
  {
    v57 = v4;
    v28 = *(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_gradientView);
    swift_getKeyPath();
    swift_getKeyPath();
    v67 = v27;
    v29 = v28;
    v4 = v57;
    static UIView.Invalidating.subscript.setter();
  }

  (*(v17 + 8))(v20, v16);
  v26 = *(v1 + v21);
  if (v26)
  {
    goto LABEL_8;
  }

  return result;
}

double sub_1000F9838(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v34 = a1;
  v37 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v35 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Date();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v30);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v28 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005508();
  v33 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v10 + 16))(v12, v31, v9);
  v15 = v29;
  v16 = v30;
  (*(v7 + 16))(v29, v32, v30);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = (v11 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  v20 = v34;
  *(v19 + 16) = v13;
  *(v19 + 24) = v20;
  (*(v10 + 32))(v19 + v17, v12, v28);
  (*(v7 + 32))(v19 + v18, v15, v16);
  aBlock[4] = sub_1000FBAF4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A5CAB8;
  v21 = _Block_copy(aBlock);
  v22 = v20;

  v23 = v35;
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_10000688C(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
  sub_100006610();
  v25 = v36;
  v24 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v33;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v40 + 8))(v25, v24);
  (*(v38 + 8))(v23, v39);

  return result;
}

void sub_1000F9D0C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v6 = type metadata accessor for Date();
  v64 = *(v6 - 8);
  v65 = v6;
  __chkstk_darwin(v6);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v60 = &v56 - v9;
  v10 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v10 - 8);
  v62 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v66 = &v56 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000F24EC(&unk_100AEEE20, &qword_1009480F0);
  __chkstk_darwin(v18);
  v20 = &v56 - v19;
  v21 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v21 - 8);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v56 - v25;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  if (!a2)
  {

LABEL_7:
    swift_beginAccess();
    v34 = swift_unknownObjectWeakLoadStrong();
    if (!v34)
    {
      return;
    }

    v35 = v34;
    goto LABEL_27;
  }

  v57 = v17;
  v58 = a2;
  v28 = Strong;
  (*(v15 + 16))(v26, a3, v14);
  (*(v15 + 56))(v26, 0, 1, v14);
  v29 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_latestImageRequestID;
  swift_beginAccess();
  v30 = *(v18 + 48);
  sub_1000082B4(v26, v20, &qword_100AD1420, &unk_10093C080);
  v59 = v28;
  sub_1000082B4(&v28[v29], &v20[v30], &qword_100AD1420, &unk_10093C080);
  v31 = *(v15 + 48);
  if (v31(v20, 1, v14) == 1)
  {
    v32 = v58;
    v33 = v58;
    sub_100004F84(v26, &qword_100AD1420, &unk_10093C080);
    if (v31(&v20[v30], 1, v14) == 1)
    {
      sub_100004F84(v20, &qword_100AD1420, &unk_10093C080);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_1000082B4(v20, v23, &qword_100AD1420, &unk_10093C080);
  v36 = v31(&v20[v30], 1, v14);
  v32 = v58;
  if (v36 == 1)
  {
    v37 = v58;
    sub_100004F84(v26, &qword_100AD1420, &unk_10093C080);
    (*(v15 + 8))(v23, v14);
LABEL_11:
    sub_100004F84(v20, &unk_100AEEE20, &qword_1009480F0);

    v35 = v32;
    goto LABEL_28;
  }

  v38 = &v20[v30];
  v39 = v57;
  (*(v15 + 32))(v57, v38, v14);
  sub_10000688C(&qword_100AD9220, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v35 = v32;
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v15 + 8);
  v41(v39, v14);
  sub_100004F84(v26, &qword_100AD1420, &unk_10093C080);
  v41(v23, v14);
  v32 = v58;
  sub_100004F84(v20, &qword_100AD1420, &unk_10093C080);
  if (v40)
  {
LABEL_13:
    v42 = v59;
    [*&v59[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_valenceImageView] setImage:v32];
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (v42[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] > 3u)
    {
      v44 = v65;
      v45 = v66;
      v46 = v64;
      if (v42[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] > 5u && v42[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] != 6)
      {
        v47 = 1;
LABEL_20:

        v35 = v59;

        (*(v46 + 16))(v45, v63, v44);
        (*(v46 + 56))(v45, 0, 1, v44);
        if (v47)
        {
LABEL_21:
          sub_1000FA6A8(v43);

LABEL_26:
          sub_100004F84(v45, &unk_100AD4790, &unk_10093B4E0);

LABEL_27:
          v35[OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading] = 1;
          goto LABEL_28;
        }

        v48 = v62;
        sub_1000082B4(v45, v62, &unk_100AD4790, &unk_10093B4E0);
        if ((*(v46 + 48))(v48, 1, v44) == 1)
        {
          sub_100004F84(v48, &unk_100AD4790, &unk_10093B4E0);
        }

        else
        {
          v49 = v60;
          (*(v46 + 32))(v60, v48, v44);
          v50 = v61;
          static Date.now.getter();
          Date.timeIntervalSince(_:)();
          v52 = v51;
          v53 = *(v46 + 8);
          v53(v50, v44);
          v53(v49, v44);
          if (v52 < 0.1)
          {
            goto LABEL_21;
          }
        }

        v54 = objc_opt_self();
        aBlock[4] = sub_1000FBBC4;
        aBlock[5] = v43;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006C7C;
        aBlock[3] = &unk_100A5CAE0;
        v55 = _Block_copy(aBlock);

        [v54 animateWithDuration:0x10000 delay:v55 options:0 animations:0.1 completion:0.0];

        _Block_release(v55);

        goto LABEL_26;
      }
    }

    else
    {
      v44 = v65;
      v45 = v66;
      v46 = v64;
    }

    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_20;
  }

LABEL_28:
}

void sub_1000FA6A8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [*(Strong + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_gradientView) setAlpha:1.0];
    v3 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_valenceImageView;
    [*&v2[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_valenceImageView] setContentMode:1];
    v2[OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading] = 1;
    [*&v2[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView] setHidden:1];
    [*&v2[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel] setAlpha:1.0];
    [*&v2[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_secondaryLabel] setAlpha:1.0];
    [*&v2[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_typeLabel] setAlpha:1.0];
    [*&v2[v3] setAlpha:1.0];
  }
}

double sub_1000FA7C8(char *a1)
{
  v2 = sub_1000F24EC(&qword_100AE6680, &qword_1009400E0);
  __chkstk_darwin(v2 - 8);
  v4 = v17 - v3;
  v5 = type metadata accessor for StateOfMindAssetMetadata();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a1[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_stateOfMindAsset];
  if (!v10 || !*(v10 + OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata))
  {
    (*(v6 + 56))(v4, 1, 1, v5, v7);
    goto LABEL_7;
  }

  sub_10025BAFC(v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
LABEL_7:
    sub_100004F84(v4, &qword_100AE6680, &qword_1009400E0);
    return result;
  }

  (*(v6 + 32))(v9, v4, v5);
  v11 = [a1 traitCollection];
  if ([v11 userInterfaceStyle] == 1)
  {
    sub_1001954FC();
  }

  else
  {
    sub_100195514();
  }

  v14 = v12;

  if (!v14)
  {
    goto LABEL_14;
  }

  if (v14 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_13;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    v15 = *&a1[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_gradientView];
    swift_getKeyPath();
    swift_getKeyPath();
    v17[1] = v14;
    v16 = v15;
    static UIView.Invalidating.subscript.setter();
LABEL_14:
    (*(v6 + 8))(v9, v5);
    return result;
  }

  (*(v6 + 8))(v9, v5);

  return result;
}

void sub_1000FAA80(unsigned __int8 a1)
{
  v2 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel;
  v3 = qword_100AD03F0;
  v4 = *(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel);
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_100B303E8;
  v6 = [qword_100B303E8 fontDescriptor];
  v7 = [v5 fontDescriptor];
  v8 = [v7 symbolicTraits];

  v9 = [v6 fontDescriptorWithSymbolicTraits:v8 | 0x8000];
  if (v9)
  {
    v10 = [objc_opt_self() fontWithDescriptor:v9 size:0.0];
  }

  else
  {
    v10 = v5;
  }

  [v4 setFont:v10];

  v11 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_secondaryLabel;
  v12 = qword_100AD03E0;
  v13 = *(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_secondaryLabel);
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_100B303D8;
  v15 = [qword_100B303D8 fontDescriptor];
  v16 = [v14 fontDescriptor];
  v17 = [v16 symbolicTraits];

  v18 = [v15 fontDescriptorWithSymbolicTraits:v17 | 0x8000];
  if (v18)
  {
    v19 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];
  }

  else
  {
    v19 = v14;
  }

  [v13 setFont:v19];

  v20 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_typeLabel;
  v21 = *(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_typeLabel);
  v22 = [v14 fontDescriptor];
  v23 = [v14 fontDescriptor];
  v24 = [v23 symbolicTraits];

  v25 = [v22 fontDescriptorWithSymbolicTraits:v24 | 0x8000];
  if (v25)
  {
    v26 = [objc_opt_self() fontWithDescriptor:v25 size:0.0];
  }

  else
  {
    v26 = v14;
  }

  [v21 setFont:v26];

  v27 = [v1 traitCollection];
  v28 = [v27 preferredContentSizeCategory];

  LOBYTE(v27) = static UIContentSizeCategory.>= infix(_:_:)();
  if (v27)
  {
    v29 = 1;
  }

  else
  {
    v29 = 2;
  }

  [*(v1 + v2) setNumberOfLines:v29];
  [*(v1 + v11) setNumberOfLines:v29];
  v76 = v20;
  [*(v1 + v20) setNumberOfLines:v29];
  v74 = v2;
  v30 = *(v1 + v2);
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 labelColor];
  v34 = [v33 colorWithAlphaComponent:0.6];

  [v32 setTextColor:v34];
  v75 = v11;
  v35 = *(v1 + v11);
  v36 = [v31 tertiaryLabelColor];
  [v35 setTextColor:v36];

  v37 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_footnoteLabel;
  v38 = *(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_footnoteLabel);
  v39 = [v14 fontDescriptor];
  v40 = [v14 fontDescriptor];
  v41 = [v40 symbolicTraits];

  v42 = [v39 fontDescriptorWithSymbolicTraits:v41 | 0x8000];
  if (v42)
  {
    v43 = [objc_opt_self() fontWithDescriptor:v42 size:0.0];
  }

  else
  {
    v43 = v14;
  }

  [v38 setFont:v43];

  v44 = *(v1 + v37);
  v45 = [v31 tertiaryLabelColor];
  [v44 setTextColor:v45];

  if (a1 > 3u)
  {
    if (a1 == 7)
    {
      [*(v1 + v74) setTextAlignment:1];
      [*(v1 + v75) setTextAlignment:1];
      [*(v1 + v20) setTextAlignment:1];
      v52 = *(v1 + v74);
      v53 = objc_opt_self();
      v54 = v52;
      v55 = [v53 preferredFontForTextStyle:UIFontTextStyleTitle3];
      v56 = [v55 fontDescriptor];
      v57 = [v55 fontDescriptor];
      v58 = [v57 symbolicTraits];

      v59 = [v56 fontDescriptorWithSymbolicTraits:v58 | 2];
      if (v59)
      {
        v60 = [v53 fontWithDescriptor:v59 size:0.0];

        v55 = v60;
      }

      [v54 setFont:v55];

      v61 = *(v1 + v75);
      v62 = [v53 preferredFontForTextStyle:UIFontTextStyleBody];
      [v61 setFont:v62];

      v63 = *&v76[v1];
      v64 = [v53 preferredFontForTextStyle:UIFontTextStyleBody];
      [v63 setFont:v64];

      v65 = *(v1 + v74);
      v66 = [v31 labelColor];
      [v65 setTextColor:v66];

      [v65 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
      [v65 setAdjustsFontForContentSizeCategory:1];
      [v65 setNumberOfLines:0];
      [v65 setLineBreakMode:4];
      [v65 setTextAlignment:1];

      v67 = *(v1 + v75);
      v68 = [v31 labelColor];
      [v67 setTextColor:v68];

      [v67 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
      [v67 setAdjustsFontForContentSizeCategory:1];
      [v67 setNumberOfLines:0];
      [v67 setLineBreakMode:4];
      [v67 setTextAlignment:1];

      v69 = *&v76[v1];
      v70 = [v31 secondaryLabelColor];
      [v69 setTextColor:v70];

      [v69 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
      [v69 setAdjustsFontForContentSizeCategory:1];
      [v69 setNumberOfLines:0];
      [v69 setLineBreakMode:4];
      [v69 setTextAlignment:1];

      v77 = *(v1 + v37);
      v71 = [v31 secondaryLabelColor];
      [v77 setTextColor:v71];

      [v77 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
      [v77 setAdjustsFontForContentSizeCategory:1];
      [v77 setNumberOfLines:0];
      [v77 setLineBreakMode:4];
      [v77 setTextAlignment:1];
      goto LABEL_30;
    }

    if (a1 != 4)
    {
      goto LABEL_33;
    }
  }

  else if (a1 - 1 >= 2)
  {
    if (a1 == 3)
    {
      v46 = *(v1 + v75);
      v47 = [v31 secondaryLabelColor];
      [v46 setTextColor:v47];

      [*(v1 + v74) setTextAlignment:1];
      v48 = *(v1 + v75);
LABEL_34:
      [v48 setTextAlignment:1];
      v72 = *(v1 + v20);

      [v72 setTextAlignment:1];
      return;
    }

LABEL_33:
    [*(v1 + v74) setTextAlignment:1];
    v48 = *(v1 + v75);
    goto LABEL_34;
  }

  [*(v1 + v74) setTextAlignment:4];
  [*(v1 + v75) setTextAlignment:4];
  [*(v1 + v20) setTextAlignment:4];
  v49 = *(v1 + v20);
  v50 = [v31 tertiaryLabelColor];
  [v49 setTextColor:v50];

  v51 = *(v1 + v75);
  v77 = [v31 secondaryLabelColor];
  [v51 setTextColor:v77];

LABEL_30:
}

void sub_1000FB664()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView);
  v2 = *((swift_isaMask & *v1) + 0x58);
  v3 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  v4 = v1;
  v2(11, v3);
}

void *sub_1000FB710()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_stateOfMindAsset);
  v2 = v1;
  return v1;
}

id sub_1000FB740()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_valenceImageView) image];

  return v1;
}

id sub_1000FB824(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StateOfMindAssetView(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for StateOfMindAssetView(uint64_t a1)
{
  result = qword_100AD1F78;
  if (!qword_100AD1F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FB960(uint64_t a1)
{
  sub_10006D1E4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1000FBA1C(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1000F9838(a1, v7, v1 + v4, v8);
}

void sub_1000FBAF4()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1000F9D0C(v5, v6, v0 + v2, v7);
}

uint64_t sub_1000FBBCC(uint64_t a1)
{
  v2 = _s23YearAdaptiveFormatStyleVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000FBC60(uint64_t a1)
{
  sub_1000FBD2C();
  if (v1 <= 0x3F)
  {
    sub_1000FF57C(319, &unk_100AD2000, type metadata accessor for EntryMapViewLoadingMessenger, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SidebarBrickLayoutMetrics(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000FBD2C()
{
  if (!qword_100AD1FF8)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD1FF8);
    }
  }
}

uint64_t sub_1000FBD98()
{
  sub_1000F24EC(&qword_100AD2120, &qword_100940298);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000FF7E8(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger, &unk_10094A81C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = v5[16];

  if (v0 == 1)
  {
    State.wrappedValue.getter();
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v1 = v5[17];

    if (v1 == 1)
    {
      State.wrappedValue.getter();
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v2 = v5[19];

      if (v2 != 1)
      {
        return 1;
      }
    }
  }

  State.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = v5[18];

  return v3;
}

uint64_t sub_1000FBFAC@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v83 = type metadata accessor for AccessibilityChildBehavior();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v80 = v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v69 = type metadata accessor for SidebarPlacesBrickView(0);
  *&v67 = *(v69 - 8);
  v3 = *(v67 + 64);
  __chkstk_darwin(v69);
  v68 = sub_1000F24EC(&qword_100AD2038, &qword_1009401A8);
  __chkstk_darwin(v68);
  v5 = v65 - v4;
  v71 = sub_1000F24EC(&qword_100AD2040, &qword_1009401B0);
  __chkstk_darwin(v71);
  v73 = v65 - v6;
  v70 = sub_1000F24EC(&qword_100AD2048, &qword_1009401B8);
  __chkstk_darwin(v70);
  v75 = v65 - v7;
  v72 = sub_1000F24EC(&qword_100AD2050, &qword_1009401C0);
  __chkstk_darwin(v72);
  v76 = v65 - v8;
  v74 = sub_1000F24EC(&qword_100AD2058, &qword_1009401C8);
  __chkstk_darwin(v74);
  v77 = v65 - v9;
  v78 = sub_1000F24EC(&qword_100AD2060, &qword_1009401D0);
  __chkstk_darwin(v78);
  v79 = v65 - v10;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v11 = &v5[*(sub_1000F24EC(&qword_100AD2068, &qword_1009401D8) + 44)];
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v12 = sub_1000F24EC(&qword_100AD2070, &qword_1009401E0);
  sub_1000FCACC(v1, &v11[*(v12 + 44)]);
  if (qword_100ACF9C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = sub_1000F24EC(&qword_100AD2078, &qword_1009401E8);
  v65[2] = sub_1000F24EC(&qword_100AD5B60, &unk_1009401F0);
  Published.projectedValue.getter();
  swift_endAccess();
  v66 = type metadata accessor for SidebarPlacesBrickView;
  sub_1000FF830(v1, v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SidebarPlacesBrickView);
  v84 = v1;
  v14 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v15 = swift_allocObject();
  v65[1] = v3;
  sub_1000FF020(v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for SidebarPlacesBrickView);
  v16 = &v5[*(v13 + 56)];
  *v16 = sub_1000FEA88;
  *(v16 + 1) = v15;
  swift_beginAccess();
  v17 = sub_1000F24EC(&qword_100AD2088, &qword_100940200);
  Published.projectedValue.getter();
  swift_endAccess();
  v18 = v66;
  sub_1000FF830(v84, v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v66);
  v19 = swift_allocObject();
  sub_1000FF020(v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v14, type metadata accessor for SidebarPlacesBrickView);
  v20 = &v5[*(v17 + 56)];
  *v20 = sub_1000FF984;
  *(v20 + 1) = v19;
  swift_beginAccess();
  v21 = sub_1000F24EC(&qword_100AD2090, &qword_100940208);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_1000FF830(v84, v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v22 = swift_allocObject();
  sub_1000FF020(v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v14, type metadata accessor for SidebarPlacesBrickView);
  v23 = &v5[*(v21 + 56)];
  *v23 = sub_1000FF984;
  *(v23 + 1) = v22;
  sub_1000FF830(v84, v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v24 = v84;
  v25 = swift_allocObject();
  sub_1000FF020(v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v14, type metadata accessor for SidebarPlacesBrickView);
  v26 = &v5[*(sub_1000F24EC(&qword_100AD2098, &qword_100940210) + 36)];
  *v26 = sub_1000FEAF0;
  v26[1] = v25;
  v26[2] = 0;
  v26[3] = 0;
  v27 = (v24 + *(v69 + 24));
  v28 = v27[1];
  v69 = *v27;
  v67 = v28;
  v29 = static Edge.Set.all.getter();
  v30 = &v5[*(v68 + 36)];
  *v30 = v29;
  *(v30 + 24) = v67;
  *(v30 + 8) = v69;
  v30[40] = 0;
  static Alignment.topLeading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v31 = v73;
  sub_100021CEC(v5, v73, &qword_100AD2038, &qword_1009401A8);
  v32 = (v31 + *(v71 + 36));
  v33 = v90;
  v32[4] = v89;
  v32[5] = v33;
  v32[6] = v91;
  v34 = v86;
  *v32 = v85;
  v32[1] = v34;
  v35 = v88;
  v32[2] = v87;
  v32[3] = v35;
  v36 = v75;
  v37 = &v75[*(v70 + 36)];
  v38 = *(type metadata accessor for RoundedRectangle() + 20);
  v39 = enum case for RoundedCornerStyle.continuous(_:);
  v40 = type metadata accessor for RoundedCornerStyle();
  (*(*(v40 - 8) + 104))(&v37[v38], v39, v40);
  __asm { FMOV            V0.2D, #16.0 }

  *v37 = _Q0;
  *&v37[*(sub_1000F24EC(&qword_100AD20A0, &qword_100940218) + 36)] = 256;
  sub_100021CEC(v31, v36, &qword_100AD2040, &qword_1009401B0);
  KeyPath = swift_getKeyPath();
  v47 = v76;
  v48 = &v76[*(v72 + 36)];
  v49 = *(sub_1000F24EC(&qword_100AD20A8, &qword_100940250) + 28);
  v50 = enum case for ColorScheme.dark(_:);
  v51 = type metadata accessor for ColorScheme();
  (*(*(v51 - 8) + 104))(v48 + v49, v50, v51);
  *v48 = KeyPath;
  sub_100021CEC(v36, v47, &qword_100AD2048, &qword_1009401B8);
  v52 = swift_getKeyPath();
  v53 = v77;
  v54 = &v77[*(v74 + 36)];
  v55 = *(sub_1000F24EC(&qword_100AD20B0, &qword_10096FD70) + 28);
  static Material.thick.getter();
  v56 = type metadata accessor for Material();
  (*(*(v56 - 8) + 56))(v54 + v55, 0, 1, v56);
  *v54 = v52;
  sub_100021CEC(v47, v53, &qword_100AD2050, &qword_1009401C0);
  v57 = static Alignment.center.getter();
  v59 = v58;
  v60 = v79;
  v61 = &v79[*(v78 + 36)];
  sub_1000FDF34(v24, v61);
  v62 = (v61 + *(sub_1000F24EC(&qword_100AD20B8, &qword_100940290) + 36));
  *v62 = v57;
  v62[1] = v59;
  sub_100021CEC(v53, v60, &qword_100AD2058, &qword_1009401C8);
  v63 = v80;
  static AccessibilityChildBehavior.combine.getter();
  sub_1000FEB50();
  View.accessibilityElement(children:)();
  (*(v81 + 8))(v63, v83);
  return sub_100004F84(v60, &qword_100AD2060, &qword_1009401D0);
}