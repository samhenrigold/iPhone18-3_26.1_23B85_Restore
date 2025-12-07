Swift::String_optional __swiftcall UInt32.name()()
{
  v1 = sub_1001B22FC(v0, &IORegistryEntryGetName);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall UInt32.className()()
{
  v1 = sub_1001B22FC(v0, &_IOObjectGetClass);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_1001B22FC(uint64_t a1, unsigned int (*a2)(uint64_t, uint64_t))
{
  v4 = swift_slowAlloc();
  if (a2(a1, v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = String.init(cString:)();
  }

  return v5;
}

Swift::UInt32_optional __swiftcall UInt32.parent()()
{
  parent = 0;
  ParentEntry = IORegistryEntryGetParentEntry(v0, "IOService", &parent);
  if (ParentEntry)
  {
    v2 = 0;
  }

  else
  {
    v2 = parent;
  }

  return (v2 | ((ParentEntry != 0) << 32));
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> InterfaceFinder.validate(_:)(Swift::Int32 a1)
{
  if (a1)
  {
    sub_1001B2450();
    swift_allocError();
    *v2 = a1;
    swift_willThrow();
  }
}

unint64_t sub_1001B2450()
{
  result = qword_1004AB0C0;
  if (!qword_1004AB0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB0C0);
  }

  return result;
}

char *InterfaceFinder.getEthernetInterfaceForParent(childClassName:parentClassName:)(uint64_t a1, unint64_t a2, uint64_t a3, char *a4)
{
  v6 = v5;
  v7 = v4;
  v11 = String.utf8CString.getter();
  v12 = IOServiceMatching((v11 + 32));

  if (!v12)
  {
    __break(1u);
LABEL_35:
    __break(1u);
  }

  v13 = String.utf8CString.getter();
  v14 = IOServiceMatching((v13 + 32));

  if (!v14)
  {
    goto LABEL_35;
  }

  v15 = v14;
  v16 = String._bridgeToObjectiveC()();
  [(__CFDictionary *)v12 setValue:v15 forKey:v16];
  v48 = v15;

  existing = 0;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000270B4(v17, qword_1004B00F8);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  v49 = a2;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = sub_1000026C0(a1, a2, &v52);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1000026C0(a3, a4, &v52);
    _os_log_impl(&_mh_execute_header, v18, v19, "Looking for node with class %s and parent class %s", v20, 0x16u);
    swift_arrayDestroy();
    v6 = v5;
  }

  v21 = v12;
  MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v21, &existing);
  (*(*v7 + 80))(MatchingServices);
  if (v6)
  {

    return a4;
  }

  v47 = v21;
  v23 = IOIteratorNext(existing);
  if (v23)
  {
    v24 = v23;
    a4 = _swiftEmptyArrayStorage;
    while (1)
    {
      v28 = swift_slowAlloc();
      if (IOObjectGetClass(v24, v28))
      {
      }

      else
      {
        v32 = String.init(cString:)();
        v34 = v33;

        if (v32 == a1 && v34 == v49)
        {

LABEL_25:
          v39 = (*(*v7 + 96))(v24);
          if (v40)
          {
            v41 = v39;
            v42 = v40;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a4 = sub_100011A4C(0, *(a4 + 2) + 1, 1, a4);
            }

            v44 = *(a4 + 2);
            v43 = *(a4 + 3);
            if (v44 >= v43 >> 1)
            {
              a4 = sub_100011A4C((v43 > 1), v44 + 1, 1, a4);
            }

            *(a4 + 2) = v44 + 1;
            v45 = &a4[16 * v44];
            *(v45 + 4) = v41;
            *(v45 + 5) = v42;
          }

          goto LABEL_13;
        }

        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v38)
        {
          goto LABEL_25;
        }
      }

      v29 = swift_slowAlloc();
      if (IOObjectGetClass(v24, v29))
      {
        v30 = 0xE700000000000000;
        v31 = 0x6E776F6E6B6E55;
      }

      else
      {
        v31 = String.init(cString:)();
        v30 = v35;
      }

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v52 = v26;
        *v25 = 136315138;
        v27 = sub_1000026C0(v31, v30, &v52);

        *(v25 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v36, v37, "Skipping matched node with class: %s", v25, 0xCu);
        sub_100003C3C(v26);
      }

      else
      {
      }

LABEL_13:
      v24 = IOIteratorNext(existing);
      if (!v24)
      {
        goto LABEL_32;
      }
    }
  }

  a4 = _swiftEmptyArrayStorage;
LABEL_32:
  IOObjectRelease(existing);

  return a4;
}

Swift::String_optional __swiftcall InterfaceFinder.getBSDName(forEntry:)(Swift::UInt32 forEntry)
{
  v2 = (*(*v1 + 104))(*&forEntry, 0x656D614E20445342, 0xE800000000000000, 1);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

Swift::String_optional __swiftcall InterfaceFinder.stringProperty(_:_:recursive:)(Swift::UInt32 _, Swift::String a2, Swift::Bool recursive)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = IORegistryEntrySearchCFProperty(_, "IOService", v5, kCFAllocatorDefault, recursive);

  if (v6)
  {
    v7 = swift_dynamicCast();
    if (v7)
    {
      v8 = v12;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v11;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  result.value._object = v8;
  result.value._countAndFlagsBits = v9;
  return result;
}

uint64_t FirewallInstaller.lastError.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  swift_errorRetain();
  return v1;
}

uint64_t FirewallInstaller.lastError.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

void *FirewallInstaller.__allocating_init(computer:interfaceFinder:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000027;
  v4[3] = 0x800000010043E380;
  v4[9] = a2;
  v4[10] = 0;
  sub_100003C88(a1, (v4 + 4));
  return v4;
}

void *FirewallInstaller.init(computer:interfaceFinder:)(__int128 *a1, uint64_t a2)
{
  v2[2] = 0xD000000000000027;
  v2[3] = 0x800000010043E380;
  v2[9] = a2;
  v2[10] = 0;
  sub_100003C88(a1, (v2 + 4));
  return v2;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FirewallInstaller.findManagementNetworkInterfaceName()()
{
  v3 = *(v1 + 72);
  v4 = (*(*v3 + 88))(0xD000000000000013, 0x800000010043E3B0, 0xD000000000000015, 0x800000010043E3D0);
  if (!v2)
  {
    v3 = v4[2];
    if (v3 == 1)
    {
      v0 = v4[4];
      v3 = v4[5];
    }

    else
    {

      sub_1001B3B44();
      v0 = swift_allocError();
      *v5 = v3;
      swift_willThrow();
    }
  }

  v6 = v0;
  v7 = v3;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FirewallInstaller.performInterfaceSubstitutions(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v26 = a1;
  sub_10000B080();
  if (StringProtocol.contains<A>(_:)())
  {
    sub_1001B3B44();
    swift_allocError();
    *v5 = 0;
    v27 = *(*v1 + 144);
    v6 = v27();
    if (v2)
    {
      v24 = object;

      swift_errorRetain();
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1000270B4(v8, qword_1004B00F8);
      swift_errorRetain();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 134218242;
        *(v11 + 4) = 1;
        *(v11 + 12) = 2112;
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 14) = v13;
        *v12 = v13;
        _os_log_impl(&_mh_execute_header, v9, v10, "Unable to find management network interface retry=%ld: %@", v11, 0x16u);
        sub_10019AC78(v12);
      }

      else
      {
      }

      v14 = [objc_opt_self() sleepForTimeInterval:0.5];
      v25 = (v27)(v14);
      object = v24;
    }

    else
    {
      v25 = v6;
    }

    v27 = v7;
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000270B4(v15, qword_1004B00F8);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26._countAndFlagsBits = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1000026C0(v25, v27, &v26._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v16, v17, "Found management network interface: %s", v18, 0xCu);
      sub_100003C3C(v19);
    }

    v26._countAndFlagsBits = countAndFlagsBits;
    v26._object = object;
    countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    object = v20;
  }

  else
  {
  }

  v21 = countAndFlagsBits;
  v22 = object;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FirewallInstaller.installRules(_:)(Swift::OpaquePointer a1)
{
  sub_1000039E8(&qword_1004A6B48, &unk_100376810);
  sub_10004AF7C();
  v2 = BidirectionalCollection<>.joined(separator:)();
  (*(*v1 + 168))(v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FirewallInstaller.installRules(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = type metadata accessor for URL();
  v55 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FilePath();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v48 - v12;
  v14 = countAndFlagsBits;
  v15 = v1;
  v16 = v59;
  v17 = (*(*v1 + 152))(v14, object);
  v19 = v16;
  if (!v16)
  {
    v52 = 0;
    v53 = v8;
    v20 = v7;
    *&v54 = v18;
    v49 = v4;
    v50 = v6;
    v51 = v17;
    v21 = v1[7];
    v22 = v1[8];
    v59 = v1;
    sub_10000E2A8(v1 + 4, v21);
    (*(v22 + 312))(v56, v21, v22);
    v24 = v57;
    v23 = v58;
    sub_10000E2A8(v56, v57);
    if (qword_1004A9EA8 != -1)
    {
      swift_once();
    }

    v25 = sub_1000270B4(v20, kDInitFirewallRulesPath);
    v26 = v53;
    v27 = v25;
    (*(v53 + 16))(v11);
    FilePath.removingLastComponent()();
    v28 = v52;
    FileSystem.mkdirs(_:)(v13, v24, v23);
    if (!v28)
    {
      (*(v26 + 8))(v13, v20);
      sub_100003C3C(v56);
      v29 = v59;
      v30 = v59[7];
      v31 = v59[8];
      sub_10000E2A8(v59 + 4, v30);
      (*(v31 + 312))(v56, v30, v31);
      v32 = v57;
      v33 = v58;
      sub_10000E2A8(v56, v57);
      FileSystem.write(text:to:)(v51, v54, v27, v32, v33);
      v53 = v27;

      sub_100003C3C(v56);
      v35 = v50;
      URL.init(fileURLWithPath:)();
      v36 = v29[7];
      v37 = v29[8];
      sub_10000E2A8(v29 + 4, v36);
      sub_1000039E8(&qword_1004AAA18, &qword_1003F5E20);
      v38 = swift_allocObject();
      v54 = xmmword_100376BB0;
      *(v38 + 16) = xmmword_100376BB0;
      *(v38 + 56) = &type metadata for String;
      *(v38 + 64) = &protocol witness table for String;
      *(v38 + 32) = 17965;
      *(v38 + 40) = 0xE200000000000000;
      *(v38 + 96) = &type metadata for String;
      *(v38 + 104) = &protocol witness table for String;
      *(v38 + 72) = 7105633;
      *(v38 + 80) = 0xE300000000000000;
      (*(v37 + 272))(v35, v38, v36, v37);

      v39 = v29[7];
      v40 = v29[8];
      v52 = sub_10000E2A8(v29 + 4, v39);
      v41 = swift_allocObject();
      *(v41 + 16) = v54;
      *(v41 + 56) = &type metadata for String;
      *(v41 + 64) = &protocol witness table for String;
      *(v41 + 32) = 26157;
      *(v41 + 40) = 0xE200000000000000;
      v42 = FilePath.string.getter();
      *(v41 + 96) = &type metadata for String;
      *(v41 + 104) = &protocol witness table for String;
      *(v41 + 72) = v42;
      *(v41 + 80) = v43;
      (*(v40 + 272))(v35, v41, v39, v40);

      v44 = v29[7];
      v45 = v29[8];
      sub_10000E2A8(v29 + 4, v44);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_100376A40;
      *(v46 + 56) = &type metadata for String;
      *(v46 + 64) = &protocol witness table for String;
      *(v46 + 32) = 25901;
      *(v46 + 40) = 0xE200000000000000;
      v47 = v50;
      (*(v45 + 272))(v50, v46, v44, v45);

      (*(v55 + 8))(v47, v49);
      return;
    }

    (*(v26 + 8))(v13, v20);

    sub_100003C3C(v56);
    v15 = v59;
    v19 = v28;
  }

  v34 = *(*v15 + 120);
  swift_errorRetain();
  v34(v19);
  swift_willThrow();
}

Swift::Void __swiftcall FirewallInstaller.sendFirewallRulesInstalledEvent()()
{
  v0 = String.utf8CString.getter();
  notify_post((v0 + 32));
}

void *FirewallInstaller.deinit()
{

  sub_100003C3C((v0 + 32));

  return v0;
}

uint64_t FirewallInstaller.__deallocating_deinit()
{

  sub_100003C3C((v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t sub_1001B3B44()
{
  result = qword_1004AB0C8;
  if (!qword_1004AB0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB0C8);
  }

  return result;
}

uint64_t sub_1001B3B98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_1001B3BE4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 120);
  swift_errorRetain();
  return v3(v2);
}

uint64_t dispatch thunk of FirewallInstaller.installRules(_:)()
{
  return (*(*v0 + 160))();
}

{
  return (*(*v0 + 168))();
}

uint64_t sub_1001B3F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1001B40F8();

  return RawRepresentable<>.init(argument:)();
}

uint64_t sub_1001B3F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001B40F8();

  return ExpressibleByArgument<>.defaultValueDescription.getter(a1, a2, v4, &protocol witness table for String);
}

uint64_t sub_1001B3FF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001B40A4();
  v5 = sub_1001B40F8();

  return static ExpressibleByArgument<>.allValueStrings.getter(a1, a2, v4, v5, &protocol witness table for String);
}

uint64_t sub_1001B4050(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001B40A4();

  return static ExpressibleByArgument<>.defaultCompletionKind.getter(a1, a2, v4);
}

unint64_t sub_1001B40A4()
{
  result = qword_1004AB280;
  if (!qword_1004AB280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB280);
  }

  return result;
}

unint64_t sub_1001B40F8()
{
  result = qword_1004AB288;
  if (!qword_1004AB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB288);
  }

  return result;
}

uint64_t DInitPreferencesConfig.value.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t DInitPreferencesConfig.applicationId.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t DInitPreferencesConfig.applicationId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Config.User.Authentication.Memento.ldapServer.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Config.User.Authentication.Memento.ldapServer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t Config.Identification.localHostname.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t Config.Identification.localHostname.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t DInitPreferencesConfig.init(key:value:applicationId:userName:hostName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v10 = *a3;
  *a9 = result;
  a9[1] = a2;
  a9[2] = v10;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

DarwinInit::DInitPreferencesConfig::CodingKeys_optional __swiftcall DInitPreferencesConfig.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100484E68, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t Config.PrefsVersionOneKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 7955819;
  v2 = 0x746163696C707061;
  v3 = 0x656D616E72657375;
  if (a1 != 3)
  {
    v3 = 0x656D616E74736F68;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x65756C6176;
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

uint64_t sub_1001B4430(_BYTE *a1, _BYTE *a2)
{
  v2 = 7955819;
  v3 = *a1;
  v4 = 0xE300000000000000;
  v5 = *a2;
  v6 = 0x746163696C707061;
  v7 = 0xEE0064695F6E6F69;
  v8 = 0x656D616E72657375;
  if (v3 != 3)
  {
    v8 = 0x656D616E74736F68;
  }

  if (v3 != 2)
  {
    v6 = v8;
    v7 = 0xE800000000000000;
  }

  v9 = 0x65756C6176;
  if (*a1)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v9 = 7955819;
  }

  if (*a1 <= 1u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v3 <= 1)
  {
    v11 = v4;
  }

  else
  {
    v11 = v7;
  }

  v12 = 0xE300000000000000;
  v13 = 0x746163696C707061;
  v14 = 0xEE0064695F6E6F69;
  v15 = 0x656D616E72657375;
  if (v5 != 3)
  {
    v15 = 0x656D616E74736F68;
  }

  if (v5 != 2)
  {
    v13 = v15;
    v14 = 0xE800000000000000;
  }

  if (*a2)
  {
    v2 = 0x65756C6176;
    v12 = 0xE500000000000000;
  }

  if (*a2 <= 1u)
  {
    v16 = v2;
  }

  else
  {
    v16 = v13;
  }

  if (*a2 <= 1u)
  {
    v17 = v12;
  }

  else
  {
    v17 = v14;
  }

  if (v10 == v16 && v11 == v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v18 & 1;
}

Swift::Int sub_1001B45BC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001B46A0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1001B4770()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

DarwinInit::DInitPreferencesConfig::CodingKeys_optional sub_1001B4850@<W0>(Swift::String *a1@<X0>, DarwinInit::DInitPreferencesConfig::CodingKeys_optional *a2@<X8>)
{
  result.value = DInitPreferencesConfig.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_1001B4880(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7955819;
  v5 = 0xEE0064695F6E6F69;
  v6 = 0x746163696C707061;
  v7 = 0x656D616E72657375;
  if (v2 != 3)
  {
    v7 = 0x656D616E74736F68;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x65756C6176;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1001B4920()
{
  v1 = *v0;
  v2 = 7955819;
  v3 = 0x746163696C707061;
  v4 = 0x656D616E72657375;
  if (v1 != 3)
  {
    v4 = 0x656D616E74736F68;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65756C6176;
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

DarwinInit::DInitPreferencesConfig::CodingKeys_optional sub_1001B49BC@<W0>(uint64_t a1@<X0>, DarwinInit::DInitPreferencesConfig::CodingKeys_optional *a2@<X8>)
{
  result.value = DInitPreferencesConfig.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1001B49E4(uint64_t a1)
{
  v2 = sub_1001B53C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B4A20(uint64_t a1)
{
  v2 = sub_1001B53C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DInitPreferencesConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AB290, &qword_1003F5FB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1001B53C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  LOBYTE(v35[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v10;
  LOBYTE(v30) = 1;
  sub_1001B5418();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v35[0];
  LOBYTE(v35[0]) = 2;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = v11;
  LOBYTE(v35[0]) = 3;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = v12;
  v36 = 4;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v28;
  *&v30 = v9;
  *(&v30 + 1) = v29;
  *&v31 = v28;
  *(&v31 + 1) = v26;
  v18 = v27;
  *&v32 = v27;
  *(&v32 + 1) = v24;
  v19 = v25;
  *&v33 = v25;
  *(&v33 + 1) = v16;
  v34 = v15;
  *(a2 + 64) = v15;
  v20 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v20;
  v21 = v31;
  *a2 = v30;
  *(a2 + 16) = v21;
  sub_1001B546C(&v30, v35);
  sub_100003C3C(a1);
  v35[0] = v9;
  v35[1] = v29;
  v35[2] = v17;
  v35[3] = v26;
  v35[4] = v18;
  v35[5] = v24;
  v35[6] = v19;
  v35[7] = v16;
  v35[8] = v15;
  return sub_1001B54A4(v35);
}

uint64_t DInitPreferencesConfig.encode(to:)(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AB2A8, &qword_1003F5FB8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[6] = v1[3];
  v13 = v7;
  v8 = v1[4];
  v12[4] = v1[5];
  v12[5] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v1[8];
  v12[3] = v9;
  sub_10000E2A8(a1, a1[3]);
  sub_1001B53C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = 0;
  v10 = v14;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v10)
  {
    v15 = v13;
    v19 = 1;
    sub_1001B54D4();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v18 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

void DInitPreferencesConfig.hash(into:)(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[6];
  v5 = v1[8];
  String.hash(into:)();
  JSON.hash(into:)(a1);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:
    Hasher._combine(_:)(0);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_9:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int DInitPreferencesConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  DInitPreferencesConfig.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001B51F4()
{
  Hasher.init(_seed:)();
  DInitPreferencesConfig.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t _s10DarwinInit22DInitPreferencesConfigV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v15 = a2[7];
  v16 = a1[7];
  v17 = a2[8];
  v18 = a1[8];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v19 = v7;
  v20 = v2;

  v13 = _s10DarwinInit4JSONO2eeoiySbAC_ACtFZ_0(&v20, &v19, v12);

  if ((v13 & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v9 || (v3 != v8 || v4 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v5 != v10 || v6 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v18)
  {
    if (v17 && (v16 == v15 && v18 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v17)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1001B53C4()
{
  result = qword_1004AB298;
  if (!qword_1004AB298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB298);
  }

  return result;
}

unint64_t sub_1001B5418()
{
  result = qword_1004AB2A0;
  if (!qword_1004AB2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB2A0);
  }

  return result;
}

unint64_t sub_1001B54D4()
{
  result = qword_1004AB2B0;
  if (!qword_1004AB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB2B0);
  }

  return result;
}

unint64_t sub_1001B552C()
{
  result = qword_1004AB2B8;
  if (!qword_1004AB2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB2B8);
  }

  return result;
}

unint64_t sub_1001B5584()
{
  result = qword_1004AB2C0;
  if (!qword_1004AB2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB2C0);
  }

  return result;
}

unint64_t sub_1001B55DC()
{
  result = qword_1004AB2C8;
  if (!qword_1004AB2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB2C8);
  }

  return result;
}

unint64_t sub_1001B5634()
{
  result = qword_1004AB2D0;
  if (!qword_1004AB2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB2D0);
  }

  return result;
}

uint64_t sub_1001B5688(void *a1)
{
  if (*a1 >> 62 == 3)
  {
    return (*a1 >> 3) + 6;
  }

  else
  {
    return *a1 >> 61;
  }
}

__n128 sub_1001B56A8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001B56CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1001B5714(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static PerformanceData.writeStats(to:)(char *a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1001B57DC(a1, &v4);
  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t sub_1001B57DC@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v135 = a2;
  v125 = a1;
  v2 = type metadata accessor for URL.DirectoryHint();
  v132 = *(v2 - 8);
  v133 = v2;
  __chkstk_darwin(v2);
  v131 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v4 - 8);
  v134 = &v118 - v5;
  v6 = sub_1000039E8(&qword_1004A9CF8, &qword_10037BF90);
  __chkstk_darwin(v6 - 8);
  v8 = &v118 - v7;
  v9 = type metadata accessor for FilePath();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v124 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v130 = &v118 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v118 - v16;
  __chkstk_darwin(v15);
  v19 = &v118 - v18;
  v123 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  FilePath.init(stringLiteral:)();
  *&v137.f_bsize = 0;
  v137.f_blocks = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v20 = v9;
  *&v137.f_bsize = 0xD000000000000029;
  v137.f_blocks = 0x800000010043E4D0;
  v128 = sub_100190550();
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);
  v22 = v10;

  v23 = *&v137.f_bsize;
  f_blocks = v137.f_blocks;
  FilePath.init(stringLiteral:)();
  (*(v22 + 56))(v8, 0, 1, v20);
  LOBYTE(v23) = static Subprocess.run(shell:command:savingStandardOutTo:)(0, 0, v23, f_blocks, v8);
  sub_100013F2C(v8, &qword_1004A9CF8, &qword_10037BF90);
  if ((v23 & 1) == 0)
  {
    (*(v22 + 8))(v19, v20);

LABEL_7:
    *v135 = 0;
    return result;
  }

  v127 = f_blocks;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_1000270B4(v25, qword_1004B00F8);
  v27 = v19;
  v121 = *(v22 + 16);
  v122 = v22 + 16;
  v121(v17, v19, v20);
  v126 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v30 = os_log_type_enabled(v28, v29);
  v129 = v22;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v137.f_bsize = v32;
    *v31 = 136315138;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v119 = v27;
    v34 = v20;
    v36 = v35;
    v120 = *(v129 + 8);
    v120(v17, v34);
    v37 = sub_1000026C0(v33, v36, &v137);
    v20 = v34;
    v27 = v119;

    *(v31 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v28, v29, "Loading raw data of file at %s", v31, 0xCu);
    sub_100003C3C(v32);
  }

  else
  {

    v120 = *(v22 + 8);
    v120(v17, v20);
  }

  v39 = v136;
  v40 = v130;
  v121(v130, v27, v20);
  v41 = v131;
  (*(v132 + 104))(v131, enum case for URL.DirectoryHint.inferFromPath(_:), v133);
  v42 = v134;
  sub_1001746A8(v40, v41, v134);
  v43 = type metadata accessor for URL();
  v44 = *(v43 - 8);
  result = (*(v44 + 48))(v42, 1, v43);
  if (result == 1)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v45 = Data.init(contentsOf:options:)();
  if (v39)
  {
    (*(v44 + 8))(v42, v43);

    swift_errorRetain();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v134 = v20;
      v50 = v49;
      v51 = swift_slowAlloc();
      *&v137.f_bsize = v51;
      *v50 = 136315138;
      swift_getErrorValue();
      v52 = Error.localizedDescription.getter();
      v54 = v27;
      v55 = sub_1000026C0(v52, v53, &v137);

      *(v50 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v47, v48, "Read of footprint stdout failed, %s", v50, 0xCu);
      sub_100003C3C(v51);

LABEL_13:

      v56 = v54;
      v57 = v134;
LABEL_19:
      result = (v120)(v56, v57);
      *v135 = 0;
      return result;
    }

    v56 = v27;
    goto LABEL_18;
  }

  v58 = v46;
  v133 = v45;
  (*(v44 + 8))(v42, v43);
  v54 = v27;
  FilePath.remove()();
  v132 = v58;
  if (v59)
  {
    v136 = 0;
    swift_errorRetain();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v134 = v20;
      v63 = v62;
      v64 = swift_slowAlloc();
      *&v137.f_bsize = v64;
      *v63 = 136315138;
      swift_getErrorValue();
      v65 = Error.localizedDescription.getter();
      v67 = sub_1000026C0(v65, v66, &v137);

      *(v63 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v60, v61, "Unable to delete the footprint.json, %s", v63, 0xCu);
      sub_100003C3C(v64);

      v20 = v134;
    }

    else
    {
    }
  }

  else
  {
    v136 = 0;
  }

  v68 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v138 = 0;
  v70 = [v68 JSONObjectWithData:isa options:1 error:&v138];

  v71 = v138;
  if (!v70)
  {
    v75 = v71;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v47 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v76))
    {
      v77 = swift_slowAlloc();
      v134 = v20;
      v78 = v77;
      v79 = swift_slowAlloc();
      *&v137.f_bsize = v79;
      *v78 = 136315138;
      swift_getErrorValue();
      v80 = Error.localizedDescription.getter();
      v82 = sub_1000026C0(v80, v81, &v137);

      *(v78 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v47, v76, "Parse of footprint failed, %s", v78, 0xCu);
      sub_100003C3C(v79);

      sub_100031928(v133, v132);
      goto LABEL_13;
    }

    sub_100031928(v133, v132);

    v56 = v54;
LABEL_18:
    v57 = v20;
    goto LABEL_19;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1001B6A5C();
  swift_dynamicCast();
  v72 = v138;
  *&v138 = 0x6F66206C61746F74;
  *(&v138 + 1) = 0xEF746E697270746FLL;
  v73 = v72;
  v74 = [v73 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  v131 = v73;

  if (v74)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v138 = 0u;
    v139 = 0u;
  }

  *&v137.f_bsize = v138;
  *&v137.f_bfree = v139;
  if (!*(&v139 + 1))
  {

    sub_100013F2C(&v137, &qword_1004A8398, &qword_100403EA0);
LABEL_38:
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    v94 = os_log_type_enabled(v92, v93);
    v95 = v132;
    if (v94)
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v92, v93, "Parse of footprint failed to find total footprint", v96, 2u);
    }

    sub_100031928(v133, v95);

    v97 = v54;
    v98 = v20;
    goto LABEL_41;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_38;
  }

  v134 = v20;
  v83 = proc_listallpids(0, 0);
  if (v83 < 1)
  {

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 67109120;
      *(v101 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v99, v100, "Unable to list all pids, %d", v101, 8u);
    }

    sub_100031928(v133, v132);

    v97 = v54;
    v98 = v134;
LABEL_41:
    result = (v120)(v97, v98);
    goto LABEL_7;
  }

  v84 = v83;
  v85 = 4 * v83;
  v86 = swift_slowAlloc();
  if (v84 >> 29)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
  }

  v87 = v86;
  if (proc_listallpids(v86, v85) < 1)
  {

    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 67109120;
      *(v90 + 4) = errno.getter();
      v91 = "Unable to list all pids, %d";
      goto LABEL_48;
    }

LABEL_49:

    *v135 = 0;

    sub_100031928(v133, v132);

    v102 = v54;
    return (v120)(v102, v134);
  }

  bzero(&v137, 0x878uLL);
  if (statfs("/", &v137))
  {

    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 67109120;
      *(v90 + 4) = errno.getter();
      v91 = "Unable to statfs /, %d";
LABEL_48:
      _os_log_impl(&_mh_execute_header, v88, v89, v91, v90, 8u);

      goto LABEL_49;
    }

    goto LABEL_49;
  }

  v119 = v54;
  if (v137.f_blocks < v137.f_bfree)
  {
    goto LABEL_64;
  }

  v130 = v87;
  v103 = v125;
  if (!is_mul_ok(v137.f_bsize, v137.f_blocks - v137.f_bfree))
  {
    goto LABEL_65;
  }

  FilePath.description.getter();
  String.utf8CString.getter();

  v104 = pdwriter_open();

  if (!v104)
  {

    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 67109120;
      *(v117 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v115, v116, "Unable to open pdwriter, %d", v117, 8u);
    }

    *v135 = 0;

    sub_100031928(v133, v132);

    v102 = v119;
    return (v120)(v102, v134);
  }

  if (!pdunit_bytes)
  {
    goto LABEL_67;
  }

  pdwriter_new_value();
  v138 = xmmword_1003F6300;
  result = pdwriter_new_value();
  if (!pdunit_seconds)
  {
LABEL_68:
    __break(1u);
    return result;
  }

  pdwriter_new_value();
  pdwriter_new_value();
  pdwriter_close();
  v105 = v124;
  v106 = v134;
  v121(v124, v103, v134);
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    *&v138 = v127;
    *v109 = 136315138;
    v110 = dispatch thunk of CustomStringConvertible.description.getter();
    v112 = v111;
    v113 = v120;
    v120(v105, v134);
    v114 = sub_1000026C0(v110, v112, &v138);

    *(v109 + 4) = v114;
    _os_log_impl(&_mh_execute_header, v107, v108, "PD Stats written to %s", v109, 0xCu);
    sub_100003C3C(v127);
    v106 = v134;
  }

  else
  {

    v113 = v120;
    v120(v105, v106);
  }

  *v135 = 1;

  sub_100031928(v133, v132);

  return v113(v119, v106);
}

unint64_t sub_1001B6A5C()
{
  result = qword_1004AB2D8;
  if (!qword_1004AB2D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004AB2D8);
  }

  return result;
}

uint64_t DInitAppleAuthenticationConfig.ldapServer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Config.Root.root.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t DInitInstallConfig.root.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t DInitInstallConfig.root.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t Config.Cryptex.Cache.invalidationId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t Config.Identification.usageLabel.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t Config.Identification.usageLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_1001B6CA0()
{
  v1 = 0x56726F4674696177;
  v2 = 1953460082;
  if (*v0 != 3)
  {
    v2 = 0x67696C6674736F70;
  }

  if (*v0)
  {
    v1 = 0x6867696C66657270;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1001B6D80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001B752C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001B6DA8(uint64_t a1)
{
  v2 = sub_1001B7CA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B6DE4(uint64_t a1)
{
  v2 = sub_1001B7CA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void __swiftcall DInitInstallConfig.init()(DarwinInit::DInitInstallConfig *__return_ptr retstr)
{
  retstr->postflight = 0u;
  retstr->postflightShell = 0u;
  retstr->preflightShell = 0u;
  retstr->root = 0u;
  retstr->waitForVolume = 0u;
  retstr->preflight = 0u;
}

void __swiftcall DInitInstallConfig.init(waitForVolume:preflight:preflightShell:root:postflight:postflightShell:)(DarwinInit::DInitInstallConfig *__return_ptr retstr, Swift::String_optional waitForVolume, Swift::String_optional preflight, Swift::String_optional preflightShell, Swift::String_optional root, Swift::String_optional postflight, Swift::String_optional postflightShell)
{
  retstr->waitForVolume = waitForVolume;
  retstr->preflight = preflight;
  retstr->preflightShell = preflightShell;
  retstr->root = root;
  retstr->postflight = postflight;
  retstr->postflightShell = postflightShell;
}

double DInitInstallConfig.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1001B7748(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t DInitInstallConfig.encode(to:)(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AB2E0, &qword_1003F6330);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000E2A8(a1, a1[3]);
  sub_1001B7CA0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1001B70C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s10DarwinInit18DInitInstallConfigV2eeoiySbAC_ACtFZ_0(v9, v10) & 1;
}

void DInitInstallConfig.hash(into:)(uint64_t a1)
{
  if (v1[1])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v1[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v1[3])
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v1[5])
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  Hasher._combine(_:)(0);
  if (v1[5])
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v1[7])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  Hasher._combine(_:)(0);
  if (v1[7])
  {
LABEL_5:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v1[9])
    {
      goto LABEL_6;
    }

LABEL_14:
    Hasher._combine(_:)(0);
    if (v1[11])
    {
      goto LABEL_7;
    }

LABEL_15:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_13:
  Hasher._combine(_:)(0);
  if (!v1[9])
  {
    goto LABEL_14;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v1[11])
  {
    goto LABEL_15;
  }

LABEL_7:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int DInitInstallConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  DInitInstallConfig.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001B72D8()
{
  Hasher.init(_seed:)();
  DInitInstallConfig.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t _s10DarwinInit18DInitInstallConfigV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = a1[7];
  v22 = a2[7];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v21 != v22)
    {
      v23 = a1;
      v24 = a2;
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v24;
      v26 = v25;
      a1 = v23;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v27 = a1[9];
  v28 = a2[9];
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    if (a1[8] != a2[8] || v27 != v28)
    {
      v29 = a1;
      v30 = a2;
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v30;
      v32 = v31;
      a1 = v29;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  v33 = a1[11];
  v34 = a2[11];
  if (v33)
  {
    if (v34 && (a1[10] == a2[10] && v33 == v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v34)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1001B752C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x56726F4674696177 && a2 == 0xED0000656D756C6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6867696C66657270 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6867696C66657270 && a2 == 0xEE006C6C65685374 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1953460082 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x67696C6674736F70 && a2 == 0xEA00000000007468 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x67696C6674736F70 && a2 == 0xEF6C6C6568537468)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1001B7748@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AB310, &unk_1003F6598);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - v7;
  v9 = a1[3];
  v44 = a1;
  sub_10000E2A8(a1, v9);
  sub_1001B7CA0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v45 = v2;
    v43 = 0;
    sub_100003C3C(v44);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = v43;
    v62 = 0;
    v63 = 0;
    return sub_1001B7F58(&v52);
  }

  else
  {
    LOBYTE(v52) = 0;
    *&v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v42 + 1) = v11;
    LOBYTE(v52) = 1;
    v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40 = v12;
    LOBYTE(v52) = 2;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39 = v14;
    LOBYTE(v52) = 3;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = v16;
    v37 = a2;
    LOBYTE(v52) = 4;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v43 = v18;
    v64 = 5;
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v45 = 0;
    v20 = v19;
    v22 = v21;
    (*(v6 + 8))(v8, v5);
    v23 = v42;
    v46 = v42;
    v24 = *(&v42 + 1);
    *&v47 = v41;
    v25 = v40;
    *(&v47 + 1) = v40;
    *&v48 = v13;
    v36 = v13;
    v26 = v39;
    *(&v48 + 1) = v39;
    *&v49 = v15;
    v35 = v15;
    v27 = v38;
    *(&v49 + 1) = v38;
    *&v50 = v17;
    v28 = v17;
    v29 = v43;
    *(&v50 + 1) = v43;
    *&v51 = v20;
    *(&v51 + 1) = v22;
    sub_1001B7F88(&v46, &v52);
    sub_100003C3C(v44);
    v52 = v23;
    v53 = v24;
    v54 = v41;
    v55 = v25;
    v56 = v36;
    v57 = v26;
    v58 = v35;
    v59 = v27;
    v60 = v28;
    v61 = v29;
    v62 = v20;
    v63 = v22;
    result = sub_1001B7F58(&v52);
    v30 = v49;
    v31 = v37;
    v37[2] = v48;
    v31[3] = v30;
    v32 = v51;
    v31[4] = v50;
    v31[5] = v32;
    v33 = v47;
    *v31 = v46;
    v31[1] = v33;
  }

  return result;
}

unint64_t sub_1001B7CA0()
{
  result = qword_1004AB2E8;
  if (!qword_1004AB2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB2E8);
  }

  return result;
}

unint64_t sub_1001B7CF8()
{
  result = qword_1004AB2F0;
  if (!qword_1004AB2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB2F0);
  }

  return result;
}

__n128 sub_1001B7D4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1001B7D68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1001B7DC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1001B7E54()
{
  result = qword_1004AB2F8;
  if (!qword_1004AB2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB2F8);
  }

  return result;
}

unint64_t sub_1001B7EAC()
{
  result = qword_1004AB300;
  if (!qword_1004AB300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB300);
  }

  return result;
}

unint64_t sub_1001B7F04()
{
  result = qword_1004AB308;
  if (!qword_1004AB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB308);
  }

  return result;
}

uint64_t DInitPackageConfig.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DInitPackageConfig.url.setter(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DInitCryptexConfig.variant.getter()
{
  v1 = *(v0 + *(type metadata accessor for DInitCryptexConfig(0) + 20));

  return v1;
}

uint64_t type metadata accessor for DInitCryptexConfig(uint64_t a1)
{
  result = qword_1004AB3F0;
  if (!qword_1004AB3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DInitCryptexConfig.variant.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DInitCryptexConfig(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DInitCryptexConfig.size.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for DInitCryptexConfig(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t DInitCryptexConfig.sha256.getter()
{
  v1 = *(v0 + *(type metadata accessor for DInitCryptexConfig(0) + 28));

  return v1;
}

uint64_t DInitCryptexConfig.sha256.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DInitCryptexConfig(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DInitCryptexConfig.auth.setter(char a1)
{
  result = type metadata accessor for DInitCryptexConfig(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

double DInitCryptexConfig.dawToken.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DInitCryptexConfig(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return result;
}

uint64_t DInitCryptexConfig.dawToken.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for DInitCryptexConfig(0) + 36));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

double DInitCryptexConfig.oidcToken.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DInitCryptexConfig(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return result;
}

uint64_t DInitCryptexConfig.oidcToken.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for DInitCryptexConfig(0) + 40));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t DInitCryptexConfig.wgUsername.getter()
{
  v1 = *(v0 + *(type metadata accessor for DInitCryptexConfig(0) + 44));

  return v1;
}

uint64_t DInitCryptexConfig.wgUsername.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DInitCryptexConfig(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

double DInitCryptexConfig.wgToken.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DInitCryptexConfig(0) + 48));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return result;
}

uint64_t DInitCryptexConfig.wgToken.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for DInitCryptexConfig(0) + 48));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t DInitCryptexConfig.alternateCDNHost.getter()
{
  v1 = *(v0 + *(type metadata accessor for DInitCryptexConfig(0) + 52));

  return v1;
}

uint64_t DInitCryptexConfig.alternateCDNHost.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DInitCryptexConfig(0) + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DInitCryptexConfig.backgroundTrafficClass.setter(char a1)
{
  result = type metadata accessor for DInitCryptexConfig(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t DInitCryptexConfig.networkRetryCount.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for DInitCryptexConfig(0);
  v6 = v2 + *(result + 60);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t DInitCryptexConfig.appleConnect.setter(char a1)
{
  result = type metadata accessor for DInitCryptexConfig(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t DInitCryptexConfig.cacheable.setter(char a1)
{
  result = type metadata accessor for DInitCryptexConfig(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t DInitCryptexConfig.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for DInitCryptexConfig(0) + 72));

  return v1;
}

uint64_t DInitCryptexConfig.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DInitCryptexConfig(0) + 72));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DInitCryptexConfig.aeaDecryptionParams.getter()
{
  v1 = (v0 + *(type metadata accessor for DInitCryptexConfig(0) + 76));
  v2 = *v1;
  sub_1001B8BB0(*v1, v1[1], v1[2], v1[3]);
  return v2;
}

double sub_1001B8BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

void DInitCryptexConfig.aeaDecryptionParams.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + *(type metadata accessor for DInitCryptexConfig(0) + 76));
  sub_1001B8C54(*v9, v9[1], v9[2], v9[3]);
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
}

void sub_1001B8C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t DInitCryptexConfig.maxActiveTasks.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for DInitCryptexConfig(0);
  v6 = v2 + *(result + 80);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t DInitCryptexConfig.chunkSize.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for DInitCryptexConfig(0);
  v6 = v2 + *(result + 84);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t DInitCryptexConfig.originalKnoxUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DInitCryptexConfig(0) + 88);

  return sub_10001FB20(v3, a1);
}

uint64_t DInitCryptexConfig.originalKnoxUrl.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DInitCryptexConfig(0) + 88);

  return sub_100013EBC(a1, v3);
}

uint64_t DInitCryptexConfig.init(url:variant:size:sha256:auth:dawToken:oidcToken:wgUsername:wgToken:alternateCDNHost:backgroundTrafficClass:networkRetryCount:appleConnect:cacheable:identifier:aeaDecryptionParams:maxActiveTasks:chunkSize:originalKnoxUrl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, __int128 a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31)
{
  v34 = *a10;
  v33 = a10[1];
  v36 = *a11;
  v35 = a11[1];
  v37 = *a14;
  v38 = a14[1];
  v39 = type metadata accessor for URL();
  (*(*(v39 - 8) + 32))(a9, a1, v39);
  v40 = type metadata accessor for DInitCryptexConfig(0);
  v41 = (a9 + v40[5]);
  *v41 = a2;
  v41[1] = a3;
  v42 = a9 + v40[6];
  *v42 = a4;
  *(v42 + 8) = a5 & 1;
  v43 = (a9 + v40[7]);
  *v43 = a6;
  v43[1] = a7;
  *(a9 + v40[8]) = a8;
  v44 = (a9 + v40[9]);
  *v44 = v34;
  v44[1] = v33;
  v45 = (a9 + v40[10]);
  *v45 = v36;
  v45[1] = v35;
  v46 = (a9 + v40[11]);
  *v46 = a12;
  v46[1] = a13;
  v47 = (a9 + v40[12]);
  *v47 = v37;
  v47[1] = v38;
  v48 = (a9 + v40[13]);
  *v48 = a15;
  v48[1] = a16;
  *(a9 + v40[14]) = a17;
  v49 = a9 + v40[15];
  *v49 = a18;
  *(v49 + 8) = a19 & 1;
  *(a9 + v40[16]) = a20;
  *(a9 + v40[17]) = a21;
  v50 = (a9 + v40[18]);
  *v50 = a22;
  v50[1] = a23;
  v51 = a9 + v40[19];
  *(v51 + 16) = a25;
  *(v51 + 24) = a26;
  *v51 = a24;
  v52 = a9 + v40[20];
  *v52 = a27;
  *(v52 + 8) = a28 & 1;
  v53 = a9 + v40[21];
  *v53 = a29;
  *(v53 + 8) = a30 & 1;
  v54 = a9 + v40[22];

  return sub_10007AA3C(a31, v54);
}

unint64_t sub_1001B91C4(char a1)
{
  result = 7107189;
  switch(a1)
  {
    case 1:
      result = 0x746E6169726176;
      break;
    case 2:
      result = 1702521203;
      break;
    case 3:
      result = 0x363532616873;
      break;
    case 4:
      result = 1752462689;
      break;
    case 5:
      result = 0x656B6F745F776164;
      break;
    case 6:
      result = 0x6B6F745F6364696FLL;
      break;
    case 7:
      result = 0x6E726573755F6777;
      break;
    case 8:
      result = 0x6E656B6F745F6777;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x6F635F656C707061;
      break;
    case 13:
      result = 0x6C62616568636163;
      break;
    case 14:
      result = 0x696669746E656469;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0x69735F6B6E756863;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001B9444()
{
  v0 = DInitCryptexConfig.CodingKeys.stringValue.getter();
  v2 = v1;
  if (v0 == DInitCryptexConfig.CodingKeys.stringValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int sub_1001B94CC()
{
  Hasher.init(_seed:)();
  DInitCryptexConfig.CodingKeys.stringValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001B9530(uint64_t a1)
{
  DInitCryptexConfig.CodingKeys.stringValue.getter();
  String.hash(into:)();
}

Swift::Int sub_1001B9584()
{
  Hasher.init(_seed:)();
  DInitCryptexConfig.CodingKeys.stringValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001B95E4@<X0>(Swift::String *a1@<X0>, DarwinInit::DInitCryptexConfig::CodingKeys_optional *a2@<X8>)
{
  result = _s10DarwinInit18DInitCryptexConfigV10CodingKeysO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_1001B9614@<X0>(uint64_t *a1@<X8>)
{
  result = DInitCryptexConfig.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001B9648@<X0>(uint64_t a1@<X0>, DarwinInit::DInitCryptexConfig::CodingKeys_optional *a2@<X8>, uint64_t a3@<X1>)
{
  result = _s10DarwinInit18DInitCryptexConfigV10CodingKeysO8rawValueAESgSS_tcfC_0(a1, a3);
  a2->value = result;
  return result;
}

uint64_t sub_1001B967C(uint64_t a1)
{
  v2 = sub_1001BBA18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B96B8(uint64_t a1)
{
  v2 = sub_1001BBA18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DInitCryptexConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v3 - 8);
  v5 = v79 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v86 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000039E8(&qword_1004AB318, &qword_1003F65A8);
  v10 = *(v9 - 8);
  v87 = v9;
  v88 = v10;
  __chkstk_darwin(v9);
  v12 = v79 - v11;
  v13 = type metadata accessor for DInitCryptexConfig(0);
  v14 = __chkstk_darwin(v13);
  v16 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v16[v14[9]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v93 = v17;
  v18 = &v16[v14[10]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v92 = v18;
  v19 = &v16[v14[12]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v91 = v19;
  v20 = *(v7 + 56);
  v90 = v14[22];
  v95 = v16;
  v20(&v16[v90], 1, 1, v6);
  sub_10000E2A8(a1, a1[3]);
  sub_1001BBA18();
  v89 = v12;
  v21 = v94;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    v94 = v21;
    sub_100003C3C(a1);
    swift_bridgeObjectRelease_n();
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = v95;
LABEL_4:

    sub_1001B8C54(v25, v26, v27, v28);
    return sub_100013F2C(&v29[v90], &qword_1004A6D30, &unk_100376820);
  }

  v83 = v5;
  v84 = v13;
  LOBYTE(v96) = 0;
  v22 = sub_1001BC574(&qword_1004A90E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v24 = v86;
  v23 = v87;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v95;
  (*(v7 + 32))(v95, v24, v6);
  LOBYTE(v96) = 1;
  v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v81 = v6;
  v82 = a1;
  v33 = v88;
  v79[1] = v22;
  v34 = v84;
  v35 = &v31[v84[5]];
  *v35 = v32;
  v35[1] = v36;
  v79[2] = v36;
  LOBYTE(v96) = 2;
  v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v38 = &v31[v34[6]];
  *v38 = v37;
  v38[8] = v39 & 1;
  v100 = 3;
  sub_1001BBA6C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v40 = &v31[v34[7]];
  v41 = v97;
  *v40 = v96;
  v40[1] = v41;
  v100 = 4;
  sub_1001BBAC0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v79[0] = v41;
  v31[v34[8]] = v96;
  v100 = 5;
  sub_1001BBB14();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v94 = 0;
  v42 = v96;
  v43 = v97;
  v44 = v93;

  *v44 = v42;
  *(v44 + 1) = v43;
  v100 = 6;
  v45 = v94;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v45)
  {
    v94 = v45;
    (*(v33 + 8))(v89, v23);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v86 = 0;
    v80 = 0;
LABEL_5:
    sub_100003C3C(v82);
    v29 = v95;
    (*(v7 + 8))(v95, v81);

    goto LABEL_4;
  }

  v46 = v96;
  v47 = v97;
  v48 = v92;

  *v48 = v46;
  *(v48 + 1) = v47;
  LOBYTE(v96) = 7;
  v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v50 = &v95[v34[11]];
  *v50 = v49;
  v50[1] = v51;
  v80 = v51;
  v100 = 8;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v94 = 0;
  v53 = v96;
  v52 = v97;
  v54 = v91;

  *v54 = v53;
  *(v54 + 1) = v52;
  LOBYTE(v96) = 9;
  v55 = v94;
  v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v86 = v57;
  v94 = v55;
  if (v55)
  {
    (*(v88 + 8))(v89, v87);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v86 = 0;
    goto LABEL_5;
  }

  v58 = &v95[v84[13]];
  v59 = v86;
  *v58 = v56;
  v58[1] = v59;
  LOBYTE(v96) = 10;
  v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v94 = 0;
  v95[v84[14]] = v60;
  LOBYTE(v96) = 11;
  v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v94 = 0;
  v62 = &v95[v84[15]];
  *v62 = v61;
  v62[8] = v63 & 1;
  LOBYTE(v96) = 12;
  v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v94 = 0;
  v95[v84[16]] = v64;
  LOBYTE(v96) = 13;
  v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v94 = 0;
  v95[v84[17]] = v65;
  LOBYTE(v96) = 14;
  v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v94 = 0;
  v67 = &v95[v84[18]];
  *v67 = v66;
  v67[1] = v68;
  v100 = 15;
  sub_1001BBB68();
  v69 = v94;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v94 = v69;
  if (v69)
  {
    (*(v88 + 8))(v89, v87);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    goto LABEL_5;
  }

  v25 = v96;
  v70 = &v95[v84[19]];
  v26 = v97;
  v27 = v98;
  v28 = v99;
  *v70 = v96;
  v70[1] = v26;
  v70[2] = v27;
  v70[3] = v28;
  LOBYTE(v96) = 16;
  v71 = v94;
  v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v94 = v71;
  if (v71)
  {
    (*(v88 + 8))(v89, v87);
    goto LABEL_5;
  }

  v74 = &v95[v84[20]];
  *v74 = v72;
  v74[8] = v73 & 1;
  LOBYTE(v96) = 17;
  v75 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v94 = 0;
  v76 = &v95[v84[21]];
  *v76 = v75;
  v76[8] = v77 & 1;
  LOBYTE(v96) = 18;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v94 = 0;
  (*(v88 + 8))(v89, v87);
  v78 = v95;
  sub_100013EBC(v83, &v95[v90]);
  sub_1001BBBBC(v78, v85);
  sub_100003C3C(v82);
  return sub_1001BBC20(v78);
}

uint64_t DInitCryptexConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004AB348, &qword_1003F65B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1001BBA18();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v21) = 0;
  type metadata accessor for URL();
  sub_1001BC574(&qword_1004A9058, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for DInitCryptexConfig(0);
    LOBYTE(v21) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v21) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + v9[7]);
    v23 = 3;
    sub_1001BBC7C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v21) = *(v3 + v9[8]);
    v23 = 4;
    sub_1001BBCD0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = (v3 + v9[9]);
    v11 = v10[1];
    *&v21 = *v10;
    *(&v21 + 1) = v11;
    v23 = 5;
    v12 = sub_1001BBD24();

    v20[1] = v12;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    v13 = (v3 + v9[10]);
    v14 = v13[1];
    *&v21 = *v13;
    *(&v21 + 1) = v14;
    v23 = 6;

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    LOBYTE(v21) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = (v3 + v9[12]);
    v17 = v16[1];
    *&v21 = *v16;
    *(&v21 + 1) = v17;
    v23 = 8;

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    LOBYTE(v21) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v21) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v21) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v21) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v21) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v21) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = (v3 + v9[19]);
    v19 = v18[1];
    v21 = *v18;
    v22 = v19;
    v23 = 15;
    sub_1001BBD78();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v21) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v21) = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v21) = 18;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void DInitCryptexConfig.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v7 - 8);
  v28 = v27 - v8;
  v27[2] = sub_1001BC574(&qword_1004AB370, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v9 = type metadata accessor for DInitCryptexConfig(0);
  if (*(v1 + v9[5] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v10 = v1 + v9[6];
  if (*(v10 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v11 = *v10;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v11);
  }

  if (*(v1 + v9[7] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v12 = *(v1 + v9[8]);
  if (v12 == 4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  if (*(v1 + v9[9] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + v9[10] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + v9[11] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + v9[12] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + v9[13] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v13 = *(v1 + v9[14]);
  if (v13 == 2)
  {
    v14 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v14 = v13 & 1;
  }

  Hasher._combine(_:)(v14);
  v15 = v1 + v9[15];
  if (*(v15 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v16 = *v15;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v16);
  }

  v17 = *(v1 + v9[16]);
  if (v17 == 2)
  {
    v18 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v18 = v17 & 1;
  }

  Hasher._combine(_:)(v18);
  v19 = *(v1 + v9[17]);
  if (v19 == 2)
  {
    v20 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v20 = v19 & 1;
  }

  Hasher._combine(_:)(v20);
  if (*(v1 + v9[18] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v21 = v1 + v9[19];
  if (*(v21 + 8))
  {
    v27[1] = *(v21 + 24);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v22 = v1 + v9[20];
  if (*(v22 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v23 = *v22;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v23);
  }

  v24 = v1 + v9[21];
  if (*(v24 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v25 = *v24;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v25);
  }

  v26 = v28;
  sub_10001FB20(v2 + v9[22], v28);
  if ((*(v4 + 48))(v26, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v26, v3);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }
}

Swift::Int DInitCryptexConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  DInitCryptexConfig.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001BAEA8()
{
  Hasher.init(_seed:)();
  DInitCryptexConfig.hash(into:)(v1);
  return Hasher._finalize()();
}

BOOL _s10DarwinInit18DInitCryptexConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v144[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v8 - 8);
  v10 = &v144[-v9];
  v11 = sub_1000039E8(&qword_1004AB4A0, &qword_1003F6880);
  __chkstk_darwin(v11);
  v13 = &v144[-v12];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for DInitCryptexConfig(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }

    v20 = *v16 == *v18 && v17 == v19;
    if (!v20)
    {
      v21 = v14;
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v21;
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  v23 = v14[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 8);
  if (v25)
  {
    if (!v27)
    {
      return v27;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v28 = v14[7];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (!v32)
    {
      return 0;
    }

    if (*v29 != *v31 || v30 != v32)
    {
      v33 = v14;
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v33;
      if ((v34 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v32)
  {
    return 0;
  }

  v35 = v14[8];
  v36 = *(a1 + v35);
  v37 = *(a2 + v35);
  if (v36 == 4)
  {
    if (v37 != 4)
    {
      return 0;
    }
  }

  else
  {
    if (v37 == 4)
    {
      return 0;
    }

    v38 = 0x7573746174;
    if (v36 > 1)
    {
      if (v36 == 2)
      {
        v39 = 0xE700000000000000;
        v40 = 0x79726F74636166;
      }

      else
      {
        v39 = 0xE400000000000000;
        v40 = 1701736302;
      }
    }

    else if (v36)
    {
      v39 = 0xE600000000000000;
      v40 = 0x6F6C76616964;
    }

    else
    {
      v39 = 0xE500000000000000;
      v40 = 0x7573746174;
    }

    if (v37 > 1)
    {
      if (v37 == 2)
      {
        v41 = 0xE700000000000000;
        v38 = 0x79726F74636166;
      }

      else
      {
        v41 = 0xE400000000000000;
        v38 = 1701736302;
      }
    }

    else if (v37)
    {
      v41 = 0xE600000000000000;
      v38 = 0x6F6C76616964;
    }

    else
    {
      v41 = 0xE500000000000000;
    }

    v153 = v14;
    if (v40 == v38 && v39 == v41)
    {

      v14 = v153;
    }

    else
    {
      LODWORD(v152) = _stringCompareWithSmolCheck(_:_:expecting:)();

      v14 = v153;
      if ((v152 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v42 = v14[9];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = v45[1];
  if (v44)
  {
    if (!v46)
    {
      goto LABEL_76;
    }

    if (*v43 != *v45 || v44 != v46)
    {
      v47 = v14;
      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v47;
      if ((v48 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v46)
    {
      goto LABEL_76;
    }

    v49 = v14;

    v14 = v49;
  }

  v50 = v14[10];
  v51 = (a1 + v50);
  v52 = *(a1 + v50 + 8);
  v53 = (a2 + v50);
  v54 = v53[1];
  if (v52)
  {
    if (!v54)
    {
      goto LABEL_76;
    }

    if (*v51 != *v53 || v52 != v54)
    {
      v55 = v14;
      v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v55;
      if ((v56 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v54)
    {
      goto LABEL_76;
    }

    v57 = v14;

    v14 = v57;
  }

  v58 = v14[11];
  v59 = (a1 + v58);
  v60 = *(a1 + v58 + 8);
  v61 = (a2 + v58);
  v62 = v61[1];
  if (v60)
  {
    if (!v62)
    {
      return 0;
    }

    if (*v59 != *v61 || v60 != v62)
    {
      v63 = v14;
      v64 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v63;
      if ((v64 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v62)
  {
    return 0;
  }

  v65 = v14[12];
  v66 = (a1 + v65);
  v67 = *(a1 + v65 + 8);
  v68 = (a2 + v65);
  v69 = v68[1];
  if (!v67)
  {
    if (!v69)
    {
      v73 = v14;

      v14 = v73;
      goto LABEL_81;
    }

LABEL_76:

    return 0;
  }

  if (!v69)
  {
    goto LABEL_76;
  }

  if (*v66 != *v68 || v67 != v69)
  {
    v70 = v14;
    v71 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v14 = v70;
    if ((v71 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_81:
  v74 = v14[13];
  v75 = (a1 + v74);
  v76 = *(a1 + v74 + 8);
  v77 = (a2 + v74);
  v78 = v77[1];
  if (v76)
  {
    if (!v78)
    {
      return 0;
    }

    if (*v75 != *v77 || v76 != v78)
    {
      v79 = v14;
      v80 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v79;
      if ((v80 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v78)
  {
    return 0;
  }

  v81 = v14[14];
  v82 = *(a1 + v81);
  v83 = *(a2 + v81);
  if (v82 == 2)
  {
    if (v83 != 2)
    {
      return 0;
    }
  }

  else
  {
    v27 = 0;
    if (v83 == 2 || ((v83 ^ v82) & 1) != 0)
    {
      return v27;
    }
  }

  v84 = v14[15];
  v85 = (a1 + v84);
  v86 = *(a1 + v84 + 8);
  v87 = (a2 + v84);
  v27 = *(a2 + v84 + 8);
  if (v86)
  {
    if (!v27)
    {
      return v27;
    }
  }

  else
  {
    if (*v85 != *v87)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v88 = v14;
  v89 = v14[16];
  v90 = *(a1 + v89);
  v91 = *(a2 + v89);
  if (v90 == 2)
  {
    v20 = v91 == 2;
    v92 = v14;
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    v27 = 0;
    if (v91 == 2)
    {
      return v27;
    }

    v93 = v91 ^ v90;
    v92 = v14;
    if (v93)
    {
      return v27;
    }
  }

  v94 = v92[17];
  v95 = *(a1 + v94);
  v96 = *(a2 + v94);
  if (v95 == 2)
  {
    v20 = v96 == 2;
    v97 = v14;
    if (!v20)
    {
      return 0;
    }

LABEL_111:
    v99 = v97[18];
    v100 = (a1 + v99);
    v101 = *(a1 + v99 + 8);
    v102 = (a2 + v99);
    v103 = v102[1];
    if (v101)
    {
      if (!v103 || (*v100 != *v102 || v101 != v103) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v103)
    {
      return 0;
    }

    v104 = v88[19];
    v105 = *(a1 + v104);
    v152 = *(a1 + v104 + 8);
    v153 = v105;
    v106 = *(a1 + v104 + 16);
    v150 = *(a1 + v104 + 24);
    v151 = v106;
    v107 = (a2 + v104);
    v108 = *v107;
    v109 = v107[1];
    v111 = v107[2];
    v110 = v107[3];
    v147 = v111;
    v148 = v110;
    v149 = v108;
    if (v152)
    {
      if (v109)
      {
        if (v153 == v149 && v152 == v109 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v146 = v109;
          if (v151 == v147 && v150 == v148)
          {
            v112 = v109;
            v113 = v151;
            sub_1001B8BB0(v149, v112, v151, v150);
            v114 = v113;
            v115 = v150;
            sub_1001B8BB0(v153, v152, v114, v150);

            sub_1001B8C54(v153, v152, v151, v115);
          }

          else
          {
            v145 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_1001B8BB0(v149, v109, v147, v148);
            sub_1001B8BB0(v153, v152, v151, v150);

            sub_1001B8C54(v153, v152, v151, v150);
            if ((v145 & 1) == 0)
            {
              return 0;
            }
          }

          goto LABEL_130;
        }

        sub_1001B8BB0(v149, v109, v147, v148);
        v135 = v152;
        v136 = v153;
        v137 = v150;
        v138 = v151;
        sub_1001B8BB0(v153, v152, v151, v150);

        v123 = v136;
        v124 = v135;
        v125 = v138;
        v126 = v137;
LABEL_128:
        sub_1001B8C54(v123, v124, v125, v126);
        return 0;
      }
    }

    else if (!v109)
    {
LABEL_130:
      v127 = v88[20];
      v128 = (a1 + v127);
      v129 = *(a1 + v127 + 8);
      v130 = (a2 + v127);
      v27 = *(a2 + v127 + 8);
      if (v129)
      {
        if (!v27)
        {
          return v27;
        }
      }

      else
      {
        if (*v128 != *v130)
        {
          LOBYTE(v27) = 1;
        }

        if (v27)
        {
          return 0;
        }
      }

      v131 = v88[21];
      v132 = (a1 + v131);
      v133 = *(a1 + v131 + 8);
      v134 = (a2 + v131);
      v27 = *(a2 + v131 + 8);
      if (v133)
      {
        if (!v27)
        {
          return v27;
        }
      }

      else
      {
        if (*v132 != *v134)
        {
          LOBYTE(v27) = 1;
        }

        if (v27)
        {
          return 0;
        }
      }

      v139 = v88[22];
      v140 = *(v11 + 48);
      sub_10001FB20(a1 + v139, v13);
      sub_10001FB20(a2 + v139, &v13[v140]);
      v141 = *(v5 + 48);
      if (v141(v13, 1, v4) == 1)
      {
        if (v141(&v13[v140], 1, v4) == 1)
        {
          sub_100013F2C(v13, &qword_1004A6D30, &unk_100376820);
          return 1;
        }

        goto LABEL_148;
      }

      sub_10001FB20(v13, v10);
      if (v141(&v13[v140], 1, v4) == 1)
      {
        (*(v5 + 8))(v10, v4);
LABEL_148:
        sub_100013F2C(v13, &qword_1004AB4A0, &qword_1003F6880);
        return 0;
      }

      (*(v5 + 32))(v7, &v13[v140], v4);
      sub_1001BC574(qword_1004AB4A8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v142 = dispatch thunk of static Equatable.== infix(_:_:)();
      v143 = *(v5 + 8);
      v143(v7, v4);
      v143(v10, v4);
      sub_100013F2C(v13, &qword_1004A6D30, &unk_100376820);
      return (v142 & 1) != 0;
    }

    v116 = v148;
    v117 = v149;
    v118 = v147;
    sub_1001B8BB0(v149, v109, v147, v148);
    v119 = v152;
    v120 = v153;
    v121 = v150;
    v122 = v151;
    sub_1001B8BB0(v153, v152, v151, v150);
    sub_1001B8C54(v120, v119, v122, v121);
    v123 = v117;
    v124 = v109;
    v125 = v118;
    v126 = v116;
    goto LABEL_128;
  }

  v27 = 0;
  if (v96 != 2)
  {
    v98 = v96 ^ v95;
    v97 = v14;
    if ((v98 & 1) == 0)
    {
      goto LABEL_111;
    }
  }

  return v27;
}

unint64_t _s10DarwinInit18DInitCryptexConfigV10CodingKeysO8rawValueAESgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1001BBA18()
{
  result = qword_1004AB320;
  if (!qword_1004AB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB320);
  }

  return result;
}

unint64_t sub_1001BBA6C()
{
  result = qword_1004AB328;
  if (!qword_1004AB328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB328);
  }

  return result;
}

unint64_t sub_1001BBAC0()
{
  result = qword_1004AB330;
  if (!qword_1004AB330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB330);
  }

  return result;
}

unint64_t sub_1001BBB14()
{
  result = qword_1004AB338;
  if (!qword_1004AB338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB338);
  }

  return result;
}

unint64_t sub_1001BBB68()
{
  result = qword_1004AB340;
  if (!qword_1004AB340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB340);
  }

  return result;
}

uint64_t sub_1001BBBBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DInitCryptexConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BBC20(uint64_t a1)
{
  v2 = type metadata accessor for DInitCryptexConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001BBC7C()
{
  result = qword_1004AB350;
  if (!qword_1004AB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB350);
  }

  return result;
}

unint64_t sub_1001BBCD0()
{
  result = qword_1004AB358;
  if (!qword_1004AB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB358);
  }

  return result;
}

unint64_t sub_1001BBD24()
{
  result = qword_1004AB360;
  if (!qword_1004AB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB360);
  }

  return result;
}

unint64_t sub_1001BBD78()
{
  result = qword_1004AB368;
  if (!qword_1004AB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB368);
  }

  return result;
}

unint64_t sub_1001BBDD0()
{
  result = qword_1004AB378;
  if (!qword_1004AB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB378);
  }

  return result;
}

unint64_t sub_1001BBE28()
{
  result = qword_1004AB380;
  if (!qword_1004AB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB380);
  }

  return result;
}

unint64_t sub_1001BBE80()
{
  result = qword_1004AB388;
  if (!qword_1004AB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB388);
  }

  return result;
}

uint64_t sub_1001BBF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 88);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1001BC084(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 88);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1001BC1B8(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_1001BC3D8(319, &qword_1004AA318, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_1001BC3D8(319, &qword_1004AA320, &type metadata for Int);
      if (v3 <= 0x3F)
      {
        sub_1001BC3D8(319, &qword_1004AB400, &type metadata for DInitSHA256Digest);
        if (v4 <= 0x3F)
        {
          sub_1001BC3D8(319, &qword_1004AB408, &type metadata for DInitAuthorizationService);
          if (v5 <= 0x3F)
          {
            sub_1001BC3D8(319, &qword_1004AB410, &type metadata for CredentialString);
            if (v6 <= 0x3F)
            {
              sub_1001BC3D8(319, &qword_1004AB418, &type metadata for Bool);
              if (v7 <= 0x3F)
              {
                sub_1001BC3D8(319, &qword_1004AB420, &type metadata for UInt);
                if (v8 <= 0x3F)
                {
                  sub_1001BC3D8(319, &unk_1004AB428, &type metadata for DInitAEADecryptionParams);
                  if (v9 <= 0x3F)
                  {
                    sub_1001BC3D8(319, &unk_1004AA328, &type metadata for UInt64);
                    if (v10 <= 0x3F)
                    {
                      sub_10001F778(319);
                      if (v11 <= 0x3F)
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

void sub_1001BC3D8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for DInitCryptexConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DInitCryptexConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001BC574(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FilePath.exists()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v26 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000270B4(v10, qword_1004B00F8);
  v25 = *(v5 + 16);
  v25(v9, v0, v4);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = v0;
    v14 = v13;
    v22 = swift_slowAlloc();
    v29 = v22;
    *v14 = 136315138;
    sub_100190550();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v1;
    v17 = v16;
    (*(v5 + 8))(v9, v4);
    v18 = sub_1000026C0(v15, v17, &v29);
    v2 = v24;

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Checking if item exists at %s", v14, 0xCu);
    sub_100003C3C(v22);

    v3 = v23;
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  v19 = v26;
  v25(v26, v3, v4);
  sub_1002EC1CC(v19, v28);
  if (v2)
  {
    v29 = v2;
    swift_errorRetain();
    sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
    if ((swift_dynamicCast() & 1) != 0 && v27 == 2)
    {
    }
  }

  return v2 == 0;
}

BOOL sub_1001BC960(const char *a1, unsigned __int16 (*a2)(void), ...)
{
  v31 = a1;
  v5 = v3;
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v33 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000270B4(v12, qword_1004B00F8);
  v13 = *(v7 + 16);
  v34 = v2;
  v32 = v13;
  v13(v11, v2, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v3;
    v17 = v16;
    v28 = swift_slowAlloc();
    v37 = v28;
    *v17 = 136315138;
    sub_100190550();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = a2;
    v20 = v19;
    (*(v7 + 8))(v11, v6);
    v21 = sub_1000026C0(v18, v20, &v37);
    a2 = v30;

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, v31, v17, 0xCu);
    sub_100003C3C(v28);

    v5 = v29;
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  v22 = v33;
  v32(v33, v34, v6);
  sub_1002EC1CC(v22, &v36);
  if (v5)
  {
    v37 = v5;
    swift_errorRetain();
    sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
    if (swift_dynamicCast())
    {
      v23 = v35;
      if (v35 == 2)
      {

        return 0;
      }
    }
  }

  else
  {
    st_mode = v36.st_mode;
    v25 = S_IFMT.getter() & st_mode;
    return v25 == a2();
  }

  return v23;
}

Swift::Bool __swiftcall FilePath.exists(withTimeout:)(Swift::Int withTimeout)
{
  v2 = v1;
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v62 - v10;
  v12 = __chkstk_darwin(v9);
  v70 = &v62 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v62 - v15;
  __chkstk_darwin(v14);
  v18 = &v62 - v17;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_1000270B4(v19, qword_1004B00F8);
  v21 = *(v5 + 16);
  v68 = v5 + 16;
  v73 = v21;
  v21(v18, v2, v4);
  v71 = v20;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v24 = os_log_type_enabled(v22, v23);
  v67 = v2;
  v65 = v5;
  v63 = v8;
  v62 = v11;
  if (v24)
  {
    v25 = swift_slowAlloc();
    *&v75.st_dev = swift_slowAlloc();
    v26 = *&v75.st_dev;
    *v25 = 136315394;
    sub_100190550();
    v27 = v23;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v72 = *(v65 + 8);
    v72(v18, v4);
    v31 = sub_1000026C0(v28, v30, &v75.st_dev);
    v2 = v67;

    *(v25 + 4) = v31;
    *(v25 + 12) = 2048;
    *(v25 + 14) = withTimeout;
    _os_log_impl(&_mh_execute_header, v22, v27, "Checking if item exists at %s with timeout %ld seconds", v25, 0x16u);
    sub_100003C3C(v26);
  }

  else
  {

    v72 = *(v5 + 8);
    result = (v72)(v18, v4);
  }

  if (withTimeout < 0)
  {
    __break(1u);
  }

  else
  {
    v64 = withTimeout;
    if (withTimeout)
    {
      v69 = v65 + 8;
      *&v33 = 136315138;
      v66 = v33;
      v73(v16, v2, v4);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v74[0] = v37;
        *v36 = v66;
        sub_100190550();
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v40 = v39;
        v72(v16, v4);
        v41 = sub_1000026C0(v38, v40, v74);

        *(v36 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v34, v35, "Checking if item exists at %s", v36, 0xCu);
        sub_100003C3C(v37);

        v2 = v67;
      }

      else
      {

        v72(v16, v4);
      }

      v42 = v70;
      v73(v70, v2, v4);
      sub_1002EC1CC(v42, &v75);
      v52 = v62;
      v73(v62, v2, v4);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v74[0] = v57;
        *v56 = v66;
        sub_100190550();
        v58 = dispatch thunk of CustomStringConvertible.description.getter();
        v60 = v59;
        v72(v52, v4);
        v61 = sub_1000026C0(v58, v60, v74);

        *(v56 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v53, v54, "Item at %s exists", v56, 0xCu);
        sub_100003C3C(v57);
      }

      else
      {

        v72(v52, v4);
      }

      return 1;
    }

    else
    {
      v43 = v63;
      v73(v63, v2, v4);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v74[0] = v47;
        *v46 = 136315394;
        sub_100190550();
        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        v50 = v49;
        v72(v43, v4);
        v51 = sub_1000026C0(v48, v50, v74);

        *(v46 + 4) = v51;
        *(v46 + 12) = 2048;
        *(v46 + 14) = v64;
        _os_log_impl(&_mh_execute_header, v44, v45, "Item at %s did not show up after %ld seconds", v46, 0x16u);
        sub_100003C3C(v47);
      }

      else
      {

        v72(v43, v4);
      }

      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCPreferencesRef.computerName(_:)(Swift::String a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = SCPreferencesSetComputerName(v1, v2, 0x8000100u);

  if (!v3)
  {
    v4 = SCError();
    if (qword_1004A9E28 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000270B4(v5, static SCPreferencesRef.logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      sub_100189C58();
      swift_allocError();
      *v10 = "computerName(_:)";
      *(v10 + 8) = 16;
      *(v10 + 16) = 2;
      *(v10 + 20) = v4;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unable to set ComputerName: %@", v8, 0xCu);
      sub_10019AC78(v9);
    }

    sub_100189C58();
    swift_allocError();
    *v12 = "computerName(_:)";
    *(v12 + 8) = 16;
    *(v12 + 16) = 2;
    *(v12 + 20) = v4;
    swift_willThrow();
  }
}

uint64_t SCPreferencesRef.withLock<A>(lockRetryLimit:_:body:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 48) = v15;
  *(v9 + 56) = v8;
  *(v9 + 32) = a7;
  *(v9 + 40) = a8;
  *(v9 + 176) = a3;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 64) = swift_getObjectType();
  v10 = type metadata accessor for DispatchWorkItemFlags();
  *(v9 + 72) = v10;
  *(v9 + 80) = *(v10 - 8);
  *(v9 + 88) = swift_task_alloc();
  v11 = type metadata accessor for DispatchQoS();
  *(v9 + 96) = v11;
  *(v9 + 104) = *(v11 - 8);
  *(v9 + 112) = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  *(v9 + 120) = v12;
  *(v9 + 128) = *(v12 - 8);
  *(v9 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_1001BD92C, 0, 0);
}

uint64_t sub_1001BD92C()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 176);
  v8 = *(v0 + 24);
  v17 = *(v0 + 32);
  v18 = *(v0 + 64);
  sub_10000E014();
  (*(v2 + 104))(v1, enum case for DispatchQoS.QoSClass.default(_:), v3);
  *(v0 + 144) = static OS_dispatch_queue.global(qos:)();
  (*(v2 + 8))(v1, v3);
  v9 = swift_allocObject();
  *(v0 + 152) = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  *(v9 + 32) = v8;
  *(v9 + 40) = v7 & 1;
  *(v9 + 48) = v17;
  *(v9 + 56) = v6;
  *(v9 + 64) = v18;
  v10 = v4;

  default argument 1 of OS_dispatch_queue.async<A>(group:qos:flags:execute:)(v5);
  default argument 2 of OS_dispatch_queue.async<A>(group:qos:flags:execute:)();
  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  *v11 = v0;
  v11[1] = sub_1001BDAE8;
  v12 = *(v0 + 112);
  v13 = *(v0 + 88);
  v14 = *(v0 + 48);
  v15 = *(v0 + 16);

  return OS_dispatch_queue.async<A>(group:qos:flags:execute:)(v15, 0, v12, v13, sub_1001BE9D0, v9, v14);
}

uint64_t sub_1001BDAE8()
{
  v2 = *(*v1 + 144);
  v11 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v10 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 168) = v0;

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v11, v10);
  if (v0)
  {

    return _swift_task_switch(sub_1001BDD58, 0, 0);
  }

  else
  {

    v8 = *(v7 + 8);

    return v8();
  }
}

uint64_t sub_1001BDD58()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001BDE54(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, NSString), uint64_t a4, uint64_t a5, const char *a6, ...)
{
  v11 = String._bridgeToObjectiveC()();
  v12 = a3(v6, v11);

  if (!v12)
  {
    v13 = SCError();
    if (qword_1004A9E28 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000270B4(v14, static SCPreferencesRef.logger);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      sub_100189C58();
      swift_allocError();
      *v19 = a4;
      *(v19 + 8) = a5;
      *(v19 + 16) = 2;
      *(v19 + 20) = v13;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, a6, v17, 0xCu);
      sub_10019AC78(v18);
    }

    sub_100189C58();
    swift_allocError();
    *v21 = a4;
    *(v21 + 8) = a5;
    *(v21 + 16) = 2;
    *(v21 + 20) = v13;
    swift_willThrow();
  }
}

uint64_t sub_1001BE01C()
{
  v0 = type metadata accessor for Logger();
  sub_1000279B4(v0, static SCPreferencesRef.logger);
  sub_1000270B4(v0, static SCPreferencesRef.logger);
  return Logger.init(subsystem:category:)();
}

uint64_t SCPreferencesRef.logger.unsafeMutableAddressor()
{
  if (qword_1004A9E28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000270B4(v0, static SCPreferencesRef.logger);
}

uint64_t static SCPreferencesRef.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9E28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000270B4(v2, static SCPreferencesRef.logger);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1001BE1F4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, const char *a4, ...)
{
  result = a1(v4);
  if (!result)
  {
    v9 = SCError();
    if (qword_1004A9E28 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000270B4(v10, static SCPreferencesRef.logger);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      sub_100189C58();
      swift_allocError();
      *v15 = a2;
      *(v15 + 8) = a3;
      *(v15 + 16) = 2;
      *(v15 + 20) = v9;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, a4, v13, 0xCu);
      sub_10019AC78(v14);
    }

    sub_100189C58();
    swift_allocError();
    *v17 = a2;
    *(v17 + 8) = a3;
    *(v17 + 16) = 2;
    *(v17 + 20) = v9;
    return swift_willThrow();
  }

  return result;
}

void sub_1001BE3A8(const __SCPreferences *a1, uint64_t a2, char a3, void (*a4)(const __SCPreferences *))
{
  if (!SCPreferencesLock(a1, 1u))
  {
    v8 = 0;
    v24 = a4;
    v22 = a2;
    while (2)
    {
      v23 = v8;
      while (1)
      {
        v9 = SCError();
        if (qword_1004A9E28 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_1000270B4(v10, static SCPreferencesRef.logger);
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v13 = 138412290;
          sub_100189C58();
          swift_allocError();
          *v15 = "lock()";
          *(v15 + 8) = 6;
          *(v15 + 16) = 2;
          *(v15 + 20) = v9;
          v16 = _swift_stdlib_bridgeErrorToNSError();
          *(v13 + 4) = v16;
          *v14 = v16;
          _os_log_impl(&_mh_execute_header, v11, v12, "Unable to lock SCPreferences: %@", v13, 0xCu);
          sub_10019AC78(v14);
        }

        sub_100189C58();
        swift_allocError();
        *v17 = "lock()";
        *(v17 + 8) = 6;
        *(v17 + 16) = 2;
        *(v17 + 20) = v9;
        swift_willThrow();
        swift_errorRetain();
        sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
        if ((swift_dynamicCast() & 1) == 0 || v28 != 3005)
        {
          goto LABEL_22;
        }

        if ((a3 & 1) == 0)
        {
          break;
        }

        if (SCPreferencesLock(a1, 1u))
        {
          v24(a1);
          goto LABEL_3;
        }
      }

      if (v22 > 0)
      {
        swift_allocError();
        *v21 = v25;
        *(v21 + 8) = v26;
        *(v21 + 16) = v27;
        *(v21 + 20) = 3005;
        swift_willThrow();
LABEL_22:

        return;
      }

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      a4 = v24;
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Synchronizing and trying to lock again.", v20, 2u);
      }

      SCPreferencesSynchronize(a1);
      v8 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        return;
      }

      if (!SCPreferencesLock(a1, 1u))
      {
        continue;
      }

      break;
    }
  }

  a4(a1);
LABEL_3:
  sub_1001BE1F4(&SCPreferencesUnlock, "unlock()", 8, "Unable to unlock SCPreferences: %@");
}

SCPreferencesRef sub_1001BE7C0()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = SCPreferencesCreate(0, v0, 0);

  if (!v1)
  {
    v2 = SCError();
    if (qword_1004A9E28 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000270B4(v3, static SCPreferencesRef.logger);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      sub_100189C58();
      swift_allocError();
      *v8 = "create(_:)";
      *(v8 + 8) = 10;
      *(v8 + 16) = 2;
      *(v8 + 20) = v2;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&_mh_execute_header, v4, v5, "Unable to create SCPreferences: %@", v6, 0xCu);
      sub_10019AC78(v7);
    }

    sub_100189C58();
    swift_allocError();
    *v10 = "create(_:)";
    *(v10 + 8) = 10;
    *(v10 + 16) = 2;
    *(v10 + 20) = v2;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1001BE990()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1001BEAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PathCoded(0, *(a3 + a4 - 24), *(a3 + a4 - 16), *(a3 + a4 - 8));
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return PathCoded.projectedValue.setter(v7, v5);
}

uint64_t PathCoded.projectedValue.setter(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 - 8);
  (*(v7 + 8))(v2);
  v5 = *(v7 + 32);

  return v5(v2, a1, a2);
}

void (*PathCoded.projectedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v3 = v2;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v3;
  v8 = *(a2 - 8);
  v9 = v8;
  v6[2] = v8;
  v6[3] = v8;
  v10 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v8 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  (*(v9 + 16))();
  return sub_1001BED7C;
}

void sub_1001BED7C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 32), v4, *v2);
    (*(v5 + 8))(v7, v8);
    (*(v5 + 32))(v7, v3, v8);
    (*(v6 + 8))(v4, v8);
  }

  else
  {
    v9 = v2[1];
    v10 = *v2;
    v11 = v2[2];
    (*(v11 + 8))(v9, *v2);
    (*(v11 + 32))(v9, v4, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t PathCoded.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v8 = type metadata accessor for PathCoded(0, a2, a3, a4);
  result = (*(*(a2 - 8) + 32))(&a5[*(v8 + 44)], a1, a2);
  *a5 = _swiftEmptyArrayStorage;
  return result;
}

uint64_t PathCoded.init(wrappedValue:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v10 = type metadata accessor for PathCoded(0, a3, a4, a5);
  result = (*(*(a3 - 8) + 32))(&a6[*(v10 + 44)], a1, a3);
  *a6 = a2;
  return result;
}

uint64_t PathCoded.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v20 = *(a2 - 8);
  __chkstk_darwin(a1);
  v24 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  v10 = type metadata accessor for PathCoded(0, v8, v7, v9);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v18 - v12);
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v3)
  {
    return sub_100003C3C(a1);
  }

  v18 = v10;
  v19 = v11;
  sub_10000E2A8(a1, a1[3]);
  *v13 = dispatch thunk of Decoder.codingPath.getter();
  sub_10000E2A8(v23, v23[3]);
  v15 = v24;
  dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
  v16 = v18;
  (*(v20 + 32))(v13 + *(v18 + 44), v15, a2);
  sub_100003C3C(v23);
  v17 = v19;
  (*(v19 + 16))(v21, v13, v16);
  sub_100003C3C(a1);
  return (*(v17 + 8))(v13, v16);
}

uint64_t PathCoded.encode(to:)(void *a1, uint64_t a2)
{
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100003BEC(v3, v3[3]);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return sub_100003C3C(v3);
}

DarwinInit::JSONPointer PathCoded.jsonPointer.getter()
{

  return JSONPointer.init(codingKeys:)(v0);
}

double PathCoded.makeOptional()@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - v8;
  v10 = *(v5 - 8);
  (*(v10 + 16))(v16 - v8, &v2[*(a1 + 44)], v5);
  (*(v10 + 56))(v9, 0, 1, v5);
  v11 = *v2;
  v16[1] = *(a1 + 24);
  WitnessTable = swift_getWitnessTable();
  v16[0] = *(a1 + 32);
  v13 = swift_getWitnessTable();
  v14 = type metadata accessor for PathCoded(0, v6, WitnessTable, v13);
  (*(v7 + 32))(&a2[*(v14 + 44)], v9, v6);
  *a2 = v11;

  return result;
}

Swift::Int PathCoded<>.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001BF67C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  PathCoded<>.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t PathCoded.debugDescription.getter(uint64_t a1)
{
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v1._countAndFlagsBits = 0x2074615B20;
  v1._object = 0xE500000000000000;
  String.append(_:)(v1);

  JSONPointer.init(codingKeys:)(v2);
  v3 = JSONPointer.rawValue.getter();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 93;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0;
}

uint64_t KeyedEncodingContainer.encode<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for PathCoded(0, a4, a5, a6);
  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

{
  v6 = type metadata accessor for Optional();
  WitnessTable = swift_getWitnessTable();
  v8 = swift_getWitnessTable();
  type metadata accessor for PathCoded(0, v6, WitnessTable, v8);
  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode<A>(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v24 = a6;
  v22 = *(a3 - 8);
  v23 = a5;
  __chkstk_darwin(a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  v14 = *(a2 + 16);
  *(inited + 56) = v14;
  *(inited + 64) = *(a2 + 24);
  v15 = sub_100064BF8((inited + 32));
  (*(*(v14 - 8) + 16))(v15, a1, v14);
  v26 = v12;
  sub_10034A3A8(inited);
  v16 = v26;
  v17 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v17)
  {
  }

  v19 = type metadata accessor for PathCoded(0, a3, a4, v23);
  v20 = v24;
  result = (*(v22 + 32))(v24 + *(v19 + 44), v11, a3);
  *v20 = v16;
  return result;
}

uint64_t KeyedDecodingContainer.decode<A>(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v26 = a4;
  v23 = a5;
  v25 = a6;
  v8 = type metadata accessor for Optional();
  v24 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  v13 = *(a2 + 16);
  *(inited + 56) = v13;
  *(inited + 64) = *(a2 + 24);
  v14 = sub_100064BF8((inited + 32));
  (*(*(v13 - 8) + 16))(v14, a1, v13);
  v30 = v11;
  sub_10034A3A8(inited);
  v15 = v30;
  v17 = v26;
  v16 = v27;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v16)
  {
  }

  v29 = v17;
  WitnessTable = swift_getWitnessTable();
  v28 = v23;
  v20 = swift_getWitnessTable();
  v21 = type metadata accessor for PathCoded(0, v8, WitnessTable, v20);
  v22 = v25;
  result = (*(v24 + 32))(v25 + *(v21 + 44), v10, v8);
  *v22 = v15;
  return result;
}

__n128 sub_1001BFDA8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

void sub_1001BFDC4(uint64_t a1)
{
  sub_1001C0220(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001BFE4C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1001BFFD0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

void sub_1001C0220(uint64_t a1)
{
  if (!qword_1004AB530)
  {
    sub_100003A94(&qword_1004AAA08, &qword_1003F40C8);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1004AB530);
    }
  }
}

uint64_t sub_1001C0284()
{
  v0 = sub_1000039E8(&qword_1004AAD78, &unk_1003F52C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for CommandConfiguration();
  sub_1000279B4(v3, static Prepare.configuration);
  sub_1000270B4(v3, static Prepare.configuration);
  v4 = type metadata accessor for NameSpecification();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)();
}

uint64_t Prepare.configuration.unsafeMutableAddressor()
{
  if (qword_1004A9E30 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CommandConfiguration();

  return sub_1000270B4(v0, static Prepare.configuration);
}

uint64_t static Prepare.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9E30 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CommandConfiguration();
  v3 = sub_1000270B4(v2, static Prepare.configuration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Prepare.source.getter()
{
  sub_1000039E8(&qword_1004AB538, &qword_1003F69D0);

  return Argument.wrappedValue.getter();
}

uint64_t sub_1001C0534(uint64_t a1)
{
  v2 = type metadata accessor for DInitConfigSource(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_1001C1E40(a1, &v9 - v6, type metadata accessor for DInitConfigSource);
  sub_1001C1E40(v7, v5, type metadata accessor for DInitConfigSource);
  sub_1000039E8(&qword_1004AB538, &qword_1003F69D0);
  Argument.wrappedValue.setter();
  return sub_1001C1D7C(v7, type metadata accessor for DInitConfigSource);
}

uint64_t Prepare.source.setter(uint64_t a1)
{
  v2 = type metadata accessor for DInitConfigSource(0);
  __chkstk_darwin(v2 - 8);
  sub_1001C1E40(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DInitConfigSource);
  sub_1000039E8(&qword_1004AB538, &qword_1003F69D0);
  Argument.wrappedValue.setter();
  return sub_1001C1D7C(a1, type metadata accessor for DInitConfigSource);
}

void (*Prepare.source.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1000039E8(&qword_1004AB538, &qword_1003F69D0);
  *(v3 + 32) = Argument.wrappedValue.modify();
  return sub_100197124;
}

uint64_t sub_1001C079C()
{
  if (qword_1004A9DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static RealComputer.shared;
  v0[11] = static RealComputer.shared;
  v0[5] = type metadata accessor for RealComputer();
  v0[6] = &protocol witness table for RealComputer;
  v0[2] = v1;
  swift_retain_n();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1001C08B8;

  return Prepare.run(on:)((v0 + 2));
}

uint64_t sub_1001C08B8()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1001C0A38;
  }

  else
  {
    sub_100003C3C((v2 + 16));
    v3 = sub_1001C09D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001C09D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C0A38()
{

  sub_100003C3C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Prepare.run(on:)(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v2[16] = *(type metadata accessor for Config(0) - 8);
  v2[17] = swift_task_alloc();
  sub_1000039E8(&qword_1004AB540, &qword_1003F69E8);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1001C0B98, 0, 0);
}

uint64_t sub_1001C0B98()
{
  v1 = *(v0 + 144);
  sub_100003B20(*(v0 + 112), v0 + 24);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *(v0 + 16) = JSONDecoder.init()();
  *(v0 + 64) = xmmword_1003F69C0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 80) = 1;
  *(v0 + 104) = 0;
  sub_1000039E8(&qword_1004AB538, &qword_1003F69D0);
  Argument.wrappedValue.getter();
  v2 = type metadata accessor for DInitConfigSource(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *v3 = v0;
  v3[1] = sub_1001C0CEC;
  v4 = *(v0 + 144);

  return ConfigLoader.load(from:)(v4);
}

uint64_t sub_1001C0CEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  sub_1001C1C20(v4);
  if (v1)
  {
    v5 = sub_1001C1208;
  }

  else
  {
    v5 = sub_1001C0E20;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001C0E20()
{
  result = v0[20];
  v2 = *(result + 16);
  v0[22] = v2;
  if (v2)
  {
    v3 = v0[16];
    v0[23] = 0;
    if (*(result + 16))
    {
      sub_1001C1E40(result + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v0[17], type metadata accessor for Config);
      v4 = swift_task_alloc();
      v0[24] = v4;
      *v4 = v0;
      v4[1] = sub_1001C0F60;

      return Config.prepare(on:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_1001C1C88((v0 + 2));

    v5 = v0[1];

    return v5();
  }

  return result;
}

uint64_t sub_1001C0F60()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  sub_1001C1D7C(*(v2 + 136), type metadata accessor for Config);
  if (v0)
  {

    v3 = sub_1001C1288;
  }

  else
  {
    v3 = sub_1001C10B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1001C10B8()
{
  v1 = v0[23] + 1;
  if (v1 == v0[22])
  {

    sub_1001C1C88((v0 + 2));

    v2 = v0[1];

    v2();
  }

  else
  {
    v0[23] = v1;
    v3 = v0[20];
    if (v1 >= *(v3 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1001C1E40(v3 + ((*(v0[16] + 80) + 32) & ~*(v0[16] + 80)) + *(v0[16] + 72) * v1, v0[17], type metadata accessor for Config);
      v4 = swift_task_alloc();
      v0[24] = v4;
      *v4 = v0;
      v4[1] = sub_1001C0F60;

      Config.prepare(on:)();
    }
  }
}

uint64_t sub_1001C1208()
{
  sub_1001C1C88(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C1288()
{
  sub_1001C1C88(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C131C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1001C13A0(uint64_t a1)
{
  v2 = sub_1001C1D28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C13DC(uint64_t a1)
{
  v2 = sub_1001C1D28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Prepare.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = sub_1000039E8(&qword_1004AB538, &qword_1003F69D0);
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v30 = &v25 - v3;
  v4 = sub_1000039E8(&qword_1004AB550, &unk_1003F69F0);
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = sub_1000039E8(&qword_1004AAD60, &unk_100404D80);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for ArgumentVisibility();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000039E8(&qword_1004AAD68, &unk_1003F52B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v14 = type metadata accessor for Prepare(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ArgumentVisibility.default.getter();
  ArgumentHelp.init(_:discussion:valueName:visibility:)();
  v17 = type metadata accessor for ArgumentHelp();
  (*(*(v17 - 8) + 56))(v13, 0, 1, v17);
  v18 = type metadata accessor for CompletionKind();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  type metadata accessor for DInitConfigSource(0);
  sub_1001C1F80(&qword_1004AB548, type metadata accessor for DInitConfigSource, &protocol conformance descriptor for DInitConfigSource);
  Argument<A>.init(help:completion:)();
  sub_10000E2A8(a1, a1[3]);
  sub_1001C1D28();
  v19 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    sub_100003C3C(a1);
    v23 = v16;
  }

  else
  {
    v20 = v26;
    v21 = v28;
    sub_1001C1DDC();
    v22 = v29;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v27 + 8))(v6, v4);
    (*(v20 + 40))(v16, v30, v22);
    sub_1001C1E40(v16, v21, type metadata accessor for Prepare);
    sub_100003C3C(a1);
    v23 = v16;
  }

  return sub_1001C1D7C(v23, type metadata accessor for Prepare);
}

uint64_t sub_1001C18C8()
{
  v0 = sub_1000039E8(&qword_1004AAD60, &unk_100404D80);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = type metadata accessor for ArgumentVisibility();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000039E8(&qword_1004AAD68, &unk_1003F52B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  static ArgumentVisibility.default.getter();
  ArgumentHelp.init(_:discussion:valueName:visibility:)();
  v7 = type metadata accessor for ArgumentHelp();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = type metadata accessor for CompletionKind();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  type metadata accessor for DInitConfigSource(0);
  sub_1001C1F80(&qword_1004AB548, type metadata accessor for DInitConfigSource, &protocol conformance descriptor for DInitConfigSource);
  return Argument<A>.init(help:completion:)();
}

uint64_t Prepare.init(source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000039E8(&qword_1004AB538, &qword_1003F69D0);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1001C1B78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001FE0;

  return Prepare.run()();
}

uint64_t sub_1001C1C20(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004AB540, &qword_1003F69E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for Prepare(uint64_t a1)
{
  result = qword_1004AB5D8;
  if (!qword_1004AB5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1001C1D28()
{
  result = qword_1004AB558;
  if (!qword_1004AB558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB558);
  }

  return result;
}

uint64_t sub_1001C1D7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001C1DDC()
{
  result = qword_1004AB560;
  if (!qword_1004AB560)
  {
    sub_100003A94(&qword_1004AB538, &qword_1003F69D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB560);
  }

  return result;
}

uint64_t sub_1001C1E40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001C1F80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001C2020(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004AB538, &qword_1003F69D0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001C20AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004AB538, &qword_1003F69D0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1001C2128(uint64_t a1)
{
  sub_1001C2194(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1001C2194(uint64_t a1)
{
  if (!qword_1004AB5E8)
  {
    type metadata accessor for DInitConfigSource(255);
    v1 = type metadata accessor for Argument();
    if (!v2)
    {
      atomic_store(v1, &qword_1004AB5E8);
    }
  }
}

unint64_t sub_1001C2200()
{
  result = qword_1004AB618;
  if (!qword_1004AB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB618);
  }

  return result;
}

unint64_t sub_1001C2258()
{
  result = qword_1004AB620;
  if (!qword_1004AB620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB620);
  }

  return result;
}

unint64_t sub_1001C22B0()
{
  result = qword_1004AB628;
  if (!qword_1004AB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB628);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FilePath.sizeEquals(expectedSize:)(Swift::Int expectedSize)
{
  v3 = v2;
  v5 = type metadata accessor for FilePath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 16);
  v9(v8, v1, v5);
  sub_1002EC1CC(v8, &v19);
  if (!v2)
  {
    st_size = v19.st_size;
    if (v19.st_size == expectedSize)
    {
      return;
    }

    v18[1] = type metadata accessor for FileValidationError(0);
    sub_1001C2FDC(&qword_1004AB630, type metadata accessor for FileValidationError, &protocol conformance descriptor for FileValidationError);
    v3 = swift_allocError();
    v12 = v11;
    v13 = sub_1000039E8(&qword_1004AB640, &unk_1003F6C18);
    v14 = *(v13 + 48);
    v18[0] = *(v13 + 64);
    v9(v12, v1, v5);
    *&v12[v14] = st_size;
    *&v12[v18[0]] = expectedSize;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  type metadata accessor for FileValidationError(0);
  sub_1001C2FDC(&qword_1004AB630, type metadata accessor for FileValidationError, &protocol conformance descriptor for FileValidationError);
  swift_allocError();
  v16 = v15;
  v17 = *(sub_1000039E8(&qword_1004AB638, &qword_1003F6C10) + 48);
  v9(v16, v1, v5);
  *&v16[v17] = v3;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FilePath.sha256Equals(expectedSHA256:)(DarwinInit::DInitSHA256Digest expectedSHA256)
{
  v3 = v1;
  object = expectedSHA256.rawValue._object;
  countAndFlagsBits = expectedSHA256.rawValue._countAndFlagsBits;
  v5 = type metadata accessor for FilePath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SHA256Digest();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v6 + 16);
  v35(v8, v3, v5);
  SHA256Digest.init(_:)(v8, v12);
  v13 = v2;
  if (v2)
  {
    goto LABEL_2;
  }

  v32 = v3;
  v17 = sub_100193028(v12);
  v33 = object;
  v36 = v17;
  sub_1000039E8(&qword_1004A6B48, &unk_100376810);
  sub_10004AF7C();
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;
  v21 = v12;
  v22 = v18;
  (*(v10 + 8))(v21, v9);
  v23 = v33;

  if ((v22 != countAndFlagsBits || v20 != v23) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v31[1] = type metadata accessor for FileValidationError(0);
    sub_1001C2FDC(&qword_1004AB630, type metadata accessor for FileValidationError, &protocol conformance descriptor for FileValidationError);
    v13 = swift_allocError();
    v31[0] = v22;
    v24 = v23;
    v26 = v25;
    v27 = sub_1000039E8(&qword_1004AB648, &qword_1003F6C28);
    v28 = &v26[*(v27 + 48)];
    v29 = &v26[*(v27 + 64)];
    v30 = v32;
    v35(v26, v32, v5);
    *v28 = v31[0];
    *(v28 + 1) = v20;
    v3 = v30;
    *v29 = countAndFlagsBits;
    v29[1] = v24;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_2:
    type metadata accessor for FileValidationError(0);
    sub_1001C2FDC(&qword_1004AB630, type metadata accessor for FileValidationError, &protocol conformance descriptor for FileValidationError);
    swift_allocError();
    v15 = v14;
    v16 = *(sub_1000039E8(&qword_1004AB638, &qword_1003F6C10) + 48);
    v35(v15, v3, v5);
    *&v15[v16] = v13;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }
}

unint64_t FileValidationError.errorDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FileValidationError(0);
  __chkstk_darwin(v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C2F78(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = sub_1000039E8(&qword_1004AB640, &unk_1003F6C18);
      v13 = *&v8[*(v12 + 48)];
      v14 = *&v8[*(v12 + 64)];
      (*(v3 + 32))(v5, v8, v2);
      v39 = 0;
      v40 = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v15._object = 0x800000010043E8C0;
      v15._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v15);
      sub_1001C2FDC(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v16);

      v17._countAndFlagsBits = 32;
      v17._object = 0xE100000000000000;
      String.append(_:)(v17);
      v38 = v13;
      v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v18);

      v19._countAndFlagsBits = 0xD00000000000001ELL;
      v19._object = 0x800000010043E8E0;
      String.append(_:)(v19);
      v38 = v14;
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
    }

    else
    {
      v23 = sub_1000039E8(&qword_1004AB648, &qword_1003F6C28);
      v24 = &v8[*(v23 + 48)];
      v26 = *v24;
      v25 = v24[1];
      v27 = &v8[*(v23 + 64)];
      v29 = *v27;
      v28 = v27[1];
      (*(v3 + 32))(v5, v8, v2);
      v39 = 0;
      v40 = 0xE000000000000000;
      _StringGuts.grow(_:)(57);
      v30._countAndFlagsBits = 0xD000000000000012;
      v30._object = 0x800000010043E870;
      String.append(_:)(v30);
      sub_1001C2FDC(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v31);

      v32._countAndFlagsBits = 32;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
      v33._countAndFlagsBits = v26;
      v33._object = v25;
      String.append(_:)(v33);

      v34._countAndFlagsBits = 0xD000000000000020;
      v34._object = 0x800000010043E890;
      String.append(_:)(v34);
      v20 = v29;
      v21 = v28;
    }

    String.append(_:)(*&v20);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1000039E8(&qword_1004AB638, &qword_1003F6C10);
      (*(v3 + 32))(v5, v8, v2);
      v39 = 0;
      v40 = 0xE000000000000000;
      _StringGuts.grow(_:)(42);

      v39 = 0xD000000000000024;
      v40 = 0x800000010043E900;
    }

    else
    {
      sub_1000039E8(&qword_1004AB638, &qword_1003F6C10);
      (*(v3 + 32))(v5, v8, v2);
      v39 = 0;
      v40 = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      v39 = 0xD000000000000022;
      v40 = 0x800000010043E930;
    }

    sub_1001C2FDC(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 8250;
    v11._object = 0xE200000000000000;
    String.append(_:)(v11);
    swift_getErrorValue();
    v22._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v22);
  }

  v35 = v39;
  (*(v3 + 8))(v5, v2);
  return v35;
}

uint64_t type metadata accessor for FileValidationError(uint64_t a1)
{
  result = qword_1004AB6C0;
  if (!qword_1004AB6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001C2F78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileValidationError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C2FDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001C30BC(uint64_t a1)
{
  sub_1001C3164(319);
  if (v1 <= 0x3F)
  {
    sub_1001C31E0(319, &qword_1004AB6D8, &type metadata for Int);
    if (v2 <= 0x3F)
    {
      sub_1001C31E0(319, &unk_1004AB6E0, &type metadata for DInitSHA256Digest);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1001C3164(uint64_t a1)
{
  if (!qword_1004AB6D0)
  {
    type metadata accessor for FilePath();
    sub_100003A94(&qword_1004AB0A0, &unk_100377120);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1004AB6D0);
    }
  }
}

void sub_1001C31E0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for FilePath();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void static CFPreferences.set(value:for:in:)(const void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  if (qword_1004A9E38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = a4;
  v11 = a5;
  v12 = a6;
  sub_100184D50(v14, v10, v11, v12);
  swift_endAccess();

  v13 = String._bridgeToObjectiveC()();
  CFPreferencesSetValue(v13, a1, v10, v11, v12);
}

BOOL static CFPreferences.synchronize(domain:)(void *a1, void *a2, void *a3)
{
  if (qword_1004A9E38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = a1;
  v7 = a2;
  v8 = a3;
  sub_100184D50(v10, v6, v7, v8);
  swift_endAccess();

  return CFPreferencesSynchronize(v6, v7, v8) != 0;
}

CFPropertyListRef static CFPreferences.getValue(for:in:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (qword_1004A9E38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = a3;
  v9 = a4;
  v10 = a5;
  sub_100184D50(v14, v8, v9, v10);
  swift_endAccess();

  v11 = String._bridgeToObjectiveC()();
  v12 = CFPreferencesCopyValue(v11, v8, v9, v10);

  return v12;
}

uint64_t static CFPreferences.Domain.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for CFString(0);
  sub_1001C3F1C();
  if (static _CFObject.== infix(_:_:)() & 1) != 0 && (static _CFObject.== infix(_:_:)())
  {
    return static _CFObject.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CFPreferences.Domain.hash(into:)(uint64_t a1)
{
  type metadata accessor for CFString(0);
  sub_1001C3F1C();
  _CFObject.hash(into:)();
  _CFObject.hash(into:)();
  return _CFObject.hash(into:)();
}

Swift::Int CFPreferences.Domain.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_1001C3F1C();
  _CFObject.hash(into:)();
  _CFObject.hash(into:)();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001C37F0()
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_1001C3F1C();
  _CFObject.hash(into:)();
  _CFObject.hash(into:)();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001C3890(uint64_t a1)
{
  type metadata accessor for CFString(0);
  sub_1001C3F1C();
  _CFObject.hash(into:)();
  _CFObject.hash(into:)();
  return _CFObject.hash(into:)();
}

Swift::Int sub_1001C3920()
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_1001C3F1C();
  _CFObject.hash(into:)();
  _CFObject.hash(into:)();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001C39BC(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for CFString(0);
  sub_1001C3F1C();
  if (static _CFObject.== infix(_:_:)() & 1) != 0 && (static _CFObject.== infix(_:_:)())
  {
    return static _CFObject.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t CFPrefsError.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0xD000000000000021;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ALL;
  }

  _StringGuts.grow(_:)(27);
  v2._object = 0x800000010043E960;
  v2._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v2);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t _s10DarwinInit13CFPreferencesO11flushCachesyyFZ_0()
{
  if (qword_1004A9E38 != -1)
  {
LABEL_14:
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1004AB710;
  v1 = 1 << *(off_1004AB710 + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(off_1004AB710 + 7);
  v4 = (v1 + 63) >> 6;

  v5 = 0;
  if (v3)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v6 >= v4)
    {
      break;
    }

    v3 = v0[v6 + 7];
    ++v5;
    if (v3)
    {
      v5 = v6;
      do
      {
LABEL_10:
        v3 &= v3 - 1;
        _CFPreferencesFlushCachesForIdentifier();
      }

      while (v3);
      continue;
    }
  }

  off_1004AB710 = &_swiftEmptySetSingleton;

  return CFPreferencesFlushCaches();
}

uint64_t sub_1001C3CA0(const void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  if (qword_1004A9E38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = a4;
  v11 = a5;
  v12 = a6;
  sub_100184D50(&v24, v10, v11, v12);
  swift_endAccess();

  v13 = String._bridgeToObjectiveC()();
  CFPreferencesSetValue(v13, a1, v10, v11, v12);

  swift_beginAccess();
  v14 = v10;
  v15 = v11;
  v16 = v12;
  sub_100184D50(&v24, v14, v15, v16);
  swift_endAccess();

  if (CFPreferencesSynchronize(v14, v15, v16))
  {
    _s10DarwinInit13CFPreferencesO11flushCachesyyFZ_0();
    swift_beginAccess();
    v17 = v14;
    v18 = v15;
    v19 = v16;
    sub_100184D50(&v24, v17, v18, v19);
    swift_endAccess();

    v20 = String._bridgeToObjectiveC()();
    v21 = CFPreferencesCopyValue(v20, v17, v18, v19);

    if (v21)
    {
      if (CFEqual(v21, a1))
      {
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  sub_1001C416C();
  swift_allocError();
  *v23 = v21;
  return swift_willThrow();
}

unint64_t sub_1001C3F1C()
{
  result = qword_1004A6DB8;
  if (!qword_1004A6DB8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6DB8);
  }

  return result;
}

unint64_t sub_1001C3F78()
{
  result = qword_1004AB718;
  if (!qword_1004AB718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB718);
  }

  return result;
}

uint64_t sub_1001C3FDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C4024(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1001C4074(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001C408C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001C40E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
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

void *sub_1001C413C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1001C416C()
{
  result = qword_1004AB720;
  if (!qword_1004AB720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB720);
  }

  return result;
}

uint64_t Config.Network.Firewall.rules.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

DarwinInit::DInitAppleAuthenticationConfig::CodingKeys_optional __swiftcall DInitAppleAuthenticationConfig.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100485440, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t Config.User.Authentication.Memento.VersionOneKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7372657375;
  }

  if (a1 == 1)
  {
    return 0x7370756F7267;
  }

  return 0x7265732D7061646CLL;
}

uint64_t sub_1001C42E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x7370756F7267;
  if (v2 != 1)
  {
    v4 = 0x7265732D7061646CLL;
    v3 = 0xEB00000000726576;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7372657375;
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
  v8 = 0x7370756F7267;
  if (*a2 != 1)
  {
    v8 = 0x7265732D7061646CLL;
    v7 = 0xEB00000000726576;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7372657375;
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
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1001C43EC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001C4490(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1001C4520()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

DarwinInit::DInitAppleAuthenticationConfig::CodingKeys_optional sub_1001C45C0@<W0>(Swift::String *a1@<X0>, DarwinInit::DInitAppleAuthenticationConfig::CodingKeys_optional *a2@<X8>)
{
  result.value = DInitAppleAuthenticationConfig.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_1001C45F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7370756F7267;
  if (v2 != 1)
  {
    v5 = 0x7265732D7061646CLL;
    v4 = 0xEB00000000726576;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7372657375;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1001C4650()
{
  v1 = 0x7370756F7267;
  if (*v0 != 1)
  {
    v1 = 0x7265732D7061646CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7372657375;
  }
}

DarwinInit::DInitAppleAuthenticationConfig::CodingKeys_optional sub_1001C46AC@<W0>(uint64_t a1@<X0>, DarwinInit::DInitAppleAuthenticationConfig::CodingKeys_optional *a2@<X8>)
{
  result.value = DInitAppleAuthenticationConfig.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1001C46D4(uint64_t a1)
{
  v2 = sub_1001C4F98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C4710(uint64_t a1)
{
  v2 = sub_1001C4F98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DInitAppleAuthenticationConfig.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[1] = a5;
  v14 = a3;
  v8 = sub_1000039E8(&qword_1004AB728, &unk_1003F6E70);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  sub_10000E2A8(a1, a1[3]);
  sub_1001C4F98();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v15 = 0;
  sub_1000039E8(&qword_1004A6B48, &unk_100376810);
  sub_1000A6724(&qword_1004A8B08, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v5)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v16 = v14;
  v15 = 1;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v16) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t DInitAppleAuthenticationConfig.init(from:)(void *a1)
{
  result = sub_1001C4D3C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1001C49B0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1001C4D3C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void DInitAppleAuthenticationConfig.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    Hasher._combine(_:)(1u);
    v8 = *(a2 + 16);
    Hasher._combine(_:)(v8);
    if (v8)
    {
      v9 = a2 + 40;
      do
      {

        String.hash(into:)();

        v9 += 16;
        --v8;
      }

      while (v8);
    }

    if (a3)
    {
LABEL_6:
      Hasher._combine(_:)(1u);
      v10 = *(a3 + 16);
      Hasher._combine(_:)(v10);
      if (v10)
      {
        v11 = a3 + 40;
        do
        {

          String.hash(into:)();

          v11 += 16;
          --v10;
        }

        while (v10);
      }

      if (a5)
      {
        goto LABEL_10;
      }

LABEL_15:
      Hasher._combine(_:)(0);
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  Hasher._combine(_:)(0);
  if (!a5)
  {
    goto LABEL_15;
  }

LABEL_10:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int DInitAppleAuthenticationConfig.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  DInitAppleAuthenticationConfig.hash(into:)(v9, a1, a2, a3, a4);
  return Hasher._finalize()();
}

Swift::Int sub_1001C4BB0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  DInitAppleAuthenticationConfig.hash(into:)(v6, v1, v2, v4, v3);
  return Hasher._finalize()();
}

Swift::Int sub_1001C4C1C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  DInitAppleAuthenticationConfig.hash(into:)(v6, v1, v2, v4, v3);
  return Hasher._finalize()();
}

BOOL _s10DarwinInit30DInitAppleAuthenticationConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (!a5 || (sub_10024DC98(a1, a5) & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (a2)
  {
    if (!a6 || (sub_10024DC98(a2, a6) & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a4)
  {
    return a8 && (a3 == a7 && a4 == a8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !a8;
}

uint64_t sub_1001C4D3C(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AB758, &unk_1003F7100);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  sub_10000E2A8(a1, v7);
  sub_1001C4F98();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000039E8(&qword_1004A6B48, &unk_100376810);
    v10 = 0;
    sub_1000A6724(&qword_1004A88F8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v7 = v11;
    v10 = 1;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100003C3C(a1);
  return v7;
}

unint64_t sub_1001C4F98()
{
  result = qword_1004AB730;
  if (!qword_1004AB730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB730);
  }

  return result;
}

unint64_t sub_1001C4FF0()
{
  result = qword_1004AB738;
  if (!qword_1004AB738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB738);
  }

  return result;
}

unint64_t sub_1001C5048()
{
  result = qword_1004AB740;
  if (!qword_1004AB740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB740);
  }

  return result;
}

unint64_t sub_1001C50A0()
{
  result = qword_1004AB748;
  if (!qword_1004AB748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB748);
  }

  return result;
}

unint64_t sub_1001C50F8()
{
  result = qword_1004AB750;
  if (!qword_1004AB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB750);
  }

  return result;
}

uint64_t sub_1001C514C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1001C51A8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t DInitNVRAMConfigSource.variable.getter@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v2 = 0x800000010043E9D0;
  v3 = 0xD000000000000012;
  if (result)
  {
    v3 = 0x692D6E6977726164;
    v2 = 0xEB0000000074696ELL;
  }

  *a2 = v3;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001C5268()
{
  if (*v0)
  {
    return 0x6C616D726F6ELL;
  }

  else
  {
    return 0x6D6574737973;
  }
}

uint64_t sub_1001C5294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D6574737973 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1001C5368(uint64_t a1)
{
  v2 = sub_1001C5798();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C53A4(uint64_t a1)
{
  v2 = sub_1001C5798();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C53E0(uint64_t a1)
{
  v2 = sub_1001C57EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C541C(uint64_t a1)
{
  v2 = sub_1001C57EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C5458(uint64_t a1)
{
  v2 = sub_1001C5840();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C5494(uint64_t a1)
{
  v2 = sub_1001C5840();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DInitNVRAMConfigSource.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_1000039E8(&qword_1004AB760, &qword_1003F7110);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_1000039E8(&qword_1004AB768, &qword_1003F7118);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_1000039E8(&qword_1004AB770, &qword_1003F7120);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_10000E2A8(a1, a1[3]);
  sub_1001C5798();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1001C57EC();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1001C5840();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_1001C5798()
{
  result = qword_1004AB778;
  if (!qword_1004AB778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB778);
  }

  return result;
}

unint64_t sub_1001C57EC()
{
  result = qword_1004AB780;
  if (!qword_1004AB780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB780);
  }

  return result;
}

unint64_t sub_1001C5840()
{
  result = qword_1004AB788;
  if (!qword_1004AB788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB788);
  }

  return result;
}

uint64_t sub_1001C58B0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1001C7684(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t DInitConfigSource.description.getter()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FilePath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DInitConfigSource(0);
  __chkstk_darwin(v9);
  v11 = (v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001C7B8C(v0, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v13 = *v11;
      v14 = v11[1];
      v26[0] = 0xD000000000000011;
      v26[1] = 0x800000010043EA10;
      goto LABEL_10;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v15 = *v11;
      v16 = v11[1];
      v17 = v11[2];
      v14 = v11[3];
      v26[0] = 0;
      v26[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      v26[0] = 0xD00000000000001CLL;
      v26[1] = 0x800000010043E9F0;
      v18._countAndFlagsBits = v15;
      v18._object = v16;
      String.append(_:)(v18);

      v19._countAndFlagsBits = 124;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      v13 = v17;
      goto LABEL_10;
    }

    return 0x647261646E617473;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v6 + 32))(v8, v11, v5);
      strcpy(v26, "filesystem: ");
      BYTE5(v26[1]) = 0;
      HIWORD(v26[1]) = -5120;
      v20._countAndFlagsBits = FilePath.description.getter();
      String.append(_:)(v20);

      v21 = v26[0];
      (*(v6 + 8))(v8, v5);
      return v21;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v13 = *v11;
      v14 = v11[1];
      v26[0] = 0x203A6E6F736ALL;
      v26[1] = 0xE600000000000000;
LABEL_10:
      v23 = v14;
      String.append(_:)(*&v13);

      return v26[0];
    }

    (*(v2 + 32))(v4, v11, v1);
    strcpy(v26, "network: ");
    WORD1(v26[1]) = 0;
    HIDWORD(v26[1]) = -385875968;
    v24._countAndFlagsBits = URL.description.getter();
    String.append(_:)(v24);

    v25 = v26[0];
    (*(v2 + 8))(v4, v1);
    return v25;
  }
}

uint64_t DInitConfigSource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v3 - 8);
  v5 = v52 - v4;
  v6 = type metadata accessor for URL();
  v57 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DInitConfigSource(0);
  __chkstk_darwin(v9);
  v11 = (v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000E2A8(a1, a1[3]);
  v12 = v65;
  dispatch thunk of Decoder.singleValueContainer()();
  if (v12)
  {
    return sub_100003C3C(a1);
  }

  v54 = v8;
  v55 = v9;
  v13 = v57;
  v65 = v11;
  sub_10000E2A8(v64, v64[3]);
  v15 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v17 = v16;
  v53 = 0;
  URL.init(string:)();
  if ((*(v13 + 48))(v5, 1, v6) == 1)
  {
    sub_100013F2C(v5, &qword_1004A6D30, &unk_100376820);
  }

  else
  {
    v18 = *(v13 + 32);
    v19 = v54;
    v18(v54, v5, v6);
    v52[0] = v6;
    v20 = URL.scheme.getter();
    v52[1] = v52;
    v60 = v20;
    v61 = v21;
    __chkstk_darwin(v20);
    v52[-2] = &v60;
    v22 = v53;
    v23 = sub_1001791D0(sub_1001C7CA8, &v52[-4], &off_1004850E8);
    v53 = v22;
    sub_1000039E8(&qword_1004A7330, &qword_1003762A0);
    swift_arrayDestroy();

    if (v23)
    {

      v24 = v65;
      v18(v65, v19, v52[0]);
      v25 = v56;
      v26 = a1;
LABEL_23:
      swift_storeEnumTagMultiPayload();
      sub_100003C3C(v64);
      sub_1001C7BF0(v24, v25);
      return sub_100003C3C(v26);
    }

    (*(v57 + 8))(v19, v52[0]);
  }

  v24 = v65;
  v27._countAndFlagsBits = 123;
  v27._object = 0xE100000000000000;
  if (String.hasPrefix(_:)(v27))
  {
    v28._countAndFlagsBits = 125;
    v28._object = 0xE100000000000000;
    if (String.hasSuffix(_:)(v28))
    {
      *v24 = v15;
      v24[1] = v17;
      v25 = v56;
      v26 = a1;
      goto LABEL_23;
    }
  }

  v29._countAndFlagsBits = 91;
  v29._object = 0xE100000000000000;
  v26 = a1;
  if (String.hasPrefix(_:)(v29))
  {
    v30._countAndFlagsBits = 93;
    v30._object = 0xE100000000000000;
    if (String.hasSuffix(_:)(v30))
    {
      *v24 = v15;
      v24[1] = v17;
LABEL_22:
      v25 = v56;
      goto LABEL_23;
    }
  }

  v31._countAndFlagsBits = 0x3D73646D69326365;
  v31._object = 0xE800000000000000;
  if (String.hasPrefix(_:)(v31))
  {
    v32 = String.count.getter();
    sub_10004D354(v32, v15, v17);

    v33 = static String._fromSubstring(_:)();
    v35 = v34;

    v36 = v65;
    *v65 = v33;
    v36[1] = v35;
    v24 = v36;
    goto LABEL_22;
  }

  v37._countAndFlagsBits = 0x656465746F6D6572;
  v37._object = 0xED00003D65636976;
  if (!String.hasPrefix(_:)(v37))
  {
    v24 = v65;
    FilePath.init(_:)();
    goto LABEL_22;
  }

  v38 = String.count.getter();
  v39 = sub_10004D354(v38, v15, v17);
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v60 = v39;
  v61 = v41;
  v62 = v43;
  v63 = v45;
  v58 = 124;
  v59 = 0xE100000000000000;
  sub_1001C7C54();
  sub_10000B080();
  v46 = StringProtocol.components<A>(separatedBy:)();

  v47 = v46[2];
  if (v47)
  {
    v25 = v56;
    if (v47 != 1)
    {
      v49 = v46[4];
      v48 = v46[5];
      v51 = v46[6];
      v50 = v46[7];

      v24 = v65;
      *v65 = v49;
      v24[1] = v48;
      v24[2] = v51;
      v24[3] = v50;
      goto LABEL_23;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t DInitConfigSource.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FilePath();
  v26 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DInitConfigSource(0);
  __chkstk_darwin(v10);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_1001C7B8C(v2, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v21._countAndFlagsBits = *v12;
      v22 = v12[1];
      strcpy(v29, "ec2imds=");
      BYTE1(v29[2]) = 0;
      HIWORD(v29[2]) = 0;
      v29[3] = -402653184;
      v21._object = v22;
      String.append(_:)(v21);
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        sub_100003BEC(v30, v31);
        dispatch thunk of SingleValueEncodingContainer.encode(_:)();
        return sub_100003C3C(v30);
      }

      v14._countAndFlagsBits = *v12;
      v15 = v12[1];
      v16 = v12[2];
      v17 = v12[3];
      strcpy(v29, "remotedevice=");
      HIWORD(v29[3]) = -4864;
      v14._object = v15;
      String.append(_:)(v14);

      v18._countAndFlagsBits = 124;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      v19._countAndFlagsBits = v16;
      v19._object = v17;
      String.append(_:)(v19);
    }

LABEL_11:
    sub_100003BEC(v30, v31);
    dispatch thunk of SingleValueEncodingContainer.encode(_:)();

    return sub_100003C3C(v30);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v24 = v27;
      v23 = v28;
      (*(v27 + 32))(v6, v12, v28);
      sub_100003BEC(v30, v31);
      sub_1001C7DD0(&qword_1004A9058, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
      (*(v24 + 8))(v6, v23);
      return sub_100003C3C(v30);
    }

    goto LABEL_11;
  }

  v20 = v26;
  (*(v26 + 32))(v9, v12, v7);
  sub_100003BEC(v30, v31);
  sub_1001C7DD0(&qword_1004AB798, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  (*(v20 + 8))(v9, v7);
  return sub_100003C3C(v30);
}

uint64_t DInitConfigSource.init(argument:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v6 - 8);
  v8 = &v41 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 45 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    type metadata accessor for DInitConfigSource(0);
    goto LABEL_5;
  }

  v14._countAndFlagsBits = 123;
  v14._object = 0xE100000000000000;
  if (String.hasPrefix(_:)(v14) && (v15._countAndFlagsBits = 125, v15._object = 0xE100000000000000, String.hasSuffix(_:)(v15)) || (v16._countAndFlagsBits = 91, v16._object = 0xE100000000000000, String.hasPrefix(_:)(v16)) && (v17._countAndFlagsBits = 93, v17._object = 0xE100000000000000, String.hasSuffix(_:)(v17)))
  {
    *a3 = a1;
    a3[1] = a2;
    type metadata accessor for DInitConfigSource(0);
LABEL_5:

    return swift_storeEnumTagMultiPayload();
  }

  URL.init(string:)();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100013F2C(v8, &qword_1004A6D30, &unk_100376820);
  }

  else
  {
    v42 = *(v10 + 32);
    v42(v12, v8, v9);
    v18 = URL.scheme.getter();
    v43 = &v41;
    v46 = v18;
    v47 = v19;
    __chkstk_darwin(v18);
    *(&v41 - 2) = &v46;
    v20 = sub_1001791D0(sub_1001C820C, (&v41 - 4), &off_100485128);
    sub_1000039E8(&qword_1004A7330, &qword_1003762A0);
    swift_arrayDestroy();

    if (v20)
    {

      v42(a3, v12, v9);
      type metadata accessor for DInitConfigSource(0);
      return swift_storeEnumTagMultiPayload();
    }

    (*(v10 + 8))(v12, v9);
  }

  v21._countAndFlagsBits = 0x3D73646D69326365;
  v21._object = 0xE800000000000000;
  if (String.hasPrefix(_:)(v21))
  {
    v22 = String.count.getter();
    sub_10004D354(v22, a1, a2);

    v23 = static String._fromSubstring(_:)();
    v25 = v24;

    *a3 = v23;
    a3[1] = v25;
    type metadata accessor for DInitConfigSource(0);
    return swift_storeEnumTagMultiPayload();
  }

  v26._countAndFlagsBits = 0x656465746F6D6572;
  v26._object = 0xED00003D65636976;
  if (!String.hasPrefix(_:)(v26))
  {
    FilePath.init(_:)();
    type metadata accessor for DInitConfigSource(0);
    return swift_storeEnumTagMultiPayload();
  }

  v27 = String.count.getter();
  v28 = sub_10004D354(v27, a1, a2);
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v46 = v28;
  v47 = v30;
  v48 = v32;
  v49 = v34;
  v44 = 124;
  v45 = 0xE100000000000000;
  sub_1001C7C54();
  sub_10000B080();
  v35 = StringProtocol.components<A>(separatedBy:)();

  v36 = v35[2];
  if (v36)
  {
    if (v36 != 1)
    {
      v38 = v35[4];
      v37 = v35[5];
      v40 = v35[6];
      v39 = v35[7];

      *a3 = v38;
      a3[1] = v37;
      a3[2] = v40;
      a3[3] = v39;
      type metadata accessor for DInitConfigSource(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C6C4C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  DInitConfigSource.init(argument:)(a1, a2, a4);
  v6 = *(*(a3 - 8) + 56);

  return v6(a4, 0, 1, a3);
}

void DInitConfigSource.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DInitConfigSource(0);
  __chkstk_darwin(v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C7B8C(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v14 = 3;
      goto LABEL_10;
    }

    if (EnumCaseMultiPayload == 4)
    {
      Hasher._combine(_:)(5uLL);
      String.hash(into:)();

      String.hash(into:)();
LABEL_11:

      return;
    }

    Hasher._combine(_:)(4uLL);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v7 + 32))(v9, v12, v6);
      Hasher._combine(_:)(0);
      sub_1001C7DD0(&qword_1004AB7A0, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      dispatch thunk of Hashable.hash(into:)();
      (*(v7 + 8))(v9, v6);
      return;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v14 = 1;
LABEL_10:
      Hasher._combine(_:)(v14);
      String.hash(into:)();
      goto LABEL_11;
    }

    (*(v3 + 32))(v5, v12, v2);
    Hasher._combine(_:)(2uLL);
    sub_1001C7DD0(&qword_1004AB370, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }
}

Swift::Int DInitConfigSource.hashValue.getter()
{
  Hasher.init(_seed:)();
  DInitConfigSource.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001C7054()
{
  Hasher.init(_seed:)();
  DInitConfigSource.hash(into:)(v1);
  return Hasher._finalize()();
}

BOOL sub_1001C7090(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
    }
  }

  return result;
}

uint64_t _s10DarwinInit17DInitConfigSourceO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v3 = type metadata accessor for URL();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v51 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FilePath();
  v52 = *(v5 - 8);
  v53 = v5;
  __chkstk_darwin(v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DInitConfigSource(0);
  v9 = __chkstk_darwin(v8);
  v11 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v9);
  v14 = (&v51 - v13);
  v15 = __chkstk_darwin(v12);
  v17 = &v51 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = (&v51 - v19);
  __chkstk_darwin(v18);
  v22 = &v51 - v21;
  v23 = sub_1000039E8(&qword_1004AB8B0, &qword_1003F7610);
  v24 = __chkstk_darwin(v23 - 8);
  v26 = &v51 - v25;
  v27 = (&v51 + *(v24 + 56) - v25);
  sub_1001C7B8C(a1, &v51 - v25);
  sub_1001C7B8C(v56, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1001C7B8C(v26, v14);
      v30 = *v14;
      v29 = v14[1];
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_42;
        }

        goto LABEL_30;
      }

      sub_1001C7B8C(v26, v11);
      v32 = *v11;
      v31 = v11[1];
      v34 = v11[2];
      v33 = v11[3];
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v36 = v27[2];
        v35 = v27[3];
        if (v32 == *v27 && v31 == v27[1])
        {
        }

        else
        {
          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v38 & 1) == 0)
          {

LABEL_40:
            sub_1001C81B0(v26);
            goto LABEL_31;
          }
        }

        if (v34 != v36 || v33 != v35)
        {
          goto LABEL_39;
        }

        goto LABEL_41;
      }
    }

LABEL_28:

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1001C7B8C(v26, v20);
      v30 = *v20;
      v29 = v20[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_28;
      }

LABEL_18:
      if (v30 != *v27 || v29 != v27[1])
      {
LABEL_39:
        v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v49 & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_42:
        sub_1001C81B0(v26);
        v43 = 1;
        return v43 & 1;
      }

LABEL_41:

      goto LABEL_42;
    }

    sub_1001C7B8C(v26, v17);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v54 + 8))(v17, v55);
      goto LABEL_30;
    }

    v41 = v54;
    v40 = v55;
    v42 = v51;
    (*(v54 + 32))(v51, v27, v55);
    v43 = static URL.== infix(_:_:)();
    v44 = *(v41 + 8);
    v44(v42, v40);
    v44(v17, v40);
LABEL_33:
    sub_1001C81B0(v26);
    return v43 & 1;
  }

  sub_1001C7B8C(v26, v22);
  if (!swift_getEnumCaseMultiPayload())
  {
    v46 = v52;
    v45 = v53;
    (*(v52 + 32))(v7, v27, v53);
    v43 = static FilePath.== infix(_:_:)();
    v47 = *(v46 + 8);
    v47(v7, v45);
    v47(v22, v45);
    goto LABEL_33;
  }

  (*(v52 + 8))(v22, v53);
LABEL_30:
  sub_100013F2C(v26, &qword_1004AB8B0, &qword_1003F7610);
LABEL_31:
  v43 = 0;
  return v43 & 1;
}

uint64_t sub_1001C7684(void *a1)
{
  v2 = sub_1000039E8(&qword_1004AB8B8, &qword_1003F7618);
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - v3;
  v5 = sub_1000039E8(&qword_1004AB8C0, &qword_1003F7620);
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_1000039E8(&qword_1004AB8C8, &qword_1003F7628);
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_10000E2A8(a1, a1[3]);
  sub_1001C5798();
  v11 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    return sub_100003C3C(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = KeyedDecodingContainer.allKeys.getter();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_10019106C();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v19 = &type metadata for DInitNVRAMConfigSource;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, enum case for DecodingError.typeMismatch(_:), v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_100003C3C(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_1001C57EC();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_1001C5840();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  sub_100003C3C(v26);
  return v31 & 1;
}

uint64_t type metadata accessor for DInitConfigSource(uint64_t a1)
{
  result = qword_1004AB838;
  if (!qword_1004AB838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001C7B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DInitConfigSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C7BF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DInitConfigSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001C7C54()
{
  result = qword_1004AB790;
  if (!qword_1004AB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB790);
  }

  return result;
}

unint64_t sub_1001C7CCC()
{
  result = qword_1004AB7A8;
  if (!qword_1004AB7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB7A8);
  }

  return result;
}

unint64_t sub_1001C7D24()
{
  result = qword_1004AB7B0;
  if (!qword_1004AB7B0)
  {
    sub_100003A94(&qword_1004AB7B8, &qword_1003F71E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB7B0);
  }

  return result;
}

uint64_t sub_1001C7DD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001C7E28(uint64_t a1)
{
  type metadata accessor for FilePath();
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      sub_1001C7EB8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1001C7EB8()
{
  if (!qword_1004AB848)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1004AB848);
    }
  }
}

unint64_t sub_1001C7F4C()
{
  result = qword_1004AB878;
  if (!qword_1004AB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB878);
  }

  return result;
}

unint64_t sub_1001C7FA4()
{
  result = qword_1004AB880;
  if (!qword_1004AB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB880);
  }

  return result;
}

unint64_t sub_1001C7FFC()
{
  result = qword_1004AB888;
  if (!qword_1004AB888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB888);
  }

  return result;
}

unint64_t sub_1001C8054()
{
  result = qword_1004AB890;
  if (!qword_1004AB890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB890);
  }

  return result;
}

unint64_t sub_1001C80AC()
{
  result = qword_1004AB898;
  if (!qword_1004AB898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB898);
  }

  return result;
}

unint64_t sub_1001C8104()
{
  result = qword_1004AB8A0;
  if (!qword_1004AB8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB8A0);
  }

  return result;
}

unint64_t sub_1001C815C()
{
  result = qword_1004AB8A8;
  if (!qword_1004AB8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB8A8);
  }

  return result;
}

uint64_t sub_1001C81B0(uint64_t a1)
{
  v2 = type metadata accessor for DInitConfigSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t URLRequest.logDescription.getter()
{
  v0 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v0 - 8);
  v2 = v33 - v1;
  v34 = 0;
  v35 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);
  v3 = URLRequest.httpMethod.getter();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v3 = 5522759;
    v5 = 0xE300000000000000;
  }

  v6 = v5;
  String.append(_:)(*&v3);

  v7._countAndFlagsBits = 32;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  URLRequest.url.getter();
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v2, 1, v8) == 1)
  {
    sub_10004B034(v2);
    v10 = 0xE900000000000074;
    v11 = 0x736F686C61636F6CLL;
  }

  else
  {
    v12 = URL.absoluteString.getter();
    v10 = v13;
    (*(v9 + 8))(v2, v8);
    v11 = v12;
  }

  v14 = v10;
  String.append(_:)(*&v11);

  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  if (!URLRequest.allHTTPHeaderFields.getter())
  {
    sub_1001862DC(_swiftEmptyArrayStorage);
  }

  v16 = Dictionary.description.getter();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 32;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21 = URLRequest.httpBody.getter();
  if (v22 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v27 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v27 != 2)
    {
      sub_100031914(v21, v22);
LABEL_10:
      v23 = 0;
LABEL_11:
      v33[1] = v23;
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v24);

      v25._countAndFlagsBits = 0x736574794220;
      v25._object = 0xE600000000000000;
      String.append(_:)(v25);
      return v34;
    }

    v30 = *(v21 + 16);
    v29 = *(v21 + 24);
    v21 = sub_100031914(v21, v22);
    v23 = v29 - v30;
    if (!__OFSUB__(v29, v30))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v27)
  {
    v28 = BYTE6(v22);
    sub_100031914(v21, v22);
    v23 = v28;
    goto LABEL_11;
  }

  v31 = HIDWORD(v21);
  v32 = v21;
  result = sub_100031914(v21, v22);
  LODWORD(v23) = v31 - v32;
  if (!__OFSUB__(v31, v32))
  {
    v23 = v23;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t DInitNarrativeIdentitiesConfig.options.getter@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = *(v4 + 16);
  *a1 = v5;
  return sub_1001C8518(v5, a2, a3, a4);
}

uint64_t sub_1001C8518(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t DInitNarrativeIdentitiesConfig.options.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1001C855C(*(v1 + 16));
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1001C855C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t DInitNarrativeIdentitiesConfig.init(identity:options:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  a4[1] = a2;
  a4[2] = v4;
  return result;
}

DarwinInit::DInitNarrativeIdentitiesConfig::CodingKeys_optional __swiftcall DInitNarrativeIdentitiesConfig.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004854F8, v2);

  if (v3 == 1)
  {
    v4.value = DarwinInit_DInitNarrativeIdentitiesConfig_CodingKeys_options;
  }

  else
  {
    v4.value = DarwinInit_DInitNarrativeIdentitiesConfig_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t Config.NarrativeVersionOneKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 0x797469746E656469;
  }
}

uint64_t sub_1001C8610(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x736E6F6974706FLL;
  }

  else
  {
    v3 = 0x797469746E656469;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x736E6F6974706FLL;
  }

  else
  {
    v5 = 0x797469746E656469;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
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
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001C86B8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001C873C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1001C87AC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001C882C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1004854F8, *a1);

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

void sub_1001C888C(uint64_t *a1@<X8>)
{
  v2 = 0x797469746E656469;
  if (*v1)
  {
    v2 = 0x736E6F6974706FLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1001C88CC()
{
  if (*v0)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 0x797469746E656469;
  }
}