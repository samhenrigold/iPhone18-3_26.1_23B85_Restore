uint64_t sub_197A34AAC@<X0>(uint64_t *a1@<X8>)
{
  result = RemoteInterfaceInformation.RemoteSource.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static RemoteInterfaceInformation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((sub_19799E6EC(*(a1 + 12), *(a2 + 12)) & 1) == 0)
  {
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  return sub_197A88218();
}

uint64_t sub_197A34C2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1684632949 && a2 == 0xE400000000000000)
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

uint64_t sub_197A34D38(char a1)
{
  if (!a1)
  {
    return 0x6E6F6973726576;
  }

  if (a1 == 1)
  {
    return 0x656372756F73;
  }

  return 1684632949;
}

uint64_t sub_197A34D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A34C2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A34DB4(uint64_t a1)
{
  v2 = sub_197A34FDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A34DF0(uint64_t a1)
{
  v2 = sub_197A34FDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteInterfaceInformation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A3A8, &qword_197A97A20);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  v11 = *(v3 + 2);
  v23 = *(v3 + 12);
  v12 = v3[2];
  v20[0] = v3[3];
  v20[1] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197A34FDC();
  sub_197A883D8();
  v21 = *v3;
  v22 = v11;
  v24 = 0;
  v13 = sub_1979552D0();
  OUTLINED_FUNCTION_3_12(v13, v14, v15, &type metadata for Version, v13);
  if (!v2)
  {
    LOBYTE(v21) = v23;
    v24 = 1;
    v16 = sub_197A35030();
    OUTLINED_FUNCTION_3_12(v16, v17, v18, &type metadata for RemoteInterfaceInformation.RemoteSource, v16);
    LOBYTE(v21) = 2;
    sub_197A880B8();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_197A34FDC()
{
  result = qword_1EAF4A3B0;
  if (!qword_1EAF4A3B0)
  {
    result = swift_getWitnessTable(byte_197A97D0C, &type metadata for RemoteInterfaceInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A3B0);
  }

  return result;
}

unint64_t sub_197A35030()
{
  result = qword_1EAF4A3B8;
  if (!qword_1EAF4A3B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteInterfaceInformation.RemoteSource, &type metadata for RemoteInterfaceInformation.RemoteSource, v0, v1);
    atomic_store(result, &qword_1EAF4A3B8);
  }

  return result;
}

uint64_t RemoteInterfaceInformation.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 12);
  sub_197A88338();
  sub_197A88338();
  sub_197A88338();
  sub_19799EA84(a1, v3);

  return sub_197A879B8();
}

uint64_t RemoteInterfaceInformation.hashValue.getter()
{
  v1 = *(v0 + 12);
  sub_197A882F8();
  sub_197A88338();
  sub_197A88338();
  sub_197A88338();
  sub_19799EA84(v3, v1);
  sub_197A879B8();
  return sub_197A88358();
}

uint64_t RemoteInterfaceInformation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A3C0, &qword_197A97A28);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197A34FDC();
  sub_197A883A8();
  if (!v2)
  {
    v19 = 0;
    sub_19795F5C4();
    OUTLINED_FUNCTION_2_13(&type metadata for Version);
    v11 = v20;
    v12 = v21;
    v19 = 1;
    sub_197A35468();
    OUTLINED_FUNCTION_2_13(&type metadata for RemoteInterfaceInformation.RemoteSource);
    v18 = v20;
    LOBYTE(v20) = 2;
    v14 = sub_197A87FA8();
    v16 = v15;
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 12) = v18;
    *(a2 + 16) = v14;
    *(a2 + 24) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_197A353CC(uint64_t a1)
{
  v2 = *(v1 + 12);
  sub_197A882F8();
  sub_197A88338();
  sub_197A88338();
  sub_197A88338();
  sub_19799EA84(v4, v2);
  sub_197A879B8();
  return sub_197A88358();
}

unint64_t sub_197A35468()
{
  result = qword_1EAF4A3C8;
  if (!qword_1EAF4A3C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteInterfaceInformation.RemoteSource, &type metadata for RemoteInterfaceInformation.RemoteSource, v0, v1);
    atomic_store(result, &qword_1EAF4A3C8);
  }

  return result;
}

double sub_197A354F4@<D0>(void *a1@<X0>, int *a2@<X1>, double *a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = *a2;
  result = *a3;
  *a5 = *a3;
  *(a5 + 8) = v8;
  return result;
}

Swift::Bool __swiftcall RemoteInterfaceInformation.supportsTrueStreaming()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (qword_1EAF48950 != -1)
  {
    swift_once();
  }

  v4 = v3 < dword_1EAF4A3A0;
  if (v2 != HIDWORD(qword_1EAF4A398))
  {
    v4 = v2 < HIDWORD(qword_1EAF4A398);
  }

  if (v1 != qword_1EAF4A398)
  {
    v4 = v1 < qword_1EAF4A398;
  }

  return !v4;
}

unint64_t sub_197A355E4()
{
  result = qword_1EAF4A3D0;
  if (!qword_1EAF4A3D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteInterfaceInformation.RemoteSource, &type metadata for RemoteInterfaceInformation.RemoteSource, v0, v1);
    atomic_store(result, &qword_1EAF4A3D0);
  }

  return result;
}

unint64_t sub_197A3563C()
{
  result = qword_1EAF4A3D8;
  if (!qword_1EAF4A3D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteInterfaceInformation, &type metadata for RemoteInterfaceInformation, v0, v1);
    atomic_store(result, &qword_1EAF4A3D8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_197A3569C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_197A356DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RemoteInterfaceInformation.RemoteSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for RemoteInterfaceInformation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_197A358E8()
{
  result = qword_1EAF4A3E0;
  if (!qword_1EAF4A3E0)
  {
    result = swift_getWitnessTable(aE, &type metadata for RemoteInterfaceInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A3E0);
  }

  return result;
}

unint64_t sub_197A35940()
{
  result = qword_1EAF4A3E8;
  if (!qword_1EAF4A3E8)
  {
    result = swift_getWitnessTable(byte_197A97C54, &type metadata for RemoteInterfaceInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A3E8);
  }

  return result;
}

unint64_t sub_197A35998()
{
  result = qword_1EAF4A3F0;
  if (!qword_1EAF4A3F0)
  {
    result = swift_getWitnessTable(byte_197A97C7C, &type metadata for RemoteInterfaceInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A3F0);
  }

  return result;
}

unint64_t sub_197A359EC()
{
  result = qword_1EAF4A3F8;
  if (!qword_1EAF4A3F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteInterfaceInformation.RemoteSource, &type metadata for RemoteInterfaceInformation.RemoteSource, v0, v1);
    atomic_store(result, &qword_1EAF4A3F8);
  }

  return result;
}

uint64_t WorkQueue.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = *sub_197A87398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AA0, &qword_197A97D80);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  *a1 = v3;
}

uint64_t sub_197A35B34()
{
  v1 = *(*(v0 + 152) + 32);
  v1(*(v0 + 168), *(v0 + 176), *(v0 + 128));
  v2 = sub_197A88208();
  v3 = *(v0 + 168);
  v4 = *(v0 + 128);
  if (v2)
  {
    v5 = v2;
    (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 128));
  }

  else
  {
    v5 = swift_allocError();
    v1(v6, v3, v4);
  }

  *(v0 + 64) = v5;
  MEMORY[0x19A8EBBD0](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 224);
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);
    v10 = *(v0 + 184);
    v15 = *(v0 + 192);
    v11 = *(v0 + 160);
    v12 = *(v0 + 128);

    v1(v8, v11, v12);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
    swift_beginAccess();
    (*(v9 + 40))(v7, v8, v15);

    OUTLINED_FUNCTION_8_10();

    OUTLINED_FUNCTION_13();

    return v13();
  }

  else
  {

    return sub_197A87ED8();
  }
}

uint64_t sub_197A35DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_9();
  v17 = v16[2];
  os_unfair_lock_lock((v17 + 24));
  v26 = *(*(v17 + 16) + 24);
  if (v26)
  {
    v27 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      __break(1u);
    }

    else if ((v27 & 0x8000000000000000) == 0)
    {
      if (v27 < v26)
      {
        OUTLINED_FUNCTION_5_10();
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
      return MEMORY[0x1EEE6DA40](v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    __break(1u);
    goto LABEL_16;
  }

  v17 = 0;
LABEL_7:
  v16[3] = v17;
  os_unfair_lock_unlock((v16[2] + 24));
  if (v17)
  {
    v28 = swift_task_alloc();
    v16[4] = v28;
    *v28 = v16;
    OUTLINED_FUNCTION_3_13(v28);
    OUTLINED_FUNCTION_38_9();

    return MEMORY[0x1EEE6DA40](v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  OUTLINED_FUNCTION_13();

  return v29();
}

uint64_t sub_197A35ED4()
{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_197A35FC4, 0, 0);
}

uint64_t sub_197A35FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_9();

  v17 = v16[2];
  os_unfair_lock_lock((v17 + 24));
  v26 = *(*(v17 + 16) + 24);
  if (v26)
  {
    v27 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      __break(1u);
    }

    else if ((v27 & 0x8000000000000000) == 0)
    {
      if (v27 < v26)
      {
        OUTLINED_FUNCTION_5_10();
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
      return MEMORY[0x1EEE6DA40](v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    __break(1u);
    goto LABEL_16;
  }

  v17 = 0;
LABEL_7:
  v16[3] = v17;
  os_unfair_lock_unlock((v16[2] + 24));
  if (v17)
  {
    v28 = swift_task_alloc();
    v16[4] = v28;
    *v28 = v16;
    OUTLINED_FUNCTION_3_13(v28);
    OUTLINED_FUNCTION_38_9();

    return MEMORY[0x1EEE6DA40](v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  OUTLINED_FUNCTION_13();

  return v29();
}

uint64_t sub_197A360CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ModelServiceClient.acquireAssertion(assertion:)()
{
  OUTLINED_FUNCTION_9();
  v1[3] = v2;
  v1[4] = v0;
  v3 = type metadata accessor for ModelManagerError(0);
  v1[5] = v3;
  OUTLINED_FUNCTION_28(v3);
  v1[6] = OUTLINED_FUNCTION_90_4();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197A361B8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6_11(v0[4]);
  OUTLINED_FUNCTION_26();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_197A362BC;
  v2 = OUTLINED_FUNCTION_5(v0[3]);

  return v3(v2);
}

uint64_t sub_197A362BC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    v7 = *(v3 + 32);

    return MEMORY[0x1EEE6DFA0](sub_197A363F4, v7, 0);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v8();
  }
}

uint64_t sub_197A363F4()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  *(v0 + 16) = *(v0 + 80);
  MEMORY[0x19A8EBBD0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  OUTLINED_FUNCTION_22();
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 48);

    sub_19794B2DC();
    OUTLINED_FUNCTION_100_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_14();
    sub_19794A664(v2, 255, v3);
    v4 = sub_197A87918();
    OUTLINED_FUNCTION_57_7();
    sub_197962AC8(v1, v5);
    if (v4)
    {
      if (qword_1ED880218 != -1)
      {
        OUTLINED_FUNCTION_0_21(&qword_1ED880218);
      }

      v6 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v6, qword_1ED880220);
      v7 = sub_197A875E8();
      v8 = sub_197A87D68();
      if (OUTLINED_FUNCTION_65(v8))
      {
        v9 = OUTLINED_FUNCTION_204();
        OUTLINED_FUNCTION_137(v9);
        OUTLINED_FUNCTION_31_8(&dword_197941000, v10, v11, "Assertion denied, process not eligible to hold assertion");
        OUTLINED_FUNCTION_44();
      }
    }

    v12 = *(v0 + 56);
    OUTLINED_FUNCTION_2_14();
    sub_19794A664(v13, 255, v14);
    v15 = OUTLINED_FUNCTION_133_0();
    OUTLINED_FUNCTION_88(v15, v16);
    sub_197A41564();
    swift_willThrow();
    OUTLINED_FUNCTION_57_7();
    sub_197962AC8(v12, v17);
  }

  else
  {

    swift_willThrow();
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t ModelServiceClient.releaseAssertion(id:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_4_10(a1, v1);
}

uint64_t sub_197A36650()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6_11(v0[3]);
  OUTLINED_FUNCTION_26();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_19796D708;
  v2 = OUTLINED_FUNCTION_5(v0[2]);

  return v3(v2);
}

uint64_t sub_197A3676C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6_11(*(v2 + 16));
  OUTLINED_FUNCTION_26();
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  OUTLINED_FUNCTION_43(v4);

  return v6(v0, v1);
}

uint64_t sub_197A36874()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t ModelServiceClient.restoreAssertions(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_4_10(a1, v1);
}

uint64_t sub_197A3697C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6_11(v0[3]);
  OUTLINED_FUNCTION_26();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_197976F2C;
  v2 = OUTLINED_FUNCTION_5(v0[2]);

  return v3(v2);
}

uint64_t ModelServiceClient.dumpState()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_4_10(a1, v1);
}

uint64_t sub_197A36A98()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6_11(*(v0 + 24));
  OUTLINED_FUNCTION_26();
  v5 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 32) = v2;
  *v2 = v3;
  v2[1] = sub_197976F2C;
  OUTLINED_FUNCTION_53_10();

  return v5();
}

uint64_t ModelServiceClient.cancelRequest(id:session:)()
{
  OUTLINED_FUNCTION_9();
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v4);
  v1[16] = OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_197A36C5C()
{
  OUTLINED_FUNCTION_80();
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  type metadata accessor for _OSActivity();
  v0[17] = swift_initStackObject();
  v0[18] = sub_1979489D4("Client cancelling request", 25, 2);
  __swift_project_boxed_opaque_existential_1((v2 + 112), *(v2 + 136));
  v4 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  sub_197A87298();
  OUTLINED_FUNCTION_3_14();
  (*(v5 + 16))(v1, v3 + v4);
  OUTLINED_FUNCTION_23();
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_197A36E28;
  OUTLINED_FUNCTION_32_1(v0[13]);
  OUTLINED_FUNCTION_118_4();

  return v9();
}

uint64_t sub_197A36E28()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_33();
  v2 = *v1;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v2 + 128);
  *v4 = *v1;
  *(v3 + 160) = v0;

  sub_197947A40(v5, &qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_261();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_197A36F9C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 144);
  OUTLINED_FUNCTION_16();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_24_11();

  return v2();
}

uint64_t sub_197A3704C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 144);
  OUTLINED_FUNCTION_60_5(v1 + 24);
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_197A37104@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ModelManagerError(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B68, &qword_197A89660);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499D8, &unk_197A92330);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  sub_197A44A54();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E8, &qword_197A92348);
      v16 = *(v15 + 48);
      v17 = *&v13[v16];
      v18 = *(v15 + 64);
      v19 = v13[v18];
      sub_19794B2DC();
      *(a1 + v16) = v17;
      *(a1 + v18) = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
    }

    else
    {
      sub_19794BE44();
      sub_197A44A54();
      if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
      {
        sub_197947A40(v10, &qword_1EAF48B68, &qword_197A89660);
        sub_197947A40(v8, &qword_1EAF48B68, &qword_197A89660);
        v20 = 0;
      }

      else
      {
        sub_197A41564();
        sub_19794A664(&qword_1ED8816D8, 255, type metadata accessor for ModelManagerError);
        v20 = sub_197A88208();
        sub_197962AC8(v4, type metadata accessor for ModelManagerError);
        if (v20)
        {
          sub_197947A40(v10, &qword_1EAF48B68, &qword_197A89660);
          sub_197962AC8(v8, type metadata accessor for ModelManagerError);
        }

        else
        {
          v20 = swift_allocError();
          sub_19794B2DC();
          sub_197947A40(v10, &qword_1EAF48B68, &qword_197A89660);
        }
      }

      *a1 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
    }
  }

  else
  {
    sub_19794B2DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_197A37508()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1ED880220);
  v1 = __swift_project_value_buffer(v0, qword_1ED880220);
  if (qword_1ED880370 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED880520);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *sub_197A375D0()
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  type metadata accessor for ModelServiceClient();
  memset(v2, 0, sizeof(v2));
  v3 = 0;
  v0 = swift_allocObject();
  result = ModelServiceClient.init(sender:runningBoardAssertions:)(v4, v2);
  qword_1ED880258 = v0;
  return result;
}

uint64_t ModelServiceClient.__allocating_init(sender:runningBoardAssertions:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ModelServiceClient.init(sender:runningBoardAssertions:)(a1, a2);
  return v4;
}

uint64_t static ModelServiceClient.client.getter()
{
  if (qword_1ED8803B0 != -1)
  {
    swift_once();
  }
}

void ModelServiceClient.SessionCache.lockedInferenceProvider.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 40);
  sub_19794A620(v2, v3, v4, v5);
}

__n128 ModelServiceClient.SessionCache.lockedInferenceProvider.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_197955620(*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *a1;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 8) = result;
  *(v1 + 40) = v3;
  return result;
}

uint64_t *ModelServiceClient.init(sender:runningBoardAssertions:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  swift_defaultActor_initialize();
  *(v2 + 192) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_16_10();
  sub_19796AB98(v7, &qword_1EAF49130, &qword_197A969C0);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = sub_197A87898();
  *(v3 + 200) = 0;
  *(v3 + 208) = v9;
  *(v3 + 216) = sub_197A411FC(v8);
  *(v3 + 224) = v10;
  *(v3 + 232) = v11;
  sub_197A44A54();
  if (v25)
  {
    sub_197945EF8(&v24, &v26);
  }

  else
  {
    if (qword_1ED880698 != -1)
    {
      swift_once();
    }

    v12 = qword_1ED881820;
    v27 = type metadata accessor for ModelXPCSender(0);
    v28 = &protocol witness table for ModelXPCSender;
    *&v26 = v12;
  }

  sub_197945EF8(&v26, v3 + 112);
  sub_197A44A54();
  if (v25)
  {
    sub_197945EF8(&v24, &v26);
  }

  else
  {
    v13 = type metadata accessor for RunningBoardSelfAssertions();
    v14 = swift_allocObject();
    swift_defaultActor_initialize();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A418, &qword_197A97E60);
    sub_197A41508();
    *(v14 + 112) = sub_197A87898();
    v27 = v13;
    v28 = &off_1F0C17F08;
    *&v26 = v14;
    if (v25)
    {
      sub_197947A40(&v24, &qword_1EAF4A410, &qword_197A97E58);
    }
  }

  sub_197945EF8(&v26, v3 + 152);
  if (qword_1ED880218 != -1)
  {
    OUTLINED_FUNCTION_0_21(&qword_1ED880218);
  }

  v15 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v15, qword_1ED880220);
  v16 = sub_197A875E8();
  v17 = sub_197A87D78();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_56();
    v19 = OUTLINED_FUNCTION_93_0();
    *&v26 = v19;
    *v18 = 136315138;
    v20 = sub_197A37CB8(v6);
    v22 = sub_197948834(v20, v21, &v26);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_197941000, v16, v17, "Creating %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_44();
  }

  sub_197947A40(a2, &qword_1EAF4A410, &qword_197A97E58);
  sub_197947A40(a1, &qword_1EAF4A408, &qword_197A97E50);
  return v3;
}

uint64_t *ModelServiceClient.deinit()
{
  v2 = v0;
  v3 = *v0;
  if (qword_1ED880218 != -1)
  {
    OUTLINED_FUNCTION_0_21(&qword_1ED880218);
  }

  v4 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v4, qword_1ED880220);
  v5 = sub_197A875E8();
  v6 = sub_197A87D78();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_56();
    v7 = OUTLINED_FUNCTION_41_0();
    v12 = v7;
    *v1 = 136315138;
    v8 = sub_197A37CB8(v3);
    v10 = sub_197948834(v8, v9, &v12);

    *(v1 + 4) = v10;
    _os_log_impl(&dword_197941000, v5, v6, "Destroying %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 14);
  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 19);
  sub_197947A40((v2 + 26), &qword_1EAF4A420, &qword_197A97E68);

  swift_defaultActor_destroy();
  return v2;
}

uint64_t ModelServiceClient.__deallocating_deinit()
{
  ModelServiceClient.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_197A37D14()
{
  v0 = OUTLINED_FUNCTION_22();
  sub_197A346AC(v0, v1);
  return OUTLINED_FUNCTION_22();
}

uint64_t sub_197A37D68()
{
  OUTLINED_FUNCTION_33();
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 152), *(*(v0 + 16) + 176));
  OUTLINED_FUNCTION_26();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_43(v2);
  OUTLINED_FUNCTION_53_10();

  return v4();
}

uint64_t sub_197A37E7C()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = v4;
  OUTLINED_FUNCTION_24();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v5 + 32) = v0;

  if (v0)
  {
    v9 = *(v5 + 16);

    return MEMORY[0x1EEE6DFA0](sub_197A37FB4, v9, 0);
  }

  else
  {
    v10 = *(v7 + 8);

    return v10(v3);
  }
}

uint64_t sub_197A37FB4()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  if (qword_1ED880218 != -1)
  {
    OUTLINED_FUNCTION_0_21(&qword_1ED880218);
  }

  v1 = *(v0 + 32);
  v2 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v2, qword_1ED880220);
  MEMORY[0x19A8EBBD0](v1);
  v3 = sub_197A875E8();
  sub_197A87D78();
  OUTLINED_FUNCTION_113_4();
  v4 = OUTLINED_FUNCTION_96_1();
  v5 = *(v0 + 32);
  if (v4)
  {
    OUTLINED_FUNCTION_56();
    v6 = OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_78(v7);
    OUTLINED_FUNCTION_37_9(&dword_197941000, v8, v9, "This is an expected error thrown by a RBAssertion. Reason %@");
    sub_197947A40(v6, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  else
  {
  }

  OUTLINED_FUNCTION_112();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_197A380E4()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  *(v1 + 64) = v4;
  *(v1 + 72) = v0;
  *(v1 + 48) = v5;
  *(v1 + 56) = v6;
  v7 = type metadata accessor for RequestMetadata(0);
  *(v1 + 80) = v7;
  OUTLINED_FUNCTION_10(v7);
  *(v1 + 88) = v8;
  *(v1 + 96) = *(v9 + 64);
  *(v1 + 104) = OUTLINED_FUNCTION_78_0();
  v10 = type metadata accessor for ModelServiceClient.StreamBacking(0);
  *(v1 + 112) = v10;
  OUTLINED_FUNCTION_28(v10);
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  v11 = sub_197A87658();
  OUTLINED_FUNCTION_28(v11);
  *(v1 + 136) = OUTLINED_FUNCTION_78_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v12);
  *(v1 + 144) = OUTLINED_FUNCTION_78_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49CC8, &qword_197A92D58);
  OUTLINED_FUNCTION_28(v13);
  *(v1 + 152) = OUTLINED_FUNCTION_78_0();
  v14 = sub_197A876D8();
  *(v1 + 160) = v14;
  OUTLINED_FUNCTION_10(v14);
  *(v1 + 168) = v15;
  *(v1 + 176) = swift_task_alloc();
  v16 = swift_task_alloc();
  v17 = *v3;
  v18 = v3[1];
  *(v1 + 184) = v16;
  *(v1 + 192) = v17;
  *(v1 + 200) = v18;
  *(v1 + 208) = *(v3 + 1);
  *(v1 + 264) = *(v3 + 32);
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_197A382CC()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  *(v0 + 224) = type metadata accessor for InferenceProviderRequestResult(0);
  sub_197A44A54();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_197947A40(*(v0 + 152), &qword_1EAF49CC8, &qword_197A92D58);
    if (qword_1ED880218 != -1)
    {
      OUTLINED_FUNCTION_0_21(&qword_1ED880218);
    }

    v3 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v3, qword_1ED880220);
    v4 = sub_197A875E8();
    v5 = sub_197A87D58();
    if (OUTLINED_FUNCTION_65(v5))
    {
      v6 = OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_137(v6);
      OUTLINED_FUNCTION_31_8(&dword_197941000, v7, v8, "No endpoint returned for a successful stream request");
      OUTLINED_FUNCTION_44();
    }

    type metadata accessor for ModelManagerError(0);
    OUTLINED_FUNCTION_2_14();
    sub_19794A664(v9, 255, v10);
    v11 = OUTLINED_FUNCTION_46_5();
    v13 = OUTLINED_FUNCTION_88(v11, v12);
    OUTLINED_FUNCTION_95_5(v13, v14);
    swift_willThrow();

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_253();

    __asm { BRAA            X1, X16 }
  }

  v15 = *(v0 + 144);
  v16 = *(v0 + 72);
  (*(*(v0 + 168) + 32))(*(v0 + 184), *(v0 + 152), *(v0 + 160));
  os_unfair_lock_lock((v16 + 200));
  sub_197A44A54();
  sub_19797E7A8((v0 + 16), v15);
  OUTLINED_FUNCTION_100_3();
  if (!v18)
  {
    v19 = *(v0 + 264);
    v21 = *(v0 + 208);
    v20 = *(v0 + 216);
    v22 = *(v0 + 200);
    *(v17 + 8) = *(v0 + 192);
    *(v17 + 16) = v22;
    *(v17 + 24) = v21;
    *(v17 + 32) = v20;
    *(v17 + 40) = v19;
    sub_197A878A8();
    sub_197A878A8();
    OUTLINED_FUNCTION_100_0();
    OUTLINED_FUNCTION_124_4();
    sub_197955620(v23, v24, v25, v26);
  }

  ((v16 + 208))(v0 + 16, 0);
  sub_197947A40(*(v0 + 144), &qword_1EAF49130, &qword_197A969C0);
  os_unfair_lock_unlock((v16 + 200));
  sub_197A876C8();
  v27 = OUTLINED_FUNCTION_22();
  v28(v27);
  sub_197A87638();
  *(v0 + 232) = sub_197A876B8();
  type metadata accessor for InferenceProviderXPCSender();
  v31 = swift_allocObject();

  *(v0 + 240) = sub_197A44618(v32, v31);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 248) = v33;
  *v33 = v34;
  v33[1] = sub_197A386A0;
  OUTLINED_FUNCTION_253();

  return sub_1979CFC28();
}

uint64_t sub_197A386A0()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_135_3();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197A387C8()
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v1 = v0[30];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v16 = v0[8];
  v5 = v0[6];
  v6 = *(v0[10] + 24);
  sub_197A87298();
  OUTLINED_FUNCTION_3_14();
  (*(v7 + 16))(v2, v5 + v6);
  sub_197A44A54();
  *(v2 + v4[6]) = v1;
  *(v2 + v4[7]) = 0;
  v8 = (v2 + v4[8]);
  *v8 = sub_197A44744;
  v8[1] = v1;
  sub_197A41564();
  OUTLINED_FUNCTION_15_8();
  sub_197A41564();
  v9 = swift_allocObject();
  sub_19794B2DC();
  OUTLINED_FUNCTION_121_3();
  v10 = swift_allocObject();
  *(v10 + 16) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A430, &qword_197A97EC8);
  swift_allocObject();

  v0[32] = sub_197A6F488(v3, &unk_197A98168, v9, &unk_197A98178, v10);
  OUTLINED_FUNCTION_142();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_197A389E4()
{
  OUTLINED_FUNCTION_9();
  sub_197A70850(0);
  OUTLINED_FUNCTION_135_3();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

void sub_197A38A4C()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 128);

  sub_197962AC8(v1, type metadata accessor for ModelServiceClient.StreamBacking);
  v2 = OUTLINED_FUNCTION_116();
  v3(v2);

  OUTLINED_FUNCTION_253();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_197A38B50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  if (qword_1ED880218 != -1)
  {
    swift_once();
  }

  v5 = sub_197A87608();
  __swift_project_value_buffer(v5, qword_1ED880220);
  v6 = sub_197A875E8();
  v7 = sub_197A87D78();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_197941000, v6, v7, "Invalidating direct InferenceProvider connection.", v8, 2u);
    MEMORY[0x19A8EBE00](v8, -1, -1);
  }

  v9 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;

  sub_19795CB2C();
}

uint64_t sub_197A38CF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960E38;

  return sub_1979CD668();
}

uint64_t sub_197A38D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499D8, &unk_197A92330);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for ClientData(0);
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A38E90, a2, 0);
}

uint64_t sub_197A38E90()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[6] + *(*v0[6] + 120);
  swift_beginAccess();
  v2 = type metadata accessor for ModelServiceClient.StreamBacking(0);
  v3 = *(v2 + 28);
  if (*(v1 + v3))
  {
    v0[12] = *(v1 + *(v2 + 24));
    type metadata accessor for RequestMetadata(0);

    swift_task_alloc();
    OUTLINED_FUNCTION_14();
    v0[13] = v4;
    *v4 = v5;
    v4[1] = sub_197A390BC;

    return sub_1979CEC6C();
  }

  else
  {
    v8 = v0[9];
    v7 = v0[10];
    *(v1 + v3) = 1;
    sub_197A44A54();
    if (__swift_getEnumTagSinglePayload(v8, 1, v7) == 1)
    {
      v9 = v0[5];
      sub_197947A40(v0[9], &qword_1EAF49110, &qword_197A92D60);
      *v9 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
      OUTLINED_FUNCTION_133_0();
    }

    else
    {
      sub_19794B2DC();
      OUTLINED_FUNCTION_53_10();
      sub_19794B2DC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
      OUTLINED_FUNCTION_46_5();
    }

    swift_storeEnumTagMultiPayload();

    OUTLINED_FUNCTION_13();

    return v10();
  }
}

uint64_t sub_197A390BC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    v7 = *(v3 + 48);
    v8 = sub_197A3925C;
  }

  else
  {
    v9 = *(v3 + 48);

    v8 = sub_197A391CC;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_197A391CC()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 64);
  sub_197A37104(*(v0 + 40));
  sub_197947A40(v1, &qword_1EAF499D8, &unk_197A92330);

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_197A3925C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 112);
  v2 = *(v0 + 40);

  type metadata accessor for ModelManagerError(0);
  OUTLINED_FUNCTION_2_14();
  sub_19794A664(v3, 255, v4);
  v5 = OUTLINED_FUNCTION_105();
  v7 = OUTLINED_FUNCTION_88(v5, v6);
  ModelManagerError.init(wrapping:)(v1, v8);
  *v2 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499E0, &qword_197A92340);
  OUTLINED_FUNCTION_46_5();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_13();

  return v9();
}

uint64_t sub_197A39350(uint64_t a1)
{
  if (a1)
  {
    v2 = swift_task_alloc();
    *(v1 + 16) = v2;
    *v2 = v1;
    v2[1] = sub_197A39414;

    return sub_197A2A79C();
  }

  else
  {
    v4 = *(v1 + 8);

    return v4();
  }
}

uint64_t sub_197A39414()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v10();
  }
}

uint64_t sub_197A3952C()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  if (qword_1ED880218 != -1)
  {
    OUTLINED_FUNCTION_0_21(&qword_1ED880218);
  }

  v1 = *(v0 + 24);
  v2 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v2, qword_1ED880220);
  MEMORY[0x19A8EBBD0](v1);
  v3 = sub_197A875E8();
  sub_197A87D58();
  OUTLINED_FUNCTION_113_4();
  v4 = OUTLINED_FUNCTION_96_1();
  v5 = *(v0 + 24);
  if (v4)
  {
    OUTLINED_FUNCTION_56();
    v6 = OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_78(v7);
    OUTLINED_FUNCTION_37_9(&dword_197941000, v8, v9, "Error occurred when invalidating RunningBoard assertion: %@");
    sub_197947A40(v6, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_197A39654()
{
  OUTLINED_FUNCTION_18();
  v1[27] = v2;
  v1[28] = v0;
  v1[26] = v3;
  v4 = sub_197A87C08();
  v1[29] = v4;
  OUTLINED_FUNCTION_10(v4);
  v1[30] = v5;
  v1[31] = OUTLINED_FUNCTION_78_0();
  v6 = type metadata accessor for InferenceProviderRequestResult(0);
  OUTLINED_FUNCTION_28(v6);
  v1[32] = OUTLINED_FUNCTION_90_4();
  v1[33] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v7);
  v1[34] = OUTLINED_FUNCTION_78_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v8);
  v1[35] = OUTLINED_FUNCTION_78_0();
  v9 = type metadata accessor for RequestMetadata(0);
  v1[36] = v9;
  OUTLINED_FUNCTION_28(v9);
  v1[37] = OUTLINED_FUNCTION_90_4();
  v1[38] = swift_task_alloc();
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_197A397E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_57();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_72();
  a22 = v24;
  a13 = *MEMORY[0x1E69E9840];
  type metadata accessor for _OSActivity();
  v24[39] = swift_initStackObject();
  v24[40] = sub_1979489D4("Client requesting stream", 24, 2);
  if (qword_1ED880218 != -1)
  {
    OUTLINED_FUNCTION_0_21(&qword_1ED880218);
  }

  v27 = sub_197A87608();
  __swift_project_value_buffer(v27, qword_1ED880220);
  sub_197A41564();
  sub_197A41564();
  v28 = sub_197A875E8();
  v29 = sub_197A87D78();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v24[37];
  v32 = v24[38];
  if (v30)
  {
    v33 = v24[36];
    v51 = v29;
    v35 = v24[34];
    v34 = v24[35];
    v36 = swift_slowAlloc();
    a12 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = *(v33 + 24);
    sub_197A87298();
    OUTLINED_FUNCTION_3_14();
    (*(v38 + 16))(v34, v32 + v37);
    v39 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v41 = v40;
    sub_197947A40(v34, &qword_1EAF49128, &unk_197A8CE70);
    sub_197962AC8(v32, type metadata accessor for RequestMetadata);
    v42 = sub_197948834(v39, v41, &a12);

    *(v36 + 4) = v42;
    *(v36 + 12) = 2080;
    sub_197A44A54();
    v43 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v45 = v44;
    sub_197947A40(v35, &qword_1EAF49130, &qword_197A969C0);
    sub_197962AC8(v31, type metadata accessor for RequestMetadata);
    v46 = sub_197948834(v43, v45, &a12);

    *(v36 + 14) = v46;
    _os_log_impl(&dword_197941000, v28, v51, "Sending execute streaming request for %s:%s", v36, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_44();
  }

  else
  {

    sub_197962AC8(v31, type metadata accessor for RequestMetadata);
    sub_197962AC8(v32, type metadata accessor for RequestMetadata);
  }

  v47 = swift_task_alloc();
  v24[41] = v47;
  *v47 = v24;
  v47[1] = sub_197A39B58;
  OUTLINED_FUNCTION_32_1(v24[28]);
  OUTLINED_FUNCTION_30_0();

  return sub_197A37D48(v48);
}

uint64_t sub_197A39B58()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  *(v6 + 336) = v5;

  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_197A39C88()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_39_8(*(v0 + 224));
  sub_197A87C78();
  sub_197A87BF8();
  v1 = OUTLINED_FUNCTION_72_7();
  v2(v1);
  OUTLINED_FUNCTION_23();
  v7 = (v3 + *v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 344) = v4;
  *v4 = v5;
  v4[1] = sub_197A39DF8;
  OUTLINED_FUNCTION_32_7();

  return v7();
}

uint64_t sub_197A39DF8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 352) = v0;

  OUTLINED_FUNCTION_46_0();
  v5 = *(v4 + 224);
  if (v0)
  {
    v6 = sub_197A3A30C;
  }

  else
  {
    v6 = sub_197A39F40;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_197A39F40()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 360) = v2;
  *(v0 + 368) = v4;
  v5 = *(v0 + 88);
  OUTLINED_FUNCTION_17_9();
  sub_19794B2DC();
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 112) = v3;
  *(v0 + 120) = v4;
  *(v0 + 128) = v5;
  v6 = swift_task_alloc();
  *(v0 + 376) = v6;
  *v6 = v0;
  v6[1] = sub_197A3A03C;
  OUTLINED_FUNCTION_32_1(*(v0 + 216));
  OUTLINED_FUNCTION_117();

  return sub_197A380E4();
}

uint64_t sub_197A3A03C()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_24();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 384) = v0;

  if (!v0)
  {

    *(v4 + 392) = v3;
  }

  OUTLINED_FUNCTION_261();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197A3A1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_72();
  v36 = *MEMORY[0x1E69E9840];
  v17 = v16[49];
  v18 = v16[40];
  v32 = v16[35];
  v33 = v16[34];
  v19 = v16[33];
  v34 = v16[32];
  v35 = v16[31];
  v20 = v16[26];
  v20[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A430, &qword_197A97EC8);
  OUTLINED_FUNCTION_56_5();
  v20[4] = sub_19796AB98(v21, &qword_1EAF4A430, &qword_197A97EC8);

  *v20 = v17;
  OUTLINED_FUNCTION_1_16();
  sub_197962AC8(v19, v22);
  OUTLINED_FUNCTION_46(v18 + 24, (v16 + 23));
  os_activity_scope_leave((v18 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_30_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33, v34, v35, v36, a14, a15, a16);
}

uint64_t sub_197A3A30C()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 320);

  OUTLINED_FUNCTION_46(v1 + 24, v0 + 136);
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();
  OUTLINED_FUNCTION_115_4();

  OUTLINED_FUNCTION_24_11();

  return v2();
}

uint64_t sub_197A3A40C()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 320);
  v2 = *(v0 + 264);

  OUTLINED_FUNCTION_1_16();
  sub_197962AC8(v2, v3);

  OUTLINED_FUNCTION_46(v1 + 24, v0 + 160);
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();
  OUTLINED_FUNCTION_115_4();

  OUTLINED_FUNCTION_24_11();

  return v4();
}

uint64_t ModelServiceClient.fetchModelInstance(session:)()
{
  OUTLINED_FUNCTION_18();
  v1[34] = v2;
  v1[35] = v0;
  v1[33] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v4);
  v1[36] = OUTLINED_FUNCTION_90_4();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_197A3A608()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10_2();
  v0[39] = swift_initStackObject();
  v0[40] = sub_1979489D4("Client fetching model instance", 30, 2);
  v1 = swift_task_alloc();
  v0[41] = v1;
  *v1 = v0;
  v1[1] = sub_197A3A6E8;
  OUTLINED_FUNCTION_32_1(v0[34]);

  return ModelServiceClient.establishment(of:)();
}

uint64_t sub_197A3A6E8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 336) = v0;

  OUTLINED_FUNCTION_46_0();
  v5 = *(v4 + 280);
  if (v0)
  {
    v6 = sub_197A3AE30;
  }

  else
  {
    v6 = sub_197A3A830;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_197A3A830()
{
  OUTLINED_FUNCTION_122();
  if (qword_1ED880218 != -1)
  {
    OUTLINED_FUNCTION_0_21(&qword_1ED880218);
  }

  v1 = v0[34];
  v2 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v2, qword_1ED880220);

  v3 = sub_197A875E8();
  v4 = sub_197A87D78();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[38];
    v6 = v0[34];
    OUTLINED_FUNCTION_56();
    v23 = OUTLINED_FUNCTION_41_0();
    *v1 = 136315138;
    v7 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
    sub_197A87298();
    OUTLINED_FUNCTION_3_14();
    (*(v8 + 16))(v5, v6 + v7);
    _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    sub_197947A40(v5, &qword_1EAF49130, &qword_197A969C0);
    v9 = OUTLINED_FUNCTION_90();
    sub_197948834(v9, v10, v11);
    OUTLINED_FUNCTION_77_0();
    *(v1 + 4) = v5;
    OUTLINED_FUNCTION_31(&dword_197941000, v12, v13, "Fetching model instance for %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  v14 = v0[37];
  v15 = v0[34];
  OUTLINED_FUNCTION_6_11(v0[35]);
  v16 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v0[43] = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v0[44] = sub_197A87298();
  OUTLINED_FUNCTION_6();
  v18 = *(v17 + 16);
  v0[45] = v18;
  v0[46] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18(v14, v15 + v16);
  OUTLINED_FUNCTION_23();
  v22 = (v19 + *v19);
  v20 = swift_task_alloc();
  v0[47] = v20;
  *v20 = v0;
  v20[1] = sub_197A3AB00;
  OUTLINED_FUNCTION_118_4();

  return v22();
}

uint64_t sub_197A3AB00()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v2 + 384) = v0;

  sub_197947A40(*(v2 + 296), &qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_197A3AC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_72();
  v48 = *MEMORY[0x1E69E9840];
  v17 = *(v16 + 360);
  v19 = *(v16 + 344);
  v18 = *(v16 + 352);
  v21 = *(v16 + 280);
  v20 = *(v16 + 288);
  v22 = *(v16 + 272);
  v23 = *(v16 + 32);
  *(v16 + 128) = *(v16 + 16);
  *(v16 + 144) = v23;
  v46 = *(v16 + 56);
  v47 = *(v16 + 48);
  v24 = *(v16 + 72);
  v45 = *(v16 + 64);
  *(v16 + 392) = *(v16 + 80);
  os_unfair_lock_lock((v21 + 200));
  v17(v20, v22 + v19, v18);
  v25 = OUTLINED_FUNCTION_100_0();
  sub_19797E7A8(v25, v26);
  OUTLINED_FUNCTION_100_3();
  if (!v28)
  {
    v29 = *(v16 + 392);
    v30 = v27[1];
    v31 = v27[2];
    v32 = v27[4];
    a9 = v27[3];
    v27[1] = v47;
    v27[2] = v46;
    OUTLINED_FUNCTION_141_2(v27, v29);
    sub_197A878A8();
    sub_197955620(v30, v31, a9, v32);
  }

  ((v21 + 208))(v16 + 160, 0);
  v33 = *(v16 + 320);
  v34 = *(v16 + 264);
  sub_197947A40(*(v16 + 288), &qword_1EAF49130, &qword_197A969C0);
  os_unfair_lock_unlock((v21 + 200));
  v35 = *(v16 + 144);
  *v34 = *(v16 + 128);
  *(v34 + 16) = v35;
  *(v34 + 32) = v47;
  *(v34 + 40) = v46;
  *(v34 + 48) = v45;
  *(v34 + 56) = v24;
  *(v34 + 64) = *(v16 + 392);
  OUTLINED_FUNCTION_46(v33 + 24, v16 + 240);
  os_activity_scope_leave((v33 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_30_0();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, v45, v46, v47, v48, a14, a15, a16);
}

uint64_t sub_197A3AE30()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 320);
  OUTLINED_FUNCTION_46(v1 + 24, v0 + 192);
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_24_11();
  OUTLINED_FUNCTION_261();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_197A3AEFC()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 320);
  OUTLINED_FUNCTION_46(v1 + 24, v0 + 216);
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_24_11();
  OUTLINED_FUNCTION_261();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_197A3AFC8()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  type metadata accessor for IPCCachedSession.CancellationHandlerHandle();
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_197A4155C;
  *(v4 + 24) = v2;
  OUTLINED_FUNCTION_46(v1 + 128, v0 + 64);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + 128);
  sub_197A25238(sub_19798E520, v4, v3, isUniquelyReferenced_nonNull_native);
  *(v1 + 128) = v11;

  swift_endAccess();

  OUTLINED_FUNCTION_135_3();
  OUTLINED_FUNCTION_117();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_197A3B0FC()
{
  v1 = v0[9].i64[0];
  v2 = v0[5].i64[1];
  v3 = v0[6].i64[0];
  v4 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  sub_197A87298();
  OUTLINED_FUNCTION_3_14();
  (*(v5 + 16))(v1, v2 + v4);
  os_unfair_lock_lock((v3 + 200));
  v6 = *(v3 + 208);
  if (!*(v6 + 16) || (v7 = sub_19794B040(), (v8 & 1) == 0))
  {
    os_unfair_lock_unlock((v3 + 200));
    v15 = 0;
    v81 = 0;
    v82 = 0;
    v79 = 0;
    v80 = 0;
    v78 = 0;
    v20 = 0uLL;
    v21 = 0uLL;
    v10 = 1;
    goto LABEL_7;
  }

  v9 = *(v6 + 56) + 48 * v7;
  v10 = *v9;
  v0[10].i64[1] = *v9;
  v11 = *(v9 + 8);
  v0[11].i64[0] = v11;
  v12 = *(v9 + 16);
  v0[11].i64[1] = v12;
  v13 = *(v9 + 24);
  v0[12].i64[0] = v13;
  v14 = *(v9 + 32);
  v0[12].i64[1] = v14;
  v15 = *(v9 + 40);
  v0[3].i8[9] = v15;

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_129();
  sub_19794A620(v16, v17, v18, v19);
  os_unfair_lock_unlock((v3 + 200));
  v20.i64[0] = v11;
  v20.i64[1] = v12;
  v21.i64[0] = v13;
  v21.i64[1] = v14;
  if (!v10)
  {
    v81 = v12;
    v82 = v11;
    OUTLINED_FUNCTION_116();
    v79 = v14;
    v80 = v13;
    OUTLINED_FUNCTION_129();
    v75 = v50;
    v76 = v51;
    sub_19794A620(v52, v53, v54, v55);
    v21 = v75;
    v20 = v76;
    v78 = v15;
    goto LABEL_7;
  }

  if (v10 == 1)
  {
    v81 = 0;
    v82 = 0;
    v79 = 0;
    v80 = 0;
    v78 = 0;
LABEL_7:
    v77 = v3;
    v0[16].i64[0] = v10;
    v0[14] = vextq_s8(v21, v21, 8uLL);
    v0[15] = vextq_s8(v20, v20, 8uLL);
    v0[3].i8[10] = v15;
    *&v76 = v0[9].i64[0];
    v22 = v0[7].i64[1];
    v24 = v0[6].i64[1];
    v23 = v0[7].i64[0];
    *&v75 = v24;
    v25 = v0[5].i64[1];
    v26 = v0[6].i64[0];
    v27 = sub_197A87C08();
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v27);
    sub_197A44A54();
    OUTLINED_FUNCTION_58_9();
    v31 = sub_19794A664(v28, v29, v30);
    v32 = (v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 16) = v26;
    *(v34 + 24) = v31;
    sub_19794BE44();
    *(v34 + v32) = v26;
    *(v34 + v33) = v25;
    v35 = v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v35 = v82;
    *(v35 + 8) = v81;
    *(v35 + 16) = v80;
    *(v35 + 24) = v79;
    *(v35 + 32) = v78;
    swift_retain_n();

    OUTLINED_FUNCTION_98_4();
    sub_19794A620(v36, v37, v38, v39);
    OUTLINED_FUNCTION_47_8();
    v40 = sub_1979CC804();
    v0[16].i64[1] = v40;
    os_unfair_lock_lock((v77 + 200));
    v0[1].i64[0] = v40;
    v0[1].i64[1] = v82;
    v0[2].i64[0] = v81;
    v0[2].i64[1] = v80;
    v0[3].i64[0] = v79;
    v0[3].i8[8] = v78;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = *(v77 + 208);
    sub_19794BBD0(v0[1].i64, v76, isUniquelyReferenced_nonNull_native, v42, v43, v44, v45, v46, v75, *(&v75 + 1), v76, *(&v76 + 1));
    *(v77 + 208) = v83;
    os_unfair_lock_unlock((v77 + 200));
    v47 = swift_task_alloc();
    v0[17].i64[0] = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
    OUTLINED_FUNCTION_134_3();
    *v47 = v48;
    OUTLINED_FUNCTION_50_9();
    OUTLINED_FUNCTION_133_3();
    goto LABEL_8;
  }

  v56 = qword_1ED880218;

  if (v56 != -1)
  {
    OUTLINED_FUNCTION_0_21(&qword_1ED880218);
  }

  v57 = sub_197A87608();
  __swift_project_value_buffer(v57, qword_1ED880220);
  OUTLINED_FUNCTION_116();
  sub_197A44A54();
  v58 = sub_197A875E8();
  v59 = sub_197A87D38();
  v60 = os_log_type_enabled(v58, v59);
  v61 = v0[8].i64[1];
  if (v60)
  {
    v62 = v0[8].i64[0];
    v63 = OUTLINED_FUNCTION_56();
    v84 = OUTLINED_FUNCTION_93_0();
    *v63 = 136315138;
    OUTLINED_FUNCTION_140();
    sub_197A44A54();
    _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    sub_197947A40(v62, &qword_1EAF49130, &qword_197A969C0);
    v64 = OUTLINED_FUNCTION_140();
    sub_197947A40(v64, v65, &qword_197A969C0);
    v66 = OUTLINED_FUNCTION_108_3();
    v69 = sub_197948834(v66, v67, v68);

    *(v63 + 4) = v69;
    OUTLINED_FUNCTION_142_2(&dword_197941000, v70, v71, "Waiting for creation of %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_37();
  }

  else
  {

    sub_197947A40(v61, &qword_1EAF49130, &qword_197A969C0);
  }

  v72 = swift_task_alloc();
  v0[13].i64[0] = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  OUTLINED_FUNCTION_134_3();
  *v72 = v73;
  OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_133_3();
LABEL_8:

  return MEMORY[0x1EEE6DA10](v49);
}

uint64_t sub_197A3B65C()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();

  v1 = v0[18];
  sub_197963674(v0[21], v0[22], v0[23], v0[24], v0[25]);
  sub_197947A40(v1, &qword_1EAF49130, &qword_197A969C0);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_197A3B718()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();

  v1 = v0[18];
  sub_197963674(v0[32], v0[31], v0[30], v0[29], v0[28]);
  sub_197947A40(v1, &qword_1EAF49130, &qword_197A969C0);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t ModelServiceClient.executeRequest(session:metadata:)()
{
  OUTLINED_FUNCTION_18();
  v1[30] = v2;
  v1[31] = v0;
  v1[28] = v3;
  v1[29] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
  OUTLINED_FUNCTION_28(v5);
  v1[32] = OUTLINED_FUNCTION_78_0();
  v6 = type metadata accessor for ClientData(0);
  v1[33] = v6;
  OUTLINED_FUNCTION_28(v6);
  v1[34] = OUTLINED_FUNCTION_78_0();
  v7 = sub_197A87C08();
  v1[35] = v7;
  OUTLINED_FUNCTION_10(v7);
  v1[36] = v8;
  v1[37] = OUTLINED_FUNCTION_78_0();
  v9 = type metadata accessor for InferenceProviderRequestResult(0);
  v1[38] = v9;
  OUTLINED_FUNCTION_28(v9);
  v1[39] = OUTLINED_FUNCTION_90_4();
  v1[40] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v10);
  v1[41] = OUTLINED_FUNCTION_90_4();
  v1[42] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v11);
  v1[43] = OUTLINED_FUNCTION_78_0();
  v12 = type metadata accessor for RequestMetadata(0);
  v1[44] = v12;
  OUTLINED_FUNCTION_28(v12);
  v1[45] = OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_197A3B9BC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10_2();
  v0[46] = swift_initStackObject();
  v0[47] = sub_1979489D4("Client executing request", 24, 2);
  v1 = swift_task_alloc();
  v0[48] = v1;
  *v1 = v0;
  v1[1] = sub_197A3BAA0;
  OUTLINED_FUNCTION_32_1(v0[29]);

  return ModelServiceClient.establishment(of:)();
}

uint64_t sub_197A3BAA0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 392) = v0;

  OUTLINED_FUNCTION_46_0();
  v5 = *(v4 + 248);
  if (v0)
  {
    v6 = sub_197A3BF90;
  }

  else
  {
    v6 = sub_197A3BBE8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_197A3BBE8()
{
  v32 = v0;
  v31[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED880218 != -1)
  {
    OUTLINED_FUNCTION_0_21(&qword_1ED880218);
  }

  v1 = sub_197A87608();
  v0[50] = __swift_project_value_buffer(v1, qword_1ED880220);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_22();
  sub_197A41564();

  v2 = sub_197A875E8();
  v3 = sub_197A87D78();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[45];
  if (v4)
  {
    v30 = v3;
    v6 = v0[43];
    v7 = v0[44];
    v27 = v0[29];
    v28 = v0[42];
    v8 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v8 = 136315394;
    v9 = *(v7 + 24);
    v10 = sub_197A87298();
    OUTLINED_FUNCTION_6();
    v12 = *(v11 + 16);
    v12(v6, v5 + v9, v10);
    v13 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v15 = v14;
    sub_197947A40(v6, &qword_1EAF49128, &unk_197A8CE70);
    OUTLINED_FUNCTION_68_7();
    v16 = sub_197948834(v13, v15, v31);

    *(v8 + 4) = v16;
    *(v8 + 12) = 2080;
    v12(v28, v27 + OBJC_IVAR____TtC20ModelManagerServices7Session_uuid, v10);
    v17 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v19 = v18;
    sub_197947A40(v28, &qword_1EAF49130, &qword_197A969C0);
    v20 = sub_197948834(v17, v19, v31);

    *(v8 + 14) = v20;
    _os_log_impl(&dword_197941000, v2, v30, "Sending execute request for %s:%s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_29();
  }

  else
  {

    OUTLINED_FUNCTION_68_7();
  }

  OUTLINED_FUNCTION_39_8(v0[31]);
  sub_197A87C78();
  sub_197A87BF8();
  v21 = OUTLINED_FUNCTION_72_7();
  v22(v21);
  OUTLINED_FUNCTION_23();
  v29 = (v23 + *v23);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[51] = v24;
  *v24 = v25;
  v24[1] = sub_19797E228;
  OUTLINED_FUNCTION_32_7();

  return v29();
}

uint64_t sub_197A3BF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v26 = *MEMORY[0x1E69E9840];
  v15 = *(v14 + 376);
  OUTLINED_FUNCTION_46(v15 + 24, v14 + 128);
  os_activity_scope_leave((v15 + 24));
  swift_endAccess();
  v25 = *(v14 + 392);
  OUTLINED_FUNCTION_30_11();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_142();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, v25, v26, a12, a13, a14);
}

uint64_t sub_197A3C08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v26 = *MEMORY[0x1E69E9840];
  v15 = *(v14 + 376);
  OUTLINED_FUNCTION_46(v15 + 24, v14 + 152);
  os_activity_scope_leave((v15 + 24));
  swift_endAccess();
  v25 = *(v14 + 416);
  OUTLINED_FUNCTION_30_11();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_142();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, v25, v26, a12, a13, a14);
}

void ModelServiceClient.executeStreamingRequest(session:metadata:)()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  v16 = v2;
  v17 = v4;
  v5 = type metadata accessor for RequestMetadata(0);
  v6 = OUTLINED_FUNCTION_10(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v11);
  sub_197A41564();
  v12 = *(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = v3;
  sub_19794B2DC();
  OUTLINED_FUNCTION_100_0();
  sub_197A41564();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  sub_19794B2DC();
  *(v14 + ((v10 + ((v12 + 24) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  type metadata accessor for CombinedResponseIterator();
  swift_allocObject();
  swift_retain_n();
  swift_retain_n();

  OUTLINED_FUNCTION_76_7();
  sub_197A12550();
  *v17 = &unk_197A97EA8;
  v17[1] = v13;
  v17[2] = 0;
  v17[3] = sub_197A41684;
  v17[4] = v14;
  v17[5] = v15;
  OUTLINED_FUNCTION_66();
}

uint64_t sub_197A3C3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_197A3C464;

  return ModelServiceClient.establishment(of:)();
}

uint64_t sub_197A3C464()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_4_0();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

void sub_197A3C57C()
{
  if (*(*(v0[4] + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) + 16))
  {
    OUTLINED_FUNCTION_9();
    v0[7] = *(v1 + 40);
    sub_197A878A8();
    swift_task_alloc();
    OUTLINED_FUNCTION_14();
    v0[8] = v2;
    *v2 = v3;
    v2[1] = sub_197A3C63C;

    sub_197A39654();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_197A3C63C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v10();
  }
}

uint64_t sub_197A3C758()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_197A3C7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RequestMetadata(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_197A41564();
  v12 = (v7 + ((*(v6 + 80) + 40) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  sub_19794B2DC();
  *(v13 + v12) = a3;

  sub_19795CB2C();
}

uint64_t sub_197A3C988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  v6[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A3CA28, 0, 0);
}

uint64_t sub_197A3CA28()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[5];
  v2 = v0[3];
  v3 = *(type metadata accessor for RequestMetadata(0) + 24);
  sub_197A87298();
  OUTLINED_FUNCTION_3_14();
  (*(v4 + 16))(v1, v2 + v3);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_197A3CB04;
  OUTLINED_FUNCTION_32_1(v0[5]);

  return ModelServiceClient.cancelRequest(id:session:)();
}

uint64_t sub_197A3CB04()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 56) = v0;

  sub_197947A40(v6, &qword_1EAF49128, &unk_197A8CE70);
  if (v0)
  {
    OUTLINED_FUNCTION_4_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v12();
  }
}

uint64_t sub_197A3CC58()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  if (qword_1ED880218 != -1)
  {
    OUTLINED_FUNCTION_0_21(&qword_1ED880218);
  }

  v1 = *(v0 + 56);
  v2 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v2, qword_1ED880220);
  MEMORY[0x19A8EBBD0](v1);
  v3 = sub_197A875E8();
  sub_197A87D78();
  OUTLINED_FUNCTION_113_4();
  v4 = OUTLINED_FUNCTION_96_1();
  v5 = *(v0 + 56);
  if (v4)
  {
    OUTLINED_FUNCTION_56();
    v6 = OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_78(v7);
    OUTLINED_FUNCTION_37_9(&dword_197941000, v8, v9, "Streaming Req Cancel caught error: %@");
    sub_197947A40(v6, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t ModelServiceClient.executePendingRequests(id:)()
{
  OUTLINED_FUNCTION_9();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A428, &qword_197A97EB8);
  OUTLINED_FUNCTION_28(v4);
  v1[25] = OUTLINED_FUNCTION_78_0();
  v5 = sub_197A87298();
  v1[26] = v5;
  OUTLINED_FUNCTION_10(v5);
  v1[27] = v6;
  v1[28] = OUTLINED_FUNCTION_78_0();
  v7 = type metadata accessor for ModelServiceClient.PendingRequest(0);
  v1[29] = v7;
  OUTLINED_FUNCTION_28(v7);
  v1[30] = OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197A3CE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_121();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_122();
  a20 = v22;
  v25 = *(v22 + 184);
  v26 = *(v22 + 192);
  OUTLINED_FUNCTION_152_2((v26 + 27), v22 + 56);
  v28 = v26[27];
  v27 = v26[28];
  v29 = swift_task_alloc();
  v29[2] = v28;
  v29[3] = v27;
  v29[4] = v25;
  sub_197A41950(sub_197A43398, v29, v27);
  LOBYTE(v28) = v30;

  if (v28)
  {
    swift_endAccess();
LABEL_16:
    v72 = *(v22 + 176);
    *(v72 + 32) = 0;
    *v72 = 0u;
    *(v72 + 16) = 0u;

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_142();

    return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14);
  }

  v31 = *(v22 + 184);
  OUTLINED_FUNCTION_150_0();
  swift_endAccess();

  OUTLINED_FUNCTION_152_2((v26 + 27), v22 + 80);
  v33 = v26[27];
  v32 = v26[28];
  v34 = v26[29];
  v35 = swift_task_alloc();
  v35[2] = v33;
  v35[3] = v32;
  v35[4] = v31;
  sub_197A41950(sub_197A44AAC, v35, v32);
  LOBYTE(v31) = v36;

  if (v31)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_150_0();
  swift_endAccess();
  v37 = *(v34 + 16);

  if (!v37)
  {
    goto LABEL_16;
  }

  v38 = *(v22 + 224);
  (*(*(v22 + 216) + 16))(v38, *(v22 + 184), *(v22 + 208));
  OUTLINED_FUNCTION_46((v26 + 27), v22 + 104);
  v40 = v26[27];
  v39 = v26[28];
  v41 = swift_task_alloc();
  v41[2] = v40;
  v41[3] = v39;
  v41[4] = v38;
  v42 = sub_197A41950(sub_197A44AAC, v41, v39);
  v44 = v43;
  v46 = v45;

  if ((v44 & 1) != 0 || (sub_197A431B8(v42, *(v26[29] + 16) - 1), sub_197A43298(), (a10 = v47) == 0))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    swift_endAccess();
    __break(1u);
    goto LABEL_23;
  }

  v48 = v47;
  if (!*(v47 + 16))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v49 = *(v22 + 232);
  v50 = *(v22 + 200);
  sub_19798E68C(v47, v50);
  if (__swift_getEnumTagSinglePayload(v50, 1, v49) == 1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_74_8();
  if (!*(v48 + 16))
  {
    goto LABEL_20;
  }

  v51 = *(v22 + 224);
  v52 = *(v22 + 184);
  sub_197A435E4();
  sub_197A422AC((v26 + 27), v51, v42, v44 & 1, v46, &a10);

  swift_endAccess();
  v53 = OUTLINED_FUNCTION_90();
  v54(v53);
  OUTLINED_FUNCTION_152_2((v26 + 27), v22 + 128);
  v56 = v26[27];
  v55 = v26[28];
  v57 = swift_task_alloc();
  v57[2] = v56;
  v57[3] = v55;
  v57[4] = v52;
  sub_197A41950(sub_197A44AAC, v57, v55);
  LOBYTE(v52) = v58;

  if (v52)
  {
LABEL_24:
    result = swift_endAccess();
    __break(1u);
    return result;
  }

  v59 = OUTLINED_FUNCTION_22();
  v61 = sub_197A42288(v59, v60);
  swift_endAccess();
  v62 = *(v61 + 16);

  if (!v62)
  {
    v63 = *(v22 + 184);
    OUTLINED_FUNCTION_46((v26 + 27), v22 + 152);
    sub_197A3D5C4(v63);
    swift_endAccess();
  }

  v64 = (*(v22 + 240) + *(*(v22 + 232) + 24));
  v66 = *v64;
  v65 = v64[1];
  v67 = v64[2];
  v68 = v64[3];
  LOBYTE(v64) = *(v64 + 32);
  *(v22 + 16) = v66;
  *(v22 + 24) = v65;
  *(v22 + 32) = v67;
  *(v22 + 40) = v68;
  *(v22 + 48) = v64;
  sub_197A878A8();
  sub_197A878A8();
  v69 = swift_task_alloc();
  *(v22 + 248) = v69;
  *v69 = v22;
  v69[1] = sub_197A3D330;
  OUTLINED_FUNCTION_32_1(*(v22 + 240));
  OUTLINED_FUNCTION_118_4();
  OUTLINED_FUNCTION_142();

  return sub_197A380E4();
}

uint64_t sub_197A3D330()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = v4;
  OUTLINED_FUNCTION_24();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v5 + 256) = v0;

  if (!v0)
  {
    *(v5 + 264) = v3;
  }

  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_197A3D468()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[22];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A430, &qword_197A97EC8);
  OUTLINED_FUNCTION_56_5();
  OUTLINED_FUNCTION_53_10();
  v3[4] = sub_19796AB98(v4, v5, v6);
  *v3 = v1;
  OUTLINED_FUNCTION_5_11();
  sub_197962AC8(v2, v7);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_197A3D538()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 240);
  OUTLINED_FUNCTION_5_11();
  sub_197962AC8(v1, v2);

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_197A3D5C4(uint64_t a1)
{
  v3 = sub_197A87298();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1[1];
  v13 = *v1;
  v14 = v7;
  v15 = a1;
  v9 = sub_197A41950(sub_197A44AAC, v12, v7);
  result = 0;
  if ((v11 & 1) == 0)
  {
    sub_197A42558(v9, v8, v6);
    (*(v4 + 8))(v6, v3);
    return sub_197A426F8(v9);
  }

  return result;
}

uint64_t sub_197A3D6E0()
{
  OUTLINED_FUNCTION_18();
  v1[30] = v2;
  v1[31] = v0;
  v3 = type metadata accessor for ModelServiceClient.PendingRequest(0);
  v1[32] = v3;
  OUTLINED_FUNCTION_10(v3);
  v1[33] = v4;
  v1[34] = OUTLINED_FUNCTION_90_4();
  v1[35] = swift_task_alloc();
  v5 = sub_197A87298();
  v1[36] = v5;
  OUTLINED_FUNCTION_10(v5);
  v1[37] = v6;
  v1[38] = OUTLINED_FUNCTION_90_4();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v7 = type metadata accessor for InferenceProviderRequestResult(0);
  v1[41] = v7;
  OUTLINED_FUNCTION_28(v7);
  v1[42] = OUTLINED_FUNCTION_78_0();
  v8 = sub_197A87C08();
  v1[43] = v8;
  OUTLINED_FUNCTION_10(v8);
  v1[44] = v9;
  v1[45] = OUTLINED_FUNCTION_78_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A58, &qword_197A98140);
  OUTLINED_FUNCTION_28(v10);
  v1[46] = OUTLINED_FUNCTION_90_4();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_197A3D8E0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10_2();
  v0[49] = swift_initStackObject();
  v0[50] = sub_1979489D4("Client requesting stream", 24, 2);
  v1 = swift_task_alloc();
  v0[51] = v1;
  *v1 = v0;
  v1[1] = sub_197A3D9C0;
  v2 = OUTLINED_FUNCTION_32_1(v0[31]);

  return sub_197A37D48(v2);
}

uint64_t sub_197A3D9C0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  *(v6 + 416) = v5;

  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_197A3DAF0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_39_8(*(v0 + 248));
  sub_197A87C78();
  sub_197A87BF8();
  v1 = OUTLINED_FUNCTION_72_7();
  v2(v1);
  OUTLINED_FUNCTION_23();
  v7 = (v3 + *v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 424) = v4;
  *v4 = v5;
  v4[1] = sub_197A3DC64;
  OUTLINED_FUNCTION_32_7();

  return v7();
}

uint64_t sub_197A3DC64()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 432) = v0;

  OUTLINED_FUNCTION_46_0();
  v5 = *(v4 + 248);
  if (v0)
  {
    v6 = sub_197A3E3AC;
  }

  else
  {
    v6 = sub_197A3DDAC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

void sub_197A3DDAC()
{
  v69 = v0;
  v68[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 368);
  v2 = *(v0 + 328);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v66 = *(v0 + 88);
  OUTLINED_FUNCTION_124_4();
  sub_19794BE44();
  OUTLINED_FUNCTION_124_4();
  sub_197A44A54();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v7 = v0 + 120;
    v8 = *(v0 + 400);
    v9 = *(v0 + 368);
    sub_197947A40(*(v0 + 384), &qword_1EAF49A58, &qword_197A98140);

    sub_197947A40(v9, &qword_1EAF49A58, &qword_197A98140);
    goto LABEL_13;
  }

  v62 = *(v0 + 416);
  v61 = v5;
  v10 = *(v0 + 320);
  v60 = v6;
  v12 = *(v0 + 288);
  v11 = *(v0 + 296);
  v13 = *(v0 + 280);
  v15 = *(v0 + 248);
  v14 = *(v0 + 256);
  v59 = v4;
  v16 = *(v0 + 240);
  OUTLINED_FUNCTION_17_9();
  sub_19794B2DC();
  v17 = type metadata accessor for RequestMetadata(0);
  v63 = *(v11 + 16);
  v63(v10, v16 + *(v17 + 24), v12);
  OUTLINED_FUNCTION_15_8();
  sub_197A41564();
  sub_197A41564();
  v18 = v13 + *(v14 + 24);
  *v18 = v59;
  *(v18 + 8) = v3;
  *(v18 + 16) = v60;
  *(v18 + 24) = v61;
  *(v18 + 32) = v66;
  *(v13 + *(v14 + 28)) = v62;
  OUTLINED_FUNCTION_152_2((v15 + 27), v0 + 144);
  v19 = v15[27];
  v20 = v15[28];
  v21 = swift_task_alloc();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = v10;
  sub_197A41950(sub_197A44AAC, v21, v20);
  LOBYTE(v20) = v22;

  if (v20)
  {
    v23 = *(v0 + 384);
    v24 = *(v0 + 336);
    v25 = *(v0 + 320);
    v27 = *(v0 + 296);
    v26 = *(v0 + 304);
    v28 = *(v0 + 280);
    v29 = *(v0 + 288);
    swift_endAccess();
    v63(v26, v25, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A190, &unk_197A98150);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_197A88E50;
    OUTLINED_FUNCTION_55_5();
    sub_197A41564();
    OUTLINED_FUNCTION_46((v15 + 27), v0 + 168);
    sub_197A3E4D0(v30, v26);
    swift_endAccess();
    OUTLINED_FUNCTION_5_11();
    sub_197962AC8(v28, v31);
    OUTLINED_FUNCTION_1_16();
    sub_197962AC8(v24, v32);
    sub_197947A40(v23, &qword_1EAF49A58, &qword_197A98140);
    v33 = *(v27 + 8);
LABEL_12:
    v7 = v0 + 192;
    v8 = *(v0 + 400);
    v33(*(v0 + 320), *(v0 + 288));
LABEL_13:
    OUTLINED_FUNCTION_46(v8 + 24, v7);
    os_activity_scope_leave((v8 + 24));
    swift_endAccess();

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_138_1();

    __asm { BRAA            X1, X16 }
  }

  v34 = *(v0 + 312);
  v35 = *(v0 + 320);
  v36 = *(v0 + 288);
  OUTLINED_FUNCTION_150_0();
  swift_endAccess();

  v63(v34, v35, v36);
  OUTLINED_FUNCTION_55_5();
  sub_197A41564();
  OUTLINED_FUNCTION_46((v15 + 27), v0 + 216);
  v38 = v15[27];
  v37 = v15[28];
  v39 = swift_task_alloc();
  v39[2] = v38;
  v39[3] = v37;
  v39[4] = v34;
  v40 = sub_197A41950(sub_197A44AAC, v39, v37);
  v42 = v41;
  v44 = v43;

  if ((v42 & 1) == 0)
  {
    sub_197A431B8(v40, *(v15[29] + 16) - 1);
    sub_197A43298();
    if (v45)
    {
      v46 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_197A1F114(0, v46[2] + 1, 1, v46);
      }

      v48 = v46[2];
      v47 = v46[3];
      v49 = v48 + 1;
      v50 = v15;
      if (v48 >= v47 >> 1)
      {
        v58 = sub_197A1F114((v47 > 1), v48 + 1, 1, v46);
        v49 = v48 + 1;
        v46 = v58;
      }

      v64 = *(v0 + 336);
      v65 = *(v0 + 384);
      v51 = *(v0 + 312);
      v52 = *(v0 + 296);
      v67 = *(v0 + 288);
      v53 = *(v0 + 280);
      v46[2] = v49;
      OUTLINED_FUNCTION_74_8();
      v68[0] = v46;
      sub_197A422AC((v50 + 27), v51, v40, v42 & 1, v44, v68);

      swift_endAccess();
      OUTLINED_FUNCTION_5_11();
      sub_197962AC8(v53, v54);
      OUTLINED_FUNCTION_1_16();
      sub_197962AC8(v64, v55);
      sub_197947A40(v65, &qword_1EAF49A58, &qword_197A98140);
      v33 = *(v52 + 8);
      v33(v51, v67);
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_197A3E3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v27 = *MEMORY[0x1E69E9840];
  v15 = v14[50];
  v25 = v14[35];
  v26 = v14[34];

  OUTLINED_FUNCTION_46(v15 + 24, (v14 + 12));
  os_activity_scope_leave((v15 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_142();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26, v27, a12, a13, a14);
}

uint64_t sub_197A3E4D0(uint64_t a1, uint64_t a2)
{
  v5 = sub_197A87298();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v2[1];
  v24 = *v2;
  v25 = v9;
  v26 = a2;
  v10 = sub_197A41950(sub_197A44AAC, v23, v9);
  if (v12)
  {
    if (a1)
    {
      sub_197A4172C(a2, v11);
      v15 = v2[2];
      v13 = v2 + 2;
      v14 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v13 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_19798CC34(0, *(v14 + 16) + 1, 1);
        v14 = *v13;
      }

      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_19798CC34(v17 > 1, v18 + 1, 1);
        v14 = *v13;
      }

      *(v14 + 16) = v18 + 1;
      *(v14 + 8 * v18 + 32) = a1;
      *v13 = v14;
    }

    return (*(v6 + 8))(a2, v5);
  }

  else
  {
    v20 = v10;
    if (a1)
    {
      v21 = v2[2];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_197A4285C(v21);
      }

      result = (*(v6 + 8))(a2, v5);
      if ((v20 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v20 < *(v21 + 16))
      {
        *(v21 + 8 * v20 + 32) = a1;

        v2[2] = v21;
        return result;
      }

      __break(1u);
    }

    else
    {
      sub_197A42558(v10, v11, v8);
      v22 = *(v6 + 8);
      v22(v8, v5);
      sub_197A426F8(v20);

      return v22(a2, v5);
    }
  }

  return result;
}

uint64_t ModelServiceClient.executeInputStreamRequest(session:metadata:)()
{
  OUTLINED_FUNCTION_9();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = swift_task_alloc();
  v1[16] = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_43(v5);

  return ModelServiceClient.establishment(of:)();
}

uint64_t sub_197A3E79C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_4_0();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

void sub_197A3E8B4()
{
  if (*(*(v0[13] + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) + 16))
  {
    OUTLINED_FUNCTION_9();
    v0[17] = *(v1 + 40);
    sub_197A878A8();
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_197A3E970;

    sub_197A3D6E0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_197A3E970()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    type metadata accessor for RequestMetadata(0);
    swift_task_alloc();
    OUTLINED_FUNCTION_14();
    *(v3 + 160) = v10;
    *v10 = v11;
    v10[1] = sub_197A3EAEC;

    return ModelServiceClient.executePendingRequests(id:)();
  }
}

uint64_t sub_197A3EAEC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_197A3EBE8()
{
  OUTLINED_FUNCTION_18();
  if (*(v0 + 40))
  {
    sub_197947C44(v0 + 16, v0 + 56);
  }

  else
  {
    v1 = *(v0 + 32);
    *(v0 + 56) = *(v0 + 16);
    *(v0 + 72) = v1;
    *(v0 + 88) = *(v0 + 48);
  }

  if (*(v0 + 80))
  {
    if (*(v0 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    }

    sub_197945EF8((v0 + 56), *(v0 + 96));
    OUTLINED_FUNCTION_13();
  }

  else
  {
    if (qword_1ED880218 != -1)
    {
      OUTLINED_FUNCTION_0_21(&qword_1ED880218);
    }

    v3 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v3, qword_1ED880220);
    v4 = sub_197A875E8();
    v5 = sub_197A87D78();
    if (OUTLINED_FUNCTION_65(v5))
    {
      v6 = OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_137(v6);
      OUTLINED_FUNCTION_31_8(&dword_197941000, v7, v8, "First request for an input sequence did not return an iterator");
      OUTLINED_FUNCTION_44();
    }

    type metadata accessor for ModelManagerError(0);
    OUTLINED_FUNCTION_2_14();
    sub_19794A664(v9, 255, v10);
    v11 = OUTLINED_FUNCTION_46_5();
    v13 = OUTLINED_FUNCTION_88(v11, v12);
    OUTLINED_FUNCTION_95_5(v13, v14);
    swift_willThrow();
    if (*(v0 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    }

    OUTLINED_FUNCTION_13();
  }

  return v2();
}

uint64_t sub_197A3ED64()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t ModelServiceClient.addInputToRequest(session:metadata:)()
{
  OUTLINED_FUNCTION_9();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_43(v4);

  return ModelServiceClient.establishment(of:)();
}

uint64_t sub_197A3EE78()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_4_0();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

void sub_197A3EF90()
{
  if (*(*(v0[2] + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) + 16))
  {
    OUTLINED_FUNCTION_9();
    v0[6] = *(v1 + 40);
    sub_197A878A8();
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_197A3F04C;

    sub_197A3D6E0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_197A3F04C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v10();
  }
}

uint64_t sub_197A3F168()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_197A3F1C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_197A3F21C();
  }

  return result;
}

void sub_197A3F21C()
{
  v1 = v0;
  if (qword_1ED880218 != -1)
  {
    swift_once();
  }

  v2 = sub_197A87608();
  __swift_project_value_buffer(v2, qword_1ED880220);
  v3 = sub_197A875E8();
  v4 = sub_197A87D78();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_197941000, v3, v4, "Resetting session cache", v5, 2u);
    MEMORY[0x19A8EBE00](v5, -1, -1);
  }

  os_unfair_lock_lock((v1 + 200));
  sub_197A3F98C((v1 + 208));

  os_unfair_lock_unlock((v1 + 200));
}

uint64_t sub_197A3F328()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 280);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  OUTLINED_FUNCTION_46(v1 + 24, v0 + 160);
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_112();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_197A3F404()
{
  OUTLINED_FUNCTION_72();
  v24 = v1;
  v23 = *MEMORY[0x1E69E9840];
  MEMORY[0x19A8EBBD0](*(v1 + 144));
  v3 = sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_113_4();
  v4 = OUTLINED_FUNCTION_96_1();
  v5 = *(v1 + 144);
  if (v4)
  {
    OUTLINED_FUNCTION_56();
    v6 = OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_78(v7);
    OUTLINED_FUNCTION_37_9(&dword_197941000, v8, v9, "Sending deletion session failed with %@");
    sub_197947A40(v6, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  else
  {
  }

  OUTLINED_FUNCTION_144_3();
  sub_19796D494(v21);
  OUTLINED_FUNCTION_143_3(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21[0], v21[1], v21[2], v21[3], v21[4], v22);
  os_unfair_lock_unlock(v2 + 50);
  OUTLINED_FUNCTION_60_5(v0 + 24);
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();

  return v18();
}

uint64_t sub_197A3F588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  v25 = *MEMORY[0x1E69E9840];
  MEMORY[0x19A8EBBD0](*(v9 + 168));
  v10 = sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_113_4();
  if (OUTLINED_FUNCTION_96_1())
  {
    OUTLINED_FUNCTION_56();
    v11 = OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v12 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_78(v12);
    OUTLINED_FUNCTION_37_9(&dword_197941000, v13, v14, "Sending cancel session failed with %@");
    sub_197947A40(v11, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  v15 = *(v9 + 144);

  swift_willThrow();
  OUTLINED_FUNCTION_60_5(v15 + 24);
  os_activity_scope_leave((v15 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_24_11();
  OUTLINED_FUNCTION_117();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, v25);
}

uint64_t sub_197A3F6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  v25 = *MEMORY[0x1E69E9840];
  MEMORY[0x19A8EBBD0](*(v9 + 184));
  v10 = sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_113_4();
  if (OUTLINED_FUNCTION_96_1())
  {
    OUTLINED_FUNCTION_56();
    v11 = OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v12 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_78(v12);
    OUTLINED_FUNCTION_37_9(&dword_197941000, v13, v14, "Sending cancel session failed with %@");
    sub_197947A40(v11, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  v15 = *(v9 + 144);

  swift_willThrow();
  OUTLINED_FUNCTION_60_5(v15 + 24);
  os_activity_scope_leave((v15 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_24_11();
  OUTLINED_FUNCTION_117();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, v25);
}

uint64_t sub_197A3F818()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 176);
  OUTLINED_FUNCTION_60_5(v1 + 24);
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_23_10();

  return v2();
}

uint64_t sub_197A3F8D4()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 176);
  OUTLINED_FUNCTION_16();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_23_10();

  return v2();
}

uint64_t sub_197A3F98C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v38 = &v29 - v3;
  v29 = a1;
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A448, &qword_197A981B0);
  result = sub_197A87EE8();
  v6 = result;
  v7 = 0;
  v33 = v4;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v4 + 64;
  v11 = v9 & *(v4 + 64);
  v12 = (v8 + 63) >> 6;
  v30 = result + 64;
  v31 = result;
  if (v11)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v34 = (v11 - 1) & v11;
LABEL_10:
      v16 = v13 | (v7 << 6);
      v17 = v33;
      v37 = *(v32 + 72) * v16;
      sub_197A44A54();
      v18 = *(v17 + 56) + 48 * v16;
      v35 = *(v18 + 8);
      v19 = v35;
      v36 = 3 * v16;
      v20 = *(v18 + 16);
      v21 = *(v18 + 24);
      v22 = *(v18 + 32);
      v23 = *(v18 + 40);

      sub_19794A620(v19, v20, v21, v22);

      v6 = v31;
      *(v30 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_19794BE44();
      v24 = v35;
      v25 = *(v6 + 56) + 16 * v36;
      *v25 = 0;
      *(v25 + 8) = v24;
      *(v25 + 16) = v20;
      *(v25 + 24) = v21;
      *(v25 + 32) = v22;
      *(v25 + 40) = v23;
      v26 = *(v6 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      *(v6 + 16) = v28;
      v11 = v34;
      if (!v34)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        *v29 = v6;
        return result;
      }

      v15 = *(v10 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v34 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ModelServiceClient.setAssetsHaveUpdated(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_4_10(a1, v1);
}

uint64_t sub_197A3FC38()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6_11(v0[3]);
  OUTLINED_FUNCTION_26();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_197976F2C;
  v2 = OUTLINED_FUNCTION_5(v0[2]);

  return v3(v2);
}

uint64_t ModelServiceClient.ignoreAssetUpdates(_:)(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  return OUTLINED_FUNCTION_4_10(a1, v1);
}

uint64_t sub_197A3FD58()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6_11(*(v0 + 16));
  OUTLINED_FUNCTION_26();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_19796E1D4;
  OUTLINED_FUNCTION_53_10();

  return v4();
}

uint64_t ModelServiceClient.startMonitoringInferences(endpoint:)()
{
  OUTLINED_FUNCTION_9();
  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A3FEF0()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[14];
  type metadata accessor for _OSActivity();
  v0[15] = swift_initStackObject();
  v0[16] = sub_1979489D4("Client starting monitoring of inferences", 40, 2);
  __swift_project_boxed_opaque_existential_1((v1 + 112), *(v1 + 136));
  OUTLINED_FUNCTION_23();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_197A40068;
  v3 = OUTLINED_FUNCTION_5(v0[13]);

  return v4(v3);
}

uint64_t sub_197A40068()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 144) = v0;

  OUTLINED_FUNCTION_46_0();
  v5 = *(v4 + 112);
  if (v0)
  {
    v6 = sub_197A4024C;
  }

  else
  {
    v6 = sub_197A401B0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_197A401B0()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_16();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_23_10();

  return v2();
}

uint64_t sub_197A4024C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_60_5(v1 + 24);
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_197A402F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960E38;

  return ModelServiceClient.fetchModelInstance(session:)();
}

uint64_t sub_197A4039C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ModelServiceClient.executeRequest(session:metadata:)();
}

uint64_t sub_197A40450()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ModelServiceClient.cancelRequest(id:session:)();
}

uint64_t sub_197A4051C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ModelServiceClient.executeInputStreamRequest(session:metadata:)();
}

uint64_t sub_197A405D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ModelServiceClient.addInputToRequest(session:metadata:)();
}

uint64_t sub_197A40678()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ModelServiceClient.executePendingRequests(id:)();
}

uint64_t sub_197A40724()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ModelServiceClient.startMonitoringInferences(endpoint:)();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_197A407F0(uint64_t a1, uint64_t a2)
{
  sub_197A882F8();
  sub_197A879B8();
  sub_197A88358();
  v2 = OUTLINED_FUNCTION_99_4();

  return sub_197A409F4(v2, v3, v4);
}

unint64_t sub_197A40860(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x19A8EB590](*(v1 + 40), a1, 4);

  return sub_197A40AA8(v2, v3);
}

unint64_t sub_197A408A8()
{
  OUTLINED_FUNCTION_87_7();
  MEMORY[0x19A8EB5D0](v0);
  sub_197A88358();
  v1 = OUTLINED_FUNCTION_105();

  return sub_197960824(v1, v2);
}

unint64_t sub_197A40900()
{
  OUTLINED_FUNCTION_87_7();
  sub_197A87298();
  OUTLINED_FUNCTION_14_11();
  v2 = sub_19794A664(v0, 255, v1);
  OUTLINED_FUNCTION_145_2(v2, v3);
  type metadata accessor for RequestKey(0);
  sub_197A88338();
  sub_197A88358();
  v4 = OUTLINED_FUNCTION_105();

  return sub_197A40B08(v4, v5);
}

uint64_t sub_197A4099C()
{
  sub_197A882F8();
  MEMORY[0x19A8EB5D0](0);
  v0 = sub_197A88358();

  return sub_197A40CAC(v0);
}

unint64_t sub_197A409F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_197A88218() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_197A40AA8(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_197A40B08(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for RequestKey(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      sub_197A41564();
      if (_s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0())
      {
        v11 = *&v7[*(v5 + 20)];
        sub_197962AC8(v7, type metadata accessor for RequestKey);
        if (v11 == *(a1 + *(v5 + 20)))
        {
          return v9;
        }
      }

      else
      {
        sub_197962AC8(v7, type metadata accessor for RequestKey);
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void *sub_197A40CD8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_19798CC54(result, v5, 0);
  }

  return result;
}

uint64_t sub_197A40D50()
{
  OUTLINED_FUNCTION_128_2();
  sub_197A408A8();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_148_2();
  OUTLINED_FUNCTION_35_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A208, &unk_197A969F0);
  OUTLINED_FUNCTION_64_8(v3);

  v4 = *(*(v6 + 56) + 16 * v1);
  type metadata accessor for IPCCachedSession.CancellationHandlerHandle();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1C0, &qword_197A967F0);
  sub_19794A664(&unk_1ED880388, 255, type metadata accessor for IPCCachedSession.CancellationHandlerHandle);
  OUTLINED_FUNCTION_98_4();
  sub_197A87EC8();
  *v0 = v6;
  return v4;
}

uint64_t sub_197A40E58()
{
  OUTLINED_FUNCTION_128_2();
  sub_197A40900();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_148_2();
  OUTLINED_FUNCTION_35_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1E0, &qword_197A96990);
  OUTLINED_FUNCTION_64_8(v3);
  type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_69_7(*(v4 + 72));
  v5 = *(*(v9 + 56) + 8 * v1);
  type metadata accessor for InferenceProviderRequestStream(0);
  OUTLINED_FUNCTION_59_8();
  sub_19794A664(v6, 255, v7);
  OUTLINED_FUNCTION_76_7();
  OUTLINED_FUNCTION_129();
  sub_197A87EC8();
  *v0 = v9;
  return v5;
}

uint64_t sub_197A40F3C()
{
  OUTLINED_FUNCTION_128_2();
  sub_197A40900();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_148_2();
  OUTLINED_FUNCTION_35_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1E8, &unk_197A96998);
  OUTLINED_FUNCTION_64_8(v3);
  type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_69_7(*(v4 + 72));
  v5 = *(*(v9 + 56) + 8 * v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491C8, &unk_197A98130);
  OUTLINED_FUNCTION_59_8();
  sub_19794A664(v6, 255, v7);
  OUTLINED_FUNCTION_76_7();
  OUTLINED_FUNCTION_129();
  sub_197A87EC8();
  *v0 = v9;
  return v5;
}

uint64_t sub_197A4102C()
{
  OUTLINED_FUNCTION_128_2();
  sub_197A4099C();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_148_2();
  OUTLINED_FUNCTION_35_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1D8, &qword_197A96988);
  OUTLINED_FUNCTION_64_8(v3);
  v4 = *(*(v6 + 56) + 16 * v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A418, &qword_197A97E60);
  sub_197A41508();
  sub_197A87EC8();
  *v0 = v6;
  return v4;
}

uint64_t sub_197A410EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_197A41164(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
    sub_197A87298();
  }

  __break(1u);
  return result;
}

uint64_t sub_197A411FC(uint64_t a1)
{
  v2 = sub_197A87298();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A450, &qword_197A981B8);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v9 = MEMORY[0x1E69E7CC0];
  v38 = 0;
  v39 = MEMORY[0x1E69E7CC0];
  v10 = *(a1 + 16);
  sub_197A4214C(v10, 0);
  v37 = v9;
  result = sub_19798CC34(0, v10, 0);
  v12 = 0;
  v13 = v37;
  v14 = *(a1 + 16);
  v35 = v3;
  v36 = v14;
  v31 = a1;
  v32 = v3 + 32;
  v30 = (v3 + 8);
  while (1)
  {
    if (v36 == v12)
    {

      return v38;
    }

    if (v12 >= *(a1 + 16))
    {
      break;
    }

    sub_197A44A54();
    v15 = v35;
    v16 = *(v34 + 48);
    v17 = v2;
    (*(v35 + 32))(v5, v8, v2);
    v18 = *&v8[v16];
    v19 = v38;
    v20 = v39;
    v21 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v22 = *(v39 + 16);
    if (v38)
    {

      sub_197A41EFC(v5, v20 + v21, v22, (v19 + 16), v19 + 32);
      v24 = v23;
      v26 = v25;

      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      result = sub_197A41D7C(v5, v39 + v21, *(v39 + 16));
      if ((v27 & 1) == 0)
      {
        goto LABEL_14;
      }

      v26 = 0;
    }

    sub_197A4172C(v5, v26);
    v37 = v13;
    v29 = *(v13 + 16);
    v28 = *(v13 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_19798CC34(v28 > 1, v29 + 1, 1);
      v13 = v37;
    }

    *(v13 + 16) = v29 + 1;
    *(v13 + 8 * v29 + 32) = v18;
    v2 = v17;
    result = (*v30)(v5, v17);
    ++v12;
    a1 = v31;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_197A41508()
{
  result = qword_1ED880240;
  if (!qword_1ED880240)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RunningBoardSelfAssertionType, &type metadata for RunningBoardSelfAssertionType, v0, v1);
    atomic_store(result, &qword_1ED880240);
  }

  return result;
}

uint64_t sub_197A41564()
{
  OUTLINED_FUNCTION_71();
  v1(0);
  OUTLINED_FUNCTION_3_14();
  v2 = OUTLINED_FUNCTION_22();
  v3(v2);
  return v0;
}

uint64_t sub_197A415B8()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  v0 = type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_28(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v2[1] = sub_197960FB0;
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_112();

  return sub_197A3C3C0(v4, v5, v6, v7);
}

uint64_t sub_197A41684()
{
  v1 = type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_10(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_197A3C7B4(v7, v0 + v6, v8);
}

uint64_t sub_197A4172C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_197A87298();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = v3 + 1;
  v11 = v3[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[1] = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_19798CC54(0, *(v11 + 16) + 1, 1);
    v11 = *v10;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_19798CC54((v13 > 1), v14 + 1, 1);
    v11 = *v10;
  }

  *(v11 + 16) = v14 + 1;
  result = (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v9, v6);
  v3[1] = v11;
  v16 = *v3;
  if (!*v3)
  {
    if (v14 <= 0xE)
    {
      return result;
    }

    v17 = 0;
    goto LABEL_14;
  }

  swift_beginAccess();
  if (MEMORY[0x19A8EA600](*(v16 + 16) & 0x3FLL) <= v14)
  {
    v17 = *(v16 + 24) & 0x3FLL;
    if (v14 <= 0xE && !v17)
    {

      *v3 = 0;
      return result;
    }

LABEL_14:
    v18 = MEMORY[0x19A8EA630](v14 + 1);
    return sub_197A41AB4(v18, v17);
  }

  result = sub_197A419F4();
  if (*v3)
  {
    return sub_197A41A4C((*v3 + 16), *v3 + 32, a2, v3);
  }

  __break(1u);
  return result;
}

void *sub_197A41950(void *(*a1)(uint64_t *__return_ptr, unint64_t, void), uint64_t a2, uint64_t a3)
{
  v6 = *(sub_197A87298() - 8);
  result = a1(&v8, a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), *(a3 + 16));
  if (!v3)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_197A419F4()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v2 = sub_197A87368();

        *v0 = v2;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_197A41AB4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v4 = sub_197A41AFC(v2[1], a2, 0, v3);

  *v2 = v4;
  return result;
}

uint64_t sub_197A41AFC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x19A8EA630](v6, a2);
  v9 = 0;
  if (v8 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v10 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 5)
  {
    v9 = MEMORY[0x19A8EA640]();
    sub_197A41B74(a1, (v9 + 16), v9 + 32);
  }

  return v9;
}

uint64_t sub_197A41B74(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_197A87298();
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a1 + 16);
  if (v29)
  {
    v11 = 0;
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v26 = a1 + v12;
    v27 = v14;
    v25 = *(v13 + 56);
    v28 = v13;
    v15 = (v13 - 8);
    while (1)
    {
      v27(v10, v26 + v25 * v11, v6);
      sub_19794A664(&qword_1ED880FE0, 255, MEMORY[0x1E69695A8]);
      result = sub_197A878E8();
      v16 = 1 << *a2;
      v17 = __OFSUB__(v16, 1);
      v18 = v16 - 1;
      if (v17)
      {
        break;
      }

      v19 = v18 & result;
      v20 = sub_197A872D8();
      v22 = v21;
      v24 = v23;
      (*v15)(v10, v6);
      v30 = a2;
      v31 = a3;
      v32 = v19;
      v33 = v20;
      v34 = v22;
      v35 = v24;
      v36 = 0;
      while (v33)
      {
        sub_197A87338();
      }

      result = sub_197A87328();
      if (++v11 == v29)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_197A41D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_197A87298();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  for (i = 0; ; ++i)
  {
    if (a3 == i)
    {
      return 0;
    }

    (*(v6 + 16))(v8, a2 + *(v6 + 72) * i, v5);
    sub_19794A664(&qword_1EAF488E8, 255, MEMORY[0x1E69695A8]);
    v10 = sub_197A87918();
    (*(v6 + 8))(v8, v5);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_197A41EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v14 = a2;
  v6 = sub_197A87298();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19794A664(&qword_1ED880FE0, 255, MEMORY[0x1E69695A8]);
  result = sub_197A878E8();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_197A87308();
    v11 = v19;
    v21 = v15;
    v22 = v16;
    v23 = v17;
    v24 = v18;
    if ((v20 & 1) == 0)
    {
      do
      {
        (*(v7 + 16))(v9, v14 + *(v7 + 72) * v11, v6);
        sub_19794A664(&qword_1EAF488E8, 255, MEMORY[0x1E69695A8]);
        v12 = sub_197A87918();
        (*(v7 + 8))(v9, v6);
        if (v12)
        {
          break;
        }

        sub_197A87338();
        v15 = v21;
        v16 = v22;
        v17 = v23;
        v18 = v24;
        v11 = sub_197A87318();
      }

      while ((v13 & 1) == 0);
    }

    return v11;
  }

  return result;
}

uint64_t sub_197A4214C(uint64_t result, char a2)
{
  if (result < 0)
  {
    goto LABEL_25;
  }

  v3 = v2;
  v5 = result;
  sub_197A40CD8(result);
  v6 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v7 = *(v6 + 16) & 0x3FLL;
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x19A8EA630](v5);
  v9 = v8;
  if (a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v6 && (a2 & 1) == 0)
  {
    swift_beginAccess();
    v10 = *(v6 + 24) & 0x3FLL;
  }

  if (v7 < v9)
  {
    v11 = v9;
    return sub_197A41AB4(v11, v10);
  }

  if (v10 > v9)
  {
    v9 = v10;
  }

  v11 = MEMORY[0x19A8EA630](*(v3[1] + 16));
  if (v11 <= v9)
  {
    v11 = v9;
  }

  if (v11 < v7)
  {
    return sub_197A41AB4(v11, v10);
  }

  result = sub_197A419F4();
  v12 = *v3;
  if (!v12)
  {
    if (!v10)
    {
      return result;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  result = swift_beginAccess();
  if ((*(v12 + 24) & 0x3FLL) != v10)
  {
    *(v12 + 24) = *(v12 + 24) & 0xFFFFFFFFFFFFFFC0 | v10 & 0x3F;
  }

  return result;
}

unint64_t sub_197A42288(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    return sub_197A878A8();
  }

  __break(1u);
  return result;
}

unint64_t sub_197A422AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t *a6)
{
  v12 = sub_197A87298();
  v13 = *(v12 - 8);
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a6;
  if (a4)
  {
    if (v17)
    {
      sub_197A878A8();
      sub_197A4172C(a2, a5);
      v20 = *(a1 + 16);
      v18 = (a1 + 16);
      v19 = v20;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v18 = v20;
      if ((result & 1) == 0)
      {
        result = sub_19798CC34(0, *(v19 + 16) + 1, 1);
        v19 = *v18;
      }

      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_19798CC34(v21 > 1, v22 + 1, 1);
        v19 = *v18;
      }

      *(v19 + 16) = v22 + 1;
      *(v19 + 8 * v22 + 32) = v17;
    }
  }

  else
  {
    v23 = (a1 + 16);
    v24 = *(a1 + 16);
    if (v17)
    {
      sub_197A878A8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v23 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_19798CC34(0, *(v24 + 16) + 1, 1);
        v24 = *v23;
      }

      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_19798CC34(v26 > 1, v27 + 1, 1);
        v24 = *v23;
      }

      *(v24 + 16) = v27 + 1;
      *(v24 + 8 * v27 + 32) = v17;
      return sub_197A431B8(a3, *(*v23 + 16) - 1);
    }

    else
    {
      if (*(v24 + 16) > a3)
      {
        v28 = sub_197A426F8(a3);
        v29 = *v23;
        v30 = swift_isUniquelyReferenced_nonNull_native();
        *v23 = v29;
        if ((v30 & 1) == 0)
        {
          sub_19798CC34(0, *(v29 + 16) + 1, 1);
          v29 = *v23;
        }

        v31 = *(v29 + 16);
        v32 = *(v29 + 24);
        v33 = v31 + 1;
        if (v31 >= v32 >> 1)
        {
          v34 = v31 + 1;
          v36 = v31;
          sub_19798CC34(v32 > 1, v31 + 1, 1);
          v31 = v36;
          v33 = v34;
          v29 = *v23;
        }

        *(v29 + 16) = v33;
        *(v29 + 8 * v31 + 32) = v28;
      }

      sub_197A42558(a3, a5, v16);
      return (*(v13 + 8))(v16, v12);
    }
  }

  return result;
}

void sub_197A42558(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = v3 + 1;
  v8 = *(v3[1] + 16);
  v9 = *v4;
  if (!*v4)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

LABEL_12:
    sub_197A42770(a1, a3);
    return;
  }

  swift_beginAccess();
  if ((*(v9 + 16) & 0x3FLL) == (*(v9 + 24) & 0x3FLL))
  {
    if (!v8)
    {
      goto LABEL_13;
    }

LABEL_8:
    sub_197A419F4();
    v11 = *v4;
    if (*v4)
    {

      sub_197A42870(a2, (v11 + 16), v11 + 32, v4);
      if (__OFADD__(a1, 1))
      {
        __break(1u);
      }

      else if (a1 + 1 >= a1)
      {
        v12 = v4[1];

        sub_197A42BCC(a1, a1 + 1, v12, (v11 + 16), v11 + 32);

        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  if (v8 > MEMORY[0x19A8EA610]())
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_197A42770(a1, a3);
  if (v9)
  {
    swift_beginAccess();
    v13 = *(v9 + 24) & 0x3FLL;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*v7 + 16);
  if (v13 || v14 >= 0x10)
  {
    v15 = MEMORY[0x19A8EA630](v14);
    sub_197A41AB4(v15, v13);
  }

  else
  {

    *v4 = 0;
  }
}

uint64_t sub_197A426F8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_197A4285C(v3);
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
    v7 = v5 - 1 - a1;
    v8 = v3 + 8 * a1;
    v9 = *(v8 + 32);
    sub_197984484((v8 + 40), v7, (v8 + 32));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

void sub_197A42770(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_197A42848(v5);
  }

  v6 = v5[2];
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_197A87298();
    v8 = *(v7 - 8);
    v9 = *(v8 + 72);
    v10 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v9 * a1;
    (*(v8 + 32))(a2, v10, v7);
    sub_197A1F548(v10 + v9, v6 - 1 - a1, v10);
    v5[2] = v6 - 1;
    *v2 = v5;
  }
}

unint64_t sub_197A42870(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v7 = sub_197A87298();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_197A872D8();
  *&v25 = a2;
  *(&v25 + 1) = a3;
  *&v26 = a1;
  *(&v26 + 1) = v11;
  *&v27 = v12;
  *(&v27 + 1) = v13;
  v28 = 0;
  sub_197A87338();
  if (*(&v26 + 1))
  {
    v23[0] = a3;
    v14 = sub_197A872E8();
    v23[1] = v8 + 16;
    while (1)
    {
      v33 = v25;
      v34 = v26;
      v35 = v27;
      v36 = v28;
      result = sub_197A87318();
      if (v16)
      {
LABEL_27:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v17 = *(v24 + 8);
      if (result >= *(v17 + 16))
      {
        goto LABEL_25;
      }

      (*(v8 + 16))(v10, v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v7);
      sub_19794A664(&qword_1ED880FE0, 255, MEMORY[0x1E69695A8]);
      v18 = sub_197A878E8();
      result = (*(v8 + 8))(v10, v7);
      v19 = 1 << *a2;
      if (__OFSUB__(v19, 1))
      {
        goto LABEL_26;
      }

      v20 = (v19 - 1) & v18;
      if (a1 >= v14)
      {
        if (v20 < v14 || a1 < v20)
        {
          goto LABEL_19;
        }
      }

      else if (v20 < v14 && a1 < v20)
      {
        goto LABEL_19;
      }

      v29 = v25;
      v30 = v26;
      v31 = v27;
      v32 = v28;
      sub_197A87318();
      a1 = v30;
      sub_197A872F8();
LABEL_19:
      sub_197A87338();
      if (!*(&v26 + 1))
      {
        return sub_197A872F8();
      }
    }
  }

  return sub_197A872F8();
}

uint64_t sub_197A42BCC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_197A87298();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v63 - v16;
  v18 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v18 >= 1)
  {
    v64 = a3;
    v19 = *(a3 + 16);
    if ((v19 - v18) / 2 <= a1)
    {
      v24 = __OFSUB__(v19, a2);
      v32 = v19 - a2;
      if (v24)
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      if (v32 >= MEMORY[0x19A8EA600](*a4 & 0x3F) / 3)
      {
        v45 = sub_197A872D8();
        *&v68 = a4;
        *(&v68 + 1) = a5;
        *&v69 = 0;
        *(&v69 + 1) = v45;
        *&v70 = v46;
        *(&v70 + 1) = v47;
        v71 = 0;
        do
        {
          v72 = v68;
          v73 = v69;
          v74 = v70;
          v75 = v71;
          v48 = sub_197A87318();
          if ((v49 & 1) == 0 && v48 >= a2)
          {
            v24 = __OFSUB__(v48, v18);
            result = v48 - v18;
            if (v24)
            {
              goto LABEL_56;
            }

            sub_197A87328();
          }

          result = sub_197A87338();
        }

        while (v69);
      }

      else
      {
        result = sub_197A41164(a2, v64);
        v67 = v35;
        if (v33 != v34 >> 1)
        {
          v50 = v33;
          v63 = result;
          v64 = v34 >> 1;
          if (v33 >= (v34 >> 1))
          {
LABEL_66:
            __break(1u);
            return result;
          }

          v52 = *(v11 + 16);
          v51 = v11 + 16;
          v65 = *(v51 + 56);
          v66 = v52;
          v53 = (v51 - 8);
          while (1)
          {
            (v66)(v14, &v67[v65 * v50], v10);
            sub_19794A664(&qword_1ED880FE0, 255, MEMORY[0x1E69695A8]);
            v54 = sub_197A878E8();
            result = (*v53)(v14, v10);
            v55 = 1 << *a4;
            v24 = __OFSUB__(v55, 1);
            v56 = v55 - 1;
            if (v24)
            {
              goto LABEL_57;
            }

            v57 = v56 & v54;
            v58 = sub_197A872D8();
            *&v68 = a4;
            *(&v68 + 1) = a5;
            *&v69 = v57;
            *(&v69 + 1) = v58;
            *&v70 = v59;
            *(&v70 + 1) = v60;
            v71 = 0;
            while (*(&v69 + 1))
            {
              v72 = v68;
              v73 = v69;
              v74 = v70;
              v75 = v71;
              v61 = sub_197A87318();
              if ((v62 & 1) == 0 && v61 == a2)
              {
                break;
              }

              sub_197A87338();
            }

            result = a2 - v18;
            if (__OFSUB__(a2, v18))
            {
              goto LABEL_58;
            }

            result = sub_197A87328();
            v24 = __OFADD__(a2++, 1);
            if (v24)
            {
              goto LABEL_59;
            }

            if (++v50 == v64)
            {
              return swift_unknownObjectRelease();
            }
          }
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      result = MEMORY[0x19A8EA600](*a4 & 0x3F);
      if (result / 3 <= a1)
      {
        v36 = sub_197A872D8();
        *&v68 = a4;
        *(&v68 + 1) = a5;
        *&v69 = 0;
        *(&v69 + 1) = v36;
        *&v70 = v37;
        *(&v70 + 1) = v38;
        v71 = 0;
        do
        {
          v72 = v68;
          v73 = v69;
          v74 = v70;
          v75 = v71;
          v39 = sub_197A87318();
          if ((v40 & 1) == 0 && v39 < a1)
          {
            v24 = __OFADD__(v39, v18);
            result = v39 + v18;
            if (v24)
            {
              goto LABEL_55;
            }

            sub_197A87328();
          }

          result = sub_197A87338();
        }

        while (v69);
      }

      else
      {
        if (a1 < 0)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v19 < a1)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        result = v64;
        if (a1)
        {
          v20 = *(v11 + 16);
          v66 = (v64 + ((*(v11 + 80) + 32) & ~*(v11 + 80)));
          v67 = v20;
          v65 = *(v11 + 72);

          v21 = 0;
          while (1)
          {
            (v67)(v17, &v66[v65 * v21], v10);
            sub_19794A664(&qword_1ED880FE0, 255, MEMORY[0x1E69695A8]);
            v22 = sub_197A878E8();
            result = (*(v11 + 8))(v17, v10);
            v23 = 1 << *a4;
            v24 = __OFSUB__(v23, 1);
            v25 = v23 - 1;
            if (v24)
            {
              break;
            }

            v26 = v25 & v22;
            v27 = sub_197A872D8();
            *&v68 = a4;
            *(&v68 + 1) = a5;
            *&v69 = v26;
            *(&v69 + 1) = v27;
            *&v70 = v28;
            *(&v70 + 1) = v29;
            v71 = 0;
            while (*(&v69 + 1))
            {
              v72 = v68;
              v73 = v69;
              v74 = v70;
              v75 = v71;
              v30 = sub_197A87318();
              if ((v31 & 1) == 0 && v30 == v21)
              {
                break;
              }

              sub_197A87338();
            }

            result = v21 + v18;
            if (__OFADD__(v21, v18))
            {
              goto LABEL_54;
            }

            ++v21;
            sub_197A87328();
            if (v21 == a1)
            {

              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }

LABEL_29:
      v41 = a4[1];
      if (__OFSUB__(v41 >> 6, v18))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v42 = 1 << *a4;
      v24 = __OFSUB__(v42, 1);
      v43 = v42 - 1;
      if (v24)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v44 = (v43 & (((v41 >> 6) - v18) >> 63)) + (v41 >> 6) - v18;
      if (v44 < v43)
      {
        v43 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v44 - v43) << 6);
    }
  }

  return result;
}

unint64_t sub_197A431B8(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      if (v5 > result)
      {
        if (v5 > a2)
        {
          v7 = *(v4 + 32 + 8 * result);
          v8 = *(v4 + 32 + 8 * a2);
          sub_197A878A8();
          sub_197A878A8();
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_197A4285C(v4);
            v4 = result;
          }

          if (*(v4 + 16) > v3)
          {
            *(v4 + 32 + 8 * v3) = v8;

            if (*(v4 + 16) > a2)
            {
              *(v4 + 32 + 8 * a2) = v7;

              *v2 = v4;
              return result;
            }

LABEL_15:
            __break(1u);
            return result;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

void sub_197A43298()
{
  if (*(*v0 + 16))
  {
    if (!sub_197A445C0())
    {
      v1 = *(*v0 + 16) - 1;

      sub_197A426F8(v1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_197A432E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a3)
  {

    v10 = sub_197A41EFC(a4, a1, a2, (a3 + 16), a3 + 32);
    v12 = v11;
    v14 = v13;
  }

  else
  {
    result = sub_197A41D7C(a4, a1, a2);
    v10 = result;
    v12 = v16;
    v14 = 0;
  }

  *a5 = v10;
  *(a5 + 8) = v12 & 1;
  *(a5 + 16) = v14;
  return result;
}

void sub_197A433FC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_101_2();
  if (v6 != v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v4;
  v9 = a2 - v4;
  if (__OFSUB__(a2, v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v4 - a2;
  if (__OFSUB__(0, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v5, v10))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_197A410EC(v5 - v9, 1, sub_197A1EEBC);
  v11 = *v2;
  v12 = *v2 + 32;
  v13 = (v12 + 40 * v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1B8, qword_197A967D0);
  OUTLINED_FUNCTION_99_4();
  swift_arrayDestroy();
  if (!v9)
  {
LABEL_10:
    *v2 = v11;
    return;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  sub_197A1F648((v12 + 40 * a2), v14 - a2, v13);
  v15 = *(v11 + 16);
  v7 = __OFADD__(v15, v10);
  v16 = v15 - v9;
  if (!v7)
  {
    *(v11 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_197A434F4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_101_2();
  if (v6 != v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v4;
  v9 = a2 - v4;
  if (__OFSUB__(a2, v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v4 - a2;
  if (__OFSUB__(0, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v5, v10))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_197A410EC(v5 - v9, 1, sub_197A1EFEC);
  v11 = *v2;
  v12 = *v2 + 32;
  v13 = (v12 + 8 * v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1A8, &qword_197A981C0);
  OUTLINED_FUNCTION_99_4();
  swift_arrayDestroy();
  if (!v9)
  {
LABEL_10:
    *v2 = v11;
    return;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  sub_197A21910((v12 + 8 * a2), v14 - a2, v13);
  v15 = *(v11 + 16);
  v7 = __OFADD__(v15, v10);
  v16 = v15 - v9;
  if (!v7)
  {
    *(v11 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_197A435E4()
{
  OUTLINED_FUNCTION_67();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v1;
  OUTLINED_FUNCTION_101_2();
  if (v9 != v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v4;
  v12 = v3 - v4;
  if (__OFSUB__(v3, v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v4 - v3;
  if (__OFSUB__(0, v12))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v8, v13))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v7;
  v15 = v6;
  sub_197A410EC(v8 - v12, 1, v5);
  v16 = *v0;
  v17 = *(v15(0) - 8);
  v18 = v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v19 = *(v17 + 72);
  v20 = v18 + v19 * v11;
  swift_arrayDestroy();
  if (!v12)
  {
LABEL_10:
    *v0 = v16;
    OUTLINED_FUNCTION_66();
    return;
  }

  v21 = *(v16 + 16);
  if (__OFSUB__(v21, v3))
  {
    goto LABEL_16;
  }

  v14(v18 + v19 * v3, v21 - v3, v20);
  v22 = *(v16 + 16);
  v10 = __OFADD__(v22, v13);
  v23 = v22 - v12;
  if (!v10)
  {
    *(v16 + 16) = v23;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t dispatch thunk of ModelServiceClientProtocol.establishment(of:)()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_37_0(v0, v1, v2);
  OUTLINED_FUNCTION_23();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_10_0(v4);
  OUTLINED_FUNCTION_261();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of ModelServiceClientProtocol.deleteSessionRequest(id:)()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_37_0(v0, v1, v2);
  OUTLINED_FUNCTION_23();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_10_0(v4);
  OUTLINED_FUNCTION_261();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of ModelServiceClientProtocol.cancelSessionRequest(session:)()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_37_0(v0, v1, v2);
  OUTLINED_FUNCTION_23();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_10_0(v4);
  OUTLINED_FUNCTION_261();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of ModelServiceClientProtocol.prewarmSession(session:metadata:)()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_115(v0, v1, v2, v3);
  OUTLINED_FUNCTION_26();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_43(v5);
  OUTLINED_FUNCTION_22_5();

  return v7();
}

uint64_t dispatch thunk of ModelServiceClientProtocol.fetchModelInstance(session:)()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_115(v0, v1, v2, v3);
  OUTLINED_FUNCTION_26();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  *v5 = v6;
  v5[1] = sub_197960FB0;
  OUTLINED_FUNCTION_22_5();

  return v7();
}

uint64_t dispatch thunk of ModelServiceClientProtocol.executeRequest(session:metadata:)()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  v18 = OUTLINED_FUNCTION_10_3(v0, v1, v2, v3, v4) + 48;
  OUTLINED_FUNCTION_23();
  v19 = v5 + *v5;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_8_0(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_220(v7);
  OUTLINED_FUNCTION_117();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19);
}

uint64_t dispatch thunk of ModelServiceClientProtocol.cancelRequest(id:session:)()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_115(v0, v1, v2, v3);
  OUTLINED_FUNCTION_26();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_43(v5);
  OUTLINED_FUNCTION_22_5();

  return v7();
}

uint64_t dispatch thunk of ModelServiceClientProtocol.executeInputStreamRequest(session:metadata:)()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  v18 = OUTLINED_FUNCTION_10_3(v0, v1, v2, v3, v4) + 72;
  OUTLINED_FUNCTION_23();
  v19 = v5 + *v5;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_8_0(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_220(v7);
  OUTLINED_FUNCTION_117();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19);
}

uint64_t dispatch thunk of ModelServiceClientProtocol.addInputToRequest(session:metadata:)()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_115(v0, v1, v2, v3);
  OUTLINED_FUNCTION_26();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_43(v5);
  OUTLINED_FUNCTION_22_5();

  return v7();
}

uint64_t dispatch thunk of ModelServiceClientProtocol.executePendingRequests(id:)()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_115(v0, v1, v2, v3);
  OUTLINED_FUNCTION_26();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  *v5 = v6;
  v5[1] = sub_197960FB0;
  OUTLINED_FUNCTION_22_5();

  return v7();
}

uint64_t dispatch thunk of ModelServiceClientProtocol.startMonitoringInferences(endpoint:)()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_37_0(v0, v1, v2);
  OUTLINED_FUNCTION_23();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_10_0(v4);
  OUTLINED_FUNCTION_261();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t get_enum_tag_for_layout_string_20ModelManagerServices27InferenceProviderDescriptorVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_197A44240(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_197A44294(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_197A4434C(uint64_t a1)
{
  sub_1979728D4(319);
  if (v1 <= 0x3F)
  {
    sub_197A44570(319, &qword_1ED880FB0, type metadata accessor for ClientData);
    if (v2 <= 0x3F)
    {
      type metadata accessor for InferenceProviderXPCSender();
      if (v3 <= 0x3F)
      {
        sub_197A44424(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_197A44424(uint64_t a1)
{
  if (!qword_1ED87D758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF4A440, &qword_197A98100);
    v1 = sub_197A87DB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED87D758);
    }
  }
}

void sub_197A444B0(uint64_t a1)
{
  type metadata accessor for RequestMetadata(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for InferenceProviderRequestResult(319);
    if (v2 <= 0x3F)
    {
      sub_197A44570(319, &qword_1ED87FD90, type metadata accessor for RunningBoardSelfAssertionToken);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_197A44570(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_133_0();
    v4 = sub_197A87DB8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_197A445C0()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_197A4285C(v1);
    v1 = result;
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3 - 1;
    result = *(v1 + 8 * v4 + 32);
    *(v1 + 16) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_197A44618(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v12[3] = sub_197A876C8();
  v12[4] = &protocol witness table for XPCSession;
  v12[0] = a1;
  swift_defaultActor_initialize();
  v7 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  sub_197947C44(v12, v11);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_197945EF8(v11, v8 + 32);
  v9 = sub_1979CC2F8();
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  *(a2 + 112) = v9;
  return a2;
}

uint64_t sub_197A4474C()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_28(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_8_0(v8);
  *v9 = v10;
  v9[1] = sub_197960FB0;

  return sub_197A38D84(v4, v2, v0 + v7);
}

uint64_t sub_197A44820()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_43(v3);

  return sub_197A39350(v1);
}

uint64_t sub_197A448A8()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  v1[1] = sub_197960FB0;
  OUTLINED_FUNCTION_81();

  return sub_197A38CF4();
}

uint64_t sub_197A44944()
{
  OUTLINED_FUNCTION_49_0();
  v1 = type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_10(v1);
  v4 = *(v0 + 32);
  v5 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_8_0(v6);
  *v7 = v8;
  v7[1] = sub_197960E38;
  v9 = OUTLINED_FUNCTION_81();

  return sub_197A3C988(v9, v10, v11, v4, v12, v5);
}

uint64_t sub_197A44A54()
{
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3_14();
  v3 = OUTLINED_FUNCTION_22();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_116_4()
{

  return sub_197A87298();
}

uint64_t OUTLINED_FUNCTION_145_2(uint64_t a1, uint64_t a2, ...)
{

  return sub_197A878F8();
}

void sub_197A44B2C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[12];
  v11 = v0[15];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[7];

  sub_19795EB50(v1, v8, v7, v6, v5, v4, v3);
  (*(v2 + 8))(v1, v11);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_142();

  __asm { BRAA            X1, X16 }
}

uint64_t IPCSession.sendWithTaskCancellation<A>(_:)()
{
  OUTLINED_FUNCTION_9();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v1[5] = v7;
  v8 = type metadata accessor for TaskCancellableMessage(0, v6, v4, v2);
  v1[12] = v8;
  v1[13] = *(v8 - 8);
  v1[14] = swift_task_alloc();
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_197A44CD8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[7];
  v20 = v0[14];
  v5 = v0[9];
  v6 = v0[10];
  static TaskCancellableMessage.wrapMessage(_:)(v0[5], v4, v5, v6, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF4A2C8, &unk_197A974C0);
  inited = swift_initStackObject();
  v0[15] = inited;
  *(inited + 20) = 0;
  *(inited + 16) = 0;
  v8 = swift_task_alloc();
  v0[16] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v2;
  v8[5] = v5;
  v8[6] = v6;
  v8[7] = inited;
  v8[8] = v20;
  v8[9] = v1;
  v9 = swift_task_alloc();
  v0[17] = v9;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v2;
  v9[5] = v5;
  v9[6] = v6;
  v9[7] = inited;
  v9[8] = v1;
  v9[9] = v20;
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_197A44E6C;
  OUTLINED_FUNCTION_142();

  return MEMORY[0x1EEE6DE18](v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_197A44E6C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_197A44F74()
{
  OUTLINED_FUNCTION_9();
  (*(v0[13] + 8))(v0[14], v0[12]);

  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t sub_197A44FEC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_197A45084()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1ED880470);
  __swift_project_value_buffer(v0, qword_1ED880470);
  return sub_197A875F8();
}

uint64_t sub_197A450F4()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_197A45150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a4;
  v27 = a2;
  v29 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for TaskCancellableMessage(0, a3, a5, a6);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  type metadata accessor for _OSActivity();
  swift_initStackObject();
  v14 = sub_1979489D4("XPC message with reply cancelled", 32, 2);
  if (qword_1ED880278 != -1)
  {
    swift_once();
  }

  v15 = sub_197A87608();
  __swift_project_value_buffer(v15, qword_1ED880470);
  (*(v8 + 16))(v13, a1, v7);
  v16 = sub_197A875E8();
  v17 = sub_197A87D48();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v26 = a1;
    v19 = v18;
    *v18 = 134217984;
    v20 = sub_1979BA440(v7);
    v21 = *(v8 + 8);
    v21(v13, v7);
    *(v19 + 1) = v20;
    _os_log_impl(&dword_197941000, v16, v17, "Task for message %llu cancelled, sending cancellation message.", v19, 0xCu);
    MEMORY[0x19A8EBE00](v19, -1, -1);
  }

  else
  {
    v21 = *(v8 + 8);
    v21(v13, v7);
  }

  sub_1979BA2E4(v7, v11);
  v22 = v28;
  v23 = *(v28 + 32);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TaskCancellableMessage<A>, v7);
  v23(v11, v7, WitnessTable, v27, v22);
  v21(v11, v7);
  swift_beginAccess();
  os_activity_scope_leave((v14 + 24));
  swift_endAccess();
}

void sub_197A4547C(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 5);
  sub_197A45A78(&a1[4]);
  os_unfair_lock_unlock(a1 + 5);
}

uint64_t sub_197A4551C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_197A45554, 0, 0);
}

uint64_t sub_197A45554()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = *(v0 + 64);
  v5 = *(v0 + 32);
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  *(v3 + 56) = v5;
  os_unfair_lock_lock((v2 + 20));
  sub_197A45A50((v2 + 16));
  os_unfair_lock_unlock((v2 + 20));

  OUTLINED_FUNCTION_13();

  return v6();
}

uint64_t sub_197A4561C()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_197960FB0;
  v3 = OUTLINED_FUNCTION_0_22();

  return sub_197A4551C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_197A456E4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a4;
  v8 = a8;
  v9 = a7;
  v37 = a6;
  v33 = a5;
  v34 = a1;
  v12 = type metadata accessor for TaskCancellableMessage(0, a5, a7, a8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  if (qword_1ED880278 != -1)
  {
    swift_once();
  }

  v16 = sub_197A87608();
  __swift_project_value_buffer(v16, qword_1ED880470);
  v17 = *(v13 + 16);
  v38 = a2;
  v17(v15, a2, v12);
  v18 = sub_197A875E8();
  v19 = sub_197A87D48();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v32 = a3;
    v21 = v9;
    v22 = v8;
    v23 = v20;
    *v20 = 134217984;
    v24 = sub_1979BA440(v12);
    (*(v13 + 8))(v15, v12);
    *(v23 + 1) = v24;
    _os_log_impl(&dword_197941000, v18, v19, "Sending message %llu.", v23, 0xCu);
    v25 = v23;
    v8 = v22;
    v9 = v21;
    MEMORY[0x19A8EBE00](v25, -1, -1);
  }

  else
  {
    (*(v13 + 8))(v15, v12);
  }

  v26 = v37;
  v27 = *(v37 + 32);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TaskCancellableMessage<A>, v12);
  v29 = v35;
  v30 = v36;
  result = v27(v38, v12, WitnessTable, v36, v26);
  if (!v29)
  {
    *v34 = 1;
    result = sub_197A87C68();
    if (result)
    {
      return sub_197A45150(v38, v30, v33, v26, v9, v8);
    }
  }

  return result;
}

void sub_197A45994(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 5);
  sub_197A45A08(&a1[4]);
  os_unfair_lock_unlock(a1 + 5);
}

_BYTE *sub_197A45A08(_BYTE *result)
{
  if (*result == 1)
  {
    return sub_197A45150(v1[8], v1[2], v1[3], v1[4], v1[5], v1[6]);
  }

  return result;
}

_BYTE *sub_197A45A78(_BYTE *result)
{
  if (*result == 1)
  {
    return sub_197A45150(v1[10], v1[2], v1[3], v1[5], v1[6], v1[7]);
  }

  return result;
}

uint64_t sub_197A45AC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelManagerError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_197A45BA0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_15(*(v0 + 16));
  OUTLINED_FUNCTION_26();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_197A36874;
  v2 = OUTLINED_FUNCTION_7_10();

  return v3(v2);
}

uint64_t sub_197A45CB0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_15(*(v0 + 16));
  OUTLINED_FUNCTION_26();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_197A4849C;
  v2 = OUTLINED_FUNCTION_7_10();

  return v3(v2);
}

uint64_t Query.totalLoadedAssetMemoryCost.getter()
{
  OUTLINED_FUNCTION_9();
  v1[2] = v0;
  type metadata accessor for AssetInfo(0);
  OUTLINED_FUNCTION_23();
  v1[3] = v2;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A45E60, 0, 0);
}

uint64_t sub_197A45E60()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_15(*(v0 + 16));
  OUTLINED_FUNCTION_26();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_197A45F5C;
  v2 = OUTLINED_FUNCTION_7_10();

  return v3(v2);
}

uint64_t sub_197A45F5C()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 48) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_197A460A4, 0, 0);
  }
}

uint64_t sub_197A460A4()
{
  v1 = v0[6];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[3];
    v5 = v0[4];
    v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = *(v4 + 72);
    while (1)
    {
      v8 = v0[4];
      sub_197A46194(v6, v8);
      v9 = *(v5 + 32);
      result = sub_197A461F8(v8);
      v11 = __CFADD__(v3, v9);
      v3 += v9;
      if (v11)
      {
        break;
      }

      v6 += v7;
      if (!--v2)
      {

        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {

    v3 = 0;
LABEL_7:

    v12 = v0[1];

    return v12(v3);
  }

  return result;
}

uint64_t sub_197A46194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_197A461F8(uint64_t a1)
{
  v2 = type metadata accessor for AssetInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Query.totalDynamicAssetMemoryCost.getter()
{
  OUTLINED_FUNCTION_9();
  v1[2] = v0;
  type metadata accessor for AssetInfo(0);
  OUTLINED_FUNCTION_23();
  v1[3] = v2;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A46308, 0, 0);
}

uint64_t sub_197A46308()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_15(*(v0 + 16));
  OUTLINED_FUNCTION_26();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_197A46404;
  v2 = OUTLINED_FUNCTION_7_10();

  return v3(v2);
}

uint64_t sub_197A46404()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 48) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_197A48498, 0, 0);
  }
}

uint64_t Query.effectivePolicy.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_2();
}

uint64_t sub_197A46560()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_15(*(v0 + 24));
  OUTLINED_FUNCTION_26();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_19796D708;
  OUTLINED_FUNCTION_8_11();

  return v3();
}

uint64_t Query.policy(named:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_2();
}

uint64_t sub_197A46678()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_15(*(v0 + 40));
  OUTLINED_FUNCTION_26();
  v6 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 48) = v2;
  *v2 = v3;
  v2[1] = sub_1979DB0F0;
  v4 = OUTLINED_FUNCTION_185();

  return v6(v4);
}

uint64_t Query.disabledUseCases()()
{
  OUTLINED_FUNCTION_9();
  *(v1 + 104) = v0;

  return MEMORY[0x1EEE6DFA0](sub_197A46810, 0, 0);
}

uint64_t sub_197A46810()
{
  v1 = v0[13];
  type metadata accessor for _OSActivity();
  v0[14] = swift_initStackObject();
  v0[15] = sub_1979489D4("Fetching disabled use cases", 27, 2);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_23();
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_197A46988;
  v3 = OUTLINED_FUNCTION_7_10();

  return v4(v3);
}

uint64_t sub_197A46988(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_12();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 136) = v1;

  if (v1)
  {
    v8 = sub_197A46B84;
  }

  else
  {
    *(v4 + 144) = a1;
    v8 = sub_197A46ACC;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_197A46ACC()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[15];
  swift_beginAccess();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  v2 = v0[1];
  v3 = v0[18];

  return v2(v3);
}

uint64_t sub_197A46B84()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 120);
  swift_beginAccess();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_197A46C48()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_15(*(v0 + 16));
  OUTLINED_FUNCTION_26();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_13_7(v1);
  *v2 = v3;
  v2[1] = sub_197A46D44;
  OUTLINED_FUNCTION_8_11();

  return v4();
}

uint64_t sub_197A46D44()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {
    v7 = sub_197A46E5C;
  }

  else
  {
    v7 = sub_197A46E44;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_197A46E5C()
{
  OUTLINED_FUNCTION_9();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t Query.remoteAvailability.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_2();
}

uint64_t sub_197A46ED4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_15(*(v0 + 24));
  OUTLINED_FUNCTION_26();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_197A46FD4;
  OUTLINED_FUNCTION_8_11();

  return v3();
}

uint64_t sub_197A46FD4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_197A470F0, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v7();
  }
}

uint64_t sub_197A470F0()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 16);

  *v1 = 0;
  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_197A47168()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_15(*(v0 + 16));
  OUTLINED_FUNCTION_26();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_13_7(v1);
  *v2 = v3;
  v2[1] = sub_197A47264;
  OUTLINED_FUNCTION_8_11();

  return v4();
}

uint64_t sub_197A47264()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {
    v7 = sub_197A48494;
  }

  else
  {
    v7 = sub_197A47364;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_197A4738C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_15(*(v0 + 16));
  OUTLINED_FUNCTION_26();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_13_7(v1);
  *v2 = v3;
  v2[1] = sub_197A47488;
  OUTLINED_FUNCTION_8_11();

  return v4();
}

uint64_t sub_197A47488()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {
    v7 = sub_197A48494;
  }

  else
  {
    v7 = sub_197A47588;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_197A475B0()
{
  OUTLINED_FUNCTION_9();
  if (qword_1ED880698 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1ED880698);
  }

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v1[1] = sub_1979DE4A4;

  return ModelXPCSender.fetchAllAssetInfo()();
}

uint64_t sub_197A47674()
{
  OUTLINED_FUNCTION_9();
  if (qword_1ED880698 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1ED880698);
  }

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v1[1] = sub_197A05FA4;

  return ModelXPCSender.fetchDynamicAssetInfo()();
}

uint64_t sub_197A47738()
{
  OUTLINED_FUNCTION_9();
  if (qword_1ED880698 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1ED880698);
  }

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_7(v0);
  *v1 = v2;
  v1[1] = sub_19796E2B4;
  OUTLINED_FUNCTION_185();

  return ModelXPCSender.fetchEffectivePolicy()();
}

uint64_t Query.LiveDaemonInterface.fetchPolicy(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_2();
}

uint64_t sub_197A47800()
{
  OUTLINED_FUNCTION_9();
  if (qword_1ED880698 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1ED880698);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 40) = v1;
  *v1 = v2;
  v1[1] = sub_197963740;
  OUTLINED_FUNCTION_185();

  return ModelXPCSender.fetchPolicy(_:)();
}

uint64_t sub_197A478CC()
{
  OUTLINED_FUNCTION_9();
  if (qword_1ED880698 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1ED880698);
  }

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v1[1] = sub_197A05FA4;

  return ModelXPCSender.fetchDisabledUseCases()();
}

uint64_t sub_197A47990()
{
  OUTLINED_FUNCTION_9();
  if (qword_1ED880698 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1ED880698);
  }

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_7(v0);
  *v1 = v2;
  v1[1] = sub_19796E1D4;
  OUTLINED_FUNCTION_185();

  return ModelXPCSender.fetchAvailability()();
}

uint64_t sub_197A47A44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197A05FA4;

  return Query.LiveDaemonInterface.fetchAllAssetInfo()();
}

uint64_t sub_197A47AD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197A05FA4;

  return Query.LiveDaemonInterface.fetchDynamicAssetInfo()();
}

uint64_t sub_197A47B5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return Query.LiveDaemonInterface.fetchEffectivePolicy()(a1);
}

uint64_t sub_197A47BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_197960E38;

  return Query.LiveDaemonInterface.fetchPolicy(_:)(a1, a2, a3);
}

uint64_t sub_197A47CA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197A05FA4;

  return Query.LiveDaemonInterface.fetchDisabledUseCases()();
}

uint64_t sub_197A47D30(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return Query.LiveDaemonInterface.fetchAvailability()(a1);
}

uint64_t dispatch thunk of QueryDaemonInterface.fetchAllAssetInfo()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_249(v0, v1);
  OUTLINED_FUNCTION_26();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_14_12(v3);

  return v6(v5);
}

uint64_t dispatch thunk of QueryDaemonInterface.fetchDynamicAssetInfo()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_249(v0, v1);
  OUTLINED_FUNCTION_26();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_14_12(v3);

  return v6(v5);
}

uint64_t dispatch thunk of QueryDaemonInterface.fetchEffectivePolicy()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_37_0(v1, v2, v3);
  OUTLINED_FUNCTION_23();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_19_13(v4);

  return v7(v6);
}

uint64_t dispatch thunk of QueryDaemonInterface.fetchPolicy(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_23();
  v15 = (v11 + *v11);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v5 + 16) = v12;
  *v12 = v13;
  v12[1] = sub_197960E38;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of QueryDaemonInterface.fetchDisabledUseCases()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_249(v0, v1);
  OUTLINED_FUNCTION_26();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_14_12(v3);

  return v6(v5);
}

uint64_t dispatch thunk of QueryDaemonInterface.fetchAvailability()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_37_0(v1, v2, v3);
  OUTLINED_FUNCTION_23();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_19_13(v4);

  return v7(v6);
}

_BYTE *storeEnumTagSinglePayload for Query.LiveDaemonInterface(_BYTE *result, int a2, int a3)
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

void _s20ModelManagerServices9IPCResultO3getxyq_YKF()
{
  OUTLINED_FUNCTION_169();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 24);
  OUTLINED_FUNCTION_34_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  (*(v17 + 16))(v15 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v12, v16, v6);
    (*(v8 + 16))(v1, v12, v6);
    OUTLINED_FUNCTION_61();
    swift_willThrowTypedImpl();
    v18 = OUTLINED_FUNCTION_170_0();
    v19(v18);
  }

  else
  {
    (*(*(*(v3 + 16) - 8) + 32))(v5, v16);
  }

  OUTLINED_FUNCTION_168();
}

uint64_t sub_197A4869C@<X0>(char a1@<W0>, void (*a3)(void)@<X2>, _BYTE *a4@<X8>)
{
  *a4 = a1;
  a3(0);
  OUTLINED_FUNCTION_37_10();
  return sub_197A49444();
}

uint64_t ModelXPCRequest.CancelRequest.init(id:sessionID:)()
{
  sub_19794B118();
  type metadata accessor for ModelXPCRequest.CancelRequest(0);
  return sub_19794B118();
}

uint64_t ModelXPCRequest.PrewarmSession.init(sessionID:metadata:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_19794B118();
  result = type metadata accessor for ModelXPCRequest.PrewarmSession(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

ModelManagerServices::ModelXPCRequest::LoadAssetBundle __swiftcall ModelXPCRequest.LoadAssetBundle.init(assetBundleIdentifier:dynamicMode:)(ModelManagerServices::ModelXPCRequest::LoadAssetBundle assetBundleIdentifier, Swift::Bool dynamicMode)
{
  *v2 = assetBundleIdentifier.assetBundleIdentifier;
  *(v2 + 16) = dynamicMode;
  assetBundleIdentifier.dynamicMode = dynamicMode;
  return assetBundleIdentifier;
}

uint64_t sub_197A48804(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_147_3(12383, 0xE200000000000000, a1);
    OUTLINED_FUNCTION_157_1();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_197A48864(uint64_t a1)
{
  v2 = sub_197A49E20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A488A0(uint64_t a1)
{
  v2 = sub_197A49E20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A488DC(uint64_t a1)
{
  v2 = sub_197A49E74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48918(uint64_t a1)
{
  v2 = sub_197A49E74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48954(uint64_t a1)
{
  v2 = sub_197966C38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48990(uint64_t a1)
{
  v2 = sub_197966C38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A489CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_197A487FC();
  *a1 = result;
  return result;
}

uint64_t sub_197A489F4(uint64_t a1)
{
  v2 = sub_197951CA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48A30(uint64_t a1)
{
  v2 = sub_197951CA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48A6C(uint64_t a1)
{
  v2 = sub_1979512B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48AA8(uint64_t a1)
{
  v2 = sub_1979512B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48AE4(uint64_t a1)
{
  v2 = sub_197966494();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48B20(uint64_t a1)
{
  v2 = sub_197966494();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48B5C(uint64_t a1)
{
  v2 = sub_197A49694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48B98(uint64_t a1)
{
  v2 = sub_197A49694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48BD4(uint64_t a1)
{
  v2 = sub_197A49EC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48C10(uint64_t a1)
{
  v2 = sub_197A49EC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48C4C(uint64_t a1)
{
  v2 = sub_197A49F1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48C88(uint64_t a1)
{
  v2 = sub_197A49F1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48CC4(uint64_t a1)
{
  v2 = sub_197A49D24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48D00(uint64_t a1)
{
  v2 = sub_197A49D24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48D3C(uint64_t a1)
{
  v2 = sub_197A49BD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48D78(uint64_t a1)
{
  v2 = sub_197A49BD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48DB4(uint64_t a1)
{
  v2 = sub_197A49934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48DF0(uint64_t a1)
{
  v2 = sub_197A49934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48E2C(uint64_t a1)
{
  v2 = sub_197A499DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48E68(uint64_t a1)
{
  v2 = sub_197A499DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48EA4(uint64_t a1)
{
  v2 = sub_197A49B2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48EE0(uint64_t a1)
{
  v2 = sub_197A49B2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48F1C(uint64_t a1)
{
  v2 = sub_197A49640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48F58(uint64_t a1)
{
  v2 = sub_197A49640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A48F94(uint64_t a1)
{
  v2 = sub_197A49A84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A48FD0(uint64_t a1)
{
  v2 = sub_197A49A84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4900C(uint64_t a1)
{
  v2 = sub_197A4973C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A49048(uint64_t a1)
{
  v2 = sub_197A4973C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A49084(uint64_t a1)
{
  v2 = sub_197A497E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A490C0(uint64_t a1)
{
  v2 = sub_197A497E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A490FC(uint64_t a1)
{
  v2 = sub_197A494F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A49138(uint64_t a1)
{
  v2 = sub_197A494F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A49174(uint64_t a1)
{
  v2 = sub_197A4988C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A491B0(uint64_t a1)
{
  v2 = sub_197A4988C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A491EC(uint64_t a1)
{
  v2 = sub_197964AD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A49228(uint64_t a1)
{
  v2 = sub_197964AD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A49264(uint64_t a1)
{
  v2 = sub_197A49DCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A492A0(uint64_t a1)
{
  v2 = sub_197A49DCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A492DC(uint64_t a1)
{
  v2 = sub_197A49C7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A49318(uint64_t a1)
{
  v2 = sub_197A49C7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A49354(uint64_t a1)
{
  v2 = sub_197A49598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A49390(uint64_t a1)
{
  v2 = sub_197A49598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A493CC(uint64_t a1)
{
  v2 = sub_197A4949C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A49408(uint64_t a1)
{
  v2 = sub_197A4949C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A49444()
{
  OUTLINED_FUNCTION_71();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_22();
  v3(v2);
  return v0;
}

unint64_t sub_197A4949C()
{
  result = qword_1ED87D1B0;
  if (!qword_1ED87D1B0)
  {
    result = swift_getWitnessTable(byte_197A9E5FC, &type metadata for ModelXPCRequest.StartMonitoringInferencesCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D1B0);
  }

  return result;
}

unint64_t sub_197A494F0()
{
  result = qword_1EAF4A520;
  if (!qword_1EAF4A520)
  {
    result = swift_getWitnessTable(asc_197A9E5AC, &type metadata for ModelXPCRequest.IgnoreAssetUpdatesCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A520);
  }

  return result;
}

unint64_t sub_197A49544()
{
  result = qword_1EAF4A528;
  if (!qword_1EAF4A528)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModelXPCRequest.IgnoreAssetUpdates, &type metadata for ModelXPCRequest.IgnoreAssetUpdates, v0, v1);
    atomic_store(result, &qword_1EAF4A528);
  }

  return result;
}

unint64_t sub_197A49598()
{
  result = qword_1EAF4A530;
  if (!qword_1EAF4A530)
  {
    result = swift_getWitnessTable(asc_197A9E55C, &type metadata for ModelXPCRequest.SetAssetsHaveUpdatedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A530);
  }

  return result;
}

unint64_t sub_197A495EC()
{
  result = qword_1EAF4A538;
  if (!qword_1EAF4A538)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModelXPCRequest.SetAssetsHaveUpdated, &type metadata for ModelXPCRequest.SetAssetsHaveUpdated, v0, v1);
    atomic_store(result, &qword_1EAF4A538);
  }

  return result;
}

unint64_t sub_197A49640()
{
  result = qword_1EAF4A540;
  if (!qword_1EAF4A540)
  {
    result = swift_getWitnessTable(byte_197A9E50C, &type metadata for ModelXPCRequest.FetchModelInstanceCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A540);
  }

  return result;
}

unint64_t sub_197A49694()
{
  result = qword_1EAF48850;
  if (!qword_1EAF48850)
  {
    result = swift_getWitnessTable(byte_197A9E4BC, &type metadata for ModelXPCRequest.DumpStateCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48850);
  }

  return result;
}

unint64_t sub_197A496E8()
{
  result = qword_1EAF48738;
  if (!qword_1EAF48738)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModelXPCRequest.DumpState, &type metadata for ModelXPCRequest.DumpState, v0, v1);
    atomic_store(result, &qword_1EAF48738);
  }

  return result;
}

unint64_t sub_197A4973C()
{
  result = qword_1ED87D1B8;
  if (!qword_1ED87D1B8)
  {
    result = swift_getWitnessTable(aM, &type metadata for ModelXPCRequest.ForceAssetVersionSwitchCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D1B8);
  }

  return result;
}

unint64_t sub_197A49790()
{
  result = qword_1ED87D270;
  if (!qword_1ED87D270)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModelXPCRequest.ForceAssetVersionSwitch, &type metadata for ModelXPCRequest.ForceAssetVersionSwitch, v0, v1);
    atomic_store(result, &qword_1ED87D270);
  }

  return result;
}

unint64_t sub_197A497E4()
{
  result = qword_1EAF4A550;
  if (!qword_1EAF4A550)
  {
    result = swift_getWitnessTable(byte_197A9E41C, &type metadata for ModelXPCRequest.HoldAssetBundleCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A550);
  }

  return result;
}

unint64_t sub_197A49838()
{
  result = qword_1EAF4A558;
  if (!qword_1EAF4A558)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModelXPCRequest.HoldAssetBundle, &type metadata for ModelXPCRequest.HoldAssetBundle, v0, v1);
    atomic_store(result, &qword_1EAF4A558);
  }

  return result;
}

unint64_t sub_197A4988C()
{
  result = qword_1EAF4A560;
  if (!qword_1EAF4A560)
  {
    result = swift_getWitnessTable(byte_197A9E3CC, &type metadata for ModelXPCRequest.LoadAssetBundleCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A560);
  }

  return result;
}

unint64_t sub_197A498E0()
{
  result = qword_1EAF4A568;
  if (!qword_1EAF4A568)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModelXPCRequest.LoadAssetBundle, &type metadata for ModelXPCRequest.LoadAssetBundle, v0, v1);
    atomic_store(result, &qword_1EAF4A568);
  }

  return result;
}

unint64_t sub_197A49934()
{
  result = qword_1ED87D1F8;
  if (!qword_1ED87D1F8)
  {
    result = swift_getWitnessTable(asc_197A9E37C, &type metadata for ModelXPCRequest.FetchAvailabilityCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D1F8);
  }

  return result;
}

unint64_t sub_197A49988()
{
  result = qword_1ED87D230;
  if (!qword_1ED87D230)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModelXPCRequest.FetchAvailabilityRequest, &type metadata for ModelXPCRequest.FetchAvailabilityRequest, v0, v1);
    atomic_store(result, &qword_1ED87D230);
  }

  return result;
}

unint64_t sub_197A499DC()
{
  result = qword_1ED87D1C0;
  if (!qword_1ED87D1C0)
  {
    result = swift_getWitnessTable(byte_197A9E32C, &type metadata for ModelXPCRequest.FetchDisabledUseCasesCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D1C0);
  }

  return result;
}

unint64_t sub_197A49A30()
{
  result = qword_1ED87D1C8;
  if (!qword_1ED87D1C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModelXPCRequest.FetchDisabledUseCasesRequest, &type metadata for ModelXPCRequest.FetchDisabledUseCasesRequest, v0, v1);
    atomic_store(result, &qword_1ED87D1C8);
  }

  return result;
}

unint64_t sub_197A49A84()
{
  result = qword_1EAF4A570;
  if (!qword_1EAF4A570)
  {
    result = swift_getWitnessTable(aW_1, &type metadata for ModelXPCRequest.FetchPolicyCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A570);
  }

  return result;
}

unint64_t sub_197A49AD8()
{
  result = qword_1EAF4A578;
  if (!qword_1EAF4A578)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModelXPCRequest.FetchPolicyRequest, &type metadata for ModelXPCRequest.FetchPolicyRequest, v0, v1);
    atomic_store(result, &qword_1EAF4A578);
  }

  return result;
}

unint64_t sub_197A49B2C()
{
  result = qword_1EAF4A580;
  if (!qword_1EAF4A580)
  {
    result = swift_getWitnessTable(asc_197A9E28C, &type metadata for ModelXPCRequest.FetchDynamicAssetsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A580);
  }

  return result;
}

unint64_t sub_197A49B80()
{
  result = qword_1EAF4A588;
  if (!qword_1EAF4A588)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModelXPCRequest.FetchDynamicAssetsRequest, &type metadata for ModelXPCRequest.FetchDynamicAssetsRequest, v0, v1);
    atomic_store(result, &qword_1EAF4A588);
  }

  return result;
}

unint64_t sub_197A49BD4()
{
  result = qword_1ED87DD30;
  if (!qword_1ED87DD30)
  {
    result = swift_getWitnessTable(asc_197A9E23C, &type metadata for ModelXPCRequest.FetchAssetsCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87DD30);
  }

  return result;
}

unint64_t sub_197A49C28()
{
  result = qword_1ED87DD38;
  if (!qword_1ED87DD38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModelXPCRequest.FetchAssetsRequest, &type metadata for ModelXPCRequest.FetchAssetsRequest, v0, v1);
    atomic_store(result, &qword_1ED87DD38);
  }

  return result;
}

unint64_t sub_197A49C7C()
{
  result = qword_1ED87DCF8;
  if (!qword_1ED87DCF8)
  {
    result = swift_getWitnessTable("Ϳ?W", &type metadata for ModelXPCRequest.RestoreAssertionsCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87DCF8);
  }

  return result;
}

unint64_t sub_197A49CD0()
{
  result = qword_1ED87DD00;
  if (!qword_1ED87DD00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModelXPCRequest.RestoreAssertionsRequest, &type metadata for ModelXPCRequest.RestoreAssertionsRequest, v0, v1);
    atomic_store(result, &qword_1ED87DD00);
  }

  return result;
}

unint64_t sub_197A49D24()
{
  result = qword_1EAF4A590;
  if (!qword_1EAF4A590)
  {
    result = swift_getWitnessTable(byte_197A9E19C, &type metadata for ModelXPCRequest.FetchAssertionsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A590);
  }

  return result;
}

unint64_t sub_197A49D78()
{
  result = qword_1EAF4A598;
  if (!qword_1EAF4A598)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModelXPCRequest.FetchAssertionsRequest, &type metadata for ModelXPCRequest.FetchAssertionsRequest, v0, v1);
    atomic_store(result, &qword_1EAF4A598);
  }

  return result;
}

unint64_t sub_197A49DCC()
{
  result = qword_1ED87E8C0;
  if (!qword_1ED87E8C0)
  {
    result = swift_getWitnessTable(aM_0, &type metadata for ModelXPCRequest.ReleaseAssertionCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87E8C0);
  }

  return result;
}

unint64_t sub_197A49E20()
{
  result = qword_1ED87E9C0;
  if (!qword_1ED87E9C0)
  {
    result = swift_getWitnessTable(byte_197A9E0FC, &type metadata for ModelXPCRequest.AcquireAssertionCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87E9C0);
  }

  return result;
}

unint64_t sub_197A49E74()
{
  result = qword_1ED87D6C8;
  if (!qword_1ED87D6C8)
  {
    result = swift_getWitnessTable(aM_1, &type metadata for ModelXPCRequest.CancelRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D6C8);
  }

  return result;
}

unint64_t sub_197A49EC8()
{
  result = qword_1EAF4A5A0;
  if (!qword_1EAF4A5A0)
  {
    result = swift_getWitnessTable(byte_197A9DF1C, &type metadata for ModelXPCRequest.ExecuteInputStreamRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A5A0);
  }

  return result;
}

unint64_t sub_197A49F1C()
{
  result = qword_1ED87FA50;
  if (!qword_1ED87FA50)
  {
    result = swift_getWitnessTable(byte_197A9DECC, &type metadata for ModelXPCRequest.ExecuteRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FA50);
  }

  return result;
}

uint64_t static IPCResult<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a5;
  v47 = a6;
  v52 = a1;
  v53 = a2;
  OUTLINED_FUNCTION_34_0();
  v50 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v45 = v10;
  OUTLINED_FUNCTION_34_0();
  v49 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  v44 = v13;
  v51 = v14;
  v17 = type metadata accessor for IPCResult(0, v15, v14, v16);
  OUTLINED_FUNCTION_2();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_27();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v44 - v25;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2();
  v48 = v27;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_66_0();
  v30 = *(v29 + 48);
  v31 = *(v19 + 16);
  v31(v6, v52, v17);
  v31(v6 + v30, v53, v17);
  OUTLINED_FUNCTION_61();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v37 = OUTLINED_FUNCTION_102_3();
    (v31)(v37);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v38 = v49;
      v39 = v44;
      (*(v49 + 32))(v44, v6 + v30, a3);
      v35 = sub_197A87918();
      v40 = *(v38 + 8);
      v40(v39, a3);
      v40(v26, a3);
      goto LABEL_9;
    }

    (*(v49 + 8))(v26, a3);
    goto LABEL_7;
  }

  v31(v23, v6, v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v50 + 8))(v23, v51);
LABEL_7:
    v35 = 0;
    goto LABEL_9;
  }

  v33 = v50;
  v32 = v51;
  v34 = v45;
  (*(v50 + 32))(v45, v6 + v30, v51);
  v35 = sub_197A87918();
  v36 = *(v33 + 8);
  v36(v34, v32);
  v36(v23, v32);
LABEL_9:
  v41 = OUTLINED_FUNCTION_61();
  v42(v41);
  return v35 & 1;
}

uint64_t ModelXPCRequest.CreateSessionRequest.sessionID.getter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = type metadata accessor for Session.Metadata(v0);
  OUTLINED_FUNCTION_177(*(v1 + 36));
  return sub_197944528();
}

uint64_t sub_197A4A3A4(uint64_t a1)
{
  v2 = sub_197962B20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4A3E0(uint64_t a1)
{
  v2 = sub_197962B20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4A438(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000197AA4630 == a2)
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

uint64_t sub_197A4A508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A4A438(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A4A530(uint64_t a1)
{
  v2 = sub_197954810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4A56C(uint64_t a1)
{
  v2 = sub_197954810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4A5AC(uint64_t a1)
{
  v2 = sub_19796D7E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4A5E8(uint64_t a1)
{
  v2 = sub_19796D7E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4A640(uint64_t a1)
{
  v2 = sub_197965700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4A67C(uint64_t a1)
{
  v2 = sub_197965700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4A6BC(uint64_t a1)
{
  v2 = sub_197971C00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4A6F8(uint64_t a1)
{
  v2 = sub_197971C00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4A750(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
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

uint64_t sub_197A4A820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A4A750(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A4A848(uint64_t a1)
{
  v2 = sub_197964B2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4A884(uint64_t a1)
{
  v2 = sub_197964B2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4A8C4(uint64_t a1)
{
  v2 = sub_19796BE4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4A900(uint64_t a1)
{
  v2 = sub_19796BE4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4A958(uint64_t a1)
{
  v2 = sub_197966DA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4A994(uint64_t a1)
{
  v2 = sub_197966DA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4AA3C(uint64_t a1)
{
  v2 = sub_19797BE04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4AA78(uint64_t a1)
{
  v2 = sub_19797BE04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4AAD0(uint64_t a1)
{
  v2 = sub_197A51C68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4AB0C(uint64_t a1)
{
  v2 = sub_197A51C68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.ExecuteRequest.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_143();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A738, &qword_197A98588);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_13_1();
  v2 = sub_197A51C68();
  OUTLINED_FUNCTION_125(&type metadata for ModelXPCRequest.ExecuteRequest.CodingKeys, v3, v2);
  OUTLINED_FUNCTION_129_2();
  sub_197A88108();
  if (!v0)
  {
    type metadata accessor for ModelXPCRequest.ExecuteRequest(0);
    OUTLINED_FUNCTION_112_4();
    type metadata accessor for RequestMetadata(0);
    OUTLINED_FUNCTION_16_11();
    sub_197954374(v4);
    OUTLINED_FUNCTION_80_5();
    OUTLINED_FUNCTION_129_2();
    sub_197A880E8();
  }

  v5 = OUTLINED_FUNCTION_142_0();
  v6(v5);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_168();
}

void ModelXPCRequest.ExecuteRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_175_0(v26);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A740, &unk_197A98590);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v28);
  v29 = OUTLINED_FUNCTION_28_0();
  type metadata accessor for ModelXPCRequest.ExecuteRequest(v29);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_113_0(v23, v23[3]);
  sub_197A51C68();
  OUTLINED_FUNCTION_51_8();
  sub_197A883A8();
  if (!v24)
  {
    OUTLINED_FUNCTION_108_4();
    *v25 = sub_197A87FF8();
    OUTLINED_FUNCTION_112_4();
    OUTLINED_FUNCTION_16_11();
    sub_197954374(v31);
    OUTLINED_FUNCTION_108_4();
    sub_197A87FD8();
    v32 = OUTLINED_FUNCTION_113_5();
    v33(v32);
    OUTLINED_FUNCTION_37_10();
    sub_197A49444();
    sub_197A49444();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A4AEFC()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v2 = v1(v0);
  OUTLINED_FUNCTION_177(*(v2 + 20));
  return sub_197953C7C();
}

uint64_t sub_197A4AF60()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1(v0);
  v2 = type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_177(*(v2 + 28));
  return sub_197944528();
}

uint64_t sub_197A4AFFC()
{
  v2 = OUTLINED_FUNCTION_58_0();
  v4 = (v1 + *(v3(v2) + 20));
  v5 = *v4;
  v6 = v4[1];
  v8 = v4[2];
  v7 = v4[3];
  LOBYTE(v4) = *(v4 + 32);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 16) = v8;
  *(v0 + 24) = v7;
  *(v0 + 32) = v4;
  sub_197A878A8();

  return sub_197A878A8();
}

double ModelXPCRequest.ExecuteInputStreamRequest.Response.init(result:lockedInferenceProvider:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_150_1(a1, a2);
  sub_19794B118();
  v2 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest.Response(0);
  *&result = OUTLINED_FUNCTION_133_4(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11).n128_u64[0];
  return result;
}

uint64_t sub_197A4B0B4()
{
  OUTLINED_FUNCTION_71();
  v3 = v1 == 0x746C75736572 && v2 == 0xE600000000000000;
  if (v3 || (OUTLINED_FUNCTION_79(0x746C75736572, 0xE600000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0xD000000000000017 && 0x8000000197AA4650 == v0)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_79(0xD000000000000017, 0x8000000197AA4650);
    OUTLINED_FUNCTION_157_1();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_197A4B15C(uint64_t a1)
{
  v2 = sub_197A51CDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4B198(uint64_t a1)
{
  v2 = sub_197A51CDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.ExecuteInputStreamRequest.Response.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_72_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A748, &qword_197A985A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_13_1();
  v2 = sub_197A51CDC();
  OUTLINED_FUNCTION_125(&type metadata for ModelXPCRequest.ExecuteInputStreamRequest.Response.CodingKeys, v3, v2);
  type metadata accessor for InferenceProviderRequestResult(0);
  OUTLINED_FUNCTION_17_10();
  sub_197954374(v4);
  OUTLINED_FUNCTION_53_11();
  sub_197A88098();
  if (!v0)
  {
    v5 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest.Response(0);
    OUTLINED_FUNCTION_122_5(v5);
    sub_197A878A8();
    sub_197A878A8();
    OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_58();
    sub_197A880E8();
  }

  v6 = OUTLINED_FUNCTION_79_4();
  v7(v6);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_168();
}

void ModelXPCRequest.ExecuteInputStreamRequest.Response.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A58, &qword_197A98140);
  OUTLINED_FUNCTION_28(v3);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_110_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A758, &qword_197A985A8);
  OUTLINED_FUNCTION_2();
  v15 = v5;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_88_0();
  type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest.Response(v7);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_113_0(v2, v2[3]);
  sub_197A51CDC();
  OUTLINED_FUNCTION_144_4();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    type metadata accessor for InferenceProviderRequestResult(0);
    LOBYTE(v16) = 0;
    OUTLINED_FUNCTION_17_10();
    sub_197954374(v12);
    OUTLINED_FUNCTION_137_3();
    sub_197A87F88();
    sub_19794B118();
    sub_19795F8C8();
    OUTLINED_FUNCTION_137_3();
    sub_197A87FD8();
    v13 = OUTLINED_FUNCTION_167_0();
    v14(v13, v15);
    OUTLINED_FUNCTION_151_3(v16);
    sub_197953C7C();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    sub_19795130C(v11, type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest.Response);
  }

  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A4B640()
{
  OUTLINED_FUNCTION_71();
  v2 = v1 == 0x6F6972506B736174 && v0 == 0xEC00000079746972;
  if (v2 || (OUTLINED_FUNCTION_79(0x6F6972506B736174, 0xEC00000079746972) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x617461646174656DLL && v0 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_79(0x617461646174656DLL, 0xE800000000000000);
    OUTLINED_FUNCTION_157_1();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_197A4B6E8(uint64_t a1)
{
  v2 = sub_197A51D30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4B724(uint64_t a1)
{
  v2 = sub_197A51D30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.ExecuteInputStreamRequest.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_143();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A760, &qword_197A985B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_13_1();
  v2 = sub_197A51D30();
  OUTLINED_FUNCTION_125(&type metadata for ModelXPCRequest.ExecuteInputStreamRequest.CodingKeys, v3, v2);
  OUTLINED_FUNCTION_129_2();
  sub_197A88108();
  if (!v0)
  {
    type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest(0);
    OUTLINED_FUNCTION_112_4();
    type metadata accessor for RequestMetadata(0);
    OUTLINED_FUNCTION_16_11();
    sub_197954374(v4);
    OUTLINED_FUNCTION_80_5();
    OUTLINED_FUNCTION_129_2();
    sub_197A880E8();
  }

  v5 = OUTLINED_FUNCTION_142_0();
  v6(v5);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_168();
}

void ModelXPCRequest.ExecuteInputStreamRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_175_0(v26);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A770, &qword_197A985B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v28);
  v29 = OUTLINED_FUNCTION_28_0();
  type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest(v29);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_113_0(v23, v23[3]);
  sub_197A51D30();
  OUTLINED_FUNCTION_51_8();
  sub_197A883A8();
  if (!v24)
  {
    OUTLINED_FUNCTION_108_4();
    *v25 = sub_197A87FF8();
    OUTLINED_FUNCTION_112_4();
    OUTLINED_FUNCTION_16_11();
    sub_197954374(v31);
    OUTLINED_FUNCTION_108_4();
    sub_197A87FD8();
    v32 = OUTLINED_FUNCTION_113_5();
    v33(v32);
    OUTLINED_FUNCTION_37_10();
    sub_197A49444();
    sub_197A49444();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_93();
}

uint64_t ModelXPCRequest.CancelRequest.sessionID.getter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = type metadata accessor for ModelXPCRequest.CancelRequest(v0);
  OUTLINED_FUNCTION_177(*(v1 + 20));
  return sub_197944528();
}

uint64_t sub_197A4BB6C(uint64_t a1)
{
  v2 = sub_197A51D84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4BBA8(uint64_t a1)
{
  v2 = sub_197A51D84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4BC5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044)
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

uint64_t sub_197A4BD24(char a1)
{
  if (a1)
  {
    return 0x496E6F6973736573;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_197A4BD5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A4BC5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A4BD84(uint64_t a1)
{
  v2 = sub_197A51DD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4BDC0(uint64_t a1)
{
  v2 = sub_197A51DD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.CancelRequest.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_143();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A780, &qword_197A985C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_13_1();
  v2 = sub_197A51DD8();
  OUTLINED_FUNCTION_125(&type metadata for ModelXPCRequest.CancelRequest.CodingKeys, v3, v2);
  v4 = OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_2_15(&qword_1ED87FC98);
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_129_2();
  sub_197A880E8();
  if (!v0)
  {
    type metadata accessor for ModelXPCRequest.CancelRequest(0);
    OUTLINED_FUNCTION_112_4();
    v6 = OUTLINED_FUNCTION_49();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_2_15(&qword_1ED87FC88);
    OUTLINED_FUNCTION_61_4();
    OUTLINED_FUNCTION_129_2();
    sub_197A880E8();
  }

  v8 = OUTLINED_FUNCTION_142_0();
  v9(v8);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_93();
}

void ModelXPCRequest.CancelRequest.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_79_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A788, &qword_197A985D0);
  OUTLINED_FUNCTION_2();
  v12 = v6;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_110_3();
  type metadata accessor for ModelXPCRequest.CancelRequest(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_113_0(v3, v3[3]);
  sub_197A51DD8();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    OUTLINED_FUNCTION_3_16(&qword_1ED87FC90, &qword_1EAF49128, &unk_197A8CE70);
    OUTLINED_FUNCTION_140_2();
    OUTLINED_FUNCTION_41_2();
    sub_197A87FD8();
    sub_19794B118();
    OUTLINED_FUNCTION_112_4();
    OUTLINED_FUNCTION_3_16(&qword_1ED87FC80, &qword_1EAF49130, &qword_197A969C0);
    OUTLINED_FUNCTION_41_2();
    sub_197A87FD8();
    (*(v12 + 8))(v1, v13);
    sub_19794B118();
    sub_197953C7C();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    sub_19795130C(v11, type metadata accessor for ModelXPCRequest.CancelRequest);
  }

  OUTLINED_FUNCTION_104_4();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A4C300(uint64_t a1)
{
  v2 = sub_197A51E80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4C33C(uint64_t a1)
{
  v2 = sub_197A51E80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4C3F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F69747265737361 && a2 == 0xE90000000000006ELL)
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

uint64_t sub_197A4C490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A4C3F0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_197A4C4BC(uint64_t a1)
{
  v2 = sub_197A51ED4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4C4F8(uint64_t a1)
{
  v2 = sub_197A51ED4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelXPCRequest.AcquireRequest.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_44_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A798, &qword_197A985E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_13_1();
  sub_197A51ED4();
  OUTLINED_FUNCTION_48_8();
  sub_197A883D8();
  type metadata accessor for Assertion.DaemonRep(0);
  OUTLINED_FUNCTION_86_5();
  sub_197954374(v1);
  OUTLINED_FUNCTION_75_7();
  OUTLINED_FUNCTION_125_4();
  sub_197A880E8();
  v2 = OUTLINED_FUNCTION_20_0();
  v3(v2);
  OUTLINED_FUNCTION_113_3();
  OUTLINED_FUNCTION_168();
}

void ModelXPCRequest.AcquireRequest.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_61_7(v3);
  type metadata accessor for Assertion.DaemonRep(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A7A0, &unk_197A985E8);
  OUTLINED_FUNCTION_2();
  v12 = v6;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_110_3();
  v8 = type metadata accessor for ModelXPCRequest.AcquireRequest(0);
  v9 = OUTLINED_FUNCTION_28(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_48_5();
  v10 = sub_197A51ED4();
  OUTLINED_FUNCTION_156_0(&type metadata for ModelXPCRequest.AcquireRequest.CodingKeys, &type metadata for ModelXPCRequest.AcquireRequest.CodingKeys, v10);
  if (!v1)
  {
    OUTLINED_FUNCTION_86_5();
    sub_197954374(v11);
    OUTLINED_FUNCTION_13_8();
    sub_197A87FD8();
    (*(v12 + 8))(v2, v5);
    sub_197A49444();
    sub_197A49444();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A4C888(uint64_t a1)
{
  v2 = sub_197A51F28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4C8C4(uint64_t a1)
{
  v2 = sub_197A51F28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A4C978(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
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

uint64_t sub_197A4C9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A4C978(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_197A4CA24(uint64_t a1)
{
  v2 = sub_197A51F7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A4CA60(uint64_t a1)
{
  v2 = sub_197A51F7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}