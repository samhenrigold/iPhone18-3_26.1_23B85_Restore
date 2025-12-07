unint64_t sub_1B7FCFA58()
{
  result = qword_1ED8DBBC8;
  if (!qword_1ED8DBBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBBC8);
  }

  return result;
}

unint64_t sub_1B7FCFAAC()
{
  result = qword_1ED8DCA30;
  if (!qword_1ED8DCA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCA30);
  }

  return result;
}

unint64_t sub_1B7FCFB00()
{
  result = qword_1ED8DBBC0;
  if (!qword_1ED8DBBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBBC0);
  }

  return result;
}

uint64_t sub_1B7FCFB68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

FindMyLocate::LocatePriority_optional __swiftcall LocatePriority.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1B7FCFC2C(uint64_t a1)
{
  sub_1B80C993C();
  Friend.hash(into:)(v2);
  return sub_1B80C997C();
}

unint64_t sub_1B7FCFC68()
{
  result = qword_1ED8DBBD0;
  if (!qword_1ED8DBBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBBD0);
  }

  return result;
}

uint64_t Friend.hash(into:)(uint64_t a1)
{
  sub_1B80C90FC();
  sub_1B80C911C();

  sub_1B80C911C();
}

unint64_t sub_1B7FCFDE8()
{
  result = qword_1ED8DBB90;
  if (!qword_1ED8DBB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA67100, &unk_1B80DA058);
    sub_1B809339C();
    sub_1B7FBADF0(&qword_1ED8DBBD8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBB90);
  }

  return result;
}

FindMyLocate::IDSStatus_optional __swiftcall IDSStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if ((rawValue + 1) < 4)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t _s12FindMyLocate6FriendV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 144);
  v28[8] = *(a1 + 128);
  v28[9] = v4;
  v28[10] = *(a1 + 160);
  v5 = *(a1 + 80);
  v28[4] = *(a1 + 64);
  v28[5] = v5;
  v6 = *(a1 + 112);
  v28[6] = *(a1 + 96);
  v28[7] = v6;
  v7 = *(a1 + 16);
  v28[0] = *a1;
  v28[1] = v7;
  v8 = *(a1 + 48);
  v28[2] = *(a1 + 32);
  v28[3] = v8;
  v9 = *(a2 + 144);
  v29[8] = *(a2 + 128);
  v29[9] = v9;
  v29[10] = *(a2 + 160);
  v10 = *(a2 + 80);
  v29[4] = *(a2 + 64);
  v29[5] = v10;
  v11 = *(a2 + 112);
  v29[6] = *(a2 + 96);
  v29[7] = v11;
  v12 = *(a2 + 16);
  v29[0] = *a2;
  v29[1] = v12;
  v13 = *(a2 + 48);
  v29[2] = *(a2 + 32);
  v29[3] = v13;
  v14 = sub_1B80C90FC();
  v16 = v15;
  if (v14 == sub_1B80C90FC() && v16 == v17)
  {
    sub_1B7FC8DA4(v28, v27);
    sub_1B7FC8DA4(v29, v27);

    sub_1B7FCAD28(v29);
    sub_1B7FCAD28(v28);
    goto LABEL_5;
  }

  v18 = sub_1B80C981C();
  sub_1B7FC8DA4(v28, v27);
  sub_1B7FC8DA4(v29, v27);

  sub_1B7FCAD28(v29);
  sub_1B7FCAD28(v28);
  v19 = 0;
  if (v18)
  {
LABEL_5:
    v20 = 0xE900000000000072;
    v21 = 0x65776F6C6C6F662ELL;
    v22 = *(a1 + 176);
    if (v22 <= 1)
    {
      v23 = 0x65776F6C6C6F662ELL;
      v24 = 0xE900000000000072;
      if (v22)
      {
        v23 = 0x69776F6C6C6F662ELL;
        v24 = 0xEA0000000000676ELL;
      }
    }

    else if (v22 == 2)
    {
      v23 = 0x466572757475662ELL;
      v24 = 0xEF7265776F6C6C6FLL;
    }

    else if (v22 == 3)
    {
      v23 = 0xD000000000000010;
      v24 = 0x80000001B80CBD30;
    }

    else
    {
      v23 = 0x676E69646E65702ELL;
      v24 = 0xED0000726566664FLL;
    }

    v25 = *(a2 + 176);
    if (v25 <= 1)
    {
      if (*(a2 + 176))
      {
        v20 = 0xEA0000000000676ELL;
        if (v23 != 0x69776F6C6C6F662ELL)
        {
          goto LABEL_26;
        }

LABEL_23:
        if (v24 == v20)
        {
          v19 = 1;
LABEL_27:

          return v19 & 1;
        }

LABEL_26:
        v19 = sub_1B80C981C();
        goto LABEL_27;
      }
    }

    else
    {
      if (v25 != 2)
      {
        if (v25 == 3)
        {
          v20 = 0x80000001B80CBD30;
          if (v23 != 0xD000000000000010)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v20 = 0xED0000726566664FLL;
          if (v23 != 0x676E69646E65702ELL)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_23;
      }

      v21 = 0x466572757475662ELL;
      v20 = 0xEF7265776F6C6C6FLL;
    }

    if (v23 != v21)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  return v19 & 1;
}

unint64_t sub_1B7FD01E0()
{
  result = qword_1ED8DC480;
  if (!qword_1ED8DC480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC480);
  }

  return result;
}

uint64_t sub_1B7FD0238(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7041794D646E6966 && a2 == 0xE900000000000070;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xEB00000000707041 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B80C981C();

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

unint64_t sub_1B7FD0358()
{
  result = qword_1ED8DBB98;
  if (!qword_1ED8DBB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBB98);
  }

  return result;
}

unint64_t sub_1B7FD03B0()
{
  result = qword_1ED8DC3F8;
  if (!qword_1ED8DC3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3F8);
  }

  return result;
}

uint64_t sub_1B7FD0434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6516856 && a2 == 0xE300000000000000;
  if (v5 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B80C981C();

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

unint64_t sub_1B7FD0518()
{
  result = qword_1ED8DBBB0;
  if (!qword_1ED8DBBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBBB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LegacyRefreshCommandReason(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1B7FD0628()
{
  result = qword_1ED8DC3A0;
  if (!qword_1ED8DC3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3A0);
  }

  return result;
}

uint64_t ClientID.connectionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ClientID(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t sub_1B7FD06B4(uint64_t a1)
{
  v2 = type metadata accessor for ClientID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7FD0710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7FD0774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t HandleType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA670C8, &qword_1B80DA010);
  v52 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA670D0, &qword_1B80DA018);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v45 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA670D8, &qword_1B80DA020);
  v48 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v57 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA670E0, &qword_1B80DA028);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA670E8, &qword_1B80DA030);
  v47 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA670F0, &qword_1B80DA038);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - v16;
  v18 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B7FD1604();
  v19 = v61;
  sub_1B80C99BC();
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
  v25 = sub_1B80C973C();
  v26 = (2 * *(v25 + 16)) | 1;
  v62 = v25;
  v63 = v25 + 32;
  v64 = 0;
  v65 = v26;
  v27 = sub_1B7FD12C4();
  if (v27 == 5 || v64 != v65 >> 1)
  {
    v32 = sub_1B80C955C();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0);
    *v34 = &type metadata for HandleType;
    sub_1B80C969C();
    sub_1B80C954C();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
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
      sub_1B7FD1270();
      v43 = v10;
      v38 = v14;
      v44 = v46;
      sub_1B80C968C();
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
      sub_1B7FD121C();
      v37 = v46;
      sub_1B80C968C();
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
    sub_1B80931E4();
    v38 = v24;
    v39 = v46;
    sub_1B80C968C();
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
    sub_1B809313C();
    v41 = v56;
    v42 = v46;
    sub_1B80C968C();
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
    return __swift_destroy_boxed_opaque_existential_0(v35);
  }

  v67 = 3;
  sub_1B8093190();
  v31 = v46;
  sub_1B80C968C();
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
  return __swift_destroy_boxed_opaque_existential_0(v35);
}

unint64_t sub_1B7FD10A0()
{
  v1 = 0x776F6C6C6168732ELL;
  v2 = 0x6576696C2ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_1B7FD112C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7FD1388(a2, a3);
  *a1 = result;
  return result;
}

FindMyLocate::GroupID_optional __swiftcall GroupID.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B80C967C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1B7FD11C8()
{
  result = qword_1EBA67318;
  if (!qword_1EBA67318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67318);
  }

  return result;
}

unint64_t sub_1B7FD121C()
{
  result = qword_1ED8DCD80;
  if (!qword_1ED8DCD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCD80);
  }

  return result;
}

unint64_t sub_1B7FD1270()
{
  result = qword_1ED8DCD78;
  if (!qword_1ED8DCD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCD78);
  }

  return result;
}

uint64_t sub_1B7FD12C4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DarwinNotifications(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B7FD1388(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265776F6C6C6F66 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69776F6C6C6F66 && a2 == 0xE900000000000067 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F46657275747566 && a2 == 0xEE007265776F6C6CLL || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F46657275747566 && a2 == 0xEF676E69776F6C6CLL || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4F676E69646E6570 && a2 == 0xEC00000072656666)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B80C981C();

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

uint64_t storeEnumTagSinglePayload for DarwinNotifications(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B7FD1604()
{
  result = qword_1ED8DD4B0;
  if (!qword_1ED8DD4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD4B0);
  }

  return result;
}

uint64_t sub_1B7FD1658(uint64_t a1)
{
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

__n128 __swift_memcpy53_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t _s12FindMyLocate8ClientIDV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B80C8E9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA676F8, &unk_1B80DEC90);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v14 = type metadata accessor for ClientID(0);
  v15 = *(v14 + 20);
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if ((v16 & 1) == 0)
  {
    if ((v17 & 1) == 0)
    {
      v19 = *(v14 + 28);
      v20 = *(v11 + 48);
      sub_1B7FCB390(a1 + v19, v13);
      sub_1B7FCB390(a2 + v19, &v13[v20]);
      v21 = *(v5 + 48);
      if (v21(v13, 1, v4) == 1)
      {
        if (v21(&v13[v20], 1, v4) == 1)
        {
          sub_1B7FB86D4(v13, &qword_1EBA667B0, &qword_1B80D68E8);
          v22 = 1;
          return v22 & 1;
        }
      }

      else
      {
        sub_1B7FCB390(v13, v10);
        if (v21(&v13[v20], 1, v4) != 1)
        {
          (*(v5 + 32))(v7, &v13[v20], v4);
          sub_1B7FCE654(&qword_1EBA65DB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v22 = sub_1B80C908C();
          v23 = *(v5 + 8);
          v23(v7, v4);
          v23(v10, v4);
          sub_1B7FB86D4(v13, &qword_1EBA667B0, &qword_1B80D68E8);
          return v22 & 1;
        }

        (*(v5 + 8))(v10, v4);
      }

      sub_1B7FB86D4(v13, &qword_1EBA676F8, &unk_1B80DEC90);
    }

LABEL_13:
    v22 = 0;
    return v22 & 1;
  }

  if (!v17)
  {
    goto LABEL_13;
  }

  return _s12FindMyLocate5FenceV2IDV2eeoiySbAE_AEtFZ_0();
}

uint64_t ClientID.xpcConnectionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ClientID(0) + 28);

  return sub_1B7FCB390(v3, a1);
}

uint64_t ClientID.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v16 - v2;
  v17 = 0x4449746E65696C43;
  v18 = 0xE800000000000000;
  v4 = type metadata accessor for ClientID(0);
  v5 = (v0 + v4[6]);
  if (v5[1])
  {
    v6 = *v5;
    v16[0] = 40;
    v16[1] = 0xE100000000000000;
    MEMORY[0x1B8CB7A40](v6);
    MEMORY[0x1B8CB7A40](v16[0], v16[1]);
  }

  v7 = MEMORY[0x1B8CB7A40](8250, 0xE200000000000000);
  if (*(v0 + v4[5]))
  {
    strcpy(v16, "[Background ");
    BYTE5(v16[1]) = 0;
    HIWORD(v16[1]) = -5120;
    v8 = MEMORY[0x1B8CB7760](v7);
    MEMORY[0x1B8CB7A40](v8);
  }

  else
  {
    v16[0] = 0x204350585BLL;
    v16[1] = 0xE500000000000000;
    sub_1B7FCB390(v0 + v4[7], v3);
    v9 = sub_1B80C8E9C();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v3, 1, v9) == 1)
    {
      sub_1B7FB86D4(v3, &qword_1EBA667B0, &qword_1B80D68E8);
      v11 = 0xE500000000000000;
      v12 = 0x3E6C696E3CLL;
    }

    else
    {
      v13 = MEMORY[0x1B8CB7760]();
      v11 = v14;
      (*(v10 + 8))(v3, v9);
      v12 = v13;
    }

    MEMORY[0x1B8CB7A40](v12, v11);
  }

  MEMORY[0x1B8CB7A40](93, 0xE100000000000000);
  MEMORY[0x1B8CB7A40](v16[0], v16[1]);

  return v17;
}

uint64_t ClientID.hash(into:)(uint64_t a1)
{
  v2 = sub_1B80C8E9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  v9 = type metadata accessor for ClientID(0);
  if (*(v1 + *(v9 + 20)))
  {
    sub_1B7FCE654(&qword_1EBA65A68, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

    return sub_1B80C905C();
  }

  else
  {
    sub_1B7FCB390(v1 + *(v9 + 28), v8);
    if ((*(v3 + 48))(v8, 1, v2) == 1)
    {
      return sub_1B80C995C();
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      sub_1B80C995C();
      sub_1B7FCE654(&qword_1EBA65A68, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1B80C905C();
      return (*(v3 + 8))(v5, v2);
    }
  }
}

uint64_t sub_1B7FD1F7C(uint64_t a1)
{
  sub_1B80C993C();
  ClientID.hash(into:)(v2);
  return sub_1B80C997C();
}

uint64_t sub_1B7FD1FD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B80C8E9C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B7FD2138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B80C8E9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t Handle.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1B7FD22A8(uint64_t a1)
{
  sub_1B80C993C();
  sub_1B80C90FC();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B7FD230C(void *a1, uint64_t *a2)
{
  v2 = sub_1B80C90FC();
  v4 = v3;
  if (v2 == sub_1B80C90FC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B80C981C();
  }

  return v7 & 1;
}

uint64_t sub_1B7FD23B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B7FD23F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7FD24A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B7FD2534()
{
  v1 = type metadata accessor for ReverseGeocodingRequest(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  v6 = v0 + v3 + *(v1 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
  (*(*(v7 - 8) + 8))(v6, v7);
  if (*(v6 + *(type metadata accessor for Location(0) + 20) + 8) != 1)
  {
  }

  v8 = *(v1 + 24);
  v9 = sub_1B80C8EDC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v5 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B7FD274C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Location(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E00, &qword_1B80D2160);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B7FD287C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Location(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E00, &qword_1B80D2160);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B7FD29BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FenceResponse(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7FD2A28(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for FenceResponse(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1B7FD2AA8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B7FD2AE8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B7FD2B28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B7FD2C14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B7FD2CEC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B7FD2D3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B7FD2D78()
{

  return MEMORY[0x1EEE6BDD0](v0, 208, 7);
}

uint64_t sub_1B7FD2E0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7FD2E48()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 248, 7);
}

uint64_t sub_1B7FD2EF0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 408, 7);
}

uint64_t sub_1B7FD2FE8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 272, 7);
}

uint64_t sub_1B7FD3090()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B7FD30E0()
{
  v1 = type metadata accessor for FriendshipRequest(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66020, &qword_1B80D2A10);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  if (*(v0 + v3 + *(v1 + 24) + 8))
  {
  }

  v7 = *(v1 + 28);
  v8 = sub_1B80C8E2C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B7FD3300()
{
  sub_1B7FC3CCC(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B7FD3348()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7FD3438()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7FD3470()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660B8, &qword_1B80D2E28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for ClientID(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 32) & ~v7;
  v14 = *(*v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  v9 = sub_1B80C8E9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v0 + v8, v9);

  v12 = v6[9];
  if (!(*(v10 + 48))(v0 + v8 + v12, 1, v9))
  {
    v11(v0 + v8 + v12, v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v14 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_1B7FD3690()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 17) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1B7FD3784()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for ClientID(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v14 = *(*v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = sub_1B80C8E9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v0 + v8, v9);

  v12 = v6[9];
  if (!(*(v10 + 48))(v0 + v8 + v12, 1, v9))
  {
    v11(v0 + v8 + v12, v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v14 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_1B7FD397C()
{
  v1 = (type metadata accessor for ClientID(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_1B80C8E9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);

  v8 = v1[9];
  if (!(*(v6 + 48))(v0 + v3 + v8, 1, v5))
  {
    v7(v0 + v3 + v8, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B7FD3ADC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for ClientID(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 9) & ~v7;
  v14 = *(*v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  v9 = sub_1B80C8E9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v0 + v8, v9);

  v12 = v6[9];
  if (!(*(v10 + 48))(v0 + v8 + v12, 1, v9))
  {
    v11(v0 + v8 + v12, v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v14 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_1B7FD3CE8()
{
  v1 = (type metadata accessor for ClientID(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_1B80C8E9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);

  v8 = v1[9];
  if (!(*(v6 + 48))(v0 + v3 + v8, 1, v5))
  {
    v7(v0 + v3 + v8, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B7FD3E44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (v4 + *(v2 + 64) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for ClientID(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 33) & ~v7;
  v14 = *(*v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  v9 = sub_1B80C8E9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v0 + v8, v9);

  v12 = v6[9];
  if (!(*(v10 + 48))(v0 + v8 + v12, 1, v9))
  {
    v11(v0 + v8 + v12, v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v14 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_1B7FD4068()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1B7FD4160()
{

  return MEMORY[0x1EEE6BDD0](v0, 77, 7);
}

uint64_t sub_1B7FD41A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66118, &qword_1B80D2FD8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for ClientID(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 11) & ~v7;
  v14 = *(*v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  v9 = sub_1B80C8E9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v0 + v8, v9);

  v12 = v6[9];
  if (!(*(v10 + 48))(v0 + v8 + v12, 1, v9))
  {
    v11(v0 + v8 + v12, v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v14 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_1B7FD43C8()
{
  v1 = type metadata accessor for Location(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 216) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  if (*(v0 + v3 + *(v1 + 20) + 8) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B7FD45A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7FD46C4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7FD46FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B7FD474C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7FD4788()
{
  v1 = (type metadata accessor for ClientID(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_1B80C8E9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);

  v8 = v1[9];
  if (!(*(v6 + 48))(v0 + v3 + v8, 1, v5))
  {
    v7(v0 + v3 + v8, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v3 + v4) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1B7FD48FC()
{
  sub_1B7FC3CCC(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B7FD4948()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7FD4980()
{
  v1 = (type metadata accessor for ClientID(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_1B80C8E9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);

  v8 = v1[9];
  if (!(*(v6 + 48))(v0 + v3 + v8, 1, v5))
  {
    v7(v0 + v3 + v8, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B7FD4AF8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B7FD4B48()
{
  v1 = (type metadata accessor for ClientID(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 101) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_1B80C8E9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);

  v8 = v1[9];
  if (!(*(v6 + 48))(v0 + v3 + v8, 1, v5))
  {
    v7(v0 + v3 + v8, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B7FD4DA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7FD4DE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B7FD4E20()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B7FD4EA0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7FD4ED8()
{

  sub_1B7FC3CCC(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B7FD4F18()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7FD4F50()
{

  v1 = *(v0 + 48);
  if (v1 >> 60 != 15)
  {
    sub_1B7FC3CCC(*(v0 + 40), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B7FD4FA0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7FD5070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66020, &qword_1B80D2A10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1B7FD51AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66020, &qword_1B80D2A10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B7FD52FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FriendshipRequest(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B7FD53B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FriendshipRequest(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B7FD54FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1B80C8FCC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1B7FD5574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1B80C8FCC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B7FD5618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Fence.Schedule(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1B80C8F9C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B7FD5708(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Fence.Schedule(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1B80C8F9C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1B7FD5840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B7FD5908(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B7FD59CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B7FD5A44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B7FD5AC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67398, &qword_1B80DC528);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B7FD5B54()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B7FD5B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Location(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1B80C8E2C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B7FD5CC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Location(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1B80C8E2C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B7FD5DE4()
{
  v1 = type metadata accessor for ReverseGeocodingRequest(0);
  v2 = *(*(v1 - 8) + 80);
  v15 = *(*(v1 - 8) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v14 = *(v4 + 64);

  v6 = v0 + ((v2 + 24) & ~v2);

  v7 = v6 + *(v1 + 20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
  (*(*(v8 - 8) + 8))(v7, v8);
  if (*(v7 + *(type metadata accessor for Location(0) + 20) + 8) != 1)
  {
  }

  v9 = *(v1 + 24);
  v10 = sub_1B80C8EDC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = (((v2 + 24) & ~v2) + v15 + v5) & ~v5;
  (*(v4 + 8))(v0 + v12, v3);

  return MEMORY[0x1EEE6BDD0](v0, v12 + v14, v2 | v5 | 7);
}

uint64_t sub_1B7FD60A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7FD60E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7FD615C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67498, qword_1B80DD250);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B7FD61D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67498, qword_1B80DD250);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B7FD6294()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  __swift_allocate_value_buffer(v0, qword_1EBA65A78);
  v1 = __swift_project_value_buffer(v0, qword_1EBA65A78);
  v2 = sub_1B80C8E2C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t static Date.testSetNow(date:)(uint64_t a1)
{
  if (MEMORY[0x1B8CB72B0]())
  {
    if (qword_1EBA65A70 != -1)
    {
      swift_once();
    }

    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
    v3 = __swift_project_value_buffer(v2, qword_1EBA65A78);
    swift_beginAccess();
    sub_1B7FD6470(a1, v3);
    return swift_endAccess();
  }

  else
  {
    result = sub_1B80C962C();
    __break(1u);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B7FD6470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t static Date.trustedNow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-v4];
  if (MEMORY[0x1B8CB72B0](v3))
  {
    if (qword_1EBA65A70 != -1)
    {
      swift_once();
    }

    v6 = __swift_project_value_buffer(v2, qword_1EBA65A78);
    swift_beginAccess();
    sub_1B7FD6818(v6, v5);
    v7 = sub_1B80C8E2C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v5, 1, v7) != 1)
    {
      return (*(v8 + 32))(a1, v5, v7);
    }

    sub_1B7FB86D4(v5, &unk_1EBA65FD0, &unk_1B80D1920);
  }

  else
  {
    sub_1B80C8B3C();
    if (v16)
    {
      if ((swift_dynamicCast() & 1) != 0 && v14[15] == 1)
      {
        return sub_1B80C8FDC();
      }
    }

    else
    {
      sub_1B7FB86D4(v15, &qword_1EBA65AE0, &unk_1B80D39E0);
    }

    if (qword_1ED8DBC60 != -1)
    {
      swift_once();
    }

    v10 = sub_1B80C900C();
    __swift_project_value_buffer(v10, qword_1ED8DDE18);
    v11 = sub_1B80C8FEC();
    v12 = sub_1B80C93EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B7FB5000, v11, v12, "Queried trustedNow but falling back to normal Date()", v13, 2u);
      MEMORY[0x1B8CB8970](v13, -1, -1);
    }
  }

  return sub_1B80C8E1C();
}

uint64_t sub_1B7FD67A8()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1ED8DDE18);
  __swift_project_value_buffer(v0, qword_1ED8DDE18);
  return sub_1B80C8FFC();
}

uint64_t sub_1B7FD6818(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Fence.TimeOfDay(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Fence.TimeOfDay(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1B7FD68FC(uint64_t a1, int a2)
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

uint64_t sub_1B7FD691C(uint64_t result, int a2, int a3)
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

FindMyLocate::DarwinNotifications_optional __swiftcall DarwinNotifications.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B80C967C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DarwinNotifications.rawValue.getter()
{
  v1 = 0xD00000000000001DLL;
  v2 = *v0;
  v3 = 0xD000000000000020;
  v4 = 0xD000000000000023;
  if (v2 != 3)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1B7FD6A3C()
{
  result = qword_1EBA65D30;
  if (!qword_1EBA65D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65D30);
  }

  return result;
}

uint64_t sub_1B7FD6A90()
{
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B7FD6B60(uint64_t a1)
{
  sub_1B80C911C();
}

uint64_t sub_1B7FD6C1C(uint64_t a1)
{
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

void sub_1B7FD6CF4(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001DLL;
  v3 = *v1;
  v4 = &off_1B80CB290;
  v5 = "FMLFollowersChangedNotification";
  v6 = 0xD000000000000020;
  v7 = "ngedNotification";
  v8 = 0xD000000000000023;
  if (v3 != 3)
  {
    v8 = 0xD00000000000001ELL;
    v7 = "ializedNotification";
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v2 = 0xD00000000000001FLL;
    v4 = "FMLDevicesChangedNotification";
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v2 = v6;
    v9 = v5;
  }

  *a1 = v2;
  a1[1] = v9 | 0x8000000000000000;
}

uint64_t KoreaFeatureFlag.hashValue.getter()
{
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](0);
  return sub_1B80C997C();
}

uint64_t sub_1B7FD6E38()
{
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](0);
  return sub_1B80C997C();
}

uint64_t sub_1B7FD6E7C(uint64_t a1)
{
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](0);
  return sub_1B80C997C();
}

unint64_t sub_1B7FD6EC0()
{
  result = qword_1EBA65D38;
  if (!qword_1EBA65D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65D38);
  }

  return result;
}

uint64_t sub_1B7FD6FA4(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  sub_1B7FBFCCC(0, &qword_1EBA65D40, 0x1E696ACD0);
  sub_1B7FBFCCC(0, a3, a4);
  return sub_1B80C943C();
}

void *sub_1B7FD7074()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v5];
  v2 = v5[0];
  if (v1)
  {
    v3 = sub_1B80C8D3C();
  }

  else
  {
    v3 = v2;
    sub_1B80C8D0C();

    swift_willThrow();
  }

  return v3;
}

void sub_1B7FD7198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1B80C901C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v3 + OBJC_IVAR____TtC12FindMyLocate15LocationShifter_shifter);
  v11 = a1 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location;
  v12 = type metadata accessor for Location(0);
  v13 = *(v11 + v12[10]);
  v14 = *(v11 + v12[11]);
  v15 = *(v11 + v12[8]);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v27 = sub_1B7FD7880;
  v28 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1B7FD788C;
  v26 = &block_descriptor;
  v17 = _Block_copy(&aBlock);

  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v27 = sub_1B7FD7B2C;
  v28 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1B7FCE114;
  v26 = &block_descriptor_6;
  v19 = _Block_copy(&aBlock);

  sub_1B7FD7B34();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E7F98], v7);
  v20 = sub_1B80C944C();
  (*(v8 + 8))(v10, v7);
  [v22 shiftCoordinate:v17 accuracy:0 withCompletionHandler:v19 mustGoToNetworkCallback:v20 errorHandler:v13 callbackQueue:{v14, v15}];

  _Block_release(v19);
  _Block_release(v17);
}

uint64_t sub_1B7FD7464(uint64_t a1, void (*a2)(char *, void), double a3, double a4, double a5)
{
  v54 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v53 - v10;
  v12 = type metadata accessor for Location(0);
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
  (*(*(v17 - 8) + 16))(v15, v16, v17);
  v18 = (v16 + v12[5]);
  v19 = v18[1];
  v20 = v18[3];
  v57 = v18[2];
  v21 = v57;
  v58 = v20;
  v22 = v18[5];
  v23 = v18[7];
  v61 = v18[6];
  v24 = v61;
  v62 = v23;
  v25 = v18[5];
  v27 = v18[3];
  v59 = v18[4];
  v26 = v59;
  v60 = v25;
  v28 = v18[9];
  v29 = v18[11];
  v65 = v18[10];
  v30 = v65;
  v66 = v29;
  v31 = v18[9];
  v32 = v18[7];
  v63 = v18[8];
  v64 = v31;
  v33 = v18[1];
  v56[0] = *v18;
  v34 = v56[0];
  v56[1] = v33;
  *&v31 = *(v16 + v12[6]);
  v35 = v12[7];
  v36 = v12[9];
  *&v33 = *(v16 + v12[12]);
  v37 = *(v16 + v12[13]);
  v38 = v12[14];
  v39 = v12[15];
  v40 = v12[16];
  v41 = &v15[v12[5]];
  *(v41 + 8) = v63;
  *(v41 + 9) = v28;
  v42 = v18[11];
  *(v41 + 10) = v30;
  *(v41 + 11) = v42;
  *&v42 = *(v16 + v38);
  *(v41 + 4) = v26;
  *(v41 + 5) = v22;
  v43 = *(v16 + v35);
  v44 = *(v16 + v36);
  *(v41 + 6) = v24;
  *(v41 + 7) = v32;
  LOBYTE(v35) = *(v16 + v39);
  LOBYTE(v36) = *(v16 + v40);
  *v41 = v34;
  *(v41 + 1) = v19;
  *(v41 + 2) = v21;
  *(v41 + 3) = v27;
  *&v15[v12[6]] = v31;
  *&v15[v12[7]] = v43;
  *&v15[v12[8]] = a5;
  *&v15[v12[9]] = v44;
  *&v15[v12[10]] = a3;
  *&v15[v12[11]] = a4;
  *&v15[v12[12]] = v33;
  *&v15[v12[13]] = v37;
  *&v15[v12[14]] = v42;
  v15[v12[15]] = v35;
  v15[v12[16]] = v36;
  sub_1B7FD7BE8(v56, v55);
  v45 = qword_1EBA65AB0;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = sub_1B80C900C();
  __swift_project_value_buffer(v46, qword_1EBA7ACD8);

  v47 = sub_1B80C8FEC();
  v48 = sub_1B80C941C();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v13;
    v51 = v50;
    v55[0] = v50;
    *v49 = 136315138;
    *(v49 + 4) = sub_1B7FB84FC(*(a1 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier), *(a1 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier + 8), v55);
    _os_log_impl(&dword_1B7FB5000, v47, v48, "LocationShifter: shifting completed %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v13 = v53;
    MEMORY[0x1B8CB8970](v51, -1, -1);
    MEMORY[0x1B8CB8970](v49, -1, -1);
  }

  sub_1B7FD7C58(v15, v11);
  (*(v13 + 56))(v11, 0, 1, v12);
  v54(v11, 0);
  sub_1B7FD7B80(v11);
  return sub_1B7FD7CBC(v15);
}

uint64_t sub_1B7FD788C(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);

  v7(v8, a2, a3, a4);
}

uint64_t sub_1B7FD78F8(void *a1, void (*a2)(char *, void *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  if (qword_1EBA65AB0 != -1)
  {
    swift_once();
  }

  v7 = sub_1B80C900C();
  __swift_project_value_buffer(v7, qword_1EBA7ACD8);
  v8 = a1;
  v9 = sub_1B80C8FEC();
  v10 = sub_1B80C93FC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = a1;
    v20 = v12;
    *v11 = 136446210;
    v13 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D68, &qword_1B80D1BA8);
    v14 = sub_1B80C90EC();
    v16 = sub_1B7FB84FC(v14, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1B7FB5000, v9, v10, "LocationShifter: shifting error %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B8CB8970](v12, -1, -1);
    MEMORY[0x1B8CB8970](v11, -1, -1);
  }

  v17 = type metadata accessor for Location(0);
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  a2(v6, a1);
  return sub_1B7FD7B80(v6);
}

unint64_t sub_1B7FD7B34()
{
  result = qword_1EBA65D58;
  if (!qword_1EBA65D58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA65D58);
  }

  return result;
}

uint64_t sub_1B7FD7B80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7FD7BE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D70, &qword_1B80D1BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7FD7C58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7FD7CBC(uint64_t a1)
{
  v2 = type metadata accessor for Location(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall Account.dsidBase64EncodedString()()
{
  v0 = sub_1B80C909C();
  v2 = v1;
  sub_1B80C8D2C();
  sub_1B7FC3CCC(v0, v2);
  sub_1B7FB6CB8();
  v3 = sub_1B80C948C();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

void __swiftcall Device.init()(FindMyLocate::Device *__return_ptr retstr)
{
  retstr->identifier._countAndFlagsBits = 0;
  retstr->identifier._object = 0xE000000000000000;
  retstr->deviceName._countAndFlagsBits = 0;
  retstr->deviceName._object = 0xE000000000000000;
  retstr->idsDeviceId._countAndFlagsBits = 0;
  retstr->idsDeviceId._object = 0xE000000000000000;
  *&retstr->isActive = 0;
}

uint64_t Friend.init(handle:type:expiry:createdAt:origin:secureLocationsCapable:shallowOrLiveSecureLocationsCapable:fallbackToLegacyAllowed:fallbackToLegacy:optedNotToShare:ownerHandle:)@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, _OWORD *a12)
{
  v16 = *a2;
  v17 = *a5;
  v18 = type metadata accessor for Friend(0);
  *(a9 + v18[11]) = 2;
  v19 = a1[9];
  *(a9 + 128) = a1[8];
  *(a9 + 144) = v19;
  *(a9 + 160) = a1[10];
  v20 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v20;
  v21 = a1[7];
  *(a9 + 96) = a1[6];
  *(a9 + 112) = v21;
  v22 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v22;
  v23 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v23;
  *(a9 + 176) = v16;
  sub_1B7FC8F2C(a3, a9 + v18[10], &unk_1EBA65FD0, &unk_1B80D1920);
  *(a9 + v18[14]) = v17;
  *(a9 + 177) = a6;
  *(a9 + 178) = a7;
  *(a9 + 179) = a8;
  *(a9 + 180) = a10;
  *(a9 + v18[15]) = a11;
  v24 = (a9 + v18[13]);
  v25 = a12[9];
  v24[8] = a12[8];
  v24[9] = v25;
  v24[10] = a12[10];
  v26 = a12[5];
  v24[4] = a12[4];
  v24[5] = v26;
  v27 = a12[7];
  v24[6] = a12[6];
  v24[7] = v27;
  v28 = a12[1];
  *v24 = *a12;
  v24[1] = v28;
  v29 = a12[3];
  v24[2] = a12[2];
  v24[3] = v29;
  return sub_1B7FC8F2C(a4, a9 + v18[12], &unk_1EBA65FD0, &unk_1B80D1920);
}

uint64_t Friend.ownerHandle.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Friend(0) + 52));
  v4 = v3[7];
  v5 = v3[9];
  v27 = v3[8];
  v28 = v5;
  v6 = v3[9];
  v29 = v3[10];
  v7 = v3[3];
  v8 = v3[5];
  v23 = v3[4];
  v9 = v23;
  v24 = v8;
  v10 = v3[5];
  v11 = v3[7];
  v25 = v3[6];
  v12 = v25;
  v26 = v11;
  v13 = v3[1];
  v20[0] = *v3;
  v20[1] = v13;
  v14 = v3[3];
  v16 = *v3;
  v15 = v3[1];
  v21 = v3[2];
  v17 = v21;
  v22 = v14;
  a1[8] = v27;
  a1[9] = v6;
  a1[10] = v3[10];
  a1[4] = v9;
  a1[5] = v10;
  a1[6] = v12;
  a1[7] = v4;
  *a1 = v16;
  a1[1] = v15;
  a1[2] = v17;
  a1[3] = v7;
  return sub_1B7FB8448(v20, &v19, &qword_1EBA65D78, &qword_1B80D2640);
}

uint64_t Friend.friendshipOrigin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Friend(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t Friend.isLegacyLocationCapable.getter()
{
  if (*(v0 + 178))
  {
    return 0;
  }

  else
  {
    return *(v0 + 179);
  }
}

uint64_t Friend.originatedFromTheSameClient.getter()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = sub_1B80C90BC();
  v5 = v4;

  v6 = type metadata accessor for Friend(0);
  if (*(v0 + *(v6 + 56)) != 1)
  {

    swift_arrayDestroy();
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v10[0] = v3;
  v10[1] = v5;
  MEMORY[0x1EEE9AC00](v6);
  v9[2] = v10;
  v7 = sub_1B7FBBC20(sub_1B7FBBCCC, v9, &unk_1F2FF93A0);
  swift_arrayDestroy();

  return v7 & 1;
}

uint64_t Friend.expireDate(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 56);
  if (*(v4 + 16))
  {
    v5 = sub_1B7FDA32C(*a1);
    if (v6)
    {
      v7 = v5;
      v8 = *(v4 + 56);
      v9 = sub_1B80C8E2C();
      v17 = *(v9 - 8);
      (*(v17 + 16))(a2, v8 + *(v17 + 72) * v7, v9);
      v10 = *(v17 + 56);
      v11 = a2;
      v12 = 0;
      v13 = v9;
    }

    else
    {
      v15 = sub_1B80C8E2C();
      v10 = *(*(v15 - 8) + 56);
      v13 = v15;
      v11 = a2;
      v12 = 1;
    }
  }

  else
  {
    sub_1B80C8D6C();
    v14 = sub_1B80C8E2C();
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a2;
    v12 = 0;
  }

  return v10(v11, v12, 1, v13);
}

uint64_t Friend.updatedFriend(with:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[9];
  v42[8] = a1[8];
  v42[9] = v5;
  v42[10] = a1[10];
  v6 = a1[5];
  v42[4] = a1[4];
  v42[5] = v6;
  v7 = a1[7];
  v42[6] = a1[6];
  v42[7] = v7;
  v8 = a1[1];
  v42[0] = *a1;
  v42[1] = v8;
  v9 = a1[3];
  v42[2] = a1[2];
  v42[3] = v9;
  v10 = v2[176];
  v11 = type metadata accessor for Friend(0);
  sub_1B7FB8448(&v2[v11[10]], a2 + v11[10], &unk_1EBA65FD0, &unk_1B80D1920);
  sub_1B7FB8448(&v2[v11[12]], a2 + v11[12], &unk_1EBA65FD0, &unk_1B80D1920);
  v13 = v11[14];
  v12 = v11[15];
  v14 = &v2[v11[13]];
  v15 = v14[3];
  v17 = v14[5];
  v46 = v14[4];
  v16 = v46;
  v47 = v17;
  v19 = v14[10];
  v20 = v14[7];
  v21 = v14[8];
  v22 = v21;
  v51 = v14[9];
  v18 = v51;
  v52 = v19;
  v50 = v21;
  v23 = v14[5];
  v25 = v14[7];
  v48 = v14[6];
  v24 = v48;
  v49 = v25;
  v26 = v14[1];
  v27 = v14[3];
  v44 = v14[2];
  v28 = v44;
  v45 = v27;
  v29 = v14[1];
  v43[0] = *v14;
  v30 = v43[0];
  v43[1] = v29;
  *(a2 + v11[11]) = 2;
  v31 = a1[9];
  *(a2 + 128) = a1[8];
  *(a2 + 144) = v31;
  *(a2 + 160) = a1[10];
  v32 = a1[5];
  *(a2 + 64) = a1[4];
  *(a2 + 80) = v32;
  v33 = a1[7];
  *(a2 + 96) = a1[6];
  *(a2 + 112) = v33;
  v34 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v34;
  v35 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v35;
  LOBYTE(v13) = v2[v13];
  v36 = v2[177];
  v37 = v2[178];
  v38 = v2[179];
  LOBYTE(v12) = v2[v12];
  *(a2 + 176) = v10;
  *(a2 + v11[14]) = v13;
  *(a2 + 177) = v36;
  *(a2 + 178) = v37;
  *(a2 + 179) = v38;
  *(a2 + v11[15]) = v12;
  v39 = (a2 + v11[13]);
  v39[8] = v22;
  v39[9] = v18;
  v39[10] = v14[10];
  v39[4] = v16;
  v39[5] = v23;
  v39[6] = v24;
  v39[7] = v20;
  *v39 = v30;
  v39[1] = v26;
  v39[2] = v28;
  v39[3] = v15;
  sub_1B7FC8DA4(v42, v41);
  return sub_1B7FB8448(v43, v41, &qword_1EBA65D78, &qword_1B80D2640);
}

uint64_t Friend.checkFriendUpdateNeeded(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B80C8E2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v78 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D80, &unk_1B80DC400);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v78 - v12;
  if (_s12FindMyLocate6FriendV2eeoiySbAC_ACtFZ_0(v2, a1))
  {
    v80 = v7;
    v79 = type metadata accessor for Friend(0);
    v14 = v79[12];
    v15 = v2;
    v16 = *(v11 + 48);
    v81 = v15;
    sub_1B7FB8448(v15 + v14, v13, &unk_1EBA65FD0, &unk_1B80D1920);
    v17 = a1 + v14;
    v18 = a1;
    sub_1B7FB8448(v17, &v13[v16], &unk_1EBA65FD0, &unk_1B80D1920);
    v19 = *(v5 + 48);
    if (v19(v13, 1, v4) == 1)
    {
      if (v19(&v13[v16], 1, v4) == 1)
      {
        sub_1B7FB86D4(v13, &unk_1EBA65FD0, &unk_1B80D1920);
LABEL_11:
        v28 = v81;
        if ((sub_1B7FD9E3C(*(v81 + 56), *(v18 + 56)) & 1) == 0)
        {
          goto LABEL_29;
        }

        if (*(v28 + 176) > 1u)
        {
          goto LABEL_25;
        }

        v29 = (v28 + v79[13]);
        v30 = v29[3];
        v31 = v29[4];
        v32 = v31;
        v118[5] = v29[5];
        v118[4] = v31;
        v33 = v29[9];
        v123 = v29[10];
        v34 = v29[7];
        v35 = v29[8];
        v36 = v35;
        v122 = v29[9];
        v121 = v35;
        v37 = v29[5];
        v38 = v29[7];
        v119 = v29[6];
        v120 = v38;
        v39 = v29[1];
        v118[0] = *v29;
        v118[1] = v39;
        v40 = v29[2];
        v41 = *v29;
        v42 = v29[1];
        v43 = v40;
        v118[3] = v29[3];
        v118[2] = v40;
        v44 = (v18 + v79[13]);
        v45 = v44[7];
        v46 = v44[9];
        v129 = v44[8];
        v130 = v46;
        v47 = v44[9];
        v131 = v44[10];
        v48 = v44[3];
        v49 = v44[5];
        v125 = v44[4];
        v126 = v49;
        v51 = v44[5];
        v50 = v44[6];
        v52 = v50;
        v128 = v44[7];
        v127 = v50;
        v53 = v44[1];
        v124[0] = *v44;
        v124[1] = v53;
        v54 = v44[2];
        v56 = *v44;
        v55 = v44[1];
        v57 = v54;
        v124[3] = v44[3];
        v124[2] = v54;
        v58 = v29[7];
        v59 = v29[9];
        v117[8] = v29[8];
        v117[9] = v59;
        v60 = v29[3];
        v61 = v29[5];
        v117[4] = v29[4];
        v117[5] = v61;
        v62 = v29[6];
        v117[7] = v58;
        v117[6] = v62;
        v63 = v29[1];
        v117[0] = *v29;
        v117[1] = v63;
        v64 = v29[2];
        v117[3] = v60;
        v117[2] = v64;
        v117[18] = v45;
        v117[19] = v129;
        v65 = v44[10];
        v117[20] = v47;
        v117[21] = v65;
        v117[14] = v48;
        v117[15] = v125;
        v117[16] = v51;
        v117[17] = v52;
        v117[10] = v29[10];
        v117[11] = v56;
        v117[12] = v55;
        v117[13] = v57;
        v132[8] = v36;
        v132[9] = v33;
        v132[10] = v29[10];
        v132[4] = v32;
        v132[5] = v37;
        v132[7] = v34;
        v132[6] = v119;
        v132[0] = v41;
        v132[1] = v42;
        v132[3] = v30;
        v132[2] = v43;
        if (sub_1B7FDAA2C(v132) == 1)
        {
          v105[8] = v117[19];
          v105[9] = v117[20];
          v105[10] = v117[21];
          v105[4] = v117[15];
          v105[5] = v117[16];
          v105[6] = v117[17];
          v105[7] = v117[18];
          v105[0] = v117[11];
          v105[1] = v117[12];
          v105[2] = v117[13];
          v105[3] = v117[14];
          if (sub_1B7FDAA2C(v105) == 1)
          {
            v114 = v117[8];
            v115 = v117[9];
            v116 = v117[10];
            v110 = v117[4];
            v111 = v117[5];
            v113 = v117[7];
            v112 = v117[6];
            v106 = v117[0];
            v107 = v117[1];
            v109 = v117[3];
            v108 = v117[2];
            sub_1B7FB8448(v118, &v94, &qword_1EBA65D78, &qword_1B80D2640);
            sub_1B7FB8448(v124, &v94, &qword_1EBA65D78, &qword_1B80D2640);
            sub_1B7FB86D4(&v106, &qword_1EBA65D78, &qword_1B80D2640);
LABEL_25:
            if (*(v28 + 177) != *(v18 + 177) || *(v28 + 178) != *(v18 + 178) || *(v28 + 179) != *(v18 + 179) || *(v28 + 180) != *(v18 + 180))
            {
              goto LABEL_29;
            }

            v73 = *(v28 + 96);
            v74 = *(v18 + 96);
            if (v73)
            {
              if (!v74 || (*(v28 + 88) != *(v18 + 88) || v73 != v74) && (sub_1B80C981C() & 1) == 0)
              {
                goto LABEL_29;
              }

LABEL_38:
              v75 = v79[15];
              v76 = *(v28 + v75);
              v77 = *(v18 + v75);
              if (v76 == 2)
              {
                v20 = v77 != 2;
                return v20 & 1;
              }

              if (v77 != 2)
              {
                v20 = v76 ^ v77;
                return v20 & 1;
              }

              goto LABEL_29;
            }

            if (!v74)
            {
              goto LABEL_38;
            }

LABEL_29:
            v20 = 1;
            return v20 & 1;
          }

          sub_1B7FB8448(v118, &v106, &qword_1EBA65D78, &qword_1B80D2640);
          sub_1B7FB8448(v124, &v106, &qword_1EBA65D78, &qword_1B80D2640);
        }

        else
        {
          v114 = v117[8];
          v115 = v117[9];
          v116 = v117[10];
          v110 = v117[4];
          v111 = v117[5];
          v113 = v117[7];
          v112 = v117[6];
          v106 = v117[0];
          v107 = v117[1];
          v109 = v117[3];
          v108 = v117[2];
          v90 = v117[7];
          v91 = v117[8];
          v92 = v117[9];
          v93 = v117[10];
          v86 = v117[3];
          v87 = v117[4];
          v88 = v117[5];
          v89 = v117[6];
          v66 = v117[0];
          v84 = v117[1];
          v85 = v117[2];
          v105[8] = v117[19];
          v105[9] = v117[20];
          v105[10] = v117[21];
          v105[4] = v117[15];
          v105[5] = v117[16];
          v105[6] = v117[17];
          v105[7] = v117[18];
          v105[0] = v117[11];
          v105[1] = v117[12];
          v105[2] = v117[13];
          v105[3] = v117[14];
          if (sub_1B7FDAA2C(v105) != 1)
          {
            v102 = v117[19];
            v103 = v117[20];
            v104 = v117[21];
            v98 = v117[15];
            v99 = v117[16];
            v100 = v117[17];
            v101 = v117[18];
            v94 = v117[11];
            v95 = v117[12];
            v96 = v117[13];
            v97 = v117[14];
            v67 = sub_1B80C90FC();
            v69 = v68;
            if (v67 == sub_1B80C90FC() && v69 == v70)
            {
              v71 = 1;
            }

            else
            {
              v71 = sub_1B80C981C();
            }

            sub_1B7FB8448(v118, v83, &qword_1EBA65D78, &qword_1B80D2640);
            sub_1B7FB8448(v124, v83, &qword_1EBA65D78, &qword_1B80D2640);
            sub_1B7FB8448(&v106, v83, &qword_1EBA65D78, &qword_1B80D2640);

            sub_1B7FB86D4(&v94, &qword_1EBA65D78, &qword_1B80D2640);
            v82[0] = v66;
            v82[7] = v90;
            v82[8] = v91;
            v82[9] = v92;
            v82[10] = v93;
            v82[3] = v86;
            v82[4] = v87;
            v82[5] = v88;
            v82[6] = v89;
            v82[1] = v84;
            v82[2] = v85;
            sub_1B7FCAD28(v82);
            v83[8] = v117[8];
            v83[9] = v117[9];
            v83[10] = v117[10];
            v83[4] = v117[4];
            v83[5] = v117[5];
            v83[6] = v117[6];
            v83[7] = v117[7];
            v83[0] = v117[0];
            v83[1] = v117[1];
            v83[2] = v117[2];
            v83[3] = v117[3];
            sub_1B7FB86D4(v83, &qword_1EBA65D78, &qword_1B80D2640);
            if ((v71 & 1) == 0)
            {
              goto LABEL_29;
            }

            goto LABEL_25;
          }

          v94 = v66;
          v101 = v117[7];
          v102 = v117[8];
          v103 = v117[9];
          v104 = v117[10];
          v97 = v117[3];
          v98 = v117[4];
          v99 = v117[5];
          v100 = v117[6];
          v95 = v117[1];
          v96 = v117[2];
          sub_1B7FB8448(v118, v83, &qword_1EBA65D78, &qword_1B80D2640);
          sub_1B7FB8448(v124, v83, &qword_1EBA65D78, &qword_1B80D2640);
          sub_1B7FB8448(&v106, v83, &qword_1EBA65D78, &qword_1B80D2640);
          sub_1B7FCAD28(&v94);
        }

        memcpy(v105, v117, sizeof(v105));
        v21 = &unk_1EBA65D88;
        v22 = &unk_1B80D1BB8;
        v23 = v105;
LABEL_9:
        sub_1B7FB86D4(v23, v21, v22);
        goto LABEL_29;
      }
    }

    else
    {
      sub_1B7FB8448(v13, v10, &unk_1EBA65FD0, &unk_1B80D1920);
      if (v19(&v13[v16], 1, v4) != 1)
      {
        v24 = &v13[v16];
        v25 = v80;
        (*(v5 + 32))(v80, v24, v4);
        sub_1B7FDAA98(&qword_1EBA65D90, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
        v26 = sub_1B80C908C();
        v27 = *(v5 + 8);
        v27(v25, v4);
        v27(v10, v4);
        sub_1B7FB86D4(v13, &unk_1EBA65FD0, &unk_1B80D1920);
        if ((v26 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_11;
      }

      (*(v5 + 8))(v10, v4);
    }

    v21 = &qword_1EBA65D80;
    v22 = &unk_1B80DC400;
    v23 = v13;
    goto LABEL_9;
  }

  v20 = 0;
  return v20 & 1;
}

uint64_t Friend.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v49 - v6;
  *&v49 = 0;
  *(&v49 + 1) = 0xE000000000000000;
  sub_1B80C952C();
  v60 = v49;
  MEMORY[0x1B8CB7A40](60, 0xE100000000000000);
  MEMORY[0x1B8CB7A40](0x646E65697246, 0xE600000000000000);
  MEMORY[0x1B8CB7A40](0x6168202020200A3ALL, 0xEE00203A656C646ELL);
  v8 = v0[9];
  v57 = v0[8];
  v58 = v8;
  v59 = v0[10];
  v9 = v0[5];
  v53 = v0[4];
  v54 = v9;
  v10 = v0[7];
  v55 = v0[6];
  v56 = v10;
  v11 = v0[1];
  v49 = *v0;
  v50 = v11;
  v12 = v0[3];
  v51 = v0[2];
  v52 = v12;
  v13 = Handle.debugDescription.getter();
  MEMORY[0x1B8CB7A40](v13);

  MEMORY[0x1B8CB7A40](0x707974202020200ALL, 0xEB00000000203A65);
  v14 = *(v0 + 176);
  v15 = 0xE900000000000072;
  v16 = 0x65776F6C6C6F662ELL;
  v17 = 0xEF7265776F6C6C6FLL;
  v18 = 0x466572757475662ELL;
  v19 = 0x80000001B80CBD30;
  v20 = 0x676E69646E65702ELL;
  if (v14 == 3)
  {
    v20 = 0xD000000000000010;
  }

  else
  {
    v19 = 0xED0000726566664FLL;
  }

  if (v14 != 2)
  {
    v18 = v20;
    v17 = v19;
  }

  if (*(v0 + 176))
  {
    v16 = 0x69776F6C6C6F662ELL;
    v15 = 0xEA0000000000676ELL;
  }

  if (*(v0 + 176) <= 1u)
  {
    v21 = v16;
  }

  else
  {
    v21 = v18;
  }

  if (*(v0 + 176) <= 1u)
  {
    v22 = v15;
  }

  else
  {
    v22 = v17;
  }

  MEMORY[0x1B8CB7A40](v21, v22);

  MEMORY[0x1B8CB7A40](0x707865202020200ALL, 0xED0000203A797269);
  v23 = type metadata accessor for Friend(0);
  sub_1B7FB8448(v0 + v23[10], v7, &unk_1EBA65FD0, &unk_1B80D1920);
  v24 = sub_1B80C8E2C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v7, 1, v24) == 1)
  {
    sub_1B7FB86D4(v7, &unk_1EBA65FD0, &unk_1B80D1920);
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v27 = sub_1B80C8D4C();
    v28 = v29;
    (*(v25 + 8))(v7, v24);
  }

  *&v49 = v27;
  *(&v49 + 1) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D98, &qword_1B80DE6E0);
  v30 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v30);

  MEMORY[0x1B8CB7A40](0xD000000000000010, 0x80000001B80CBCD0);
  sub_1B7FB8448(v1 + v23[12], v5, &unk_1EBA65FD0, &unk_1B80D1920);
  if (v26(v5, 1, v24) == 1)
  {
    sub_1B7FB86D4(v5, &unk_1EBA65FD0, &unk_1B80D1920);
    v31 = 0;
    v32 = 0xE000000000000000;
  }

  else
  {
    v33 = sub_1B80C8D4C();
    v32 = v34;
    (*(v25 + 8))(v5, v24);
    v31 = v33;
  }

  MEMORY[0x1B8CB7A40](v31, v32);

  MEMORY[0x1B8CB7A40](0xD000000000000012, 0x80000001B80CBCF0);
  v35 = (v1 + v23[13]);
  v36 = v35[9];
  v57 = v35[8];
  v58 = v36;
  v59 = v35[10];
  v37 = v35[5];
  v53 = v35[4];
  v54 = v37;
  v38 = v35[7];
  v55 = v35[6];
  v56 = v38;
  v39 = v35[1];
  v49 = *v35;
  v50 = v39;
  v40 = v35[3];
  v51 = v35[2];
  v52 = v40;
  if (sub_1B7FDAA2C(&v49) == 1)
  {
    v41 = 0;
    v42 = 0xE000000000000000;
  }

  else
  {
    v42 = *(&v49 + 1);
    v41 = v49;
  }

  MEMORY[0x1B8CB7A40](v41, v42);

  MEMORY[0x1B8CB7A40](0xD000000000000016, 0x80000001B80CBD10);
  v43 = *(v1 + v23[15]);
  v44 = 1702195828;
  if ((v43 & 1) == 0)
  {
    v44 = 0x65736C6166;
  }

  v45 = 0xE500000000000000;
  if (v43)
  {
    v45 = 0xE400000000000000;
  }

  if (v43 == 2)
  {
    v46 = 7104878;
  }

  else
  {
    v46 = v44;
  }

  if (v43 == 2)
  {
    v47 = 0xE300000000000000;
  }

  else
  {
    v47 = v45;
  }

  MEMORY[0x1B8CB7A40](v46, v47);

  MEMORY[0x1B8CB7A40](15882, 0xE200000000000000);
  return v60;
}

uint64_t Friend.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v55 - v6;
  *&v55 = 0;
  *(&v55 + 1) = 0xE000000000000000;
  sub_1B80C952C();
  v66 = v55;
  MEMORY[0x1B8CB7A40](60, 0xE100000000000000);
  MEMORY[0x1B8CB7A40](0x646E65697246, 0xE600000000000000);
  MEMORY[0x1B8CB7A40](0x6168202020200A3ALL, 0xEE00203A656C646ELL);
  v8 = v0[9];
  v63 = v0[8];
  v64 = v8;
  v65 = v0[10];
  v9 = v0[5];
  v59 = v0[4];
  v60 = v9;
  v10 = v0[7];
  v61 = v0[6];
  v62 = v10;
  v11 = v0[1];
  v55 = *v0;
  v56 = v11;
  v12 = v0[3];
  v57 = v0[2];
  v58 = v12;
  v13 = Handle.debugDescription.getter();
  MEMORY[0x1B8CB7A40](v13);

  MEMORY[0x1B8CB7A40](0x707974202020200ALL, 0xEB00000000203A65);
  v14 = *(v0 + 176);
  v15 = 0xE900000000000072;
  v16 = 0x65776F6C6C6F662ELL;
  v17 = 0xEF7265776F6C6C6FLL;
  v18 = 0x466572757475662ELL;
  v19 = 0x80000001B80CBD30;
  v20 = 0x676E69646E65702ELL;
  if (v14 == 3)
  {
    v20 = 0xD000000000000010;
  }

  else
  {
    v19 = 0xED0000726566664FLL;
  }

  if (v14 != 2)
  {
    v18 = v20;
    v17 = v19;
  }

  if (*(v0 + 176))
  {
    v16 = 0x69776F6C6C6F662ELL;
    v15 = 0xEA0000000000676ELL;
  }

  if (*(v0 + 176) <= 1u)
  {
    v21 = v16;
  }

  else
  {
    v21 = v18;
  }

  if (*(v0 + 176) <= 1u)
  {
    v22 = v15;
  }

  else
  {
    v22 = v17;
  }

  MEMORY[0x1B8CB7A40](v21, v22);

  MEMORY[0x1B8CB7A40](0xD000000000000011, 0x80000001B80CBDF0);
  v23 = type metadata accessor for Friend(0);
  if (*(v0 + v23[14]))
  {
    if (*(v0 + v23[14]) == 1)
    {
      v24 = 0xEC00000070704173;
      v25 = 0x6567617373656D2ELL;
    }

    else
    {
      v24 = 0xE600000000000000;
      v25 = 0x726568746F2ELL;
    }
  }

  else
  {
    v24 = 0xEA00000000007070;
    v25 = 0x41794D646E69662ELL;
  }

  MEMORY[0x1B8CB7A40](v25, v24);

  MEMORY[0x1B8CB7A40](0x707865202020200ALL, 0xED0000203A797269);
  sub_1B7FB8448(v0 + v23[10], v7, &unk_1EBA65FD0, &unk_1B80D1920);
  v26 = sub_1B80C8E2C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  if (v28(v7, 1, v26) == 1)
  {
    sub_1B7FB86D4(v7, &unk_1EBA65FD0, &unk_1B80D1920);
    v29 = 0;
    v30 = 0;
  }

  else
  {
    v29 = sub_1B80C8D4C();
    v30 = v31;
    (*(v27 + 8))(v7, v26);
  }

  *&v55 = v29;
  *(&v55 + 1) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D98, &qword_1B80DE6E0);
  v32 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v32);

  MEMORY[0x1B8CB7A40](0xD000000000000010, 0x80000001B80CBCD0);
  sub_1B7FB8448(v1 + v23[12], v5, &unk_1EBA65FD0, &unk_1B80D1920);
  if (v28(v5, 1, v26) == 1)
  {
    sub_1B7FB86D4(v5, &unk_1EBA65FD0, &unk_1B80D1920);
    v33 = 0;
    v34 = 0xE000000000000000;
  }

  else
  {
    v35 = sub_1B80C8D4C();
    v34 = v36;
    (*(v27 + 8))(v5, v26);
    v33 = v35;
  }

  MEMORY[0x1B8CB7A40](v33, v34);

  MEMORY[0x1B8CB7A40](0xD000000000000022, 0x80000001B80CBE10);
  v37 = Friend.originatedFromTheSameClient.getter();
  v38 = (v37 & 1) == 0;
  if (v37)
  {
    v39 = 1702195828;
  }

  else
  {
    v39 = 0x65736C6166;
  }

  if (v38)
  {
    v40 = 0xE500000000000000;
  }

  else
  {
    v40 = 0xE400000000000000;
  }

  MEMORY[0x1B8CB7A40](v39, v40);

  MEMORY[0x1B8CB7A40](0xD000000000000012, 0x80000001B80CBCF0);
  v41 = (v1 + v23[13]);
  v42 = v41[9];
  v63 = v41[8];
  v64 = v42;
  v65 = v41[10];
  v43 = v41[5];
  v59 = v41[4];
  v60 = v43;
  v44 = v41[7];
  v61 = v41[6];
  v62 = v44;
  v45 = v41[1];
  v55 = *v41;
  v56 = v45;
  v46 = v41[3];
  v57 = v41[2];
  v58 = v46;
  if (sub_1B7FDAA2C(&v55) == 1)
  {
    v47 = 0;
    v48 = 0xE000000000000000;
  }

  else
  {
    v48 = *(&v55 + 1);
    v47 = v55;
  }

  MEMORY[0x1B8CB7A40](v47, v48);

  MEMORY[0x1B8CB7A40](0xD000000000000016, 0x80000001B80CBD10);
  v49 = *(v1 + v23[15]);
  if (v49)
  {
    v50 = 1702195828;
  }

  else
  {
    v50 = 0x65736C6166;
  }

  if (v49)
  {
    v51 = 0xE400000000000000;
  }

  else
  {
    v51 = 0xE500000000000000;
  }

  if (v49 == 2)
  {
    v52 = 7104878;
  }

  else
  {
    v52 = v50;
  }

  if (v49 == 2)
  {
    v53 = 0xE300000000000000;
  }

  else
  {
    v53 = v51;
  }

  MEMORY[0x1B8CB7A40](v52, v53);

  MEMORY[0x1B8CB7A40](15882, 0xE200000000000000);
  return v66;
}

uint64_t Handle.serverID.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t Handle.peerID.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 168))
  {

    v3 = sub_1B80C909C();
    v5 = v4;

    sub_1B7FDAA44();
    sub_1B80C8BBC();
    sub_1B7FC3CCC(v3, v5);
    v6 = sub_1B80C8E9C();
    return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }

  else
  {
    v8 = sub_1B80C8E9C();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }
}

uint64_t Handle.updateWithdifferentExpiresByGroupID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 48);
  v17 = *(v2 + 40);
  v7 = *(v2 + 64);
  v8 = *(v2 + 80);
  v20 = *(v2 + 88);
  v21 = *(v2 + 72);
  v26 = *(v2 + 96);
  v18 = *(v2 + 32);
  v19 = *(v2 + 104);
  v23 = *(v2 + 112);
  v24 = *(v2 + 128);
  v9 = *(v2 + 144);
  v10 = *(v2 + 168);
  v22 = *(v2 + 160);
  v11 = sub_1B80C90FC();
  v13 = v12;
  if (v5)
  {
    v4 = sub_1B80C90FC();
  }

  else
  {
    v14 = 0;
  }

  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v4;
  *(a2 + 24) = v14;
  *(a2 + 32) = v18;
  *(a2 + 40) = v17;
  *(a2 + 48) = v6;
  *(a2 + 56) = a1;
  *(a2 + 64) = v7;
  *(a2 + 72) = v21;
  *(a2 + 80) = v8;
  *(a2 + 88) = v20;
  *(a2 + 96) = v26;
  *(a2 + 104) = v19;
  *(a2 + 112) = v23;
  *(a2 + 128) = v24;
  v15 = MEMORY[0x1E69E7CC0];
  *(a2 + 144) = v9;
  *(a2 + 152) = v15;
  *(a2 + 160) = v22;
  *(a2 + 168) = v10;
}

uint64_t sub_1B7FD9E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B80C8E2C();
  v54 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DB8, &unk_1B80D1C20);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  result = MEMORY[0x1EEE9AC00](v9);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v48 = &v45 - v11;
  v49 = v12;
  v13 = 0;
  v46 = a1;
  v14 = *(a1 + 64);
  v45 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v50 = v54 + 16;
  v51 = (v54 + 32);
  v47 = (v54 + 8);
  while (1)
  {
    v19 = v49;
    if (!v17)
    {
      break;
    }

    v52 = (v17 - 1) & v17;
    v20 = __clz(__rbit64(v17)) | (v13 << 6);
LABEL_16:
    v25 = *(*(v46 + 48) + v20);
    v27 = v53;
    v26 = v54;
    (*(v54 + 16))(v53, *(v46 + 56) + *(v54 + 72) * v20, v4);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DC0, &qword_1B80D2660);
    v29 = *(v28 + 48);
    *v19 = v25;
    (*(v26 + 32))(&v19[v29], v27, v4);
    (*(*(v28 - 8) + 56))(v19, 0, 1, v28);
LABEL_17:
    v30 = v19;
    v31 = v48;
    sub_1B7FC8F2C(v30, v48, &qword_1EBA65DB8, &unk_1B80D1C20);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DC0, &qword_1B80D2660);
    v33 = (*(*(v32 - 8) + 48))(v31, 1, v32);
    v34 = v33 == 1;
    if (v33 == 1)
    {
      return v34;
    }

    v35 = *(v32 + 48);
    v36 = *v31;
    (*v51)(v55, &v31[v35], v4);
    v37 = sub_1B7FDA32C(v36);
    if ((v38 & 1) == 0)
    {
      (*v47)(v55, v4);
      return 0;
    }

    v39 = v53;
    v40 = v54;
    (*(v54 + 16))(v53, *(v56 + 56) + *(v54 + 72) * v37, v4);
    sub_1B7FDAA98(&qword_1EBA65D90, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    v41 = v55;
    v42 = sub_1B80C908C();
    v43 = *(v40 + 8);
    v43(v39, v4);
    result = (v43)(v41, v4);
    v17 = v52;
    if ((v42 & 1) == 0)
    {
      return v34;
    }
  }

  if (v18 <= v13 + 1)
  {
    v21 = v13 + 1;
  }

  else
  {
    v21 = v18;
  }

  v22 = v21 - 1;
  while (1)
  {
    v23 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v23 >= v18)
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DC0, &qword_1B80D2660);
      (*(*(v44 - 8) + 56))(v19, 1, 1, v44);
      v52 = 0;
      v13 = v22;
      goto LABEL_17;
    }

    v24 = *(v45 + 8 * v23);
    ++v13;
    if (v24)
    {
      v52 = (v24 - 1) & v24;
      v20 = __clz(__rbit64(v24)) | (v23 << 6);
      v13 = v23;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B7FDA32C(uint64_t a1)
{
  v1 = a1;
  sub_1B80C993C();
  sub_1B80C911C();

  v2 = sub_1B80C997C();

  return sub_1B7FDA5DC(v1, v2);
}

unint64_t sub_1B7FDA404(uint64_t a1, uint64_t a2)
{
  sub_1B80C993C();
  sub_1B80C911C();
  v4 = sub_1B80C997C();

  return sub_1B7FDA78C(a1, a2, v4);
}

unint64_t sub_1B7FDA47C(uint64_t *a1)
{
  sub_1B80C993C();
  sub_1B80C90FC();
  sub_1B80C911C();

  v2 = sub_1B80C997C();

  return sub_1B7FDA844(a1, v2);
}

unint64_t sub_1B7FDA504(uint64_t a1)
{
  v1 = a1;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  v2 = sub_1B80C997C();

  return sub_1B7FDA9BC(v1, v2);
}

unint64_t sub_1B7FDA570(uint64_t a1)
{
  v1 = a1;
  sub_1B80C993C();
  sub_1B80C995C();
  v2 = sub_1B80C997C();

  return sub_1B7FDA9BC(v1, v2);
}

unint64_t sub_1B7FDA5DC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v6 = 0xD000000000000013;
          v7 = 0x80000001B80CB3E0;
        }

        else
        {
          v6 = 0xD000000000000010;
          v7 = 0x80000001B80CB400;
        }
      }

      else
      {
        v6 = 0x46746C7561666564;
        v7 = 0xEA0000000000464DLL;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          v8 = 0xD000000000000013;
        }

        else
        {
          v8 = 0xD000000000000010;
        }

        if (a1 == 1)
        {
          v9 = 0x80000001B80CB3E0;
        }

        else
        {
          v9 = 0x80000001B80CB400;
        }

        if (v6 != v8)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v9 = 0xEA0000000000464DLL;
        if (v6 != 0x46746C7561666564)
        {
          goto LABEL_19;
        }
      }

      if (v7 == v9)
      {

        return v4;
      }

LABEL_19:
      v10 = sub_1B80C981C();

      if ((v10 & 1) == 0)
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

unint64_t sub_1B7FDA78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1B80C981C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B7FDA844(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = (*(v2 + 48) + 176 * v4);
      v8 = v6[1];
      v7 = v6[2];
      v22[0] = *v6;
      v22[1] = v8;
      v22[2] = v7;
      v9 = v6[6];
      v11 = v6[3];
      v10 = v6[4];
      v22[5] = v6[5];
      v22[6] = v9;
      v22[3] = v11;
      v22[4] = v10;
      v12 = v6[10];
      v14 = v6[7];
      v13 = v6[8];
      v22[9] = v6[9];
      v22[10] = v12;
      v22[7] = v14;
      v22[8] = v13;
      v15 = sub_1B80C90FC();
      v17 = v16;
      if (v15 == sub_1B80C90FC() && v17 == v18)
      {
        break;
      }

      v19 = sub_1B80C981C();
      sub_1B7FC8DA4(v22, v21);

      sub_1B7FCAD28(v22);
      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    sub_1B7FC8DA4(v22, v21);

    sub_1B7FCAD28(v22);
  }

  return v4;
}

unint64_t sub_1B7FDA9BC(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1B7FDAA2C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1B7FDAA44()
{
  result = qword_1ED8DC398;
  if (!qword_1ED8DC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC398);
  }

  return result;
}

uint64_t sub_1B7FDAA98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t LegacyRefreshSchedule.rawValue.getter()
{
  v1 = 0x726F697250776F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x6F69725068676968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465686353746F6ELL;
  }
}

uint64_t sub_1B7FDAB54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x726F697250776F6CLL;
  v4 = 0xEB00000000797469;
  if (v2 != 1)
  {
    v3 = 0x6F69725068676968;
    v4 = 0xEC00000079746972;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6465686353746F6ELL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000064656C75;
  }

  v7 = 0x726F697250776F6CLL;
  v8 = 0xEB00000000797469;
  if (*a2 != 1)
  {
    v7 = 0x6F69725068676968;
    v8 = 0xEC00000079746972;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6465686353746F6ELL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000064656C75;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B80C981C();
  }

  return v11 & 1;
}

uint64_t sub_1B7FDAC7C()
{
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B7FDAD38(uint64_t a1)
{
  sub_1B80C911C();
}

uint64_t sub_1B7FDADE0(uint64_t a1)
{
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

void sub_1B7FDAE98(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000064656C75;
  v4 = 0xEB00000000797469;
  v5 = 0x726F697250776F6CLL;
  if (v2 != 1)
  {
    v5 = 0x6F69725068676968;
    v4 = 0xEC00000079746972;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6465686353746F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t LegacyRefreshCommandReason.reason.getter()
{
  result = 7364980;
  switch(*v0)
  {
    case 1:
      result = 0x646563726F66;
      break;
    case 2:
      result = 0x72656D6974;
      break;
    case 3:
      result = 0x6144657461647075;
      break;
    case 4:
      result = 0x61636F4C72657375;
      break;
    case 5:
      result = 0x6E656B6F54737061;
      break;
    case 6:
      result = 0x6165627472616568;
      break;
    case 7:
      result = 0x6C6E757473726966;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 7496034;
      break;
    case 0xA:
      result = 0xD000000000000018;
      break;
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xC:
      result = 0xD000000000000011;
      break;
    case 0xD:
      result = 0xD000000000000016;
      break;
    case 0xE:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t LegacyRefreshCommandReason.description.getter()
{
  result = 7364980;
  switch(*v0)
  {
    case 1:
      result = 0x646563726F66;
      break;
    case 2:
      result = 0x72656D6974;
      break;
    case 3:
      result = 0x68736572666572;
      break;
    case 4:
      result = 0x61636F4C70656564;
      break;
    case 5:
      result = 0x6E656B6F54737061;
      break;
    case 6:
      result = 0x6165627472616568;
      break;
    case 7:
      result = 0x6C6E557473726966;
      break;
    case 8:
      result = 0x50676E697070616DLL;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 0xA:
      result = 0xD000000000000018;
      break;
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xC:
      result = 0xD000000000000011;
      break;
    case 0xD:
      result = 0xD000000000000016;
      break;
    case 0xE:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B7FDB2D0()
{
  result = qword_1EBA65DC8;
  if (!qword_1EBA65DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65DC8);
  }

  return result;
}

unint64_t sub_1B7FDB328()
{
  result = qword_1EBA65DD0;
  if (!qword_1EBA65DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65DD0);
  }

  return result;
}

uint64_t _s12FindMyLocate5FenceV13MonitorRegionV6SourceO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t sub_1B7FDB3C4(uint64_t a1)
{
  v2 = *v1;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v2);
  return sub_1B80C997C();
}

uint64_t storeEnumTagSinglePayload for LegacyRefreshCommandReason(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t Location.init(latitude:longitude:horizontalAccuracy:verticalAccuracy:speed:altitude:floor:timestamp:placemark:locationType:motionActivityState:customLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, _BYTE *a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>, double a13@<D4>, double a14@<D5>)
{
  v28 = sub_1B80C8E9C();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v43 = a3[8];
  v44 = a3[9];
  v45 = a3[10];
  v46 = a3[11];
  v39 = a3[4];
  v40 = a3[5];
  v41 = a3[6];
  v42 = a3[7];
  v35 = *a3;
  v36 = a3[1];
  v37 = a3[2];
  v38 = a3[3];
  LOBYTE(a3) = *a4;
  LOBYTE(a4) = *a5;
  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  v29 = type metadata accessor for Location(0);
  sub_1B80C899C();
  v30 = (a8 + v29[5]);
  v30[8] = v43;
  v30[9] = v44;
  v30[10] = v45;
  v30[11] = v46;
  v30[4] = v39;
  v30[5] = v40;
  v30[6] = v41;
  v30[7] = v42;
  *v30 = v35;
  v30[1] = v36;
  v30[2] = v37;
  v30[3] = v38;
  *(a8 + v29[10]) = a9;
  *(a8 + v29[11]) = a10;
  *(a8 + v29[7]) = a1;
  *(a8 + v29[8]) = a11;
  *(a8 + v29[14]) = a12;
  *(a8 + v29[12]) = a13;
  *(a8 + v29[6]) = a14;
  sub_1B80C8DDC();
  *(a8 + v29[13]) = v31;
  *(a8 + v29[15]) = a3;
  *(a8 + v29[16]) = a4;
  if (a7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DD8, &qword_1B80D1EC0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1B80D1EB0;
    *(v32 + 32) = a6;
    *(v32 + 40) = a7;
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  v33 = sub_1B80C8E2C();
  result = (*(*(v33 - 8) + 8))(a2, v33);
  *(a8 + v29[9]) = v32;
  return result;
}

uint64_t LocationRequest.toHandles.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t LocationRequest.origin.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = v2;
}

void __swiftcall LocationRequest.init(priority:origin:toHandles:reason:startRefreshingLocation:isCached:)(FindMyLocate::LocationRequest *__return_ptr retstr, FindMyLocate::LocatePriority priority, FindMyLocate::RequestOrigin origin, Swift::OpaquePointer toHandles, FindMyLocate::LegacyRefreshCommandReason_optional reason, Swift::Bool startRefreshingLocation, Swift::Bool isCached)
{
  object = origin.clientBundleIdentifier.value._object;
  rawValue = toHandles._rawValue;
  clientPid = origin.clientPid;
  v9 = *priority;
  v10 = **&origin.origin;
  v11 = *(*&origin.origin + 8);
  v12 = *(*&origin.origin + 16);
  v13 = *(*&origin.origin + 24);
  v14 = *origin.clientBundleIdentifier.value._countAndFlagsBits;
  if (v14 == 15)
  {
    LOBYTE(v14) = 9;
    if (*priority > 1u)
    {
      if (v9 == 2)
      {
        LOBYTE(v14) = 4;
LABEL_8:
        v15 = sub_1B80C981C();
        goto LABEL_10;
      }
    }

    else if (*priority)
    {
      v15 = 1;
      LOBYTE(v14) = 2;
      goto LABEL_10;
    }
  }

  if (v9 == 2)
  {
    goto LABEL_8;
  }

  v15 = 1;
LABEL_10:

  retstr->toHandles._rawValue = clientPid;
  if (v9 == 2)
  {
    v16 = FindMyLocate_LegacyRefreshSchedule_highPriorityScheduled;
  }

  else
  {
    v16 = FindMyLocate_LegacyRefreshSchedule_lowPriorityScheduled;
  }

  retstr->priority = v9;
  retstr->origin.origin = v10;
  retstr->origin.clientPid = v11;
  retstr->origin.clientBundleIdentifier.value._countAndFlagsBits = v12;
  retstr->origin.clientBundleIdentifier.value._object = v13;
  retstr->shallowLocatesOnly = v15 & 1;
  retstr->type = v16;
  retstr->refreshReason = v14;
  retstr->startRefreshingLocation = object & 1;
  retstr->isCached = rawValue & 1;
}

uint64_t LocationRequest.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v17 = *(v0 + 48);
  v18 = *(v0 + 51);
  sub_1B80C952C();
  MEMORY[0x1B8CB7A40](60, 0xE100000000000000);
  MEMORY[0x1B8CB7A40](0x6E6F697461636F4CLL, 0xEF74736575716552);
  MEMORY[0x1B8CB7A40](0xD000000000000011, 0x80000001B80CBF20);
  v3 = MEMORY[0x1B8CB7B30](v1, &type metadata for Handle);
  MEMORY[0x1B8CB7A40](v3);

  MEMORY[0x1B8CB7A40](0x697270202020200ALL, 0xEE003A797469726FLL);
  v4 = 0xE800000000000000;
  v5 = 0x776F6C6C6168732ELL;
  v6 = 0x6576696C2ELL;
  v7 = 0x80000001B80CBF40;
  if (v2 == 2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (!v2)
  {
    v5 = 0xD000000000000015;
    v4 = 0x80000001B80CBFD0;
  }

  if (v2 <= 1)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  if (v2 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v7;
  }

  MEMORY[0x1B8CB7A40](v8, v9);

  MEMORY[0x1B8CB7A40](0x69726F202020200ALL, 0xEC0000003A6E6967);
  v10 = RequestOrigin.description.getter();
  MEMORY[0x1B8CB7A40](v10);

  MEMORY[0x1B8CB7A40](0xD00000000000002ELL, 0x80000001B80CBF60);
  refreshed = LegacyRefreshCommandReason.description.getter();
  MEMORY[0x1B8CB7A40](refreshed);

  MEMORY[0x1B8CB7A40](0xD000000000000019, 0x80000001B80CBF90);
  if (v17)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v17)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1B8CB7A40](v12, v13);

  MEMORY[0x1B8CB7A40](0x707974202020200ALL, 0xEB00000000203A65);
  sub_1B80C95FC();
  MEMORY[0x1B8CB7A40](0xD00000000000001ELL, 0x80000001B80CBFB0);
  if (v18)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v18)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x1B8CB7A40](v14, v15);

  MEMORY[0x1B8CB7A40](0x437369202020200ALL, 0xEF203A6465686361);
  sub_1B80C95FC();
  MEMORY[0x1B8CB7A40](15882, 0xE200000000000000);
  return 0;
}

uint64_t sub_1B7FDBCF4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7FDC648(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7FDBD34(uint64_t a1)
{
  v2 = sub_1B7FDC188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7FDBD70(uint64_t a1)
{
  v2 = sub_1B7FDC188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocationRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DE0, &qword_1B80D1EC8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - v6;
  v8 = *v1;
  v27 = *(v1 + 8);
  v22 = *(v1 + 16);
  v9 = v1[3];
  v20 = v1[4];
  v21 = v9;
  v19 = v1[5];
  LODWORD(v9) = *(v1 + 48);
  v17 = *(v1 + 49);
  v18 = v9;
  LODWORD(v9) = *(v1 + 50);
  v15[4] = *(v1 + 51);
  v16 = v9;
  v15[3] = *(v1 + 52);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FDC188();

  v10 = v4;
  sub_1B80C99DC();
  v23 = v8;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DE8, &qword_1B80D3A20);
  sub_1B7FDC3C8(&qword_1ED8DBC00, sub_1B7FDC224, MEMORY[0x1E69E6300]);
  sub_1B80C97DC();
  if (v2)
  {
  }

  else
  {
    v11 = v20;
    v12 = v21;
    v13 = v22;

    LOBYTE(v23) = v27;
    v28 = 1;
    sub_1B7FDC278();
    sub_1B80C97DC();
    LOBYTE(v23) = v13;
    v24 = v12;
    v25 = v11;
    v26 = v19;
    v28 = 2;
    sub_1B7FDC2CC();

    sub_1B80C97DC();

    LOBYTE(v23) = 3;
    sub_1B80C979C();
    LOBYTE(v23) = v17;
    v28 = 4;
    sub_1B7FDC320();
    sub_1B80C97DC();
    LOBYTE(v23) = v16;
    v28 = 5;
    sub_1B7FDC374();
    sub_1B80C97DC();
    LOBYTE(v23) = 6;
    sub_1B80C979C();
    LOBYTE(v23) = 7;
    sub_1B80C979C();
  }

  return (*(v5 + 8))(v7, v10);
}

unint64_t sub_1B7FDC188()
{
  result = qword_1ED8DC460;
  if (!qword_1ED8DC460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC460);
  }

  return result;
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

unint64_t sub_1B7FDC224()
{
  result = qword_1ED8DC420;
  if (!qword_1ED8DC420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC420);
  }

  return result;
}

unint64_t sub_1B7FDC278()
{
  result = qword_1ED8DC378;
  if (!qword_1ED8DC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC378);
  }

  return result;
}

unint64_t sub_1B7FDC2CC()
{
  result = qword_1ED8DC468;
  if (!qword_1ED8DC468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC468);
  }

  return result;
}

unint64_t sub_1B7FDC320()
{
  result = qword_1ED8DC010;
  if (!qword_1ED8DC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC010);
  }

  return result;
}

unint64_t sub_1B7FDC374()
{
  result = qword_1ED8DC008;
  if (!qword_1ED8DC008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC008);
  }

  return result;
}

uint64_t sub_1B7FDC3C8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA65DE8, &qword_1B80D3A20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7FDC440()
{
  result = qword_1ED8DC408;
  if (!qword_1ED8DC408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC408);
  }

  return result;
}

uint64_t sub_1B7FDC494(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 53))
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

uint64_t sub_1B7FDC4DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 53) = 1;
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

    *(result + 53) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B7FDC544()
{
  result = qword_1EBA65DF8;
  if (!qword_1EBA65DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65DF8);
  }

  return result;
}

unint64_t sub_1B7FDC59C()
{
  result = qword_1ED8DC450;
  if (!qword_1ED8DC450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC450);
  }

  return result;
}

unint64_t sub_1B7FDC5F4()
{
  result = qword_1ED8DC458;
  if (!qword_1ED8DC458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC458);
  }

  return result;
}

uint64_t sub_1B7FDC648(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E61486F74 && a2 == 0xE900000000000073;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B80CBFF0 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5268736572666572 && a2 == 0xED00006E6F736165 || (sub_1B80C981C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B80CC010 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6465686361437369 && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1B80C981C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1B7FDC8F4(uint64_t a1, uint64_t a2)
{
  v3[72] = v2;
  v3[71] = a2;
  v3[70] = a1;
  v4 = sub_1B80C8E2C();
  v3[73] = v4;
  v3[74] = *(v4 - 8);
  v3[75] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E00, &qword_1B80D2160);
  v3[76] = swift_task_alloc();
  v5 = sub_1B80C8EDC();
  v3[77] = v5;
  v3[78] = *(v5 - 8);
  v3[79] = swift_task_alloc();
  v3[80] = type metadata accessor for ReverseGeocodingRequest(0);
  v3[81] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FDCA80, v2, 0);
}

uint64_t sub_1B7FDCA80()
{
  v45 = v0;
  if (qword_1ED8DD980 != -1)
  {
    swift_once();
  }

  v1 = v0[81];
  v2 = v0[71];
  v3 = sub_1B80C900C();
  v0[82] = __swift_project_value_buffer(v3, qword_1ED8DE010);
  sub_1B7FDFF4C(v2, v1, type metadata accessor for ReverseGeocodingRequest);

  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C941C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[81];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v44[0] = v9;
    *v8 = 136315394;
    v10 = sub_1B80C9A3C();
    v12 = sub_1B7FB84FC(v10, v11, v44);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = ReverseGeocodingRequest.debugDescription.getter();
    v15 = v14;
    sub_1B7FDFFB4(v7, type metadata accessor for ReverseGeocodingRequest);
    v16 = sub_1B7FB84FC(v13, v15, v44);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "%s: Loading new address for %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  else
  {

    sub_1B7FDFFB4(v7, type metadata accessor for ReverseGeocodingRequest);
  }

  v17 = v0[80];
  v18 = v0[78];
  v19 = v0[77];
  v20 = v0[76];
  v21 = v0[71];
  v22 = objc_opt_self();
  v23 = [v22 sharedService];
  v24 = [v23 defaultTraits];
  v0[83] = v24;

  v25 = v21 + *(v17 + 20);
  v26 = type metadata accessor for Location(0);
  v27 = [objc_allocWithZone(MEMORY[0x1E69A1E70]) initWithLatitude:*(v25 + *(v26 + 40)) longitude:*(v25 + *(v26 + 44))];
  v0[84] = v27;
  sub_1B7FDFDC8(v21 + *(v17 + 24), v20);
  if ((*(v18 + 48))(v20, 1, v19) == 1)
  {
    sub_1B7FB86D4(v0[76], &qword_1EBA65E00, &qword_1B80D2160);
  }

  else
  {
    (*(v0[78] + 32))(v0[79], v0[76], v0[77]);
    sub_1B80C8EAC();
    sub_1B80C8ECC();

    [v24 clearDeviceDisplayLanguages];
    v28 = v0[79];
    v29 = v0[78];
    v30 = v0[77];
    if (v24)
    {
      v31 = v24;
      v32 = sub_1B80C90AC();

      [v31 addDeviceDisplayLanguage_];

      (*(v29 + 8))(v28, v30);
    }

    else
    {
      (*(v29 + 8))(v0[79], v0[77]);
    }
  }

  if (*(v0[71] + *(v0[80] + 28)) == 1 && v27)
  {
    [v27 setHorizontalAccuracy_];
  }

  v33 = [v22 sharedService];
  if (v33 && (v34 = v33, v35 = [v33 ticketForReverseGeocodeLocation:v27 traits:v24], v0[85] = v35, v34, v35))
  {
    v36 = v0[72];
    v37 = v0[71];
    v38 = sub_1B7FDFE8C();
    v39 = swift_task_alloc();
    v0[86] = v39;
    v39[2] = v36;
    v39[3] = v35;
    v39[4] = v37;
    v40 = swift_task_alloc();
    v0[87] = v40;
    *v40 = v0;
    v40[1] = sub_1B7FDD0A0;

    return MEMORY[0x1EEE6DE38](v0 + 2, v36, v38, 0xD00000000000001CLL, 0x80000001B80CC030, sub_1B7FDFEE4, v39, &type metadata for Address);
  }

  else
  {
    sub_1B7FDFE38();
    swift_allocError();
    *v41 = 3;
    swift_willThrow();

    v42 = v0[1];

    return v42();
  }
}

uint64_t sub_1B7FDD0A0()
{
  v2 = *v1;
  *(*v1 + 704) = v0;

  v3 = *(v2 + 576);
  if (v0)
  {
    v4 = sub_1B7FDD5DC;
  }

  else
  {
    v4 = sub_1B7FDD1B8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B7FDD1B8()
{
  v36 = v0;
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  v5 = *(v0 + 568);
  memcpy((v0 + 288), (v0 + 16), 0x110uLL);
  memcpy(__dst, (v0 + 16), 0x110uLL);
  sub_1B80C8E1C();
  sub_1B7FDDA74(v5, __dst, v1);
  result = (*(v2 + 8))(v1, v3);
  v7 = OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_processedOperationsCount;
  v8 = *(v4 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_processedOperationsCount);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_processedOperationsCount) = v10;
    swift_retain_n();
    v11 = sub_1B80C8FEC();
    v12 = sub_1B80C941C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      __dst[0] = v14;
      *v13 = 136315394;
      v15 = sub_1B80C9A3C();
      v17 = sub_1B7FB84FC(v15, v16, __dst);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2048;
      v18 = *(v4 + v7);

      *(v13 + 14) = v18;

      _os_log_impl(&dword_1B7FB5000, v11, v12, "%s: Total operations processed: %ld.", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1B8CB8970](v14, -1, -1);
      MEMORY[0x1B8CB8970](v13, -1, -1);
    }

    else
    {
    }

    v19 = *(v4 + v7);
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v19 + 0x1999999999999998, 1) <= 0x1999999999999998uLL)
    {
      sub_1B80C8DBC();
      v22 = v21;

      v23 = sub_1B80C8FEC();
      v24 = sub_1B80C941C();

      v25 = os_log_type_enabled(v23, v24);
      v26 = *(v0 + 672);
      v27 = *(v0 + 664);
      if (v25)
      {
        v28 = v19 / fabs(v22);
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        __dst[0] = v30;
        *v29 = 136315394;
        v31 = sub_1B80C9A3C();
        v33 = sub_1B7FB84FC(v31, v32, __dst);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2048;
        *(v29 + 14) = v28;
        _os_log_impl(&dword_1B7FB5000, v23, v24, "%s: Current throughput: %f requests per second.", v29, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x1B8CB8970](v30, -1, -1);
        MEMORY[0x1B8CB8970](v29, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v20 = *(v0 + 672);

      swift_unknownObjectRelease();
    }

    memcpy(*(v0 + 560), (v0 + 288), 0x110uLL);

    v34 = *(v0 + 8);

    return v34();
  }

  return result;
}

uint64_t sub_1B7FDD5DC()
{
  v1 = *(v0 + 672);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B7FDD694(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v20 = a3;
  v6 = type metadata accessor for ReverseGeocodingRequest(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  (*(v10 + 16))(&v19 - v11, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  sub_1B7FDFF4C(a4, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReverseGeocodingRequest);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1B7FE0014;
  *(v16 + 24) = v14;
  sub_1B7FE01BC(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ReverseGeocodingRequest);
  aBlock[4] = sub_1B7FE00A0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7FDE45C;
  aBlock[3] = &block_descriptor_0;
  v17 = _Block_copy(aBlock);

  [v20 submitWithHandler:v17 timeout:25 networkActivity:0];
  _Block_release(v17);
}

uint64_t sub_1B7FDD954(void *__src, id a2)
{
  if (a2)
  {
    __dst[0] = a2;
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0);
    return sub_1B80C927C();
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1B7FE01A4(__dst) == 1)
    {
      sub_1B7FDFE38();
      v5 = swift_allocError();
      *v6 = 2;
      v9[0] = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0);
      return sub_1B80C927C();
    }

    else
    {
      memcpy(v8, __dst, sizeof(v8));
      memcpy(v9, __src, sizeof(v9));
      sub_1B7FDFEF0(v9, &v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0);
      return sub_1B80C928C();
    }
  }
}

uint64_t sub_1B7FDDA74(uint64_t *a1, const void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E18, &qword_1B80D2108);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - v7;
  v9 = type metadata accessor for ReverseGeocodingRequest(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext(0);
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v44, a2, 0x110uLL);
  sub_1B7FDFF4C(a1, v12, type metadata accessor for ReverseGeocodingRequest);
  v17 = v13[7];
  v18 = sub_1B80C8E2C();
  (*(*(v18 - 8) + 16))(&v16[v17], a3, v18);
  v19 = v12[1];
  *v16 = *v12;
  *(v16 + 1) = v19;
  v20 = *(v10 + 28);
  sub_1B7FDFEF0(v44, &v43);

  *(v16 + 2) = sub_1B7FE0764();
  *(v16 + 3) = v21;
  sub_1B7FDFF4C(v12 + v20, &v16[v13[6]], type metadata accessor for Location);
  sub_1B7FDFFB4(v12, type metadata accessor for ReverseGeocodingRequest);
  memcpy(&v16[v13[8]], v44, 0x110uLL);
  v22 = a1 + *(v10 + 28);
  if (*(a1 + *(v10 + 36)) == 1)
  {
    v23 = type metadata accessor for Location(0);
    v24 = round(*&v22[*(v23 + 40)] * 100.0) / 100.0;
    v25 = round(*&v22[*(v23 + 44)] * 100.0) / 100.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E20, &unk_1B80D2110);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1B80D20F0;
    v27 = MEMORY[0x1E69E63B0];
    v28 = MEMORY[0x1E69E6438];
    *(v26 + 56) = MEMORY[0x1E69E63B0];
    *(v26 + 64) = v28;
    *(v26 + 32) = v24;
    *(v26 + 96) = v27;
    *(v26 + 104) = v28;
    *(v26 + 72) = v25;
    v29 = sub_1B80C90DC();
    v31 = v30;
    sub_1B7FDFF4C(v16, v8, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
    (*(v14 + 56))(v8, 0, 1, v13);
    swift_beginAccess();
    v32 = v8;
    v33 = v29;
    v34 = v31;
  }

  else
  {
    v35 = sub_1B7FE0764();
    v41 = v36;
    v42 = v35;
    sub_1B7FDFF4C(v16, v8, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
    v37 = *(v14 + 56);
    v37(v8, 0, 1, v13);
    swift_beginAccess();
    sub_1B8014938(v8, v42, v41);
    swift_endAccess();
    v38 = *a1;
    v39 = a1[1];
    v42 = v38;
    sub_1B7FDFF4C(v16, v8, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
    v37(v8, 0, 1, v13);
    swift_beginAccess();

    v32 = v8;
    v33 = v42;
    v34 = v39;
  }

  sub_1B8014938(v32, v33, v34);
  swift_endAccess();
  return sub_1B7FDFFB4(v16, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
}

void sub_1B7FDDF2C(unint64_t a1, void *a2, void (*a3)(_BYTE *, void *), uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ReverseGeocodingRequest(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  if (a2)
  {
    v12 = a2;
    if (qword_1ED8DD980 != -1)
    {
      swift_once();
    }

    v13 = sub_1B80C900C();
    __swift_project_value_buffer(v13, qword_1ED8DE010);
    v14 = a2;
    v15 = sub_1B80C8FEC();
    v16 = sub_1B80C93FC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v41[0] = v18;
      *v17 = 136446210;
      swift_getErrorValue();
      v19 = sub_1B80C98CC();
      v21 = sub_1B7FB84FC(v19, v20, v41);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1B7FB5000, v15, v16, "ReverseGeocoder: reverse geocoding completed with error: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1B8CB8970](v18, -1, -1);
      MEMORY[0x1B8CB8970](v17, -1, -1);
    }

    sub_1B7FE0124(v41);
    memcpy(v40, v41, sizeof(v40));
    v22 = a2;
    a3(v40, a2);

    goto LABEL_21;
  }

  if (!a1)
  {
    goto LABEL_20;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_20:
    sub_1B7FE0124(v41);
    memcpy(v40, v41, sizeof(v40));
    sub_1B7FDFE38();
    a2 = swift_allocError();
    *v36 = 0;
    a3(v40, a2);
LABEL_21:

    return;
  }

  if (!sub_1B80C963C())
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1B8CB7E40](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    swift_unknownObjectRetain();
  }

  v23 = swift_unknownObjectRetain();
  Address.init(mapItem:)(v23, v41);
  if (qword_1ED8DD980 != -1)
  {
    swift_once();
  }

  v24 = sub_1B80C900C();
  __swift_project_value_buffer(v24, qword_1ED8DE010);
  sub_1B7FDFF4C(a5, v11, type metadata accessor for ReverseGeocodingRequest);
  sub_1B7FDFEF0(v41, v40);
  v25 = sub_1B80C8FEC();
  v26 = sub_1B80C941C();
  sub_1B7FE0150(v41);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39[0] = v37;
    *v27 = 136315394;
    v28 = ReverseGeocodingRequest.debugDescription.getter();
    v30 = v29;
    sub_1B7FDFFB4(v11, type metadata accessor for ReverseGeocodingRequest);
    v31 = sub_1B7FB84FC(v28, v30, v39);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    memcpy(v40, v41, sizeof(v40));
    v32 = Address.description.getter();
    v34 = sub_1B7FB84FC(v32, v33, v39);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_1B7FB5000, v25, v26, "ReverseGeocoder: address received for request: %s - %s", v27, 0x16u);
    v35 = v37;
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v35, -1, -1);
    MEMORY[0x1B8CB8970](v27, -1, -1);
  }

  else
  {

    sub_1B7FDFFB4(v11, type metadata accessor for ReverseGeocodingRequest);
  }

  memcpy(v39, v41, sizeof(v39));
  nullsub_1();
  memcpy(v38, v39, sizeof(v38));
  a3(v38, 0);
  swift_unknownObjectRelease();
  memcpy(v40, v38, sizeof(v40));
  sub_1B7FB86D4(v40, &unk_1EBA65E40, &qword_1B80D2128);
}

uint64_t sub_1B7FDE45C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E38, &qword_1B80D2120);
    v4 = sub_1B80C921C();
  }

  v6 = a3;
  v5(v4, a3);
}

void *sub_1B7FDE4FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v236 = a2;
  v5 = sub_1B80C8E2C();
  v223 = *(v5 - 8);
  v224 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v222 = &v214 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E18, &qword_1B80D2108);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v227 = &v214 - v8;
  v9 = type metadata accessor for ReverseGeocodingRequest(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v229 = (&v214 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v10);
  v218 = &v214 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v217 = (&v214 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v226 = (&v214 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v225 = &v214 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v214 - v20);
  v232 = type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext(0);
  v234 = *(v232 - 8);
  v22 = MEMORY[0x1EEE9AC00](v232);
  v215 = &v214 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v231 = &v214 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v216 = (&v214 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v221 = &v214 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v228 = &v214 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v219 = &v214 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v214 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v220 = &v214 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  *&v230 = &v214 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v214 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v214 - v44;
  v235 = v9;
  v46 = *(v9 + 20);
  v238 = a1;
  v233 = a1 + v46;
  v47 = sub_1B7FE0764();
  v49 = v48;
  v50 = OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_recordsPerGeoHash;
  swift_beginAccess();
  v237 = v3;
  v51 = *(v3 + v50);
  if (*(v51 + 16))
  {

    v52 = sub_1B7FDA404(v47, v49);
    v54 = v53;

    if (v54)
    {
      sub_1B7FDFF4C(*(v51 + 56) + *(v234 + 72) * v52, v43, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);

      v55 = v45;
      sub_1B7FE01BC(v43, v45, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
      v56 = v235;
      if (qword_1ED8DD980 != -1)
      {
        swift_once();
      }

      v57 = sub_1B80C900C();
      __swift_project_value_buffer(v57, qword_1ED8DE010);
      v58 = v238;
      sub_1B7FDFF4C(v238, v21, type metadata accessor for ReverseGeocodingRequest);
      v59 = v225;
      sub_1B7FDFF4C(v58, v225, type metadata accessor for ReverseGeocodingRequest);
      v60 = v230;
      sub_1B7FDFF4C(v55, v230, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);

      v61 = sub_1B80C8FEC();
      v62 = sub_1B80C941C();

      v63 = os_log_type_enabled(v61, v62);
      v64 = v232;
      if (v63)
      {
        v65 = swift_slowAlloc();
        v229 = swift_slowAlloc();
        v240[0] = v229;
        *v65 = 136316163;
        v66 = sub_1B80C9A3C();
        LODWORD(v228) = v62;
        v68 = sub_1B7FB84FC(v66, v67, v240);
        v231 = v55;
        v69 = v56;
        v70 = v68;

        *(v65 + 4) = v70;
        *(v65 + 12) = 2160;
        *(v65 + 14) = 1752392040;
        *(v65 + 22) = 2081;
        v71 = *v21;
        v72 = v21[1];

        sub_1B7FDFFB4(v21, type metadata accessor for ReverseGeocodingRequest);
        v73 = sub_1B7FB84FC(v71, v72, v240);

        *(v65 + 24) = v73;
        *(v65 + 32) = 2080;
        v74 = sub_1B7FE0764();
        v76 = v75;
        sub_1B7FDFFB4(v59, type metadata accessor for ReverseGeocodingRequest);
        v77 = sub_1B7FB84FC(v74, v76, v240);

        *(v65 + 34) = v77;
        *(v65 + 42) = 2080;
        v56 = v69;
        v55 = v231;
        v78 = v230;
        memcpy(v241, (v230 + *(v64 + 32)), sizeof(v241));
        v79 = Address.description.getter();
        v81 = v80;
        sub_1B7FDFFB4(v78, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
        v82 = sub_1B7FB84FC(v79, v81, v240);

        *(v65 + 44) = v82;
        _os_log_impl(&dword_1B7FB5000, v61, v228, "%s: Using cached request %{private,mask.hash}s based on geoHash %s -> %s.", v65, 0x34u);
        v83 = v229;
        swift_arrayDestroy();
        MEMORY[0x1B8CB8970](v83, -1, -1);
        MEMORY[0x1B8CB8970](v65, -1, -1);
      }

      else
      {

        sub_1B7FDFFB4(v59, type metadata accessor for ReverseGeocodingRequest);
        sub_1B7FDFFB4(v21, type metadata accessor for ReverseGeocodingRequest);
        sub_1B7FDFFB4(v60, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
      }

      v135 = v238[1];
      v237 = *v238;
      v136 = v226;
      sub_1B7FDFF4C(v238, v226, type metadata accessor for ReverseGeocodingRequest);
      v137 = *(v64 + 32);
      memcpy(v239, (v55 + v137), sizeof(v239));
      type metadata accessor for Location(0);

      sub_1B7FDFEF0(v239, v241);
      v138 = v55;
      v139 = v227;
      sub_1B80C8DCC();
      v140 = v136[1];
      *v139 = *v136;
      v139[1] = v140;
      v141 = *(v56 + 20);

      v139[2] = sub_1B7FE0764();
      v139[3] = v142;
      sub_1B7FDFF4C(v136 + v141, v139 + *(v64 + 24), type metadata accessor for Location);
      sub_1B7FDFFB4(v136, type metadata accessor for ReverseGeocodingRequest);
      memcpy(v139 + *(v64 + 32), v239, 0x110uLL);
      (*(v234 + 56))(v139, 0, 1, v64);
      swift_beginAccess();
      sub_1B8014938(v139, v237, v135);
      swift_endAccess();
      memcpy(v240, (v138 + v137), sizeof(v240));
      sub_1B7FDFEF0(v240, v241);
      sub_1B7FDFFB4(v138, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
      memcpy(v241, v240, sizeof(v241));
      nullsub_1();
      v143 = v236;
      return memcpy(v143, v241, 0x110uLL);
    }
  }

  v84 = v236;
  v85 = v238;
  if (*(v238 + *(v235 + 28)) != 1)
  {
LABEL_19:
    v144 = *v85;
    v145 = v85[1];
    v146 = OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_recordsPerIdentifier;
    v147 = v237;
    swift_beginAccess();
    v148 = *(v147 + v146);
    v149 = v231;
    if (*(v148 + 16))
    {

      v150 = sub_1B7FDA404(v144, v145);
      if (v151)
      {
        v152 = v221;
        sub_1B7FDFF4C(*(v148 + 56) + *(v234 + 72) * v150, v221, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);

        v153 = v228;
        sub_1B7FE01BC(v152, v228, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
        v154 = v222;
        sub_1B80C8DFC();
        v155 = v232;
        sub_1B80C8D7C();
        v157 = v156;
        (*(v223 + 8))(v154, v224);
        if (v157 > 30.0)
        {
          if (qword_1ED8DD980 != -1)
          {
            swift_once();
          }

          v158 = sub_1B80C900C();
          __swift_project_value_buffer(v158, qword_1ED8DE010);
          v159 = v216;
          sub_1B7FDFF4C(v153, v216, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);

          v160 = sub_1B80C8FEC();
          v161 = sub_1B80C941C();

          if (os_log_type_enabled(v160, v161))
          {
            v162 = swift_slowAlloc();
            v163 = swift_slowAlloc();
            *&v241[0] = v163;
            *v162 = 136315907;
            v164 = sub_1B80C9A3C();
            v166 = sub_1B7FB84FC(v164, v165, v241);

            *(v162 + 4) = v166;
            *(v162 + 12) = 2160;
            *(v162 + 14) = 1752392040;
            *(v162 + 22) = 2081;
            v167 = *v159;
            v168 = v159[1];

            sub_1B7FDFFB4(v159, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
            v169 = sub_1B7FB84FC(v167, v168, v241);

            *(v162 + 24) = v169;
            *(v162 + 32) = 2048;
            *(v162 + 34) = 0x403E000000000000;
            _os_log_impl(&dword_1B7FB5000, v160, v161, "%s: Cached request for %{private,mask.hash}s is older than %f s.", v162, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x1B8CB8970](v163, -1, -1);
            MEMORY[0x1B8CB8970](v162, -1, -1);

            v170 = v228;
          }

          else
          {

            sub_1B7FDFFB4(v159, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
            v170 = v153;
          }

          v171 = type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext;
          goto LABEL_33;
        }

        v185 = v153 + *(v155 + 24);
        v186 = type metadata accessor for Location(0);
        v187 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(v185 + v186[10]) longitude:*(v185 + v186[11])];
        v188 = v233;
        v189 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*&v233[v186[10]] longitude:*&v233[v186[11]]];
        [v187 distanceFromLocation_];
        v191 = v190;
        if (v188[v186[15]] == 2)
        {
          v192 = 250.0;
        }

        else
        {
          v192 = 50.0;
        }

        if (v190 < v192)
        {
          if (qword_1ED8DD980 != -1)
          {
            swift_once();
          }

          v193 = sub_1B80C900C();
          __swift_project_value_buffer(v193, qword_1ED8DE010);
          v194 = v228;
          sub_1B7FDFF4C(v228, v149, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
          v195 = v215;
          sub_1B7FDFF4C(v194, v215, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);

          v196 = sub_1B80C8FEC();
          v197 = sub_1B80C941C();

          if (os_log_type_enabled(v196, v197))
          {
            v198 = swift_slowAlloc();
            LODWORD(v235) = v197;
            v199 = v198;
            v238 = swift_slowAlloc();
            v240[0] = v238;
            *v199 = 136316419;
            v200 = sub_1B80C9A3C();
            v202 = v149;
            v203 = sub_1B7FB84FC(v200, v201, v240);

            *(v199 + 4) = v203;
            *(v199 + 12) = 2160;
            *(v199 + 14) = 1752392040;
            *(v199 + 22) = 2081;
            v204 = *v202;
            v205 = v202[1];

            sub_1B7FDFFB4(v202, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
            v206 = sub_1B7FB84FC(v204, v205, v240);

            *(v199 + 24) = v206;
            *(v199 + 32) = 2048;
            *(v199 + 34) = v191;
            *(v199 + 42) = 2048;
            *(v199 + 44) = v192;
            *(v199 + 52) = 2080;
            v207 = v232;
            memcpy(v241, (v195 + *(v232 + 32)), sizeof(v241));
            v208 = Address.description.getter();
            v210 = v209;
            v84 = v236;
            sub_1B7FDFFB4(v195, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
            v211 = sub_1B7FB84FC(v208, v210, v240);

            *(v199 + 54) = v211;
            _os_log_impl(&dword_1B7FB5000, v196, v235, "%s: Using cached request for %{private,mask.hash}s due to location distance throttling - distance: %f, limit: %f -> %s.", v199, 0x3Eu);
            v212 = v238;
            swift_arrayDestroy();
            MEMORY[0x1B8CB8970](v212, -1, -1);
            MEMORY[0x1B8CB8970](v199, -1, -1);
          }

          else
          {

            sub_1B7FDFFB4(v149, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
            sub_1B7FDFFB4(v195, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
            v207 = v232;
          }

          v213 = v228;
          memcpy(v240, (v228 + *(v207 + 32)), sizeof(v240));
          sub_1B7FDFEF0(v240, v241);
          sub_1B7FDFFB4(v213, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
          memcpy(v241, v240, sizeof(v241));
          nullsub_1();
          goto LABEL_35;
        }

        sub_1B7FDFFB4(v153, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);

        goto LABEL_34;
      }
    }

    if (qword_1ED8DD980 != -1)
    {
      swift_once();
    }

    v172 = sub_1B80C900C();
    __swift_project_value_buffer(v172, qword_1ED8DE010);
    v173 = v229;
    sub_1B7FDFF4C(v85, v229, type metadata accessor for ReverseGeocodingRequest);

    v174 = sub_1B80C8FEC();
    v175 = sub_1B80C941C();

    if (!os_log_type_enabled(v174, v175))
    {

      v171 = type metadata accessor for ReverseGeocodingRequest;
      v170 = v173;
LABEL_33:
      sub_1B7FDFFB4(v170, v171);
      goto LABEL_34;
    }

    v176 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    *&v241[0] = v177;
    *v176 = 136315651;
    v178 = sub_1B80C9A3C();
    v180 = sub_1B7FB84FC(v178, v179, v241);

    *(v176 + 4) = v180;
    *(v176 + 12) = 2160;
    *(v176 + 14) = 1752392040;
    *(v176 + 22) = 2081;
    v181 = *v173;
    v182 = v173[1];

    sub_1B7FDFFB4(v173, type metadata accessor for ReverseGeocodingRequest);
    v183 = sub_1B7FB84FC(v181, v182, v241);

    *(v176 + 24) = v183;
    _os_log_impl(&dword_1B7FB5000, v174, v175, "%s: No cached request for %{private,mask.hash}s.", v176, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v177, -1, -1);
    MEMORY[0x1B8CB8970](v176, -1, -1);

LABEL_34:
    sub_1B7FE0124(v241);
LABEL_35:
    v143 = v84;
    return memcpy(v143, v241, 0x110uLL);
  }

  v86 = type metadata accessor for Location(0);
  v87 = round(*&v233[*(v86 + 40)] * 100.0) / 100.0;
  v88 = round(*&v233[*(v86 + 44)] * 100.0) / 100.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E20, &unk_1B80D2110);
  v89 = swift_allocObject();
  v230 = xmmword_1B80D20F0;
  *(v89 + 16) = xmmword_1B80D20F0;
  v90 = MEMORY[0x1E69E63B0];
  v91 = MEMORY[0x1E69E6438];
  *(v89 + 56) = MEMORY[0x1E69E63B0];
  *(v89 + 64) = v91;
  *(v89 + 32) = v87;
  *(v89 + 96) = v90;
  *(v89 + 104) = v91;
  *(v89 + 72) = v88;
  v92 = sub_1B80C90DC();
  v94 = v93;
  v95 = *(v237 + v50);
  if (!*(v95 + 16))
  {

LABEL_18:
    v85 = v238;
    goto LABEL_19;
  }

  v96 = v92;

  v97 = sub_1B7FDA404(v96, v94);
  v99 = v98;

  if ((v99 & 1) == 0)
  {

    v84 = v236;
    goto LABEL_18;
  }

  sub_1B7FDFF4C(*(v95 + 56) + *(v234 + 72) * v97, v36, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);

  v100 = v220;
  sub_1B7FE01BC(v36, v220, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
  if (qword_1ED8DD980 != -1)
  {
    swift_once();
  }

  v101 = sub_1B80C900C();
  __swift_project_value_buffer(v101, qword_1ED8DE010);
  v102 = v238;
  v103 = v217;
  sub_1B7FDFF4C(v238, v217, type metadata accessor for ReverseGeocodingRequest);
  v104 = v218;
  sub_1B7FDFF4C(v102, v218, type metadata accessor for ReverseGeocodingRequest);
  v105 = v219;
  sub_1B7FDFF4C(v100, v219, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);

  v106 = sub_1B80C8FEC();
  v107 = sub_1B80C941C();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v238 = swift_slowAlloc();
    v240[0] = v238;
    *v108 = 136316163;
    v109 = sub_1B80C9A3C();
    LODWORD(v237) = v107;
    v111 = v104;
    v112 = sub_1B7FB84FC(v109, v110, v240);

    *(v108 + 4) = v112;
    *(v108 + 12) = 2160;
    *(v108 + 14) = 1752392040;
    *(v108 + 22) = 2081;
    v114 = *v103;
    v113 = v103[1];

    sub_1B7FDFFB4(v103, type metadata accessor for ReverseGeocodingRequest);
    v115 = sub_1B7FB84FC(v114, v113, v240);

    *(v108 + 24) = v115;
    *(v108 + 32) = 2080;
    v116 = v111 + *(v235 + 20);
    v117 = round(*(v116 + *(v86 + 40)) * 100.0) / 100.0;
    v118 = round(*(v116 + *(v86 + 44)) * 100.0) / 100.0;
    v119 = swift_allocObject();
    *(v119 + 16) = v230;
    v120 = MEMORY[0x1E69E63B0];
    *(v119 + 56) = MEMORY[0x1E69E63B0];
    v121 = MEMORY[0x1E69E6438];
    *(v119 + 64) = MEMORY[0x1E69E6438];
    *(v119 + 32) = v117;
    *(v119 + 96) = v120;
    *(v119 + 104) = v121;
    *(v119 + 72) = v118;
    v122 = sub_1B80C90DC();
    v124 = v123;
    sub_1B7FDFFB4(v111, type metadata accessor for ReverseGeocodingRequest);
    v125 = sub_1B7FB84FC(v122, v124, v240);

    *(v108 + 34) = v125;
    *(v108 + 42) = 2080;
    v126 = v232;
    v127 = v219;
    memcpy(v241, (v219 + *(v232 + 32)), sizeof(v241));
    v128 = Address.description.getter();
    v130 = v129;
    sub_1B7FDFFB4(v127, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
    v131 = sub_1B7FB84FC(v128, v130, v240);

    *(v108 + 44) = v131;
    _os_log_impl(&dword_1B7FB5000, v106, v237, "%s: Using coarse cached request %{private,mask.hash}s based on coarseGeoHash %s -> %s.", v108, 0x34u);
    v132 = v238;
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v132, -1, -1);
    v133 = v108;
    v100 = v220;
    MEMORY[0x1B8CB8970](v133, -1, -1);

    v134 = v236;
  }

  else
  {

    sub_1B7FDFFB4(v104, type metadata accessor for ReverseGeocodingRequest);
    sub_1B7FDFFB4(v103, type metadata accessor for ReverseGeocodingRequest);
    sub_1B7FDFFB4(v105, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
    v134 = v236;
    v126 = v232;
  }

  memcpy(v240, (v100 + *(v126 + 32)), sizeof(v240));
  sub_1B7FDFEF0(v240, v241);
  sub_1B7FDFFB4(v100, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
  memcpy(v241, v240, sizeof(v241));
  nullsub_1();
  v143 = v134;
  return memcpy(v143, v241, 0x110uLL);
}

uint64_t sub_1B7FDFDC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E00, &qword_1B80D2160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B7FDFE38()
{
  result = qword_1EBA65E08;
  if (!qword_1EBA65E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65E08);
  }

  return result;
}

unint64_t sub_1B7FDFE8C()
{
  result = qword_1EBA65E10;
  if (!qword_1EBA65E10)
  {
    type metadata accessor for ReverseGeocoder(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65E10);
  }

  return result;
}

uint64_t sub_1B7FDFF4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7FDFFB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7FE0014(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0);

  return sub_1B7FDD954(a1, a2);
}

void sub_1B7FE00A0(unint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for ReverseGeocodingRequest(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_1B7FDDF2C(a1, a2, v6, v7, v8);
}

double sub_1B7FE0124(_OWORD *a1)
{
  result = 0.0;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1B7FE01A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B7FE01BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ReverseGeocodingRequest.debugDescription.getter()
{
  sub_1B80C952C();
  MEMORY[0x1B8CB7A40](0xD000000000000017, 0x80000001B80D2120);
  MEMORY[0x1B8CB7A40](0x69746E6564690A3ALL, 0xEE00203A72656966);
  MEMORY[0x1B8CB7A40](*v0, v0[1]);
  MEMORY[0x1B8CB7A40](0x203A687361680ALL, 0xE700000000000000);
  v1 = type metadata accessor for ReverseGeocodingRequest(0);
  v2 = sub_1B7FE0764();
  MEMORY[0x1B8CB7A40](v2);

  MEMORY[0x1B8CB7A40](0x203A74616C0ALL, 0xE600000000000000);
  type metadata accessor for Location(0);
  sub_1B80C938C();
  MEMORY[0x1B8CB7A40](0x203A676E6F6C0ALL, 0xE700000000000000);
  sub_1B80C938C();
  MEMORY[0x1B8CB7A40](0x3A7375696461720ALL, 0xE900000000000020);
  sub_1B80C938C();
  MEMORY[0x1B8CB7A40](0x3A74656B6375620ALL, 0xE900000000000020);
  v3 = sub_1B80C97FC();
  MEMORY[0x1B8CB7A40](v3);

  MEMORY[0x1B8CB7A40](0xD000000000000013, 0x80000001B80CC070);
  if (*(v0 + *(v1 + 28)))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + *(v1 + 28)))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1B8CB7A40](v4, v5);

  return 0;
}

uint64_t type metadata accessor for ReverseGeocodingRequest(uint64_t a1)
{
  result = qword_1EBA65E60;
  if (!qword_1EBA65E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReverseGeocodingRequest.coarseGeoHash.getter()
{
  v1 = v0 + *(type metadata accessor for ReverseGeocodingRequest(0) + 20);
  v2 = type metadata accessor for Location(0);
  v3 = round(*(v1 + *(v2 + 40)) * 100.0) / 100.0;
  v4 = round(*(v1 + *(v2 + 44)) * 100.0) / 100.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E20, &unk_1B80D2110);
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E63B0];
  v7 = MEMORY[0x1E69E6438];
  *(v5 + 16) = xmmword_1B80D20F0;
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = v3;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 72) = v4;

  return sub_1B80C90DC();
}

uint64_t ReverseGeocodingRequest.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReverseGeocodingRequest.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReverseGeocodingRequest(0) + 20);

  return sub_1B7FD7C58(v3, a1);
}

uint64_t ReverseGeocodingRequest.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReverseGeocodingRequest(0) + 24);

  return sub_1B7FDFDC8(v3, a1);
}

uint64_t sub_1B7FE0764()
{
  v1 = type metadata accessor for Location(0);
  v2 = round(*(v0 + v1[10]) * 10000.0) / 10000.0;
  v3 = round(*(v0 + v1[11]) * 10000.0) / 10000.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E20, &unk_1B80D2110);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E63B0];
  v6 = MEMORY[0x1E69E6438];
  *(v4 + 16) = xmmword_1B80D2130;
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v2;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 72) = v3;
  v7 = *(v0 + v1[8]);
  if (v7 >= 5.0)
  {
    if (v7 >= 10.0)
    {
      if (v7 >= 25.0)
      {
        if (v7 >= 50.0)
        {
          if (v7 >= 100.0)
          {
            v8 = 1000;
            if (v7 < 250.0)
            {
              v8 = 250;
            }
          }

          else
          {
            v8 = 100;
          }
        }

        else
        {
          v8 = 50;
        }
      }

      else
      {
        v8 = 25;
      }
    }

    else
    {
      v8 = 10;
    }
  }

  else
  {
    v8 = 5;
  }

  v9 = MEMORY[0x1E69E65A8];
  *(v4 + 136) = MEMORY[0x1E69E6530];
  *(v4 + 144) = v9;
  *(v4 + 112) = v8;

  return sub_1B80C90DC();
}

uint64_t ReverseGeocodingRequest.hash(into:)(uint64_t a1)
{
  v3 = sub_1B80C8EDC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E00, &qword_1B80D2160);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  sub_1B80C911C();
  v10 = type metadata accessor for ReverseGeocodingRequest(0);
  Location.hash(into:)(a1);
  sub_1B7FDFDC8(v1 + *(v10 + 24), v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1B80C995C();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_1B80C995C();
    sub_1B7FE1038(&qword_1EBA65E50, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
    sub_1B80C905C();
    (*(v4 + 8))(v6, v3);
  }

  return sub_1B80C995C();
}

uint64_t ReverseGeocodingRequest.hashValue.getter()
{
  sub_1B80C993C();
  ReverseGeocodingRequest.hash(into:)(v1);
  return sub_1B80C997C();
}

uint64_t sub_1B7FE0B40()
{
  sub_1B80C993C();
  ReverseGeocodingRequest.hash(into:)(v1);
  return sub_1B80C997C();
}

uint64_t sub_1B7FE0B84(uint64_t a1)
{
  sub_1B80C993C();
  ReverseGeocodingRequest.hash(into:)(v2);
  return sub_1B80C997C();
}

uint64_t _s12FindMyLocate23ReverseGeocodingRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B80C8EDC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E00, &qword_1B80D2160);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E70, &qword_1B80D2218);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  if (*a1 != *a2 && (sub_1B80C981C() & 1) == 0)
  {
    goto LABEL_10;
  }

  v14 = type metadata accessor for ReverseGeocodingRequest(0);
  if (!_s12FindMyLocate8LocationV2eeoiySbAC_ACtFZ_0(a1 + v14[5], a2 + v14[5]))
  {
    goto LABEL_10;
  }

  v15 = v14[6];
  v16 = *(v11 + 48);
  sub_1B7FDFDC8(a1 + v15, v13);
  sub_1B7FDFDC8(a2 + v15, &v13[v16]);
  v24 = v5;
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      sub_1B7FB86D4(v13, &qword_1EBA65E00, &qword_1B80D2160);
LABEL_13:
      v18 = *(a1 + v14[7]) ^ *(a2 + v14[7]) ^ 1;
      return v18 & 1;
    }

    goto LABEL_9;
  }

  sub_1B7FDFDC8(v13, v10);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    (*(v24 + 8))(v10, v4);
LABEL_9:
    sub_1B7FB86D4(v13, &qword_1EBA65E70, &qword_1B80D2218);
    goto LABEL_10;
  }

  v20 = v24;
  (*(v24 + 32))(v7, &v13[v16], v4);
  sub_1B7FE1038(&qword_1EBA65E78, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
  v21 = sub_1B80C908C();
  v22 = *(v20 + 8);
  v22(v7, v4);
  v22(v10, v4);
  sub_1B7FB86D4(v13, &qword_1EBA65E00, &qword_1B80D2160);
  if (v21)
  {
    goto LABEL_13;
  }

LABEL_10:
  v18 = 0;
  return v18 & 1;
}

void sub_1B7FE0F9C(uint64_t a1)
{
  type metadata accessor for Location(319);
  if (v1 <= 0x3F)
  {
    sub_1B7FB7A44(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B7FE1038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7FE1080()
{
  v1 = v0;
  if (qword_1ED8DD928 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF88);
  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C941C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "Session FenceConnection deinit", v5, 2u);
    MEMORY[0x1B8CB8970](v5, -1, -1);
  }

  sub_1B7FB86D4(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_serviceDescription, &qword_1EBA65EA0, &qword_1B80D23B0);
  sub_1B7FBE244(*(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_disconnectionHandler), *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_disconnectionHandler + 8));
  swift_weakDestroy();

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1B7FE11CC()
{
  sub_1B7FE1080();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B7FE1200(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_1B80C92CC();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;

    sub_1B80A202C(0, 0, v3, &unk_1B80D2460, v7);

    sub_1B7FE16AC();
  }

  return result;
}

uint64_t sub_1B7FE1340(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1B7FE1384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B7FE13A4, a4, 0);
}

uint64_t sub_1B7FE13A4()
{
  v1 = (v0[3] + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_disconnectionHandler);
  v2 = *v1;
  v0[4] = *v1;
  v3 = v1[1];
  v0[5] = v3;
  sub_1B7FBE254(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B7FE1428, 0, 0);
}

uint64_t sub_1B7FE1428()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v5 = (v1 + *v1);
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v2[1] = sub_1B7FE1554;

    return v5();
  }

  else
  {
    **(v0 + 16) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1B7FE1554()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);

  sub_1B7FBE244(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1B7FE1684, 0, 0);
}

void sub_1B7FE16AC()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = *(*(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_fenceStreamManager) + 16);
  os_unfair_lock_lock((v5 + 32));
  v6 = *(*(v5 + 16) + 16);
  os_unfair_lock_unlock((v5 + 32));
  if (v6)
  {
    v7 = sub_1B80C92CC();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v0;
    v8[5] = v1;

    sub_1B80A1D3C(0, 0, v4, &unk_1B80D2470, v8);
  }
}

uint64_t sub_1B7FE1810()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 32));
  sub_1B7FE1880((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1B7FE1880(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - v4;
  v16[0] = a1;
  v6 = *a1;
  v7 = *a1 + 64;
  v8 = 1 << *(*a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(*a1 + 64);
  v11 = (v8 + 63) >> 6;
  v16[3] = v3 + 16;

  for (i = 0; v10; result = (*(v3 + 8))(v5, v2))
  {
    v14 = i;
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    (*(v3 + 16))(v5, *(v6 + 56) + *(v3 + 72) * (v15 | (v14 << 6)), v2);
    sub_1B80C92FC();
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      *v16[0] = MEMORY[0x1E69E7CC8];
      return result;
    }

    v10 = *(v7 + 8 * v14);
    ++i;
    if (v10)
    {
      i = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7FE1A50(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EA8, &qword_1B80D23B8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  sub_1B7FE1BFC(a2, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1B7FB86D4(v5, &qword_1EBA65EA8, &qword_1B80D23B8);
  }

  (*(v7 + 32))(v9, v5, v6);
  sub_1B80C92FC();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1B7FE1BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1B7FBEB64(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B8091CFC();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_1B80C8E9C();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1B8013DDC(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1B7FE1DC4()
{
  v16 = v0;

  if (qword_1ED8DD928 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF88);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_1B7FB84FC(0x75716552656B616DLL, 0xEF293A5F28747365, v15);
    *(v7 + 12) = 2082;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v10 = sub_1B80C90EC();
    v12 = sub_1B7FB84FC(v10, v11, v15);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s error %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  swift_willThrow();
  v13 = v0[1];

  return v13();
}

uint64_t sub_1B7FE1FD4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for FenceClientRequest(0);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for FenceResponse(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FE20D4, v2, 0);
}

uint64_t sub_1B7FE20D4()
{
  sub_1B7FC0784(v0[3], v0[6], type metadata accessor for Fence);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1B7FE21A4;
  v2 = v0[10];
  v3 = v0[6];

  return sub_1B7FBFF48(v2, v3);
}

uint64_t sub_1B7FE21A4()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 96) = v0;

  sub_1B7FC730C(v3, type metadata accessor for FenceClientRequest);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_1B7FE5BC4;
  }

  else
  {
    v5 = sub_1B7FE5BC0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FE2300(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for FenceClientRequest(0);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for FenceResponse(0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FE23FC, v1, 0);
}

uint64_t sub_1B7FE23FC()
{
  sub_1B7FC0784(v0[2], v0[5], type metadata accessor for Fence.ID);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1B7FE24CC;
  v2 = v0[9];
  v3 = v0[5];

  return sub_1B7FBFF48(v2, v3);
}

uint64_t sub_1B7FE24CC()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  *(*v1 + 88) = v0;

  sub_1B7FC730C(v3, type metadata accessor for FenceClientRequest);
  v4 = *(v2 + 24);
  if (v0)
  {
    v5 = sub_1B7FE281C;
  }

  else
  {
    v5 = sub_1B7FE2628;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FE2628()
{
  sub_1B7FC0784(v0[9], v0[8], type metadata accessor for FenceResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[8];
  v2 = v0[9];
  if (EnumCaseMultiPayload == 3)
  {
    sub_1B7FC730C(v0[9], type metadata accessor for FenceResponse);
    sub_1B7FC730C(v3, type metadata accessor for FenceResponse);
  }

  else
  {
    v5 = v0[6];
    v6 = v0[7];
    sub_1B7FC730C(v0[8], type metadata accessor for FenceResponse);
    _s15FenceConnectionC7FailureOMa(0);
    sub_1B7FC0854(&qword_1EBA65E88, _s15FenceConnectionC7FailureOMa, &unk_1B80D2490);
    swift_allocError();
    v8 = v7;
    sub_1B7FC0784(v2, v7, type metadata accessor for FenceResponse);
    (*(v6 + 56))(v8, 0, 1, v5);
    swift_willThrow();
    sub_1B7FC730C(v2, type metadata accessor for FenceResponse);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B7FE281C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7FE289C()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for FenceClientRequest(0);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for FenceResponse(0);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FE2998, v0, 0);
}

uint64_t sub_1B7FE2998()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1B7FE2A40;
  v2 = v0[8];
  v3 = v0[4];

  return sub_1B7FBFF48(v2, v3);
}

uint64_t sub_1B7FE2A40()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  sub_1B7FC730C(v3, type metadata accessor for FenceClientRequest);
  v4 = *(v2 + 16);
  if (v0)
  {
    v5 = sub_1B7FE2DB8;
  }

  else
  {
    v5 = sub_1B7FE2B9C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FE2B9C()
{
  sub_1B7FC0784(v0[8], v0[7], type metadata accessor for FenceResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[7];
  v2 = v0[8];
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B7FC730C(v0[8], type metadata accessor for FenceResponse);
    v4 = *v3;

    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    v7 = v0[5];
    v8 = v0[6];
    sub_1B7FC730C(v0[7], type metadata accessor for FenceResponse);
    _s15FenceConnectionC7FailureOMa(0);
    sub_1B7FC0854(&qword_1EBA65E88, _s15FenceConnectionC7FailureOMa, &unk_1B80D2490);
    swift_allocError();
    v10 = v9;
    sub_1B7FC0784(v2, v9, type metadata accessor for FenceResponse);
    (*(v8 + 56))(v10, 0, 1, v7);
    swift_willThrow();
    sub_1B7FC730C(v2, type metadata accessor for FenceResponse);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1B7FE2DB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7FE2E38(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for FenceClientRequest(0);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for FenceResponse(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FE2F38, v2, 0);
}

uint64_t sub_1B7FE2F38()
{
  sub_1B7FC0784(v0[3], v0[6], type metadata accessor for Fence.ID);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1B7FE3008;
  v2 = v0[10];
  v3 = v0[6];

  return sub_1B7FBFF48(v2, v3);
}

uint64_t sub_1B7FE3008()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 96) = v0;

  sub_1B7FC730C(v3, type metadata accessor for FenceClientRequest);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_1B7FE3368;
  }

  else
  {
    v5 = sub_1B7FE3164;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FE3164()
{
  sub_1B7FC0784(v0[10], v0[9], type metadata accessor for FenceResponse);
  if (swift_getEnumCaseMultiPayload())
  {
    v1 = v0[10];
    v2 = v0[7];
    v3 = v0[8];
    sub_1B7FC730C(v0[9], type metadata accessor for FenceResponse);
    _s15FenceConnectionC7FailureOMa(0);
    sub_1B7FC0854(&qword_1EBA65E88, _s15FenceConnectionC7FailureOMa, &unk_1B80D2490);
    swift_allocError();
    v5 = v4;
    sub_1B7FC0784(v1, v4, type metadata accessor for FenceResponse);
    (*(v3 + 56))(v5, 0, 1, v2);
    swift_willThrow();
    sub_1B7FC730C(v1, type metadata accessor for FenceResponse);
  }

  else
  {
    v7 = v0[9];
    v8 = v0[2];
    sub_1B7FC730C(v0[10], type metadata accessor for FenceResponse);
    sub_1B7FC07EC(v7, v8, type metadata accessor for Fence);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B7FE3368()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7FE33E8(uint64_t *a1, uint64_t a2)
{
  v3[2] = a2;
  v3[3] = v2;
  v3[4] = type metadata accessor for FenceClientRequest(0);
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for FenceResponse(0);
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a1;
  v8 = a1[1];
  v3[9] = v6;
  v3[10] = v7;
  v3[11] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1B7FE34F8, v2, 0);
}

uint64_t sub_1B7FE34F8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[5];
  v4 = v0[2];
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EC8, &unk_1B80D2400) + 48);
  *v3 = v2;
  v3[1] = v1;
  sub_1B7FD6818(v4, v3 + v5);
  swift_storeEnumTagMultiPayload();

  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1B7FE35F4;
  v7 = v0[9];
  v8 = v0[5];

  return sub_1B7FBFF48(v7, v8);
}

uint64_t sub_1B7FE35F4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  *(*v1 + 104) = v0;

  sub_1B7FC730C(v3, type metadata accessor for FenceClientRequest);
  v4 = *(v2 + 24);
  if (v0)
  {
    v5 = sub_1B7FE3750;
  }

  else
  {
    v5 = sub_1B7FE2628;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FE3750()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7FE37D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for FenceClientRequest(0);
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for FenceResponse(0);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FE38D0, v3, 0);
}

uint64_t sub_1B7FE38D0()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EB8, &unk_1B80DEEA0) + 48);
  sub_1B7FC0784(v3, v1, type metadata accessor for Fence.ID);
  sub_1B7FC0784(v2, v1 + v4, type metadata accessor for Fence.TriggerPosition);
  swift_storeEnumTagMultiPayload();
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FE39EC;
  v6 = v0[11];
  v7 = v0[7];

  return sub_1B7FBFF48(v6, v7);
}

uint64_t sub_1B7FE39EC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  *(*v1 + 104) = v0;

  sub_1B7FC730C(v3, type metadata accessor for FenceClientRequest);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_1B7FE3D3C;
  }

  else
  {
    v5 = sub_1B7FE3B48;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FE3B48()
{
  sub_1B7FC0784(v0[11], v0[10], type metadata accessor for FenceResponse);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v1 = v0[10];
    v2 = v0[2];
    sub_1B7FC730C(v0[11], type metadata accessor for FenceResponse);
    sub_1B7FE5880(v1, v2);
  }

  else
  {
    v4 = v0[11];
    v5 = v0[8];
    v6 = v0[9];
    sub_1B7FC730C(v0[10], type metadata accessor for FenceResponse);
    _s15FenceConnectionC7FailureOMa(0);
    sub_1B7FC0854(&qword_1EBA65E88, _s15FenceConnectionC7FailureOMa, &unk_1B80D2490);
    swift_allocError();
    v8 = v7;
    sub_1B7FC0784(v4, v7, type metadata accessor for FenceResponse);
    (*(v6 + 56))(v8, 0, 1, v5);
    swift_willThrow();
    sub_1B7FC730C(v4, type metadata accessor for FenceResponse);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B7FE3D3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7FE3DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_1B80C929C();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = type metadata accessor for FenceClientRequest(0);
  v4[14] = swift_task_alloc();
  v6 = type metadata accessor for FenceResponse(0);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v7 = sub_1B80C95CC();
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v8 = sub_1B80C95DC();
  v4[23] = v8;
  v4[24] = *(v8 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FE3FD8, 0, 0);
}

uint64_t sub_1B7FE3FD8()
{
  if (qword_1ED8DD928 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  *(v0 + 208) = __swift_project_value_buffer(v1, qword_1ED8DDF88);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "FenceConnection will try restart streaming", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v5 = OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_fenceStreamManager;
  *(v0 + 216) = OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_fenceStreamManager;
  *(v0 + 240) = 500000000000000000;
  *(v0 + 224) = xmmword_1B80D2230;
  v6 = *(*(*(v0 + 72) + v5) + 16);
  os_unfair_lock_lock((v6 + 32));
  v7 = *(*(v6 + 16) + 16);
  os_unfair_lock_unlock((v6 + 32));
  if (v7)
  {
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 152);
    sub_1B80C989C();
    *(v0 + 40) = xmmword_1B80D2240;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v11 = sub_1B7FC0854(&qword_1EBA65920, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
    sub_1B80C987C();
    sub_1B7FC0854(&qword_1EBA65928, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
    sub_1B80C95EC();
    v12 = *(v9 + 8);
    *(v0 + 248) = v12;
    *(v0 + 256) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v8, v10);
    v13 = swift_task_alloc();
    *(v0 + 264) = v13;
    *v13 = v0;
    v13[1] = sub_1B7FE4390;
    v15 = *(v0 + 176);
    v14 = *(v0 + 184);

    return MEMORY[0x1EEE6DE58](v15, v0 + 16, v14, v11);
  }

  else
  {
    v16 = sub_1B80C8FEC();
    v17 = sub_1B80C941C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1B7FB5000, v16, v17, "FenceConnection - no more subscribers - will abort restarting", v18, 2u);
      MEMORY[0x1B8CB8970](v18, -1, -1);
    }

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1B7FE4390()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    (*(v2 + 248))(*(v2 + 176), *(v2 + 152));
    v3 = sub_1B7FE46F8;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 248);
    v7 = *(v2 + 192);
    v6 = *(v2 + 200);
    v8 = *(v2 + 176);
    v9 = *(v2 + 184);
    v10 = *(v2 + 152);
    v11 = *(v2 + 72);
    v5(v8, v10);
    (*(v7 + 8))(v6, v9);
    v3 = sub_1B7FE44F4;
    v4 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1B7FE44F4()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[35] = v1;
  *v1 = v0;
  v1[1] = sub_1B7FE459C;
  v2 = v0[18];
  v3 = v0[14];

  return sub_1B7FBFF48(v2, v3);
}

uint64_t sub_1B7FE459C()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 72);
  sub_1B7FC730C(v3, type metadata accessor for FenceClientRequest);
  if (v0)
  {
    v5 = sub_1B7FE4E68;
  }

  else
  {
    v5 = sub_1B7FE4CA4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FE46F8()
{
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  v1 = *(v0 + 272);
  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = *(v0 + 80);

    (*(v4 + 8))(v3, v5);
LABEL_3:

    v6 = *(v0 + 8);

    return v6();
  }

  v8 = *(v0 + 224);

  v9 = v8 - 1;
  *(v0 + 64) = 2;
  sub_1B7FE5AE8();
  v10 = sub_1B80C9A0C();
  v12 = v11;
  v13 = sub_1B80C99FC();
  if (v13)
  {
    v14 = 0x8AC7230489E80000;
  }

  else
  {
    v14 = v10;
  }

  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  v16 = v1;
  v17 = sub_1B80C8FEC();
  v18 = sub_1B80C941C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138543618;
    v21 = v1;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v22;
    *v20 = v22;
    *(v19 + 12) = 2050;
    *(v19 + 14) = v9;
    _os_log_impl(&dword_1B7FB5000, v17, v18, "FenceConnection failed to restart streaming with error: %{public}@. Will try %{public}ld more times", v19, 0x16u);
    sub_1B7FB86D4(v20, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v20, -1, -1);
    MEMORY[0x1B8CB8970](v19, -1, -1);
  }

  else
  {
  }

  if (*(v0 + 224) <= 1uLL)
  {
    v33 = sub_1B80C8FEC();
    v34 = sub_1B80C941C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1B7FB5000, v33, v34, "FenceConnection failed all streaming restart attempts", v35, 2u);
      MEMORY[0x1B8CB8970](v35, -1, -1);
    }

    v36 = *(v0 + 216);
    v37 = *(v0 + 72);

    v38 = *(*(v37 + v36) + 16);
    os_unfair_lock_lock((v38 + 32));
    sub_1B7FE1880((v38 + 16));
    os_unfair_lock_unlock((v38 + 32));
    goto LABEL_3;
  }

  *(v0 + 232) = v15;
  *(v0 + 240) = v14;
  *(v0 + 224) = v9;
  v23 = *(*(*(v0 + 72) + *(v0 + 216)) + 16);
  os_unfair_lock_lock((v23 + 32));
  v24 = *(*(v23 + 16) + 16);
  os_unfair_lock_unlock((v23 + 32));
  if (!v24)
  {
    v39 = sub_1B80C8FEC();
    v40 = sub_1B80C941C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1B7FB5000, v39, v40, "FenceConnection - no more subscribers - will abort restarting", v41, 2u);
      MEMORY[0x1B8CB8970](v41, -1, -1);
    }

    goto LABEL_3;
  }

  v26 = *(v0 + 160);
  v25 = *(v0 + 168);
  v27 = *(v0 + 152);
  sub_1B80C989C();
  *(v0 + 40) = v14;
  *(v0 + 48) = v15;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v28 = sub_1B7FC0854(&qword_1EBA65920, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1B80C987C();
  sub_1B7FC0854(&qword_1EBA65928, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1B80C95EC();
  v29 = *(v26 + 8);
  *(v0 + 248) = v29;
  *(v0 + 256) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v25, v27);
  v30 = swift_task_alloc();
  *(v0 + 264) = v30;
  *v30 = v0;
  v30[1] = sub_1B7FE4390;
  v32 = *(v0 + 176);
  v31 = *(v0 + 184);

  return MEMORY[0x1EEE6DE58](v32, v0 + 16, v31, v28);
}

uint64_t sub_1B7FE4CA4()
{
  sub_1B7FC0784(v0[18], v0[17], type metadata accessor for FenceResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[17];
  v2 = v0[18];
  if (EnumCaseMultiPayload == 3)
  {
    sub_1B7FC730C(v0[18], type metadata accessor for FenceResponse);
    sub_1B7FC730C(v3, type metadata accessor for FenceResponse);
    v4 = sub_1B7FE4E8C;
  }

  else
  {
    v5 = v0[15];
    v6 = v0[16];
    sub_1B7FC730C(v0[17], type metadata accessor for FenceResponse);
    _s15FenceConnectionC7FailureOMa(0);
    sub_1B7FC0854(&qword_1EBA65E88, _s15FenceConnectionC7FailureOMa, &unk_1B80D2490);
    v7 = swift_allocError();
    v9 = v8;
    sub_1B7FC0784(v2, v8, type metadata accessor for FenceResponse);
    (*(v6 + 56))(v9, 0, 1, v5);
    swift_willThrow();
    sub_1B7FC730C(v2, type metadata accessor for FenceResponse);
    v0[37] = v7;
    v4 = sub_1B7FE4FAC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B7FE4E8C(uint64_t a1)
{
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "FenceConnection restarted streaming successfully", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_1B7FE4FAC()
{
  v1 = *(v0 + 296);
  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = *(v0 + 80);

    (*(v4 + 8))(v3, v5);
LABEL_3:

    v6 = *(v0 + 8);

    return v6();
  }

  v8 = *(v0 + 224);

  v9 = v8 - 1;
  *(v0 + 64) = 2;
  sub_1B7FE5AE8();
  v10 = sub_1B80C9A0C();
  v12 = v11;
  v13 = sub_1B80C99FC();
  if (v13)
  {
    v14 = 0x8AC7230489E80000;
  }

  else
  {
    v14 = v10;
  }

  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  v16 = v1;
  v17 = sub_1B80C8FEC();
  v18 = sub_1B80C941C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138543618;
    v21 = v1;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v22;
    *v20 = v22;
    *(v19 + 12) = 2050;
    *(v19 + 14) = v9;
    _os_log_impl(&dword_1B7FB5000, v17, v18, "FenceConnection failed to restart streaming with error: %{public}@. Will try %{public}ld more times", v19, 0x16u);
    sub_1B7FB86D4(v20, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v20, -1, -1);
    MEMORY[0x1B8CB8970](v19, -1, -1);
  }

  else
  {
  }

  if (*(v0 + 224) <= 1uLL)
  {
    v33 = sub_1B80C8FEC();
    v34 = sub_1B80C941C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1B7FB5000, v33, v34, "FenceConnection failed all streaming restart attempts", v35, 2u);
      MEMORY[0x1B8CB8970](v35, -1, -1);
    }

    v36 = *(v0 + 216);
    v37 = *(v0 + 72);

    v38 = *(*(v37 + v36) + 16);
    os_unfair_lock_lock((v38 + 32));
    sub_1B7FE1880((v38 + 16));
    os_unfair_lock_unlock((v38 + 32));
    goto LABEL_3;
  }

  *(v0 + 232) = v15;
  *(v0 + 240) = v14;
  *(v0 + 224) = v9;
  v23 = *(*(*(v0 + 72) + *(v0 + 216)) + 16);
  os_unfair_lock_lock((v23 + 32));
  v24 = *(*(v23 + 16) + 16);
  os_unfair_lock_unlock((v23 + 32));
  if (!v24)
  {
    v39 = sub_1B80C8FEC();
    v40 = sub_1B80C941C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1B7FB5000, v39, v40, "FenceConnection - no more subscribers - will abort restarting", v41, 2u);
      MEMORY[0x1B8CB8970](v41, -1, -1);
    }

    goto LABEL_3;
  }

  v25 = *(v0 + 160);
  v26 = *(v0 + 168);
  v27 = *(v0 + 152);
  sub_1B80C989C();
  *(v0 + 40) = v14;
  *(v0 + 48) = v15;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v28 = sub_1B7FC0854(&qword_1EBA65920, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1B80C987C();
  sub_1B7FC0854(&qword_1EBA65928, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1B80C95EC();
  v29 = *(v25 + 8);
  *(v0 + 248) = v29;
  *(v0 + 256) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v26, v27);
  v30 = swift_task_alloc();
  *(v0 + 264) = v30;
  *v30 = v0;
  v30[1] = sub_1B7FE4390;
  v32 = *(v0 + 176);
  v31 = *(v0 + 184);

  return MEMORY[0x1EEE6DE58](v32, v0 + 16, v31, v28);
}

uint64_t sub_1B7FE554C()
{
  v15 = v0;

  v1 = v0[16];
  if (qword_1ED8DD928 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF88);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0x75716552656B616DLL, 0xEF293A5F28747365, &v14);
    *(v6 + 12) = 2082;
    v0[10] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v9 = sub_1B80C90EC();
    v11 = sub_1B7FB84FC(v9, v10, &v14);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s error %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v7, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[9] = v1;
  sub_1B80C8ACC();

  v12 = v0[1];

  return v12();
}

id sub_1B7FE5794()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B7FE57DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B7FE5824(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7FE5880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EC0, &qword_1B80D23F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B7FE5918()
{
  result = qword_1EBA65ED0;
  if (!qword_1EBA65ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65ED0);
  }

  return result;
}

uint64_t sub_1B7FE5974(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7FC253C;

  return sub_1B7FE1384(a1, v4, v5, v6);
}

uint64_t sub_1B7FE5A28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7FBA3EC;

  return sub_1B7FE3DBC(a1, v4, v5, v6);
}

unint64_t sub_1B7FE5AE8()
{
  result = qword_1EBA65EE0;
  if (!qword_1EBA65EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65EE0);
  }

  return result;
}

uint64_t sub_1B7FE5B64(uint64_t a1)
{
  v1 = type metadata accessor for FenceResponse(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

id sub_1B7FE5BCC()
{
  v1 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection____lazy_storage___sharedContactStore;
  v2 = *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection____lazy_storage___sharedContactStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection____lazy_storage___sharedContactStore);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1B7FE5CA4()
{
  v1 = v0;
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C941C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "Session FriendshipConnection deinit", v5, 2u);
    MEMORY[0x1B8CB8970](v5, -1, -1);
  }

  sub_1B7FB86D4(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_serviceDescription, &qword_1EBA65EA0, &qword_1B80D23B0);

  sub_1B7FBE244(*(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_disconnectionHandler), *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_disconnectionHandler + 8));
  sub_1B7FB86D4(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_friendshipContinuation, &unk_1EBA65FF0, &qword_1B80D2620);
  sub_1B7FB86D4(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_rangingContinuation, &qword_1EBA65F20, &qword_1B80D2628);

  swift_weakDestroy();

  sub_1B7FB86D4(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_internalFollowingContinuation, &unk_1EBA65FF0, &qword_1B80D2620);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1B7FE5EC0()
{
  sub_1B7FE5CA4();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B7FE5EF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F18, &qword_1B80D9250);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  if (*(a2 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_isSyncingContact) != 1)
  {
    return sub_1B80C928C();
  }

  (*(v5 + 16))(v7, a1, v4);
  v8 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_syncContinuations;
  v9 = *(a2 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_syncContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v8) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1B807D88C(0, v9[2] + 1, 1, v9);
    *(a2 + v8) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1B807D88C((v11 > 1), v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v7, v4);
  *(a2 + v8) = v9;
  return result;
}

uint64_t sub_1B7FE60A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F18, &qword_1B80D9250);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - v3;
  v5 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_syncContinuations;
  v6 = *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_syncContinuations);
  v7 = *(v6 + 16);
  if (v7)
  {
    v14 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_syncContinuations;
    v15 = v0;
    v10 = *(v2 + 16);
    v8 = v2 + 16;
    v9 = v10;
    v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);

    do
    {
      v9(v4, v11, v1);
      sub_1B80C928C();
      (*(v8 - 8))(v4, v1);
      v11 += v12;
      --v7;
    }

    while (v7);

    v5 = v14;
    v0 = v15;
  }

  *(v0 + v5) = MEMORY[0x1E69E7CC0];

  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_isSyncingContact) = 0;
  return result;
}

uint64_t sub_1B7FE6218(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FA0, &unk_1B80D2610);
  v2[4] = swift_task_alloc();
  v2[5] = *(type metadata accessor for Friend(0) - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FE630C, v1, 0);
}

uint64_t sub_1B7FE630C()
{
  v1 = *(v0 + 16);
  *(*(v0 + 24) + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_isSyncingContact) = 1;
  v2 = *(v1 + 16);
  *(v0 + 56) = v2;
  if (v2)
  {
    v3 = *(v0 + 16);
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = *(v5 + 80);
    *(v0 + 96) = v6;
    *(v0 + 64) = *(v5 + 72);
    *(v0 + 72) = 0;
    sub_1B7FE7BD0(v3 + ((v6 + 32) & ~v6), v4);
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_1B7FE644C;
    v8 = *(v0 + 48);
    v9 = *(v0 + 32);

    return sub_1B7FF5E2C(v9, v8);
  }

  else
  {
    sub_1B7FE60A0();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1B7FE644C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1B7FE66B8;
  }

  else
  {
    v5 = *(v2 + 24);
    sub_1B7FB86D4(*(v2 + 32), &unk_1EBA65FA0, &unk_1B80D2610);
    v4 = sub_1B7FE6580;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B7FE6580()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 72) + 1;
  sub_1B7FE7C34(*(v0 + 48));
  if (v2 == v1)
  {
    sub_1B7FE60A0();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 64);
    v6 = *(v0 + 72) + 1;
    *(v0 + 72) = v6;
    sub_1B7FE7BD0(*(v0 + 16) + ((*(v0 + 96) + 32) & ~*(v0 + 96)) + v5 * v6, *(v0 + 48));
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_1B7FE644C;
    v8 = *(v0 + 48);
    v9 = *(v0 + 32);

    return sub_1B7FF5E2C(v9, v8);
  }
}

uint64_t sub_1B7FE66B8()
{
  sub_1B7FE7C34(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1B7FE6734(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v132 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v126 - v7;
  v134 = type metadata accessor for Friend(0);
  v9 = *(v134 - 8);
  v10 = MEMORY[0x1EEE9AC00](v134);
  v144 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v133 = &v126 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v137 = &v126 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v136 = &v126 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v126 - v18;
  v20 = sub_1B80C8E2C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = *a2;
  static Date.trustedNow.getter(v23);
  v135 = v23;
  v147[2] = v23;

  v24 = sub_1B7FE759C(sub_1B7FE80F8, v147, a1);
  v26 = v24;
  if (*(v24 + 16))
  {
    v126 = v21;
    v127 = v20;
    v128 = v8;
    v129 = v3;
    v143 = a1[2];
    if (v143)
    {
      v27 = 0;
      v28 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v141 = a1 + v28;
      v29 = *(v9 + 72);
      v139 = 0;
      v140 = v28;
      v138 = v24 + v28;
      v146 = 0x80000001B80CBD30;
      a1 = MEMORY[0x1E69E7CC0];
      *&v25 = 141558275;
      v130 = v25;
      v142 = v24;
      while (1)
      {
        v145 = a1;
        sub_1B7FE7BD0(&v141[v29 * v27], v19);
        v32 = *(v26 + 16);
        if (!v32)
        {
LABEL_40:
          sub_1B7FE7BD0(v19, v144);
          a1 = v145;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_1B807DA7C(0, a1[2] + 1, 1, a1);
          }

          v108 = a1[2];
          v107 = a1[3];
          if (v108 >= v107 >> 1)
          {
            a1 = sub_1B807DA7C((v107 > 1), v108 + 1, 1, a1);
          }

          sub_1B7FE7C34(v19);
          a1[2] = v108 + 1;
          v30 = a1 + v140 + v108 * v29;
          v31 = v144;
LABEL_5:
          sub_1B7FE8124(v31, v30);
          goto LABEL_6;
        }

        v33 = v138;
        while (1)
        {
          v36 = *v33;
          v37 = *(v33 + 16);
          v172[2] = *(v33 + 32);
          v172[1] = v37;
          v172[0] = v36;
          v38 = *(v33 + 48);
          v39 = *(v33 + 64);
          v40 = *(v33 + 80);
          v172[6] = *(v33 + 96);
          v172[5] = v40;
          v172[4] = v39;
          v172[3] = v38;
          v41 = *(v33 + 112);
          v42 = *(v33 + 128);
          v43 = *(v33 + 144);
          v172[10] = *(v33 + 160);
          v172[9] = v43;
          v172[8] = v42;
          v172[7] = v41;
          v44 = *v19;
          v173[1] = *(v19 + 1);
          v173[0] = v44;
          v45 = *(v19 + 4);
          v176 = *(v19 + 5);
          v175 = v45;
          v46 = *(v19 + 3);
          v173[2] = *(v19 + 2);
          v174 = v46;
          v47 = *(v19 + 9);
          v181 = *(v19 + 10);
          v48 = *(v19 + 7);
          v49 = *(v19 + 8);
          v180 = v47;
          v179 = v49;
          v177 = *(v19 + 6);
          v178 = v48;
          v50 = sub_1B80C90FC();
          v52 = v51;
          if (v50 == sub_1B80C90FC() && v52 == v53)
          {
            sub_1B7FC8DA4(v172, &v161);
            sub_1B7FC8DA4(v173, &v161);

            sub_1B7FCAD28(v173);
            sub_1B7FCAD28(v172);
          }

          else
          {
            v54 = sub_1B80C981C();
            sub_1B7FC8DA4(v172, &v161);
            sub_1B7FC8DA4(v173, &v161);

            sub_1B7FCAD28(v173);
            sub_1B7FCAD28(v172);
            if ((v54 & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          v55 = *(v33 + 176);
          if (v55 <= 1)
          {
            v56 = 0x65776F6C6C6F662ELL;
            v57 = 0xE900000000000072;
            if (*(v33 + 176))
            {
              v56 = 0x69776F6C6C6F662ELL;
              v57 = 0xEA0000000000676ELL;
            }
          }

          else if (v55 == 2)
          {
            v56 = 0x466572757475662ELL;
            v57 = 0xEF7265776F6C6C6FLL;
          }

          else if (v55 == 3)
          {
            v56 = 0xD000000000000010;
            v57 = v146;
          }

          else
          {
            v56 = 0x676E69646E65702ELL;
            v57 = 0xED0000726566664FLL;
          }

          v58 = v19[176];
          if (v58 <= 1)
          {
            v59 = 0x65776F6C6C6F662ELL;
            v60 = 0xE900000000000072;
            if (v19[176])
            {
              v59 = 0x69776F6C6C6F662ELL;
              v60 = 0xEA0000000000676ELL;
            }
          }

          else if (v58 == 2)
          {
            v59 = 0x466572757475662ELL;
            v60 = 0xEF7265776F6C6C6FLL;
          }

          else if (v58 == 3)
          {
            v59 = 0xD000000000000010;
            v60 = v146;
          }

          else
          {
            v59 = 0x676E69646E65702ELL;
            v60 = 0xED0000726566664FLL;
          }

          v61 = *(&v174 + 1);
          if (v56 == v59 && v57 == v60)
          {
            break;
          }

          v34 = sub_1B80C981C();

          if (v34)
          {
            goto LABEL_34;
          }

LABEL_10:
          v33 += v29;
          if (!--v32)
          {
            goto LABEL_40;
          }
        }

LABEL_34:
        MEMORY[0x1EEE9AC00](v35);
        *(&v126 - 2) = v135;
        v62 = v139;
        v63 = sub_1B7FE7C90(sub_1B7FE8118, (&v126 - 4), v61);
        v139 = v62;
        if (v63[2])
        {
          v64 = *(v19 + 7);
          v65 = *(v19 + 9);
          v156 = *(v19 + 8);
          v157 = v65;
          v66 = *(v19 + 9);
          v158 = *(v19 + 10);
          v67 = *(v19 + 3);
          v68 = *(v19 + 5);
          v152 = *(v19 + 4);
          v153 = v68;
          v69 = *(v19 + 5);
          v70 = *(v19 + 7);
          v154 = *(v19 + 6);
          v155 = v70;
          v71 = *(v19 + 1);
          v149[0] = *v19;
          v149[1] = v71;
          v72 = *(v19 + 3);
          v74 = *v19;
          v73 = *(v19 + 1);
          v150 = *(v19 + 2);
          v151 = v72;
          v169 = v156;
          v170 = v66;
          v171 = *(v19 + 10);
          v165 = v152;
          v166 = v69;
          v167 = v154;
          v168 = v64;
          v161 = v74;
          v162 = v73;
          v163 = v150;
          v164 = v67;
          Handle.updateWithdifferentExpiresByGroupID(_:)(v63, v160);
          sub_1B7FC8DA4(v149, v159);

          v159[8] = v169;
          v159[9] = v170;
          v159[10] = v171;
          v159[4] = v165;
          v159[5] = v166;
          v159[6] = v167;
          v159[7] = v168;
          v159[0] = v161;
          v159[1] = v162;
          v159[2] = v163;
          v159[3] = v164;
          sub_1B7FCAD28(v159);
          v75 = v19[176];
          v76 = v134;
          v77 = v136;
          sub_1B7FB8448(&v19[*(v134 + 40)], v136 + *(v134 + 40), &unk_1EBA65FD0, &unk_1B80D1920);
          sub_1B7FB8448(&v19[v76[12]], v77 + v76[12], &unk_1EBA65FD0, &unk_1B80D1920);
          v79 = v76[14];
          v78 = v76[15];
          v80 = &v19[v76[13]];
          v81 = *(v80 + 3);
          v83 = *(v80 + 5);
          v165 = *(v80 + 4);
          v82 = v165;
          v166 = v83;
          v84 = *(v80 + 9);
          v171 = *(v80 + 10);
          v85 = *(v80 + 7);
          v86 = *(v80 + 8);
          v87 = v86;
          v170 = *(v80 + 9);
          v169 = v86;
          v88 = *(v80 + 5);
          v90 = *(v80 + 7);
          v167 = *(v80 + 6);
          v89 = v167;
          v168 = v90;
          v91 = *(v80 + 1);
          v92 = *(v80 + 3);
          v163 = *(v80 + 2);
          v93 = v163;
          v164 = v92;
          v94 = *(v80 + 1);
          v161 = *v80;
          v95 = v161;
          v162 = v94;
          *(v77 + v76[11]) = 2;
          v96 = v160[9];
          *(v77 + 128) = v160[8];
          *(v77 + 144) = v96;
          *(v77 + 160) = v160[10];
          v97 = v160[5];
          *(v77 + 64) = v160[4];
          *(v77 + 80) = v97;
          v98 = v160[7];
          *(v77 + 96) = v160[6];
          *(v77 + 112) = v98;
          v99 = v160[1];
          *v77 = v160[0];
          *(v77 + 16) = v99;
          v100 = v160[3];
          *(v77 + 32) = v160[2];
          *(v77 + 48) = v100;
          LOBYTE(v79) = v19[v79];
          v101 = v19[177];
          v102 = v19[178];
          v103 = v19[179];
          LOBYTE(v78) = v19[v78];
          *(v77 + 176) = v75;
          *(v77 + v76[14]) = v79;
          *(v77 + 177) = v101;
          *(v77 + 178) = v102;
          *(v77 + 179) = v103;
          *(v77 + v76[15]) = v78;
          v104 = (v77 + v76[13]);
          v104[8] = v87;
          v104[9] = v84;
          v104[10] = *(v80 + 10);
          v104[4] = v82;
          v104[5] = v88;
          v104[6] = v89;
          v104[7] = v85;
          *v104 = v95;
          v104[1] = v91;
          v104[2] = v93;
          v104[3] = v81;
          sub_1B7FE7BD0(v77, v137);
          sub_1B7FB8448(&v161, &v148, &qword_1EBA65D78, &qword_1B80D2640);
          a1 = v145;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_1B807DA7C(0, a1[2] + 1, 1, a1);
          }

          v106 = a1[2];
          v105 = a1[3];
          if (v106 >= v105 >> 1)
          {
            a1 = sub_1B807DA7C((v105 > 1), v106 + 1, 1, a1);
          }

          sub_1B7FE7C34(v136);
          sub_1B7FE7C34(v19);
          a1[2] = v106 + 1;
          v30 = a1 + v140 + v106 * v29;
          v31 = v137;
          goto LABEL_5;
        }

        if (qword_1ED8DD6D0 != -1)
        {
          swift_once();
        }

        v109 = sub_1B80C900C();
        __swift_project_value_buffer(v109, qword_1ED8DDE78);
        v110 = v133;
        sub_1B7FE7BD0(v19, v133);
        v111 = sub_1B80C8FEC();
        v112 = sub_1B80C941C();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          *&v161 = v114;
          *v113 = v130;
          *(v113 + 4) = 1752392040;
          *(v113 + 12) = 2081;
          v115 = Friend.description.getter();
          v116 = v110;
          v118 = v117;
          sub_1B7FE7C34(v116);
          v119 = sub_1B7FB84FC(v115, v118, &v161);

          *(v113 + 14) = v119;
          _os_log_impl(&dword_1B7FB5000, v111, v112, "Friend: %{private,mask.hash}s expired", v113, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v114);
          MEMORY[0x1B8CB8970](v114, -1, -1);
          MEMORY[0x1B8CB8970](v113, -1, -1);
        }

        else
        {

          sub_1B7FE7C34(v110);
        }

        sub_1B7FE7C34(v19);
        a1 = v145;
LABEL_6:
        v26 = v142;
        if (++v27 == v143)
        {
          goto LABEL_52;
        }
      }
    }

    a1 = MEMORY[0x1E69E7CC0];
LABEL_52:

    v120 = sub_1B80C92CC();
    v121 = v128;
    (*(*(v120 - 8) + 56))(v128, 1, 1, v120);
    v122 = sub_1B7FE8254(&qword_1ED8DD560, _s20FriendshipConnectionCMa, &unk_1B80D25E0);
    v123 = swift_allocObject();
    v124 = v129;
    *(v123 + 16) = v129;
    *(v123 + 24) = v122;
    *(v123 + 32) = v124;
    *(v123 + 40) = v131;
    *(v123 + 48) = v132;
    swift_retain_n();
    sub_1B80A4870(0, 0, v121, &unk_1B80D2650, v123);

    v21 = v126;
    v20 = v127;
  }

  else
  {
  }

  (*(v21 + 8))(v135, v20);
  return a1;
}

uint64_t sub_1B7FE7394(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DC0, &qword_1B80D2660);
  MEMORY[0x1EEE9AC00](v24);
  v4 = &v23 - v3;
  v5 = *(a1 + 56);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = 1 << *(*(a1 + 56) + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v26 = *(a1 + 56);

  v14 = 0;
  while (v11)
  {
    v15 = v14;
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = *(v26 + 56);
    v19 = *(*(v26 + 48) + v17);
    v20 = sub_1B80C8E2C();
    (*(*(v20 - 8) + 16))(&v4[*(v24 + 48)], v18 + *(*(v20 - 8) + 72) * v17, v20);
    *v4 = v19;
    sub_1B7FE8254(&qword_1EBA65F30, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v21 = sub_1B80C907C();
    result = sub_1B7FB86D4(v4, &qword_1EBA65DC0, &qword_1B80D2660);
    if ((v21 & 1) == 0)
    {
      v22 = 1;
LABEL_13:

      return v22;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      v22 = 0;
      goto LABEL_13;
    }

    v11 = *(v7 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7FE759C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Friend(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_1B7FE7BD0(a3 + v15 + v16 * v13, v12);
      v17 = a1(v12);
      if (v3)
      {
        sub_1B7FE7C34(v12);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_1B7FE8124(v12, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B8092B88(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1B8092B88((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_1B7FE8124(v24, v14 + v15 + v20 * v16);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_1B7FE7C34(v12);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_1B7FE77C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 48) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B7FE77E8, a4, 0);
}

uint64_t sub_1B7FE77E8()
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDE78);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "Framework trigger refreshClient since there's friendship expired", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v5 = *(v0 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F28, &qword_1B80D2658);
  v6 = swift_allocObject();
  *(v0 + 24) = v6;
  *(v6 + 16) = xmmword_1B80D1EB0;
  *(v6 + 32) = v5;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = sub_1B7FE7974;

  return sub_1B7FE8BC0(v6);
}

uint64_t sub_1B7FE7974(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = *(v3 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1B7FE7AD8, v5, 0);
  }

  else
  {

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_1B7FE7AD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7FE7B5C()
{
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1B7FE7BD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Friend(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7FE7C34(uint64_t a1)
{
  v2 = type metadata accessor for Friend(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1B7FE7C90(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_1B7FE7E10(v9, v7, a3, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v11 = swift_slowAlloc();
  v12 = sub_1B7FE8068(v11, v7, a3, v5);
  result = MEMORY[0x1B8CB8970](v11, -1, -1);
  if (!v3)
  {
    return v12;
  }

  return result;
}

uint64_t sub_1B7FE7E10(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, char *))
{
  v34 = a4;
  v28 = a2;
  v29 = a1;
  v37 = sub_1B80C8E2C();
  result = MEMORY[0x1EEE9AC00](v37);
  v35 = a3;
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v32 = v7 + 16;
  v33 = v7;
  v30 = 0;
  v31 = (v7 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v19 = v36;
    v20 = v37;
LABEL_11:
    v23 = v35[7];
    v38 = *(v35[6] + v18);
    (*(v33 + 16))(v19, v23 + *(v33 + 72) * v18, v20);
    v24 = v34(&v38, v19);
    v25 = v19;
    if (v4)
    {
      return (*v31)(v19, v20);
    }

    v26 = v24;
    result = (*v31)(v25, v20);
    if (v26)
    {
      *(v29 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
        return sub_1B8030500(v29, v28, v30, v35);
      }
    }
  }

  v21 = v9;
  v19 = v36;
  v20 = v37;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      return sub_1B8030500(v29, v28, v30, v35);
    }

    v22 = v11[v9];
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B7FE8068(void *result, uint64_t a2, void *a3, uint64_t (*a4)(char *, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1B7FE7E10(result, a2, a3, a4);

    return v8;
  }

  return result;
}