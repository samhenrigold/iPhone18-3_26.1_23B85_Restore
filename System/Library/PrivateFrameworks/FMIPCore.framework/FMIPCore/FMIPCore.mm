uint64_t type metadata accessor for FMIPDevice(uint64_t a1)
{
  result = qword_281515D98;
  if (!qword_281515D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A67742C(uint64_t a1)
{
  sub_24A677858(319, &qword_27EF5D8F0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24A677858(319, &qword_27EF5EAF8, &type metadata for FMIPSafeLocation, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_24A677858(319, &qword_27EF5F308, &type metadata for FMIPAudioChannel, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_24A6778A8(319);
        if (v4 <= 0x3F)
        {
          sub_24A677858(319, &qword_27EF5EAE8, &type metadata for FMIPLocation, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_24A677858(319, &qword_27EF5EAE0, &type metadata for FMIPAddress, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_24A67791C(319, qword_281514E68, type metadata accessor for FMIPPlaySoundMetadata);
              if (v7 <= 0x3F)
              {
                sub_24A67791C(319, qword_281514D50, type metadata accessor for FMIPDeviceLostModeMetadata);
                if (v8 <= 0x3F)
                {
                  sub_24A67791C(319, qword_281515308, type metadata accessor for FMIPLockMetadata);
                  if (v9 <= 0x3F)
                  {
                    sub_24A67791C(319, qword_281515260, type metadata accessor for FMIPEraseMetadata);
                    if (v10 <= 0x3F)
                    {
                      sub_24A67791C(319, qword_281514410, type metadata accessor for FMIPItemGroup);
                      if (v11 <= 0x3F)
                      {
                        sub_24A67791C(319, &qword_281515DB8, MEMORY[0x277CC9578]);
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_24A6777B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24A677808(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24A677858(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24A6778A8(uint64_t a1)
{
  if (!qword_27EF5F310)
  {
    sub_24A6CCDC0(&qword_27EF5F278, &qword_24A83DF18);
    v1 = sub_24A82D634();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF5F310);
    }
  }
}

void sub_24A67791C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24A82D634();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for FMIPPlaySoundMetadata(uint64_t a1)
{
  result = qword_281514EA8;
  if (!qword_281514EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A6779BC(uint64_t a1)
{
  sub_24A82CA34();
  if (v1 <= 0x3F)
  {
    sub_24A677A54();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24A677A54()
{
  if (!qword_27EF5D8F0)
  {
    v0 = sub_24A82D634();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF5D8F0);
    }
  }
}

uint64_t type metadata accessor for FMIPDeviceLostModeMetadata(uint64_t a1)
{
  result = qword_281514DA0;
  if (!qword_281514DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A677AF0(uint64_t a1)
{
  result = sub_24A82CA34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for FMIPLockMetadata(uint64_t a1)
{
  result = qword_281515338;
  if (!qword_281515338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A677BD8(uint64_t a1)
{
  result = sub_24A82CA34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for FMIPEraseMetadata(uint64_t a1)
{
  result = qword_2815152A0;
  if (!qword_2815152A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A677CA0(uint64_t a1)
{
  result = sub_24A82CA34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for FMIPItemGroup(uint64_t a1)
{
  result = qword_281514460;
  if (!qword_281514460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A677D7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24A677DE0(uint64_t a1)
{
  sub_24A677D7C(319, &qword_27EF5DCB0, type metadata accessor for FMIPItem, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24A6788BC(319, &qword_27EF5DCB8, &qword_27EF5DAA8, &qword_24A835338, &qword_27EF5DCC0);
    if (v2 <= 0x3F)
    {
      sub_24A6788BC(319, &qword_27EF5DCC8, &qword_27EF5DA28, &qword_24A8415A0, &qword_27EF5DCA8);
      if (v3 <= 0x3F)
      {
        sub_24A678AB8(319);
        if (v4 <= 0x3F)
        {
          sub_24A677D7C(319, qword_281513DF8, type metadata accessor for FMIPItemLostModeMetadata, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_24A677D7C(319, &qword_27EF5DCD8, MEMORY[0x277CC95F0], MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for FMIPItem(uint64_t a1)
{
  result = qword_281512DD0;
  if (!qword_281512DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A678028(uint64_t a1)
{
  type metadata accessor for FMIPItemUpdateContext(319);
  if (v1 <= 0x3F)
  {
    sub_24A6784A8(319, &qword_27EF5EAE0, &type metadata for FMIPAddress, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24A6784A8(319, &qword_27EF5EAE8, &type metadata for FMIPLocation, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24A6784A8(319, &qword_27EF5D8F0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24A6784F8(319);
          if (v5 <= 0x3F)
          {
            sub_24A6784A8(319, &qword_27EF5EAF0, &type metadata for FMIPPartInfo, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_24A6784A8(319, &qword_27EF5EAF8, &type metadata for FMIPSafeLocation, MEMORY[0x277D83940]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for FMIPProductType(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24A67826C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A6782A4(uint64_t a1)
{
  result = type metadata accessor for FMIPItemUpdateType(319);
  if (v2 <= 0x3F)
  {
    result = sub_24A82CA34();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_24A678390(uint64_t a1)
{
  sub_24A678404(319);
  if (v1 <= 0x3F)
  {
    sub_24A678478();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24A678404(uint64_t a1)
{
  if (!qword_27EF5ECE0)
  {
    sub_24A82CAA4();
    sub_24A82CA34();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EF5ECE0);
    }
  }
}

ValueMetadata *sub_24A678478()
{
  result = qword_27EF5ECE8;
  if (!qword_27EF5ECE8)
  {
    result = &type metadata for FMIPLocationType;
    atomic_store(&type metadata for FMIPLocationType, &qword_27EF5ECE8);
  }

  return result;
}

void sub_24A6784A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24A6784F8(uint64_t a1)
{
  if (!qword_281513DF8[0])
  {
    type metadata accessor for FMIPItemLostModeMetadata(255);
    v1 = sub_24A82D634();
    if (!v2)
    {
      atomic_store(v1, qword_281513DF8);
    }
  }
}

uint64_t type metadata accessor for FMIPItemLostModeMetadata(uint64_t a1)
{
  result = qword_281513E30;
  if (!qword_281513E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A67859C(uint64_t a1)
{
  result = sub_24A82CA34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24A678618(uint64_t a1)
{
  sub_24A679334(319, &qword_27EF5D3E0, sub_24A6786D8);
  if (v1 <= 0x3F)
  {
    sub_24A678780();
    if (v2 <= 0x3F)
    {
      sub_24A679334(319, &qword_27EF5D3F8, sub_24A678728);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24A6786D8()
{
  if (!qword_27EF5D3E8)
  {
    v0 = sub_24A82D634();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF5D3E8);
    }
  }
}

void sub_24A678728(uint64_t a1)
{
  if (!qword_281513098[0])
  {
    type metadata accessor for FMIPHawkeyeProductInformation(255);
    v1 = sub_24A82D634();
    if (!v2)
    {
      atomic_store(v1, qword_281513098);
    }
  }
}

ValueMetadata *sub_24A678780()
{
  result = qword_27EF5D3F0;
  if (!qword_27EF5D3F0)
  {
    result = &type metadata for FMIPZeusProductInformation;
    atomic_store(&type metadata for FMIPZeusProductInformation, &qword_27EF5D3F0);
  }

  return result;
}

uint64_t type metadata accessor for FMIPHawkeyeProductInformation(uint64_t a1)
{
  result = qword_2815130F8;
  if (!qword_2815130F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A6787FC(uint64_t a1)
{
  sub_24A677A54();
  if (v1 <= 0x3F)
  {
    sub_24A82C8B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24A6788BC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_24A6CCDC0(a3, a4);
    sub_24A678A64(a5, a3, a4);
    v9 = sub_24A82D434();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24A67898C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A6789D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A678A1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A678A64(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_24A678AB8(uint64_t a1)
{
  if (!qword_27EF5DCD0)
  {
    type metadata accessor for FMIPItemPairingState(255);
    v1 = sub_24A82CF24();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF5DCD0);
    }
  }
}

uint64_t type metadata accessor for FMIPItemPairingState(uint64_t a1)
{
  result = qword_27EF5DBB0;
  if (!qword_27EF5DBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A678B6C(uint64_t a1)
{
  sub_24A678BC4();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_24A678BC4()
{
  if (!qword_27EF5DBC0)
  {
    v0 = sub_24A82CAA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF5DBC0);
    }
  }
}

uint64_t type metadata accessor for FMIPUnknownItem(uint64_t a1)
{
  result = qword_27EF5E5E0;
  if (!qword_27EF5E5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A678C58(uint64_t a1)
{
  sub_24A82CAA4();
  if (v1 <= 0x3F)
  {
    sub_24A6777B8(319, &qword_27EF5D8F0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24A6777B8(319, &qword_27EF5E5F0, &type metadata for FMIPLocation, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for FMIPProductType(319);
        if (v4 <= 0x3F)
        {
          sub_24A678DC4(319);
          if (v5 <= 0x3F)
          {
            sub_24A679108(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24A678DC4(uint64_t a1)
{
  if (!qword_27EF5E5F8)
  {
    type metadata accessor for FMIPUnknownItemUTMetadata(255);
    v1 = sub_24A82D634();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF5E5F8);
    }
  }
}

uint64_t type metadata accessor for FMIPUnknownItemUTMetadata(uint64_t a1)
{
  result = qword_27EF5D8E0;
  if (!qword_27EF5D8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A678E68(uint64_t a1)
{
  sub_24A677A54();
  if (v1 <= 0x3F)
  {
    sub_24A678EEC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24A678EEC(uint64_t a1)
{
  if (!qword_27EF5D8F8)
  {
    type metadata accessor for FMIPUnknownItemProductMetadata(255);
    v1 = sub_24A82D634();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF5D8F8);
    }
  }
}

uint64_t type metadata accessor for FMIPUnknownItemProductMetadata(uint64_t a1)
{
  result = qword_27EF5ECA0;
  if (!qword_27EF5ECA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A678F90(uint64_t a1)
{
  sub_24A677808(319, &qword_27EF5D8F0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24A677808(319, &qword_27EF5ECB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_24A677808(319, &qword_27EF5ECB8, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24A6790B0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24A6790B0(uint64_t a1)
{
  if (!qword_281514678)
  {
    sub_24A82C8B4();
    v1 = sub_24A82D634();
    if (!v2)
    {
      atomic_store(v1, &qword_281514678);
    }
  }
}

void sub_24A679108(uint64_t a1)
{
  if (!qword_27EF5E600)
  {
    sub_24A679170(255, &qword_27EF5DF78, 0x277D496E0);
    v1 = sub_24A82D634();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF5E600);
    }
  }
}

uint64_t sub_24A679170(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for FMIPSeparationLocation(uint64_t a1)
{
  result = qword_27EF5FA40;
  if (!qword_27EF5FA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A679204(uint64_t a1)
{
  sub_24A679298();
  if (v1 <= 0x3F)
  {
    sub_24A679380(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24A679298()
{
  if (!qword_27EF5EAE0)
  {
    v0 = sub_24A82D634();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF5EAE0);
    }
  }
}

uint64_t type metadata accessor for FMIPProductType(uint64_t a1)
{
  result = qword_281514308;
  if (!qword_281514308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A679334(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24A679380(uint64_t a1)
{
  if (!qword_281515DB8)
  {
    sub_24A82CA34();
    v1 = sub_24A82D634();
    if (!v2)
    {
      atomic_store(v1, &qword_281515DB8);
    }
  }
}

double sub_24A6793F8()
{
  *&result = 6;
  xmmword_27EF5CB68 = xmmword_24A82FD70;
  return result;
}

uint64_t sub_24A6794FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A679544(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A67959C()
{
  result = qword_27EF5D458;
  if (!qword_27EF5D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D458);
  }

  return result;
}

unint64_t sub_24A6795F0(uint64_t a1)
{
  *(a1 + 8) = sub_24A679620();
  result = sub_24A679674();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24A679620()
{
  result = qword_27EF5F9F0;
  if (!qword_27EF5F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F9F0);
  }

  return result;
}

unint64_t sub_24A679674()
{
  result = qword_27EF5F9F8;
  if (!qword_27EF5F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F9F8);
  }

  return result;
}

unint64_t sub_24A6796CC()
{
  result = qword_27EF5FA00;
  if (!qword_27EF5FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FA00);
  }

  return result;
}

uint64_t sub_24A679720()
{
  v0 = sub_24A82CDC4();
  sub_24A67976C(v0, qword_281518F88);
  sub_24A6797D0(v0, qword_281518F88);
  return sub_24A82CDB4();
}

uint64_t *sub_24A67976C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_24A6797D0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t FMIPItemImageCache.init(converter:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A6794F8();

  return v2;
}

unint64_t sub_24A67988C()
{
  result = qword_27EF5F550;
  if (!qword_27EF5F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F550);
  }

  return result;
}

unint64_t sub_24A6798E0(uint64_t a1)
{
  *(a1 + 8) = sub_24A679910();
  result = sub_24A679964();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24A679910()
{
  result = qword_27EF5D9F0;
  if (!qword_27EF5D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D9F0);
  }

  return result;
}

unint64_t sub_24A679964()
{
  result = qword_27EF5D9F8;
  if (!qword_27EF5D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D9F8);
  }

  return result;
}

unint64_t sub_24A6799BC()
{
  result = qword_27EF5DA00;
  if (!qword_27EF5DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DA00);
  }

  return result;
}

uint64_t type metadata accessor for FMIPManagerConfiguration(uint64_t a1)
{
  result = qword_281513D80;
  if (!qword_281513D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A679A5C(uint64_t a1)
{
  result = sub_24A82CAE4();
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

uint64_t sub_24A679B24()
{
  if (qword_281513588 != -1)
  {
    swift_once();
  }

  v1 = *(qword_281518F48 + 16);
  v2 = *(qword_281518F48 + 24);
  swift_bridgeObjectRetain_n();

  MEMORY[0x24C21C9E0](0x7365686361432FLL, 0xE700000000000000);

  MEMORY[0x24C21C9E0](0xD00000000000001BLL, 0x800000024A8474B0);

  qword_281518F70 = v1;
  *algn_281518F78 = v2;
  return result;
}

uint64_t sub_24A679C18()
{
  type metadata accessor for FMSystemDirectoryUtilities();
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  started = sysdir_start_search_path_enumeration_private();
  MEMORY[0x24C21E340](started, v1);
  v3 = sub_24A82D0E4();
  v5 = v4;
  result = MEMORY[0x24C21E1D0](v1, -1, -1);
  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  qword_281518F48 = v0;
  return result;
}

uint64_t FMIPManagerConfiguration.preferredLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_preferredLocale;
  v4 = sub_24A82CAE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FMIPManagerConfiguration.__allocating_init(enabledSubsystems:preferredLocale:authenticationUIProvider:snapshotHandlers:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v7 = sub_24A82CAE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  (*(v8 + 16))(v10, a2, v7);
  if (qword_281513D90 != -1)
  {
    swift_once();
  }

  v11 = qword_281513D98;
  v12 = *(qword_281513D98 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_cacheDirectory);
  v13 = *(qword_281513D98 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_cacheDirectory + 8);
  v14 = *(v8 + 8);

  v14(a2, v7);
  v16 = *(v11 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_interactionControllerProvider);
  v15 = *(v11 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_interactionControllerProvider + 8);
  type metadata accessor for FMIPManagerConfiguration(0);
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_preferredLocale, v10, v7);
  v18 = (v17 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_cacheDirectory);
  *v18 = v12;
  v18[1] = v13;
  v19 = (v17 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_interactionControllerProvider);
  *v19 = v16;
  v19[1] = v15;
  v20 = v17 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_authenticationUIProvider;
  *(v20 + 32) = *(a3 + 32);
  v21 = *(a3 + 16);
  *v20 = *a3;
  *(v20 + 16) = v21;
  v22 = v25;
  *(v17 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems) = v24;
  *(v17 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers) = v22;

  return v17;
}

uint64_t type metadata accessor for FMIPManager(uint64_t a1)
{
  result = qword_281515C58;
  if (!qword_281515C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A679F94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A679FDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A67A024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A67A06C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A67A0B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A67A0FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A67A144()
{
  v0 = sub_24A67CBF4(&unk_285DBE488);
  result = swift_arrayDestroy();
  qword_27EF5DEE8 = v0;
  return result;
}

uint64_t sub_24A67A190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_24A82DCC4();
  sub_24A82D094();
  v6 = sub_24A82DD24();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_24A82DC04() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_24A67A288()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPGarbageCollector: verifyingAccount...", v5, 2u);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v6 = *(v1 + 16);
  v7 = [v6 aa_primaryAppleAccount];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 aa_personID];
    if (v9)
    {
      v10 = v9;
      v11 = sub_24A82CFC4();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v58 = v6;
    v59 = v1;
    if (qword_27EF5CC20 != -1)
    {
      swift_once();
    }

    v17 = qword_27EF78F40;
    ObjectType = swift_getObjectType();
    v57 = v17;
    v60 = (*(v17 + 8))(ObjectType, v17);
    v19 = v18;
    v20 = v8;
    v21 = sub_24A82CD94();
    v22 = sub_24A82D504();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = v11;
      v25 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v25 = v8;
      v26 = v20;
      _os_log_impl(&dword_24A675000, v21, v22, "FMIPGarbageCollector: account %@", v23, 0xCu);
      sub_24A67CDA4(v25);
      v27 = v25;
      v11 = v24;
      MEMORY[0x24C21E1D0](v27, -1, -1);
      MEMORY[0x24C21E1D0](v23, -1, -1);
    }

    v61 = v20;

    v28 = sub_24A82CD94();
    v29 = sub_24A82D504();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v62 = v55;
      *v30 = 136315394;

      sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
      v31 = sub_24A82D024();
      v33 = sub_24A68761C(v31, v32, &v62);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2080;

      v34 = sub_24A82D024();
      v36 = sub_24A68761C(v34, v35, &v62);

      *(v30 + 14) = v36;
      _os_log_impl(&dword_24A675000, v28, v29, "FMIPGarbageCollector: verifyingAccount new: %s previous: %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v55, -1, -1);
      MEMORY[0x24C21E1D0](v30, -1, -1);
    }

    if (v13)
    {
      if (!v19)
      {
        goto LABEL_28;
      }

      if (v11 == v60 && v13 == v19)
      {

        goto LABEL_31;
      }

      v37 = sub_24A82DC04();

      if ((v37 & 1) == 0)
      {
LABEL_28:
        v38 = sub_24A82CD94();
        v39 = sub_24A82D504();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_24A675000, v38, v39, "FMIPGarbageCollector: purging cache because person id are not matching.", v40, 2u);
          MEMORY[0x24C21E1D0](v40, -1, -1);
        }

        sub_24A78EDD0();
      }
    }

    else if (v19)
    {

      goto LABEL_28;
    }

LABEL_31:
    v41 = v61;
    v42 = [v61 aa_fmipAccount];
    v43 = [v58 credentialForAccount_];
    v44 = v43;
    if (v43 && (v45 = [v43 credentialItemForKey_]) != 0)
    {

      if (v42 && (v46 = [v42 identifier]) != 0)
      {
        v47 = v46;
        v48 = sub_24A82CFC4();
        v50 = v49;

        v41 = v61;
      }

      else
      {
        v48 = 0;
        v50 = 0;
      }

      *(v59 + 32) = v48;
      *(v59 + 40) = v50;

      (*(v57 + 16))(v11, v13, ObjectType);
    }

    else
    {

      v51 = sub_24A82CD94();
      v52 = sub_24A82D504();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_24A675000, v51, v52, "FMIPGarbageCollector: purging cache because the token is missing", v53, 2u);
        v54 = v53;
        v41 = v61;
        MEMORY[0x24C21E1D0](v54, -1, -1);
      }

      *(v59 + 32) = 0;
      *(v59 + 40) = 0;

      sub_24A78EDD0();
    }

    return;
  }

  v14 = sub_24A82CD94();
  v15 = sub_24A82D4E4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24A675000, v14, v15, "FMIPGarbageCollector: error retrieving primary account", v16, 2u);
    MEMORY[0x24C21E1D0](v16, -1, -1);
  }

  sub_24A78EDD0();
}

uint64_t sub_24A67A9AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A67AA5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

double static FMIPBeaconSharingLimits.default.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_27EF5CB60 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_27EF5CB68;
  *a1 = xmmword_27EF5CB68;
  return result;
}

uint64_t FMIPDeviceImageCache.init(converter:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A6794F8();

  return v2;
}

void *sub_24A67ABB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21 = a1;
  v22 = a2;
  v20 = *v2;
  v19 = sub_24A82D554();
  v4 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82D534();
  MEMORY[0x28223BE20](v7);
  v8 = sub_24A82CE54();
  MEMORY[0x28223BE20](v8 - 8);
  v2[2] = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v18 = sub_24A67B054();
  sub_24A82CE44();
  v23 = MEMORY[0x277D84F90];
  sub_24A6794FC(&qword_2815146D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v19);
  v2[3] = sub_24A82D594();
  swift_getAssociatedConformanceWitness();
  v2[4] = sub_24A82CEC4();
  sub_24A6CCDC0(&qword_27EF5CF40, &unk_24A836A70);
  sub_24A82DD44();
  swift_getFunctionTypeMetadata1();
  sub_24A82D314();
  v2[5] = sub_24A82CEB4();
  v2[6] = sub_24A82CEB4();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_281518F88);
  v10 = sub_24A82CD94();
  v11 = sub_24A82D504();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_24A675000, v10, v11, "FMImageCache: initialized", v12, 2u);
    MEMORY[0x24C21E1D0](v12, -1, -1);
  }

  v13 = v22;
  v3[7] = v21;
  v3[8] = v13;
  v14 = v3[2];

  [v14 setQualityOfService_];
  v15 = v3[2];
  v16 = sub_24A82CF94();

  [v15 setName_];

  [v3[2] setMaxConcurrentOperationCount_];
  return v3;
}

unint64_t sub_24A67B054()
{
  result = qword_2815146C0;
  if (!qword_2815146C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2815146C0);
  }

  return result;
}

uint64_t static FMIPManagerConfiguration.default.getter()
{
  if (qword_281513D90 != -1)
  {
    swift_once();
  }
}

uint64_t sub_24A67B0FC()
{
  v0 = sub_24A82CAE4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A82CAC4();
  if (qword_281514350 != -1)
  {
    swift_once();
  }

  v5 = qword_281518F70;
  v4 = *algn_281518F78;
  type metadata accessor for FMIPManagerConfiguration(0);
  v6 = swift_allocObject();
  (*(v1 + 32))(v6 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_preferredLocale, v3, v0);
  v7 = (v6 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_cacheDirectory);
  *v7 = v5;
  v7[1] = v4;
  v8 = (v6 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_interactionControllerProvider);
  *v8 = sub_24A695B98;
  v8[1] = 0;
  v9 = v6 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_authenticationUIProvider;
  *(v9 + 32) = 0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v6 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems) = 3;
  *(v6 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers) = 0;
  qword_281513D98 = v6;
}

void sub_24A67B2AC(uint64_t a1)
{
  sub_24A82CAA4();
  if (v1 <= 0x3F)
  {
    sub_24A67B484(319, &qword_281515DB8, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      sub_24A67B484(319, qword_281515CC8, type metadata accessor for FMIPDevice);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24A67B484(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24A82D634();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t FMIPManager.init(configuration:ownerSession:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v109 = a2;
  v111 = a1;
  v4 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  MEMORY[0x28223BE20](v4 - 8);
  v108 = v99 - v5;
  v6 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  MEMORY[0x28223BE20](v6 - 8);
  v106 = v99 - v7;
  v103 = sub_24A82D554();
  v8 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v10 = v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_24A82D534();
  MEMORY[0x28223BE20](v107);
  v11 = sub_24A82CE54();
  MEMORY[0x28223BE20](v11 - 8);
  sub_24A82CA94();
  *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_siriDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v99[0] = OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController;
  *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController) = 0;
  v12 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue;
  v102 = sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  sub_24A82CE34();
  sub_24A82D524();
  v110 = *MEMORY[0x277D85260];
  v104 = *(v8 + 104);
  v104(v10);
  v99[3] = v8 + 104;
  v13 = v10;
  v14 = sub_24A82D594();
  v105 = v12;
  *(v2 + v12) = v14;
  v101 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_unknownItemQueue;
  v100 = ".fmipcore.fmipmanager.data";
  sub_24A82CE34();
  *&v115 = MEMORY[0x277D84F90];
  v99[2] = sub_24A679FDC(&qword_2815146D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v99[1] = sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  v15 = v103;
  v16 = v104;
  (v104)(v13, v110, v103);
  *(v2 + v101) = sub_24A82D594();
  v101 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue;
  v100 = "nager.unknownItemQueue";
  sub_24A82CE34();
  *&v115 = MEMORY[0x277D84F90];
  sub_24A82D6B4();
  (v16)(v13, v110, v15);
  *(v2 + v101) = sub_24A82D594();
  v102 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_actionsController;
  *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_actionsController) = 0;
  *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_snapshotDevicesResponseReceived) = 0;
  v107 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemActionsController;
  *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemActionsController) = 0;
  *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_snapshotItemsResponseReceived) = 0;
  *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_snapshotItemsLocatedResponseReceived) = 0;
  v17 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_stopRefreshTimestamp;
  v18 = sub_24A82CA34();
  (*(*(v18 - 8) + 56))(v3 + v17, 1, 1, v18);
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isUpdatingSingleDevices) = 0;
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isRefreshingItems) = 0;
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isRefreshingDevices) = 0;
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isUTAppAlertDisabled) = 0;
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 isInternalBuild];

  v21 = 0;
  if (v20)
  {
    v22 = [objc_opt_self() standardUserDefaults];
    v23 = sub_24A82CF94();
    v21 = [v22 BOOLForKey_];
  }

  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_useRealtimeForItems) = v21;
  v24 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_selectedDevice;
  v25 = type metadata accessor for FMIPDevice(0);
  (*(*(v25 - 8) + 56))(v3 + v24, 1, 1, v25);
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemCounts) = 0;
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_initializedSubsystems) = 0;
  v26 = v111;
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration) = v111;
  v27 = objc_allocWithZone(MEMORY[0x277D49698]);

  v28 = [v27 init];
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_ownerSession) = v28;
  v29 = *(v26 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers);
  if (v29)
  {
    v30 = *(v29 + 64) != 0;
    if (*(v29 + 32))
    {
      v31 = 1;
      v110 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v30 = 0;
  }

  v31 = 0;
  v110 = v30;
LABEL_8:
  v32 = qword_27EF5CBB8;
  v104 = v28;
  if (v32 != -1)
  {
    swift_once();
  }

  v33 = qword_27EF5DEE8;
  v34 = [objc_opt_self() mainBundle];
  v35 = [v34 bundleIdentifier];

  if (v35)
  {
    v36 = sub_24A82CFC4();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0xE000000000000000;
  }

  v39 = sub_24A67A190(v36, v38, v33);

  v40 = v110;
  v41 = v110 ^ 1;
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isDevicesSnapshotMode) = v31;
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isItemsSnapshotMode) = v30;
  type metadata accessor for FMIPGarbageCollector();
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_garbageCollector) = sub_24A67CA04();
  v42 = v111;
  v43 = *(v111 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_cacheDirectory);
  v44 = *(v111 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_cacheDirectory + 8);
  v103 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems;
  *&v115 = *(v111 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems);
  v45 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_preferredLocale;
  v46 = sub_24A82CAE4();
  v47 = *(v46 - 8);
  v48 = v42 + v45;
  v49 = v106;
  (*(v47 + 16))(v106, v48, v46);
  (*(v47 + 56))(v49, 0, 1, v46);
  v50 = *(v3 + v105);
  type metadata accessor for FMIPDataManager(0);
  swift_allocObject();

  v51 = sub_24A67CF18(v43, v44, &v115, v49, v39 & v41, v40, v50);
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager) = v51;
  type metadata accessor for FMIPBeaconSharingController();
  swift_allocObject();

  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconSharingController) = sub_24A695148();
  type metadata accessor for FMLocationShifter();
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_locationShifter) = FMLocationShifter.init()();
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_locationController) = [objc_allocWithZone(type metadata accessor for FMIPLocationController()) init];
  v52 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_authenticationUIProvider;
  v53 = sub_24A67E964(v42 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_authenticationUIProvider, v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_authenticationUIProvider, &qword_27EF5D608, &qword_24A837E90);
  (*(v42 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_interactionControllerProvider))(&v115, v53);
  v54 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_interactionController;
  sub_24A696E80(&v115, v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_interactionController);
  v55 = v104;
  sub_24A696E98(&v116);
  type metadata accessor for FMIPBeaconRefreshingController(0);
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController) = sub_24A6972BC(v55, &v116);
  type metadata accessor for FMIPSafeLocationRefreshingController();
  v56 = swift_allocObject();
  v57 = v55;
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_safeLocationRefreshingController) = sub_24A697EF4(v57, v56);
  swift_beginAccess();
  sub_24A698230(v3 + v54, &v115);
  type metadata accessor for FMIPURLHandler();
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_urlHandler) = sub_24A6982B8(&v115);
  if (*(v42 + v103))
  {
    sub_24A698230(v3 + v54, &v115);
    sub_24A67E964(v3 + v52, v114, &qword_27EF5D608, &qword_24A837E90);
    type metadata accessor for FMIPDeviceActionsController();
    memset(v112, 0, sizeof(v112));
    v113 = 0;
    swift_allocObject();
    v58 = sub_24A6983D8(v57, &v115, v114, v112);
    *(v3 + v102) = v58;

    sub_24A698230(v3 + v54, &v115);
    v59 = type metadata accessor for FMAPSConnectionHandler();
    if (qword_27EF5CC20 != -1)
    {
      swift_once();
    }

    v60 = qword_27EF78F30;
    v61 = *algn_27EF78F38;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v63 = sub_24A6987EC(0xD00000000000001ELL, 0x800000024A846B70, v60, 0, 0, v59, ObjectType, v61);
    type metadata accessor for FMIPRefreshingController(0);
    swift_allocObject();
    v64 = sub_24A6991A4(&v115, v63);
    *(v3 + v99[0]) = v64;
  }

  type metadata accessor for FMIPItemActionsController();
  swift_allocObject();
  v65 = v57;

  v66 = sub_24A699828(v65, v51);
  *(v3 + v107) = v66;

  type metadata accessor for FMIPDeviceConnectionStateProvider();
  v67 = swift_allocObject();
  *(v67 + 16) = 0;
  *(v67 + 32) = 0;
  swift_unknownObjectWeakInit();
  sub_24A69A02C();
  *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_connectionStateProvider) = v67;
  *(v67 + 32) = &off_285DC5EB8;
  swift_unknownObjectWeakAssign();
  if ((v110 & 1) == 0)
  {

    sub_24A69A1CC();
  }

  *(v51 + 40) = &off_285DC5E58;
  swift_unknownObjectWeakAssign();

  v107 = v51;
  sub_24A69A398();

  *(*(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_locationController) + OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_delegate + 8) = &off_285DC5E80;
  swift_unknownObjectWeakAssign();
  v68 = v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_interactionController;
  swift_beginAccess();
  v69 = *(v68 + 24);
  v70 = *(v68 + 32);
  sub_24A69A6C4(v68, v69);
  v71 = *(v70 + 16);

  v71(v72, &off_285DC5E38, v69, v70);
  swift_endAccess();
  v73 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);
  if (v73)
  {
    *(v73 + 40) = &off_285DC5D78;
    swift_unknownObjectWeakAssign();
  }

  *(*(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController) + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_delegate + 8) = &off_285DC5DB8;
  swift_unknownObjectWeakAssign();
  *(*(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_safeLocationRefreshingController) + 24) = &off_285DC5E28;
  swift_unknownObjectWeakAssign();
  *(*(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_garbageCollector) + 56) = &off_285DC5E90;
  swift_unknownObjectWeakAssign();
  v74 = sub_24A82D354();
  v75 = v108;
  (*(*(v74 - 8) + 56))(v108, 1, 1, v74);
  v76 = swift_allocObject();
  v76[2] = 0;
  v76[3] = 0;
  v76[4] = v3;
  v76[5] = v3;
  swift_retain_n();
  sub_24A7382F4(0, 0, v75, &unk_24A836D88, v76);

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v77 = sub_24A82CDC4();
  sub_24A6797D0(v77, qword_281518F88);

  v78 = sub_24A82CD94();
  v79 = sub_24A82D504();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *&v115 = v81;
    *v80 = 136315394;
    v82 = sub_24A82CA54();
    v84 = sub_24A695068(0xCuLL, v82, v83);
    v86 = v85;
    v88 = v87;
    v108 = v65;
    v90 = v89;

    v91 = MEMORY[0x24C21C960](v84, v86, v88, v90);
    v93 = v92;

    v94 = sub_24A68761C(v91, v93, &v115);

    *(v80 + 4) = v94;
    *(v80 + 12) = 2080;
    if (v110)
    {
      v95 = 0x70616E7320736120;
    }

    else
    {
      v95 = 0;
    }

    if (v110)
    {
      v96 = 0xEC000000746F6873;
    }

    else
    {
      v96 = 0xE000000000000000;
    }

    v97 = sub_24A68761C(v95, v96, &v115);

    *(v80 + 14) = v97;
    _os_log_impl(&dword_24A675000, v78, v79, "FMIPManager<%s>.init%s", v80, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v81, -1, -1);
    MEMORY[0x24C21E1D0](v80, -1, -1);
  }

  else
  {
  }

  return v3;
}

uint64_t sub_24A67C6F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A67C754(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[28];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[29];
    goto LABEL_13;
  }

  v13 = sub_24A6BBA94(&qword_27EF5DE50, &qword_24A83DE40);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[30];
    goto LABEL_13;
  }

  v14 = sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[31];
    goto LABEL_13;
  }

  v15 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[32];
    goto LABEL_13;
  }

  v17 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[39];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_24A67CA04()
{
  v1 = v0;
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  *(v0 + 24) = 0;
  *(v0 + 56) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24A8327A0;
  if (qword_281514350 != -1)
  {
    v11 = v2;
    swift_once();
    v2 = v11;
  }

  v3 = *algn_281518F78;
  *(v2 + 32) = qword_281518F70;
  *(v2 + 40) = v3;
  *(v1 + 64) = v2;
  v4 = qword_281515DC8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_24A82CDC4();
  sub_24A6797D0(v5, qword_281518F88);
  v6 = sub_24A82CD94();
  v7 = sub_24A82D504();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24A675000, v6, v7, "FMIPGarbageCollector: initialized", v8, 2u);
    MEMORY[0x24C21E1D0](v8, -1, -1);
  }

  sub_24A67A288();
  v9 = [objc_opt_self() defaultCenter];
  [v9 addObserver:v1 selector:sel_scheduleAccountVerificationWithNotification_ name:*MEMORY[0x277CB8B78] object:0];

  return v1;
}

uint64_t sub_24A67CBF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A6BBA94(&qword_27EF5DD48, &qword_24A836128);
    v3 = sub_24A82D814();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_24A82DCC4();

      sub_24A82D094();
      result = sub_24A82DD24();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_24A82DC04();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_24A67CD5C()
{
  type metadata accessor for FMPreferencesUtilStoring();
  result = swift_allocObject();
  qword_27EF78F30 = result;
  *algn_27EF78F38 = &off_285DCAB40;
  qword_27EF78F40 = &off_285DCAB20;
  return result;
}

uint64_t sub_24A67CDA4(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5D010, &qword_24A830E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24A67CE0C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24A67F098(a5, a6);
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
    result = sub_24A82D8B4();
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

uint64_t sub_24A67CF18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5, int a6, void *a7)
{
  v8 = v7;
  v139 = a7;
  v138 = a6;
  LODWORD(v133) = a5;
  v136 = a4;
  v137 = a2;
  v135 = a1;
  v10 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v130 = v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v129 = v120 - v13;
  v14 = sub_24A6BBA94(&qword_27EF5E1D0, &qword_24A8377E8);
  MEMORY[0x28223BE20](v14 - 8);
  v128 = v120 - v15;
  v16 = sub_24A6BBA94(&qword_27EF5E160, &qword_24A8377A8);
  MEMORY[0x28223BE20](v16 - 8);
  v127 = v120 - v17;
  v18 = sub_24A6BBA94(&qword_27EF5E1A8, &qword_24A8377D0);
  MEMORY[0x28223BE20](v18 - 8);
  v126 = v120 - v19;
  v20 = sub_24A6BBA94(&qword_27EF5E238, &qword_24A837830);
  MEMORY[0x28223BE20](v20 - 8);
  v125 = v120 - v21;
  v22 = sub_24A6BBA94(&qword_27EF5E250, &qword_24A837840);
  MEMORY[0x28223BE20](v22 - 8);
  v124 = v120 - v23;
  v24 = sub_24A6BBA94(&qword_27EF5E210, &qword_24A837818);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = v120 - v25;
  v131 = sub_24A6BBA94(&qword_27EF5E218, &qword_24A837820);
  v27 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v29 = v120 - v28;
  v30 = sub_24A82CAA4();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a3;
  *(v8 + 40) = 0;
  swift_unknownObjectWeakInit();
  sub_24A82CA94();
  v35 = sub_24A82CA54();
  v37 = v36;
  (*(v31 + 8))(v33, v30);
  v38 = v139;
  *(v8 + 48) = v35;
  *(v8 + 56) = v37;
  v39 = MEMORY[0x277D84F90];
  *(v8 + 64) = 0;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0u;
  *(v8 + 152) = 0u;
  *(v8 + 168) = 0;
  *(v8 + 176) = v39;
  v40 = MEMORY[0x277D84F98];
  *(v8 + 184) = MEMORY[0x277D84F98];
  *(v8 + 192) = v40;
  *(v8 + 200) = v40;
  *(v8 + 208) = v40;
  *(v8 + 216) = v40;
  *(v8 + 224) = v40;
  *(v8 + 232) = v40;
  *(v8 + 240) = v39;
  *(v8 + 248) = v40;
  *(v8 + 256) = v40;
  *(v8 + 264) = v40;
  *(v8 + 272) = v40;
  *(v8 + 280) = v39;
  *(v8 + 288) = v39;
  *(v8 + 296) = v39;
  *(v8 + 304) = v40;
  *(v8 + 328) = 0u;
  *(v8 + 344) = 0u;
  *(v8 + 312) = 0u;
  v134 = v34;
  *(v8 + 16) = v34;
  LOBYTE(v40) = v133;
  *(v8 + 24) = v133;
  *(v8 + 25) = v138;
  *(v8 + 72) = v38;
  *(v8 + 80) = v39;
  if (v40)
  {
    v41 = v38;
    sub_24A67E2F8(0xD000000000000012, 0x800000024A847430, 0x6174614450494D46, 0xEF726567616E614DLL, v29);
    sub_24A67E964(v29, v26, &qword_27EF5E218, &qword_24A837820);
    v42 = v131;
    (*(v27 + 56))(v26, 0, 1, v131);
    sub_24A6BBA94(&qword_27EF5E2B0, &qword_24A837858);
    swift_allocObject();
    v43 = v137;

    v44 = v135;
    *(v8 + 328) = sub_24A67EBB4(v135, v43, 0x2E73656369766544, 0xEC00000061746164, v26, &qword_27EF5E210, &qword_24A837818);

    v120[0] = "FMIPDataManagerKey";
    v132 = sub_24A82CC84();
    v45 = *(v132 - 8);
    v133 = *(v45 + 16);
    v120[1] = v45 + 16;
    v46 = v124;
    v133(v124, v29, v132);
    v47 = *(v42 + 44);
    v48 = sub_24A6BBA94(&qword_27EF5E258, &qword_24A837848);
    v49 = *(v48 + 44);
    v50 = sub_24A82CCB4();
    v51 = *(v50 - 8);
    v52 = *(v51 + 16);
    v131 = v51 + 16;
    v121 = v47;
    v123 = v50;
    v52(v46 + v49, &v29[v47], v50);
    v122 = v52;
    (*(*(v48 - 8) + 56))(v46, 0, 1, v48);
    sub_24A6BBA94(&qword_27EF5E2B8, &qword_24A837860);
    swift_allocObject();

    *(v8 + 336) = sub_24A67EBB4(v44, v43, 0xD000000000000012, v120[0] | 0x8000000000000000, v46, &qword_27EF5E250, &qword_24A837840);

    v53 = v125;
    v133(v125, v29, v132);
    v54 = sub_24A6BBA94(&qword_27EF5E240, &qword_24A837838);
    v52(v53 + *(v54 + 44), &v29[v47], v50);
    (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
    sub_24A6BBA94(&qword_27EF5E2C0, &qword_24A837868);
    swift_allocObject();

    *(v8 + 344) = sub_24A67EBB4(v44, v43, 0x61642E72656E774FLL, 0xEA00000000006174, v53, &qword_27EF5E238, &qword_24A837830);

    v55 = v126;
    v56 = v133;
    v133(v126, v29, v132);
    v57 = sub_24A6BBA94(&unk_27EF5E1B0, &unk_24A8377D8);
    v59 = v121;
    v58 = v122;
    v122(v55 + *(v57 + 44), &v29[v121], v123);
    (*(*(v57 - 8) + 56))(v55, 0, 1, v57);
    sub_24A6BBA94(&qword_27EF5E2C8, &qword_24A837870);
    swift_allocObject();
    v60 = v29;
    v61 = v137;

    *(v8 + 312) = sub_24A67EBB4(v135, v61, 0x61642E736D657449, 0xEA00000000006174, v55, &qword_27EF5E1A8, &qword_24A8377D0);

    v62 = v127;
    v63 = v60;
    v64 = v60;
    v65 = v132;
    v56(v127, v64, v132);
    v66 = sub_24A6BBA94(&qword_27EF5E168, &unk_24A8377B0);
    v67 = v63 + v59;
    v68 = v123;
    v58(v62 + *(v66 + 44), v67, v123);
    (*(*(v66 - 8) + 56))(v62, 0, 1, v66);
    sub_24A6BBA94(&qword_27EF5E2D0, &qword_24A837878);
    swift_allocObject();
    v69 = v137;

    v70 = v135;
    *(v8 + 320) = sub_24A67EBB4(v135, v69, 0x756F72476D657449, 0xEF617461642E7370, v62, &qword_27EF5E160, &qword_24A8377A8);

    v71 = v128;
    v133(v128, v63, v65);
    v72 = sub_24A6BBA94(&qword_27EF5E1D8, &qword_24A8377F0);
    v122(v71 + *(v72 + 44), v63 + v121, v68);
    (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
    sub_24A6BBA94(&unk_27EF5E2D8, &unk_24A837880);
    swift_allocObject();
    v73 = sub_24A67EBB4(v70, v69, 0xD000000000000012, 0x800000024A847470, v71, &qword_27EF5E1D0, &qword_24A8377E8);
    sub_24A67F378(v63, &qword_27EF5E218, &qword_24A837820);
  }

  else
  {
    v74 = v38;

    *(v8 + 312) = 0;

    *(v8 + 320) = 0;

    *(v8 + 328) = 0;

    *(v8 + 336) = 0;

    *(v8 + 344) = 0;

    v73 = 0;
  }

  *(v8 + 352) = v73;

  v75 = v136;
  sub_24A67E964(v136, v8 + OBJC_IVAR____TtC8FMIPCore15FMIPDataManager_preferredLocale, &qword_27EF5E930, &unk_24A8343F0);
  if (v138)
  {
    *(v8 + OBJC_IVAR____TtC8FMIPCore15FMIPDataManager_geocodingCache) = 0;
  }

  else
  {
    v76 = v129;
    sub_24A67E964(v75, v129, &qword_27EF5E930, &unk_24A8343F0);
    type metadata accessor for FMIPReverseGeocodingCache(0);
    *(swift_allocObject() + qword_27EF78FC8 + 8) = 0;
    swift_unknownObjectWeakInit();
    v77 = v130;
    sub_24A67E964(v76, v130, &qword_27EF5E930, &unk_24A8343F0);
    v78 = sub_24A67F608(v77);
    sub_24A67F378(v76, &qword_27EF5E930, &unk_24A8343F0);
    *(v8 + OBJC_IVAR____TtC8FMIPCore15FMIPDataManager_geocodingCache) = v78;
    *(v78 + qword_27EF78FC8 + 8) = &off_285DC7268;
    swift_unknownObjectWeakAssign();
  }

  v141[0] = v134;
  if ((sub_24A67FC78(v141) & 1) == 0)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v101 = sub_24A82CDC4();
    sub_24A6797D0(v101, qword_281518F88);

    v80 = sub_24A82CD94();
    v102 = sub_24A82D504();

    if (os_log_type_enabled(v80, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v141[0] = v104;
      *v103 = 136315138;
      v105 = *(v8 + 48);
      v106 = *(v8 + 56);

      v107 = sub_24A695068(0xCuLL, v105, v106);
      v109 = v108;
      v111 = v110;
      v113 = v112;

      v114 = MEMORY[0x24C21C960](v107, v109, v111, v113);
      v116 = v115;

      v117 = sub_24A68761C(v114, v116, v141);

      *(v103 + 4) = v117;
      _os_log_impl(&dword_24A675000, v80, v102, "FMIPDataManager<%s>.init", v103, 0xCu);
      sub_24A6876E8(v104);
      MEMORY[0x24C21E1D0](v104, -1, -1);
      v100 = v103;
      goto LABEL_16;
    }

LABEL_17:

    v118 = v75;
    goto LABEL_18;
  }

  *(v8 + 64) = 1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v79 = sub_24A82CDC4();
  sub_24A6797D0(v79, qword_281518F88);

  v80 = sub_24A82CD94();
  v81 = sub_24A82D504();

  if (!os_log_type_enabled(v80, v81))
  {
    goto LABEL_17;
  }

  v82 = swift_slowAlloc();
  v83 = swift_slowAlloc();
  v141[0] = v83;
  *v82 = 136315394;
  v84 = *(v8 + 48);
  v85 = *(v8 + 56);

  v86 = sub_24A695068(0xCuLL, v84, v85);
  v88 = v87;
  v90 = v89;
  v92 = v91;

  v93 = MEMORY[0x24C21C960](v86, v88, v90, v92);
  v95 = v94;

  v96 = sub_24A68761C(v93, v95, v141);

  *(v82 + 4) = v96;
  *(v82 + 12) = 2080;
  v140 = v134;
  v97 = sub_24A82D024();
  v99 = sub_24A68761C(v97, v98, v141);

  *(v82 + 14) = v99;
  _os_log_impl(&dword_24A675000, v80, v81, "FMIPDataManager<%s>.init with valid cache for subsystems: %s", v82, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x24C21E1D0](v83, -1, -1);
  v100 = v82;
LABEL_16:
  MEMORY[0x24C21E1D0](v100, -1, -1);

  v118 = v136;
LABEL_18:
  sub_24A67F378(v118, &qword_27EF5E930, &unk_24A8343F0);
  return v8;
}

void *sub_24A67DF6C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FMIPSafeLocationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPSafeLocationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24A67E0F0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24A67E168(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_24A67E1C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_24A82CF94();
  }

  else
  {
    v2 = 0;
  }

  v3 = objc_opt_self();
  v4 = sub_24A82CF94();
  v5 = sub_24A82CF94();
  [v3 setString:v2 forKey:v4 inDomain:v5];
}

uint64_t type metadata accessor for FMIPDataManager(uint64_t a1)
{
  result = qword_281514320;
  if (!qword_281514320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A67E2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a5;
  v9 = sub_24A82C524();
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A6BBA94(&qword_27EF5E218, &qword_24A837820);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - v16;
  v28[1] = a1;
  v28[2] = a2;
  v28[3] = a3;
  v28[4] = a4;
  v18 = sub_24A82C544();
  v20 = v19;
  if (v19 >> 60 == 15)
  {
    sub_24A6BBA94(&qword_27EF5E2F8, &unk_24A837890);
    sub_24A68795C(&qword_27EF5E300, &qword_27EF5E2F8, &unk_24A837890, &unk_24A842F18);
    v21 = swift_allocError();
    swift_willThrow();
    sub_24A82CC74();
    sub_24A82CCA4();
    sub_24A82C754();
    swift_allocObject();
    sub_24A82C744();
    sub_24A68795C(&qword_27EF5E2E8, &qword_27EF5E218, &qword_24A837820, &protocol conformance descriptor for FMDiskIO<A>.KeyPair);
    v23 = sub_24A82C734();
    v25 = v24;

    v31 = v23;
    v32 = v25;
    v26 = v29;
    (*(v29 + 104))(v11, *MEMORY[0x277D08A30], v9);
    sub_24A770D64();
    sub_24A82C534();
    (*(v26 + 8))(v11, v9);

    sub_24A67E0F0(v23, v25);
    v17 = v15;
  }

  else
  {
    v22 = v18;
    sub_24A82C724();
    swift_allocObject();
    sub_24A82C714();
    sub_24A68795C(&qword_27EF5E308, &qword_27EF5E218, &qword_24A837820, &protocol conformance descriptor for FMDiskIO<A>.KeyPair);
    sub_24A82C704();
    sub_24A67E8E8(v22, v20);
  }

  return sub_24A67E8FC(v17, v30, &qword_27EF5E218, &qword_24A837820);
}

uint64_t sub_24A67E858(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A67E8A0(char a1)
{
  if (a1)
  {
    return 0x697274656D6D7973;
  }

  else
  {
    return 0x4B65746176697270;
  }
}

uint64_t sub_24A67E8E8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24A67E0F0(result, a2);
  }

  return result;
}

uint64_t sub_24A67E8FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_24A6BBA94(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24A67E964(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_24A6BBA94(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24A67E9E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24A82CC84();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24A82CCB4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 44);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24A67EAF4(void *a1)
{
  type metadata accessor for FMDiskIO.KeyPair(255, a1[10], a1[11], a1[12]);
  result = sub_24A82D634();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_24A67EBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v31 = a6;
  v32 = a7;
  v8 = v7;
  v29 = a3;
  v30 = a5;
  v26 = a4;
  v27 = a1;
  v28 = a2;
  v25 = sub_24A82D554();
  v9 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A82D534();
  MEMORY[0x28223BE20](v12);
  v13 = sub_24A82CE54();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_24A67B054();
  v24[1] = "SafeLocations.data";
  v24[2] = v14;
  sub_24A82CE24();
  v33 = MEMORY[0x277D84F90];
  sub_24A67F008(&qword_2815146D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A68795C(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510, MEMORY[0x277D83970]);
  sub_24A82D6B4();
  (*(v9 + 104))(v11, *MEMORY[0x277D85260], v25);
  v7[2] = sub_24A82D594();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v15 = sub_24A82CDC4();
  sub_24A6797D0(v15, qword_281518F88);
  v16 = v26;

  v17 = sub_24A82CD94();
  v18 = sub_24A82D504();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = v20;
    *v19 = 136315138;
    v21 = v29;
    *(v19 + 4) = sub_24A68761C(v29, v16, &v33);
    _os_log_impl(&dword_24A675000, v17, v18, "FMDiskIO: init with file name: %s", v19, 0xCu);
    sub_24A6876E8(v20);
    MEMORY[0x24C21E1D0](v20, -1, -1);
    MEMORY[0x24C21E1D0](v19, -1, -1);
  }

  else
  {

    v21 = v29;
  }

  v22 = v28;
  v8[3] = v27;
  v8[4] = v22;
  v8[5] = v21;
  v8[6] = v16;
  sub_24A67E8FC(v30, v8 + *(*v8 + 128), v31, v32);
  return v8;
}

uint64_t sub_24A67EF7C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_24A82CAA4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24A67EFC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A67F008(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A67F050(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_24A67F098(uint64_t a1, unint64_t a2)
{
  v3 = sub_24A67F158(a1, a2);
  sub_24A67F28C(&unk_285DBD640);
  return v3;
}

void *sub_24A67F0E4(uint64_t a1, uint64_t a2)
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

  sub_24A6BBA94(&qword_27EF5D5A8, &unk_24A8334E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_24A67F158(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24A67F0E4(v5, 0);
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

  result = sub_24A82D8B4();
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
        v10 = sub_24A82D0F4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24A67F0E4(v10, 0);
        result = sub_24A82D824();
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

uint64_t sub_24A67F28C(uint64_t result)
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

  result = sub_24A692508(result, v11, 1, v3);
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

uint64_t sub_24A67F378(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_24A6BBA94(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for FMIPReverseGeocodingCache(uint64_t a1)
{
  result = qword_27EF5F618;
  if (!qword_27EF5F618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24A67F478(uint64_t a1)
{
  result = sub_24A67F4A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24A67F4A0()
{
  result = qword_27EF5F610;
  if (!qword_27EF5F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F610);
  }

  return result;
}

void sub_24A67F50C(uint64_t a1)
{
  sub_24A82CA34();
  if (v1 <= 0x3F)
  {
    sub_24A687858(319);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void *sub_24A67F608(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_24A82D554();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v23 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = sub_24A82D534();
  MEMORY[0x28223BE20](v22[0]);
  v22[1] = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A82CE54();
  MEMORY[0x28223BE20](v6 - 8);
  sub_24A82CA04();
  v7 = MEMORY[0x277D84F98];
  *(v1 + qword_27EF5EFA8) = MEMORY[0x277D84F98];
  *(v1 + qword_27EF5EFB0) = v7;
  *(v1 + qword_27EF5EFB8) = v7;
  *(v1 + qword_27EF5EFC0) = 0;
  if (qword_27EF5CB88 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  sub_24A6797D0(v8, qword_27EF78C00);

  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    v13 = sub_24A82DDB4();
    v15 = sub_24A68761C(v13, v14, &v27);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_24A675000, v9, v10, "%s: initialized", v11, 0xCu);
    sub_24A6876E8(v12);
    MEMORY[0x24C21E1D0](v12, -1, -1);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  v16 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_24A82D854();
  MEMORY[0x24C21C9E0](0xD000000000000022, 0x800000024A849680);
  v17 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v17);

  MEMORY[0x24C21C9E0](0x6974617265706F2ELL, 0xEF65756575516E6FLL);
  v18 = sub_24A82CF94();

  [v16 setName_];

  [v16 setMaxConcurrentOperationCount_];
  sub_24A67B054();
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_24A82D854();

  v27 = 0xD000000000000022;
  v28 = 0x800000024A849680;
  v19 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v19);

  MEMORY[0x24C21C9E0](0x737365636F72702ELL, 0xED00006575657551);
  sub_24A82CE44();
  v27 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_2815146D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  (*(v24 + 104))(v23, *MEMORY[0x277D85260], v25);
  v20 = sub_24A82D594();
  *(v2 + qword_27EF5EFC8) = v16;
  sub_24A67FC08(v26, v2 + qword_27EF78F28);
  *(v2 + qword_27EF5EFD0) = v20;
  return v2;
}

uint64_t sub_24A67FB84()
{
  v0 = sub_24A82CDC4();
  sub_24A67976C(v0, qword_27EF78C00);
  sub_24A6797D0(v0, qword_27EF78C00);
  return sub_24A82CDA4();
}

uint64_t sub_24A67FC08(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A67FC78(uint64_t *a1)
{
  if (*(v1 + 24) != 1)
  {
    return 0;
  }

  v2 = v1;
  v3 = *a1;
  if (*a1)
  {
    if (!*(v1 + 328))
    {
      return 0;
    }

    v8 = sub_24A680224();

    if (!v8)
    {
      return 0;
    }

    LOBYTE(v41) = 16;
    v9 = sub_24A68F088(v8, &v41);

    swift_beginAccess();
    *(v2 + 80) = v9;

    v10 = *(v2 + 344);
    if (v10)
    {
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
      v11 = *(v10 + 16);
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      *(v12 + 24) = &v41;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_24A692624;
      *(v13 + 24) = v12;
      *&v37 = sub_24A680674;
      *(&v37 + 1) = v13;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v36 = sub_24A6805E4;
      *(&v36 + 1) = &unk_285DC7688;
      v14 = _Block_copy(&aBlock);
      swift_retain_n();

      dispatch_sync(v11, v14);

      _Block_release(v14);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        return result;
      }

      v17 = *(&v41 + 1);
      if (*(&v41 + 1))
      {
        v18 = *(v2 + 136);
        v37 = *(v2 + 120);
        v38 = v18;
        v39 = *(v2 + 152);
        v19 = *(v2 + 104);
        aBlock = *(v2 + 88);
        v36 = v19;
        v20 = v42;
        *(v2 + 120) = v43;
        v21 = v45;
        *(v2 + 136) = v44;
        *(v2 + 152) = v21;
        v40 = *(v2 + 168);
        *(v2 + 88) = v41;
        *(v2 + 96) = v17;
        *(v2 + 168) = v46;
        *(v2 + 104) = v20;
        sub_24A67F378(&aBlock, &qword_27EF5DEF8, &unk_24A836D40);
      }
    }

    if (*(v2 + 336))
    {

      v22 = sub_24A693F60();

      if (v22)
      {
        *(v2 + 176) = v22;
      }
    }
  }

  if ((v3 & 2) != 0)
  {
    if (*(v2 + 312))
    {

      v4 = sub_24A694E90();

      if (v4)
      {
        LOBYTE(v41) = 16;
        v5 = sub_24A76768C(v4, &v41);

        swift_beginAccess();
        *(v2 + 280) = v5;

        sub_24A75691C(v5);

        goto LABEL_7;
      }
    }

    return 0;
  }

LABEL_7:
  if ((v3 & 3) != 0)
  {
    if (*(v2 + 320))
    {

      v6 = sub_24A765D84();
      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = MEMORY[0x277D84F90];
        sub_24A761CE4(MEMORY[0x277D84F90], &unk_285DC7468, sub_24A76F27C, &unk_285DC7480);
      }

      *(v2 + 288) = v7;
    }

    if (*(v2 + 352))
    {
      v23 = qword_27EF5CBE8;

      if (v23 != -1)
      {
        swift_once();
      }

      v41 = xmmword_27EF5DFB0;
      v42 = *&qword_27EF5DFC0;
      v24 = qword_27EF5DFD0;
      *&v43 = qword_27EF5DFD0;
      v26 = *(&xmmword_27EF5DFB0 + 1);
      v25 = xmmword_27EF5DFB0;
      v28 = unk_27EF5DFC8;
      v27 = qword_27EF5DFC0;

      sub_24A765C04(&aBlock);
      v29 = aBlock;
      if (aBlock)
      {
        v33 = *(&v36 + 1);
        v34 = v37;
        v31 = *(&aBlock + 1);
        v30 = v36;

        v25 = v29;
        v26 = v31;
        v27 = v30;
        v28 = v33;
        v24 = v34;
      }

      else
      {
        sub_24A76187C(&v41);
      }

      *(v2 + 240) = v25;

      *(v2 + 248) = v26;

      *(v2 + 256) = v27;

      *(v2 + 264) = v28;

      *(v2 + 272) = v24;
    }

    sub_24A757884(v32);
  }

  return 1;
}

uint64_t sub_24A6801E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A680224()
{
  v1 = v0;
  v8 = 0;
  v2 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = &v8;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_24A68060C;
  *(v4 + 24) = v3;
  aBlock[4] = sub_24A680674;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6805E4;
  aBlock[3] = &unk_285DC7778;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A680394(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6803A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6803B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6803C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6803D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6803E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6803F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680404(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680414(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680424(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680434(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680444(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680454(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680464(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680474(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680484(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680494(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6804A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6804B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6804C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6804D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6804E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6804F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680504(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680514(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680524(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680534(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680544(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680554(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680564(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680574(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680584(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A680594(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6805A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6805B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6805C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6805D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24A6806D0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void (*a9)(void))
{
  v101 = a8;
  v100 = a7;
  v98 = a2;
  v102 = a9;
  v96 = sub_24A82CC54();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A82CCD4();
  v97 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = a3;
  v108 = a4;
  v18 = sub_24A6BBA94(a3, a4);
  MEMORY[0x28223BE20](v18 - 8);
  v105 = &v85 - v19;
  v111 = a5;
  v103 = a6;
  v106 = sub_24A6BBA94(a5, a6);
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v21 = &v85 - v20;
  v112 = sub_24A82C8B4();
  v22 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v109 = v21;
  v110 = v17;
  v99 = v15;
  v25 = sub_24A82CDC4();
  v113 = sub_24A6797D0(v25, qword_281518F88);
  v26 = sub_24A82CD94();
  v27 = sub_24A82D504();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_24A675000, v26, v27, "FMDiskIO: read from disk", v28, 2u);
    MEMORY[0x24C21E1D0](v28, -1, -1);
  }

  v29 = [objc_opt_self() defaultManager];
  v31 = a1[3];
  v30 = a1[4];
  v32 = a1[5];
  v33 = a1[6];
  v115 = v31;
  v116 = v30;

  MEMORY[0x24C21C9E0](v32, v33);
  v34 = sub_24A82CF94();

  v35 = [v29 fileExistsAtPath_];

  if (v35)
  {
    v93 = a1;
    v115 = v31;
    v116 = v30;

    MEMORY[0x24C21C9E0](v32, v33);
    sub_24A82C824();

    v43 = sub_24A82C8C4();
    v45 = v44;
    v89 = v33;
    v90 = 0;
    (*(v22 + 8))(v24, v112);

    sub_24A681458(v43, v45);
    v46 = sub_24A82CD94();
    v47 = sub_24A82D504();

    sub_24A67E0F0(v43, v45);
    v48 = os_log_type_enabled(v46, v47);
    v87 = v31;
    v86 = v30;
    v92 = v45;
    v88 = v32;
    v91 = v43;
    if (v48)
    {
      v49 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v114 = v112;
      v115 = v31;
      *v49 = 136315394;
      v116 = v30;

      MEMORY[0x24C21C9E0](v32, v89);
      v50 = sub_24A68761C(v115, v116, &v114);

      *(v49 + 4) = v50;
      *(v49 + 12) = 2080;
      v51 = sub_24A82C8D4();
      v53 = sub_24A68761C(v51, v52, &v114);

      *(v49 + 14) = v53;
      _os_log_impl(&dword_24A675000, v46, v47, "FMDiskIO: file: %s data: %s", v49, 0x16u);
      v54 = v112;
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v54, -1, -1);
      MEMORY[0x24C21E1D0](v49, -1, -1);
    }

    v55 = v111;
    sub_24A82C724();
    swift_allocObject();
    sub_24A82C714();
    v56 = v105;
    v58 = v107;
    v57 = v108;
    sub_24A67E964(v93 + *(*v93 + 128), v105, v107, v108);
    v59 = (*(v104 + 48))(v56, 1, v106) == 1;
    v60 = v109;
    v61 = v110;
    v62 = v56;
    if (v59)
    {
      sub_24A67F378(v56, v58, v57);
      sub_24A6BBA94(v100, v101);
      v102();
      v66 = v91;
      v63 = v92;
      v67 = v90;
      sub_24A82C704();
      if (v67)
      {

        goto LABEL_23;
      }

      sub_24A67E0F0(v66, v63);
    }

    else
    {
      v64 = v103;
      sub_24A67E8FC(v62, v109, v55, v103);
      sub_24A67F008(&unk_27EF5E280, MEMORY[0x277D08F20], MEMORY[0x277D08F30]);
      v65 = v99;
      v66 = v91;
      v67 = v90;
      sub_24A82C704();
      if (v67)
      {
        sub_24A67F378(v60, v55, v64);

LABEL_23:

        v74 = v67;
        v75 = sub_24A82CD94();
        v76 = sub_24A82D4E4();

        v77 = os_log_type_enabled(v75, v76);
        v78 = v88;
        if (v77)
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v114 = v80;
          *v79 = 136315394;
          swift_getErrorValue();
          v81 = sub_24A82DC74();
          v83 = sub_24A68761C(v81, v82, &v114);

          *(v79 + 4) = v83;
          *(v79 + 12) = 2080;
          v115 = v87;
          v116 = v86;

          MEMORY[0x24C21C9E0](v78, v89);
          v84 = sub_24A68761C(v115, v116, &v114);

          *(v79 + 14) = v84;
          _os_log_impl(&dword_24A675000, v75, v76, "FMDiskIO: Could not decode the disk archive: %s, %s", v79, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C21E1D0](v80, -1, -1);
          MEMORY[0x24C21E1D0](v79, -1, -1);
          sub_24A67E0F0(v66, v92);
        }

        else
        {
          sub_24A67E0F0(v66, v92);
        }

        return;
      }

      v68 = v94;
      sub_24A82CC64();
      v69 = v68;
      v70 = sub_24A82CCC4();
      v72 = v71;
      (*(v95 + 8))(v69, v96);
      sub_24A6BBA94(v100, v101);
      v102();
      sub_24A82C704();
      v73 = (v97 + 8);

      sub_24A67E0F0(v70, v72);
      sub_24A67E0F0(v66, v92);
      (*v73)(v61, v65);
      sub_24A67F378(v60, v55, v103);
    }

    *v98 = v115;

    return;
  }

  v36 = v30;
  v37 = v32;

  v113 = sub_24A82CD94();
  v38 = sub_24A82D4E4();

  if (os_log_type_enabled(v113, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v114 = v40;
    v115 = v31;
    *v39 = 136315138;
    v116 = v36;

    MEMORY[0x24C21C9E0](v37, v33);
    v41 = sub_24A68761C(v115, v116, &v114);

    *(v39 + 4) = v41;
    _os_log_impl(&dword_24A675000, v113, v38, "FMDiskIO: Disk archive does not exist at: %s", v39, 0xCu);
    sub_24A6876E8(v40);
    MEMORY[0x24C21E1D0](v40, -1, -1);
    MEMORY[0x24C21E1D0](v39, -1, -1);
  }

  else
  {
    v42 = v113;
  }
}

uint64_t sub_24A681458(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24A6814C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CC84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24A82CCB4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 44);

    return v11(v12, a2, v10);
  }
}

unint64_t sub_24A6815B0()
{
  result = qword_281512BC0;
  if (!qword_281512BC0)
  {
    sub_24A6CCDC0(&unk_27EF5E220, &unk_24A8343D0);
    sub_24A681668(&unk_281514630, 255, type metadata accessor for FMIPDevice, &protocol conformance descriptor for FMIPDevice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512BC0);
  }

  return result;
}

uint64_t sub_24A681668(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t FMIPDevice.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v236 = a2;
  v3 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v235 = &v175 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v234 = &v175 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v233 = &v175 - v9;
  MEMORY[0x28223BE20](v8);
  v232 = (&v175 - v10);
  v11 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v11 - 8);
  v237 = &v175 - v12;
  v13 = sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  MEMORY[0x28223BE20](v13 - 8);
  v238 = &v175 - v14;
  v15 = sub_24A6BBA94(&qword_27EF5DE50, &qword_24A83DE40);
  MEMORY[0x28223BE20](v15 - 8);
  v239 = &v175 - v16;
  v17 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  MEMORY[0x28223BE20](v17 - 8);
  v240 = &v175 - v18;
  v19 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  MEMORY[0x28223BE20](v19 - 8);
  v241 = &v175 - v20;
  v21 = sub_24A6BBA94(&qword_27EF5F268, &qword_24A83DF08);
  v242 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v175 - v22;
  v24 = type metadata accessor for FMIPDevice(0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v175 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v25 + 140);
  v27[v28] = 1;
  v29 = a1[3];
  v244 = a1;
  sub_24A67DF6C(a1, v29);
  sub_24A683980();
  v30 = v243;
  sub_24A82DD64();
  if (!v30)
  {
    v230 = v24;
    v231 = v28;
    v243 = v27;
    v31 = v242;
    LOBYTE(v247[0]) = 14;
    v32 = v23;
    v33 = sub_24A82DA44();
    v35 = v34;
    v228 = v33;
    LOBYTE(v247[0]) = 4;
    v36 = sub_24A82DA44();
    v38 = v37;
    v227 = v36;
    LOBYTE(v247[0]) = 39;
    v39 = sub_24A82DA44();
    v41 = v40;
    v226 = v39;
    LOBYTE(v247[0]) = 12;
    v225 = sub_24A82DA44();
    v229 = v42;
    LOBYTE(v247[0]) = 38;
    v223 = sub_24A82DA44();
    v224 = v43;
    LOBYTE(v247[0]) = 46;
    v220 = sub_24A82DA44();
    v221 = v45;
    LOBYTE(v247[0]) = 10;
    v219 = sub_24A82DA44();
    v222 = v46;
    LOBYTE(v247[0]) = 9;
    v217 = sub_24A82DA44();
    v218 = v47;
    LOBYTE(v247[0]) = 36;
    v210 = sub_24A82DA44();
    v212 = v48;
    LOBYTE(v247[0]) = 41;
    v209 = sub_24A82DA44();
    v213 = v49;
    LOBYTE(v247[0]) = 37;
    v208 = sub_24A82DA44();
    v214 = v50;
    LOBYTE(v247[0]) = 11;
    v207 = sub_24A82DA44();
    v215 = v51;
    LOBYTE(v247[0]) = 2;
    sub_24A82DA64();
    v53 = v52;
    LOBYTE(v247[0]) = 3;
    v211 = sub_24A82DA44();
    v216 = v54;
    LOBYTE(v247[0]) = 40;
    v206 = sub_24A82DA74();
    LOBYTE(v247[0]) = 33;
    v201 = sub_24A82DA74();
    LOBYTE(v247[0]) = 32;
    v55 = sub_24A82DA94();
    v200 = 0;
    v196 = v55;
    LOBYTE(v247[0]) = 30;
    v56 = sub_24A82DA94();
    v202 = 0;
    v197 = v56;
    LOBYTE(v247[0]) = 48;
    v57 = sub_24A82DA94();
    v203 = 0;
    v198 = v57;
    LOBYTE(v247[0]) = 53;
    v58 = sub_24A82DA94();
    v204 = 0;
    v199 = v58;
    LOBYTE(v247[0]) = 51;
    v205 = sub_24A82DA74();
    LOBYTE(v247[0]) = 8;
    v195 = sub_24A82DA54();
    LOBYTE(v247[0]) = 5;
    v194 = sub_24A82DA54();
    v192 = v35;
    v193 = v41;
    LOBYTE(v247[0]) = 7;
    v59 = v21;
    v60 = v32;
    v191 = sub_24A82DA54();
    sub_24A6BBA94(&qword_27EF5F270, &qword_24A83DF10);
    LOBYTE(v246[0]) = 1;
    sub_24A7E04BC();
    sub_24A82DA84();
    v246[0] = v247[0];

    sub_24A68432C(v246);

    v186 = v246[0];
    sub_24A6BBA94(&qword_27EF5F278, &qword_24A83DF18);
    LOBYTE(v246[0]) = 47;
    sub_24A7E0540();
    sub_24A82DA84();
    v185 = v247[0];
    LOBYTE(v246[0]) = 29;
    sub_24A687EF0();
    sub_24A82DA84();
    v188 = v247[1];
    v61 = 256;
    if (!BYTE1(v247[0]))
    {
      v61 = 0;
    }

    v62 = v61 | LOBYTE(v247[0]);
    v63 = 0x10000;
    if (!BYTE2(v247[0]))
    {
      v63 = 0;
    }

    v179 = v62 | v63 | (BYTE3(v247[0]) << 24);
    v180 = v247[2];
    v248 = 6;
    sub_24A82DA84();
    v187 = v253;
    v64 = 256;
    if (!v250)
    {
      v64 = 0;
    }

    v65 = v64 | v249;
    v66 = 0x10000;
    if (!v251)
    {
      v66 = 0;
    }

    v181 = v65 | v66 | (v252 << 24);
    v182 = v254;
    v245[295] = 0;
    sub_24A684C3C();
    sub_24A82DA84();
    memcpy(v245, v246, 0x120uLL);
    nullsub_1();
    memcpy(v247, v245, sizeof(v247));
    v245[0] = 13;
    sub_24A68545C();
    sub_24A82DA84();
    v189 = 0;
    v178 = v246[0];
    v67 = type metadata accessor for FMIPPlaySoundMetadata(0);
    LOBYTE(v246[0]) = 45;
    sub_24A7E0BD0(&qword_281513F60, type metadata accessor for FMIPPlaySoundMetadata, &protocol conformance descriptor for FMIPPlaySoundMetadata);
    sub_24A82DA84();
    (*(*(v67 - 8) + 56))(v241, 0, 1, v67);
    v68 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
    LOBYTE(v246[0]) = 31;
    sub_24A7E0BD0(&qword_281513598, type metadata accessor for FMIPDeviceLostModeMetadata, &protocol conformance descriptor for FMIPDeviceLostModeMetadata);
    sub_24A82DA84();
    (*(*(v68 - 8) + 56))(v240, 0, 1, v68);
    v69 = type metadata accessor for FMIPLockMetadata(0);
    LOBYTE(v246[0]) = 42;
    sub_24A7E0BD0(&qword_281514158, type metadata accessor for FMIPLockMetadata, &protocol conformance descriptor for FMIPLockMetadata);
    sub_24A82DA84();
    (*(*(v69 - 8) + 56))(v239, 0, 1, v69);
    v70 = type metadata accessor for FMIPEraseMetadata(0);
    LOBYTE(v246[0]) = 43;
    sub_24A7E0BD0(&qword_281514128, type metadata accessor for FMIPEraseMetadata, &protocol conformance descriptor for FMIPEraseMetadata);
    sub_24A82DA84();
    (*(*(v70 - 8) + 56))(v238, 0, 1, v70);
    sub_24A6BBA94(&qword_27EF5DFF0, &qword_24A839E00);
    v245[0] = 44;
    sub_24A7A84CC();
    sub_24A82DA84();
    v184 = v246[0];
    v245[0] = 54;
    sub_24A689878();
    sub_24A82DA84();
    v177 = LOBYTE(v246[0]);
    v245[0] = 55;
    sub_24A68ADE8();
    sub_24A82DA84();
    v176 = LOBYTE(v246[0]);
    LOBYTE(v246[0]) = 56;
    v183 = sub_24A82DA44();
    v190 = v71;
    v72 = type metadata accessor for FMIPItemGroup(0);
    LOBYTE(v246[0]) = 49;
    sub_24A7E0BD0(&qword_27EF5E2A8, type metadata accessor for FMIPItemGroup, &protocol conformance descriptor for FMIPItemGroup);
    sub_24A82DA84();
    (*(*(v72 - 8) + 56))(v237, 0, 1, v72);
    if (v216)
    {
      v73._countAndFlagsBits = v211;
      v73._object = v216;
      FMIPBatteryStatus.init(rawValue:)(v73);
      v74 = LOBYTE(v246[0]);
      if (LOBYTE(v246[0]) == 4)
      {
        v74 = 0;
      }

      LODWORD(v216) = v74;
    }

    else
    {
      LODWORD(v216) = 0;
    }

    v75 = sub_24A82D9C4();

    if (v75 >= 3)
    {
      v76 = 1;
    }

    else
    {
      v76 = v75;
    }

    LOBYTE(v246[0]) = 28;
    v77 = sub_24A82DA54();
    LOBYTE(v246[0]) = 20;
    LODWORD(v221) = sub_24A82DA54();
    LOBYTE(v246[0]) = 15;
    LODWORD(v220) = sub_24A82DA54();
    LOBYTE(v246[0]) = 21;
    LODWORD(v211) = sub_24A82DA54();
    LOBYTE(v246[0]) = 19;
    v78 = sub_24A82DA54();
    v79 = v77 & 1;
    if (v221)
    {
      v79 = v77 & 1 | 2;
    }

    if (v220)
    {
      v79 |= 4uLL;
    }

    if (v211)
    {
      v79 |= 8uLL;
    }

    if (v78)
    {
      v79 |= 0x20uLL;
    }

    v221 = v79;
    LOBYTE(v246[0]) = 52;
    v80 = sub_24A82DA54();
    v81 = v221;
    if (v80)
    {
      v81 = v221 | 0x20000;
    }

    v221 = v81;
    LOBYTE(v246[0]) = 57;
    v82 = sub_24A82DA54();
    v83 = v221;
    if (v82)
    {
      v83 = v221 | 0x40000;
    }

    v221 = v83;
    LOBYTE(v246[0]) = 17;
    v84 = sub_24A82DA54();
    v85 = v221;
    if (v84)
    {
      v85 = v221 | 0x10;
    }

    v221 = v85;
    LOBYTE(v246[0]) = 23;
    v86 = sub_24A82DA54();
    LOBYTE(v246[0]) = 24;
    LODWORD(v220) = sub_24A82DA14();
    LOBYTE(v246[0]) = 25;
    LODWORD(v211) = sub_24A82DA14();
    LOBYTE(v246[0]) = 26;
    v87 = sub_24A82DA14();
    v88 = v221 | 0x40;
    if ((v86 & 1) == 0)
    {
      v88 = v221;
    }

    v89 = v88 | 0x2000;
    if ((v220 & 1) == 0)
    {
      v89 = v88;
    }

    if (v220 == 2)
    {
      v90 = v88;
    }

    else
    {
      v90 = v89;
    }

    v91 = v90 | 0x4000;
    if ((v211 & 1) == 0)
    {
      v91 = v90;
    }

    if (v211 == 2)
    {
      v92 = v90;
    }

    else
    {
      v92 = v91;
    }

    v93 = v92 | 0x8000;
    if ((v87 & 1) == 0)
    {
      v93 = v92;
    }

    if (v87 != 2)
    {
      v92 = v93;
    }

    v221 = v92;
    if (v193 && (v226 != 0x72656E776FLL || v193 != 0xE500000000000000))
    {
      v94 = sub_24A82DC04();
      v95 = v221;
      if ((v94 & 1) == 0)
      {
        v95 = v221 | 0x80;
      }

      v221 = v95;
    }

    LOBYTE(v246[0]) = 18;
    v96 = sub_24A82DA54();
    LOBYTE(v246[0]) = 22;
    LODWORD(v220) = sub_24A82DA54();
    LOBYTE(v246[0]) = 27;
    v97 = sub_24A82DA54();
    v98 = v221 | 0x100;
    if ((v96 & 1) == 0)
    {
      v98 = v221;
    }

    if (v220)
    {
      v98 |= 0x200uLL;
    }

    if (v97)
    {
      v98 |= 0x400uLL;
    }

    v221 = v98;
    if ((v98 & 0x20000) != 0)
    {
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v99 = sub_24A82CDC4();
      sub_24A6797D0(v99, qword_281518F88);
      v100 = sub_24A82CD94();
      v101 = sub_24A82D504();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        v103 = v101;
        v104 = v102;
        _os_log_impl(&dword_24A675000, v100, v103, "FMIPDevice: Device in pending remove, remove should not be enabled", v102, 2u);
        MEMORY[0x24C21E1D0](v104, -1, -1);
      }

      v220 = 0;
    }

    else
    {
      v220 = 64;
    }

    v105 = HIBYTE(v224) & 0xF;
    if ((v224 & 0x2000000000000000) == 0)
    {
      v105 = v223 & 0xFFFFFFFFFFFFLL;
    }

    if (!v105 && (v221 & 0x200) != 0)
    {

      type metadata accessor for FMLocalize();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v107 = [objc_opt_self() bundleForClass_];
      v223 = sub_24A82C6F4();
      v224 = v108;
    }

    if (v38)
    {
      v109 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v109 = v227 & 0xFFFFFFFFFFFFLL;
      }

      if (!v109)
      {

        v227 = 0;
        v38 = 0;
      }
    }

    v110 = v243;
    v111 = v192;
    v112 = v193;
    *v243 = v228;
    v110[1] = v111;
    v113 = v226;
    v110[2] = v227;
    v110[3] = v38;
    v114 = 0x72656E776FLL;
    if (v112)
    {
      v114 = v113;
    }

    v115 = 0xE500000000000000;
    if (v112)
    {
      v115 = v112;
    }

    v110[4] = v114;
    v110[5] = v115;
    v116 = v229;
    v110[6] = v225;
    v110[7] = v116;
    v117 = v224;
    v110[8] = v223;
    v110[9] = v117;
    *(v110 + 80) = v76;
    v118 = v222;
    v110[11] = v219;
    v110[12] = v118;
    v119 = v218;
    v110[13] = v217;
    v110[14] = v119;
    v120 = v212;
    v110[15] = v210;
    v110[16] = v120;
    v121 = v215;
    v122 = v207;
    if (!v215)
    {
      v122 = 0;
    }

    v123 = 0xE000000000000000;
    if (!v215)
    {
      v121 = 0xE000000000000000;
    }

    v110[21] = v122;
    v110[22] = v121;
    v124 = v213;
    v125 = v209;
    if (!v213)
    {
      v125 = 0;
      v124 = 0xE000000000000000;
    }

    v110[17] = v125;
    v110[18] = v124;
    v126 = v208;
    if (v214)
    {
      v123 = v214;
    }

    else
    {
      v126 = 0;
    }

    v110[19] = v126;
    v110[20] = v123;
    v110[23] = v53;
    *(v110 + 192) = v216;
    v127 = v200;
    v128 = v201;
    v110[25] = v206;
    v110[26] = v128;
    if (v127)
    {
      v129 = sub_24A82CA34();
      (*(*(v129 - 8) + 56))(v232, 1, 1, v129);
    }

    else
    {
      v130 = objc_opt_self();

      v131 = [v130 fm:v196 dateFromEpoch:?];
      v132 = v232;
      sub_24A82C9F4();

      v133 = sub_24A82CA34();
      (*(*(v133 - 8) + 56))(v132, 0, 1, v133);
    }

    sub_24A68C87C(v232, v243 + v230[39]);
    if (v202)
    {
      v134 = 1;
    }

    else
    {
      v135 = [objc_opt_self() fm:v197 dateFromEpoch:?];
      sub_24A82C9F4();

      v134 = 0;
    }

    v136 = sub_24A82CA34();
    v137 = *(*(v136 - 8) + 56);
    LODWORD(v229) = 1;
    v138 = v233;
    v232 = v137;
    (v137)(v233, v134, 1, v136);
    sub_24A68C87C(v138, v243 + v230[40]);
    if (!v203)
    {
      v139 = [objc_opt_self() fm:v198 dateFromEpoch:?];
      sub_24A82C9F4();

      LODWORD(v229) = 0;
    }

    v140 = 1;
    v141 = v234;
    (v232)(v234, v229, 1, v136);
    sub_24A68C87C(v141, v243 + v230[41]);
    if (!v204)
    {
      v142 = [objc_opt_self() fm:v199 dateFromEpoch:?];
      sub_24A82C9F4();

      v140 = 0;
    }

    v143 = v235;
    (v232)(v235, v140, 1, v136);
    v144 = v230;
    v145 = v243;
    sub_24A68C87C(v143, v243 + v230[42]);
    *(v145 + v144[38]) = v205;
    *(v145 + v144[43]) = v195 & 1;
    *(v145 + v144[44]) = v194 & 1;
    *(v145 + v144[45]) = v191 & 1;
    v145[27] = v221;
    v146 = MEMORY[0x277D84F90];
    v147 = v186;
    if (!v186)
    {
      v147 = MEMORY[0x277D84F90];
    }

    v145[29] = v147;
    v145[31] = v185;
    if (qword_27EF5CBC8 != -1)
    {
      swift_once();
    }

    if (byte_27EF5DEF1)
    {
      v179 = 0;
      v180 = 0;
      v148 = 0;
    }

    else
    {
      v149 = v188;
      v150 = v188;
      v148 = v149;
    }

    v151 = v243;
    v243[32] = v179;
    v151[33] = v148;
    v151[34] = v180;
    memcpy(v151 + 38, v247, 0x120uLL);
    v152 = v178;
    if (v189)
    {
      v152 = v220;
    }

    v151[30] = v152;
    v153 = v230;
    sub_24A67E964(v241, v151 + v230[28], &qword_27EF5D5F8, &qword_24A83DE60);
    sub_24A67E964(v240, v151 + v153[29], &unk_27EF5E0A0, &unk_24A8367D0);
    sub_24A67E964(v239, v151 + v153[30], &qword_27EF5DE50, &qword_24A83DE40);
    sub_24A67E964(v238, v151 + v153[31], &qword_27EF5DE48, &unk_24A8367C0);
    v154 = v184;
    if (!v184)
    {
      v154 = v146;
    }

    v151[28] = v154;
    v155 = v177;
    if (v177 == 7)
    {
      v155 = 0;
    }

    *(v151 + v153[34]) = v155;
    v156 = v176;
    if (v176 == 5)
    {
      v156 = 0;
    }

    *(v151 + v153[36]) = v156;
    v157 = (v151 + v153[37]);
    v158 = v190;
    *v157 = v183;
    v157[1] = v158;
    if (qword_27EF5CBD0 != -1)
    {
      swift_once();
    }

    if (byte_27EF5DEF2 == 1)
    {
      sub_24A7DD610(v228, v192, v246);

      v159 = v246[1];
      v160 = 256;
      if (!BYTE1(v246[0]))
      {
        v160 = 0;
      }

      v161 = v160 | LOBYTE(v246[0]);
      v162 = 0x10000;
      if (!BYTE2(v246[0]))
      {
        v162 = 0;
      }

      v181 = v161 | v162 | (BYTE3(v246[0]) << 24);
      v182 = v246[2];
    }

    else
    {

      v163 = v187;
      v164 = v187;
      v159 = v163;
    }

    v165 = v243;
    v243[35] = v181;
    v165[36] = v159;
    v165[37] = v182;
    sub_24A67E964(v237, v165 + v230[32], &unk_27EF5E0B0, &qword_24A8338B0);
    LOBYTE(v246[0]) = 50;
    *(v243 + v230[33]) = sub_24A82DA54() & 1;
    v245[0] = 58;
    sub_24A68CD84();
    sub_24A82DA34();
    if (LOBYTE(v246[0]) != 2)
    {
      *(v243 + v231) = v246[0] & 1;
    }

    v235 = FMIPDevice.debugDescription.getter();
    v167 = v166;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v168 = sub_24A82CDC4();
    sub_24A6797D0(v168, qword_281518F88);

    v169 = sub_24A82CD94();
    v170 = sub_24A82D4C4();

    LODWORD(v234) = v170;
    if (os_log_type_enabled(v169, v170))
    {
      v171 = swift_slowAlloc();
      v233 = swift_slowAlloc();
      v246[0] = v233;
      *v171 = 136315138;
      v172 = sub_24A68761C(v235, v167, v246);

      *(v171 + 4) = v172;
      v173 = v171;
      _os_log_impl(&dword_24A675000, v169, v234, "FMIPDevice: initialized %s", v171, 0xCu);
      v174 = v233;
      sub_24A6876E8(v233);
      MEMORY[0x24C21E1D0](v174, -1, -1);
      MEMORY[0x24C21E1D0](v173, -1, -1);
    }

    else
    {
    }

    sub_24A67F378(v237, &unk_27EF5E0B0, &qword_24A8338B0);
    sub_24A67F378(v238, &qword_27EF5DE48, &unk_24A8367C0);
    sub_24A67F378(v239, &qword_27EF5DE50, &qword_24A83DE40);
    sub_24A67F378(v240, &unk_27EF5E0A0, &unk_24A8367D0);
    sub_24A67F378(v241, &qword_27EF5D5F8, &qword_24A83DE60);
    (*(v31 + 8))(v60, v59);
    sub_24A7E11A4(v243, v236, type metadata accessor for FMIPDevice);
  }

  return sub_24A6876E8(v244);
}

unint64_t sub_24A6838D4()
{
  result = qword_281514648;
  if (!qword_281514648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514648);
  }

  return result;
}

unint64_t sub_24A68392C()
{
  result = qword_281514650;
  if (!qword_281514650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514650);
  }

  return result;
}

unint64_t sub_24A683980()
{
  result = qword_281514658;
  if (!qword_281514658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514658);
  }

  return result;
}

unint64_t sub_24A6839DC(char a1)
{
  result = 0x73736572646461;
  switch(a1)
  {
    case 1:
      return 0x6168436F69647561;
    case 2:
      return 0x4C79726574746162;
    case 3:
      return 0x5379726574746162;
    case 4:
      return 0x444955556162;
    case 5:
      return 0x65646F4D74736F6CLL;
    case 6:
    case 53:
    case 55:
      return 0xD000000000000014;
    case 7:
      return 0x656B61576B726164;
    case 8:
      return 0xD000000000000010;
    case 9:
      return 0x6C43656369766564;
    case 10:
      return 0x6F43656369766564;
    case 11:
    case 12:
      return 0xD000000000000011;
    case 13:
      return 0x7365727574616566;
    case 14:
      return 25705;
    case 15:
      return 0xD000000000000010;
    case 16:
      return 0x72616853796C6D66;
    case 17:
      return 0x697461636F4C7369;
    case 18:
      return 0x6E6F697461636F6CLL;
    case 19:
      return 0x6E6F697461636F6CLL;
    case 20:
      return 0x65646F4D74736F6CLL;
    case 21:
      return 0x7265776F50776F6CLL;
    case 22:
      return 0x63614D7369;
    case 23:
      return 0x646E756F46636F6CLL;
    case 24:
      return 6584174;
    case 25:
      return 6579059;
    case 26:
      return 0x6957656369766564;
    case 27:
      v4 = 1936287860;
      return v4 | 0x6976654400000000;
    case 28:
      return 0x72506E4965706977;
    case 29:
      return 0x6E6F697461636F6CLL;
    case 30:
      return 0x695464656B636F6CLL;
    case 31:
      v4 = 1953722220;
      return v4 | 0x6976654400000000;
    case 32:
      return 0x656D695474736F6CLL;
    case 33:
      return 0x684367734D78616DLL;
    case 34:
      return 6779757;
    case 35:
      return 1735615853;
    case 36:
      return 0x6F4D656369766564;
    case 37:
      return 0xD000000000000010;
    case 38:
      return 1701667182;
    case 39:
      return 0x6449737270;
    case 40:
      return 0x65646F6373736170;
    case 41:
      return 0x6369766544776172;
    case 42:
      return 0x6F4C65746F6D6572;
    case 43:
      return 0x695765746F6D6572;
    case 44:
      return 0x61636F4C65666173;
    case 45:
      return 6581875;
    case 46:
      return 0x7453656369766564;
    case 47:
      return 0x676E696B63617274;
    case 48:
      return 0x6D69546465706977;
    case 49:
      return 0x756F72476D657469;
    case 50:
      v3 = 5;
      goto LABEL_8;
    case 51:
      return 0x6574617453326D72;
    case 52:
      return 0x52676E69646E6570;
    case 54:
      return 0x79546E6F63616562;
    case 56:
      v3 = 9;
LABEL_8:
      result = v3 | 0xD000000000000010;
      break;
    case 57:
      result = 0x6552726961706572;
      break;
    case 58:
      result = 0x6174537373617262;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FMIPDevice.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 58 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 58) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC6)
  {
    v4 = 0;
  }

  if (a2 > 0xC5)
  {
    v5 = ((a2 - 198) >> 8) + 1;
    *result = a2 + 58;
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
    *result = a2 + 58;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPDevice.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC6)
  {
    goto LABEL_17;
  }

  if (a2 + 58 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 58) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 58;
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

      return (*a1 | (v4 << 8)) - 58;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 58;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3B;
  v8 = v6 - 59;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24A68426C(uint64_t a1)
{
  v2 = sub_24A683980();

  return MEMORY[0x2821FE718](a1, v2);
}

unint64_t sub_24A6842C4()
{
  result = qword_281514260;
  if (!qword_281514260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514260);
  }

  return result;
}

uint64_t sub_24A68432C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24A684318(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_24A6844B4(v5);
  *a1 = v2;
  return result;
}

char *sub_24A684398(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5DA68, &qword_24A8352F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24A6844B4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24A82DB74();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_24A82D2A4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24A7DF860(v7, v8, a1, v4);
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
    return sub_24A68EAB8(0, v2, 1, a1);
  }

  return result;
}

uint64_t FMIPLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v4 = sub_24A82CA34();
  v60 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A6BBA94(&qword_27EF5E7C8, &qword_24A838E30);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - v9;
  v11 = a1[3];
  v62 = a1;
  sub_24A67DF6C(a1, v11);
  sub_24A688018();
  sub_24A82DD64();
  if (!v2)
  {
    v58 = v4;
    v59 = v6;
    v12 = v61;
    v13 = v8;
    LOBYTE(v63[0]) = 5;
    v14 = v10;
    v15 = sub_24A82DA54();
    LOBYTE(v63[0]) = 3;
    v16 = sub_24A82DA54();
    LOBYTE(v63[0]) = 4;
    v17 = sub_24A82DA54();
    LOBYTE(v63[0]) = 9;
    v19 = sub_24A82DA44();
    v57 = v20;
    LOBYTE(v63[0]) = 1;
    sub_24A82DA64();
    v22 = v21;
    LOBYTE(v63[0]) = 0;
    sub_24A82DA64();
    v24 = v23;
    LOBYTE(v63[0]) = 6;
    sub_24A82DA64();
    v26 = v25;
    LOBYTE(v63[0]) = 8;
    sub_24A82DA64();
    v55 = v19;
    v56 = v27;
    LOBYTE(v63[0]) = 2;
    sub_24A82DA64();
    v29 = v28;
    LOBYTE(v63[0]) = 11;
    v54 = v7;
    v30 = v14;
    sub_24A82DA64();
    v32 = v31;
    LOBYTE(v63[0]) = 10;
    v33 = sub_24A82DA94();
    v34 = [objc_opt_self() fm:v33 dateFromEpoch:?];
    sub_24A82C9F4();

    v53 = objc_allocWithZone(MEMORY[0x277CE41F8]);
    v35 = sub_24A82C994();
    v53 = [v53 initWithCoordinate:v35 altitude:v26 horizontalAccuracy:*&v56 verticalAccuracy:v24 course:v29 speed:v32 timestamp:{-1.0, -1.0}];

    v36._countAndFlagsBits = v55;
    v36._object = v57;
    FMIPLocationType.init(rawValue:)(v36);
    v37 = LOBYTE(v63[0]);
    if (LOBYTE(v63[0]) == 20)
    {
      v37 = 0;
    }

    LODWORD(v57) = v37;
    v38 = v15 & 1;
    v66 = v38;
    v65 = v16 & 1;
    v64 = v17 & 1;
    if (qword_27EF5CBF8 != -1)
    {
      swift_once();
    }

    v39 = qword_27EF5E7B8;
    if (qword_27EF5E7B8)
    {
      v56 = qword_27EF5E7B8;
    }

    else
    {
      v56 = v53;
      v39 = 0;
    }

    LOBYTE(v63[0]) = v38;
    BYTE1(v63[0]) = v16 & 1;
    BYTE2(v63[0]) = v17 & 1;
    BYTE3(v63[0]) = v57;
    v63[1] = v56;
    v63[2] = v22;
    v40 = v39;
    v55 = FMIPLocation.debugDescription.getter();
    v42 = v41;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v43 = sub_24A82CDC4();
    sub_24A6797D0(v43, qword_281518F88);

    v44 = sub_24A82CD94();
    v45 = sub_24A82D4C4();

    v46 = v45;
    if (os_log_type_enabled(v44, v45))
    {
      v47 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v63[0] = v52;
      *v47 = 136380675;
      v48 = sub_24A68761C(v55, v42, v63);

      *(v47 + 4) = v48;
      _os_log_impl(&dword_24A675000, v44, v46, "FMIPLocation: initialized %{private}s", v47, 0xCu);
      v49 = v52;
      sub_24A6876E8(v52);
      MEMORY[0x24C21E1D0](v49, -1, -1);
      MEMORY[0x24C21E1D0](v47, -1, -1);
    }

    else
    {
    }

    (*(v60 + 8))(v59, v58);
    (*(v13 + 8))(v30, v54);
    v50 = v65;
    v51 = v64;
    *v12 = v66;
    *(v12 + 1) = v50;
    *(v12 + 2) = v51;
    *(v12 + 3) = v57;
    *(v12 + 8) = v56;
    *(v12 + 16) = v22;
  }

  return sub_24A6876E8(v62);
}

unint64_t sub_24A684C3C()
{
  result = qword_2815145E0;
  if (!qword_2815145E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815145E0);
  }

  return result;
}

uint64_t FMIPAddress.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5DB28, &qword_24A8356D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v63 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A685408();
  sub_24A82DD64();
  if (v2)
  {
    v9 = a1;
  }

  else
  {
    LOBYTE(v98) = 0;
    v10 = sub_24A82DA44();
    v96 = a1;
    v93 = v11;
    v94 = v10;
    sub_24A6BBA94(&qword_27EF5D9D0, &qword_24A835090);
    v97 = 1;
    sub_24A7029A8(&qword_27EF5DB30, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_24A82DA84();
    v92 = v98;
    LOBYTE(v98) = 2;
    v12 = sub_24A82DA44();
    v90 = v13;
    v91 = v12;
    LOBYTE(v98) = 3;
    v14 = sub_24A82DA44();
    v88 = v15;
    v89 = v14;
    LOBYTE(v98) = 4;
    v16 = sub_24A82DA44();
    v86 = v17;
    v87 = v16;
    LOBYTE(v98) = 5;
    v18 = sub_24A82DA44();
    v84 = v19;
    v85 = v18;
    LOBYTE(v98) = 6;
    v20 = sub_24A82DA44();
    v82 = v21;
    v83 = v20;
    LOBYTE(v98) = 7;
    v22 = sub_24A82DA44();
    v80 = v23;
    v81 = v22;
    LOBYTE(v98) = 8;
    v24 = sub_24A82DA44();
    v78 = v25;
    v79 = v24;
    LOBYTE(v98) = 9;
    v26 = sub_24A82DA44();
    v76 = v27;
    v77 = v26;
    LOBYTE(v98) = 10;
    v28 = sub_24A82DA44();
    v74 = v29;
    v75 = v28;
    v97 = 11;
    sub_24A82DA84();
    v73 = v98;
    LOBYTE(v98) = 12;
    v30 = sub_24A82DA44();
    v71 = v31;
    v72 = v30;
    LOBYTE(v98) = 13;
    v32 = sub_24A82DA44();
    v69 = v33;
    v70 = v32;
    LOBYTE(v98) = 14;
    v34 = sub_24A82DA44();
    v67 = v35;
    v68 = v34;
    LOBYTE(v98) = 15;
    v36 = sub_24A82DA44();
    v65 = v37;
    v66 = v36;
    LOBYTE(v98) = 16;
    v38 = sub_24A82DA44();
    v95 = v6;
    v40 = v39;
    v64 = v38;
    LOBYTE(v98) = 17;
    v41 = sub_24A82DA44();
    v43 = v42;
    LOBYTE(v98) = 18;
    v44 = sub_24A82DA44();
    v46 = v45;
    (*(v95 + 8))(v8, v5);
    v47 = v93;
    *a2 = v94;
    a2[1] = v47;
    v48 = v91;
    a2[2] = v92;
    a2[3] = v48;
    v49 = v89;
    a2[4] = v90;
    a2[5] = v49;
    v50 = v87;
    a2[6] = v88;
    a2[7] = v50;
    v51 = v85;
    a2[8] = v86;
    a2[9] = v51;
    v52 = v83;
    a2[10] = v84;
    a2[11] = v52;
    v53 = v81;
    a2[12] = v82;
    a2[13] = v53;
    v54 = v79;
    a2[14] = v80;
    a2[15] = v54;
    v55 = v77;
    a2[16] = v78;
    a2[17] = v55;
    v56 = v75;
    a2[18] = v76;
    a2[19] = v56;
    v57 = v73;
    a2[20] = v74;
    a2[21] = v57;
    v58 = v71;
    a2[22] = v72;
    a2[23] = v58;
    v59 = v69;
    a2[24] = v70;
    a2[25] = v59;
    v60 = v67;
    a2[26] = v68;
    a2[27] = v60;
    v61 = v65;
    a2[28] = v66;
    a2[29] = v61;
    a2[30] = v64;
    a2[31] = v40;
    a2[32] = v41;
    a2[33] = v43;
    a2[34] = v44;
    a2[35] = v46;
    v9 = v96;
  }

  return sub_24A6876E8(v9);
}

unint64_t sub_24A6853B4()
{
  result = qword_2815145F0;
  if (!qword_2815145F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815145F0);
  }

  return result;
}

unint64_t sub_24A685408()
{
  result = qword_281514600;
  if (!qword_281514600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514600);
  }

  return result;
}

unint64_t sub_24A68545C()
{
  result = qword_2815144E8;
  if (!qword_2815144E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815144E8);
  }

  return result;
}

uint64_t FMIPFeatures.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5ED98, &qword_24A83C1C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A685F08();
  sub_24A82DD64();
  if (!v2)
  {
    LOBYTE(v68) = 0;
    v9 = sub_24A82DA54();
    LOBYTE(v68) = 1;
    v10 = sub_24A82DA54();
    LOBYTE(v68) = 2;
    v11 = sub_24A82DA54();
    LOBYTE(v68) = 3;
    LODWORD(v67) = sub_24A82DA54();
    LOBYTE(v68) = 4;
    LODWORD(v66) = sub_24A82DA54();
    LOBYTE(v68) = 5;
    v65 = sub_24A82DA54();
    LOBYTE(v68) = 6;
    LODWORD(v64) = sub_24A82DA54();
    LOBYTE(v68) = 7;
    v62 = sub_24A82DA54();
    v63 = a2;
    LOBYTE(v68) = 8;
    v61 = sub_24A82DA54();
    LOBYTE(v68) = 9;
    v60 = sub_24A82DA54();
    LOBYTE(v68) = 10;
    v59 = sub_24A82DA54();
    LOBYTE(v68) = 11;
    v58 = sub_24A82DA54();
    LOBYTE(v68) = 12;
    v57 = sub_24A82DA54();
    LOBYTE(v68) = 13;
    v56 = sub_24A82DA54();
    LOBYTE(v68) = 14;
    v55 = sub_24A82DA54();
    LOBYTE(v68) = 15;
    v54 = sub_24A82DA14();
    LOBYTE(v68) = 16;
    v53 = sub_24A82DA14();
    LOBYTE(v68) = 17;
    v52 = sub_24A82DA14();
    LOBYTE(v68) = 18;
    v51 = sub_24A82DA14();
    LOBYTE(v68) = 19;
    v50 = sub_24A82DA14();
    LOBYTE(v68) = 20;
    v49 = sub_24A82DA14();
    LOBYTE(v68) = 21;
    v48 = sub_24A82DA14();
    LOBYTE(v68) = 22;
    v47 = sub_24A82DA14();
    LOBYTE(v68) = 23;
    v46 = sub_24A82DA14();
    LOBYTE(v68) = 24;
    v45 = sub_24A82DA14();
    LOBYTE(v68) = 25;
    v44 = sub_24A82DA14();
    LOBYTE(v68) = 26;
    v43 = sub_24A82DA14();
    LOBYTE(v68) = 27;
    v42 = sub_24A82DA14();
    LOBYTE(v68) = 28;
    v41 = sub_24A82DA14();
    LOBYTE(v68) = 29;
    v13 = sub_24A82DA14();
    v14 = v9 & 1 | 2;
    if ((v10 & 1) == 0)
    {
      v14 = v9 & 1;
    }

    v15 = v14 | 4;
    if ((v11 & 1) == 0)
    {
      v15 = v14;
    }

    if (v67)
    {
      v15 |= 8uLL;
    }

    if (v66)
    {
      v15 |= 0x10uLL;
    }

    if (v65)
    {
      v15 |= 0x20uLL;
    }

    if (v64)
    {
      v15 |= 0x40uLL;
    }

    v16 = v15 | 0x80;
    if ((v62 & 1) == 0)
    {
      v16 = v15;
    }

    if (v61)
    {
      v16 |= 0x100uLL;
    }

    if (v60)
    {
      v16 |= 0x200uLL;
    }

    if (v59)
    {
      v16 |= 0x400uLL;
    }

    if (v58)
    {
      v16 |= 0x800uLL;
    }

    if (v57)
    {
      v16 |= 0x1000uLL;
    }

    if (v56)
    {
      v16 |= 0x2000uLL;
    }

    if (v55)
    {
      v16 |= 0x4000uLL;
    }

    v17 = v16 | 0x8000;
    if ((v54 & 1) == 0)
    {
      v17 = v16;
    }

    if (v54 != 2)
    {
      v16 = v17;
    }

    v18 = v16 | 0x10000;
    if ((v53 & 1) == 0)
    {
      v18 = v16;
    }

    if (v53 != 2)
    {
      v16 = v18;
    }

    v19 = v16 | 0x20000;
    if ((v52 & 1) == 0)
    {
      v19 = v16;
    }

    if (v52 != 2)
    {
      v16 = v19;
    }

    v20 = v16 | 0x40000;
    if ((v51 & 1) == 0)
    {
      v20 = v16;
    }

    if (v51 != 2)
    {
      v16 = v20;
    }

    v21 = v16 | 0x80000;
    if ((v50 & 1) == 0)
    {
      v21 = v16;
    }

    if (v50 != 2)
    {
      v16 = v21;
    }

    v22 = v16 | 0x100000;
    if ((v49 & 1) == 0)
    {
      v22 = v16;
    }

    if (v49 != 2)
    {
      v16 = v22;
    }

    v23 = v16 | 0x200000;
    if ((v48 & 1) == 0)
    {
      v23 = v16;
    }

    if (v48 != 2)
    {
      v16 = v23;
    }

    v24 = v16 | 0x2000000;
    if ((v47 & 1) == 0)
    {
      v24 = v16;
    }

    if (v47 != 2)
    {
      v16 = v24;
    }

    v25 = v16 | 0x4000000;
    if ((v46 & 1) == 0)
    {
      v25 = v16;
    }

    if (v46 != 2)
    {
      v16 = v25;
    }

    v26 = v16 | 0x400000;
    if ((v45 & 1) == 0)
    {
      v26 = v16;
    }

    if (v45 != 2)
    {
      v16 = v26;
    }

    v27 = v16 | 0x800000;
    if ((v44 & 1) == 0)
    {
      v27 = v16;
    }

    if (v44 != 2)
    {
      v16 = v27;
    }

    v28 = v16 | 0x1000000;
    if ((v43 & 1) == 0)
    {
      v28 = v16;
    }

    if (v43 != 2)
    {
      v16 = v28;
    }

    v29 = v16 | 0x8000000;
    if ((v42 & 1) == 0)
    {
      v29 = v16;
    }

    if (v42 != 2)
    {
      v16 = v29;
    }

    v30 = v16 | 0x10000000;
    if ((v41 & 1) == 0)
    {
      v30 = v16;
    }

    if (v41 != 2)
    {
      v16 = v30;
    }

    v31 = v16 | 0x20000000;
    if ((v13 & 1) == 0)
    {
      v31 = v16;
    }

    if (v13 != 2)
    {
      v16 = v31;
    }

    v67 = v16;
    v68 = v16;
    v66 = FMIPFeatures.debugDescription.getter();
    v33 = v32;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v34 = sub_24A82CDC4();
    sub_24A6797D0(v34, qword_281518F88);

    v35 = sub_24A82CD94();
    v36 = sub_24A82D4C4();

    v65 = v36;
    v37 = v35;
    if (os_log_type_enabled(v35, v36))
    {
      v38 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v68 = v64;
      *v38 = 136315138;
      v39 = sub_24A68761C(v66, v33, &v68);

      *(v38 + 4) = v39;
      _os_log_impl(&dword_24A675000, v37, v65, "FMIPFeature: initialized %s", v38, 0xCu);
      v40 = v64;
      sub_24A6876E8(v64);
      MEMORY[0x24C21E1D0](v40, -1, -1);
      MEMORY[0x24C21E1D0](v38, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
    *v63 = v67;
  }

  return sub_24A6876E8(a1);
}

unint64_t sub_24A685E60()
{
  result = qword_2815144F8;
  if (!qword_2815144F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815144F8);
  }

  return result;
}

unint64_t sub_24A685EB4()
{
  result = qword_281514500;
  if (!qword_281514500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514500);
  }

  return result;
}

unint64_t sub_24A685F08()
{
  result = qword_281514508;
  if (!qword_281514508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514508);
  }

  return result;
}

unint64_t FMIPFeatures.debugDescription.getter()
{
  sub_24A82D854();

  v0 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v0);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return 0xD000000000000019;
}

unsigned __int8 *FMIPPlaySoundMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v3 = sub_24A82CA34();
  v100 = *(v3 - 8);
  v101 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A6BBA94(&qword_27EF5FA08, &qword_24A8427B8);
  v102 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v86 - v7;
  v9 = type metadata accessor for FMIPPlaySoundMetadata(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A67DF6C(a1, a1[3]);
  sub_24A686AA4();
  v12 = v103;
  sub_24A82DD64();
  if (v12)
  {
    v17 = a1;
    return sub_24A6876E8(v17);
  }

  v96 = v9;
  v97 = v11;
  v98 = v5;
  v103 = a1;
  v13 = v102;
  LOBYTE(v104[0]) = 0;
  v14 = sub_24A82DA94();
  LOBYTE(v104[0]) = 1;
  v15 = sub_24A82DA44();
  v16 = v13;
  v19 = v18;
  v20 = v15;
  v21 = [objc_opt_self() fm:v14 dateFromEpoch:?];
  sub_24A82C9F4();

  LOBYTE(v104[0]) = 2;
  v95 = v8;
  v87 = sub_24A82DA44();
  v94 = v22;
  v23 = v100;
  LOBYTE(v104[0]) = 3;
  v92 = sub_24A82DA44();
  v93 = v24;
  LOBYTE(v104[0]) = 4;
  v90 = sub_24A82DA44();
  v91 = v25;
  LOBYTE(v104[0]) = 5;
  result = sub_24A82DA44();
  v28 = v27;
  v29 = HIBYTE(v19) & 0xF;
  v30 = v20 & 0xFFFFFFFFFFFFLL;
  if ((v19 & 0x2000000000000000) != 0)
  {
    v31 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v31 = v20 & 0xFFFFFFFFFFFFLL;
  }

  v88 = result;
  v89 = v28;
  if (!v31)
  {

    v53 = 1;
    v54 = v101;
    goto LABEL_74;
  }

  if ((v19 & 0x1000000000000000) != 0)
  {
    v105 = 0;
    v34 = sub_24A6D9830(v20, v19, 10);
    v56 = v55;

    if ((v56 & 1) == 0)
    {
      v16 = v13;
      v23 = v100;
      v32 = v97;
      goto LABEL_76;
    }

    v53 = 1;
    v23 = v100;
    v54 = v101;
    v16 = v13;
LABEL_74:
    v32 = v97;
    goto LABEL_80;
  }

  if ((v19 & 0x2000000000000000) == 0)
  {
    v32 = v97;
    if ((v20 & 0x1000000000000000) != 0)
    {
      result = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_24A82D8B4();
    }

    v33 = *result;
    if (v33 == 43)
    {
      if (v30 >= 1)
      {
        v29 = v30 - 1;
        if (v30 != 1)
        {
          if (result)
          {
            v34 = 0;
            v41 = result + 1;
            while (1)
            {
              v42 = *v41 - 48;
              if (v42 > 9)
              {
                goto LABEL_68;
              }

              v43 = 10 * v34;
              if ((v34 * 10) >> 64 != (10 * v34) >> 63)
              {
                goto LABEL_68;
              }

              v34 = v43 + v42;
              if (__OFADD__(v43, v42))
              {
                goto LABEL_68;
              }

              ++v41;
              if (!--v29)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_59;
        }

        goto LABEL_68;
      }

      goto LABEL_117;
    }

    if (v33 != 45)
    {
      if (v30)
      {
        if (result)
        {
          v34 = 0;
          while (1)
          {
            v47 = *result - 48;
            if (v47 > 9)
            {
              goto LABEL_68;
            }

            v48 = 10 * v34;
            if ((v34 * 10) >> 64 != (10 * v34) >> 63)
            {
              goto LABEL_68;
            }

            v34 = v48 + v47;
            if (__OFADD__(v48, v47))
            {
              goto LABEL_68;
            }

            ++result;
            if (!--v30)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_59;
      }

LABEL_68:
      v34 = 0;
      LOBYTE(v29) = 1;
      goto LABEL_69;
    }

    if (v30 >= 1)
    {
      v29 = v30 - 1;
      if (v30 != 1)
      {
        if (result)
        {
          v34 = 0;
          v35 = result + 1;
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              goto LABEL_68;
            }

            v37 = 10 * v34;
            if ((v34 * 10) >> 64 != (10 * v34) >> 63)
            {
              goto LABEL_68;
            }

            v34 = v37 - v36;
            if (__OFSUB__(v37, v36))
            {
              goto LABEL_68;
            }

            ++v35;
            if (!--v29)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_59:
        v34 = 0;
LABEL_60:
        LOBYTE(v29) = 0;
LABEL_69:
        v105 = v29;
        v52 = v29;

        if (v52)
        {
          v53 = 1;
LABEL_79:
          v54 = v101;
LABEL_80:
          v57 = v96;
          (*(v23 + 16))(&v32[v96[5]], v98, v54);
          *v32 = v53;
          v58 = v94;
          v59 = v89;
          if (v94)
          {
            v60 = HIBYTE(v94) & 0xF;
            if ((v94 & 0x2000000000000000) == 0)
            {
              v60 = v87 & 0xFFFFFFFFFFFFLL;
            }

            if (v60)
            {
              v61 = &v32[v57[6]];
              *v61 = v87;
              v61[1] = v58;
              goto LABEL_87;
            }
          }

          v62 = &v32[v57[6]];
          *v62 = 0;
          *(v62 + 1) = 0;
LABEL_87:
          v63 = v93;
          if (v93)
          {
            v64 = HIBYTE(v93) & 0xF;
            if ((v93 & 0x2000000000000000) == 0)
            {
              v64 = v92 & 0xFFFFFFFFFFFFLL;
            }

            if (v64)
            {
              v65 = &v32[v57[7]];
              *v65 = v92;
              v65[1] = v63;
              goto LABEL_94;
            }
          }

          v66 = &v32[v57[7]];
          *v66 = 0;
          *(v66 + 1) = 0;
LABEL_94:
          v67 = v91;
          if (v91)
          {
            v68 = HIBYTE(v91) & 0xF;
            if ((v91 & 0x2000000000000000) == 0)
            {
              v68 = v90 & 0xFFFFFFFFFFFFLL;
            }

            if (v68)
            {
              v69 = &v32[v57[8]];
              *v69 = v90;
              v69[1] = v67;
              goto LABEL_101;
            }
          }

          v70 = &v32[v57[8]];
          *v70 = 0;
          *(v70 + 1) = 0;
LABEL_101:
          if (v59)
          {
            v71 = HIBYTE(v59) & 0xF;
            if ((v59 & 0x2000000000000000) == 0)
            {
              v71 = v88 & 0xFFFFFFFFFFFFLL;
            }

            if (v71)
            {
              v72 = &v32[v57[9]];
              *v72 = v88;
              v72[1] = v59;
LABEL_108:
              v102 = FMIPPlaySoundMetadata.debugDescription.getter();
              v75 = v74;
              if (qword_281515DC8 != -1)
              {
                swift_once();
              }

              v76 = sub_24A82CDC4();
              sub_24A6797D0(v76, qword_281518F88);

              v77 = sub_24A82CD94();
              v78 = sub_24A82D4C4();

              if (os_log_type_enabled(v77, v78))
              {
                v79 = swift_slowAlloc();
                v80 = swift_slowAlloc();
                v100 = v6;
                v81 = v78;
                v82 = v80;
                v104[0] = v80;
                *v79 = 136315138;
                v83 = sub_24A68761C(v102, v75, v104);

                *(v79 + 4) = v83;
                _os_log_impl(&dword_24A675000, v77, v81, "FMIPPlaySoundMetadata: initialized %s", v79, 0xCu);
                sub_24A6876E8(v82);
                MEMORY[0x24C21E1D0](v82, -1, -1);
                v84 = v79;
                v32 = v97;
                MEMORY[0x24C21E1D0](v84, -1, -1);

                (*(v23 + 8))(v98, v101);
                (*(v16 + 8))(v95, v100);
              }

              else
              {

                (*(v23 + 8))(v98, v54);
                (*(v16 + 8))(v95, v6);
              }

              v85 = v103;
              sub_24A68E2A8(v32, v99);
              v17 = v85;
              return sub_24A6876E8(v17);
            }
          }

          v73 = &v32[v57[9]];
          *v73 = 0;
          *(v73 + 1) = 0;
          goto LABEL_108;
        }

LABEL_76:
        FMIPActionStatus.init(rawValue:)(v34);
        if (LOBYTE(v104[0]) == 18)
        {
          v53 = 1;
        }

        else
        {
          v53 = v104[0];
        }

        goto LABEL_79;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v104[0] = v20;
  v104[1] = v19 & 0xFFFFFFFFFFFFFFLL;
  v32 = v97;
  if (v20 != 43)
  {
    if (v20 != 45)
    {
      if (v29)
      {
        v34 = 0;
        v49 = v104;
        while (1)
        {
          v50 = *v49 - 48;
          if (v50 > 9)
          {
            break;
          }

          v51 = 10 * v34;
          if ((v34 * 10) >> 64 != (10 * v34) >> 63)
          {
            break;
          }

          v34 = v51 + v50;
          if (__OFADD__(v51, v50))
          {
            break;
          }

          v49 = (v49 + 1);
          if (!--v29)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v29)
    {
      if (--v29)
      {
        v34 = 0;
        v38 = v104 + 1;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = 10 * v34;
          if ((v34 * 10) >> 64 != (10 * v34) >> 63)
          {
            break;
          }

          v34 = v40 - v39;
          if (__OFSUB__(v40, v39))
          {
            break;
          }

          ++v38;
          if (!--v29)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_116;
  }

  if (v29)
  {
    if (--v29)
    {
      v34 = 0;
      v44 = v104 + 1;
      while (1)
      {
        v45 = *v44 - 48;
        if (v45 > 9)
        {
          break;
        }

        v46 = 10 * v34;
        if ((v34 * 10) >> 64 != (10 * v34) >> 63)
        {
          break;
        }

        v34 = v46 + v45;
        if (__OFADD__(v46, v45))
        {
          break;
        }

        ++v44;
        if (!--v29)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_118:
  __break(1u);
  return result;
}

unint64_t sub_24A6869F8()
{
  result = qword_281513F70;
  if (!qword_281513F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281513F70);
  }

  return result;
}

unint64_t sub_24A686A50()
{
  result = qword_281513F78;
  if (!qword_281513F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281513F78);
  }

  return result;
}

unint64_t sub_24A686AA4()
{
  result = qword_281513F80[0];
  if (!qword_281513F80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281513F80);
  }

  return result;
}

uint64_t sub_24A686B0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24A82CA34();
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
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

unsigned __int8 *FMIPDeviceLostModeMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = sub_24A82CA34();
  v88 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A6BBA94(&qword_27EF5EE98, &qword_24A83CCE0);
  v89 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v70 - v7;
  v9 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v91 = a1;
  sub_24A67DF6C(a1, v12);
  sub_24A6882B0();
  v13 = v90;
  sub_24A82DD64();
  if (v13)
  {
    return sub_24A6876E8(v91);
  }

  v84 = v9;
  v85 = v11;
  v86 = v5;
  v90 = v3;
  v14 = v89;
  LOBYTE(v92[0]) = 8;
  v15 = sub_24A82DA94();
  LOBYTE(v92[0]) = 4;
  v16 = sub_24A82DA44();
  v18 = v17;
  v19 = v16;
  v20 = [objc_opt_self() fm:v15 dateFromEpoch:?];
  sub_24A82C9F4();

  LOBYTE(v92[0]) = 6;
  v21 = sub_24A82DA44();
  v81 = v19;
  v82 = v23;
  v24 = v21;
  v83 = v18;
  LOBYTE(v92[0]) = 1;
  v79 = sub_24A82DA44();
  v80 = v25;
  LOBYTE(v92[0]) = 2;
  v26 = sub_24A82DA04();
  if (v27)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v29 = 0xE000000000000000;
  if (v27)
  {
    v29 = v27;
  }

  v77 = v28;
  v78 = v29;
  LOBYTE(v92[0]) = 0;
  v94 = sub_24A82DA54();
  LOBYTE(v92[0]) = 3;
  v76 = sub_24A82DA54();
  LOBYTE(v92[0]) = 5;
  v74 = sub_24A82DA54();
  v75 = v24;
  LOBYTE(v92[0]) = 7;
  result = sub_24A82DA54();
  v71 = v8;
  v72 = v6;
  v73 = result;
  v30 = HIBYTE(v83) & 0xF;
  v31 = v81 & 0xFFFFFFFFFFFFLL;
  if ((v83 & 0x2000000000000000) != 0)
  {
    v32 = HIBYTE(v83) & 0xF;
  }

  else
  {
    v32 = v81 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {

    goto LABEL_71;
  }

  if ((v83 & 0x1000000000000000) != 0)
  {
    v93 = 0;
    v34 = sub_24A6D9830(v81, v83, 10);
    v55 = v54;

    if (v55)
    {
      goto LABEL_71;
    }

    goto LABEL_74;
  }

  if ((v83 & 0x2000000000000000) == 0)
  {
    if ((v81 & 0x1000000000000000) != 0)
    {
      result = ((v83 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_24A82D8B4();
    }

    v33 = *result;
    if (v33 == 43)
    {
      if (v31 >= 1)
      {
        v30 = v31 - 1;
        if (v31 != 1)
        {
          v34 = 0;
          if (result)
          {
            v41 = result + 1;
            while (1)
            {
              v42 = *v41 - 48;
              if (v42 > 9)
              {
                goto LABEL_69;
              }

              v43 = 10 * v34;
              if ((v34 * 10) >> 64 != (10 * v34) >> 63)
              {
                goto LABEL_69;
              }

              v34 = v43 + v42;
              if (__OFADD__(v43, v42))
              {
                goto LABEL_69;
              }

              ++v41;
              if (!--v30)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_69;
      }

      goto LABEL_86;
    }

    if (v33 != 45)
    {
      if (v31)
      {
        v34 = 0;
        if (result)
        {
          while (1)
          {
            v47 = *result - 48;
            if (v47 > 9)
            {
              goto LABEL_69;
            }

            v48 = 10 * v34;
            if ((v34 * 10) >> 64 != (10 * v34) >> 63)
            {
              goto LABEL_69;
            }

            v34 = v48 + v47;
            if (__OFADD__(v48, v47))
            {
              goto LABEL_69;
            }

            ++result;
            if (!--v31)
            {
              goto LABEL_61;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_69:
      v34 = 0;
      LOBYTE(v30) = 1;
LABEL_70:
      v93 = v30;
      v52 = v30;

      if (v52)
      {
LABEL_71:
        v53 = 1;
LABEL_77:
        v56 = v85;
        *v85 = v74 & 1;
        v56[1] = v94 & 1;
        v56[2] = v76 & 1;
        v56[3] = v73 & 1;
        v57 = v82;
        *(v56 + 5) = v75;
        *(v56 + 6) = v57;
        v58 = v80;
        *(v56 + 1) = v79;
        *(v56 + 2) = v58;
        v59 = v78;
        *(v56 + 3) = v77;
        *(v56 + 4) = v59;
        (*(v88 + 16))(&v56[*(v84 + 48)], v86, v90);
        v56[56] = v53;
        v60 = FMIPDeviceLostModeMetadata.debugDescription.getter();
        v62 = v61;
        if (qword_281515DC8 != -1)
        {
          swift_once();
        }

        v63 = sub_24A82CDC4();
        sub_24A6797D0(v63, qword_281518F88);

        v64 = sub_24A82CD94();
        v65 = sub_24A82D4C4();

        v66 = v65;
        if (os_log_type_enabled(v64, v65))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v92[0] = v68;
          *v67 = 136315138;
          v69 = sub_24A68761C(v60, v62, v92);

          *(v67 + 4) = v69;
          _os_log_impl(&dword_24A675000, v64, v66, "FMIPDeviceLostModeMetadata: initialized %s", v67, 0xCu);
          sub_24A6876E8(v68);
          MEMORY[0x24C21E1D0](v68, -1, -1);
          MEMORY[0x24C21E1D0](v67, -1, -1);
        }

        else
        {
        }

        (*(v88 + 8))(v86, v90);
        (*(v14 + 8))(v71, v72);
        sub_24A68EEF4(v85, v87);
        return sub_24A6876E8(v91);
      }

LABEL_74:
      FMIPActionStatus.init(rawValue:)(v34);
      if (LOBYTE(v92[0]) == 18)
      {
        v53 = 1;
      }

      else
      {
        v53 = v92[0];
      }

      goto LABEL_77;
    }

    if (v31 >= 1)
    {
      v30 = v31 - 1;
      if (v31 != 1)
      {
        v34 = 0;
        if (result)
        {
          v35 = result + 1;
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              goto LABEL_69;
            }

            v37 = 10 * v34;
            if ((v34 * 10) >> 64 != (10 * v34) >> 63)
            {
              goto LABEL_69;
            }

            v34 = v37 - v36;
            if (__OFSUB__(v37, v36))
            {
              goto LABEL_69;
            }

            ++v35;
            if (!--v30)
            {
              goto LABEL_70;
            }
          }
        }

LABEL_61:
        LOBYTE(v30) = 0;
        goto LABEL_70;
      }

      goto LABEL_69;
    }

    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v92[0] = v81;
  v92[1] = v83 & 0xFFFFFFFFFFFFFFLL;
  if (v81 != 43)
  {
    if (v81 != 45)
    {
      if (v30)
      {
        v34 = 0;
        v49 = v92;
        while (1)
        {
          v50 = *v49 - 48;
          if (v50 > 9)
          {
            break;
          }

          v51 = 10 * v34;
          if ((v34 * 10) >> 64 != (10 * v34) >> 63)
          {
            break;
          }

          v34 = v51 + v50;
          if (__OFADD__(v51, v50))
          {
            break;
          }

          v49 = (v49 + 1);
          if (!--v30)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_69;
    }

    if (v30)
    {
      if (--v30)
      {
        v34 = 0;
        v38 = v92 + 1;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = 10 * v34;
          if ((v34 * 10) >> 64 != (10 * v34) >> 63)
          {
            break;
          }

          v34 = v40 - v39;
          if (__OFSUB__(v40, v39))
          {
            break;
          }

          ++v38;
          if (!--v30)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_69;
    }

    goto LABEL_85;
  }

  if (v30)
  {
    if (--v30)
    {
      v34 = 0;
      v44 = v92 + 1;
      while (1)
      {
        v45 = *v44 - 48;
        if (v45 > 9)
        {
          break;
        }

        v46 = 10 * v34;
        if ((v34 * 10) >> 64 != (10 * v34) >> 63)
        {
          break;
        }

        v34 = v46 + v45;
        if (__OFADD__(v46, v45))
        {
          break;
        }

        ++v44;
        if (!--v30)
        {
          goto LABEL_70;
        }
      }
    }

    goto LABEL_69;
  }

LABEL_87:
  __break(1u);
  return result;
}

uint64_t sub_24A68754C()
{
  v0 = objc_opt_self();
  v1 = sub_24A82CF94();
  v2 = sub_24A82CF94();
  v3 = [v0 stringForKey:v1 inDomain:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24A82CFC4();

  return v4;
}

unint64_t sub_24A68761C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24A67CE0C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_24A67E168(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_24A6876E8(v11);
  return v7;
}

uint64_t sub_24A6876E8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_24A687738(uint64_t a1)
{
  sub_24A687858(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24A687858(uint64_t a1)
{
  if (!qword_281514660)
  {
    sub_24A82CAE4();
    v1 = sub_24A82D634();
    if (!v2)
    {
      atomic_store(v1, &qword_281514660);
    }
  }
}

uint64_t sub_24A6878D8(uint64_t a1)
{
  result = sub_24A82CC84();
  if (v2 <= 0x3F)
  {
    result = sub_24A82CCB4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A68795C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FMDiskIO.KeyPair.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a5;
  v37 = sub_24A82CCB4();
  v32 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_24A82CC84();
  v35 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FMDiskIO.KeyPair.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v41 = sub_24A82DAB4();
  v34 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v12 = &v29 - v11;
  v13 = type metadata accessor for FMDiskIO.KeyPair(0, a2, a3, a4);
  v31 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  sub_24A67DF6C(a1, a1[3]);
  v39 = v12;
  v16 = v42;
  sub_24A82DD64();
  if (v16)
  {
    return sub_24A6876E8(a1);
  }

  v17 = v15;
  v42 = v13;
  v19 = v34;
  v18 = v35;
  v20 = v36;
  v21 = v37;
  v44 = 0;
  sub_24A67E858(&qword_27EF5FA78, MEMORY[0x277D08EF0], MEMORY[0x277D08F00]);
  v23 = v38;
  v22 = v39;
  sub_24A82DA84();
  v24 = *(v18 + 32);
  v30 = v17;
  v24(v17, v23, v40);
  v43 = 1;
  sub_24A67E858(qword_27EF5FA80, MEMORY[0x277D08F08], MEMORY[0x277D08F18]);
  sub_24A82DA84();
  (*(v19 + 8))(v22, v41);
  v25 = v42;
  v26 = v30;
  (*(v32 + 32))(&v30[*(v42 + 44)], v20, v21);
  v27 = v31;
  (*(v31 + 16))(v33, v26, v25);
  sub_24A6876E8(a1);
  return (*(v27 + 8))(v26, v25);
}

unint64_t sub_24A687E9C()
{
  result = qword_281513F48;
  if (!qword_281513F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281513F48);
  }

  return result;
}

unint64_t sub_24A687EF0()
{
  result = qword_2815144C0;
  if (!qword_2815144C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815144C0);
  }

  return result;
}

unint64_t sub_24A687F6C()
{
  result = qword_2815144D0;
  if (!qword_2815144D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815144D0);
  }

  return result;
}

unint64_t sub_24A687FC4()
{
  result = qword_2815144D8;
  if (!qword_2815144D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815144D8);
  }

  return result;
}

unint64_t sub_24A688018()
{
  result = qword_2815144E0;
  if (!qword_2815144E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815144E0);
  }

  return result;
}

double sub_24A68808C(_OWORD *a1)
{
  result = 0.0;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_24A6880E4()
{
  result = qword_2815145F8;
  if (!qword_2815145F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815145F8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FMIPFeatures.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A688204()
{
  result = qword_2815135A8;
  if (!qword_2815135A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815135A8);
  }

  return result;
}

unint64_t sub_24A68825C()
{
  result = qword_2815135B0;
  if (!qword_2815135B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815135B0);
  }

  return result;
}

unint64_t sub_24A6882B0()
{
  result = qword_2815135B8[0];
  if (!qword_2815135B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815135B8);
  }

  return result;
}

uint64_t sub_24A688318(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A82CA34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void FMIPLockMetadata.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v72 = sub_24A82CA34();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v4 = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A6BBA94(&qword_27EF5DB80, &qword_24A835AC0);
  v71 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v65 - v6;
  v8 = type metadata accessor for FMIPLockMetadata(0);
  MEMORY[0x28223BE20](v8);
  v10 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A67DF6C(a1, a1[3]);
  sub_24A688C74();
  v11 = v73;
  sub_24A82DD64();
  if (v11)
  {
    sub_24A6876E8(a1);
    return;
  }

  v66 = v8;
  v67 = v10;
  v68 = v4;
  v73 = a1;
  v13 = v71;
  v12 = v72;
  LOBYTE(v74[0]) = 0;
  v14 = sub_24A82DA94();
  LOBYTE(v74[0]) = 1;
  v15 = sub_24A82DA44();
  v16 = v13;
  v65[1] = 0;
  v17 = v15;
  v65[0] = v7;
  v19 = v18;
  v20 = [objc_opt_self() fm:v14 dateFromEpoch:?];
  v21 = v68;
  sub_24A82C9F4();

  v22 = HIBYTE(v19) & 0xF;
  v23 = v17 & 0xFFFFFFFFFFFFLL;
  if ((v19 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v24 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v25 = v70;
    if ((v19 & 0x1000000000000000) != 0)
    {
      v75 = 0;
      v31 = sub_24A6D9830(v17, v19, 10);
      v53 = v52;

      if (v53)
      {
        v50 = 1;
        v26 = v12;
        v16 = v13;
        v25 = v70;
        v27 = v67;
        v29 = v68;
        goto LABEL_74;
      }

      v26 = v12;
      v16 = v13;
      v25 = v70;
      v27 = v67;
      v29 = v68;
LABEL_71:
      FMIPActionStatus.init(rawValue:)(v31);
      if (LOBYTE(v74[0]) == 18)
      {
        v50 = 1;
      }

      else
      {
        v50 = v74[0];
      }

      goto LABEL_74;
    }

    v26 = v12;
    if ((v19 & 0x2000000000000000) != 0)
    {
      v74[0] = v17;
      v74[1] = v19 & 0xFFFFFFFFFFFFFFLL;
      v27 = v67;
      if (v17 == 43)
      {
        if (v22)
        {
          v29 = v21;
          if (--v22)
          {
            v31 = 0;
            v41 = v74 + 1;
            while (1)
            {
              v42 = *v41 - 48;
              if (v42 > 9)
              {
                break;
              }

              v43 = 10 * v31;
              if ((v31 * 10) >> 64 != (10 * v31) >> 63)
              {
                break;
              }

              v31 = v43 + v42;
              if (__OFADD__(v43, v42))
              {
                break;
              }

              ++v41;
              if (!--v22)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_64;
        }

LABEL_85:
        __break(1u);
        return;
      }

      v29 = v21;
      if (v17 != 45)
      {
        if (v22)
        {
          v31 = 0;
          v46 = v74;
          while (1)
          {
            v47 = *v46 - 48;
            if (v47 > 9)
            {
              break;
            }

            v48 = 10 * v31;
            if ((v31 * 10) >> 64 != (10 * v31) >> 63)
            {
              break;
            }

            v31 = v48 + v47;
            if (__OFADD__(v48, v47))
            {
              break;
            }

            v46 = (v46 + 1);
            if (!--v22)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

      if (v22)
      {
        if (--v22)
        {
          v31 = 0;
          v35 = v74 + 1;
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              break;
            }

            v37 = 10 * v31;
            if ((v31 * 10) >> 64 != (10 * v31) >> 63)
            {
              break;
            }

            v31 = v37 - v36;
            if (__OFSUB__(v37, v36))
            {
              break;
            }

            ++v35;
            if (!--v22)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }
    }

    else
    {
      v27 = v67;
      if ((v17 & 0x1000000000000000) != 0)
      {
        v28 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v28 = sub_24A82D8B4();
      }

      v29 = v21;
      v30 = *v28;
      if (v30 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v31 = 0;
            if (v28)
            {
              v38 = v28 + 1;
              while (1)
              {
                v39 = *v38 - 48;
                if (v39 > 9)
                {
                  goto LABEL_64;
                }

                v40 = 10 * v31;
                if ((v31 * 10) >> 64 != (10 * v31) >> 63)
                {
                  goto LABEL_64;
                }

                v31 = v40 + v39;
                if (__OFADD__(v40, v39))
                {
                  goto LABEL_64;
                }

                ++v38;
                if (!--v22)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_56;
          }

          goto LABEL_64;
        }

        goto LABEL_84;
      }

      if (v30 != 45)
      {
        if (v23)
        {
          v31 = 0;
          if (v28)
          {
            while (1)
            {
              v44 = *v28 - 48;
              if (v44 > 9)
              {
                goto LABEL_64;
              }

              v45 = 10 * v31;
              if ((v31 * 10) >> 64 != (10 * v31) >> 63)
              {
                goto LABEL_64;
              }

              v31 = v45 + v44;
              if (__OFADD__(v45, v44))
              {
                goto LABEL_64;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_56;
              }
            }
          }

          goto LABEL_56;
        }

LABEL_64:
        v31 = 0;
        LOBYTE(v22) = 1;
LABEL_65:
        v75 = v22;
        v49 = v22;

        if (v49)
        {
          v50 = 1;
LABEL_74:
          v51 = v66;
          goto LABEL_75;
        }

        goto LABEL_71;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v31 = 0;
          if (v28)
          {
            v32 = v28 + 1;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                goto LABEL_64;
              }

              v34 = 10 * v31;
              if ((v31 * 10) >> 64 != (10 * v31) >> 63)
              {
                goto LABEL_64;
              }

              v31 = v34 - v33;
              if (__OFSUB__(v34, v33))
              {
                goto LABEL_64;
              }

              ++v32;
              if (!--v22)
              {
                goto LABEL_65;
              }
            }
          }

LABEL_56:
          LOBYTE(v22) = 0;
          goto LABEL_65;
        }

        goto LABEL_64;
      }

      __break(1u);
    }

    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v50 = 1;
  v26 = v12;
  v25 = v70;
  v51 = v66;
  v27 = v67;
  v29 = v21;
LABEL_75:
  (*(v25 + 16))(&v27[*(v51 + 20)], v29, v26);
  *v27 = v50;
  v71 = FMIPLockMetadata.debugDescription.getter();
  v55 = v54;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v56 = sub_24A82CDC4();
  sub_24A6797D0(v56, qword_281518F88);

  v57 = sub_24A82CD94();
  v58 = sub_24A82D4C4();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v74[0] = v60;
    *v59 = 136315138;
    v61 = v58;
    v62 = sub_24A68761C(v71, v55, v74);

    *(v59 + 4) = v62;
    _os_log_impl(&dword_24A675000, v57, v61, "FMIPLockMetadata: initialized %s", v59, 0xCu);
    sub_24A6876E8(v60);
    v63 = v60;
    v27 = v67;
    MEMORY[0x24C21E1D0](v63, -1, -1);
    MEMORY[0x24C21E1D0](v59, -1, -1);

    (*(v25 + 8))(v68, v72);
  }

  else
  {

    (*(v25 + 8))(v29, v26);
  }

  (*(v16 + 8))(v65[0], v5);
  v64 = v73;
  sub_24A70455C(v27, v69);
  sub_24A6876E8(v64);
}

unint64_t sub_24A688BC8()
{
  result = qword_281514168;
  if (!qword_281514168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514168);
  }

  return result;
}

unint64_t sub_24A688C20()
{
  result = qword_281514170;
  if (!qword_281514170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514170);
  }

  return result;
}

unint64_t sub_24A688C74()
{
  result = qword_281514178[0];
  if (!qword_281514178[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281514178);
  }

  return result;
}

_BYTE *sub_24A688CDC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 238)
  {
    *result = a2 + 17;
  }

  else
  {
    v7 = sub_24A82CA34();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unsigned __int8 *FMIPEraseMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = sub_24A82CA34();
  v4 = *(v3 - 8);
  v77 = v3;
  v78 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A6BBA94(&qword_27EF5D590, &qword_24A833290);
  v79 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v69 - v8;
  v10 = type metadata accessor for FMIPEraseMetadata(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6896EC();
  v13 = v80;
  sub_24A82DD64();
  if (v13)
  {
    return sub_24A6876E8(a1);
  }

  v74 = v10;
  v75 = v12;
  v80 = v6;
  LOBYTE(v81[0]) = 2;
  v14 = sub_24A82DA94();
  LOBYTE(v81[0]) = 3;
  v15 = sub_24A82DA44();
  v17 = v16;
  v18 = [objc_opt_self() fm:v14 dateFromEpoch:?];
  v19 = v80;
  sub_24A82C9F4();

  LOBYTE(v81[0]) = 0;
  v72 = sub_24A82DA44();
  v73 = v20;
  LOBYTE(v81[0]) = 1;
  v70 = sub_24A82DA44();
  v71 = v21;
  LOBYTE(v81[0]) = 4;
  result = sub_24A82DA54();
  v23 = (HIBYTE(v17) & 0xF);
  v24 = v15 & 0xFFFFFFFFFFFFLL;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v25 = v15 & 0xFFFFFFFFFFFFLL;
  }

  v83 = result;
  if (!v25)
  {

    v48 = 1;
    goto LABEL_74;
  }

  if ((v17 & 0x1000000000000000) != 0)
  {
    v82 = 0;
    v28 = sub_24A6D9830(v15, v17, 10);
    v50 = v49;

    if (v50)
    {
      v48 = 1;
      v19 = v80;
      goto LABEL_74;
    }

    v19 = v80;
    goto LABEL_71;
  }

  if ((v17 & 0x2000000000000000) == 0)
  {
    if ((v15 & 0x1000000000000000) != 0)
    {
      v23 = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_24A82D8B4();
      v23 = result;
    }

    v26 = *v23;
    if (v26 == 43)
    {
      if (v24 >= 1)
      {
        v35 = v24 - 1;
        if (v24 != 1)
        {
          v28 = 0;
          if (!v23)
          {
            goto LABEL_65;
          }

          v36 = v23 + 1;
          while (1)
          {
            v37 = *v36 - 48;
            if (v37 > 9)
            {
              break;
            }

            v38 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              break;
            }

            v28 = v38 + v37;
            if (__OFADD__(v38, v37))
            {
              break;
            }

            ++v36;
            if (!--v35)
            {
LABEL_56:
              LOBYTE(v23) = 0;
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

      goto LABEL_83;
    }

    if (v26 == 45)
    {
      if (v24 >= 1)
      {
        v27 = v24 - 1;
        if (v24 != 1)
        {
          v28 = 0;
          if (!v23)
          {
            goto LABEL_65;
          }

          v29 = v23 + 1;
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              break;
            }

            v31 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              break;
            }

            v28 = v31 - v30;
            if (__OFSUB__(v31, v30))
            {
              break;
            }

            ++v29;
            if (!--v27)
            {
              goto LABEL_56;
            }
          }
        }

        goto LABEL_64;
      }

      __break(1u);
      goto LABEL_82;
    }

    if (v24)
    {
      v28 = 0;
      if (!v23)
      {
        goto LABEL_65;
      }

      while (1)
      {
        v42 = *v23 - 48;
        if (v42 > 9)
        {
          break;
        }

        v43 = 10 * v28;
        if ((v28 * 10) >> 64 != (10 * v28) >> 63)
        {
          break;
        }

        v28 = v43 + v42;
        if (__OFADD__(v43, v42))
        {
          break;
        }

        ++v23;
        if (!--v24)
        {
          goto LABEL_56;
        }
      }
    }

    goto LABEL_64;
  }

  v81[0] = v15;
  v81[1] = v17 & 0xFFFFFFFFFFFFFFLL;
  if (v15 != 43)
  {
    if (v15 == 45)
    {
      if (!v23)
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      if (--v23)
      {
        v28 = 0;
        v32 = v81 + 1;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v28;
          if ((v28 * 10) >> 64 != (10 * v28) >> 63)
          {
            break;
          }

          v28 = v34 - v33;
          if (__OFSUB__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v23)
          {
            goto LABEL_65;
          }
        }
      }
    }

    else if (v23)
    {
      v28 = 0;
      v44 = v81;
      while (1)
      {
        v45 = *v44 - 48;
        if (v45 > 9)
        {
          break;
        }

        v46 = 10 * v28;
        if ((v28 * 10) >> 64 != (10 * v28) >> 63)
        {
          break;
        }

        v28 = v46 + v45;
        if (__OFADD__(v46, v45))
        {
          break;
        }

        v44 = (v44 + 1);
        if (!--v23)
        {
          goto LABEL_65;
        }
      }
    }

LABEL_64:
    v28 = 0;
    LOBYTE(v23) = 1;
LABEL_65:
    v82 = v23;
    v47 = v23;

    if (v47)
    {
      v48 = 1;
LABEL_74:
      v51 = v73;
      v52 = v74;
      v53 = v71;
      v54 = v70;
      v55 = v75;
      v56 = &v75[v74[7]];
      *v56 = v72;
      v56[1] = v51;
      v57 = &v55[v52[6]];
      *v57 = v54;
      v57[1] = v53;
      v58 = v19;
      v59 = v77;
      (*(v78 + 16))(&v55[v52[5]], v58, v77);
      *v55 = v48;
      v55[v52[8]] = v83 & 1;
      v73 = FMIPEraseMetadata.debugDescription.getter();
      v61 = v60;
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v62 = sub_24A82CDC4();
      sub_24A6797D0(v62, qword_281518F88);

      v63 = sub_24A82CD94();
      v64 = sub_24A82D4C4();

      LODWORD(v74) = v64;
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v81[0] = v66;
        *v65 = 136315138;
        v67 = v63;
        v68 = sub_24A68761C(v73, v61, v81);

        *(v65 + 4) = v68;
        _os_log_impl(&dword_24A675000, v67, v74, "FMIPEraseMetadata: initialized %s", v65, 0xCu);
        sub_24A6876E8(v66);
        MEMORY[0x24C21E1D0](v66, -1, -1);
        v55 = v75;
        MEMORY[0x24C21E1D0](v65, -1, -1);

        (*(v78 + 8))(v80, v77);
      }

      else
      {

        (*(v78 + 8))(v80, v59);
      }

      (*(v79 + 8))(v9, v7);
      sub_24A6D9DBC(v55, v76);
      return sub_24A6876E8(a1);
    }

LABEL_71:
    FMIPActionStatus.init(rawValue:)(v28);
    if (LOBYTE(v81[0]) == 18)
    {
      v48 = 1;
    }

    else
    {
      v48 = v81[0];
    }

    goto LABEL_74;
  }

  if (v23)
  {
    if (--v23)
    {
      v28 = 0;
      v39 = v81 + 1;
      while (1)
      {
        v40 = *v39 - 48;
        if (v40 > 9)
        {
          break;
        }

        v41 = 10 * v28;
        if ((v28 * 10) >> 64 != (10 * v28) >> 63)
        {
          break;
        }

        v28 = v41 + v40;
        if (__OFADD__(v41, v40))
        {
          break;
        }

        ++v39;
        if (!--v23)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_84:
  __break(1u);
  return result;
}

unint64_t sub_24A689640()
{
  result = qword_281514138;
  if (!qword_281514138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514138);
  }

  return result;
}

unint64_t sub_24A689698()
{
  result = qword_281514140;
  if (!qword_281514140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514140);
  }

  return result;
}

unint64_t sub_24A6896EC()
{
  result = qword_281514148;
  if (!qword_281514148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514148);
  }

  return result;
}

uint64_t sub_24A689754(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24A82CA34();
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

unint64_t sub_24A689824()
{
  result = qword_27EF5E000;
  if (!qword_27EF5E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E000);
  }

  return result;
}

unint64_t sub_24A689878()
{
  result = qword_27EF5F280;
  if (!qword_27EF5F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F280);
  }

  return result;
}

uint64_t FMIPBeaconType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v69 = a2;
  v3 = sub_24A6BBA94(&qword_27EF5F218, &qword_24A83DEC0);
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v68 = &v49[-v4];
  v5 = sub_24A6BBA94(&qword_27EF5F220, &qword_24A83DEC8);
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v71 = &v49[-v6];
  v7 = sub_24A6BBA94(&qword_27EF5F228, &qword_24A83DED0);
  v8 = *(v7 - 8);
  v60 = v7;
  v61 = v8;
  MEMORY[0x28223BE20](v7);
  v67 = &v49[-v9];
  v10 = sub_24A6BBA94(&qword_27EF5F230, &qword_24A83DED8);
  v11 = *(v10 - 8);
  v58 = v10;
  v59 = v11;
  MEMORY[0x28223BE20](v10);
  v66 = &v49[-v12];
  v13 = sub_24A6BBA94(&qword_27EF5F238, &qword_24A83DEE0);
  v56 = *(v13 - 8);
  v57 = v13;
  MEMORY[0x28223BE20](v13);
  v70 = &v49[-v14];
  v15 = sub_24A6BBA94(&qword_27EF5F240, &qword_24A83DEE8);
  v54 = *(v15 - 8);
  v55 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v49[-v16];
  v18 = sub_24A6BBA94(&qword_27EF5F248, &qword_24A83DEF0);
  v53 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v49[-v19];
  v21 = sub_24A6BBA94(&qword_27EF5F250, &qword_24A83DEF8);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v49[-v23];
  v25 = a1[3];
  v72 = a1;
  sub_24A67DF6C(a1, v25);
  sub_24A68A874();
  v26 = v73;
  sub_24A82DD64();
  if (!v26)
  {
    v51 = v18;
    v27 = v70;
    v28 = v71;
    v52 = v22;
    v73 = v21;
    v29 = sub_24A82DAA4();
    if (*(v29 + 16) == 1)
    {
      v30 = *(v29 + 32);
      if (v30 != 7)
      {
        v50 = *(v29 + 32);
        if (v30 > 2)
        {
          if (v30 > 4)
          {
            v31 = v30 == 5;
            v32 = v69;
            v41 = v73;
            if (v31)
            {
              v79 = 5;
              sub_24A7E02C4();
              sub_24A82D9D4();
              v46 = v52;
              (*(v62 + 8))(v28, v63);
            }

            else
            {
              v80 = 6;
              sub_24A7E0270();
              v45 = v68;
              sub_24A82D9D4();
              v46 = v52;
              (*(v64 + 8))(v45, v65);
            }

            (*(v46 + 8))(v24, v41);
          }

          else
          {
            v31 = v30 == 3;
            v32 = v69;
            v33 = v73;
            if (v31)
            {
              v77 = 3;
              sub_24A7E036C();
              v34 = v66;
              sub_24A82D9D4();
              v44 = v52;
              (*(v59 + 8))(v34, v58);
            }

            else
            {
              v78 = 4;
              sub_24A7E0318();
              v43 = v67;
              sub_24A82D9D4();
              v44 = v52;
              (*(v61 + 8))(v43, v60);
            }

            (*(v44 + 8))(v24, v33);
          }

          swift_unknownObjectRelease();
          v47 = v72;
          goto LABEL_25;
        }

        if (v30)
        {
          if (v30 == 1)
          {
            v75 = 1;
            sub_24A7E0414();
            v39 = v24;
            v40 = v73;
            sub_24A82D9D4();
            (*(v54 + 8))(v17, v55);
            (*(v52 + 8))(v39, v40);
LABEL_21:
            swift_unknownObjectRelease();
            v47 = v72;
            v32 = v69;
LABEL_25:
            *v32 = v50;
            return sub_24A6876E8(v47);
          }

          v76 = 2;
          sub_24A7E03C0();
          v42 = v73;
          sub_24A82D9D4();
          (*(v56 + 8))(v27, v57);
        }

        else
        {
          v74 = 0;
          sub_24A68ABEC();
          v42 = v73;
          sub_24A82D9D4();
          (*(v53 + 8))(v20, v51);
        }

        (*(v52 + 8))(v24, v42);
        goto LABEL_21;
      }
    }

    v35 = sub_24A82D8A4();
    swift_allocError();
    v37 = v36;
    sub_24A6BBA94(&qword_27EF5F258, &qword_24A83DF00);
    *v37 = &type metadata for FMIPBeaconType;
    v38 = v73;
    sub_24A82D9E4();
    sub_24A82D894();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    (*(v52 + 8))(v24, v38);
    swift_unknownObjectRelease();
  }

  v47 = v72;
  return sub_24A6876E8(v47);
}

unint64_t sub_24A68A288()
{
  result = qword_27EF5F390;
  if (!qword_27EF5F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F390);
  }

  return result;
}

unint64_t sub_24A68A2E0()
{
  result = qword_27EF5F398;
  if (!qword_27EF5F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F398);
  }

  return result;
}

unint64_t sub_24A68A348()
{
  result = qword_27EF5F380;
  if (!qword_27EF5F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F380);
  }

  return result;
}

unint64_t sub_24A68A3A0()
{
  result = qword_27EF5F388;
  if (!qword_27EF5F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F388);
  }

  return result;
}

unint64_t sub_24A68A408()
{
  result = qword_27EF5F370;
  if (!qword_27EF5F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F370);
  }

  return result;
}

unint64_t sub_24A68A460()
{
  result = qword_27EF5F378;
  if (!qword_27EF5F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F378);
  }

  return result;
}

unint64_t sub_24A68A4C8()
{
  result = qword_27EF5F360;
  if (!qword_27EF5F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F360);
  }

  return result;
}

unint64_t sub_24A68A520()
{
  result = qword_27EF5F368;
  if (!qword_27EF5F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F368);
  }

  return result;
}

unint64_t sub_24A68A588()
{
  result = qword_27EF5F350;
  if (!qword_27EF5F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F350);
  }

  return result;
}

unint64_t sub_24A68A5E0()
{
  result = qword_27EF5F358;
  if (!qword_27EF5F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F358);
  }

  return result;
}

unint64_t sub_24A68A648()
{
  result = qword_27EF5F340;
  if (!qword_27EF5F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F340);
  }

  return result;
}

unint64_t sub_24A68A6A0()
{
  result = qword_27EF5F348;
  if (!qword_27EF5F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F348);
  }

  return result;
}

unint64_t sub_24A68A708()
{
  result = qword_27EF5F330;
  if (!qword_27EF5F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F330);
  }

  return result;
}

unint64_t sub_24A68A760()
{
  result = qword_27EF5F338;
  if (!qword_27EF5F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F338);
  }

  return result;
}

unint64_t sub_24A68A7C8()
{
  result = qword_27EF5F3A0;
  if (!qword_27EF5F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F3A0);
  }

  return result;
}

unint64_t sub_24A68A820()
{
  result = qword_27EF5F3A8;
  if (!qword_27EF5F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F3A8);
  }

  return result;
}

unint64_t sub_24A68A874()
{
  result = qword_27EF5F1D8;
  if (!qword_27EF5F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F1D8);
  }

  return result;
}

uint64_t sub_24A68A8C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24A68A8F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24A68A8F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63616542666C6573 && a2 == 0xED0000676E696E6FLL || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6169727564 && a2 == 0xE600000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xE900000000000079 || (sub_24A82DC04() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701602664 && a2 == 0xE400000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E69466C61636F6CLL && a2 == 0xED0000656C626164 || (sub_24A82DC04() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D6C617574726976 && a2 == 0xEF65636976654465)
  {

    return 6;
  }

  else
  {
    v6 = sub_24A82DC04();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t getEnumTagSinglePayload for FMIPItemBatteryStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_24A68ABEC()
{
  result = qword_27EF5F210;
  if (!qword_27EF5F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F210);
  }

  return result;
}

uint64_t sub_24A68AC40()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x6E69466C61636F6CLL;
  if (v1 != 5)
  {
    v3 = 0x4D6C617574726976;
  }

  v4 = 0x726F737365636361;
  if (v1 != 3)
  {
    v4 = 1701602664;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x63616542666C6573;
  if (v1 != 1)
  {
    v5 = 0x6E6169727564;
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

uint64_t storeEnumTagSinglePayload for FMIPItemBatteryStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A68ADE8()
{
  result = qword_27EF5F288;
  if (!qword_27EF5F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F288);
  }

  return result;
}

uint64_t FMIPDeviceConnectedStateType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v55 = sub_24A6BBA94(&qword_27EF5F6B0, &qword_24A840430);
  v52 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v56 = &v45 - v3;
  v4 = sub_24A6BBA94(&qword_27EF5F6B8, &qword_24A840438);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x28223BE20](v4);
  v58 = &v45 - v6;
  v51 = sub_24A6BBA94(&qword_27EF5F6C0, &qword_24A840440);
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v57 = &v45 - v7;
  v8 = sub_24A6BBA94(&qword_27EF5F6C8, &qword_24A840448);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = sub_24A6BBA94(&qword_27EF5F6D0, &qword_24A840450);
  v47 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = sub_24A6BBA94(&qword_27EF5F6D8, &unk_24A840458);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - v16;
  v18 = a1[3];
  v60 = a1;
  sub_24A67DF6C(a1, v18);
  sub_24A68BAD0();
  v19 = v61;
  sub_24A82DD64();
  if (v19)
  {
    goto LABEL_11;
  }

  v20 = v13;
  v45 = v11;
  v46 = 0;
  v22 = v57;
  v21 = v58;
  v61 = v15;
  v23 = v59;
  v24 = v14;
  v25 = sub_24A82DAA4();
  v26 = (2 * *(v25 + 16)) | 1;
  v62 = v25;
  v63 = v25 + 32;
  v64 = 0;
  v65 = v26;
  v27 = sub_24A68BDB4();
  if (v27 == 5 || v64 != v65 >> 1)
  {
    v32 = sub_24A82D8A4();
    swift_allocError();
    v34 = v33;
    sub_24A6BBA94(&qword_27EF5F258, &qword_24A83DF00);
    *v34 = &type metadata for FMIPDeviceConnectedStateType;
    sub_24A82D9E4();
    sub_24A82D894();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    (*(v61 + 8))(v17, v14);
    goto LABEL_10;
  }

  v66 = v27;
  if (v27 <= 1u)
  {
    if (v27)
    {
      v67 = 1;
      sub_24A8112F4();
      v43 = v10;
      v38 = v14;
      v44 = v46;
      sub_24A82D9D4();
      if (v44)
      {
        v40 = v61;
        goto LABEL_23;
      }

      (*(v49 + 8))(v43, v50);
      (*(v61 + 8))(v17, v14);
    }

    else
    {
      v67 = 0;
      sub_24A68BDE8();
      v37 = v46;
      sub_24A82D9D4();
      if (v37)
      {
        (*(v61 + 8))(v17, v14);
        goto LABEL_10;
      }

      (*(v47 + 8))(v20, v45);
      (*(v61 + 8))(v17, v14);
    }

    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
    goto LABEL_30;
  }

  v28 = v23;
  if (v27 == 2)
  {
    v67 = 2;
    sub_24A8112A0();
    v38 = v24;
    v39 = v46;
    sub_24A82D9D4();
    v40 = v61;
    if (!v39)
    {
      (*(v48 + 8))(v22, v51);
      (*(v40 + 8))(v17, v38);
LABEL_25:
      swift_unknownObjectRelease();
      v35 = v60;
      goto LABEL_30;
    }

LABEL_23:
    (*(v40 + 8))(v17, v38);
    goto LABEL_10;
  }

  v29 = v17;
  v30 = v61;
  if (v27 != 3)
  {
    v67 = 4;
    sub_24A8111F8();
    v41 = v56;
    v42 = v46;
    sub_24A82D9D4();
    if (v42)
    {
      (*(v30 + 8))(v29, v24);
      goto LABEL_10;
    }

    (*(v52 + 8))(v41, v55);
    (*(v30 + 8))(v29, v24);
    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
LABEL_30:
    *v28 = v66;
    return sub_24A6876E8(v35);
  }

  v67 = 3;
  sub_24A81124C();
  v31 = v46;
  sub_24A82D9D4();
  if (!v31)
  {
    (*(v54 + 8))(v21, v53);
    (*(v30 + 8))(v29, v24);
    goto LABEL_25;
  }

  (*(v30 + 8))(v29, v24);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v35 = v60;
  return sub_24A6876E8(v35);
}

unint64_t sub_24A68B664()
{
  result = qword_27EF5F838;
  if (!qword_27EF5F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F838);
  }

  return result;
}