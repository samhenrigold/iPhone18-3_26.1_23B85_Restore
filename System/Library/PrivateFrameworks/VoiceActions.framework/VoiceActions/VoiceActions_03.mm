unint64_t sub_272226BE4()
{
  result = qword_280881B88;
  if (!qword_280881B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881B88);
  }

  return result;
}

unint64_t sub_272226C38()
{
  result = qword_280881B90;
  if (!qword_280881B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881B90);
  }

  return result;
}

unint64_t sub_272226C8C()
{
  result = qword_280881B98;
  if (!qword_280881B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881B98);
  }

  return result;
}

unint64_t sub_272226CE4()
{
  result = qword_280881BA0;
  if (!qword_280881BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881BA0);
  }

  return result;
}

uint64_t sub_272226D38@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 592))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t dispatch thunk of VATasrConfiguration.__allocating_init(tasrModelPath:labelModelPath:joinerModelPath:contextEncoderModelPath:vadModelFilename:silenceModelFeatureCount:useContext:vocabFilename:useEspressoV2:computeUnits:espressoV1ModelPrefix:timingEnabled:shouldWaitForAdditionalLoopForFinal:useTransducer:gatedMode:)()
{
  v2 = *(v0 + 560);

  return v2();
}

uint64_t getEnumTagSinglePayload for VATasrConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VATasrConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2722270A0()
{
  result = qword_2808864A0[0];
  if (!qword_2808864A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808864A0);
  }

  return result;
}

unint64_t sub_2722270F8()
{
  result = qword_2808865B0;
  if (!qword_2808865B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808865B0);
  }

  return result;
}

unint64_t sub_272227150()
{
  result = qword_2808865B8[0];
  if (!qword_2808865B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808865B8);
  }

  return result;
}

uint64_t sub_2722271A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65646F4D72736174 && a2 == 0xED0000687461506CLL;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000272389A00 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746E6F43657375 && a2 == 0xEA00000000007478 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000272389A30 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C69466261636F76 && a2 == 0xED0000656D616E65 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6572707345657375 && a2 == 0xED000032566F7373 || (sub_27237865C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x55657475706D6F63 && a2 == 0xEC0000007374696ELL || (sub_27237865C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000272389A60 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x646F4D6C6562616CLL && a2 == 0xEE00687461506C65 || (sub_27237865C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F4D72656E696F6ALL && a2 == 0xEF687461506C6564 || (sub_27237865C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E45676E696D6974 && a2 == 0xED000064656C6261 || (sub_27237865C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000272389AB0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x736E617254657375 && a2 == 0xED00007265637564 || (sub_27237865C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000272389AF0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x646F4D6465746167 && a2 == 0xE900000000000065)
  {

    return 14;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_27222769C()
{
  v1 = *v0;
  if (v1 <= 2 && !*v0)
  {
    v3 = 1;
LABEL_10:

    return v3 & 1;
  }

  v2 = sub_27237865C();

  if ((v2 & 1) == 0)
  {
    if (v1 > 2 || v1 == 1)
    {
      v3 = sub_27237865C();
    }

    else
    {
      v3 = 1;
    }

    goto LABEL_10;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_2722278AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v5 = 0x6148686365657073;
      v6 = 0xEE006465646E4573;
    }

    else
    {
      if (a1 == 4)
      {
        v5 = 0x74756F656D6974;
      }

      else
      {
        v5 = 0x536863754D6F6F74;
      }

      if (v2 == 4)
      {
        v6 = 0xE700000000000000;
      }

      else
      {
        v6 = 0xED00006863656570;
      }
    }
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x8000000272389B40;
    if (a1 != 1)
    {
      v3 = 0x54676E696E726177;
      v4 = 0xEF7973696F4E6F6FLL;
    }

    if (a1)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    if (v2)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0x8000000272389B20;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v8 = 0xEE006465646E4573;
      if (v5 != 0x6148686365657073)
      {
        goto LABEL_39;
      }
    }

    else if (a2 == 4)
    {
      v8 = 0xE700000000000000;
      if (v5 != 0x74756F656D6974)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v8 = 0xED00006863656570;
      if (v5 != 0x536863754D6F6F74)
      {
LABEL_39:
        v9 = sub_27237865C();
        goto LABEL_40;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = 0x54676E696E726177;
    }

    if (a2 == 1)
    {
      v8 = 0x8000000272389B40;
    }

    else
    {
      v8 = 0xEF7973696F4E6F6FLL;
    }

    if (v5 != v7)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v8 = 0x8000000272389B20;
    if (v5 != 0xD000000000000015)
    {
      goto LABEL_39;
    }
  }

  if (v6 != v8)
  {
    goto LABEL_39;
  }

  v9 = 1;
LABEL_40:

  return v9 & 1;
}

VoiceActions::VASpeechCollectionState_optional __swiftcall VASpeechCollectionState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27237840C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VASpeechCollectionState.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x54676E696E726177;
  v3 = 0x6148686365657073;
  v4 = 0x74756F656D6974;
  if (v1 != 4)
  {
    v4 = 0x536863754D6F6F74;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_272227C48(unsigned __int8 a1)
{
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_272227D84(uint64_t a1)
{
  sub_27237790C();
}

uint64_t sub_272227EB0(uint64_t a1, unsigned __int8 a2)
{
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

void sub_272227FF4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF7973696F4E6F6FLL;
  v4 = 0x54676E696E726177;
  v5 = 0xEE006465646E4573;
  v6 = 0x6148686365657073;
  v7 = 0xE700000000000000;
  v8 = 0x74756F656D6974;
  if (v2 != 4)
  {
    v8 = 0x536863754D6F6F74;
    v7 = 0xED00006863656570;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 == 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000272389B40;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x8000000272389B20;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t (*sub_2722281B0(uint64_t *a1))()
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
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 64);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_272228244;
}

uint64_t VASpeechCollector.__allocating_init(parameters:listener:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  v10 = *(a1 + 24);
  v11 = a1[4];
  *(v5 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  *(v5 + 32) = v8;
  *(v5 + 36) = v9;
  *(v5 + 40) = v10;
  *(v5 + 48) = v11;
  swift_beginAccess();
  *(v5 + 64) = a3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v5;
}

uint64_t VASpeechCollector.init(parameters:listener:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 4);
  v8 = *(a1 + 5);
  v9 = *(a1 + 24);
  v10 = a1[4];
  *(v3 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;
  *(v3 + 32) = v7;
  *(v3 + 36) = v8;
  *(v3 + 40) = v9;
  *(v3 + 48) = v10;
  swift_beginAccess();
  *(v3 + 64) = a3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_2722283C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 36);
  v21 = *(v1 + 40);
  v6 = *(v1 + 48);
  v19 = *(*v1 + 120);
  v19();
  v8 = v7;
  v9 = type metadata accessor for VASpeechCollectionSessionImpl(0);
  v10 = swift_allocObject();
  *(v10 + 64) = 0;
  swift_unknownObjectWeakInit();
  v11 = MEMORY[0x277D84F90];
  *(v10 + 72) = 0;
  *(v10 + 80) = v11;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  sub_272376E4C();
  *(v10 + 16) = v2;
  *(v10 + 24) = v3;
  *(v10 + 32) = v4;
  *(v10 + 36) = v5;
  *(v10 + 40) = v21;
  *(v10 + 48) = v6;
  swift_beginAccess();
  *(v10 + 64) = v8;
  swift_unknownObjectWeakAssign();
  type metadata accessor for VAFixedLengthQueue();
  v12 = sub_272255908(v6);
  swift_unknownObjectRelease();
  *(v10 + OBJC_IVAR____TtC12VoiceActions29VASpeechCollectionSessionImpl_squardAudioSamplesForVolumeCalculation) = v12;
  v13 = sub_272228F98();
  if (v22)
  {
  }

  result = (v19)(v13);
  if (result)
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    v23[3] = v9;
    v23[4] = &off_28817DC88;
    v23[0] = v10;
    v18 = *(v16 + 8);

    v18(v23, ObjectType, v16);
    swift_unknownObjectRelease();
    result = sub_2722039C8(v23);
  }

  a1[3] = v9;
  a1[4] = &off_28817DC88;
  *a1 = v10;
  return result;
}

uint64_t sub_2722285C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  v10 = *(a1 + 24);
  v11 = a1[4];
  *(v5 + 64) = 0;
  swift_unknownObjectWeakInit();
  v12 = MEMORY[0x277D84F90];
  *(v5 + 72) = 0;
  *(v5 + 80) = v12;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  sub_272376E4C();
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  *(v5 + 32) = v8;
  *(v5 + 36) = v9;
  *(v5 + 40) = v10;
  *(v5 + 48) = v11;
  swift_beginAccess();
  *(v5 + 64) = a3;
  swift_unknownObjectWeakAssign();
  type metadata accessor for VAFixedLengthQueue();
  v13 = sub_272255908(v11);
  swift_unknownObjectRelease();
  *(v5 + OBJC_IVAR____TtC12VoiceActions29VASpeechCollectionSessionImpl_squardAudioSamplesForVolumeCalculation) = v13;
  return v5;
}

uint64_t VASpeechCollector.__deallocating_deinit()
{
  sub_272216300(v0 + 56);

  return swift_deallocClassInstance();
}

double static VASpeechCollectionParameters.defaultForNameRecognition()@<D0>(uint64_t a1@<X8>)
{
  *&result = 32000;
  *a1 = xmmword_27237D2F0;
  *(a1 + 16) = 0xC15000003E99999ALL;
  *(a1 + 24) = 0;
  *(a1 + 32) = 16000;
  return result;
}

uint64_t VASpeechCollectionParameters.dbWarningThreshold.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

float sub_272228874@<S0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 32);
  v4 = *(v1 + 36);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 16) = result;
  *(a1 + 20) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_2722288D8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *(a1 + 24);
  v7 = a1[4];
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 36) = v5;
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  return result;
}

uint64_t sub_27222898C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_2722289EC(uint64_t *a1))()
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
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 64);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_27222C070;
}

void sub_272228A80(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 64) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_272228B38(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_272228BB0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

uint64_t sub_272228C48@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 88);
  return result;
}

uint64_t sub_272228C8C(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 88) = v2;
  return result;
}

uint64_t sub_272228D04(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

uint64_t sub_272228D94(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions29VASpeechCollectionSessionImpl_squardAudioSamplesForVolumeCalculation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_272228E4C(void *a1)
{
  v3 = type metadata accessor for VAKeywordSpotterBase();
  v4 = [a1 format];
  static VAKeywordSpotterBase.checkSupportedAudioFormat(_:)(v4);

  if (!v1)
  {
    v5 = [a1 frameLength];
    if (v5)
    {
      v6 = v5;
      v7 = v5;
      v3 = sub_272377B5C();
      *(v3 + 16) = v7;
      bzero((v3 + 32), 2 * v6);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

    v8 = [a1 int16ChannelData];
    if (v8)
    {
      memcpy((v3 + 32), *v8, 2 * [a1 frameLength]);
    }

    else
    {

      v3 = 0x8000000272389B90;
      sub_2722032B4();
      swift_allocError();
      *v10 = 0xD000000000000048;
      v10[1] = 0x8000000272389B90;
      swift_willThrow();
    }
  }

  return v3;
}

uint64_t sub_272228F98()
{
  v2 = v0;
  v3 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v30 = &v26 - v9;
  type metadata accessor for VASpeechDetector(0);
  v10 = sub_27221A8BC();
  v12 = v11;
  _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v31);
  v33 = v31[0];
  swift_unknownObjectRetain();
  result = VASpeechDetector.__allocating_init(modelFilename:featureCount:delegate:)(v10, v12, &v33, v0);
  if (!v1)
  {
    v14 = result;
    v26 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = v6;
    v15 = *(*v0 + 272);

    v17 = v15(v16);
    (*(*v0 + 144))(v31, v17);
    v18.n128_u32[0] = v32;
    (*(*v14 + 672))(0, v18);
    v28 = 0;
    v19 = sub_272377C3C();
    v20 = v5;
    (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    v21 = v29;
    v22 = v26;
    v23 = v27;
    (*(v29 + 16))(v26, v30, v27);
    v24 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    (*(v21 + 32))(v25 + v24, v22, v23);
    *(v25 + ((v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;

    sub_27222A1F0(0, 0, v20, &unk_27237D308, v25);

    return (*(v21 + 8))(v30, v23);
  }

  return result;
}

uint64_t sub_27222930C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[96] = a5;
  v5[95] = a4;
  v6 = sub_272376E5C();
  v5[97] = v6;
  v5[98] = *(v6 - 8);
  v5[99] = swift_task_alloc();
  v7 = sub_27237728C();
  v5[100] = v7;
  v5[101] = *(v7 - 8);
  v5[102] = swift_task_alloc();
  v8 = sub_2721F065C(&qword_280881A80, &unk_27237D610);
  v5[103] = v8;
  v5[104] = *(v8 - 8);
  v5[105] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272229494, 0, 0);
}

uint64_t sub_272229494()
{
  sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  sub_272377C8C();
  v0[106] = 0;
  v1 = swift_task_alloc();
  v0[107] = v1;
  *v1 = v0;
  v1[1] = sub_272229564;
  v2 = v0[103];

  return MEMORY[0x2822003E8](v0 + 34, 0, 0, v2);
}

uint64_t sub_272229564()
{

  return MEMORY[0x2822009F8](sub_272229660, 0, 0);
}

uint64_t sub_272229660()
{
  v87 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 352);
  *(v0 + 208) = v1;
  *(v0 + 224) = v2;
  v3 = *(v0 + 368);
  v4 = *(v0 + 384);
  *(v0 + 240) = v3;
  *(v0 + 256) = v4;
  v5 = *(v0 + 272);
  v6 = *(v0 + 288);
  *(v0 + 144) = v5;
  *(v0 + 160) = v6;
  v7 = *(v0 + 304);
  v8 = *(v0 + 320);
  *(v0 + 176) = v7;
  *(v0 + 192) = v8;
  *(v0 + 48) = v7;
  *(v0 + 64) = v8;
  *(v0 + 16) = v5;
  *(v0 + 32) = v6;
  *(v0 + 112) = v3;
  *(v0 + 128) = v4;
  *(v0 + 80) = v1;
  *(v0 + 96) = v2;
  if (sub_272219874((v0 + 16)) != 1)
  {
    v9 = *(v0 + 848);
    v10 = *(v0 + 16);
    v11 = *(**(v0 + 768) + 320);
    v12 = *(v0 + 224);
    *(v0 + 464) = *(v0 + 208);
    *(v0 + 480) = v12;
    v13 = *(v0 + 256);
    *(v0 + 496) = *(v0 + 240);
    *(v0 + 512) = v13;
    v14 = *(v0 + 160);
    *(v0 + 400) = *(v0 + 144);
    *(v0 + 416) = v14;
    v15 = *(v0 + 192);
    *(v0 + 432) = *(v0 + 176);
    *(v0 + 448) = v15;
    sub_272218D40(v0 + 400, v0 + 528);
    v16 = v11(v10);
    if (v9)
    {
      v17 = *(v0 + 816);
      v18 = *(v0 + 808);
      v19 = *(v0 + 800);
      (*(*(v0 + 832) + 8))(*(v0 + 840), *(v0 + 824));
      sub_2721F40F0(v0 + 144, &qword_280881A88, &qword_27237CA70);
      sub_2721F40F0(v0 + 144, &qword_280881A88, &qword_27237CA70);
      v20 = sub_2722C389C();
      (*(v18 + 16))(v17, v20, v19);

      v21 = v9;
      v22 = sub_27237725C();
      v23 = sub_272377E8C();

      v24 = os_log_type_enabled(v22, v23);
      v25 = *(v0 + 816);
      v26 = *(v0 + 808);
      v27 = *(v0 + 800);
      if (v24)
      {
        v82 = *(v0 + 816);
        v84 = *(v0 + 800);
        v28 = *(v0 + 792);
        v29 = *(v0 + 784);
        v81 = v23;
        v30 = *(v0 + 776);
        v31 = *(v0 + 768);
        v32 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v86[0] = v79;
        *v32 = 136315394;
        (*(*v31 + 376))();
        sub_27222BB18();
        v33 = sub_27237862C();
        v35 = v34;
        (*(v29 + 8))(v28, v30);
        v36 = sub_2721FFD04(v33, v35, v86);

        *(v32 + 4) = v36;
        *(v32 + 12) = 2112;
        v37 = v9;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 14) = v38;
        *v78 = v38;
        _os_log_impl(&dword_2721E4000, v22, v81, "Encountered error in VASpeechCollector id: %s  error: %@", v32, 0x16u);
        sub_2721F40F0(v78, &qword_280881A40, &unk_27237D620);
        MEMORY[0x2743C69C0](v78, -1, -1);
        sub_2722039C8(v79);
        MEMORY[0x2743C69C0](v79, -1, -1);
        MEMORY[0x2743C69C0](v32, -1, -1);

        v39 = (*(v26 + 8))(v82, v84);
      }

      else
      {

        v39 = (*(v26 + 8))(v25, v27);
      }

      if ((*(**(v0 + 768) + 168))(v39))
      {
        v51 = v50;
        ObjectType = swift_getObjectType();
        (*(v51 + 16))(v9, ObjectType, v51);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      goto LABEL_18;
    }

    v40 = v16;
    v41 = *(v0 + 768);
    v42 = sub_2721F40F0(v0 + 144, &qword_280881A88, &qword_27237CA70);
    v43 = *(*v41 + 240);
    v44 = (v43)(v42);
    v80 = *(v0 + 34);
    if ((v80 & 1) == 0 && *(v0 + 32) != 1)
    {
LABEL_27:
      v43();
      if (*(v0 + 865) == 1)
      {
      }

      else
      {
        v61 = sub_27237865C();

        if ((v61 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      if ((*(v0 + 33) & 1) != 0 || v80 != 1)
      {
        v65 = 3;
        goto LABEL_36;
      }

LABEL_32:
      v62 = *(v0 + 768);
      v63 = *((*(*v62 + 216))(v60) + 16);

      v60 = (*(*v62 + 144))(v86, v64);
      if (v63 < v86[0])
      {
        v65 = *(v0 + 864);
LABEL_37:
        (v43)(v86, v60);
        if ((sub_2722278AC(v86[0], v65) & 1) == 0)
        {
          v66 = *(v0 + 768);
          LOBYTE(v86[0]) = v65;
          v67 = (*(*v66 + 248))(v86);
          v68 = (*(*v66 + 168))(v67);
          if (v68)
          {
            v70 = v69;
            v71 = *(v0 + 768);
            v72 = swift_getObjectType();
            *(v0 + 680) = type metadata accessor for VASpeechCollectionSessionImpl(0);
            *(v0 + 688) = &off_28817DC88;
            *(v0 + 656) = v71;
            v73 = v43;
            v74 = *(v70 + 8);

            v74(v0 + 656, v72, v70);
            v43 = v73;
            swift_unknownObjectRelease();
            v68 = sub_2722039C8((v0 + 656));
          }

          v75 = (v43)(v86, v68);
          if (LOBYTE(v86[0]) - 3 <= 2)
          {
            v76 = (*(**(v0 + 768) + 264))(v75);
            if (v76)
            {
              (*(*v76 + 688))();
            }
          }
        }

        sub_2721F40F0(v0 + 144, &qword_280881A88, &qword_27237CA70);
        *(v0 + 848) = 0;
        v77 = swift_task_alloc();
        *(v0 + 856) = v77;
        *v77 = v0;
        v77[1] = sub_272229564;
        v47 = *(v0 + 824);
        v44 = (v0 + 272);
        v45 = 0;
        v46 = 0;

        return MEMORY[0x2822003E8](v44, v45, v46, v47);
      }

      v65 = 5;
LABEL_36:
      *(v0 + 864) = v65;
      goto LABEL_37;
    }

    if (*(v0 + 80))
    {
      v48 = 0;
    }

    else
    {
      v48 = *(v0 + 72);
    }

    if ((v48 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      if (*(v0 + 112) == 1)
      {
        v49 = v40[2];
        goto LABEL_22;
      }

      v49 = *(v0 + 104);
      if ((v49 & 0x8000000000000000) == 0)
      {
LABEL_22:
        if (v49 >= v48)
        {
          v83 = v43;
          v85 = v49 - v48;
          if (v40[2] >= v49)
          {
            v55 = *(v0 + 768);
            v56 = (2 * v49) | 1;
            v57 = *(*v55 + 232);

            v58 = v57(v0 + 696);
            sub_27222A0DC(v40, (v40 + 4), v48, v56);
            v58(v0 + 696, 0);
            v44 = (*(*v55 + 208))(v0 + 728);
            if (!__OFSUB__(*v45, v85))
            {
              *v45 -= v85;
              v59 = v44(v0 + 728, 0);
              v43 = v83;
              (v83)(v86, v59);
              if (sub_27222769C())
              {
                *(v0 + 864) = 1;
              }

              goto LABEL_27;
            }

LABEL_50:
            __break(1u);
            return MEMORY[0x2822003E8](v44, v45, v46, v47);
          }

LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

LABEL_48:
        __break(1u);
        goto LABEL_49;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  (*(*(v0 + 832) + 8))(*(v0 + 840), *(v0 + 824));
LABEL_18:

  v53 = *(v0 + 8);

  return v53();
}

void sub_27222A0DC(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_27222B82C(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 2 * v15 + 32), (a2 + 2 * a3), 2 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_27222A1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_27222BF08(a3, v25 - v10);
  v12 = sub_272377C3C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2721F40F0(v11, &qword_2808819D8, &qword_27237CB50);
  }

  else
  {
    sub_272377C2C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_272377BDC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2723778BC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_27222A4E0(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(*v1 + 240);
  v3(v11);
  result = sub_2722278AC(v11[0], v2);
  if ((result & 1) == 0)
  {
    LOBYTE(v11[0]) = v2;
    v5 = (*(*v1 + 248))(v11);
    v6 = (*(*v1 + 168))(v5);
    if (v6)
    {
      v8 = v7;
      ObjectType = swift_getObjectType();
      v11[3] = type metadata accessor for VASpeechCollectionSessionImpl(0);
      v11[4] = &off_28817DC88;
      v11[0] = v1;
      v10 = *(v8 + 8);

      v10(v11, ObjectType, v8);
      swift_unknownObjectRelease();
      v6 = sub_2722039C8(v11);
    }

    result = (v3)(v11, v6);
    if (LOBYTE(v11[0]) - 3 <= 2)
    {
      result = (*(*v1 + 264))(result);
      if (result)
      {
        (*(*result + 688))(result);
      }
    }
  }

  return result;
}

void (*sub_27222A704(void *a1, uint64_t a2))(uint64_t *, void)
{
  v4 = v3;
  v5 = v2;
  v43 = a2;
  v7 = sub_272376E5C();
  v41 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_27237728C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = (*(*v2 + 360))(v42, v12);
  if (LOBYTE(v42[0]) - 3 <= 2)
  {
    v40 = v3;
    v16 = sub_2722C389C();
    (*(v11 + 16))(v14, v16, v10);

    v17 = sub_27237725C();
    v18 = sub_272377E8C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v39 = a1;
      v20 = v19;
      v37 = v19;
      v38 = swift_slowAlloc();
      v42[0] = v38;
      *v20 = 136315138;
      v21 = *(*v5 + 376);
      v36 = v18;
      v21();
      sub_27222BB18();
      v22 = sub_27237862C();
      v24 = v23;
      (*(v41 + 8))(v9, v7);
      v25 = sub_2721FFD04(v22, v24, v42);
      a1 = v39;

      v26 = v37;
      *(v37 + 4) = v25;
      v27 = v26;
      _os_log_impl(&dword_2721E4000, v17, v36, "Adding audio to VASpeechCollectionSession %s when state is terminal", v26, 0xCu);
      v28 = v38;
      sub_2722039C8(v38);
      MEMORY[0x2743C69C0](v28, -1, -1);
      MEMORY[0x2743C69C0](v27, -1, -1);
    }

    v15 = (*(v11 + 8))(v14, v10);
    v4 = v40;
  }

  v29 = (*(*v5 + 192))(v15);
  v30 = (*(*v5 + 144))(v42);
  if (v42[1] >= v29)
  {
    v32 = (*(*v5 + 264))(v30);
    if (!v32 || ((*(*v32 + 680))(a1, v43), result = , !v4))
    {
      v33 = [a1 frameLength];
      result = (*(*v5 + 208))(v42);
      if (__OFADD__(*v34, v33))
      {
        __break(1u);
      }

      else
      {
        *v34 += v33;
        result(v42, 0);
        return (*(*v5 + 352))(a1);
      }
    }
  }

  else
  {
    LOBYTE(v42[0]) = 4;
    return sub_27222A4E0(v42);
  }

  return result;
}

void sub_27222ABF8(void *a1)
{
  v3 = v1;
  v86 = *MEMORY[0x277D85DE8];
  v5 = sub_27237728C();
  v76 = *(v5 - 8);
  v77 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v75 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 144);
  v9 = *v1 + 144;
  v10 = v8((v82 + 1), v6);
  if (v84)
  {
    return;
  }

  v11 = v83;
  v12 = *(*v1 + 240);
  v78 = *v1 + 240;
  v79 = v12;
  (v12)((v82 + 1), v10);
  if ((sub_27222769C() & 1) == 0)
  {
    return;
  }

  type metadata accessor for VAKeywordSpotterBase();
  v13 = [a1 format];
  static VAKeywordSpotterBase.checkSupportedAudioFormat(_:)(v13);

  if (v2)
  {
    return;
  }

  v14 = [a1 int16ChannelData];
  if (!v14)
  {
    sub_2722032B4();
    swift_allocError();
    *v23 = 0xD000000000000042;
    v23[1] = 0x8000000272389BE0;
    swift_willThrow();
    return;
  }

  v15 = v14;
  v74 = v9;
  v16 = &selRef_environment;
  v17 = [a1 frameLength];
  v18 = [a1 frameLength];
  if (v18)
  {
    v19 = v18;
    v20 = v17;
    v21 = v18;
    v22 = sub_272377B5C();
    *(v22 + 16) = v21;
    v17 = v20;
    v16 = &selRef_environment;
    bzero((v22 + 32), 4 * v19);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v24 = *v15;
  v25 = v17;
  vDSP_vflt16(v24, 1, (v22 + 32), 1, v17);

  v26 = v22;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_2721FF8B4(0, *(v22 + 16), 0, v22);
  }

  vDSP_vsdiv((v22 + 32), 1, flt_28817DC58, v26 + 8, 1, v25);

  v27 = [a1 v16[127]];
  if (v27)
  {
    v28 = v27;
    v29 = v27;
    v30 = sub_272377B5C();
    *(v30 + 16) = v29;
    bzero((v30 + 32), 4 * v28);
    v31 = v30;
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v67 = v31 + 32;
  v32 = v31;
  MEMORY[0x2743C6C20](v26 + 32, 1);

  v81 = v32;
  v73 = *(v32 + 16);
  v34 = v8((v82 + 1), v33);
  v35 = v85;
  if (!v85)
  {
LABEL_62:
    __break(1u);
  }

  if (v85 < 1 || !v73)
  {
    goto LABEL_55;
  }

  v36 = 0;
  v68 = 0x8000000272389B40;
  v70 = "ureCount";
  v71 = v8;
  v72 = 0;
  v69 = v85;
  while (1)
  {
    v37 = __OFADD__(v36, v35);
    v38 = v36 + v35;
    v39 = ((v36 + v35) >> 63) ^ 0x8000000000000000;
    if (v37)
    {
      v38 = v39;
    }

    v80 = v38;
    v40 = v8((v82 + 1), v34);
    v41 = v36 + v85;
    if (__OFADD__(v36, v85))
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v42 = *(v81 + 16);
    if (v42 >= v41)
    {
      v43 = v36 + v85;
    }

    else
    {
      v43 = *(v81 + 16);
    }

    v44 = (*v3 + 288);
    v45 = *v44;
    v46 = (*v44)(v40);
    v47 = v43 - v36;
    if (v43 < v36)
    {
      goto LABEL_58;
    }

    if (v36 < 0)
    {
      goto LABEL_59;
    }

    v48 = v46;
    v49 = *(v81 + 16);
    if (v49 < v36 || v49 < v43)
    {
      goto LABEL_60;
    }

    if (v41 < 0)
    {
      goto LABEL_61;
    }

    if (v49 == v47)
    {
    }

    else
    {
      v50 = MEMORY[0x277D84F90];
      if (v43 != v36)
      {
        if (v47 < 1)
        {
          v60 = 4 * v47;
          v50 = MEMORY[0x277D84F90];
        }

        else
        {
          sub_2721F065C(&qword_280881848, &unk_27237C250);
          v58 = swift_allocObject();
          v66 = 4 * v47;
          v50 = v58;
          v59 = j__malloc_size(v58);
          v60 = v66;
          v61 = v59 - 32;
          if (v59 < 32)
          {
            v61 = v59 - 29;
          }

          v50[2] = v47;
          v50[3] = 2 * (v61 >> 2);
        }

        memcpy(v50 + 4, (v67 + 4 * v36), v60);
      }
    }

    (*(*v48 + 152))(v50, v42);

    v52 = v45(v51);
    v53 = (*(*v52 + 168))(v52);

    *(v82 + 1) = 0;
    vDSP_meanv((v53 + 32), 1, (v82 + 1), *(v53 + 16));

    v54 = log10f(sqrtf(*(v82 + 1)));
    v79(v82);
    v55 = LOBYTE(v82[0]);
    if (LOBYTE(v82[0]) > 2u)
    {
      v8 = v71;
    }

    else
    {
      v8 = v71;
      if (!LOBYTE(v82[0]))
      {
        goto LABEL_41;
      }
    }

    v56 = sub_27237865C();

    if ((v56 & 1) == 0)
    {
      break;
    }

LABEL_43:
    if (v11 > (v54 * 20.0))
    {
      LOBYTE(v82[0]) = 0;
    }

    else
    {
      LOBYTE(v82[0]) = 2;
    }

    v34 = sub_27222A4E0(v82);
    v35 = v69;
    v36 = v80;
    if (v80 >= v73)
    {
      goto LABEL_55;
    }
  }

  if (v55 <= 2 && v55 != 1)
  {
LABEL_41:

    goto LABEL_43;
  }

  v57 = sub_27237865C();

  if (v57)
  {
    goto LABEL_43;
  }

  v62 = sub_2722C389C();
  (*(v76 + 16))(v75, v62, v77);
  v63 = sub_27237725C();
  v64 = sub_272377E8C();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_2721E4000, v63, v64, "State changed from isWaiting", v65, 2u);
    MEMORY[0x2743C69C0](v65, -1, -1);
  }

  (*(v76 + 8))(v75, v77);
LABEL_55:
}

Class sub_27222B518()
{
  v1._rawValue = (*(*v0 + 216))();
  isa = convert(int16AudioBytes:)(v1).super.super.isa;

  return isa;
}

uint64_t sub_27222B574@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions29VASpeechCollectionSessionImpl__id;
  v4 = sub_272376E5C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_27222B5EC()
{
  sub_272216300(v0 + 56);

  v1 = OBJC_IVAR____TtC12VoiceActions29VASpeechCollectionSessionImpl__id;
  v2 = sub_272376E5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VASpeechCollectionSessionImpl(uint64_t a1)
{
  result = qword_280886940;
  if (!qword_280886940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_27222B82C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280881A78, &unk_27237CA50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

uint64_t sub_27222B928()
{
  v1 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_27222BA0C()
{
  v2 = *(sub_2721F065C(&qword_280881900, &qword_27237C4F0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_272211DBC;

  return sub_27222930C(v5, v6, v7, v0 + v3, v4);
}

unint64_t sub_27222BB18()
{
  result = qword_280881BA8;
  if (!qword_280881BA8)
  {
    sub_272376E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881BA8);
  }

  return result;
}

unint64_t sub_27222BB74()
{
  result = qword_280881BB0;
  if (!qword_280881BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881BB0);
  }

  return result;
}

unint64_t sub_27222BBCC()
{
  result = qword_280881BB8;
  if (!qword_280881BB8)
  {
    sub_2721F214C(&qword_280881BC0, &qword_27237D408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881BB8);
  }

  return result;
}

__n128 sub_27222BD54(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_27222BD68(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27222BD88(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_27222BDD4(uint64_t a1)
{
  result = sub_272376E5C();
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

unint64_t sub_27222BEB4()
{
  result = qword_280881BC8;
  if (!qword_280881BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881BC8);
  }

  return result;
}

uint64_t sub_27222BF08(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27222BF78()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27222BFB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_272211DBC;

  return sub_272215964(a1, v4);
}

uint64_t sub_27222C078()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C0BC(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27222C10C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C150(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27222C1A0()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C1E4(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27222C234()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C278(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27222C2C8()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C30C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27222C35C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C3A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27222C3F0()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C434(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27222C484()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C4C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27222C518()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C55C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

float sub_27222C5AC()
{
  v1 = v0 + OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_27222C5F4(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_27222C648()
{
  v1 = v0 + OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_27222C690(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_27222C6E4()
{
  v1 = v0 + OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_27222C72C(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

uint64_t sub_27222C780()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C7C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27222C814()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C858(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

float sub_27222C8A8()
{
  v1 = v0 + OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_27222C8F0(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

uint64_t sub_27222C944()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222C988(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27222C9D8()
{
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27222CA1C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

unint64_t sub_27222CA6C(char a1)
{
  result = 0x5378614D656B6174;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
    case 13:
      result = 0xD000000000000013;
      break;
    case 7:
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD000000000000020;
      break;
    case 11:
      result = 0xD00000000000001ELL;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      return result;
    case 16:
      result = 0x6D61724674696177;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_27222CCA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_27222F908(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_27222CCD4(uint64_t a1)
{
  v2 = sub_27222E82C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27222CD10(uint64_t a1)
{
  v2 = sub_27222E82C();

  return MEMORY[0x2821FE720](a1, v2);
}

id static VAResultGeneratorConfiguration.buildForFixedSpotter(fixedConfig:waitFrames:)(void *a1, uint64_t a2)
{
  v20 = *sub_27226C778();
  v23 = *sub_27226C78C();
  v24 = *sub_27226C7A0();
  v3 = MEMORY[0x277D85000];
  v21 = (*((*MEMORY[0x277D85000] & *a1) + 0x100))();
  v18 = (*((*v3 & *a1) + 0x118))();
  v29 = type metadata accessor for VAResultGeneratorConfiguration();
  v4 = objc_allocWithZone(v29);
  v5 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled;
  v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled] = 0;
  v6 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled;
  v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled] = 0;
  v7 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled;
  v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled] = 0;
  v8 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength] = 197;
  v9 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride] = 1;
  v10 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold] = 0;
  v11 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize] = 1;
  v12 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback] = 30;
  v13 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected] = 20;
  v16 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability] = 1056964608;
  v17 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio] = 1056964608;
  v19 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability] = 1061997773;
  v22 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward] = 50;
  v14 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected] = 20;
  v25 = v14;
  v26 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability] = 1056964608;
  v27 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore;
  v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore] = 0;
  v28 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames;
  *&v4[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames] = 1;
  swift_beginAccess();
  v4[v5] = v20;
  swift_beginAccess();
  v4[v6] = v23;
  swift_beginAccess();
  v4[v7] = v24;
  swift_beginAccess();
  *&v4[v8] = v21;
  swift_beginAccess();
  *&v4[v9] = v18;
  swift_beginAccess();
  *&v4[v10] = 0;
  swift_beginAccess();
  *&v4[v11] = 5;
  swift_beginAccess();
  *&v4[v12] = 50;
  swift_beginAccess();
  *&v4[v13] = 25;
  swift_beginAccess();
  *&v4[v16] = 1056964608;
  swift_beginAccess();
  *&v4[v17] = 1056964608;
  swift_beginAccess();
  *&v4[v19] = 1056964608;
  swift_beginAccess();
  *&v4[v22] = 25;
  swift_beginAccess();
  *&v4[v25] = 10;
  swift_beginAccess();
  *&v4[v26] = 1056964608;
  swift_beginAccess();
  v4[v27] = 1;
  swift_beginAccess();
  *&v4[v28] = a2;
  v31.receiver = v4;
  v31.super_class = v29;
  return objc_msgSendSuper2(&v31, sel_init);
}

id sub_27222D16C(char a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, float a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17)
{
  v22 = objc_allocWithZone(v17);
  v23 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled;
  v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled] = 0;
  v24 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled;
  v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled] = 0;
  v25 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled;
  v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled] = 0;
  v26 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength;
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength] = 197;
  v27 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride;
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride] = 1;
  v28 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold;
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold] = 0;
  v29 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize;
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize] = 1;
  v30 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback;
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback] = 30;
  v31 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected;
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected] = 20;
  v35 = &v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability];
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability] = 1056964608;
  v36 = &v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio];
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio] = 1056964608;
  v38 = &v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability];
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability] = 1061997773;
  v39 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward;
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward] = 50;
  v41 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected;
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected] = 20;
  v43 = &v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability];
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability] = 1056964608;
  v44 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore;
  v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore] = 0;
  v46 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames;
  *&v22[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames] = 1;
  swift_beginAccess();
  v22[v23] = a1;
  swift_beginAccess();
  v22[v24] = a2;
  swift_beginAccess();
  v22[v25] = a3;
  swift_beginAccess();
  *&v22[v26] = a4;
  swift_beginAccess();
  *&v22[v27] = a5;
  swift_beginAccess();
  *&v22[v28] = a6;
  swift_beginAccess();
  *&v22[v29] = a7;
  swift_beginAccess();
  *&v22[v30] = a8;
  swift_beginAccess();
  *&v22[v31] = a13;
  swift_beginAccess();
  *v35 = a9;
  swift_beginAccess();
  *v36 = a10;
  swift_beginAccess();
  *v38 = a11;
  swift_beginAccess();
  *&v22[v39] = a14;
  swift_beginAccess();
  *&v22[v41] = a15;
  swift_beginAccess();
  *v43 = a12;
  swift_beginAccess();
  v22[v44] = a16;
  swift_beginAccess();
  *&v22[v46] = a17;
  v50.receiver = v22;
  v50.super_class = v49;
  return objc_msgSendSuper2(&v50, sel_init);
}

id sub_27222D564()
{
  v12 = *sub_2722D7170();
  v13 = *sub_2722D7184();
  v14 = *sub_2722D7198();
  v23 = type metadata accessor for VAResultGeneratorConfiguration();
  v0 = objc_allocWithZone(v23);
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled;
  v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled] = 0;
  v2 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled;
  v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled] = 0;
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled;
  v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled] = 0;
  v4 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength] = 197;
  v5 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride] = 1;
  v6 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold] = 0;
  v7 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize] = 1;
  v8 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback] = 30;
  v9 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected] = 20;
  v15 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability] = 1056964608;
  v16 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio] = 1056964608;
  v17 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability] = 1061997773;
  v10 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward] = 50;
  v18 = v10;
  v19 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected] = 20;
  v20 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability] = 1056964608;
  v21 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore;
  v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore] = 0;
  v22 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames] = 1;
  swift_beginAccess();
  v0[v1] = v12;
  swift_beginAccess();
  v0[v2] = v13;
  swift_beginAccess();
  v0[v3] = v14;
  swift_beginAccess();
  *&v0[v4] = 126;
  swift_beginAccess();
  *&v0[v5] = 8;
  swift_beginAccess();
  *&v0[v6] = 5;
  swift_beginAccess();
  *&v0[v7] = 5;
  swift_beginAccess();
  *&v0[v8] = 6;
  swift_beginAccess();
  *&v0[v9] = 3;
  swift_beginAccess();
  *&v0[v15] = 1056964608;
  swift_beginAccess();
  *&v0[v16] = 1056964608;
  swift_beginAccess();
  *&v0[v17] = 1061997773;
  swift_beginAccess();
  *&v0[v18] = 6;
  swift_beginAccess();
  *&v0[v19] = 3;
  swift_beginAccess();
  *&v0[v20] = 1056964608;
  swift_beginAccess();
  v0[v21] = 1;
  swift_beginAccess();
  *&v0[v22] = 1;
  v24.receiver = v0;
  v24.super_class = v23;
  return objc_msgSendSuper2(&v24, sel_init);
}

id static VAResultGeneratorConfiguration.buildForA2AAttentionDetection()()
{
  v20 = type metadata accessor for VAResultGeneratorConfiguration();
  v0 = objc_allocWithZone(v20);
  v1 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled;
  v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled] = 0;
  v2 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled;
  v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled] = 0;
  v3 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled;
  v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled] = 0;
  v4 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength] = 197;
  v5 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride] = 1;
  v6 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold] = 0;
  v7 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize] = 1;
  v8 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback] = 30;
  v9 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected] = 20;
  v12 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability] = 1056964608;
  v13 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio] = 1056964608;
  v14 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability] = 1061997773;
  v10 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward] = 50;
  v15 = v10;
  v16 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected] = 20;
  v17 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability] = 1056964608;
  v18 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore;
  v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore] = 0;
  v19 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames;
  *&v0[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames] = 1;
  swift_beginAccess();
  v0[v1] = 0;
  swift_beginAccess();
  v0[v2] = 0;
  swift_beginAccess();
  v0[v3] = 0;
  swift_beginAccess();
  *&v0[v4] = 182;
  swift_beginAccess();
  *&v0[v5] = 8;
  swift_beginAccess();
  *&v0[v6] = 0;
  swift_beginAccess();
  *&v0[v7] = 5;
  swift_beginAccess();
  *&v0[v8] = 6;
  swift_beginAccess();
  *&v0[v9] = 3;
  swift_beginAccess();
  *&v0[v12] = 1056964608;
  swift_beginAccess();
  *&v0[v13] = 1056964608;
  swift_beginAccess();
  *&v0[v14] = 1061997773;
  swift_beginAccess();
  *&v0[v15] = 6;
  swift_beginAccess();
  *&v0[v16] = 3;
  swift_beginAccess();
  *&v0[v17] = 1056964608;
  swift_beginAccess();
  v0[v18] = 0;
  swift_beginAccess();
  *&v0[v19] = 2;
  v21.receiver = v0;
  v21.super_class = v20;
  return objc_msgSendSuper2(&v21, sel_init);
}

unint64_t static VAResultGeneratorConfiguration.buildFromConfigFile(jsonFile:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for VAResultGeneratorConfiguration();
  v5 = sub_27222F478(&qword_280881C58, v4, type metadata accessor for VAResultGeneratorConfiguration, &protocol conformance descriptor for VAResultGeneratorConfiguration);
  sub_272254F78(v5, &v10);
  v6 = v10;
  if (v11)
  {
    if (v10 == 0x8000000000000000)
    {
      sub_27237820C();

      MEMORY[0x2743C4AD0](a1, a2);
      v6 = 0x8000000272389D30;
      sub_2722032B4();
      swift_allocError();
      *v7 = 0xD000000000000023;
      v7[1] = 0x8000000272389D30;
    }

    else
    {
      sub_272204304();
      swift_allocError();
      *v8 = v6;
    }

    swift_willThrow();
  }

  return v6;
}

void *VAResultGeneratorConfiguration.init(from:)(void *a1)
{
  v3 = sub_2721F065C(&qword_280881C60, &qword_27237D630);
  v4 = *(v3 - 8);
  v118 = v3;
  v119 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v101 - v5;
  v117 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled;
  v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceCheckEnabled] = 0;
  v115 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled;
  v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceCheckEnabled] = 0;
  v116 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled;
  v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringSpeechCheckEnabled] = 0;
  v114 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldLength] = 197;
  v113 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_receptiveFieldStride] = 1;
  v112 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_overlapThreshold] = 0;
  v111 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_averagingWindowSize] = 1;
  v110 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceLookback] = 30;
  v109 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceExpected] = 20;
  v106 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_preSilenceProbability] = 1056964608;
  v108 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandExpectedSpeechRatio] = 1056964608;
  v107 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_duringCommandSpeechProbability] = 1061997773;
  v7 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceLookforward] = 50;
  v104 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected;
  v105 = v7;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceExpected] = 20;
  v8 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_postSilenceProbability] = 1056964608;
  v9 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore;
  v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_takeMaxScore] = 0;
  v10 = OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames;
  v140 = v1;
  *&v1[OBJC_IVAR____TtC12VoiceActions30VAResultGeneratorConfiguration_waitFrames] = 1;
  v11 = a1[3];
  v121 = a1;
  v12 = sub_27220300C(a1, v11);
  sub_27222E82C();
  v13 = v120;
  sub_2723787AC();
  if (v13)
  {
    sub_2722039C8(v121);
    type metadata accessor for VAResultGeneratorConfiguration();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v120 = v8;
    v102 = v10;
    v103 = v9;
    v139 = 0;
    v15 = v117;
    v14 = v118;
    v16 = sub_27237844C();
    v18 = v16;
    v19 = v140;
    if (v16 == 2)
    {
      swift_beginAccess();
      v18 = v19[v15];
    }

    swift_beginAccess();
    v19[v15] = v18 & 1;
    v138 = 1;
    v20 = sub_27237844C();
    v21 = v115;
    if (v20 == 2)
    {
      swift_beginAccess();
      v20 = v19[v21];
    }

    v22 = v116;
    swift_beginAccess();
    v19[v21] = v20 & 1;
    v137 = 2;
    v23 = sub_27237844C();
    v117 = v6;
    if (v23 == 2)
    {
      swift_beginAccess();
      v23 = v19[v22];
    }

    swift_beginAccess();
    v19[v22] = v23 & 1;
    v136 = 3;
    v24 = sub_27237847C();
    if (v25)
    {
      v26 = v114;
      swift_beginAccess();
      v27 = *&v19[v26];
    }

    else
    {
      v27 = v24;
      v26 = v114;
    }

    swift_beginAccess();
    *&v19[v26] = v27;
    v135 = 4;
    v28 = sub_27237847C();
    if (v29)
    {
      v30 = v113;
      swift_beginAccess();
      v31 = *&v19[v30];
    }

    else
    {
      v31 = v28;
      v30 = v113;
    }

    swift_beginAccess();
    *&v19[v30] = v31;
    v134 = 5;
    v32 = sub_27237847C();
    if (v33)
    {
      v34 = v112;
      swift_beginAccess();
      v35 = *&v19[v34];
    }

    else
    {
      v35 = v32;
      v34 = v112;
    }

    swift_beginAccess();
    *&v19[v34] = v35;
    v133 = 6;
    v36 = sub_27237847C();
    if (v37)
    {
      v38 = v111;
      swift_beginAccess();
      v39 = *&v19[v38];
    }

    else
    {
      v39 = v36;
      v38 = v111;
    }

    swift_beginAccess();
    *&v19[v38] = v39;
    v132 = 7;
    v40 = sub_27237847C();
    if (v41)
    {
      v42 = v110;
      swift_beginAccess();
      v43 = *&v19[v42];
    }

    else
    {
      v43 = v40;
      v42 = v110;
    }

    swift_beginAccess();
    *&v19[v42] = v43;
    v131 = 8;
    v44 = sub_27237847C();
    if (v45)
    {
      v46 = v140;
      v47 = v109;
      swift_beginAccess();
      v48 = *&v46[v47];
    }

    else
    {
      v48 = v44;
    }

    v49 = v140;
    v50 = v109;
    swift_beginAccess();
    *&v49[v50] = v48;
    v130 = 10;
    v51 = sub_27237846C();
    v52 = v51;
    if ((v51 & 0x100000000) != 0)
    {
      v53 = v140;
      v54 = v108;
      swift_beginAccess();
      v52 = *&v53[v54];
    }

    v55 = v140;
    v56 = v108;
    swift_beginAccess();
    *&v55[v56] = v52;
    v129 = 11;
    v57 = sub_27237846C();
    v58 = v57;
    if ((v57 & 0x100000000) != 0)
    {
      v59 = v140;
      v60 = v107;
      swift_beginAccess();
      v58 = *&v59[v60];
    }

    v61 = v140;
    v62 = v107;
    swift_beginAccess();
    *&v61[v62] = v58;
    v128 = 9;
    v63 = sub_27237846C();
    v64 = v63;
    if ((v63 & 0x100000000) != 0)
    {
      v65 = v140;
      v66 = v106;
      swift_beginAccess();
      v64 = *&v65[v66];
    }

    v67 = v140;
    v68 = v106;
    swift_beginAccess();
    *&v67[v68] = v64;
    v127 = 12;
    v69 = sub_27237847C();
    if (v70)
    {
      v71 = v140;
      v72 = v105;
      swift_beginAccess();
      v73 = *&v71[v72];
    }

    else
    {
      v73 = v69;
    }

    v74 = v140;
    v75 = v105;
    swift_beginAccess();
    *&v74[v75] = v73;
    v126 = 13;
    v76 = sub_27237847C();
    if (v77)
    {
      v78 = v140;
      v79 = v104;
      swift_beginAccess();
      v80 = *&v78[v79];
    }

    else
    {
      v80 = v76;
    }

    v81 = v140;
    v82 = v104;
    swift_beginAccess();
    *&v81[v82] = v80;
    v125 = 14;
    v83 = sub_27237846C();
    v84 = v83;
    if ((v83 & 0x100000000) != 0)
    {
      v85 = v120;
      v86 = v140;
      swift_beginAccess();
      v84 = *&v86[v85];
    }

    v87 = v120;
    v88 = v140;
    swift_beginAccess();
    *&v88[v87] = v84;
    v124 = 15;
    v89 = sub_27237844C();
    if (v89 == 2)
    {
      v90 = v103;
      v91 = v140;
      swift_beginAccess();
      v89 = v91[v90];
    }

    v92 = v103;
    v93 = v140;
    swift_beginAccess();
    v93[v92] = v89 & 1;
    v123 = 16;
    v94 = sub_27237849C();
    LOBYTE(v92) = v95;
    (*(v119 + 8))(v117, v14);
    if (v92)
    {
      v96 = v102;
      v97 = v140;
      swift_beginAccess();
      v94 = *&v97[v96];
    }

    v98 = v102;
    v99 = v140;
    swift_beginAccess();
    *&v99[v98] = v94;
    v100 = type metadata accessor for VAResultGeneratorConfiguration();
    v122.receiver = v99;
    v122.super_class = v100;
    v12 = objc_msgSendSuper2(&v122, sel_init);
    sub_2722039C8(v121);
  }

  return v12;
}

unint64_t sub_27222E82C()
{
  result = qword_280886950[0];
  if (!qword_280886950[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280886950);
  }

  return result;
}

uint64_t sub_27222E880(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280881C68, &qword_27237D638);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  sub_27220300C(a1, a1[3]);
  sub_27222E82C();
  v9 = sub_2723787CC();
  v10 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0xD8))(v9);
  v29 = 0;
  v11 = sub_27237859C();
  if (!v2)
  {
    (*((*v10 & *v3) + 0xF0))(v11);
    v29 = 1;
    v12 = sub_27237859C();
    (*((*v10 & *v3) + 0x108))(v12);
    v29 = 2;
    v13 = sub_27237859C();
    (*((*v10 & *v3) + 0x120))(v13);
    v29 = 3;
    v14 = sub_2723785CC();
    (*((*v10 & *v3) + 0x138))(v14);
    v29 = 4;
    v15 = sub_2723785CC();
    (*((*v10 & *v3) + 0x150))(v15);
    v29 = 5;
    v16 = sub_2723785CC();
    (*((*v10 & *v3) + 0x168))(v16);
    v29 = 6;
    v17 = sub_2723785CC();
    (*((*v10 & *v3) + 0x180))(v17);
    v29 = 7;
    v18 = sub_2723785CC();
    (*((*v10 & *v3) + 0x198))(v18);
    v29 = 8;
    v19 = sub_2723785CC();
    (*((*v10 & *v3) + 0x1B0))(v19);
    v29 = 9;
    v20 = sub_2723785BC();
    (*((*v10 & *v3) + 0x1C8))(v20);
    v29 = 10;
    v21 = sub_2723785BC();
    (*((*v10 & *v3) + 0x1E0))(v21);
    v29 = 11;
    v22 = sub_2723785BC();
    (*((*v10 & *v3) + 0x210))(v22);
    v29 = 13;
    v23 = sub_2723785CC();
    (*((*v10 & *v3) + 0x228))(v23);
    v29 = 14;
    v24 = sub_2723785BC();
    (*((*v10 & *v3) + 0x240))(v24);
    v29 = 15;
    v25 = sub_27237859C();
    (*((*v10 & *v3) + 0x258))(v25);
    v29 = 16;
    v26 = sub_2723785EC();
    (*((*v10 & *v3) + 0x1F8))(v26);
    v29 = 12;
    sub_2723785CC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_27222F020(uint64_t a1, uint64_t a2)
{
  sub_27222F478(&qword_280881C58, a2, type metadata accessor for VAResultGeneratorConfiguration, &protocol conformance descriptor for VAResultGeneratorConfiguration);
  result = sub_27222F0F8(v2);
  if (v5)
  {
    if (result == 0x8000000000000000)
    {
      return 0xD00000000000001FLL;
    }

    else
    {
      v6 = result;
      v7 = v4;
      sub_27237836C();
      sub_27222F3E8(v6, v7, 1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_27222F0F8(uint64_t a1)
{
  v1 = sub_27237788C();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_272376AFC();
  MEMORY[0x28223BE20](v2);
  sub_272376B3C();
  swift_allocObject();
  sub_272376B2C();
  sub_2721F065C(&qword_280881C70, &unk_27237D640);
  *(swift_allocObject() + 16) = xmmword_27237AF90;
  sub_272376ADC();
  sub_272376ACC();
  sub_27222F478(&qword_280881C78, 255, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_2721F065C(&qword_280881C80, qword_27237D8B0);
  sub_27222F414();
  sub_27237815C();
  sub_272376B0C();
  type metadata accessor for VAResultGeneratorConfiguration();
  sub_27222F478(&qword_280881C90, v3, type metadata accessor for VAResultGeneratorConfiguration, &protocol conformance descriptor for VAResultGeneratorConfiguration);
  v4 = sub_272376B1C();
  v6 = v5;
  sub_27237787C();
  v7 = sub_27237784C();
  if (v8)
  {
    v9 = v7;
    sub_2721F05C8(v4, v6);

    return v9;
  }

  else
  {
    sub_2721F05C8(v4, v6);

    return 0;
  }
}

void sub_27222F3E8(unint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_27222F3F8(a1);
  }

  else
  {
  }
}

void sub_27222F3F8(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return;
    }

    a1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }
}

unint64_t sub_27222F414()
{
  result = qword_280881C88;
  if (!qword_280881C88)
  {
    sub_2721F214C(&qword_280881C80, qword_27237D8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881C88);
  }

  return result;
}

uint64_t sub_27222F478(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id VAResultGeneratorConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VAResultGeneratorConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VAResultGeneratorConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27222F588@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 632))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VAResultGeneratorConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VAResultGeneratorConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_27222F804()
{
  result = qword_280886B60[0];
  if (!qword_280886B60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280886B60);
  }

  return result;
}

unint64_t sub_27222F85C()
{
  result = qword_280886C70;
  if (!qword_280886C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280886C70);
  }

  return result;
}

unint64_t sub_27222F8B4()
{
  result = qword_280886C78;
  if (!qword_280886C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280886C78);
  }

  return result;
}

uint64_t sub_27222F908(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x8000000272389DF0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000272389E10 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000272389E30 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000272389E50 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000272389E70 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000272389E90 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000272389EB0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000272389ED0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000272389EF0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000272389F10 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000272389F30 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000272389F60 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000272389F80 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000272389FA0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000272389FC0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x5378614D656B6174 && a2 == 0xEC00000065726F63 || (sub_27237865C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6D61724674696177 && a2 == 0xEA00000000007365)
  {

    return 16;
  }

  else
  {
    v5 = sub_27237865C();

    if (v5)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_27222FE88(char a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

uint64_t sub_27222FF18(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x2822009F8](sub_27222FF3C, v1, 0);
}

uint64_t sub_27222FF3C()
{
  (*(**(v0 + 16) + 104))(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27222FFE0()
{
  v1 = (*(**(v0 + 16) + 96))();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_272230064()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t sub_2722300D8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_272230154(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 128) = a1;
  return result;
}

uint64_t sub_2722301C8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 136) = a1;
  return result;
}

uint64_t sub_272230290(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 152) = a1;
  *(v2 + 160) = a2 & 1;
  return result;
}

uint64_t sub_27223036C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 168) = a1;
  *(v2 + 176) = a2 & 1;
  return result;
}

uint64_t sub_2722303F4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 177) = a1;
  return result;
}

uint64_t sub_2722304B8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 178) = a1;
  return result;
}

uint64_t sub_27223057C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 184) = a1;
  return result;
}

uint64_t sub_2722305BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions25IngestionAudioBufferActor_continuation;
  swift_beginAccess();
  return sub_2721F07F4(v1 + v3, a1, &qword_280881CA0, qword_27237D808);
}

uint64_t sub_272230644(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280881CA0, qword_27237D808);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_272230714(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a2;
  swift_allocObject();
  v8 = sub_272238070(a1, v6, a3, a4 & 1);

  return v8;
}

uint64_t sub_272230784(char a1, uint64_t a2, char a3)
{
  *(v4 + 33) = a3;
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;
  *(v4 + 32) = a1;
  return MEMORY[0x2822009F8](sub_2722307AC, v3, 0);
}

uint64_t sub_2722307AC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  (*(*v1 + 304))(*(v0 + 16), *(v0 + 33) & 1);
  (*(*v1 + 328))(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_27223087C(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_2721F065C(&qword_280881C98, &qword_27237D800);
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  sub_2721F065C(&qword_280881CA0, qword_27237D808);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272230990, v2, 0);
}

uint64_t sub_272230990()
{
  v2 = v0[13];
  v3 = (*(*v2 + 200))();
  v4 = *v2;
  if (v3)
  {
    v6 = *(v4 + 224);
    v5 = v0[12];
    if (v6() > v5)
    {
      v7 = v0[12];
      v8 = v6();
      if (v8 >= v7)
      {
        v1 = (v8 - v7);
        if (qword_280886D00 == -1)
        {
LABEL_5:
          swift_beginAccess();
          v9 = v1 / *&qword_280893A08 / 1000000000.0 * 1000.0;
          sub_27237820C();
          MEMORY[0x2743C4AD0](0xD00000000000002BLL, 0x800000027238A150);
          sub_2721F065C(&qword_280881CB0, qword_27237D820);
          v10 = swift_allocObject();
          v11 = MEMORY[0x277D839F8];
          *(v10 + 16) = xmmword_27237AF80;
          v12 = MEMORY[0x277D83A80];
          *(v10 + 56) = v11;
          *(v10 + 64) = v12;
          *(v10 + 32) = v9;
          v13 = sub_27237786C();
          MEMORY[0x2743C4AD0](v13);

          MEMORY[0x2743C4AD0](0x6120736365736D20, 0xEA00000000006F67);
          sub_2722032B4();
LABEL_6:
          swift_allocError();
          *v14 = 0;
          v14[1] = 0xE000000000000000;
          swift_willThrow();

          v15 = v0[1];
          goto LABEL_22;
        }

LABEL_27:
        swift_once();
        goto LABEL_5;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }
  }

  else
  {
    (*(v4 + 208))(v0[12]);
  }

  v16 = v0[13];
  v17 = v0[11];
  (*(*v16 + 232))(v0[12]);
  v19 = (*(*v16 + 192))(v0 + 2);
  v20 = *(v17 + 16);
  v21 = *(*v18 + 24);
  v22 = v21 + v20;
  if (__OFADD__(v21, v20))
  {
    __break(1u);
    goto LABEL_26;
  }

  v23 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v23;
  if (*(*v23 + 16) < v22 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2722374C0(isUniquelyReferenced_nonNull_native, v22, 0);
    v25 = *v23;
  }

  sub_27223766C((v25 + 16), v25 + 40, (v0[11] + 32), v20);
  v26 = v0[13];
  v27 = v19(v0 + 2, 0);
  v28 = (*(*v26 + 296))(v27);
  if ((v29 & 1) == 0)
  {
    v30 = v28;
    v31 = *(*v0[13] + 176);
    v32 = *(v31() + 24);

    if (v30 < v32)
    {
      sub_27237820C();
      v33 = MEMORY[0x2743C4AD0](0xD000000000000082, 0x800000027238A0C0);
      v34 = *((v31)(v33) + 24);

      v0[9] = v34;
      v35 = sub_27237862C();
      MEMORY[0x2743C4AD0](v35);

      MEMORY[0x2743C4AD0](0x203A78614D20, 0xE600000000000000);
      v0[10] = v30;
      v36 = sub_27237862C();
      MEMORY[0x2743C4AD0](v36);

      sub_2722381C0();
      goto LABEL_6;
    }
  }

  v37 = (*(*v0[13] + 272))(v28);
  if ((v38 & 1) == 0)
  {
    v39 = v37;
    v40 = *((*(*v0[13] + 176))() + 24);

    if (v40 >= v39)
    {
      v42 = v0[18];
      v43 = v0[14];
      v44 = v0[15];
      (*(*v0[13] + 392))(v41);
      v45 = (*(v44 + 48))(v42, 1, v43);
      v46 = v0[18];
      if (v45)
      {
        sub_2721F40F0(v0[18], &qword_280881CA0, qword_27237D808);
      }

      else
      {
        v48 = v0[15];
        v47 = v0[16];
        v49 = v0[14];
        (*(v48 + 16))(v47, v0[18], v49);
        sub_2721F40F0(v46, &qword_280881CA0, qword_27237D808);
        sub_272377BEC();
        (*(v48 + 8))(v47, v49);
      }

      v50 = v0[17];
      v51 = v0[13];
      (*(v0[15] + 56))(v50, 1, 1, v0[14]);
      (*(*v51 + 400))(v50);
      (*(*v51 + 280))(0, 1);
    }
  }

  v15 = v0[1];
LABEL_22:

  return v15();
}

double sub_2722310BC(unint64_t a1)
{
  if (qword_280886D00 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = a1;
  swift_beginAccess();
  return v1 / *&qword_280893A08 / 1000000000.0;
}

uint64_t sub_27223115C()
{
  v1[2] = v0;
  v2 = sub_27237728C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_2721F065C(&qword_280881CA0, qword_27237D808);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_2721F065C(&qword_280881C98, &qword_27237D800);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722312C8, v0, 0);
}

uint64_t sub_2722312C8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  v5 = (*(*v4 + 256))(1);
  (*(*v4 + 392))(v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2721F40F0(v0[7], &qword_280881CA0, qword_27237D808);
  }

  else
  {
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v9 = sub_2722C389C();
    (*(v7 + 16))(v6, v9, v8);
    v10 = sub_27237725C();
    v11 = sub_272377E7C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2721E4000, v10, v11, "stop ingestion buffer", v12, 2u);
      MEMORY[0x2743C69C0](v12, -1, -1);
    }

    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[8];
    v17 = v0[5];
    v16 = v0[6];
    v18 = v0[3];
    v19 = v0[4];
    v20 = v0[2];

    (*(v19 + 8))(v17, v18);
    sub_272377BEC();
    (*(v14 + 56))(v16, 1, 1, v15);
    (*(*v20 + 400))(v16);
    (*(v14 + 8))(v13, v15);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_272231580(char a1, uint64_t a2, char a3)
{
  *(v4 + 153) = a3;
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 152) = a1;
  v5 = sub_27237728C();
  *(v4 + 88) = v5;
  *(v4 + 96) = *(v5 - 8);
  *(v4 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272231648, v3, 0);
}

uint64_t sub_272231648()
{
  v1 = *(v0 + 80);
  *(v0 + 112) = (*(*v1 + 368))();
  v2 = *(*v1 + 248);
  v3 = (*v1 + 248) & 0xFFFFFFFFFFFFLL | 0xC7C5000000000000;
  *(v0 + 120) = v2;
  *(v0 + 128) = v3;
  if ((v2() & 1) == 0)
  {
    v4 = 72;
    if (*(v0 + 153))
    {
      v4 = 112;
    }

    v5 = *(v0 + v4);
    v6 = *((*(**(v0 + 80) + 176))() + 24);

    if (v6 < v5)
    {
      if (((*(**(v0 + 80) + 344))(v7) & 1) == 0 || (v8 = *(v0 + 152), ((*(**(v0 + 80) + 320))() & 1) == 0) && !v8)
      {
        v9 = *(v0 + 80);
        v10 = 72;
        if (*(v0 + 153))
        {
          v10 = 112;
        }

        v11 = *(v0 + v10);
        sub_272238700(&qword_280881CB8, type metadata accessor for IngestionAudioBufferActor, &unk_27237D920);
        v12 = swift_task_alloc();
        *(v0 + 136) = v12;
        *(v12 + 16) = v9;
        *(v12 + 24) = v11;
        v13 = swift_task_alloc();
        *(v0 + 144) = v13;
        *v13 = v0;
        v13[1] = sub_272231DB0;

        return MEMORY[0x2822007B8]();
      }

      v37 = *(v0 + 96);
      v36 = *(v0 + 104);
      v38 = *(v0 + 88);
      v39 = sub_2722C389C();
      (*(v37 + 16))(v36, v39, v38);
      v40 = sub_27237725C();
      v41 = sub_272377E8C();
      v42 = os_log_type_enabled(v40, v41);
      v44 = *(v0 + 96);
      v43 = *(v0 + 104);
      v45 = *(v0 + 88);
      if (v42)
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_2721E4000, v40, v41, "Not enough audio in buffer...nil", v46, 2u);
        MEMORY[0x2743C69C0](v46, -1, -1);
      }

      (*(v44 + 8))(v43, v45);
      goto LABEL_14;
    }
  }

  if (((*(v0 + 120))() & 1) == 0)
  {
    v18 = 72;
    if (*(v0 + 153))
    {
      v18 = 112;
    }

    v19 = *(v0 + v18);
    if (v19 < 0)
    {
      __break(1u);
    }

    else
    {
      v20 = (*(**(v0 + 80) + 176))();
      if (*(v20 + 24) >= v19)
      {
        v21 = v20;
        v22 = 72;
        if (*(v0 + 153))
        {
          v22 = 112;
        }

        v23 = *(v0 + v22);
        if (v23)
        {
          v14 = sub_27223743C(*(v0 + v22), 0);
          *(v0 + 48) = 0;
          *(v0 + 56) = v23;
          *(v0 + 64) = v21;
          v24 = swift_task_alloc();
          *(v24 + 16) = v14 + 4;
          *(v24 + 24) = v23;
          v25 = swift_task_alloc();
          v25[2] = v0 + 48;
          v25[3] = sub_272238214;
          v25[4] = v24;

          sub_272237D54(v21 + 2, (v21 + 5), sub_272238248);
          v27 = v26;
          v29 = v28;

          if ((v27 & 1) == 0)
          {
            v47 = 72;
            if (*(v0 + 153))
            {
              v47 = 112;
            }

            v48 = *(v0 + v47);

            if (v29 == v48)
            {
LABEL_46:

              v50 = *(v0 + 80);
              v51 = v50[18];
              v52 = MEMORY[0x277D85000];
              v53 = *((*MEMORY[0x277D85000] & *v51) + 0xD0);
              v54 = v53(v49);
              v55 = (*(*v50 + 192))(v0 + 16);
              if ((v54 & 0x8000000000000000) == 0)
              {
                v57 = v55;
                v58 = v56;
                if (*(*v56 + 24) >= v54)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_272237B98();
                  }

                  sub_272237C38((*v58 + 16), *v58 + 40, v54);
                  v59 = *(v0 + 80);
                  v60 = v57(v0 + 16, 0);
                  v61 = v53(v60);
                  v62 = v61 / (*((*v52 & *v51) + 0xA0))();
                  v63 = (*(*v59 + 200))();
                  v15 = sub_272238268(v63, v62);
                  (*(*v59 + 208))();
                  (*(*v59 + 352))(1);
                  goto LABEL_15;
                }

LABEL_54:
                __break(1u);
                return MEMORY[0x2822007B8]();
              }

LABEL_53:
              __break(1u);
              goto LABEL_54;
            }

            __break(1u);
LABEL_45:

            goto LABEL_46;
          }

          if (v21[3] >= 1)
          {
            v30 = 0;
            do
            {
              v31 = v30 + 1;
              v32 = (*(v0 + 153) & 1) != 0 ? 112 : 72;
              v33 = *(v0 + v32);
              v34 = v21[4];
              v35 = v30 + v34 >= v21[2] ? v21[2] : 0;
              *(v14 + v30 + 8) = *(v21 + v30 + v34 - v35 + 10);
              if (v31 == v33)
              {
                goto LABEL_45;
              }

              ++v30;
            }

            while (v31 < v21[3]);
          }

          __break(1u);
        }

        v14 = MEMORY[0x277D84F90];
        goto LABEL_46;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

LABEL_14:
  v14 = 0;
  v15 = 0;
LABEL_15:

  v16 = *(v0 + 8);

  return v16(v14, v15);
}

uint64_t sub_272231DB0()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_272231EDC, v1, 0);
}

uint64_t sub_272231EDC()
{
  if (((*(v0 + 120))() & 1) == 0)
  {
    v1 = 72;
    if (*(v0 + 153))
    {
      v1 = 112;
    }

    v2 = *(v0 + v1);
    v3 = *((*(**(v0 + 80) + 176))() + 24);

    if (v3 < v2)
    {
      if (((*(**(v0 + 80) + 344))(v4) & 1) == 0 || (v5 = *(v0 + 152), ((*(**(v0 + 80) + 320))() & 1) == 0) && !v5)
      {
        v6 = *(v0 + 80);
        v7 = 72;
        if (*(v0 + 153))
        {
          v7 = 112;
        }

        v8 = *(v0 + v7);
        sub_272238700(&qword_280881CB8, type metadata accessor for IngestionAudioBufferActor, &unk_27237D920);
        v9 = swift_task_alloc();
        *(v0 + 136) = v9;
        *(v9 + 16) = v6;
        *(v9 + 24) = v8;
        v10 = swift_task_alloc();
        *(v0 + 144) = v10;
        *v10 = v0;
        v10[1] = sub_272231DB0;

        return MEMORY[0x2822007B8]();
      }

      v34 = *(v0 + 96);
      v33 = *(v0 + 104);
      v35 = *(v0 + 88);
      v36 = sub_2722C389C();
      (*(v34 + 16))(v33, v36, v35);
      v37 = sub_27237725C();
      v38 = sub_272377E8C();
      v39 = os_log_type_enabled(v37, v38);
      v41 = *(v0 + 96);
      v40 = *(v0 + 104);
      v42 = *(v0 + 88);
      if (v39)
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_2721E4000, v37, v38, "Not enough audio in buffer...nil", v43, 2u);
        MEMORY[0x2743C69C0](v43, -1, -1);
      }

      (*(v41 + 8))(v40, v42);
      goto LABEL_14;
    }
  }

  if (((*(v0 + 120))() & 1) == 0)
  {
    v15 = 72;
    if (*(v0 + 153))
    {
      v15 = 112;
    }

    v16 = *(v0 + v15);
    if (v16 < 0)
    {
      __break(1u);
    }

    else
    {
      v17 = (*(**(v0 + 80) + 176))();
      if (*(v17 + 24) >= v16)
      {
        v18 = v17;
        v19 = 72;
        if (*(v0 + 153))
        {
          v19 = 112;
        }

        v20 = *(v0 + v19);
        if (v20)
        {
          v11 = sub_27223743C(*(v0 + v19), 0);
          *(v0 + 48) = 0;
          *(v0 + 56) = v20;
          *(v0 + 64) = v18;
          v21 = swift_task_alloc();
          *(v21 + 16) = v11 + 4;
          *(v21 + 24) = v20;
          v22 = swift_task_alloc();
          v22[2] = v0 + 48;
          v22[3] = sub_272238214;
          v22[4] = v21;

          sub_272237D54(v18 + 2, (v18 + 5), sub_272238248);
          v24 = v23;
          v26 = v25;

          if ((v24 & 1) == 0)
          {
            v44 = 72;
            if (*(v0 + 153))
            {
              v44 = 112;
            }

            v45 = *(v0 + v44);

            if (v26 == v45)
            {
LABEL_46:

              v47 = *(v0 + 80);
              v48 = v47[18];
              v49 = MEMORY[0x277D85000];
              v50 = *((*MEMORY[0x277D85000] & *v48) + 0xD0);
              v51 = v50(v46);
              v52 = (*(*v47 + 192))(v0 + 16);
              if ((v51 & 0x8000000000000000) == 0)
              {
                v54 = v52;
                v55 = v53;
                if (*(*v53 + 24) >= v51)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_272237B98();
                  }

                  sub_272237C38((*v55 + 16), *v55 + 40, v51);
                  v56 = *(v0 + 80);
                  v57 = v54(v0 + 16, 0);
                  v58 = v50(v57);
                  v59 = v58 / (*((*v49 & *v48) + 0xA0))();
                  v60 = (*(*v56 + 200))();
                  v12 = sub_272238268(v60, v59);
                  (*(*v56 + 208))();
                  (*(*v56 + 352))(1);
                  goto LABEL_15;
                }

LABEL_54:
                __break(1u);
                return MEMORY[0x2822007B8]();
              }

LABEL_53:
              __break(1u);
              goto LABEL_54;
            }

            __break(1u);
LABEL_45:

            goto LABEL_46;
          }

          if (v18[3] >= 1)
          {
            v27 = 0;
            do
            {
              v28 = v27 + 1;
              v29 = (*(v0 + 153) & 1) != 0 ? 112 : 72;
              v30 = *(v0 + v29);
              v31 = v18[4];
              v32 = v27 + v31 >= v18[2] ? v18[2] : 0;
              *(v11 + v27 + 8) = *(v18 + v27 + v31 - v32 + 10);
              if (v28 == v30)
              {
                goto LABEL_45;
              }

              ++v27;
            }

            while (v28 < v18[3]);
          }

          __break(1u);
        }

        v11 = MEMORY[0x277D84F90];
        goto LABEL_46;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

LABEL_14:
  v11 = 0;
  v12 = 0;
LABEL_15:

  v13 = *(v0 + 8);

  return v13(v11, v12);
}

uint64_t sub_2722325F0()
{
  v1 = (*(*v0 + 192))(v5);
  v3 = v2;

  *v3 = *sub_272376ECC();

  return v1(v5, 0);
}

uint64_t sub_27223267C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2721F065C(&qword_280881CA0, qword_27237D808);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_2721F065C(&qword_280881C98, &qword_27237D800);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  (*(*a2 + 400))(v8);
  return (*(*a2 + 280))(a3, 0);
}

uint64_t sub_272232800()
{

  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions25IngestionAudioBufferActor_continuation, &qword_280881CA0, qword_27237D808);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_272232860@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions16VARequestContext_uuid;
  swift_beginAccess();
  v4 = sub_272376E5C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2722328E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions16VARequestContext_uuid;
  swift_beginAccess();
  v4 = sub_272376E5C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_272232B08(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_272232C0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions16VARequestContext_checkerWindow;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_272232CC4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions16VARequestContext_runtimeParameters;
  swift_beginAccess();
  return sub_272216374(v1 + v3, a1);
}

uint64_t sub_272232D3C(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  a3(a1, v3 + v6);
  return swift_endAccess();
}

uint64_t sub_272232E00(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_272232E50(a1, a2);
  return v4;
}

void sub_272232E50(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_272376E5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC12VoiceActions16VARequestContext_stopProcessingActor;
  type metadata accessor for StopProcessingActor();
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v11 + 112) = 0;
  *(v3 + v10) = v11;
  v29 = OBJC_IVAR____TtC12VoiceActions16VARequestContext_checkerWindow;
  *(v3 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_checkerWindow) = 0;
  sub_272376E4C();
  (*(v7 + 32))(v3 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_uuid, v9, v6);
  *(v3 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_results) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_configuration) = a1;
  v12 = MEMORY[0x277D85000];
  v13 = *((*MEMORY[0x277D85000] & *a1) + 0x88);
  v14 = a1;
  v15 = v13();
  LOBYTE(a1) = *(a2 + 49);
  v16 = *(a2 + 40);
  LOBYTE(v7) = *(a2 + 48);
  type metadata accessor for IngestionAudioBufferActor(0);
  swift_allocObject();
  v17 = sub_272238070(v15, a1, v16, v7);

  *(v3 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_ingestionBufferActor) = v17;
  sub_272216374(a2, v3 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_runtimeParameters);
  type metadata accessor for VAFixedLengthQueue();
  v18 = v13();
  v19 = (*((*v12 & *v18) + 0x100))();

  *(v3 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_predictionWindow) = sub_272255908(v19);
  if (*(a2 + 120))
  {
    sub_272216BD8(a2);

    v20 = 0;
LABEL_8:
    v28 = v29;
    swift_beginAccess();
    *(v3 + v28) = v20;

    return;
  }

  v21 = *(a2 + 112);
  v22 = v13();
  v23 = (*((*v12 & *v22) + 0xA0))();

  v24 = v21 * v23;
  if (COERCE__INT64(fabs(v24)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v25 = v24;
  v26 = v13();
  v27 = (*((*v12 & *v26) + 0x100))();

  if (!__OFADD__(v25, v27))
  {
    v20 = sub_272255908(v25 + v27);

    sub_272216BD8(a2);
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_27223322C(uint64_t a1)
{
  v3 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for VARuntimeParameters(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_272216374(a1, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(*v1 + 320))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_272377C3C();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  sub_272216374(a1, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  sub_2722164B8(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_272233784(0, 0, v5, &unk_27237D848, v12);
}

uint64_t sub_272233440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_272233464, 0, 0);
}

uint64_t sub_272233464()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 56);
    v3 = *(Strong + OBJC_IVAR____TtC12VoiceActions16VARequestContext_ingestionBufferActor);
    *(v0 + 72) = v3;

    v4 = *(v2 + 49);
    v5 = *(v2 + 40);
    v6 = *(v2 + 48);
    v10 = (*(*v3 + 424) + **(*v3 + 424));
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_272233644;

    return v10(v4, v5, v6);
  }

  else
  {
    **(v0 + 40) = 1;
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_272233644()
{

  return MEMORY[0x2822009F8](sub_27223375C, 0, 0);
}

uint64_t sub_272233784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2721F07F4(a3, v25 - v10, &qword_2808819D8, &qword_27237CB50);
  v12 = sub_272377C3C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2721F40F0(v11, &qword_2808819D8, &qword_27237CB50);
  }

  else
  {
    sub_272377C2C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_272377BDC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2723778BC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_2721F065C(&qword_280881D70, &qword_27237DD78);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_2721F065C(&qword_280881D70, &qword_27237DD78);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

unint64_t sub_272233A98(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x416C6C4165766173;
    if (a1 != 2)
    {
      v6 = 0x6F696475416C6C61;
    }

    if (a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7544776F646E6977;
    if (a1 == 7)
    {
      v2 = 0xD000000000000012;
    }

    else
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x73746C75736572;
    if (a1 != 4)
    {
      v3 = 0xD000000000000016;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_272233BD4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE200000000000000;
    v12 = 25705;
    v13 = 0x416C6C4165766173;
    v14 = 0xEC0000006F696475;
    if (a1 != 2)
    {
      v13 = 0x6F696475416C6C61;
      v14 = 0xE800000000000000;
    }

    if (a1)
    {
      v12 = 0xD000000000000011;
      v11 = 0x800000027238A020;
    }

    if (a1 <= 1u)
    {
      v9 = v12;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v14;
    }
  }

  else
  {
    v3 = 0x7544776F646E6977;
    v4 = 0xEE006E6F69746172;
    v5 = 0x800000027238A080;
    if (a1 == 7)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v5 = 0x800000027238A0A0;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0xE700000000000000;
    v8 = 0x73746C75736572;
    if (a1 != 4)
    {
      v8 = 0xD000000000000016;
      v7 = 0x800000027238A050;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xEC0000006F696475;
        if (v9 != 0x416C6C4165766173)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v15 = 0xE800000000000000;
        if (v9 != 0x6F696475416C6C61)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_52;
    }

    if (!a2)
    {
      v15 = 0xE200000000000000;
      if (v9 != 25705)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v16 = "validatedKeywords";
    goto LABEL_49;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v15 = 0xEE006E6F69746172;
      if (v9 != 0x7544776F646E6977)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    if (a2 == 7)
    {
      v15 = 0x800000027238A080;
      if (v9 != 0xD000000000000012)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v16 = "runtimeParameters";
LABEL_49:
    v15 = (v16 - 32) | 0x8000000000000000;
    if (v9 != 0xD000000000000011)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (a2 == 4)
  {
    v15 = 0xE700000000000000;
    if (v9 != 0x73746C75736572)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v15 = 0x800000027238A050;
    if (v9 != 0xD000000000000016)
    {
LABEL_54:
      v17 = sub_27237865C();
      goto LABEL_55;
    }
  }

LABEL_52:
  if (v10 != v15)
  {
    goto LABEL_54;
  }

  v17 = 1;
LABEL_55:

  return v17 & 1;
}

uint64_t sub_272233EC8()
{
  v1 = *v0;
  sub_27237874C();
  sub_272233F18(v3, v1);
  return sub_27237878C();
}

uint64_t sub_272233F18(uint64_t a1, unsigned __int8 a2)
{
  sub_27237790C();
}

uint64_t sub_27223407C(uint64_t a1)
{
  v2 = *v1;
  sub_27237874C();
  sub_272233F18(v4, v2);
  return sub_27237878C();
}

unint64_t sub_2722340C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_272238660(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2722340F0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_272233A98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_272234138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_272238660(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27223416C(uint64_t a1)
{
  v2 = sub_2722386AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2722341A8(uint64_t a1)
{
  v2 = sub_2722386AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2722341E4()
{
  sub_27237874C();
  sub_27237790C();
  return sub_27237878C();
}

uint64_t sub_272234258(uint64_t a1)
{
  sub_27237874C();
  sub_27237790C();
  return sub_27237878C();
}

uint64_t sub_2722342AC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_27237840C();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_27223433C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_27237840C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2722343A0(uint64_t a1)
{
  v2 = sub_272238FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2722343DC(uint64_t a1)
{
  v2 = sub_272238FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_272234418(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for VARuntimeParameters(0);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2721F065C(&qword_280881CC0, &qword_27237D850);
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v50 - v7;
  v8 = sub_272376E5C();
  v56 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2721F065C(&qword_280881CC8, &qword_27237D858);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - v13;
  sub_27220300C(a1, a1[3]);
  sub_2722386AC();
  v15 = sub_2723787CC();
  (*(*v2 + 144))(v15);
  LOBYTE(v58) = 0;
  sub_272238700(&qword_280881CD8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  v16 = v57;
  sub_2723785DC();
  if (v16)
  {
    (*(v56 + 8))(v10, v8);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v57 = v12;
    (*(v56 + 8))(v10, v8);
    v18 = OBJC_IVAR____TtC12VoiceActions16VARequestContext_configuration;
    v19 = *(v2 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_configuration);
    v20 = MEMORY[0x277D85000];
    v21 = *((*MEMORY[0x277D85000] & *v19) + 0x88);
    v22 = v19;
    v23 = v21();

    (*((*v20 & *v23) + 0x1A8))();
    nullsub_1();
    v58 = v24;
    LOBYTE(v62) = 6;
    sub_272238748();
    sub_2723785DC();
    v25 = *(v2 + v18);
    v26 = v20;
    v27 = *((*v20 & *v25) + 0x88);
    v28 = v25;
    v29 = v27();

    (*((*v26 & *v29) + 0x1B0))();
    nullsub_1();
    v58 = v30;
    LOBYTE(v62) = 7;
    sub_2723785DC();
    LOBYTE(v58) = 5;
    sub_27223879C();
    v56 = v11;
    v51 = v14;
    v31 = sub_27237851C();
    v32 = *(*v2 + 312);
    v33 = v52;
    v50 = v2;
    v32(v31);
    v34 = VARuntimeParameters.keywordsToThresholds.getter();
    result = sub_272216BD8(v33);
    v35 = 0;
    v36 = 1 << *(v34 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & v34[8];
    v39 = (v36 + 63) >> 6;
    for (i = v53; v38; v35 = v41)
    {
      v41 = v35;
LABEL_10:

      nullsub_1();
      v62 = v42;
      sub_272259130();
      v58 = v43;
      v59 = v44;
      v60 = v45;
      v61 = v46 & 1;
      sub_2722387F0();
      sub_2723785DC();
      v38 &= v38 - 1;
    }

    while (1)
    {
      v41 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v41 >= v39)
      {

        v58 = (*(*v50 + 240))(v47);
        LOBYTE(v62) = 4;
        sub_2721F065C(&qword_280881CF8, qword_27237D860);
        sub_272238844();
        v48 = v56;
        v49 = v51;
        sub_2723785DC();

        (*(i + 8))(v55, v54);
        return (*(v57 + 8))(v49, v48);
      }

      v38 = v34[v41 + 8];
      ++v35;
      if (v38)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_272234BC0()
{
  v1[2] = v0;
  v2 = sub_27237728C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272234C8C, 0, 0);
}

uint64_t sub_272234C8C(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[3];
  v4 = v1[4];
  v5 = sub_2722C389C();
  v1[7] = v5;
  v6 = *(v4 + 16);
  v1[8] = v6;
  v1[9] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = sub_27237725C();
  v8 = sub_272377EAC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2721E4000, v7, v8, "RequestContext stop(): started", v9, 2u);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  v10 = v1[6];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[2];

  (*(v12 + 8))(v10, v11);
  v14 = *(v13 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_stopProcessingActor);
  v1[10] = v14;
  v15 = *(*v14 + 120);

  v18 = (v15 + *v15);
  v16 = swift_task_alloc();
  v1[11] = v16;
  *v16 = v1;
  v16[1] = sub_272234E90;

  return v18(1);
}

uint64_t sub_272234E90()
{

  return MEMORY[0x2822009F8](sub_272234FA8, 0, 0);
}

uint64_t sub_272234FA8()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC12VoiceActions16VARequestContext_ingestionBufferActor);
  v0[12] = v1;
  v2 = *(*v1 + 440);

  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_2722350E4;

  return v5();
}

uint64_t sub_2722350E4()
{

  return MEMORY[0x2822009F8](sub_2722351FC, 0, 0);
}

uint64_t sub_2722351FC()
{
  (*(v0 + 64))(*(v0 + 40), *(v0 + 56), *(v0 + 24));
  v1 = sub_27237725C();
  v2 = sub_272377EAC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2721E4000, v1, v2, "RequestContext stop(): stopped", v3, 2u);
    MEMORY[0x2743C69C0](v3, -1, -1);
  }

  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);

  (*(v6 + 8))(v4, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_272235338()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC12VoiceActions16VARequestContext_stopProcessingActor);
  v0[3] = v1;
  v2 = *(*v1 + 128);

  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_27223546C;

  return v5();
}

uint64_t sub_27223546C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_272235584(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2722355A8, 0, 0);
}

uint64_t sub_2722355A8()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC12VoiceActions16VARequestContext_ingestionBufferActor);
  v0[5] = v1;
  v2 = *(*v1 + 432);

  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_2722356EC;
  v5 = v0[2];
  v4 = v0[3];

  return v7(v5, v4);
}

uint64_t sub_2722356EC()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_272235828, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_272235828()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27223588C(uint64_t a1, char a2, char a3)
{
  *(v4 + 81) = a3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  type metadata accessor for VARuntimeParameters(0);
  *(v4 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272235924, 0, 0);
}

uint64_t sub_272235924()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC12VoiceActions16VARequestContext_ingestionBufferActor);
  v2 = *(v0 + 80);
  *(v0 + 40) = v1;
  v3 = *(*v1 + 448);

  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_272235A70;
  v5 = *(v0 + 16);

  return (v7)(0, v5, v2 & 1);
}

uint64_t sub_272235A70(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = v2;

  if (v2)
  {
    v5 = sub_272235F48;
  }

  else
  {

    v5 = sub_272235B90;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_272235B90(uint64_t a1)
{
  v2 = *(v1 + 56);
  if (v2)
  {
    if ((*(v1 + 81) & 1) == 0)
    {
      v3 = *(v1 + 64);
      goto LABEL_11;
    }

    v3 = *(v1 + 64);
  }

  else
  {
    v3 = 0;
    v2 = MEMORY[0x277D84F90];
    if ((*(v1 + 81) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(v1 + 32);
  (*(**(v1 + 24) + 312))(a1);
  v5 = sub_27234F188();
  sub_272216BD8(v4);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC12VoiceActions16VARequestContext_configuration;
    v32 = *(v1 + 24);
    v7 = *(v32 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_configuration);
    v8 = MEMORY[0x277D85000];
    v9 = *((*MEMORY[0x277D85000] & *v7) + 0x88);
    v10 = v7;
    v11 = v9();

    v12 = (*((*v8 & *v11) + 0x100))();
    if (v12 >= 1)
    {
      v13 = *(v1 + 24);
      v14 = (*(*v13 + 264))();
      v15 = *(v32 + v6);
      v16 = *((*v8 & *v15) + 0x88);
      v17 = v15;
      v18 = v16();
      v19 = MEMORY[0x277D85000];
      v20 = v18;

      v21 = (*((*v19 & *v20) + 0xD0))();
      (*(*v14 + 152))(v2, v21);

      v23 = (*(*v13 + 288))(v22);
      if (v23)
      {
        v24 = v23;
        v25 = *(v32 + v6);
        v26 = *((*v19 & *v25) + 0x88);
        v27 = v25;
        v28 = v26();

        v29 = (*((*v19 & *v28) + 0xD0))();
        (*(*v24 + 152))(v2, v29);
      }
    }
  }

LABEL_11:

  v30 = *(v1 + 8);

  return v30(v2, v3);
}

uint64_t sub_272235F48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_272235FB4()
{
  v1 = v0;
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VARuntimeParameters(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 312))(v7);
  v10 = sub_27234F188();
  v11 = sub_272216BD8(v9);
  if ((v10 & 1) == 0)
  {
    v12 = sub_2722C389C();
    (*(v3 + 16))(v5, v12, v2);
    v13 = sub_27237725C();
    v14 = sub_272377E8C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2721E4000, v13, v14, "Attempted to look at prediction window. This is not maintained unless returnKeywordAudio is true.", v15, 2u);
      MEMORY[0x2743C69C0](v15, -1, -1);
    }

    v11 = (*(v3 + 8))(v5, v2);
  }

  v16 = (*(*v1 + 264))(v11);
  v17 = (*(*v16 + 168))(v16);

  return v17;
}

uint64_t sub_272236214()
{
  v1 = v0;
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VARuntimeParameters(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 312))(v7);
  v10 = sub_27234F188();
  v11 = sub_272216BD8(v9);
  if ((v10 & 1) == 0)
  {
    v12 = sub_2722C389C();
    (*(v3 + 16))(v5, v12, v2);
    v13 = sub_27237725C();
    v14 = sub_272377E8C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2721E4000, v13, v14, "Attempted to look at checker window. This is not maintained unless returnKeywordAudio is true.", v15, 2u);
      MEMORY[0x2743C69C0](v15, -1, -1);
    }

    v11 = (*(v3 + 8))(v5, v2);
  }

  v16 = (*(*v1 + 288))(v11);
  if (!v16)
  {
    return 0;
  }

  v17 = (*(*v16 + 168))(v16);

  return v17;
}

uint64_t sub_272236480(uint64_t a1)
{
  v4 = sub_27237728C();
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v49 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2721F065C(&qword_280881D10, &qword_2723857A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v48 - v7;
  v9 = type metadata accessor for VARuntimeParameters(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v48 - v14;
  (*(*a1 + 208))(&v53, v13);
  v16 = v54;
  if (!v54)
  {
    v19 = 0x800000027238A1B0;
    sub_2722032B4();
    swift_allocError();
    v21 = 0xD000000000000029;
LABEL_19:
    *v20 = v21;
    v20[1] = v19;
    return swift_willThrow();
  }

  v48[0] = v4;
  v48[1] = v2;
  v17 = v55;
  if (v57)
  {
    v18 = v56;
    v16 = v57;
  }

  else
  {
    v18 = v53;
  }

  v22 = *(*v1 + 312);

  v51 = v1;
  v22(v23);
  v24 = VARuntimeParameters.keywordsToThresholds.getter();
  sub_272216BD8(v15);
  if (!v24[2] || (v25 = sub_27220038C(v18, v16), (v26 & 1) == 0))
  {
    sub_2721F40F0(&v53, &qword_2808819E0, &qword_27237D890);

    v52[0] = 0;
    v52[1] = 0xE000000000000000;
    sub_27237820C();

    strcpy(v52, "missing key ");
    BYTE5(v52[1]) = 0;
    HIWORD(v52[1]) = -5120;
    MEMORY[0x2743C4AD0](v18, v16);

    v43 = MEMORY[0x2743C4AD0](544106784, 0xE400000000000000);
    v22(v43);
    v44 = VARuntimeParameters.keywordsToThresholds.getter();
    sub_272216BD8(v12);
    v58 = v44;
    sub_2721F065C(&qword_280881D18, qword_27237D898);
    sub_2722199BC(&qword_280881D20, &qword_280881D18, qword_27237D898, MEMORY[0x277D83480]);
    sub_272203AC4();
    v45 = sub_272377A7C();
    v47 = v46;

    MEMORY[0x2743C4AD0](v45, v47);

    v21 = v52[0];
    v19 = v52[1];
    sub_2722032B4();
    swift_allocError();
    goto LABEL_19;
  }

  v27 = v25;

  v28 = *(v24[7] + 4 * v27);

  result = sub_2721F40F0(&v53, &qword_2808819E0, &qword_27237D890);
  if (v28 < v17)
  {
    v30 = v51;
    (*(*v51 + 144))(result);
    v31 = sub_272376E5C();
    (*(*(v31 - 8) + 56))(v8, 0, 1, v31);
    v32 = (*(*a1 + 336))(v8);
    v33 = (*(*v30 + 240))(v32);
    if (v33 >> 62)
    {
      v34 = sub_2723783AC();
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFADD__(v34, 1))
    {
      __break(1u);
    }

    else
    {
      v35 = (*(*a1 + 384))(v34 + 1);
      if ((*(*a1 + 496))(v35) == 2)
      {
        v36 = sub_2722C389C();
        (*(v50 + 16))(v49, v36, v48[0]);
        v37 = sub_27237725C();
        v38 = sub_272377E8C();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_2721E4000, v37, v38, "How is this?", v39, 2u);
          MEMORY[0x2743C69C0](v39, -1, -1);
        }

        (*(v50 + 8))(v49, v48[0]);
      }

      v30 = (*(*v30 + 256))(v52);
      v41 = v40;

      MEMORY[0x2743C4C30](v42);
      if (*((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_17;
      }
    }

    sub_272377B2C();
LABEL_17:
    sub_272377B7C();
    return v30(v52, 0);
  }

  return result;
}

uint64_t sub_272236BC0()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC12VoiceActions16VARequestContext_ingestionBufferActor);
  v0[3] = v1;
  v2 = *v1 + 456;
  v0[4] = *v2;
  v0[5] = v2 & 0xFFFFFFFFFFFFLL | 0x7C21000000000000;

  return MEMORY[0x2822009F8](sub_272236C64, v1, 0);
}

uint64_t sub_272236C64()
{
  (*(v0 + 32))();

  v1 = *(v0 + 8);

  return v1();
}

char *sub_272236CD0()
{
  v1 = v0;
  v2 = sub_27237788C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_272376AFC();
  MEMORY[0x28223BE20](v5);
  sub_272376B3C();
  swift_allocObject();
  sub_272376B2C();
  sub_2721F065C(&qword_280881C70, &unk_27237D640);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_27237AFB0;
  sub_272376ADC();
  sub_272376ACC();
  sub_272376AEC();
  v17 = v6;
  sub_272238700(&qword_280881C78, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_2721F065C(&qword_280881C80, qword_27237D8B0);
  sub_2722199BC(&qword_280881C88, &qword_280881C80, qword_27237D8B0, MEMORY[0x277D83970]);
  sub_27237815C();
  sub_272376B0C();
  v17 = v1;
  type metadata accessor for VARequestContext(0);
  sub_272238700(&qword_280881D28, type metadata accessor for VARequestContext, &unk_27237DBC8);
  v7 = v16[1];
  v8 = sub_272376B1C();
  if (!v7)
  {
    v10 = v8;
    v11 = v9;
    sub_27237787C();
    v12 = sub_27237784C();
    if (v13)
    {
      v4 = v12;
      sub_2721F05C8(v10, v11);

      return v4;
    }

    v4 = 0x800000027238A1E0;
    sub_2722032B4();
    swift_allocError();
    *v15 = 0xD00000000000001CLL;
    v15[1] = 0x800000027238A1E0;
    swift_willThrow();
    sub_2721F05C8(v10, v11);
  }

  return v4;
}

uint64_t sub_27223702C(uint64_t a1)
{
  v3 = type metadata accessor for VARuntimeParameters(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 312))(v4);
  (*(*a1 + 216))(v6);
  return sub_272216BD8(v6);
}

uint64_t sub_27223711C()
{
  v1 = v0;
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2722C389C();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_27237725C();
  v8 = sub_272377EAC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2721E4000, v7, v8, "deinit VARequestContext", v9, 2u);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC12VoiceActions16VARequestContext_uuid;
  v11 = sub_272376E5C();
  (*(*(v11 - 8) + 8))(v1 + v10, v11);

  sub_272216BD8(v1 + OBJC_IVAR____TtC12VoiceActions16VARequestContext_runtimeParameters);
  return v1;
}

uint64_t sub_27223732C()
{
  sub_27223711C();

  return swift_deallocClassInstance();
}

double sub_272237384()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  mach_timebase_info(v3);
  LODWORD(v0) = v3[0].denom;
  LODWORD(v1) = v3[0].numer;
  result = v0 / v1;
  qword_280893A08 = *&result;
  return result;
}

void *sub_27223743C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_2721F065C(&qword_280881848, &unk_27237C250);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

uint64_t sub_2722374C0(char a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    sub_2721F065C(&qword_280881D78, &qword_27237DD88);
    v9 = swift_allocObject();
    v12 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v12;
    if (v12 >= 1)
    {
      sub_272237A38(v9 + 16, (v9 + 40), v5, (v4 + 40));
    }
  }

  else
  {
    sub_272376EDC();
    if (a1)
    {
      v8 = *(v4 + 24);
      sub_2721F065C(&qword_280881D78, &qword_27237DD88);
      v9 = swift_allocObject();
      v10 = j__malloc_size(v9);
      v11 = v10 - 40;
      if (v10 < 40)
      {
        v11 = v10 - 37;
      }

      *(v9 + 16) = v11 >> 2;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        sub_272237818(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      sub_2721F065C(&qword_280881D78, &qword_27237DD88);
      v9 = swift_allocObject();
      v13 = j__malloc_size(v9);
      v14 = v13 - 40;
      if (v13 < 40)
      {
        v14 = v13 - 37;
      }

      v15 = *(v4 + 24);
      *(v9 + 16) = v14 >> 2;
      *(v9 + 24) = v15;
      *(v9 + 32) = 0;
      if (v15 >= 1)
      {
        sub_272237940(v9 + 16, (v9 + 40), v5, (v4 + 40));
      }
    }
  }

  *v3 = v9;
  return result;
}

char *sub_27223766C(char *result, uint64_t a2, char *a3, uint64_t a4)
{
  if (a4 < 1)
  {
    return result;
  }

  v7 = result;
  result = *(result + 1);
  v8 = &result[a4];
  if (__OFADD__(result, a4))
  {
    __break(1u);
    goto LABEL_14;
  }

  v7[1] = v8;
  if (v8 < result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_272237B20(result, v8, v7, a2, &v12);
  v9 = v13;
  v10 = v14;
  if (v14)
  {
    v11 = v15;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v9 = 0;
  }

  if (v15)
  {
    v10 = 0;
  }

  v16 = v12;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  return sub_272237720(a3, a4);
}

char *sub_272237720(char *__src, uint64_t a2)
{
  v3 = __src;
  if ((*(v2 + 32) & 1) == 0)
  {
    v5 = *(v2 + 8);
    if (v5 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (__src && v5)
      {
        v7 = *v2;
        v8 = a2;
        __src = memcpy(v7, v3, 4 * v5);
        a2 = v8;
      }

      v9 = a2;
      if (!__OFADD__(v5, a2 - v5))
      {
        if (a2 >= v5)
        {
          if (!v3)
          {
            return __src;
          }

          a2 -= v5;
          if (v9 == v5)
          {
            return __src;
          }

          if (v6 >= a2)
          {
            v3 += 4 * v5;
            goto LABEL_17;
          }

LABEL_24:
          __break(1u);
          return __src;
        }

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!__src || !a2)
  {
    return __src;
  }

  if (*(v2 + 8) < a2)
  {
    goto LABEL_23;
  }

  v4 = *v2;
LABEL_17:

  return memcpy(v4, v3, 4 * a2);
}

void sub_272237818(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[4 * v4];
  if (v12 != __dst || &v12[4 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 4 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[4 * v8];
  if (v16 != v11 || v16 >= &v11[4 * v7])
  {

    memmove(v16, v11, 4 * v7);
  }
}

void sub_272237940(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 < 1)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if (!__src)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  memcpy(__dst, &__src[4 * v4], 4 * v9);
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(&__dst[4 * v9], v10, 4 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

void sub_272237A38(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (__src)
    {
      memcpy(&__dst[4 * v4], &__src[4 * v4], 4 * v9);
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(__dst, v10, 4 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t sub_272237B20@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3[2];
  v6 = v5 + result;
  v7 = *a3;
  if (v5 + result >= *a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 + a2;
  if (v5 + a2 >= v7)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v12 = v6 - v8;
    v13 = v9 - v10;
    if (v11)
    {
      v14 = v12 < v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (v15 == 1)
    {
      v16 = 0;
      v13 = 0;
LABEL_18:
      *a5 = a4 + 4 * v12;
      *(a5 + 8) = v11;
      *(a5 + 16) = v16;
      *(a5 + 24) = v13;
      *(a5 + 32) = v15;
      return result;
    }

    v11 = v7 - v12;
    if (!__OFSUB__(v7, v12))
    {
      v16 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_272237B98()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  sub_2721F065C(&qword_280881D78, &qword_27237DD88);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_272237A38(v4 + 16, (v4 + 40), v2, (v1 + 40));
  }

  *v0 = v4;
  return result;
}

uint64_t *sub_272237C38(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v4 = result;
    result = sub_272237B20(0, a3, result, a2, v10);
    v5 = v4[2];
    v7 = __OFADD__(v5, a3);
    v6 = v5 + a3;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      v7 = __OFSUB__(v6, *v4);
      if (v6 >= *v4)
      {
        v6 -= *v4;
        if (v7)
        {
          goto LABEL_10;
        }
      }

      v4[2] = v6;
      v8 = v4[1];
      v7 = __OFSUB__(v8, a3);
      v9 = v8 - a3;
      if (!v7)
      {
        v4[1] = v9;
        return result;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  return result;
}

char *sub_272237CD4(char *__src, uint64_t a2, void *__dst, uint64_t a4)
{
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v4 = a4;
    }

    else
    {
      v4 = a2;
    }

    v5 = __src;
    memcpy(__dst, __src, 4 * v4);
    return &v5[4 * v4];
  }

  return __src;
}

void *sub_272237D54(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v6, a2 + 4 * v4, result[1]);
  if (!v3)
  {
    return v6;
  }

  return result;
}

void *sub_272237DE8@<X0>(void *result@<X0>, void *a2@<X2>, void *(*a3)(__int128 *__return_ptr, char *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __OFSUB__(v7, *a2);
  v9 = v7 - *a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFADD__(v6, v9);
  v10 = v6 + v9;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 - v6;
  if (v10 < v6)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = result + 4 * v6;
  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = a3(&v15, v13, v11);
  if (!v4)
  {
    v14 = v16;
    *a4 = v15;
    *(a4 + 16) = v14;
  }

  return result;
}

uint64_t sub_272237E68(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_272237F5C;

  return v5(v2 + 32);
}

uint64_t sub_272237F5C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_272238070(void *a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  swift_defaultActor_initialize();
  v10 = *sub_272376ECC();
  *(v5 + 152) = 0;
  *(v5 + 136) = 0;
  *(v5 + 112) = v10;
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *(v5 + 160) = 1;
  *(v5 + 168) = 0;
  *(v5 + 176) = 1;
  *(v5 + 178) = 0;
  v11 = OBJC_IVAR____TtC12VoiceActions25IngestionAudioBufferActor_continuation;
  v12 = sub_2721F065C(&qword_280881C98, &qword_27237D800);
  (*(*(v12 - 8) + 56))(v5 + v11, 1, 1, v12);
  *(v5 + 144) = a1;
  swift_beginAccess();
  *(v5 + 168) = a3;
  *(v5 + 176) = a4 & 1;
  *(v5 + 177) = a2;
  v13 = *((*MEMORY[0x277D85000] & *a1) + 0xB8);

  v14 = a1;
  *(v5 + 184) = v13();
  return v5;
}

unint64_t sub_2722381C0()
{
  result = qword_280881CA8;
  if (!qword_280881CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881CA8);
  }

  return result;
}

char *sub_272238214@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = sub_272237CD4(a1, a2, *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
  }

  return result;
}

uint64_t sub_272238268(uint64_t a1, double a2)
{
  v4 = a2 * 1000000000.0;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v4 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 < 1.84467441e19)
  {
    v2 = a1;
    v3 = v4;
    if (qword_280886D00 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  swift_once();
LABEL_5:
  result = swift_beginAccess();
  v6 = *&qword_280893A08 * v3;
  if (COERCE__INT64(fabs(*&qword_280893A08 * v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v6 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 >= 1.84467441e19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = v2 + v6;
  if (__CFADD__(v2, v6))
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_2722383D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VARuntimeParameters(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_27223843C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_272238474()
{
  v1 = (type metadata accessor for VARuntimeParameters(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[29];
  v6 = sub_272376EBC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27223857C(uint64_t a1)
{
  v4 = *(type metadata accessor for VARuntimeParameters(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_272211DBC;

  return sub_272233440(a1, v7, v8, v6, v1 + v5);
}

unint64_t sub_272238660(uint64_t a1, uint64_t a2)
{
  v2 = sub_27237840C();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2722386AC()
{
  result = qword_280881CD0;
  if (!qword_280881CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881CD0);
  }

  return result;
}

uint64_t sub_272238700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_272238748()
{
  result = qword_280881CE0;
  if (!qword_280881CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881CE0);
  }

  return result;
}

unint64_t sub_27223879C()
{
  result = qword_280881CE8;
  if (!qword_280881CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881CE8);
  }

  return result;
}

unint64_t sub_2722387F0()
{
  result = qword_280881CF0;
  if (!qword_280881CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881CF0);
  }

  return result;
}

unint64_t sub_272238844()
{
  result = qword_280881D00;
  if (!qword_280881D00)
  {
    sub_2721F214C(&qword_280881CF8, qword_27237D860);
    sub_272238700(&qword_280881D08, type metadata accessor for VAInstrumentedKeywordResult, &protocol conformance descriptor for VAKeywordResult);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881D00);
  }

  return result;
}

unint64_t sub_27223891C()
{
  result = qword_280881D30;
  if (!qword_280881D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881D30);
  }

  return result;
}

unint64_t sub_272238974()
{
  result = qword_280881D38;
  if (!qword_280881D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881D38);
  }

  return result;
}

unint64_t sub_2722389CC()
{
  result = qword_280881D40;
  if (!qword_280881D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881D40);
  }

  return result;
}

unint64_t sub_272238A24()
{
  result = qword_280881D48;
  if (!qword_280881D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881D48);
  }

  return result;
}

unint64_t sub_272238A7C()
{
  result = qword_280881D50;
  if (!qword_280881D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881D50);
  }

  return result;
}

unint64_t sub_272238AD4()
{
  result = qword_280881D58;
  if (!qword_280881D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881D58);
  }

  return result;
}

void sub_272238B40(uint64_t a1)
{
  sub_272238C24(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_272238C24(uint64_t a1)
{
  if (!qword_280881D60)
  {
    sub_2721F214C(&qword_280881C98, &qword_27237D800);
    v1 = sub_27237801C();
    if (!v2)
    {
      atomic_store(v1, &qword_280881D60);
    }
  }
}

uint64_t sub_272238C90(uint64_t a1)
{
  result = sub_272376E5C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for VARuntimeParameters(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VARequestContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VARequestContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VARequestContext.KeywordsCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for VARequestContext.KeywordsCodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_272238FC0()
{
  result = qword_280881D68;
  if (!qword_280881D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881D68);
  }

  return result;
}

uint64_t sub_272239014()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27223904C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_272219D80;

  return sub_272237E68(a1, v4);
}

uint64_t sub_272239104(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_272211DBC;

  return sub_272237E68(a1, v4);
}

void *VASymbolTable.__allocating_init()()
{
  result = swift_allocObject();
  v1 = MEMORY[0x277D84F98];
  result[2] = MEMORY[0x277D84F98];
  result[3] = v1;
  result[4] = v1;
  return result;
}

void *VASymbolTable.init()()
{
  result = v0;
  v2 = MEMORY[0x277D84F98];
  v0[2] = MEMORY[0x277D84F98];
  v0[3] = v2;
  v0[4] = v2;
  return result;
}

unint64_t sub_272239260(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_27237728C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_27237788C();
  MEMORY[0x28223BE20](v9 - 8);
  sub_27237787C();
  result = sub_2723777EC();
  if (v3)
  {
    return result;
  }

  v11 = result;
  v114 = 10;
  v115 = 0xE100000000000000;
  MEMORY[0x28223BE20](result);
  v100[-2] = &v114;
  v13 = v12;

  result = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272204258, &v100[-4], v11, v13, v14);
  v15 = result;
  v100[2] = 0;
  v110 = *(result + 16);
  if (!v110)
  {
LABEL_104:

    v95 = sub_2722C389C();
    (*(v6 + 16))(v8, v95, v5);

    v96 = sub_27237725C();
    v97 = sub_272377E7C();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 134217984;
      v99 = *((*(*v4 + 104))() + 16);

      *(v98 + 4) = v99;

      _os_log_impl(&dword_2721E4000, v96, v97, "Loaded %ld symbols", v98, 0xCu);
      MEMORY[0x2743C69C0](v98, -1, -1);
    }

    else
    {
    }

    return (*(v6 + 8))(v8, v5);
  }

  v100[1] = v13;
  v16 = 0;
  v108 = v8;
  v109 = result + 32;
  v101 = &v114 + 1;
  v105 = v6;
  v106 = v5;
  v107 = v2;
  v104 = result;
  while (2)
  {
    if (v16 >= *(v15 + 16))
    {
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    v111 = v16;
    v17 = (v109 + 32 * v16);
    v18 = *v17;
    v19 = v17[3];
    v20 = *v17 >> 14;
    v21 = v17[1] >> 14;

    v113 = v19;
    if (v20 == v21)
    {
      v22 = MEMORY[0x277D84F90];
      goto LABEL_30;
    }

    v112 = MEMORY[0x277D84F90];
    v23 = v18;
    do
    {
      while (sub_27237807C() != 9 || v27 != 0xE100000000000000)
      {
        v28 = sub_27237865C();

        if (v28)
        {
          goto LABEL_16;
        }

        result = sub_27237803C();
        v20 = result >> 14;
        if (result >> 14 == v21)
        {
          goto LABEL_22;
        }
      }

LABEL_16:
      if (v23 >> 14 != v20)
      {
        if (v20 < v23 >> 14)
        {
          goto LABEL_112;
        }

        v29 = sub_27237808C();
        v102 = v30;
        v103 = v29;
        v32 = v31;
        v34 = v33;
        v35 = v112;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_2721FF9B8(0, *(v35 + 2) + 1, 1, v35);
        }

        v36 = v35;
        v37 = *(v35 + 2);
        v112 = v36;
        v38 = *(v36 + 3);
        if (v37 >= v38 >> 1)
        {
          v112 = sub_2721FF9B8((v38 > 1), v37 + 1, 1, v112);
        }

        v24 = v112;
        *(v112 + 2) = v37 + 1;
        v25 = &v24[32 * v37];
        v26 = v102;
        *(v25 + 4) = v103;
        *(v25 + 5) = v32;
        *(v25 + 6) = v34;
        *(v25 + 7) = v26;
      }

      result = sub_27237803C();
      v23 = result;
      v20 = result >> 14;
    }

    while (result >> 14 != v21);
LABEL_22:
    if (v23 >> 14 == v21)
    {

      v22 = v112;
      goto LABEL_30;
    }

    v39 = v112;
    if (v21 < v23 >> 14)
    {
      goto LABEL_113;
    }

    v40 = sub_27237808C();
    v42 = v41;
    v44 = v43;
    v46 = v45;

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2721FF9B8(0, *(v39 + 2) + 1, 1, v39);
      v39 = result;
    }

    v47 = v39;
    v48 = *(v39 + 2);
    v49 = v47;
    v50 = *(v47 + 3);
    if (v48 >= v50 >> 1)
    {
      result = sub_2721FF9B8((v50 > 1), v48 + 1, 1, v49);
      v49 = result;
    }

    *(v49 + 16) = v48 + 1;
    v51 = (v49 + 32 * v48);
    v22 = v49;
    v51[4] = v40;
    v51[5] = v42;
    v51[6] = v44;
    v51[7] = v46;
LABEL_30:
    if (*(v22 + 2) < 2uLL)
    {
      goto LABEL_110;
    }

    v53 = *(v22 + 8);
    v52 = *(v22 + 9);
    v54 = *(v22 + 10);
    v55 = *(v22 + 11);

    v56 = MEMORY[0x2743C4A20](v53, v52, v54, v55);
    v58 = v57;

    v59 = HIBYTE(v58) & 0xF;
    v60 = v56 & 0xFFFFFFFFFFFFLL;
    if ((v58 & 0x2000000000000000) != 0)
    {
      v61 = HIBYTE(v58) & 0xF;
    }

    else
    {
      v61 = v56 & 0xFFFFFFFFFFFFLL;
    }

    if (!v61)
    {

      v82 = 0;
      v81 = 1;
      goto LABEL_96;
    }

    if ((v58 & 0x1000000000000000) != 0)
    {
      v116 = 0;
      v63 = sub_272200A34(v56, v58, 10);
      v81 = v94;
      goto LABEL_93;
    }

    if ((v58 & 0x2000000000000000) != 0)
    {
      v114 = v56;
      v115 = v58 & 0xFFFFFFFFFFFFFFLL;
      if (v56 == 43)
      {
        if (v59)
        {
          if (--v59)
          {
            v63 = 0;
            v73 = v101;
            while (1)
            {
              v74 = *v73 - 48;
              if (v74 > 9)
              {
                break;
              }

              v75 = 10 * v63;
              if ((v63 * 10) >> 64 != (10 * v63) >> 63)
              {
                break;
              }

              v63 = v75 + v74;
              if (__OFADD__(v75, v74))
              {
                break;
              }

              ++v73;
              if (!--v59)
              {
                goto LABEL_92;
              }
            }
          }

          goto LABEL_91;
        }
      }

      else
      {
        if (v56 != 45)
        {
          if (v59)
          {
            v63 = 0;
            v78 = &v114;
            while (1)
            {
              v79 = *v78 - 48;
              if (v79 > 9)
              {
                break;
              }

              v80 = 10 * v63;
              if ((v63 * 10) >> 64 != (10 * v63) >> 63)
              {
                break;
              }

              v63 = v80 + v79;
              if (__OFADD__(v80, v79))
              {
                break;
              }

              v78 = (v78 + 1);
              if (!--v59)
              {
                goto LABEL_92;
              }
            }
          }

          goto LABEL_91;
        }

        if (v59)
        {
          if (--v59)
          {
            v63 = 0;
            v67 = v101;
            while (1)
            {
              v68 = *v67 - 48;
              if (v68 > 9)
              {
                break;
              }

              v69 = 10 * v63;
              if ((v63 * 10) >> 64 != (10 * v63) >> 63)
              {
                break;
              }

              v63 = v69 - v68;
              if (__OFSUB__(v69, v68))
              {
                break;
              }

              ++v67;
              if (!--v59)
              {
                goto LABEL_92;
              }
            }
          }

LABEL_91:
          v63 = 0;
          LOBYTE(v59) = 1;
          goto LABEL_92;
        }

LABEL_114:
        __break(1u);
      }

      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    if ((v56 & 0x1000000000000000) != 0)
    {
      result = (v58 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_27237825C();
    }

    v62 = *result;
    if (v62 != 43)
    {
      if (v62 != 45)
      {
        if (!v60)
        {
          goto LABEL_91;
        }

        v63 = 0;
        if (!result)
        {
          goto LABEL_83;
        }

        while (1)
        {
          v76 = *result - 48;
          if (v76 > 9)
          {
            goto LABEL_91;
          }

          v77 = 10 * v63;
          if ((v63 * 10) >> 64 != (10 * v63) >> 63)
          {
            goto LABEL_91;
          }

          v63 = v77 + v76;
          if (__OFADD__(v77, v76))
          {
            goto LABEL_91;
          }

          ++result;
          if (!--v60)
          {
            goto LABEL_83;
          }
        }
      }

      if (v60 < 1)
      {
        goto LABEL_116;
      }

      v59 = v60 - 1;
      if (v60 == 1)
      {
        goto LABEL_91;
      }

      v63 = 0;
      if (result)
      {
        v64 = (result + 1);
        while (1)
        {
          v65 = *v64 - 48;
          if (v65 > 9)
          {
            goto LABEL_91;
          }

          v66 = 10 * v63;
          if ((v63 * 10) >> 64 != (10 * v63) >> 63)
          {
            goto LABEL_91;
          }

          v63 = v66 - v65;
          if (__OFSUB__(v66, v65))
          {
            goto LABEL_91;
          }

          ++v64;
          if (!--v59)
          {
            goto LABEL_92;
          }
        }
      }

LABEL_83:
      LOBYTE(v59) = 0;
LABEL_92:
      v116 = v59;
      v81 = v59;
LABEL_93:

      if (v81)
      {
        v82 = 0;
      }

      else
      {
        v82 = v63;
      }

LABEL_96:
      v4 = v107;
      v8 = v108;
      if (!*(v22 + 2))
      {
        goto LABEL_111;
      }

      v83 = *(v22 + 4);
      v84 = *(v22 + 5);
      v85 = *(v22 + 6);
      v86 = *(v22 + 7);

      v87 = MEMORY[0x2743C4A20](v83, v84, v85, v86);
      v89 = v88;

      if (v81)
      {
        goto LABEL_118;
      }

      v90 = v111 + 1;

      v91 = (*(*v4 + 120))(&v114);

      sub_272201434(v87, v89, v82);

      v91(&v114, 0);
      v92 = (*(*v4 + 144))(&v114);
      sub_272201588(v82, v87, v89);

      result = v92(&v114, 0);
      v16 = v90;
      v93 = v90 == v110;
      v6 = v105;
      v5 = v106;
      v15 = v104;
      if (v93)
      {
        goto LABEL_104;
      }

      continue;
    }

    break;
  }

  if (v60 >= 1)
  {
    v59 = v60 - 1;
    if (v60 == 1)
    {
      goto LABEL_91;
    }

    v63 = 0;
    if (!result)
    {
      goto LABEL_83;
    }

    v70 = (result + 1);
    while (1)
    {
      v71 = *v70 - 48;
      if (v71 > 9)
      {
        goto LABEL_91;
      }

      v72 = 10 * v63;
      if ((v63 * 10) >> 64 != (10 * v63) >> 63)
      {
        goto LABEL_91;
      }

      v63 = v72 + v71;
      if (__OFADD__(v72, v71))
      {
        goto LABEL_91;
      }

      ++v70;
      if (!--v59)
      {
        goto LABEL_92;
      }
    }
  }

LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
  return result;
}

uint64_t sub_272239C80(void (*a1)(void *, void), uint64_t a2)
{
  v66 = a2;
  v65 = a1;
  v68 = sub_272376D5C();
  v3 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v5 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*v2 + 120))(v69);
  v8 = v7;

  v9 = MEMORY[0x277D84F98];
  *v8 = MEMORY[0x277D84F98];
  v6(v69, 0);
  v10 = *(*v2 + 144);
  v11 = *v2 + 144;
  v12 = v10(v69);
  v14 = v13;

  *v14 = v9;
  v12(v69, 0);
  sub_272376CAC();
  v15 = v67;
  v16 = sub_272376D6C();
  if (v15)
  {

    return (*(v3 + 8))(v5, v68);
  }

  v19 = v16;
  v20 = v17;
  v66 = v11;
  v67 = v10;
  v21 = v2;
  (*(v3 + 8))(v5, v68);
  sub_27221982C(0, &qword_280881D80, 0x277CCAAC8);
  sub_27221982C(0, &qword_280881D88, 0x277CBEAC0);
  v22 = sub_272377EBC();
  v58[1] = 0;
  if (!v22)
  {
    return sub_2721F05C8(v19, v20);
  }

  v69[0] = 0;
  v23 = v22;
  sub_27237771C();

  if (!v69[0])
  {
    return sub_2721F05C8(v19, v20);
  }

  v24 = (*(*v21 + 112))();
  v25 = *(*v21 + 104);
  v63 = v21;
  v26 = v25(v24);
  v27 = 0;
  v64 = v26;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v26 + 64;
  v31 = v29 & *(v26 + 64);
  v32 = (v28 + 63) >> 6;
  v59 = v19;
  v60 = v20;
  v61 = v32;
  for (i = v26 + 64; ; v30 = i)
  {
    v34 = v67;
    if (!v31)
    {
      break;
    }

LABEL_15:
    v36 = __clz(__rbit64(v31)) | (v27 << 6);
    v37 = *(v64 + 56);
    v68 = *(*(v64 + 48) + 8 * v36);
    v38 = (v37 + 16 * v36);
    v39 = *v38;
    v40 = v38[1];

    v65 = v34(v69);
    v42 = v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = *v42;
    v44 = v70;
    *v42 = 0x8000000000000000;
    v45 = v39;
    v47 = sub_27220038C(v39, v40);
    v48 = v44[2];
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_29;
    }

    v51 = v46;
    if (v44[3] >= v50)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v46)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_272201D78();
        if (v51)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_272201970(v50, isUniquelyReferenced_nonNull_native);
      v52 = sub_27220038C(v45, v40);
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_31;
      }

      v47 = v52;
      if (v51)
      {
LABEL_8:

        v33 = v70;
        *(v70[7] + 8 * v47) = v68;
        goto LABEL_9;
      }
    }

    v33 = v70;
    v70[(v47 >> 6) + 8] |= 1 << v47;
    v54 = (v33[6] + 16 * v47);
    *v54 = v45;
    v54[1] = v40;
    *(v33[7] + 8 * v47) = v68;
    v55 = v33[2];
    v56 = __OFADD__(v55, 1);
    v57 = v55 + 1;
    if (v56)
    {
      goto LABEL_30;
    }

    v33[2] = v57;
LABEL_9:
    v19 = v59;
    v20 = v60;
    v31 &= v31 - 1;
    *v42 = v33;

    v65(v69, 0);
    v32 = v61;
  }

  while (1)
  {
    v35 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v35 >= v32)
    {
      sub_2721F05C8(v19, v20);
    }

    v31 = *(v30 + 8 * v35);
    ++v27;
    if (v31)
    {
      v27 = v35;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

void sub_27223A198(uint64_t a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = sub_272376D5C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  (*(*v2 + 104))();
  v8 = sub_27237770C();

  v17[0] = 0;
  v9 = [v7 archivedDataWithRootObject:v8 requiringSecureCoding:0 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_272376D8C();
    v13 = v12;

    sub_272376CAC();
    sub_272376D9C();
    (*(v4 + 8))(v6, v3);
    sub_2721F05C8(v11, v13);
  }

  else
  {
    v14 = v10;
    v15 = sub_272376C6C();

    swift_willThrow();
  }
}

void *VASymbolTable.deinit()
{

  return v0;
}

uint64_t VASymbolTable.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t VANameDetectionResult.keyword.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_keyword);

  return v1;
}

uint64_t VANameDetectionResult.secondPassResult.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_secondPassResult);

  return v1;
}

uint64_t VANameDetectionResult.filename.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_filename);

  return v1;
}

id VANameDetectionResult.__allocating_init(keyword:score:secondPassResult:filename:isValid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, float a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_keyword];
  *v18 = a1;
  v18[1] = a2;
  *&v17[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_score] = a8;
  v19 = &v17[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_secondPassResult];
  *v19 = a3;
  v19[1] = a4;
  v20 = &v17[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_filename];
  *v20 = a5;
  v20[1] = a6;
  v17[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_isValid] = a7;
  v22.receiver = v17;
  v22.super_class = v8;
  return objc_msgSendSuper2(&v22, sel_init);
}

id VANameDetectionResult.init(keyword:score:secondPassResult:filename:isValid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, float a8)
{
  v9 = &v8[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_keyword];
  *v9 = a1;
  v9[1] = a2;
  *&v8[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_score] = a8;
  v10 = &v8[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_secondPassResult];
  *v10 = a3;
  v10[1] = a4;
  v11 = &v8[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_filename];
  *v11 = a5;
  v11[1] = a6;
  v8[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_isValid] = a7;
  v13.receiver = v8;
  v13.super_class = type metadata accessor for VANameDetectionResult();
  return objc_msgSendSuper2(&v13, sel_init);
}

void sub_27223A774(void *a1)
{
  v3 = sub_2723777FC();
  v4 = sub_2723777FC();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_score);
  v6 = sub_2723777FC();
  LODWORD(v7) = v5;
  [a1 encodeFloat:v6 forKey:v7];

  v8 = sub_2723777FC();

  v9 = sub_2723777FC();
  [a1 encodeObject:v8 forKey:v9];

  if (*(v1 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_filename + 8))
  {
    v10 = sub_2723777FC();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_2723777FC();
  [a1 encodeObject:v10 forKey:v11];
  swift_unknownObjectRelease();

  v12 = *(v1 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_isValid);
  v13 = sub_2723777FC();
  [a1 encodeBool:v12 forKey:v13];
}

id VANameDetectionResult.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_27237728C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v46 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v46 - v12;
  v14 = sub_2723777FC();
  v15 = [a1 decodeObjectForKey_];

  if (v15)
  {
    sub_27237814C();
    swift_unknownObjectRelease();
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
  }

  v52 = v50;
  v53 = v51;
  if (!*(&v51 + 1))
  {
    sub_27223B044(&v52);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v23 = sub_2722C389C();
    (*(v5 + 16))(v13, v23, v4);
    v24 = sub_27237725C();
    v25 = sub_272377E8C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2721E4000, v24, v25, "Decoding result - falied keyword", v26, 2u);
      MEMORY[0x2743C69C0](v26, -1, -1);
    }

    (*(v5 + 8))(v13, v4);
    goto LABEL_30;
  }

  v16 = v49;
  v17 = &v2[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_keyword];
  *v17 = v48;
  v17[1] = v16;
  v46[1] = v17;
  v18 = sub_2723777FC();
  [a1 decodeFloatForKey_];
  v20 = v19;

  *&v2[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_score] = v20;
  v21 = sub_2723777FC();
  v22 = [a1 decodeObjectForKey_];

  if (v22)
  {
    sub_27237814C();
    swift_unknownObjectRelease();
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
  }

  v52 = v50;
  v53 = v51;
  if (*(&v51 + 1))
  {
    if (swift_dynamicCast())
    {
      v27 = v49;
      v28 = &v2[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_secondPassResult];
      *v28 = v48;
      v28[1] = v27;
      v29 = sub_2723777FC();
      v30 = [a1 decodeObjectForKey_];

      if (v30)
      {
        sub_27237814C();
        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0u;
        v51 = 0u;
      }

      v52 = v50;
      v53 = v51;
      if (*(&v51 + 1))
      {
        if (swift_dynamicCast())
        {
          v35 = v49;
          v36 = &v2[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_filename];
          *v36 = v48;
          v36[1] = v35;
          v37 = sub_2723777FC();
          v38 = [a1 decodeBoolForKey_];

          v2[OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_isValid] = v38;
          v39 = type metadata accessor for VANameDetectionResult();
          v47.receiver = v2;
          v47.super_class = v39;
          v40 = objc_msgSendSuper2(&v47, sel_init);

          return v40;
        }
      }

      else
      {
        sub_27223B044(&v52);
      }

      v42 = sub_2722C389C();
      (*(v5 + 16))(v8, v42, v4);
      v43 = sub_27237725C();
      v44 = sub_272377E8C();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_2721E4000, v43, v44, "Decoding result - failed filename", v45, 2u);
        MEMORY[0x2743C69C0](v45, -1, -1);
      }

      (*(v5 + 8))(v8, v4);

      goto LABEL_29;
    }
  }

  else
  {
    sub_27223B044(&v52);
  }

  v31 = sub_2722C389C();
  (*(v5 + 16))(v11, v31, v4);
  v32 = sub_27237725C();
  v33 = sub_272377E8C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_2721E4000, v32, v33, "Decoding result - failed secondPassResult", v34, 2u);
    MEMORY[0x2743C69C0](v34, -1, -1);
  }

  (*(v5 + 8))(v11, v4);
LABEL_29:

LABEL_30:
  type metadata accessor for VANameDetectionResult();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_27223B044(uint64_t a1)
{
  v2 = sub_2721F065C(&unk_280881DB8, &qword_27237DDD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27223B13C()
{
  sub_27237820C();
  MEMORY[0x2743C4AD0](0xD000000000000017, 0x800000027238A3F0);
  MEMORY[0x2743C4AD0](*(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_keyword), *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_keyword + 8));
  MEMORY[0x2743C4AD0](2108704, 0xE300000000000000);
  sub_272377D5C();
  MEMORY[0x2743C4AD0](2108704, 0xE300000000000000);
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_secondPassResult + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_secondPassResult);
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_secondPassResult + 8);
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x2743C4AD0](v2, v3);

  MEMORY[0x2743C4AD0](2108704, 0xE300000000000000);
  v4 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_filename + 8);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_filename);
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_filename + 8);
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  MEMORY[0x2743C4AD0](v5, v6);

  MEMORY[0x2743C4AD0](2108704, 0xE300000000000000);
  if (*(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_isValid))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC12VoiceActions21VANameDetectionResult_isValid))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x2743C4AD0](v7, v8);

  return 0;
}

id VANameDetectionResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VANameDetectionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VANameDetectionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27223B49C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_27223D5A8(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_27223B528(uint64_t a1)
{
  v2 = *(*v1 + 96);

  return v2(v3);
}

uint64_t sub_27223B574()
{

  return swift_deallocClassInstance();
}

uint64_t sub_27223B634()
{
  v0 = VATempDir()();
  v1 = NSUserName();
  v2 = sub_27237782C();
  v4 = v3;

  MEMORY[0x2743C4AD0](v2, v4);

  MEMORY[0x2743C4AD0](0xD000000000000013, 0x800000027238A5A0);

  xmmword_280887548 = v0;
  return result;
}

uint64_t sub_27223B714()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_27223B760(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_27223B804@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions19VAFileBackedLexicon_uuid;
  swift_beginAccess();
  v4 = sub_272376E5C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_27223B88C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions19VAFileBackedLexicon_uuid;
  swift_beginAccess();
  v4 = sub_272376E5C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void *sub_27223B97C(uint64_t a1, uint64_t a2)
{
  v5 = sub_272376E5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  sub_272376E4C();
  (*(v6 + 32))(v9 + OBJC_IVAR____TtC12VoiceActions19VAFileBackedLexicon_uuid, v8, v5);
  v9[2] = sub_27223D5A8(MEMORY[0x277D84F90]);
  v9[3] = a1;
  v9[4] = a2;
  v10 = sub_27223BADC();
  if (v2)
  {
  }

  else
  {
    v11 = v10;
    swift_beginAccess();
    v9[2] = v11;
  }

  return v9;
}

void *sub_27223BADC()
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v64 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v11 = (*(*v0 + 128))(v10);
  v13 = sub_27223D6AC(v11, v12);
  if (v1)
  {
  }

  v67 = v13;

  sub_27223DE44();
  v16 = v15;
  if (!v15)
  {
    v29 = sub_2722C389C();
    (*(v3 + 16))(v6, v29, v2);
    v30 = sub_27237725C();
    v31 = sub_272377E6C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2721E4000, v30, v31, "No custom lexicon", v32, 2u);
      MEMORY[0x2743C69C0](v32, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return v67;
  }

  v17 = sub_2722C389C();
  (*(v3 + 16))(v9, v17, v2);

  v18 = sub_27237725C();
  v19 = sub_272377E6C();
  v20 = v18;
  if (os_log_type_enabled(v18, v19))
  {
    v21 = swift_slowAlloc();
    LODWORD(v66) = v19;
    v22 = v21;
    v65 = swift_slowAlloc();
    v68 = v65;
    *v22 = 134218242;
    *(v22 + 4) = *(v16 + 16);

    *(v22 + 12) = 2080;

    sub_2721F065C(&qword_2808817F0, &unk_27237BF20);
    v23 = sub_27237774C();
    v25 = v24;

    v26 = sub_2721FFD04(v23, v25, &v68);

    *(v22 + 14) = v26;
    v27 = v20;
    _os_log_impl(&dword_2721E4000, v20, v66, "Merged %ld words from custom lexicon: %s", v22, 0x16u);
    v28 = v65;
    sub_2722039C8(v65);
    MEMORY[0x2743C69C0](v28, -1, -1);
    MEMORY[0x2743C69C0](v22, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v9, v2);
  v33 = 1 << *(v16 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v16 + 64);
  v36 = (v33 + 63) >> 6;

  v37 = 0;
  while (v35)
  {
LABEL_19:
    v42 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v43 = (*(v16 + 48) + ((v37 << 10) | (16 * v42)));
    v45 = *v43;
    v44 = v43[1];
    v46 = *(v16 + 16);

    if (v46 && (v47 = sub_27220038C(v45, v44), (v48 & 1) != 0))
    {
      v66 = *(*(v16 + 56) + 8 * v47);

      v49 = v67;
      LODWORD(v65) = swift_isUniquelyReferenced_nonNull_native();
      v68 = v49;
      v50 = sub_27220038C(v45, v44);
      v52 = *(v49 + 16);
      v53 = (v51 & 1) == 0;
      v54 = __OFADD__(v52, v53);
      v55 = v52 + v53;
      if (v54)
      {
        goto LABEL_37;
      }

      if (*(v49 + 24) >= v55)
      {
        if (v65)
        {
          goto LABEL_29;
        }

        v65 = v50;
        LODWORD(v67) = v51;
        sub_27223D2B8();
        v50 = v65;
        if ((v67 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_30:
        v59 = v50;

        v67 = v68;
        *(v68[7] + 8 * v59) = v66;
      }

      else
      {
        LODWORD(v67) = v51;
        sub_27223C9E8(v55, v65);
        v50 = sub_27220038C(v45, v44);
        v56 = v51 & 1;
        LOBYTE(v51) = v67;
        if ((v67 & 1) != v56)
        {
          goto LABEL_39;
        }

LABEL_29:
        if (v51)
        {
          goto LABEL_30;
        }

LABEL_32:
        v60 = v68;
        v68[(v50 >> 6) + 8] |= 1 << v50;
        v61 = (v60[6] + 16 * v50);
        *v61 = v45;
        v61[1] = v44;
        *(v60[7] + 8 * v50) = v66;
        v62 = v60[2];
        v54 = __OFADD__(v62, 1);
        v63 = v62 + 1;
        if (v54)
        {
          goto LABEL_38;
        }

        v67 = v60;
        v60[2] = v63;
      }
    }

    else
    {
      v38 = sub_27220038C(v45, v44);
      v40 = v39;

      if (v40)
      {
        v57 = v67;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v68 = v57;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_27223D2B8();
          v57 = v68;
        }

        v67 = v57;
        sub_27223CF60(v38, v57);
      }
    }
  }

  while (1)
  {
    v41 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v41 >= v36)
    {

      return v67;
    }

    v35 = *(v16 + 64 + 8 * v41);
    ++v37;
    if (v35)
    {
      v37 = v41;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

uint64_t sub_27223C1C4()
{
  v1 = v0;
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2722C389C();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_27237725C();
  v8 = sub_272377E7C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2721E4000, v7, v8, "deinit VALexicon", v9, 2u);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);

  v10 = OBJC_IVAR____TtC12VoiceActions19VAFileBackedLexicon_uuid;
  v11 = sub_272376E5C();
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  return v1;
}

uint64_t sub_27223C374()
{
  sub_27223C1C4();

  return swift_deallocClassInstance();
}

void sub_27223C418(uint64_t a1)
{
  v3 = *v1;
  sub_27223E45C(a1);
  if (!v2)
  {
    v4 = sub_27223BADC();
    (*(*v3 + 112))(v4);
  }
}

uint64_t sub_27223C474()
{
  v0 = sub_27237782C();
  v1 = MEMORY[0x2743C4B70](v0);

  return v1;
}

uint64_t sub_27223C4B0(uint64_t a1)
{
  sub_27237782C();
  sub_27237790C();
}

uint64_t sub_27223C504(uint64_t a1)
{
  sub_27237782C();
  sub_27237874C();
  sub_27237790C();
  v1 = sub_27237878C();

  return v1;
}

uint64_t sub_27223C580(uint64_t a1, id *a2)
{
  result = sub_27237780C();
  *a2 = 0;
  return result;
}

uint64_t sub_27223C5F8(uint64_t a1, id *a2)
{
  v3 = sub_27237781C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_27223C678@<X0>(uint64_t *a2@<X8>)
{
  sub_27237782C();
  v3 = sub_2723777FC();

  *a2 = v3;
  return result;
}

uint64_t sub_27223C6BC(void *a1, uint64_t *a2)
{
  v2 = sub_27237782C();
  v4 = v3;
  if (v2 == sub_27237782C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_27237865C();
  }

  return v7 & 1;
}

uint64_t sub_27223C744@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2723777FC();

  *a2 = v3;
  return result;
}

uint64_t sub_27223C78C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27237782C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_27223C7B8(uint64_t a1)
{
  v2 = sub_27223F044(&qword_280881E90, &unk_27237E048);
  v3 = sub_27223F044(&qword_280881EE0, &unk_27237DF9C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_27223C850(uint64_t a1)
{
  sub_27237782C();
  sub_27237874C();
  sub_27237790C();
  v2 = sub_27237878C();

  return sub_27223C8E4(a1, v2);
}

unint64_t sub_27223C8E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_27237782C();
      v8 = v7;
      if (v6 == sub_27237782C() && v8 == v9)
      {
        break;
      }

      v11 = sub_27237865C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_27223C9E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2721F065C(&qword_280881EA8, &qword_27237DEC0);
  v34 = v4;
  result = sub_2723783DC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

_OWORD *sub_27223CC90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2721F065C(&qword_280881EA0, &qword_27237DEB8);
  v35 = v4;
  result = sub_2723783DC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 4;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_27221981C(v22, v36);
      }

      else
      {
        sub_2722041FC(v22, v36);
        v23 = v21;
      }

      sub_27237782C();
      sub_27237874C();
      sub_27237790C();
      v24 = sub_27237878C();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 6) + 8 * v15) = v21;
      result = sub_27221981C(v36, (*(v7 + 7) + 32 * v15));
      ++*(v7 + 2);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_27223CF60(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_27237817C() + 1) & ~v5;
    do
    {
      sub_27237874C();

      sub_27237790C();
      v9 = sub_27237878C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_27223D110(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_27223C850(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_27223D428();
      v8 = v16;
      goto LABEL_8;
    }

    sub_27223CC90(v13, a3 & 1);
    v8 = sub_27223C850(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for FileAttributeKey();
      result = sub_2723786BC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_2722039C8(v19);

    return sub_27221981C(a1, v19);
  }

  else
  {
    sub_27223D250(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_27223D250(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_27221981C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *sub_27223D2B8()
{
  v1 = v0;
  sub_2721F065C(&qword_280881EA8, &qword_27237DEC0);
  v2 = *v0;
  v3 = sub_2723783CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}