unint64_t sub_247D73C70()
{
  result = qword_27EE737D8;
  if (!qword_27EE737D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE737D8);
  }

  return result;
}

unint64_t sub_247D73CC4()
{
  result = qword_27EE737E0;
  if (!qword_27EE737E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE737E0);
  }

  return result;
}

unint64_t sub_247D73D18()
{
  result = qword_27EE737E8;
  if (!qword_27EE737E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE737E8);
  }

  return result;
}

unint64_t sub_247D73D6C()
{
  result = qword_27EE737F0;
  if (!qword_27EE737F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE737F0);
  }

  return result;
}

unint64_t sub_247D73DC0()
{
  result = qword_27EE737F8;
  if (!qword_27EE737F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE737F8);
  }

  return result;
}

unint64_t sub_247D73E74()
{
  result = qword_27EE73800;
  if (!qword_27EE73800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73800);
  }

  return result;
}

unint64_t sub_247D73EC8()
{
  result = qword_27EE73808;
  if (!qword_27EE73808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73808);
  }

  return result;
}

unint64_t sub_247D73F48()
{
  result = qword_27EE73810;
  if (!qword_27EE73810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73810);
  }

  return result;
}

unint64_t sub_247D73F9C()
{
  result = qword_27EE73818;
  if (!qword_27EE73818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73818);
  }

  return result;
}

uint64_t sub_247D7401C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 16) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_247D74058()
{
  result = qword_27EE73820;
  if (!qword_27EE73820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73820);
  }

  return result;
}

unint64_t sub_247D740AC()
{
  result = qword_27EE73828;
  if (!qword_27EE73828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73828);
  }

  return result;
}

unint64_t sub_247D74100()
{
  result = qword_27EE73838;
  if (!qword_27EE73838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73838);
  }

  return result;
}

unint64_t sub_247D74154()
{
  result = qword_27EE73850;
  if (!qword_27EE73850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73850);
  }

  return result;
}

unint64_t sub_247D741A8()
{
  result = qword_27EE73868;
  if (!qword_27EE73868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73868);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransferConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TransferConstants(_WORD *result, int a2, int a3)
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

unint64_t sub_247D74308()
{
  result = qword_27EE73878;
  if (!qword_27EE73878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73878);
  }

  return result;
}

unint64_t sub_247D74360()
{
  result = qword_27EE73880;
  if (!qword_27EE73880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73880);
  }

  return result;
}

unint64_t sub_247D743B8()
{
  result = qword_27EE73888;
  if (!qword_27EE73888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73888);
  }

  return result;
}

unint64_t sub_247D74410()
{
  result = qword_27EE73890;
  if (!qword_27EE73890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73890);
  }

  return result;
}

unint64_t sub_247D74468()
{
  result = qword_27EE73898;
  if (!qword_27EE73898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73898);
  }

  return result;
}

unint64_t sub_247D744C0()
{
  result = qword_27EE738A0;
  if (!qword_27EE738A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE738A0);
  }

  return result;
}

unint64_t sub_247D74518()
{
  result = qword_27EE738A8;
  if (!qword_27EE738A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE738A8);
  }

  return result;
}

unint64_t sub_247D74570()
{
  result = qword_27EE738B0;
  if (!qword_27EE738B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE738B0);
  }

  return result;
}

unint64_t sub_247D745C8()
{
  result = qword_27EE738B8;
  if (!qword_27EE738B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE738B8);
  }

  return result;
}

uint64_t sub_247D74640()
{
  MEMORY[0x24C1BA0A0](*v0, v0[1]);
  result = sub_247D7482C(v0);
  v2 = result;
  v4 = v3;
  v5 = v0[3];
  if (v5 >> 60 == 15)
  {
    v6 = 0xE300000000000000;
    v7 = 7104878;
LABEL_12:
    MEMORY[0x24C1BA0A0](v7, v6);

    sub_247DD304C();

    MEMORY[0x24C1BA0A0](0x3D68746170, 0xE500000000000000);

    MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
    MEMORY[0x24C1BA0A0](v2, v4);

    MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
    MEMORY[0x24C1BA0A0](0x7A69732D79646F62, 0xEA00000000003D65);

    MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
    return 0x5250545448776152;
  }

  v8 = v0[2];
  v9 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_11;
    }

    v12 = v8 + 16;
    v10 = *(v8 + 16);
    v11 = *(v12 + 8);
    v13 = __OFSUB__(v11, v10);
    v8 = v11 - v10;
    if (!v13)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v9)
  {
    goto LABEL_11;
  }

  if (!__OFSUB__(HIDWORD(v8), v8))
  {
LABEL_11:
    v7 = sub_247DD2CFC();
    v6 = v14;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_247D7482C(uint64_t a1)
{
  v15 = 0;
  v16 = 0xE000000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = &v15;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_247D8098C;
  *(v2 + 24) = v1;
  v13 = sub_247D809CC;
  v14 = v2;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_247D749D4;
  v12 = &block_descriptor_0;
  v3 = _Block_copy(&v9);

  nw_http_request_access_method();
  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v9 = 0x3D646F6874656DLL;
    v10 = 0xE700000000000000;
    v6 = v15;
    v7 = v16;

    MEMORY[0x24C1BA0A0](v6, v7);

    v8 = v9;

    return v8;
  }

  return result;
}

uint64_t sub_247D74A3C()
{
  v1 = sub_247DD20DC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  strcpy(v36, "http-status=");
  BYTE5(v36[1]) = 0;
  HIWORD(v36[1]) = -5120;
  LOWORD(v35) = *v0;
  v11 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v11);

  v13 = v36[0];
  v14 = v36[1];
  strcpy(v36, "body-size=");
  BYTE3(v36[1]) = 0;
  HIDWORD(v36[1]) = -369098752;
  v15 = *(v0 + 16);
  v34 = v13;
  if (v15 >> 60 != 15)
  {
    v18 = *(v0 + 8);
    v19 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v19 != 2)
      {
        v18 = 0;
        goto LABEL_13;
      }

      v22 = v18 + 16;
      v20 = *(v18 + 16);
      v21 = *(v22 + 8);
      v23 = __OFSUB__(v21, v20);
      v18 = v21 - v20;
      if (!v23)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v19)
    {
      v18 = BYTE6(v15);
LABEL_13:
      v35 = v18;
      v17 = sub_247DD2CFC();
      v16 = v24;
      goto LABEL_14;
    }

    v23 = __OFSUB__(HIDWORD(v18), v18);
    LODWORD(v18) = HIDWORD(v18) - v18;
    if (v23)
    {
      __break(1u);
      return result;
    }

    v18 = v18;
    goto LABEL_13;
  }

  v16 = 0xE300000000000000;
  v17 = 7104878;
LABEL_14:
  MEMORY[0x24C1BA0A0](v17, v16);

  v25 = v36[0];
  v26 = v36[1];
  v36[0] = 0x3D656C6966;
  v36[1] = 0xE500000000000000;
  v27 = type metadata accessor for RawHTTPResponse(0);
  sub_247D6BA6C(v0 + *(v27 + 24), v10, &unk_27EE73500, &unk_247DD4310);
  if ((*(v2 + 48))(v10, 1, v1) == 1)
  {
    v28 = 0xE300000000000000;
    v29 = 7104878;
  }

  else
  {
    (*(v2 + 32))(v7, v10, v1);
    (*(v2 + 16))(v5, v7, v1);
    v30 = sub_247DD2CFC();
    v28 = v31;
    (*(v2 + 8))(v7, v1);
    v29 = v30;
  }

  MEMORY[0x24C1BA0A0](v29, v28);

  v33 = v36[0];
  v32 = v36[1];
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  sub_247DD304C();

  v36[0] = 0xD000000000000010;
  v36[1] = 0x8000000247DD8F10;
  MEMORY[0x24C1BA0A0](v34, v14);

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](v25, v26);

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](v33, v32);

  MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
  return v36[0];
}

Cosmo::CosmoHttpConnection::State_optional __swiftcall CosmoHttpConnection.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_247DD312C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CosmoHttpConnection.State.rawValue.getter()
{
  v1 = 0x64656C65636E6163;
  if (*v0 != 1)
  {
    v1 = 0x64656C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7964616572;
  }
}

uint64_t sub_247D74EC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x64656C65636E6163;
  if (v2 != 1)
  {
    v4 = 0x64656C696166;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7964616572;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x64656C65636E6163;
  if (*a2 != 1)
  {
    v8 = 0x64656C696166;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7964616572;
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
    v11 = sub_247DD322C();
  }

  return v11 & 1;
}

uint64_t sub_247D74FBC()
{
  sub_247DD32BC();
  sub_247DD2D7C();

  return sub_247DD32EC();
}

uint64_t sub_247D75058(uint64_t a1)
{
  sub_247DD2D7C();
}

uint64_t sub_247D750E0(uint64_t a1)
{
  sub_247DD32BC();
  sub_247DD2D7C();

  return sub_247DD32EC();
}

void sub_247D75184(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x64656C65636E6163;
  if (v2 != 1)
  {
    v5 = 0x64656C696166;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7964616572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t CosmoHttpConnection.Configuration.receiveFileDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CosmoHttpConnection.Configuration(0) + 20);
  v4 = sub_247DD20DC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CosmoHttpConnection.Configuration.init(quicKeepAliveSeconds:receiveFileDirectory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for CosmoHttpConnection.Configuration(0) + 20);
  v6 = sub_247DD20DC();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_247D75304@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_247D83A78;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_247D6ACFC(v4);
}

uint64_t sub_247D75398(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_247D83A50;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_247D6ACFC(v3);
  return sub_247D6A24C(v8, v9);
}

uint64_t sub_247D75454()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_247D6ACFC(v1);
  return v1;
}

uint64_t sub_247D754A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_247D6A24C(v5, v6);
}

uint64_t CosmoHttpConnection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_id;
  v4 = sub_247DD225C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

_OWORD *sub_247D755C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v87 = a5;
  v84 = a4;
  v79 = a3;
  *&v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73970, &qword_247DD5260);
  v73 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v72 = v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73978, &qword_247DD5268);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = v65 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73980, &qword_247DD5270);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v66 = v65 - v12;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73988, &qword_247DD5278);
  v81 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v80 = v65 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73990, &qword_247DD5280);
  MEMORY[0x28223BE20](v14 - 8);
  *&v88 = v65 - v15;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73998, &qword_247DD5288);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v67 = v65 - v16;
  v86 = sub_247DD21EC();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v18 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_247DD2F6C();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_247DD2F3C();
  MEMORY[0x28223BE20](v20);
  v68 = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_247DD2A2C();
  MEMORY[0x28223BE20](v22 - 8);
  v23 = sub_247DD225C();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[4] = 0u;
  v5[5] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[1] = 0u;
  v27 = OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection;
  *(v5 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection) = 0;
  *(v5 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_awaitingFileTransfer) = 0;
  sub_247DD224C();
  v28 = v26;
  v29 = v87;
  (*(v24 + 32))(v5 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_id, v28, v23);
  v77 = a1;
  sub_247D81F30(a1, v5 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_config, type metadata accessor for CosmoHttpConnection.Configuration);
  v78 = a2;
  sub_247D81F30(a2, v5 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_descriptor, type metadata accessor for NetworkDescriptor);
  if (v29)
  {
    v30 = v29;
  }

  else
  {
    v65[1] = sub_247D6A0F4();
    v65[0] = &OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_httpRequestErrorCallback;
    sub_247DD2A1C();
    *&v92 = MEMORY[0x277D84F90];
    sub_247D83AA0(&unk_27EE73390, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE739B0, &unk_247DD3F70);
    sub_247D6AE30(&qword_27EE733A0, &unk_27EE739B0, &unk_247DD3F70, MEMORY[0x277D83970]);
    sub_247DD2FFC();
    (*(v70 + 104))(v69, *MEMORY[0x277D85260], v71);
    v30 = sub_247DD2F8C();
  }

  *(v5 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_queue) = v30;
  v31 = v29;
  sub_247DD21DC();
  sub_247DD21BC();
  v33 = v32;
  (*(v85 + 8))(v18, v86);
  v34 = v33 * 1000.0;
  v35 = v88;
  v36 = v89;
  if (COERCE__INT64(fabs(v33 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v34 <= -1.0)
  {
    goto LABEL_17;
  }

  if (v34 < 1.84467441e19)
  {
    v87 = v31;
    *(v5 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_epochMillisAtInit) = v34;
    *(v5 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_initiated) = v79 & 1;
    *(v5 + v27) = v84;

    sub_247DD263C();
    if (qword_27EE732F0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  swift_once();
LABEL_9:
  __swift_project_value_buffer(v36, qword_27EE74060);
  sub_247DD2E5C();

  sub_247D6AE30(&qword_27EE739C0, &qword_27EE73988, &qword_247DD5278, MEMORY[0x277D85AC0]);
  v37 = v80;
  v38 = v89;
  sub_247DD236C();
  sub_247DD238C();
  (*(v81 + 8))(v37, v38);

  v39 = v82;
  v40 = v83;
  v41 = (*(v82 + 48))(v35, 1, v83);
  v42 = v90;
  if (v41 == 1)
  {
    sub_247D6BAD4(v35, &qword_27EE73990, &qword_247DD5280);
    sub_247DD263C();
    if (qword_27EE732F8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v42, qword_27EE74078);
    sub_247DD2E5C();

    sub_247D6AE30(&qword_27EE739C8, &qword_27EE73970, &qword_247DD5260, MEMORY[0x277D85AC0]);
    v43 = v72;
    sub_247DD236C();
    v44 = v74;
    v45 = v90;
    sub_247DD238C();
    (*(v73 + 8))(v43, v45);

    v46 = v75;
    v47 = v44;
    v48 = v44;
    v49 = v76;
    if ((*(v75 + 48))(v47, 1, v76) == 1)
    {
      sub_247D6BAD4(v48, &qword_27EE73978, &qword_247DD5268);
      v50 = sub_247DD263C();
      v52 = v51;

      sub_247D7FD5C(v78, type metadata accessor for NetworkDescriptor);
      sub_247D7FD5C(v77, type metadata accessor for CosmoHttpConnection.Configuration);
    }

    else
    {
      v59 = v66;
      (*(v46 + 32))(v66, v48, v49);
      sub_247DD239C();

      v60 = MEMORY[0x24C1BA020](v95, v96, v97, v98);
      v62 = v61;

      *&v92 = v60;
      *(&v92 + 1) = v62;

      MEMORY[0x24C1BA0A0](0xD000000000000015, 0x8000000247DD9170);

      v52 = *(&v92 + 1);
      v50 = v92;
      sub_247D7FD5C(v78, type metadata accessor for NetworkDescriptor);
      sub_247D7FD5C(v77, type metadata accessor for CosmoHttpConnection.Configuration);
      (*(v46 + 8))(v59, v49);
    }
  }

  else
  {
    (*(v39 + 32))();
    sub_247DD239C();

    v88 = v99;
    v54 = v100;
    v53 = v101;
    v90 = v102;
    v55 = v104;
    v89 = v103;
    v56 = MEMORY[0x24C1BA020](v95, v96, v97, v98);
    v58 = v57;

    *&v92 = v56;
    *(&v92 + 1) = v58;

    MEMORY[0x24C1BA0A0](0xD000000000000018, 0x8000000247DD9190);

    v91 = v92;
    v92 = v88;
    v93 = v54;
    v94 = v53;
    sub_247D83AE8();
    sub_247DD2D9C();

    v92 = v91;

    MEMORY[0x24C1BA0A0](10272, 0xE200000000000000);

    v91 = v92;
    v92 = v90;
    v93 = v89;
    v94 = v55;
    sub_247DD2D9C();

    v92 = v91;

    MEMORY[0x24C1BA0A0](23849, 0xE200000000000000);

    v52 = *(&v92 + 1);
    v50 = v92;
    sub_247D7FD5C(v78, type metadata accessor for NetworkDescriptor);
    sub_247D7FD5C(v77, type metadata accessor for CosmoHttpConnection.Configuration);
    (*(v39 + 8))(v67, v40);
  }

  v63 = (v6 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_name);
  *v63 = v50;
  v63[1] = v52;
  return v6;
}

uint64_t sub_247D76600(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection))
  {

    v2 = sub_247D76840(v1);
    v4 = v3;
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v5 = sub_247DD23CC();
    __swift_project_value_buffer(v5, qword_27EE7B878);

    v6 = sub_247DD23AC();
    v7 = sub_247DD2F2C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_247D72868(v2, v4, &v12);
      _os_log_impl(&dword_247D56000, v6, v7, "Starting %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x24C1BAF60](v9, -1, -1);
      MEMORY[0x24C1BAF60](v8, -1, -1);
    }

    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v2;
    v11[4] = v4;

    sub_247D6ACFC(sub_247D83A0C);
    sub_247DD264C();

    sub_247DD269C();
  }

  return result;
}

uint64_t sub_247D76840(uint64_t a1)
{
  if (a1)
  {
    sub_247DD258C();
    v1 = sub_247DD321C();
    MEMORY[0x24C1BA0A0](v1);

    MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
    v3 = 4401184;
    v2 = 0xE300000000000000;
  }

  else
  {
    v3 = 0;
    v2 = 0xE000000000000000;
  }

  v4 = sub_247D88148();
  sub_247DD304C();

  MEMORY[0x24C1BA0A0](0x7473205054544820, 0xEC0000006D616572);
  MEMORY[0x24C1BA0A0](v3, v2);

  return v4;
}

void sub_247D7695C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v163 = a4;
  v159 = a3;
  v5 = sub_247DD249C();
  MEMORY[0x28223BE20](v5 - 8);
  v150 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73B60, &qword_247DD5250);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v154 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v146 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v151 = &v146 - v14;
  MEMORY[0x28223BE20](v13);
  v155 = &v146 - v15;
  v16 = sub_247DD294C();
  v164 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v161 = &v146 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v152 = &v146 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v158 = &v146 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v146 - v27;
  MEMORY[0x28223BE20](v26);
  v160 = (&v146 - v29);
  v149 = sub_247DD280C();
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v147 = (&v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v157 = type metadata accessor for NetworkDescriptor(0);
  v31 = MEMORY[0x28223BE20](v157);
  v153 = &v146 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v156 = &v146 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v146 - v35;
  v37 = sub_247DD268C();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v146 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  (*(v38 + 16))(v40, a1, v37);
  v41 = (*(v38 + 88))(v40, v37);
  if (v41 == *MEMORY[0x277CD8DE8])
  {
    (*(v38 + 96))(v40, v37);
    v42 = v164;
    v43 = v161;
    v160 = *(v164 + 32);
    v160(v161, v40, v16);
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v44 = sub_247DD23CC();
    __swift_project_value_buffer(v44, qword_27EE7B878);
    v45 = *(v42 + 16);
    v45(v19, v43, v16);
    v46 = v163;

    v47 = sub_247DD23AC();
    v48 = sub_247DD2F2C();

    if (os_log_type_enabled(v47, v48))
    {
      LODWORD(v157) = v48;
      v49 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v165[0] = v156;
      *v49 = 136315394;
      *(v49 + 4) = sub_247D72868(v159, v46, v165);
      *(v49 + 12) = 2080;
      v45(v12, v19, v16);
      (*(v42 + 56))(v12, 0, 1, v16);
      v50 = v154;
      sub_247D6BA6C(v12, v154, &unk_27EE73B60, &qword_247DD5250);
      if ((*(v42 + 48))(v50, 1, v16) == 1)
      {
        v51 = 7104878;
        v52 = 0xE300000000000000;
      }

      else
      {
        v77 = v50;
        v78 = v158;
        v160(v158, v77, v16);
        v45(v152, v78, v16);
        v51 = sub_247DD2CFC();
        v52 = v79;
        (*(v42 + 8))(v78, v16);
      }

      sub_247D6BAD4(v12, &unk_27EE73B60, &qword_247DD5250);
      v69 = *(v42 + 8);
      v69(v19, v16);
      v80 = sub_247D72868(v51, v52, v165);

      *(v49 + 14) = v80;
      _os_log_impl(&dword_247D56000, v47, v157, "%s in waiting state, error=%s", v49, 0x16u);
      v81 = v156;
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v81, -1, -1);
      MEMORY[0x24C1BAF60](v49, -1, -1);
    }

    else
    {

      v69 = *(v42 + 8);
      v69(v19, v16);
    }

    sub_247D781D4();

    v69(v161, v16);
    return;
  }

  if (v41 == *MEMORY[0x277CD8DE0])
  {
    (*(v38 + 96))(v40, v37);
    v53 = v164;
    v54 = v160;
    v55 = v16;
    v161 = *(v164 + 32);
    (v161)(v160, v40, v16);
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v56 = sub_247DD23CC();
    __swift_project_value_buffer(v56, qword_27EE7B878);
    v57 = *(v53 + 16);
    v57(v28, v54, v55);
    v58 = v163;

    v59 = sub_247DD23AC();
    v60 = sub_247DD2F0C();

    v61 = os_log_type_enabled(v59, v60);
    v62 = Strong;
    if (v61)
    {
      LODWORD(v154) = v60;
      v63 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v165[0] = v149;
      *v63 = 136315394;
      *(v63 + 4) = sub_247D72868(v159, v58, v165);
      *(v63 + 12) = 2080;
      v64 = v155;
      v57(v155, v28, v55);
      (*(v53 + 56))(v64, 0, 1, v55);
      v65 = v64;
      v66 = v151;
      sub_247D6BA6C(v65, v151, &unk_27EE73B60, &qword_247DD5250);
      if ((*(v53 + 48))(v66, 1, v55) == 1)
      {
        v67 = 7104878;
        v68 = 0xE300000000000000;
      }

      else
      {
        v85 = v66;
        v86 = v158;
        (v161)(v158, v85, v55);
        v57(v152, v86, v55);
        v67 = sub_247DD2CFC();
        v68 = v87;
        (*(v53 + 8))(v86, v55);
      }

      sub_247D6BAD4(v155, &unk_27EE73B60, &qword_247DD5250);
      v82 = *(v53 + 8);
      v82(v28, v55);
      v88 = sub_247D72868(v67, v68, v165);

      *(v63 + 14) = v88;
      _os_log_impl(&dword_247D56000, v59, v154, "%s failed, error=%s", v63, 0x16u);
      v89 = v149;
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v89, -1, -1);
      MEMORY[0x24C1BAF60](v63, -1, -1);
    }

    else
    {

      v82 = *(v53 + 8);
      v82(v28, v55);
    }

    sub_247D781D4();
    v90 = OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_descriptor;
    v91 = v156;
    sub_247D81F30(v62 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_descriptor, v156, type metadata accessor for NetworkDescriptor);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_247D7FD5C(v91, type metadata accessor for NetworkDescriptor);
    if (EnumCaseMultiPayload == 2 && *(v62 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_initiated) == 1 && (v93 = v158, *v158 = 53, (*(v164 + 104))(v93, *MEMORY[0x277CD8FB0], v55), v94 = MEMORY[0x24C1B9C30](v160, v93), v82(v93, v55), (v94 & 1) != 0))
    {
      sub_247D873E8(v150);
      sub_247D879F4();
      sub_247DD26FC();
      swift_allocObject();
      *(v62 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection) = sub_247DD265C();

      sub_247D765E0();

      v82(v160, v55);
    }

    else
    {
      v95 = v153;
      sub_247D81F30(v62 + v90, v153, type metadata accessor for NetworkDescriptor);
      v96 = swift_getEnumCaseMultiPayload();
      sub_247D7FD5C(v95, type metadata accessor for NetworkDescriptor);
      if (v96 == 2 && ((v97 = v158, *v158 = 54, v98 = *MEMORY[0x277CD8FB0], v99 = *(v164 + 104), v99(v97, v98, v55), v100 = MEMORY[0x24C1B9C30](v160, v97), v82(v97, v55), (v100 & 1) != 0) || (v101 = v158, *v158 = 96, v99(v101, v98, v55), v102 = MEMORY[0x24C1B9C30](v160, v101), v82(v101, v55), (v102 & 1) != 0)))
      {
        swift_beginAccess();
        v103 = *(v62 + 16);
        if (v103)
        {
          v104 = *(v62 + 24);
          v166 = 1;

          v103(&v166);
          sub_247D6A24C(v103, v104);
        }

        v82(v160, v55);
      }

      else
      {
        swift_beginAccess();
        v105 = *(v62 + 16);
        if (v105)
        {
          v106 = *(v62 + 24);
          v166 = 2;

          v105(&v166);
          sub_247D6A24C(v105, v106);
        }

        v82(v160, v55);
      }
    }

    return;
  }

  if (v41 == *MEMORY[0x277CD8DD8])
  {
    v70 = v163;
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v71 = sub_247DD23CC();
    __swift_project_value_buffer(v71, qword_27EE7B878);

    v72 = sub_247DD23AC();
    v73 = sub_247DD2F2C();

    if (!os_log_type_enabled(v72, v73))
    {
      goto LABEL_30;
    }

    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v165[0] = v75;
    *v74 = 136315138;
    *(v74 + 4) = sub_247D72868(v159, v70, v165);
    v76 = "%s in setup state";
LABEL_29:
    _os_log_impl(&dword_247D56000, v72, v73, v76, v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    MEMORY[0x24C1BAF60](v75, -1, -1);
    MEMORY[0x24C1BAF60](v74, -1, -1);
LABEL_30:

    return;
  }

  v83 = v163;
  if (v41 == *MEMORY[0x277CD8DF8])
  {
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v84 = sub_247DD23CC();
    __swift_project_value_buffer(v84, qword_27EE7B878);

    v72 = sub_247DD23AC();
    v73 = sub_247DD2F2C();

    if (!os_log_type_enabled(v72, v73))
    {
      goto LABEL_30;
    }

    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v165[0] = v75;
    *v74 = 136315138;
    *(v74 + 4) = sub_247D72868(v159, v83, v165);
    v76 = "%s in preparing state";
    goto LABEL_29;
  }

  if (v41 == *MEMORY[0x277CD8DD0])
  {
    v107 = Strong;
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v108 = sub_247DD23CC();
    __swift_project_value_buffer(v108, qword_27EE7B878);

    v109 = sub_247DD23AC();
    v110 = sub_247DD2F2C();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v165[0] = v112;
      *v111 = 136315138;
      *(v111 + 4) = sub_247D72868(v159, v83, v165);
      _os_log_impl(&dword_247D56000, v109, v110, "%s in ready state", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v112);
      MEMORY[0x24C1BAF60](v112, -1, -1);
      MEMORY[0x24C1BAF60](v111, -1, -1);
    }

    sub_247D81F30(v107 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_descriptor, v36, type metadata accessor for NetworkDescriptor);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_247D6A1F8(*(v36 + 1), *(v36 + 2));
      sub_247D6A1F8(*(v36 + 3), *(v36 + 4));
      swift_unknownObjectRelease();
      v113 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348) + 96);
      v114 = sub_247DD225C();
      (*(*(v114 - 8) + 8))(&v36[v113], v114);
      if (!*(v107 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection))
      {
        goto LABEL_78;
      }

      sub_247DD285C();

      sub_247DD27FC();
      v115 = sub_247DD26DC();

      if (!v115)
      {
        goto LABEL_78;
      }

      sub_247DD284C();
      if (swift_dynamicCastClass())
      {

        v116 = sub_247DD23AC();
        v117 = sub_247DD2EEC();

        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v165[0] = v119;
          *v118 = 136315394;
          *(v118 + 4) = sub_247D72868(v159, v163, v165);
          *(v118 + 12) = 2048;
          *(v118 + 14) = *(v107 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_config);

          _os_log_impl(&dword_247D56000, v116, v117, "%s setting keep-alive to %ld seconds", v118, 0x16u);
          __swift_destroy_boxed_opaque_existential_0Tm(v119);
          v120 = v119;
          v83 = v163;
          MEMORY[0x24C1BAF60](v120, -1, -1);
          MEMORY[0x24C1BAF60](v118, -1, -1);
        }

        else
        {
        }

        v135 = v147;
        *v147 = *(v107 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_config);
        (*(v148 + 104))(v135, *MEMORY[0x277CD8EA0], v149);
        sub_247DD283C();
        if ((*(v107 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_initiated) & 1) == 0)
        {
          v136 = sub_247DD281C();
          if (__OFADD__(*v137, 2))
          {
            __break(1u);
            return;
          }

          *v137 += 2;
          v136(v165, 0);

          v138 = sub_247DD23AC();
          v139 = sub_247DD2EEC();

          if (!os_log_type_enabled(v138, v139))
          {

            goto LABEL_78;
          }

          v140 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v142 = v83;
          v143 = v141;
          v165[0] = v141;
          *v140 = 136315394;
          *(v140 + 4) = sub_247D72868(v159, v142, v165);
          *(v140 + 12) = 2048;
          *(v140 + 14) = sub_247DD282C();

          _os_log_impl(&dword_247D56000, v138, v139, "%s set localMaxStreamsBidirectional to %ld", v140, 0x16u);
          __swift_destroy_boxed_opaque_existential_0Tm(v143);
          MEMORY[0x24C1BAF60](v143, -1, -1);
          MEMORY[0x24C1BAF60](v140, -1, -1);
        }
      }
    }

    else
    {
      sub_247D7FD5C(v36, type metadata accessor for NetworkDescriptor);
    }

LABEL_78:
    swift_beginAccess();
    v144 = *(v107 + 16);
    if (v144)
    {
      v145 = *(v107 + 24);
      v166 = 0;

      v144(&v166);
      sub_247D6A24C(v144, v145);
    }

    if ((*(v107 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_initiated) & 1) == 0)
    {
      sub_247D7AD70();
    }

LABEL_65:

    return;
  }

  if (v41 == *MEMORY[0x277CD8DF0])
  {
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v121 = sub_247DD23CC();
    __swift_project_value_buffer(v121, qword_27EE7B878);

    v122 = sub_247DD23AC();
    v123 = sub_247DD2F2C();

    v124 = os_log_type_enabled(v122, v123);
    v125 = Strong;
    if (v124)
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v165[0] = v127;
      *v126 = 136315138;
      *(v126 + 4) = sub_247D72868(v159, v83, v165);
      _os_log_impl(&dword_247D56000, v122, v123, "%s in cancelled state", v126, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v127);
      MEMORY[0x24C1BAF60](v127, -1, -1);
      MEMORY[0x24C1BAF60](v126, -1, -1);
    }

    swift_beginAccess();
    v128 = *(v125 + 16);
    if (v128)
    {
      v129 = *(v125 + 24);
      v166 = 1;

      v128(&v166);
      sub_247D6A24C(v128, v129);
    }

    goto LABEL_65;
  }

  if (qword_27EE73260 != -1)
  {
    swift_once();
  }

  v130 = sub_247DD23CC();
  __swift_project_value_buffer(v130, qword_27EE7B878);

  v131 = sub_247DD23AC();
  v132 = sub_247DD2F0C();

  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v165[0] = v134;
    *v133 = 136315138;
    *(v133 + 4) = sub_247D72868(v159, v83, v165);
    _os_log_impl(&dword_247D56000, v131, v132, "%s in unknown state", v133, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v134);
    MEMORY[0x24C1BAF60](v134, -1, -1);
    MEMORY[0x24C1BAF60](v133, -1, -1);
  }

  (*(v38 + 8))(v40, v37);
}

uint64_t sub_247D781F4(uint64_t a1, uint64_t a2)
{
  v5 = sub_247DD2A0C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_247DD2A2C();
  v9 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_queue);
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v16 = MEMORY[0x277D84F90];
  sub_247D83AA0(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0, MEMORY[0x277D83970]);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v11, v8, v12);
  _Block_release(v12);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v15);
}

uint64_t sub_247D784A0(uint64_t a1)
{
  v2 = sub_247DD268C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v29 - v8;
  v10 = OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection;
  if (*(a1 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection))
  {
    swift_beginAccess();
    v11 = *(a1 + 16);
    if (v11)
    {
      v30 = v10;
      v12 = *(a1 + 24);

      sub_247D6ACFC(v11);
      sub_247DD26AC();
      (*(v3 + 104))(v6, *MEMORY[0x277CD8DD8], v2);
      v13 = MEMORY[0x24C1B9970](v9, v6);
      v14 = *(v3 + 8);
      v14(v6, v2);
      v14(v9, v2);
      if (v13)
      {
        v29 = v11;
        v15 = v12;
        if (qword_27EE73260 != -1)
        {
          swift_once();
        }

        v16 = sub_247DD23CC();
        __swift_project_value_buffer(v16, qword_27EE7B878);

        v17 = sub_247DD23AC();
        v18 = sub_247DD2F2C();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v31 = v20;
          *v19 = 136315138;

          v22 = sub_247D76840(v21);
          v24 = v23;

          v25 = sub_247D72868(v22, v24, &v31);

          *(v19 + 4) = v25;
          _os_log_impl(&dword_247D56000, v17, v18, "%s, canceling (never started)", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v20);
          MEMORY[0x24C1BAF60](v20, -1, -1);
          MEMORY[0x24C1BAF60](v19, -1, -1);
        }

        LOBYTE(v31) = 1;
        v26 = v29;
        v29(&v31);
        v27 = v26;
        v28 = v15;
      }

      else
      {
        v27 = v11;
        v28 = v12;
      }

      sub_247D6A24C(v27, v28);
      v10 = v30;
    }

    else
    {
    }

    sub_247DD26BC();

    *(a1 + v10) = 0;
  }

  return result;
}

void sub_247D787E4(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, void *a4)
{
  v8 = sub_247DD21EC();
  v103 = *(v8 - 8);
  v104 = v8;
  MEMORY[0x28223BE20](v8);
  v102 = v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v92 - v11;
  v13 = sub_247DD20DC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v107 = v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v16;
  MEMORY[0x28223BE20](v15);
  v109 = v92 - v17;
  v111 = sub_247DD261C();
  v18 = *(v111 - 8);
  v19 = MEMORY[0x28223BE20](v111);
  MEMORY[0x28223BE20](v19);
  v23 = (v92 - v22);
  v110 = a1;
  v24 = *(a1 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection);
  if (v24)
  {
    v98 = v21;
    v99 = v20;
    v105 = v14;
    v106 = v13;
    sub_247D6B5C0(a4, v113);
    v25 = swift_retain_n();
    v26 = v110;
    v27 = sub_247D76840(v25);
    v29 = v28;
    LODWORD(v26) = *(v26 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_initiated);
    v30 = swift_allocObject();
    v100 = v26;
    *(v30 + 16) = v26;
    *(v30 + 24) = v27;
    *(v30 + 32) = v29;
    *(v30 + 40) = v24;
    *(v30 + 48) = a2;
    *(v30 + 56) = a3;
    *v23 = sub_247D8188C;
    v23[1] = v30;
    v31 = *MEMORY[0x277CD8DB0];
    v32 = v18[13];
    v108 = v23;
    v32(v23, v31, v111);

    sub_247D6ACFC(a2);
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v33 = sub_247DD23CC();
    __swift_project_value_buffer(v33, qword_27EE7B878);

    v34 = sub_247DD23AC();
    v35 = sub_247DD2F2C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v97 = v18;
      v38 = v37;
      v112 = v37;
      *v36 = 136315394;
      v39 = sub_247D72868(v27, v29, &v112);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2080;
      v40 = sub_247D79350(v113);
      v42 = sub_247D72868(v40, v41, &v112);

      *(v36 + 14) = v42;
      _os_log_impl(&dword_247D56000, v34, v35, "%s sending message=%s", v36, 0x16u);
      swift_arrayDestroy();
      v18 = v97;
      MEMORY[0x24C1BAF60](v38, -1, -1);
      MEMORY[0x24C1BAF60](v36, -1, -1);
    }

    else
    {
    }

    v50 = nw_content_context_create("context");
    v51 = a4[3];
    v52 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v51);
    v53 = (*(v52 + 8))(v51, v52);
    nw_content_context_set_metadata_for_protocol(v50, v53);
    swift_unknownObjectRelease();
    v54 = a4[3];
    v55 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v54);
    (*(v55 + 24))(v54, v55);
    v57 = v105;
    v56 = v106;
    if ((*(v105 + 48))(v12, 1, v106) == 1)
    {

      sub_247D6BAD4(v12, &unk_27EE73500, &unk_247DD4310);
      sub_247DD260C();
      swift_allocObject();
      swift_unknownObjectRetain();
      sub_247DD25DC();
      v58 = a4[3];
      v59 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v58);
      v60 = (*(v59 + 16))(v58, v59);
      v62 = v61;
      sub_247DD266C();
      sub_247D6C0AC(v60, v62);

      if (v100)
      {
LABEL_17:
        v63 = a4[3];
        v64 = a4[4];
        __swift_project_boxed_opaque_existential_1(a4, v63);
        if ((*(v64 + 32))(v63, v64))
        {
          *(v110 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_awaitingFileTransfer) = 1;
        }

        sub_247D7AD70();

        swift_unknownObjectRelease();
        goto LABEL_28;
      }

LABEL_27:
      swift_unknownObjectRelease();

LABEL_28:
      (v18[1])(v108, v111);
      __swift_destroy_boxed_opaque_existential_0Tm(v113);
      return;
    }

    v97 = *(v57 + 32);
    (v97)(v109, v12, v56);
    nw_content_context_set_is_final(v50, 0);
    sub_247DD260C();
    swift_allocObject();
    swift_unknownObjectRetain();
    v65 = sub_247DD25DC();
    v66 = URL.fileSize.getter(v65);
    if (v67)
    {
      v68 = 1;
    }

    else
    {
      v68 = v66;
    }

    v96 = sub_247D76840(v24);
    v95 = v69;

    v70 = v102;
    sub_247DD21CC();
    sub_247DD21BC();
    v72 = v71;
    (v103[1].isa)(v70, v104);
    v73 = v72 * 1000.0;
    if (COERCE__INT64(fabs(v72 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v73 > -1.0)
    {
      if (v73 < 1.84467441e19)
      {
        v74 = v73;
        v93 = v73;
        v94 = swift_allocObject();
        *(v94 + 16) = v74;
        v75 = *(v57 + 16);
        v102 = v65;
        v75(v107, v109, v56);
        (v18[2])(v99, v108, v111);
        v76 = *(v57 + 80);
        v103 = v50;
        v77 = (v76 + 32) & ~v76;
        v78 = v101 + v77 + 7;
        v101 = v68;
        v79 = v78 & 0xFFFFFFFFFFFFFFF8;
        v80 = ((v78 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        v92[1] = v57 + 32;
        v81 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
        v82 = *(v18 + 80);
        v104 = a4;
        v83 = (v82 + v81 + 8) & ~v82;
        v84 = v18;
        v85 = (v98 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
        v86 = swift_allocObject();
        v87 = v95;
        *(v86 + 16) = v96;
        *(v86 + 24) = v87;
        (v97)(v86 + v77, v107, v56);
        *(v86 + v79) = v93;
        v88 = (v86 + v80);
        v89 = v94;
        *v88 = sub_247D83B84;
        v88[1] = v89;
        *(v86 + v81) = v24;
        v90 = v86 + v83;
        a4 = v104;
        (v84[4])(v90, v99, v111);
        *(v86 + v85) = v101;
        v18 = v84;
        swift_retain_n();

        v91 = v109;
        sub_247DD26EC();

        (*(v105 + 8))(v91, v106);
        if (v100)
        {
          goto LABEL_17;
        }

        goto LABEL_27;
      }

LABEL_32:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_32;
  }

  if (qword_27EE73260 != -1)
  {
    swift_once();
  }

  v43 = sub_247DD23CC();
  __swift_project_value_buffer(v43, qword_27EE7B878);
  v44 = sub_247DD23AC();
  v45 = sub_247DD2F0C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v113[0] = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_247D72868(0xD00000000000001ELL, 0x8000000247DD8F70, v113);
    _os_log_impl(&dword_247D56000, v44, v45, "%s connection is nil", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    MEMORY[0x24C1BAF60](v47, -1, -1);
    MEMORY[0x24C1BAF60](v46, -1, -1);
  }

  if (a2)
  {
    sub_247D6AFB0();
    v48 = swift_allocError();
    *v49 = 0xD000000000000030;
    *(v49 + 8) = 0x8000000247DD8F30;
    *(v49 + 16) = 1;
    a2(v48, 1);
  }
}

unint64_t sub_247D79350(void *a1)
{
  v2 = sub_247DD20DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  v50 = 0x7A69732D79646F62;
  v51 = 0xEA00000000003D65;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(v15 + 16))(v14, v15);
  if (v17 >> 60 != 15)
  {
    v20 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v20 != 2)
      {
        sub_247D6C0AC(v16, v17);
        v22 = 0;
        goto LABEL_13;
      }

      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      v16 = sub_247D6C0AC(v16, v17);
      v22 = v23 - v24;
      if (!__OFSUB__(v23, v24))
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v20)
    {
      v21 = BYTE6(v17);
      sub_247D6C0AC(v16, v17);
      v22 = v21;
LABEL_13:
      v49 = v22;
      v19 = sub_247DD2CFC();
      v18 = v28;
      goto LABEL_14;
    }

    v25 = HIDWORD(v16);
    v26 = v16;
    result = sub_247D6C0AC(v16, v17);
    LODWORD(v22) = v25 - v26;
    if (__OFSUB__(v25, v26))
    {
      __break(1u);
      return result;
    }

    v22 = v22;
    goto LABEL_13;
  }

  v18 = 0xE300000000000000;
  v19 = 7104878;
LABEL_14:
  MEMORY[0x24C1BA0A0](v19, v18);

  v29 = v51;
  v48 = v50;
  v50 = 0x3D656C6966;
  v51 = 0xE500000000000000;
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  (*(v31 + 24))(v30, v31);
  sub_247D6BA6C(v13, v11, &unk_27EE73500, &unk_247DD4310);
  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    v32 = 0xE300000000000000;
    v33 = 7104878;
  }

  else
  {
    v34 = v47;
    (*(v3 + 32))(v47, v11, v2);
    (*(v3 + 16))(v6, v34, v2);
    v33 = sub_247DD2CFC();
    v32 = v35;
    (*(v3 + 8))(v34, v2);
  }

  sub_247D6BAD4(v13, &unk_27EE73500, &unk_247DD4310);
  MEMORY[0x24C1BA0A0](v33, v32);

  v37 = v50;
  v36 = v51;
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_247DD304C();

  v50 = 0xD000000000000016;
  v51 = 0x8000000247DD8FA0;
  v38 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  v40 = (*(v39 + 32))(v38, v39);
  v41 = (v40 & 1) == 0;
  if (v40)
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (v41)
  {
    v43 = 0xE500000000000000;
  }

  else
  {
    v43 = 0xE400000000000000;
  }

  MEMORY[0x24C1BA0A0](v42, v43);

  v45 = v50;
  v44 = v51;
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_247DD304C();

  v50 = 0xD000000000000011;
  v51 = 0x8000000247DD8FC0;
  MEMORY[0x24C1BA0A0](v48, v29);

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](v37, v36);

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](v45, v44);

  MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
  return v50;
}

uint64_t sub_247D79818(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t), uint64_t a7)
{
  v70 = a7;
  v71 = a6;
  v68 = a5;
  v65 = a4;
  v63 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73B60, &qword_247DD5250);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v69 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v64 = &v56 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v66 = &v56 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - v16;
  v18 = sub_247DD294C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v67 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v62 = &v56 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v56 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v56 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v56 - v30;
  v32 = *(v19 + 48);
  v72 = a1;
  result = v32(a1, 1, v18);
  if (result != 1 || (a2 & 1) == 0)
  {
    sub_247D6BA6C(v72, v17, &unk_27EE73B60, &qword_247DD5250);
    if (v32(v17, 1, v18) == 1)
    {
      sub_247D6BAD4(v17, &unk_27EE73B60, &qword_247DD5250);
    }

    else
    {
      v57 = *(v19 + 32);
      v58 = v19 + 32;
      v57(v31, v17, v18);
      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v34 = sub_247DD23CC();
      __swift_project_value_buffer(v34, qword_27EE7B878);
      v60 = *(v19 + 16);
      v60(v29, v31, v18);
      v61 = v31;
      v35 = v65;

      v36 = sub_247DD23AC();
      v37 = sub_247DD2F0C();

      v59 = v37;
      if (os_log_type_enabled(v36, v37))
      {
        v56 = v36;
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v73 = v39;
        *v38 = 136315394;
        *(v38 + 4) = sub_247D72868(v63, v35, &v73);
        *(v38 + 12) = 2080;
        v40 = v66;
        v60(v66, v29, v18);
        (*(v19 + 56))(v40, 0, 1, v18);
        v41 = v40;
        v42 = v64;
        sub_247D6BA6C(v41, v64, &unk_27EE73B60, &qword_247DD5250);
        if (v32(v42, 1, v18) == 1)
        {
          v43 = 0xE300000000000000;
          v65 = 7104878;
        }

        else
        {
          v57(v26, v42, v18);
          v60(v62, v26, v18);
          v65 = sub_247DD2CFC();
          v43 = v45;
          (*(v19 + 8))(v26, v18);
        }

        sub_247D6BAD4(v66, &unk_27EE73B60, &qword_247DD5250);
        v46 = *(v19 + 8);
        v46(v29, v18);
        v47 = sub_247D72868(v65, v43, &v73);

        *(v38 + 14) = v47;
        v48 = v56;
        _os_log_impl(&dword_247D56000, v56, v59, "%s encountered error=%s while sending", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v39, -1, -1);
        MEMORY[0x24C1BAF60](v38, -1, -1);

        v46(v61, v18);
      }

      else
      {

        v44 = *(v19 + 8);
        v44(v29, v18);
        v44(v61, v18);
      }
    }

    result = sub_247DD26BC();
  }

  v49 = v71;
  if (v71)
  {
    v50 = v69;
    sub_247D6BA6C(v72, v69, &unk_27EE73B60, &qword_247DD5250);
    if (v32(v50, 1, v18) == 1)
    {
      v51 = v70;

      sub_247D6BAD4(v50, &unk_27EE73B60, &qword_247DD5250);
      v49(0, 0);
      return sub_247D6A24C(v49, v51);
    }

    else
    {
      v52 = v67;
      (*(v19 + 32))(v67, v50, v18);
      sub_247D83AA0(&qword_27EE73948, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      v53 = swift_allocError();
      (*(v19 + 16))(v54, v52, v18);
      v55 = v70;

      v49(v53, 1);
      sub_247D6A24C(v49, v55);

      return (*(v19 + 8))(v52, v18);
    }
  }

  return result;
}

unint64_t sub_247D79F50(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t (*a8)(void), uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v126 = a7;
  v127 = a8;
  v132 = a6;
  v133 = a4;
  LODWORD(v134) = a2;
  v137 = a9;
  v138 = a5;
  v14 = sub_247DD21EC();
  v129 = *(v14 - 8);
  v130 = v14;
  MEMORY[0x28223BE20](v14);
  v128 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_247DD20DC();
  v136 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v135 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v131 = &v111 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73B60, &qword_247DD5250);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v123 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v124 = &v111 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v111 - v25;
  v27 = sub_247DD294C();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v121 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v122 = &v111 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v111 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v111 - v36;
  sub_247D6BA6C(a3, v26, &unk_27EE73B60, &qword_247DD5250);
  v38 = v28[6];
  if (v38(v26, 1, v27) == 1)
  {
    sub_247D6BAD4(v26, &unk_27EE73B60, &qword_247DD5250);
    v39 = v138;
  }

  else
  {
    v116 = v38;
    v125 = v16;
    v120 = a1;
    v40 = v28[4];
    v114 = v28 + 4;
    v113 = v40;
    v40(v37, v26, v27);
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v41 = sub_247DD23CC();
    __swift_project_value_buffer(v41, qword_27EE7B878);
    v115 = v28[2];
    v115(v35, v37, v27);
    v42 = v136;
    v43 = *(v136 + 16);
    v118 = v35;
    v119 = v37;
    v44 = v131;
    v45 = v125;
    v43(v131, v132, v125);
    v39 = v138;

    v46 = sub_247DD23AC();
    v47 = v28;
    v48 = sub_247DD2F0C();

    v117 = v48;
    if (os_log_type_enabled(v46, v48))
    {
      v112 = v46;
      v49 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v139[0] = v111;
      *v49 = 136315650;
      *(v49 + 4) = sub_247D72868(v133, v39, v139);
      *(v49 + 12) = 2080;
      v50 = v124;
      v51 = v118;
      v52 = v115;
      (v115)(v124);
      (v47[7])(v50, 0, 1, v27);
      v53 = v123;
      sub_247D6BA6C(v50, v123, &unk_27EE73B60, &qword_247DD5250);
      v54 = v47;
      if (v116(v53, 1, v27) == 1)
      {
        v55 = 0xE300000000000000;
        v56 = 7104878;
      }

      else
      {
        v58 = v122;
        v113(v122, v53, v27);
        v52(v121, v58, v27);
        v56 = sub_247DD2CFC();
        v55 = v59;
        (v54[1])(v58, v27);
      }

      a1 = v120;
      v60 = v131;
      sub_247D6BAD4(v50, &unk_27EE73B60, &qword_247DD5250);
      v61 = v54[1];
      v61(v51, v27);
      v62 = sub_247D72868(v56, v55, v139);

      *(v49 + 14) = v62;
      *(v49 + 22) = 2080;
      sub_247D83AA0(&qword_27EE735C0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v63 = v125;
      v64 = sub_247DD321C();
      v66 = v65;
      (*(v136 + 8))(v60, v63);
      v67 = sub_247D72868(v64, v66, v139);

      *(v49 + 24) = v67;
      v68 = v112;
      _os_log_impl(&dword_247D56000, v112, v117, "%s encountered error=%s while writing file=%s", v49, 0x20u);
      v69 = v111;
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v69, -1, -1);
      MEMORY[0x24C1BAF60](v49, -1, -1);

      v61(v119, v27);
      v16 = v63;
      v39 = v138;
    }

    else
    {

      (*(v42 + 8))(v44, v45);
      v57 = v47[1];
      v57(v118, v27);
      v57(v119, v27);
      a1 = v120;
      v16 = v45;
    }
  }

  v70 = v135;
  if ((v134 & 1) == 0)
  {
    if (qword_27EE73260 == -1)
    {
LABEL_20:
      v94 = sub_247DD23CC();
      __swift_project_value_buffer(v94, qword_27EE7B878);

      v95 = sub_247DD23AC();
      v96 = sub_247DD2EEC();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v139[0] = v98;
        *v97 = 136316162;
        *(v97 + 4) = sub_247D72868(v133, v39, v139);
        *(v97 + 12) = 2048;
        *(v97 + 14) = a1 / a12 * 100.0;
        *(v97 + 22) = 2048;
        *(v97 + 24) = a1;
        *(v97 + 32) = 2048;
        *(v97 + 34) = a12;
        *(v97 + 42) = 2080;
        v99 = v127();
        v101 = sub_247D72868(v99, v100, v139);

        *(v97 + 44) = v101;
        _os_log_impl(&dword_247D56000, v95, v96, "%s wrote %f%%, %ld/%llu bytes, %s elapsed", v97, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v98, -1, -1);
        MEMORY[0x24C1BAF60](v97, -1, -1);
      }

      return 1;
    }

LABEL_32:
    swift_once();
    goto LABEL_20;
  }

  v71 = v128;
  sub_247DD21CC();
  sub_247DD21BC();
  v73 = v72;
  (*(v129 + 8))(v71, v130);
  v74 = v73 * 1000.0;
  if (COERCE__INT64(fabs(v73 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v74 <= -1.0)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v74 >= 1.84467441e19)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v74 >= v126)
  {
    v134 = v74 - v126;
    if (qword_27EE73260 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  swift_once();
LABEL_17:
  v75 = sub_247DD23CC();
  v76 = __swift_project_value_buffer(v75, qword_27EE7B878);
  v77 = v136;
  (*(v136 + 16))(v70, v132, v16);

  v78 = sub_247DD23AC();
  v79 = sub_247DD2F2C();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v132 = v76;
    v81 = v77;
    v82 = v80;
    v83 = swift_slowAlloc();
    v139[0] = v83;
    *v82 = 136315906;
    *(v82 + 4) = sub_247D72868(v133, v39, v139);
    *(v82 + 12) = 2080;
    sub_247D83AA0(&qword_27EE735C0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v84 = sub_247DD321C();
    v85 = v70;
    v86 = a1;
    v88 = v87;
    (*(v81 + 8))(v85, v16);
    v89 = sub_247D72868(v84, v88, v139);

    *(v82 + 14) = v89;
    *(v82 + 22) = 2080;
    v39 = v138;
    v91 = (v127)(v90);
    v93 = sub_247D72868(v91, v92, v139);

    *(v82 + 24) = v93;
    a1 = v86;
    *(v82 + 32) = 2048;
    *(v82 + 34) = v86;
    _os_log_impl(&dword_247D56000, v78, v79, "%s finished sending file=%s after duration=%s with size=%ld", v82, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v83, -1, -1);
    MEMORY[0x24C1BAF60](v82, -1, -1);
  }

  else
  {

    (*(v77 + 8))(v70, v16);
  }

  v102 = sub_247DD23AC();
  v103 = sub_247DD2F2C();

  if (!os_log_type_enabled(v102, v103))
  {
    goto LABEL_29;
  }

  v104 = v134 / 1000.0;
  v105 = swift_slowAlloc();
  v106 = swift_slowAlloc();
  v139[0] = v106;
  *v105 = 136315394;
  result = sub_247D72868(v133, v39, v139);
  *(v105 + 4) = result;
  *(v105 + 12) = 2080;
  if (v104 == INFINITY)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v104 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v104 < 9.22337204e18)
  {
    v108 = sub_247D93E14(a1, v104);
    v110 = sub_247D72868(v108, v109, v139);

    *(v105 + 14) = v110;
    _os_log_impl(&dword_247D56000, v102, v103, "%s observed throughput of %s", v105, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v106, -1, -1);
    MEMORY[0x24C1BAF60](v105, -1, -1);
LABEL_29:

    sub_247DD260C();
    sub_247DD25BC();
    sub_247DD266C();

    return 1;
  }

LABEL_39:
  __break(1u);
  return result;
}

void sub_247D7AD70()
{
  v1 = sub_247DD2ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_247DD2ADC();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v7 = *(v0 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection);
  if (v7)
  {
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    swift_retain_n();

    sub_247DD26CC();

    return;
  }

  if (qword_27EE73260 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v10 = sub_247DD23CC();
  __swift_project_value_buffer(v10, qword_27EE7B878);
  v11 = sub_247DD23AC();
  v12 = sub_247DD2F0C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_247D72868(0xD000000000000014, 0x8000000247DD9150, &v16);
    _os_log_impl(&dword_247D56000, v11, v12, "%s connection is nil", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x24C1BAF60](v14, -1, -1);
    MEMORY[0x24C1BAF60](v13, -1, -1);
  }
}

void sub_247D7B038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73B60, &qword_247DD5250);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v75 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v77 = &v66 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v66 - v15;
  v17 = sub_247DD294C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v66 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v66 - v26;
  MEMORY[0x28223BE20](v25);
  v80 = &v66 - v28;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v74 = a7;
    v79 = Strong;
    v76 = sub_247D76840(a7);
    v31 = v30;
    v78 = a3;
    if (a3)
    {
      sub_247D6BA6C(a5, v16, &unk_27EE73B60, &qword_247DD5250);
      v32 = v18;
      v33 = *(v18 + 48);
      if (v33(v16, 1, v17) == 1)
      {
        v34 = v78;

        sub_247D6BAD4(v16, &unk_27EE73B60, &qword_247DD5250);
      }

      else
      {
        v70 = v33;
        v41 = v80;
        v68 = *(v32 + 32);
        v69 = v32 + 32;
        v68(v80, v16, v17);
        v42 = qword_27EE73260;

        if (v42 != -1)
        {
          swift_once();
        }

        v43 = sub_247DD23CC();
        __swift_project_value_buffer(v43, qword_27EE7B878);
        v72 = *(v32 + 16);
        v72(v27, v41, v17);

        v44 = sub_247DD23AC();
        v45 = sub_247DD2F0C();
        v46 = v31;
        v47 = v45;
        v73 = v46;

        v71 = v47;
        if (os_log_type_enabled(v44, v47))
        {
          v67 = v44;
          v48 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v81 = v66;
          *v48 = 136315394;
          v31 = v73;
          *(v48 + 4) = sub_247D72868(v76, v73, &v81);
          *(v48 + 12) = 2080;
          v49 = v77;
          v72(v77, v27, v17);
          (*(v32 + 56))(v49, 0, 1, v17);
          v50 = v49;
          v51 = v75;
          sub_247D6BA6C(v50, v75, &unk_27EE73B60, &qword_247DD5250);
          if (v70(v51, 1, v17) == 1)
          {
            v52 = 0xE300000000000000;
            v53 = 7104878;
          }

          else
          {
            v68(v24, v51, v17);
            v72(v21, v24, v17);
            v53 = sub_247DD2CFC();
            v52 = v55;
            (*(v32 + 8))(v24, v17);
          }

          v34 = v78;
          sub_247D6BAD4(v77, &unk_27EE73B60, &qword_247DD5250);
          v56 = *(v32 + 8);
          v56(v27, v17);
          v57 = sub_247D72868(v53, v52, &v81);

          *(v48 + 14) = v57;
          v58 = v67;
          _os_log_impl(&dword_247D56000, v67, v71, "%s encountered error=%s while reading HTTP headers", v48, 0x16u);
          v59 = v66;
          swift_arrayDestroy();
          MEMORY[0x24C1BAF60](v59, -1, -1);
          MEMORY[0x24C1BAF60](v48, -1, -1);

          v56(v80, v17);
        }

        else
        {

          v54 = *(v32 + 8);
          v54(v27, v17);
          v54(v41, v17);
          v34 = v78;
          v31 = v73;
        }
      }

      if (sub_247DD25FC())
      {
        if (qword_27EE73260 != -1)
        {
          swift_once();
        }

        v60 = sub_247DD23CC();
        __swift_project_value_buffer(v60, qword_27EE7B878);

        v61 = sub_247DD23AC();
        v62 = sub_247DD2F2C();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v81 = v64;
          *v63 = 136315138;
          v65 = sub_247D72868(v76, v31, &v81);

          *(v63 + 4) = v65;
          _os_log_impl(&dword_247D56000, v61, v62, "%s read close", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v64);
          MEMORY[0x24C1BAF60](v64, -1, -1);
          MEMORY[0x24C1BAF60](v63, -1, -1);
        }

        else
        {
        }

        sub_247DD26BC();
      }

      else
      {
        if (*(v79 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_initiated) == 1)
        {
          sub_247D7BF00(v34, v76, v31);

          return;
        }

        sub_247D7B8D0(v34, v76, v31);
      }
    }

    else
    {
      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v35 = sub_247DD23CC();
      __swift_project_value_buffer(v35, qword_27EE7B878);

      v36 = sub_247DD23AC();
      v37 = sub_247DD2F2C();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v81 = v39;
        *v38 = 136315138;
        v40 = sub_247D72868(v76, v31, &v81);

        *(v38 + 4) = v40;
        _os_log_impl(&dword_247D56000, v36, v37, "%s receiveHTTPMessage has nil context", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        MEMORY[0x24C1BAF60](v39, -1, -1);
        MEMORY[0x24C1BAF60](v38, -1, -1);
      }

      else
      {
      }
    }
  }
}

void sub_247D7B8D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_247DD2ABC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v29[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_queue);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v12 = v11;
  v13 = sub_247DD2ADC();
  (*(v8 + 8))(v10, v7);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  v14 = sub_247D82DA8(a1, a2, a3);
  if (v15)
  {
    v17 = v14;
    v18 = v15;
    v19 = v16;
    v20 = swift_allocObject();
    swift_weakInit();

    swift_unknownObjectRetain();

    sub_247D83444(v3, v20, v17, v18, v19, a2, a3);

    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease_n();

    return;
  }

  v13 = v3;
  if (qword_27EE73260 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v21 = sub_247DD23CC();
  __swift_project_value_buffer(v21, qword_27EE7B878);

  v22 = sub_247DD23AC();
  v23 = sub_247DD2F0C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_247D72868(a2, a3, v29);
    _os_log_impl(&dword_247D56000, v22, v23, "%s failed to read HTTP Request", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x24C1BAF60](v25, -1, -1);
    MEMORY[0x24C1BAF60](v24, -1, -1);
  }

  v26 = *(v13 + 48);
  if (v26)
  {
    v27 = *(v13 + 56);
    v29[0] = 0;
    v29[1] = 0;
    v30 = 3;

    v26(v29);
    sub_247D6A24C(v26, v27);
  }
}

void sub_247D7BBE8(void *a1, unint64_t a2, char a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a3)
    {
      v17 = Strong;
      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v18 = sub_247DD23CC();
      __swift_project_value_buffer(v18, qword_27EE7B878);
      sub_247D82D5C(a1, a2, 1);

      v19 = sub_247DD23AC();
      v20 = sub_247DD2F0C();

      sub_247D82D68(a1, a2, 1);
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v31 = v22;
        *v21 = 136315394;
        *(v21 + 4) = sub_247D72868(a8, a9, &v31);
        *(v21 + 12) = 2080;
        v23 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
        v24 = sub_247DD2CFC();
        v26 = sub_247D72868(v24, v25, &v31);

        *(v21 + 14) = v26;
        _os_log_impl(&dword_247D56000, v19, v20, "%s failed to receive HTTP body, error=%s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v22, -1, -1);
        MEMORY[0x24C1BAF60](v21, -1, -1);
      }

      v27 = *(v17 + 48);
      if (v27)
      {
        v28 = *(v17 + 56);
        v31 = a1;
        v32 = 0;
        LOBYTE(v33) = 2;
        sub_247D82D5C(a1, a2, 1);
        sub_247D6ACFC(v27);
        v27(&v31);
        sub_247D6A24C(v27, v28);

        sub_247D82AF0(v31, v32, v33);
        return;
      }
    }

    else
    {
      v29 = *(Strong + 32);
      if (v29)
      {
        v30 = *(Strong + 40);
        v31 = a5;
        v32 = a6;
        v33 = a1;
        v34 = a2;
        v35 = a7;
        sub_247D6ACFC(v29);

        sub_247D82D5C(a1, a2, 0);
        swift_unknownObjectRetain();
        v29(&v31);
        sub_247D6A24C(v29, v30);

        sub_247D6C0AC(a1, a2);
        swift_unknownObjectRelease();
        return;
      }
    }
  }
}

void sub_247D7BF00(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v197 = *MEMORY[0x277D85DE8];
  v7 = sub_247DD225C();
  v186 = *(v7 - 8);
  v187 = v7;
  MEMORY[0x28223BE20](v7);
  v185 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for CosmoHttpConnection.Configuration(0);
  MEMORY[0x28223BE20](v184);
  v10 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_247DD20DC();
  v190 = *(v192 - 8);
  v11 = v190[8];
  v12 = MEMORY[0x28223BE20](v192);
  v181 = &v174 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v182 = &v174 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v183 = &v174 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v188 = &v174 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v189 = &v174 - v20;
  MEMORY[0x28223BE20](v19);
  v191 = &v174 - v21;
  v22 = sub_247DD2ABC();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = (&v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v193 = v3;
  v26 = *(v3 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_queue);
  *v25 = v26;
  (*(v23 + 104))(v25, *MEMORY[0x277D85200], v22);
  v27 = v26;
  LOBYTE(v26) = sub_247DD2ADC();
  (*(v23 + 8))(v25, v22);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_85:
    swift_once();
    goto LABEL_25;
  }

  v28 = sub_247D821BC(a1, a2, a3);
  if (v29)
  {
    v30 = v29;
    v31 = v193;
    if (*(v193 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_awaitingFileTransfer) != 1)
    {
      v53 = v28;
      v54 = swift_allocObject();
      swift_weakInit();

      sub_247D82724(v31, v54, v53, v30, a2, a3);

      swift_unknownObjectRelease();

      return;
    }

    v178 = v28;
    v179 = a2;
    v180 = a3;
    v32 = nw_http_response_copy_header_fields();
    if (nw_http_fields_copy_value_by_name())
    {
      v33 = sub_247DD2DBC();
      v35 = v34;
      v36 = HIBYTE(v34) & 0xF;
      v37 = v33 & 0xFFFFFFFFFFFFLL;
      if ((v35 & 0x2000000000000000) != 0)
      {
        v38 = v36;
      }

      else
      {
        v38 = v33 & 0xFFFFFFFFFFFFLL;
      }

      if (v38)
      {
        if ((v35 & 0x1000000000000000) == 0)
        {
          if ((v35 & 0x2000000000000000) != 0)
          {
            *&v195 = v33;
            *(&v195 + 1) = v35 & 0xFFFFFFFFFFFFFFLL;
            if (v33 == 43)
            {
              if (v36)
              {
                if (--v36)
                {
                  v41 = 0;
                  v61 = &v195 + 1;
                  while (1)
                  {
                    v62 = *v61 - 48;
                    if (v62 > 9)
                    {
                      break;
                    }

                    v63 = 10 * v41;
                    if ((v41 * 10) >> 64 != (10 * v41) >> 63)
                    {
                      break;
                    }

                    v41 = v63 + v62;
                    if (__OFADD__(v63, v62))
                    {
                      break;
                    }

                    ++v61;
                    if (!--v36)
                    {
                      goto LABEL_74;
                    }
                  }
                }

                goto LABEL_73;
              }

LABEL_123:
              __break(1u);
              goto LABEL_124;
            }

            if (v33 != 45)
            {
              if (v36)
              {
                v41 = 0;
                v66 = &v195;
                while (1)
                {
                  v67 = *v66 - 48;
                  if (v67 > 9)
                  {
                    break;
                  }

                  v68 = 10 * v41;
                  if ((v41 * 10) >> 64 != (10 * v41) >> 63)
                  {
                    break;
                  }

                  v41 = v68 + v67;
                  if (__OFADD__(v68, v67))
                  {
                    break;
                  }

                  v66 = (v66 + 1);
                  if (!--v36)
                  {
                    goto LABEL_74;
                  }
                }
              }

              goto LABEL_73;
            }

            if (v36)
            {
              if (--v36)
              {
                v41 = 0;
                v55 = &v195 + 1;
                while (1)
                {
                  v56 = *v55 - 48;
                  if (v56 > 9)
                  {
                    break;
                  }

                  v57 = 10 * v41;
                  if ((v41 * 10) >> 64 != (10 * v41) >> 63)
                  {
                    break;
                  }

                  v41 = v57 - v56;
                  if (__OFSUB__(v57, v56))
                  {
                    break;
                  }

                  ++v55;
                  if (!--v36)
                  {
                    goto LABEL_74;
                  }
                }
              }

              goto LABEL_73;
            }
          }

          else
          {
            if ((v33 & 0x1000000000000000) != 0)
            {
              v39 = ((v35 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v39 = sub_247DD308C();
            }

            v40 = *v39;
            if (v40 == 43)
            {
              if (v37 >= 1)
              {
                v36 = v37 - 1;
                if (v37 != 1)
                {
                  v41 = 0;
                  if (v39)
                  {
                    v58 = v39 + 1;
                    while (1)
                    {
                      v59 = *v58 - 48;
                      if (v59 > 9)
                      {
                        goto LABEL_73;
                      }

                      v60 = 10 * v41;
                      if ((v41 * 10) >> 64 != (10 * v41) >> 63)
                      {
                        goto LABEL_73;
                      }

                      v41 = v60 + v59;
                      if (__OFADD__(v60, v59))
                      {
                        goto LABEL_73;
                      }

                      ++v58;
                      if (!--v36)
                      {
                        goto LABEL_74;
                      }
                    }
                  }

                  goto LABEL_65;
                }

                goto LABEL_73;
              }

              goto LABEL_122;
            }

            if (v40 != 45)
            {
              if (v37)
              {
                v41 = 0;
                if (v39)
                {
                  while (1)
                  {
                    v64 = *v39 - 48;
                    if (v64 > 9)
                    {
                      goto LABEL_73;
                    }

                    v65 = 10 * v41;
                    if ((v41 * 10) >> 64 != (10 * v41) >> 63)
                    {
                      goto LABEL_73;
                    }

                    v41 = v65 + v64;
                    if (__OFADD__(v65, v64))
                    {
                      goto LABEL_73;
                    }

                    ++v39;
                    if (!--v37)
                    {
                      goto LABEL_65;
                    }
                  }
                }

                goto LABEL_65;
              }

LABEL_73:
              v41 = 0;
              LOBYTE(v36) = 1;
LABEL_74:
              LOBYTE(v194) = v36;
              v69 = v36;

              if (v69)
              {
                goto LABEL_75;
              }

LABEL_88:
              sub_247DD2D1C();
              v81 = nw_http_fields_copy_value_by_name();

              if (!v81)
              {
                if (qword_27EE73260 != -1)
                {
                  swift_once();
                }

                v93 = sub_247DD23CC();
                __swift_project_value_buffer(v93, qword_27EE7B878);
                v94 = v180;

                v95 = sub_247DD23AC();
                v96 = sub_247DD2F0C();

                if (os_log_type_enabled(v95, v96))
                {
                  v97 = swift_slowAlloc();
                  v98 = swift_slowAlloc();
                  *&v195 = v98;
                  *v97 = 136315394;
                  *(v97 + 4) = sub_247D72868(v179, v94, &v195);
                  *(v97 + 12) = 2080;
                  *(v97 + 14) = sub_247D72868(0x656D614E656C6946, 0xE800000000000000, &v195);
                  _os_log_impl(&dword_247D56000, v95, v96, "%s failed to read '%s' header", v97, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x24C1BAF60](v98, -1, -1);
                  MEMORY[0x24C1BAF60](v97, -1, -1);
                }

                v99 = v193;
                v100 = *(v193 + 80);
                if (v100)
                {
                  v101 = *(v193 + 88);
                  v195 = xmmword_247DD4E30;
                  v196 = 0;

                  v100(&v195);
                  sub_247D6A24C(v100, v101);
                  sub_247D82AF0(v195, *(&v195 + 1), v196);
                }

                if (!*(v99 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection))
                {
                  goto LABEL_83;
                }

LABEL_82:

                sub_247DD26BC();

LABEL_83:
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                return;
              }

              v175 = v81;
              v177 = v41;
              sub_247D81F30(v31 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_config, v10, type metadata accessor for CosmoHttpConnection.Configuration);
              v82 = *(v184 + 20);
              *&v195 = *(v31 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_epochMillisAtInit);
              sub_247DD321C();
              v83 = v189;
              sub_247DD209C();

              v84 = v190 + 1;
              v85 = v190[1];
              v86 = &v10[v82];
              v87 = v192;
              (v85)(v86, v192);
              v88 = v185;
              sub_247DD224C();
              sub_247DD220C();
              v186[1](v88, v187);
              sub_247DD209C();

              v186 = v85;
              v187 = v84;
              (v85)(v83, v87);
              v10 = objc_opt_self();
              v35 = 0x278EDE000uLL;
              v89 = [v10 defaultManager];
              v90 = sub_247DD208C();
              *&v195 = 0;
              LODWORD(v84) = [v89 createDirectoryAtURL:v90 withIntermediateDirectories:1 attributes:0 error:&v195];

              v176 = v32;
              if (v84)
              {
                v91 = v195;
                v92 = v188;
LABEL_104:
                v185 = v30;
                sub_247DD2DBC();
                sub_247DD209C();

                v122 = [v10 *(v35 + 3912)];
                sub_247DD20CC();
                v123 = sub_247DD2C7C();

                v124 = [v122 fileExistsAtPath_];

                if (v124)
                {
                  v125 = v92;
                  v126 = v35;
                  if (qword_27EE73260 != -1)
                  {
                    swift_once();
                  }

                  v127 = sub_247DD23CC();
                  v128 = __swift_project_value_buffer(v127, qword_27EE7B878);
                  v129 = v190[2];
                  v130 = v183;
                  v131 = v192;
                  v175 = v190 + 2;
                  v174 = v129;
                  v129(v183, v125, v192);
                  v182 = v128;
                  v132 = sub_247DD23AC();
                  v133 = sub_247DD2F0C();
                  if (os_log_type_enabled(v132, v133))
                  {
                    v134 = swift_slowAlloc();
                    v184 = v10;
                    v135 = v134;
                    v136 = swift_slowAlloc();
                    *&v195 = v136;
                    *v135 = 136315138;
                    sub_247D83AA0(&qword_27EE735C0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
                    v137 = sub_247DD321C();
                    v139 = v138;
                    (v186)(v130, v192);
                    v140 = sub_247D72868(v137, v139, &v195);

                    *(v135 + 4) = v140;
                    _os_log_impl(&dword_247D56000, v132, v133, "WARNING: Overwriting existing file=%s", v135, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0Tm(v136);
                    v141 = v136;
                    v131 = v192;
                    MEMORY[0x24C1BAF60](v141, -1, -1);
                    v142 = v135;
                    v10 = v184;
                    v125 = v188;
                    MEMORY[0x24C1BAF60](v142, -1, -1);
                  }

                  else
                  {

                    (v186)(v130, v131);
                  }

                  v143 = [v10 (v126 + 1595)];
                  v144 = sub_247DD208C();
                  *&v195 = 0;
                  v145 = [v143 removeItemAtURL:v144 error:&v195];

                  v92 = v125;
                  if (v145)
                  {
                    v146 = v195;
                  }

                  else
                  {
                    v147 = v195;
                    v148 = sub_247DD205C();

                    swift_willThrow();
                    v149 = v181;
                    v174(v181, v125, v131);
                    v150 = v148;
                    v151 = sub_247DD23AC();
                    v152 = sub_247DD2F0C();

                    if (os_log_type_enabled(v151, v152))
                    {
                      v153 = swift_slowAlloc();
                      v154 = swift_slowAlloc();
                      *&v195 = v154;
                      *v153 = 136315394;
                      sub_247D83AA0(&qword_27EE735C0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
                      v155 = sub_247DD321C();
                      v157 = v156;
                      (v186)(v149, v192);
                      v158 = sub_247D72868(v155, v157, &v195);

                      *(v153 + 4) = v158;
                      *(v153 + 12) = 2080;
                      v194 = v148;
                      v159 = v148;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
                      v160 = sub_247DD2CFC();
                      v162 = sub_247D72868(v160, v161, &v195);

                      *(v153 + 14) = v162;
                      _os_log_impl(&dword_247D56000, v151, v152, "Error while removing existing file=%s error=%s", v153, 0x16u);
                      swift_arrayDestroy();
                      MEMORY[0x24C1BAF60](v154, -1, -1);
                      MEMORY[0x24C1BAF60](v153, -1, -1);
                    }

                    else
                    {

                      (v186)(v149, v131);
                    }

                    v92 = v188;
                  }
                }

                v163 = swift_allocObject();
                swift_weakInit();
                v165 = v189;
                v164 = v190;
                v166 = v192;
                (v190[2])(v189, v92, v192);
                v167 = v92;
                v168 = (*(v164 + 80) + 26) & ~*(v164 + 80);
                v169 = (v11 + v168 + 7) & 0xFFFFFFFFFFFFFFF8;
                v170 = swift_allocObject();
                *(v170 + 16) = v163;
                *(v170 + 24) = v178;
                (v164[4])(v170 + v168, v165, v166);
                *(v170 + v169) = v185;
                v171 = (v170 + ((v169 + 15) & 0xFFFFFFFFFFFFFFF8));
                v172 = v180;
                *v171 = v179;
                v171[1] = v172;

                swift_unknownObjectRetain();

                sub_247D7E1B4(v167, v177, 0, 0, sub_247D82C0C, v170);
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                v173 = v186;
                (v186)(v167, v166);
                (v173)(v191, v166);
                goto LABEL_117;
              }

              v102 = v195;
              v32 = sub_247DD205C();

              swift_willThrow();
              if (qword_27EE73260 == -1)
              {
LABEL_100:
                v103 = sub_247DD23CC();
                __swift_project_value_buffer(v103, qword_27EE7B878);
                v104 = v182;
                v105 = v192;
                (v190[2])(v182, v191, v192);
                v106 = v32;
                v107 = sub_247DD23AC();
                v108 = sub_247DD2F0C();

                if (os_log_type_enabled(v107, v108))
                {
                  v109 = swift_slowAlloc();
                  v184 = v10;
                  v110 = v109;
                  v111 = swift_slowAlloc();
                  *&v195 = v111;
                  *v110 = 136315394;
                  sub_247D83AA0(&qword_27EE735C0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
                  v112 = sub_247DD321C();
                  v114 = v113;
                  (v186)(v104, v192);
                  v115 = sub_247D72868(v112, v114, &v195);

                  *(v110 + 4) = v115;
                  *(v110 + 12) = 2080;
                  v194 = v32;
                  v116 = v32;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
                  v117 = sub_247DD2CFC();
                  v119 = sub_247D72868(v117, v118, &v195);

                  *(v110 + 14) = v119;
                  _os_log_impl(&dword_247D56000, v107, v108, "Error creating directory=%s, error=%s", v110, 0x16u);
                  swift_arrayDestroy();
                  v120 = v111;
                  v35 = 0x278EDE000;
                  MEMORY[0x24C1BAF60](v120, -1, -1);
                  v121 = v110;
                  v10 = v184;
                  MEMORY[0x24C1BAF60](v121, -1, -1);
                }

                else
                {

                  (v186)(v104, v105);
                }

                v92 = v188;
                goto LABEL_104;
              }

LABEL_124:
              swift_once();
              goto LABEL_100;
            }

            if (v37 >= 1)
            {
              v36 = v37 - 1;
              if (v37 != 1)
              {
                v41 = 0;
                if (v39)
                {
                  v42 = v39 + 1;
                  while (1)
                  {
                    v43 = *v42 - 48;
                    if (v43 > 9)
                    {
                      goto LABEL_73;
                    }

                    v44 = 10 * v41;
                    if ((v41 * 10) >> 64 != (10 * v41) >> 63)
                    {
                      goto LABEL_73;
                    }

                    v41 = v44 - v43;
                    if (__OFSUB__(v44, v43))
                    {
                      goto LABEL_73;
                    }

                    ++v42;
                    if (!--v36)
                    {
                      goto LABEL_74;
                    }
                  }
                }

LABEL_65:
                LOBYTE(v36) = 0;
                goto LABEL_74;
              }

              goto LABEL_73;
            }

            __break(1u);
          }

          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        LOBYTE(v194) = 0;
        v41 = sub_247D80A80(v33, v35, 10);
        v80 = v79;

        if ((v80 & 1) == 0)
        {
          goto LABEL_88;
        }
      }

      else
      {
      }
    }

LABEL_75:
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v70 = sub_247DD23CC();
    __swift_project_value_buffer(v70, qword_27EE7B878);
    v71 = v180;

    v72 = sub_247DD23AC();
    v73 = sub_247DD2F0C();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v195 = v75;
      *v74 = 136315138;
      *(v74 + 4) = sub_247D72868(v179, v71, &v195);
      _os_log_impl(&dword_247D56000, v72, v73, "%s failed to read 'Content-Length' header", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v75);
      MEMORY[0x24C1BAF60](v75, -1, -1);
      v76 = v74;
      v31 = v193;
      MEMORY[0x24C1BAF60](v76, -1, -1);
    }

    v77 = *(v31 + 80);
    if (v77)
    {
      v78 = *(v31 + 88);
      v195 = xmmword_247DD4E40;
      v196 = 0;

      v77(&v195);
      sub_247D6A24C(v77, v78);
      sub_247D82AF0(v195, *(&v195 + 1), v196);
    }

    if (!*(v31 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection))
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  if (qword_27EE73260 != -1)
  {
    goto LABEL_85;
  }

LABEL_25:
  v45 = sub_247DD23CC();
  __swift_project_value_buffer(v45, qword_27EE7B878);

  v46 = sub_247DD23AC();
  v47 = sub_247DD2F0C();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v195 = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_247D72868(a2, a3, &v195);
    _os_log_impl(&dword_247D56000, v46, v47, "%s failed to read HTTP response", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    MEMORY[0x24C1BAF60](v49, -1, -1);
    MEMORY[0x24C1BAF60](v48, -1, -1);
  }

  v50 = v193;
  v51 = *(v193 + 80);
  if (v51)
  {
    v52 = *(v193 + 88);
    v195 = 0uLL;
    v196 = 3;

    v51(&v195);
    sub_247D6A24C(v51, v52);
  }

  if (*(v50 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection))
  {

    sub_247DD26BC();
LABEL_117:
  }
}

uint64_t sub_247D7D510(void *a1, char a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v15 = type metadata accessor for RawHTTPResponse(0);
  MEMORY[0x28223BE20](v15);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    if (a2)
    {
      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v20 = sub_247DD23CC();
      __swift_project_value_buffer(v20, qword_27EE7B878);

      sub_247D6BC90(a1, 1);
      v21 = sub_247DD23AC();
      v22 = sub_247DD2F0C();

      sub_247D6B9F8(a1, 1);
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v37 = v24;
        *v23 = 136315394;
        *(v23 + 4) = sub_247D72868(a7, a8, &v37);
        *(v23 + 12) = 2080;
        v36[1] = a1;
        v25 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
        v26 = sub_247DD2CFC();
        v28 = sub_247D72868(v26, v27, &v37);

        *(v23 + 14) = v28;
        _os_log_impl(&dword_247D56000, v21, v22, "%s failed to receive HTTP file, error=%s", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v24, -1, -1);
        MEMORY[0x24C1BAF60](v23, -1, -1);
      }

      v29 = *(v19 + 80);
      if (v29)
      {
        v30 = *(v19 + 88);
        v37 = a1;
        v38 = 0;
        v39 = 1;
        sub_247D6BC90(a1, 1);
        sub_247D6ACFC(v29);
        v29(&v37);
        sub_247D6A24C(v29, v30);
        sub_247D82AF0(v37, v38, v39);
      }
    }

    else
    {
      v31 = *(result + 64);
      if (v31)
      {
        v36[0] = *(result + 72);
        v32 = *(v15 + 24);
        v33 = sub_247DD20DC();
        v34 = *(v33 - 8);
        (*(v34 + 16))(&v17[v32], a5, v33);
        (*(v34 + 56))(&v17[v32], 0, 1, v33);
        *v17 = a4;
        *(v17 + 8) = xmmword_247DD3EC0;
        *&v17[*(v15 + 28)] = a6;
        v35 = v36[0];
        sub_247D6ACFC(v31);
        swift_unknownObjectRetain();
        v31(v17);
        sub_247D6A24C(v31, v35);
        sub_247D7FD5C(v17, type metadata accessor for RawHTTPResponse);
      }
    }

    if (*(v19 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection))
    {

      sub_247DD26BC();
    }
  }

  return result;
}

uint64_t sub_247D7D8E0(void *a1, unint64_t a2, char a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v15 = type metadata accessor for RawHTTPResponse(0);
  MEMORY[0x28223BE20](v15);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    if (a3)
    {
      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v20 = sub_247DD23CC();
      __swift_project_value_buffer(v20, qword_27EE7B878);
      sub_247D82D5C(a1, a2, 1);

      v21 = sub_247DD23AC();
      v22 = sub_247DD2F0C();

      sub_247D82D68(a1, a2, 1);
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v36 = v24;
        *v23 = 136315394;
        *(v23 + 4) = sub_247D72868(a7, a8, &v36);
        *(v23 + 12) = 2080;
        v35[1] = a1;
        v25 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
        v26 = sub_247DD2CFC();
        v28 = sub_247D72868(v26, v27, &v36);

        *(v23 + 14) = v28;
        _os_log_impl(&dword_247D56000, v21, v22, "%s failed to receive HTTP body, error=%s", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v24, -1, -1);
        MEMORY[0x24C1BAF60](v23, -1, -1);
      }

      v29 = *(v19 + 80);
      if (v29)
      {
        v30 = *(v19 + 88);
        v36 = a1;
        v37 = 0;
        v38 = 2;
        sub_247D82D5C(a1, a2, 1);
        sub_247D6ACFC(v29);
        v29(&v36);
        sub_247D6A24C(v29, v30);
        sub_247D82AF0(v36, v37, v38);
      }
    }

    else
    {
      v31 = *(result + 64);
      if (v31)
      {
        v32 = *(result + 72);
        v33 = *(v15 + 24);
        v34 = sub_247DD20DC();
        (*(*(v34 - 8) + 56))(&v17[v33], 1, 1, v34);
        *v17 = a5;
        *(v17 + 1) = a1;
        *(v17 + 2) = a2;
        *&v17[*(v15 + 28)] = a6;
        sub_247D6ACFC(v31);
        sub_247D82D5C(a1, a2, 0);
        swift_unknownObjectRetain();
        v31(v17);
        sub_247D6A24C(v31, v32);
        sub_247D7FD5C(v17, type metadata accessor for RawHTTPResponse);
      }
    }

    if (*(v19 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection))
    {

      sub_247DD26BC();
    }
  }

  return result;
}

uint64_t sub_247D7DC88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void *, void, uint64_t), uint64_t a9)
{
  v49 = a2;
  v50 = a3;
  v48 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73B60, &qword_247DD5250);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v41 - v13;
  v15 = sub_247DD294C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v46 = a9;
    v47 = a8;
    v23 = sub_247D76840(a7);
    v25 = v24;
    sub_247D6BA6C(a5, v14, &unk_27EE73B60, &qword_247DD5250);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {

      sub_247D6BAD4(v14, &unk_27EE73B60, &qword_247DD5250);
    }

    else
    {
      (*(v16 + 32))(v21, v14, v15);
      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v26 = sub_247DD23CC();
      __swift_project_value_buffer(v26, qword_27EE7B878);
      v45 = *(v16 + 16);
      v45(v19, v21, v15);

      v27 = sub_247DD23AC();
      v28 = sub_247DD2F0C();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v43 = v28;
        v30 = v29;
        v42 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v51 = v44;
        *v30 = 136315650;
        *(v30 + 4) = sub_247D72868(0xD000000000000023, 0x8000000247DD90B0, &v51);
        *(v30 + 12) = 2080;
        v31 = sub_247D72868(v23, v25, &v51);

        *(v30 + 14) = v31;
        *(v30 + 22) = 2112;
        sub_247D83AA0(&qword_27EE73948, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
        swift_allocError();
        v45(v32, v19, v15);
        v33 = _swift_stdlib_bridgeErrorToNSError();
        v34 = *(v16 + 8);
        v34(v19, v15);
        *(v30 + 24) = v33;
        v35 = v42;
        *v42 = v33;
        _os_log_impl(&dword_247D56000, v27, v43, "%s %s receiveMessage encountered error=%@", v30, 0x20u);
        sub_247D6BAD4(v35, &unk_27EE73950, &qword_247DD5258);
        MEMORY[0x24C1BAF60](v35, -1, -1);
        v36 = v44;
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v36, -1, -1);
        MEMORY[0x24C1BAF60](v30, -1, -1);

        v34(v21, v15);
      }

      else
      {

        v37 = *(v16 + 8);
        v37(v19, v15);
        v37(v21, v15);
      }
    }

    v38 = v47;
    if (v50)
    {
      v47(v48, v49, 0);
    }

    else
    {
      sub_247D6AFB0();
      v39 = swift_allocError();
      *v40 = 0xD000000000000043;
      *(v40 + 8) = 0x8000000247DD90E0;
      *(v40 + 16) = 0;
      v38(v39, 0, 1);
    }
  }

  return result;
}

void sub_247D7E1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v73 = a4;
  v68 = a3;
  v69 = a2;
  v75 = a1;
  v9 = sub_247DD21EC();
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x28223BE20](v9);
  v70 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_247DD20DC();
  v74 = *(v11 - 8);
  v12 = *(v74 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v67 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v61 - v14;
  v16 = sub_247DD2ABC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v6 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_queue);
  *v19 = v20;
  (*(v17 + 104))(v19, *MEMORY[0x277D85200], v16);
  v21 = v20;
  LOBYTE(v20) = sub_247DD2ADC();
  v23 = *(v17 + 8);
  v22 = v17 + 8;
  v23(v19, v16);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
LABEL_4:
    v25 = sub_247DD23CC();
    __swift_project_value_buffer(v25, qword_27EE7B878);
    v26 = v74;
    v27 = v11;
    v61 = *(v74 + 16);
    v61(v15, v75, v11);

    v28 = sub_247DD23AC();
    a5 = sub_247DD2F2C();

    v29 = os_log_type_enabled(v28, a5);
    v62 = v22;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v76 = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_247D72868(v66, v22, &v76);
      *(v30 + 12) = 2080;
      sub_247D83AA0(&qword_27EE735C0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v32 = sub_247DD321C();
      v34 = v33;
      (*(v74 + 8))(v15, v27);
      v35 = sub_247D72868(v32, v34, &v76);

      *(v30 + 14) = v35;
      _os_log_impl(&dword_247D56000, v28, a5, "%s receiving file at file=%s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v31, -1, -1);
      MEMORY[0x24C1BAF60](v30, -1, -1);
    }

    else
    {

      (*(v26 + 8))(v15, v11);
    }

    v43 = v70;
    sub_247DD21CC();
    sub_247DD21BC();
    v45 = v44;
    (*(v71 + 8))(v43, v72);
    v46 = v45 * 1000.0;
    if (COERCE__INT64(fabs(v45 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v46 > -1.0)
    {
      if (v46 < 1.84467441e19)
      {
        v47 = v46;
        v71 = v46;
        v72 = swift_allocObject();
        *(v72 + 16) = v47;
        v48 = v67;
        v61(v67, v75, v27);
        v49 = v74;
        v50 = (*(v74 + 80) + 56) & ~*(v74 + 80);
        v51 = (v12 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = swift_allocObject();
        v54 = v62;
        *(v53 + 2) = v66;
        *(v53 + 3) = v54;
        v55 = v68;
        v56 = v73;
        *(v53 + 4) = v68;
        *(v53 + 5) = v56;
        *(v53 + 6) = v71;
        (*(v49 + 32))(&v53[v50], v48, v27);
        v57 = &v53[v51];
        v58 = v72;
        *v57 = sub_247D81F98;
        v57[1] = v58;
        *&v53[v52] = v69;
        v59 = &v53[(v52 + 15) & 0xFFFFFFFFFFFFFFF8];
        v60 = v65;
        *v59 = v64;
        *(v59 + 1) = v60;
        sub_247D6ACFC(v55);

        sub_247DD259C();

        return;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (*(v6 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection))
  {
    v64 = a5;
    v65 = a6;

    v66 = sub_247D76840(v63);
    v22 = v24;
    if (qword_27EE73260 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  if (qword_27EE73260 != -1)
  {
LABEL_20:
    swift_once();
  }

  v36 = sub_247DD23CC();
  __swift_project_value_buffer(v36, qword_27EE7B878);
  v37 = sub_247DD23AC();
  v38 = sub_247DD2F0C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v76 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_247D72868(0xD00000000000003DLL, 0x8000000247DD9030, &v76);
    _os_log_impl(&dword_247D56000, v37, v38, "%s connection is nil", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    MEMORY[0x24C1BAF60](v40, -1, -1);
    MEMORY[0x24C1BAF60](v39, -1, -1);
  }

  sub_247D6AFB0();
  v41 = swift_allocError();
  *v42 = 0xD00000000000004FLL;
  *(v42 + 8) = 0x8000000247DD8FE0;
  *(v42 + 16) = 1;
  a5(v41, 1);
}

uint64_t sub_247D7E960(unint64_t a1)
{
  v2 = sub_247DD21EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247DD21CC();
  sub_247DD21BC();
  v7 = v6;
  result = (*(v3 + 8))(v5, v2);
  v9 = v7 * 1000.0;
  if (COERCE__INT64(fabs(v7 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v9 <= -1.0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v9 >= 1.84467441e19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v9 >= a1)
  {
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    sub_247DD2ECC();
    MEMORY[0x24C1BA0A0](115, 0xE100000000000000);
    return v10[0];
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_247D7EADC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8, unint64_t a9, char *a10, uint64_t (*a11)(void), uint64_t a12, uint64_t a13, void (*a14)(void, void))
{
  v95 = a8;
  v96 = a5;
  v97 = a7;
  v102 = a6;
  LODWORD(v98) = a3;
  v16 = sub_247DD20DC();
  v100 = *(v16 - 8);
  v101 = v16;
  MEMORY[0x28223BE20](v16);
  v99 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_247DD21EC();
  v93 = *(v18 - 8);
  v94 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73B60, &qword_247DD5250);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v89 - v22;
  v24 = sub_247DD294C();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v89 - v29;
  sub_247D6BA6C(a4, v23, &unk_27EE73B60, &qword_247DD5250);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_247D6BAD4(v23, &unk_27EE73B60, &qword_247DD5250);
    v31 = v102;
  }

  else
  {
    (*(v25 + 32))(v30, v23, v24);
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v32 = sub_247DD23CC();
    __swift_project_value_buffer(v32, qword_27EE7B878);
    v92 = *(v25 + 16);
    v92(v28, v30, v24);
    v31 = v102;

    v33 = sub_247DD23AC();
    v34 = sub_247DD2F0C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v90 = v34;
      v36 = v35;
      v89 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v103[0] = v91;
      *v36 = 136315650;
      *(v36 + 4) = sub_247D72868(0xD00000000000003DLL, 0x8000000247DD9030, v103);
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_247D72868(v96, v31, v103);
      *(v36 + 22) = 2112;
      sub_247D83AA0(&qword_27EE73948, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      swift_allocError();
      v37 = a1;
      v92(v38, v28, v24);
      v39 = _swift_stdlib_bridgeErrorToNSError();
      v40 = *(v25 + 8);
      v40(v28, v24);
      *(v36 + 24) = v39;
      v41 = v89;
      *v89 = v39;
      a1 = v37;
      v31 = v102;
      _os_log_impl(&dword_247D56000, v33, v90, "%s %s receiveFile encountered error=%@", v36, 0x20u);
      sub_247D6BAD4(v41, &unk_27EE73950, &qword_247DD5258);
      MEMORY[0x24C1BAF60](v41, -1, -1);
      v42 = v91;
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v42, -1, -1);
      MEMORY[0x24C1BAF60](v36, -1, -1);

      v40(v30, v24);
    }

    else
    {

      v43 = *(v25 + 8);
      v43(v28, v24);
      v43(v30, v24);
    }
  }

  v44 = v100;
  v45 = v101;
  v46 = v99;
  if (v97)
  {
    v97(a1);
  }

  if ((v98 & 1) == 0)
  {
    v45 = a11;
    if (qword_27EE73260 == -1)
    {
LABEL_19:
      v71 = sub_247DD23CC();
      __swift_project_value_buffer(v71, qword_27EE7B878);

      v72 = sub_247DD23AC();
      v73 = sub_247DD2EEC();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = v31;
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v103[0] = v76;
        *v75 = 136316162;
        *(v75 + 4) = sub_247D72868(v96, v74, v103);
        *(v75 + 12) = 2048;
        *(v75 + 14) = a1 / a13 * 100.0;
        *(v75 + 22) = 2048;
        *(v75 + 24) = a1;
        *(v75 + 32) = 2048;
        *(v75 + 34) = a13;
        *(v75 + 42) = 2080;
        v77 = v45();
        v79 = sub_247D72868(v77, v78, v103);

        *(v75 + 44) = v79;
        _os_log_impl(&dword_247D56000, v72, v73, "%s read %f%%, %ld/%ld bytes, %s elapsed", v75, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v76, -1, -1);
        MEMORY[0x24C1BAF60](v75, -1, -1);
      }

      return 1;
    }

LABEL_31:
    swift_once();
    goto LABEL_19;
  }

  sub_247DD21CC();
  v47 = v20;
  sub_247DD21BC();
  v49 = v48;
  (*(v93 + 8))(v20, v94);
  v50 = v49 * 1000.0;
  if (COERCE__INT64(fabs(v49 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v50 <= -1.0)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v50 >= 1.84467441e19)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v50 >= a9)
  {
    v97 = (v50 - a9);
    v98 = a11;
    v100 = a13;
    v47 = a10;
    if (qword_27EE73260 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  swift_once();
LABEL_16:
  v51 = sub_247DD23CC();
  v52 = __swift_project_value_buffer(v51, qword_27EE7B878);
  (*(v44 + 16))(v46, v47, v45);

  v53 = sub_247DD23AC();
  v54 = sub_247DD2F2C();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v95 = v52;
    v56 = v46;
    v57 = v44;
    v58 = v55;
    v59 = swift_slowAlloc();
    v103[0] = v59;
    *v58 = 136315906;
    *(v58 + 4) = sub_247D72868(v96, v102, v103);
    *(v58 + 12) = 2080;
    sub_247D83AA0(&qword_27EE735C0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v60 = sub_247DD321C();
    v61 = v45;
    v62 = a1;
    v64 = v63;
    (*(v57 + 8))(v56, v61);
    v65 = sub_247D72868(v60, v64, v103);
    a1 = v62;

    *(v58 + 14) = v65;
    *(v58 + 22) = 2080;
    v67 = v98(v66);
    v69 = sub_247D72868(v67, v68, v103);

    *(v58 + 24) = v69;
    *(v58 + 32) = 2048;
    *(v58 + 34) = v100;
    _os_log_impl(&dword_247D56000, v53, v54, "%s finished receiving file=%s after duration=%s with size=%ld", v58, 0x2Au);
    swift_arrayDestroy();
    v70 = v59;
    v31 = v102;
    MEMORY[0x24C1BAF60](v70, -1, -1);
    MEMORY[0x24C1BAF60](v58, -1, -1);
  }

  else
  {

    (*(v44 + 8))(v46, v45);
  }

  v80 = sub_247DD23AC();
  v81 = sub_247DD2F2C();

  if (!os_log_type_enabled(v80, v81))
  {
    goto LABEL_28;
  }

  v82 = v97 / 1000.0;
  v83 = swift_slowAlloc();
  v84 = swift_slowAlloc();
  v103[0] = v84;
  *v83 = 136315394;
  result = sub_247D72868(v96, v31, v103);
  *(v83 + 4) = result;
  *(v83 + 12) = 2080;
  if (v82 == INFINITY)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v82 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v82 < 9.22337204e18)
  {
    v86 = sub_247D93E14(a1, v82);
    v88 = sub_247D72868(v86, v87, v103);

    *(v83 + 14) = v88;
    _os_log_impl(&dword_247D56000, v80, v81, "%s observed throughput of %s", v83, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v84, -1, -1);
    MEMORY[0x24C1BAF60](v83, -1, -1);
LABEL_28:

    a14(0, 0);
    return 1;
  }

LABEL_38:
  __break(1u);
  return result;
}

void sub_247D7F680(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_27EE73260 != -1)
  {
    swift_once();
  }

  v5 = sub_247DD23CC();
  __swift_project_value_buffer(v5, qword_27EE7B878);

  oslog = sub_247DD23AC();
  v6 = sub_247DD2EEC();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_247D72868(a2, a3, &v13);
    *(v7 + 12) = 2080;
    v9 = sub_247DD2DBC();
    v11 = sub_247D72868(v9, v10, &v13);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_247D56000, oslog, v6, "%s received %s request", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v8, -1, -1);
    MEMORY[0x24C1BAF60](v7, -1, -1);
  }
}

void sub_247D7F818(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v7 = sub_247DD2DBC();
    v9 = v8;
    swift_beginAccess();
    *(a2 + 16) = v7;
    *(a2 + 24) = v9;

    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v10 = sub_247DD23CC();
    __swift_project_value_buffer(v10, qword_27EE7B878);

    v11 = sub_247DD23AC();
    v12 = sub_247DD2EEC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_247D72868(a3, a4, &v19);
      *(v13 + 12) = 2080;
      swift_beginAccess();
      if (*(a2 + 24))
      {

        v15 = sub_247DD2CFC();
        v17 = v16;
      }

      else
      {
        v17 = 0xE300000000000000;
        v15 = 7104878;
      }

      v18 = sub_247D72868(v15, v17, &v19);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_247D56000, v11, v12, "%s to %s path", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v14, -1, -1);
      MEMORY[0x24C1BAF60](v13, -1, -1);
    }
  }
}

uint64_t sub_247D7FA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (qword_27EE73260 != -1)
  {
    swift_once();
  }

  v8 = sub_247DD23CC();
  __swift_project_value_buffer(v8, qword_27EE7B878);

  v9 = sub_247DD23AC();
  v10 = sub_247DD2EEC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_247D72868(a5, a6, &v20);
    *(v11 + 12) = 2080;
    v13 = sub_247DD2DBC();
    v15 = sub_247D72868(v13, v14, &v20);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2080;
    v16 = sub_247DD2DBC();
    v18 = sub_247D72868(v16, v17, &v20);

    *(v11 + 24) = v18;
    _os_log_impl(&dword_247D56000, v9, v10, "%s read HTTP header '%s' with value '%s'", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v12, -1, -1);
    MEMORY[0x24C1BAF60](v11, -1, -1);
  }

  return 1;
}

uint64_t *CosmoHttpConnection.deinit()
{
  sub_247D6A24C(v0[2], v0[3]);
  sub_247D6A24C(v0[4], v0[5]);
  sub_247D6A24C(v0[6], v0[7]);
  sub_247D6A24C(v0[8], v0[9]);
  sub_247D6A24C(v0[10], v0[11]);
  v1 = OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_id;
  v2 = sub_247DD225C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_247D7FD5C(v0 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_config, type metadata accessor for CosmoHttpConnection.Configuration);
  sub_247D7FD5C(v0 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_descriptor, type metadata accessor for NetworkDescriptor);

  return v0;
}

uint64_t sub_247D7FD5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CosmoHttpConnection.__deallocating_deinit()
{
  CosmoHttpConnection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_247D7FE18()
{
  result = qword_27EE738C8;
  if (!qword_27EE738C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE738C8);
  }

  return result;
}

uint64_t sub_247D7FEB4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_id;
  v5 = sub_247DD225C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t get_enum_tag_for_layout_string_5Cosmo0A9HttpErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_247D7FF54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_247D7FF9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_247D7FFE0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CosmoListener.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CosmoListener.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_247D80180(uint64_t a1)
{
  result = sub_247DD225C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CosmoHttpConnection.Configuration(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for NetworkDescriptor(319);
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_247D8036C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_247DD20DC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_247D803F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_247DD20DC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_247D80474(uint64_t a1)
{
  result = sub_247DD20DC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_247D80504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_247D805E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_247D806CC(uint64_t a1)
{
  sub_247D80778();
  if (v1 <= 0x3F)
  {
    sub_247D807C8(319);
    if (v2 <= 0x3F)
    {
      sub_247D80820();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_247D80778()
{
  if (!qword_27EE73930)
  {
    v0 = sub_247DD2F9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE73930);
    }
  }
}

void sub_247D807C8(uint64_t a1)
{
  if (!qword_27EE73938)
  {
    sub_247DD20DC();
    v1 = sub_247DD2F9C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE73938);
    }
  }
}

unint64_t sub_247D80820()
{
  result = qword_27EE73940;
  if (!qword_27EE73940)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27EE73940);
  }

  return result;
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_247D808DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_247D80924(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_247D8098C(uint64_t a1)
{
  v2 = *(v1 + 16);
  *v2 = sub_247DD2DBC();
  v2[1] = v3;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_247D80A0C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73960, &qword_247DD48E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_247D80A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_247DD2E4C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_247D8100C(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_247DD308C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_247D8100C(uint64_t a1, unint64_t a2)
{
  v2 = sub_247DD2E5C();
  v6 = sub_247D8108C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_247D8108C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_247DD2FAC();
    if (!v9 || (v10 = v9, v11 = sub_247D80A0C(v9, 0), v12 = sub_247D811E4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_247DD2D6C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_247DD2D6C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_247DD308C();
LABEL_4:

  return sub_247DD2D6C();
}

unint64_t sub_247D811E4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_247D81404(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_247DD2E0C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_247DD308C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_247D81404(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_247DD2DEC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_247D81404(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_247DD2E1C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x24C1BA0F0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_247D81480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_247DD2A0C();
  v23 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_247DD2A2C();
  v15 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = a5;
  v27[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  sub_247D6B5C0(v27, v26);
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a2;
  v19[4] = a3;
  sub_247D6B5A8(v26, (v19 + 5));
  aBlock[4] = sub_247D8182C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_58;
  v20 = _Block_copy(aBlock);

  sub_247D6ACFC(a2);
  sub_247DD2A1C();
  v24 = MEMORY[0x277D84F90];
  sub_247D83AA0(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0, MEMORY[0x277D83970]);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v17, v14, v20);
  _Block_release(v20);
  (*(v23 + 8))(v14, v12);
  (*(v15 + 8))(v17, v22);

  return __swift_destroy_boxed_opaque_existential_0Tm(v27);
}

uint64_t sub_247D817DC()
{

  if (*(v0 + 24))
  {
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_247D8183C()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_247D818A0()
{
  v1 = sub_247DD20DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_247DD261C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + v5 + 8) & ~v8;
  v12 = v3 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v10 + 8, v12 | 7);
}

unint64_t sub_247D81A3C(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *(sub_247DD20DC() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(sub_247DD261C() - 8);
  v13 = (*(v12 + 80) + v11 + 8) & ~*(v12 + 80);
  return sub_247D79F50(a1, a2, a3, *(v3 + 16), *(v3 + 24), v3 + v8, *(v3 + v9), *(v3 + v10), *(v3 + v10 + 8), *(v3 + v11), v3 + v13, *(v3 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8))) & 1;
}

uint64_t sub_247D81B94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for NetworkDescriptor(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CosmoHttpConnection.Configuration(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection))
  {
    sub_247DD26FC();
    swift_retain_n();
    sub_247D879F4();
    v14 = sub_247DD257C();
    if (v14)
    {
      v15 = v14;
      sub_247D81F30(a1, v13, type metadata accessor for CosmoHttpConnection.Configuration);
      sub_247D81F30(a2, v10, type metadata accessor for NetworkDescriptor);
      type metadata accessor for CosmoHttpConnection(0);
      v16 = swift_allocObject();
      sub_247D755C4(v13, v10, 1, v15, a4);

      sub_247D7FD5C(a2, type metadata accessor for NetworkDescriptor);
      sub_247D7FD5C(a1, type metadata accessor for CosmoHttpConnection.Configuration);
      return v16;
    }

    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v22 = sub_247DD23CC();
    __swift_project_value_buffer(v22, qword_27EE7B878);
    v19 = sub_247DD23AC();
    v23 = sub_247DD2F0C();
    if (os_log_type_enabled(v19, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      MEMORY[0x24C1BAF60](v24, -1, -1);
    }
  }

  else
  {
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v18 = sub_247DD23CC();
    __swift_project_value_buffer(v18, qword_27EE7B878);
    v19 = sub_247DD23AC();
    v20 = sub_247DD2F0C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      MEMORY[0x24C1BAF60](v21, -1, -1);
    }
  }

  sub_247D7FD5C(a2, type metadata accessor for NetworkDescriptor);
  sub_247D7FD5C(a1, type metadata accessor for CosmoHttpConnection.Configuration);
  return 0;
}

uint64_t sub_247D81F30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_247D81FB4()
{
  v1 = sub_247DD20DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 32))
  {
  }

  v5 = (v3 + 56) & ~v3;
  v6 = (((((v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

unint64_t sub_247D820BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v9 = *(sub_247DD20DC() - 8);
  v10 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_247D7EADC(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), (v4 + v10), *(v4 + v11), *(v4 + v11 + 8), *(v4 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8))) & 1;
}

uint64_t sub_247D821BC(uint64_t a1, uint64_t a2, unint64_t isEscapingClosureAtFileLocation)
{
  v5 = sub_247DD25EC();
  v6 = nw_protocol_copy_http_definition();
  v7 = nw_content_context_copy_protocol_metadata(v5, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v7)
  {
    if (!nw_http_metadata_copy_response())
    {
      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v22 = sub_247DD23CC();
      __swift_project_value_buffer(v22, qword_27EE7B878);

      v23 = sub_247DD23AC();
      v24 = sub_247DD2F0C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v27[0] = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_247D72868(a2, isEscapingClosureAtFileLocation, v27);
        _os_log_impl(&dword_247D56000, v23, v24, "%s could not extract HTTP response metadata", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        MEMORY[0x24C1BAF60](v26, -1, -1);
        MEMORY[0x24C1BAF60](v25, -1, -1);
      }

      swift_unknownObjectRelease();
      return 0;
    }

    status_code = nw_http_response_get_status_code();
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v9 = sub_247DD23CC();
    __swift_project_value_buffer(v9, qword_27EE7B878);

    v10 = sub_247DD23AC();
    v11 = sub_247DD2EEC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27[0] = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_247D72868(a2, isEscapingClosureAtFileLocation, v27);
      *(v12 + 12) = 512;
      *(v12 + 14) = status_code;
      _os_log_impl(&dword_247D56000, v10, v11, "%s read HTTP status %hu", v12, 0x10u);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x24C1BAF60](v13, -1, -1);
      MEMORY[0x24C1BAF60](v12, -1, -1);
    }

    nw_http_response_copy();
    nw_http_response_copy_header_fields();
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = isEscapingClosureAtFileLocation;
    a2 = swift_allocObject();
    *(a2 + 16) = sub_247D82D74;
    *(a2 + 24) = v14;
    v27[4] = sub_247D82D7C;
    v27[5] = a2;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 1107296256;
    v27[2] = sub_247D7FC1C;
    v27[3] = &block_descriptor_96_0;
    v15 = _Block_copy(v27);

    nw_http_fields_enumerate();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return status_code;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (qword_27EE73260 != -1)
  {
LABEL_20:
    swift_once();
  }

  v17 = sub_247DD23CC();
  __swift_project_value_buffer(v17, qword_27EE7B878);

  v18 = sub_247DD23AC();
  v19 = sub_247DD2F0C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_247D72868(a2, isEscapingClosureAtFileLocation, v27);
    _os_log_impl(&dword_247D56000, v18, v19, "%s could not extract HTTP definition for HTTP response", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x24C1BAF60](v21, -1, -1);
    MEMORY[0x24C1BAF60](v20, -1, -1);
  }

  return 0;
}

uint64_t sub_247D826EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247D82724(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = sub_247DD2ABC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  v30 = a5;
  *(v16 + 48) = a6;
  v17 = *(a1 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_queue);
  *v15 = v17;
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);

  swift_unknownObjectRetain();

  v18 = v17;
  LOBYTE(v17) = sub_247DD2ADC();
  (*(v13 + 8))(v15, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  v19 = *(a1 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection);
  if (v19)
  {
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = v19;
    v21[4] = sub_247D82D18;
    v21[5] = v16;
    swift_retain_n();

    sub_247DD262C();
  }

  if (qword_27EE73260 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v22 = sub_247DD23CC();
  __swift_project_value_buffer(v22, qword_27EE7B878);
  v23 = sub_247DD23AC();
  v24 = sub_247DD2F0C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_247D72868(0xD000000000000023, 0x8000000247DD90B0, &v31);
    _os_log_impl(&dword_247D56000, v23, v24, "%s connection is nil", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x24C1BAF60](v26, -1, -1);
    MEMORY[0x24C1BAF60](v25, -1, -1);
  }

  sub_247D6AFB0();
  v27 = swift_allocError();
  *v28 = 0xD000000000000035;
  *(v28 + 8) = 0x8000000247DD9070;
  *(v28 + 16) = 1;
  sub_247D7D8E0(v27, 0, 1, a2, a3, a4, v30, a6);
}

void sub_247D82AF0(void *a1, id a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_247D82B18()
{
  v1 = sub_247DD20DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 26) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_247D82C0C(void *a1, char a2)
{
  v5 = *(sub_247DD20DC() - 8);
  v6 = (*(v5 + 80) + 26) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v2 + 24);

  return sub_247D7D510(a1, a2 & 1, v8, v13, v2 + v6, v9, v11, v12);
}

uint64_t sub_247D82CD0()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

id sub_247D82D5C(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_247D6C0B0(a1, a2);
  }
}

void sub_247D82D68(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_247D6C0AC(a1, a2);
  }
}

uint64_t sub_247D82DA8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_247DD25EC();
  v6 = nw_protocol_copy_http_definition();
  v7 = nw_content_context_copy_protocol_metadata(v5, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v7)
  {
    if (qword_27EE73260 == -1)
    {
LABEL_8:
      v17 = sub_247DD23CC();
      __swift_project_value_buffer(v17, qword_27EE7B878);

      v18 = sub_247DD23AC();
      v19 = sub_247DD2F0C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        aBlock = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_247D72868(a2, a3, &aBlock);
        _os_log_impl(&dword_247D56000, v18, v19, "%s could not extract HTTP definition for HTTP request", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v21);
        MEMORY[0x24C1BAF60](v21, -1, -1);
        MEMORY[0x24C1BAF60](v20, -1, -1);
      }

      return 0;
    }

LABEL_25:
    swift_once();
    goto LABEL_8;
  }

  if (nw_http_metadata_copy_request())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_247D83924;
    *(v9 + 24) = v8;
    v38 = sub_247D83B9C;
    v39 = v9;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_247D749D4;
    v37 = &block_descriptor_115;
    v10 = _Block_copy(&aBlock);

    nw_http_request_access_method();
    _Block_release(v10);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if (v10)
    {
      __break(1u);
    }

    else
    {
      v11 = swift_allocObject();
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = a2;
      v32 = a2;
      v12[4] = a3;
      a2 = swift_allocObject();
      *(a2 + 16) = sub_247D83940;
      *(a2 + 24) = v12;
      v38 = sub_247D8394C;
      v39 = a2;
      aBlock = MEMORY[0x277D85DD0];
      v35 = 1107296256;
      v36 = sub_247D7FA30;
      v37 = &block_descriptor_127;
      v13 = _Block_copy(&aBlock);

      nw_http_request_access_path();
      _Block_release(v13);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        swift_beginAccess();
        if (*(v11 + 24))
        {
          v15 = *(v11 + 16);

          swift_unknownObjectRelease();
          return v15;
        }

        if (qword_27EE73260 != -1)
        {
          swift_once();
        }

        v27 = sub_247DD23CC();
        __swift_project_value_buffer(v27, qword_27EE7B878);

        v28 = sub_247DD23AC();
        v29 = sub_247DD2F0C();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v33 = v31;
          *v30 = 136315138;
          *(v30 + 4) = sub_247D72868(v32, a3, &v33);
          _os_log_impl(&dword_247D56000, v28, v29, "%s got bad request with no HTTP path", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v31);
          MEMORY[0x24C1BAF60](v31, -1, -1);
          MEMORY[0x24C1BAF60](v30, -1, -1);
        }

        swift_unknownObjectRelease();
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  if (qword_27EE73260 != -1)
  {
    swift_once();
  }

  v22 = sub_247DD23CC();
  __swift_project_value_buffer(v22, qword_27EE7B878);

  v23 = sub_247DD23AC();
  v24 = sub_247DD2F0C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_247D72868(a2, a3, &aBlock);
    _os_log_impl(&dword_247D56000, v23, v24, "%s could not extract HTTP request metadata", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x24C1BAF60](v26, -1, -1);
    MEMORY[0x24C1BAF60](v25, -1, -1);
  }

LABEL_21:
  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_247D83444(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a7;
  v13 = sub_247DD2ABC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v33 = a3;
  v34 = a6;
  v18 = a5;
  v19 = v35;
  v17[4] = a4;
  v17[5] = v18;
  v17[6] = a6;
  v17[7] = v19;
  v20 = *(a1 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_queue);
  *v16 = v20;
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);

  swift_unknownObjectRetain();

  v21 = v20;
  LOBYTE(v20) = sub_247DD2ADC();
  (*(v14 + 8))(v16, v13);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  v22 = *(a1 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection);
  if (v22)
  {
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = v22;
    v24[4] = sub_247D8386C;
    v24[5] = v17;
    swift_retain_n();

    sub_247DD262C();
  }

  if (qword_27EE73260 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v25 = sub_247DD23CC();
  __swift_project_value_buffer(v25, qword_27EE7B878);
  v26 = sub_247DD23AC();
  v27 = sub_247DD2F0C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v36 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_247D72868(0xD000000000000023, 0x8000000247DD90B0, &v36);
    _os_log_impl(&dword_247D56000, v26, v27, "%s connection is nil", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x24C1BAF60](v29, -1, -1);
    MEMORY[0x24C1BAF60](v28, -1, -1);
  }

  sub_247D6AFB0();
  v30 = swift_allocError();
  *v31 = 0xD000000000000035;
  *(v31 + 8) = 0x8000000247DD9070;
  *(v31 + 16) = 1;
  sub_247D7BBE8(v30, 0, 1, a2, v33, a4, v18, v34, v19);
}

uint64_t sub_247D8381C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_86Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_247D838EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247D83974()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_120Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_247D83A18()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247D83AA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_247D83AE8()
{
  result = qword_27EE739D0;
  if (!qword_27EE739D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE739D0);
  }

  return result;
}

uint64_t sub_247D83BA0(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;
  sub_247DD2F9C();
  sub_247D83C38(sub_247D84244, v4, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v2, v5);
  if (v5[1])
  {
    return v5[0];
  }

  else
  {
    return 7104878;
  }
}

uint64_t sub_247D83C38@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t sub_247D83FA4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_247DD23CC();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_247DD23BC();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_247D840F0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_247DD23CC();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_247DD23BC();
}

uint64_t sub_247D84174@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_247DD2CFC();
  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t sub_247D84264()
{
  v0 = sub_247DD23CC();
  __swift_allocate_value_buffer(v0, qword_27EE739E0);
  v1 = __swift_project_value_buffer(v0, qword_27EE739E0);
  if (qword_27EE73268 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EE7B890);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_247D8432C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6164696C61766E69;
  }

  else
  {
    v3 = 0x7964616572;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xEB00000000646574;
  }

  if (*a2)
  {
    v5 = 0x6164696C61766E69;
  }

  else
  {
    v5 = 0x7964616572;
  }

  if (*a2)
  {
    v6 = 0xEB00000000646574;
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
    v8 = sub_247DD322C();
  }

  return v8 & 1;
}

uint64_t sub_247D843D8()
{
  sub_247DD32BC();
  sub_247DD2D7C();

  return sub_247DD32EC();
}

uint64_t sub_247D84460(uint64_t a1)
{
  sub_247DD2D7C();
}

uint64_t sub_247D844D4(uint64_t a1)
{
  sub_247DD32BC();
  sub_247DD2D7C();

  return sub_247DD32EC();
}

uint64_t sub_247D84558@<X0>(char *a2@<X8>)
{
  v3 = sub_247DD312C();

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

void sub_247D845B8(uint64_t *a1@<X8>)
{
  v2 = 0x7964616572;
  if (*v1)
  {
    v2 = 0x6164696C61766E69;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000646574;
  }

  *a1 = v2;
  a1[1] = v3;
}

void *sub_247D845FC(char *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v36 = a1;
  v37 = a2;
  v8 = sub_247DD249C();
  MEMORY[0x28223BE20](v8 - 8);
  v38 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NetworkDescriptor(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v33 - v14;
  v16 = sub_247DD2F6C();
  v34 = *(v16 - 8);
  v35 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_247DD2F3C();
  MEMORY[0x28223BE20](v19);
  v20 = sub_247DD2A2C();
  MEMORY[0x28223BE20](v20 - 8);
  v4[2] = 0;
  v4[3] = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_isReady) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_terminated) = 0;
  v21 = MEMORY[0x277D84F90];
  *(v4 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_requestQueue) = MEMORY[0x277D84F90];
  v22 = v37;
  v4[4] = v36;
  v4[5] = v22;
  if (a4)
  {
    v23 = a4;
  }

  else
  {
    v24 = sub_247D6A0F4();
    v36 = "";
    v37 = v24;
    sub_247DD2A1C();
    v39 = v21;
    v33[1] = sub_247D86968(&unk_27EE73390, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE739B0, &unk_247DD3F70);
    sub_247D869B0(&qword_27EE733A0, &unk_27EE739B0, &unk_247DD3F70);
    a4 = 0;
    sub_247DD2FFC();
    (*(v34 + 104))(v18, *MEMORY[0x277D85260], v35);
    v23 = sub_247DD2F8C();
  }

  v4[6] = v23;
  sub_247D86A04(a3, v4 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_descriptor);
  sub_247D86A04(a3, v15);
  v25 = a4;
  v26 = v23;
  sub_247D873E8(v38);
  sub_247D879F4();
  sub_247DD26FC();
  swift_allocObject();
  v27 = sub_247DD265C();
  sub_247D86A04(v15, v13);
  type metadata accessor for CosmoConnection(0);
  swift_allocObject();
  v28 = sub_247D8AE8C(v13, 1, v27, v23);

  sub_247D8690C(a3);
  sub_247D8690C(v15);
  *(v5 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_connection) = v28;
  v29 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v30 = *(v28 + 2);
  v31 = *(v28 + 3);
  *(v28 + 2) = sub_247D86A68;
  *(v28 + 3) = v29;

  sub_247D6A24C(v30, v31);

  return v5;
}

uint64_t sub_247D84A90(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = v2;
    sub_247D85190(&v4);
  }

  return result;
}

uint64_t sub_247D84B1C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_connection);
  v2 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *(v1 + 32) = sub_247D86904;
  *(v1 + 40) = v2;

  sub_247D6A24C(v3, v4);

  if (qword_27EE732A0 != -1)
  {
    swift_once();
  }

  v5 = sub_247DD23CC();
  __swift_project_value_buffer(v5, qword_27EE739E0);

  v6 = sub_247DD23AC();
  v7 = sub_247DD2F2C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = sub_247D86568();
    v12 = sub_247D72868(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_247D56000, v6, v7, "Starting channel, %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x24C1BAF60](v9, -1, -1);
    MEMORY[0x24C1BAF60](v8, -1, -1);
  }

  return sub_247D8BC28();
}

uint64_t sub_247D84CF8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247D858DC(v6, a2, a3);
  }

  return result;
}

uint64_t sub_247D84D94(uint64_t a1, uint64_t a2)
{
  v5 = sub_247DD2A0C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_247DD2A2C();
  v9 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + 48);
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v16 = MEMORY[0x277D84F90];
  sub_247D86968(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D869B0(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v11, v8, v12);
  _Block_release(v12);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v15);
}

uint64_t sub_247D85024(uint64_t a1)
{
  if (qword_27EE732A0 != -1)
  {
    swift_once();
  }

  v1 = sub_247DD23CC();
  __swift_project_value_buffer(v1, qword_27EE739E0);

  v2 = sub_247DD23AC();
  v3 = sub_247DD2F2C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v6 = sub_247D86568();
    v8 = sub_247D72868(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_247D56000, v2, v3, "Stopping channel, %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x24C1BAF60](v5, -1, -1);
    MEMORY[0x24C1BAF60](v4, -1, -1);
  }

  return sub_247D8E4CC();
}

uint64_t sub_247D85190(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  v9 = v2[6];
  *v7 = v9;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = sub_247DD2ADC();
  result = (*(v5 + 8))(v7, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_12;
  }

  if (v8)
  {
    if ((*(v2 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_terminated) & 1) == 0)
    {
      if (qword_27EE732A0 != -1)
      {
        swift_once();
      }

      v12 = sub_247DD23CC();
      __swift_project_value_buffer(v12, qword_27EE739E0);

      v13 = sub_247DD23AC();
      v14 = sub_247DD2F2C();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v36 = v16;
        *v15 = 136315394;
        v35[7] = v8;
        v17 = sub_247DD2CFC();
        v19 = sub_247D72868(v17, v18, &v36);

        *(v15 + 4) = v19;
        *(v15 + 12) = 2080;
        v20 = sub_247D86568();
        v22 = sub_247D72868(v20, v21, &v36);

        *(v15 + 14) = v22;
        _os_log_impl(&dword_247D56000, v13, v14, "Channel invalidated, connection-state=%s %s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v16, -1, -1);
        MEMORY[0x24C1BAF60](v15, -1, -1);
      }

      v23 = v2[2];
      if (v23)
      {
        v24 = v2[3];

        v23(1);
        sub_247D6A24C(v23, v24);
      }

      return sub_247D855C0();
    }

    return result;
  }

  *(v2 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_isReady) = 1;
  if (qword_27EE732A0 != -1)
  {
    goto LABEL_19;
  }

LABEL_12:
  v25 = sub_247DD23CC();
  __swift_project_value_buffer(v25, qword_27EE739E0);

  v26 = sub_247DD23AC();
  v27 = sub_247DD2F2C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v36 = v29;
    *v28 = 136315138;
    v30 = sub_247D86568();
    v32 = sub_247D72868(v30, v31, &v36);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_247D56000, v26, v27, "Channel ready, %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x24C1BAF60](v29, -1, -1);
    MEMORY[0x24C1BAF60](v28, -1, -1);
  }

  v33 = v2[2];
  if (v33)
  {
    v34 = v2[3];

    v33(0);
    sub_247D6A24C(v33, v34);
  }

  return sub_247D85CC4();
}

uint64_t sub_247D855C0()
{
  v2 = v0;
  v3 = sub_247DD2ABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v2 + 48);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v8 = v7;
  LOBYTE(v7) = sub_247DD2ADC();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  *(v2 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_isReady) = 0;
  *(v2 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_terminated) = 1;
  v1 = OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_requestQueue;
  result = swift_beginAccess();
  if (!*(*(v2 + v1) + 16))
  {
    return result;
  }

  if (qword_27EE732A0 != -1)
  {
    goto LABEL_13;
  }

LABEL_4:
  v10 = sub_247DD23CC();
  __swift_project_value_buffer(v10, qword_27EE739E0);

  v11 = sub_247DD23AC();
  v12 = sub_247DD2F2C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v25 = v14;
    *v13 = 136315138;
    v15 = sub_247D86568();
    v17 = sub_247D72868(v15, v16, &v25);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_247D56000, v11, v12, "Failing pending requests, %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x24C1BAF60](v14, -1, -1);
    MEMORY[0x24C1BAF60](v13, -1, -1);
  }

  v18 = *(v2 + v1);
  v19 = *(v18 + 16);
  if (v19)
  {

    v20 = v18 + 64;
    v24 = xmmword_247DD52A0;
    do
    {
      v21 = *(v20 - 24);
      v22 = *(v20 - 16);
      v23 = *(v20 - 8);
      v25 = v24;
      v26 = 258;
      sub_247D6A2E8(v21, v22);

      v23(&v25);
      sub_247D6A1F8(v21, v22);

      v20 += 40;
      --v19;
    }

    while (v19);
  }

  *(v2 + v1) = MEMORY[0x277D84F90];
}

void sub_247D858DC(int a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_247DD2ABC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 48);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v12 = v11;
  LOBYTE(v11) = sub_247DD2ADC();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    swift_once();
LABEL_10:
    v20 = sub_247DD23CC();
    __swift_project_value_buffer(v20, qword_27EE739E0);
    sub_247D6C0B0(a2, a3);

    v21 = sub_247DD23AC();
    v22 = sub_247DD2F0C();
    sub_247D6C0AC(a2, a3);

    if (!os_log_type_enabled(v21, v22))
    {
LABEL_25:

      return;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v38 = v24;
    *v23 = 67109634;
    *(v23 + 4) = a1;
    *(v23 + 8) = 2080;
    if (a3 >> 60 == 15)
    {
      v25 = 0xE300000000000000;
      v26 = 7104878;
LABEL_24:
      v33 = sub_247D72868(v26, v25, &v38);

      *(v23 + 10) = v33;
      *(v23 + 18) = 2080;
      v34 = sub_247D86568();
      v36 = sub_247D72868(v34, v35, &v38);

      *(v23 + 20) = v36;
      _os_log_impl(&dword_247D56000, v21, v22, "[Received] Unexpected message received with no pending requests, type=%u size=%s %s", v23, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v24, -1, -1);
      MEMORY[0x24C1BAF60](v23, -1, -1);
      goto LABEL_25;
    }

    v27 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v27 != 2)
      {
        v28 = 0;
        goto LABEL_23;
      }

      v30 = *(a2 + 16);
      v29 = *(a2 + 24);
      v31 = __OFSUB__(v29, v30);
      v28 = v29 - v30;
      if (!v31)
      {
        goto LABEL_23;
      }

      __break(1u);
    }

    else if (!v27)
    {
      v28 = BYTE6(a3);
LABEL_23:
      v37[1] = v28;
      v26 = sub_247DD2CFC();
      v25 = v32;
      goto LABEL_24;
    }

    LODWORD(v28) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      __break(1u);
      return;
    }

    v28 = v28;
    goto LABEL_23;
  }

  v13 = OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_requestQueue;
  swift_beginAccess();
  v14 = *(v3 + v13);
  if (!v14[2])
  {
    if (qword_27EE732A0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

  swift_beginAccess();
  v15 = v14[5];
  v16 = v14[6];
  v17 = v14[7];
  sub_247D6A2E8(v15, v16);

  sub_247DA4E7C(0, 1);
  swift_endAccess();
  if (a3 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    v18 = a2;
  }

  v19 = 0xC000000000000000;
  if (a3 >> 60 != 15)
  {
    v19 = a3;
  }

  v38 = v18;
  v39 = v19;
  v40 = 0;
  sub_247D6C0B0(a2, a3);
  v17(&v38);
  sub_247D6A1F8(v15, v16);

  sub_247D868B0(v38, v39, v40, SHIBYTE(v40));
}

uint64_t sub_247D85CC4()
{
  v1 = v0;
  v44 = sub_247DD2A0C();
  i = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_247DD2A2C();
  v4 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_247DD2ABC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + 48);
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v11 = v10;
  v12 = sub_247DD2ADC();
  v14 = *(v7 + 8);
  v13 = v7 + 8;
  v14(v9, v6);
  if ((v12 & 1) == 0)
  {
    goto LABEL_13;
  }

  v13 = OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_requestQueue;
  result = swift_beginAccess();
  if (*(*(v1 + v13) + 16))
  {
    if (qword_27EE732A0 != -1)
    {
      goto LABEL_14;
    }

    while (1)
    {
      v16 = sub_247DD23CC();
      __swift_project_value_buffer(v16, qword_27EE739E0);

      v17 = sub_247DD23AC();
      v18 = sub_247DD2F2C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = v4;
        v21 = swift_slowAlloc();
        aBlock[0] = v21;
        *v19 = 136315138;
        v22 = sub_247D86568();
        v24 = sub_247D72868(v22, v23, aBlock);

        *(v19 + 4) = v24;
        _os_log_impl(&dword_247D56000, v17, v18, "[Flush] Flushing request-queue, %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v21);
        v25 = v21;
        v4 = v20;
        MEMORY[0x24C1BAF60](v25, -1, -1);
        MEMORY[0x24C1BAF60](v19, -1, -1);
      }

      result = *(v1 + v13);
      v26 = *(result + 16);
      if (!v26)
      {
        break;
      }

      v40 = *(v1 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_connection);
      v38 = v49;
      v39 = OBJC_IVAR____TtC5Cosmo15CosmoConnection_queue;
      v37 = (i + 1);
      v36 = (v4 + 8);

      for (i = (v35 + 64); ; i += 5)
      {
        v13 = *(i - 8);
        if (!v13)
        {
          break;
        }

        v27 = *(i - 3);
        v28 = *(i - 2);
        v29 = v40;
        v30 = *(v40 + v39);
        v45 = *i;
        v46 = v30;
        v31 = swift_allocObject();
        *(v31 + 16) = v29;
        *(v31 + 24) = v13;
        *(v31 + 32) = v27;
        *(v31 + 40) = v28;
        v49[2] = sub_247D86888;
        v49[3] = v31;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v49[0] = sub_247D598D4;
        v49[1] = &block_descriptor_1;
        v32 = _Block_copy(aBlock);
        sub_247D6A2E8(v27, v28);

        sub_247D6A2E8(v27, v28);
        v4 = v41;
        sub_247DD2A1C();
        v47 = MEMORY[0x277D84F90];
        sub_247D86968(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
        sub_247D869B0(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
        v33 = v43;
        v1 = v44;
        sub_247DD2FFC();
        MEMORY[0x24C1BA270](0, v4, v33, v32);
        _Block_release(v32);
        sub_247D6A1F8(v27, v28);

        (*v37)(v33, v1);
        (*v36)(v4, v42);

        if (!--v26)
        {
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      swift_once();
    }
  }

  return result;
}

uint64_t sub_247D86294()
{
  sub_247D6A24C(*(v0 + 16), *(v0 + 24));

  sub_247D8690C(v0 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_descriptor);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for CosmoSerialChannelClient(uint64_t a1)
{
  result = qword_27EE73A18;
  if (!qword_27EE73A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247D86384(uint64_t a1)
{
  result = type metadata accessor for NetworkDescriptor(319);
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

uint64_t sub_247D86460(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_247D864A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_247D86514()
{
  result = qword_27EE73A28;
  if (!qword_27EE73A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73A28);
  }

  return result;
}

uint64_t sub_247D86568()
{
  v1 = 0xE500000000000000;
  v15[0] = 0x3D656D616ELL;
  v15[1] = 0xE500000000000000;
  MEMORY[0x24C1BA0A0](*(v0 + 32), *(v0 + 40));
  strcpy(v15, "descriptor=");
  HIDWORD(v15[1]) = -352321536;
  v2 = NetworkDescriptor.description.getter();
  MEMORY[0x24C1BA0A0](v2);

  v4 = v15[0];
  v3 = v15[1];
  strcpy(v15, "isReady=");
  BYTE1(v15[1]) = 0;
  WORD1(v15[1]) = 0;
  HIDWORD(v15[1]) = -402653184;
  if (*(v0 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_isReady))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_isReady))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x24C1BA0A0](v5, v6);

  v8 = v15[0];
  v7 = v15[1];
  strcpy(v15, "isTerminated=");
  HIWORD(v15[1]) = -4864;
  if (*(v0 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_terminated))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_terminated))
  {
    v1 = 0xE400000000000000;
  }

  MEMORY[0x24C1BA0A0](v9, v1);

  v10 = OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_requestQueue;
  swift_beginAccess();
  v11 = 0xE000000000000000;
  if (*(*(v0 + v10) + 16))
  {
    sub_247DD304C();

    v12 = sub_247DD321C();
    MEMORY[0x24C1BA0A0](v12);

    v13 = 0xD000000000000014;
    v11 = 0x8000000247DD9210;
  }

  else
  {
    v13 = 0;
  }

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](v4, v3);

  MEMORY[0x24C1BA0A0](v13, v11);

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](v8, v7);

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](v15[0], v15[1]);

  return 0x3D656D616ELL;
}

uint64_t sub_247D86838()
{

  v1 = *(v0 + 40);
  if (v1 >> 60 != 15)
  {
    sub_247D6A1F8(*(v0 + 32), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247D868B0(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    return sub_247D6AD68(a1, a2, a3);
  }

  else
  {
    return sub_247D6A1F8(a1, a2);
  }
}

uint64_t sub_247D868CC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247D8690C(uint64_t a1)
{
  v2 = type metadata accessor for NetworkDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247D86968(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_247D869B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_247D86A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247D86A80()
{
  type metadata accessor for CosmoMessageProtocol();
  sub_247D87394();
  sub_247DD287C();
  swift_allocObject();
  result = sub_247DD286C();
  qword_27EE73A30 = result;
  return result;
}

uint64_t static CosmoMessageProtocol.definition.getter()
{
  if (qword_27EE732A8 != -1)
  {
    swift_once();
  }
}

uint64_t CosmoMessageProtocol.__allocating_init(framer:)(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_247D86BA4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CD8EB8];
  v3 = sub_247DD288C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t NWProtocolFramer.Message.messageTypeHeader.getter()
{
  sub_247DD28BC();
  if (v3)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v1;
    }
  }

  else
  {
    sub_247D86FF4(v2);
    return 0;
  }

  return result;
}

uint64_t NWProtocolFramer.Message.init(messageTypeHeader:)(int a1)
{
  if (qword_27EE732A8 != -1)
  {
    swift_once();
  }

  v1 = sub_247DD289C();

  sub_247DD28CC();

  return v1;
}

uint64_t sub_247D86D88(uint64_t a1)
{

  type metadata accessor for CosmoMessageProtocol();

  return swift_allocObject();
}

uint64_t sub_247D86DBC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  sub_247DD28BC();
  if (v16)
  {
    if (swift_dynamicCast())
    {
      v4 = v12[0];
      goto LABEL_6;
    }
  }

  else
  {
    sub_247D86FF4(&v14);
  }

  v4 = 0;
LABEL_6:
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
  }

  if (HIDWORD(a3))
  {
    goto LABEL_10;
  }

  v12[0] = v4;
  v13 = a3;
  v14 = sub_247D99734(v12, 4uLL);
  v15 = v5;
  v6 = sub_247D99734(&v13, 4uLL);
  v8 = v7;
  sub_247DD218C();
  sub_247D6A1F8(v6, v8);
  v9 = v14;
  v10 = v15;
  sub_247DD290C();
  sub_247D6A1F8(v9, v10);
  return sub_247DD291C();
}

uint64_t sub_247D86FF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73A38, &qword_247DD54F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247D87340(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 0;
  }

  result = *(v3 + 16);
  if (a1)
  {
    if (a2 - a1 >= result)
    {
      v6 = *(v3 + 24);
      *v6 = *a1;
      *(v6 + 8) = 0;
    }

    else
    {
      return 0;
    }
  }

  else if (result <= 0)
  {
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t sub_247D87394()
{
  result = qword_27EE73A48;
  if (!qword_27EE73A48)
  {
    type metadata accessor for CosmoMessageProtocol();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73A48);
  }

  return result;
}

uint64_t sub_247D873E8@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_247DD225C();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_247DD248C();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73AD8, &qword_247DD5650);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v45 - v9;
  v11 = sub_247DD254C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NetworkDescriptor(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C00, &qword_247DD55F8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v45 - v22;
  sub_247D86A04(v2, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v34 = *v17;
      v33 = *(v17 + 1);
      v51 = v34;
      v52 = v33;
      SharedSecret.advertisementIdentifer.getter(v5);
      sub_247D887C8(v50);
      sub_247D6A1F8(v34, v33);
      return (*(v47 + 8))(v5, v48);
    }

    else
    {
      sub_247D6A1F8(*(v17 + 1), *(v17 + 2));
      sub_247D6A1F8(*(v17 + 3), *(v17 + 4));
      swift_unknownObjectRelease();
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348);
      v36 = v47;
      v37 = &v17[*(v35 + 96)];
      v38 = v48;
      (*(v47 + 32))(v5, v37, v48);
      sub_247D887C8(v50);
      return (*(v36 + 8))(v5, v38);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73AA0, &qword_247DD5630);
      v26 = &v17[*(v25 + 48)];

      v17 = v26;
    }

    v27 = v49;
    sub_247D89BE0(v17, v23);
    sub_247DD255C();
    result = (*(v12 + 48))(v10, 1, v11);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v29 = *(v12 + 32);
      v29(v14, v10, v11);
      sub_247D89BE0(v23, v21);
      v31 = v45;
      v30 = v46;
      v32 = *(v45 + 48);
      if (v32(v21, 1, v46) == 1)
      {
        sub_247DD247C();
        if (v32(v21, 1, v30) != 1)
        {
          sub_247D6BAD4(v21, &unk_27EE73C00, &qword_247DD55F8);
        }
      }

      else
      {
        (*(v31 + 32))(v27, v21, v30);
      }

      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73AE0, &qword_247DD5658) + 48);
      v40 = v50;
      v29(v50, v14, v11);
      v41 = *MEMORY[0x277CD8AD8];
      v42 = sub_247DD245C();
      (*(*(v42 - 8) + 104))(v40, v41, v42);
      (*(v31 + 32))(&v40[v39], v27, v30);
      v43 = *MEMORY[0x277CD8B08];
      v44 = sub_247DD249C();
      return (*(*(v44 - 8) + 104))(v40, v43, v44);
    }
  }

  return result;
}

uint64_t sub_247D879F4()
{
  v1 = sub_247DD256C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NetworkDescriptor(0);
  MEMORY[0x28223BE20](v5);
  v7 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D86A04(v0, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v19 = *v7;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73AA0, &qword_247DD5630);
      v21 = v20;
      v22 = *&v7[*(v20 + 64)];
      if (v22)
      {
        KeyPair = *&v7[*(v20 + 64)];
      }

      else
      {
        KeyPair = createKeyPair(*MEMORY[0x277CDC040], 256);
        v22 = 0;
      }

      v62 = *(v21 + 48);
      v61 = v22;
      v47 = secIdentityFromKeyPair(KeyPair);
      v48 = publicKeyFromIdentity(v47);
      v49 = sub_247DD217C();
      v51 = v50;

      v52 = swift_allocObject();
      *(v52 + 16) = v47;
      *(v52 + 24) = v19;
      *(v52 + 32) = v49;
      *(v52 + 40) = v51;
      *(v52 + 48) = v49;
      *(v52 + 56) = v51;
      *(v52 + 64) = 1;
      v67 = sub_247D8A494;
      v68 = v52;
      aBlock = MEMORY[0x277D85DD0];
      v64 = 1107296256;
      v65 = sub_247D88768;
      v66 = &block_descriptor_8;
      v53 = _Block_copy(&aBlock);
      sub_247D6A2E8(v49, v51);
      sub_247D6A2E8(v49, v51);
      swift_unknownObjectRetain();

      nw_parameters_create_quic(v53);
      _Block_release(v53);
      nw_parameters_set_attach_protocol_listener();
      sub_247DD276C();
      swift_unknownObjectRetain();
      v14 = sub_247DD277C();
      sub_247DD270C();
      options = nw_http3_create_options();
      v55 = sub_247DD274C();
      v56 = nw_parameters_copy_default_protocol_stack(v55);
      swift_unknownObjectRelease();
      nw_protocol_stack_prepend_application_protocol(v56, options);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      sub_247D6A1F8(v49, v51);
      swift_unknownObjectRelease();
      v15 = &v7[v62];
    }

    else
    {
      v9 = sub_247DD2EAC();
      *(v9 + 16) = 8;
      *(v9 + 32) = 0;
      v10 = (v9 + 32);
      SecRandomCopyBytes(*MEMORY[0x277CDC540], 8uLL, (v9 + 32));
      v11 = sub_247D99734(v10, 8uLL);
      v13 = v12;

      aBlock = v11;
      v64 = v13;
      v14 = sub_247D88300(0, &aBlock, 0);
      sub_247D6A1F8(aBlock, v64);
      v15 = v7;
    }

    sub_247D6BAD4(v15, &unk_27EE73C00, &qword_247DD55F8);
    return v14;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v17 = *(v7 + 1);
    v18 = v7[16];
    aBlock = *v7;
    v16 = aBlock;
    v64 = v17;
    v14 = sub_247D88300(v18, &aBlock, 1);
    sub_247D6A1F8(v16, v17);
    return v14;
  }

  v24 = *v7;
  v59 = v2;
  v26 = *(v7 + 1);
  v62 = *(v7 + 2);
  v25 = v62;
  v28 = *(v7 + 3);
  v27 = *(v7 + 4);
  v29 = *(v7 + 5);
  v58[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348);
  v30 = v7[*(v58[0] + 112)];
  v60 = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v24;
  *(v31 + 32) = v26;
  *(v31 + 40) = v25;
  *(v31 + 48) = v28;
  *(v31 + 56) = v27;
  *(v31 + 64) = v30;
  v67 = sub_247D89C54;
  v68 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_247D88768;
  v66 = &block_descriptor_2;
  v32 = _Block_copy(&aBlock);
  v58[1] = v29;
  swift_unknownObjectRetain();
  v61 = v26;
  v33 = v26;
  v34 = v62;
  v35 = v28;
  sub_247D6A2E8(v33, v62);
  sub_247D6A2E8(v28, v27);

  nw_parameters_create_quic(v32);
  _Block_release(v32);
  nw_parameters_set_attach_protocol_listener();
  sub_247DD276C();
  swift_unknownObjectRetain();
  v14 = sub_247DD277C();
  sub_247DD270C();
  (*(v59 + 104))(v4, *MEMORY[0x277CD8CE8], v1);
  sub_247DD273C();
  if (v60 == 1)
  {
    v36 = nw_http3_create_options();
    v37 = sub_247DD274C();
    v38 = nw_parameters_copy_default_protocol_stack(v37);
    swift_unknownObjectRelease();
    nw_protocol_stack_prepend_application_protocol(v38, v36);
    sub_247D6A1F8(v28, v27);
    sub_247D6A1F8(v61, v34);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_14:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v45 = *(v58[0] + 96);
    v46 = sub_247DD225C();
    (*(*(v46 - 8) + 8))(&v7[v45], v46);
    return v14;
  }

  v39 = v27;
  v40 = v35;
  v41 = v61;
  if (qword_27EE732A8 != -1)
  {
    swift_once();
  }

  sub_247DD28EC();
  swift_allocObject();

  v42 = sub_247DD28DC();
  sub_247DD272C();

  v43 = sub_247DD271C();
  if (!(*v44 >> 62) || (result = sub_247DD30BC(), (result & 0x8000000000000000) == 0))
  {
    sub_247DA4D8C(0, 0, v42);

    v43(&aBlock, 0);
    sub_247D6A1F8(v40, v39);
    sub_247D6A1F8(v41, v62);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_247D88148()
{
  v1 = v0;
  v2 = type metadata accessor for NetworkDescriptor(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D86A04(v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v7 = v4[16];
      sub_247D6A1F8(*v4, *(v4 + 1));
      if (v7)
      {
        return 5459028;
      }

      else
      {
        return 5260116;
      }
    }

    else
    {
      v6 = 1128879441;
      sub_247D6A1F8(*(v4 + 1), *(v4 + 2));
      sub_247D6A1F8(*(v4 + 3), *(v4 + 4));
      swift_unknownObjectRelease();
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348) + 96);
      v11 = sub_247DD225C();
      (*(*(v11 - 8) + 8))(&v4[v10], v11);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v6 = 1128879441;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73AA0, &qword_247DD5630);
    v9 = *(v8 + 48);

    sub_247D6BAD4(&v4[v9], &unk_27EE73C00, &qword_247DD55F8);
  }

  else
  {
    v6 = 5260116;
    sub_247D6BAD4(v4, &unk_27EE73C00, &qword_247DD55F8);
  }

  return v6;
}

uint64_t sub_247D88300(char a1, uint64_t *a2, char a3)
{
  v6 = sub_247DD256C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = a2[1];
  sub_247DD27BC();
  swift_allocObject();
  v12 = sub_247DD27AC();
  sub_247DD279C();
  sub_247DD278C();
  v13 = 0;
  if (a1)
  {
    v19[0] = v10;
    v19[1] = v11;
    v13 = sub_247D89C70(v19);
  }

  sub_247DD276C();

  v14 = MEMORY[0x24C1B9A50](v13, v12);
  sub_247DD270C();
  if (a3)
  {
    (*(v7 + 104))(v9, *MEMORY[0x277CD8CE8], v6);
    sub_247DD273C();
  }

  if (qword_27EE732A8 != -1)
  {
    swift_once();
  }

  sub_247DD28EC();
  swift_allocObject();

  v15 = sub_247DD28DC();
  sub_247DD272C();

  v16 = sub_247DD271C();
  if (*v17 >> 62 && (result = sub_247DD30BC(), result < 0))
  {
    __break(1u);
  }

  else
  {
    sub_247DA4D8C(0, 0, v15);

    v16(v19, 0);

    return v14;
  }

  return result;
}

uint64_t sub_247D88588(NSObject *a1, NSObject *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, char a8)
{
  v15 = nw_quic_copy_sec_protocol_options(a1);
  sec_protocol_options_set_local_identity(v15, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73AD0, &qword_247DD5648);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_247DD54D0;
  if (a3)
  {
    *(v16 + 32) = a4;
    *(v16 + 40) = a5;
    sub_247D6A2E8(a4, a5);
    v17 = sub_247DD2E8C();

    sec_protocol_options_set_client_raw_public_key_certificates();

    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_247DD54D0;
    *(v18 + 32) = a6;
    *(v18 + 40) = a7;
    v19 = a6;
    v20 = a7;
  }

  else
  {
    *(v16 + 32) = a6;
    *(v16 + 40) = a7;
    sub_247D6A2E8(a6, a7);
    v21 = sub_247DD2E8C();

    sec_protocol_options_set_client_raw_public_key_certificates();

    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_247DD54D0;
    *(v22 + 32) = a4;
    *(v22 + 40) = a5;
    v19 = a4;
    v20 = a5;
  }

  sub_247D6A2E8(v19, v20);
  v23 = sub_247DD2E8C();

  sec_protocol_options_set_server_raw_public_key_certificates();

  sec_protocol_options_set_peer_authentication_required(v15, 1);
  if (a8)
  {
    sec_protocol_options_clear_tls_application_protocols();
    sec_protocol_options_add_tls_application_protocol(v15, "h3");
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_247D88768(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_247D887C8@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73AA8, &qword_247DD5638);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  sub_247DD220C();
  v6 = sub_247DD2D1C();

  v7 = sub_247DD2D1C();
  v8 = sub_247DD2D1C();
  nw_endpoint_create_bonjour_service((v6 + 32), (v7 + 32), (v8 + 32));

  swift_unknownObjectRetain();
  sub_247DD24AC();
  v9 = sub_247DD249C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    sub_247D6BAD4(v5, &unk_27EE73AA8, &qword_247DD5638);
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v12 = sub_247DD23CC();
    __swift_project_value_buffer(v12, qword_27EE7B878);
    v13 = sub_247DD23AC();
    v14 = sub_247DD2F1C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_247D56000, v13, v14, "[Endpoint] Could not create NWEndpoint from nw_endpoint_t", v15, 2u);
      MEMORY[0x24C1BAF60](v15, -1, -1);
    }

    result = sub_247DD30AC();
    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return (*(v10 + 32))(a2, v5, v9);
  }

  return result;
}

uint64_t sub_247D88A6C()
{
  v1 = v0;
  v2 = sub_247DD225C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NetworkDescriptor(0);
  MEMORY[0x28223BE20](v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D86A04(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = *(v8 + 1);
      v18[0] = *v8;
      v11 = v18[0];
      v18[1] = v12;
      SharedSecret.advertisementIdentifer.getter(v5);
      v13 = sub_247DD220C();
      sub_247D6A1F8(v11, v12);
    }

    else
    {
      sub_247D6A1F8(*(v8 + 1), *(v8 + 2));
      sub_247D6A1F8(*(v8 + 3), *(v8 + 4));
      swift_unknownObjectRelease();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348);
      (*(v3 + 32))(v5, &v8[*(v17 + 96)], v2);
      v13 = sub_247DD220C();
    }

    (*(v3 + 8))(v5, v2);
    return v13;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73AA0, &qword_247DD5630);
      v15 = *(v14 + 48);

      v10 = &v8[v15];
    }

    else
    {
      v10 = v8;
    }

    sub_247D6BAD4(v10, &unk_27EE73C00, &qword_247DD55F8);
    return 0;
  }
}

uint64_t sub_247D88CCC()
{
  v1 = type metadata accessor for NetworkDescriptor(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D86A04(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_247D8690C(v3);
      return 0x63746F6D736F635FLL;
    }

    else
    {
      sub_247D6A1F8(*(v3 + 1), *(v3 + 2));
      sub_247D6A1F8(*(v3 + 3), *(v3 + 4));
      swift_unknownObjectRelease();
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348) + 96);
      v10 = sub_247DD225C();
      (*(*(v10 - 8) + 8))(&v3[v9], v10);
      return 0x75716F6D736F635FLL;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73AA0, &qword_247DD5630);
      v8 = *(v7 + 48);

      v5 = &v3[v8];
    }

    else
    {
      v5 = v3;
    }

    sub_247D6BAD4(v5, &unk_27EE73C00, &qword_247DD55F8);
    return 0;
  }
}

uint64_t sub_247D88E80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NetworkDescriptor(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D86A04(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_247D8690C(v6);
      strcpy(a1, "_cosmotcp._tcp");
      *(a1 + 15) = -18;
      *(a1 + 16) = xmmword_247DD55A0;
      v10 = *MEMORY[0x277CD90D8];
      v11 = sub_247DD295C();
      v12 = *(v11 - 8);
      (*(v12 + 104))(a1, v10, v11);
      return (*(v12 + 56))(a1, 0, 1, v11);
    }

    else
    {
      sub_247D6A1F8(*(v6 + 1), *(v6 + 2));
      sub_247D6A1F8(*(v6 + 3), *(v6 + 4));
      swift_unknownObjectRelease();
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348) + 96);
      *a1 = 0x75716F6D736F635FLL;
      *(a1 + 8) = 0xEF7064755F2E6369;
      *(a1 + 16) = xmmword_247DD55A0;
      v17 = *MEMORY[0x277CD90D8];
      v18 = sub_247DD295C();
      v19 = *(v18 - 8);
      (*(v19 + 104))(a1, v17, v18);
      (*(v19 + 56))(a1, 0, 1, v18);
      v20 = sub_247DD225C();
      return (*(*(v20 - 8) + 8))(&v6[v16], v20);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73AA0, &qword_247DD5630);
    v14 = *(v13 + 48);

    v15 = sub_247DD295C();
    (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
    return sub_247D6BAD4(&v6[v14], &unk_27EE73C00, &qword_247DD55F8);
  }

  else
  {
    v8 = sub_247DD295C();
    (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
    return sub_247D6BAD4(v6, &unk_27EE73C00, &qword_247DD55F8);
  }
}

uint64_t NetworkDescriptor.description.getter()
{
  v1 = sub_247D89318(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_247DD304C();
  MEMORY[0x24C1BA0A0](0xD00000000000001CLL, 0x8000000247DD92A0);
  v8 = sub_247D88148();
  MEMORY[0x24C1BA0A0](v8);

  MEMORY[0x24C1BA0A0](0x667265746E69202CLL, 0xED0000203A656361);
  MEMORY[0x24C1BA0A0](v1, v3);
  MEMORY[0x24C1BA0A0](0x696F70646E65202CLL, 0xEC000000203A746ELL);
  MEMORY[0x24C1BA0A0](v5, v7);

  MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_247D89318(uint64_t a1)
{
  v2 = sub_247DD225C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NetworkDescriptor(0);
  MEMORY[0x28223BE20](v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C00, &qword_247DD55F8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v31 - v13;
  sub_247D86A04(a1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v22 = 1818523489;
    if (EnumCaseMultiPayload == 2)
    {
      v23 = *v8;
      v24 = *(v8 + 1);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_247DD304C();

      v32 = 0xD000000000000014;
      v33 = 0x8000000247DD93A0;
      v31[0] = v23;
      v31[1] = v24;
      SharedSecret.advertisementIdentifer.getter(v5);
      sub_247D8A3EC(&unk_27EE73510, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v25 = sub_247DD321C();
      MEMORY[0x24C1BA0A0](v25);

      (*(v3 + 8))(v5, v2);
      sub_247D6A1F8(v23, v24);
    }

    else
    {
      sub_247D6A1F8(*(v8 + 1), *(v8 + 2));
      sub_247D6A1F8(*(v8 + 3), *(v8 + 4));
      swift_unknownObjectRelease();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348);
      (*(v3 + 32))(v5, &v8[*(v28 + 96)], v2);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_247DD304C();

      v32 = 0xD000000000000014;
      v33 = 0x8000000247DD93A0;
      sub_247D8A3EC(&unk_27EE73510, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v29 = sub_247DD321C();
      MEMORY[0x24C1BA0A0](v29);

      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73AA0, &qword_247DD5630);
      v17 = &v8[*(v16 + 48)];

      v8 = v17;
    }

    sub_247D89BE0(v8, v14);
    sub_247D89BE0(v14, v12);
    v18 = sub_247DD248C();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v12, 1, v18) == 1)
    {
      sub_247D6BAD4(v12, &unk_27EE73C00, &qword_247DD55F8);
      v20 = 0xE300000000000000;
      v21 = 7958113;
    }

    else
    {
      v26 = sub_247DD246C();
      v20 = v27;
      (*(v19 + 8))(v12, v18);
      v21 = v26;
    }

    v32 = 0x2E302E302E373231;
    v33 = 0xEA00000000003A31;
    MEMORY[0x24C1BA0A0](v21, v20);

    return 0x6B636162706F6F6CLL;
  }

  return v22;
}

uint64_t type metadata accessor for NetworkDescriptor(uint64_t a1)
{
  result = qword_27EE73A50;
  if (!qword_27EE73A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_247D8982C(uint64_t a1)
{
  sub_247D898C8();
  if (v1 <= 0x3F)
  {
    sub_247D89968(319);
    if (v2 <= 0x3F)
    {
      sub_247D899FC();
      if (v3 <= 0x3F)
      {
        sub_247D89A60(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_247D898C8()
{
  if (!qword_27EE73A60)
  {
    sub_247D89910(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27EE73A60);
    }
  }
}

void sub_247D89910(uint64_t a1)
{
  if (!qword_27EE73A68)
  {
    sub_247DD248C();
    v1 = sub_247DD2F9C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE73A68);
    }
  }
}

void sub_247D89968(uint64_t a1)
{
  if (!qword_27EE73A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EE73C00, &qword_247DD55F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE73A80, &unk_247DD5600);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27EE73A70);
    }
  }
}

void sub_247D899FC()
{
  if (!qword_27EE73A88)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EE73A88);
    }
  }
}

void sub_247D89A60(uint64_t a1)
{
  if (!qword_27EE73A90)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE73A98, &qword_247DD5610);
    sub_247DD225C();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27EE73A90);
    }
  }
}

uint64_t sub_247D89BE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C00, &qword_247DD55F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247D89C70(uint64_t *a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v57 = sub_247DD2A5C();
  v53 = *(v57 - 8);
  v2 = MEMORY[0x28223BE20](v57);
  v55 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v54 = &v45 - v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - v6;
  v8 = sub_247DD2CEC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73AB8, &qword_247DD5640);
  v52 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v13 = &v45 - v12;
  v14 = sub_247DD2B6C();
  v50 = *(v14 - 8);
  v51 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = a1[1];
  sub_247DD27EC();
  swift_allocObject();
  sub_247D6A2E8(v17, v18);
  v19 = sub_247DD27DC();
  *&v59 = v17;
  *(&v59 + 1) = v18;
  v20 = v16;
  sub_247DD2B5C();
  sub_247DD2CDC();
  v21 = sub_247DD2CBC();
  v23 = v22;
  v24 = *(v9 + 8);
  v56 = v8;
  v24(v11, v8);
  if (v23 >> 60 == 15)
  {
    goto LABEL_25;
  }

  *&v59 = v21;
  *(&v59 + 1) = v23;
  sub_247DD2C1C();
  sub_247D8A3EC(&qword_27EE73AC0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_247D8A434();
  v47 = v20;
  sub_247DD2C0C();
  sub_247D6A1F8(v59, *(&v59 + 1));
  v25 = v57;
  v49 = v13;
  sub_247DD2B7C();
  v46 = v19;
  v26 = sub_247DD27CC();
  v48 = v7;
  v27 = sub_247DD2A3C();
  sub_247DD2CDC();
  v28 = sub_247DD2CBC();
  v30 = v29;
  v24(v11, v56);
  if (v30 >> 60 == 15)
  {
    goto LABEL_26;
  }

  v31 = v30 >> 62;
  v32 = v55;
  if ((v30 >> 62) > 1)
  {
    if (v31 != 2)
    {
      v33 = v25;
      *(&v59 + 6) = 0;
      *&v59 = 0;
      goto LABEL_16;
    }

    v56 = v27;
    v34 = *(v28 + 16);
    v35 = *(v28 + 24);
    if (sub_247DD1FFC() && __OFSUB__(v34, sub_247DD202C()))
    {
      goto LABEL_23;
    }

    if (!__OFSUB__(v35, v34))
    {
      v33 = v25;
      sub_247DD201C();
      sub_247DD2A4C();
      sub_247D6C0AC(v28, v30);
      v36 = v58;
      v37 = v49;
LABEL_19:
      v27 = v56;
      goto LABEL_20;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  if (v31)
  {
    if (v28 >> 32 >= v28)
    {
      v56 = v27;
      if (!sub_247DD1FFC())
      {
        v33 = v25;
LABEL_18:
        v36 = v58;
        v37 = v49;
        sub_247DD201C();
        sub_247DD2A4C();
        sub_247D6C0AC(v28, v30);
        goto LABEL_19;
      }

      v33 = v25;
      if (!__OFSUB__(v28, sub_247DD202C()))
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_22;
  }

  v33 = v25;
  *&v59 = v28;
  WORD4(v59) = v30;
  BYTE10(v59) = BYTE2(v30);
  BYTE11(v59) = BYTE3(v30);
  BYTE12(v59) = BYTE4(v30);
  BYTE13(v59) = BYTE5(v30);
LABEL_16:
  sub_247DD2A4C();
  sub_247D6C0AC(v28, v30);
  v36 = v58;
  v37 = v49;
LABEL_20:
  v39 = v53;
  v38 = v54;
  (*(v53 + 32))(v54, v32, v33);
  v40 = sub_247DD2A3C();
  sec_protocol_options_add_pre_shared_key(v26, v27, v40);

  swift_unknownObjectRelease();
  v41 = *(v39 + 8);
  v41(v38, v33);
  v42 = v46;
  v43 = sub_247DD27CC();
  sec_protocol_options_append_tls_ciphersuite(v43, 0xA8u);
  swift_unknownObjectRelease();
  v41(v48, v33);
  (*(v52 + 8))(v37, v36);
  (*(v50 + 8))(v47, v51);
  return v42;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();
  sub_247D6A1F8(*(v0 + 32), *(v0 + 40));
  sub_247D6A1F8(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_247D8A3EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_247D8A434()
{
  result = qword_27EE73AC8;
  if (!qword_27EE73AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73AC8);
  }

  return result;
}

uint64_t CosmoConnection.__allocating_init(descriptor:queue:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for NetworkDescriptor(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_247DD249C();
  MEMORY[0x28223BE20](v7 - 8);
  sub_247D873E8(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_247D879F4();
  sub_247DD26FC();
  swift_allocObject();
  v9 = sub_247DD265C();
  sub_247D86A04(a1, v6);
  type metadata accessor for CosmoConnection(0);
  v10 = swift_allocObject();
  sub_247D8AE8C(v6, 1, v9, a2);
  sub_247D8690C(a1);
  return v10;
}

uint64_t type metadata accessor for CosmoConnection(uint64_t a1)
{
  result = qword_27EE73B38;
  if (!qword_27EE73B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Cosmo::CosmoConnection::State_optional __swiftcall CosmoConnection.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_247DD312C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CosmoConnection.State.rawValue.getter()
{
  v1 = 0x64656C65636E6163;
  if (*v0 != 1)
  {
    v1 = 0x64656C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7964616572;
  }
}

uint64_t sub_247D8A6E8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_247D83A78;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_247D6ACFC(v4);
}

uint64_t sub_247D8A77C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_247D83A50;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_247D6ACFC(v3);
  return sub_247D6A24C(v8, v9);
}

uint64_t sub_247D8A888@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_247D90368;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_247D6ACFC(v4);
}

uint64_t sub_247D8A91C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_247D90328;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_247D6ACFC(v3);
  return sub_247D6A24C(v8, v9);
}

uint64_t sub_247D8A9D8()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_247D6ACFC(v1);
  return v1;
}

uint64_t sub_247D8AA28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_247D6A24C(v5, v6);
}

uint64_t sub_247D8AACC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_247D90320;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_247D6ACFC(v4);
}