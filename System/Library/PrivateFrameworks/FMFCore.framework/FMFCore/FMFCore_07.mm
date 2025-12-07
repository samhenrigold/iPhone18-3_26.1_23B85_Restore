void sub_24A4125CC(uint64_t *a1@<X8>)
{
  v2 = 0x53444E45495246;
  if (*v1)
  {
    v2 = 0x454E4F5952455645;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24A412644(uint64_t a1)
{
  sub_24A4AB8F0();
}

unint64_t sub_24A412758@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A413028(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A412788(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006E6F6974;
  v4 = 0x61636F4C65646968;
  v5 = 0xD000000000000013;
  v6 = 0x800000024A4AE5F0;
  v7 = 0xEC0000006C69616DLL;
  v8 = 0x457972616D697270;
  if (v2 != 4)
  {
    v8 = 0x657469726F766166;
    v7 = 0xE900000000000073;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  if (v2 == 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x800000024A4AE5D0;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x800000024A4AE5B0;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_24A412864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A413028(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A412898(uint64_t a1)
{
  v2 = sub_24A3831D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A4128D4(uint64_t a1)
{
  v2 = sub_24A3831D4();

  return MEMORY[0x2821FE720](a1, v2);
}

void __swiftcall FMFPreferences.init(prefs:hideLocation:)(FMFCore::FMFPreferences *__return_ptr retstr, FMFCore::FMFPreferences *prefs, Swift::Bool hideLocation)
{
  shouldReceiveEmails = prefs->shouldReceiveEmails;
  value = prefs->allowLocationAlertsFrom.value;
  primaryEmail = prefs->primaryEmail;
  rawValue = prefs->favorites.value._rawValue;
  retstr->allowFriendRequests = prefs->allowFriendRequests;
  retstr->allowLocationAlertsFrom.value = value;
  retstr->shouldReceiveEmails = shouldReceiveEmails;
  retstr->primaryEmail = primaryEmail;
  retstr->favorites.value._rawValue = rawValue;
  retstr->hideLocation = hideLocation;
}

void __swiftcall FMFPreferences.init(prefs:allowFriendRequests:)(FMFCore::FMFPreferences *__return_ptr retstr, FMFCore::FMFPreferences *prefs, Swift::Bool allowFriendRequests)
{
  hideLocation = prefs->hideLocation;
  shouldReceiveEmails = prefs->shouldReceiveEmails;
  value = prefs->allowLocationAlertsFrom.value;
  primaryEmail = prefs->primaryEmail;
  rawValue = prefs->favorites.value._rawValue;
  retstr->allowFriendRequests = allowFriendRequests;
  retstr->allowLocationAlertsFrom.value = value;
  retstr->shouldReceiveEmails = shouldReceiveEmails;
  retstr->primaryEmail = primaryEmail;
  retstr->favorites.value._rawValue = rawValue;
  retstr->hideLocation = hideLocation;
}

void __swiftcall FMFPreferences.init(prefs:allowLocationAlertsFrom:)(FMFCore::FMFPreferences *__return_ptr retstr, FMFCore::FMFPreferences *prefs, FMFCore::FMFGeofenceAlertsFrom allowLocationAlertsFrom)
{
  hideLocation = prefs->hideLocation;
  shouldReceiveEmails = prefs->shouldReceiveEmails;
  primaryEmail = prefs->primaryEmail;
  rawValue = prefs->favorites.value._rawValue;
  v7 = *allowLocationAlertsFrom;
  retstr->allowFriendRequests = prefs->allowFriendRequests;
  retstr->allowLocationAlertsFrom.value = v7;
  retstr->shouldReceiveEmails = shouldReceiveEmails;
  retstr->primaryEmail = primaryEmail;
  retstr->favorites.value._rawValue = rawValue;
  retstr->hideLocation = hideLocation;
}

unint64_t sub_24A4129A4()
{
  result = qword_27EF3FCA8;
  if (!qword_27EF3FCA8)
  {
    sub_24A3CBC9C(&qword_27EF3FCA0, &qword_24A4B7E58);
    sub_24A3833C0(&qword_27EF3FCB0, sub_24A38D204, MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FCA8);
  }

  return result;
}

uint64_t FMFPreferences.debugDescription.getter()
{
  v1 = *v0;
  v12 = v0[1];
  v13 = v0[2];

  sub_24A4ABF50();

  v14[0] = 0xD000000000000026;
  v14[1] = 0x800000024A4B0BA0;
  if (v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v2, v3);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  sub_24A4ABF50();

  sub_24A3C9CEC(&qword_27EF3FCC0, &qword_24A4B7E68);
  v4 = sub_24A4AB870();
  MEMORY[0x24C217D50](v4);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](0xD000000000000018, 0x800000024A4B0BD0);

  v5 = v14[0];
  sub_24A4ABF50();

  strcpy(v14, "hideLocation:");
  HIWORD(v14[1]) = -4864;
  if (v12)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v12)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v6, v7);

  MEMORY[0x24C217D50](0xD000000000000016, 0x800000024A4B0BF0);
  if (v13)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v13)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v8, v9);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](v14[0], v14[1]);

  sub_24A4ABF50();

  sub_24A3C9CEC(&qword_27EF3FCA0, &qword_24A4B7E58);
  v10 = sub_24A4AB870();
  MEMORY[0x24C217D50](v10);

  MEMORY[0x24C217D50](15965, 0xE200000000000000);

  MEMORY[0x24C217D50](0xD000000000000019, 0x800000024A4B0C10);

  return v5;
}

unint64_t sub_24A412DB8()
{
  result = qword_27EF3FCC8;
  if (!qword_27EF3FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FCC8);
  }

  return result;
}

__n128 sub_24A412E0C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24A412E20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24A412E68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A412ECC()
{
  result = qword_27EF3FCD0;
  if (!qword_27EF3FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FCD0);
  }

  return result;
}

unint64_t sub_24A412F24()
{
  result = qword_27EF3FCD8;
  if (!qword_27EF3FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FCD8);
  }

  return result;
}

unint64_t sub_24A412F7C()
{
  result = qword_27EF3FCF0;
  if (!qword_27EF3FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FCF0);
  }

  return result;
}

unint64_t sub_24A412FD4()
{
  result = qword_27EF3FCF8;
  if (!qword_27EF3FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FCF8);
  }

  return result;
}

unint64_t sub_24A413028(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A4AC0C0();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t FMFMuteFencesAction.__allocating_init(friendId:endDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  sub_24A413118(a3, v6 + OBJC_IVAR____TtC7FMFCore19FMFMuteFencesAction_muteEndDate);
  *(v6 + 16) = 0;
  return v6;
}

uint64_t FMFMuteFencesAction.init(friendId:endDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  sub_24A413118(a3, v3 + OBJC_IVAR____TtC7FMFCore19FMFMuteFencesAction_muteEndDate);
  *(v3 + 16) = 0;
  return v3;
}

uint64_t sub_24A413118(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A413188()
{
  v1 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v1);
  v3 = v18 - v2;
  v19[0] = 60;
  v19[1] = 0xE100000000000000;
  v4 = sub_24A4AC420();
  MEMORY[0x24C217D50](v4);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  v18[0] = v0;
  sub_24A3BAF14();
  v5 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v5);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v7 = v19[0];
  v6 = v19[1];
  strcpy(v19, "friendId: ");
  BYTE3(v19[1]) = 0;
  HIDWORD(v19[1]) = -369098752;
  v8 = *(v0 + 32);
  v18[0] = *(v0 + 24);
  v18[1] = v8;

  sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  v9 = sub_24A4AB870();
  MEMORY[0x24C217D50](v9);

  MEMORY[0x24C217D50](8236, 0xE200000000000000);
  v10 = v19[0];
  v11 = v19[1];
  v19[0] = v7;
  v19[1] = v6;

  MEMORY[0x24C217D50](v10, v11);

  v13 = v19[0];
  v12 = v19[1];
  strcpy(v19, "muteEndDate: ");
  HIWORD(v19[1]) = -4864;
  sub_24A38CB20(v0 + OBJC_IVAR____TtC7FMFCore19FMFMuteFencesAction_muteEndDate, v3);
  v14 = sub_24A4AB870();
  MEMORY[0x24C217D50](v14);

  v15 = v19[0];
  v16 = v19[1];
  v19[0] = v13;
  v19[1] = v12;

  MEMORY[0x24C217D50](v15, v16);

  return v19[0];
}

uint64_t sub_24A413408()
{

  v1 = v0 + OBJC_IVAR____TtC7FMFCore19FMFMuteFencesAction_muteEndDate;

  return sub_24A413470(v1);
}

uint64_t FMFMuteFencesAction.deinit()
{

  sub_24A413470(v0 + OBJC_IVAR____TtC7FMFCore19FMFMuteFencesAction_muteEndDate);
  return v0;
}

uint64_t sub_24A413470(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMFMuteFencesAction.__deallocating_deinit()
{

  sub_24A413470(v0 + OBJC_IVAR____TtC7FMFCore19FMFMuteFencesAction_muteEndDate);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFMuteFencesAction(uint64_t a1)
{
  result = qword_27EF3FD00;
  if (!qword_27EF3FD00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A4135B4(uint64_t a1)
{
  sub_24A37E944(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

FMFCore::FMFLabel_optional __swiftcall FMFLabel.init(value:labelSaveType:labelSourceType:)(FMFCore::FMFLabel_optional value, FMFCore::FMFLabelSaveType_optional labelSaveType, FMFCore::FMFLabelSourceType_optional labelSourceType)
{
  if (value.value.value._object)
  {
    object = value.value.value._object;
    countAndFlagsBits = value.value.value._countAndFlagsBits;
    v6 = *labelSaveType.value;
    v7 = *labelSourceType.value;
    if (v6 == 2)
    {
      v8 = v3;

      v9._countAndFlagsBits = countAndFlagsBits;
      v9._object = object;
      LOBYTE(value.value.value._countAndFlagsBits) = FMFDefaultLabel.init(rawValue:)(v9);
      v3 = v8;
      LOBYTE(v6) = v11 == 5;
    }

    if (v6)
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }

    *v3 = countAndFlagsBits;
    *(v3 + 8) = object;
    *(v3 + 16) = v10 | v7;
  }

  else
  {
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
  }

  value.is_nil = labelSourceType.value;
  value.value.labelSourceType.value = labelSaveType.value;
  return value;
}

uint64_t FMFLabel.localizedValue.getter()
{
  v1 = *v0;
  v2._countAndFlagsBits = sub_24A4AB880();
  FMFDefaultLabel.init(rawValue:)(v2);
  if (v4 != 5)
  {
    return FMFDefaultLabel.localizedLabel.getter();
  }

  return v1;
}

FMFCore::FMFLabelSourceType_optional __swiftcall FMFLabelSourceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A4AC0C0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FMFLabelSourceType.rawValue.getter()
{
  v1 = 0x646E65697266;
  if (*v0 != 1)
  {
    v1 = 0x736573696D657270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

uint64_t sub_24A413844(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x646E65697266;
  if (v2 != 1)
  {
    v4 = 0x736573696D657270;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C61636F6CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x646E65697266;
  if (*a2 != 1)
  {
    v8 = 0x736573696D657270;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C61636F6CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A4AC270();
  }

  return v11 & 1;
}

uint64_t sub_24A41393C()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A4139D8(uint64_t a1)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A413A60(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

void sub_24A413B04(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x646E65697266;
  if (v2 != 1)
  {
    v5 = 0x736573696D657270;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C61636F6CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

FMFCore::FMFLabelSaveType_optional __swiftcall FMFLabelSaveType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A4AC0C0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FMFLabelSaveType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_24A413BF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D6F74737563;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6D6F74737563;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A4AC270();
  }

  return v8 & 1;
}

uint64_t sub_24A413C9C()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A413D1C(uint64_t a1)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A413D88(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

void sub_24A413E10(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x6D6F74737563;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FMFDefaultLabel.localizedLabel.getter()
{
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_24A4AA800();

  return v2;
}

FMFCore::FMFDefaultLabel_optional __swiftcall FMFDefaultLabel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A4AC0C0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FMFDefaultLabel.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656D6F683C21245FLL;
  v3 = 0x6F6863733C21245FLL;
  v4 = 0x3E6D79673C21245FLL;
  if (v1 != 3)
  {
    v4 = 0x6568746F3C21245FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6B726F773C21245FLL;
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

uint64_t sub_24A414090()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A414198(uint64_t a1)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A41428C(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

void sub_24A41439C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x656D6F683C21245FLL;
  v4 = 0xEE005F24213E6C6FLL;
  v5 = 0x6F6863733C21245FLL;
  v6 = 0xEB000000005F2421;
  v7 = 0x3E6D79673C21245FLL;
  if (v2 != 3)
  {
    v7 = 0x6568746F3C21245FLL;
    v6 = 0xED00005F24213E72;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v3 = 0x6B726F773C21245FLL;
  }

  if (*v1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 <= 1u)
  {
    v9 = 0xEC0000005F24213ELL;
  }

  else
  {
    v9 = v4;
  }

  *a1 = v8;
  a1[1] = v9;
}

uint64_t FMFLabel.value.getter()
{
  v1 = *v0;

  return v1;
}

FMFCore::FMFDefaultLabel_optional FMFLabel.defaultLabel.getter()
{
  v0 = sub_24A4AB880();

  return FMFDefaultLabel.init(rawValue:)(*&v0);
}

uint64_t sub_24A4144E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1701869940;
  }

  else
  {
    v3 = 0x65756C6176;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1701869940;
  }

  else
  {
    v5 = 0x65756C6176;
  }

  if (*a2)
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
    v8 = sub_24A4AC270();
  }

  return v8 & 1;
}

uint64_t sub_24A414580()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A4145F8(uint64_t a1)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A41465C(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

void sub_24A4146DC(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (!*v1)
  {
    v2 = 0x65756C6176;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24A414710()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_24A414740@<X0>(char *a3@<X8>)
{
  v4 = sub_24A4AC0C0();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_24A4147A4(uint64_t a1)
{
  v2 = sub_24A414A18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A4147E0(uint64_t a1)
{
  v2 = sub_24A414A18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFLabel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A3C9CEC(&qword_27EF3FD10, &qword_24A4B8400);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  sub_24A37EACC(a1, a1[3]);
  sub_24A414A18();
  sub_24A4AC3C0();
  if (!v2)
  {
    v17 = 0;
    v9 = sub_24A4AC120();
    v11 = v10;
    v16 = 1;
    sub_24A4AC120();
    v15 = sub_24A4AC0C0();

    if (v15 >= 3)
    {
      v12 = 3;
    }

    else
    {
      v12 = v15;
    }

    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 17) = 2;
  }

  return sub_24A37EEE0(a1);
}

unint64_t sub_24A414A18()
{
  result = qword_27EF3FD18;
  if (!qword_27EF3FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FD18);
  }

  return result;
}

uint64_t FMFLabel.encode(to:)(void *a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3FD20, &qword_24A4B8408);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-v4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A414A18();
  sub_24A4AC3D0();
  v7[31] = 0;
  sub_24A4AC1B0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t static FMFLabel.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24A4AC270();
  }
}

unint64_t FMFLabel.debugDescription.getter()
{
  MEMORY[0x24C217D50](*v0, v0[1]);
  MEMORY[0x24C217D50](62, 0xE100000000000000);
  return 0xD000000000000012;
}

void *static FMFLabel.defaultLabels(includingOther:)(char a1)
{
  if (a1)
  {
    v1 = &unk_285D84148;
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  sub_24A3DB740(v1);
  return &unk_285D84120;
}

uint64_t static FMFLabel.defaultLabelFor(localizedLabel:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char *a3@<X8>)
{
  result = sub_24A3DB740(&unk_285D84198);
  v7 = 0;
  v8 = *&byte_285D84170[16];
  while (1)
  {
    if (v8 == v7)
    {

      v10 = 5;
      goto LABEL_10;
    }

    if (v7 >= *&byte_285D84170[16])
    {
      break;
    }

    v10 = byte_285D84170[v7 + 32];
    if (FMFDefaultLabel.localizedLabel.getter() == a1 && v11 == a2)
    {

LABEL_9:

LABEL_10:
      *a3 = v10;
      return result;
    }

    ++v7;
    v9 = sub_24A4AC270();

    if (v9)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A414DC4(void *a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3FD20, &qword_24A4B8408);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-v4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A414A18();
  sub_24A4AC3D0();
  v7[31] = 0;
  sub_24A4AC1B0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24A414F0C()
{
  MEMORY[0x24C217D50](*v0, v0[1]);
  MEMORY[0x24C217D50](62, 0xE100000000000000);
  return 0xD000000000000012;
}

unint64_t sub_24A414F70()
{
  result = qword_27EF3FD28;
  if (!qword_27EF3FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FD28);
  }

  return result;
}

unint64_t sub_24A414FC8()
{
  result = qword_27EF3FD30;
  if (!qword_27EF3FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FD30);
  }

  return result;
}

unint64_t sub_24A415020()
{
  result = qword_27EF3FD38;
  if (!qword_27EF3FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FD38);
  }

  return result;
}

__n128 sub_24A4150A4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_24A4150B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A41510C()
{
  result = qword_27EF3FD40;
  if (!qword_27EF3FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FD40);
  }

  return result;
}

unint64_t sub_24A415164()
{
  result = qword_27EF3FD48;
  if (!qword_27EF3FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FD48);
  }

  return result;
}

unint64_t sub_24A4151BC()
{
  result = qword_27EF3FD50;
  if (!qword_27EF3FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FD50);
  }

  return result;
}

uint64_t sub_24A415218(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 440) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 456) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 456) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A4152D0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A381A4C(*a1);
  v5 = v4;
  if (v3 == sub_24A381A4C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A4AC270();
  }

  return v8 & 1;
}

uint64_t sub_24A415358()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A381A4C(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A4153BC(uint64_t a1)
{
  sub_24A381A4C(*v1);
  sub_24A4AB8F0();
}

uint64_t sub_24A415410(uint64_t a1)
{
  v2 = *v1;
  sub_24A4AC360();
  sub_24A381A4C(v2);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

unint64_t sub_24A415470@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A415FE8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_24A4154A0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A381A4C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_24A4154CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A415FE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A4154F4(uint64_t a1)
{
  v2 = sub_24A381748();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A415530(uint64_t a1)
{
  v2 = sub_24A381748();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A4155EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_24A4AC270();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_24A4156A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 48);
    v4 = *(a2 + 48);
    v5 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
    if (v5 || (v6 = a1, v7 = a2, v8 = sub_24A4AC270(), a2 = v7, v9 = v8, a1 = v6, (v9 & 1) != 0))
    {
      v10 = (a2 + 72);
      v11 = (a1 + 72);
      for (i = v2 - 1; ; --i)
      {
        if (v3)
        {
          if (v3 == 1)
          {
            v13 = 0x776F6C6C616873;
          }

          else
          {
            v13 = 1885693284;
          }

          if (v3 == 1)
          {
            v14 = 0xE700000000000000;
          }

          else
          {
            v14 = 0xE400000000000000;
          }

          v15 = v4;
          if (!v4)
          {
LABEL_24:
            v16 = 0xE400000000000000;
            if (v13 != 1701736302)
            {
              goto LABEL_29;
            }

            goto LABEL_27;
          }
        }

        else
        {
          v14 = 0xE400000000000000;
          v13 = 1701736302;
          v15 = v4;
          if (!v4)
          {
            goto LABEL_24;
          }
        }

        if (v15 == 1)
        {
          v16 = 0xE700000000000000;
          if (v13 != 0x776F6C6C616873)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v16 = 0xE400000000000000;
          if (v13 != 1885693284)
          {
            goto LABEL_29;
          }
        }

LABEL_27:
        if (v14 == v16)
        {

          goto LABEL_30;
        }

LABEL_29:
        v17 = sub_24A4AC270();

        if ((v17 & 1) == 0)
        {
          return 0;
        }

LABEL_30:
        if (!i)
        {
          return 1;
        }

        v3 = *v11;
        v4 = *v10;
        if ((*(v11 - 2) != *(v10 - 2) || *(v11 - 1) != *(v10 - 1)) && (sub_24A4AC270() & 1) == 0)
        {
          return 0;
        }

        v10 += 24;
        v11 += 24;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24A41587C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 48);
    v4 = *(a2 + 48);
    v5 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
    if (v5 || (v6 = a1, v7 = a2, v8 = sub_24A4AC270(), a2 = v7, v9 = v8, a1 = v6, (v9 & 1) != 0))
    {
      v10 = (a2 + 72);
      v11 = (a1 + 72);
      for (i = v2 - 1; ; --i)
      {
        if (v3)
        {
          if (v3 == 1)
          {
            v13 = 0x4C676E69646E6570;
          }

          else
          {
            v13 = 0x6F4C646573756170;
          }

          if (v3 == 1)
          {
            v14 = 0xEF676E697461636FLL;
          }

          else
          {
            v14 = 0xEE00676E69746163;
          }

          v15 = v4;
          if (!v4)
          {
LABEL_24:
            v16 = 0xE400000000000000;
            if (v13 != 1701736302)
            {
              goto LABEL_29;
            }

            goto LABEL_27;
          }
        }

        else
        {
          v14 = 0xE400000000000000;
          v13 = 1701736302;
          v15 = v4;
          if (!v4)
          {
            goto LABEL_24;
          }
        }

        if (v15 == 1)
        {
          v16 = 0xEF676E697461636FLL;
          if (v13 != 0x4C676E69646E6570)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v16 = 0xEE00676E69746163;
          if (v13 != 0x6F4C646573756170)
          {
            goto LABEL_29;
          }
        }

LABEL_27:
        if (v14 == v16)
        {

          goto LABEL_30;
        }

LABEL_29:
        v17 = sub_24A4AC270();

        if ((v17 & 1) == 0)
        {
          return 0;
        }

LABEL_30:
        if (!i)
        {
          return 1;
        }

        v3 = *v11;
        v4 = *v10;
        if ((*(v11 - 2) != *(v10 - 2) || *(v11 - 1) != *(v10 - 1)) && (sub_24A4AC270() & 1) == 0)
        {
          return 0;
        }

        v10 += 24;
        v11 += 24;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24A415A6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v6 = *v3;
      if (*(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_24A4AC270();
        result = 0;
        if (v8 & 1) == 0 || ((v5 ^ v6))
        {
          return result;
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

unint64_t sub_24A415B2C()
{
  result = qword_27EF3F138;
  if (!qword_27EF3F138)
  {
    sub_24A3CBC9C(&qword_27EF3F130, &unk_24A4B4960);
    sub_24A3852CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F138);
  }

  return result;
}

unint64_t sub_24A415BB0()
{
  result = qword_27EF3FD88;
  if (!qword_27EF3FD88)
  {
    sub_24A3CBC9C(&qword_27EF3FD80, &qword_24A4B8A18);
    sub_24A387110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FD88);
  }

  return result;
}

unint64_t sub_24A415C34()
{
  result = qword_27EF3FDB8;
  if (!qword_27EF3FDB8)
  {
    sub_24A3CBC9C(&qword_27EF3FDB0, &qword_24A4BA250);
    sub_24A38D420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FDB8);
  }

  return result;
}

unint64_t sub_24A415CB8()
{
  result = qword_27EF3FDD0;
  if (!qword_27EF3FDD0)
  {
    sub_24A3CBC9C(&qword_27EF3FDC8, &qword_24A4B8A28);
    sub_24A38D484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FDD0);
  }

  return result;
}

unint64_t sub_24A415D3C()
{
  result = qword_27EF3FDE0;
  if (!qword_27EF3FDE0)
  {
    sub_24A3CBC9C(&qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A38D94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FDE0);
  }

  return result;
}

unint64_t sub_24A415DC0()
{
  result = qword_27EF3FDF0;
  if (!qword_27EF3FDF0)
  {
    sub_24A3CBC9C(&qword_27EF3F130, &unk_24A4B4960);
    sub_24A38E4D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FDF0);
  }

  return result;
}

unint64_t sub_24A415E44()
{
  result = qword_27EF3FE10;
  if (!qword_27EF3FE10)
  {
    sub_24A3CBC9C(&qword_27EF3FD80, &qword_24A4B8A18);
    sub_24A39ADC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FE10);
  }

  return result;
}

uint64_t sub_24A415EC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A415F30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24A415F94()
{
  result = qword_27EF3FE28;
  if (!qword_27EF3FE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FE28);
  }

  return result;
}

unint64_t sub_24A415FE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A4AC290();

  if (v2 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v2;
  }
}

void sub_24A416040(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v46 = a2;
  v3 = sub_24A4ABD50();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A4ABD10();
  MEMORY[0x28223BE20](v7);
  v8 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() mainBundle];
  v12 = [v11 bundleIdentifier];

  if (v12)
  {
    v13 = sub_24A4AB850();
    v15 = v14;

    v2[3] = v13;
    v2[4] = v15;
    v42[0] = sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
    v43 = "Location8@NSError16";
    v44 = v2;
    sub_24A4AB6B0();
    v47 = MEMORY[0x277D84F90];
    v42[3] = sub_24A37EFD4(&qword_27EF402C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    v42[4] = v10;
    v42[2] = sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
    v42[1] = sub_24A378704(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0, MEMORY[0x277D83970]);
    sub_24A4ABE90();
    v16 = *MEMORY[0x277D85260];
    v17 = *(v4 + 104);
    v17(v6, v16, v3);
    v18 = sub_24A4ABD90();
    v19 = v44;
    v44[5] = v18;
    v43 = "onController.serial";
    sub_24A4AB6C0();
    v47 = MEMORY[0x277D84F90];
    sub_24A4ABE90();
    v17(v6, v16, v3);
    v19[6] = sub_24A4ABD90();
    v19[7] = [objc_allocWithZone(MEMORY[0x277D496C0]) init];
    type metadata accessor for FMLocationShifter();
    swift_allocObject();
    v20 = FMLocationShifter.init()();
    v21 = MEMORY[0x277D84F90];
    v19[9] = v20;
    v19[10] = v21;
    v22 = v46;
    v19[2] = v45;
    v19[8] = v22;
    v23 = qword_27EF3EBF8;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_24A4AB630();
    sub_24A378E18(v24, qword_27EF4E260);

    v25 = sub_24A4AB600();
    v26 = sub_24A4ABCE0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v49 = v28;
      *v27 = 136315138;
      v47 = v19;
      v29 = sub_24A4AC3F0();
      v31 = sub_24A37E99C(9uLL, v29, v30);
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v38 = MEMORY[0x24C217CD0](v31, v33, v35, v37);
      v40 = v39;

      v47 = 30768;
      v48 = 0xE200000000000000;
      MEMORY[0x24C217D50](v38, v40);

      v41 = sub_24A37BD58(v47, v48, &v49);

      *(v27 + 4) = v41;
      _os_log_impl(&dword_24A376000, v25, v26, "👀 FMFProactiveLocationController<%s>: init", v27, 0xCu);
      sub_24A37EEE0(v28);
      MEMORY[0x24C219130](v28, -1, -1);
      MEMORY[0x24C219130](v27, -1, -1);
    }
  }

  else
  {
    __break(1u);
  }
}

id *sub_24A4165F8()
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  sub_24A378E18(v1, qword_27EF4E260);

  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136315138;
    v6 = sub_24A4AC3F0();
    v8 = sub_24A37E99C(9uLL, v6, v7);
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = MEMORY[0x24C217CD0](v8, v10, v12, v14);
    v17 = v16;

    MEMORY[0x24C217D50](v15, v17);

    v18 = sub_24A37BD58(30768, 0xE200000000000000, &v20);

    *(v4 + 4) = v18;
    _os_log_impl(&dword_24A376000, v2, v3, "👀 FMFProactiveLocationController<%s>: deinit", v4, 0xCu);
    sub_24A37EEE0(v5);
    MEMORY[0x24C219130](v5, -1, -1);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  return v0;
}

uint64_t sub_24A416830()
{
  sub_24A4165F8();

  return swift_deallocClassInstance();
}

void sub_24A416888(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_24A416914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v91 = a4;
  v92 = a5;
  v97 = a3;
  v86 = a2;
  v6 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  MEMORY[0x28223BE20](v6 - 8);
  v89 = &v78 - v7;
  v8 = sub_24A3C9CEC(&qword_27EF3FE50, &unk_24A4B8C10);
  MEMORY[0x28223BE20](v8 - 8);
  v90 = (&v78 - v9);
  v10 = type metadata accessor for FMReverseGeocodingRequest(0);
  v87 = *(v10 - 8);
  v88 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A3C9CEC(&qword_27EF3F8C0, &qword_24A4B9F50);
  v98 = *(v12 - 8);
  v99 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v78 - v16;
  v81 = type metadata accessor for FMFLocation(0);
  v100 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v85 = (&v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v21 = &v78 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = (&v78 - v23);
  MEMORY[0x28223BE20](v25);
  v83 = &v78 - v26;
  MEMORY[0x28223BE20](v27);
  v82 = &v78 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v78 - v30;
  v84 = v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v78 - v34;
  v36 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v36 - 8);
  v80 = &v78 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v96 = &v78 - v39;
  v40 = *(a1 + 16);
  v41 = MEMORY[0x277D84F90];
  v94 = v24;
  v95 = v31;
  v93 = v21;
  if (v40)
  {
    *&v102[0] = MEMORY[0x277D84F90];
    sub_24A3B57CC(0, v40, 0);
    v41 = *&v102[0];
    v42 = a1 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
    v98 = *(v98 + 72);
    do
    {
      sub_24A37B740(v42, v17, &qword_27EF3F8C0, &qword_24A4B9F50);
      sub_24A37BE24(v17, v14, &qword_27EF3F8C0, &qword_24A4B9F50);
      v43 = *(v99 + 48);
      sub_24A3997D4(v14, v35, type metadata accessor for FMFLocation);
      sub_24A37EF2C(&v14[v43], &qword_27EF3F480, &unk_24A4B8C20);
      *&v102[0] = v41;
      v45 = *(v41 + 16);
      v44 = *(v41 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_24A3B57CC((v44 > 1), v45 + 1, 1);
        v41 = *&v102[0];
      }

      *(v41 + 16) = v45 + 1;
      sub_24A3997D4(v35, v41 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v45, type metadata accessor for FMFLocation);
      v42 += v98;
      --v40;
    }

    while (v40);
    v24 = v94;
    v31 = v95;
    v21 = v93;
  }

  v46 = v96;
  v47 = v86;
  v48 = v100;
  v49 = v81;
  if (*(v41 + 16))
  {
    sub_24A39921C(v41 + ((*(v100 + 80) + 32) & ~*(v100 + 80)), v96, type metadata accessor for FMFLocation);
    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  (*(v48 + 56))(v46, v50, 1, v49);
  v51 = v46;
  v52 = v80;
  sub_24A37B740(v51, v80, &qword_27EF3F480, &unk_24A4B8C20);
  v53 = *(v48 + 48);
  if (v53(v52, 1, v49) == 1)
  {
    sub_24A39921C(v47, v31, type metadata accessor for FMFLocation);
    if (v53(v52, 1, v49) != 1)
    {
      sub_24A37EF2C(v52, &qword_27EF3F480, &unk_24A4B8C20);
    }
  }

  else
  {
    sub_24A3997D4(v52, v31, type metadata accessor for FMFLocation);
  }

  v99 = *(v97 + 64);
  v54 = v82;
  sub_24A39921C(v31, v82, type metadata accessor for FMFLocation);
  v55 = v83;
  sub_24A39921C(v47, v83, type metadata accessor for FMFLocation);
  sub_24A39921C(v54, v24, type metadata accessor for FMFLocation);
  sub_24A39921C(v55, v21, type metadata accessor for FMFLocation);
  v56 = *(v48 + 80);
  v57 = (v56 + 16) & ~v56;
  v58 = (v84 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v56 + 16 + v59) & ~v56;
  v61 = swift_allocObject();
  v62 = v54;
  v63 = v97;
  sub_24A3997D4(v62, v61 + v57, type metadata accessor for FMFLocation);
  *(v61 + v58) = v63;
  v64 = (v61 + v59);
  v65 = v95;
  v67 = v91;
  v66 = v92;
  *v64 = v91;
  v64[1] = v66;
  v68 = v55;
  v69 = v63;
  v70 = v99;
  sub_24A3997D4(v68, v61 + v60, type metadata accessor for FMFLocation);
  v71 = v85;
  sub_24A39921C(v65, v85, type metadata accessor for FMFLocation);
  v72 = v89;
  sub_24A37B740(v70 + qword_27EF4E178, v89, &qword_27EF3F650, &qword_24A4B5A10);

  v73 = v90;
  sub_24A446558(v71, v72, v90);
  if ((*(v87 + 48))(v73, 1, v88) == 1)
  {
    sub_24A37EF2C(v73, &qword_27EF3FE50, &unk_24A4B8C10);
    sub_24A3BAFB0(v102);
    memcpy(v101, v102, sizeof(v101));
    v75 = v93;
    v74 = v94;
    sub_24A417240(v101, v94, v69, v67, v66, v93);

    sub_24A39A6F8(v75, type metadata accessor for FMFLocation);
    sub_24A39A6F8(v74, type metadata accessor for FMFLocation);
  }

  else
  {
    sub_24A39A6F8(v93, type metadata accessor for FMFLocation);
    sub_24A39A6F8(v94, type metadata accessor for FMFLocation);
    v76 = v79;
    sub_24A3997D4(v73, v79, type metadata accessor for FMReverseGeocodingRequest);
    sub_24A4416C0(v76, sub_24A41EDE4, v61);

    sub_24A39A6F8(v76, type metadata accessor for FMReverseGeocodingRequest);
  }

  sub_24A39A6F8(v65, type metadata accessor for FMFLocation);
  return sub_24A37EF2C(v96, &qword_27EF3F480, &unk_24A4B8C20);
}

uint64_t sub_24A417240(const void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, uint64_t a6)
{
  v48 = a6;
  v11 = type metadata accessor for FMFLocation(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v43[-v15];
  MEMORY[0x28223BE20](v17);
  v49 = &v43[-v18];
  memcpy(v52, a1, 0x130uLL);
  v19 = a2[1];
  if (v19)
  {
    v47 = *a2;
    v20 = v19;
  }

  else
  {
    v20 = 0xE300000000000000;
    v47 = 7104878;
  }

  sub_24A39921C(a2, v16, type metadata accessor for FMFLocation);
  sub_24A39921C(a2, v13, type metadata accessor for FMFLocation);
  memcpy(v51, v52, sizeof(v51));

  sub_24A37B740(v52, v50, &unk_27EF404E0, &unk_24A4B5230);
  FMFLocation.init(from:updatedLocation:address:)(v16, v13, v51, v49);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v21 = sub_24A4AB630();
  sub_24A378E18(v21, qword_27EF4E260);

  v22 = sub_24A4AB600();
  v23 = sub_24A4ABCE0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v50[0] = v45;
    *v24 = 136315394;
    v51[0] = a3;
    v44 = v23;
    v25 = sub_24A4AC3F0();
    v27 = sub_24A37E99C(9uLL, v25, v26);
    v46 = a5;
    v29 = v28;
    v31 = v30;
    v32 = a4;
    v34 = v33;

    v35 = MEMORY[0x24C217CD0](v27, v29, v31, v34);
    v37 = v36;
    a4 = v32;

    v51[0] = 30768;
    v51[1] = 0xE200000000000000;
    MEMORY[0x24C217D50](v35, v37);

    v38 = sub_24A37BD58(v51[0], v51[1], v50);

    *(v24 + 4) = v38;
    *(v24 + 12) = 2080;
    v39 = sub_24A37BD58(v47, v20, v50);

    *(v24 + 14) = v39;
    _os_log_impl(&dword_24A376000, v22, v44, "👀 FMFProactiveLocationController<%s>: did reverse geocode proactive location for %s", v24, 0x16u);
    v40 = v45;
    swift_arrayDestroy();
    MEMORY[0x24C219130](v40, -1, -1);
    MEMORY[0x24C219130](v24, -1, -1);
  }

  else
  {
  }

  v41 = v49;
  a4(v48, v49);
  return sub_24A39A6F8(v41, type metadata accessor for FMFLocation);
}

uint64_t sub_24A417628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v123 = a3;
  v122 = a2;
  v6 = sub_24A4AB690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v125 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_24A4AB6E0();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v124 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = MEMORY[0x277D84F90];
  v154 = MEMORY[0x277D84F90];
  v10 = *(v3 + 40);
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = a1;
  v11[4] = &v154;
  v11[5] = &v153;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_24A418E98;
  *(v12 + 24) = v11;
  v151 = sub_24A37CE34;
  v152 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v148 = 1107296256;
  v149 = sub_24A37CDDC;
  v150 = &unk_285D87910;
  v13 = _Block_copy(&aBlock);
  v144 = v4;

  v128 = a1;

  v137 = v10;
  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    goto LABEL_28;
  }

  v14 = *(v153 + 16);
  v121 = v11;
  v120 = v7;
  if (v14 || *(v154 + 16))
  {
    if (qword_27EF3EBF8 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v15 = sub_24A4AB630();
      v16 = sub_24A378E18(v15, qword_27EF4E260);

      v17 = sub_24A4AB600();
      v18 = sub_24A4ABCE0();

      v19 = os_log_type_enabled(v17, v18);
      v134 = v16;
      v119 = v6;
      if (v19)
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v146 = v21;
        *v20 = 136315650;
        aBlock = v144;
        v22 = sub_24A4AC3F0();
        v24 = sub_24A37E99C(9uLL, v22, v23);
        v26 = v25;
        v28 = v27;
        v30 = v29;

        v31 = MEMORY[0x24C217CD0](v24, v26, v28, v30);
        v33 = v32;

        aBlock = 30768;
        v148 = 0xE200000000000000;
        MEMORY[0x24C217D50](v31, v33);

        v34 = sub_24A37BD58(aBlock, v148, &v146);

        *(v20 + 4) = v34;
        *(v20 + 12) = 2048;
        swift_beginAccess();
        *(v20 + 14) = *(v153 + 16);
        *(v20 + 22) = 2048;
        swift_beginAccess();
        *(v20 + 24) = *(v154 + 16);
        _os_log_impl(&dword_24A376000, v17, v18, "👀 FMFProactiveLocationController<%s>: updated subscriptions: %ld added, %ld removed", v20, 0x20u);
        sub_24A37EEE0(v21);
        MEMORY[0x24C219130](v21, -1, -1);
        MEMORY[0x24C219130](v20, -1, -1);
      }

      swift_beginAccess();
      v35 = v154;
      v6 = *(v154 + 16);

      if (v6)
      {
        v36 = 0;
        v37 = (v35 + 40);
        while (v36 < *(v35 + 16))
        {
          ++v36;
          v38 = *v37;
          aBlock = *(v37 - 1);
          v148 = v38;

          sub_24A419304(&aBlock, v144);

          v37 += 2;
          if (v6 == v36)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_11:

        v39 = swift_allocObject();
        v40 = MEMORY[0x277D84F90];
        v136 = v39;
        *(v39 + 16) = MEMORY[0x277D84F90];
        v138 = swift_allocObject();
        *(v138 + 16) = v40;
        v135 = swift_allocObject();
        *(v135 + 16) = v40;
        v143 = dispatch_group_create();
        v142 = dispatch_group_create();
        swift_beginAccess();
        v133 = *(v153 + 16);
        if (!v133)
        {
LABEL_18:
          v77 = swift_allocObject();
          v78 = v144;
          v77[2] = v136;
          v77[3] = v78;
          v79 = v135;
          v77[4] = v138;
          v77[5] = v79;
          v80 = v142;
          v81 = v122;
          v77[6] = v142;
          v77[7] = v81;
          v82 = v123;
          v83 = v128;
          v77[8] = v123;
          v77[9] = v83;
          v151 = sub_24A41ED60;
          v152 = v77;
          aBlock = MEMORY[0x277D85DD0];
          v148 = 1107296256;
          v149 = sub_24A388564;
          v150 = &unk_285D87A28;
          v84 = _Block_copy(&aBlock);

          v85 = v80;

          sub_24A3C8498(v81, v82);
          v86 = v124;
          sub_24A4AB6B0();
          v145 = MEMORY[0x277D84F90];
          sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
          sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
          v87 = v125;
          v88 = v119;
          sub_24A4ABE90();
          v89 = v143;
          sub_24A4ABD00();
          _Block_release(v84);

          (*(v120 + 8))(v87, v88);
          (*(v126 + 8))(v86, v127);

          goto LABEL_19;
        }

        v131 = &v149;

        v42 = 0;
        v43 = (v41 + 40);
        *&v44 = 136315394;
        v129 = v44;
        v132 = v41;
        while (v42 < *(v41 + 16))
        {
          v57 = *(v43 - 1);
          v58 = *v43;
          v141 = v43;

          dispatch_group_enter(v143);
          dispatch_group_enter(v142);

          v59 = sub_24A4AB600();
          v60 = sub_24A4ABCE0();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v139 = swift_slowAlloc();
            v145 = v139;
            *v61 = v129;
            aBlock = v144;
            v130 = v60;
            v62 = sub_24A4AC3F0();
            v64 = sub_24A37E99C(9uLL, v62, v63);
            v140 = v57;
            v65 = v64;
            v67 = v66;
            v69 = v68;
            v71 = v70;

            v72 = MEMORY[0x24C217CD0](v65, v67, v69, v71);
            v74 = v73;

            aBlock = 30768;
            v148 = 0xE200000000000000;
            MEMORY[0x24C217D50](v72, v74);

            v75 = sub_24A37BD58(aBlock, v148, &v145);

            *(v61 + 4) = v75;
            v57 = v140;
            *(v61 + 12) = 2080;
            *(v61 + 14) = sub_24A37BD58(v57, v58, &v145);
            _os_log_impl(&dword_24A376000, v59, v130, "👀 FMFProactiveLocationController<%s>: cache-fetching for %s…", v61, 0x16u);
            v76 = v139;
            swift_arrayDestroy();
            MEMORY[0x24C219130](v76, -1, -1);
            MEMORY[0x24C219130](v61, -1, -1);
          }

          v45 = v42 + 1;
          v140 = v144[7];
          v139 = sub_24A4AB820();
          v46 = swift_allocObject();
          swift_weakInit();
          v47 = swift_allocObject();
          v47[2] = v46;
          v47[3] = v57;
          v48 = v137;
          v47[4] = v58;
          v47[5] = v48;
          v49 = v135;
          v47[6] = v138;
          v47[7] = v49;
          v50 = v143;
          v51 = v142;
          v47[8] = v143;
          v47[9] = v51;
          v47[10] = v136;
          v151 = sub_24A41D710;
          v152 = v47;
          aBlock = MEMORY[0x277D85DD0];
          v148 = 1107296256;
          v149 = sub_24A416888;
          v150 = &unk_285D879D8;
          v52 = _Block_copy(&aBlock);
          v6 = v152;

          v53 = v48;

          v54 = v50;
          v55 = v51;
          v42 = v45;

          v56 = v139;
          [v140 latestLocationFromCacheForId:v139 completion:v52];
          _Block_release(v52);

          v43 = v141 + 2;
          v41 = v132;
          if (v133 == v42)
          {

            goto LABEL_18;
          }
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      swift_once();
    }
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v91 = v6;
  v92 = sub_24A4AB630();
  sub_24A378E18(v92, qword_27EF4E260);
  v93 = v128;
  swift_bridgeObjectRetain_n();

  v94 = sub_24A4AB600();
  v95 = sub_24A4ABCE0();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v146 = v97;
    *v96 = 136315394;
    aBlock = v144;
    v98 = sub_24A4AC3F0();
    v100 = sub_24A37E99C(9uLL, v98, v99);
    v102 = v101;
    v104 = v103;
    v106 = v105;

    v107 = MEMORY[0x24C217CD0](v100, v102, v104, v106);
    v109 = v108;

    aBlock = 30768;
    v148 = 0xE200000000000000;
    MEMORY[0x24C217D50](v107, v109);

    v110 = sub_24A37BD58(aBlock, v148, &v146);

    *(v96 + 4) = v110;
    *(v96 + 12) = 2048;
    v111 = *(v128 + 16);

    *(v96 + 14) = v111;

    _os_log_impl(&dword_24A376000, v94, v95, "👀 FMFProactiveLocationController<%s>: no subscriptions to update for %ld friends", v96, 0x16u);
    sub_24A37EEE0(v97);
    v93 = v128;
    MEMORY[0x24C219130](v97, -1, -1);
    MEMORY[0x24C219130](v96, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v112 = v144;
  v113 = swift_allocObject();
  v114 = v122;
  v115 = v123;
  v113[2] = v122;
  v113[3] = v115;
  v113[4] = v112;
  v113[5] = v93;
  v151 = sub_24A41ED74;
  v152 = v113;
  aBlock = MEMORY[0x277D85DD0];
  v148 = 1107296256;
  v149 = sub_24A388564;
  v150 = &unk_285D87A78;
  v116 = _Block_copy(&aBlock);

  sub_24A3C8498(v114, v115);
  v117 = v124;
  sub_24A4AB6B0();
  v146 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  v118 = v125;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v117, v118, v116);
  _Block_release(v116);
  (*(v120 + 8))(v118, v91);
  (*(v126 + 8))(v117, v127);
LABEL_19:
}

uint64_t sub_24A4186D0(uint64_t a1, uint64_t a2, char **a3, char **a4)
{
  v72 = a3;
  v71 = sub_24A3C9CEC(&qword_27EF3FE58, &qword_24A4B8C30);
  MEMORY[0x28223BE20](v71);
  v70 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = &v58 - v9;
  v60 = sub_24A3C9CEC(&qword_27EF3FE60, &qword_24A4B8C38);
  MEMORY[0x28223BE20](v60);
  v11 = &v58 - v10;
  v12 = sub_24A3C9CEC(&qword_27EF3FE68, &qword_24A4B8C40);
  v63 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v62 = &v58 - v13;
  v14 = type metadata accessor for FMFFriend(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v68 = (&v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v67 = (&v58 - v18);
  MEMORY[0x28223BE20](v19);
  v66 = &v58 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - v22;
  v61 = a1;
  v24 = *(a2 + 16);
  v59 = *(a1 + 80);

  if (v24)
  {
    v25 = *(v15 + 72);
    v64 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v26 = a2 + v64;
    v27 = MEMORY[0x277D84F90];
    v65 = a4;
    do
    {
      sub_24A39921C(v26, v23, type metadata accessor for FMFFriend);
      v28 = v23[*(v14 + 44)];
      if (v28 == 2 || (v28 & 1) == 0)
      {
        sub_24A39A6F8(v23, type metadata accessor for FMFFriend);
      }

      else
      {
        sub_24A3997D4(v23, v66, type metadata accessor for FMFFriend);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73[0] = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A39E574(0, *(v27 + 16) + 1, 1);
          v27 = v73[0];
        }

        v31 = *(v27 + 16);
        v30 = *(v27 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_24A39E574((v30 > 1), v31 + 1, 1);
          v27 = v73[0];
        }

        *(v27 + 16) = v31 + 1;
        sub_24A3997D4(v66, v27 + v64 + v31 * v25, type metadata accessor for FMFFriend);
        a4 = v65;
      }

      v26 += v25;
      --v24;
    }

    while (v24);
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  v73[0] = v27;

  sub_24A41D74C(v73);

  v66 = v73[0];
  v73[4] = v59;
  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A378704(&qword_27EF3FE70, &qword_27EF3FE40, &unk_24A4BA230, MEMORY[0x277D83958]);
  v32 = v62;
  sub_24A4AB7F0();

  (*(v63 + 16))(v11, v32, v12);
  v33 = *(v60 + 36);
  sub_24A378704(&qword_27EF3FE78, &qword_27EF3FE68, &qword_24A4B8C40, MEMORY[0x277D84490]);
  sub_24A4ABC50();
  while (1)
  {
    sub_24A4ABC60();
    if (*&v11[v33] == v73[0])
    {
      break;
    }

    v38 = sub_24A4ABC80();
    v39 = v69;
    sub_24A37B740(v40, v69, &qword_27EF3FE58, &qword_24A4B8C30);
    v38(v73, 0);
    sub_24A4ABC70();
    v41 = v70;
    sub_24A37BE24(v39, v70, &qword_27EF3FE58, &qword_24A4B8C30);
    LODWORD(v38) = swift_getEnumCaseMultiPayload();
    v42 = *(sub_24A3C9CEC(&qword_27EF3FE80, &qword_24A4B8C48) + 48);
    if (v38 == 1)
    {
      v43 = v67;
      sub_24A3997D4(v41 + v42, v67, type metadata accessor for FMFFriend);
      v45 = *v43;
      v44 = v43[1];
      v46 = v72;
      v47 = *v72;

      v48 = swift_isUniquelyReferenced_nonNull_native();
      *v46 = v47;
      if ((v48 & 1) == 0)
      {
        v47 = sub_24A3ED900(0, *(v47 + 2) + 1, 1, v47);
        *v72 = v47;
      }

      v50 = *(v47 + 2);
      v49 = *(v47 + 3);
      v51 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        v56 = sub_24A3ED900((v49 > 1), v50 + 1, 1, v47);
        v35 = v72;
        *v72 = v56;
        v34 = v67;
      }

      else
      {
        v34 = v67;
        v35 = v72;
      }
    }

    else
    {
      v52 = v68;
      sub_24A3997D4(v41 + v42, v68, type metadata accessor for FMFFriend);
      v45 = *v52;
      v44 = v52[1];
      v53 = *a4;

      v54 = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v53;
      if ((v54 & 1) == 0)
      {
        v53 = sub_24A3ED900(0, *(v53 + 2) + 1, 1, v53);
        *a4 = v53;
      }

      v50 = *(v53 + 2);
      v55 = *(v53 + 3);
      v51 = v50 + 1;
      if (v50 >= v55 >> 1)
      {
        *a4 = sub_24A3ED900((v55 > 1), v50 + 1, 1, v53);
      }

      v34 = v68;
      v35 = a4;
    }

    sub_24A39A6F8(v34, type metadata accessor for FMFFriend);
    v36 = *v35;
    *(v36 + 2) = v51;
    v37 = &v36[16 * v50];
    *(v37 + 4) = v45;
    *(v37 + 5) = v44;
  }

  sub_24A37EF2C(v11, &qword_27EF3FE60, &qword_24A4B8C38);
  (*(v63 + 8))(v62, v12);
  *(v61 + 80) = v66;
}

void sub_24A418EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = *(type metadata accessor for FMFFriend(0) - 8);
  MEMORY[0x28223BE20](a1);
  v46 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v40 - v9);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  if (a1)
  {
    v41 = v12;
    v42 = a2;
    sub_24A3C8498(v12, a2);

    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    v15 = 0;
    sub_24A4ABD70();

    v16 = v52[0];
    v45 = *(v52[0] + 16);
    if (v45)
    {
      v17 = 0;
      v48 = MEMORY[0x277D84F90];
      v43 = v52[0];
      v44 = a4;
      while (v17 < *(v16 + 16))
      {
        v50 = v17;
        v51 = v15;
        v18 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v19 = *(v47 + 72);
        v20 = v14;
        isUniquelyReferenced_nonNull_native = sub_24A39921C(v16 + v18 + v19 * v17, v14, type metadata accessor for FMFFriend);
        v22 = *(a4 + 16);
        v49 = v18;
        if (v22)
        {
          v23 = a4 + v18;
          v24 = MEMORY[0x277D84F90];
          do
          {
            sub_24A39921C(v23, v10, type metadata accessor for FMFFriend);
            v25 = *v10;
            v26 = v10[1];

            sub_24A39A6F8(v10, type metadata accessor for FMFFriend);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_24A3ED900(0, *(v24 + 16) + 1, 1, v24);
              v24 = isUniquelyReferenced_nonNull_native;
            }

            v28 = *(v24 + 16);
            v27 = *(v24 + 24);
            if (v28 >= v27 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_24A3ED900((v27 > 1), v28 + 1, 1, v24);
              v24 = isUniquelyReferenced_nonNull_native;
            }

            *(v24 + 16) = v28 + 1;
            v29 = v24 + 16 * v28;
            *(v29 + 32) = v25;
            *(v29 + 40) = v26;
            v23 += v19;
            --v22;
          }

          while (v22);
        }

        else
        {
          v24 = MEMORY[0x277D84F90];
        }

        v14 = v20;
        v30 = *(v20 + 1);
        v52[0] = *v20;
        v52[1] = v30;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        *(&v40 - 2) = v52;
        v15 = v51;
        v31 = sub_24A45363C(sub_24A41ED80, (&v40 - 4), v24);

        if (v31)
        {
          sub_24A3997D4(v14, v46, type metadata accessor for FMFFriend);
          v32 = v48;
          v33 = swift_isUniquelyReferenced_nonNull_native();
          v34 = v32;
          v53 = v32;
          if ((v33 & 1) == 0)
          {
            sub_24A39E574(0, *(v32 + 16) + 1, 1);
            v34 = v53;
          }

          v35 = v49;
          v37 = *(v34 + 16);
          v36 = *(v34 + 24);
          a4 = v44;
          if (v37 >= v36 >> 1)
          {
            sub_24A39E574((v36 > 1), v37 + 1, 1);
            v34 = v53;
          }

          *(v34 + 16) = v37 + 1;
          v48 = v34;
          sub_24A3997D4(v46, v34 + v35 + v37 * v19, type metadata accessor for FMFFriend);
        }

        else
        {
          sub_24A39A6F8(v14, type metadata accessor for FMFFriend);
          a4 = v44;
        }

        v16 = v43;
        v17 = v50 + 1;
        if (v50 + 1 == v45)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    else
    {
      v48 = MEMORY[0x277D84F90];
LABEL_23:

      v38 = v41;
      v39 = v42;
      v41(v48);

      sub_24A3C84A8(v38, v39);
    }
  }
}

void sub_24A419304(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = qword_27EF3EBF8;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_24A4AB630();
  sub_24A378E18(v6, qword_27EF4E260);

  v7 = sub_24A4AB600();
  v8 = sub_24A4ABCE0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v40 = v33;
    *v9 = 136315394;
    v32 = v8;
    v10 = sub_24A4AC3F0();
    log = v7;
    v12 = sub_24A37E99C(9uLL, v10, v11);
    v14 = v13;
    v15 = v4;
    v17 = v16;
    v19 = v18;

    v20 = v17;
    v4 = v15;
    v21 = MEMORY[0x24C217CD0](v12, v14, v20, v19);
    v23 = v22;

    aBlock = 30768;
    v35 = 0xE200000000000000;
    MEMORY[0x24C217D50](v21, v23);

    v24 = sub_24A37BD58(30768, 0xE200000000000000, &v40);

    *(v9 + 4) = v24;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_24A37BD58(v15, v3, &v40);
    _os_log_impl(&dword_24A376000, log, v32, "👀 FMFProactiveLocationController<%s>: will unsubscribe for %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v33, -1, -1);
    MEMORY[0x24C219130](v9, -1, -1);
  }

  else
  {
  }

  v25 = a2[7];
  v26 = sub_24A4AB820();
  v27 = sub_24A4AB820();
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = v4;
  v29[4] = v3;
  v38 = sub_24A41F320;
  v39 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_24A3D65E0;
  v37 = &unk_285D87D70;
  v30 = _Block_copy(&aBlock);

  [v25 unsubscribeForId:v26 clientApp:v27 completion:v30];
  _Block_release(v30);
}

void sub_24A41966C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v7 = sub_24A4AB630();
    sub_24A378E18(v7, qword_27EF4E260);

    v8 = a1;
    v9 = sub_24A4AB600();
    v10 = sub_24A4ABCE0();

    if (os_log_type_enabled(v9, v10))
    {
      v31 = v10;
      v11 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32 = v30;
      *v11 = 136315650;
      v12 = sub_24A4AC3F0();
      v14 = sub_24A37E99C(9uLL, v12, v13);
      v29 = a3;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v21 = MEMORY[0x24C217CD0](v14, v16, v18, v20);
      v23 = v22;

      MEMORY[0x24C217D50](v21, v23);

      v24 = sub_24A37BD58(30768, 0xE200000000000000, &v32);

      *(v11 + 4) = v24;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_24A37BD58(v29, a4, &v32);
      *(v11 + 22) = 2080;
      if (a1)
      {
        swift_getErrorValue();
        v25 = sub_24A4AC310();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0xE000000000000000;
      }

      v28 = sub_24A37BD58(v25, v27, &v32);

      *(v11 + 24) = v28;
      _os_log_impl(&dword_24A376000, v9, v31, "👀 FMFProactiveLocationController<%s>: did unsubscribe for %s (error=%s)", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v30, -1, -1);
      MEMORY[0x24C219130](v11, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_24A419954(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11)
{
  v83 = a7;
  v84 = a8;
  v90 = a4;
  v15 = sub_24A4AB690();
  v89 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v78[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = sub_24A4AB6E0();
  v18 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v20 = &v78[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = type metadata accessor for FMFLocation(0);
  v82 = *(v21 - 8);
  v22 = *(v82 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v85 = &v78[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v86 = &v78[-v24];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = result;
    v87 = a6;
    v27 = a9;
    if (!a1 || a2)
    {
      goto LABEL_4;
    }

    v81 = a9;
    v80 = a1;
    v33 = [v80 findMyId];
    v34 = sub_24A4AB850();
    v36 = v35;

    if (v34 == v90 && v36 == a5)
    {
    }

    else
    {
      v37 = sub_24A4AC270();

      if ((v37 & 1) == 0)
      {

        v27 = v81;
LABEL_4:
        v28 = swift_allocObject();
        v29 = v90;
        v28[2] = v26;
        v28[3] = v29;
        v28[4] = a5;
        v28[5] = a11;
        v28[6] = v27;
        v96 = sub_24A41EF48;
        v97 = v28;
        aBlock = MEMORY[0x277D85DD0];
        v93 = 1107296256;
        v94 = sub_24A388564;
        v95 = &unk_285D87C80;
        v30 = v27;
        v31 = _Block_copy(&aBlock);

        v32 = v30;

        sub_24A4AB6B0();
        v91 = MEMORY[0x277D84F90];
        sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
        sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
        sub_24A4ABE90();
        MEMORY[0x24C218190](0, v20, v17, v31);
        _Block_release(v31);

        v89[1](v17, v15);
        (*(v18 + 8))(v20, v88);
      }
    }

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v38 = a10;
    v39 = sub_24A4AB630();
    sub_24A378E18(v39, qword_27EF4E260);

    v40 = sub_24A4AB600();
    v41 = sub_24A4ABCE0();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v89 = a10;
      v43 = v42;
      v88 = swift_slowAlloc();
      v91 = v88;
      aBlock = v26;
      *v43 = 136315394;
      v79 = v41;
      v44 = sub_24A4AC3F0();
      v46 = sub_24A37E99C(9uLL, v44, v45);
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v53 = MEMORY[0x24C217CD0](v46, v48, v50, v52);
      v55 = v54;

      aBlock = 30768;
      v93 = 0xE200000000000000;
      MEMORY[0x24C217D50](v53, v55);

      v56 = sub_24A37BD58(aBlock, v93, &v91);

      *(v43 + 4) = v56;
      *(v43 + 12) = 2080;
      v57 = v90;
      *(v43 + 14) = sub_24A37BD58(v90, a5, &v91);
      _os_log_impl(&dword_24A376000, v40, v79, "👀 FMFProactiveLocationController<%s>: did cache-fetch for %s", v43, 0x16u);
      v58 = v88;
      swift_arrayDestroy();
      MEMORY[0x24C219130](v58, -1, -1);
      v59 = v43;
      v38 = v89;
      MEMORY[0x24C219130](v59, -1, -1);

      v60 = v87;
    }

    else
    {

      v60 = v87;
      v57 = v90;
    }

    v61 = swift_allocObject();
    *(v61 + 2) = v60;
    *(v61 + 3) = v26;
    *(v61 + 4) = v57;
    *(v61 + 5) = a5;
    v62 = v84;
    *(v61 + 6) = v83;
    *(v61 + 7) = v62;
    v63 = v80;
    v64 = v81;
    *(v61 + 8) = v81;
    *(v61 + 9) = v38;
    v65 = v63;
    v90 = v65;

    v66 = v60;

    v67 = v64;
    v68 = v38;
    v69 = v86;
    sub_24A3EC26C(v65, v86);
    sub_24A3C9CEC(&qword_27EF3F4F0, &unk_24A4B8C00);
    v70 = *(v82 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_24A4B4E10;
    sub_24A39921C(v69, v71 + ((v70 + 32) & ~v70), type metadata accessor for FMFLocation);
    v72 = v69;
    v73 = v85;
    sub_24A39921C(v72, v85, type metadata accessor for FMFLocation);
    v74 = (v70 + 16) & ~v70;
    v75 = (v22 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    sub_24A3997D4(v73, v76 + v74, type metadata accessor for FMFLocation);
    *(v76 + v75) = v26;
    v77 = (v76 + ((v75 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v77 = sub_24A41EF58;
    v77[1] = v61;

    sub_24A3BCD18(v71, sub_24A41F398, v76);

    sub_24A39A6F8(v86, type metadata accessor for FMFLocation);
  }

  return result;
}

uint64_t sub_24A41A1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v42 = a5;
  v43 = a7;
  v41[0] = a4;
  v41[1] = a6;
  v53 = a3;
  v45 = a8;
  v46 = a10;
  v44 = a9;
  v50 = sub_24A4AB690();
  v52 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_24A4AB6E0();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v47 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FMFLocation(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v41 - v21;
  sub_24A39921C(a1, v41 - v21, type metadata accessor for FMFLocation);
  sub_24A39921C(a2, v19, type metadata accessor for FMFLocation);
  v23 = *(v17 + 80);
  v24 = (v23 + 48) & ~v23;
  v25 = v18 + 7;
  v26 = (v18 + 7 + v24) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v23 + v26 + 8) & ~v23;
  v28 = (v25 + v27) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = v42;
  v30[2] = a4;
  v30[3] = v31;
  v30[4] = a6;
  v30[5] = v43;
  sub_24A3997D4(v22, v30 + v24, type metadata accessor for FMFLocation);
  *(v30 + v26) = v45;
  sub_24A3997D4(v19, v30 + v27, type metadata accessor for FMFLocation);
  v32 = v44;
  *(v30 + v28) = v44;
  v33 = v46;
  *(v30 + v29) = v46;
  aBlock[4] = sub_24A41F264;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D87D20;
  v34 = _Block_copy(aBlock);

  v35 = v32;
  v36 = v33;
  v37 = v47;
  sub_24A4AB6B0();
  v54 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  v38 = v48;
  v39 = v50;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v37, v38, v34);
  _Block_release(v34);
  (*(v52 + 8))(v38, v39);
  (*(v49 + 8))(v37, v51);
}

void sub_24A41A628(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, NSObject *a8, NSObject *a9)
{
  v61 = a4;
  v62 = a7;
  v15 = type metadata accessor for FMFLocation(0);
  v60 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v63 = &v54 - v19;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v20 = sub_24A4AB630();
  sub_24A378E18(v20, qword_27EF4E260);

  v21 = sub_24A4AB600();
  v22 = sub_24A4ABCE0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v58 = v17;
    v24 = v23;
    v25 = swift_slowAlloc();
    v59 = a8;
    v56 = v25;
    v64 = v25;
    v65 = a1;
    *v24 = 136315394;
    v26 = sub_24A4AC3F0();
    v28 = sub_24A37E99C(9uLL, v26, v27);
    v57 = a5;
    v30 = v29;
    v31 = a6;
    v33 = v32;
    v55 = a2;
    v35 = v34;

    v36 = v33;
    a6 = v31;
    v37 = MEMORY[0x24C217CD0](v28, v30, v36, v35);
    v39 = v38;

    v65 = 30768;
    v66 = 0xE200000000000000;
    MEMORY[0x24C217D50](v37, v39);

    v40 = sub_24A37BD58(v65, v66, &v64);

    *(v24 + 4) = v40;
    a5 = v57;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_24A37BD58(v55, a3, &v64);
    _os_log_impl(&dword_24A376000, v21, v22, "👀 FMFProactiveLocationController<%s>: did reverse-geo for %s", v24, 0x16u);
    v41 = v56;
    swift_arrayDestroy();
    a8 = v59;
    MEMORY[0x24C219130](v41, -1, -1);
    v42 = v24;
    v17 = v58;
    MEMORY[0x24C219130](v42, -1, -1);
  }

  sub_24A39921C(a5, v63, type metadata accessor for FMFLocation);
  v43 = v61;
  swift_beginAccess();
  v44 = *(v43 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v43 + 16) = v44;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v44 = sub_24A3B5C2C(0, v44[2] + 1, 1, v44);
    *(v43 + 16) = v44;
  }

  v47 = v44[2];
  v46 = v44[3];
  if (v47 >= v46 >> 1)
  {
    v44 = sub_24A3B5C2C((v46 > 1), v47 + 1, 1, v44);
  }

  v44[2] = v47 + 1;
  v48 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v49 = *(v60 + 72);
  sub_24A3997D4(v63, v44 + v48 + v49 * v47, type metadata accessor for FMFLocation);
  *(v43 + 16) = v44;
  swift_endAccess();
  sub_24A39921C(v62, v17, type metadata accessor for FMFLocation);
  swift_beginAccess();
  v50 = *(a6 + 16);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  *(a6 + 16) = v50;
  if ((v51 & 1) == 0)
  {
    v50 = sub_24A3B5C2C(0, v50[2] + 1, 1, v50);
    *(a6 + 16) = v50;
  }

  v53 = v50[2];
  v52 = v50[3];
  if (v53 >= v52 >> 1)
  {
    v50 = sub_24A3B5C2C((v52 > 1), v53 + 1, 1, v50);
  }

  v50[2] = v53 + 1;
  sub_24A3997D4(v17, v50 + v48 + v53 * v49, type metadata accessor for FMFLocation);
  *(a6 + 16) = v50;
  swift_endAccess();
  dispatch_group_leave(a8);
  dispatch_group_leave(a9);
}

void sub_24A41AAF4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, NSObject *a5)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A4AB630();
  sub_24A378E18(v9, qword_27EF4E260);

  v10 = sub_24A4AB600();
  v11 = sub_24A4ABCE0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36[0] = v34;
    *v12 = 136315394;
    v13 = sub_24A4AC3F0();
    v15 = sub_24A37E99C(9uLL, v13, v14);
    v33 = v11;
    v17 = v16;
    v35 = a2;
    v18 = a4;
    v19 = a5;
    v21 = v20;
    v23 = v22;

    v24 = MEMORY[0x24C217CD0](v15, v17, v21, v23);
    v26 = v25;

    v36[1] = 30768;
    v36[2] = 0xE200000000000000;
    MEMORY[0x24C217D50](v24, v26);
    a5 = v19;
    a4 = v18;
    a2 = v35;

    v27 = sub_24A37BD58(30768, 0xE200000000000000, v36);

    *(v12 + 4) = v27;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_24A37BD58(v35, a3, v36);
    _os_log_impl(&dword_24A376000, v10, v33, "👀 FMFProactiveLocationController<%s>: failed cache-fetch for %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v34, -1, -1);
    MEMORY[0x24C219130](v12, -1, -1);
  }

  swift_beginAccess();
  v28 = *(a4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = sub_24A3ED900(0, *(v28 + 2) + 1, 1, v28);
    *(a4 + 16) = v28;
  }

  v31 = *(v28 + 2);
  v30 = *(v28 + 3);
  if (v31 >= v30 >> 1)
  {
    v28 = sub_24A3ED900((v30 > 1), v31 + 1, 1, v28);
  }

  *(v28 + 2) = v31 + 1;
  v32 = &v28[16 * v31];
  *(v32 + 4) = a2;
  *(v32 + 5) = a3;
  *(a4 + 16) = v28;
  swift_endAccess();
  dispatch_group_leave(a5);
}

void sub_24A41ADF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69 = a5;
  v68 = a3;
  v77 = a2;
  v67 = sub_24A4AB690();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_24A4AB6E0();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v61 = a1;
  v75 = *(a1 + 16);
  v15 = &unk_24A4B4000;
  v74 = *(v75 + 16);
  if (v74)
  {
    v57 = a4;
    v58 = a6;
    v59 = a7;
    v60 = a8;
    v16 = 0;
    v17 = ( + 40);
    *&v18 = 136315394;
    v70 = v18;
    while (v16 < *(v75 + 16))
    {
      v19 = *v17;
      v76 = *(v17 - 1);
      v20 = qword_27EF3EBF8;

      if (v20 != -1)
      {
        swift_once();
      }

      v21 = sub_24A4AB630();
      sub_24A378E18(v21, qword_27EF4E260);

      v22 = sub_24A4AB600();
      v23 = sub_24A4ABCE0();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v85[0] = v73;
        *v24 = v70;
        aBlock = v77;
        v72 = v23;
        v25 = sub_24A4AC3F0();
        v27 = sub_24A37E99C(9uLL, v25, v26);
        v28 = v19;
        v71 = v22;
        v29 = v27;
        v31 = v30;
        v33 = v32;
        v35 = v34;

        v36 = MEMORY[0x24C217CD0](v29, v31, v33, v35);
        v38 = v37;
        v15 = &unk_24A4B4000;

        aBlock = 30768;
        v80 = 0xE200000000000000;
        MEMORY[0x24C217D50](v36, v38);

        v39 = sub_24A37BD58(aBlock, v80, v85);

        *(v24 + 4) = v39;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_24A37BD58(v76, v28, v85);
        v40 = v71;
        _os_log_impl(&dword_24A376000, v71, v72, "👀 FMFProactiveLocationController<%s>: subscribing for %s…", v24, 0x16u);
        v41 = v73;
        swift_arrayDestroy();
        MEMORY[0x24C219130](v41, -1, -1);
        MEMORY[0x24C219130](v24, -1, -1);
      }

      else
      {
      }

      ++v16;
      v17 += 2;
      if (v74 == v16)
      {

        v76 = *(v77 + 56);
        v42 = v61;
        swift_beginAccess();

        v43 = sub_24A4ABA50();

        v44 = sub_24A4AB820();
        v45 = swift_allocObject();
        swift_weakInit();
        v46 = swift_allocObject();
        v46[2] = v45;
        v46[3] = v42;
        a4 = v57;
        v46[4] = v68;
        v46[5] = a4;
        v47 = v69;
        v46[6] = v69;
        v83 = sub_24A41EDA0;
        v84 = v46;
        aBlock = MEMORY[0x277D85DD0];
        v80 = v15[156];
        v81 = sub_24A41CE7C;
        v82 = &unk_285D87AC8;
        v48 = _Block_copy(&aBlock);

        v49 = v47;

        [v76 subscribeAndFetchLocationForIds:v43 clientApp:v44 completion:v48];
        _Block_release(v48);

        a8 = v60;
        a7 = v59;
        a6 = v58;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v50 = v77;
    v51 = swift_allocObject();
    v51[2] = v50;
    v51[3] = a4;
    v51[4] = v68;
    v51[5] = a6;
    v51[6] = a7;
    v51[7] = a8;
    v83 = sub_24A41EDB0;
    v84 = v51;
    aBlock = MEMORY[0x277D85DD0];
    v80 = v15[156];
    v81 = sub_24A388564;
    v82 = &unk_285D87B18;
    v52 = _Block_copy(&aBlock);

    sub_24A3C8498(a6, a7);

    v53 = v62;
    sub_24A4AB6B0();
    v78 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
    v54 = v64;
    v55 = v67;
    sub_24A4ABE90();
    sub_24A4ABD00();
    _Block_release(v52);
    (*(v66 + 8))(v54, v55);
    (*(v63 + 8))(v53, v65);
  }
}

uint64_t sub_24A41B5D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v29 = a7;
  v12 = sub_24A4AB690();
  v30 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A4AB6E0();
  v31 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v28 = *(result + 40);
    v19 = result;
    v20 = swift_allocObject();
    v20[2] = a2;
    v20[3] = v19;
    v20[4] = a4;
    v20[5] = a1;
    v20[6] = a5;
    v20[7] = a6;
    v26 = a5;
    v21 = v29;
    v20[8] = v29;
    aBlock[4] = sub_24A41EDC0;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D87B68;
    v22 = _Block_copy(aBlock);
    v27 = v15;
    v23 = v22;
    v24 = a2;

    v25 = v21;
    sub_24A4AB6B0();
    v32 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v17, v14, v23);
    _Block_release(v23);
    (*(v30 + 8))(v14, v12);
    (*(v31 + 8))(v17, v27);
  }

  return result;
}

uint64_t sub_24A41B93C(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v8 = a7;
  v9 = a3;
  v10 = a2;
  if (!a1)
  {
    v12 = a5;
    if (a4 >> 62)
    {
      v9 = sub_24A4AC060();
    }

    else
    {
      v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = v8;
    if (v9)
    {
      v38 = 0;
      v8 = (a4 & 0xC000000000000001);
      v10 = a4 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v8)
        {
          v39 = MEMORY[0x24C218380](v38, a4);
        }

        else
        {
          if (v38 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v39 = *(a4 + 8 * v38 + 32);
        }

        v7 = v39;
        v40 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_29;
        }

        v77 = v39;
        sub_24A41C004(&v77, (a3 + 16), a2, v12, a6, v37);

        ++v38;
      }

      while (v40 != v9);
    }

    v8 = a7;
    v35 = 0x27EF3E000;
    v9 = a3;
    goto LABEL_18;
  }

  v7 = a1;
  v11 = a1;
  v12 = 0x27EF3E000uLL;
  if (qword_27EF3EBF8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v13 = sub_24A4AB630();
    sub_24A378E18(v13, qword_27EF4E260);

    v14 = v7;

    v15 = sub_24A4AB600();
    v16 = sub_24A4ABCE0();

    if (os_log_type_enabled(v15, v16))
    {
      v12 = v9;
      v17 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v74 = v72;
      *v17 = 136315650;
      v77 = v10;
      loga = v15;
      v18 = sub_24A4AC3F0();
      v20 = sub_24A37E99C(9uLL, v18, v19);
      v65 = v16;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v27 = MEMORY[0x24C217CD0](v20, v22, v24, v26);
      v29 = v28;

      v77 = 30768;
      v78 = 0xE200000000000000;
      MEMORY[0x24C217D50](v27, v29);

      v30 = sub_24A37BD58(v77, v78, &v74);

      *(v17 + 4) = v30;
      *(v17 + 12) = 2048;
      swift_beginAccess();
      v31 = *(*(v12 + 16) + 16);

      *(v17 + 14) = v31;

      *(v17 + 22) = 2080;
      swift_getErrorValue();
      v32 = sub_24A4AC310();
      v34 = sub_24A37BD58(v32, v33, &v74);

      *(v17 + 24) = v34;
      _os_log_impl(&dword_24A376000, loga, v65, "👀 FMFProactiveLocationController<%s>: failed subscribing for %ld ids (error=%s)", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v72, -1, -1);
      v9 = v12;
      MEMORY[0x24C219130](v17, -1, -1);

      v35 = 0x27EF3E000;
    }

    else
    {

      v35 = v12;
    }

LABEL_18:
    swift_beginAccess();
    v41 = *(v9 + 16);
    v42 = *(v41 + 16);

    log = v42;
    if (!v42)
    {
      break;
    }

    v9 = 0;
    v43 = (v41 + 40);
    v62 = v41;
    while (v9 < *(v41 + 16))
    {
      v44 = v8;
      v7 = *v43;
      v73 = *(v43 - 1);
      v10 = v35;
      v45 = *(v35 + 3064);

      if (v45 != -1)
      {
        swift_once();
      }

      v46 = sub_24A4AB630();
      sub_24A378E18(v46, qword_27EF4E260);
      v12 = a2;

      v47 = sub_24A4AB600();
      v48 = sub_24A4ABCE0();

      v70 = v48;
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v76 = v64;
        *v49 = 136315394;
        v74 = a2;
        v50 = sub_24A4AC3F0();
        v10 = sub_24A37E99C(9uLL, v50, v51);
        v53 = v52;
        v55 = v54;
        v12 = v56;

        v57 = MEMORY[0x24C217CD0](v10, v53, v55, v12);
        v59 = v58;

        v74 = 30768;
        v75 = 0xE200000000000000;
        MEMORY[0x24C217D50](v57, v59);
        v8 = a7;

        v60 = sub_24A37BD58(v74, v75, &v76);

        *(v49 + 4) = v60;
        v41 = v62;
        *(v49 + 12) = 2080;
        *(v49 + 14) = sub_24A37BD58(v73, v7, &v76);
        _os_log_impl(&dword_24A376000, v47, v70, "👀 FMFProactiveLocationController<%s>: failed subscribe and fetch for %s: no location found", v49, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C219130](v64, -1, -1);
        v35 = 0x27EF3E000;
        MEMORY[0x24C219130](v49, -1, -1);
      }

      else
      {

        v8 = v44;
        v35 = v10;
      }

      ++v9;
      dispatch_group_leave(v8);

      v43 += 2;
      if (log == v9)
      {
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }
}

uint64_t sub_24A41C004(id *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v79 = a5;
  v80 = a6;
  v78 = a4;
  v85 = a3;
  v8 = type metadata accessor for FMFLocation(0);
  v81 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v82 = v9;
  v83 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v86 = &v77 - v11;
  v87 = *a1;
  swift_beginAccess();
  v84 = a2;
  v12 = *a2;
  v13 = *(*a2 + 16);

  if (!v13)
  {
  }

  v14 = 0;
  for (i = (v12 + 40); ; i += 2)
  {
    if (v14 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v16 = *(i - 1);
    v17 = *i;

    v18 = [v87 findMyId];
    v19 = sub_24A4AB850();
    v21 = v20;

    if (v16 == v19 && v17 == v21)
    {
      break;
    }

    v23 = sub_24A4AC270();

    if (v23)
    {
      goto LABEL_12;
    }

    if (v13 == ++v14)
    {
    }
  }

LABEL_12:

  swift_beginAccess();
  sub_24A41C6E4(v14);
  swift_endAccess();

  if (qword_27EF3EBF8 == -1)
  {
    goto LABEL_13;
  }

LABEL_21:
  swift_once();
LABEL_13:
  v25 = sub_24A4AB630();
  sub_24A378E18(v25, qword_27EF4E260);
  v26 = v87;
  v27 = v85;

  v28 = v27;
  v29 = sub_24A4AB600();
  v30 = sub_24A4ABCE0();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v88 = v28;
    v90 = v87;
    *v31 = 136316163;
    v32 = sub_24A4AC3F0();
    v34 = sub_24A37E99C(9uLL, v32, v33);
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v41 = MEMORY[0x24C217CD0](v34, v36, v38, v40);
    v43 = v42;

    v88 = 30768;
    v89 = 0xE200000000000000;
    MEMORY[0x24C217D50](v41, v43);

    v44 = sub_24A37BD58(v88, v89, &v90);

    *(v31 + 4) = v44;
    *(v31 + 12) = 2080;
    v45 = [v26 findMyId];
    v46 = sub_24A4AB850();
    v48 = v47;

    v49 = sub_24A37BD58(v46, v48, &v90);

    *(v31 + 14) = v49;
    *(v31 + 22) = 2049;
    [v26 latitude];
    *(v31 + 24) = v50;
    *(v31 + 32) = 2049;
    [v26 longitude];
    *(v31 + 34) = v51;
    *(v31 + 42) = 2081;
    v52 = [v26 locationLabel];
    if (v52)
    {
      v53 = v52;
      v54 = sub_24A4AB850();
      v56 = v55;
    }

    else
    {
      v56 = 0xE300000000000000;
      v54 = 7104878;
    }

    v57 = sub_24A37BD58(v54, v56, &v90);

    *(v31 + 44) = v57;
    _os_log_impl(&dword_24A376000, v29, v30, "👀 FMFProactiveLocationController<%s>: did subscribe and fetch for %s: {%{private}f,%{private}f}, label='%{private}s'", v31, 0x34u);
    v58 = v87;
    swift_arrayDestroy();
    MEMORY[0x24C219130](v58, -1, -1);
    MEMORY[0x24C219130](v31, -1, -1);

    v28 = v85;
  }

  else
  {
  }

  v59 = swift_allocObject();
  v87 = v59;
  swift_weakInit();
  v60 = swift_allocObject();
  v62 = v78;
  v61 = v79;
  *(v60 + 2) = v59;
  *(v60 + 3) = v62;
  v63 = v80;
  *(v60 + 4) = v61;
  *(v60 + 5) = v63;
  v64 = v28;
  v65 = v26;

  v66 = v63;
  v67 = v86;
  sub_24A3EC26C(v65, v86);
  v85 = *(v64 + 72);
  v68 = v64;
  sub_24A3C9CEC(&qword_27EF3F4F0, &unk_24A4B8C00);
  v69 = *(v81 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_24A4B4E10;
  sub_24A39921C(v67, v70 + ((v69 + 32) & ~v69), type metadata accessor for FMFLocation);
  v71 = v67;
  v72 = v83;
  sub_24A39921C(v71, v83, type metadata accessor for FMFLocation);
  v73 = (v69 + 16) & ~v69;
  v74 = (v82 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  sub_24A3997D4(v72, v75 + v73, type metadata accessor for FMFLocation);
  *(v75 + v74) = v68;
  v76 = (v75 + ((v74 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v76 = sub_24A41EDD4;
  v76[1] = v60;

  sub_24A3BCD18(v70, sub_24A41EDE0, v75);

  sub_24A39A6F8(v86, type metadata accessor for FMFLocation);
}

uint64_t sub_24A41C6E4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24A473E14(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_24A41C770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v37 = a5;
  v38 = a6;
  v36 = a4;
  v8 = sub_24A4AB690();
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A4AB6E0();
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v39 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMFLocation(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v33 = *(result + 40);
    v34 = result;
    sub_24A39921C(a1, v18, type metadata accessor for FMFLocation);
    sub_24A39921C(a2, v15, type metadata accessor for FMFLocation);
    v20 = *(v13 + 80);
    v21 = (v20 + 24) & ~v20;
    v22 = (v14 + 7 + v21) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v20 + v22 + 8) & ~v20;
    v32 = v10;
    v24 = (v14 + 7 + v23) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = v36;
    sub_24A3997D4(v18, v25 + v21, type metadata accessor for FMFLocation);
    *(v25 + v22) = v37;
    sub_24A3997D4(v15, v25 + v23, type metadata accessor for FMFLocation);
    v26 = v38;
    *(v25 + v24) = v38;
    aBlock[4] = sub_24A41EE9C;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D87C30;
    v27 = _Block_copy(aBlock);

    v28 = v26;
    v29 = v39;
    sub_24A4AB6B0();
    v42 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
    v30 = v41;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v29, v30, v27);
    _Block_release(v27);
    (*(v35 + 8))(v30, v8);
    (*(v40 + 8))(v29, v32);
  }

  return result;
}

void sub_24A41CBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v10 = type metadata accessor for FMFLocation(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  sub_24A39921C(a2, &v27 - v15, type metadata accessor for FMFLocation);
  swift_beginAccess();
  v17 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_24A3B5C2C(0, v17[2] + 1, 1, v17);
    *(a1 + 16) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_24A3B5C2C((v19 > 1), v20 + 1, 1, v17);
  }

  v17[2] = v20 + 1;
  v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v22 = *(v11 + 72);
  sub_24A3997D4(v16, v17 + v21 + v22 * v20, type metadata accessor for FMFLocation);
  *(a1 + 16) = v17;
  swift_endAccess();
  sub_24A39921C(a4, v13, type metadata accessor for FMFLocation);
  swift_beginAccess();
  v23 = *(a3 + 16);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v23;
  if ((v24 & 1) == 0)
  {
    v23 = sub_24A3B5C2C(0, v23[2] + 1, 1, v23);
    *(a3 + 16) = v23;
  }

  v26 = v23[2];
  v25 = v23[3];
  if (v26 >= v25 >> 1)
  {
    v23 = sub_24A3B5C2C((v25 > 1), v26 + 1, 1, v23);
  }

  v23[2] = v26 + 1;
  sub_24A3997D4(v13, v23 + v21 + v26 * v22, type metadata accessor for FMFLocation);
  *(a3 + 16) = v23;
  swift_endAccess();
  dispatch_group_leave(a5);
}

void sub_24A41CE7C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_24A37B428(0, &qword_27EF3FE48, 0x277D496B8);
  v5 = sub_24A4ABA70();

  v6 = a3;
  v4(v5, a3);
}

void (*sub_24A41CF2C(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6))(void)
{
  v70 = a5;
  v71 = a4;
  v10 = type metadata accessor for FMFFriend(0);
  v75 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v69 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v69 - v16;
  if (qword_27EF3EBF8 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v18 = sub_24A4AB630();
    sub_24A378E18(v18, qword_27EF4E260);
    swift_retain_n();

    v19 = sub_24A4AB600();
    v20 = sub_24A4ABCE0();

    v21 = os_log_type_enabled(v19, v20);
    v77 = a6;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v83[0] = v79;
      *v22 = 136315394;
      v84 = a1;
      v78 = v19;
      v23 = sub_24A4AC3F0();
      v25 = sub_24A37E99C(9uLL, v23, v24);
      v27 = v26;
      v80 = a3;
      v29 = v28;
      LODWORD(v76) = v20;
      v31 = v30;

      v32 = MEMORY[0x24C217CD0](v25, v27, v29, v31);
      v34 = v33;

      v84 = 30768;
      v85 = 0xE200000000000000;
      MEMORY[0x24C217D50](v32, v34);

      v35 = sub_24A37BD58(v84, v85, v83);

      *(v22 + 4) = v35;
      a3 = v80;
      *(v22 + 12) = 2048;
      swift_beginAccess();
      v36 = *(*(a2 + 16) + 16);

      *(v22 + 14) = v36;

      v37 = v78;
      _os_log_impl(&dword_24A376000, v78, v76, "👀 FMFProactiveLocationController<%s>: updating client subscribers with %ld resolved locations", v22, 0x16u);
      v38 = v79;
      sub_24A37EEE0(v79);
      MEMORY[0x24C219130](v38, -1, -1);
      v39 = v22;
      a6 = v77;
      MEMORY[0x24C219130](v39, -1, -1);
    }

    else
    {
    }

    v40 = *(a1 + 16);
    v41 = swift_beginAccess();
    v42 = a1;
    v43 = *(a3 + 16);
    MEMORY[0x28223BE20](v41);
    *(&v69 - 2) = v43;
    *(&v69 - 1) = v40;

    sub_24A4ABD70();

    v44 = *(a1 + 16);
    v45 = swift_beginAccess();
    a1 = &v69;
    v46 = *(a2 + 16);
    MEMORY[0x28223BE20](v45);
    *(&v69 - 2) = v44;
    *(&v69 - 1) = v46;

    sub_24A4ABD70();

    result = v71;
    if (!v71)
    {
      return result;
    }

    a2 = *(v42 + 16);
    sub_24A3C8498(v71, v70);

    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();
    v80 = 0;

    a3 = v81[0];
    v73 = *(v81[0] + 16);
    if (!v73)
    {
      v76 = MEMORY[0x277D84F90];
LABEL_27:

      v67 = v70;
      v68 = v71;
      v71(v76);

      return sub_24A3C84A8(v68, v67);
    }

    v48 = 0;
    v76 = MEMORY[0x277D84F90];
    v72 = v81[0];
    while (v48 < *(a3 + 16))
    {
      v49 = ((*(v75 + 80) + 32) & ~*(v75 + 80));
      a2 = *(v75 + 72);
      v50 = v49 + a3 + a2 * v48;
      v51 = v17;
      isUniquelyReferenced_nonNull_native = sub_24A39921C(v50, v17, type metadata accessor for FMFFriend);
      v53 = *(a6 + 16);
      v78 = v49;
      v79 = v48;
      if (v53)
      {
        v54 = v49 + a6;
        v55 = MEMORY[0x277D84F90];
        do
        {
          sub_24A39921C(v54, v14, type metadata accessor for FMFFriend);
          v57 = *v14;
          v56 = v14[1];

          sub_24A39A6F8(v14, type metadata accessor for FMFFriend);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_24A3ED900(0, *(v55 + 16) + 1, 1, v55);
            v55 = isUniquelyReferenced_nonNull_native;
          }

          a1 = *(v55 + 16);
          v58 = *(v55 + 24);
          if (a1 >= v58 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_24A3ED900((v58 > 1), a1 + 1, 1, v55);
            v55 = isUniquelyReferenced_nonNull_native;
          }

          *(v55 + 16) = a1 + 1;
          v59 = v55 + 16 * a1;
          *(v59 + 32) = v57;
          *(v59 + 40) = v56;
          v54 += a2;
          --v53;
        }

        while (v53);
      }

      else
      {
        v55 = MEMORY[0x277D84F90];
      }

      v17 = v51;
      v60 = *(v51 + 1);
      v81[0] = *v51;
      v81[1] = v60;
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      *(&v69 - 2) = v81;
      v61 = v80;
      v62 = sub_24A45363C(sub_24A41F354, (&v69 - 4), v55);
      v80 = v61;

      if (v62)
      {
        sub_24A3997D4(v17, v74, type metadata accessor for FMFFriend);
        v63 = v76;
        v64 = swift_isUniquelyReferenced_nonNull_native();
        v82 = v63;
        a3 = v72;
        if ((v64 & 1) == 0)
        {
          sub_24A39E574(0, *(v63 + 16) + 1, 1);
          v63 = v82;
        }

        a6 = v77;
        a1 = v78;
        v66 = *(v63 + 16);
        v65 = *(v63 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_24A39E574((v65 > 1), v66 + 1, 1);
          v63 = v82;
        }

        *(v63 + 16) = v66 + 1;
        v76 = v63;
        sub_24A3997D4(v74, v63 + a1 + v66 * a2, type metadata accessor for FMFFriend);
      }

      else
      {
        sub_24A39A6F8(v17, type metadata accessor for FMFFriend);
        a6 = v77;
        a3 = v72;
      }

      v48 = v79 + 1;
      if ((v79 + 1) == v73)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }
}

void sub_24A41D74C(uint64_t *a1)
{
  v2 = *(type metadata accessor for FMFFriend(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24A41ED38(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_24A41D7F4(v5);
  *a1 = v3;
}

void sub_24A41D7F4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24A4AC220();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for FMFFriend(0);
        v6 = sub_24A4ABAC0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for FMFFriend(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24A41DBAC(v8, v9, a1, v4);
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
    sub_24A41D920(0, v2, 1, a1);
  }
}

void sub_24A41D920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for FMFFriend(0);
  MEMORY[0x28223BE20](v34);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v26 - v11);
  MEMORY[0x28223BE20](v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_24A39921C(v22, v16, type metadata accessor for FMFFriend);
      sub_24A39921C(v19, v12, type metadata accessor for FMFFriend);
      if (*v16 == *v12 && v16[1] == v12[1])
      {
        sub_24A39A6F8(v12, type metadata accessor for FMFFriend);
        sub_24A39A6F8(v16, type metadata accessor for FMFFriend);
LABEL_5:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_6;
      }

      v24 = sub_24A4AC270();
      sub_24A39A6F8(v12, type metadata accessor for FMFFriend);
      sub_24A39A6F8(v16, type metadata accessor for FMFFriend);
      if ((v24 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      sub_24A3997D4(v22, v9, type metadata accessor for FMFFriend);
      swift_arrayInitWithTakeFrontToBack();
      sub_24A3997D4(v9, v19, type metadata accessor for FMFFriend);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_24A41DBAC(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v123 = a1;
  v137 = type metadata accessor for FMFFriend(0);
  v130 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v126 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v136 = &v117 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = (&v117 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = (&v117 - v16);
  MEMORY[0x28223BE20](v18);
  v134 = (&v117 - v19);
  MEMORY[0x28223BE20](v20);
  v133 = (&v117 - v21);
  MEMORY[0x28223BE20](v22);
  v122 = (&v117 - v23);
  MEMORY[0x28223BE20](v24);
  v121 = (&v117 - v25);
  v26 = *(a3 + 8);
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_110:
    v5 = *v123;
    if (!*v123)
    {
      goto LABEL_148;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_112:
      v138 = v28;
      v112 = *(v28 + 16);
      if (v112 >= 2)
      {
        while (*a3)
        {
          v113 = v28;
          v28 = *(v28 + 16 * v112);
          v114 = v113;
          v115 = *&v113[16 * v112 + 24];
          sub_24A41E608(*a3 + *(v130 + 72) * v28, *a3 + *(v130 + 72) * *&v113[16 * v112 + 16], *a3 + *(v130 + 72) * v115, v5);
          if (v6)
          {
            goto LABEL_120;
          }

          if (v115 < v28)
          {
            goto LABEL_135;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v114 = sub_24A41EC2C(v114);
          }

          if (v112 - 2 >= *(v114 + 2))
          {
            goto LABEL_136;
          }

          v116 = &v114[16 * v112];
          *v116 = v28;
          v116[1] = v115;
          v138 = v114;
          sub_24A41EBA0(v112 - 1);
          v28 = v138;
          v112 = *(v138 + 16);
          if (v112 <= 1)
          {
            goto LABEL_120;
          }
        }

        goto LABEL_146;
      }

LABEL_120:

      return;
    }

LABEL_142:
    v28 = sub_24A41EC2C(v28);
    goto LABEL_112;
  }

  v117 = a4;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v131 = a3;
  v127 = v17;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    if (v27 + 1 < v26)
    {
      v128 = v26;
      v118 = v28;
      v31 = *a3;
      v32 = *(v130 + 72);
      v33 = v27 + 1;
      v34 = v121;
      sub_24A39921C(v31 + v32 * v30, v121, type metadata accessor for FMFFriend);
      v132 = v32;
      v35 = v31 + v32 * v29;
      v36 = v122;
      sub_24A39921C(v35, v122, type metadata accessor for FMFFriend);
      v37 = *v34 == *v36 && v34[1] == v36[1];
      v119 = v6;
      if (v37)
      {
        LODWORD(v129) = 0;
      }

      else
      {
        LODWORD(v129) = sub_24A4AC270();
      }

      sub_24A39A6F8(v122, type metadata accessor for FMFFriend);
      sub_24A39A6F8(v121, type metadata accessor for FMFFriend);
      v120 = v29;
      v38 = v29 + 2;
      v39 = v132 * (v29 + 2);
      v40 = v31 + v39;
      v41 = v33;
      v42 = v132 * v33;
      a3 = v31 + v132 * v33;
      do
      {
        v44 = v38;
        v28 = v41;
        v5 = v42;
        v45 = v39;
        v135 = v38;
        if (v38 >= v128)
        {
          break;
        }

        v46 = v14;
        v47 = v133;
        sub_24A39921C(v40, v133, type metadata accessor for FMFFriend);
        v48 = v134;
        sub_24A39921C(a3, v134, type metadata accessor for FMFFriend);
        v49 = *v47 == *v48 && v47[1] == v48[1];
        v43 = v49 ? 0 : sub_24A4AC270();
        v14 = v46;
        v6 = type metadata accessor for FMFFriend;
        sub_24A39A6F8(v134, type metadata accessor for FMFFriend);
        sub_24A39A6F8(v133, type metadata accessor for FMFFriend);
        v44 = v135;
        v38 = v135 + 1;
        v40 += v132;
        a3 += v132;
        v41 = v28 + 1;
        v42 = v5 + v132;
        v39 = v45 + v132;
        v17 = v127;
      }

      while (((v129 ^ v43) & 1) == 0);
      if ((v129 & 1) == 0)
      {
        v30 = v44;
LABEL_36:
        v28 = v118;
        v6 = v119;
        a3 = v131;
        v29 = v120;
        goto LABEL_37;
      }

      if (v44 < v120)
      {
        goto LABEL_139;
      }

      if (v120 < v44)
      {
        v50 = v120 * v132;
        v51 = v120;
        do
        {
          if (v51 != v28)
          {
            v53 = *v131;
            if (!*v131)
            {
              goto LABEL_145;
            }

            sub_24A3997D4(v53 + v50, v126, type metadata accessor for FMFFriend);
            if (v50 < v5 || v53 + v50 >= (v53 + v45))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v50 != v5)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_24A3997D4(v126, v53 + v5, type metadata accessor for FMFFriend);
          }

          ++v51;
          v5 -= v132;
          v45 -= v132;
          v50 += v132;
        }

        while (v51 < v28--);
        v30 = v135;
        goto LABEL_36;
      }

      v30 = v44;
      v28 = v118;
      v6 = v119;
      a3 = v131;
      v29 = v120;
    }

LABEL_37:
    v54 = *(a3 + 8);
    if (v30 < v54)
    {
      if (__OFSUB__(v30, v29))
      {
        goto LABEL_138;
      }

      if (v30 - v29 < v117)
      {
        break;
      }
    }

LABEL_59:
    if (v30 < v29)
    {
      goto LABEL_137;
    }

    v135 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_24A3EDCB4(0, *(v28 + 16) + 1, 1, v28);
    }

    v66 = *(v28 + 16);
    v65 = *(v28 + 24);
    v67 = v66 + 1;
    v27 = v135;
    if (v66 >= v65 >> 1)
    {
      v111 = sub_24A3EDCB4((v65 > 1), v66 + 1, 1, v28);
      v27 = v135;
      v28 = v111;
    }

    *(v28 + 16) = v67;
    v68 = v28 + 16 * v66;
    *(v68 + 32) = v29;
    *(v68 + 40) = v27;
    v5 = *v123;
    if (!*v123)
    {
      goto LABEL_147;
    }

    if (v66)
    {
      while (1)
      {
        a3 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v69 = *(v28 + 32);
          v70 = *(v28 + 40);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_79:
          if (v72)
          {
            goto LABEL_126;
          }

          v85 = (v28 + 16 * v67);
          v87 = *v85;
          v86 = v85[1];
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_129;
          }

          v91 = (v28 + 32 + 16 * a3);
          v93 = *v91;
          v92 = v91[1];
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_133;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              a3 = v67 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v95 = (v28 + 16 * v67);
        v97 = *v95;
        v96 = v95[1];
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_93:
        if (v90)
        {
          goto LABEL_128;
        }

        v98 = v28 + 16 * a3;
        v100 = *(v98 + 32);
        v99 = *(v98 + 40);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_131;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_100:
        v106 = a3 - 1;
        if (a3 - 1 >= v67)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v131)
        {
          goto LABEL_144;
        }

        v107 = v28;
        v108 = v28 + 32;
        v28 = *(v28 + 32 + 16 * v106);
        v109 = *(v108 + 16 * a3 + 8);
        sub_24A41E608(*v131 + *(v130 + 72) * v28, *v131 + *(v130 + 72) * *(v108 + 16 * a3), *v131 + *(v130 + 72) * v109, v5);
        if (v6)
        {
          goto LABEL_120;
        }

        if (v109 < v28)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_24A41EC2C(v107);
        }

        if (v106 >= *(v107 + 2))
        {
          goto LABEL_123;
        }

        v110 = &v107[16 * v106];
        *(v110 + 4) = v28;
        *(v110 + 5) = v109;
        v138 = v107;
        sub_24A41EBA0(a3);
        v28 = v138;
        v67 = *(v138 + 16);
        v27 = v135;
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = v28 + 32 + 16 * v67;
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_124;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_125;
      }

      v80 = (v28 + 16 * v67);
      v82 = *v80;
      v81 = v80[1];
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_127;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_130;
      }

      if (v84 >= v76)
      {
        v102 = (v28 + 32 + 16 * a3);
        v104 = *v102;
        v103 = v102[1];
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_134;
        }

        if (v71 < v105)
        {
          a3 = v67 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    a3 = v131;
    v26 = v131[1];
    if (v27 >= v26)
    {
      goto LABEL_110;
    }
  }

  v55 = v29 + v117;
  if (__OFADD__(v29, v117))
  {
    goto LABEL_140;
  }

  if (v55 >= v54)
  {
    v55 = *(a3 + 8);
  }

  if (v55 < v29)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v30 == v55)
  {
    goto LABEL_59;
  }

  v118 = v28;
  v119 = v6;
  a3 = *a3;
  v56 = *(v130 + 72);
  v57 = a3 + v56 * (v30 - 1);
  v58 = v29;
  v59 = -v56;
  v120 = v58;
  v60 = v58 - v30;
  v124 = v56;
  v125 = v55;
  v5 = a3 + v30 * v56;
LABEL_48:
  v135 = v30;
  v128 = v5;
  v129 = v60;
  v132 = v57;
  while (1)
  {
    sub_24A39921C(v5, v17, type metadata accessor for FMFFriend);
    sub_24A39921C(v57, v14, type metadata accessor for FMFFriend);
    if (*v17 == *v14 && v17[1] == v14[1])
    {
      sub_24A39A6F8(v14, type metadata accessor for FMFFriend);
      sub_24A39A6F8(v17, type metadata accessor for FMFFriend);
LABEL_47:
      v30 = v135 + 1;
      v57 = v132 + v124;
      v60 = v129 - 1;
      v5 = v128 + v124;
      if (v135 + 1 == v125)
      {
        v30 = v125;
        v28 = v118;
        v6 = v119;
        v29 = v120;
        goto LABEL_59;
      }

      goto LABEL_48;
    }

    v62 = sub_24A4AC270();
    sub_24A39A6F8(v14, type metadata accessor for FMFFriend);
    sub_24A39A6F8(v17, type metadata accessor for FMFFriend);
    if ((v62 & 1) == 0)
    {
      goto LABEL_47;
    }

    if (!a3)
    {
      break;
    }

    v63 = v136;
    sub_24A3997D4(v5, v136, type metadata accessor for FMFFriend);
    swift_arrayInitWithTakeFrontToBack();
    sub_24A3997D4(v63, v57, type metadata accessor for FMFFriend);
    v57 += v59;
    v5 += v59;
    if (__CFADD__(v60++, 1))
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
}

void sub_24A41E608(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = a4;
  v46 = type metadata accessor for FMFFriend(0);
  MEMORY[0x28223BE20](v46);
  v45 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v44 = (&v39 - v9);
  MEMORY[0x28223BE20](v10);
  v12 = (&v39 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = (&v39 - v14);
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  v43 = a2;
  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v18 = a3 - v43;
  if (a3 - v43 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_72;
  }

  v19 = (a2 - a1) / v17;
  v50 = a1;
  v49 = v47;
  if (v19 >= v18 / v17)
  {
    v22 = v18 / v17 * v17;
    if (v47 < v43 || v43 + v22 <= v47)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v47 != v43)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = v47 + v22;
    if (v22 >= 1)
    {
      v29 = -v17;
      v30 = v47 + v22;
      v42 = -v17;
      do
      {
        v40 = v28;
        v31 = v43;
        v43 += v29;
        while (1)
        {
          if (v31 <= a1)
          {
            v50 = v31;
            v48 = v40;
            goto LABEL_69;
          }

          v32 = a3;
          v41 = v28;
          v33 = v42;
          v34 = v30 + v42;
          v35 = v44;
          sub_24A39921C(v30 + v42, v44, type metadata accessor for FMFFriend);
          v36 = v45;
          sub_24A39921C(v43, v45, type metadata accessor for FMFFriend);
          v37 = *v35 == *v36 && v35[1] == v36[1];
          v38 = v37 ? 0 : sub_24A4AC270();
          a3 = v32 + v33;
          sub_24A39A6F8(v45, type metadata accessor for FMFFriend);
          sub_24A39A6F8(v44, type metadata accessor for FMFFriend);
          if (v38)
          {
            break;
          }

          v28 = v30 + v33;
          if (v32 < v30 || a3 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v32 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v30 += v33;
          if (v34 <= v47)
          {
            v43 = v31;
            goto LABEL_68;
          }
        }

        if (v32 < v31 || a3 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
          v28 = v41;
        }

        else
        {
          v28 = v41;
          if (v32 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v29 = v42;
      }

      while (v30 > v47);
    }

LABEL_68:
    v50 = v43;
    v48 = v28;
  }

  else
  {
    v20 = v19 * v17;
    if (v47 < a1 || a1 + v20 <= v47)
    {
      swift_arrayInitWithTakeFrontToBack();
      v21 = v43;
    }

    else
    {
      v21 = v43;
      if (v47 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v23 = v47 + v20;
    v48 = v47 + v20;
    if (v20 >= 1 && v21 < a3)
    {
      while (1)
      {
        sub_24A39921C(v21, v15, type metadata accessor for FMFFriend);
        sub_24A39921C(v47, v12, type metadata accessor for FMFFriend);
        if (*v15 == *v12 && v15[1] == v12[1])
        {
          break;
        }

        v26 = sub_24A4AC270();
        sub_24A39A6F8(v12, type metadata accessor for FMFFriend);
        sub_24A39A6F8(v15, type metadata accessor for FMFFriend);
        if ((v26 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (a1 < v21 || a1 >= v21 + v17)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v21 += v17;
LABEL_38:
        a1 += v17;
        v50 = a1;
        if (v47 >= v23 || v21 >= a3)
        {
          goto LABEL_69;
        }
      }

      sub_24A39A6F8(v12, type metadata accessor for FMFFriend);
      sub_24A39A6F8(v15, type metadata accessor for FMFFriend);
LABEL_30:
      v27 = v47 + v17;
      if (a1 < v47 || a1 >= v27)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v47)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v49 = v27;
      v47 = v27;
      goto LABEL_38;
    }
  }

LABEL_69:
  sub_24A41EC40(&v50, &v49, &v48);
}

uint64_t sub_24A41EBA0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24A41EC2C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_24A41EC40(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for FMFFriend(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_24A41EDE4(const void *a1)
{
  v3 = *(type metadata accessor for FMFLocation(0) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v6);
  v9 = *(v1 + v7);
  v10 = *(v1 + v7 + 8);

  return sub_24A417240(a1, (v1 + v5), v8, v9, v10, v1 + ((v4 + 16 + v7) & ~v4));
}

void sub_24A41EE9C()
{
  v1 = *(type metadata accessor for FMFLocation(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v2 + v5 + 8) & ~v2;
  v7 = *(v0 + v5);
  v8 = *(v0 + ((v4 + v6) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v0 + 16);

  sub_24A41CBDC(v9, v0 + v3, v7, v0 + v6, v8);
}

uint64_t sub_24A41EF8C()
{
  v1 = type metadata accessor for FMFLocation(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 32);
  v7 = sub_24A4AAB20();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v5 + *(v1 + 44);
  v10 = *(v9 + 304);
  if (v10)
  {
    if (*(v9 + 168))
    {

      v10 = *(v9 + 304);
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_24A41F1B8(uint64_t a1)
{
  v3 = *(type metadata accessor for FMFLocation(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_24A416914(a1, v1 + v4, v6, v8, v9);
}

void sub_24A41F264()
{
  v1 = *(type metadata accessor for FMFLocation(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  sub_24A41A628(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v3, *(v0 + v5), v0 + ((v2 + v5 + 8) & ~v2), *(v0 + ((v4 + ((v2 + v5 + 8) & ~v2)) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + ((v2 + v5 + 8) & ~v2)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_24A41F39C(uint64_t a1, unsigned __int8 a2)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A41F4F0(uint64_t a1, unsigned __int8 a2)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A41F644(uint64_t a1, unsigned __int8 a2)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A41F760(uint64_t a1, unsigned __int8 a2)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A41F888(uint64_t a1, unsigned __int8 a2)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A41F9A8(uint64_t a1, unsigned __int8 a2)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A41FAE0(uint64_t a1, unsigned __int8 a2)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A41FC10(uint64_t a1, unsigned __int8 a2)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t FMFLabelledLocation.identifier.getter()
{
  v1 = *v0;

  return v1;
}

double FMFLabelledLocation.label.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

uint64_t FMFLabelledLocation.userId.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

unint64_t sub_24A41FE74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A421B7C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A41FEA4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x64757469676E6F6CLL;
  v6 = 0xE900000000000065;
  if (v2 != 6)
  {
    v5 = 0x7354657461647075;
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x644972657375;
  if (v2 != 4)
  {
    v8 = 0x656475746974616CLL;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x7079546C6562616CLL;
  v10 = 0xE900000000000065;
  if (v2 != 2)
  {
    v9 = 1701869940;
    v10 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x6C6562616CLL;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_24A41FF90()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x64757469676E6F6CLL;
  if (v1 != 6)
  {
    v3 = 0x7354657461647075;
  }

  v4 = 0x644972657375;
  if (v1 != 4)
  {
    v4 = 0x656475746974616CLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7079546C6562616CLL;
  if (v1 != 2)
  {
    v5 = 1701869940;
  }

  if (*v0)
  {
    v2 = 0x6C6562616CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_24A420078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A421B7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A4200A0(uint64_t a1)
{
  v2 = sub_24A420724();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A4200DC(uint64_t a1)
{
  v2 = sub_24A420724();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFLabelledLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = sub_24A3C9CEC(&qword_27EF3FE88, &qword_24A4B8C58);
  v4 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v6 = &v39 - v5;
  v7 = type metadata accessor for FMFLabelledLocation(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24A37EACC(a1, a1[3]);
  sub_24A420724();
  sub_24A4AC3C0();
  if (!v2)
  {
    v42 = v9;
    LOBYTE(v45) = 0;
    v10 = v6;
    v11 = sub_24A4AC120();
    v12 = v42;
    *v42 = v11;
    *(v12 + 8) = v13;
    LOBYTE(v45) = 4;
    *(v12 + 40) = sub_24A4AC120();
    *(v12 + 48) = v14;
    LOBYTE(v45) = 5;
    sub_24A4AC140();
    *(v12 + 56) = v15;
    *(v12 + 64) = 0;
    LOBYTE(v45) = 6;
    sub_24A4AC140();
    v40 = v4;
    *(v12 + 72) = v16;
    *(v12 + 80) = 0;
    LOBYTE(v45) = 7;
    v17 = sub_24A4AC170();
    v41 = v10;
    v18 = *(v7 + 36);
    v19 = [objc_opt_self() fm:v17 dateFromEpoch:?];
    sub_24A4AAAA0();

    v20 = sub_24A4AAAD0();
    (*(*(v20 - 8) + 56))(v12 + v18, 0, 1, v20);
    LOBYTE(v45) = 1;
    v21 = sub_24A4AC120();
    v23 = v22;
    LOBYTE(v45) = 2;
    sub_24A4AC120();
    v24 = sub_24A4AC0C0();

    if (v24 >= 3)
    {
      v25 = 3;
    }

    else
    {
      v25 = v24;
    }

    v26._countAndFlagsBits = v21;
    v26._object = v23;
    FMFDefaultLabel.init(rawValue:)(v26);
    v27 = v25 | ((v45 == 5) << 8);
    *(v12 + 16) = v21;
    *(v12 + 24) = v23;
    *(v12 + 32) = v27;
    v28 = FMFLabelledLocation.debugDescription.getter();
    v30 = v29;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v31 = sub_24A4AB630();
    sub_24A378E18(v31, qword_27EF4E260);

    v32 = sub_24A4AB600();
    v33 = sub_24A4ABCE0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45 = v35;
      *v34 = 136315138;
      v36 = a1;
      v37 = sub_24A37BD58(v28, v30, &v45);

      *(v34 + 4) = v37;
      a1 = v36;
      v12 = v42;
      _os_log_impl(&dword_24A376000, v32, v33, "FMFLabelledLocation: initialized with coder %s", v34, 0xCu);
      sub_24A37EEE0(v35);
      MEMORY[0x24C219130](v35, -1, -1);
      MEMORY[0x24C219130](v34, -1, -1);
    }

    else
    {
    }

    (*(v40 + 8))(v41, v44);
    sub_24A3D71D4(v12, v43);
  }

  return sub_24A37EEE0(a1);
}

unint64_t sub_24A420724()
{
  result = qword_27EF3FE90;
  if (!qword_27EF3FE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FE90);
  }

  return result;
}

uint64_t FMFLabelledLocation.debugDescription.getter()
{
  v1 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v1);
  v3 = &v26 - v2;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_24A4ABF50();

  v30 = 0xD000000000000022;
  v31 = 0x800000024A4B0EB0;
  v4 = *(v0 + 8);
  v27 = *v0;
  v28 = v4;

  sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  v5 = sub_24A4AB870();
  MEMORY[0x24C217D50](v5);

  MEMORY[0x24C217D50](0x203A6C6562616C20, 0xE800000000000000);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v27 = *(v0 + 16);
  v28 = v6;
  v29 = v7;

  sub_24A3C9CEC(&qword_27EF3F908, &qword_24A4B7D00);
  v8 = sub_24A4AB870();
  MEMORY[0x24C217D50](v8);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v9 = v30;
  v10 = v31;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_24A4ABF50();

  v27 = 0x203A644972657375;
  v28 = 0xE800000000000000;
  v11 = *(v0 + 48);
  v30 = *(v0 + 40);
  v31 = v11;

  v12 = sub_24A4AB870();
  MEMORY[0x24C217D50](v12);

  MEMORY[0x24C217D50](0x6475746974616C20, 0xEB00000000203A65);
  v13 = *(v0 + 64);
  v30 = *(v0 + 56);
  LOBYTE(v31) = v13;
  sub_24A3C9CEC(&qword_27EF3FE98, &qword_24A4B8C60);
  v14 = sub_24A4AB870();
  MEMORY[0x24C217D50](v14);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v16 = v27;
  v15 = v28;
  v27 = v9;
  v28 = v10;

  MEMORY[0x24C217D50](v16, v15);

  v17 = v27;
  v18 = v28;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_24A4ABF50();

  v27 = 0x64757469676E6F6CLL;
  v28 = 0xEB00000000203A65;
  v19 = *(v0 + 80);
  v30 = *(v0 + 72);
  LOBYTE(v31) = v19;
  v20 = sub_24A4AB870();
  MEMORY[0x24C217D50](v20);

  MEMORY[0x24C217D50](0x6465746164707520, 0xEC000000203A7441);
  v21 = type metadata accessor for FMFLabelledLocation(0);
  sub_24A37B740(v0 + *(v21 + 36), v3, &qword_27EF3F460, &unk_24A4B53B0);
  v22 = sub_24A4AB870();
  MEMORY[0x24C217D50](v22);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  v23 = v27;
  v24 = v28;
  v27 = v17;
  v28 = v18;

  MEMORY[0x24C217D50](v23, v24);

  return v27;
}

uint64_t FMFLabelledLocation.init(labelledLocation:label:userId:latitude:longitude:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v58 = a8;
  v52 = a7;
  v53 = a4;
  v56 = a6;
  v57 = a5;
  v54 = a3;
  v12 = sub_24A3C9CEC(&qword_27EF3FEA0, &qword_24A4B8C68);
  MEMORY[0x28223BE20](v12 - 8);
  v51 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v49 - v15;
  MEMORY[0x28223BE20](v16);
  v49 = &v49 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  v21 = type metadata accessor for FMFLabelledLocation(0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = (&v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *a2;
  v25 = a2[1];
  v27 = *(a2 + 8);
  v55 = a1;
  sub_24A37B740(a1, v20, &qword_27EF3FEA0, &qword_24A4B8C68);
  v28 = v21;
  v29 = *(v22 + 48);
  if (v29(v20, 1, v21) == 1)
  {
    sub_24A37EF2C(v20, &qword_27EF3FEA0, &qword_24A4B8C68);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    sub_24A3D71D4(v20, v24);
    v30 = *v24;
    v31 = v24[1];

    sub_24A3D7178(v24);
  }

  *a9 = v30;
  *(a9 + 8) = v31;
  *(a9 + 16) = v26;
  *(a9 + 24) = v25;
  *(a9 + 32) = v27;
  v32 = v28;
  v33 = v57;
  v34 = v29;
  v35 = v54;
  v36 = v55;
  v37 = v53;
  if (!v53)
  {
    v38 = v49;
    sub_24A37B740(v55, v49, &qword_27EF3FEA0, &qword_24A4B8C68);
    if (v34(v38, 1, v32) == 1)
    {
      sub_24A37EF2C(v38, &qword_27EF3FEA0, &qword_24A4B8C68);
      v35 = 0;
      v37 = 0;
    }

    else
    {
      v35 = *(v38 + 40);
      v37 = *(v38 + 48);

      sub_24A3D7178(v38);
    }
  }

  *(a9 + 40) = v35;
  *(a9 + 48) = v37;
  if (v56)
  {
    v39 = v50;
    sub_24A37B740(v36, v50, &qword_27EF3FEA0, &qword_24A4B8C68);
    if (v34(v39, 1, v32) == 1)
    {
      sub_24A37EF2C(v39, &qword_27EF3FEA0, &qword_24A4B8C68);
      v33 = 0;
      v40 = 1;
    }

    else
    {
      v41 = v39;
      v33 = *(v39 + 56);
      v40 = *(v39 + 64);
      sub_24A3D7178(v41);
    }
  }

  else
  {
    v40 = 0;
  }

  *(a9 + 56) = v33;
  *(a9 + 64) = v40;
  if (v58)
  {
    v42 = v51;
    sub_24A421520(v36, v51);
    if (v34(v42, 1, v32) == 1)
    {
      sub_24A37EF2C(v42, &qword_27EF3FEA0, &qword_24A4B8C68);
      v43 = 0;
      v44 = 1;
    }

    else
    {
      v43 = *(v42 + 72);
      v45 = v42;
      v44 = *(v42 + 80);
      sub_24A3D7178(v45);
    }
  }

  else
  {
    sub_24A37EF2C(v36, &qword_27EF3FEA0, &qword_24A4B8C68);
    v44 = 0;
    v43 = v52;
  }

  *(a9 + 72) = v43;
  *(a9 + 80) = v44;
  v46 = *(v32 + 36);
  v47 = sub_24A4AAAD0();
  return (*(*(v47 - 8) + 56))(a9 + v46, 1, 1, v47);
}

uint64_t FMFLabelledLocation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_24A3C9CEC(&qword_27EF3FEA8, &unk_24A4B8C70);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  sub_24A37EACC(a1, a1[3]);
  sub_24A420724();
  sub_24A4AC3D0();
  v32 = *v3;
  v31 = 0;
  sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  sub_24A421590(&qword_27EF3EFA0, &unk_27EF3F4C0, &qword_24A4B7E60);
  sub_24A4AC1F0();
  if (v2)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v12 = *(v3 + 2);
  v13 = *(v3 + 3);
  if (!v13)
  {
    v12 = 0;
  }

  *&v32 = v12;
  *(&v32 + 1) = v13;
  v31 = 1;
  sub_24A4AC1F0();
  if (v13)
  {
    v14 = *(v3 + 16);
    if (v14 >> 8 == 2)
    {
      v15 = v14;
      v16 = *&aLocal_1[8 * v14];
      v13 = qword_24A4B8ED0[v15];
    }

    else
    {
      v17 = ((v14 >> 8) & 1) == 0;
      v16 = 0x746C7561666564;
      if (v17)
      {
        v13 = 0xE700000000000000;
      }

      else
      {
        v16 = 0x6D6F74737563;
        v13 = 0xE600000000000000;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  *&v32 = v16;
  *(&v32 + 1) = v13;
  v31 = 2;
  sub_24A4AC1F0();
  v30 = 0;

  v32 = *(v3 + 40);
  v31 = 4;
  v18 = v30;
  sub_24A4AC1F0();
  if (v18)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v20 = *(v3 + 64);
  *&v32 = *(v3 + 7);
  BYTE8(v32) = v20;
  v31 = 5;
  sub_24A3C9CEC(&qword_27EF3FE98, &qword_24A4B8C60);
  sub_24A421590(&qword_27EF3FEB0, &qword_27EF3FE98, &qword_24A4B8C60);
  sub_24A4AC1F0();
  v21 = *(v3 + 80);
  *&v32 = *(v3 + 9);
  BYTE8(v32) = v21;
  v31 = 6;
  sub_24A4AC1F0();
  v22 = type metadata accessor for FMFLabelledLocation(0);
  sub_24A37B740(v3 + *(v22 + 36), v7, &qword_27EF3F460, &unk_24A4B53B0);
  v23 = sub_24A4AAAD0();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v7, 1, v23) == 1)
  {
    (*(v9 + 8))(v11, v8);
    return sub_24A37EF2C(v7, &qword_27EF3F460, &unk_24A4B53B0);
  }

  else
  {
    sub_24A4AAA90();
    v26 = v25;
    (*(v24 + 8))(v7, v23);
    v27 = v26 * 1000.0;
    v28 = v26 * 1000.0 <= -9.22337204e18;
    if (v26 * 1000.0 >= 9.22337204e18)
    {
      v28 = 1;
    }

    if (v27 != trunc(v27))
    {
      v28 = 1;
    }

    v29 = v27;
    if (v28)
    {
      v29 = 0;
    }

    *&v32 = v29;
    BYTE8(v32) = v28;
    v31 = 7;
    sub_24A3C9CEC(&qword_27EF3F418, &qword_24A4B54B0);
    sub_24A421590(&qword_27EF3F420, &qword_27EF3F418, &qword_24A4B54B0);
    sub_24A4AC1F0();
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_24A421520(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3FEA0, &qword_24A4B8C68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A421590(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7FMFCore19FMFLabelledLocationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A4AAAD0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_24A3C9CEC(&qword_27EF3F3B8, &qword_24A4B5480);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = *(a1 + 8);
  v15 = *(a2 + 8);
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_24A4AC270() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v15)
  {
    goto LABEL_16;
  }

  v16 = *(a1 + 24);
  v17 = *(a2 + 24);
  if (v16)
  {
    if (v17)
    {
      if ((*(a1 + 16) != *(a2 + 16) || v16 != v17) && (sub_24A4AC270() & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (v17)
  {
    goto LABEL_15;
  }

LABEL_19:
  v20 = *(a1 + 48);
  v21 = *(a2 + 48);
  if (v20)
  {
    if (!v21 || (*(a1 + 40) != *(a2 + 40) || v20 != v21) && (sub_24A4AC270() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v21)
  {
    goto LABEL_16;
  }

  v22 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (!*(a2 + 64))
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*(a1 + 56) != *(a2 + 56))
    {
      v22 = 1;
    }

    if (v22)
    {
      goto LABEL_16;
    }
  }

  v23 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (!*(a2 + 80))
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*(a1 + 72) != *(a2 + 72))
    {
      v23 = 1;
    }

    if (v23)
    {
      goto LABEL_16;
    }
  }

  v24 = *(type metadata accessor for FMFLabelledLocation(0) + 36);
  v25 = *(v11 + 48);
  sub_24A37B740(a1 + v24, v13, &qword_27EF3F460, &unk_24A4B53B0);
  sub_24A37B740(a2 + v24, &v13[v25], &qword_27EF3F460, &unk_24A4B53B0);
  v26 = *(v5 + 48);
  if (v26(v13, 1, v4) == 1)
  {
    if (v26(&v13[v25], 1, v4) == 1)
    {
      sub_24A37EF2C(v13, &qword_27EF3F460, &unk_24A4B53B0);
      v18 = 1;
      return v18 & 1;
    }
  }

  else
  {
    sub_24A37B740(v13, v10, &qword_27EF3F460, &unk_24A4B53B0);
    if (v26(&v13[v25], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v25], v4);
      sub_24A421BC8();
      v18 = sub_24A4AB810();
      v27 = *(v5 + 8);
      v27(v7, v4);
      v27(v10, v4);
      sub_24A37EF2C(v13, &qword_27EF3F460, &unk_24A4B53B0);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
  }

  sub_24A37EF2C(v13, &qword_27EF3F3B8, &qword_24A4B5480);
LABEL_16:
  v18 = 0;
  return v18 & 1;
}

unint64_t sub_24A421A78()
{
  result = qword_27EF3FED0;
  if (!qword_27EF3FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FED0);
  }

  return result;
}

unint64_t sub_24A421AD0()
{
  result = qword_27EF3FED8;
  if (!qword_27EF3FED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FED8);
  }

  return result;
}

unint64_t sub_24A421B28()
{
  result = qword_27EF3FEE0;
  if (!qword_27EF3FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FEE0);
  }

  return result;
}

unint64_t sub_24A421B7C(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A4AC0C0();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24A421BC8()
{
  result = qword_27EF3F3C0;
  if (!qword_27EF3F3C0)
  {
    sub_24A4AAAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F3C0);
  }

  return result;
}

uint64_t FMFRemoveLocationAlertAction.__allocating_init(locationAlert:)(uint64_t a1)
{
  v2 = swift_allocObject();
  FMFRemoveLocationAlertAction.init(locationAlert:)(a1);
  return v2;
}

uint64_t FMFRemoveLocationAlertAction.init(locationAlert:)(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v2 - 8);
  v82 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v83 = &v72 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v72 - v7;
  v9 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v79 = &v72 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v72 - v15;
  v17 = type metadata accessor for FMFLocationAlert(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v72 - v21;
  MEMORY[0x28223BE20](v23);
  v85 = &v72 - v24;
  v86 = a1;
  sub_24A3DE9CC(a1, v22);
  v25 = type metadata accessor for FMFSchedule(0);
  v26 = *(v25 - 8);
  v78 = *(v26 + 56);
  v78(v16, 1, 1, v25);
  v27 = sub_24A4AAAD0();
  v80 = *(v27 - 8);
  v81 = v27;
  v28 = *(v80 + 56);
  v88 = v8;
  v73 = v28;
  v74 = v80 + 56;
  (v28)(v8, 1, 1);
  v29 = *(v22 + 1);
  *v19 = *v22;
  *(v19 + 1) = v29;
  v19[42] = 0;
  v19[43] = v22[43];
  v84 = v16;
  sub_24A37B740(v16, v11, &qword_27EF3F470, &qword_24A4B6960);
  v30 = *(v26 + 48);
  if (v30(v11, 1, v25) == 1)
  {
    v31 = v79;
    sub_24A37B740(&v22[v17[12]], v79, &qword_27EF3F470, &qword_24A4B6960);
    v32 = v30(v11, 1, v25);

    v33 = v31;
    if (v32 != 1)
    {
      sub_24A37EF2C(v11, &qword_27EF3F470, &qword_24A4B6960);
    }
  }

  else
  {
    v33 = v79;
    sub_24A3B5814(v11, v79, type metadata accessor for FMFSchedule);
    v78(v33, 0, 1, v25);
  }

  sub_24A37BE24(v33, &v19[v17[12]], &qword_27EF3F470, &qword_24A4B6960);
  v19[40] = v22[40];
  v19[41] = v22[41];
  v34 = v17[13];
  v36 = *&v22[v34];
  v35 = *&v22[v34 + 8];
  v37 = &v19[v34];
  *v37 = v36;
  *(v37 + 1) = v35;
  v77 = v35;
  v38 = v17[14];
  v40 = *&v22[v38];
  v39 = *&v22[v38 + 8];
  v41 = &v19[v38];
  *v41 = v40;
  *(v41 + 1) = v39;
  v76 = v39;
  v19[v17[15]] = v22[v17[15]];
  v42 = v17[16];
  v75 = *&v22[v42];
  *&v19[v42] = v75;
  v43 = v17[17];
  v78 = *&v22[v43];
  *&v19[v43] = v78;
  v44 = v17[18];
  v79 = *&v22[v44];
  *&v19[v44] = v79;
  v45 = v17[19];
  v46 = *&v22[v45];
  v47 = *&v22[v45 + 8];
  v48 = &v19[v45];
  *v48 = v46;
  *(v48 + 1) = v47;
  v49 = v82;
  sub_24A37B740(v88, v82, &qword_27EF3F460, &unk_24A4B53B0);
  v50 = v80;
  v51 = v81;
  v52 = *(v80 + 48);
  if (v52(v49, 1, v81) == 1)
  {
    v53 = v49;
    v54 = v83;
    sub_24A37B740(&v22[v17[27]], v83, &qword_27EF3F460, &unk_24A4B53B0);
    v55 = v52(v53, 1, v51);
    v56 = v54;
    v57 = v55;

    if (v57 != 1)
    {
      sub_24A37EF2C(v53, &qword_27EF3F460, &unk_24A4B53B0);
    }
  }

  else
  {
    v56 = v83;
    (*(v50 + 32))(v83, v49, v51);
    v73(v56, 0, 1, v51);
  }

  sub_24A37BE24(v56, &v19[v17[27]], &qword_27EF3F460, &unk_24A4B53B0);
  *(v19 + 1) = *(v22 + 1);
  sub_24A37B740(&v22[v17[26]], &v19[v17[26]], &qword_27EF3F460, &unk_24A4B53B0);
  *(v19 + 4) = *(v22 + 4);
  v58 = v17[23];
  memcpy(v90, &v22[v58], 0x130uLL);
  memcpy(&v19[v17[23]], &v22[v58], 0x130uLL);
  v59 = v17[22];
  v60 = *&v22[v59];
  v61 = *&v22[v59 + 8];
  v62 = &v19[v59];
  *v62 = v60;
  *(v62 + 1) = v61;
  sub_24A37B740(v90, &v89, &unk_27EF404E0, &unk_24A4B5230);

  sub_24A3DEA30(v86);
  sub_24A37EF2C(v88, &qword_27EF3F460, &unk_24A4B53B0);
  sub_24A37EF2C(v84, &qword_27EF3F470, &qword_24A4B6960);
  v63 = v17[20];
  v65 = *&v22[v63];
  v64 = *&v22[v63 + 8];
  v66 = *&v22[v63 + 16];
  v67 = &v19[v63];
  *v67 = v65;
  *(v67 + 1) = v64;
  *(v67 + 8) = v66;
  v19[v17[21]] = v22[v17[21]];
  v19[v17[24]] = v22[v17[24]];
  v68 = v22[v17[25]];

  sub_24A3DEA30(v22);
  v19[v17[25]] = v68;
  v69 = v85;
  sub_24A3B5814(v19, v85, type metadata accessor for FMFLocationAlert);
  v70 = v87;
  sub_24A3B5814(v69, v87 + OBJC_IVAR____TtC7FMFCore28FMFRemoveLocationAlertAction_locationAlert, type metadata accessor for FMFLocationAlert);
  *(v70 + 16) = 1;
  return v70;
}

uint64_t sub_24A4223CC()
{
  v0 = sub_24A4AC420();
  MEMORY[0x24C217D50](v0);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v1 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v1);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  sub_24A4ABF50();
  MEMORY[0x24C217D50](0x6E6F697461636F6CLL, 0xEF203A7472656C41);
  type metadata accessor for FMFLocationAlert(0);
  sub_24A4AC030();

  MEMORY[0x24C217D50](0, 0xE000000000000000);

  return 60;
}

uint64_t FMFRemoveLocationAlertAction.__deallocating_deinit()
{
  sub_24A3DEA30(v0 + OBJC_IVAR____TtC7FMFCore28FMFRemoveLocationAlertAction_locationAlert);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFRemoveLocationAlertAction(uint64_t a1)
{
  result = qword_27EF3FEE8;
  if (!qword_27EF3FEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A4227B0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A384774(*a1);
  v5 = v4;
  if (v3 == sub_24A384774(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A4AC270();
  }

  return v8 & 1;
}

uint64_t sub_24A422838()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A384774(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A42289C(uint64_t a1)
{
  sub_24A384774(*v1);
  sub_24A4AB8F0();
}

uint64_t sub_24A4228F0(uint64_t a1)
{
  v2 = *v1;
  sub_24A4AC360();
  sub_24A384774(v2);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

unint64_t sub_24A422950@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A423578(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_24A422980@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A384774(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_24A4229AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A423578(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A4229E0(uint64_t a1)
{
  v2 = sub_24A384718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A422A1C(uint64_t a1)
{
  v2 = sub_24A384718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFConfig.debugDescription.getter()
{
  v1 = v0[48];
  v37 = v0[96];
  v38 = v0[200];
  v39 = v0[201];
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  MEMORY[0x24C217D50](0x69666E6F43464D46, 0xE900000000000067);
  MEMORY[0x24C217D50]();
  v2 = sub_24A4AC240();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](0xD00000000000001CLL, 0x800000024A4B0F60);
  v3 = sub_24A4AC240();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](0xD000000000000012, 0x800000024A4B0F80);
  v4 = sub_24A4AC240();
  MEMORY[0x24C217D50](v4);

  MEMORY[0x24C217D50](0xD00000000000001CLL, 0x800000024A4B0FA0);
  sub_24A4ABBE0();
  MEMORY[0x24C217D50](0xD00000000000001ALL, 0x800000024A4B0FC0);
  v5 = sub_24A4AC240();
  MEMORY[0x24C217D50](v5);

  MEMORY[0x24C217D50](0x69766E4978616D20, 0xED0000203A736574);
  v6 = sub_24A4AC240();
  MEMORY[0x24C217D50](v6);

  MEMORY[0x24C217D50](0xD000000000000013, 0x800000024A4B0FE0);
  if (v1)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v1)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v7, v8);

  MEMORY[0x24C217D50](0x6562614C78616D20, 0xEC000000203A736CLL);
  v9 = sub_24A4AC240();
  MEMORY[0x24C217D50](v9);

  MEMORY[0x24C217D50](0xD000000000000019, 0x800000024A4B1000);
  v10 = sub_24A4AC240();
  MEMORY[0x24C217D50](v10);

  MEMORY[0x24C217D50](0xD00000000000001BLL, 0x800000024A4B1020);
  v11 = sub_24A4AC240();
  MEMORY[0x24C217D50](v11);

  MEMORY[0x24C217D50](0xD00000000000001ALL, 0x800000024A4B1040);
  v12 = sub_24A4AC240();
  MEMORY[0x24C217D50](v12);

  MEMORY[0x24C217D50](0xD000000000000022, 0x800000024A4B1060);
  v13 = sub_24A4AC240();
  MEMORY[0x24C217D50](v13);

  MEMORY[0x24C217D50](0xD000000000000010, 0x800000024A4B1090);
  if (v37)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v37)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v14, v15);

  MEMORY[0x24C217D50](0x6F697461636F6C20, 0xEE00203A4C54546ELL);
  v16 = sub_24A4AC240();
  MEMORY[0x24C217D50](v16);

  MEMORY[0x24C217D50](0xD00000000000001FLL, 0x800000024A4B10B0);
  v17 = sub_24A4AC240();
  MEMORY[0x24C217D50](v17);

  MEMORY[0x24C217D50](0xD000000000000015, 0x800000024A4B10D0);
  v18 = sub_24A4AC240();
  MEMORY[0x24C217D50](v18);

  MEMORY[0x24C217D50](0xD000000000000017, 0x800000024A4B10F0);
  v19 = sub_24A4AC240();
  MEMORY[0x24C217D50](v19);

  MEMORY[0x24C217D50](0xD000000000000014, 0x800000024A4B1110);
  v20 = sub_24A4AC240();
  MEMORY[0x24C217D50](v20);

  MEMORY[0x24C217D50](0xD00000000000001DLL, 0x800000024A4B1130);
  v21 = sub_24A4AC240();
  MEMORY[0x24C217D50](v21);

  MEMORY[0x24C217D50](0xD00000000000001ALL, 0x800000024A4B1150);
  v22 = sub_24A4AC240();
  MEMORY[0x24C217D50](v22);

  MEMORY[0x24C217D50](0x6569724678616D20, 0xED0000203A73646ELL);
  v23 = sub_24A4AC240();
  MEMORY[0x24C217D50](v23);

  MEMORY[0x24C217D50](0xD00000000000001BLL, 0x800000024A4B1170);
  v24 = sub_24A4AC240();
  MEMORY[0x24C217D50](v24);

  MEMORY[0x24C217D50](0xD00000000000001BLL, 0x800000024A4B1190);
  v25 = sub_24A4AC240();
  MEMORY[0x24C217D50](v25);

  MEMORY[0x24C217D50](0xD000000000000021, 0x800000024A4B11B0);
  v26 = sub_24A4AC240();
  MEMORY[0x24C217D50](v26);

  MEMORY[0x24C217D50](0xD00000000000001ELL, 0x800000024A4B11E0);
  v27 = sub_24A4AC240();
  MEMORY[0x24C217D50](v27);

  MEMORY[0x24C217D50](0xD000000000000010, 0x800000024A4B1200);
  if (v38)
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (v38)
  {
    v29 = 0xE400000000000000;
  }

  else
  {
    v29 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v28, v29);

  MEMORY[0x24C217D50](0xD000000000000011, 0x800000024A4B1220);
  if (v39)
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  if (v39)
  {
    v31 = 0xE400000000000000;
  }

  else
  {
    v31 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v30, v31);

  MEMORY[0x24C217D50](0xD00000000000001ELL, 0x800000024A4B1240);
  v32 = sub_24A4AC240();
  MEMORY[0x24C217D50](v32);

  MEMORY[0x24C217D50](0xD00000000000001BLL, 0x800000024A4B1260);
  v33 = sub_24A4AC240();
  MEMORY[0x24C217D50](v33);

  MEMORY[0x24C217D50](0xD00000000000001BLL, 0x800000024A4B1280);
  v34 = sub_24A4AC240();
  MEMORY[0x24C217D50](v34);

  MEMORY[0x24C217D50](0xD000000000000021, 0x800000024A4B12A0);
  v35 = sub_24A4AC240();
  MEMORY[0x24C217D50](v35);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_24A423410(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 240) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_24A423524()
{
  result = qword_27EF3FF10;
  if (!qword_27EF3FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FF10);
  }

  return result;
}

unint64_t sub_24A423578(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A4AC290();

  if (v2 >= 0x1F)
  {
    return 31;
  }

  else
  {
    return v2;
  }
}

uint64_t type metadata accessor for FMFNotNowRequest(uint64_t a1)
{
  result = qword_27EF3FF28;
  if (!qword_27EF3FF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A423664()
{
  v1 = *(v0 + qword_27EF4E110);
  v2 = *(v0 + qword_27EF4E110 + 8);
  v4[3] = MEMORY[0x277D837D0];
  v4[0] = v1;
  v4[1] = v2;
  swift_beginAccess();

  sub_24A3A6CEC(v4, 25705, 0xE200000000000000);
  return swift_endAccess();
}

uint64_t sub_24A423708()
{
  v0 = sub_24A4AAC20();

  v1 = qword_27EF4E0D8;
  v2 = sub_24A4AAAD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_24A4237EC()
{
  sub_24A423708();

  return swift_deallocClassInstance();
}

uint64_t FMFSetFavoriteAction.__allocating_init(friend:order:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  sub_24A423930(a1, v6 + OBJC_IVAR____TtC7FMFCore20FMFSetFavoriteAction_friend);
  v7 = v6 + OBJC_IVAR____TtC7FMFCore20FMFSetFavoriteAction_order;
  *v7 = a2;
  *(v7 + 8) = a3 & 1;
  *(v6 + 16) = 0;
  return v6;
}

uint64_t FMFSetFavoriteAction.init(friend:order:)(uint64_t a1, uint64_t a2, char a3)
{
  sub_24A423930(a1, v3 + OBJC_IVAR____TtC7FMFCore20FMFSetFavoriteAction_friend);
  v6 = v3 + OBJC_IVAR____TtC7FMFCore20FMFSetFavoriteAction_order;
  *v6 = a2;
  *(v6 + 8) = a3 & 1;
  *(v3 + 16) = 0;
  return v3;
}

uint64_t sub_24A423930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFFriend(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A423994()
{
  v0 = sub_24A4AC420();
  MEMORY[0x24C217D50](v0);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v1 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v1);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  MEMORY[0x24C217D50](0x203A646E65697266, 0xE800000000000000);
  type metadata accessor for FMFFriend(0);
  sub_24A4AC030();
  MEMORY[0x24C217D50](8236, 0xE200000000000000);

  MEMORY[0x24C217D50](0, 0xE000000000000000);

  sub_24A3C9CEC(&qword_27EF3F0F0, &qword_24A4B4940);
  v2 = sub_24A4AB870();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](0x203A726564726FLL, 0xE700000000000000);

  return 60;
}

uint64_t FMFSetFavoriteAction.__deallocating_deinit()
{
  sub_24A3A16E4(v0 + OBJC_IVAR____TtC7FMFCore20FMFSetFavoriteAction_friend);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFSetFavoriteAction(uint64_t a1)
{
  result = qword_27EF3FF38;
  if (!qword_27EF3FF38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A423CD0(uint64_t a1)
{
  result = type metadata accessor for FMFFriend(319);
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

void *sub_24A423DAC(unsigned __int8 *a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v53 - v6;
  v62 = *a1;
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = [v9 bundleForClass_];
  v65 = sub_24A4AA800();
  v12 = v11;

  v13 = [v9 bundleForClass_];
  v63 = sub_24A4AA800();
  v64 = v14;

  v59 = ObjCClassFromMetadata;
  v15 = [v9 bundleForClass_];
  v16 = sub_24A4AA800();
  v18 = v17;

  v19 = sub_24A4AA9D0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v60 = v20 + 56;
  v61 = v7;
  v21(v7, 1, 1, v19);
  v22 = [objc_allocWithZone(MEMORY[0x277CEC5D0]) init];
  [v22 refresh];
  LODWORD(v7) = [v22 airplaneMode];

  if (v7)
  {
    v56 = v21;
    v57 = v19;

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v58 = v4;
    v23 = sub_24A4AB630();
    sub_24A378E18(v23, qword_27EF4E260);
    v24 = sub_24A4AB600();
    v25 = sub_24A4ABCE0();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v59;
    if (v26)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_24A376000, v24, v25, "FMNetworkUtil: Airplane mode is enabled", v28, 2u);
      MEMORY[0x24C219130](v28, -1, -1);
    }

    v65 = sub_24A4578FC(0xD000000000000024, 0x800000024A4B1460);
    v54 = "_TITLE_AIRPLANE_MODE";
    v55 = v29;
    v30 = 0xD00000000000001DLL;
  }

  else
  {
    v39 = v12;
    if ((sub_24A3CEE58() & 1) != 0 || (v40 = sub_24A4AB820(), v41 = MGGetBoolAnswer(), v40, !v41))
    {
      v35 = 0;
      v37 = 0;
      v32 = v16;
      v38 = v61;
      v21(v4, 1, 1, v19);
      goto LABEL_16;
    }

    v56 = v21;
    v57 = v19;

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v58 = v4;
    v42 = sub_24A4AB630();
    sub_24A378E18(v42, qword_27EF4E260);
    v43 = sub_24A4AB600();
    v44 = sub_24A4ABCE0();
    v45 = os_log_type_enabled(v43, v44);
    v27 = v59;
    if (v45)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_24A376000, v43, v44, "FMNetworkUtil: Cellular is disabled", v46, 2u);
      MEMORY[0x24C219130](v46, -1, -1);
    }

    v47 = [v9 bundleForClass_];
    v65 = sub_24A4AA800();
    v55 = v48;

    v63 = sub_24A4578FC(0xD00000000000002ALL, 0x800000024A4B13B0);
    v64 = v49;
    v54 = "ALERT_NO_NETWORK_CANCEL";
    v30 = 0xD000000000000022;
  }

  v53[1] = v30;
  v31 = [v9 bundleForClass_];
  v32 = sub_24A4AA800();
  v18 = v33;

  v34 = [v9 bundleForClass_];
  v35 = sub_24A4AA800();
  v37 = v36;

  v4 = v58;
  sub_24A4AA9C0();
  v38 = v61;
  sub_24A3D9248(v61);
  sub_24A3996FC(v4, v38);
  v39 = v55;
  v56(v4, 1, 1, v57);
LABEL_16:
  type metadata accessor for FMFAlert(0);
  v50 = swift_allocObject();
  v50[3] = 0;
  swift_unknownObjectWeakInit();
  v50[4] = 0;
  v50[5] = 0;
  v50[6] = v65;
  v50[7] = v39;
  v51 = v64;
  v50[8] = v63;
  v50[9] = v51;
  v50[10] = v32;
  v50[11] = v18;
  v50[12] = v35;
  v50[13] = v37;
  sub_24A3996FC(v38, v50 + OBJC_IVAR____TtC7FMFCore8FMFAlert_okButtonURL);
  sub_24A3996FC(v4, v50 + OBJC_IVAR____TtC7FMFCore8FMFAlert_cancelButtonURL);
  *(v50 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType) = v62;
  return v50;
}

char *sub_24A4244D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v82 = a4;
  v81 = a3;
  v89 = a1;
  v6 = sub_24A3C9CEC(&qword_27EF3FF50, &qword_24A4BD250);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v74 - v7;
  v9 = sub_24A4AAAD0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v79 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v78 = &v74 - v13;
  MEMORY[0x28223BE20](v14);
  v83 = &v74 - v15;
  MEMORY[0x28223BE20](v16);
  v80 = &v74 - v17;
  v18 = type metadata accessor for ShallowRelabilityStats(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v85 = (&v74 - v23);
  v24 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v24 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v74 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v74 - v29;
  v34 = MEMORY[0x28223BE20](v31);
  result = &v74 - v32;
  if (a2)
  {
    v75 = v33;
    v86 = v19;
    v87 = v18;
    v77 = v10;
    v36 = *(v10 + 56);
    v88 = &v74 - v32;
    v36(v34);
    swift_beginAccess();
    v84 = v4;
    v37 = *(v4 + 152);
    v38 = *(v37 + 16);

    if (v38)
    {

      v76 = a2;
      v39 = sub_24A39B2C8(v89, a2);
      if (v40)
      {
        sub_24A4256F0(*(v37 + 56) + *(v86 + 72) * v39, v21, type metadata accessor for ShallowRelabilityStats);

        v41 = v88;
        sub_24A413470(v88);
        v42 = v85;
        sub_24A425758(v21, v85, type metadata accessor for ShallowRelabilityStats);
        v43 = *v42;
        sub_24A38CB20(v42 + *(v87 + 32), v41);
        v44 = v42[2];
        v45 = v42[3];
        sub_24A38CB20(v81, v30);
        v46 = v77;
        v47 = *(v77 + 48);
        if (v47(v30, 1, v9) == 1)
        {
          sub_24A413470(v30);
          sub_24A38CB20(v41, v27);
          if (v47(v27, 1, v9) == 1)
          {
            sub_24A413470(v27);
            v48 = v82;
            v49 = v87;
            v50 = v77;
LABEL_19:
            if (v43 == -1.0)
            {
              v65 = OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_startRefreshingTimestamp;
              v66 = v84;
              swift_beginAccess();
              v67 = v66 + v65;
              v68 = v75;
              sub_24A38CB20(v67, v75);
              if (v47(v68, 1, v9) == 1)
              {
                sub_24A413470(v68);
                v43 = -1.0;
              }

              else
              {
                v69 = v79;
                (*(v50 + 32))(v79, v68, v9);
                v70 = v83;
                sub_24A4AAAC0();
                sub_24A4AAA50();
                v43 = v71;
                v72 = *(v50 + 8);
                v72(v70, v9);
                v72(v69, v9);
              }
            }

            v73 = v88;
            sub_24A38CB20(v88, &v8[*(v49 + 32)]);
            *v8 = v43;
            v8[8] = v48 & 1;
            *(v8 + 2) = v44;
            *(v8 + 3) = v45;
            (*(v86 + 56))(v8, 0, 1, v49);
            swift_beginAccess();
            sub_24A4A3518(v8, v89, v76);
            swift_endAccess();
            sub_24A4257C0(v85, type metadata accessor for ShallowRelabilityStats);
            v57 = v73;
            return sub_24A413470(v57);
          }

          v59 = v78;
          v60 = v27;
          v50 = v77;
          (*(v77 + 32))(v78, v60, v9);
          v49 = v87;
        }

        else
        {
          sub_24A413470(v41);
          v58 = v80;
          (*(v46 + 32))(v80, v30, v9);
          (*(v46 + 16))(v41, v58, v9);
          (v36)(v41, 0, 1, v9);
          v59 = v58;
          v49 = v87;
          v50 = v46;
        }

        v61 = v83;
        sub_24A4AAAC0();
        sub_24A4AAA50();
        v63 = v62;
        v64 = *(v50 + 8);
        v64(v61, v9);
        v64(v59, v9);
        if (v44 < v63)
        {
          v44 = v63;
        }

        if (v63 >= 120.0 && v45 == -1.0)
        {
          v45 = -1.0;
        }

        else if (v45 < v63)
        {
          v45 = v63;
        }

        v48 = v82;
        goto LABEL_19;
      }

      a2 = v76;
    }

    v51 = v87;
    (v36)(&v8[*(v87 + 32)], 1, 1, v9);
    *v8 = 0xBFF0000000000000;
    v8[8] = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v8 + 1) = _Q0;
    (*(v86 + 56))(v8, 0, 1, v51);
    swift_beginAccess();
    sub_24A4A3518(v8, v89, a2);
    swift_endAccess();
    v57 = v88;
    return sub_24A413470(v57);
  }

  return result;
}

void sub_24A424CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24A3C9CEC(&qword_27EF3FF48, &qword_24A4BD240);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v56 - v9;
  v11 = type metadata accessor for LiveRelabilityStats(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - v16;
  v18 = sub_24A4AAAD0();
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  v24 = &v56 - v21;
  if (!a2)
  {
    return;
  }

  v58 = v14;
  v56 = v23;
  v62 = v22;
  v57 = a3;
  v61 = v17;
  v65 = v12;
  v66 = v11;
  v63 = v20;
  v64 = v10;
  v25 = *(a4 + 16);
  if (v25)
  {
    v59 = &v56 - v21;
    v60 = a1;
    v26 = sub_24A3A11D8(v25, 0);
    v27 = sub_24A40BDB8(v68, v26 + 4, v25, a4);
    v28 = v68[0];

    v29 = sub_24A407000(v28);
    if (v27 != v25)
    {
      __break(1u);
      return;
    }

    v24 = v59;
    a1 = v60;
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  v68[0] = a1;
  v68[1] = a2;
  MEMORY[0x28223BE20](v29);
  *(&v56 - 2) = v68;
  v30 = sub_24A45363C(sub_24A41ED80, (&v56 - 4), v26);

  v31 = v67;
  if ((v30 & 1) == 0)
  {

    return;
  }

  sub_24A4AAAC0();
  swift_beginAccess();
  v32 = *(v31 + 160);
  v33 = v63;
  v34 = v65;
  if (!*(v32 + 16))
  {
LABEL_14:
    v51 = v66;
    v52 = v62;
    v53 = v64;
    (*(v62 + 16))(&v64[*(v66 + 24)], v24, v33);
    *v53 = 0xBFF0000000000000;
    *(v53 + 8) = 0;
    (*(v34 + 56))(v53, 0, 1, v51);
    swift_beginAccess();
    sub_24A4A3344(v53, a1, a2);
    swift_endAccess();
    (*(v52 + 8))(v24, v33);
    return;
  }

  v35 = sub_24A39B2C8(a1, a2);
  if ((v36 & 1) == 0)
  {

    goto LABEL_14;
  }

  v37 = v58;
  sub_24A4256F0(*(v32 + 56) + *(v34 + 72) * v35, v58, type metadata accessor for LiveRelabilityStats);

  v38 = v62;
  v59 = *(v62 + 8);
  v60 = v62 + 8;
  (v59)(v24, v33);
  v39 = v37;
  v40 = v61;
  sub_24A425758(v39, v61, type metadata accessor for LiveRelabilityStats);
  v41 = *v40;
  v42 = v24;
  v43 = *(v40 + 8);
  v44 = *(v38 + 16);
  v45 = v42;
  v44();
  v46 = -1.0;
  if (v41 == -1.0)
  {
    v47 = (*(v38 + 48))(v57, 1, v33);
    v48 = v43;
    if (v47 != 1)
    {
      v49 = v56;
      sub_24A4AAAC0();
      sub_24A4AAA50();
      v46 = v50;
      (v59)(v49, v33);
      v48 = 1;
    }
  }

  else
  {
    v46 = v41;
    v48 = v43;
  }

  v54 = v66;
  v55 = v64;
  (v44)(&v64[*(v66 + 24)], v45, v33);
  *v55 = v46;
  *(v55 + 8) = v48;
  (*(v65 + 56))(v55, 0, 1, v54);
  swift_beginAccess();
  sub_24A4A3344(v55, a1, a2);
  swift_endAccess();
  sub_24A4257C0(v61, type metadata accessor for LiveRelabilityStats);
  (v59)(v45, v33);
}

void sub_24A425294()
{
  v1 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v1 - 8);
  v47 = &v41 - v2;
  v3 = type metadata accessor for ShallowRelabilityStats(0);
  v44 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A3C9CEC(&qword_27EF3FF58, &qword_24A4B92B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = (&v41 - v9);
  swift_beginAccess();
  v10 = *(v0 + 152);
  v13 = *(v10 + 64);
  v12 = v10 + 64;
  v11 = v13;
  v14 = 1 << *(*(v0 + 152) + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v45 = *(v0 + 152);
  v46 = v0;

  v18 = 0;
  v42 = v7;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_11:
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v22 = v21 | (v19 << 6);
      v23 = (*(v45 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = v43;
      sub_24A4256F0(*(v45 + 56) + *(v44 + 72) * v22, v43, type metadata accessor for ShallowRelabilityStats);
      v27 = sub_24A3C9CEC(&qword_27EF3FF60, qword_24A4B92B8);
      v28 = *(v27 + 48);
      v29 = v42;
      *v42 = v24;
      *(v29 + 1) = v25;
      v7 = v29;
      sub_24A425758(v26, &v29[v28], type metadata accessor for ShallowRelabilityStats);
      (*(*(v27 - 8) + 56))(v7, 0, 1, v27);

      v49 = v19;
LABEL_12:
      v30 = v7;
      v31 = v7;
      v32 = v48;
      sub_24A425820(v31, v48);
      v33 = sub_24A3C9CEC(&qword_27EF3FF60, qword_24A4B92B8);
      if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
      {
        break;
      }

      v34 = *v32;
      v35 = v32[1];
      v36 = v32 + *(v33 + 48);
      v37 = sub_24A4AAAD0();
      v38 = v47;
      (*(*(v37 - 8) + 56))(v47, 1, 1, v37);
      v39 = *(v36 + 8);
      sub_24A4257C0(v36, type metadata accessor for ShallowRelabilityStats);
      sub_24A4244D4(v34, v35, v38, v39);

      sub_24A413470(v38);
      v18 = v49;
      v7 = v30;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v17 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v17;
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {
        v49 = v20 - 1;
        v40 = sub_24A3C9CEC(&qword_27EF3FF60, qword_24A4B92B8);
        (*(*(v40 - 8) + 56))(v7, 1, 1, v40);
        v16 = 0;
        goto LABEL_12;
      }

      v16 = *(v12 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24A4256F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A425758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A4257C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A425820(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3FF58, &qword_24A4B92B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_24A425890(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_24A4258AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_24A425908(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t sub_24A425980(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF3FF68, &qword_24A4B9348);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  sub_24A37EACC(a1, a1[3]);
  sub_24A425D4C();
  sub_24A4AC3D0();
  v8[15] = 0;
  sub_24A4AC1D0();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_24A4AC1D0();
  v8[13] = 2;
  sub_24A4AC1A0();
  v8[12] = 3;
  sub_24A4AC1A0();
  v8[11] = 4;
  sub_24A4AC1A0();
  v8[10] = 5;
  sub_24A4AC190();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24A425B8C()
{
  v1 = 0x656475746974616CLL;
  v2 = *v0;
  v3 = 0xD000000000000012;
  v4 = 0xD000000000000010;
  if (v2 != 4)
  {
    v4 = 0x6C6562616CLL;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 0x64757469676E6F6CLL;
  if (v2 != 1)
  {
    v5 = 0x6564757469746C61;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24A425C48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24A425DA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24A425C70(uint64_t a1)
{
  v2 = sub_24A425D4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A425CAC(uint64_t a1)
{
  v2 = sub_24A425D4C();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_24A425CE8@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24A425FA8(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_24A425D4C()
{
  result = qword_27EF3FF70;
  if (!qword_27EF3FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FF70);
  }

  return result;
}

uint64_t sub_24A425DA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v3 || (sub_24A4AC270() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_24A4AC270() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564757469746C61 && a2 == 0xE800000000000000 || (sub_24A4AC270() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024A4AE0B0 == a2 || (sub_24A4AC270() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024A4B14B0 == a2 || (sub_24A4AC270() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24A4AC270();

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

uint64_t sub_24A425FA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A3C9CEC(&qword_27EF3FF78, &qword_24A4B9350);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  sub_24A37EACC(a1, a1[3]);
  sub_24A425D4C();
  sub_24A4AC3C0();
  if (v2)
  {
    return sub_24A37EEE0(a1);
  }

  v37 = 0;
  sub_24A4AC140();
  v10 = v9;
  v36 = 1;
  sub_24A4AC140();
  v12 = v11;
  v35 = 2;
  v13 = sub_24A4AC0F0();
  v31 = v14 & 1;
  v34 = 3;
  v15 = sub_24A4AC0F0();
  v30 = v16 & 1;
  v33 = 4;
  v28 = sub_24A4AC0F0();
  v29 = v17 & 1;
  v32 = 5;
  v18 = sub_24A4AC0E0();
  v20 = v19;
  v21 = *(v6 + 8);
  v27 = v18;
  v21(v8, v5);
  v22 = v31;
  v23 = v30;
  v24 = v29;
  result = sub_24A37EEE0(a1);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v22;
  *(a2 + 32) = v15;
  *(a2 + 40) = v23;
  v26 = v27;
  *(a2 + 48) = v28;
  *(a2 + 56) = v24;
  *(a2 + 64) = v26;
  *(a2 + 72) = v20;
  return result;
}

unint64_t sub_24A426234()
{
  result = qword_27EF3FF80;
  if (!qword_27EF3FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FF80);
  }

  return result;
}

unint64_t sub_24A42628C()
{
  result = qword_27EF3FF88;
  if (!qword_27EF3FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FF88);
  }

  return result;
}

unint64_t sub_24A4262E4()
{
  result = qword_27EF3FF90;
  if (!qword_27EF3FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FF90);
  }

  return result;
}

uint64_t sub_24A426338(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x776F6C6C616873;
  if (v2 != 1)
  {
    v4 = 1885693284;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x776F6C6C616873;
  if (*a2 != 1)
  {
    v8 = 1885693284;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A4AC270();
  }

  return v11 & 1;
}

uint64_t sub_24A426424()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A4264B8(uint64_t a1)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A426538(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

unint64_t sub_24A4265C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A426AC8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A4265F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x776F6C6C616873;
  if (v2 != 1)
  {
    v5 = 1885693284;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24A426648@<X0>(char *a2@<X8>)
{
  v3 = sub_24A4AC0C0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_24A4266A8@<X0>(char *a3@<X8>)
{
  v4 = sub_24A4AC0C0();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_24A42670C(uint64_t a1)
{
  v2 = sub_24A3B5C54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A426748(uint64_t a1)
{
  v2 = sub_24A3B5C54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A426784(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = a4;
  v6 = sub_24A3C9CEC(&qword_27EF3FFA8, &qword_24A4B9538);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  sub_24A37EACC(a1, a1[3]);
  sub_24A3B5C54();
  sub_24A4AC3D0();
  v14 = 0;
  sub_24A4AC1B0();
  if (v4)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v13 = 1;
  sub_24A4AC1B0();
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_24A4269A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a1 == a4 && a2 == a5 || (v8 = 0, (sub_24A4AC270() & 1) != 0))
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v9 = 0x776F6C6C616873;
      }

      else
      {
        v9 = 1885693284;
      }

      if (a3 == 1)
      {
        v10 = 0xE700000000000000;
      }

      else
      {
        v10 = 0xE400000000000000;
      }

      v11 = a6;
      if (a6)
      {
LABEL_12:
        if (v11 == 1)
        {
          v12 = 0x776F6C6C616873;
        }

        else
        {
          v12 = 1885693284;
        }

        if (v11 == 1)
        {
          v13 = 0xE700000000000000;
        }

        else
        {
          v13 = 0xE400000000000000;
        }

        if (v9 != v12)
        {
          goto LABEL_24;
        }

LABEL_22:
        if (v10 == v13)
        {
          v8 = 1;
LABEL_25:

          return v8 & 1;
        }

LABEL_24:
        v8 = sub_24A4AC270();
        goto LABEL_25;
      }
    }

    else
    {
      v10 = 0xE400000000000000;
      v9 = 1701736302;
      v11 = a6;
      if (a6)
      {
        goto LABEL_12;
      }
    }

    v13 = 0xE400000000000000;
    if (v9 != 1701736302)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  return v8 & 1;
}

unint64_t sub_24A426AC8(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A4AC0C0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24A426B28()
{
  result = qword_27EF3FFB0;
  if (!qword_27EF3FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FFB0);
  }

  return result;
}

unint64_t sub_24A426B80()
{
  result = qword_27EF3FFB8;
  if (!qword_27EF3FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FFB8);
  }

  return result;
}

uint64_t sub_24A426BD4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x800000024A4AEA60;
  if (v2 == 1)
  {
    v4 = 0x800000024A4AEA60;
  }

  else
  {
    v4 = 0x800000024A4AEA80;
  }

  if (*a1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x6E6F697461636F6CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (*a2 != 1)
  {
    v3 = 0x800000024A4AEA80;
  }

  if (*a2)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v7 = 0x6E6F697461636F6CLL;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A4AC270();
  }

  return v9 & 1;
}

uint64_t sub_24A426CA8()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A426D54(uint64_t a1)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A426DEC(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

unint64_t sub_24A426E94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A4277F4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A426EC4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x800000024A4AEA60;
  if (v2 != 1)
  {
    v4 = 0x800000024A4AEA80;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x6E6F697461636F6CLL;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_24A426F2C()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

unint64_t sub_24A426F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A4277F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A426FC4(uint64_t a1)
{
  v2 = sub_24A427688();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A427000(uint64_t a1)
{
  v2 = sub_24A427688();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A42703C(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF3FFD0, &qword_24A4B97D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  sub_24A37EACC(a1, a1[3]);
  sub_24A427688();
  sub_24A4AC3C0();
  if (v1)
  {
    v7 = v25;
    type metadata accessor for FMFMyLocationResponse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v4;
    v29 = 0;
    sub_24A3B2D98();
    sub_24A4AC160();
    v7 = v25;
    memcpy((v25 + 16), v27, 0x161uLL);
    LOBYTE(v26[0]) = 1;
    sub_24A4AC140();
    *(v7 + 376) = v9;
    LOBYTE(v26[0]) = 2;
    sub_24A4AC140();
    *(v7 + 384) = v10;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v12 = sub_24A4AB630();
    sub_24A378E18(v12, qword_27EF4E260);

    v13 = sub_24A4AB600();
    v14 = sub_24A4ABCE0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v28 = v14;
      v16 = v15;
      v24 = swift_slowAlloc();
      v26[0] = v24;
      *v16 = 136315138;
      v23 = v13;
      v17 = sub_24A4273E8();
      v19 = v8;
      v20 = sub_24A37BD58(v17, v18, v26);

      *(v16 + 4) = v20;
      v21 = v23;
      _os_log_impl(&dword_24A376000, v23, v28, "FMFMyLocationResponse: initialized with coder %s", v16, 0xCu);
      v22 = v24;
      sub_24A37EEE0(v24);
      MEMORY[0x24C219130](v22, -1, -1);
      MEMORY[0x24C219130](v16, -1, -1);

      (*(v19 + 8))(v6, v3);
      v7 = v25;
    }

    else
    {

      (*(v8 + 8))(v6, v3);
    }
  }

  sub_24A37EEE0(a1);
  return v7;
}

uint64_t sub_24A4273E8()
{
  v1 = sub_24A4AC420();
  MEMORY[0x24C217D50](v1);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v2 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_24A4ABF50();
  v7 = 0;
  v8 = 0xE000000000000000;
  MEMORY[0x24C217D50](0x6E6F697461636F6CLL, 0xEA0000000000203ALL);
  memcpy(__dst, (v0 + 16), 0x161uLL);
  sub_24A4AC030();
  MEMORY[0x24C217D50](0xD000000000000015, 0x800000024A4B1500);
  sub_24A4ABBE0();
  MEMORY[0x24C217D50](0xD000000000000014, 0x800000024A4B1520);
  sub_24A4ABBE0();
  v3 = v7;
  v4 = v8;
  __dst[0] = 60;
  __dst[1] = 0xE100000000000000;

  MEMORY[0x24C217D50](v3, v4);

  return __dst[0];
}

uint64_t sub_24A42760C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for FMFMyLocationResponse();
  v5 = swift_allocObject();
  result = sub_24A42703C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_24A427688()
{
  result = qword_27EF3FFD8;
  if (!qword_27EF3FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FFD8);
  }

  return result;
}

unint64_t sub_24A4276F0()
{
  result = qword_27EF3FFE0;
  if (!qword_27EF3FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FFE0);
  }

  return result;
}

unint64_t sub_24A427748()
{
  result = qword_27EF3FFE8;
  if (!qword_27EF3FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FFE8);
  }

  return result;
}

unint64_t sub_24A4277A0()
{
  result = qword_27EF3FFF0;
  if (!qword_27EF3FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FFF0);
  }

  return result;
}

unint64_t sub_24A4277F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A4AC0C0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24A427858(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6F43737574617473;
    v6 = 7107189;
    if (a1 != 2)
    {
      v6 = 0x6D614E7473726966;
    }

    if (a1)
    {
      v5 = 0x614D737574617473;
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
    v1 = 0xD000000000000010;
    v2 = 0x55746E6572727563;
    if (a1 != 7)
    {
      v2 = 0x65636E6566;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x656D614E7473616CLL;
    if (a1 != 4)
    {
      v3 = 0x6C69616D65;
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

uint64_t sub_24A427984()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A41F4F0(v3, v1);
  return sub_24A4AC3A0();
}

uint64_t sub_24A4279D4(uint64_t a1)
{
  v2 = *v1;
  sub_24A4AC360();
  sub_24A41F4F0(v4, v2);
  return sub_24A4AC3A0();
}

unint64_t sub_24A427A18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A428E20(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_24A427A48@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A427858(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_24A427A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A428E20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A427AC4(uint64_t a1)
{
  v2 = sub_24A4287F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A427B00(uint64_t a1)
{
  v2 = sub_24A4287F4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24A427B3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v4 = sub_24A3C9CEC(&qword_27EF3F7A0, &qword_24A4B6430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v76[-v5];
  v7 = sub_24A3C9CEC(&qword_27EF40018, &unk_24A4B99E0);
  v79 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v76[-v8];
  v10 = type metadata accessor for FMFCommandResponseFragment(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v76[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1[3];
  v81 = a1;
  sub_24A37EACC(a1, v13);
  sub_24A4287F4();
  sub_24A4AC3C0();
  if (v2)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v20 = sub_24A4AB630();
    sub_24A378E18(v20, qword_27EF4E260);
    v21 = v2;
    v22 = sub_24A4AB600();
    v23 = sub_24A4ABCC0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v82[0] = v25;
      *v24 = 136315138;
      v83 = v2;
      v26 = v2;
      sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
      v27 = sub_24A4AB870();
      v29 = sub_24A37BD58(v27, v28, v82);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_24A376000, v22, v23, "Error decoding command response. Error - %s", v24, 0xCu);
      sub_24A37EEE0(v25);
      MEMORY[0x24C219130](v25, -1, -1);
      MEMORY[0x24C219130](v24, -1, -1);
    }

    swift_willThrow();
    return sub_24A37EEE0(v81);
  }

  v78 = v6;
  v14 = v12;
  v16 = v79;
  v15 = v80;
  LOBYTE(v82[0]) = 0;
  result = sub_24A4AC120();
  v19 = v7;
  v30 = v9;
  v31 = HIBYTE(v18) & 0xF;
  v32 = result & 0xFFFFFFFFFFFFLL;
  if ((v18 & 0x2000000000000000) != 0)
  {
    v33 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v33 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {

    v34 = v14;
    v35 = v10;
    goto LABEL_71;
  }

  v34 = v14;
  v35 = v10;
  if ((v18 & 0x1000000000000000) != 0)
  {
    LOBYTE(v83) = 0;
    v37 = sub_24A49D860(result, v18, 10);
    v77 = v74;

    if ((v77 & 1) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if ((v18 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v18 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_24A4ABF90();
      v32 = v75;
    }

    v36 = *result;
    if (v36 == 43)
    {
      if (v32 >= 1)
      {
        if (--v32)
        {
          v37 = 0;
          if (result)
          {
            v44 = (result + 1);
            while (1)
            {
              v45 = *v44 - 48;
              if (v45 > 9)
              {
                goto LABEL_69;
              }

              v46 = 10 * v37;
              if ((v37 * 10) >> 64 != (10 * v37) >> 63)
              {
                goto LABEL_69;
              }

              v37 = v46 + v45;
              if (__OFADD__(v46, v45))
              {
                goto LABEL_69;
              }

              ++v44;
              if (!--v32)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_68;
        }

        goto LABEL_69;
      }

      goto LABEL_79;
    }

    if (v36 != 45)
    {
      if (v32)
      {
        v37 = 0;
        if (result)
        {
          while (1)
          {
            v50 = *result - 48;
            if (v50 > 9)
            {
              goto LABEL_69;
            }

            v51 = 10 * v37;
            if ((v37 * 10) >> 64 != (10 * v37) >> 63)
            {
              goto LABEL_69;
            }

            v37 = v51 + v50;
            if (__OFADD__(v51, v50))
            {
              goto LABEL_69;
            }

            ++result;
            if (!--v32)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_68;
      }

LABEL_69:
      v37 = 0;
      LOBYTE(v32) = 1;
LABEL_70:
      LOBYTE(v83) = v32;
      v55 = v32;

      if ((v55 & 1) == 0)
      {
LABEL_72:
        *v34 = v37;
        sub_24A3C9CEC(&qword_27EF40010, qword_24A4B9960);
        LOBYTE(v83) = 1;
        sub_24A428848();
        sub_24A4AC160();
        v56 = v78;
        v34[1] = v82[0];
        LOBYTE(v82[0]) = 3;
        v57 = sub_24A4AC120();
        v58 = (v34 + v35[7]);
        *v58 = v57;
        v58[1] = v59;
        LOBYTE(v82[0]) = 4;
        v60 = sub_24A4AC120();
        v61 = (v34 + v35[8]);
        *v61 = v60;
        v61[1] = v62;
        LOBYTE(v82[0]) = 5;
        v63 = sub_24A4AC120();
        v64 = (v34 + v35[9]);
        *v64 = v63;
        v64[1] = v65;
        LOBYTE(v82[0]) = 7;
        v66 = sub_24A4AC120();
        v67 = (v34 + v35[11]);
        *v67 = v66;
        v67[1] = v68;
        v69 = type metadata accessor for FMFLocationAlert(0);
        LOBYTE(v82[0]) = 8;
        sub_24A4288F8();
        sub_24A4AC160();
        (*(*(v69 - 8) + 56))(v56, 0, 1, v69);
        sub_24A428950(v56, v34 + v35[12]);
        LOBYTE(v82[0]) = 2;
        sub_24A4AC120();
        sub_24A4AA9C0();

        LOBYTE(v82[0]) = 6;
        v70 = sub_24A4AC170();
        v71 = v35[10];
        v72 = [objc_opt_self() fm:v70 dateFromEpoch:?];
        sub_24A4AAAA0();

        (*(v16 + 8))(v30, v19);
        v73 = sub_24A4AAAD0();
        (*(*(v73 - 8) + 56))(v34 + v71, 0, 1, v73);
        sub_24A4289C0(v34, v15);
        return sub_24A37EEE0(v81);
      }

LABEL_71:
      v37 = 500;
      goto LABEL_72;
    }

    if (v32 >= 1)
    {
      if (--v32)
      {
        v37 = 0;
        if (result)
        {
          v38 = (result + 1);
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              goto LABEL_69;
            }

            v40 = 10 * v37;
            if ((v37 * 10) >> 64 != (10 * v37) >> 63)
            {
              goto LABEL_69;
            }

            v37 = v40 - v39;
            if (__OFSUB__(v40, v39))
            {
              goto LABEL_69;
            }

            ++v38;
            if (!--v32)
            {
              goto LABEL_70;
            }
          }
        }

LABEL_68:
        LOBYTE(v32) = 0;
        goto LABEL_70;
      }

      goto LABEL_69;
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v82[0] = result;
  v82[1] = v18 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v31)
      {
        v37 = 0;
        v52 = v82;
        while (1)
        {
          v53 = *v52 - 48;
          if (v53 > 9)
          {
            break;
          }

          v54 = 10 * v37;
          if ((v37 * 10) >> 64 != (10 * v37) >> 63)
          {
            break;
          }

          v37 = v54 + v53;
          if (__OFADD__(v54, v53))
          {
            break;
          }

          v52 = (v52 + 1);
          if (!--v31)
          {
            goto LABEL_68;
          }
        }
      }

      goto LABEL_69;
    }

    if (v31)
    {
      v32 = v31 - 1;
      if (v31 != 1)
      {
        v37 = 0;
        v41 = v82 + 1;
        while (1)
        {
          v42 = *v41 - 48;
          if (v42 > 9)
          {
            break;
          }

          v43 = 10 * v37;
          if ((v37 * 10) >> 64 != (10 * v37) >> 63)
          {
            break;
          }

          v37 = v43 - v42;
          if (__OFSUB__(v43, v42))
          {
            break;
          }

          ++v41;
          if (!--v32)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_69;
    }

    goto LABEL_78;
  }

  if (v31)
  {
    v32 = v31 - 1;
    if (v31 != 1)
    {
      v37 = 0;
      v47 = v82 + 1;
      while (1)
      {
        v48 = *v47 - 48;
        if (v48 > 9)
        {
          break;
        }

        v49 = 10 * v37;
        if ((v37 * 10) >> 64 != (10 * v37) >> 63)
        {
          break;
        }

        v37 = v49 + v48;
        if (__OFADD__(v49, v48))
        {
          break;
        }

        ++v47;
        if (!--v32)
        {
          goto LABEL_70;
        }
      }
    }

    goto LABEL_69;
  }

LABEL_80:
  __break(1u);
  return result;
}