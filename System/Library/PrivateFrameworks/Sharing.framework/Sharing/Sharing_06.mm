unint64_t sub_1A97E9EF8()
{
  result = qword_1EB3B1E90;
  if (!qword_1EB3B1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1E90);
  }

  return result;
}

uint64_t sub_1A97E9F4C(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDrop.NetworkMetrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A97E9FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDrop.NetworkMetrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A97EA034(uint64_t a1)
{
  sub_1A97EA0E0(319);
  if (v1 <= 0x3F)
  {
    sub_1A97EA138();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A97EA0E0(uint64_t a1)
{
  if (!qword_1EB3AC8A0)
  {
    sub_1A9976230();
    v1 = sub_1A99770A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB3AC8A0);
    }
  }
}

void sub_1A97EA138()
{
  if (!qword_1EB3AB718)
  {
    v0 = sub_1A99770A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3AB718);
    }
  }
}

unint64_t sub_1A97EA19C()
{
  result = qword_1EB3B1EA0;
  if (!qword_1EB3B1EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1EA0);
  }

  return result;
}

unint64_t sub_1A97EA1F4()
{
  result = qword_1EB3B1EA8;
  if (!qword_1EB3B1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1EA8);
  }

  return result;
}

unint64_t sub_1A97EA24C()
{
  result = qword_1EB3B1EB0;
  if (!qword_1EB3B1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1EB0);
  }

  return result;
}

uint64_t sub_1A97EA2A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6174536F6C6C6568 && a2 == 0xEA00000000007472;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65536F6C6C6568 && a2 == 0xE900000000000074 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69466F6C6C6568 && a2 == 0xEB00000000687369 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74726174536B7361 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E65536B7361 && a2 == 0xE700000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73696E69466B7361 && a2 == 0xE900000000000068 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x745364616F6C7075 && a2 == 0xEB00000000747261 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x694664616F6C7075 && a2 == 0xEC0000006873696ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E3FE0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x525564616F6C7075 && a2 == 0xEE00746E756F434CLL || (sub_1A99777E0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1769173874 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A99E3ED0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A99E3EF0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1A97EA6D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A9976230();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SFBoopController.send<A>(_:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A97EA760, 0, 0);
}

uint64_t sub_1A97EA760()
{
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = sub_1A99767E0();
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    v4 = v3;
    v5 = sub_1A99767E0();
    v6 = [v4 stringForKey_];

    if (v6)
    {
      v7 = sub_1A9976820();
      v9 = v8;

      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        v11 = v7 == 0xD000000000000012 && 0x80000001A99E4040 == v9;
        if (v11 || (sub_1A99777E0() & 1) != 0)
        {

          v12 = 1;
LABEL_12:
          sub_1A97EAA08();
          swift_allocError();
          *v13 = v12;
          swift_willThrow();

          v14 = v0[1];
          goto LABEL_16;
        }

        if (v7 == 0x726566736E617274 && v9 == 0xEE0064656C696146 || (sub_1A99777E0() & 1) != 0)
        {

          v12 = 0;
          goto LABEL_12;
        }

        if (v7 == 0x74754F64656D6974 && v9 == 0xE800000000000000)
        {

LABEL_27:
          v12 = 2;
          goto LABEL_12;
        }

        v16 = sub_1A99777E0();

        if (v16)
        {
          goto LABEL_27;
        }
      }

      else
      {
      }
    }
  }

  (*(*(v0[4] - 8) + 16))(v0[2], v0[3]);
  v14 = v0[1];
LABEL_16:

  return v14();
}

unint64_t sub_1A97EAA08()
{
  result = qword_1EB3B1EC8;
  if (!qword_1EB3B1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1EC8);
  }

  return result;
}

uint64_t SFBoopController.register<A>(_:type:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  v5[11] = *(a5 - 8);
  v5[12] = swift_task_alloc();
  v6 = sub_1A99770A0();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A97EAB7C, 0, 0);
}

uint64_t sub_1A97EAB7C()
{
  v1 = *(v0 + 64);
  strcpy((v0 + 16), "John Appleseed");
  *(v0 + 31) = -18;
  *(v0 + 32) = xmmword_1A99951F0;
  *(v0 + 48) = 0xD000000000000015;
  *(v0 + 56) = 0x80000001A99E4060;

  sub_1A97B40FC(0, 0xC000000000000000);

  swift_dynamicCast();
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_1A97EAD14;
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);

  return v6(v3, v4);
}

uint64_t sub_1A97EAD14()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_1A97EAF28;
  }

  else
  {
    (*(v2[11] + 8))(v2[12], v2[10]);
    v3 = sub_1A97EAE44;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A97EAE44()
{

  sub_1A97B43C4(0, 0xC000000000000000);

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v0[11] + 56))(v1, 0, 1, v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A97EAF28()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  sub_1A97B43C4(0, 0xC000000000000000);

  (*(v2 + 8))(v1, v3);
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  (*(v0[11] + 56))(v4, 1, 1, v0[10]);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t Contact.init(name:avatar:email:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t Contact.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  v4 = v0[5];
  sub_1A99772B0();

  MEMORY[0x1AC5895B0](v1, v2);
  MEMORY[0x1AC5895B0](0x726174617661202CLL, 0xEA0000000000203ALL);
  v5 = sub_1A9976040();
  MEMORY[0x1AC5895B0](v5);

  MEMORY[0x1AC5895B0](0x3A6C69616D65202CLL, 0xE900000000000020);
  MEMORY[0x1AC5895B0](v3, v4);
  return 0x3A746361746E6F43;
}

uint64_t sub_1A97EB160()
{
  v1 = 0x726174617661;
  if (*v0 != 1)
  {
    v1 = 0x6C69616D65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1A97EB1AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A97EBA5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A97EB1D4(uint64_t a1)
{
  v2 = sub_1A97EB420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97EB210(uint64_t a1)
{
  v2 = sub_1A97EB420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Contact.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1ED0, &qword_1A9995210);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v12 = v1[3];
  v13 = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97EB420();
  sub_1A9977AA0();
  LOBYTE(v15) = 0;
  v9 = v14;
  sub_1A9977690();
  if (!v9)
  {
    v15 = v13;
    v16 = v12;
    v17 = 1;
    sub_1A97B40FC(v13, v12);
    sub_1A97B4370();
    sub_1A99776E0();
    sub_1A97B43C4(v15, v16);
    LOBYTE(v15) = 2;
    sub_1A9977690();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A97EB420()
{
  result = qword_1EB3B1ED8;
  if (!qword_1EB3B1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1ED8);
  }

  return result;
}

uint64_t Contact.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1EE0, &qword_1A9995218);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97EB420();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v22) = 0;
  v9 = sub_1A99775A0();
  v21 = v10;
  v24 = 1;
  sub_1A97B446C();
  sub_1A99775F0();
  v19 = v22;
  v20 = v23;
  LOBYTE(v22) = 2;
  v11 = sub_1A99775A0();
  v12 = *(v6 + 8);
  v18 = v13;
  v12(v8, v5);
  v15 = v20;
  v14 = v21;
  *a2 = v9;
  a2[1] = v14;
  v16 = v19;
  a2[2] = v19;
  a2[3] = v15;
  a2[4] = v11;
  a2[5] = v18;

  sub_1A97B40FC(v16, v15);

  __swift_destroy_boxed_opaque_existential_0Tm(a1);

  sub_1A97B43C4(v16, v15);
}

uint64_t SFBoopControllerErrors.hashValue.getter()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

unint64_t sub_1A97EB7DC()
{
  result = qword_1EB3B1EE8;
  if (!qword_1EB3B1EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1EE8);
  }

  return result;
}

uint64_t sub_1A97EB890(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1A97EB8D8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1A97EB958()
{
  result = qword_1EB3B1EF0;
  if (!qword_1EB3B1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1EF0);
  }

  return result;
}

unint64_t sub_1A97EB9B0()
{
  result = qword_1EB3B1EF8;
  if (!qword_1EB3B1EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1EF8);
  }

  return result;
}

unint64_t sub_1A97EBA08()
{
  result = qword_1EB3B1F00;
  if (!qword_1EB3B1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1F00);
  }

  return result;
}

uint64_t sub_1A97EBA5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t Sequence.asyncMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v6[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  v6[11] = *(AssociatedTypeWitness - 8);
  v6[12] = swift_task_alloc();
  sub_1A99770A0();
  v6[13] = swift_task_alloc();
  v6[14] = *(a3 - 8);
  v6[15] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A97EBD80, 0, 0);
}

uint64_t sub_1A97EBD80()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[8];
  v4 = v0[5];
  v0[2] = sub_1A99766B0();
  (*(v2 + 16))(v1, v3, v4);
  sub_1A99769E0();
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  swift_getAssociatedConformanceWitness();
  sub_1A9977160();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v8 = v0[2];

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v11 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v15 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = sub_1A97EBFEC;
    v13 = v0[12];
    v14 = v0[9];

    return v15(v14, v13);
  }
}

uint64_t sub_1A97EBFEC()
{
  *(*v1 + 160) = v0;

  if (v0)
  {

    v2 = sub_1A97EC360;
  }

  else
  {
    v2 = sub_1A97EC108;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A97EC108()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_1A9976B60();
  sub_1A9976B40();
  (*(v2 + 8))(v1, v3);
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  swift_getAssociatedConformanceWitness();
  sub_1A9977160();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v7 = v0[2];

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    v10 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v14 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = sub_1A97EBFEC;
    v12 = v0[12];
    v13 = v0[9];

    return v14(v13, v12);
  }
}

uint64_t sub_1A97EC360()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t Sequence<>.coordinateRead(withSaveToTempDir:options:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 160) = a4;
  *(v5 + 168) = v4;
  *(v5 + 144) = a2;
  *(v5 + 152) = a3;
  *(v5 + 320) = a1;
  v7 = sub_1A9976020();
  *(v5 + 176) = v7;
  *(v5 + 184) = *(v7 - 8);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A40, &qword_1A99983B0);
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = *(a3 - 8);
  *(v5 + 248) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 256) = AssociatedTypeWitness;
  *(v5 + 264) = *(AssociatedTypeWitness - 8);
  *(v5 + 272) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A97EC644, 0, 0);
}

uint64_t sub_1A97EC644()
{
  (*(*(v0 + 240) + 16))(*(v0 + 248), *(v0 + 168), *(v0 + 152));
  sub_1A99769E0();
  for (i = MEMORY[0x1E69E7CC0]; ; v14(&i[((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v11], v12, v15))
  {
    *(v0 + 280) = i;
    v2 = *(v0 + 232);
    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    swift_getAssociatedConformanceWitness();
    sub_1A9977160();
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      break;
    }

    v6 = *(v0 + 224);
    v5 = *(v0 + 232);
    v7 = *(v0 + 176);
    v8 = *(v0 + 184);
    v9 = *(v8 + 32);
    *(v0 + 288) = v9;
    *(v0 + 296) = (v8 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v9(v6, v5, v7);
    if (sub_1A9975F70())
    {
      v18 = *(v0 + 208);
      v19 = *(v0 + 144);
      v20 = *(v0 + 320);
      v21 = sub_1A9975FC0();
      *(v0 + 304) = v21;
      *(v0 + 16) = v0;
      *(v0 + 56) = v18;
      *(v0 + 24) = sub_1A97EC9E0;
      v22 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1F08, &qword_1A9995588);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1A97ED048;
      *(v0 + 104) = &block_descriptor_1;
      *(v0 + 112) = v22;
      [v21 coordinateReadingWithSaveToTempDir:v20 options:v19 completionHandler:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 224), *(v0 + 176));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_1A97AE958(0, *(i + 2) + 1, 1, i);
    }

    v11 = *(i + 2);
    v10 = *(i + 3);
    if (v11 >= v10 >> 1)
    {
      i = sub_1A97AE958((v10 > 1), v11 + 1, 1, i);
    }

    (*(*(v0 + 184) + 8))(*(v0 + 224), *(v0 + 176));
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 288);
    v15 = *(v0 + 176);
    *(i + 2) = v11 + 1;
  }

  (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));

  v16 = *(v0 + 8);

  return v16(i);
}

uint64_t sub_1A97EC9E0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {

    v2 = sub_1A97ECF2C;
  }

  else
  {
    v2 = sub_1A97ECAF8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A97ECAF8()
{
  v2 = (v0 + 200);
  v1 = *(v0 + 200);
  v3 = *(v0 + 304);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  (*(v0 + 288))(v4, *(v0 + 208), v5);

  (*(v6 + 16))(v1, v4, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 280);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1A97AE958(0, *(v8 + 2) + 1, 1, *(v0 + 280));
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1A97AE958((v9 > 1), v10 + 1, 1, v8);
  }

  v12 = *(v0 + 224);
  v13 = *(v0 + 176);
  v14 = *(*(v0 + 184) + 8);
  v14(*(v0 + 216), v13);
  v14(v12, v13);
  while (1)
  {
    v15 = *v2;
    v16 = *(v0 + 288);
    v17 = *(v0 + 176);
    v18 = *(v0 + 184);
    *(v8 + 2) = v11;
    v16(&v8[((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v10], v15, v17);
    *(v0 + 280) = v8;
    v19 = *(v0 + 232);
    v20 = *(v0 + 176);
    v21 = *(v0 + 184);
    swift_getAssociatedConformanceWitness();
    sub_1A9977160();
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      break;
    }

    v23 = *(v0 + 224);
    v22 = *(v0 + 232);
    v24 = *(v0 + 176);
    v25 = *(v0 + 184);
    v26 = *(v25 + 32);
    *(v0 + 288) = v26;
    *(v0 + 296) = (v25 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v26(v23, v22, v24);
    if (sub_1A9975F70())
    {
      v30 = *(v0 + 208);
      v31 = *(v0 + 144);
      v32 = *(v0 + 320);
      v33 = sub_1A9975FC0();
      *(v0 + 304) = v33;
      *(v0 + 16) = v0;
      *(v0 + 56) = v30;
      *(v0 + 24) = sub_1A97EC9E0;
      v34 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1F08, &qword_1A9995588);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1A97ED048;
      *(v0 + 104) = &block_descriptor_1;
      *(v0 + 112) = v34;
      [v33 coordinateReadingWithSaveToTempDir:v32 options:v31 completionHandler:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 224), *(v0 + 176));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1A97AE958(0, *(v8 + 2) + 1, 1, v8);
    }

    v10 = *(v8 + 2);
    v27 = *(v8 + 3);
    v11 = v10 + 1;
    if (v10 >= v27 >> 1)
    {
      v8 = sub_1A97AE958((v27 > 1), v10 + 1, 1, v8);
    }

    (*(*(v0 + 184) + 8))(*(v0 + 224), *(v0 + 176));
    v2 = (v0 + 192);
  }

  (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));

  v28 = *(v0 + 8);

  return v28(v8);
}

uint64_t sub_1A97ECF2C(uint64_t a1)
{
  v2 = v1[38];
  v4 = v1[33];
  v3 = v1[34];
  v5 = v1[32];
  v6 = v1[28];
  v8 = v1[22];
  v7 = v1[23];
  swift_willThrow();
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  v9 = v1[1];

  return v9();
}

uint64_t sub_1A97ED048(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1A9976020();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    swift_allocError();
    *v10 = a3;
    v11 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_1A9975FE0();
    (*(v6 + 32))(*(*(v9 + 64) + 40), v8, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1A97ED1D0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1A9976E60();
  if (!v19)
  {
    return sub_1A9976B00();
  }

  v41 = v19;
  v45 = sub_1A99773B0();
  v32 = sub_1A99773C0();
  sub_1A9977370();
  result = sub_1A9976E50();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1A9976F20();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1A99773A0();
      result = sub_1A9976E90();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A97ED5F0()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B1F10);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B1F10);
  if (qword_1EB3ACCA8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3ACCB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SFSecurityScopedURL.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A9976020();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SFSecurityScopedURL.sandboxToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFSecurityScopedURL(0) + 20));

  return v1;
}

uint64_t SFSecurityScopedURL.init(_:readWrite:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A9976020();
  v6 = *(v5 - 8);
  (*(v6 + 16))(a2, a1, v5);
  sub_1A97F0064(a1);
  if (v2)
  {
    v9 = *(v6 + 8);
    v9(a1, v5);
    return (v9)(a2, v5);
  }

  else
  {
    v11 = v7;
    v12 = v8;
    (*(v6 + 8))(a1, v5);
    result = type metadata accessor for SFSecurityScopedURL(0);
    v13 = (a2 + *(result + 20));
    *v13 = v11;
    v13[1] = v12;
  }

  return result;
}

uint64_t static SFSecurityScopedURL.consumeSandboxToken(item:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A9976850();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1A9975F70())
  {
    v32 = v2;
    v9 = (a1 + *(type metadata accessor for SFSecurityScopedURL(0) + 20));
    v10 = *v9;
    v11 = v9[1];
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1A9977400();
    MEMORY[0x1AC5895B0](0x786F62646E61732ELL, 0xED00006E656B6F54);
    v12 = v35;
    if (v11)
    {
      v33 = 0x80000001A99E40C0;
      v31 = a2;

      v34 = v10;
      v35 = v11;
      sub_1A9976840();
      sub_1A97F0528();
      v13 = sub_1A9977190();
      (*(v6 + 8))(v8, v5);
      v34 = v10;
      v35 = v11;
      MEMORY[0x1AC5895B0](0x676E69727453632ELL, 0xE800000000000000);
      v14 = v35;
      if (v13)
      {

        v15 = sandbox_extension_consume();

        v34 = 0;
        v35 = 0xE000000000000000;
        sub_1A99772B0();

        v34 = 0xD00000000000001ELL;
        v35 = 0x80000001A99E4120;
        v36 = MEMORY[0x1AC589160](v16);
        v17 = sub_1A9977730();
        MEMORY[0x1AC5895B0](v17);

        MEMORY[0x1AC5895B0](125, 0xE100000000000000);
        v18 = v35;
        v19 = v33;
        if ((v15 & 0x8000000000000000) == 0)
        {

          v20 = *(type metadata accessor for SFSandboxTokenURLPair(0) + 20);
          v21 = sub_1A9976020();
          v22 = v31;
          result = (*(*(v21 - 8) + 16))(v31 + v20, a1, v21);
          *v22 = v15;
          return result;
        }

        v29 = v34;
        sub_1A97BCDE0();
        swift_allocError();
        *v25 = v29;
        *(v25 + 8) = v18;
        *(v25 + 16) = xmmword_1A9995590;
        *(v25 + 32) = v19;
        *(v25 + 40) = 49;
        v28 = 0x8000000000000000;
        goto LABEL_10;
      }

      v27 = v34;
      sub_1A97BCDE0();
      swift_allocError();
      *v25 = v27;
      *(v25 + 8) = v14;
      *(v25 + 16) = 0xD000000000000051;
      *(v25 + 24) = v33;
      v26 = 46;
    }

    else
    {
      v24 = v34;
      sub_1A97BCDE0();
      swift_allocError();
      *v25 = v24;
      *(v25 + 8) = v12;
      *(v25 + 16) = 0xD000000000000051;
      *(v25 + 24) = 0x80000001A99E40C0;
      v26 = 45;
    }

    *(v25 + 32) = v26;
    v28 = 0x2000000000000000;
LABEL_10:
    *(v25 + 80) = v28;
    return swift_willThrow();
  }

  type metadata accessor for SFAirDropSend.Failure(0);
  sub_1A97F0AF4(&qword_1EB3B1F28, type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t SFSandboxTokenURLPair.init(token:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for SFSandboxTokenURLPair(0) + 20);
  v6 = sub_1A9976020();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t static SFSecurityScopedURL.withAccess<A>(to:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for SFSandboxTokenURLPair(0);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v6 = sub_1A9976020();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = *(type metadata accessor for SFSecurityScopedURL(0) - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A97EDEFC, 0, 0);
}

uint64_t sub_1A97EDEFC()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v61 = v2;
  if (v2)
  {
    v4 = v0[14];
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = *(v4 + 72);
    v7 = v1 + v5;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1A97F0604(v7, v0[18], type metadata accessor for SFSecurityScopedURL);
      v9 = sub_1A9975F70();
      v10 = v0[18];
      if (v9)
      {
        sub_1A97F066C(v10, type metadata accessor for SFSecurityScopedURL);
      }

      else
      {
        sub_1A97F059C(v10, v0[17], type metadata accessor for SFSecurityScopedURL);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A97BDBC0(0, *(v8 + 16) + 1, 1);
        }

        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1A97BDBC0((v11 > 1), v12 + 1, 1);
        }

        v13 = v0[17];
        *(v8 + 16) = v12 + 1;
        sub_1A97F059C(v13, v8 + v5 + v12 * v6, type metadata accessor for SFSecurityScopedURL);
      }

      v7 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v8 + 16);
  if (v14)
  {
    v15 = v8;
    v16 = v0[14];
    v17 = v0[11];
    sub_1A97BDB38(0, v14, 0);
    v18 = v3;
    v19 = v15 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v63 = *(v16 + 72);
    do
    {
      v20 = v0[16];
      v21 = v0[13];
      v22 = v0[10];
      sub_1A97F0604(v19, v20, type metadata accessor for SFSecurityScopedURL);
      (*(v17 + 16))(v21, v20, v22);
      sub_1A97F066C(v20, type metadata accessor for SFSecurityScopedURL);
      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1A97BDB38((v23 > 1), v24 + 1, 1);
      }

      v25 = v0[13];
      v26 = v0[10];
      *(v18 + 16) = v24 + 1;
      (*(v17 + 32))(v18 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v24, v25, v26);
      v19 += v63;
      --v14;
    }

    while (v14);
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  v0[19] = v18;
  v27 = v61;
  if (*(v18 + 16))
  {
    if (qword_1EB3B0AD8 != -1)
    {
      swift_once();
    }

    v28 = sub_1A99764A0();
    __swift_project_value_buffer(v28, qword_1EB3B1F10);
    v29 = sub_1A9976480();
    v30 = sub_1A9976F90();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1A9662000, v29, v30, "Non fileURL detected, skipping sandbox tokens", v31, 2u);
      MEMORY[0x1AC58D2C0](v31, -1, -1);
    }

    v32 = v0[4];

    v64 = (v32 + *v32);
    v33 = swift_task_alloc();
    v0[20] = v33;
    *v33 = v0;
    v33[1] = sub_1A97EE6F4;
    v34 = v0[2];
    v35 = v18;
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
    if (v61)
    {
      v37 = v0[14];
      v38 = v0[7];
      v39 = v0[3];
      v66 = MEMORY[0x1E69E7CC0];
      sub_1A97BDB7C(0, v61, 0);
      v36 = v66;
      v40 = v39 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
      v41 = *(v37 + 72);
      do
      {
        v42 = v0[15];
        v43 = v0[9];
        sub_1A97F0604(v40, v42, type metadata accessor for SFSecurityScopedURL);
        static SFSecurityScopedURL.consumeSandboxToken(item:)(v42, v43);
        sub_1A97F066C(v0[15], type metadata accessor for SFSecurityScopedURL);
        v45 = *(v66 + 16);
        v44 = *(v66 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_1A97BDB7C((v44 > 1), v45 + 1, 1);
        }

        v46 = v0[9];
        *(v66 + 16) = v45 + 1;
        sub_1A97F059C(v46, v66 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v45, type metadata accessor for SFSandboxTokenURLPair);
        v40 += v41;
        --v27;
      }

      while (v27);
    }

    v0[22] = v36;
    v47 = *(v36 + 16);
    v48 = MEMORY[0x1E69E7CC0];
    if (v47)
    {
      v49 = v0[11];
      v50 = v0[7];
      v65 = v0[6];
      v67 = MEMORY[0x1E69E7CC0];
      sub_1A97BDB38(0, v47, 0);
      v48 = v67;
      v51 = v36 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
      v62 = *(v50 + 72);
      do
      {
        v52 = v0[12];
        v53 = v0[10];
        v54 = v0[8];
        sub_1A97F0604(v51, v54, type metadata accessor for SFSandboxTokenURLPair);
        (*(v49 + 16))(v52, v54 + *(v65 + 20), v53);
        sub_1A97F066C(v54, type metadata accessor for SFSandboxTokenURLPair);
        v56 = *(v67 + 16);
        v55 = *(v67 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_1A97BDB38((v55 > 1), v56 + 1, 1);
        }

        v57 = v0[12];
        v58 = v0[10];
        *(v67 + 16) = v56 + 1;
        (*(v49 + 32))(v67 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v56, v57, v58);
        v51 += v62;
        --v47;
      }

      while (v47);
    }

    v0[23] = v48;
    v64 = (v0[4] + *v0[4]);
    v59 = swift_task_alloc();
    v0[24] = v59;
    *v59 = v0;
    v59[1] = sub_1A97EE8D0;
    v34 = v0[2];
    v35 = v48;
  }

  return v64(v34, v35);
}

uint64_t sub_1A97EE6F4()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1A97EEAC0;
  }

  else
  {
    v2 = sub_1A97EE808;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A97EE808()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A97EE8D0()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1A97EEB88;
  }

  else
  {

    v2 = sub_1A97EE9EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A97EE9EC()
{
  sub_1A97EEC60(*(v0 + 176));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A97EEAC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A97EEB88()
{
  v1 = *(v0 + 176);

  sub_1A97EEC60(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A97EEC60(uint64_t a1)
{
  v2 = type metadata accessor for SFSandboxTokenURLPair(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1A97BDB18(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1A97F0604(v8, v5, type metadata accessor for SFSandboxTokenURLPair);
      v10 = *v5;
      sub_1A97F066C(v5, type metadata accessor for SFSandboxTokenURLPair);
      v17 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        sub_1A97BDB18((v11 > 1), v12 + 1, 1);
        v7 = v17;
      }

      *(v7 + 16) = v13;
      *(v7 + 8 * v12 + 32) = v10;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  else
  {
    v13 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v13)
    {
    }
  }

  v14 = 32;
  do
  {
    sandbox_extension_release();
    v14 += 8;
    --v13;
  }

  while (v13);
}

uint64_t static SFSecurityScopedURL.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1A9975FD0())
  {
    v4 = *(type metadata accessor for SFSecurityScopedURL(0) + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_1A99777E0() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1A97EEE8C()
{
  if (*v0)
  {
    return 0x54786F62646E6173;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1A97EEEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x54786F62646E6173 && a2 == 0xEC0000006E656B6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A97EEFA8(uint64_t a1)
{
  v2 = sub_1A97F06CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97EEFE4(uint64_t a1)
{
  v2 = sub_1A97F06CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFSecurityScopedURL.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1F30, &qword_1A99955A8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97F06CC();
  sub_1A9977AA0();
  v8[15] = 0;
  sub_1A9976020();
  sub_1A97F0AF4(&qword_1EB3B1918, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1A99776E0();
  if (!v1)
  {
    type metadata accessor for SFSecurityScopedURL(0);
    v8[14] = 1;
    sub_1A9977650();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SFSecurityScopedURL.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1A9976020();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1F40, &qword_1A99955B0);
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for SFSecurityScopedURL(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97F06CC();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  sub_1A97F0AF4(&qword_1EB3B1AB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v14 = v26;
  sub_1A99775F0();
  (*(v13 + 32))(v22, v6, v14);
  v28 = 1;
  v15 = sub_1A9977550();
  v17 = v16;
  (*(v12 + 8))(v8, v27);
  v19 = v22;
  v18 = v23;
  v20 = &v22[*(v9 + 20)];
  *v20 = v15;
  v20[1] = v17;
  sub_1A97F0604(v19, v18, type metadata accessor for SFSecurityScopedURL);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1A97F066C(v19, type metadata accessor for SFSecurityScopedURL);
}

uint64_t sub_1A97EF558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1A9975FD0())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        v11 = *v7 == *v9 && v8 == v10;
        if (v11 || (sub_1A99777E0() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t SFSandboxTokenURLPair.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SFSandboxTokenURLPair(0) + 20);
  v4 = sub_1A9976020();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static SFSandboxTokenURLPair.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for SFSandboxTokenURLPair(0);

  return sub_1A9975FD0();
}

uint64_t sub_1A97EF6C8()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 0x6E656B6F74;
  }
}

uint64_t sub_1A97EF6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A97EF7D0(uint64_t a1)
{
  v2 = sub_1A97F0720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97EF80C(uint64_t a1)
{
  v2 = sub_1A97F0720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFSandboxTokenURLPair.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1F48, &qword_1A99955B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97F0720();
  sub_1A9977AA0();
  v8[15] = 0;
  sub_1A99776F0();
  if (!v1)
  {
    type metadata accessor for SFSandboxTokenURLPair(0);
    v8[14] = 1;
    sub_1A9976020();
    sub_1A97F0AF4(&qword_1EB3B1918, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1A99776E0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SFSandboxTokenURLPair.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_1A9976020();
  v20 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1F58, &unk_1A99955C0);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v17 - v6;
  v8 = type metadata accessor for SFSandboxTokenURLPair(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97F0720();
  sub_1A9977A70();
  if (!v2)
  {
    v19 = v8;
    v12 = v22;
    v11 = v23;
    v26 = 0;
    v13 = v24;
    v14 = sub_1A9977600();
    v18 = v10;
    *v10 = v14;
    v25 = 1;
    sub_1A97F0AF4(&qword_1EB3B1AB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1A99775F0();
    (*(v12 + 8))(v7, v13);
    v15 = v18;
    (*(v20 + 32))(v18 + *(v19 + 20), v5, v11);
    sub_1A97F059C(v15, v21, type metadata accessor for SFSandboxTokenURLPair);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1A97EFD2C(void *a1, void *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return sub_1A9975FD0();
  }

  else
  {
    return 0;
  }
}

uint64_t RandomAccessCollection<>.securityScopedURLs.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFSecurityScopedURL(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  return sub_1A97ED1D0(sub_1A97EFEE0, 0, a1, v4, v5, *(*(a2 + 8) + 8), MEMORY[0x1E69E7288], &v7);
}

uint64_t sub_1A97EFEE0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v7 = sub_1A9976020();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 16);
  v11(v10, a1, v7);
  v11(a3, v10, v7);
  sub_1A97F0064(v10);
  if (v3)
  {
    v14 = *(v8 + 8);
    v14(v10, v7);
    result = (v14)(a3, v7);
    *a2 = v3;
  }

  else
  {
    v16 = v12;
    v17 = v13;
    (*(v8 + 8))(v10, v7);
    result = type metadata accessor for SFSecurityScopedURL(0);
    v18 = &a3[*(result + 20)];
    *v18 = v16;
    *(v18 + 1) = v17;
  }

  return result;
}

void sub_1A97F0064(uint64_t a1)
{
  v2 = sub_1A9976020();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1A9975F70())
  {
    v6 = sub_1A9975FC0();
    v7 = CFURLCopyFileSystemPath(v6, kCFURLPOSIXPathStyle);

    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1A99772B0();

    v29 = 0xD000000000000022;
    v30 = 0x80000001A99E4140;
    sub_1A97F0AF4(&qword_1EB3B1FA0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v8 = sub_1A9977730();
    MEMORY[0x1AC5895B0](v8);

    v9 = v30;
    if (v7)
    {
      v27 = 0x80000001A99E40C0;

      sub_1A9976820();
      sub_1A9976890();
      v31 = v7;

      v10 = sandbox_extension_issue_file();

      v29 = 0;
      v30 = 0xE000000000000000;
      sub_1A99772B0();

      v29 = 0xD000000000000026;
      v30 = 0x80000001A99E41A0;
      v11 = sub_1A9977730();
      MEMORY[0x1AC5895B0](v11);

      v12 = v30;
      v28 = v10;
      if (v10)
      {

        if (qword_1EB3B0AD8 != -1)
        {
          swift_once();
        }

        v13 = sub_1A99764A0();
        __swift_project_value_buffer(v13, qword_1EB3B1F10);
        (*(v3 + 16))(v5, a1, v2);
        v14 = sub_1A9976480();
        v15 = sub_1A9976F90();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v29 = v27;
          *v16 = 136315138;
          v17 = sub_1A9977730();
          v19 = v18;
          (*(v3 + 8))(v5, v2);
          v20 = sub_1A97AF148(v17, v19, &v29);

          *(v16 + 4) = v20;
          _os_log_impl(&dword_1A9662000, v14, v15, "Issued sandbox token for url %s", v16, 0xCu);
          v21 = v27;
          __swift_destroy_boxed_opaque_existential_0Tm(v27);
          MEMORY[0x1AC58D2C0](v21, -1, -1);
          MEMORY[0x1AC58D2C0](v16, -1, -1);
        }

        else
        {

          (*(v3 + 8))(v5, v2);
        }

        v26 = v28;
        sub_1A99767D0();
        free(v26);
      }

      else
      {
        v24 = v29;
        sub_1A97BCDE0();
        swift_allocError();
        *v25 = v24;
        v25[1] = v12;
        v25[2] = 0xD000000000000051;
        v25[3] = v27;
        v25[4] = 36;
        v25[10] = 0x2000000000000000;
        swift_willThrow();
      }
    }

    else
    {
      v22 = v29;
      sub_1A97BCDE0();
      swift_allocError();
      *v23 = v22;
      v23[1] = v9;
      v23[2] = 0xD000000000000051;
      v23[3] = 0x80000001A99E40C0;
      v23[4] = 35;
      v23[10] = 0x2000000000000000;
      swift_willThrow();
    }
  }
}

unint64_t sub_1A97F0528()
{
  result = qword_1EB3AB790;
  if (!qword_1EB3AB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AB790);
  }

  return result;
}

uint64_t sub_1A97F059C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A97F0604(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A97F066C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A97F06CC()
{
  result = qword_1EB3B1F38;
  if (!qword_1EB3B1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1F38);
  }

  return result;
}

unint64_t sub_1A97F0720()
{
  result = qword_1EB3B1F50;
  if (!qword_1EB3B1F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1F50);
  }

  return result;
}

void sub_1A97F079C(uint64_t a1)
{
  sub_1A9976020();
  if (v1 <= 0x3F)
  {
    sub_1A97EA138();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A97F0848(uint64_t a1)
{
  result = sub_1A9976020();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A97F08E8()
{
  result = qword_1EB3B1F70;
  if (!qword_1EB3B1F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1F70);
  }

  return result;
}

unint64_t sub_1A97F0940()
{
  result = qword_1EB3B1F78;
  if (!qword_1EB3B1F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1F78);
  }

  return result;
}

unint64_t sub_1A97F0998()
{
  result = qword_1EB3B1F80;
  if (!qword_1EB3B1F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1F80);
  }

  return result;
}

unint64_t sub_1A97F09F0()
{
  result = qword_1EB3B1F88;
  if (!qword_1EB3B1F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1F88);
  }

  return result;
}

unint64_t sub_1A97F0A48()
{
  result = qword_1EB3B1F90;
  if (!qword_1EB3B1F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1F90);
  }

  return result;
}

unint64_t sub_1A97F0AA0()
{
  result = qword_1EB3B1F98;
  if (!qword_1EB3B1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1F98);
  }

  return result;
}

uint64_t sub_1A97F0AF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A97F0B3C()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B1FA8);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B1FA8);
  if (qword_1EB3B0B18 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3B3638);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t DeviceLockState.description.getter()
{
  if (*v0)
  {
    return 0x656B636F6C6E752ELL;
  }

  else
  {
    return 0x64656B636F6C2ELL;
  }
}

uint64_t sub_1A97F0C44()
{
  if (*v0)
  {
    return 0x64656B636F6C6E75;
  }

  else
  {
    return 0x64656B636F6CLL;
  }
}

uint64_t sub_1A97F0C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656B636F6CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64656B636F6C6E75 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A97F0D54(uint64_t a1)
{
  v2 = sub_1A97F116C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97F0D90(uint64_t a1)
{
  v2 = sub_1A97F116C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97F0DCC(uint64_t a1)
{
  v2 = sub_1A97F1214();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97F0E08(uint64_t a1)
{
  v2 = sub_1A97F1214();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97F0E44(uint64_t a1)
{
  v2 = sub_1A97F11C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97F0E80(uint64_t a1)
{
  v2 = sub_1A97F11C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeviceLockState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1FC0, &qword_1A9995950);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1FC8, &qword_1A9995958);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1FD0, &qword_1A9995960);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97F116C();
  sub_1A9977AA0();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A97F11C0();
    v14 = v18;
    sub_1A9977640();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A97F1214();
    sub_1A9977640();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1A97F116C()
{
  result = qword_1EB3B1FD8;
  if (!qword_1EB3B1FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1FD8);
  }

  return result;
}

unint64_t sub_1A97F11C0()
{
  result = qword_1EB3B1FE0;
  if (!qword_1EB3B1FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1FE0);
  }

  return result;
}

unint64_t sub_1A97F1214()
{
  result = qword_1EB3B1FE8;
  if (!qword_1EB3B1FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1FE8);
  }

  return result;
}

uint64_t DeviceLockState.hashValue.getter()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t DeviceLockState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1FF0, &qword_1A9995968);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1FF8, &qword_1A9995970);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2000, &unk_1A9995978);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97F116C();
  v12 = v31;
  sub_1A9977A70();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1A9977620();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1A97B2970();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1A9977300();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
      *v22 = &type metadata for DeviceLockState;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1A97F11C0();
        sub_1A9977530();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1A97F1214();
        sub_1A9977530();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v13);
}

uint64_t sub_1A97F17C8()
{
  if (*v0)
  {
    return 0x656B636F6C6E752ELL;
  }

  else
  {
    return 0x64656B636F6C2ELL;
  }
}

uint64_t sub_1A97F1844(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A97F18A4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1A97F1938;
}

void sub_1A97F1938(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t SFLockStateMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  SFLockStateMonitor.init()();
  return v0;
}

uint64_t SFLockStateMonitor.init()()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  v2 = (v0 + 32);
  v3 = sub_1A97BEF14(&unk_1F1D26B58);
  sub_1A97F1C38(&unk_1F1D26B78);
  *(v0 + 40) = v3;
  sub_1A97F1CA0();
  v4 = sub_1A9976FC0();
  v5 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_1A966A21C;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1A966A1C8;
  v8[3] = &block_descriptor_2;
  v6 = _Block_copy(v8);

  swift_beginAccess();
  notify_register_dispatch("com.apple.mobile.keybagd.lock_status", v2, v4, v6);
  swift_endAccess();
  _Block_release(v6);

  return v1;
}

uint64_t SFLockStateMonitor.deinit()
{
  swift_beginAccess();
  notify_cancel(*(v0 + 32));
  sub_1A97F1D04(v0 + 16);

  return v0;
}

uint64_t SFLockStateMonitor.__deallocating_deinit()
{
  swift_beginAccess();
  notify_cancel(*(v0 + 32));
  sub_1A97F1D04(v0 + 16);

  return swift_deallocClassInstance();
}

void *sub_1A97F1BE8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1A97F1C08@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1A97F1C38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2008, &qword_1A9995988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A97F1CA0()
{
  result = qword_1EB3AC8D0;
  if (!qword_1EB3AC8D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB3AC8D0);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1A97F1D30()
{
  result = qword_1EB3B2010;
  if (!qword_1EB3B2010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2010);
  }

  return result;
}

unint64_t sub_1A97F1EAC()
{
  result = qword_1EB3B2018;
  if (!qword_1EB3B2018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2018);
  }

  return result;
}

unint64_t sub_1A97F1F04()
{
  result = qword_1EB3B2020;
  if (!qword_1EB3B2020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2020);
  }

  return result;
}

unint64_t sub_1A97F1F5C()
{
  result = qword_1EB3B2028;
  if (!qword_1EB3B2028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2028);
  }

  return result;
}

unint64_t sub_1A97F1FB4()
{
  result = qword_1EB3B2030;
  if (!qword_1EB3B2030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2030);
  }

  return result;
}

unint64_t sub_1A97F200C()
{
  result = qword_1EB3B2038;
  if (!qword_1EB3B2038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2038);
  }

  return result;
}

unint64_t sub_1A97F2064()
{
  result = qword_1EB3B2040;
  if (!qword_1EB3B2040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2040);
  }

  return result;
}

unint64_t sub_1A97F20BC()
{
  result = qword_1EB3B2048;
  if (!qword_1EB3B2048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2048);
  }

  return result;
}

uint64_t sub_1A97F2110(_OWORD *a1)
{
  v1 = a1[2];
  v4[0] = a1[1];
  v4[1] = v1;
  v4[2] = a1[3];
  result = type metadata accessor for CombineLatestStateMachine.State(319, v4);
  if (v3 <= 0x3F)
  {
    v5 = 0;
    *&v4[0] = result;
    *(&v4[0] + 1) = MEMORY[0x1E69E6530];
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A97F2198(_DWORD *a1, unsigned int a2, void *a3)
{
  v3 = *(a3[4] - 8);
  v4 = *(v3 + 64);
  if (!*(v3 + 84))
  {
    ++v4;
  }

  v33 = v4 + ((((*(*(a3[2] - 8) + 64) + *(*(a3[3] - 8) + 80)) & ~*(*(a3[3] - 8) + 80)) + *(*(a3[3] - 8) + 64) + *(v3 + 80)) & ~*(v3 + 80));
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 80);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 80);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v9 + 80);
  v12 = v11 | 7;
  v13 = ((v6 + 8) & ~v6) + (v8 | 7) + *(v5 + 64);
  if (!*(v5 + 84))
  {
    ++v13;
  }

  v14 = (v13 + 1) & ~(v8 | 7);
  v15 = ((v8 + 8) & ~v8) + v12 + *(v7 + 64);
  if (!*(v7 + 84))
  {
    ++v15;
  }

  v16 = (v15 + v14 + 1) & ~v12;
  v17 = ((v11 + 8) & ~v11) + *(v9 + 64) + (((v8 | v6 | v11) & 0xF8 ^ 0x1F8) & ((v8 | v6 | v11) + 8));
  if (!*(v10 + 84))
  {
    ++v17;
  }

  v18 = (v17 + v16 + 8) & 0xFFFFFFFFFFFFFFF8;
  v19 = v18 + 8;
  if (v18 + 8 <= v33)
  {
    v19 = v33;
  }

  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v20 <= v19)
  {
    v20 = v19;
  }

  v21 = 8;
  if (v20 > 8)
  {
    v21 = v20;
  }

  v22 = 250 - (1u >> (8 * v21));
  if (v21 > 3)
  {
    v22 = 250;
  }

  if (!a2)
  {
    return 0;
  }

  if (v22 >= a2)
  {
    goto LABEL_41;
  }

  v23 = (v21 & 0xFFFFFFFFFFFFFFF8) + 16;
  v24 = v23 & 0xFFFFFFF8;
  if ((v23 & 0xFFFFFFF8) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = a2 - v22 + 1;
  }

  if (v25 >= 0x10000)
  {
    v26 = 4;
  }

  else
  {
    v26 = 2;
  }

  if (v25 < 0x100)
  {
    v26 = 1;
  }

  if (v25 >= 2)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v27 > 1)
  {
    if (v27 == 2)
    {
      v28 = *(a1 + v23);
      if (v28)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v28 = *(a1 + v23);
      if (v28)
      {
        goto LABEL_37;
      }
    }

LABEL_41:
    v31 = *(a1 + v21);
    if (v22 <= (v31 ^ 0xFFu))
    {
      return 0;
    }

    else
    {
      return (256 - v31);
    }
  }

  if (!v27)
  {
    goto LABEL_41;
  }

  v28 = *(a1 + v23);
  if (!v28)
  {
    goto LABEL_41;
  }

LABEL_37:
  v30 = v28 - 1;
  if (v24)
  {
    v30 = 0;
    LODWORD(v24) = *a1;
  }

  return v22 + (v24 | v30) + 1;
}

void sub_1A97F2588(unsigned int *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v4 = *(a4[4] - 8);
  v5 = *(v4 + 64);
  if (!*(v4 + 84))
  {
    ++v5;
  }

  v31 = v5 + ((((*(*(a4[2] - 8) + 64) + *(*(a4[3] - 8) + 80)) & ~*(*(a4[3] - 8) + 80)) + *(*(a4[3] - 8) + 64) + *(v4 + 80)) & ~*(v4 + 80));
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 80);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 80);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  v12 = *(v10 + 80);
  v13 = v12 | 7;
  v14 = ((v7 + 8) & ~v7) + (v9 | 7) + *(v6 + 64);
  if (!*(v6 + 84))
  {
    ++v14;
  }

  v15 = (v14 + 1) & ~(v9 | 7);
  v16 = ((v9 + 8) & ~v9) + v13 + *(v8 + 64);
  if (!*(v8 + 84))
  {
    ++v16;
  }

  v17 = (v16 + v15 + 1) & ~v13;
  v18 = ((v12 + 8) & ~v12) + *(v10 + 64) + (((v9 | v7 | v12) & 0xF8 ^ 0x1F8) & ((v9 | v7 | v12) + 8));
  if (!*(v11 + 84))
  {
    ++v18;
  }

  v19 = (v18 + v17 + 8) & 0xFFFFFFFFFFFFFFF8;
  v20 = v19 + 8;
  if (v19 + 8 <= v31)
  {
    v20 = v31;
  }

  v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v21 <= v20)
  {
    v21 = v20;
  }

  if (v21 <= 8)
  {
    v21 = 8;
  }

  v22 = 250 - (1u >> (8 * v21));
  if (v21 > 3)
  {
    v22 = 250;
  }

  v23 = (v21 & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v21 & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v24 = a3 - v22 + 1;
  }

  else
  {
    v24 = 2;
  }

  if (v24 >= 0x10000)
  {
    v25 = 4;
  }

  else
  {
    v25 = 2;
  }

  if (v24 < 0x100)
  {
    v25 = 1;
  }

  if (v24 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v22 < a3)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (a2 <= v22)
  {
    if (v27 > 1)
    {
      v30 = a1;
      if (v27 != 2)
      {
        *(a1 + v23) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_49;
      }

      *(a1 + v23) = 0;
    }

    else
    {
      v30 = a1;
      if (v27)
      {
        *(a1 + v23) = 0;
        if (!a2)
        {
          return;
        }

LABEL_49:
        *(v30 + v21) = -a2;
        return;
      }
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_49;
  }

  if ((v21 & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v28 = a2 - v22;
  }

  else
  {
    v28 = 1;
  }

  if ((v21 & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v29 = ~v22 + a2;
    bzero(a1, v23);
    *a1 = v29;
  }

  if (v27 > 1)
  {
    if (v27 == 2)
    {
      *(a1 + v23) = v28;
    }

    else
    {
      *(a1 + v23) = v28;
    }
  }

  else if (v27)
  {
    *(a1 + v23) = v28;
  }
}

void sub_1A97F29CC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  sub_1A99770A0();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  if (v6 <= 0x3F)
  {
    v34 = TupleTypeMetadata3;
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
    v7 = a1[5];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v27 = v2;
    v8 = a1[6];
    v9 = a1[7];
    v28 = v3;
    v29 = v4;
    v30 = AssociatedTypeWitness;
    v31 = v7;
    v32 = v8;
    v33 = v9;
    type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v27);
    v10 = swift_getAssociatedTypeWitness();
    v27 = v2;
    v28 = v3;
    v29 = v4;
    v30 = v10;
    v31 = v7;
    v32 = v8;
    v33 = v9;
    type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v27);
    v11 = swift_getAssociatedTypeWitness();
    v27 = v2;
    v28 = v3;
    v29 = v4;
    v30 = v11;
    v31 = v7;
    v32 = v8;
    v33 = v9;
    type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v27);
    v12 = swift_getTupleTypeMetadata3();
    sub_1A99770A0();
    v13 = swift_getTupleTypeMetadata3();
    v16 = type metadata accessor for Deque(255, v13, v14, v15);
    v18 = v17;
    v19 = swift_getTupleTypeMetadata3();
    if (v20 <= 0x3F)
    {
      v35 = v19;
      MEMORY[0x1EEE9AC00](v19);
      v27 = v25;
      v28 = v12;
      sub_1A99770A0();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
      sub_1A9977A20();
      v29 = sub_1A9976CE0();
      v30 = v16;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      if (v22 <= 0x3F)
      {
        v36 = TupleTypeMetadata;
        if (v18 <= 0x3F)
        {
          v37 = v16;
          sub_1A97F360C();
          if (v24 <= 0x3F)
          {
            v38 = v23;
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1A97F2D1C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(a3[4] - 8);
  v4 = *(v3 + 64);
  if (!*(v3 + 84))
  {
    ++v4;
  }

  v31 = v4 + ((((*(*(a3[2] - 8) + 64) + *(*(a3[3] - 8) + 80)) & ~*(*(a3[3] - 8) + 80)) + *(*(a3[3] - 8) + 64) + *(v3 + 80)) & ~*(v3 + 80));
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 80);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 80);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v9 + 80);
  v12 = v11 | 7;
  v13 = ((v6 + 8) & ~v6) + (v8 | 7) + *(v5 + 64);
  if (!*(v5 + 84))
  {
    ++v13;
  }

  v14 = (v13 + 1) & ~(v8 | 7);
  v15 = ((v8 + 8) & ~v8) + v12 + *(v7 + 64);
  if (!*(v7 + 84))
  {
    ++v15;
  }

  v16 = (v15 + v14 + 1) & ~v12;
  v17 = ((v11 + 8) & ~v11) + *(v9 + 64) + (((v8 | v6 | v11) & 0xF8 ^ 0x1F8) & ((v8 | v6 | v11) + 8));
  if (!*(v10 + 84))
  {
    ++v17;
  }

  v18 = (v17 + v16 + 8) & 0xFFFFFFFFFFFFFFF8;
  v19 = v18 + 8;
  if (v18 + 8 <= v31)
  {
    v19 = v31;
  }

  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v20 <= v19)
  {
    v20 = v19;
  }

  v21 = 8;
  if (v20 > 8)
  {
    v21 = v20;
  }

  v22 = 250 - (1u >> (8 * v21));
  if (v21 > 3)
  {
    v22 = 250;
  }

  if (!a2)
  {
    return 0;
  }

  if (v22 >= a2)
  {
    goto LABEL_39;
  }

  v23 = v21 + 1;
  v24 = 8 * (v21 + 1);
  if ((v21 + 1) <= 3)
  {
    v27 = ((~(-1 << v24) + a2 - v22) >> v24) + 1;
    if (HIWORD(v27))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (v27 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (v27 < 2)
    {
LABEL_39:
      v29 = *(a1 + v21);
      if (v22 <= (v29 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v29);
      }
    }
  }

  v25 = *(a1 + v23);
  if (!*(a1 + v23))
  {
    goto LABEL_39;
  }

LABEL_28:
  v28 = (v25 - 1) << v24;
  if (v23 > 3)
  {
    v28 = 0;
  }

  if (v23)
  {
    if (v23 > 3)
    {
      LODWORD(v23) = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        LODWORD(v23) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v23) = *a1;
      }
    }

    else if (v23 == 1)
    {
      LODWORD(v23) = *a1;
    }

    else
    {
      LODWORD(v23) = *a1;
    }
  }

  return v22 + (v23 | v28) + 1;
}

void sub_1A97F3154(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v4 = *(a4[4] - 8);
  v5 = *(v4 + 64);
  if (!*(v4 + 84))
  {
    ++v5;
  }

  v33 = v5 + ((((*(*(a4[2] - 8) + 64) + *(*(a4[3] - 8) + 80)) & ~*(*(a4[3] - 8) + 80)) + *(*(a4[3] - 8) + 64) + *(v4 + 80)) & ~*(v4 + 80));
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 80);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 80);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  v12 = *(v10 + 80);
  v13 = v12 | 7;
  v14 = ((v7 + 8) & ~v7) + (v9 | 7) + *(v6 + 64);
  if (!*(v6 + 84))
  {
    ++v14;
  }

  v15 = (v14 + 1) & ~(v9 | 7);
  v16 = ((v9 + 8) & ~v9) + v13 + *(v8 + 64);
  if (!*(v8 + 84))
  {
    ++v16;
  }

  v17 = (v16 + v15 + 1) & ~v13;
  v18 = ((v12 + 8) & ~v12) + *(v10 + 64) + (((v9 | v7 | v12) & 0xF8 ^ 0x1F8) & ((v9 | v7 | v12) + 8));
  if (!*(v11 + 84))
  {
    ++v18;
  }

  v19 = (v18 + v17 + 8) & 0xFFFFFFFFFFFFFFF8;
  v20 = v19 + 8;
  if (v19 + 8 <= v33)
  {
    v20 = v33;
  }

  v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v21 <= v20)
  {
    v21 = v20;
  }

  if (v21 <= 8)
  {
    v21 = 8;
  }

  v22 = 250 - (1u >> (8 * v21));
  if (v21 > 3)
  {
    v22 = 250;
  }

  v23 = v21 + 1;
  if (v22 >= a3)
  {
    v24 = 0;
  }

  else
  {
    v24 = 1;
    if (v23 <= 3)
    {
      v25 = ((~(-1 << (8 * v23)) + a3 - v22) >> (8 * v23)) + 1;
      v26 = HIWORD(v25);
      if (v25 < 0x100)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      if (v25 >= 2)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      if (v26)
      {
        v24 = 4;
      }

      else
      {
        v24 = v28;
      }
    }
  }

  if (v22 >= a2)
  {
    if (v24 > 1)
    {
      if (v24 != 2)
      {
        *&a1[v23] = 0;
        if (!a2)
        {
          return;
        }

LABEL_45:
        a1[v21] = -a2;
        return;
      }

      *&a1[v23] = 0;
    }

    else if (v24)
    {
      a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  v29 = ~v22 + a2;
  if (v23 >= 4)
  {
    bzero(a1, v23);
    *a1 = v29;
    v30 = 1;
    if (v24 > 1)
    {
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  v30 = (v29 >> (8 * v23)) + 1;
  if (v21 == -1)
  {
LABEL_49:
    if (v24 > 1)
    {
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  v31 = v29 & ~(-1 << (8 * v23));
  bzero(a1, v23);
  if (v23 == 3)
  {
    *a1 = v31;
    a1[2] = BYTE2(v31);
    goto LABEL_49;
  }

  if (v23 == 2)
  {
    *a1 = v31;
    if (v24 > 1)
    {
LABEL_53:
      if (v24 == 2)
      {
        *&a1[v23] = v30;
      }

      else
      {
        *&a1[v23] = v30;
      }

      return;
    }
  }

  else
  {
    *a1 = v29;
    if (v24 > 1)
    {
      goto LABEL_53;
    }
  }

LABEL_50:
  if (v24)
  {
    a1[v23] = v30;
  }
}

void sub_1A97F360C()
{
  if (!qword_1EB3AB600)
  {
    v0 = sub_1A97F3654();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3AB600);
    }
  }
}

unint64_t sub_1A97F3654()
{
  result = qword_1EB3AB5F8;
  if (!qword_1EB3AB5F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB3AB5F8);
  }

  return result;
}

void sub_1A97F36C0(uint64_t a1)
{
  sub_1A97FDCC4(319, &qword_1EB3AB690, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1A99770A0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A97F376C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 40) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_32;
  }

  v11 = v9 + *(*(*(a3 + 40) - 8) + 64) + ((v8 + 8) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 < 2)
    {
LABEL_32:
      if (v6 > 0x7FFFFFFE)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 8) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        if ((v17 + 1) >= 2)
        {
          return v17;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_32;
  }

LABEL_21:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_1A97F393C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 40) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 40) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = v12 + ((v11 + 8) & ~v11) + 1;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
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
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v12 + ((v11 + 8) & ~v11) != -1)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 > 0x7FFFFFFE)
  {
    v21 = (&a1[v11 + 8] & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;

      v25(v21, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *a1 = a2;
  }
}

uint64_t sub_1A97F3C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a10;
  v18[6] = a11;
  v14 = type metadata accessor for CombineLatestStateMachine.State.Upstream(0, v18);
  v15 = *(v14 + 76);
  v16 = sub_1A99770A0();
  result = (*(*(v16 - 8) + 32))(&a9[v15], a2, v16);
  a9[*(v14 + 80)] = a3;
  return result;
}

uint64_t sub_1A97F3D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = sub_1A99770A0();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v18 = *(TupleTypeMetadata3 + 48);
  v19 = *(TupleTypeMetadata3 + 64);
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  (*(*(a5 - 8) + 32))(a9 + v18, a2, a5);
  v20 = *(v16 - 8);
  (*(v20 + 16))(a9 + v19, a3, v16);
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v32 = a10;
  type metadata accessor for CombineLatestStateMachine.State(0, &v27);
  swift_storeEnumTagMultiPayload();
  v21 = (*(*(a6 - 8) + 48))(a3, 1, a6);
  (*(v20 + 8))(a3, v16);
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v32 = a10;
  result = type metadata accessor for CombineLatestStateMachine(0, &v27);
  if (v21 == 1)
  {
    v23 = 2;
  }

  else
  {
    v23 = 3;
  }

  *(a9 + *(result + 68)) = v23;
  return result;
}

uint64_t sub_1A97F3F28(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = a1[6];
  v7 = a1[7];
  v95 = v3;
  v96 = v2;
  v97 = v4;
  v98 = AssociatedTypeWitness;
  v88 = AssociatedTypeWitness;
  v99 = v5;
  v100 = v8;
  v101 = v7;
  v9 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v95);
  v10 = swift_getAssociatedTypeWitness();
  v95 = v3;
  v96 = v2;
  v97 = v4;
  v98 = v10;
  v87 = v10;
  v99 = v5;
  v100 = v8;
  v101 = v7;
  v11 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v95);
  v12 = swift_getAssociatedTypeWitness();
  v95 = v3;
  v96 = v2;
  v97 = v4;
  v98 = v12;
  v86 = v12;
  v99 = v5;
  v100 = v8;
  v101 = v7;
  v93 = v9;
  v89 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v95);
  v90 = v11;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v91 = *(TupleTypeMetadata3 - 8);
  v92 = TupleTypeMetadata3;
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v16 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v76 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = v76 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = v76 - v23;
  v95 = v3;
  v96 = v2;
  v97 = v4;
  v98 = v5;
  v99 = v8;
  v100 = v7;
  v25 = type metadata accessor for CombineLatestStateMachine.State(0, &v95);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v76 - v27;
  (*(v26 + 16))(v76 - v27, v94, v25);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    v82 = v16;
    v83 = v19;
    v84 = v22;
    v85 = v24;
    v31 = v93;
    if (!result)
    {
LABEL_13:
      v69 = sub_1A99770A0();
      v70 = swift_getTupleTypeMetadata3();
      v71 = *(v70 + 48);
      (*(*(v69 - 8) + 8))(&v28[*(v70 + 64)], v69);
      (*(*(v2 - 8) + 8))(&v28[v71], v2);
      (*(*(v3 - 8) + 8))(v28, v3);
      return 0;
    }

    if (result != 1)
    {
      __break(1u);
      return result;
    }

    v81 = *v28;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
    sub_1A99770A0();
    v32 = swift_getTupleTypeMetadata3();
    type metadata accessor for Deque(255, v32, v33, v34);
    v35 = v92;
    v36 = *(swift_getTupleTypeMetadata3() + 48);

    v37 = v91;
    v38 = v85;
    (*(v91 + 32))(v85, &v28[v36], v35);
    (*(v26 + 8))(v94, v25);
    swift_storeEnumTagMultiPayload();
    v39 = *(v37 + 16);
    v40 = v84;
    v39(v84, v38, v35);
    v41 = *(v35 + 48);
    v86 = *(v35 + 64);
    v87 = *v40;
    v88 = v41;
    v42 = *(v31 - 8);
    v78 = *(v42 + 8);
    v79 = v42 + 8;
    v43 = v40;
    v44 = v31;
    v78(v43, v31);
    v45 = v83;
    v39(v83, v38, v35);
    v46 = *(v35 + 48);
    v77 = *(v35 + 64);
    v94 = *&v45[v46];
    v47 = v90;
    v48 = *(v90 - 8);
    v49 = *(v48 + 8);
    v76[1] = v48 + 8;
    v49(&v45[v46], v90);
    v50 = v82;
    v39(v82, v38, v35);
    v51 = *(v35 + 48);
    v52 = *(v35 + 64);
    v80 = *&v50[v52];
    v53 = v89;
    v54 = *(*(v89 - 8) + 8);
    v54(&v50[v52], v89);
    v49(&v50[v51], v47);
    v55 = v50;
    v56 = v78;
    v78(v55, v44);
    v54(&v45[v77], v53);
    v56(v45, v44);
    v57 = v84;
    v54(v84 + v86, v53);
    v58 = v47;
    v59 = v87;
    v49(v57 + v88, v58);
    if (v59)
    {
      v60 = sub_1A97AE980(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v62 = *(v60 + 2);
      v61 = *(v60 + 3);
      if (v62 >= v61 >> 1)
      {
        v60 = sub_1A97AE980((v61 > 1), v62 + 1, 1, v60);
      }

      v64 = v91;
      v63 = v92;
      v65 = v85;
      v66 = v94;
      v67 = v80;
      *(v60 + 2) = v62 + 1;
      *&v60[8 * v62 + 32] = v59;
      if (!v66)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v60 = MEMORY[0x1E69E7CC0];
      v64 = v91;
      v63 = v92;
      v65 = v85;
      v66 = v94;
      v67 = v80;
      if (!v94)
      {
LABEL_21:
        if (v67)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = sub_1A97AE980(0, *(v60 + 2) + 1, 1, v60);
          }

          v75 = *(v60 + 2);
          v74 = *(v60 + 3);
          if (v75 >= v74 >> 1)
          {
            v60 = sub_1A97AE980((v74 > 1), v75 + 1, 1, v60);
          }

          *(v60 + 2) = v75 + 1;
          *&v60[8 * v75 + 32] = v67;
        }

        (*(v64 + 8))(v65, v63);
        return v81;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v60 = sub_1A97AE980(0, *(v60 + 2) + 1, 1, v60);
    }

    v73 = *(v60 + 2);
    v72 = *(v60 + 3);
    if (v73 >= v72 >> 1)
    {
      v60 = sub_1A97AE980((v72 > 1), v73 + 1, 1, v60);
    }

    *(v60 + 2) = v73 + 1;
    *&v60[8 * v73 + 32] = v66;
    goto LABEL_21;
  }

  if ((result - 3) < 2)
  {
    v30 = *(v26 + 8);
    v30(v28, v25);
    v30(v94, v25);
    swift_storeEnumTagMultiPayload();
    return 0;
  }

  v68 = result == 5;
  result = 0;
  if (!v68)
  {
    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1A97F479C(uint64_t *a1, uint64_t a2, void *a3)
{
  v93 = a2;
  v99 = a1;
  v5 = a3[7];
  v6 = a3[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v100 = sub_1A99770A0();
  MEMORY[0x1EEE9AC00](v100);
  v92 = &v79 - v7;
  v8 = a3[6];
  v9 = a3[3];
  v102 = swift_getAssociatedTypeWitness();
  v10 = sub_1A99770A0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v91 = &v79 - v11;
  v12 = a3[5];
  v13 = a3[2];
  v14 = swift_getAssociatedTypeWitness();
  v15 = sub_1A99770A0();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v90 = &v79 - v16;
  *&v17 = v13;
  *(&v17 + 1) = v9;
  *&v18 = v6;
  *(&v18 + 1) = v12;
  v107 = v17;
  v108 = v18;
  v109 = v8;
  v110 = v5;
  v19 = type metadata accessor for CombineLatestStateMachine.State(0, &v107);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v98 = (&v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v79 - v22;
  v94 = v3;
  v95 = v24;
  (*(v24 + 16))(&v79 - v22, v3, v19);
  v96 = v19;
  v97 = v23;
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v87 = sub_1A99770A0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v86 = &v79;
    v89 = *(TupleTypeMetadata3 + 48);
    v88 = *(TupleTypeMetadata3 + 64);
    MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
    v85 = &v79 - 8;
    strcpy(&v79 - 64, "task upstreams downstreamContinuation buffer ");
    v103 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
    *&v107 = v13;
    *(&v107 + 1) = v9;
    *&v108 = v6;
    *(&v108 + 1) = v14;
    v109 = v12;
    v110 = v8;
    v111 = v5;
    type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v107);
    v27 = v8;
    *&v107 = v13;
    *(&v107 + 1) = v9;
    *&v108 = v6;
    *(&v108 + 1) = v102;
    v109 = v12;
    v110 = v8;
    v28 = v12;
    v111 = v5;
    v84 = v5;
    type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v107);
    *&v107 = v13;
    *(&v107 + 1) = v9;
    *&v108 = v6;
    *(&v108 + 1) = AssociatedTypeWitness;
    v109 = v12;
    v110 = v27;
    v111 = v5;
    type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v107);
    v104 = swift_getTupleTypeMetadata3();
    v29 = swift_getTupleTypeMetadata3();
    sub_1A99770A0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A9977A20();
    v105 = sub_1A9976CE0();
    v106 = type metadata accessor for Deque(255, v29, v30, v31);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v83 = v98 + TupleTypeMetadata[12];
    v85 = TupleTypeMetadata[16];
    v86 = TupleTypeMetadata[20];
    *v98 = v99;
    *&v107 = v13;
    *(&v107 + 1) = v9;
    v33 = v9;
    *&v108 = v6;
    *(&v108 + 1) = v14;
    v109 = v12;
    v110 = v27;
    v34 = v27;
    v35 = v84;
    v111 = v84;
    type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v107);
    *&v107 = v13;
    *(&v107 + 1) = v9;
    v36 = v6;
    *&v108 = v6;
    *(&v108 + 1) = v102;
    v109 = v28;
    v110 = v34;
    v37 = v28;
    v111 = v35;
    type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v107);
    *&v107 = v13;
    *(&v107 + 1) = v9;
    *&v108 = v36;
    *(&v108 + 1) = AssociatedTypeWitness;
    v109 = v28;
    v110 = v34;
    v111 = v35;
    v38 = v35;
    type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v107);
    v39 = swift_getTupleTypeMetadata3();
    v80 = *(v39 + 48);
    v82 = *(v39 + 64);
    v40 = *(*(v14 - 8) + 56);
    v41 = v90;
    v81 = v14;
    v40(v90, 1, 1, v14);
    v78 = v35;
    v42 = v83;
    v43 = v13;
    sub_1A97F3C48(0, v41, 0, v13, v33, v36, v14, v37, v83, v34, v78);
    v44 = v102;
    v45 = v91;
    (*(*(v102 - 8) + 56))(v91, 1, 1, v102);
    v46 = v42;
    sub_1A97F3C48(0, v45, 0, v43, v33, v36, v44, v37, &v42[v80], v34, v38);
    v47 = AssociatedTypeWitness;
    v48 = v92;
    (*(*(AssociatedTypeWitness - 8) + 56))(v92, 1, 1, AssociatedTypeWitness);
    v78 = v38;
    v49 = v33;
    sub_1A97F3C48(0, v48, 0, v43, v33, v36, v47, v37, &v46[v82], v34, v78);
    v50 = v98;
    *(v85 + v98) = v93;

    v51 = swift_getTupleTypeMetadata3();
    v52 = Deque.init()(v51);
    *(v86 + v50) = v52;
    v53 = v96;
    swift_storeEnumTagMultiPayload();
    (*(v95 + 40))(v94, v50, v53);
    v54 = v97;
    (*(*(v87 - 8) + 8))(&v97[v88]);
    (*(*(v49 - 8) + 8))(&v54[v89], v49);
    return (*(*(v43 - 8) + 8))(v54, v43);
  }

  v56 = v95;
  v55 = v96;
  v57 = v12;
  v58 = v8;
  v59 = v102;
  v60 = v97;
  if (result > 3)
  {
    if (result != 4)
    {
      if (result == 5)
      {
        goto LABEL_12;
      }

      __break(1u);
    }

LABEL_10:
    result = (*(v56 + 8))(v60, v55);
    goto LABEL_12;
  }

  v61 = v14;
  if (result == 1)
  {

    v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
    *&v107 = v13;
    *(&v107 + 1) = v9;
    *&v108 = v6;
    *(&v108 + 1) = v14;
    v109 = v57;
    v110 = v58;
    v111 = v5;
    type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v107);
    *&v107 = v13;
    *(&v107 + 1) = v9;
    *&v108 = v6;
    *(&v108 + 1) = v59;
    v109 = v57;
    v110 = v58;
    v111 = v5;
    type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v107);
    *&v107 = v13;
    *(&v107 + 1) = v9;
    *&v108 = v6;
    *(&v108 + 1) = AssociatedTypeWitness;
    v109 = v57;
    v110 = v58;
    v111 = v5;
    type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v107);
    v72 = swift_getTupleTypeMetadata3();
    v73 = swift_getTupleTypeMetadata3();
    type metadata accessor for Deque(255, v73, v74, v75);
    v76 = *(swift_getTupleTypeMetadata3() + 48);
    v77 = v97;

    result = (*(*(v72 - 8) + 8))(&v77[v76], v72);
    goto LABEL_12;
  }

  if (result != 2)
  {
    goto LABEL_10;
  }

  v99 = &v79;
  MEMORY[0x1EEE9AC00](v62);
  v98 = (&v79 - 8);
  strcpy(&v79 - 64, "task upstreams downstreamContinuation buffer ");
  v103 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
  *&v107 = v13;
  *(&v107 + 1) = v9;
  v63 = v9;
  *&v108 = v6;
  *(&v108 + 1) = v61;
  v64 = v57;
  v109 = v57;
  v110 = v58;
  v65 = v58;
  v111 = v5;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v107);
  *&v107 = v13;
  *(&v107 + 1) = v63;
  v66 = v63;
  *&v108 = v6;
  *(&v108 + 1) = v59;
  v109 = v57;
  v110 = v65;
  v111 = v5;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v107);
  *&v107 = v13;
  *(&v107 + 1) = v63;
  *&v108 = v6;
  *(&v108 + 1) = AssociatedTypeWitness;
  v109 = v57;
  v110 = v65;
  v111 = v5;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v107);
  v104 = swift_getTupleTypeMetadata3();
  v67 = swift_getTupleTypeMetadata3();
  sub_1A99770A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9977A20();
  v105 = sub_1A9976CE0();
  v106 = type metadata accessor for Deque(255, v67, v68, v69);
  v100 = *(swift_getTupleTypeMetadata() + 48);
  v70 = v97;

  *&v107 = v13;
  *(&v107 + 1) = v66;
  *&v108 = v6;
  *(&v108 + 1) = v61;
  v109 = v64;
  v110 = v65;
  v111 = v5;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v107);
  *&v107 = v13;
  *(&v107 + 1) = v66;
  *&v108 = v6;
  *(&v108 + 1) = v59;
  v109 = v64;
  v110 = v65;
  v111 = v5;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v107);
  *&v107 = v13;
  *(&v107 + 1) = v66;
  *&v108 = v6;
  *(&v108 + 1) = AssociatedTypeWitness;
  v109 = v64;
  v110 = v65;
  v111 = v5;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v107);
  v71 = swift_getTupleTypeMetadata3();
  result = (*(*(v71 - 8) + 8))(&v70[v100], v71);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1A97F5454(uint64_t a1, uint64_t a2, void *a3)
{
  v45 = a2;
  v41 = a1;
  v4 = a3[2];
  v5 = a3[3];
  v6 = a3[4];
  v7 = a3[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = a3[6];
  v9 = a3[7];
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = AssociatedTypeWitness;
  v43 = AssociatedTypeWitness;
  v51 = v7;
  v52 = v10;
  v53 = v9;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v47);
  v11 = swift_getAssociatedTypeWitness();
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v11;
  v42 = v11;
  v51 = v7;
  v52 = v10;
  v53 = v9;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v47);
  v12 = swift_getAssociatedTypeWitness();
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v12;
  v51 = v7;
  v52 = v10;
  v53 = v9;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v47);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v13 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v15 = (&v40 - v14);
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v7;
  v51 = v10;
  v52 = v9;
  v16 = type metadata accessor for CombineLatestStateMachine.State(0, &v47);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  v20 = v46;
  (*(v17 + 16))(&v40 - v18);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result > 4)
    {
      if (result == 5)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }

    if (result == 4)
    {
      (*(v17 + 8))(v19, v16);
LABEL_9:
      sub_1A9976BC0();
      sub_1A97FC63C();
      swift_allocError();
      sub_1A99766C0();
      return v45;
    }

    goto LABEL_19;
  }

  if (result != 1)
  {
    if (result == 2)
    {

      MEMORY[0x1EEE9AC00](v22);
      strcpy(&v40 - 64, "task upstreams downstreamContinuation buffer ");
      v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
      v24 = TupleTypeMetadata3;
      v47 = v23;
      v48 = TupleTypeMetadata3;
      sub_1A99770A0();
      v25 = swift_getTupleTypeMetadata3();
      sub_1A99770A0();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
      sub_1A9977A20();
      v49 = sub_1A9976CE0();
      v50 = type metadata accessor for Deque(255, v25, v26, v27);
      v28 = *(swift_getTupleTypeMetadata() + 48);

      (*(v13 + 8))(&v19[v28], v24);
      return v45;
    }

    goto LABEL_20;
  }

  v40 = *v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
  sub_1A99770A0();
  v29 = swift_getTupleTypeMetadata3();
  type metadata accessor for Deque(255, v29, v30, v31);
  v32 = TupleTypeMetadata3;
  v33 = swift_getTupleTypeMetadata3();
  v34 = *&v19[*(v33 + 64)];
  v35 = *(v13 + 32);
  v35(v15, &v19[*(v33 + 48)], v32);
  v36 = *(v17 + 8);
  v36(v20, v16);
  result = swift_storeEnumTagMultiPayload();
  switch(v41)
  {
    case 0:
      *v15 = v45;
LABEL_17:
      v36(v20, v16);
      v38 = *(v33 + 48);
      v39 = *(v33 + 64);
      *v20 = v40;
      v35((v20 + v38), v15, v32);
      *(v20 + v39) = v34;
      swift_storeEnumTagMultiPayload();
      return 0xF00000000000000FLL;
    case 1:
      v37 = *(v32 + 48);
LABEL_16:
      *(v15 + v37) = v45;
      goto LABEL_17;
    case 2:
      v37 = *(v32 + 64);
      goto LABEL_16;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1A97F5A20@<X0>(char *a1@<X0>, char *a2@<X1>, __int128 *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v368 = a3;
  v365 = a1;
  v366 = a2;
  v358 = a5;
  v6 = a4[7];
  v7 = a4[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v372 = AssociatedTypeWitness;
  v374 = sub_1A99770A0();
  v362 = *(v374 - 8);
  v9 = MEMORY[0x1EEE9AC00](v374);
  v310 = &v305 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v334 = &v305 - v12;
  v347 = *(AssociatedTypeWitness - 1);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v309 = &v305 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v323 = &v305 - v15;
  v16 = a4[6];
  v17 = a4[3];
  v18 = swift_getAssociatedTypeWitness();
  v359 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v316 = &v305 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v317 = &v305 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v321 = &v305 - v23;
  v24 = a4[5];
  v308 = a4;
  v25 = a4[2];
  v26 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v335 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v330 = &v305 - v27;
  v375 = sub_1A99770A0();
  v370 = *(v375 - 1);
  v28 = MEMORY[0x1EEE9AC00](v375);
  v324 = &v305 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v327 = &v305 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v319 = &v305 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v311 = &v305 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v314 = &v305 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v315 = &v305 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v331 = &v305 - v41;
  v354 = *(v26 - 8);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v318 = &v305 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v322 = &v305 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v320 = (&v305 - v47);
  MEMORY[0x1EEE9AC00](v46);
  v332 = &v305 - v48;
  v49 = sub_1A99770A0();
  v369 = *(v49 - 8);
  v50 = MEMORY[0x1EEE9AC00](v49);
  v325 = &v305 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v326 = &v305 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v328 = &v305 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v329 = &v305 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v313 = &v305 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v312 = &v305 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v340 = &v305 - v62;
  *&v377 = v25;
  *(&v377 + 1) = v17;
  *&v378 = v7;
  *(&v378 + 1) = v26;
  v361 = v26;
  v379 = v24;
  v380 = v16;
  v381 = v6;
  v63 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v377);
  *&v377 = v25;
  *(&v377 + 1) = v17;
  *&v378 = v7;
  *(&v378 + 1) = v18;
  v367 = v18;
  v379 = v24;
  v380 = v16;
  v381 = v6;
  v64 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v377);
  *&v377 = v25;
  *(&v377 + 1) = v17;
  *&v378 = v7;
  *(&v378 + 1) = v372;
  v379 = v24;
  v380 = v16;
  v381 = v6;
  v65 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v377);
  v346 = v63;
  v348 = v64;
  v344 = v65;
  v371 = swift_getTupleTypeMetadata3();
  v357 = *(v371 - 8);
  v66 = MEMORY[0x1EEE9AC00](v371);
  v349 = &v305 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v345 = &v305 - v68;
  v336 = v25;
  *&v69 = v25;
  v338 = v17;
  *(&v69 + 1) = v17;
  v339 = v7;
  *&v70 = v7;
  v337 = v24;
  *(&v70 + 1) = v24;
  v355 = v70;
  v377 = v69;
  v378 = v70;
  v356 = v69;
  v363 = v16;
  v364 = v6;
  v379 = v16;
  v380 = v6;
  v71 = type metadata accessor for CombineLatestStateMachine.State(0, &v377);
  v72 = *(v71 - 1);
  MEMORY[0x1EEE9AC00](v71);
  v74 = (&v305 - v73);
  v75 = v374;
  v76 = v375;
  v77 = swift_getTupleTypeMetadata3();
  v78 = *(v77 - 8);
  v79 = MEMORY[0x1EEE9AC00](v77);
  v333 = &v305 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = MEMORY[0x1EEE9AC00](v79);
  v343 = &v305 - v82;
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v305 - v83;
  v85 = *(v369 + 16);
  v351 = v49;
  v86 = v49;
  v87 = v72;
  v360 = v369 + 16;
  v85(&v305 - v83, v365, v86);
  v88 = *(v370 + 16);
  v342 = *(v77 + 48);
  v89 = v366;
  v365 = v88;
  v366 = (v370 + 16);
  (v88)(&v342[v84], v89, v76);
  v90 = v77;
  v91 = *(v77 + 64);
  v92 = *(v362 + 16);
  v353 = (v362 + 16);
  v352 = v92;
  v92(&v84[v91], v368, v75);
  (*(v87 + 16))(v74, v373, v71);
  v368 = v71;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        (*(v78 + 8))(v84, v90);
        goto LABEL_14;
      }

      goto LABEL_54;
    }

    if (EnumCaseMultiPayload == 4)
    {
      (*(v78 + 8))(v84, v90);
      (*(v87 + 8))(v74, v368);
LABEL_14:
      v377 = v356;
      v378 = v355;
      v379 = v363;
      v380 = v364;
      v129 = type metadata accessor for CombineLatestStateMachine.ElementProducedAction(0, &v377);
      return (*(*(v129 - 8) + 56))(v358, 1, 1, v129);
    }

    goto LABEL_52;
  }

  v307 = v78;
  if (EnumCaseMultiPayload == 1)
  {
    v339 = *v74;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
    v349 = v91;
    v130 = v85;
    v133 = type metadata accessor for Deque(255, TupleTypeMetadata3, v131, v132);
    v134 = v371;
    v333 = v133;
    v135 = swift_getTupleTypeMetadata3();
    v136 = *(v135 + 48);
    v338 = v135;
    v137 = *(v74 + *(v135 + 64));
    (*(v357 + 32))(v345, v74 + v136, v134);
    v376 = v137;
    v337 = *(v87 + 8);
    v341 = v87 + 8;
    v337(v373, v368);
    swift_storeEnumTagMultiPayload();
    v138 = v90;
    v139 = *(v90 + 48);
    v140 = *(v90 + 64);
    v141 = v343;
    v142 = v351;
    v143 = v130;
    (v130)(v343, v84, v351);
    (v365)(&v141[v139], &v342[v84], v375);
    v144 = v140;
    v352(&v141[v140], &v349[v84], v374);
    v91 = v354 + 48;
    v145 = *(v354 + 48);
    v146 = v145(v141, 1, v361);
    v336 = v139;
    v306 = v138;
    if (v146 == 1)
    {
      v349 = v145;
      v340 = v143;
      v147 = *(v359 + 48);
      v148 = v147(&v141[v139], 1, v367);
      v149 = v347;
      if (v148 == 1)
      {
        v353 = v147;
        v150 = v372;
        if ((*(v347 + 48))(&v141[v144], 1, v372) == 1)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v151 = *(v149 + 32);
        v352 = (v149 + 32);
        v342 = v151;
        (v151)(v323, &v141[v144], v150);
        v152 = v345;
        v153 = v313;
        (v340)(v313, &v345[*(v346 + 76)], v351);
        v154 = (v349)(v153, 1, v361);
        v155 = v367;
        if (v154 == 1)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v91 = v371;
        v156 = v314;
        (v365)(v314, &v152[*(v371 + 48) + *(v348 + 76)], v375);
        if (v353(v156, 1, v155) == 1)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v157 = v334;
        (*(v149 + 16))(v334, v323, v150);
        v158 = *(v149 + 56);
        v347 = v149 + 56;
        v366 = v158;
        (v158)(v157, 0, 1, v150);
        v159 = TupleTypeMetadata3;
        v160 = *(TupleTypeMetadata3 + 48);
        v161 = *(TupleTypeMetadata3 + 64);
        v162 = v330;
        (*(v354 + 32))(v330, v153, v361);
        (*(v359 + 32))(v162 + v160, v156, v367);
        v163 = v362;
        v164 = v162 + v161;
        v165 = v374;
        (*(v362 + 32))(v164, v157, v374);
        Deque.append(_:)(v162, v333);
        (*(v335 + 8))(v162, v159);
        (*(v307 + 8))(v84, v306);
        v166 = *(v91 + 64) + *(v344 + 76);
        v167 = v345;
        (*(v163 + 8))(&v345[v166], v165);
        v168 = v372;
        (v342)(&v167[v166], v323, v372);
        (v366)(&v167[v166], 0, 1, v168);
        v169 = v375;
        v171 = v369;
        v170 = v370;
        v172 = v351;
      }

      else
      {
        v71 = v315;
        (v365)(v315, &v141[v139], v375);
        v195 = (*(v149 + 48))(&v141[v144], 1, v372);
        v94 = &v382;
        if (v195 != 1)
        {
LABEL_56:
          v354 = *(v94 - 32);
          v361 = v367;
          v340 = v71;
LABEL_57:
          (*(v354 + 8))(v340, v361);
          goto LABEL_58;
        }

        v196 = v359;
        v197 = *(v359 + 32);
        v372 = (v359 + 32);
        v366 = v197;
        (v197)(v321, v71, v367);
        v198 = v312;
        (v340)(v312, &v345[*(v346 + 76)], v351);
        v199 = v361;
        if ((v349)(v198, 1, v361) == 1)
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v91 = v371;
        v365 = (*(v371 + 64) + *(v344 + 76));
        v200 = TupleTypeMetadata3;
        v201 = *(TupleTypeMetadata3 + 48);
        v202 = *(TupleTypeMetadata3 + 64);
        v203 = v330;
        (*(v354 + 32))(v330, v198, v199);
        v204 = v203 + v201;
        v205 = v321;
        v206 = v367;
        (*(v196 + 16))(v204, v321, v367);
        v167 = v345;
        v352((v203 + v202), &v365[v345], v374);
        Deque.append(_:)(v203, v333);
        (*(v335 + 8))(v203, v200);
        (*(v307 + 8))(v84, v306);
        v207 = *(v91 + 48) + *(v348 + 76);
        v170 = v370;
        v208 = v375;
        (*(v370 + 8))(&v167[v207], v375);
        (v366)(&v167[v207], v205, v206);
        (*(v196 + 56))(&v167[v207], 0, 1, v206);
        v169 = v208;
        v172 = v351;
        v171 = v369;
      }
    }

    else
    {
      v173 = v359;
      (v143)(v340, v141, v142);
      v175 = *(v173 + 48);
      v91 = v173 + 48;
      v174 = v175;
      if (v175(&v141[v139], 1, v367) != 1)
      {
        goto LABEL_57;
      }

      v176 = (*(v347 + 48))(&v141[v144], 1, v372);
      v71 = v332;
      v177 = v331;
      if (v176 != 1)
      {
        goto LABEL_57;
      }

      v178 = v354;
      v179 = v361;
      v372 = *(v354 + 32);
      v372(v332, v340, v361);
      v180 = *(v178 + 16);
      v181 = v320;
      v180(v320, v71, v179);
      v182 = v371;
      v167 = v345;
      (v365)(v177, &v345[*(v371 + 48) + *(v348 + 76)], v375);
      v183 = v177;
      v184 = v367;
      if (v174(v183, 1, v367) == 1)
      {
        goto LABEL_55;
      }

      v366 = (*(v182 + 64) + *(v344 + 76));
      v185 = TupleTypeMetadata3;
      v186 = *(TupleTypeMetadata3 + 48);
      v187 = *(TupleTypeMetadata3 + 64);
      v188 = v330;
      v189 = v181;
      v190 = v372;
      v372(v330, v189, v179);
      (*(v359 + 32))(v188 + v186, v331, v184);
      v352((v188 + v187), &v366[v167], v374);
      Deque.append(_:)(v188, v333);
      (*(v335 + 8))(v188, v185);
      (*(v307 + 8))(v84, v306);
      v191 = *(v346 + 76);
      v171 = v369;
      v172 = v351;
      (*(v369 + 8))(&v167[v191], v351);
      v190(&v167[v191], v332, v179);
      (*(v354 + 56))(&v167[v191], 0, 1, v179);
      v170 = v370;
      v91 = v371;
      v169 = v375;
    }

    v209 = v343;
    (*(v170 + 8))(&v343[v336], v169);
    (*(v171 + 8))(v209, v172);
    v210 = v373;
    v337(v373, v368);
    v211 = *(v338 + 48);
    v212 = *(v338 + 64);
    *v210 = v339;
    v213 = v357;
    (*(v357 + 16))(&v210[v211], v167, v91);
    *&v210[v212] = v376;
    swift_storeEnumTagMultiPayload();
    v377 = v356;
    v378 = v355;
    v379 = v363;
    v380 = v364;
    v214 = type metadata accessor for CombineLatestStateMachine.ElementProducedAction(0, &v377);
    (*(*(v214 - 8) + 56))(v358, 1, 1, v214);
    return (*(v213 + 8))(v167, v91);
  }

  v340 = v85;
  v94 = &v371;
  v341 = v87;
  if (EnumCaseMultiPayload != 2)
  {
    goto LABEL_53;
  }

  v95 = v90;
  v331 = *v74;
  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
  strcpy(&v305 - 64, "task upstreams downstreamContinuation buffer ");
  v96 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
  v97 = v371;
  *&v377 = v96;
  *(&v377 + 1) = v371;
  v98 = TupleTypeMetadata3;
  v99 = sub_1A99770A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v314 = v99;
  sub_1A9977A20();
  *&v378 = sub_1A9976CE0();
  *(&v378 + 1) = type metadata accessor for Deque(255, v98, v100, v101);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v103 = TupleTypeMetadata[12];
  v332 = *(v74 + TupleTypeMetadata[16]);
  v320 = TupleTypeMetadata;
  v104 = *(v74 + TupleTypeMetadata[20]);
  (*(v357 + 32))(v349, v74 + v103, v97);
  v330 = v104;
  *&v377 = v104;
  v107 = type metadata accessor for Deque(0, v98, v105, v106);
  swift_getWitnessTable();
  v71 = &v377;
  v108 = sub_1A9976EF0();
  v109 = v351;
  v94 = &v363;
  v110 = v333;
  if ((v108 & 1) == 0)
  {
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v313 = v107;
  v111 = *(v341 + 8);
  v341 += 8;
  v323 = v111;
  (v111)(v373, v368);
  swift_storeEnumTagMultiPayload();
  v112 = *(v90 + 48);
  v113 = *(v90 + 64);
  v114 = v340;
  (v340)(v110, v84, v109);
  (v365)(v110 + v112, &v342[v84], v375);
  v352((v110 + v113), &v84[v91], v374);
  v115 = v354;
  v116 = *(v354 + 48);
  v117 = v361;
  v345 = (v354 + 48);
  v343 = v116;
  if ((v116)(v110, 1, v361) == 1)
  {
    v321 = *(v359 + 48);
    if ((v321)(v110 + v112, 1, v367) == 1)
    {
      v118 = v347;
      v119 = v372;
      v315 = *(v347 + 48);
      result = (v315)(v110 + v113, 1, v372);
      if (result == 1)
      {
LABEL_64:
        __break(1u);
        return result;
      }

      (*(v307 + 8))(v84, v95);
      v121 = *(v371 + 64) + *(v344 + 76);
      v122 = v349;
      (*(v362 + 8))(&v349[v121], v374);
      (*(v118 + 32))(v122 + v121, v110 + v113, v119);
      v123 = v122 + v121;
      v124 = v122;
      (*(v118 + 56))(v123, 0, 1, v119);
      v117 = v361;
      v125 = v375;
      v126 = v369;
      v127 = v370;
      v128 = v346;
    }

    else
    {
      v91 = v311;
      v125 = v375;
      (v365)(v311, v110 + v112, v375);
      v315 = *(v347 + 48);
      if ((v315)(v110 + v113, 1, v372) != 1)
      {
LABEL_62:
        v354 = v359;
        v361 = v367;
        v329 = v91;
LABEL_63:
        result = (*(v354 + 8))(v329, v361);
        goto LABEL_64;
      }

      (*(v307 + 8))(v84, v95);
      v127 = v370;
      v215 = *(v371 + 48) + *(v348 + 76);
      v216 = v349;
      (*(v370 + 8))(&v349[v215], v125);
      v217 = v359;
      v218 = v91;
      v219 = v367;
      (*(v359 + 32))(v216 + v215, v218, v367);
      v220 = v216 + v215;
      v124 = v216;
      (*(v217 + 56))(v220, 0, 1, v219);
      v126 = v369;
      v128 = v346;
      v115 = v354;
    }
  }

  else
  {
    (v114)(v329, v110, v109);
    v321 = *(v359 + 48);
    if ((v321)(v110 + v112, 1, v367) != 1)
    {
      goto LABEL_63;
    }

    v315 = *(v347 + 48);
    if ((v315)(v110 + v113, 1, v372) != 1)
    {
      goto LABEL_63;
    }

    (*(v307 + 8))(v84, v95);
    v128 = v346;
    v192 = *(v346 + 76);
    v126 = v369;
    v193 = v349;
    (*(v369 + 8))(&v349[v192], v109);
    (*(v115 + 32))(v193 + v192, v329, v117);
    v194 = v193 + v192;
    v124 = v193;
    (*(v115 + 56))(v194, 0, 1, v117);
    v127 = v370;
    v125 = v375;
  }

  v222 = *(v127 + 8);
  v221 = v127 + 8;
  v329 = v222;
  (v222)(v110 + v112, v125);
  v225 = *(v126 + 8);
  v223 = v126 + 8;
  v224 = v225;
  v225(v110, v109);
  v342 = *(v128 + 76);
  v226 = v328;
  (v340)(v328, &v342[v124], v109);
  if ((v343)(v226, 1, v117) == 1)
  {
    v224(v226, v109);
  }

  else
  {
    v369 = v223;
    v227 = *(v115 + 32);
    v228 = v322;
    v333 = v115 + 32;
    v328 = v227;
    (v227)(v322, v226, v117);
    v229 = v319;
    (v365)(v319, v124 + *(v371 + 48) + *(v348 + 76), v125);
    v230 = v359;
    v231 = v367;
    if ((v321)(v229, 1, v367) == 1)
    {
      (*(v115 + 8))(v228, v117);
      (v329)(v229, v125);
    }

    else
    {
      v370 = v221;
      v232 = *(v230 + 32);
      v233 = v317;
      v319 = (v230 + 32);
      v312 = v232;
      (v232)(v317, v229, v231);
      v234 = v310;
      v235 = v374;
      v352(v310, &v349[*(v371 + 64) + *(v344 + 76)], v374);
      v236 = v347;
      v237 = v372;
      if ((v315)(v234, 1) != 1)
      {
        v375 = *(v236 + 32);
        v264 = v237;
        (v375)(v309, v234, v237);
        v265 = v373;
        (v323)(v373, v368);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
        v266 = v371;
        v267 = swift_getTupleTypeMetadata3();
        v268 = *(v267 + 48);
        v269 = *(v267 + 64);
        *v265 = v331;
        v270 = v357;
        (*(v357 + 16))(&v265[v268], v349, v266);
        *&v265[v269] = v330;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
        sub_1A9977A20();
        sub_1A9976CE0();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v272 = v358;
        v273 = v358 + *(TupleTypeMetadata2 + 48);
        *v358 = v332;
        v274 = TupleTypeMetadata3;
        v275 = *(TupleTypeMetadata3 + 48);
        v276 = *(TupleTypeMetadata3 + 64);
        (v328)(v273, v322, v361);
        (v312)(&v273[v275], v317, v367);
        (v375)(&v273[v276], v309, v264);
        (*(v236 + 56))(&v273[v276], 0, 1, v264);
        (*(v335 + 56))(v273, 0, 1, v274);
        swift_storeEnumTagMultiPayload();
        v377 = v356;
        v378 = v355;
        v379 = v363;
        v380 = v364;
        v277 = type metadata accessor for CombineLatestStateMachine.ElementProducedAction(0, &v377);
        (*(*(v277 - 8) + 56))(v272, 0, 1, v277);
        return (*(v270 + 8))(v349, v371);
      }

      (*(v230 + 8))(v233, v231);
      v238 = v234;
      v115 = v354;
      (*(v354 + 8))(v322, v117);
      (*(v362 + 8))(v238, v235);
      v221 = v370;
      v109 = v351;
    }

    v124 = v349;
  }

  v239 = v326;
  (v340)(v326, &v342[v124], v109);
  v240 = (v343)(v239, 1, v117);
  v241 = v327;
  if (v240 == 1)
  {
    v224(v239, v109);
    v242 = v373;
    v243 = v371;
    v244 = v325;
  }

  else
  {
    v370 = v221;
    v245 = v318;
    v369 = *(v115 + 32);
    (v369)(v318, v239, v117);
    v246 = v375;
    (v365)(v241, v124 + *(v371 + 48) + *(v348 + 76), v375);
    v247 = v359;
    v248 = v367;
    if ((v321)(v241, 1, v367) == 1)
    {
      (*(v115 + 8))(v245, v117);
      (v329)(v241, v246);
      v242 = v373;
    }

    else
    {
      v249 = *(v247 + 32);
      v250 = v316;
      v249(v316, v241, v248);
      v242 = v373;
      if (*&v373[*(v308 + 17)] == 2)
      {
        v375 = v249;
        (v323)(v373, v368);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
        v251 = v371;
        v252 = swift_getTupleTypeMetadata3();
        v253 = *(v252 + 48);
        v254 = v245;
        v255 = *(v252 + 64);
        *v242 = v331;
        v256 = v357;
        (*(v357 + 16))(&v242[v253], v349, v251);
        *&v242[v255] = v330;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
        sub_1A9977A20();
        sub_1A9976CE0();
        v257 = swift_getTupleTypeMetadata2();
        v258 = v358;
        v259 = v358 + *(v257 + 48);
        *v358 = v332;
        v260 = TupleTypeMetadata3;
        v261 = *(TupleTypeMetadata3 + 48);
        v262 = *(TupleTypeMetadata3 + 64);
        (v369)(v259, v254, v361);
        (v375)(&v259[v261], v316, v367);
        (*(v347 + 56))(&v259[v262], 1, 1, v372);
        (*(v335 + 56))(v259, 0, 1, v260);
        swift_storeEnumTagMultiPayload();
        v377 = v356;
        v378 = v355;
        v379 = v363;
        v380 = v364;
        v263 = type metadata accessor for CombineLatestStateMachine.ElementProducedAction(0, &v377);
        (*(*(v263 - 8) + 56))(v258, 0, 1, v263);
        return (*(v256 + 8))(v349, v371);
      }

      (*(v247 + 8))(v250, v248);
      (*(v354 + 8))(v245, v361);
      v124 = v349;
    }

    v244 = v325;
    v243 = v371;
  }

  (v323)(v242, v368);
  v278 = v242;
  v279 = &v242[v320[12]];
  v373 = v320[16];
  v370 = v320[20];
  *v278 = v331;
  v362 = *(v243 + 48);
  v369 = *(v243 + 64);
  v280 = v124;
  v281 = *v124;
  (v340)(v244, &v342[v280], v109);
  v282 = v364;
  v283 = v243;
  v284 = v363;
  v285 = v336;
  sub_1A97F3C48(v281, v244, *(v280 + *(v346 + 80)), v336, v338, v339, v361, v337, v279, v363, v364);
  v286 = v283;
  v287 = (v280 + *(v283 + 48));
  v361 = *v287;
  v288 = v348;
  v289 = v324;
  (v365)(v324, v287 + *(v348 + 76), v375);
  v290 = *(v287 + *(v288 + 80));
  v303 = v284;
  v304 = v282;
  v291 = v285;
  v292 = v338;
  v293 = v339;
  v294 = v337;
  sub_1A97F3C48(v361, v289, v290, v291, v338, v339, v367, v337, &v279[v362], v303, v304);
  v295 = (v280 + *(v286 + 64));
  v296 = *v295;
  v297 = v344;
  v298 = v334;
  v352(v334, v295 + *(v344 + 76), v374);
  v299 = *(v295 + *(v297 + 80));
  v300 = v364;
  v301 = v363;
  sub_1A97F3C48(v296, v298, v299, v336, v292, v293, v372, v294, &v279[v369], v363, v364);
  *&v373[v278] = v332;
  *(v278 + v370) = v330;
  swift_storeEnumTagMultiPayload();
  v377 = v356;
  v378 = v355;
  v379 = v301;
  v380 = v300;
  v302 = type metadata accessor for CombineLatestStateMachine.ElementProducedAction(0, &v377);
  (*(*(v302 - 8) + 56))(v358, 1, 1, v302);
  return (*(v357 + 8))(v280, v371);
}

char *sub_1A97F868C(unint64_t a1, void *a2)
{
  v169 = a1;
  v3 = a2[7];
  v4 = a2[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v173 = sub_1A99770A0();
  v157 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v156 = &v150 - v6;
  v7 = a2[6];
  v8 = a2[3];
  v9 = swift_getAssociatedTypeWitness();
  v10 = sub_1A99770A0();
  v163 = *(v10 - 8);
  v164 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v162 = &v150 - v11;
  v12 = a2[5];
  v155 = a2;
  v13 = a2[2];
  v14 = swift_getAssociatedTypeWitness();
  v161 = sub_1A99770A0();
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v159 = &v150 - v15;
  *&v176 = v13;
  *(&v176 + 1) = v8;
  *&v177 = v4;
  *(&v177 + 1) = v14;
  v171 = v14;
  v178 = v12;
  v179 = v7;
  v180 = v3;
  v16 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v176);
  *&v176 = v13;
  *(&v176 + 1) = v8;
  *&v177 = v4;
  *(&v177 + 1) = v9;
  v172 = v9;
  v178 = v12;
  v179 = v7;
  v180 = v3;
  v17 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v176);
  *&v176 = v13;
  *(&v176 + 1) = v8;
  *&v177 = v4;
  *(&v177 + 1) = AssociatedTypeWitness;
  v158 = AssociatedTypeWitness;
  v178 = v12;
  v179 = v7;
  v180 = v3;
  v18 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v176);
  v167 = v17;
  v168 = v16;
  v165 = v18;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v19 = *(TupleTypeMetadata3 - 8);
  v20 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v170 = (&v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v166 = (&v150 - v22);
  *&v23 = v13;
  *(&v23 + 1) = v8;
  *&v24 = v4;
  *(&v24 + 1) = v12;
  v176 = v23;
  v177 = v24;
  v178 = v7;
  v179 = v3;
  v25 = type metadata accessor for CombineLatestStateMachine.State(0, &v176);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v150 - v27);
  (*(v26 + 16))(&v150 - v27, v175, v25);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    v154 = v19;
    if (result == 1)
    {
LABEL_13:
      v170 = *v28;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
      v57 = v19;
      v58 = swift_getTupleTypeMetadata3();
      v41 = type metadata accessor for Deque(255, v58, v59, v60);
      v61 = TupleTypeMetadata3;
      v38 = swift_getTupleTypeMetadata3();
      v62 = *(v38 + 48);
      v173 = *(v28 + *(v38 + 64));
      v63 = *(v57 + 32);
      v40 = v57 + 32;
      v55 = v63;
      v64 = v166;
      (v63)(v166, v28 + v62, v61);
      v65 = *(v26 + 8);
      v42 = v175;
      v65(v175, v25);
      v43 = swift_storeEnumTagMultiPayload();
      v66 = v64;
      v67 = v168;
      v44 = v168;
      v68 = v64;
      switch(v169)
      {
        case 0uLL:
          goto LABEL_20;
        case 1uLL:
          v69 = 48;
          v44 = v167;
LABEL_19:
          v68 = v64 + *(TupleTypeMetadata3 + v69);
LABEL_20:
          v68[*(v44 + 80)] = 1;
          if (*(v64 + *(v67 + 80)) == 1)
          {
            v77 = (v64 + *(TupleTypeMetadata3 + 48));
            if (*(v77 + *(v167 + 80)) == 1)
            {
              v78 = (v66 + *(TupleTypeMetadata3 + 64));
              if (*(v78 + *(v165 + 80)) == 1)
              {
                v79 = v173;
                *&v176 = v173;
                swift_getWitnessTable();
                v80 = v42;
                v81 = sub_1A9976EF0();
                v65(v80, v25);
                if (v81)
                {
                  swift_storeEnumTagMultiPayload();
                }

                else
                {
                  *v80 = v79;
                  swift_storeEnumTagMultiPayload();
                }

                v112 = *v166;
                v113 = *v77;
                v114 = *v78;
                if (*v166)
                {
                  v115 = sub_1A97AE980(0, 1, 1, MEMORY[0x1E69E7CC0]);
                  v117 = *(v115 + 2);
                  v116 = *(v115 + 3);
                  if (v117 >= v116 >> 1)
                  {
                    v115 = sub_1A97AE980((v116 > 1), v117 + 1, 1, v115);
                  }

                  *(v115 + 2) = v117 + 1;
                  *&v115[8 * v117 + 32] = v112;
                }

                else
                {
                  v115 = MEMORY[0x1E69E7CC0];
                }

                if (v113)
                {
                  v126 = v115;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v126 = sub_1A97AE980(0, *(v126 + 2) + 1, 1, v126);
                  }

                  v115 = v126;
                  v128 = *(v126 + 2);
                  v127 = *(v126 + 3);
                  if (v128 >= v127 >> 1)
                  {
                    v115 = sub_1A97AE980((v127 > 1), v128 + 1, 1, v126);
                  }

                  *(v115 + 2) = v128 + 1;
                  *&v115[8 * v128 + 32] = v113;
                }

                if (!v114)
                {
                  goto LABEL_95;
                }

                goto LABEL_77;
              }

              if (*(v42 + *(v155 + 17)) == 2)
              {
                v105 = v173;
                *&v176 = v173;
                swift_getWitnessTable();
                v106 = v42;
                v107 = sub_1A9976EF0();
                v65(v106, v25);
                if (v107)
                {
                  swift_storeEnumTagMultiPayload();
                }

                else
                {
                  *v106 = v105;
                  swift_storeEnumTagMultiPayload();
                }

                v133 = *v166;
                v134 = *v77;
                v114 = *v78;
                if (*v166)
                {
                  v115 = sub_1A97AE980(0, 1, 1, MEMORY[0x1E69E7CC0]);
                  v136 = *(v115 + 2);
                  v135 = *(v115 + 3);
                  if (v136 >= v135 >> 1)
                  {
                    v115 = sub_1A97AE980((v135 > 1), v136 + 1, 1, v115);
                  }

                  *(v115 + 2) = v136 + 1;
                  *&v115[8 * v136 + 32] = v133;
                }

                else
                {
                  v115 = MEMORY[0x1E69E7CC0];
                }

                if (v134)
                {
                  v137 = v115;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v137 = sub_1A97AE980(0, *(v137 + 2) + 1, 1, v137);
                  }

                  v115 = v137;
                  v139 = *(v137 + 2);
                  v138 = *(v137 + 3);
                  if (v139 >= v138 >> 1)
                  {
                    v115 = sub_1A97AE980((v138 > 1), v139 + 1, 1, v137);
                  }

                  *(v115 + 2) = v139 + 1;
                  *&v115[8 * v139 + 32] = v134;
                }

                if (!v114)
                {
                  goto LABEL_95;
                }

LABEL_77:
                v129 = v115;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v129 = sub_1A97AE980(0, *(v129 + 2) + 1, 1, v129);
                }

                v130 = v129;
                v132 = *(v129 + 2);
                v131 = *(v129 + 3);
                if (v132 >= v131 >> 1)
                {
                  v130 = sub_1A97AE980((v131 > 1), v132 + 1, 1, v129);
                }

                *(v130 + 2) = v132 + 1;
                *&v130[8 * v132 + 32] = v114;
LABEL_95:

                (*(v154 + 8))(v166, TupleTypeMetadata3);
                return v170;
              }
            }
          }

          v108 = v66;
          v65(v42, v25);
          v109 = *(v38 + 48);
          v110 = v42;
          v111 = *(v38 + 64);
          *v110 = v170;
          (v55)(v110 + v109, v108, TupleTypeMetadata3);
          *(v110 + v111) = v173;
LABEL_67:
          swift_storeEnumTagMultiPayload();
          return 0xF000000000000007;
        case 2uLL:
          v69 = 64;
          v44 = v165;
          goto LABEL_19;
      }

      __break(1u);
      goto LABEL_119;
    }

    v30 = v171;
    AssociatedTypeWitness = v172;
    if (result != 2)
    {
      goto LABEL_121;
    }

    v166 = *v28;
    MEMORY[0x1EEE9AC00](result);
    strcpy(&v150 - 64, "task upstreams downstreamContinuation buffer ");
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
    v32 = TupleTypeMetadata3;
    *&v176 = v31;
    *(&v176 + 1) = TupleTypeMetadata3;
    v33 = swift_getTupleTypeMetadata3();
    sub_1A99770A0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A9977A20();
    *&v177 = sub_1A9976CE0();
    *(&v177 + 1) = type metadata accessor for Deque(255, v33, v34, v35);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v37 = TupleTypeMetadata[12];
    v38 = *(v28 + TupleTypeMetadata[16]);
    v152 = TupleTypeMetadata;
    v39 = *(v28 + TupleTypeMetadata[20]);
    v40 = v154 + 32;
    v151 = *(v154 + 32);
    v151(v170, v28 + v37, v32);
    v41 = *(v26 + 8);
    v42 = v175;
    v41(v175, v25);
    v43 = swift_storeEnumTagMultiPayload();
    v44 = v169;
    v153 = v41;
    if (v169)
    {
      if (v169 == 1)
      {
        v45 = v170;
        v46 = v170 + *(TupleTypeMetadata3 + 48);
        v47 = v167;
        v46[*(v167 + 80)] = 1;
        v48 = *(v47 + 76);
        v173 = v39;
        v50 = v162;
        v49 = v163;
        v51 = v38;
        v52 = v164;
        (*(v163 + 16))(v162, &v46[v48], v164);
        v53 = (*(*(AssociatedTypeWitness - 8) + 48))(v50, 1, AssociatedTypeWitness);
        v54 = v50;
        v55 = v45;
        v56 = v52;
        v38 = v51;
        (*(v49 + 8))(v54, v56);
        v39 = v173;
      }

      else
      {
        v55 = v170;
        if (v169 != 2)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        v82 = v39;
        v83 = v38;
        v84 = v173;
        v85 = v170 + *(TupleTypeMetadata3 + 64);
        v86 = v165;
        v85[*(v165 + 80)] = 1;
        v87 = v157;
        v88 = v156;
        (*(v157 + 16))(v156, &v85[*(v86 + 76)], v84);
        v53 = (*(*(v158 - 8) + 48))(v88, 1);
        (*(v87 + 8))(v88, v84);
        v38 = v83;
        v39 = v82;
      }
    }

    else
    {
      v70 = v168;
      v71 = v170;
      *(v170 + *(v168 + 80)) = 1;
      v72 = v160;
      v73 = v159;
      v74 = v161;
      (*(v160 + 16))(v159, v71 + *(v70 + 76), v161);
      v75 = *(*(v30 - 8) + 48);
      v76 = v30;
      v55 = v71;
      v53 = v75(v73, 1, v76);
      (*(v72 + 8))(v73, v74);
    }

    if (v53 == 1)
    {
      v153(v175, v25);
      swift_storeEnumTagMultiPayload();
      AssociatedTypeWitness = *v55;
      v41 = *(v55 + *(TupleTypeMetadata3 + 48));
      v40 = *(v55 + *(TupleTypeMetadata3 + 64));
      if (!*v55)
      {
        v43 = MEMORY[0x1E69E7CC0];
        if (!v41)
        {
          goto LABEL_45;
        }

        goto LABEL_40;
      }

      v43 = sub_1A97AE980(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v25 = *(v43 + 16);
      v44 = *(v43 + 24);
      v42 = v25 + 1;
      if (v25 < v44 >> 1)
      {
LABEL_30:
        *(v43 + 16) = v42;
        *(v43 + 8 * v25 + 32) = AssociatedTypeWitness;
        if (!v41)
        {
LABEL_45:
          if (v40)
          {
            v101 = v43;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v101 = sub_1A97AE980(0, *(v101 + 2) + 1, 1, v101);
            }

            v102 = v101;
            v104 = *(v101 + 2);
            v103 = *(v101 + 3);
            if (v104 >= v103 >> 1)
            {
              v102 = sub_1A97AE980((v103 > 1), v104 + 1, 1, v101);
            }

            *(v102 + 2) = v104 + 1;
            *&v102[8 * v104 + 32] = v40;
          }

LABEL_51:
          (*(v154 + 8))(v55, TupleTypeMetadata3);

          return (v38 | 0x8000000000000000);
        }

LABEL_40:
        v98 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_1A97AE980(0, *(v98 + 2) + 1, 1, v98);
        }

        v43 = v98;
        v100 = *(v98 + 2);
        v99 = *(v98 + 3);
        if (v100 >= v99 >> 1)
        {
          v43 = sub_1A97AE980((v99 > 1), v100 + 1, 1, v98);
        }

        *(v43 + 16) = v100 + 1;
        *(v43 + 8 * v100 + 32) = v41;
        goto LABEL_45;
      }

LABEL_120:
      v43 = sub_1A97AE980((v44 > 1), v42, 1, v43);
      goto LABEL_30;
    }

    v173 = v38;
    v89 = v39;
    if (*(v55 + *(v168 + 80)) == 1)
    {
      v90 = (v55 + *(TupleTypeMetadata3 + 48));
      if (*(v90 + *(v167 + 80)) == 1)
      {
        v91 = (v55 + *(TupleTypeMetadata3 + 64));
        if (*(v91 + *(v165 + 80)) == 1)
        {
          v153(v175, v25);
          swift_storeEnumTagMultiPayload();
          v92 = *v55;
          v93 = *v90;
          v94 = *v91;
          if (*v55)
          {
            v95 = sub_1A97AE980(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v97 = *(v95 + 2);
            v96 = *(v95 + 3);
            if (v97 >= v96 >> 1)
            {
              v95 = sub_1A97AE980((v96 > 1), v97 + 1, 1, v95);
            }

            v38 = v173;
            *(v95 + 2) = v97 + 1;
            *&v95[8 * v97 + 32] = v92;
          }

          else
          {
            v95 = MEMORY[0x1E69E7CC0];
            v38 = v173;
          }

          if (v93)
          {
            v140 = v95;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v140 = sub_1A97AE980(0, *(v140 + 2) + 1, 1, v140);
            }

            v95 = v140;
            v142 = *(v140 + 2);
            v141 = *(v140 + 3);
            if (v142 >= v141 >> 1)
            {
              v95 = sub_1A97AE980((v141 > 1), v142 + 1, 1, v140);
            }

            *(v95 + 2) = v142 + 1;
            *&v95[8 * v142 + 32] = v93;
          }

          if (!v94)
          {
            goto LABEL_51;
          }

          goto LABEL_104;
        }

        if (*(v175 + *(v155 + 17)) == 2)
        {
          v153(v175, v25);
          swift_storeEnumTagMultiPayload();
          v118 = *v55;
          v119 = *v90;
          v94 = *v91;
          if (*v55)
          {
            v95 = sub_1A97AE980(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v121 = *(v95 + 2);
            v120 = *(v95 + 3);
            if (v121 >= v120 >> 1)
            {
              v95 = sub_1A97AE980((v120 > 1), v121 + 1, 1, v95);
            }

            *(v95 + 2) = v121 + 1;
            *&v95[8 * v121 + 32] = v118;
          }

          else
          {
            v95 = MEMORY[0x1E69E7CC0];
          }

          v38 = v173;
          if (v119)
          {
            v147 = v95;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v147 = sub_1A97AE980(0, *(v147 + 2) + 1, 1, v147);
            }

            v95 = v147;
            v149 = *(v147 + 2);
            v148 = *(v147 + 3);
            if (v149 >= v148 >> 1)
            {
              v95 = sub_1A97AE980((v148 > 1), v149 + 1, 1, v147);
            }

            *(v95 + 2) = v149 + 1;
            *&v95[8 * v149 + 32] = v119;
          }

          if (!v94)
          {
            goto LABEL_51;
          }

LABEL_104:
          v143 = v95;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v143 = sub_1A97AE980(0, *(v143 + 2) + 1, 1, v143);
          }

          v144 = v143;
          v146 = *(v143 + 2);
          v145 = *(v143 + 3);
          if (v146 >= v145 >> 1)
          {
            v144 = sub_1A97AE980((v145 > 1), v146 + 1, 1, v143);
          }

          *(v144 + 2) = v146 + 1;
          *&v144[8 * v146 + 32] = v94;
          goto LABEL_51;
        }
      }
    }

    v122 = v175;
    v153(v175, v25);
    v123 = v152[12];
    v124 = v152[16];
    v125 = v152[20];
    *v122 = v166;
    v151((v122 + v123), v55, TupleTypeMetadata3);
    *(v122 + v124) = v173;
    *(v122 + v125) = v89;
    goto LABEL_67;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      return 0xF000000000000007;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (result == 4)
  {
    (*(v26 + 8))(v28, v25);
    return 0xF000000000000007;
  }

  __break(1u);
LABEL_121:
  __break(1u);
  return result;
}

char *sub_1A97F9A20(void *a1, void *a2)
{
  v131 = a1;
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = a2[6];
  v9 = a2[7];
  v137 = v3;
  v138 = v4;
  v139 = v5;
  v140 = AssociatedTypeWitness;
  v132 = AssociatedTypeWitness;
  v141 = v6;
  v142 = v8;
  v143 = v9;
  v10 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v137);
  v11 = swift_getAssociatedTypeWitness();
  v137 = v3;
  v138 = v4;
  v139 = v5;
  v140 = v11;
  v127 = v11;
  v141 = v6;
  v142 = v8;
  v143 = v9;
  v12 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v137);
  v13 = swift_getAssociatedTypeWitness();
  v137 = v3;
  v138 = v4;
  v139 = v5;
  v140 = v13;
  v126 = v13;
  v141 = v6;
  v142 = v8;
  v143 = v9;
  v133 = v10;
  v129 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v137);
  v130 = v12;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v134 = *(TupleTypeMetadata3 - 8);
  v135 = TupleTypeMetadata3;
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v128 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v117 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v117 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v117 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v117 - v26;
  v137 = v3;
  v138 = v4;
  v139 = v5;
  v140 = v6;
  v141 = v8;
  v142 = v9;
  v28 = type metadata accessor for CombineLatestStateMachine.State(0, &v137);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v117 - v30;
  (*(v29 + 16))(&v117 - v30, v136, v28);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    v33 = v135;
    v123 = v27;
    v124 = v19;
    v125 = v22;
    v122 = v25;
    if (result != 1)
    {
      v34 = v136;
      if (result != 2)
      {
        goto LABEL_46;
      }

      v35 = v25;
      v36 = v135;
      v123 = *v31;
      MEMORY[0x1EEE9AC00](result);
      strcpy(&v117 - 64, "task upstreams downstreamContinuation buffer ");
      v137 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
      v138 = v33;
      sub_1A99770A0();
      v37 = swift_getTupleTypeMetadata3();
      sub_1A99770A0();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
      sub_1A9977A20();
      v139 = sub_1A9976CE0();
      v140 = type metadata accessor for Deque(255, v37, v38, v39);
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v41 = *(TupleTypeMetadata + 48);
      v121 = *&v31[*(TupleTypeMetadata + 64)];

      v42 = v134;
      v43 = &v31[v41];
      v44 = v128;
      (*(v134 + 32))(v128, v43, v36);
      (*(v29 + 8))(v34, v28);
      swift_storeEnumTagMultiPayload();
      v45 = v36;
      v46 = *(v42 + 16);
      v46(v35, v44, v45);
      v126 = *(v45 + 48);
      v120 = *(v45 + 64);
      v127 = *v35;
      v47 = v35;
      v48 = v133;
      v49 = *(v133 - 8);
      v118 = *(v49 + 8);
      v119 = v49 + 8;
      v118(v47, v133);
      v50 = v125;
      v46(v125, v44, v45);
      v51 = *(v45 + 48);
      v117 = *(v45 + 64);
      v132 = *&v50[v51];
      v52 = v130;
      v53 = *(*(v130 - 8) + 8);
      v53(&v50[v51], v130);
      v54 = v124;
      v46(v124, v44, v45);
      v55 = *(v45 + 48);
      v56 = *(v45 + 64);
      v136 = *&v54[v56];
      v57 = v129;
      v58 = *(*(v129 - 8) + 8);
      v58(&v54[v56], v129);
      v53(&v54[v55], v52);
      v59 = v54;
      v60 = v118;
      v118(v59, v48);
      v58(&v50[v117], v57);
      v60(v50, v48);
      v61 = v122;
      v58(&v120[v122], v57);
      v53(&v61[v126], v52);
      if (v127)
      {
        v62 = v127;
        v63 = sub_1A97AE980(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v65 = *(v63 + 2);
        v64 = *(v63 + 3);
        v66 = v131;
        if (v65 >= v64 >> 1)
        {
          v63 = sub_1A97AE980((v64 > 1), v65 + 1, 1, v63);
        }

        v67 = v134;
        v68 = v121;
        v69 = v128;
        v70 = v136;
        v71 = v132;
        *(v63 + 2) = v65 + 1;
        *&v63[8 * v65 + 32] = v62;
        if (!v71)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v63 = MEMORY[0x1E69E7CC0];
        v66 = v131;
        v71 = v132;
        v67 = v134;
        v68 = v121;
        v69 = v128;
        v70 = v136;
        if (!v132)
        {
LABEL_37:
          if (v70)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v63 = sub_1A97AE980(0, *(v63 + 2) + 1, 1, v63);
            }

            v115 = *(v63 + 2);
            v114 = *(v63 + 3);
            if (v115 >= v114 >> 1)
            {
              v63 = sub_1A97AE980((v114 > 1), v115 + 1, 1, v63);
            }

            *(v63 + 2) = v115 + 1;
            *&v63[8 * v115 + 32] = v70;
          }

          (*(v67 + 8))(v69, v135);
          v116 = v66;
          return v68;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_1A97AE980(0, *(v63 + 2) + 1, 1, v63);
      }

      v113 = *(v63 + 2);
      v112 = *(v63 + 3);
      if (v113 >= v112 >> 1)
      {
        v63 = sub_1A97AE980((v112 > 1), v113 + 1, 1, v63);
      }

      *(v63 + 2) = v113 + 1;
      *&v63[8 * v113 + 32] = v71;
      goto LABEL_37;
    }

    v121 = *v31;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
    sub_1A99770A0();
    v72 = swift_getTupleTypeMetadata3();
    type metadata accessor for Deque(255, v72, v73, v74);
    v75 = v33;
    v76 = *(swift_getTupleTypeMetadata3() + 48);

    v77 = v134;
    v78 = v123;
    (*(v134 + 32))(v123, &v31[v76], v75);
    v79 = v136;
    (*(v29 + 8))(v136, v28);
    v80 = v131;
    *v79 = v131;
    swift_storeEnumTagMultiPayload();
    v81 = *(v77 + 16);
    v81(v25, v78, v75);
    v132 = *(v75 + 48);
    v82 = *(v75 + 64);
    v127 = *v25;
    v128 = v82;
    v83 = v80;
    v84 = *(v133 - 8);
    v120 = *(v84 + 8);
    v126 = v84 + 8;
    (v120)(v25);
    v85 = v125;
    v81(v125, v78, v75);
    v86 = *(v75 + 48);
    v119 = *(v75 + 64);
    v136 = *&v85[v86];
    v87 = v130;
    v88 = *(*(v130 - 8) + 8);
    v88(&v85[v86], v130);
    v89 = v124;
    v81(v124, v78, v75);
    v90 = *(v75 + 48);
    v91 = *(v75 + 64);
    v131 = *&v89[v91];
    v92 = v129;
    v93 = *(*(v129 - 8) + 8);
    v93(&v89[v91], v129);
    v88(&v89[v90], v87);
    v94 = v88;
    v95 = v89;
    v96 = v133;
    v97 = v120;
    (v120)(v95, v133);
    v93(&v85[v119], v92);
    v98 = v85;
    v99 = v127;
    v97(v98, v96);
    v100 = v122;
    v93(&v128[v122], v92);
    v94(&v100[v132], v87);
    if (v99)
    {
      v101 = sub_1A97AE980(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v103 = *(v101 + 2);
      v102 = *(v101 + 3);
      if (v103 >= v102 >> 1)
      {
        v101 = sub_1A97AE980((v102 > 1), v103 + 1, 1, v101);
      }

      v104 = v134;
      v68 = v121;
      v105 = v123;
      v106 = v136;
      v107 = v131;
      *(v101 + 2) = v103 + 1;
      *&v101[8 * v103 + 32] = v99;
      if (!v106)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v101 = MEMORY[0x1E69E7CC0];
      v104 = v134;
      v68 = v121;
      v105 = v123;
      v106 = v136;
      v107 = v131;
      if (!v136)
      {
LABEL_24:
        if (v107)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_1A97AE980(0, *(v101 + 2) + 1, 1, v101);
          }

          v111 = *(v101 + 2);
          v110 = *(v101 + 3);
          if (v111 >= v110 >> 1)
          {
            v101 = sub_1A97AE980((v110 > 1), v111 + 1, 1, v101);
          }

          *(v101 + 2) = v111 + 1;
          *&v101[8 * v111 + 32] = v107;
        }

        (*(v104 + 8))(v105, v135);
        return v68;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v101 = sub_1A97AE980(0, *(v101 + 2) + 1, 1, v101);
    }

    v109 = *(v101 + 2);
    v108 = *(v101 + 3);
    if (v109 >= v108 >> 1)
    {
      v101 = sub_1A97AE980((v108 > 1), v109 + 1, 1, v101);
    }

    *(v101 + 2) = v109 + 1;
    *&v101[8 * v109 + 32] = v106;
    goto LABEL_24;
  }

  if (result <= 4)
  {
    (*(v29 + 8))(v31, v28);
    return 0xF000000000000007;
  }

  if (result == 5)
  {
    return 0xF000000000000007;
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

char *sub_1A97FA764(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = a1[6];
  v8 = a1[7];
  v129 = v2;
  v130 = v3;
  v131 = v5;
  v132 = AssociatedTypeWitness;
  v120 = AssociatedTypeWitness;
  v133 = v4;
  v134 = v7;
  v135 = v8;
  v9 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v129);
  v10 = swift_getAssociatedTypeWitness();
  v129 = v2;
  v130 = v3;
  v131 = v5;
  v132 = v10;
  v119 = v10;
  v133 = v4;
  v134 = v7;
  v135 = v8;
  v11 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v129);
  v12 = swift_getAssociatedTypeWitness();
  v129 = v2;
  v130 = v3;
  v131 = v5;
  v132 = v12;
  v133 = v4;
  v134 = v7;
  v135 = v8;
  v124 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v129);
  v125 = v9;
  v123 = v11;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v126 = *(TupleTypeMetadata3 - 8);
  v127 = TupleTypeMetadata3;
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v16 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v122 = &v109 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v118 = &v109 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v109 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v121 = &v109 - v24;
  v129 = v2;
  v130 = v3;
  v131 = v5;
  v132 = v4;
  v133 = v7;
  v134 = v8;
  v25 = type metadata accessor for CombineLatestStateMachine.State(0, &v129);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v109 - v27;
  (*(v26 + 16))(&v109 - v27, v128, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        return 0xF000000000000007;
      }

      __break(1u);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v30 = *(v26 + 8);
      v30(v28, v25);
      v30(v128, v25);
      swift_storeEnumTagMultiPayload();
      return 0xF000000000000007;
    }

    (*(v26 + 8))(v28, v25);
    return 0xF000000000000007;
  }

  if (!EnumCaseMultiPayload)
  {
    v63 = sub_1A99770A0();
    v64 = swift_getTupleTypeMetadata3();
    v65 = *(v64 + 48);
    v66 = *(v64 + 64);
    (*(v26 + 8))(v128, v25);
    swift_storeEnumTagMultiPayload();
    (*(*(v63 - 8) + 8))(&v28[v66], v63);
    (*(*(v3 - 8) + 8))(&v28[v65], v3);
    (*(*(v2 - 8) + 8))(v28, v2);
    return 0xF000000000000007;
  }

  v117 = v23;
  if (EnumCaseMultiPayload == 1)
  {
    v116 = *v28;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
    sub_1A99770A0();
    v31 = swift_getTupleTypeMetadata3();
    type metadata accessor for Deque(255, v31, v32, v33);
    v34 = v127;
    v35 = *(swift_getTupleTypeMetadata3() + 48);

    v36 = v126;
    v37 = v121;
    (*(v126 + 32))(v121, &v28[v35], v34);
    (*(v26 + 8))(v128, v25);
    swift_storeEnumTagMultiPayload();
    v38 = *(v36 + 16);
    v38(v23, v37, v34);
    v39 = *(v34 + 48);
    v119 = *(v34 + 64);
    v120 = v39;
    v115 = *v23;
    v40 = v125;
    v41 = *(v125 - 8);
    v113 = *(v41 + 8);
    v114 = v41 + 8;
    (v113)(v23, v125);
    v42 = v118;
    v38(v118, v37, v34);
    v43 = *(v34 + 48);
    v111 = *(v34 + 64);
    v128 = *&v42[v43];
    v44 = v123;
    v45 = *(v123 - 8);
    v46 = *(v45 + 8);
    v110 = v45 + 8;
    v46(&v42[v43], v123);
    v47 = v122;
    v38(v122, v37, v34);
    v48 = *(v34 + 48);
    v49 = *(v34 + 64);
    v112 = *&v47[v49];
    v50 = v124;
    v51 = *(*(v124 - 8) + 8);
    v51(&v47[v49], v124);
    v46(&v47[v48], v44);
    v52 = v47;
    v53 = v113;
    (v113)(v52, v40);
    v51(&v111[v42], v50);
    v54 = v42;
    v55 = v115;
    v53(v54, v40);
    v56 = v117;
    v51(&v117[v119], v50);
    v46(&v56[v120], v44);
    if (v55)
    {
      v57 = v112;
      v58 = sub_1A97AE980(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v60 = *(v58 + 2);
      v59 = *(v58 + 3);
      if (v60 >= v59 >> 1)
      {
        v58 = sub_1A97AE980((v59 > 1), v60 + 1, 1, v58);
      }

      v61 = v116;
      v62 = v128;
      *(v58 + 2) = v60 + 1;
      *&v58[8 * v60 + 32] = v55;
      if (!v62)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v58 = MEMORY[0x1E69E7CC0];
      v61 = v116;
      v62 = v128;
      v57 = v112;
      if (!v128)
      {
LABEL_28:
        if (v57)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = sub_1A97AE980(0, *(v58 + 2) + 1, 1, v58);
          }

          v104 = *(v58 + 2);
          v103 = *(v58 + 3);
          if (v104 >= v103 >> 1)
          {
            v58 = sub_1A97AE980((v103 > 1), v104 + 1, 1, v58);
          }

          *(v58 + 2) = v104 + 1;
          *&v58[8 * v104 + 32] = v57;
        }

        (*(v126 + 8))(v121, v127);
        return (v61 | 0x8000000000000000);
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_1A97AE980(0, *(v58 + 2) + 1, 1, v58);
    }

    v102 = *(v58 + 2);
    v101 = *(v58 + 3);
    if (v102 >= v101 >> 1)
    {
      v58 = sub_1A97AE980((v101 > 1), v102 + 1, 1, v58);
    }

    *(v58 + 2) = v102 + 1;
    *&v58[8 * v102 + 32] = v62;
    goto LABEL_28;
  }

  v116 = *v28;
  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
  strcpy(&v109 - 64, "task upstreams downstreamContinuation buffer ");
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
  v69 = v127;
  v129 = v68;
  v130 = v127;
  sub_1A99770A0();
  v70 = swift_getTupleTypeMetadata3();
  sub_1A99770A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9977A20();
  v131 = sub_1A9976CE0();
  v132 = type metadata accessor for Deque(255, v70, v71, v72);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v74 = *(TupleTypeMetadata + 48);
  v121 = *&v28[*(TupleTypeMetadata + 64)];

  v75 = v126;
  (*(v126 + 32))(v16, &v28[v74], v69);
  (*(v26 + 8))(v128, v25);
  swift_storeEnumTagMultiPayload();
  v76 = *(v75 + 16);
  v77 = v16;
  v76(v23, v16, v69);
  v115 = *(v69 + 48);
  v113 = *(v69 + 64);
  v114 = *v23;
  v78 = v125;
  v79 = *(v125 - 8);
  v111 = *(v79 + 8);
  v112 = v79 + 8;
  (v111)(v23, v125);
  v80 = v118;
  v76(v118, v77, v69);
  v81 = *(v69 + 48);
  v110 = *(v69 + 64);
  v119 = *&v80[v81];
  v82 = v123;
  v83 = *(*(v123 - 8) + 8);
  v83(&v80[v81], v123);
  v84 = v83;
  v85 = v122;
  v128 = v77;
  v76(v122, v77, v69);
  v86 = *(v69 + 48);
  v87 = *(v69 + 64);
  v120 = *&v85[v87];
  v88 = v124;
  v89 = *(*(v124 - 8) + 8);
  v89(&v85[v87], v124);
  v84(&v85[v86], v82);
  v90 = v85;
  v91 = v111;
  (v111)(v90, v78);
  v89(&v80[v110], v88);
  v91(v80, v78);
  v92 = v117;
  v89(&v113[v117], v88);
  v93 = v82;
  v94 = v114;
  v84(&v92[v115], v93);
  if (v94)
  {
    v95 = sub_1A97AE980(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v97 = *(v95 + 2);
    v96 = *(v95 + 3);
    if (v97 >= v96 >> 1)
    {
      v95 = sub_1A97AE980((v96 > 1), v97 + 1, 1, v95);
    }

    v99 = v119;
    v98 = v120;
    *(v95 + 2) = v97 + 1;
    *&v95[8 * v97 + 32] = v94;
    v100 = v128;
    if (!v99)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  v95 = MEMORY[0x1E69E7CC0];
  v99 = v119;
  v98 = v120;
  v100 = v128;
  if (v119)
  {
LABEL_36:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v95 = sub_1A97AE980(0, *(v95 + 2) + 1, 1, v95);
    }

    v106 = *(v95 + 2);
    v105 = *(v95 + 3);
    if (v106 >= v105 >> 1)
    {
      v95 = sub_1A97AE980((v105 > 1), v106 + 1, 1, v95);
    }

    *(v95 + 2) = v106 + 1;
    *&v95[8 * v106 + 32] = v99;
    v100 = v128;
  }

LABEL_41:
  if (v98)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v95 = sub_1A97AE980(0, *(v95 + 2) + 1, 1, v95);
    }

    v108 = *(v95 + 2);
    v107 = *(v95 + 3);
    if (v108 >= v107 >> 1)
    {
      v95 = sub_1A97AE980((v107 > 1), v108 + 1, 1, v95);
    }

    *(v95 + 2) = v108 + 1;
    *&v95[8 * v108 + 32] = v98;
    v100 = v128;
  }

  (*(v126 + 8))(v100, v127);
  return v121;
}

uint64_t sub_1A97FB57C@<X0>(char *a1@<X0>, void *a2@<X1>, char **a3@<X8>)
{
  v125 = a1;
  v126 = a3;
  v4 = a2[5];
  v5 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = a2[6];
  v8 = a2[3];
  v9 = swift_getAssociatedTypeWitness();
  v10 = a2[7];
  v11 = a2[4];
  v12 = swift_getAssociatedTypeWitness();
  sub_1A99770A0();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v124 = sub_1A99770A0();
  v112 = *(v124 - 8);
  v14 = MEMORY[0x1EEE9AC00](v124);
  v117 = (&v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v118 = &v108 - v17;
  v119 = TupleTypeMetadata3;
  v121 = *(TupleTypeMetadata3 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v110 = (&v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v111 = &v108 - v20;
  v134 = v5;
  v135 = v8;
  v136 = v11;
  v137 = AssociatedTypeWitness;
  v138 = v4;
  v139 = v7;
  v140 = v10;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v134);
  v134 = v5;
  v135 = v8;
  v136 = v11;
  v137 = v9;
  v138 = v4;
  v139 = v7;
  v140 = v10;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v134);
  v134 = v5;
  v135 = v8;
  v136 = v11;
  v137 = v12;
  v138 = v4;
  v139 = v7;
  v140 = v10;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v134);
  v21 = swift_getTupleTypeMetadata3();
  v22 = *(v21 - 8);
  v122 = v21;
  v123 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v114 = &v108 - v23;
  v24 = sub_1A99770A0();
  v116 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = (&v108 - v26);
  v115 = *(v8 - 8);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v11;
  v128 = v5;
  v134 = v5;
  v135 = v8;
  v33 = v8;
  v136 = v11;
  v137 = v4;
  v130 = v7;
  v131 = v4;
  v138 = v7;
  v139 = v10;
  v129 = v10;
  v34 = v132;
  v35 = type metadata accessor for CombineLatestStateMachine.State(0, &v134);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = (&v108 - v37);
  v36[2](&v108 - v37, v34, v35);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    v110 = v36;
    v47 = v120;
    v117 = v27;
    v113 = v33;
    v48 = v123;
    if (!result)
    {
      v78 = v113;
      v79 = v128;
      v80 = v24;
      v81 = swift_getTupleTypeMetadata3();
      v82 = *(v81 + 48);
      v124 = *(v81 + 64);
      v132 = *(v47 + 4);
      v109 = v32;
      (v132)(v32, v38, v79);
      v83 = v126;
      v125 = *(v115 + 32);
      v108 = v30;
      (v125)(v30, v38 + v82, v78);
      v84 = *(v116 + 32);
      v85 = v117;
      v84(v117, v38 + v124, v80);
      v86 = swift_getTupleTypeMetadata3();
      v87 = *(v86 + 48);
      v124 = *(v86 + 64);
      (v132)(v83, v109, v79);
      (v125)(v83 + v87, v108, v78);
      v84(v83 + v124, v85, v80);
      v134 = v79;
      v135 = v78;
      v136 = v127;
      v137 = v131;
      v138 = v130;
      v139 = v129;
      type metadata accessor for CombineLatestStateMachine.NextAction(0, &v134);
      return swift_storeEnumTagMultiPayload();
    }

    if (result != 1)
    {
      goto LABEL_37;
    }

    v120 = *v38;
    v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
    v50 = v119;
    v53 = type metadata accessor for Deque(255, v119, v51, v52);
    v115 = v49;
    v54 = v122;
    v55 = swift_getTupleTypeMetadata3();
    v56 = *(v55 + 48);
    v109 = v55;
    v57 = *(v38 + *(v55 + 64));
    v58 = v114;
    v117 = *(v48 + 32);
    (v117)(v114, v38 + v56, v54);
    v133 = v57;
    v59 = v110[1];
    (v59)(v34, v35);
    swift_storeEnumTagMultiPayload();
    v116 = v53;
    v60 = v53;
    v61 = v118;
    Deque.popFirst()(v60, v118);
    v62 = v121;
    v63 = v50;
    if ((v121[6])(v61, 1, v50) != 1)
    {
      v93 = v62[4];
      v93(v111, v61, v50);
      (v59)(v34, v35);
      v94 = *(v109 + 12);
      v95 = *(v109 + 16);
      *v34 = v120;
      (v117)(v34 + v94, v58, v122);
      *(v34 + v95) = v133;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
      sub_1A9977A20();
      sub_1A9976CE0();
      v96 = *(swift_getTupleTypeMetadata2() + 48);
      v97 = v126;
      *v126 = v125;
      v93(v97 + v96, v111, v63);
      (v121[7])(v97 + v96, 0, 1, v63);
      goto LABEL_25;
    }

    v121 = v59;
    v123 = v48 + 32;
    (*(v112 + 8))(v61, v124);
    v64 = *v58;
    v119 = *(v122 + 48);
    v65 = *(v58 + v119);
    v118 = *(v122 + 64);
    v112 = *(v58 + v118);
    if (v64)
    {
      v66 = sub_1A97AE980(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v68 = *(v66 + 2);
      v67 = *(v66 + 3);
      if (v68 >= v67 >> 1)
      {
        v66 = sub_1A97AE980((v67 > 1), v68 + 1, 1, v66);
      }

      *(v66 + 2) = v68 + 1;
      *&v66[8 * v68 + 32] = v64;
      v69 = v121;
      if (v65)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v66 = MEMORY[0x1E69E7CC0];
      v69 = v121;
      if (v65)
      {
LABEL_13:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = v122;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v66 = sub_1A97AE980(0, *(v66 + 2) + 1, 1, v66);
        }

        v73 = *(v66 + 2);
        v72 = *(v66 + 3);
        if (v73 >= v72 >> 1)
        {
          v66 = sub_1A97AE980((v72 > 1), v73 + 1, 1, v66);
        }

        v74 = v58;
        *(v66 + 2) = v73 + 1;
        *&v66[8 * v73 + 32] = v65;
        v69 = v121;
        goto LABEL_28;
      }
    }

    v74 = v58;
    v71 = v122;
LABEL_28:
    v98 = v112;
    if (v112)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_1A97AE980(0, *(v66 + 2) + 1, 1, v66);
      }

      v100 = *(v66 + 2);
      v99 = *(v66 + 3);
      if (v100 >= v99 >> 1)
      {
        v66 = sub_1A97AE980((v99 > 1), v100 + 1, 1, v66);
      }

      *(v66 + 2) = v100 + 1;
      *&v66[8 * v100 + 32] = v98;
      v69 = v121;
    }

    *v74 = 0;
    *(v74 + v119) = 0;
    *(v74 + v118) = 0;
    v101 = v132;
    v102 = v69(v132, v35);
    MEMORY[0x1EEE9AC00](v102);
    strcpy(&v108 - 64, "task upstreams downstreamContinuation buffer ");
    v134 = v115;
    v135 = v71;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A9977A20();
    v136 = sub_1A9976CE0();
    v137 = v116;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v104 = TupleTypeMetadata[12];
    v105 = v71;
    v106 = TupleTypeMetadata[16];
    v107 = TupleTypeMetadata[20];
    *v101 = v120;
    (v117)(v101 + v104, v74, v105);
    *(v101 + v106) = v125;
    *(v101 + v107) = v133;
    swift_storeEnumTagMultiPayload();
    *v126 = v66;
    v134 = v128;
    v135 = v113;
    v136 = v127;
    v137 = v131;
    v138 = v130;
    v139 = v129;
    type metadata accessor for CombineLatestStateMachine.NextAction(0, &v134);
    return swift_storeEnumTagMultiPayload();
  }

  if (result <= 4)
  {
    if (result != 3)
    {
      v75 = *v38;
      (v36[1])(v34, v35);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
      sub_1A9977A20();
      sub_1A9976CE0();
      v76 = *(swift_getTupleTypeMetadata2() + 48);
      v77 = v126;
      *v126 = v125;
      *(v77 + v76) = v75;
      swift_storeEnumTagMultiPayload();
      v134 = v128;
      v135 = v33;
      v136 = v127;
      v137 = v131;
      v138 = v130;
      v139 = v129;
      type metadata accessor for CombineLatestStateMachine.NextAction(0, &v134);
      return swift_storeEnumTagMultiPayload();
    }

    v113 = v33;
    v133 = *v38;
    v40 = v36[1];
    (v40)(v34, v35);
    swift_storeEnumTagMultiPayload();
    v41 = v119;
    v44 = type metadata accessor for Deque(0, v119, v42, v43);
    v45 = v117;
    Deque.popFirst()(v44, v117);
    v46 = v121;
    if ((v121[6])(v45, 1, v41) == 1)
    {

      (*(v112 + 8))(v45, v124);
      (v40)(v34, v35);
      swift_storeEnumTagMultiPayload();
      *v126 = v125;
      v134 = v128;
      v135 = v113;
LABEL_20:
      v136 = v127;
      v137 = v131;
      v138 = v130;
      v139 = v129;
      type metadata accessor for CombineLatestStateMachine.NextAction(0, &v134);
      return swift_storeEnumTagMultiPayload();
    }

    v88 = v46[4];
    v89 = v110;
    v88(v110, v45, v41);
    (v40)(v34, v35);
    *v34 = v133;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A9977A20();
    sub_1A9976CE0();
    v90 = *(swift_getTupleTypeMetadata2() + 48);
    v91 = v41;
    v92 = v126;
    *v126 = v125;
    v88(v92 + v90, v89, v91);
    (v46[7])(v92 + v90, 0, 1, v91);
LABEL_25:
    swift_storeEnumTagMultiPayload();
    v134 = v128;
    v135 = v113;
    v136 = v127;
    v137 = v131;
    v138 = v130;
    v139 = v129;
    type metadata accessor for CombineLatestStateMachine.NextAction(0, &v134);
    return swift_storeEnumTagMultiPayload();
  }

  if (result == 5)
  {
    *v126 = v125;
    v134 = v128;
    v135 = v33;
    goto LABEL_20;
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

unint64_t sub_1A97FC63C()
{
  result = qword_1EB3B2058[0];
  if (!qword_1EB3B2058[0])
  {
    sub_1A9976BC0();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3B2058);
  }

  return result;
}

uint64_t sub_1A97FC6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A97FC6F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFF);
  }

  v3 = (((*(a1 + 8) >> 49) >> 14) | (2 * ((*(a1 + 8) >> 49) & 0x3800 | ((*(a1 + 8) & 7) << 8) | HIBYTE(*a1) & 0xF0 | *a1 & 0xF))) ^ 0x7FFF;
  if (v3 >= 0x7FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A97FC76C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFE)
  {
    *result = a2 - 0x7FFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3FFF | ((-a2 & 0x7FFF) << 14);
      *result = (v3 | (v3 << 56)) & 0xF00000000000000FLL;
      *(result + 8) = ((v3 >> 8) | (v3 << 49)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1A97FC7E8(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF0uLL;
  result[1] = v2;
  return result;
}

uint64_t sub_1A97FC818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A97FC880(void *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_1A99770A0();
  swift_getTupleTypeMetadata3();
  sub_1A99770A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v2 = sub_1A9977A20();
  v4 = v3;
  sub_1A9976CE0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v6 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    if (v4 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_getTupleTypeLayout2();
      TupleTypeMetadata2 = 0;
      *(*(a1 - 1) + 84) = v8;
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_1A97FCA60(unsigned __int16 *a1, int a2, void *a3)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v6 + 84) > v5)
  {
    v5 = *(v6 + 84);
  }

  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = (v10 | v5) == 0;
  v12 = *(v7 + 64);
  if (!v9)
  {
    ++v11;
  }

  v13 = v11 + v12 + ((((*(v4 + 64) + *(v6 + 80)) & ~*(v6 + 80)) + *(v6 + 64) + v8) & ~v8);
  if (v13 <= 8)
  {
    v13 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  v16 = ((*(v6 + 80) | *(v4 + 80)) | v8) & 0xF8 | 7u;
  v17 = v13 + ((v16 + 8) & ~v16) + 1;
  v18 = 8 * v17;
  if (v17 > 3)
  {
    goto LABEL_16;
  }

  v20 = (a2 - 0x7FFFFFFF + ~(-1 << v18)) >> v18;
  if (v20 > 0xFFFE)
  {
    v19 = *(a1 + v17);
    if (!v19)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  if (v20 <= 0xFE)
  {
    if (!v20)
    {
      goto LABEL_11;
    }

LABEL_16:
    v19 = *(a1 + v17);
    if (!*(a1 + v17))
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
LABEL_11:
    v14 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

LABEL_25:
  v21 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v21 = 0;
  }

  if (v17)
  {
    if (v17 > 3)
    {
      LODWORD(v17) = 4;
    }

    if (v17 > 2)
    {
      if (v17 == 3)
      {
        LODWORD(v17) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v17) = *a1;
      }
    }

    else if (v17 == 1)
    {
      LODWORD(v17) = *a1;
    }

    else
    {
      LODWORD(v17) = *a1;
    }
  }

  return (v17 | v21) ^ 0x80000000;
}

void sub_1A97FCD50(_BYTE *a1, int a2, int a3, void *a4)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v6 + 84) > v5)
  {
    v5 = *(v6 + 84);
  }

  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = (v11 | v5) == 0;
  v13 = v10 == 0;
  v14 = (((*(v4 + 64) + *(v6 + 80)) & ~*(v6 + 80)) + *(v6 + 64) + *(v8 + 80)) & ~*(v8 + 80);
  v15 = *(v8 + 64);
  v16 = ((*(v6 + 80) | *(v4 + 80)) | v9) & 0xF8 | 7u;
  v17 = (v16 + 8) & ~v16;
  if (v13)
  {
    ++v12;
  }

  v18 = v12 + v15 + v14;
  if (v18 <= 8)
  {
    v18 = 8;
  }

  v19 = v18 + v17 + 1;
  if (a3 < 0)
  {
    if (v19 <= 3)
    {
      v21 = (a3 - 0x7FFFFFFF + ~(-1 << (8 * v19))) >> (8 * v19);
      if (v21 > 0xFFFE)
      {
        v7 = 4;
      }

      else
      {
        if (v21 < 0xFF)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21)
        {
          v7 = v22;
        }

        else
        {
          v7 = 0;
        }
      }
    }

    else
    {
      v7 = 1;
    }

    v20 = a2;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_33:
    v23 = v20 & 0x7FFFFFFF;
    if (v19 >= 4)
    {
      bzero(a1, v19);
      *a1 = v23;
      v24 = 1;
      if (v7 > 1)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    }

    v24 = (v23 >> (8 * v19)) + 1;
    if (v19)
    {
      v25 = v20 & ~(-1 << (8 * v19));
      bzero(a1, v19);
      if (v19 != 3)
      {
        if (v19 == 2)
        {
          *a1 = v25;
          if (v7 > 1)
          {
LABEL_46:
            if (v7 == 2)
            {
              *&a1[v19] = v24;
            }

            else
            {
              *&a1[v19] = v24;
            }

            return;
          }
        }

        else
        {
          *a1 = v20;
          if (v7 > 1)
          {
            goto LABEL_46;
          }
        }

LABEL_43:
        if (v7)
        {
          a1[v19] = v24;
        }

        return;
      }

      *a1 = v25;
      a1[2] = BYTE2(v25);
    }

    if (v7 > 1)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  v20 = a2;
  if (a2 < 0)
  {
    goto LABEL_33;
  }

LABEL_11:
  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v19] = 0;
      if (!v20)
      {
        return;
      }

      goto LABEL_20;
    }

LABEL_19:
    if (!v20)
    {
      return;
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
    *&a1[v19] = 0;
    goto LABEL_19;
  }

  *&a1[v19] = 0;
  if (v20)
  {
LABEL_20:
    *a1 = (v20 - 1);
  }
}

uint64_t sub_1A97FD0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A97FD108(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 32))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (((*(a1 + 16) >> 50) >> 13) | (2 * ((*(a1 + 16) >> 50) & 0x1C00 | ((*(a1 + 16) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A97FD184(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 16) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
      *(result + 24) = 0;
    }
  }

  return result;
}

void *sub_1A97FD208(void *result, uint64_t a2)
{
  v2 = result[2] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[2] = v2;
  return result;
}

void sub_1A97FD240(void *a1)
{
  sub_1A99770A0();
  swift_getTupleTypeMetadata3();
  if (v1 <= 0x3F)
  {
    sub_1A97FDC60();
    if (v2 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      sub_1A99770A0();
      swift_getTupleTypeMetadata3();
      sub_1A99770A0();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
      sub_1A9977A20();
      sub_1A9976CE0();
      v4 = v3;
      swift_getTupleTypeMetadata2();
      if (v5 <= 0x3F && v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A97FD418(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(a3[4] - 8);
  v37 = (((*(*(a3[2] - 8) + 64) + *(*(a3[3] - 8) + 80)) & ~*(*(a3[3] - 8) + 80)) + *(*(a3[3] - 8) + 64) + *(v3 + 80)) & ~*(v3 + 80);
  v34 = *(v3 + 84);
  v36 = *(v3 + 64);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v33 = *(v4 + 80);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 80);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v7;
  v9 = *(v4 + 84);
  if (*(v5 + 84) > v9)
  {
    v9 = *(v5 + 84);
  }

  v12 = v7 + 80;
  v10 = *(v7 + 80);
  v11 = *(v12 + 4);
  v13 = v11 - 1;
  if (!v11)
  {
    v13 = 0;
  }

  v14 = v11 == 0;
  v15 = *(v8 + 64);
  if (v14)
  {
    ++v15;
  }

  v16 = v10;
  v17 = ((v6 | v33) | v10) & 0xF8 | 7u;
  v18 = (v17 + 8) & ~v17;
  v19 = v13 | v9;
  v20 = v36;
  if (!v34)
  {
    v20 = v36 + 1;
  }

  v14 = v19 == 0;
  v21 = v20 + v37;
  if (v14)
  {
    ++v15;
  }

  v22 = v15 + ((*(v5 + 64) + v16 + ((*(v4 + 64) + v6) & ~v6)) & ~v16);
  if (v22 <= 8)
  {
    v22 = 8;
  }

  v23 = v22 + v18;
  if (v21 <= v23 + 1)
  {
    v21 = v23 + 1;
  }

  if (v21 <= 8)
  {
    v24 = 8;
  }

  else
  {
    v24 = v21;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_40;
  }

  v25 = v24 + 1;
  v26 = 8 * (v24 + 1);
  if ((v24 + 1) <= 3)
  {
    v29 = ((a2 + ~(-1 << v26) - 252) >> v26) + 1;
    if (HIWORD(v29))
    {
      v27 = *(a1 + v25);
      if (!v27)
      {
        goto LABEL_40;
      }

      goto LABEL_29;
    }

    if (v29 > 0xFF)
    {
      v27 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_40;
      }

      goto LABEL_29;
    }

    if (v29 < 2)
    {
LABEL_40:
      v31 = *(a1 + v24);
      if (v31 >= 4)
      {
        return (v31 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v27 = *(a1 + v25);
  if (!*(a1 + v25))
  {
    goto LABEL_40;
  }

LABEL_29:
  v30 = (v27 - 1) << v26;
  if (v25 > 3)
  {
    v30 = 0;
  }

  if (v25)
  {
    if (v25 > 3)
    {
      LODWORD(v25) = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        LODWORD(v25) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v25) = *a1;
      }
    }

    else if (v25 == 1)
    {
      LODWORD(v25) = *a1;
    }

    else
    {
      LODWORD(v25) = *a1;
    }
  }

  return (v25 | v30) + 253;
}

void sub_1A97FD800(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v4 = *(a4[4] - 8);
  v36 = (((*(*(a4[2] - 8) + 64) + *(*(a4[3] - 8) + 80)) & ~*(*(a4[3] - 8) + 80)) + *(*(a4[3] - 8) + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v33 = *(v4 + 84);
  v35 = *(v4 + 64);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v32 = *(v5 + 80);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 80);
  v8 = 0;
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v5 + 84);
  if (*(v6 + 84) > v11)
  {
    v11 = *(v6 + 84);
  }

  v14 = v9 + 80;
  v12 = *(v9 + 80);
  v13 = *(v14 + 4);
  v15 = v13 - 1;
  if (!v13)
  {
    v15 = 0;
  }

  v16 = v13 == 0;
  v17 = *(v10 + 64);
  if (v16)
  {
    ++v17;
  }

  v18 = v12;
  v19 = ((v7 | v32) | v12) & 0xF8 | 7u;
  v20 = (v19 + 8) & ~v19;
  v21 = v15 | v11;
  v22 = v35;
  if (!v33)
  {
    v22 = v35 + 1;
  }

  v16 = v21 == 0;
  v23 = v22 + v36;
  if (v16)
  {
    ++v17;
  }

  v24 = v17 + ((*(v6 + 64) + v18 + ((*(v5 + 64) + v7) & ~v7)) & ~v18);
  if (v24 <= 8)
  {
    v24 = 8;
  }

  v25 = v24 + v20;
  if (v23 <= v25 + 1)
  {
    v23 = v25 + 1;
  }

  if (v23 <= 8)
  {
    v23 = 8;
  }

  v26 = v23 + 1;
  if (a3 >= 0xFD)
  {
    if (v26 <= 3)
    {
      v27 = ((a3 + ~(-1 << (8 * v26)) - 252) >> (8 * v26)) + 1;
      if (HIWORD(v27))
      {
        v8 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v8 = v28;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }
  }

  if (a2 > 0xFC)
  {
    v29 = a2 - 253;
    if (v26 >= 4)
    {
      bzero(a1, v23 + 1);
      *a1 = v29;
      v30 = 1;
      if (v8 > 1)
      {
        goto LABEL_52;
      }

      goto LABEL_49;
    }

    v30 = (v29 >> (8 * v26)) + 1;
    if (v23 != -1)
    {
      v31 = v29 & ~(-1 << (8 * v26));
      bzero(a1, v26);
      if (v26 != 3)
      {
        if (v26 == 2)
        {
          *a1 = v31;
          if (v8 > 1)
          {
LABEL_52:
            if (v8 == 2)
            {
              *&a1[v26] = v30;
            }

            else
            {
              *&a1[v26] = v30;
            }

            return;
          }
        }

        else
        {
          *a1 = a2 + 3;
          if (v8 > 1)
          {
            goto LABEL_52;
          }
        }

LABEL_49:
        if (v8)
        {
          a1[v26] = v30;
        }

        return;
      }

      *a1 = v31;
      a1[2] = BYTE2(v31);
    }

    if (v8 > 1)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v26] = 0;
      if (!a2)
      {
        return;
      }

LABEL_39:
      a1[v23] = -a2;
      return;
    }

LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (v8 == 2)
  {
    *&a1[v26] = 0;
    goto LABEL_38;
  }

  *&a1[v26] = 0;
  if (a2)
  {
    goto LABEL_39;
  }
}

void sub_1A97FDC60()
{
  if (!qword_1EB3AB6B0)
  {
    sub_1A97FDCC4(0, &qword_1EB3AB6A8, MEMORY[0x1E69E62F8]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3AB6B0);
    }
  }
}

void sub_1A97FDCC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B2930, qword_1A9995E18);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A97FDD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A97FDD6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 24))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A97FDDC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1A97FDE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t combineLatest<A, B, C, D, E, F>(_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16)
{
  v62 = a6;
  v53 = a2;
  v54 = a3;
  v64 = a8;
  v63 = a13;
  v61 = a14;
  v60 = a15;
  v58 = a5;
  v59 = a16;
  v51 = a11;
  v56 = a4;
  v57 = a12;
  v55 = *(a12 - 8);
  v49 = a10;
  v17 = MEMORY[0x1EEE9AC00](a1);
  v52 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v17);
  v50 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v21);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a9 - 8);
  v29 = MEMORY[0x1EEE9AC00](v25);
  v31 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v32;
  v33 = *(v32 - 8);
  v34 = MEMORY[0x1EEE9AC00](v29);
  v36 = &v47 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v37;
  MEMORY[0x1EEE9AC00](v34);
  v39 = &v47 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v40 + 16))(v39);
  (*(v33 + 16))(v36, v53, a7);
  (*(v28 + 16))(v31, v54, a9);
  v41 = v49;
  (*(v24 + 16))(v27, v56, v49);
  v42 = v50;
  v43 = v51;
  (*(v20 + 16))(v50, v58, v51);
  v44 = v52;
  v45 = v57;
  (*(v55 + 16))(v52, v62, v57);
  return sub_1A97FE2CC(v39, v36, v31, v27, v42, v44, v48, v47, v64, a9, v41, v43, v45, v63, v61, v60, v59);
}

uint64_t sub_1A97FE2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v27[0] = a7;
  v27[1] = a8;
  v27[2] = a10;
  v27[3] = a11;
  v27[4] = a12;
  v27[5] = a13;
  v28 = a14;
  v29 = a15;
  v30 = a16;
  v31 = a17;
  v21 = type metadata accessor for AsyncCombineLatest6Sequence(0, v27);
  (*(*(a8 - 8) + 32))(a9 + v21[29], a2, a8);
  (*(*(a10 - 8) + 32))(a9 + v21[30], a3, a10);
  (*(*(a11 - 8) + 32))(a9 + v21[31], a4, a11);
  (*(*(a12 - 8) + 32))(a9 + v21[32], a5, a12);
  return (*(*(a13 - 8) + 32))(a9 + v21[33], a6, a13);
}

uint64_t AsyncCombineLatest6Sequence.Iterator.next()(uint64_t a1, void *a2)
{
  v2[30] = a1;
  v24 = a2[8];
  v23 = a2[2];
  v2[31] = swift_getAssociatedTypeWitness();
  v21 = a2[3];
  v22 = a2[9];
  v2[32] = swift_getAssociatedTypeWitness();
  v19 = a2[4];
  v20 = a2[10];
  v2[33] = swift_getAssociatedTypeWitness();
  v2[34] = swift_getTupleTypeMetadata3();
  v17 = a2[5];
  v18 = a2[11];
  v2[35] = swift_getAssociatedTypeWitness();
  v4 = a2[12];
  v5 = a2[6];
  v2[36] = swift_getAssociatedTypeWitness();
  v6 = a2[13];
  v7 = a2[7];
  v2[37] = swift_getAssociatedTypeWitness();
  v2[38] = swift_getTupleTypeMetadata3();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v2[39] = TupleTypeMetadata2;
  v9 = sub_1A99770A0();
  v2[40] = v9;
  v2[41] = *(v9 - 8);
  v10 = swift_task_alloc();
  v2[42] = v10;
  v2[43] = *(TupleTypeMetadata2 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v11 = swift_task_alloc();
  v2[2] = v23;
  v2[51] = v11;
  v2[3] = v21;
  v2[4] = v19;
  v2[5] = v24;
  v2[6] = v22;
  v2[7] = v20;
  v12 = type metadata accessor for AsyncCombineLatest3Sequence(255, (v2 + 2));
  v2[8] = v17;
  v2[9] = v5;
  v2[10] = v7;
  v2[11] = v18;
  v2[12] = v4;
  v2[13] = v6;
  v13 = type metadata accessor for AsyncCombineLatest3Sequence(255, (v2 + 8));
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v2[26] = v12;
  v2[27] = v13;
  v2[28] = WitnessTable;
  v2[29] = v15;
  type metadata accessor for AsyncCombineLatest2Sequence.Iterator(0, (v2 + 26));
  *v11 = v2;
  v11[1] = sub_1A97FE874;

  return AsyncCombineLatest2Sequence.Iterator.next()(v10);
}

uint64_t sub_1A97FE874()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_1A97FF338;
  }

  else
  {
    v2 = sub_1A97FE988;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A97FE988()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 312);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 296);
    v5 = *(v0 + 264);
    v6 = *(v0 + 240);
    v73 = *(v0 + 248);
    v75 = *(v0 + 280);
    (*(*(v0 + 328) + 8))(v1, *(v0 + 320));
    *(v0 + 112) = v73;
    *(v0 + 128) = v5;
    *(v0 + 136) = v75;
    *(v0 + 152) = v4;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    (*(*(TupleTypeMetadata - 8) + 56))(v6, 1, 1, TupleTypeMetadata);
  }

  else
  {
    v47 = *(v0 + 400);
    v61 = *(v0 + 384);
    v62 = *(v0 + 392);
    v59 = *(v0 + 368);
    v60 = *(v0 + 376);
    v58 = *(v0 + 360);
    v63 = *(v0 + 352);
    v8 = *(v0 + 296);
    v23 = *(v0 + 304);
    v74 = v8;
    v10 = *(v0 + 280);
    v9 = *(v0 + 288);
    v11 = v2;
    v76 = v2;
    v13 = *(v0 + 264);
    v12 = *(v0 + 272);
    v15 = *(v0 + 248);
    v14 = *(v0 + 256);
    v71 = v14;
    v24 = *(v0 + 240);
    v64 = *(v11 + 32);
    v64();
    *(v0 + 160) = v15;
    *(v0 + 168) = v14;
    *(v0 + 176) = v13;
    *(v0 + 184) = v10;
    *(v0 + 192) = v9;
    *(v0 + 200) = v8;
    v50 = swift_getTupleTypeMetadata();
    v65 = v50[12];
    v67 = v50[16];
    v52 = v50[20];
    v54 = v50[24];
    v56 = v50[28];
    v16 = *(v76 + 16);
    v16(v62, v47, v3);
    v45 = *(v12 + 64);
    v46 = *(v12 + 48);
    v43 = v62 + *(v3 + 48);
    v44 = *(v23 + 48);
    v42 = *(v23 + 64);
    v77 = *(v15 - 8);
    (*(v77 + 32))(v24, v62);
    v16(v61, v47, v3);
    v39 = v61 + *(v3 + 48);
    v40 = *(v23 + 48);
    v41 = *(v12 + 64);
    v38 = *(v23 + 64);
    v72 = *(v14 - 8);
    (*(v72 + 32))(v24 + v65, v61 + *(v12 + 48));
    v16(v60, v47, v3);
    v35 = v60 + *(v3 + 48);
    v36 = *(v23 + 48);
    v37 = *(v12 + 48);
    v34 = *(v23 + 64);
    v66 = *(v13 - 8);
    (*(v66 + 32))(v24 + v67, v60 + *(v12 + 64));
    v16(v59, v47, v3);
    v32 = *(v12 + 64);
    v33 = *(v12 + 48);
    v31 = *(v23 + 48);
    v29 = v59 + *(v3 + 48);
    v30 = *(v23 + 64);
    v68 = *(v10 - 8);
    (*(v68 + 32))(v24 + v52);
    v16(v58, v47, v3);
    v27 = *(v12 + 64);
    v28 = *(v12 + 48);
    v25 = v58 + *(v3 + 48);
    v26 = *(v23 + 64);
    v17 = *(v9 - 8);
    (*(v17 + 32))(v24 + v54, v25 + *(v23 + 48), v9);
    (v64)(v63, v47, v3);
    v48 = *(v12 + 48);
    v69 = *(v12 + 64);
    v18 = v63 + *(v3 + 48);
    v19 = *(v23 + 48);
    v20 = *(v74 - 8);
    (*(v20 + 32))(v24 + v56, v18 + *(v23 + 64));
    (*(*(v50 - 1) + 56))(v24, 0, 1);
    v57 = *(v17 + 8);
    v57(v18 + v19, v9);
    v53 = *(v68 + 8);
    v53(v18, v10);
    v55 = *(v66 + 8);
    v55(v63 + v69, v13);
    v70 = *(v72 + 8);
    v70(v63 + v48, v71);
    v49 = *(v77 + 8);
    v49(v63, v15);
    v51 = *(v20 + 8);
    v51(v25 + v26, v74);
    v53(v25, v10);
    v55(v58 + v27, v13);
    v70(v58 + v28, v71);
    v49(v58, v15);
    v51(v29 + v30, v74);
    v57(v29 + v31, v9);
    v55(v59 + v32, v13);
    v70(v59 + v33, v71);
    v49(v59, v15);
    v51(v35 + v34, v74);
    v57(v35 + v36, v9);
    v53(v35, v10);
    v70(v60 + v37, v71);
    v49(v60, v15);
    v51(v39 + v38, v74);
    v57(v39 + v40, v9);
    v53(v39, v10);
    v55(v61 + v41, v13);
    v49(v61, v15);
    v51(v43 + v42, v74);
    v57(v43 + v44, v9);
    v53(v43, v10);
    v55(v62 + v45, v13);
    v70(v62 + v46, v71);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1A97FF338()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A97FF3FC(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A97B2638;

  return AsyncCombineLatest6Sequence.Iterator.next()(a1, a2);
}

uint64_t sub_1A97FF4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v6[4] = *(AssociatedTypeWitness - 8);
  v6[5] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[6] = v13;
  *v13 = v6;
  v13[1] = sub_1A97FF5F8;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t sub_1A97FF5F8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  v4 = v3[1];

  return v4();
}

uint64_t AsyncCombineLatest6Sequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  v5 = *(a1 + 16);
  v40 = *(a1 + 24);
  v41 = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 72);
  v38 = *(a1 + 64);
  v39 = v6;
  v37 = v7;
  v31 = *(a1 + 80);
  v43 = v5;
  v44 = v40;
  v45 = v6;
  v46 = v38;
  v47 = v7;
  v48 = v31;
  v8 = type metadata accessor for AsyncCombineLatest3Sequence(255, &v43);
  v9 = *(a1 + 40);
  v35 = *(a1 + 48);
  v36 = v9;
  v10 = *(a1 + 56);
  v11 = *(a1 + 96);
  v33 = *(a1 + 88);
  v34 = v10;
  v32 = v11;
  v30 = *(a1 + 104);
  v43 = v9;
  v44 = v35;
  v45 = v10;
  v46 = v33;
  v47 = v11;
  v48 = v30;
  v12 = type metadata accessor for AsyncCombineLatest3Sequence(255, &v43);
  WitnessTable = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v43 = v8;
  v44 = v12;
  v45 = WitnessTable;
  v46 = v28;
  v27 = type metadata accessor for AsyncCombineLatest2Sequence(0, &v43);
  v13 = *(v27 - 8);
  v14 = MEMORY[0x1EEE9AC00](v27);
  v16 = &v26 - v15;
  v17 = *(v12 - 8);
  v18 = MEMORY[0x1EEE9AC00](v14);
  v20 = &v26 - v19;
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v23 = &v26 - v22;
  combineLatest<A, B, C>(_:_:_:)(v3, v3 + *(a1 + 116), v3 + *(a1 + 120), v41, v40, v39, v38, v37, &v26 - v22, v31);
  combineLatest<A, B, C>(_:_:_:)(v3 + *(a1 + 124), v3 + *(a1 + 128), v3 + *(a1 + 132), v36, v35, v34, v33, v32, v20, v30);
  combineLatest<A, B>(_:_:)(v23, v20, v8, v12, WitnessTable, v28, v16);
  v24 = v27;
  AsyncCombineLatest2Sequence.makeAsyncIterator()(v27, &v43);
  (*(v13 + 8))(v16, v24);
  (*(v17 + 8))(v20, v12);
  result = (*(v21 + 8))(v23, v8);
  *v42 = v43;
  return result;
}

uint64_t sub_1A97FFA64(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1A97FFB24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  AsyncCombineLatest6Sequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1A97FFB8C(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v6 <= 0x3F)
          {
            result = swift_checkMetadataState();
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1A97FFC88(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v58 = a3[3];
  v59 = v4;
  v5 = *(v4 + 84);
  v6 = *(v58 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v4 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = a3[5];
  v56 = v9;
  v57 = a3[4];
  v10 = *(v57 - 8);
  v11 = *(v10 + 84);
  if (v11 > v8)
  {
    v8 = *(v10 + 84);
  }

  v12 = *(v9 - 8);
  v13 = *(v12 + 84);
  v15 = a3[6];
  v14 = a3[7];
  v55 = v14;
  v16 = *(v15 - 8);
  if (v13 <= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = *(v16 + 84);
  if (v18 <= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = *(v16 + 84);
  }

  v20 = *(v14 - 8);
  v21 = *(v20 + 84);
  v22 = *(v4 + 64);
  v23 = *(v6 + 80);
  v24 = *(*(v58 - 8) + 64);
  v25 = *(v10 + 80);
  v26 = *(*(v57 - 8) + 64);
  v27 = *(v12 + 80);
  v28 = *(*(v9 - 8) + 64);
  v29 = *(v16 + 80);
  v30 = *(v16 + 64);
  v31 = *(v20 + 80);
  v32 = *(v20 + 64);
  if (v21 <= v19)
  {
    v33 = v19;
  }

  else
  {
    v33 = *(v20 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v34 = v22 + v23;
  v35 = v28 + v29;
  v36 = v30 + v31;
  v37 = a2 - v33;
  if (a2 > v33)
  {
    v38 = (v36 + ((v35 + ((v26 + v27 + ((v24 + v25 + (v34 & ~v23)) & ~v25)) & ~v27)) & ~v29)) & ~v31;
    v39 = v38 + v32;
    v40 = 8 * (v38 + v32);
    if (v39 <= 3)
    {
      v42 = ((v37 + ~(-1 << v40)) >> v40) + 1;
      if (HIWORD(v42))
      {
        v41 = *(a1 + v39);
        if (!v41)
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      if (v42 > 0xFF)
      {
        v41 = *(a1 + v39);
        if (!*(a1 + v39))
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      if (v42 < 2)
      {
LABEL_38:
        if (v33)
        {
          goto LABEL_39;
        }

        return 0;
      }
    }

    v41 = *(a1 + v39);
    if (!*(a1 + v39))
    {
      goto LABEL_38;
    }

LABEL_25:
    v43 = (v41 - 1) << v40;
    if (v39 > 3)
    {
      v43 = 0;
    }

    if (v39)
    {
      if (v39 <= 3)
      {
        v44 = v39;
      }

      else
      {
        v44 = 4;
      }

      if (v44 > 2)
      {
        if (v44 == 3)
        {
          v45 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v45 = *a1;
        }
      }

      else if (v44 == 1)
      {
        v45 = *a1;
      }

      else
      {
        v45 = *a1;
      }
    }

    else
    {
      v45 = 0;
    }

    return v33 + (v45 | v43) + 1;
  }

LABEL_39:
  if (v5 == v33)
  {
    v46 = *(v59 + 48);

    return v46(a1);
  }

  v48 = (a1 + v34) & ~v23;
  if (v7 == v33)
  {
    v49 = *(v6 + 48);
    v50 = (a1 + v34) & ~v23;
    v51 = *(v6 + 84);
    v52 = v58;

    return v49(v50, v51, v52);
  }

  if (v11 == v33)
  {
    v49 = *(v10 + 48);
    v50 = (v48 + v24 + v25) & ~v25;
    v51 = *(v10 + 84);
    v52 = v57;

    return v49(v50, v51, v52);
  }

  v50 = (((v48 + v24 + v25) & ~v25) + v26 + v27) & ~v27;
  if (v13 == v33)
  {
    v49 = *(v12 + 48);
    v51 = *(v12 + 84);
    v52 = v56;

    return v49(v50, v51, v52);
  }

  v50 = (v35 + v50) & ~v29;
  if (v18 == v33)
  {
    v49 = *(*(v15 - 8) + 48);
    v51 = v18;
    v52 = v15;

    return v49(v50, v51, v52);
  }

  v53 = *(v20 + 48);
  v54 = (v36 + v50) & ~v31;

  return v53(v54, v21, v55);
}

unsigned int *sub_1A98001EC(unsigned int *result, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v54 = v6;
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = a4[5];
  v52 = a4[4];
  v13 = *(v52 - 8);
  v53 = *(v13 + 84);
  if (v53 > v11)
  {
    v11 = *(v13 + 84);
  }

  v14 = *(v12 - 8);
  v51 = *(v14 + 84);
  if (v51 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v14 + 84);
  }

  v50 = a4[6];
  v16 = *(v50 - 8);
  v17 = *(v16 + 84);
  if (v17 <= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = *(v16 + 84);
  }

  v19 = *(a4[7] - 8);
  v20 = *(v6 + 64);
  v21 = *(v8 + 80);
  v22 = *(v8 + 64);
  v23 = *(v13 + 80);
  v24 = *(*(v52 - 8) + 64);
  v25 = *(v14 + 80);
  v26 = *(*(v12 - 8) + 64);
  v27 = *(v16 + 80);
  v28 = *(*(v50 - 8) + 64);
  v29 = *(v19 + 80);
  v30 = v26 + v27;
  v31 = v28 + v29;
  v32 = ((v28 + v29 + ((v26 + v27 + ((v24 + v25 + ((v22 + v23 + ((v20 + v21) & ~v21)) & ~v23)) & ~v25)) & ~v27)) & ~v29) + *(v19 + 64);
  if (*(v19 + 84) <= v18)
  {
    v33 = v18;
  }

  else
  {
    v33 = *(v19 + 84);
  }

  if (a3 <= v33)
  {
    v34 = 0;
  }

  else if (v32 <= 3)
  {
    v38 = ((a3 - v33 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
    if (HIWORD(v38))
    {
      v34 = 4;
    }

    else
    {
      if (v38 < 0x100)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v38 >= 2)
      {
        v34 = v39;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else
  {
    v34 = 1;
  }

  if (v33 < a2)
  {
    v35 = ~v33 + a2;
    if (v32 >= 4)
    {
      v36 = result;
      bzero(result, v32);
      result = v36;
      *v36 = v35;
      v37 = 1;
      if (v34 > 1)
      {
        goto LABEL_22;
      }

      goto LABEL_59;
    }

    v37 = (v35 >> (8 * v32)) + 1;
    if (v32)
    {
      v40 = v35 & ~(-1 << (8 * v32));
      v41 = result;
      bzero(result, v32);
      result = v41;
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          *v41 = v40;
          if (v34 > 1)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *v41 = v35;
          if (v34 > 1)
          {
LABEL_22:
            if (v34 == 2)
            {
              *(result + v32) = v37;
            }

            else
            {
              *(result + v32) = v37;
            }

            return result;
          }
        }

LABEL_59:
        if (v34)
        {
          *(result + v32) = v37;
        }

        return result;
      }

      *v41 = v40;
      *(v41 + 2) = BYTE2(v40);
    }

    if (v34 > 1)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *(result + v32) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_43;
    }

    *(result + v32) = 0;
  }

  else if (v34)
  {
    *(result + v32) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return result;
  }

LABEL_43:
  if (v7 == v33)
  {
    v42 = v54;
LABEL_45:
    v43 = *(v42 + 56);
LABEL_48:

    return v43();
  }

  v44 = (result + v20 + v21) & ~v21;
  if (v10 == v33)
  {
    v43 = *(v9 + 56);
    goto LABEL_48;
  }

  v45 = (v44 + v22 + v23) & ~v23;
  if (v53 == v33)
  {
    v42 = v13;
    goto LABEL_45;
  }

  v46 = (v45 + v24 + v25) & ~v25;
  if (v51 == v33)
  {
    v47 = *(v14 + 56);

    return v47(v46);
  }

  v46 = (v30 + v46) & ~v27;
  if (v17 == v33)
  {
    v47 = *(v16 + 56);

    return v47(v46);
  }

  v48 = *(v19 + 56);
  v49 = (v31 + v46) & ~v29;

  return v48(v49);
}

uint64_t sub_1A980077C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

BOOL static SFNearbySharingInteractionViewState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 7)
  {
    return v3 == 7;
  }

  if (v2 == 6)
  {
    return v3 == 6;
  }

  if ((v3 & 0xFE) == 6)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_1A98008D0()
{
  v1 = 0x7661776B636F6873;
  if (*v0 != 1)
  {
    v1 = 0x50746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701602409;
  }
}

uint64_t sub_1A9800934@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A9801CF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A980095C(uint64_t a1)
{
  v2 = sub_1A9800F20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9800998(uint64_t a1)
{
  v2 = sub_1A9800F20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98009D4(uint64_t a1)
{
  v2 = sub_1A9800F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9800A10(uint64_t a1)
{
  v2 = sub_1A9800F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9800A4C(uint64_t a1)
{
  v2 = sub_1A9801070();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9800A88(uint64_t a1)
{
  v2 = sub_1A9801070();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9800AC4(uint64_t a1)
{
  v2 = sub_1A9800FC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9800B00(uint64_t a1)
{
  v2 = sub_1A9800FC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFNearbySharingInteractionViewState.encode(to:)(void *a1)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2360, &qword_1A99962C0);
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v21 = &v17 - v3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2368, &qword_1A99962C8);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v20 = &v17 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2370, &qword_1A99962D0);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2378, &qword_1A99962D8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9800F20();
  sub_1A9977AA0();
  if (v12 == 7)
  {
    v29 = 2;
    sub_1A9800F74();
    v13 = v21;
    sub_1A9977640();
    (*(v23 + 8))(v13, v25);
    return (*(v9 + 8))(v11, v8);
  }

  if (v12 == 6)
  {
    v26 = 0;
    sub_1A9801070();
    sub_1A9977640();
    (*(v18 + 8))(v7, v19);
    return (*(v9 + 8))(v11, v8);
  }

  v28 = 1;
  sub_1A9800FC8();
  v15 = v20;
  sub_1A9977640();
  v27 = v12;
  sub_1A980101C();
  v16 = v24;
  sub_1A99776E0();
  (*(v22 + 8))(v15, v16);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1A9800F20()
{
  result = qword_1EB3B2380;
  if (!qword_1EB3B2380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2380);
  }

  return result;
}

unint64_t sub_1A9800F74()
{
  result = qword_1EB3B2388;
  if (!qword_1EB3B2388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2388);
  }

  return result;
}

unint64_t sub_1A9800FC8()
{
  result = qword_1EB3B2390;
  if (!qword_1EB3B2390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2390);
  }

  return result;
}