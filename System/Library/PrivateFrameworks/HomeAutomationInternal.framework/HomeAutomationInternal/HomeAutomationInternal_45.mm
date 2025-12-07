uint64_t sub_252C97064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v85 = a4;
  v87 = a1;
  v8 = sub_252E32F04();
  v86 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = [v11 sharedInstance];
  v88 = v8;
  if (v12 && (v13 = v12, v82 = sub_252E36F04(), v81 = sub_252E36F04(), v14 = sub_252E36F04(), v15 = [objc_opt_self() 0x1FB4263F8], v84 = a2, v16 = v15, v14, v83 = a3, __swift_project_boxed_opaque_existential_1(a5, a5[3]), sub_252E33844(), v17 = sub_252E32E94(), v19 = v18, v78 = *(v86 + 8), v79 = v86 + 8, v78(v10, v88), v92[0] = v17, v92[1] = v19, v91[0] = 45, v91[1] = 0xE100000000000000, v89 = 95, v90 = 0xE100000000000000, sub_252947DBC(), sub_252E377B4(), , v20 = sub_252E36F04(), , v22 = v81, v21 = v82, v23 = objc_msgSend(v13, sel_localizedStringForKey_table_bundle_languageCode_, v82, v81, v16, v20), v13, v21, v22, v16, a2 = v84, v20, v23))
  {
    v24 = sub_252E36F34();
    v26 = v25;

    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v27 = sub_252E36AD4();
    __swift_project_value_buffer(v27, qword_27F544D60);
    sub_252929E74(a5, v92);

    v28 = sub_252E36AC4();
    v29 = sub_252E374C4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v91[0] = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_252BE2CE0(v24, v26, v91);
      *(v30 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v92, v93);
      sub_252E33844();
      v32 = sub_252E32E94();
      v34 = v33;
      v78(v10, v88);
      __swift_destroy_boxed_opaque_existential_1(v92);
      v35 = sub_252BE2CE0(v32, v34, v91);

      *(v30 + 14) = v35;
      _os_log_impl(&dword_252917000, v28, v29, "Get localized string with label: %s for locale %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v31, -1, -1);
      v36 = v30;
      goto LABEL_23;
    }

    __swift_destroy_boxed_opaque_existential_1(v92);
  }

  else
  {
    v80 = a5;
    v37 = [v11 sharedInstance];
    if (v37)
    {
      v38 = v37;
      v39 = v87;
      v40 = sub_252E36F04();
      v41 = a2;
      v42 = sub_252E36F04();
      v43 = sub_252E36F04();
      v44 = [objc_opt_self() bundleWithIdentifier_];

      v45 = sub_252E36F04();
      v46 = [v38 localizedStringForKey:v40 table:v42 bundle:v44 languageCode:v45];

      a2 = v41;
      if (v46)
      {
        v24 = sub_252E36F34();
        v48 = v47;

        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v49 = sub_252E36AD4();
        __swift_project_value_buffer(v49, qword_27F544D60);
        sub_252929E74(v80, v92);

        v50 = sub_252E36AC4();
        v51 = sub_252E374D4();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          LODWORD(v84) = v51;
          v53 = a2;
          v54 = v52;
          v85 = swift_slowAlloc();
          v91[0] = v85;
          *v54 = 136315394;
          *(v54 + 4) = sub_252BE2CE0(v39, v53, v91);
          *(v54 + 12) = 2080;
          __swift_project_boxed_opaque_existential_1(v92, v93);
          v55 = v10;
          sub_252E33844();
          v56 = sub_252E32E94();
          v58 = v57;
          (*(v86 + 8))(v55, v88);
          __swift_destroy_boxed_opaque_existential_1(v92);
          v59 = sub_252BE2CE0(v56, v58, v91);

          *(v54 + 14) = v59;
          _os_log_impl(&dword_252917000, v50, v84, "Unable to get localized string for %s label for locale: %s", v54, 0x16u);
          v60 = v85;
          swift_arrayDestroy();
          MEMORY[0x2530AED00](v60, -1, -1);
          MEMORY[0x2530AED00](v54, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v92);
        }

        v28 = sub_252E36AC4();
        v73 = sub_252E374D4();

        if (!os_log_type_enabled(v28, v73))
        {
          goto LABEL_24;
        }

        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v92[0] = v75;
        *v74 = 136315138;
        *(v74 + 4) = sub_252BE2CE0(v24, v48, v92);
        _os_log_impl(&dword_252917000, v28, v73, "Use fallback en_US label: %s", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v75);
        MEMORY[0x2530AED00](v75, -1, -1);
        v36 = v74;
LABEL_23:
        MEMORY[0x2530AED00](v36, -1, -1);
LABEL_24:

        return v24;
      }
    }

    v61 = v88;
    v62 = v86;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v63 = sub_252E36AD4();
    __swift_project_value_buffer(v63, qword_27F544D60);
    sub_252929E74(v80, v92);

    v64 = sub_252E36AC4();
    v65 = sub_252E374D4();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = a2;
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v91[0] = v68;
      *v67 = 136315394;
      *(v67 + 4) = sub_252BE2CE0(v87, v66, v91);
      *(v67 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v92, v93);
      sub_252E33844();
      v69 = sub_252E32E94();
      v71 = v70;
      (*(v62 + 8))(v10, v61);
      __swift_destroy_boxed_opaque_existential_1(v92);
      v72 = sub_252BE2CE0(v69, v71, v91);

      *(v67 + 14) = v72;
      _os_log_impl(&dword_252917000, v64, v65, "Unable to get localized string for %s label for locale: %s and en_US", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v68, -1, -1);
      MEMORY[0x2530AED00](v67, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v92);
    }

    return 0;
  }

  return v24;
}

unint64_t VerbSemantic.rawValue.getter()
{
  result = 0x746174735F746573;
  switch(*v0)
  {
    case 1:
      result = 0x746174735F746567;
      break;
    case 2:
      result = 0x6174735F646C6F68;
      break;
    case 3:
      result = 0x656C67676F74;
      break;
    case 4:
      result = 2003789939;
      break;
    case 5:
      result = 0x746E756F63;
      break;
    case 6:
      result = 0x657461657263;
      break;
    case 7:
      result = 0x6574656C6564;
      break;
    case 8:
      result = 6579297;
      break;
    case 9:
      result = 0x65766F6D6572;
      break;
    case 0xA:
      result = 0x656D616E6572;
      break;
    case 0xB:
      result = 0xD000000000000012;
      break;
    case 0xC:
      result = 0xD000000000000011;
      break;
    case 0xD:
      result = 0xD000000000000013;
      break;
    case 0xE:
      result = 0x6E6F5F6863696877;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static VerbSemantic.< infix(_:_:)()
{
  v0 = VerbSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == VerbSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

HomeAutomationInternal::VerbSemantic_optional __swiftcall VerbSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252C97CB0()
{
  v0 = VerbSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == VerbSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_252C97D4C()
{
  sub_252E37EC4();
  VerbSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C97DB4(uint64_t a1)
{
  VerbSemantic.rawValue.getter();
  sub_252E37044();
}

uint64_t sub_252C97E18(uint64_t a1)
{
  sub_252E37EC4();
  VerbSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252C97E88@<X0>(unint64_t *a1@<X8>)
{
  result = VerbSemantic.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252C97EB0()
{
  v0 = VerbSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == VerbSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_252C97F4C()
{
  v0 = VerbSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == VerbSemantic.rawValue.getter() && v2 == v3)
  {

    v6 = 1;
  }

  else
  {
    v5 = sub_252E37DB4();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_252C97FFC()
{
  v0 = VerbSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == VerbSemantic.rawValue.getter() && v2 == v3)
  {

    v6 = 1;
  }

  else
  {
    v5 = sub_252E37DB4();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_252C980AC()
{
  v0 = VerbSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == VerbSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_252C98158(uint64_t a1, uint64_t a2)
{
  v4 = sub_252C98488();
  v5 = sub_252C984DC();
  v6 = sub_252C98530();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_252C981CC()
{
  result = qword_27F544920;
  if (!qword_27F544920)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VerbSemantic, &type metadata for VerbSemantic, v0, v1);
    atomic_store(result, &qword_27F544920);
  }

  return result;
}

unint64_t sub_252C98224()
{
  result = qword_27F544928;
  if (!qword_27F544928)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VerbSemantic, &type metadata for VerbSemantic, v0, v1);
    atomic_store(result, &qword_27F544928);
  }

  return result;
}

unint64_t sub_252C9827C()
{
  result = qword_27F544930;
  if (!qword_27F544930)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F544938, &qword_252E58E10);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F544930);
  }

  return result;
}

unint64_t sub_252C982E4()
{
  result = qword_27F544940;
  if (!qword_27F544940)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VerbSemantic, &type metadata for VerbSemantic, v0, v1);
    atomic_store(result, &qword_27F544940);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VerbSemantic(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VerbSemantic(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_252C98488()
{
  result = qword_27F544948;
  if (!qword_27F544948)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VerbSemantic, &type metadata for VerbSemantic, v0, v1);
    atomic_store(result, &qword_27F544948);
  }

  return result;
}

unint64_t sub_252C984DC()
{
  result = qword_27F544950;
  if (!qword_27F544950)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VerbSemantic, &type metadata for VerbSemantic, v0, v1);
    atomic_store(result, &qword_27F544950);
  }

  return result;
}

unint64_t sub_252C98530()
{
  result = qword_27F544958;
  if (!qword_27F544958)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VerbSemantic, &type metadata for VerbSemantic, v0, v1);
    atomic_store(result, &qword_27F544958);
  }

  return result;
}

HomeAutomationInternal::ChargingState_optional __swiftcall ChargingState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ChargingState.rawValue.getter()
{
  if (*v0)
  {
    return 0x524148435F544F4ELL;
  }

  else
  {
    return 0x474E494752414843;
  }
}

uint64_t sub_252C98658(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xEC000000474E4947;
  if (v2 != 1)
  {
    v3 = 0xEE00454C42414547;
  }

  if (*a1)
  {
    v4 = 0x524148435F544F4ELL;
  }

  else
  {
    v4 = 0x474E494752414843;
  }

  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  v6 = 0xEC000000474E4947;
  if (*a2 != 1)
  {
    v6 = 0xEE00454C42414547;
  }

  if (*a2)
  {
    v7 = 0x524148435F544F4ELL;
  }

  else
  {
    v7 = 0x474E494752414843;
  }

  if (*a2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252C9874C()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C98804(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252C988A8(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252C98968(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEC000000474E4947;
  if (v2 != 1)
  {
    v4 = 0xEE00454C42414547;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0x524148435F544F4ELL;
  }

  else
  {
    v6 = 0x474E494752414843;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

HomeAutomationInternal::BatteryState_optional __swiftcall BatteryState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

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

uint64_t sub_252C98A7C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0xEE004C414D524F4ELL;
  }

  else
  {
    v2 = 0xEB00000000574F4CLL;
  }

  if (*a2)
  {
    v3 = 0xEE004C414D524F4ELL;
  }

  else
  {
    v3 = 0xEB00000000574F4CLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_252E37DB4();
  }

  return v4 & 1;
}

uint64_t sub_252C98B20()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C98BA4(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252C98C14(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C98C94@<X0>(char *a2@<X8>)
{
  v3 = sub_252E37B74();

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

void sub_252C98CF4(void *a1@<X8>)
{
  v2 = 0xEB00000000574F4CLL;
  if (*v1)
  {
    v2 = 0xEE004C414D524F4ELL;
  }

  *a1 = 0x5F59524554544142;
  a1[1] = v2;
}

unint64_t sub_252C98D38()
{
  result = qword_27F544960;
  if (!qword_27F544960)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ChargingState, &type metadata for ChargingState, v0, v1);
    atomic_store(result, &qword_27F544960);
  }

  return result;
}

unint64_t sub_252C98D90()
{
  result = qword_27F544968;
  if (!qword_27F544968)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BatteryState, &type metadata for BatteryState, v0, v1);
    atomic_store(result, &qword_27F544968);
  }

  return result;
}

uint64_t sub_252C98E18(uint64_t a1)
{
  v71 = a1;
  v88 = sub_252E32E84();
  v76 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for HomeStore(0);
  v3 = static HomeStore.shared.getter(v2);
  v4 = sub_2529DA2BC();

  v97[0] = MEMORY[0x277D84F90];
  v77 = v4;
  if (v4 >> 62)
  {
    goto LABEL_141;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v5)
  {
    v6 = 0;
    v91 = (v77 & 0xC000000000000001);
    v85 = v5;
    v86 = (v77 + 32);
    v89 = (v76 + 8);
    v90 = v77 & 0xFFFFFFFFFFFFFF8;
    v84 = "tity with accessoryID ";
    v83 = ". Returning .robotVacuumCleaner";
    v82 = "MatterAccessory.swift";
    v81 = "for accessoryID ";
    v80 = "MatterAccessoryManager.swift";
    v78 = "Modified user task: ";
    v79 = "deviceEntity(for:)";
    do
    {
      if (v91)
      {
        v30 = v6;
        v7 = MEMORY[0x2530ADF00](v6, v77);
        v9 = __OFADD__(v30, 1);
        v10 = v30 + 1;
        if (v9)
        {
          goto LABEL_135;
        }
      }

      else
      {
        if (v6 >= *(v90 + 16))
        {
          goto LABEL_136;
        }

        v7 = *&v86[8 * v6];
        v8 = v6;

        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          goto LABEL_135;
        }
      }

      v93 = v10;
      v11 = [*&v7[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate] uniqueIdentifier];
      v12 = v87;
      sub_252E32E64();

      v95 = sub_252E32E24();
      v96 = v13;
      v14 = (*v89)(v12, v88);
      v15 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v14);
      v16 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      swift_beginAccess();
      v17 = *&v15[v16];
      v92 = v7;
      v94 = v15;
      if (v17 >> 62)
      {
        v18 = sub_252E378C4();
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18)
      {
        v19 = 0;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](v19, v17);
            v21 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              goto LABEL_129;
            }
          }

          else
          {
            if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_130;
            }

            v21 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
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
LABEL_141:
              v5 = sub_252E378C4();
              goto LABEL_3;
            }
          }

          sub_252E36744();

          if (v98[1])
          {
            if (v98[0] == v95 && v98[1] == v96)
            {

              goto LABEL_30;
            }

            v20 = sub_252E37DB4();

            if (v20)
            {
              break;
            }
          }

          ++v19;
          if (v21 == v18)
          {
            goto LABEL_24;
          }
        }

LABEL_30:

        v26 = sub_252BF8258();
        v25 = v85;
        if (!v26)
        {
          goto LABEL_36;
        }

        if (!*(v26 + 2))
        {

LABEL_36:
          if (qword_27F53F4B0 != -1)
          {
            swift_once();
          }

          v29 = sub_252E36AD4();
          __swift_project_value_buffer(v29, qword_27F544CB8);
          v98[0] = 0;
          v98[1] = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000036, v78 | 0x8000000000000000);
          MEMORY[0x2530AD570](v95, v96);

          MEMORY[0x2530AD570](0xD00000000000001FLL, v84 | 0x8000000000000000);
          sub_252CC4050(v98[0], v98[1], 0xD000000000000075, v83 | 0x8000000000000000, 1701869940, 0xE400000000000000, 102);

          goto LABEL_39;
        }

        v27 = v26;

        if (!*(v27 + 2))
        {
          goto LABEL_140;
        }

        v28 = *(v27 + 4);

        if (v28 != 46)
        {

          goto LABEL_41;
        }
      }

      else
      {
LABEL_24:

        if (qword_27F53F560 != -1)
        {
          swift_once();
        }

        v22 = sub_252E36AD4();
        __swift_project_value_buffer(v22, qword_27F544EC8);
        v98[0] = 0;
        v98[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000040, v82 | 0x8000000000000000);
        v24 = v95;
        v23 = v96;
        MEMORY[0x2530AD570](v95, v96);
        sub_252CC4050(v98[0], v98[1], 0xD00000000000007CLL, v81 | 0x8000000000000000, 0xD000000000000012, v80 | 0x8000000000000000, 375);

        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v22, qword_27F544CB8);
        v98[0] = 0;
        v98[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000027, v79 | 0x8000000000000000);
        MEMORY[0x2530AD570](v24, v23);

        MEMORY[0x2530AD570](0xD00000000000001FLL, v84 | 0x8000000000000000);
        sub_252CC4050(v98[0], v98[1], 0xD000000000000075, v83 | 0x8000000000000000, 1701869940, 0xE400000000000000, 96);
        v25 = v85;
LABEL_39:
      }

      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
LABEL_41:
      v6 = v93;
    }

    while (v93 != v25);
    v31 = v97[0];
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v32 = *(v71 + 16);
  if (v32)
  {
    v33 = 0;
    v73 = v71 + 32;
    v34 = (v31 >> 62) & 1;
    if (v31 < 0)
    {
      LODWORD(v34) = 1;
    }

    LODWORD(v86) = v34;
    v89 = (v31 & 0xC000000000000001);
    v84 = v31 + 32;
    v85 = (v76 + 8);
    v76 = "Modified user task: ";
    v81 = ". Returning .robotVacuumCleaner";
    v82 = "tity with accessoryID ";
    v79 = "for accessoryID ";
    v80 = "MatterAccessory.swift";
    v78 = "MatterAccessoryManager.swift";
    v35 = MEMORY[0x277D84F90];
    v77 = "deviceEntity(for:)";
    v83 = v31;
    v72 = v32;
LABEL_52:
    v74 = v35;
    while (1)
    {
      if (v33 >= v32)
      {
        goto LABEL_138;
      }

      v36 = v33;
      memcpy(v98, (v73 + 504 * v33), sizeof(v98));
      if (__OFADD__(v36, 1))
      {
        goto LABEL_139;
      }

      v75 = v36 + 1;
      if (!*(v98[14] + 16) && !*(v98[15] + 16))
      {
        sub_2529353AC(v98, v97);
LABEL_117:
        v35 = v74;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v99 = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2529AA480(0, *(v35 + 16) + 1, 1);
          v35 = v99;
        }

        v69 = *(v35 + 16);
        v68 = *(v35 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_2529AA480((v68 > 1), v69 + 1, 1);
          v35 = v99;
        }

        *(v35 + 16) = v69 + 1;
        memcpy((v35 + 504 * v69 + 32), v98, 0x1F8uLL);
        v32 = v72;
        v33 = v75;
        if (v75 == v72)
        {
          goto LABEL_124;
        }

        goto LABEL_52;
      }

      sub_2529353AC(v98, v97);
      v37 = 0;
      v38 = 0;
      if (!v86)
      {
        goto LABEL_60;
      }

LABEL_58:
      if (v38 != sub_252E378C4())
      {
        break;
      }

LABEL_104:
      v63 = 0;
      while (v37 != v63)
      {
        if (v89)
        {
          MEMORY[0x2530ADF00](v63, v31);
          if (__OFADD__(v63, 1))
          {
            goto LABEL_133;
          }
        }

        else
        {
          if (v63 >= *(v31 + 16))
          {
            goto LABEL_134;
          }

          if (__OFADD__(v63, 1))
          {
            goto LABEL_133;
          }
        }

        memcpy(v97, v98, sizeof(v97));
        sub_252BB2B50(MEMORY[0x277D84F90]);
        v65 = v64;
        v66 = sub_252D68B70(v64);

        ++v63;
        if (v66)
        {
          goto LABEL_117;
        }
      }

      sub_252935408(v98);
      v32 = v72;
      v35 = v74;
      v33 = v75;
      if (v75 == v72)
      {
        goto LABEL_124;
      }
    }

    while (1)
    {
      if (v89)
      {
        v39 = MEMORY[0x2530ADF00](v38, v31);
        v9 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v9)
        {
          goto LABEL_131;
        }
      }

      else
      {
        if (v38 >= *(v31 + 16))
        {
          goto LABEL_132;
        }

        v39 = *(v84 + 8 * v38);

        v9 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v9)
        {
          goto LABEL_131;
        }
      }

      v90 = v40;
      memcpy(v97, v98, sizeof(v97));
      v91 = sub_252BADB6C();
      v93 = v39;
      v41 = [*(v39 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
      v42 = v87;
      sub_252E32E64();

      v95 = sub_252E32E24();
      v96 = v43;
      v44 = (*v85)(v42, v88);
      v45 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v44);
      v46 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      swift_beginAccess();
      v92 = v45;
      v47 = *&v45[v46];
      v94 = v37;
      v48 = v47 >> 62 ? sub_252E378C4() : *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v48)
      {
        break;
      }

      v49 = 0;
      while (1)
      {
        if ((v47 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v49, v47);
          v51 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            goto LABEL_126;
          }
        }

        else
        {
          if (v49 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_127;
          }

          v51 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }
        }

        sub_252E36744();

        if (v97[1])
        {
          if (v97[0] == v95 && v97[1] == v96)
          {

            goto LABEL_86;
          }

          v50 = sub_252E37DB4();

          if (v50)
          {
            break;
          }
        }

        ++v49;
        if (v51 == v48)
        {
          goto LABEL_80;
        }
      }

LABEL_86:

      v56 = sub_252BF8258();
      v55 = v94;
      if (!v56)
      {
        goto LABEL_92;
      }

      if (!*(v56 + 2))
      {

LABEL_92:
        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        v61 = sub_252E36AD4();
        __swift_project_value_buffer(v61, qword_27F544CB8);
        v97[0] = 0;
        v97[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000036, v76 | 0x8000000000000000);
        MEMORY[0x2530AD570](v95, v96);

        MEMORY[0x2530AD570](0xD00000000000001FLL, v82 | 0x8000000000000000);
        sub_252CC4050(v97[0], v97[1], 0xD000000000000075, v81 | 0x8000000000000000, 1701869940, 0xE400000000000000, 102);

        v31 = v83;
LABEL_95:

        goto LABEL_96;
      }

      v57 = v56;

      if (!*(v57 + 2))
      {
        goto LABEL_137;
      }

      v58 = *(v57 + 4);

      v31 = v83;
      if (v58 != 46)
      {
        v59 = v91;
        v60 = sub_252D50560(v91);
        goto LABEL_97;
      }

LABEL_96:
      v59 = v91;
      v60 = sub_25292AB64(v91);
LABEL_97:
      v62 = v60;

      if (v62)
      {
        goto LABEL_117;
      }

      v37 = v55 + 1;
      v38 = v90;
      if (v86)
      {
        goto LABEL_58;
      }

LABEL_60:
      if (v38 == *(v31 + 16))
      {
        goto LABEL_104;
      }
    }

LABEL_80:

    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v52 = sub_252E36AD4();
    __swift_project_value_buffer(v52, qword_27F544EC8);
    v97[0] = 0;
    v97[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000040, v80 | 0x8000000000000000);
    v54 = v95;
    v53 = v96;
    MEMORY[0x2530AD570](v95, v96);
    sub_252CC4050(v97[0], v97[1], 0xD00000000000007CLL, v79 | 0x8000000000000000, 0xD000000000000012, v78 | 0x8000000000000000, 375);

    v55 = v94;
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v52, qword_27F544CB8);
    v97[0] = 0;
    v97[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000027, v77 | 0x8000000000000000);
    MEMORY[0x2530AD570](v54, v53);

    MEMORY[0x2530AD570](0xD00000000000001FLL, v82 | 0x8000000000000000);
    sub_252CC4050(v97[0], v97[1], 0xD000000000000075, v81 | 0x8000000000000000, 1701869940, 0xE400000000000000, 96);
    v31 = v83;
    goto LABEL_95;
  }

  v35 = MEMORY[0x277D84F90];
LABEL_124:

  if (*(v35 + 16))
  {
    return v35;
  }

LABEL_128:
}

uint64_t sub_252C99DD8()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_80;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v3 = 0;
    v4 = 0;
    v48 = v1 & 0xC000000000000001;
    v44 = v1 + 32;
    v45 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = &OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue;
    v6 = &OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue;
    v46 = i;
    v47 = v1;
    while (1)
    {
      if (v48)
      {
        v7 = MEMORY[0x2530ADF00](v3, v1);
        v8 = __OFADD__(v3++, 1);
        if (v8)
        {
          break;
        }

        goto LABEL_11;
      }

      if (v3 >= *(v45 + 16))
      {
        goto LABEL_79;
      }

      v7 = *(v44 + 8 * v3);

      v8 = __OFADD__(v3++, 1);
      if (v8)
      {
        break;
      }

LABEL_11:
      v9 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      if (v9 >> 62)
      {
        v10 = sub_252E378C4();
        if (v10)
        {
          goto LABEL_13;
        }

LABEL_75:

        if (v3 == i)
        {
          return v4;
        }
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v10)
        {
          goto LABEL_75;
        }

LABEL_13:
        v53 = v10;
        if (v10 < 1)
        {
          goto LABEL_78;
        }

        v49 = v3;
        v54 = v9 & 0xC000000000000001;

        v11 = 0;
        v12 = v53;
        v52 = v9;
        do
        {
          if (v54)
          {
            v13 = MEMORY[0x2530ADF00](v11, v9);
            if (!v4)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v13 = *(v9 + 8 * v11 + 32);

            if (!v4)
            {
LABEL_38:
              v4 = *(v13 + *v5);
              if (v4)
              {
                if (!*(v4 + *v6))
                {

                  v4 = 0;
                  goto LABEL_71;
                }

LABEL_40:
              }

LABEL_70:

              goto LABEL_71;
            }
          }

          v14 = *v6;
          v15 = *(v4 + *v6);
          if (!v15)
          {
            goto LABEL_70;
          }

          v16 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit;

          v17 = sub_252A47810(v15 + v16);
          v18 = qword_2864A0BE8;
          v19 = unk_2864A0BF0;

          if (v17 == 5)
          {
            v20 = 2;
          }

          else
          {
            v20 = 3;
          }

          if (v17 == 1)
          {
            v20 = 1;
          }

          v21 = v18 == v17 || v19 == v17;
          v22 = v21 ? 0 : v20;
          v23 = *(v13 + *v5);
          v9 = v52;
          v12 = v53;
          if (!v23)
          {
            goto LABEL_70;
          }

          v24 = *(v23 + *v6);
          if (!v24)
          {
            goto LABEL_70;
          }

          v50 = v22;
          v51 = *v5;
          v25 = v6;
          v26 = v5;
          v27 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit;

          v28 = sub_252A47810(v24 + v27);
          v30 = qword_2864A0BE8;
          v29 = unk_2864A0BF0;

          if (v30 == v28 || v29 == v28)
          {
            v32 = 0;
          }

          else if (v28 == 1)
          {
            v32 = 1;
          }

          else
          {
            v32 = v28 == 5 ? 2 : 3;
          }

          v5 = v26;
          v6 = v25;
          v9 = v52;
          v12 = v53;
          v33 = *(v4 + v14);
          if (!v33)
          {
            goto LABEL_70;
          }

          if (*(v33 + 32))
          {
            goto LABEL_70;
          }

          v34 = *(v13 + v51);
          if (!v34)
          {
            goto LABEL_70;
          }

          v35 = *(v34 + *v25);
          if (!v35 || (*(v35 + 32) & 1) != 0)
          {
            goto LABEL_70;
          }

          if (v50 > 1u)
          {
            if (v50 == 2)
            {
              v37 = 0xE800000000000000;
              v36 = 0x6E6F697461727564;
            }

            else
            {
              v37 = 0xE700000000000000;
              v36 = 0x6E776F6E6B6E75;
            }
          }

          else
          {
            v36 = 0x74617265706D6574;
            v37 = 0xEB00000000657275;
            if (v50)
            {
              v36 = 0x61746E6563726570;
              v37 = 0xEA00000000006567;
            }
          }

          if (v32 > 1u)
          {
            if (v32 == 2)
            {
              v39 = 0xE800000000000000;
              v38 = 0x6E6F697461727564;
            }

            else
            {
              v39 = 0xE700000000000000;
              v38 = 0x6E776F6E6B6E75;
            }
          }

          else
          {
            v38 = 0x74617265706D6574;
            v39 = 0xEB00000000657275;
            if (v32)
            {
              v38 = 0x61746E6563726570;
              v39 = 0xEA00000000006567;
            }
          }

          v40 = *(v33 + 24);
          v41 = *(v35 + 24);
          if (v36 == v38 && v37 == v39)
          {

LABEL_68:
            v9 = v52;
            if (v40 < v41)
            {

              v4 = *(v13 + v51);
              goto LABEL_40;
            }

            goto LABEL_70;
          }

          v42 = sub_252E37DB4();

          if (v42)
          {
            goto LABEL_68;
          }

          v9 = v52;
LABEL_71:
          ++v11;
        }

        while (v12 != v11);

        i = v46;
        v1 = v47;
        v3 = v49;
        if (v49 == v46)
        {
          return v4;
        }
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    ;
  }

  return 0;
}

uint64_t sub_252C9A2AC()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_80;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v3 = 0;
    v4 = 0;
    v48 = v1 & 0xC000000000000001;
    v44 = v1 + 32;
    v45 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = &OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue;
    v6 = &OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue;
    v46 = i;
    v47 = v1;
    while (1)
    {
      if (v48)
      {
        v7 = MEMORY[0x2530ADF00](v3, v1);
        v8 = __OFADD__(v3++, 1);
        if (v8)
        {
          break;
        }

        goto LABEL_11;
      }

      if (v3 >= *(v45 + 16))
      {
        goto LABEL_79;
      }

      v7 = *(v44 + 8 * v3);

      v8 = __OFADD__(v3++, 1);
      if (v8)
      {
        break;
      }

LABEL_11:
      v9 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      if (v9 >> 62)
      {
        v10 = sub_252E378C4();
        if (v10)
        {
          goto LABEL_13;
        }

LABEL_75:

        if (v3 == i)
        {
          return v4;
        }
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v10)
        {
          goto LABEL_75;
        }

LABEL_13:
        v53 = v10;
        if (v10 < 1)
        {
          goto LABEL_78;
        }

        v49 = v3;
        v54 = v9 & 0xC000000000000001;

        v11 = 0;
        v12 = v53;
        v52 = v9;
        do
        {
          if (v54)
          {
            v13 = MEMORY[0x2530ADF00](v11, v9);
            if (!v4)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v13 = *(v9 + 8 * v11 + 32);

            if (!v4)
            {
LABEL_38:
              v4 = *(v13 + *v5);
              if (v4)
              {
                if (!*(v4 + *v6))
                {

                  v4 = 0;
                  goto LABEL_71;
                }

LABEL_40:
              }

LABEL_70:

              goto LABEL_71;
            }
          }

          v14 = *v6;
          v15 = *(v4 + *v6);
          if (!v15)
          {
            goto LABEL_70;
          }

          v16 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit;

          v17 = sub_252A47810(v15 + v16);
          v18 = qword_2864A0BE8;
          v19 = unk_2864A0BF0;

          if (v17 == 5)
          {
            v20 = 2;
          }

          else
          {
            v20 = 3;
          }

          if (v17 == 1)
          {
            v20 = 1;
          }

          v21 = v18 == v17 || v19 == v17;
          v22 = v21 ? 0 : v20;
          v23 = *(v13 + *v5);
          v9 = v52;
          v12 = v53;
          if (!v23)
          {
            goto LABEL_70;
          }

          v24 = *(v23 + *v6);
          if (!v24)
          {
            goto LABEL_70;
          }

          v50 = v22;
          v51 = *v5;
          v25 = v6;
          v26 = v5;
          v27 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit;

          v28 = sub_252A47810(v24 + v27);
          v30 = qword_2864A0BE8;
          v29 = unk_2864A0BF0;

          if (v30 == v28 || v29 == v28)
          {
            v32 = 0;
          }

          else if (v28 == 1)
          {
            v32 = 1;
          }

          else
          {
            v32 = v28 == 5 ? 2 : 3;
          }

          v5 = v26;
          v6 = v25;
          v9 = v52;
          v12 = v53;
          v33 = *(v4 + v14);
          if (!v33)
          {
            goto LABEL_70;
          }

          if (*(v33 + 32))
          {
            goto LABEL_70;
          }

          v34 = *(v13 + v51);
          if (!v34)
          {
            goto LABEL_70;
          }

          v35 = *(v34 + *v25);
          if (!v35 || (*(v35 + 32) & 1) != 0)
          {
            goto LABEL_70;
          }

          if (v50 > 1u)
          {
            if (v50 == 2)
            {
              v37 = 0xE800000000000000;
              v36 = 0x6E6F697461727564;
            }

            else
            {
              v37 = 0xE700000000000000;
              v36 = 0x6E776F6E6B6E75;
            }
          }

          else
          {
            v36 = 0x74617265706D6574;
            v37 = 0xEB00000000657275;
            if (v50)
            {
              v36 = 0x61746E6563726570;
              v37 = 0xEA00000000006567;
            }
          }

          if (v32 > 1u)
          {
            if (v32 == 2)
            {
              v39 = 0xE800000000000000;
              v38 = 0x6E6F697461727564;
            }

            else
            {
              v39 = 0xE700000000000000;
              v38 = 0x6E776F6E6B6E75;
            }
          }

          else
          {
            v38 = 0x74617265706D6574;
            v39 = 0xEB00000000657275;
            if (v32)
            {
              v38 = 0x61746E6563726570;
              v39 = 0xEA00000000006567;
            }
          }

          v40 = *(v33 + 24);
          v41 = *(v35 + 24);
          if (v36 == v38 && v37 == v39)
          {

LABEL_68:
            v9 = v52;
            if (v41 < v40)
            {

              v4 = *(v13 + v51);
              goto LABEL_40;
            }

            goto LABEL_70;
          }

          v42 = sub_252E37DB4();

          if (v42)
          {
            goto LABEL_68;
          }

          v9 = v52;
LABEL_71:
          ++v11;
        }

        while (v12 != v11);

        i = v46;
        v1 = v47;
        v3 = v49;
        if (v49 == v46)
        {
          return v4;
        }
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    ;
  }

  return 0;
}

uint64_t sub_252C9A780()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v58 - v2;
  v4 = *(v0 + 24);
  if (v4 >> 62)
  {
    goto LABEL_116;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    return 0;
  }

  while (2)
  {
    v58 = v3;
    v67 = 0;
    v6 = 0;
    v3 = 0;
    v7 = 0;
    v63 = v4 & 0xC000000000000001;
    v60 = v4 & 0xFFFFFFFFFFFFFF8;
    v59 = v4 + 32;
    v8 = 0.0;
    v9 = &OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit;
    v61 = v5;
    v62 = v4;
LABEL_5:
    if (v63)
    {
      v10 = MEMORY[0x2530ADF00](v3, v4);
      v11 = __OFADD__(v3++, 1);
      if (v11)
      {
        goto LABEL_113;
      }
    }

    else
    {
      if (v3 >= *(v60 + 16))
      {
        goto LABEL_115;
      }

      v10 = *(v59 + 8 * v3);

      v11 = __OFADD__(v3++, 1);
      if (v11)
      {
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        v5 = sub_252E378C4();
        if (!v5)
        {
          return 0;
        }

        continue;
      }
    }

    break;
  }

  v12 = *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
  if (v12 >> 62)
  {
    v13 = sub_252E378C4();
    if (v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
LABEL_13:
      v68 = v13;
      if (v13 < 1)
      {
        goto LABEL_114;
      }

      v64 = v10;
      v65 = v3;
      v66 = v6;
      v69 = v12 & 0xC000000000000001;

      v14 = 0;
      v4 = v68;
      while (1)
      {
        if (v69)
        {
          v3 = MEMORY[0x2530ADF00](v14, v12);
          if (v7)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v3 = *(v12 + 8 * v14 + 32);

          if (v7)
          {
LABEL_19:
            v15 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
            if (v15)
            {
              v16 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
              if (v16)
              {
                v17 = *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
                if (v17)
                {
                  v18 = *v9;

                  v19 = sub_252A47810(v15 + v18);
                  if (v19 == 5)
                  {
                    v20 = 2;
                  }

                  else
                  {
                    v20 = 3;
                  }

                  if (v19 == 1)
                  {
                    v20 = 1;
                  }

                  if (qword_2864A0BE8 == v19 || unk_2864A0BF0 == v19)
                  {
                    v22 = 0;
                  }

                  else
                  {
                    v22 = v20;
                  }

                  v23 = sub_252A47810(v17 + *v9);
                  if (qword_2864A0BE8 == v23 || unk_2864A0BF0 == v23)
                  {
                    v25 = 0;
                  }

                  else if (v23 == 1)
                  {
                    v25 = 1;
                  }

                  else if (v23 == 5)
                  {
                    v25 = 2;
                  }

                  else
                  {
                    v25 = 3;
                  }

                  if (v22 == 2)
                  {
                    v27 = 0x6E6F697461727564;
                  }

                  else
                  {
                    v27 = 0x6E776F6E6B6E75;
                  }

                  if (v22 == 2)
                  {
                    v28 = 0xE800000000000000;
                  }

                  else
                  {
                    v28 = 0xE700000000000000;
                  }

                  if (v22)
                  {
                    v29 = 0x61746E6563726570;
                  }

                  else
                  {
                    v29 = 0x74617265706D6574;
                  }

                  if (v22)
                  {
                    v30 = 0xEA00000000006567;
                  }

                  else
                  {
                    v30 = 0xEB00000000657275;
                  }

                  if (v22 <= 1u)
                  {
                    v31 = v29;
                  }

                  else
                  {
                    v31 = v27;
                  }

                  if (v22 <= 1u)
                  {
                    v32 = v30;
                  }

                  else
                  {
                    v32 = v28;
                  }

                  v33 = v9;
                  if (v25 == 2)
                  {
                    v34 = 0x6E6F697461727564;
                  }

                  else
                  {
                    v34 = 0x6E776F6E6B6E75;
                  }

                  if (v25 == 2)
                  {
                    v35 = 0xE800000000000000;
                  }

                  else
                  {
                    v35 = 0xE700000000000000;
                  }

                  if (v25)
                  {
                    v36 = 0x61746E6563726570;
                  }

                  else
                  {
                    v36 = 0x74617265706D6574;
                  }

                  if (v25)
                  {
                    v37 = 0xEA00000000006567;
                  }

                  else
                  {
                    v37 = 0xEB00000000657275;
                  }

                  if (v25 <= 1u)
                  {
                    v38 = v36;
                  }

                  else
                  {
                    v38 = v34;
                  }

                  if (v25 <= 1u)
                  {
                    v39 = v37;
                  }

                  else
                  {
                    v39 = v35;
                  }

                  if (v31 == v38 && v32 == v39)
                  {

                    goto LABEL_94;
                  }

                  v40 = sub_252E37DB4();

                  if (v40)
                  {
LABEL_94:
                    v41 = *(v17 + 24);
                    v3 = *(v17 + 32);

                    if ((v3 & 1) == 0)
                    {
                      v4 = v68;
                      v11 = __OFADD__(v67++, 1);
                      if (v11)
                      {
                        goto LABEL_112;
                      }

                      v9 = v33;
                      v8 = v8 + v41;
                      goto LABEL_16;
                    }

                    v9 = v33;
                  }

                  else
                  {

                    v9 = v33;
                  }

LABEL_99:
                  v4 = v68;
                  goto LABEL_16;
                }

                goto LABEL_50;
              }
            }

            goto LABEL_15;
          }
        }

        v7 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
        if (v7)
        {
          v4 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
          if (!v4 || (*(v4 + 32) & 1) != 0)
          {

            v7 = 0;
            goto LABEL_99;
          }

          v8 = *(v4 + 24);

          v11 = __OFADD__(v67++, 1);
          if (v11)
          {
            __break(1u);
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

          swift_beginAccess();
          if (*(v4 + 16))
          {

            v66 = *(v4 + 16);
            v26 = v66;
          }

LABEL_50:

          goto LABEL_99;
        }

LABEL_15:

LABEL_16:
        if (v4 == ++v14)
        {

          v3 = v65;
          v6 = v66;
          v5 = v61;
          v4 = v62;
          if (v65 == v61)
          {
            goto LABEL_102;
          }

          goto LABEL_5;
        }
      }
    }
  }

  if (v3 != v5)
  {
    goto LABEL_5;
  }

LABEL_102:
  if (!v7)
  {
LABEL_107:

    return 0;
  }

  v42 = OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue;
  v43 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
  if (!v43)
  {

    goto LABEL_107;
  }

  type metadata accessor for HomeAutomationAbstractMeasurement.Builder(0);
  swift_allocObject();
  v44 = sub_252D857C4();
  *(v44 + 16) = v8 / v67;
  *(v44 + 24) = 0;
  v45 = v43 + *v9;
  v46 = v58;
  sub_252956C1C(v45, v58);
  v47 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_unit;
  swift_beginAccess();

  sub_252956C98(v46, v44 + v47);
  swift_endAccess();
  type metadata accessor for HomeAutomationAbstractMeasurement(0);
  swift_allocObject();
  v48 = sub_252D859B8(v44);
  if (v6)
  {
    swift_beginAccess();
    v49 = v48[2];
    v48[2] = v6;
    v50 = v6;
  }

  else
  {
    v50 = 0;
  }

  type metadata accessor for HomeAutomationEntityStateValue.Builder(0);
  v52 = swift_allocObject();
  v53 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
  v54 = sub_252E36324();
  (*(*(v54 - 8) + 56))(v52 + v53, 1, 1, v54);
  v55 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue;
  *(v52 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue) = 0;
  *(v52 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_BOOLeanValue) = 0;
  v56 = v58;
  sub_252956C1C(v7 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v58);
  swift_beginAccess();
  sub_252956C98(v56, v52 + v53);
  swift_endAccess();
  *(v52 + v55) = *(v7 + v42);
  LOBYTE(v56) = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);

  type metadata accessor for HomeAutomationEntityStateValue(0);
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  sub_252956C1C(v52 + v53, v57 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);
  swift_setDeallocating();
  sub_252938BBC(v52 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue);
  swift_deallocClassInstance();
  result = v57;
  *(v57 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue) = v48;
  *(v57 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue) = v56;
  return result;
}

uint64_t sub_252C9AFBC()
{
  result = sub_252C9A2AC();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

    if (!v1)
    {
      return 0;
    }

    v2 = *(v1 + 24);
    v3 = *(v1 + 32);

    if (v3)
    {
      return 0;
    }

    result = sub_252C99DD8();
    if (result)
    {
      v4 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

      if (v4)
      {
        v5 = *(v4 + 24);
        v6 = *(v4 + 32);

        if ((v6 & 1) == 0)
        {
          return round(v5) == round(v2);
        }
      }

      return 0;
    }
  }

  return result;
}

BOOL sub_252C9B080()
{
  v0 = sub_252C9A2AC();
  if (v0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
    if (v1)
    {
      v2 = sub_252A47810(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
      if (qword_2864A0BE8 == v2 || unk_2864A0BF0 == v2)
      {
        goto LABEL_18;
      }

      v4 = sub_252E37DB4();

      if (v4)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  v5 = sub_252C99DD8();
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
  if (!v6)
  {

    return 0;
  }

  v7 = sub_252A47810(v6 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
  if (qword_2864A0BE8 == v7 || unk_2864A0BF0 == v7)
  {
LABEL_18:

    return 1;
  }

  v10 = sub_252E37DB4();

  return (v10 & 1) != 0;
}

uint64_t sub_252C9B2B8()
{
  v0 = sub_252C9A2AC();
  if (v0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
    if (v1)
    {
      v2 = sub_252A47810(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
      v3 = qword_2864A0BE8 == v2 || unk_2864A0BF0 == v2;
      if (!v3 && v2 == 1)
      {
        goto LABEL_22;
      }

      v4 = sub_252E37DB4();

      if (v4)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  v5 = sub_252C99DD8();
  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
    if (v6)
    {
      v7 = sub_252A47810(v6 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
      v8 = qword_2864A0BE8 == v7 || unk_2864A0BF0 == v7;
      if (!v8 && v7 == 1)
      {
LABEL_22:

        return 1;
      }

      v10 = sub_252E37DB4();

      if (v10)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

id sub_252C9B4DC()
{
  v1 = *(v0 + 208);
  v2 = [objc_allocWithZone(type metadata accessor for DiscoverHomeIntent()) init];
  memcpy(v6, (v0 + 209), sizeof(v6));
  sub_252BAC7E4();
  type metadata accessor for HomeFilter();
  v3 = sub_252E37254();

  [v2 setFilters_];

  if (v1 != 9)
  {
    if (sub_252A0D524(v1, 5u))
    {
      v4 = 1;
      goto LABEL_11;
    }

    if (sub_252A0D524(v1, 7u))
    {
      v4 = 2;
      goto LABEL_11;
    }

    if (sub_252A0D524(v1, 6u))
    {
      v4 = 3;
      goto LABEL_11;
    }

    if (sub_252A0D524(v1, 4u))
    {
      v4 = 4;
      goto LABEL_11;
    }
  }

  v4 = 0;
LABEL_11:
  [v2 setDiscoveryType_];
  return v2;
}

uint64_t DeltaSemantic.rawValue.getter()
{
  if (*v0)
  {
    return 0x6573616572636564;
  }

  else
  {
    return 0x6573616572636E69;
  }
}

uint64_t static DeltaSemantic.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6573616572636564;
  }

  else
  {
    v2 = 0x6573616572636E69;
  }

  if (*a2)
  {
    v3 = 0x6573616572636564;
  }

  else
  {
    v3 = 0x6573616572636E69;
  }

  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_252E37DB4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

HomeAutomationInternal::DeltaSemantic_optional __swiftcall DeltaSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

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

uint64_t sub_252C9B758(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6573616572636564;
  }

  else
  {
    v2 = 0x6573616572636E69;
  }

  if (*a2)
  {
    v3 = 0x6573616572636564;
  }

  else
  {
    v3 = 0x6573616572636E69;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_252E37DB4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_252C9B7D4()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C9B840(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252C9B890(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C9B8F8@<X0>(char *a2@<X8>)
{
  v3 = sub_252E37B74();

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

void sub_252C9B958(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0x6573616572636564;
  }

  else
  {
    v2 = 0x6573616572636E69;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

uint64_t sub_252C9B984(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6573616572636564;
  }

  else
  {
    v2 = 0x6573616572636E69;
  }

  if (*a2)
  {
    v3 = 0x6573616572636564;
  }

  else
  {
    v3 = 0x6573616572636E69;
  }

  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_252E37DB4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_252C9BA00(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x6573616572636564;
  }

  else
  {
    v3 = 0x6573616572636E69;
  }

  if (v2)
  {
    v4 = 0x6573616572636564;
  }

  else
  {
    v4 = 0x6573616572636E69;
  }

  if (v3 == v4)
  {
    swift_bridgeObjectRelease_n();
    v5 = 1;
  }

  else
  {
    v6 = sub_252E37DB4();
    swift_bridgeObjectRelease_n();
    v5 = v6 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_252C9BA8C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6573616572636564;
  }

  else
  {
    v2 = 0x6573616572636E69;
  }

  if (*a2)
  {
    v3 = 0x6573616572636564;
  }

  else
  {
    v3 = 0x6573616572636E69;
  }

  if (v2 == v3)
  {
    swift_bridgeObjectRelease_n();
    v4 = 1;
  }

  else
  {
    v5 = sub_252E37DB4();
    swift_bridgeObjectRelease_n();
    v4 = v5 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_252C9BB18(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x6573616572636564;
  }

  else
  {
    v3 = 0x6573616572636E69;
  }

  if (v2)
  {
    v4 = 0x6573616572636564;
  }

  else
  {
    v4 = 0x6573616572636E69;
  }

  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  swift_bridgeObjectRelease_n();
  return v5 & 1;
}

uint64_t sub_252C9BC54(uint64_t a1, uint64_t a2)
{
  v4 = sub_252C9BE44();
  v5 = sub_252C9BE98();
  v6 = sub_252C9BEEC();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_252C9BCC8()
{
  result = qword_27F544970;
  if (!qword_27F544970)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeltaSemantic, &type metadata for DeltaSemantic, v0, v1);
    atomic_store(result, &qword_27F544970);
  }

  return result;
}

unint64_t sub_252C9BD20()
{
  result = qword_27F544978;
  if (!qword_27F544978)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeltaSemantic, &type metadata for DeltaSemantic, v0, v1);
    atomic_store(result, &qword_27F544978);
  }

  return result;
}

unint64_t sub_252C9BD78()
{
  result = qword_27F544980;
  if (!qword_27F544980)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F544988, &qword_252E591E0);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F544980);
  }

  return result;
}

unint64_t sub_252C9BDE0()
{
  result = qword_27F544990;
  if (!qword_27F544990)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeltaSemantic, &type metadata for DeltaSemantic, v0, v1);
    atomic_store(result, &qword_27F544990);
  }

  return result;
}

unint64_t sub_252C9BE44()
{
  result = qword_27F544998;
  if (!qword_27F544998)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeltaSemantic, &type metadata for DeltaSemantic, v0, v1);
    atomic_store(result, &qword_27F544998);
  }

  return result;
}

unint64_t sub_252C9BE98()
{
  result = qword_27F5449A0;
  if (!qword_27F5449A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeltaSemantic, &type metadata for DeltaSemantic, v0, v1);
    atomic_store(result, &qword_27F5449A0);
  }

  return result;
}

unint64_t sub_252C9BEEC()
{
  result = qword_27F5449A8;
  if (!qword_27F5449A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeltaSemantic, &type metadata for DeltaSemantic, v0, v1);
    atomic_store(result, &qword_27F5449A8);
  }

  return result;
}

uint64_t sub_252C9BF78()
{
  type metadata accessor for SetRangeTemperatureValueHandleDelegate();

  return swift_allocObject();
}

id sub_252C9BFA8(uint64_t a1)
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544C70);
  sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E90B00, 0xD00000000000008FLL, 0x8000000252E909D0);
  type metadata accessor for HomeAttributeValue();
  v3 = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
  v4 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v5 = sub_252E36F04();
  v6 = [v4 initWithIdentifier:0 displayString:v5];

  v7 = v6;
  [v7 setTaskType_];
  [v7 setAttribute_];
  [v7 setValue_];

  return v7;
}

uint64_t sub_252C9C100(void *a1)
{
  v2 = sub_252CD95D8();
  v3 = *(v2 + 16);
  v4 = 32;
  do
  {
    v5 = v3;
    if (!v3)
    {
      break;
    }

    v6 = *(v2 + v4);
    v4 += 8;
    --v3;
  }

  while (v6 != 19);

  v7 = sub_252CD95D8();
  v8 = *(v7 + 16);
  v9 = 32;
  do
  {
    if (!v8)
    {

      goto LABEL_16;
    }

    v10 = *(v7 + v9);
    v9 += 8;
    --v8;
  }

  while (v10 != 17);

  if (!v5)
  {
LABEL_16:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v46 = sub_252E36AD4();
    __swift_project_value_buffer(v46, qword_27F544C70);
    v47 = 0xD00000000000005ELL;
    v48 = 0x8000000252E90970;
    v49 = 47;
    goto LABEL_22;
  }

  v11 = [a1 userTask];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 value];

    if (v13)
    {
      v14 = [v13 rangeValue];

      if (v14)
      {
        [v14 lowerValue];
        v16 = v15;

        v17 = [a1 userTask];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 value];

          if (v19)
          {
            v20 = [v19 rangeValue];

            if (v20)
            {
              [v20 upperValue];
              v22 = v21;

              v23 = sub_252C6E240(a1);
              v24 = type metadata accessor for HomeAttributeValue();
              v25 = objc_allocWithZone(v24);
              v26 = sub_252E36F04();
              v27 = [v25 initWithIdentifier:0 displayString:v26];

              v28 = v27;
              [v28 setDoubleValue_];
              [v28 setUnit_];
              [v28 setType_];

              v29 = objc_allocWithZone(v24);
              v30 = sub_252E36F04();
              v31 = [v29 initWithIdentifier:0 displayString:v30];

              v32 = v31;
              [v32 setDoubleValue_];
              [v32 setUnit_];
              [v32 setType_];

              v33 = type metadata accessor for HomeUserTask();
              v34 = objc_allocWithZone(v33);
              v35 = v28;
              v36 = sub_252E36F04();
              v37 = [v34 initWithIdentifier:0 displayString:v36];

              v38 = v37;
              [v38 setTaskType_];
              [v38 setAttribute_];
              [v38 setValue_];

              v39 = objc_allocWithZone(v33);
              v40 = v32;
              v41 = sub_252E36F04();
              v42 = [v39 initWithIdentifier:0 displayString:v41];

              v43 = v42;
              [v43 setTaskType_];
              [v43 setAttribute_];
              [v43 setValue_];

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
              v44 = swift_allocObject();
              *(v44 + 16) = xmmword_252E3C3D0;
              *(v44 + 32) = v38;
              *(v44 + 40) = v43;

              return v44;
            }
          }
        }
      }
    }
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v50 = sub_252E36AD4();
  __swift_project_value_buffer(v50, qword_27F544C70);
  v47 = 0xD000000000000028;
  v48 = 0x8000000252E90AD0;
  v49 = 53;
LABEL_22:
  sub_252CC4050(v47, v48, 0xD00000000000008FLL, 0x8000000252E909D0, 0xD00000000000006ELL, 0x8000000252E90A60, v49);
  return 0;
}

id sub_252C9C61C(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  v4 = [v2 taskType];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [a1 userTask];
  if (!v5)
  {
LABEL_9:
    sub_252C515AC();
    return 0;
  }

  v6 = v5;
  v7 = [v5 attribute];

  if (v7 == 6 && (sub_252CCFCB8() & 1) != 0)
  {
    result = [a1 userTask];
    if (!result)
    {
      return result;
    }

    v9 = result;
    v10 = [result value];

    if (v10)
    {
      v11 = [v10 type];

      return (v11 == 6);
    }
  }

  return 0;
}

uint64_t sub_252C9C724(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449B0, &unk_252E59320);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  HomeDeviceType.umbrellaCategory.getter(a1, &v13 - v3);
  v5 = sub_252E35A84();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v4, 1, v5);
  if (v7 == 1)
  {
    sub_252C9E244(v4);
    return 5;
  }

  else
  {
    MEMORY[0x28223BE20](v7);
    v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v10, v4, v5);
    v11 = (*(v6 + 88))(v10, v5);
    if (MEMORY[0x277D16018] && v11 == *MEMORY[0x277D16018])
    {
      v8 = 0;
    }

    else if (MEMORY[0x277D15FC8] && v11 == *MEMORY[0x277D15FC8])
    {
      v8 = 1;
    }

    else if (MEMORY[0x277D15FE8] && v11 == *MEMORY[0x277D15FE8])
    {
      v8 = 2;
    }

    else if (MEMORY[0x277D15FD0] && v11 == *MEMORY[0x277D15FD0])
    {
      v8 = 3;
    }

    else if (MEMORY[0x277D15FF8] && v11 == *MEMORY[0x277D15FF8])
    {
      v8 = 4;
    }

    else
    {
      (*(v6 + 8))(v10, v5);
      v8 = 5;
    }

    (*(v6 + 8))(v4, v5);
  }

  return v8;
}

uint64_t HomeDeviceType.umbrellaCategory.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D158D8];
      goto LABEL_41;
    case 2:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15880];
      goto LABEL_41;
    case 3:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15638];
      goto LABEL_41;
    case 4:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15758];
      goto LABEL_41;
    case 5:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15818];
      goto LABEL_41;
    case 6:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15878];
      goto LABEL_41;
    case 7:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D156D0];
      goto LABEL_41;
    case 8:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15748];
      goto LABEL_41;
    case 9:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D158A8];
      goto LABEL_41;
    case 10:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D157A0];
      goto LABEL_41;
    case 11:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D157C0];
      goto LABEL_41;
    case 12:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D156C8];
      goto LABEL_41;
    case 13:
    case 27:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15820];
      goto LABEL_41;
    case 14:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D156F8];
      goto LABEL_41;
    case 15:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15608];
      goto LABEL_41;
    case 16:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15670];
      goto LABEL_41;
    case 17:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D156A8];
      goto LABEL_41;
    case 18:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15738];
      goto LABEL_41;
    case 19:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15710];
      goto LABEL_41;
    case 20:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15680];
      goto LABEL_41;
    case 21:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15790];
      goto LABEL_41;
    case 22:
    case 28:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15890];
      goto LABEL_41;
    case 23:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15728];
      goto LABEL_41;
    case 24:
    case 42:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D156B8];
      goto LABEL_41;
    case 25:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15620];
      goto LABEL_41;
    case 26:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D158B8];
      goto LABEL_41;
    case 29:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15690];
      goto LABEL_41;
    case 30:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D157D0];
      goto LABEL_41;
    case 31:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15840];
      goto LABEL_41;
    case 32:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15768];
      goto LABEL_41;
    case 33:
    case 35:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15858];
      goto LABEL_41;
    case 34:
    case 45:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15860];
      goto LABEL_41;
    case 36:
    case 41:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15628];
      goto LABEL_41;
    case 38:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D158C8];
      goto LABEL_41;
    case 39:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15658];
      goto LABEL_41;
    case 40:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      MEMORY[0x28223BE20](v3);
      v6 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = MEMORY[0x277D15778];
LABEL_41:
      (*(v4 + 104))(v6, *v7, v3);
      sub_252E35A44();
      (*(v4 + 8))(v6, v3);
      v46 = sub_252E35A84();
      result = (*(*(v46 - 8) + 56))(a2, 0, 1, v46);
      break;
    default:
      v13 = sub_252E35A84();
      v14 = *(*(v13 - 8) + 56);

      result = v14(a2, 1, 1, v13);
      break;
  }

  return result;
}

uint64_t HomeDeviceType.serviceKind.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v3 = MEMORY[0x277D158D8];
      goto LABEL_39;
    case 2:
      v3 = MEMORY[0x277D15880];
      goto LABEL_39;
    case 3:
      v3 = MEMORY[0x277D15638];
      goto LABEL_39;
    case 4:
      v3 = MEMORY[0x277D15758];
      goto LABEL_39;
    case 5:
      v3 = MEMORY[0x277D15818];
      goto LABEL_39;
    case 6:
      v3 = MEMORY[0x277D15878];
      goto LABEL_39;
    case 7:
      v3 = MEMORY[0x277D156D0];
      goto LABEL_39;
    case 8:
      v3 = MEMORY[0x277D15748];
      goto LABEL_39;
    case 9:
      v3 = MEMORY[0x277D158A8];
      goto LABEL_39;
    case 10:
      v3 = MEMORY[0x277D157A0];
      goto LABEL_39;
    case 11:
      v3 = MEMORY[0x277D157C0];
      goto LABEL_39;
    case 12:
      v3 = MEMORY[0x277D156C8];
      goto LABEL_39;
    case 13:
    case 27:
      v3 = MEMORY[0x277D15820];
      goto LABEL_39;
    case 14:
      v3 = MEMORY[0x277D156F8];
      goto LABEL_39;
    case 15:
      v3 = MEMORY[0x277D15608];
      goto LABEL_39;
    case 16:
      v3 = MEMORY[0x277D15670];
      goto LABEL_39;
    case 17:
      v3 = MEMORY[0x277D156A8];
      goto LABEL_39;
    case 18:
      v3 = MEMORY[0x277D15738];
      goto LABEL_39;
    case 19:
      v3 = MEMORY[0x277D15710];
      goto LABEL_39;
    case 20:
      v3 = MEMORY[0x277D15680];
      goto LABEL_39;
    case 21:
      v3 = MEMORY[0x277D15790];
      goto LABEL_39;
    case 22:
    case 28:
      v3 = MEMORY[0x277D15890];
      goto LABEL_39;
    case 23:
      v3 = MEMORY[0x277D15728];
      goto LABEL_39;
    case 24:
    case 42:
      v3 = MEMORY[0x277D156B8];
      goto LABEL_39;
    case 25:
      v3 = MEMORY[0x277D15620];
      goto LABEL_39;
    case 26:
      v3 = MEMORY[0x277D158B8];
      goto LABEL_39;
    case 29:
      v3 = MEMORY[0x277D15690];
      goto LABEL_39;
    case 30:
      v3 = MEMORY[0x277D157D0];
      goto LABEL_39;
    case 31:
      v3 = MEMORY[0x277D15840];
      goto LABEL_39;
    case 32:
      v3 = MEMORY[0x277D15768];
      goto LABEL_39;
    case 33:
    case 35:
      v3 = MEMORY[0x277D15858];
      goto LABEL_39;
    case 34:
    case 45:
      v3 = MEMORY[0x277D15860];
      goto LABEL_39;
    case 36:
    case 41:
      v3 = MEMORY[0x277D15628];
      goto LABEL_39;
    case 38:
      v3 = MEMORY[0x277D158C8];
      goto LABEL_39;
    case 39:
      v3 = MEMORY[0x277D15658];
      goto LABEL_39;
    case 40:
      v3 = MEMORY[0x277D15778];
LABEL_39:
      v9 = *v3;
      v10 = sub_252E35A74();
      v12 = *(v10 - 8);
      (*(v12 + 104))(a2, v9, v10);
      v5 = *(v12 + 56);
      v7 = a2;
      v8 = 0;
      v6 = v10;
      break;
    default:
      v4 = sub_252E35A74();
      v5 = *(*(v4 - 8) + 56);
      v6 = v4;
      v7 = a2;
      v8 = 1;
      break;
  }

  return v5(v7, v8, 1, v6);
}

uint64_t StaticRenderingMode.toSnippetRenderingMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_252E35A94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  result = (*(v5 + 88))(v7, v4);
  if (MEMORY[0x277D16590] && result == *MEMORY[0x277D16590])
  {
    *a1 = 0;
  }

  else if (MEMORY[0x277D16580] && result == *MEMORY[0x277D16580])
  {
    *a1 = 1;
  }

  else if (MEMORY[0x277D16570] && result == *MEMORY[0x277D16570])
  {
    *a1 = 2;
  }

  else if (MEMORY[0x277D16598] && result == *MEMORY[0x277D16598])
  {
    *a1 = 3;
  }

  else
  {
    *a1 = 2;
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_252C9E244(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449B0, &unk_252E59320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252C9E2CC()
{
  v0[3] = *(v0[2] + 64);
  v4 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_252ACFBBC;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD00000000000001FLL, 0x8000000252E8AD70, v2);
}

uint64_t sub_252C9E3AC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_252E34014();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C9E478, 0, 0);
}

uint64_t sub_252C9E478(uint64_t a1)
{
  v2 = v1[8];
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v3 + 288), (v1 + 2));

  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v6 = (*(v5 + 120))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  v7 = *(v2 + 96);
  __swift_project_boxed_opaque_existential_1((v2 + 72), v7);
  if (v6)
  {
    sub_252B03B94();
    v8 = swift_task_alloc();
    v1[13] = v8;
    *v8 = v1;
    v8[1] = sub_252B2B87C;
    v9 = v1[12];
    v10 = v1[7];
    v11 = v1[8];

    return sub_252A199A8(v10, &unk_252E593D8, v11, &unk_252E593E0, 0, v9, 0, 0);
  }

  else
  {
    sub_252AD7CC4();
    v13 = swift_task_alloc();
    v1[15] = v13;
    *v13 = v1;
    v13[1] = sub_252B2BA30;
    v14 = v1[11];
    v15 = v1[7];
    v16 = v1[8];

    return sub_252BDB88C(v15, &unk_252E593C8, v16, v14, 0, 0, 0, v7);
  }
}

uint64_t sub_252C9E6C0()
{
  v0[3] = *(v0[2] + 64);
  v4 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_252C9E7A0;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD00000000000001FLL, 0x8000000252E8AD70, v2);
}

uint64_t sub_252C9E7A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C9F0C4, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252C9E924(uint64_t a1)
{
  v2[2] = a1;
  v3 = sub_252E34014();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[5] = v4;
  v2[6] = v5;

  return MEMORY[0x2822009F8](sub_252C9E9E8, 0, 0);
}

uint64_t sub_252C9E9E8()
{
  __swift_project_boxed_opaque_existential_1((v0[6] + 72), *(v0[6] + 96));
  sub_252B03B94();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_252AD82DC;
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[2];

  return sub_252A199A8(v4, &unk_252E593B0, v2, &unk_252E593B8, 0, v3, 0, 0);
}

id sub_252C9EAFC(int a1, id a2)
{
  result = [a2 matchedEntities];
  if (result)
  {
    v3 = result;
    type metadata accessor for HomeEntity();
    v4 = sub_252E37264();

    if (v4 >> 62)
    {
      v5 = sub_252E378C4();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return (v5 != 0);
  }

  return result;
}

uint64_t sub_252C9EB8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return sub_252C9E3AC(a1);
}

void *sub_252C9EC28@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SuccessFallbackResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252C9EC8C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B7BC;

  return sub_252C9E2AC(v0);
}

BOOL sub_252C9ED1C(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    v2 = [v1 entityResponses];
    if (!v2)
    {
LABEL_5:

      return 0;
    }

    v3 = sub_252C2A5D8();
    if (v3 >> 62)
    {
      v5 = sub_252E378C4();

      if (v5)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v4)
      {
        goto LABEL_5;
      }
    }

    v6 = sub_252C285CC();
    if (v6 >> 62)
    {
      v7 = sub_252E378C4();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7 == 1)
    {
      v8 = [v1 entityResponses];
      if (v8)
      {
        v9 = v8;
        type metadata accessor for HomeEntityResponse();
        v10 = sub_252E37264();
      }

      else
      {
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v11 = sub_252E36AD4();
        __swift_project_value_buffer(v11, qword_27F544D60);
        sub_252E379F4();

        v12 = v1;
        v13 = [v12 description];
        v14 = sub_252E36F34();
        v16 = v15;

        MEMORY[0x2530AD570](v14, v16);

        sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

        v10 = MEMORY[0x277D84F90];
      }

      if (v10 >> 62)
      {
        v17 = sub_252E378C4();
      }

      else
      {
        v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return v17 != 1;
    }

    else
    {

      return 1;
    }
  }

  return result;
}

uint64_t sub_252C9EFA4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252C22110(v0);
}

uint64_t sub_252C9F034()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252C9E6A0(v0);
}

uint64_t sub_252C9F0C8(uint64_t a1, char a2)
{
  *(v3 + 216) = v2;
  *(v3 + 320) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F90, &qword_252E59480);
  *(v3 + 224) = v5;
  *(v3 + 232) = *(v5 - 8);
  *(v3 + 240) = swift_task_alloc();
  v6 = sub_252E365E4();
  *(v3 + 248) = v6;
  *(v3 + 256) = *(v6 - 8);
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  v7 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v7;
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = *(a1 + 48);

  return MEMORY[0x2822009F8](sub_252C9F21C, 0, 0);
}

uint64_t sub_252C9F21C()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v2 = *(v0 + 256);
  v21 = *(v0 + 248);
  v22 = *(v0 + 320);
  v3 = sub_252E36AD4();
  *(v0 + 280) = __swift_project_value_buffer(v3, qword_27F544C70);
  sub_252E379F4();
  *(v0 + 176) = 0;
  *(v0 + 184) = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E90D60);
  *(v0 + 72) = *(v0 + 16);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  *(v0 + 88) = *(v0 + 32);
  *(v0 + 104) = v5;
  *(v0 + 120) = v4;
  sub_252E37AE4();
  sub_252CC3D90(*(v0 + 176), *(v0 + 184), 0xD000000000000088, 0x8000000252E6F320);

  sub_252CA2AC0();
  sub_252E36644();
  sub_252E36644();
  sub_252E365D4();
  (*(v2 + 8))(v1, v21);
  sub_252E34074();
  swift_allocObject();
  *(v0 + 288) = sub_252E34064();
  v6 = qword_252E594C8[v22];
  v7 = *(v0 + 216);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  v13 = *(v0 + 56);
  v14 = *(v0 + 64);
  v15 = swift_allocObject();
  *(v0 + 296) = v15;
  v15[2] = v7;
  v15[3] = v8;
  v15[4] = v9;
  v15[5] = v10;
  v15[6] = v11;
  v15[7] = v12;
  v15[8] = v13;
  v15[9] = v14;

  v16 = swift_task_alloc();
  *(v0 + 304) = v16;
  *v16 = v0;
  v16[1] = sub_252C9F534;
  v17 = *(v0 + 240);
  v18 = *(v0 + 224);
  v19.n128_u64[0] = v6;

  return MEMORY[0x2821C8618](v17, &unk_252E59490, v15, v18, v19);
}

uint64_t sub_252C9F534()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_252C9F814;
  }

  else
  {

    v2 = sub_252C9F650;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252C9F650()
{
  v1 = v0[36];
  sub_252E379F4();

  sub_252CA2BCC();
  v2 = sub_252E37D94();
  MEMORY[0x2530AD570](v2);

  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E90DA0, 0xD000000000000088, 0x8000000252E6F320);

  if (v1)
  {

    sub_252E34054();
  }

  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  v6 = [objc_allocWithZone(type metadata accessor for AutomateHomeIntentResponse()) init];
  v7 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  *&v6[v7] = 4;
  [v6 setUserActivity_];

  (*(v4 + 8))(v3, v5);

  v8 = v0[1];

  return v8(v6);
}

uint64_t sub_252C9F814()
{
  v1 = v0[39];

  sub_252E379F4();
  v0[24] = 0;
  v0[25] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E90D80);
  v0[26] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC3D90(v0[24], v0[25], 0xD000000000000088, 0x8000000252E6F320);

  v2 = [objc_allocWithZone(type metadata accessor for AutomateHomeIntentResponse()) init];
  v3 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  *&v2[v3] = 5;
  [v2 setUserActivity_];

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_252C9F9D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449F0, &qword_252E594B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v45 - v5;
  v7 = type metadata accessor for TriggerEventType(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 automatableTask];
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = v11;
  type metadata accessor for ControlAutomateHomeIntent();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {

LABEL_6:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544C70);
    sub_252CC4050(0xD000000000000048, 0x8000000252E90C80, 0xD000000000000087, 0x8000000252E90DC0, 0xD000000000000016, 0x8000000252E90E50, 87);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449C0, &qword_252E59450);
    v25 = *(*(v24 - 8) + 56);
    v26 = v24;
    v27 = a2;
    goto LABEL_18;
  }

  v45 = v8;
  v46 = a2;
  v14 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  v15 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
  v16 = v14;

  v17 = [v15 init];
  [v17 setUserTask_];
  type metadata accessor for HomeFilter();
  v18 = sub_252E37254();

  [v17 setFilters_];

  [v17 setTime_];
  v19 = [v17 filters];
  if (v19)
  {
    v20 = v19;
    v21 = sub_252E37264();

    v22 = sub_252DD5A58(v21);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v28 = sub_252C758E0(v22);

  v29 = sub_252DD6238(v28);

  if (v29)
  {
    v30 = *(v29 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);

    v31 = [a1 trigger];
    if (v31)
    {
      v32 = v31;
      sub_252DED39C(v6);
      if ((*(v45 + 48))(v6, 1, v7) == 1)
      {
        sub_25293847C(v6, &qword_27F5449F0, &qword_252E594B0);
        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        v33 = sub_252E36AD4();
        __swift_project_value_buffer(v33, qword_27F544C70);
        v48 = 0;
        v49 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E90E70);
        v47 = [a1 trigger];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449F8, &unk_252E594B8);
        v34 = sub_252E36F94();
        MEMORY[0x2530AD570](v34);

        MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E90E90);
        sub_252CC4050(v48, v49, 0xD000000000000087, 0x8000000252E90DC0, 0xD000000000000016, 0x8000000252E90E50, 94);

        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449C0, &qword_252E59450);
        return (*(*(v35 - 8) + 56))(v46, 1, 1, v35);
      }

      else
      {
        sub_252CA2A5C(v6, v10);
        v38 = sub_252E35BA4();
        v39 = *(v38 - 8);
        MEMORY[0x28223BE20](v38);
        v41 = &v45 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_252DEDCB4(v41);

        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449C0, &qword_252E59450);
        v43 = *(v42 + 48);
        v44 = v46;
        sub_252CA2A5C(v10, v46);
        (*(v39 + 32))(v44 + v43, v41, v38);
        return (*(*(v42 - 8) + 56))(v44, 0, 1, v42);
      }
    }
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449C0, &qword_252E59450);
  v25 = *(*(v37 - 8) + 56);
  v26 = v37;
  v27 = v46;
LABEL_18:

  return v25(v27, 1, 1, v26);
}

uint64_t sub_252CA00F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 72) = a1;
  v5 = sub_252E36634();
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();
  v6 = *(a3 + 16);
  *(v3 + 16) = *a3;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(a3 + 32);
  *(v3 + 64) = *(a3 + 48);

  return MEMORY[0x2822009F8](sub_252CA01D0, 0, 0);
}

uint64_t sub_252CA01D0(uint64_t a1)
{
  sub_252B680FC(a1);
  v2 = sub_252B6796C();
  v4 = v3;

  v1[13] = v2;
  ObjectType = swift_getObjectType();
  sub_252CA2AC0();
  sub_2529C1500();
  sub_2529C0054();
  sub_252E36404();
  swift_allocObject();
  v6 = sub_252E363F4();
  v1[14] = v6;
  v7 = swift_task_alloc();
  v1[15] = v7;
  *v7 = v1;
  v7[1] = sub_252CA0334;
  v8 = v1[12];
  v9 = v1[9];
  v10 = MEMORY[0x277CEAFA0];

  return MEMORY[0x28213DAA0](v9, v1 + 2, v8, v6, v10, ObjectType, &type metadata for HomeIntentProducer.AutomateAttributeValueIntent, v4);
}

uint64_t sub_252CA0334()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);

  swift_unknownObjectRelease();
  if (v0)
  {
    v5 = sub_252CA0548;
  }

  else
  {
    v5 = sub_252CA04E4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252CA04E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252CA0548()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252CA05AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[39] = a6;
  v7[40] = a7;
  v7[37] = a4;
  v7[38] = a5;
  type metadata accessor for TriggerEventType(0);
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v8 = sub_252E32E04();
  v7[44] = v8;
  v7[45] = *(v8 - 8);
  v7[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CA06B4, 0, 0);
}

uint64_t sub_252CA06B4()
{
  v119 = v0;
  if (qword_2814B09D0 != -1)
  {
    swift_once();
  }

  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v4 = v0[37];
  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_2814B09D8);
  sub_252E379F4();

  v117 = 0xD00000000000002BLL;
  v118 = 0x8000000252E90BC0;
  v6 = [v4 description];
  v7 = sub_252E36F34();
  v9 = v8;

  MEMORY[0x2530AD570](v7, v9);

  v10 = "or AutomateHome AppIntent:\n";
  sub_252CC4A5C(0xD00000000000002BLL, 0x8000000252E90BC0, 1, 0xD00000000000008ALL, 0x8000000252E90BF0);

  v12 = sub_252DB7C84(v11)[5];

  sub_252E32DF4();
  sub_252E32D44();
  v14 = v13;
  v16 = *(v2 + 8);
  v15 = (v2 + 8);
  v16(v1, v3);
  v17 = v14 * 1000.0;
  if (COERCE__INT64(fabs(v14 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_68;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v18 = v0[37];
  *(v12 + 16) = v17;

  v19 = [v18 automatableTask];
  v0[47] = v19;
  v15 = &off_279711000;
  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = v19;
  type metadata accessor for ControlAutomateHomeIntent();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {

LABEL_13:
    if (qword_27F53F498 == -1)
    {
LABEL_14:
      __swift_project_value_buffer(v5, qword_27F544C70);
      sub_252CC4050(0xD000000000000048, 0x8000000252E90C80, 0xD00000000000008ALL, 0x8000000252E90BF0, 0xD00000000000001ALL, 0x8000000252E80020, 29);
      v36 = [objc_allocWithZone(type metadata accessor for AutomateHomeIntentResponse()) v15[193]];
      v0[48] = v36;
      v37 = OBJC_IVAR___AutomateHomeIntentResponse_code;
      swift_beginAccess();
      *&v36[v37] = 5;
      [v36 setUserActivity_];
      v38 = swift_task_alloc();
      v0[49] = v38;
      *v38 = v0;
      v39 = sub_252CA1A78;
LABEL_15:
      v38[1] = v39;
      v40 = v0[37];

      return sub_252CA291C(v40, v36);
    }

LABEL_70:
    swift_once();
    goto LABEL_14;
  }

  v115 = v5;
  v22 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  v23 = v0[37];
  v24 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
  v25 = v22;

  v26 = [v24 init];
  v0[51] = v26;
  v27 = v26;
  [v27 setUserTask_];
  type metadata accessor for HomeFilter();
  v28 = sub_252E37254();

  [v27 setFilters_];

  [v27 setTime_];
  v29 = sub_252E35BA4();
  v0[52] = v29;
  v30 = *(v29 - 8);
  v0[53] = v30;
  v31 = swift_task_alloc();
  v0[54] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449B8, &qword_252E59448);
  v32 = swift_task_alloc();
  sub_252C9F9D0(v23, v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449C0, &qword_252E59450);
  if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
  {

    sub_25293847C(v32, &qword_27F5449B8, &qword_252E59448);

    v34 = v0[1];

    return v34();
  }

  v41 = *(v33 + 48);
  sub_252CA2A5C(v32, v0[43]);
  (*(v30 + 32))(v31, v32 + v41, v29);

  v42 = sub_252C42B30(v27);
  if (!v42)
  {
    goto LABEL_73;
  }

  v43 = v42;
  v44 = v42 >> 62;
  if (!(v42 >> 62))
  {
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    goto LABEL_72;
  }

  if (!sub_252E378C4())
  {
LABEL_72:

LABEL_73:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v115, qword_27F544C70);
    sub_252CC4050(0xD000000000000024, 0x8000000252E6F1F0, 0xD00000000000008ALL, 0x8000000252E90BF0, 0xD00000000000001ALL, 0x8000000252E80020, 37);
    v36 = [objc_allocWithZone(type metadata accessor for AutomateHomeIntentResponse()) init];
    v0[70] = v36;
    v102 = OBJC_IVAR___AutomateHomeIntentResponse_code;
    swift_beginAccess();
    *&v36[v102] = 100;
    [v36 setUserActivity_];
    v38 = swift_task_alloc();
    v0[71] = v38;
    *v38 = v0;
    v39 = sub_252CA2220;
    goto LABEL_15;
  }

LABEL_21:
  v45 = sub_252A1EEEC();
  if (!v45)
  {

    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v115, qword_27F544C70);
    sub_252CC4050(0xD000000000000038, 0x8000000252E6F260, 0xD00000000000008ALL, 0x8000000252E90BF0, 0xD00000000000001ALL, 0x8000000252E80020, 45);
    v36 = [objc_allocWithZone(type metadata accessor for AutomateHomeIntentResponse()) init];
    v0[55] = v36;
    v52 = OBJC_IVAR___AutomateHomeIntentResponse_code;
    swift_beginAccess();
    *&v36[v52] = 5;
    [v36 setUserActivity_];
    v38 = swift_task_alloc();
    v0[56] = v38;
    *v38 = v0;
    v39 = sub_252CA1C34;
    goto LABEL_15;
  }

  v46 = v45;
  v114 = v43 & 0xC000000000000001;
  v112 = v31;
  if ((v43 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2530ADF00](0, v43);
  }

  else
  {
    if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_78;
    }
  }

  sub_252E36424();

  __swift_project_boxed_opaque_existential_1(v0 + 9, v0[12]);
  sub_252E364D4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  v47 = type metadata accessor for HomeStore(0);
  v48 = static HomeStore.shared.getter(v47);
  v49 = sub_2529F219C();
  v51 = v50;

  v111 = v29;
  v108 = v44;
  if (v51)
  {
LABEL_26:
    sub_252956C8C(v49, v51 & 1);
    goto LABEL_34;
  }

  if (v49)
  {
    v53 = *&v49[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate];

    v54 = [v53 home];
    if (v54)
    {
      v55 = v54;
      type metadata accessor for Home(0);
      swift_allocObject();
      v56 = sub_2529E65BC(v55);
      sub_252956C8C(v49, 0);
      v44 = *(v56 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v29 = *(v56 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if (qword_27F53F498 != -1)
      {
        goto LABEL_81;
      }

      goto LABEL_33;
    }

    sub_252956C8C(v49, 0);
    goto LABEL_26;
  }

LABEL_34:
  if (v114)
  {
    MEMORY[0x2530ADF00](0, v43);
  }

  else
  {
    if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_80;
    }
  }

  sub_252E36424();

  __swift_project_boxed_opaque_existential_1(v0 + 14, v0[17]);
  v57 = sub_252E364D4();
  v59 = v58;
  v60 = __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v61 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v60);
  v62 = sub_252AC50D8(v57, v59);

  if (v62)
  {

    sub_252E36744();

    v63 = v0[31];
    if (v63)
    {
      v64 = v0[30];
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v115, qword_27F544C70);
      sub_252E379F4();

      v117 = 0xD000000000000022;
      v118 = 0x8000000252E90D00;
      v109 = v64;
      v110 = v63;
      MEMORY[0x2530AD570](v64, v63);
      sub_252CC3D90(0xD000000000000022, 0x8000000252E90D00, 0xD00000000000008ALL, 0x8000000252E90BF0);

      goto LABEL_47;
    }
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v65 = v0[37];
  __swift_project_value_buffer(v115, qword_27F544C70);
  v110 = 0xE000000000000000;
  sub_252E379F4();

  v117 = 0xD000000000000026;
  v118 = 0x8000000252E90CD0;
  v66 = [v65 description];
  v67 = sub_252E36F34();
  v69 = v68;

  MEMORY[0x2530AD570](v67, v69);

  sub_252CC4050(0xD000000000000026, 0x8000000252E90CD0, 0xD00000000000008ALL, 0x8000000252E90BF0, 0xD00000000000001ALL, 0x8000000252E80020, 67);

  v109 = 0;
  while (1)
  {
LABEL_47:
    v29 = v111;
    v31 = v112;
    if (qword_27F53F498 != -1)
    {
LABEL_78:
      swift_once();
    }

    __swift_project_value_buffer(v115, qword_27F544C70);
    v10 = swift_task_alloc();
    (*(v30 + 16))(v10, v31, v29);

    v70 = v110;

    v71 = sub_252E36AC4();
    v49 = sub_252E374C4();

    LODWORD(v115) = v49;
    if (!os_log_type_enabled(v71, v49))
    {
      v76 = *(v30 + 8);
      v75 = v30 + 8;
      v76(v10, v29);

      v77 = v109;
      goto LABEL_63;
    }

    log = v71;
    v113 = v30;
    v29 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v116 = v103;
    *v29 = 136315906;
    v72 = MEMORY[0x2530AD730](v46, &type metadata for Attribute);
    v74 = sub_252BE2CE0(v72, v73, &v116);

    *(v29 + 4) = v74;
    v104 = v29;
    *(v29 + 12) = 2080;
    v107 = v46;
    v44 = v108 ? sub_252E378C4() : *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v46 = MEMORY[0x277D84F90];
    v106 = v10;
    if (!v44)
    {
      break;
    }

    v117 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, v44 & ~(v44 >> 63), 0);
    if ((v44 & 0x8000000000000000) == 0)
    {
      v78 = 0;
      v46 = v117;
      do
      {
        if (v114)
        {
          MEMORY[0x2530ADF00](v78, v43);
        }

        else
        {
        }

        v79 = sub_252A96AFC();
        v81 = v80;

        v117 = v46;
        v83 = *(v46 + 16);
        v82 = *(v46 + 24);
        if (v83 >= v82 >> 1)
        {
          sub_2529AA3A0((v82 > 1), v83 + 1, 1);
          v46 = v117;
        }

        ++v78;
        *(v46 + 16) = v83 + 1;
        v84 = v46 + 16 * v83;
        *(v84 + 32) = v79;
        *(v84 + 40) = v81;
      }

      while (v44 != v78);
      break;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    swift_once();
LABEL_33:
    __swift_project_value_buffer(v115, qword_27F544C70);
    v117 = 0;
    v118 = 0xE000000000000000;
    sub_252E379F4();

    v117 = 0xD000000000000024;
    v118 = 0x8000000252E90D30;
    v109 = v44;
    v110 = v29;
    MEMORY[0x2530AD570](v44, v29);
    sub_252CC3D90(v117, v118, 0xD00000000000008ALL, v10 | 0x8000000000000000);

    sub_252956C8C(v49, 0);
  }

  v85 = MEMORY[0x2530AD730](v46, MEMORY[0x277D837D0]);
  v87 = v86;

  v88 = sub_252BE2CE0(v85, v87, &v116);

  *(v104 + 14) = v88;
  *(v104 + 22) = 2080;
  v77 = v109;
  v70 = v110;
  *(v104 + 24) = sub_252BE2CE0(v109, v110, &v116);
  *(v104 + 32) = 2048;
  v89 = sub_252E35B64();
  v75 = v113 + 8;
  (*(v113 + 8))(v106, v111);
  *(v104 + 34) = v89;
  _os_log_impl(&dword_252917000, log, v115, "Performing AutomateAttributeValueIntent with:\n   - attributeValues: %s\n   - deviceEntities: %s\n   - homeEntity: %s\n   - recurrenceWeekdays: %ld", v104, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x2530AED00](v103, -1, -1);
  MEMORY[0x2530AED00](v104, -1, -1);

  v46 = v107;
LABEL_63:
  v0[58] = v75;
  v91 = v0[42];
  v90 = v0[43];
  v92 = v0[41];

  sub_2529BBF5C(v90, v91);
  v93 = sub_252E35B64();
  v0[32] = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD8, &unk_252E3F900);
  swift_allocObject();
  v94 = sub_252E36754();
  v0[59] = v94;
  v0[33] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CE0, &unk_252E3E550);
  swift_allocObject();
  v95 = sub_252E36754();
  v0[60] = v95;
  v0[28] = v77;
  v0[29] = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449C8, &unk_252E59458);
  swift_allocObject();
  v96 = sub_252E36754();
  v0[61] = v96;
  v0[34] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CF0, &unk_252E3E560);
  swift_allocObject();
  v97 = sub_252E36754();
  v0[62] = v97;
  v0[35] = 0;
  swift_allocObject();
  v98 = sub_252E36754();
  v0[63] = v98;
  sub_2529BBF5C(v91, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449D0, &qword_252E59468);
  swift_allocObject();
  v99 = sub_252E36754();
  v0[64] = v99;
  sub_2529BC0A0(v91);
  v0[36] = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449D8, &qword_252E59470);
  swift_allocObject();
  v100 = sub_252E36754();
  v0[65] = v100;
  v0[2] = v94;
  v0[3] = v95;
  v0[4] = v96;
  v0[5] = v97;
  v0[6] = v98;
  v0[7] = v99;
  v0[8] = v100;
  v101 = swift_task_alloc();
  v0[66] = v101;
  *v101 = v0;
  v101[1] = sub_252CA1E40;

  return sub_252C9F0C8((v0 + 2), 0);
}

uint64_t sub_252CA1A78(uint64_t a1)
{
  v2 = *(*v1 + 384);
  *(*v1 + 400) = a1;

  return MEMORY[0x2822009F8](sub_252CA1B94, 0, 0);
}

uint64_t sub_252CA1B94()
{
  v1 = *(v0 + 400);
  (*(v0 + 304))(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252CA1C34(uint64_t a1)
{
  v2 = *(*v1 + 440);
  *(*v1 + 456) = a1;

  return MEMORY[0x2822009F8](sub_252CA1D50, 0, 0);
}

uint64_t sub_252CA1D50()
{
  v1 = *(v0 + 456);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v5 = *(v0 + 408);
  v4 = *(v0 + 416);
  v6 = *(v0 + 376);
  v7 = *(v0 + 344);
  (*(v0 + 304))(v1);

  (*(v3 + 8))(v2, v4);
  sub_2529BC0A0(v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_252CA1E40(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v3[67] = a1;

  v5 = swift_task_alloc();
  v3[68] = v5;
  *v5 = v4;
  v5[1] = sub_252CA1FA8;
  v6 = v3[37];

  return sub_252CA291C(v6, a1);
}

uint64_t sub_252CA1FA8(uint64_t a1)
{
  v2 = *(*v1 + 536);
  *(*v1 + 552) = a1;

  return MEMORY[0x2822009F8](sub_252CA20C4, 0, 0);
}

uint64_t sub_252CA20C4()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 432);
  v7 = *(v0 + 424);
  v3 = *(v0 + 408);
  v8 = *(v0 + 416);
  v6 = *(v0 + 376);
  v9 = *(v0 + 344);
  (*(v0 + 304))(v1);

  (*(v7 + 8))(v2, v8);
  sub_2529BC0A0(v9);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252CA2220(uint64_t a1)
{
  v2 = *(*v1 + 560);
  *(*v1 + 576) = a1;

  return MEMORY[0x2822009F8](sub_252CA233C, 0, 0);
}

uint64_t sub_252CA233C()
{
  v1 = *(v0 + 576);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v5 = *(v0 + 408);
  v4 = *(v0 + 416);
  v6 = *(v0 + 376);
  v7 = *(v0 + 344);
  (*(v0 + 304))(v1);

  (*(v3 + 8))(v2, v4);
  sub_2529BC0A0(v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_252CA2454(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_252E37344();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = v3;
  v12 = a1;

  sub_2529D89C4(0, 0, v9, &unk_252E59438, v11);
}

uint64_t sub_252CA2580()
{
  type metadata accessor for AutomateHomeAppIntentHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252CA25B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25293B808;

  return sub_252CA05AC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_252CA2684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  *(v3 + 16) = *a3;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(a3 + 32);
  *(v3 + 64) = *(a3 + 48);
  v7 = swift_task_alloc();
  *(v3 + 72) = v7;
  *v7 = v3;
  v7[1] = sub_252C7D24C;

  return sub_252CA00F4(a1, a2, v3 + 16);
}

uint64_t sub_252CA2740(void *a1)
{
  v1 = [a1 automatableTask];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for ControlAutomateHomeIntent();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
      v5 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
      v6 = v4;

      v7 = [v5 init];
      [v7 setUserTask_];
      type metadata accessor for HomeFilter();
      v8 = sub_252E37254();

      [v7 setFilters_];

      [v7 setTime_];
      LOBYTE(v6) = sub_252C4CD44();

      return v6 & 1;
    }
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v10 = sub_252E36AD4();
  __swift_project_value_buffer(v10, qword_27F544C70);
  sub_252CC4050(0xD000000000000048, 0x8000000252E90C80, 0xD00000000000008ALL, 0x8000000252E90BF0, 0xD000000000000011, 0x8000000252E90EB0, 17);
  return 0;
}

uint64_t sub_252CA291C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252CA293C, 0, 0);
}

id sub_252CA293C(uint64_t a1)
{
  v2 = v1[2];
  sub_252DB7C84(a1);

  v3 = sub_252DB5924();

  result = sub_252A00BB4(v2);
  v5 = result;
  if (result)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v3))
    {
      result = [result setCommandDuration_];
      goto LABEL_5;
    }

    __break(1u);
    return result;
  }

LABEL_5:
  v6 = v1[3];
  sub_252DB7C84(result);
  sub_252DB7138(v5);

  sub_252DB7C84(v7);
  sub_252DB649C(0, 0, 1);

  v8 = v6;

  v9 = v1[1];
  v10 = v1[3];

  return v9(v10);
}

uint64_t sub_252CA2A5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TriggerEventType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_252CA2AC0()
{
  result = qword_27F5449E0;
  if (!qword_27F5449E0)
  {
    result = swift_getWitnessTable(aMhT, &type metadata for HomeIntentProducer.AutomateAttributeValueIntent, v0, v1);
    atomic_store(result, &qword_27F5449E0);
  }

  return result;
}

uint64_t sub_252CA2B14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252CA2684(a1, v4, v1 + 24);
}

unint64_t sub_252CA2BCC()
{
  result = qword_27F5449E8;
  if (!qword_27F5449E8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540F90, &qword_252E59480);
    result = swift_getWitnessTable(MEMORY[0x277CEB030], v3, v0, v1);
    atomic_store(result, &qword_27F5449E8);
  }

  return result;
}

uint64_t type metadata accessor for SceneEntity(uint64_t a1)
{
  result = qword_27F544A20;
  if (!qword_27F544A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252CA2CCC(uint64_t a1)
{
  v2 = sub_252E36454();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = qword_27F544A10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410C0, &qword_252E402E8);
  swift_allocObject();
  *(v6 + v7) = sub_252E36734();
  v8 = qword_27F544A18;
  swift_allocObject();
  *(v6 + v8) = sub_252E36734();
  (*(v3 + 16))(v5, a1, v2);
  v9 = sub_252E364B4();
  (*(v3 + 8))(a1, v2);
  return v9;
}

uint64_t sub_252CA2E4C()
{
}

uint64_t sub_252CA2E8C()
{
  sub_252E364A4();

  return swift_deallocClassInstance();
}

uint64_t sub_252CA2F08()
{
  v0 = *aComAppleHome_3;

  return v0;
}

uint64_t sub_252CA2F60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(aB_0);

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_252CA2FC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(a5_4, a1);

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_252CA3014(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(aB_0);

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_252CA3214(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for SceneEntity(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252CA325C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544A88, &qword_252E59748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C3C0;
  *(inited + 32) = 2;
  *(inited + 40) = sub_2529FC004(&unk_2864AE798);
  *(inited + 48) = 27;
  *(inited + 56) = sub_2529FC004(&unk_2864AE7C0);
  v1 = sub_252CC743C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544A90, qword_252E59750);
  result = swift_arrayDestroy();
  off_27F544A78 = v1;
  return result;
}

uint64_t sub_252CA3368@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PickDefaultTypeHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

id sub_252CA339C(id a1, uint64_t a2)
{
  v3 = *(a2 + 386);
  if (qword_27F53F480 != -1)
  {
    swift_once();
  }

  v4 = off_27F544A78;
  v5 = [a1 userTask];
  if (v5)
  {
    v6 = v5;
    [v5 attribute];

    if (!v4[2])
    {
      return 0;
    }
  }

  else if (!v4[2])
  {
    return 0;
  }

  sub_252A488EC();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v9 = result;
  type metadata accessor for HomeFilter();
  v10 = sub_252E37264();

  KeyPath = swift_getKeyPath();
  v12 = sub_2529304DC(KeyPath, v10);

  if (v12)
  {
    return 0;
  }

  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = sub_252E37264();

  v15 = swift_getKeyPath();
  v16 = sub_252BAF91C(v15, v14);

  if (v16)
  {
    return 0;
  }

  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v17 = result;
  v18 = sub_252E37264();

  v19 = swift_getKeyPath();
  v20 = sub_2529304DC(v19, v18);

  if (v20)
  {
    return 0;
  }

  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v21 = result;
  v22 = sub_252E37264();

  v23 = swift_getKeyPath();
  v24 = sub_252BAF91C(v23, v22);

  if (v24)
  {
    return 0;
  }

  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v25 = result;
  v26 = sub_252E37264();

  v27 = swift_getKeyPath();
  v28 = sub_2529304DC(v27, v26);

  if (v28)
  {
    return 0;
  }

  result = [a1 filters];
  if (result)
  {
    v29 = result;
    v30 = sub_252E37264();

    if (v30 >> 62)
    {
      goto LABEL_36;
    }

    for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v32 = 0;
      while (1)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x2530ADF00](v32, v30);
        }

        else
        {
          if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v33 = *(v30 + 8 * v32 + 32);
        }

        v34 = v33;
        v35 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        v36 = [v33 hasAllQuantifier];
        sub_252956D08();
        v37 = sub_252E37664();
        v38 = v37;
        if (v36)
        {
          v39 = sub_252E37694();

          if (v39)
          {

            return 0;
          }
        }

        else
        {
        }

        ++v32;
        if (v35 == i)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      ;
    }

LABEL_37:

    return (v3 ^ 1u);
  }

  return result;
}

char *sub_252CA3798(const void *a1)
{
  v84 = sub_252E32E84();
  v2 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v89 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v94, a1, sizeof(v94));
  memcpy(v95, a1, 0x1F8uLL);
  if (sub_252956B94(v95) == 1 || !*(v95[6] + 16))
  {
    return 0;
  }

  v4 = *(v95[6] + 40);
  v90 = *(v95[6] + 32);
  v91 = v4;
  v92 = v95[51];
  if (!*(v95[51] + 16))
  {
    goto LABEL_38;
  }

  type metadata accessor for HomeStore(0);
  sub_2529D291C(v94, v93);

  v6 = static HomeStore.shared.getter(v5);
  v7 = sub_2529D9D50();
  v8 = sub_2529D70E4(v7);

  v93[0] = MEMORY[0x277D84F90];
  v83 = v8;
  if (v8 >> 62)
  {
    goto LABEL_107;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v10 = MEMORY[0x277D84F90];
    if (!i)
    {
      goto LABEL_71;
    }

    v11 = 0;
    v87 = v83 & 0xFFFFFFFFFFFFFF8;
    v88 = v83 & 0xC000000000000001;
    v85 = i;
    v86 = v83 + 32;
    v84 = v92 + 40;
LABEL_10:
    if (v88)
    {
      v12 = MEMORY[0x2530ADF00](v11, v83);
      v13 = __OFADD__(v11, 1);
      v14 = v11 + 1;
      if (v13)
      {
        goto LABEL_37;
      }

LABEL_13:
      v89 = v14;
      v15 = *(v92 + 16);
      if (!v15)
      {
LABEL_8:

        goto LABEL_9;
      }

      v2 = 0;
      v16 = v84;
      while (1)
      {
        if (v2 >= *(v92 + 16))
        {
          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v18 = *(v16 - 1);
        v17 = *v16;

        sub_252CDB4B0();
        if (!v19)
        {
          break;
        }

        v21 = *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v20 = *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        if (v21 == v90 && v20 == v91)
        {

          if (!v17)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v23 = sub_252E37DB4();

          if ((v23 & 1) == 0)
          {
            break;
          }

          if (!v17)
          {
            goto LABEL_16;
          }
        }

        if (*(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v18 && v17 == *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
        {

LABEL_34:
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
LABEL_9:
          v11 = v89;
          if (v89 == v85)
          {
            goto LABEL_70;
          }

          goto LABEL_10;
        }

        v25 = sub_252E37DB4();

        if (v25)
        {
          goto LABEL_34;
        }

LABEL_16:
        v2 = (v2 + 1);
        v16 += 4;
        if (v15 == v2)
        {
          goto LABEL_8;
        }
      }

      goto LABEL_16;
    }

    if (v11 < *(v87 + 16))
    {
      break;
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    ;
  }

  v12 = *(v86 + 8 * v11);

  v13 = __OFADD__(v11, 1);
  v14 = v11 + 1;
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  v87 = v95[52];
  if (!*(v95[52] + 16))
  {
    result = MEMORY[0x277D84FA0];
    goto LABEL_115;
  }

  type metadata accessor for HomeStore(0);
  sub_2529D291C(v94, v93);

  v27 = static HomeStore.shared.getter(v26);
  v28 = sub_2529D9D50();

  v93[0] = MEMORY[0x277D84F90];
  v74 = v28;
  if (v28 >> 62)
  {
    goto LABEL_111;
  }

  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v30 = MEMORY[0x277D84F90];
    if (!v29)
    {
      goto LABEL_91;
    }

    v31 = 0;
    v78 = v74 & 0xFFFFFFFFFFFFFF8;
    v79 = v74 & 0xC000000000000001;
    v76 = v29;
    v77 = v74 + 32;
    v81 = (v2 + 1);
    v82 = (v2 + 4);
    v75 = (v87 + 40);
    while (2)
    {
      if (v79)
      {
        v32 = MEMORY[0x2530ADF00](v31, v74);
        v13 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v13)
        {
          goto LABEL_69;
        }

LABEL_48:
        v80 = v33;
        v86 = *(v87 + 16);
        if (!v86)
        {
LABEL_43:

LABEL_44:
          v31 = v80;
          if (v80 == v76)
          {
            v30 = v93[0];
LABEL_91:

            if (v30 < 0 || (v30 & 0x4000000000000000) != 0)
            {
              v66 = sub_252E378C4();
              v67 = MEMORY[0x277D84F90];
              if (!v66)
              {
                goto LABEL_113;
              }
            }

            else
            {
              v66 = *(v30 + 16);
              v67 = MEMORY[0x277D84F90];
              if (!v66)
              {
                goto LABEL_113;
              }
            }

            v93[0] = v67;
            result = sub_2529AA420(0, v66 & ~(v66 >> 63), 0);
            if (v66 < 0)
            {
              __break(1u);
              return result;
            }

            v68 = 0;
            v53 = v93[0];
            do
            {
              if ((v30 & 0xC000000000000001) != 0)
              {
                v69 = MEMORY[0x2530ADF00](v68, v30);
              }

              else
              {
                v69 = *(v30 + 8 * v68 + 32);
              }

              v70 = (*(*v69 + 256))();

              v93[0] = v53;
              v72 = *(v53 + 16);
              v71 = *(v53 + 24);
              if (v72 >= v71 >> 1)
              {
                sub_2529AA420((v71 > 1), v72 + 1, 1);
                v53 = v93[0];
              }

              ++v68;
              *(v53 + 16) = v72 + 1;
              *(v53 + 8 * v72 + 32) = v70;
            }

            while (v66 != v68);
LABEL_102:

            goto LABEL_114;
          }

          continue;
        }

        v34 = 0;
        v85 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
        v2 = v75;
        v83 = v32;
        while (1)
        {
          if (v34 >= *(v87 + 16))
          {
            goto LABEL_104;
          }

          v36 = *(v2 - 1);
          v35 = *v2;
          v37 = *(v32 + v85);

          v38 = [v37 home];
          if (!v38)
          {
            break;
          }

          v39 = v38;
          type metadata accessor for Home(0);
          v40 = swift_allocObject();
          v41 = v39;
          v42 = [v41 uniqueIdentifier];
          sub_252E32E64();

          v43 = [v41 name];
          v88 = sub_252E36F34();
          v45 = v44;

          v46 = [v41 assistantIdentifier];
          v92 = v36;
          if (v46)
          {
            sub_252E36F34();
          }

          v47 = v84;
          (*v82)(v40 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v89, v84);
          swift_setDeallocating();
          (*v81)(v40 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v47);

          swift_deallocClassInstance();
          if (v88 == v90 && v45 == v91)
          {

            v32 = v83;
            v48 = v92;
          }

          else
          {
            v49 = sub_252E37DB4();

            v32 = v83;
            v48 = v92;
            if ((v49 & 1) == 0)
            {
              break;
            }
          }

          if (v35)
          {
            if (*(v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v48 && v35 == *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
            {

LABEL_66:
              sub_252E37A94();
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
              goto LABEL_44;
            }

            v50 = sub_252E37DB4();

            if (v50)
            {
              goto LABEL_66;
            }
          }

LABEL_51:
          ++v34;
          v2 += 4;
          if (v86 == v34)
          {
            goto LABEL_43;
          }
        }

        goto LABEL_51;
      }

      break;
    }

    if (v31 >= *(v78 + 16))
    {
      goto LABEL_106;
    }

    v32 = *(v77 + 8 * v31);

    v13 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (!v13)
    {
      goto LABEL_48;
    }

LABEL_69:
    __break(1u);
LABEL_70:
    v10 = v93[0];
LABEL_71:

    if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
    {
      v51 = sub_252E378C4();
      if (!v51)
      {
        goto LABEL_113;
      }

LABEL_74:
      v93[0] = MEMORY[0x277D84F90];
      sub_2529AA420(0, v51 & ~(v51 >> 63), 0);
      if ((v51 & 0x8000000000000000) == 0)
      {
        v52 = 0;
        v53 = v93[0];
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v54 = MEMORY[0x2530ADF00](v52, v10);
          }

          else
          {
            v54 = *(v10 + 8 * v52 + 32);
          }

          v55 = [*(v54 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
          v56 = sub_252E36F34();
          v58 = v57;

          if (qword_27F53F8B8 != -1)
          {
            swift_once();
          }

          v59 = off_27F546230;
          if (*(off_27F546230 + 2) && (v60 = sub_252A44A10(v56, v58), (v61 & 1) != 0))
          {
            v62 = *(v59[7] + 8 * v60);
          }

          else
          {
            v62 = 0;
          }

          v93[0] = v53;
          v64 = *(v53 + 16);
          v63 = *(v53 + 24);
          if (v64 >= v63 >> 1)
          {
            sub_2529AA420((v63 > 1), v64 + 1, 1);
            v53 = v93[0];
          }

          ++v52;
          *(v53 + 16) = v64 + 1;
          *(v53 + 8 * v64 + 32) = v62;
        }

        while (v51 != v52);
        goto LABEL_102;
      }

      __break(1u);
LABEL_111:
      v29 = sub_252E378C4();
      continue;
    }

    break;
  }

  v51 = *(v10 + 16);
  if (v51)
  {
    goto LABEL_74;
  }

LABEL_113:

  v53 = MEMORY[0x277D84F90];
LABEL_114:
  v73 = sub_252C759A0(v53);

  sub_25299F5D4(v94);
  result = v73;
LABEL_115:
  if (*(result + 2) != 1)
  {

    return 0;
  }

  return result;
}

id sub_252CA4208(void *a1, unint64_t a2, void *a3)
{
  if (a1[2])
  {
    v3 = a2;
    v4 = a1;
    v80 = MEMORY[0x277D84F90];
    if (a2 >> 62)
    {
      goto LABEL_104;
    }

    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v6 = MEMORY[0x277D84F90];
    v71 = v5;
    v72 = v3;
    if (v5)
    {
      v7 = 0;
      sub_252956D08();
      v70 = v3 & 0xC000000000000001;
      v68 = v3 + 32;
      v69 = v3 & 0xFFFFFFFFFFFFFF8;
      v78 = v4 + 7;
      do
      {
        while (1)
        {
          if (v70)
          {
            v8 = MEMORY[0x2530ADF00](v7, v3);
          }

          else
          {
            if (v7 >= *(v69 + 16))
            {
              goto LABEL_101;
            }

            v8 = *(v68 + 8 * v7);
          }

          v77 = v8;
          v9 = __OFADD__(v7, 1);
          v10 = v7 + 1;
          if (v9)
          {
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
            v5 = sub_252E378C4();
            goto LABEL_4;
          }

          v73 = v10;
          v11 = [v8 isExcludeFilter];
          v12 = sub_252E37674();
          v13 = v12;
          if (v11)
          {
            break;
          }

LABEL_18:
          v15 = v4[2];
          if (v15)
          {
            v74 = v6;
            v79[0] = MEMORY[0x277D84F90];
            sub_252E37AB4();
            v16 = sub_252E37834();
            v17 = 0;
            v3 = 1;
            while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v4 + 32))
            {
              v19 = v16 >> 6;
              if ((v78[v16 >> 6] & (1 << v16)) == 0)
              {
                goto LABEL_91;
              }

              v20 = *(v4 + 9);
              v21 = *(v4[6] + 8 * v16);
              type metadata accessor for HomeFilter.Builder();
              v22 = swift_allocObject();
              *(v22 + 16) = 0;
              *(v22 + 24) = 0;
              *(v22 + 32) = 0;
              *(v22 + 40) = 7;
              *(v22 + 48) = 0u;
              *(v22 + 64) = 0u;
              *(v22 + 80) = 0u;
              *(v22 + 96) = 0u;
              *(v22 + 112) = 0u;
              *(v22 + 128) = 0u;
              *(v22 + 144) = 0u;
              *(v22 + 160) = 0u;
              *(v22 + 175) = 0;
              v23 = sub_252B72040(v77);

              v24 = (*(*v23 + 624))(v21);

              (*(*v24 + 760))(v25);

              sub_252E37A94();
              sub_252E37AC4();
              v3 = 1;
              sub_252E37AD4();
              sub_252E37AA4();
              v18 = 1 << *(v4 + 32);
              if (v16 >= v18)
              {
                goto LABEL_92;
              }

              v26 = v78[v19];
              if ((v26 & (1 << v16)) == 0)
              {
                goto LABEL_93;
              }

              if (v20 != *(v4 + 9))
              {
                goto LABEL_94;
              }

              v27 = v26 & (-2 << (v16 & 0x3F));
              if (v27)
              {
                v18 = __clz(__rbit64(v27)) | v16 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v28 = v19 << 6;
                v29 = v19 + 1;
                v30 = &v4[v19 + 8];
                while (v29 < (v18 + 63) >> 6)
                {
                  v32 = *v30++;
                  v31 = v32;
                  v28 += 64;
                  ++v29;
                  if (v32)
                  {
                    sub_252ACBF38(v16, v20, 0);
                    v18 = __clz(__rbit64(v31)) + v28;
                    goto LABEL_21;
                  }
                }

                sub_252ACBF38(v16, v20, 0);
              }

LABEL_21:
              ++v17;
              v16 = v18;
              if (v17 == v15)
              {
                v33 = v79[0];
                v5 = v71;
                v3 = v72;
                v6 = v74;
                goto LABEL_36;
              }
            }

            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
            goto LABEL_95;
          }

          v33 = MEMORY[0x277D84F90];
LABEL_36:
          v34 = v33 >> 62;
          if (v33 >> 62)
          {
            v76 = sub_252E378C4();
          }

          else
          {
            v76 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v35 = v6 >> 62;
          if (v6 >> 62)
          {
            v36 = sub_252E378C4();
          }

          else
          {
            v36 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v37 = v36 + v76;
          if (__OFADD__(v36, v76))
          {
            goto LABEL_98;
          }

          if (swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            if (!v35)
            {
              v38 = v6 & 0xFFFFFFFFFFFFFF8;
              if (v37 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_48;
              }

              goto LABEL_47;
            }

LABEL_46:
            sub_252E378C4();
            goto LABEL_47;
          }

          if (v35)
          {
            goto LABEL_46;
          }

LABEL_47:
          v6 = sub_252E37A54();
          v38 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_48:
          v75 = v6;
          v39 = *(v38 + 16);
          v40 = *(v38 + 24);
          if (v34)
          {
            v41 = sub_252E378C4();
            if (v41)
            {
LABEL_52:
              if (((v40 >> 1) - v39) < v76)
              {
                goto LABEL_100;
              }

              v42 = v38 + 8 * v39 + 32;
              if (v34)
              {
                v43 = &qword_27F5429C8;
                if (v41 < 1)
                {
                  goto LABEL_103;
                }

                v67 = v38;
                sub_252CA5268();
                for (i = 0; i != v41; ++i)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(v43, &unk_252E47580);
                  v45 = v43;
                  v46 = sub_2529FBD80(v79, i, v33);
                  v48 = *v47;
                  (v46)(v79, 0);
                  v43 = v45;
                  *(v42 + 8 * i) = v48;
                }

                v5 = v71;
                v3 = v72;
                v38 = v67;
              }

              else
              {
                type metadata accessor for HomeFilter();
                swift_arrayInitWithCopy();
              }

              v6 = v75;
              v7 = v73;
              if (v76 > 0)
              {
                v49 = *(v38 + 16);
                if (__OFADD__(v49, v76))
                {
                  goto LABEL_102;
                }

                *(v38 + 16) = v49 + v76;
              }

              goto LABEL_7;
            }
          }

          else
          {
            v41 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v41)
            {
              goto LABEL_52;
            }
          }

          v6 = v75;
          v7 = v73;
          if (v76 > 0)
          {
            goto LABEL_99;
          }

LABEL_7:
          v80 = v6;
          if (v7 == v5)
          {
            goto LABEL_64;
          }
        }

        v14 = sub_252E37694();

        if ((v14 & 1) == 0)
        {
          goto LABEL_18;
        }

        v7 = v73;
      }

      while (v73 != v5);
    }

LABEL_64:
    if (v6 >> 62)
    {
      v50 = sub_252E378C4();
    }

    else
    {
      v50 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v51 = MEMORY[0x277D84F90];
    if (v50)
    {
      v79[0] = MEMORY[0x277D84F90];
      if (v5)
      {
        v52 = 0;
        v53 = v3 & 0xC000000000000001;
        v3 &= 0xFFFFFFFFFFFFFF8uLL;
        while (1)
        {
          if (v53)
          {
            v54 = MEMORY[0x2530ADF00](v52, v72);
          }

          else
          {
            if (v52 >= *(v3 + 16))
            {
              goto LABEL_97;
            }

            v54 = *(v72 + 8 * v52 + 32);
          }

          v55 = v54;
          v56 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            goto LABEL_96;
          }

          v57 = [v54 isExcludeFilter];
          sub_252956D08();
          v58 = sub_252E37674();
          v4 = v58;
          if (v57)
          {
            v59 = sub_252E37694();

            if (v59)
            {
              sub_252E37A94();
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
              goto LABEL_71;
            }
          }

          else
          {
          }

LABEL_71:
          ++v52;
          if (v56 == v71)
          {
            v51 = v79[0];
            break;
          }
        }
      }

      sub_25297A8D8(v51);
      v61 = [a3 userTask];
      v62 = [a3 time];
      v63 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
      [v63 setUserTask_];
      type metadata accessor for HomeFilter();
      v64 = sub_252E37254();

      [v63 setFilters_];

      [v63 setTime_];
      return v63;
    }

    else
    {

      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v65 = sub_252E36AD4();
      __swift_project_value_buffer(v65, qword_27F544DA8);
      sub_252CC4050(0xD00000000000004ALL, 0x8000000252E910A0, 0xD00000000000008FLL, 0x8000000252E90F70, 0xD00000000000002ELL, 0x8000000252E910F0, 78);

      return a3;
    }
  }

  else
  {

    return a3;
  }
}

id sub_252CA4B88(void *a1, const void *a2)
{
  memcpy(__dst, a2, 0x1F8uLL);
  v3 = &off_279711000;
  v4 = [a1 filters];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for HomeFilter();
    v6 = sub_252E37264();

    memcpy(__src, __dst, 0x1F8uLL);
    if (sub_252956B94(__src) != 1)
    {
      *&__src[67] = *&__src[54];
      *&__src[69] = *&__src[56];
      *&__src[71] = *&__src[58];
      __src[73] = __src[60];
      *&__src[63] = *&__src[50];
      *&__src[65] = *&__src[52];
      if (!sub_252C5CF44())
      {
        memcpy(v42, __src, sizeof(v42));
        GEOLocationCoordinate2DMake();
        memcpy(v41, v42, sizeof(v41));
        memcpy(v43, __dst, sizeof(v43));
        sub_2529353AC(v43, v40);
        sub_2529353AC(__src, v40);
        v27 = sub_252CA3798(v41);
        memcpy(v44, v41, sizeof(v44));
        sub_25299F5D4(v44);
        if (v27)
        {
          v11 = sub_252CA4208(v27, v6, a1);

          sub_25299F5D4(__dst);

          return v11;
        }

        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        v28 = sub_252E36AD4();
        __swift_project_value_buffer(v28, qword_27F544DA8);
        sub_252CC3D90(0xD000000000000048, 0x8000000252E91050, 0xD00000000000008FLL, 0x8000000252E90F70);
        sub_25299F5D4(__dst);
        return a1;
      }
    }

    v7 = &off_279711000;
    v8 = [a1 userTask];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 attribute];
    }

    else
    {
      v10 = 0;
    }

    if (qword_27F53F480 != -1)
    {
LABEL_42:
      swift_once();
    }

    v13 = off_27F544A78;
    if (*(off_27F544A78 + 2))
    {
      v14 = sub_252A488EC();
      if (v15)
      {
        v10 = *(v13[7] + 8 * v14);
        type metadata accessor for HomeStore(0);

        v17 = static HomeStore.shared.getter(v16);
        v18 = v17[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
        if (v18 == 2 || (v18 & 1) != 0)
        {
          v19 = [a1 v3[192]];
          if (v19)
          {
            v20 = v19;
            v21 = sub_252E37264();

            v22 = [a1 *(v7 + 1712)];
            v11 = HomeStore.accessories(matching:supporting:)(v21, v22);
            v7 = v23;

            if (v7)
            {

              return v11;
            }

            v44[0] = MEMORY[0x277D84F90];
            if (v11 >> 62)
            {
              v3 = sub_252E378C4();
              if (v3)
              {
                goto LABEL_31;
              }
            }

            else
            {
              v3 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v3)
              {
LABEL_31:
                v38 = v10;
                v39 = v6;
                v31 = 0;
                while (1)
                {
                  if ((v11 & 0xC000000000000001) != 0)
                  {
                    v32 = MEMORY[0x2530ADF00](v31, v11);
                    v10 = (v31 + 1);
                    if (__OFADD__(v31, 1))
                    {
LABEL_39:
                      __break(1u);
LABEL_40:
                      v35 = v44[0];
                      v10 = v38;
                      v6 = v39;
                      goto LABEL_45;
                    }
                  }

                  else
                  {
                    if (v31 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      goto LABEL_42;
                    }

                    v32 = *(v11 + 8 * v31 + 32);

                    v10 = (v31 + 1);
                    if (__OFADD__(v31, 1))
                    {
                      goto LABEL_39;
                    }
                  }

                  v33 = *(*v32 + 272);
                  v6 = *v32 + 272;

                  v7 = v33(v34);

                  sub_25297AEDC(v7);
                  ++v31;
                  if (v10 == v3)
                  {
                    goto LABEL_40;
                  }
                }
              }
            }

            v35 = MEMORY[0x277D84F90];
LABEL_45:
            sub_252929F10(v11, 0);
            v36 = sub_252BBC530(v35, v10);

            if (v36[2])
            {
              v11 = sub_252CA4208(v36, v6, a1);

              return v11;
            }

            if (qword_27F53F500 != -1)
            {
              swift_once();
            }

            v37 = sub_252E36AD4();
            __swift_project_value_buffer(v37, qword_27F544DA8);
            sub_252CC3D90(0xD000000000000040, 0x8000000252E91000, 0xD00000000000008FLL, 0x8000000252E90F70);
            return a1;
          }

          sub_2529318DC();
          v11 = swift_allocError();
          v30 = 1;
        }

        else
        {
          sub_2529318DC();
          v11 = swift_allocError();
          v30 = 12;
        }

        *v29 = v30;

        return v11;
      }
    }

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v24 = sub_252E36AD4();
    __swift_project_value_buffer(v24, qword_27F544DA8);
    sub_252E379F4();

    v44[0] = 0xD000000000000028;
    v44[1] = 0x8000000252E90F40;
    v25 = HomeAttributeType.description.getter(v10);
    MEMORY[0x2530AD570](v25);

    sub_252CC3D90(0xD000000000000028, 0x8000000252E90F40, 0xD00000000000008FLL, 0x8000000252E90F70);

    return a1;
  }

  sub_2529318DC();
  v11 = swift_allocError();
  *v12 = 8;
  return v11;
}

unint64_t sub_252CA5268()
{
  result = qword_27F544A80;
  if (!qword_27F544A80)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5429C8, &unk_252E47580);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F544A80);
  }

  return result;
}

uint64_t sub_252CA52CC(uint64_t a1)
{
  v2 = sub_252E34134();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E34164();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277D5C150])
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v10 = sub_252C35970();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544D60);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E6F7D0);
    MEMORY[0x2530AD570](0x6F6C46636E797341, 0xE900000000000077);
    MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E6F810);
    v12 = sub_252D2CDB4();
    MEMORY[0x2530AD570](v12);

    sub_252CC3D90(v14, v15, 0xD000000000000075, 0x8000000252E6F840);

    (*(v7 + 8))(v9, v6);
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t FlowProvider.parse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_parse;
  v4 = sub_252E34164();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_252CA5698@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_intent;
  swift_beginAccess();
  memcpy(__dst, (v3 + v4), sizeof(__dst));
  memcpy(a2, (v3 + v4), 0x1F8uLL);
  return sub_252938414(__dst, v6, &qword_27F5404C8, &unk_252E3FD60);
}

uint64_t sub_252CA5724(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = *a2;
  v4 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_intent;
  swift_beginAccess();
  memcpy(v8, (v3 + v4), sizeof(v8));
  memcpy((v3 + v4), __dst, 0x1F8uLL);
  sub_252938414(__dst, &v6, &qword_27F5404C8, &unk_252E3FD60);
  return sub_25293847C(v8, &qword_27F5404C8, &unk_252E3FD60);
}

uint64_t sub_252CA57D8@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_intent;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(a1, (v1 + v3), 0x1F8uLL);
  return sub_252938414(__dst, v5, &qword_27F5404C8, &unk_252E3FD60);
}

uint64_t sub_252CA5860(const void *a1)
{
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_intent;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy((v1 + v3), a1, 0x1F8uLL);
  return sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
}

uint64_t FlowProvider.__allocating_init(locationService:parse:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_intent;
  sub_25293DEE0(__src);
  memcpy((v4 + v5), __src, 0x1F8uLL);
  v6 = sub_252929E74(a1, v4 + 16);
  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_252929E74((v7 + 16), v4 + 56);

  v8 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_parse;
  v9 = sub_252E34164();
  (*(*(v9 - 8) + 32))(v4 + v8, a2, v9);
  return v4;
}

uint64_t FlowProvider.init(locationService:parse:)(void *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_intent;
  sub_25293DEE0(__src);
  memcpy((v2 + v5), __src, 0x1F8uLL);
  v6 = sub_252929E74(a1, v2 + 16);
  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_252929E74((v7 + 16), v11);

  sub_252927BEC(v11, v2 + 56);
  v8 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_parse;
  v9 = sub_252E34164();
  (*(*(v9 - 8) + 32))(v2 + v8, a2, v9);
  return v2;
}

uint64_t sub_252CA5B04(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v57 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544AA0, &qword_252E59880);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = v43 - v5;
  v6 = sub_252E33E94();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x28223BE20](v6);
  v48 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544AA8, &unk_252E59888);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v43 - v9;
  v61 = sub_252E34164();
  v11 = *(v61 - 8);
  v12 = MEMORY[0x28223BE20](v61);
  v52 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v43 - v14;
  v16 = sub_252E358D4();
  v53 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_252E36AB4();
  v59 = *(v19 - 8);
  v60 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F5D0 != -1)
  {
    swift_once();
  }

  v22 = qword_27F544F58;
  sub_252E36A94();
  sub_252E375D4();
  v58 = v22;
  sub_252E36A84();
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v51 = v10;
  v54 = sub_252E36AD4();
  __swift_project_value_buffer(v54, qword_27F544D60);
  sub_252CC3D90(0xD000000000000017, 0x8000000252E6C450, 0xD00000000000006BLL, 0x8000000252E6C470);
  if (qword_27F53F388 != -1)
  {
    swift_once();
  }

  v55 = v21;
  sub_252E37604();
  qword_27F543738 = 0;

  sub_252E37614();
  v23 = type metadata accessor for HomeStore(0);
  v56 = static HomeStore.shared.getter(v23);
  v24 = sub_2529DE350();
  if (_s22HomeAutomationInternal20IntentSelectionCacheC6sharedACSgvgZ_0(v24))
  {
    sub_252D73864(v2 + OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_parse);
  }

  v25 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_parse;
  sub_252AB3FEC(v2 + OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_parse, 0, v68);
  memcpy(v69, v68, 0x1F8uLL);
  if (sub_252956B94(v69) == 1)
  {
    goto LABEL_10;
  }

  type metadata accessor for ReformationProvider();
  v34 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544AB8, &unk_252E59898);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_252E3C3C0;
  *(v35 + 32) = type metadata accessor for ControlHomeFlashlightReformationFlow(0);
  *(v35 + 40) = &off_2864BE7A0;
  *(v35 + 48) = type metadata accessor for ControlHomeLockReformationFlow(0);
  *(v35 + 56) = &off_2864B9918;
  *(v34 + 16) = v35;
  memcpy(v66, v69, sizeof(v66));
  memcpy(v67, v68, sizeof(v67));
  sub_2529353AC(v67, v65);
  sub_2529B1920(v2 + v25, v66, v63);

  swift_setDeallocating();
  swift_deallocClassInstance();
  if (!*&v63[24])
  {
    sub_25293847C(v63, &qword_27F540E78, &unk_252E3F330);
    type metadata accessor for HomeAutomationGuardFlow();
    memcpy(v66, v69, sizeof(v66));
    sub_252D42994(v66, v65);
    if (v65[0] != 9)
    {
      LOBYTE(v66[0]) = v65[0];
      swift_allocObject();
      v66[0] = HomeAutomationGuardFlow.init(guardError:)(v66);
      sub_252CA8844(&qword_27F544AC0, type metadata accessor for HomeAutomationGuardFlow, protocol conformance descriptor for HomeAutomationGuardFlow);
      sub_252E33604();

      sub_252E33664();

      sub_25293847C(v68, &qword_27F5404C8, &unk_252E3FD60);
      goto LABEL_29;
    }

    sub_25293847C(v68, &qword_27F5404C8, &unk_252E3FD60);
LABEL_10:
    v26 = v61;
    v46 = *(v11 + 16);
    v46(v15, v2 + v25, v61);
    if ((*(v11 + 88))(v15, v26) == *MEMORY[0x277D5C158])
    {
      (*(v11 + 96))(v15, v26);
      v45 = *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540468, &unk_252E3FC60) + 48)];
      v27 = v16;
      (*(v53 + 32))(v18, v15, v16);
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v28 = __swift_project_value_buffer(v54, qword_27F544DA8);
      v67[0] = 0;
      v67[1] = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000028, 0x8000000252E911C0);
      sub_252CA8844(&qword_27F544AB0, MEMORY[0x277D5F458], MEMORY[0x277D5F460]);
      v29 = sub_252E37D94();
      MEMORY[0x2530AD570](v29);

      MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E911F0);
      v44 = v18;
      v66[0] = v45;
      sub_252E34154();
      sub_252E37AE4();
      v43[1] = v28;
      sub_252CC3D90(v67[0], v67[1], 0xD00000000000006ELL, 0x8000000252E91150);

      v30 = v27;
      v31 = v51;
      sub_252CA7878(v51);
      v32 = sub_252E33684();
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(v31, 1, v32) != 1)
      {
        (*(v53 + 8))(v44, v30);
        sub_25293847C(v68, &qword_27F5404C8, &unk_252E3FD60);

        (*(v33 + 32))(v57, v31, v32);
        goto LABEL_30;
      }

      sub_25293847C(v31, &qword_27F544AA8, &unk_252E59888);
      sub_252CC4050(0xD000000000000055, 0x8000000252E91210, 0xD00000000000006ELL, 0x8000000252E91150, 0x776F6C46646E6966, 0xEA00000000002928, 62);

      (*(v53 + 8))(v44, v30);
    }

    else
    {
      (*(v11 + 8))(v15, v26);
    }

    v36 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_intent;
    swift_beginAccess();
    memcpy(v65, (v2 + v36), sizeof(v65));
    memcpy((v2 + v36), v68, 0x1F8uLL);
    sub_252938414(v68, v64, &qword_27F5404C8, &unk_252E3FD60);
    sub_25293847C(v65, &qword_27F5404C8, &unk_252E3FD60);
    if (qword_2814B09D0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v54, qword_2814B09D8);
    v64[0] = 0;
    v64[1] = 0xE000000000000000;
    sub_252E379F4();

    v64[0] = 0xD000000000000011;
    v64[1] = 0x8000000252E91130;
    v37 = v52;
    v46(v52, v2 + v25, v61);
    v38 = sub_252AD2138(v37);
    MEMORY[0x2530AD570](v38);

    sub_252CC4A5C(v64[0], v64[1], 1, 0xD00000000000006ELL, 0x8000000252E91150);

    memcpy(v66, (v2 + v36), sizeof(v66));
    memcpy(v67, (v2 + v36), sizeof(v67));
    if (sub_252956B94(v67) != 1)
    {
      memcpy(v63, v67, sizeof(v63));
      memcpy(v64, v66, 0x1F8uLL);
      sub_2529353AC(v64, &v62);
      if (sub_252ADA6B8(v63))
      {
        sub_252E35FE4();
        v39 = v48;
        sub_252E33E84();
        sub_252E33674();

        sub_25293847C(v66, &qword_27F5404C8, &unk_252E3FD60);
        sub_25293847C(v68, &qword_27F5404C8, &unk_252E3FD60);
        (*(v49 + 8))(v39, v50);
        goto LABEL_30;
      }

      sub_25293847C(v66, &qword_27F5404C8, &unk_252E3FD60);
    }

    sub_252CA6920(v2 + v25, v57);
LABEL_29:
    sub_25293847C(v68, &qword_27F5404C8, &unk_252E3FD60);

    goto LABEL_30;
  }

  sub_25293847C(v68, &qword_27F5404C8, &unk_252E3FD60);
  sub_252927BEC(v63, v64);
  __swift_project_boxed_opaque_existential_1(v64, v64[3]);
  sub_252E33604();
  sub_252E33664();
  sub_25293847C(v68, &qword_27F5404C8, &unk_252E3FD60);

  __swift_destroy_boxed_opaque_existential_1(v64);
LABEL_30:
  v40 = sub_252E375C4();
  v41 = v55;
  sub_252E36A74(v40, &dword_252917000, v58, "FindFlow", 8, 2, v55, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  return (*(v59 + 8))(v41, v60);
}

uint64_t sub_252CA6920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = sub_252E34164();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252E36AB4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F5D0 != -1)
  {
    swift_once();
  }

  v12 = qword_27F544F58;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (sub_252CA52CC(a1))
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544DA8);
    sub_252CC4A5C(0xD000000000000013, 0x8000000252E91400, 1, 0xD00000000000006ELL, 0x8000000252E91150);
    type metadata accessor for AsyncFlow();
    swift_allocObject();
    v54[0] = AsyncFlow.init()();
    sub_252CA8844(&qword_27F544338, type metadata accessor for AsyncFlow, protocol conformance descriptor for AsyncFlow);
    sub_252E33604();

    sub_252E33664();

    goto LABEL_34;
  }

  (*(v5 + 16))(v7, a1, v4);
  v14 = (*(v5 + 88))(v7, v4);
  if (v14 == *MEMORY[0x277D5C128])
  {
    goto LABEL_8;
  }

  if (v14 == *MEMORY[0x277D5C158])
  {
    (*(v5 + 96))(v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540468, &unk_252E3FC60);

    v15 = sub_252E358D4();
    (*(*(v15 - 8) + 8))(v7, v15);
LABEL_11:
    v16 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_intent;
    swift_beginAccess();
    memcpy(v53, (v2 + v16), sizeof(v53));
    memcpy(v54, (v2 + v16), 0x1F8uLL);
    if (sub_252956B94(v54) == 1)
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v17 = sub_252E36AD4();
      __swift_project_value_buffer(v17, qword_27F544D60);
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      sub_252E379F4();
      v51[0] = v2;
      type metadata accessor for FlowProvider(0);
      sub_252E37AE4();
      MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E6F8C0);
      sub_252CC4050(v52[0], v52[1], 0xD00000000000006ELL, 0x8000000252E91150, 0x776F6C46656B616DLL, 0xEF293A5F28726F46, 95);
LABEL_15:

      sub_252E33654();
      goto LABEL_34;
    }

    memcpy(v50, v54, sizeof(v50));
    memcpy(v51, v53, sizeof(v51));
    sub_2529353AC(v51, v49);
    sub_252CA7B24(v52, v50);
    memcpy(v50, v52, sizeof(v50));
    if (sub_252D8A048(v50))
    {
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v18 = sub_252E36AD4();
      __swift_project_value_buffer(v18, qword_27F544DA8);
      sub_252CC4A5C(0xD00000000000001ALL, 0x8000000252E913E0, 1, 0xD00000000000006ELL, 0x8000000252E91150);
      type metadata accessor for DiscoverHomeFlow(0);
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      sub_25293DEE0(v50);
      memcpy((v19 + 24), v50, 0x1F8uLL);
      v20 = OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_input;
      v21 = sub_252E34104();
      (*(*(v21 - 8) + 56))(v19 + v20, 1, 1, v21);
      *(v19 + 528) = 0;
      v22 = (v19 + OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_guardFlowSupplier);
      *v22 = sub_252D87E84;
      v22[1] = 0;
      v49[0] = v19;
      v23 = &unk_27F544AE8;
      v24 = type metadata accessor for DiscoverHomeFlow;
      v25 = &protocol conformance descriptor for DiscoverHomeFlow;
    }

    else
    {
      memcpy(v50, v52, sizeof(v50));
      if (sub_252CC0C40(v50))
      {
        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        v28 = sub_252E36AD4();
        __swift_project_value_buffer(v28, qword_27F544DA8);
        sub_252CC4A5C(0xD000000000000016, 0x8000000252E913C0, 1, 0xD00000000000006ELL, 0x8000000252E91150);
        type metadata accessor for ShowHomeFlow(0);
        v29 = swift_allocObject();
        sub_25293DEE0(v50);
        memcpy((v29 + 16), v50, 0x1F8uLL);
        v30 = OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_input;
        v31 = sub_252E34104();
        (*(*(v31 - 8) + 56))(v29 + v30, 1, 1, v31);
        *(v29 + 520) = 0;
        v32 = (v29 + OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_guardFlowSupplier);
        *v32 = sub_252CBEAB4;
        v32[1] = 0;
        v49[0] = v29;
        v23 = &unk_27F544AE0;
        v24 = type metadata accessor for ShowHomeFlow;
        v25 = &protocol conformance descriptor for ShowHomeFlow;
      }

      else
      {
        memcpy(v50, v52, sizeof(v50));
        if (sub_252D94AB4(v50))
        {
          if (qword_27F53F500 != -1)
          {
            swift_once();
          }

          v33 = sub_252E36AD4();
          __swift_project_value_buffer(v33, qword_27F544DA8);
          sub_252CC4A5C(0xD00000000000001DLL, 0x8000000252E913A0, 1, 0xD00000000000006ELL, 0x8000000252E91150);
          type metadata accessor for WhichOnesFailedFlow();
          v34 = swift_allocObject();
          v35 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v34);
          swift_beginAccess();
          v36 = *(v35 + 22);

          *(v34 + 16) = v36;
          v38 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v37);
          sub_252929E74((v38 + 136), v34 + 24);

          v40 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v39) + 29);

          *(v34 + 88) = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
          *(v34 + 96) = &off_2864BA730;
          *(v34 + 64) = v40;
          *(v34 + 104) = 0;
          *(v34 + 112) = sub_252D92E00;
          *(v34 + 120) = 0;
          v49[0] = v34;
          v23 = &unk_27F544AD8;
          v24 = type metadata accessor for WhichOnesFailedFlow;
          v25 = &protocol conformance descriptor for WhichOnesFailedFlow;
        }

        else
        {
          memcpy(v50, v52, sizeof(v50));
          if (sub_252BDA558(v50))
          {
            if (qword_27F53F500 != -1)
            {
              swift_once();
            }

            v43 = sub_252E36AD4();
            __swift_project_value_buffer(v43, qword_27F544DA8);
            sub_252CC4A5C(0xD00000000000001ALL, 0x8000000252E91380, 1, 0xD00000000000006ELL, 0x8000000252E91150);
            type metadata accessor for AutomateHomeFlow(0);
            swift_allocObject();
            *v50 = sub_252BD771C();
            v23 = &qword_27F543CD8;
            v24 = type metadata accessor for AutomateHomeFlow;
            v25 = aY_14;
          }

          else
          {
            memcpy(v50, v52, sizeof(v50));
            if ((sub_252B7B588(v50) & 1) == 0)
            {
              sub_252935408(v52);
              sub_25293847C(v53, &qword_27F5404C8, &unk_252E3FD60);
              if (qword_27F53F500 != -1)
              {
                swift_once();
              }

              v45 = sub_252E36AD4();
              __swift_project_value_buffer(v45, qword_27F544DA8);
              *v50 = 0;
              *&v50[8] = 0xE000000000000000;
              sub_252E379F4();
              MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E91350);
              sub_252E37AE4();
              sub_252CC4050(*v50, *&v50[8], 0xD00000000000006ELL, 0x8000000252E91150, 0x776F6C46656B616DLL, 0xEF293A5F28726F46, 130);
              goto LABEL_15;
            }

            if (qword_27F53F500 != -1)
            {
              swift_once();
            }

            v44 = sub_252E36AD4();
            __swift_project_value_buffer(v44, qword_27F544DA8);
            sub_252CC4A5C(0xD000000000000019, 0x8000000252E91320, 1, 0xD00000000000006ELL, 0x8000000252E91150);
            type metadata accessor for ControlHomeFlow(0);
            swift_allocObject();
            *v50 = ControlHomeFlow.init()();
            v23 = &qword_27F543828;
            v24 = type metadata accessor for ControlHomeFlow;
            v25 = protocol conformance descriptor for ControlHomeFlow;
          }
        }
      }
    }

    sub_252CA8844(v23, v24, v25);
    sub_252E33604();

    sub_252E33664();

    sub_252935408(v52);
    sub_25293847C(v53, &qword_27F5404C8, &unk_252E3FD60);
    goto LABEL_34;
  }

  if (v14 == *MEMORY[0x277D5C150] || v14 == *MEMORY[0x277D5C160])
  {
LABEL_8:
    (*(v5 + 8))(v7, v4);
    goto LABEL_11;
  }

  v47 = v2;
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v26 = sub_252E36AD4();
  v46[1] = __swift_project_value_buffer(v26, qword_27F544D60);
  v54[0] = 0;
  v54[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E6F7D0);
  v53[0] = v47;
  type metadata accessor for FlowProvider(0);
  sub_252E37AE4();
  MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E6F810);
  v27 = sub_252D2CDB4();
  MEMORY[0x2530AD570](v27);

  sub_252CC3D90(v54[0], v54[1], 0xD00000000000006ELL, 0x8000000252E91150);

  sub_252E33654();
  (*(v5 + 8))(v7, v4);
LABEL_34:
  v41 = sub_252E375C4();
  sub_252E36A74(v41, &dword_252917000, v12, "MakeFlowFor", 11, 2, v11, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_252CA7878@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_252E34144();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();

  if (v5)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544DA8);
    sub_252CC3D90(0xD000000000000019, 0x8000000252E91320, 0xD00000000000006ELL, 0x8000000252E91150);
    type metadata accessor for ControlHomeFlow(0);
    swift_allocObject();
    ControlHomeFlow.init()();
    sub_252CA8844(&qword_27F543828, type metadata accessor for ControlHomeFlow, protocol conformance descriptor for ControlHomeFlow);
    sub_252E33604();

    sub_252E33664();

    v7 = 0;
  }

  else
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544DA8);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E912B0);
    sub_252E34154();
    sub_252E37AE4();
    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000006ELL, 0x8000000252E91150, 0xD000000000000025, 0x8000000252E912F0, 139);

    v7 = 1;
  }

  v9 = sub_252E33684();
  return (*(*(v9 - 8) + 56))(a3, v7, 1, v9);
}

uint64_t *sub_252CA7B24@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>)
{
  memcpy(__dst, __src, 0x1F8uLL);
  v3 = *(&__dst[23] + 1);
  v4 = *(*(&__dst[23] + 1) + 16);
  sub_2529353AC(__dst, v132);
  v124 = v3;
  v5 = (v3 + 32);
  while (2)
  {
    if (!v4)
    {
      v125 = *&__dst[31];
      v7 = *(&__dst[24] + 1);
      v8 = BYTE5(__dst[24]);
      v9 = BYTE4(__dst[24]);
      v10 = BYTE3(__dst[24]);
      v11 = BYTE2(__dst[24]);
      v12 = BYTE1(__dst[24]);
      v13 = __dst[24];
      result = *&__dst[23];
      v16 = __dst[21];
      v15 = __dst[22];
      v17 = *(&__dst[20] + 1);
      v18 = *&__dst[20];
      v19 = BYTE8(__dst[19]);
      v21 = *(&__dst[18] + 1);
      v20 = *&__dst[19];
      v22 = __dst[18];
      v126 = BYTE1(__dst[18]);
      v23 = __dst[17];
      v24 = *(&__dst[16] + 1);
      v25 = *&__dst[16];
      v26 = __dst[15];
      v122 = BYTE8(__dst[14]);
      v27 = *(&__dst[13] + 8);
      v28 = BYTE1(__dst[13]);
      v129 = __dst[13];
      v127 = *(&__dst[12] + 1);
      v29 = *(&__dst[11] + 8);
      v30 = *(&__dst[10] + 8);
      v31 = *(&__dst[9] + 8);
      v32 = *(&__dst[8] + 8);
      v33 = *(&__dst[7] + 8);
      v34 = *(&__dst[6] + 8);
      v35 = *(&__dst[5] + 8);
      v36 = *(&__dst[4] + 8);
      v123 = __dst[4];
      v37 = __dst[3];
      v38 = BYTE8(__dst[2]);
      v39 = *&__dst[2];
      v40 = BYTE10(__dst[1]);
      v41 = BYTE9(__dst[1]);
      v42 = BYTE8(__dst[1]);
      v43 = *&__dst[1];
      v44 = BYTE10(__dst[0]);
      v46 = __dst[29];
      v45 = __dst[30];
      v48 = __dst[27];
      v47 = __dst[28];
      v50 = __dst[25];
      v49 = __dst[26];
      v51 = *&__dst[0];
LABEL_13:
      v62 = BYTE9(__dst[0]);
      v63 = BYTE8(__dst[0]);
      goto LABEL_14;
    }

    switch(*v5)
    {
      case 4:

        break;
      default:
        v6 = sub_252E37DB4();

        ++v5;
        --v4;
        if ((v6 & 1) == 0)
        {
          continue;
        }

        break;
    }

    break;
  }

  v51 = *&__dst[0];
  if (!*(*&__dst[0] + 16))
  {
    v125 = *&__dst[31];
    v7 = *(&__dst[24] + 1);
    v8 = BYTE5(__dst[24]);
    v9 = BYTE4(__dst[24]);
    v10 = BYTE3(__dst[24]);
    v11 = BYTE2(__dst[24]);
    v12 = BYTE1(__dst[24]);
    v13 = __dst[24];
    result = *&__dst[23];
    v16 = __dst[21];
    v15 = __dst[22];
    v17 = *(&__dst[20] + 1);
    v18 = *&__dst[20];
    v19 = BYTE8(__dst[19]);
    v21 = *(&__dst[18] + 1);
    v20 = *&__dst[19];
    v22 = __dst[18];
    v126 = BYTE1(__dst[18]);
    v23 = __dst[17];
    v24 = *(&__dst[16] + 1);
    v25 = *&__dst[16];
    v26 = __dst[15];
    v122 = BYTE8(__dst[14]);
    v27 = *(&__dst[13] + 8);
    v28 = BYTE1(__dst[13]);
    v129 = __dst[13];
    v127 = *(&__dst[12] + 1);
    v29 = *(&__dst[11] + 8);
    v30 = *(&__dst[10] + 8);
    v31 = *(&__dst[9] + 8);
    v32 = *(&__dst[8] + 8);
    v33 = *(&__dst[7] + 8);
    v34 = *(&__dst[6] + 8);
    v35 = *(&__dst[5] + 8);
    v36 = *(&__dst[4] + 8);
    v123 = __dst[4];
    v37 = __dst[3];
    v38 = BYTE8(__dst[2]);
    v39 = *&__dst[2];
    v40 = BYTE10(__dst[1]);
    v41 = BYTE9(__dst[1]);
    v42 = BYTE8(__dst[1]);
    v43 = *&__dst[1];
    v44 = BYTE10(__dst[0]);
    v46 = __dst[29];
    v45 = __dst[30];
    v48 = __dst[27];
    v47 = __dst[28];
    v50 = __dst[25];
    v49 = __dst[26];
    goto LABEL_13;
  }

  v121 = *&__dst[0];
  memcpy(v132, __dst, sizeof(v132));
  v52 = sub_252A15974();
  v53 = v52;
  v54 = v52 + 8;
  v55 = 1 << *(v52 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & v52[8];
  if (v57)
  {
    v58 = 0;
    v59 = __clz(__rbit64(v57));
    v60 = (v57 - 1) & v57;
    v61 = (v55 + 63) >> 6;
LABEL_19:
    v66 = (v52[6] + 16 * v59);
    v68 = *v66;
    v67 = v66[1];
    v69 = *(v52[7] + 8 * v59);

    v70 = v68;
    v71 = v67;
    v72 = v69;
LABEL_20:
    v130 = v72;
    while (v60)
    {
LABEL_27:
      v74 = __clz(__rbit64(v60));
      v60 &= v60 - 1;
      v75 = v74 | (v58 << 6);
      v76 = (v53[6] + 16 * v75);
      v77 = *v76;
      v78 = v76[1];
      v79 = *(v53[7] + 8 * v75);
      v80 = *(v72 + 16);
      v81 = *(v79 + 16);
      if (v80 == v81)
      {
        if (v77 != v70 || v78 != v71)
        {
          v128 = v77;
          v83 = v70;
          v84 = v71;
          result = sub_252E37DB4();
          v70 = v83;
          v77 = v128;
          v72 = v130;
          v71 = v84;
          if (result)
          {
LABEL_33:

            v72 = v79;
            v71 = v78;
            v70 = v77;
            goto LABEL_20;
          }
        }
      }

      else if (v80 < v81)
      {
        goto LABEL_33;
      }
    }

    while (1)
    {
      v73 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        __break(1u);
        return result;
      }

      if (v73 >= v61)
      {
        break;
      }

      v60 = v54[v73];
      ++v58;
      if (v60)
      {
        v58 = v73;
        goto LABEL_27;
      }
    }

    v85 = v72;

    if (*(v85 + 16))
    {
      memcpy(v132, (v85 + 32), sizeof(v132));
      sub_2529353AC(v132, v131);
      sub_252935408(__dst);

      v7 = *&v132[392];
      v8 = v132[389];
      v9 = v132[388];
      v10 = v132[387];
      v11 = v132[386];
      v12 = v132[385];
      v13 = v132[384];
      result = *&v132[368];
      v124 = *&v132[376];
      v125 = *&v132[496];
      v16 = *&v132[336];
      v15 = *&v132[352];
      v18 = *&v132[320];
      v17 = *&v132[328];
      v19 = v132[312];
      v21 = *&v132[296];
      v20 = *&v132[304];
      v22 = v132[288];
      v126 = v132[289];
      v23 = *&v132[272];
      v25 = *&v132[256];
      v24 = *&v132[264];
      v26 = *&v132[240];
      v122 = v132[232];
      v27 = *&v132[216];
      v28 = v132[209];
      v129 = v132[208];
      v127 = *&v132[200];
      v29 = *&v132[184];
      v30 = *&v132[168];
      v31 = *&v132[152];
      v32 = *&v132[136];
      v33 = *&v132[120];
      v34 = *&v132[104];
      v35 = *&v132[88];
      v36 = *&v132[72];
      v123 = v132[64];
      v37 = *&v132[48];
      v38 = v132[40];
      v39 = *&v132[32];
      v40 = v132[26];
      v41 = v132[25];
      v42 = v132[24];
      v43 = *&v132[16];
      v46 = *&v132[464];
      v45 = *&v132[480];
      v48 = *&v132[432];
      v47 = *&v132[448];
      v50 = *&v132[400];
      v49 = *&v132[416];
      v51 = *v132;
      v44 = v132[10];
      v62 = v132[9];
      v63 = v132[8];
      goto LABEL_14;
    }

    sub_252935408(__dst);
  }

  else
  {
    v64 = 0;
    v61 = (v55 + 63) >> 6;
    while (v61 - 1 != v57)
    {
      v58 = v57 + 1;
      v65 = v52[v57 + 9];
      v64 -= 64;
      ++v57;
      if (v65)
      {
        v60 = (v65 - 1) & v65;
        v59 = __clz(__rbit64(v65)) - v64;
        goto LABEL_19;
      }
    }

    sub_252935408(__dst);
  }

  v125 = *&__dst[31];
  v120 = *(&__dst[24] + 1);
  v119 = BYTE5(__dst[24]);
  v118 = BYTE4(__dst[24]);
  v117 = BYTE3(__dst[24]);
  v116 = BYTE2(__dst[24]);
  v115 = BYTE1(__dst[24]);
  v114 = __dst[24];
  v113 = *&__dst[23];
  v111 = __dst[21];
  v112 = __dst[22];
  v110 = __dst[20];
  v109 = BYTE8(__dst[19]);
  v107 = *(&__dst[18] + 1);
  v108 = *&__dst[19];
  v106 = __dst[18];
  v126 = BYTE1(__dst[18]);
  v105 = __dst[17];
  v104 = __dst[16];
  v122 = BYTE8(__dst[14]);
  v102 = *(&__dst[13] + 8);
  v103 = __dst[15];
  v101 = BYTE1(__dst[13]);
  v129 = __dst[13];
  v127 = *(&__dst[12] + 1);
  v99 = *(&__dst[10] + 8);
  v100 = *(&__dst[11] + 8);
  v97 = *(&__dst[8] + 8);
  v98 = *(&__dst[9] + 8);
  v95 = *(&__dst[6] + 8);
  v96 = *(&__dst[7] + 8);
  v93 = *(&__dst[4] + 8);
  v94 = *(&__dst[5] + 8);
  v123 = __dst[4];
  v38 = BYTE8(__dst[2]);
  v39 = *&__dst[2];
  v40 = BYTE10(__dst[1]);
  v41 = BYTE9(__dst[1]);
  v42 = BYTE8(__dst[1]);
  v43 = *&__dst[1];
  v44 = BYTE10(__dst[0]);
  v91 = __dst[30];
  v92 = __dst[3];
  v89 = __dst[28];
  v90 = __dst[29];
  v87 = __dst[26];
  v88 = __dst[27];
  v86 = __dst[25];
  v62 = BYTE9(__dst[0]);
  v63 = BYTE8(__dst[0]);
  sub_2529353AC(__dst, v132);
  v50 = v86;
  v49 = v87;
  v48 = v88;
  v47 = v89;
  v46 = v90;
  v45 = v91;
  v37 = v92;
  v36 = v93;
  v35 = v94;
  v34 = v95;
  v33 = v96;
  v32 = v97;
  v31 = v98;
  v30 = v99;
  v29 = v100;
  v28 = v101;
  v27 = v102;
  v26 = v103;
  v24 = *(&v104 + 1);
  v25 = v104;
  v23 = v105;
  v22 = v106;
  v21 = v107;
  v20 = v108;
  v19 = v109;
  v17 = *(&v110 + 1);
  v18 = v110;
  v16 = v111;
  v15 = v112;
  result = v113;
  v13 = v114;
  v12 = v115;
  v11 = v116;
  v10 = v117;
  v9 = v118;
  v8 = v119;
  v7 = v120;
  v51 = v121;
LABEL_14:
  v131[0] = v122;
  *a1 = v51;
  *(a1 + 8) = v63;
  v132[0] = v44;
  *(a1 + 9) = v62;
  *(a1 + 10) = v44;
  a1[2] = v43;
  *(a1 + 24) = v42;
  *(a1 + 25) = v41;
  *(a1 + 26) = v40;
  a1[4] = v39;
  *(a1 + 40) = v38;
  *(a1 + 3) = v37;
  *(a1 + 64) = v123;
  *(a1 + 9) = v36;
  *(a1 + 11) = v35;
  *(a1 + 13) = v34;
  *(a1 + 15) = v33;
  *(a1 + 17) = v32;
  *(a1 + 19) = v31;
  *(a1 + 21) = v30;
  *(a1 + 23) = v29;
  a1[25] = v127;
  *(a1 + 208) = v129;
  *(a1 + 209) = v28;
  *(a1 + 27) = v27;
  *(a1 + 232) = v131[0];
  *(a1 + 15) = v26;
  a1[32] = v25;
  a1[33] = v24;
  *(a1 + 17) = v23;
  *(a1 + 288) = v22;
  *(a1 + 289) = v126;
  a1[37] = v21;
  a1[38] = v20;
  *(a1 + 312) = v19;
  a1[40] = v18;
  a1[41] = v17;
  *(a1 + 21) = v16;
  *(a1 + 22) = v15;
  a1[46] = result;
  a1[47] = v124;
  *(a1 + 384) = v13;
  *(a1 + 385) = v12;
  *(a1 + 386) = v11;
  *(a1 + 387) = v10;
  *(a1 + 388) = v9;
  *(a1 + 389) = v8;
  a1[49] = v7;
  *(a1 + 25) = v50;
  *(a1 + 26) = v49;
  *(a1 + 27) = v48;
  *(a1 + 28) = v47;
  *(a1 + 29) = v46;
  *(a1 + 30) = v45;
  a1[62] = v125;
  return result;
}

uint64_t FlowProvider.deinit()
{
  sub_25293847C(v0 + 16, &qword_27F544A98, &unk_252E59870);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_parse;
  v2 = sub_252E34164();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  memcpy(v4, (v0 + OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_intent), 0x1F8uLL);
  sub_25293847C(v4, &qword_27F5404C8, &unk_252E3FD60);
  return v0;
}

uint64_t FlowProvider.__deallocating_deinit()
{
  sub_25293847C(v0 + 16, &qword_27F544A98, &unk_252E59870);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_parse;
  v2 = sub_252E34164();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  memcpy(v4, (v0 + OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_intent), 0x1F8uLL);
  sub_25293847C(v4, &qword_27F5404C8, &unk_252E3FD60);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FlowProvider(uint64_t a1)
{
  result = qword_27F544AC8;
  if (!qword_27F544AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252CA86DC(uint64_t a1)
{
  result = sub_252E34164();
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

uint64_t sub_252CA8844(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252CA888C(uint64_t a1)
{
  v29 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_252E378C4();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v35 = MEMORY[0x277D84F90];
  sub_2529AA3A0(0, v2 & ~(v2 >> 63), 0);
  v3 = v35;
  if (v29)
  {
    result = sub_252E37864();
  }

  else
  {
    result = sub_252E37834();
    v5 = *(a1 + 36);
  }

  v32 = result;
  v33 = v5;
  v34 = v29 != 0;
  if ((v2 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v28 = v2;
    while (v6 < v2)
    {
      if (__OFADD__(v6++, 1))
      {
        goto LABEL_36;
      }

      v9 = v32;
      v10 = v34;
      v30 = v33;
      v11 = sub_252DB3D9C(v32, v33, v34, a1);
      v12 = *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v13 = *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      v35 = v3;
      v15 = *(v3 + 16);
      v14 = *(v3 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_2529AA3A0((v14 > 1), v15 + 1, 1);
        v3 = v35;
      }

      *(v3 + 16) = v15 + 1;
      v16 = v3 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      if (v29)
      {
        if (!v10)
        {
          goto LABEL_41;
        }

        v17 = v3;
        if (sub_252E37884())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v2 = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544AF8, &qword_252E59938);
        v7 = sub_252E373D4();
        sub_252E37934();
        result = v7(v31, 0);
      }

      else
      {
        if (v10)
        {
          goto LABEL_42;
        }

        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        v17 = v3;
        v18 = 1 << *(a1 + 32);
        if (v9 >= v18)
        {
          goto LABEL_37;
        }

        v19 = v9 >> 6;
        v20 = *(a1 + 56 + 8 * (v9 >> 6));
        if (((v20 >> v9) & 1) == 0)
        {
          goto LABEL_38;
        }

        if (*(a1 + 36) != v30)
        {
          goto LABEL_39;
        }

        v21 = v20 & (-2 << (v9 & 0x3F));
        if (v21)
        {
          v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
          v2 = v28;
        }

        else
        {
          v22 = v19 << 6;
          v23 = v19 + 1;
          v24 = (a1 + 64 + 8 * v19);
          v2 = v28;
          while (v23 < (v18 + 63) >> 6)
          {
            v26 = *v24++;
            v25 = v26;
            v22 += 64;
            ++v23;
            if (v26)
            {
              result = sub_252ACBF38(v9, v30, 0);
              v18 = __clz(__rbit64(v25)) + v22;
              goto LABEL_32;
            }
          }

          result = sub_252ACBF38(v9, v30, 0);
        }

LABEL_32:
        v27 = *(a1 + 36);
        v32 = v18;
        v33 = v27;
        v34 = 0;
      }

      v3 = v17;
      if (v6 == v2)
      {
        sub_252ACBF38(v32, v33, v34);
        return v3;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

void *sub_252CA8BE4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

unint64_t sub_252CA8C88(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v85 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_91:
    v3 = sub_252E378C4();
    if (v3)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v81 = 0;
  v4 = 0;
  v73 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
  v5 = v2 & 0xC000000000000001;
  v75 = v2 + 32;
  v76 = v2 & 0xFFFFFFFFFFFFFF8;
  v68 = "Providing AsyncFlow";
  v83 = MEMORY[0x277D84F90];
  v71 = v3;
  v72 = v2;
  v70 = v2 & 0xC000000000000001;
  while (1)
  {
LABEL_4:
    if (v5)
    {
      v6 = MEMORY[0x2530ADF00](v4, v2);
    }

    else
    {
      if (v4 >= *(v76 + 16))
      {
        goto LABEL_89;
      }

      v6 = *(v75 + 8 * v4);
    }

    v7 = v6;
    if (__OFADD__(v4++, 1))
    {
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    [v6 value];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544AF0, &qword_252E59930);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_31;
    }

    v9 = v84;
    if (v84 != 0.0)
    {
      goto LABEL_31;
    }

    v78 = v7;
    v10 = v7;
    v11 = [v10 characteristic];
    v12 = [v11 characteristicType];

    v13 = sub_252E36F34();
    v15 = v14;

    if (v13 == sub_252E36F34() && v15 == v16)
    {
      break;
    }

    v17 = sub_252E37DB4();

    if (v17)
    {
      goto LABEL_15;
    }

    v7 = v78;
LABEL_31:
    if (v81)
    {
      v31 = v7;
      v32 = [v7 characteristic];
      v33 = [v32 characteristicType];

      v34 = sub_252E36F34();
      v36 = v35;

      if (v34 == sub_252E36F34() && v36 == v37)
      {

        v7 = v31;
LABEL_74:
        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        v62 = sub_252E36AD4();
        __swift_project_value_buffer(v62, qword_27F544CB8);
        sub_252CC3D90(0xD000000000000040, v68 | 0x8000000000000000, 0xD000000000000080, 0x8000000252E91470);

        v81 = 1;
        goto LABEL_39;
      }

      v38 = sub_252E37DB4();

      v7 = v31;
      if (v38)
      {
        goto LABEL_74;
      }
    }

    v39 = v7;
    MEMORY[0x2530AD700]();
    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
LABEL_38:

    v83 = v85;
LABEL_39:
    if (v4 == v3)
    {
      return v83;
    }
  }

LABEL_15:
  v18 = [*(a2 + v73) characteristics];
  sub_252BAC798();
  v19 = sub_252E37264();

  v80 = v10;
  v77 = v4;
  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_17;
    }

    goto LABEL_78;
  }

  v20 = sub_252E378C4();
  if (!v20)
  {
LABEL_78:

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v63 = sub_252E36AD4();
    __swift_project_value_buffer(v63, qword_27F544CB8);
    sub_252CC3D90(0xD000000000000029, 0x8000000252E91540, 0xD000000000000080, 0x8000000252E91470);
    v64 = [v10 characteristic];

    v65 = sub_252E37E04();
    v66 = [objc_opt_self() writeRequestWithCharacteristic:v64 value:v65];
    swift_unknownObjectRelease();

    MEMORY[0x2530AD700]();
    v3 = v71;
    v2 = v72;
    v4 = v77;
    v5 = v70;
    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    v7 = v78;
    goto LABEL_38;
  }

LABEL_17:
  v21 = 0;
  while (1)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x2530ADF00](v21, v19);
    }

    else
    {
      if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_85;
      }

      v22 = *(v19 + 8 * v21 + 32);
    }

    v23 = v22;
    v2 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v24 = [v22 characteristicType];
    v25 = sub_252E36F34();
    v27 = v26;

    if (v25 == sub_252E36F34() && v27 == v28)
    {

      goto LABEL_43;
    }

    v30 = sub_252E37DB4();

    if (v30)
    {
      break;
    }

    ++v21;
    if (v2 == v20)
    {
      goto LABEL_78;
    }
  }

LABEL_43:
  v2 = v83;
  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v40 = sub_252E36AD4();
  __swift_project_value_buffer(v40, qword_27F544CB8);
  sub_252CC3D90(0xD00000000000003CLL, 0x8000000252E91500, 0xD000000000000080, 0x8000000252E91470);
  v41 = v23;
  v42 = sub_252E37E04();
  v69 = objc_opt_self();
  v79 = [v69 writeRequestWithCharacteristic:v41 value:v42];
  swift_unknownObjectRelease();
  v82 = v41;

  v43 = v83 & 0xFFFFFFFFFFFFFF8;
  if (v83 >> 62)
  {
    v44 = sub_252E378C4();
  }

  else
  {
    v44 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = -v44;
  v46 = 4;
  while (1)
  {
    if (v45 + v46 == 4)
    {
      v58 = v82;
      v59 = [v69 writeRequestWithCharacteristic:v58 value:sub_252E37E04()];
      swift_unknownObjectRelease();

      MEMORY[0x2530AD700]();
      if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();

      v83 = v85;
      goto LABEL_71;
    }

    v47 = v46 - 4;
    if ((v83 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x2530ADF00](v46 - 4, v83);
    }

    else
    {
      if (v47 >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_86;
      }

      v48 = *(v83 + 8 * v46);
    }

    v49 = v48;
    v50 = [v48 characteristic];
    v51 = [v50 characteristicType];

    v52 = sub_252E36F34();
    v54 = v53;

    if (v52 == sub_252E36F34() && v54 == v55)
    {
      break;
    }

    v57 = sub_252E37DB4();

    if (v57)
    {
      goto LABEL_65;
    }

    ++v46;
    if (__OFADD__(v47, 1))
    {
      goto LABEL_88;
    }
  }

LABEL_65:
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v83 >> 62 || !isUniquelyReferenced_nonNull_bridgeObject)
  {
    v2 = sub_252D57AFC(v83);

    v43 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
  }

  if (v47 >= *(v43 + 16))
  {
    goto LABEL_90;
  }

  v61 = *(v43 + 8 * v46);
  *(v43 + 8 * v46) = v79;

  v83 = v2;
  v85 = v2;
LABEL_71:
  v81 = 1;
  v3 = v71;
  v2 = v72;
  v4 = v77;
  v5 = v70;
  if (v77 != v71)
  {
    goto LABEL_4;
  }

  return v83;
}

unint64_t *sub_252CA96F8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = result;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);

    v25[0] = sub_252E32E24();
    v25[1] = v14;
    MEMORY[0x28223BE20](v25[0]);
    v19[2] = v25;
    v15 = v26;
    v16 = sub_2529ED970(sub_25296A724, v19, v23);
    v26 = v15;

    if (v16)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        v18 = v24;

        return sub_252C53048(v21, v20, v22, v18);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252CA98C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v36[2] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v34 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v35 = v3;
    v29 = &v29;
    v30 = v7;
    MEMORY[0x28223BE20](v9);
    v31 = &v29 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v8);
    v32 = 0;
    v33 = v4;
    v10 = 0;
    v12 = *(v4 + 56);
    v4 += 56;
    v11 = v12;
    v13 = 1 << *(v4 - 24);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v11;
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v7 = v17 | (v10 << 6);

      v20 = sub_252E32E24();
      v8 = v21;
      v3 = &v29;
      v36[0] = v20;
      v36[1] = v21;
      MEMORY[0x28223BE20](v20);
      *(&v29 - 2) = v36;
      v22 = v35;
      v23 = sub_2529ED970(sub_25296A724, (&v29 - 4), v34);
      v35 = v22;

      if (v23)
      {
        *&v31[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_16:
          v25 = sub_252C53048(v31, v30, v32, v33);

          return v25;
        }
      }
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {
        goto LABEL_16;
      }

      v19 = *(v4 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  v28 = v34;

  v25 = sub_252CA8BE4(v27, v7, v4, v28, sub_252CA96F8);

  MEMORY[0x2530AED00](v27, -1, -1);

  return v25;
}

uint64_t sub_252CA9BC0(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_252CA98C4(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v23 = MEMORY[0x277D84FA0];

  sub_252E37874();
  v4 = sub_252E37904();
  if (v4)
  {
    v5 = v4;
    type metadata accessor for Service(0);
    v6 = v5;
    do
    {
      v22[0] = v6;
      swift_dynamicCast();
      v22[0] = sub_252E32E24();
      v22[1] = v7;
      MEMORY[0x28223BE20](v22[0]);
      v21[2] = v22;
      v8 = sub_2529ED970(sub_25296A69C, v21, a2);

      v9 = v22[9];
      if (v8)
      {
        v10 = *(v3 + 16);
        if (*(v3 + 24) <= v10)
        {
          sub_252DAAAAC(v10 + 1);
        }

        v3 = v23;
        sub_252E37EC4();
        sub_252E32E84();
        sub_252A19940(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        sub_252E36E94();
        MEMORY[0x2530AE390](*(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));

        sub_252E37044();

        result = sub_252E37F14();
        v12 = v3 + 56;
        v13 = -1 << *(v3 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v3 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v3 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v15 == v18;
            if (v15 == v18)
            {
              v15 = 0;
            }

            v17 |= v19;
            v20 = *(v12 + 8 * v15);
          }

          while (v20 == -1);
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v3 + 48) + 8 * v16) = v9;
        ++*(v3 + 16);
      }

      else
      {
      }

      v6 = sub_252E37904();
    }

    while (v6);
  }

  return v3;
}

uint64_t sub_252CA9EE8(void *a1)
{
  v2 = [a1 entityResponses];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for HomeEntityResponse();
    v4 = sub_252E37264();
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544D60);
    sub_252E379F4();

    v6 = a1;
    v7 = [v6 description];
    v8 = sub_252E36F34();
    v10 = v9;

    MEMORY[0x2530AD570](v8, v10);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

    v4 = MEMORY[0x277D84F90];
  }

  v59 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v12 = 0;
    v13 = v4 & 0xC000000000000001;
    v14 = v4 & 0xFFFFFFFFFFFFFF8;
    v54 = v4;
    v4 += 32;
    v15 = &off_279711000;
    v57 = v13;
    v58 = i;
    v55 = v4;
    v56 = v14;
    while (1)
    {
      if (v13)
      {
        v16 = MEMORY[0x2530ADF00](v12, v54);
      }

      else
      {
        if (v12 >= *(v14 + 16))
        {
          goto LABEL_45;
        }

        v16 = *(v4 + 8 * v12);
      }

      v17 = v16;
      v18 = __OFADD__(v12++, 1);
      if (v18)
      {
        break;
      }

      v19 = [v16 v15[220]];
      if (v19)
      {
        v20 = v19;
        type metadata accessor for HomeUserTaskResponse();
        v21 = sub_252E37264();

        v22 = [v17 entity];
        if (v22)
        {

          if (v21 >> 62)
          {
            v23 = sub_252E378C4();
            if (v23)
            {
LABEL_19:
              v24 = 0;
              v4 = v21 + 32;
              while (1)
              {
                if ((v21 & 0xC000000000000001) != 0)
                {
                  v25 = MEMORY[0x2530ADF00](v24, v21);
                }

                else
                {
                  if (v24 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_43;
                  }

                  v25 = *(v4 + 8 * v24);
                }

                v26 = v25;
                v18 = __OFADD__(v24++, 1);
                if (v18)
                {
                  __break(1u);
LABEL_43:
                  __break(1u);
                  goto LABEL_44;
                }

                if (qword_27F53F728 != -1)
                {
                  swift_once();
                }

                v27 = qword_27F575C38;
                v28 = [v26 taskOutcome];
                if (*(v27 + 16))
                {
                  v29 = v28;
                  sub_252E37EC4();
                  MEMORY[0x2530AE390](v29);
                  v30 = sub_252E37F14();
                  v31 = -1 << *(v27 + 32);
                  v32 = v30 & ~v31;
                  if ((*(v27 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
                  {
                    break;
                  }
                }

LABEL_20:

                if (v24 == v23)
                {

                  goto LABEL_35;
                }
              }

              v33 = ~v31;
              while (*(*(v27 + 48) + 8 * v32) != v29)
              {
                v32 = (v32 + 1) & v33;
                if (((*(v27 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
                {
                  goto LABEL_20;
                }
              }

              sub_252E37A94();
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
LABEL_35:
              v13 = v57;
              i = v58;
              v4 = v55;
              v14 = v56;
              v15 = &off_279711000;
              if (v12 != v58)
              {
                continue;
              }

LABEL_41:
              v34 = v59;
              goto LABEL_48;
            }
          }

          else
          {
            v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v23)
            {
              goto LABEL_19;
            }
          }
        }
      }

      if (v12 == i)
      {
        goto LABEL_41;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  v34 = MEMORY[0x277D84F90];
LABEL_48:

  if (v34 < 0 || (v34 & 0x4000000000000000) != 0)
  {
    goto LABEL_69;
  }

  for (j = *(v34 + 16); j; j = sub_252E378C4())
  {
    v36 = v34 & 0xC000000000000001;
    v37 = MEMORY[0x277D84F90];
    v38 = 0;
    if ((v34 & 0xC000000000000001) != 0)
    {
LABEL_66:
      v39 = MEMORY[0x2530ADF00](v38, v34);
      goto LABEL_57;
    }

    while (v38 < *(v34 + 16))
    {
      v39 = *(v34 + 8 * v38 + 32);
LABEL_57:
      v40 = v39;
      v41 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        break;
      }

      v42 = [v39 entity];
      if (v42 && (v43 = v42, v44 = [v42 entityIdentifier], v43, v44))
      {
        v45 = sub_252E36F34();
        v47 = v46;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_2529F7A80(0, *(v37 + 2) + 1, 1, v37);
        }

        v49 = *(v37 + 2);
        v48 = *(v37 + 3);
        if (v49 >= v48 >> 1)
        {
          v37 = sub_2529F7A80((v48 > 1), v49 + 1, 1, v37);
        }

        *(v37 + 2) = v49 + 1;
        v50 = &v37[16 * v49];
        *(v50 + 4) = v45;
        *(v50 + 5) = v47;
        if (v41 == j)
        {
          goto LABEL_71;
        }

        v38 = v41;
        if (v36)
        {
          goto LABEL_66;
        }
      }

      else
      {

        ++v38;
        if (v41 == j)
        {
          goto LABEL_71;
        }

        if (v36)
        {
          goto LABEL_66;
        }
      }
    }

    __break(1u);
LABEL_69:
    ;
  }

  v37 = MEMORY[0x277D84F90];
LABEL_71:

  v52 = sub_252CA9BC0(v51, v37);

  return v52;
}

unint64_t sub_252CAA4E0(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v65 = sub_252CC6468(MEMORY[0x277D84F90]);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for Service(0);
    sub_252A19940(&qword_27F541EB0, type metadata accessor for Service, protocol conformance descriptor for Entity);
    sub_252E373E4();
    v3 = v74;
    v4 = v75;
    v5 = v76;
    v6 = v77;
    v7 = v78;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v12 = a2 & 0xFFFFFFFFFFFFFF8;
  v71 = a2 & 0xC000000000000001;
  v70 = a2;
  v67 = v3;
  v68 = v4;
  v66 = v11;
LABEL_8:
  v13 = v6;
  while (v3 < 0)
  {
    if (!sub_252E37904() || (type metadata accessor for Service(0), swift_dynamicCast(), v16 = v72, v6 = v13, v69 = v7, !v72))
    {
LABEL_59:
      sub_25297DEB0(v67);
      if (qword_27F53F498 == -1)
      {
        goto LABEL_60;
      }

      goto LABEL_64;
    }

LABEL_19:
    if (a2 >> 62)
    {
      v17 = sub_252E378C4();
      if (!v17)
      {
        goto LABEL_53;
      }

LABEL_21:
      v18 = 0;
      while (2)
      {
        if (v71)
        {
          v19 = MEMORY[0x2530ADF00](v18, a2);
        }

        else
        {
          if (v18 >= *(v12 + 16))
          {
            goto LABEL_62;
          }

          v19 = *(a2 + 8 * v18 + 32);
        }

        v20 = v19;
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v22 = [v19 entity];
        if (v22 && (v23 = v22, v24 = [v22 entityIdentifier], v23, v24))
        {
          v25 = sub_252E36F34();
          v27 = v26;

          v28 = sub_252E32E24();
          if (v27)
          {
            if (v25 == v28 && v27 == v29)
            {

              a2 = v70;
LABEL_41:
              v32 = sub_252DA0F40(0x1B, 4);
              v33 = v32;
              if (!(v32 >> 62))
              {
                result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (result)
                {
                  goto LABEL_43;
                }

LABEL_52:

                goto LABEL_53;
              }

              result = sub_252E378C4();
              if (!result)
              {
                goto LABEL_52;
              }

LABEL_43:
              if ((v33 & 0xC000000000000001) != 0)
              {
                v35 = MEMORY[0x2530ADF00](0, v33);
              }

              else
              {
                if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  return result;
                }

                v35 = *(v33 + 32);
              }

              v36 = v35;

              v37 = [v36 userTask];

              if (!v37 || (v38 = [v37 value], v37, !v38))
              {

                goto LABEL_53;
              }

              v48 = [v38 BOOLValue];

              v49 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
              v50 = sub_252E36F04();
              v51 = [v49 initWithIdentifier:0 displayString:v50];

              v52 = v51;
              [v52 setBoolValue_];
              [v52 setType_];

              v53 = objc_allocWithZone(type metadata accessor for HomeUserTask());
              v54 = sub_252E36F04();
              v55 = [v53 initWithIdentifier:0 displayString:v54];

              v56 = v55;
              [v56 setTaskType_];
              [v56 setAttribute_];
              [v56 setValue_];

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
              v57 = swift_allocObject();
              *(v57 + 16) = xmmword_252E3C130;
              *(v57 + 32) = v56;
              v58 = v56;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v72 = v65;
              sub_2529FB234(v57, v16, isUniquelyReferenced_nonNull_native);

              v65 = v72;
              v3 = v67;
              v4 = v68;
              v11 = v66;
              v7 = v69;
              goto LABEL_8;
            }

            v31 = sub_252E37DB4();

            a2 = v70;
            if (v31)
            {
              goto LABEL_41;
            }

            goto LABEL_24;
          }

          a2 = v70;
        }

        else
        {
          sub_252E32E24();
        }

LABEL_24:

        ++v18;
        if (v21 == v17)
        {
          goto LABEL_53;
        }

        continue;
      }
    }

    v17 = *(v12 + 16);
    if (v17)
    {
      goto LABEL_21;
    }

LABEL_53:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v39 = sub_252E36AD4();
    __swift_project_value_buffer(v39, qword_27F544C70);

    v40 = sub_252E36AC4();
    v41 = sub_252E374D4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v72 = v43;
      *v42 = 136315138;

      v44 = sub_252CDBB90();
      v46 = v45;

      v47 = sub_252BE2CE0(v44, v46, &v72);
      a2 = v70;

      *(v42 + 4) = v47;
      _os_log_impl(&dword_252917000, v40, v41, "Couldn't find expected BOOLean value. Ignoring setting command for %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x2530AED00](v43, -1, -1);
      MEMORY[0x2530AED00](v42, -1, -1);
    }

    sub_2529515FC(8, 12, 0xD000000000000012, 0x8000000252E91590);

    v13 = v6;
    v4 = v68;
    v7 = v69;
    v11 = v66;
    v3 = v67;
  }

  v14 = v13;
  v15 = v7;
  v6 = v13;
  if (v7)
  {
LABEL_15:
    v69 = (v15 - 1) & v15;
    v16 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v16)
    {
      goto LABEL_59;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_59;
    }

    v15 = *(v4 + 8 * v6);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  swift_once();
LABEL_60:
  v60 = sub_252E36AD4();
  __swift_project_value_buffer(v60, qword_27F544C70);
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_252E379F4();

  v72 = 0xD00000000000001CLL;
  v73 = 0x8000000252E91570;
  sub_252CA888C(a1);
  v61 = MEMORY[0x2530AD730]();
  v63 = v62;

  MEMORY[0x2530AD570](v61, v63);

  sub_252CC3D90(v72, v73, 0xD000000000000080, 0x8000000252E91470);

  return v65;
}