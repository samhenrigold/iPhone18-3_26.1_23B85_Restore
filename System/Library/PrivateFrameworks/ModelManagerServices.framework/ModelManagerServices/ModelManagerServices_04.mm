uint64_t sub_1979A4E3C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 72);
  MEMORY[0x19A8EBBD0](v1);
  OUTLINED_FUNCTION_118();
  InferenceError.init(wrapping:)();
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v2);
  OUTLINED_FUNCTION_52_2();
  swift_willThrowTypedImpl();

  OUTLINED_FUNCTION_23_1();

  return v3();
}

uint64_t sub_1979A4EF4()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 88);
  MEMORY[0x19A8EBBD0](v1);
  OUTLINED_FUNCTION_118();
  InferenceError.init(wrapping:)();
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v2);
  OUTLINED_FUNCTION_52_2();
  swift_willThrowTypedImpl();

  OUTLINED_FUNCTION_23_1();

  return v3();
}

uint64_t _s20ModelManagerServices24InferenceProviderAdapterV14requestOneShot10clientData13configurationAA06ClientK0VAH_AA0dE20RequestConfigurationVtYaAA0D5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = v4;
  v5[6] = a4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_4(sub_1979A4FCC);
}

uint64_t sub_1979A4FCC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_94(*(v2 + 40));
  OUTLINED_FUNCTION_26();
  v10 = (v3 + *v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v2 + 56) = v4;
  *v4 = v5;
  v4[1] = sub_1979A50E0;
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 16);

  return v10(v8, v6, v7, v0, v1);
}

uint64_t sub_1979A50E0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1979A51FC, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v7();
  }
}

uint64_t sub_1979A51FC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 64);
  MEMORY[0x19A8EBBD0](v1);
  OUTLINED_FUNCTION_118();
  InferenceError.init(wrapping:)();
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v2);
  OUTLINED_FUNCTION_52_2();
  swift_willThrowTypedImpl();

  OUTLINED_FUNCTION_23_1();

  return v3();
}

uint64_t InferenceProviderAdapter.requestStream(clientData:configuration:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_119();
  __swift_project_boxed_opaque_existential_1(v2, v3);
  OUTLINED_FUNCTION_129();
  v4();
  sub_197947C44(v10, v9);
  v5 = type metadata accessor for InferenceProviderAdapter.StreamAdapter();
  v6 = swift_allocObject();
  sub_1979A547C(v9);
  a1[3] = v5;
  OUTLINED_FUNCTION_50_2();
  a1[4] = sub_19796AA70(v7);
  *a1 = v6;
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t sub_1979A53B4()
{
  OUTLINED_FUNCTION_18();
  type metadata accessor for ModelManagerError(0);
  sub_19796AA70(&qword_1ED8816D8);
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_70_0();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_1979A547C(void *a1)
{
  swift_defaultActor_initialize();
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_0();
  (*(v6 + 16))(v5 - v4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&v8);
  sub_197A87C98();
  sub_197947A40(a1, &qword_1EAF49138, &qword_197A8CE80);
  sub_197945EF8(&v8, v1 + 112);
  return v1;
}

uint64_t sub_1979A55D8()
{
  OUTLINED_FUNCTION_9();
  v1[25] = v2;
  v1[26] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
  OUTLINED_FUNCTION_28(v3);
  v1[27] = OUTLINED_FUNCTION_78_0();

  return MEMORY[0x1EEE6DFA0](sub_1979A5664, v0, 0);
}

uint64_t sub_1979A5664()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[26];
  OUTLINED_FUNCTION_50_2();
  v3 = sub_19796AA70(v2);
  swift_beginAccess();
  v4 = *(v1 + 136);
  v0[28] = v4;
  v5 = *(v1 + 144);
  v0[29] = v5;
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 112, v4);
  OUTLINED_FUNCTION_98();
  v0[30] = swift_getAssociatedTypeWitness();
  v6 = sub_197A87DB8();
  v0[31] = v6;
  OUTLINED_FUNCTION_10(v6);
  v0[32] = v7;
  v8 = OUTLINED_FUNCTION_78_0();
  v0[33] = v8;
  OUTLINED_FUNCTION_98();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[34] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_10(AssociatedTypeWitness);
  v0[35] = v10;
  v0[36] = *(v11 + 64);
  v12 = OUTLINED_FUNCTION_78_0();
  v0[37] = v12;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[38] = v13;
  *v13 = v14;
  v13[1] = sub_1979A5864;

  return MEMORY[0x1EEE6D8D0](v8, v1, v3, v12, v4, v5);
}

uint64_t sub_1979A5864()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v3 + 208);
    v8 = sub_1979A5CAC;
  }

  else
  {
    v9 = *(v3 + 208);
    swift_endAccess();

    v8 = sub_1979A5984;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1979A5984()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  OUTLINED_FUNCTION_64_0(v1, 1, v2);
  if (v3)
  {
    (*(*(v0 + 256) + 8))(v1, *(v0 + 248));

    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
  }

  else
  {
    *(v0 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v0 + 48));
    OUTLINED_FUNCTION_36_0();
    (*(v4 + 32))();
  }

  v5 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v5;
  sub_1979487E0();
  if (*(v0 + 136))
  {
    sub_1979AA150((v0 + 112), (v0 + 80));
    sub_197949604(v0 + 80, v0 + 144);
    v6 = type metadata accessor for ClientData(0);
    v7 = swift_dynamicCast();
    v8 = *(v0 + 216);
    if (v7)
    {
      v9 = *(v0 + 200);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
      sub_197947A40(v0 + 16, &qword_1EAF49120, &qword_197A8CE50);
      OUTLINED_FUNCTION_56_0();
      __swift_storeEnumTagSinglePayload(v10, v11, v12, v6);
      sub_1979AA160();
      v13 = v9;
      v14 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_41();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v6);
      sub_197947A40(v8, &qword_1EAF49110, &qword_197A92D60);
      if (qword_1ED880370 != -1)
      {
        swift_once();
      }

      v20 = sub_197A87608();
      __swift_project_value_buffer(v20, qword_1ED880520);
      v21 = sub_197A875E8();
      v22 = sub_197A87D58();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_197941000, v21, v22, "InferenceProvider stream produced a non-ClientData element", v23, 2u);
        MEMORY[0x19A8EBE00](v23, -1, -1);
      }

      v24 = *(v0 + 200);

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
      sub_197947A40(v0 + 16, &qword_1EAF49120, &qword_197A8CE50);
      v13 = v24;
      v14 = 1;
    }

    v15 = 1;
    v16 = v6;
  }

  else
  {
    sub_197947A40(v0 + 16, &qword_1EAF49120, &qword_197A8CE50);
    sub_197947A40(v0 + 112, &qword_1EAF49120, &qword_197A8CE50);
    type metadata accessor for ClientData(0);
    OUTLINED_FUNCTION_41();
  }

  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);

  OUTLINED_FUNCTION_13();

  return v25();
}

uint64_t sub_1979A5CAC()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[37];
  v2 = v0[34];
  v3 = v0[35];
  v4 = OUTLINED_FUNCTION_78_0();
  v5 = *(v3 + 32);
  v5(v4, v1, v2);
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_98();
  v6 = sub_197A88208();
  if (v6)
  {
    v7 = v6;
    (*(v0[35] + 8))(v4, v0[34]);
  }

  else
  {
    v8 = v0[34];
    OUTLINED_FUNCTION_59_1();
    OUTLINED_FUNCTION_70_0();
    v7 = swift_allocError();
    v5(v9, v4, v8);
  }

  swift_endAccess();

  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v10);
  OUTLINED_FUNCTION_70_0();
  swift_allocError();
  MEMORY[0x19A8EBBD0](v7);
  InferenceError.init(wrapping:)();
  swift_willThrow();

  OUTLINED_FUNCTION_13();

  return v11();
}

uint64_t sub_1979A5E68()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1979A5EA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return sub_1979A55D8();
}

uint64_t sub_1979A5F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for InferenceError(0);
  v8 = swift_task_alloc();
  v4[3] = v8;
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_1979AA2A4;

  return sub_19799D81C(a1, a2, a3, v8);
}

uint64_t sub_1979A6050()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_1979A60B4()
{
  v1 = sub_1979A2FF8();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1979A615C()
{
  nullsub_1();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1979A61B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  type metadata accessor for InferenceError(0);
  v3[3] = swift_task_alloc();
  v4 = swift_task_alloc();
  v3[4] = v4;
  *v4 = v3;
  v4[1] = sub_1979AA2A4;

  return _s20ModelManagerServices24InferenceProviderAdapterV15transitionAsset_2toyAA0deH10DescriptorV_AA9LoadStateOtYaAA0D5ErrorOYKF();
}

uint64_t sub_1979A6278()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return InferenceProviderAdapter.requestInputStreamStep(clientDataArray:configuration:)();
}

uint64_t sub_1979A6304()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return InferenceProviderAdapter.inputStreamEnded(requestID:)();
}

uint64_t sub_1979A6390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for InferenceError(0);
  v8 = swift_task_alloc();
  v4[3] = v8;
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_1979AA2A4;

  return _s20ModelManagerServices24InferenceProviderAdapterV14requestOneShot10clientData13configurationAA06ClientK0VAH_AA0dE20RequestConfigurationVtYaAA0D5ErrorOYKF(a1, a2, a3, v8);
}

uint64_t sub_1979A6480(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5)
{
  v5[2] = a5;
  type metadata accessor for InferenceError(0);
  v10 = swift_task_alloc();
  v5[3] = v10;
  v11 = swift_task_alloc();
  v5[4] = v11;
  *v11 = v5;
  v11[1] = sub_1979AA2A4;

  return _s20ModelManagerServices24InferenceProviderAdapterV15transitionAsset14withIdentifier2to4fromySS_AA9LoadStateOAItYaAA0D5ErrorOYKF(a1, a2, a3, a4, v10);
}

uint64_t sub_1979A657C(char a1)
{
  sub_197A882F8();
  MEMORY[0x19A8EB5D0](a1 & 1);
  return sub_197A88358();
}

uint64_t sub_1979A65CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1979A6574();
  *a1 = result;
  return result;
}

uint64_t sub_1979A65F4(uint64_t a1)
{
  v2 = sub_19797C400();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979A6630(uint64_t a1)
{
  v2 = sub_19797C400();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979A666C(uint64_t a1)
{
  v2 = sub_19797C454();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979A66A8(uint64_t a1)
{
  v2 = sub_19797C454();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979A66E8(uint64_t a1)
{
  v2 = sub_1979A83EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979A6724(uint64_t a1)
{
  v2 = sub_1979A83EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceProviderDescriptor.Instance.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x19A8EB5D0](0);
  }

  MEMORY[0x19A8EB5D0](1);

  return sub_197A879B8();
}

uint64_t InferenceProviderDescriptor.Instance.hashValue.getter()
{
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_145();
  if (v1)
  {
    MEMORY[0x19A8EB5D0](1);
    sub_197A879B8();
  }

  else
  {
    MEMORY[0x19A8EB5D0](0);
  }

  return sub_197A88358();
}

uint64_t sub_1979A6848(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_197A882F8();
  if (v2)
  {
    MEMORY[0x19A8EB5D0](1);
    sub_197A879B8();
  }

  else
  {
    MEMORY[0x19A8EB5D0](0);
  }

  return sub_197A88358();
}

uint64_t sub_1979A68C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65636E6174736E69 && a2 == 0xE800000000000000;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E4F646574736F68 && a2 == 0xEE00726576726553)
    {

      return 2;
    }

    else
    {
      v8 = sub_197A88218();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1979A69D8(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_145();
  MEMORY[0x19A8EB5D0](a1);
  return sub_197A88358();
}

uint64_t sub_1979A6A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979A68C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979A6A40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1979A69D0();
  *a1 = result;
  return result;
}

uint64_t sub_1979A6A68(uint64_t a1)
{
  v2 = sub_19797C050();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979A6AA4(uint64_t a1)
{
  v2 = sub_19797C050();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceProviderDescriptor.hashValue.getter()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_85();
  sub_197A879B8();
  if (v1)
  {
    MEMORY[0x19A8EB5D0](1);
    sub_197A879B8();
  }

  else
  {
    MEMORY[0x19A8EB5D0](0);
  }

  sub_197A88328();
  return sub_197A88358();
}

uint64_t sub_1979A6B74(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v5[9] = *v1;
  v5[10] = v2;
  v6 = *(v1 + 16);
  v7 = v3;
  sub_197A882F8();
  InferenceProviderDescriptor.hash(into:)(v5);
  return sub_197A88358();
}

unint64_t sub_1979A6BD0()
{
  result = qword_1EAF48630;
  if (!qword_1EAF48630)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RequestPriority, &type metadata for RequestPriority, v0, v1);
    atomic_store(result, &qword_1EAF48630);
  }

  return result;
}

void sub_1979A6C24()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  v5 = OUTLINED_FUNCTION_10(v4);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27();
  v45 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v43 = type metadata accessor for StateDump.ExecutionGroupState(0);
  v12 = MEMORY[0x1EEE9AC00](v43);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v17 = *(v3 + 16);
  if (v17 == *(v1 + 16) && v17 && v3 != v1)
  {
    v18 = 0;
    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v36 = *(v3 + 16);
    v37 = v1 + v19;
    v38 = *(v15 + 72);
    v39 = v3 + v19;
    v41 = &v35 - v16;
    v42 = v14;
    while (1)
    {
      OUTLINED_FUNCTION_18_1();
      sub_19796B948();
      if (v18 == v17)
      {
        break;
      }

      v40 = v18;
      OUTLINED_FUNCTION_18_1();
      sub_19796B948();
      if ((_s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0() & 1) == 0 || (sub_19799F5B0(*&v41[v43[5]], *&v42[v43[5]]) & 1) == 0 || (v20 = v43[6], v21 = *&v41[v20], v22 = *&v42[v20], v23 = *(v21 + 16), v23 != *(v22 + 16)))
      {
LABEL_26:
        sub_19796B99C();
        sub_19796B99C();
        goto LABEL_27;
      }

      if (v23 && v21 != v22)
      {
        v24 = 0;
        v44 = v21 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
        while (v24 < *(v21 + 16))
        {
          sub_1979487E0();
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_29;
          }

          v25 = v11;
          v26 = v45;
          sub_1979487E0();
          v27 = _s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0();
          v28 = v26;
          v11 = v25;
          sub_197947A40(v28, &qword_1EAF49128, &unk_197A8CE70);
          sub_197947A40(v25, &qword_1EAF49128, &unk_197A8CE70);
          if ((v27 & 1) == 0)
          {
            goto LABEL_26;
          }

          if (v23 == ++v24)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
        break;
      }

LABEL_16:
      v29 = v43[7];
      v30 = *&v41[v29];
      v31 = *&v41[v29 + 8];
      v32 = &v42[v29];
      if (v30 == *v32 && v31 == *(v32 + 1))
      {
        sub_19796B99C();
        sub_19796B99C();
      }

      else
      {
        v34 = sub_197A88218();
        sub_19796B99C();
        OUTLINED_FUNCTION_91();
        sub_19796B99C();
        if ((v34 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v18 = v40 + 1;
      v17 = v36;
      if (v40 + 1 == v36)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_27:
    OUTLINED_FUNCTION_66();
  }
}

void sub_1979A701C()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70) - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = *(v3 + 16);
  if (v7 == *(v1 + 16) && v7 && v3 != v1)
  {
    v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v9 = v3 + v8;
    v10 = v1 + v8;
    v11 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_129();
      sub_1979487E0();
      OUTLINED_FUNCTION_129();
      sub_1979487E0();
      OUTLINED_FUNCTION_63();
      v12 = _s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0();
      v13 = OUTLINED_FUNCTION_69_0();
      sub_197947A40(v13, v14, v15);
      OUTLINED_FUNCTION_85();
      sub_197947A40(v16, v17, v18);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v10 += v11;
      v9 += v11;
      --v7;
    }

    while (v7);
  }

  OUTLINED_FUNCTION_66();
}

uint64_t sub_1979A71AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomAssetConfiguration(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v53 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v53 = *(v8 + 72);
    v54 = v4;
    do
    {
      sub_19796B948();
      sub_19796B948();
      v15 = *v10 == *v7 && v10[1] == v7[1];
      if (!v15 && (sub_197A88218() & 1) == 0 || (v10[2] == v7[2] ? (v16 = v10[3] == v7[3]) : (v16 = 0), !v16 && (sub_197A88218() & 1) == 0))
      {
LABEL_42:
        sub_19796B99C();
        sub_19796B99C();
        return 0;
      }

      v17 = v54;
      v18 = *(v54 + 28);
      v19 = v10 + v18;
      v20 = *(v10 + v18 + 32);
      if (v20 == 1)
      {
        v21 = v7 + v18;
        if (*(v7 + v18 + 32))
        {
          goto LABEL_33;
        }

        v22 = 0;
      }

      else
      {
        v24 = *(v19 + 2);
        v23 = *(v19 + 3);
        v25 = *(v19 + 1);
        v26 = HIDWORD(*v19);
        atoken.val[0] = *v19;
        atoken.val[1] = v26;
        *&atoken.val[2] = v25;
        *&atoken.val[4] = v24;
        *&atoken.val[6] = v23;
        v27 = audit_token_to_pid(&atoken);
        v21 = v7 + *(v17 + 28);
        if (v21[32])
        {
          goto LABEL_42;
        }

        v22 = v27;
      }

      v28 = v21 + 32;
      v30 = *(v21 + 2);
      v29 = *(v21 + 3);
      v31 = *(v21 + 1);
      v32 = HIDWORD(*v21);
      atoken.val[0] = *v21;
      atoken.val[1] = v32;
      *&atoken.val[2] = v31;
      *&atoken.val[4] = v30;
      *&atoken.val[6] = v29;
      if (v22 == audit_token_to_pid(&atoken))
      {
        v33 = v20;
      }

      else
      {
        v33 = 1;
      }

      if (v33)
      {
        goto LABEL_42;
      }

      v34 = v19[32];
      if (v34 == 1)
      {
        if (*v28)
        {
          goto LABEL_33;
        }

        v35 = 0;
      }

      else
      {
        v37 = *(v19 + 2);
        v36 = *(v19 + 3);
        v38 = *(v19 + 1);
        v39 = HIDWORD(*v19);
        atoken.val[0] = *v19;
        atoken.val[1] = v39;
        *&atoken.val[2] = v38;
        *&atoken.val[4] = v37;
        *&atoken.val[6] = v36;
        v40 = audit_token_to_pidversion(&atoken);
        if (*v28)
        {
          goto LABEL_42;
        }

        v35 = v40;
      }

      v42 = *(v21 + 2);
      v41 = *(v21 + 3);
      v43 = *(v21 + 1);
      v44 = HIDWORD(*v21);
      atoken.val[0] = *v21;
      atoken.val[1] = v44;
      *&atoken.val[2] = v43;
      *&atoken.val[4] = v42;
      *&atoken.val[6] = v41;
      if (v35 == audit_token_to_pidversion(&atoken))
      {
        v45 = v34;
      }

      else
      {
        v45 = 1;
      }

      if (v45)
      {
        goto LABEL_42;
      }

LABEL_33:
      v46 = *(v54 + 32);
      v47 = *(v10 + v46);
      v48 = *(v10 + v46 + 8);
      v49 = (v7 + v46);
      if (v47 == *v49 && v48 == v49[1])
      {
        sub_19796B99C();
        sub_19796B99C();
      }

      else
      {
        v51 = sub_197A88218();
        sub_19796B99C();
        sub_19796B99C();
        if ((v51 & 1) == 0)
        {
          return 0;
        }
      }

      v14 += v53;
      v13 += v53;
      --v11;
    }

    while (v11);
  }

  return 1;
}

uint64_t sub_1979A7584(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_197A88358();
  OUTLINED_FUNCTION_19_2();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  result = sub_197A878A8();
  v9 = 0;
  v10 = 0;
  if (v5)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_134_0();
      sub_197A882F8();
      sub_197A878A8();
      sub_197A879B8();
      v12 = sub_197A88358();

      v9 ^= v12;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x19A8EB5D0](0);
    }

    ++v10;
    if (*(a2 + 56 + 8 * v11))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1979A76B8()
{
  result = qword_1EAF48FF8;
  if (!qword_1EAF48FF8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48FF0, &qword_197A8BB10);
    result = swift_getWitnessTable(protocol conformance descriptor for ResponseStream<A>, v3, v0, v1);
    atomic_store(result, &qword_1EAF48FF8);
  }

  return result;
}

unint64_t sub_1979A771C()
{
  result = qword_1EAF48620;
  if (!qword_1EAF48620)
  {
    result = swift_getWitnessTable(aW_7, &type metadata for GenerativeModels, v0, v1);
    atomic_store(result, &qword_1EAF48620);
  }

  return result;
}

void sub_1979A7770()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  OUTLINED_FUNCTION_97();
  v3 = sub_197A87298();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  memcpy(v21, v0, sizeof(v21));
  sub_197A88358();
  OUTLINED_FUNCTION_19_2();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  sub_197A878A8();
  v15 = 0;
  v16 = 0;
  if (v12)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_134_0();
      (*(v5 + 16))(v9, *(v2 + 48) + *(v5 + 72) * (v19 | (v18 << 6)), v3);
      OUTLINED_FUNCTION_0_5();
      sub_19796AA70(&qword_1ED880FE0);
      v20 = sub_197A878E8();
      (*(v5 + 8))(v9, v3);
      v15 ^= v20;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      MEMORY[0x19A8EB5D0](0);
      OUTLINED_FUNCTION_66();
      return;
    }

    ++v16;
    if (*(v2 + 56 + 8 * v17))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

void sub_1979A7954()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_114(v7, v5, v3);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = OUTLINED_FUNCTION_10(v11);
  v26[3] = v13;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_103();
  MEMORY[0x1EEE9AC00](v14);
  v26[2] = v26 - v15;
  v26[0] = v8;
  memcpy(v27, v8, sizeof(v27));
  v26[1] = sub_197A88358();
  v16 = v6 + 56;
  OUTLINED_FUNCTION_19_2();
  v19 = v18 & v17;
  v21 = (v20 + 63) >> 6;
  v26[4] = v6;
  sub_197A878A8();
  v22 = 0;
  v23 = 0;
  if (v19)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      MEMORY[0x19A8EB5D0](v22);
      OUTLINED_FUNCTION_66();
      return;
    }

    v19 = *(v16 + 8 * v24);
    ++v23;
    if (v19)
    {
      v23 = v24;
      do
      {
LABEL_7:
        v19 &= v19 - 1;
        sub_1979487E0();
        OUTLINED_FUNCTION_135();
        sub_19794B0C4();
        sub_197A882F8();
        sub_197A87298();
        OUTLINED_FUNCTION_0_5();
        sub_19796AA70(&qword_1ED880FE0);
        sub_197A878F8();
        v25 = sub_197A88358();
        sub_197947A40(v0, v4, v2);
        v22 ^= v25;
      }

      while (v19);
      continue;
    }
  }

  __break(1u);
}

void sub_1979A7B7C()
{
  OUTLINED_FUNCTION_67();
  v2 = OUTLINED_FUNCTION_43_1();
  active = type metadata accessor for StateDump.InferenceProviderState.ActiveRequest(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_0();
  v7 = v6 - v5;
  memcpy(v17, v1, sizeof(v17));
  sub_197A88358();
  OUTLINED_FUNCTION_19_2();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  sub_197A878A8();
  v13 = 0;
  v14 = 0;
  if (v10)
  {
    goto LABEL_6;
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

      MEMORY[0x19A8EB5D0](v13);
      OUTLINED_FUNCTION_66();
      return;
    }

    v10 = *(v0 + 56 + 8 * v15);
    ++v14;
    if (v10)
    {
      v14 = v15;
      do
      {
LABEL_6:
        v10 &= v10 - 1;
        OUTLINED_FUNCTION_16_1();
        sub_19796B948();
        sub_197A882F8();
        sub_197A87298();
        OUTLINED_FUNCTION_0_5();
        sub_19796AA70(&qword_1ED880FE0);
        sub_197A878F8();
        v16 = *(v7 + *(active + 20));
        OUTLINED_FUNCTION_2_3();
        sub_19796B99C();
        switch(v16)
        {
          case 2:
            OUTLINED_FUNCTION_140_0();
            OUTLINED_FUNCTION_66_1();
            break;
          default:
            break;
        }

        sub_197A879B8();

        v13 ^= sub_197A88358();
      }

      while (v10);
    }
  }

  __break(1u);
}

void sub_1979A7DBC()
{
  OUTLINED_FUNCTION_67();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_97();
  v6 = type metadata accessor for StateDump.ExecutionGroupState(v5);
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_123();
  if (v2)
  {
    v10 = *(v6 + 20);
    OUTLINED_FUNCTION_128();
    v11 = *(v8 + 72);
    do
    {
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_59_1();
      sub_19796B948();
      sub_197A87298();
      OUTLINED_FUNCTION_0_5();
      sub_19796AA70(&qword_1ED880FE0);
      OUTLINED_FUNCTION_52_2();
      sub_197A878F8();
      sub_1979A7584(v0, *(v1 + v10));
      sub_1979A7F04();
      sub_197A879B8();
      sub_19796B99C();
      v4 += v11;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_66();
}

void sub_1979A7F04()
{
  OUTLINED_FUNCTION_67();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_10(v4);
  v6 = v5;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_123();
  if (v1)
  {
    OUTLINED_FUNCTION_128();
    v8 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_59_1();
      sub_1979487E0();
      sub_197A87298();
      OUTLINED_FUNCTION_0_5();
      sub_19796AA70(&qword_1ED880FE0);
      OUTLINED_FUNCTION_52_2();
      sub_197A878F8();
      sub_197947A40(v0, &qword_1EAF49128, &unk_197A8CE70);
      v3 += v8;
      --v1;
    }

    while (v1);
  }

  OUTLINED_FUNCTION_66();
}

uint64_t sub_1979A8034(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CustomAssetConfiguration(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &atoken - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x19A8EB5D0](v7);
  if (v7)
  {
    v9 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = &v6[*(v3 + 28)];
    v11 = *(v4 + 72);
    do
    {
      sub_19796B948();
      sub_197A879B8();
      sub_197A879B8();
      sub_197A879B8();
      if ((v10[32] & 1) == 0)
      {
        v13 = *(v10 + 2);
        v12 = *(v10 + 3);
        v14 = *(v10 + 1);
        v15 = HIDWORD(*v10);
        atoken.val[0] = *v10;
        atoken.val[1] = v15;
        *&atoken.val[2] = v14;
        *&atoken.val[4] = v13;
        *&atoken.val[6] = v12;
        audit_token_to_pid(&atoken);
      }

      sub_197A88338();
      if ((v10[32] & 1) == 0)
      {
        v17 = *(v10 + 2);
        v16 = *(v10 + 3);
        v18 = *(v10 + 1);
        v19 = HIDWORD(*v10);
        atoken.val[0] = *v10;
        atoken.val[1] = v19;
        *&atoken.val[2] = v18;
        *&atoken.val[4] = v17;
        *&atoken.val[6] = v16;
        audit_token_to_pidversion(&atoken);
      }

      sub_197A88338();
      result = sub_19796B99C();
      v9 += v11;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1979A8214(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;
  result = sub_197A878A8();
  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x19A8EB5D0](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        memcpy(__dst, a1, sizeof(__dst));
        sub_197A878A8();
        sub_197A878A8();
        sub_197A879B8();

        sub_197A879B8();

        result = sub_197A88358();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1979A8374()
{
  result = qword_1EAF49040;
  if (!qword_1EAF49040)
  {
    result = swift_getWitnessTable(byte_197A8CCF8, &type metadata for UnimplementedStream, v0, v1);
    atomic_store(result, &qword_1EAF49040);
  }

  return result;
}

unint64_t sub_1979A83EC()
{
  result = qword_1ED87F048;
  if (!qword_1ED87F048)
  {
    result = swift_getWitnessTable(asc_197A8CC3C, &type metadata for InferenceProviderDescriptor.Instance.SpecificInstanceCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F048);
  }

  return result;
}

unint64_t sub_1979A8490()
{
  result = qword_1EAF49098;
  if (!qword_1EAF49098)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LoadState, &type metadata for LoadState, v0, v1);
    atomic_store(result, &qword_1EAF49098);
  }

  return result;
}

unint64_t sub_1979A8580()
{
  result = qword_1EAF490A8;
  if (!qword_1EAF490A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InferenceProviderDescriptor.Instance, &type metadata for InferenceProviderDescriptor.Instance, v0, v1);
    atomic_store(result, &qword_1EAF490A8);
  }

  return result;
}

unint64_t sub_1979A85D8()
{
  result = qword_1EAF485C8;
  if (!qword_1EAF485C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InferenceProviderDescriptor, &type metadata for InferenceProviderDescriptor, v0, v1);
    atomic_store(result, &qword_1EAF485C8);
  }

  return result;
}

void dispatch thunk of InferenceProvider.loadIn(inferenceAssetIdentifier:)()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_115(v0, v1, v2, v3);
  OUTLINED_FUNCTION_26();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_43(v5);
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_147();

  __asm { BRAA            X4, X16 }
}

void dispatch thunk of InferenceProvider.loadOut(inferenceAssetIdentifier:)()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_115(v0, v1, v2, v3);
  OUTLINED_FUNCTION_26();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_43(v5);
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_147();

  __asm { BRAA            X4, X16 }
}

uint64_t dispatch thunk of InferenceProvider.transitionAsset(withIdentifier:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_10_3(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_17_2();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_20(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_43(v16);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of InferenceProvider.requestOneShot(clientData:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_10_3(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_17_2();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_20(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_43(v16);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_10_3(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_17_2();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_20(v15);
  *v16 = v17;
  v16[1] = sub_197960FB0;
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_1979A8A60()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_21();
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v4, v2);
}

uint64_t dispatch thunk of InferenceProvider.cancelRequest(uuid:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_37_0(v0, v1, v2);
  OUTLINED_FUNCTION_17_2();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_10_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of InferenceProviding.isVersionSupported(requestVersion:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_37_0(v0, v1, v2);
  OUTLINED_FUNCTION_17_2();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_10_0(v4);

  return v7(v6);
}

uint64_t sub_1979A8E60()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  OUTLINED_FUNCTION_21();
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t dispatch thunk of InferenceProviding.convertData(clientData:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_37_0(v0, v1, v2);
  OUTLINED_FUNCTION_17_2();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_10_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of InferenceProviding.prewarmHint(_:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_37_0(v0, v1, v2);
  OUTLINED_FUNCTION_17_2();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_10_0(v4);

  return v7(v6);
}

uint64_t _s20ModelManagerServices18InferenceProvidingP15transitionAsset_2toyAA0d8ProviderG10DescriptorV_AA9LoadStateOtYaAA0D5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_10_3(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_17_2();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_20(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_43(v16);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of InferenceProviding.requestInputStreamStep(clientDataArray:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_10_3(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_17_2();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_20(v15);
  *v16 = v17;
  v16[1] = sub_197960FB0;
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of InferenceProviding.inputStreamEnded(requestID:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_37_0(v0, v1, v2);
  OUTLINED_FUNCTION_17_2();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_10_0(v4);

  return v7(v6);
}

uint64_t _s20ModelManagerServices18InferenceProvidingP14requestOneShot10clientData13configurationAA06ClientJ0VAH_AA0D28ProviderRequestConfigurationVtYaAA0D5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_26();
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_20(v13);
  *v14 = v15;
  v14[1] = sub_197960FB0;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t _s20ModelManagerServices36UndeprecatedInferenceProviderAdapterP15transitionAsset14withIdentifier2to4fromySS_AA9LoadStateOAItYaAA0E5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_17_2();
  v19 = (v14 + *v14);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_20(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_43(v16);

  return v19(a1, a2, a3, a4, a5, a6, a7);
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

uint64_t sub_1979A96DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1979A971C(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for InferenceProviderDescriptor.Instance.SpecificInstanceCodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InferenceProviderAssetDescriptor.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1979A9940()
{
  result = qword_1EAF490B0;
  if (!qword_1EAF490B0)
  {
    result = swift_getWitnessTable(aE_25, &type metadata for InferenceProviderRequestConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF490B0);
  }

  return result;
}

unint64_t sub_1979A9998()
{
  result = qword_1EAF490B8;
  if (!qword_1EAF490B8)
  {
    result = swift_getWitnessTable(byte_197A8C6BC, &type metadata for InferenceProviderAssetDescriptor.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF490B8);
  }

  return result;
}

unint64_t sub_1979A99F0()
{
  result = qword_1EAF490C0;
  if (!qword_1EAF490C0)
  {
    result = swift_getWitnessTable(byte_197A8C774, &type metadata for InferenceProviderPrewarmInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF490C0);
  }

  return result;
}

unint64_t sub_1979A9A48()
{
  result = qword_1EAF490C8;
  if (!qword_1EAF490C8)
  {
    result = swift_getWitnessTable(aI, &type metadata for UnimplementedStream.Iterator, v0, v1);
    atomic_store(result, &qword_1EAF490C8);
  }

  return result;
}

unint64_t sub_1979A9AA0()
{
  result = qword_1EAF490D0;
  if (!qword_1EAF490D0)
  {
    result = swift_getWitnessTable(aY_1, &type metadata for InferenceProviderDescriptor.Instance.SpecificInstanceCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF490D0);
  }

  return result;
}

unint64_t sub_1979A9AF8()
{
  result = qword_1EAF490D8;
  if (!qword_1EAF490D8)
  {
    result = swift_getWitnessTable(aQ, &type metadata for InferenceProviderDescriptor.Instance.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF490D8);
  }

  return result;
}

unint64_t sub_1979A9B50()
{
  result = qword_1EAF490E0;
  if (!qword_1EAF490E0)
  {
    result = swift_getWitnessTable(byte_197A8CA90, &type metadata for InferenceProviderDescriptor.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF490E0);
  }

  return result;
}

unint64_t sub_1979A9BEC(uint64_t a1)
{
  result = sub_19796AA70(&unk_1EAF490E8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1979A9C48()
{
  result = qword_1ED87F8D8;
  if (!qword_1ED87F8D8)
  {
    result = swift_getWitnessTable(byte_197A8CA00, &type metadata for InferenceProviderDescriptor.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F8D8);
  }

  return result;
}

unint64_t sub_1979A9CA0()
{
  result = qword_1ED87F8E0;
  if (!qword_1ED87F8E0)
  {
    result = swift_getWitnessTable(asc_197A8CA28, &type metadata for InferenceProviderDescriptor.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F8E0);
  }

  return result;
}

unint64_t sub_1979A9CF8()
{
  result = qword_1ED87F8C8;
  if (!qword_1ED87F8C8)
  {
    result = swift_getWitnessTable(byte_197A8C8F8, &type metadata for InferenceProviderDescriptor.Instance.DefaultInstanceCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F8C8);
  }

  return result;
}

unint64_t sub_1979A9D50()
{
  result = qword_1ED87F8D0;
  if (!qword_1ED87F8D0)
  {
    result = swift_getWitnessTable(byte_197A8C920, &type metadata for InferenceProviderDescriptor.Instance.DefaultInstanceCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F8D0);
  }

  return result;
}

unint64_t sub_1979A9DA8()
{
  result = qword_1ED87F8B8;
  if (!qword_1ED87F8B8)
  {
    result = swift_getWitnessTable(byte_197A8C840, &type metadata for InferenceProviderDescriptor.Instance.SpecificInstanceCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F8B8);
  }

  return result;
}

unint64_t sub_1979A9E00()
{
  result = qword_1ED87F8C0;
  if (!qword_1ED87F8C0)
  {
    result = swift_getWitnessTable(byte_197A8C868, &type metadata for InferenceProviderDescriptor.Instance.SpecificInstanceCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F8C0);
  }

  return result;
}

unint64_t sub_1979A9E58()
{
  result = qword_1ED87F8A0;
  if (!qword_1ED87F8A0)
  {
    result = swift_getWitnessTable(byte_197A8C948, &type metadata for InferenceProviderDescriptor.Instance.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F8A0);
  }

  return result;
}

unint64_t sub_1979A9EB0()
{
  result = qword_1ED87F8A8;
  if (!qword_1ED87F8A8)
  {
    result = swift_getWitnessTable(byte_197A8C970, &type metadata for InferenceProviderDescriptor.Instance.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F8A8);
  }

  return result;
}

unint64_t sub_1979A9F4C(uint64_t a1)
{
  result = sub_19796AA70(&unk_1EAF490F8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1979A9FA8()
{
  result = qword_1EAF49100;
  if (!qword_1EAF49100)
  {
    result = swift_getWitnessTable(asc_197A8CD14, &type metadata for UnimplementedStream.Iterator, v0, v1);
    atomic_store(result, &qword_1EAF49100);
  }

  return result;
}

unint64_t sub_1979A9FFC(uint64_t a1)
{
  result = sub_1979AA024();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1979AA024()
{
  result = qword_1EAF49108;
  if (!qword_1EAF49108)
  {
    result = swift_getWitnessTable(byte_197A8C79C, &type metadata for UnimplementedStream, v0, v1);
    atomic_store(result, &qword_1EAF49108);
  }

  return result;
}

unint64_t sub_1979AA078(uint64_t a1)
{
  result = sub_1979A9A48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1979AA0A4()
{
  result = qword_1ED87DDB8;
  if (!qword_1ED87DDB8)
  {
    result = swift_getWitnessTable(asc_197A8C574, &type metadata for InferenceProviderRequestConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87DDB8);
  }

  return result;
}

unint64_t sub_1979AA0FC()
{
  result = qword_1ED87DDC0;
  if (!qword_1ED87DDC0)
  {
    result = swift_getWitnessTable(byte_197A8C59C, &type metadata for InferenceProviderRequestConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87DDC0);
  }

  return result;
}

_OWORD *sub_1979AA150(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1979AA160()
{
  v1 = OUTLINED_FUNCTION_43_1();
  v2(v1);
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_22();
  v4(v3);
  return v0;
}

uint64_t sub_1979AA1B4()
{
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v4[1] = sub_197960FB0;
  OUTLINED_FUNCTION_129();

  return sub_1979A1970(v6, v7, v8, v9, v2, v1);
}

__n128 OUTLINED_FUNCTION_116_0@<Q0>(uint64_t a1@<X8>, __n128 a2, __n128 a3)
{
  *(v4 + a1) = v3;
  v6 = (v4 + *(v5 + 48));
  result = a3;
  *v6 = a3;
  v6[1] = a2;
  return result;
}

void OUTLINED_FUNCTION_123()
{

  JUMPOUT(0x19A8EB5D0);
}

uint64_t OUTLINED_FUNCTION_146_0()
{

  return _s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0();
}

uint64_t Version.init(major:minor:patch:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

BOOL static Version.< infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 == v3)
  {
    v4 = a1[2] < a2[2];
  }

  else
  {
    v4 = v2 < v3;
  }

  if (*a1 == *a2)
  {
    return v4;
  }

  else
  {
    return *a1 < *a2;
  }
}

uint64_t sub_1979AA3C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F6E696DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6863746170 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_197A88218();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1979AA4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979AA3C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979AA4F4(uint64_t a1)
{
  v2 = sub_197954698();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AA530(uint64_t a1)
{
  v2 = sub_197954698();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Version.hash(into:)()
{
  sub_197A88338();
  sub_197A88338();
  return sub_197A88338();
}

uint64_t Version.hashValue.getter()
{
  sub_197A882F8();
  sub_197A88338();
  sub_197A88338();
  sub_197A88338();
  return sub_197A88358();
}

uint64_t sub_1979AA628(uint64_t a1)
{
  sub_197A882F8();
  sub_197A88338();
  sub_197A88338();
  sub_197A88338();
  return sub_197A88358();
}

uint64_t Version.description.getter()
{
  v0 = OUTLINED_FUNCTION_0_6();
  MEMORY[0x19A8EAC80](v0);

  MEMORY[0x19A8EAC80](46, 0xE100000000000000);
  v1 = OUTLINED_FUNCTION_0_6();
  MEMORY[0x19A8EAC80](v1);

  MEMORY[0x19A8EAC80](46, 0xE100000000000000);
  v2 = OUTLINED_FUNCTION_0_6();
  MEMORY[0x19A8EAC80](v2);

  return 118;
}

unint64_t sub_1979AA7BC()
{
  result = qword_1EAF49150;
  if (!qword_1EAF49150)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Version, &type metadata for Version, v0, v1);
    atomic_store(result, &qword_1EAF49150);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Version.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1979AA8F4()
{
  result = qword_1EAF49158;
  if (!qword_1EAF49158)
  {
    result = swift_getWitnessTable(byte_197A8D0B8, &type metadata for Version.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49158);
  }

  return result;
}

unint64_t sub_1979AA94C()
{
  result = qword_1ED87FEF0;
  if (!qword_1ED87FEF0)
  {
    result = swift_getWitnessTable(byte_197A8D028, &type metadata for Version.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FEF0);
  }

  return result;
}

unint64_t sub_1979AA9A4()
{
  result = qword_1ED87FEF8;
  if (!qword_1ED87FEF8)
  {
    result = swift_getWitnessTable(byte_197A8D050, &type metadata for Version.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FEF8);
  }

  return result;
}

uint64_t sub_1979AA9FC()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1EAF49160);
  __swift_project_value_buffer(v0, qword_1EAF49160);
  return sub_197A875F8();
}

double InferenceProviderExtension.__allocating_init()()
{
  OUTLINED_FUNCTION_15_2();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

uint64_t InferenceProviderExtension.__deallocating_deinit()
{
  sub_19795B324(v0 + 16, &qword_1EAF49178, &unk_197A8D160);
  v1 = OUTLINED_FUNCTION_15_2();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1979AAB1C(uint64_t a1, int a2)
{
  v4 = sub_197A87768();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAF48920 != -1)
  {
    swift_once();
  }

  v8 = sub_197A87608();
  __swift_project_value_buffer(v8, qword_1EAF49160);
  v9 = *(v5 + 16);
  v9(v7, a1, v4);
  v10 = sub_197A875E8();
  v11 = sub_197A87D58();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 67109378;
    *(v12 + 4) = a2;
    *(v12 + 8) = 2112;
    sub_1979AB594();
    swift_allocError();
    v9(v14, v7, v4);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    (*(v5 + 8))(v7, v4);
    *(v12 + 10) = v15;
    *v13 = v15;
    _os_log_impl(&dword_197941000, v10, v11, "Session with host process with %d was cancelled: %@", v12, 0x12u);
    sub_19795B324(v13, &qword_1EAF48A90, &qword_197A891A0);
    MEMORY[0x19A8EBE00](v13, -1, -1);
    MEMORY[0x19A8EBE00](v12, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  exit(1);
}

uint64_t sub_1979AAD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_197960E38;

  return sub_1979AB3E4(a5);
}

uint64_t sub_1979AAE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  type metadata accessor for InferenceProviderXPCRequest.Notification(0);
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979AAEB4, 0, 0);
}

uint64_t sub_1979AAEB4()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[11];
  v2 = v0[8];
  sub_197947C44(v0[7], (v0 + 2));
  sub_197969DC4(v2, v1, type metadata accessor for InferenceProviderXPCRequest.Notification);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491D0, &qword_197A8D360);
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_16_2();
  v0[12] = v3;
  v4 = OUTLINED_FUNCTION_19();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1979AAFB0;
  v5 = v0[10];

  return v7(v3, v5);
}

uint64_t sub_1979AAFB0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1979AB09C, 0, 0);
}

uint64_t sub_1979AB09C()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_1979AB0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_197960FB0;

  return sub_1979AB3E4(a5);
}

uint64_t sub_1979AB1B0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1979AB1D4, v2, 0);
}

uint64_t sub_1979AB1D4()
{
  OUTLINED_FUNCTION_18();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1979AB28C;

  return sub_197A0CE04();
}

uint64_t sub_1979AB28C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1979AB38C, v2, 0);
}

uint64_t sub_1979AB38C()
{
  OUTLINED_FUNCTION_9();
  sub_19796F110(*(v0 + 24));
  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t sub_1979AB3E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1979AB404, v1, 0);
}

uint64_t sub_1979AB404()
{
  OUTLINED_FUNCTION_33();
  if (qword_1ED87E900 != -1)
  {
    OUTLINED_FUNCTION_8_3(&qword_1ED87E900);
  }

  v1 = sub_197A87608();
  __swift_project_value_buffer(v1, qword_1ED87DF90);
  v2 = sub_197A875E8();
  v3 = sub_197A87D48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    OUTLINED_FUNCTION_20_1(&dword_197941000, v6, v7, "Received task cancellation for message %llu.");
    OUTLINED_FUNCTION_44();
  }

  v8 = *(v0 + 16);
  v9 = *(v0 + 24);

  v10 = *(v9 + 120);
  os_unfair_lock_lock((v10 + 24));
  sub_1979D8650((v10 + 16), v8);
  os_unfair_lock_unlock((v10 + 24));
  OUTLINED_FUNCTION_13();

  return v11();
}

unint64_t sub_1979AB594()
{
  result = qword_1ED87D770;
  if (!qword_1ED87D770)
  {
    v3 = sub_197A87768();
    result = swift_getWitnessTable(MEMORY[0x1E69E84C8], v3, v0, v1);
    atomic_store(result, &qword_1ED87D770);
  }

  return result;
}

uint64_t sub_1979AB5EC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_14_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_2_5(v2);

  return sub_1979AB0FC(v4, v5, v6, v7, v0);
}

uint64_t sub_1979AB684()
{
  OUTLINED_FUNCTION_18();
  v0 = type metadata accessor for InferenceProviderXPCRequest.Notification(0);
  OUTLINED_FUNCTION_10(v0);
  OUTLINED_FUNCTION_6_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_10_4(v2);

  return sub_1979AAE20(v4, v5, v6, v7);
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1979AB7AC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_14_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_2_5(v2);

  return sub_1979AAD6C(v4, v5, v6, v7, v0);
}

BOOL sub_1979AB854(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = HIDWORD(a3) < HIDWORD(a1);
  if (HIDWORD(a3) == HIDWORD(a1))
  {
    v4 = a4 < a2;
  }

  if (a3 != a1)
  {
    v4 = a3 < a1;
  }

  return !v4;
}

BOOL sub_1979AB898(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = HIDWORD(a3) < HIDWORD(a1);
  if (HIDWORD(a3) == HIDWORD(a1))
  {
    v4 = a4 < a2;
  }

  if (a3 == a1)
  {
    return v4;
  }

  else
  {
    return a3 < a1;
  }
}

uint64_t RequestPriority.rawValue.getter()
{
  result = 1701736302;
  switch(*v0)
  {
    case 1:
      v2 = 1801675106;
      goto LABEL_5;
    case 2:
      result = 0x74696E4972657375;
      break;
    case 3:
      v2 = 1701998438;
LABEL_5:
      result = v2 | 0x756F726700000000;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1979AB944()
{
  result = qword_1EAF48628;
  if (!qword_1EAF48628)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RequestPriority, &type metadata for RequestPriority, v0, v1);
    atomic_store(result, &qword_1EAF48628);
  }

  return result;
}

uint64_t sub_1979AB9B0@<X0>(uint64_t *a1@<X8>)
{
  result = RequestPriority.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1979ABA50()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1EAF491D8);
  v1 = __swift_project_value_buffer(v0, qword_1EAF491D8);
  if (qword_1ED880370 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED880520);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1979ABB18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E657265666E69 && a2 == 0xEE00726F72724565;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656E696665646E75 && a2 == 0xEE00726F72724564;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000197AA2F00 == a2;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001FLL && 0x8000000197AA2F20 == a2;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C616E7265746E69 && a2 == 0xED0000726F727245;
          if (v9 || (sub_197A88218() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001BLL && 0x8000000197AA2F40 == a2;
            if (v10 || (sub_197A88218() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x8000000197AA2F60 == a2;
              if (v11 || (sub_197A88218() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001BLL && 0x8000000197AA20B0 == a2;
                if (v12 || (sub_197A88218() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x726F727245637078 && a2 == 0xE800000000000000;
                  if (v13 || (sub_197A88218() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x505865746F6D6572 && a2 == 0xEE00726F72724543;
                    if (v14 || (sub_197A88218() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x726F727245637069 && a2 == 0xE800000000000000;
                      if (v15 || (sub_197A88218() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001DLL && 0x8000000197AA2F80 == a2;
                        if (v16 || (sub_197A88218() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x4465736143657375 && a2 == 0xEF64656C62617369;
                          if (v17 || (sub_197A88218() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD00000000000001BLL && 0x8000000197AA2FA0 == a2;
                            if (v18 || (sub_197A88218() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD00000000000002BLL && 0x8000000197AA2FC0 == a2;
                              if (v19 || (sub_197A88218() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000016 && 0x8000000197AA2FF0 == a2;
                                if (v20 || (sub_197A88218() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD00000000000001FLL && 0x8000000197AA3010 == a2;
                                  if (v21 || (sub_197A88218() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD00000000000001BLL && 0x8000000197AA3030 == a2;
                                    if (v22 || (sub_197A88218() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x4E74736575716572 && a2 == 0xEF646E756F46746FLL;
                                      if (v23 || (sub_197A88218() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000014 && 0x8000000197AA3050 == a2;
                                        if (v24 || (sub_197A88218() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000012 && 0x8000000197AA2010 == a2;
                                          if (v25 || (sub_197A88218() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000013 && 0x8000000197AA3070 == a2;
                                            if (v26 || (sub_197A88218() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x746F4E7465737361 && a2 == 0xED0000646E756F46;
                                              if (v27 || (sub_197A88218() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000020 && 0x8000000197AA3090 == a2;
                                                if (v28 || (sub_197A88218() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000022 && 0x8000000197AA30C0 == a2;
                                                  if (v29 || (sub_197A88218() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD00000000000001ELL && 0x8000000197AA30F0 == a2;
                                                    if (v30 || (sub_197A88218() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x4E6E6F6973736573 && a2 == 0xEF646E756F46746FLL;
                                                      if (v31 || (sub_197A88218() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD00000000000001BLL && 0x8000000197AA3110 == a2;
                                                        if (v32 || (sub_197A88218() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD00000000000001ELL && 0x8000000197AA3130 == a2;
                                                          if (v33 || (sub_197A88218() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000011 && 0x8000000197AA3150 == a2;
                                                            if (v34 || (sub_197A88218() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000017 && 0x8000000197AA3170 == a2;
                                                              if (v35 || (sub_197A88218() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD00000000000001FLL && 0x8000000197AA3190 == a2;
                                                                if (v36 || (sub_197A88218() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD000000000000012 && 0x8000000197AA31B0 == a2;
                                                                  if (v37 || (sub_197A88218() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD000000000000011 && 0x8000000197AA31D0 == a2;
                                                                    if (v38 || (sub_197A88218() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0x6F4E7963696C6F70 && a2 == 0xEE00646E756F4674;
                                                                      if (v39 || (sub_197A88218() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0xD000000000000018 && 0x8000000197AA31F0 == a2;
                                                                        if (v40 || (sub_197A88218() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0xD00000000000001FLL && 0x8000000197AA3210 == a2;
                                                                          if (v41 || (sub_197A88218() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0xD000000000000015 && 0x8000000197AA3230 == a2;
                                                                            if (v42 || (sub_197A88218() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0xD00000000000002ALL && 0x8000000197AA3250 == a2;
                                                                              if (v43 || (sub_197A88218() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0xD000000000000012 && 0x8000000197AA3280 == a2;
                                                                                if (v44 || (sub_197A88218() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0xD000000000000019 && 0x8000000197AA32A0 == a2;
                                                                                  if (v45 || (sub_197A88218() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0xD00000000000001ALL && 0x8000000197AA32C0 == a2;
                                                                                    if (v46 || (sub_197A88218() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0xD000000000000017 && 0x8000000197AA32E0 == a2;
                                                                                      if (v47 || (sub_197A88218() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v48 = a1 == 0xD000000000000017 && 0x8000000197AA3300 == a2;
                                                                                        if (v48 || (sub_197A88218() & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v49 = a1 == 0x696D694C65746172 && a2 == 0xEB00000000646574;
                                                                                          if (v49 || (sub_197A88218() & 1) != 0)
                                                                                          {

                                                                                            return 44;
                                                                                          }

                                                                                          else if (a1 == 0xD000000000000018 && 0x8000000197AA3320 == a2)
                                                                                          {

                                                                                            return 45;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v51 = sub_197A88218();

                                                                                            if (v51)
                                                                                            {
                                                                                              return 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              return 46;
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
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1979AC914(char a1)
{
  result = 0x636E657265666E69;
  switch(a1)
  {
    case 1:
      return 0x656E696665646E75;
    case 2:
      return 0xD000000000000012;
    case 3:
    case 16:
    case 31:
    case 36:
      v3 = 13;
      goto LABEL_31;
    case 4:
      return 0x6C616E7265746E69;
    case 5:
    case 7:
    case 13:
    case 17:
    case 27:
      v3 = 9;
      goto LABEL_31;
    case 6:
      return 0xD000000000000012;
    case 8:
      return 0x726F727245637078;
    case 9:
      return 0x505865746F6D6572;
    case 10:
      return 0x726F727245637069;
    case 11:
      return 0xD00000000000001DLL;
    case 12:
      return 0x4465736143657375;
    case 14:
      return 0xD00000000000002BLL;
    case 15:
      return 0xD000000000000016;
    case 18:
      return 0x4E74736575716572;
    case 19:
      return 0xD000000000000014;
    case 20:
      return 0xD000000000000012;
    case 21:
      return 0xD000000000000013;
    case 22:
      return 0x746F4E7465737361;
    case 23:
      return 0xD000000000000020;
    case 24:
      return 0xD000000000000022;
    case 25:
    case 28:
      return 0xD00000000000001ELL;
    case 26:
      return 0x4E6E6F6973736573;
    case 29:
    case 33:
      return 0xD000000000000011;
    case 30:
    case 42:
    case 43:
      v3 = 5;
LABEL_31:
      result = v3 | 0xD000000000000012;
      break;
    case 32:
      result = 0xD000000000000012;
      break;
    case 34:
      result = 0x6F4E7963696C6F70;
      break;
    case 35:
    case 45:
      result = 0xD000000000000018;
      break;
    case 37:
      result = 0xD000000000000015;
      break;
    case 38:
      result = 0xD00000000000002ALL;
      break;
    case 39:
      result = 0xD000000000000012;
      break;
    case 40:
      result = 0xD000000000000019;
      break;
    case 41:
      result = 0xD00000000000001ALL;
      break;
    case 44:
      result = 0x696D694C65746172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1979ACDBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_197A88218();

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

uint64_t sub_1979ACE80(char a1)
{
  if (a1)
  {
    return 1701080931;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_1979ACEAC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_197A88218();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1979ACF48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E75426C65646F6DLL && a2 == 0xED00004449656C64;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000197AA3340 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_197A88218();

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

uint64_t sub_1979AD020(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E75426C65646F6DLL;
  }
}

uint64_t sub_1979AD068(uint64_t a1)
{
  v2 = sub_1979B1664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD0A4(uint64_t a1)
{
  v2 = sub_1979B1664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD0E0(uint64_t a1)
{
  v2 = sub_1979B1514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD11C(uint64_t a1)
{
  v2 = sub_1979B1514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD158(uint64_t a1)
{
  v2 = sub_1979B131C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD194(uint64_t a1)
{
  v2 = sub_1979B131C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD1D0(uint64_t a1)
{
  v2 = sub_1979B1610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD20C(uint64_t a1)
{
  v2 = sub_1979B1610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD248(uint64_t a1)
{
  v2 = sub_1979B1124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD284(uint64_t a1)
{
  v2 = sub_1979B1124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD2C0(uint64_t a1)
{
  v2 = sub_1979B0FD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD2FC(uint64_t a1)
{
  v2 = sub_1979B0FD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979ABB18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979AD368@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1979AC90C();
  *a1 = result;
  return result;
}

uint64_t sub_1979AD390(uint64_t a1)
{
  v2 = sub_1979B0E30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD3CC(uint64_t a1)
{
  v2 = sub_1979B0E30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD408(uint64_t a1)
{
  v2 = sub_1979B1370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD444(uint64_t a1)
{
  v2 = sub_1979B1370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD480(uint64_t a1)
{
  v2 = sub_1979B1808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD4BC(uint64_t a1)
{
  v2 = sub_1979B1808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD4F8(uint64_t a1)
{
  v2 = sub_1979B185C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD534(uint64_t a1)
{
  v2 = sub_1979B185C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD570(uint64_t a1)
{
  v2 = sub_1979B1274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD5AC(uint64_t a1)
{
  v2 = sub_1979B1274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD5E8(uint64_t a1)
{
  v2 = sub_1979B1D48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD624(uint64_t a1)
{
  v2 = sub_1979B1D48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979ACDBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979AD690(uint64_t a1)
{
  v2 = sub_1979B11CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD6CC(uint64_t a1)
{
  v2 = sub_1979B11CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979ACEAC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1979AD738(uint64_t a1)
{
  v2 = sub_1979B1028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD774(uint64_t a1)
{
  v2 = sub_1979B1028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD7B0(uint64_t a1)
{
  v2 = sub_1979B1904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD7EC(uint64_t a1)
{
  v2 = sub_1979B1904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD828(uint64_t a1)
{
  v2 = sub_1979B18B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD864(uint64_t a1)
{
  v2 = sub_1979B18B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD8A0(uint64_t a1)
{
  v2 = sub_1979B1BF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD8DC(uint64_t a1)
{
  v2 = sub_1979B1BF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD918(uint64_t a1)
{
  v2 = sub_1979B0F2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD954(uint64_t a1)
{
  v2 = sub_1979B0F2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AD990(uint64_t a1)
{
  v2 = sub_1979B0E84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AD9CC(uint64_t a1)
{
  v2 = sub_1979B0E84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADA08(uint64_t a1)
{
  v2 = sub_1979B107C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADA44(uint64_t a1)
{
  v2 = sub_1979B107C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADA80(uint64_t a1)
{
  v2 = sub_1979B0F80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADABC(uint64_t a1)
{
  v2 = sub_1979B0F80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADAF8(uint64_t a1)
{
  v2 = sub_1979B146C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADB34(uint64_t a1)
{
  v2 = sub_1979B146C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979ACF48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979ADBA0(uint64_t a1)
{
  v2 = sub_1979B1418();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADBDC(uint64_t a1)
{
  v2 = sub_1979B1418();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADC18(uint64_t a1)
{
  v2 = sub_1979B1A00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADC54(uint64_t a1)
{
  v2 = sub_1979B1A00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADC90(uint64_t a1)
{
  v2 = sub_1979B1B50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADCCC(uint64_t a1)
{
  v2 = sub_1979B1B50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADD08(uint64_t a1)
{
  v2 = sub_1979B1CA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADD44(uint64_t a1)
{
  v2 = sub_1979B1CA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADD80(uint64_t a1)
{
  v2 = sub_1979B13C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADDBC(uint64_t a1)
{
  v2 = sub_1979B13C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADDF8(uint64_t a1)
{
  v2 = sub_1979B1568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADE34(uint64_t a1)
{
  v2 = sub_1979B1568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADE70(uint64_t a1)
{
  v2 = sub_1979B1BA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADEAC(uint64_t a1)
{
  v2 = sub_1979B1BA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADEE8(uint64_t a1)
{
  v2 = sub_1979B17B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADF24(uint64_t a1)
{
  v2 = sub_1979B17B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADF60(uint64_t a1)
{
  v2 = sub_1979B16B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979ADF9C(uint64_t a1)
{
  v2 = sub_1979B16B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979ADFD8(uint64_t a1)
{
  v2 = sub_1979B12C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE014(uint64_t a1)
{
  v2 = sub_1979B12C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE050(uint64_t a1)
{
  v2 = sub_1979B1220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE08C(uint64_t a1)
{
  v2 = sub_1979B1220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE0C8(uint64_t a1)
{
  v2 = sub_1979B0ED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE104(uint64_t a1)
{
  v2 = sub_1979B0ED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE140(uint64_t a1)
{
  v2 = sub_1979B1A54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE17C(uint64_t a1)
{
  v2 = sub_1979B1A54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE1B8(uint64_t a1)
{
  v2 = sub_1979B1760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE1F4(uint64_t a1)
{
  v2 = sub_1979B1760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE230(uint64_t a1)
{
  v2 = sub_1979B10D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE26C(uint64_t a1)
{
  v2 = sub_1979B10D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE2A8(uint64_t a1)
{
  v2 = sub_1979B170C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE2E4(uint64_t a1)
{
  v2 = sub_1979B170C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE320(uint64_t a1)
{
  v2 = sub_1979B14C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE35C(uint64_t a1)
{
  v2 = sub_1979B14C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE398(uint64_t a1)
{
  v2 = sub_1979B1178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE3D4(uint64_t a1)
{
  v2 = sub_1979B1178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE410(uint64_t a1)
{
  v2 = sub_1979B1CF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE44C(uint64_t a1)
{
  v2 = sub_1979B1CF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE488(uint64_t a1)
{
  v2 = sub_1979B19AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE4C4(uint64_t a1)
{
  v2 = sub_1979B19AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE500(uint64_t a1)
{
  v2 = sub_1979B15BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE53C(uint64_t a1)
{
  v2 = sub_1979B15BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE578(uint64_t a1)
{
  v2 = sub_1979B1AFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE5B4(uint64_t a1)
{
  v2 = sub_1979B1AFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE5F0(uint64_t a1)
{
  v2 = sub_1979B1C4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE62C(uint64_t a1)
{
  v2 = sub_1979B1C4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE668(uint64_t a1)
{
  v2 = sub_1979B1958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE6A4(uint64_t a1)
{
  v2 = sub_1979B1958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979AE6E0(uint64_t a1)
{
  v2 = sub_1979B1AA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979AE71C(uint64_t a1)
{
  v2 = sub_1979B1AA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ModelManagerError.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491F0, &qword_197A8D4E0);
  OUTLINED_FUNCTION_2();
  v331 = v4;
  v332[0] = v3;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_30();
  v330 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491F8, &qword_197A8D4E8);
  OUTLINED_FUNCTION_2();
  v328 = v8;
  v329 = v7;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_30();
  v327 = v10;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49200, &qword_197A8D4F0);
  OUTLINED_FUNCTION_2();
  v323 = v11;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v13);
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49208, &qword_197A8D4F8);
  OUTLINED_FUNCTION_2();
  v324 = v14;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49210, &qword_197A8D500);
  OUTLINED_FUNCTION_2_1(v17, &v345);
  v320 = v18;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49218, &qword_197A8D508);
  OUTLINED_FUNCTION_2_1(v21, &v346);
  v321 = v22;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49220, &qword_197A8D510);
  OUTLINED_FUNCTION_2_1(v25, v342);
  v317 = v26;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49228, &qword_197A8D518);
  OUTLINED_FUNCTION_2_1(v29, &v343);
  v318 = v30;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49230, &qword_197A8D520);
  OUTLINED_FUNCTION_2_1(v33, v338);
  v315[1] = v34;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49238, &qword_197A8D528);
  OUTLINED_FUNCTION_2_1(v37, &v334);
  v312 = v38;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49240, &qword_197A8D530);
  OUTLINED_FUNCTION_2_1(v41, &v337);
  v333 = v42;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49248, &qword_197A8D538);
  OUTLINED_FUNCTION_2_1(v45, v332);
  v310 = v46;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49250, &qword_197A8D540);
  OUTLINED_FUNCTION_2_1(v49, &v329);
  v308 = v50;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49258, &qword_197A8D548);
  OUTLINED_FUNCTION_2_1(v53, &v325);
  v305[0] = v54;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49260, &qword_197A8D550);
  OUTLINED_FUNCTION_2_1(v57, &v326);
  v305[1] = v58;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49268, &qword_197A8D558);
  OUTLINED_FUNCTION_2_1(v61, &v320);
  v302[4] = v62;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49270, &qword_197A8D560);
  OUTLINED_FUNCTION_2_1(v65, &v321);
  v302[5] = v66;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49278, &qword_197A8D568);
  OUTLINED_FUNCTION_2_1(v69, v322);
  v332[1] = v70;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49280, &qword_197A8D570);
  OUTLINED_FUNCTION_2_1(v73, &v318);
  v302[0] = v74;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49288, &qword_197A8D578);
  OUTLINED_FUNCTION_2_1(v77, v316);
  v300[3] = v78;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49290, &qword_197A8D580);
  OUTLINED_FUNCTION_2_1(v81, v315);
  v300[0] = v82;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49298, &qword_197A8D588);
  OUTLINED_FUNCTION_2_1(v85, v313);
  v297[3] = v86;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492A0, &qword_197A8D590);
  OUTLINED_FUNCTION_2_1(v89, v311);
  v297[0] = v90;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492A8, &qword_197A8D598);
  OUTLINED_FUNCTION_2_1(v93, v309);
  v294[3] = v94;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492B0, &qword_197A8D5A0);
  OUTLINED_FUNCTION_2_1(v97, v307);
  v294[0] = v98;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v100);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492B8, &qword_197A8D5A8);
  OUTLINED_FUNCTION_2_1(v101, v304);
  v290[0] = v102;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492C0, &qword_197A8D5B0);
  OUTLINED_FUNCTION_2_1(v105, v305);
  v292[0] = v106;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v108);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492C8, &qword_197A8D5B8);
  OUTLINED_FUNCTION_2_1(v109, v303);
  v288 = v110;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v112);
  sub_197A87298();
  OUTLINED_FUNCTION_2();
  v334 = v114;
  v335 = v113;
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_34(v273 - v117);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492D0, &qword_197A8D5C0);
  OUTLINED_FUNCTION_2_1(v118, v301);
  v282[0] = v119;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v121);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492D8, &qword_197A8D5C8);
  OUTLINED_FUNCTION_2_1(v122, v302);
  v284[0] = v123;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v125);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492E0, &qword_197A8D5D0);
  OUTLINED_FUNCTION_2_1(v126, v300);
  v281 = v127;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v129);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492E8, &qword_197A8D5D8);
  OUTLINED_FUNCTION_2_1(v130, v298);
  v280 = v131;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v133);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492F0, &qword_197A8D5E0);
  OUTLINED_FUNCTION_2_1(v134, v296);
  v276 = v135;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v137);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF492F8, &qword_197A8D5E8);
  OUTLINED_FUNCTION_2_1(v138, v297);
  v277 = v139;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v140);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v141);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49300, &qword_197A8D5F0);
  OUTLINED_FUNCTION_2_1(v142, v294);
  v273[34] = v143;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v144);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v145);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49308, &qword_197A8D5F8);
  OUTLINED_FUNCTION_2_1(v146, v292);
  v273[31] = v147;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v148);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v149);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49310, &qword_197A8D600);
  OUTLINED_FUNCTION_2_1(v150, v290);
  v273[28] = v151;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v152);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v153);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49318, &qword_197A8D608);
  OUTLINED_FUNCTION_2_1(v154, &v288);
  v273[25] = v155;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v156);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v157);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49320, &qword_197A8D610);
  OUTLINED_FUNCTION_2_1(v158, v286);
  v273[22] = v159;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v160);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v161);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49328, &qword_197A8D618);
  OUTLINED_FUNCTION_2_1(v162, v284);
  v273[19] = v163;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v164);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v165);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49330, &qword_197A8D620);
  OUTLINED_FUNCTION_2_1(v166, v282);
  v273[16] = v167;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v168);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v169);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49338, &qword_197A8D628);
  OUTLINED_FUNCTION_2_1(v170, &v281);
  v273[13] = v171;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v172);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v173);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49340, &qword_197A8D630);
  OUTLINED_FUNCTION_2_1(v174, v279);
  v273[10] = v175;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v176);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v177);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49348, &qword_197A8D638);
  OUTLINED_FUNCTION_2_1(v178, v278);
  v273[7] = v179;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v180);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v181);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49350, &qword_197A8D640);
  OUTLINED_FUNCTION_2_1(v182, v274);
  v273[2] = v183;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v184);
  v186 = v273 - v185;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49358, &qword_197A8D648);
  OUTLINED_FUNCTION_2_1(v187, v275);
  v273[4] = v188;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v189);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v190);
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v191);
  OUTLINED_FUNCTION_1_0();
  v194 = v193 - v192;
  v195 = type metadata accessor for ModelManagerError(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v196);
  OUTLINED_FUNCTION_1_0();
  v199 = (v198 - v197);
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49360, &unk_197A8D650);
  OUTLINED_FUNCTION_2();
  v338[1] = v200;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v201);
  v203 = v273 - v202;
  v204 = a1[4];
  v205 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1979B0E30();
  v336 = v203;
  sub_197A883D8();
  OUTLINED_FUNCTION_4_3();
  sub_1979B6FD8(v338[0], v199, v206);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v224 = *v199;
      LOBYTE(v340) = 6;
      sub_1979B1B50();
      OUTLINED_FUNCTION_16_3(&type metadata for ModelManagerError.MissingEntitlementCodingKeys, &v340);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_55_2();
      v225 = &v283;
      goto LABEL_47;
    case 2u:
      v224 = *v199;
      LOBYTE(v340) = 7;
      sub_1979B1AFC();
      OUTLINED_FUNCTION_16_3(&type metadata for ModelManagerError.UnrecognizedUnderlyingErrorCodingKeys, &v340);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_55_2();
      v225 = &v285;
      goto LABEL_47;
    case 3u:
      v224 = *v199;
      LOBYTE(v340) = 8;
      sub_1979B1AA8();
      OUTLINED_FUNCTION_16_3(&type metadata for ModelManagerError.XpcErrorCodingKeys, &v340);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_55_2();
      v225 = &v287;
      goto LABEL_47;
    case 4u:
      v224 = *v199;
      LOBYTE(v340) = 9;
      sub_1979B1A54();
      OUTLINED_FUNCTION_16_3(&type metadata for ModelManagerError.RemoteXPCErrorCodingKeys, &v340);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_55_2();
      v225 = &v289;
      goto LABEL_47;
    case 5u:
      v224 = *v199;
      LOBYTE(v340) = 10;
      sub_1979B1A00();
      OUTLINED_FUNCTION_16_3(&type metadata for ModelManagerError.IpcErrorCodingKeys, &v340);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_55_2();
      v225 = &v291;
      goto LABEL_47;
    case 6u:
      v224 = *v199;
      LOBYTE(v340) = 11;
      sub_1979B19AC();
      OUTLINED_FUNCTION_16_3(&type metadata for ModelManagerError.UnrecognizedInferenceProviderCodingKeys, &v340);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_55_2();
      v225 = &v293;
      goto LABEL_47;
    case 7u:
      v224 = *v199;
      LOBYTE(v340) = 12;
      sub_1979B1958();
      OUTLINED_FUNCTION_16_3(&type metadata for ModelManagerError.UseCaseDisabledCodingKeys, &v340);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_55_2();
      v225 = &v295;
      goto LABEL_47;
    case 8u:
      v242 = *v199;
      LOBYTE(v340) = 14;
      sub_1979B18B0();
      OUTLINED_FUNCTION_54_1();
      v244 = v336;
      v208 = v337;
      OUTLINED_FUNCTION_41_2();
      sub_197A88058();
      OUTLINED_FUNCTION_66_2();
      sub_197A880F8();
      goto LABEL_40;
    case 9u:
      v237 = *v199;
      LOBYTE(v340) = 16;
      sub_1979B1808();
      v238 = v282[1];
      v240 = v336;
      v239 = v337;
      OUTLINED_FUNCTION_41_2();
      sub_197A88058();
      v340 = v237;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
      OUTLINED_FUNCTION_34_1(&qword_1ED87F958, MEMORY[0x1E69E6160]);
      v241 = v284[1];
      OUTLINED_FUNCTION_45_2();
      sub_197A880E8();
      goto LABEL_22;
    case 0xAu:
      v230 = v334;
      v229 = v335;
      v259 = OUTLINED_FUNCTION_58_2();
      v260(v259);
      LOBYTE(v340) = 18;
      sub_1979B1760();
      v233 = v287;
      OUTLINED_FUNCTION_47();
      sub_197A88058();
      OUTLINED_FUNCTION_2_6();
      sub_19796AAB0(v261, v262, MEMORY[0x1E69695B0]);
      v236 = v289;
      OUTLINED_FUNCTION_59_2();
      sub_197A880E8();
      goto LABEL_37;
    case 0xBu:
      v230 = v334;
      v229 = v335;
      v231 = OUTLINED_FUNCTION_58_2();
      v232(v231);
      LOBYTE(v340) = 19;
      sub_1979B170C();
      v233 = v290[1];
      OUTLINED_FUNCTION_47();
      sub_197A88058();
      OUTLINED_FUNCTION_2_6();
      sub_19796AAB0(v234, v235, MEMORY[0x1E69695B0]);
      v236 = v292[1];
      OUTLINED_FUNCTION_59_2();
      sub_197A880E8();
LABEL_37:
      OUTLINED_FUNCTION_32();
      v263(v233, v236);
      (*(v230 + 8))(v195, v229);
      goto LABEL_38;
    case 0xCu:
      v224 = *v199;
      LOBYTE(v340) = 21;
      sub_1979B1664();
      OUTLINED_FUNCTION_16_3(&type metadata for ModelManagerError.AssetBundleNotFoundCodingKeys, &v340);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_55_2();
      v225 = &v306;
      goto LABEL_47;
    case 0xDu:
      v224 = *v199;
      LOBYTE(v340) = 22;
      sub_1979B1610();
      OUTLINED_FUNCTION_16_3(&type metadata for ModelManagerError.AssetNotFoundCodingKeys, &v340);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_55_2();
      v225 = &v308;
      goto LABEL_47;
    case 0xEu:
      v224 = *v199;
      LOBYTE(v340) = 23;
      sub_1979B15BC();
      OUTLINED_FUNCTION_16_3(&type metadata for ModelManagerError.UnrecognizedModelCatalogResourceCodingKeys, &v340);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_55_2();
      v225 = &v310;
      goto LABEL_47;
    case 0xFu:
      v245 = *v199;
      LOBYTE(v340) = 24;
      sub_1979B1568();
      v238 = v297[2];
      v240 = v336;
      v239 = v337;
      OUTLINED_FUNCTION_41_2();
      sub_197A88058();
      v340 = v245;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
      OUTLINED_FUNCTION_34_1(&qword_1ED87F958, MEMORY[0x1E69E6160]);
      v241 = v299;
      OUTLINED_FUNCTION_45_2();
      sub_197A880E8();
LABEL_22:
      OUTLINED_FUNCTION_32();
      v246(v238, v241);
      OUTLINED_FUNCTION_51_1();
      v248 = v240;
      v249 = v239;
      goto LABEL_23;
    case 0x10u:
      v224 = *v199;
      LOBYTE(v340) = 25;
      sub_1979B1514();
      OUTLINED_FUNCTION_16_3(&type metadata for ModelManagerError.AssetDoesNotSupportDynamicModeCodingKeys, &v340);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_55_2();
      v225 = &v314;
      goto LABEL_47;
    case 0x11u:
      v252 = v334;
      v251 = v335;
      v253 = OUTLINED_FUNCTION_58_2();
      v254(v253);
      LOBYTE(v340) = 26;
      sub_1979B14C0();
      OUTLINED_FUNCTION_54_1();
      OUTLINED_FUNCTION_47();
      sub_197A88058();
      OUTLINED_FUNCTION_2_6();
      sub_19796AAB0(v255, v256, MEMORY[0x1E69695B0]);
      sub_197A880E8();
      OUTLINED_FUNCTION_32();
      v257 = OUTLINED_FUNCTION_61_3();
      v258(v257);
      (*(v252 + 8))(v195, v251);
LABEL_38:
      OUTLINED_FUNCTION_51_1();
      v215 = OUTLINED_FUNCTION_46_1();
      return v214(v215, v223);
    case 0x12u:
      v224 = *v199;
      LOBYTE(v340) = 27;
      sub_1979B146C();
      OUTLINED_FUNCTION_16_3(&type metadata for ModelManagerError.InvalidRequestModelBundleIDCodingKeys, &v340);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_55_2();
      v225 = &v317;
      goto LABEL_47;
    case 0x13u:
      v266 = *(v199 + 2);
      LOBYTE(v340) = 28;
      sub_1979B1418();
      v268 = v336;
      v267 = v337;
      sub_197A88058();
      LOBYTE(v340) = 0;
      OUTLINED_FUNCTION_59_2();
      sub_197A880B8();
      if (v1)
      {

        v269 = OUTLINED_FUNCTION_65_1();
        v270(v269);
        OUTLINED_FUNCTION_51_1();
        v215 = v268;
        v223 = v267;
        return v214(v215, v223);
      }

      else
      {

        v340 = v266;
        v339 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
        OUTLINED_FUNCTION_34_1(&qword_1ED87F958, MEMORY[0x1E69E6160]);
        sub_197A880E8();
        v271 = OUTLINED_FUNCTION_65_1();
        v272(v271);
        OUTLINED_FUNCTION_51_1();
        v248 = v268;
        v249 = v267;
LABEL_23:
        v247(v248, v249);
      }

    case 0x14u:
      v224 = *v199;
      LOBYTE(v340) = 29;
      sub_1979B13C4();
      OUTLINED_FUNCTION_16_3(&type metadata for ModelManagerError.ModelCatalogErrorCodingKeys, &v340);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_55_2();
      v225 = &v319;
      goto LABEL_47;
    case 0x15u:
      v224 = *v199;
      LOBYTE(v340) = 31;
      sub_1979B131C();
      OUTLINED_FUNCTION_16_3(&type metadata for ModelManagerError.AssetNotAvailableInModelCatalogCodingKeys, &v340);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_55_2();
      v225 = &v324;
      goto LABEL_47;
    case 0x16u:
      v224 = *v199;
      LOBYTE(v340) = 34;
      sub_1979B1220();
      OUTLINED_FUNCTION_16_3(&type metadata for ModelManagerError.PolicyNotFoundCodingKeys, &v340);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_55_2();
      v225 = &v331;
      goto LABEL_47;
    case 0x17u:
      LOBYTE(v340) = 35;
      sub_1979B11CC();
      OUTLINED_FUNCTION_16_3(&type metadata for ModelManagerError.InferenceProviderCrashedCodingKeys, &v340);
      LOBYTE(v340) = 0;
      v224 = v315[0];
      OUTLINED_FUNCTION_45_2();
      sub_197A88118();
      if (!v1)
      {
        OUTLINED_FUNCTION_64_2();
        sub_197A88128();
      }

      v265 = v333;
      goto LABEL_48;
    case 0x18u:
      v242 = v199[2];
      LOBYTE(v340) = 38;
      sub_1979B10D0();
      v243 = *v199;
      OUTLINED_FUNCTION_54_1();
      v244 = v336;
      v208 = v337;
      OUTLINED_FUNCTION_41_2();
      sub_197A88058();
      v340 = v243;
      v341 = v242;
      sub_1979552D0();
      OUTLINED_FUNCTION_66_2();
      sub_197A880E8();
LABEL_40:
      OUTLINED_FUNCTION_32();
      v264(v204, v242);
      OUTLINED_FUNCTION_51_1();
      v215 = v244;
      goto LABEL_41;
    case 0x19u:
      v224 = *v199;
      LOBYTE(v340) = 40;
      sub_1979B1028();
      OUTLINED_FUNCTION_16_3(&type metadata for ModelManagerError.InferenceProviderNotFoundCodingKeys, &v340);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_55_2();
      v225 = &v344;
LABEL_47:
      v265 = *(v225 - 32);
      goto LABEL_48;
    case 0x1Au:
      LOBYTE(v340) = 42;
      sub_1979B0F80();
      OUTLINED_FUNCTION_16_3(&type metadata for ModelManagerError.InvalidRemoteDeviceTypeCodingKeys, &v340);
      OUTLINED_FUNCTION_46_1();
      v224 = v326;
      OUTLINED_FUNCTION_45_2();
      sub_197A880B8();
      OUTLINED_FUNCTION_55_2();
      v265 = v324;
LABEL_48:
      (*(v265 + 8))(v203, v224);
      OUTLINED_FUNCTION_51_1();
      v215 = OUTLINED_FUNCTION_61_3();
      return v214(v215, v223);
    case 0x1Bu:
      OUTLINED_FUNCTION_64_2();
      sub_1979B1CF4();
      v220 = v336;
      v221 = v337;
      sub_197A88058();
      OUTLINED_FUNCTION_32();
      v222(v186, v273[3]);
      OUTLINED_FUNCTION_51_1();
      v215 = v220;
      v223 = v221;
      return v214(v215, v223);
    case 0x1Cu:
      LOBYTE(v340) = 2;
      sub_1979B1CA0();
      OUTLINED_FUNCTION_24_3(&type metadata for ModelManagerError.MissingFeatureFlagCodingKeys, &v340);
      v216 = OUTLINED_FUNCTION_29_0();
      v219 = v278;
      goto LABEL_59;
    case 0x1Du:
      LOBYTE(v340) = 3;
      sub_1979B1C4C();
      OUTLINED_FUNCTION_24_3(&type metadata for ModelManagerError.UnsupportedNumberOfAssetBundlesCodingKeys, &v340);
      v216 = OUTLINED_FUNCTION_29_0();
      v219 = v279;
      goto LABEL_59;
    case 0x1Eu:
      LOBYTE(v340) = 4;
      sub_1979B1BF8();
      OUTLINED_FUNCTION_24_3(&type metadata for ModelManagerError.InternalErrorCodingKeys, &v340);
      v216 = OUTLINED_FUNCTION_29_0();
      v219 = &v281;
      goto LABEL_59;
    case 0x1Fu:
      LOBYTE(v340) = 5;
      sub_1979B1BA4();
      OUTLINED_FUNCTION_24_3(&type metadata for ModelManagerError.NotSupportedOnExternalBuildCodingKeys, &v340);
      v216 = OUTLINED_FUNCTION_29_0();
      v219 = v282;
      goto LABEL_59;
    case 0x20u:
      LOBYTE(v340) = 13;
      sub_1979B1904();
      OUTLINED_FUNCTION_24_3(&type metadata for ModelManagerError.InsufficientSystemResourcesCodingKeys, &v340);
      v216 = OUTLINED_FUNCTION_29_0();
      v219 = v296;
      goto LABEL_59;
    case 0x21u:
      LOBYTE(v340) = 15;
      sub_1979B185C();
      OUTLINED_FUNCTION_24_3(&type metadata for ModelManagerError.DeniedDueToSystemStateCodingKeys, &v340);
      v216 = OUTLINED_FUNCTION_29_0();
      v219 = v300;
      goto LABEL_59;
    case 0x22u:
      LOBYTE(v340) = 17;
      sub_1979B17B4();
      OUTLINED_FUNCTION_24_3(&type metadata for ModelManagerError.OnBehalfOfProcessNotRunningCodingKeys, &v340);
      v216 = OUTLINED_FUNCTION_29_0();
      v219 = v301;
      goto LABEL_59;
    case 0x23u:
      LOBYTE(v340) = 20;
      sub_1979B16B8();
      OUTLINED_FUNCTION_24_3(&type metadata for ModelManagerError.OperationCancelledCodingKeys, &v340);
      v216 = OUTLINED_FUNCTION_29_0();
      v219 = v304;
      goto LABEL_59;
    case 0x24u:
      LOBYTE(v340) = 30;
      sub_1979B1370();
      OUTLINED_FUNCTION_24_3(&type metadata for ModelManagerError.DeniedAssertionBySystemCodingKeys, &v340);
      v216 = OUTLINED_FUNCTION_29_0();
      v219 = &v320;
      goto LABEL_59;
    case 0x25u:
      LOBYTE(v340) = 32;
      sub_1979B12C8();
      OUTLINED_FUNCTION_24_3(&type metadata for ModelManagerError.PolicyNotAvailableCodingKeys, &v340);
      v216 = OUTLINED_FUNCTION_29_0();
      v219 = &v325;
      goto LABEL_59;
    case 0x26u:
      LOBYTE(v340) = 33;
      sub_1979B1274();
      OUTLINED_FUNCTION_24_3(&type metadata for ModelManagerError.DeviceNotEligibleCodingKeys, &v340);
      v216 = OUTLINED_FUNCTION_29_0();
      v219 = &v329;
      goto LABEL_59;
    case 0x27u:
      LOBYTE(v340) = 36;
      sub_1979B1178();
      OUTLINED_FUNCTION_24_3(&type metadata for ModelManagerError.UnableToForceAssetVersionSwitchCodingKeys, &v340);
      v216 = OUTLINED_FUNCTION_29_0();
      v219 = &v334;
      goto LABEL_59;
    case 0x28u:
      LOBYTE(v340) = 37;
      sub_1979B1124();
      OUTLINED_FUNCTION_24_3(&type metadata for ModelManagerError.CancelledByPreemptionCodingKeys, &v340);
      v216 = OUTLINED_FUNCTION_29_0();
      v219 = v338;
      goto LABEL_59;
    case 0x29u:
      LOBYTE(v340) = 39;
      sub_1979B107C();
      OUTLINED_FUNCTION_24_3(&type metadata for ModelManagerError.InvalidInputStreamCodingKeys, &v340);
      v216 = OUTLINED_FUNCTION_29_0();
      v219 = v342;
      goto LABEL_59;
    case 0x2Au:
      LOBYTE(v340) = 41;
      sub_1979B0FD4();
      OUTLINED_FUNCTION_24_3(&type metadata for ModelManagerError.CannotPerformHostInferenceCodingKeys, &v340);
      v216 = OUTLINED_FUNCTION_29_0();
      v219 = &v345;
LABEL_59:
      v218 = *(v219 - 32);
      goto LABEL_60;
    case 0x2Bu:
      LOBYTE(v340) = 43;
      sub_1979B0F2C();
      OUTLINED_FUNCTION_24_3(&type metadata for ModelManagerError.InvalidClientIdentifierCodingKeys, &v340);
      v216 = OUTLINED_FUNCTION_29_0();
      v218 = v325;
LABEL_60:
      v217(v216, v218);
      goto LABEL_61;
    case 0x2Cu:
      LOBYTE(v340) = 44;
      sub_1979B0ED8();
      v226 = v327;
      OUTLINED_FUNCTION_30_2(&type metadata for ModelManagerError.RateLimitedCodingKeys, &v340);
      v228 = v328;
      v227 = v329;
      goto LABEL_45;
    case 0x2Du:
      LOBYTE(v340) = 45;
      sub_1979B0E84();
      v226 = v330;
      OUTLINED_FUNCTION_30_2(&type metadata for ModelManagerError.InvalidInferenceProviderCodingKeys, &v340);
      v228 = v331;
      v227 = v332[0];
LABEL_45:
      (*(v228 + 8))(v226, v227);
LABEL_61:
      OUTLINED_FUNCTION_51_1();
      v215 = v205;
      v223 = v186;
      return v214(v215, v223);
    default:
      sub_1979B6F20(v199, v194, type metadata accessor for InferenceError);
      LOBYTE(v340) = 0;
      sub_1979B1D48();
      v207 = v273[1];
      v209 = v336;
      v208 = v337;
      OUTLINED_FUNCTION_41_2();
      sub_197A88058();
      OUTLINED_FUNCTION_19_3();
      sub_19796AAB0(v210, v211, protocol conformance descriptor for InferenceError);
      v212 = v273[5];
      sub_197A880E8();
      OUTLINED_FUNCTION_32();
      v213(v207, v212);
      sub_1979B6F80(v194, type metadata accessor for InferenceError);
      OUTLINED_FUNCTION_51_1();
      v215 = v209;
LABEL_41:
      v223 = v208;
      return v214(v215, v223);
  }
}

unint64_t sub_1979B0E30()
{
  result = qword_1ED880180;
  if (!qword_1ED880180)
  {
    result = swift_getWitnessTable(aE_26, &type metadata for ModelManagerError.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880180);
  }

  return result;
}

unint64_t sub_1979B0E84()
{
  result = qword_1EAF49368;
  if (!qword_1EAF49368)
  {
    result = swift_getWitnessTable(byte_197A90A24, &type metadata for ModelManagerError.InvalidInferenceProviderCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49368);
  }

  return result;
}

unint64_t sub_1979B0ED8()
{
  result = qword_1EAF49370;
  if (!qword_1EAF49370)
  {
    result = swift_getWitnessTable(byte_197A909D4, &type metadata for ModelManagerError.RateLimitedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49370);
  }

  return result;
}

unint64_t sub_1979B0F2C()
{
  result = qword_1EAF49378;
  if (!qword_1EAF49378)
  {
    result = swift_getWitnessTable(a5_11, &type metadata for ModelManagerError.InvalidClientIdentifierCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49378);
  }

  return result;
}

unint64_t sub_1979B0F80()
{
  result = qword_1ED87D188;
  if (!qword_1ED87D188)
  {
    result = swift_getWitnessTable(byte_197A90934, &type metadata for ModelManagerError.InvalidRemoteDeviceTypeCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D188);
  }

  return result;
}

unint64_t sub_1979B0FD4()
{
  result = qword_1EAF49380;
  if (!qword_1EAF49380)
  {
    result = swift_getWitnessTable(aWY, &type metadata for ModelManagerError.CannotPerformHostInferenceCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49380);
  }

  return result;
}

unint64_t sub_1979B1028()
{
  result = qword_1EAF49388;
  if (!qword_1EAF49388)
  {
    result = swift_getWitnessTable(asc_197A90894, &type metadata for ModelManagerError.InferenceProviderNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49388);
  }

  return result;
}

unint64_t sub_1979B107C()
{
  result = qword_1EAF49390;
  if (!qword_1EAF49390)
  {
    result = swift_getWitnessTable(aU_29, &type metadata for ModelManagerError.InvalidInputStreamCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49390);
  }

  return result;
}

unint64_t sub_1979B10D0()
{
  result = qword_1EAF49398;
  if (!qword_1EAF49398)
  {
    result = swift_getWitnessTable(aRW, &type metadata for ModelManagerError.SessionAndInferenceProviderVersionMismatchCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49398);
  }

  return result;
}

unint64_t sub_1979B1124()
{
  result = qword_1EAF493A0;
  if (!qword_1EAF493A0)
  {
    result = swift_getWitnessTable(byte_197A907A4, &type metadata for ModelManagerError.CancelledByPreemptionCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF493A0);
  }

  return result;
}

unint64_t sub_1979B1178()
{
  result = qword_1EAF493A8;
  if (!qword_1EAF493A8)
  {
    result = swift_getWitnessTable(aE_31, &type metadata for ModelManagerError.UnableToForceAssetVersionSwitchCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF493A8);
  }

  return result;
}

unint64_t sub_1979B11CC()
{
  result = qword_1ED87DCF0;
  if (!qword_1ED87DCF0)
  {
    result = swift_getWitnessTable(byte_197A90704, &type metadata for ModelManagerError.InferenceProviderCrashedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87DCF0);
  }

  return result;
}

unint64_t sub_1979B1220()
{
  result = qword_1EAF493B0;
  if (!qword_1EAF493B0)
  {
    result = swift_getWitnessTable(byte_197A906B4, &type metadata for ModelManagerError.PolicyNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF493B0);
  }

  return result;
}

unint64_t sub_1979B1274()
{
  result = qword_1EAF48728;
  if (!qword_1EAF48728)
  {
    result = swift_getWitnessTable(aU_28, &type metadata for ModelManagerError.DeviceNotEligibleCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48728);
  }

  return result;
}

unint64_t sub_1979B12C8()
{
  result = qword_1EAF493B8;
  if (!qword_1EAF493B8)
  {
    result = swift_getWitnessTable(byte_197A90614, &type metadata for ModelManagerError.PolicyNotAvailableCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF493B8);
  }

  return result;
}

unint64_t sub_1979B131C()
{
  result = qword_1EAF493C0;
  if (!qword_1EAF493C0)
  {
    result = swift_getWitnessTable(byte_197A905C4, &type metadata for ModelManagerError.AssetNotAvailableInModelCatalogCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF493C0);
  }

  return result;
}

unint64_t sub_1979B1370()
{
  result = qword_1ED87D190;
  if (!qword_1ED87D190)
  {
    result = swift_getWitnessTable(aE_27, &type metadata for ModelManagerError.DeniedAssertionBySystemCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D190);
  }

  return result;
}

unint64_t sub_1979B13C4()
{
  result = qword_1ED87D1A0;
  if (!qword_1ED87D1A0)
  {
    result = swift_getWitnessTable(byte_197A90524, &type metadata for ModelManagerError.ModelCatalogErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D1A0);
  }

  return result;
}

unint64_t sub_1979B1418()
{
  result = qword_1EAF493C8;
  if (!qword_1EAF493C8)
  {
    result = swift_getWitnessTable(byte_197A904D4, &type metadata for ModelManagerError.InvalidRequestRequiredAssetIDsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF493C8);
  }

  return result;
}

unint64_t sub_1979B146C()
{
  result = qword_1EAF493D0;
  if (!qword_1EAF493D0)
  {
    result = swift_getWitnessTable(a5_12, &type metadata for ModelManagerError.InvalidRequestModelBundleIDCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF493D0);
  }

  return result;
}

unint64_t sub_1979B14C0()
{
  result = qword_1EAF493D8;
  if (!qword_1EAF493D8)
  {
    result = swift_getWitnessTable(byte_197A90434, &type metadata for ModelManagerError.SessionNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF493D8);
  }

  return result;
}

unint64_t sub_1979B1514()
{
  result = qword_1EAF493E0;
  if (!qword_1EAF493E0)
  {
    result = swift_getWitnessTable(aW_8, &type metadata for ModelManagerError.AssetDoesNotSupportDynamicModeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF493E0);
  }

  return result;
}

unint64_t sub_1979B1568()
{
  result = qword_1EAF493E8;
  if (!qword_1EAF493E8)
  {
    result = swift_getWitnessTable(asc_197A90394, &type metadata for ModelManagerError.NoCommonInferenceProviderForAssetsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF493E8);
  }

  return result;
}

unint64_t sub_1979B15BC()
{
  result = qword_1EAF493F0;
  if (!qword_1EAF493F0)
  {
    result = swift_getWitnessTable(aU_32, &type metadata for ModelManagerError.UnrecognizedModelCatalogResourceCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF493F0);
  }

  return result;
}

unint64_t sub_1979B1610()
{
  result = qword_1EAF493F8;
  if (!qword_1EAF493F8)
  {
    result = swift_getWitnessTable(aSWl, &type metadata for ModelManagerError.AssetNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF493F8);
  }

  return result;
}

unint64_t sub_1979B1664()
{
  result = qword_1EAF49400;
  if (!qword_1EAF49400)
  {
    result = swift_getWitnessTable(byte_197A902A4, &type metadata for ModelManagerError.AssetBundleNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49400);
  }

  return result;
}

unint64_t sub_1979B16B8()
{
  result = qword_1ED87F218;
  if (!qword_1ED87F218)
  {
    result = swift_getWitnessTable(aE_30, &type metadata for ModelManagerError.OperationCancelledCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F218);
  }

  return result;
}

unint64_t sub_1979B170C()
{
  result = qword_1ED87E480;
  if (!qword_1ED87E480)
  {
    result = swift_getWitnessTable(byte_197A90204, &type metadata for ModelManagerError.SessionInCancelStateCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87E480);
  }

  return result;
}

unint64_t sub_1979B1760()
{
  result = qword_1ED87D618[0];
  if (!qword_1ED87D618[0])
  {
    result = swift_getWitnessTable(byte_197A901B4, &type metadata for ModelManagerError.RequestNotFoundCodingKeys, v0, v1);
    atomic_store(result, qword_1ED87D618);
  }

  return result;
}

unint64_t sub_1979B17B4()
{
  result = qword_1EAF49408;
  if (!qword_1EAF49408)
  {
    result = swift_getWitnessTable(aU_30, &type metadata for ModelManagerError.OnBehalfOfProcessNotRunningCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49408);
  }

  return result;
}

unint64_t sub_1979B1808()
{
  result = qword_1ED87FA40;
  if (!qword_1ED87FA40)
  {
    result = swift_getWitnessTable(byte_197A90114, &type metadata for ModelManagerError.DeniedDueToSpecifiedSystemStateCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FA40);
  }

  return result;
}

unint64_t sub_1979B185C()
{
  result = qword_1EAF49410;
  if (!qword_1EAF49410)
  {
    result = swift_getWitnessTable(byte_197A900C4, &type metadata for ModelManagerError.DeniedDueToSystemStateCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49410);
  }

  return result;
}

unint64_t sub_1979B18B0()
{
  result = qword_1ED87D610;
  if (!qword_1ED87D610)
  {
    result = swift_getWitnessTable(aE_28, &type metadata for ModelManagerError.InsufficientSystemResourcesWithJetsamReasonCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D610);
  }

  return result;
}

unint64_t sub_1979B1904()
{
  result = qword_1EAF49418;
  if (!qword_1EAF49418)
  {
    result = swift_getWitnessTable(byte_197A90024, &type metadata for ModelManagerError.InsufficientSystemResourcesCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49418);
  }

  return result;
}

unint64_t sub_1979B1958()
{
  result = qword_1EAF49420;
  if (!qword_1EAF49420)
  {
    result = swift_getWitnessTable(byte_197A8FFD4, &type metadata for ModelManagerError.UseCaseDisabledCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49420);
  }

  return result;
}

unint64_t sub_1979B19AC()
{
  result = qword_1EAF49428;
  if (!qword_1EAF49428)
  {
    result = swift_getWitnessTable(a5_13, &type metadata for ModelManagerError.UnrecognizedInferenceProviderCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49428);
  }

  return result;
}

unint64_t sub_1979B1A00()
{
  result = qword_1EAF49430;
  if (!qword_1EAF49430)
  {
    result = swift_getWitnessTable(byte_197A8FF34, &type metadata for ModelManagerError.IpcErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49430);
  }

  return result;
}

unint64_t sub_1979B1A54()
{
  result = qword_1EAF49438;
  if (!qword_1EAF49438)
  {
    result = swift_getWitnessTable(aBW, &type metadata for ModelManagerError.RemoteXPCErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49438);
  }

  return result;
}

unint64_t sub_1979B1AA8()
{
  result = qword_1EAF49440;
  if (!qword_1EAF49440)
  {
    result = swift_getWitnessTable(asc_197A8FE94, &type metadata for ModelManagerError.XpcErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49440);
  }

  return result;
}

unint64_t sub_1979B1AFC()
{
  result = qword_1EAF49448;
  if (!qword_1EAF49448)
  {
    result = swift_getWitnessTable(aU_33, &type metadata for ModelManagerError.UnrecognizedUnderlyingErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49448);
  }

  return result;
}

unint64_t sub_1979B1B50()
{
  result = qword_1ED87D198;
  if (!qword_1ED87D198)
  {
    result = swift_getWitnessTable(aTW, &type metadata for ModelManagerError.MissingEntitlementCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D198);
  }

  return result;
}

unint64_t sub_1979B1BA4()
{
  result = qword_1EAF49450;
  if (!qword_1EAF49450)
  {
    result = swift_getWitnessTable(byte_197A8FDA4, &type metadata for ModelManagerError.NotSupportedOnExternalBuildCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49450);
  }

  return result;
}

unint64_t sub_1979B1BF8()
{
  result = qword_1ED87D1A8;
  if (!qword_1ED87D1A8)
  {
    result = swift_getWitnessTable(aE_29, &type metadata for ModelManagerError.InternalErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D1A8);
  }

  return result;
}

unint64_t sub_1979B1C4C()
{
  result = qword_1EAF49458;
  if (!qword_1EAF49458)
  {
    result = swift_getWitnessTable(byte_197A8FD04, &type metadata for ModelManagerError.UnsupportedNumberOfAssetBundlesCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49458);
  }

  return result;
}

unint64_t sub_1979B1CA0()
{
  result = qword_1EAF49460;
  if (!qword_1EAF49460)
  {
    result = swift_getWitnessTable(byte_197A8FCB4, &type metadata for ModelManagerError.MissingFeatureFlagCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49460);
  }

  return result;
}

unint64_t sub_1979B1CF4()
{
  result = qword_1EAF49468;
  if (!qword_1EAF49468)
  {
    result = swift_getWitnessTable(aU_31, &type metadata for ModelManagerError.UndefinedErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49468);
  }

  return result;
}

unint64_t sub_1979B1D48()
{
  result = qword_1ED87F220;
  if (!qword_1ED87F220)
  {
    result = swift_getWitnessTable(byte_197A8FC14, &type metadata for ModelManagerError.InferenceErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F220);
  }

  return result;
}

uint64_t ModelManagerError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v582 = a2;
  v587 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49470, &qword_197A8D660);
  OUTLINED_FUNCTION_2();
  v556 = v3;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_30();
  v581 = v5;
  v586 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49478, &qword_197A8D668);
  OUTLINED_FUNCTION_2();
  v583 = v6;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_30();
  v580 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49480, &qword_197A8D670);
  OUTLINED_FUNCTION_2_1(v9, v571);
  v553 = v10;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_30();
  v579 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49488, &qword_197A8D678);
  OUTLINED_FUNCTION_2_1(v13, v572);
  v554[0] = v14;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_30();
  v578 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49490, &qword_197A8D680);
  OUTLINED_FUNCTION_2_1(v17, v569);
  v550 = v18;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_30();
  v577 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49498, &qword_197A8D688);
  OUTLINED_FUNCTION_2_1(v21, v570);
  v551[0] = v22;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_30();
  v576 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF494A0, &qword_197A8D690);
  OUTLINED_FUNCTION_2_1(v25, v567);
  v547[1] = v26;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_30();
  v574 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF494A8, &qword_197A8D698);
  OUTLINED_FUNCTION_2_1(v29, v568);
  v548[1] = v30;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_30();
  v575 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF494B0, &qword_197A8D6A0);
  OUTLINED_FUNCTION_2_1(v33, v565);
  v544[1] = v34;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF494B8, &qword_197A8D6A8);
  OUTLINED_FUNCTION_2_1(v37, v564);
  v543 = v38;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF494C0, &qword_197A8D6B0);
  OUTLINED_FUNCTION_2_1(v41, v566);
  v546 = v42;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_30();
  v573 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF494C8, &qword_197A8D6B8);
  OUTLINED_FUNCTION_2_1(v45, v563);
  v541[1] = v46;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF494D0, &qword_197A8D6C0);
  OUTLINED_FUNCTION_2_1(v49, v562);
  v540 = v50;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF494D8, &qword_197A8D6C8);
  OUTLINED_FUNCTION_2_1(v53, v560);
  v537 = v54;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF494E0, &qword_197A8D6D0);
  OUTLINED_FUNCTION_2_1(v57, v561);
  v538[0] = v58;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF494E8, &qword_197A8D6D8);
  OUTLINED_FUNCTION_2_1(v61, v557);
  v532 = v62;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF494F0, &qword_197A8D6E0);
  OUTLINED_FUNCTION_2_1(v65, v558);
  v533 = v66;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF494F8, &qword_197A8D6E8);
  OUTLINED_FUNCTION_2_1(v69, v559);
  v536 = v70;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49500, &qword_197A8D6F0);
  OUTLINED_FUNCTION_2_1(v73, v555);
  v530 = v74;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49508, &qword_197A8D6F8);
  OUTLINED_FUNCTION_2_1(v77, v554);
  v528 = v78;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49510, &qword_197A8D700);
  OUTLINED_FUNCTION_2_1(v81, v552);
  v526 = v82;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49518, &qword_197A8D708);
  OUTLINED_FUNCTION_2_1(v85, v551);
  v524 = v86;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49520, &qword_197A8D710);
  OUTLINED_FUNCTION_2_1(v89, v549);
  v522 = v90;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49528, &qword_197A8D718);
  OUTLINED_FUNCTION_2_1(v93, v548);
  v520 = v94;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49530, &qword_197A8D720);
  OUTLINED_FUNCTION_2_1(v97, v547);
  v518 = v98;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v100);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49538, &qword_197A8D728);
  OUTLINED_FUNCTION_2_1(v101, v544);
  v515 = v102;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49540, &qword_197A8D730);
  OUTLINED_FUNCTION_2_1(v105, &v545);
  v516[1] = v106;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v108);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49548, &qword_197A8D738);
  OUTLINED_FUNCTION_2_1(v109, v542);
  v513 = v110;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v112);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49550, &qword_197A8D740);
  OUTLINED_FUNCTION_2_1(v113, v539);
  v510[4] = v114;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v116);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49558, &qword_197A8D748);
  OUTLINED_FUNCTION_2_1(v117, v541);
  v511[1] = v118;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v120);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49560, &qword_197A8D750);
  OUTLINED_FUNCTION_2_1(v121, v538);
  v510[1] = v122;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v124);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49568, &qword_197A8D758);
  OUTLINED_FUNCTION_2_1(v125, &v537);
  v510[0] = v126;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v128);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49570, &qword_197A8D760);
  OUTLINED_FUNCTION_2_1(v129, &v534);
  v507 = v130;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v132);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49578, &qword_197A8D768);
  OUTLINED_FUNCTION_2_1(v133, v535);
  v508 = v134;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v136);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49580, &qword_197A8D770);
  OUTLINED_FUNCTION_2_1(v137, v531);
  v505 = v138;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v140);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49588, &qword_197A8D778);
  OUTLINED_FUNCTION_2_1(v141, v529);
  v504 = v142;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v143);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v144);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49590, &qword_197A8D780);
  OUTLINED_FUNCTION_2_1(v145, v527);
  v502 = v146;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v147);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v148);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49598, &qword_197A8D788);
  OUTLINED_FUNCTION_2_1(v149, v525);
  v500[2] = v150;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v152);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF495A0, &qword_197A8D790);
  OUTLINED_FUNCTION_2_1(v153, v523);
  v500[0] = v154;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v155);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v156);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF495A8, &qword_197A8D798);
  OUTLINED_FUNCTION_2_1(v157, v521);
  v498 = v158;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v159);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v160);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF495B0, &qword_197A8D7A0);
  OUTLINED_FUNCTION_2_1(v161, v519);
  v497[2] = v162;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v163);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v164);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF495B8, &qword_197A8D7A8);
  OUTLINED_FUNCTION_2_1(v165, v517);
  v497[0] = v166;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v167);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v168);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF495C0, &qword_197A8D7B0);
  OUTLINED_FUNCTION_2_1(v169, v516);
  v495[1] = v170;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v171);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v172);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF495C8, &qword_197A8D7B8);
  OUTLINED_FUNCTION_2_1(v173, v514);
  v494 = v174;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v175);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v176);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF495D0, &qword_197A8D7C0);
  OUTLINED_FUNCTION_2_1(v177, v511);
  v490 = v178;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v179);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v180);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF495D8, &qword_197A8D7C8);
  OUTLINED_FUNCTION_2_1(v181, v512);
  v492 = v182;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v183);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v184);
  v588 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF495E0, &unk_197A8D7D0);
  OUTLINED_FUNCTION_2();
  v585 = v185;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v186);
  OUTLINED_FUNCTION_30();
  v591 = v187;
  v584 = type metadata accessor for ModelManagerError(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v188);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v189);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v190);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v191);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v192);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v193);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v194);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v195);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v196);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v197);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v198);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v199);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v200);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v201);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v202);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v203);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v204);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v205);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v206);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v207);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v208);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v209);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  v211 = MEMORY[0x1EEE9AC00](v210);
  v213 = &v478 - v212;
  v214 = MEMORY[0x1EEE9AC00](v211);
  v216 = &v478 - v215;
  v217 = MEMORY[0x1EEE9AC00](v214);
  v219 = (&v478 - v218);
  v220 = MEMORY[0x1EEE9AC00](v217);
  v222 = &v478 - v221;
  v223 = MEMORY[0x1EEE9AC00](v220);
  v225 = &v478 - v224;
  MEMORY[0x1EEE9AC00](v223);
  v227 = &v478 - v226;
  v228 = a1[3];
  v589 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v228);
  sub_1979B0E30();
  v229 = v590;
  sub_197A883A8();
  if (v229)
  {
    goto LABEL_9;
  }

  v481 = v222;
  v482 = v219;
  v485 = v225;
  v483 = v216;
  v484 = v213;
  v231 = v586;
  v230 = v587;
  v590 = v227;
  v232 = v591;
  v233 = sub_197A88028();
  result = sub_197953BF0(v233, 0);
  if (v236 == v237 >> 1)
  {
LABEL_8:
    v248 = v584;
    v249 = sub_197A87E88();
    swift_allocError();
    v251 = v250;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48DD0, &qword_197A89820);
    *v251 = v248;
    v252 = v588;
    sub_197A87F38();
    sub_197A87E78();
    (*(*(v249 - 8) + 104))(v251, *MEMORY[0x1E69E6AF8], v249);
    swift_willThrow();
    swift_unknownObjectRelease();
    v253 = OUTLINED_FUNCTION_17_3();
    v254(v253, v252);
LABEL_9:
    v255 = v589;
    return __swift_destroy_boxed_opaque_existential_1Tm(v255);
  }

  v480 = 0;
  if (v236 < (v237 >> 1))
  {
    v479 = *(v235 + v236);
    sub_197953BF8(v236 + 1);
    v239 = v238;
    v241 = v240;
    swift_unknownObjectRelease();
    if (v239 == v241 >> 1)
    {
      v242 = v480;
      v243 = v583;
      switch(v479)
      {
        case 1:
          OUTLINED_FUNCTION_64_2();
          sub_1979B1CF4();
          OUTLINED_FUNCTION_10_5(&type metadata for ModelManagerError.UndefinedErrorCodingKeys, &v592);
          swift_unknownObjectRelease();
          v297 = OUTLINED_FUNCTION_25_3();
          v298(v297, v491);
          v299 = OUTLINED_FUNCTION_9_3();
          v300(v299);
          OUTLINED_FUNCTION_26_2();
          goto LABEL_60;
        case 2:
          LOBYTE(v592) = 2;
          sub_1979B1CA0();
          OUTLINED_FUNCTION_10_5(&type metadata for ModelManagerError.MissingFeatureFlagCodingKeys, &v592);
          swift_unknownObjectRelease();
          v284 = OUTLINED_FUNCTION_25_3();
          v285(v284, v495[0]);
          v286 = OUTLINED_FUNCTION_9_3();
          v287(v286);
          OUTLINED_FUNCTION_26_2();
          goto LABEL_60;
        case 3:
          LOBYTE(v592) = 3;
          sub_1979B1C4C();
          OUTLINED_FUNCTION_10_5(&type metadata for ModelManagerError.UnsupportedNumberOfAssetBundlesCodingKeys, &v592);
          swift_unknownObjectRelease();
          v292 = OUTLINED_FUNCTION_25_3();
          v293(v292, v496);
          v294 = OUTLINED_FUNCTION_9_3();
          v295(v294);
          OUTLINED_FUNCTION_26_2();
          goto LABEL_60;
        case 4:
          LOBYTE(v592) = 4;
          sub_1979B1BF8();
          OUTLINED_FUNCTION_10_5(&type metadata for ModelManagerError.InternalErrorCodingKeys, &v592);
          swift_unknownObjectRelease();
          v279 = OUTLINED_FUNCTION_25_3();
          v280(v279, v497[1]);
          v281 = OUTLINED_FUNCTION_9_3();
          v282(v281);
          OUTLINED_FUNCTION_26_2();
          goto LABEL_60;
        case 5:
          LOBYTE(v592) = 5;
          sub_1979B1BA4();
          OUTLINED_FUNCTION_10_5(&type metadata for ModelManagerError.NotSupportedOnExternalBuildCodingKeys, &v592);
          swift_unknownObjectRelease();
          v313 = OUTLINED_FUNCTION_25_3();
          v314(v313, v497[3]);
          v315 = OUTLINED_FUNCTION_9_3();
          v316(v315);
          OUTLINED_FUNCTION_26_2();
          goto LABEL_60;
        case 6:
          LOBYTE(v592) = 6;
          sub_1979B1B50();
          OUTLINED_FUNCTION_7_4(&type metadata for ModelManagerError.MissingEntitlementCodingKeys, &v592);
          OUTLINED_FUNCTION_12_2();
          sub_197A87FA8();
          OUTLINED_FUNCTION_42_3();
          v419 = OUTLINED_FUNCTION_8_4();
          v420(v419);
          v421 = OUTLINED_FUNCTION_6_4();
          v422(v421);
          OUTLINED_FUNCTION_11_1(v495);
          goto LABEL_63;
        case 7:
          LOBYTE(v592) = 7;
          sub_1979B1AFC();
          OUTLINED_FUNCTION_7_4(&type metadata for ModelManagerError.UnrecognizedUnderlyingErrorCodingKeys, &v592);
          v296 = v500[1];
          v400 = sub_197A87FA8();
          v402 = v401;
          swift_unknownObjectRelease();
          v403 = OUTLINED_FUNCTION_24_1();
          v404(v403, v296);
          v405 = OUTLINED_FUNCTION_6_4();
          v406(v405);
          v270 = v482;
          *v482 = v400;
          *(v270 + 8) = v402;
          goto LABEL_61;
        case 8:
          LOBYTE(v592) = 8;
          sub_1979B1AA8();
          OUTLINED_FUNCTION_10_5(&type metadata for ModelManagerError.XpcErrorCodingKeys, &v592);
          v242 = v501;
          sub_197A87FA8();
          OUTLINED_FUNCTION_42_3();
          v431 = OUTLINED_FUNCTION_25_3();
          v432(v431, v242);
          v433 = OUTLINED_FUNCTION_17_3();
          v434(v433, v588);
          OUTLINED_FUNCTION_11_1(&v496);
          goto LABEL_63;
        case 9:
          LOBYTE(v592) = 9;
          sub_1979B1A54();
          OUTLINED_FUNCTION_7_4(&type metadata for ModelManagerError.RemoteXPCErrorCodingKeys, &v592);
          OUTLINED_FUNCTION_12_2();
          sub_197A87FA8();
          OUTLINED_FUNCTION_42_3();
          v388 = OUTLINED_FUNCTION_8_4();
          v389(v388);
          v390 = OUTLINED_FUNCTION_6_4();
          v391(v390);
          OUTLINED_FUNCTION_11_1(v497);
          goto LABEL_63;
        case 10:
          LOBYTE(v592) = 10;
          sub_1979B1A00();
          OUTLINED_FUNCTION_7_4(&type metadata for ModelManagerError.IpcErrorCodingKeys, &v592);
          OUTLINED_FUNCTION_12_2();
          sub_197A87FA8();
          OUTLINED_FUNCTION_42_3();
          v427 = OUTLINED_FUNCTION_8_4();
          v428(v427);
          v429 = OUTLINED_FUNCTION_6_4();
          v430(v429);
          OUTLINED_FUNCTION_11_1(&v498);
          goto LABEL_63;
        case 11:
          LOBYTE(v592) = 11;
          sub_1979B19AC();
          OUTLINED_FUNCTION_7_4(&type metadata for ModelManagerError.UnrecognizedInferenceProviderCodingKeys, &v592);
          OUTLINED_FUNCTION_12_2();
          sub_197A87FA8();
          OUTLINED_FUNCTION_42_3();
          v376 = OUTLINED_FUNCTION_8_4();
          v377(v376);
          v378 = OUTLINED_FUNCTION_6_4();
          v379(v378);
          OUTLINED_FUNCTION_11_1(v499);
          goto LABEL_63;
        case 12:
          LOBYTE(v592) = 12;
          sub_1979B1958();
          OUTLINED_FUNCTION_7_4(&type metadata for ModelManagerError.UseCaseDisabledCodingKeys, &v592);
          OUTLINED_FUNCTION_12_2();
          sub_197A87FA8();
          OUTLINED_FUNCTION_42_3();
          v384 = OUTLINED_FUNCTION_8_4();
          v385(v384);
          v386 = OUTLINED_FUNCTION_6_4();
          v387(v386);
          OUTLINED_FUNCTION_11_1(v500);
          goto LABEL_63;
        case 13:
          LOBYTE(v592) = 13;
          sub_1979B1904();
          OUTLINED_FUNCTION_10_5(&type metadata for ModelManagerError.InsufficientSystemResourcesCodingKeys, &v592);
          swift_unknownObjectRelease();
          v317 = OUTLINED_FUNCTION_25_3();
          v318(v317, v509);
          v319 = OUTLINED_FUNCTION_9_3();
          v320(v319);
          OUTLINED_FUNCTION_26_2();
          goto LABEL_60;
        case 14:
          LOBYTE(v592) = 14;
          sub_1979B18B0();
          OUTLINED_FUNCTION_7_4(&type metadata for ModelManagerError.InsufficientSystemResourcesWithJetsamReasonCodingKeys, &v592);
          OUTLINED_FUNCTION_12_2();
          v370 = sub_197A87FE8();
          swift_unknownObjectRelease();
          v371 = OUTLINED_FUNCTION_8_4();
          v372(v371);
          v373 = OUTLINED_FUNCTION_6_4();
          v374(v373);
          v375 = v488;
          *v488 = v370;
          goto LABEL_66;
        case 15:
          LOBYTE(v592) = 15;
          sub_1979B185C();
          OUTLINED_FUNCTION_10_5(&type metadata for ModelManagerError.DeniedDueToSystemStateCodingKeys, &v592);
          swift_unknownObjectRelease();
          v288 = OUTLINED_FUNCTION_25_3();
          v289(v288, v510[3]);
          v290 = OUTLINED_FUNCTION_9_3();
          v291(v290);
          OUTLINED_FUNCTION_26_2();
          goto LABEL_60;
        case 16:
          LOBYTE(v592) = 16;
          sub_1979B1808();
          OUTLINED_FUNCTION_7_4(&type metadata for ModelManagerError.DeniedDueToSpecifiedSystemStateCodingKeys, &v592);
          v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
          OUTLINED_FUNCTION_33_2(&qword_1ED87FE58, MEMORY[0x1E69E6190]);
          OUTLINED_FUNCTION_39(v270, v271);
          OUTLINED_FUNCTION_57_1();
          swift_unknownObjectRelease();
          v366 = OUTLINED_FUNCTION_8_4();
          v367(v366);
          v368 = OUTLINED_FUNCTION_6_4();
          v369(v368);
          OUTLINED_FUNCTION_62_2(v592);
          goto LABEL_61;
        case 17:
          LOBYTE(v592) = 17;
          sub_1979B17B4();
          OUTLINED_FUNCTION_10_5(&type metadata for ModelManagerError.OnBehalfOfProcessNotRunningCodingKeys, &v592);
          swift_unknownObjectRelease();
          v301 = OUTLINED_FUNCTION_25_3();
          v302(v301, v511[0]);
          v303 = OUTLINED_FUNCTION_9_3();
          v304(v303);
          OUTLINED_FUNCTION_26_2();
          goto LABEL_60;
        case 18:
          LOBYTE(v592) = 18;
          sub_1979B1760();
          OUTLINED_FUNCTION_7_4(&type metadata for ModelManagerError.RequestNotFoundCodingKeys, &v592);
          sub_197A87298();
          OUTLINED_FUNCTION_2_6();
          sub_19796AAB0(v321, v322, MEMORY[0x1E69695D0]);
          v323 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_39(v323, v324);
          OUTLINED_FUNCTION_57_1();
          swift_unknownObjectRelease();
          v423 = OUTLINED_FUNCTION_8_4();
          v424(v423);
          v425 = OUTLINED_FUNCTION_6_4();
          v426(v425);
          OUTLINED_FUNCTION_67_2();
          goto LABEL_62;
        case 19:
          LOBYTE(v592) = 19;
          sub_1979B170C();
          OUTLINED_FUNCTION_7_4(&type metadata for ModelManagerError.SessionInCancelStateCodingKeys, &v592);
          sub_197A87298();
          OUTLINED_FUNCTION_2_6();
          sub_19796AAB0(v337, v338, MEMORY[0x1E69695D0]);
          v339 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_39(v339, v340);
          OUTLINED_FUNCTION_57_1();
          swift_unknownObjectRelease();
          v439 = OUTLINED_FUNCTION_8_4();
          v440(v439);
          v441 = OUTLINED_FUNCTION_6_4();
          v442(v441);
          OUTLINED_FUNCTION_67_2();
          goto LABEL_62;
        case 20:
          LOBYTE(v592) = 20;
          sub_1979B16B8();
          OUTLINED_FUNCTION_10_5(&type metadata for ModelManagerError.OperationCancelledCodingKeys, &v592);
          swift_unknownObjectRelease();
          v309 = OUTLINED_FUNCTION_25_3();
          v310(v309, v516[0]);
          v311 = OUTLINED_FUNCTION_9_3();
          v312(v311);
          OUTLINED_FUNCTION_26_2();
          goto LABEL_60;
        case 21:
          LOBYTE(v592) = 21;
          sub_1979B1664();
          OUTLINED_FUNCTION_7_4(&type metadata for ModelManagerError.AssetBundleNotFoundCodingKeys, &v592);
          OUTLINED_FUNCTION_12_2();
          sub_197A87FA8();
          OUTLINED_FUNCTION_42_3();
          v415 = OUTLINED_FUNCTION_8_4();
          v416(v415);
          v417 = OUTLINED_FUNCTION_6_4();
          v418(v417);
          OUTLINED_FUNCTION_11_1(&v501);
          goto LABEL_63;
        case 22:
          LOBYTE(v592) = 22;
          sub_1979B1610();
          OUTLINED_FUNCTION_7_4(&type metadata for ModelManagerError.AssetNotFoundCodingKeys, &v592);
          OUTLINED_FUNCTION_12_2();
          sub_197A87FA8();
          OUTLINED_FUNCTION_42_3();
          v435 = OUTLINED_FUNCTION_8_4();
          v436(v435);
          v437 = OUTLINED_FUNCTION_6_4();
          v438(v437);
          OUTLINED_FUNCTION_11_1(&v502);
          goto LABEL_63;
        case 23:
          LOBYTE(v592) = 23;
          sub_1979B15BC();
          OUTLINED_FUNCTION_7_4(&type metadata for ModelManagerError.UnrecognizedModelCatalogResourceCodingKeys, &v592);
          OUTLINED_FUNCTION_12_2();
          sub_197A87FA8();
          OUTLINED_FUNCTION_42_3();
          v447 = OUTLINED_FUNCTION_8_4();
          v448(v447);
          v449 = OUTLINED_FUNCTION_6_4();
          v450(v449);
          OUTLINED_FUNCTION_11_1(v503);
          goto LABEL_63;
        case 24:
          LOBYTE(v592) = 24;
          sub_1979B1568();
          OUTLINED_FUNCTION_7_4(&type metadata for ModelManagerError.NoCommonInferenceProviderForAssetsCodingKeys, &v592);
          v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
          OUTLINED_FUNCTION_33_2(&qword_1ED87FE58, MEMORY[0x1E69E6190]);
          OUTLINED_FUNCTION_39(v270, v283);
          OUTLINED_FUNCTION_57_1();
          swift_unknownObjectRelease();
          v396 = OUTLINED_FUNCTION_8_4();
          v397(v396);
          v398 = OUTLINED_FUNCTION_6_4();
          v399(v398);
          OUTLINED_FUNCTION_62_2(v592);
          goto LABEL_61;
        case 25:
          LOBYTE(v592) = 25;
          sub_1979B1514();
          OUTLINED_FUNCTION_7_4(&type metadata for ModelManagerError.AssetDoesNotSupportDynamicModeCodingKeys, &v592);
          OUTLINED_FUNCTION_12_2();
          sub_197A87FA8();
          OUTLINED_FUNCTION_42_3();
          v392 = OUTLINED_FUNCTION_8_4();
          v393(v392);
          v394 = OUTLINED_FUNCTION_6_4();
          v395(v394);
          OUTLINED_FUNCTION_11_1(&v504);
          goto LABEL_63;
        case 26:
          LOBYTE(v592) = 26;
          sub_1979B14C0();
          OUTLINED_FUNCTION_7_4(&type metadata for ModelManagerError.SessionNotFoundCodingKeys, &v592);
          sub_197A87298();
          OUTLINED_FUNCTION_2_6();
          sub_19796AAB0(v351, v352, MEMORY[0x1E69695D0]);
          v353 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_39(v353, v354);
          OUTLINED_FUNCTION_57_1();
          swift_unknownObjectRelease();
          v463 = OUTLINED_FUNCTION_8_4();
          v464(v463);
          v465 = OUTLINED_FUNCTION_6_4();
          v466(v465);
          OUTLINED_FUNCTION_67_2();
          goto LABEL_62;
        case 27:
          LOBYTE(v592) = 27;
          sub_1979B146C();
          OUTLINED_FUNCTION_7_4(&type metadata for ModelManagerError.InvalidRequestModelBundleIDCodingKeys, &v592);
          OUTLINED_FUNCTION_12_2();
          sub_197A87FA8();
          OUTLINED_FUNCTION_42_3();
          v358 = OUTLINED_FUNCTION_8_4();
          v359(v358);
          v360 = OUTLINED_FUNCTION_6_4();
          v361(v360);
          OUTLINED_FUNCTION_11_1(&v505);
          goto LABEL_63;
        case 28:
          LOBYTE(v592) = 28;
          sub_1979B1418();
          OUTLINED_FUNCTION_54_1();
          OUTLINED_FUNCTION_20_4(v341, v342);
          LOBYTE(v592) = 0;
          OUTLINED_FUNCTION_68_2();
          v451 = sub_197A87FA8();
          v453 = v452;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
          v594 = 1;
          OUTLINED_FUNCTION_33_2(&qword_1ED87FE58, MEMORY[0x1E69E6190]);
          OUTLINED_FUNCTION_68_2();
          sub_197A87FD8();
          swift_unknownObjectRelease();
          v473 = OUTLINED_FUNCTION_61_3();
          v474(v473);
          v475 = OUTLINED_FUNCTION_6_4();
          v476(v475);
          v477 = v592;
          v375 = v486;
          *v486 = v451;
          v375[1] = v453;
          v375[2] = v477;
LABEL_66:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_5_3();
          v462 = v375;
          goto LABEL_64;
        case 29:
          LOBYTE(v592) = 29;
          sub_1979B13C4();
          OUTLINED_FUNCTION_7_4(&type metadata for ModelManagerError.ModelCatalogErrorCodingKeys, &v592);
          OUTLINED_FUNCTION_12_2();
          sub_197A87FA8();
          OUTLINED_FUNCTION_42_3();
          v454 = OUTLINED_FUNCTION_8_4();
          v455(v454);
          v456 = OUTLINED_FUNCTION_6_4();
          v457(v456);
          OUTLINED_FUNCTION_11_1(v506);
          goto LABEL_63;
        case 30:
          LOBYTE(v592) = 30;
          sub_1979B1370();
          OUTLINED_FUNCTION_10_5(&type metadata for ModelManagerError.DeniedAssertionBySystemCodingKeys, &v592);
          swift_unknownObjectRelease();
          v325 = OUTLINED_FUNCTION_25_3();
          v326(v325, v534);
          v327 = OUTLINED_FUNCTION_9_3();
          v328(v327);
          OUTLINED_FUNCTION_26_2();
          goto LABEL_60;
        case 31:
          LOBYTE(v592) = 31;
          sub_1979B131C();
          OUTLINED_FUNCTION_7_4(&type metadata for ModelManagerError.AssetNotAvailableInModelCatalogCodingKeys, &v592);
          OUTLINED_FUNCTION_12_2();
          sub_197A87FA8();
          OUTLINED_FUNCTION_42_3();
          v411 = OUTLINED_FUNCTION_8_4();
          v412(v411);
          v413 = OUTLINED_FUNCTION_6_4();
          v414(v413);
          OUTLINED_FUNCTION_11_1(&v507);
          goto LABEL_63;
        case 32:
          LOBYTE(v592) = 32;
          sub_1979B12C8();
          OUTLINED_FUNCTION_10_5(&type metadata for ModelManagerError.PolicyNotAvailableCodingKeys, &v592);
          swift_unknownObjectRelease();
          v329 = OUTLINED_FUNCTION_25_3();
          v330(v329, v538[1]);
          v331 = OUTLINED_FUNCTION_9_3();
          v332(v331);
          OUTLINED_FUNCTION_26_2();
          goto LABEL_60;
        case 33:
          LOBYTE(v592) = 33;
          sub_1979B1274();
          OUTLINED_FUNCTION_10_5(&type metadata for ModelManagerError.DeviceNotEligibleCodingKeys, &v592);
          swift_unknownObjectRelease();
          v275 = OUTLINED_FUNCTION_25_3();
          v276(v275, v541[0]);
          v277 = OUTLINED_FUNCTION_9_3();
          v278(v277);
          OUTLINED_FUNCTION_26_2();
          goto LABEL_60;
        case 34:
          LOBYTE(v592) = 34;
          sub_1979B1220();
          OUTLINED_FUNCTION_7_4(&type metadata for ModelManagerError.PolicyNotFoundCodingKeys, &v592);
          OUTLINED_FUNCTION_12_2();
          sub_197A87FA8();
          OUTLINED_FUNCTION_42_3();
          v362 = OUTLINED_FUNCTION_8_4();
          v363(v362);
          v364 = OUTLINED_FUNCTION_6_4();
          v365(v364);
          OUTLINED_FUNCTION_11_1(&v508);
          goto LABEL_63;
        case 35:
          LOBYTE(v592) = 35;
          sub_1979B11CC();
          v264 = v573;
          OUTLINED_FUNCTION_20_4(&type metadata for ModelManagerError.InferenceProviderCrashedCodingKeys, &v592);
          LOBYTE(v592) = 0;
          v265 = v547[0];
          OUTLINED_FUNCTION_68_2();
          v355 = sub_197A88008();
          OUTLINED_FUNCTION_64_2();
          OUTLINED_FUNCTION_68_2();
          v356 = sub_197A88018();
          v357 = v546;
          v467 = v356;
          swift_unknownObjectRelease();
          (*(v357 + 8))(v264, v265);
          v468 = OUTLINED_FUNCTION_6_4();
          v469(v468);
          v242 = v487;
          *v487 = v355;
          *(v242 + 1) = v467;
          goto LABEL_63;
        case 36:
          LOBYTE(v592) = 36;
          sub_1979B1178();
          OUTLINED_FUNCTION_10_5(&type metadata for ModelManagerError.UnableToForceAssetVersionSwitchCodingKeys, &v592);
          swift_unknownObjectRelease();
          v266 = OUTLINED_FUNCTION_25_3();
          v267(v266, v544[0]);
          v268 = OUTLINED_FUNCTION_9_3();
          v269(v268);
          OUTLINED_FUNCTION_26_2();
          goto LABEL_60;
        case 37:
          LOBYTE(v592) = 37;
          sub_1979B1124();
          OUTLINED_FUNCTION_10_5(&type metadata for ModelManagerError.CancelledByPreemptionCodingKeys, &v592);
          swift_unknownObjectRelease();
          v260 = OUTLINED_FUNCTION_25_3();
          v261(v260, v545);
          v262 = OUTLINED_FUNCTION_9_3();
          v263(v262);
          OUTLINED_FUNCTION_26_2();
          goto LABEL_60;
        case 38:
          LOBYTE(v592) = 38;
          sub_1979B10D0();
          OUTLINED_FUNCTION_13_4(&type metadata for ModelManagerError.SessionAndInferenceProviderVersionMismatchCodingKeys, &v592);
          sub_19795F5C4();
          sub_197A87FD8();
          v343 = v585;
          swift_unknownObjectRelease();
          v458 = OUTLINED_FUNCTION_8_4();
          v459(v458);
          (*(v343 + 8))(v232, v230);
          v460 = v593;
          v270 = v489;
          *v489 = v592;
          *(v270 + 8) = v460;
LABEL_61:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_5_3();
          v462 = v270;
          goto LABEL_64;
        case 39:
          LOBYTE(v592) = 39;
          sub_1979B107C();
          OUTLINED_FUNCTION_15_3(&type metadata for ModelManagerError.InvalidInputStreamCodingKeys, &v592);
          swift_unknownObjectRelease();
          v347 = OUTLINED_FUNCTION_25_3();
          v348(v347, v548[0]);
          v349 = OUTLINED_FUNCTION_9_3();
          v350(v349);
          OUTLINED_FUNCTION_26_2();
          goto LABEL_60;
        case 40:
          LOBYTE(v592) = 40;
          sub_1979B1028();
          OUTLINED_FUNCTION_13_4(&type metadata for ModelManagerError.InferenceProviderNotFoundCodingKeys, &v592);
          OUTLINED_FUNCTION_12_2();
          sub_197A87FA8();
          OUTLINED_FUNCTION_42_3();
          v380 = OUTLINED_FUNCTION_8_4();
          v381(v380);
          v382 = OUTLINED_FUNCTION_6_4();
          v383(v382);
          OUTLINED_FUNCTION_11_1(&v509);
          goto LABEL_63;
        case 41:
          LOBYTE(v592) = 41;
          sub_1979B0FD4();
          OUTLINED_FUNCTION_15_3(&type metadata for ModelManagerError.CannotPerformHostInferenceCodingKeys, &v592);
          swift_unknownObjectRelease();
          v305 = OUTLINED_FUNCTION_25_3();
          v306(v305, v551[1]);
          v307 = OUTLINED_FUNCTION_9_3();
          v308(v307);
          OUTLINED_FUNCTION_26_2();
          goto LABEL_60;
        case 42:
          LOBYTE(v592) = 42;
          sub_1979B0F80();
          OUTLINED_FUNCTION_13_4(&type metadata for ModelManagerError.InvalidRemoteDeviceTypeCodingKeys, &v592);
          OUTLINED_FUNCTION_12_2();
          sub_197A87FA8();
          OUTLINED_FUNCTION_42_3();
          v443 = OUTLINED_FUNCTION_8_4();
          v444(v443);
          v445 = OUTLINED_FUNCTION_6_4();
          v446(v445);
          OUTLINED_FUNCTION_11_1(v510);
LABEL_63:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_5_3();
          v462 = v242;
          goto LABEL_64;
        case 43:
          LOBYTE(v592) = 43;
          sub_1979B0F2C();
          OUTLINED_FUNCTION_15_3(&type metadata for ModelManagerError.InvalidClientIdentifierCodingKeys, &v592);
          swift_unknownObjectRelease();
          v256 = OUTLINED_FUNCTION_25_3();
          v257(v256, v554[1]);
          v258 = OUTLINED_FUNCTION_9_3();
          v259(v258);
          OUTLINED_FUNCTION_26_2();
          goto LABEL_60;
        case 44:
          LOBYTE(v592) = 44;
          sub_1979B0ED8();
          v272 = v580;
          OUTLINED_FUNCTION_15_3(&type metadata for ModelManagerError.RateLimitedCodingKeys, &v592);
          swift_unknownObjectRelease();
          (*(v243 + 8))(v272, v231);
          v273 = OUTLINED_FUNCTION_9_3();
          v274(v273);
          OUTLINED_FUNCTION_26_2();
          goto LABEL_60;
        case 45:
          LOBYTE(v592) = 45;
          sub_1979B0E84();
          OUTLINED_FUNCTION_47();
          v241 = v232;
          sub_197A87F28();
          if (v242)
          {
            v245 = OUTLINED_FUNCTION_9_3();
            goto LABEL_58;
          }

          swift_unknownObjectRelease();
          v333 = OUTLINED_FUNCTION_24_1();
          v334(v333, v230);
          v335 = OUTLINED_FUNCTION_9_3();
          v336(v335);
          OUTLINED_FUNCTION_26_2();
LABEL_60:
          swift_storeEnumTagMultiPayload();
          goto LABEL_65;
        default:
          LOBYTE(v592) = 0;
          sub_1979B1D48();
          v244 = v588;
          sub_197A87F28();
          if (v242)
          {
            v245 = OUTLINED_FUNCTION_17_3();
            v247 = v244;
LABEL_58:
            v246(v245, v247);
            swift_unknownObjectRelease();
            goto LABEL_9;
          }

          type metadata accessor for InferenceError(0);
          OUTLINED_FUNCTION_19_3();
          sub_19796AAB0(v344, v345, protocol conformance descriptor for InferenceError);
          OUTLINED_FUNCTION_52();
          v346 = v493;
          sub_197A87FD8();
          OUTLINED_FUNCTION_57_1();
          swift_unknownObjectRelease();
          v407 = OUTLINED_FUNCTION_25_3();
          v408(v407, v346);
          v409 = OUTLINED_FUNCTION_17_3();
          v410(v409, v244);
          OUTLINED_FUNCTION_67_2();
LABEL_62:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_5_3();
          v462 = v243;
LABEL_64:
          v241 = v590;
          sub_1979B6F20(v462, v590, v461);
LABEL_65:
          v470 = v589;
          OUTLINED_FUNCTION_5_3();
          sub_1979B6F20(v241, v471, v472);
          v255 = v470;
          break;
      }

      return __swift_destroy_boxed_opaque_existential_1Tm(v255);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1979B532C(uint64_t a1)
{
  v2 = sub_19796AAB0(&qword_1ED87FC28, type metadata accessor for ModelManagerError, protocol conformance descriptor for ModelManagerError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1979B5398(uint64_t a1)
{
  v2 = sub_19796AAB0(&qword_1ED87FC28, type metadata accessor for ModelManagerError, protocol conformance descriptor for ModelManagerError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t ModelManagerError.descriptionWithoutUnderlying.getter()
{
  v1 = sub_197A87298();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_0();
  v7 = v6 - v5;
  type metadata accessor for ModelManagerError(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = (v10 - v9);
  OUTLINED_FUNCTION_4_3();
  sub_1979B6FD8(v0, v11, v12);
  v13 = 0x656E696665646E55;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_18_3();
      v55 = v54 + 2;
      goto LABEL_41;
    case 2u:
      OUTLINED_FUNCTION_18_3();
      v55 = v59 | 0xC;
      goto LABEL_41;
    case 3u:
      v32 = OUTLINED_FUNCTION_60_1();
      v34 = v33 + 15;
      goto LABEL_34;
    case 4u:
      OUTLINED_FUNCTION_18_3();
      v55 = v70 - 2;
      goto LABEL_41;
    case 5u:
      v32 = OUTLINED_FUNCTION_60_1();
LABEL_34:
      v97 = v34;
      goto LABEL_42;
    case 6u:
      OUTLINED_FUNCTION_18_3();
      v55 = v60 + 14;
      goto LABEL_41;
    case 7u:
      OUTLINED_FUNCTION_18_3();
LABEL_41:
      v97 = v55;
      goto LABEL_42;
    case 8u:
      OUTLINED_FUNCTION_27_2();
      sub_197A87E58();

      OUTLINED_FUNCTION_18_3();
      v97 = v46 | 0xC;
      v47 = sub_197A88148();
      MEMORY[0x19A8EAC80](v47);

      v48 = 41;
      v49 = 0xE100000000000000;
      goto LABEL_58;
    case 9u:
      v80 = sub_197A87CF8();
      v82 = v81;

      v97 = 0xD000000000000029;
      MEMORY[0x19A8EAC80](v80, v82);

      sub_197A878A8();
      v32 = 0xD000000000000011;
      goto LABEL_42;
    case 0xAu:
      v29 = OUTLINED_FUNCTION_48_1();
      v30(v29);
      OUTLINED_FUNCTION_27_2();
      sub_197A87E58();

      v31 = 0x2074736575716552;
      goto LABEL_36;
    case 0xBu:
      v36 = OUTLINED_FUNCTION_48_1();
      v37(v36);
      OUTLINED_FUNCTION_27_2();
      sub_197A87E58();

      OUTLINED_FUNCTION_69_1();
      v98 = v38;
      OUTLINED_FUNCTION_2_6();
      sub_19796AAB0(v39, v40, MEMORY[0x1E69695E0]);
      v41 = sub_197A88148();
      MEMORY[0x19A8EAC80](v41);

      OUTLINED_FUNCTION_47_1();
      v43 = v42 - 1;
      v45 = v44 | 0x8000000000000000;
      goto LABEL_37;
    case 0xCu:
      OUTLINED_FUNCTION_21_1();
      sub_197A87E58();

      v27 = 0x7562207465737341;
      goto LABEL_32;
    case 0xDu:
      OUTLINED_FUNCTION_21_1();
      sub_197A87E58();

      OUTLINED_FUNCTION_43_2();
LABEL_32:
      v97 = v27;
      v73 = OUTLINED_FUNCTION_60();
      MEMORY[0x19A8EAC80](v73);

      OUTLINED_FUNCTION_47_1();
      v48 = v74 | 8;
      goto LABEL_50;
    case 0xEu:
      OUTLINED_FUNCTION_21_1();
      sub_197A87E58();

      OUTLINED_FUNCTION_43_2();
      v97 = v56;
      v57 = OUTLINED_FUNCTION_60();
      MEMORY[0x19A8EAC80](v57);

      OUTLINED_FUNCTION_47_1();
      v48 = v58 + 18;
      goto LABEL_50;
    case 0xFu:
      OUTLINED_FUNCTION_27_2();
      sub_197A87E58();

      OUTLINED_FUNCTION_18_3();
      v97 = v22 + 21;
      v23 = sub_197A87CF8();
      v25 = v24;

      MEMORY[0x19A8EAC80](v23, v25);
      goto LABEL_43;
    case 0x10u:
      OUTLINED_FUNCTION_21_1();
      sub_197A87E58();

      OUTLINED_FUNCTION_43_2();
      v97 = v62;
      v63 = OUTLINED_FUNCTION_60();
      MEMORY[0x19A8EAC80](v63);

      OUTLINED_FUNCTION_47_1();
      v48 = v64 + 11;
      goto LABEL_50;
    case 0x11u:
      v75 = OUTLINED_FUNCTION_48_1();
      v76(v75);
      OUTLINED_FUNCTION_27_2();
      sub_197A87E58();

      OUTLINED_FUNCTION_69_1();
LABEL_36:
      v98 = v31;
      OUTLINED_FUNCTION_2_6();
      sub_19796AAB0(v77, v78, MEMORY[0x1E69695E0]);
      v79 = sub_197A88148();
      MEMORY[0x19A8EAC80](v79);

      v43 = OUTLINED_FUNCTION_56_1();
LABEL_37:
      MEMORY[0x19A8EAC80](v43, v45);
      v13 = v98;
      (*(v3 + 8))(v7, v1);
      return v13;
    case 0x12u:
      OUTLINED_FUNCTION_21_1();
      sub_197A87E58();
      MEMORY[0x19A8EAC80](0xD000000000000022, 0x8000000197AA2B40);
      v89 = OUTLINED_FUNCTION_60();
      MEMORY[0x19A8EAC80](v89);

      v51 = "bundle identifier ";
      v48 = 0xD00000000000001CLL;
      goto LABEL_50;
    case 0x13u:
      v66 = *v11;
      OUTLINED_FUNCTION_27_2();
      sub_197A87E58();
      MEMORY[0x19A8EAC80](0xD00000000000001DLL, 0x8000000197AA2AE0);
      v67 = sub_197A87CF8();
      v69 = v68;

      MEMORY[0x19A8EAC80](v67, v69);

      MEMORY[0x19A8EAC80](0xD000000000000031, 0x8000000197AA2B00);
      v32 = v66;
      goto LABEL_42;
    case 0x14u:
      OUTLINED_FUNCTION_21_1();
      sub_197A87E58();

      OUTLINED_FUNCTION_18_3();
      v20 = v71 + 2;
      goto LABEL_30;
    case 0x15u:
      OUTLINED_FUNCTION_21_1();
      sub_197A87E58();

      OUTLINED_FUNCTION_43_2();
      v97 = v85;
      v86 = OUTLINED_FUNCTION_60();
      MEMORY[0x19A8EAC80](v86);

      OUTLINED_FUNCTION_47_1();
      v48 = v87 + 15;
      goto LABEL_50;
    case 0x16u:
      OUTLINED_FUNCTION_21_1();
      sub_197A87E58();

      v97 = 0x207963696C6F50;
      goto LABEL_57;
    case 0x17u:
      OUTLINED_FUNCTION_27_2();
      sub_197A87E58();

      OUTLINED_FUNCTION_18_3();
      v97 = v52 + 13;
      v53 = sub_197A88148();
      MEMORY[0x19A8EAC80](v53);

      MEMORY[0x19A8EAC80](58, 0xE100000000000000);
      v32 = sub_197A88148();
LABEL_42:
      MEMORY[0x19A8EAC80](v32);
      goto LABEL_43;
    case 0x18u:
      v97 = 0;
      sub_197A87E58();
      MEMORY[0x19A8EAC80](0xD000000000000013, 0x8000000197AA2910);
      v50 = Version.description.getter();
      MEMORY[0x19A8EAC80](v50);

      v51 = "Session of version ";
      v48 = 0xD000000000000050;
LABEL_50:
      v49 = v51 | 0x8000000000000000;
      goto LABEL_58;
    case 0x19u:
      OUTLINED_FUNCTION_21_1();
      sub_197A87E58();

      OUTLINED_FUNCTION_18_3();
      v97 = v94;
LABEL_57:
      v95 = OUTLINED_FUNCTION_60();
      MEMORY[0x19A8EAC80](v95);

      v48 = OUTLINED_FUNCTION_56_1();
LABEL_58:
      MEMORY[0x19A8EAC80](v48, v49);
      goto LABEL_59;
    case 0x1Au:
      OUTLINED_FUNCTION_21_1();
      sub_197A87E58();

      OUTLINED_FUNCTION_18_3();
      v20 = v19 + 21;
LABEL_30:
      v97 = v20;
      v72 = OUTLINED_FUNCTION_60();
      MEMORY[0x19A8EAC80](v72);
LABEL_43:

LABEL_59:
      v13 = v97;
      break;
    case 0x1Bu:
      return v13;
    case 0x1Cu:
      OUTLINED_FUNCTION_14_4();
      v13 = v91 + 25;
      break;
    case 0x1Du:
      OUTLINED_FUNCTION_47_1();
      v13 = v93 | v92;
      break;
    case 0x1Eu:
      OUTLINED_FUNCTION_63_1();
      v13 = 0x6C616E7265746E55;
      break;
    case 0x1Fu:
      OUTLINED_FUNCTION_14_4();
      v13 = v61 | 0xC;
      break;
    case 0x20u:
      OUTLINED_FUNCTION_14_4();
      v13 = v83 + 10;
      break;
    case 0x21u:
      OUTLINED_FUNCTION_14_4();
      v13 = v28 + 38;
      break;
    case 0x22u:
      OUTLINED_FUNCTION_14_4();
      v13 = v21 + 46;
      break;
    case 0x23u:
      OUTLINED_FUNCTION_14_4();
      v13 = v17 - 1;
      break;
    case 0x24u:
      OUTLINED_FUNCTION_14_4();
      v13 = v18 + 15;
      break;
    case 0x25u:
      OUTLINED_FUNCTION_14_4();
      v13 = v16 + 1;
      break;
    case 0x26u:
      v13 = 0xD000000000000013;
      break;
    case 0x27u:
      OUTLINED_FUNCTION_14_4();
      v13 = v88 + 20;
      break;
    case 0x28u:
      OUTLINED_FUNCTION_14_4();
      v13 = v35 + 18;
      break;
    case 0x29u:
      OUTLINED_FUNCTION_14_4();
      v13 = v65 | 4;
      break;
    case 0x2Au:
      OUTLINED_FUNCTION_14_4();
      v13 = v90 + 60;
      break;
    case 0x2Bu:
      OUTLINED_FUNCTION_14_4();
      v13 = v15 + 19;
      break;
    case 0x2Cu:
      OUTLINED_FUNCTION_14_4();
      v13 = v26 + 24;
      break;
    case 0x2Du:
      OUTLINED_FUNCTION_14_4();
      v13 = v84 + 16;
      break;
    default:
      OUTLINED_FUNCTION_0_7();
      sub_1979B6F80(v11, v14);
      OUTLINED_FUNCTION_63_1();
      v13 = 0x636E657265666E55;
      break;
  }

  return v13;
}

uint64_t ModelManagerError.underlyingErrors.getter()
{
  v1 = v0;
  v2 = type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;
  type metadata accessor for ModelManagerError(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_4_3();
  sub_1979B6FD8(v1, v10, v11);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_0_7();
    sub_1979B6F80(v10, v12);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1979B6F20(v10, v6, type metadata accessor for InferenceError);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48E78, &qword_197A8D7E0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_197A88E50;
    *(v13 + 56) = v2;
    OUTLINED_FUNCTION_19_3();
    *(v13 + 64) = sub_19796AAB0(v14, v15, protocol conformance descriptor for InferenceError);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 32));
    sub_1979B6F20(v6, boxed_opaque_existential_1, type metadata accessor for InferenceError);
  }

  return v13;
}

uint64_t ModelManagerError.category.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  type metadata accessor for ModelManagerError(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_27();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42[-1] - v14;
  OUTLINED_FUNCTION_4_3();
  sub_1979B6FD8(v2, v15, v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 6u:
    case 0xFu:
    case 0x12u:
    case 0x13u:
    case 0x16u:
      OUTLINED_FUNCTION_0_7();
      sub_1979B6F80(v15, v17);
      goto LABEL_3;
    case 2u:
      OUTLINED_FUNCTION_0_7();
      sub_1979B6F80(v15, v27);
      OUTLINED_FUNCTION_4_3();
      sub_1979B6FD8(v2, v12, v28);
      if (swift_getEnumCaseMultiPayload())
      {
        OUTLINED_FUNCTION_0_7();
        sub_1979B6F80(v12, v29);
        v30 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1979B6F20(v12, v8, type metadata accessor for InferenceError);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48E78, &qword_197A8D7E0);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_197A88E50;
        *(v30 + 56) = v4;
        OUTLINED_FUNCTION_19_3();
        *(v30 + 64) = sub_19796AAB0(v35, v36, protocol conformance descriptor for InferenceError);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v30 + 32));
        sub_1979B6F20(v8, boxed_opaque_existential_1, type metadata accessor for InferenceError);
      }

      v38 = *(v30 + 16);

      if (!v38)
      {
        goto LABEL_29;
      }

      result = ModelManagerError.underlyingErrors.getter();
      if (*(result + 16))
      {
        sub_197947C44(result + 32, v42);

        __swift_project_boxed_opaque_existential_1(v42, v42[3]);
        sub_197A87578();
        return __swift_destroy_boxed_opaque_existential_1Tm(v42);
      }

      else
      {
        __break(1u);
      }

      return result;
    case 3u:
    case 4u:
    case 5u:
    case 0x14u:
    case 0x19u:
      OUTLINED_FUNCTION_0_7();
      sub_1979B6F80(v15, v19);
      goto LABEL_5;
    case 7u:
    case 0x10u:
      OUTLINED_FUNCTION_0_7();
      sub_1979B6F80(v15, v21);
      goto LABEL_9;
    case 8u:
    case 0x20u:
    case 0x21u:
    case 0x28u:
      goto LABEL_19;
    case 9u:
      OUTLINED_FUNCTION_0_7();
      sub_1979B6F80(v15, v33);
LABEL_19:
      v18 = MEMORY[0x1E698C300];
      goto LABEL_30;
    case 0xAu:
    case 0x11u:
      v22 = MEMORY[0x1E698C2B8];
      goto LABEL_12;
    case 0xBu:
      v22 = MEMORY[0x1E698C348];
LABEL_12:
      v23 = *v22;
      sub_197A87558();
      OUTLINED_FUNCTION_6();
      (*(v24 + 104))(a1, v23);
      OUTLINED_FUNCTION_0_7();
      v26 = v15;
      goto LABEL_17;
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0x15u:
      OUTLINED_FUNCTION_0_7();
      sub_1979B6F80(v15, v20);
      v18 = MEMORY[0x1E698C2D8];
      goto LABEL_30;
    case 0x17u:
    case 0x1Cu:
    case 0x2Au:
    case 0x2Du:
LABEL_5:
      v18 = MEMORY[0x1E698C330];
      goto LABEL_30;
    case 0x18u:
    case 0x27u:
      v18 = MEMORY[0x1E698C2F8];
      goto LABEL_30;
    case 0x1Au:
      OUTLINED_FUNCTION_0_7();
      sub_1979B6F80(v15, v34);
      goto LABEL_23;
    case 0x1Bu:
LABEL_29:
      v18 = MEMORY[0x1E698C2C8];
      goto LABEL_30;
    case 0x1Du:
    case 0x1Fu:
    case 0x24u:
LABEL_9:
      v18 = MEMORY[0x1E698C2F0];
      goto LABEL_30;
    case 0x1Eu:
      v18 = MEMORY[0x1E698C2B0];
      goto LABEL_30;
    case 0x22u:
LABEL_23:
      v18 = MEMORY[0x1E698C2B8];
      goto LABEL_30;
    case 0x23u:
      v18 = MEMORY[0x1E698C348];
      goto LABEL_30;
    case 0x25u:
    case 0x29u:
    case 0x2Bu:
LABEL_3:
      v18 = MEMORY[0x1E698C2A0];
      goto LABEL_30;
    case 0x26u:
      v18 = MEMORY[0x1E698C2D0];
      goto LABEL_30;
    case 0x2Cu:
      v18 = MEMORY[0x1E698C2C0];
LABEL_30:
      v39 = *v18;
      sub_197A87558();
      OUTLINED_FUNCTION_6();
      result = (*(v40 + 104))(a1, v39);
      break;
    default:
      OUTLINED_FUNCTION_49_2();
      sub_1979B6F20(v15, v8, v31);
      InferenceError.category.getter(a1);
      v26 = v8;
      v25 = v2;
LABEL_17:
      result = sub_1979B6F80(v26, v25);
      break;
  }

  return result;
}

uint64_t sub_1979B644C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19796AAB0(&qword_1ED87DCE8, type metadata accessor for ModelManagerError, protocol conformance descriptor for ModelManagerError);

  return MEMORY[0x1EEDED5E0](a1, a2, a3, v6);
}

uint64_t ModelManagerError.description.getter()
{
  v0 = ModelManagerError.descriptionWithoutUnderlying.getter();
  v2 = v1;
  v3 = *(ModelManagerError.underlyingErrors.getter() + 16);

  if (!v3)
  {
    v8 = 0;
    v7 = 0xE000000000000000;
    goto LABEL_5;
  }

  v11 = 14906;
  v12 = 0xE200000000000000;
  v4 = ModelManagerError.underlyingErrors.getter();
  sub_197999C48(v4, v9);

  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v6 = sub_197A88148();
    MEMORY[0x19A8EAC80](v6);

    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    v8 = v11;
    v7 = v12;
LABEL_5:
    v9[0] = v0;
    v9[1] = v2;
    sub_197A878A8();
    MEMORY[0x19A8EAC80](v8, v7);

    return v9[0];
  }

  __break(1u);
  return result;
}

void sub_1979B65D0()
{
  sub_19796AAB0(&qword_1ED87DCE8, type metadata accessor for ModelManagerError, protocol conformance descriptor for ModelManagerError);

  JUMPOUT(0x19A8EA860);
}

uint64_t ModelManagerError.errorCode.getter()
{
  type metadata accessor for ModelManagerError(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_0();
  v4 = v3 - v2;
  OUTLINED_FUNCTION_4_3();
  sub_1979B6FD8(v0, v4, v5);
  OUTLINED_FUNCTION_60();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 1002;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      result = 1007;
      break;
    case 2:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      result = 1008;
      break;
    case 3:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      result = 1009;
      break;
    case 4:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      result = 1037;
      break;
    case 5:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      result = 1041;
      break;
    case 6:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      result = 1010;
      break;
    case 7:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      result = 1011;
      break;
    case 8:
    case 32:
      result = 1012;
      break;
    case 9:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      goto LABEL_16;
    case 10:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      result = 1015;
      break;
    case 11:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      result = 1016;
      break;
    case 12:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      result = 1018;
      break;
    case 13:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      result = 1019;
      break;
    case 14:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      result = 1020;
      break;
    case 15:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      result = 1021;
      break;
    case 16:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      result = 1025;
      break;
    case 17:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      result = 1022;
      break;
    case 18:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      result = 1023;
      break;
    case 19:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      result = 1024;
      break;
    case 20:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      result = 1026;
      break;
    case 21:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      result = 1028;
      break;
    case 22:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      result = 1031;
      break;
    case 23:
      result = 1032;
      break;
    case 24:
      result = 1035;
      break;
    case 25:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      result = 1038;
      break;
    case 26:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      result = 1040;
      break;
    case 27:
      return result;
    case 28:
      result = 1003;
      break;
    case 29:
      result = 1004;
      break;
    case 30:
      result = 1005;
      break;
    case 31:
      result = 1006;
      break;
    case 33:
LABEL_16:
      result = 1013;
      break;
    case 34:
      result = 1014;
      break;
    case 35:
      result = 1017;
      break;
    case 36:
      result = 1027;
      break;
    case 37:
      result = 1029;
      break;
    case 38:
      result = 1030;
      break;
    case 39:
      result = 1033;
      break;
    case 40:
      result = 1034;
      break;
    case 41:
      result = 1036;
      break;
    case 42:
      result = 1039;
      break;
    case 43:
      result = 1042;
      break;
    case 44:
      result = 1043;
      break;
    case 45:
      result = 1044;
      break;
    default:
      sub_1979B6F80(v4, type metadata accessor for ModelManagerError);
      result = 1001;
      break;
  }

  return result;
}

uint64_t ModelManagerError.init(wrapping:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B70, &unk_197A89668);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - v5;
  v7 = type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_27();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B68, &qword_197A89660);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v30 = a1;
  MEMORY[0x19A8EBBD0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  v18 = type metadata accessor for ModelManagerError(0);
  if (swift_dynamicCast())
  {

    __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
    OUTLINED_FUNCTION_5_3();
    return sub_1979B6F20(v17, a2, v19);
  }

  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  sub_197947A40(v17, &qword_1EAF48B68, &qword_197A89660);
  v30 = a1;
  MEMORY[0x19A8EBBD0](a1);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
    sub_197947A40(v6, &qword_1EAF48B70, &unk_197A89668);
    if (qword_1EAF48928 != -1)
    {
      swift_once();
    }

    v21 = sub_197A87608();
    __swift_project_value_buffer(v21, qword_1EAF491D8);
    MEMORY[0x19A8EBBD0](a1);
    v22 = sub_197A875E8();
    v23 = sub_197A87D58();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      MEMORY[0x19A8EBBD0](a1);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&dword_197941000, v22, v23, "ModelManagerError: got unrecognized error %@", v24, 0xCu);
      sub_197947A40(v25, &qword_1EAF48A90, &qword_197A891A0);
      MEMORY[0x19A8EBE00](v25, -1, -1);
      MEMORY[0x19A8EBE00](v24, -1, -1);
    }

    v30 = a1;
    *a2 = sub_197A87988();
    a2[1] = v27;
    return swift_storeEnumTagMultiPayload();
  }

  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  sub_1979B6F20(v6, v14, type metadata accessor for InferenceError);
  sub_1979B6FD8(v14, v11, type metadata accessor for InferenceError);
  if (swift_getEnumCaseMultiPayload() == 19)
  {
    sub_1979B6F80(v14, type metadata accessor for InferenceError);
    return swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_49_2();
  sub_1979B6F20(v14, a2, v28);
  swift_storeEnumTagMultiPayload();
  return sub_1979B6F80(v11, a1);
}

uint64_t sub_1979B6F20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1979B6F80(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1979B6FD8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for ModelManagerError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD3)
  {
    if (a2 + 45 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 45) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 46;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2E;
  v5 = v6 - 46;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ModelManagerError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 45 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 45) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD2)
  {
    v6 = ((a2 - 211) >> 8) + 1;
    *result = a2 + 45;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 45;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1979B74A4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1979B75E0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1979B76C0()
{
  result = qword_1EAF495E8;
  if (!qword_1EAF495E8)
  {
    result = swift_getWitnessTable(aUW, &type metadata for ModelManagerError.InvalidRemoteDeviceTypeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF495E8);
  }

  return result;
}

unint64_t sub_1979B7718()
{
  result = qword_1EAF495F0;
  if (!qword_1EAF495F0)
  {
    result = swift_getWitnessTable(byte_197A8E48C, &type metadata for ModelManagerError.InferenceProviderNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF495F0);
  }

  return result;
}

unint64_t sub_1979B7770()
{
  result = qword_1EAF495F8;
  if (!qword_1EAF495F8)
  {
    result = swift_getWitnessTable(byte_197A8E594, &type metadata for ModelManagerError.SessionAndInferenceProviderVersionMismatchCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF495F8);
  }

  return result;
}

unint64_t sub_1979B77C8()
{
  result = qword_1EAF49600;
  if (!qword_1EAF49600)
  {
    result = swift_getWitnessTable(asc_197A8E6EC, &type metadata for ModelManagerError.InferenceProviderCrashedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49600);
  }

  return result;
}

unint64_t sub_1979B7820()
{
  result = qword_1EAF49608;
  if (!qword_1EAF49608)
  {
    result = swift_getWitnessTable(byte_197A8E7A4, &type metadata for ModelManagerError.PolicyNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49608);
  }

  return result;
}

unint64_t sub_1979B7878()
{
  result = qword_1EAF49610;
  if (!qword_1EAF49610)
  {
    result = swift_getWitnessTable(aM_30, &type metadata for ModelManagerError.AssetNotAvailableInModelCatalogCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49610);
  }

  return result;
}

unint64_t sub_1979B78D0()
{
  result = qword_1EAF49618;
  if (!qword_1EAF49618)
  {
    result = swift_getWitnessTable(aE_32, &type metadata for ModelManagerError.ModelCatalogErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49618);
  }

  return result;
}

unint64_t sub_1979B7928()
{
  result = qword_1EAF49620;
  if (!qword_1EAF49620)
  {
    result = swift_getWitnessTable(byte_197A8EABC, &type metadata for ModelManagerError.InvalidRequestRequiredAssetIDsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49620);
  }

  return result;
}

unint64_t sub_1979B7980()
{
  result = qword_1EAF49628;
  if (!qword_1EAF49628)
  {
    result = swift_getWitnessTable(aBW_0, &type metadata for ModelManagerError.InvalidRequestModelBundleIDCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49628);
  }

  return result;
}

unint64_t sub_1979B79D8()
{
  result = qword_1EAF49630;
  if (!qword_1EAF49630)
  {
    result = swift_getWitnessTable(byte_197A8EC2C, &type metadata for ModelManagerError.SessionNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49630);
  }

  return result;
}

unint64_t sub_1979B7A30()
{
  result = qword_1EAF49638;
  if (!qword_1EAF49638)
  {
    result = swift_getWitnessTable(aE_33, &type metadata for ModelManagerError.AssetDoesNotSupportDynamicModeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49638);
  }

  return result;
}

unint64_t sub_1979B7A88()
{
  result = qword_1EAF49640;
  if (!qword_1EAF49640)
  {
    result = swift_getWitnessTable(byte_197A8ED9C, &type metadata for ModelManagerError.NoCommonInferenceProviderForAssetsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49640);
  }

  return result;
}

unint64_t sub_1979B7AE0()
{
  result = qword_1EAF49648;
  if (!qword_1EAF49648)
  {
    result = swift_getWitnessTable(byte_197A8EE54, &type metadata for ModelManagerError.UnrecognizedModelCatalogResourceCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49648);
  }

  return result;
}

unint64_t sub_1979B7B38()
{
  result = qword_1EAF49650;
  if (!qword_1EAF49650)
  {
    result = swift_getWitnessTable(asc_197A8EF0C, &type metadata for ModelManagerError.AssetNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49650);
  }

  return result;
}

unint64_t sub_1979B7B90()
{
  result = qword_1EAF49658;
  if (!qword_1EAF49658)
  {
    result = swift_getWitnessTable(byte_197A8EFC4, &type metadata for ModelManagerError.AssetBundleNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49658);
  }

  return result;
}

unint64_t sub_1979B7BE8()
{
  result = qword_1EAF49660;
  if (!qword_1EAF49660)
  {
    result = swift_getWitnessTable(asc_197A8F0CC, &type metadata for ModelManagerError.SessionInCancelStateCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49660);
  }

  return result;
}

unint64_t sub_1979B7C40()
{
  result = qword_1EAF49668;
  if (!qword_1EAF49668)
  {
    result = swift_getWitnessTable(aSWlm, &type metadata for ModelManagerError.RequestNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49668);
  }

  return result;
}

unint64_t sub_1979B7C98()
{
  result = qword_1EAF49670;
  if (!qword_1EAF49670)
  {
    result = swift_getWitnessTable(byte_197A8F28C, &type metadata for ModelManagerError.DeniedDueToSpecifiedSystemStateCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49670);
  }

  return result;
}

unint64_t sub_1979B7CF0()
{
  result = qword_1EAF49678;
  if (!qword_1EAF49678)
  {
    result = swift_getWitnessTable(byte_197A8F394, &type metadata for ModelManagerError.InsufficientSystemResourcesWithJetsamReasonCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49678);
  }

  return result;
}

unint64_t sub_1979B7D48()
{
  result = qword_1EAF49680;
  if (!qword_1EAF49680)
  {
    result = swift_getWitnessTable(byte_197A8F49C, &type metadata for ModelManagerError.UseCaseDisabledCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49680);
  }

  return result;
}

unint64_t sub_1979B7DA0()
{
  result = qword_1EAF49688;
  if (!qword_1EAF49688)
  {
    result = swift_getWitnessTable(byte_197A8F554, &type metadata for ModelManagerError.UnrecognizedInferenceProviderCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49688);
  }

  return result;
}

unint64_t sub_1979B7DF8()
{
  result = qword_1EAF49690;
  if (!qword_1EAF49690)
  {
    result = swift_getWitnessTable(asc_197A8F60C, &type metadata for ModelManagerError.IpcErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49690);
  }

  return result;
}

unint64_t sub_1979B7E50()
{
  result = qword_1EAF49698;
  if (!qword_1EAF49698)
  {
    result = swift_getWitnessTable(byte_197A8F6C4, &type metadata for ModelManagerError.RemoteXPCErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF49698);
  }

  return result;
}

unint64_t sub_1979B7EA8()
{
  result = qword_1EAF496A0;
  if (!qword_1EAF496A0)
  {
    result = swift_getWitnessTable(aW_9, &type metadata for ModelManagerError.XpcErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF496A0);
  }

  return result;
}

unint64_t sub_1979B7F00()
{
  result = qword_1EAF496A8;
  if (!qword_1EAF496A8)
  {
    result = swift_getWitnessTable(byte_197A8F834, &type metadata for ModelManagerError.UnrecognizedUnderlyingErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF496A8);
  }

  return result;
}

unint64_t sub_1979B7F58()
{
  result = qword_1EAF496B0;
  if (!qword_1EAF496B0)
  {
    result = swift_getWitnessTable(asc_197A8F8EC, &type metadata for ModelManagerError.MissingEntitlementCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF496B0);
  }

  return result;
}

unint64_t sub_1979B7FB0()
{
  result = qword_1EAF496B8;
  if (!qword_1EAF496B8)
  {
    result = swift_getWitnessTable(byte_197A8FB34, &type metadata for ModelManagerError.InferenceErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF496B8);
  }

  return result;
}

unint64_t sub_1979B8008()
{
  result = qword_1EAF496C0;
  if (!qword_1EAF496C0)
  {
    result = swift_getWitnessTable(asc_197A8FBEC, &type metadata for ModelManagerError.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF496C0);
  }

  return result;
}

unint64_t sub_1979B8060()
{
  result = qword_1ED8801A8;
  if (!qword_1ED8801A8)
  {
    result = swift_getWitnessTable(aM_31, &type metadata for ModelManagerError.InferenceErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8801A8);
  }

  return result;
}

unint64_t sub_1979B80B8()
{
  result = qword_1ED8801B0;
  if (!qword_1ED8801B0)
  {
    result = swift_getWitnessTable(aE_34, &type metadata for ModelManagerError.InferenceErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8801B0);
  }

  return result;
}

unint64_t sub_1979B8110()
{
  result = qword_1ED880198;
  if (!qword_1ED880198)
  {
    result = swift_getWitnessTable(byte_197A8FA54, &type metadata for ModelManagerError.UndefinedErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880198);
  }

  return result;
}

unint64_t sub_1979B8168()
{
  result = qword_1ED8801A0;
  if (!qword_1ED8801A0)
  {
    result = swift_getWitnessTable(byte_197A8FA7C, &type metadata for ModelManagerError.UndefinedErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8801A0);
  }

  return result;
}

unint64_t sub_1979B81C0()
{
  result = qword_1ED8800F0;
  if (!qword_1ED8800F0)
  {
    result = swift_getWitnessTable(byte_197A8FA04, &type metadata for ModelManagerError.MissingFeatureFlagCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8800F0);
  }

  return result;
}

unint64_t sub_1979B8218()
{
  result = qword_1ED8800F8;
  if (!qword_1ED8800F8)
  {
    result = swift_getWitnessTable(byte_197A8FA2C, &type metadata for ModelManagerError.MissingFeatureFlagCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8800F8);
  }

  return result;
}

unint64_t sub_1979B8270()
{
  result = qword_1ED87FFE0;
  if (!qword_1ED87FFE0)
  {
    result = swift_getWitnessTable(asc_197A8F9B4, &type metadata for ModelManagerError.UnsupportedNumberOfAssetBundlesCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FFE0);
  }

  return result;
}

unint64_t sub_1979B82C8()
{
  result = qword_1ED87FFE8;
  if (!qword_1ED87FFE8)
  {
    result = swift_getWitnessTable(aU_34, &type metadata for ModelManagerError.UnsupportedNumberOfAssetBundlesCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FFE8);
  }

  return result;
}

unint64_t sub_1979B8320()
{
  result = qword_1ED8801B8;
  if (!qword_1ED8801B8)
  {
    result = swift_getWitnessTable(byte_197A8F964, &type metadata for ModelManagerError.InternalErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8801B8);
  }

  return result;
}

unint64_t sub_1979B8378()
{
  result = qword_1ED8801C0;
  if (!qword_1ED8801C0)
  {
    result = swift_getWitnessTable(byte_197A8F98C, &type metadata for ModelManagerError.InternalErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8801C0);
  }

  return result;
}

unint64_t sub_1979B83D0()
{
  result = qword_1ED880050;
  if (!qword_1ED880050)
  {
    result = swift_getWitnessTable(aW_10, &type metadata for ModelManagerError.NotSupportedOnExternalBuildCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880050);
  }

  return result;
}

unint64_t sub_1979B8428()
{
  result = qword_1ED880058;
  if (!qword_1ED880058)
  {
    result = swift_getWitnessTable(byte_197A8F93C, &type metadata for ModelManagerError.NotSupportedOnExternalBuildCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880058);
  }

  return result;
}

unint64_t sub_1979B8480()
{
  result = qword_1ED880100;
  if (!qword_1ED880100)
  {
    result = swift_getWitnessTable(byte_197A8F85C, &type metadata for ModelManagerError.MissingEntitlementCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880100);
  }

  return result;
}

unint64_t sub_1979B84D8()
{
  result = qword_1ED880108;
  if (!qword_1ED880108)
  {
    result = swift_getWitnessTable(byte_197A8F884, &type metadata for ModelManagerError.MissingEntitlementCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880108);
  }

  return result;
}

unint64_t sub_1979B8530()
{
  result = qword_1ED8801D8;
  if (!qword_1ED8801D8)
  {
    result = swift_getWitnessTable(aM_32, &type metadata for ModelManagerError.UnrecognizedUnderlyingErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8801D8);
  }

  return result;
}

unint64_t sub_1979B8588()
{
  result = qword_1ED8801E0;
  if (!qword_1ED8801E0)
  {
    result = swift_getWitnessTable(aE_35, &type metadata for ModelManagerError.UnrecognizedUnderlyingErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8801E0);
  }

  return result;
}

unint64_t sub_1979B85E0()
{
  result = qword_1ED8801C8;
  if (!qword_1ED8801C8)
  {
    result = swift_getWitnessTable(byte_197A8F6EC, &type metadata for ModelManagerError.XpcErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8801C8);
  }

  return result;
}

unint64_t sub_1979B8638()
{
  result = qword_1ED8801D0;
  if (!qword_1ED8801D0)
  {
    result = swift_getWitnessTable(byte_197A8F714, &type metadata for ModelManagerError.XpcErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8801D0);
  }

  return result;
}

unint64_t sub_1979B8690()
{
  result = qword_1ED87FED0;
  if (!qword_1ED87FED0)
  {
    result = swift_getWitnessTable(byte_197A8F634, &type metadata for ModelManagerError.RemoteXPCErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FED0);
  }

  return result;
}

unint64_t sub_1979B86E8()
{
  result = qword_1ED87FED8;
  if (!qword_1ED87FED8)
  {
    result = swift_getWitnessTable(aW0g, &type metadata for ModelManagerError.RemoteXPCErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FED8);
  }

  return result;
}

unint64_t sub_1979B8740()
{
  result = qword_1ED87FEE0;
  if (!qword_1ED87FEE0)
  {
    result = swift_getWitnessTable(aU_35, &type metadata for ModelManagerError.IpcErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FEE0);
  }

  return result;
}

unint64_t sub_1979B8798()
{
  result = qword_1ED87FEE8;
  if (!qword_1ED87FEE8)
  {
    result = swift_getWitnessTable(byte_197A8F5A4, &type metadata for ModelManagerError.IpcErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FEE8);
  }

  return result;
}

unint64_t sub_1979B87F0()
{
  result = qword_1ED880030;
  if (!qword_1ED880030)
  {
    result = swift_getWitnessTable(asc_197A8F4C4, &type metadata for ModelManagerError.UnrecognizedInferenceProviderCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880030);
  }

  return result;
}

unint64_t sub_1979B8848()
{
  result = qword_1ED880038;
  if (!qword_1ED880038)
  {
    result = swift_getWitnessTable(aE_36, &type metadata for ModelManagerError.UnrecognizedInferenceProviderCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880038);
  }

  return result;
}

unint64_t sub_1979B88A0()
{
  result = qword_1ED880120;
  if (!qword_1ED880120)
  {
    result = swift_getWitnessTable(byte_197A8F40C, &type metadata for ModelManagerError.UseCaseDisabledCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880120);
  }

  return result;
}

unint64_t sub_1979B88F8()
{
  result = qword_1ED880128;
  if (!qword_1ED880128)
  {
    result = swift_getWitnessTable(byte_197A8F434, &type metadata for ModelManagerError.UseCaseDisabledCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880128);
  }

  return result;
}

unint64_t sub_1979B8950()
{
  result = qword_1ED880060;
  if (!qword_1ED880060)
  {
    result = swift_getWitnessTable(a5_14, &type metadata for ModelManagerError.InsufficientSystemResourcesCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880060);
  }

  return result;
}

unint64_t sub_1979B89A8()
{
  result = qword_1ED880068;
  if (!qword_1ED880068)
  {
    result = swift_getWitnessTable(aM_33, &type metadata for ModelManagerError.InsufficientSystemResourcesCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880068);
  }

  return result;
}

unint64_t sub_1979B8A00()
{
  result = qword_1ED87FFC0;
  if (!qword_1ED87FFC0)
  {
    result = swift_getWitnessTable(byte_197A8F304, &type metadata for ModelManagerError.InsufficientSystemResourcesWithJetsamReasonCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FFC0);
  }

  return result;
}

unint64_t sub_1979B8A58()
{
  result = qword_1ED87FFC8;
  if (!qword_1ED87FFC8)
  {
    result = swift_getWitnessTable(byte_197A8F32C, &type metadata for ModelManagerError.InsufficientSystemResourcesWithJetsamReasonCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FFC8);
  }

  return result;
}

unint64_t sub_1979B8AB0()
{
  result = qword_1ED880090;
  if (!qword_1ED880090)
  {
    result = swift_getWitnessTable(asc_197A8F2B4, &type metadata for ModelManagerError.DeniedDueToSystemStateCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880090);
  }

  return result;
}

unint64_t sub_1979B8B08()
{
  result = qword_1ED880098;
  if (!qword_1ED880098)
  {
    result = swift_getWitnessTable(aU_36, &type metadata for ModelManagerError.DeniedDueToSystemStateCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880098);
  }

  return result;
}

unint64_t sub_1979B8B60()
{
  result = qword_1ED880000;
  if (!qword_1ED880000)
  {
    result = swift_getWitnessTable(byte_197A8F1FC, &type metadata for ModelManagerError.DeniedDueToSpecifiedSystemStateCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880000);
  }

  return result;
}

unint64_t sub_1979B8BB8()
{
  result = qword_1ED880008;
  if (!qword_1ED880008)
  {
    result = swift_getWitnessTable(asc_197A8F224, &type metadata for ModelManagerError.DeniedDueToSpecifiedSystemStateCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880008);
  }

  return result;
}

unint64_t sub_1979B8C10()
{
  result = qword_1ED880040;
  if (!qword_1ED880040)
  {
    result = swift_getWitnessTable(aE_37, &type metadata for ModelManagerError.OnBehalfOfProcessNotRunningCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880040);
  }

  return result;
}

unint64_t sub_1979B8C68()
{
  result = qword_1ED880048;
  if (!qword_1ED880048)
  {
    result = swift_getWitnessTable(asc_197A8F1D4, &type metadata for ModelManagerError.OnBehalfOfProcessNotRunningCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880048);
  }

  return result;
}

unint64_t sub_1979B8CC0()
{
  result = qword_1ED880140;
  if (!qword_1ED880140)
  {
    result = swift_getWitnessTable(byte_197A8F0F4, &type metadata for ModelManagerError.RequestNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880140);
  }

  return result;
}

unint64_t sub_1979B8D18()
{
  result = qword_1ED880148;
  if (!qword_1ED880148)
  {
    result = swift_getWitnessTable(byte_197A8F11C, &type metadata for ModelManagerError.RequestNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880148);
  }

  return result;
}

unint64_t sub_1979B8D70()
{
  result = qword_1ED8800B0;
  if (!qword_1ED8800B0)
  {
    result = swift_getWitnessTable(byte_197A8F03C, &type metadata for ModelManagerError.SessionInCancelStateCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8800B0);
  }

  return result;
}

unint64_t sub_1979B8DC8()
{
  result = qword_1ED8800B8;
  if (!qword_1ED8800B8)
  {
    result = swift_getWitnessTable(aOW, &type metadata for ModelManagerError.SessionInCancelStateCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8800B8);
  }

  return result;
}

unint64_t sub_1979B8E20()
{
  result = qword_1ED8800E0;
  if (!qword_1ED8800E0)
  {
    result = swift_getWitnessTable(byte_197A8EFEC, &type metadata for ModelManagerError.OperationCancelledCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8800E0);
  }

  return result;
}

unint64_t sub_1979B8E78()
{
  result = qword_1ED8800E8;
  if (!qword_1ED8800E8)
  {
    result = swift_getWitnessTable(byte_197A8F014, &type metadata for ModelManagerError.OperationCancelledCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8800E8);
  }

  return result;
}

unint64_t sub_1979B8ED0()
{
  result = qword_1ED8800C0;
  if (!qword_1ED8800C0)
  {
    result = swift_getWitnessTable(byte_197A8EF34, &type metadata for ModelManagerError.AssetBundleNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8800C0);
  }

  return result;
}

unint64_t sub_1979B8F28()
{
  result = qword_1ED8800C8;
  if (!qword_1ED8800C8)
  {
    result = swift_getWitnessTable(aEW, &type metadata for ModelManagerError.AssetBundleNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8800C8);
  }

  return result;
}

unint64_t sub_1979B8F80()
{
  result = qword_1ED880160;
  if (!qword_1ED880160)
  {
    result = swift_getWitnessTable(aU_37, &type metadata for ModelManagerError.AssetNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880160);
  }

  return result;
}

unint64_t sub_1979B8FD8()
{
  result = qword_1ED880168;
  if (!qword_1ED880168)
  {
    result = swift_getWitnessTable(byte_197A8EEA4, &type metadata for ModelManagerError.AssetNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880168);
  }

  return result;
}

unint64_t sub_1979B9030()
{
  result = qword_1ED880208;
  if (!qword_1ED880208)
  {
    result = swift_getWitnessTable(asc_197A8EDC4, &type metadata for ModelManagerError.UnrecognizedModelCatalogResourceCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880208);
  }

  return result;
}

unint64_t sub_1979B9088()
{
  result = qword_1ED880210;
  if (!qword_1ED880210)
  {
    result = swift_getWitnessTable(aE_38, &type metadata for ModelManagerError.UnrecognizedModelCatalogResourceCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880210);
  }

  return result;
}

unint64_t sub_1979B90E0()
{
  result = qword_1ED87FFD0;
  if (!qword_1ED87FFD0)
  {
    result = swift_getWitnessTable(byte_197A8ED0C, &type metadata for ModelManagerError.NoCommonInferenceProviderForAssetsCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FFD0);
  }

  return result;
}

unint64_t sub_1979B9138()
{
  result = qword_1ED87FFD8;
  if (!qword_1ED87FFD8)
  {
    result = swift_getWitnessTable(byte_197A8ED34, &type metadata for ModelManagerError.NoCommonInferenceProviderForAssetsCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FFD8);
  }

  return result;
}

unint64_t sub_1979B9190()
{
  result = qword_1ED880020;
  if (!qword_1ED880020)
  {
    result = swift_getWitnessTable(byte_197A8EC54, &type metadata for ModelManagerError.AssetDoesNotSupportDynamicModeCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880020);
  }

  return result;
}

unint64_t sub_1979B91E8()
{
  result = qword_1ED880028;
  if (!qword_1ED880028)
  {
    result = swift_getWitnessTable(byte_197A8EC7C, &type metadata for ModelManagerError.AssetDoesNotSupportDynamicModeCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880028);
  }

  return result;
}

unint64_t sub_1979B9240()
{
  result = qword_1ED880130;
  if (!qword_1ED880130)
  {
    result = swift_getWitnessTable(aU_38, &type metadata for ModelManagerError.SessionNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880130);
  }

  return result;
}

unint64_t sub_1979B9298()
{
  result = qword_1ED880138;
  if (!qword_1ED880138)
  {
    result = swift_getWitnessTable(aM_34, &type metadata for ModelManagerError.SessionNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880138);
  }

  return result;
}

unint64_t sub_1979B92F0()
{
  result = qword_1ED8801F8;
  if (!qword_1ED8801F8)
  {
    result = swift_getWitnessTable(asc_197A8EAE4, &type metadata for ModelManagerError.InvalidRequestModelBundleIDCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8801F8);
  }

  return result;
}

unint64_t sub_1979B9348()
{
  result = qword_1ED880200;
  if (!qword_1ED880200)
  {
    result = swift_getWitnessTable(asc_197A8EB0C, &type metadata for ModelManagerError.InvalidRequestModelBundleIDCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880200);
  }

  return result;
}

unint64_t sub_1979B93A0()
{
  result = qword_1ED880010;
  if (!qword_1ED880010)
  {
    result = swift_getWitnessTable(aUW_0, &type metadata for ModelManagerError.InvalidRequestRequiredAssetIDsCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880010);
  }

  return result;
}

unint64_t sub_1979B93F8()
{
  result = qword_1ED880018;
  if (!qword_1ED880018)
  {
    result = swift_getWitnessTable(aW_11, &type metadata for ModelManagerError.InvalidRequestRequiredAssetIDsCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880018);
  }

  return result;
}

unint64_t sub_1979B9450()
{
  result = qword_1ED880188;
  if (!qword_1ED880188)
  {
    result = swift_getWitnessTable(asc_197A8E974, &type metadata for ModelManagerError.ModelCatalogErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880188);
  }

  return result;
}

unint64_t sub_1979B94A8()
{
  result = qword_1ED880190;
  if (!qword_1ED880190)
  {
    result = swift_getWitnessTable(byte_197A8E99C, &type metadata for ModelManagerError.ModelCatalogErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880190);
  }

  return result;
}

unint64_t sub_1979B9500()
{
  result = qword_1ED880080;
  if (!qword_1ED880080)
  {
    result = swift_getWitnessTable(aWW, &type metadata for ModelManagerError.DeniedAssertionBySystemCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880080);
  }

  return result;
}

unint64_t sub_1979B9558()
{
  result = qword_1ED880088;
  if (!qword_1ED880088)
  {
    result = swift_getWitnessTable(byte_197A8E94C, &type metadata for ModelManagerError.DeniedAssertionBySystemCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880088);
  }

  return result;
}

unint64_t sub_1979B95B0()
{
  result = qword_1ED8801E8;
  if (!qword_1ED8801E8)
  {
    result = swift_getWitnessTable(byte_197A8E86C, &type metadata for ModelManagerError.AssetNotAvailableInModelCatalogCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8801E8);
  }

  return result;
}

unint64_t sub_1979B9608()
{
  result = qword_1ED8801F0;
  if (!qword_1ED8801F0)
  {
    result = swift_getWitnessTable(byte_197A8E894, &type metadata for ModelManagerError.AssetNotAvailableInModelCatalogCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8801F0);
  }

  return result;
}

unint64_t sub_1979B9660()
{
  result = qword_1ED8800D0;
  if (!qword_1ED8800D0)
  {
    result = swift_getWitnessTable(aW_12, &type metadata for ModelManagerError.PolicyNotAvailableCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8800D0);
  }

  return result;
}

unint64_t sub_1979B96B8()
{
  result = qword_1ED8800D8;
  if (!qword_1ED8800D8)
  {
    result = swift_getWitnessTable(byte_197A8E844, &type metadata for ModelManagerError.PolicyNotAvailableCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8800D8);
  }

  return result;
}

unint64_t sub_1979B9710()
{
  result = qword_1ED880110;
  if (!qword_1ED880110)
  {
    result = swift_getWitnessTable(asc_197A8E7CC, &type metadata for ModelManagerError.DeviceNotEligibleCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880110);
  }

  return result;
}

unint64_t sub_1979B9768()
{
  result = qword_1ED880118;
  if (!qword_1ED880118)
  {
    result = swift_getWitnessTable(asc_197A8E7F4, &type metadata for ModelManagerError.DeviceNotEligibleCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880118);
  }

  return result;
}

unint64_t sub_1979B97C0()
{
  result = qword_1ED880150;
  if (!qword_1ED880150)
  {
    result = swift_getWitnessTable(aW_13, &type metadata for ModelManagerError.PolicyNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880150);
  }

  return result;
}

unint64_t sub_1979B9818()
{
  result = qword_1ED880158;
  if (!qword_1ED880158)
  {
    result = swift_getWitnessTable(byte_197A8E73C, &type metadata for ModelManagerError.PolicyNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880158);
  }

  return result;
}

unint64_t sub_1979B9870()
{
  result = qword_1ED880070;
  if (!qword_1ED880070)
  {
    result = swift_getWitnessTable(byte_197A8E65C, &type metadata for ModelManagerError.InferenceProviderCrashedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880070);
  }

  return result;
}

unint64_t sub_1979B98C8()
{
  result = qword_1ED880078;
  if (!qword_1ED880078)
  {
    result = swift_getWitnessTable(byte_197A8E684, &type metadata for ModelManagerError.InferenceProviderCrashedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880078);
  }

  return result;
}

unint64_t sub_1979B9920()
{
  result = qword_1ED87FFF0;
  if (!qword_1ED87FFF0)
  {
    result = swift_getWitnessTable(byte_197A8E60C, &type metadata for ModelManagerError.UnableToForceAssetVersionSwitchCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FFF0);
  }

  return result;
}

unint64_t sub_1979B9978()
{
  result = qword_1ED87FFF8;
  if (!qword_1ED87FFF8)
  {
    result = swift_getWitnessTable(byte_197A8E634, &type metadata for ModelManagerError.UnableToForceAssetVersionSwitchCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FFF8);
  }

  return result;
}

unint64_t sub_1979B99D0()
{
  result = qword_1ED8800A0;
  if (!qword_1ED8800A0)
  {
    result = swift_getWitnessTable(a5_15, &type metadata for ModelManagerError.CancelledByPreemptionCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8800A0);
  }

  return result;
}

unint64_t sub_1979B9A28()
{
  result = qword_1ED8800A8;
  if (!qword_1ED8800A8)
  {
    result = swift_getWitnessTable(aM_35, &type metadata for ModelManagerError.CancelledByPreemptionCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED8800A8);
  }

  return result;
}

unint64_t sub_1979B9A80()
{
  result = qword_1ED87FE70;
  if (!qword_1ED87FE70)
  {
    result = swift_getWitnessTable(byte_197A8E504, &type metadata for ModelManagerError.SessionAndInferenceProviderVersionMismatchCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FE70);
  }

  return result;
}

unint64_t sub_1979B9AD8()
{
  result = qword_1ED87FE78;
  if (!qword_1ED87FE78)
  {
    result = swift_getWitnessTable(byte_197A8E52C, &type metadata for ModelManagerError.SessionAndInferenceProviderVersionMismatchCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FE78);
  }

  return result;
}

unint64_t sub_1979B9B30()
{
  result = qword_1ED87FEC0;
  if (!qword_1ED87FEC0)
  {
    result = swift_getWitnessTable(asc_197A8E4B4, &type metadata for ModelManagerError.InvalidInputStreamCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FEC0);
  }

  return result;
}

unint64_t sub_1979B9B88()
{
  result = qword_1ED87FEC8;
  if (!qword_1ED87FEC8)
  {
    result = swift_getWitnessTable(aU_39, &type metadata for ModelManagerError.InvalidInputStreamCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FEC8);
  }

  return result;
}

unint64_t sub_1979B9BE0()
{
  result = qword_1ED87FE90;
  if (!qword_1ED87FE90)
  {
    result = swift_getWitnessTable(byte_197A8E3FC, &type metadata for ModelManagerError.InferenceProviderNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FE90);
  }

  return result;
}

unint64_t sub_1979B9C38()
{
  result = qword_1ED87FE98;
  if (!qword_1ED87FE98)
  {
    result = swift_getWitnessTable(asc_197A8E424, &type metadata for ModelManagerError.InferenceProviderNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FE98);
  }

  return result;
}

unint64_t sub_1979B9C90()
{
  result = qword_1ED87FE80;
  if (!qword_1ED87FE80)
  {
    result = swift_getWitnessTable(aE_39, &type metadata for ModelManagerError.CannotPerformHostInferenceCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FE80);
  }

  return result;
}

unint64_t sub_1979B9CE8()
{
  result = qword_1ED87FE88;
  if (!qword_1ED87FE88)
  {
    result = swift_getWitnessTable(asc_197A8E3D4, &type metadata for ModelManagerError.CannotPerformHostInferenceCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FE88);
  }

  return result;
}

unint64_t sub_1979B9D40()
{
  result = qword_1ED87FEA0;
  if (!qword_1ED87FEA0)
  {
    result = swift_getWitnessTable(byte_197A8E2F4, &type metadata for ModelManagerError.InvalidRemoteDeviceTypeCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FEA0);
  }

  return result;
}

unint64_t sub_1979B9D98()
{
  result = qword_1ED87FEA8;
  if (!qword_1ED87FEA8)
  {
    result = swift_getWitnessTable(byte_197A8E31C, &type metadata for ModelManagerError.InvalidRemoteDeviceTypeCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FEA8);
  }

  return result;
}

unint64_t sub_1979B9DF0()
{
  result = qword_1ED87FEB0;
  if (!qword_1ED87FEB0)
  {
    result = swift_getWitnessTable(aM_36, &type metadata for ModelManagerError.InvalidClientIdentifierCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FEB0);
  }

  return result;
}

unint64_t sub_1979B9E48()
{
  result = qword_1ED87FEB8;
  if (!qword_1ED87FEB8)
  {
    result = swift_getWitnessTable(aE_40, &type metadata for ModelManagerError.InvalidClientIdentifierCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FEB8);
  }

  return result;
}

unint64_t sub_1979B9EA0()
{
  result = qword_1ED87FC30;
  if (!qword_1ED87FC30)
  {
    result = swift_getWitnessTable(byte_197A8E254, &type metadata for ModelManagerError.RateLimitedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FC30);
  }

  return result;
}

unint64_t sub_1979B9EF8()
{
  result = qword_1ED87FA48;
  if (!qword_1ED87FA48)
  {
    result = swift_getWitnessTable(byte_197A8E27C, &type metadata for ModelManagerError.RateLimitedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FA48);
  }

  return result;
}

unint64_t sub_1979B9F50()
{
  result = qword_1ED87F880;
  if (!qword_1ED87F880)
  {
    result = swift_getWitnessTable(byte_197A8E204, &type metadata for ModelManagerError.InvalidInferenceProviderCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F880);
  }

  return result;
}

unint64_t sub_1979B9FA8()
{
  result = qword_1ED87E8B8;
  if (!qword_1ED87E8B8)
  {
    result = swift_getWitnessTable(byte_197A8E22C, &type metadata for ModelManagerError.InvalidInferenceProviderCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87E8B8);
  }

  return result;
}

unint64_t sub_1979BA000()
{
  result = qword_1ED880170;
  if (!qword_1ED880170)
  {
    result = swift_getWitnessTable(byte_197A8FB5C, &type metadata for ModelManagerError.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880170);
  }

  return result;
}

unint64_t sub_1979BA058()
{
  result = qword_1ED880178;
  if (!qword_1ED880178)
  {
    result = swift_getWitnessTable(byte_197A8FB84, &type metadata for ModelManagerError.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED880178);
  }

  return result;
}

uint64_t TaskCancellingXPCReceivedMessage.__allocating_init(isSync:auditToken:request:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v5 = a1;
  v6 = swift_allocObject();
  TaskCancellingXPCReceivedMessage.init(isSync:auditToken:request:)(v5, a2, a3);
  return v6;
}

uint64_t *TaskCancellingXPCReceivedMessage.init(isSync:auditToken:request:)(char a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *(v3 + 20) = *a2;
  v5 = *v3;
  *(v3 + 16) = a1;
  *(v3 + 36) = v4;
  (*(*(*(v5 + 80) - 8) + 32))(v3 + *(v5 + 120), a3);
  return v3;
}

unint64_t sub_1979BA1E8()
{
  result = sub_1979BA258(0x3E8uLL);
  if (is_mul_ok(result, 0x186A0uLL))
  {
    v1 = 100000 * result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF496C8, &unk_197A90BE0);
    result = swift_allocObject();
    *(result + 24) = 0;
    *(result + 16) = v1;
    off_1ED880288 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1979BA258(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x19A8EBE10](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x19A8EBE10](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1979BA2E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  OUTLINED_FUNCTION_34_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = (v10 - v9);
  v12 = *(v7 + 16);
  v12(v10 - v9, v3, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (v12)(a2, v3, a1);
  }

  v14 = *v11;
  v15 = *(a1 + 16);
  v16 = *(swift_getTupleTypeMetadata3() + 48);
  *a2 = v14;
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 8))(&v11[v16], v15);
}

uint64_t sub_1979BA440(uint64_t a1)
{
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_0();
  v5 = (v4 - v3);
  (*(v6 + 16))(v4 - v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v5;
  if (EnumCaseMultiPayload != 1)
  {
    v9 = *(a1 + 16);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    (*(*(v9 - 8) + 8))(&v5[*(TupleTypeMetadata3 + 48)], v9);
  }

  return v8;
}

uint64_t sub_1979BA560(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64) + ((*(*(*(a3 + 16) - 8) + 80) + 8) & ~*(*(*(a3 + 16) - 8) + 80));
  v4 = 8;
  if (v3 + 1 > 8)
  {
    v4 = v3 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}