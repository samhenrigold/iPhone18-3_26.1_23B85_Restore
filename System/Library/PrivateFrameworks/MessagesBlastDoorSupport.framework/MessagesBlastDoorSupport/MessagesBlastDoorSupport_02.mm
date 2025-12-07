void sub_258D140B4(IMMessagesBlastDoorInterfaceInternal *a2@<X1>, char *a4@<X8>)
{
  v6 = sub_258D17C94();
  a2, v7, v8, v9, v10, v11, v12, v13;
  if (v6 == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  if (!v6)
  {
    v14 = 0;
  }

  *a4 = v14;
}

unint64_t sub_258D1412C()
{
  result = qword_27F980F00;
  if (!qword_27F980F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980F00);
  }

  return result;
}

uint64_t sub_258D14180(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0xD000000000000013;
  }

  else
  {
    v9 = 0xD00000000000001ALL;
  }

  if (v8)
  {
    v10 = "geOriginalEncryptionType";
  }

  else
  {
    v10 = "SatelliteSMSCompressedText";
  }

  v11 = (v10 | 0x8000000000000000);
  if (*a2)
  {
    v12 = 0xD000000000000013;
  }

  else
  {
    v12 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v13 = "SatelliteSMSCompressedText";
  }

  else
  {
    v13 = "geOriginalEncryptionType";
  }

  v14 = (v13 | 0x8000000000000000);
  if (v9 == v12 && v11 == v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_258D17E14();
  }

  v11, a2, v12, a4, a5, a6, a7, a8;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

unint64_t sub_258D14230()
{
  result = qword_27F980F10;
  if (!qword_27F980F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980F10);
  }

  return result;
}

uint64_t sub_258D14284()
{
  v1 = *v0;
  sub_258D17EC4();
  if (v1)
  {
    v2 = "SatelliteSMSCompressedText";
  }

  else
  {
    v2 = "geOriginalEncryptionType";
  }

  sub_258D17914();
  (v2 | 0x8000000000000000), v3, v4, v5, v6, v7, v8, v9;
  return sub_258D17EF4();
}

void sub_258D14304(uint64_t a1)
{
  if (*v1)
  {
    v2 = "SatelliteSMSCompressedText";
  }

  else
  {
    v2 = "geOriginalEncryptionType";
  }

  sub_258D17914();

  (v2 | 0x8000000000000000), v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_258D14370(uint64_t a1)
{
  v2 = *v1;
  sub_258D17EC4();
  if (v2)
  {
    v3 = "SatelliteSMSCompressedText";
  }

  else
  {
    v3 = "geOriginalEncryptionType";
  }

  sub_258D17914();
  (v3 | 0x8000000000000000), v4, v5, v6, v7, v8, v9, v10;
  return sub_258D17EF4();
}

void sub_258D143EC(void *a1@<X0>, char *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_258D17C94();
  v3, v5, v6, v7, v8, v9, v10, v11;
  if (v4 == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (!v4)
  {
    v12 = 0;
  }

  *a2 = v12;
}

void sub_258D1444C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v1)
  {
    v3 = "SatelliteSMSCompressedText";
  }

  else
  {
    v3 = "geOriginalEncryptionType";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_258D14490()
{
  result = qword_27F980F18;
  if (!qword_27F980F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980F18);
  }

  return result;
}

unint64_t sub_258D144E8()
{
  result = qword_27F980F20;
  if (!qword_27F980F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980F20);
  }

  return result;
}

unint64_t sub_258D1453C()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

void sub_258D14578(IMMessagesBlastDoorInterfaceInternal *a2@<X1>, char *a3@<X8>)
{
  v5 = sub_258D17C94();
  a2, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a3 = v13;
}

uint64_t sub_258D145DC(uint64_t a1)
{
  v2 = sub_258D1412C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D14618(uint64_t a1)
{
  v2 = sub_258D1412C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_258D146AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 25))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_258D14708(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_258D14780()
{
  v2 = sub_258D03F18(1);
  if (v1)
  {

    sub_258D148F0();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
  }

  else if (v2)
  {
    v5 = sub_258D03F18(1);
    sub_258D04144(7);
    if (v5)
    {
      v6 = 43;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = 0xE100000000000000;
    }

    else
    {
      v7 = 0xE000000000000000;
    }

    v8 = sub_258D17E04();
    v10 = v9;
    v44 = v7;

    MEMORY[0x259C99B70](v8, v10);
    v7, v11, v12, v13, v14, v15, v16, v17;
    v10, v18, v19, v20, v21, v22, v23, v24;
    return v6;
  }

  else
  {
    v25 = sub_258CDB2E4();
    v27 = (v26 >> 56) & 0xF;
    v43 = v25;
    v44 = v26;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v25 & 0xFFFFFFFFFFFFLL;
    }

    v45 = 0;
    v46 = v27;
    v28 = sub_258D0C5F8(&v43);
    v44, v29, v30, v31, v32, v33, v34, v35;
    v0 = Array<A>.spansAsPlainText.getter(v28);
    v28, v36, v37, v38, v39, v40, v41, v42;
  }

  return v0;
}

unint64_t sub_258D148F0()
{
  result = qword_27F980F28;
  if (!qword_27F980F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980F28);
  }

  return result;
}

uint64_t NSUserDefaults.isMessagesLockdownModeEnabled.getter()
{
  v1 = v0;
  sub_258D16B84();
  v2 = sub_258D16B64();
  v3 = MEMORY[0x259C98D90]();

  if (v3)
  {
    return 1;
  }

  v5 = sub_258D17884();
  v6 = [v1 objectForKey:v5 inDomain:*MEMORY[0x277CCA208]];

  if (v6)
  {
    sub_258D17B44();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {
    sub_258D14A60(v10);
  }

  return 0;
}

uint64_t sub_258D14A60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980F30, &qword_258D1AF98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258D14AC8(char a1, char a2)
{
  if (qword_258D1B308[a1] == qword_258D1B308[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_258D17E14();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_258D14B30(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = a1;
  v9 = 85;
  v10 = 0xE200000000000000;
  v11 = 25453;
  if (a1 != 5)
  {
    v11 = 72;
    v10 = 0xE100000000000000;
  }

  v12 = 0xE200000000000000;
  v13 = 25967;
  if (a1 != 3)
  {
    v13 = 68;
    v12 = 0xE100000000000000;
  }

  if (a1 <= 4u)
  {
    v11 = v13;
    v10 = v12;
  }

  v14 = 99;
  if (a1 != 1)
  {
    v14 = 101;
  }

  if (a1)
  {
    v9 = v14;
  }

  if (a1 <= 2u)
  {
    v15 = v9;
  }

  else
  {
    v15 = v11;
  }

  if (v8 <= 2)
  {
    v16 = 0xE100000000000000;
  }

  else
  {
    v16 = v10;
  }

  if (a2 <= 2u)
  {
    v17 = 0xE100000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        v18 = 99;
        if (v15 != 99)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v18 = 101;
        if (v15 != 101)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v18 = 85;
      if (v15 != 85)
      {
        goto LABEL_38;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v17 = 0xE200000000000000;
      v18 = 25453;
      if (v15 != 25453)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v17 = 0xE100000000000000;
      v18 = 72;
      if (v15 != 72)
      {
LABEL_38:
        v19 = sub_258D17E14();
        goto LABEL_39;
      }
    }
  }

  else if (a2 == 3)
  {
    v17 = 0xE200000000000000;
    v18 = 25967;
    if (v15 != 25967)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v17 = 0xE100000000000000;
    v18 = 68;
    if (v15 != 68)
    {
      goto LABEL_38;
    }
  }

  if (v16 != v17)
  {
    goto LABEL_38;
  }

  v19 = 1;
LABEL_39:
  v16, a2, v18, a4, a5, a6, a7, a8;
  v17, v20, v21, v22, v23, v24, v25, v26;
  return v19 & 1;
}

uint64_t sub_258D14CBC(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = "e";
  v9 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v11 = "IDSIncomingMessageDecryptedData";
      v10 = 0xD000000000000026;
    }

    else
    {
      v11 = "geShouldShowPeerErrors";
      v10 = 0xD000000000000028;
    }
  }

  else
  {
    if (a1)
    {
      v10 = 0xD00000000000001FLL;
    }

    else
    {
      v10 = 0xD00000000000001DLL;
    }

    if (v9)
    {
      v11 = "IDSIncomingMessagePushPayload";
    }

    else
    {
      v11 = "e";
    }
  }

  v12 = (v11 | 0x8000000000000000);
  if (a2 > 1u)
  {
    v8 = "IDSIncomingMessageDecryptedData";
    v13 = "geShouldShowPeerErrors";
    v14 = a2 == 2;
    if (a2 == 2)
    {
      v15 = 0xD000000000000026;
    }

    else
    {
      v15 = 0xD000000000000028;
    }
  }

  else
  {
    v13 = "IDSIncomingMessagePushPayload";
    v14 = a2 == 0;
    if (a2)
    {
      v15 = 0xD00000000000001FLL;
    }

    else
    {
      v15 = 0xD00000000000001DLL;
    }
  }

  if (v14)
  {
    v16 = v8;
  }

  else
  {
    v16 = v13;
  }

  v17 = (v16 | 0x8000000000000000);
  if (v10 == v15 && v12 == v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_258D17E14();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v17, v19, v20, v21, v22, v23, v24, v25;
  return v18 & 1;
}

void RelayGroupMutationPayload.knownType.getter(_BYTE *a1@<X8>)
{
  v2 = *v1;
  if (*v1 >= 4)
  {
    LOBYTE(v2) = 4;
  }

  *a1 = v2;
}

uint64_t RelayGroupMutationPayload.knownParticipantChangeType.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 128))
  {
    v3 = sub_258D17644();
    v4 = *(*(v3 - 8) + 56);

    return v4(a1, 1, 1, v3);
  }

  else
  {

    return sub_258D17634();
  }
}

void sub_258D14EA4(uint64_t a1, char a2)
{
  sub_258D17914();

  0xE100000000000000, v2, v3, v4, v5, v6, v7, v8;
}

MessagesBlastDoorSupport::RelayGroupMutationType_optional __swiftcall RelayGroupMutationType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t RelayGroupMutationPayload.service.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void RelayGroupMutationPayload.service.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 8) = a1;
  *(v8 + 16) = a2;
}

uint64_t RelayGroupMutationPayload.groupID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void RelayGroupMutationPayload.groupID.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
}

uint64_t RelayGroupMutationPayload.originalGroupID.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void RelayGroupMutationPayload.originalGroupID.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 48), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
}

uint64_t RelayGroupMutationPayload.guid.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void RelayGroupMutationPayload.guid.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 64), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
}

uint64_t RelayGroupMutationPayload.destinationCallerID.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void RelayGroupMutationPayload.destinationCallerID.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 80), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 72) = a1;
  *(v8 + 80) = a2;
}

uint64_t RelayGroupMutationPayload.sender.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

void RelayGroupMutationPayload.sender.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 96), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 88) = a1;
  *(v8 + 96) = a2;
}

uint64_t RelayGroupMutationPayload.updatedName.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

void RelayGroupMutationPayload.updatedName.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 112), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 104) = a1;
  *(v8 + 112) = a2;
}

uint64_t RelayGroupMutationPayload.participantChangeType.setter(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

MessagesBlastDoorSupport::RelayGroupMutationPayload::CodingKeys_optional __swiftcall RelayGroupMutationPayload.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3 = v1;
  v4 = sub_258D17C94();
  object, v5, v6, v7, v8, v9, v10, v11;
  v13 = 11;
  if (v4 < 0xB)
  {
    v13 = v4;
  }

  *v3 = v13;
  return result;
}

MessagesBlastDoorSupport::RelayGroupMutationPayload::CodingKeys_optional __swiftcall RelayGroupMutationPayload.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = RelayGroupMutationPayload.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t sub_258D15474()
{
  v1 = *v0;
  sub_258D17EC4();
  sub_258D14EA4(v3, v1);
  return sub_258D17EF4();
}

uint64_t sub_258D154C4(uint64_t a1)
{
  v2 = *v1;
  sub_258D17EC4();
  sub_258D14EA4(v4, v2);
  return sub_258D17EF4();
}

uint64_t sub_258D15514@<X0>(uint64_t *a1@<X8>)
{
  result = RelayGroupMutationPayload.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = 0xE100000000000000;
  return result;
}

MessagesBlastDoorSupport::RelayGroupMutationPayload::CodingKeys_optional sub_258D1555C@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = RelayGroupMutationPayload.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_258D155A0(uint64_t a1)
{
  v2 = sub_258D15984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D155DC(uint64_t a1)
{
  v2 = sub_258D15984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RelayGroupMutationPayload.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980F38, &qword_258D1AFB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  v7 = *(v1 + 8);
  v8 = *(v1 + 24);
  v37 = *(v1 + 16);
  v38 = v7;
  v9 = *(v1 + 40);
  v35 = *(v1 + 32);
  v36 = v8;
  v10 = *(v1 + 56);
  v33 = *(v1 + 48);
  v34 = v9;
  v11 = *(v1 + 64);
  v12 = *(v1 + 72);
  v31 = v10;
  v32 = v11;
  v13 = *(v1 + 80);
  v14 = *(v1 + 88);
  v29 = v12;
  v30 = v13;
  v15 = *(v1 + 96);
  v16 = *(v1 + 104);
  v27 = v14;
  v28 = v15;
  v17 = *(v1 + 112);
  v18 = *(v1 + 120);
  v25 = v16;
  v26 = v17;
  v24 = *(v1 + 128);
  v22 = *(v1 + 136);
  v23 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D15984();
  sub_258D17F34();
  LOBYTE(v41) = 0;
  v19 = v39;
  sub_258D17DD4();
  if (!v19)
  {
    LOBYTE(v41) = 1;
    sub_258D17DC4();
    LOBYTE(v41) = 2;
    sub_258D17DC4();
    LOBYTE(v41) = 3;
    sub_258D17DC4();
    LOBYTE(v41) = 4;
    sub_258D17DC4();
    LOBYTE(v41) = 5;
    sub_258D17D74();
    LOBYTE(v41) = 6;
    sub_258D17D74();
    LOBYTE(v41) = 7;
    sub_258D17D74();
    LOBYTE(v41) = 8;
    sub_258D17D94();
    v41 = v22;
    v40 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980F48, &qword_258D1AFB8);
    sub_258D160B4(&qword_27F980F50, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_258D17DA4();
    LOBYTE(v41) = 10;
    sub_258D17D84();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_258D15984()
{
  result = qword_27F980F40;
  if (!qword_27F980F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980F40);
  }

  return result;
}

void RelayGroupMutationPayload.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980F58, &qword_258D1AFC0);
  v5 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v7 = &v57 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D15984();
  sub_258D17F14();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    0, v9, v10, v11, v12, v13, v14, v15;
    0, v16, v17, v18, v19, v20, v21, v22;
    0, v23, v24, v25, v26, v27, v28, v29;
    0, v30, v31, v32, v33, v34, v35, v36;
  }

  else
  {
    v72 = v5;
    LOBYTE(v84[0]) = 0;
    v8 = sub_258D17D24();
    LOBYTE(v84[0]) = 1;
    v68 = sub_258D17D14();
    v70 = v37;
    LOBYTE(v84[0]) = 2;
    v38 = sub_258D17D14();
    v69 = v39;
    v65 = v38;
    LOBYTE(v84[0]) = 3;
    v64 = sub_258D17D14();
    v67 = v40;
    LOBYTE(v84[0]) = 4;
    v63 = sub_258D17D14();
    v66 = v41;
    LOBYTE(v84[0]) = 5;
    v61 = sub_258D17CC4();
    v62 = v8;
    v71 = v42;
    LOBYTE(v84[0]) = 6;
    v43 = sub_258D17CC4();
    v45 = v44;
    v59 = v43;
    v60 = 0;
    LOBYTE(v84[0]) = 7;
    v46 = sub_258D17CC4();
    v48 = v47;
    v58 = v46;
    LOBYTE(v84[0]) = 8;
    v57 = sub_258D17CE4();
    v88 = v49 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980F48, &qword_258D1AFB8);
    LOBYTE(v74) = 9;
    sub_258D160B4(&qword_27F980F60, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_258D17CF4();
    v50 = v84[0];
    v89 = 10;
    v51 = sub_258D17CD4();
    (*(v72 + 8))(v7, v73);
    *&v74 = v62;
    *(&v74 + 1) = v68;
    v52 = v70;
    *&v75 = v70;
    *(&v75 + 1) = v65;
    *&v76 = v69;
    *(&v76 + 1) = v64;
    *&v77 = v67;
    *(&v77 + 1) = v63;
    *&v78 = v66;
    *(&v78 + 1) = v61;
    *&v79 = v71;
    *(&v79 + 1) = v59;
    *&v80 = v45;
    *(&v80 + 1) = v58;
    *&v81 = v48;
    *(&v81 + 1) = v57;
    LODWORD(v73) = v88;
    LOBYTE(v82) = v88;
    *(&v82 + 1) = v50;
    v83 = v51;
    v53 = v79;
    *(a2 + 64) = v78;
    *(a2 + 80) = v53;
    v54 = v77;
    *(a2 + 32) = v76;
    *(a2 + 48) = v54;
    *(a2 + 144) = v51;
    v55 = v81;
    *(a2 + 96) = v80;
    *(a2 + 112) = v55;
    v56 = v75;
    *a2 = v74;
    *(a2 + 16) = v56;
    *(a2 + 128) = v82;
    sub_258D16120(&v74, v84);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v84[0] = v62;
    v84[1] = v68;
    v84[2] = v52;
    v84[3] = v65;
    v84[4] = v69;
    v84[5] = v64;
    v84[6] = v67;
    v84[7] = v63;
    v84[8] = v66;
    v84[9] = v61;
    v84[10] = v71;
    v84[11] = v59;
    v84[12] = v45;
    v84[13] = v58;
    v84[14] = v48;
    v84[15] = v57;
    v85 = v73;
    v86 = v50;
    v87 = v51;
    sub_258D03668(v84);
  }
}

uint64_t sub_258D160B4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F980F48, &qword_258D1AFB8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258D1615C()
{
  result = qword_27F980F68;
  if (!qword_27F980F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980F68);
  }

  return result;
}

unint64_t sub_258D161B4()
{
  result = qword_27F980F70;
  if (!qword_27F980F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980F70);
  }

  return result;
}

unint64_t sub_258D1620C()
{
  result = qword_27F980F78;
  if (!qword_27F980F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980F78);
  }

  return result;
}

unint64_t sub_258D16264()
{
  result = qword_27F980F80;
  if (!qword_27F980F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980F80);
  }

  return result;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_258D1632C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t sub_258D16374(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RelayGroupMutationPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RelayGroupMutationPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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