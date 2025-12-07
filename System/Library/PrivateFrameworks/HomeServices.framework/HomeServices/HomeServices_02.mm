unint64_t sub_1D20CEFBC()
{
  result = qword_1EC6C7678;
  if (!qword_1EC6C7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7678);
  }

  return result;
}

uint64_t sub_1D20CF010(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C616E676973 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xE900000000000079 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D2113E2C();

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

float sub_1D20CF130(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7680, &qword_1D2116070);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20CF30C();
  sub_1D2113F2C();
  if (!v1)
  {
    v12 = 0;
    sub_1D2113D4C();
    v11 = 1;
    sub_1D2113D6C();
    v2 = v9;
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

unint64_t sub_1D20CF30C()
{
  result = qword_1EC6C7688;
  if (!qword_1EC6C7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7688);
  }

  return result;
}

unint64_t sub_1D20CF384()
{
  result = qword_1EC6C7698;
  if (!qword_1EC6C7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7698);
  }

  return result;
}

unint64_t sub_1D20CF3DC()
{
  result = qword_1EC6C76A0;
  if (!qword_1EC6C76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C76A0);
  }

  return result;
}

unint64_t sub_1D20CF434()
{
  result = qword_1EC6C76A8;
  if (!qword_1EC6C76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C76A8);
  }

  return result;
}

unint64_t sub_1D20CF48C()
{
  result = qword_1EC6C76B0;
  if (!qword_1EC6C76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C76B0);
  }

  return result;
}

unint64_t sub_1D20CF4E4()
{
  result = qword_1EC6C76B8;
  if (!qword_1EC6C76B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C76B8);
  }

  return result;
}

unint64_t sub_1D20CF53C()
{
  result = qword_1EC6C76C0;
  if (!qword_1EC6C76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C76C0);
  }

  return result;
}

void sub_1D20CF590(uint64_t *a1@<X8>)
{
  v2 = 24945;
  if (*v1)
  {
    v2 = 1685025392;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

BOOL sub_1D20CF5BC()
{
  v0 = sub_1D21137BC();
  v1 = sub_1D21137BC();
  v2 = CFPreferencesCopyAppValue(v0, v1);

  if (!v2 || (swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  v4 = v12;
  v3 = v13;
  if (qword_1EE084468 != -1)
  {
    swift_once();
  }

  v5 = sub_1D211362C();
  __swift_project_value_buffer(v5, qword_1EE087518);

  v6 = sub_1D21135FC();
  v7 = sub_1D2113A9C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1D20B75F0(v4, v3, &v12);
    _os_log_impl(&dword_1D209F000, v6, v7, "Environment override detected. Using user set env value : %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D3896EB0](v9, -1, -1);
    MEMORY[0x1D3896EB0](v8, -1, -1);
  }

  v12 = v4;
  v13 = v3;
  sub_1D20B99F0();
  v10 = sub_1D2113B4C();

  return v10 == 0;
}

uint64_t sub_1D20CF7E0()
{
  if (!os_variant_has_internal_diagnostics())
  {
LABEL_19:
    v7 = sub_1D20CF5BC();
    return v7 & 1;
  }

  if (qword_1EE084468 != -1)
  {
    swift_once();
  }

  v0 = sub_1D211362C();
  __swift_project_value_buffer(v0, qword_1EE087518);
  v1 = sub_1D21135FC();
  v2 = sub_1D2113A9C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D209F000, v1, v2, "Internal build variant detected. Evaluating Server URL value for Environment information.", v3, 2u);
    MEMORY[0x1D3896EB0](v3, -1, -1);
  }

  v4 = sub_1D20ECE18();
  if (!v5)
  {
    v15 = sub_1D21135FC();
    v16 = sub_1D2113A7C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D209F000, v15, v16, "Unable to retrieve server Base URL. Returning default value", v17, 2u);
      MEMORY[0x1D3896EB0](v17, -1, -1);
    }

    goto LABEL_19;
  }

  v19[0] = v4;
  v19[1] = v5;
  sub_1D20B99F0();
  v6 = sub_1D2113B6C();

  v7 = v6 ^ 1;
  v8 = sub_1D21135FC();
  v9 = sub_1D2113A5C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136315138;
    if (v6)
    {
      v12 = 24945;
    }

    else
    {
      v12 = 1685025392;
    }

    if (v6)
    {
      v13 = 0xE200000000000000;
    }

    else
    {
      v13 = 0xE400000000000000;
    }

    v14 = sub_1D20B75F0(v12, v13, v19);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1D209F000, v8, v9, "%s env used for Internal calculation", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1D3896EB0](v11, -1, -1);
    MEMORY[0x1D3896EB0](v10, -1, -1);
  }

  return v7 & 1;
}

void sub_1D20CFA90()
{
  v0 = sub_1D20CF5BC();
  if (v0)
  {
    v1 = 1685025392;
  }

  else
  {
    v1 = 24945;
  }

  if (v0)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE200000000000000;
  }

  v3 = sub_1D20CF7E0();
  if (v3)
  {
    v4 = 1685025392;
  }

  else
  {
    v4 = 24945;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  if (qword_1EE084468 != -1)
  {
    swift_once();
  }

  v6 = sub_1D211362C();
  __swift_project_value_buffer(v6, qword_1EE087518);

  v7 = sub_1D21135FC();
  v8 = sub_1D2113A9C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v11 = sub_1D20B75F0(v4, v5, &v17);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_1D209F000, v7, v8, "Connected Server Environment : %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D3896EB0](v10, -1, -1);
    MEMORY[0x1D3896EB0](v9, -1, -1);
  }

  else
  {
  }

  oslog = sub_1D21135FC();
  v12 = sub_1D2113A9C();

  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    v15 = sub_1D20B75F0(v1, v2, &v17);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_1D209F000, oslog, v12, "Config Environment : %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1D3896EB0](v14, -1, -1);
    MEMORY[0x1D3896EB0](v13, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1D20CFD14()
{
  if (qword_1EE083FF8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D20CB9A8();
  v2 = v1;

  qword_1EE0874E0 = v0;
  *algn_1EE0874E8 = v2;
  return result;
}

void sub_1D20CFDC0(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

double sub_1D20CFDF8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    __x = 0.0;
    if (sub_1D20BC1E0(a2, a3, &__x))
    {
      v4 = fmod(__x, a1);
      if (qword_1EE083DE8 == -1)
      {
LABEL_4:
        v5 = fabs(v4);
        v6 = sub_1D211362C();
        __swift_project_value_buffer(v6, qword_1EE0874C0);
        v7 = sub_1D21135FC();
        v8 = sub_1D2113A6C();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 134217984;
          *(v9 + 4) = v5;
          _os_log_impl(&dword_1D209F000, v7, v8, "Generated Jitter Value: %fs", v9, 0xCu);
          MEMORY[0x1D3896EB0](v9, -1, -1);
        }

        return v5;
      }

LABEL_19:
      v19 = v4;
      swift_once();
      v4 = v19;
      goto LABEL_4;
    }
  }

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D211362C();
  __swift_project_value_buffer(v10, qword_1EE0874C0);
  v11 = sub_1D21135FC();
  v12 = sub_1D2113A7C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1D209F000, v11, v12, "Unable to retrieve User's DSID or convert to a required format. Generating random jitter value.", v13, 2u);
    MEMORY[0x1D3896EB0](v13, -1, -1);
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (!a1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = sub_1D20B0B48(a1);
  v15 = sub_1D21135FC();
  v16 = sub_1D2113A6C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v14;
    _os_log_impl(&dword_1D209F000, v15, v16, "Generated Jitter Value: %lds", v17, 0xCu);
    MEMORY[0x1D3896EB0](v17, -1, -1);
  }

  return v14;
}

double GridSignalFrequency.duration.getter()
{
  result = 300.0;
  if (*v0)
  {
    return 1800.0;
  }

  return result;
}

uint64_t static EnergyServices.gridGuidanceSignal(forGridID:withSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D20A8CBC;

  return sub_1D20CBB40(a1, a2, a3, a4);
}

uint64_t GridSignal.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D20D01B0()
{
  v1 = 0x636E657571657266;
  if (*v0 != 1)
  {
    v1 = 0x65636E6164697567;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1D20D0214@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D20D1B2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D20D023C(uint64_t a1)
{
  v2 = sub_1D20D15AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20D0278(uint64_t a1)
{
  v2 = sub_1D20D15AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GridSignal.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C76C8, &qword_1D21162A8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v14 = *(v1 + 16);
  v11 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20D15AC();
  sub_1D2113F3C();
  v18 = 0;
  v7 = v12;
  sub_1D2113D8C();
  if (!v7)
  {
    v8 = v11;
    v17 = v14;
    v16 = 1;
    sub_1D20CEEF0();
    sub_1D2113DEC();
    v13 = v8;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C76D8, &qword_1D21162B0);
    sub_1D20D164C(&qword_1EC6C76E0, &qword_1EC6C76E8, &protocol conformance descriptor for GridGuidance, MEMORY[0x1E69E6300]);
    sub_1D2113DEC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t GridSignal.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C76F0, &qword_1D21162B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20D15AC();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v9 = sub_1D2113D1C();
  v11 = v10;
  v12 = v9;
  v18 = 1;
  sub_1D20CEE48();
  sub_1D2113D7C();
  v16 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C76D8, &qword_1D21162B0);
  v17 = 2;
  sub_1D20D164C(&qword_1EC6C76F8, &qword_1EC6C7700, &protocol conformance descriptor for GridGuidance, MEMORY[0x1E69E6330]);
  sub_1D2113D7C();
  (*(v6 + 8))(v8, v5);
  v14 = v15[1];
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v16;
  *(a2 + 24) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t GridGuidance.start.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D211319C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GridGuidance.end.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GridGuidance(0) + 20);
  v4 = sub_1D211319C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

BOOL static GridGuidance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1D211315C() & 1) != 0 && (v4 = type metadata accessor for GridGuidance(0), (sub_1D211315C()))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D20D092C()
{
  v1 = 6581861;
  if (*v0 != 1)
  {
    v1 = 0x676E69746172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_1D20D0978@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D20D1C54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D20D09A0(uint64_t a1)
{
  v2 = sub_1D20D16E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20D09DC(uint64_t a1)
{
  v2 = sub_1D20D16E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GridGuidance.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7708, &qword_1D21162C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20D16E8();
  sub_1D2113F3C();
  v11 = 0;
  sub_1D211319C();
  sub_1D20D173C(&qword_1EE083DA0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1D2113DEC();
  if (!v1)
  {
    type metadata accessor for GridGuidance(0);
    v10 = 1;
    sub_1D2113DEC();
    v9 = 2;
    sub_1D2113DDC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t GridGuidance.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v30 = sub_1D211319C();
  v28 = *(v30 - 8);
  v4 = MEMORY[0x1EEE9AC00](v30);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7718, &qword_1D21162C8);
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for GridGuidance(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20D16E8();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v13;
  v26 = a1;
  v24 = v11;
  v35 = 0;
  sub_1D20D173C(&qword_1EE084908, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v14 = v29;
  v15 = v30;
  sub_1D2113D7C();
  v29 = *(v28 + 32);
  (v29)(v25, v14, v15);
  v34 = 1;
  v16 = v6;
  sub_1D2113D7C();
  v18 = v24;
  v17 = v25;
  (v29)(&v25[*(v24 + 20)], v16, v15);
  v33 = 2;
  sub_1D2113D6C();
  v19 = v17;
  v20 = v26;
  v22 = v21;
  (*(v31 + 8))(v10, v32);
  *(v19 + *(v18 + 24)) = v22;
  sub_1D20CEB7C(v19, v27);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_1D20D1784(v19);
}

HomeServices::GridSignalFrequency_optional __swiftcall GridSignalFrequency.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D2113D0C();

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

uint64_t GridSignalFrequency.rawValue.getter()
{
  if (*v0)
  {
    return 0x4D30335450;
  }

  else
  {
    return 1295340624;
  }
}

uint64_t sub_1D20D115C()
{
  sub_1D2113ECC();
  sub_1D211375C();

  return sub_1D2113F1C();
}

uint64_t sub_1D20D11D4(uint64_t a1)
{
  sub_1D211375C();
}

uint64_t sub_1D20D1238(uint64_t a1)
{
  sub_1D2113ECC();
  sub_1D211375C();

  return sub_1D2113F1C();
}

uint64_t sub_1D20D12AC@<X0>(char *a2@<X8>)
{
  v3 = sub_1D2113D0C();

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

void sub_1D20D130C(uint64_t *a1@<X8>)
{
  v2 = 1295340624;
  if (*v1)
  {
    v2 = 0x4D30335450;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D20D13F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4D30335450;
  }

  else
  {
    v3 = 1295340624;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x4D30335450;
  }

  else
  {
    v5 = 1295340624;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D2113E2C();
  }

  return v8 & 1;
}

uint64_t _s12HomeServices10GridSignalV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_1D2113E2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v4)
  {
    v10 = 0x4D30335450;
  }

  else
  {
    v10 = 1295340624;
  }

  if (v4)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (v7)
  {
    v12 = 0x4D30335450;
  }

  else
  {
    v12 = 1295340624;
  }

  if (v7)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  if (v10 == v12 && v11 == v13)
  {
  }

  else
  {
    v15 = sub_1D2113E2C();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1D20FD1A4(v5, v8);
}

unint64_t sub_1D20D15AC()
{
  result = qword_1EC6C76D0;
  if (!qword_1EC6C76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C76D0);
  }

  return result;
}

uint64_t type metadata accessor for GridGuidance(uint64_t a1)
{
  result = qword_1EC6C7728;
  if (!qword_1EC6C7728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D20D164C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C76D8, &qword_1D21162B0);
    sub_1D20D173C(a2, type metadata accessor for GridGuidance, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D20D16E8()
{
  result = qword_1EC6C7710;
  if (!qword_1EC6C7710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7710);
  }

  return result;
}

uint64_t sub_1D20D173C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D20D1784(uint64_t a1)
{
  v2 = type metadata accessor for GridGuidance(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D20D17E4()
{
  result = qword_1EC6C7720;
  if (!qword_1EC6C7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7720);
  }

  return result;
}

uint64_t sub_1D20D1870(uint64_t a1)
{
  result = sub_1D211319C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D20D1920()
{
  result = qword_1EC6C7738;
  if (!qword_1EC6C7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7738);
  }

  return result;
}

unint64_t sub_1D20D1978()
{
  result = qword_1EC6C7740;
  if (!qword_1EC6C7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7740);
  }

  return result;
}

unint64_t sub_1D20D19D0()
{
  result = qword_1EC6C7748;
  if (!qword_1EC6C7748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7748);
  }

  return result;
}

unint64_t sub_1D20D1A28()
{
  result = qword_1EC6C7750;
  if (!qword_1EC6C7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7750);
  }

  return result;
}

unint64_t sub_1D20D1A80()
{
  result = qword_1EC6C7758;
  if (!qword_1EC6C7758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7758);
  }

  return result;
}

unint64_t sub_1D20D1AD8()
{
  result = qword_1EC6C7760;
  if (!qword_1EC6C7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7760);
  }

  return result;
}

uint64_t sub_1D20D1B2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xE900000000000079 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E6164697567 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D2113E2C();

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

uint64_t sub_1D20D1C54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69746172 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D2113E2C();

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

unint64_t sub_1D20D1D64()
{
  result = qword_1EC6C7768;
  if (!qword_1EC6C7768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7768);
  }

  return result;
}

uint64_t sub_1D20D1DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[49] = a3;
  v4[50] = a4;
  v4[47] = a1;
  v4[48] = a2;
  v4[51] = type metadata accessor for NetworkError(0);
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v4[54] = swift_task_alloc();
  v5 = sub_1D211319C();
  v4[55] = v5;
  v4[56] = *(v5 - 8);
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = type metadata accessor for EnergyWindows(0);
  v4[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0);
  v4[63] = swift_task_alloc();
  v6 = sub_1D2112B1C();
  v4[64] = v6;
  v4[65] = *(v6 - 8);
  v4[66] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D20D1FDC, 0, 0);
}

uint64_t sub_1D20D1FDC()
{
  v0[44] = 0;
  MEMORY[0x1D3896EC0](v0 + 44, 8);
  v1 = v0[44];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73A8, "J{");
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E76D8];
  *(v2 + 16) = xmmword_1D2114850;
  v4 = MEMORY[0x1E69E7738];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = v1;
  v0[67] = sub_1D21137FC();
  v0[68] = v5;
  v6 = swift_task_alloc();
  v0[69] = v6;
  *v6 = v0;
  v6[1] = sub_1D20D20F8;
  v7 = v0[50];

  return sub_1D20EF460(v7);
}

uint64_t sub_1D20D20F8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D20D21F4, 0, 0);
}

uint64_t sub_1D20D21F4()
{
  v32 = v0;
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[65];
  v5 = v0[63];
  v4 = v0[64];
  v7 = v0[48];
  v6 = v0[49];
  type metadata accessor for EnergyWindowsRequest();
  swift_initStackObject();
  sub_1D20BC64C(v7, v6, v2, v1, v5);
  if ((*(v3 + 48))(v5, 1, v4) == 1)
  {
    v8 = v0[68];
    v9 = v0[67];
    sub_1D20A862C(v0[63], &qword_1EC6C7508, &unk_1D2116AA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D2114850;
    *(inited + 32) = 0x64496563617274;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v9;
    *(inited + 56) = v8;

    v11 = sub_1D20CE8BC(inited);
    swift_setDeallocating();
    sub_1D20A862C(inited + 32, &qword_1EC6C73D8, &qword_1D21153A0);
    v12 = [objc_opt_self() processInfo];
    v13 = [v12 processName];

    v14 = sub_1D21137CC();
    v16 = v15;

    LOWORD(v31[0]) = 1;
    BYTE2(v31[0]) = 1;
    v31[1] = v14;
    v31[2] = v16;
    v31[3] = v11;
    static AutoBugCaptureManager.sendIssue(_:)(v31);

    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v17 = sub_1D211362C();
    __swift_project_value_buffer(v17, qword_1EE0874C0);

    v18 = sub_1D21135FC();
    v19 = sub_1D2113A7C();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[68];
    if (v20)
    {
      v22 = v0[67];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31[0] = v24;
      *v23 = 136315138;
      v25 = sub_1D20B75F0(v22, v21, v31);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_1D209F000, v18, v19, "Unable generate request URL for EnergyWindow Request | traceId: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1D3896EB0](v24, -1, -1);
      MEMORY[0x1D3896EB0](v23, -1, -1);
    }

    else
    {
    }

    sub_1D20D47CC(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    *v28 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v29 = v0[1];

    return v29();
  }

  else
  {
    (*(v0[65] + 32))(v0[66], v0[63], v0[64]);
    v26 = swift_task_alloc();
    v0[70] = v26;
    *v26 = v0;
    v26[1] = sub_1D20D26B0;
    v27 = v0[66];

    return MEMORY[0x1EEDC6260](v27, 0);
  }
}

uint64_t sub_1D20D26B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[71] = a1;
  v5[72] = a2;
  v5[73] = a3;
  v5[74] = v3;

  if (v3)
  {
    v6 = sub_1D20D4310;
  }

  else
  {
    v6 = sub_1D20D27D0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1D20D27D0()
{
  v227 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = 0x1E83F6000uLL;
  v3 = 0x1E83F6000uLL;
  if (!v1)
  {
    v9 = MEMORY[0x1E69E6158];
    v10 = *(v0 + 544);
    v11 = *(v0 + 536);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    inited = swift_initStackObject();
    *(inited + 32) = 0x64496563617274;
    *(inited + 16) = xmmword_1D2114850;
    *(inited + 72) = v9;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v11;
    *(inited + 56) = v10;

    v13 = sub_1D20CE8BC(inited);
    swift_setDeallocating();
    sub_1D20A862C(inited + 32, &qword_1EC6C73D8, &qword_1D21153A0);
    v14 = [objc_opt_self() processInfo];
    v15 = [v14 processName];

    v16 = sub_1D21137CC();
    v18 = v17;

    LOWORD(v223) = 257;
    BYTE2(v223) = 2;
    v224 = v16;
    v225 = v18;
    v226 = v13;
    static AutoBugCaptureManager.sendIssue(_:)(&v223);

    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v19 = sub_1D211362C();
    __swift_project_value_buffer(v19, qword_1EE0874C0);

    v20 = sub_1D21135FC();
    v21 = sub_1D2113A7C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 544);
      v23 = *(v0 + 536);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v223 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1D20B75F0(v23, v22, &v223);
      _os_log_impl(&dword_1D209F000, v20, v21, "Unable to process EnergyWindow Response | traceId: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1D3896EB0](v25, -1, -1);
      MEMORY[0x1D3896EB0](v24, -1, -1);
    }

    v26 = *(v0 + 584);
    v27 = *(v0 + 576);
    v28 = *(v0 + 568);
    sub_1D20D47CC(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    v29 = swift_allocError();
    *v30 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_27;
  }

  v4 = v1;
  v5 = *(v0 + 584);
  v6 = v4;
  if ([v4 statusCode] != 200)
  {
    v31 = *(v0 + 544);
    v32 = *(v0 + 536);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    v33 = swift_initStackObject();
    *(v33 + 32) = 0x64496563617274;
    *(v33 + 16) = xmmword_1D2114850;
    *(v33 + 72) = MEMORY[0x1E69E6158];
    *(v33 + 40) = 0xE700000000000000;
    *(v33 + 48) = v32;
    *(v33 + 56) = v31;

    v34 = sub_1D20CE8BC(v33);
    swift_setDeallocating();
    sub_1D20A862C(v33 + 32, &qword_1EC6C73D8, &qword_1D21153A0);
    v35 = [objc_opt_self() processInfo];
    v36 = [v35 processName];

    v37 = sub_1D21137CC();
    v39 = v38;

    LOWORD(v223) = 257;
    BYTE2(v223) = 4;
    v224 = v37;
    v225 = v39;
    v226 = v34;
    static AutoBugCaptureManager.sendIssue(_:)(&v223);

    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v40 = *(v0 + 584);
    v41 = sub_1D211362C();
    __swift_project_value_buffer(v41, qword_1EE0874C0);
    v42 = v40;

    v43 = sub_1D21135FC();
    v44 = sub_1D2113A7C();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = *(v0 + 584);
      v46 = *(v0 + 544);
      v47 = *(v0 + 536);
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v223 = v50;
      *v48 = 138412546;
      *(v48 + 4) = v6;
      *v49 = v6;
      *(v48 + 12) = 2080;
      v51 = v45;
      *(v48 + 14) = sub_1D20B75F0(v47, v46, &v223);
      _os_log_impl(&dword_1D209F000, v43, v44, "Unhandled response code received for EnergyWindow Request. %@ | traceId: %s", v48, 0x16u);
      sub_1D20A862C(v49, &qword_1EC6C7950, qword_1D21153D0);
      v52 = v49;
      v2 = 0x1E83F6000;
      MEMORY[0x1D3896EB0](v52, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v50);
      v53 = v50;
      v3 = 0x1E83F6000;
      MEMORY[0x1D3896EB0](v53, -1, -1);
      MEMORY[0x1D3896EB0](v48, -1, -1);
    }

    v54 = *(v0 + 584);
    v55 = *(v0 + 576);
    v56 = *(v0 + 568);
    sub_1D20D47CC(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    v29 = swift_allocError();
    *v57 = [v6 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_1D20B98A4(v56, v55);
    goto LABEL_35;
  }

  v7 = *(v0 + 592);
  sub_1D2112B4C();
  swift_allocObject();
  sub_1D2112B3C();
  sub_1D20D47CC(qword_1EE083C20, type metadata accessor for EnergyWindows, &protocol conformance descriptor for EnergyWindows);
  v8 = sub_1D2112B2C();
  v219 = v7;
  if (v7)
  {

    v3 = 0x1E83F6000;
    v2 = 0x1E83F6000;
LABEL_25:
    v29 = v219;
    *(v0 + 368) = v219;
    v90 = v219;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
    if (!swift_dynamicCast())
    {
      v91 = *(v0 + 544);
      v92 = *(v0 + 536);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
      v93 = swift_allocObject();
      *(v93 + 32) = 0x64496563617274;
      *(v93 + 16) = xmmword_1D2114850;
      *(v93 + 72) = MEMORY[0x1E69E6158];
      *(v93 + 40) = 0xE700000000000000;
      *(v93 + 48) = v92;
      *(v93 + 56) = v91;

      v94 = sub_1D20CE8BC(v93);
      swift_setDeallocating();
      sub_1D20A862C(v93 + 32, &qword_1EC6C73D8, &qword_1D21153A0);
      swift_deallocClassInstance();
      v95 = [objc_opt_self() *(v2 + 2096)];
      v96 = [v95 *(v3 + 2104)];

      v97 = sub_1D21137CC();
      v99 = v98;

      LOWORD(v223) = 257;
      BYTE2(v223) = 3;
      v224 = v97;
      v225 = v99;
      v226 = v94;
      static AutoBugCaptureManager.sendIssue(_:)(&v223);

      if (qword_1EE083DE8 != -1)
      {
        swift_once();
      }

      v100 = sub_1D211362C();
      __swift_project_value_buffer(v100, qword_1EE0874C0);

      v101 = sub_1D21135FC();
      v102 = sub_1D2113A7C();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = *(v0 + 544);
        v104 = *(v0 + 536);
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v223 = v106;
        *v105 = 136315138;
        *(v105 + 4) = sub_1D20B75F0(v104, v103, &v223);
        _os_log_impl(&dword_1D209F000, v101, v102, "Error while decoding Energy Intervals response from server | traceId: %s", v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v106);
        MEMORY[0x1D3896EB0](v106, -1, -1);
        MEMORY[0x1D3896EB0](v105, -1, -1);
      }

      v107 = *(v0 + 584);

      v108 = sub_1D21135FC();
      v109 = sub_1D2113A7C();

      if (os_log_type_enabled(v108, v109))
      {
        v110 = *(v0 + 584);
        v111 = *(v0 + 544);
        v112 = *(v0 + 536);
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v223 = v114;
        *v113 = 136315394;
        v115 = [v110 description];
        v116 = sub_1D21137CC();
        v118 = v117;

        v119 = sub_1D20B75F0(v116, v118, &v223);

        *(v113 + 4) = v119;
        *(v113 + 12) = 2080;
        *(v113 + 14) = sub_1D20B75F0(v112, v111, &v223);
        _os_log_impl(&dword_1D209F000, v108, v109, "URL Response %s | traceId: %s", v113, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3896EB0](v114, -1, -1);
        MEMORY[0x1D3896EB0](v113, -1, -1);
      }

      v3 = 0x1E83F6000uLL;
      v2 = 0x1E83F6000uLL;
      v120 = *(v0 + 584);
      v121 = *(v0 + 576);
      v122 = *(v0 + 568);
      sub_1D20D47CC(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
      v29 = swift_allocError();
      *v123 = 1;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1D20B98A4(v122, v121);
      goto LABEL_35;
    }

    v26 = *(v0 + 584);
    v27 = *(v0 + 576);
    v28 = *(v0 + 568);
    sub_1D20D4814(*(v0 + 416), type metadata accessor for NetworkError);
    swift_willThrow();

LABEL_27:
    sub_1D20B98A4(v28, v27);
LABEL_35:
    v124 = *(v0 + 544);
    v125 = *(v0 + 536);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    v126 = swift_initStackObject();
    *(v126 + 32) = 0x64496563617274;
    *(v126 + 16) = xmmword_1D2114850;
    *(v126 + 72) = MEMORY[0x1E69E6158];
    *(v126 + 40) = 0xE700000000000000;
    *(v126 + 48) = v125;
    *(v126 + 56) = v124;

    v127 = v29;
    v128 = sub_1D20CE8BC(v126);
    swift_setDeallocating();
    sub_1D20A862C(v126 + 32, &qword_1EC6C73D8, &qword_1D21153A0);
    v129 = [objc_opt_self() *(v2 + 2096)];
    v130 = [v129 *(v3 + 2104)];

    v131 = sub_1D21137CC();
    v133 = v132;

    LOWORD(v223) = 257;
    BYTE2(v223) = 5;
    v224 = v131;
    v225 = v133;
    v226 = v128;
    static AutoBugCaptureManager.sendIssue(_:)(&v223);

    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v134 = sub_1D211362C();
    __swift_project_value_buffer(v134, qword_1EE0874C0);

    v135 = v29;
    v136 = sub_1D21135FC();
    v137 = sub_1D2113A7C();

    v138 = os_log_type_enabled(v136, v137);
    v139 = *(v0 + 544);
    if (v138)
    {
      v140 = *(v0 + 536);
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v223 = v143;
      *v141 = 138412546;
      v144 = v29;
      v145 = _swift_stdlib_bridgeErrorToNSError();
      *(v141 + 4) = v145;
      *v142 = v145;
      *(v141 + 12) = 2080;
      v146 = sub_1D20B75F0(v140, v139, &v223);

      *(v141 + 14) = v146;
      _os_log_impl(&dword_1D209F000, v136, v137, "URLSession Error while trying to fetch Energy Intervals. %@ | traceId: %s", v141, 0x16u);
      sub_1D20A862C(v142, &qword_1EC6C7950, qword_1D21153D0);
      MEMORY[0x1D3896EB0](v142, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v143);
      MEMORY[0x1D3896EB0](v143, -1, -1);
      MEMORY[0x1D3896EB0](v141, -1, -1);
    }

    else
    {
    }

    *(v0 + 360) = v29;
    v147 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
    v148 = swift_dynamicCast();
    v149 = *(v0 + 528);
    v150 = *(v0 + 520);
    v151 = *(v0 + 512);
    if (v148)
    {
      v152 = *(v0 + 424);

      sub_1D20D4814(v152, type metadata accessor for NetworkError);
      swift_willThrow();
    }

    else
    {
      sub_1D20D47CC(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
      swift_allocError();
      sub_1D20F5FDC(v29, v153);
      swift_willThrow();
    }

    (*(v150 + 8))(v149, v151);

    v154 = *(v0 + 8);
    goto LABEL_44;
  }

  v58 = **(v0 + 496);
  if (!v58 || !*(v58 + 16))
  {
    v71 = *(v0 + 544);
    v72 = *(v0 + 536);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    v73 = swift_allocObject();
    *(v73 + 32) = 0x64496563617274;
    *(v73 + 16) = xmmword_1D2114850;
    *(v73 + 72) = MEMORY[0x1E69E6158];
    *(v73 + 40) = 0xE700000000000000;
    *(v73 + 48) = v72;
    *(v73 + 56) = v71;

    v74 = sub_1D20CE8BC(v73);
    swift_setDeallocating();
    sub_1D20A862C(v73 + 32, &qword_1EC6C73D8, &qword_1D21153A0);
    swift_deallocClassInstance();
    v2 = 0x1E83F6000uLL;
    v75 = [objc_opt_self() processInfo];
    v3 = 0x1E83F6000uLL;
    v76 = [v75 processName];

    v77 = sub_1D21137CC();
    v79 = v78;

    LOWORD(v223) = 257;
    BYTE2(v223) = 0;
    v224 = v77;
    v225 = v79;
    v226 = v74;
    static AutoBugCaptureManager.sendIssue(_:)(&v223);

    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v80 = sub_1D211362C();
    __swift_project_value_buffer(v80, qword_1EE087438);

    v81 = sub_1D21135FC();
    v82 = sub_1D2113A7C();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = *(v0 + 544);
      v84 = *(v0 + 536);
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v223 = v86;
      *v85 = 136315138;
      *(v85 + 4) = sub_1D20B75F0(v84, v83, &v223);
      _os_log_impl(&dword_1D209F000, v81, v82, "No EnergyWindows returned in response | traceId: %s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v86);
      v87 = v86;
      v2 = 0x1E83F6000uLL;
      MEMORY[0x1D3896EB0](v87, -1, -1);
      MEMORY[0x1D3896EB0](v85, -1, -1);
    }

    v88 = *(v0 + 496);
    sub_1D20D47CC(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    v89 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v219 = v89;
    swift_willThrow();

    sub_1D20D4814(v88, type metadata accessor for EnergyWindows);
    goto LABEL_25;
  }

  v59 = MEMORY[0x1D3896910](v8);
  sub_1D20BB8E8(v4);
  objc_autoreleasePoolPop(v59);
  if (qword_1EE084040 != -1)
  {
    swift_once();
  }

  v61 = *(v0 + 488);
  v60 = *(v0 + 496);
  v62 = *(v0 + 472);
  v63 = *(v0 + 440);
  v64 = *(v0 + 448);
  v220 = *(v0 + 432);
  v65 = sub_1D20CFDF8(0x258uLL, qword_1EE0874E0, *algn_1EE0874E8);
  sub_1D21130DC();
  v66 = *(v61 + 20);
  sub_1D20A862C(v60 + v66, &qword_1EC6C7248, &qword_1D2114A80);
  v67 = v62;
  v68 = *(v64 + 16);
  v68(v60 + v66, v67, v63);
  v69 = (*(v64 + 56))(v60 + v66, 0, 1, v63);
  v70 = MEMORY[0x1D3896910](v69);
  sub_1D20BBB90(v6, v220);
  objc_autoreleasePoolPop(v70);
  sub_1D20AD058(*(v0 + 432), *(v0 + 496) + *(*(v0 + 488) + 24));
  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v155 = *(v0 + 480);
  v156 = *(v0 + 464);
  v157 = *(v0 + 440);
  v158 = sub_1D211362C();
  __swift_project_value_buffer(v158, qword_1EE0874C0);
  v217 = v68;
  v68(v156, v155, v157);

  v159 = sub_1D21135FC();
  v160 = sub_1D2113A6C();

  if (os_log_type_enabled(v159, v160))
  {
    v207 = *(v0 + 536);
    v209 = *(v0 + 544);
    v161 = *(v0 + 464);
    v162 = *(v0 + 448);
    v221 = *(v0 + 440);
    v163 = swift_slowAlloc();
    v212 = swift_slowAlloc();
    v223 = v212;
    *v163 = 136315394;
    v164 = sub_1D20D5C30();
    v165 = sub_1D21130EC();
    v166 = [v164 stringFromDate_];

    v167 = sub_1D21137CC();
    v169 = v168;

    v170 = v221;
    v222 = *(v162 + 8);
    v222(v161, v170);
    v171 = sub_1D20B75F0(v167, v169, &v223);

    *(v163 + 4) = v171;
    *(v163 + 12) = 2080;
    *(v163 + 14) = sub_1D20B75F0(v207, v209, &v223);
    _os_log_impl(&dword_1D209F000, v159, v160, "Window Response valid until %s | traceId: %s", v163, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3896EB0](v212, -1, -1);
    MEMORY[0x1D3896EB0](v163, -1, -1);
  }

  else
  {
    v172 = *(v0 + 464);
    v173 = *(v0 + 440);
    v174 = *(v0 + 448);

    v222 = *(v174 + 8);
    v222(v172, v173);
  }

  v175 = sub_1D21135FC();
  v176 = sub_1D2113A6C();

  if (os_log_type_enabled(v175, v176))
  {
    v177 = *(v0 + 544);
    v178 = *(v0 + 536);
    v179 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    v223 = v180;
    *v179 = 134218242;
    *(v179 + 4) = v65;
    *(v179 + 12) = 2080;
    *(v179 + 14) = sub_1D20B75F0(v178, v177, &v223);
    _os_log_impl(&dword_1D209F000, v175, v176, "Adding response jitter %fs | traceId: %s", v179, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v180);
    MEMORY[0x1D3896EB0](v180, -1, -1);
    MEMORY[0x1D3896EB0](v179, -1, -1);
  }

  v217(*(v0 + 456), *(v0 + 472), *(v0 + 440));

  v181 = sub_1D21135FC();
  v182 = sub_1D2113A6C();

  v183 = os_log_type_enabled(v181, v182);
  v184 = *(v0 + 584);
  v216 = *(v0 + 568);
  v218 = *(v0 + 576);
  v215 = *(v0 + 544);
  if (v183)
  {
    v210 = *(v0 + 512);
    v213 = *(v0 + 528);
    v206 = *(v0 + 480);
    v208 = *(v0 + 520);
    log = v181;
    v205 = *(v0 + 472);
    v185 = *(v0 + 456);
    v186 = *(v0 + 440);
    v202 = *(v0 + 536);
    v187 = swift_slowAlloc();
    v203 = swift_slowAlloc();
    v223 = v203;
    *v187 = 136315394;
    v188 = sub_1D20D5C30();
    v189 = sub_1D21130EC();
    v190 = [v188 stringFromDate_];

    v191 = sub_1D21137CC();
    v193 = v192;

    v222(v185, v186);
    v194 = sub_1D20B75F0(v191, v193, &v223);

    *(v187 + 4) = v194;
    *(v187 + 12) = 2080;
    v195 = sub_1D20B75F0(v202, v215, &v223);

    *(v187 + 14) = v195;
    _os_log_impl(&dword_1D209F000, log, v182, "Window Response re-poll date %s | traceId: %s", v187, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3896EB0](v203, -1, -1);
    MEMORY[0x1D3896EB0](v187, -1, -1);

    sub_1D20B98A4(v216, v218);

    v222(v205, v186);
    v222(v206, v186);
    (*(v208 + 8))(v213, v210);
  }

  else
  {
    v196 = *(v0 + 520);
    v211 = *(v0 + 512);
    v214 = *(v0 + 528);
    v198 = *(v0 + 472);
    v197 = *(v0 + 480);
    v199 = *(v0 + 456);
    v200 = *(v0 + 440);

    sub_1D20B98A4(v216, v218);

    v222(v199, v200);
    v222(v198, v200);
    v222(v197, v200);
    (*(v196 + 8))(v214, v211);
  }

  v201 = *(v0 + 496);
  sub_1D20D4874(v201, *(v0 + 376));
  sub_1D20D4814(v201, type metadata accessor for EnergyWindows);

  v154 = *(v0 + 8);
LABEL_44:

  v154();
}

uint64_t sub_1D20D4310()
{
  v35 = v0;
  v1 = v0[74];
  v2 = v0[68];
  v3 = v0[67];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2114850;
  *(inited + 32) = 0x64496563617274;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v5 = v1;
  v6 = sub_1D20CE8BC(inited);
  swift_setDeallocating();
  sub_1D20A862C(inited + 32, &qword_1EC6C73D8, &qword_1D21153A0);
  v7 = [objc_opt_self() processInfo];
  v8 = [v7 processName];

  v9 = sub_1D21137CC();
  v11 = v10;

  LOWORD(v34[0]) = 257;
  BYTE2(v34[0]) = 5;
  v34[1] = v9;
  v34[2] = v11;
  v34[3] = v6;
  static AutoBugCaptureManager.sendIssue(_:)(v34);

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D211362C();
  __swift_project_value_buffer(v12, qword_1EE0874C0);

  v13 = v1;
  v14 = sub_1D21135FC();
  v15 = sub_1D2113A7C();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[68];
  if (v16)
  {
    v18 = v0[67];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v34[0] = v21;
    *v19 = 138412546;
    v22 = v1;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v23;
    *v20 = v23;
    *(v19 + 12) = 2080;
    v24 = sub_1D20B75F0(v18, v17, v34);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_1D209F000, v14, v15, "URLSession Error while trying to fetch Energy Intervals. %@ | traceId: %s", v19, 0x16u);
    sub_1D20A862C(v20, &qword_1EC6C7950, qword_1D21153D0);
    MEMORY[0x1D3896EB0](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1D3896EB0](v21, -1, -1);
    MEMORY[0x1D3896EB0](v19, -1, -1);
  }

  else
  {
  }

  v0[45] = v1;
  v25 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
  v26 = swift_dynamicCast();
  v27 = v0[66];
  v28 = v0[65];
  v29 = v0[64];
  if (v26)
  {
    v30 = v0[53];

    sub_1D20D4814(v30, type metadata accessor for NetworkError);
    swift_willThrow();
  }

  else
  {
    sub_1D20D47CC(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    sub_1D20F5FDC(v1, v31);
    swift_willThrow();
  }

  (*(v28 + 8))(v27, v29);

  v32 = v0[1];

  return v32();
}

uint64_t sub_1D20D47CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D20D4814(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D20D4874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnergyWindows(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D20D4A2C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D211362C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);

  return sub_1D211360C();
}

uint64_t sub_1D20D4AB4@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_1D21132EC();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D2112E7C();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() currentCalendar];
  sub_1D211326C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C72A0, &qword_1D2115390);
  v8 = sub_1D21132CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D2116780;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v13, *MEMORY[0x1E6969A68], v8);
  v14(v13 + v10, *MEMORY[0x1E6969A78], v8);
  v14(v13 + 2 * v10, *MEMORY[0x1E6969A48], v8);
  v15 = v26;
  v14(v13 + 3 * v10, *MEMORY[0x1E6969A58], v8);
  v16 = v27;
  v14(v13 + 4 * v10, *MEMORY[0x1E6969A88], v8);
  sub_1D20BFD3C(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D211324C();

  v17 = *(v15 + 8);
  v17(v3, v16);
  result = sub_1D2112E1C();
  v19 = 0;
  if ((v20 & 1) == 0)
  {
    if (result > 19)
    {
      if (result > 0x31)
      {
        v21 = 80;
      }

      else
      {
        v21 = 50;
      }

      v22 = __OFADD__(result, v21 - result);
      result = v21;
      if (!v22)
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v19 = result;
  }

  if (!__OFSUB__(20, v19))
  {
    result = 20;
    if (!__OFADD__(v19, 20 - v19))
    {
LABEL_6:
      sub_1D2112E2C();
      sub_1D21132AC();
      sub_1D211327C();
      v17(v3, v16);
      return (*(v23 + 8))(v6, v24);
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D20D4E80@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v31 = sub_1D2112E7C();
  v34 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D211321C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D21132EC();
  v32 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_1D211335C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - v17;
  sub_1D21132FC();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D20D5BC8(v11);
    v19 = sub_1D211319C();
    return (*(*(v19 - 8) + 56))(v35, 1, 1, v19);
  }

  else
  {
    v21 = *(v13 + 32);
    v30 = v18;
    v21(v18, v11, v12);
    (*(v4 + 104))(v6, *MEMORY[0x1E6969868], v3);
    v29 = v8;
    sub_1D211322C();
    (*(v4 + 8))(v6, v3);
    (*(v13 + 16))(v16, v18, v12);
    sub_1D21132BC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C72A0, &qword_1D2115390);
    v22 = sub_1D21132CC();
    v23 = *(v22 - 8);
    v24 = *(v23 + 72);
    v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D2116790;
    v27 = *(v23 + 104);
    v27(v26 + v25, *MEMORY[0x1E6969A68], v22);
    v27(v26 + v25 + v24, *MEMORY[0x1E6969A78], v22);
    v27(v26 + v25 + 2 * v24, *MEMORY[0x1E6969A48], v22);
    v27(v26 + v25 + 3 * v24, *MEMORY[0x1E6969A58], v22);
    v27(v26 + v25 + 4 * v24, *MEMORY[0x1E6969A88], v22);
    v27(v26 + v25 + 5 * v24, *MEMORY[0x1E6969A98], v22);
    sub_1D20BFD3C(v26);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v28 = v29;
    sub_1D211324C();

    sub_1D2112E1C();
    sub_1D2112E2C();
    sub_1D2112E5C();
    sub_1D2112D9C();
    sub_1D211327C();
    (*(v34 + 8))(v2, v31);
    (*(v32 + 8))(v28, v33);
    return (*(v13 + 8))(v30, v12);
  }
}

uint64_t sub_1D20D54A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v30 = &v23 - v1;
  v29 = sub_1D211335C();
  v26 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v23 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D21130AC();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D211308C();
  v5 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D211306C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D211307C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D21130CC();
  __swift_allocate_value_buffer(v16, qword_1EE0874F0);
  v17 = v26;
  __swift_project_value_buffer(v16, qword_1EE0874F0);
  (*(v13 + 104))(v15, *MEMORY[0x1E6969360], v12);
  v18 = v24;
  v19 = v8;
  v20 = v29;
  (*(v9 + 104))(v11, *MEMORY[0x1E6969358], v19);
  (*(v5 + 104))(v7, *MEMORY[0x1E6969370], v25);
  (*(v27 + 104))(v18, *MEMORY[0x1E6969380], v28);
  v21 = v30;
  sub_1D211332C();
  result = (*(v17 + 48))(v21, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v17 + 32))(v23, v21, v20);
    return sub_1D211309C();
  }

  return result;
}

id sub_1D20D58E0()
{
  v0 = sub_1D211321C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D21132EC();
  v4 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D211320C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1D21131EC();
  v12 = sub_1D21131FC();
  (*(v8 + 8))(v10, v7);
  [v11 setLocale_];

  (*(v1 + 104))(v3, *MEMORY[0x1E6969868], v0);
  sub_1D211322C();
  (*(v1 + 8))(v3, v0);
  v13 = sub_1D211325C();
  (*(v4 + 8))(v6, v17);
  [v11 setCalendar_];

  v14 = sub_1D21137BC();
  [v11 setDateFormat_];

  return v11;
}

uint64_t sub_1D20D5BC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D20D5C30()
{
  v0 = sub_1D211321C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D21132EC();
  v4 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D211320C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1D21131EC();
  v12 = sub_1D21131FC();
  (*(v8 + 8))(v10, v7);
  [v11 setLocale_];

  (*(v1 + 104))(v3, *MEMORY[0x1E6969868], v0);
  sub_1D211322C();
  (*(v1 + 8))(v3, v0);
  v13 = sub_1D211325C();
  (*(v4 + 8))(v6, v17);
  [v11 setCalendar_];

  v14 = sub_1D21137BC();
  [v11 setDateFormat_];

  return v11;
}

uint64_t static EnergyServices.gridIDLookup(_:withSession:)(uint64_t a1, double a2, double a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D20D5FD8;

  return sub_1D20C8AB4(a1, a2, a3);
}

uint64_t sub_1D20D5FD8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {

    v7 = 0;
    v8 = 0;
  }

  else
  {
    v8 = a2;
    v7 = a1;
  }

  v9 = *(v6 + 8);

  return v9(v7, v8);
}

uint64_t static EnergyServices.energyWindows(for:withSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_1D20D61B8;

  return sub_1D20D1DBC(a1, a2, a3, a4);
}

uint64_t sub_1D20D61B8()
{

  if (v0)
  {

    v1 = sub_1D20D636C;
  }

  else
  {
    v1 = sub_1D20D62D0;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D20D62D0()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for EnergyWindows(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D20D636C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for EnergyWindows(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t _s12HomeServices06EnergyB0V19getForecastGuidance8withType0G6GridId0G8RatePlan0G7SessionAA10HSGuidanceVAA0nH0O_SSAA06HSRateL0VSgSo12NSURLSessionCtYaAA0N5ErrorOYKFZ(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  sub_1D211319C();
  *(v7 + 64) = swift_task_alloc();
  *(v7 + 72) = swift_task_alloc();
  v9 = type metadata accessor for HSCleanGuidanceThresholds(0);
  *(v7 + 80) = v9;
  *(v7 + 88) = *(v9 - 8);
  *(v7 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7598, &qword_1D2115B60);
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  type metadata accessor for HSGuidanceError(0);
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = type metadata accessor for HSGuidanceForecast(0);
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 153) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1D20D65B4, 0, 0);
}

uint64_t sub_1D20D65B4()
{
  if (qword_1EE084300 != -1)
  {
    swift_once();
  }

  *(v0 + 152) = *(v0 + 153);
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1D20D6694;
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);

  return sub_1D20C0CFC(v2, v6, v7, (v0 + 152), v4, v5, v3);
}

uint64_t sub_1D20D6694()
{

  if (v0)
  {
    v1 = sub_1D20D6A44;
  }

  else
  {
    v1 = sub_1D20D67A4;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D20D67A4()
{
  v1 = v0[17];
  v2 = *(v1 + 8);
  if (v2 && *(v2 + 16))
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[10];
    v6 = *(v0[11] + 80);
    sub_1D20D8F58(v2 + ((v6 + 32) & ~v6), v4, type metadata accessor for HSCleanGuidanceThresholds);
    sub_1D2112C0C();
    sub_1D2112BDC();
    sub_1D2112BEC();
    v7 = *(v4 + *(v5 + 20));
    v8 = *(v4 + *(v5 + 24));
    sub_1D20D8FC0(v4, type metadata accessor for HSCleanGuidanceThresholds);
    v9 = 0;
    *(v3 + *(v5 + 20)) = v7;
    *(v3 + *(v5 + 24)) = v8;
    v1 = v0[17];
  }

  else
  {
    v9 = 1;
  }

  v10 = v0[16];
  v11 = v0[13];
  v12 = v0[14];
  v24 = v12;
  v13 = v0[2];
  (*(v0[11] + 56))(v11, v9, 1, v0[10]);
  sub_1D20D86CC(v11, v12);
  sub_1D21131CC();
  v23 = *v1;
  v14 = v10[6];
  v15 = type metadata accessor for HSGuidance(0);
  v16 = v15[7];
  v17 = sub_1D2112C2C();
  v18 = *(*(v17 - 8) + 16);
  v18(v13 + v16, v1 + v14, v17);
  v19 = v10[8];
  v20 = *(v1 + v10[7]);
  v18(v13 + v15[9], v1 + v19, v17);
  *(v13 + v15[5]) = v23;
  sub_1D20D86CC(v24, v13 + v15[6]);
  *(v13 + v15[8]) = v20;

  sub_1D20D8FC0(v1, type metadata accessor for HSGuidanceForecast);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1D20D6A44()
{
  sub_1D20D88A0(v0[15], v0[7], type metadata accessor for HSGuidanceError);

  v1 = v0[1];

  return v1();
}

uint64_t HSGuidance.init(identifier:type:thresholds:interval:values:validInterval:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a2;
  v14 = sub_1D21131DC();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v15 = type metadata accessor for HSGuidance(0);
  *(a7 + v15[5]) = v13;
  sub_1D20D86CC(a3, a7 + v15[6]);
  v16 = v15[7];
  v17 = sub_1D2112C2C();
  v20 = *(*(v17 - 8) + 32);
  (v20)((v17 - 8), a7 + v16, a4, v17);
  *(a7 + v15[8]) = a5;
  v18 = a7 + v15[9];

  return v20(v18, a6, v17);
}

uint64_t HSGuidance.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D21131DC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HSGuidance.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for HSGuidance(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t HSGuidance.thresholds.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HSGuidance(0) + 24);

  return sub_1D20D8788(v3, a1);
}

uint64_t HSGuidance.interval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HSGuidance(0) + 28);
  v4 = sub_1D2112C2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HSGuidance.values.getter()
{
  type metadata accessor for HSGuidance(0);
}

uint64_t HSGuidance.validInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HSGuidance(0) + 36);
  v4 = sub_1D2112C2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D20D6E68()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6C61767265746E69;
  v4 = 0x7365756C6176;
  if (v1 != 4)
  {
    v4 = 0x746E4964696C6176;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701869940;
  if (v1 != 1)
  {
    v5 = 0x6C6F687365726874;
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

uint64_t sub_1D20D6F28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D20D8D4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D20D6F50(uint64_t a1)
{
  v2 = sub_1D20D87F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20D6F8C(uint64_t a1)
{
  v2 = sub_1D20D87F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HSGuidance.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7780, &qword_1D21167B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20D87F8();
  sub_1D2113F3C();
  v18 = 0;
  sub_1D21131DC();
  sub_1D20D8A40(&qword_1EE0843D0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D2113DEC();
  if (!v2)
  {
    v9 = type metadata accessor for HSGuidance(0);
    v17 = *(v3 + *(v9 + 20));
    v16 = 1;
    sub_1D20D884C();
    sub_1D2113DEC();
    v15 = 2;
    type metadata accessor for HSCleanGuidanceThresholds(0);
    sub_1D20D8A40(qword_1EE083F40, type metadata accessor for HSCleanGuidanceThresholds, &protocol conformance descriptor for HSCleanGuidanceThresholds);
    sub_1D2113DAC();
    v14 = 3;
    sub_1D2112C2C();
    sub_1D20D8A40(&qword_1EE0843E8, MEMORY[0x1E6968130], MEMORY[0x1E6968138]);
    sub_1D2113DEC();
    v11[1] = *(v3 + *(v9 + 32));
    v13 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7788, &qword_1D21167C0);
    sub_1D20D895C(&qword_1EE083DC8, qword_1EE084048, &protocol conformance descriptor for HSGuidanceValue, MEMORY[0x1E69E6300]);
    sub_1D2113DEC();
    v12 = 5;
    sub_1D2113DEC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t HSGuidance.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for HSCleanGuidanceThresholds(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7598, &qword_1D2115B60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  sub_1D21131DC();
  sub_1D20D8A40(&qword_1EC6C7790, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D211374C();
  v10 = type metadata accessor for HSGuidance(0);
  sub_1D2113EFC();
  sub_1D20D8788(v1 + *(v10 + 24), v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1D2113EEC();
  }

  else
  {
    sub_1D20D88A0(v9, v6, type metadata accessor for HSCleanGuidanceThresholds);
    sub_1D2113EEC();
    HSCleanGuidanceThresholds.hash(into:)(a1);
    sub_1D20D8FC0(v6, type metadata accessor for HSCleanGuidanceThresholds);
  }

  sub_1D2112C2C();
  sub_1D20D8A40(&qword_1EC6C7798, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1D211374C();
  sub_1D20D8184(a1, *(v1 + *(v10 + 32)));
  return sub_1D211374C();
}

uint64_t HSGuidance.hashValue.getter()
{
  sub_1D2113ECC();
  HSGuidance.hash(into:)(v1);
  return sub_1D2113F1C();
}

uint64_t HSGuidance.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v34 = sub_1D2112C2C();
  v30 = *(v34 - 8);
  v3 = MEMORY[0x1EEE9AC00](v34);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7598, &qword_1D2115B60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_1D21131DC();
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77A0, &qword_1D21167C8);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v12 = &v25 - v11;
  v13 = type metadata accessor for HSGuidance(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20D87F8();
  v36 = v12;
  v16 = v37;
  sub_1D2113F2C();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v8;
  v26 = v13;
  v45 = 0;
  sub_1D20D8A40(&qword_1EE083D98, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v17 = v32;
  sub_1D2113D7C();
  v18 = *(v31 + 32);
  v32 = v9;
  v18(v15, v17, v9);
  v43 = 1;
  sub_1D20D8908();
  sub_1D2113D7C();
  v19 = v26;
  v15[v26[5]] = v44;
  type metadata accessor for HSCleanGuidanceThresholds(0);
  v42 = 2;
  sub_1D20D8A40(&qword_1EE083908, type metadata accessor for HSCleanGuidanceThresholds, &protocol conformance descriptor for HSCleanGuidanceThresholds);
  v20 = v37;
  sub_1D2113D3C();
  sub_1D20D86CC(v20, &v15[v19[6]]);
  v41 = 3;
  sub_1D20D8A40(&qword_1EE083DB0, MEMORY[0x1E6968130], MEMORY[0x1E6968150]);
  v21 = v29;
  sub_1D2113D7C();
  v22 = v21;
  v23 = *(v30 + 32);
  v23(&v15[v26[7]], v22, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7788, &qword_1D21167C0);
  v40 = 4;
  sub_1D20D895C(&qword_1EE0836A0, &qword_1EE083C00, &protocol conformance descriptor for HSGuidanceValue, MEMORY[0x1E69E6330]);
  sub_1D2113D7C();
  *&v15[v26[8]] = v38;
  v39 = 5;
  sub_1D2113D7C();
  (*(v33 + 8))(v36, v35);
  v23(&v15[v26[9]], v28, v34);
  sub_1D20D8F58(v15, v27, type metadata accessor for HSGuidance);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D20D8FC0(v15, type metadata accessor for HSGuidance);
}

uint64_t sub_1D20D7DF8()
{
  sub_1D2113ECC();
  HSGuidance.hash(into:)(v1);
  return sub_1D2113F1C();
}

uint64_t sub_1D20D7E3C(uint64_t a1)
{
  sub_1D2113ECC();
  HSGuidance.hash(into:)(v2);
  return sub_1D2113F1C();
}

uint64_t sub_1D20D7E7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D38967E0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 == 0.0)
      {
        v7 = 0.0;
      }

      result = MEMORY[0x1D3896810](*&v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D20D7EE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D38967E0](v3);
  if (v3)
  {
    v5 = (a2 + 72);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_1D211375C();
      sub_1D211375C();
      if (v6 == 0.0)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = v6;
      }

      MEMORY[0x1D3896810](*&v8);
      if (v7 == 0.0)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = v7;
      }

      MEMORY[0x1D3896810](*&v9);

      v5 += 6;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D20D7FC0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HSCleanGuidanceThresholds(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x1D38967E0](v7);
  if (v7)
  {
    v9 = *(v3 + 20);
    v10 = *(v3 + 24);
    v11 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_1D20D8F58(v11, v6, type metadata accessor for HSCleanGuidanceThresholds);
      sub_1D2112C2C();
      sub_1D20D8A40(&qword_1EC6C7798, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
      sub_1D211374C();
      v13 = *&v6[v9];
      if (v13 == 0.0)
      {
        v13 = 0.0;
      }

      MEMORY[0x1D3896810](*&v13);
      v14 = *&v6[v10];
      if (v14 == 0.0)
      {
        v14 = 0.0;
      }

      MEMORY[0x1D3896810](*&v14);
      result = sub_1D20D8FC0(v6, type metadata accessor for HSCleanGuidanceThresholds);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1D20D8184(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HSGuidanceValue(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x1D38967E0](v7);
  if (v7)
  {
    v9 = *(v3 + 20);
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_1D20D8F58(v10, v6, type metadata accessor for HSGuidanceValue);
      sub_1D2112C2C();
      sub_1D20D8A40(&qword_1EC6C7798, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
      sub_1D211374C();
      v12 = *&v6[v9];
      if (v12 == 0.0)
      {
        v12 = 0.0;
      }

      MEMORY[0x1D3896810](*&v12);
      result = sub_1D20D8FC0(v6, type metadata accessor for HSGuidanceValue);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t _s12HomeServices10HSGuidanceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HSCleanGuidanceThresholds(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7598, &qword_1D2115B60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77B8, &qword_1D21169E8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  if ((sub_1D21131BC() & 1) == 0)
  {
    goto LABEL_18;
  }

  v14 = type metadata accessor for HSGuidance(0);
  if (*(a1 + *(v14 + 20)) != *(a2 + *(v14 + 20)))
  {
    goto LABEL_18;
  }

  v15 = v14;
  v16 = *(v14 + 24);
  v17 = *(v11 + 48);
  sub_1D20D8788(a1 + v16, v13);
  sub_1D20D8788(a2 + v16, &v13[v17]);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_1D20D8788(v13, v10);
    if (v18(&v13[v17], 1, v4) != 1)
    {
      sub_1D20D88A0(&v13[v17], v7, type metadata accessor for HSCleanGuidanceThresholds);
      if ((sub_1D2112BCC() & 1) != 0 && *&v10[*(v4 + 20)] == *&v7[*(v4 + 20)])
      {
        v22 = *(v4 + 24);
        v23 = *&v10[v22];
        v24 = *&v7[v22];
        sub_1D20D8FC0(v7, type metadata accessor for HSCleanGuidanceThresholds);
        sub_1D20D8FC0(v10, type metadata accessor for HSCleanGuidanceThresholds);
        sub_1D20A862C(v13, &qword_1EC6C7598, &qword_1D2115B60);
        if (v23 == v24)
        {
          goto LABEL_6;
        }

LABEL_18:
        v19 = 0;
        return v19 & 1;
      }

      sub_1D20D8FC0(v7, type metadata accessor for HSCleanGuidanceThresholds);
      sub_1D20D8FC0(v10, type metadata accessor for HSCleanGuidanceThresholds);
      v20 = &qword_1EC6C7598;
      v21 = &qword_1D2115B60;
LABEL_17:
      sub_1D20A862C(v13, v20, v21);
      goto LABEL_18;
    }

    sub_1D20D8FC0(v10, type metadata accessor for HSCleanGuidanceThresholds);
LABEL_11:
    v20 = &qword_1EC6C77B8;
    v21 = &qword_1D21169E8;
    goto LABEL_17;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_1D20A862C(v13, &qword_1EC6C7598, &qword_1D2115B60);
LABEL_6:
  if ((sub_1D2112BCC() & 1) == 0 || (sub_1D20FCB58(*(a1 + *(v15 + 32)), *(a2 + *(v15 + 32))) & 1) == 0)
  {
    goto LABEL_18;
  }

  v19 = sub_1D2112BCC();
  return v19 & 1;
}

uint64_t sub_1D20D86CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7598, &qword_1D2115B60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for HSGuidance(uint64_t a1)
{
  result = qword_1EE0848D8;
  if (!qword_1EE0848D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D20D8788(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7598, &qword_1D2115B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D20D87F8()
{
  result = qword_1EE0848F8;
  if (!qword_1EE0848F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0848F8);
  }

  return result;
}

unint64_t sub_1D20D884C()
{
  result = qword_1EE0841A8;
  if (!qword_1EE0841A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0841A8);
  }

  return result;
}

uint64_t sub_1D20D88A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D20D8908()
{
  result = qword_1EE083C18;
  if (!qword_1EE083C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083C18);
  }

  return result;
}

uint64_t sub_1D20D895C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7788, &qword_1D21167C0);
    sub_1D20D8A40(a2, type metadata accessor for HSGuidanceValue, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D20D8A40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D20D8AB0(uint64_t a1)
{
  sub_1D21131DC();
  if (v1 <= 0x3F)
  {
    sub_1D20D8BD0(319, qword_1EE0844F8, type metadata accessor for HSCleanGuidanceThresholds, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D2112C2C();
      if (v3 <= 0x3F)
      {
        sub_1D20D8BD0(319, &qword_1EE084428, type metadata accessor for HSGuidanceValue, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D20D8BD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D20D8C48()
{
  result = qword_1EC6C77B0;
  if (!qword_1EC6C77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C77B0);
  }

  return result;
}

unint64_t sub_1D20D8CA0()
{
  result = qword_1EE0848E8;
  if (!qword_1EE0848E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0848E8);
  }

  return result;
}

unint64_t sub_1D20D8CF8()
{
  result = qword_1EE0848F0;
  if (!qword_1EE0848F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0848F0);
  }

  return result;
}

uint64_t sub_1D20D8D4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEA00000000007364 || (sub_1D2113E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E4964696C6176 && a2 == 0xED00006C61767265)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D2113E2C();

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

uint64_t sub_1D20D8F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D20D8FC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D20D9024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1D20E76A0(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1D20E4570(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1D20E7990();
        v16 = v18;
      }

      result = sub_1D20E7368(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1D20D912C(uint64_t a1, uint64_t a2)
{
  v33 = sub_1D2112C6C();
  v4 = *(v33 - 8);
  v5 = MEMORY[0x1EEE9AC00](v33);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C7258, &qword_1D21149C8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  v13 = sub_1D2112D0C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112F1C();
  sub_1D2112CFC();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D20A862C(v12, &unk_1EC6C7258, &qword_1D21149C8);
    return 0;
  }

  (*(v14 + 32))(v16, v12, v13);
  result = sub_1D2112C7C();
  if (!result)
  {
LABEL_12:
    (*(v14 + 8))(v16, v13);
    return 0;
  }

  v18 = result;
  v29 = v16;
  v30 = v14;
  v31 = v13;
  v28 = v9;
  v19 = *(result + 16);
  if (!v19)
  {
LABEL_11:

    v14 = v30;
    v13 = v31;
    v16 = v29;
    goto LABEL_12;
  }

  v20 = 0;
  v32 = v4 + 16;
  while (v20 < *(v18 + 16))
  {
    (*(v4 + 16))(v7, v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v33);
    if (sub_1D2112C4C() == a1 && v21 == a2)
    {

LABEL_16:

      v25 = v28;
      v26 = v33;
      (*(v4 + 32))(v28, v7, v33);
      v27 = sub_1D2112C5C();
      (*(v30 + 8))(v29, v31);
      (*(v4 + 8))(v25, v26);
      return v27;
    }

    v22 = a1;
    v23 = a2;
    v24 = sub_1D2113E2C();

    if (v24)
    {
      goto LABEL_16;
    }

    ++v20;
    result = (*(v4 + 8))(v7, v33);
    a2 = v23;
    a1 = v22;
    if (v19 == v20)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D20D94F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v37 = a2;
  v38 = a5;
  v10 = sub_1D2112B1C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D211319C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D211317C();
  sub_1D211314C();
  v19 = v18;
  (*(v15 + 8))(v17, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73A8, "J{");
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E63B0];
  *(v20 + 16) = xmmword_1D2114850;
  v22 = MEMORY[0x1E69E6438];
  *(v20 + 56) = v21;
  *(v20 + 64) = v22;
  *(v20 + 32) = floor(v19 * 1000.0 / 300000.0) * 300000.0;
  v23 = sub_1D21137FC();
  v25 = v24;
  v26 = v37;
  v36[1] = a3;
  v37 = a4;
  sub_1D20D9968(a1, v26, a3, a4, v23, v25);
  if (v27)
  {
    (*(v11 + 16))(v13, v6, v10);
    sub_1D20DA6E0();
    if (v28)
    {
      sub_1D2112AEC();
    }

    sub_1D2112AEC();

    sub_1D2112AEC();

    sub_1D2112AEC();
    sub_1D2112AEC();
    v29 = v38;
    (*(v11 + 32))(v38, v13, v10);
    v30 = 0;
  }

  else
  {

    if (qword_1EC6C7170 != -1)
    {
      swift_once();
    }

    v31 = sub_1D211362C();
    __swift_project_value_buffer(v31, qword_1EC6CE850);
    v32 = sub_1D21135FC();
    v33 = sub_1D2113A7C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D209F000, v32, v33, "Unable to generate HMAC Signature", v34, 2u);
      MEMORY[0x1D3896EB0](v34, -1, -1);
    }

    v30 = 1;
    v29 = v38;
  }

  return (*(v11 + 56))(v29, v30, 1, v10);
}

uint64_t sub_1D20D9968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v113 = a5;
  v115 = a3;
  v116 = a4;
  v120 = a1;
  v121 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77C0, &qword_1D2116A20);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v124 = v108 - v9;
  v125 = sub_1D21136BC();
  v123 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v122 = v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C7258, &qword_1D21149C8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v118 = v108 - v12;
  v119 = sub_1D211381C();
  v126 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v14 = v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v108 - v16;
  v18 = sub_1D2112F9C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112ADC();
  v22 = v18;
  v23 = v19;
  if ((*(v19 + 48))(v17, 1, v22) == 1)
  {
    sub_1D20A862C(v17, &qword_1EC6C7250, &qword_1D21149C0);
    if (qword_1EC6C7170 != -1)
    {
      swift_once();
    }

    v24 = sub_1D211362C();
    __swift_project_value_buffer(v24, qword_1EC6CE850);
    v25 = sub_1D21135FC();
    v26 = sub_1D2113A7C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1D209F000, v25, v26, "Unable to retrieve URL from request.", v27, 2u);
      MEMORY[0x1D3896EB0](v27, -1, -1);
    }

    return 0;
  }

  else
  {
    v112 = v7;
    v29 = *(v19 + 32);
    v110 = v22;
    v29(v21, v17, v22);
    sub_1D2112A7C();
    v111 = v8;
    if (v30)
    {
      sub_1D211382C();
      v114 = v31;
    }

    else
    {
      v114 = 0xE000000000000000;
    }

    sub_1D2112F4C();
    v108[1] = sub_1D211382C();
    v117 = v32;

    v33 = sub_1D2112AAC();
    if (v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = MEMORY[0x1E69E7CC8];
    }

    v133 = v34;
    v35 = sub_1D20DA6E0();
    if (v36)
    {
      sub_1D20D9024(v35, v36, 0xD000000000000016, 0x80000001D211B140);
      v34 = v133;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v129 = v34;
    sub_1D20E76A0(v113, a6, 0xD00000000000001BLL, 0x80000001D211B0E0, isUniquelyReferenced_nonNull_native);
    v38 = v129;
    v133 = v129;
    v39 = v116;

    v40 = swift_isUniquelyReferenced_nonNull_native();
    v129 = v38;
    sub_1D20E76A0(v115, v39, 0xD00000000000001BLL, 0x80000001D211B120, v40);
    v41 = sub_1D20DA90C(v129);
    v115 = v42;
    v116 = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7410, &qword_1D2115438);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1D2115280;
    sub_1D211380C();
    v44 = sub_1D21137DC();
    v46 = v45;
    v47 = *(v126 + 8);
    v48 = v119;
    v126 += 8;
    v47(v14, v119);
    if (v46 >> 60 == 15)
    {
      if (qword_1EC6C7170 != -1)
      {
        swift_once();
      }

      v49 = sub_1D211362C();
      __swift_project_value_buffer(v49, qword_1EC6CE850);
      v50 = sub_1D21135FC();
      v51 = sub_1D2113A7C();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_1D209F000, v50, v51, "String encoding failed. Returning empty string", v52, 2u);
        MEMORY[0x1D3896EB0](v52, -1, -1);
      }

      v53 = 0;
      v54 = 0xE000000000000000;
    }

    else
    {
      v53 = sub_1D211300C();
      v54 = v55;
      sub_1D20A1284(v44, v46);
    }

    *(v43 + 32) = v53;
    *(v43 + 40) = v54;
    sub_1D211380C();
    v56 = sub_1D21137DC();
    v58 = v57;
    v47(v14, v48);
    if (v58 >> 60 == 15)
    {
      if (qword_1EC6C7170 != -1)
      {
        swift_once();
      }

      v59 = sub_1D211362C();
      __swift_project_value_buffer(v59, qword_1EC6CE850);
      v60 = sub_1D21135FC();
      v61 = sub_1D2113A7C();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_1D209F000, v60, v61, "String encoding failed. Returning empty string", v62, 2u);
        MEMORY[0x1D3896EB0](v62, -1, -1);
      }

      v63 = 0;
      v64 = 0xE000000000000000;
    }

    else
    {
      v63 = sub_1D211300C();
      v64 = v65;
      sub_1D20A1284(v56, v58);
    }

    *(v43 + 48) = v63;
    *(v43 + 56) = v64;
    v66 = v118;
    sub_1D2112CCC();
    v67 = sub_1D2112D0C();
    v68 = *(v67 - 8);
    v69 = (*(v68 + 48))(v66, 1, v67);
    v117 = v21;
    if (v69 == 1)
    {
      sub_1D20A862C(v66, &unk_1EC6C7258, &qword_1D21149C8);
    }

    else
    {
      v70 = v66;
      v71 = sub_1D2112C9C();
      v73 = v72;
      (*(v68 + 8))(v70, v67);
      if (v73)
      {
        v74 = HIBYTE(v73) & 0xF;
        if ((v73 & 0x2000000000000000) == 0)
        {
          v74 = v71 & 0xFFFFFFFFFFFFLL;
        }

        if (v74)
        {
          sub_1D211380C();
          v75 = sub_1D21137DC();
          v77 = v76;
          v47(v14, v48);
          if (v77 >> 60 == 15)
          {
            if (qword_1EC6C7170 != -1)
            {
              swift_once();
            }

            v78 = sub_1D211362C();
            __swift_project_value_buffer(v78, qword_1EC6CE850);
            v79 = sub_1D21135FC();
            v80 = sub_1D2113A7C();
            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              *v81 = 0;
              _os_log_impl(&dword_1D209F000, v79, v80, "String encoding failed. Returning empty string", v81, 2u);
              MEMORY[0x1D3896EB0](v81, -1, -1);
            }

            v82 = 0;
            v83 = 0xE000000000000000;
          }

          else
          {
            v82 = sub_1D211300C();
            v83 = v84;
            sub_1D20A1284(v75, v77);
          }

          v86 = *(v43 + 16);
          v85 = *(v43 + 24);
          if (v86 >= v85 >> 1)
          {
            v43 = sub_1D20B6FAC((v85 > 1), v86 + 1, 1, v43);
          }

          *(v43 + 16) = v86 + 1;
          v87 = v43 + 16 * v86;
          *(v87 + 32) = v82;
          *(v87 + 40) = v83;
        }

        else
        {
        }
      }
    }

    v89 = *(v43 + 16);
    v88 = *(v43 + 24);
    v109 = v23;
    if (v89 >= v88 >> 1)
    {
      v43 = sub_1D20B6FAC((v88 > 1), v89 + 1, 1, v43);
    }

    *(v43 + 16) = v89 + 1;
    v90 = v43 + 16 * v89;
    v91 = v115;
    *(v90 + 32) = v116;
    *(v90 + 40) = v91;
    v129 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7320, &qword_1D2114A98);
    sub_1D20DE7E4(&qword_1EE084418, &qword_1EC6C7320, &qword_1D2114A98, MEMORY[0x1E69E6310]);
    v92 = sub_1D211376C();
    v94 = v93;

    v95 = sub_1D20DADE8(v92, v94);
    v126 = v95;
    v97 = v96;
    v98 = v121;

    v129 = sub_1D20DADE8(v120, v98);
    v130 = v99;
    v100 = v122;
    sub_1D21136AC();
    v129 = v95;
    v130 = v97;
    sub_1D21136EC();
    sub_1D20DE668(&qword_1EE084448, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    sub_1D20DE790();
    v101 = v124;
    sub_1D21136CC();
    v102 = v112;
    v131 = v112;
    v132 = sub_1D20DE7E4(&qword_1EE084450, &qword_1EC6C77C0, &qword_1D2116A20, MEMORY[0x1E69664B0]);
    v103 = __swift_allocate_boxed_opaque_existential_1(&v129);
    v104 = v111;
    (*(v111 + 16))(v103, v101, v102);
    __swift_project_boxed_opaque_existential_1(&v129, v131);
    sub_1D2112EBC();
    v105 = v127;
    v106 = v128;
    __swift_destroy_boxed_opaque_existential_1(&v129);
    v107 = sub_1D211300C();
    sub_1D20B98A4(v105, v106);
    sub_1D20B98A4(v126, v97);

    (*(v104 + 8))(v101, v102);
    (*(v123 + 8))(v100, v125);
    (*(v109 + 8))(v117, v110);
    return v107;
  }
}

uint64_t sub_1D20DA6E0()
{
  v0 = sub_1D21136EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = sub_1D211369C();
  v4 = *(v13[0] - 8);
  MEMORY[0x1EEE9AC00](v13[0]);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2112AFC();
  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v8 >> 60 == 15)
  {
    v10 = 0xC000000000000000;
  }

  else
  {
    v10 = v8;
  }

  sub_1D20DE668(&qword_1EE084448, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1D211368C();
  sub_1D20C7064(v9, v10);
  sub_1D20DE488(v9, v10, v3);
  sub_1D20B98A4(v9, v10);
  sub_1D211367C();
  (*(v1 + 8))(v3, v0);
  v11 = sub_1D20DB308();
  sub_1D20B98A4(v9, v10);
  (*(v4 + 8))(v6, v13[0]);
  return v11;
}

uint64_t sub_1D20DA90C(uint64_t a1)
{
  v2 = sub_1D211381C();
  v47 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v48 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = 0;
  v52 = 0xE000000000000000;
  v5 = *(a1 + 16);
  v44 = v3;
  if (v5)
  {
    v6 = sub_1D20DC67C(v5, 0);
    v7 = sub_1D20DE1C8(&v49, v6 + 4, v5, a1);
    v8 = v49;

    sub_1D20DEC68(v8);
    if (v7 != v5)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v2 = v44;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v49 = v6;
  sub_1D20DD0D0(&v49);
  v9 = *(v49 + 2);
  if (v9)
  {
    ++v47;
    v43 = v49;
    v10 = (v49 + 40);
    do
    {
      if (*(a1 + 16))
      {
        v15 = *(v10 - 1);
        v14 = *v10;

        v16 = sub_1D20E4570(v15, v14);
        if (v17)
        {
          v18 = (*(a1 + 56) + 16 * v16);
          v19 = v18[1];
          v45 = *v18;
          v46 = v19;

          v20 = v48;
          sub_1D211380C();
          v21 = sub_1D21137DC();
          v23 = v22;
          v24 = *v47;
          (*v47)(v20, v2);
          if (v23 >> 60 == 15)
          {
            if (qword_1EC6C7170 != -1)
            {
              swift_once();
            }

            v25 = sub_1D211362C();
            __swift_project_value_buffer(v25, qword_1EC6CE850);
            v26 = sub_1D21135FC();
            v27 = sub_1D2113A7C();
            if (os_log_type_enabled(v26, v27))
            {
              v28 = swift_slowAlloc();
              *v28 = 0;
              _os_log_impl(&dword_1D209F000, v26, v27, "String encoding failed. Returning empty string", v28, 2u);
              v29 = v28;
              v2 = v44;
              MEMORY[0x1D3896EB0](v29, -1, -1);
            }

            v30 = 0;
            v31 = 0xE000000000000000;
          }

          else
          {
            v30 = sub_1D211300C();
            v31 = v32;
            sub_1D20A1284(v21, v23);
          }

          v49 = v30;
          v50 = v31;
          MEMORY[0x1D38961A0](124, 0xE100000000000000);
          MEMORY[0x1D38961A0](v49, v50);

          v33 = v48;
          sub_1D211380C();
          v34 = sub_1D21137DC();
          v36 = v35;
          v24(v33, v2);
          if (v36 >> 60 == 15)
          {
            if (qword_1EC6C7170 != -1)
            {
              swift_once();
            }

            v37 = sub_1D211362C();
            __swift_project_value_buffer(v37, qword_1EC6CE850);
            v38 = sub_1D21135FC();
            v39 = sub_1D2113A7C();
            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              *v40 = 0;
              _os_log_impl(&dword_1D209F000, v38, v39, "String encoding failed. Returning empty string", v40, 2u);
              v41 = v40;
              v2 = v44;
              MEMORY[0x1D3896EB0](v41, -1, -1);
            }

            v11 = 0;
            v13 = 0xE000000000000000;
          }

          else
          {
            v11 = sub_1D211300C();
            v13 = v12;
            sub_1D20A1284(v34, v36);
          }

          v49 = v11;
          v50 = v13;
          MEMORY[0x1D38961A0](124, 0xE100000000000000);
          MEMORY[0x1D38961A0](v49, v50);
        }
      }

      v10 += 2;
      --v9;
    }

    while (v9);

    return v51;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1D20DADE8(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77C8, &qword_1D2116A28);
  if (swift_dynamicCast())
  {
    sub_1D20DEC30(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_1D2112EBC();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1D20A862C(__src, &qword_1EC6C77D0, &qword_1D2116A30);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1D2113C5C();
  }

  sub_1D20DDBA8(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1D20DEA28(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v34[2] = v39;
  v10 = sub_1D20DDC70(sub_1D20DEBC8, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1D2112FDC();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1D20DE8A4(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1D21138CC();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1D21138FC();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1D2113C5C();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1D20DE8A4(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1D21138DC();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1D2112FEC();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1D2112FEC();
    sub_1D20A1284(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_1D20A1284(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1D20C7064(*&__src[0], *(&__src[0] + 1));

  sub_1D20B98A4(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_1D20DB308()
{
  sub_1D211369C();
  sub_1D20DE668(&unk_1EE084458, MEMORY[0x1E69663E0], MEMORY[0x1E69663D8]);
  v0 = sub_1D21136DC();
  v2 = sub_1D20DE320(v0, v1);

  v3 = v2[2];
  if (v3)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D20DC7F4(0, v3, 0);
    v4 = 32;
    v5 = v19;
    v6 = MEMORY[0x1E69E7508];
    v7 = MEMORY[0x1E69E7558];
    do
    {
      v8 = *(v2 + v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73A8, "J{");
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D2114850;
      *(v9 + 56) = v6;
      *(v9 + 64) = v7;
      *(v9 + 32) = v8;
      v10 = sub_1D21137FC();
      v20 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        v18 = v10;
        v15 = v11;
        sub_1D20DC7F4((v12 > 1), v13 + 1, 1);
        v11 = v15;
        v10 = v18;
        v5 = v20;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      ++v4;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7320, &qword_1D2114A98);
  sub_1D20DE7E4(&qword_1EE084418, &qword_1EC6C7320, &qword_1D2114A98, MEMORY[0x1E69E6310]);
  v16 = sub_1D211376C();

  return v16;
}

void sub_1D20DB540(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D2112AAC();
  if (v8)
  {
    v9 = v8;
    if (qword_1EE084470 != -1)
    {
LABEL_28:
      swift_once();
    }

    v10 = sub_1D211362C();
    __swift_project_value_buffer(v10, qword_1EE087530);

    v11 = sub_1D21135FC();
    v12 = sub_1D2113A9C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v9;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v44 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1D20B75F0(a3, a4, &v44);
      _os_log_impl(&dword_1D209F000, v11, v12, ">>> %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1D3896EB0](v15, -1, -1);
      v16 = v14;
      v9 = v13;
      MEMORY[0x1D3896EB0](v16, -1, -1);
    }

    v17 = sub_1D21135FC();
    a3 = sub_1D2113A9C();

    if (os_log_type_enabled(v17, a3))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v44 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1D20B75F0(a1, a2, &v44);
      _os_log_impl(&dword_1D209F000, v17, a3, "%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1D3896EB0](v19, -1, -1);
      MEMORY[0x1D3896EB0](v18, -1, -1);
    }

    a2 = sub_1D21135FC();
    v20 = sub_1D2113A9C();
    if (os_log_type_enabled(a2, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D209F000, a2, v20, "======== Headers =======", v21, 2u);
      MEMORY[0x1D3896EB0](v21, -1, -1);
    }

    v22 = 0;
    v23 = v9 + 64;
    v24 = 1 << *(v9 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    a1 = v25 & *(v9 + 64);
    v26 = (v24 + 63) >> 6;
    v40 = v9;
    while (a1)
    {
      a4 = v22;
LABEL_19:
      v27 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v28 = (a4 << 10) | (16 * v27);
      v29 = *(v9 + 48) + v28;
      a2 = *v29;
      v30 = *(v29 + 8);
      v31 = (*(v9 + 56) + v28);
      a3 = v31[1];
      v42 = *v31;

      v32 = sub_1D21135FC();
      v33 = sub_1D2113A9C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v44 = v41;
        *v34 = 136315394;
        v35 = sub_1D20B75F0(a2, v30, &v44);

        *(v34 + 4) = v35;
        *(v34 + 12) = 2080;
        v36 = sub_1D20B75F0(v42, a3, &v44);

        *(v34 + 14) = v36;
        _os_log_impl(&dword_1D209F000, v32, v33, "%s: %s", v34, 0x16u);
        a2 = v41;
        swift_arrayDestroy();
        MEMORY[0x1D3896EB0](v41, -1, -1);
        v37 = v34;
        v9 = v40;
        MEMORY[0x1D3896EB0](v37, -1, -1);
      }

      else
      {
      }

      v22 = a4;
    }

    while (1)
    {
      a4 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (a4 >= v26)
      {
        break;
      }

      a1 = *(v23 + 8 * a4);
      ++v22;
      if (a1)
      {
        goto LABEL_19;
      }
    }

    oslog = sub_1D21135FC();
    v38 = sub_1D2113A9C();
    if (os_log_type_enabled(oslog, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1D209F000, oslog, v38, "========================", v39, 2u);
      MEMORY[0x1D3896EB0](v39, -1, -1);
    }
  }
}

void sub_1D20DBA60(_DWORD *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v118 = *MEMORY[0x1E69E9840];
  v10 = sub_1D211381C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v108 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v105 - v16;
  v18 = sub_1D2112B1C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a4 + 16);
  v23 = (a4 + 32);
  while (v22)
  {
    v24 = *v23++;
    --v22;
    if (v24 == a3)
    {
      return;
    }
  }

  v112 = sub_1D2112AAC();
  if (v112)
  {
    v111 = a1;
    v113 = v19;
    if (qword_1EE084470 != -1)
    {
LABEL_52:
      swift_once();
    }

    v25 = sub_1D211362C();
    v26 = __swift_project_value_buffer(v25, qword_1EE087530);

    v110 = v26;
    v27 = sub_1D21135FC();
    v28 = sub_1D2113A7C();

    v29 = os_log_type_enabled(v27, v28);
    v106 = v5;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v116 = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_1D20B75F0(v111, a2, &v116);
      *(v30 + 12) = 2048;
      *(v30 + 14) = a3;
      _os_log_impl(&dword_1D209F000, v27, v28, "Failure while trying to %s, with status Code: %ld", v30, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1D3896EB0](v31, -1, -1);
      v32 = v30;
      v5 = v106;
      MEMORY[0x1D3896EB0](v32, -1, -1);
    }

    v33 = v113;
    (v113[2].isa)(v21, v5, v18);
    v34 = sub_1D21135FC();
    a3 = sub_1D2113A7C();
    if (os_log_type_enabled(v34, a3))
    {
      v35 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *&v116 = v109;
      v111 = v35;
      *v35 = 136315138;
      sub_1D2112ADC();
      v36 = sub_1D2112F9C();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v17, 1, v36) == 1)
      {
        sub_1D20A862C(v17, &qword_1EC6C7250, &qword_1D21149C0);
        v38 = 0;
        v39 = 0xE000000000000000;
      }

      else
      {
        v38 = sub_1D2112F1C();
        v39 = v40;
        (*(v37 + 8))(v17, v36);
      }

      (v113[1].isa)(v21, v18);
      v41 = sub_1D20B75F0(v38, v39, &v116);

      v42 = v111;
      *(v111 + 1) = v41;
      _os_log_impl(&dword_1D209F000, v34, a3, "Request : %s", v42, 0xCu);
      v43 = v109;
      __swift_destroy_boxed_opaque_existential_1(v109);
      MEMORY[0x1D3896EB0](v43, -1, -1);
      MEMORY[0x1D3896EB0](v42, -1, -1);
    }

    else
    {

      (v33[1].isa)(v21, v18);
    }

    sub_1D2112ADC();
    v44 = sub_1D2112F9C();
    v45 = *(v44 - 8);
    v46 = (*(v45 + 48))(v15, 1, v44);
    v21 = v110;
    if (v46 == 1)
    {
      sub_1D20A862C(v15, &qword_1EC6C7250, &qword_1D21149C0);
    }

    else
    {
      v47 = sub_1D2112F6C();
      v49 = v48;
      (*(v45 + 8))(v15, v44);
      if (v49)
      {

        v50 = sub_1D21135FC();
        v51 = sub_1D2113A7C();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          *&v116 = v15;
          *v52 = 136315138;
          v53 = sub_1D20B75F0(v47, v49, &v116);

          *(v52 + 4) = v53;
          _os_log_impl(&dword_1D209F000, v50, v51, "Query : %s", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v15);
          MEMORY[0x1D3896EB0](v15, -1, -1);
          MEMORY[0x1D3896EB0](v52, -1, -1);
        }

        else
        {
        }
      }
    }

    v54 = sub_1D21135FC();
    v55 = sub_1D2113A7C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1D209F000, v54, v55, "======== Headers =======", v56, 2u);
      MEMORY[0x1D3896EB0](v56, -1, -1);
    }

    v58 = 0;
    a2 = v112 + 64;
    v59 = *(v112 + 64);
    v60 = 1 << *(v112 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & v59;
    v5 = (v60 + 63) >> 6;
    *&v57 = 136315394;
    v107 = v57;
    if ((v61 & v59) != 0)
    {
      while (1)
      {
        v17 = v58;
LABEL_31:
        v63 = __clz(__rbit64(v62));
        v62 &= v62 - 1;
        v64 = (v17 << 10) | (16 * v63);
        v65 = (*(v112 + 48) + v64);
        a3 = *v65;
        v18 = v65[1];
        v66 = (*(v112 + 56) + v64);
        v67 = v66[1];
        v111 = *v66;

        v15 = v21;
        v68 = sub_1D21135FC();
        v69 = sub_1D2113A7C();
        v113 = v68;
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          *&v116 = v109;
          *v70 = v107;
          a3 = sub_1D20B75F0(a3, v18, &v116);

          *(v70 + 4) = a3;
          *(v70 + 12) = 2080;
          v15 = sub_1D20B75F0(v111, v67, &v116);

          *(v70 + 14) = v15;
          v71 = v69;
          v72 = v113;
          _os_log_impl(&dword_1D209F000, v113, v71, "%s: %s", v70, 0x16u);
          v73 = v109;
          swift_arrayDestroy();
          MEMORY[0x1D3896EB0](v73, -1, -1);
          v74 = v70;
          v21 = v110;
          MEMORY[0x1D3896EB0](v74, -1, -1);

          v58 = v17;
          if (!v62)
          {
            goto LABEL_28;
          }
        }

        else
        {

          v58 = v17;
          v21 = v15;
          if (!v62)
          {
            goto LABEL_28;
          }
        }
      }
    }

    while (1)
    {
LABEL_28:
      v17 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        __break(1u);
        goto LABEL_52;
      }

      if (v17 >= v5)
      {
        break;
      }

      v62 = *(a2 + 8 * v17);
      ++v58;
      if (v62)
      {
        goto LABEL_31;
      }
    }

    v75 = sub_1D21135FC();
    v76 = sub_1D2113A7C();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_1D209F000, v75, v76, "========================", v77, 2u);
      MEMORY[0x1D3896EB0](v77, -1, -1);
    }

    v78 = sub_1D2112AFC();
    if (v79 >> 60 != 15)
    {
      v80 = v78;
      v81 = v79;
      v82 = objc_opt_self();
      v83 = sub_1D2112FFC();
      v114 = 0;
      v84 = [v82 JSONObjectWithData:v83 options:0 error:&v114];

      v85 = v114;
      if (v84)
      {
        sub_1D2113B7C();
        swift_unknownObjectRelease();
        sub_1D20B3388(v115, &v116);
        __swift_project_boxed_opaque_existential_1(&v116, v117);
        v86 = sub_1D2113E1C();
        *&v115[0] = 0;
        v87 = [v82 dataWithJSONObject:v86 options:1 error:v115];
        swift_unknownObjectRelease();
        v88 = *&v115[0];
        if (v87)
        {
          v89 = sub_1D211301C();
          v91 = v90;

          sub_1D211380C();
          v92 = sub_1D21137EC();
          if (v93)
          {
            v94 = v93;
            v95 = v92;
            v96 = sub_1D21135FC();
            v97 = sub_1D2113A7C();
            if (os_log_type_enabled(v96, v97))
            {
              v98 = swift_slowAlloc();
              v99 = swift_slowAlloc();
              *&v115[0] = v99;
              *v98 = 136315138;
              v100 = sub_1D20B75F0(v95, v94, v115);

              *(v98 + 4) = v100;
              _os_log_impl(&dword_1D209F000, v96, v97, "Body : %s", v98, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v99);
              MEMORY[0x1D3896EB0](v99, -1, -1);
              MEMORY[0x1D3896EB0](v98, -1, -1);
              sub_1D20A1284(v80, v81);
              sub_1D20B98A4(v89, v91);
            }

            else
            {
              sub_1D20A1284(v80, v81);
              sub_1D20B98A4(v89, v91);
            }
          }

          else
          {
            sub_1D20A1284(v80, v81);
            sub_1D20B98A4(v89, v91);
          }
        }

        else
        {
          v103 = v88;
          v104 = sub_1D2112EFC();

          swift_willThrow();
          sub_1D20A1284(v80, v81);
        }

        __swift_destroy_boxed_opaque_existential_1(&v116);
      }

      else
      {
        v101 = v85;
        v102 = sub_1D2112EFC();

        swift_willThrow();
        sub_1D20A1284(v80, v81);
      }
    }
  }
}

void *sub_1D20DC67C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7410, &qword_1D2115438);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1D20DC700(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7588, &qword_1D2115AD8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

char *sub_1D20DC784(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D20DC8EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D20DC7A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D20DC9F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D20DC7C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D20DCE08(a1, a2, a3, *v3, &qword_1EC6C7430, &unk_1D2115458);
  *v3 = result;
  return result;
}

char *sub_1D20DC7F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D20DCBE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D20DC814(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D20DCCEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D20DC834(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D20DCE08(a1, a2, a3, *v3, &qword_1EC6C77E8, &qword_1D2116A48);
  *v3 = result;
  return result;
}

void *sub_1D20DC864(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D20DCEF4(a1, a2, a3, *v3, &qword_1EC6C7420, &qword_1D2115448, type metadata accessor for HSGuidanceValue);
  *v3 = result;
  return result;
}

void *sub_1D20DC8A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D20DCEF4(a1, a2, a3, *v3, &qword_1EC6C73F0, &unk_1D2115730, type metadata accessor for HSCleanGuidanceThresholds);
  *v3 = result;
  return result;
}

char *sub_1D20DC8EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7588, &qword_1D2115AD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1D20DC9F0(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77D8, &qword_1D2116A38);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77E0, &qword_1D2116A40) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77E0, &qword_1D2116A40) - 8);
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

char *sub_1D20DCBE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7410, &qword_1D2115438);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D20DCCEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77F0, &unk_1D2116A50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D20DCE08(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_1D20DCEF4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1D20DD0D0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D20DE890(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D20DD13C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D20DD13C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D2113DFC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D21139FC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D20DD304(v7, v8, a1, v4);
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
    return sub_1D20DD234(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D20DD234(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1D2113E2C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D20DD304(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1D20DDB94(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1D20DD8E0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1D2113E2C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1D2113E2C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D20B70E0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1D20B70E0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1D20DD8E0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D20DDB94(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1D20DDB08(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1D2113E2C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1D20DD8E0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1D2113E2C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1D2113E2C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1D20DDB08(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D20DDB94(v3);
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

uint64_t *sub_1D20DDBA8@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_1D20DE970(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1D2112D7C();
      swift_allocObject();
      v8 = sub_1D2112D2C();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_1D2112FCC();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_1D20DDC70(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1D20B98A4(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1D20B98A4(v7, v6);
    *v4 = xmmword_1D21169F0;
    sub_1D20B98A4(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1D2112D3C() && __OFSUB__(v7, sub_1D2112D6C()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1D2112D7C();
      swift_allocObject();
      v14 = sub_1D2112D1C();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1D20DE114(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_1D20B98A4(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1D21169F0;
    sub_1D20B98A4(0, 0xC000000000000000);
    sub_1D2112FAC();
    result = sub_1D20DE114(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_1D20DE014@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1D20DE970(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1D20DEAC8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1D20DEB44(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1D20DE0A8(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1D20DE114(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1D2112D3C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1D2112D6C();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1D2112D5C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

void *sub_1D20DE1C8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D20DE320(void *result, uint64_t a2)
{
  v2 = result[2];
  v3 = MEMORY[0x1E69E7CC0];
  v4 = v2 - a2;
  if (v2 != a2)
  {
    if (v2 > a2)
    {
      if (a2 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (!v2)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v5 = 0;
      v6 = result + a2 + 32;
      v7 = (MEMORY[0x1E69E7CC0] + 32);
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (!v5)
        {
          v10 = v3[3];
          if (((v10 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_28;
          }

          v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7430, &unk_1D2115458);
          v13 = swift_allocObject();
          v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
          v13[2] = v12;
          v13[3] = v14;
          v15 = (v13 + 4);
          v16 = v3[3] >> 1;
          if (v3[2])
          {
            if (v13 != v3 || v15 >= v3 + v16 + 32)
            {
              memmove(v13 + 4, v3 + 4, v16);
            }

            v3[2] = 0;
          }

          v7 = (v15 + v16);
          v5 = (v14 >> 1) - v16;

          v3 = v13;
        }

        v18 = __OFSUB__(v5--, 1);
        if (v18)
        {
          break;
        }

        *v7++ = v8;
        if (!--v4)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v5 = 0;
LABEL_23:
  v19 = v3[3];
  if (v19 < 2)
  {
    return v3;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v5);
  v21 = v20 - v5;
  if (!v18)
  {
    v3[2] = v21;
    return v3;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D20DE488(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1D21136EC();
      sub_1D20DE668(&qword_1EE084448, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1D211366C();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1D20DE6B0(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1D20DE6B0(v5, v6);
  }

  sub_1D21136EC();
  sub_1D20DE668(&qword_1EE084448, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  return sub_1D211366C();
}

uint64_t sub_1D20DE668(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D20DE6B0(uint64_t a1, uint64_t a2)
{
  result = sub_1D2112D3C();
  if (!result || (result = sub_1D2112D6C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1D2112D5C();
      sub_1D21136EC();
      sub_1D20DE668(&qword_1EE084448, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1D211366C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1D20DE790()
{
  result = qword_1EE084910;
  if (!qword_1EE084910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084910);
  }

  return result;
}

uint64_t sub_1D20DE7E4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1D20DE8A4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D211390C();
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
    v5 = MEMORY[0x1D38961F0](15, a1 >> 16);
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

uint64_t sub_1D20DE920@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_1D2113C3C();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D20DE970(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1D20DEA28(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1D2112D7C();
      swift_allocObject();
      sub_1D2112D4C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1D2112FCC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1D20DEAC8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1D2112D7C();
  swift_allocObject();
  result = sub_1D2112D2C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D2112FCC();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1D20DEB44(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1D2112D7C();
  swift_allocObject();
  result = sub_1D2112D2C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_1D20DEBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1D20DE0A8(sub_1D20DEC48, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1D20DEC30(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D20DEC74@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_1D2112F9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D20ECA00(v16);
  if (*(&v16[0] + 1) != 1)
  {
    v17 = v16[2];
    sub_1D20BD1B0(&v17, v15);
    sub_1D20A862C(v16, &qword_1EC6C7518, &unk_1D2116AB0);
    if (*(&v17 + 1))
    {
      sub_1D210CA58(v4);
      if ((*(v6 + 48))(v4, 1, v5) != 1)
      {
        (*(v6 + 32))(v8, v4, v5);
        sub_1D2112F3C();
        sub_1D20A862C(&v17, &qword_1EC6C7510, &unk_1D2115710);
        (*(v6 + 8))(v8, v5);
        v13 = 0;
        return (*(v6 + 56))(a1, v13, 1, v5);
      }

      sub_1D20A862C(&v17, &qword_1EC6C7510, &unk_1D2115710);
      sub_1D20A862C(v4, &qword_1EC6C7250, &qword_1D21149C0);
    }
  }

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D211362C();
  __swift_project_value_buffer(v9, qword_1EE0874C0);
  v10 = sub_1D21135FC();
  v11 = sub_1D2113A7C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1D209F000, v10, v11, "Unable to compute API Path for energy windows.", v12, 2u);
    MEMORY[0x1D3896EB0](v12, -1, -1);
  }

  v13 = 1;
  return (*(v6 + 56))(a1, v13, 1, v5);
}

uint64_t sub_1D20DEF68@<X0>(void (*a1)(char *, uint64_t)@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v89 = a3;
  v90 = a4;
  v86 = a1;
  v87 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v83 = &v79 - v7;
  v8 = sub_1D2112B1C();
  v91 = *(v8 - 8);
  v92 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v81 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v84 = &v79 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v88 = &v79 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v79 - v18;
  v20 = sub_1D2112F9C();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v82 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v79 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v85 = &v79 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v79 - v29;
  sub_1D20DEC74(v19);
  v31 = *(v21 + 48);
  if (v31(v19, 1, v20) != 1)
  {
    v80 = a5;
    v79 = *(v21 + 32);
    v79(v30, v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73B0, &unk_1D2115420);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D2114850;
    *(inited + 32) = 0x644964697267;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v86;
    *(inited + 56) = v87;

    v87 = v30;
    sub_1D2112F1C();
    sub_1D2112F7C();
    if (v31(v15, 1, v20) == 1)
    {

      sub_1D20A862C(v15, &qword_1EC6C7250, &qword_1D21149C0);
      v43 = v88;
      (*(v21 + 56))(v88, 1, 1, v20);
      v44 = v90;
    }

    else
    {
      v79(v26, v15, v20);
      v45 = v88;
      sub_1D20F108C(inited, 1, 0, v88);
      v43 = v45;

      v46 = *(v21 + 8);
      v46(v26, v20);
      v47 = v31(v45, 1, v20);
      v44 = v90;
      if (v47 != 1)
      {
        v86 = v46;
        v60 = v85;
        v79(v85, v45, v20);
        (*(v21 + 16))(v82, v60, v20);
        v61 = v84;
        sub_1D2112ACC();
        sub_1D2112A8C();
        if (sub_1D20CF7E0())
        {
          v62 = &unk_1F4D9E0E0;
        }

        else
        {
          v62 = &unk_1F4D9E120;
        }

        v63 = sub_1D20BABD4(v62, &unk_1F4D9E080);
        v65 = v64;
        sub_1D20CF7E0();
        v66 = v63;
        v67 = v83;
        sub_1D20D94F0(v66, v65, 49, 0xE100000000000000, v83);

        v50 = v91;
        v49 = v92;
        if ((*(v91 + 48))(v67, 1, v92) != 1)
        {
          v75 = v81;
          (*(v50 + 16))(v81, v67, v49);
          sub_1D2112AEC();
          sub_1D2112AEC();
          v76 = *(v50 + 8);
          v76(v67, v49);
          v77 = v80;
          (*(v50 + 32))(v80, v75, v49);
          sub_1D2112B0C();
          v76(v61, v49);
          v78 = v86;
          v86(v85, v20);
          v78(v87, v20);
          return (*(v50 + 56))(v77, 0, 1, v49);
        }

        v68 = v20;
        sub_1D20A862C(v67, &qword_1EC6C7508, &unk_1D2116AA0);
        v55 = v80;
        if (qword_1EE083DE8 != -1)
        {
          swift_once();
        }

        v69 = sub_1D211362C();
        __swift_project_value_buffer(v69, qword_1EE0874C0);

        v70 = sub_1D21135FC();
        v71 = sub_1D2113A7C();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v93[0] = v73;
          *v72 = 136315138;
          *(v72 + 4) = sub_1D20B75F0(v89, v44, v93);
          _os_log_impl(&dword_1D209F000, v70, v71, "Unable to create signed Energy Interval request | traceId: %s", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v73);
          MEMORY[0x1D3896EB0](v73, -1, -1);
          MEMORY[0x1D3896EB0](v72, -1, -1);
        }

        (*(v50 + 8))(v84, v49);
        v74 = v86;
        v86(v85, v68);
        v74(v87, v68);
        return (*(v50 + 56))(v55, 1, 1, v49);
      }
    }

    v48 = v21;
    sub_1D20A862C(v43, &qword_1EC6C7250, &qword_1D21149C0);
    v50 = v91;
    v49 = v92;
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v51 = sub_1D211362C();
    __swift_project_value_buffer(v51, qword_1EE0874C0);

    v52 = sub_1D21135FC();
    v53 = sub_1D2113A7C();

    v54 = os_log_type_enabled(v52, v53);
    v55 = v80;
    v56 = v87;
    if (v54)
    {
      v57 = swift_slowAlloc();
      v90 = v20;
      v58 = v57;
      v59 = swift_slowAlloc();
      v93[0] = v59;
      *v58 = 136315138;
      *(v58 + 4) = sub_1D20B75F0(v89, v44, v93);
      _os_log_impl(&dword_1D209F000, v52, v53, "Unable to create Grid Guidance URL with required query parameters | traceId: %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x1D3896EB0](v59, -1, -1);
      MEMORY[0x1D3896EB0](v58, -1, -1);

      (*(v48 + 8))(v56, v90);
    }

    else
    {

      (*(v48 + 8))(v56, v20);
    }

    return (*(v50 + 56))(v55, 1, 1, v49);
  }

  sub_1D20A862C(v19, &qword_1EC6C7250, &qword_1D21149C0);
  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v32 = sub_1D211362C();
  __swift_project_value_buffer(v32, qword_1EE0874C0);
  v33 = v90;

  v34 = sub_1D21135FC();
  v35 = sub_1D2113A7C();

  v36 = os_log_type_enabled(v34, v35);
  v38 = v91;
  v37 = v92;
  if (v36)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v93[0] = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_1D20B75F0(v89, v33, v93);
    _os_log_impl(&dword_1D209F000, v34, v35, "Request URL for Grid Guidance API URL not found | traceId: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x1D3896EB0](v40, -1, -1);
    MEMORY[0x1D3896EB0](v39, -1, -1);
  }

  return (*(v38 + 56))(a5, 1, 1, v37);
}

uint64_t sub_1D20DFABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  v8[13] = type metadata accessor for NetworkError(0);
  v8[14] = swift_task_alloc();
  v9 = sub_1D2112F9C();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0);
  v8[18] = swift_task_alloc();
  v10 = sub_1D2112B1C();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D20DFC4C, 0, 0);
}

uint64_t sub_1D20DFC4C()
{
  v23 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v9 = v0[6];
  v8 = v0[7];
  type metadata accessor for GridLookupRequest();
  swift_initStackObject();
  sub_1D210CF3C(v9, v8, v7, v6, v5, v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D20A862C(v0[18], &qword_1EC6C7508, &unk_1D2116AA0);
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D211362C();
    __swift_project_value_buffer(v10, qword_1EE087438);

    v11 = sub_1D21135FC();
    v12 = sub_1D2113A7C();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = v0[11];
      v13 = v0[12];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1D20B75F0(v14, v13, &v22);
      _os_log_impl(&dword_1D209F000, v11, v12, "Unable generate request URL for Grid ID Lookup | traceId: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1D3896EB0](v16, -1, -1);
      MEMORY[0x1D3896EB0](v15, -1, -1);
    }

    (*(v0[16] + 56))(v0[5], 1, 1, v0[15]);

    v17 = v0[1];

    return v17(0);
  }

  else
  {
    (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
    v19 = swift_task_alloc();
    v0[22] = v19;
    *v19 = v0;
    v19[1] = sub_1D20DFF54;
    v20 = v0[21];
    v21 = v0[17];

    return MEMORY[0x1EEDC6278](v21, v20, 0);
  }
}

uint64_t sub_1D20DFF54(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_1D20E0BD0;
  }

  else
  {
    v4 = sub_1D20E0068;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D20E0068()
{
  v88 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 statusCode];
    if (v3 == 304)
    {
      if (qword_1EE0836C8 != -1)
      {
        swift_once();
      }

      v28 = sub_1D211362C();
      __swift_project_value_buffer(v28, qword_1EE087438);

      v29 = sub_1D21135FC();
      v30 = sub_1D2113A6C();

      v31 = os_log_type_enabled(v29, v30);
      v33 = *(v0 + 160);
      v32 = *(v0 + 168);
      v86 = *(v0 + 152);
      v35 = *(v0 + 128);
      v34 = *(v0 + 136);
      v36 = *(v0 + 120);
      if (v31)
      {
        v84 = *(v0 + 120);
        v38 = *(v0 + 88);
        v37 = *(v0 + 96);
        v83 = *(v0 + 168);
        v39 = swift_slowAlloc();
        v82 = v34;
        v40 = swift_slowAlloc();
        v87[0] = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_1D20B75F0(v38, v37, v87);
        _os_log_impl(&dword_1D209F000, v29, v30, "Geohash File unmodified. Use existing file on disk. | traceId: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        MEMORY[0x1D3896EB0](v40, -1, -1);
        MEMORY[0x1D3896EB0](v39, -1, -1);

        (*(v35 + 8))(v82, v84);
        (*(v33 + 8))(v83, v86);
      }

      else
      {

        (*(v35 + 8))(v34, v36);
        (*(v33 + 8))(v32, v86);
      }

      (*(*(v0 + 128) + 56))(*(v0 + 40), 1, 1, *(v0 + 120));
      goto LABEL_27;
    }

    if (v3 == 200)
    {
      if (qword_1EE0836C8 != -1)
      {
        swift_once();
      }

      v4 = sub_1D211362C();
      __swift_project_value_buffer(v4, qword_1EE087438);

      v5 = sub_1D21135FC();
      v6 = sub_1D2113A6C();

      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 160);
      v9 = *(v0 + 168);
      v10 = *(v0 + 152);
      if (v7)
      {
        v85 = *(v0 + 168);
        v12 = *(v0 + 88);
        v11 = *(v0 + 96);
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v87[0] = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_1D20B75F0(v12, v11, v87);
        _os_log_impl(&dword_1D209F000, v5, v6, "New Geo Tile fetched | traceId: %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x1D3896EB0](v14, -1, -1);
        MEMORY[0x1D3896EB0](v13, -1, -1);

        (*(v8 + 8))(v85, v10);
      }

      else
      {

        (*(v8 + 8))(v9, v10);
      }

      v58 = *(v0 + 128);
      v59 = *(v0 + 120);
      v60 = *(v0 + 40);
      (*(v58 + 32))(v60, *(v0 + 136), v59);
      (*(v58 + 56))(v60, 0, 1, v59);
LABEL_27:

      v61 = *(v0 + 8);

      return v61(v2);
    }

    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v41 = sub_1D211362C();
    __swift_project_value_buffer(v41, qword_1EE087438);

    v42 = sub_1D21135FC();
    v43 = sub_1D2113A7C();

    if (os_log_type_enabled(v42, v43))
    {
      v45 = *(v0 + 88);
      v44 = *(v0 + 96);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v87[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_1D20B75F0(v45, v44, v87);
      _os_log_impl(&dword_1D209F000, v42, v43, "Error while checking for geohash tiles | traceId: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1D3896EB0](v47, -1, -1);
      MEMORY[0x1D3896EB0](v46, -1, -1);
    }

    v48 = *(v0 + 184);
    v49 = [v2 description];
    v50 = sub_1D21137CC();
    v52 = v51;

    v53 = sub_1D21135FC();
    v54 = sub_1D2113A7C();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v87[0] = v56;
      *v55 = 136315138;
      v57 = sub_1D20B75F0(v50, v52, v87);

      *(v55 + 4) = v57;
      _os_log_impl(&dword_1D209F000, v53, v54, "%s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x1D3896EB0](v56, -1, -1);
      MEMORY[0x1D3896EB0](v55, -1, -1);
    }

    else
    {
    }

    v63 = *(v0 + 184);
    v65 = *(v0 + 128);
    v64 = *(v0 + 136);
    v66 = *(v0 + 120);
    sub_1D20E299C(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    v26 = swift_allocError();
    *v67 = [v2 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v65 + 8))(v64, v66);
  }

  else
  {
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v15 = sub_1D211362C();
    __swift_project_value_buffer(v15, qword_1EE087438);

    v16 = sub_1D21135FC();
    v17 = sub_1D2113A7C();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 88);
      v18 = *(v0 + 96);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v87[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1D20B75F0(v19, v18, v87);
      _os_log_impl(&dword_1D209F000, v16, v17, "Unable to process GeoTiles Response. | traceId: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1D3896EB0](v21, -1, -1);
      MEMORY[0x1D3896EB0](v20, -1, -1);
    }

    v22 = *(v0 + 184);
    v24 = *(v0 + 128);
    v23 = *(v0 + 136);
    v25 = *(v0 + 120);
    sub_1D20E299C(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    v26 = swift_allocError();
    *v27 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v24 + 8))(v23, v25);
  }

  if (qword_1EE0836C8 != -1)
  {
    swift_once();
  }

  v68 = sub_1D211362C();
  __swift_project_value_buffer(v68, qword_1EE087438);

  v69 = v26;
  v70 = sub_1D21135FC();
  v71 = sub_1D2113A7C();

  if (os_log_type_enabled(v70, v71))
  {
    v73 = *(v0 + 88);
    v72 = *(v0 + 96);
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v87[0] = v76;
    *v74 = 138412546;
    v77 = v26;
    v78 = _swift_stdlib_bridgeErrorToNSError();
    *(v74 + 4) = v78;
    *v75 = v78;
    *(v74 + 12) = 2080;
    *(v74 + 14) = sub_1D20B75F0(v73, v72, v87);
    _os_log_impl(&dword_1D209F000, v70, v71, "Error while trying to fetch geohash tiles from server %@ | traceId: %s", v74, 0x16u);
    sub_1D20A862C(v75, &qword_1EC6C7950, qword_1D21153D0);
    MEMORY[0x1D3896EB0](v75, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x1D3896EB0](v76, -1, -1);
    MEMORY[0x1D3896EB0](v74, -1, -1);
  }

  *(v0 + 32) = v26;
  v79 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
  if (swift_dynamicCast())
  {
    sub_1D20C6F38(*(v0 + 112));
    swift_willThrow();
  }

  else
  {
    sub_1D20E299C(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    sub_1D20F5FDC(v26, v80);
    swift_willThrow();
  }

  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

  v81 = *(v0 + 8);

  return v81();
}

uint64_t sub_1D20E0BD0()
{
  v18 = v0;
  v1 = v0[24];
  if (qword_1EE0836C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D211362C();
  __swift_project_value_buffer(v2, qword_1EE087438);

  v3 = v1;
  v4 = sub_1D21135FC();
  v5 = sub_1D2113A7C();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[11];
    v6 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 138412546;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v12;
    *v9 = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1D20B75F0(v7, v6, &v17);
    _os_log_impl(&dword_1D209F000, v4, v5, "Error while trying to fetch geohash tiles from server %@ | traceId: %s", v8, 0x16u);
    sub_1D20A862C(v9, &qword_1EC6C7950, qword_1D21153D0);
    MEMORY[0x1D3896EB0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D3896EB0](v10, -1, -1);
    MEMORY[0x1D3896EB0](v8, -1, -1);
  }

  v0[4] = v1;
  v13 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
  if (swift_dynamicCast())
  {
    sub_1D20C6F38(v0[14]);
    swift_willThrow();
  }

  else
  {
    sub_1D20E299C(qword_1EE0841B0, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    sub_1D20F5FDC(v1, v14);
    swift_willThrow();
  }

  (*(v0[20] + 8))(v0[21], v0[19]);

  v15 = v0[1];

  return v15();
}

void sub_1D20E0ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v105 = a2;
  v106 = a3;
  v109 = sub_1D2112F9C();
  v4 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v6 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D211381C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v104 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v112 = &v95 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v95 - v13;
  if (qword_1EE0836C8 != -1)
  {
    swift_once();
  }

  v114 = v6;
  v15 = sub_1D211362C();
  v16 = __swift_project_value_buffer(v15, qword_1EE087438);
  v17 = sub_1D21135FC();
  v18 = sub_1D2113A5C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1D209F000, v17, v18, "Generating individual geohash tiles from parent geohash.", v19, 2u);
    MEMORY[0x1D3896EB0](v19, -1, -1);
  }

  v108 = a1;
  sub_1D2112F4C();
  sub_1D211380C();
  type metadata accessor for StreamReader(0);
  v20 = swift_allocObject();
  v21 = OBJC_IVAR____TtC12HomeServices12StreamReader_fileHandle;
  *(v20 + OBJC_IVAR____TtC12HomeServices12StreamReader_fileHandle) = 0;
  *(v20 + OBJC_IVAR____TtC12HomeServices12StreamReader_atEof) = 0;
  *(v20 + OBJC_IVAR____TtC12HomeServices12StreamReader_chunkSize) = 4096;
  v110 = *(v8 + 16);
  v111 = v8 + 16;
  v110(v20 + OBJC_IVAR____TtC12HomeServices12StreamReader_encoding, v14, v7);
  v22 = sub_1D21137BC();

  v23 = [objc_opt_self() fileHandleForReadingAtPath_];

  if (!v23)
  {
    (*(v8 + 8))(v14, v7);
    goto LABEL_9;
  }

  v113 = v7;
  v24 = sub_1D21137DC();
  if (v25 >> 60 == 15)
  {
    (*(v8 + 8))(v14, v113);

LABEL_9:
    v26 = v114;
    goto LABEL_10;
  }

  v36 = v24;
  v37 = v25;
  v107 = v16;
  v38 = [objc_allocWithZone(MEMORY[0x1E695DF88]) initWithCapacity_];
  v40 = *(v8 + 8);
  v39 = v8 + 8;
  v102 = v40;
  v40(v14, v113);
  v26 = v114;
  if (!v38)
  {
LABEL_60:
    sub_1D20DEC70(v36, v37);

LABEL_10:
    *(v20 + v21) = 0;
    *(v20 + OBJC_IVAR____TtC12HomeServices12StreamReader_delimData) = xmmword_1D2116AC0;
    *(v20 + OBJC_IVAR____TtC12HomeServices12StreamReader_buffer) = 0;
    swift_setDeallocating();
    sub_1D211284C();
    swift_deallocClassInstance();
    v27 = v109;
    (*(v4 + 16))(v26, v108, v109);
    v28 = sub_1D21135FC();
    v29 = sub_1D2113A7C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v117 = v31;
      *v30 = 136315138;
      v32 = sub_1D2112F4C();
      v34 = v33;
      (*(v4 + 8))(v26, v27);
      v35 = sub_1D20B75F0(v32, v34, &v117);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1D209F000, v28, v29, "Unable to open file stream for file :%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1D3896EB0](v31, -1, -1);
      MEMORY[0x1D3896EB0](v30, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v26, v27);
    }

    return;
  }

  *(v20 + v21) = v23;
  v41 = (v20 + OBJC_IVAR____TtC12HomeServices12StreamReader_delimData);
  *v41 = v36;
  v41[1] = v37;
  v36 = &OBJC_IVAR____TtC12HomeServices12StreamReader_buffer;
  *(v20 + OBJC_IVAR____TtC12HomeServices12StreamReader_buffer) = v38;
  if (qword_1EE083D48 != -1)
  {
LABEL_73:
    swift_once();
  }

  v37 = qword_1EE087480;
  v42 = *algn_1EE087488;
  v117 = qword_1EE087480;
  v118 = *algn_1EE087488;

  v43 = sub_1D20CF5BC();
  v44 = !v43;
  if (v43)
  {
    v45 = 1685025392;
  }

  else
  {
    v45 = 24945;
  }

  if (v44)
  {
    v46 = 0xE200000000000000;
  }

  else
  {
    v46 = 0xE400000000000000;
  }

  MEMORY[0x1D38961A0](v45, v46);

  MEMORY[0x1D38961A0](47, 0xE100000000000000);
  MEMORY[0x1D38961A0](v105, v106);
  v23 = v118;
  v4 = sub_1D20EA4D8(v117, v118);

  if ((v4 & 1) == 0)
  {
    v83 = sub_1D21135FC();
    v84 = sub_1D2113A7C();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_1D209F000, v83, v84, "Unable to create directory for saving GeoHash Polygons", v85, 2u);
      MEMORY[0x1D3896EB0](v85, -1, -1);
    }

LABEL_63:

    goto LABEL_64;
  }

  v96 = v42;
  v97 = v37;
  v98 = v39;
  v101 = [objc_opt_self() defaultManager];
  v114 = OBJC_IVAR____TtC12HomeServices12StreamReader_fileHandle;
  if (!*(v20 + OBJC_IVAR____TtC12HomeServices12StreamReader_fileHandle))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v100 = 0;
  v99 = 0;
  v21 = v20 + OBJC_IVAR____TtC12HomeServices12StreamReader_delimData;
  v109 = OBJC_IVAR____TtC12HomeServices12StreamReader_atEof;
  v26 = *v36;
  v108 = OBJC_IVAR____TtC12HomeServices12StreamReader_encoding;
  *&v47 = 136315138;
  v95 = v47;
  v103 = v26;
  while (2)
  {
    while (2)
    {
      if (*(v20 + v109))
      {
        goto LABEL_66;
      }

      v48 = *(v20 + v26);
      if (!v48)
      {
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        return;
      }

      v49 = v113;
      if (*(v21 + 8) >> 60 == 15)
      {
        goto LABEL_77;
      }

      v50 = sub_1D2112FFC();
      v51 = [v48 rangeOfData:v50 options:0 range:{0, objc_msgSend(v48, sel_length)}];
      v37 = v52;

      if (v51 != sub_1D2112A6C())
      {
LABEL_41:
        v62 = [v48 subdataWithRange_];
        v63 = sub_1D211301C();
        v65 = v64;

        v110(v112, (v20 + v108), v49);
        v36 = sub_1D21137EC();
        v39 = v66;
        sub_1D20B98A4(v63, v65);
        if (__OFADD__(v51, v37))
        {
          __break(1u);
          goto LABEL_73;
        }

        [v48 replaceBytesInRange:0 withBytes:&v51[v37] length:{0, 0}];
        if (v39)
        {
          goto LABEL_46;
        }

LABEL_66:
        v86 = sub_1D21135FC();
        v87 = sub_1D2113A9C();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&dword_1D209F000, v86, v87, "Wrote all geohash tile to disk.", v88, 2u);
          MEMORY[0x1D3896EB0](v88, -1, -1);
        }

        swift_setDeallocating();
        sub_1D211284C();
        swift_deallocClassInstance();
        return;
      }

      while (1)
      {
        v53 = *(v20 + v114);
        if (!v53)
        {
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v54 = [v53 readDataOfLength_];
        v55 = sub_1D211301C();
        v57 = v56;

        v58 = v57 >> 62;
        if ((v57 >> 62) > 1)
        {
          break;
        }

        if (v58)
        {
          if (v55 == v55 >> 32)
          {
            goto LABEL_44;
          }
        }

        else if ((v57 & 0xFF000000000000) == 0)
        {
          goto LABEL_44;
        }

LABEL_38:
        v59 = sub_1D2112FFC();
        [v48 appendData_];

        if (*(v21 + 8) >> 60 == 15)
        {
          goto LABEL_75;
        }

        v60 = sub_1D2112FFC();
        v51 = [v48 rangeOfData:v60 options:0 range:{0, objc_msgSend(v48, sel_length)}];
        v37 = v61;
        sub_1D20B98A4(v55, v57);

        if (v51 != sub_1D2112A6C())
        {
          v26 = v103;
          goto LABEL_41;
        }
      }

      if (v58 == 2 && *(v55 + 16) != *(v55 + 24))
      {
        goto LABEL_38;
      }

LABEL_44:
      *(v20 + v109) = 1;
      if ([v48 length] < 1)
      {
        sub_1D20B98A4(v55, v57);
        goto LABEL_66;
      }

      v67 = sub_1D211301C();
      v37 = v68;
      v110(v112, (v20 + v108), v49);
      v36 = sub_1D21137EC();
      v39 = v69;
      sub_1D20B98A4(v67, v37);
      [v48 setLength_];
      sub_1D20B98A4(v55, v57);
      v26 = v103;
      if (!v39)
      {
        goto LABEL_66;
      }

LABEL_46:
      v70 = sub_1D20EA8E0(v36, v39);
      if (!v71)
      {

        v23 = sub_1D21135FC();
        v4 = sub_1D2113A7C();
        if (os_log_type_enabled(v23, v4))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_1D209F000, v23, v4, "Unable to find file name for the geo hash string", v37, 2u);
          MEMORY[0x1D3896EB0](v37, -1, -1);
        }

        if (!*(v20 + v114))
        {
          goto LABEL_59;
        }

        continue;
      }

      break;
    }

    v117 = v97;
    v118 = v96;
    v72 = v70;
    v73 = v71;

    v74 = sub_1D20CF5BC();
    v75 = !v74;
    if (v74)
    {
      v76 = 1685025392;
    }

    else
    {
      v76 = 24945;
    }

    if (v75)
    {
      v77 = 0xE200000000000000;
    }

    else
    {
      v77 = 0xE400000000000000;
    }

    MEMORY[0x1D38961A0](v76, v77);

    MEMORY[0x1D38961A0](47, 0xE100000000000000);
    MEMORY[0x1D38961A0](v105, v106);
    MEMORY[0x1D38961A0](47, 0xE100000000000000);
    MEMORY[0x1D38961A0](v72, v73);

    MEMORY[0x1D38961A0](0x6E6F736A2ELL, 0xE500000000000000);
    v79 = v117;
    v78 = v118;
    v117 = v36;
    v118 = v39;
    v115 = v79;
    v116 = v78;
    v37 = v104;
    sub_1D211380C();
    sub_1D20B99F0();
    v4 = v99;
    sub_1D2113B5C();
    if (!v4)
    {
      v102(v37, v113);

      v80 = sub_1D21135FC();
      v36 = sub_1D2113A6C();

      v81 = os_log_type_enabled(v80, v36);
      v99 = 0;
      if (v81)
      {
        v37 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v117 = v82;
        *v37 = v95;
        *(v37 + 4) = sub_1D20B75F0(v79, v78, &v117);
        _os_log_impl(&dword_1D209F000, v80, v36, "Successfully wrote to %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v82);
        MEMORY[0x1D3896EB0](v82, -1, -1);
        MEMORY[0x1D3896EB0](v37, -1, -1);
      }

      v23 = sub_1D21137BC();

      v100 = [v101 fileExistsAtPath_];

      v26 = v103;
      if (!*(v20 + v114))
      {
        goto LABEL_59;
      }

      continue;
    }

    break;
  }

  v102(v37, v113);

  v89 = v4;
  v83 = sub_1D21135FC();
  v90 = sub_1D2113A7C();

  if (os_log_type_enabled(v83, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *v91 = 138412290;
    v93 = v4;
    v94 = _swift_stdlib_bridgeErrorToNSError();
    *(v91 + 4) = v94;
    *v92 = v94;
    _os_log_impl(&dword_1D209F000, v83, v90, "Error while trying to geohash String to file %@", v91, 0xCu);
    sub_1D20A862C(v92, &qword_1EC6C7950, qword_1D21153D0);
    MEMORY[0x1D3896EB0](v92, -1, -1);
    MEMORY[0x1D3896EB0](v91, -1, -1);

    goto LABEL_63;
  }

LABEL_64:
  swift_setDeallocating();
  sub_1D211284C();
  swift_deallocClassInstance();
}

uint64_t sub_1D20E1E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_1D211319C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0836C8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D211362C();
  v12 = __swift_project_value_buffer(v11, qword_1EE087438);
  v13 = sub_1D21135FC();
  v14 = sub_1D2113A5C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D209F000, v13, v14, "Trying to save metadata about downloaded geohash tile.", v15, 2u);
    MEMORY[0x1D3896EB0](v15, -1, -1);
  }

  sub_1D20BB444(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1D20A862C(v6, &qword_1EC6C7248, &qword_1D2114A80);
  }

  (*(v8 + 32))(v10, v6, v7);
  v17 = sub_1D20BB58C();
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    v33 = v12;
    v37 = a2;
    v38 = v34;
    v39 = 0u;
    v40 = 0u;

    sub_1D20B9E08();
    v36 = MEMORY[0x1E69E6158];
    v35[0] = v19;
    v35[1] = v20;
    v21 = sub_1D21137BC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7960, &qword_1D2116AD0);
    v22 = sub_1D2113AFC();
    v23 = sub_1D21137BC();
    CFPreferencesSetAppValue(v21, v22, v23);

    swift_unknownObjectRelease();
    v24 = sub_1D21137BC();
    CFPreferencesAppSynchronize(v24);

    sub_1D20A862C(v35, &qword_1EC6C7960, &qword_1D2116AD0);
    sub_1D20B9EF4();

    v36 = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
    (*(v8 + 16))(boxed_opaque_existential_1, v10, v7);
    v26 = sub_1D21137BC();

    v27 = sub_1D2113AFC();
    v28 = sub_1D21137BC();
    CFPreferencesSetAppValue(v26, v27, v28);

    swift_unknownObjectRelease();
    v29 = sub_1D21137BC();
    CFPreferencesAppSynchronize(v29);

    sub_1D20A862C(v35, &qword_1EC6C7960, &qword_1D2116AD0);
    v30 = sub_1D21135FC();
    v31 = sub_1D2113A9C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D209F000, v30, v31, "Saved metadata about downloaded geohash tile to defaults", v32, 2u);
      MEMORY[0x1D3896EB0](v32, -1, -1);
    }
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D20E22FC(double a1, double a2)
{
  v2 = sub_1D21136EC();
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D211369C();
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v23 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D211381C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1D2113C2C();

  v27 = 0xD000000000000027;
  v28 = 0x80000001D211B1A0;
  v10 = sub_1D20CF5BC();
  v11 = !v10;
  if (v10)
  {
    v12 = 1685025392;
  }

  else
  {
    v12 = 24945;
  }

  if (v11)
  {
    v13 = 0xE200000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  MEMORY[0x1D38961A0](v12, v13);

  v14 = v27;
  v15 = v28;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1D2113A1C();
  MEMORY[0x1D38961A0](46, 0xE100000000000000);
  sub_1D2113A1C();
  MEMORY[0x1D38961A0](46, 0xE100000000000000);
  MEMORY[0x1D38961A0](v14, v15);

  sub_1D211380C();
  v16 = sub_1D21137DC();
  v18 = v17;

  (*(v7 + 8))(v9, v6);
  result = 0;
  if (v18 >> 60 != 15)
  {
    sub_1D20E299C(&qword_1EE084448, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    sub_1D211368C();
    sub_1D20C7064(v16, v18);
    sub_1D20DE488(v16, v18, v4);
    sub_1D20DEC70(v16, v18);
    v20 = v23;
    sub_1D211367C();
    (*(v25 + 8))(v4, v2);
    v21 = sub_1D20DB308();
    sub_1D20DEC70(v16, v18);
    (*(v24 + 8))(v20, v26);
    return v21;
  }

  return result;
}

uint64_t sub_1D20E26DC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  sub_1D20E22FC(a3, a4);
  if (!v4)
  {
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v18 = sub_1D211362C();
    __swift_project_value_buffer(v18, qword_1EE087438);
    v14 = sub_1D21135FC();
    v15 = sub_1D2113A7C();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_18;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Unable to generate key for looking up grid info.";
    goto LABEL_17;
  }

  v5 = sub_1D21137BC();

  v6 = sub_1D21137BC();
  v7 = CFPreferencesCopyAppValue(v5, v6);

  if (!v7 || (swift_dynamicCast() & 1) == 0)
  {
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v13 = sub_1D211362C();
    __swift_project_value_buffer(v13, qword_1EE087438);
    v14 = sub_1D21135FC();
    v15 = sub_1D2113A7C();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_18;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Unable to lookup computed grid from disk.";
LABEL_17:
    _os_log_impl(&dword_1D209F000, v14, v15, v17, v16, 2u);
    MEMORY[0x1D3896EB0](v16, -1, -1);
LABEL_18:

    return 0;
  }

  if (qword_1EE0836C8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D211362C();
  __swift_project_value_buffer(v8, qword_1EE087438);
  v9 = sub_1D21135FC();
  v10 = sub_1D2113A9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1D209F000, v9, v10, "Successfully retrieved computed grid from disk.", v11, 2u);
    MEMORY[0x1D3896EB0](v11, -1, -1);
  }

  return v19;
}

uint64_t sub_1D20E299C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::String __swiftcall CLLocationCoordinate2D.geohash(length:)(Swift::Int length)
{
  v3 = v2;
  v4 = v1;
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  v7 = sub_1D20E2D48(length, v4, v3);
  v9 = v8;
  swift_setDeallocating();

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::String __swiftcall CLLocation.geohash(length:)(Swift::Int length)
{
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  [v1 coordinate];
  v5 = v4;
  [v1 coordinate];
  v7 = sub_1D20E2D48(length, v5, v6);
  v9 = v8;
  swift_setDeallocating();

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

CLLocation __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CLLocation.init(geohash:)(Swift::String geohash)
{
  object = geohash._object;
  countAndFlagsBits = geohash._countAndFlagsBits;
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  sub_1D20E37DC(countAndFlagsBits, object);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if (!v1)
  {
    object = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLatitude:(v6 + v8) * 0.5 longitude:(v10 + v12) * 0.5];
  }

  swift_setDeallocating();

  v14 = object;
  result._internal = v13;
  result.super.isa = v14;
  return result;
}

uint64_t Geohash.Error.hashValue.getter()
{
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](0);
  return sub_1D2113F1C();
}

uint64_t sub_1D20E2C9C()
{
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](0);
  return sub_1D2113F1C();
}

uint64_t sub_1D20E2D08(uint64_t a1)
{
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](0);
  return sub_1D2113F1C();
}

uint64_t sub_1D20E2D48(uint64_t result, double a2, double a3)
{
  v3 = ceil(result * 5.0 * 0.5);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v4 = v3;
  if (v3 < 0)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v5 = result;
  v118 = v3;
  if (!v4)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  result = sub_1D21139FC();
  v6 = result;
  *(result + 16) = v4;
  v7 = (result + 32);
  if (v4 < 4)
  {
    v8 = 0;
    v9 = a2;
LABEL_12:
    v13 = v4 - v8;
    do
    {
      *v7++ = v9;
      --v13;
    }

    while (v13);
    goto LABEL_14;
  }

  v8 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  v7 += v4 & 0x7FFFFFFFFFFFFFFCLL;
  v9 = a2;
  v10 = vdupq_lane_s64(*&a2, 0);
  v11 = (result + 48);
  v12 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v11[-1] = v10;
    *v11 = v10;
    v11 += 2;
    v12 -= 4;
  }

  while (v12);
  if (v8 != v4)
  {
    goto LABEL_12;
  }

LABEL_14:
  v112 = v5;
  v14 = *(v6 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    v17 = 90.0;
    v18 = -90.0;
    do
    {
      v19 = v17;
      v20 = v16;
      v21 = v15;
      while (1)
      {
        if (v21 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_109;
        }

        v15 = v21 + 1;
        v22 = *(v6 + 32 + 8 * v21);
        v17 = (v19 + v18) * 0.5;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v20;
        if (v22 < v17)
        {
          break;
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_1D20B6FAC(0, *(v20 + 2) + 1, 1, v20);
        }

        v26 = *(v24 + 2);
        v25 = *(v24 + 3);
        if (v26 >= v25 >> 1)
        {
          v24 = sub_1D20B6FAC((v25 > 1), v26 + 1, 1, v24);
        }

        *(v24 + 2) = v26 + 1;
        v27 = &v24[16 * v26];
        *(v27 + 4) = 49;
        *(v27 + 5) = 0xE100000000000000;
        v28 = v24;

        v16 = v28;
        v18 = (v19 + v18) * 0.5;
        v20 = v28;
        ++v21;
        if (v14 == v15)
        {
          goto LABEL_32;
        }
      }

      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_1D20B6FAC(0, *(v20 + 2) + 1, 1, v20);
      }

      v30 = *(v24 + 2);
      v29 = *(v24 + 3);
      if (v30 >= v29 >> 1)
      {
        v24 = sub_1D20B6FAC((v29 > 1), v30 + 1, 1, v24);
      }

      *(v24 + 2) = v30 + 1;
      v31 = &v24[16 * v30];
      *(v31 + 4) = 48;
      *(v31 + 5) = 0xE100000000000000;
      v32 = v24;

      v16 = v32;
    }

    while (v14 - 1 != v21);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

LABEL_32:
  v116 = v16;

  if (!v118)
  {
    v33 = MEMORY[0x1E69E7CC0];
    goto LABEL_41;
  }

  result = sub_1D21139FC();
  v33 = result;
  *(result + 16) = v118;
  v34 = (result + 32);
  if (v118 < 4)
  {
    v35 = 0;
    v36 = a3;
LABEL_39:
    v40 = v118 - v35;
    do
    {
      *v34++ = v36;
      --v40;
    }

    while (v40);
    goto LABEL_41;
  }

  v35 = v118 & 0x7FFFFFFFFFFFFFFCLL;
  v34 += v118 & 0x7FFFFFFFFFFFFFFCLL;
  v36 = a3;
  v37 = vdupq_lane_s64(*&a3, 0);
  v38 = (result + 48);
  v39 = v118 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v38[-1] = v37;
    *v38 = v37;
    v38 += 2;
    v39 -= 4;
  }

  while (v39);
  if (v35 != v118)
  {
    goto LABEL_39;
  }

LABEL_41:
  v41 = *(v33 + 16);
  if (v41)
  {
    v42 = 0;
    v43 = MEMORY[0x1E69E7CC0];
    v44 = 180.0;
    v45 = -180.0;
LABEL_43:
    v46 = v44;
    v47 = v43;
    v48 = v42;
    while (v48 < *(v33 + 16))
    {
      v42 = v48 + 1;
      v49 = *(v33 + 32 + 8 * v48);
      v44 = (v46 + v45) * 0.5;

      v50 = swift_isUniquelyReferenced_nonNull_native();
      v43 = v47;
      if (v49 < v44)
      {
        if ((v50 & 1) == 0)
        {
          v43 = sub_1D20B6FAC(0, *(v47 + 2) + 1, 1, v47);
        }

        v55 = *(v43 + 2);
        v54 = *(v43 + 3);
        if (v55 >= v54 >> 1)
        {
          v43 = sub_1D20B6FAC((v54 > 1), v55 + 1, 1, v43);
        }

        *(v43 + 2) = v55 + 1;
        v56 = &v43[16 * v55];
        *(v56 + 4) = 48;
        *(v56 + 5) = 0xE100000000000000;

        if (v41 - 1 != v48)
        {
          goto LABEL_43;
        }

        goto LABEL_59;
      }

      if ((v50 & 1) == 0)
      {
        v43 = sub_1D20B6FAC(0, *(v47 + 2) + 1, 1, v47);
      }

      v52 = *(v43 + 2);
      v51 = *(v43 + 3);
      if (v52 >= v51 >> 1)
      {
        v43 = sub_1D20B6FAC((v51 > 1), v52 + 1, 1, v43);
      }

      *(v43 + 2) = v52 + 1;
      v53 = &v43[16 * v52];
      *(v53 + 4) = 49;
      *(v53 + 5) = 0xE100000000000000;

      v45 = (v46 + v45) * 0.5;
      v47 = v43;
      ++v48;
      if (v41 == v42)
      {
        goto LABEL_59;
      }
    }

LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v43 = MEMORY[0x1E69E7CC0];
LABEL_59:

  v114 = *(v43 + 2);
  if (v114)
  {
    v57 = 0;
    v58 = v116 + 40;
    v59 = v43 + 40;
    v60 = MEMORY[0x1E69E7CC0];
    while (v57 < *(v43 + 2))
    {
      v61 = *(v59 - 1);
      v62 = *v59;
      v119 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7410, &qword_1D2115438);
      result = swift_initStackObject();
      *(result + 16) = xmmword_1D2115280;
      *(result + 32) = v61;
      *(result + 40) = v62;
      if (v57 >= *(v116 + 2))
      {
        goto LABEL_111;
      }

      v63 = v43;
      v64 = v58;
      v65 = *(v58 - 1);
      v66 = *v58;
      *(result + 48) = v65;
      *(result + 56) = v66;
      v67 = *(v60 + 16);
      v68 = v67 + 2;
      if (__OFADD__(v67, 2))
      {
        goto LABEL_112;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v69 = *(v60 + 24) >> 1, v69 < v68))
      {
        if (v67 <= v68)
        {
          v70 = v67 + 2;
        }

        else
        {
          v70 = v67;
        }

        result = sub_1D20B6FAC(result, v70, 1, v60);
        v60 = result;
        v69 = *(result + 24) >> 1;
      }

      v43 = v63;
      if (v69 - *(v60 + 16) < 2)
      {
        goto LABEL_113;
      }

      swift_arrayInitWithCopy();

      v71 = *(v60 + 16);
      v72 = __OFADD__(v71, 2);
      v73 = v71 + 2;
      if (v72)
      {
        goto LABEL_114;
      }

      ++v57;
      *(v60 + 16) = v73;
      v58 = v64 + 2;
      v59 = v119 + 2;
      if (v114 == v57)
      {
        goto LABEL_75;
      }
    }

LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v60 = MEMORY[0x1E69E7CC0];
LABEL_75:

  v117 = *(v60 + 16);
  if (v117)
  {
    v74 = 0;
    v75 = 0;
    v76 = v60 + 40;
    v77 = MEMORY[0x1E69E7CC0];
    while (v75 < *(v60 + 16))
    {
      swift_bridgeObjectRetain_n();

      result = sub_1D211394C();
      v79 = result;
      v81 = v80;
      if (v74 + 5 * (v75 / 5))
      {
        if (!*(v77 + 16))
        {
          goto LABEL_117;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v82 = v77;
        if (result)
        {
          v83 = *(v77 + 16);
          if (!v83)
          {
            goto LABEL_118;
          }
        }

        else
        {
          result = sub_1D20E473C(v77);
          v82 = result;
          v83 = *(result + 16);
          if (!v83)
          {
            goto LABEL_118;
          }
        }

        v84 = v83 - 1;
        v85 = &v82[16 * v84];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        *(v82 + 2) = v84;
        v120 = v87;
        v121 = v86;
        MEMORY[0x1D38961A0](v79, v81);

        v89 = *(v82 + 2);
        v88 = *(v82 + 3);
        if (v89 >= v88 >> 1)
        {
          v82 = sub_1D20B6FAC((v88 > 1), v89 + 1, 1, v82);
        }

        *(v82 + 2) = v89 + 1;
        v78 = &v82[16 * v89];
        *(v78 + 4) = v120;
        *(v78 + 5) = v121;
        v77 = v82;
      }

      else
      {
        v90 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_1D20B6FAC(0, *(v77 + 16) + 1, 1, v77);
        }

        v92 = *(v90 + 2);
        v91 = *(v90 + 3);
        if (v92 >= v91 >> 1)
        {
          v90 = sub_1D20B6FAC((v91 > 1), v92 + 1, 1, v90);
        }

        *(v90 + 2) = v92 + 1;
        v93 = &v90[16 * v92];
        *(v93 + 4) = v79;
        *(v93 + 5) = v81;
        v77 = v90;
      }

      ++v75;
      --v74;
      v76 += 16;
      if (v117 == v75)
      {
        goto LABEL_94;
      }
    }

LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v77 = MEMORY[0x1E69E7CC0];
LABEL_94:

  v94 = *(v77 + 16);
  if (v94)
  {
    v95 = 0;
    v96 = v77 + 40;
    v97 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v98 = (v96 + 16 * v95);
    v99 = v95;
    while (v99 < *(v77 + 16))
    {
      v100 = *(v98 - 1);
      v101 = *v98;

      v102 = sub_1D20E40B4();
      if (v102[2])
      {
        v103 = sub_1D20E45E0(v100, v101, MEMORY[0x1E69E60C8], sub_1D20B0A90);
        if (v104)
        {
          v105 = (v102[7] + 16 * v103);
          v107 = *v105;
          v106 = v105[1];

          result = swift_isUniquelyReferenced_nonNull_native();
          v108 = v77;
          if ((result & 1) == 0)
          {
            result = sub_1D20B6EA0(0, *(v97 + 16) + 1, 1, v97);
            v97 = result;
          }

          v110 = *(v97 + 16);
          v109 = *(v97 + 24);
          if (v110 >= v109 >> 1)
          {
            result = sub_1D20B6EA0((v109 > 1), v110 + 1, 1, v97);
            v97 = result;
          }

          v95 = v99 + 1;
          *(v97 + 16) = v110 + 1;
          v111 = v97 + 16 * v110;
          *(v111 + 32) = v107;
          *(v111 + 40) = v106;
          v77 = v108;
          if (v94 - 1 != v99)
          {
            goto LABEL_96;
          }

          goto LABEL_106;
        }
      }

      ++v99;

      v98 += 2;
      if (v94 == v99)
      {
        goto LABEL_106;
      }
    }

    goto LABEL_116;
  }

LABEL_106:

  if ((v112 & 0x8000000000000000) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77F8, &qword_1D2116AF0);
    sub_1D20DE7E4(&unk_1EE083640, &qword_1EC6C77F8, &qword_1D2116AF0, MEMORY[0x1E69E6968]);
    return sub_1D211393C();
  }

LABEL_123:
  __break(1u);
  return result;
}

uint64_t sub_1D20E37DC(uint64_t a1, unint64_t a2)
{
  result = sub_1D211386C();
  if (result)
  {
    v6 = result;
    v7 = sub_1D20E482C(result, 0);

    v8 = sub_1D20E4764(&v39, v7 + 4, v6, a1, a2);

    if (v8 == v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v9 = 0xE000000000000000;
  v39 = 0;
  v40 = 0xE000000000000000;
  v10 = v7[2];
  if (v10)
  {
    v43 = v2;
    v11 = 0;
    v12 = v7 + 5;
    while (v11 < v7[2])
    {
      v14 = *(v12 - 1);
      v13 = *v12;

      v15 = sub_1D20E3C64();
      if (v15[2])
      {
        v16 = sub_1D20E45E0(v14, v13, MEMORY[0x1E69E5ED0], sub_1D20B0A90);
        if (v17)
        {
          v18 = (v15[7] + 16 * v16);
          v19 = *v18;
          v20 = v18[1];

          MEMORY[0x1D38961A0](v19, v20);
        }
      }

      ++v11;

      v12 += 2;
      if (v10 == v11)
      {
        v21 = v39;
        v9 = v40;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  v21 = 0;
LABEL_14:

  if (0xCCCCCCCCCCCCCCCDLL * sub_1D211386C() + 0x1999999999999999 > 0x3333333333333332)
  {

    sub_1D20E48B0();
    swift_allocError();
    return swift_willThrow();
  }

  v22 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v22 = v21 & 0xFFFFFFFFFFFFLL;
  }

  v39 = v21;
  v40 = v9;
  v41 = 0;
  v42 = v22;

  result = sub_1D21138BC();
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    while (!__OFADD__(v25, 1))
    {
      MEMORY[0x1D3896190](result, v24);

      result = sub_1D21138BC();
      v24 = v26;
      ++v25;
      if (!v26)
      {
        goto LABEL_22;
      }
    }

LABEL_40:
    __break(1u);
    return result;
  }

LABEL_22:

  v39 = 0;
  v40 = 0xE000000000000000;
  v41 = 0;
  v42 = 0;

  v27 = sub_1D21138BC();
  if (v28)
  {
    v29 = -90.0;
    v30 = 90.0;
    do
    {
      v32 = (v29 + v30) * 0.5;
      if (v27 == 49 && v28 == 0xE100000000000000)
      {
      }

      else
      {
        v31 = sub_1D2113E2C();

        if ((v31 & 1) == 0)
        {
          v30 = (v29 + v30) * 0.5;
          v32 = v29;
        }
      }

      v27 = sub_1D21138BC();
      v29 = v32;
    }

    while (v28);
  }

  v39 = 0;
  v40 = 0xE000000000000000;
  v41 = 0;
  v42 = 0;

  v33 = sub_1D21138BC();
  if (v34)
  {
    v35 = -180.0;
    v36 = 180.0;
    do
    {
      v38 = (v35 + v36) * 0.5;
      if (v33 == 49 && v34 == 0xE100000000000000)
      {
      }

      else
      {
        v37 = sub_1D2113E2C();

        if ((v37 & 1) == 0)
        {
          v36 = (v35 + v36) * 0.5;
          v38 = v35;
        }
      }

      v33 = sub_1D21138BC();
      v35 = v38;
    }

    while (v34);
  }
}

void *sub_1D20E3C64()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_1D20E3CC0(0);
    *(v0 + 16) = v1;
  }

  return v1;
}

void *sub_1D20E3CC0(uint64_t a1)
{
  v1 = sub_1D21138BC();
  if (!v2)
  {
    v6 = MEMORY[0x1E69E7CC8];
LABEL_29:

    return v6;
  }

  v3 = v1;
  v4 = v2;
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    sub_1D20E4B5C();
    v11 = sub_1D211392C();
    v13 = v12;
    v14 = sub_1D211386C();
    if ((5 - v14 % 5) >= 5)
    {
      v15 = -(v14 % 5);
    }

    else
    {
      v15 = 5 - v14 % 5;
    }

    v40 = v10;
    if (v15)
    {
      v16 = sub_1D21139FC();
      *(v16 + 16) = v15;
      v17 = (v16 + 32);
      if (v15 < 4)
      {
        v18 = 0;
LABEL_16:
        v21 = v15 - v18;
        do
        {
          *v17 = 48;
          v17[1] = 0xE100000000000000;
          v17 += 2;
          --v21;
        }

        while (v21);
        goto LABEL_18;
      }

      v18 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      v17 += 2 * (v15 & 0xFFFFFFFFFFFFFFFCLL);
      v19 = (v16 + 64);
      v20 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        *(v19 - 2) = xmmword_1D2116AE0;
        *(v19 - 1) = xmmword_1D2116AE0;
        *v19 = xmmword_1D2116AE0;
        v19[1] = xmmword_1D2116AE0;
        v19 += 4;
        v20 -= 4;
      }

      while (v20);
      if (v15 != v18)
      {
        goto LABEL_16;
      }
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7320, &qword_1D2114A98);
    sub_1D20DE7E4(&qword_1EE084418, &qword_1EC6C7320, &qword_1D2114A98, MEMORY[0x1E69E6310]);
    v22 = sub_1D211376C();
    v24 = v23;

    MEMORY[0x1D38961A0](v11, v13);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_1D20E45E0(v3, v4, MEMORY[0x1E69E5ED0], sub_1D20B0A90);
    v28 = v6[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_31;
    }

    v32 = v27;
    if (v6[3] < v31)
    {
      sub_1D20E6E3C(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_1D20E45E0(v3, v4, MEMORY[0x1E69E5ED0], sub_1D20B0A90);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_33;
      }

LABEL_23:
      if (v32)
      {
        goto LABEL_3;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v38 = v26;
    sub_1D20E7C80();
    v26 = v38;
    if (v32)
    {
LABEL_3:
      v7 = v26;

      v8 = (v6[7] + 16 * v7);
      *v8 = v22;
      v8[1] = v24;

      goto LABEL_4;
    }

LABEL_24:
    v6[(v26 >> 6) + 8] |= 1 << v26;
    v34 = (v6[6] + 16 * v26);
    *v34 = v3;
    v34[1] = v4;
    v35 = (v6[7] + 16 * v26);
    *v35 = v22;
    v35[1] = v24;

    v36 = v6[2];
    v30 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v30)
    {
      goto LABEL_32;
    }

    v6[2] = v37;
LABEL_4:
    v3 = sub_1D21138BC();
    v4 = v9;
    v5 = v40;
    if (!v9)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1D2113E5C();
  __break(1u);
  return result;
}