void IDSToolResponse.print(to:style:)(void *result, uint64_t a2)
{
  v5 = *v2;
  if (v2[2])
  {
    v8 = *a2;
    v9 = *(a2 + 8);
    IDSToolPacketLogResponse.print(to:style:)(result);
  }

  else
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v5 + 56;
      do
      {
        if ((*(v7 + 48) & 0x800000000000000) != 0)
        {
          v8 = *a2;
          v9 = *(a2 + 8);
          LEToolP2PEngineResponseMessage.print(to:style:)(result, &v8);
        }

        else
        {
          v8 = *a2;
          v9 = *(a2 + 8);
          LEToolRelayEngineResponseMessage.print(to:style:)(result, &v8);
        }

        v7 += 88;
        --v6;
      }

      while (v6);
    }
  }
}

uint64_t (*LEToolPrintStyle.includeName.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 2);
  return sub_1A7CFD3F4;
}

uint64_t sub_1A7CFD480(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v5 = a4;
    v6 = a3;
    result = swift_once();
    a3 = v6;
    a4 = v5;
  }

  *a4 = *a3;
  return result;
}

void *sub_1A7CFD4F8@<X0>(void *result@<X0>, void *a2@<X1>, void *a4@<X8>)
{
  if (*result != -1)
  {
    v4 = a2;
    v5 = a4;
    result = swift_once();
    a4 = v5;
    a2 = v4;
  }

  *a4 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LEToolLinkPrintStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
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

uint64_t storeEnumTagSinglePayload for LEToolLinkPrintStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t LinkDefinition.isPreferred.getter()
{
  v1 = *v0;
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1A7CD0DFC(&type metadata for LinkDefinitionIsPreferred);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v6);
  sub_1A7B1503C(v6, &v5);
  sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
  return swift_dynamicCast() & v7;
}

_OWORD *LinkDefinition.isPreferred.setter(char a1)
{
  v3 = &type metadata for LinkDefinitionIsPreferred;
  v2[0] = a1;
  return sub_1A7CC8D74(v2, &type metadata for LinkDefinitionIsPreferred);
}

uint64_t (*LinkDefinition.isPreferred.modify(uint64_t a1))()
{
  *a1 = v1;
  sub_1A7CE05CC(*v1, &v4);
  *(a1 + 8) = v4 & 1;
  return sub_1A7CFD744;
}

_OWORD *sub_1A7CFD744(uint64_t a1)
{
  v1 = *(a1 + 8);
  v4 = &type metadata for LinkDefinitionIsPreferred;
  v3[0] = v1;
  return sub_1A7CC8D74(v3, &type metadata for LinkDefinitionIsPreferred);
}

uint64_t IDSLinkQualityReportPacketsMeasurement.init(time:totalPacketsSent:totalPacketsReceived:totalBytesSent:totalBytesReceived:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = a6;
  *(a5 + 8) = result;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

unint64_t sub_1A7CFD898()
{
  v1 = *v0;
  v2 = 1701669236;
  v3 = 0xD000000000000012;
  if (v1 == 3)
  {
    v3 = 0x7479426C61746F74;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A7CFD944@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A7CFDFAC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A7CFD96C(uint64_t a1)
{
  v2 = sub_1A7CFDBE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CFD9A8(uint64_t a1)
{
  v2 = sub_1A7CFDBE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinkQualityReportPacketsMeasurement.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5608, &qword_1A7E44DD0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = v1[1];
  v10[1] = v1[2];
  v10[2] = v8;
  v10[0] = v1[3];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CFDBE8();
  sub_1A7E23260();
  v15 = 0;
  sub_1A7E23010();
  if (!v2)
  {
    v14 = 1;
    sub_1A7E23050();
    v13 = 2;
    sub_1A7E23050();
    v12 = 3;
    sub_1A7E23050();
    v11 = 4;
    sub_1A7E23050();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1A7CFDBE8()
{
  result = qword_1EB2B5610;
  if (!qword_1EB2B5610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5610);
  }

  return result;
}

uint64_t IDSLinkQualityReportPacketsMeasurement.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B5618, &qword_1A7E44DD8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CFDBE8();
  sub_1A7E23250();
  if (!v2)
  {
    v22 = 0;
    sub_1A7E22F10();
    v10 = v9;
    v21 = 1;
    v11 = sub_1A7E22F50();
    v20 = 2;
    v12 = sub_1A7E22F50();
    v19 = 3;
    v17 = sub_1A7E22F50();
    v18 = 4;
    v16 = sub_1A7E22F50();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 1) = v11;
    *(a2 + 2) = v12;
    v14 = v16;
    *(a2 + 3) = v17;
    *(a2 + 4) = v14;
  }

  return sub_1A7B0CD6C(a1);
}

unint64_t sub_1A7CFDEA8()
{
  result = qword_1EB2B5620;
  if (!qword_1EB2B5620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5620);
  }

  return result;
}

unint64_t sub_1A7CFDF00()
{
  result = qword_1EB2B5628;
  if (!qword_1EB2B5628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5628);
  }

  return result;
}

unint64_t sub_1A7CFDF58()
{
  result = qword_1EB2B5630;
  if (!qword_1EB2B5630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5630);
  }

  return result;
}

uint64_t sub_1A7CFDFAC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A7EAE470 == a2 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A7EAE490 == a2 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7479426C61746F74 && a2 == 0xEE00746E65537365 || (sub_1A7E230D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A7EAE4B0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A7E230D0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t LinkEndpoint.isNAT64.getter()
{
  v1 = *v0;
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointIsNAT64);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v6);
  sub_1A7B1503C(v6, &v5);
  sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
  return swift_dynamicCast() & v7;
}

_OWORD *LinkEndpoint.isNAT64.setter(char a1)
{
  v3 = &type metadata for IDSLinkEndpointIsNAT64;
  v2[0] = a1;
  return sub_1A7CC8D74(v2, &type metadata for IDSLinkEndpointIsNAT64);
}

uint64_t (*LinkEndpoint.isNAT64.modify(uint64_t a1))()
{
  *a1 = v1;
  sub_1A7CE0668(*v1, &v4);
  *(a1 + 8) = v4 & 1;
  return sub_1A7CFE2A4;
}

_OWORD *sub_1A7CFE2A4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v4 = &type metadata for IDSLinkEndpointIsNAT64;
  v3[0] = v1;
  return sub_1A7CC8D74(v3, &type metadata for IDSLinkEndpointIsNAT64);
}

uint64_t sub_1A7CFE2F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v23 = MEMORY[0x1E69E7CC0];
  sub_1A7CCEB40(0, v1, 0);
  v2 = v23;
  v22 = a1 + 64;
  result = sub_1A7E22AD0();
  v5 = result;
  v6 = 0;
  v20 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v22 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    v12 = *(v23 + 16);
    v11 = *(v23 + 24);
    v21 = *(*(a1 + 56) + 32 * v5);

    if (v12 >= v11 >> 1)
    {
      result = sub_1A7CCEB40((v11 > 1), v12 + 1, 1);
    }

    *(v23 + 16) = v12 + 1;
    *(v23 + 16 * v12 + 32) = v21;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v13 = *(v22 + 8 * v9);
    if ((v13 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v14 = v13 & (-2 << (v5 & 0x3F));
    if (v14)
    {
      v7 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v20;
    }

    else
    {
      v15 = v9 << 6;
      v16 = v9 + 1;
      v8 = v20;
      v17 = (a1 + 72 + 8 * v9);
      while (v16 < (v7 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          result = sub_1A7CD29F0(v5, v10, 0);
          v7 = __clz(__rbit64(v18)) + v15;
          goto LABEL_4;
        }
      }

      result = sub_1A7CD29F0(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
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

uint64_t sub_1A7CFE520()
{
  os_unfair_lock_lock((v0 + 40));
  sub_1A7CCBD20((v0 + 48), v2);
  os_unfair_lock_unlock((v0 + 40));
  sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
  type metadata accessor for IDSSemiActiveLinkQualityMonitor();
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A7CFE5B4()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B5638);
  sub_1A7B0CB00(v0, qword_1EB2B5638);
  return sub_1A7E22050();
}

uint64_t IDSLinksQualitySemiActiveMonitorTask.ProbingState.Input.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IDSLinksQualitySemiActiveMonitorTask.ProbingState.Input.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 IDSLinksQualitySemiActiveMonitorTask.ProbingState.Input.score.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 IDSLinksQualitySemiActiveMonitorTask.ProbingState.Input.score.setter(__n128 *a1)
{
  result = *a1;
  v1[1] = *a1;
  return result;
}

uint64_t IDSLinksQualitySemiActiveMonitorTask.ProbingState.inputs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t IDSLinksQualitySemiActiveMonitorTask.ProbingState.LinkToProbe.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IDSLinksQualitySemiActiveMonitorTask.ProbingState.LinkToProbe.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void IDSLinksQualitySemiActiveMonitorTask.ProbingState.LinkToProbe.probingState.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t IDSLinksQualitySemiActiveMonitorTask.ProbingState.LinkToProbe.probingState.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t IDSLinksQualitySemiActiveMonitorTask.ProbingState.linksToProbe.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t IDSLinksQualitySemiActiveMonitorTask.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void IDSLinksQualitySemiActiveMonitorTask.probingState.getter(void *a1@<X8>)
{
  os_unfair_lock_lock((v1 + 32));
  v3 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v3;

  os_unfair_lock_unlock((v1 + 32));
}

Swift::Void __swiftcall IDSLinksQualitySemiActiveMonitorTask.start()()
{
  os_unfair_lock_lock(v0 + 8);
  sub_1A7CFE980(&v0[10], v0);

  os_unfair_lock_unlock(v0 + 8);
}

uint64_t sub_1A7CFE980(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v59 = &v44 - v6;
  v7 = sub_1A7E226D0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1A7E22060();
  v11 = *(v54 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  result = swift_weakLoadStrong();
  if (result)
  {
    v56 = result;
    v57 = v7;
    v51 = v8;
    v52 = a1;
    v53 = v2;
    v17 = *(a2 + 24);
    v47 = *(a2 + 16);
    v48 = v17;
    v18 = qword_1EB2B4740;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = v54;
    v20 = sub_1A7B0CB00(v54, qword_1EB2B5638);
    v50 = v11;
    v21 = *(v11 + 16);
    v22 = v15;
    v23 = v19;
    v21(v15, v20, v19);
    v44 = v21;
    v49 = swift_allocObject();
    swift_weakInit();

    v24 = v10;
    v46 = v10;
    sub_1A7E226B0();
    type metadata accessor for IDSLinksQualityRepeatingAsyncTask(0);
    v25 = swift_allocObject();
    v26 = v25 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state;
    v27 = swift_weakInit();
    v58 = 0;
    *v26 = 0;
    *(v26 + 16) = 0;
    *(v26 + 8) = 0;
    sub_1A7CEB2D0(v27, v26 + 8);
    v28 = v22;
    v29 = v22;
    v45 = v22;
    v30 = v23;
    v21((v25 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_logger), v28, v23);
    v31 = (v25 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name);
    v32 = v48;
    *v31 = v47;
    v31[1] = v32;
    v33 = v25 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state;
    os_unfair_lock_lock((v25 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state));
    swift_weakAssign();
    v34 = v51;
    v35 = v59;
    v36 = v24;
    v37 = v57;
    (*(v51 + 16))(v59, v36, v57);
    (*(v34 + 56))(v35, 0, 1, v37);
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = v55;
    v44(v55, v29, v30);
    v40 = v50;
    v41 = (*(v50 + 80) + 56) & ~*(v50 + 80);
    v42 = swift_allocObject();
    *(v42 + 2) = 0;
    *(v42 + 3) = 0;
    *(v42 + 4) = v38;
    *(v42 + 5) = &unk_1A7E451B0;
    *(v42 + 6) = v49;
    (*(v40 + 32))(&v42[v41], v39, v30);

    *(v33 + 16) = sub_1A7D3F5DC(0, 0, v59, &unk_1A7E44050, v42);

    os_unfair_lock_unlock(v33);

    (*(v34 + 8))(v46, v57);
    (*(v40 + 8))(v45, v30);

    v43 = v52;

    *(v43 + 8) = v25;
  }

  return result;
}

uint64_t sub_1A7CFEE70(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A7CFEE90, 0, 0);
}

uint64_t sub_1A7CFEE90()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1A7CE88C8;
    v3 = v0[5];

    return IDSLinksQualitySemiActiveMonitorTask.run(_:)(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t IDSLinksQualitySemiActiveMonitorTask.run(_:)(uint64_t a1)
{
  v2[100] = v1;
  v2[99] = a1;
  sub_1A7CC7FFC(&qword_1EB2B4A80, &unk_1A7E41910);
  v2[101] = swift_task_alloc();
  v2[102] = type metadata accessor for LinkState(0);
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7CFF064, 0, 0);
}

void sub_1A7CFF064()
{
  v214 = v0;
  v199 = (v0 + 696);
  v198 = (v0 + 728);
  v196 = v0 + 744;
  v195 = (v0 + 752);
  v207 = (v0 + 768);
  v194 = (v0 + 776);
  v1 = *(v0 + 792);
  v2 = (*(*(v0 + 800) + 104))();
  os_unfair_lock_lock((v1 + 16));
  v3 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 16));
  v4 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;
  v203 = v3;

  v9 = 0;
  v200 = MEMORY[0x1E69E7CC0];
  v205 = v2;
  while (v7)
  {
LABEL_10:
    v11 = *(*(v203 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));

    os_unfair_lock_lock((v11 + 40));
    active = type metadata accessor for IDSSemiActiveLinkQualityMonitor();
    v13 = *(v11 + 48);
    if (*(v13 + 16) && (v14 = sub_1A7CD0DFC(active), (v15 & 1) != 0))
    {
      sub_1A7B0CD10(*(v13 + 56) + 32 * v14, v0 + 544);
    }

    else
    {
      *(v0 + 544) = 0u;
      *(v0 + 560) = 0u;
    }

    v7 &= v7 - 1;
    os_unfair_lock_unlock((v11 + 40));
    sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
    if ((swift_dynamicCast() & 1) != 0 && (v16 = *v207) != 0)
    {
      os_unfair_lock_lock((v11 + 40));
      v17 = sub_1A7CC7FFC(&qword_1EB2B4A88, &unk_1A7E54A30);
      v18 = *(v11 + 48);
      if (*(v18 + 16) && (v19 = sub_1A7CD0DFC(v17), (v20 & 1) != 0))
      {
        sub_1A7B0CD10(*(v18 + 56) + 32 * v19, v0 + 512);
      }

      else
      {
        *(v0 + 512) = 0u;
        *(v0 + 528) = 0u;
      }

      os_unfair_lock_unlock((v11 + 40));
      if (swift_dynamicCast())
      {
        v2 = v205;
        if (!*(v0 + 360))
        {
          goto LABEL_26;
        }

        sub_1A7B14FF0((v0 + 336), v0 + 296);
        os_unfair_lock_lock((v11 + 40));
        v21 = type metadata accessor for LinkStateComponent(0);
        v22 = v21;
        v23 = *(v11 + 48);
        if (*(v23 + 16) && (v24 = sub_1A7CD0DFC(v21), (v25 & 1) != 0))
        {
          sub_1A7B0CD10(*(v23 + 56) + 32 * v24, v0 + 480);
        }

        else
        {
          *(v0 + 480) = 0u;
          *(v0 + 496) = 0u;
        }

        v26 = *(v0 + 808);
        os_unfair_lock_unlock((v11 + 40));
        v27 = swift_dynamicCast();
        v28 = *(v22 - 8);
        (*(v28 + 56))(v26, v27 ^ 1u, 1, v22);
        v29 = (*(v28 + 48))(v26, 1, v22);
        v30 = *(v0 + 832);
        v31 = *(v0 + 808);
        if (v29)
        {
          sub_1A7CC9970(v31, &qword_1EB2B4A80, &unk_1A7E41910);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v32 = *(v0 + 824);
          v33 = *(v0 + 808);
          sub_1A7CD0EC4(v31, v32);
          sub_1A7CC9970(v33, &qword_1EB2B4A80, &unk_1A7E41910);
          sub_1A7CD0F28(v32, v30);
        }

        v34 = *(v0 + 832);
        v2 = v205;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v35 = sub_1A7E22CF0();
          (*(*(v35 - 8) + 8))(v34, v35);
          *(v0 + 128) = v11;
          *(v0 + 136) = v16;
          sub_1A7B14FF0((v0 + 296), v0 + 144);
          v36 = *(v0 + 144);
          v209 = *(v0 + 128);
          v210 = v36;
          v211 = *(v0 + 160);
          v212 = *(v0 + 176);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v200 = sub_1A7CCD24C(0, v200[2] + 1, 1, v200);
          }

          v38 = v200[2];
          v37 = v200[3];
          if (v38 >= v37 >> 1)
          {
            v200 = sub_1A7CCD24C((v37 > 1), v38 + 1, 1, v200);
          }

          v200[2] = v38 + 1;
          v39 = &v200[7 * v38];
          v40 = v209;
          v41 = v210;
          v42 = v211;
          v39[10] = v212;
          *(v39 + 3) = v41;
          *(v39 + 4) = v42;
          *(v39 + 2) = v40;
        }

        else
        {
          sub_1A7B0CD6C((v0 + 296));

          sub_1A7CD0E68(v34);
        }
      }

      else
      {
        *(v0 + 368) = 0;
        *(v0 + 336) = 0u;
        *(v0 + 352) = 0u;
        v2 = v205;
LABEL_26:

        sub_1A7CC9970(v0 + 336, &qword_1EB2B4A90, &unk_1A7E45000);
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
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
      goto LABEL_188;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  if (qword_1EB2B4740 == -1)
  {
    goto LABEL_39;
  }

LABEL_188:
  swift_once();
LABEL_39:
  v202 = sub_1A7E22060();
  sub_1A7B0CB00(v202, qword_1EB2B5638);
  v43 = v200;

  v44 = sub_1A7E22040();
  v45 = sub_1A7E228F0();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 134217984;
    *(v46 + 4) = v200[2];

    _os_log_impl(&dword_1A7AD9000, v44, v45, "Running Semi-Active monitor task for %ld links...", v46, 0xCu);
    MEMORY[0x1AC5654B0](v46, -1, -1);
  }

  else
  {
  }

  v193 = sub_1A7E23280();
  sub_1A7E23280();
  v192 = v47;
  v48 = sub_1A7E23280();
  sub_1A7E23280();
  v50 = v49 / 1.0e18 + v48;
  v204 = v200[2];
  if (v204)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v51 = 0;
      v52 = (v200 + 4);
      v206 = v0;
      while (1)
      {
        if (v51 >= v43[2])
        {
          goto LABEL_176;
        }

        sub_1A7D01088(v52, v0 + 240);
        v54 = *(v0 + 240);
        v53 = *(v0 + 248);
        os_unfair_lock_lock((v54 + 40));
        v55 = *(v54 + 48);
        if (*(v55 + 16) && (v56 = sub_1A7CD0DFC(&type metadata for LinkProbingState), (v57 & 1) != 0))
        {
          sub_1A7B0CD10(*(v55 + 56) + 32 * v56, v0 + 448);
        }

        else
        {
          *(v0 + 448) = 0u;
          *(v0 + 464) = 0u;
        }

        os_unfair_lock_unlock((v54 + 40));
        sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
        if (swift_dynamicCast())
        {
          v58 = *v199;
        }

        else
        {
          LOBYTE(v58) = 2;
        }

        os_unfair_lock_lock((v53 + 40));
        if (qword_1EB2B4810 != -1)
        {
          swift_once();
        }

        v59 = (v58 != 2) & v58;
        sub_1A7B0CB00(v202, qword_1EB2B67A0);
        v60 = sub_1A7E22040();
        v61 = sub_1A7E228D0();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *&v209 = v63;
          *v62 = 136315138;
          *(v206 + 842) = v59;
          v64 = sub_1A7E222F0();
          v66 = v51;
          v67 = v52;
          v68 = sub_1A7B0CB38(v64, v65, &v209);
          v43 = v200;

          *(v62 + 4) = v68;
          v52 = v67;
          v51 = v66;
          _os_log_impl(&dword_1A7AD9000, v60, v61, "update(probingState:time:): probing behavior: %s", v62, 0xCu);
          sub_1A7B0CD6C(v63);
          MEMORY[0x1AC5654B0](v63, -1, -1);
          MEMORY[0x1AC5654B0](v62, -1, -1);
        }

        *(v53 + 48) = v59;
        v2 = v205;
        v69 = sub_1A7D611D0(v205) || sub_1A7D61378(v205);
        v0 = v206;
        v70 = *(v53 + 72);
        if (*(v53 + 48) == 1)
        {
          v71 = *(v53 + 288);
          v72 = __CFADD__(v70, v71);
          v73 = v70 + v71;
          if (v72)
          {
            goto LABEL_178;
          }

          v74 = *(v53 + 256);
          v75 = *(v53 + 312);
          v72 = __CFADD__(v74, v75);
          v76 = v74 + v75;
          if (v72)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v77 = *(v53 + 272);
          v72 = __CFADD__(v70, v77);
          v73 = v70 + v77;
          if (v72)
          {
            goto LABEL_179;
          }

          v78 = *(v53 + 256);
          v79 = *(v53 + 296);
          v72 = __CFADD__(v78, v79);
          v76 = v78 + v79;
          if (v72)
          {
            goto LABEL_181;
          }
        }

        if (v76 >= v73)
        {
          v80 = v73;
        }

        else
        {
          v80 = v76;
        }

        if ((v80 & 0x8000000000000000) != 0)
        {
          goto LABEL_177;
        }

        os_unfair_lock_unlock((v53 + 40));
        if (v69)
        {
          os_unfair_lock_lock((v53 + 16));
          v81 = *(v53 + 24);
          if (v81)
          {
            v82 = *(v53 + 32);
            v83 = swift_allocObject();
            *(v83 + 16) = v81;
            *(v83 + 24) = v82;
            v84 = swift_allocObject();
            *(v84 + 16) = sub_1A7D013D4;
            *(v84 + 24) = v83;
            v85 = swift_allocObject();
            *(v85 + 16) = sub_1A7D013D4;
            *(v85 + 24) = v83;
            *(v53 + 24) = sub_1A7D013D0;
            *(v53 + 32) = v85;

            os_unfair_lock_unlock((v53 + 16));
            os_unfair_lock_lock((v53 + 40));
            if (*(v53 + 321))
            {
              os_unfair_lock_unlock((v53 + 40));

              sub_1A7B15088(sub_1A7D013D0, v84);
              goto LABEL_47;
            }

            v197 = v52;

            v86 = sub_1A7E22040();
            v87 = sub_1A7E228D0();

            if (os_log_type_enabled(v86, v87))
            {
              v88 = swift_slowAlloc();
              v89 = swift_slowAlloc();
              *&v209 = v89;
              *v88 = 136315138;
              *(v88 + 4) = sub_1A7B0CB38(*(v53 + 328), *(v53 + 336), &v209);
              _os_log_impl(&dword_1A7AD9000, v86, v87, "sendSyntheticStatsPacket: request packet on link %s", v88, 0xCu);
              sub_1A7B0CD6C(v89);
              v90 = v89;
              v43 = v200;
              MEMORY[0x1AC5654B0](v90, -1, -1);
              MEMORY[0x1AC5654B0](v88, -1, -1);
            }

            v52 = v197;
            *(v53 + 321) = 1;
            os_unfair_lock_unlock((v53 + 40));
            (*(v84 + 16))(0, 0xC000000000000000);
            sub_1A7B15088(sub_1A7D013D0, v84);
          }

          else
          {
            os_unfair_lock_unlock((v53 + 16));
          }
        }

LABEL_47:
        ++v51;
        if (((v80 - v205) & ~((v80 - v205) >> 63)) / 1000000.0 < v50)
        {
          v50 = ((v80 - v205) & ~((v80 - v205) >> 63)) / 1000000.0;
        }

        sub_1A7B0CD6C((v206 + 256));
        v52 += 56;
        if (v204 == v51)
        {
          goto LABEL_83;
        }
      }
    }

    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

LABEL_83:
  v91 = sub_1A7E22040();
  v92 = sub_1A7E228F0();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&dword_1A7AD9000, v91, v92, "Updating link probing state...", v93, 2u);
    MEMORY[0x1AC5654B0](v93, -1, -1);
  }

  v94 = v43[2];
  if (v94)
  {
    v213 = MEMORY[0x1E69E7CC0];
    sub_1A7CCEB70(0, v94, 0);
    v208 = v213;
    v95 = (v43 + 4);
    do
    {
      sub_1A7D01088(v95, v0 + 16);
      sub_1A7D01088(v0 + 16, v0 + 184);
      v96 = *(v0 + 184);

      sub_1A7B14FF0((v0 + 200), v0 + 376);
      v97 = *(v0 + 400);
      v98 = *(v0 + 408);
      sub_1A7CC9878((v0 + 376), v97);
      (*(v98 + 8))(&v209, v96, v97, v98);
      v99 = v209;

      os_unfair_lock_lock((v96 + 40));
      v100 = *(v96 + 48);
      if (*(v100 + 16) && (v101 = sub_1A7CD0DFC(&type metadata for IDSLinkIsSelectedComponent), (v102 & 1) != 0))
      {
        sub_1A7B0CD10(*(v100 + 56) + 32 * v101, v0 + 416);
      }

      else
      {
        *(v0 + 416) = 0u;
        *(v0 + 432) = 0u;
      }

      os_unfair_lock_unlock((v96 + 40));

      sub_1A7CC9970(v0 + 16, &qword_1EB2B4CF0, &qword_1A7E41C40);
      sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
      v103 = swift_dynamicCast();
      v104 = *(v0 + 840);
      sub_1A7B0CD6C((v0 + 376));
      v105 = v208;
      v213 = v208;
      v107 = *(v208 + 16);
      v106 = *(v208 + 24);
      v108 = v107 + 1;
      if (v107 >= v106 >> 1)
      {
        sub_1A7CCEB70((v106 > 1), v107 + 1, 1);
        v105 = v213;
      }

      *(v105 + 16) = v108;
      v208 = v105;
      v109 = v105 + 32 * v107;
      *(v109 + 32) = v96;
      *(v109 + 40) = v99;
      *(v109 + 56) = v103 & v104;
      v95 += 56;
      --v94;
    }

    while (v94);
    v110 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v213 = v110;
    sub_1A7CCE918(0, v108, 0);
    v111 = (v208 + 56);
    v110 = v213;
    do
    {
      v112 = *(v111 - 3);
      v113 = *v111;
      v114 = *(v111 - 1);
      *&v209 = 8237;
      *(&v209 + 1) = 0xE200000000000000;
      *(v0 + 712) = 0;
      *(v0 + 720) = 0xE000000000000000;
      *(v0 + 672) = v112;
      *(v0 + 680) = v114;
      v115 = v110;

      sub_1A7E22D30();
      MEMORY[0x1AC561C90](8250, 0xE200000000000000);
      if (v113)
      {
        v116 = 0x64657463656C6553;
      }

      else
      {
        v116 = 0x656C655320746F4ELL;
      }

      if (v113)
      {
        v117 = 0xE800000000000000;
      }

      else
      {
        v117 = 0xEC00000064657463;
      }

      MEMORY[0x1AC561C90](v116, v117);

      MEMORY[0x1AC561C90](*(v0 + 712), *(v0 + 720));

      v110 = v115;
      v118 = v209;
      v213 = v115;
      v119 = *(v115 + 16);
      v120 = *(v110 + 24);
      if (v119 >= v120 >> 1)
      {
        sub_1A7CCE918((v120 > 1), v119 + 1, 1);
        v110 = v213;
      }

      *(v110 + 16) = v119 + 1;
      *(v110 + 16 * v119 + 32) = v118;
      v111 += 32;
      --v108;
    }

    while (v108);
  }

  else
  {
    v110 = MEMORY[0x1E69E7CC0];
    v108 = *(MEMORY[0x1E69E7CC0] + 16);
    v208 = MEMORY[0x1E69E7CC0];
    if (v108)
    {
      goto LABEL_96;
    }
  }

  *v196 = v110;
  sub_1A7CC7FFC(&qword_1EB2B4AA0, &qword_1A7E45010);
  sub_1A7CD0F8C();
  v121 = sub_1A7E221F0();
  v123 = v122;

  v124 = sub_1A7E22040();
  v125 = sub_1A7E228D0();

  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    *&v209 = v127;
    *v126 = 136315138;
    *(v126 + 4) = sub_1A7B0CB38(v121, v123, &v209);
    _os_log_impl(&dword_1A7AD9000, v124, v125, "Links Probing Input:\n%s", v126, 0xCu);
    sub_1A7B0CD6C(v127);
    MEMORY[0x1AC5654B0](v127, -1, -1);
    MEMORY[0x1AC5654B0](v126, -1, -1);
  }

  v2 = v205;
  v128 = *(v0 + 792);
  os_unfair_lock_lock((v128 + 200));
  sub_1A7CC95A0((v128 + 208), (v0 + 576));
  os_unfair_lock_unlock((v128 + 200));
  v129 = v200;
  lock = (v128 + 200);
  v191 = v128;
  sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
  type metadata accessor for LinksProbingController();
  if ((swift_dynamicCast() & 1) != 0 && *v195)
  {
    v130 = *(v0 + 800);
    v131 = LinksProbingController.update(linkEngine:links:time:)(*(v0 + 792), v208, v205);

    os_unfair_lock_lock(v130 + 8);
    sub_1A7D00A00(&v130[10], v208, v131);

    os_unfair_lock_unlock(v130 + 8);
  }

  else
  {
    v131 = 0;
  }

  v132 = v191;
  if (v204)
  {
    v195 = v131;
    if ((v205 & 0x8000000000000000) != 0)
    {
      goto LABEL_190;
    }

    v133 = 0;
    v134 = (v200 + 4);
    v196 = 136315138;
    while (2)
    {
      if (v133 >= v129[2])
      {
        goto LABEL_182;
      }

      v201 = v134;
      sub_1A7D01088(v134, v0 + 72);
      v135 = *(v0 + 72);
      v136 = *(v0 + 80);
      os_unfair_lock_lock((v135 + 40));
      v137 = *(v135 + 48);
      if (*(v137 + 16) && (v138 = sub_1A7CD0DFC(&type metadata for LinkProbingState), (v139 & 1) != 0))
      {
        sub_1A7B0CD10(*(v137 + 56) + 32 * v138, v0 + 608);
      }

      else
      {
        *(v0 + 608) = 0u;
        *(v0 + 624) = 0u;
      }

      os_unfair_lock_unlock((v135 + 40));
      if (swift_dynamicCast())
      {
        v140 = *v198;
      }

      else
      {
        LOBYTE(v140) = 2;
      }

      os_unfair_lock_lock((v136 + 40));
      if (qword_1EB2B4810 != -1)
      {
        swift_once();
      }

      v141 = (v140 != 2) & v140;
      v199 = sub_1A7B0CB00(v202, qword_1EB2B67A0);
      v142 = sub_1A7E22040();
      v143 = sub_1A7E228D0();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        *&v209 = v145;
        *v144 = 136315138;
        *(v0 + 841) = v141;
        v146 = sub_1A7E222F0();
        v148 = sub_1A7B0CB38(v146, v147, &v209);

        *(v144 + 4) = v148;
        _os_log_impl(&dword_1A7AD9000, v142, v143, "update(probingState:time:): probing behavior: %s", v144, 0xCu);
        sub_1A7B0CD6C(v145);
        v149 = v145;
        v2 = v205;
        MEMORY[0x1AC5654B0](v149, -1, -1);
        MEMORY[0x1AC5654B0](v144, -1, -1);
      }

      *(v136 + 48) = v141;
      v150 = sub_1A7D611D0(v2) || sub_1A7D61378(v2);
      v151 = *(v136 + 72);
      if (*(v136 + 48) == 1)
      {
        v152 = *(v136 + 288);
        v72 = __CFADD__(v151, v152);
        v153 = v151 + v152;
        if (v72)
        {
          goto LABEL_184;
        }

        v154 = *(v136 + 256);
        v155 = *(v136 + 312);
        v72 = __CFADD__(v154, v155);
        v156 = v154 + v155;
        if (v72)
        {
          goto LABEL_187;
        }
      }

      else
      {
        v157 = *(v136 + 272);
        v72 = __CFADD__(v151, v157);
        v153 = v151 + v157;
        if (v72)
        {
          goto LABEL_185;
        }

        v158 = *(v136 + 256);
        v159 = *(v136 + 296);
        v72 = __CFADD__(v158, v159);
        v156 = v158 + v159;
        if (v72)
        {
          goto LABEL_186;
        }
      }

      if (v156 >= v153)
      {
        v160 = v153;
      }

      else
      {
        v160 = v156;
      }

      if ((v160 & 0x8000000000000000) != 0)
      {
        goto LABEL_183;
      }

      os_unfair_lock_unlock((v136 + 40));
      if (v150)
      {
        os_unfair_lock_lock((v136 + 16));
        v161 = *(v136 + 24);
        if (v161)
        {
          v162 = *(v136 + 32);
          v163 = swift_allocObject();
          *(v163 + 16) = v161;
          *(v163 + 24) = v162;
          v164 = swift_allocObject();
          *(v164 + 16) = sub_1A7D010F8;
          *(v164 + 24) = v163;
          v165 = swift_allocObject();
          *(v165 + 16) = sub_1A7D010F8;
          *(v165 + 24) = v163;
          *(v136 + 24) = sub_1A7D013D0;
          *(v136 + 32) = v165;

          os_unfair_lock_unlock((v136 + 16));
          os_unfair_lock_lock((v136 + 40));
          if (*(v136 + 321))
          {
            os_unfair_lock_unlock((v136 + 40));

            sub_1A7B15088(sub_1A7D010FC, v164);
LABEL_118:
            ++v133;
            if (((v160 - v2) & ~((v160 - v2) >> 63)) / 1000000.0 < v50)
            {
              v50 = ((v160 - v2) & ~((v160 - v2) >> 63)) / 1000000.0;
            }

            sub_1A7B0CD6C((v0 + 88));
            v129 = v200;
            v134 = v201 + 56;
            if (v204 == v133)
            {

              v132 = v191;
              goto LABEL_156;
            }

            continue;
          }

          v166 = sub_1A7E22040();
          v167 = sub_1A7E228D0();

          if (os_log_type_enabled(v166, v167))
          {
            v168 = swift_slowAlloc();
            v169 = swift_slowAlloc();
            *&v209 = v169;
            *v168 = 136315138;
            *(v168 + 4) = sub_1A7B0CB38(*(v136 + 328), *(v136 + 336), &v209);
            _os_log_impl(&dword_1A7AD9000, v166, v167, "sendSyntheticStatsPacket: request packet on link %s", v168, 0xCu);
            sub_1A7B0CD6C(v169);
            v170 = v169;
            v2 = v205;
            MEMORY[0x1AC5654B0](v170, -1, -1);
            MEMORY[0x1AC5654B0](v168, -1, -1);
          }

          *(v136 + 321) = 1;
          os_unfair_lock_unlock((v136 + 40));
          (*(v164 + 16))(0, 0xC000000000000000);
          sub_1A7B15088(sub_1A7D010FC, v164);

LABEL_117:

          goto LABEL_118;
        }

        os_unfair_lock_unlock((v136 + 16));
      }

      break;
    }

    goto LABEL_117;
  }

LABEL_156:

  os_unfair_lock_lock(lock);
  sub_1A7CC9448((v132 + 208), v171, (v0 + 640));
  os_unfair_lock_unlock(lock);
  type metadata accessor for IDSLinkSelectorPrimarySecondary();
  if (swift_dynamicCast())
  {
    v172 = *v194;
    if (*v194)
    {
      sub_1A7CC82B4(*(v0 + 792));
    }
  }

  v173 = v192;
  v174 = *(sub_1A7DBA3CC() + 16);

  os_unfair_lock_lock((v174 + 16));
  if (*(v174 + 40) == 1)
  {
    sub_1A7D86928();
  }

  v175 = v193;

  v177 = sub_1A7CFE2F8(v176);

  os_unfair_lock_unlock((v174 + 16));

  v178 = *(v177 + 16);
  if (v178)
  {
    v179 = v177 + 40;
    do
    {
      v180 = *(v179 - 8);
      *&v209 = *(v0 + 792);

      v180(&v209);

      v179 += 16;
      --v178;
    }

    while (v178);
  }

  v181 = sub_1A7E22040();
  v182 = sub_1A7E228F0();
  if (os_log_type_enabled(v181, v182))
  {
    v183 = swift_slowAlloc();
    *v183 = 134217984;
    *(v183 + 4) = v50;
    _os_log_impl(&dword_1A7AD9000, v181, v182, "Scheduling next for %f seconds...", v183, 0xCu);
    MEMORY[0x1AC5654B0](v183, -1, -1);
  }

  if (v50 > v173 / 1.0e18 + v175)
  {
    v184 = v50;
  }

  else
  {
    v184 = v173 / 1.0e18 + v175;
  }

  v185 = v184 * 1000000.0;
  if ((*&v185 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_191;
  }

  if (v185 <= -9.22337204e18)
  {
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  if (v185 >= 9.22337204e18)
  {
LABEL_193:
    __break(1u);
    return;
  }

  v186 = (v185 >> 63) & 0xFFFFFF172B5AF000;
  v187 = 1000000000000 * v185;
  v188 = (v185 * 0xE8D4A51000uLL) >> 64;

  v189 = *(v0 + 8);

  v189(v187, v186 + v188);
}

uint64_t sub_1A7D00A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(a2 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1A7CCEB20(0, v4, 0);
    v5 = v37;
    v7 = (a2 + 48);
    while (1)
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      v11 = *(v8 + 16);
      v12 = *(v8 + 24);

      os_unfair_lock_lock((v8 + 40));
      v13 = *(v8 + 48);
      if (*(v13 + 16) && (v14 = sub_1A7CD0DFC(&type metadata for IDSLinkIsSelectedComponent), (v15 & 1) != 0))
      {
        sub_1A7B0CD10(*(v13 + 56) + 32 * v14, v35);
      }

      else
      {
        memset(v35, 0, sizeof(v35));
      }

      os_unfair_lock_unlock((v8 + 40));
      sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v16 = v36;
      if (v36 == 2)
      {
        goto LABEL_11;
      }

LABEL_12:
      v37 = v5;
      v18 = *(v5 + 16);
      v17 = *(v5 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1A7CCEB20((v17 > 1), v18 + 1, 1);
        v5 = v37;
      }

      *(v5 + 16) = v18 + 1;
      v19 = v5 + 40 * v18;
      *(v19 + 32) = v11;
      *(v19 + 40) = v12;
      *(v19 + 48) = v9;
      *(v19 + 56) = v10;
      *(v19 + 64) = v16 & 1;
      v7 += 4;
      if (!--v4)
      {
        v20 = a1;
        v3 = a3;
        goto LABEL_17;
      }
    }

    v36 = 2;
LABEL_11:

    v16 = 0;
    goto LABEL_12;
  }

  v20 = a1;
LABEL_17:

  *(v20 + 16) = v5;
  v21 = *(v3 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    *&v35[0] = MEMORY[0x1E69E7CC0];
    sub_1A7CCEB00(0, v21, 0);
    v22 = *&v35[0];
    v23 = (v3 + 48);
    do
    {
      v24 = *(v23 - 2);
      v25 = *(v23 - 8);
      v26 = *v23;
      v28 = *(v24 + 16);
      v27 = *(v24 + 24);
      *&v35[0] = v22;
      v30 = *(v22 + 16);
      v29 = *(v22 + 24);

      if (v30 >= v29 >> 1)
      {
        sub_1A7CCEB00((v29 > 1), v30 + 1, 1);
        v22 = *&v35[0];
      }

      v23 += 3;
      *(v22 + 16) = v30 + 1;
      v31 = v22 + 32 * v30;
      *(v31 + 32) = v28;
      *(v31 + 40) = v27;
      *(v31 + 48) = v25;
      *(v31 + 56) = v26;
      --v21;
    }

    while (v21);
    v20 = a1;
  }

  *(v20 + 24) = v22;
  return result;
}

uint64_t sub_1A7D00CA4()
{
  v1 = v0[2];
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 48);
  v0[3] = v2;

  os_unfair_lock_unlock((v1 + 32));
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_1A7D00D8C;

    return IDSLinksQualityRepeatingAsyncTask.stop()();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1A7D00D8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t IDSLinksQualitySemiActiveMonitorTask.deinit()
{

  sub_1A7D01164(v0 + 40);

  return v0;
}

uint64_t IDSLinksQualitySemiActiveMonitorTask.__deallocating_deinit()
{

  sub_1A7D01164(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1A7D00F34()
{
  v1 = v0[2];
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 48);
  v0[3] = v2;

  os_unfair_lock_unlock((v1 + 32));
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_1A7D013D8;

    return IDSLinksQualityRepeatingAsyncTask.stop()();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1A7D01050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

uint64_t sub_1A7D01088(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B4CF0, &qword_1A7E41C40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A7D0112C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

__n128 sub_1A7D011E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A7D011F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7D0123C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A7D012A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7D012E8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1A7D01338(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A7CEB1BC;

  return sub_1A7CFEE70(a1, v1);
}

uint64_t sub_1A7D013F0(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  sub_1A7CE8644(&v9);
  sub_1A7D0E0EC(a2, a3);
  v6 = v9;
  sub_1A7CE2B54(MEMORY[0x1E69E7CC0]);

  os_unfair_lock_lock(a1 + 50);
  v8[3] = &type metadata for IDSLinksQualityLinkCycleAssignmentsComponent;
  v8[0] = v6;

  sub_1A7CC8D74(v8, &type metadata for IDSLinksQualityLinkCycleAssignmentsComponent);
  os_unfair_lock_unlock(a1 + 50);
}

uint64_t sub_1A7D014A4(uint64_t a1, void *a2)
{
  sub_1A7CC7FFC(&qword_1EB2B4C00, &unk_1A7E45270);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A7E418C0;
  v4 = a2[6];
  v5 = a2[7];
  v6 = a2[4];
  v7 = a2[5];
  type metadata accessor for IDSLinksQualityBasicStatsOngoingTask();
  swift_allocObject();

  v9 = sub_1A7CEA9C4(v8, v4, v5, v6, v7);

  *(v3 + 32) = v9;
  *(v3 + 40) = &protocol witness table for IDSLinksQualityBasicStatsOngoingTask;
  return v3;
}

uint64_t sub_1A7D01578()
{

  sub_1A7D018DC(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_1A7D015F4(uint64_t a1)
{
  v3 = *(a1 + 56);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1A7D01714;
  *(v4 + 24) = v1;

  sub_1A7DA01FC(v5, sub_1A7D0171C, v4, v3);

  v6 = *(a1 + 40);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1A7D01724;
  *(v7 + 24) = v1;
  v8 = swift_allocObject();
  *(v8 + 16) = &unk_1A7E45260;
  *(v8 + 24) = v7;

  sub_1A7DA06A0(v9, &unk_1A7E4E210, v8, v6);
}

uint64_t sub_1A7D0172C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A7D017E0;

  return sub_1A7D9F084(a1, v4);
}

uint64_t sub_1A7D017E0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1A7D0191C()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678, &qword_1A7E4F420);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1A7E21F80();
  sub_1A7CC7A10(v3, qword_1EB2DC1F0);
  sub_1A7B0CB00(v3, qword_1EB2DC1F0);
  v4 = sub_1A7E21EF0();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_1A7E21F40();
}

uint64_t sub_1A7D01A54()
{
  v1[7] = v0;
  type metadata accessor for LEToolOptions(0);
  v1[8] = swift_task_alloc();
  type metadata accessor for LEToolRequestMessage(0);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D01B10, 0, 0);
}

uint64_t sub_1A7D01B10()
{
  type metadata accessor for LEToolRequest(0);
  swift_storeEnumTagMultiPayload();
  sub_1A7CC7FFC(&qword_1EB2B5690, &qword_1A7E45388);
  sub_1A7E21DC0();
  v0[5] = &type metadata for CLIDefaultPrinter;
  v0[6] = &protocol witness table for CLIDefaultPrinter;
  v0[2] = sub_1A7D2B464;
  v0[3] = 0;
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1A7D01C1C;
  v2 = v0[8];
  v3 = v0[9];

  return sub_1A7DE8A40(v3, v2, (v0 + 2));
}

uint64_t sub_1A7D01C1C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v2 + 88) = v0;

  sub_1A7D02B44(v4, type metadata accessor for LEToolOptions);
  sub_1A7D02B44(v3, type metadata accessor for LEToolRequestMessage);
  sub_1A7B0CD6C((v2 + 16));
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A7D01DEC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1A7D01DEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D01E58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B5690, &qword_1A7E45388);
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = sub_1A7CC7FFC(&qword_1EB2B56C8, &qword_1A7E45498);
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = type metadata accessor for LEToolSorterInvertCommand(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7E21D80();
  type metadata accessor for LEToolOptions(0);
  sub_1A7D02AA8(&qword_1EB2B56B0, type metadata accessor for LEToolOptions, &unk_1A7E46D5C);
  sub_1A7E21DD0();
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D02AF0();
  v13 = v20;
  sub_1A7E23250();
  if (!v13)
  {
    v14 = v18;
    sub_1A7D02BA4();
    sub_1A7E22F30();
    (*(v19 + 8))(v8, v6);
    (*(v14 + 40))(v12, v5, v3);
    sub_1A7D02C08(v12, v17);
  }

  sub_1A7B0CD6C(a1);
  return sub_1A7D02B44(v12, type metadata accessor for LEToolSorterInvertCommand);
}

uint64_t sub_1A7D0218C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7D02214(uint64_t a1)
{
  v2 = sub_1A7D02AF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D02250(uint64_t a1)
{
  v2 = sub_1A7D02AF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D0228C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A7CD22FC;

  return sub_1A7D01A54();
}

uint64_t sub_1A7D0233C(double a1)
{
  v1 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A7E21D80();
  type metadata accessor for LEToolOptions(0);
  sub_1A7D02AA8(&qword_1EB2B56B0, type metadata accessor for LEToolOptions, &unk_1A7E46D5C);
  return sub_1A7E21DD0();
}

uint64_t sub_1A7D02428()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678, &qword_1A7E4F420);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1A7E21F80();
  sub_1A7CC7A10(v3, qword_1EB2DC208);
  sub_1A7B0CB00(v3, qword_1EB2DC208);
  sub_1A7CC7FFC(&qword_1EB2B5680, &qword_1A7E45380);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A7E418C0;
  v5 = type metadata accessor for LEToolSorterInvertCommand(0);
  v6 = sub_1A7D02AA8(&qword_1EB2B5688, type metadata accessor for LEToolSorterInvertCommand, &unk_1A7E45450);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  v7 = sub_1A7E21EF0();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  return sub_1A7E21F40();
}

uint64_t sub_1A7D025E4(uint64_t a1)
{
  sub_1A7D027B0();
  sub_1A7E21E90();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1A7D02690@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = sub_1A7E21F80();
  v8 = sub_1A7B0CB00(v7, a2);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

unint64_t sub_1A7D02758()
{
  result = qword_1EB2B5660;
  if (!qword_1EB2B5660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5660);
  }

  return result;
}

unint64_t sub_1A7D027B0()
{
  result = qword_1EB2B5668;
  if (!qword_1EB2B5668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5668);
  }

  return result;
}

unint64_t sub_1A7D02808()
{
  result = qword_1EB2B5670;
  if (!qword_1EB2B5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5670);
  }

  return result;
}

uint64_t type metadata accessor for LEToolSorterInvertCommand(uint64_t a1)
{
  result = qword_1EB2B5698;
  if (!qword_1EB2B5698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A7D028D0(uint64_t a1)
{
  sub_1A7D0293C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A7D0293C(uint64_t a1)
{
  if (!qword_1EB2B56A8)
  {
    type metadata accessor for LEToolOptions(255);
    sub_1A7D02AA8(&qword_1EB2B56B0, type metadata accessor for LEToolOptions, &unk_1A7E46D5C);
    v1 = sub_1A7E21DE0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB2B56A8);
    }
  }
}

uint64_t sub_1A7D02AA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A7D02AF0()
{
  result = qword_1EB2B56D0;
  if (!qword_1EB2B56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B56D0);
  }

  return result;
}

uint64_t sub_1A7D02B44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A7D02BA4()
{
  result = qword_1EB2B56D8;
  if (!qword_1EB2B56D8)
  {
    sub_1A7CC9830(&qword_1EB2B5690, &qword_1A7E45388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B56D8);
  }

  return result;
}

uint64_t sub_1A7D02C08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LEToolSorterInvertCommand(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A7D02C80()
{
  result = qword_1EB2B56E0;
  if (!qword_1EB2B56E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B56E0);
  }

  return result;
}

unint64_t sub_1A7D02CD8()
{
  result = qword_1EB2B56E8;
  if (!qword_1EB2B56E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B56E8);
  }

  return result;
}

unint64_t sub_1A7D02D30()
{
  result = qword_1EB2B56F0;
  if (!qword_1EB2B56F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B56F0);
  }

  return result;
}

uint64_t sub_1A7D02D8C()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B2D30);
  sub_1A7B0CB00(v0, qword_1EB2B2D30);
  return sub_1A7E22050();
}

uint64_t sub_1A7D02E14()
{
  v0 = sub_1A7E21850();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A7E21940();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  sub_1A7E218B0();
  v13[0] = 0xD00000000000001CLL;
  v13[1] = 0x80000001A7EADC30;
  (*(v1 + 104))(v3, *MEMORY[0x1E6968F70], v0);
  sub_1A7CC7DFC();
  sub_1A7E21920();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  type metadata accessor for IDSPacketLogManager(0);
  v11 = swift_allocObject();
  result = sub_1A7D03024(v10);
  qword_1EB2DC088 = v11;
  return result;
}

uint64_t sub_1A7D03024(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  sub_1A7CC7FFC(&qword_1EB2B56F8, qword_1A7E45608);
  sub_1A7CC7FFC(&qword_1EB2B5710, &qword_1A7E45678);
  sub_1A7CF3788(&qword_1EB2B2970, &qword_1EB2B5710, &qword_1A7E45678, MEMORY[0x1E69E9290]);
  sub_1A7E21D40();
  v4 = OBJC_IVAR____TtC13IDSFoundation19IDSPacketLogManager_directory;
  v5 = sub_1A7E21940();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2 + v4, a1, v5);
  v7 = sub_1A7E22260();
  v8 = sub_1A7E22260();
  v9 = MEMORY[0x1AC562F80](v7, v8);

  if (v9)
  {
    sub_1A7E22AA0();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (*(&v25 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = v23;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1A7CC9970(&v26, &unk_1EB2B7C70, &qword_1A7E45680);
  }

  v10 = 0x4122750000000000;
LABEL_9:
  *(v2 + OBJC_IVAR____TtC13IDSFoundation19IDSPacketLogManager_maximumAge) = v10;
  if (qword_1EB2B2D28 != -1)
  {
    swift_once();
  }

  v11 = sub_1A7E22060();
  sub_1A7B0CB00(v11, qword_1EB2B2D30);
  v12 = sub_1A7E22040();
  v13 = sub_1A7E228F0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v10;
    _os_log_impl(&dword_1A7AD9000, v12, v13, "PacketLog maximum age: %f", v14, 0xCu);
    MEMORY[0x1AC5654B0](v14, -1, -1);
  }

  v15 = sub_1A7E22260();
  v16 = sub_1A7E22260();
  v17 = MEMORY[0x1AC562F80](v15, v16);

  if (v17)
  {
    sub_1A7E22AA0();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (*(&v25 + 1))
  {
    if (swift_dynamicCast())
    {
      v18 = v23;
      goto LABEL_21;
    }
  }

  else
  {
    sub_1A7CC9970(&v26, &unk_1EB2B7C70, &qword_1A7E45680);
  }

  v18 = 52428800;
LABEL_21:
  *(v2 + OBJC_IVAR____TtC13IDSFoundation19IDSPacketLogManager_maximumSize) = v18;
  v19 = sub_1A7E22040();
  v20 = sub_1A7E228F0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = v18;
    _os_log_impl(&dword_1A7AD9000, v19, v20, "PacketLog maximum size: %ld", v21, 0xCu);
    MEMORY[0x1AC5654B0](v21, -1, -1);
  }

  (*(v6 + 8))(a1, v5);
  return v2;
}

uint64_t sub_1A7D034C0()
{
  v1[19] = v0;
  sub_1A7CC7FFC(&qword_1EB2B5798, &unk_1A7E4C6D0);
  v1[20] = swift_task_alloc();
  v2 = sub_1A7E216F0();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v3 = sub_1A7E21940();
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v4 = sub_1A7E21B00();
  v1[32] = v4;
  v1[33] = *(v4 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D036F8, v0, 0);
}

uint64_t sub_1A7D036F8(uint64_t a1)
{
  v158 = v1;
  v157[1] = *MEMORY[0x1E69E9840];
  v2 = v1[35];
  v3 = v1[32];
  v4 = v1[33];
  sub_1A7E21AF0();
  sub_1A7E21AE0();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v136 = objc_opt_self();
  v6 = [v136 defaultManager];
  v7 = sub_1A7E218E0();
  sub_1A7CC7FFC(&qword_1EB2B5758, &qword_1A7E4F580);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A7E455C0;
  v9 = *MEMORY[0x1E695DBB8];
  v10 = *MEMORY[0x1E695DA98];
  *(v8 + 32) = *MEMORY[0x1E695DBB8];
  *(v8 + 40) = v10;
  v11 = *MEMORY[0x1E695DB50];
  *(v8 + 48) = *MEMORY[0x1E695DB50];
  type metadata accessor for URLResourceKey(0);
  v152 = v9;
  v137 = v10;
  v138 = v11;
  v12 = sub_1A7E22520();

  v1[17] = 0;
  v13 = [v6 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:v12 options:0 error:v1 + 17];

  v139 = v1 + 17;
  v14 = v1[17];
  if (!v13)
  {
    v18 = v1[36];
    v19 = v1[32];
    v20 = v14;
    v14 = sub_1A7E217F0();

    swift_willThrow();
    v5(v18, v19);
    if (qword_1EB2B2D28 != -1)
    {
      goto LABEL_62;
    }

    goto LABEL_4;
  }

  v15 = sub_1A7E22530();
  v16 = v14;

  v157[0] = v15;

  sub_1A7D08A6C(v157, v17);

  v151 = v157[0];
  v150 = *(v157[0] + 16);
  if (!v150)
  {
LABEL_55:
    v125 = v1[36];
    v126 = v1[32];

    v5(v125, v126);
    goto LABEL_57;
  }

  v29 = 0;
  v144 = 0;
  v145 = 0;
  v141 = 0;
  v142 = 0;
  v30 = v1[33];
  v31 = v1[27];
  v134 = v1[19];
  v147 = v157[0] + ((*(v31 + 80) + 32) & ~*(v31 + 80));
  v148 = v31;
  v133 = OBJC_IVAR____TtC13IDSFoundation19IDSPacketLogManager_maximumSize;
  v156 = (v31 + 8);
  v140 = (v1[22] + 8);
  v135 = (v30 + 48);
  v132 = (v30 + 32);
  v149 = v5;
  v146 = v1;
  while (v29 < *(v151 + 16))
  {
    v32 = *(v148 + 16);
    v32(v1[31], v147 + *(v148 + 72) * v29, v1[26]);
    if (qword_1EB2B2D28 != -1)
    {
      swift_once();
    }

    v33 = v1[30];
    v34 = v1[31];
    v35 = v1[26];
    v36 = sub_1A7E22060();
    sub_1A7B0CB00(v36, qword_1EB2B2D30);
    v32(v33, v34, v35);
    v37 = sub_1A7E22040();
    v38 = sub_1A7E228F0();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v1[30];
    v41 = v1[26];
    v155 = v29;
    if (v39)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v157[0] = v43;
      *v42 = 136315650;
      sub_1A7D0D444(&qword_1EB2B3058, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v44 = sub_1A7E23090();
      v46 = v45;
      v154 = *v156;
      (*v156)(v40, v41);
      v47 = sub_1A7B0CB38(v44, v46, v157);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2048;
      *(v42 + 14) = v142;
      *(v42 + 22) = 1024;
      *(v42 + 24) = v141 & 1;
      _os_log_impl(&dword_1A7AD9000, v37, v38, "  evaluating %s (accumulated size: %ld; shouldDeleteRemainingFiles: %{BOOL}d)...", v42, 0x1Cu);
      sub_1A7B0CD6C(v43);
      MEMORY[0x1AC5654B0](v43, -1, -1);
      MEMORY[0x1AC5654B0](v42, -1, -1);

      v144 = v141;
      v145 = v142;
    }

    else
    {

      v154 = *v156;
      (*v156)(v40, v41);
    }

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A7E418C0;
    *(inited + 32) = v152;
    v49 = v152;
    sub_1A7D0BFFC(inited);
    swift_setDeallocating();
    sub_1A7D0D3E8(inited + 32);
    sub_1A7E21880();
    v50 = v1[25];
    v51 = v1[21];

    v52 = sub_1A7E216C0();
    v53 = *v140;
    (*v140)(v50, v51);
    if (v52 == 2 || (v52 & 1) == 0)
    {
      v32(v1[29], v1[31], v1[26]);
      v14 = sub_1A7E22040();
      v56 = sub_1A7E228F0();
      v57 = os_log_type_enabled(v14, v56);
      v58 = v1[31];
      v59 = v1[29];
      v60 = v1[26];
      if (v57)
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v157[0] = v62;
        *v61 = 136315138;
        sub_1A7D0D444(&qword_1EB2B3058, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v63 = sub_1A7E23090();
        v65 = v64;
        (v154)(v59, v60);
        v66 = sub_1A7B0CB38(v63, v65, v157);

        *(v61 + 4) = v66;
        _os_log_impl(&dword_1A7AD9000, v14, v56, "  ... skipping %s because it is not a regular file", v61, 0xCu);
        sub_1A7B0CD6C(v62);
        MEMORY[0x1AC5654B0](v62, -1, -1);
        MEMORY[0x1AC5654B0](v61, -1, -1);
      }

      else
      {

        (v154)(v59, v60);
      }

      (v154)(v58, v60);
      v5 = v149;
      v67 = v155;
      v1 = v146;
      goto LABEL_21;
    }

    v54 = swift_initStackObject();
    *(v54 + 16) = xmmword_1A7E418C0;
    *(v54 + 32) = v138;
    v55 = v138;
    sub_1A7D0BFFC(v54);
    swift_setDeallocating();
    sub_1A7D0D3E8(v54 + 32);
    sub_1A7E21880();
    v68 = v1[24];
    v69 = v1[21];

    v14 = sub_1A7E216E0();
    v71 = v70;
    v53(v68, v69);
    if (v71)
    {
      v72 = 0;
    }

    else
    {
      v72 = v14;
    }

    v73 = __OFADD__(v145, v72);
    v145 += v72;
    if (v73)
    {
      goto LABEL_61;
    }

    v74 = swift_initStackObject();
    *(v74 + 16) = xmmword_1A7E418C0;
    *(v74 + 32) = v137;
    v75 = v137;
    sub_1A7D0BFFC(v74);
    swift_setDeallocating();
    sub_1A7D0D3E8(v74 + 32);
    sub_1A7E21880();
    v76 = v1[32];
    v77 = v1[23];
    v79 = v1[20];
    v78 = v1[21];

    sub_1A7E216D0();
    v53(v77, v78);
    v5 = v149;
    if ((*v135)(v79, 1, v76) == 1)
    {
      v80 = v1[32];
      v81 = v1[20];
      sub_1A7E21AF0();
      if ((*v135)(v81, 1, v80) != 1)
      {
        sub_1A7CC9970(v1[20], &qword_1EB2B5798, &unk_1A7E4C6D0);
      }
    }

    else
    {
      (*v132)(v1[34], v1[20], v1[32]);
    }

    if (*(v134 + v133) < v145)
    {
      v82 = sub_1A7E22040();
      v83 = sub_1A7E228F0();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_1A7AD9000, v82, v83, "  ... have reached maximum size", v84, 2u);
        MEMORY[0x1AC5654B0](v84, -1, -1);
      }

      if (sub_1A7E21AB0())
      {
LABEL_37:
        v85 = sub_1A7E22040();
        v86 = sub_1A7E228F0();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          *v87 = 0;
          _os_log_impl(&dword_1A7AD9000, v85, v86, "  ... have reached earliest allowed date", v87, 2u);
          MEMORY[0x1AC5654B0](v87, -1, -1);
        }
      }

      v141 = 1;
      goto LABEL_41;
    }

    if (sub_1A7E21AB0())
    {
      goto LABEL_37;
    }

    if ((v144 & 1) == 0)
    {
      v118 = sub_1A7E22040();
      v119 = sub_1A7E228F0();
      v120 = os_log_type_enabled(v118, v119);
      v121 = v1[34];
      v14 = v1[31];
      v122 = v1[32];
      v123 = v1[26];
      if (v120)
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&dword_1A7AD9000, v118, v119, "  ... keeping file as it is neither too old nor too large", v124, 2u);
        MEMORY[0x1AC5654B0](v124, -1, -1);
      }

      v5 = v149;
      v149(v121, v122);
      (v154)(v14, v123);
      v144 = 0;
      goto LABEL_54;
    }

LABEL_41:
    v88 = sub_1A7E22040();
    v89 = sub_1A7E228F0();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_1A7AD9000, v88, v89, "  ... removing file", v90, 2u);
      MEMORY[0x1AC5654B0](v90, -1, -1);
    }

    v91 = [v136 defaultManager];
    v92 = sub_1A7E218E0();
    v1[18] = 0;
    v93 = [v91 removeItemAtURL:v92 error:v139 + 1];

    v94 = v1[18];
    if (v93)
    {
      v14 = v1[34];
      v96 = v1[31];
      v95 = v1[32];
      v97 = v1[26];
      v98 = v94;
      v149(v14, v95);
      (v154)(v96, v97);
    }

    else
    {
      v99 = v1[31];
      v100 = v1[28];
      v101 = v1[26];
      v102 = v94;
      v14 = sub_1A7E217F0();

      swift_willThrow();
      v32(v100, v99, v101);
      v103 = v14;
      v104 = sub_1A7E22040();
      v105 = sub_1A7E228E0();

      v106 = os_log_type_enabled(v104, v105);
      v107 = v1[34];
      v108 = v1[32];
      v153 = v1[31];
      v109 = v1[28];
      v110 = v1[26];
      if (v106)
      {
        v111 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v157[0] = v130;
        *v111 = 136315394;
        sub_1A7D0D444(&qword_1EB2B3058, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v143 = v107;
        v112 = sub_1A7E23090();
        v131 = v108;
        v114 = v113;
        (v154)(v109, v110);
        v115 = sub_1A7B0CB38(v112, v114, v157);

        *(v111 + 4) = v115;
        *(v111 + 12) = 2112;
        v116 = v14;
        v117 = _swift_stdlib_bridgeErrorToNSError();
        *(v111 + 14) = v117;
        *v129 = v117;
        _os_log_impl(&dword_1A7AD9000, v104, v105, "  ... error removing packet log at %s: %@", v111, 0x16u);
        sub_1A7CC9970(v129, &qword_1EB2B57A0, qword_1A7E45740);
        MEMORY[0x1AC5654B0](v129, -1, -1);
        sub_1A7B0CD6C(v130);
        MEMORY[0x1AC5654B0](v130, -1, -1);
        MEMORY[0x1AC5654B0](v111, -1, -1);

        v149(v143, v131);
      }

      else
      {

        v14 = v154;
        (v154)(v109, v110);
        v149(v107, v108);
      }

      (v154)(v153, v110);
    }

    v144 = 1;
LABEL_54:
    v142 = v145;
    v67 = v155;
LABEL_21:
    v29 = v67 + 1;
    if (v150 == v29)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  swift_once();
LABEL_4:
  v21 = sub_1A7E22060();
  sub_1A7B0CB00(v21, qword_1EB2B2D30);
  v22 = v14;
  v23 = sub_1A7E22040();
  v24 = sub_1A7E228E0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    v27 = v14;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v28;
    *v26 = v28;
    _os_log_impl(&dword_1A7AD9000, v23, v24, "Error cleaning packet logs: %@", v25, 0xCu);
    sub_1A7CC9970(v26, &qword_1EB2B57A0, qword_1A7E45740);
    MEMORY[0x1AC5654B0](v26, -1, -1);
    MEMORY[0x1AC5654B0](v25, -1, -1);
  }

  else
  {
  }

LABEL_57:

  v127 = v1[1];

  return v127();
}

uint64_t sub_1A7D04914(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v41 = a2;
  v2 = sub_1A7E216F0();
  v45 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B5798, &unk_1A7E4C6D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_1A7E21B00();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v39 = sub_1A7CC7FFC(&qword_1EB2B5758, &qword_1A7E4F580);
  inited = swift_initStackObject();
  v38 = xmmword_1A7E418C0;
  *(inited + 16) = xmmword_1A7E418C0;
  v19 = *MEMORY[0x1E695DA98];
  *(inited + 32) = *MEMORY[0x1E695DA98];
  v35 = v19;
  sub_1A7D0BFFC(inited);
  swift_setDeallocating();
  sub_1A7D0D3E8(inited + 32);
  v20 = v37;
  sub_1A7E21880();
  v46 = v17;
  v42 = v2;
  if (v20)
  {

    (*(v13 + 56))(v11, 1, 1, v12);
  }

  else
  {

    sub_1A7E216D0();
    (*(v45 + 8))(v6, v2);
    v21 = *(v13 + 48);
    if (v21(v11, 1, v12) != 1)
    {
      (*(v13 + 32))(v46, v11, v12);
      goto LABEL_7;
    }
  }

  sub_1A7E21AF0();
  v21 = *(v13 + 48);
  if (v21(v11, 1, v12) != 1)
  {
    sub_1A7CC9970(v11, &qword_1EB2B5798, &unk_1A7E4C6D0);
  }

LABEL_7:
  v22 = swift_initStackObject();
  *(v22 + 16) = v38;
  *(v22 + 32) = v35;
  v23 = v22 + 32;
  sub_1A7D0BFFC(v22);
  swift_setDeallocating();
  sub_1A7D0D3E8(v23);
  v24 = v40;
  sub_1A7E21880();
  v25 = v42;
  v26 = v45;

  v27 = v44;
  sub_1A7E216D0();
  (*(v26 + 8))(v24, v25);
  v28 = v21(v27, 1, v12);
  v29 = v43;
  if (v28 == 1)
  {
    sub_1A7E21AF0();
    if (v21(v27, 1, v12) != 1)
    {
      sub_1A7CC9970(v27, &qword_1EB2B5798, &unk_1A7E4C6D0);
    }
  }

  else
  {
    (*(v13 + 32))(v43, v27, v12);
  }

  v30 = v46;
  v31 = sub_1A7E21AB0();
  v32 = *(v13 + 8);
  v32(v29, v12);
  v32(v30, v12);
  return v31 & 1;
}

uint64_t sub_1A7D04E54@<X0>(uint64_t a1@<X8>)
{
  v114 = a1;
  v113 = sub_1A7CC7FFC(&qword_1EB2B5710, &qword_1A7E45678);
  v115 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v98 - v1;
  v125 = sub_1A7CC7FFC(&qword_1EB2B5718, &qword_1A7E45688);
  v112 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v122 = &v98 - v4;
  v106 = sub_1A7E21C70();
  v107 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v102 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v103 = &v98 - v7;
  v8 = sub_1A7CC7FFC(&qword_1EB2B5720, &qword_1A7E45690);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v101 = &v98 - v9;
  v108 = sub_1A7CC7FFC(&qword_1EB2B5728, &qword_1A7E45698);
  v109 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v104 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v105 = &v98 - v12;
  v13 = sub_1A7CC7FFC(&qword_1EB2B5730, &qword_1A7E456A0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v98 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v98 - v21;
  v123 = sub_1A7CC7FFC(&qword_1EB2B5738, &qword_1A7E456A8);
  v110 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v24 = &v98 - v23;
  v127 = sub_1A7E21D00();
  v138 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v99 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v98 - v27;
  v136 = sub_1A7CC7FFC(&qword_1EB2B5740, &qword_1A7E456B0);
  v140 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v100 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v137 = &v98 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v134 = &v98 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v121 = &v98 - v35;
  sub_1A7E21C60();
  v117 = v16;
  sub_1A7E21D30();
  v120 = MEMORY[0x1E69E9290];
  v36 = sub_1A7CF3788(&unk_1EB2B2980, &qword_1EB2B5730, &qword_1A7E456A0, MEMORY[0x1E69E9290]);
  MEMORY[0x1AC561520](v16, v13, v36);
  v37 = *(v14 + 8);
  v37(v16, v13);
  v116 = v19;
  sub_1A7E21C50();
  v37(v19, v13);
  v139 = v14 + 8;
  v38 = sub_1A7CC7FFC(&qword_1EB2B5748, &qword_1A7E456B8);
  v128 = v24;
  v135 = v22;
  v118 = v38;
  sub_1A7E21CE0();
  v37(v22, v13);
  v39 = *(v138 + 8);
  v138 += 8;
  v133 = v39;
  v40 = v127;
  v39(v28, v127);
  v41 = v134;
  MEMORY[0x1AC561560](v24, v38);
  v132 = sub_1A7CF3788(&qword_1EB2B3020, &qword_1EB2B5740, &qword_1A7E456B0, MEMORY[0x1E69E8278]);
  v42 = v136;
  MEMORY[0x1AC561520](v41, v136, v132);
  v43 = *(v140 + 8);
  v140 += 8;
  v131 = v43;
  v43(v41, v42);
  sub_1A7E21C60();
  v44 = v117;
  sub_1A7E21D30();
  v45 = v116;
  v46 = v13;
  v126 = v13;
  MEMORY[0x1AC561520](v44, v13, v36);
  v37(v44, v13);
  v47 = v135;
  v129 = v36;
  sub_1A7E21C50();
  v37(v45, v46);
  v130 = v37;
  v48 = v128;
  v49 = v118;
  sub_1A7E21CE0();
  v37(v47, v46);
  v98 = v28;
  v133(v28, v40);
  v50 = v137;
  MEMORY[0x1AC561560](v48, v49);
  v51 = v136;
  MEMORY[0x1AC561520](v50, v136, v132);
  v131(v50, v51);
  v143 = 45;
  v144 = 0xE100000000000000;
  v119 = sub_1A7D08A18();
  MEMORY[0x1AC561520](v145, &v143, MEMORY[0x1E69E6158], v119);
  sub_1A7E21C60();
  v52 = sub_1A7E21D20();
  v53 = v101;
  (*(*(v52 - 8) + 56))(v101, 1, 1, v52);
  v54 = v99;
  sub_1A7E21C60();
  v55 = v102;
  sub_1A7E21D10();
  v56 = sub_1A7D0D444(&qword_1EB2B3028, MEMORY[0x1E69E8250], MEMORY[0x1E69E8248]);
  v57 = v103;
  v58 = v106;
  MEMORY[0x1AC561520](v55, v106, v56);
  v59 = *(v107 + 8);
  v59(v55, v58);
  v60 = v117;
  sub_1A7E21C50();
  v59(v57, v58);
  v61 = v116;
  v62 = MEMORY[0x1E69E67B0];
  v63 = v126;
  sub_1A7E21CF0();
  v64 = v63;
  v65 = v130;
  v130(v60, v64);
  v66 = v127;
  v133(v54, v127);
  sub_1A7CC9970(v53, &qword_1EB2B5720, &qword_1A7E45690);
  v67 = v104;
  MEMORY[0x1AC561570](v61, v62);
  v68 = sub_1A7CF3788(&qword_1EB2B3018, &qword_1EB2B5728, &qword_1A7E45698, MEMORY[0x1E69E8290]);
  v69 = v105;
  v70 = v108;
  MEMORY[0x1AC561520](v67, v108, v68);
  v71 = *(v109 + 8);
  v71(v67, v70);
  v72 = v135;
  sub_1A7E21C50();
  v71(v69, v70);
  v73 = v128;
  v74 = v118;
  v75 = v126;
  v76 = v98;
  sub_1A7E21CE0();
  v65(v72, v75);
  v77 = v133;
  v133(v76, v66);
  v78 = v100;
  MEMORY[0x1AC561560](v73, v74);
  v79 = v78;
  v80 = v78;
  v81 = v136;
  MEMORY[0x1AC561520](v79, v136, v132);
  v131(v80, v81);
  v141 = 0x676F6C702ELL;
  v142 = 0xE500000000000000;
  MEMORY[0x1AC561520](&v143, &v141, MEMORY[0x1E69E6158], v119);
  sub_1A7E21C50();
  sub_1A7E21C60();
  sub_1A7CC7FFC(&qword_1EB2B5750, &unk_1A7E456C0);
  v82 = v120;
  sub_1A7CF3788(&qword_1EB2B2968, &qword_1EB2B5738, &qword_1A7E456A8, v120);
  sub_1A7E21CC0();
  v83 = v127;
  v77(v76, v127);
  v84 = v145[0];
  v85 = v145[1];
  sub_1A7E21C60();
  v141 = v84;
  v142 = v85;
  v86 = v135;
  sub_1A7E21CD0();

  sub_1A7CF3788(&qword_1EB2B2978, &qword_1EB2B5718, &qword_1A7E45688, v82);
  v87 = v126;
  sub_1A7E21CC0();
  v130(v86, v87);
  v77(v76, v83);
  sub_1A7E21C60();
  sub_1A7CC7FFC(&qword_1EB2B56F8, qword_1A7E45608);
  v88 = v111;
  v89 = v136;
  sub_1A7E21CC0();
  v77(v76, v83);
  v90 = v143;
  v91 = v144;
  sub_1A7E21C60();
  v141 = v90;
  v142 = v91;
  v92 = v135;
  sub_1A7E21CD0();

  sub_1A7CF3788(&qword_1EB2B2970, &qword_1EB2B5710, &qword_1A7E45678, v120);
  v93 = v113;
  sub_1A7E21CC0();
  v130(v92, v87);
  v77(v76, v83);
  (*(v115 + 8))(v88, v93);
  v94 = *(v112 + 8);
  v95 = v125;
  v94(v124, v125);
  v94(v122, v95);
  (*(v110 + 8))(v128, v123);
  v96 = v131;
  v131(v137, v89);
  v96(v134, v89);
  return (v96)(v121, v89);
}

uint64_t sub_1A7D05EC0(uint64_t a1, void *a2)
{
  v257 = a2;
  v298 = *MEMORY[0x1E69E9840];
  v252 = sub_1A7E222E0();
  v239 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252);
  v251 = &v224 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v266 = &v224 - v5;
  v6 = sub_1A7CC7FFC(&qword_1EB2B5780, &qword_1A7E45718);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v272 = &v224 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v271 = &v224 - v9;
  v276 = sub_1A7CC7FFC(&qword_1EB2B4B90, &qword_1A7E45720);
  v259 = *(v276 - 8);
  MEMORY[0x1EEE9AC00](v276);
  v241 = &v224 - v10;
  v11 = sub_1A7CC7FFC(&qword_1EB2B5788, &qword_1A7E45728);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v242 = &v224 - v12;
  v253 = sub_1A7CC7FFC(&qword_1EB2B5790, &unk_1A7E45730);
  *&v238 = *(v253 - 8);
  MEMORY[0x1EEE9AC00](v253);
  v240 = &v224 - v13;
  v260 = sub_1A7E216F0();
  v261 = *(v260 - 8);
  MEMORY[0x1EEE9AC00](v260);
  v277 = &v224 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A7E21850();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v224 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A7E21940();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v256 = &v224 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v279 = &v224 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v278 = &v224 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v224 - v27;
  v29 = objc_opt_self();
  v30 = [v29 defaultManager];
  v282 = 0x65737365636F7270;
  v283 = 0xE900000000000064;
  v31 = *(v16 + 104);
  v247 = *MEMORY[0x1E6968F70];
  v246 = v16 + 104;
  v245 = v31;
  v31(v18);
  v258 = sub_1A7CC7DFC();
  v270 = a1;
  sub_1A7E21930();
  v32 = *(v16 + 8);
  v248 = v18;
  v250 = v15;
  v249 = v16 + 8;
  v244 = v32;
  v32(v18, v15);
  v33 = sub_1A7E218E0();
  v254 = v20;
  v34 = *(v20 + 8);
  v273 = v19;
  v275 = v20 + 8;
  v274 = v34;
  v34(v28, v19);
  v282 = 0;
  LODWORD(a1) = [v30 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:&v282];

  if (!a1)
  {
    v117 = v282;
    sub_1A7E217F0();

    return swift_willThrow();
  }

  v35 = v282;
  v36 = sub_1A7CE3014(MEMORY[0x1E69E7CC0]);
  v37 = [v29 defaultManager];
  v38 = sub_1A7E218E0();
  v269 = sub_1A7CC7FFC(&qword_1EB2B5758, &qword_1A7E4F580);
  v39 = swift_allocObject();
  v268 = xmmword_1A7E418C0;
  *(v39 + 16) = xmmword_1A7E418C0;
  v40 = *MEMORY[0x1E695DBB8];
  *(v39 + 32) = *MEMORY[0x1E695DBB8];
  type metadata accessor for URLResourceKey(0);
  v267 = v40;
  v41 = sub_1A7E22520();

  v282 = 0;
  v42 = [v37 contentsOfDirectoryAtURL:v38 includingPropertiesForKeys:v41 options:0 error:&v282];

  v43 = v282;
  if (!v42)
  {
    v119 = v282;
    sub_1A7E217F0();

    swift_willThrow();
  }

  v255 = v36;
  v44 = v273;
  v45 = sub_1A7E22530();
  v46 = v43;

  v264 = *(v45 + 16);
  if (v264)
  {
    v47 = 0;
    v48 = v254;
    v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v237 = OBJC_IVAR____TtC13IDSFoundation19IDSPacketLogManager_packetLogFilePattern;
    v263 = (v45 + v49);
    v265 = v254 + 16;
    ++v261;
    v236 = (v238 + 56);
    v235 = (v238 + 48);
    v234 = (v238 + 32);
    v233 = "Could not read log file at ";
    *&v238 = v238 + 8;
    v50 = v260;
    v51 = v278;
    v262 = v45;
    while (1)
    {
      if (v47 >= *(v45 + 16))
      {
        goto LABEL_88;
      }

      v52 = *(v48 + 16);
      (v52)(v51, v263 + *(v48 + 72) * v47, v44);
      v53 = swift_allocObject();
      *(v53 + 16) = v268;
      v54 = v267;
      *(v53 + 32) = v267;
      v55 = v54;
      sub_1A7D0BFFC(v53);
      swift_setDeallocating();
      sub_1A7D0D3E8(v53 + 32);
      swift_deallocClassInstance();
      v56 = v277;
      v57 = v280;
      sub_1A7E21880();
      v280 = v57;
      if (v57)
      {
        v274(v278, v44);
      }

      v58 = sub_1A7E216C0();
      v59 = v56;
      v60 = v58;
      v61 = v58;
      (*v261)(v59, v50);
      if (v61 != 2 && (v60 & 1) != 0)
      {
        break;
      }

      v51 = v278;
      v274(v278, v44);
LABEL_6:
      v45 = v262;
      if (v264 == ++v47)
      {
        goto LABEL_35;
      }
    }

    v62 = v257[3];
    v63 = v257[4];
    sub_1A7CC9878(v257, v62);
    v64 = sub_1A7CCC2B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v66 = *(v64 + 2);
    v65 = *(v64 + 3);
    if (v66 >= v65 >> 1)
    {
      v64 = sub_1A7CCC2B0((v65 > 1), v66 + 1, 1, v64);
    }

    *(v64 + 2) = v66 + 1;
    v67 = &v64[48 * v66];
    *(v67 + 4) = 0x676E696B63656843;
    *(v67 + 5) = 0xE900000000000020;
    *(v67 + 24) = 0;
    *(v67 + 7) = 0;
    *(v67 + 8) = 0;
    v67[72] = 2;
    v68 = sub_1A7E218C0();
    v72 = *(v64 + 2);
    v71 = *(v64 + 3);
    v73 = v71 >> 1;
    v74 = v72 + 1;
    if (v71 >> 1 <= v72)
    {
      v232 = v68;
      v115 = v69;
      v116 = sub_1A7CCC2B0((v71 > 1), v72 + 1, 1, v64);
      v69 = v115;
      v44 = v273;
      v64 = v116;
      v68 = v232;
      v71 = *(v64 + 3);
      v73 = v71 >> 1;
    }

    *(v64 + 2) = v74;
    v75 = &v64[48 * v72];
    *(v75 + 4) = v68;
    *(v75 + 5) = v69;
    *(v75 + 24) = 768;
    *(v75 + 7) = 0;
    *(v75 + 8) = 0;
    v75[72] = 2;
    v76 = v72 + 2;
    if (v73 < v76)
    {
      v64 = sub_1A7CCC2B0((v71 > 1), v76, 1, v64);
    }

    *(v64 + 2) = v76;
    v77 = &v64[48 * v74];
    *(v77 + 4) = 3026478;
    *(v77 + 5) = 0xE300000000000000;
    *(v77 + 24) = 0;
    *(v77 + 7) = 0;
    *(v77 + 8) = 0;
    v77[72] = 2;
    v282 = 0;
    v283 = 0;
    LOBYTE(v284) = 1;
    v285 = v64;
    v78 = &v282;
    v79 = v62;
    v80 = v63;
    CLIPrinter.print(_:)(*(&v70 - 3));

    v81 = v278;
    sub_1A7E218C0();
    sub_1A7CC7FFC(&qword_1EB2B5710, &qword_1A7E45678);
    v82 = v242;
    v83 = v280;
    sub_1A7E21D50();
    if (v83)
    {

      v274(v81, v44);
      (*v236)(v82, 1, 1, v253);
      v280 = 0;
      v50 = v260;
      v51 = v81;
    }

    else
    {
      v280 = 0;

      v84 = v253;
      v85 = (*v235)(v82, 1, v253);
      v50 = v260;
      if (v85 != 1)
      {
        (*v234)(v240, v82, v84);
        sub_1A7CC9878(v257, v257[3]);
        v86._object = (v233 | 0x8000000000000000);
        v86._countAndFlagsBits = 0xD000000000000010;
        CLIPrinter.print(_:)(v86);
        sub_1A7E21D60();

        v226 = v286;
        v225 = v287;
        v87 = v289;
        v224 = v288;
        v88 = v291;
        v89 = v292;
        v90 = v293;
        v229 = v294;
        v228 = v295;
        v91 = v297;
        v227 = v296;
        v232 = v290;
        v92 = MEMORY[0x1AC561BF0]();
        v94 = *(v255 + 16);
        v231 = v88;
        v230 = v89;
        if (v94)
        {
          v95 = sub_1A7CD1248(v92, v93);
          v97 = v96;

          v98 = MEMORY[0x1E69E7CC0];
          if (v97)
          {
            v98 = *(*(v255 + 56) + 8 * v95);
          }
        }

        else
        {

          v98 = MEMORY[0x1E69E7CC0];
        }

        v226 = MEMORY[0x1AC561BF0](v226, v225, v224, v87);
        v100 = v99;

        v101 = MEMORY[0x1AC561BF0](v229, v228, v227, v91);
        v103 = v102;

        v104 = (v241 + *(v276 + 48));
        v105 = (v241 + *(v276 + 64));
        v52();
        *v104 = v226;
        v104[1] = v100;
        *v105 = v101;
        v105[1] = v103;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_1A7CCD4A8(0, v98[2] + 1, 1, v98);
        }

        v50 = v260;
        v106 = v232;
        v108 = v98[2];
        v107 = v98[3];
        v44 = v273;
        v109 = v253;
        if (v108 >= v107 >> 1)
        {
          v98 = sub_1A7CCD4A8((v107 > 1), v108 + 1, 1, v98);
        }

        v98[2] = v108 + 1;
        sub_1A7CE5028(v241, v98 + ((*(v259 + 80) + 32) & ~*(v259 + 80)) + *(v259 + 72) * v108, &qword_1EB2B4B90, &qword_1A7E45720);
        v110 = MEMORY[0x1AC561BF0](v106, v231, v230, v90);
        v112 = v111;

        v113 = v255;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v282 = v113;
        sub_1A7DC4710(v98, v110, v112, isUniquelyReferenced_nonNull_native);

        v255 = v282;
        (*v238)(v240, v109);
        v51 = v278;
        v274(v278, v44);
        goto LABEL_22;
      }

      v51 = v278;
      v274(v278, v44);
    }

    sub_1A7CC9970(v82, &qword_1EB2B5788, &qword_1A7E45728);
LABEL_22:
    v48 = v254;
    goto LABEL_6;
  }

  v48 = v254;
LABEL_35:

  v120 = *(v255 + 64);
  v241 = v255 + 64;
  v121 = 1 << *(v255 + 32);
  v122 = -1;
  if (v121 < 64)
  {
    v122 = ~(-1 << v121);
  }

  v254 = v122 & v120;
  v240 = ((v121 + 63) >> 6);
  v123 = v271;
  v264 = v271 + 8;
  *&v268 = v259 + 56;
  v267 = (v259 + 48);
  v263 = (v48 + 32);
  v262 = 0x80000001A7EAE7A0;
  v261 = 0x80000001A7EAE7C0;
  ++v239;
  v237 = "/[0-9a-fA-F\\-]+/";

  v124 = 0;
  v238 = xmmword_1A7E418D0;
  v125 = v270;
  v126 = v272;
  while (2)
  {
    v127 = v276;
    v128 = v279;
    v129 = v254;
    if (!v254)
    {
      v131 = v257;
      while (1)
      {
        v130 = v124 + 1;
        if (__OFADD__(v124, 1))
        {
          goto LABEL_87;
        }

        if (v130 >= v240)
        {
          break;
        }

        v129 = *(v241 + 8 * v130);
        ++v124;
        if (v129)
        {
          goto LABEL_44;
        }
      }
    }

    v130 = v124;
    v131 = v257;
LABEL_44:
    v254 = (v129 - 1) & v129;
    v253 = v130;
    v132 = __clz(__rbit64(v129)) | (v130 << 6);
    v133 = *(v255 + 56);
    v134 = (*(v255 + 48) + 16 * v132);
    v135 = v134[1];
    v242 = *v134;
    v136 = *(v133 + 8 * v132);
    v281 = MEMORY[0x1E69E7CC0];
    v137 = *(v136 + 16);
    v243 = v135;

    v260 = v136;

    v269 = 0;
    v138 = 0;
    v139 = 0;
    v265 = v137;
    while (1)
    {
      if (v139 == v137)
      {
        v143 = 1;
        v278 = v137;
      }

      else
      {
        if ((v139 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
        }

        if (v139 >= *(v260 + 16))
        {
          goto LABEL_86;
        }

        v144 = v123;
        v145 = v138;
        v146 = v128;
        v147 = v131;
        v148 = v44;
        v149 = v125;
        v150 = v139;
        sub_1A7D0D9B0(v260 + ((*(v259 + 80) + 32) & ~*(v259 + 80)) + *(v259 + 72) * v139, v126);
        v143 = 0;
        v278 = v150 + 1;
        v125 = v149;
        v44 = v148;
        v131 = v147;
        v128 = v146;
        v138 = v145;
        v123 = v144;
        v127 = v276;
      }

      (*v268)(v126, v143, 1, v127);
      sub_1A7CE5028(v126, v123, &qword_1EB2B5780, &qword_1A7E45718);
      if ((*v267)(v123, 1, v127) == 1)
      {
        break;
      }

      v151 = (v123 + *(v127 + 48));
      v153 = *v151;
      v152 = v151[1];
      v269 = v153;
      v277 = v152;

      (*v263)(v128, v123, v44);
      v154 = v131[3];
      v155 = v131[4];
      sub_1A7CC9878(v131, v154);
      v156 = sub_1A7CCC2B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v158 = *(v156 + 2);
      v157 = *(v156 + 3);
      if (v158 >= v157 >> 1)
      {
        v156 = sub_1A7CCC2B0((v157 > 1), v158 + 1, 1, v156);
      }

      *(v156 + 2) = v158 + 1;
      v159 = &v156[48 * v158];
      v160 = v262;
      *(v159 + 4) = 0xD000000000000014;
      *(v159 + 5) = v160;
      *(v159 + 24) = 0;
      *(v159 + 7) = 0;
      *(v159 + 8) = 0;
      v159[72] = 2;
      v162 = sub_1A7E21840();
      v164 = v163;
      v166 = *(v156 + 2);
      v165 = *(v156 + 3);
      v167 = v165 >> 1;
      v168 = v166 + 1;
      if (v165 >> 1 <= v166)
      {
        v156 = sub_1A7CCC2B0((v165 > 1), v166 + 1, 1, v156);
        v165 = *(v156 + 3);
        v167 = v165 >> 1;
      }

      *(v156 + 2) = v168;
      v169 = &v156[48 * v166];
      *(v169 + 4) = v162;
      *(v169 + 5) = v164;
      *(v169 + 24) = 768;
      *(v169 + 7) = 0;
      *(v169 + 8) = 0;
      v169[72] = 2;
      v170 = v166 + 2;
      if (v167 < (v166 + 2))
      {
        v156 = sub_1A7CCC2B0((v165 > 1), v166 + 2, 1, v156);
      }

      v171 = v280;
      *(v156 + 2) = v170;
      v172 = &v156[48 * v168];
      *(v172 + 4) = 3026478;
      *(v172 + 5) = 0xE300000000000000;
      *(v172 + 24) = 0;
      *(v172 + 7) = 0;
      *(v172 + 8) = 0;
      v172[72] = 2;
      v282 = 0;
      v283 = 0;
      LOBYTE(v284) = 1;
      v285 = v156;
      v173 = &v282;
      v174 = v154;
      v175 = v155;
      CLIPrinter.print(_:)(*(&v161 - 3));

      sub_1A7E222D0();
      v128 = v279;
      v176 = sub_1A7E22250();
      if (v171)
      {

        v140 = v131[3];
        v141 = v131[4];
        sub_1A7CC9878(v131, v140);
        v282 = 0;
        v283 = 0xE000000000000000;
        sub_1A7E22B70();

        v282 = 0xD00000000000001BLL;
        v283 = v261;
        v142 = sub_1A7E21840();
        MEMORY[0x1AC561C90](v142);

        v284 = 256;
        v285 = 0;
        v286 = 0;
        LOBYTE(v287) = 2;
        CLIPrinter.print(_:)(&v282, v140, v141);

        v44 = v273;
        v274(v128, v273);
        v280 = 0;
      }

      else
      {
        v280 = 0;
        v282 = v176;
        v283 = v177;
        v178 = sub_1A7E22A40();

        v179 = *(v178 + 16);
        if (v179)
        {
          v282 = MEMORY[0x1E69E7CC0];
          sub_1A7CCE918(0, v179, 0);
          v180 = v282;
          v181 = (v178 + 56);
          do
          {
            v183 = *(v181 - 3);
            v182 = *(v181 - 2);
            v184 = *(v181 - 1);
            v185 = *v181;

            v186 = MEMORY[0x1AC561BF0](v183, v182, v184, v185);
            v188 = v187;

            v282 = v180;
            v190 = *(v180 + 2);
            v189 = *(v180 + 3);
            if (v190 >= v189 >> 1)
            {
              sub_1A7CCE918((v189 > 1), v190 + 1, 1);
              v180 = v282;
            }

            *(v180 + 2) = v190 + 1;
            v191 = &v180[16 * v190];
            *(v191 + 4) = v186;
            *(v191 + 5) = v188;
            v181 += 4;
            --v179;
          }

          while (v179);

          v131 = v257;
          v128 = v279;
        }

        else
        {

          v180 = MEMORY[0x1E69E7CC0];
        }

        sub_1A7DDEE7C(v180);
        v44 = v273;
        v274(v128, v273);
      }

      v125 = v270;
      v126 = v272;
      v123 = v271;
      v127 = v276;
      v138 = v277;
      v137 = v265;
      v139 = v278;
    }

    sub_1A7CC7FFC(&qword_1EB2B4B98, &qword_1A7E41AE0);
    v192 = swift_allocObject();
    *(v192 + 16) = v238;
    *(v192 + 32) = 0x65737365636F7270;
    *(v192 + 40) = 0xE900000000000064;
    if (v138)
    {
      v193 = v269;
    }

    else
    {
      v193 = 0x6E776F6E6B6E75;
    }

    if (v138)
    {
      v194 = v138;
    }

    else
    {
      v194 = 0xE700000000000000;
    }

    v282 = 0;
    v283 = 0xE000000000000000;
    MEMORY[0x1AC561C90](v193, v194);

    MEMORY[0x1AC561C90](32, 0xE100000000000000);
    MEMORY[0x1AC561C90](v242, v243);

    MEMORY[0x1AC561C90](1735355438, 0xE400000000000000);
    v195 = v283;
    *(v192 + 48) = v282;
    *(v192 + 56) = v195;
    v196 = v248;
    v197 = v250;
    v245(v248, v247, v250);
    sub_1A7E21910();

    v244(v196, v197);
    v282 = v281;

    v198 = v280;
    sub_1A7D08B14(&v282);
    if (!v198)
    {

      sub_1A7CC7FFC(&qword_1EB2B4AA0, &qword_1A7E45010);
      sub_1A7CF3788(&qword_1EB2B3088, &qword_1EB2B4AA0, &qword_1A7E45010, MEMORY[0x1E69E6310]);
      v280 = sub_1A7E221F0();
      v200 = v199;

      v201 = v257[3];
      v202 = v257[4];
      sub_1A7CC9878(v257, v201);
      v203 = sub_1A7CCC2B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v205 = *(v203 + 2);
      v204 = *(v203 + 3);
      if (v205 >= v204 >> 1)
      {
        v203 = sub_1A7CCC2B0((v204 > 1), v205 + 1, 1, v203);
      }

      *(v203 + 2) = v205 + 1;
      v206 = &v203[48 * v205];
      *(v206 + 4) = 0x20676E6974697257;
      *(v206 + 5) = 0xEB00000000206F74;
      *(v206 + 24) = 0;
      *(v206 + 7) = 0;
      *(v206 + 8) = 0;
      v206[72] = 2;
      v207 = sub_1A7E21840();
      v211 = *(v203 + 2);
      v210 = *(v203 + 3);
      v212 = v210 >> 1;
      v213 = v211 + 1;
      if (v210 >> 1 <= v211)
      {
        v278 = v207;
        v222 = v208;
        v223 = sub_1A7CCC2B0((v210 > 1), v211 + 1, 1, v203);
        v208 = v222;
        v125 = v270;
        v203 = v223;
        v207 = v278;
        v210 = *(v203 + 3);
        v212 = v210 >> 1;
      }

      *(v203 + 2) = v213;
      v214 = &v203[48 * v211];
      *(v214 + 4) = v207;
      *(v214 + 5) = v208;
      *(v214 + 24) = 768;
      *(v214 + 7) = 0;
      *(v214 + 8) = 0;
      v214[72] = 2;
      v215 = v211 + 2;
      if (v212 < v215)
      {
        v203 = sub_1A7CCC2B0((v210 > 1), v215, 1, v203);
      }

      *(v203 + 2) = v215;
      v216 = &v203[48 * v213];
      *(v216 + 4) = 3026478;
      *(v216 + 5) = 0xE300000000000000;
      *(v216 + 24) = 0;
      *(v216 + 7) = 0;
      *(v216 + 8) = 0;
      v216[72] = 2;
      v282 = 0;
      v283 = 0;
      LOBYTE(v284) = 1;
      v285 = v203;
      v217 = &v282;
      v218 = v201;
      v219 = v202;
      CLIPrinter.print(_:)(*(&v209 - 3));

      v282 = v280;
      v283 = v200;
      v220 = v251;
      sub_1A7E222D0();
      v221 = v256;
      sub_1A7E22A20();
      v280 = 0;
      (*v239)(v220, v252);
      v44 = v273;
      v274(v221, v273);

      v124 = v253;
      v126 = v272;
      v123 = v271;
      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7D07E08(double a1)
{
  v2 = OBJC_IVAR____TtC13IDSFoundation19IDSPacketLogManager_directory;
  v3 = sub_1A7E21940();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v4 = OBJC_IVAR____TtC13IDSFoundation19IDSPacketLogManager_packetLogFilePattern;
  v5 = sub_1A7CC7FFC(&qword_1EB2B5710, &qword_1A7E45678);
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v1);
}

uint64_t sub_1A7D07ECC()
{
  if (qword_1EB2B2DB0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A7D07F28(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IDSPacketLogManager(0);

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t sub_1A7D07F80()
{
  if (qword_1EB2B2DB0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A7CD22FC;

  return sub_1A7D034C0();
}

uint64_t sub_1A7D082A0(const void *a1)
{
  v3 = sub_1A7E21850();
  v1[2] = v3;
  v1[3] = *(v3 - 8);
  v1[4] = swift_task_alloc();
  v4 = sub_1A7E21940();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = _Block_copy(a1);

  return MEMORY[0x1EEE6DFA0](sub_1A7D083D4, 0, 0);
}

uint64_t sub_1A7D083D4()
{
  if (qword_1EB2B2DB0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB2DC088;

  return MEMORY[0x1EEE6DFA0](sub_1A7D08468, v0, 0);
}

uint64_t sub_1A7D08468()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  sub_1A7E218D0();
  (*(v6 + 104))(v5, *MEMORY[0x1E6968F70], v7);
  sub_1A7CC7DFC();
  sub_1A7E21910();
  (*(v6 + 8))(v5, v7);
  v8 = *(v4 + 8);
  v8(v2, v3);
  sub_1A7D0C510(v1);
  v0[10] = 0;
  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[5];
  sub_1A7E218F0();
  v8(v9, v11);
  if (v10)
  {
    v12 = v0[9];
    v13 = sub_1A7E22260();

    (v12)[2](v12, v13, 0);
    _Block_release(v12);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1A7D08674()
{
  v2 = v0[9];
  v1 = v0[10];
  if (v2)
  {
    v3 = sub_1A7E217E0();

    (v2)[2](v2, 0, v3);
    _Block_release(v2);
  }

  else
  {
  }

  v4 = v0[1];

  return v4();
}

IDSObjCPacketLogManager __swiftcall IDSObjCPacketLogManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t type metadata accessor for IDSPacketLogManager(uint64_t a1)
{
  result = qword_1EB2B3348;
  if (!qword_1EB2B3348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A7D08800(uint64_t a1, double a2)
{
  sub_1A7E21940();
  if (v2 <= 0x3F)
  {
    sub_1A7D088E8(319);
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A7D088E8(uint64_t a1)
{
  if (!qword_1EB2B30B0)
  {
    sub_1A7CC9830(&qword_1EB2B56F8, qword_1A7E45608);
    v1 = sub_1A7E21D70();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB2B30B0);
    }
  }
}

unint64_t type metadata accessor for IDSObjCPacketLogManager()
{
  result = qword_1EB2B5700;
  if (!qword_1EB2B5700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2B5700);
  }

  return result;
}

unint64_t sub_1A7D08A18()
{
  result = qword_1EB2B2960;
  if (!qword_1EB2B2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2960);
  }

  return result;
}

void sub_1A7D08A6C(uint64_t *a1, double a2)
{
  v3 = *(sub_1A7E21940() - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1A7D6030C(v4);
  }

  v5 = v4[2];
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  sub_1A7D08B80(v6);
  *a1 = v4;
}

uint64_t sub_1A7D08B14(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A7D60320(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1A7D08CAC(v5);
  *a1 = v2;
  return result;
}

void sub_1A7D08B80(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1A7E23080();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A7E21940();
        v6 = sub_1A7E22580();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1A7E21940() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1A7D09714(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1A7D08DA4(0, v2, 1, a1);
  }
}

uint64_t sub_1A7D08CAC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A7E23080();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1A7E22580();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A7D0B078(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1A7D09644(0, v2, 1, a1);
  }

  return result;
}

void sub_1A7D08DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v64 = sub_1A7E216F0();
  v8 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v78 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v55 - v11;
  v12 = sub_1A7CC7FFC(&qword_1EB2B5798, &unk_1A7E4C6D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v76 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v55 - v15;
  v82 = sub_1A7E21B00();
  v16 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v55 - v19;
  v20 = sub_1A7E21940();
  MEMORY[0x1EEE9AC00](v20);
  v68 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v88 = &v55 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v83 = &v55 - v26;
  v57 = a2;
  if (a3 != a2)
  {
    v27 = *a4;
    v29 = *(v25 + 16);
    v28 = v25 + 16;
    v73 = v29;
    v72 = *MEMORY[0x1E695DA98];
    v30 = *(v28 + 56);
    v79 = (v16 + 56);
    v63 = (v8 + 8);
    v87 = (v16 + 48);
    v62 = (v16 + 32);
    v71 = (v16 + 8);
    v69 = (v28 - 8);
    v74 = v28;
    v66 = (v28 + 16);
    v31 = (v27 + v30 * (a3 - 1));
    v65 = -v30;
    v32 = a1 - a3;
    v67 = v27;
    v56 = v30;
    v33 = v27 + v30 * a3;
    v81 = xmmword_1A7E418C0;
    v70 = v20;
LABEL_5:
    v61 = a3;
    v58 = v33;
    v59 = v32;
    v60 = v31;
    while (1)
    {
      v34 = v73;
      v73(v83, v33, v20);
      v34(v88, v31, v20);
      sub_1A7CC7FFC(&qword_1EB2B5758, &qword_1A7E4F580);
      inited = swift_initStackObject();
      *(inited + 16) = v81;
      v36 = v72;
      *(inited + 32) = v72;
      v80 = v36;
      sub_1A7D0BFFC(inited);
      swift_setDeallocating();
      sub_1A7D0D3E8(inited + 32);
      v37 = v77;
      v38 = v86;
      sub_1A7E21880();
      if (v38)
      {

        v39 = v75;
        v40 = v82;
        (*v79)(v75, 1, 1, v82);
      }

      else
      {

        v39 = v75;
        sub_1A7E216D0();
        (*v63)(v37, v64);
        v41 = *v87;
        v40 = v82;
        if ((*v87)(v39, 1, v82) != 1)
        {
          (*v62)(v84, v39, v40);
          goto LABEL_12;
        }
      }

      sub_1A7E21AF0();
      v41 = *v87;
      if ((*v87)(v39, 1, v40) != 1)
      {
        sub_1A7CC9970(v39, &qword_1EB2B5798, &unk_1A7E4C6D0);
      }

LABEL_12:
      v42 = swift_initStackObject();
      *(v42 + 16) = v81;
      *(v42 + 32) = v80;
      v43 = v42 + 32;
      sub_1A7D0BFFC(v42);
      swift_setDeallocating();
      sub_1A7D0D3E8(v43);
      v44 = v78;
      sub_1A7E21880();
      v86 = 0;

      v45 = v76;
      sub_1A7E216D0();
      (*v63)(v44, v64);
      v46 = v82;
      if (v41(v45, 1, v82) == 1)
      {
        sub_1A7E21AF0();
        if (v41(v45, 1, v46) != 1)
        {
          sub_1A7CC9970(v45, &qword_1EB2B5798, &unk_1A7E4C6D0);
        }
      }

      else
      {
        (*v62)(v85, v45, v46);
      }

      v47 = v84;
      v48 = v85;
      v49 = sub_1A7E21AB0();
      v50 = *v71;
      (*v71)(v48, v46);
      v50(v47, v46);
      v51 = *v69;
      v20 = v70;
      (*v69)(v88, v70);
      v51(v83, v20);
      if ((v49 & 1) == 0)
      {
LABEL_4:
        a3 = v61 + 1;
        v31 = &v60[v56];
        v32 = v59 - 1;
        v33 = v58 + v56;
        if (v61 + 1 == v57)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v67)
      {
        __break(1u);
        return;
      }

      v52 = *v66;
      v53 = v68;
      (*v66)(v68, v33, v20);
      swift_arrayInitWithTakeFrontToBack();
      v52(v31, v53, v20);
      v31 += v65;
      v33 += v65;
      if (__CFADD__(v32++, 1))
      {
        goto LABEL_4;
      }
    }
  }
}

uint64_t sub_1A7D09644(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1A7E230D0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1A7D09714(unint64_t *a1, uint64_t a2, void **a3, uint64_t a4)
{
  v202 = a4;
  v203 = a1;
  v221 = sub_1A7E216F0();
  v5 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v227 = &v200 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v229 = &v200 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v210 = &v200 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v209 = &v200 - v12;
  v13 = sub_1A7CC7FFC(&qword_1EB2B5798, &unk_1A7E4C6D0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v226 = &v200 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v228 = &v200 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v208 = &v200 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v207 = &v200 - v20;
  v21 = sub_1A7E21B00();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v245 = &v200 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v246 = &v200 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v216 = &v200 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v215 = &v200 - v29;
  v30 = sub_1A7E21940();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v206 = &v200 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v222 = &v200 - v34;
  MEMORY[0x1EEE9AC00](v35);
  MEMORY[0x1EEE9AC00](v36);
  v249 = &v200 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v219 = &v200 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v217 = &v200 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v201 = &v200 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v200 = &v200 - v46;
  v47 = a3[1];
  v212 = a3;
  if (v47 < 1)
  {
    v49 = MEMORY[0x1E69E7CC0];
LABEL_142:
    v5 = *v203;
    if (!*v203)
    {
      goto LABEL_184;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v212;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_178:
      v49 = sub_1A7CF0024(v49);
    }

    v252 = v49;
    v194 = *(v49 + 16);
    if (v194 >= 2)
    {
      while (*v30)
      {
        v195 = *(v49 + 16 * v194);
        v196 = *(v49 + 16 * (v194 - 1) + 40);
        v197 = v247;
        sub_1A7D0B654(*v30 + *(v31 + 72) * v195, *v30 + *(v31 + 72) * *(v49 + 16 * (v194 - 1) + 32), *v30 + *(v31 + 72) * v196, v5, v193);
        v247 = v197;
        if (v197)
        {
          goto LABEL_154;
        }

        if (v196 < v195)
        {
          goto LABEL_171;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_1A7CF0024(v49);
        }

        if (v194 - 2 >= *(v49 + 16))
        {
          goto LABEL_172;
        }

        v198 = (v49 + 16 * v194);
        *v198 = v195;
        v198[1] = v196;
        v252 = v49;
        sub_1A7CEFF98(v194 - 1);
        v49 = v252;
        v194 = *(v252 + 16);
        if (v194 <= 1)
        {
          goto LABEL_154;
        }
      }

      goto LABEL_182;
    }

LABEL_154:

    return;
  }

  v225 = v45;
  v48 = 0;
  v235 = v31 + 16;
  v234 = (v31 + 8);
  v233 = *MEMORY[0x1E695DA98];
  v237 = (v22 + 56);
  v220 = (v5 + 8);
  v248 = (v22 + 48);
  v218 = (v22 + 32);
  v232 = (v22 + 8);
  v231 = (v31 + 32);
  v49 = MEMORY[0x1E69E7CC0];
  v214 = xmmword_1A7E418C0;
  v211 = v31;
  v238 = v21;
  v236 = v30;
  while (1)
  {
    v205 = v49;
    v230 = v48;
    if (v48 + 1 >= v47)
    {
      v67 = v48 + 1;
      v86 = v202;
      goto LABEL_36;
    }

    v213 = v47;
    v50 = *v212;
    v51 = *(v31 + 72);
    v52 = *(v31 + 16);
    v53 = v200;
    v244 = *v212 + v51 * (v48 + 1);
    (v52)(v200);
    v243 = v50;
    v54 = &v50[v51 * v48];
    v55 = v201;
    v240 = v52;
    (v52)(v201, v54, v30);
    v56 = v247;
    LODWORD(v241) = sub_1A7D04914(v53, v55);
    v247 = v56;
    if (v56)
    {
      v199 = *v234;
      (*v234)(v55, v30);
      v199(v53, v30);
      goto LABEL_154;
    }

    v5 = v234;
    v57 = *v234;
    (*v234)(v55, v30);
    v239 = v57;
    v57(v53, v30);
    v58 = v48 + 2;
    v59 = &v243[v51 * (v48 + 2)];
    v60 = v51;
    v242 = v51;
    v61 = v244;
    while (1)
    {
      v67 = v213;
      if (v213 == v58)
      {
        break;
      }

      v68 = v240;
      (v240)(v217, v59, v30);
      v244 = v61;
      (v68)(v219, v61, v30);
      v243 = sub_1A7CC7FFC(&qword_1EB2B5758, &qword_1A7E4F580);
      inited = swift_initStackObject();
      *(inited + 16) = v214;
      v70 = v233;
      *(inited + 32) = v233;
      v71 = v70;
      sub_1A7D0BFFC(inited);
      swift_setDeallocating();
      sub_1A7D0D3E8(inited + 32);
      v72 = v209;
      v73 = v247;
      sub_1A7E21880();
      if (v73)
      {

        v74 = v207;
        (*v237)(v207, 1, 1, v21);
        v75 = v21;
LABEL_13:
        sub_1A7E21AF0();
        v77 = *v248;
        if ((*v248)(v74, 1, v75) != 1)
        {
          sub_1A7CC9970(v74, &qword_1EB2B5798, &unk_1A7E4C6D0);
        }

        goto LABEL_16;
      }

      v76 = v207;
      sub_1A7E216D0();
      v74 = v76;
      (*v220)(v72, v221);
      v75 = v21;
      v77 = *v248;
      if ((*v248)(v74, 1, v75) == 1)
      {
        goto LABEL_13;
      }

      (*v218)(v215, v74, v75);
LABEL_16:
      v78 = swift_initStackObject();
      *(v78 + 16) = v214;
      *(v78 + 32) = v71;
      v79 = v78 + 32;
      sub_1A7D0BFFC(v78);
      swift_setDeallocating();
      sub_1A7D0D3E8(v79);
      v80 = v210;
      sub_1A7E21880();
      v247 = 0;

      v81 = v208;
      sub_1A7E216D0();
      v82 = v81;
      (*v220)(v80, v221);
      v83 = v81;
      v84 = v238;
      v85 = v77(v83, 1, v238);
      v30 = v236;
      if (v85 == 1)
      {
        sub_1A7E21AF0();
        if (v77(v82, 1, v84) != 1)
        {
          sub_1A7CC9970(v82, &qword_1EB2B5798, &unk_1A7E4C6D0);
        }

        v21 = v238;
      }

      else
      {
        (*v218)(v216, v82, v84);
        v21 = v84;
      }

      v62 = v216;
      v63 = v215;
      v64 = sub_1A7E21AB0();
      v65 = *v232;
      (*v232)(v62, v21);
      v65(v63, v21);
      v5 = v234;
      v66 = v239;
      v239(v219, v30);
      v66(v217, v30);
      ++v58;
      v60 = v242;
      v59 = &v242[v59];
      v61 = &v242[v244];
      if ((v241 ^ v64))
      {
        v67 = v58 - 1;
        break;
      }
    }

    v86 = v202;
    v31 = v211;
    v49 = v205;
    if ((v241 & 1) == 0)
    {
      goto LABEL_36;
    }

    if (v67 < v230)
    {
      goto LABEL_177;
    }

    if (v230 < v67)
    {
      v87 = v60 * (v67 - 1);
      v88 = v67 * v60;
      v213 = v67;
      v89 = v230;
      v90 = v230 * v60;
      do
      {
        if (v89 != --v67)
        {
          v92 = *v212;
          if (!*v212)
          {
            goto LABEL_181;
          }

          v5 = &v92[v90];
          v93 = *v231;
          (*v231)(v206, &v92[v90], v236);
          if (v90 < v87 || v5 >= &v92[v88])
          {
            v91 = v236;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v91 = v236;
            if (v90 != v87)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v93(&v92[v87], v206, v91);
          v21 = v238;
          v30 = v91;
          v49 = v205;
          v60 = v242;
        }

        ++v89;
        v87 -= v60;
        v88 -= v60;
        v90 += v60;
      }

      while (v89 < v67);
      v86 = v202;
      v31 = v211;
      v67 = v213;
    }

LABEL_36:
    v94 = v212[1];
    if (v67 >= v94)
    {
      goto LABEL_44;
    }

    if (__OFSUB__(v67, v230))
    {
      goto LABEL_174;
    }

    if (v67 - v230 >= v86)
    {
LABEL_44:
      v48 = v67;
      goto LABEL_45;
    }

    if (__OFADD__(v230, v86))
    {
      goto LABEL_175;
    }

    if (v230 + v86 < v94)
    {
      v94 = (v230 + v86);
    }

    if (v94 < v230)
    {
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    if (v67 == v94)
    {
      goto LABEL_44;
    }

    v204 = v94;
    v242 = *v212;
    v244 = sub_1A7CC7FFC(&qword_1EB2B5778, &unk_1A7E456D8);
    v224 = *(v31 + 72);
    v223 = *(v31 + 16);
    v142 = v225;
LABEL_97:
    v213 = v67;
    v143 = v67;
LABEL_98:
    v144 = v143 - 1;
    v145 = v242;
    v146 = v224;
    v240 = &v242[v224 * v143];
    v147 = v223;
    v223(v249);
    v241 = v144;
    v239 = &v145[v144 * v146];
    v147(v142);
    v148 = v233;
    v251 = v233;
    v30 = sub_1A7E22B20();
    v5 = v30 + 56;
    v149 = v251;
    v243 = v148;
    sub_1A7E22290();
    sub_1A7E23200();
    v31 = v149;
    sub_1A7E22350();
    v150 = sub_1A7E23240();

    v151 = -1 << *(v30 + 32);
    v49 = v150 & ~v151;
    v152 = v49 >> 6;
    v153 = *(v30 + 56 + 8 * (v49 >> 6));
    v154 = 1 << v49;
    if (((1 << v49) & v153) != 0)
    {
      v155 = ~v151;
      while (1)
      {
        v156 = sub_1A7E22290();
        v158 = v157;
        if (v156 == sub_1A7E22290() && v158 == v159)
        {

          goto LABEL_111;
        }

        v161 = sub_1A7E230D0();

        if (v161)
        {
          break;
        }

        v49 = (v49 + 1) & v155;
        v152 = v49 >> 6;
        v153 = *(v5 + 8 * (v49 >> 6));
        v154 = 1 << v49;
        if (((1 << v49) & v153) == 0)
        {
          v21 = v238;
          goto LABEL_107;
        }
      }

LABEL_111:
      v21 = v238;
    }

    else
    {
LABEL_107:
      *(v5 + 8 * v152) = v154 | v153;
      *(*(v30 + 48) + 8 * v49) = v31;
      v162 = *(v30 + 16);
      v110 = __OFADD__(v162, 1);
      v163 = v162 + 1;
      if (v110)
      {
        __break(1u);
        goto LABEL_156;
      }

      *(v30 + 16) = v163;
    }

    sub_1A7D0D3E8(&v251);
    v164 = v229;
    v165 = v247;
    sub_1A7E21880();
    v166 = v228;
    if (v165)
    {

      (*v237)(v166, 1, 1, v21);
LABEL_115:
      sub_1A7E21AF0();
      v31 = *v248;
      if ((*v248)(v166, 1, v21) != 1)
      {
        sub_1A7CC9970(v166, &qword_1EB2B5798, &unk_1A7E4C6D0);
      }
    }

    else
    {

      sub_1A7E216D0();
      (*v220)(v164, v221);
      v31 = *v248;
      if ((*v248)(v166, 1, v21) == 1)
      {
        goto LABEL_115;
      }

      (*v218)(v246, v166, v21);
    }

    v250 = v243;
    v30 = sub_1A7E22B20();
    v49 = v30 + 56;
    v167 = v250;
    sub_1A7E22290();
    sub_1A7E23200();
    v247 = v167;
    sub_1A7E22350();
    v168 = sub_1A7E23240();

    v169 = -1 << *(v30 + 32);
    v5 = v168 & ~v169;
    v170 = v5 >> 6;
    v171 = *(v30 + 56 + 8 * (v5 >> 6));
    v172 = 1 << v5;
    if (((1 << v5) & v171) == 0)
    {
      goto LABEL_127;
    }

    v243 = v31;
    v173 = ~v169;
    while (1)
    {
      v174 = sub_1A7E22290();
      v176 = v175;
      if (v174 == sub_1A7E22290() && v176 == v177)
      {

        goto LABEL_131;
      }

      v179 = sub_1A7E230D0();

      if (v179)
      {
        break;
      }

      v5 = (v5 + 1) & v173;
      v170 = v5 >> 6;
      v171 = *(v49 + 8 * (v5 >> 6));
      v172 = 1 << v5;
      if (((1 << v5) & v171) == 0)
      {
        v31 = v243;
LABEL_127:
        *(v49 + 8 * v170) = v172 | v171;
        *(*(v30 + 48) + 8 * v5) = v247;
        v180 = *(v30 + 16);
        v110 = __OFADD__(v180, 1);
        v181 = v180 + 1;
        v21 = v238;
        if (!v110)
        {
          *(v30 + 16) = v181;
          goto LABEL_132;
        }

LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
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
        goto LABEL_176;
      }
    }

LABEL_131:
    v21 = v238;
    v31 = v243;
LABEL_132:
    sub_1A7D0D3E8(&v250);
    v182 = v227;
    v142 = v225;
    sub_1A7E21880();
    v183 = v226;
    v247 = 0;

    sub_1A7E216D0();
    (*v220)(v182, v221);
    if ((v31)(v183, 1, v21) == 1)
    {
      v30 = v236;
      sub_1A7E21AF0();
      if ((v31)(v183, 1, v21) != 1)
      {
        sub_1A7CC9970(v183, &qword_1EB2B5798, &unk_1A7E4C6D0);
      }
    }

    else
    {
      (*v218)(v245, v183, v21);
      v30 = v236;
    }

    v184 = v245;
    v185 = v246;
    v186 = sub_1A7E21AB0();
    v31 = v232;
    v187 = *v232;
    (*v232)(v184, v21);
    v187(v185, v21);
    v188 = *v234;
    (*v234)(v142, v30);
    v188(v249, v30);
    if (v186)
    {
      break;
    }

LABEL_96:
    v67 = v213 + 1;
    if ((v213 + 1) != v204)
    {
      goto LABEL_97;
    }

    v49 = v205;
    v48 = v204;
LABEL_45:
    v5 = v230;
    if (v48 < v230)
    {
      goto LABEL_173;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_1A7CCC08C(0, *(v49 + 16) + 1, 1, v49);
    }

    v97 = *(v49 + 16);
    v96 = *(v49 + 24);
    v98 = v97 + 1;
    if (v97 >= v96 >> 1)
    {
      v49 = sub_1A7CCC08C((v96 > 1), v97 + 1, 1, v49);
    }

    *(v49 + 16) = v98;
    v99 = v49 + 16 * v97;
    *(v99 + 32) = v5;
    *(v99 + 40) = v48;
    v5 = *v203;
    if (!*v203)
    {
      goto LABEL_183;
    }

    if (v97)
    {
      while (2)
      {
        v31 = v98 - 1;
        if (v98 >= 4)
        {
          v104 = v49 + 32 + 16 * v98;
          v105 = *(v104 - 64);
          v106 = *(v104 - 56);
          v110 = __OFSUB__(v106, v105);
          v107 = v106 - v105;
          if (v110)
          {
            goto LABEL_160;
          }

          v109 = *(v104 - 48);
          v108 = *(v104 - 40);
          v110 = __OFSUB__(v108, v109);
          v102 = v108 - v109;
          v103 = v110;
          if (v110)
          {
            goto LABEL_161;
          }

          v111 = (v49 + 16 * v98);
          v113 = *v111;
          v112 = v111[1];
          v110 = __OFSUB__(v112, v113);
          v114 = v112 - v113;
          if (v110)
          {
            goto LABEL_163;
          }

          v110 = __OFADD__(v102, v114);
          v115 = v102 + v114;
          if (v110)
          {
            goto LABEL_166;
          }

          if (v115 >= v107)
          {
            v133 = (v49 + 32 + 16 * v31);
            v135 = *v133;
            v134 = v133[1];
            v110 = __OFSUB__(v134, v135);
            v136 = v134 - v135;
            if (v110)
            {
              goto LABEL_170;
            }

            if (v102 < v136)
            {
              v31 = v98 - 2;
            }
          }

          else
          {
LABEL_65:
            if (v103)
            {
              goto LABEL_162;
            }

            v116 = (v49 + 16 * v98);
            v118 = *v116;
            v117 = v116[1];
            v119 = __OFSUB__(v117, v118);
            v120 = v117 - v118;
            v121 = v119;
            if (v119)
            {
              goto LABEL_165;
            }

            v122 = (v49 + 32 + 16 * v31);
            v124 = *v122;
            v123 = v122[1];
            v110 = __OFSUB__(v123, v124);
            v125 = v123 - v124;
            if (v110)
            {
              goto LABEL_168;
            }

            if (__OFADD__(v120, v125))
            {
              goto LABEL_169;
            }

            if (v120 + v125 < v102)
            {
              goto LABEL_79;
            }

            if (v102 < v125)
            {
              v31 = v98 - 2;
            }
          }
        }

        else
        {
          if (v98 == 3)
          {
            v100 = *(v49 + 32);
            v101 = *(v49 + 40);
            v110 = __OFSUB__(v101, v100);
            v102 = v101 - v100;
            v103 = v110;
            goto LABEL_65;
          }

          v126 = (v49 + 16 * v98);
          v128 = *v126;
          v127 = v126[1];
          v110 = __OFSUB__(v127, v128);
          v120 = v127 - v128;
          v121 = v110;
LABEL_79:
          if (v121)
          {
            goto LABEL_164;
          }

          v129 = v49 + 16 * v31;
          v131 = *(v129 + 32);
          v130 = *(v129 + 40);
          v110 = __OFSUB__(v130, v131);
          v132 = v130 - v131;
          if (v110)
          {
            goto LABEL_167;
          }

          if (v132 < v120)
          {
            break;
          }
        }

        v137 = v31 - 1;
        if (v31 - 1 >= v98)
        {
          goto LABEL_157;
        }

        if (!*v212)
        {
          goto LABEL_180;
        }

        v138 = *(v49 + 32 + 16 * v137);
        v139 = *(v49 + 32 + 16 * v31 + 8);
        v140 = v247;
        sub_1A7D0B654(*v212 + *(v211 + 72) * v138, *v212 + *(v211 + 72) * *(v49 + 32 + 16 * v31), *v212 + *(v211 + 72) * v139, v5, v95);
        v247 = v140;
        if (v140)
        {
          goto LABEL_154;
        }

        if (v139 < v138)
        {
          goto LABEL_158;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_1A7CF0024(v49);
        }

        if (v137 >= *(v49 + 16))
        {
          goto LABEL_159;
        }

        v141 = v49 + 16 * v137;
        *(v141 + 32) = v138;
        *(v141 + 40) = v139;
        v252 = v49;
        sub_1A7CEFF98(v31);
        v49 = v252;
        v98 = *(v252 + 16);
        if (v98 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v47 = v212[1];
    v31 = v211;
    if (v48 >= v47)
    {
      goto LABEL_142;
    }
  }

  if (v242)
  {
    v189 = *v231;
    v190 = v222;
    (*v231)(v222, v240, v30);
    v191 = v239;
    swift_arrayInitWithTakeFrontToBack();
    v189(v191, v190, v30);
    v143 = v241;
    if (v241 == v230)
    {
      goto LABEL_96;
    }

    goto LABEL_98;
  }

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
}

uint64_t sub_1A7D0B078(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1A7CF0024(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1A7D0BCF0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1A7E230D0();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1A7E230D0();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A7CCC08C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1A7CCC08C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1A7D0BCF0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A7CF0024(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1A7CEFF98(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1A7E230D0(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

void sub_1A7D0B654(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, double a5)
{
  v6 = v5;
  v78 = a3;
  v10 = sub_1A7E21940();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v63 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v19 = MEMORY[0x1EEE9AC00](&v63 - v16);
  v21 = &v63 - v20;
  v74 = *(v22 + 72);
  if (!v74)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v74 == -1)
  {
    goto LABEL_66;
  }

  v23 = v78 - a2;
  if (v78 - a2 == 0x8000000000000000 && v74 == -1)
  {
    goto LABEL_67;
  }

  v24 = (a2 - a1) / v74;
  v81 = a1;
  v80 = a4;
  v76 = v10;
  if (v24 >= v23 / v74)
  {
    v72 = v18;
    v73 = v14;
    v26 = v23 / v74 * v74;
    if (a4 < a2 || a2 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v26;
    if (v26 >= 1)
    {
      v39 = v73;
      v40 = -v74;
      v69 = (v11 + 16);
      v70 = (v11 + 8);
      v41 = v38;
      v75 = a4;
      v66 = a1;
      v67 = -v74;
      do
      {
        v77 = v6;
        v64 = v38;
        v42 = a2;
        v43 = a2 + v40;
        v68 = v43;
        v71 = v42;
        while (1)
        {
          v46 = v78;
          if (v42 <= a1)
          {
            v81 = v42;
            v61 = v64;
LABEL_62:
            v79 = v61;
            goto LABEL_64;
          }

          v65 = v38;
          v74 = v41;
          v47 = v41 + v40;
          v48 = *v69;
          v49 = v76;
          (*v69)(v39, v41 + v40, v76);
          v50 = v43;
          v51 = v40;
          v52 = v72;
          v48(v72, v50, v49);
          v53 = v77;
          v54 = sub_1A7D04914(v39, v52);
          v77 = v53;
          if (v53)
          {
            v62 = *v70;
            (*v70)(v52, v49);
            v62(v39, v49);
            v81 = v71;
            v61 = v65;
            goto LABEL_62;
          }

          v55 = v54;
          v78 = v46 + v51;
          v56 = *v70;
          (*v70)(v52, v49);
          v56(v39, v49);
          if (v55)
          {
            break;
          }

          v38 = v47;
          v57 = v66;
          if (v46 < v74 || v78 >= v74)
          {
            swift_arrayInitWithTakeFrontToBack();
            v40 = v67;
            v43 = v68;
            v44 = v75;
          }

          else
          {
            v40 = v67;
            v43 = v68;
            v44 = v75;
            if (v46 != v74)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v41 = v47;
          v45 = v47 > v44;
          v39 = v73;
          a1 = v57;
          v42 = v71;
          if (!v45)
          {
            a2 = v71;
            goto LABEL_63;
          }
        }

        a1 = v66;
        if (v46 < v71 || v78 >= v71)
        {
          a2 = v68;
          swift_arrayInitWithTakeFrontToBack();
          v59 = v75;
          v6 = v77;
          v38 = v65;
          v40 = v67;
        }

        else
        {
          v58 = v46 == v71;
          v40 = v67;
          a2 = v68;
          v59 = v75;
          v6 = v77;
          v38 = v65;
          if (!v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v39 = v73;
        v41 = v74;
      }

      while (v74 > v59);
    }

LABEL_63:
    v81 = a2;
    v79 = v38;
  }

  else
  {
    v25 = v24 * v74;
    v73 = v17;
    if (a4 < a1 || a1 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v72 = a4 + v25;
    v79 = a4 + v25;
    if (v25 >= 1 && a2 < v78)
    {
      v28 = *(v11 + 16);
      v71 = v11 + 16;
      v69 = v28;
      v70 = (v11 + 8);
      while (1)
      {
        v29 = a2;
        v30 = a4;
        v31 = v69;
        (v69)(v21, a2, v10);
        v32 = v21;
        v33 = v73;
        v75 = v30;
        (v31)(v73, v30, v10);
        v34 = sub_1A7D04914(v32, v33);
        if (v6)
        {
          break;
        }

        v35 = v34;
        v77 = 0;
        v36 = *v70;
        (*v70)(v33, v10);
        v36(v32, v10);
        v21 = v32;
        if (v35)
        {
          v37 = v74;
          a2 = v29 + v74;
          if (a1 < v29 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v75;
        }

        else
        {
          v37 = v74;
          a4 = v75 + v74;
          a2 = v29;
          if (a1 < v75 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v75)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v80 = a4;
        }

        a1 += v37;
        v81 = a1;
        v6 = v77;
        if (a4 < v72)
        {
          v10 = v76;
          if (a2 < v78)
          {
            continue;
          }
        }

        goto LABEL_64;
      }

      v60 = *v70;
      (*v70)(v33, v10);
      v60(v32, v10);
    }
  }

LABEL_64:
  sub_1A7D0BF18(&v81, &v80, &v79, v19);
}

uint64_t sub_1A7D0BCF0(char *__dst, char *__src, char *a3, char *a4)
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
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1A7E230D0() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1A7E230D0() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1A7D0BF18(unint64_t *a1, unint64_t *a2, uint64_t *a3, double a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = sub_1A7E21940();
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1A7D0BFFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5778, &unk_1A7E456D8);
    v3 = sub_1A7E22B20();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_1A7E22290();
      sub_1A7E23200();
      v27 = v7;
      sub_1A7E22350();
      v8 = sub_1A7E23240();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_1A7E22290();
        v18 = v17;
        if (v16 == sub_1A7E22290() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_1A7E230D0();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1A7D0C1F0(uint64_t a1)
{
  v2 = sub_1A7E21BA0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1A7CC7FFC(&qword_1EB2B5760, &qword_1A7E456D0);
    v9 = sub_1A7E22B20();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1A7D0D444(&qword_1EB2B5768, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v16 = sub_1A7E221C0();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1A7D0D444(&qword_1EB2B5770, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v23 = sub_1A7E22240();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1A7D0C510(uint64_t a1)
{
  v2 = v1;
  v154 = *MEMORY[0x1E69E9840];
  v149 = sub_1A7E216F0();
  v4 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v130 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1A7E21850();
  v150 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v143 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_1A7E21940();
  v151 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v133 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v132 = &v116 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v131 = &v116 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v129 = &v116 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v141 = &v116 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v142 = &v116 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v116 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v116 - v22;
  v24 = objc_opt_self();
  v25 = [v24 defaultManager];
  v26 = sub_1A7E218E0();
  v152 = 0;
  v27 = [v25 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:&v152];

  v28 = v152;
  if (v27 && (v134 = v4, v123 = a1, v29 = v152, v30 = [v24 defaultManager], sub_1A7E218B0(), v152 = 0xD00000000000001CLL, v153 = 0x80000001A7EADC30, v147 = 0x80000001A7EADC30, v31 = v150, v32 = *(v150 + 104), v33 = v143, v128 = *MEMORY[0x1E6968F70], v34 = v144, v127 = v150 + 104, v126 = v32, v32(v143), v125 = sub_1A7CC7DFC(), sub_1A7E21920(), v35 = *(v31 + 8), v150 = v31 + 8, v124 = v35, v35(v33, v34), v37 = v151 + 8, v36 = *(v151 + 8), v38 = v148, v36(v20, v148), v39 = sub_1A7E218E0(), v36(v23, v38), v152 = 0, LODWORD(v38) = objc_msgSend(v30, sel_createDirectoryAtURL_withIntermediateDirectories_attributes_error_, v39, 1, 0, &v152), v30, v39, v28 = v152, v38) && (v40 = v152, v41 = objc_msgSend(v24, sel_defaultManager), sub_1A7E218B0(), v152 = 0xD00000000000001CLL, v153 = v147, v43 = v143, v42 = v144, v126(v143, v128, v144), sub_1A7E21920(), v124(v43, v42), v44 = v148, v36(v20, v148), v45 = sub_1A7E218E0(), v145 = v36, v146 = v37, v36(v23, v44), v140 = sub_1A7CC7FFC(&qword_1EB2B5758, &qword_1A7E4F580), v46 = swift_allocObject(), v139 = xmmword_1A7E418C0, *(v46 + 16) = xmmword_1A7E418C0, v47 = *MEMORY[0x1E695DBB8], *(v46 + 32) = *MEMORY[0x1E695DBB8], type metadata accessor for URLResourceKey(0), v138 = v47, v48 = sub_1A7E22520(), , v152 = 0, v49 = objc_msgSend(v41, sel_contentsOfDirectoryAtURL_includingPropertiesForKeys_options_error_, v45, v48, 0, &v152), v41, v45, v48, v28 = v152, v49))
  {
    v50 = sub_1A7E22530();
    v51 = v28;

    v137 = *(v50 + 16);
    if (v137)
    {
      v53 = 0;
      v54 = v151;
      v135 = v50 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
      v147 = v151 + 16;
      ++v134;
      *&v52 = 136315394;
      v120 = v52;
      v55 = v130;
      v56 = v148;
      v57 = v142;
      v136 = v50;
      while (1)
      {
        if (v53 >= *(v50 + 16))
        {
          __break(1u);
        }

        v58 = *(v54 + 16);
        v58(v57, v135 + *(v54 + 72) * v53, v56);
        inited = swift_initStackObject();
        *(inited + 16) = v139;
        v60 = v138;
        *(inited + 32) = v138;
        v61 = v60;
        sub_1A7D0BFFC(inited);
        swift_setDeallocating();
        sub_1A7D0D3E8(inited + 32);
        sub_1A7E21880();
        if (v2)
        {
          break;
        }

        v62 = sub_1A7E216C0();
        (*v134)(v55, v149);
        if (v62 == 2 || (v62 & 1) == 0)
        {
          v145(v57, v56);
        }

        else
        {
          v122 = 0;
          v152 = sub_1A7E218C0();
          v153 = v63;
          v65 = v143;
          v64 = v144;
          v126(v143, v128, v144);
          v66 = v141;
          sub_1A7E21930();
          v124(v65, v64);

          if (qword_1EB2B2D28 != -1)
          {
            swift_once();
          }

          v67 = sub_1A7E22060();
          v68 = sub_1A7B0CB00(v67, qword_1EB2B2D30);
          v69 = v129;
          v56 = v148;
          v58(v129, v142, v148);
          v70 = v131;
          v58(v131, v66, v56);
          v121 = v68;
          v71 = sub_1A7E22040();
          v72 = sub_1A7E228F0();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v117 = v73;
            v119 = swift_slowAlloc();
            v152 = v119;
            *v73 = v120;
            v74 = sub_1A7D0D444(&qword_1EB2B3058, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
            v118 = v72;
            v116 = v74;
            v75 = sub_1A7E23090();
            v77 = v76;
            v78 = v69;
            v79 = v145;
            v145(v78, v56);
            v80 = sub_1A7B0CB38(v75, v77, &v152);

            v81 = v117;
            *(v117 + 1) = v80;
            *(v81 + 6) = 2080;
            v82 = v131;
            v83 = sub_1A7E23090();
            v116 = v71;
            v84 = v83;
            v86 = v85;
            v79(v82, v56);
            v87 = sub_1A7B0CB38(v84, v86, &v152);

            *(v81 + 14) = v87;
            v88 = v116;
            _os_log_impl(&dword_1A7AD9000, v116, v118, "Converting packet log into plain text from %s -> %s", v81, 0x16u);
            v89 = v119;
            swift_arrayDestroy();
            MEMORY[0x1AC5654B0](v89, -1, -1);
            v55 = v130;
            MEMORY[0x1AC5654B0](v81, -1, -1);
          }

          else
          {

            v90 = v70;
            v91 = v145;
            v145(v90, v56);
            v91(v69, v56);
          }

          v92 = v132;
          v93 = v122;
          v94 = v141;
          v57 = v142;
          sub_1A7E09EB8(v142, v141);
          v2 = v93;
          v95 = v133;
          if (v93)
          {
            v58(v92, v57, v56);
            v58(v95, v94, v56);
            v96 = v94;
            v97 = sub_1A7E22040();
            v98 = sub_1A7E228E0();
            if (os_log_type_enabled(v97, v98))
            {
              v99 = swift_slowAlloc();
              LODWORD(v121) = v98;
              v100 = v99;
              v122 = swift_slowAlloc();
              v152 = v122;
              *v100 = v120;
              sub_1A7D0D444(&qword_1EB2B3058, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
              v119 = v97;
              v101 = sub_1A7E23090();
              v103 = v102;
              v104 = v145;
              v145(v132, v56);
              v105 = sub_1A7B0CB38(v101, v103, &v152);
              v57 = v142;

              *(v100 + 4) = v105;
              *(v100 + 12) = 2080;
              v106 = sub_1A7E23090();
              v108 = v107;
              v104(v133, v56);
              v109 = sub_1A7B0CB38(v106, v108, &v152);

              *(v100 + 14) = v109;
              v110 = v119;
              _os_log_impl(&dword_1A7AD9000, v119, v121, "Failed to convert packet log %s into plain text at destination %s", v100, 0x16u);
              v111 = v122;
              swift_arrayDestroy();
              MEMORY[0x1AC5654B0](v111, -1, -1);
              MEMORY[0x1AC5654B0](v100, -1, -1);

              v104(v141, v56);
              v104(v57, v56);
            }

            else
            {

              v113 = v145;
              v145(v95, v56);
              v113(v92, v56);
              v113(v96, v56);
              v113(v57, v56);
            }

            v2 = 0;
            v55 = v130;
          }

          else
          {
            v112 = v145;
            v145(v94, v56);
            v112(v57, v56);
          }
        }

        ++v53;
        v54 = v151;
        v50 = v136;
        if (v137 == v53)
        {
        }
      }

      v145(v57, v56);
    }
  }

  else
  {
    v114 = v28;
    sub_1A7E217F0();

    return swift_willThrow();
  }
}

uint64_t sub_1A7D0D3E8(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A7D0D444(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1A7D0D48C()
{
  v17[2] = *MEMORY[0x1E69E9840];
  v0 = sub_1A7E21850();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A7E21940();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-1] - v9;
  v11 = [objc_opt_self() defaultManager];
  sub_1A7E218B0();
  v17[0] = 0xD00000000000001CLL;
  v17[1] = 0x80000001A7EADC30;
  (*(v1 + 104))(v3, *MEMORY[0x1E6968F70], v0);
  sub_1A7CC7DFC();
  sub_1A7E21920();
  (*(v1 + 8))(v3, v0);
  v12 = *(v5 + 8);
  v12(v7, v4);
  v13 = sub_1A7E218E0();
  v12(v10, v4);
  v17[0] = 0;
  LOBYTE(v0) = [v11 removeItemAtURL:v13 error:v17];

  if (v0)
  {
    return v17[0];
  }

  v15 = v17[0];
  sub_1A7E217F0();

  return swift_willThrow();
}

uint64_t sub_1A7D0D74C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A7CD2A2C;

  return sub_1A7D082A0(v2);
}

uint64_t sub_1A7D0D7F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A7D0D838(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A7CD22FC;

  return sub_1A7DE518C(a1, v4, v5, v6);
}

uint64_t sub_1A7D0D904()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A7CD2A2C;

  return sub_1A7D07F64();
}

uint64_t sub_1A7D0D9B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B4B90, &qword_1A7E45720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A7D0DAA0(uint64_t a1)
{
  sub_1A7E23200();
  sub_1A7E221D0();
  return sub_1A7E23240();
}

uint64_t sub_1A7D0DAF4(uint64_t a1, uint64_t a2)
{
  sub_1A7E23200();
  sub_1A7D0DA90(v4, a2);
  return sub_1A7E23240();
}

uint64_t sub_1A7D0DB48()
{
  type metadata accessor for ContinuationsByID.HashableWrapper(255, *(*v0 + 80), *(*v0 + 88), *(*v0 + 96));
  sub_1A7CC9830(&qword_1EB2B57A8, &qword_1A7E494F0);
  sub_1A7E22630();
  swift_getWitnessTable();
  sub_1A7E22190();
  v1 = sub_1A7E21CB0();
  sub_1A7CFBFA0(v1);
  return v0;
}

uint64_t sub_1A7D0DC34()
{
  sub_1A7D0DB48();

  return swift_deallocClassInstance();
}

uint64_t sub_1A7D0DCA0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A7D0DD10(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_1A7D0DE50(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

IDSFoundation::IDSLinksQualityLinkCycleAssignments __swiftcall IDSLinksQualityLinkCycleAssignments.init()()
{
  v1 = v0;
  result.linkInstanceIDByLinkID._rawValue = sub_1A7CE2B54(MEMORY[0x1E69E7CC0]);
  v1->linkInstanceIDByLinkID._rawValue = result.linkInstanceIDByLinkID._rawValue;
  return result;
}

Swift::Int_optional __swiftcall IDSLinksQualityLinkCycleAssignments.linkInstanceID(forLinkWithID:)(Swift::String forLinkWithID)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = sub_1A7CD1248(forLinkWithID._countAndFlagsBits, forLinkWithID._object), (v4 & 1) != 0))
  {
    v5 = 0;
    v6 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v6 = 0;
    v5 = 1;
  }

  result.value = v6;
  result.is_nil = v5;
  return result;
}

unint64_t sub_1A7D0E0EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if (!*(v6 + 16) || (result = sub_1A7CD1248(a1, a2), (v8 & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    *v3 = 0x8000000000000000;
    sub_1A7DC45AC(0, a1, a2, isUniquelyReferenced_nonNull_native);
    v12 = v15;

    v10 = 0;
    goto LABEL_6;
  }

  v9 = *(*(v6 + 56) + 8 * result);
  v10 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    *v3 = 0x8000000000000000;
    sub_1A7DC45AC(v10, a1, a2, v11);
    v12 = v14;

LABEL_6:
    *v3 = v12;
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t IDSQuickRelayAllocateType.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return 0x696C412D7065654BLL;
      }

      return 0x6E776F6E6B6E55;
    }

    return 0x646572616853;
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 1718379859;
      }

      return 0x6E776F6E6B6E55;
    }

    return 0x7961572D6F7754;
  }
}

uint64_t sub_1A7D0E290()
{
  v1 = *v0;
  if (*v0 > 2)
  {
    if (v1 != 3)
    {
      if (v1 == 4)
      {
        return 0x696C412D7065654BLL;
      }

      return 0x6E776F6E6B6E55;
    }

    return 0x646572616853;
  }

  else
  {
    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 1718379859;
      }

      return 0x6E776F6E6B6E55;
    }

    return 0x7961572D6F7754;
  }
}

uint64_t IDSQuickRelayAllocateType.cli.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result > 2)
  {
    if (result == 3)
    {
      v2 = 3;
      v3 = 0xE600000000000000;
      v4 = 0x646572616853;
      goto LABEL_11;
    }

    if (result == 4)
    {
      v2 = 2;
      v3 = 0xEA00000000006576;
      v4 = 0x696C412D7065654BLL;
      goto LABEL_11;
    }

LABEL_8:
    v2 = 1;
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E55;
    goto LABEL_11;
  }

  if (result == 1)
  {
    v2 = 4;
    v3 = 0xE700000000000000;
    v4 = 0x7961572D6F7754;
    goto LABEL_11;
  }

  if (result != 2)
  {
    goto LABEL_8;
  }

  v2 = 5;
  v3 = 0xE400000000000000;
  v4 = 1718379859;
LABEL_11:
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 2;
  *(a2 + 17) = v2;
  return result;
}

uint64_t sub_1A7D0E3F8(unint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v46 = MEMORY[0x1E69E7CC0];
    v32 = a2 >> 62;
    sub_1A7CCE918(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
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
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_1A7E21630();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_1A7E21660();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_1A7E21630();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_1A7E21660();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      sub_1A7CC7FFC(&qword_1EB2B57B0, &unk_1A7E55BB0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1A7E418C0;
      *(v21 + 56) = MEMORY[0x1E69E7508];
      *(v21 + 64) = MEMORY[0x1E69E7558];
      *(v21 + 32) = v20;
      v22 = sub_1A7E222C0();
      v46 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_1A7CCE918((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

uint64_t sub_1A7D0E774(unint64_t a1, unint64_t a2)
{
  v2 = sub_1A7D0E3F8(a1, a2);
  v3 = v2;
  v4 = v2[2];
  if (v4)
  {
    v5 = v2[4];
    v6 = v2[5];

    MEMORY[0x1AC561C90](v5, v6);

    if (v4 != 1)
    {
      v8 = v3 + 7;
      v9 = 1;
      do
      {
        v11 = *(v8 - 1);
        v10 = *v8;

        if ((v9 & 1) == 0)
        {
          MEMORY[0x1AC561C90](58, 0xE100000000000000);
        }

        ++v9;
        MEMORY[0x1AC561C90](v11, v10);

        v8 += 2;
      }

      while (v4 != v9);
    }
  }

  return 0;
}

uint64_t CLIFormattable.description.getter(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v4 = sub_1A7E22070();
  if (MEMORY[0x1AC561960](1, v4, v10))
  {
    v5 = 80;
  }

  else
  {
    v5 = WORD1(v10[0]);
  }

  (*(a2 + 16))(v10, v5, 0, 0, a1, a2);
  v6 = v11;
  v7 = v12;
  sub_1A7CC9878(v10, v11);
  (*(v7 + 24))(v6, v7);
  sub_1A7CC7FFC(&qword_1EB2B4AA0, &qword_1A7E45010);
  sub_1A7CD0F8C();
  v8 = sub_1A7E221F0();

  sub_1A7B0CD6C(v10);
  return v8;
}

uint64_t CLIFormattable.indent(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  a5[3] = a3;
  a5[4] = a4;
  v10 = sub_1A7CC98BC(a5);
  (*(*(a3 - 8) + 16))(v10, v5, a3);
  a5[5] = a1;
  a5[6] = a2;
}

uint64_t IDSLinkCellularTuple.description.getter()
{
  v1 = v0[1];
  v2 = 0xE700000000000000;
  v3 = 0x6C6C65436E6F4ELL;
  if (*v0 != 1)
  {
    v3 = 7958081;
    v2 = 0xE300000000000000;
  }

  if (*v0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1819043139;
  }

  if (*v0)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x1AC561C90](v4, v5);

  MEMORY[0x1AC561C90](45, 0xE100000000000000);
  v6 = 0xE700000000000000;
  v7 = 0x6C6C65436E6F4ELL;
  if (v1 != 1)
  {
    v7 = 7958081;
    v6 = 0xE300000000000000;
  }

  if (v1)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1819043139;
  }

  if (v1)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  MEMORY[0x1AC561C90](v8, v9);

  return 0;
}

uint64_t IDSLinkCellularState.description.getter()
{
  v1 = 0x6C6C65436E6F4ELL;
  if (*v0 != 1)
  {
    v1 = 7958081;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1819043139;
  }
}

uint64_t sub_1A7D0EBA8(uint64_t a1)
{
  v2 = sub_1A7D0F7EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D0EBE4(uint64_t a1)
{
  v2 = sub_1A7D0F7EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D0EC20(uint64_t a1)
{
  v2 = sub_1A7D0F894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D0EC5C(uint64_t a1)
{
  v2 = sub_1A7D0F894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D0EC98()
{
  v1 = 0x6C6C65636E6F6ELL;
  if (*v0 != 1)
  {
    v1 = 7958113;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1819043171;
  }
}

uint64_t sub_1A7D0ECE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A7D10854(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A7D0ED0C(uint64_t a1)
{
  v2 = sub_1A7D0F798();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D0ED48(uint64_t a1)
{
  v2 = sub_1A7D0F798();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D0ED84(uint64_t a1)
{
  v2 = sub_1A7D0F840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D0EDC0(uint64_t a1)
{
  v2 = sub_1A7D0F840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinkCellularState.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B57B8, &qword_1A7E458F0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = sub_1A7CC7FFC(&qword_1EB2B57C0, &qword_1A7E458F8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = sub_1A7CC7FFC(&qword_1EB2B57C8, &qword_1A7E45900);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = sub_1A7CC7FFC(&qword_1EB2B57D0, &qword_1A7E45908);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D0F798();
  sub_1A7E23260();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1A7D0F840();
      v9 = v21;
      sub_1A7E22F80();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1A7D0F7EC();
      v9 = v24;
      sub_1A7E22F80();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1A7D0F894();
    sub_1A7E22F80();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t IDSLinkCellularState.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t IDSLinkCellularState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B57F8, &qword_1A7E45910);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = sub_1A7CC7FFC(&qword_1EB2B5800, &qword_1A7E45918);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B5808, &qword_1A7E45920);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = sub_1A7CC7FFC(&qword_1EB2B5810, &unk_1A7E45928);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  sub_1A7CC9878(a1, v14);
  sub_1A7D0F798();
  v15 = v36;
  sub_1A7E23250();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1A7E22F70();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1A7CDB540();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1A7E22BD0();
      swift_allocError();
      v24 = v23;
      sub_1A7CC7FFC(&qword_1EB2B4EC8, &qword_1A7E42100);
      *v24 = &type metadata for IDSLinkCellularState;
      sub_1A7E22E90();
      sub_1A7E22BC0();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1A7D0F840();
          sub_1A7E22E70();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1A7D0F7EC();
          v26 = v17;
          sub_1A7E22E70();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1A7D0F894();
        sub_1A7E22E70();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return sub_1A7B0CD6C(v37);
}

uint64_t sub_1A7D0F74C()
{
  v1 = 0x6C6C65436E6F4ELL;
  if (*v0 != 1)
  {
    v1 = 7958081;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1819043139;
  }
}

unint64_t sub_1A7D0F798()
{
  result = qword_1EB2B57D8;
  if (!qword_1EB2B57D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B57D8);
  }

  return result;
}

unint64_t sub_1A7D0F7EC()
{
  result = qword_1EB2B57E0;
  if (!qword_1EB2B57E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B57E0);
  }

  return result;
}

unint64_t sub_1A7D0F840()
{
  result = qword_1EB2B57E8;
  if (!qword_1EB2B57E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B57E8);
  }

  return result;
}

unint64_t sub_1A7D0F894()
{
  result = qword_1EB2B57F0;
  if (!qword_1EB2B57F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B57F0);
  }

  return result;
}

Swift::Bool __swiftcall IDSLinkCellularTuple.matches(_:)(IDSFoundation::IDSLinkCellularTuple a1)
{
  v2 = **&a1.from;
  v3 = *v1;
  if (v2 != v3 && v2 != 2 && v3 != 2)
  {
    return 0;
  }

  v6 = *(*&a1.from + 1);
  v7 = v1[1];
  return v6 == v7 || v7 == 2 || v6 == 2;
}

uint64_t sub_1A7D0F97C()
{
  if (*v0)
  {
    return 28532;
  }

  else
  {
    return 1836020326;
  }
}

uint64_t sub_1A7D0F9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1836020326 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 28532 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A7D0FA78(uint64_t a1)
{
  v2 = sub_1A7D0FCA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D0FAB4(uint64_t a1)
{
  v2 = sub_1A7D0FCA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinkCellularTuple.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5818, &qword_1A7E45938);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D0FCA8();
  sub_1A7E23260();
  v15 = v8;
  v14 = 0;
  sub_1A7D0FCFC();
  sub_1A7E23030();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_1A7E23030();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1A7D0FCA8()
{
  result = qword_1EB2B5820;
  if (!qword_1EB2B5820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5820);
  }

  return result;
}

unint64_t sub_1A7D0FCFC()
{
  result = qword_1EB2B5828;
  if (!qword_1EB2B5828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5828);
  }

  return result;
}

uint64_t IDSLinkCellularTuple.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1AC562AF0](*v0);
  return MEMORY[0x1AC562AF0](v1);
}

uint64_t IDSLinkCellularTuple.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  MEMORY[0x1AC562AF0](v2);
  return sub_1A7E23240();
}

uint64_t IDSLinkCellularTuple.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B5830, &qword_1A7E45940);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D0FCA8();
  sub_1A7E23250();
  if (!v2)
  {
    v15 = 0;
    sub_1A7D100C0();
    sub_1A7E22F30();
    v9 = v16;
    v13 = 1;
    sub_1A7E22F30();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    a2[1] = v10;
  }

  return sub_1A7B0CD6C(a1);
}

uint64_t sub_1A7D0FFC4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  MEMORY[0x1AC562AF0](v2);
  return sub_1A7E23240();
}

uint64_t sub_1A7D10024()
{
  v1 = v0[1];
  MEMORY[0x1AC562AF0](*v0);
  return MEMORY[0x1AC562AF0](v1);
}

uint64_t sub_1A7D10064(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v2);
  MEMORY[0x1AC562AF0](v3);
  return sub_1A7E23240();
}

unint64_t sub_1A7D100C0()
{
  result = qword_1EB2B5838;
  if (!qword_1EB2B5838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5838);
  }

  return result;
}

unint64_t sub_1A7D101B8()
{
  result = qword_1EB2B5840;
  if (!qword_1EB2B5840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5840);
  }

  return result;
}

unint64_t sub_1A7D10210()
{
  result = qword_1EB2B5848;
  if (!qword_1EB2B5848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5848);
  }

  return result;
}

uint64_t sub_1A7D10290(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *sub_1A7D10324(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A7D10438()
{
  result = qword_1EB2B5850;
  if (!qword_1EB2B5850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5850);
  }

  return result;
}

unint64_t sub_1A7D10490()
{
  result = qword_1EB2B5858;
  if (!qword_1EB2B5858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5858);
  }

  return result;
}

unint64_t sub_1A7D104E8()
{
  result = qword_1EB2B5860;
  if (!qword_1EB2B5860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5860);
  }

  return result;
}

unint64_t sub_1A7D10540()
{
  result = qword_1EB2B5868;
  if (!qword_1EB2B5868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5868);
  }

  return result;
}

unint64_t sub_1A7D10598()
{
  result = qword_1EB2B5870;
  if (!qword_1EB2B5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5870);
  }

  return result;
}

unint64_t sub_1A7D105F0()
{
  result = qword_1EB2B5878;
  if (!qword_1EB2B5878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5878);
  }

  return result;
}

unint64_t sub_1A7D10648()
{
  result = qword_1EB2B5880;
  if (!qword_1EB2B5880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5880);
  }

  return result;
}

unint64_t sub_1A7D106A0()
{
  result = qword_1EB2B5888;
  if (!qword_1EB2B5888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5888);
  }

  return result;
}

unint64_t sub_1A7D106F8()
{
  result = qword_1EB2B5890;
  if (!qword_1EB2B5890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5890);
  }

  return result;
}

unint64_t sub_1A7D10750()
{
  result = qword_1EB2B5898;
  if (!qword_1EB2B5898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5898);
  }

  return result;
}

unint64_t sub_1A7D107A8()
{
  result = qword_1EB2B58A0;
  if (!qword_1EB2B58A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B58A0);
  }

  return result;
}

unint64_t sub_1A7D10800()
{
  result = qword_1EB2B58A8;
  if (!qword_1EB2B58A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B58A8);
  }

  return result;
}

uint64_t sub_1A7D10854(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819043171 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C65636E6F6ELL && a2 == 0xE700000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7958113 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A7E230D0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

_OWORD *LinkDefinition.protocolStack.setter(uint64_t a1)
{
  v2[3] = &type metadata for LinkDefinitionProtocolStack;
  v2[0] = a1;
  return sub_1A7CC8D74(v2, &type metadata for LinkDefinitionProtocolStack);
}

uint64_t LinkDefinitionProtocolStack.uniqueID.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1A7CCE918(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v13 + 16);
      v6 = *(v13 + 24);

      if (v7 >= v6 >> 1)
      {
        sub_1A7CCE918((v6 > 1), v7 + 1, 1);
      }

      *(v13 + 16) = v7 + 1;
      v8 = v13 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  sub_1A7CC7FFC(&qword_1EB2B4AA0, &qword_1A7E45010);
  sub_1A7CD0F8C();
  v9 = sub_1A7E221F0();
  v11 = v10;

  MEMORY[0x1AC561C90](v9, v11);

  return 0x6C6F636F746F7270;
}

uint64_t LinkDefinition.protocolStack.getter()
{
  v1 = *v0;
  if (!*(v1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1A7CD0DFC(&type metadata for LinkDefinitionProtocolStack);
  if ((v3 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v6);
  sub_1A7B1503C(v6, &v5);
  sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = v7;
  if (!v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t (*LinkDefinition.protocolStack.modify(void *a1))()
{
  a1[1] = v1;
  sub_1A7CE0528(*v1, &v5);
  v3 = v5;
  if (!v5)
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v3;
  return sub_1A7D10C60;
}

_OWORD *sub_1A7D10C60(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v5 = &type metadata for LinkDefinitionProtocolStack;
    v4[0] = v2;

    sub_1A7CC8D74(v4, &type metadata for LinkDefinitionProtocolStack);
  }

  else
  {
    v5 = &type metadata for LinkDefinitionProtocolStack;
    v4[0] = v2;
    return sub_1A7CC8D74(v4, &type metadata for LinkDefinitionProtocolStack);
  }
}

uint64_t CLIFormattedText.lines.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1A7D10E30()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678, &qword_1A7E4F420);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1A7E21F80();
  sub_1A7CC7A10(v3, qword_1EB2DC220);
  sub_1A7B0CB00(v3, qword_1EB2DC220);
  v4 = sub_1A7E21EF0();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_1A7E21F40();
}

uint64_t sub_1A7D10F64()
{
  v1[7] = v0;
  type metadata accessor for LEToolOptions(0);
  v1[8] = swift_task_alloc();
  type metadata accessor for LEToolRequestMessage(0);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D11020, 0, 0);
}

uint64_t sub_1A7D11020()
{
  type metadata accessor for LEToolRequest(0);
  swift_storeEnumTagMultiPayload();
  sub_1A7CC7FFC(&qword_1EB2B5690, &qword_1A7E45388);
  sub_1A7E21DC0();
  v0[5] = &type metadata for CLIDefaultPrinter;
  v0[6] = &protocol witness table for CLIDefaultPrinter;
  v0[2] = sub_1A7D2B464;
  v0[3] = 0;
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1A7D1112C;
  v2 = v0[8];
  v3 = v0[9];

  return sub_1A7DE8A40(v3, v2, (v0 + 2));
}

uint64_t sub_1A7D1112C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v2 + 88) = v0;

  sub_1A7D11D8C(v4, type metadata accessor for LEToolOptions);
  sub_1A7D11D8C(v3, type metadata accessor for LEToolRequestMessage);
  sub_1A7B0CD6C((v2 + 16));
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A7D01DEC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1A7D112FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B5690, &qword_1A7E45388);
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = sub_1A7CC7FFC(&qword_1EB2B58F0, &qword_1A7E462B0);
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = type metadata accessor for LEToolConnectorShow(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7E21D80();
  type metadata accessor for LEToolOptions(0);
  sub_1A7D11CF0(&qword_1EB2B56B0, type metadata accessor for LEToolOptions, &unk_1A7E46D5C);
  sub_1A7E21DD0();
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D11D38();
  v13 = v20;
  sub_1A7E23250();
  if (!v13)
  {
    v14 = v18;
    sub_1A7D02BA4();
    sub_1A7E22F30();
    (*(v19 + 8))(v8, v6);
    (*(v14 + 40))(v12, v5, v3);
    sub_1A7D11DEC(v12, v17);
  }

  sub_1A7B0CD6C(a1);
  return sub_1A7D11D8C(v12, type metadata accessor for LEToolConnectorShow);
}

uint64_t sub_1A7D11618(uint64_t a1)
{
  v2 = sub_1A7D11D38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D11654(uint64_t a1)
{
  v2 = sub_1A7D11D38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D11690()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A7CD22FC;

  return sub_1A7D10F64();
}

uint64_t sub_1A7D11740(double a1)
{
  v1 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A7E21D80();
  type metadata accessor for LEToolOptions(0);
  sub_1A7D11CF0(&qword_1EB2B56B0, type metadata accessor for LEToolOptions, &unk_1A7E46D5C);
  return sub_1A7E21DD0();
}

uint64_t sub_1A7D1182C()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678, &qword_1A7E4F420);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1A7E21F80();
  sub_1A7CC7A10(v3, qword_1EB2DC238);
  sub_1A7B0CB00(v3, qword_1EB2DC238);
  sub_1A7CC7FFC(&qword_1EB2B5680, &qword_1A7E45380);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A7E418C0;
  v5 = type metadata accessor for LEToolConnectorShow(0);
  v6 = sub_1A7D11CF0(&qword_1EB2B58C8, type metadata accessor for LEToolConnectorShow, &unk_1A7E46268);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  v7 = sub_1A7E21EF0();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  return sub_1A7E21F40();
}

uint64_t sub_1A7D119F0(uint64_t a1)
{
  sub_1A7D11AF8();
  sub_1A7E21E90();
  v2 = *(v1 + 8);

  return v2();
}

unint64_t sub_1A7D11AA0()
{
  result = qword_1EB2B58B0;
  if (!qword_1EB2B58B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B58B0);
  }

  return result;
}

unint64_t sub_1A7D11AF8()
{
  result = qword_1EB2B58B8;
  if (!qword_1EB2B58B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B58B8);
  }

  return result;
}

unint64_t sub_1A7D11B50()
{
  result = qword_1EB2B58C0;
  if (!qword_1EB2B58C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B58C0);
  }

  return result;
}

uint64_t type metadata accessor for LEToolConnectorShow(uint64_t a1)
{
  result = qword_1EB2B58D0;
  if (!qword_1EB2B58D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A7D11CF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A7D11D38()
{
  result = qword_1EB2B58F8;
  if (!qword_1EB2B58F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B58F8);
  }

  return result;
}

uint64_t sub_1A7D11D8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A7D11DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LEToolConnectorShow(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A7D11E64()
{
  result = qword_1EB2B5900;
  if (!qword_1EB2B5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5900);
  }

  return result;
}

unint64_t sub_1A7D11EBC()
{
  result = qword_1EB2B5908;
  if (!qword_1EB2B5908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5908);
  }

  return result;
}

unint64_t sub_1A7D11F14()
{
  result = qword_1EB2B5910;
  if (!qword_1EB2B5910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5910);
  }

  return result;
}

uint64_t LinkEndpoint.interfaceAllowList.getter()
{
  v1 = *v0;
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointInterfaceAllowList);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v6);
  sub_1A7B1503C(v6, &v5);
  sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = v7;
  if (v7 == 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1A7D1203C()
{

  return swift_deallocClassInstance();
}

uint64_t IDSLinkEndpointRelayLinkID.uniqueIDSortableIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t IDSLinkEndpointRelayLinkID.uniqueID.getter()
{
  strcpy(v2, "relayLinkID=");
  v0 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v0);

  return v2[0];
}

uint64_t sub_1A7D12154()
{
  strcpy(v2, "relayLinkID=");
  v0 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v0);

  return v2[0];
}

uint64_t LinkEndpoint.idsRelayLinkID.getter()
{
  v1 = *v0;
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointRelayLinkID);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v7);
  sub_1A7B1503C(v7, &v6);
  sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = v9;
  if (v9)
  {
    v5 = v8;

    return v5;
  }

  return result;
}

uint64_t IDSLinksQualityRepeatingAsyncTask.stop()()
{
  v1[3] = v0;
  v2 = sub_1A7E22640();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D12354, 0, 0);
}

uint64_t sub_1A7D12354()
{
  v1 = v0[3] + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state;
  os_unfair_lock_lock(v1);
  v2 = *(v1 + 16);
  v0[7] = v2;
  *(v1 + 16) = 0;
  os_unfair_lock_unlock(v1);
  if (v2)
  {
    v0[8] = sub_1A7CC7FFC(&qword_1EB2B57A8, &qword_1A7E494F0);
    sub_1A7E226F0();
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_1A7D124A8;

    return MEMORY[0x1EEE6DA10]();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1A7D124A8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1A7D12624;
  }

  else
  {
    v2 = sub_1A7D125BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A7D125BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D12624()
{
  v21 = v0;
  v1 = v0[10];
  v0[2] = v1;
  v2 = v1;
  if (swift_dynamicCast())
  {
    (*(v0[5] + 8))(v0[6], v0[4]);

    v3 = sub_1A7E22040();
    v4 = sub_1A7E228D0();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[10];
    if (!v5)
    {
LABEL_7:

      goto LABEL_9;
    }

    v7 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1A7B0CB38(*(v7 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name), *(v7 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name + 8), &v20);
LABEL_6:
    sub_1A7B0CD6C(v9);
    MEMORY[0x1AC5654B0](v9, -1, -1);
    MEMORY[0x1AC5654B0](v8, -1, -1);
    goto LABEL_7;
  }

  v10 = v0[10];
  v11 = v10;

  v3 = sub_1A7E22040();
  v12 = sub_1A7E228E0();

  v13 = os_log_type_enabled(v3, v12);
  v6 = v0[10];
  if (v13)
  {
    v14 = v0[3];
    v8 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1A7B0CB38(*(v14 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name), *(v14 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name + 8), &v20);
    *(v8 + 12) = 2112;
    v16 = v6;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v17;
    *v15 = v17;
    sub_1A7D13CA0(v15);
    MEMORY[0x1AC5654B0](v15, -1, -1);
    goto LABEL_6;
  }

LABEL_9:

  v18 = v0[1];

  return v18();
}