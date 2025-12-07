uint64_t sub_1D7EDF6D0()
{
  OUTLINED_FUNCTION_16_6();
  if (v4 && (v5 = v3, v6 = sub_1D7E11428(v1, v2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = sub_1D818F824();
    OUTLINED_FUNCTION_8();
    (*(v11 + 16))(v0, v9 + *(v11 + 72) * v8, v10);
    v12 = OUTLINED_FUNCTION_17_2();
  }

  else
  {
    sub_1D818F824();
    v12 = OUTLINED_FUNCTION_15_0();
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_1D7EDF770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1D7E11428(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_14_7(v4);

  return v3;
}

void sub_1D7EDF7BC()
{
  v2 = v0;
  if (sub_1D7E89164(v0))
  {

    v3 = sub_1D7E89164(v0);
    if (v3)
    {
      v4 = v3;
      sub_1D7E11428(0xD00000000000001CLL, 0x80000001D81C5600);
      if (v5)
      {
        OUTLINED_FUNCTION_18_0();
        swift_isUniquelyReferenced_nonNull_native();
        sub_1D7EE21A0();
        sub_1D8192374();

        sub_1D7E1C664((*(v4 + 56) + 32 * v1), v6);
        sub_1D8192384();
      }

      else
      {
        memset(v6, 0, sizeof(v6));
      }

      sub_1D7E7BAAC(v6);
      sub_1D8190D44();
      OUTLINED_FUNCTION_18_0();

      [v2 setUserInfo_];
    }

    else
    {

      [v0 setUserInfo_];
    }
  }
}

uint64_t sub_1D7EDF944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v20[1] = a2;
  v5 = sub_1D818E8B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v17 = *(v6 + 16);
  v17(v20 - v18, v3, v5, v16);
  (v17)(v11, v3, v5);
  (v17)(v8, a1, v5);
  sub_1D7E06A90(&qword_1EDBBC6D8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_1D8191FC4();
  sub_1D8191FB4();
  return (*(v6 + 8))(v14, v5);
}

uint64_t sub_1D7EDFB3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1D7EDFB94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1D7EDFBF4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1DA714A50](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_1D7EDFC48(uint64_t a1, id *a2)
{
  result = sub_1D8190EF4();
  *a2 = 0;
  return result;
}

void sub_1D7EDFCBC()
{
  OUTLINED_FUNCTION_11_4();
  v1 = v0();
  OUTLINED_FUNCTION_7_8(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D7EDFCF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D8192854();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_1D7EDFD48(uint64_t a1, id *a2)
{
  v3 = sub_1D8190F04();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D7EDFDC8()
{
  OUTLINED_FUNCTION_11_4();
  v1 = v0();
  OUTLINED_FUNCTION_7_8(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);
  return v9 & 1;
}

uint64_t sub_1D7EDFE08@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_0_4();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EDFE3C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_9(a1);
  result = sub_1D7EE5ED4(v2, v3);
  *v1 = result;
  return result;
}

void sub_1D7EDFE80()
{
  OUTLINED_FUNCTION_2_15();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_1D7EDFEB0(uint64_t a1)
{
  v1 = sub_1D8190F14();
  v2 = MEMORY[0x1DA713300](v1);

  return v2;
}

uint64_t sub_1D7EDFF44@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1D7EDFE00();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EE0064@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7EDFE04();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EE008C(uint64_t a1)
{
  sub_1D7E06A90(&qword_1ECA0CD48, type metadata accessor for Identifier, &unk_1D819DAF0);
  sub_1D7E06A90(&unk_1ECA0CD50, type metadata accessor for Identifier, &unk_1D819DA90);

  return sub_1D81924A4();
}

uint64_t sub_1D7EE0148(uint64_t a1)
{
  sub_1D7E06A90(&qword_1ECA0CD68, type metadata accessor for UIContentSizeCategory, &unk_1D819D764);
  sub_1D7E06A90(&qword_1ECA0CD70, type metadata accessor for UIContentSizeCategory, &unk_1D819D704);

  return sub_1D81924A4();
}

uint64_t sub_1D7EE0204(uint64_t a1)
{
  sub_1D7E06A90(&qword_1EDBB30F0, type metadata accessor for Key, &unk_1D819F15C);
  sub_1D7E06A90(&qword_1ECA0CD60, type metadata accessor for Key, &unk_1D819D97C);

  return sub_1D81924A4();
}

uint64_t sub_1D7EE02C0(uint64_t a1)
{
  sub_1D7E06A90(&qword_1ECA0CE50, type metadata accessor for IOSurfacePropertyKey, &unk_1D819F86C);
  sub_1D7E06A90(&qword_1ECA0CE58, type metadata accessor for IOSurfacePropertyKey, &unk_1D819F350);

  return sub_1D81924A4();
}

uint64_t sub_1D7EE037C(uint64_t a1)
{
  sub_1D7E06A90(&qword_1ECA0CCC8, type metadata accessor for CAMediaTimingFillMode, &unk_1D819EC70);
  sub_1D7E06A90(&qword_1ECA0CCD0, type metadata accessor for CAMediaTimingFillMode, &unk_1D819EC10);

  return sub_1D81924A4();
}

uint64_t sub_1D7EE0438(uint64_t a1)
{
  sub_1D7E06A90(&qword_1ECA0CCE8, type metadata accessor for CALayerCornerCurve, &unk_1D819E7CC);
  sub_1D7E06A90(&qword_1ECA0CCF0, type metadata accessor for CALayerCornerCurve, &unk_1D819E76C);

  return sub_1D81924A4();
}

_DWORD *sub_1D7EE04F4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1D7EE0504(uint64_t a1)
{
  sub_1D7E06A90(&qword_1ECA0CD38, type metadata accessor for Notification, &unk_1D819DC48);
  sub_1D7E06A90(&qword_1ECA0CD40, type metadata accessor for Notification, &unk_1D819DBE8);
  return sub_1D81924A4();
}

uint64_t sub_1D7EE05C0(uint64_t a1)
{
  sub_1D7E06A90(&qword_1ECA0CD28, type metadata accessor for LaunchOptionsKey, &unk_1D819F118);
  sub_1D7E06A90(&qword_1ECA0CD30, type metadata accessor for LaunchOptionsKey, &unk_1D819DD40);

  return sub_1D81924A4();
}

uint64_t sub_1D7EE067C(uint64_t a1)
{
  sub_1D7E06A90(&qword_1ECA0CCD8, type metadata accessor for ActivityType, &unk_1D819EB20);
  sub_1D7E06A90(&qword_1ECA0CCE0, type metadata accessor for ActivityType, &unk_1D819EAC8);

  return sub_1D81924A4();
}

uint64_t sub_1D7EE0738(uint64_t a1)
{
  sub_1D7E06A90(&qword_1ECA0CE18, type metadata accessor for CIContextOption, &unk_1D819F828);
  sub_1D7E06A90(&qword_1ECA0CE20, type metadata accessor for CIContextOption, &unk_1D819F714);

  return sub_1D81924A4();
}

uint64_t sub_1D7EE07F4(uint64_t a1)
{
  sub_1D7E06A90(&qword_1EDBBD1B8, type metadata accessor for OpenURLOptionsKey, &unk_1D819F0D4);
  sub_1D7E06A90(&qword_1ECA0CD20, type metadata accessor for OpenURLOptionsKey, &unk_1D819DE54);

  return sub_1D81924A4();
}

uint64_t sub_1D7EE08B0@<X0>(void *a2@<X8>)
{
  sub_1D8190EE4();
  OUTLINED_FUNCTION_18_0();

  *a2 = v2;
  return result;
}

uint64_t sub_1D7EE08F4(uint64_t a1)
{
  sub_1D7E06A90(&qword_1EDBAE488, type metadata accessor for OpenExternalURLOptionsKey, &unk_1D819F090);
  sub_1D7E06A90(&unk_1ECA0CD10, type metadata accessor for OpenExternalURLOptionsKey, &unk_1D819E148);

  return sub_1D81924A4();
}

uint64_t sub_1D7EE09B0(uint64_t a1)
{
  sub_1D7E06A90(&qword_1ECA0CE40, _s3__C10IdentifierVMa_0, &unk_1D819F4B8);
  sub_1D7E06A90(&qword_1ECA0CE48, _s3__C10IdentifierVMa_0, &unk_1D819F458);

  return sub_1D81924A4();
}

double sub_1D7EE0A6C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1D7EE0A78(uint64_t a1)
{
  sub_1D7E06A90(&qword_1ECA0CE28, type metadata accessor for Level, &unk_1D819F610);
  sub_1D7E06A90(&unk_1ECA0CE30, type metadata accessor for Level, &unk_1D819F5B0);
  sub_1D7EE27A8();
  return sub_1D81924A4();
}

uint64_t sub_1D7EE0B40(uint64_t a1)
{
  sub_1D7E06A90(&qword_1ECA0CCF8, type metadata accessor for UIBackgroundTaskIdentifier, &unk_1D819E44C);
  sub_1D7E06A90(&unk_1ECA0CD00, type metadata accessor for UIBackgroundTaskIdentifier, &unk_1D819E3EC);
  return sub_1D81924A4();
}

void sub_1D7EE20E4(uint64_t a1, void *a2)
{
  v3 = sub_1D8190D44();

  [a2 setUserInfo_];
}

uint64_t sub_1D7EE2164(uint64_t a1)
{
  sub_1D8190F14();
  v1 = sub_1D8190EE4();

  return v1;
}

void sub_1D7EE21A0()
{
  if (!qword_1EDBB2DB0)
  {
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2DB0);
    }
  }
}

uint64_t sub_1D7EE2204(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D7EE22E8(uint64_t a1, int a2)
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

uint64_t sub_1D7EE2308(uint64_t result, int a2, int a3)
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

uint64_t sub_1D7EE23A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 8))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7EE23E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_1D7EE27A8()
{
  result = qword_1EDBBC578;
  if (!qword_1EDBBC578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBC578);
  }

  return result;
}

uint64_t sub_1D7EE2898(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D8190F14();
  v4 = v3;
  v5 = sub_1D8190F14();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_10(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_1D7EE291C(char a1, char a2)
{
  if (a1)
  {
    v2 = 0xE900000000000059;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = 0xE900000000000059;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D8192634();
  }

  return v4 & 1;
}

uint64_t sub_1D7EE29A8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6764456F546E6970;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x726F66736E617274;
    }

    else
    {
      v5 = 1701736302;
    }

    if (v4 == 1)
    {
      v6 = 0xEF656764456F546DLL;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0x6764456F546E6970;
    v6 = 0xE900000000000065;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x726F66736E617274;
    }

    else
    {
      v3 = 1701736302;
    }

    if (a2 == 1)
    {
      v2 = 0xEF656764456F546DLL;
    }

    else
    {
      v2 = 0xE400000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_18_3(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1D7EE2AA4(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_33_1();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_10_10(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1D7EE2B34(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1701274725;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701274725;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x6465786966;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x6E6F6974636573;
      break;
    case 3:
      v5 = 0xD000000000000013;
      v3 = 0x80000001D81C58C0;
      break;
    case 4:
      v5 = 1701736302;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x6465786966;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x6E6F6974636573;
      break;
    case 3:
      v2 = 0xD000000000000013;
      v6 = 0x80000001D81C58C0;
      break;
    case 4:
      v2 = 1701736302;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_10(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1D7EE2C80(char a1, char a2)
{
  if (a1)
  {
    v2 = 1635017060;
  }

  else
  {
    v2 = 1701869940;
  }

  if (a2)
  {
    v3 = 1635017060;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D8192634();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D7EE2CF0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000067;
  v3 = 0x6E69726165707061;
  v4 = a1;
  v5 = 0x6E69726165707061;
  v6 = 0xE900000000000067;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x6465726165707061;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_36_0();
      v6 = 0xEC000000676E6972;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_36_0();
      v6 = 0xEB00000000646572;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x6465726165707061;
      break;
    case 2:
      OUTLINED_FUNCTION_34_1();
      v2 = 0xEC000000676E6972;
      break;
    case 3:
      OUTLINED_FUNCTION_34_1();
      v2 = 0xEB00000000646572;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_18_3(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1D7EE2E28(char a1)
{
  if (a1)
  {
    v1 = 0xEC000000676E6972;
  }

  else
  {
    v1 = 0xE900000000000067;
  }

  OUTLINED_FUNCTION_33_1();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_10_10(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1D7EE2EC4(char a1, char a2)
{
  v2 = "eneConnect";
  if (a1)
  {
    v3 = "entKindSectionHeader";
  }

  else
  {
    v3 = "eneConnect";
  }

  if (a2)
  {
    v2 = "entKindSectionHeader";
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D8192634();
  }

  return v4 & 1;
}

uint64_t sub_1D7EE2F60(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_33_1();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_10_10(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1D7EE2FF0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x726576656ELL;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x726576656ELL;
  switch(v4)
  {
    case 1:
      v5 = 0x6F446C6C6F726373;
      v3 = 0xEA00000000006E77;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1701077350;
      break;
    case 3:
      v5 = 0x63416F4E65646166;
      v3 = 0xEF79726F73736563;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6F446C6C6F726373;
      v6 = 0xEA00000000006E77;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1701077350;
      break;
    case 3:
      v2 = 0x63416F4E65646166;
      v6 = 0xEF79726F73736563;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_10(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1D7EE313C(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1701077350;
  }

  else
  {
    v3 = 0x726576656ELL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1701077350;
  }

  else
  {
    v5 = 0x726576656ELL;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_10(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1D7EE31C4(char a1, uint64_t a2)
{
  v2 = 0x6E6564646968;
  if (a1)
  {
    OUTLINED_FUNCTION_21_1();
    if (v3)
    {
      v5 = 0x676E696461656CLL;
    }

    else
    {
      v5 = 0x676E696C69617274;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
    v5 = 0x6E6564646968;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_21_1();
    if (v7)
    {
      v2 = 0x676E696461656CLL;
    }

    else
    {
      v2 = 0x676E696C69617274;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE800000000000000;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_10_10(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_1D7EE32A8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7364980;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x616853724F706174;
    }

    else
    {
      v4 = 0x656B616873;
    }

    if (v3 == 1)
    {
      v5 = 0xEA0000000000656BLL;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7364980;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x616853724F706174;
    }

    else
    {
      v2 = 0x656B616873;
    }

    if (a2 == 1)
    {
      v6 = 0xEA0000000000656BLL;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_10(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1D7EE3394(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEB00000000686374;
  v3 = 0x61772C656E6F6870;
  v4 = a1;
  v5 = 0x61772C656E6F6870;
  v6 = 0xEB00000000686374;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000010;
      v7 = "";
      goto LABEL_5;
    case 2:
      v5 = 0xD000000000000010;
      v7 = "sysdiagnose-only";
LABEL_5:
      v6 = v7 | 0x8000000000000000;
      break;
    case 3:
      v6 = 0xE100000000000000;
      v5 = 48;
      break;
    case 4:
      v6 = 0xE200000000000000;
      v5 = 12589;
      break;
    case 5:
      v6 = 0xE500000000000000;
      v5 = 0x656E6F6870;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000010;
      v8 = "";
      goto LABEL_12;
    case 2:
      v3 = 0xD000000000000010;
      v8 = "sysdiagnose-only";
LABEL_12:
      v2 = v8 | 0x8000000000000000;
      break;
    case 3:
      v2 = 0xE100000000000000;
      v3 = 48;
      break;
    case 4:
      v2 = 0xE200000000000000;
      v3 = 12589;
      break;
    case 5:
      v2 = 0xE500000000000000;
      v3 = 0x656E6F6870;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_18_3(v5, a2, v3);
  }

  return v10 & 1;
}

uint64_t sub_1D7EE34FC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x4C52556E65706FLL;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6974634172657375;
    }

    else
    {
      v4 = 0x6E6F43656E656373;
    }

    if (v3 == 1)
    {
      v5 = 0xEC00000079746976;
    }

    else
    {
      v5 = 0xEC0000007463656ELL;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x4C52556E65706FLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6974634172657375;
    }

    else
    {
      v2 = 0x6E6F43656E656373;
    }

    if (a2 == 1)
    {
      v6 = 0xEC00000079746976;
    }

    else
    {
      v6 = 0xEC0000007463656ELL;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_10(v4, a2, v2);
  }

  return v8 & 1;
}

BOOL sub_1D7EE360C(char a1, char a2)
{
  v2 = 0.8;
  if (a1)
  {
    v3 = 0.5;
  }

  else
  {
    v3 = 0.8;
  }

  if (a2)
  {
    v2 = 0.5;
  }

  return v3 == v2;
}

uint64_t sub_1D7EE3634(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x7365676170;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7365676170;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v6 = 0x6E6F69746361;
      goto LABEL_5;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x736C6562616CLL;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v6 = 0x656C646E7562;
LABEL_5:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE700000000000000;
      v8 = 0x6E6F69746361;
      goto LABEL_10;
    case 2:
      v7 = 0xE600000000000000;
      v2 = 0x736C6562616CLL;
      break;
    case 3:
      v7 = 0xE700000000000000;
      v8 = 0x656C646E7562;
LABEL_10:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_10_10(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_1D7EE3760(unsigned __int8 a1, uint64_t a2)
{
  v2 = 6580516;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 6580516;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x616D6568637324;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x746E656D6D6F6324;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x656C746974;
      break;
    case 4:
      v5 = 0x7470697263736564;
      v3 = 0xEB000000006E6F69;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x616D6568637324;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x746E656D6D6F6324;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x656C746974;
      break;
    case 4:
      v2 = 0x7470697263736564;
      v6 = 0xEB000000006E6F69;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_10(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1D7EE38D4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1701869940;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701869940;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x736D657469;
      break;
    case 2:
      v5 = 0xD000000000000014;
      v3 = 0x80000001D81C56E0;
      break;
    case 3:
      v5 = 0x69747265706F7270;
      v3 = 0xEA00000000007365;
      break;
    case 4:
      v3 = 0xE800000000000000;
      v5 = 0x6465726975716572;
      break;
    case 5:
      v5 = 0x616C707369642D78;
      v3 = 0xEE0073656D614E79;
      break;
    case 6:
      v5 = 1717924388;
      break;
    case 7:
      v5 = 0x6974696E69666564;
      v3 = 0xEB00000000736E6FLL;
      break;
    case 8:
      v3 = 0xE700000000000000;
      v5 = 0x746C7561666564;
      break;
    case 9:
      v5 = 0x72702D79656B2D78;
      v3 = 0xED00007374657365;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x736D657469;
      break;
    case 2:
      v2 = 0xD000000000000014;
      v6 = 0x80000001D81C56E0;
      break;
    case 3:
      v2 = 0x69747265706F7270;
      v6 = 0xEA00000000007365;
      break;
    case 4:
      v6 = 0xE800000000000000;
      v2 = 0x6465726975716572;
      break;
    case 5:
      v2 = 0x616C707369642D78;
      v6 = 0xEE0073656D614E79;
      break;
    case 6:
      v2 = 1717924388;
      break;
    case 7:
      v2 = 0x6974696E69666564;
      v6 = 0xEB00000000736E6FLL;
      break;
    case 8:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_16_7();
      break;
    case 9:
      v2 = 0x72702D79656B2D78;
      v6 = 0xED00007374657365;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_10(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1D7EE3B4C(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 13168;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (a2)
  {
    v5 = 13168;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_10(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1D7EE3BD4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1701736302;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701736302;
  switch(v4)
  {
    case 1:
      v5 = 0x6974616D6F747561;
      v3 = 0xEA00000000006E6FLL;
      break;
    case 2:
      v5 = 0x616D726F66726570;
      v3 = 0xEB0000000065636ELL;
      break;
    case 3:
      v5 = 1869440356;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6974616D6F747561;
      v6 = 0xEA00000000006E6FLL;
      break;
    case 2:
      v2 = 0x616D726F66726570;
      v6 = 0xEB0000000065636ELL;
      break;
    case 3:
      v2 = 1869440356;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_10(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1D7EE3D10(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_33_1();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_10_10(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1D7EE3D9C()
{
  OUTLINED_FUNCTION_16_7();
  if (v2)
  {
    OUTLINED_FUNCTION_21_1();
    if (v3)
    {
      v5 = 0x63696D616E7964;
    }

    else
    {
      v5 = 0x636974617473;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = v1;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_21_1();
    if (v7)
    {
      v1 = 0x63696D616E7964;
    }

    else
    {
      v1 = 0x636974617473;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE600000000000000;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v5 == v1 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_10_10(v5, v0, v1);
  }

  return v11 & 1;
}

uint64_t sub_1D7EE3E70(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6B63616C62;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = 0x80000001D81C59F0;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x6B63616C62;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0x80000001D81C59F0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_10(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1D7EE3F04()
{
  OUTLINED_FUNCTION_16_7();
  if (v2)
  {
    OUTLINED_FUNCTION_21_1();
    if (v3)
    {
      v5 = 0x64656C62616E65;
    }

    else
    {
      v5 = 0x64656C6261736964;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = v1;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_21_1();
    if (v7)
    {
      v1 = 0x64656C62616E65;
    }

    else
    {
      v1 = 0x64656C6261736964;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE800000000000000;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v5 == v1 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_10_10(v5, v0, v1);
  }

  return v11 & 1;
}

uint64_t sub_1D7EE3FE0()
{
  sub_1D818FC34();
  sub_1D7E2DA28(&qword_1ECA0CF30, MEMORY[0x1E69D6B90], MEMORY[0x1E69D6B98]);
  sub_1D8191294();
  sub_1D8191294();
  if (v6 == v4 && v7 == v5)
  {
    v2 = 1;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_18_3(v6, v0, v4);
  }

  return v2 & 1;
}

uint64_t sub_1D7EE411C()
{
  v1 = sub_1D818E2D4();
  v2 = MEMORY[0x1E6959D88];
  sub_1D7E2DA28(&qword_1EDBB20F8, MEMORY[0x1E6959D88], MEMORY[0x1E6959D98]);
  sub_1D8191294();
  (*(*(v1 - 8) + 8))(v0, v1);
  sub_1D8191294();
  sub_1D7E2DA28(&qword_1EDBB20F0, v2, MEMORY[0x1E6959DB0]);
  return sub_1D8192904();
}

uint64_t sub_1D7EE4278@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = TipPlacement.Traits.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D7EE42B8@<X0>(uint64_t *a1@<X8>)
{
  result = TipPlacement.Traits.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EE4488()
{
  result = OUTLINED_FUNCTION_28_2();
  *v1 = v2;
  if (!result)
  {
    OUTLINED_FUNCTION_19_2();
    result = v0();
    *v1 = result;
  }

  return result;
}

void sub_1D7EE46B4()
{
  OUTLINED_FUNCTION_31_1();
  if (!(v4 ^ v5 | v3))
  {
    *v0 = v1(v2 > 1);
  }
}

uint64_t sub_1D7EE4744(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1D81913B4();
  }

  return result;
}

unint64_t sub_1D7EE4774()
{
  result = qword_1EDBBBA48;
  if (!qword_1EDBBBA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBBA48);
  }

  return result;
}

unint64_t sub_1D7EE47CC()
{
  result = qword_1EDBBBA40;
  if (!qword_1EDBBBA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBBA40);
  }

  return result;
}

uint64_t _s6TraitsVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void sub_1D7EE4840()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v2)
    {
      sub_1D7EE5C18(0, &qword_1ECA0CF20);
      v7 = OUTLINED_FUNCTION_20_0(v6);
      OUTLINED_FUNCTION_8_10(v7);
      OUTLINED_FUNCTION_5_2(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_3_13();
        sub_1D80E75BC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = OUTLINED_FUNCTION_13_3();
    memcpy(v12, v13, v14);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1D7EE49A8()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v2)
    {
      OUTLINED_FUNCTION_0_1();
      sub_1D7E1B5C8(0, v6, v7, v8);
      v9 = OUTLINED_FUNCTION_23_2();
      OUTLINED_FUNCTION_8_10(v9);
      OUTLINED_FUNCTION_5_2(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_3_13();
        sub_1D7ED0768(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_7_9();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1D7EE4AF8(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), void (*a8)(uint64_t))
{
  if ((a3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v14 == v15))
  {
LABEL_6:
    OUTLINED_FUNCTION_24_2();
    if (v9)
    {
      v16 = OUTLINED_FUNCTION_29_1();
      sub_1D7EE5D48(v16, v17, v19, v18);
      v20 = OUTLINED_FUNCTION_23_2();
      v21 = _swift_stdlib_malloc_size(v20);
      v20[2] = v8;
      v20[3] = 2 * ((v21 - 32) / 16);
      if (a1)
      {
LABEL_8:
        v22 = OUTLINED_FUNCTION_25_1();
        a8(v22);
        *(a4 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_8;
    }

    a7(0);
    OUTLINED_FUNCTION_27_1();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v14)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1D7EE4BEC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1D7EE5D48(0, &qword_1EDBB2BF8, sub_1D7EE5DA8, MEMORY[0x1E69E6F90]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1D80E5C20((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1D7EE5DC8(0, &qword_1EDBB2B78);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1D7EE4D38(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1D7E1B5C8(0, &qword_1EDBAE318, &type metadata for ScrollTracker.Callback, MEMORY[0x1E69E6F90]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1D80E5C48((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1D7EE4E58()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v2)
    {
      sub_1D7EE5D48(0, &qword_1EDBB2C58, sub_1D7EE5958, MEMORY[0x1E69E6F90]);
      v6 = OUTLINED_FUNCTION_23_2();
      OUTLINED_FUNCTION_8_10(v6);
      OUTLINED_FUNCTION_5_2(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3_13();
        sub_1D7E5CB78(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_1D7EE5958();
    OUTLINED_FUNCTION_7_9();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

char *sub_1D7EE4F38(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1D7EE5E68(0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1D80E75BC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1D7E069F0(0, &qword_1EDBB9898, &protocol descriptor for MotionTransformable, 0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1D7EE508C()
{
  OUTLINED_FUNCTION_14_5();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v3)
    {
      OUTLINED_FUNCTION_0_1();
      sub_1D7E1B5C8(0, v7, v8, v9);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v2;
      v10[3] = 2 * v11 - 64;
      if (v1)
      {
LABEL_8:
        v12 = OUTLINED_FUNCTION_3_13();
        sub_1D80E5E04(v12, v13, v14);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v15 = OUTLINED_FUNCTION_7_9();
    memcpy(v15, v16, v17);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1D7EE5190()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v2)
    {
      OUTLINED_FUNCTION_0_1();
      sub_1D7E1B5C8(0, v6, v7, v8);
      v10 = OUTLINED_FUNCTION_22_0(v9);
      OUTLINED_FUNCTION_8_10(v10);
      OUTLINED_FUNCTION_26_0(v11);
      if (v1)
      {
LABEL_8:
        v12 = OUTLINED_FUNCTION_3_13();
        sub_1D7E3F980(v12, v13, v14);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_7_9();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1D7EE532C(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_16();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      sub_1D7EE5CC4(0);
      v12 = OUTLINED_FUNCTION_22_0(v11);
      OUTLINED_FUNCTION_8_10(v12);
      *(v10 + 16) = v9;
      *(v10 + 24) = 2 * (v13 / 40);
      if (a1)
      {
LABEL_12:
        sub_1D7E3F97C(a4 + 32, v9, v10 + 32);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    sub_1D7E1CBD8(0, &qword_1EDBB9550, qword_1EDBB9558, &protocol descriptor for ContextMenuGroupable, MEMORY[0x1E69E6720]);
    OUTLINED_FUNCTION_13_3();
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v7)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1D7EE54C4()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v2)
    {
      sub_1D7EE5C18(0, &qword_1EDBAE2C0);
      v7 = OUTLINED_FUNCTION_20_0(v6);
      OUTLINED_FUNCTION_8_10(v7);
      OUTLINED_FUNCTION_5_2(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_3_13();
        sub_1D80E75BC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = OUTLINED_FUNCTION_13_3();
    memcpy(v12, v13, v14);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1D7EE55BC()
{
  OUTLINED_FUNCTION_32_0();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_24_2();
    if (v4)
    {
      v8 = OUTLINED_FUNCTION_29_1();
      sub_1D7E1B5C8(v8, v9, v2, v10);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      OUTLINED_FUNCTION_30_4(v12);
      if (v3)
      {
LABEL_8:
        v13 = OUTLINED_FUNCTION_25_1();
        v1(v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v3)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_27_1();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v6)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1D7EE5724()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v2)
    {
      sub_1D7EE5D48(0, &qword_1EDBB2C20, type metadata accessor for CGRect, MEMORY[0x1E69E6F90]);
      v6 = OUTLINED_FUNCTION_23_2();
      OUTLINED_FUNCTION_8_10(v6);
      OUTLINED_FUNCTION_5_2(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3_13();
        sub_1D7E5CB78(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = OUTLINED_FUNCTION_13_3();
    memcpy(v11, v12, v13);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1D7EE57FC()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v2)
    {
      sub_1D7EE5D48(0, &qword_1EDBAE2F0, sub_1D7EE59B4, MEMORY[0x1E69E6F90]);
      v7 = OUTLINED_FUNCTION_20_0(v6);
      OUTLINED_FUNCTION_8_10(v7);
      OUTLINED_FUNCTION_5_2(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_3_13();
        sub_1D7E2D3DC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = OUTLINED_FUNCTION_13_3();
    memcpy(v12, v13, v14);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1D7EE5958()
{
  if (!qword_1EDBB33F0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBB33F0);
    }
  }
}

void sub_1D7EE59B4()
{
  if (!qword_1EDBB0208)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBB0208);
    }
  }
}

void sub_1D7EE5A18(uint64_t a1)
{
  if (!qword_1EDBBC670)
  {
    sub_1D818E994();
    type metadata accessor for CGRect();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBBC670);
    }
  }
}

unint64_t sub_1D7EE5A88()
{
  result = qword_1ECA0CF40;
  if (!qword_1ECA0CF40)
  {
    sub_1D7E0A1A8(255, &qword_1EDBB31B0, 0x1E69DD258);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECA0CF40);
  }

  return result;
}

unint64_t sub_1D7EE5AFC()
{
  result = qword_1ECA0CF50;
  if (!qword_1ECA0CF50)
  {
    sub_1D7E0A1A8(255, &qword_1EDBB2FC0, 0x1E69DD250);
    type metadata accessor for CGRect();
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_1ECA0CF50);
  }

  return result;
}

unint64_t sub_1D7EE5B7C()
{
  result = qword_1EDBAE590;
  if (!qword_1EDBAE590)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDBAE590);
  }

  return result;
}

unint64_t sub_1D7EE5BC0()
{
  result = qword_1EDBB2BA8;
  if (!qword_1EDBB2BA8)
  {
    type metadata accessor for ShineImage();
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EDBB2BA8);
  }

  return result;
}

void sub_1D7EE5C18(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = OUTLINED_FUNCTION_35();
    sub_1D7EE5C70(v3, v4, v5, v6);
    v7 = sub_1D81925C4();
    if (!v8)
    {
      atomic_store(v7, v2);
    }
  }
}

void sub_1D7EE5C70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = (a4)(0, MEMORY[0x1E69E6530], a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D7EE5CC4(uint64_t a1)
{
  if (!qword_1ECA0CF80)
  {
    sub_1D7E1CBD8(255, &qword_1EDBB9550, qword_1EDBB9558, &protocol descriptor for ContextMenuGroupable, MEMORY[0x1E69E6720]);
    v1 = sub_1D81925C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA0CF80);
    }
  }
}

void sub_1D7EE5D48(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = OUTLINED_FUNCTION_35();
    v9 = v8(v7);
    v10 = a4(a1, v9);
    if (!v11)
    {
      atomic_store(v10, v4);
    }
  }
}

void sub_1D7EE5DC8(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = OUTLINED_FUNCTION_35();
    v4(v3);
    sub_1D7EE5D48(255, &qword_1EDBBC428, type metadata accessor for ImageCacheInterestToken, MEMORY[0x1E69D6A90]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, v2);
    }
  }
}

void sub_1D7EE5E68(uint64_t a1)
{
  if (!qword_1EDBB2CB0)
  {
    sub_1D7E069F0(255, &qword_1EDBB9898, &protocol descriptor for MotionTransformable, 0);
    v1 = sub_1D81925C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBB2CB0);
    }
  }
}

uint64_t sub_1D7EE5EF8(__n128 *a1, uint64_t a2)
{
  if (a1[1].n128_u64[1])
  {
    sub_1D7E895D8(a1, v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1D7EF5DEC(v18, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v17;
    v5 = sub_1D8192364();
    return (*(*(v5 - 8) + 8))(a2, v5);
  }

  else
  {
    sub_1D7E70CE0();
    sub_1D7F038EC(a2, v7, v8, v9, v10, v11, v12, v13, v15, v16);
    v14 = sub_1D8192364();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_1D7E70CE0();
  }
}

void sub_1D7EE606C()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  OUTLINED_FUNCTION_7_10();
  sub_1D7E188DC(0, v4);
  OUTLINED_FUNCTION_50(v5);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_127();
  type metadata accessor for JSONSchema(v7);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_119();
  if (__swift_getEnumTagSinglePayload(v3, 1, v9) == 1)
  {
    sub_1D7E70CE0();
    v10 = OUTLINED_FUNCTION_49();
    sub_1D7F039E0(v10, v11, v12);

    OUTLINED_FUNCTION_111();
    sub_1D7E70CE0();
  }

  else
  {
    sub_1D7EF6E5C();
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v0;
    v13 = OUTLINED_FUNCTION_118();
    sub_1D7EF63CC(v13, v14, v1, v15, v16, v17, v18, v19);

    *v0 = v20;
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D7EE6270()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  sub_1D7E188DC(0, qword_1EDBBAFE8);
  OUTLINED_FUNCTION_50(v4);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_127();
  type metadata accessor for PageViewSession(v6);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_119();
  if (__swift_getEnumTagSinglePayload(v3, 1, v8) == 1)
  {
    sub_1D7E70CE0();
    v9 = OUTLINED_FUNCTION_49();
    sub_1D7F03ECC(v9, v10, v11);

    OUTLINED_FUNCTION_111();
    sub_1D7E70CE0();
  }

  else
  {
    sub_1D7EF6E5C();
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v0;
    v12 = OUTLINED_FUNCTION_118();
    sub_1D7EF63CC(v12, v13, v1, v14, v15, v16, v17, v18);

    *v0 = v19;
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7EE6484()
{
  OUTLINED_FUNCTION_51_0();
  if (v1[1].n128_u64[1])
  {
    sub_1D7E176EC(v1, v11);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_39_0();
    sub_1D7EF6984(v2, v3, v4, v5);

    *v0 = v10;
  }

  else
  {
    OUTLINED_FUNCTION_82_0(v1);
    v7 = OUTLINED_FUNCTION_49();
    sub_1D7F042EC(v7, v8, v9);

    return OUTLINED_FUNCTION_82_0(v11);
  }

  return result;
}

void sub_1D7EE6530()
{
  OUTLINED_FUNCTION_104();
  v59 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v49 = v11;
  v62 = v7;
  v63 = v5;
  v64 = v3;
  v65 = v1;
  type metadata accessor for JSONSchema.LabeledValue.CodingKeys(255, &v62);
  OUTLINED_FUNCTION_56_1();
  WitnessTable = swift_getWitnessTable();
  sub_1D8192544();
  OUTLINED_FUNCTION_9();
  v52 = v13;
  v53 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_94();
  v60 = v15;
  OUTLINED_FUNCTION_52_0();
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v55 = v17;
  v56 = v16;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  v61 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_23();
  v50 = v22;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v47 - v24;
  v62 = v8;
  v63 = v6;
  v64 = v4;
  v65 = v2;
  v66 = type metadata accessor for JSONSchema.LabeledValue(0, &v62);
  OUTLINED_FUNCTION_9();
  v48 = v26;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_94();
  v54 = v28;
  v58 = v10;
  v29 = OUTLINED_FUNCTION_110();
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v31 = v59;
  sub_1D8192884();
  v51 = v6;
  if (v31)
  {

    v32 = v58;
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v8);
  }

  else
  {
    OUTLINED_FUNCTION_141(&v62, v65);
    OUTLINED_FUNCTION_160();
    sub_1D8192644();
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v62);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v8);
    v32 = v58;
    if (EnumTagSinglePayload != 1)
    {
      v37 = *(v61 + 32);
      v37(v25, v20, v8);
      v34 = v66;
      v38 = v54;
      v37(v54 + *(v66 + 52), v25, v8);
      v39 = 0;
      v40 = 0xE000000000000000;
      goto LABEL_14;
    }
  }

  (*(v55 + 8))(v20, v56);
  OUTLINED_FUNCTION_141(v32, v32[3]);
  sub_1D81928A4();
  LOBYTE(v62) = 1;
  v33 = v50;
  sub_1D8192524();
  v34 = v66;
  v35 = v61;
  (*(v61 + 16))(v54 + *(v66 + 52), v33, v8);
  LOBYTE(v62) = 0;
  v41 = sub_1D81924C4();
  if (v42)
  {
    v39 = v41;
  }

  else
  {
    v39 = 0;
  }

  v43 = v33;
  if (v42)
  {
    v40 = v42;
  }

  else
  {
    v40 = 0xE000000000000000;
  }

  (*(v35 + 8))(v43, v8);
  v44 = OUTLINED_FUNCTION_89();
  v45(v44);
  v38 = v54;
LABEL_14:
  *v38 = v39;
  v38[1] = v40;
  v46 = v48;
  (*(v48 + 16))(v49, v38, v34);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  (*(v46 + 8))(v38, v34);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1D7EE6A70(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (v10 || (v11 = sub_1D8192634(), v12 = 0, (v11 & 1) != 0))
  {
    v14[0] = a3;
    v14[1] = a4;
    v14[2] = a5;
    v14[3] = a6;
    type metadata accessor for JSONSchema.LabeledValue(0, v14);
    v12 = sub_1D8190ED4();
  }

  return v12 & 1;
}

uint64_t sub_1D7EE6B18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D8192634() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D8192634();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D7EE6BE4(char a1)
{
  sub_1D81927E4();
  MEMORY[0x1DA714A00](a1 & 1);
  return sub_1D8192824();
}

uint64_t sub_1D7EE6C38(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1D7EE6CA4(uint64_t a1)
{
  sub_1D81927E4();
  sub_1D7E39788(v3, *v1);
  return sub_1D8192824();
}

uint64_t sub_1D7EE6D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7EE6B18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7EE6D64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7EE6BDC();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EE6D98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D7EE6DEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void sub_1D7EE6E40()
{
  OUTLINED_FUNCTION_104();
  v1 = OUTLINED_FUNCTION_117();
  type metadata accessor for JSONSchema.LabeledValue.CodingKeys(v1, v2);
  OUTLINED_FUNCTION_56_1();
  swift_getWitnessTable();
  sub_1D8192584();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_141(v4, v5);
  sub_1D81928C4();
  sub_1D8192564();
  if (!v0)
  {
    sub_1D8192574();
  }

  v6 = OUTLINED_FUNCTION_53_0();
  v7(v6);
  OUTLINED_FUNCTION_154();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1D7EE7000(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D81924B4();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7EE7058(char a1)
{
  if (a1)
  {
    return 0x7465736572702D78;
  }

  else
  {
    return 1836412517;
  }
}

uint64_t sub_1D7EE708C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D7EE7100(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D7EE716C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D7EE71DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D7EE724C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D7EE7000(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D7EE727C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7EE7058(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D7EE72B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7EE7054(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7EE72D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D7EE732C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D7EE7380(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1D7F08E34(0, v2, 0);
    v3 = v16;
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = *(v16 + 16);
      v7 = *(v16 + 24);
      v9 = v8 + 1;
      sub_1D8190DB4();
      if (v8 >= v7 >> 1)
      {
        sub_1D7F08E34(v7 > 1, v8 + 1, 1);
      }

      *(v16 + 16) = v9;
      v10 = v16 + 16 * v8;
      *(v10 + 32) = v6;
      *(v10 + 40) = v5;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
    v9 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  v11 = *(sub_1D7E919E0(v3) + 16);

  if (v9 != v11)
  {
    sub_1D81921A4();

    sub_1D7EF52A8();
    v14 = MEMORY[0x1DA713540](a1, v13);
    MEMORY[0x1DA713260](v14);

    sub_1D7EF8D04();
    sub_1D7E2B754(&qword_1ECA0D3D8, sub_1D7EF8D04, &unk_1D81A0F14);
    swift_allocError();
    *v15 = 0xD00000000000002DLL;
    v15[1] = 0x80000001D81C5F70;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D7EE7548(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1D7F08E74(0, v2, 0);
    v3 = v14;
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v15 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      v8 = v7 + 1;
      if (v7 >= v6 >> 1)
      {
        sub_1D7F08E74(v6 > 1, v7 + 1, 1);
        v3 = v15;
      }

      *(v3 + 16) = v8;
      *(v3 + 8 * v7 + 32) = v5;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
    v8 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  v9 = *(sub_1D7F12D58(v3) + 16);

  if (v8 != v9)
  {
    sub_1D81921A4();

    sub_1D7EF89A8();
    v12 = MEMORY[0x1DA713540](a1, v11);
    MEMORY[0x1DA713260](v12);

    sub_1D7EF887C();
    sub_1D7E2B754(&qword_1ECA0D368, sub_1D7EF887C, &unk_1D81A0F14);
    swift_allocError();
    *v13 = 0xD00000000000002DLL;
    v13[1] = 0x80000001D81C5F70;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D7EE7704(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D7F08E94(0, v2, 0);
    v3 = v15;
    v4 = (a1 + 48);
    do
    {
      v6 = *v4;
      v4 += 3;
      v5 = v6;
      v16 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      v9 = v8 + 1;
      if (v8 >= v7 >> 1)
      {
        sub_1D7F08E94(v7 > 1, v8 + 1, 1);
        v3 = v16;
      }

      *(v3 + 16) = v9;
      *(v3 + 8 * v8 + 32) = v5;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
    v9 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  v10 = *(sub_1D7F12DE4(v3) + 16);

  if (v9 != v10)
  {
    sub_1D81921A4();

    sub_1D7EF8800();
    v13 = MEMORY[0x1DA713540](a1, v12);
    MEMORY[0x1DA713260](v13);

    sub_1D7EF86C0();
    sub_1D7E2B754(&qword_1ECA0D320, sub_1D7EF86C0, &unk_1D81A0F14);
    swift_allocError();
    *v14 = 0xD00000000000002DLL;
    v14[1] = 0x80000001D81C5F70;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D7EE78B4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v24 = a5;
  KeyPath = swift_getKeyPath();
  v9 = *(v24 + 8);
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = v9;
  type metadata accessor for JSONSchema.LabeledValue(255, &v30);
  v10 = sub_1D8191484();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1D7E6CDC0(sub_1D7EF6FF8, v23, v10, a2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v12);

  v14 = sub_1D8191414();
  v30 = v13;
  sub_1D8191484();
  OUTLINED_FUNCTION_18();
  swift_getWitnessTable();
  sub_1D81916D4();
  v15 = sub_1D8191664();

  if (v14 != v15)
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1D81921A4();
    MEMORY[0x1DA713260](0xD00000000000002DLL, 0x80000001D81C5F70);
    v34 = a1;
    swift_getWitnessTable();
    sub_1D8192604();
    v17 = v30;
    v18 = v31;
    v30 = a2;
    v31 = a3;
    v32 = a4;
    v33 = a5;
    v19 = type metadata accessor for JSONSchema.SuppliedValues.Errors(0, &v30);
    OUTLINED_FUNCTION_17_4();
    v20 = swift_getWitnessTable();
    OUTLINED_FUNCTION_121(v19, v20);
    *v21 = v17;
    v21[1] = v18;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D7EE7AF0(void *a1, uint64_t (*a2)(uint64_t *), uint64_t (*a3)(void))
{
  sub_1D7E0E768(a1, &v11);
  v7 = a2(&v11);
  if (v3)
  {
    v13 = v3;
    v8 = v3;
    v9 = sub_1D7E0631C(0, &qword_1EDBB2BC0, MEMORY[0x1E69E7280]);
    a3(0);
    if (swift_dynamicCast())
    {
      if (!v12)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);

        return 0;
      }

      sub_1D7EF873C(v11, v12);
    }

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v9 = v7;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v9;
}

uint64_t sub_1D7EE7C18(void *a1)
{
  sub_1D7EF8D80(0, &qword_1ECA0D3C0);
  v4 = *(v3 - 8);
  v26 = v3;
  v27 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_1D7EF8E0C();
  sub_1D7E2B754(&qword_1ECA0D3D0, sub_1D7EF8E0C, &unk_1D81A0F54);
  sub_1D81928A4();
  if (v1)
  {
    goto LABEL_4;
  }

  v25 = a1;
  sub_1D7EF5274(0);
  v28 = 0;
  sub_1D7EF8A24(&qword_1ECA0D380, sub_1D7EF5274);
  v8 = v26;
  sub_1D8192504();
  v10 = v29;
  if (v29)
  {
    sub_1D7EE7380(v29);
    v7 = 0x7465736572702D78;
    v24 = v6;
    v12 = sub_1D8192534();
    v13 = *(v12 + 16);
    v14 = (v12 + 32);
    while (1)
    {
      if (!v13)
      {
        v7 = v10;
        goto LABEL_15;
      }

      if (*v14 == 1)
      {
        break;
      }

      v15 = sub_1D8192634();

      ++v14;
      --v13;
      if (v15)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v28 = 1;
    sub_1D8192504();
    v7 = v29;
    v11 = v27;
    if (!v29)
    {
      sub_1D7EF8D04();
      sub_1D7E2B754(&qword_1ECA0D3D8, sub_1D7EF8D04, &unk_1D81A0F14);
      swift_allocError();
      *v18 = 0;
      v18[1] = 0;
      swift_willThrow();
      (*(v11 + 8))(v6, v8);
      goto LABEL_3;
    }

    sub_1D7EE7380(v29);
    v24 = v6;
    v19 = sub_1D8192534();
    v20 = *(v19 + 16);
    v21 = (v19 + 32);
    while (1)
    {
      if (!v20)
      {
LABEL_15:
        v16 = v25;

        (*(v27 + 8))(v24, v8);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        return v7;
      }

      if ((*v21 & 1) == 0)
      {
        break;
      }

      v22 = sub_1D8192634();

      ++v21;
      --v20;
      if (v22)
      {
        goto LABEL_17;
      }
    }

    v7 = v19;
  }

LABEL_17:

  sub_1D7EF8D04();
  sub_1D7E2B754(&qword_1ECA0D3D8, sub_1D7EF8D04, &unk_1D81A0F14);
  swift_allocError();
  *v17 = xmmword_1D819FAA0;
  swift_willThrow();
  (*(v27 + 8))(v24, v8);
LABEL_3:
  a1 = v25;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t sub_1D7EE815C(void *a1)
{
  sub_1D7EF8D80(0, &qword_1ECA0D330);
  v4 = *(v3 - 8);
  v26 = v3;
  v27 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_1D7EF88F8();
  sub_1D7E2B754(&qword_1ECA0D340, sub_1D7EF88F8, &unk_1D81A0F54);
  sub_1D81928A4();
  if (v1)
  {
    goto LABEL_4;
  }

  v25 = a1;
  sub_1D7EF8974(0);
  v28 = 0;
  sub_1D7EF8A24(&qword_1ECA0D358, sub_1D7EF8974);
  v8 = v26;
  sub_1D8192504();
  v10 = v29;
  if (v29)
  {
    sub_1D7EE7548(v29);
    v7 = 0x7465736572702D78;
    v24 = v6;
    v12 = sub_1D8192534();
    v13 = *(v12 + 16);
    v14 = (v12 + 32);
    while (1)
    {
      if (!v13)
      {
        v7 = v10;
        goto LABEL_15;
      }

      if (*v14 == 1)
      {
        break;
      }

      v15 = sub_1D8192634();

      ++v14;
      --v13;
      if (v15)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v28 = 1;
    sub_1D8192504();
    v7 = v29;
    v11 = v27;
    if (!v29)
    {
      sub_1D7EF887C();
      sub_1D7E2B754(&qword_1ECA0D368, sub_1D7EF887C, &unk_1D81A0F14);
      swift_allocError();
      *v18 = 0;
      v18[1] = 0;
      swift_willThrow();
      (*(v11 + 8))(v6, v8);
      goto LABEL_3;
    }

    sub_1D7EE7548(v29);
    v24 = v6;
    v19 = sub_1D8192534();
    v20 = *(v19 + 16);
    v21 = (v19 + 32);
    while (1)
    {
      if (!v20)
      {
LABEL_15:
        v16 = v25;

        (*(v27 + 8))(v24, v8);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        return v7;
      }

      if ((*v21 & 1) == 0)
      {
        break;
      }

      v22 = sub_1D8192634();

      ++v21;
      --v20;
      if (v22)
      {
        goto LABEL_17;
      }
    }

    v7 = v19;
  }

LABEL_17:

  sub_1D7EF887C();
  sub_1D7E2B754(&qword_1ECA0D368, sub_1D7EF887C, &unk_1D81A0F14);
  swift_allocError();
  *v17 = xmmword_1D819FAA0;
  swift_willThrow();
  (*(v27 + 8))(v24, v8);
LABEL_3:
  a1 = v25;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t sub_1D7EE86A0(void *a1)
{
  sub_1D7EF8D80(0, &qword_1ECA0D2E8);
  v4 = *(v3 - 8);
  v26 = v3;
  v27 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_1D7EF8750();
  sub_1D7E2B754(&qword_1ECA0D2F8, sub_1D7EF8750, &unk_1D81A0F54);
  sub_1D81928A4();
  if (v1)
  {
    goto LABEL_4;
  }

  v25 = a1;
  sub_1D7EF87CC(0);
  v28 = 0;
  sub_1D7EF8A24(&qword_1ECA0D310, sub_1D7EF87CC);
  v8 = v26;
  sub_1D8192504();
  v10 = v29;
  if (v29)
  {
    sub_1D7EE7704(v29);
    v7 = 0x7465736572702D78;
    v24 = v6;
    v12 = sub_1D8192534();
    v13 = *(v12 + 16);
    v14 = (v12 + 32);
    while (1)
    {
      if (!v13)
      {
        v7 = v10;
        goto LABEL_15;
      }

      if (*v14 == 1)
      {
        break;
      }

      v15 = sub_1D8192634();

      ++v14;
      --v13;
      if (v15)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v28 = 1;
    sub_1D8192504();
    v7 = v29;
    v11 = v27;
    if (!v29)
    {
      sub_1D7EF86C0();
      sub_1D7E2B754(&qword_1ECA0D320, sub_1D7EF86C0, &unk_1D81A0F14);
      swift_allocError();
      *v18 = 0;
      v18[1] = 0;
      swift_willThrow();
      (*(v11 + 8))(v6, v8);
      goto LABEL_3;
    }

    sub_1D7EE7704(v29);
    v24 = v6;
    v19 = sub_1D8192534();
    v20 = *(v19 + 16);
    v21 = (v19 + 32);
    while (1)
    {
      if (!v20)
      {
LABEL_15:
        v16 = v25;

        (*(v27 + 8))(v24, v8);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        return v7;
      }

      if ((*v21 & 1) == 0)
      {
        break;
      }

      v22 = sub_1D8192634();

      ++v21;
      --v20;
      if (v22)
      {
        goto LABEL_17;
      }
    }

    v7 = v19;
  }

LABEL_17:

  sub_1D7EF86C0();
  sub_1D7E2B754(&qword_1ECA0D320, sub_1D7EF86C0, &unk_1D81A0F14);
  swift_allocError();
  *v17 = xmmword_1D819FAA0;
  swift_willThrow();
  (*(v27 + 8))(v24, v8);
LABEL_3:
  a1 = v25;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

void sub_1D7EE8BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  v22 = v21;
  v48 = v23;
  v49 = v24;
  v51 = v23;
  v52 = v24;
  v50 = v25;
  v53 = v25;
  v54 = v26;
  v47 = v26;
  v27 = OUTLINED_FUNCTION_117();
  v29 = type metadata accessor for JSONSchema.SuppliedValues.CodingKeys(v27, v28);
  OUTLINED_FUNCTION_65_0(v29);
  OUTLINED_FUNCTION_113();
  v30 = sub_1D8192544();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v31);
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  OUTLINED_FUNCTION_160();
  sub_1D81928A4();
  if (v20)
  {
    goto LABEL_11;
  }

  v32 = *(v47 + 8);
  v51 = v48;
  v52 = v49;
  v53 = v50;
  v54 = v32;
  v33 = OUTLINED_FUNCTION_117();
  type metadata accessor for JSONSchema.LabeledValue(v33, v34);
  OUTLINED_FUNCTION_113();
  sub_1D8191484();
  LOBYTE(v51) = 0;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_62_1();
  swift_getWitnessTable();
  sub_1D8192504();
  if (a10)
  {
    OUTLINED_FUNCTION_171(a10);
    v51 = sub_1D8192534();
    sub_1D8191484();
    OUTLINED_FUNCTION_18();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_73_0();
    OUTLINED_FUNCTION_146();
    v35 = sub_1D8191254();

    if (v35)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1D8192504();
    if (!v51)
    {
      v51 = v48;
      v52 = v49;
      v53 = v50;
      v54 = v47;
      v41 = type metadata accessor for JSONSchema.SuppliedValues.Errors(0, &v51);
      OUTLINED_FUNCTION_17_4();
      WitnessTable = swift_getWitnessTable();
      OUTLINED_FUNCTION_121(v41, WitnessTable);
      *v43 = 0;
      v43[1] = 0;
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_171(v51);
    v51 = sub_1D8192534();
    sub_1D8191484();
    OUTLINED_FUNCTION_18();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_73_0();
    OUTLINED_FUNCTION_146();
    v46 = sub_1D8191254();

    if (v46)
    {
LABEL_7:

      v51 = v48;
      v52 = v49;
      v53 = v50;
      v54 = v47;
      v36 = type metadata accessor for JSONSchema.SuppliedValues.Errors(0, &v51);
      OUTLINED_FUNCTION_17_4();
      v37 = swift_getWitnessTable();
      OUTLINED_FUNCTION_121(v36, v37);
      *v38 = xmmword_1D819FAA0;
LABEL_10:
      swift_willThrow();
      v44 = OUTLINED_FUNCTION_106();
      v45(v44, v30);
LABEL_11:
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      goto LABEL_12;
    }
  }

  v39 = OUTLINED_FUNCTION_106();
  v40(v39, v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
LABEL_12:
  OUTLINED_FUNCTION_154();
  OUTLINED_FUNCTION_105();
}

void sub_1D7EE8FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  v21 = OUTLINED_FUNCTION_117();
  v23 = type metadata accessor for JSONSchema.SuppliedValues.CodingKeys(v21, v22);
  OUTLINED_FUNCTION_65_0(v23);
  sub_1D8192584();
  OUTLINED_FUNCTION_9();
  v31 = v25;
  v32 = v24;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_119();
  v27 = OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_141(v27, v28);
  OUTLINED_FUNCTION_160();
  sub_1D81928C4();
  v29 = OUTLINED_FUNCTION_117();
  type metadata accessor for JSONSchema.LabeledValue(v29, v30);
  OUTLINED_FUNCTION_76_0();
  sub_1D8191484();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_61_1();
  swift_getWitnessTable();
  sub_1D8192574();
  (*(v31 + 8))(v20, v32);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1D7EE91BC(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    return v9 & 1;
  }

  if ((a4 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = *(a8 + 8);
  v11[0] = a5;
  v11[1] = a6;
  v11[2] = a7;
  v11[3] = v8;
  type metadata accessor for JSONSchema.LabeledValue(0, v11);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_112();
  v9 = sub_1D8191494();
  return v9 & 1;
}

uint64_t sub_1D7EE9250(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      if (!a4)
      {
        return OUTLINED_FUNCTION_0_0();
      }

      return OUTLINED_FUNCTION_0_2();
    case 1:
      if (a4 == 1)
      {
        return OUTLINED_FUNCTION_0_0();
      }

      return OUTLINED_FUNCTION_0_2();
    case 2:
      if (a4 == 2)
      {
        return OUTLINED_FUNCTION_0_0();
      }

      return OUTLINED_FUNCTION_0_2();
  }

  if (a4 < 3)
  {
    return OUTLINED_FUNCTION_0_2();
  }

  if (a1 != a3 || a2 != a4)
  {
    return OUTLINED_FUNCTION_103(a1, a2, a3, a4);
  }

  return OUTLINED_FUNCTION_0_0();
}

void JSONSchema.init(jsonSchemaURL:defaultValue:)()
{
  OUTLINED_FUNCTION_104();
  v144 = v1;
  v3 = v2;
  v130 = v4;
  v133 = type metadata accessor for JSONSchema(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_38_0(v121 - v7);
  sub_1D8192364();
  OUTLINED_FUNCTION_9();
  v134 = v9;
  v135 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_2();
  v137 = v10;
  OUTLINED_FUNCTION_2_17();
  sub_1D7E188DC(0, v11);
  OUTLINED_FUNCTION_50(v12);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_94();
  v139 = v14;
  OUTLINED_FUNCTION_52_0();
  v143 = sub_1D818F824();
  OUTLINED_FUNCTION_9();
  v140 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v18);
  v136 = v121 - v19;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  v142 = v121 - v21;
  OUTLINED_FUNCTION_52_0();
  v129 = sub_1D8190F74();
  OUTLINED_FUNCTION_9();
  v128 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_2();
  v141 = v24;
  if (qword_1ECA0C288 != -1)
  {
    swift_once();
  }

  v25 = qword_1ECA2C530;
  sub_1D7EBB3F4(0, &qword_1EDBBE100);
  v27 = v26;
  v28 = OUTLINED_FUNCTION_174(v26);
  v138 = xmmword_1D819FAB0;
  *(v28 + 16) = xmmword_1D819FAB0;
  v29 = sub_1D818E644();
  sub_1D7E2B754(&unk_1ECA0CFE8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v30 = sub_1D81925B4();
  v148 = v3;
  v32 = v31;
  v33 = MEMORY[0x1E69E6158];
  *(v28 + 56) = MEMORY[0x1E69E6158];
  v34 = sub_1D7E13BF4();
  *(v28 + 64) = v34;
  *(v28 + 32) = v30;
  *(v28 + 40) = v32;
  v35 = sub_1D81919E4();
  sub_1D818FD44("Initializing JSONSchema with URL %{public}@", 43, 2, &dword_1D7DFF000, v25, v35, v28);

  v36 = sub_1D818E654();
  if (v0)
  {
    OUTLINED_FUNCTION_2_17();
    sub_1D7E70CE0();
    (*(*(v29 - 8) + 8))(v148, v29);
LABEL_27:
    OUTLINED_FUNCTION_154();
    OUTLINED_FUNCTION_105();
    return;
  }

  v38 = v37;
  v125 = 0;
  v126 = v29;
  v39 = v36;
  v122 = v27;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1D819FAC0;
  OUTLINED_FUNCTION_118();
  v41 = sub_1D818E664();
  *(v40 + 56) = v33;
  *(v40 + 64) = v34;
  *(v40 + 32) = v41;
  *(v40 + 40) = v42;
  sub_1D8190F64();
  OUTLINED_FUNCTION_118();
  v43 = sub_1D8190F34();
  *(v40 + 96) = v33;
  *(v40 + 104) = v34;
  v123 = v34;
  v45 = 0x80000001D81C5DE0;
  if (v44)
  {
    v46 = v43;
  }

  else
  {
    v46 = 0xD000000000000010;
  }

  if (v44)
  {
    v45 = v44;
  }

  *(v40 + 72) = v46;
  *(v40 + 80) = v45;
  v47 = sub_1D81919E4();
  sub_1D818FD44("JSONSchema initializing with data %{public}@. Decoded: %{public}@", 65, 2, &dword_1D7DFF000, v25, v47, v40);

  v48 = v139;
  sub_1D7EF4C4C(v144, v139);
  v49 = v143;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v48, 1, v143);
  v124 = v39;
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_163();
    OUTLINED_FUNCTION_2_17();
    sub_1D7E70CE0();
    sub_1D818E344();
    OUTLINED_FUNCTION_91_1();
    swift_allocObject();
    sub_1D818E334();
    if (qword_1ECA0C240 != -1)
    {
      OUTLINED_FUNCTION_35_3(&qword_1ECA0C240);
    }

    v51 = v135;
    v52 = __swift_project_value_buffer(v135, qword_1ECA0CFB0);
    v53 = *(v134 + 16);
    v54 = v137;
    v53(v137, v52, v51);
    OUTLINED_FUNCTION_173();
    sub_1D818E5E4();
    sub_1D818E324();
    OUTLINED_FUNCTION_67_0();
    v55 = OUTLINED_FUNCTION_147();
    v38(v55);
    v56 = v125;
    if (qword_1ECA0C248 != -1)
    {
      OUTLINED_FUNCTION_34_2(&qword_1ECA0C248);
    }

    v57 = __swift_project_value_buffer(v51, qword_1ECA0CFC8);
    v53(v54, v57, v51);
    v147 = sub_1D818E794();
    __swift_allocate_boxed_opaque_existential_0(&v145);
    sub_1D818E784();
    sub_1D818E324();
    OUTLINED_FUNCTION_67_0();
    v58 = OUTLINED_FUNCTION_147();
    v38(v58);
    OUTLINED_FUNCTION_54();
    sub_1D7E2B754(v59, v60, &protocol conformance descriptor for JSONSchema);
    sub_1D818E314();
    if (v56)
    {
      v61 = sub_1D81919C4();
      v62 = OUTLINED_FUNCTION_174(v122);
      OUTLINED_FUNCTION_138(v62);
      sub_1D7E0631C(0, &qword_1EDBB2BC0, MEMORY[0x1E69E7280]);
      sub_1D8192334();
      v63 = v145;
      v64 = v146;
      v65 = v123;
      v62[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v62[4].n128_u64[0] = v65;
      v62[2].n128_u64[0] = v63;
      v62[2].n128_u64[1] = v64;
      sub_1D818FD44("Failed to decode JSON from data %{public}@", 42, 2, &dword_1D7DFF000, v121[1], v61, v62);

      swift_willThrow();
      v66 = OUTLINED_FUNCTION_131();
      sub_1D7EF4CE0(v66, v67);

      OUTLINED_FUNCTION_2_17();
      sub_1D7E70CE0();
      OUTLINED_FUNCTION_36_1();
      (*(v68 + 8))(v148, v69);
      goto LABEL_27;
    }

    v76 = OUTLINED_FUNCTION_131();
    sub_1D7EF4CE0(v76, v77);

    OUTLINED_FUNCTION_2_17();
    sub_1D7E70CE0();
    OUTLINED_FUNCTION_36_1();
    (*(v78 + 8))(v148);
LABEL_28:
    OUTLINED_FUNCTION_21_2();
    sub_1D7EF6E5C();
    goto LABEL_27;
  }

  v70 = v140;
  (*(v140 + 32))(v142, v48, v49);
  sub_1D818E344();
  OUTLINED_FUNCTION_91_1();
  swift_allocObject();
  sub_1D818E334();
  OUTLINED_FUNCTION_8_11();
  sub_1D7E2B754(v71, v72, MEMORY[0x1E69D6A70]);
  v73 = v125;
  sub_1D818E314();
  if (v73)
  {

    v74 = v123;
    v75 = v122;
    v110 = v142;
    v111 = sub_1D81919C4();
    v112 = OUTLINED_FUNCTION_174(v75);
    OUTLINED_FUNCTION_138(v112);
    sub_1D7E0631C(0, &qword_1EDBB2BC0, MEMORY[0x1E69E7280]);
    sub_1D8192334();
    v113 = v145;
    v114 = v146;
    v112[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v112[4].n128_u64[0] = v74;
    v112[2].n128_u64[0] = v113;
    v112[2].n128_u64[1] = v114;
    sub_1D818FD44("Failed to decode JSON from data with default value %{public}@", 61, 2, &dword_1D7DFF000, v25, v111, v112);

    swift_willThrow();
    sub_1D7EF4CE0(v124, v38);
    OUTLINED_FUNCTION_2_17();
    sub_1D7E70CE0();
    OUTLINED_FUNCTION_36_1();
    (*(v115 + 8))(v148);
    (*(v140 + 8))(v110, v49);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_163();

  v79 = *(v70 + 16);
  v80 = v127;
  v81 = OUTLINED_FUNCTION_112();
  v79(v81);
  v82 = OUTLINED_FUNCTION_137();
  v84 = v83(v82);
  v85 = *MEMORY[0x1E69D6A48];
  LODWORD(v132) = v84;
  if (v84 == v85)
  {
    v86 = OUTLINED_FUNCTION_137();
    v87(v86);
    v88 = *(*v80 + 16);
    sub_1D8190DB4();

    v89 = v131;
    (v79)(v131, v142, v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v145 = v88;
    sub_1D7EF4D38(v89, 0x746C7561666564, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v91 = v145;
    swift_allocObject();
    v92 = sub_1D818E334();
    v93 = v137;
    v94 = v135;
    if (qword_1ECA0C240 != -1)
    {
      OUTLINED_FUNCTION_35_3(&qword_1ECA0C240);
    }

    v95 = __swift_project_value_buffer(v94, qword_1ECA0CFB0);
    v96 = *(v134 + 16);
    v96(v93, v95, v94);
    OUTLINED_FUNCTION_173();
    sub_1D818E5E4();
    sub_1D818E324();
    v139 = v92;
    OUTLINED_FUNCTION_67_0();
    v97 = OUTLINED_FUNCTION_147();
    v92(v97);
    if (qword_1ECA0C248 != -1)
    {
      OUTLINED_FUNCTION_34_2(&qword_1ECA0C248);
    }

    v98 = __swift_project_value_buffer(v94, qword_1ECA0CFC8);
    v96(v93, v98, v94);
    v147 = sub_1D818E794();
    __swift_allocate_boxed_opaque_existential_0(&v145);
    sub_1D818E784();
    sub_1D818E324();
    OUTLINED_FUNCTION_67_0();
    v99 = OUTLINED_FUNCTION_147();
    v92(v99);
    v100 = swift_allocObject();
    *(v100 + 16) = v91;
    v101 = v131;
    *v131 = v100;
    v102 = v140;
    v103 = v143;
    (*(v140 + 104))(v101, v132, v143);
    sub_1D8190DB4();
    sub_1D818F7F4();
    v137 = *(v102 + 8);
    v137(v101, v103);
    sub_1D8190F64();
    sub_1D8190F24();
    v105 = v104;

    OUTLINED_FUNCTION_136();
    v106();
    if (v105 >> 60 != 15)
    {
      OUTLINED_FUNCTION_54();
      sub_1D7E2B754(v107, v108, &protocol conformance descriptor for JSONSchema);
      sub_1D818E314();
      v109 = OUTLINED_FUNCTION_53_0();
      sub_1D7EF4ED0(v109, v116);

      sub_1D7EF4CE0(v124, v121[2]);
      OUTLINED_FUNCTION_2_17();
      sub_1D7E70CE0();
      OUTLINED_FUNCTION_36_1();
      (*(v117 + 8))(v148);

      v118 = v137;
      v137(v136, v103);
      v118(v142, v103);
      goto LABEL_28;
    }

    __break(1u);
  }

  v119 = OUTLINED_FUNCTION_137();
  v120(v119);
  OUTLINED_FUNCTION_166();
  v121[0] = 146;
  sub_1D81923A4();
  __break(1u);
}

void sub_1D7EEA35C()
{
  OUTLINED_FUNCTION_104();
  v231 = v2;
  v232 = v6;
  v7 = type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject(0);
  v8 = OUTLINED_FUNCTION_50(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_2();
  v228 = v9;
  OUTLINED_FUNCTION_7_10();
  sub_1D7E188DC(0, v10);
  OUTLINED_FUNCTION_50(v11);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_94();
  v225 = v13;
  OUTLINED_FUNCTION_5_3();
  sub_1D7EF803C(0, v14);
  v230 = v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_23();
  v227 = v17;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v226 = v221 - v19;
  v20 = OUTLINED_FUNCTION_52_0();
  v221[2] = type metadata accessor for JSONSchema.SchemaType.ObjectType(v20);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_2();
  v222 = v22;
  v23 = OUTLINED_FUNCTION_52_0();
  v24 = type metadata accessor for JSONSchema.SchemaType.ObjectSchema(v23);
  v25 = OUTLINED_FUNCTION_50(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_2();
  v229 = v26;
  v27 = OUTLINED_FUNCTION_52_0();
  v224 = type metadata accessor for JSONSchema(v27);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_23();
  v223 = v29;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_149();
  sub_1D818F824();
  OUTLINED_FUNCTION_9();
  v233 = v32;
  v234 = v31;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_125();
  MEMORY[0x1EEE9AC00](v33);
  v35 = v221 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = v221 - v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_124_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_165();
  MEMORY[0x1EEE9AC00](v41);
  v43 = v221 - v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_123_1();
  v45 = type metadata accessor for JSONSchema.SchemaType.ArraySchema(0);
  v46 = OUTLINED_FUNCTION_50(v45);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_2();
  v48 = MEMORY[0x1E69D6A40];
  switch(*(v1 + 80) >> 61)
  {
    case 1:
      v66 = v233;
      v65 = v234;
      v67 = *(v233 + 104);
      v67(v0, *MEMORY[0x1E69D6A28], v234);
      OUTLINED_FUNCTION_130();
      v68 = sub_1D818F804();
      v69 = *(v66 + 8);
      v69(v0, v65);
      if (v68)
      {
        goto LABEL_137;
      }

      v67(v0, *MEMORY[0x1E69D6A38], v65);
      OUTLINED_FUNCTION_130();
      sub_1D818F804();
      v70 = OUTLINED_FUNCTION_161();
      v69(v70, v65);
      OUTLINED_FUNCTION_33_2();
      sub_1D81921A4();
      OUTLINED_FUNCTION_107_0();
      OUTLINED_FUNCTION_47_0();
      v73 = v72 - 2;
      goto LABEL_135;
    case 2:
      (*(v233 + 16))(v3, v232, v234);
      v74 = OUTLINED_FUNCTION_68();
      if (v75(v74) != *v48)
      {
        v122 = OUTLINED_FUNCTION_68();
        v123(v122);
        goto LABEL_134;
      }

      v76 = OUTLINED_FUNCTION_68();
      v77(v76);
      v78 = *(*v3 + 16);
      v79 = *(*v3 + 24);
      sub_1D8190DB4();

      v80 = HIBYTE(v79) & 0xF;
      v81 = v78 & 0xFFFFFFFFFFFFLL;
      if ((v79 & 0x2000000000000000) != 0)
      {
        v82 = HIBYTE(v79) & 0xF;
      }

      else
      {
        v82 = v78 & 0xFFFFFFFFFFFFLL;
      }

      if (!v82)
      {
        goto LABEL_147;
      }

      if ((v79 & 0x1000000000000000) != 0)
      {
        v218 = OUTLINED_FUNCTION_109();
        sub_1D7EF74A8(v218, v219, 10);
        v206 = v220;
        goto LABEL_133;
      }

      if ((v79 & 0x2000000000000000) != 0)
      {
        v235 = v78;
        v236 = v79 & 0xFFFFFFFFFFFFFFLL;
        if (v78 == 43)
        {
          if (v80)
          {
            if (v80 != 1)
            {
              OUTLINED_FUNCTION_148();
              while (1)
              {
                OUTLINED_FUNCTION_45();
                if (!v86 & v85)
                {
                  break;
                }

                OUTLINED_FUNCTION_32_1();
                if (!v86 || __OFADD__(v197, v198))
                {
                  break;
                }

                OUTLINED_FUNCTION_129_0();
                if (v86)
                {
                  goto LABEL_132;
                }
              }
            }

            goto LABEL_131;
          }

LABEL_153:
          __break(1u);
          return;
        }

        if (v78 != 45)
        {
          if (v80)
          {
            while (1)
            {
              OUTLINED_FUNCTION_45();
              if (!v86 & v85)
              {
                break;
              }

              OUTLINED_FUNCTION_32_1();
              if (!v86 || __OFADD__(v204, v205))
              {
                break;
              }

              OUTLINED_FUNCTION_129_0();
              if (v86)
              {
                goto LABEL_132;
              }
            }
          }

          goto LABEL_131;
        }

        if (v80)
        {
          if (v80 != 1)
          {
            OUTLINED_FUNCTION_148();
            while (1)
            {
              OUTLINED_FUNCTION_45();
              if (!v86 & v85)
              {
                break;
              }

              OUTLINED_FUNCTION_32_1();
              if (!v86 || __OFSUB__(v163, v164))
              {
                break;
              }

              OUTLINED_FUNCTION_129_0();
              if (v86)
              {
                goto LABEL_132;
              }
            }
          }

          goto LABEL_131;
        }

        goto LABEL_151;
      }

      if ((v78 & 0x1000000000000000) != 0)
      {
        v83 = ((v79 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        OUTLINED_FUNCTION_109();
        v83 = sub_1D8192254();
      }

      v84 = *v83;
      if (v84 == 43)
      {
        if (v81 < 1)
        {
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        if (v81 != 1)
        {
          if (v83)
          {
            while (1)
            {
              OUTLINED_FUNCTION_45();
              if (!v86 & v85)
              {
                goto LABEL_131;
              }

              OUTLINED_FUNCTION_32_1();
              if (!v86 || __OFADD__(v195, v196))
              {
                goto LABEL_131;
              }

              OUTLINED_FUNCTION_129_0();
              if (v86)
              {
                goto LABEL_132;
              }
            }
          }

          goto LABEL_122;
        }

LABEL_131:
        v89 = 1;
        goto LABEL_132;
      }

      if (v84 != 45)
      {
        if (v81)
        {
          if (v83)
          {
            v199 = 0;
            while (1)
            {
              v200 = *v83 - 48;
              if (v200 > 9)
              {
                goto LABEL_131;
              }

              v201 = (v199 * 10) >> 64;
              v202 = 10 * v199;
              if (v201 != v202 >> 63)
              {
                goto LABEL_131;
              }

              v203 = __OFADD__(v202, v200);
              v199 = v202 + v200;
              if (v203)
              {
                goto LABEL_131;
              }

              ++v83;
              if (!--v81)
              {
                goto LABEL_122;
              }
            }
          }

          goto LABEL_122;
        }

        goto LABEL_131;
      }

      if (v81 < 1)
      {
        __break(1u);
LABEL_151:
        __break(1u);
        goto LABEL_152;
      }

      if (v81 == 1)
      {
        goto LABEL_131;
      }

      if (v83)
      {
        while (1)
        {
          OUTLINED_FUNCTION_45();
          if (!v86 & v85)
          {
            goto LABEL_131;
          }

          OUTLINED_FUNCTION_32_1();
          if (!v86 || __OFSUB__(v87, v88))
          {
            goto LABEL_131;
          }

          OUTLINED_FUNCTION_129_0();
          if (v86)
          {
            goto LABEL_132;
          }
        }
      }

LABEL_122:
      v89 = 0;
LABEL_132:
      LOBYTE(v238) = v89;
      v206 = v89;
LABEL_133:

      if ((v206 & 1) == 0)
      {
        goto LABEL_137;
      }

LABEL_134:
      OUTLINED_FUNCTION_33_2();
      sub_1D81921A4();
      OUTLINED_FUNCTION_107_0();
      OUTLINED_FUNCTION_47_0();
      v73 = v207 - 1;
LABEL_135:
      MEMORY[0x1DA713260](v73, v71 | 0x8000000000000000);
      OUTLINED_FUNCTION_8_11();
      sub_1D7E2B754(v208, v209, MEMORY[0x1E69D6A78]);
      v210 = sub_1D81925B4();
      MEMORY[0x1DA713260](v210);

      v211 = sub_1D7EF4F68();
      v212 = OUTLINED_FUNCTION_121(&type metadata for JSONSchema.Errors, v211);
      OUTLINED_FUNCTION_116(v212, v213);
LABEL_137:
      OUTLINED_FUNCTION_105();
      return;
    case 3:
      v60 = v233;
      v61 = v234;
      (*(v233 + 16))(v38, v232, v234);
      if ((*(v60 + 88))(v38, v61) == *v48)
      {
        (*(v60 + 96))(v38, v61);
        sub_1D8190DB4();

        v62 = OUTLINED_FUNCTION_109();
        sub_1D7EEB700(v62, v63);
        if ((v64 & 1) == 0)
        {
          goto LABEL_137;
        }
      }

      else
      {
        (*(v60 + 8))(v38, v61);
      }

      OUTLINED_FUNCTION_33_2();
      sub_1D81921A4();
      OUTLINED_FUNCTION_107_0();
      OUTLINED_FUNCTION_47_0();
      v73 = v121 - 3;
      goto LABEL_135;
    case 4:
      swift_projectBox();
      OUTLINED_FUNCTION_22_3();
      sub_1D7E2B814();
      v221[0] = *(v233 + 16);
      v221[1] = v233 + 16;
      (v221[0])(v4, v232, v234);
      v94 = OUTLINED_FUNCTION_90_0();
      if (v95(v94) != *MEMORY[0x1E69D6A48])
      {
        v132 = OUTLINED_FUNCTION_90_0();
        v133(v132);
        OUTLINED_FUNCTION_33_2();
        sub_1D81921A4();
        OUTLINED_FUNCTION_107_0();
        OUTLINED_FUNCTION_167();
        OUTLINED_FUNCTION_8_11();
        sub_1D7E2B754(v134, v135, MEMORY[0x1E69D6A78]);
        v136 = sub_1D81925B4();
        MEMORY[0x1DA713260](v136);

        v137 = sub_1D7EF4F68();
        v138 = OUTLINED_FUNCTION_121(&type metadata for JSONSchema.Errors, v137);
        OUTLINED_FUNCTION_116(v138, v139);
        OUTLINED_FUNCTION_0_3();
        goto LABEL_92;
      }

      v96 = OUTLINED_FUNCTION_90_0();
      v97(v96);
      v98 = *(*v4 + 16);
      sub_1D8190DB4();

      OUTLINED_FUNCTION_12_6();
      v99 = v222;
      sub_1D7E2B814();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v232 = v98;
      if (EnumCaseMultiPayload != 1)
      {
        v140 = *v99;
        v141 = v99[1];
        v222 = v99[2];
        v142 = v140 + 64;
        OUTLINED_FUNCTION_24();
        v145 = v144 & v143;
        v147 = (v146 + 63) >> 6;
        v148 = sub_1D8190DB4();
        v149 = 0;
        v227 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v150 = v149;
          if (v145)
          {
            break;
          }

          while (1)
          {
            do
            {
              v149 = v150 + 1;
              if (__OFADD__(v150, 1))
              {
                __break(1u);
LABEL_144:
                __break(1u);
LABEL_145:
                __break(1u);
LABEL_146:
                __break(1u);
LABEL_147:

                goto LABEL_134;
              }

              if (v149 >= v147)
              {
                v228 = v148;

                v240 = sub_1D7E919E0(v227);
                v165 = v232;
                v166 = v232 + 64;
                OUTLINED_FUNCTION_24();
                v169 = v168 & v167;
                v171 = (v170 + 63) >> 6;
                sub_1D8190DB4();
                v172 = 0;
                v227 = v141;
                if (!v169)
                {
                  goto LABEL_83;
                }

                while (1)
                {
                  v173 = v172;
LABEL_86:
                  v174 = (*(v165 + 48) + 16 * (__clz(__rbit64(v169)) | (v173 << 6)));
                  v176 = *v174;
                  v175 = v174[1];
                  OUTLINED_FUNCTION_162();
                  v178 = v226;
                  (v221[0])(&v226[*(v177 + 48)]);
                  *v178 = v176;
                  v178[1] = v175;
                  sub_1D8190DB4();
                  v179 = v225;
                  v180 = OUTLINED_FUNCTION_110();
                  sub_1D7EDF2C0(v180, v181, v228);
                  if (__swift_getEnumTagSinglePayload(v179, 1, v224) == 1)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_21_2();
                  sub_1D7EF6E5C();
                  v182 = v231;
                  sub_1D7EEA35C();
                  v231 = v182;
                  if (v182)
                  {
                    OUTLINED_FUNCTION_3_20();
                    sub_1D7E2BA7C();
                    goto LABEL_141;
                  }

                  v169 &= v169 - 1;
                  v183 = OUTLINED_FUNCTION_110();
                  sub_1D800C0EC(v183, v184);

                  OUTLINED_FUNCTION_3_20();
                  sub_1D7E2BA7C();
                  OUTLINED_FUNCTION_5_3();
                  sub_1D7EF80A0();
                  v172 = v173;
                  v165 = v232;
                  if (!v169)
                  {
                    while (1)
                    {
LABEL_83:
                      v173 = v172 + 1;
                      if (__OFADD__(v172, 1))
                      {
                        goto LABEL_146;
                      }

                      if (v173 >= v171)
                      {
                        break;
                      }

                      v169 = *(v166 + 8 * v173);
                      ++v172;
                      if (v169)
                      {
                        goto LABEL_86;
                      }
                    }

                    if (!*(v240 + 16))
                    {
                      OUTLINED_FUNCTION_0_3();
                      sub_1D7E2BA7C();

                      goto LABEL_137;
                    }

                    v235 = 0xD000000000000020;
                    v236 = 0x80000001D81C6120;
                    OUTLINED_FUNCTION_134();
                    v187 = sub_1D8191624();
                    MEMORY[0x1DA713260](v187);

                    MEMORY[0x1DA713260](0x656A626F206E6920, 0xEB00000000207463);
                    OUTLINED_FUNCTION_53_0();
                    v188 = sub_1D8190D64();
                    v190 = v189;

                    MEMORY[0x1DA713260](v188, v190);

                    v191 = v235;
                    v192 = v236;
                    v193 = sub_1D7EF4F68();
                    OUTLINED_FUNCTION_121(&type metadata for JSONSchema.Errors, v193);
                    *v194 = v191;
                    v194[1] = v192;
                    swift_willThrow();
                    OUTLINED_FUNCTION_0_3();
                    sub_1D7E2BA7C();
LABEL_142:

                    goto LABEL_137;
                  }
                }

                OUTLINED_FUNCTION_7_10();
                sub_1D7E70CE0();
                OUTLINED_FUNCTION_33_2();
                sub_1D81921A4();
                v238 = v235;
                v239 = v236;
                MEMORY[0x1DA713260](0xD000000000000015, 0x80000001D81C60E0);
                v214 = OUTLINED_FUNCTION_110();
                MEMORY[0x1DA713260](v214);
                MEMORY[0x1DA713260](0xD00000000000001BLL, 0x80000001D81C6100);
                v235 = v228;
                v236 = v227;
                v237 = v222;
                sub_1D8192334();
                v215 = sub_1D7EF4F68();
                v216 = OUTLINED_FUNCTION_121(&type metadata for JSONSchema.Errors, v215);
                OUTLINED_FUNCTION_116(v216, v217);
LABEL_141:

                OUTLINED_FUNCTION_5_3();
                sub_1D7EF80A0();
                OUTLINED_FUNCTION_0_3();
                sub_1D7E2BA7C();

                goto LABEL_142;
              }

              v145 = *(v142 + 8 * v149);
              ++v150;
            }

            while (!v145);
LABEL_61:
            v151 = v148;
            v152 = (*(v148 + 48) + ((v149 << 10) | (16 * __clz(__rbit64(v145)))));
            v154 = *v152;
            v153 = v152[1];
            v145 &= v145 - 1;
            v235 = *v152;
            v236 = v153;
            MEMORY[0x1EEE9AC00](v148);
            v221[-2] = &v235;
            sub_1D8190DB4();
            v155 = v231;
            v156 = sub_1D7F8F0B0();
            v231 = v155;
            if (v156)
            {
              break;
            }

            v150 = v149;
            v148 = v151;
            if (v145)
            {
              goto LABEL_57;
            }
          }

          v157 = v227;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v238 = v157;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D7F08E34(0, *(v157 + 16) + 1, 1);
            v157 = v238;
          }

          v160 = *(v157 + 16);
          v159 = *(v157 + 24);
          v161 = v160 + 1;
          if (v160 >= v159 >> 1)
          {
            v227 = *(v157 + 16);
            v228 = v160 + 1;
            sub_1D7F08E34(v159 > 1, v160 + 1, 1);
            v160 = v227;
            v161 = v228;
            v157 = v238;
          }

          *(v157 + 16) = v161;
          v227 = v157;
          v162 = v157 + 16 * v160;
          *(v162 + 32) = v154;
          *(v162 + 40) = v153;
          v148 = v151;
        }

LABEL_57:
        v149 = v150;
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_63();
      sub_1D7EF6E5C();
      v101 = v98 + 64;
      OUTLINED_FUNCTION_24();
      v104 = v103 & v102;
      v106 = (v105 + 63) >> 6;
      sub_1D8190DB4();
      v107 = 0;
      v108 = v231;
      while (1)
      {
        if (v104)
        {
          v109 = v108;
          v110 = v107;
        }

        else
        {
          do
          {
            v110 = v107 + 1;
            if (__OFADD__(v107, 1))
            {
              goto LABEL_145;
            }

            if (v110 >= v106)
            {
              v231 = v108;

              OUTLINED_FUNCTION_0_3();
              sub_1D7E2BA7C();

              OUTLINED_FUNCTION_19_3();
              goto LABEL_92;
            }

            v104 = *(v101 + 8 * v110);
            ++v107;
          }

          while (!v104);
          v109 = v108;
        }

        v111 = (*(v232 + 48) + 16 * (__clz(__rbit64(v104)) | (v110 << 6)));
        v113 = *v111;
        v112 = v111[1];
        OUTLINED_FUNCTION_162();
        v115 = v227;
        (v221[0])(v227 + *(v114 + 48));
        *v115 = v113;
        v115[1] = v112;
        sub_1D8190DB4();
        sub_1D7EEA35C();
        v108 = v109;
        if (v109)
        {
          break;
        }

        v104 &= v104 - 1;
        OUTLINED_FUNCTION_5_3();
        sub_1D7EF80A0();
        v107 = v110;
      }

      OUTLINED_FUNCTION_5_3();
      sub_1D7EF80A0();
      OUTLINED_FUNCTION_0_3();
      sub_1D7E2BA7C();

      OUTLINED_FUNCTION_19_3();
LABEL_92:
      sub_1D7E2BA7C();
      goto LABEL_137;
    case 5:
      goto LABEL_137;
    case 6:
      v116 = v233;
      v117 = v234;
      (*(v233 + 16))(v35, v232, v234);
      v118 = (*(v116 + 88))(v35, v117);
      v119 = *MEMORY[0x1E69D6A50];
      (*(v116 + 8))(v35, v117);
      if (v118 == v119)
      {
        goto LABEL_137;
      }

      OUTLINED_FUNCTION_33_2();
      sub_1D81921A4();
      OUTLINED_FUNCTION_107_0();
      OUTLINED_FUNCTION_47_0();
      v73 = v120 - 5;
      goto LABEL_135;
    case 7:
      v91 = v233;
      v90 = v234;
      (*(v233 + 104))(v0, *MEMORY[0x1E69D6A20], v234);
      v92 = sub_1D818F804();
      (*(v91 + 8))(v0, v90);
      if (v92)
      {
        goto LABEL_137;
      }

      OUTLINED_FUNCTION_33_2();
      sub_1D81921A4();
      OUTLINED_FUNCTION_107_0();
      OUTLINED_FUNCTION_47_0();
      v73 = v93 - 7;
      goto LABEL_135;
    default:
      v49 = v47;
      swift_projectBox();
      OUTLINED_FUNCTION_20_1();
      sub_1D7E2B814();
      v230 = *(v233 + 16);
      v230(v5, v232, v234);
      v50 = OUTLINED_FUNCTION_130();
      if (v51(v50) != *MEMORY[0x1E69D6A30])
      {
        v124 = OUTLINED_FUNCTION_130();
        v125(v124);
        OUTLINED_FUNCTION_33_2();
        sub_1D81921A4();
        OUTLINED_FUNCTION_107_0();
        OUTLINED_FUNCTION_167();
        OUTLINED_FUNCTION_8_11();
        sub_1D7E2B754(v126, v127, MEMORY[0x1E69D6A78]);
        v128 = sub_1D81925B4();
        MEMORY[0x1DA713260](v128);

        v129 = sub_1D7EF4F68();
        v130 = OUTLINED_FUNCTION_121(&type metadata for JSONSchema.Errors, v129);
        OUTLINED_FUNCTION_116(v130, v131);
        OUTLINED_FUNCTION_6_5();
        goto LABEL_92;
      }

      v52 = OUTLINED_FUNCTION_130();
      v53(v52);
      v54 = *(*v5 + 16);
      sub_1D8190DB4();

      OUTLINED_FUNCTION_1_11();
      v232 = v49;
      sub_1D7E2B814();
      v55 = 0;
      v56 = *(v54 + 16);
      v57 = v231;
      while (2)
      {
        if (v56 == v55)
        {
          v231 = v57;

          OUTLINED_FUNCTION_6_5();
          sub_1D7E2BA7C();
          OUTLINED_FUNCTION_3_20();
        }

        else
        {
          if (v55 >= *(v54 + 16))
          {
            goto LABEL_144;
          }

          v230(v43, v54 + ((*(v233 + 80) + 32) & ~*(v233 + 80)) + *(v233 + 72) * v55, v234);
          sub_1D7EEA35C();
          if (!v57)
          {
            ++v55;
            v58 = OUTLINED_FUNCTION_111();
            v59(v58);
            continue;
          }

          v185 = OUTLINED_FUNCTION_111();
          v186(v185);
          OUTLINED_FUNCTION_6_5();
          sub_1D7E2BA7C();
          OUTLINED_FUNCTION_3_20();
        }

        goto LABEL_92;
      }
  }
}

uint64_t sub_1D7EEB700(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_1D7EF7F28(a1, a2, &v4);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D7EEB760(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D81924B4();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D7EEB7AC(char a1)
{
  result = 6580516;
  switch(a1)
  {
    case 1:
      result = 0x616D6568637324;
      break;
    case 2:
      result = 0x746E656D6D6F6324;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x7470697263736564;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D7EEB868@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D7EEB760(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D7EEB898@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7EEB7AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D7EEB8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7EEB760(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7EEB900(uint64_t a1)
{
  v2 = sub_1D7EF8EE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7EEB93C(uint64_t a1)
{
  v2 = sub_1D7EF8EE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7EEB978()
{
  OUTLINED_FUNCTION_60();
  v3 = *(v2 + 8);
  v4 = v0[1];
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *v1 == *v0 && v3 == v4;
    if (!v5 && (sub_1D8192634() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v6 = v1[3];
  v7 = v0[3];
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = v1[2] == v0[2] && v6 == v7;
    if (!v8 && (sub_1D8192634() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = v1[5];
  v10 = v0[5];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = v1[4] == v0[4] && v9 == v10;
    if (!v11 && (sub_1D8192634() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = v1[7];
  v13 = v0[7];
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v14 = v1[6] == v0[6] && v12 == v13;
    if (!v14 && (sub_1D8192634() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v15 = v1[9];
  v16 = v0[9];
  if (v15)
  {
    if (v16)
    {
      v17 = v1[8] == v0[8] && v15 == v16;
      if (v17 || (sub_1D8192634() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v16)
  {
    return 1;
  }

  return 0;
}

void sub_1D7EEBAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_104();
  v25 = v24;
  v61 = v26;
  v27 = OUTLINED_FUNCTION_96();
  sub_1D7EF8E88(v27, v28);
  v30 = v29;
  OUTLINED_FUNCTION_9();
  v32 = v31;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v54 - v34;
  v36 = v25[3];
  v62 = v25;
  v37 = __swift_project_boxed_opaque_existential_1(v25, v36);
  sub_1D7EF8EE0();
  sub_1D81928A4();
  if (v23)
  {
    OUTLINED_FUNCTION_86_0();
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = v36;
    v69 = v37;
    v70 = v25;
    v71 = v32;
    v72 = 0;
    v73 = 0;
    sub_1D7EF4F38(&v64);
  }

  else
  {
    LOBYTE(v64) = 0;
    v59 = OUTLINED_FUNCTION_69();
    v60 = v38;
    LOBYTE(v64) = 1;
    v39 = v32;
    v57 = OUTLINED_FUNCTION_69();
    v58 = v40;
    LOBYTE(v64) = 2;
    v41 = OUTLINED_FUNCTION_69();
    v56 = v42;
    LOBYTE(v64) = 3;
    v43 = OUTLINED_FUNCTION_69();
    v45 = v44;
    v46 = sub_1D81924C4();
    v47 = *(v39 + 8);
    v54 = v48;
    v47(v35, v30);
    v49 = v59;
    v50 = v60;
    v63[0] = v59;
    v63[1] = v60;
    v51 = v57;
    v63[2] = v57;
    v63[3] = v58;
    v63[4] = v41;
    v55 = v41;
    v52 = v56;
    v63[5] = v56;
    v63[6] = v43;
    v63[7] = v45;
    v63[8] = v46;
    v53 = v54;
    v63[9] = v54;
    sub_1D7EF8F34(v63, &v64);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    v64 = v49;
    v65 = v50;
    v66 = v51;
    v67 = v58;
    v68 = v55;
    v69 = v52;
    v70 = v43;
    v71 = v45;
    v72 = v46;
    v73 = v53;
    sub_1D7EF4F38(&v64);
    memcpy(v61, v63, 0x50uLL);
  }

  OUTLINED_FUNCTION_105();
}

void sub_1D7EEBE1C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_1D7EEBAB8(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1], SWORD2(v11[1]), SBYTE6(v11[1]), SHIBYTE(v11[1]), v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11]);
  if (!v9)
  {
    memcpy(a9, v11, 0x50uLL);
  }
}

void sub_1D7EEBE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7EFC960();
  if (v4)
  {
    OUTLINED_FUNCTION_85();
    sub_1D8185C0C();
    if (v5)
    {
      v6 = OUTLINED_FUNCTION_112();

      sub_1D7EFCF1C(v6, v7);
    }
  }
}

uint64_t sub_1D7EEBEDC()
{
  OUTLINED_FUNCTION_60();
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v22, v0, sizeof(v22));
  if ((sub_1D7EEB978() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D7EEDCE0(v1[10], v0[10]) & 1) == 0)
  {
    return 0;
  }

  v2 = type metadata accessor for JSONSchema(0);
  OUTLINED_FUNCTION_81_1(v2[6]);
  if ((sub_1D818F804() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_81_1(v2[7]);
  if ((sub_1D818E774() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_81_1(v2[8]);
  if ((sub_1D818E5F4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject(0);
  OUTLINED_FUNCTION_152();
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v9 = v0 + v8;
  v10 = *v9;
  v11 = v9[8];
  v12 = *(v9 + 2);
  v13 = v7;
  v14 = v9[24];
  if (v15)
  {
    if (!v9[8])
    {
      return 0;
    }
  }

  else
  {
    v16 = 0;
    if ((v11 & 1) != 0 || v4 != v10)
    {
      return v16;
    }
  }

  if (v13)
  {
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v16 = 0;
    if ((v14 & 1) != 0 || v6 != v12)
    {
      return v16;
    }
  }

  v17 = *(v3 + 24);
  v18 = *(v1 + v17);
  v19 = *(v0 + v17);
  if (v18)
  {
    if (!v19 || (sub_1D81859E0(v18, v19) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  return 1;
}

void sub_1D7EEC030()
{
  OUTLINED_FUNCTION_120();
  v0 = type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject(0);
  v1 = OUTLINED_FUNCTION_50(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_28_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_123_1();
  sub_1D7EF6DF8(0);
  v5 = OUTLINED_FUNCTION_50(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  sub_1D7E2B814();
  OUTLINED_FUNCTION_110();
  sub_1D7E2B814();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_12_6();
    sub_1D7E2B814();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_63();
      sub_1D7EF6E5C();
      OUTLINED_FUNCTION_159();
      sub_1D7EEBEDC();
      sub_1D7E2BA7C();
    }

    else
    {
      OUTLINED_FUNCTION_19_3();
    }

    sub_1D7E2BA7C();
  }

  else
  {
    OUTLINED_FUNCTION_12_6();
    sub_1D7E2B814();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      sub_1D7EFC960();
      if (v6 & 1) != 0 && (OUTLINED_FUNCTION_118(), sub_1D8185C0C(), (v7))
      {
        v8 = OUTLINED_FUNCTION_90_0();
        sub_1D7EFCF1C(v8, v9);
      }

      else
      {
      }
    }
  }

  sub_1D7E2BA7C();
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7EEC348(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D6574496E696DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1D8192634() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D65744978616DLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D8192634();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D7EEC418(char a1)
{
  if (a1)
  {
    return 0x736D65744978616DLL;
  }

  else
  {
    return 0x736D6574496E696DLL;
  }
}

uint64_t sub_1D7EEC468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7EEC348(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7EEC4B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7EE6BDC();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EEC4D8(uint64_t a1)
{
  v2 = sub_1D7EF7078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7EEC514(uint64_t a1)
{
  v2 = sub_1D7EF7078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7EEC5A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65706F72506E696DLL && a2 == 0xED00007365697472;
  if (v4 || (sub_1D8192634() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65706F725078616DLL && a2 == 0xED00007365697472)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D8192634();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D7EEC678(char a1)
{
  if (a1)
  {
    return 0x65706F725078616DLL;
  }

  else
  {
    return 0x65706F72506E696DLL;
  }
}

void sub_1D7EEC6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_104();
  v26 = v25;
  v27 = OUTLINED_FUNCTION_76_0();
  sub_1D7EF8E88(v27, v28);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_119();
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  v26();
  OUTLINED_FUNCTION_160();
  sub_1D81928A4();
  if (!v24)
  {
    sub_1D81924F4();
    sub_1D81924F4();
    v30 = OUTLINED_FUNCTION_110();
    v31(v30);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1D7EEC854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7EEC5A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7EEC87C(uint64_t a1)
{
  v2 = sub_1D7EF6ECC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7EEC8B8(uint64_t a1)
{
  v2 = sub_1D7EF6ECC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7EEC9A4(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  if (a2)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    if (a4)
    {
      if ((a8 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a8 & 1) != 0 || a3 != a7)
    {
      return 0;
    }

    return OUTLINED_FUNCTION_0_0();
  }

  result = 0;
  if ((a6 & 1) == 0 && a1 == a5)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1D7EEC9E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74676E654C6E696DLL && a2 == 0xE900000000000068;
  if (v4 || (sub_1D8192634() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74676E654C78616DLL && a2 == 0xE900000000000068)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D8192634();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D7EECAC0(char a1)
{
  if (a1)
  {
    return 0x74676E654C78616DLL;
  }

  else
  {
    return 0x74676E654C6E696DLL;
  }
}

uint64_t sub_1D7EECAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D81927E4();
  a4(v8, v6);
  return sub_1D8192824();
}

uint64_t sub_1D7EECB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7EEC9E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7EECB70(uint64_t a1)
{
  v2 = sub_1D7EF6F20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7EECBAC(uint64_t a1)
{
  v2 = sub_1D7EF6F20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7EECCAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7EECC8C();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EECCD4(uint64_t a1)
{
  v2 = sub_1D7EF7024();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7EECD10(uint64_t a1)
{
  v2 = sub_1D7EF7024();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7EECD9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return OUTLINED_FUNCTION_0_2();
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return OUTLINED_FUNCTION_0_2();
    }
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return OUTLINED_FUNCTION_0_2();
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return OUTLINED_FUNCTION_0_2();
    }
  }

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return OUTLINED_FUNCTION_0_2();
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return OUTLINED_FUNCTION_0_2();
    }
  }

  v5 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return OUTLINED_FUNCTION_0_2();
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v5 = 1;
    }

    if (v5)
    {
      return OUTLINED_FUNCTION_0_2();
    }
  }

  v6 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if ((*(a2 + 72) & 1) == 0)
    {
      return OUTLINED_FUNCTION_0_2();
    }
  }

  else
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v6 = 1;
    }

    if (v6)
    {
      return OUTLINED_FUNCTION_0_2();
    }
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1D7EECE68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001D81C6370 == a2;
  if (v3 || (OUTLINED_FUNCTION_101(0xD000000000000010, 0x80000001D81C6370) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D756D696E696DLL && a2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_101(0x6D756D696E696DLL, 0xE700000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001D81C6390 == a2;
      if (v7 || (OUTLINED_FUNCTION_101(0xD000000000000010, 0x80000001D81C6390) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D756D6978616DLL && a2 == 0xE700000000000000;
        if (v8 || (OUTLINED_FUNCTION_101(0x6D756D6978616DLL, 0xE700000000000000) & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656C7069746C756DLL && a2 == 0xEA0000000000664FLL)
        {

          return 4;
        }

        else
        {
          OUTLINED_FUNCTION_101(0x656C7069746C756DLL, 0xEA0000000000664FLL);
          OUTLINED_FUNCTION_161();

          if (a1)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t _s5TeaUI16RestorationEventO9hashValueSivg_0(unsigned __int8 a1)
{
  sub_1D81927E4();
  MEMORY[0x1DA714A00](a1);
  return sub_1D8192824();
}

unint64_t sub_1D7EED028(char a1)
{
  result = 0x6D756D696E696DLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6D756D6978616DLL;
      break;
    case 4:
      result = 0x656C7069746C756DLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1D7EED0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_104();
  v25 = v24;
  v27 = v26;
  v53 = v28;
  sub_1D7EF8E88(0, v29);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v30);
  v31 = OUTLINED_FUNCTION_141(v27, v27[3]);
  v25(v31);
  sub_1D81928A4();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  else
  {
    v57[0] = 0;
    v32 = sub_1D81924E4();
    v34 = v33;
    v35 = OUTLINED_FUNCTION_83(1);
    v37 = v36;
    v52 = v35;
    v38 = OUTLINED_FUNCTION_83(2);
    v50 = v39;
    v51 = v38;
    v40 = OUTLINED_FUNCTION_83(3);
    v48 = v41;
    v49 = v40;
    v42 = sub_1D81924E4();
    v44 = v43;
    v47 = v42;
    v45 = OUTLINED_FUNCTION_53_0();
    v46(v45);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    *v53 = v32;
    *(v53 + 8) = v34 & 1;
    *(v53 + 9) = *v57;
    *(v53 + 12) = *&v57[3];
    *(v53 + 16) = v52;
    *(v53 + 24) = v37 & 1;
    *(v53 + 25) = *v56;
    *(v53 + 28) = *&v56[3];
    *(v53 + 32) = v51;
    *(v53 + 40) = v50 & 1;
    *(v53 + 44) = *&v55[3];
    *(v53 + 41) = *v55;
    *(v53 + 48) = v49;
    *(v53 + 56) = v48 & 1;
    *(v53 + 60) = *&v54[3];
    *(v53 + 57) = *v54;
    *(v53 + 64) = v47;
    *(v53 + 72) = v44 & 1;
  }

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1D7EED354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D81927E4();
  a4(v8, v6);
  return sub_1D8192824();
}

uint64_t sub_1D7EED3A0(uint64_t a1)
{
  v2 = sub_1D7EF6F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7EED3DC(uint64_t a1)
{
  v2 = sub_1D7EF6F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D7EED468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1D7EED0C4(a1, a4, a5, a6, a7, a6, a7, a8, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12), v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
  if (!v8)
  {
    v9 = OUTLINED_FUNCTION_135();
    memcpy(v9, v10, 0x49uLL);
  }
}

uint64_t sub_1D7EED4C0()
{
  OUTLINED_FUNCTION_60();
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v24, v0, sizeof(v24));
  if ((sub_1D7EEB978() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D7EEDCE0(v1[10], v0[10]) & 1) == 0)
  {
    return 0;
  }

  v2 = type metadata accessor for JSONSchema(0);
  OUTLINED_FUNCTION_81_1(v2[6]);
  if ((sub_1D818F804() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_81_1(v2[7]);
  if ((sub_1D818E774() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_81_1(v2[8]);
  if ((sub_1D818E5F4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for JSONSchema.SchemaType.ArraySchema(0);
  OUTLINED_FUNCTION_152();
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v9 = v0 + v8;
  v10 = *v9;
  v11 = v9[8];
  v12 = *(v9 + 2);
  v13 = v7;
  v14 = v9[24];
  if (v15)
  {
    if (!v9[8])
    {
      return 0;
    }
  }

  else
  {
    v16 = 0;
    if ((v11 & 1) != 0 || v4 != v10)
    {
      return v16;
    }
  }

  if (v13)
  {
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v16 = 0;
    if ((v14 & 1) != 0 || v6 != v12)
    {
      return v16;
    }
  }

  v17 = *(v3 + 24);
  v18 = *(v1 + v17);
  v19 = *(v0 + v17);
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    sub_1D8190DB4();
    v20 = OUTLINED_FUNCTION_112();
    sub_1D8185814(v20, v21);
    OUTLINED_FUNCTION_161();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1D7EED62C(int a1, int a2)
{
  if (a1 != 2)
  {
    if (a2 == 2 || ((a2 ^ a1) & 1) != 0)
    {
      return OUTLINED_FUNCTION_0_2();
    }

    return OUTLINED_FUNCTION_0_0();
  }

  if (a2 == 2)
  {
    return OUTLINED_FUNCTION_0_0();
  }

  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D7EED670()
{
  OUTLINED_FUNCTION_60();
  if ((sub_1D7EECD9C(v2, v3) & 1) == 0)
  {
    return 0;
  }

  v4 = *(v0 + 88);
  if (*(v1 + 88))
  {
    if (!*(v0 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (*(v1 + 80) != *(v0 + 80))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(v1 + 104);
  v6 = *(v0 + 104);
  if (v5 == 255)
  {
    if (v6 == 255)
    {
      v7 = OUTLINED_FUNCTION_135();
      sub_1D7EF7450(v7, v8);
      return 1;
    }
  }

  else if (v6 == 255)
  {
    v9 = OUTLINED_FUNCTION_135();
    sub_1D7EF7450(v9, v10);
  }

  else
  {
    if (v5)
    {
      if ((v6 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }

    sub_1D8185B5C();
    if (v11)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D7EED770()
{
  OUTLINED_FUNCTION_60();
  if ((sub_1D7EECD9C(v2, v3) & 1) == 0)
  {
    return 0;
  }

  v4 = *(v0 + 88);
  if (*(v1 + 88))
  {
    if (!*(v0 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (*(v1 + 80) != *(v0 + 80))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(v1 + 104);
  v6 = *(v0 + 104);
  if (v5 == 255)
  {
    if (v6 == 255)
    {
      v7 = OUTLINED_FUNCTION_135();
      sub_1D7EF7418(v7, v8);
      return 1;
    }
  }

  else if (v6 == 255)
  {
    v9 = OUTLINED_FUNCTION_135();
    sub_1D7EF7418(v9, v10);
  }

  else
  {
    if (v5)
    {
      if ((v6 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }

    sub_1D8185AAC();
    if (v11)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D7EED870()
{
  OUTLINED_FUNCTION_60();
  sub_1D7EEC030();
  if (v2)
  {
    v3 = *(type metadata accessor for JSONSchema.SchemaType.ObjectSchema(0) + 20);
    v4 = *(v1 + v3);
    v5 = *(v0 + v3);
    if (v4)
    {
      if (v5)
      {
        sub_1D8190DB4();
        OUTLINED_FUNCTION_112();
        sub_1D7EFC7F4();
        OUTLINED_FUNCTION_161();

        if (v4)
        {
          return 1;
        }
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D7EED8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return OUTLINED_FUNCTION_0_0();
  }

  else
  {
    return OUTLINED_FUNCTION_103(a1, a2, a3, a4);
  }
}

void sub_1D7EED90C()
{
  OUTLINED_FUNCTION_104();
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v13 = v12;
  if (v7 != -1 && (v7 & 1) != 0)
  {
    v32 = v1;
    v33 = v0;
    v34 = v2;
    v36 = v3;
    v14 = *(v6 + 16);
    v15 = MEMORY[0x1E69E7CC0];
    if (v14)
    {
      v29 = v7;
      v30 = v4;
      v31 = v5;
      v35 = MEMORY[0x1E69E7CC0];
      sub_1D8190DB4();
      sub_1D7F08E34(0, v14, 0);
      v15 = v35;
      v28 = v9;
      v16 = (v9 + 56);
      do
      {
        v18 = *(v16 - 1);
        v17 = *v16;
        v20 = *(v35 + 16);
        v19 = *(v35 + 24);
        sub_1D8190DB4();
        if (v20 >= v19 >> 1)
        {
          sub_1D7F08E34(v19 > 1, v20 + 1, 1);
        }

        *(v35 + 16) = v20 + 1;
        v21 = v35 + 16 * v20;
        *(v21 + 32) = v18;
        *(v21 + 40) = v17;
        v16 += 4;
        --v14;
      }

      while (v14);
      v9 = v28;
      v8 = v29;
      v0 = sub_1D7ED07B8(v28, v29);
      v11 = v30;
      v10 = v31;
    }

    if (v10)
    {
      MEMORY[0x1EEE9AC00](v0);
      sub_1D8190DB4();
      v22 = sub_1D7F8F0B0();

      if (!v22)
      {
        sub_1D7ED07B8(v9, v8);
        sub_1D81921A4();
        MEMORY[0x1DA713260](0xD000000000000020, 0x80000001D81C62C0);
        MEMORY[0x1DA713260](v11, v10);

        MEMORY[0x1DA713260](0xD000000000000039, 0x80000001D81C62F0);
        v23 = MEMORY[0x1DA713540](v15, MEMORY[0x1E69E6158]);
        v25 = v24;

        MEMORY[0x1DA713260](v23, v25);

        v26 = sub_1D7EF8CB0();
        OUTLINED_FUNCTION_121(&type metadata for JSONSchema.SchemaType.StringSchema.Errors, v26);
        *v27 = 0;
        v27[1] = 0xE000000000000000;
        swift_willThrow();
        goto LABEL_13;
      }
    }

    v0 = v33;
    v2 = v34;
    v3 = v36;
    v1 = v32;
  }

  *v13 = v0;
  *(v13 + 8) = v1 & 1;
  *(v13 + 16) = v2;
  *(v13 + 24) = v3 & 1;
  *(v13 + 32) = v11;
  *(v13 + 40) = v10;
  *(v13 + 48) = v9;
  *(v13 + 56) = v8;
LABEL_13:
  OUTLINED_FUNCTION_154();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1D7EEDBDC()
{
  OUTLINED_FUNCTION_60();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (*(v3 + 8))
  {
    if ((*(v2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((*(v2 + 8) & 1) != 0 || *v1 != *v0)
    {
      return result;
    }
  }

  if (v5)
  {
    if ((*(v2 + 24) & 1) == 0)
    {
      return 0;
    }

LABEL_11:
    v7 = *(v1 + 40);
    v8 = *(v0 + 40);
    if (v7)
    {
      if (!v8)
      {
        return 0;
      }

      v9 = *(v1 + 32) == *(v0 + 32) && v7 == v8;
      if (!v9 && (sub_1D8192634() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v8)
    {
      return 0;
    }

    v10 = *(v1 + 56);
    v11 = *(v0 + 56);
    if (v10 == 255)
    {
      if (v11 == 255)
      {
        return 1;
      }
    }

    else if (v11 != 255)
    {
      if (v10)
      {
        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v11)
      {
        return 0;
      }

      if (sub_1D81859E0(*(v1 + 48), *(v0 + 48)))
      {
        return 1;
      }
    }

    return 0;
  }

  result = 0;
  if ((*(v2 + 24) & 1) == 0 && v4 == *(v2 + 16))
  {
    goto LABEL_11;
  }

  return result;
}

void sub_1D7EEDCE0(unint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for JSONSchema.SchemaType.ObjectSchema(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_124_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v38 - v8;
  v10 = type metadata accessor for JSONSchema.SchemaType.ArraySchema(0);
  v11 = OUTLINED_FUNCTION_50(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_125();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_123_1();
  switch(a1 >> 61)
  {
    case 1uLL:
    case 7uLL:
      goto LABEL_32;
    case 2uLL:
      v18 = a1 & 0x1FFFFFFFFFFFFFFFLL;
      memcpy(__dst, (v18 + 16), 0x49uLL);
      if (a2 >> 61 != 2)
      {
        goto LABEL_32;
      }

      v19 = *(v18 + 96);
      v20 = *(v18 + 104);
      v21 = a2 & 0x1FFFFFFFFFFFFFFFLL;
      v22 = *(v18 + 120);
      memcpy(v40, (v21 + 16), 0x69uLL);
      if ((sub_1D7EECD9C(__dst, v21 + 16) & 1) == 0)
      {
        goto LABEL_32;
      }

      v23 = BYTE8(v40[5]);
      if (v20)
      {
        if (!BYTE8(v40[5]))
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v19 != *&v40[5])
        {
          v23 = 1;
        }

        if (v23)
        {
          goto LABEL_32;
        }
      }

      if (v22 == 255)
      {
        if (BYTE8(v40[6]) != 255)
        {
          goto LABEL_32;
        }

        goto LABEL_54;
      }

      if (BYTE8(v40[6]) == 255)
      {
LABEL_54:
        v34 = OUTLINED_FUNCTION_164();
        sub_1D7EF7450(v34, v35);
        goto LABEL_32;
      }

      if (v22)
      {
        if ((BYTE8(v40[6]) & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_60;
      }

      if ((BYTE8(v40[6]) & 1) == 0)
      {
LABEL_60:
        sub_1D8185B5C();
      }

LABEL_32:
      OUTLINED_FUNCTION_168();
      return;
    case 3uLL:
      v24 = a1 & 0x1FFFFFFFFFFFFFFFLL;
      memcpy(__dst, ((a1 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x49uLL);
      if (a2 >> 61 != 3)
      {
        goto LABEL_32;
      }

      v25 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v26 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x68);
      v27 = a2 & 0x1FFFFFFFFFFFFFFFLL;
      v28 = *(v24 + 120);
      memcpy(v40, (v27 + 16), 0x69uLL);
      if ((sub_1D7EECD9C(__dst, v27 + 16) & 1) == 0)
      {
        goto LABEL_32;
      }

      v29 = BYTE8(v40[5]);
      if (v26)
      {
        if (!BYTE8(v40[5]))
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v25 != *&v40[5])
        {
          v29 = 1;
        }

        if (v29)
        {
          goto LABEL_32;
        }
      }

      if (v28 == 255)
      {
        if (BYTE8(v40[6]) != 255)
        {
          goto LABEL_32;
        }
      }

      else if (BYTE8(v40[6]) != 255)
      {
        if (v28)
        {
          if ((BYTE8(v40[6]) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else if (BYTE8(v40[6]))
        {
          goto LABEL_32;
        }

        sub_1D8185AAC();
        goto LABEL_32;
      }

      v36 = OUTLINED_FUNCTION_164();
      sub_1D7EF7418(v36, v37);
      goto LABEL_32;
    case 4uLL:
      if (a2 >> 61 != 4)
      {
        goto LABEL_32;
      }

      swift_projectBox();
      swift_projectBox();
      sub_1D7E2B814();
      sub_1D7E2B814();
      sub_1D7EEC030();
      if ((v13 & 1) == 0)
      {
        goto LABEL_30;
      }

      v14 = *(v5 + 20);
      v15 = *(v2 + v14);
      if (*&v9[v14])
      {
        if (v15)
        {
          sub_1D8190DB4();
          sub_1D7EFC7F4();
          v17 = v16;

          OUTLINED_FUNCTION_0_3();
          sub_1D7E2BA7C();
          if (v17)
          {
            goto LABEL_51;
          }
        }

        else
        {
LABEL_30:
          OUTLINED_FUNCTION_0_3();
          sub_1D7E2BA7C();
        }
      }

      else
      {
        sub_1D8190DB4();
        OUTLINED_FUNCTION_0_3();
        sub_1D7E2BA7C();
        if (!v15)
        {
LABEL_51:
          OUTLINED_FUNCTION_0_3();
          sub_1D7E2BA7C();
          goto LABEL_32;
        }
      }

      OUTLINED_FUNCTION_0_3();
      sub_1D7E2BA7C();
      goto LABEL_32;
    case 5uLL:
      if (a2 >> 61 != 5)
      {
        goto LABEL_32;
      }

      if (*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18))
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_168();

      sub_1D8192634();
      return;
    case 6uLL:
      v32 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v38[0] = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v38[1] = v32;
      v39[0] = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      *(v39 + 9) = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x39);
      if (a2 >> 61 == 6)
      {
        v33 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v40[0] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v40[1] = v33;
        v40[2] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        *(&v40[2] + 9) = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x39);
        sub_1D7EEDBDC();
      }

      goto LABEL_32;
    default:
      if (!(a2 >> 61))
      {
        swift_projectBox();
        swift_projectBox();
        sub_1D7E2B814();
        sub_1D7E2B814();
        sub_1D7EED4C0();
        sub_1D7E2BA7C();
        sub_1D7E2BA7C();
      }

      goto LABEL_32;
  }
}

unint64_t sub_1D7EEE228(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D81924B4();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D7EEE27C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x736D657469;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      v3 = 0x7265706F7270;
      goto LABEL_8;
    case 4:
      result = 0x6465726975716572;
      break;
    case 5:
      result = 0x616C707369642D78;
      break;
    case 6:
      result = 1717924388;
      break;
    case 7:
      v3 = 0x696E69666564;
LABEL_8:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
      break;
    case 8:
      result = 0x746C7561666564;
      break;
    case 9:
      result = 0x72702D79656B2D78;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D7EEE3CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D7EEE228(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D7EEE3FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7EEE27C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D7EEE444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7EEE274(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7EEE478(uint64_t a1)
{
  v2 = sub_1D7EF4EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7EEE4B4(uint64_t a1)
{
  v2 = sub_1D7EF4EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void JSONSchema.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_104();
  v153 = v23;
  v26 = v25;
  v138 = v27;
  OUTLINED_FUNCTION_59_0();
  sub_1D7EF803C(0, v28);
  v141 = v29;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_94();
  v140 = v31;
  OUTLINED_FUNCTION_58();
  sub_1D7E188DC(0, v32);
  OUTLINED_FUNCTION_50(v33);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_38_0(v35);
  v146 = sub_1D818E644();
  OUTLINED_FUNCTION_9();
  v151 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_2();
  v142 = v38;
  OUTLINED_FUNCTION_57();
  sub_1D7E188DC(0, v39);
  OUTLINED_FUNCTION_50(v40);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_38_0(v42);
  v148 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v147 = v43;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_38_0(v45);
  v149 = sub_1D818F824();
  OUTLINED_FUNCTION_9();
  v150 = v46;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_119();
  v48 = OUTLINED_FUNCTION_96();
  sub_1D7EF8E88(v48, v49);
  v51 = v50;
  OUTLINED_FUNCTION_9();
  v152 = v52;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v131 - v54;
  v56 = type metadata accessor for JSONSchema(0);
  OUTLINED_FUNCTION_9();
  v139 = v57;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_15();
  v61 = v60 - v59;
  OUTLINED_FUNCTION_141(v26, v26[3]);
  sub_1D7EF4EE4();
  v62 = v153;
  sub_1D81928A4();
  if (v62)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    goto LABEL_4;
  }

  v134 = v24;
  v153 = v55;
  v137 = v51;
  v136 = v56;
  v135 = v61;
  v63 = v151;
  sub_1D7E0E768(v26, v154);
  sub_1D7EEBAB8(v154, v64, v65, v66, v67, v68, v69, v70, v131, v132, SWORD2(v132), SBYTE6(v132), SHIBYTE(v132), v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
  OUTLINED_FUNCTION_150();
  memcpy(v55, v71, 0x50uLL);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  OUTLINED_FUNCTION_111();
  sub_1D8192884();
  OUTLINED_FUNCTION_141(v154, v154[3]);
  OUTLINED_FUNCTION_8_11();
  sub_1D7E2B754(v72, v73, MEMORY[0x1E69D6A70]);
  v74 = v134;
  v75 = v149;
  sub_1D8192644();
  OUTLINED_FUNCTION_151();
  (*(v150 + 32))(&v55[*(v78 + 24)], v74, v75);
  __swift_destroy_boxed_opaque_existential_1Tm(v154);
  v79 = v26[3];
  v134 = v26;
  OUTLINED_FUNCTION_141(v26, v79);
  OUTLINED_FUNCTION_111();
  sub_1D8192894();
  if (qword_1ECA0C248 != -1)
  {
    OUTLINED_FUNCTION_34_2(&qword_1ECA0C248);
  }

  v80 = sub_1D8192364();
  __swift_project_value_buffer(v80, qword_1ECA0CFC8);
  sub_1D7EDF2EC();

  v81 = v148;
  v82 = v145;
  v83 = v144;
  if (!v154[3])
  {
    OUTLINED_FUNCTION_55_2();
    sub_1D7E70CE0();
    v101 = OUTLINED_FUNCTION_157();
    __swift_storeEnumTagSinglePayload(v101, v102, 1, v81);
    v88 = v152;
LABEL_17:
    OUTLINED_FUNCTION_57();
    sub_1D7E70CE0();
    v103 = sub_1D7EF4F68();
    OUTLINED_FUNCTION_121(&type metadata for JSONSchema.Errors, v103);
    *v104 = xmmword_1D819FAA0;
    swift_willThrow();
    v105 = 0;
    v91 = v134;
    OUTLINED_FUNCTION_150();
LABEL_20:
    (*(v88 + 8))(v153, v137);
    v76 = v150;
    __swift_destroy_boxed_opaque_existential_1Tm(v91);
    memcpy(v154, v80, 0x50uLL);
    sub_1D7EF4F38(v154);
    v77 = v136;
    (*(v76 + 8))(v80 + *(v136 + 24), v149);
    if (v105)
    {
      (*(v147 + 8))(v80 + *(v77 + 28), v148);
    }

    goto LABEL_4;
  }

  v84 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v83, v84 ^ 1u, 1, v81);
  v85 = OUTLINED_FUNCTION_157();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v85, v86, v81);
  v88 = v152;
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_17;
  }

  v89 = v147;
  (*(v147 + 32))(v82, v83, v81);
  OUTLINED_FUNCTION_151();
  (*(v89 + 16))(v135 + *(v90 + 28), v82, v81);
  v91 = v134;
  OUTLINED_FUNCTION_141(v134, v134[3]);
  OUTLINED_FUNCTION_111();
  sub_1D8192894();
  if (qword_1ECA0C240 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    __swift_project_value_buffer(v80, qword_1ECA0CFB0);
    sub_1D7EDF2EC();

    v92 = v146;
    v93 = v63;
    if (!v154[3])
    {
      OUTLINED_FUNCTION_55_2();
      sub_1D7E70CE0();
      v106 = OUTLINED_FUNCTION_157();
      __swift_storeEnumTagSinglePayload(v106, v107, 1, v92);
      OUTLINED_FUNCTION_150();
LABEL_19:
      OUTLINED_FUNCTION_58();
      sub_1D7E70CE0();
      v108 = sub_1D7EF4F68();
      OUTLINED_FUNCTION_121(&type metadata for JSONSchema.Errors, v108);
      *v109 = xmmword_1D819FAA0;
      swift_willThrow();
      OUTLINED_FUNCTION_136();
      v110();
      v105 = 1;
      v88 = v152;
      goto LABEL_20;
    }

    v94 = v143;
    v95 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v94, v95 ^ 1u, 1, v92);
    v96 = OUTLINED_FUNCTION_157();
    v98 = __swift_getEnumTagSinglePayload(v96, v97, v92);
    v80 = v135;
    if (v98 == 1)
    {
      goto LABEL_19;
    }

    (*(v63 + 32))(v142, v94, v92);
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_134();
    v99();
    sub_1D7E145C0(0, &unk_1ECA0D048);
    sub_1D7EF4FBC();
    v100 = v153;
    sub_1D8192504();
    v111 = v154[0];
    if (!v154[0])
    {
      break;
    }

    v112 = v154[0] + 64;
    OUTLINED_FUNCTION_24();
    v115 = v114 & v113;
    v143 = (v116 + 63) >> 6;
    sub_1D8190DB4();
    v117 = 0;
    v133 = v111 + 64;
    v132 = v111;
    while (v115)
    {
      v118 = v140;
LABEL_30:
      v120 = (*(v111 + 48) + 16 * (__clz(__rbit64(v115)) | (v117 << 6)));
      v121 = *v120;
      v122 = v120[1];
      v123 = v118 + *(v141 + 48);
      OUTLINED_FUNCTION_1_11();
      v80 = v124;
      sub_1D7E2B814();
      v144 = v121;
      *v80 = v121;
      v80[1] = v122;
      v125 = qword_1ECA0C270;
      sub_1D8190DB4();
      if (v125 != -1)
      {
        OUTLINED_FUNCTION_64_0();
        swift_once();
      }

      v115 &= v115 - 1;
      OUTLINED_FUNCTION_151();
      sub_1D7F4415C(v123, v144, v122);
      OUTLINED_FUNCTION_59_0();
      sub_1D7EF80A0();
      v93 = v63;
      OUTLINED_FUNCTION_150();
      v100 = v153;
      v112 = v133;
      v111 = v132;
    }

    v118 = v140;
    while (1)
    {
      v119 = v117 + 1;
      if (__OFADD__(v117, 1))
      {
        break;
      }

      if (v119 >= v143)
      {

        v92 = v146;
        goto LABEL_34;
      }

      v115 = *(v112 + 8 * v119);
      ++v117;
      if (v115)
      {
        v117 = v119;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_36:
    OUTLINED_FUNCTION_35_3(&qword_1ECA0C240);
  }

LABEL_34:
  v126 = OUTLINED_FUNCTION_112();
  v128 = sub_1D7EEF288(v126, v127, v145);
  (*(v93 + 8))(v142, v92);
  OUTLINED_FUNCTION_136();
  v129();
  OUTLINED_FUNCTION_42_1();
  v130(v100, v137);
  v80[10] = v128;
  OUTLINED_FUNCTION_1_11();
  sub_1D7E2B814();
  __swift_destroy_boxed_opaque_existential_1Tm(v91);
  OUTLINED_FUNCTION_3_20();
  sub_1D7E2BA7C();
LABEL_4:
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1D7EEF288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104 = a3;
  v6 = type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for JSONSchema(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v97 - v13;
  LOBYTE(v109[0]) = 0;
  sub_1D7EF8E88(0, &unk_1ECA0D028);
  v16 = v15;
  v17 = sub_1D81924C4();
  if (v3)
  {
    return a1;
  }

  v19 = v18;
  v101 = v14;
  v102 = a1;
  v98 = v8;
  v99 = v11;
  v103 = v16;
  v100 = a2;
  if (v18)
  {
    v104 = 0;
    v20 = v17 == 0x7961727261 && v18 == 0xE500000000000000;
    if (v20 || (a1 = v17, (sub_1D8192634() & 1) != 0))
    {

      LOBYTE(v109[0]) = 1;
      sub_1D7E2B754(&unk_1ECA0CFF8, type metadata accessor for JSONSchema, &protocol conformance descriptor for JSONSchema);
      v22 = v101;
      v21 = v102;
      v23 = v104;
      sub_1D8192524();
      if (v23)
      {
        sub_1D7E09C74(0, &qword_1EDBB2BE8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1D819FAC0;
        v41 = MEMORY[0x1E69E6158];
        *(v40 + 56) = MEMORY[0x1E69E6158];
        *(v40 + 32) = 0xD00000000000002BLL;
        *(v40 + 40) = 0x80000001D81C6070;
        swift_getErrorValue();
        a1 = v105;
        v42 = sub_1D8192754();
        *(v40 + 88) = v41;
        *(v40 + 64) = v42;
        *(v40 + 72) = v43;
        sub_1D81927B4();

        swift_willThrow();
      }

      else
      {
        v34 = sub_1D7EEFF10(v21, v22);
        v35 = type metadata accessor for JSONSchema.SchemaType.ArraySchema(0);
        a1 = swift_allocBox();
        v104 = v36;
        sub_1D7E2B814();
        sub_1D7E0E768(v100, v109);
        sub_1D7EEC6B4(v109, &unk_1ECA0D218, sub_1D7EF7078, &type metadata for JSONSchema.SchemaType.ArrayValidations.CodingKeys, sub_1D7EF7078, v37, v38, v39, v97, v98, SWORD2(v98), SBYTE6(v98), SHIBYTE(v98), v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
        v52 = v51;
        v54 = v53;
        v56 = v55;
        LODWORD(v103) = v57;
        sub_1D7E2BA7C();
        v58 = v104;
        sub_1D7EF6E5C();
        v59 = v58 + *(v35 + 20);
        *v59 = v52;
        *(v59 + 8) = v54 & 1;
        *(v59 + 16) = v56;
        *(v59 + 24) = v103 & 1;
        *(v58 + *(v35 + 24)) = v34;
      }

      return a1;
    }

    v30 = a1 == 0x6E61656C6F6F62 && v19 == 0xE700000000000000;
    if (v30 || (sub_1D8192634() & 1) != 0)
    {

      v31 = swift_allocObject();
      LOBYTE(v109[0]) = 8;
      v32 = v104;
      v33 = sub_1D81924D4();
      if (!v32)
      {
        *(v31 + 16) = v33;
        return v31 | 0x2000000000000000;
      }

LABEL_30:
      a1 = v32;
      swift_deallocUninitializedObject();
      return a1;
    }

    v45 = a1 == 0x72656765746E69 && v19 == 0xE700000000000000;
    if (v45 || (sub_1D8192634() & 1) != 0)
    {

      v46 = swift_allocObject();
      v47 = v100;
      sub_1D7E0E768(v100, v109);
      v32 = v104;
      sub_1D7EED0C4(v109, &unk_1ECA0D208, sub_1D7EF7024, &type metadata for JSONSchema.SchemaType.IntValidations.CodingKeys, sub_1D7EF7024, v48, v49, v50, v97, v98, SWORD2(v98), SBYTE6(v98), SHIBYTE(v98), v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
      if (v32)
      {
        goto LABEL_30;
      }

      LOBYTE(v109[0]) = 8;
      v61 = sub_1D81924F4();
      v63 = v62;
      sub_1D7E0E768(v47, v110);
      v74 = sub_1D7EE7AF0(v110, sub_1D7EE86A0, sub_1D7EF86C0);
      v76 = v75;
      memcpy(v109, v111, 0x49uLL);
      v63 &= 1u;
      v116 = v63;
      memcpy((v46 + 16), v109, 0x50uLL);
      *(v46 + 96) = v61;
      *(v46 + 104) = v63;
      *(v46 + 112) = v74;
      a1 = v46 | 0x4000000000000000;
LABEL_45:
      *(v46 + 120) = v76;
      return a1;
    }

    v60 = a1 == 1819047278 && v19 == 0xE400000000000000;
    if (v60 || (sub_1D8192634() & 1) != 0)
    {

      return 0xE000000000000000;
    }

    v64 = a1 == 0x7265626D756ELL && v19 == 0xE600000000000000;
    if (v64 || (sub_1D8192634() & 1) != 0)
    {

      v46 = swift_allocObject();
      v65 = v100;
      sub_1D7E0E768(v100, v109);
      v32 = v104;
      sub_1D7EED0C4(v109, &unk_1ECA0D1F8, sub_1D7EF6F74, &type metadata for JSONSchema.SchemaType.NumberValidations.CodingKeys, sub_1D7EF6F74, v66, v67, v68, v97, v98, SWORD2(v98), SBYTE6(v98), SHIBYTE(v98), v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
      if (v32)
      {
        goto LABEL_30;
      }

      LOBYTE(v109[0]) = 8;
      v69 = sub_1D81924E4();
      v71 = v70;
      sub_1D7E0E768(v65, v110);
      v72 = sub_1D7EE7AF0(v110, sub_1D7EE815C, sub_1D7EF887C);
      v76 = v73;
      memcpy(v109, __src, 0x49uLL);
      v71 &= 1u;
      v116 = v71;
      memcpy((v46 + 16), v109, 0x50uLL);
      *(v46 + 96) = v69;
      *(v46 + 104) = v71;
      *(v46 + 112) = v72;
      a1 = v46 | 0x6000000000000000;
      goto LABEL_45;
    }

    v77 = a1 == 0x7463656A626FLL && v19 == 0xE600000000000000;
    if (v77 || (sub_1D8192634() & 1) != 0)
    {

      v78 = v98;
      a1 = v102;
      v79 = v104;
      sub_1D7EF0ACC(v100, v98);
      if (!v79)
      {
        v89 = sub_1D7EF10F0(a1, v78);
        v90 = type metadata accessor for JSONSchema.SchemaType.ObjectSchema(0);
        v91 = swift_allocBox();
        v93 = v92;
        sub_1D7EF6E5C();
        *(v93 + *(v90 + 20)) = v89;
        return v91 | 0x8000000000000000;
      }

      return a1;
    }

    if (a1 == 0x676E69727473 && v19 == 0xE600000000000000)
    {
    }

    else
    {
      v81 = sub_1D8192634();

      if ((v81 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    v82 = swift_allocObject();
    sub_1D7E0E768(v100, v109);
    v83 = v104;
    sub_1D7EEC6B4(v109, &unk_1ECA0D1E8, sub_1D7EF6F20, &type metadata for JSONSchema.SchemaType.StringValidations.CodingKeys, sub_1D7EF6F20, v84, v85, v86, v97, v98, SWORD2(v98), SBYTE6(v98), SHIBYTE(v98), v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
    if (v83)
    {
      swift_deallocUninitializedObject();
    }

    else
    {
      v94 = v87;
      v95 = v88;
      LOBYTE(v109[0]) = 8;
      sub_1D81924C4();
      sub_1D7E0E768(v100, v109);
      sub_1D7EE7AF0(v109, sub_1D7EE7C18, sub_1D7EF8D04);
      LOBYTE(v109[0]) = v94 & 1;
      LOBYTE(v110[0]) = v95 & 1;
      sub_1D7EED90C();
      v96 = v114;
      *(v82 + 16) = v113;
      *(v82 + 32) = v96;
      *(v82 + 48) = v115[0];
      *(v82 + 57) = *(v115 + 9);
      return v82 | 0xC000000000000000;
    }

    return a1;
  }

  LOBYTE(v109[0]) = 6;
  v24 = sub_1D81924C4();
  v26 = v25;
  if (v25)
  {
    v27 = v24;
    if (sub_1D81910E4())
    {
      v109[0] = sub_1D818E764();
      v109[1] = v28;
      sub_1D8190DB4();
      MEMORY[0x1DA713260](47, 0xE100000000000000);

      sub_1D8190DB4();
      MEMORY[0x1DA713260](v27, v26);

      v27 = v109[0];
      v26 = v109[1];
    }

    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    *(v29 + 24) = v26;
    return v29 | 0xA000000000000000;
  }

LABEL_63:
  result = sub_1D81923A4();
  __break(1u);
  return result;
}

uint64_t sub_1D7EEFF10(uint64_t a1, uint64_t a2)
{
  sub_1D7E188DC(0, &unk_1ECA0D2D0);
  v8 = 8;
  sub_1D7EF8E88(0, &unk_1ECA0D028);
  sub_1D7EF85A8();
  v4 = sub_1D8192504();
  if (!v2)
  {
    if (v9)
    {
      MEMORY[0x1EEE9AC00](v4);
      v7[2] = a2;
      sub_1D7FFB658(sub_1D7EF8680, v7, v9);
      a2 = v6;
    }

    else
    {
      return 0;
    }
  }

  return a2;
}

void sub_1D7EF01F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_120();
  v99 = v22;
  OUTLINED_FUNCTION_7_10();
  sub_1D7E188DC(0, v23);
  OUTLINED_FUNCTION_50(v24);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_94();
  v27 = OUTLINED_FUNCTION_38_0(v26);
  v28 = type metadata accessor for JSONSchema.SchemaType.ObjectType(v27);
  v29 = OUTLINED_FUNCTION_50(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_2();
  v31 = OUTLINED_FUNCTION_38_0(v30);
  v97[0] = type metadata accessor for JSONSchema.SchemaType.ObjectSchema(v31);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_2();
  v34 = OUTLINED_FUNCTION_38_0(v33);
  v35 = type metadata accessor for JSONSchema(v34);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_165();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_124_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_125();
  MEMORY[0x1EEE9AC00](v42);
  v44 = v97 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v46 = OUTLINED_FUNCTION_149();
  v47 = type metadata accessor for JSONSchema.SchemaType.ArraySchema(v46);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_15();
  v51 = v50 - v49;
  v100 = v20;
  v52 = *(v20 + 80);
  switch(v52 >> 61)
  {
    case 1uLL:
      v65 = *((v52 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v66 = OUTLINED_FUNCTION_78_0();
      v68 = sub_1D7EF2818(v66, *(v67 - 256));
      OUTLINED_FUNCTION_1_11();
      sub_1D7E2B814();
      if (v68 == 2)
      {
        v68 = v65;
      }

      type metadata accessor for JSONSchemaValueBool(0);
      OUTLINED_FUNCTION_91_1();
      swift_allocObject();
      sub_1D7EFDC24(v21, v68);
      goto LABEL_21;
    case 2uLL:
      OUTLINED_FUNCTION_172(v52);
      sub_1D7EF7450(v102, v101);
      v61 = OUTLINED_FUNCTION_78_0();
      sub_1D7EF2BBC(v61, *(v62 - 256));
      OUTLINED_FUNCTION_1_11();
      sub_1D7E2B814();
      memcpy(v101, v102, 0x49uLL);
      type metadata accessor for JSONSchemaValueInteger(0);
      OUTLINED_FUNCTION_91_1();
      swift_allocObject();
      sub_1D7EFE224();
      goto LABEL_21;
    case 3uLL:
      OUTLINED_FUNCTION_172(v52);
      sub_1D7EF7418(v102, v101);
      v63 = OUTLINED_FUNCTION_78_0();
      sub_1D7EF333C(v63, *(v64 - 256));
      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_68();
      sub_1D7E2B814();
      memcpy(v101, v102, 0x49uLL);
      type metadata accessor for JSONSchemaValueNumber(0);
      OUTLINED_FUNCTION_91_1();
      swift_allocObject();
      sub_1D7EFEA6C();
      goto LABEL_21;
    case 4uLL:
      swift_projectBox();
      OUTLINED_FUNCTION_22_3();
      v59 = v97[3];
      sub_1D7E2B814();
      v60 = sub_1D7EF3800(v99, v59, v100);
      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_137();
      sub_1D7E2B814();
      OUTLINED_FUNCTION_12_6();
      sub_1D7E2B814();
      if (!v60)
      {
        sub_1D8190DB4();
      }

      type metadata accessor for JSONSchemaValueObject(0);
      OUTLINED_FUNCTION_91_1();
      swift_allocObject();
      sub_1D7EFFFEC();
      OUTLINED_FUNCTION_0_3();
      goto LABEL_17;
    case 5uLL:
      v69 = qword_1ECA0C270;
      sub_1D8190DB4();
      if (v69 != -1)
      {
        OUTLINED_FUNCTION_64_0();
        swift_once();
      }

      sub_1D8190DB4();
      v70 = v98;
      v71 = OUTLINED_FUNCTION_90_0();
      sub_1D7F442B8(v71, v72, v73, v74);

      if (__swift_getEnumTagSinglePayload(v70, 1, v35) == 1)
      {
        OUTLINED_FUNCTION_7_10();
        sub_1D7E70CE0();
        v102[0] = 0;
        v102[1] = 0xE000000000000000;
        sub_1D81921A4();

        v102[0] = 0xD00000000000001DLL;
        v102[1] = 0x80000001D81C5FA0;
        v95 = OUTLINED_FUNCTION_90_0();
        MEMORY[0x1DA713260](v95);

        OUTLINED_FUNCTION_166();
        v97[0] = 950;
LABEL_24:
        sub_1D81923A4();
        __break(1u);
      }

      else
      {

        OUTLINED_FUNCTION_21_2();
        sub_1D7EF6E5C();
        sub_1D7EF01F4(v99, v75, v76, v77, v78, v79, v80, v81, v97[0], v97[1], v97[2], v97[3], v97[4], v98, v99, v100, v101[0], v101[1], v101[2], v101[3]);
        OUTLINED_FUNCTION_3_20();
LABEL_17:
        sub_1D7E2BA7C();
LABEL_21:
        OUTLINED_FUNCTION_100();
      }

      return;
    case 6uLL:
      v98 = *((v52 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v82 = *((v52 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v83 = *((v52 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v84 = *((v52 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v85 = *((v52 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v86 = *((v52 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
      v87 = *((v52 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v88 = *((v52 & 0x1FFFFFFFFFFFFFFFLL) + 0x48);
      sub_1D8190DB4();
      sub_1D7ED06CC(v87, v88);
      v89 = OUTLINED_FUNCTION_78_0();
      v91 = sub_1D7EF4558(v89, *(v90 - 256));
      v93 = v92;
      OUTLINED_FUNCTION_1_11();
      v94 = v97[1];
      sub_1D7E2B814();
      if (v93)
      {

        v85 = v91;
        v86 = v93;
      }

      type metadata accessor for JSONSchemaValueString(0);
      OUTLINED_FUNCTION_91_1();
      swift_allocObject();
      LOBYTE(v102[0]) = v82;
      LOBYTE(v101[0]) = v84;
      sub_1D7EFF1F0(v94, v98, v82, v83, v84, v87, v88, v85, v86, v96, v97[0], v97[1], v97[2], v97[3], v97[4], v98, v99, v100, v101[0], v101[1], v101[2]);
      goto LABEL_21;
    case 7uLL:
      OUTLINED_FUNCTION_166();
      v97[0] = 873;
      goto LABEL_24;
    default:
      swift_projectBox();
      OUTLINED_FUNCTION_20_1();
      sub_1D7E2B814();
      v53 = sub_1D7EF22B0(v99, v51, v100);
      sub_1D7E2B814();
      sub_1D7E2B814();
      v54 = v51 + *(v47 + 20);
      v55 = *v54;
      v56 = *(v54 + 8);
      v57 = *(v54 + 16);
      v58 = *(v54 + 24);
      if (!v53)
      {
        v53 = *(v51 + *(v47 + 24));
        sub_1D8190DB4();
      }

      type metadata accessor for JSONSchemaValueArray(0);
      OUTLINED_FUNCTION_91_1();
      swift_allocObject();
      LOBYTE(v102[0]) = v56;
      LOBYTE(v101[0]) = v58;
      sub_1D7EFD548(v20, v44, v55, v56, v57, v58, v53);
      OUTLINED_FUNCTION_6_5();
      goto LABEL_17;
  }
}

void *sub_1D7EF0ACC@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v34 = a1;
  sub_1D7E188DC(0, &qword_1ECA0D2A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for JSONSchema(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  sub_1D7E145C0(0, &unk_1ECA0D048);
  HIBYTE(v36) = 3;
  sub_1D7EF8E88(0, &unk_1ECA0D028);
  sub_1D7EF4FBC();
  result = sub_1D8192504();
  if (!v2)
  {
    v32 = v12;
    v33 = v9;
    v14 = v34;
    v15 = v35[0];
    if (v35[0])
    {
      sub_1D7E09C74(0, &qword_1EDBB3330, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      HIBYTE(v36) = 4;
      sub_1D7EF8B88();
      sub_1D8192504();
      if (v35[0])
      {
        v17 = v35[0];
      }

      else
      {
        v17 = MEMORY[0x1E69E7CC0];
      }

      sub_1D7E63668(0, &qword_1EDBB3460, MEMORY[0x1E69E6158], MEMORY[0x1E69E5E28]);
      HIBYTE(v36) = 5;
      sub_1D7EF8C1C();
      sub_1D8192504();
      v18 = v35[0];
      if (!v35[0])
      {
        v18 = sub_1D8190D94();
      }

      *a2 = v15;
      a2[1] = v17;
      a2[2] = v18;
      type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
    }

    else
    {
      v35[0] = 2;
      sub_1D7E2B754(&unk_1ECA0CFF8, type metadata accessor for JSONSchema, &protocol conformance descriptor for JSONSchema);
      sub_1D8192504();
      if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
      {
        sub_1D7E70CE0();
        sub_1D7EF4F68();
        swift_allocError();
        *v16 = 0;
        v16[1] = 0;
        return swift_willThrow();
      }

      sub_1D7EF6E5C();
      sub_1D7E2B814();
      sub_1D7E0E768(v14, v35);
      sub_1D7EEC6B4(v35, &unk_1ECA0D1D8, sub_1D7EF6ECC, &type metadata for JSONSchema.SchemaType.ObjectValidations.CodingKeys, sub_1D7EF6ECC, v19, v20, v21, v32, v33, SWORD2(v33), SBYTE6(v33), SHIBYTE(v33), v34, v35[0], v35[1], v35[2], v35[3], v35[4], v35[5], v36, v37, v38);
      v23 = v22;
      v25 = v24;
      LODWORD(v34) = v26;
      v28 = v27;
      sub_1D7EF5274(0);
      HIBYTE(v36) = 9;
      sub_1D7EF8A24(&qword_1ECA0D380, sub_1D7EF5274);
      sub_1D8192504();
      sub_1D7E2BA7C();
      v29 = v35[0];
      sub_1D7EF6E5C();
      v30 = type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject(0);
      v31 = a2 + *(v30 + 20);
      *v31 = v23;
      v31[8] = v25 & 1;
      *(v31 + 2) = v28;
      v31[24] = v34 & 1;
      *(a2 + *(v30 + 24)) = v29;
      type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
    }

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

char *sub_1D7EF10F0(uint64_t a1, char *a2)
{
  v146 = a2;
  v2 = type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v148 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E188DC(0, &qword_1ECA0CFE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v147 = &v132 - v5;
  sub_1D7E188DC(0, &qword_1ECA0D2A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v145 = &v132 - v7;
  v144 = type metadata accessor for JSONSchema(0);
  MEMORY[0x1EEE9AC00](v144);
  v9 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7EF803C(0, &qword_1ECA0D2B8);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v132 - v15;
  v17 = type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7E145C0(0, &unk_1ECA0D370);
  LOBYTE(v153) = 8;
  sub_1D7EF8E88(0, &unk_1ECA0D028);
  sub_1D7EF8AA8();
  v20 = v149;
  sub_1D8192504();
  if (v20)
  {
    return v9;
  }

  v143 = v13;
  v138 = v9;
  v139 = v16;
  v22 = v150;
  if (!v150)
  {
    return 0;
  }

  v140 = v11;
  v149 = 0;
  sub_1D7E2B814();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v142 = v22;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D7EF6E5C();
    v24 = v22 + 64;
    v25 = 1 << *(v22 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v22 + 64);
    v28 = (v25 + 63) >> 6;
    sub_1D8190DB4();
    v29 = 0;
    v9 = MEMORY[0x1E69E7CC8];
    v138 = v28;
    v139 = (v22 + 64);
    if (v27)
    {
      while (1)
      {
        v146 = v9;
LABEL_13:
        v31 = __clz(__rbit64(v27)) | (v29 << 6);
        v32 = *(v22 + 56);
        v33 = (*(v22 + 48) + 16 * v31);
        v34 = *v33;
        v35 = v33[1];
        v36 = sub_1D818F824();
        v37 = *(v36 - 8);
        v9 = *(v37 + 16);
        v38 = v32 + *(v37 + 72) * v31;
        v39 = *(v140 + 48);
        v40 = v143;
        (v9)(v143 + v39, v38, v36);
        v144 = v35;
        v145 = v34;
        *v40 = v34;
        v40[1] = v35;
        sub_1D8190DB4();
        v41 = v149;
        sub_1D7EEA35C();
        v149 = v41;
        if (v41)
        {
          break;
        }

        v42 = v40 + v39;
        v43 = v147;
        (v9)(v147, v42, v36);
        __swift_storeEnumTagSinglePayload(v43, 0, 1, v36);
        sub_1D7EF01F4(v43, v44, v45, v46, v47, v48, v49, v50, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143);
        v52 = v51;
        sub_1D7E70CE0();
        sub_1D7E188DC(0, &qword_1ECA0D298);
        swift_allocObject();
        v141 = sub_1D804F474(v52, 1, v53);
        v54 = v146;
        swift_isUniquelyReferenced_nonNull_native();
        v150 = v54;
        v55 = v145;
        v56 = v144;
        v57 = sub_1D7E11428(v145, v144);
        if (__OFADD__(*(v54 + 2), (v58 & 1) == 0))
        {
          goto LABEL_63;
        }

        v59 = v57;
        v60 = v58;
        sub_1D7EF7340(0);
        if (sub_1D8192374())
        {
          v61 = sub_1D7E11428(v55, v56);
          if ((v60 & 1) != (v62 & 1))
          {
            goto LABEL_65;
          }

          v59 = v61;
        }

        v63 = v141;
        v9 = v150;
        if (v60)
        {
          *(*(v150 + 56) + 8 * v59) = v141;
        }

        else
        {
          *(v150 + 8 * (v59 >> 6) + 64) |= 1 << v59;
          v64 = (*(v9 + 6) + 16 * v59);
          *v64 = v55;
          v64[1] = v56;
          *(*(v9 + 7) + 8 * v59) = v63;
          v65 = *(v9 + 2);
          v66 = __OFADD__(v65, 1);
          v67 = v65 + 1;
          if (v66)
          {
            goto LABEL_64;
          }

          *(v9 + 2) = v67;
          sub_1D8190DB4();
        }

        v28 = v138;
        v27 &= v27 - 1;
        sub_1D7EF80A0();
        v22 = v142;
        v24 = v139;
        if (!v27)
        {
          goto LABEL_9;
        }
      }

      sub_1D7EF80A0();

      sub_1D7E2BA7C();

      return v9;
    }

LABEL_9:
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30 >= v28)
      {

        sub_1D7E2BA7C();
        return v9;
      }

      v27 = *(v24 + 8 * v30);
      ++v29;
      if (v27)
      {
        v146 = v9;
        v29 = v30;
        goto LABEL_13;
      }
    }

LABEL_61:
    __break(1u);
  }

  else
  {
    v68 = *v19;
    v136 = v19[1];
    v133 = v19[2];
    v69 = v68 + 64;
    v70 = 1 << *(v68 + 32);
    v71 = -1;
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    v72 = v71 & *(v68 + 64);
    v73 = (v70 + 63) >> 6;
    v148 = v68;
    isUniquelyReferenced_nonNull_native = sub_1D8190DB4();
    v75 = 0;
    v76 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v77 = v75;
      if (!v72)
      {
        break;
      }

LABEL_32:
      v78 = (*(v148 + 48) + ((v75 << 10) | (16 * __clz(__rbit64(v72)))));
      v79 = *v78;
      v80 = v78[1];
      v72 &= v72 - 1;
      v150 = *v78;
      v151 = v80;
      MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
      *(&v132 - 2) = &v150;
      sub_1D8190DB4();
      v81 = v149;
      v82 = sub_1D7F8F0B0();
      v149 = v81;
      if (v82)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v153 = v76;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D7F08E34(0, *(v76 + 16) + 1, 1);
          v76 = v153;
        }

        v84 = *(v76 + 16);
        v83 = *(v76 + 24);
        v85 = v84 + 1;
        if (v84 >= v83 >> 1)
        {
          v87 = v84 + 1;
          v146 = v84;
          sub_1D7F08E34(v83 > 1, (v84 + 1), 1);
          v85 = v87;
          v84 = v146;
          v76 = v153;
        }

        *(v76 + 16) = v85;
        v86 = v76 + 16 * v84;
        *(v86 + 32) = v79;
        *(v86 + 40) = v80;
      }

      else
      {
      }
    }

    while (1)
    {
      v75 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        __break(1u);
        goto LABEL_61;
      }

      if (v75 >= v73)
      {
        break;
      }

      v72 = *(v69 + 8 * v75);
      ++v77;
      if (v72)
      {
        goto LABEL_32;
      }
    }

    v155 = sub_1D7E919E0(v76);
    v88 = v142;
    v89 = v142 + 64;
    v90 = 1 << *(v142 + 32);
    v91 = -1;
    if (v90 < 64)
    {
      v91 = ~(-1 << v90);
    }

    v92 = v91 & *(v142 + 64);
    v93 = (v90 + 63) >> 6;
    sub_1D8190DB4();
    v94 = 0;
    v9 = MEMORY[0x1E69E7CC8];
    v134 = v93;
    v135 = v89;
    if (v92)
    {
      while (1)
      {
        v146 = v9;
        v95 = v94;
LABEL_47:
        v96 = __clz(__rbit64(v92)) | (v95 << 6);
        v97 = *(v88 + 56);
        v98 = (*(v88 + 48) + 16 * v96);
        v99 = *v98;
        v100 = v98[1];
        v101 = sub_1D818F824();
        v102 = *(v101 - 8);
        v103 = v97 + *(v102 + 72) * v96;
        v104 = v139;
        v105 = *(v140 + 48);
        v137 = *(v102 + 16);
        v137(v139 + v105, v103, v101);
        *v104 = v99;
        v104[1] = v100;
        sub_1D8190DB4();
        v106 = v145;
        v141 = v99;
        v143 = v100;
        v107 = v100;
        v108 = v148;
        sub_1D7EDF2C0(v99, v107, v148);
        if (__swift_getEnumTagSinglePayload(v106, 1, v144) == 1)
        {
          sub_1D7E70CE0();
          v150 = 0;
          v151 = 0xE000000000000000;
          sub_1D81921A4();
          v153 = v150;
          v154 = v151;
          MEMORY[0x1DA713260](0xD000000000000015, 0x80000001D81C60E0);
          MEMORY[0x1DA713260](v141, v143);
          MEMORY[0x1DA713260](0xD000000000000023, 0x80000001D81C6290);
          v9 = v136;
          v150 = v108;
          v151 = v136;
          v152 = v133;
          sub_1D8192334();
          v129 = v153;
          v130 = v154;
          sub_1D7EF4F68();
          swift_allocError();
          *v131 = v129;
          v131[1] = v130;
          swift_willThrow();
          goto LABEL_58;
        }

        sub_1D7EF6E5C();
        v109 = v149;
        sub_1D7EEA35C();
        v149 = v109;
        if (v109)
        {
          break;
        }

        v92 &= v92 - 1;
        sub_1D800C0EC(v141, v143);

        v110 = v104 + v105;
        v111 = v147;
        v137(v147, v110, v101);
        __swift_storeEnumTagSinglePayload(v111, 0, 1, v101);
        sub_1D7EF01F4(v111, v112, v113, v114, v115, v116, v117, v118, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143);
        v120 = v119;
        sub_1D7E70CE0();
        sub_1D7E188DC(0, &qword_1ECA0D298);
        swift_allocObject();
        sub_1D804F474(v120, 1, v121);
        v122 = v146;
        swift_isUniquelyReferenced_nonNull_native();
        v150 = v122;
        sub_1D7E1445C();
        v9 = v150;
        sub_1D7E2BA7C();
        sub_1D7EF80A0();
        v94 = v95;
        v88 = v142;
        v93 = v134;
        v89 = v135;
        if (!v92)
        {
          goto LABEL_43;
        }
      }

      sub_1D7E2BA7C();
      v9 = v136;
LABEL_58:

      sub_1D7EF80A0();

LABEL_59:

      return v9;
    }

LABEL_43:
    while (1)
    {
      v95 = v94 + 1;
      if (__OFADD__(v94, 1))
      {
        break;
      }

      if (v95 >= v93)
      {

        if (*(v155 + 16))
        {
          v150 = 0;
          v151 = 0xE000000000000000;
          sub_1D81921A4();

          v150 = 0xD000000000000020;
          v151 = 0x80000001D81C6120;
          v123 = sub_1D8191624();
          MEMORY[0x1DA713260](v123);

          MEMORY[0x1DA713260](0x656A626F206E6920, 0xEB00000000207463);
          sub_1D818F824();
          v124 = sub_1D8190D64();
          v126 = v125;

          MEMORY[0x1DA713260](v124, v126);

          v127 = v150;
          v9 = v151;
          sub_1D7EF4F68();
          swift_allocError();
          *v128 = v127;
          v128[1] = v9;
          swift_willThrow();
        }

        goto LABEL_59;
      }

      v92 = *(v89 + 8 * v95);
      ++v94;
      if (v92)
      {
        v146 = v9;
        goto LABEL_47;
      }
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = sub_1D8192714();
  __break(1u);
  return result;
}

uint64_t static JSONSchema.== infix(_:_:)()
{
  OUTLINED_FUNCTION_60();
  memcpy(v4, v1, sizeof(v4));
  memcpy(__dst, v0, sizeof(__dst));
  if ((sub_1D7EEB978() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D7EEDCE0(v1[10], v0[10]) & 1) == 0)
  {
    return 0;
  }

  v2 = type metadata accessor for JSONSchema(0);
  OUTLINED_FUNCTION_81_1(v2[6]);
  if ((sub_1D818F804() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_81_1(v2[7]);
  if ((sub_1D818E774() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_81_1(v2[8]);

  return sub_1D818E5F4();
}

uint64_t sub_1D7EF2138()
{
  v2 = type metadata accessor for JSONSchema.SchemaType.ObjectSchema(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v4 = OUTLINED_FUNCTION_127();
  v5 = type metadata accessor for JSONSchema.SchemaType.ArraySchema(v4);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  v10 = *(v0 + 80);
  v11 = 0;
  switch(v10 >> 61)
  {
    case 1uLL:
      v13 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == 2;
      goto LABEL_6;
    case 2uLL:
    case 3uLL:
      v11 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x68) ^ 1;
      return v11 & 1;
    case 4uLL:
      swift_projectBox();
      OUTLINED_FUNCTION_22_3();
      sub_1D7E2B814();
      v12 = *(v1 + *(v2 + 20));
      sub_1D8190DB4();
      OUTLINED_FUNCTION_0_3();
      goto LABEL_10;
    case 5uLL:
    case 7uLL:
      return v11 & 1;
    case 6uLL:
      v13 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x38) == 0;
LABEL_6:
      v11 = !v13;
      return v11 & 1;
    default:
      swift_projectBox();
      OUTLINED_FUNCTION_20_1();
      sub_1D7E2B814();
      v12 = *(v9 + *(v5 + 24));
      sub_1D8190DB4();
      OUTLINED_FUNCTION_6_5();
LABEL_10:
      sub_1D7E2BA7C();
      if (v12)
      {

        v11 = 1;
      }

      else
      {
        v11 = 0;
      }

      return v11 & 1;
  }
}

uint64_t sub_1D7EF22B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7E188DC(0, &qword_1ECA0CFE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v23 - v7;
  v9 = sub_1D818F824();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v23 - v14;
  sub_1D7EF4C4C(a1, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1D7E70CE0();
    return 0;
  }

  (*(v10 + 32))(v15, v8, v9);
  (*(v10 + 16))(v12, v15, v9);
  if ((*(v10 + 88))(v12, v9) == *MEMORY[0x1E69D6A30])
  {
    v17 = (*(v10 + 96))(v12, v9);
    v18 = *(*v12 + 16);
    MEMORY[0x1EEE9AC00](v17);
    v22 = a2;
    sub_1D8190DB4();
    sub_1D7FFB77C(sub_1D7EF7488, &v23[-4], v18);
    v16 = v19;
    (*(v10 + 8))(v15, v9);

    return v16;
  }

  v23[2] = 0;
  v23[3] = 0xE000000000000000;
  sub_1D81921A4();
  MEMORY[0x1DA713260](0xD000000000000010, 0x80000001D81C5FE0);
  sub_1D7E2B754(&unk_1ECA0D2A8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A78]);
  v21 = sub_1D81925B4();
  MEMORY[0x1DA713260](v21);

  MEMORY[0x1DA713260](0xD00000000000001ALL, 0x80000001D81C6000);
  v23[1] = *(a3 + 80);
  sub_1D8192334();
  result = sub_1D81923A4();
  __break(1u);
  return result;
}

uint64_t sub_1D7EF26BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D7E188DC(0, &qword_1ECA0CFE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = var50 - v5;
  v7 = sub_1D818F824();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  sub_1D7EF01F4(v6, v8, v9, v10, v11, v12, v13, v14, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  v16 = v15;
  result = sub_1D7E70CE0();
  *a2 = v16;
  return result;
}

uint64_t sub_1D7EF2818(uint64_t a1, uint64_t a2)
{
  sub_1D7E188DC(0, &qword_1ECA0CFE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v17 - v5;
  v7 = sub_1D818F824();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  sub_1D7EF4C4C(a1, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1D7E70CE0();
    return 2;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v10, v13, v7);
    v15 = (*(v8 + 88))(v10, v7);
    if (v15 == *MEMORY[0x1E69D6A28])
    {
      (*(v8 + 8))(v13, v7);
      return 1;
    }

    else if (v15 == *MEMORY[0x1E69D6A38])
    {
      (*(v8 + 8))(v13, v7);
      return 0;
    }

    else
    {
      v17[2] = 0;
      v17[3] = 0xE000000000000000;
      sub_1D81921A4();
      MEMORY[0x1DA713260](0xD000000000000010, 0x80000001D81C5FE0);
      sub_1D7E2B754(&unk_1ECA0D2A8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A78]);
      v16 = sub_1D81925B4();
      MEMORY[0x1DA713260](v16);

      MEMORY[0x1DA713260](0xD00000000000001ALL, 0x80000001D81C6000);
      v17[1] = *(a2 + 80);
      sub_1D8192334();
      result = sub_1D81923A4();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D7EF2BBC(uint64_t a1, uint64_t a2)
{
  sub_1D7E188DC(0, &qword_1ECA0CFE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v44 - v5;
  v7 = sub_1D818F824();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  sub_1D7EF4C4C(a1, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1D7E70CE0();
    return 0;
  }

  (*(v8 + 32))(v13, v6, v7);
  (*(v8 + 16))(v10, v13, v7);
  if ((*(v8 + 88))(v10, v7) != *MEMORY[0x1E69D6A40])
  {
    goto LABEL_77;
  }

  (*(v8 + 96))(v10, v7);
  v16 = *(*v10 + 16);
  v15 = *(*v10 + 24);
  v17 = HIBYTE(v15) & 0xF;
  v18 = v16 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    sub_1D8190DB4();
    goto LABEL_77;
  }

  if ((v15 & 0x1000000000000000) != 0)
  {
    swift_bridgeObjectRetain_n();
    v14 = sub_1D7EF74A8(v16, v15, 10);
    v42 = v41;

    if ((v42 & 1) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_77;
  }

  if ((v15 & 0x2000000000000000) != 0)
  {
    v46 = v16;
    v47 = v15 & 0xFFFFFFFFFFFFFFLL;
    if (v16 == 43)
    {
      if (v17)
      {
        if (--v17)
        {
          v14 = 0;
          v31 = &v46 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              break;
            }

            v14 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v17)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_74:
      __break(1u);
      goto LABEL_77;
    }

    if (v16 != 45)
    {
      if (v17)
      {
        v14 = 0;
        v36 = &v46;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          v38 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v38 + v37;
          if (__OFADD__(v38, v37))
          {
            break;
          }

          v36 = (v36 + 1);
          if (!--v17)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v17)
    {
      if (--v17)
      {
        v14 = 0;
        v25 = &v46 + 1;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v27 - v26;
          if (__OFSUB__(v27, v26))
          {
            break;
          }

          ++v25;
          if (!--v17)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_72;
  }

  if ((v16 & 0x1000000000000000) != 0)
  {
    v20 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v20 = sub_1D8192254();
  }

  v21 = *v20;
  if (v21 == 43)
  {
    if (v18 >= 1)
    {
      v17 = v18 - 1;
      if (v18 != 1)
      {
        v14 = 0;
        if (v20)
        {
          v28 = v20 + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              goto LABEL_64;
            }

            v30 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              goto LABEL_64;
            }

            v14 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              goto LABEL_64;
            }

            ++v28;
            if (!--v17)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_56;
      }

      goto LABEL_64;
    }

    goto LABEL_73;
  }

  if (v21 == 45)
  {
    if (v18 >= 1)
    {
      v17 = v18 - 1;
      if (v18 != 1)
      {
        v14 = 0;
        if (v20)
        {
          v22 = v20 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              goto LABEL_64;
            }

            v24 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              goto LABEL_64;
            }

            v14 = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              goto LABEL_64;
            }

            ++v22;
            if (!--v17)
            {
              goto LABEL_65;
            }
          }
        }

LABEL_56:
        LOBYTE(v17) = 0;
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v18)
  {
    v14 = 0;
    if (v20)
    {
      while (1)
      {
        v34 = *v20 - 48;
        if (v34 > 9)
        {
          goto LABEL_64;
        }

        v35 = 10 * v14;
        if ((v14 * 10) >> 64 != (10 * v14) >> 63)
        {
          goto LABEL_64;
        }

        v14 = v35 + v34;
        if (__OFADD__(v35, v34))
        {
          goto LABEL_64;
        }

        ++v20;
        if (!--v18)
        {
          goto LABEL_56;
        }
      }
    }

    goto LABEL_56;
  }

LABEL_64:
  v14 = 0;
  LOBYTE(v17) = 1;
LABEL_65:
  LOBYTE(v45) = v17;
  v39 = v17;
  sub_1D8190DB4();
  if ((v39 & 1) == 0)
  {
LABEL_66:

    (*(v8 + 8))(v13, v7);

    return v14;
  }

LABEL_77:
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1D81921A4();
  MEMORY[0x1DA713260](0xD000000000000010, 0x80000001D81C5FE0);
  sub_1D7E2B754(&unk_1ECA0D2A8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A78]);
  v43 = sub_1D81925B4();
  MEMORY[0x1DA713260](v43);

  MEMORY[0x1DA713260](0xD00000000000001ALL, 0x80000001D81C6000);
  v45 = *(a2 + 80);
  sub_1D8192334();
  result = sub_1D81923A4();
  __break(1u);
  return result;
}

uint64_t sub_1D7EF333C(uint64_t a1, uint64_t a2)
{
  sub_1D7E188DC(0, &qword_1ECA0CFE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v22 - v5;
  v7 = sub_1D818F824();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  sub_1D7EF4C4C(a1, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1D7E70CE0();
    return 0;
  }

  (*(v8 + 32))(v13, v6, v7);
  (*(v8 + 16))(v10, v13, v7);
  if ((*(v8 + 88))(v10, v7) == *MEMORY[0x1E69D6A40])
  {
    (*(v8 + 96))(v10, v7);
    v15 = *v10;
    v17 = *(*v10 + 16);
    v16 = *(v15 + 24);
    swift_bridgeObjectRetain_n();
    v18 = sub_1D7EEB700(v17, v16);
    if ((v19 & 1) == 0)
    {
      v14 = v18;
      (*(v8 + 8))(v13, v7);

      return v14;
    }
  }

  v22[2] = 0;
  v22[3] = 0xE000000000000000;
  sub_1D81921A4();
  MEMORY[0x1DA713260](0xD000000000000010, 0x80000001D81C5FE0);
  sub_1D7E2B754(&unk_1ECA0D2A8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A78]);
  v21 = sub_1D81925B4();
  MEMORY[0x1DA713260](v21);

  MEMORY[0x1DA713260](0xD00000000000001ALL, 0x80000001D81C6000);
  v22[1] = *(a2 + 80);
  sub_1D8192334();
  result = sub_1D81923A4();
  __break(1u);
  return result;
}

void *sub_1D7EF3800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v114 = a2;
  v5 = type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v112 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for JSONSchema(0);
  v110 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v109 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v117 = &v104 - v10;
  sub_1D7EF803C(0, &qword_1ECA0D2B8);
  v119 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v116 = (&v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v111 = &v104 - v14;
  v15 = type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7E188DC(0, &qword_1ECA0CFE0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v118 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v104 - v21;
  v23 = sub_1D818F824();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v104 - v28;
  sub_1D7EF4C4C(a1, v22);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) != 1)
  {
    (*(v24 + 32))(v29, v22, v23);
    v120 = *(v24 + 16);
    v121 = v24 + 16;
    v120(v26, v29, v23);
    if ((*(v24 + 88))(v26, v23) != *MEMORY[0x1E69D6A48])
    {
LABEL_54:
      v123 = 0;
      v124 = 0xE000000000000000;
      sub_1D81921A4();
      MEMORY[0x1DA713260](0xD000000000000010, 0x80000001D81C5FE0);
      sub_1D7E2B754(&unk_1ECA0D2A8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A78]);
      v103 = sub_1D81925B4();
      MEMORY[0x1DA713260](v103);

      MEMORY[0x1DA713260](0xD00000000000001ALL, 0x80000001D81C6000);
      v122 = *(a3 + 80);
      sub_1D8192334();
      goto LABEL_55;
    }

    v107 = v29;
    v115 = v24;
    (*(v24 + 96))(v26, v23);
    v106 = *v26;
    v31 = *(v106 + 16);
    sub_1D7E2B814();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v113 = v31;
    v114 = v23;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D7EF6E5C();
      v33 = (v31 + 64);
      v34 = 1 << *(v31 + 32);
      v35 = -1;
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      v36 = v35 & *(v31 + 64);
      v37 = (v34 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v38 = 0;
      v30 = MEMORY[0x1E69E7CC8];
      v117 = (v31 + 64);
      v111 = v37;
      if (v36)
      {
LABEL_12:
        do
        {
          v40 = __clz(__rbit64(v36)) | (v38 << 6);
          v41 = *(v31 + 56);
          v42 = (*(v31 + 48) + 16 * v40);
          v44 = *v42;
          v43 = v42[1];
          v45 = v116;
          v46 = v120;
          v47 = *(v119 + 48);
          v22 = v121;
          v120((v116 + v47), (v41 + *(v115 + 72) * v40), v23);
          *v45 = v44;
          v45[1] = v43;
          v48 = v45 + v47;
          v49 = v118;
          v46(v118, v48, v23);
          __swift_storeEnumTagSinglePayload(v49, 0, 1, v23);
          sub_1D8190DB4();
          sub_1D7EF01F4(v49, v50, v51, v52, v53, v54, v55, v56, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
          v58 = v57;
          sub_1D7E70CE0();
          sub_1D7E188DC(0, &qword_1ECA0D298);
          swift_allocObject();
          a1 = sub_1D804F474(v58, 1, v59);
          swift_isUniquelyReferenced_nonNull_native();
          v123 = v30;
          v60 = sub_1D7E11428(v44, v43);
          if (__OFADD__(v30[2], (v61 & 1) == 0))
          {
            goto LABEL_48;
          }

          v22 = v60;
          a3 = v61;
          sub_1D7EF7340(0);
          if (sub_1D8192374())
          {
            v62 = sub_1D7E11428(v44, v43);
            v23 = v114;
            if ((a3 & 1) != (v63 & 1))
            {
              goto LABEL_53;
            }

            v22 = v62;
          }

          else
          {
            v23 = v114;
          }

          v30 = v123;
          if (a3)
          {
            *(*(v123 + 56) + 8 * v22) = a1;
          }

          else
          {
            *(v123 + 8 * (v22 >> 6) + 64) |= 1 << v22;
            v64 = (v30[6] + 16 * v22);
            *v64 = v44;
            v64[1] = v43;
            *(v30[7] + 8 * v22) = a1;
            v65 = v30[2];
            v66 = __OFADD__(v65, 1);
            v67 = v65 + 1;
            if (v66)
            {
              goto LABEL_50;
            }

            v30[2] = v67;
            sub_1D8190DB4();
          }

          v36 &= v36 - 1;
          sub_1D7EF80A0();
          v31 = v113;
          v33 = v117;
          v37 = v111;
        }

        while (v36);
      }

      while (1)
      {
        v39 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v39 >= v37)
        {

          (*(v115 + 8))(v107, v23);

          sub_1D8190DB4();
          sub_1D7E2BA7C();

          return v30;
        }

        v36 = *&v33[8 * v39];
        ++v38;
        if (v36)
        {
          v38 = v39;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
      v68 = v17[1];
      v116 = *v17;
      v104 = v17[2];
      v105 = v68;
      v69 = v31 + 64;
      v70 = 1 << *(v31 + 32);
      v71 = -1;
      if (v70 < 64)
      {
        v71 = ~(-1 << v70);
      }

      v72 = v71 & *(v31 + 64);
      v73 = (v70 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v74 = 0;
      v30 = MEMORY[0x1E69E7CC8];
      v75 = v111;
      v112 = v31 + 64;
      v108 = v73;
      if (v72)
      {
LABEL_30:
        do
        {
          v77 = __clz(__rbit64(v72)) | (v74 << 6);
          v78 = (*(v31 + 48) + 16 * v77);
          a1 = *v78;
          v22 = v78[1];
          v79 = *(v119 + 48);
          v120(&v75[v79], (*(v31 + 56) + *(v115 + 72) * v77), v23);
          *v75 = a1;
          *(v75 + 1) = v22;
          v80 = v116[2];
          sub_1D8190DB4();
          if (!v80)
          {
            goto LABEL_52;
          }

          sub_1D7E11428(a1, v22);
          if ((v81 & 1) == 0)
          {
            goto LABEL_52;
          }

          sub_1D7E2B814();
          sub_1D7EF6E5C();
          v82 = v118;
          v120(v118, &v75[v79], v23);
          __swift_storeEnumTagSinglePayload(v82, 0, 1, v23);
          sub_1D7EF01F4(v82, v83, v84, v85, v86, v87, v88, v89, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
          v91 = v90;
          sub_1D7E70CE0();
          sub_1D7E188DC(0, &qword_1ECA0D298);
          swift_allocObject();
          v93 = sub_1D804F474(v91, 1, v92);
          swift_isUniquelyReferenced_nonNull_native();
          v123 = v30;
          v94 = sub_1D7E11428(a1, v22);
          if (__OFADD__(v30[2], (v95 & 1) == 0))
          {
            goto LABEL_49;
          }

          v96 = v94;
          a3 = v95;
          sub_1D7EF7340(0);
          if (sub_1D8192374())
          {
            v97 = sub_1D7E11428(a1, v22);
            v23 = v114;
            if ((a3 & 1) != (v98 & 1))
            {
LABEL_53:
              sub_1D8192714();
              __break(1u);
              goto LABEL_54;
            }

            v96 = v97;
          }

          else
          {
            v23 = v114;
          }

          v30 = v123;
          if (a3)
          {
            *(*(v123 + 56) + 8 * v96) = v93;
          }

          else
          {
            *(v123 + 8 * (v96 >> 6) + 64) |= 1 << v96;
            v99 = (v30[6] + 16 * v96);
            *v99 = a1;
            v99[1] = v22;
            *(v30[7] + 8 * v96) = v93;
            v100 = v30[2];
            v66 = __OFADD__(v100, 1);
            v101 = v100 + 1;
            if (v66)
            {
              goto LABEL_51;
            }

            v30[2] = v101;
            sub_1D8190DB4();
          }

          v72 &= v72 - 1;
          sub_1D7E2BA7C();
          v75 = v111;
          sub_1D7EF80A0();
          v69 = v112;
          v31 = v113;
          v73 = v108;
        }

        while (v72);
      }

      while (1)
      {
        v76 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          break;
        }

        if (v76 >= v73)
        {

          (*(v115 + 8))(v107, v23);

          return v30;
        }

        v72 = *(v69 + 8 * v76);
        ++v74;
        if (v72)
        {
          v74 = v76;
          goto LABEL_30;
        }
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    v123 = 0;
    v124 = 0xE000000000000000;
    sub_1D81921A4();

    v123 = 0xD000000000000028;
    v124 = 0x80000001D81C6020;
    MEMORY[0x1DA713260](a1, v22);
LABEL_55:
    result = sub_1D81923A4();
    __break(1u);
    return result;
  }

  sub_1D7E70CE0();
  return 0;
}