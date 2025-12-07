uint64_t sub_265B84140(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_265B841EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_265BA5DE8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265B84290(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_265B843C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_265BA5DE8();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_265B84500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265BA5DE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037670, &unk_265BA6B00);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_265B845FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_265BA5DE8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037670, &unk_265BA6B00);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_265B84748(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_265B847F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_265BA5DE8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265B84898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = sub_265BA5DE8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_265B84910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = sub_265BA5DE8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_265B8498C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_265B84A38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_265BA5DE8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265B84ADC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_265B84B88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_265BA5DE8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265B84C2C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_265B84CD8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_265BA5DE8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265B84D7C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_265B84E28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_265BA5DE8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265B84ECC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_265B84F78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_265BA5DE8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265B85034(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_265B850E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_265BA5DE8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265B8518C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_265BA5DE8();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037628, &unk_265BA6AD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_265B85310(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_265BA5DE8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037628, &unk_265BA6AD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_265B85494(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_265B855C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_265BA5DE8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_265B856FC@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B85784(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_265B85830(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_265BA5DE8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265B85908(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_265B85974(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_265B859E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_265BA5DE8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_265B85A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_265BA5DE8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t FetchSyncChangesetRequestProtobuf.zoneRequests.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf.zone.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf.zone.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf.changeWindow.getter()
{
  v1 = *(v0 + 16);
  sub_265B85C84(v1, *(v0 + 24));
  return v1;
}

void sub_265B85C84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf.changeWindow.setter(uint64_t a1, uint64_t a2)
{
  sub_265B85D10(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void sub_265B85D10(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = xmmword_265BA63F0;
  type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf(0);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B85EB4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B85F70(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.recordChangeset.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  SyncChangesetResponse = type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(v1 + *(SyncChangesetResponse + 28), v5, &qword_280037598, &unk_265BA6430);
  v7 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_265B8D5C8(v5, a1, type metadata accessor for SyncRecordChangesetProtobuf);
  }

  v9 = MEMORY[0x277D84F90];
  *a1 = 0;
  a1[1] = v9;
  a1[2] = v9;
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_265B8D568(v5, &qword_280037598, &unk_265BA6430);
  }

  return result;
}

uint64_t sub_265B861E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  SyncChangesetResponse = type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(a1 + *(SyncChangesetResponse + 28), v6, &qword_280037598, &unk_265BA6430);
  v8 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_265B8D5C8(v6, a2, type metadata accessor for SyncRecordChangesetProtobuf);
  }

  v10 = MEMORY[0x277D84F90];
  *a2 = 0;
  a2[1] = v10;
  a2[2] = v10;
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_265B8D568(v6, &qword_280037598, &unk_265BA6430);
  }

  return result;
}

uint64_t sub_265B8634C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B8D438(a1, v7, type metadata accessor for SyncRecordChangesetProtobuf);
  v8 = *(type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0) + 28);
  sub_265B8D568(a2 + v8, &qword_280037598, &unk_265BA6430);
  sub_265B8D5C8(v7, a2 + v8, type metadata accessor for SyncRecordChangesetProtobuf);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.recordChangeset.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0) + 28);
  sub_265B8D568(v1 + v3, &qword_280037598, &unk_265BA6430);
  sub_265B8D5C8(a1, v1 + v3, type metadata accessor for SyncRecordChangesetProtobuf);
  v4 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_265B865A0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.recordChangeset.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430) - 8) + 64);
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
  v9 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0) + 28);
  *(v5 + 12) = v15;
  sub_265B8D500(v1 + v15, v8, &qword_280037598, &unk_265BA6430);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x277D84F90];
    *v14 = 0;
    v14[1] = v17;
    v14[2] = v17;
    _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_265B8D568(v8, &qword_280037598, &unk_265BA6430);
    }
  }

  else
  {
    sub_265B8D5C8(v8, v14, type metadata accessor for SyncRecordChangesetProtobuf);
  }

  return sub_265B867F8;
}

void sub_265B867F8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_265B8D438((*a1)[5], v4, type metadata accessor for SyncRecordChangesetProtobuf);
    sub_265B8D568(v9 + v3, &qword_280037598, &unk_265BA6430);
    sub_265B8D5C8(v4, v9 + v3, type metadata accessor for SyncRecordChangesetProtobuf);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_265B8D4A0(v5, type metadata accessor for SyncRecordChangesetProtobuf);
  }

  else
  {
    sub_265B8D568(v9 + v3, &qword_280037598, &unk_265BA6430);
    sub_265B8D5C8(v5, v9 + v3, type metadata accessor for SyncRecordChangesetProtobuf);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.hasRecordChangeset.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  SyncChangesetResponse = type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(v0 + *(SyncChangesetResponse + 28), v3, &qword_280037598, &unk_265BA6430);
  v5 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_265B8D568(v3, &qword_280037598, &unk_265BA6430);
  return v6;
}

Swift::Void __swiftcall FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.clearRecordChangeset()()
{
  v1 = *(type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0) + 28);
  sub_265B8D568(v0 + v1, &qword_280037598, &unk_265BA6430);
  v2 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_265B86AF8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B86B94(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = xmmword_265BA63F0;
  SyncChangesetResponse = type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  v3 = *(SyncChangesetResponse + 28);
  v4 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t sub_265B86D10@<X0>(void (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  a1(0);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t FetchSyncChangesetRequestProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf(0), sub_265B8B89C(qword_2813B5250, type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf, &protocol conformance descriptor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf), result = sub_265BA5FB8(), !v4))
  {
    type metadata accessor for FetchSyncChangesetRequestProtobuf(0);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t sub_265B8700C(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B8B89C(&qword_280037610, type metadata accessor for FetchSyncChangesetRequestProtobuf, &protocol conformance descriptor for FetchSyncChangesetRequestProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B870AC(uint64_t a1)
{
  v2 = sub_265B8B89C(&qword_2800375C8, type metadata accessor for FetchSyncChangesetRequestProtobuf, &protocol conformance descriptor for FetchSyncChangesetRequestProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B87118(uint64_t a1, uint64_t a2)
{
  sub_265B8B89C(&qword_2800375C8, type metadata accessor for FetchSyncChangesetRequestProtobuf, &protocol conformance descriptor for FetchSyncChangesetRequestProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B871C8()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037488);
  __swift_project_value_buffer(v0, qword_280037488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA6400;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "zone";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "changeWindow";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_265BA5E38();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_265BA5EB8();
    }

    else if (result == 2)
    {
      sub_265BA5E58();
    }
  }

  return result;
}

uint64_t FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_265BA5FA8(), !v4))
  {
    v8 = v3[2];
    v9 = v3[3];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_14;
      }

      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
    }

    else
    {
      if (!v10)
      {
        if ((v9 & 0xFF000000000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_13:
        result = sub_265BA5F48();
        if (v4)
        {
          return result;
        }

        goto LABEL_14;
      }

      v11 = v8;
      v12 = v8 >> 32;
    }

    if (v11 != v12)
    {
      goto LABEL_13;
    }

LABEL_14:
    type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf(0);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t static FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_265BA60E8() & 1) == 0 || !sub_265B8C4EC(a1[2], a1[3], a2[2], a2[3]))
  {
    return 0;
  }

  type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf(0);
  sub_265BA5DE8();
  sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B87644@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = xmmword_265BA63F0;
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B876E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B8B89C(&qword_280037608, type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf, &protocol conformance descriptor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B87788(uint64_t a1)
{
  v2 = sub_265B8B89C(qword_2813B5250, type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf, &protocol conformance descriptor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B877F4(uint64_t a1, uint64_t a2)
{
  sub_265B8B89C(qword_2813B5250, type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf, &protocol conformance descriptor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B87870(void *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_265BA60E8() & 1) == 0 || !sub_265B8C4EC(a1[2], a1[3], a2[2], a2[3]))
  {
    return 0;
  }

  sub_265BA5DE8();
  sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B87970(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_265BA6008();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_265BA6410;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  v13 = sub_265BA5FD8();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_265BA5FE8();
}

uint64_t sub_265B87B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_265BA5E38();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_265B8B89C(a5, a6, a7);
      sub_265BA5EC8();
    }
  }

  return result;
}

uint64_t FetchSyncChangesetResponseProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0), sub_265B8B89C(qword_2813B5110, type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf, &protocol conformance descriptor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf), result = sub_265BA5FB8(), !v4))
  {
    type metadata accessor for FetchSyncChangesetResponseProtobuf(0);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t sub_265B87D48(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_265BA5DE8();
  sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B87E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B87ED8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_265B87F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B8B89C(&qword_280037600, type metadata accessor for FetchSyncChangesetResponseProtobuf, &protocol conformance descriptor for FetchSyncChangesetResponseProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B8801C(uint64_t a1)
{
  v2 = sub_265B8B89C(&qword_2800375E0, type metadata accessor for FetchSyncChangesetResponseProtobuf, &protocol conformance descriptor for FetchSyncChangesetResponseProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B88088(uint64_t a1, uint64_t a2)
{
  sub_265B8B89C(&qword_2800375E0, type metadata accessor for FetchSyncChangesetResponseProtobuf, &protocol conformance descriptor for FetchSyncChangesetResponseProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B8811C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_265BA5DE8();
  sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B881E4()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_2800374C8);
  __swift_project_value_buffer(v0, qword_2800374C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA6420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "zone";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "changeWindow";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "recordChangeset";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t sub_265B8841C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_265BA6008();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_265BA5E38();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_265B88564(a1, v5, a2, a3);
        break;
      case 2:
        sub_265BA5E58();
        break;
      case 1:
        sub_265BA5EB8();
        break;
    }
  }

  return result;
}

uint64_t sub_265B88564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  type metadata accessor for SyncRecordChangesetProtobuf(0);
  sub_265B8B89C(qword_2813B5430, type metadata accessor for SyncRecordChangesetProtobuf, &protocol conformance descriptor for SyncRecordChangesetProtobuf);
  return sub_265BA5ED8();
}

uint64_t FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_265BA5FA8(), !v4))
  {
    v11 = v3[2];
    v12 = v3[3];
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_14;
      }

      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
    }

    else
    {
      if (!v13)
      {
        if ((v12 & 0xFF000000000000) == 0)
        {
LABEL_14:
          result = sub_265B8871C(v3, a1, a2, a3);
          if (!v4)
          {
            type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
            return sub_265BA5DC8();
          }

          return result;
        }

LABEL_13:
        result = sub_265BA5F48();
        if (v4)
        {
          return result;
        }

        goto LABEL_14;
      }

      v14 = v11;
      v15 = v11 >> 32;
    }

    if (v14 == v15)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t sub_265B8871C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  SyncChangesetResponse = type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(a1 + *(SyncChangesetResponse + 28), v7, &qword_280037598, &unk_265BA6430);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_265B8D568(v7, &qword_280037598, &unk_265BA6430);
  }

  sub_265B8D5C8(v7, v11, type metadata accessor for SyncRecordChangesetProtobuf);
  sub_265B8B89C(qword_2813B5430, type metadata accessor for SyncRecordChangesetProtobuf, &protocol conformance descriptor for SyncRecordChangesetProtobuf);
  sub_265BA5FC8();
  return sub_265B8D4A0(v11, type metadata accessor for SyncRecordChangesetProtobuf);
}

uint64_t sub_265B88984(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_265BA6168();
  a1(0);
  sub_265B8B89C(a2, a3, a4);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B88A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_265BA63F0;
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_265B88ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B88B30(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_265B88BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B8B89C(&qword_2800375F8, type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf, &protocol conformance descriptor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B88C74@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_265BA6008();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_265B88D10(uint64_t a1)
{
  v2 = sub_265B8B89C(qword_2813B5110, type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf, &protocol conformance descriptor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B88D7C(uint64_t a1, uint64_t a2)
{
  sub_265BA6168();
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B88DD4(uint64_t a1, uint64_t a2)
{
  sub_265B8B89C(qword_2813B5110, type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf, &protocol conformance descriptor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B88E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_265BA6168();
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B88EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA5D98();
  v90 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v89 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v80 = &v70 - v7;
  v8 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v70 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037620, &qword_265BA6AC8);
  MEMORY[0x28223BE20](v15);
  v17 = &v70 - v16;
  v87 = type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  v18 = MEMORY[0x28223BE20](v87);
  v20 = (&v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v23 = &v70 - v22;
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
LABEL_43:
    v66 = 0;
    return v66 & 1;
  }

  if (!v24 || a1 == a2)
  {
    v66 = 1;
    return v66 & 1;
  }

  v82 = v11;
  v83 = v14;
  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v78 = a1 + v25;
  v26 = 0;
  v75 = v15;
  v76 = a2 + v25;
  v73 = v20;
  v74 = (v9 + 48);
  v88 = v90 + 16;
  v27 = (v90 + 8);
  v77 = *(v21 + 72);
  v84 = &v70 - v22;
  v71 = v8;
  v72 = v17;
  v81 = v24;
  while (1)
  {
    v28 = v77 * v26;
    v29 = v23;
    result = sub_265B8D438(v78 + v77 * v26, v23, type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
    if (v26 == v81)
    {
      goto LABEL_51;
    }

    sub_265B8D438(v76 + v28, v20, type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
    v31 = *v29 == *v20 && v29[1] == v20[1];
    if (!v31)
    {
      v32 = sub_265BA60E8();
      v29 = v84;
      if ((v32 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v79 = v26;
    v33 = v20;
    v34 = *(v87 + 24);
    v35 = *(v75 + 48);
    sub_265B8D500(v29 + v34, v17, &qword_280037598, &unk_265BA6430);
    sub_265B8D500(v33 + v34, &v17[v35], &qword_280037598, &unk_265BA6430);
    v36 = *v74;
    if ((*v74)(v17, 1, v8) == 1)
    {
      if (v36(&v17[v35], 1, v8) != 1)
      {
        goto LABEL_46;
      }

      goto LABEL_35;
    }

    v37 = v83;
    sub_265B8D500(v17, v83, &qword_280037598, &unk_265BA6430);
    if (v36(&v17[v35], 1, v8) == 1)
    {
      sub_265B8D4A0(v37, type metadata accessor for SyncRecordChangesetProtobuf);
LABEL_46:
      v67 = &qword_280037620;
      v68 = &qword_265BA6AC8;
      v69 = v17;
LABEL_41:
      sub_265B8D568(v69, v67, v68);
      v20 = v73;
      v29 = v84;
LABEL_42:
      sub_265B8D4A0(v20, type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
      sub_265B8D4A0(v29, type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
      goto LABEL_43;
    }

    v38 = &v17[v35];
    v39 = v82;
    result = sub_265B8D5C8(v38, v82, type metadata accessor for SyncRecordChangesetProtobuf);
    v40.n128_u64[0] = *v37;
    v31 = *v37 == *v39;
    v41 = v80;
    if (!v31 || (v42 = v83[1], v43 = *(v82 + 1), v44 = *(v42 + 16), v44 != *(v43 + 16)))
    {
LABEL_39:
      sub_265B8D4A0(v82, type metadata accessor for SyncRecordChangesetProtobuf);
      v62 = v83;
LABEL_40:
      sub_265B8D4A0(v62, type metadata accessor for SyncRecordChangesetProtobuf);
      v67 = &qword_280037598;
      v68 = &unk_265BA6430;
      v69 = v72;
      goto LABEL_41;
    }

    if (v44 && v42 != v43)
    {
      v45 = 0;
      v46 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      v85 = v43 + v46;
      v86 = v42 + v46;
      while (v45 < *(v42 + 16))
      {
        v47 = *(v90 + 72) * v45;
        v48 = *(v90 + 16);
        result = v48(v41, v86 + v47, v4, v40);
        if (v45 >= *(v43 + 16))
        {
          goto LABEL_48;
        }

        v49 = v89;
        (v48)(v89, v85 + v47, v4);
        sub_265B8B89C(&qword_280037618, MEMORY[0x277CFB080], MEMORY[0x277CFB088]);
        v50 = sub_265BA6048();
        v51 = *v27;
        (*v27)(v49, v4);
        result = (v51)(v41, v4);
        if ((v50 & 1) == 0)
        {
          goto LABEL_39;
        }

        if (v44 == ++v45)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_25:
    v52 = v83[2];
    v53 = *(v82 + 2);
    v54 = *(v52 + 16);
    if (v54 != *(v53 + 16))
    {
      goto LABEL_39;
    }

    if (v54 && v52 != v53)
    {
      break;
    }

LABEL_33:
    v8 = v71;
    sub_265BA5DE8();
    sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v63 = v82;
    v62 = v83;
    v64 = sub_265BA6048();
    sub_265B8D4A0(v63, type metadata accessor for SyncRecordChangesetProtobuf);
    if ((v64 & 1) == 0)
    {
      goto LABEL_40;
    }

    sub_265B8D4A0(v62, type metadata accessor for SyncRecordChangesetProtobuf);
    v17 = v72;
LABEL_35:
    sub_265B8D568(v17, &qword_280037598, &unk_265BA6430);
    sub_265BA5DE8();
    sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v65 = v84;
    v20 = v73;
    v66 = sub_265BA6048();
    sub_265B8D4A0(v20, type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
    sub_265B8D4A0(v65, type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
    if (v66)
    {
      v26 = v79 + 1;
      v23 = v84;
      if (v79 + 1 != v81)
      {
        continue;
      }
    }

    return v66 & 1;
  }

  v55 = 0;
  v56 = (*(v90 + 80) + 32) & ~*(v90 + 80);
  v85 = v53 + v56;
  v86 = v52 + v56;
  while (v55 < *(v52 + 16))
  {
    v57 = *(v90 + 72) * v55;
    v58 = *(v90 + 16);
    result = v58(v41, v86 + v57, v4, v40);
    if (v55 >= *(v53 + 16))
    {
      goto LABEL_50;
    }

    v59 = v89;
    (v58)(v89, v85 + v57, v4);
    sub_265B8B89C(&qword_280037618, MEMORY[0x277CFB080], MEMORY[0x277CFB088]);
    v60 = sub_265BA6048();
    v61 = *v27;
    (*v27)(v59, v4);
    result = (v61)(v41, v4);
    if ((v60 & 1) == 0)
    {
      goto LABEL_39;
    }

    if (v54 == ++v55)
    {
      goto LABEL_33;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_265B89864(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA5D98();
  v114 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v113 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v89 - v7;
  v106 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v115 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v10 = (&v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v89 - v12;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037620, &qword_265BA6AC8);
  MEMORY[0x28223BE20](v103);
  v107 = &v89 - v14;
  v108 = type metadata accessor for EncryptionKeyProofProtobuf(0);
  v15 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037628, &unk_265BA6AD0);
  MEMORY[0x28223BE20](v18 - 8);
  v102 = (&v89 - v19);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037630, &unk_265BA87D0);
  MEMORY[0x28223BE20](v104);
  v21 = &v89 - v20;
  v22 = type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0);
  v23 = MEMORY[0x28223BE20](v22);
  v109 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v110 = (&v89 - v26);
  v27 = *(a1 + 16);
  if (v27 != *(a2 + 16))
  {
LABEL_52:
    v84 = 0;
    return v84 & 1;
  }

  if (!v27 || a1 == a2)
  {
    v84 = 1;
    return v84 & 1;
  }

  v99 = v10;
  v100 = v13;
  v90 = v17;
  v28 = 0;
  v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v95 = a1 + v29;
  v93 = a2 + v29;
  v98 = (v15 + 48);
  v92 = (v115 + 48);
  v111 = (v114 + 8);
  v112 = v114 + 16;
  v94 = *(v25 + 72);
  v115 = v8;
  v30 = v109;
  v91 = v21;
  v96 = v22;
  v101 = v27;
  while (1)
  {
    v31 = v94 * v28;
    v32 = v110;
    result = sub_265B8D438(v95 + v94 * v28, v110, type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf);
    if (v28 == v101)
    {
      goto LABEL_64;
    }

    v97 = v28;
    sub_265B8D438(v93 + v31, v30, type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf);
    v34 = *v32 == *v30 && v32[1] == v30[1];
    if (!v34 && (sub_265BA60E8() & 1) == 0)
    {
      goto LABEL_51;
    }

    v35 = *(v22 + 24);
    v36 = *(v104 + 48);
    sub_265B8D500(v32 + v35, v21, &qword_280037628, &unk_265BA6AD0);
    sub_265B8D500(v30 + v35, &v21[v36], &qword_280037628, &unk_265BA6AD0);
    v37 = v21;
    v38 = *v98;
    v39 = v21;
    v40 = v108;
    if ((*v98)(v39, 1, v108) == 1)
    {
      if (v38((v37 + v36), 1, v40) != 1)
      {
        goto LABEL_55;
      }

      sub_265B8D568(v37, &qword_280037628, &unk_265BA6AD0);
      v21 = v37;
      v22 = v96;
      v30 = v109;
      goto LABEL_22;
    }

    v41 = v102;
    sub_265B8D500(v37, v102, &qword_280037628, &unk_265BA6AD0);
    if (v38((v37 + v36), 1, v40) == 1)
    {
      sub_265B8D4A0(v41, type metadata accessor for EncryptionKeyProofProtobuf);
LABEL_55:
      v87 = &qword_280037630;
      v88 = &unk_265BA87D0;
      goto LABEL_57;
    }

    v42 = v37 + v36;
    v43 = v90;
    sub_265B8D5C8(v42, v90, type metadata accessor for EncryptionKeyProofProtobuf);
    if ((*v41 != *v43 || v41[1] != v43[1]) && (sub_265BA60E8() & 1) == 0 || (v41[2] != v43[2] || v41[3] != v43[3]) && (sub_265BA60E8() & 1) == 0)
    {
      sub_265B8D4A0(v43, type metadata accessor for EncryptionKeyProofProtobuf);
      sub_265B8D4A0(v41, type metadata accessor for EncryptionKeyProofProtobuf);
      v87 = &qword_280037628;
      v88 = &unk_265BA6AD0;
LABEL_57:
      sub_265B8D568(v37, v87, v88);
      v30 = v109;
      goto LABEL_51;
    }

    v44 = v43;
    sub_265BA5DE8();
    sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v45 = sub_265BA6048();
    sub_265B8D4A0(v44, type metadata accessor for EncryptionKeyProofProtobuf);
    v21 = v91;
    v32 = v110;
    sub_265B8D4A0(v41, type metadata accessor for EncryptionKeyProofProtobuf);
    sub_265B8D568(v21, &qword_280037628, &unk_265BA6AD0);
    v22 = v96;
    v30 = v109;
    if ((v45 & 1) == 0)
    {
      goto LABEL_51;
    }

LABEL_22:
    v46 = *(v22 + 28);
    v47 = *(v103 + 48);
    v48 = v32 + v46;
    v49 = v107;
    sub_265B8D500(v48, v107, &qword_280037598, &unk_265BA6430);
    sub_265B8D500(v30 + v46, v49 + v47, &qword_280037598, &unk_265BA6430);
    v50 = *v92;
    v51 = v106;
    if ((*v92)(v49, 1, v106) == 1)
    {
      v34 = v50(v49 + v47, 1, v51) == 1;
      v52 = v49;
      if (!v34)
      {
        goto LABEL_59;
      }

      sub_265B8D568(v49, &qword_280037598, &unk_265BA6430);
      v30 = v109;
      v32 = v110;
      goto LABEL_45;
    }

    v53 = v100;
    sub_265B8D500(v49, v100, &qword_280037598, &unk_265BA6430);
    if (v50(v49 + v47, 1, v51) == 1)
    {
      sub_265B8D4A0(v53, type metadata accessor for SyncRecordChangesetProtobuf);
      v52 = v49;
LABEL_59:
      v85 = &qword_280037620;
      v86 = &qword_265BA6AC8;
LABEL_50:
      sub_265B8D568(v52, v85, v86);
      v30 = v109;
      v32 = v110;
LABEL_51:
      sub_265B8D4A0(v30, type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf);
      sub_265B8D4A0(v32, type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf);
      goto LABEL_52;
    }

    v54 = v49 + v47;
    v55 = v99;
    result = sub_265B8D5C8(v54, v99, type metadata accessor for SyncRecordChangesetProtobuf);
    v56.n128_u64[0] = *v53;
    if (*v53 != *v55 || (v57 = v100[1], v58 = *(v99 + 1), v59 = *(v57 + 16), v59 != *(v58 + 16)))
    {
LABEL_49:
      sub_265B8D4A0(v99, type metadata accessor for SyncRecordChangesetProtobuf);
      sub_265B8D4A0(v100, type metadata accessor for SyncRecordChangesetProtobuf);
      v85 = &qword_280037598;
      v86 = &unk_265BA6430;
      v52 = v107;
      goto LABEL_50;
    }

    if (v59 && v57 != v58)
    {
      v60 = 0;
      v61 = (*(v114 + 80) + 32) & ~*(v114 + 80);
      v105 = v57 + v61;
      v62 = v58 + v61;
      while (v60 < *(v57 + 16))
      {
        v63 = *(v114 + 72) * v60;
        v64 = *(v114 + 16);
        result = v64(v8, v105 + v63, v4, v56);
        if (v60 >= *(v58 + 16))
        {
          goto LABEL_61;
        }

        v65 = v113;
        (v64)(v113, v62 + v63, v4);
        sub_265B8B89C(&qword_280037618, MEMORY[0x277CFB080], MEMORY[0x277CFB088]);
        v66 = sub_265BA6048();
        v67 = *v111;
        v68 = v65;
        v8 = v115;
        (*v111)(v68, v4);
        result = (v67)(v8, v4);
        if ((v66 & 1) == 0)
        {
          goto LABEL_49;
        }

        if (v59 == ++v60)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

LABEL_36:
    v69 = v100[2];
    v70 = *(v99 + 2);
    v71 = *(v69 + 16);
    if (v71 != *(v70 + 16))
    {
      goto LABEL_49;
    }

    if (v71 && v69 != v70)
    {
      break;
    }

LABEL_44:
    sub_265BA5DE8();
    sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v81 = v99;
    v82 = v100;
    v83 = sub_265BA6048();
    sub_265B8D4A0(v81, type metadata accessor for SyncRecordChangesetProtobuf);
    sub_265B8D4A0(v82, type metadata accessor for SyncRecordChangesetProtobuf);
    sub_265B8D568(v107, &qword_280037598, &unk_265BA6430);
    v30 = v109;
    v32 = v110;
    v21 = v91;
    v22 = v96;
    if ((v83 & 1) == 0)
    {
      goto LABEL_51;
    }

LABEL_45:
    sub_265BA5DE8();
    sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v84 = sub_265BA6048();
    sub_265B8D4A0(v30, type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf);
    sub_265B8D4A0(v32, type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf);
    if (v84)
    {
      v28 = v97 + 1;
      if (v97 + 1 != v101)
      {
        continue;
      }
    }

    return v84 & 1;
  }

  v72 = 0;
  v73 = (*(v114 + 80) + 32) & ~*(v114 + 80);
  v105 = v69 + v73;
  v74 = v70 + v73;
  while (v72 < *(v69 + 16))
  {
    v75 = *(v114 + 72) * v72;
    v76 = *(v114 + 16);
    result = v76(v8, v105 + v75, v4, v56);
    if (v72 >= *(v70 + 16))
    {
      goto LABEL_63;
    }

    v77 = v113;
    (v76)(v113, v74 + v75, v4);
    sub_265B8B89C(&qword_280037618, MEMORY[0x277CFB080], MEMORY[0x277CFB088]);
    v78 = sub_265BA6048();
    v79 = *v111;
    v80 = v77;
    v8 = v115;
    (*v111)(v80, v4);
    result = (v79)(v8, v4);
    if ((v78 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (v71 == ++v72)
    {
      goto LABEL_44;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_265B8A5E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_265BA60E8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_265B8A670(uint64_t a1, uint64_t a2)
{
  v114[3] = *MEMORY[0x277D85DE8];
  v4 = sub_265BA5D98();
  v111 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v110 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v112 = &v91 - v7;
  v8 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v91 - v13;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037620, &qword_265BA6AC8);
  MEMORY[0x28223BE20](v104);
  v16 = &v91 - v15;
  SyncChangesetResponse = type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  v17 = MEMORY[0x28223BE20](SyncChangesetResponse);
  v19 = (&v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v105 = &v91 - v21;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    goto LABEL_88;
  }

  if (!v22 || a1 == a2)
  {
    v89 = 1;
    return v89 & 1;
  }

  v103 = v14;
  v101 = v11;
  v99 = v8;
  v94 = 0;
  v23 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v98 = a1 + v23;
  v24 = 0;
  v96 = a2 + v23;
  v95 = (v9 + 48);
  v108 = (v111 + 8);
  v109 = v111 + 16;
  v97 = *(v20 + 72);
  v25 = v105;
  v93 = v16;
  v92 = v19;
  v102 = v22;
  while (1)
  {
    v26 = v97 * v24;
    sub_265B8D438(v98 + v97 * v24, v25, type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
    if (v24 == v102)
    {
      goto LABEL_96;
    }

    v100 = v24;
    sub_265B8D438(v96 + v26, v19, type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
    v27 = *v25 == *v19 && v25[1] == v19[1];
    if (!v27 && (sub_265BA60E8() & 1) == 0)
    {
      goto LABEL_87;
    }

    v28 = v25[2];
    v29 = v25[3];
    v30 = v19[2];
    v31 = v19[3];
    v32 = v29 >> 62;
    v33 = v31 >> 62;
    if (v29 >> 62 == 3)
    {
      v34 = 0;
      if (!v28 && v29 == 0xC000000000000000 && v31 >> 62 == 3)
      {
        v34 = 0;
        if (!v30 && v31 == 0xC000000000000000)
        {
          goto LABEL_60;
        }
      }

LABEL_27:
      if (v33 <= 1)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v40 = *(v28 + 16);
        v39 = *(v28 + 24);
        v37 = __OFSUB__(v39, v40);
        v34 = v39 - v40;
        if (v37)
        {
          goto LABEL_100;
        }

        goto LABEL_27;
      }

      v34 = 0;
      if (v33 <= 1)
      {
        goto LABEL_28;
      }
    }

    else if (v32)
    {
      LODWORD(v34) = HIDWORD(v28) - v28;
      if (__OFSUB__(HIDWORD(v28), v28))
      {
        goto LABEL_99;
      }

      v34 = v34;
      if (v33 <= 1)
      {
LABEL_28:
        if (v33)
        {
          LODWORD(v38) = HIDWORD(v30) - v30;
          if (__OFSUB__(HIDWORD(v30), v30))
          {
            goto LABEL_97;
          }

          v38 = v38;
        }

        else
        {
          v38 = BYTE6(v31);
        }

        goto LABEL_34;
      }
    }

    else
    {
      v34 = BYTE6(v29);
      if (v33 <= 1)
      {
        goto LABEL_28;
      }
    }

LABEL_21:
    if (v33 != 2)
    {
      if (v34)
      {
        goto LABEL_87;
      }

      goto LABEL_60;
    }

    v36 = *(v30 + 16);
    v35 = *(v30 + 24);
    v37 = __OFSUB__(v35, v36);
    v38 = v35 - v36;
    if (v37)
    {
      goto LABEL_98;
    }

LABEL_34:
    if (v34 != v38)
    {
      goto LABEL_87;
    }

    if (v34 < 1)
    {
      goto LABEL_60;
    }

    if (v32 > 1)
    {
      if (v32 != 2)
      {
        memset(v114, 0, 14);
LABEL_55:
        v53 = v94;
        sub_265B8C074(v114, v30, v31, &v113);
        v94 = v53;
        if (!v113)
        {
          goto LABEL_87;
        }

        goto LABEL_60;
      }

      v41 = v19[2];
      v42 = *(v28 + 16);
      v43 = *(v28 + 24);
      v44 = sub_265BA5C78();
      if (v44)
      {
        v45 = sub_265BA5C98();
        if (__OFSUB__(v42, v45))
        {
          goto LABEL_103;
        }

        v44 += v42 - v45;
      }

      if (__OFSUB__(v43, v42))
      {
        goto LABEL_102;
      }

      sub_265BA5C88();
      v46 = v94;
      sub_265B8C074(v44, v41, v31, v114);
      v94 = v46;
      v47 = v114[0];
      v16 = v93;
      v19 = v92;
    }

    else
    {
      if (!v32)
      {
        v114[0] = v25[2];
        LOWORD(v114[1]) = v29;
        BYTE2(v114[1]) = BYTE2(v29);
        BYTE3(v114[1]) = BYTE3(v29);
        BYTE4(v114[1]) = BYTE4(v29);
        BYTE5(v114[1]) = BYTE5(v29);
        goto LABEL_55;
      }

      v106 = v19[2];
      v48 = v19;
      v49 = v28;
      if (v28 >> 32 < v28)
      {
        goto LABEL_101;
      }

      v50 = sub_265BA5C78();
      if (v50)
      {
        v51 = v50;
        v52 = sub_265BA5C98();
        if (__OFSUB__(v49, v52))
        {
          goto LABEL_104;
        }

        v91 = v49 - v52 + v51;
      }

      else
      {
        v91 = 0;
      }

      v19 = v48;
      sub_265BA5C88();
      v54 = v94;
      sub_265B8C074(v91, v106, v31, v114);
      v94 = v54;
      v47 = v114[0];
      v16 = v93;
    }

    v25 = v105;
    if ((v47 & 1) == 0)
    {
      goto LABEL_87;
    }

LABEL_60:
    v55 = *(SyncChangesetResponse + 28);
    v56 = *(v104 + 48);
    sub_265B8D500(v25 + v55, v16, &qword_280037598, &unk_265BA6430);
    sub_265B8D500(v19 + v55, &v16[v56], &qword_280037598, &unk_265BA6430);
    v57 = *v95;
    v58 = v99;
    if ((*v95)(v16, 1, v99) == 1)
    {
      if (v57(&v16[v56], 1, v58) != 1)
      {
        goto LABEL_91;
      }

      sub_265B8D568(v16, &qword_280037598, &unk_265BA6430);
      goto LABEL_82;
    }

    v59 = v19;
    v60 = v103;
    sub_265B8D500(v16, v103, &qword_280037598, &unk_265BA6430);
    if (v57(&v16[v56], 1, v58) == 1)
    {
      break;
    }

    v61 = &v16[v56];
    v62 = v101;
    sub_265B8D5C8(v61, v101, type metadata accessor for SyncRecordChangesetProtobuf);
    v63.n128_u64[0] = *v60;
    if (*v60 != *v62 || (v64 = v103[1], v65 = *(v101 + 1), v66 = *(v64 + 16), v66 != *(v65 + 16)))
    {
LABEL_86:
      sub_265B8D4A0(v101, type metadata accessor for SyncRecordChangesetProtobuf);
      sub_265B8D4A0(v103, type metadata accessor for SyncRecordChangesetProtobuf);
      sub_265B8D568(v93, &qword_280037598, &unk_265BA6430);
      v19 = v92;
      v25 = v105;
      goto LABEL_87;
    }

    if (v66 && v64 != v65)
    {
      v67 = 0;
      v68 = (*(v111 + 80) + 32) & ~*(v111 + 80);
      v106 = v64 + v68;
      v69 = v65 + v68;
      while (v67 < *(v64 + 16))
      {
        v70 = *(v111 + 72) * v67;
        v71 = *(v111 + 16);
        v71(v112, v106 + v70, v4, v63);
        if (v67 >= *(v65 + 16))
        {
          goto LABEL_93;
        }

        v72 = v110;
        (v71)(v110, v69 + v70, v4);
        sub_265B8B89C(&qword_280037618, MEMORY[0x277CFB080], MEMORY[0x277CFB088]);
        v73 = sub_265BA6048();
        v74 = *v108;
        (*v108)(v72, v4);
        v74(v112, v4);
        if ((v73 & 1) == 0)
        {
          goto LABEL_86;
        }

        if (v66 == ++v67)
        {
          goto LABEL_73;
        }
      }

      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

LABEL_73:
    v75 = v103[2];
    v76 = *(v101 + 2);
    v77 = *(v75 + 16);
    if (v77 != *(v76 + 16))
    {
      goto LABEL_86;
    }

    if (v77 && v75 != v76)
    {
      v78 = 0;
      v79 = (*(v111 + 80) + 32) & ~*(v111 + 80);
      v106 = v75 + v79;
      v80 = v76 + v79;
      while (v78 < *(v75 + 16))
      {
        v81 = *(v111 + 72) * v78;
        v82 = *(v111 + 16);
        v82(v112, v106 + v81, v4, v63);
        if (v78 >= *(v76 + 16))
        {
          goto LABEL_95;
        }

        v83 = v110;
        (v82)(v110, v80 + v81, v4);
        sub_265B8B89C(&qword_280037618, MEMORY[0x277CFB080], MEMORY[0x277CFB088]);
        v84 = sub_265BA6048();
        v85 = *v108;
        (*v108)(v83, v4);
        v85(v112, v4);
        if ((v84 & 1) == 0)
        {
          goto LABEL_86;
        }

        if (v77 == ++v78)
        {
          goto LABEL_81;
        }
      }

LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
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
    }

LABEL_81:
    sub_265BA5DE8();
    sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v86 = v103;
    v87 = v101;
    v88 = sub_265BA6048();
    sub_265B8D4A0(v87, type metadata accessor for SyncRecordChangesetProtobuf);
    sub_265B8D4A0(v86, type metadata accessor for SyncRecordChangesetProtobuf);
    v16 = v93;
    sub_265B8D568(v93, &qword_280037598, &unk_265BA6430);
    v19 = v92;
    v25 = v105;
    if ((v88 & 1) == 0)
    {
      goto LABEL_87;
    }

LABEL_82:
    sub_265BA5DE8();
    sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v89 = sub_265BA6048();
    sub_265B8D4A0(v19, type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
    sub_265B8D4A0(v25, type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
    if (v89)
    {
      v24 = v100 + 1;
      if (v100 + 1 != v102)
      {
        continue;
      }
    }

    return v89 & 1;
  }

  sub_265B8D4A0(v60, type metadata accessor for SyncRecordChangesetProtobuf);
  v19 = v59;
  v25 = v105;
LABEL_91:
  sub_265B8D568(v16, &qword_280037620, &qword_265BA6AC8);
LABEL_87:
  sub_265B8D4A0(v19, type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
  sub_265B8D4A0(v25, type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
LABEL_88:
  v89 = 0;
  return v89 & 1;
}

uint64_t sub_265B8B36C(uint64_t a1, uint64_t a2)
{
  v45[3] = *MEMORY[0x277D85DE8];
  SyncChangesetRequest = type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf(0);
  v4 = MEMORY[0x28223BE20](SyncChangesetRequest);
  v6 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v9 = (&v39 - v8);
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (v10 && a1 != a2)
    {
      v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v12 = a1 + v11;
      v13 = a2 + v11;
      v14 = *(v7 + 72);
      v41 = 0;
      v42 = v14;
      while (1)
      {
        sub_265B8D438(v12, v9, type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf);
        sub_265B8D438(v13, v6, type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf);
        v15 = *v9 == *v6 && v9[1] == v6[1];
        if (!v15 && (sub_265BA60E8() & 1) == 0)
        {
LABEL_63:
          sub_265B8D4A0(v6, type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf);
          sub_265B8D4A0(v9, type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf);
          goto LABEL_64;
        }

        v16 = v9[2];
        v17 = v9[3];
        v18 = v6[2];
        v19 = v6[3];
        v20 = v17 >> 62;
        v21 = v19 >> 62;
        if (v17 >> 62 == 3)
        {
          break;
        }

        if (v20 > 1)
        {
          if (v20 == 2)
          {
            v28 = *(v16 + 16);
            v27 = *(v16 + 24);
            v25 = __OFSUB__(v27, v28);
            v22 = v27 - v28;
            if (v25)
            {
              goto LABEL_68;
            }

            goto LABEL_26;
          }

          v22 = 0;
          if (v21 > 1)
          {
            goto LABEL_20;
          }
        }

        else if (v20)
        {
          LODWORD(v22) = HIDWORD(v16) - v16;
          if (__OFSUB__(HIDWORD(v16), v16))
          {
            goto LABEL_67;
          }

          v22 = v22;
          if (v21 > 1)
          {
LABEL_20:
            if (v21 != 2)
            {
              if (v22)
              {
                goto LABEL_63;
              }

              goto LABEL_59;
            }

            v24 = *(v18 + 16);
            v23 = *(v18 + 24);
            v25 = __OFSUB__(v23, v24);
            v26 = v23 - v24;
            if (v25)
            {
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v22 = BYTE6(v17);
          if (v21 > 1)
          {
            goto LABEL_20;
          }
        }

LABEL_27:
        if (v21)
        {
          LODWORD(v26) = HIDWORD(v18) - v18;
          if (__OFSUB__(HIDWORD(v18), v18))
          {
            goto LABEL_66;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v19);
        }

LABEL_33:
        if (v22 != v26)
        {
          goto LABEL_63;
        }

        if (v22 >= 1)
        {
          if (v20 > 1)
          {
            if (v20 == 2)
            {
              v29 = *(v16 + 16);
              v39 = *(v16 + 24);
              v40 = v18;
              v30 = sub_265BA5C78();
              if (v30)
              {
                v31 = sub_265BA5C98();
                if (__OFSUB__(v29, v31))
                {
                  goto LABEL_71;
                }

                v30 += v29 - v31;
              }

              if (__OFSUB__(v39, v29))
              {
                goto LABEL_70;
              }

              goto LABEL_58;
            }

            memset(v45, 0, 14);
          }

          else
          {
            if (v20)
            {
              v40 = v6[2];
              v32 = v16;
              if (v16 >> 32 < v16)
              {
                goto LABEL_69;
              }

              v33 = sub_265BA5C78();
              if (v33)
              {
                v39 = v33;
                v34 = sub_265BA5C98();
                if (__OFSUB__(v32, v34))
                {
                  goto LABEL_72;
                }

                v30 = v32 - v34 + v39;
              }

              else
              {
                v30 = 0;
              }

LABEL_58:
              sub_265BA5C88();
              v36 = v41;
              sub_265B8C074(v30, v40, v19, v45);
              v41 = v36;
              if ((v45[0] & 1) == 0)
              {
                goto LABEL_63;
              }

              goto LABEL_59;
            }

            v45[0] = v9[2];
            LOWORD(v45[1]) = v17;
            BYTE2(v45[1]) = BYTE2(v17);
            BYTE3(v45[1]) = BYTE3(v17);
            BYTE4(v45[1]) = BYTE4(v17);
            BYTE5(v45[1]) = BYTE5(v17);
          }

          v35 = v41;
          sub_265B8C074(v45, v18, v19, &v44);
          v41 = v35;
          if (!v44)
          {
            goto LABEL_63;
          }
        }

LABEL_59:
        sub_265BA5DE8();
        sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v37 = sub_265BA6048();
        sub_265B8D4A0(v6, type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf);
        sub_265B8D4A0(v9, type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf);
        if (v37)
        {
          v13 += v42;
          v12 += v42;
          if (--v10)
          {
            continue;
          }
        }

        return v37 & 1;
      }

      v22 = 0;
      if (!v16 && v17 == 0xC000000000000000 && v19 >> 62 == 3)
      {
        v22 = 0;
        if (!v18 && v19 == 0xC000000000000000)
        {
          goto LABEL_59;
        }
      }

LABEL_26:
      if (v21 > 1)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }

    v37 = 1;
  }

  else
  {
LABEL_64:
    v37 = 0;
  }

  return v37 & 1;
}

uint64_t sub_265B8B89C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_265B8B8E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v20 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_20:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_265B8D438(v13, v10, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf);
      sub_265B8D438(v14, v7, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (sub_265BA60E8() & 1) == 0)
      {
        break;
      }

      v17 = v10[2] == v7[2] && v10[3] == v7[3];
      if (!v17 && (sub_265BA60E8() & 1) == 0)
      {
        break;
      }

      sub_265BA5DE8();
      sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_265BA6048();
      sub_265B8D4A0(v7, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf);
      sub_265B8D4A0(v10, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_265B8D4A0(v7, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf);
    sub_265B8D4A0(v10, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf);
    goto LABEL_20;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_265B8BBB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScoreEstimationMarkerProtobuf(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_14:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_265B8D438(v13, v10, type metadata accessor for ScoreEstimationMarkerProtobuf);
      sub_265B8D438(v14, v7, type metadata accessor for ScoreEstimationMarkerProtobuf);
      if (*v10 != *v7 || v10[1] != v7[1] || v10[2] != v7[2] || v10[3] != v7[3])
      {
        break;
      }

      sub_265BA5DE8();
      sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v16 = sub_265BA6048();
      sub_265B8D4A0(v7, type metadata accessor for ScoreEstimationMarkerProtobuf);
      sub_265B8D4A0(v10, type metadata accessor for ScoreEstimationMarkerProtobuf);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_265B8D4A0(v7, type metadata accessor for ScoreEstimationMarkerProtobuf);
    sub_265B8D4A0(v10, type metadata accessor for ScoreEstimationMarkerProtobuf);
    goto LABEL_14;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_265B8BE7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v8);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v12, v18, v8);
    sub_265B8B89C(v31, v32, v33);
    v25 = sub_265BA6048();
    v26 = *v21;
    (*v21)(v12, v8);
    v26(v14, v8);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_265B8C074@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_265BA5C78();
    if (v10)
    {
      v11 = sub_265BA5C98();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_265BA5C88();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_265BA5C78();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_265BA5C98();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_265BA5C88();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_265B8C2A4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_265B8C434(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_265B85D10(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_265B8C074(v13, a3, a4, &v12);
  v10 = v4;
  sub_265B85D10(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_265B8C434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_265BA5C78();
  v11 = result;
  if (result)
  {
    result = sub_265BA5C98();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_265BA5C88();
  sub_265B8C074(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_265B8C4EC(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_265B85C84(a3, a4);
          return sub_265B8C2A4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s21SeymourServerProtocol34FetchSyncChangesetResponseProtobufV04ZonefH0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037620, &qword_265BA6AC8);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  if (*a1 != *a2 && (sub_265BA60E8() & 1) == 0 || !sub_265B8C4EC(a1[2], a1[3], a2[2], a2[3]))
  {
    goto LABEL_18;
  }

  v24 = v7;
  SyncChangesetResponse = type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  v14 = *(SyncChangesetResponse + 28);
  v15 = *(v11 + 48);
  sub_265B8D500(a1 + v14, v13, &qword_280037598, &unk_265BA6430);
  sub_265B8D500(a2 + v14, &v13[v15], &qword_280037598, &unk_265BA6430);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_265B8D500(v13, v10, &qword_280037598, &unk_265BA6430);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v20 = &v13[v15];
      v21 = v24;
      sub_265B8D5C8(v20, v24, type metadata accessor for SyncRecordChangesetProtobuf);
      if (*v10 == *v21 && (sub_265B8BE7C(*(v10 + 1), *(v21 + 8), MEMORY[0x277CFB080], &qword_280037618, MEMORY[0x277CFB080], MEMORY[0x277CFB088]) & 1) != 0 && (sub_265B8BE7C(*(v10 + 2), *(v21 + 16), MEMORY[0x277CFB080], &qword_280037618, MEMORY[0x277CFB080], MEMORY[0x277CFB088]) & 1) != 0)
      {
        sub_265BA5DE8();
        sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v22 = sub_265BA6048();
        sub_265B8D4A0(v21, type metadata accessor for SyncRecordChangesetProtobuf);
        sub_265B8D4A0(v10, type metadata accessor for SyncRecordChangesetProtobuf);
        sub_265B8D568(v13, &qword_280037598, &unk_265BA6430);
        if (v22)
        {
          goto LABEL_7;
        }

LABEL_18:
        v17 = 0;
        return v17 & 1;
      }

      sub_265B8D4A0(v21, type metadata accessor for SyncRecordChangesetProtobuf);
      sub_265B8D4A0(v10, type metadata accessor for SyncRecordChangesetProtobuf);
      v18 = &qword_280037598;
      v19 = &unk_265BA6430;
LABEL_17:
      sub_265B8D568(v13, v18, v19);
      goto LABEL_18;
    }

    sub_265B8D4A0(v10, type metadata accessor for SyncRecordChangesetProtobuf);
LABEL_10:
    v18 = &qword_280037620;
    v19 = &qword_265BA6AC8;
    goto LABEL_17;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_265B8D568(v13, &qword_280037598, &unk_265BA6430);
LABEL_7:
  sub_265BA5DE8();
  sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v17 = sub_265BA6048();
  return v17 & 1;
}

uint64_t sub_265B8D024(uint64_t a1)
{
  result = sub_265BA5DE8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_265BA5DE8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_265B8D240(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_265B8D2E0(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    sub_265BA5DE8();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_265B8D2E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_265B8D36C(uint64_t a1)
{
  sub_265BA5DE8();
  if (v1 <= 0x3F)
  {
    sub_265B8D2E0(319, qword_2813B53E0, type metadata accessor for SyncRecordChangesetProtobuf, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_265B8D438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_265B8D4A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_265B8D500(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_265B8D568(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_265B8D5C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t FetchScoresResponseProtobuf.communityScores.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037670, &unk_265BA6B00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  ScoresResponseProtobuf = type metadata accessor for FetchScoresResponseProtobuf(0);
  sub_265B8D874(v1 + *(ScoresResponseProtobuf + 20), v5);
  v7 = sub_265BA5CF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_265BA5CE8();
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_265B8D568(v5, &qword_280037670, &unk_265BA6B00);
  }

  return result;
}

uint64_t type metadata accessor for FetchScoresResponseProtobuf(uint64_t a1)
{
  result = qword_280037698;
  if (!qword_280037698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265B8D874(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037670, &unk_265BA6B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265B8D8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037670, &unk_265BA6B00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  ScoresResponseProtobuf = type metadata accessor for FetchScoresResponseProtobuf(0);
  sub_265B8D874(a1 + *(ScoresResponseProtobuf + 20), v6);
  v8 = sub_265BA5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v6, v8);
  }

  sub_265BA5CE8();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_265B8D568(v6, &qword_280037670, &unk_265BA6B00);
  }

  return result;
}

uint64_t sub_265B8DA3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA5CF8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *(type metadata accessor for FetchScoresResponseProtobuf(0) + 20);
  sub_265B8D568(a2 + v8, &qword_280037670, &unk_265BA6B00);
  (*(v5 + 32))(a2 + v8, v7, v4);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t FetchScoresResponseProtobuf.communityScores.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchScoresResponseProtobuf(0) + 20);
  sub_265B8D568(v1 + v3, &qword_280037670, &unk_265BA6B00);
  v4 = sub_265BA5CF8();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchScoresResponseProtobuf.communityScores.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037670, &unk_265BA6B00) - 8) + 64);
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
  v9 = sub_265BA5CF8();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for FetchScoresResponseProtobuf(0) + 20);
  *(v5 + 12) = v15;
  sub_265B8D874(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_265BA5CE8();
    if (v16(v8, 1, v9) != 1)
    {
      sub_265B8D568(v8, &qword_280037670, &unk_265BA6B00);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_265B8DE44;
}

void sub_265B8DE44(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_265B8D568(v9 + v3, &qword_280037670, &unk_265BA6B00);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_265B8D568(v9 + v3, &qword_280037670, &unk_265BA6B00);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL FetchScoresResponseProtobuf.hasCommunityScores.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037670, &unk_265BA6B00);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  ScoresResponseProtobuf = type metadata accessor for FetchScoresResponseProtobuf(0);
  sub_265B8D874(v0 + *(ScoresResponseProtobuf + 20), v3);
  v5 = sub_265BA5CF8();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_265B8D568(v3, &qword_280037670, &unk_265BA6B00);
  return v6;
}

Swift::Void __swiftcall FetchScoresResponseProtobuf.clearCommunityScores()()
{
  v1 = *(type metadata accessor for FetchScoresResponseProtobuf(0) + 20);
  sub_265B8D568(v0 + v1, &qword_280037670, &unk_265BA6B00);
  v2 = sub_265BA5CF8();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t FetchScoresResponseProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_265BA5DE8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FetchScoresResponseProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = sub_265BA5DE8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FetchScoresResponseProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  v2 = *(type metadata accessor for FetchScoresResponseProtobuf(0) + 20);
  v3 = sub_265BA5CF8();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t sub_265B8E2AC()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037658);
  __swift_project_value_buffer(v0, qword_280037658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_265BA6410;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "communityScores";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_265BA5FD8();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_265BA5FE8();
}

uint64_t static FetchScoresResponseProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2800374E0 != -1)
  {
    swift_once();
  }

  v2 = sub_265BA6008();
  v3 = __swift_project_value_buffer(v2, qword_280037658);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t FetchScoresResponseProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_265BA5E38();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_265B8E534(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_265B8E534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FetchScoresResponseProtobuf(0);
  sub_265BA5CF8();
  sub_265B8F214(&qword_2800376C8, MEMORY[0x277D52850], MEMORY[0x277D52848]);
  return sub_265BA5ED8();
}

uint64_t FetchScoresResponseProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_265B8E640(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t sub_265B8E640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037670, &unk_265BA6B00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_265BA5CF8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ScoresResponseProtobuf = type metadata accessor for FetchScoresResponseProtobuf(0);
  sub_265B8D874(a1 + *(ScoresResponseProtobuf + 20), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_265B8D568(v7, &qword_280037670, &unk_265BA6B00);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_265B8F214(&qword_2800376C8, MEMORY[0x277D52850], MEMORY[0x277D52848]);
  sub_265BA5FC8();
  return (*(v9 + 8))(v11, v8);
}

uint64_t FetchScoresResponseProtobuf.hashValue.getter()
{
  sub_265BA6168();
  type metadata accessor for FetchScoresResponseProtobuf(0);
  sub_265B8F214(&qword_280037678, type metadata accessor for FetchScoresResponseProtobuf, &protocol conformance descriptor for FetchScoresResponseProtobuf);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B8E8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  v4 = *(a1 + 20);
  v5 = sub_265BA5CF8();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_265B8E968@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_265BA5DE8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_265B8E9D0(uint64_t a1)
{
  v3 = sub_265BA5DE8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_265B8EA88(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B8F214(&qword_2800376B0, type metadata accessor for FetchScoresResponseProtobuf, &protocol conformance descriptor for FetchScoresResponseProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B8EB04@<X0>(uint64_t a1@<X8>)
{
  if (qword_2800374E0 != -1)
  {
    swift_once();
  }

  v2 = sub_265BA6008();
  v3 = __swift_project_value_buffer(v2, qword_280037658);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_265B8EBAC(uint64_t a1)
{
  v2 = sub_265B8F214(&qword_280037688, type metadata accessor for FetchScoresResponseProtobuf, &protocol conformance descriptor for FetchScoresResponseProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B8EC18(uint64_t a1, uint64_t a2)
{
  sub_265B8F214(&qword_280037688, type metadata accessor for FetchScoresResponseProtobuf, &protocol conformance descriptor for FetchScoresResponseProtobuf);

  return sub_265BA5F08();
}

uint64_t _s21SeymourServerProtocol27FetchScoresResponseProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA5CF8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037670, &unk_265BA6B00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800376B8, &qword_265BA6CA8);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  v15 = *(type metadata accessor for FetchScoresResponseProtobuf(0) + 20);
  v16 = *(v12 + 56);
  sub_265B8D874(a1 + v15, v14);
  sub_265B8D874(a2 + v15, &v14[v16]);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_265B8D568(v14, &qword_280037670, &unk_265BA6B00);
LABEL_9:
      sub_265BA5DE8();
      sub_265B8F214(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_265BA6048();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  sub_265B8D874(v14, v10);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_265B8D568(v14, &qword_2800376B8, &qword_265BA6CA8);
    goto LABEL_7;
  }

  (*(v5 + 32))(v7, &v14[v16], v4);
  sub_265B8F214(&qword_2800376C0, MEMORY[0x277D52850], MEMORY[0x277D52858]);
  v19 = sub_265BA6048();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  sub_265B8D568(v14, &qword_280037670, &unk_265BA6B00);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

void sub_265B8F138(uint64_t a1)
{
  sub_265BA5DE8();
  if (v1 <= 0x3F)
  {
    sub_265B8F1BC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_265B8F1BC(uint64_t a1)
{
  if (!qword_2800376A8)
  {
    sub_265BA5CF8();
    v1 = sub_265BA6088();
    if (!v2)
    {
      atomic_store(v1, &qword_2800376A8);
    }
  }
}

uint64_t sub_265B8F214(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FetchSyncableCountsRequestProtobuf.zones.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t FetchSyncableCountsRequestProtobuf.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for FetchSyncableCountsRequestProtobuf(0);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B8F3C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B8F47C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t FetchSyncableCountsResponseProtobuf.init()@<X0>(unint64_t *a1@<X8>)
{
  *a1 = sub_265B90110(MEMORY[0x277D84F90]);
  type metadata accessor for FetchSyncableCountsResponseProtobuf(0);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t FetchSyncableCountsRequestProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_265BA5E38();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_265BA5E98();
    }
  }

  return result;
}

uint64_t FetchSyncableCountsRequestProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_265BA5F88(), !v4))
  {
    type metadata accessor for FetchSyncableCountsRequestProtobuf(0);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t sub_265B8F798(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B9020C(&qword_280037738, type metadata accessor for FetchSyncableCountsRequestProtobuf, &protocol conformance descriptor for FetchSyncableCountsRequestProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B8F838(uint64_t a1)
{
  v2 = sub_265B9020C(&qword_280037710, type metadata accessor for FetchSyncableCountsRequestProtobuf, &protocol conformance descriptor for FetchSyncableCountsRequestProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B8F8A4(uint64_t a1, uint64_t a2)
{
  sub_265B9020C(&qword_280037710, type metadata accessor for FetchSyncableCountsRequestProtobuf, &protocol conformance descriptor for FetchSyncableCountsRequestProtobuf);

  return sub_265BA5F08();
}

uint64_t FetchSyncableCountsResponseProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_265BA5E38();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_265B8FA04(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_265B8FA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_265BA5DA8();
  sub_265BA5DB8();
  return sub_265BA5E28();
}

uint64_t FetchSyncableCountsResponseProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_265BA5DA8(), sub_265BA5DB8(), result = sub_265BA5F28(), !v4))
  {
    type metadata accessor for FetchSyncableCountsResponseProtobuf(0);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t sub_265B8FB7C(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_265BA5DE8();
  sub_265B9020C(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B8FC7C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_265BA6168();
  a1(0);
  sub_265B9020C(a2, a3, a4);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B8FD90(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B9020C(&qword_280037730, type metadata accessor for FetchSyncableCountsResponseProtobuf, &protocol conformance descriptor for FetchSyncableCountsResponseProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B8FE30(uint64_t a1)
{
  v2 = sub_265B9020C(&qword_280037720, type metadata accessor for FetchSyncableCountsResponseProtobuf, &protocol conformance descriptor for FetchSyncableCountsResponseProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B8FE9C(uint64_t a1, uint64_t a2)
{
  sub_265B9020C(&qword_280037720, type metadata accessor for FetchSyncableCountsResponseProtobuf, &protocol conformance descriptor for FetchSyncableCountsResponseProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B8FF30(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_265BA5DE8();
  sub_265B9020C(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B8FFDC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 4 * v12);

    v17 = sub_265B96598(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 4 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_265B90110(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037740, &qword_265BA6FF8);
    v3 = sub_265BA60C8();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_265B96598(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_265B9020C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_265B904D4()
{
  if (!qword_2813B4AB0)
  {
    v0 = sub_265BA6068();
    if (!v1)
    {
      atomic_store(v0, &qword_2813B4AB0);
    }
  }
}

uint64_t sub_265B90564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = sub_265BA5DE8();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_265B905EC()
{
  if (!qword_2813B4AF0[0])
  {
    v0 = sub_265BA6018();
    if (!v1)
    {
      atomic_store(v0, qword_2813B4AF0);
    }
  }
}

void ServerErrorProtobuf.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t ServerErrorProtobuf.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t ServerErrorProtobuf.zone.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ServerErrorProtobuf.zone.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ServerErrorProtobuf.zones.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t ServerErrorProtobuf.argumentName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ServerErrorProtobuf.argumentName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ServerErrorProtobuf.errorDescription.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ServerErrorProtobuf.errorDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t ServerErrorProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ServerErrorProtobuf(0) + 36);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ServerErrorProtobuf(uint64_t a1)
{
  result = qword_2813B5618;
  if (!qword_2813B5618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ServerErrorProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ServerErrorProtobuf(0) + 36);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t ServerErrorProtobuf.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0xD;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_265B90A90(uint64_t a1, uint64_t a2)
{
  sub_265BA6168();
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B90AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B91174();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_265B90B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_265BA6168();
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t ServerErrorProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v1 = MEMORY[0x277D84F90];
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = v1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  type metadata accessor for ServerErrorProtobuf(0);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B90C50()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037748);
  __swift_project_value_buffer(v0, qword_280037748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA7000;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "zone";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "zones";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "argumentName";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "errorDescription";
  *(v15 + 8) = 16;
  *(v15 + 16) = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t ServerErrorProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_265BA5E38();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          sub_265B91174();
          sub_265BA5E48();
        }

        else if (result == 2)
        {
          goto LABEL_4;
        }
      }

      else if (result == 3)
      {
        sub_265BA5E98();
      }

      else if (result == 4 || result == 5)
      {
LABEL_4:
        sub_265BA5EB8();
      }

      result = sub_265BA5E38();
    }
  }

  return result;
}

uint64_t ServerErrorProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_265B91174(), result = sub_265BA5F38(), !v4))
  {
    v6 = v3[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_265BA5FA8(), !v4))
    {
      if (!*(v3[4] + 16) || (result = sub_265BA5F88(), !v4))
      {
        v8 = v3[6];
        v9 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v9 = v3[5] & 0xFFFFFFFFFFFFLL;
        }

        if (!v9 || (result = sub_265BA5FA8(), !v4))
        {
          v10 = v3[8];
          v11 = HIBYTE(v10) & 0xF;
          if ((v10 & 0x2000000000000000) == 0)
          {
            v11 = v3[7] & 0xFFFFFFFFFFFFLL;
          }

          if (!v11 || (result = sub_265BA5FA8(), !v4))
          {
            type metadata accessor for ServerErrorProtobuf(0);
            return sub_265BA5DC8();
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_265B91174()
{
  result = qword_2813B5650;
  if (!qword_2813B5650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813B5650);
  }

  return result;
}

uint64_t ServerErrorProtobuf.hashValue.getter()
{
  sub_265BA6168();
  type metadata accessor for ServerErrorProtobuf(0);
  sub_265B9206C(&qword_280037778, type metadata accessor for ServerErrorProtobuf, &protocol conformance descriptor for ServerErrorProtobuf);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B91254@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = MEMORY[0x277D84F90];
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B912B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B9132C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_265B913F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B9206C(&qword_280037798, type metadata accessor for ServerErrorProtobuf, &protocol conformance descriptor for ServerErrorProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B91494(uint64_t a1)
{
  v2 = sub_265B9206C(&qword_2813B5630, type metadata accessor for ServerErrorProtobuf, &protocol conformance descriptor for ServerErrorProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B91500(uint64_t a1, uint64_t a2)
{
  sub_265B9206C(&qword_2813B5630, type metadata accessor for ServerErrorProtobuf, &protocol conformance descriptor for ServerErrorProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B91580()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037760);
  __swift_project_value_buffer(v0, qword_280037760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_265BA7010;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 0;
  *v5 = "bootstrapRequired";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_265BA5FD8();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "mismatchedZones";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "invalidZone";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "invalidPayload";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "invalidArgument";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "transportFailed";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "serverFailed";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "fetchRequired";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "cacheFailed";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "zoneCreationRequired";
  *(v24 + 1) = 20;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "zoneDeletionRequired";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "noEncryptionKey";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "resetRequired";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v8();
  return sub_265BA5FE8();
}

uint64_t _s21SeymourServerProtocol0B13ErrorProtobufV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v4 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v4 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v4 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v4 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v4 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v4 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v4 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v4 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      case 9:
        if (v4 != 9)
        {
          return 0;
        }

        goto LABEL_6;
      case 10:
        if (v4 != 10)
        {
          return 0;
        }

        goto LABEL_6;
      case 11:
        if (v4 != 11)
        {
          return 0;
        }

        goto LABEL_6;
      case 12:
        if (v4 != 12)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v4)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v4 == v5)
  {
LABEL_6:
    v6 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v6 || (sub_265BA60E8()) && (sub_265B8A5E0(a1[4], a2[4]) & 1) != 0 && (a1[5] == a2[5] && a1[6] == a2[6] || (sub_265BA60E8()) && (a1[7] == a2[7] && a1[8] == a2[8] || (sub_265BA60E8()))
    {
      type metadata accessor for ServerErrorProtobuf(0);
      sub_265BA5DE8();
      sub_265B9206C(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_265BA6048() & 1;
    }
  }

  return 0;
}

unint64_t sub_265B91C18()
{
  result = qword_2813B5648;
  if (!qword_2813B5648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813B5648);
  }

  return result;
}

unint64_t sub_265B91C70()
{
  result = qword_2813B5638;
  if (!qword_2813B5638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813B5638);
  }

  return result;
}

unint64_t sub_265B91CC8()
{
  result = qword_280037780;
  if (!qword_280037780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280037788, &qword_265BA7080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280037780);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_265B91D78()
{
  result = qword_2813B5640;
  if (!qword_2813B5640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813B5640);
  }

  return result;
}

void sub_265B91F14(uint64_t a1)
{
  sub_265B904D4();
  if (v1 <= 0x3F)
  {
    sub_265BA5DE8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ServerErrorProtobuf.ErrorType(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ServerErrorProtobuf.ErrorType(uint64_t result, int a2, int a3)
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

uint64_t sub_265B92020(uint64_t a1)
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

uint64_t sub_265B9203C(uint64_t result, int a2)
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

uint64_t sub_265B9206C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ScoreEstimationMarkerProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScoreEstimationMarkerProtobuf(0) + 32);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ScoreEstimationMarkerProtobuf(uint64_t a1)
{
  result = qword_2800377D8;
  if (!qword_2800377D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScoreEstimationMarkerProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ScoreEstimationMarkerProtobuf(0) + 32);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ScoreEstimationMarkerProtobuf.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for ScoreEstimationMarkerProtobuf(0);
  *a1 = 0;
  a1[1] = 0;
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B92354()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_2800377A0);
  __swift_project_value_buffer(v0, qword_2800377A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA7360;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "position";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "height";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "increment";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "desiredPosition";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t static ScoreEstimationMarkerProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280037508 != -1)
  {
    swift_once();
  }

  v2 = sub_265BA6008();
  v3 = __swift_project_value_buffer(v2, qword_2800377A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ScoreEstimationMarkerProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_265BA5E38();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
LABEL_2:
        sub_265BA5E68();
      }
    }

    else if (result == 1)
    {
      sub_265BA5E78();
    }

    else if (result == 2)
    {
      goto LABEL_2;
    }
  }
}

uint64_t ScoreEstimationMarkerProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_265BA5F68(), !v4))
  {
    if (!v3[1] || (result = sub_265BA5F58(), !v4))
    {
      if (!v3[2] || (result = sub_265BA5F58(), !v4))
      {
        if (!v3[3] || (result = sub_265BA5F58(), !v4))
        {
          type metadata accessor for ScoreEstimationMarkerProtobuf(0);
          return sub_265BA5DC8();
        }
      }
    }
  }

  return result;
}

uint64_t ScoreEstimationMarkerProtobuf.hashValue.getter()
{
  sub_265BA6168();
  type metadata accessor for ScoreEstimationMarkerProtobuf(0);
  sub_265B92EA8(&qword_2800377B8, type metadata accessor for ScoreEstimationMarkerProtobuf, &protocol conformance descriptor for ScoreEstimationMarkerProtobuf);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B92874@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B928B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B92928(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_265B929F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B92EA8(&qword_2800377E8, type metadata accessor for ScoreEstimationMarkerProtobuf, &protocol conformance descriptor for ScoreEstimationMarkerProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B92A6C@<X0>(uint64_t a1@<X8>)
{
  if (qword_280037508 != -1)
  {
    swift_once();
  }

  v2 = sub_265BA6008();
  v3 = __swift_project_value_buffer(v2, qword_2800377A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_265B92B14(uint64_t a1)
{
  v2 = sub_265B92EA8(&qword_2800377C8, type metadata accessor for ScoreEstimationMarkerProtobuf, &protocol conformance descriptor for ScoreEstimationMarkerProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B92B80(uint64_t a1, uint64_t a2)
{
  sub_265B92EA8(&qword_2800377C8, type metadata accessor for ScoreEstimationMarkerProtobuf, &protocol conformance descriptor for ScoreEstimationMarkerProtobuf);

  return sub_265BA5F08();
}

uint64_t _s21SeymourServerProtocol29ScoreEstimationMarkerProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  type metadata accessor for ScoreEstimationMarkerProtobuf(0);
  sub_265BA5DE8();
  sub_265B92EA8(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B92E20(uint64_t a1)
{
  result = sub_265BA5DE8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_265B92EA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for SyncRecordType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SyncRecordType(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t ScoreCacheProtobuf.lowerScores.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ScoreCacheProtobuf.lowerMiddleScores.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ScoreCacheProtobuf.upperMiddleScores.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ScoreCacheProtobuf.upperScores.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t ScoreCacheProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScoreCacheProtobuf(0) + 32);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ScoreCacheProtobuf(uint64_t a1)
{
  result = qword_280037830;
  if (!qword_280037830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScoreCacheProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ScoreCacheProtobuf(0) + 32);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ScoreCacheProtobuf.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  a1[2] = v2;
  a1[3] = v2;
  type metadata accessor for ScoreCacheProtobuf(0);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B93384()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_2800377F0);
  __swift_project_value_buffer(v0, qword_2800377F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA7360;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "lowerScores";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lowerMiddleScores";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "upperMiddleScores";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "upperScores";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t static ScoreCacheProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280037510 != -1)
  {
    swift_once();
  }

  v2 = sub_265BA6008();
  v3 = __swift_project_value_buffer(v2, qword_2800377F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ScoreCacheProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_265BA5E38();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_4:
          sub_265BA5CA8();
          sub_265B940CC(&qword_280037808, MEMORY[0x277D50638], MEMORY[0x277D50630]);
          sub_265BA5EC8();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_4;
      }

      result = sub_265BA5E38();
    }
  }

  return result;
}

uint64_t ScoreCacheProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*(*v3 + 16))
  {
    sub_265BA5CA8();
    sub_265B940CC(&qword_280037808, MEMORY[0x277D50638], MEMORY[0x277D50630]);
    result = sub_265BA5FB8();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3[1] + 16))
  {
    sub_265BA5CA8();
    sub_265B940CC(&qword_280037808, MEMORY[0x277D50638], MEMORY[0x277D50630]);
    result = sub_265BA5FB8();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3[2] + 16))
  {
    sub_265BA5CA8();
    sub_265B940CC(&qword_280037808, MEMORY[0x277D50638], MEMORY[0x277D50630]);
    v7 = v5;
    result = sub_265BA5FB8();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v7 = v5;
  }

  if (!*(v3[3] + 16) || (sub_265BA5CA8(), sub_265B940CC(&qword_280037808, MEMORY[0x277D50638], MEMORY[0x277D50630]), result = sub_265BA5FB8(), !v7))
  {
    type metadata accessor for ScoreCacheProtobuf(0);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t ScoreCacheProtobuf.hashValue.getter()
{
  sub_265BA6168();
  type metadata accessor for ScoreCacheProtobuf(0);
  sub_265B940CC(&qword_280037810, type metadata accessor for ScoreCacheProtobuf, &protocol conformance descriptor for ScoreCacheProtobuf);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B93B3C@<X0>(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v1;
  a1[2] = v1;
  a1[3] = v1;
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B93BB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B940CC(&qword_280037848, type metadata accessor for ScoreCacheProtobuf, &protocol conformance descriptor for ScoreCacheProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B93C34@<X0>(uint64_t a1@<X8>)
{
  if (qword_280037510 != -1)
  {
    swift_once();
  }

  v2 = sub_265BA6008();
  v3 = __swift_project_value_buffer(v2, qword_2800377F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_265B93CDC(uint64_t a1)
{
  v2 = sub_265B940CC(&qword_280037820, type metadata accessor for ScoreCacheProtobuf, &protocol conformance descriptor for ScoreCacheProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B93D48(uint64_t a1, uint64_t a2)
{
  sub_265B940CC(&qword_280037820, type metadata accessor for ScoreCacheProtobuf, &protocol conformance descriptor for ScoreCacheProtobuf);

  return sub_265BA5F08();
}

uint64_t _s21SeymourServerProtocol18ScoreCacheProtobufV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_265B8BE34(*a1, *a2) & 1) == 0 || (sub_265B8BE34(a1[1], a2[1]) & 1) == 0 || (sub_265B8BE34(a1[2], a2[2]) & 1) == 0 || (sub_265B8BE34(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ScoreCacheProtobuf(0);
  sub_265BA5DE8();
  sub_265B940CC(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

void sub_265B93FEC(uint64_t a1)
{
  sub_265B94074(319);
  if (v1 <= 0x3F)
  {
    sub_265BA5DE8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_265B94074(uint64_t a1)
{
  if (!qword_280037840)
  {
    sub_265BA5CA8();
    v1 = sub_265BA6068();
    if (!v2)
    {
      atomic_store(v1, &qword_280037840);
    }
  }
}

uint64_t sub_265B940CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SubmitScoresRequestProtobuf.scores.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SubmitScoresRequestProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubmitScoresRequestProtobuf(0) + 20);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubmitScoresRequestProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubmitScoresRequestProtobuf(0) + 20);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubmitScoresRequestProtobuf.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for SubmitScoresRequestProtobuf(0);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t SubmitScoresResponseProtobuf.rejected.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf.reason.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf.reason.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf.score.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf.score.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_265B9453C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B945F8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf(0);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t SubmitScoresResponseProtobuf.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  type metadata accessor for SubmitScoresResponseProtobuf(0);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B9475C()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037850);
  __swift_project_value_buffer(v0, qword_280037850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_265BA6410;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "scores";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_265BA5FD8();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_265BA5FE8();
}

uint64_t SubmitScoresRequestProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_265BA5E38();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_265BA5CD8();
        sub_265B95DC0(&qword_280037898, MEMORY[0x277D521E0], MEMORY[0x277D521D8]);
        sub_265BA5EC8();
      }

      result = sub_265BA5E38();
    }
  }

  return result;
}

uint64_t SubmitScoresRequestProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_265BA5CD8(), sub_265B95DC0(&qword_280037898, MEMORY[0x277D521E0], MEMORY[0x277D521D8]), result = sub_265BA5FB8(), !v4))
  {
    type metadata accessor for SubmitScoresRequestProtobuf(0);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t static SubmitScoresRequestProtobuf.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_265B8BB68(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SubmitScoresRequestProtobuf(0);
  sub_265BA5DE8();
  sub_265B95DC0(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B94BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B95DC0(&qword_280037910, type metadata accessor for SubmitScoresRequestProtobuf, &protocol conformance descriptor for SubmitScoresRequestProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B94C90(uint64_t a1)
{
  v2 = sub_265B95DC0(&qword_2800378C8, type metadata accessor for SubmitScoresRequestProtobuf, &protocol conformance descriptor for SubmitScoresRequestProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B94CFC(uint64_t a1, uint64_t a2)
{
  sub_265B95DC0(&qword_2800378C8, type metadata accessor for SubmitScoresRequestProtobuf, &protocol conformance descriptor for SubmitScoresRequestProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B94D78(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_265B8BB68(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_265BA5DE8();
  sub_265B95DC0(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B94E3C()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037868);
  __swift_project_value_buffer(v0, qword_280037868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA6400;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "accepted";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rejected";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t SubmitScoresResponseProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_265BA5E38();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_265BA5E98();
      }

      else if (result == 2)
      {
        type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf(0);
        sub_265B95DC0(&qword_2800378A8, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf, &protocol conformance descriptor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf);
        sub_265BA5EC8();
      }

      result = sub_265BA5E38();
    }
  }

  return result;
}

uint64_t SubmitScoresResponseProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_265BA5F88(), !v4))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf(0), sub_265B95DC0(&qword_2800378A8, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf, &protocol conformance descriptor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf), result = sub_265BA5FB8(), !v4))
    {
      type metadata accessor for SubmitScoresResponseProtobuf(0);
      return sub_265BA5DC8();
    }
  }

  return result;
}

uint64_t static SubmitScoresResponseProtobuf.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_265B8A5E0(*a1, *a2) & 1) == 0 || (sub_265B8B8E4(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SubmitScoresResponseProtobuf(0);
  sub_265BA5DE8();
  sub_265B95DC0(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B95330@<X0>(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v1;
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B953A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B95DC0(&qword_280037908, type metadata accessor for SubmitScoresResponseProtobuf, &protocol conformance descriptor for SubmitScoresResponseProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B95448(uint64_t a1)
{
  v2 = sub_265B95DC0(&qword_2800378E0, type metadata accessor for SubmitScoresResponseProtobuf, &protocol conformance descriptor for SubmitScoresResponseProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B954B4(uint64_t a1, uint64_t a2)
{
  sub_265B95DC0(&qword_2800378E0, type metadata accessor for SubmitScoresResponseProtobuf, &protocol conformance descriptor for SubmitScoresResponseProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B95530(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_265B8A5E0(*a1, *a2) & 1) == 0 || (sub_265B8B8E4(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  sub_265BA5DE8();
  sub_265B95DC0(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B95604()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037880);
  __swift_project_value_buffer(v0, qword_280037880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA6400;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "reason";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_265BA5E38();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_265BA5EB8();
    }
  }

  return result;
}

uint64_t SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_265BA5FA8(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_265BA5FA8(), !v4))
    {
      type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf(0);
      return sub_265BA5DC8();
    }
  }

  return result;
}

uint64_t static SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_265BA60E8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_265BA60E8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf(0);
  sub_265BA5DE8();
  sub_265B95DC0(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B95A5C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_265BA6168();
  a1(0);
  sub_265B95DC0(a2, a3, a4);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B95AE4@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B95B5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B95DC0(&qword_280037900, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf, &protocol conformance descriptor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B95BFC(uint64_t a1)
{
  v2 = sub_265B95DC0(&qword_2800378A8, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf, &protocol conformance descriptor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B95C68(uint64_t a1, uint64_t a2)
{
  sub_265B95DC0(&qword_2800378A8, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf, &protocol conformance descriptor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B95CE4(void *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_265BA60E8() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_265BA60E8() & 1) == 0)
  {
    return 0;
  }

  sub_265BA5DE8();
  sub_265B95DC0(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B95DC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_265B96190(uint64_t a1)
{
  sub_265B96310(319, &qword_2813B4AE8, MEMORY[0x277D521E0]);
  if (v1 <= 0x3F)
  {
    sub_265BA5DE8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_265B96258(uint64_t a1)
{
  sub_265B904D4();
  if (v1 <= 0x3F)
  {
    sub_265B96310(319, &qword_2813B4AD8, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf);
    if (v2 <= 0x3F)
    {
      sub_265BA5DE8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_265B96310(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_265BA6068();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_265B9638C(uint64_t a1)
{
  result = sub_265BA5DE8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ServerError.init(wrapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getErrorValue();
  v5 = sub_265BA6118();
  if (*(v5 + 16) && (v6 = sub_265B96598(1635017060, 0xE400000000000000), (v7 & 1) != 0))
  {
    sub_265B96664(*(v5 + 56) + 32 * v6, &v12);

    if (swift_dynamicCast())
    {
      sub_265B966C0();
      sub_265BA5D38();
      goto LABEL_8;
    }
  }

  else
  {
  }

  swift_getErrorValue();
  v8 = sub_265BA6108();
  if (!v8)
  {
    sub_265B96610();
    swift_allocError();
    *v11 = xmmword_265BA7BE0;
    *(v11 + 16) = 10;
    swift_willThrow();
    return MEMORY[0x26676C880](a1);
  }

  ServerError.init(wrapping:)(v8, &v12);
LABEL_8:
  result = MEMORY[0x26676C880](a1);
  if (!v2)
  {
    v10 = v13;
    *a2 = v12;
    *(a2 + 16) = v10;
  }

  return result;
}

unint64_t sub_265B96598(uint64_t a1, uint64_t a2)
{
  sub_265BA6168();
  sub_265BA6058();
  v4 = sub_265BA6188();

  return sub_265B96714(a1, a2, v4);
}

unint64_t sub_265B96610()
{
  result = qword_2813B5578;
  if (!qword_2813B5578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813B5578);
  }

  return result;
}

uint64_t sub_265B96664(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_265B966C0()
{
  result = qword_2813B5580[0];
  if (!qword_2813B5580[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813B5580);
  }

  return result;
}

unint64_t sub_265B96714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_265BA60E8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_265B967E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA5D88();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_265B97898(&qword_280037920, MEMORY[0x277D53DA8]);
      v26 = sub_265BA6028();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_265B97898(&qword_280037928, MEMORY[0x277D53DB0]);
        v31 = sub_265BA6048();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t ServerError.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 <= 4)
  {
    if (*(v1 + 16) <= 1u)
    {
      v7 = v4 != 0;
    }

    else if (v4 == 2)
    {
      v7 = 2;
    }

    else if (v4 == 3)
    {
      v7 = 3;
    }

    else
    {
      v7 = 4;
    }

    MEMORY[0x26676C730](v7);

    return sub_265B96DC8(a1, v3);
  }

  else
  {
    v5 = *(v1 + 8);
    if (*(v1 + 16) <= 7u)
    {
      if (v4 == 5)
      {
        v6 = 7;
      }

      else if (v4 == 6)
      {
        v6 = 9;
      }

      else
      {
        v6 = 10;
      }

LABEL_22:
      MEMORY[0x26676C730](v6);

      return sub_265BA6058();
    }

    if (v4 == 8)
    {
      v6 = 11;
      goto LABEL_22;
    }

    if (v4 == 9)
    {
      v6 = 12;
      goto LABEL_22;
    }

    if (v3 | v5)
    {
      if (v3 ^ 1 | v5)
      {
        v9 = 8;
      }

      else
      {
        v9 = 6;
      }
    }

    else
    {
      v9 = 5;
    }

    return MEMORY[0x26676C730](v9);
  }
}

uint64_t ServerError.hashValue.getter()
{
  v1 = *(v0 + 16);
  *&v3[9] = *v0;
  v4 = v1;
  sub_265BA6168();
  ServerError.hash(into:)(v3);
  return sub_265BA6188();
}

uint64_t sub_265B96D18()
{
  v1 = *(v0 + 16);
  *&v3[9] = *v0;
  v4 = v1;
  sub_265BA6168();
  ServerError.hash(into:)(v3);
  return sub_265BA6188();
}

uint64_t sub_265B96D70(uint64_t a1)
{
  v2 = *(v1 + 16);
  *&v4[9] = *v1;
  v5 = v2;
  sub_265BA6168();
  ServerError.hash(into:)(v4);
  return sub_265BA6188();
}

uint64_t sub_265B96DC8(__int128 *a1, uint64_t a2)
{
  v4 = sub_265BA5D88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v25 = a1[2];
  v26 = v8;
  v27 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v22[0] = a1;
  v23 = v10;
  v24 = v9;
  v11 = sub_265BA6188();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v22[2] = v5 + 16;
  v22[3] = v11;
  v22[1] = v5 + 8;

  v17 = 0;
  for (i = 0; v14; v17 ^= v21)
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v4);
    sub_265B97898(&qword_280037920, MEMORY[0x277D53DA8]);
    v21 = sub_265BA6028();
    result = (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return MEMORY[0x26676C730](v17);
    }

    v14 = *(a2 + 56 + 8 * v19);
    ++i;
    if (v14)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s21SeymourServerProtocol0B5ErrorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (v4 <= 4)
  {
    if (*(a1 + 16) <= 1u)
    {
      if (*(a1 + 16))
      {
        if (v7 == 1)
        {
          sub_265B977E0(*a2, a2[1], 1u);
          sub_265B977E0(v3, v2, 1u);
          LOBYTE(v11) = sub_265B967E0(v3, v6);
          sub_265B9783C(v3, v2, 1u);
          v12 = v6;
          v13 = v5;
          v14 = 1;
          goto LABEL_63;
        }
      }

      else if (!*(a2 + 16))
      {
        sub_265B977E0(*a2, a2[1], 0);
        sub_265B977E0(v3, v2, 0);
        v11 = sub_265B967E0(v3, v6);
        sub_265B9783C(v3, v2, 0);
        v12 = v6;
        v13 = v5;
        v14 = 0;
        goto LABEL_63;
      }
    }

    else if (v4 == 2)
    {
      if (v7 == 2)
      {
        sub_265B977E0(*a2, a2[1], 2u);
        sub_265B977E0(v3, v2, 2u);
        LOBYTE(v11) = sub_265B967E0(v3, v6);
        sub_265B9783C(v3, v2, 2u);
        v12 = v6;
        v13 = v5;
        v14 = 2;
        goto LABEL_63;
      }
    }

    else if (v4 == 3)
    {
      if (v7 == 3)
      {
        sub_265B977E0(*a2, a2[1], 3u);
        sub_265B977E0(v3, v2, 3u);
        LOBYTE(v11) = sub_265B967E0(v3, v6);
        sub_265B9783C(v3, v2, 3u);
        v12 = v6;
        v13 = v5;
        v14 = 3;
        goto LABEL_63;
      }
    }

    else if (v7 == 4)
    {
      sub_265B977E0(*a2, a2[1], 4u);
      sub_265B977E0(v3, v2, 4u);
      LOBYTE(v11) = sub_265B967E0(v3, v6);
      sub_265B9783C(v3, v2, 4u);
      v12 = v6;
      v13 = v5;
      v14 = 4;
      goto LABEL_63;
    }

    goto LABEL_56;
  }

  if (*(a1 + 16) <= 7u)
  {
    if (v4 == 5)
    {
      if (v7 == 5)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_265B977E0(*a1, v2, 5u);
          sub_265B977E0(v3, v2, 5u);
          sub_265B9783C(v3, v2, 5u);
          v8 = v3;
          v9 = v2;
          v10 = 5;
          goto LABEL_55;
        }

        LOBYTE(v11) = sub_265BA60E8();
        sub_265B977E0(v6, v5, 5u);
        sub_265B977E0(v3, v2, 5u);
        sub_265B9783C(v3, v2, 5u);
        v12 = v6;
        v13 = v5;
        v14 = 5;
        goto LABEL_63;
      }
    }

    else if (v4 == 6)
    {
      if (v7 == 6)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_265B977E0(*a1, v2, 6u);
          sub_265B977E0(v3, v2, 6u);
          sub_265B9783C(v3, v2, 6u);
          v8 = v3;
          v9 = v2;
          v10 = 6;
LABEL_55:
          sub_265B9783C(v8, v9, v10);
          return 1;
        }

        LOBYTE(v11) = sub_265BA60E8();
        sub_265B977E0(v6, v5, 6u);
        sub_265B977E0(v3, v2, 6u);
        sub_265B9783C(v3, v2, 6u);
        v12 = v6;
        v13 = v5;
        v14 = 6;
        goto LABEL_63;
      }
    }

    else if (v7 == 7)
    {
      if (v3 == v6 && v2 == v5)
      {
        sub_265B977E0(*a1, v2, 7u);
        sub_265B977E0(v3, v2, 7u);
        sub_265B9783C(v3, v2, 7u);
        v8 = v3;
        v9 = v2;
        v10 = 7;
        goto LABEL_55;
      }

      LOBYTE(v11) = sub_265BA60E8();
      sub_265B977E0(v6, v5, 7u);
      sub_265B977E0(v3, v2, 7u);
      sub_265B9783C(v3, v2, 7u);
      v12 = v6;
      v13 = v5;
      v14 = 7;
      goto LABEL_63;
    }

LABEL_56:
    sub_265B977E0(*a2, a2[1], v7);
    sub_265B977E0(v3, v2, v4);
    sub_265B9783C(v3, v2, v4);
    sub_265B9783C(v6, v5, v7);
    return 0;
  }

  if (v4 == 8)
  {
    if (v7 == 8)
    {
      if (v3 == v6 && v2 == v5)
      {
        sub_265B977E0(*a1, v2, 8u);
        sub_265B977E0(v3, v2, 8u);
        sub_265B9783C(v3, v2, 8u);
        v8 = v3;
        v9 = v2;
        v10 = 8;
        goto LABEL_55;
      }

      LOBYTE(v11) = sub_265BA60E8();
      sub_265B977E0(v6, v5, 8u);
      sub_265B977E0(v3, v2, 8u);
      sub_265B9783C(v3, v2, 8u);
      v12 = v6;
      v13 = v5;
      v14 = 8;
      goto LABEL_63;
    }

    goto LABEL_56;
  }

  if (v4 != 9)
  {
    if (v3 | v2)
    {
      if (!(v3 ^ 1 | v2))
      {
        if (v7 == 10 && v6 == 1 && !v5)
        {
          sub_265B9783C(*a1, v2, 0xAu);
          v15 = 1;
          sub_265B9783C(1, 0, 0xAu);
          return v15;
        }

        goto LABEL_56;
      }

      if (v7 != 10 || v6 != 2 || v5)
      {
        goto LABEL_56;
      }

      sub_265B9783C(*a1, v2, 0xAu);
      v8 = 2;
    }

    else
    {
      if (v7 != 10 || v5 | v6)
      {
        goto LABEL_56;
      }

      sub_265B9783C(*a1, v2, 0xAu);
      v8 = 0;
    }

    v9 = 0;
    v10 = 10;
    goto LABEL_55;
  }

  if (v7 != 9)
  {
    goto LABEL_56;
  }

  if (v3 == v6 && v2 == v5)
  {
    sub_265B977E0(*a1, v2, 9u);
    sub_265B977E0(v3, v2, 9u);
    sub_265B9783C(v3, v2, 9u);
    v8 = v3;
    v9 = v2;
    v10 = 9;
    goto LABEL_55;
  }

  LOBYTE(v11) = sub_265BA60E8();
  sub_265B977E0(v6, v5, 9u);
  sub_265B977E0(v3, v2, 9u);
  sub_265B9783C(v3, v2, 9u);
  v12 = v6;
  v13 = v5;
  v14 = 9;
LABEL_63:
  sub_265B9783C(v12, v13, v14);
  return v11 & 1;
}

unint64_t sub_265B976A4()
{
  result = qword_280037918;
  if (!qword_280037918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280037918);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21SeymourServerProtocol0B5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 9)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 10);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_265B9772C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 17))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_265B97774(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 16) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
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

uint64_t sub_265B977B8(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *result = a2 - 10;
    *(result + 8) = 0;
    LOBYTE(a2) = 10;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_265B977E0(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 4u)
  {
    if (a3 <= 6u)
    {
      if (a3 == 5)
      {
      }

      v3 = a2;
      if (a3 == 6)
      {
      }
    }

    else if (a3 == 7 || a3 == 8 || a3 == 9)
    {
    }
  }

  else if (a3 < 5u)
  {
  }

  return v3;
}

uint64_t sub_265B9783C(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 4u)
  {
    if (a3 <= 6u)
    {
      if (a3 == 5)
      {
      }

      v3 = a2;
      if (a3 == 6)
      {
      }
    }

    else if (a3 == 7 || a3 == 8 || a3 == 9)
    {
    }
  }

  else if (a3 < 5u)
  {
  }

  return v3;
}

uint64_t sub_265B97898(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_265BA5D88();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SyncRecordChangesetProtobuf.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = 0;
  a1[1] = v2;
  a1[2] = v2;
  type metadata accessor for SyncRecordChangesetProtobuf(0);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t type metadata accessor for SyncRecordChangesetProtobuf(uint64_t a1)
{
  result = qword_2813B5418;
  if (!qword_2813B5418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SyncRecordChangesetProtobuf.inserted.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SyncRecordChangesetProtobuf.deleted.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SyncRecordChangesetProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SyncRecordChangesetProtobuf(0) + 28);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SyncRecordChangesetProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SyncRecordChangesetProtobuf(0) + 28);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_265B97BA0()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037930);
  __swift_project_value_buffer(v0, qword_280037930);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA6420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "inserted";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 5;
  *v11 = "deleted";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t static SyncRecordChangesetProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280037530 != -1)
  {
    swift_once();
  }

  v2 = sub_265BA6008();
  v3 = __swift_project_value_buffer(v2, qword_280037930);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SyncRecordChangesetProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_265BA5E38();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 5 || result == 4)
      {
        sub_265BA5D98();
        sub_265B9885C(&qword_2813B5658, MEMORY[0x277CFB080], MEMORY[0x277CFB078]);
        sub_265BA5EC8();
      }

      else if (result == 2)
      {
        sub_265BA5EA8();
      }

      result = sub_265BA5E38();
    }
  }

  return result;
}

uint64_t SyncRecordChangesetProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_265BA5F98(), !v4))
  {
    if (!*(v3[1] + 16) || (sub_265BA5D98(), sub_265B9885C(&qword_2813B5658, MEMORY[0x277CFB080], MEMORY[0x277CFB078]), result = sub_265BA5FB8(), !v4))
    {
      if (!*(v3[2] + 16) || (sub_265BA5D98(), sub_265B9885C(&qword_2813B5658, MEMORY[0x277CFB080], MEMORY[0x277CFB078]), result = sub_265BA5FB8(), !v4))
      {
        type metadata accessor for SyncRecordChangesetProtobuf(0);
        return sub_265BA5DC8();
      }
    }
  }

  return result;
}

uint64_t SyncRecordChangesetProtobuf.hashValue.getter()
{
  sub_265BA6168();
  type metadata accessor for SyncRecordChangesetProtobuf(0);
  sub_265B9885C(&qword_280037948, type metadata accessor for SyncRecordChangesetProtobuf, &protocol conformance descriptor for SyncRecordChangesetProtobuf);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B981C4@<X0>(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = 0;
  a1[1] = v1;
  a1[2] = v1;
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B98210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B98284(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_265B9834C(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B9885C(&qword_280037958, type metadata accessor for SyncRecordChangesetProtobuf, &protocol conformance descriptor for SyncRecordChangesetProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B983C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_280037530 != -1)
  {
    swift_once();
  }

  v2 = sub_265BA6008();
  v3 = __swift_project_value_buffer(v2, qword_280037930);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_265B98470(uint64_t a1)
{
  v2 = sub_265B9885C(qword_2813B5430, type metadata accessor for SyncRecordChangesetProtobuf, &protocol conformance descriptor for SyncRecordChangesetProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B984DC(uint64_t a1, uint64_t a2)
{
  sub_265B9885C(qword_2813B5430, type metadata accessor for SyncRecordChangesetProtobuf, &protocol conformance descriptor for SyncRecordChangesetProtobuf);

  return sub_265BA5F08();
}

uint64_t _s21SeymourServerProtocol27SyncRecordChangesetProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (sub_265B88EA8(*(a1 + 8), *(a2 + 8)) & 1) == 0 || (sub_265B88EA8(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SyncRecordChangesetProtobuf(0);
  sub_265BA5DE8();
  sub_265B9885C(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

void sub_265B98770(uint64_t a1)
{
  sub_265B98804(319);
  if (v1 <= 0x3F)
  {
    sub_265BA5DE8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_265B98804(uint64_t a1)
{
  if (!qword_2813B4AE0)
  {
    sub_265BA5D98();
    v1 = sub_265BA6068();
    if (!v2)
    {
      atomic_store(v1, &qword_2813B4AE0);
    }
  }
}

uint64_t sub_265B9885C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t EncryptionKeyProofProtobuf.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EncryptionKeyProofProtobuf.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EncryptionKeyProofProtobuf.etag.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EncryptionKeyProofProtobuf.etag.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t EncryptionKeyProofProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EncryptionKeyProofProtobuf(0) + 24);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EncryptionKeyProofProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EncryptionKeyProofProtobuf(0) + 24);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EncryptionKeyProofProtobuf.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  type metadata accessor for EncryptionKeyProofProtobuf(0);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t SubmitSyncChangesetRequestProtobuf.zoneChangesets.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf.key.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037628, &unk_265BA6AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(v1 + *(v6 + 24), v5, &qword_280037628, &unk_265BA6AD0);
  v7 = type metadata accessor for EncryptionKeyProofProtobuf(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_265B99550(v5, a1, type metadata accessor for EncryptionKeyProofProtobuf);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_265B8D568(v5, &qword_280037628, &unk_265BA6AD0);
  }

  return result;
}

uint64_t sub_265B98DE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037628, &unk_265BA6AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(a1 + *(v7 + 24), v6, &qword_280037628, &unk_265BA6AD0);
  v8 = type metadata accessor for EncryptionKeyProofProtobuf(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_265B99550(v6, a2, type metadata accessor for EncryptionKeyProofProtobuf);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_265B8D568(v6, &qword_280037628, &unk_265BA6AD0);
  }

  return result;
}

uint64_t sub_265B98F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EncryptionKeyProofProtobuf(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B99B4C(a1, v7, type metadata accessor for EncryptionKeyProofProtobuf);
  v8 = *(type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0) + 24);
  sub_265B8D568(a2 + v8, &qword_280037628, &unk_265BA6AD0);
  sub_265B99550(v7, a2 + v8, type metadata accessor for EncryptionKeyProofProtobuf);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf.key.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0) + 24);
  sub_265B8D568(v1 + v3, &qword_280037628, &unk_265BA6AD0);
  sub_265B99550(a1, v1 + v3, type metadata accessor for EncryptionKeyProofProtobuf);
  v4 = type metadata accessor for EncryptionKeyProofProtobuf(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf.key.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037628, &unk_265BA6AD0) - 8) + 64);
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
  v9 = type metadata accessor for EncryptionKeyProofProtobuf(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0) + 24);
  *(v5 + 12) = v15;
  sub_265B8D500(v1 + v15, v8, &qword_280037628, &unk_265BA6AD0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0xE000000000000000;
    _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_265B8D568(v8, &qword_280037628, &unk_265BA6AD0);
    }
  }

  else
  {
    sub_265B99550(v8, v14, type metadata accessor for EncryptionKeyProofProtobuf);
  }

  return sub_265B99348;
}

uint64_t SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf.recordChangeset.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(v1 + *(v6 + 28), v5, &qword_280037598, &unk_265BA6430);
  v7 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_265B99550(v5, a1, type metadata accessor for SyncRecordChangesetProtobuf);
  }

  v9 = MEMORY[0x277D84F90];
  *a1 = 0;
  a1[1] = v9;
  a1[2] = v9;
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_265B8D568(v5, &qword_280037598, &unk_265BA6430);
  }

  return result;
}

uint64_t sub_265B99550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_265B995B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(a1 + *(v7 + 28), v6, &qword_280037598, &unk_265BA6430);
  v8 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_265B99550(v6, a2, type metadata accessor for SyncRecordChangesetProtobuf);
  }

  v10 = MEMORY[0x277D84F90];
  *a2 = 0;
  a2[1] = v10;
  a2[2] = v10;
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_265B8D568(v6, &qword_280037598, &unk_265BA6430);
  }

  return result;
}

uint64_t sub_265B99724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B99B4C(a1, v7, type metadata accessor for SyncRecordChangesetProtobuf);
  v8 = *(type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0) + 28);
  sub_265B8D568(a2 + v8, &qword_280037598, &unk_265BA6430);
  sub_265B99550(v7, a2 + v8, type metadata accessor for SyncRecordChangesetProtobuf);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf.recordChangeset.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0) + 28);
  sub_265B8D568(v1 + v3, &qword_280037598, &unk_265BA6430);
  sub_265B99550(a1, v1 + v3, type metadata accessor for SyncRecordChangesetProtobuf);
  v4 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf.recordChangeset.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430) - 8) + 64);
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
  v9 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0) + 28);
  *(v5 + 12) = v15;
  sub_265B8D500(v1 + v15, v8, &qword_280037598, &unk_265BA6430);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x277D84F90];
    *v14 = 0;
    v14[1] = v17;
    v14[2] = v17;
    _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_265B8D568(v8, &qword_280037598, &unk_265BA6430);
    }
  }

  else
  {
    sub_265B99550(v8, v14, type metadata accessor for SyncRecordChangesetProtobuf);
  }

  return sub_265B99B24;
}

uint64_t sub_265B99B4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_265B99BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf.hasRecordChangeset.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(v0 + *(v4 + 28), v3, &qword_280037598, &unk_265BA6430);
  v5 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_265B8D568(v3, &qword_280037598, &unk_265BA6430);
  return v6;
}

Swift::Void __swiftcall SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf.clearRecordChangeset()()
{
  v1 = *(type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0) + 28);
  sub_265B8D568(v0 + v1, &qword_280037598, &unk_265BA6430);
  v2 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_265B99DAC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B99E48(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0);
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for EncryptionKeyProofProtobuf(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = *(v2 + 28);
  v6 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a1[v5], 1, 1, v6);
}

uint64_t SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.recordChangeset.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(v1 + *(v6 + 24), v5, &qword_280037598, &unk_265BA6430);
  v7 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_265B99550(v5, a1, type metadata accessor for SyncRecordChangesetProtobuf);
  }

  v9 = MEMORY[0x277D84F90];
  *a1 = 0;
  a1[1] = v9;
  a1[2] = v9;
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_265B8D568(v5, &qword_280037598, &unk_265BA6430);
  }

  return result;
}

uint64_t sub_265B9A264@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(a1 + *(v7 + 24), v6, &qword_280037598, &unk_265BA6430);
  v8 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_265B99550(v6, a2, type metadata accessor for SyncRecordChangesetProtobuf);
  }

  v10 = MEMORY[0x277D84F90];
  *a2 = 0;
  a2[1] = v10;
  a2[2] = v10;
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_265B8D568(v6, &qword_280037598, &unk_265BA6430);
  }

  return result;
}

uint64_t sub_265B9A3D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B99B4C(a1, v7, type metadata accessor for SyncRecordChangesetProtobuf);
  v8 = *(type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0) + 24);
  sub_265B8D568(a2 + v8, &qword_280037598, &unk_265BA6430);
  sub_265B99550(v7, a2 + v8, type metadata accessor for SyncRecordChangesetProtobuf);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.recordChangeset.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0) + 24);
  sub_265B8D568(v1 + v3, &qword_280037598, &unk_265BA6430);
  sub_265B99550(a1, v1 + v3, type metadata accessor for SyncRecordChangesetProtobuf);
  v4 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.recordChangeset.modify(void *a1))(uint64_t, uint64_t)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430) - 8) + 64);
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
  v9 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0) + 24);
  *(v5 + 12) = v15;
  sub_265B8D500(v1 + v15, v8, &qword_280037598, &unk_265BA6430);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x277D84F90];
    *v14 = 0;
    v14[1] = v17;
    v14[2] = v17;
    _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_265B8D568(v8, &qword_280037598, &unk_265BA6430);
    }
  }

  else
  {
    sub_265B99550(v8, v14, type metadata accessor for SyncRecordChangesetProtobuf);
  }

  return sub_265B9EAB8;
}

void sub_265B9A7D0(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_265B99B4C(v11, v10, a5);
    sub_265B8D568(v14 + v9, a3, a4);
    sub_265B99550(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_265B99BB4(v11, a5);
  }

  else
  {
    sub_265B8D568(v14 + v9, a3, a4);
    sub_265B99550(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

BOOL sub_265B9A944(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_265B8D500(v4 + *(v12 + 24), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_265B8D568(v11, a1, a2);
  return v14;
}

uint64_t sub_265B9AA7C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_265B8D568(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t sub_265B9AC48@<X0>(void (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  a1(0);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B9ACAC()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037960);
  __swift_project_value_buffer(v0, qword_280037960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA6400;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "etag";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t EncryptionKeyProofProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_265BA5E38();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_265BA5EB8();
    }
  }

  return result;
}

uint64_t EncryptionKeyProofProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_265BA5FA8(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_265BA5FA8(), !v4))
    {
      type metadata accessor for EncryptionKeyProofProtobuf(0);
      return sub_265BA5DC8();
    }
  }

  return result;
}

uint64_t static EncryptionKeyProofProtobuf.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_265BA60E8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_265BA60E8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for EncryptionKeyProofProtobuf(0);
  sub_265BA5DE8();
  sub_265B9B2D8(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B9B150(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B9B2D8(&qword_280037A58, type metadata accessor for EncryptionKeyProofProtobuf, &protocol conformance descriptor for EncryptionKeyProofProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B9B1F0(uint64_t a1)
{
  v2 = sub_265B9B2D8(&qword_2813B5570, type metadata accessor for EncryptionKeyProofProtobuf, &protocol conformance descriptor for EncryptionKeyProofProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B9B25C(uint64_t a1, uint64_t a2)
{
  sub_265B9B2D8(&qword_2813B5570, type metadata accessor for EncryptionKeyProofProtobuf, &protocol conformance descriptor for EncryptionKeyProofProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B9B2D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_265B9B320(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_265BA60E8() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_265BA60E8() & 1) == 0)
  {
    return 0;
  }

  sub_265BA5DE8();
  sub_265B9B2D8(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t SubmitSyncChangesetRequestProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0), sub_265B9B2D8(qword_2813B4F38, type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf, &protocol conformance descriptor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf), result = sub_265BA5FB8(), !v4))
  {
    type metadata accessor for SubmitSyncChangesetRequestProtobuf(0);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t sub_265B9B648(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B9B2D8(&qword_280037A50, type metadata accessor for SubmitSyncChangesetRequestProtobuf, &protocol conformance descriptor for SubmitSyncChangesetRequestProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B9B6E8(uint64_t a1)
{
  v2 = sub_265B9B2D8(&qword_280037A08, type metadata accessor for SubmitSyncChangesetRequestProtobuf, &protocol conformance descriptor for SubmitSyncChangesetRequestProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B9B754(uint64_t a1, uint64_t a2)
{
  sub_265B9B2D8(&qword_280037A08, type metadata accessor for SubmitSyncChangesetRequestProtobuf, &protocol conformance descriptor for SubmitSyncChangesetRequestProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B9B804()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037990);
  __swift_project_value_buffer(v0, qword_280037990);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA6420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "zone";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "key";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "recordChangeset";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_265BA5E38();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_265B9BBA0(a1, v5, a2, a3);
        break;
      case 2:
        sub_265B9BAEC(a1, v5, a2, a3);
        break;
      case 1:
        sub_265BA5EB8();
        break;
    }
  }

  return result;
}

uint64_t sub_265B9BAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0);
  type metadata accessor for EncryptionKeyProofProtobuf(0);
  sub_265B9B2D8(&qword_2813B5570, type metadata accessor for EncryptionKeyProofProtobuf, &protocol conformance descriptor for EncryptionKeyProofProtobuf);
  return sub_265BA5ED8();
}

uint64_t sub_265B9BBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0);
  type metadata accessor for SyncRecordChangesetProtobuf(0);
  sub_265B9B2D8(qword_2813B5430, type metadata accessor for SyncRecordChangesetProtobuf, &protocol conformance descriptor for SyncRecordChangesetProtobuf);
  return sub_265BA5ED8();
}

uint64_t SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_265BA5FA8(), !v4))
  {
    result = sub_265B9BD18(v3, a1, a2, a3);
    if (!v4)
    {
      sub_265B9BF28(v3, a1, a2, a3);
      type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0);
      return sub_265BA5DC8();
    }
  }

  return result;
}

uint64_t sub_265B9BD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037628, &unk_265BA6AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for EncryptionKeyProofProtobuf(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(a1 + *(v12 + 24), v7, &qword_280037628, &unk_265BA6AD0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_265B8D568(v7, &qword_280037628, &unk_265BA6AD0);
  }

  sub_265B99550(v7, v11, type metadata accessor for EncryptionKeyProofProtobuf);
  sub_265B9B2D8(&qword_2813B5570, type metadata accessor for EncryptionKeyProofProtobuf, &protocol conformance descriptor for EncryptionKeyProofProtobuf);
  sub_265BA5FC8();
  return sub_265B99BB4(v11, type metadata accessor for EncryptionKeyProofProtobuf);
}

uint64_t sub_265B9BF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(a1 + *(v12 + 28), v7, &qword_280037598, &unk_265BA6430);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_265B8D568(v7, &qword_280037598, &unk_265BA6430);
  }

  sub_265B99550(v7, v11, type metadata accessor for SyncRecordChangesetProtobuf);
  sub_265B9B2D8(qword_2813B5430, type metadata accessor for SyncRecordChangesetProtobuf, &protocol conformance descriptor for SyncRecordChangesetProtobuf);
  sub_265BA5FC8();
  return sub_265B99BB4(v11, type metadata accessor for SyncRecordChangesetProtobuf);
}

uint64_t sub_265B9C184@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for EncryptionKeyProofProtobuf(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(a1 + 28);
  v7 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_265B9C2A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B9B2D8(&qword_280037A48, type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf, &protocol conformance descriptor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B9C344(uint64_t a1)
{
  v2 = sub_265B9B2D8(qword_2813B4F38, type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf, &protocol conformance descriptor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B9C3B0(uint64_t a1, uint64_t a2)
{
  sub_265B9B2D8(qword_2813B4F38, type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf, &protocol conformance descriptor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B9C458(uint64_t a1, uint64_t *a2)
{
  v3 = sub_265BA6008();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_265BA6410;
  v7 = v6 + v5 + v4[14];
  *(v6 + v5) = 1;
  *v7 = "zoneChangesets";
  *(v7 + 8) = 14;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_265BA5FD8();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  return sub_265BA5FE8();
}

uint64_t sub_265B9C640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_265BA5E38();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_265B9B2D8(a5, a6, a7);
      sub_265BA5EC8();
    }
  }

  return result;
}

uint64_t SubmitSyncChangesetResponseProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0), sub_265B9B2D8(qword_2813B4D60, type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf, &protocol conformance descriptor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf), result = sub_265BA5FB8(), !v4))
  {
    type metadata accessor for SubmitSyncChangesetResponseProtobuf(0);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t sub_265B9C82C(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_265BA5DE8();
  sub_265B9B2D8(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B9C978(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B9B2D8(&qword_280037A40, type metadata accessor for SubmitSyncChangesetResponseProtobuf, &protocol conformance descriptor for SubmitSyncChangesetResponseProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B9CA18(uint64_t a1)
{
  v2 = sub_265B9B2D8(&qword_280037A20, type metadata accessor for SubmitSyncChangesetResponseProtobuf, &protocol conformance descriptor for SubmitSyncChangesetResponseProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B9CA84(uint64_t a1, uint64_t a2)
{
  sub_265B9B2D8(&qword_280037A20, type metadata accessor for SubmitSyncChangesetResponseProtobuf, &protocol conformance descriptor for SubmitSyncChangesetResponseProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B9CB18(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_265BA5DE8();
  sub_265B9B2D8(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B9CBE0()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_2800379C0);
  __swift_project_value_buffer(v0, qword_2800379C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA6400;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "zone";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "recordChangeset";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_265BA5E38();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_265BA5EB8();
    }

    else if (result == 2)
    {
      sub_265B9CE5C(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_265B9CE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  type metadata accessor for SyncRecordChangesetProtobuf(0);
  sub_265B9B2D8(qword_2813B5430, type metadata accessor for SyncRecordChangesetProtobuf, &protocol conformance descriptor for SyncRecordChangesetProtobuf);
  return sub_265BA5ED8();
}

uint64_t SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_265BA5FA8(), !v4))
  {
    result = sub_265B9CFBC(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
      return sub_265BA5DC8();
    }
  }

  return result;
}

uint64_t sub_265B9CFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(a1 + *(v12 + 24), v7, &qword_280037598, &unk_265BA6430);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_265B8D568(v7, &qword_280037598, &unk_265BA6430);
  }

  sub_265B99550(v7, v11, type metadata accessor for SyncRecordChangesetProtobuf);
  sub_265B9B2D8(qword_2813B5430, type metadata accessor for SyncRecordChangesetProtobuf, &protocol conformance descriptor for SyncRecordChangesetProtobuf);
  sub_265BA5FC8();
  return sub_265B99BB4(v11, type metadata accessor for SyncRecordChangesetProtobuf);
}

uint64_t sub_265B9D218(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_265BA6168();
  a1(0);
  sub_265B9B2D8(a2, a3, a4);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B9D2A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_265B9D374(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B9B2D8(&qword_280037A38, type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf, &protocol conformance descriptor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B9D414(uint64_t a1)
{
  v2 = sub_265B9B2D8(qword_2813B4D60, type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf, &protocol conformance descriptor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B9D480(uint64_t a1, uint64_t a2)
{
  sub_265B9B2D8(qword_2813B4D60, type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf, &protocol conformance descriptor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);

  return sub_265BA5F08();
}

uint64_t _s21SeymourServerProtocol35SubmitSyncChangesetResponseProtobufV04ZonefH0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037620, &qword_265BA6AC8);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  if (*a1 != *a2 && (sub_265BA60E8() & 1) == 0)
  {
    goto LABEL_17;
  }

  v24 = v7;
  v25 = type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  v14 = *(v25 + 24);
  v15 = *(v11 + 48);
  sub_265B8D500(a1 + v14, v13, &qword_280037598, &unk_265BA6430);
  sub_265B8D500(a2 + v14, &v13[v15], &qword_280037598, &unk_265BA6430);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_265B8D500(v13, v10, &qword_280037598, &unk_265BA6430);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v20 = &v13[v15];
      v21 = v24;
      sub_265B99550(v20, v24, type metadata accessor for SyncRecordChangesetProtobuf);
      if (*v10 == *v21 && (sub_265B88EA8(*(v10 + 1), *(v21 + 8)) & 1) != 0 && (sub_265B88EA8(*(v10 + 2), *(v21 + 16)) & 1) != 0)
      {
        sub_265BA5DE8();
        sub_265B9B2D8(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v22 = sub_265BA6048();
        sub_265B99BB4(v21, type metadata accessor for SyncRecordChangesetProtobuf);
        sub_265B99BB4(v10, type metadata accessor for SyncRecordChangesetProtobuf);
        sub_265B8D568(v13, &qword_280037598, &unk_265BA6430);
        if (v22)
        {
          goto LABEL_6;
        }

LABEL_17:
        v17 = 0;
        return v17 & 1;
      }

      sub_265B99BB4(v21, type metadata accessor for SyncRecordChangesetProtobuf);
      sub_265B99BB4(v10, type metadata accessor for SyncRecordChangesetProtobuf);
      v18 = &qword_280037598;
      v19 = &unk_265BA6430;
LABEL_16:
      sub_265B8D568(v13, v18, v19);
      goto LABEL_17;
    }

    sub_265B99BB4(v10, type metadata accessor for SyncRecordChangesetProtobuf);
LABEL_9:
    v18 = &qword_280037620;
    v19 = &qword_265BA6AC8;
    goto LABEL_16;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_265B8D568(v13, &qword_280037598, &unk_265BA6430);
LABEL_6:
  sub_265BA5DE8();
  sub_265B9B2D8(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v17 = sub_265BA6048();
  return v17 & 1;
}

uint64_t _s21SeymourServerProtocol34SubmitSyncChangesetRequestProtobufV04ZonefH0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = type metadata accessor for SyncRecordChangesetProtobuf(0);
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v43 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037620, &qword_265BA6AC8);
  MEMORY[0x28223BE20](v47);
  v10 = &v43 - v9;
  v11 = type metadata accessor for EncryptionKeyProofProtobuf(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037628, &unk_265BA6AD0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v43 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037630, &unk_265BA87D0);
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = *a1;
  v22 = a1[1];
  v23 = *a2;
  v24 = a2[1];
  v50 = a2;
  if ((v21 != v23 || v22 != v24) && (sub_265BA60E8() & 1) == 0)
  {
    goto LABEL_34;
  }

  v43 = v6;
  v45 = v10;
  v44 = type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0);
  v25 = *(v44 + 24);
  v26 = *(v18 + 48);
  sub_265B8D500(a1 + v25, v20, &qword_280037628, &unk_265BA6AD0);
  sub_265B8D500(v50 + v25, &v20[v26], &qword_280037628, &unk_265BA6AD0);
  v27 = *(v12 + 48);
  if (v27(v20, 1, v11) == 1)
  {
    if (v27(&v20[v26], 1, v11) == 1)
    {
      sub_265B8D568(v20, &qword_280037628, &unk_265BA6AD0);
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  sub_265B8D500(v20, v17, &qword_280037628, &unk_265BA6AD0);
  if (v27(&v20[v26], 1, v11) == 1)
  {
    sub_265B99BB4(v17, type metadata accessor for EncryptionKeyProofProtobuf);
LABEL_9:
    v28 = &qword_280037630;
    v29 = &unk_265BA87D0;
LABEL_10:
    v30 = v20;
LABEL_33:
    sub_265B8D568(v30, v28, v29);
    goto LABEL_34;
  }

  sub_265B99550(&v20[v26], v14, type metadata accessor for EncryptionKeyProofProtobuf);
  if ((*v17 != *v14 || v17[1] != v14[1]) && (sub_265BA60E8() & 1) == 0 || (v17[2] != v14[2] || v17[3] != v14[3]) && (sub_265BA60E8() & 1) == 0)
  {
    sub_265B99BB4(v14, type metadata accessor for EncryptionKeyProofProtobuf);
    sub_265B99BB4(v17, type metadata accessor for EncryptionKeyProofProtobuf);
    v28 = &qword_280037628;
    v29 = &unk_265BA6AD0;
    goto LABEL_10;
  }

  sub_265BA5DE8();
  sub_265B9B2D8(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v31 = sub_265BA6048();
  sub_265B99BB4(v14, type metadata accessor for EncryptionKeyProofProtobuf);
  sub_265B99BB4(v17, type metadata accessor for EncryptionKeyProofProtobuf);
  sub_265B8D568(v20, &qword_280037628, &unk_265BA6AD0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_18:
  v32 = v45;
  v33 = *(v44 + 28);
  v34 = *(v47 + 48);
  sub_265B8D500(a1 + v33, v45, &qword_280037598, &unk_265BA6430);
  sub_265B8D500(v50 + v33, v32 + v34, &qword_280037598, &unk_265BA6430);
  v35 = v49;
  v36 = *(v48 + 48);
  if (v36(v32, 1, v49) != 1)
  {
    v38 = v46;
    sub_265B8D500(v32, v46, &qword_280037598, &unk_265BA6430);
    if (v36(v32 + v34, 1, v35) == 1)
    {
      sub_265B99BB4(v38, type metadata accessor for SyncRecordChangesetProtobuf);
      goto LABEL_24;
    }

    v39 = v32 + v34;
    v40 = v43;
    sub_265B99550(v39, v43, type metadata accessor for SyncRecordChangesetProtobuf);
    if (*v38 != *v40 || (sub_265B88EA8(*(v38 + 8), *(v40 + 8)) & 1) == 0 || (sub_265B88EA8(*(v38 + 16), *(v40 + 16)) & 1) == 0)
    {
      sub_265B99BB4(v40, type metadata accessor for SyncRecordChangesetProtobuf);
      sub_265B99BB4(v38, type metadata accessor for SyncRecordChangesetProtobuf);
      v28 = &qword_280037598;
      v29 = &unk_265BA6430;
      goto LABEL_32;
    }

    sub_265BA5DE8();
    sub_265B9B2D8(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v41 = sub_265BA6048();
    sub_265B99BB4(v40, type metadata accessor for SyncRecordChangesetProtobuf);
    sub_265B99BB4(v38, type metadata accessor for SyncRecordChangesetProtobuf);
    sub_265B8D568(v32, &qword_280037598, &unk_265BA6430);
    if (v41)
    {
      goto LABEL_21;
    }

LABEL_34:
    v37 = 0;
    return v37 & 1;
  }

  if (v36(v32 + v34, 1, v35) != 1)
  {
LABEL_24:
    v28 = &qword_280037620;
    v29 = &qword_265BA6AC8;
LABEL_32:
    v30 = v32;
    goto LABEL_33;
  }

  sub_265B8D568(v32, &qword_280037598, &unk_265BA6430);
LABEL_21:
  sub_265BA5DE8();
  sub_265B9B2D8(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v37 = sub_265BA6048();
  return v37 & 1;
}

void sub_265B9E75C(uint64_t a1)
{
  sub_265BA5DE8();
  if (v1 <= 0x3F)
  {
    sub_265B9E868(319, qword_2813B5520, type metadata accessor for EncryptionKeyProofProtobuf, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_265B9E868(319, qword_2813B53E0, type metadata accessor for SyncRecordChangesetProtobuf, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_265B9E868(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_265B9E914(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_265B9E868(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    sub_265BA5DE8();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_265B9E9DC(uint64_t a1)
{
  sub_265BA5DE8();
  if (v1 <= 0x3F)
  {
    sub_265B9E868(319, qword_2813B53E0, type metadata accessor for SyncRecordChangesetProtobuf, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t PingProtobuf.ping.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PingProtobuf.ping.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_265B9EC2C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B9ECE8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_265B9EDC8@<X0>(void (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a1(0);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B9EF40(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B9F0C8(&qword_280037AF8, type metadata accessor for PingProtobuf, &protocol conformance descriptor for PingProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B9EFE0(uint64_t a1)
{
  v2 = sub_265B9F0C8(&qword_280037AA8, type metadata accessor for PingProtobuf, &protocol conformance descriptor for PingProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B9F04C(uint64_t a1, uint64_t a2)
{
  sub_265B9F0C8(&qword_280037AA8, type metadata accessor for PingProtobuf, &protocol conformance descriptor for PingProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B9F0C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_265B9F144(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_265BA6008();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_265BA6410;
  v9 = v8 + v7 + v6[14];
  *(v8 + v7) = 1;
  *v9 = a3;
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21870];
  v11 = sub_265BA5FD8();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  return sub_265BA5FE8();
}

uint64_t sub_265B9F2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_265BA5E38();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_265BA5EB8();
    }
  }

  return result;
}

uint64_t sub_265B9F370(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = v4[1];
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (result = sub_265BA5FA8(), !v5))
  {
    a4(0);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t sub_265B9F42C(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_265BA60E8() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_265BA5DE8();
  sub_265B9F0C8(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B9F53C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_265BA6168();
  a1(0);
  sub_265B9F0C8(a2, a3, a4);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B9F5FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B9F0C8(&qword_280037AF0, type metadata accessor for PongProtobuf, &protocol conformance descriptor for PongProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B9F69C(uint64_t a1)
{
  v2 = sub_265B9F0C8(&qword_280037AC0, type metadata accessor for PongProtobuf, &protocol conformance descriptor for PongProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B9F708(uint64_t a1, uint64_t a2)
{
  sub_265B9F0C8(&qword_280037AC0, type metadata accessor for PongProtobuf, &protocol conformance descriptor for PongProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B9F9C4(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_265BA60E8() & 1) == 0)
  {
    return 0;
  }

  sub_265BA5DE8();
  sub_265B9F0C8(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_265BA5DE8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265B9FC20(uint64_t a1)
{
  result = sub_265BA5DE8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ValidateEncryptionKeyRequestProtobuf.encryptionKeys.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_265B9FE1C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B9FED8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_265B9FFB8@<X0>(void (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  a1(0);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265BA0124(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA0A58(&qword_280037B68, type metadata accessor for ValidateEncryptionKeyRequestProtobuf, &protocol conformance descriptor for ValidateEncryptionKeyRequestProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265BA01C4(uint64_t a1)
{
  v2 = sub_265BA0A58(&qword_280037B40, type metadata accessor for ValidateEncryptionKeyRequestProtobuf, &protocol conformance descriptor for ValidateEncryptionKeyRequestProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265BA0230(uint64_t a1, uint64_t a2)
{
  sub_265BA0A58(&qword_280037B40, type metadata accessor for ValidateEncryptionKeyRequestProtobuf, &protocol conformance descriptor for ValidateEncryptionKeyRequestProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265BA02D4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_265BA6008();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_265BA6410;
  v7 = v6 + v5 + v4[14];
  *(v6 + v5) = 1;
  *v7 = "encryptionKeys";
  *(v7 + 8) = 14;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_265BA5FD8();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  return sub_265BA5FE8();
}

uint64_t sub_265BA0460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_265BA5E38();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_265BA5D98();
        sub_265BA0A58(&qword_2813B5658, MEMORY[0x277CFB080], MEMORY[0x277CFB078]);
        sub_265BA5EC8();
      }

      result = sub_265BA5E38();
    }
  }

  return result;
}

uint64_t sub_265BA056C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!*(*v4 + 16) || (sub_265BA5D98(), sub_265BA0A58(&qword_2813B5658, MEMORY[0x277CFB080], MEMORY[0x277CFB078]), result = sub_265BA5FB8(), !v5))
  {
    (a4)(0, a2, a3);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t sub_265BA0670(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  if ((sub_265B88EA8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_265BA5DE8();
  sub_265BA0A58(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265BA076C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_265BA6168();
  a1(0);
  sub_265BA0A58(a2, a3, a4);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265BA0828(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA0A58(&qword_280037B60, type metadata accessor for ValidateEncryptionKeyResponseProtobuf, &protocol conformance descriptor for ValidateEncryptionKeyResponseProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265BA08C8(uint64_t a1)
{
  v2 = sub_265BA0A58(&qword_280037B50, type metadata accessor for ValidateEncryptionKeyResponseProtobuf, &protocol conformance descriptor for ValidateEncryptionKeyResponseProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265BA0934(uint64_t a1, uint64_t a2)
{
  sub_265BA0A58(&qword_280037B50, type metadata accessor for ValidateEncryptionKeyResponseProtobuf, &protocol conformance descriptor for ValidateEncryptionKeyResponseProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265BA09B0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_265B88EA8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_265BA5DE8();
  sub_265BA0A58(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}