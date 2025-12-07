uint64_t sub_1A8264F90(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 80);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 84);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1A82650CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 80);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 84);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A8265264(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 80);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A8265320(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 80);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8265420(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 84);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1A826555C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 84);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A8265780()
{
  MEMORY[0x1AC56D490](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A82657C0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8265818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
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

uint64_t sub_1A82658E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
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

uint64_t sub_1A82659A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ImportExport.Conversation(0);
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

uint64_t sub_1A8265A60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ImportExport.Conversation(0);
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

uint64_t sub_1A8265B18()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8265B58()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8265B94()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8265C54()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8265C8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8265CD8@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1A8265D18(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

uint64_t sub_1A8265D5C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8265D94()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8265DD4()
{
  MEMORY[0x1AC56D490](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8265E0C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8265E44()
{
  v1 = sub_1A84E56DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1A8266020@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1A8266080@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch;
  swift_beginAccess();
  return sub_1A8243D74(v3 + v4, a2, &qword_1EB2E7CF8, &qword_1A8509020);
}

uint64_t sub_1A8266120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ImportExport.Conversation(0);
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

uint64_t sub_1A82661DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ImportExport.Conversation(0);
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

uint64_t sub_1A8266294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ImportExport.Message(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ImportExport.Attachment(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1A8266384(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ImportExport.Message(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ImportExport.Attachment(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1A8266488(uint64_t a1)
{
  type metadata accessor for ImportExport.ArchivingOptions(0);

  return sub_1A84E529C();
}

uint64_t sub_1A82664D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ImportExport.ExportOptions(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1A84E558C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1A82665C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ImportExport.ExportOptions(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1A84E558C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1A82666C8@<X0>(uint64_t *a1@<X8>)
{
  sub_1A84E544C();
  result = sub_1A84E543C();
  *a1 = result;
  return result;
}

uint64_t sub_1A8266714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A84E558C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ImportExport.Conversation(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1A8266804(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1A84E558C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ImportExport.Conversation(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 36);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1A8266900(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A84E558C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1A82669AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A84E558C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8266A54()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8266A98()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8266AD8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1A84E558C();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 28)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1A8266B84(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1A84E558C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8266C24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.MessageBatch(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A8266C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.MessageBatch(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A8266D00()
{
  MEMORY[0x1AC56D490](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8266D38()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8266D70()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8266DA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8266DE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A8266E28(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A8266EE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8266F94()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A8266FDC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8267014()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A8267054()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E9068, &unk_1A850BFF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1A82670F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A84E58DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1A84E57AC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1A82671E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1A84E58DC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1A84E57AC();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1A8267348()
{
  v1 = *(v0 + 8);

  return v1;
}

__CFString *sub_1A8267378(int a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"Downgraded";
  }

  if (a1 == 2)
  {
    return @"Upgraded";
  }

  else
  {
    return v1;
  }
}

uint64_t _IMChatServiceForSendingAvailabilityErrorFromReachabilityResults(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v2)
  {

    v12 = 0;
    goto LABEL_34;
  }

  v3 = v2;
  v20 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = *v22;
  v8 = MEMORY[0x1E69A7AE0];
  do
  {
    v9 = 0;
    do
    {
      if (*v22 != v7)
      {
        objc_enumerationMutation(v1);
      }

      v10 = *(*(&v21 + 1) + 8 * v9);
      v11 = [v10 error];
      v12 = v11;
      if (v11 > 4)
      {
        if (v11 > 6)
        {
          if (v11 == 8)
          {
            v16 = [v10 service];
            LODWORD(v10) = [v16 isEqualToString:*v8];

            v5 |= v10;
LABEL_16:
            v6 |= v10;
            goto LABEL_19;
          }

          if (v11 == 7)
          {
            v12 = 6;
LABEL_33:

            goto LABEL_34;
          }
        }

        else
        {
          if (v11 != 6)
          {
            goto LABEL_33;
          }

          v14 = [v10 service];
          v15 = [v14 isEqualToString:*v8];

          v5 |= v15;
        }
      }

      else if (v11)
      {
        if (v11 != 1)
        {
          if (v11 != 3)
          {
            goto LABEL_19;
          }

          v13 = [v10 service];
          LOBYTE(v10) = [v13 isEqualToString:*v8];

          goto LABEL_16;
        }

        v20 = 1;
      }

      else
      {
        v4 |= [v10 allAreReachable];
      }

LABEL_19:
      ++v9;
    }

    while (v3 != v9);
    v17 = [v1 countByEnumeratingWithState:&v21 objects:v25 count:16];
    v3 = v17;
  }

  while (v17);

  v18 = 3;
  if ((v5 & 1) == 0)
  {
    v18 = 0;
  }

  if (v6)
  {
    v12 = 2;
  }

  else
  {
    v12 = v18;
  }

  if ((v4 | v20))
  {
    v12 = ~v4 & 1;
  }

LABEL_34:

  return v12;
}

void IMChatCalculateServiceForSendingNewComposeMaybeForce(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, unsigned __int8 a9, void *a10, void *a11)
{
  v16 = a11;
  v17 = MEMORY[0x1E69A8240];
  v18 = a10;
  v19 = a4;
  v20 = a3;
  v21 = a2;
  v22 = a1;
  v23 = objc_alloc_init(v17);
  v24 = [v21 chatIdentifier];
  [v23 setChatIdentifier:v24];

  v25 = [v21 chatStyle];
  [v23 setChatStyle:v25];
  v26 = [v20 _stripFZIDPrefix];

  [v23 setSenderLastAddressedHandle:v26];
  [v23 setSenderLastAddressedSIMID:v19];

  [v23 setForceMMS:a5];
  [v23 setShouldForceServerStatusRefresh:a7];
  [v23 setConversationWasDowngraded:a8];
  [v23 setHasConversationHistory:a9];
  v27 = [v18 internalName];

  [v23 setLastUsedServiceName:v27];
  v28 = +[IMServiceReachabilityController sharedController];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_1A8268B48;
  v32[3] = &unk_1E780FC88;
  v33 = v16;
  v29 = v16;
  [v28 calculateServiceForSendingToHandles:v22 withContext:v23 completionBlock:v32];
}

void sub_1A8268B48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMService smsService];
  v5 = [v3 bestResult];

  if (v5)
  {
    v6 = [v3 bestResult];
    v7 = [v6 service];
    v8 = [IMService serviceWithName:v7];

    v4 = v8;
  }

  else
  {
    v6 = [v3 resultsByAccountID];
    v7 = [v6 allValues];
    _IMChatServiceForSendingAvailabilityErrorFromReachabilityResults(v7);
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = [v3 resultsForServiceName:*MEMORY[0x1E69A7AF0]];
  v11 = [v10 firstObject];

  if (v11)
  {
    v12 = [v11 ktData];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A8268D38;
    v13[3] = &unk_1E780FC60;
    v14 = v9;
    [v12 enumerateKeysAndObjectsUsingBlock:v13];

    [v11 didCheckServer];
    [v11 allAreReachable];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1A8268D38(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v7 = [v5 numberWithInteger:{objc_msgSend(a3, "status")}];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

uint64_t sub_1A8268E7C(uint64_t a1)
{
  v1 = [[IMSWHighlightCenterController alloc] initWithAppIdentifier:*(a1 + 32)];
  qword_1EB2EA130 = v1;

  return MEMORY[0x1EEE66BB8](v1);
}

id sub_1A8269278(uint64_t a1)
{
  if (qword_1EB2EA148 != -1)
  {
    sub_1A84DEC70();
  }

  v2 = qword_1EB2EA140;

  return v2;
}

uint64_t sub_1A82692BC()
{
  v0 = objc_msgSend(MEMORY[0x1E696AE70], "regularExpressionWithPattern:options:error:", @"\\$\\(([^\\$]|\\$[^\\(])*?\\)"), 0, 0;
  qword_1EB2EA140 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id sub_1A826930C(void *a1)
{
  v2 = [MEMORY[0x1E696AEC0] __im_handleIdentifierRegex];
  v3 = [v2 matchesInString:a1 options:0 range:{0, objc_msgSend(a1, "length")}];

  v4 = [v3 __imArrayByApplyingBlock:&unk_1F1B6DAE0];

  return v4;
}

uint64_t sub_1A826939C(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696B098];
  v4 = [a2 range];

  return [v2 valueWithRange:{v4, v3}];
}

id sub_1A82693E4(void *a1)
{
  v2 = [MEMORY[0x1E696AEC0] __im_handleIdentifierRegex];
  v3 = [v2 firstMatchInString:a1 options:0 range:{0, objc_msgSend(a1, "length")}];

  if (v3 && ![v3 range] && v4 == objc_msgSend(a1, "length"))
  {
    v5 = [a1 substringWithRange:{2, objc_msgSend(a1, "length") - 3}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1A82694B0(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] __im_handleIdentifierRegex];
  v3 = [v2 matchesInString:a1 options:0 range:{0, objc_msgSend(a1, "length")}];

  v4 = [MEMORY[0x1E695DFA8] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) range];
        v12 = [a1 substringWithRange:{v10, v11}];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

id sub_1A8269648(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_1A8259A90;
  v15[4] = sub_1A825AE74;
  v16 = &stru_1F1B76F98;
  v6 = [a1 length];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A82697A4;
  v10[3] = &unk_1E780FD40;
  v13 = v15;
  v14 = a3;
  v7 = v5;
  v11 = v7;
  v12 = a1;
  [a1 enumerateSubstringsInRange:0 options:v6 usingBlock:{2, v10}];
  v8 = v7;

  _Block_object_dispose(v15, 8);

  return v8;
}

void sub_1A826978C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82697A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13 = a2;
  v7 = [*(*(*(a1 + 48) + 8) + 40) lengthOfBytesUsingEncoding:4];
  if (([v13 lengthOfBytesUsingEncoding:4] + v7) > *(a1 + 56))
  {
    [*(a1 + 32) addObject:*(*(*(a1 + 48) + 8) + 40)];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = &stru_1F1B76F98;
  }

  v10 = [*(*(*(a1 + 48) + 8) + 40) stringByAppendingString:v13];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (a3 + a4 >= [*(a1 + 40) length])
  {
    [*(a1 + 32) addObject:*(*(*(a1 + 48) + 8) + 40)];
  }
}

BOOL sub_1A82698B0(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:a1];
  v2 = v1 != 0;

  return v2;
}

void sub_1A8269A04()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.messages.pinning-ubiquity", v2);
  v1 = qword_1EB2E9110;
  qword_1EB2E9110 = v0;
}

void sub_1A826C348()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.messages.pinning-sync", v2);
  v1 = qword_1EB2EA150;
  qword_1EB2EA150 = v0;
}

void sub_1A826C624(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1A826C640(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3 == 2)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_19;
    }

    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v13 = "[IMPinnedConversationsController synchronizeLocalDataStore]_block_invoke_2";
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "%s Determined that the local store already has a more up-to-date pin config. localPinConfig: %@", buf, 0x16u);
    }

    goto LABEL_7;
  }

  if (a3 == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Syncing pin config from NSUbiquitousKeyValueStore to local store %@", buf, 0xCu);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _updateLocalStoreWithPinConfiguration:v5];

    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v9 = objc_loadWeakRetained((a1 + 32));
      [v9 fetchPinnedConversationIdentifiersFromLocalStore];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A826C8C8;
      block[3] = &unk_1E780FDC8;
      objc_copyWeak(&v11, (a1 + 32));
      dispatch_async(MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(&v11);
    }
  }

  else if (!a3 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Not synchronizing data stores because we could not determine which store has the more recent change.", buf, 2u);
    }

LABEL_7:
  }

LABEL_19:
}

void sub_1A826C8C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained fetchPinnedConversationIdentifiersFromLocalStore];
}

void sub_1A826CAF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained dataStore];
  v4 = [v3 synchronize];

  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v14 = 0;
        v6 = "Ubiquitous data store synchronization completed successfully.";
        v7 = &v14;
LABEL_12:
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 dataStore];

    v10 = IMOSLoggingEnabled();
    if (v9)
    {
      if (v10)
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v12 = 0;
          v6 = "Ubiquitous data store synchronization failed for an unknown reason.";
          v7 = &v12;
          goto LABEL_12;
        }

LABEL_13:
      }
    }

    else if (v10)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v6 = "Ubiquitous data store synchronization failed because the store was nil.";
        v7 = buf;
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  v11 = objc_loadWeakRetained((a1 + 32));
  [v11 setNumberOfPendingForceSyncs:{objc_msgSend(v11, "numberOfPendingForceSyncs") - 1}];
}

void sub_1A826CC68(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A826CC34);
  }

  _Unwind_Resume(a1);
}

void sub_1A826D138(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A826CE20);
  }

  _Unwind_Resume(a1);
}

void sub_1A826D318(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0 && IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Did not update ubiquitous store for pin config when updating the stores %@", &v5, 0xCu);
    }
  }
}

void sub_1A826D5D8(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained shouldWriteProposedPinConfiguration:*(a1 + 32) toUbiquitousStoreWithExistingPinConfiguration:v3];

  if (v5 && (v6 = objc_loadWeakRetained((a1 + 48)), v7 = [v6 shouldUpdateExistingPinConfig:v3 withProposedPinConfig:*(a1 + 32)], v6, v7))
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v19 = 138412290;
        v20 = v3;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Saving new pin configuration to ubiquitous store. Old: %@ ", &v19, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        v19 = 138412290;
        v20 = v10;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Saving new pin configuration to ubiquitous store. New: %@", &v19, 0xCu);
      }
    }

    if (IMIsRunningInUnitTesting())
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v19 = 136315138;
          v20 = "[IMPinnedConversationsController _updateUbiquitousStoreWithPinConfiguration:completion:]_block_invoke";
          _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "%s Didn't actually update ubiquitous store because we're running a unit test.", &v19, 0xCu);
        }
      }
    }

    else
    {
      v15 = objc_loadWeakRetained((a1 + 48));
      v16 = [v15 dataStore];
      [v16 setDictionary:*(a1 + 32) forKey:@"pD"];

      v17 = objc_loadWeakRetained((a1 + 48));
      [v17 forceSynchronizeUbiquitousStore];
    }

    v14 = 1;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        v19 = 138412290;
        v20 = v13;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "shouldUpdate == NO. Not saving new pin configuration to ubiquitous store: %@", &v19, 0xCu);
      }
    }

    v14 = 0;
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    (*(v18 + 16))(v18, v14);
  }
}

void sub_1A826E228(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A826E14CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A826EA5C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A826E980);
  }

  _Unwind_Resume(a1);
}

void sub_1A826EB98(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1A8259AA0;
  v17 = sub_1A825AE7C;
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = [v2 dataStore];
  v4 = [v2 _ubiquitousPinConfigurationInStore:v3];

  v18 = v4;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = v14[5];
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Got PinConfigurationInStore: %@", buf, 0xCu);
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A826EE2C;
  aBlock[3] = &unk_1E780FE68;
  v11 = *(a1 + 32);
  v12 = &v13;
  v7 = _Block_copy(aBlock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v7[2](v7);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A826EE54;
    block[3] = &unk_1E780FE90;
    v9 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t sub_1A826EE2C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void sub_1A826EEF8(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _locallyStoredPinConfiguration];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[IMPinnedConversationsController fetchMostUpToDatePinConfiguration:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v3;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "%s ubiquitousPinConfig {%@}", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[IMPinnedConversationsController fetchMostUpToDatePinConfiguration:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v4;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "%s localPinConfig {%@}", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v22 = sub_1A8259AA0;
  v23 = sub_1A825AE7C;
  v24 = [*(a1 + 32) mostUpToDatePinConfigurationByComparingPinConfiguration:v4 toOtherPinConfiguration:v3];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if ([*(*&buf[8] + 40) isEqualToDictionary:v4])
  {
    v7 = v18;
    v8 = 2;
LABEL_13:
    v7[3] = v8;
    goto LABEL_15;
  }

  v9 = [*(*&buf[8] + 40) isEqualToDictionary:v3];
  v7 = v18;
  if (v9)
  {
    v8 = 1;
    goto LABEL_13;
  }

  v18[3] = 0;
LABEL_15:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A826F2A0;
  aBlock[3] = &unk_1E780FEE0;
  v14 = *(a1 + 40);
  v15 = buf;
  v16 = &v17;
  v10 = _Block_copy(aBlock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v10[2](v10);
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1A826F2D0;
    v11[3] = &unk_1E780FE90;
    v12 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(buf, 8);
}

uint64_t sub_1A826F2A0(void *a1)
{
  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 24));
  }

  return result;
}

void sub_1A826F6C8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1A826FD94(uint64_t a1)
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_1A84DEE7C(a1, v2);
  }
}

void sub_1A8270784(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A8270750);
  }

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(exc_buf);
}

void *sub_1A82707C8(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 integerValue];
  v5 = 40;
  if (result == 1)
  {
    v5 = 32;
  }

  ++*(*(*(a1 + v5) + 8) + 24);
  return result;
}

id IMPersonStatusComparator()
{
  v0 = [qword_1EB2E4828 copy];
  v1 = qword_1EB2E4828;
  qword_1EB2E4828 = v0;

  v2 = _Block_copy(qword_1EB2E4828);

  return v2;
}

uint64_t sub_1A8271D00(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 status];
  v6 = [v4 status];

  v7 = qword_1A84FFD28[v5];
  v8 = qword_1A84FFD28[v6];
  v9 = v7 == v8;
  v10 = v7 <= v8;
  v11 = 1;
  if (v10)
  {
    v11 = -1;
  }

  if (v9)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

id IMPersonStatusReverseComparator()
{
  v0 = [qword_1EB2E4830 copy];
  v1 = qword_1EB2E4830;
  qword_1EB2E4830 = v0;

  v2 = _Block_copy(qword_1EB2E4830);

  return v2;
}

uint64_t sub_1A8271DB8(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 status];
  v6 = [v4 status];
  v7 = qword_1A84FFD28[v5];
  v8 = qword_1A84FFD28[v6];
  v9 = 1;
  if (v7 <= v8)
  {
    v9 = -1;
  }

  if (v7 == v8)
  {
    v9 = 0;
  }

  if (v9 == -1)
  {
    v9 = 1;
  }

  if (v7 > v8)
  {
    v10 = -1;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

void sub_1A8272310(void *a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [v8 service];
  v10 = [v9 isEqualToString:*MEMORY[0x1E69A7AD8]];

  v48 = a5;
  if (v10)
  {
    v11 = a4 == 45;
    v12 = 10;
    goto LABEL_5;
  }

  v13 = [v8 subject];
  if ([v13 length])
  {

    v11 = a4 == 45;
    v12 = 2;
LABEL_5:
    if (!v11)
    {
      ++v12;
    }

    goto LABEL_7;
  }

  v42 = [v8 fileTransferGUIDs];
  v43 = [v42 count];

  v12 = 2;
  if (a4 == 45)
  {
    if (!v43)
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 3;
  }

LABEL_7:
  v46 = v12;
  v14 = [v8 destinationCallerID];
  v15 = [a1 userInHomeCountryWithDestinationCallerID:v14];

  v16 = 4;
  if (!v15)
  {
    v16 = 5;
  }

  v45 = v16;
  v17 = MEMORY[0x1E69A7F58];
  v18 = [v8 destinationCallerID];
  v47 = [v17 carrierNameForPhoneNumber:v18];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v19 = [v8 fileTransferGUIDs];
  v20 = [v19 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v51;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v51 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v50 + 1) + 8 * i);
        v26 = +[IMFileTransferCenter sharedInstance];
        v27 = [v26 transferForGUID:v25];

        v22 += [v27 totalBytes];
      }

      v21 = [v19 countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v21);
  }

  else
  {
    v22 = 0;
  }

  v49 = v8;
  v28 = [v8 body];
  v29 = [v28 string];
  v30 = [v29 length];

  v44 = objc_alloc(MEMORY[0x1E695DF90]);
  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v48];
  v32 = *MEMORY[0x1E69A7368];
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v46];
  v34 = *MEMORY[0x1E69A7358];
  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v30];
  v36 = *MEMORY[0x1E69A7370];
  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v22];
  v38 = *MEMORY[0x1E69A7340];
  v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v45];
  v40 = [v44 initWithObjectsAndKeys:{v31, v32, v33, v34, v35, v36, v37, v38, v39, *MEMORY[0x1E69A7360], 0}];

  if ([v47 length])
  {
    [v40 setObject:v47 forKey:*MEMORY[0x1E69A7348]];
  }

  v41 = [MEMORY[0x1E69A8168] sharedInstance];
  [v41 trackEvent:*MEMORY[0x1E69A7338] withDictionary:v40];
}

void sub_1A82726E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [v5 fileTransferGUIDs];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v13 = +[IMFileTransferCenter sharedInstance];
        v14 = [v13 transferForGUID:v12];

        v9 += [v14 totalBytes];
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v15 = [v5 body];
  v16 = [v15 string];
  v17 = [v16 length];

  v18 = objc_alloc(MEMORY[0x1E695DF90]);
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v20 = *MEMORY[0x1E69A7368];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:12];
  v22 = *MEMORY[0x1E69A7358];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
  v24 = *MEMORY[0x1E69A7370];
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
  v26 = [v18 initWithObjectsAndKeys:{v19, v20, v21, v22, v23, v24, v25, *MEMORY[0x1E69A7340], 0}];

  v27 = [MEMORY[0x1E69A8168] sharedInstance];
  [v27 trackEvent:*MEMORY[0x1E69A7338] withDictionary:v26];
}

id sub_1A8272E1C(uint64_t a1, void *a2)
{
  v2 = [a2 ID];
  v3 = IMChatCanonicalIDSIDsForAddress();

  return v3;
}

void sub_1A8272E6C(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [v2 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v2 objectForKeyedSubscript:v8];
        v10 = [v9 integerValue];

        if (v10 == 1)
        {
          v11 = MEMORY[0x1E69D8C00];
          v12 = [v8 _stripFZIDPrefix];
          v13 = [v11 normalizedHandleWithDestinationID:v12];

          if (v13)
          {
            v14 = [objc_alloc(MEMORY[0x1E69D8B80]) initWithHandle:v13];
            [v3 addObject:v14];
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v26 = v8;
            v27 = 2048;
            v28 = v10;
            _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Destination not registered for Group FaceTime: %@ (%ld)", buf, 0x16u);
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v5);
  }

  if ([v3 count])
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 32);
        *buf = 138412546;
        v26 = v3;
        v27 = 2112;
        v28 = v17;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Adding member to Group FaceTime: %@ in conversaton %@", buf, 0x16u);
      }
    }

    v18 = +[IMChatRegistry sharedRegistry];
    v19 = [v18 conversationManager];
    [v19 addRemoteMembers:v3 toConversation:*(a1 + 32)];
  }
}

void sub_1A82738BC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A8273888);
  }

  _Unwind_Resume(a1);
}

void sub_1A82744A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1A8274398);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A8274504(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained checkForAllowedByScreenTime];
}

id sub_1A82794D8(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = +[IMAccountController sharedInstance];
  v3 = [v2 activeAccounts];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = v3;
  v19 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v19)
  {
    v5 = *v26;
    v18 = *v26;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v4);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v8 = [v7 aliases];
        v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v9)
        {
          v10 = *v22;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v22 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v21 + 1) + 8 * j);
              if (MEMORY[0x1AC56C3C0](v12))
              {
                v13 = IMCanonicalizeFormattedString();
              }

              else
              {
                v13 = v12;
              }

              v14 = v13;
              v15 = [*(a1 + 32) objectForKey:v13];

              if (v15)
              {

                goto LABEL_25;
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v5 = v18;
      }

      v19 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
      v5 = v18;
    }

    while (v19);
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Unable to find handle in the token dictionary", buf, 2u);
    }
  }

  v15 = 0;
LABEL_25:

  return v15;
}

uint64_t sub_1A827A8F0()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F1BA16B0];
  qword_1EB2EA168 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A827B288(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A827B34C;
  v8[3] = &unk_1E78101B8;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  [a1 fetchRecentStickersWithCompletion:v8];
}

void sub_1A827B34C(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A827B40C;
  block[3] = &unk_1E7810190;
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t sub_1A827B40C(uint64_t a1)
{
  [*(a1 + 32) addObjectsFromArray:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_1A827B458(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A827B538;
  v12[3] = &unk_1E7810258;
  v15 = a2;
  v16 = a3;
  v13 = v9;
  v14 = v8;
  v10 = v8;
  v11 = v9;
  [a1 fetchRecentItemsForDomain:@"com.apple.Handwriting.HandwritingProvider" completion:v12];
}

void sub_1A827B538(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = dispatch_group_create();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v15 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = objc_alloc_init(IMPluginPayload);
        v11 = [v8 payloadData];
        [(IMPluginPayload *)v10 setData:v11];

        [(IMPluginPayload *)v10 setPluginBundleID:@"com.apple.Handwriting.HandwritingProvider"];
        v12 = +[IMBalloonPluginManager sharedInstance];
        v13 = [v12 dataSourceForPluginPayload:v10];

        dispatch_group_enter(v4);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = sub_1A827B7E8;
        v19[3] = &unk_1E7810208;
        v19[4] = v8;
        v20 = *(a1 + 32);
        v21 = v4;
        [v13 thumbnailURLWithSize:v19 completion:{*(a1 + 48), *(a1 + 56)}];

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v6 != v7);
      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A827B8F8;
  block[3] = &unk_1E7810230;
  v18 = *(a1 + 40);
  v17 = *(a1 + 32);
  dispatch_group_notify(v4, MEMORY[0x1E69E96A0], block);
}

void sub_1A827B7E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A827B8AC;
  v7[3] = &unk_1E78101E0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = *(a1 + 48);
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void sub_1A827B8AC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) setFileURL:?];
    [*(a1 + 48) addObject:*(a1 + 40)];
  }

  v2 = *(a1 + 56);

  dispatch_group_leave(v2);
}

void sub_1A827B90C(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_1A8259AB0;
  v22[4] = sub_1A825AE84;
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1A827BB28;
  v19[3] = &unk_1E7810280;
  v21 = v22;
  v10 = v9;
  v20 = v10;
  [a1 loadRecentHandwritingsWithThumbnailSize:v19 completion:{a2, a3}];
  dispatch_group_enter(v10);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A827BB70;
  v16[3] = &unk_1E7810280;
  v18 = v22;
  v11 = v10;
  v17 = v11;
  [a1 loadRecentStickers:v16];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A827BBB8;
  v13[3] = &unk_1E780FE68;
  v14 = v8;
  v15 = v22;
  v12 = v8;
  dispatch_group_notify(v11, MEMORY[0x1E69E96A0], v13);

  _Block_object_dispose(v22, 8);
}

void sub_1A827BB28(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:a2];
  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void sub_1A827BB70(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:a2];
  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

id IMAttributedStringByRemovingTrackingInformation(void *a1)
{
  v1 = a1;
  if (![v1 length])
  {
    goto LABEL_7;
  }

  if (qword_1EB2E9D48 != -1)
  {
    sub_1A84DF098();
  }

  if (byte_1EB2E9D40)
  {
    v2 = [v1 _wp_stringByRemovingTrackingInformationFromURLs];
    if ([v2 isEqual:v1])
    {
      v3 = v1;
    }

    else
    {
      v7 = 0;
      v4 = sub_1A827BCD0(v2, &v7);
      v5 = v7;
      v3 = [v2 mutableCopy];
      sub_1A827BEB0(v3, v4, v5);
    }
  }

  else
  {
LABEL_7:
    v3 = v1;
  }

  return v3;
}

id sub_1A827BCD0(void *a1, void *a2)
{
  v3 = a1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1A8259AC0;
  v19 = sub_1A825AE8C;
  v20 = [MEMORY[0x1E695DF70] array];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1A8259AC0;
  v13 = sub_1A825AE8C;
  v14 = [MEMORY[0x1E695DF70] array];
  v4 = [v3 length];
  v5 = *MEMORY[0x1E69A5FB0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A827C2C0;
  v8[3] = &unk_1E78102E0;
  v8[4] = &v15;
  v8[5] = &v9;
  [v3 enumerateAttribute:v5 inRange:0 options:v4 usingBlock:{0, v8}];
  if (a2)
  {
    *a2 = v16[5];
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void sub_1A827BE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A827BEB0(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v6 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = v7;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v21;
      v12 = *MEMORY[0x1E69A5FB0];
      do
      {
        v13 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [*(*(&v20 + 1) + 8 * v13) rangeValue];
          v16 = v15;
          [v5 removeAttribute:v12 range:{v14, v15}];
          v17 = [v6 objectAtIndexedSubscript:v10];
          [v5 addAttribute:v12 value:v17 range:{v14, v16}];

          ++v10;
          ++v13;
        }

        while (v9 != v13);
        v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    v7 = v18;
  }
}

void IMRemoveTrackingInformationFromMutableAttributedString(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (qword_1EB2E9D48 != -1)
    {
      sub_1A84DF098();
    }

    if (byte_1EB2E9D40 == 1)
    {
      [v1 _wp_removeTrackingInformationFromURLs];
      v4 = 0;
      v2 = sub_1A827BCD0(v1, &v4);
      v3 = v4;
      sub_1A827BEB0(v1, v2, v3);
    }
  }
}

void *sub_1A827C0F8()
{
  result = sub_1A827C118();
  byte_1EB2E9D40 = result;
  return result;
}

void *sub_1A827C118()
{
  result = sub_1A827C17C(0);
  if (result)
  {
    v1 = 0;
    if (!sub_1A827C17C(&v1))
    {
      sub_1A84DF0AC(&v1);
    }

    if (v1)
    {
      free(v1);
    }

    return [MEMORY[0x1E696AEC0] instancesRespondToSelector:sel__wp_stringByRemovingTrackingInformationFromURLs];
  }

  return result;
}

uint64_t sub_1A827C17C(uint64_t a1)
{
  if (!qword_1EB2E9D88)
  {
    qword_1EB2E9D88 = _sl_dlopen();
  }

  return qword_1EB2E9D88;
}

uint64_t sub_1A827C24C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1EB2E9D88 = result;
  return result;
}

void sub_1A827C2C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  v7 = [v10 _wp_urlByRemovingTrackingInformation];
  if (v7 && ([v10 isEqual:v7] & 1) == 0)
  {
    v8 = *(*(*(a1 + 32) + 8) + 40);
    v9 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];
    [v8 addObject:v9];

    [*(*(*(a1 + 40) + 8) + 40) addObject:v7];
  }
}

void -[IMServiceImpl _blockUntilInitialSyncPerformed](IMServiceImpl *self, SEL a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (![(IMServiceImpl *)self initialSyncPerformed])
  {
    v14 = [MEMORY[0x1E695DFD0] currentRunLoop];
    v13 = objc_alloc_init(MEMORY[0x1E695DF00]);
    v3 = *MEMORY[0x1E69A6040];
    do
    {
      v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:{0.005, v13}];
      [v14 runMode:v3 beforeDate:v4];

      if ([(IMServiceImpl *)self initialSyncPerformed])
      {
        break;
      }

      [v13 timeIntervalSinceNow];
    }

    while (v5 > -1.0);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = +[IMAccountController sharedInstance];
    v7 = [v6 activeAccountsForService:self];

    v8 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v8)
    {
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if (([v11 hasSyncedWithRemoteBuddies] & 1) == 0)
          {
            if (IMOSLoggingEnabled())
            {
              v12 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v20 = self;
                _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "   *** Account %@  has not sync'd yet, forcing the mark", buf, 0xCu);
              }
            }

            [v11 _markHasSyncedWithRemoteBuddies];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v8);
    }
  }
}

uint64_t sub_1A827E70C()
{
  v0 = objc_alloc(MEMORY[0x1E69A48A8]);
  v1 = [v0 initWithService:*MEMORY[0x1E69A4818]];
  qword_1ED7676A0 = v1;

  return MEMORY[0x1EEE66BB8](v1);
}

uint64_t sub_1A827E888()
{
  result = MEMORY[0x1AC56C550](@"IDSServerBag", @"IDSFoundation");
  qword_1EB2EA188 = result;
  return result;
}

id IMCoreMomentShareURLForMessage(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 fileTransferGUIDs];
  v3 = +[IMFileTransferCenter sharedInstance];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v8 = *MEMORY[0x1E69A6FB8];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [v3 transferForGUID:{*(*(&v20 + 1) + 8 * i), v20}];
        v11 = [v10 attributionInfo];
        v12 = [v11 objectForKeyedSubscript:v8];
        if (v12)
        {
          v14 = v12;
          v13 = [MEMORY[0x1E695DFF8] URLWithString:v12];

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  if (!v13)
  {
    v15 = [v1 balloonBundleID];
    v16 = [v1 text];
    v17 = [v1 payloadData];
    v24[0] = 0;
    v18 = [MEMORY[0x1E69A8170] photoShareURLFromPluginBundleID:v15 contentString:v16 payload:v17 shouldAccept:v24];
    v13 = v18;
    if ((v24[0] & 1) == 0)
    {

      v13 = 0;
    }
  }

  return v13;
}

uint64_t sub_1A8280928(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 isEqualToAttributedString:v4];
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t sub_1A8280998(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 isEqual:v4];
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t sub_1A8280A08(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 isEqualToString:v4];
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t sub_1A8280A78(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 isEqualToDictionary:v4];
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t sub_1A8280AE8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 isEqualToArray:v4];
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

id sub_1A8281F7C(void *a1)
{
  v2 = [a1 length];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1A8259AD0;
  v11 = sub_1A825AE94;
  v12 = 0;
  v3 = *MEMORY[0x1E69A5FB0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A82820A0;
  v6[3] = &unk_1E7810360;
  v6[4] = &v7;
  [a1 enumerateAttribute:v3 inRange:0 options:v2 usingBlock:{0, v6}];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_1A8282088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82820A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = a2;
  if (v8)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v8 = v9;
    *a5 = 1;
  }
}

id IMWatermarkMessageIDCache(uint64_t a1)
{
  if (qword_1ED7676D8 != -1)
  {
    sub_1A84DF154();
  }

  v2 = qword_1ED7676D0;

  return v2;
}

uint64_t sub_1A8282158()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  qword_1ED7676D0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id sub_1A8282194(uint64_t a1)
{
  if (qword_1ED7676E8 != -1)
  {
    sub_1A84DF168();
  }

  v2 = qword_1ED7676E0;

  return v2;
}

uint64_t sub_1A82821D8()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  qword_1ED7676E0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A828225C()
{
  v0 = qword_1EB2EA198;
  qword_1EB2EA198 = &unk_1F1B6DCA0;
}

uint64_t sub_1A8282274(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (([v4 _hasJustSentAMessage] & 1) != 0 || objc_msgSend(v5, "_hasJustSentAMessage"))
  {
    v6 = [v4 watermarkDate];
    if (!v6)
    {
      v6 = [MEMORY[0x1E695DF00] distantPast];
    }

    v7 = [v5 watermarkDate];
    if (!v7)
    {
      v7 = [MEMORY[0x1E695DF00] distantPast];
    }

    v8 = [v7 compare:v6];
  }

  else
  {
    v8 = [v4 compareChatByDate:v5];
  }

  return v8;
}

uint64_t sub_1A8282DF8()
{
  result = MEMORY[0x1AC56C550](@"NPSManager", @"NanoPreferencesSync");
  qword_1EB2EA1A8 = result;
  return result;
}

uint64_t sub_1A8282EBC()
{
  result = IMGetDomainBoolForKey();
  byte_1EB2FEFF0 = result;
  return result;
}

void sub_1A8282F98(uint64_t a1, void *a2)
{
  v2 = a2;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Daemon launch detected while process was running", v4, 2u);
    }
  }

  [v2 _reconnectIfNeeded];
}

uint64_t sub_1A828322C(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Calling client completion handler after completing connection and setup", v4, 2u);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1A8283D8C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A8283CECLL);
  }

  objc_destroyWeak(&a13);
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(exc_buf);
}

void sub_1A8283DE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _invalidateMultiplexedConnectionWithUniqueID:*(a1 + 32)];
}

void sub_1A8283E30(uint64_t a1)
{
  v2 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8283EDC;
  block[3] = &unk_1E780FDC8;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void sub_1A8283EDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _capabilitiesDidChange];
}

uint64_t sub_1A8284B90()
{
  v0 = objc_alloc_init(IMBalloonPluginAttributionController);
  qword_1ED7678B8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id sub_1A8284DE8(uint64_t a1)
{
  if (qword_1EB2E9FE8 != -1)
  {
    sub_1A84DF1CC();
  }

  v2 = qword_1EB2E46F0;

  return v2;
}

void sub_1A8285088(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      v7 = 0;
      do
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v26 + 1) + 8 * v7);
        v9 = [*(a1 + 40) bundleIDsDisplayingAttribution];
        v10 = [v9 objectForKey:v8];
        v11 = [v10 BOOLValue];

        if (v11)
        {
          v12 = [*(a1 + 40) bundleIDsDisplayingAttribution];
          [v12 removeObjectForKey:v8];

          [v2 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = v2;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v22 + 1) + 8 * v17);
          v19 = [*(a1 + 40) expiredBundleIDToTimestampMap];
          v20 = [*(a1 + 40) _currentTimestamp];
          [v19 setObject:v20 forKey:v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v15);
    }

    [*(a1 + 40) _purgeLeastRecentlySeenAppBundleIDsIfNecessary];
    [*(a1 + 40) _saveToFile];
    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 __mainThreadPostNotificationName:@"__kIMBalloonPluginAttributionChangedNotification" object:0];
  }
}

uint64_t sub_1A8285890(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 expiredBundleIDToTimestampMap];
  v9 = [v8 objectForKey:v7];

  [v9 doubleValue];
  v11 = v10;

  v12 = [*(a1 + 32) expiredBundleIDToTimestampMap];
  v13 = [v12 objectForKey:v6];

  [v13 doubleValue];
  v15 = v14;

  v16 = -1;
  if (v11 >= v15)
  {
    v16 = 1;
  }

  if (v11 == v15)
  {
    return 0;
  }

  else
  {
    return v16;
  }
}

id sub_1A8285BCC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 identifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1A8285CB8()
{
  v0 = [qword_1EB2E46F0 stringByAppendingPathComponent:@"/"];
  v1 = qword_1EB2E46F0;
  qword_1EB2E46F0 = v0;

  v2 = [qword_1EB2E46F0 stringByAppendingPathComponent:@"var"];
  v3 = qword_1EB2E46F0;
  qword_1EB2E46F0 = v2;

  v4 = [qword_1EB2E46F0 stringByAppendingPathComponent:@"mobile"];
  v5 = qword_1EB2E46F0;
  qword_1EB2E46F0 = v4;

  v6 = [qword_1EB2E46F0 stringByAppendingPathComponent:@"Library"];
  v7 = qword_1EB2E46F0;
  qword_1EB2E46F0 = v6;

  v8 = [qword_1EB2E46F0 stringByAppendingPathComponent:@"SMS"];
  v9 = qword_1EB2E46F0;
  qword_1EB2E46F0 = v8;

  v10 = [qword_1EB2E46F0 stringByAppendingPathComponent:@"AppAttributionRecord.plist"];
  qword_1EB2E46F0 = v10;

  return MEMORY[0x1EEE66BB8](v10);
}

uint64_t IMRichLinkUtilitiesHasKnownSchemesForRichLinkURL(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 scheme];
  if ([v5 length])
  {
    v6 = [v3 host];
    v7 = [v6 length];

    if (v7)
    {
      v8 = [v3 scheme];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v9 = [&unk_1F1BA16C8 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v22;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(&unk_1F1BA16C8);
            }

            if (![v8 compare:*(*(&v21 + 1) + 8 * i) options:3])
            {
              v7 = 1;
              goto LABEL_24;
            }
          }

          v10 = [&unk_1F1BA16C8 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v13 = v4;
      v7 = [v13 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v7)
      {
        v14 = *v18;
        while (2)
        {
          for (j = 0; j != v7; ++j)
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(v13);
            }

            if (![v8 compare:*(*(&v17 + 1) + 8 * j) options:{3, v17}])
            {
              v7 = 1;
              goto LABEL_23;
            }
          }

          v7 = [v13 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_23:

LABEL_24:
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

uint64_t IMRichLinkUtilitiesIsSupportedRichLinkURL(void *a1, void *a2)
{
  v3 = a1;
  if (IMRichLinkUtilitiesHasKnownSchemesForRichLinkURL(v3, a2))
  {
    v4 = 1;
  }

  else
  {
    v5 = +[IMBalloonPluginManager sharedInstance];
    v6 = [v5 dataSourceClassForBundleID:*MEMORY[0x1E69A6A18]];

    v4 = [v6 supportsURL:v3];
  }

  return v4;
}

id IMRichLinkUtilitiesDetermineRichLinksInMessage(void *a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 length];
  v6 = [v3 string];
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = sub_1A8286958;
  v47[3] = &unk_1E78104E8;
  v9 = v4;
  v48 = v9;
  v10 = v8;
  v49 = v10;
  [v3 enumerateAttributesInRange:0 options:v5 usingBlock:{0, v47}];
  if ([v10 count])
  {
    v36 = v5;
    v37 = v3;
    v38 = v9;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v44;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v44 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = [*(*(&v43 + 1) + 8 * i) rangeValue];
          v19 = v18;
          if (!sub_1A8286A68(v6, v14, v17 - v14))
          {

            v20 = v36;
            goto LABEL_22;
          }

          v14 = v17 + v19;
        }

        v13 = [v11 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v14 = 0;
    }

    v20 = v36;
    if (sub_1A8286A68(v6, v14, v36 - v14))
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v21 = v11;
      v22 = [v21 countByEnumeratingWithState:&v39 objects:v50 count:16];
      v9 = v38;
      if (v22)
      {
        v23 = v22;
        v24 = *v40;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v40 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [*(*(&v39 + 1) + 8 * j) rangeValue];
            v28 = [MEMORY[0x1E696B098] valueWithRange:{v26, v27}];
            [v7 addObject:v28];
          }

          v23 = [v21 countByEnumeratingWithState:&v39 objects:v50 count:16];
        }

        while (v23);
      }

      v3 = v37;
      goto LABEL_31;
    }

LABEL_22:
    v3 = v37;
    v9 = v38;
    if ([v11 count] != 1)
    {
      goto LABEL_32;
    }

    v29 = [v11 firstObject];
    v30 = [v29 rangeValue];
    v32 = v31;

    v33 = v6;
    v21 = v33;
    if (!v32)
    {
      goto LABEL_31;
    }

    if ([v33 rangeOfString:@"http://" options:9 range:{v30, v32}] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v34 = [v21 rangeOfString:@"https://" options:9 range:{v30, v32}];

      v9 = v38;
      if (v34 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_32;
      }
    }

    else
    {

      v9 = v38;
    }

    if (sub_1A8286A68(v21, 0, v30) || sub_1A8286A68(v21, v30 + v32, v20 - (v30 + v32)))
    {
      v21 = [MEMORY[0x1E696B098] valueWithRange:{v30, v32}];
      [v7 addObject:v21];
LABEL_31:
    }
  }

LABEL_32:

  return v7;
}

void sub_1A8286958(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13 = a2;
  v7 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69A5FB0]];
  if (v7)
  {
    v8 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69A7CF8]];
    if (!v8)
    {
      v9 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69A70A8]];
      v10 = v9;
      if ((!v9 || [v9 BOOLValue]) && IMRichLinkUtilitiesIsSupportedRichLinkURL(v7, *(a1 + 32)))
      {
        v11 = *(a1 + 40);
        v12 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];
        [v11 addObject:v12];
      }
    }
  }
}

BOOL sub_1A8286A68(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = [a1 substringWithRange:{a2, a3}];
  v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v5 = [v4 invertedSet];
  [v3 rangeOfCharacterFromSet:v5];
  v7 = v6 == 0;

  return v7;
}

void IMRichLinkUtilitiesEnumerateRichLinksInAttributedString(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  if ((a2 & 1) == 0)
  {
    v8 = v7;
    if ([MEMORY[0x1E69A8020] supportsDataDetectors])
    {
      v8 = [v7 mutableCopy];
      v9 = [v7 string];
      v10 = [MEMORY[0x1E696AEC0] stringGUID];
      v11 = [MEMORY[0x1E695DF00] date];
      IMDDScanAttributedStringWithContext();
    }
  }

  v12 = [v8 length];
  v13 = [v8 mutableCopy];
  v14 = IMRichLinkUtilitiesDetermineRichLinksInMessage(v8, 0);
  v15 = *MEMORY[0x1E69A5FB0];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1A8286D1C;
  v21[3] = &unk_1E7810510;
  v22 = v14;
  v23 = v13;
  v16 = v13;
  v17 = v14;
  [v8 enumerateAttribute:v15 inRange:0 options:v12 usingBlock:{0, v21}];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1A8286DDC;
  v19[3] = &unk_1E7810538;
  v20 = v6;
  v18 = v6;
  [v16 enumerateAttribute:v15 inRange:0 options:v12 usingBlock:{0, v19}];
}

void sub_1A8286D1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v8 = *(a1 + 32);
    v11 = v7;
    v9 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];
    v10 = [v8 member:v9];

    v7 = v11;
    if (!v10)
    {
      [*(a1 + 40) removeAttribute:*MEMORY[0x1E69A5FB0] range:{a3, a4}];
      v7 = v11;
    }
  }
}

BOOL IMIsInternationalFilteringAccount()
{
  v0 = qword_1EB2E46F8;
  if (qword_1EB2E46F8 == -1)
  {
    v1 = +[IMAccountController sharedInstance];
    qword_1EB2E46F8 = [v1 activeAccountsAreEligibleForInternationalFiltering];

    v0 = qword_1EB2E46F8;
  }

  return v0 == 1;
}

uint64_t IMKeyTransparencyStatusFromKTUIStatus(uint64_t a1, int a2)
{
  if (_os_feature_enabled_impl())
  {
    result = 15;
    switch(a1)
    {
      case 0:
        goto LABEL_23;
      case 1:
        return 0;
      case 2:
        return 1;
      case 3:
        return 2;
      case 4:
        return 3;
      case 5:
        goto LABEL_16;
      case 6:
        return 6;
      case 7:
      case 13:
        return 5;
      case 8:
        return 7;
      case 9:
        goto LABEL_13;
      case 10:
        goto LABEL_12;
      case 11:
        goto LABEL_10;
      case 12:
        goto LABEL_6;
      case 14:
        return result;
      case 15:
        result = 16;
        break;
      case 16:
        result = 17;
        break;
      case 17:
        if (a2)
        {
          result = 18;
        }

        else
        {
          result = 19;
        }

        break;
      default:
        goto LABEL_20;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        goto LABEL_23;
      case 1:
        return 0;
      case 2:
        return 1;
      case 3:
        return 2;
      case 4:
        return 3;
      case 5:
LABEL_16:
        v5 = a2 == 0;
        v6 = 13;
        v7 = 4;
        goto LABEL_17;
      case 6:
        return 6;
      case 7:
      case 13:
        return 5;
      case 8:
        return 7;
      case 9:
LABEL_13:
        v5 = a2 == 0;
        v6 = 14;
        v7 = 8;
LABEL_17:
        if (v5)
        {
          result = v6;
        }

        else
        {
          result = v7;
        }

        break;
      case 10:
LABEL_12:
        result = 9;
        break;
      case 11:
LABEL_10:
        result = 10;
        break;
      case 12:
LABEL_6:
        result = 12;
        break;
      default:
LABEL_20:
        v8 = IMLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1A84DF1E0(a1, v8);
        }

LABEL_23:
        result = 11;
        break;
    }
  }

  return result;
}

void sub_1A8286FB8(uint64_t a1, void *a2)
{
  if ([a2 count])
  {
    v3 = *(a1 + 32);
    v4 = v3[3];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A8287054;
    block[3] = &unk_1E780FCB0;
    v6 = v3;
    dispatch_async(v4, block);
  }
}

void sub_1A8287054(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 48) allObjects];
  [*(*(a1 + 32) + 48) removeAllObjects];
  [*(*(a1 + 32) + 16) removeAllObjects];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) scheduleFetchIfNecessaryForHandle:{*(*(&v8 + 1) + 8 * v7++), v8}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

uint64_t sub_1A828727C(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 16);

  return [v5 removeAllObjects];
}

uint64_t sub_1A8287340(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(a1 + 32) + 16);

  return [v4 removeAllObjects];
}

void sub_1A8287664(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 64);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A828773C;
  v5[3] = &unk_1E7810588;
  v6 = v2;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v3 namesForDetail:v6 limitTo:1 prependMaybe:v4 onlySignificant:0 withCompletion:v5];
}

void sub_1A828773C(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "displayName %@ names %@", buf, 0x16u);
    }
  }

  if (v6 && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Error getting names for phone number: %@", buf, 0xCu);
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A8287934;
  v13[3] = &unk_1E7810230;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v14 = v5;
  v15 = v11;
  v12 = v5;
  dispatch_async(v10, v13);
}

void sub_1A8287934(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) firstObject];
  (*(v1 + 16))(v1, v2);
}

void sub_1A8287C54(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5 = [MEMORY[0x1E695DFB0] null];
  if (v3 == v5)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  (*(v2 + 16))(v2, v4);
}

void sub_1A8287CD4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3)
  {
    v4 = [v3 objectForKey:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    if (v4)
    {
      [*(v5 + 16) setObject:v4 forKey:*(a1 + 40)];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v6 setObject:v9 forKey:*(a1 + 40)];
    }

    v10 = *(a1 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A8287EB8;
    block[3] = &unk_1E7810230;
    v11 = *(a1 + 64);
    v19 = v4;
    v20 = v11;
    v12 = v4;
    dispatch_async(v10, block);
  }

  else
  {
    v17 = [*(v2 + 32) objectForKey:*(a1 + 40)];
    v7 = [*(a1 + 64) copy];
    if (v17)
    {
      v8 = _Block_copy(v7);
      [v17 addObject:v8];
    }

    else
    {
      v13 = *(*(a1 + 32) + 32);
      v14 = MEMORY[0x1E695DF70];
      v15 = _Block_copy(v7);
      v16 = [v14 arrayWithObject:v15];
      [v13 setObject:v16 forKey:*(a1 + 40)];

      [*(a1 + 32) _startRequestForDisplayName:*(a1 + 40) messageUID:*(a1 + 56) queue:*(a1 + 48)];
    }
  }
}

void sub_1A8288028(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a1[4];
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "displayName %@ names %@", &v12, 0x16u);
    }
  }

  if (v6 && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Error getting names for phone number: %@", &v12, 0xCu);
    }
  }

  v10 = a1[5];
  v11 = [v5 firstObject];
  [v10 _startRequestForDisplayNameCallbackWithSuggestedName:v11 displayName:a1[4] queue:a1[6]];
}

void sub_1A82882BC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 32) removeObjectForKey:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = *(a1 + 48);
  if (v5)
  {
    [*(v3 + 16) setObject:v5 forKey:*(a1 + 40)];
  }

  else
  {
    v6 = [MEMORY[0x1E695DFB0] null];
    [v4 setObject:v6 forKey:*(a1 + 40)];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A82883D0;
  v9[3] = &unk_1E7810140;
  v10 = v2;
  v7 = *(a1 + 56);
  v11 = *(a1 + 48);
  v8 = v2;
  dispatch_async(v7, v9);
}

void sub_1A82883D0(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_1A8288574(uint64_t a1)
{
  v13 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained immediateNameWithNeedsSuggestedNameFetch:&v13 useSuggestedName:1];

  if (v13 == 1)
  {
    v4 = *(a1 + 32);
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = [v5 displayID];
    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = [v7 ID];
    v9 = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E96A0];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1A82886D0;
    v11[3] = &unk_1E7810650;
    objc_copyWeak(&v12, (a1 + 40));
    v11[4] = *(a1 + 32);
    [v4 fetchSuggestedRealNameForDisplayName:v6 messageUID:v8 queue:v9 block:v11];

    objc_destroyWeak(&v12);
  }
}

void sub_1A82886D0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      [WeakRetained setSuggestedName:v3];
      if (!*(*(a1 + 32) + 64))
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1A828886C;
        block[3] = &unk_1E7810628;
        objc_copyWeak(&v16, (a1 + 40));
        v6 = v5;
        v7 = *(a1 + 32);
        v14 = v6;
        v15 = v7;
        *(*(a1 + 32) + 64) = CFRunLoopObserverCreateWithHandler(0, 0x20uLL, 0, 0, block);
        Main = CFRunLoopGetMain();
        CFRunLoopAddObserver(Main, *(*(a1 + 32) + 64), *MEMORY[0x1E695E8E0]);

        objc_destroyWeak(&v16);
      }
    }

    else
    {
      v9 = *(a1 + 32);
      v10 = *(v9 + 24);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1A82889AC;
      v11[3] = &unk_1E7810140;
      v11[4] = v9;
      v12 = WeakRetained;
      dispatch_async(v10, v11);
    }
  }
}

void sub_1A828886C(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E69A6868];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained ID];
  v7[1] = *MEMORY[0x1E69A6858];
  v8[0] = v3;
  v8[1] = *MEMORY[0x1E69A6860];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 __mainThreadPostNotificationName:*MEMORY[0x1E69A6870] object:*(a1 + 32) userInfo:v4];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 __mainThreadPostNotificationName:*MEMORY[0x1E69A6838] object:*(a1 + 32) userInfo:v4];

  CFRelease(*(*(a1 + 40) + 64));
  *(*(a1 + 40) + 64) = 0;
}

uint64_t sub_1A8288A48(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 contact];
  v7 = [v6 recordId];
  v8 = [v7 numericValue];
  v9 = [v5 contact];
  v10 = [v9 recordId];
  v11 = [v10 numericValue];

  if (v8 >= v11)
  {
    v13 = [v4 contact];
    v14 = [v13 recordId];
    v15 = [v14 numericValue];
    v16 = [v5 contact];
    v17 = [v16 recordId];
    v12 = v15 > [v17 numericValue];
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

uint64_t sub_1A828962C()
{
  v0 = dispatch_queue_create("FTNotificationQueue", 0);
  qword_1ED767988 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A828966C(uint64_t a1)
{
  if (qword_1ED767978 != -1)
  {
    sub_1A84DF324();
  }

  if (qword_1ED767718 != -1)
  {
    sub_1A84DF338();
  }

  if (qword_1ED767710 != -1)
  {
    sub_1A84DF34C();
  }

  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel__registrationStatusChanged_ name:qword_1ED767838 object:0];

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:sel__registrationStatusChanged_ name:qword_1ED767800 object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:*(a1 + 32) selector:sel__registrationStatusChanged_ name:@"NotificationActiveAccountChanged" object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:*(a1 + 32) selector:sel__registrationStatusChanged_ name:@"__kIMAccountRegistrationStatusChangedNotification" object:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 addObserver:*(a1 + 32) selector:sel__registrationStatusChanged_ name:@"__kIMAccountAliasesChangedNotification" object:0];
}

void sub_1A828981C()
{
  v0 = MEMORY[0x1AC56C560]("FaceTimeDeviceRegistrationCapabilityChangedNotification", @"FTServices");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1ED767838, v1);
}

void sub_1A828986C()
{
  v0 = MEMORY[0x1AC56C560]("FTCTRegistrationStatusChangedNotification", @"FTServices");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1ED767800, v1);
}

void sub_1A8289ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, int a10, __int16 a11, __int16 a12, uint64_t a13, __int128 a14)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(exception_object);
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v14 name];
        v17 = [v14 reason];
        v18 = [v14 userInfo];
        LODWORD(a9) = 138413314;
        *(&a9 + 4) = v14;
        WORD6(a9) = 2112;
        *(&a9 + 14) = v16;
        a12 = 2112;
        a13 = v17;
        LOWORD(a14) = 2112;
        *(&a14 + 2) = v18;
        WORD5(a14) = 2080;
        *(&a14 + 12) = "[IMAccount _updateMyStatus:message:]";
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", &a9, 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A8289E9CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A828A340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf, int a14, __int16 a15, __int16 a16, uint64_t a17, __int128 a18)
{
  if (a2 == 1)
  {
    v18 = objc_begin_catch(exception_object);
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v22 = [v18 name];
        v20 = [v18 reason];
        v21 = [v18 userInfo];
        LODWORD(buf) = 138413314;
        *(&buf + 4) = v18;
        WORD6(buf) = 2112;
        *(&buf + 14) = v22;
        a16 = 2112;
        a17 = v20;
        LOWORD(a18) = 2112;
        *(&a18 + 2) = v21;
        WORD5(a18) = 2080;
        *(&a18 + 12) = "[IMAccount setCurrentAccountStatus:]";
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", &buf, 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A828A244);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A828AFB4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf, int a14, __int16 a15, __int16 a16, id a17, __int128 a18)
{
  if (a2 == 1)
  {
    v18 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [v18 name];
        v21 = [v18 reason];
        v22 = [v18 userInfo];
        LODWORD(buf) = 138413314;
        *(&buf + 4) = v18;
        WORD6(buf) = 2112;
        *(&buf + 14) = v20;
        a16 = 2112;
        a17 = v21;
        LOWORD(a18) = 2112;
        *(&a18 + 2) = v22;
        WORD5(a18) = 2080;
        *(&a18 + 12) = "[IMAccount updateCapabilities:]";
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", &buf, 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A828AF78);
  }

  _Unwind_Resume(a1);
}

void sub_1A828B818(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = IMGetEnvironmentName();
    v12 = 138413058;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 1024;
    v17 = a5;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "Successfully updated password for account (%@:%@): %{BOOL}d  (Environment: %@)", &v12, 0x26u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1A828BEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A828BED8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a7;
  v13 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    v20 = 1024;
    v21 = v12 != 0;
    _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "Successfully read temporary password for account (%@:%@): %{BOOL}d", &v16, 0x1Cu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v12;
}

void sub_1A828C120(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 1024;
    v16 = a5;
    _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "Successfully updated temporary password for account (%@:%@): %{BOOL}d", &v11, 0x1Cu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1A828C534(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == v2)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A828C4E8);
  }

  objc_end_catch();
  _Unwind_Resume(exc_buf);
}

void sub_1A828DDD8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 buf, int a24, __int16 a25, __int16 a26, id a27, __int128 a28)
{
  if (a2 == 1)
  {
    v28 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [v28 name];
        v31 = [v28 reason];
        v32 = [v28 userInfo];
        LODWORD(buf) = 138413314;
        *(&buf + 4) = v28;
        WORD6(buf) = 2112;
        *(&buf + 14) = v30;
        a26 = 2112;
        a27 = v31;
        LOWORD(a28) = 2112;
        *(&a28 + 2) = v32;
        WORD5(a28) = 2080;
        *(&a28 + 12) = "[IMAccount _loadFromDictionary:force:]";
        _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", &buf, 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A828D138);
  }

  _Unwind_Resume(a1);
}

void sub_1A828DEFC(void *exc_buf, int a2)
{
  if (a2 == v2)
  {

    objc_end_catch();
    JUMPOUT(0x1A828DEE0);
  }

  objc_end_catch();
  JUMPOUT(0x1A828DF34);
}

void sub_1A828E1FC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf, int a18, __int16 a19, __int16 a20, id a21, __int128 a22)
{
  if (a2 == 1)
  {
    v22 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [v22 name];
        v25 = [v22 reason];
        v26 = [v22 userInfo];
        LODWORD(buf) = 138413314;
        *(&buf + 4) = v22;
        WORD6(buf) = 2112;
        *(&buf + 14) = v24;
        a20 = 2112;
        a21 = v25;
        LOWORD(a22) = 2112;
        *(&a22 + 2) = v26;
        WORD5(a22) = 2080;
        *(&a22 + 12) = "[IMAccount setCachedAllowList:]";
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", &buf, 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A828E1B8);
  }

  _Unwind_Resume(a1);
}

void sub_1A828E4E8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf, int a18, __int16 a19, __int16 a20, id a21, __int128 a22)
{
  if (a2 == 1)
  {
    v22 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [v22 name];
        v25 = [v22 reason];
        v26 = [v22 userInfo];
        LODWORD(buf) = 138413314;
        *(&buf + 4) = v22;
        WORD6(buf) = 2112;
        *(&buf + 14) = v24;
        a20 = 2112;
        a21 = v25;
        LOWORD(a22) = 2112;
        *(&a22 + 2) = v26;
        WORD5(a22) = 2080;
        *(&a22 + 12) = "[IMAccount setCachedBlockList:]";
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", &buf, 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A828E4A4);
  }

  _Unwind_Resume(a1);
}

void sub_1A828E71C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf, int a12, __int16 a13, __int16 a14, id a15, __int128 a16)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [v16 name];
        v19 = [v16 reason];
        v20 = [v16 userInfo];
        LODWORD(buf) = 138413314;
        *(&buf + 4) = v16;
        WORD6(buf) = 2112;
        *(&buf + 14) = v18;
        a14 = 2112;
        a15 = v19;
        LOWORD(a16) = 2112;
        *(&a16 + 2) = v20;
        WORD5(a16) = 2080;
        *(&a16 + 12) = "[IMAccount setCachedBlockingMode:]";
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", &buf, 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A828E678);
  }

  _Unwind_Resume(a1);
}

void sub_1A828E954(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf, int a12, __int16 a13, __int16 a14, id a15, __int128 a16)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [v16 name];
        v19 = [v16 reason];
        v20 = [v16 userInfo];
        LODWORD(buf) = 138413314;
        *(&buf + 4) = v16;
        WORD6(buf) = 2112;
        *(&buf + 14) = v18;
        a14 = 2112;
        a15 = v19;
        LOWORD(a16) = 2112;
        *(&a16 + 2) = v20;
        WORD5(a16) = 2080;
        *(&a16 + 12) = "[IMAccount setCachedBlockIdleStatus:]";
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", &buf, 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A828E8B0);
  }

  _Unwind_Resume(a1);
}

void sub_1A8291E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int buf, int a40, int a41, __int16 a42, int a43, __int16 a44, __int16 a45, uint64_t a46, __int16 a47, int a48, __int16 a49, __int16 a50, __int16 a51)
{
  if (a2 == 1)
  {
    v52 = objc_begin_catch(exception_object);
    if (IMOSLoggingEnabled())
    {
      v53 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v54 = [v52 name];
        v55 = [v52 reason];
        v56 = [v52 userInfo];
        buf = 138413314;
        *(v51 + 4) = v52;
        a42 = 2112;
        *(v51 + 14) = v54;
        a45 = 2112;
        a46 = v55;
        a47 = 2112;
        *(v51 + 34) = v56;
        a50 = 2080;
        *(v51 + 44) = "[IMAccount setBuddyProperties:buddyPictures:]";
        _os_log_impl(&dword_1A823F000, v53, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", &buf, 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A8291E3CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A82925EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, __int16 a11, uint64_t a12, __int16 a13, uint64_t a14, __int16 a15, uint64_t a16, __int16 a17, uint64_t a18)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1A8292488);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A8292AF8(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == v2)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A8292AACLL);
  }

  objc_end_catch();
  _Unwind_Resume(exc_buf);
}

void sub_1A8292D98(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == v2)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A8292D4CLL);
  }

  objc_end_catch();
  _Unwind_Resume(exc_buf);
}

void sub_1A8293CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int buf, int a46, int a47, __int16 a48, int a49, __int16 a50, __int16 a51, uint64_t a52, __int16 a53, int a54, __int16 a55, __int16 a56, __int16 a57)
{
  if (a2 == 1)
  {
    v58 = objc_begin_catch(exception_object);
    if (IMOSLoggingEnabled())
    {
      v59 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        v60 = [v58 name];
        v61 = [v58 reason];
        v62 = [v58 userInfo];
        buf = 138413314;
        *(v57 + 4) = v58;
        a48 = 2112;
        *(v57 + 14) = v60;
        a51 = 2112;
        a52 = v61;
        a53 = 2112;
        *(v57 + 34) = v62;
        a56 = 2080;
        *(v57 + 44) = "[IMAccount groupsChanged:error:]";
        _os_log_impl(&dword_1A823F000, v59, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", &buf, 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A8293C3CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A8295DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8295DD8(uint64_t a1, int a2, int a3, int a4, int a5, int a6, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v9 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1A8296B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 buf, int a20, __int16 a21, __int16 a22, uint64_t a23, __int128 a24)
{
  if (a2 == 1)
  {
    v24 = objc_begin_catch(exception_object);
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v28 = [v24 name];
        v26 = [v24 reason];
        v27 = [v24 userInfo];
        LODWORD(buf) = 138413314;
        *(&buf + 4) = v24;
        WORD6(buf) = 2112;
        *(&buf + 14) = v28;
        a22 = 2112;
        a23 = v26;
        LOWORD(a24) = 2112;
        *(&a24 + 2) = v27;
        WORD5(a24) = 2080;
        *(&a24 + 12) = "[IMAccount _updateProfileInfo:]";
        _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", &buf, 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A82969CCLL);
  }

  _Unwind_Resume(exception_object);
}

id sub_1A8297438(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) typeForAlias:v3] == *(a1 + 40))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1A8297918(uint64_t a1, void *a2)
{
  v3 = [a2 lowercaseString];
  v4 = [MEMORY[0x1E699BE70] sharedInstance];
  if ([v4 supportsSMS])
  {
  }

  else
  {
    v5 = [v3 isEqualToIgnoringCase:*MEMORY[0x1E69A5630]];

    if (v5)
    {
LABEL_8:
      v9 = 0;
      goto LABEL_10;
    }
  }

  if (MEMORY[0x1AC56C3C0](v3))
  {
    v6 = IMCanonicalizeFormattedString();

    v3 = v6;
  }

  if (![v3 length])
  {
    goto LABEL_8;
  }

  v7 = [*(a1 + 32) aliases];
  v8 = [v7 containsObject:v3];

  if (v8)
  {
    goto LABEL_8;
  }

  v9 = v3;
  v3 = v9;
LABEL_10:

  return v9;
}

id sub_1A8297A18(uint64_t a1, void *a2)
{
  v3 = [a2 trimmedString];
  v4 = [v3 lowercaseString];

  if ([*(a1 + 32) containsObject:v4])
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

id sub_1A8297F44(uint64_t a1, void *a2)
{
  v2 = a2;
  if (MEMORY[0x1AC56C3C0]())
  {
    v3 = IMCanonicalizeFormattedString();

    v2 = v3;
  }

  return v2;
}

id sub_1A8297FA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:*MEMORY[0x1E69A63C0]];
  if (MEMORY[0x1AC56C3C0]())
  {
    v5 = IMCanonicalizeFormattedString();

    v4 = v5;
  }

  if ([*(a1 + 32) containsObject:v4])
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

id sub_1A8298280(uint64_t a1, void *a2)
{
  v2 = [a2 lowercaseString];
  if (![v2 length] || IMStringIsEmail() && (IMAreEmailsLogicallyTheSame() & 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

id sub_1A829857C(uint64_t a1, void *a2)
{
  v2 = [a2 lowercaseString];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1A82989B8()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69A6410], @"AccountSignedOut", *MEMORY[0x1E69A64E8], *MEMORY[0x1E69A64E0], *MEMORY[0x1E69A64D8], *MEMORY[0x1E69A64D0], *MEMORY[0x1E69A6520], *MEMORY[0x1E69A63F8], *MEMORY[0x1E69A63E8], *MEMORY[0x1E69A6500], *MEMORY[0x1E69A64F8], *MEMORY[0x1E69A6440], *MEMORY[0x1E69A6458], *MEMORY[0x1E69A6460], *MEMORY[0x1E69A6508], *MEMORY[0x1E69A6530], *MEMORY[0x1E69A64C0], *MEMORY[0x1E69A6430], *MEMORY[0x1E69A64F0], *MEMORY[0x1E69A6510], *MEMORY[0x1E69A6518], *MEMORY[0x1E69A6480], *MEMORY[0x1E69A6488], *MEMORY[0x1E69A6490], *MEMORY[0x1E69A6498], 0}];
  qword_1EB2EA1B8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A82997D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, int a10, __int16 a11, __int16 a12, uint64_t a13, __int128 a14)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(exception_object);
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v14 name];
        v17 = [v14 reason];
        v18 = [v14 userInfo];
        LODWORD(a9) = 138413314;
        *(&a9 + 4) = v14;
        WORD6(a9) = 2112;
        *(&a9 + 14) = v16;
        a12 = 2112;
        a13 = v17;
        LOWORD(a14) = 2112;
        *(&a14 + 2) = v18;
        WORD5(a14) = 2080;
        *(&a14 + 12) = "[IMAccount _updateDisplayName:]";
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", &a9, 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A82997C8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A829B950(void *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A829B6ECLL);
  }

  JUMPOUT(0x1A829B948);
}

void sub_1A829CC40(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 buf, int a22, __int16 a23, __int16 a24, id a25, __int128 a26)
{
  if (a2 == 1)
  {
    v26 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v30 = [v26 name];
        v28 = [v26 reason];
        v29 = [v26 userInfo];
        LODWORD(buf) = 138413314;
        *(&buf + 4) = v26;
        WORD6(buf) = 2112;
        *(&buf + 14) = v30;
        a24 = 2112;
        a25 = v28;
        LOWORD(a26) = 2112;
        *(&a26 + 2) = v29;
        WORD5(a26) = 2080;
        *(&a26 + 12) = "[_IMLegacyDaemonListener pinCodeAlertCompleted:deviceName:deviceType:phoneNumber:responseFromDevice:wasCancelled:]";
        _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", &buf, 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A829CBECLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A829EAC8(void *exc_buf, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exc_buf);
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [v3 name];
        v6 = [v3 reason];
        v7 = [v3 userInfo];
        *(v2 - 160) = 138413314;
        v8 = v2 - 160;
        *(v8 + 4) = v3;
        *(v2 - 148) = 2112;
        *(v8 + 14) = v5;
        *(v2 - 138) = 2112;
        *(v2 - 136) = v6;
        *(v2 - 128) = 2112;
        *(v8 + 34) = v7;
        *(v2 - 118) = 2080;
        *(v8 + 44) = "[_IMLegacyDaemonListener account:postedError:]";
        _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", (v2 - 160), 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A829E8C4);
  }

  JUMPOUT(0x1A829EAC0);
}

void sub_1A829EBEC(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == v2)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A829EBD0);
  }

  objc_end_catch();
  _Unwind_Resume(exc_buf);
}

void sub_1A82A1E68(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *exc_buf)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A82A1C70);
  }

  objc_end_catch();
  _Unwind_Resume(v10);
}

void sub_1A82A2B74(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82A2B08);
  }

  _Unwind_Resume(a1);
}

void sub_1A82A3974(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69A8190];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithDictionaryRepresentation:v6];

  [*(a1 + 32) setObject:v8 forKey:v7];
}

void sub_1A82A3A00(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69A8190];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithDictionaryRepresentation:v6];

  [*(a1 + 32) setObject:v8 forKey:v7];
}

void sub_1A82A3A8C(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69A8190];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithDictionaryRepresentation:v6];

  [*(a1 + 32) setObject:v8 forKey:v7];
}

id sub_1A82A43DC(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a1 remoteMembers];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) handle];
        v9 = [v8 value];
        if (v9)
        {
          [v2 addObject:v9];
        }

        else
        {
          v10 = [v8 value];
          [v2 addObject:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_1A82A4CC4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 cloudKitEventNotificationManager:*(a1 + 32) syncStateDidChange:*(a1 + 40)];
  }
}

void sub_1A82A4FB0(uint64_t a1, void *a2)
{
  v2 = [a2 cloudKitHooks];
  [v2 broadcastCloudKitState];
}

void sub_1A82A4FF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = [a4 userInfo];
  v8 = [v5 syncStateWithDictionary:v6];

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8);
  }
}

void sub_1A82A515C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Fetching latest ramp state", v8, 2u);
    }
  }

  v7 = [v4 cloudKitHooks];
  [v7 fetchLatestRampState];
}

void sub_1A82A5228(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Fetched latest ramp state", v14, 2u);
    }
  }

  v11 = [v9 userInfo];
  v12 = [v11 objectForKey:@"IMCloudKitRampStateKey"];

  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v12);
  }
}

void sub_1A82A54E4(uint64_t a1, void *a2)
{
  v2 = [a2 cloudKitHooks];
  [v2 broadcastCloudKitStateAfterClearingErrors];
}

void sub_1A82A5528(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = [a4 userInfo];
  v8 = [v5 syncStateWithDictionary:v6];

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8);
  }
}

void sub_1A82A5734(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v8 userInfo];
      *buf = 138412290;
      v21 = v10;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "setEnabledDidReturned with response: %@", buf, 0xCu);
    }
  }

  if ([v8 didSucceed])
  {
    v11 = [v8 userInfo];
    v12 = [v11 objectForKeyedSubscript:@"ResultSuccess"];
    v13 = [v12 BOOLValue];
  }

  else
  {
    v13 = 0;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A82A5910;
  v16[3] = &unk_1E7810AA8;
  v19 = v13;
  v17 = v6;
  v18 = v8;
  v14 = v8;
  v15 = v6;
  [v15 visitEventHandlers:v16];
}

void sub_1A82A5910(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) error];
    [v6 cloudKitEventNotificationManager:v4 didChangeEnabled:v3 error:v5];
  }
}

void sub_1A82A5998(uint64_t a1, void *a2)
{
  v3 = [a2 cloudKitHooks];
  [v3 setEnabled:*(a1 + 32)];
}

void sub_1A82A5B94(uint64_t a1, void *a2)
{
  v3 = [a2 cloudKitHooks];
  [v3 setEnabled:*(a1 + 32)];
}

void sub_1A82A5BE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = a4;
    v6 = [v5 didSucceed];
    v7 = [v5 error];

    (*(v4 + 16))(v4, v6, v7);
  }
}

void sub_1A82A6068(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "tryToDisableAllDeviceReturned with response: %@", buf, 0xCu);
    }
  }

  if ([v8 didSucceed])
  {
    v10 = [v8 userInfo];
    v11 = [v10 objectForKeyedSubscript:@"ResultSuccess"];
    v12 = [v11 BOOLValue];
  }

  else
  {
    v12 = 0;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A82A622C;
  v15[3] = &unk_1E7810AA8;
  v18 = v12;
  v16 = v6;
  v17 = v8;
  v13 = v8;
  v14 = v6;
  [v14 visitEventHandlers:v15];
}

void sub_1A82A622C(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) error];
    [v6 cloudKitEventNotificationManager:v4 didDisableAllDevices:v3 error:v5];
  }
}

void sub_1A82A62B4(uint64_t a1, void *a2)
{
  v2 = [a2 cloudKitHooks];
  [v2 tryToDisableAllDevices];
}

void sub_1A82A63E4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v8;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Did check if additional storage is required with response: %@", buf, 0xCu);
    }
  }

  v10 = [v8 didSucceed];
  v11 = v10;
  if (v10)
  {
    v12 = [v8 userInfo];
    v13 = [v12 objectForKeyedSubscript:@"ResultAdditionalStorageRequired"];
    v14 = [v13 longLongValue];

    v15 = [v8 userInfo];
    v16 = [v15 objectForKeyedSubscript:@"ResultiCloudAccountId"];
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1A82A65FC;
  v20[3] = &unk_1E7810B10;
  v25 = v11;
  v21 = v6;
  v22 = v16;
  v23 = v8;
  v24 = v14;
  v17 = v8;
  v18 = v16;
  v19 = v6;
  [v19 visitEventHandlers:v20];
}

void sub_1A82A65FC(uint64_t a1, void *a2)
{
  v8 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    v7 = [*(a1 + 48) error];
    [v8 cloudKitEventNotificationManager:v4 didPerformAdditionalStorageRequiredCheck:v3 additionalStorageRequired:v6 forAccountId:v5 error:v7];
  }
}

void sub_1A82A6698(uint64_t a1, void *a2)
{
  v2 = [a2 cloudKitHooks];
  [v2 performAdditionalStorageRequiredCheck];
}

void sub_1A82A6800(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if ([v5 didSucceed])
  {
    v6 = [v5 userInfo];
    v7 = [v6 objectForKey:@"IMCloudKitSyncStatisticsKey"];

    if (v7)
    {
      v8 = [[IMCloudKitSyncStatistics alloc] initWithStatisticsDictionary:v7];
      v9 = [*(a1 + 32) logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_1A84DF5F4(v8, v9);
      }
    }

    else
    {
      v9 = [*(a1 + 32) logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1A84DF68C(v9);
      }

      v8 = 0;
    }
  }

  else
  {
    v7 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A84DF55C(v5, v7);
    }

    v8 = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = [v5 error];
    (*(v10 + 16))(v10, v8, v11);
  }
}

void sub_1A82A6958(uint64_t a1, void *a2)
{
  v2 = [a2 cloudKitHooks];
  [v2 fetchSyncStateStatistics];
}

void sub_1A82A6A5C(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 cloudKitEventNotificationManager:a1[4] didFetchSyncStatistics:a1[5] error:a1[6]];
  }
}

void sub_1A82A6BD0(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _sendSyncStatisticsToEventHandlers:? error:?];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

uint64_t sub_1A82A6D1C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_1A82A700C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 cloudKitEventNotificationManager:*(a1 + 32) syncProgressDidUpdate:*(a1 + 40)];
  }
}

void sub_1A82A7430(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [v8 userInfo];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v9;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Fetched sync state debugging info: %@", buf, 0xCu);
    }
  }

  v11 = [v9 mutableCopy];
  v12 = [v9 objectForKey:@"sync-statistics-from-database"];
  if (v12)
  {
    v13 = [[IMCloudKitSyncStatistics alloc] initWithStatisticsDictionary:v12];
    [v11 setObject:v13 forKey:@"sync-statistics"];
  }

  v14 = [v9 objectForKey:@"sync-state-user-defaults"];
  if (v14)
  {
    v15 = -[IMCloudKitSyncState initWithAccountEnabled:stateDictionary:]([IMCloudKitSyncState alloc], "initWithAccountEnabled:stateDictionary:", [v6 accountHasiMessageEnabled], v14);
    [v11 setObject:v15 forKey:@"sync-state"];
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1A82A7680;
  v18[3] = &unk_1E7810BD8;
  v19 = v6;
  v20 = v11;
  v16 = v11;
  v17 = v6;
  [v17 visitEventHandlers:v18];
}

void sub_1A82A7680(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 cloudKitEventNotificationManager:*(a1 + 32) didFetchSyncDebuggingInfo:*(a1 + 40)];
  }
}

void sub_1A82A76E0(uint64_t a1, void *a2)
{
  v3 = [a2 cloudKitHooks];
  [v3 fetchCloudKitSyncStateDebuggingInfo:*(a1 + 32)];
}

uint64_t sub_1A82A7AE0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 time];
  v7 = [v5 time];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [v4 messageID];
    if (v9 >= [v5 messageID])
    {
      v10 = [v4 messageID];
      v8 = v10 > [v5 messageID];
    }

    else
    {
      v8 = -1;
    }
  }

  return v8;
}

void sub_1A82A9228()
{
  if (!qword_1EB2E9FF8)
  {
    v0 = MEMORY[0x1E696AB08];
    v3 = [*MEMORY[0x1E69A5F00] stringByAppendingString:*MEMORY[0x1E69A5F20]];
    v1 = [v0 characterSetWithCharactersInString:v3];
    v2 = qword_1EB2E9FF8;
    qword_1EB2E9FF8 = v1;
  }
}

uint64_t sub_1A82A9C68(uint64_t a1, void *a2)
{
  v3 = [a2 service];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t sub_1A82A9D5C(uint64_t a1, void *a2)
{
  v3 = [a2 service];
  v4 = [IMServiceImpl serviceWithInternalName:v3];

  v5 = [v4 supportsCapability:*(a1 + 32)];
  return v5;
}

id sub_1A82A9DF4(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_1A8259AF0;
  v8 = sub_1A825AEA4;
  v9 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1A82A9EF8;
  v3[3] = &unk_1E7810CB8;
  v3[4] = &v4;
  [a1 enumerateObjectsWithOptions:0 usingBlock:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A82A9EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82A9EF8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (![v7 type])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

id sub_1A82A9F70(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_1A8259AF0;
  v8 = sub_1A825AEA4;
  v9 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1A82AA074;
  v3[3] = &unk_1E7810CB8;
  v3[4] = &v4;
  [a1 enumerateObjectsWithOptions:2 usingBlock:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A82AA05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82AA074(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (![v7 type])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1A82AA0EC(void *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v18 = a1;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Logging GUIDs of chat %p due to: %@", buf, 0x16u);
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) guid];
        if (IMOSLoggingEnabled())
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v18 = v9;
            _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

void sub_1A82AA4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82AA4F0(uint64_t a1)
{
  v5 = [*(a1 + 32) map];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1A82AA634(uint64_t a1)
{
  v2 = [*(a1 + 32) map];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

uint64_t sub_1A82AA73C(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1A82AA7B0;
  v3[3] = &unk_1E7810D30;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_1A82AA7B0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 map];
  [v7 setObject:v5 forKey:v6];
}

void sub_1A82AA8E0(uint64_t a1)
{
  v2 = [*(a1 + 32) map];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_1A82AA9E8(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = [*(a1 + 40) map];
        [v8 removeObjectForKey:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_1A82AABB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82AABD0(uint64_t a1)
{
  v2 = [*(a1 + 32) map];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

void sub_1A82AB16C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    if (!v2)
    {
      JUMPOUT(0x1A82AB100);
    }

    JUMPOUT(0x1A82AB0ECLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A82AB6D4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82AB644);
  }

  _Unwind_Resume(a1);
}

void sub_1A82ABD90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, int a10, __int16 a11, __int16 a12, uint64_t a13, __int128 a14)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(exception_object);
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v14 name];
        v17 = [v14 reason];
        v18 = [v14 userInfo];
        LODWORD(a9) = 138413314;
        *(&a9 + 4) = v14;
        WORD6(a9) = 2112;
        *(&a9 + 14) = v16;
        a12 = 2112;
        a13 = v17;
        LOWORD(a14) = 2112;
        *(&a14 + 2) = v18;
        WORD5(a14) = 2080;
        *(&a14 + 12) = "[IMAccountController accountLoginComplete:]";
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", &a9, 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A82ABD54);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A82AC1A0(uint64_t a1, void *a2)
{
  v3 = [a2 service];
  v4 = [v3 supportsCapability:*(a1 + 32)];

  return v4;
}

uint64_t sub_1A82AC504(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) accountActive:v3])
  {
    v4 = [v3 service];
    v5 = [v4 supportsCapability:*(a1 + 40)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1A82ACD84(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82ACD20);
  }

  _Unwind_Resume(a1);
}

void sub_1A82ADE24(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, int a10, __int16 a11, __int16 a12, uint64_t a13, __int128 a14)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(exc_buf);
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v14 name];
        v17 = [v14 reason];
        v18 = [v14 userInfo];
        LODWORD(a9) = 138413314;
        *(&a9 + 4) = v14;
        WORD6(a9) = 2112;
        *(&a9 + 14) = v16;
        a12 = 2112;
        a13 = v17;
        LOWORD(a14) = 2112;
        *(&a14 + 2) = v18;
        WORD5(a14) = 2080;
        *(&a14 + 12) = "[IMAccountController deleteAccount:locally:]";
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", &a9, 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A82ADC3CLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1A82ADF40(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, __int16 a11, uint64_t a12, __int16 a13, uint64_t a14, __int16 a15, uint64_t a16, __int16 a17, uint64_t a18)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A82ADF24);
  }

  objc_end_catch();
  _Unwind_Resume(exc_buf);
}

void sub_1A82B0EC0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82B0DC4);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1A82B1ED0(id a1, uint64_t a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (a1 == v4 || ([a1 isEqualToArray:v4] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v7 = [a1 count];
    if (v7 == [v4 count])
    {
      v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:a1];
      v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v4];
      v10 = [v8 count];
      if (v10 == [v9 count])
      {
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v11 = a1;
        v12 = [v11 countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v12)
        {
          v13 = *v37;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v37 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = *(*(&v36 + 1) + 8 * i);
              if ([v9 containsObject:v15])
              {
                [v9 removeObject:v15];
                [v8 removeObject:v15];
              }
            }

            v12 = [v11 countByEnumeratingWithState:&v36 objects:v42 count:16];
          }

          while (v12);
        }

        if ([v8 count])
        {
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          obj = [v8 allObjects];
          v27 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
          if (v27)
          {
            v26 = *v33;
            while (2)
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v33 != v26)
                {
                  objc_enumerationMutation(obj);
                }

                v17 = *(*(&v32 + 1) + 8 * j);
                v28 = 0u;
                v29 = 0u;
                v30 = 0u;
                v31 = 0u;
                v18 = v9;
                v19 = [v18 countByEnumeratingWithState:&v28 objects:v40 count:16];
                if (!v19)
                {
LABEL_41:

LABEL_42:
                  goto LABEL_43;
                }

                v20 = *v29;
LABEL_24:
                v21 = 0;
                while (1)
                {
                  if (*v29 != v20)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v22 = *(*(&v28 + 1) + 8 * v21);
                  if ([v22 _isChatSiblingOf:v17])
                  {
                    break;
                  }

                  if (v19 == ++v21)
                  {
                    v19 = [v18 countByEnumeratingWithState:&v28 objects:v40 count:16];
                    if (v19)
                    {
                      goto LABEL_24;
                    }

                    goto LABEL_41;
                  }
                }

                v23 = v22;

                if (!v23)
                {
                  goto LABEL_42;
                }

                [v18 removeObject:v23];
                [v8 removeObject:v17];
              }

              v27 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }
        }

        v5 = [v8 count] == 0;
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v44 = a1;
            v45 = 2112;
            v46 = v4;
            _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "IMHandle+Utilities: equivalentToRecipients - self or recipient array has duplicate values! self: %@; recipients: %@", buf, 0x16u);
          }
        }

LABEL_43:
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void sub_1A82B4550(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82B4518);
  }

  _Unwind_Resume(a1);
}

void sub_1A82B48B0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82B4878);
  }

  _Unwind_Resume(a1);
}

void sub_1A82B4FC4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A82B5078;
  block[3] = &unk_1E7810E88;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v10 = v4;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t sub_1A82B5078(void *a1)
{
  (*(a1[6] + 16))();
  v3 = a1[4];
  v2 = a1[5];

  return [v2 updatePersonalNickname:v3];
}

void sub_1A82B71EC(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69A8190];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithDictionaryRepresentation:v6];

  [*(a1 + 32) setObject:v8 forKey:v7];
}

void sub_1A82B7278(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69A8190];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithDictionaryRepresentation:v6];

  [*(a1 + 32) setObject:v8 forKey:v7];
}

void sub_1A82B7304(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69A8190];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithDictionaryRepresentation:v6];

  [*(a1 + 32) setObject:v8 forKey:v7];
}

void sub_1A82B7390(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A82B7458;
  block[3] = &unk_1E7810D08;
  block[4] = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void sub_1A82B7468(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A824DC90;
  v5[3] = &unk_1E7810140;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

id *sub_1A82B9EB8(id *result, uint64_t a2, id a3)
{
  if (result[4] == a3)
  {
    return [result[5] addObject:a2];
  }

  return result;
}

uint64_t sub_1A82B9ED4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 chatIdentifier];
  v9 = [v7 containsString:v8];

  if (v9)
  {
    v10 = -1;
  }

  else
  {
    v11 = [*(a1 + 32) chatIdentifier];
    v12 = [v5 containsString:v11];

    v10 = v12;
  }

  return v10;
}

void sub_1A82BA19C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) daemonController];
  v5 = [v4 synchronousRemoteDaemon];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A82BA270;
  v8[3] = &unk_1E7810FC8;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v3;
  v7 = v3;
  [v5 loadChatWithGUID:v6 reply:v8];
}

id sub_1A82BA7D0(uint64_t a1, _BYTE *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E695DFA8] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(a1 + 40) _cachedChatWithGUID:*(*(&v17 + 1) + 8 * i)];
        v11 = [v10 guid];
        v12 = [v4 containsObject:v11];

        if ((v12 & 1) == 0)
        {
          if (v10)
          {
            v13 = [v10 guid];
            [v4 addObject:v13];

            [v3 addObject:v10];
          }

          else if (a2)
          {
            *a2 = 1;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [v3 copy];

  return v14;
}

void sub_1A82BA9A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A82BAB14;
  v16[3] = &unk_1E7811040;
  v17 = v6;
  v8 = v6;
  v9 = [v7 __imArrayByFilteringWithBlock:v16];
  v10 = [*(a1 + 40) _chatPredicateForGUIDs:v9];
  v11 = [*(a1 + 40) daemonController];
  v12 = [v11 synchronousRemoteDaemon];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A82BAB38;
  v14[3] = &unk_1E7810FC8;
  v14[4] = *(a1 + 40);
  v15 = v5;
  v13 = v5;
  [v12 loadChatsFilteredUsingPredicate:v10 reply:v14];
}

void sub_1A82BB008(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMChatRegistryLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 64);
    v8 = *(a1 + 65);
    v9 = *(a1 + 48);
    *buf = 138413314;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    v22 = 1024;
    v23 = v7;
    v24 = 1024;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEFAULT, "Cache miss looking up chat with groupID: %@ displayName: %@ joinedChatsOnly: %{BOOL}d allowAlternativeService: %{BOOL}d handles: %@", buf, 0x2Cu);
  }

  v10 = [*(a1 + 48) __imArrayByApplyingBlock:&unk_1F1B6E1A0];
  v11 = [*(a1 + 56) daemonController];
  v12 = [v11 synchronousRemoteDaemon];
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A82BB1CC;
  v16[3] = &unk_1E7810FC8;
  v16[4] = *(a1 + 56);
  v17 = v3;
  v15 = v3;
  [v12 loadChatsWithHandleIDs:v10 groupID:v13 displayName:v14 style:43 reply:v16];
}

id sub_1A82BB314(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) _cachedChatWithIdentifier:*(a1 + 40)];
  v2 = IMChatRegistryLogHandle(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v1;
    _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_DEFAULT, "Returning cached chat %@", &v4, 0xCu);
  }

  return v1;
}

void sub_1A82BB3DC(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMChatRegistryLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEFAULT, "Cache miss looking up chat with identifier: %@ ", buf, 0xCu);
  }

  v6 = [*(a1 + 40) daemonController];
  v7 = [v6 synchronousRemoteDaemon];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A82BB530;
  v10[3] = &unk_1E7810FC8;
  v8 = *(a1 + 32);
  v10[4] = *(a1 + 40);
  v11 = v3;
  v9 = v3;
  [v7 loadChatsWithIdentifier:v8 reply:v10];
}

void sub_1A82BB674(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) daemonController];
  v5 = [v4 synchronousRemoteDaemon];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A82BB748;
  v8[3] = &unk_1E7810FC8;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v3;
  v7 = v3;
  [v5 loadChatsWithGroupID:v6 reply:v8];
}

void sub_1A82BB8EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", *MEMORY[0x1E69A6B48], *(a1 + 32)];
  v5 = [*(a1 + 40) daemonController];
  v6 = [v5 synchronousRemoteDaemon];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A82BB9F4;
  v8[3] = &unk_1E7810FC8;
  v8[4] = *(a1 + 40);
  v9 = v3;
  v7 = v3;
  [v6 loadChatsFilteredUsingPredicate:v4 reply:v8];
}

void sub_1A82BBD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82BBD70(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) _processLoadedChatDictionaries:a2];
  v3 = [v6 firstObject];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1A82BBF18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@ OR %K = %@", *MEMORY[0x1E69A6B18], *(a1 + 32), *MEMORY[0x1E69A6B78], *(a1 + 32)];
  v5 = [*(a1 + 40) daemonController];
  v6 = [v5 synchronousRemoteDaemon];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A82BC030;
  v8[3] = &unk_1E7810FC8;
  v8[4] = *(a1 + 40);
  v9 = v3;
  v7 = v3;
  [v6 loadChatsFilteredUsingPredicate:v4 reply:v8];
}

void sub_1A82BC498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82BC4B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v93 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v62 = a3;
  v63 = a4;
  v64 = a1;
  v70 = v7;
  if ([v7 count])
  {
    v8 = [v7 count];
    if (v8 == [*(a1 + 32) count])
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
      if (*(a1 + 48))
      {
        **(a1 + 48) = [v7 allValues];
      }
    }

    else
    {
      v69 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
      obja = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
      v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v34 = *(a1 + 32);
      v35 = [v34 countByEnumeratingWithState:&v75 objects:v88 count:16];
      if (v35)
      {
        v36 = *v76;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v76 != v36)
            {
              objc_enumerationMutation(v34);
            }

            v38 = *(*(&v75 + 1) + 8 * i);
            v39 = [v38 identifier];
            v40 = [v70 objectForKey:v39];

            if (v40)
            {
              [v33 addObject:v40];
              v41 = [v40 ID];
              [v69 addObject:v41];
            }

            else
            {
              v41 = [MEMORY[0x1E69A7FD0] IDsFromCNContact:v38];
              v42 = _IDSCopyOrderedAliasStrings();
              v43 = [v42 firstObject];

              if (v43)
              {
                [v69 addObject:v43];
                [obja addObject:v43];
              }

              else if (IMOSLoggingEnabled())
              {
                v44 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v91 = v38;
                  _os_log_impl(&dword_1A823F000, v44, OS_LOG_TYPE_INFO, "Failed to find best address for contact %@", buf, 0xCu);
                }
              }
            }
          }

          v35 = [v34 countByEnumeratingWithState:&v75 objects:v88 count:16];
        }

        while (v35);
      }

      v45 = IMFindExistingChatForAddresses(v69, 0, [v69 count] != 0, 1);
      v46 = *(*(v64 + 40) + 8);
      v47 = *(v46 + 40);
      *(v46 + 40) = v45;

      if (*(v64 + 48))
      {
        if ([obja count])
        {
          v48 = +[IMServiceImpl iMessageService];
          v49 = IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService(v69, 1, v48);

          if (([v49 _isUsableForSending] & 1) == 0)
          {
            v50 = +[IMServiceImpl smsService];
            if (v50)
            {
              v51 = +[IMAccountController sharedInstance];
              v52 = [v51 accountsForService:v50];
              v53 = [v52 __imFirstObject];

              v49 = v53;
            }
          }

          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v54 = obja;
          v55 = [v54 countByEnumeratingWithState:&v71 objects:v87 count:16];
          if (v55)
          {
            v56 = *v72;
            do
            {
              for (j = 0; j != v55; ++j)
              {
                if (*v72 != v56)
                {
                  objc_enumerationMutation(v54);
                }

                v58 = IMStripFormattingFromAddress();
                v59 = [v49 imHandleWithID:v58];

                if (v59)
                {
                  [v33 addObject:v59];
                }
              }

              v55 = [v54 countByEnumeratingWithState:&v71 objects:v87 count:16];
            }

            while (v55);
          }
        }

        v60 = v33;
        **(v64 + 48) = v33;
        v61 = IMChatRegistryLogHandle(v60);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v91 = v33;
          _os_log_impl(&dword_1A823F000, v61, OS_LOG_TYPE_DEFAULT, "best handles: %@", buf, 0xCu);
        }
      }
    }

    goto LABEL_75;
  }

  v9 = IMChatRegistryLogHandle(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEFAULT, "IMHandle bestHandlesForContacts returned nil", buf, 2u);
  }

  v65 = [MEMORY[0x1E695DF70] array];
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = *(a1 + 32);
  v10 = [obj countByEnumeratingWithState:&v83 objects:v92 count:16];
  if (v10)
  {
    v68 = *v84;
    do
    {
      for (k = 0; k != v10; ++k)
      {
        if (*v84 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [MEMORY[0x1E69A7FD0] IDsFromCNContact:*(*(&v83 + 1) + 8 * k)];
        v13 = +[IMServiceImpl iMessageService];
        v14 = IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService(v12, 0, v13);

        if ([v14 _isUsableForSending])
        {
          v15 = v14;
        }

        else
        {
          v16 = +[IMServiceImpl smsService];
          if (v16)
          {
            v17 = +[IMAccountController sharedInstance];
            v18 = [v17 accountsForService:v16];
            v15 = [v18 __imFirstObject];

            v20 = IMChatRegistryLogHandle(v19);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v91 = v15;
              _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_DEFAULT, "preferredAccount isn't usable for sending, falling back to smsAccount: %@", buf, 0xCu);
            }
          }

          else
          {
            v15 = v14;
          }
        }

        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v21 = v12;
        v22 = [v21 countByEnumeratingWithState:&v79 objects:v89 count:16];
        v23 = v21;
        if (!v22)
        {
          goto LABEL_31;
        }

        v23 = 0;
        v24 = *v80;
        do
        {
          for (m = 0; m != v22; ++m)
          {
            if (*v80 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = IMStripFormattingFromAddress();
            v27 = [v15 imHandleWithID:v26];

            if ([v27 isBetterThanIMHandle:v23 nonPhoneNumbersPreferred:0])
            {
              v28 = v27;

              v23 = v28;
            }
          }

          v22 = [v21 countByEnumeratingWithState:&v79 objects:v89 count:16];
        }

        while (v22);

        if (v23)
        {
          [v65 addObject:v23];
LABEL_31:
        }
      }

      v10 = [obj countByEnumeratingWithState:&v83 objects:v92 count:16];
    }

    while (v10);
  }

  v30 = IMChatRegistryLogHandle(v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v91 = v65;
    _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_DEFAULT, "Best handles: %@", buf, 0xCu);
  }

  v31 = v65;
  if (*(v64 + 48))
  {
    v32 = v65;
    v31 = v65;
    **(v64 + 48) = v65;
  }

LABEL_75:
}

void sub_1A82BD0F0(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = [*(a1 + 32) objectForKey:a3];
  if (v5)
  {
    v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v7 = [v6 isMergeFilteredThreadsEnabled];

    if (!v7 || *(a1 + 48) < 1 || ([*(a1 + 40) chatGUIDToInfoMap], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKeyedSubscript:", v11), v9 = objc_claimAutoreleasedReturnValue(), v8, v9) && (v10 = objc_msgSend(MEMORY[0x1E69A8210], "isFilterMode:subsetOf:", objc_msgSend(v9, "isFiltered"), *(a1 + 48)), v9, v10))
    {
      [v5 addObject:v11];
    }
  }
}

void sub_1A82BD374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82BD39C(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = a2;
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [v4 allValues];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        if (v8)
        {
          v12 = [*(*(&v23 + 1) + 8 * i) time];
          v13 = [v8 time];
          v14 = [v12 compare:v13];

          if (v14 != 1)
          {
            continue;
          }
        }

        v15 = v11;

        v8 = v15;
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v16 = [*(a1 + 32) _cachedChatWithGUID:v22];
  v17 = v16;
  if (v8)
  {
    v18 = [v16 account];
    v19 = [v18 uniqueID];
    v20 = _IMBestAccountForIMItem(v8, v17, v19, 0, 0);

    _ConfigureContextForIMItem(v8, v20, 1);
  }

  [v17 _clearHistoryAndReplaceLastMessage:{v8, a1}];
}

void sub_1A82BD8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82BD8FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 _earliestLastMessageDateFromChatDictionaries:v4];
  v5 = [*(a1 + 32) _processLoadedChatDictionaries:v4];

  (*(*(a1 + 40) + 16))();
}

void sub_1A82BD998(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 48) == 1)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1A82BDA74;
    v5[3] = &unk_1E7810230;
    v7 = *(a1 + 32);
    v6 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

void sub_1A82BDBA4(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A82BDCE0;
  aBlock[3] = &unk_1E7810190;
  aBlock[4] = *(a1 + 32);
  v4 = v3;
  v10 = v4;
  v11 = *(a1 + 40);
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (*(a1 + 48))
  {
    v5[2](v5);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1A82BDD60;
    v7[3] = &unk_1E780FE90;
    v8 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

void sub_1A82BDCE0(uint64_t a1)
{
  v3 = [*(a1 + 32) _earliestLastMessageDateFromChatDictionaries:*(a1 + 40)];
  v2 = [*(a1 + 32) _processLoadedChatDictionaries:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

void sub_1A82BDF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A82BDF6C(uint64_t a1)
{
  v2 = [*(a1 + 32) _lastMessageDateForQueryFromChatDictionary:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    if (v5)
    {
      v6 = [v5 earlierDate:v3];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    else
    {
      v9 = v3;
      v8 = *(v4 + 40);
      *(v4 + 40) = v9;
    }
  }

  return MEMORY[0x1EEE66BB8](v2);
}

void sub_1A82BE254(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 guid];
  [v2 addObject:v3];
}

void sub_1A82BE2AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A82BE344;
  v6[3] = &unk_1E7811238;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void sub_1A82BE344(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 guid];
  v4 = [v2 objectForKeyedSubscript:v5];
  [v3 setEarliestCachedMessageDate:v4];
}

id sub_1A82BECB4(uint64_t a1, _BYTE *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = (*(*(a1 + 32) + 16))();
  v4 = v3;
  if (!a2 || v3)
  {
    if (v3)
    {
      v7[0] = v3;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
      goto LABEL_7;
    }
  }

  else
  {
    *a2 = 1;
  }

  v5 = MEMORY[0x1E695E0F0];
LABEL_7:

  return v5;
}

void sub_1A82BF224(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A82BF1A4);
  }

  _Block_object_dispose((v2 - 144), 8);
  _Unwind_Resume(exc_buf);
}

void sub_1A82BF298(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IMChatRegistryLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEFAULT, "Processing chat cache miss.", v5, 2u);
  }

  [*(a1 + 32) setProcessingChatCacheMiss:1];
  (*(*(a1 + 48) + 16))();
}

void sub_1A82BF338(uint64_t a1, int a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2)
  {
    v10 = (*(*(a1 + 48) + 16))();
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v14 = IMChatRegistryLogHandle(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = *(*(*(a1 + 56) + 8) + 40);
      v21 = 138412546;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEFAULT, "Chat cache miss complete with key: %@ results %@", &v21, 0x16u);
    }

    v17 = *(a1 + 40);
    v18 = [v9 objectForKeyedSubscript:@"chats"];
    [v17 _validateChatQueryResults:v18 matchCurrentCacheResults:*(*(*(a1 + 56) + 8) + 40)];
  }

  else
  {
    v18 = IMChatRegistryLogHandle(v8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1A84DF8B0(v7, v18);
    }
  }

  v20 = IMChatRegistryLogHandle(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_DEFAULT, "Ended processing chat cache miss.", &v21, 2u);
  }

  [*(a1 + 40) setProcessingChatCacheMiss:0];
}

void sub_1A82BFCE0()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = qword_1EB2EA1D0;
  qword_1EB2EA1D0 = v0;

  v2 = +[IMServiceImpl iMessageService];

  if (v2)
  {
    v3 = qword_1EB2EA1D0;
    v4 = +[IMServiceImpl iMessageService];
    [v3 addObject:v4];
  }

  v5 = +[IMServiceImpl smsService];

  if (v5)
  {
    v6 = qword_1EB2EA1D0;
    v7 = +[IMServiceImpl smsService];
    [v6 addObject:v7];
  }
}

void sub_1A82C0388(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 48))
  {
    v5 = [*(a1 + 32) _processLoadedChatDictionaries:v3];
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, v5);
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A82C0480;
    block[3] = &unk_1E7810190;
    block[4] = *(a1 + 32);
    v8 = v3;
    v9 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t sub_1A82C0480(uint64_t a1)
{
  [*(a1 + 32) _processLoadedChatDictionaries:*(a1 + 40)];
  objc_claimAutoreleasedReturnValue();
  v2 = *(a1 + 48);
  if (v2)
  {
    v2 = (*(v2 + 16))();
  }

  return MEMORY[0x1EEE66BB8](v2);
}

void sub_1A82C0658(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 48))
  {
    v5 = [*(a1 + 32) _processLoadedChatDictionaries:v3];
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, v5);
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A82C0750;
    block[3] = &unk_1E7810190;
    block[4] = *(a1 + 32);
    v8 = v3;
    v9 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t sub_1A82C0750(uint64_t a1)
{
  [*(a1 + 32) _processLoadedChatDictionaries:*(a1 + 40)];
  objc_claimAutoreleasedReturnValue();
  v2 = *(a1 + 48);
  if (v2)
  {
    v2 = (*(v2 + 16))();
  }

  return MEMORY[0x1EEE66BB8](v2);
}

void sub_1A82C0940(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 daemonController];
  v7 = v6;
  if (v3)
  {
    [v6 synchronousReplyingRemoteDaemon];
  }

  else
  {
    [v6 replyingRemoteDaemon];
  }
  v8 = ;

  [v8 moveMessagesWithGUIDsToRecentlyDeleted:*(a1 + 40) deleteDate:*(a1 + 48) queryID:v5];
}

void sub_1A82C09D8(uint64_t a1, char a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ((a2 & 1) == 0 && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [*(a1 + 32) count];
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v14 = 134218754;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Recently Deleted | QueryController: query to move %lu message GUIDs [%@] to recently deleted at time:%@ gave error: %@", &v14, 0x2Au);
    }
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))();
  }
}

void sub_1A82C0CC4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 daemonController];
  v7 = v6;
  if (v3)
  {
    [v6 synchronousReplyingRemoteDaemon];
  }

  else
  {
    [v6 replyingRemoteDaemon];
  }
  v8 = ;

  [v8 moveMessagesInChatsWithGUIDsToRecentlyDeleted:*(a1 + 40) deleteDate:*(a1 + 48) queryID:v5];
}

void sub_1A82C0D5C(uint64_t a1, int a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1A82C0F04;
    v15[3] = &unk_1E7811238;
    v9 = *(a1 + 32);
    v16 = *(a1 + 40);
    [v9 enumerateObjectsUsingBlock:v15];
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [*(a1 + 32) count];
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      *buf = 134218754;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Recently Deleted | QueryController: query to move messages from %lu chats GUIDs [%@] to recently deleted at time:%@ gave error: %@", buf, 0x2Au);
    }
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))();
  }
}

void sub_1A82C0F04(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setRecoverableMessagesCount:1];
  if (*(a1 + 32))
  {
    [v4 setEarliestRecoverableMessageDeletionDate:?];
    [v4 setLatestRecoverableMessageDeletionDate:*(a1 + 32)];
  }

  v3 = [v4 loadMessagesBeforeDate:0 limit:objc_msgSend(v4 loadImmediately:{"numberOfMessagesToKeepLoaded"), 0}];
}

void sub_1A82C117C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) allGUIDsForChat:a2];
  [v2 addObjectsFromArray:v3];
}

void sub_1A82C11D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 daemonController];
  v7 = v6;
  if (v3)
  {
    [v6 synchronousReplyingRemoteDaemon];
  }

  else
  {
    [v6 replyingRemoteDaemon];
  }
  v8 = ;

  [v8 recoverMessagesWithChatGUIDs:*(a1 + 40) queryID:v5];
}

void sub_1A82C126C(uint64_t a1, int a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    [*(a1 + 32) _completedRecoveringChatsFromRecentlyDeleted:*(a1 + 40)];
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 48);
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Recently Deleted | QueryController: query to recover messages for chatGUIDs: [%@] with error: %@", &v12, 0x16u);
    }
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))();
  }
}

void sub_1A82C1544(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 daemonController];
  v6 = v5;
  if (v2)
  {
    [v5 synchronousReplyingRemoteDaemon];
  }

  else
  {
    [v5 replyingRemoteDaemon];
  }
  v7 = ;

  [v7 loadRecoverableMessagesMetadataWithQueryID:v4];
}

void sub_1A82C15D4(uint64_t a1, int a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2)
  {
    v10 = [v8 objectForKeyedSubscript:@"recoverableMessagesMetadata"];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v16 = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A82C17A8;
    v13[3] = &unk_1E7811410;
    v14 = *(a1 + 48);
    v13[4] = *(a1 + 32);
    v13[5] = &buf;
    [v10 enumerateKeysAndObjectsUsingBlock:v13];
    _Block_object_dispose(&buf, 8);
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Recently Deleted | QueryController: query to retrieve recoverable message count: %@", &buf, 0xCu);
    }
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))();
  }
}

void sub_1A82C17A8(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v5 = *MEMORY[0x1E69A7898];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = [v7 unsignedLongValue];
  v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69A78A0]];
  v10 = [v9 unsignedLongValue];

  v11 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69A7888]];
  v12 = [v11 unsignedLongLongValue];
  v13 = [MEMORY[0x1E695DF00] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:v12];
  v14 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69A7890]];

  v15 = [v14 unsignedLongLongValue];
  v16 = [MEMORY[0x1E695DF00] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:v15];
  if ((*(a1 + 48) & 1) != 0 || *(*(*(a1 + 40) + 8) + 24) != 1)
  {
    v17 = [*(a1 + 32) existingChatWithGUID:v19];
  }

  else
  {
    v17 = [*(a1 + 32) _cachedChatWithGUID:v19];
  }

  v18 = v17;
  [v17 setRecoverableMessagesCount:v8];
  [v18 setUnreadRecoverableMessagesCount:v10];
  [v18 setEarliestRecoverableMessageDeletionDate:v13];
  [v18 setLatestRecoverableMessageDeletionDate:v16];
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void sub_1A82C1B4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) allGUIDsForChat:a2];
  [v2 addObjectsFromArray:v3];
}

void sub_1A82C1BA4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 daemonController];
  v7 = v6;
  if (v3)
  {
    [v6 synchronousReplyingRemoteDaemon];
  }

  else
  {
    [v6 replyingRemoteDaemon];
  }
  v8 = ;

  [v8 permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:*(a1 + 40) queryID:v5];
}

void sub_1A82C1C3C(uint64_t a1, int a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    [*(a1 + 32) enumerateObjectsUsingBlock:&unk_1F1B6E220];
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [*(a1 + 32) count];
      v11 = *(a1 + 32);
      v13 = 134218498;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Recently Deleted | QueryController: query to permanently delete recoverable messages from %lu chats GUIDs [%@] gave error: %@", &v13, 0x20u);
    }
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))();
  }
}

void sub_1A82C1D80(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setRecoverableMessagesCount:0];
  [v2 setEarliestRecoverableMessageDeletionDate:0];
  [v2 setLatestRecoverableMessageDeletionDate:0];
}

void sub_1A82C1EAC(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) allGUIDsForChat:v3];
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isMergeFilteredThreadsEnabled];

  if (v6 && [v3 canBeMessageLevelFiltered])
  {
    v16 = v4;
    v17 = v3;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          v13 = [*(a1 + 32) chatGUIDToInfoMap];
          v14 = [v13 objectForKey:v12];
          v15 = [v14 isFiltered];

          if ([MEMORY[0x1E69A8210] isFilterMode:v15 subsetOf:*(a1 + 48)])
          {
            [*(a1 + 40) addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v4 = v16;
    v3 = v17;
  }

  else
  {
    [*(a1 + 40) addObjectsFromArray:v4];
  }
}

BOOL sub_1A82C2288(uint64_t a1, void *a2, void *a3, void *a4, _BYTE *a5, uint64_t a6, void *a7, void *a8)
{
  v13 = a2;
  v14 = +[IMFileTransferCenter sharedInstance];
  v15 = [v14 transferForGUID:v13];

  if (v15)
  {
    *a3 = [v15 localURL];
    *a4 = [v15 type];
    *a5 = [v15 isSticker];
    if (a7)
    {
      *a7 = [v15 adaptiveImageGlyphContentDescription];
    }

    if (a8)
    {
      v16 = [v15 attributionInfo];
      *a8 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69A6F98]];
    }
  }

  return v15 != 0;
}

BOOL sub_1A82C2438(uint64_t a1, void *a2, void *a3, void *a4, _BYTE *a5, uint64_t a6, void *a7, void *a8)
{
  v13 = a2;
  v14 = +[IMFileTransferCenter sharedInstance];
  v15 = [v14 transferForGUID:v13];

  if (v15)
  {
    if (a3)
    {
      *a3 = [v15 localURL];
    }

    if (a4)
    {
      *a4 = [v15 type];
    }

    if (a5)
    {
      *a5 = [v15 isSticker];
    }

    if (a7)
    {
      *a7 = [v15 adaptiveImageGlyphContentDescription];
    }

    if (a8)
    {
      v16 = [v15 attributionInfo];
      *a8 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69A6F98]];
    }
  }

  return v15 != 0;
}

id sub_1A82C2558(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = a6;
  v8 = [a1 associatedMessageType] & 0xFFFFFFFFFFFFFFF8;
  if (v8 == 3000 || v8 == 2000)
  {
    v9 = MEMORY[0x1E69A8138];
    v10 = [a1 sender];
    v11 = [v9 displayNameForAddress:v10];
  }

  else
  {
    v11 = 0;
  }

  v15 = v7;
  v12 = v7;
  v13 = IMSharedMessageSummaryCreate();

  return v13;
}

uint64_t sub_1A82C2680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a7)
  {
    *a7 = 0;
  }

  return (*(*(a1 + 32) + 16))();
}

id sub_1A82C26A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = a7;
  v7 = v10;
  v8 = IMSharedMessageSummaryCreate();

  return v8;
}

uint64_t sub_1A82C276C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a7)
  {
    *a7 = 0;
  }

  return (*(*(a1 + 32) + 16))();
}

id sub_1A82C2790(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = +[IMServiceImpl iMessageService];
  v5 = IMPreferredSendingAccountForAddressWithFallbackService(v3, v4);

  if (([v5 _isUsableForSending] & 1) == 0)
  {
    v6 = +[IMServiceImpl smsService];
    if (v6)
    {
      v7 = +[IMAccountController sharedInstance];
      v8 = [v7 accountsForService:v6];
      v9 = [v8 __imFirstObject];

      v5 = v9;
    }
  }

  return v5;
}

id sub_1A82C2870(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4 && ([a1 bestAccountForAddress:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = IMStripFormattingFromAddress();
    v8 = [v6 imHandleWithID:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL sub_1A82C2908(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 handleForAddress:?];
  v5 = v4;
  v6 = v4 && ([v4 isLoginIMHandle] & 1) != 0 || a3 == 0;

  return v6;
}

id sub_1A82C295C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 handleForAddress:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _displayNameWithAbbreviation];
    v8 = v7;
    if (v7)
    {
      v9 = v7;

      v4 = v9;
    }
  }

  return v4;
}

uint64_t sub_1A82C2A28()
{
  v0 = objc_alloc_init(IMSyncedSettingsManager);
  qword_1EB2E9FA8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A82C2B64()
{
  v0 = IMLogHandleForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    sub_1A84DF950(v0);
  }
}

void sub_1A82C2C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1A82C323C(uint64_t a1)
{
  if (qword_1EB2EA110 != -1)
  {
    sub_1A84DF994();
  }

  v2 = qword_1EB2EA118;

  return v2;
}

uint64_t sub_1A82C3280()
{
  v0 = os_log_create("com.apple.Messages", "Chat");
  qword_1EB2EA118 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A82C7360(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [*(a1 + 40) transferForGUID:v12];
    v8 = MEMORY[0x1E695DFF8];
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v11 = [v8 fileURLWithPath:v10];
    [v9 registerGUID:v12 forNewOutgoingTransferWithLocalURL:v11];

    [v7 _setTransferState:5];
  }
}

void sub_1A82C994C(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A82C99D8;
  v4[3] = &unk_1E78116A8;
  v5 = *(a1 + 32);
  [a3 enumerateObjectsUsingBlock:v4];
}

void sub_1A82C99FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A82C9AB4;
  v7[3] = &unk_1E78116F8;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  [a3 enumerateObjectsUsingBlock:v7];
}

void sub_1A82CACF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v7 = qword_1EB2EA1E8;
    v22 = qword_1EB2EA1E8;
    if (!qword_1EB2EA1E8)
    {
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = sub_1A82CB1F4;
      v17 = &unk_1E7811770;
      v18 = &v19;
      sub_1A82CB1F4(&v14);
      v7 = v20[3];
    }

    v8 = v7;
    _Block_object_dispose(&v19, 8);
    v9 = [[v7 alloc] initWithPhotoKitMomentShare:v5];
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v10 = qword_1EB2EA1F8;
    v22 = qword_1EB2EA1F8;
    if (!qword_1EB2EA1F8)
    {
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = sub_1A82CB3B4;
      v17 = &unk_1E7811770;
      v18 = &v19;
      sub_1A82CB3B4(&v14);
      v10 = v20[3];
    }

    v11 = v10;
    _Block_object_dispose(&v19, 8);
    v12 = [[v10 alloc] initWithMomentShareStatus:v9 presentationStyle:3];
    [*(*(a1 + 32) + 8) setObject:v12 forKeyedSubscript:*(a1 + 40)];
    [v12 registerChangeObserver:*(a1 + 32) context:qword_1EB2E4C78];
    v13 = [*(a1 + 32) delegate];
    [v13 momentSharePresentationCacheDidChange:*(a1 + 32)];
  }
}

void sub_1A82CAEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82CB0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82CB0C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = *(*(a1 + 40) + 16);
    v7 = 0;
    v5 = [v4 momentShareForURLString:v3 error:&v7];
    v6 = v7;
    if (!v5)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      [*(*(a1 + 40) + 8) setObject:0 forKeyedSubscript:v3];
    }
  }
}

Class sub_1A82CB1F4(uint64_t a1)
{
  sub_1A82CB24C();
  result = objc_getClass("PXPhotoKitMomentShareStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A84DF9A8();
  }

  qword_1EB2EA1E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A82CB24C()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!qword_1EB2EA1F0)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = sub_1A82CB340;
    v0[4] = &unk_1E78102B8;
    v0[5] = v0;
    v1 = xmmword_1E7811790;
    v2 = 0;
    qword_1EB2EA1F0 = _sl_dlopen();
  }

  if (!qword_1EB2EA1F0)
  {
    sub_1A84DFA24(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t sub_1A82CB340(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1EB2EA1F0 = result;
  return result;
}

Class sub_1A82CB3B4(uint64_t a1)
{
  sub_1A82CB24C();
  result = objc_getClass("PXMomentShareStatusPresentation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A84DFAA4();
  }

  qword_1EB2EA1F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A82CBB1C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82CBA3CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A82CD02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A82CD044(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = v12;
    v9 = *(a1 + 32);
    v10 = [v8 guid];
    LODWORD(v9) = [v9 isEqualToString:v10];

    if (v9)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

uint64_t IMTranscriptChatItemEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    Class = object_getClass(v3);
    if (Class == object_getClass(v4))
    {
      v6 = [v3[5] isEqualToString:v4[5]];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void sub_1A82D22D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A82D22FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a3 == *(a1 + 80) && a4 == *(a1 + 88);
  v9 = [a2 integerValue];
  v10 = *(a1 + 32);
  if (v8)
  {
    v11 = v10;
  }

  else
  {
    v11 = [v10 attributedSubstringFromRange:{a3, a4}];
  }

  v22 = v11;
  v12 = [IMDetonatedMessagePartChatItem alloc];
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  BYTE1(v21) = [*(a1 + 56) showTranslationAlternateText];
  LOBYTE(v21) = 0;
  v15 = [(IMTextMessagePartChatItem *)v12 _initWithItem:v13 text:v22 translationSecondaryText:0 index:v9 messagePartRange:a3 subject:a4 isShowingEditHistory:v14 showTranslationAlternateText:v21];
  v16 = v15;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v15);
  }

  else if (v15)
  {
    v17 = *(*(*(a1 + 72) + 8) + 40);
    if (!v17)
    {
      v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v19 = *(*(a1 + 72) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      v17 = *(*(*(a1 + 72) + 8) + 40);
    }

    [v17 addObject:v16];
  }
}

void sub_1A82D3868()
{
  _Block_object_dispose((v0 - 144), 8);
  _Block_object_dispose(&v1, 8);
  _Block_object_dispose(&v2, 8);
  JUMPOUT(0x1A82D394CLL);
}

void sub_1A82D3954(uint64_t a1, void *a2)
{
  v3 = [a2 rangeValue];
  v5 = v4;
  if (v3 + v4 <= [*(a1 + 32) length])
  {
    v7 = [*(a1 + 32) substringWithRange:{v3, v5}];
    v6 = [MEMORY[0x1E695DFF8] URLWithString:?];
    if ([*(a1 + 48) _isAllowlistedURL:v6])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

void sub_1A82D3A24(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  v183 = *MEMORY[0x1E69E9840];
  v137 = a2;
  v7 = *(a1 + 96) == a3 && *(a1 + 104) == a4;
  v8 = v7;
  v130 = v8;
  v9 = *(a1 + 32);
  v135 = a4;
  if (v7)
  {
    v133 = v9;
  }

  else
  {
    v133 = sub_1A82D4C80(v9, v5, a4);
    v5 = a3;
  }

  v177 = 0;
  v178 = 0;
  v139 = [*(a1 + 32) attribute:*MEMORY[0x1E69A5F68] atIndex:v5 effectiveRange:&v177];
  if (!v139)
  {
    v138 = 0;
    v139 = 0;
    goto LABEL_26;
  }

  v10 = a4 > v178;
  v11 = +[IMFileTransferCenter sharedInstance];
  v138 = [v11 transferForGUID:v139];

  if (v10)
  {
    if (!v138)
    {
      v13 = IMLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1A84DFCC8();
      }

      v12 = v139;
      v138 = 0;
      v139 = 0;
      goto LABEL_25;
    }

    if (![v138 isAdaptiveImageGlyph])
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1A84DFC8C();
      }

      goto LABEL_25;
    }
  }

  else
  {
    if (!v138)
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1A84DFC50();
      }

      goto LABEL_24;
    }

    if (![v138 isAdaptiveImageGlyph])
    {
      goto LABEL_26;
    }
  }

  v139 = 0;
  v12 = v138;
LABEL_24:
  v138 = 0;
LABEL_25:

LABEL_26:
  v134 = [v137 integerValue];
  v14 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v15 = [v14 isAutomaticIncomingTranslationEnabled];

  if (v15)
  {
    v16 = [*(a1 + 40) translationsForMessagePart:v134];
    if ([v16 count])
    {
      v17 = [v16 firstObject];
      v18 = [objc_alloc(MEMORY[0x1E69A8308]) initWithDictionaryRepresentation:v17];
      v19 = [v18 translatedText];
      v20 = [v19 string];
      v21 = [v20 length] == 0;

      if (v21)
      {
        v131 = 0;
        v132 = 0;
      }

      else
      {
        v132 = v19;
        v22 = objc_alloc(MEMORY[0x1E695DF58]);
        v23 = [v18 sourceLanguage];
        v131 = [v22 initWithLocaleIdentifier:v23];
      }
    }

    else
    {
      v131 = 0;
      v132 = 0;
    }
  }

  else
  {
    v131 = 0;
    v132 = 0;
  }

  v24 = [*(a1 + 40) balloonBundleID];
  v25 = *MEMORY[0x1E69A6A18];
  v26 = [v24 isEqualToString:*MEMORY[0x1E69A6A18]];

  v27 = [*(a1 + 40) balloonBundleID];
  v28 = *MEMORY[0x1E69A6A38];
  v29 = [v27 containsString:*MEMORY[0x1E69A6A38]];

  v30 = [*(a1 + 48) containsIndex:v134];
  v31 = [*(a1 + 32) string];
  v32 = [v31 substringWithRange:{a3, v135}];
  v33 = [v32 isEqualToString:*MEMORY[0x1E69A6CF0]];

  if ([*(a1 + 40) scheduleType] == 2)
  {
    v34 = 0;
  }

  else
  {
    v34 = v30;
  }

  if (v34 == 1)
  {
    v35 = IMLogHandleForCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_1A84DFD04();
    }

    goto LABEL_41;
  }

  if (v33)
  {
    v37 = [*(a1 + 32) attributesAtIndex:a3 effectiveRange:0];
    v36 = [*(a1 + 112) suggestedRepliesMessagePartChatItemForMessageItem:*(a1 + 40) attributes:v37];

    goto LABEL_71;
  }

  if ((*(a1 + 136) & 1) != 0 || (*(a1 + 137) & 1) != 0 || *(a1 + 138) == 1)
  {
    v38 = *(*(a1 + 72) + 8);
    if (*(v38 + 24))
    {
      goto LABEL_42;
    }

    *(v38 + 24) = 1;
    v39 = [*(a1 + 40) message];
    v40 = IMCoreMomentShareURLForMessage(v39);

    if (*(a1 + 138) == 1 && v40)
    {
      v41 = objc_alloc(MEMORY[0x1E696AAB0]);
      v42 = [v40 absoluteString];
      v43 = [v41 initWithString:v42];

      BYTE2(v127) = 0;
      LOWORD(v127) = 0;
      v36 = [[IMTextMessagePartChatItem alloc] _initWithItem:*(a1 + 40) text:v43 translationSecondaryText:v132 index:v134 messagePartRange:a3 subject:v135 shouldDisplayLink:0 isShowingEditHistory:v127 showTranslationAlternateText:?];
      v139 = 0;
LABEL_70:

      v133 = v43;
      goto LABEL_71;
    }

    if (*(a1 + 137) == 1)
    {
      v44 = [(IMAttachmentMessagePartChatItem *)[IMUnavailableMomentShareMessagePartChatItem alloc] _initWithItem:*(a1 + 40) text:v133 index:v134 messagePartRange:a3 transferGUID:v135 chatContext:0, *(a1 + 56)];
LABEL_69:
      v36 = v44;
      v43 = v133;
      goto LABEL_70;
    }

    if (v40)
    {
      v45 = [v40 absoluteString];
      v46 = +[IMMomentShareCache sharedInstance];
      v176 = 0;
      v47 = [v46 momentShareForURLString:v45 error:&v176];
      v48 = v176;

      if (v47)
      {
      }

      else
      {
        IsPermanent = IMMomentShareCacheErrorIsPermanent(v48);

        if (IsPermanent)
        {
          v44 = [(IMAttachmentMessagePartChatItem *)[IMDeletedMomentShareMessagePartChatItem alloc] _initWithItem:*(a1 + 40) text:v133 index:v134 messagePartRange:a3 transferGUID:v135 chatContext:0, *(a1 + 56)];
          goto LABEL_69;
        }
      }
    }

    v44 = [(IMAttachmentMessagePartChatItem *)[IMPendingMomentShareMessagePartChatItem alloc] _initWithItem:*(a1 + 40) text:v133 index:v134 messagePartRange:a3 transferGUID:v135 chatContext:0, *(a1 + 56)];
    goto LABEL_69;
  }

  if (v139)
  {
    if ((v26 & ~*(a1 + 139) | v29))
    {
      v35 = [*(a1 + 40) balloonBundleID];
      if ([v35 isEqualToString:v25])
      {
LABEL_41:

LABEL_42:
        v36 = 0;
        goto LABEL_71;
      }

      v57 = [*(a1 + 40) balloonBundleID];
      v58 = [v57 containsString:v28];

      if (v58)
      {
        goto LABEL_42;
      }

      goto LABEL_82;
    }

    if (!v138)
    {
      if (IMOSLoggingEnabled())
      {
        v93 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
        {
          v94 = *(a1 + 40);
          *buf = 138412546;
          *&buf[4] = v139;
          *&buf[12] = 2112;
          *&buf[14] = v94;
          _os_log_impl(&dword_1A823F000, v93, OS_LOG_TYPE_INFO, "Couldn't associate fileTransfer with guid: %@ for message: %@", buf, 0x16u);
        }
      }

      v51 = [(IMAttachmentMessagePartChatItem *)[IMErrorMessagePartChatItem alloc] _initWithItem:*(a1 + 40) text:v133 index:v134 messagePartRange:a3 transferGUID:v135 chatContext:v139, *(a1 + 56)];
      goto LABEL_110;
    }

    if ([v138 transferState]== 8)
    {
      v49 = [IMDetonatedMessagePartChatItem alloc];
      v50 = *(a1 + 40);
      BYTE1(v127) = [*(a1 + 56) showTranslationAlternateText];
      LOBYTE(v127) = 0;
      v51 = [(IMTextMessagePartChatItem *)v49 _initWithItem:v50 text:v133 translationSecondaryText:v132 index:v134 messagePartRange:a3 subject:v135 isShowingEditHistory:0 showTranslationAlternateText:v127];
LABEL_110:
      v36 = v51;
      goto LABEL_71;
    }

    if ([*(a1 + 40) isAudioMessage] && (-[NSObject type](v138, "type"), v95 = objc_claimAutoreleasedReturnValue(), IsAudio = IMUTTypeIsAudio(), v95, IsAudio))
    {
      v97 = [*(a1 + 112) _newAudioMessagePartsForMessageItem:*(a1 + 40) text:*(a1 + 32) chatContext:*(a1 + 56) retractedPartIndexes:*(a1 + 48) singlePart:*(*(*(a1 + 80) + 8) + 40)];
      if ([v97 count] == 1)
      {
        v36 = [v97 firstObject];
      }

      else
      {
        v121 = *(*(*(a1 + 88) + 8) + 40);
        if (!v121)
        {
          v122 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v123 = *(*(a1 + 88) + 8);
          v124 = *(v123 + 40);
          *(v123 + 40) = v122;

          v121 = *(*(*(a1 + 88) + 8) + 40);
        }

        [v121 addObjectsFromArray:v97];
        v36 = 0;
      }
    }

    else
    {
      if ([*(a1 + 40) isExpirable])
      {
        v51 = [(IMAttachmentMessagePartChatItem *)[IMExpirableMessageChatItem alloc] _initWithItem:*(a1 + 40) text:v133 index:v134 messagePartRange:a3 transferGUID:v135 chatContext:v139, *(a1 + 56)];
        goto LABEL_110;
      }

      if (*(a1 + 139) == 1)
      {
        v98 = [v138 attributionInfo];
        v99 = [v98 objectForKey:*MEMORY[0x1E69A6FC0]];
        v100 = v99 == 0;

        if (v100)
        {
          goto LABEL_42;
        }
      }

      v97 = [*(a1 + 32) attribute:*MEMORY[0x1E69A5EF8] atIndex:a3 effectiveRange:0];
      if ([v97 BOOLValue])
      {
        v36 = [(IMAttachmentMessagePartChatItem *)[IMAnimatedEmojiMessagePartChatItem alloc] _initWithItem:*(a1 + 40) text:v133 index:v134 messagePartRange:a3 transferGUID:v135 chatContext:v139, *(a1 + 56)];
      }

      else
      {
        v36 = [[IMAttachmentMessagePartChatItem alloc] _initWithItem:*(a1 + 40) text:v133 index:v134 messagePartRange:a3 transferGUID:v135 chatContext:v139, *(a1 + 56)];
        [v36 setChipListFromText:*(a1 + 32)];
      }
    }

    goto LABEL_71;
  }

LABEL_82:
  v129 = [*(a1 + 40) isFromMe];
  if (*(a1 + 120) <= *(a1 + 128) && *(a1 + 140) == 1)
  {
    v59 = 1;
    if ([*(a1 + 40) hasDataDetectorResults])
    {
      v172 = 0;
      v173 = &v172;
      v174 = 0x2020000000;
      v175 = 1;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3010000000;
      v181 = 0;
      v182 = 0;
      v180 = &unk_1A8573D95;
      v166 = 0;
      v167 = &v166;
      v168 = 0x3032000000;
      v169 = sub_1A8259B40;
      v170 = sub_1A825AECC;
      v171 = 0;
      v160 = 0;
      v161 = &v160;
      v162 = 0x3032000000;
      v163 = sub_1A8259B40;
      v164 = sub_1A825AECC;
      v165 = 0;
      v60 = *(a1 + 32);
      v61 = *MEMORY[0x1E69A5FB0];
      v140[0] = MEMORY[0x1E69E9820];
      v140[1] = 3221225472;
      v140[2] = sub_1A82D4D24;
      v140[3] = &unk_1E7811828;
      v146 = &v172;
      v151 = a3;
      v152 = v135;
      v62 = v60;
      v63 = *(a1 + 112);
      v141 = v62;
      v153 = v63;
      v142 = *(a1 + 40);
      v155 = *(a1 + 141);
      v64 = *(a1 + 64);
      v156 = *(a1 + 142);
      v157 = v129;
      v143 = v64;
      v154 = v134;
      v158 = *(a1 + 143);
      v144 = *(a1 + 56);
      v159 = 1;
      v128 = v132;
      v145 = v128;
      v147 = &v166;
      v148 = buf;
      v149 = *(a1 + 88);
      v150 = &v160;
      [v62 enumerateAttribute:v61 inRange:a3 options:v135 usingBlock:{0, v140}];
      if (*(v173 + 24) == 1)
      {
        v65 = [v161[5] scheme];
        v66 = [v65 lowercaseString];
        v67 = [v66 trimmedString];
        v68 = [v67 isEqualToString:@"http"];

        v69 = [*(a1 + 40) body];
        v70 = [v69 string];
        LODWORD(v65) = [v70 im_matchesSOSMapURL];

        v71 = [MEMORY[0x1E69A8100] locationInfoFromURL:v161[5]];
        v72 = v71;
        if (((v65 | v68) & 1) != 0 && ([v71 location], (v73 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v72, "address"), v74 = objc_claimAutoreleasedReturnValue(), v75 = v74 == 0, v74, v73, v75))
        {
          v36 = [(IMMessagePartChatItem *)[IMTranscriptLocationChatItem alloc] _initWithItem:*(a1 + 40) text:v133 index:v134 messagePartRange:a3 visibleAssociatedMessageChatItems:v135, 0];
          [v36 setLocationInfo:v72];
        }

        else
        {
          v76 = *(a1 + 112);
          v77 = v161[5];
          v78 = [*(a1 + 40) sender];
          v79 = [v76 _supportsRichLinkURL:v77 forSender:v78 isAllowlistedRichLinkSender:*(a1 + 141)];

          v80 = *(a1 + 64);
          v81 = [MEMORY[0x1E696B098] valueWithRange:{a3, v135}];
          v82 = [v80 member:v81];

          LODWORD(v81) = [*(a1 + 40) _isSenderUnknown];
          v83 = [*(a1 + 56) hasResponded];
          if (v81)
          {
            v84 = *(a1 + 142) | v129 | v83;
          }

          else
          {
            v84 = 1;
          }

          v107 = [*(a1 + 112) _isAllowlistedURL:v161[5]];
          if (v82)
          {
            v108 = v79;
          }

          else
          {
            v108 = 0;
          }

          if (v108 == 1 && ((v84 | v107) & 1) != 0)
          {
            v109 = objc_alloc_init(IMPluginPayload);
            v110 = [*(a1 + 40) guid];
            [(IMPluginPayload *)v109 setMessageGUID:v110];

            [(IMPluginPayload *)v109 setPluginBundleID:v25];
            [(IMPluginPayload *)v109 setUrl:v161[5]];
            v111 = [*(a1 + 40) fileTransferGUIDs];
            [(IMPluginPayload *)v109 addAttachmentsFromFileTransferGUIDs:v111];

            v112 = [IMTranscriptPluginChatItem alloc];
            if (*(a1 + 143))
            {
              v113 = 1;
            }

            else
            {
              v113 = *(a1 + 142) | v129;
            }

            v36 = [(IMTranscriptPluginChatItem *)v112 _initWithItem:*(a1 + 40) initialPayload:v109 index:v134 messagePartRange:a3 parentChatHasKnownParticipants:v135, v113 & 1];
            [v36 setAllowlistedRichLinkSender:*(a1 + 141)];
            [v36 setChipListFromText:*(a1 + 32)];
          }

          else
          {
            v114 = [*(a1 + 40) guid];
            v109 = [IMMessagePartChatItem chatItemGUIDForMessageGUID:v114 partIndex:v134];

            v115 = [*(a1 + 56) showingEditHistoryForChatItemGUIDs];
            v116 = [v115 containsObject:v109];

            v117 = v129 ^ 1;
            if (!v128)
            {
              v117 = 0;
            }

            if (v117)
            {
              v125 = [IMTextMessagePartChatItem alloc];
              v126 = *(a1 + 40);
              BYTE2(v127) = [*(a1 + 56) showTranslationAlternateText];
              BYTE1(v127) = v116;
              LOBYTE(v127) = 1;
              v120 = [(IMTextMessagePartChatItem *)v125 _initWithItem:v126 text:v128 translationSecondaryText:v133 index:v134 messagePartRange:a3 subject:v135 shouldDisplayLink:0 isShowingEditHistory:v127 showTranslationAlternateText:?];
            }

            else
            {
              v118 = [IMTextMessagePartChatItem alloc];
              v119 = *(a1 + 40);
              BYTE2(v127) = [*(a1 + 56) showTranslationAlternateText];
              BYTE1(v127) = v116;
              LOBYTE(v127) = 1;
              v120 = [(IMTextMessagePartChatItem *)v118 _initWithItem:v119 text:v133 translationSecondaryText:v128 index:v134 messagePartRange:a3 subject:v135 shouldDisplayLink:0 isShowingEditHistory:v127 showTranslationAlternateText:?];
            }

            v36 = v120;
            [v120 setChipListFromText:*(a1 + 32)];
            [v36 setTranslationSourceLanguage:v131];
          }
        }
      }

      else
      {
        v101 = v167[5];
        if (!v101)
        {
          v36 = 0;
LABEL_143:

          _Block_object_dispose(&v160, 8);
          _Block_object_dispose(&v166, 8);

          _Block_object_dispose(buf, 8);
          _Block_object_dispose(&v172, 8);
          goto LABEL_71;
        }

        v102 = *(*(*(a1 + 88) + 8) + 40);
        if (!v102)
        {
          v103 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v104 = *(*(a1 + 88) + 8);
          v105 = *(v104 + 40);
          *(v104 + 40) = v103;

          v102 = *(*(*(a1 + 88) + 8) + 40);
          v101 = v167[5];
        }

        [v102 addObject:v101];
        v36 = 0;
        v106 = *&buf[8];
        *(*&buf[8] + 32) = 0;
        *(v106 + 40) = 0;
        v72 = v167[5];
        v167[5] = 0;
      }

      goto LABEL_143;
    }
  }

  else
  {
    v59 = 0;
  }

  v85 = [*(a1 + 40) guid];
  v86 = [IMMessagePartChatItem chatItemGUIDForMessageGUID:v85 partIndex:v134];

  v87 = [*(a1 + 56) showingEditHistoryForChatItemGUIDs];
  v88 = [v87 containsObject:v86];

  if (v132)
  {
    v89 = v129;
  }

  else
  {
    v89 = 1;
  }

  v90 = [IMTextMessagePartChatItem alloc];
  v91 = *(a1 + 40);
  BYTE2(v127) = [*(a1 + 56) showTranslationAlternateText];
  BYTE1(v127) = v88;
  LOBYTE(v127) = v59;
  if (v89)
  {
    v92 = [(IMTextMessagePartChatItem *)v90 _initWithItem:v91 text:v133 translationSecondaryText:v132 index:v134 messagePartRange:a3 subject:v135 shouldDisplayLink:0 isShowingEditHistory:v127 showTranslationAlternateText:?];
  }

  else
  {
    v92 = [(IMTextMessagePartChatItem *)v90 _initWithItem:v91 text:v132 translationSecondaryText:v133 index:v134 messagePartRange:a3 subject:v135 shouldDisplayLink:0 isShowingEditHistory:v127 showTranslationAlternateText:?];
  }

  v36 = v92;
  [v92 setChipListFromText:*(a1 + 32)];

LABEL_71:
  if (v130)
  {
    if ([*(*(*(a1 + 88) + 8) + 40) count] && v36)
    {
      [*(*(*(a1 + 88) + 8) + 40) addObject:v36];
    }

    else
    {
      objc_storeStrong((*(*(a1 + 80) + 8) + 40), v36);
    }
  }

  else if (v36)
  {
    v53 = *(*(*(a1 + 88) + 8) + 40);
    if (!v53)
    {
      v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v55 = *(*(a1 + 88) + 8);
      v56 = *(v55 + 40);
      *(v55 + 40) = v54;

      v53 = *(*(*(a1 + 88) + 8) + 40);
    }

    [v53 addObject:v36];
  }
}