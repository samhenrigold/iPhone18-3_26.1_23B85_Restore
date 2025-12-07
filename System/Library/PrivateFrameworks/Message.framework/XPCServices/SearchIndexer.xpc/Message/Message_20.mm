uint64_t storeEnumTagSinglePayload for ConnectionStatus.Error.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s13CapturedStateV7MailboxV16MailboxSyncStateV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s13CapturedStateV7MailboxV16MailboxSyncStateV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100153170(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1001531CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_100153244()
{
  result = qword_1005D1B00;
  if (!qword_1005D1B00)
  {
    result = swift_getWitnessTable(asc_1004D7E48, &_s13CapturedStateV14PathAttributesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1B00);
  }

  return result;
}

unint64_t sub_10015329C()
{
  result = qword_1005D1B08;
  if (!qword_1005D1B08)
  {
    result = swift_getWitnessTable(aI_7, &_s13CapturedStateV19CapturedSyncRequestV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1B08);
  }

  return result;
}

unint64_t sub_1001532F4()
{
  result = qword_1005D1B10;
  if (!qword_1005D1B10)
  {
    result = swift_getWitnessTable(byte_1004D7FB8, &_s13CapturedStateV17MailboxesToSelectV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1B10);
  }

  return result;
}

unint64_t sub_10015334C()
{
  result = qword_1005D1B18;
  if (!qword_1005D1B18)
  {
    result = swift_getWitnessTable(byte_1004D8070, &type metadata for RunningTasksCapturedValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D1B18);
  }

  return result;
}

unint64_t sub_1001533A4()
{
  result = qword_1005D1B20;
  if (!qword_1005D1B20)
  {
    result = swift_getWitnessTable(aA_8, &_s13CapturedStateV7MailboxV17MailboxOfInterestV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1B20);
  }

  return result;
}

unint64_t sub_1001533FC()
{
  result = qword_1005D1B28;
  if (!qword_1005D1B28)
  {
    result = swift_getWitnessTable(byte_1004D81E0, &_s13CapturedStateV7MailboxV16MailboxSyncStateV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1B28);
  }

  return result;
}

unint64_t sub_100153454()
{
  result = qword_1005D1B30;
  if (!qword_1005D1B30)
  {
    result = swift_getWitnessTable(byte_1004D8298, &_s13CapturedStateV7MailboxV21UserInitiatedDownloadV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1B30);
  }

  return result;
}

unint64_t sub_1001534AC()
{
  result = qword_1005D1B38;
  if (!qword_1005D1B38)
  {
    result = swift_getWitnessTable(byte_1004D8350, &_s13CapturedStateV14CapturedRemoteV6ServerV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1B38);
  }

  return result;
}

unint64_t sub_100153504()
{
  result = qword_1005D1B40;
  if (!qword_1005D1B40)
  {
    result = swift_getWitnessTable(aA_9, &_s13CapturedStateV14CapturedRemoteV7MailboxV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1B40);
  }

  return result;
}

unint64_t sub_10015355C()
{
  result = qword_1005D1B48;
  if (!qword_1005D1B48)
  {
    result = swift_getWitnessTable(byte_1004D84C0, &_s13CapturedStateV14CapturedRemoteV9NamespaceV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1B48);
  }

  return result;
}

unint64_t sub_1001535B4()
{
  result = qword_1005D1B50;
  if (!qword_1005D1B50)
  {
    result = swift_getWitnessTable(byte_1004D8578, &_s13CapturedStateV16UnknownMailboxesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1B50);
  }

  return result;
}

unint64_t sub_10015360C()
{
  result = qword_1005D1B58;
  if (!qword_1005D1B58)
  {
    result = swift_getWitnessTable(a9_2, &_s13CapturedStateV17MailboxesToSelectV12UsageElementV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1B58);
  }

  return result;
}

unint64_t sub_100153664()
{
  result = qword_1005D1B60;
  if (!qword_1005D1B60)
  {
    result = swift_getWitnessTable(byte_1004D86E8, &type metadata for RunningTasksCapturedValue.CapturedTask.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D1B60);
  }

  return result;
}

unint64_t sub_1001536BC()
{
  result = qword_1005D1B68;
  if (!qword_1005D1B68)
  {
    result = swift_getWitnessTable(byte_1004D87A0, &_s13CapturedStateV7MailboxV25PendingPersistenceUpdatesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1B68);
  }

  return result;
}

unint64_t sub_100153714()
{
  result = qword_1005D1B70;
  if (!qword_1005D1B70)
  {
    result = swift_getWitnessTable(byte_1004D8858, &_s13CapturedStateV7MailboxV16MailboxSyncStateV13UserInitiatedV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1B70);
  }

  return result;
}

unint64_t sub_10015376C()
{
  result = qword_1005D1B78;
  if (!qword_1005D1B78)
  {
    result = swift_getWitnessTable(aY_17, &_s13CapturedStateV7MailboxV16MailboxSyncStateV15MissingMessagesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1B78);
  }

  return result;
}

unint64_t sub_1001537C4()
{
  result = qword_1005D1B80;
  if (!qword_1005D1B80)
  {
    result = swift_getWitnessTable(asc_1004D8880, &_s13CapturedStateV7MailboxV16MailboxSyncStateV15MissingMessagesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1B80);
  }

  return result;
}

unint64_t sub_10015381C()
{
  result = qword_1005D1B88;
  if (!qword_1005D1B88)
  {
    result = swift_getWitnessTable(byte_1004D88A8, &_s13CapturedStateV7MailboxV16MailboxSyncStateV15MissingMessagesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1B88);
  }

  return result;
}

unint64_t sub_100153874()
{
  result = qword_1005D1B90;
  if (!qword_1005D1B90)
  {
    result = swift_getWitnessTable(byte_1004D87C8, &_s13CapturedStateV7MailboxV16MailboxSyncStateV13UserInitiatedV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1B90);
  }

  return result;
}

unint64_t sub_1001538CC()
{
  result = qword_1005D1B98;
  if (!qword_1005D1B98)
  {
    result = swift_getWitnessTable(byte_1004D87F0, &_s13CapturedStateV7MailboxV16MailboxSyncStateV13UserInitiatedV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1B98);
  }

  return result;
}

unint64_t sub_100153924()
{
  result = qword_1005D1BA0;
  if (!qword_1005D1BA0)
  {
    result = swift_getWitnessTable(byte_1004D8710, &_s13CapturedStateV7MailboxV25PendingPersistenceUpdatesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1BA0);
  }

  return result;
}

unint64_t sub_10015397C()
{
  result = qword_1005D1BA8;
  if (!qword_1005D1BA8)
  {
    result = swift_getWitnessTable(aI_8, &_s13CapturedStateV7MailboxV25PendingPersistenceUpdatesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1BA8);
  }

  return result;
}

unint64_t sub_1001539D4()
{
  result = qword_1005D1BB0;
  if (!qword_1005D1BB0)
  {
    result = swift_getWitnessTable(aQ_2, &type metadata for RunningTasksCapturedValue.CapturedTask.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D1BB0);
  }

  return result;
}

unint64_t sub_100153A2C()
{
  result = qword_1005D1BB8;
  if (!qword_1005D1BB8)
  {
    result = swift_getWitnessTable(asc_1004D8680, &type metadata for RunningTasksCapturedValue.CapturedTask.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D1BB8);
  }

  return result;
}

unint64_t sub_100153A84()
{
  result = qword_1005D1BC0;
  if (!qword_1005D1BC0)
  {
    result = swift_getWitnessTable(asc_1004D85A0, &_s13CapturedStateV17MailboxesToSelectV12UsageElementV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1BC0);
  }

  return result;
}

unint64_t sub_100153ADC()
{
  result = qword_1005D1BC8;
  if (!qword_1005D1BC8)
  {
    result = swift_getWitnessTable(byte_1004D85C8, &_s13CapturedStateV17MailboxesToSelectV12UsageElementV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1BC8);
  }

  return result;
}

unint64_t sub_100153B34()
{
  result = qword_1005D1BD0;
  if (!qword_1005D1BD0)
  {
    result = swift_getWitnessTable(byte_1004D84E8, &_s13CapturedStateV16UnknownMailboxesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1BD0);
  }

  return result;
}

unint64_t sub_100153B8C()
{
  result = qword_1005D1BD8;
  if (!qword_1005D1BD8)
  {
    result = swift_getWitnessTable(byte_1004D8510, &_s13CapturedStateV16UnknownMailboxesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1BD8);
  }

  return result;
}

unint64_t sub_100153BE4()
{
  result = qword_1005D1BE0;
  if (!qword_1005D1BE0)
  {
    result = swift_getWitnessTable(aY_18, &_s13CapturedStateV14CapturedRemoteV9NamespaceV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1BE0);
  }

  return result;
}

unint64_t sub_100153C3C()
{
  result = qword_1005D1BE8;
  if (!qword_1005D1BE8)
  {
    result = swift_getWitnessTable(aI_9, &_s13CapturedStateV14CapturedRemoteV9NamespaceV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1BE8);
  }

  return result;
}

unint64_t sub_100153C94()
{
  result = qword_1005D1BF0;
  if (!qword_1005D1BF0)
  {
    result = swift_getWitnessTable(a1_5, &_s13CapturedStateV14CapturedRemoteV7MailboxV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1BF0);
  }

  return result;
}

unint64_t sub_100153CEC()
{
  result = qword_1005D1BF8;
  if (!qword_1005D1BF8)
  {
    result = swift_getWitnessTable(byte_1004D83A0, &_s13CapturedStateV14CapturedRemoteV7MailboxV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1BF8);
  }

  return result;
}

unint64_t sub_100153D44()
{
  result = qword_1005D1C00;
  if (!qword_1005D1C00)
  {
    result = swift_getWitnessTable(byte_1004D82C0, &_s13CapturedStateV14CapturedRemoteV6ServerV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1C00);
  }

  return result;
}

unint64_t sub_100153D9C()
{
  result = qword_1005D1C08;
  if (!qword_1005D1C08)
  {
    result = swift_getWitnessTable(byte_1004D82E8, &_s13CapturedStateV14CapturedRemoteV6ServerV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1C08);
  }

  return result;
}

unint64_t sub_100153DF4()
{
  result = qword_1005D1C10;
  if (!qword_1005D1C10)
  {
    result = swift_getWitnessTable(byte_1004D8208, &_s13CapturedStateV7MailboxV21UserInitiatedDownloadV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1C10);
  }

  return result;
}

unint64_t sub_100153E4C()
{
  result = qword_1005D1C18;
  if (!qword_1005D1C18)
  {
    result = swift_getWitnessTable(aQ_3, &_s13CapturedStateV7MailboxV21UserInitiatedDownloadV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1C18);
  }

  return result;
}

unint64_t sub_100153EA4()
{
  result = qword_1005D1C20;
  if (!qword_1005D1C20)
  {
    result = swift_getWitnessTable(aY_19, &_s13CapturedStateV7MailboxV16MailboxSyncStateV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1C20);
  }

  return result;
}

unint64_t sub_100153EFC()
{
  result = qword_1005D1C28;
  if (!qword_1005D1C28)
  {
    result = swift_getWitnessTable(asc_1004D8178, &_s13CapturedStateV7MailboxV16MailboxSyncStateV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1C28);
  }

  return result;
}

unint64_t sub_100153F54()
{
  result = qword_1005D1C30;
  if (!qword_1005D1C30)
  {
    result = swift_getWitnessTable(byte_1004D8098, &_s13CapturedStateV7MailboxV17MailboxOfInterestV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1C30);
  }

  return result;
}

unint64_t sub_100153FAC()
{
  result = qword_1005D1C38;
  if (!qword_1005D1C38)
  {
    result = swift_getWitnessTable(byte_1004D80C0, &_s13CapturedStateV7MailboxV17MailboxOfInterestV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1C38);
  }

  return result;
}

unint64_t sub_100154004()
{
  result = qword_1005D1C40;
  if (!qword_1005D1C40)
  {
    result = swift_getWitnessTable(byte_1004D7FE0, &type metadata for RunningTasksCapturedValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D1C40);
  }

  return result;
}

unint64_t sub_10015405C()
{
  result = qword_1005D1C48;
  if (!qword_1005D1C48)
  {
    result = swift_getWitnessTable(byte_1004D8008, &type metadata for RunningTasksCapturedValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D1C48);
  }

  return result;
}

unint64_t sub_1001540B4()
{
  result = qword_1005D1C50;
  if (!qword_1005D1C50)
  {
    result = swift_getWitnessTable(byte_1004D7F28, &_s13CapturedStateV17MailboxesToSelectV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1C50);
  }

  return result;
}

unint64_t sub_10015410C()
{
  result = qword_1005D1C58;
  if (!qword_1005D1C58)
  {
    result = swift_getWitnessTable(aQ_4, &_s13CapturedStateV17MailboxesToSelectV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1C58);
  }

  return result;
}

unint64_t sub_100154164()
{
  result = qword_1005D1C60;
  if (!qword_1005D1C60)
  {
    result = swift_getWitnessTable(a9_3, &_s13CapturedStateV19CapturedSyncRequestV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1C60);
  }

  return result;
}

unint64_t sub_1001541BC()
{
  result = qword_1005D1C68;
  if (!qword_1005D1C68)
  {
    result = swift_getWitnessTable(asc_1004D7E98, &_s13CapturedStateV19CapturedSyncRequestV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1C68);
  }

  return result;
}

unint64_t sub_100154214()
{
  result = qword_1005D1C70;
  if (!qword_1005D1C70)
  {
    result = swift_getWitnessTable(byte_1004D7DB8, &_s13CapturedStateV14PathAttributesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1C70);
  }

  return result;
}

unint64_t sub_10015426C()
{
  result = qword_1005D1C78;
  if (!qword_1005D1C78)
  {
    result = swift_getWitnessTable(byte_1004D7DE0, &_s13CapturedStateV14PathAttributesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1C78);
  }

  return result;
}

uint64_t sub_1001542C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x43676E696E6E7572 && a2 == 0xEF73646E616D6D6FLL;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x41676E696E6E7572 && a2 == 0xEE00736E6F697463 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004AA900 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004AA920 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100154444(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F74736968 && a2 == 0xE700000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004AA7E0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x54786F626C69616DLL && a2 == 0xEB000000006B7361 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (sub_1004A6D34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_100154648()
{
  result = qword_1005D1C88;
  if (!qword_1005D1C88)
  {
    result = swift_getWitnessTable(asc_1004D9190, &type metadata for RunningTasksCapturedValue.CapturedTask.History.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D1C88);
  }

  return result;
}

unint64_t sub_10015469C()
{
  result = qword_1005D1C98;
  if (!qword_1005D1C98)
  {
    result = swift_getWitnessTable(aY_20, &type metadata for RunningTasksCapturedValue.CapturedTask.MailboxTask.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D1C98);
  }

  return result;
}

unint64_t sub_1001546F0()
{
  result = qword_1005D1CA8;
  if (!qword_1005D1CA8)
  {
    result = swift_getWitnessTable(byte_1004D90F0, &_s13CapturedStateV7MailboxV25PendingPersistenceUpdatesV23MessagesPendingDownloadV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1CA8);
  }

  return result;
}

unint64_t sub_100154778()
{
  result = qword_1005D1CB0;
  if (!qword_1005D1CB0)
  {
    result = swift_getWitnessTable(byte_1004D8F58, &type metadata for RunningTasksCapturedValue.CapturedTask.History.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D1CB0);
  }

  return result;
}

unint64_t sub_1001547D0()
{
  result = qword_1005D1CB8;
  if (!qword_1005D1CB8)
  {
    result = swift_getWitnessTable(aY_21, &type metadata for RunningTasksCapturedValue.CapturedTask.MailboxTask.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D1CB8);
  }

  return result;
}

unint64_t sub_100154828()
{
  result = qword_1005D1CC0;
  if (!qword_1005D1CC0)
  {
    result = swift_getWitnessTable(byte_1004D90C8, &_s13CapturedStateV7MailboxV25PendingPersistenceUpdatesV23MessagesPendingDownloadV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1CC0);
  }

  return result;
}

unint64_t sub_100154880()
{
  result = qword_1005D1CC8;
  if (!qword_1005D1CC8)
  {
    result = swift_getWitnessTable(aQ_5, &_s13CapturedStateV7MailboxV25PendingPersistenceUpdatesV23MessagesPendingDownloadV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1CC8);
  }

  return result;
}

unint64_t sub_1001548D8()
{
  result = qword_1005D1CD0;
  if (!qword_1005D1CD0)
  {
    result = swift_getWitnessTable(aA_10, &_s13CapturedStateV7MailboxV25PendingPersistenceUpdatesV23MessagesPendingDownloadV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D1CD0);
  }

  return result;
}

unint64_t sub_100154930()
{
  result = qword_1005D1CD8;
  if (!qword_1005D1CD8)
  {
    result = swift_getWitnessTable(asc_1004D8F80, &type metadata for RunningTasksCapturedValue.CapturedTask.MailboxTask.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D1CD8);
  }

  return result;
}

unint64_t sub_100154988()
{
  result = qword_1005D1CE0;
  if (!qword_1005D1CE0)
  {
    result = swift_getWitnessTable(byte_1004D8FA8, &type metadata for RunningTasksCapturedValue.CapturedTask.MailboxTask.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D1CE0);
  }

  return result;
}

unint64_t sub_1001549E0()
{
  result = qword_1005D1CE8;
  if (!qword_1005D1CE8)
  {
    result = swift_getWitnessTable(byte_1004D8EC8, &type metadata for RunningTasksCapturedValue.CapturedTask.History.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D1CE8);
  }

  return result;
}

unint64_t sub_100154A38()
{
  result = qword_1005D1CF0;
  if (!qword_1005D1CF0)
  {
    result = swift_getWitnessTable(byte_1004D8EF0, &type metadata for RunningTasksCapturedValue.CapturedTask.History.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D1CF0);
  }

  return result;
}

uint64_t sub_100154AC8(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 32); ; i += 15)
  {
    v8 = i[11];
    v9 = i[13];
    v65 = i[12];
    v66[0] = v9;
    *(v66 + 9) = *(i + 217);
    v10 = i[7];
    v11 = i[9];
    v61 = i[8];
    v62 = v11;
    v12 = i[9];
    v13 = i[11];
    v63 = i[10];
    v64 = v13;
    v14 = i[3];
    v15 = i[5];
    v57 = i[4];
    v58 = v15;
    v16 = i[5];
    v17 = i[7];
    v59 = i[6];
    v60 = v17;
    v18 = i[1];
    v54[0] = *i;
    v54[1] = v18;
    v19 = i[3];
    v21 = *i;
    v20 = i[1];
    v55 = i[2];
    v56 = v19;
    v22 = i[13];
    v52 = v65;
    v53[0] = v22;
    *(v53 + 9) = *(i + 217);
    v48 = v61;
    v49 = v12;
    v50 = v63;
    v51 = v8;
    v44 = v57;
    v45 = v16;
    v46 = v59;
    v47 = v10;
    v40 = v21;
    v41 = v20;
    v42 = v55;
    v43 = v14;
    sub_100050408(v54, &v26);
    v23 = a1(&v40);
    if (v3)
    {
      break;
    }

    v24 = v23;
    v38 = v52;
    v39[0] = v53[0];
    *(v39 + 9) = *(v53 + 9);
    v34 = v48;
    v35 = v49;
    v36 = v50;
    v37 = v51;
    v30 = v44;
    v31 = v45;
    v32 = v46;
    v33 = v47;
    v26 = v40;
    v27 = v41;
    v28 = v42;
    v29 = v43;
    sub_100050440(&v26);
    if (v24)
    {
      return v6;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  v38 = v52;
  v39[0] = v53[0];
  *(v39 + 9) = *(v53 + 9);
  v34 = v48;
  v35 = v49;
  v36 = v50;
  v37 = v51;
  v30 = v44;
  v31 = v45;
  v32 = v46;
  v33 = v47;
  v26 = v40;
  v27 = v41;
  v28 = v42;
  v29 = v43;
  sub_100050440(&v26);
  return v6;
}

uint64_t sub_100154CCC(uint64_t (*a1)(int *, __n128), uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  for (i = (a3 + 48); ; i += 3)
  {
    v7 = *(i - 1);
    v8 = *i;
    v11 = *(i - 4);
    v12 = v7;
    v13 = v8;

    v9 = (v14)(&v11);

    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v5)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_100154DA4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

void *sub_100154E94(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_100091A08(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 64;
    result = sub_1004A6554();
    v6 = result;
    v7 = 0;
    v25 = v1 + 72;
    v26 = v2;
    v27 = v1 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v28 = v7;
      v29 = *(v1 + 36);
      result = sub_1004A6CE4();
      v10 = result;
      v12 = v11;
      v13 = v4;
      v30 = v4;
      v14 = v1;
      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_100091A08((v15 > 1), v16 + 1, 1);
        v13 = v30;
      }

      v13[2] = v16 + 1;
      v17 = &v13[2 * v16];
      v17[4] = v10;
      v17[5] = v12;
      v8 = 1 << *(v14 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v27;
      v18 = *(v27 + 8 * v9);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v14;
      v4 = v13;
      if (v29 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (v25 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_100020944(v6, v29, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_100020944(v6, v29, 0);
      }

LABEL_4:
      v7 = v28 + 1;
      v6 = v8;
      if (v28 + 1 == v26)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void *sub_1001550D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100091A08(0, v1, 0);
  v24 = a1 + 56;
  result = sub_1004A6554();
  v4 = result;
  v5 = 0;
  v23 = v1;
  while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
  {
    v8 = v4 >> 6;
    if ((*(v24 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
    {
      goto LABEL_21;
    }

    v9 = *(a1 + 36);
    result = SyncRequest.Kind.description.getter(*(*(a1 + 48) + v4));
    v12 = _swiftEmptyArrayStorage[2];
    v11 = _swiftEmptyArrayStorage[3];
    if (v12 >= v11 >> 1)
    {
      v21 = v10;
      v22 = result;
      sub_100091A08((v11 > 1), v12 + 1, 1);
      v10 = v21;
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v12];
    v13[4] = result;
    v13[5] = v10;
    v6 = 1 << *(a1 + 32);
    if (v4 >= v6)
    {
      goto LABEL_22;
    }

    v14 = *(v24 + 8 * v8);
    if ((v14 & (1 << v4)) == 0)
    {
      goto LABEL_23;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v4 & 0x3F));
    if (v15)
    {
      v6 = __clz(__rbit64(v15)) | v4 & 0x7FFFFFFFFFFFFFC0;
      v7 = v23;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v7 = v23;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v6 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_100020944(v4, v9, 0);
          v6 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_100020944(v4, v9, 0);
    }

LABEL_4:
    ++v5;
    v4 = v6;
    if (v5 == v7)
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

void *sub_1001552FC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_100091A08(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 56;
    result = sub_1004A6554();
    v6 = result;
    v7 = 0;
    v25 = v1 + 64;
    v26 = v2;
    v27 = v1 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v28 = v7;
      v29 = *(v1 + 36);
      result = sub_1004A6CE4();
      v10 = result;
      v12 = v11;
      v13 = v4;
      v30 = v4;
      v14 = v1;
      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_100091A08((v15 > 1), v16 + 1, 1);
        v13 = v30;
      }

      v13[2] = v16 + 1;
      v17 = &v13[2 * v16];
      v17[4] = v10;
      v17[5] = v12;
      v8 = 1 << *(v14 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v27;
      v18 = *(v27 + 8 * v9);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v14;
      v4 = v13;
      if (v29 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (v25 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_100020944(v6, v29, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_100020944(v6, v29, 0);
      }

LABEL_4:
      v7 = v28 + 1;
      v6 = v8;
      if (v28 + 1 == v26)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100155540(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(v2 + 48) + ((v9 << 10) | (16 * v10));
    v12 = *v11;
    v13 = *(v11 + 8);

    sub_100088220(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100155660(uint64_t result, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = 0;
  v15 = a4;
  v7 = result + 32;
  while (1)
  {
LABEL_6:
    v11 = *(v5 + 16);
    if (v6 == v11)
    {

      return v15;
    }

    if (v6 >= v11)
    {
      break;
    }

    v14 = *(v7 + 8 * v6);

    a2(&v13, &v14);

    v12 = v13;

    ++v6;
    if (v12)
    {
      v8 = *(v12 + 16);
      if (v8)
      {
        v9 = 0;
        while (v9 < v8)
        {
          v10 = v9 + 1;
          result = sub_100089758(&v14, *(v12 + 32 + 4 * v9));
          v8 = *(v12 + 16);
          v9 = v10;
          if (v10 == v8)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100155780(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1000883C4(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100155884(uint64_t result, uint64_t a2, uint64_t (*a3)(char *, void))
{
  v4 = result;
  v5 = 0;
  v14 = a2;
  v6 = result + 56;
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(result + 56);
  for (i = (v7 + 63) >> 6; v9; result = a3(v13, *(*(v4 + 48) + ((v11 << 8) | (4 * v12)))))
  {
    v11 = v5;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= i)
    {

      return v14;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100155974(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, uint64_t a4)
{
  v8 = sub_1000BBA58();

  v9 = sub_100155660(a1, a2, a3, a4);
  if (v8[2] <= v9[2] >> 3)
  {
    v13 = v9;
    sub_10015CA18(v8, sub_10013FEF0);

    v10 = v13;
    if (v13[2])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = sub_10015F234(v8, v9, &qword_1005CEEC8, &qword_1004D1D98);

    if (v10[2])
    {
LABEL_3:
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      return v11 | 0xA000000000000004;
    }
  }

  return 0xF000000000000007;
}

void *sub_100155A98(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v47 = &v40 - v4;
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v46 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  v10 = sub_10000C9C0(&qword_1005D1DB8, &qword_1004D92C8);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = sub_10000C9C0(&qword_1005CF310, &unk_1004D2608);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v48 = &v40 - v15;
  v16 = *(a1 + 16);
  if (!v16)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v50 = v9;
  v17 = *(type metadata accessor for RunningTask(0) - 8);
  v18 = (v14 + 56);
  v43 = (v3 + 16);
  v19 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v20 = *(v17 + 72);
  v51 = _swiftEmptyDictionarySingleton;
  v21 = v48;
  v44 = v18;
  v45 = v12;
  v49 = v20;
  v42 = v13;
  while (1)
  {
    sub_100117890(v19, v52);
    if (v53 != 1)
    {
      sub_10011D8CC(v52);
      goto LABEL_4;
    }

    sub_1000B364C(v52, v54);
    sub_100104D00(v54, v52);
    sub_10000C9C0(&unk_1005CF5B8, &unk_1004D27C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1000197E0(v54);
      (*v18)(v12, 1, 1, v13);
      sub_100025F40(v12, &qword_1005D1DB8, &qword_1004D92C8);
      goto LABEL_4;
    }

    (*v18)(v12, 0, 1, v13);
    sub_100025FDC(v12, v21, &qword_1005CF310, &unk_1004D2608);

    v22 = v50;
    sub_1000B492C(v23);
    if (sub_1004A70C4())
    {
      sub_100025F40(v22, &unk_1005D91B0, &unk_1004CF400);
      sub_1000197E0(v54);
      sub_100025F40(v21, &qword_1005CF310, &unk_1004D2608);
      v20 = v49;
      goto LABEL_4;
    }

    v24 = v2;
    v25 = *(v21 + 88);
    v26 = *(v21 + 96);

    v27 = v51;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v52[0] = v27;
    v30 = sub_100063B5C(v25, v26);
    v31 = v27[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      break;
    }

    v34 = v29;
    if (v27[3] >= v33)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10013C558();
      }
    }

    else
    {
      sub_1000C7AC8(v33, isUniquelyReferenced_nonNull_native);
      v35 = sub_100063B5C(v25, v26);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_23;
      }

      v30 = v35;
    }

    v2 = v24;
    v51 = *&v52[0];
    if (v34)
    {
    }

    else
    {
      sub_100016D2C();
      v37 = v41;
      sub_1004A7114();
      sub_10001C8E8(v30, v25, v26, v37, v51);
    }

    v18 = v44;
    v38 = v50;
    (*v43)(v47, v50, v24);
    sub_1004A7104();
    sub_100025F40(v38, &unk_1005D91B0, &unk_1004CF400);
    sub_1000197E0(v54);
    v21 = v48;
    sub_100025F40(v48, &qword_1005CF310, &unk_1004D2608);
    v12 = v45;
    v20 = v49;
    v13 = v42;
LABEL_4:
    v19 += v20;
    if (!--v16)
    {
      return v51;
    }
  }

  __break(1u);
LABEL_23:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

void *sub_100156090(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10015B320(a1, a2, a3, a4, a5, a6);
  v14 = v6;
  sub_10015B4E8(&v14);
  v7 = v14;
  v8 = *(v14 + 2);
  if (v8)
  {
    sub_100091C48(0, v8, 0);
    v9 = _swiftEmptyArrayStorage[2];
    v10 = 32;
    do
    {
      v11 = *&v7[v10];
      v12 = _swiftEmptyArrayStorage[3];
      if (v9 >= v12 >> 1)
      {
        sub_100091C48((v12 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      _swiftEmptyArrayStorage[v9 + 4] = v11;
      v10 += 16;
      ++v9;
      --v8;
    }

    while (v8);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t StateWithTasks.init(windowOfInterestSizes:environment:mailboxFilter:fetchedMessageMetadata:tracingID:logName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12, uint64_t a13)
{
  v30 = type metadata accessor for StateWithTasks(0);
  v17 = *(v30 + 32);
  _s30MailboxesToSelectLoggingHelperCMa();
  v18 = swift_allocObject();
  v18[3] = 0;
  v18[4] = 0;
  v18[2] = 0;
  *(a9 + v17) = v18;
  v31 = a3 & 1;
  v19 = sub_1001644B4(_swiftEmptyArrayStorage);
  v20 = sub_100163A00(_swiftEmptyArrayStorage);
  v21 = sub_1001638E4(_swiftEmptyArrayStorage);
  v22 = sub_100163B3C(_swiftEmptyArrayStorage);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v31;
  *(a9 + 17) = a8 & 1;
  *(a9 + 18) = a10 & 1;
  *(a9 + 24) = a4;
  *(a9 + 25) = BYTE1(a4) & 1;
  *(a9 + 26) = BYTE2(a4) & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = _swiftEmptySetSingleton;
  *(a9 + 64) = v19;
  *(a9 + 72) = 2;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 111) = 0;
  *(a9 + 120) = 0;
  *(a9 + 128) = 0;
  *(a9 + 136) = 1;
  *(a9 + 144) = 0;
  *(a9 + 152) = 0;
  *(a9 + 160) = 0;
  *(a9 + 168) = v20;
  *(a9 + 176) = _swiftEmptyArrayStorage;
  *(a9 + 184) = _swiftEmptyArrayStorage;
  *(a9 + 192) = 0;
  *(a9 + 200) = v22;
  *(a9 + 208) = v21;
  *(a9 + 216) = _swiftEmptyArrayStorage;
  *(a9 + 224) = xmmword_1004D9280;
  *(a9 + 240) = 0;
  *(a9 + 248) = _swiftEmptyArrayStorage;
  *(a9 + 256) = _swiftEmptySetSingleton;
  *(a9 + 288) = a12;
  *(a9 + 296) = a13;
  v23 = a9 + *(v30 + 28);
  sub_1004A4A64();
  result = type metadata accessor for State.Logger(0);
  *(v23 + *(result + 20)) = a11;
  *(a9 + 264) = a11;
  *(a9 + 272) = _swiftEmptyArrayStorage;
  *(a9 + 280) = 0;
  return result;
}

uint64_t type metadata accessor for StateWithTasks(uint64_t a1)
{
  result = qword_1005D1D50;
  if (!qword_1005D1D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StateWithTasks.environment.getter()
{
  if (v0[25])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | v0[24];
  if (v0[26])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return v2 | v3;
}

uint64_t StateWithTasks.update(updates:send:persist:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, void (*a4)(unint64_t), void (*a5)(void, void, void, void, void))
{
  v6 = v5;
  v87 = a2;
  v88 = a3;
  v74 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v74);
  v80 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v76 = &v73 - v12;
  __chkstk_darwin(v13);
  v78 = &v73 - v14;
  __chkstk_darwin(v15);
  v75 = &v73 - v16;
  v17 = *(v5 + 184);
  v18 = *(v5 + 216);
  v97[4] = *(v5 + 200);
  v98[0] = v18;
  *(v98 + 12) = *(v5 + 228);
  v97[2] = *(v5 + 168);
  v97[3] = v17;
  v77 = sub_1000BB18C();
  v19 = *(v5 + 200);
  v96[3] = *(v5 + 184);
  v96[4] = v19;
  v97[0] = *(v5 + 216);
  *(v97 + 12) = *(v5 + 228);
  v96[2] = *(v5 + 168);
  v20 = sub_1000BBA58();
  v21 = *(v5 + 184);
  v22 = *(v5 + 216);
  v91[2] = *(v5 + 200);
  v92[0] = v22;
  *(v92 + 12) = *(v5 + 228);
  v91[0] = *(v5 + 168);
  v91[1] = v21;
  v90 = _swiftEmptySetSingleton;
  v23 = *(a1 + 16);
  v81 = a1;
  v82 = v5;
  v86 = v23;
  v79 = v20;
  if (v23)
  {
    v85 = a1 + 32;
    sub_10014F954(v91, v95);
    v24 = 0;
    v83 = a4;
    v84 = a5;
    do
    {
      v25 = *(v85 + 8 * v24);
      v26 = *(v6 + 264);
      v89 = v25 & 0x3FFFFFFFFFFFFFFFLL;

      v27 = *tracingLog.unsafeMutableAddressor();
      v28 = sub_1004A6354();

      v29 = v25 >> 62;
      if (v28)
      {
        if (v29)
        {
          if (v29 == 1)
          {
            v30 = *(v89 + 16);
            v31 = *(v89 + 24);
            sub_1000CB7A0(v30, *(v89 + 24));
            sub_10016E8A4(v26, v30, v31);
            sub_1000CB7B4(v30, v31);
          }
        }

        else
        {
          v32 = *(v25 + 16);
          v33 = *(v25 + 24);
          sub_1000CB7C8(v33);

          sub_100172714(v26, v32, v33);
          sub_1000CB848(v33);
          a4 = v83;

          a5 = v84;
        }
      }

      sub_100156C7C(v25, v87, v88, a4, a5);
      if (v29 == 1 && (*(v89 + 24) & 1) != 0)
      {
        v34 = *(v89 + 16);
        if (((v34 >> 59) & 0x1E | (v34 >> 2) & 1) == 0x13)
        {
          v35 = *((v34 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          v36 = *(v35 + 16);
          if (v36)
          {
            *&v95[0] = _swiftEmptyArrayStorage;

            sub_100092108(0, v36, 0);
            v37 = *&v95[0];
            v38 = *(*&v95[0] + 16);
            v39 = 32;
            do
            {
              v40 = *(v35 + v39);
              *&v95[0] = v37;
              v41 = v37[3];
              if (v38 >= v41 >> 1)
              {
                sub_100092108((v41 > 1), v38 + 1, 1);
                v37 = *&v95[0];
              }

              v37[2] = v38 + 1;
              *(v37 + v38 + 8) = v40;
              v39 += 24;
              ++v38;
              --v36;
            }

            while (v36);

            v6 = v82;
            a4 = v83;
          }

          else
          {
            v37 = _swiftEmptyArrayStorage;
          }

          v42 = v37[2];
          a5 = v84;
          if (v42)
          {
            v43 = 32;
            do
            {
              sub_100088660(v95, *(v37 + v43));
              v43 += 4;
              --v42;
            }

            while (v42);
          }
        }
      }

      ++v24;
    }

    while (v24 != v86);
  }

  else
  {
    sub_10014F954(v91, v95);
  }

  v44 = sub_100157D24(v87, v88, a4, a5);
  sub_100132BC4(v81);
  v45 = v78;
  if ((v44 & 1) == 0 && !*(*(v6 + 272) + 16) && *(v6 + 192) == 1)
  {
    *&v95[0] = *(v6 + 168);
    sub_1000BD5C8(v95);
    v46 = *&v95[0];
    *(v6 + 176) = 0;
    *(v6 + 184) = 0;
    *(v6 + 168) = v46;
    *(v6 + 192) = 1;
  }

  v47 = *(v6 + 184);
  v48 = *(v6 + 216);
  v95[2] = *(v6 + 200);
  v96[0] = v48;
  *(v96 + 12) = *(v6 + 228);
  v95[0] = *(v6 + 168);
  v95[1] = v47;
  v49 = sub_100155884(v90, v77, sub_100088660);
  v50 = sub_1000BB0C0(v49);

  v51 = v6;
  if ((~v50 & 0xF000000000000007) != 0)
  {
    v52 = v6 + *(type metadata accessor for StateWithTasks(0) + 28);
    v53 = v75;
    sub_1001669C8(v52, v75, type metadata accessor for State.Logger);
    sub_1001669C8(v53, v45, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v54 = sub_1004A4A54();
    v55 = sub_1004A5FF4();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = v45;
      v58 = v56;
      *v56 = 68157952;
      *(v56 + 4) = 2;
      *(v56 + 8) = 256;
      v59 = *(v57 + *(v74 + 20));
      sub_100166900(v57, type metadata accessor for State.Logger);
      v58[10] = v59;
      v53 = v75;
      _os_log_impl(&_mh_execute_header, v54, v55, "[%.*hhx] Updating running search requests.", v58, 0xBu);
    }

    else
    {
      sub_100166900(v45, type metadata accessor for State.Logger);
    }

    a4(v50);
    sub_1001207D4(v50);
    sub_100166900(v53, type metadata accessor for State.Logger);
    v51 = v82;
  }

  v60 = *(v51 + 184);
  v61 = *(v51 + 216);
  v93[4] = *(v51 + 200);
  v94[0] = v61;
  *(v94 + 12) = *(v51 + 228);
  v93[2] = *(v51 + 168);
  v93[3] = v60;
  v62 = sub_100155974(v81, sub_1000BC508, 0, v79);

  v63 = v51;
  v64 = v80;
  if ((~v62 & 0xF000000000000007) != 0)
  {
    v65 = v51 + *(type metadata accessor for StateWithTasks(0) + 28);
    v66 = v76;
    sub_1001669C8(v65, v76, type metadata accessor for State.Logger);
    sub_1001669C8(v66, v64, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v67 = sub_1004A4A54();
    v68 = sub_1004A5FF4();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 68157952;
      *(v69 + 4) = 2;
      *(v69 + 8) = 256;
      v70 = *(v64 + *(v74 + 20));
      sub_100166900(v64, type metadata accessor for State.Logger);
      *(v69 + 10) = v70;
      v66 = v76;
      _os_log_impl(&_mh_execute_header, v67, v68, "[%.*hhx] Updating running download requests.", v69, 0xBu);
    }

    else
    {
      sub_100166900(v64, type metadata accessor for State.Logger);
    }

    a4(v62);
    sub_1001207D4(v62);
    sub_100166900(v66, type metadata accessor for State.Logger);
  }

  v71 = *(v63 + 200);
  v92[3] = *(v63 + 184);
  v92[4] = v71;
  v93[0] = *(v63 + 216);
  *(v93 + 12) = *(v63 + 228);
  v92[2] = *(v63 + 168);
  sub_1000C169C(*(v63 + 264), v91);
  return sub_10014F9B0(v91);
}

void sub_100156C7C(unint64_t a1, uint64_t (*a2)(char *, void *), uint64_t a3, void (*a4)(unint64_t), uint64_t a5)
{
  v6 = v5;
  v127 = a5;
  v128 = a4;
  v131 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v131);
  v133 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v132 = &v127 - v12;
  v13 = type metadata accessor for TaskHistory.Running(0);
  v134 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  v15 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for RunningTask(0);
  v140 = *(v137 - 8);
  __chkstk_darwin(v137);
  v142 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v143 = &v127 - v18;
  __chkstk_darwin(v19);
  v135 = &v127 - v20;
  v138 = v5;
  v141 = a1;
  v130 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v21 = *(a1 + 24);
    if (v21 >> 60 != 1)
    {
      goto LABEL_20;
    }

    v22 = *(a1 + 16);
    v23 = v21 & 0xFFFFFFFFFFFFFFFLL;
    v24 = *(v23 + 24);
    v25 = *(v23 + 32);
    v26 = *(v23 + 40);
    if (*(v6 + 192) == 1)
    {
      v27 = *(v6 + 168);
      v28 = *(v27 + 16);
      if (v28)
      {
        LODWORD(v146) = v24;
        v147 = v25;
        v29 = (v27 + 128);
        v30 = v29;
        do
        {
          v32 = *v30;
          v30 += 22;
          v31 = v32;
          if (v32)
          {
            v33 = *(v29 - 18);
            v34 = *(v29 - 10);
            v35 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
            swift_beginAccess();
            if (*(v31 + v35) == v22)
            {

              goto LABEL_16;
            }
          }

          v29 = v30;
          --v28;
        }

        while (v28);
        v34 = 0;
        v33 = 0;
LABEL_16:
        v6 = v138;
        a1 = v141;
        v25 = v147;
        v24 = v146;
      }

      else
      {
        v34 = 0;
        v33 = 0;
        v6 = v138;
      }
    }

    else
    {
      v34 = 0;
      v33 = 0;
    }

    v155 = v22;
    v156 = v34;
    v157 = v33;
    v158 = v24;
    v159 = v25;
    v160 = v26;
    v43 = *(type metadata accessor for StateWithTasks(0) + 28);

    sub_100122D18(&v155, v6, v6 + v43);

    goto LABEL_19;
  }

  if (a1 >> 62 == 1 && *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == 1 && ((*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) >> 59) & 0x1E | (*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) >> 2) & 1) == 4)
  {
    v36 = *(type metadata accessor for StateWithTasks(0) + 28);

    sub_10012FC9C(v37, (v6 + v36));
    v39 = v38;

    v40 = sub_100012C04();
    sub_100165A5C(v39, v138, a2, a3, v40, v42, v41 & 1);
    v6 = v138;
LABEL_19:
  }

LABEL_20:
  v129 = *(type metadata accessor for StateWithTasks(0) + 28);
  sub_100130390(a1, v6 + v129);
  v44 = *(v6 + 272);
  v139 = v44[2];
  if (!v139)
  {
LABEL_45:
    if (v130 != 1)
    {
      return;
    }

    if (*((v141 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) != 1)
    {
      return;
    }

    v75 = *((v141 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (((v75 >> 59) & 0x1E | (v75 >> 2) & 1) != 2)
    {
      return;
    }

    v76 = v75 & 0xFFFFFFFFFFFFFFBLL;
    v77 = *(v76 + 24);
    v78 = *(v76 + 32);
    v79 = *(v76 + 40);
    if (*(v6 + 192) == 1)
    {
      v80 = *(v6 + 168);
      v81 = sub_10000C9C0(&qword_1005CCEC8, &qword_1004CDB28);
      v82 = sub_10000DF44(&qword_1005CCED0, &qword_1005CCEC8, &qword_1004CDB28, &protocol conformance descriptor for LazyMapSequence<A, B>);
      v83 = swift_allocObject();
      v83[2] = v80;
      v83[3] = sub_10000D2F0;
      v83[4] = 0;
      v83[5] = sub_10000D47C;
      v83[6] = 0;
    }

    else
    {
      v81 = sub_10000C9C0(&qword_1005CCEB8, &qword_1004CDB20);
      v82 = sub_10000DF44(&qword_1005CCEC0, &qword_1005CCEB8, &qword_1004CDB20, &protocol conformance descriptor for [A]);
      v83 = _swiftEmptyArrayStorage;
    }

    v152 = v81;
    v153 = v82;
    *&v151 = v83;
    v84 = sub_10002587C(&v151, v81);
    v85 = __chkstk_darwin(v84);
    v88 = (*(v87 + 16))(&v127 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0), v85);
    __chkstk_darwin(v88);
    *(&v127 - 32) = v77;
    *(&v127 - 3) = v78;
    LOBYTE(v126) = v79;

    v89 = sub_1004A5B64();

    sub_1000197E0(&v151);
    v90 = *(v89 + 16);
    if (!v90)
    {

      return;
    }

    sub_1001669C8(v138 + v129, v132, type metadata accessor for State.Logger);
    v147 = v89;
    v91 = v89 + 48;
    *&v92 = 68158467;
    v145 = v92;
    v146 = v90;
    v93 = v133;
    do
    {
      v100 = *(v91 - 16);
      v101 = *(v91 - 8);
      sub_1001669C8(v132, v93, type metadata accessor for State.Logger);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v102 = sub_1004A4A54();
      v103 = sub_1004A5FF4();

      if (os_log_type_enabled(v102, v103))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v148[0] = v95;
        *v94 = v145;
        *(v94 + 4) = 2;
        *(v94 + 8) = 256;
        v96 = *(v133 + *(v131 + 20));
        sub_100166900(v133, type metadata accessor for State.Logger);
        *(v94 + 10) = v96;
        *(v94 + 11) = 2160;
        *(v94 + 13) = 0x786F626C69616DLL;
        *(v94 + 21) = 2085;

        *&v151 = v100;
        DWORD2(v151) = v101;
        v97 = sub_1004A5824();
        v99 = sub_10015BA6C(v97, v98, v148);

        *(v94 + 23) = v99;
        _os_log_impl(&_mh_execute_header, v102, v103, "[%.*hhx] Notifying persistence that %{sensitive,mask.mailbox}s is already synced.", v94, 0x1Fu);
        sub_1000197E0(v95);
        v93 = v133;
      }

      else
      {
        sub_100166900(v93, type metadata accessor for State.Logger);
      }

      v91 += 48;
      v90 = (v90 - 1);
    }

    while (v90);
    v104 = sub_100163378(_swiftEmptyArrayStorage);
    v105 = 0;
    v106 = v147;
    for (i = (v147 + 56); ; i += 6)
    {
      if (v105 >= *(v106 + 16))
      {
        goto LABEL_77;
      }

      v109 = *(i - 1);
      v110 = *i;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v151 = v104;
      v112 = sub_100063C84(v109, v110);
      v114 = v104[2];
      v115 = (v113 & 1) == 0;
      v116 = __OFADD__(v114, v115);
      v117 = v114 + v115;
      if (v116)
      {
        goto LABEL_78;
      }

      v118 = v113;
      if (v104[3] < v117)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_66;
      }

      v124 = v112;
      sub_10013A4A0();
      v112 = v124;
      v104 = v151;
      if ((v118 & 1) == 0)
      {
LABEL_67:
        v104[(v112 >> 6) + 8] |= 1 << v112;
        v120 = (v104[6] + 16 * v112);
        *v120 = v109;
        v120[1] = v110;
        v121 = v104[7] + 24 * v112;
        *v121 = 0;
        *(v121 + 4) = 1;
        *(v121 + 8) = 0;
        *(v121 + 16) = 1;

        v122 = v104[2];
        v116 = __OFADD__(v122, 1);
        v123 = v122 + 1;
        if (v116)
        {
          goto LABEL_79;
        }

        v104[2] = v123;
        goto LABEL_59;
      }

LABEL_58:
      v108 = v104[7] + 24 * v112;
      *v108 = 0;
      *(v108 + 4) = 1;
      *(v108 + 8) = 0;
      *(v108 + 16) = 1;

LABEL_59:
      v105 = (v105 + 1);
      v106 = v147;
      if (v146 == v105)
      {

        v125 = swift_allocObject();
        *(v125 + 16) = v104;
        v128(v125 | 0x9000000000000004);

        sub_100166900(v132, type metadata accessor for State.Logger);
        return;
      }
    }

    sub_1000C3328(v117, isUniquelyReferenced_nonNull_native);
    v112 = sub_100063C84(v109, v110);
    if ((v118 & 1) != (v119 & 1))
    {
      goto LABEL_80;
    }

LABEL_66:
    v104 = v151;
    if ((v118 & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

  v45 = 0;
  v46 = 0;
  v47 = *(v6 + 264);
  v48 = v135;
  while (v45 < v44[2])
  {
    v144 = (*(v140 + 80) + 32) & ~*(v140 + 80);
    v49 = v44 + v144;
    v147 = *(v140 + 72) * v45;
    sub_1001669C8(v44 + v144 + v147, v48, type metadata accessor for RunningTask);
    sub_100117EA8(v141, v6);
    v146 = v44;
    if (v46)
    {
      *&v145 = 0;
      sub_100117890(v48, &v151);
      v50 = v143;
      if (v154)
      {
        if (v154 == 1)
        {
          sub_1000B364C(&v151, v148);
          v51 = v149;
          v52 = v150;
          sub_10002587C(v148, v149);
          v53 = *(v52 + 136);
          v54 = v51;
          v44 = v146;
          v55 = v52;
          v6 = v138;
          v53(v138, v48 + *(v137 + 28), v54, v55);

          sub_10011D8CC(v48);
          *v48 = 1;
          *(v48 + 8) = 0u;
          *(v48 + 24) = 0u;
          *(v48 + 37) = 0;
          *(v48 + 45) = 2;
          sub_1000197E0(v148);
        }

        else
        {
        }
      }

      else
      {

        sub_10011D8CC(v48);
        *v48 = 1;
        *(v48 + 8) = 0u;
        *(v48 + 24) = 0u;
        *(v48 + 37) = 0;
        *(v48 + 45) = 2;
        sub_10011D8CC(&v151);
      }
    }

    else
    {
      *&v145 = 0;
      v50 = v143;
    }

    sub_1001669C8(v48, v50, type metadata accessor for RunningTask);
    v56 = v142;
    if (v45 >= v44[2])
    {
      goto LABEL_75;
    }

    sub_1001669C8(&v49[v147], v142, type metadata accessor for RunningTask);
    v57 = *tracingLog.unsafeMutableAddressor();
    v58 = sub_1004A6354();

    if (v58)
    {
      v59 = v50;
      v60 = *(v50 + 48);
      v61 = *(v56 + 48);
      *&v151 = _swiftEmptyArrayStorage;
      *(&v151 + 1) = _swiftEmptyArrayStorage;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      __chkstk_darwin(v63);
      v64 = sub_100120834();
      Array.findAppendOnlyDiff<A>(from:id:added:removed:update:)(v61, KeyPath, sub_100120824, (&v127 - 4), sub_10012082C, (&v127 - 4), UInt32.init(_:), 0, v60, v64);

      v65 = *(&v151 + 1);
      v66 = *(v151 + 16);
      if (v66)
      {
        v136 = *(&v151 + 1);
        v67 = *(v59 + *(v137 + 32));
        v68 = v151 + ((*(v134 + 80) + 32) & ~*(v134 + 80));
        v69 = *(v134 + 72);
        do
        {
          sub_1001669C8(v68, v15, type metadata accessor for TaskHistory.Running);
          sub_10011BDFC(v47, v67);
          sub_100166900(v15, type metadata accessor for TaskHistory.Running);
          v68 += v69;
          --v66;
        }

        while (v66);

        v48 = v135;
        v65 = v136;
      }

      else
      {

        v48 = v135;
      }

      v70 = *(v65 + 16);
      v6 = v138;
      v56 = v142;
      if (v70)
      {
        v71 = *&v143[*(v137 + 32)];
        v72 = (v65 + 40);
        do
        {
          v73 = *(v72 - 1);
          v74 = *v72;
          v72 += 12;
          sub_10011CC04(v47, v71, v73, v74);
          --v70;
        }

        while (v70);
      }

      v50 = v143;
    }

    sub_100166900(v56, type metadata accessor for RunningTask);
    v44 = v146;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1001399D0(v44);
    }

    if (v45 >= v44[2])
    {
      goto LABEL_76;
    }

    ++v45;
    sub_100166960(v50, v44 + v144 + v147, type metadata accessor for RunningTask);
    *(v6 + 272) = v44;
    sub_100166900(v48, type metadata accessor for RunningTask);
    v46 = v145;
    if (v45 == v139)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  sub_1004A6E24();
  __break(1u);
}

uint64_t sub_100157D24(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, void (*a3)(unint64_t), void (*a4)(void, void, void, void, void))
{
  v5 = v4;
  v284 = a3;
  v285 = a4;
  v8 = type metadata accessor for Task.Logger(0);
  __chkstk_darwin(v8 - 8);
  v269 = (v256 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for StateWithTasks(0);
  __chkstk_darwin(v10);
  v283 = v256 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = type metadata accessor for RunningTask(0);
  v298 = *(v292 - 8);
  __chkstk_darwin(v292);
  v273 = v256 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v287 = v256 - v14;
  __chkstk_darwin(v15);
  v305 = v256 - v16;
  __chkstk_darwin(v17);
  v286 = v256 - v18;
  v260 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v260);
  v288 = v256 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v259 = v256 - v21;
  __chkstk_darwin(v22);
  v261 = v256 - v23;
  __chkstk_darwin(v24);
  v263 = v256 - v25;
  __chkstk_darwin(v26);
  v28 = v256 - v27;
  __chkstk_darwin(v29);
  v31 = v256 - v30;
  v32 = type metadata accessor for Command(0);
  __chkstk_darwin(v32);
  v34 = v256 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v5[72];
  v270 = a1;
  v271 = a2;
  if (v35 == 2)
  {
    v304 = v10;
    swift_storeEnumTagMultiPayload();
    v36 = sub_10018A834(_swiftEmptyArrayStorage);
    sub_10016642C(v34, v36, v37, v5, a1, a2);
    v282 = 0;
    sub_100166900(v34, type metadata accessor for Command);

    v10 = v304;
    sub_1001669C8(&v5[*(v304 + 28)], v31, type metadata accessor for State.Logger);
    sub_1001669C8(v31, v28, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v38 = sub_1004A4A54();
    v39 = sub_1004A6004();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 68157952;
      *(v40 + 4) = 2;
      *(v40 + 8) = 256;
      v41 = v28[*(v260 + 20)];
      sub_100166900(v28, type metadata accessor for State.Logger);
      *(v40 + 10) = v41;
      _os_log_impl(&_mh_execute_header, v38, v39, "[%.*hhx] Creating initial connection to get capabilities.", v40, 0xBu);
    }

    else
    {
      sub_100166900(v28, type metadata accessor for State.Logger);
    }

    sub_100166900(v31, type metadata accessor for State.Logger);
  }

  else
  {
    v282 = 0;
  }

  v325 = sub_100121E04(v5[264], *(v5 + 34));
  v42 = *(v10 + 28);
  v43 = *(v10 + 32);
  *&v44 = 68157952;
  v257 = v44;
  *(&v44 + 1) = 2;
  v264 = xmmword_1004CEAA0;
  *&v44 = 68158723;
  v258 = v44;
  v299 = v5;
  v289 = v42;
  v272 = v43;
LABEL_9:
  v45 = sub_100012C04();
  v48 = sub_100187138(v45, v47, v46 & 1);
  v50 = v49;
  v52 = v51;
  v53 = *&v5[v43];
  v54 = *(v5 + 200);
  v340[1] = *(v5 + 184);
  v340[2] = v54;
  v341[0] = *(v5 + 216);
  *(v341 + 12) = *(v5 + 228);
  v340[0] = *(v5 + 168);
  sub_10014F954(v340, &v313);
  sub_10018C458(v48, v50, v52, &v5[v42], v53, v340);
  sub_10014F9B0(v340);
  v262 = *(v50 + 16);
  v290 = v50;
  v291 = v48;
  v276 = v52;
  sub_100122B18(v48, v50, v52, &v5[v42]);
  v274 = 0;
LABEL_13:
  memcpy(v339, v5, sizeof(v339));
  v60 = *(v5 + 34);

  v62 = sub_100164D6C(v61);
  v64 = v63;
  v66 = v65;

  v67 = v5[264];
  swift_bridgeObjectRetain_n();
  sub_10012E6EC(v62, v64, v66, v291, v290, v276, v339, v309, v60);

  sub_10000E268(v309, &v323, &qword_1005D14E8, &qword_1004D6900);
  if (BYTE8(v324[1]) == 255)
  {
    sub_100025F40(&v323, &qword_1005D14E8, &qword_1004D6900);
    v74 = v305;
    v69 = _swiftEmptySetSingleton;
  }

  else
  {
    v313 = v323;
    v314[0] = v324[0];
    *(v314 + 9) = *(v324 + 9);
    sub_10011D9F0(&v313, &v323);
    v68 = v286;
    sub_100116E8C(&v323, v67, v286);
    sub_1001685A8(v68 + *(v292 + 28));
    sub_1001225FC(v68);
    sub_100166900(v68, type metadata accessor for RunningTask);
    sub_10011D9F0(&v313, &v323);
    v69 = _swiftEmptySetSingleton;
    if (BYTE8(v324[1]))
    {
      sub_1000B364C(&v323, v306);
      v70 = v307;
      v71 = v308;
      sub_10002587C(v306, v307);
      (*(v71 + 32))(&v326, v70, v71);
      v72 = v327;
      LODWORD(v71) = v328;
      v333 = v326;
      sub_1000D69D0(&v333);
      sub_1000197E0(v306);
      sub_100088220(&v323, v72, v71);

      v73 = &v313;
    }

    else
    {
      sub_10011DA4C(&v313);
      v73 = &v323;
    }

    sub_10011DA4C(v73);
    v274 = 1;
    v74 = v305;
  }

  v293 = sub_100163378(_swiftEmptyArrayStorage);
  v75 = (v312 + 56);
  v76 = 1 << *(v312 + 32);
  if (v76 < 64)
  {
    v77 = ~(-1 << v76);
  }

  else
  {
    v77 = -1;
  }

  v78 = v77 & *(v312 + 56);
  v79 = v339[21];
  v296 = v339[23];
  v297 = v339[22];
  LODWORD(v300) = LOBYTE(v339[24]);
  v80 = (v76 + 63) >> 6;
  v303 = v312;

  v81 = 0;
  v301 = v80;
  v302 = v75;
  while (2)
  {
    v294 = v79 + 32;
    v295 = v79;
    if (v78)
    {
      goto LABEL_29;
    }

    do
    {
LABEL_25:
      v82 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        __break(1u);
        goto LABEL_171;
      }

      if (v82 >= v80)
      {

        v55 = v293;
        if (v293[2])
        {
          v56 = swift_allocObject();
          *(v56 + 16) = v55;
          v284(v56 | 0x9000000000000004);
        }

        else
        {
        }

        v58 = v288;
        v57 = v289;
        sub_10000E268(v309, &v313, &qword_1005D14E8, &qword_1004D6900);
        sub_1001667B8(v309);
        v59 = BYTE8(v314[1]);
        sub_100025F40(&v313, &qword_1005D14E8, &qword_1004D6900);
        if (v59 != 255)
        {
          goto LABEL_13;
        }

        v157 = v291;

        v158 = v290;

        v159 = static MonotonicTime.now()();
        v160 = *(v5 + 34);
        v161 = sub_100156090(v159, v160, sub_100121D14, 0, v157, v158);

        v268 = v161[2];
        if (v268)
        {
          v162 = 0;
          v256[1] = v161;
          v267 = v161 + 4;
          v266 = v5[264];
          v163 = v287;
          while (1)
          {
            v164 = v267[v162];
            if ((v164 & 0x8000000000000000) != 0)
            {
              goto LABEL_174;
            }

            if (v164 >= v160[2])
            {
              goto LABEL_175;
            }

            v165 = (*(v298 + 80) + 32) & ~*(v298 + 80);
            v302 = v160;
            v166 = v160 + v165;
            v304 = *(v298 + 72) * v164;
            sub_1001669C8(v160 + v165 + v304, v163, type metadata accessor for RunningTask);
            v167 = v163 + *(v292 + 36);
            v168 = *v167;
            LODWORD(v297) = *(v167 + 8);
            *v167 = 0;
            v300 = v167;
            *(v167 + 8) = 1;
            v169 = sub_100012C04();
            v295 = v170;
            v296 = v169;
            LODWORD(v294) = v171;
            v172 = v283;
            sub_1001669C8(v5, v283, type metadata accessor for StateWithTasks);
            memcpy(v338, v172, sizeof(v338));
            v173 = v338[26];
            v174 = v338[15];
            v301 = v162;
            v303 = v164;
            v277 = v165;
            v278 = v166;
            v275 = v168;
            v293 = v338[22];
            v280 = v338[21];
            v281 = v338[23];
            LODWORD(v279) = LOBYTE(v338[24]);
            if ((v338[24] & 1) == 0)
            {
              goto LABEL_121;
            }

            if (!v338[15] || !*(v338[15] + 16))
            {
              v196 = *(v338[21] + 16);
              if (v196)
              {
                v197 = (v338[21] + 32);
                do
                {
                  v198 = *v197;
                  v199 = v197[2];
                  v314[0] = v197[1];
                  v314[1] = v199;
                  v313 = v198;
                  v200 = v197[3];
                  v201 = v197[4];
                  v202 = v197[6];
                  v317 = v197[5];
                  v318 = v202;
                  v315 = v200;
                  v316 = v201;
                  v203 = v197[7];
                  v204 = v197[8];
                  v205 = v197[10];
                  v321 = v197[9];
                  v322 = v205;
                  v319 = v203;
                  v320 = v204;
                  v206 = DWORD2(v314[0]);
                  sub_10000E08C(&v313, v309);

                  LOBYTE(v206) = MailboxName.isInbox.getter(v207, v206);

                  sub_10000E0E8(&v313);
                  if (v206)
                  {
                    sub_10000C9C0(&qword_1005D14A8, &unk_1004E2AB0);
                    v208 = swift_allocObject();
                    *(v208 + 16) = v264;
                    v209 = MailboxName.inbox.unsafeMutableAddressor();
                    v210 = *(v209 + 2);
                    *(v208 + 32) = *v209;
                    *(v208 + 40) = v210;
                    v175 = sub_100092FD4(v208);
                    swift_setDeallocating();

                    sub_10009DA94(v208 + 32);
                    swift_deallocClassInstance();
                    goto LABEL_125;
                  }

                  v197 += 11;
                  --v196;
                }

                while (v196);
              }

LABEL_121:
              v175 = _swiftEmptySetSingleton;
              goto LABEL_125;
            }

            v265 = v338[26];
            v175 = _swiftEmptySetSingleton;
            *&v323 = _swiftEmptySetSingleton;
            v176 = *(v338[21] + 16);
            if (!v176)
            {
              goto LABEL_123;
            }

            v177 = (v338[21] + 32);
            do
            {
              v178 = *v177;
              v179 = v177[2];
              v314[0] = v177[1];
              v314[1] = v179;
              v313 = v178;
              v180 = v177[3];
              v181 = v177[4];
              v182 = v177[6];
              v317 = v177[5];
              v318 = v182;
              v315 = v180;
              v316 = v181;
              v183 = v177[7];
              v184 = v177[8];
              v185 = v177[10];
              v321 = v177[9];
              v322 = v185;
              v319 = v183;
              v320 = v184;
              v186 = *&v314[0];
              v187 = DWORD2(v314[0]);
              v188 = v317;
              v189 = *(&v316 + 1);
              sub_10000E08C(&v313, v309);
              if ((static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(v189, v188, 0, 0) & 1) == 0)
              {
                sub_10000E0E8(&v313);
                goto LABEL_104;
              }

              if (MailboxName.isInbox.getter(v190, v187))
              {
LABEL_107:
                sub_100088220(v309, v186, v187);
                sub_10000E0E8(&v313);

                goto LABEL_104;
              }

              if (*(v174 + 16))
              {
                v191 = sub_100063B5C(v186, v187);
                if (v192)
                {
                  v193 = *(*(v174 + 56) + 72 * v191 + 14);

                  v194 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
                  v195 = *RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();

                  if (v194)
                  {
                    if ((v195 & ~v194) == 0)
                    {
LABEL_115:
                      if ((v194 & v193) == 0)
                      {
                        goto LABEL_107;
                      }

                      goto LABEL_116;
                    }
                  }

                  else if (!v195)
                  {
                    goto LABEL_107;
                  }

                  v194 |= v195;
                  goto LABEL_115;
                }
              }

LABEL_116:

              sub_10000E0E8(&v313);
LABEL_104:
              v177 += 11;
              --v176;
            }

            while (v176);
            v175 = v323;
LABEL_123:
            v173 = v265;
LABEL_125:
            v211 = LOBYTE(v338[3]);
            v212 = BYTE1(v338[3]);
            v213 = v338[4];
            v214 = v338[7];

            sub_100166D28();
            v216 = v215;
            if (v213 == 3 || v213 == 2)
            {

              v217 = 1;
              goto LABEL_128;
            }

            v240 = sub_100166E18(v215);
            if (v212)
            {
              goto LABEL_154;
            }

            if (v213 == 1)
            {
              if (v211)
              {
                v217 = v211 == 1;
                goto LABEL_155;
              }

LABEL_154:
              v217 = v240 ^ 1;
              goto LABEL_155;
            }

            if (v213 || (v211 - 1) >= 2)
            {
              goto LABEL_154;
            }

            v217 = 0;
LABEL_155:
            sub_100013AD0(&off_100598658, v214);
            sub_100166E18(v216);
            v246 = sub_100013CF4(v214);

            if (v246 & 1) == 0 && (v212)
            {
              sub_100166E18(v216);
            }

LABEL_128:

            sub_1000CF79C(v280, v293, v281, v279 & 1, v174, v175, v217 & 1, v173);
            v219 = v218;
            v221 = v220;

            v222 = v283;
            sub_1001627A4(v219, v221);
            v224 = v223;

            sub_1001222A0(*(v222 + 264), *(v222 + 272));
            v226 = v225;
            sub_100166900(v222, type metadata accessor for StateWithTasks);
            *&v313 = v291;
            *(&v313 + 1) = v290;

            v227 = sub_10000C9C0(&qword_1005D1D98, &qword_1004D92B0);
            v228 = sub_10000DF44(&qword_1005D1DA0, &qword_1005D1D98, &qword_1004D92B0, &protocol conformance descriptor for OrderedSet<A>);
            MailboxesSelectionUsage.removing<A>(notContainedIn:)(&v313, v224, v227, v228);
            v230 = v229;

            v231 = *(v292 + 28);
            v232 = v287;
            v233 = v269;
            sub_1001669C8(v287 + v231, v269, type metadata accessor for Task.Logger);

            sub_1000131FC(v226);
            *(&v255 + 1) = v295;
            *&v255 = v296;
            v5 = v299;
            v234 = v282;
            sub_10011E4EC(v233, v299, v284, v285, v232, v299, v270, v271, v255, v294 & 1, v230, v226);
            if (!v234)
            {
              sub_100166900(v233, type metadata accessor for Task.Logger);

              sub_10001324C(v226);
              v235 = v273;
              v236 = v232;
LABEL_140:
              v43 = v272;
              v241 = v303;
              goto LABEL_142;
            }

            sub_100166900(v233, type metadata accessor for Task.Logger);
            sub_100117890(v232, &v313);
            v235 = v273;
            v236 = v232;
            if (!BYTE13(v314[1]))
            {

              sub_10011D8CC(v232);
              *v232 = 1;
              *(v232 + 8) = 0u;
              *(v232 + 24) = 0u;
              *(v232 + 37) = 0;
              *(v232 + 45) = 2;
              sub_10011D8CC(&v313);
LABEL_139:

              sub_10001324C(v226);
              goto LABEL_140;
            }

            if (BYTE13(v314[1]) == 1)
            {
              sub_1000B364C(&v313, v309);
              v237 = v310;
              v238 = v311;
              sub_10002587C(v309, v310);
              v239 = v237;
              v235 = v273;
              (*(v238 + 136))(v5, v287 + v231, v239, v238);
              v236 = v287;

              sub_10011D8CC(v236);
              *v236 = 1;
              *(v236 + 8) = 0u;
              *(v236 + 24) = 0u;
              *(v236 + 37) = 0;
              *(v236 + 45) = 2;
              sub_1000197E0(v309);
              goto LABEL_139;
            }

            v43 = v272;
            v241 = v303;

            sub_10001324C(v226);
LABEL_142:

            sub_10001324C(v226);
            v242 = v300;
            if (((*(v300 + 8) | v297) & 1) == 0)
            {
              v243 = *v300;
              if (v275 < *v300)
              {
                v243 = v275;
              }

              *v300 = v243;
              *(v242 + 8) = 0;
            }

            sub_1001669C8(v236, v235, type metadata accessor for RunningTask);
            v244 = v301;
            v160 = v302;
            if (v241 >= v302[2])
            {
              goto LABEL_176;
            }

            v282 = 0;
            v245 = v286;
            sub_1001669C8(&v278[v304], v286, type metadata accessor for RunningTask);
            sub_10011D274(v266, v245);
            sub_100166900(v245, type metadata accessor for RunningTask);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v160 = sub_1001399D0(v160);
            }

            v163 = v287;
            v57 = v289;
            sub_100166900(v287, type metadata accessor for RunningTask);
            if (v241 >= v160[2])
            {
              goto LABEL_177;
            }

            v162 = v244 + 1;
            sub_100166960(v235, v160 + v277 + v304, type metadata accessor for RunningTask);
            *(v5 + 34) = v160;
            v58 = v288;
            if (v162 == v268)
            {

              goto LABEL_159;
            }
          }
        }

        v43 = v272;
LABEL_159:
        sub_100159D68();
        if (v247)
        {
          if (v274)
          {
          }

          else
          {
            if (*(*(v5 + 34) + 16) || !*(*(v5 + 31) + 16))
            {
              goto LABEL_172;
            }

            v248 = v259;
            sub_1001669C8(&v5[v289], v259, type metadata accessor for State.Logger);
            sub_1001669C8(v248, v58, type metadata accessor for State.Logger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v249 = sub_1004A4A54();
            v250 = sub_1004A6004();
            if (os_log_type_enabled(v249, v250))
            {
              v251 = swift_slowAlloc();
              *v251 = v257;
              *(v251 + 4) = 2;
              *(v251 + 8) = 256;
              v252 = *(v288 + *(v260 + 20));
              sub_100166900(v288, type metadata accessor for State.Logger);
              *(v251 + 10) = v252;
              _os_log_impl(&_mh_execute_header, v249, v250, "[%.*hhx] Re-starting blocked non-mailbox tasks.", v251, 0xBu);
            }

            else
            {
              sub_100166900(v58, type metadata accessor for State.Logger);
            }

            sub_100166900(v259, type metadata accessor for State.Logger);

            *(v5 + 31) = _swiftEmptyArrayStorage;
          }

          v42 = v289;
        }

        else
        {

          v42 = v57;
        }

        goto LABEL_9;
      }

      v78 = v75[v82];
      ++v81;
    }

    while (!v78);
    v81 = v82;
    while (1)
    {
LABEL_29:
      v83 = *(v303 + 48) + ((v81 << 10) | (16 * __clz(__rbit64(v78))));
      v84 = *v83;
      v304 = *(v83 + 8);
      v85 = *(v5 + 34);
      v306[0] = v69;
      v86 = v69;
      v87 = *(v85 + 16);
      if (v87)
      {
        v88 = v298;
        v89 = v85 + ((*(v298 + 80) + 32) & ~*(v298 + 80));

        v90 = *(v88 + 72);
        do
        {
          sub_1001669C8(v89, v74, type metadata accessor for RunningTask);
          sub_100117890(v74, &v313);
          if (BYTE13(v314[1]))
          {
            if (BYTE13(v314[1]) == 1)
            {
              sub_1000B364C(&v313, &v323);
              v91 = *(&v324[0] + 1);
              v92 = *&v324[1];
              sub_10002587C(&v323, *(&v324[0] + 1));
              (*(v92 + 32))(&v329, v91, v92);
              v93 = v330;
              LODWORD(v91) = v331;
              v332 = v329;
              sub_1000D69D0(&v332);
              sub_1000197E0(&v323);
              v94 = v93;
              v74 = v305;
              sub_100088220(&v313, v94, v91);
            }

            sub_100166900(v74, type metadata accessor for RunningTask);
          }

          else
          {
            sub_100166900(v74, type metadata accessor for RunningTask);
            sub_10011D8CC(&v313);
          }

          v89 += v90;
          --v87;
        }

        while (v87);
        v95 = v306[0];
        v5 = v299;
        v69 = _swiftEmptySetSingleton;
      }

      else
      {

        v95 = v86;
        v69 = v86;
      }

      v78 &= v78 - 1;
      if (v95[2])
      {
        sub_1004A6E94();
        v96 = v304 | (v304 << 32);
        sub_1004A6EB4(v96);
        v97 = sub_1004A6F14();
        v98 = -1 << *(v95 + 32);
        v99 = v97 & ~v98;
        if ((*(v95 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v99))
        {
          v100 = ~v98;
          do
          {
            v101 = v95[6] + 16 * v99;
            if ((*(v101 + 8) | (*(v101 + 8) << 32)) == v96)
            {
              v102 = *v101;
              v103 = *(v102 + 16);
              if (v103 == *(v84 + 16))
              {
                if (!v103 || v102 == v84)
                {
LABEL_50:

                  goto LABEL_67;
                }

                v104 = 32;
                while (*(v102 + v104) == *(v84 + v104))
                {
                  ++v104;
                  if (!--v103)
                  {
                    goto LABEL_50;
                  }
                }
              }
            }

            v99 = (v99 + 1) & v100;
          }

          while (((*(v95 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v99) & 1) != 0);
        }
      }

      if (v300)
      {
        v105 = v295;
        v106 = *(v295 + 16);
        if (v106)
        {
          break;
        }
      }

LABEL_66:

      v74 = v305;
LABEL_67:
      v80 = v301;
      v75 = v302;
      if (!v78)
      {
        goto LABEL_25;
      }
    }

    v107 = 0;
    while (1)
    {
      v108 = v294 + 176 * v107;
      if ((*(v108 + 24) | (*(v108 + 24) << 32)) == (v304 | (v304 << 32)))
      {
        v109 = *(v108 + 16);
        v110 = *(v109 + 16);
        if (v110 == *(v84 + 16))
        {
          break;
        }
      }

LABEL_54:
      if (++v107 == v106)
      {
        goto LABEL_66;
      }
    }

    if (v110)
    {
      v111 = v109 == v84;
    }

    else
    {
      v111 = 1;
    }

    if (v111)
    {
LABEL_69:
      sub_100020D10(v295, v297, v296, 1);
      v114 = v105;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v114 = sub_100139804(v105);
      }

      if (v107 >= *(v114 + 2))
      {
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        result = sub_1004A6E24();
        __break(1u);
        return result;
      }

      v115 = &v114[176 * v107];
      if (*(*(v115 + 21) + 16))
      {
        *(v115 + 21) = v69;

        v116 = *(v115 + 4);
        v294 = *(v115 + 5);
        LODWORD(v280) = *(v115 + 34);
        v117 = v115[140];
        *(v5 + 22) = 0;
        *(v5 + 23) = 0;
        *(v5 + 21) = v114;
        v5[192] = 1;
        v300 = v116;

        sub_100020D58(v105, v297, v296, 1);
        v118 = *(v5 + 200);
        v335 = *(v5 + 184);
        v336 = v118;
        v337[0] = *(v5 + 216);
        *(v337 + 12) = *(v5 + 228);
        v334 = *(v5 + 168);
        v119 = sub_1000B7930(v84, v304, &v334);
        LODWORD(v296) = v120;
        LODWORD(v295) = v120 & 0x100;
        if ((v120 & 0x100) != 0)
        {
          v121 = 0;
        }

        else
        {
          v121 = v119;
        }

        v297 = v121;
        v122 = v263;
        sub_1001669C8(&v5[v289], v263, type metadata accessor for State.Logger);
        v123 = v261;
        sub_1001669C8(v122, v261, type metadata accessor for State.Logger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v124 = sub_1004A4A54();
        v125 = sub_1004A6034();

        v126 = os_log_type_enabled(v124, v125);
        LODWORD(v281) = v117;
        if (v126)
        {
          v127 = swift_slowAlloc();
          v279 = swift_slowAlloc();
          *&v323 = v279;
          *v127 = v258;
          *(v127 + 4) = 2;
          *(v127 + 8) = 256;
          v128 = v123;
          v129 = *(v123 + *(v260 + 20));
          sub_100166900(v128, type metadata accessor for State.Logger);
          *(v127 + 10) = v129;
          *(v127 + 11) = 2160;
          *(v127 + 13) = 0x786F626C69616DLL;
          *(v127 + 21) = 2085;
          *&v313 = v84;
          DWORD2(v313) = v304;
          v130 = sub_1004A5824();
          v132 = sub_10015BA6C(v130, v131, &v323);

          *(v127 + 23) = v132;
          *(v127 + 31) = 2082;
          if (v281)
          {
            v133 = 0xE300000000000000;
            v134 = 7104878;
          }

          else
          {
            LODWORD(v313) = v280;
            v134 = sub_1004A5804();
            v133 = v135;
          }

          v136 = sub_10015BA6C(v134, v133, &v323);

          *(v127 + 33) = v136;
          _os_log_impl(&_mh_execute_header, v124, v125, "[%.*hhx] No new and no running tasks for '%{sensitive,mask.mailbox}s' with change ID %{public}s. Marking as done.", v127, 0x29u);
          swift_arrayDestroy();
        }

        else
        {
          sub_100166900(v123, type metadata accessor for State.Logger);
        }

        v137 = v293;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v313 = v137;
        v139 = sub_100063C84(v300, v294);
        v141 = v137[2];
        v142 = (v140 & 1) == 0;
        v143 = __OFADD__(v141, v142);
        v144 = v141 + v142;
        v80 = v301;
        v75 = v302;
        if (v143)
        {
          goto LABEL_178;
        }

        v145 = v140;
        if (v137[3] >= v144)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v156 = v139;
            sub_10013A4A0();
            v139 = v156;
          }
        }

        else
        {
          sub_1000C3328(v144, isUniquelyReferenced_nonNull_native);
          v139 = sub_100063C84(v300, v294);
          if ((v145 & 1) != (v146 & 1))
          {
            goto LABEL_180;
          }
        }

        v147 = v296 | (v295 >> 8);
        if (v145)
        {
          v148 = v139;

          v293 = v313;
          v149 = *(v313 + 56) + 24 * v148;
          *v149 = v280;
          *(v149 + 4) = v281;
          *(v149 + 8) = v297;
          *(v149 + 16) = v147 & 1;
          sub_100166900(v263, type metadata accessor for State.Logger);
        }

        else
        {
          v150 = v313;
          *(v313 + 8 * (v139 >> 6) + 64) |= 1 << v139;
          v151 = (v150[6] + 16 * v139);
          v152 = v294;
          *v151 = v300;
          v151[1] = v152;
          v153 = v150[7] + 24 * v139;
          *v153 = v280;
          *(v153 + 4) = v281;
          *(v153 + 8) = v297;
          *(v153 + 16) = v147 & 1;
          sub_100166900(v263, type metadata accessor for State.Logger);
          v154 = v150[2];
          v143 = __OFADD__(v154, 1);
          v155 = v154 + 1;
          if (v143)
          {
            goto LABEL_179;
          }

          v293 = v150;
          v150[2] = v155;
        }

        v74 = v305;
        v79 = v334;
        v296 = v335;
        v297 = *(&v334 + 1);
        v274 = 1;
        LODWORD(v300) = BYTE8(v335);
      }

      else
      {
        sub_100020D58(v105, v297, v296, 1);

        v296 = 0;
        v297 = 0;
        *(v5 + 22) = 0;
        *(v5 + 23) = 0;
        *(v5 + 21) = v114;
        v79 = v114;
        v5[192] = 1;
        v74 = v305;
        v80 = v301;
        v75 = v302;
      }

      continue;
    }

    break;
  }

  v112 = (v109 + 32);
  v113 = (v84 + 32);
  while (v110)
  {
    if (*v112 != *v113)
    {
      goto LABEL_54;
    }

    ++v112;
    ++v113;
    if (!--v110)
    {
      goto LABEL_69;
    }
  }

LABEL_171:
  __break(1u);
LABEL_172:

  v253 = v262 != 0;
  sub_1001318D0(v325, &v5[v289], v5, v5);

  return v253;
}

uint64_t sub_100159B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v20 = a3;
  v8 = sub_10000C9C0(&qword_1005D0F28, &qword_1004D6018);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ClientCommand(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000102DC(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100025F40(v10, &qword_1005D0F28, &qword_1004D6018);
    return v20(a1, a5);
  }

  sub_10016680C(v10, v14, type metadata accessor for ClientCommand);
  v15 = *(a2 + 272);
  v16 = *(a2 + 280);
  v17 = *(a2 + 264);

  LOBYTE(v17) = sub_10012304C(v14, v17, v15, v16);

  sub_100166900(v14, type metadata accessor for ClientCommand);
  if (v17)
  {
    return v20(a1, a5);
  }

  return 0;
}

void sub_100159D68()
{
  v1 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v1);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v16[-v5];
  v7 = type metadata accessor for StateWithTasks(0);
  sub_1001669C8(v0 + *(v7 + 28), v6, type metadata accessor for State.Logger);
  v8 = *(*(v0 + 272) + 16);
  v17 = v0 + 264;
  v18 = v6;
  sub_10015C69C(sub_100124D14, v16);
  v10 = *(*(v0 + 272) + 16);
  if (v10 < v9)
  {
    __break(1u);
  }

  else
  {
    sub_1001649EC(v9, v10, sub_100087480, type metadata accessor for RunningTask);
    v11 = *(*(v0 + 272) + 16);
    if (v8 != v11)
    {
      sub_1001669C8(v6, v3, type metadata accessor for State.Logger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v12 = sub_1004A4A54();
      v13 = sub_1004A5FF4();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 68158208;
        *(v14 + 4) = 2;
        *(v14 + 8) = 256;
        v15 = v3[*(v1 + 20)];
        sub_100166900(v3, type metadata accessor for State.Logger);
        *(v14 + 10) = v15;
        *(v14 + 11) = 2048;
        *(v14 + 13) = v8 - v11;
        _os_log_impl(&_mh_execute_header, v12, v13, "[%.*hhx] Pruned %ld completed tasks.", v14, 0x15u);
      }

      else
      {
        sub_100166900(v3, type metadata accessor for State.Logger);
      }
    }

    sub_100166900(v6, type metadata accessor for State.Logger);
  }
}

Swift::Void __swiftcall StateWithTasks.logForDidCreateFirstConnection()()
{
  v1 = 0;
  v159 = type metadata accessor for StateWithTasks(0);
  __chkstk_darwin(v159);
  v155 = v141 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v169 = v141 - v4;
  __chkstk_darwin(v5);
  v7 = v141 - v6;
  v156 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v156);
  v154 = v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v141 - v10;
  v160 = v0;
  v12 = *(v0 + 64);
  *&v174 = _swiftEmptySetSingleton;
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = (v13 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v158 = 0;
  if (v15)
  {
    while (1)
    {
      v17 = v1;
LABEL_9:
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_100088064(&v172, *(*(v12 + 56) + ((v17 << 11) | (32 * v18))));
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v17 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
      return;
    }

    if (v17 >= v16)
    {
      break;
    }

    v15 = *(v12 + 64 + 8 * v17);
    ++v1;
    if (v15)
    {
      v1 = v17;
      goto LABEL_9;
    }
  }

  v19 = v174;
  v20 = v159;
  v21 = v160;
  v157 = *(v159 + 28);
  sub_1001669C8(v160 + v157, v11, type metadata accessor for State.Logger);
  sub_1001669C8(v21, v7, type metadata accessor for StateWithTasks);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v22 = v169;
  sub_1001669C8(v21, v169, type metadata accessor for StateWithTasks);

  v23 = sub_1004A4A54();
  v24 = sub_1004A4A74();
  v25 = *(v24 - 8);
  v152 = *(v25 + 8);
  v153 = v24;
  v151 = v25 + 8;
  v152(v11);
  v26 = sub_1004A6034();

  v168 = v23;
  if (os_log_type_enabled(v23, v26))
  {
    v27 = swift_slowAlloc();
    LODWORD(v166) = v26;
    v28 = v27;
    v167 = swift_slowAlloc();
    *&v174 = v167;
    *v28 = 68158978;
    *(v28 + 4) = 2;
    *(v28 + 8) = 256;
    v29 = v7[*(v20 + 28) + *(v156 + 20)];
    v165 = type metadata accessor for StateWithTasks;
    sub_100166900(v7, type metadata accessor for StateWithTasks);
    *(v28 + 10) = v29;
    *(v28 + 11) = 2048;
    *(v28 + 13) = *(v12 + 16);

    *(v28 + 21) = 2082;
    v30 = v158;
    v31 = sub_100154E94(v12);
    v164 = v30;
    v172 = v31;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770, &protocol conformance descriptor for [A]);
    v32 = sub_1004A5614();
    v34 = v33;

    v35 = sub_10015BA6C(v32, v34, &v174);

    *(v28 + 23) = v35;
    *(v28 + 31) = 2082;
    v36 = v164;
    v37 = sub_1001550D8(v19);
    v158 = v36;

    v172 = v37;
    v21 = v160;
    v38 = sub_1004A5614();
    v40 = v39;

    v41 = sub_10015BA6C(v38, v40, &v174);

    *(v28 + 33) = v41;
    *(v28 + 41) = 2082;
    if (*(v169 + 25))
    {
      v42 = 0x756F72676B636162;
    }

    else
    {
      v42 = 0x656C6269736976;
    }

    if (*(v169 + 25))
    {
      v43 = 0xEC0000006465646ELL;
    }

    else
    {
      v43 = 0xE700000000000000;
    }

    sub_100166900(v169, v165);
    v44 = sub_10015BA6C(v42, v43, &v174);

    *(v28 + 43) = v44;
    v45 = v168;
    _os_log_impl(&_mh_execute_header, v168, v166, "[%.*hhx] [1st connection] Running sync requests %ld: {%{public}s}, kinds: %{public}s; App state: %{public}s", v28, 0x33u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100166900(v7, type metadata accessor for StateWithTasks);

    swift_bridgeObjectRelease_n();
    sub_100166900(v22, type metadata accessor for StateWithTasks);
  }

  if (*(v21 + 192) == 1)
  {
    v46 = *(v21 + 168);
    v47 = sub_100012C04();
    v50 = sub_100187138(v47, v49, v48 & 1);
    v52 = v51;
    v54 = v53;
    v55 = *(v21 + *(v159 + 32));
    *(v186 + 12) = *(v21 + 228);
    v56 = *(v21 + 216);
    v185[2] = *(v21 + 200);
    v186[0] = v56;
    v57 = *(v21 + 184);
    v185[0] = *(v21 + 168);
    v185[1] = v57;
    sub_10014F954(v185, &v174);
    v162 = v54;
    sub_10018C458(v50, v52, v54, v21 + v157, v55, v185);
    sub_10014F9B0(v185);
    v59 = v52;
    v168 = *(v46 + 16);
    v169 = v46;
    if (v168)
    {
      v163 = 0;
      v60 = 0;
      v167 = v169 + 32;
      v61 = (v52 + 32);
      v161 = v162 + 32;
      *&v58 = 68160515;
      v144 = v58;
      v165 = (v52 + 32);
      v166 = v52;
      while (1)
      {
        if (v60 >= *(v169 + 16))
        {
          goto LABEL_117;
        }

        v62 = (v167 + 176 * v60);
        v63 = *v62;
        v64 = v62[2];
        v175 = v62[1];
        v176 = v64;
        v174 = v63;
        v65 = v62[3];
        v66 = v62[4];
        v67 = v62[6];
        v179 = v62[5];
        v180 = v67;
        v177 = v65;
        v178 = v66;
        v68 = v62[7];
        v69 = v62[8];
        v70 = v62[10];
        v183 = v62[9];
        v184 = v70;
        v181 = v68;
        v182 = v69;
        v71 = v175;
        v72 = DWORD2(v175);
        v73 = DWORD1(v179);
        v74 = BYTE8(v179);
        ++v60;
        v75 = *(v59 + 16);
        if (v50)
        {
          sub_10015C0B4(v175, DWORD2(v175), v61, v75, (v50 + 16), v50 + 32);
          if ((v76 & 1) == 0)
          {
            LODWORD(v164) = v73;
            v77 = 0;
            v75 = *(v59 + 16);
            goto LABEL_57;
          }
        }

        else if (v75)
        {
          for (i = 0; i != v75; ++i)
          {
            v79 = (v61 + 16 * i);
            if ((v79[2] | (v79[2] << 32)) == (DWORD2(v175) | (DWORD2(v175) << 32)))
            {
              v80 = *v79;
              v81 = *(*v79 + 16);
              if (v81 == *(v175 + 16))
              {
                if (!v81 || v80 == v175)
                {
LABEL_40:
                  LODWORD(v164) = DWORD1(v179);
                  v77 = 0;
                  goto LABEL_41;
                }

                v82 = (v80 + 32);
                v83 = (v175 + 32);
                while (*v82 == *v83)
                {
                  ++v82;
                  ++v83;
                  if (!--v81)
                  {
                    goto LABEL_40;
                  }
                }
              }
            }
          }
        }

        if (v163 > 7)
        {
          goto LABEL_25;
        }

        LODWORD(v164) = v73;
        v75 = *(v59 + 16);
        v77 = 1;
        if (!v50)
        {
LABEL_41:
          if (!v75)
          {
            goto LABEL_58;
          }

          v84 = 0;
          while (1)
          {
            v85 = (v61 + 16 * v84);
            if ((v85[2] | (v85[2] << 32)) == (v72 | (v72 << 32)))
            {
              v86 = *v85;
              v87 = *(*v85 + 16);
              if (v87 == *(v71 + 16))
              {
                break;
              }
            }

LABEL_43:
            if (++v84 == v75)
            {
              goto LABEL_58;
            }
          }

          if (v87)
          {
            v88 = v86 == v71;
          }

          else
          {
            v88 = 1;
          }

          if (!v88)
          {
            v89 = (v86 + 32);
            v90 = (v71 + 32);
            while (v87)
            {
              if (*v89 != *v90)
              {
                goto LABEL_43;
              }

              ++v89;
              ++v90;
              if (!--v87)
              {
                goto LABEL_60;
              }
            }

            goto LABEL_116;
          }

          goto LABEL_60;
        }

LABEL_57:
        v91 = sub_10015C0B4(v71, v72, v61, v75, (v50 + 16), v50 + 32);
        if (v92)
        {
LABEL_58:
          sub_10000E08C(&v174, &v172);
          v93 = 63740;
          goto LABEL_62;
        }

        v84 = v91;

        if ((v84 & 0x8000000000000000) != 0)
        {
          goto LABEL_118;
        }

LABEL_60:
        if (v84 >= *(v162 + 16))
        {
          goto LABEL_119;
        }

        v93 = *(v161 + 2 * v84);
        sub_10000E08C(&v174, &v172);

LABEL_62:
        v94 = BYTE12(v180);
        v95 = *(*(&v182 + 1) + 16);
        v96 = *(v183 + 16) != 0;
        v97 = *(*(&v183 + 1) + 16) != 0;
        if (v74)
        {
          if (v95 == 0 && *(v183 + 16) == 0 && *(*(&v183 + 1) + 16) == 0)
          {
            if ((v77 & 1) == 0)
            {
              LODWORD(v164) = v77;
              v98 = __OFADD__(v163++, 1);
              if (v98)
              {
                goto LABEL_121;
              }

              v96 = 0;
              v97 = 0;
              v149 = 0;
LABEL_78:
              v145 = v93;
              v146 = *(&v182 + 1);
              v147 = v94;
              v148 = v182;
              v142 = DWORD2(v180);
              v143 = *(&v181 + 1);
              v101 = 0;
              v100 = 0xE000000000000000;
              goto LABEL_79;
            }

            goto LABEL_24;
          }

          goto LABEL_74;
        }

        if (BYTE12(v180))
        {
          if (v95 == 0 && *(v183 + 16) == 0 && *(*(&v183 + 1) + 16) == 0)
          {
            if (!v77)
            {
              LODWORD(v164) = 0;
              v98 = __OFADD__(v163++, 1);
              if (v98)
              {
                goto LABEL_122;
              }

              v96 = 0;
              v97 = 0;
              v94 = 1;
              v149 = 1;
              goto LABEL_78;
            }

            goto LABEL_24;
          }

          v94 = 1;
LABEL_74:
          v99 = v74 ^ 1;
LABEL_75:
          v98 = __OFADD__(v163++, 1);
          if (v98)
          {
            goto LABEL_120;
          }

          LODWORD(v164) = v77;
          v149 = v99;
          if (!v95)
          {
            goto LABEL_78;
          }

          v145 = v93;
          v146 = *(&v182 + 1);
          v147 = v94;
          v148 = v182;
          v142 = DWORD2(v180);
          v143 = *(&v181 + 1);
          v100 = 0xE100000000000000;
          v101 = 82;
LABEL_79:
          v102 = !v96;
          v103 = 68;
          if (v102)
          {
            v103 = 0;
          }

          v150 = v103;
          if (v102)
          {
            v104 = 0xE000000000000000;
          }

          else
          {
            v104 = 0xE100000000000000;
          }

          v172 = v101;
          v173 = v100;

          v187._countAndFlagsBits = v150;
          v187._object = v104;
          sub_1004A5994(v187);

          v105 = 83;
          if (!v97)
          {
            v105 = 0;
          }

          v150 = v105;
          if (v97)
          {
            v106 = 0xE100000000000000;
          }

          else
          {
            v106 = 0xE000000000000000;
          }

          v188._countAndFlagsBits = v150;
          v188._object = v106;
          sub_1004A5994(v188);

          v107 = 76;
          if (v149)
          {
            v107 = 0;
          }

          v150 = v107;
          if (v149)
          {
            v108 = 0xE000000000000000;
          }

          else
          {
            v108 = 0xE100000000000000;
          }

          v109 = 0xE100000000000000;

          v189._countAndFlagsBits = v150;
          v189._object = v108;
          sub_1004A5994(v189);

          if (v164)
          {
            v110 = 0;
          }

          else
          {
            v110 = 42;
          }

          if (v164)
          {
            v109 = 0xE000000000000000;
          }

          v190._countAndFlagsBits = v110;
          v190._object = v109;
          sub_1004A5994(v190);

          v111 = v173;
          v164 = v172;
          v112 = v160;
          v113 = v154;
          sub_1001669C8(v160 + v157, v154, type metadata accessor for State.Logger);
          v114 = v155;
          sub_1001669C8(v112, v155, type metadata accessor for StateWithTasks);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          sub_10000E08C(&v174, &v172);
          sub_10000E08C(&v174, &v172);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          sub_10000E08C(&v174, &v172);

          v115 = sub_1004A4A54();
          (v152)(v113, v153);
          v116 = sub_1004A6034();

          sub_10000E0E8(&v174);
          sub_10000E0E8(&v174);
          if (os_log_type_enabled(v115, v116))
          {
            v149 = v116;
            v150 = v115;
            v117 = swift_slowAlloc();
            v118 = swift_slowAlloc();
            v141[0] = v111;
            v141[1] = v118;
            v171 = v118;
            *v117 = v144;
            *(v117 + 4) = 2;
            *(v117 + 8) = 256;
            v119 = *(v114 + *(v159 + 28) + *(v156 + 20));
            sub_100166900(v114, type metadata accessor for StateWithTasks);
            *(v117 + 10) = v119;
            *(v117 + 11) = 2048;
            *(v117 + 13) = v163;
            *(v117 + 21) = 1040;
            *(v117 + 23) = 2;
            *(v117 + 27) = 512;
            *(v117 + 29) = WORD6(v184);
            sub_10000E0E8(&v174);
            *(v117 + 31) = 2160;
            *(v117 + 33) = 0x786F626C69616DLL;
            *(v117 + 41) = 2085;
            v172 = v71;
            LODWORD(v173) = v72;

            v120 = sub_1004A5824();
            v122 = sub_10015BA6C(v120, v121, &v171);

            *(v117 + 43) = v122;
            *(v117 + 51) = 2082;
            v123 = sub_10015BA6C(v164, v141[0], &v171);

            *(v117 + 53) = v123;
            *(v117 + 61) = 2082;
            if ((~v145 & 0xF8FC) != 0)
            {
              v125 = sub_100186D4C(v145);
              v124 = v126;
            }

            else
            {
              v124 = 0xE100000000000000;
              v125 = 47;
            }

            v127 = sub_10015BA6C(v125, v124, &v171);

            *(v117 + 63) = v127;
            *(v117 + 71) = 2082;
            v128 = v158;
            v129 = sub_1001552FC(v146);
            v158 = v128;
            v172 = v129;
            sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
            sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770, &protocol conformance descriptor for [A]);
            v130 = 0xE100000000000000;
            v131 = sub_1004A5614();
            v133 = v132;

            v134 = sub_10015BA6C(v131, v133, &v171);

            *(v117 + 73) = v134;
            *(v117 + 81) = 2082;
            if (v147)
            {
              v135 = 47;
            }

            else
            {
              v172 = 0;
              v173 = 0xE000000000000000;
              v170[0] = v142;
              sub_1004A6934();
              v135 = v172;
              v130 = v173;
            }

            v136 = sub_10015BA6C(v135, v130, &v171);

            *(v117 + 83) = v136;
            *(v117 + 91) = 2082;
            if (v148)
            {
              v137 = 0xE100000000000000;
              v138 = 47;
            }

            else
            {
              v172 = v143;
              v138 = sub_1004A6CE4();
              v137 = v139;
            }

            v140 = sub_10015BA6C(v138, v137, &v171);

            *(v117 + 93) = v140;
            v115 = v150;
            _os_log_impl(&_mh_execute_header, v150, v149, "[%.*hhx] {%ld} [1st connection] Mailbox: {%.*hx} '%{sensitive,mask.mailbox}s' %{public}s, %{public}s, {%{public}s} last sync:  {local: %{public}s, remote: %{public}s}", v117, 0x65u);
            swift_arrayDestroy();
          }

          else
          {
            sub_100166900(v114, type metadata accessor for StateWithTasks);
            sub_10000E0E8(&v174);
          }

          sub_10000E0E8(&v174);
          v61 = v165;
          v59 = v166;
          if (v60 == v168)
          {
            break;
          }
        }

        else
        {
          if (v95 != 0 || *(v183 + 16) != 0 || *(*(&v183 + 1) + 16) != 0 || (v77 & 1) == 0)
          {
            v94 = 0;
            v99 = DWORD2(v180) < v164;
            goto LABEL_75;
          }

LABEL_24:
          sub_10000E0E8(&v174);
          v61 = v165;
          v59 = v166;
LABEL_25:
          if (v60 == v168)
          {
            break;
          }
        }
      }
    }
  }
}

void *StateWithTasks.selectedMailboxes.getter()
{
  result = _swiftEmptySetSingleton;
  if (*(v0 + 192) == 1)
  {
    v2 = *(v0 + 168);
    v10 = _swiftEmptySetSingleton;
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = (v2 + 128);
      v5 = v4;
      do
      {
        v6 = *v5;
        v5 += 22;
        if (v6)
        {
          v7 = *(v4 - 18);
          v8 = *(v4 - 10);

          sub_100088220(&v9, v8, v7);
        }

        v4 = v5;
        --v3;
      }

      while (v3);
      return v10;
    }
  }

  return result;
}

void StateWithTasks.failOldBackgroundSyncRequests()(uint64_t a1)
{
  v1 = static MonotonicTime.now()();

  sub_10013270C(v1);
}

Swift::Void __swiftcall StateWithTasks.logSyncRequests()()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = type metadata accessor for StateWithTasks(0);
  sub_100132E80(v3, v1, v2, v0 + *(v4 + 28));
}

Swift::Void __swiftcall StateWithTasks.logLongRunningSyncRequests(now:)(IMAP2Helpers::MonotonicTime now)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = type metadata accessor for StateWithTasks(0);
  sub_100134318(now.rawValue, v1 + *(v3 + 28));
}

Swift::Void __swiftcall StateWithTasks.logLongRunningTasks(now:)(IMAP2Helpers::MonotonicTime now)
{
  v2 = v1;
  v4 = type metadata accessor for RunningTask(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 272);
  v9 = type metadata accessor for StateWithTasks(0);
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = *(v9 + 28);
    v12 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      sub_1001669C8(v12, v7, type metadata accessor for RunningTask);
      sub_1001178C8(now.rawValue, v2 + v11);
      sub_100166900(v7, type metadata accessor for RunningTask);
      v12 += v13;
      --v10;
    }

    while (v10);
  }
}

void sub_10015B320(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10015B638(a1, a2, a3, a4, a5, a6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v8 + 1;
    v10 = 1 - v8;
    v11 = (v7 + 48);
    v12 = 0.0;
    while (1)
    {
      if (*v11)
      {
        v12 = v12 + 1.0;
        if (!v10)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v13 = *(v11 - 1);
        v14 = __OFSUB__(v9, v13);
        v15 = v9 - v13;
        if (v14)
        {
          goto LABEL_24;
        }

        v12 = v12 + v15;
        if (!v10)
        {
LABEL_8:
          v26 = v7;
          sub_100092348(0, v8, 0);
          v16 = (v26 + 56);
          do
          {
            v18 = *(v16 - 3);
            v17 = *(v16 - 2);
            v19 = *v16;
            if (*v16 <= a1)
            {
              v20 = a1 - v19;
              if (__OFSUB__(a1, v19))
              {
                goto LABEL_26;
              }
            }

            else
            {
              if (__OFSUB__(*v16, a1))
              {
                goto LABEL_25;
              }

              v20 = a1 - *v16;
              if (__OFSUB__(0, *v16 - a1))
              {
                goto LABEL_27;
              }
            }

            v21 = 5.0;
            if ((*(v16 - 1) & 1) == 0)
            {
              v14 = __OFSUB__(v9, v17);
              v22 = v9 - v17;
              if (v14)
              {
                goto LABEL_28;
              }

              v21 = v22 * 5.0;
            }

            v24 = _swiftEmptyArrayStorage[2];
            v23 = _swiftEmptyArrayStorage[3];
            if (v24 >= v23 >> 1)
            {
              sub_100092348((v23 > 1), v24 + 1, 1);
            }

            v16 += 4;
            _swiftEmptyArrayStorage[2] = v24 + 1;
            v25 = &_swiftEmptyArrayStorage[2 * v24];
            *(v25 + 4) = v18;
            v25[5] = v20 / 1000000000.0 + v21 / v12;
            --v8;
          }

          while (v8);
          break;
        }
      }

      ++v10;
      v11 += 32;
      if (v10 == 1)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }
    }
  }
}

Swift::Int sub_10015B4E8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001399BC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1004A6CC4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1004A5C64();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_10015CD78(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

void sub_10015B638(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a5;
  v52 = a3;
  v53 = a4;
  v50 = a1;
  v56 = type metadata accessor for RunningTask(0);
  v8 = *(v56 - 8);
  __chkstk_darwin(v56);
  v51 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C9C0(&qword_1005D1DA8, &qword_1004D92B8);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v57 = &v43 - v14;
  v63 = _swiftEmptyArrayStorage;
  sub_100092368(0, 0, 0);
  v15 = 0;
  v16 = 0;
  v17 = v63;
  v44 = v8;
  v45 = a2;
  v18 = *(a2 + 16);
  v54 = (v8 + 48);
  v55 = (v8 + 56);
  v48 = a6;
  v49 = v18;
  v46 = a6 + 32;
  v19 = v18 == 0;
  if (v18)
  {
    goto LABEL_3;
  }

LABEL_2:
  v20 = 1;
  v16 = v18;
  while (1)
  {
    v22 = v56;
    v23 = v57;
    (*v55)(v57, v20, 1, v56);
    sub_100025FDC(v23, v12, &qword_1005D1DA8, &qword_1004D92B8);
    if ((*v54)(v12, 1, v22) == 1)
    {
      break;
    }

    v24 = v51;
    sub_10016680C(v12, v51, type metadata accessor for RunningTask);
    v52(&v59, v24);
    sub_100166900(v24, type metadata accessor for RunningTask);
    v25 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_37;
    }

    v58 = v15;
    v26 = v12;
    v27 = v61;
    v28 = v62;
    if (v59)
    {
      v29 = *(v48 + 16);
      if (v47)
      {
        v30 = sub_10015C0B4(v59, v60, v46, v29, (v47 + 16), v47 + 32);
        v32 = v31;

        if ((v32 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v29)
        {
          v30 = 0;
          while (1)
          {
            v33 = (v46 + 16 * v30);
            if ((v33[2] | (v33[2] << 32)) == (v60 | (v60 << 32)))
            {
              v34 = *v33;
              v35 = *(*v33 + 16);
              if (v35 == *(v59 + 16))
              {
                break;
              }
            }

LABEL_14:
            if (++v30 == v29)
            {
              goto LABEL_27;
            }
          }

          if (v35)
          {
            v36 = v34 == v59;
          }

          else
          {
            v36 = 1;
          }

          if (!v36)
          {
            v37 = (v34 + 32);
            v38 = (v59 + 32);
            while (v35)
            {
              if (*v37 != *v38)
              {
                goto LABEL_14;
              }

              ++v37;
              ++v38;
              if (!--v35)
              {
                goto LABEL_25;
              }
            }

            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            return;
          }

LABEL_25:

LABEL_26:
          v39 = 0;
          goto LABEL_29;
        }

LABEL_27:
      }
    }

    v30 = 0;
    v39 = 1;
LABEL_29:
    if (v28)
    {
      v27 = v50;
    }

    v63 = v17;
    v41 = v17[2];
    v40 = v17[3];
    if (v41 >= v40 >> 1)
    {
      sub_100092368((v40 > 1), v41 + 1, 1);
      v17 = v63;
    }

    v17[2] = v41 + 1;
    v42 = &v17[4 * v41];
    v42[4] = v58;
    v42[5] = v30;
    *(v42 + 48) = v39;
    v42[7] = v27;
    v15 = v25;
    v12 = v26;
    v18 = v49;
    v19 = v16 >= v49;
    if (v16 == v49)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v19)
    {
      goto LABEL_38;
    }

    sub_1001669C8(v45 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v16, v57, type metadata accessor for RunningTask);
    if (__OFADD__(v16++, 1))
    {
      goto LABEL_39;
    }

    v20 = 0;
  }
}

unint64_t sub_10015BA6C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10015BB38(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_1001659C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000197E0(v11);
  return v7;
}

unint64_t sub_10015BB38(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10015BC44(a5, a6);
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
    result = sub_1004A67E4();
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

void *sub_10015BC44(uint64_t a1, unint64_t a2)
{
  v3 = sub_10015BC90(a1, a2);
  sub_10015BDC0(&off_1005986D8);
  return v3;
}

void *sub_10015BC90(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10015BEAC(v5, 0);
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

  result = sub_1004A67E4();
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
        v10 = sub_1004A59E4();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10015BEAC(v10, 0);
        result = sub_1004A66D4();
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

uint64_t sub_10015BDC0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_10015BF20(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10015BEAC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10015BF20(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10015C014(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    for (result = 0; result != a4; ++result)
    {
      v6 = (a3 + 16 * result);
      if ((v6[2] | (v6[2] << 32)) == (a2 | (a2 << 32)))
      {
        v7 = *v6;
        v8 = *(*v6 + 16);
        if (v8 == *(a1 + 16))
        {
          if (!v8 || v7 == a1)
          {
            return result;
          }

          v9 = (v7 + 32);
          for (i = (a1 + 32); *v9 == *i; ++i)
          {
            ++v9;
            if (!--v8)
            {
              return result;
            }
          }
        }
      }
    }
  }

  return 0;
}

Swift::Int sub_10015C0B4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_1004A6E94();
  v10 = a2 | (a2 << 32);
  sub_1004A6EB4(v10);
  result = sub_1004A6F14();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1004A46F4();
    result = sub_1004A4724();
    if ((v12 & 1) == 0)
    {
      do
      {
        v14 = (a3 + 16 * result);
        if ((v14[2] | (v14[2] << 32)) == v10)
        {
          v15 = *v14;
          v16 = *(*v14 + 16);
          if (v16 == *(a1 + 16))
          {
            if (!v16 || v15 == a1)
            {
              return result;
            }

            v17 = (v15 + 32);
            for (i = (a1 + 32); *v17 == *i; ++i)
            {
              ++v17;
              if (!--v16)
              {
                return result;
              }
            }
          }
        }

        sub_1004A4744();
        result = sub_1004A4724();
      }

      while ((v13 & 1) == 0);
    }
  }

  return result;
}

Swift::Int sub_10015C224(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a1;
  sub_1004A6E94();
  sub_1004A6EE4(v7);
  result = sub_1004A6F14();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1004A46F4();
    result = sub_1004A4724();
    if ((v9 & 1) == 0 && *(a2 + 4 * result) != v7)
    {
      do
      {
        sub_1004A4744();
        result = sub_1004A4724();
      }

      while ((v10 & 1) == 0 && *(a2 + 4 * result) != v7);
    }
  }

  return result;
}

void sub_10015C338(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = _s19UserInitiatedSearchVMa(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v16 = *v2;
  v17 = sub_100154DA4(a1, a2, *v2, _s19UserInitiatedSearchVMa);
  if (!v3)
  {
    if (v18)
    {
      v40 = *(v16 + 16);
      return;
    }

    v36 = v15;
    v37 = a1;
    v33 = v12;
    v34 = v9;
    v38 = a2;
    v32 = v2;
    v40 = v17;
    v19 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return;
      }

      v35 = v7;
      while (v19 < v20)
      {
        v22 = v16;
        v39 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v39;
        v24 = *(v7 + 72);
        v25 = v36;
        sub_1001669C8(v23 + v24 * v19, v36, _s19UserInitiatedSearchVMa);
        v26 = v37(v25);
        sub_100166900(v25, _s19UserInitiatedSearchVMa);
        if (v26)
        {
          v7 = v35;
          v16 = v22;
        }

        else
        {
          v27 = v40;
          if (v19 == v40)
          {
            v7 = v35;
            v16 = v22;
          }

          else
          {
            if ((v40 & 0x8000000000000000) != 0)
            {
              goto LABEL_23;
            }

            v28 = *v21;
            if (v40 >= *v21)
            {
              goto LABEL_24;
            }

            v29 = v24 * v40;
            sub_1001669C8(v23 + v24 * v40, v33, _s19UserInitiatedSearchVMa);
            if (v19 >= v28)
            {
              goto LABEL_25;
            }

            v30 = v24 * v19;
            sub_1001669C8(v23 + v24 * v19, v34, _s19UserInitiatedSearchVMa);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_1001398CC(v22);
            }

            v7 = v35;
            v31 = v16 + v39;
            sub_100166960(v34, v16 + v39 + v29, _s19UserInitiatedSearchVMa);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_26;
            }

            sub_100166960(v33, v31 + v30, _s19UserInitiatedSearchVMa);
            *v32 = v16;
            v27 = v40;
          }

          v40 = v27 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
    }

    __break(1u);
  }
}

void sub_10015C69C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for RunningTask(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v16 = *v2;
  v17 = sub_100154DA4(a1, a2, *v2, type metadata accessor for RunningTask);
  if (!v3)
  {
    if (v18)
    {
      v40 = *(v16 + 16);
      return;
    }

    v36 = v15;
    v37 = a1;
    v33 = v12;
    v34 = v9;
    v38 = a2;
    v32 = v2;
    v40 = v17;
    v19 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return;
      }

      v35 = v7;
      while (v19 < v20)
      {
        v22 = v16;
        v39 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v39;
        v24 = *(v7 + 72);
        v25 = v36;
        sub_1001669C8(v23 + v24 * v19, v36, type metadata accessor for RunningTask);
        v26 = v37(v25);
        sub_100166900(v25, type metadata accessor for RunningTask);
        if (v26)
        {
          v7 = v35;
          v16 = v22;
        }

        else
        {
          v27 = v40;
          if (v19 == v40)
          {
            v7 = v35;
            v16 = v22;
          }

          else
          {
            if ((v40 & 0x8000000000000000) != 0)
            {
              goto LABEL_23;
            }

            v28 = *v21;
            if (v40 >= *v21)
            {
              goto LABEL_24;
            }

            v29 = v24 * v40;
            sub_1001669C8(v23 + v24 * v40, v33, type metadata accessor for RunningTask);
            if (v19 >= v28)
            {
              goto LABEL_25;
            }

            v30 = v24 * v19;
            sub_1001669C8(v23 + v24 * v19, v34, type metadata accessor for RunningTask);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_1001399D0(v22);
            }

            v7 = v35;
            v31 = v16 + v39;
            sub_100166960(v34, v16 + v39 + v29, type metadata accessor for RunningTask);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_26;
            }

            sub_100166960(v33, v31 + v30, type metadata accessor for RunningTask);
            *v32 = v16;
            v27 = v40;
          }

          v40 = v27 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
    }

    __break(1u);
  }
}

void sub_10015CA18(uint64_t a1, void (*a2)(void, __n128))
{
  if (*(*v2 + 16))
  {
    v5 = a1 + 56;
    v6 = 1 << *(a1 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(a1 + 56);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    if (v8)
    {
      while (1)
      {
        v11 = v10;
LABEL_10:
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        (a2)(*(*(a1 + 48) + ((v11 << 8) | (4 * v12))));
        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        return;
      }

      if (v11 >= v9)
      {
        break;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_10;
      }
    }
  }
}

void sub_10015CB24(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(a1 + 48) + ((v9 << 10) | (16 * v10)) + 8);

        sub_100140D50(v12, v11);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_10015CC4C(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(a1 + 48) + ((v9 << 10) | (16 * v10)) + 8);

        sub_100140EC0(v12, v11);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_10015CD78(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100141810(v8);
      v8 = result;
    }

    v81 = v8 + 2;
    v82 = v8[2];
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = &v8[2 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_10015D30C((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v35 = v8[3];
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_100085288((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v36;
    v37 = v8 + 4;
    v38 = &v8[2 * v5 + 4];
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = v8[4];
          v40 = v8[5];
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = &v8[2 * v36];
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = &v37[2 * v5];
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = &v8[2 * v36];
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = &v37[2 * v5];
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = &v37[2 * v5 - 2];
        v77 = *v76;
        v78 = &v37[2 * v5];
        v79 = v78[1];
        sub_10015D30C((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = v8[2];
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove(&v37[2 * v5], v78 + 2, 16 * (v80 - 1 - v5));
        v8[2] = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = &v37[2 * v36];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = &v8[2 * v36];
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = &v37[2 * v5];
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_10015D30C(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[1] < v6[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

void *sub_10015D510(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (!*(a2 + 16))
  {

    return _swiftEmptySetSingleton;
  }

  v176 = 0;
  v6 = a1 + 64;
  v5 = *(a1 + 64);
  v7 = -1;
  v8 = -1 << *(a1 + 32);
  v181 = ~v8;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v5;
  v11 = (63 - v8) >> 6;
  v191 = (a2 + 56);
  v13 = v200;
  v12 = v201;

  v16 = 0;
  v187 = v4;
  v180 = v6;
  v178 = v11;
  v179 = v14;
  if (!v10)
  {
LABEL_6:
    v17 = v16;
    do
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_317;
      }

      if (v18 >= v11)
      {
        v200 = v13;
        v201 = v12;
        goto LABEL_313;
      }

      v10 = *(v6 + 8 * v18);
      ++v17;
    }

    while (!v10);
    v16 = v18;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v20 = (*(v14 + 48) + ((v16 << 10) | (16 * v19)));
    v22 = *v20;
    v21 = v20[1];
    v184 = v16;
    v202 = v16;
    v203 = v10;
    sub_1004A6E94();
    sub_100014CEC(v22, v21);
    v189 = v22;
    v190 = v21;
    sub_1004A4424();
    v13 = __s1;
    v23 = sub_1004A6F14();
    v24 = -1 << *(v4 + 32);
    v3 = v23 & ~v24;
    v11 = v3 >> 6;
    v25 = v191;
    v7 = 1;
    v2 = 1 << v3;
    if (((1 << v3) & v191[v3 >> 6]) != 0)
    {
      break;
    }

LABEL_155:
    sub_100014D40(v189, v190);
    v12 = v181;
    v6 = v180;
    v13 = v180;
    v14 = v179;
    v16 = v184;
    v11 = v178;
    v7 = -1;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  v26 = ~v24;
  v27 = v190 >> 62;
  if (v189)
  {
    v28 = 0;
  }

  else
  {
    v28 = v190 == 0xC000000000000000;
  }

  v29 = !v28;
  v186 = v29;
  v175 = HIDWORD(v189);
  v30 = __OFSUB__(HIDWORD(v189), v189);
  v183 = v30;
  v182 = HIDWORD(v189) - v189;
  v188 = BYTE6(v190);
  v177 = v189;
  v174 = v189 >> 32;
  v173 = (v189 >> 32) - v189;
  v185 = v26;
  while (1)
  {
    v31 = (*(v4 + 48) + 16 * v3);
    v6 = *v31;
    v32 = v31[1];
    v33 = v32 >> 62;
    if (v32 >> 62 == 3)
    {
      if (v6)
      {
        v34 = 0;
      }

      else
      {
        v34 = v32 == 0xC000000000000000;
      }

      v36 = !v34 || v190 >> 62 != 3;
      if (((v36 | v186) & 1) == 0)
      {
        v6 = v180;
        v200 = v180;
        v201 = v181;
        v7 = v179;
        v199 = v179;
        v82 = 0;
        v83 = 0xC000000000000000;
LABEL_160:
        v84 = sub_100014D40(v82, v83);
        goto LABEL_161;
      }

LABEL_46:
      v37 = 0;
      if (v27 <= 1)
      {
        goto LABEL_43;
      }

      goto LABEL_47;
    }

    if (v33 > 1)
    {
      if (v33 != 2)
      {
        goto LABEL_46;
      }

      v39 = *(v6 + 16);
      v38 = *(v6 + 24);
      v40 = __OFSUB__(v38, v39);
      v37 = v38 - v39;
      if (v40)
      {
        goto LABEL_326;
      }

      if (v27 <= 1)
      {
        goto LABEL_43;
      }
    }

    else if (v33)
    {
      LODWORD(v37) = HIDWORD(v6) - v6;
      if (__OFSUB__(HIDWORD(v6), v6))
      {
        goto LABEL_325;
      }

      v37 = v37;
      if (v27 <= 1)
      {
LABEL_43:
        v41 = v188;
        if (v27)
        {
          v41 = v182;
          if (v183)
          {
            goto LABEL_321;
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
      v37 = BYTE6(v32);
      if (v27 <= 1)
      {
        goto LABEL_43;
      }
    }

LABEL_47:
    if (v27 != 2)
    {
      if (!v37)
      {
        goto LABEL_158;
      }

      goto LABEL_23;
    }

    v43 = *(v189 + 16);
    v42 = *(v189 + 24);
    v40 = __OFSUB__(v42, v43);
    v41 = v42 - v43;
    if (v40)
    {
      goto LABEL_320;
    }

LABEL_49:
    if (v37 != v41)
    {
      goto LABEL_23;
    }

    if (v37 < 1)
    {
      goto LABEL_158;
    }

    if (v33 > 1)
    {
      break;
    }

    if (v33)
    {
      v7 = v6;
      if (v6 > v6 >> 32)
      {
        goto LABEL_327;
      }

      sub_100014CEC(v6, v32);
      v50 = sub_1004A40D4();
      if (v50)
      {
        v4 = v50;
        v51 = sub_1004A4104();
        if (__OFSUB__(v6, v51))
        {
          goto LABEL_331;
        }

        v172 = v6 - v51 + v4;
      }

      else
      {
        v172 = 0;
      }

      v13 = v32 & 0x3FFFFFFFFFFFFFFFLL;
      sub_1004A40F4();
      v4 = v187;
      v7 = 1;
      if (v27 == 2)
      {
        v72 = *(v189 + 24);
        v171 = *(v189 + 16);
        v170 = v72;
        v13 = v190 & 0x3FFFFFFFFFFFFFFFLL;
        v4 = sub_1004A40D4();
        if (v4)
        {
          v13 = v190 & 0x3FFFFFFFFFFFFFFFLL;
          v73 = sub_1004A4104();
          v74 = v171;
          if (__OFSUB__(v171, v73))
          {
            goto LABEL_359;
          }

          v4 += v171 - v73;
        }

        else
        {
          v74 = v171;
        }

        v80 = v170 - v74;
        if (__OFSUB__(v170, v74))
        {
          goto LABEL_348;
        }

        v13 = v190 & 0x3FFFFFFFFFFFFFFFLL;
        v81 = sub_1004A40F4();
        if (v81 >= v80)
        {
          v58 = v80;
        }

        else
        {
          v58 = v81;
        }

        v59 = v172;
        if (!v172)
        {
          goto LABEL_376;
        }

        v7 = 1;
        if (!v4)
        {
          goto LABEL_375;
        }
      }

      else
      {
        if (v27 != 1)
        {
          v71 = v172;
          LODWORD(__s1[0]) = v189;
          BYTE4(__s1[0]) = v175;
          *(__s1 + 5) = *(&v189 + 5);
          HIBYTE(__s1[0]) = HIBYTE(v189);
          LODWORD(__s1[1]) = v190;
          WORD2(__s1[1]) = WORD2(v190);
          if (!v172)
          {
            goto LABEL_383;
          }

          goto LABEL_123;
        }

        if (v174 < v177)
        {
          goto LABEL_347;
        }

        v4 = sub_1004A40D4();
        if (v4)
        {
          v60 = sub_1004A4104();
          if (__OFSUB__(v177, v60))
          {
            goto LABEL_361;
          }

          v4 += v177 - v60;
        }

        v7 = 1;
        v13 = v190 & 0x3FFFFFFFFFFFFFFFLL;
        v61 = sub_1004A40F4();
        v58 = v173;
        if (v61 < v173)
        {
          v58 = v61;
        }

        v59 = v172;
        if (!v172)
        {
          goto LABEL_387;
        }

        if (!v4)
        {
          goto LABEL_386;
        }
      }

      goto LABEL_150;
    }

    __s1[0] = v6;
    LOWORD(__s1[1]) = v32;
    BYTE2(__s1[1]) = BYTE2(v32);
    BYTE3(__s1[1]) = BYTE3(v32);
    BYTE4(__s1[1]) = BYTE4(v32);
    BYTE5(__s1[1]) = BYTE5(v32);
    if (!v27)
    {
      goto LABEL_76;
    }

    if (v27 != 1)
    {
      v62 = *(v189 + 24);
      v172 = *(v189 + 16);
      v171 = v62;
      sub_100014CEC(v6, v32);
      v13 = v190 & 0x3FFFFFFFFFFFFFFFLL;
      v4 = sub_1004A40D4();
      if (v4)
      {
        v13 = v190 & 0x3FFFFFFFFFFFFFFFLL;
        v63 = sub_1004A4104();
        v64 = v172;
        if (__OFSUB__(v172, v63))
        {
          v200 = v180;
          v201 = v181;
          __break(1u);
LABEL_357:
          v200 = v180;
          v201 = v181;
          __break(1u);
LABEL_358:
          v200 = v180;
          v201 = v181;
          __break(1u);
LABEL_359:
          v200 = v180;
          v201 = v181;
          __break(1u);
LABEL_360:
          v200 = v180;
          v201 = v181;
          __break(1u);
LABEL_361:
          v200 = v180;
          v201 = v181;
          __break(1u);
LABEL_362:
          __break(1u);
        }

        v4 += v172 - v63;
      }

      else
      {
        v64 = v172;
      }

      v75 = v171 - v64;
      if (__OFSUB__(v171, v64))
      {
        goto LABEL_343;
      }

      v76 = sub_1004A40F4();
      if (!v4)
      {
        goto LABEL_379;
      }

LABEL_131:
      if (v76 >= v75)
      {
        v77 = v75;
      }

      else
      {
        v77 = v76;
      }

      v13 = memcmp(__s1, v4, v77);
      sub_100014D40(v6, v32);
      v4 = v187;
      v25 = v191;
      v7 = 1;
LABEL_153:
      v26 = v185;
      if (!v13)
      {
        goto LABEL_158;
      }

      goto LABEL_23;
    }

    if (v174 < v177)
    {
      goto LABEL_340;
    }

    sub_100014CEC(v6, v32);
    v44 = sub_1004A40D4();
    if (!v44)
    {
      goto LABEL_377;
    }

    v4 = v44;
    v13 = v190 & 0x3FFFFFFFFFFFFFFFLL;
    v45 = sub_1004A4104();
    if (__OFSUB__(v177, v45))
    {
      goto LABEL_345;
    }

    v46 = (v177 - v45 + v4);
    v47 = sub_1004A40F4();
    if (!v46)
    {
      goto LABEL_378;
    }

LABEL_109:
    if (v47 >= v173)
    {
      v67 = v173;
    }

    else
    {
      v67 = v47;
    }

    v13 = memcmp(__s1, v46, v67);
    sub_100014D40(v6, v32);
    v4 = v187;
    v25 = v191;
    v26 = v185;
    v7 = 1;
    if (!v13)
    {
LABEL_158:
      v6 = v180;
      v200 = v180;
      v201 = v181;
      v7 = v179;
      v199 = v179;
      v82 = v189;
      v83 = v190;
      goto LABEL_160;
    }

LABEL_23:
    v3 = (v3 + 1) & v26;
    v11 = v3 >> 6;
    v2 = 1 << v3;
    if ((v25[v3 >> 6] & (1 << v3)) == 0)
    {
      goto LABEL_155;
    }
  }

  if (v33 != 2)
  {
    memset(__s1, 0, 14);
    if (!v27)
    {
LABEL_76:
      __s2 = v189;
      v193 = v175;
      v194 = *(&v189 + 5);
      v195 = HIBYTE(v189);
      v196 = v190;
      v197 = WORD2(v190);
      v55 = memcmp(__s1, &__s2, v188);
      v26 = v185;
      v25 = v191;
      if (!v55)
      {
        goto LABEL_158;
      }

      goto LABEL_23;
    }

    if (v27 == 2)
    {
      v52 = *(v189 + 24);
      v172 = *(v189 + 16);
      v171 = v52;
      sub_100014CEC(v6, v32);
      v13 = v190 & 0x3FFFFFFFFFFFFFFFLL;
      v4 = sub_1004A40D4();
      if (v4)
      {
        v13 = v190 & 0x3FFFFFFFFFFFFFFFLL;
        v53 = sub_1004A4104();
        v54 = v172;
        if (__OFSUB__(v172, v53))
        {
          goto LABEL_357;
        }

        v4 += v172 - v53;
      }

      else
      {
        v54 = v172;
      }

      v75 = v171 - v54;
      if (__OFSUB__(v171, v54))
      {
        goto LABEL_342;
      }

      v76 = sub_1004A40F4();
      if (!v4)
      {
        goto LABEL_381;
      }

      goto LABEL_131;
    }

    if (v174 < v177)
    {
      goto LABEL_339;
    }

    sub_100014CEC(v6, v32);
    v65 = sub_1004A40D4();
    if (!v65)
    {
      goto LABEL_380;
    }

    v4 = v65;
    v13 = v190 & 0x3FFFFFFFFFFFFFFFLL;
    v66 = sub_1004A4104();
    if (__OFSUB__(v177, v66))
    {
      goto LABEL_344;
    }

    v46 = (v177 - v66 + v4);
    v47 = sub_1004A40F4();
    if (!v46)
    {
      goto LABEL_382;
    }

    goto LABEL_109;
  }

  v7 = *(v6 + 16);
  sub_100014CEC(v6, v32);
  v48 = sub_1004A40D4();
  if (v48)
  {
    v4 = v48;
    v49 = sub_1004A4104();
    if (__OFSUB__(v7, v49))
    {
      goto LABEL_330;
    }

    v172 = v7 - v49 + v4;
  }

  else
  {
    v172 = 0;
  }

  v13 = v32 & 0x3FFFFFFFFFFFFFFFLL;
  sub_1004A40F4();
  v4 = v187;
  v7 = 1;
  if (v27 != 2)
  {
    if (v27 == 1)
    {
      if (v174 < v177)
      {
        goto LABEL_341;
      }

      v4 = sub_1004A40D4();
      if (v4)
      {
        v56 = sub_1004A4104();
        if (__OFSUB__(v177, v56))
        {
          goto LABEL_360;
        }

        v4 += v177 - v56;
      }

      v7 = 1;
      v13 = v190 & 0x3FFFFFFFFFFFFFFFLL;
      v57 = sub_1004A40F4();
      v58 = v173;
      if (v57 < v173)
      {
        v58 = v57;
      }

      v59 = v172;
      if (!v172)
      {
        goto LABEL_389;
      }

      if (!v4)
      {
        goto LABEL_388;
      }

      goto LABEL_150;
    }

    v71 = v172;
    LODWORD(__s1[0]) = v189;
    BYTE4(__s1[0]) = v175;
    *(__s1 + 5) = *(&v189 + 5);
    HIBYTE(__s1[0]) = HIBYTE(v189);
    LODWORD(__s1[1]) = v190;
    WORD2(__s1[1]) = WORD2(v190);
    if (!v172)
    {
      goto LABEL_374;
    }

LABEL_123:
    v13 = memcmp(v71, __s1, v188);
    sub_100014D40(v6, v32);
LABEL_152:
    v25 = v191;
    goto LABEL_153;
  }

  v68 = *(v189 + 24);
  v171 = *(v189 + 16);
  v170 = v68;
  v13 = v190 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = sub_1004A40D4();
  if (v4)
  {
    v13 = v190 & 0x3FFFFFFFFFFFFFFFLL;
    v69 = sub_1004A4104();
    v70 = v171;
    if (__OFSUB__(v171, v69))
    {
      goto LABEL_358;
    }

    v4 += v171 - v69;
  }

  else
  {
    v70 = v171;
  }

  v78 = v170 - v70;
  if (__OFSUB__(v170, v70))
  {
    goto LABEL_346;
  }

  v13 = v190 & 0x3FFFFFFFFFFFFFFFLL;
  v79 = sub_1004A40F4();
  if (v79 >= v78)
  {
    v58 = v78;
  }

  else
  {
    v58 = v79;
  }

  v59 = v172;
  if (!v172)
  {
    goto LABEL_385;
  }

  v7 = 1;
  if (!v4)
  {
    goto LABEL_384;
  }

LABEL_150:
  if (v59 != v4)
  {
    v13 = memcmp(v59, v4, v58);
    sub_100014D40(v6, v32);
    v4 = v187;
    goto LABEL_152;
  }

  v200 = v180;
  v201 = v181;
  v7 = v179;
  v199 = v179;
  sub_100014D40(v189, v190);
  v160 = v6;
  v6 = v180;
  v84 = sub_100014D40(v160, v32);
  v4 = v187;
LABEL_161:
  v85 = *(v4 + 32);
  v168 = ((1 << v85) + 63) >> 6;
  v15 = 8 * v168;
  if ((v85 & 0x3Fu) > 0xD)
  {
    goto LABEL_332;
  }

LABEL_162:
  v169 = &v165;
  __chkstk_darwin(v84);
  v87 = &v165 - ((v86 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v87, v191, v86);
  v88 = *&v87[8 * v11] & ~v2;
  v171 = v87;
  *&v87[8 * v11] = v88;
  v89 = *(v4 + 16) - 1;
  v12 = v184;
  v90 = v178;
  while (2)
  {
    v170 = v89;
    while (1)
    {
LABEL_165:
      if (v10)
      {
        goto LABEL_171;
      }

      v91 = v12;
      do
      {
        v92 = v91 + 1;
        if (__OFADD__(v91, 1))
        {
          __break(1u);
LABEL_317:
          v200 = v13;
          v201 = v12;
          __break(1u);
LABEL_318:
          __break(1u);
LABEL_319:
          __break(1u);
LABEL_320:
          v200 = v180;
          v201 = v181;
          __break(1u);
LABEL_321:
          v200 = v180;
          v201 = v181;
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
LABEL_325:
          v200 = v180;
          v201 = v181;
          __break(1u);
LABEL_326:
          v200 = v180;
          v201 = v181;
          __break(1u);
LABEL_327:
          v200 = v180;
          v201 = v181;
          __break(1u);
LABEL_328:
          __break(1u);
LABEL_329:
          __break(1u);
LABEL_330:
          v200 = v180;
          v201 = v181;
          __break(1u);
LABEL_331:
          v200 = v180;
          v201 = v181;
          __break(1u);
LABEL_332:
          v161 = v15;

          v13 = v161;
          if (!swift_stdlib_isStackAllocationSafe())
          {
            goto LABEL_354;
          }

          goto LABEL_162;
        }

        if (v92 >= v90)
        {
          v4 = sub_1001612E0(v171, v168, v170, v4);
          goto LABEL_312;
        }

        v10 = *(v6 + 8 * v92);
        ++v91;
      }

      while (!v10);
      v12 = v92;
LABEL_171:
      v93 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v94 = (*(v7 + 48) + ((v12 << 10) | (16 * v93)));
      v96 = *v94;
      v95 = v94[1];
      v199 = v7;
      v200 = v6;
      v97 = v96;
      v6 = v95;
      v201 = v181;
      v202 = v12;
      v184 = v12;
      v203 = v10;
      sub_1004A6E94();
      sub_100014CEC(v97, v6);
      sub_1004A4424();
      v13 = __s1;
      v98 = sub_1004A6F14();
      v99 = -1 << *(v4 + 32);
      v100 = v98 & ~v99;
      v11 = v100 >> 6;
      v101 = v191;
      v102 = v191[v100 >> 6];
      v2 = 1 << v100;
      v190 = v97;
      if (((1 << v100) & v102) != 0)
      {
        break;
      }

LABEL_164:
      sub_100014D40(v190, v6);
      v6 = v180;
      v7 = v179;
      v12 = v184;
      v90 = v178;
    }

    v103 = ~v99;
    v28 = v97 == 0;
    v104 = v97;
    v7 = v6 >> 62;
    v106 = !v28 || v6 != 0xC000000000000000;
    v186 = v106;
    v175 = HIDWORD(v104);
    v107 = __OFSUB__(HIDWORD(v104), v104);
    v183 = v107;
    v182 = HIDWORD(v104) - v104;
    v189 = BYTE6(v6);
    v177 = v104;
    v174 = v104 >> 32;
    v172 = (v104 >> 32) - v104;
    v188 = v6;
    v185 = v103;
    while (2)
    {
      v108 = (*(v4 + 48) + 16 * v100);
      v109 = *v108;
      v3 = v108[1];
      v110 = v3 >> 62;
      if (v3 >> 62 != 3)
      {
        if (v110 <= 1)
        {
          if (v110)
          {
            LODWORD(v114) = HIDWORD(v109) - v109;
            if (__OFSUB__(HIDWORD(v109), v109))
            {
              goto LABEL_323;
            }

            v114 = v114;
            if (v7 > 1)
            {
              goto LABEL_207;
            }
          }

          else
          {
            v114 = BYTE6(v3);
            if (v7 > 1)
            {
              goto LABEL_207;
            }
          }

          goto LABEL_203;
        }

        if (v110 != 2)
        {
          goto LABEL_206;
        }

        v116 = *(v109 + 16);
        v115 = *(v109 + 24);
        v40 = __OFSUB__(v115, v116);
        v114 = v115 - v116;
        if (v40)
        {
          goto LABEL_322;
        }

        if (v7 <= 1)
        {
          goto LABEL_203;
        }

LABEL_207:
        if (v7 == 2)
        {
          v119 = *(v190 + 16);
          v118 = *(v190 + 24);
          v40 = __OFSUB__(v118, v119);
          v117 = v118 - v119;
          if (v40)
          {
            goto LABEL_318;
          }

          goto LABEL_209;
        }

        if (!v114)
        {
          goto LABEL_302;
        }

        goto LABEL_183;
      }

      if (v109)
      {
        v111 = 0;
      }

      else
      {
        v111 = v3 == 0xC000000000000000;
      }

      v113 = !v111 || v7 < 3;
      if (((v113 | v186) & 1) == 0)
      {
        v156 = 0;
        v157 = 0xC000000000000000;
        goto LABEL_303;
      }

LABEL_206:
      v114 = 0;
      if (v7 > 1)
      {
        goto LABEL_207;
      }

LABEL_203:
      v117 = v189;
      if (v7)
      {
        v117 = v182;
        if (v183)
        {
          goto LABEL_319;
        }
      }

LABEL_209:
      if (v114 != v117)
      {
        goto LABEL_183;
      }

      if (v114 < 1)
      {
        goto LABEL_302;
      }

      if (v110 <= 1)
      {
        if (!v110)
        {
          __s1[0] = v109;
          LOWORD(__s1[1]) = v3;
          BYTE2(__s1[1]) = BYTE2(v3);
          BYTE3(__s1[1]) = BYTE3(v3);
          BYTE4(__s1[1]) = BYTE4(v3);
          BYTE5(__s1[1]) = BYTE5(v3);
          if (v7)
          {
            if (v7 == 1)
            {
              v13 = v177;
              v120 = v174;
              if (v174 < v177)
              {
                __break(1u);
LABEL_334:
                __break(1u);
LABEL_335:
                __break(1u);
LABEL_336:
                __break(1u);
LABEL_337:
                __break(1u);
LABEL_338:
                __break(1u);
LABEL_339:
                v200 = v180;
                v201 = v181;
                __break(1u);
LABEL_340:
                v200 = v180;
                v201 = v181;
                __break(1u);
LABEL_341:
                v200 = v180;
                v201 = v181;
                __break(1u);
LABEL_342:
                v200 = v180;
                v201 = v181;
                __break(1u);
LABEL_343:
                v200 = v180;
                v201 = v181;
                __break(1u);
LABEL_344:
                v200 = v180;
                v201 = v181;
                __break(1u);
LABEL_345:
                v200 = v180;
                v201 = v181;
                __break(1u);
LABEL_346:
                v200 = v180;
                v201 = v181;
                __break(1u);
LABEL_347:
                v200 = v180;
                v201 = v181;
                __break(1u);
LABEL_348:
                v200 = v180;
                v201 = v181;
                __break(1u);
LABEL_349:
                __break(1u);
LABEL_350:
                __break(1u);
LABEL_351:
                __break(1u);
LABEL_352:
                __break(1u);
LABEL_353:
                __break(1u);
LABEL_354:
                v162 = swift_slowAlloc();
                memcpy(v162, v191, v13);
                v163 = v176;
                v164 = sub_100160174(v162, v168, v4, v3, &v199);

                if (v163)
                {
                  goto LABEL_391;
                }

                v7 = v199;
                v181 = v201;
                v4 = v164;
LABEL_312:
                v14 = v7;
LABEL_313:
                sub_100020D08(v14);
                return v4;
              }
            }

            else
            {
              v13 = *(v190 + 16);
              v120 = *(v190 + 24);
            }

            sub_100014CEC(v109, v3);
            v136 = v120;
            v137 = v176;
            v138 = sub_100164AC4(v13, v136, v188 & 0x3FFFFFFFFFFFFFFFLL, __s1);
            v176 = v137;
            if (v137)
            {
              goto LABEL_390;
            }

            v13 = v138;
            sub_100014D40(v109, v3);
            v101 = v191;
            v6 = v188;
            v103 = v185;
            if (v13)
            {
              goto LABEL_302;
            }

LABEL_183:
            v100 = (v100 + 1) & v103;
            v11 = v100 >> 6;
            v2 = 1 << v100;
            if ((v101[v100 >> 6] & (1 << v100)) == 0)
            {
              goto LABEL_164;
            }

            continue;
          }

LABEL_232:
          __s2 = v190;
          v193 = v175;
          v194 = *(&v190 + 5);
          v195 = HIBYTE(v190);
          LOWORD(v196) = v6;
          BYTE2(v196) = BYTE2(v6);
          HIBYTE(v196) = BYTE3(v6);
          LOBYTE(v197) = BYTE4(v6);
          HIBYTE(v197) = BYTE5(v6);
          v129 = memcmp(__s1, &__s2, v189);
          v103 = v185;
          v101 = v191;
          if (!v129)
          {
            goto LABEL_302;
          }

          goto LABEL_183;
        }

        v4 = v109;
        if (v109 > v109 >> 32)
        {
          goto LABEL_324;
        }

        sub_100014CEC(v109, v3);
        v123 = sub_1004A40D4();
        if (v123)
        {
          v6 = v123;
          v124 = sub_1004A4104();
          if (__OFSUB__(v109, v124))
          {
            goto LABEL_329;
          }

          v173 = v109 - v124 + v6;
        }

        else
        {
          v173 = 0;
        }

        v13 = v3 & 0x3FFFFFFFFFFFFFFFLL;
        sub_1004A40F4();
        v4 = v187;
        v6 = v188;
        if (v7 != 2)
        {
          if (v7 == 1)
          {
            if (v174 < v177)
            {
              goto LABEL_337;
            }

            v4 = sub_1004A40D4();
            if (v4)
            {
              v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
              v134 = sub_1004A4104();
              if (__OFSUB__(v177, v134))
              {
                goto LABEL_353;
              }

              v4 += v177 - v134;
            }

            v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
            v135 = sub_1004A40F4();
            v132 = v172;
            if (v135 < v172)
            {
              v132 = v135;
            }

            v133 = v173;
            if (!v173)
            {
              goto LABEL_368;
            }

            if (!v4)
            {
              goto LABEL_367;
            }

LABEL_257:
            if (v133 == v4)
            {
              goto LABEL_306;
            }

LABEL_299:
            v13 = memcmp(v133, v4, v132);
            sub_100014D40(v109, v3);
            v4 = v187;
LABEL_300:
            v101 = v191;
LABEL_301:
            v103 = v185;
            if (!v13)
            {
              goto LABEL_302;
            }

            goto LABEL_183;
          }

          v148 = v173;
          LODWORD(__s1[0]) = v190;
          BYTE4(__s1[0]) = v175;
          *(__s1 + 5) = *(&v190 + 5);
          HIBYTE(__s1[0]) = HIBYTE(v190);
          LODWORD(__s1[1]) = v188;
          WORD2(__s1[1]) = WORD2(v188);
          if (!v173)
          {
            goto LABEL_364;
          }

LABEL_282:
          v13 = memcmp(v148, __s1, v189);
          sub_100014D40(v109, v3);
          goto LABEL_300;
        }

        v149 = *(v190 + 24);
        v167 = *(v190 + 16);
        v166 = v149;
        v13 = v188 & 0x3FFFFFFFFFFFFFFFLL;
        v4 = sub_1004A40D4();
        if (v4)
        {
          v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
          v150 = sub_1004A4104();
          v151 = v167;
          if (__OFSUB__(v167, v150))
          {
            goto LABEL_351;
          }

          v4 += v167 - v150;
        }

        else
        {
          v151 = v167;
        }

        v154 = v166 - v151;
        if (__OFSUB__(v166, v151))
        {
          goto LABEL_338;
        }

        v13 = v188 & 0x3FFFFFFFFFFFFFFFLL;
        v155 = sub_1004A40F4();
        if (v155 >= v154)
        {
          v132 = v154;
        }

        else
        {
          v132 = v155;
        }

        v133 = v173;
        if (!v173)
        {
          goto LABEL_372;
        }

        if (!v4)
        {
          goto LABEL_370;
        }

        goto LABEL_298;
      }

      break;
    }

    if (v110 == 2)
    {
      v4 = *(v109 + 16);
      sub_100014CEC(v109, v3);
      v121 = sub_1004A40D4();
      if (v121)
      {
        v6 = v121;
        v122 = sub_1004A4104();
        if (__OFSUB__(v4, v122))
        {
          goto LABEL_328;
        }

        v173 = v4 - v122 + v6;
      }

      else
      {
        v173 = 0;
      }

      v6 = v188;
      v13 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      sub_1004A40F4();
      v4 = v187;
      if (v7 != 2)
      {
        if (v7 == 1)
        {
          if (v174 < v177)
          {
            goto LABEL_335;
          }

          v4 = sub_1004A40D4();
          if (v4)
          {
            v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
            v130 = sub_1004A4104();
            if (__OFSUB__(v177, v130))
            {
              goto LABEL_352;
            }

            v4 += v177 - v130;
          }

          v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
          v131 = sub_1004A40F4();
          v132 = v172;
          if (v131 < v172)
          {
            v132 = v131;
          }

          v133 = v173;
          if (!v173)
          {
            goto LABEL_373;
          }

          if (!v4)
          {
            goto LABEL_371;
          }

          goto LABEL_257;
        }

        v148 = v173;
        LODWORD(__s1[0]) = v190;
        BYTE4(__s1[0]) = v175;
        *(__s1 + 5) = *(&v190 + 5);
        HIBYTE(__s1[0]) = HIBYTE(v190);
        LOWORD(__s1[1]) = v6;
        BYTE2(__s1[1]) = BYTE2(v6);
        BYTE3(__s1[1]) = BYTE3(v6);
        BYTE4(__s1[1]) = BYTE4(v6);
        BYTE5(__s1[1]) = BYTE5(v6);
        if (!v173)
        {
          goto LABEL_365;
        }

        goto LABEL_282;
      }

      v145 = *(v190 + 24);
      v167 = *(v190 + 16);
      v166 = v145;
      v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v4 = sub_1004A40D4();
      if (v4)
      {
        v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
        v146 = sub_1004A4104();
        v147 = v167;
        if (__OFSUB__(v167, v146))
        {
          goto LABEL_349;
        }

        v4 += v167 - v146;
      }

      else
      {
        v147 = v167;
      }

      v152 = v166 - v147;
      if (__OFSUB__(v166, v147))
      {
        goto LABEL_336;
      }

      v13 = v188 & 0x3FFFFFFFFFFFFFFFLL;
      v153 = sub_1004A40F4();
      if (v153 >= v152)
      {
        v132 = v152;
      }

      else
      {
        v132 = v153;
      }

      v133 = v173;
      if (!v173)
      {
        goto LABEL_369;
      }

      if (!v4)
      {
        goto LABEL_366;
      }

LABEL_298:
      v6 = v188;
      if (v133 != v4)
      {
        goto LABEL_299;
      }

LABEL_306:
      sub_100014D40(v190, v6);
      sub_100014D40(v109, v3);
      v4 = v187;
LABEL_304:
      v12 = v184;
      v90 = v178;
      v158 = v171[v11];
      v171[v11] = v158 & ~v2;
      v6 = v180;
      v7 = v179;
      if ((v158 & v2) != 0)
      {
        v89 = v170 - 1;
        if (__OFSUB__(v170, 1))
        {
          goto LABEL_362;
        }

        if (v170 == 1)
        {

          v4 = _swiftEmptySetSingleton;
          goto LABEL_312;
        }

        continue;
      }

      goto LABEL_165;
    }

    break;
  }

  memset(__s1, 0, 14);
  if (!v7)
  {
    goto LABEL_232;
  }

  if (v7 == 2)
  {
    v125 = *(v190 + 16);
    v126 = *(v190 + 24);
    sub_100014CEC(v109, v3);
    v127 = v126;
    v128 = v176;
    v13 = sub_100164AC4(v125, v127, v188 & 0x3FFFFFFFFFFFFFFFLL, __s1);
    v176 = v128;
    v6 = v188;
    sub_100014D40(v109, v3);
    v103 = v185;
    v101 = v191;
    if (v13)
    {
      goto LABEL_302;
    }

    goto LABEL_183;
  }

  if (v174 < v177)
  {
    goto LABEL_334;
  }

  sub_100014CEC(v109, v3);
  v139 = sub_1004A40D4();
  v140 = v6;
  v141 = v139;
  if (v139)
  {
    v13 = v140 & 0x3FFFFFFFFFFFFFFFLL;
    v142 = sub_1004A4104();
    if (__OFSUB__(v177, v142))
    {
      goto LABEL_350;
    }

    v141 += v177 - v142;
  }

  v13 = v188 & 0x3FFFFFFFFFFFFFFFLL;
  v143 = sub_1004A40F4();
  if (v143 >= v172)
  {
    v144 = v172;
  }

  else
  {
    v144 = v143;
  }

  if (v141)
  {
    if (__s1 != v141)
    {
      v13 = memcmp(__s1, v141, v144);
      sub_100014D40(v109, v3);
      v101 = v191;
      v6 = v188;
      goto LABEL_301;
    }

    sub_100014D40(v109, v3);
    v6 = v188;
LABEL_302:
    v156 = v190;
    v157 = v6;
LABEL_303:
    sub_100014D40(v156, v157);
    goto LABEL_304;
  }

  __break(1u);
LABEL_364:
  __break(1u);
LABEL_365:
  __break(1u);
LABEL_366:
  __break(1u);
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
LABEL_374:
  v200 = v180;
  v201 = v181;
  __break(1u);
LABEL_375:
  v200 = v180;
  v201 = v181;
  __break(1u);
LABEL_376:
  v200 = v180;
  v201 = v181;
  __break(1u);
LABEL_377:
  v200 = v180;
  v201 = v181;
  sub_1004A40F4();
  __break(1u);
LABEL_378:
  v200 = v180;
  v201 = v181;
  __break(1u);
LABEL_379:
  v200 = v180;
  v201 = v181;
  __break(1u);
LABEL_380:
  v200 = v180;
  v201 = v181;
  sub_1004A40F4();
  __break(1u);
LABEL_381:
  v200 = v180;
  v201 = v181;
  __break(1u);
LABEL_382:
  v200 = v180;
  v201 = v181;
  __break(1u);
LABEL_383:
  v200 = v180;
  v201 = v181;
  __break(1u);
LABEL_384:
  v200 = v180;
  v201 = v181;
  __break(1u);
LABEL_385:
  v200 = v180;
  v201 = v181;
  __break(1u);
LABEL_386:
  v200 = v180;
  v201 = v181;
  __break(1u);
LABEL_387:
  v200 = v180;
  v201 = v181;
  __break(1u);
LABEL_388:
  v200 = v180;
  v201 = v181;
  __break(1u);
LABEL_389:
  v200 = v180;
  v201 = v181;
  __break(1u);
LABEL_390:

  __break(1u);
LABEL_391:

  __break(1u);
  return result;
}

void *sub_10015F1CC(uint64_t a1, void *a2)
{

  return sub_10015F234(a1, a2, &qword_1005CEEB8, &qword_1004D1D88);
}

void *sub_10015F234(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = a2;
  if (a2[2])
  {
    v48 = a3;
    v49 = a4;
    v51 = a1;
    v52 = 0;
    v10 = a1 + 56;
    v9 = *(a1 + 56);
    v11 = -1 << *(a1 + 32);
    v50 = ~v11;
    if (-v11 < 64)
    {
      v12 = ~(-1 << -v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & v9;
    v14 = (63 - v11) >> 6;
    v15 = a2 + 7;
    v16 = 1;
    while (1)
    {
      do
      {
        if (!v13)
        {
          v17 = v51;
          v18 = v52;
          while (1)
          {
            v19 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              break;
            }

            if (v19 >= v14)
            {

              goto LABEL_43;
            }

            v13 = *(v10 + 8 * v19);
            ++v18;
            if (v13)
            {
              v52 = v19;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v17 = v51;
LABEL_13:
        v20 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v7 = *(*(v17 + 48) + ((v52 << 8) | (4 * v20)));
        sub_1004A6E94();
        sub_1004A6EE4(v7);
        v21 = sub_1004A6F14();
        v22 = -1 << *(v8 + 32);
        v4 = v21 & ~v22;
        v5 = v4 >> 6;
        v6 = 1 << v4;
      }

      while (((1 << v4) & v15[v4 >> 6]) == 0);
      v23 = v8[6];
      if (*(v23 + 4 * v4) == v7)
      {
        break;
      }

      while (1)
      {
        v4 = (v4 + 1) & ~v22;
        v5 = v4 >> 6;
        v6 = 1 << v4;
        if (((1 << v4) & v15[v4 >> 6]) == 0)
        {
          break;
        }

        if (*(v23 + 4 * v4) == v7)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v55 = v50;
    v56 = v52;
    v57 = v13;
    v54[0] = v51;
    v54[1] = v10;
    v16 = (63 - v22) >> 6;
    v7 = 8 * v16;

    if (v16 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v42 = swift_slowAlloc();
      memcpy(v42, v8 + 7, v7);
      v43 = sub_100160C94(v42, v16, v8, v4, v54, v48, v49);

      v6 = v54[0];
      v50 = v55;
      v52 = v56;
      v8 = v43;
      goto LABEL_41;
    }

LABEL_18:
    v45 = v16;
    v46 = &v44;
    __chkstk_darwin(v24);
    v16 = &v44 - v25;
    memcpy(&v44 - v25, v8 + 7, v7);
    v26 = v8[2];
    *(v16 + 8 * v5) &= ~v6;
    v27 = v26 - 1;
    v5 = 1;
    v6 = v51;
LABEL_19:
    v47 = v27;
    while (v13)
    {
LABEL_27:
      v31 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v7 = *(*(v6 + 48) + ((v52 << 8) | (4 * v31)));
      sub_1004A6E94();
      v4 = v53;
      sub_1004A6EE4(v7);
      v32 = sub_1004A6F14();
      v33 = -1 << *(v8 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = 1 << v34;
      if (((1 << v34) & v15[v34 >> 6]) != 0)
      {
        v37 = v8[6];
        if (*(v37 + 4 * v34) == v7)
        {
LABEL_20:
          v28 = *(v16 + 8 * v35);
          *(v16 + 8 * v35) = v28 & ~v36;
          if ((v28 & v36) != 0)
          {
            v27 = v47 - 1;
            if (__OFSUB__(v47, 1))
            {
              __break(1u);
            }

            if (v47 == 1)
            {

              v8 = _swiftEmptySetSingleton;
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v38 = ~v33;
          while (1)
          {
            v34 = (v34 + 1) & v38;
            v35 = v34 >> 6;
            v36 = 1 << v34;
            if (((1 << v34) & v15[v34 >> 6]) == 0)
            {
              break;
            }

            if (*(v37 + 4 * v34) == v7)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v29 = v52;
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v30 >= v14)
      {
        break;
      }

      v13 = *(v10 + 8 * v30);
      ++v29;
      if (v13)
      {
        v52 = v30;
        goto LABEL_27;
      }
    }

    if (v14 <= v52 + 1)
    {
      v39 = v52 + 1;
    }

    else
    {
      v39 = v14;
    }

    v52 = v39 - 1;
    v8 = sub_100161508(v16, v45, v47, v8, v48, v49);
LABEL_41:
    v40 = v6;
LABEL_43:
    sub_100020D08(v40);
  }

  else
  {

    return _swiftEmptySetSingleton;
  }

  return v8;
}

void *sub_10015F6DC(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1 << *(a1 + 32);
    v66 = ~v8;
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v6;
    v11 = (63 - v8) >> 6;
    v12 = a2 + 7;
    v69 = a1;

    v14 = 0;
    do
    {
LABEL_6:
      if (!v10)
      {
        v16 = v14;
        v15 = v69;
        while (1)
        {
          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_60;
          }

          if (v17 >= v11)
          {
            goto LABEL_55;
          }

          v10 = *(v7 + 8 * v17);
          ++v16;
          if (v10)
          {
            v14 = v17;
            goto LABEL_13;
          }
        }
      }

      v15 = v69;
LABEL_13:
      v68 = v14;
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v19 = (*(v15 + 48) + ((v14 << 10) | (16 * v18)));
      v21 = *v19;
      v20 = v19[1];
      sub_1004A6E94();
      sub_1004A6EB4(v20);
      v22 = sub_1004A6F14();
      v14 = v68;
      v23 = *(v5 + 32);
      v24 = -1 << v23;
      v2 = v22 & ~(-1 << v23);
      v4 = v2 >> 6;
      v3 = 1 << v2;
    }

    while (((1 << v2) & v12[v2 >> 6]) == 0);
    v25 = v23 & 0x3F;
    v26 = ~v24;
    while (1)
    {
      v27 = (v5[6] + 16 * v2);
      if (v27[1] == v20)
      {
        v28 = *v27;
        v29 = *(*v27 + 16);
        if (v29 == *(v21 + 16))
        {
          break;
        }
      }

LABEL_15:
      v2 = (v2 + 1) & v26;
      v4 = v2 >> 6;
      v3 = 1 << v2;
      if ((v12[v2 >> 6] & (1 << v2)) == 0)
      {
        goto LABEL_6;
      }
    }

    if (v29)
    {
      v30 = v28 == v21;
    }

    else
    {
      v30 = 1;
    }

    if (!v30)
    {
      v31 = (v28 + 32);
      v32 = (v21 + 32);
      while (v29)
      {
        if (*v31 != *v32)
        {
          goto LABEL_15;
        }

        ++v31;
        ++v32;
        if (!--v29)
        {
          goto LABEL_26;
        }
      }

LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

LABEL_26:
    v72 = v66;
    v73 = v68;
    v74 = v10;
    v71[0] = v69;
    v71[1] = v7;
    v64 = ((1 << v25) + 63) >> 6;
    v13 = 8 * v64;
    if (v25 <= 0xD)
    {
      goto LABEL_27;
    }

LABEL_61:
    v59 = v13;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v60 = swift_slowAlloc();
      memcpy(v60, v5 + 7, v59);
      sub_100160E84(v60, v64, v5, v2, v71);
      v62 = v61;

      v15 = v71[0];
      v66 = v72;
      v5 = v62;
      goto LABEL_55;
    }

LABEL_27:
    v65 = &v63;
    __chkstk_darwin(v22);
    v2 = &v63 - v33;
    memcpy(&v63 - v33, v5 + 7, v34);
    v35 = *(v2 + 8 * v4) & ~v3;
    v36 = v5[2];
    v67 = v2;
    *(v2 + 8 * v4) = v35;
    v37 = v36 - 1;
    v38 = v68;
    do
    {
      v68 = v37;
      while (1)
      {
LABEL_29:
        if (!v10)
        {
          v39 = v38;
          while (1)
          {
            v40 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              goto LABEL_58;
            }

            if (v40 >= v11)
            {
              sub_100161EEC(v67, v64, v68, v5);
              v5 = v57;
              goto LABEL_53;
            }

            v10 = *(v7 + 8 * v40);
            ++v39;
            if (v10)
            {
              v38 = v40;
              break;
            }
          }
        }

        v41 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v42 = (*(v69 + 48) + ((v38 << 10) | (16 * v41)));
        v3 = *v42;
        v4 = v42[1];
        v43 = v38;
        sub_1004A6E94();
        v2 = v70;
        sub_1004A6EB4(v4);
        v44 = sub_1004A6F14();
        v38 = v43;
        v45 = -1 << *(v5 + 32);
        v46 = v44 & ~v45;
        v47 = v46 >> 6;
        v48 = 1 << v46;
        if (((1 << v46) & v12[v46 >> 6]) != 0)
        {
          v49 = ~v45;
          while (1)
          {
            v50 = (v5[6] + 16 * v46);
            if (v50[1] == v4)
            {
              v51 = *v50;
              v52 = *(*v50 + 16);
              if (v52 == *(v3 + 16))
              {
                break;
              }
            }

LABEL_37:
            v46 = (v46 + 1) & v49;
            v47 = v46 >> 6;
            v48 = 1 << v46;
            if ((v12[v46 >> 6] & (1 << v46)) == 0)
            {
              goto LABEL_29;
            }
          }

          if (v52)
          {
            v53 = v51 == v3;
          }

          else
          {
            v53 = 1;
          }

          if (!v53)
          {
            v54 = (v51 + 32);
            v55 = (v3 + 32);
            while (v52)
            {
              if (*v54 != *v55)
              {
                goto LABEL_37;
              }

              ++v54;
              ++v55;
              if (!--v52)
              {
                goto LABEL_48;
              }
            }

            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

LABEL_48:
          v56 = v67[v47];
          v67[v47] = v56 & ~v48;
          if ((v56 & v48) != 0)
          {
            break;
          }
        }
      }

      v37 = v68 - 1;
      if (__OFSUB__(v68, 1))
      {
        __break(1u);
      }
    }

    while (v68 != 1);

    v5 = _swiftEmptySetSingleton;
LABEL_53:
    v15 = v69;
LABEL_55:
    sub_100020D08(v15);
  }

  else
  {

    return _swiftEmptySetSingleton;
  }

  return v5;
}

void *sub_10015FC1C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1 << *(a1 + 32);
    v68 = ~v8;
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v6;
    v11 = (63 - v8) >> 6;
    v12 = a2 + 7;
    v71 = a1;

    v14 = 0;
    do
    {
LABEL_6:
      if (!v10)
      {
        v16 = v14;
        v15 = v71;
        while (1)
        {
          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_60;
          }

          if (v17 >= v11)
          {
            goto LABEL_55;
          }

          v10 = *(v7 + 8 * v17);
          ++v16;
          if (v10)
          {
            v14 = v17;
            goto LABEL_13;
          }
        }
      }

      v15 = v71;
LABEL_13:
      v70 = v14;
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v19 = *(v15 + 48) + ((v14 << 10) | (16 * v18));
      v20 = *v19;
      v21 = *(v19 + 8);
      sub_1004A6E94();
      v22 = v21 | (v21 << 32);
      sub_1004A6EB4(v22);
      v23 = sub_1004A6F14();
      v14 = v70;
      v24 = *(v5 + 32);
      v25 = -1 << v24;
      v2 = v23 & ~(-1 << v24);
      v4 = v2 >> 6;
      v3 = 1 << v2;
    }

    while (((1 << v2) & v12[v2 >> 6]) == 0);
    v26 = v24 & 0x3F;
    v27 = ~v25;
    while (1)
    {
      v28 = (v5[6] + 16 * v2);
      if ((v28[2] | (v28[2] << 32)) == v22)
      {
        v29 = *v28;
        v30 = *(*v28 + 16);
        if (v30 == *(v20 + 16))
        {
          break;
        }
      }

LABEL_15:
      v2 = (v2 + 1) & v27;
      v4 = v2 >> 6;
      v3 = 1 << v2;
      if ((v12[v2 >> 6] & (1 << v2)) == 0)
      {
        goto LABEL_6;
      }
    }

    if (v30)
    {
      v31 = v29 == v20;
    }

    else
    {
      v31 = 1;
    }

    if (!v31)
    {
      v32 = (v29 + 32);
      v33 = (v20 + 32);
      while (v30)
      {
        if (*v32 != *v33)
        {
          goto LABEL_15;
        }

        ++v32;
        ++v33;
        if (!--v30)
        {
          goto LABEL_26;
        }
      }

LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

LABEL_26:
    v74 = v68;
    v75 = v70;
    v76 = v10;
    v73[0] = v71;
    v73[1] = v7;
    v66 = ((1 << v26) + 63) >> 6;
    v13 = 8 * v66;
    if (v26 <= 0xD)
    {
      goto LABEL_27;
    }

LABEL_61:
    v61 = v13;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v62 = swift_slowAlloc();
      memcpy(v62, v5 + 7, v61);
      sub_1001610AC(v62, v66, v5, v2, v73);
      v64 = v63;

      v15 = v73[0];
      v68 = v74;
      v5 = v64;
      goto LABEL_55;
    }

LABEL_27:
    v67 = &v65;
    __chkstk_darwin(v23);
    v2 = &v65 - v34;
    memcpy(&v65 - v34, v5 + 7, v35);
    v36 = *(v2 + 8 * v4) & ~v3;
    v37 = v5[2];
    v69 = v2;
    *(v2 + 8 * v4) = v36;
    v38 = v37 - 1;
    v39 = v70;
    do
    {
      v70 = v38;
      while (1)
      {
LABEL_29:
        if (!v10)
        {
          v40 = v39;
          while (1)
          {
            v41 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_58;
            }

            if (v41 >= v11)
            {
              sub_10016210C(v69, v66, v70, v5);
              v5 = v59;
              goto LABEL_53;
            }

            v10 = *(v7 + 8 * v41);
            ++v40;
            if (v10)
            {
              v39 = v41;
              break;
            }
          }
        }

        v42 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v43 = *(v71 + 48) + ((v39 << 10) | (16 * v42));
        v3 = *v43;
        v44 = *(v43 + 8);
        v45 = v39;
        sub_1004A6E94();
        v4 = v44 | (v44 << 32);
        v2 = v72;
        sub_1004A6EB4(v4);
        v46 = sub_1004A6F14();
        v39 = v45;
        v47 = -1 << *(v5 + 32);
        v48 = v46 & ~v47;
        v49 = v48 >> 6;
        v50 = 1 << v48;
        if (((1 << v48) & v12[v48 >> 6]) != 0)
        {
          v51 = ~v47;
          while (1)
          {
            v52 = (v5[6] + 16 * v48);
            if ((v52[2] | (v52[2] << 32)) == v4)
            {
              v53 = *v52;
              v54 = *(*v52 + 16);
              if (v54 == *(v3 + 16))
              {
                break;
              }
            }

LABEL_37:
            v48 = (v48 + 1) & v51;
            v49 = v48 >> 6;
            v50 = 1 << v48;
            if ((v12[v48 >> 6] & (1 << v48)) == 0)
            {
              goto LABEL_29;
            }
          }

          if (v54)
          {
            v55 = v53 == v3;
          }

          else
          {
            v55 = 1;
          }

          if (!v55)
          {
            v56 = (v53 + 32);
            v57 = (v3 + 32);
            while (v54)
            {
              if (*v56 != *v57)
              {
                goto LABEL_37;
              }

              ++v56;
              ++v57;
              if (!--v54)
              {
                goto LABEL_48;
              }
            }

            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

LABEL_48:
          v58 = v69[v49];
          v69[v49] = v58 & ~v50;
          if ((v58 & v50) != 0)
          {
            break;
          }
        }
      }

      v38 = v70 - 1;
      if (__OFSUB__(v70, 1))
      {
        __break(1u);
      }
    }

    while (v70 != 1);

    v5 = _swiftEmptySetSingleton;
LABEL_53:
    v15 = v71;
LABEL_55:
    sub_100020D08(v15);
  }

  else
  {

    return _swiftEmptySetSingleton;
  }

  return v5;
}

void *sub_100160174(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  v99 = a5;
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v111 = a3 + 56;
LABEL_2:
  v97 = v6;
  while (1)
  {
LABEL_4:
    v7 = a5[3];
    v8 = a5[4];
    if (!v8)
    {
      v10 = (a5[2] + 64) >> 6;
      v11 = a5[3];
      while (1)
      {
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v9 >= v10)
        {
          if (v10 <= v7 + 1)
          {
            v89 = v7 + 1;
          }

          else
          {
            v89 = (a5[2] + 64) >> 6;
          }

          a5[3] = v89 - 1;
          a5[4] = 0;

          return sub_1001612E0(a1, a2, v97, a3);
        }

        v8 = *(a5[1] + 8 * v9);
        ++v11;
        if (v8)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
    }

    v9 = a5[3];
LABEL_10:
    v12 = (*(*a5 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v8)))));
    v14 = *v12;
    v13 = v12[1];
    a5[3] = v9;
    a5[4] = (v8 - 1) & v8;
    sub_1004A6E94();
    sub_100014CEC(v14, v13);
    sub_1004A4424();
    v15 = sub_1004A6F14();
    v16 = a3;
    v17 = -1 << *(a3 + 32);
    v18 = v15 & ~v17;
    v19 = v18 >> 6;
    v20 = v111;
    v21 = 1 << v18;
    v116 = v13;
    if (((1 << v18) & *(v111 + 8 * (v18 >> 6))) != 0)
    {
      break;
    }

LABEL_3:
    sub_100014D40(v14, v116);
    a5 = v99;
  }

  v22 = ~v17;
  v23 = v13 >> 62;
  if (v14)
  {
    v24 = 0;
  }

  else
  {
    v24 = v13 == 0xC000000000000000;
  }

  v25 = !v24;
  v114 = v25;
  v106 = HIDWORD(v14);
  v26 = __OFSUB__(HIDWORD(v14), v14);
  v109 = v26;
  __n = BYTE6(v13);
  v107 = v14;
  v108 = HIDWORD(v14) - v14;
  v104 = (v14 >> 32) - v14;
  v105 = v14 >> 32;
  v113 = v14;
  v110 = v22;
  while (1)
  {
    v27 = (*(v16 + 48) + 16 * v18);
    v29 = *v27;
    v28 = v27[1];
    v30 = v28 >> 62;
    if (v28 >> 62 == 3)
    {
      if (v29)
      {
        v31 = 0;
      }

      else
      {
        v31 = v28 == 0xC000000000000000;
      }

      v33 = !v31 || v23 < 3;
      if (((v33 | v114) & 1) == 0)
      {
        v86 = 0;
        v87 = 0xC000000000000000;
LABEL_154:
        sub_100014D40(v86, v87);
        a5 = v99;
        v88 = a1[v19];
        a1[v19] = v88 & ~v21;
        if ((v88 & v21) == 0)
        {
          goto LABEL_4;
        }

        v6 = v97 - 1;
        if (__OFSUB__(v97, 1))
        {
          goto LABEL_188;
        }

        if (v97 == 1)
        {
          return _swiftEmptySetSingleton;
        }

        goto LABEL_2;
      }

LABEL_45:
      v34 = 0;
      if (v23 <= 1)
      {
        goto LABEL_42;
      }

      goto LABEL_46;
    }

    if (v30 > 1)
    {
      if (v30 != 2)
      {
        goto LABEL_45;
      }

      v36 = *(v29 + 16);
      v35 = *(v29 + 24);
      v37 = __OFSUB__(v35, v36);
      v34 = v35 - v36;
      if (v37)
      {
        goto LABEL_168;
      }

      if (v23 <= 1)
      {
        goto LABEL_42;
      }
    }

    else if (v30)
    {
      LODWORD(v34) = HIDWORD(v29) - v29;
      if (__OFSUB__(HIDWORD(v29), v29))
      {
        goto LABEL_167;
      }

      v34 = v34;
      if (v23 <= 1)
      {
LABEL_42:
        v38 = __n;
        if (v23)
        {
          v38 = v108;
          if (v109)
          {
            goto LABEL_165;
          }
        }

        goto LABEL_48;
      }
    }

    else
    {
      v34 = BYTE6(v28);
      if (v23 <= 1)
      {
        goto LABEL_42;
      }
    }

LABEL_46:
    if (v23 != 2)
    {
      if (!v34)
      {
        goto LABEL_153;
      }

      goto LABEL_22;
    }

    v40 = *(v14 + 16);
    v39 = *(v14 + 24);
    v37 = __OFSUB__(v39, v40);
    v38 = v39 - v40;
    if (v37)
    {
      goto LABEL_166;
    }

LABEL_48:
    if (v34 != v38)
    {
      goto LABEL_22;
    }

    if (v34 < 1)
    {
      goto LABEL_153;
    }

    if (v30 > 1)
    {
      break;
    }

    if (v30)
    {
      if (v29 > v29 >> 32)
      {
        goto LABEL_169;
      }

      sub_100014CEC(v29, v28);
      v50 = sub_1004A40D4();
      if (v50)
      {
        v51 = v50;
        v52 = sub_1004A4104();
        if (__OFSUB__(v29, v52))
        {
          goto LABEL_171;
        }

        v101 = (v29 - v52 + v51);
      }

      else
      {
        v101 = 0;
      }

      sub_1004A40F4();
      v14 = v113;
      if (v23 == 2)
      {
        v91 = *(v113 + 24);
        v95 = *(v113 + 16);
        v58 = sub_1004A40D4();
        if (v58)
        {
          v74 = sub_1004A4104();
          v75 = v95;
          if (__OFSUB__(v95, v74))
          {
            goto LABEL_185;
          }

          v58 += v95 - v74;
        }

        else
        {
          v75 = v95;
        }

        v84 = v91 - v75;
        if (__OFSUB__(v91, v75))
        {
          goto LABEL_181;
        }

        v85 = sub_1004A40F4();
        if (v85 >= v84)
        {
          v61 = v84;
        }

        else
        {
          v61 = v85;
        }

        result = v101;
        if (!v101)
        {
          goto LABEL_197;
        }

        v20 = v111;
        v14 = v113;
        if (!v58)
        {
          goto LABEL_202;
        }
      }

      else
      {
        if (v23 != 1)
        {
          v20 = v111;
          result = v101;
          *__s1 = v113;
          __s1[4] = v106;
          *&__s1[5] = *(&v113 + 5);
          __s1[7] = HIBYTE(v113);
          *&__s1[8] = v116;
          *&__s1[12] = WORD2(v116);
          if (!v101)
          {
            goto LABEL_191;
          }

          goto LABEL_121;
        }

        if (v105 < v107)
        {
          goto LABEL_180;
        }

        v58 = sub_1004A40D4();
        if (v58)
        {
          v63 = sub_1004A4104();
          if (__OFSUB__(v107, v63))
          {
            goto LABEL_187;
          }

          v58 += v107 - v63;
        }

        v64 = sub_1004A40F4();
        v61 = v104;
        if (v64 < v104)
        {
          v61 = v64;
        }

        v14 = v113;
        result = v101;
        if (!v101)
        {
          goto LABEL_198;
        }

        v20 = v111;
        if (!v58)
        {
          goto LABEL_199;
        }
      }

      goto LABEL_149;
    }

    *__s1 = v29;
    *&__s1[8] = v28;
    __s1[10] = BYTE2(v28);
    __s1[11] = BYTE3(v28);
    __s1[12] = BYTE4(v28);
    __s1[13] = BYTE5(v28);
    if (!v23)
    {
      goto LABEL_75;
    }

    if (v23 == 1)
    {
      if (v105 < v107)
      {
        goto LABEL_173;
      }

      sub_100014CEC(v29, v28);
      v41 = sub_1004A40D4();
      if (!v41)
      {
        goto LABEL_196;
      }

      v42 = v41;
      v43 = sub_1004A4104();
      if (__OFSUB__(v107, v43))
      {
        goto LABEL_177;
      }

      v44 = (v107 - v43 + v42);
      v45 = sub_1004A40F4();
      if (!v44)
      {
        goto LABEL_195;
      }

LABEL_108:
      if (v45 >= v104)
      {
        v70 = v104;
      }

      else
      {
        v70 = v45;
      }

      v71 = memcmp(__s1, v44, v70);
      sub_100014D40(v29, v28);
      v20 = v111;
      v14 = v113;
LABEL_152:
      v22 = v110;
      v16 = a3;
      if (!v71)
      {
        goto LABEL_153;
      }

      goto LABEL_22;
    }

    v103 = *(v14 + 16);
    v93 = *(v14 + 24);
    sub_100014CEC(v29, v28);
    v53 = sub_1004A40D4();
    if (v53)
    {
      v65 = sub_1004A4104();
      v66 = v103;
      if (__OFSUB__(v103, v65))
      {
        goto LABEL_182;
      }

      v53 = &v103[v53 - v65];
    }

    else
    {
      v66 = v103;
    }

    v78 = v93 - v66;
    if (__OFSUB__(v93, v66))
    {
      goto LABEL_174;
    }

    v79 = sub_1004A40F4();
    if (!v53)
    {
      goto LABEL_194;
    }

LABEL_129:
    if (v79 >= v78)
    {
      v80 = v78;
    }

    else
    {
      v80 = v79;
    }

    v81 = memcmp(__s1, v53, v80);
    sub_100014D40(v29, v28);
    v20 = v111;
    v16 = a3;
    v14 = v113;
    v22 = v110;
    if (!v81)
    {
LABEL_153:
      v86 = v14;
      v87 = v116;
      goto LABEL_154;
    }

LABEL_22:
    v18 = (v18 + 1) & v22;
    v19 = v18 >> 6;
    v21 = 1 << v18;
    if ((*(v20 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
    {
      goto LABEL_3;
    }
  }

  if (v30 == 2)
  {
    v46 = *(v29 + 16);
    sub_100014CEC(v29, v28);
    v47 = sub_1004A40D4();
    if (v47)
    {
      v48 = v47;
      v49 = sub_1004A4104();
      if (__OFSUB__(v46, v49))
      {
        goto LABEL_170;
      }

      v100 = (v46 - v49 + v48);
    }

    else
    {
      v100 = 0;
    }

    sub_1004A40F4();
    v14 = v113;
    if (v23 != 2)
    {
      if (v23 == 1)
      {
        if (v105 < v107)
        {
          goto LABEL_175;
        }

        v58 = sub_1004A40D4();
        if (v58)
        {
          v59 = sub_1004A4104();
          if (__OFSUB__(v107, v59))
          {
            goto LABEL_186;
          }

          v58 += v107 - v59;
        }

        v60 = sub_1004A40F4();
        v61 = v104;
        if (v60 < v104)
        {
          v61 = v60;
        }

        v14 = v113;
        result = v100;
        if (!v100)
        {
          goto LABEL_201;
        }

        v20 = v111;
        if (!v58)
        {
          goto LABEL_200;
        }

        goto LABEL_149;
      }

      v20 = v111;
      result = v100;
      *__s1 = v113;
      __s1[4] = v106;
      *&__s1[5] = *(&v113 + 5);
      __s1[7] = HIBYTE(v113);
      *&__s1[8] = v116;
      *&__s1[12] = WORD2(v116);
      if (!v100)
      {
        goto LABEL_192;
      }

LABEL_121:
      v76 = __s1;
      v77 = __n;
LABEL_151:
      v71 = memcmp(result, v76, v77);
      sub_100014D40(v29, v28);
      goto LABEL_152;
    }

    v90 = *(v113 + 24);
    v94 = *(v113 + 16);
    v58 = sub_1004A40D4();
    if (v58)
    {
      v72 = sub_1004A4104();
      v73 = v94;
      if (__OFSUB__(v94, v72))
      {
        goto LABEL_184;
      }

      v58 += v94 - v72;
    }

    else
    {
      v73 = v94;
    }

    v82 = v90 - v73;
    if (__OFSUB__(v90, v73))
    {
      goto LABEL_179;
    }

    v83 = sub_1004A40F4();
    if (v83 >= v82)
    {
      v61 = v82;
    }

    else
    {
      v61 = v83;
    }

    result = v100;
    if (!v100)
    {
      goto LABEL_203;
    }

    v20 = v111;
    v14 = v113;
    if (!v58)
    {
      goto LABEL_204;
    }

LABEL_149:
    if (result == v58)
    {
      sub_100014D40(v14, v116);
      v86 = v29;
      v87 = v28;
      goto LABEL_154;
    }

    v77 = v61;
    v76 = v58;
    goto LABEL_151;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v23)
  {
LABEL_75:
    __s2 = v14;
    v118 = BYTE2(v14);
    v119 = BYTE3(v14);
    v120 = v106;
    v121 = BYTE5(v14);
    v122 = BYTE6(v14);
    v123 = HIBYTE(v14);
    v124 = v116;
    v125 = WORD2(v116);
    v56 = v16;
    v57 = memcmp(__s1, &__s2, __n);
    v16 = v56;
    v22 = v110;
    if (!v57)
    {
      goto LABEL_153;
    }

    goto LABEL_22;
  }

  if (v23 == 2)
  {
    v102 = *(v14 + 16);
    v92 = *(v14 + 24);
    sub_100014CEC(v29, v28);
    v53 = sub_1004A40D4();
    if (v53)
    {
      v54 = sub_1004A4104();
      v55 = v102;
      if (__OFSUB__(v102, v54))
      {
        goto LABEL_183;
      }

      v53 = &v102[v53 - v54];
    }

    else
    {
      v55 = v102;
    }

    v78 = v92 - v55;
    if (__OFSUB__(v92, v55))
    {
      goto LABEL_176;
    }

    v79 = sub_1004A40F4();
    if (!v53)
    {
      goto LABEL_193;
    }

    goto LABEL_129;
  }

  if (v105 < v107)
  {
    goto LABEL_172;
  }

  sub_100014CEC(v29, v28);
  v67 = sub_1004A40D4();
  if (v67)
  {
    v68 = v67;
    v69 = sub_1004A4104();
    if (__OFSUB__(v107, v69))
    {
      goto LABEL_178;
    }

    v44 = (v107 - v69 + v68);
    v45 = sub_1004A40F4();
    if (!v44)
    {
      goto LABEL_190;
    }

    goto LABEL_108;
  }

  sub_1004A40F4();
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  result = sub_1004A40F4();
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
  return result;
}