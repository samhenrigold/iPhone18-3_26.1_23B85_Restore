uint64_t SFAirDropClient.BoopAtADistance.TapEvent.applicationLabel.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1A98B5A50@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t SFAirDropClient.BoopAtADistance.TapEvent.deviceName.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent(0) + 32));

  return v1;
}

uint64_t SFAirDropClient.BoopAtADistance.TapEvent.deviceModel.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent(0) + 36));

  return v1;
}

uint64_t SFAirDropClient.BoopAtADistance.TapEvent.accountID.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent(0) + 40));

  return v1;
}

uint64_t SFAirDropClient.BoopAtADistance.TapEvent.contactID.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent(0) + 44));

  return v1;
}

uint64_t SFAirDropClient.BoopAtADistance.TapEvent.init(identifier:applicationLabel:date:isSameAccount:deviceName:deviceModel:accountID:contactID:remoteServerInfo:shouldForceSingleBandAWDLMode:isKnownIdentity:isUnsupportedApplicationLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, char a18, char a19)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v22 = type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent(0);
  v23 = v22[6];
  v24 = sub_1A9976230();
  (*(*(v24 - 8) + 32))(&a9[v23], a5, v24);
  a9[v22[7]] = a6;
  v25 = &a9[v22[8]];
  *v25 = a7;
  *(v25 + 1) = a8;
  v26 = &a9[v22[9]];
  *v26 = a10;
  *(v26 + 1) = a11;
  v27 = &a9[v22[10]];
  *v27 = a12;
  *(v27 + 1) = a13;
  v28 = &a9[v22[11]];
  *v28 = a14;
  *(v28 + 1) = a15;
  result = sub_1A98B70C4(a16, &a9[v22[13]], type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo);
  a9[v22[12]] = a17;
  a9[v22[14]] = a18;
  a9[v22[15]] = a19;
  return result;
}

unint64_t sub_1A98B5E1C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x496E776F6E4B7369;
    if (a1 != 10)
    {
      v6 = 0xD00000000000001DLL;
    }

    if (a1 == 9)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = v6;
    }

    v8 = 0xD00000000000001DLL;
    if (a1 == 7)
    {
      v8 = 0x49746361746E6F63;
    }

    if (a1 == 6)
    {
      v8 = 0x49746E756F636361;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0x6341656D61537369;
    v3 = 0x614E656369766564;
    if (a1 != 4)
    {
      v3 = 0x6F4D656369766564;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000010;
    if (a1 != 1)
    {
      v4 = 1702125924;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1A98B5FD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A98B9860(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A98B6008(uint64_t a1)
{
  v2 = sub_1A98B74DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98B6044(uint64_t a1)
{
  v2 = sub_1A98B74DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropClient.BoopAtADistance.TapEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B43A0, &qword_1A99A0078);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B74DC();
  sub_1A9977AA0();
  v8[15] = 0;
  sub_1A9977690();
  if (!v1)
  {
    v8[14] = 1;
    sub_1A9977690();
    type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent(0);
    v8[13] = 2;
    sub_1A9976230();
    sub_1A98B7180(&qword_1EB3B0C58, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1A99776E0();
    v8[12] = 3;
    sub_1A99776A0();
    v8[11] = 4;
    sub_1A9977650();
    v8[10] = 5;
    sub_1A9977650();
    v8[9] = 6;
    sub_1A9977650();
    v8[8] = 7;
    sub_1A9977650();
    v8[7] = 8;
    sub_1A99776A0();
    v8[6] = 9;
    type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo(0);
    sub_1A98B7180(&qword_1EB3B43B0, type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo, &protocol conformance descriptor for SFAirDropClient.BoopAtADistance.ServerInfo);
    sub_1A99776E0();
    v8[5] = 10;
    sub_1A99776A0();
    v8[4] = 11;
    sub_1A99776A0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SFAirDropClient.BoopAtADistance.TapEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v41 = type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo(0);
  MEMORY[0x1EEE9AC00](v41);
  v42 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A9976230();
  v43 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B43B8, &qword_1A99A0080);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v36 - v8;
  v10 = type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B74DC();
  v46 = v9;
  v13 = v47;
  sub_1A9977A70();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v47 = a1;
  v37 = v4;
  v38 = v12;
  v39 = v10;
  v59 = 0;
  v14 = v44;
  v15 = sub_1A99775A0();
  v16 = v38;
  *v38 = v15;
  *(v16 + 1) = v17;
  v58 = 1;
  *(v16 + 2) = sub_1A99775A0();
  *(v16 + 3) = v18;
  v57 = 2;
  sub_1A98B7180(&qword_1EB3B0CE0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v19 = v37;
  v36[1] = 0;
  sub_1A99775F0();
  v20 = v39;
  (*(v43 + 32))(&v16[v39[6]], v6, v19);
  v56 = 3;
  v16[v20[7]] = sub_1A99775B0() & 1;
  v55 = 4;
  v21 = sub_1A9977550();
  v22 = &v16[v20[8]];
  *v22 = v21;
  v22[1] = v23;
  v54 = 5;
  v24 = sub_1A9977550();
  v25 = &v16[v20[9]];
  *v25 = v24;
  v25[1] = v26;
  v53 = 6;
  v27 = sub_1A9977550();
  v28 = &v16[v20[10]];
  *v28 = v27;
  v28[1] = v29;
  v52 = 7;
  v30 = sub_1A9977550();
  v32 = &v16[v39[11]];
  *v32 = v30;
  v32[1] = v33;
  v51 = 8;
  v16[v39[12]] = sub_1A99775B0() & 1;
  v50 = 9;
  sub_1A98B7180(&qword_1EB3B4190, type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo, &protocol conformance descriptor for SFAirDropClient.BoopAtADistance.ServerInfo);
  sub_1A99775F0();
  sub_1A98B70C4(v42, v38 + v39[13], type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo);
  v49 = 10;
  *(v38 + v39[14]) = sub_1A99775B0() & 1;
  v48 = 11;
  v34 = sub_1A99775B0();
  (*(v14 + 8))(v46, v45);
  v35 = v38;
  *(v38 + v39[15]) = v34 & 1;
  sub_1A98B6D20(v35, v40, type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent);
  __swift_destroy_boxed_opaque_existential_0Tm(v47);
  return sub_1A98B6CC0(v35, type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent);
}

uint64_t sub_1A98B6CC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A98B6D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A98B6D88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A98B6DF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A98B6E60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A97B2988;

  return sub_1A98AF030(a1);
}

uint64_t sub_1A98B6EFC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A97B2988;

  return sub_1A98AF290(a1, v5, v4);
}

uint64_t sub_1A98B6FC8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A97B2638;

  return sub_1A98B09FC(a1, v1);
}

uint64_t sub_1A98B70C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A98B712C()
{
  result = qword_1EB3B42A0;
  if (!qword_1EB3B42A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B42A0);
  }

  return result;
}

uint64_t sub_1A98B7180(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A98B71C8()
{
  result = qword_1EB3B42C8;
  if (!qword_1EB3B42C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B42C8);
  }

  return result;
}

unint64_t sub_1A98B721C()
{
  result = qword_1EB3B4310;
  if (!qword_1EB3B4310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4310);
  }

  return result;
}

unint64_t sub_1A98B7270()
{
  result = qword_1EB3B4318;
  if (!qword_1EB3B4318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4318);
  }

  return result;
}

unint64_t sub_1A98B72C4()
{
  result = qword_1EB3B4320;
  if (!qword_1EB3B4320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4320);
  }

  return result;
}

unint64_t sub_1A98B7318()
{
  result = qword_1EB3B4328;
  if (!qword_1EB3B4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4328);
  }

  return result;
}

unint64_t sub_1A98B736C()
{
  result = qword_1EB3B4358;
  if (!qword_1EB3B4358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4358);
  }

  return result;
}

unint64_t sub_1A98B73C0()
{
  result = qword_1EB3B4360;
  if (!qword_1EB3B4360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4360);
  }

  return result;
}

unint64_t sub_1A98B7434()
{
  result = qword_1EB3B4378;
  if (!qword_1EB3B4378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4378);
  }

  return result;
}

unint64_t sub_1A98B7488()
{
  result = qword_1EB3B4390;
  if (!qword_1EB3B4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4390);
  }

  return result;
}

unint64_t sub_1A98B74DC()
{
  result = qword_1EB3B43A8;
  if (!qword_1EB3B43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B43A8);
  }

  return result;
}

uint64_t sub_1A98B7768(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B4140, &qword_1A99A00F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A98B77E0()
{
  result = qword_1EB3B43D8;
  if (!qword_1EB3B43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B43D8);
  }

  return result;
}

unint64_t sub_1A98B783C()
{
  result = qword_1EB3B43E0;
  if (!qword_1EB3B43E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B43E0);
  }

  return result;
}

uint64_t sub_1A98B7B80(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B29B0, &qword_1A9990640);
    sub_1A98B7180(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A98B7F34(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2F18, &qword_1A999FD00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A98B7FF8()
{
  result = qword_1EB3B4428;
  if (!qword_1EB3B4428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4428);
  }

  return result;
}

unint64_t sub_1A98B8050()
{
  result = qword_1EB3B4430;
  if (!qword_1EB3B4430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4430);
  }

  return result;
}

unint64_t sub_1A98B80A8()
{
  result = qword_1EB3B4438;
  if (!qword_1EB3B4438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4438);
  }

  return result;
}

uint64_t sub_1A98B8128(uint64_t a1)
{
  result = type metadata accessor for SFAirDropClient.Identifier(319);
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

uint64_t sub_1A98B8500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A98B8784(uint64_t a1)
{
  result = sub_1A99762C0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A98B8830(uint64_t a1)
{
  result = sub_1A99762C0();
  if (v2 <= 0x3F)
  {
    result = sub_1A9976230();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1A98B88E4(uint64_t a1)
{
  sub_1A9976230();
  if (v1 <= 0x3F)
  {
    sub_1A97EA138();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for SFAirDropClient.BoopAtADistance.TapEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SFAirDropClient.BoopAtADistance.TapEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A98B8B90()
{
  result = qword_1EB3B4490;
  if (!qword_1EB3B4490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4490);
  }

  return result;
}

unint64_t sub_1A98B8BE8()
{
  result = qword_1EB3B4498;
  if (!qword_1EB3B4498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4498);
  }

  return result;
}

unint64_t sub_1A98B8C40()
{
  result = qword_1EB3B44A0;
  if (!qword_1EB3B44A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44A0);
  }

  return result;
}

unint64_t sub_1A98B8C98()
{
  result = qword_1EB3B44A8;
  if (!qword_1EB3B44A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44A8);
  }

  return result;
}

unint64_t sub_1A98B8CF0()
{
  result = qword_1EB3B44B0;
  if (!qword_1EB3B44B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44B0);
  }

  return result;
}

unint64_t sub_1A98B8D48()
{
  result = qword_1EB3B44B8;
  if (!qword_1EB3B44B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44B8);
  }

  return result;
}

unint64_t sub_1A98B8DA0()
{
  result = qword_1EB3B44C0;
  if (!qword_1EB3B44C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44C0);
  }

  return result;
}

unint64_t sub_1A98B8DF8()
{
  result = qword_1EB3B44C8;
  if (!qword_1EB3B44C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44C8);
  }

  return result;
}

unint64_t sub_1A98B8E50()
{
  result = qword_1EB3B44D0;
  if (!qword_1EB3B44D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44D0);
  }

  return result;
}

unint64_t sub_1A98B8EA8()
{
  result = qword_1EB3B44D8;
  if (!qword_1EB3B44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44D8);
  }

  return result;
}

unint64_t sub_1A98B8F00()
{
  result = qword_1EB3B44E0;
  if (!qword_1EB3B44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44E0);
  }

  return result;
}

unint64_t sub_1A98B8F58()
{
  result = qword_1EB3B44E8;
  if (!qword_1EB3B44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44E8);
  }

  return result;
}

unint64_t sub_1A98B8FB0()
{
  result = qword_1EB3B44F0;
  if (!qword_1EB3B44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44F0);
  }

  return result;
}

unint64_t sub_1A98B9008()
{
  result = qword_1EB3B44F8;
  if (!qword_1EB3B44F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44F8);
  }

  return result;
}

unint64_t sub_1A98B9060()
{
  result = qword_1EB3B4500;
  if (!qword_1EB3B4500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4500);
  }

  return result;
}

unint64_t sub_1A98B90B8()
{
  result = qword_1EB3B4508;
  if (!qword_1EB3B4508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4508);
  }

  return result;
}

unint64_t sub_1A98B9110()
{
  result = qword_1EB3B4510;
  if (!qword_1EB3B4510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4510);
  }

  return result;
}

unint64_t sub_1A98B9168()
{
  result = qword_1EB3B4518;
  if (!qword_1EB3B4518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4518);
  }

  return result;
}

unint64_t sub_1A98B91C0()
{
  result = qword_1EB3B4520;
  if (!qword_1EB3B4520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4520);
  }

  return result;
}

unint64_t sub_1A98B9218()
{
  result = qword_1EB3B4528;
  if (!qword_1EB3B4528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4528);
  }

  return result;
}

unint64_t sub_1A98B9270()
{
  result = qword_1EB3B4530;
  if (!qword_1EB3B4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4530);
  }

  return result;
}

unint64_t sub_1A98B92C8()
{
  result = qword_1EB3B4538;
  if (!qword_1EB3B4538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4538);
  }

  return result;
}

unint64_t sub_1A98B9320()
{
  result = qword_1EB3B4540;
  if (!qword_1EB3B4540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4540);
  }

  return result;
}

unint64_t sub_1A98B9378()
{
  result = qword_1EB3B4548;
  if (!qword_1EB3B4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4548);
  }

  return result;
}

unint64_t sub_1A98B93D0()
{
  result = qword_1EB3B4550;
  if (!qword_1EB3B4550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4550);
  }

  return result;
}

unint64_t sub_1A98B9428()
{
  result = qword_1EB3B4558;
  if (!qword_1EB3B4558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4558);
  }

  return result;
}

unint64_t sub_1A98B9480()
{
  result = qword_1EB3B4560;
  if (!qword_1EB3B4560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4560);
  }

  return result;
}

uint64_t sub_1A98B94D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001A99E6B70 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4579616C50726163 && a2 == 0xEE0064656C62616ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D64696C61766E69 && a2 == 0xEB0000000065646FLL)
  {

    return 2;
  }

  else
  {
    v5 = sub_1A99777E0();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A98B9604(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001A99E6BB0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xED00006174614479 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5572756F6A6E6F62 && a2 == 0xEB00000000444955)
  {

    return 2;
  }

  else
  {
    v5 = sub_1A99777E0();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A98B9734(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEE00657461446E6FLL || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616974696E497369 && a2 == 0xEB00000000726F74)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A98B9860(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E6BB0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6341656D61537369 && a2 == 0xED0000746E756F63 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044 || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001A99E6BD0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E6BF0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x496E776F6E4B7369 && a2 == 0xEF797469746E6564 || (sub_1A99777E0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001A99E6C10 == a2)
  {

    return 11;
  }

  else
  {
    v5 = sub_1A99777E0();

    if (v5)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_1A98B9C6C()
{
  result = qword_1EB3B4568;
  if (!qword_1EB3B4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4568);
  }

  return result;
}

uint64_t sub_1A98BA0A0(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98BA0C0, 0, 0);
}

uint64_t sub_1A98BA0C0()
{
  *(v0 + 40) = &type metadata for VoidParameters;
  sub_1A97AF7EC(v0 + 16, v0 + 48);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 104);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v2 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F38, &unk_1A99A17F0) + 68));
    v10 = (*v2 + **v2);
    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    *v3 = v0;
    v3[1] = sub_1A98BA30C;
    v4 = *(v0 + 96);

    return v10(v4);
  }

  else
  {
    *(v0 + 128) = 1;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0xE000000000000000;
    sub_1A9977400();
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    sub_1A97BCDE0();
    swift_allocError();
    *v8 = v6;
    *(v8 + 8) = v7;
    *(v8 + 16) = xmmword_1A99A17D0;
    *(v8 + 32) = 0;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0xD00000000000004CLL;
    *(v8 + 56) = 0x80000001A99E2F10;
    *(v8 + 64) = 31;
    *(v8 + 80) = 0xA000000000000000;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1A98BA30C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1A98BA420;
  }

  else
  {
    v2 = sub_1A98A50BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A98BA438(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A98BA45C, 0, 0);
}

uint64_t sub_1A98BA45C()
{
  v1 = *(v0 + 24);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 32);
    *(v0 + 56) = *(v1 + 32);
    v3 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F40, &qword_1A9999480) + 68));
    v9 = (*v3 + **v3);
    v4 = swift_task_alloc();
    *(v0 + 40) = v4;
    *v4 = v0;
    v4[1] = sub_1A98BA62C;
    v5 = *(v0 + 16);

    return v9(v5, v0 + 56);
  }

  else
  {
    sub_1A97BCDE0();
    swift_allocError();
    *v7 = 0xD000000000000021;
    v7[1] = 0x80000001A99E2EE0;
    v7[2] = 0xD00000000000004CLL;
    v7[3] = 0x80000001A99E2F10;
    v7[4] = 33;
    v7[10] = 0x2000000000000000;
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1A98BA62C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1A98BA740;
  }

  else
  {
    v2 = sub_1A98A50BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t SFAirDrop.PermissionRequest.declineAction.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v19 = v5;
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v9 = type metadata accessor for SFAirDrop.PermissionRequest.Style(0, &v19);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - v11;
  (*(v10 + 16))(v18 - v11, v2 + *(a1 + 60), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for SFAirDrop.DeclineAction(0);
    (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
    return (*(v10 + 8))(v12, v9);
  }

  else
  {

    MEMORY[0x1EEE9AC00](v15);
    strcpy(&v18[-6], "title prompt acceptActions declineAction ");
    v19 = MEMORY[0x1E69E6158];
    v20 = MEMORY[0x1E69E6158];
    v18[0] = v5;
    v18[1] = v6;
    v18[2] = v7;
    v18[3] = v8;
    type metadata accessor for SFAirDrop.AcceptAction(255, v18);
    v21 = sub_1A9976B60();
    v22 = type metadata accessor for SFAirDrop.DeclineAction(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    sub_1A98BAA80(&v12[*(TupleTypeMetadata + 80)], a2);
    v17 = type metadata accessor for SFAirDrop.DeclineAction(0);
    return (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
  }
}

uint64_t type metadata accessor for SFAirDrop.DeclineAction(uint64_t a1)
{
  result = qword_1EB3AB990;
  if (!qword_1EB3AB990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A98BAA80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDrop.DeclineAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL static SFAirDrop.PermissionRequest.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a3;
  v42 = a4;
  v43 = a5;
  v44 = a6;
  v12 = type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData(0, &v41);
  v40 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v33 - v13;
  v14 = sub_1A99770A0();
  v39 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v38 = &v33 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v33 - v17;
  if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
  {
    return 0;
  }

  v41 = a3;
  v42 = a4;
  v43 = a5;
  v44 = a6;
  v35 = a6;
  v19 = type metadata accessor for SFAirDrop.PermissionRequest(0, &v41);
  if (*(a1 + *(v19 + 52)) != *(a2 + *(v19 + 52)))
  {
    return 0;
  }

  v20 = v19;
  if ((sub_1A99761E0() & 1) == 0 || (static SFAirDrop.PermissionRequest.Style.== infix(_:_:)((a1 + *(v20 + 60)), (a2 + *(v20 + 60)), a3, a4, a5, v35) & 1) == 0)
  {
    return 0;
  }

  v21 = *(TupleTypeMetadata2 + 48);
  v33 = *(v20 + 64);
  v34 = v21;
  v22 = v33 + a1;
  v23 = *(v39 + 16);
  v23(v18, v22, v14);
  v24 = v33 + a2;
  v33 = v23;
  v23(&v18[v34], v24, v14);
  v25 = *(v40 + 48);
  if (v25(v18, 1, v12) == 1)
  {
    if (v25(&v18[v34], 1, v12) == 1)
    {
      (*(v39 + 8))(v18, v14);
      return 1;
    }

    goto LABEL_10;
  }

  v33(v38, v18, v14);
  v26 = v34;
  if (v25(&v18[v34], 1, v12) == 1)
  {
    (*(v40 + 8))(v38, v12);
LABEL_10:
    (*(v37 + 8))(v18, TupleTypeMetadata2);
    return 0;
  }

  v28 = v40;
  v29 = v36;
  (*(v40 + 32))(v36, &v18[v26], v12);
  v30 = v38;
  v31 = static SFAirDrop.PermissionRequest.TelemetryData.== infix(_:_:)(v38, v29, a3, a4, a5, v35);
  v32 = *(v28 + 8);
  v32(v29, v12);
  v32(v30, v12);
  (*(v39 + 8))(v18, v14);
  return (v31 & 1) != 0;
}

uint64_t SFAirDrop.PermissionRequest.answered()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v35 = *(a1 + 16);
  v36 = v5;
  v8 = v35;
  v31 = v5;
  v32 = v35;
  v9 = v5;
  v37 = v6;
  v38 = v7;
  v10 = v6;
  v29 = v7;
  v30 = v6;
  v11 = v7;
  type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData(255, &v35);
  v33 = sub_1A99770A0();
  v12 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v14 = &v27 - v13;
  v35 = v8;
  v36 = v9;
  v37 = v10;
  v38 = v11;
  v28 = type metadata accessor for SFAirDrop.PermissionRequest.Style(0, &v35);
  v15 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v17 = &v27 - v16;
  v18 = sub_1A9976230();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A99762C0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v3);
  (*(v19 + 16))(v21, v3 + *(a1 + 56), v18);
  (*(v15 + 16))(v17, v3 + *(a1 + 60), v28);
  (*(v12 + 16))(v14, v3 + *(a1 + 64), v33);
  return SFAirDrop.PermissionRequest.init(id:requestDate:style:isAnswered:telemetryData:)(v24, v21, v17, 1, v14, v32, v31, v30, v34, v29);
}

uint64_t sub_1A98BB25C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) == *(a2 + 16))
  {
    v2 = 0;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    else
    {
      v5 = -1;
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    v55 = a2 + 56;
LABEL_7:
    if (v6)
    {
      v8 = __clz(__rbit64(v6));
      v9 = (v6 - 1) & v6;
      goto LABEL_14;
    }

    v10 = v2;
    do
    {
      v2 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        return result;
      }

      if (v2 >= v7)
      {
        return 1;
      }

      v11 = *(v3 + 8 * v2);
      ++v10;
    }

    while (!v11);
    v8 = __clz(__rbit64(v11));
    v9 = (v11 - 1) & v11;
LABEL_14:
    v48 = result;
    v49 = a2;
    v12 = (*(result + 48) + 80 * (v8 | (v2 << 6)));
    v58 = *v12;
    v13 = v12[4];
    v15 = v12[1];
    v14 = v12[2];
    v61 = v12[3];
    v62 = v13;
    v59 = v15;
    v60 = v14;
    v16 = v58;
    sub_1A9977980();
    v17 = BYTE8(v59);
    v19 = *(&v58 + 1);
    v18 = v59;
    v56 = v16;
    sub_1A99779A0();
    sub_1A986DF88(&v58, v57);
    v53 = v18;
    v54 = v19;
    sub_1A99768D0();
    v20 = v60;
    v21 = v61;
    v52 = v17;
    sub_1A99779A0();
    sub_1A99768D0();
    sub_1A99779A0();
    if (*(&v21 + 1))
    {
      sub_1A99768D0();
    }

    v50 = *(&v62 + 1);
    v51 = v62;
    sub_1A99768D0();
    v22 = sub_1A99779B0();
    v23 = -1 << *(v49 + 32);
    v24 = v22 & ~v23;
    v25 = v55;
    if ((*(v55 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
    {
      v44 = v9;
      v45 = v7;
      v46 = v2;
      v47 = v3;
      v26 = ~v23;
      v27 = *(v49 + 48);
      do
      {
        v28 = (v27 + 80 * v24);
        if (v56 != *v28)
        {
          goto LABEL_19;
        }

        v29 = v28[24];
        v30 = *(v28 + 4);
        v31 = *(v28 + 5);
        v33 = *(v28 + 6);
        v32 = *(v28 + 7);
        v34 = *(v28 + 8);
        v35 = *(v28 + 9);
        if (*(v28 + 1) == v54 && *(v28 + 2) == v53)
        {
          if (v52 != v29)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v37 = sub_1A99777E0();
          v25 = v55;
          if (v37 & 1) == 0 || ((v52 ^ v29))
          {
            goto LABEL_19;
          }
        }

        if (v30 != v20 || v31 != *(&v20 + 1))
        {
          v39 = sub_1A99777E0();
          v25 = v55;
          if ((v39 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        if (v32)
        {
          if (!*(&v21 + 1))
          {
            goto LABEL_19;
          }

          if (v33 != v21 || v32 != *(&v21 + 1))
          {
            v41 = sub_1A99777E0();
            v25 = v55;
            if ((v41 & 1) == 0)
            {
              goto LABEL_19;
            }
          }
        }

        else if (*(&v21 + 1))
        {
          goto LABEL_19;
        }

        v42 = v34 == v51 && v35 == v50;
        if (v42 || (v43 = sub_1A99777E0(), v25 = v55, (v43 & 1) != 0))
        {
          sub_1A986DFC0(&v58);
          result = v48;
          a2 = v49;
          v2 = v46;
          v3 = v47;
          v6 = v44;
          v7 = v45;
          goto LABEL_7;
        }

LABEL_19:
        v24 = (v24 + 1) & v26;
      }

      while (((*(v25 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0);
    }

    sub_1A986DFC0(&v58);
  }

  return 0;
}

uint64_t sub_1A98BB5EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A9976020();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
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
      sub_1A98CDB9C(&qword_1EB3AC8C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v26 = sub_1A9976730();
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
        sub_1A98CDB9C(&qword_1EB3B4D50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
        v31 = sub_1A99767A0();
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

uint64_t sub_1A98BB99C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v28 = result + 56;
  v3 = 1 << *(result + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(result + 56);
  v6 = (v3 + 63) >> 6;
  v29 = v6;
  v30 = result;
  v32 = a2 + 56;
  if (v5)
  {
    do
    {
      v7 = __clz(__rbit64(v5));
      v31 = (v5 - 1) & v5;
LABEL_13:
      v10 = *(*(result + 48) + 8 * (v7 | (v2 << 6)));
      sub_1A9977980();
      v11 = v10 + 64;
      v12 = 1 << *(v10 + 32);
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v14 = v13 & *(v10 + 64);
      v15 = (v12 + 63) >> 6;
      result = swift_bridgeObjectRetain_n();
      v16 = 0;
      v17 = 0;
      v34 = v10;
      while (v14)
      {
        v35 = v16;
LABEL_24:
        v19 = *(*(v10 + 56) + 8 * (__clz(__rbit64(v14)) | (v17 << 6)));

        sub_1A99768D0();

        MEMORY[0x1AC58A630](*(v19 + 16));
        v20 = *(v19 + 16);
        if (v20)
        {
          v21 = v19 + 40;
          do
          {

            sub_1A99768D0();

            v21 += 16;
            --v20;
          }

          while (v20);
        }

        v14 &= v14 - 1;

        result = sub_1A99779B0();
        v10 = v34;
        v16 = result ^ v35;
      }

      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
          goto LABEL_39;
        }

        if (v18 >= v15)
        {
          break;
        }

        v14 = *(v11 + 8 * v18);
        ++v17;
        if (v14)
        {
          v35 = v16;
          v17 = v18;
          goto LABEL_24;
        }
      }

      MEMORY[0x1AC58A630](v16);
      v22 = sub_1A99779B0();
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v32 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
LABEL_36:

        return 0;
      }

      v25 = ~v23;
      while (1)
      {

        v27 = sub_1A98CA49C(v26, v10);

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v32 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v6 = v29;
      result = v30;
      v5 = v31;
    }

    while (v31);
  }

  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v6)
    {
      return 1;
    }

    v9 = *(v28 + 8 * v2);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v31 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1A98BBCB0()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B4570);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B4570);
  if (qword_1EB3ACCA8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3ACCB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SFAirDrop.PermissionRequest.requestDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_1A9976230();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SFAirDrop.PermissionRequest.style.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = *(a1 + 32);
  v8[0] = *(a1 + 16);
  v8[1] = v5;
  v6 = type metadata accessor for SFAirDrop.PermissionRequest.Style(0, v8);
  return (*(*(v6 - 8) + 16))(a2, v2 + v4, v6);
}

uint64_t SFAirDrop.PermissionRequest.telemetryData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  v8[0] = *(a1 + 16);
  v8[1] = v5;
  type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData(255, v8);
  v6 = sub_1A99770A0();
  return (*(*(v6 - 8) + 16))(a2, v2 + v4, v6);
}

Swift::Void __swiftcall SFAirDrop.PermissionRequest.cancel()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v0 - 8);
  v5 = *(v4 + 64);
  (MEMORY[0x1EEE9AC00])();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  v13 = sub_1A9976C00();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v4 + 16))(v6, v2, v3);
  v14 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v16 = *(v3 + 32);
  *(v15 + 16) = *(v3 + 16);
  *(v15 + 32) = v16;
  (*(v4 + 32))(v15 + v14, v6, v3);
  sub_1A98614D8(v12, v10);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1A99A1800;
  v17[5] = v15;
  sub_1A97B4F40(0, 0, v10, &unk_1A99A1810, v17);

  sub_1A9860FD4(v12);
}

uint64_t sub_1A98BC12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[37] = a5;
  v6[38] = a6;
  v6[35] = a3;
  v6[36] = a4;
  v6[34] = a2;
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a6;
  v11 = type metadata accessor for SFAirDrop.PermissionRequest.InterventionAction(0, (v6 + 2));
  v6[39] = v11;
  v6[40] = *(v11 - 8);
  v6[41] = swift_task_alloc();
  v6[42] = type metadata accessor for SFAirDrop.DeclineAction(0);
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[6] = a3;
  v6[7] = a4;
  v6[8] = a5;
  v6[9] = a6;
  v12 = type metadata accessor for SFAirDrop.PermissionRequest.Style(0, (v6 + 6));
  v6[45] = v12;
  v6[46] = *(v12 - 8);
  v6[47] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98BC2CC, 0, 0);
}

uint64_t sub_1A98BC2CC()
{
  v1 = (v0 + 280);
  v2 = *(v0 + 296);
  *(v0 + 80) = *(v0 + 280);
  v4 = *(v0 + 368);
  v3 = *(v0 + 376);
  v5 = *(v0 + 360);
  v6 = *(v0 + 272);
  *(v0 + 96) = v2;
  v7 = type metadata accessor for SFAirDrop.PermissionRequest(0, v0 + 80);
  (*(v4 + 16))(v3, v6 + *(v7 + 60), v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = *(v0 + 376);
      v11 = *(v0 + 320);
      v10 = *(v0 + 328);
      v12 = *(v0 + 312);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(v11 + 32))(v10, v9 + *(TupleTypeMetadata2 + 48), v12);
      *(v0 + 432) = 1;
      v14 = swift_task_alloc();
      *(v0 + 400) = v14;
      *v14 = v0;
      v14[1] = sub_1A98BCAA4;
      v15 = *(v0 + 312);

      return SFAirDrop.PermissionRequest.InterventionAction.respond(with:)((v0 + 432), v15);
    }

    v24 = *(v0 + 376);
    v26 = *(v0 + 336);
    v25 = *(v0 + 344);
    v30 = *(v0 + 296);
    v32 = *v1;

    strcpy(swift_task_alloc(), "title prompt acceptActions declineAction ");
    v27 = MEMORY[0x1E69E6158];
    *(v0 + 112) = MEMORY[0x1E69E6158];
    *(v0 + 120) = v27;
    *(v0 + 144) = v32;
    *(v0 + 160) = v30;
    type metadata accessor for SFAirDrop.AcceptAction(255, v0 + 144);
    *(v0 + 128) = sub_1A9976B60();
    *(v0 + 136) = v26;
    TupleTypeMetadata = swift_getTupleTypeMetadata();

    sub_1A98BAA80(v24 + *(TupleTypeMetadata + 80), v25);
    v22 = swift_task_alloc();
    *(v0 + 416) = v22;
    *v22 = v0;
    v23 = sub_1A98BCC58;
  }

  else
  {
    v17 = *(v0 + 376);
    v18 = *(v0 + 352);
    v19 = *(v0 + 336);
    v29 = *(v0 + 296);
    v31 = *v1;

    strcpy(swift_task_alloc(), "title prompt acceptActions declineAction ");
    v20 = MEMORY[0x1E69E6158];
    *(v0 + 176) = MEMORY[0x1E69E6158];
    *(v0 + 184) = v20;
    *(v0 + 208) = v31;
    *(v0 + 224) = v29;
    type metadata accessor for SFAirDrop.AcceptAction(255, v0 + 208);
    *(v0 + 192) = sub_1A9976B60();
    *(v0 + 200) = v19;
    v21 = swift_getTupleTypeMetadata();

    sub_1A98BAA80(v17 + *(v21 + 80), v18);
    v22 = swift_task_alloc();
    *(v0 + 384) = v22;
    *v22 = v0;
    v23 = sub_1A98BC714;
  }

  v22[1] = v23;

  return sub_1A98BA0A0(sub_1A98BA0A0);
}

uint64_t sub_1A98BC714()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_1A98BC8B8;
  }

  else
  {
    v2 = sub_1A98BC828;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A98BC828()
{
  sub_1A98CB558(*(v0 + 352));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A98BC8B8()
{
  v14 = v0;
  sub_1A98CB558(v0[44]);
  v1 = v0[49];
  if (qword_1EB3B0B48 != -1)
  {
    swift_once();
  }

  v2 = sub_1A99764A0();
  __swift_project_value_buffer(v2, qword_1EB3B4570);
  v3 = v1;
  v4 = sub_1A9976480();
  v5 = sub_1A9976F80();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1A99778E0();
    v10 = sub_1A97AF148(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1A9662000, v4, v5, "Failed to cancel PermissionRequest {error: %s}", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1AC58D2C0](v7, -1, -1);
    MEMORY[0x1AC58D2C0](v6, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1A98BCAA4()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_1A98BCFE8;
  }

  else
  {
    v2 = sub_1A98BCBB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A98BCBB8()
{
  (*(v0[40] + 8))(v0[41], v0[39]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A98BCC58()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_1A98BCDFC;
  }

  else
  {
    v2 = sub_1A98BCD6C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A98BCD6C()
{
  sub_1A98CB558(*(v0 + 344));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A98BCDFC()
{
  v14 = v0;
  sub_1A98CB558(v0[43]);
  v1 = v0[53];
  if (qword_1EB3B0B48 != -1)
  {
    swift_once();
  }

  v2 = sub_1A99764A0();
  __swift_project_value_buffer(v2, qword_1EB3B4570);
  v3 = v1;
  v4 = sub_1A9976480();
  v5 = sub_1A9976F80();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1A99778E0();
    v10 = sub_1A97AF148(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1A9662000, v4, v5, "Failed to cancel PermissionRequest {error: %s}", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1AC58D2C0](v7, -1, -1);
    MEMORY[0x1AC58D2C0](v6, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1A98BCFE8()
{
  v14 = v0;
  (*(v0[40] + 8))(v0[41], v0[39]);
  v1 = v0[51];
  if (qword_1EB3B0B48 != -1)
  {
    swift_once();
  }

  v2 = sub_1A99764A0();
  __swift_project_value_buffer(v2, qword_1EB3B4570);
  v3 = v1;
  v4 = sub_1A9976480();
  v5 = sub_1A9976F80();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1A99778E0();
    v10 = sub_1A97AF148(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1A9662000, v4, v5, "Failed to cancel PermissionRequest {error: %s}", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1AC58D2C0](v7, -1, -1);
    MEMORY[0x1AC58D2C0](v6, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t SFAirDrop.DeclineAction.decline()()
{
  type metadata accessor for SFAirDrop.DeclineAction(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A98BD2A0;

  return (sub_1A98BA0A0)();
}

uint64_t sub_1A98BD2A0()
{
  *(*v1 + 24) = v0;

  if (v0)
  {
    v2 = sub_1A98BD3B4;
  }

  else
  {
    v2 = sub_1A98A8890;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t SFAirDrop.PermissionRequest.InterventionAction.respond(with:)(_BYTE *a1, uint64_t a2)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = v2;
  *(v3 + 49) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1A98BD3F4, 0, 0);
}

uint64_t sub_1A98BD3F4()
{
  v1 = *(v0 + 49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4588, &qword_1A99A1830);
  inited = swift_initStackObject();
  *(v0 + 72) = inited;
  *(inited + 16) = xmmword_1A9996D60;
  *(inited + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1A98BD4E8;

  return (sub_1A98BA438)();
}

uint64_t sub_1A98BD4E8()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1A98BD604;
  }

  else
  {
    swift_setDeallocating();
    v2 = sub_1A98A8890;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A98BD604()
{
  swift_setDeallocating();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t SFAirDrop.PermissionRequest.init(id:requestDate:title:prompt:acceptActions:declineAction:isAnswered:telemetryData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v20 = sub_1A99762C0();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v34 = a12;
  v35 = a13;
  v36 = a14;
  v37 = a15;
  v21 = type metadata accessor for SFAirDrop.PermissionRequest(0, &v34);
  v22 = v21[14];
  v23 = sub_1A9976230();
  (*(*(v23 - 8) + 32))(a9 + v22, a2, v23);
  v24 = (a9 + v21[15]);
  v34 = MEMORY[0x1E69E6158];
  v35 = MEMORY[0x1E69E6158];
  v33[0] = a12;
  v33[1] = a13;
  v33[2] = a14;
  v33[3] = a15;
  type metadata accessor for SFAirDrop.AcceptAction(255, v33);
  v36 = sub_1A9976B60();
  v37 = type metadata accessor for SFAirDrop.DeclineAction(255);
  v25 = *(swift_getTupleTypeMetadata() + 80);
  *v24 = a3;
  v24[1] = a4;
  v24[2] = a5;
  v24[3] = a6;
  v24[4] = a7;
  sub_1A98BAA80(a8, v24 + v25);
  v34 = a12;
  v35 = a13;
  v36 = a14;
  v37 = a15;
  type metadata accessor for SFAirDrop.PermissionRequest.Style(0, &v34);
  swift_storeEnumTagMultiPayload();
  *(a9 + v21[13]) = a10;
  v26 = v21[16];
  v34 = a12;
  v35 = a13;
  v36 = a14;
  v37 = a15;
  type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData(255, &v34);
  v27 = sub_1A99770A0();
  return (*(*(v27 - 8) + 32))(a9 + v26, a11, v27);
}

uint64_t SFAirDrop.PermissionRequest.init(id:requestDate:interventionWorkflow:action:isAnswered:telemetryData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = *a3;
  v18 = sub_1A99762C0();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v30 = a7;
  v31 = a8;
  v32 = a10;
  v33 = a11;
  v19 = type metadata accessor for SFAirDrop.PermissionRequest(0, &v30);
  v20 = v19[14];
  v21 = sub_1A9976230();
  (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  v22 = (a9 + v19[15]);
  v30 = a7;
  v31 = a8;
  v32 = a10;
  v33 = a11;
  v23 = type metadata accessor for SFAirDrop.PermissionRequest.InterventionAction(255, &v30);
  v24 = *(swift_getTupleTypeMetadata2() + 48);
  *v22 = v17;
  (*(*(v23 - 8) + 32))(&v22[v24], a4, v23);
  v30 = a7;
  v31 = a8;
  v32 = a10;
  v33 = a11;
  type metadata accessor for SFAirDrop.PermissionRequest.Style(0, &v30);
  swift_storeEnumTagMultiPayload();
  *(a9 + v19[13]) = a5;
  v25 = v19[16];
  v30 = a7;
  v31 = a8;
  v32 = a10;
  v33 = a11;
  type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData(255, &v30);
  v26 = sub_1A99770A0();
  return (*(*(v26 - 8) + 32))(a9 + v25, a6, v26);
}

uint64_t SFAirDrop.PermissionRequest.init(id:requestDate:style:isAnswered:telemetryData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v18 = sub_1A99762C0();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a10;
  v19 = type metadata accessor for SFAirDrop.PermissionRequest(0, &v28);
  v20 = v19[14];
  v21 = sub_1A9976230();
  (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  v22 = v19[15];
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a10;
  v23 = type metadata accessor for SFAirDrop.PermissionRequest.Style(0, &v28);
  (*(*(v23 - 8) + 32))(a9 + v22, a3, v23);
  *(a9 + v19[13]) = a4;
  v24 = v19[16];
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a10;
  type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData(255, &v28);
  v25 = sub_1A99770A0();
  return (*(*(v25 - 8) + 32))(a9 + v24, a5, v25);
}

uint64_t SFAirDrop.PermissionRequest.description.getter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v34 = v4;
  v35 = v3;
  v36 = v6;
  v37 = v5;
  v7 = type metadata accessor for SFAirDrop.PermissionRequest.Style(0, &v34);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  (*(v10 + 16))(&v29 - v8, v1 + *(a1 + 60), v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    v16 = *(v9 + 2);
    v15 = *(v9 + 3);

    MEMORY[0x1EEE9AC00](v17);
    strcpy(&v29 - 48, "title prompt acceptActions declineAction ");
    v34 = MEMORY[0x1E69E6158];
    v35 = MEMORY[0x1E69E6158];
    v31[0] = v4;
    v31[1] = v3;
    v32 = v6;
    v33 = v5;
    type metadata accessor for SFAirDrop.AcceptAction(255, v31);
    v36 = sub_1A9976B60();
    v37 = type metadata accessor for SFAirDrop.DeclineAction(255);
    v18 = *(swift_getTupleTypeMetadata() + 80);
    v34 = 0x203A74706D6F7270;
    v35 = 0xE800000000000000;
    MEMORY[0x1AC5895B0](v16, v15);

    v19 = v34;
    v20 = &v9[v18];
LABEL_8:
    sub_1A98CB558(v20);
    return v19;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v22 = *v9;
    v21 = *(v9 + 1);
    v23 = *(v9 + 3);
    v30 = *(v9 + 2);

    MEMORY[0x1EEE9AC00](v24);
    strcpy(&v29 - 48, "title prompt acceptActions declineAction ");
    v34 = MEMORY[0x1E69E6158];
    v35 = MEMORY[0x1E69E6158];
    v31[0] = v4;
    v31[1] = v3;
    v32 = v6;
    v33 = v5;
    type metadata accessor for SFAirDrop.AcceptAction(255, v31);
    v36 = sub_1A9976B60();
    v37 = type metadata accessor for SFAirDrop.DeclineAction(255);
    v25 = *(swift_getTupleTypeMetadata() + 80);
    v34 = 0x203A7472656C61;
    v35 = 0xE700000000000000;
    MEMORY[0x1AC5895B0](v22, v21);

    MEMORY[0x1AC5895B0](23328, 0xE200000000000000);
    MEMORY[0x1AC5895B0](v30, v23);

    MEMORY[0x1AC5895B0](93, 0xE100000000000000);
    v19 = v34;
    v20 = &v9[v25];
    goto LABEL_8;
  }

  v12 = *v9;
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_1A99772B0();

  strcpy(v31, "intervention: ");
  HIBYTE(v31[1]) = -18;
  if (v12)
  {
    if (v12 == 1)
    {
      v13 = 0xE800000000000000;
      v14 = 0x657669656365722ELL;
    }

    else
    {
      v13 = 0xE90000000000006FLL;
      v14 = 0x666E4965726F6D2ELL;
    }
  }

  else
  {
    v13 = 0xE500000000000000;
    v14 = 0x646E65732ELL;
  }

  v34 = v4;
  v35 = v3;
  v36 = v6;
  v37 = v5;
  v26 = type metadata accessor for SFAirDrop.PermissionRequest.InterventionAction(255, &v34);
  v27 = *(swift_getTupleTypeMetadata2() + 48);
  MEMORY[0x1AC5895B0](v14, v13);

  v19 = v31[0];
  (*(*(v26 - 8) + 8))(&v9[v27], v26);
  return v19;
}

uint64_t static SFAirDrop.PermissionRequest.Style.== infix(_:_:)(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v132 = a1;
  v138 = a3;
  v139 = a4;
  v140 = a5;
  v141 = a6;
  v11 = type metadata accessor for SFAirDrop.PermissionRequest.InterventionAction(0, &v138);
  v123 = *(v11 - 8);
  v124 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v121 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v118 = &v116 - v14;
  v127 = type metadata accessor for SFAirDrop.DeclineAction(0);
  v15 = MEMORY[0x1EEE9AC00](v127);
  v119 = (&v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v15);
  v120 = &v116 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v117 = (&v116 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v116 - v21;
  v128 = a3;
  v129 = a4;
  v138 = a3;
  v139 = a4;
  v130 = a5;
  v131 = a6;
  v140 = a5;
  v141 = a6;
  v23 = type metadata accessor for SFAirDrop.PermissionRequest.Style(0, &v138);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = (&v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v116 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = (&v116 - v31);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v125 = *(TupleTypeMetadata2 - 8);
  v34 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v36 = &v116 - v35;
  v126 = v34;
  v37 = (&v116 + *(v34 + 48) - v35);
  v122 = v24;
  v38 = *(v24 + 16);
  v38(&v116 - v35, v132, v23);
  v38(v37, a2, v23);
  v39 = v36;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v124 = v22;
    v53 = (v38)(v32, v36, v23);
    v54 = v32[1];
    v123 = *v32;
    v55 = v32[3];
    v121 = v32[2];
    v56 = v32[4];
    MEMORY[0x1EEE9AC00](v53);
    strcpy(&v116 - 48, "title prompt acceptActions declineAction ");
    v138 = MEMORY[0x1E69E6158];
    v139 = MEMORY[0x1E69E6158];
    v133 = v128;
    v134 = v129;
    v135 = v130;
    v136 = v131;
    type metadata accessor for SFAirDrop.AcceptAction(255, &v133);
    v140 = sub_1A9976B60();
    v141 = v127;
    v57 = *(swift_getTupleTypeMetadata() + 80);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1A98CB558(v32 + v57);

      goto LABEL_18;
    }

    v127 = v56;
    v132 = v39;
    v74 = *v37;
    v73 = v37[1];
    v75 = v37[2];
    v76 = v37[3];
    v126 = v37[4];
    v77 = v32 + v57;
    v78 = v124;
    sub_1A98BAA80(v77, v124);
    v79 = v37 + v57;
    v80 = v117;
    sub_1A98BAA80(v79, v117);
    if (v123 == v74 && v54 == v73)
    {

      v48 = v122;
    }

    else
    {
      v86 = sub_1A99777E0();

      v48 = v122;
      if ((v86 & 1) == 0)
      {

        goto LABEL_64;
      }
    }

    if (v121 == v75 && v55 == v76)
    {

      v88 = v130;
      v87 = v131;
      v90 = v128;
      v89 = v129;
LABEL_49:
      v138 = v90;
      v139 = v89;
      v140 = v88;
      v141 = v87;
      type metadata accessor for SFAirDrop.AcceptAction(0, &v138);
      swift_getWitnessTable();
      v108 = sub_1A9976B70();

      v39 = v132;
      if (v108)
      {
        if (*v78 == *v80 && *(v78 + 8) == v80[1] || (sub_1A99777E0() & 1) != 0)
        {
          v93 = *(v78 + 16);
          v94 = *(v78 + 24);
          v95 = *(v78 + 32);
          v96 = *(v78 + 40);
          v97 = *(v78 + 48);
          v138 = v93;
          v139 = v94;
          v140 = v95;
          v141 = v96;
          v142 = v97;
          v98 = v80[2];
          v99 = v80[3];
          v100 = v80[4];
          v103 = v80[5];
          v101 = v80;
          v102 = v78;
LABEL_54:
          v109 = *(v101 + 48);
          v133 = v98;
          v134 = v99;
          v135 = v100;
          v136 = v103;
          v137 = v109;
          sub_1A97DC908(v93, v94, v95, v96, v97);
          v110 = v100;
          v39 = v132;
          sub_1A97DC908(v98, v99, v110, v103, v109);
          v111 = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v138, &v133);
          sub_1A97DC96C(v133, v134, v135, v136, v137);
          sub_1A97DC96C(v138, v139, v140, v141, v142);
          sub_1A98CB558(v101);
          sub_1A98CB558(v102);
          if (v111)
          {
            v71 = 1;
            goto LABEL_20;
          }

LABEL_70:
          v71 = 0;
          goto LABEL_20;
        }

        sub_1A98CB558(v80);
        v115 = v78;
LABEL_69:
        sub_1A98CB558(v115);
        goto LABEL_70;
      }

      sub_1A98CB558(v80);
      v112 = v78;
LABEL_60:
      sub_1A98CB558(v112);
      v71 = 0;
      goto LABEL_20;
    }

    v107 = sub_1A99777E0();

    v88 = v130;
    v87 = v131;
    v90 = v128;
    v89 = v129;
    if (v107)
    {
      goto LABEL_49;
    }

LABEL_64:

    sub_1A98CB558(v80);
    v114 = v78;
    goto LABEL_65;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v58 = (v38)(v27, v36, v23);
    v59 = v27[1];
    v123 = *v27;
    v124 = v59;
    v60 = v27[3];
    v121 = v27[2];
    v61 = v27[4];
    MEMORY[0x1EEE9AC00](v58);
    strcpy(&v116 - 48, "title prompt acceptActions declineAction ");
    v138 = MEMORY[0x1E69E6158];
    v139 = MEMORY[0x1E69E6158];
    v133 = v128;
    v134 = v129;
    v135 = v130;
    v136 = v131;
    type metadata accessor for SFAirDrop.AcceptAction(255, &v133);
    v140 = sub_1A9976B60();
    v141 = v127;
    v62 = *(swift_getTupleTypeMetadata() + 80);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v126 = v60;
      v127 = v61;
      v132 = v39;
      v63 = *v37;
      v64 = v37[1];
      v65 = v37[2];
      v66 = v37[3];
      v125 = v37[4];
      v67 = v27 + v62;
      v68 = v120;
      sub_1A98BAA80(v67, v120);
      v69 = v37 + v62;
      v70 = v119;
      sub_1A98BAA80(v69, v119);
      if (v123 == v63 && v124 == v64)
      {
      }

      else
      {
        v81 = sub_1A99777E0();

        if ((v81 & 1) == 0)
        {

          sub_1A98CB558(v70);
          sub_1A98CB558(v68);
          v71 = 0;
          v48 = v122;
          v39 = v132;
          goto LABEL_20;
        }
      }

      v48 = v122;
      if (v121 == v65 && v126 == v66)
      {

        v83 = v130;
        v82 = v131;
        v85 = v128;
        v84 = v129;
LABEL_33:
        v138 = v85;
        v139 = v84;
        v140 = v83;
        v141 = v82;
        type metadata accessor for SFAirDrop.AcceptAction(0, &v138);
        swift_getWitnessTable();
        v92 = sub_1A9976B70();

        v39 = v132;
        if (v92)
        {
          if (*v68 == *v70 && *(v68 + 8) == v70[1] || (sub_1A99777E0() & 1) != 0)
          {
            v93 = *(v68 + 16);
            v94 = *(v68 + 24);
            v95 = *(v68 + 32);
            v96 = *(v68 + 40);
            v97 = *(v68 + 48);
            v138 = v93;
            v139 = v94;
            v140 = v95;
            v141 = v96;
            v142 = v97;
            v98 = v70[2];
            v99 = v70[3];
            v100 = v70[4];
            v101 = v70;
            v102 = v68;
            v103 = *(v101 + 40);
            goto LABEL_54;
          }

          sub_1A98CB558(v70);
          v115 = v68;
          goto LABEL_69;
        }

        sub_1A98CB558(v70);
        v112 = v68;
        goto LABEL_60;
      }

      v91 = sub_1A99777E0();

      v83 = v130;
      v82 = v131;
      v85 = v128;
      v84 = v129;
      if (v91)
      {
        goto LABEL_33;
      }

      sub_1A98CB558(v70);
      v114 = v68;
LABEL_65:
      sub_1A98CB558(v114);
      goto LABEL_66;
    }

    sub_1A98CB558(v27 + v62);

LABEL_18:

    goto LABEL_19;
  }

  v38(v30, v36, v23);
  v41 = v124;
  v42 = *(swift_getTupleTypeMetadata2() + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v132 = v36;
    v43 = *v30;
    v44 = *v37;
    v45 = *(v123 + 32);
    v46 = &v30[v42];
    v47 = v118;
    v45(v118, v46, v41);
    v45(v121, v37 + v42, v41);
    if (v43)
    {
      v48 = v122;
      if (v43 == 1)
      {
        v49 = 0xE700000000000000;
        v50 = 0x65766965636572;
        v51 = v124;
        if (v44)
        {
          goto LABEL_7;
        }

LABEL_39:
        v52 = 0xE400000000000000;
        if (v50 != 1684956531)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }

      v49 = 0xE800000000000000;
      v50 = 0x6F666E4965726F6DLL;
      v51 = v124;
      if (!v44)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v49 = 0xE400000000000000;
      v50 = 1684956531;
      v48 = v122;
      v51 = v124;
      if (!v44)
      {
        goto LABEL_39;
      }
    }

LABEL_7:
    if (v44 == 1)
    {
      v52 = 0xE700000000000000;
      if (v50 != 0x65766965636572)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v52 = 0xE800000000000000;
      if (v50 != 0x6F666E4965726F6DLL)
      {
LABEL_46:
        v104 = sub_1A99777E0();

        if (v104)
        {
          goto LABEL_47;
        }

        v113 = *(v123 + 8);
        v113(v121, v51);
        v113(v47, v51);
LABEL_66:
        v71 = 0;
        v39 = v132;
        goto LABEL_20;
      }
    }

LABEL_44:
    if (v49 == v52)
    {

LABEL_47:
      v105 = v121;
      v71 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
      v106 = *(v123 + 8);
      v106(v105, v51);
      v106(v47, v51);
      v39 = v132;
      goto LABEL_20;
    }

    goto LABEL_46;
  }

  (*(v123 + 8))(&v30[v42], v41);
LABEL_19:
  v71 = 0;
  v48 = v125;
  v23 = v126;
LABEL_20:
  (*(v48 + 8))(v39, v23);
  return v71 & 1;
}

uint64_t sub_1A98BEEA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726577736E417369 && a2 == 0xEA00000000006465 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4474736575716572 && a2 == 0xEB00000000657461 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7274656D656C6574 && a2 == 0xED00006174614479)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A98BF05C(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 0x4474736575716572;
  v3 = 0x656C797473;
  if (a1 != 3)
  {
    v3 = 0x7274656D656C6574;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x726577736E417369;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A98BF190(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98BF1E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SFAirDrop.PermissionRequest.encode(to:)(void *a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[4];
  v5 = a2[5];
  v15 = a2[3];
  v16 = v3;
  v18 = v3;
  v19 = v15;
  v13 = v5;
  v14 = v4;
  v20 = v4;
  v21 = v5;
  _s17PermissionRequestV10CodingKeysOMa(255, &v18);
  swift_getWitnessTable();
  v6 = sub_1A9977710();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9977AA0();
  LOBYTE(v18) = 0;
  sub_1A99762C0();
  sub_1A98CDB9C(&unk_1EB3ACFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  v10 = v17;
  sub_1A99776E0();
  if (!v10)
  {
    v11 = v16;
    LOBYTE(v18) = 1;
    sub_1A99776A0();
    LOBYTE(v18) = 2;
    sub_1A9976230();
    sub_1A98CDB9C(&qword_1EB3B0C58, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1A99776E0();
    v22 = 3;
    v18 = v11;
    v19 = v15;
    v20 = v14;
    v21 = v13;
    type metadata accessor for SFAirDrop.PermissionRequest.Style(0, &v18);
    swift_getWitnessTable();
    sub_1A99776E0();
    v22 = 4;
    v18 = v11;
    v19 = v15;
    v20 = v14;
    v21 = v13;
    type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData(0, &v18);
    swift_getWitnessTable();
    sub_1A9977680();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t SFAirDrop.PermissionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a6;
  v56 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v42 = type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData(255, &v56);
  v11 = sub_1A99770A0();
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v37 - v12;
  v56 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v13 = type metadata accessor for SFAirDrop.PermissionRequest.Style(0, &v56);
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v37 - v14;
  v47 = sub_1A9976230();
  v50 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1A99762C0();
  v48 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v54 = (&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  _s17PermissionRequestV10CodingKeysOMa(255, &v56);
  swift_getWitnessTable();
  v17 = sub_1A9977630();
  v51 = *(v17 - 8);
  v52 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  v56 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v20 = type metadata accessor for SFAirDrop.PermissionRequest(0, &v56);
  v38 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v55 = v19;
  v23 = v60;
  sub_1A9977A70();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v24 = v49;
  v25 = v50;
  LOBYTE(v56) = 0;
  sub_1A98CDB9C(&qword_1EB3AD060, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v26 = v53;
  sub_1A99775F0();
  (*(v48 + 32))(v22, v54, v26);
  LOBYTE(v56) = 1;
  v27 = sub_1A99775B0();
  v28 = v20[13];
  v60 = v22;
  v22[v28] = v27 & 1;
  LOBYTE(v56) = 2;
  sub_1A98CDB9C(&qword_1EB3B0CE0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v29 = v24;
  v30 = v47;
  sub_1A99775F0();
  v54 = a1;
  (*(v25 + 32))(&v60[v20[14]], v29, v30);
  LOBYTE(v56) = 3;
  v31 = v46;
  swift_getWitnessTable();
  v32 = v44;
  sub_1A99775F0();
  v33 = v60;
  (*(v45 + 32))(&v60[v20[15]], v32, v31);
  LOBYTE(v56) = 4;
  swift_getWitnessTable();
  v34 = v43;
  sub_1A9977590();
  (*(v51 + 8))(v55, v52);
  (*(v39 + 32))(&v33[v20[16]], v34, v40);
  v35 = v38;
  (*(v38 + 16))(v41, v33, v20);
  __swift_destroy_boxed_opaque_existential_0Tm(v54);
  return (*(v35 + 8))(v33, v20);
}

uint64_t SFAirDrop.PermissionRequest.Style.description.getter(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    v10 = *(v3 + 2);
    v9 = *(v3 + 3);

    MEMORY[0x1EEE9AC00](v11);
    strcpy(&v27 - 48, "title prompt acceptActions declineAction ");
    *&v29 = MEMORY[0x1E69E6158];
    *(&v29 + 1) = MEMORY[0x1E69E6158];
    v12 = *(a1 + 32);
    v27 = *(a1 + 16);
    v28 = v12;
    type metadata accessor for SFAirDrop.AcceptAction(255, &v27);
    *&v30 = sub_1A9976B60();
    *(&v30 + 1) = type metadata accessor for SFAirDrop.DeclineAction(255);
    v13 = *(swift_getTupleTypeMetadata() + 80);
    *&v29 = 0x203A74706D6F7270;
    *(&v29 + 1) = 0xE800000000000000;
    MEMORY[0x1AC5895B0](v10, v9);

    v14 = v29;
    v15 = &v3[v13];
LABEL_8:
    sub_1A98CB558(v15);
    return v14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v17 = *v3;
    v16 = *(v3 + 1);
    v19 = *(v3 + 2);
    v18 = *(v3 + 3);

    MEMORY[0x1EEE9AC00](v20);
    strcpy(&v27 - 48, "title prompt acceptActions declineAction ");
    *&v29 = MEMORY[0x1E69E6158];
    *(&v29 + 1) = MEMORY[0x1E69E6158];
    v21 = *(a1 + 32);
    v27 = *(a1 + 16);
    v28 = v21;
    type metadata accessor for SFAirDrop.AcceptAction(255, &v27);
    *&v30 = sub_1A9976B60();
    *(&v30 + 1) = type metadata accessor for SFAirDrop.DeclineAction(255);
    v22 = *(swift_getTupleTypeMetadata() + 80);
    *&v29 = 0x203A7472656C61;
    *(&v29 + 1) = 0xE700000000000000;
    MEMORY[0x1AC5895B0](v17, v16);

    MEMORY[0x1AC5895B0](23328, 0xE200000000000000);
    MEMORY[0x1AC5895B0](v19, v18);

    MEMORY[0x1AC5895B0](93, 0xE100000000000000);
    v14 = v29;
    v15 = &v3[v22];
    goto LABEL_8;
  }

  v6 = *v3;
  *&v29 = 0;
  *(&v29 + 1) = 0xE000000000000000;
  sub_1A99772B0();

  strcpy(&v27, "intervention: ");
  HIBYTE(v27) = -18;
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x657669656365722ELL;
    }

    else
    {
      v7 = 0xE90000000000006FLL;
      v8 = 0x666E4965726F6D2ELL;
    }
  }

  else
  {
    v7 = 0xE500000000000000;
    v8 = 0x646E65732ELL;
  }

  v23 = *(a1 + 32);
  v29 = *(a1 + 16);
  v30 = v23;
  v24 = type metadata accessor for SFAirDrop.PermissionRequest.InterventionAction(255, &v29);
  v25 = *(swift_getTupleTypeMetadata2() + 48);
  MEMORY[0x1AC5895B0](v8, v7);

  v14 = v27;
  (*(*(v24 - 8) + 8))(&v3[v25], v24);
  return v14;
}

uint64_t sub_1A98C023C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E696C6E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65767265746E69 && a2 == 0xEC0000006E6F6974 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7472656C61 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A98C0350(char a1)
{
  if (!a1)
  {
    return 0x656E696C6E69;
  }

  if (a1 == 1)
  {
    return 0x6E65767265746E69;
  }

  return 0x7472656C61;
}

uint64_t sub_1A98C03A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6341747065636361 && a2 == 0xED0000736E6F6974 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x41656E696C636564 && a2 == 0xED00006E6F697463)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A98C0514(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x776F6C666B726F77 && a2 == 0xE800000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1A98C05DC(char a1)
{
  if (a1)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x776F6C666B726F77;
  }
}

uint64_t sub_1A98C064C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t sub_1A98C06A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98C06F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1A98C0778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t sub_1A98C07CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98C0820(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1A98C0874(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98C08C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1A98C09AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98C0A00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SFAirDrop.PermissionRequest.Style.encode(to:)(void *a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v91 = a2[2];
  v4 = v91;
  v92 = v5;
  v93 = v6;
  v94 = v7;
  v65 = _s17PermissionRequestV5StyleO15AlertCodingKeysOMa(255, &v91);
  WitnessTable = swift_getWitnessTable();
  v69 = sub_1A9977710();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = v58 - v8;
  v91 = v4;
  v92 = v5;
  v93 = v6;
  v94 = v7;
  v9 = _s17PermissionRequestV5StyleO22InterventionCodingKeysOMa(255, &v91);
  v10 = swift_getWitnessTable();
  v58[4] = v9;
  v58[3] = v10;
  v63 = sub_1A9977710();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = v58 - v11;
  v91 = v4;
  v92 = v5;
  v93 = v6;
  v94 = v7;
  v61 = type metadata accessor for SFAirDrop.PermissionRequest.InterventionAction(0, &v91);
  v70 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = v58 - v12;
  v91 = v4;
  v92 = v5;
  v93 = v6;
  v94 = v7;
  v13 = _s17PermissionRequestV5StyleO16InlineCodingKeysOMa(255, &v91);
  v14 = swift_getWitnessTable();
  v58[2] = v13;
  v58[1] = v14;
  v79 = sub_1A9977710();
  v66 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v78 = v58 - v15;
  v73 = type metadata accessor for SFAirDrop.DeclineAction(0);
  v16 = MEMORY[0x1EEE9AC00](v73);
  v71 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v72 = v58 - v19;
  v20 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v4;
  v75 = v7;
  v91 = v4;
  v92 = v5;
  v76 = v6;
  v77 = v5;
  v93 = v6;
  v94 = v7;
  _s17PermissionRequestV5StyleO10CodingKeysOMa(255, &v91);
  swift_getWitnessTable();
  v23 = sub_1A9977710();
  v24 = *(v23 - 8);
  v83 = v23;
  v84 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = v58 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v82 = v26;
  sub_1A9977AA0();
  (*(v20 + 16))(v22, v80, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = *v22;
      v29 = v61;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v31 = v70;
      v32 = v59;
      (*(v70 + 32))(v59, &v22[*(TupleTypeMetadata2 + 48)], v29);
      LOBYTE(v91) = 1;
      v33 = v60;
      v35 = v82;
      v34 = v83;
      sub_1A9977640();
      LOBYTE(v91) = v28;
      LOBYTE(v87) = 0;
      sub_1A98A7E54();
      v36 = v63;
      v37 = v81;
      sub_1A99776E0();
      if (v37)
      {
        (*(v62 + 8))(v33, v36);
        (*(v31 + 8))(v32, v29);
      }

      else
      {
        LOBYTE(v91) = 1;
        swift_getWitnessTable();
        sub_1A99776E0();
        (*(v62 + 8))(v33, v36);
        (*(v70 + 8))(v32, v29);
      }

      return (*(v84 + 8))(v35, v34);
    }

    else
    {
      v45 = *(v22 + 3);
      v79 = *(v22 + 2);
      v80 = v45;
      v46 = *(v22 + 4);
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v58[-6], "title prompt acceptActions declineAction ");
      v91 = MEMORY[0x1E69E6158];
      v92 = MEMORY[0x1E69E6158];
      v87 = v74;
      v88 = v77;
      v89 = v76;
      v90 = v75;
      type metadata accessor for SFAirDrop.AcceptAction(255, &v87);
      v93 = sub_1A9976B60();
      v94 = v73;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v48 = v71;
      sub_1A98BAA80(&v22[*(TupleTypeMetadata + 80)], v71);
      LOBYTE(v91) = 2;
      v49 = v67;
      v51 = v82;
      v50 = v83;
      sub_1A9977640();
      LOBYTE(v91) = 0;
      v52 = v69;
      v53 = v81;
      sub_1A9977690();

      if (v53)
      {

        (*(v68 + 8))(v49, v52);
        v54 = v48;
      }

      else
      {
        LOBYTE(v91) = 1;
        sub_1A9977690();

        v87 = v46;
        v95 = 2;
        v91 = v74;
        v92 = v77;
        v93 = v76;
        v94 = v75;
        type metadata accessor for SFAirDrop.AcceptAction(255, &v91);
        sub_1A9976B60();
        v86 = swift_getWitnessTable();
        swift_getWitnessTable();
        sub_1A99776E0();
        v57 = v71;

        LOBYTE(v91) = 3;
        sub_1A98CDB9C(&qword_1EB3B1998, type metadata accessor for SFAirDrop.DeclineAction, &protocol conformance descriptor for SFAirDrop.DeclineAction);
        sub_1A99776E0();
        (*(v68 + 8))(v49, v52);
        v54 = v57;
      }

      sub_1A98CB558(v54);
      return (*(v84 + 8))(v51, v50);
    }
  }

  else
  {
    v80 = *(v22 + 2);
    v38 = *(v22 + 4);
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    strcpy(&v58[-6], "title prompt acceptActions declineAction ");
    v91 = MEMORY[0x1E69E6158];
    v92 = MEMORY[0x1E69E6158];
    v39 = v74;
    v87 = v74;
    v88 = v77;
    v89 = v76;
    v90 = v75;
    type metadata accessor for SFAirDrop.AcceptAction(255, &v87);
    v93 = sub_1A9976B60();
    v94 = v73;
    v40 = swift_getTupleTypeMetadata();
    sub_1A98BAA80(&v22[*(v40 + 80)], v72);
    LOBYTE(v91) = 0;
    v42 = v82;
    v41 = v83;
    sub_1A9977640();
    LOBYTE(v91) = 0;
    v43 = v81;
    sub_1A9977690();
    if (v43)
    {

      (*(v66 + 8))(v78, v79);
      v44 = v72;
    }

    else
    {
      v56 = v72;

      LOBYTE(v91) = 1;
      sub_1A9977690();

      v87 = v38;
      v95 = 2;
      v91 = v39;
      v92 = v77;
      v93 = v76;
      v94 = v75;
      type metadata accessor for SFAirDrop.AcceptAction(255, &v91);
      sub_1A9976B60();
      v85 = swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1A99776E0();

      LOBYTE(v91) = 3;
      sub_1A98CDB9C(&qword_1EB3B1998, type metadata accessor for SFAirDrop.DeclineAction, &protocol conformance descriptor for SFAirDrop.DeclineAction);
      sub_1A99776E0();
      (*(v66 + 8))(v78, v79);
      v44 = v56;
    }

    sub_1A98CB558(v44);
    return (*(v84 + 8))(v42, v41);
  }
}

uint64_t SFAirDrop.PermissionRequest.Style.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v101 = a6;
  *&v131 = a2;
  *(&v131 + 1) = a3;
  *&v132 = a4;
  *(&v132 + 1) = a5;
  v114 = _s17PermissionRequestV5StyleO15AlertCodingKeysOMa(255, &v131);
  WitnessTable = swift_getWitnessTable();
  v107 = sub_1A9977630();
  v108 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v118 = &v96 - v11;
  *&v131 = a2;
  *(&v131 + 1) = a3;
  *&v132 = a4;
  *(&v132 + 1) = a5;
  v12 = _s17PermissionRequestV5StyleO22InterventionCodingKeysOMa(255, &v131);
  v13 = swift_getWitnessTable();
  v112 = v12;
  v111 = v13;
  v104 = sub_1A9977630();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v115 = &v96 - v14;
  *&v131 = a2;
  *(&v131 + 1) = a3;
  *&v132 = a4;
  *(&v132 + 1) = a5;
  v15 = _s17PermissionRequestV5StyleO16InlineCodingKeysOMa(255, &v131);
  v16 = swift_getWitnessTable();
  v110 = v15;
  v109 = v16;
  v106 = sub_1A9977630();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v116 = &v96 - v17;
  *&v131 = a2;
  *(&v131 + 1) = a3;
  *&v132 = a4;
  *(&v132 + 1) = a5;
  _s17PermissionRequestV5StyleO10CodingKeysOMa(255, &v131);
  v124 = swift_getWitnessTable();
  v119 = sub_1A9977630();
  v122 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v19 = &v96 - v18;
  *&v102 = a2;
  *&v131 = a2;
  *(&v131 + 1) = a3;
  *(&v102 + 1) = a3;
  v120 = a5;
  v121 = a4;
  *&v132 = a4;
  *(&v132 + 1) = a5;
  v20 = type metadata accessor for SFAirDrop.PermissionRequest.Style(0, &v131);
  v117 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = (&v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v96 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = (&v96 - v28);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v96 - v30;
  v32 = a1[3];
  v125 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  v123 = v19;
  v33 = v126;
  sub_1A9977A70();
  v126 = v33;
  if (!v33)
  {
    v100 = v26;
    v98 = v23;
    v99 = v29;
    v35 = v120;
    v34 = v121;
    v97 = v31;
    v124 = v20;
    v36 = v119;
    v37 = v123;
    *&v129 = sub_1A9977620();
    sub_1A9976B60();
    swift_getWitnessTable();
    *&v131 = sub_1A99771D0();
    *(&v131 + 1) = v38;
    *&v132 = v39;
    *(&v132 + 1) = v40;
    sub_1A99771C0();
    swift_getWitnessTable();
    sub_1A9976EA0();
    v41 = v129;
    if (v129 == 3 || (v96 = v131, v129 = v131, v130 = v132, (sub_1A9976EF0() & 1) == 0))
    {
      v52 = sub_1A9977300();
      v53 = v37;
      v54 = swift_allocError();
      v56 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
      *v56 = v124;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v52 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8], v52);
      v126 = v54;
      swift_willThrow();
      (*(v122 + 8))(v53, v36);
      goto LABEL_18;
    }

    if (v41)
    {
      if (v41 == 1)
      {
        v42 = v35;
        LOBYTE(v129) = 1;
        v43 = v115;
        v44 = v126;
        sub_1A9977530();
        v45 = v122;
        v46 = v117;
        v126 = v44;
        if (v44)
        {
LABEL_10:
          (*(v45 + 8))(v37, v36);
LABEL_18:
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_0Tm(v125);
        }

        v133 = 0;
        sub_1A98CB62C();
        v47 = v100;
        v48 = v43;
        v49 = v104;
        v50 = v126;
        sub_1A99775F0();
        v126 = v50;
        if (v50 || (v129 = v102, *&v130 = v34, *(&v130 + 1) = v42, type metadata accessor for SFAirDrop.PermissionRequest.InterventionAction(255, &v129), swift_getTupleTypeMetadata2(), LOBYTE(v129) = 1, swift_getWitnessTable(), v51 = v126, sub_1A99775F0(), (v126 = v51) != 0))
        {
          (*(v103 + 8))(v48, v49);
          goto LABEL_10;
        }

        (*(v103 + 8))(v48, v49);
        (*(v45 + 8))(v37, v36);
        swift_unknownObjectRelease();
        v78 = v124;
        swift_storeEnumTagMultiPayload();
        v79 = v47;
        v80 = v101;
LABEL_34:
        v94 = *(v46 + 32);
        v95 = v97;
        v94(v97, v79, v78);
        v94(v80, v95, v78);
        return __swift_destroy_boxed_opaque_existential_0Tm(v125);
      }

      LOBYTE(v129) = 2;
      v59 = v126;
      sub_1A9977530();
      v60 = v122;
      v126 = v59;
      if (!v59)
      {
        LOBYTE(v129) = 0;
        v61 = v107;
        v62 = sub_1A99775A0();
        v126 = 0;
        v72 = v98;
        *v98 = v62;
        v72[1] = v73;
        v116 = v73;
        v74 = v72;
        LOBYTE(v129) = 1;
        v75 = v126;
        v76 = sub_1A99775A0();
        v126 = v75;
        if (v75)
        {
          (*(v108 + 8))(v118, v61);
          (*(v60 + 8))(v37, v36);
          goto LABEL_24;
        }

        v74[2] = v76;
        v74[3] = v77;
        v115 = v77;
        v129 = v102;
        *&v130 = v34;
        *(&v130 + 1) = v35;
        type metadata accessor for SFAirDrop.AcceptAction(255, &v129);
        v88 = sub_1A9976B60();
        v133 = 2;
        v128 = swift_getWitnessTable();
        swift_getWitnessTable();
        v89 = v118;
        v90 = v126;
        v91 = sub_1A99775F0();
        v87 = v90;
        if (v90)
        {
          (*(v108 + 8))(v89, v61);
          (*(v60 + 8))(v123, v36);
          goto LABEL_30;
        }

        MEMORY[0x1EEE9AC00](v91);
        strcpy(&v96 - 48, "title prompt acceptActions declineAction ");
        *&v129 = MEMORY[0x1E69E6158];
        *(&v129 + 1) = MEMORY[0x1E69E6158];
        *&v130 = v88;
        *(&v130 + 1) = type metadata accessor for SFAirDrop.DeclineAction(255);
        swift_getTupleTypeMetadata();
        v93 = v98;
        type metadata accessor for SFAirDrop.DeclineAction(0);
        LOBYTE(v129) = 3;
        sub_1A98CDB9C(&qword_1EB3B1AD0, type metadata accessor for SFAirDrop.DeclineAction, &protocol conformance descriptor for SFAirDrop.DeclineAction);
        sub_1A99775F0();
        v126 = 0;
        (*(v108 + 8))(v89, v61);
        (*(v60 + 8))(v123, v36);
        swift_unknownObjectRelease();
        v78 = v124;
        swift_storeEnumTagMultiPayload();
        v79 = v93;
        goto LABEL_33;
      }
    }

    else
    {
      LOBYTE(v129) = 0;
      v57 = v116;
      v58 = v126;
      sub_1A9977530();
      v126 = v58;
      if (!v58)
      {
        LOBYTE(v129) = 0;
        v63 = v106;
        v64 = sub_1A99775A0();
        v66 = v122;
        v126 = 0;
        v68 = v99;
        *v99 = v64;
        v68[1] = v65;
        v118 = v65;
        LOBYTE(v129) = 1;
        v69 = v126;
        v70 = sub_1A99775A0();
        v126 = v69;
        if (v69)
        {
          (*(v105 + 8))(v57, v63);
          (*(v66 + 8))(v37, v36);
LABEL_24:

          goto LABEL_18;
        }

        v81 = v37;
        v82 = v99;
        v99[2] = v70;
        v82[3] = v71;
        v115 = v71;
        v129 = v102;
        *&v130 = v34;
        *(&v130 + 1) = v35;
        type metadata accessor for SFAirDrop.AcceptAction(255, &v129);
        v83 = sub_1A9976B60();
        v133 = 2;
        v127 = swift_getWitnessTable();
        swift_getWitnessTable();
        v84 = v126;
        v85 = sub_1A99775F0();
        v86 = v63;
        v87 = v84;
        if (v84)
        {
          (*(v105 + 8))(v57, v86);
          (*(v66 + 8))(v81, v36);
LABEL_30:

          swift_unknownObjectRelease();
          v126 = v87;
          return __swift_destroy_boxed_opaque_existential_0Tm(v125);
        }

        MEMORY[0x1EEE9AC00](v85);
        strcpy(&v96 - 48, "title prompt acceptActions declineAction ");
        *&v129 = MEMORY[0x1E69E6158];
        *(&v129 + 1) = MEMORY[0x1E69E6158];
        *&v130 = v83;
        *(&v130 + 1) = type metadata accessor for SFAirDrop.DeclineAction(255);
        swift_getTupleTypeMetadata();
        type metadata accessor for SFAirDrop.DeclineAction(0);
        LOBYTE(v129) = 3;
        sub_1A98CDB9C(&qword_1EB3B1AD0, type metadata accessor for SFAirDrop.DeclineAction, &protocol conformance descriptor for SFAirDrop.DeclineAction);
        v92 = v99;
        sub_1A99775F0();
        v126 = 0;
        v79 = v92;
        (*(v105 + 8))(v57, v86);
        (*(v66 + 8))(v81, v36);
        swift_unknownObjectRelease();
        v78 = v124;
        swift_storeEnumTagMultiPayload();
LABEL_33:
        v80 = v101;
        v46 = v117;
        goto LABEL_34;
      }
    }

    (*(v122 + 8))(v37, v36);
    goto LABEL_18;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v125);
}

uint64_t SFAirDrop.PermissionRequest.defaultDestination.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v52 = a2;
  v53 = v4;
  v54 = v3;
  v55 = v5;
  v56 = v6;
  v7 = type metadata accessor for SFAirDrop.AcceptAction.Single(0, &v53);
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - v9;
  v53 = v4;
  v54 = v3;
  v55 = v5;
  v56 = v6;
  v11 = type metadata accessor for SFAirDrop.AcceptAction(255, &v53);
  v12 = sub_1A99770A0();
  v47 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v49 = &v45 - v14;
  v48 = *(v11 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v45 - v18;
  v51 = v4;
  v53 = v4;
  v54 = v3;
  v55 = v5;
  v56 = v6;
  v20 = type metadata accessor for SFAirDrop.PermissionRequest.Style(0, &v53);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v45 - v22;
  (*(v21 + 16))(&v45 - v22, &v50[*(a1 + 60)], v20);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v21 + 8))(v23, v20);
LABEL_5:
    v30 = v51;
    goto LABEL_6;
  }

  v24 = v47;
  v50 = v10;

  v26 = *(v23 + 4);
  MEMORY[0x1EEE9AC00](v25);
  strcpy(&v45 - 48, "title prompt acceptActions declineAction ");
  v53 = MEMORY[0x1E69E6158];
  v54 = MEMORY[0x1E69E6158];
  v55 = sub_1A9976B60();
  v56 = type metadata accessor for SFAirDrop.DeclineAction(255);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  sub_1A98CB558(&v23[*(TupleTypeMetadata + 80)]);
  v53 = v26;
  sub_1A9976B60();
  swift_getWitnessTable();
  v28 = v49;
  sub_1A9976ED0();
  v29 = v48;
  if ((*(v48 + 48))(v28, 1, v11) == 1)
  {
    (*(v24 + 8))(v49, v12);

    goto LABEL_5;
  }

  v35 = *(v29 + 32);
  v35(v19, v49, v11);

  v36 = v17;
  v35(v17, v19, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v38 = v51;
  if (EnumCaseMultiPayload != 1)
  {
    v39 = sub_1A99762C0();
    v40 = v45;
    v41 = *(swift_getTupleTypeMetadata2() + 48);
    v42 = v46;
    v43 = v50;
    (*(v46 + 32))(v50, v36, v40);
    (*(*(v39 - 8) + 8))(&v36[v41], v39);
    v31 = *(v38 - 8);
    v44 = v52;
    (*(v31 + 16))(v52, &v43[*(v40 + 64)], v38);
    (*(v42 + 8))(v43, v40);
    v33 = v44;
    v32 = 0;
    return (*(v31 + 56))(v33, v32, 1);
  }

  (*(v29 + 8))(v36, v11);
  v30 = v38;
LABEL_6:
  v31 = *(v30 - 8);
  v32 = 1;
  v33 = v52;
  return (*(v31 + 56))(v33, v32, 1);
}

uint64_t SFAirDrop.ButtonConfiguration.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 32))
  {
    if (*(v0 + 32) != 1)
    {
      v6 = v0[2];
      v5 = v0[3];
      v7 = *v0;
      v8 = v0[1];
      sub_1A99772B0();

      strcpy(v10, "symbol+text: ");
      HIWORD(v10[1]) = -4864;
      MEMORY[0x1AC5895B0](v7, v8);
      MEMORY[0x1AC5895B0](2108192, 0xE300000000000000);
      v1 = v6;
      v2 = v5;
      goto LABEL_7;
    }

    v3 = 0x203A6C6F626D7973;
    v4 = 0xE800000000000000;
  }

  else
  {
    v3 = 0x203A74786574;
    v4 = 0xE600000000000000;
  }

  v10[0] = v3;
  v10[1] = v4;
LABEL_7:
  MEMORY[0x1AC5895B0](v1, v2);
  return v10[0];
}

uint64_t SFAirDrop.ButtonConfiguration.localizedTitle.getter()
{
  if (!*(v0 + 32))
  {
    goto LABEL_6;
  }

  if (*(v0 + 32) != 1)
  {
    v0 += 2;
LABEL_6:
    v1 = *v0;

    return v1;
  }

  return 0;
}

uint64_t sub_1A98C31D4()
{
  v1 = 0x6C6F626D7973;
  if (*v0 != 1)
  {
    v1 = 0x65546C6F626D7973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_1A98C3228@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A98CB800(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A98C3250(uint64_t a1)
{
  v2 = sub_1A98CB698();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98C328C(uint64_t a1)
{
  v2 = sub_1A98CB698();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98C32E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x614E6D6574737973 && a2 == 0xEA0000000000656DLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A98C3374(uint64_t a1)
{
  v2 = sub_1A98CB740();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98C33B0(uint64_t a1)
{
  v2 = sub_1A98CB740();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98C33EC()
{
  if (*v0)
  {
    return 0x657A696C61636F6CLL;
  }

  else
  {
    return 0x614E6D6574737973;
  }
}

uint64_t sub_1A98C3438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614E6D6574737973 && a2 == 0xEA0000000000656DLL;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A98C3524(uint64_t a1)
{
  v2 = sub_1A98CB6EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98C3560(uint64_t a1)
{
  v2 = sub_1A98CB6EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98C35C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A98C3650(uint64_t a1)
{
  v2 = sub_1A98CB794();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98C368C(uint64_t a1)
{
  v2 = sub_1A98CB794();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.ButtonConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4598, &qword_1A99A1848);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v29 = v25 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B45A0, &qword_1A99A1850);
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B45A8, &qword_1A99A1858);
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B45B0, &qword_1A99A1860);
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  v14 = v1[1];
  v32 = *v1;
  v33 = v14;
  v15 = v1[2];
  v25[1] = v1[3];
  v25[2] = v15;
  v16 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98CB698();
  sub_1A9977AA0();
  if (!v16)
  {
    v37 = 0;
    sub_1A98CB794();
    v21 = v35;
    sub_1A9977640();
    sub_1A9977690();
    (*(v26 + 8))(v10, v8);
    return (*(v34 + 8))(v13, v21);
  }

  if (v16 == 1)
  {
    v38 = 1;
    sub_1A98CB740();
    v17 = v35;
    sub_1A9977640();
    v18 = v28;
    sub_1A9977690();
    v19 = *(v27 + 8);
    v20 = v7;
LABEL_8:
    v19(v20, v18);
    return (*(v34 + 8))(v13, v17);
  }

  v41 = 2;
  sub_1A98CB6EC();
  v23 = v29;
  v17 = v35;
  sub_1A9977640();
  v40 = 0;
  v18 = v31;
  v24 = v36;
  sub_1A9977690();
  if (!v24)
  {
    v39 = 1;
    sub_1A9977690();
    v19 = *(v30 + 8);
    v20 = v23;
    goto LABEL_8;
  }

  (*(v30 + 8))(v23, v18);
  return (*(v34 + 8))(v13, v17);
}

uint64_t SFAirDrop.ButtonConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B45D8, &qword_1A99A1868);
  v54 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v56 = &v48 - v3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B45E0, &qword_1A99A1870);
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v5 = &v48 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B45E8, &qword_1A99A1878);
  v51 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B45F0, &qword_1A99A1880);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - v11;
  v13 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1A98CB698();
  v14 = v58;
  sub_1A9977A70();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v59);
  }

  v49 = 0;
  v50 = v10;
  v15 = v55;
  v16 = v56;
  v17 = v57;
  v58 = v9;
  v18 = sub_1A9977620();
  v19 = (2 * *(v18 + 16)) | 1;
  v60 = v18;
  v61 = v18 + 32;
  v62 = 0;
  v63 = v19;
  v20 = sub_1A97B297C();
  if (v20 == 3 || v62 != v63 >> 1)
  {
    v24 = sub_1A9977300();
    swift_allocError();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
    *v26 = &type metadata for SFAirDrop.ButtonConfiguration;
    v27 = v58;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    goto LABEL_9;
  }

  v64 = v20;
  if (!v20)
  {
    v65 = 0;
    sub_1A98CB794();
    v27 = v58;
    v29 = v49;
    sub_1A9977530();
    if (!v29)
    {
      v30 = sub_1A99775A0();
      v31 = 0;
      v44 = v43;
      v53 = v30;
      (*(v51 + 8))(v8, v6);
      (*(v50 + 8))(v12, v27);
      swift_unknownObjectRelease();
LABEL_19:
      v47 = 0;
      v38 = v17;
      goto LABEL_20;
    }

LABEL_9:
    (*(v50 + 8))(v12, v27);
    goto LABEL_10;
  }

  if (v20 != 1)
  {
    v65 = 2;
    sub_1A98CB6EC();
    v32 = v16;
    v33 = v58;
    v34 = v49;
    sub_1A9977530();
    if (v34)
    {
      (*(v50 + 8))(v12, v33);
      goto LABEL_10;
    }

    v38 = v17;
    v65 = 0;
    v39 = v52;
    v40 = sub_1A99775A0();
    v41 = v50;
    v53 = v40;
    v55 = v45;
    v65 = 1;
    v31 = sub_1A99775A0();
    v47 = v46;
    (*(v54 + 8))(v32, v39);
    (*(v41 + 8))(v12, v33);
    swift_unknownObjectRelease();
    v44 = v55;
LABEL_20:
    *v38 = v53;
    *(v38 + 8) = v44;
    *(v38 + 16) = v31;
    *(v38 + 24) = v47;
    *(v38 + 32) = v64;
    return __swift_destroy_boxed_opaque_existential_0Tm(v59);
  }

  v65 = 1;
  sub_1A98CB740();
  v21 = v5;
  v22 = v58;
  v23 = v49;
  sub_1A9977530();
  if (!v23)
  {
    v35 = sub_1A99775A0();
    v36 = (v53 + 8);
    v37 = (v50 + 8);
    v44 = v42;
    v53 = v35;
    (*v36)(v21, v15);
    (*v37)(v12, v58);
    swift_unknownObjectRelease();
    v31 = 0;
    goto LABEL_19;
  }

  (*(v50 + 8))(v12, v22);
LABEL_10:
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0Tm(v59);
}

uint64_t SFAirDrop.AcceptAction.Single.id.getter()
{
  v0 = sub_1A98CB91C();

  return v0;
}

void SFAirDrop.AcceptAction.Single.buttonConfiguration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = v6;
  sub_1A97DC908(v2, v3, v4, v5, v6);
}

uint64_t static SFAirDrop.AcceptAction.Single.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = 0, (sub_1A99777E0() & 1) != 0))
  {
    v6 = a1[3];
    v7 = a1[4];
    v8 = a1[5];
    v9 = *(a1 + 48);
    v21 = a1[2];
    v22 = v6;
    v23 = v7;
    v24 = v8;
    v25 = v9;
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    v12 = *(a2 + 32);
    v13 = *(a2 + 40);
    v14 = *(a2 + 48);
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = v14;
    sub_1A97DC908(v21, v6, v7, v8, v9);
    sub_1A97DC908(v10, v11, v12, v13, v14);
    v5 = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v21, &v16);
    sub_1A97DC96C(v16, v17, v18, v19, v20);
    sub_1A97DC96C(v21, v22, v23, v24, v25);
  }

  return v5 & 1;
}

uint64_t SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = *(a3 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  v17 = *(a3 + 16);
  *(a9 + 16) = *a3;
  *(a9 + 32) = v17;
  *(a9 + 48) = v16;
  *(a9 + 49) = a4;
  *(a9 + 50) = a5;
  v26[0] = a10;
  v26[1] = a11;
  v26[2] = a12;
  v26[3] = a13;
  v18 = type metadata accessor for SFAirDrop.AcceptAction.Single(0, v26);
  v19 = *(a10 - 8);
  (*(v19 + 16))(a9 + *(v18 + 64), a6, a10);
  v20 = swift_allocObject();
  v20[2] = a10;
  v20[3] = a11;
  v20[4] = a12;
  v20[5] = a13;
  v20[6] = a7;
  v20[7] = a8;
  v21 = *(v18 + 68);
  v22 = sub_1A984AF04();
  v23 = sub_1A984AF58();
  SFXPCBlock.init(_:)(&unk_1A99A1890, v20, a10, &type metadata for VoidResponse, a11, a12, v22, v23, a9 + v21);
  return (*(v19 + 8))(a6, a10);
}

uint64_t sub_1A98C45A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A98C45C8, 0, 0);
}

uint64_t sub_1A98C45C8()
{
  (*(v0 + 24))(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t SFAirDrop.AcceptAction.Single.accept(with:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A98C4658, 0, 0);
}

uint64_t sub_1A98C4658()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);
  v3 = *(v1 + 16);
  sub_1A98CAB54(v3, v3);
  v4 = *(v3 - 8);
  swift_allocObject();
  v5 = sub_1A9976AE0();
  *(v0 + 88) = v5;
  (*(v4 + 16))(v6, v2, v3);
  sub_1A9976B60();
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  v8 = sub_1A984AF04();
  v9 = sub_1A984AF58();
  v10 = *(v1 + 24);
  *(v0 + 16) = v3;
  *(v0 + 24) = &type metadata for VoidResponse;
  *(v0 + 32) = v10;
  *(v0 + 48) = v8;
  *(v0 + 56) = v9;
  v11 = type metadata accessor for SFXPCBlock(0, v0 + 16);
  *v7 = v0;
  v7[1] = sub_1A98C47FC;

  return SFXPCBlock.dynamicallyCall(withArguments:)(v11, v5, v11);
}

uint64_t sub_1A98C47FC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1A98C4918;
  }

  else
  {

    v2 = sub_1A98A8890;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A98C4918()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A98C497C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A99E6CC0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656E696D6F7270 && a2 == 0xE900000000000074 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6564646968 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x41746C7561666564 && a2 == 0xED0000726577736ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A98C4B88(unsigned __int8 a1)
{
  sub_1A9977980();
  MEMORY[0x1AC58A630](a1);
  return sub_1A99779B0();
}

uint64_t sub_1A98C4BD0(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 0x6E6564646968;
  v3 = 0x41746C7561666564;
  if (a1 != 4)
  {
    v3 = 0x6F6974617265706FLL;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000013;
  if (a1 != 1)
  {
    v4 = 0x6E656E696D6F7270;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A98C4CC8(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void, void, void))
{
  sub_1A9977980();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5]);
  return sub_1A99779B0();
}

uint64_t sub_1A98C4D84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98C4DD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SFAirDrop.AcceptAction.Single.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v24 = *(a2 + 16);
  v27 = v24;
  v28 = v3;
  v22 = v3;
  v23 = *(a2 + 32);
  v29 = v23;
  _s12AcceptActionO6SingleV10CodingKeysOMa(255, &v27);
  swift_getWitnessTable();
  v4 = sub_1A9977710();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = v26;
  sub_1A9977AA0();
  LOBYTE(v27) = 0;
  v9 = v25;
  sub_1A9977690();
  if (v9)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v10 = v24;
  v11 = *(v8 + 24);
  v12 = *(v8 + 32);
  v13 = *(v8 + 40);
  v14 = *(v8 + 48);
  v27 = *(v8 + 16);
  v28 = v11;
  *&v29 = v12;
  *(&v29 + 1) = v13;
  LOBYTE(v30) = v14;
  v32 = 1;
  sub_1A97DC908(v27, v11, v12, v13, v14);
  sub_1A98CBA18();
  sub_1A99776E0();
  sub_1A97DC96C(v27, v28, v29, *(&v29 + 1), v30);
  LOBYTE(v27) = 2;
  sub_1A99776A0();
  LOBYTE(v27) = 3;
  sub_1A99776A0();
  LOBYTE(v27) = 4;
  v15 = v7;
  v16 = v23;
  v17 = v15;
  sub_1A99776E0();
  v32 = 5;
  v18 = sub_1A984AF04();
  v19 = sub_1A984AF58();
  v27 = v10;
  v28 = &type metadata for VoidResponse;
  *&v29 = v22;
  *(&v29 + 1) = v16;
  v30 = v18;
  v31 = v19;
  type metadata accessor for SFXPCBlock(0, &v27);
  swift_getWitnessTable();
  sub_1A99776E0();
  return (*(v5 + 8))(v17, v4);
}

void SFAirDrop.AcceptAction.Single.init(from:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a6;
  *&v44 = a2;
  *(&v44 + 1) = &type metadata for VoidResponse;
  *&v45 = a3;
  *(&v45 + 1) = a4;
  v46 = sub_1A984AF04();
  v47 = sub_1A984AF58();
  v11 = type metadata accessor for SFXPCBlock(0, &v44);
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v35 = &v30 - v13;
  v36 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v44 = a2;
  *(&v44 + 1) = a3;
  *&v45 = a4;
  *(&v45 + 1) = a5;
  _s12AcceptActionO6SingleV10CodingKeysOMa(255, &v44);
  swift_getWitnessTable();
  v41 = sub_1A9977630();
  v37 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v16 = &v30 - v15;
  *&v44 = a2;
  *(&v44 + 1) = a3;
  v39 = a3;
  *&v45 = a4;
  *(&v45 + 1) = a5;
  v17 = type metadata accessor for SFAirDrop.AcceptAction.Single(0, &v44);
  v31 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  v20 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v40 = v16;
  v21 = v42;
  sub_1A9977A70();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
  }

  else
  {
    v22 = v38;
    v23 = v37;
    LOBYTE(v44) = 0;
    *v19 = sub_1A99775A0();
    *(v19 + 1) = v24;
    v48 = 1;
    sub_1A98CBA6C();
    sub_1A99775F0();
    v25 = v46;
    v26 = v45;
    *(v19 + 1) = v44;
    *(v19 + 2) = v26;
    v19[48] = v25;
    LOBYTE(v44) = 2;
    v19[49] = sub_1A99775B0() & 1;
    LOBYTE(v44) = 3;
    v19[50] = sub_1A99775B0() & 1;
    LOBYTE(v44) = 4;
    sub_1A99775F0();
    (*(v36 + 32))(&v19[*(v17 + 64)], v22, a2);
    LOBYTE(v44) = 5;
    v27 = v34;
    swift_getWitnessTable();
    v28 = v35;
    sub_1A99775F0();
    (*(v23 + 8))(v40, v41);
    (*(v33 + 32))(&v19[*(v17 + 68)], v28, v27);
    v29 = v31;
    (*(v31 + 16))(v32, v19, v17);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    (*(v29 + 8))(v19, v17);
  }
}

uint64_t sub_1A98C5780@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A98CB91C();
  a1[1] = v2;
}

void SFAirDrop.AcceptAction.Composite.buttonConfiguration.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  sub_1A97DC908(v2, v3, v4, v5, v6);
}

__n128 SFAirDrop.AcceptAction.Composite.init(buttonConfiguration:actions:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v3;
  *(a3 + 40) = a2;
  return result;
}

uint64_t static SFAirDrop.AcceptAction.Composite.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = *(a1 + 32);
  v18 = *(a2 + 32);
  v27 = *a1;
  v28 = v10;
  v29 = v11;
  v30 = v12;
  v31 = v17;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v26 = v18;
  sub_1A97DC908(v27, v10, v11, v12, v17);
  sub_1A97DC908(v13, v14, v15, v16, v18);
  v19 = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v27, &v22);
  sub_1A97DC96C(v22, v23, v24, v25, v26);
  sub_1A97DC96C(v27, v28, v29, v30, v31);
  if (v19)
  {
    v27 = a3;
    v28 = a4;
    v29 = a5;
    v30 = a6;
    type metadata accessor for SFAirDrop.AcceptAction.Single(0, &v27);
    swift_getWitnessTable();
    v20 = sub_1A9976B70();
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1A98C5938(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001A99E6CC0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v5 = sub_1A99777E0();

    if (v5)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1A98C5A10(char a1)
{
  if (a1)
  {
    return 0x736E6F69746361;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1A98C5AA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98C5AF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SFAirDrop.AcceptAction.Composite.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[4];
  v6 = a2[5];
  v24 = a2[3];
  v25 = v4;
  v33 = v4;
  v34 = v24;
  v22 = v6;
  v23 = v5;
  v35 = v5;
  v36 = v6;
  _s12AcceptActionO9CompositeV10CodingKeysOMa(255, &v33);
  WitnessTable = swift_getWitnessTable();
  v27 = sub_1A9977710();
  v29 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v20 - v7;
  v9 = *v2;
  v10 = *(v2 + 8);
  v12 = *(v2 + 16);
  v11 = *(v2 + 24);
  v21 = *(v2 + 40);
  v13 = a1;
  v14 = a1[3];
  v26 = v13[4];
  v15 = *(v2 + 32);
  __swift_project_boxed_opaque_existential_1(v13, v14);
  sub_1A97DC908(v9, v10, v12, v11, v15);
  v16 = v27;
  sub_1A9977AA0();
  v33 = v9;
  v34 = v10;
  v35 = v12;
  v36 = v11;
  v37 = v15;
  LOBYTE(v38) = 0;
  sub_1A98CBA18();
  v17 = v30;
  sub_1A99776E0();
  if (v17)
  {
    sub_1A97DC96C(v33, v34, v35, v36, v37);
    return (*(v29 + 8))(v8, v16);
  }

  else
  {
    v19 = v29;
    sub_1A97DC96C(v33, v34, v35, v36, v37);
    v38 = v21;
    v32 = 1;
    v33 = v25;
    v34 = v24;
    v35 = v23;
    v36 = v22;
    type metadata accessor for SFAirDrop.AcceptAction.Single(255, &v33);
    sub_1A9976B60();
    v31 = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1A99776E0();
    return (*(v19 + 8))(v8, v16);
  }
}

void SFAirDrop.AcceptAction.Composite.init(from:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v29 = a6;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v31 = a5;
  _s12AcceptActionO9CompositeV10CodingKeysOMa(255, &v35);
  swift_getWitnessTable();
  v32 = sub_1A9977630();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v33;
  sub_1A9977A70();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v13 = a3;
    v33 = a1;
    v15 = v30;
    v14 = v31;
    LOBYTE(v40) = 0;
    sub_1A98CBA6C();
    v16 = v32;
    sub_1A99775F0();
    v24 = v35;
    v25 = v36;
    v27 = v37;
    v28 = v38;
    v26 = v39;
    v35 = a2;
    v36 = v13;
    v37 = a4;
    v38 = v14;
    type metadata accessor for SFAirDrop.AcceptAction.Single(255, &v35);
    sub_1A9976B60();
    LOBYTE(v35) = 1;
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1A99775F0();
    (*(v15 + 8))(v11, v16);
    v17 = v40;
    v18 = v28;
    v19 = v29;
    v21 = v24;
    v20 = v25;
    *v29 = v24;
    v19[1] = v20;
    v22 = v27;
    v19[2] = v27;
    v19[3] = v18;
    v23 = v26;
    *(v19 + 32) = v26;
    v19[5] = v17;
    sub_1A97DC908(v21, v20, v22, v18, v23);

    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    sub_1A97DC96C(v21, v20, v22, v18, v23);
  }
}

uint64_t SFAirDrop.AcceptAction.id.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A97DC96C(*v5, *(v5 + 1), *(v5 + 2), *(v5 + 3), v5[32]);

    v7 = *(a1 + 32);
    v15 = *(a1 + 16);
    v16 = v7;
    type metadata accessor for SFAirDrop.AcceptAction.Composite(255, &v15);
    v8 = sub_1A99762C0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(v8 - 8) + 32))(a2, &v5[*(TupleTypeMetadata2 + 48)], v8);
  }

  else
  {
    v11 = *(a1 + 32);
    v15 = *(a1 + 16);
    v16 = v11;
    v12 = type metadata accessor for SFAirDrop.AcceptAction.Single(255, &v15);
    v13 = sub_1A99762C0();
    v14 = swift_getTupleTypeMetadata2();
    (*(*(v13 - 8) + 32))(a2, &v5[*(v14 + 48)], v13);
    return (*(*(v12 - 8) + 8))(v5, v12);
  }
}

uint64_t SFAirDrop.AcceptAction.hidden.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 32);
  v17[0] = *(a1 + 16);
  v17[1] = v4;
  v5 = type metadata accessor for SFAirDrop.AcceptAction.Single(0, v17);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v2, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 8))(v12, a1);
    return 0;
  }

  else
  {
    v14 = sub_1A99762C0();
    v15 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v6 + 32))(v9, v12, v5);
    v13 = v9[50];
    (*(v6 + 8))(v9, v5);
    (*(*(v14 - 8) + 8))(&v12[v15], v14);
  }

  return v13;
}

uint64_t static SFAirDrop.AcceptAction.== infix(_:_:)(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v92 = a1;
  v93 = a2;
  v10 = sub_1A99762C0();
  v94 = *(v10 - 8);
  v95 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v84 = &v74[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v85 = &v74[-v14];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v81 = &v74[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v74[-v17];
  v99 = a3;
  v100 = a4;
  v101 = a5;
  v102 = a6;
  v87 = type metadata accessor for SFAirDrop.AcceptAction.Single(0, &v99);
  v18 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v20 = &v74[-v19];
  v88 = a3;
  v89 = a4;
  v99 = a3;
  v100 = a4;
  v90 = a5;
  v91 = a6;
  v101 = a5;
  v102 = a6;
  v21 = type metadata accessor for SFAirDrop.AcceptAction(0, &v99);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v74[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v74[-v26];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v82 = *(TupleTypeMetadata2 - 8);
  v29 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v31 = &v74[-v30];
  v32 = &v74[*(v29 + 48) - v30];
  v83 = v22;
  v33 = *(v22 + 16);
  v33(&v74[-v30], v92, v21);
  v33(v32, v93, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33(v25, v31, v21);
    v34 = v25[1];
    v86 = *v25;
    v87 = v34;
    v35 = v25[3];
    v92 = v25[2];
    v93 = v35;
    v36 = *(v25 + 32);
    v37 = v25[5];
    v99 = v88;
    v100 = v89;
    v101 = v90;
    v102 = v91;
    type metadata accessor for SFAirDrop.AcceptAction.Composite(255, &v99);
    v38 = v95;
    v39 = *(swift_getTupleTypeMetadata2() + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = v32[1];
      v79 = *v32;
      v78 = v40;
      v41 = v32[3];
      v77 = v32[2];
      v76 = v41;
      v82 = v32[5];
      v81 = v37;
      v42 = v36;
      LODWORD(v80) = v36;
      v43 = *(v94 + 32);
      v75 = *(v32 + 32);
      v43(v85, v25 + v39, v38);
      v43(v84, v32 + v39, v38);
      v44 = v86;
      v45 = v87;
      v99 = v86;
      v100 = v87;
      v101 = v92;
      v102 = v93;
      v103 = v42;
      v104 = v37;
      v46 = v79;
      v47 = v78;
      v96[0] = v79;
      v96[1] = v78;
      v48 = v77;
      v49 = v76;
      v96[2] = v77;
      v96[3] = v76;
      LOBYTE(v43) = v75;
      v97 = v75;
      v98 = v82;
      LODWORD(v91) = static SFAirDrop.AcceptAction.Composite.== infix(_:_:)(&v99, v96, v88, v89, v90, v91);
      sub_1A97DC96C(v46, v47, v48, v49, v43);

      sub_1A97DC96C(v44, v45, v92, v93, v80);

      if (v91)
      {
        v50 = v85;
        v51 = v84;
        v52 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
        v53 = *(v94 + 8);
        v54 = v51;
        v55 = v95;
        v53(v54, v95);
        v53(v50, v55);
LABEL_14:
        v59 = v83;
        goto LABEL_15;
      }

      v70 = v95;
      v71 = *(v94 + 8);
      v71(v84, v95);
      v71(v85, v70);
      goto LABEL_13;
    }

    (*(v94 + 8))(v25 + v39, v38);
    sub_1A97DC96C(v86, v87, v92, v93, v36);
  }

  else
  {
    v33(v27, v31, v21);
    v56 = v87;
    v57 = v95;
    v58 = *(swift_getTupleTypeMetadata2() + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v80 = v18;
      (*(v18 + 32))(v20, v32, v56);
      v60 = v94;
      v61 = *(v94 + 32);
      v61(v86, v27 + v58, v57);
      v62 = v32 + v58;
      v63 = v81;
      v61(v81, v62, v57);
      v64 = v80;
      v93 = v20;
      v65 = v20;
      v66 = v87;
      v67 = static SFAirDrop.AcceptAction.Single.== infix(_:_:)(v27, v65);
      v68 = *(v64 + 8);
      v68(v27, v66);
      if (v67)
      {
        v52 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
        v69 = *(v60 + 8);
        v69(v63, v57);
        v69(v86, v57);
        v68(v93, v66);
        goto LABEL_14;
      }

      v72 = *(v60 + 8);
      v72(v63, v57);
      v72(v86, v57);
      v68(v93, v66);
LABEL_13:
      v52 = 0;
      goto LABEL_14;
    }

    (*(v94 + 8))(v27 + v58, v57);
    (*(v18 + 8))(v27, v56);
  }

  v52 = 0;
  v59 = v82;
  v21 = TupleTypeMetadata2;
LABEL_15:
  (*(v59 + 8))(v31, v21);
  return v52 & 1;
}

uint64_t sub_1A98C6DDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C676E6973 && a2 == 0xE600000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7469736F706D6F63 && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1A98C6EAC(char a1)
{
  if (a1)
  {
    return 0x7469736F706D6F63;
  }

  else
  {
    return 0x656C676E6973;
  }
}

uint64_t sub_1A98C6EE4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 1;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1A98C6FE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98C7034(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1A98C70A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98C70F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1A98C7148(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98C719C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SFAirDrop.AcceptAction.encode(to:)(void *a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v69 = a2[2];
  v4 = v69;
  v70 = v5;
  v71 = v6;
  v72 = v7;
  v54 = _s12AcceptActionO19CompositeCodingKeysOMa(255, &v69);
  WitnessTable = swift_getWitnessTable();
  v65 = sub_1A9977710();
  v56 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = v46 - v8;
  v69 = v4;
  v70 = v5;
  v71 = v6;
  v72 = v7;
  v9 = _s12AcceptActionO16SingleCodingKeysOMa(255, &v69);
  v10 = swift_getWitnessTable();
  v46[2] = v9;
  v46[1] = v10;
  v55 = sub_1A9977710();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v51 = v46 - v11;
  v12 = sub_1A99762C0();
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v63 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v62 = v46 - v15;
  v69 = v4;
  v70 = v5;
  v71 = v6;
  v72 = v7;
  v46[0] = type metadata accessor for SFAirDrop.AcceptAction.Single(0, &v69);
  v59 = *(v46[0] - 8);
  v16 = MEMORY[0x1EEE9AC00](v46[0]);
  v58 = v46 - v17;
  v18 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v4;
  v69 = v4;
  v70 = v5;
  v49 = v5;
  v48 = v6;
  v71 = v6;
  v72 = v7;
  v47 = v7;
  _s12AcceptActionO10CodingKeysOMa(255, &v69);
  swift_getWitnessTable();
  v66 = sub_1A9977710();
  v61 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v22 = v46 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9977AA0();
  (*(v18 + 16))(v20, v57, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *(v20 + 1);
    v62 = *v20;
    v55 = v23;
    v24 = *(v20 + 2);
    v53 = *(v20 + 3);
    v25 = v20[32];
    v26 = *(v20 + 5);
    v69 = v50;
    v70 = v49;
    v71 = v48;
    v72 = v47;
    type metadata accessor for SFAirDrop.AcceptAction.Composite(255, &v69);
    v27 = v68;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(v67 + 32))(v63, &v20[*(TupleTypeMetadata2 + 48)], v27);
    LOBYTE(v69) = 1;
    v29 = v66;
    sub_1A9977640();
    v30 = v55;
    v69 = v62;
    v70 = v55;
    v58 = v24;
    v71 = v24;
    v31 = v53;
    v72 = v53;
    LODWORD(v57) = v25;
    v73 = v25;
    v59 = v26;
    v74 = v26;
    v75 = 0;
    swift_getWitnessTable();
    v32 = v60;
    sub_1A99776E0();
    if (v32)
    {
      (*(v56 + 8))(v64, v65);
      (*(v67 + 8))(v63, v68);
      (*(v61 + 8))(v22, v29);
      sub_1A97DC96C(v62, v30, v58, v31, v57);
    }

    else
    {
      v60 = v22;
      v43 = v67;
      sub_1A97DC96C(v62, v30, v58, v31, v57);

      LOBYTE(v69) = 1;
      sub_1A98CDB9C(&unk_1EB3ACFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
      v44 = v68;
      sub_1A99776E0();
      (*(v56 + 8))(v64, v65);
      (*(v43 + 8))(v63, v44);
      return (*(v61 + 8))(v60, v66);
    }
  }

  else
  {
    v34 = v46[0];
    v35 = v68;
    v36 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v59 + 32))(v58, v20, v34);
    v37 = v67;
    (*(v67 + 32))(v62, &v20[v36], v35);
    LOBYTE(v69) = 0;
    v38 = v51;
    v39 = v66;
    sub_1A9977640();
    LOBYTE(v69) = 0;
    swift_getWitnessTable();
    v40 = v55;
    v41 = v60;
    sub_1A99776E0();
    v42 = v37;
    if (v41)
    {
      (*(v53 + 8))(v38, v40);
      (*(v37 + 8))(v62, v68);
    }

    else
    {
      LOBYTE(v69) = 1;
      sub_1A98CDB9C(&unk_1EB3ACFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
      v45 = v68;
      sub_1A99776E0();
      (*(v53 + 8))(v38, v40);
      (*(v42 + 8))(v62, v45);
    }

    (*(v59 + 8))(v58, v34);
    return (*(v61 + 8))(v22, v39);
  }
}

uint64_t SFAirDrop.AcceptAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v77 = a1;
  v55 = a6;
  *&v75 = a2;
  *(&v75 + 1) = a3;
  *&v76 = a4;
  *(&v76 + 1) = a5;
  v10 = _s12AcceptActionO19CompositeCodingKeysOMa(255, &v75);
  WitnessTable = swift_getWitnessTable();
  v63 = v10;
  v59 = sub_1A9977630();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v65 = &v50 - v11;
  *&v75 = a2;
  *(&v75 + 1) = a3;
  *&v76 = a4;
  *(&v76 + 1) = a5;
  v12 = _s12AcceptActionO16SingleCodingKeysOMa(255, &v75);
  v13 = swift_getWitnessTable();
  v61 = v12;
  v60 = v13;
  v57 = sub_1A9977630();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v64 = &v50 - v14;
  *&v75 = a2;
  *(&v75 + 1) = a3;
  *&v76 = a4;
  *(&v76 + 1) = a5;
  _s12AcceptActionO10CodingKeysOMa(255, &v75);
  swift_getWitnessTable();
  v68 = sub_1A9977630();
  v71 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v16 = &v50 - v15;
  *&v66 = a2;
  *(&v66 + 1) = a3;
  *&v75 = a2;
  *(&v75 + 1) = a3;
  v69 = a4;
  v70 = a5;
  *&v76 = a4;
  *(&v76 + 1) = a5;
  v17 = type metadata accessor for SFAirDrop.AcceptAction(0, &v75);
  v54 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v50 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v50 - v24;
  __swift_project_boxed_opaque_existential_1(v77, v77[3]);
  v67 = v16;
  v26 = v72;
  sub_1A9977A70();
  if (!v26)
  {
    v52 = v20;
    v53 = v23;
    v28 = v69;
    v27 = v70;
    v51 = v25;
    v72 = v17;
    v30 = v67;
    v29 = v68;
    *&v73 = sub_1A9977620();
    sub_1A9976B60();
    swift_getWitnessTable();
    *&v75 = sub_1A99771D0();
    *(&v75 + 1) = v31;
    *&v76 = v32;
    *(&v76 + 1) = v33;
    sub_1A99771C0();
    swift_getWitnessTable();
    sub_1A9976EA0();
    v34 = v73;
    if (v73 == 2 || (v50 = v75, v73 = v75, v74 = v76, (sub_1A9976EF0() & 1) == 0))
    {
      v39 = sub_1A9977300();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
      *v41 = v72;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
      swift_willThrow();
      (*(v71 + 8))(v30, v29);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v34)
      {
        LOBYTE(v73) = 1;
        v35 = v65;
        sub_1A9977530();
        v73 = v66;
        *&v74 = v28;
        *(&v74 + 1) = v27;
        type metadata accessor for SFAirDrop.AcceptAction.Composite(0, &v73);
        v36 = v35;
        LOBYTE(v73) = 0;
        swift_getWitnessTable();
        v37 = v52;
        v38 = v59;
        sub_1A99775F0();
        sub_1A99762C0();
        swift_getTupleTypeMetadata2();
        LOBYTE(v73) = 1;
        sub_1A98CDB9C(&qword_1EB3AD060, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
        sub_1A99775F0();
        v45 = v71;
        (*(v58 + 8))(v36, v38);
        (*(v45 + 8))(v30, v29);
      }

      else
      {
        LOBYTE(v73) = 0;
        v42 = v64;
        sub_1A9977530();
        v73 = v66;
        *&v74 = v28;
        *(&v74 + 1) = v27;
        type metadata accessor for SFAirDrop.AcceptAction.Single(0, &v73);
        LOBYTE(v73) = 0;
        swift_getWitnessTable();
        v37 = v53;
        v43 = v57;
        sub_1A99775F0();
        sub_1A99762C0();
        swift_getTupleTypeMetadata2();
        LOBYTE(v73) = 1;
        sub_1A98CDB9C(&qword_1EB3AD060, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
        sub_1A99775F0();
        v46 = v71;
        (*(v56 + 8))(v42, v43);
        (*(v46 + 8))(v30, v29);
      }

      swift_unknownObjectRelease();
      v47 = v72;
      swift_storeEnumTagMultiPayload();
      v48 = v51;
      v49 = *(v54 + 32);
      v49(v51, v37, v47);
      v49(v55, v48, v47);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v77);
}

uint64_t SFAirDrop.DeclineAction.id.getter()
{
  v1 = *v0;

  return v1;
}

void SFAirDrop.DeclineAction.buttonConfiguration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = v6;
  sub_1A97DC908(v2, v3, v4, v5, v6);
}

uint64_t SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *(a3 + 32);
  *a7 = a1;
  *(a7 + 8) = a2;
  v11 = *(a3 + 16);
  *(a7 + 16) = *a3;
  *(a7 + 32) = v11;
  *(a7 + 48) = v10;
  *(a7 + 49) = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v13 = a7 + *(type metadata accessor for SFAirDrop.DeclineAction(0) + 28);
  sub_1A99762B0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F38, &unk_1A99A17F0);
  v15 = (v13 + *(result + 68));
  *v15 = &unk_1A99A18A8;
  v15[1] = v12;
  return result;
}

uint64_t sub_1A98C86CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A98C86EC, 0, 0);
}

uint64_t sub_1A98C86EC()
{
  (*(v0 + 16))();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1A98C8754()
{
  v1 = 25705;
  v2 = 0x6E6564646968;
  if (*v0 != 2)
  {
    v2 = 0x6F6974617265706FLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A98C87C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A98CDA34(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A98C87F0(uint64_t a1)
{
  v2 = sub_1A98CBBEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98C882C(uint64_t a1)
{
  v2 = sub_1A98CBBEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.DeclineAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4608, &qword_1A99A18B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98CBBEC();
  sub_1A9977AA0();
  LOBYTE(v15) = 0;
  sub_1A9977690();
  if (!v2)
  {
    v9 = *(v3 + 24);
    v10 = *(v3 + 32);
    v11 = *(v3 + 40);
    v12 = *(v3 + 48);
    v15 = *(v3 + 16);
    v16 = v9;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    v20 = 1;
    sub_1A97DC908(v15, v9, v10, v11, v12);
    sub_1A98CBA18();
    sub_1A99776E0();
    sub_1A97DC96C(v15, v16, v17, v18, v19);
    LOBYTE(v15) = 2;
    sub_1A99776A0();
    type metadata accessor for SFAirDrop.DeclineAction(0);
    LOBYTE(v15) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F38, &unk_1A99A17F0);
    sub_1A97AF974(&qword_1EB3B4618, &qword_1EB3B2F38, &unk_1A99A17F0, &protocol conformance descriptor for SFXPCBlock<A, B>);
    sub_1A99776E0();
  }

  return (*(v6 + 8))(v8, v5);
}

void SFAirDrop.DeclineAction.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F38, &unk_1A99A17F0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4620, &qword_1A99A18B8);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - v7;
  v9 = type metadata accessor for SFAirDrop.DeclineAction(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98CBBEC();
  v25 = v8;
  v12 = v26;
  sub_1A9977A70();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v26 = v9;
    v13 = a1;
    v14 = v5;
    v15 = v23;
    v16 = v24;
    LOBYTE(v27) = 0;
    *v11 = sub_1A99775A0();
    *(v11 + 1) = v17;
    v21[2] = v17;
    v30 = 1;
    sub_1A98CBA6C();
    sub_1A99775F0();
    v18 = v29;
    v19 = v28;
    *(v11 + 1) = v27;
    *(v11 + 2) = v19;
    v11[48] = v18;
    LOBYTE(v27) = 2;
    v20 = sub_1A99775B0();
    v21[1] = 0;
    v11[49] = v20 & 1;
    LOBYTE(v27) = 3;
    sub_1A97AF974(&qword_1EB3B4628, &qword_1EB3B2F38, &unk_1A99A17F0, &protocol conformance descriptor for SFXPCBlock<A, B>);
    sub_1A99775F0();
    (*(v15 + 8))(v25, v16);
    sub_1A97D8380(v14, &v11[*(v26 + 28)], &qword_1EB3B2F38, &unk_1A99A17F0);
    sub_1A98CBC40(v11, v22);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    sub_1A98CB558(v11);
  }
}

uint64_t sub_1A98C8EC4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t SFAirDrop.PermissionRequest.InterventionAction.init(id:operation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = sub_1A99762C0();
  v16 = *(v15 - 8);
  (*(v16 + 16))(a8, a1, v15);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v22[0] = a4;
  v22[1] = a5;
  v22[2] = a6;
  v22[3] = a7;
  v18 = a8 + *(type metadata accessor for SFAirDrop.PermissionRequest.InterventionAction(0, v22) + 52);
  sub_1A99762B0();
  (*(v16 + 8))(a1, v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F40, &qword_1A9999480);
  v20 = (v18 + *(result + 68));
  *v20 = &unk_1A99A18C8;
  v20[1] = v17;
  return result;
}

uint64_t sub_1A98C9030(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  *(v4 + 32) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1A98C9058, 0, 0);
}

uint64_t sub_1A98C9058()
{
  v5 = v0;
  v1 = *(v0 + 16);
  v4 = *(v0 + 32);
  v1(&v4);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A98C90CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL)
  {

    return 1;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1A98C9198(char a1)
{
  if (a1)
  {
    return 0x6F6974617265706FLL;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1A98C91F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98C924C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SFAirDrop.PermissionRequest.InterventionAction.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v11[1] = a2;
  v12[0] = v3;
  v12[1] = v4;
  _s17PermissionRequestV18InterventionActionV10CodingKeysOMa(255, v12);
  swift_getWitnessTable();
  v5 = sub_1A9977710();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9977AA0();
  LOBYTE(v12[0]) = 0;
  sub_1A99762C0();
  sub_1A98CDB9C(&unk_1EB3ACFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  v9 = v13;
  sub_1A99776E0();
  if (!v9)
  {
    LOBYTE(v12[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F40, &qword_1A9999480);
    sub_1A97AF974(&qword_1EB3B4630, &qword_1EB3B2F40, &qword_1A9999480, &protocol conformance descriptor for SFXPCBlock<A, B>);
    sub_1A99776E0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SFAirDrop.PermissionRequest.InterventionAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a6;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F40, &qword_1A9999480);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v30 - v11;
  v40 = sub_1A99762C0();
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v38 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  _s17PermissionRequestV18InterventionActionV10CodingKeysOMa(255, &v42);
  swift_getWitnessTable();
  v41 = sub_1A9977630();
  v35 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v14 = &v30 - v13;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v15 = type metadata accessor for SFAirDrop.PermissionRequest.InterventionAction(0, &v42);
  v32 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v39 = v14;
  v18 = v46;
  sub_1A9977A70();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v46 = v15;
  v19 = v35;
  v20 = v36;
  v21 = v37;
  LOBYTE(v42) = 0;
  sub_1A98CDB9C(&qword_1EB3AD060, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v23 = v38;
  v22 = v39;
  v24 = v40;
  sub_1A99775F0();
  v25 = *(v20 + 32);
  v31 = v17;
  v25(v17, v23, v24);
  LOBYTE(v42) = 1;
  sub_1A97AF974(qword_1EB3B4638, &qword_1EB3B2F40, &qword_1A9999480, &protocol conformance descriptor for SFXPCBlock<A, B>);
  sub_1A99775F0();
  (*(v19 + 8))(v22, v41);
  v26 = v46;
  v27 = v31;
  sub_1A97D8380(v21, &v31[*(v46 + 52)], &qword_1EB3B2F40, &qword_1A9999480);
  v28 = v32;
  (*(v32 + 16))(v33, v27, v26);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return (*(v28 + 8))(v27, v26);
}

uint64_t SFAirDrop.PermissionRequest.TelemetryData.init(id:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_1A99762C0();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  result = type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData(0, v16);
  *(a7 + *(result + 52)) = a2;
  return result;
}

uint64_t static SFAirDrop.PermissionRequest.TelemetryData.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0())
  {
    v15[0] = a3;
    v15[1] = a4;
    v15[2] = a5;
    v15[3] = a6;
    v12 = type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData(0, v15);
    v13 = sub_1A98BB25C(*(a1 + *(v12 + 52)), *(a2 + *(v12 + 52)));
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1A98C9AE4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1A98C9BA4(char a1)
{
  sub_1A9977980();
  MEMORY[0x1AC58A630](a1 & 1);
  return sub_1A99779B0();
}

uint64_t sub_1A98C9BEC(char a1)
{
  if (a1)
  {
    return 0x736D657469;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1A98C9C50(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void, void, void))
{
  sub_1A9977980();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5]);
  return sub_1A99779B0();
}

uint64_t sub_1A98C9CF8@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t sub_1A98C9D34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98C9D88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SFAirDrop.PermissionRequest.TelemetryData.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v13[0] = *(a2 + 16);
  v13[1] = v4;
  _s17PermissionRequestV13TelemetryDataV10CodingKeysOMa(255, v13);
  swift_getWitnessTable();
  v5 = sub_1A9977710();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = v12[0];
  sub_1A9977AA0();
  LOBYTE(v13[0]) = 0;
  sub_1A99762C0();
  sub_1A98CDB9C(&unk_1EB3ACFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  v10 = v12[1];
  sub_1A99776E0();
  if (!v10)
  {
    *&v13[0] = *(v9 + *(a2 + 52));
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3520, &qword_1A99A18D0);
    sub_1A986DDA0(&qword_1EB3B3528, sub_1A986DC08, MEMORY[0x1E69E64F0]);
    sub_1A99776E0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SFAirDrop.PermissionRequest.TelemetryData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a6;
  v34 = sub_1A99762C0();
  v31 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v32 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a2;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  _s17PermissionRequestV13TelemetryDataV10CodingKeysOMa(255, &v37);
  swift_getWitnessTable();
  v35 = sub_1A9977630();
  v30 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v13 = &v27 - v12;
  v37 = a2;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v14 = type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData(0, &v37);
  v28 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v33 = v13;
  v17 = v36;
  sub_1A9977A70();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v36 = a1;
  v18 = v16;
  v27 = v14;
  v19 = v30;
  v20 = v31;
  LOBYTE(v37) = 0;
  sub_1A98CDB9C(&qword_1EB3AD060, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v22 = v32;
  v21 = v33;
  v23 = v34;
  sub_1A99775F0();
  (*(v20 + 32))(v18, v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3520, &qword_1A99A18D0);
  v41 = 1;
  sub_1A986DDA0(&qword_1EB3B3568, sub_1A986DE18, MEMORY[0x1E69E6510]);
  sub_1A99775F0();
  (*(v19 + 8))(v21, v35);
  v25 = v27;
  v24 = v28;
  *&v18[*(v27 + 52)] = v37;
  (*(v24 + 16))(v29, v18, v25);
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  return (*(v24 + 8))(v18, v25);
}

uint64_t sub_1A98CA49C(uint64_t result, uint64_t a2)
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
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1A97BCEB8(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v16 + 16)))
    {
LABEL_28:

      return 0;
    }

    if (v21)
    {
      v22 = v20 == v16;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v20 + 40);
      v24 = (v16 + 40);
      while (v21)
      {
        result = *(v23 - 1);
        if (result != *(v24 - 1) || *v23 != *v24)
        {
          result = sub_1A99777E0();
          if ((result & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v23 += 2;
        v24 += 2;
        if (!--v21)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_6:
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
      goto LABEL_14;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1A98CA644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A99763B0();
  v61 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4D38, &qword_1A99A34F0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v54 = (&v50 - v12);
  v55 = v13;
  v53 = v7;
  v14 = 0;
  v51 = a1;
  v15 = *(a1 + 64);
  v50 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v57 = v61 + 16;
  v58 = (v61 + 32);
  v52 = (v61 + 8);
  while (1)
  {
    v20 = v55;
    if (!v18)
    {
      break;
    }

    v59 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = (*(v51 + 48) + 16 * v21);
    v27 = *v26;
    v28 = v26[1];
    v30 = v60;
    v29 = v61;
    (*(v61 + 16))(v60, *(v51 + 56) + *(v61 + 72) * v21, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4D40, &qword_1A99A34F8);
    v32 = *(v31 + 48);
    *v20 = v27;
    *(v20 + 1) = v28;
    (*(v29 + 32))(&v20[v32], v30, v4);
    (*(*(v31 - 8) + 56))(v20, 0, 1, v31);

LABEL_17:
    v33 = v54;
    sub_1A97D8380(v20, v54, &qword_1EB3B4D38, &qword_1A99A34F0);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4D40, &qword_1A99A34F8);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v39 = *v33;
    v38 = v33[1];
    v40 = v56;
    v41 = v53;
    (*v58)(v53, v33 + v37, v4);
    v42 = sub_1A97BCEB8(v39, v38);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      (*v52)(v41, v4);
      return 0;
    }

    v46 = v60;
    v45 = v61;
    (*(v61 + 16))(v60, *(v40 + 56) + *(v61 + 72) * v42, v4);
    sub_1A98CDB9C(&qword_1EB3B4D48, MEMORY[0x1E6966C00], MEMORY[0x1E6966C08]);
    v47 = sub_1A99767A0();
    v48 = *(v45 + 8);
    v48(v46, v4);
    result = (v48)(v41, v4);
    v18 = v59;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4D40, &qword_1A99A34F8);
      (*(*(v49 - 8) + 56))(v20, 1, 1, v49);
      v59 = 0;
      v14 = v23;
      goto LABEL_17;
    }

    v25 = *(v50 + 8 * v24);
    ++v14;
    if (v25)
    {
      v59 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A98CAB54(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2768, qword_1A9997EC0);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

uint64_t sub_1A98CABC8(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
    v15 = v8;
LABEL_11:
    v11 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v5)) | (v9 << 6)));

    sub_1A99768D0();

    MEMORY[0x1AC58A630](*(v11 + 16));
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = v11 + 40;
      do
      {

        sub_1A99768D0();

        v13 += 16;
        --v12;
      }

      while (v12);
    }

    v5 &= v5 - 1;

    result = sub_1A99779B0();
    v8 = result ^ v15;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1AC58A630](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v15 = v8;
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      goto LABEL_24;
    }

    v20 = *a1;
    if (v3 != v8 || v2 != v7)
    {
      v14 = sub_1A99777E0();
      sub_1A97DC908(v8, v7, v10, v9, 0);
      sub_1A97DC908(v3, v2, v5, v4, 0);
      sub_1A97DC96C(v3, v2, v5, v4, 0);
      v15 = v8;
      v16 = v7;
      v17 = v10;
      v18 = v9;
      v19 = 0;
      goto LABEL_30;
    }

    sub_1A97DC908(v20, v2, v10, v9, 0);
    sub_1A97DC908(v3, v2, v5, v4, 0);
    sub_1A97DC96C(v3, v2, v5, v4, 0);
    v23 = v3;
    v24 = v2;
    v25 = v10;
    v26 = v9;
    v27 = 0;
LABEL_28:
    sub_1A97DC96C(v23, v24, v25, v26, v27);
    return 1;
  }

  if (v6 != 1)
  {
    if (v11 != 2)
    {
      goto LABEL_24;
    }

    v22 = v3 == v8 && v2 == v7;
    if (!v22 && (sub_1A99777E0() & 1) == 0)
    {
      sub_1A97DC908(v8, v7, v10, v9, 2u);
      sub_1A97DC908(v3, v2, v5, v4, 2u);
      sub_1A97DC96C(v3, v2, v5, v4, 2u);
      v28 = v8;
      v29 = v7;
      v30 = v10;
      v31 = v9;
      v32 = 2;
      goto LABEL_25;
    }

    if (v5 != v10 || v4 != v9)
    {
      v14 = sub_1A99777E0();
      sub_1A97DC908(v8, v7, v10, v9, 2u);
      sub_1A97DC908(v3, v2, v5, v4, 2u);
      sub_1A97DC96C(v3, v2, v5, v4, 2u);
      v15 = v8;
      v16 = v7;
      v17 = v10;
      v18 = v9;
      v19 = 2;
      goto LABEL_30;
    }

    sub_1A97DC908(v8, v7, v5, v4, 2u);
    sub_1A97DC908(v3, v2, v5, v4, 2u);
    sub_1A97DC96C(v3, v2, v5, v4, 2u);
    v23 = v8;
    v24 = v7;
    v25 = v5;
    v26 = v4;
    v27 = 2;
    goto LABEL_28;
  }

  if (v11 != 1)
  {
LABEL_24:
    sub_1A97DC908(*a2, *(a2 + 8), v10, v9, v11);
    sub_1A97DC908(v3, v2, v5, v4, v6);
    sub_1A97DC96C(v3, v2, v5, v4, v6);
    v28 = v8;
    v29 = v7;
    v30 = v10;
    v31 = v9;
    v32 = v11;
LABEL_25:
    sub_1A97DC96C(v28, v29, v30, v31, v32);
    return 0;
  }

  v12 = *a1;
  if (v3 == v8 && v2 == v7)
  {
    sub_1A97DC908(v12, v2, v10, v9, 1u);
    sub_1A97DC908(v3, v2, v5, v4, 1u);
    sub_1A97DC96C(v3, v2, v5, v4, 1u);
    v23 = v3;
    v24 = v2;
    v25 = v10;
    v26 = v9;
    v27 = 1;
    goto LABEL_28;
  }

  v14 = sub_1A99777E0();
  sub_1A97DC908(v8, v7, v10, v9, 1u);
  sub_1A97DC908(v3, v2, v5, v4, 1u);
  sub_1A97DC96C(v3, v2, v5, v4, 1u);
  v15 = v8;
  v16 = v7;
  v17 = v10;
  v18 = v9;
  v19 = 1;
LABEL_30:
  sub_1A97DC96C(v15, v16, v17, v18, v19);
  return v14 & 1;
}

uint64_t _s7Sharing9SFAirDropO13DeclineActionV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = 0, (sub_1A99777E0() & 1) != 0))
  {
    v6 = a1[3];
    v7 = a1[4];
    v8 = a1[5];
    v9 = *(a1 + 48);
    v21 = a1[2];
    v22 = v6;
    v23 = v7;
    v24 = v8;
    v25 = v9;
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    v12 = *(a2 + 32);
    v13 = *(a2 + 40);
    v14 = *(a2 + 48);
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = v14;
    sub_1A97DC908(v21, v6, v7, v8, v9);
    sub_1A97DC908(v10, v11, v12, v13, v14);
    v5 = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v21, &v16);
    sub_1A97DC96C(v16, v17, v18, v19, v20);
    sub_1A97DC96C(v21, v22, v23, v24, v25);
  }

  return v5 & 1;
}

uint64_t sub_1A98CB284(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = v6;
  v2[5] = v7;
  v8 = *(type metadata accessor for SFAirDrop.PermissionRequest(0, (v2 + 2)) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  v2[6] = v10;
  *v10 = v2;
  v10[1] = sub_1A98CB398;

  return sub_1A98BC12C(a1, v1 + v9, v4, v5, v6, v7);
}

uint64_t sub_1A98CB398()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A98CB48C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A97B2638;

  return sub_1A987A668(a1, v4, v5, v6);
}

uint64_t sub_1A98CB558(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDrop.DeclineAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A98CB62C()
{
  result = qword_1EB3B4590;
  if (!qword_1EB3B4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4590);
  }

  return result;
}

unint64_t sub_1A98CB698()
{
  result = qword_1EB3B45B8;
  if (!qword_1EB3B45B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B45B8);
  }

  return result;
}

unint64_t sub_1A98CB6EC()
{
  result = qword_1EB3B45C0;
  if (!qword_1EB3B45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B45C0);
  }

  return result;
}

unint64_t sub_1A98CB740()
{
  result = qword_1EB3B45C8;
  if (!qword_1EB3B45C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B45C8);
  }

  return result;
}

unint64_t sub_1A98CB794()
{
  result = qword_1EB3B45D0;
  if (!qword_1EB3B45D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B45D0);
  }

  return result;
}

uint64_t sub_1A98CB800(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65546C6F626D7973 && a2 == 0xEA00000000007478)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A98CB924(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 48);
  v6 = *(v2 + 56);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A97B2638;

  return sub_1A98C45A4(a1, a2, v7, v6);
}

unint64_t sub_1A98CBA18()
{
  result = qword_1EB3B45F8;
  if (!qword_1EB3B45F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B45F8);
  }

  return result;
}

unint64_t sub_1A98CBA6C()
{
  result = qword_1EB3B4600;
  if (!qword_1EB3B4600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4600);
  }

  return result;
}

uint64_t sub_1A98CBB38(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A97B2988;

  return sub_1A98C86CC(a1, a2, v7, v6);
}

unint64_t sub_1A98CBBEC()
{
  result = qword_1EB3B4610;
  if (!qword_1EB3B4610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4610);
  }

  return result;
}

uint64_t sub_1A98CBC40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDrop.DeclineAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A98CBCA4(uint64_t a1, _BYTE *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A97B2988;

  return sub_1A98C9030(a1, a2, v7, v6);
}

uint64_t sub_1A98CBD94(void *a1)
{
  result = sub_1A99762C0();
  if (v3 <= 0x3F)
  {
    v15 = 0;
    v19 = result;
    v20 = MEMORY[0x1E69E6370];
    result = sub_1A9976230();
    if (v4 <= 0x3F)
    {
      v16 = 0;
      v21 = result;
      v5 = a1[2];
      v6 = a1[3];
      v7 = a1[4];
      v8 = a1[5];
      v11 = v5;
      v12 = v6;
      v13 = v7;
      v14 = v8;
      result = type metadata accessor for SFAirDrop.PermissionRequest.Style(319, &v11);
      if (v9 <= 0x3F)
      {
        v17 = 0;
        v22 = result;
        v11 = v5;
        v12 = v6;
        v13 = v7;
        v14 = v8;
        type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData(255, &v11);
        result = sub_1A99770A0();
        if (v10 <= 0x3F)
        {
          v18 = 0;
          v23 = result;
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1A98CBEB4(void *a1)
{
  v10 = MEMORY[0x1E69E6158];
  v11 = MEMORY[0x1E69E6158];
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v9[0] = v1;
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  type metadata accessor for SFAirDrop.AcceptAction(255, v9);
  v12 = sub_1A9976B60();
  v13 = type metadata accessor for SFAirDrop.DeclineAction(255);
  result = swift_getTupleTypeMetadata();
  if (v6 <= 0x3F)
  {
    v7 = result;
    v14 = result;
    v10 = v1;
    v11 = v2;
    v12 = v3;
    v13 = v4;
    type metadata accessor for SFAirDrop.PermissionRequest.InterventionAction(255, &v10);
    result = swift_getTupleTypeMetadata2();
    if (v8 <= 0x3F)
    {
      v15 = result;
      v16 = v7;
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A98CC024(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A98CC06C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A98CC0CC(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  type metadata accessor for SFAirDrop.AcceptAction.Single(255, &v8);
  sub_1A99762C0();
  result = swift_getTupleTypeMetadata2();
  if (v6 <= 0x3F)
  {
    v11 = v4;
    v12 = result;
    v8 = v1;
    v9 = v2;
    v10 = v3;
    type metadata accessor for SFAirDrop.AcceptAction.Composite(255, &v8);
    result = swift_getTupleTypeMetadata2();
    if (v7 <= 0x3F)
    {
      v13 = result;
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A98CC1C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = (*(*(*(a3 + 16) - 8) + 80) + 51) & ~*(*(*(a3 + 16) - 8) + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v7 = *(sub_1A99762C0() - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = ((v8 + ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v5 + v6 + (v8 | 7)) & ~(v8 | 7)) + 16) & ~v8) + v9;
  v11 = ((v8 + 48) & ~v8) + v9;
  if (v11 > v10)
  {
    v10 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v12 = v10 + 1;
  v13 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v16 = ((a2 + ~(-1 << v13) - 254) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_25:
      v18 = *(a1 + v10);
      if (v18 >= 2)
      {
        return (v18 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_25;
  }

LABEL_14:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return (v12 | v17) + 255;
}

void sub_1A98CC3B8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = (*(*(*(a4 + 16) - 8) + 80) + 51) & ~*(*(*(a4 + 16) - 8) + 80);
  v9 = *(sub_1A99762C0() - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = ((v10 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v8 + v7 + (v10 | 7)) & ~(v10 | 7)) + 16) & ~v10) + v11;
  v13 = ((v10 + 48) & ~v10) + v11;
  if (v13 <= v12)
  {
    v13 = v12;
  }

  v14 = v13 + 1;
  if (a3 < 0xFF)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 + ~(-1 << (8 * v14)) - 254) >> (8 * v14)) + 1;
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

  if (a2 > 0xFE)
  {
    v16 = a2 - 255;
    if (v14 >= 4)
    {
      bzero(a1, v13 + 1);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v17 = (v16 >> (8 * v14)) + 1;
    if (v13 != -1)
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
LABEL_39:
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
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v15)
        {
          a1[v14] = v17;
        }

        return;
      }

      *a1 = v20;
      a1[2] = BYTE2(v20);
    }

    if (v15 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v15 <= 1)
  {
    if (v15)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v13] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v15 == 2)
  {
    *&a1[v14] = 0;
    goto LABEL_24;
  }

  *&a1[v14] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1A98CC630(uint64_t a1)
{
  v15 = MEMORY[0x1E69E6158];
  v16 = &type metadata for SFAirDrop.ButtonConfiguration;
  v12 = 0;
  v17 = MEMORY[0x1E69E6370];
  v18 = MEMORY[0x1E69E6370];
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v13 = 0;
    v19 = result;
    v4 = result;
    v5 = sub_1A984AF04();
    v6 = sub_1A984AF58();
    v8[0] = v4;
    v8[1] = &type metadata for VoidResponse;
    v9 = *(a1 + 24);
    v10 = v5;
    v11 = v6;
    result = type metadata accessor for SFXPCBlock(319, v8);
    if (v7 <= 0x3F)
    {
      v14 = 0;
      v20 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A98CC710(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1A99762C0();
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  if (*(v9 + 84) <= 0x7FFFFFFFu)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v7 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v9 + 80) & 0xF8 | 7;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v11 + v14 + ((v10 + 51) & ~v10)) & ~v14) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v13 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if ((v13 & 0x80000000) != 0)
  {
    v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 35) & ~v10;
    if (v7 >= v12)
    {
      v28 = *(v6 + 48);

      return v28(v25, v7, v5);
    }

    else
    {
      v26 = *(v9 + 48);
      v27 = (v25 + v11 + v14) & ~v14;

      return v26(v27);
    }
  }

  else
  {
    v24 = *(a1 + 1);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }
}

void sub_1A98CC98C(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v31 = v8;
  v9 = *(v8 + 84);
  v10 = sub_1A99762C0();
  v11 = *(v10 - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (*(v11 + 84) <= 0x7FFFFFFFu)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (v9 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v9;
  }

  v16 = *(v11 + 80) & 0xF8 | 7;
  v17 = ((*(*(v10 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v18 = ((v13 + v16 + ((v12 + 51) & ~v12)) & ~v16) + v17;
  if (v15 >= a3)
  {
    v21 = 0;
    v22 = a2 - v15;
    if (a2 <= v15)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v18)
    {
      v19 = 2;
    }

    else
    {
      v19 = a3 - v15 + 1;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = a2 - v15;
    if (a2 <= v15)
    {
LABEL_20:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *(a1 + v18) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v18) = 0;
      }

      else if (v21)
      {
        *(a1 + v18) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if ((v15 & 0x80000000) != 0)
        {
          v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 35) & ~v12;
          if (v9 >= v14)
          {
            v29 = *(v31 + 56);

            v29(v25, a2, v9, v7);
          }

          else
          {
            v26 = ((v25 + v13 + v16) & ~v16);
            if (v14 >= a2)
            {
              v30 = *(v11 + 56);

              v30(v26, a2);
            }

            else if (v17)
            {
              v27 = ~v14 + a2;
              v28 = v26;
              bzero(v26, v17);
              *v28 = v27;
            }
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          a1[1] = 0;
        }

        else
        {
          a1[1] = (a2 - 1);
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (v18)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  if (v18)
  {
    v24 = ~v15 + a2;
    bzero(a1, ((v13 + v16 + ((v12 + 51) & ~v12)) & ~v16) + v17);
    *a1 = v24;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      *(a1 + v18) = v23;
    }

    else
    {
      *(a1 + v18) = v23;
    }
  }

  else if (v21)
  {
    *(a1 + v18) = v23;
  }
}

uint64_t sub_1A98CCC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A98CCCB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A98CCD00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A98CCD74(uint64_t a1)
{
  sub_1A98CCF24(319, &qword_1EB3AC798, sub_1A984B03C, sub_1A984B090, &type metadata for VoidParameters);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A98CCE40(uint64_t a1)
{
  sub_1A99762C0();
  if (v1 <= 0x3F)
  {
    sub_1A98CCF24(319, &qword_1EB3AC790, sub_1A98A7E00, sub_1A98CCFC4, &type metadata for SFInterventionResponse);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A98CCF24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    v10[0] = a5;
    v10[1] = &type metadata for VoidResponse;
    v10[2] = a3();
    v10[3] = a4();
    v10[4] = sub_1A984AF04();
    v10[5] = sub_1A984AF58();
    v8 = type metadata accessor for SFXPCBlock(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A98CCFC4()
{
  result = qword_1EB3AC398;
  if (!qword_1EB3AC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC398);
  }

  return result;
}

void sub_1A98CD018(uint64_t a1)
{
  sub_1A99762C0();
  if (v1 <= 0x3F)
  {
    sub_1A986E4C8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1A98CD1A4()
{
  result = qword_1EB3B4CC0;
  if (!qword_1EB3B4CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4CC0);
  }

  return result;
}

unint64_t sub_1A98CD1FC()
{
  result = qword_1EB3B4CC8;
  if (!qword_1EB3B4CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4CC8);
  }

  return result;
}

unint64_t sub_1A98CD254()
{
  result = qword_1EB3B4CD0;
  if (!qword_1EB3B4CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4CD0);
  }

  return result;
}

unint64_t sub_1A98CD2AC()
{
  result = qword_1EB3B4CD8;
  if (!qword_1EB3B4CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4CD8);
  }

  return result;
}

unint64_t sub_1A98CD390()
{
  result = qword_1EB3B4CE0;
  if (!qword_1EB3B4CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4CE0);
  }

  return result;
}

unint64_t sub_1A98CD490()
{
  result = qword_1EB3B4CE8;
  if (!qword_1EB3B4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4CE8);
  }

  return result;
}

unint64_t sub_1A98CD4E8()
{
  result = qword_1EB3B4CF0;
  if (!qword_1EB3B4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4CF0);
  }

  return result;
}

unint64_t sub_1A98CD658()
{
  result = qword_1EB3B4CF8;
  if (!qword_1EB3B4CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4CF8);
  }

  return result;
}

unint64_t sub_1A98CD6B0()
{
  result = qword_1EB3B4D00;
  if (!qword_1EB3B4D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4D00);
  }

  return result;
}

unint64_t sub_1A98CD708()
{
  result = qword_1EB3B4D08;
  if (!qword_1EB3B4D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4D08);
  }

  return result;
}

unint64_t sub_1A98CD760()
{
  result = qword_1EB3B4D10;
  if (!qword_1EB3B4D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4D10);
  }

  return result;
}

unint64_t sub_1A98CD7B8()
{
  result = qword_1EB3B4D18;
  if (!qword_1EB3B4D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4D18);
  }

  return result;
}

unint64_t sub_1A98CD810()
{
  result = qword_1EB3B4D20;
  if (!qword_1EB3B4D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4D20);
  }

  return result;
}

unint64_t sub_1A98CD868()
{
  result = qword_1EB3B4D28;
  if (!qword_1EB3B4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4D28);
  }

  return result;
}

unint64_t sub_1A98CD8C0()
{
  result = qword_1EB3B4D30;
  if (!qword_1EB3B4D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4D30);
  }

  return result;
}

uint64_t sub_1A98CDA34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A99E6CC0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6564646968 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A98CDB9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A98CDC3C(uint64_t a1)
{
  v2 = sub_1A98D08C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98CDC78(uint64_t a1)
{
  v2 = sub_1A98D08C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A98CDCB4()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617453746F6ELL;
  }
}

uint64_t sub_1A98CDD20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A98D1628(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A98CDD48(uint64_t a1)
{
  v2 = sub_1A98D0874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98CDD84(uint64_t a1)
{
  v2 = sub_1A98D0874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98CDDC0(uint64_t a1)
{
  v2 = sub_1A98D0970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98CDDFC(uint64_t a1)
{
  v2 = sub_1A98D0970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98CDE38(uint64_t a1)
{
  v2 = sub_1A98D091C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98CDE74(uint64_t a1)
{
  v2 = sub_1A98D091C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.AskProgress.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4D58, &qword_1A99A3510);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4D60, &qword_1A99A3518);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4D68, &qword_1A99A3520);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4D70, &qword_1A99A3528);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98D0874();
  sub_1A9977AA0();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1A98D091C();
      v9 = v21;
      sub_1A9977640();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1A98D08C8();
      v9 = v24;
      sub_1A9977640();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1A98D0970();
    sub_1A9977640();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t SFAirDrop.AskProgress.hashValue.getter()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t SFAirDrop.AskProgress.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4D98, &qword_1A99A3530);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4DA0, &qword_1A99A3538);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4DA8, &qword_1A99A3540);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4DB0, &unk_1A99A3548);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1A98D0874();
  v15 = v36;
  sub_1A9977A70();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1A9977620();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1A97B297C();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1A9977300();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
      *v24 = &type metadata for SFAirDrop.AskProgress;
      sub_1A9977540();
      sub_1A99772F0();
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
          sub_1A98D091C();
          sub_1A9977530();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1A98D08C8();
          v26 = v17;
          sub_1A9977530();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1A98D0970();
        sub_1A9977530();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v37);
}

double SFAirDrop.Progress.percent.getter()
{
  v1 = v0[2];
  if (!(v1 >> 62) && (v1 & 1) == 0)
  {
    return v0[3] / v0[1];
  }

  return result;
}

uint64_t SFAirDrop.Progress.description.getter()
{
  v1 = sub_1A9976020();
  v2 = *(v1 - 8);
  v57 = v1;
  v58 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v56 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A9975F60();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A99762E0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1808, &qword_1A9992A18);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v16 = v53 - v15;
  v18 = v0[1];
  v17 = v0[2];
  v20 = v0[3];
  v19 = v0[4];
  if (!(v17 >> 62))
  {
    v56 = v5;
    v57 = v4;
    v58 = v19;
    v62 = 0;
    v63 = 0xE000000000000000;
    if (v17)
    {
      sub_1A99772B0();
      v60 = v20;
      v38 = sub_1A9977730();
      v40 = v39;

      v62 = v38;
      v63 = v40;
      MEMORY[0x1AC5895B0](0x2D203E6C696E3C2FLL, 0xE900000000000020);
    }

    else
    {
      v44 = v13;
      v45 = v14;
      v46 = v18;
      sub_1A99772B0();
      v60 = v20;
      v47 = sub_1A9977730();
      v55 = v20;
      v49 = v48;

      v62 = v47;
      v63 = v49;
      MEMORY[0x1AC5895B0](47, 0xE100000000000000);
      v60 = v46;
      v50 = sub_1A9977730();
      MEMORY[0x1AC5895B0](v50);

      MEMORY[0x1AC5895B0](10272, 0xE200000000000000);
      v59 = v55 / v46;
      sub_1A99762D0();
      sub_1A97D4C04();
      sub_1A9975F30();
      sub_1A9975F50();
      MEMORY[0x1AC588BE0](v7, v44);
      (*(v56 + 1))(v7, v57);
      v51 = *(v45 + 8);
      v51(v12, v44);
      sub_1A97AF974(&qword_1EB3B1818, &qword_1EB3B1808, &qword_1A9992A18, MEMORY[0x1E6968E60]);
      sub_1A99766D0();
      v51(v16, v44);
      MEMORY[0x1AC5895B0](v60, v61);

      MEMORY[0x1AC5895B0](2108704, 0xE300000000000000);
    }

    v60 = v58;
    v52 = sub_1A9977730();
    MEMORY[0x1AC5895B0](v52);

    MEMORY[0x1AC5895B0](0x7466656C2073, 0xE600000000000000);
    return v62;
  }

  v21 = *v0;
  if (v17 >> 62 != 1)
  {
    if (v17 != 0x8000000000000000 || v20 | v18 | v21 | v19)
    {
      return 0xD00000000000001ALL;
    }

    else
    {
      return 0x72617453746F6E2ELL;
    }
  }

  v22 = *(v21 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  if (!v22)
  {
LABEL_18:
    v62 = 0x6574656C706D6F63;
    v63 = 0xEA00000000002864;
    v60 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
    sub_1A97AF974(&qword_1EB3AB6D0, &unk_1EB3B2AC0, &qword_1A9990580, MEMORY[0x1E69E6310]);
    v41 = sub_1A9976760();
    v43 = v42;

    MEMORY[0x1AC5895B0](v41, v43);

    return v62;
  }

  v60 = MEMORY[0x1E69E7CC0];
  result = sub_1A97BD628(0, v22, 0);
  v25 = 0;
  v23 = v60;
  v54 = v21 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
  v55 = v22;
  v53[0] = v58 + 8;
  v53[1] = v58 + 16;
  while (v25 < *(v21 + 16))
  {
    v27 = v57;
    v26 = v58;
    v28 = v56;
    (*(v58 + 16))(v56, v54 + *(v58 + 72) * v25, v57);
    v62 = 0;
    v63 = 0xE000000000000000;
    v29 = sub_1A9976000();
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v29 = 0x656863732D6F6E3CLL;
      v31 = 0xEB000000003E656DLL;
    }

    MEMORY[0x1AC5895B0](v29, v31);

    MEMORY[0x1AC5895B0](0x2FA680E22F2F3ALL, 0xA700000000000000);
    v32 = sub_1A9975FB0();
    MEMORY[0x1AC5895B0](v32);

    v33 = v62;
    v34 = v63;
    result = (*(v26 + 8))(v28, v27);
    v60 = v23;
    v36 = *(v23 + 16);
    v35 = *(v23 + 24);
    if (v36 >= v35 >> 1)
    {
      result = sub_1A97BD628((v35 > 1), v36 + 1, 1);
      v23 = v60;
    }

    ++v25;
    *(v23 + 16) = v36 + 1;
    v37 = v23 + 16 * v36;
    *(v37 + 32) = v33;
    *(v37 + 40) = v34;
    if (v55 == v25)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A98CEFEC()
{
  v1 = 0x7472617453746F6ELL;
  v2 = 0x726566736E617274;
  if (*v0 != 2)
  {
    v2 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A98CF07C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A98D1754(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A98CF0A4(uint64_t a1)
{
  v2 = sub_1A98D09C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98CF0E0(uint64_t a1)
{
  v2 = sub_1A98D09C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98CF12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1936487029 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A98CF1B4(uint64_t a1)
{
  v2 = sub_1A98D0A18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98CF1F0(uint64_t a1)
{
  v2 = sub_1A98D0A18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98CF22C(uint64_t a1)
{
  v2 = sub_1A98D0B14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98CF268(uint64_t a1)
{
  v2 = sub_1A98D0B14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A98CF2A4()
{
  v1 = 0x706F4373656C6966;
  v2 = 0x706F437365747962;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x7479426C61746F74;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A98CF32C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A98D18D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A98CF354(uint64_t a1)
{
  v2 = sub_1A98D0A6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98CF390(uint64_t a1)
{
  v2 = sub_1A98D0A6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98CF3CC(uint64_t a1)
{
  v2 = sub_1A98D0AC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98CF408(uint64_t a1)
{
  v2 = sub_1A98D0AC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.Progress.encode(to:)(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4DB8, &qword_1A99A3558);
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v36 = &v29 - v3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4DC0, &qword_1A99A3560);
  v35 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v38 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4DC8, &qword_1A99A3568);
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4DD0, &qword_1A99A3570);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4DD8, &qword_1A99A3578);
  v12 = *(v11 - 8);
  v42 = v11;
  v43 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = *v1;
  v41 = v1[1];
  v17 = v1[2];
  v16 = v1[3];
  v33 = v1[4];
  v34 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98D09C4();
  sub_1A9977AA0();
  if (v17 >> 62)
  {
    if (v17 >> 62 == 1)
    {
      LOBYTE(v45) = 3;
      sub_1A98D0A18();
      v18 = v36;
      v19 = v42;
      sub_1A9977640();
      v45 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
      sub_1A98D0B68(&qword_1EB3B1910, &qword_1EB3B1918, MEMORY[0x1E6968FB8], MEMORY[0x1E69E6300]);
      v20 = v39;
      sub_1A99776E0();
      (*(v37 + 8))(v18, v20);
      v21 = *(v43 + 8);
      v22 = v14;
    }

    else
    {
      if (v17 != 0x8000000000000000 || v34 | v41 | v15 | v33)
      {
        LOBYTE(v45) = 1;
        sub_1A98D0AC0();
        v28 = v42;
        sub_1A9977640();
        (*(v31 + 8))(v7, v32);
        return (*(v43 + 8))(v14, v28);
      }

      LOBYTE(v45) = 0;
      sub_1A98D0B14();
      v19 = v42;
      sub_1A9977640();
      (*(v29 + 8))(v10, v30);
      v21 = *(v43 + 8);
      v22 = v14;
    }
  }

  else
  {
    v23 = v35;
    LOBYTE(v45) = 2;
    sub_1A98D0A6C();
    v24 = v38;
    v19 = v42;
    sub_1A9977640();
    LOBYTE(v45) = 0;
    v25 = v40;
    v26 = v44;
    sub_1A99776C0();
    if (!v26)
    {
      LOBYTE(v45) = 1;
      sub_1A9977670();
      LOBYTE(v45) = 2;
      sub_1A99776C0();
      LOBYTE(v45) = 3;
      sub_1A99776C0();
    }

    (*(v23 + 8))(v24, v25);
    v21 = *(v43 + 8);
    v22 = v14;
  }

  return v21(v22, v19);
}

uint64_t SFAirDrop.Progress.hash(into:)(uint64_t a1)
{
  v2 = sub_1A9976020();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v8 = v1[3];
  v10 = v1[4];
  if (!(v9 >> 62))
  {
    MEMORY[0x1AC58A630](2);
    MEMORY[0x1AC58A630](v6);
    sub_1A99779A0();
    if ((v9 & 1) == 0)
    {
      MEMORY[0x1AC58A630](v7);
    }

    MEMORY[0x1AC58A630](v8);
    return MEMORY[0x1AC58A630](v10);
  }

  if (v9 >> 62 != 1)
  {
    v10 = v9 != 0x8000000000000000 || (v8 | v7 | v6 | v10) != 0;
    return MEMORY[0x1AC58A630](v10);
  }

  MEMORY[0x1AC58A630](3);
  result = MEMORY[0x1AC58A630](*(v6 + 16));
  v12 = *(v6 + 16);
  if (v12)
  {
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v13 = v15;
    v16 = v6 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v17 = *(v14 + 56);
    do
    {
      v13(v5, v16, v2);
      sub_1A98D0BF0(&qword_1EB3AC8C0, MEMORY[0x1E6968FC0]);
      sub_1A9976740();
      result = (*(v14 - 8))(v5, v2);
      v16 += v17;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t SFAirDrop.Progress.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1A9977980();
  SFAirDrop.Progress.hash(into:)(v4);
  return sub_1A99779B0();
}

uint64_t SFAirDrop.Progress.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4E08, &qword_1A99A3588);
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v41 - v5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4E10, &qword_1A99A3590);
  v46 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v50 = &v41 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4E18, &qword_1A99A3598);
  v49 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4E20, &qword_1A99A35A0);
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4E28, &qword_1A99A35A8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - v14;
  v16 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1A98D09C4();
  v17 = v51;
  sub_1A9977A70();
  if (!v17)
  {
    v18 = v11;
    v51 = v9;
    v19 = v49;
    v20 = v50;
    v21 = sub_1A9977620();
    v22 = (2 * *(v21 + 16)) | 1;
    v53 = v21;
    v54 = v21 + 32;
    v55 = 0;
    v56 = v22;
    v23 = sub_1A97B2974();
    if (v23 == 4 || v55 != v56 >> 1)
    {
      v30 = sub_1A9977300();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
      *v32 = &type metadata for SFAirDrop.Progress;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
      swift_willThrow();
      (*(v13 + 8))(v15, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v23 > 1u)
      {
        if (v23 == 2)
        {
          LOBYTE(v57) = 2;
          sub_1A98D0A6C();
          v34 = v20;
          sub_1A9977530();
          LOBYTE(v57) = 0;
          v35 = v43;
          v51 = sub_1A99775D0();
          LOBYTE(v57) = 1;
          v36 = sub_1A9977580();
          v38 = v37;
          v49 = v36;
          LOBYTE(v57) = 2;
          v47 = sub_1A99775D0();
          LOBYTE(v57) = 3;
          v27 = sub_1A99775D0();
          (*(v46 + 8))(v34, v35);
          (*(v13 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v28 = v38 & 1;
          v24 = v51;
          v29 = v48;
          v25 = v49;
          v26 = v47;
        }

        else
        {
          LOBYTE(v57) = 3;
          sub_1A98D0A18();
          sub_1A9977530();
          v29 = v48;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
          sub_1A98D0B68(&qword_1EB3B1AA8, &qword_1EB3B1AB0, MEMORY[0x1E6968FD0], MEMORY[0x1E69E6330]);
          v39 = v44;
          v40 = v47;
          sub_1A99775F0();
          (*(v45 + 8))(v40, v39);
          (*(v13 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v24 = v57;
          v28 = 0x4000000000000000;
        }
      }

      else
      {
        if (v23)
        {
          LOBYTE(v57) = 1;
          sub_1A98D0AC0();
          sub_1A9977530();
          (*(v19 + 8))(v8, v42);
          (*(v13 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0x8000000000000000;
          v24 = 1;
        }

        else
        {
          LOBYTE(v57) = 0;
          sub_1A98D0B14();
          sub_1A9977530();
          (*(v41 + 8))(v18, v51);
          (*(v13 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0x8000000000000000;
        }

        v29 = v48;
      }

      *v29 = v24;
      v29[1] = v25;
      v29[2] = v28;
      v29[3] = v26;
      v29[4] = v27;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v52);
}