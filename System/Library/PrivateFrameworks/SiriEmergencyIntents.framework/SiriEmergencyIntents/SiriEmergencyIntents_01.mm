uint64_t sub_266AEB448()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_266AEB484()
{
  result = qword_2800BD6D8;
  if (!qword_2800BD6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD6D8);
  }

  return result;
}

char *sub_266AEB4D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266AEB940(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_266AEB4F8(uint64_t a1, char a2)
{
  if (a2)
  {
    JUMPOUT(0x26D5EA1E0);
  }
}

double sub_266AEB50C(_OWORD *a1)
{
  result = 0.0;
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

uint64_t sub_266AEB524@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

unint64_t sub_266AEB568()
{
  result = qword_2800BD6E0;
  if (!qword_2800BD6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD6E0);
  }

  return result;
}

uint64_t sub_266AEB5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266AEE718();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_266AEB6C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_266AEE718();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_266AEB784(uint64_t a1)
{
  sub_266AEE718();
  if (v1 <= 0x3F)
  {
    sub_266AEB820();
    if (v2 <= 0x3F)
    {
      sub_266AEB884(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_266AEB820()
{
  result = qword_2800BD6F8;
  if (!qword_2800BD6F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2800BD6F8);
  }

  return result;
}

void sub_266AEB884(uint64_t a1)
{
  if (!qword_2800BD700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800BD708, &qword_266AF0398);
    v1 = sub_266AEEBE8();
    if (!v2)
    {
      atomic_store(v1, &qword_2800BD700);
    }
  }
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

char *sub_266AEB940(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD710, &qword_266AF03C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_266AEBA4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD718, &qword_266AF03D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266AEBAB4()
{
  result = qword_2800BD720;
  if (!qword_2800BD720)
  {
    sub_266AEE6D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD720);
  }

  return result;
}

unint64_t sub_266AEBB0C()
{
  result = qword_2800BD738;
  if (!qword_2800BD738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800BD730, &unk_266AF03E0);
    sub_266AEBB90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD738);
  }

  return result;
}

unint64_t sub_266AEBB90()
{
  result = qword_2800BD740;
  if (!qword_2800BD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD740);
  }

  return result;
}

uint64_t sub_266AEBBE4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t EmergencySituation.rawValue.getter(char a1)
{
  result = 0x61206C6175786573;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      return 0x63206E6F73696F70;
    case 3:
    case 9:
      return 0xD000000000000011;
    case 4:
      v3 = 11;
      goto LABEL_36;
    case 5:
      v3 = 10;
      goto LABEL_36;
    case 6:
      return 0x7078655F6D617363;
    case 7:
      return 0xD000000000000013;
    case 8:
      return 0xD000000000000010;
    case 10:
      return 0x6E65726973;
    case 11:
      return 0x6573756261;
    case 12:
      return 0x6853657669746361;
    case 13:
      return 0x746C7561737361;
    case 14:
      return 0x676E69796C6C7562;
    case 15:
      return 0x6469636341726163;
    case 16:
      return 0x7553736973697263;
    case 17:
      return 0x7265676E6164;
    case 18:
      return 0x676E697964;
    case 19:
      return 0x6944676E69746165;
    case 20:
      return 1701996902;
    case 21:
      return 0x75617373416E7567;
    case 22:
      return 0xD000000000000010;
    case 23:
      return 1886152040;
    case 24:
      return 0x697070616E64696BLL;
    case 25:
      return 0xD000000000000010;
    case 26:
      v3 = 5;
LABEL_36:
      result = v3 | 0xD000000000000010;
      break;
    case 27:
      result = 0x65736F647265766FLL;
      break;
    case 28:
      result = 0x6D726148666C6573;
      break;
    case 29:
      result = 0x676E696B6C617473;
      break;
    case 30:
      result = 0x636E617473627573;
      break;
    case 31:
      result = 0x65646963697573;
      break;
    case 32:
      result = 0x7369726F72726574;
      break;
    case 33:
      result = 0x65636E656C6F6976;
      break;
    case 34:
      result = 0x636E656772656D65;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

unint64_t static EmergencySituation.fromValueWithCleanup(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_266AEE678();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(a1, a2);
  if (result == 35)
  {
    v71 = a1;
    v72 = a2;
    sub_266AEE668();
    sub_266AEB484();
    v9 = sub_266AEEC08();
    v11 = v10;
    v12 = *(v5 + 8);
    v12(v7, v4);
    v66 = v12;
    v73 = v9;
    v74 = v11;
    v71 = a1;
    v72 = a2;
    sub_266AEE668();
    v13 = sub_266AEEC08();
    v15 = v14;
    v12(v7, v4);
    v71 = v13;
    v72 = v15;
    v69 = 32;
    v70 = 0xE100000000000000;
    v67 = 0;
    v68 = 0xE000000000000000;
    v16 = sub_266AEEC18();
    v18 = v17;

    v75 = v16;
    v76 = v18;
    v77 = sub_266AEEB38();
    v78 = v19;
    v71 = a1;
    v72 = a2;
    sub_266AEE668();
    sub_266AEEC08();
    v20 = v66;
    v66(v7, v4);
    v21 = sub_266AEEB38();
    v23 = v22;

    v79 = v21;
    v80 = v23;
    v81 = sub_266AEEB48();
    v82 = v24;
    v71 = a1;
    v72 = a2;
    v65 = v4;
    sub_266AEEBF8();
    v25 = sub_266AEEB48();
    v27 = v26;

    v83 = v25;
    v84 = v27;
    v71 = a1;
    v72 = a2;
    sub_266AEEBF8();
    v28 = sub_266AEEB48();
    v30 = v29;

    v71 = v28;
    v72 = v30;
    sub_266AEE668();
    v31 = sub_266AEEC08();
    v33 = v32;
    v34 = v65;
    v20(v7, v65);

    v71 = v31;
    v72 = v33;
    v69 = 32;
    v70 = 0xE100000000000000;
    v67 = 0;
    v68 = 0xE000000000000000;
    v35 = sub_266AEEC18();
    v37 = v36;

    v85 = v35;
    v86 = v37;
    v71 = a1;
    v72 = a2;
    sub_266AEE668();
    v38 = sub_266AEEC08();
    v40 = v39;
    v20(v7, v34);
    v71 = v38;
    v72 = v40;
    v69 = 32;
    v70 = 0xE100000000000000;
    v67 = 0;
    v68 = 0xE000000000000000;
    v41 = sub_266AEEC18();
    v43 = v42;

    v71 = v41;
    v72 = v43;
    sub_266AEEBF8();

    v44 = sub_266AEEB48();
    v46 = v45;

    v87 = v44;
    v88 = v46;
    v48 = v73;
    v47 = v74;

    v49 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v48, v47);

    if (v49 == 35 && (v51 = v75, v50 = v76, , v49 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v51, v50), , v49 == 35) && (v53 = v77, v52 = v78, , v49 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v53, v52), , v49 == 35) && (v55 = v79, v54 = v80, , v49 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v55, v54), , v49 == 35) && (v57 = v81, v56 = v82, , v49 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v57, v56), , v49 == 35) && (v59 = v83, v58 = v84, , v49 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v59, v58), , v49 == 35) && (v61 = v85, v60 = v86, , v49 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v61, v60), , v49 == 35) && (v63 = v87, v62 = v88, , v49 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v63, v62), , v49 == 35))
    {
      swift_arrayDestroy();
      return 35;
    }

    else
    {
      swift_arrayDestroy();
      return v49;
    }
  }

  return result;
}

uint64_t sub_266AEC788(char *a1, char *a2)
{
  v2 = *a2;
  v3 = EmergencySituation.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == EmergencySituation.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_266AEECB8();
  }

  return v8 & 1;
}

uint64_t sub_266AEC810()
{
  v1 = *v0;
  sub_266AEED18();
  EmergencySituation.rawValue.getter(v1);
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266AEC874(uint64_t a1)
{
  EmergencySituation.rawValue.getter(*v1);
  sub_266AEEB78();
}

uint64_t sub_266AEC8C8(uint64_t a1)
{
  v2 = *v1;
  sub_266AEED18();
  EmergencySituation.rawValue.getter(v2);
  sub_266AEEB78();

  return sub_266AEED38();
}

unint64_t sub_266AEC928@<X0>(Swift::String *a1@<X0>, SiriEmergencyIntents::EmergencySituation_optional *a2@<X8>)
{
  result = _s20SiriEmergencyIntents0B9SituationO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_266AEC958@<X0>(unint64_t *a1@<X8>)
{
  result = EmergencySituation.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t _s20SiriEmergencyIntents0B9SituationO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_266AEECC8();

  if (v2 >= 0x23)
  {
    return 35;
  }

  else
  {
    return v2;
  }
}

unint64_t _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000266AF0EC0 == a2;
  if (v3 || (sub_266AEECB8() & 1) != 0 || a1 == 0xD000000000000011 && 0x8000000266AF1260 == a2 || (sub_266AEECB8() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0x61206C6175786573 && a2 == 0xEE00746C75617373 || (sub_266AEECB8() & 1) != 0 || a1 == 0x73416C6175786573 && a2 == 0xED0000746C756173 || (sub_266AEECB8() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x63206E6F73696F70 && a2 == 0xEE006C6F72746E6FLL || (sub_266AEECB8() & 1) != 0 || a1 == 0x6F436E6F73696F70 && a2 == 0xED00006C6F72746ELL || (sub_266AEECB8() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0xD000000000000011 && 0x8000000266AF0F00 == a2 || (sub_266AEECB8() & 1) != 0 || a1 == 0xD000000000000010 && 0x8000000266AF1280 == a2 || (sub_266AEECB8() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0xD00000000000001BLL && 0x8000000266AF0F20 == a2 || (sub_266AEECB8() & 1) != 0 || a1 == 0xD000000000000018 && 0x8000000266AF12A0 == a2 || (sub_266AEECB8() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0xD00000000000001ALL && 0x8000000266AF0F40 == a2 || (sub_266AEECB8() & 1) != 0 || a1 == 0xD000000000000017 && 0x8000000266AF12C0 == a2 || (sub_266AEECB8() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 0x7078655F6D617363 && a2 == 0xED0000746963696CLL || (sub_266AEECB8() & 1) != 0 || a1 == 0x6C7078456D617363 && a2 == 0xEC00000074696369 || (sub_266AEECB8() & 1) != 0)
  {
    return 6;
  }

  if (a1 == 0xD000000000000013 && 0x8000000266AF0F70 == a2 || (sub_266AEECB8() & 1) != 0 || a1 == 0xD000000000000010 && 0x8000000266AF12E0 == a2 || (sub_266AEECB8() & 1) != 0)
  {
    return 7;
  }

  if (a1 == 0xD000000000000010 && 0x8000000266AF0F90 == a2 || (sub_266AEECB8() & 1) != 0 || a1 == 0x706C65486D617363 && a2 == 0xEE006D6974636956 || (sub_266AEECB8() & 1) != 0)
  {
    return 8;
  }

  if (a1 == 0xD000000000000011 && 0x8000000266AF0FB0 == a2 || (sub_266AEECB8() & 1) != 0 || a1 == 0xD000000000000012 && 0x8000000266AF1300 == a2 || (sub_266AEECB8() & 1) != 0)
  {
    return 9;
  }

  if (a1 == 0x6E65726973 && a2 == 0xE500000000000000 || (sub_266AEECB8() & 1) != 0 || a1 == 0xD000000000000012 && 0x8000000266AF1320 == a2 || (sub_266AEECB8() & 1) != 0 || a1 == 0xD000000000000013 && 0x8000000266AF1340 == a2 || (sub_266AEECB8() & 1) != 0)
  {
    return 10;
  }

  return _s20SiriEmergencyIntents0B9SituationO8rawValueACSgSS_tcfC_0(a1, a2);
}

uint64_t _s20SiriEmergencyIntents0B9SituationO14catiIntentNameACSgAA010CATIIntentG0O_tcfC_0(uint64_t result)
{
  if (result >= 0xAu)
  {
    return 35;
  }

  else
  {
    return result;
  }
}

unint64_t sub_266AED028()
{
  result = qword_2800BD748;
  if (!qword_2800BD748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD748);
  }

  return result;
}

uint64_t Siri_Nlu_External_UserParse.toConvertedUsoTask()()
{
  Siri_Nlu_External_UserParse.usoTask.getter();
  sub_266AEE8D8();
}

uint64_t Siri_Nlu_External_UserParse.identifierValue(entity:attributeName:namespaces:)(uint64_t a1, char a2, uint64_t a3)
{
  v4 = sub_266AEE8A8();

  v5 = sub_266AEDD98(v4, a3);

  return v5;
}

unint64_t Siri_Nlu_External_UserParse.usoTask.getter()
{
  v0 = sub_266AEE7C8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v12[-v5];
  v7 = sub_266AEE748();
  if (!*(v7 + 16))
  {

    return 0;
  }

  (*(v1 + 16))(v4, v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

  (*(v1 + 32))(v6, v4, v0);
  result = sub_266AEE838();
  if (result >> 62)
  {
    v10 = result;
    v11 = sub_266AEEC68();
    result = v10;
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_11:

    v9 = 0;
    goto LABEL_12;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x26D5E9E90](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(result + 32);
  }

LABEL_12:
  (*(v1 + 8))(v6, v0);
  return v9;
}

Swift::String_optional __swiftcall Siri_Nlu_External_UserParse.identifierValue(for:)(Swift::OpaquePointer a1)
{
  v60 = sub_266AEEA98();
  v2 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_266AEE818();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  v11 = Siri_Nlu_External_UserParse.identifiers.getter();
  v58 = *(v11 + 16);
  if (v58)
  {
    v47 = v10;
    v13 = 0;
    v14 = *(a1._rawValue + 2);
    v52 = v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v51 = v5 + 16;
    v48 = a1._rawValue + 32;
    v65 = 0x8000000266AF05C0;
    v66 = 0x8000000266AF05E0;
    v63 = 0x8000000266AF0580;
    v64 = 0x8000000266AF05A0;
    v62 = 0x8000000266AF0500;
    v49 = v14;
    v50 = (v2 + 8);
    v53 = v8;
    v54 = (v5 + 8);
    v56 = v5;
    v57 = v4;
    v55 = v11;
    while (v13 < *(v11 + 16))
    {
      (*(v5 + 16))(v8, v52 + *(v5 + 72) * v13, v4);
      v61 = v13;
      if (v14)
      {
        v15 = v48;
        v16 = v14;
        v17 = MEMORY[0x277D84F90];
        do
        {
          v19 = *v15++;
          v18 = v19;
          v20 = v19 == 7;
          v21 = 0x707954656E6F6870;
          if (v19 != 7)
          {
            v21 = 0x614E746E65746E69;
          }

          v22 = 0xE900000000000065;
          if (!v20)
          {
            v22 = 0xEA0000000000656DLL;
          }

          if (v18 == 6)
          {
            v21 = 0x54746361746E6F63;
            v22 = 0xEB00000000657079;
          }

          v23 = 0xD000000000000015;
          if (v18 == 4)
          {
            v24 = 0xD000000000000015;
          }

          else
          {
            v24 = 0xD000000000000012;
          }

          v25 = v66;
          if (v18 == 4)
          {
            v25 = v65;
          }

          if (v18 <= 5)
          {
            v21 = v24;
            v22 = v25;
          }

          if (v18 == 2)
          {
            v26 = 0xD000000000000012;
          }

          else
          {
            v26 = 0xD000000000000013;
          }

          v27 = v64;
          if (v18 == 2)
          {
            v27 = v63;
          }

          if (v18)
          {
            v23 = 0xD000000000000012;
          }

          v28 = v62;
          if (!v18)
          {
            v28 = 0x8000000266AF0540;
          }

          if (v18 <= 1)
          {
            v29 = v28;
          }

          else
          {
            v23 = v26;
            v29 = v27;
          }

          if (v18 <= 3)
          {
            v30 = v23;
          }

          else
          {
            v30 = v21;
          }

          if (v18 <= 3)
          {
            v31 = v29;
          }

          else
          {
            v31 = v22;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_266AEE1E0(0, *(v17 + 2) + 1, 1, v17);
          }

          v33 = *(v17 + 2);
          v32 = *(v17 + 3);
          if (v33 >= v32 >> 1)
          {
            v17 = sub_266AEE1E0((v32 > 1), v33 + 1, 1, v17);
          }

          *(v17 + 2) = v33 + 1;
          v34 = &v17[16 * v33];
          *(v34 + 4) = v30;
          *(v34 + 5) = v31;
          --v16;
        }

        while (v16);
      }

      else
      {
        v17 = MEMORY[0x277D84F90];
      }

      v35 = v59;
      v8 = v53;
      sub_266AEE808();
      v36 = sub_266AEEA88();
      v38 = v37;
      v39 = (*v50)(v35, v60);
      v67[0] = v36;
      v67[1] = v38;
      MEMORY[0x28223BE20](v39);
      *(&v47 - 2) = v67;
      LOBYTE(v36) = sub_266AEE4C4(sub_266AEE570, (&v47 - 4), v17);

      if (v36)
      {

        v40 = v57;
        v41 = v56 + 32;
        v42 = v47;
        (*(v56 + 32))(v47, v8, v57);
        v43 = sub_266AEE7F8();
        v45 = v44;
        (*(v41 - 24))(v42, v40);
        v12 = v45;
        v11 = v43;
        goto LABEL_49;
      }

      v13 = v61 + 1;
      v4 = v57;
      (*v54)(v8, v57);
      v11 = v55;
      v5 = v56;
      v14 = v49;
      if (v13 == v58)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_46:

    v11 = 0;
    v12 = 0;
  }

LABEL_49:
  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

uint64_t Siri_Nlu_External_UserParse.userDialogAct.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_266AEE748();
  if (*(v3 + 16))
  {
    v4 = v3;
    v5 = sub_266AEE7C8();
    v12 = *(v5 - 8);
    (*(v12 + 16))(a2, v4 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v5);

    v6 = *(v12 + 56);
    v7 = a2;
    v8 = 0;
    v9 = v5;
  }

  else
  {

    v10 = sub_266AEE7C8();
    v6 = *(*(v10 - 8) + 56);
    v9 = v10;
    v7 = a2;
    v8 = 1;
  }

  return v6(v7, v8, 1, v9);
}

uint64_t Siri_Nlu_External_UserParse.init(userDialogAct:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD750, &qword_266AF04D8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  sub_266AEE768();
  sub_266AEE828();
  v4 = sub_266AEE778();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_266AEE58C(v3);
  }

  else
  {
    sub_266AEE748();
    (*(v5 + 8))(v3, v4);
  }

  sub_266AEE758();
  return swift_unknownObjectRelease();
}

uint64_t Siri_Nlu_External_UserParse.identifiers.getter()
{
  v0 = sub_266AEE738();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_266AEE7E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_266AEE7C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_266AEE748();
  if (*(v12 + 16))
  {
    (*(v9 + 16))(v11, v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);

    sub_266AEE7B8();
    (*(v9 + 8))(v11, v8);
    sub_266AEE7D8();
    (*(v5 + 8))(v7, v4);
    v13 = sub_266AEE728();
    (*(v1 + 8))(v3, v0);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v13;
}

uint64_t sub_266AEDD98(uint64_t a1, uint64_t a2)
{
  v4 = sub_266AEE898();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  if (!a1)
  {
    return 0;
  }

  v55 = *(a1 + 16);
  if (!v55)
  {
    return 0;
  }

  v44 = &v44 - v8;
  v45 = v9;
  v10 = 0;
  v12 = *(v9 + 16);
  v11 = v9 + 16;
  v13 = *(a2 + 16);
  v50 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
  v51 = v12;
  v46 = (a2 + 32);
  v60 = 0x8000000266AF05C0;
  v61 = 0x8000000266AF05E0;
  v58 = 0x8000000266AF0580;
  v59 = 0x8000000266AF05A0;
  v57 = 0x8000000266AF0500;
  v52 = v11;
  v53 = v7;
  v48 = *(v11 + 56);
  v49 = (v11 - 8);
  v47 = v13;
  v54 = v4;
  while (1)
  {
    v56 = v10;
    v51(v7, v50 + v48 * v10, v4);
    if (v13)
    {
      v14 = v46;
      v15 = v13;
      v16 = MEMORY[0x277D84F90];
      do
      {
        v18 = *v14++;
        v17 = v18;
        v19 = v18 == 7;
        v20 = 0x707954656E6F6870;
        if (v18 != 7)
        {
          v20 = 0x614E746E65746E69;
        }

        v21 = 0xE900000000000065;
        if (!v19)
        {
          v21 = 0xEA0000000000656DLL;
        }

        if (v17 == 6)
        {
          v20 = 0x54746361746E6F63;
          v21 = 0xEB00000000657079;
        }

        v22 = 0xD000000000000015;
        if (v17 == 4)
        {
          v23 = 0xD000000000000015;
        }

        else
        {
          v23 = 0xD000000000000012;
        }

        v24 = v61;
        if (v17 == 4)
        {
          v24 = v60;
        }

        if (v17 <= 5)
        {
          v20 = v23;
          v21 = v24;
        }

        if (v17 == 2)
        {
          v25 = 0xD000000000000012;
        }

        else
        {
          v25 = 0xD000000000000013;
        }

        v26 = v59;
        if (v17 == 2)
        {
          v26 = v58;
        }

        if (v17)
        {
          v22 = 0xD000000000000012;
        }

        v27 = v57;
        if (!v17)
        {
          v27 = 0x8000000266AF0540;
        }

        if (v17 <= 1)
        {
          v28 = v27;
        }

        else
        {
          v22 = v25;
          v28 = v26;
        }

        if (v17 <= 3)
        {
          v29 = v22;
        }

        else
        {
          v29 = v20;
        }

        if (v17 <= 3)
        {
          v30 = v28;
        }

        else
        {
          v30 = v21;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_266AEE1E0(0, *(v16 + 2) + 1, 1, v16);
        }

        v32 = *(v16 + 2);
        v31 = *(v16 + 3);
        if (v32 >= v31 >> 1)
        {
          v16 = sub_266AEE1E0((v31 > 1), v32 + 1, 1, v16);
        }

        *(v16 + 2) = v32 + 1;
        v33 = &v16[16 * v32];
        *(v33 + 4) = v29;
        *(v33 + 5) = v30;
        --v15;
      }

      while (v15);
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    v7 = v53;
    v34 = sub_266AEE888();
    v36 = v35 ? v34 : 0;
    v37 = v35 ? v35 : 0xE000000000000000;
    v62[0] = v36;
    v62[1] = v37;
    MEMORY[0x28223BE20](v34);
    *(&v44 - 2) = v62;
    v38 = sub_266AEE4C4(sub_266AEE64C, (&v44 - 4), v16);

    if (v38)
    {
      break;
    }

    v10 = v56 + 1;
    v4 = v54;
    (*v49)(v7, v54);
    v13 = v47;
    if (v10 == v55)
    {
      return 0;
    }
  }

  v40 = v44;
  v41 = v45 + 32;
  v42 = v54;
  (*(v45 + 32))(v44, v7, v54);
  v43 = sub_266AEE878();
  (*(v41 - 24))(v40, v42);
  return v43;
}

char *sub_266AEE1E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800BD760, &unk_266AF04F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_266AEE2EC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD758, &qword_266AF04E8);
  v10 = *(sub_266AEEAF8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_266AEEAF8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_266AEE4C4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_266AEE58C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD750, &qword_266AF04D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266AEE5F4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_266AEECB8() & 1;
  }
}