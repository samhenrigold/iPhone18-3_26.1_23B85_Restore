unint64_t sub_217512B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28DC0;
  if (!qword_27CB28DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28DC0);
  }

  return result;
}

uint64_t CloudOffer.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 56);
  if (*(v1 + 8))
  {
    sub_217753208();
    sub_217751FF8();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_217753208();
    if (v3)
    {
LABEL_3:
      sub_217753208();
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_13:
      sub_217753208();
      if (v5)
      {
        goto LABEL_5;
      }

      return sub_217753208();
    }
  }

  sub_217753208();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x21CEA3580](v7);
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_4:
  sub_217753208();
  sub_217751FF8();
  if (!v5)
  {
    return sub_217753208();
  }

LABEL_5:
  sub_217753208();

  return sub_217751FF8();
}

uint64_t CloudOffer.hashValue.getter()
{
  sub_2177531E8();
  CloudOffer.hash(into:)(v1);
  return sub_217753238();
}

void CloudOffer.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28DC8, &qword_2177726E8);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217512AFC(v6, v7, v8);
  sub_2177532C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    OUTLINED_FUNCTION_2_79();
    v9 = sub_217752E18();
    v11 = v10;
    OUTLINED_FUNCTION_2_79();
    v22 = sub_217752E38();
    v34 = v12 & 1;
    LOBYTE(v28[0]) = 2;
    OUTLINED_FUNCTION_2_79();
    v21 = sub_217752E18();
    v23 = v13;
    v35 = 3;
    sub_217513024(v21, v13, v14);
    sub_217752E58();
    v15 = OUTLINED_FUNCTION_5_0();
    v16(v15);
    v17 = v33;
    *&v24 = v9;
    *(&v24 + 1) = v11;
    *&v25 = v22;
    v18 = v34;
    BYTE8(v25) = v34;
    *&v26 = v21;
    *(&v26 + 1) = v23;
    v27 = v33;
    v19 = v25;
    *a2 = v24;
    a2[1] = v19;
    v20 = v27;
    a2[2] = v26;
    a2[3] = v20;
    sub_217513078(&v24, v28);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v28[0] = v9;
    v28[1] = v11;
    v28[2] = v22;
    v29 = v18;
    v30 = v21;
    v31 = v23;
    v32 = v17;
    sub_2175130B0(v28);
  }
}

uint64_t sub_217512FE8(uint64_t a1)
{
  sub_2177531E8();
  CloudOffer.hash(into:)(v2);
  return sub_217753238();
}

unint64_t sub_217513024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28DD0;
  if (!qword_27CB28DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28DD0);
  }

  return result;
}

uint64_t CloudOffer.Kind.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_29();
  sub_2177532A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    OUTLINED_FUNCTION_1_29();
    v5 = sub_217753078();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CloudOffer.Kind.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532E8();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2177530B8();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

unint64_t sub_217513228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28DD8;
  if (!qword_27CB28DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28DD8);
  }

  return result;
}

unint64_t sub_217513280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28DE0;
  if (!qword_27CB28DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28DE0);
  }

  return result;
}

uint64_t sub_217513304(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_217513358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudOffer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2175134D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28DE8;
  if (!qword_27CB28DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28DE8);
  }

  return result;
}

unint64_t sub_217513528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28DF0;
  if (!qword_27CB28DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28DF0);
  }

  return result;
}

unint64_t sub_217513580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28DF8;
  if (!qword_27CB28DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28DF8);
  }

  return result;
}

id sub_2175135D8()
{
  type metadata accessor for NetworkConnectivityMonitor(0);
  swift_allocObject();
  result = sub_217513674();
  qword_280BE33A0 = result;
  return result;
}

uint64_t static NetworkConnectivityMonitor.shared.getter()
{
  if (qword_280BE3398 != -1)
  {
    swift_once();
  }
}

id sub_217513674()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8MusicKit26NetworkConnectivityMonitor_kvoToken) = 0;
  result = [objc_opt_self() sharedDefaultEvaluator];
  if (result)
  {
    *(v0 + OBJC_IVAR____TtC8MusicKit26NetworkConnectivityMonitor_networkPathEvaluator) = result;
    v3 = OBJC_IVAR____TtC8MusicKit26NetworkConnectivityMonitor_networkPathEvaluator;
    v4 = [result path];
    [v4 status];

    swift_beginAccess();
    sub_217751BC8();
    swift_endAccess();
    v5 = [*(v1 + v3) path];
    [v5 isConstrained];

    swift_beginAccess();
    sub_217751BC8();
    swift_endAccess();
    v6 = [*(v1 + v3) path];
    [v6 isExpensive];

    swift_beginAccess();
    sub_217751BC8();
    swift_endAccess();
    v7 = *(v1 + v3);
    swift_getKeyPath("@b=e");
    swift_allocObject();
    swift_weakInit();
    v8 = v7;
    v9 = sub_217751658();

    v10 = *(v1 + OBJC_IVAR____TtC8MusicKit26NetworkConnectivityMonitor_kvoToken);
    *(v1 + OBJC_IVAR____TtC8MusicKit26NetworkConnectivityMonitor_kvoToken) = v9;

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217513910(char a1, const char *a2, const char *a3)
{
  swift_getKeyPath(a2);
  swift_getKeyPath(a3);

  return sub_217751C18();
}

id sub_21751397C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 path];
  *a2 = result;
  return result;
}

uint64_t sub_2175139B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E10, &unk_217772C28);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_217752538();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v5 + 16))(v7, a2, v4);
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v12;
  (*(v5 + 32))(&v14[v13], v7, v4);
  sub_21765A990(0, 0, v10, &unk_217772C40, v14);
}

uint64_t sub_217513BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  return MEMORY[0x2822009F8](sub_217513BEC, 0, 0);
}

uint64_t sub_217513BEC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E10, &unk_217772C28);
    sub_217751648();
    *(v0 + 80) = *(v0 + 40);
    sub_217752518();
    *(v0 + 88) = sub_217752508();
    v3 = sub_217752498();

    return MEMORY[0x2822009F8](sub_217513D0C, v3, v2);
  }

  else
  {
    **(v0 + 48) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_217513D0C()
{
  v1 = *(v0 + 80);

  sub_21751496C(v1);

  return MEMORY[0x2822009F8](sub_217513D8C, 0, 0);
}

uint64_t NetworkConnectivityMonitor.deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8MusicKit26NetworkConnectivityMonitor_kvoToken;
  v3 = *(v0 + OBJC_IVAR____TtC8MusicKit26NetworkConnectivityMonitor_kvoToken);
  if (v3)
  {
    v4 = v3;
    sub_217751598();

    v3 = *(v1 + v2);
  }

  *(v1 + v2) = 0;

  v5 = OBJC_IVAR____TtC8MusicKit26NetworkConnectivityMonitor__hasNetworkConnectivity;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E00, &qword_217772B58);
  v7 = *(*(v6 - 8) + 8);
  v7(v1 + v5, v6);
  v7(v1 + OBJC_IVAR____TtC8MusicKit26NetworkConnectivityMonitor__isNetworkConstrained, v6);
  v7(v1 + OBJC_IVAR____TtC8MusicKit26NetworkConnectivityMonitor__isNetworkExpensive, v6);

  return v1;
}

uint64_t NetworkConnectivityMonitor.__deallocating_deinit()
{
  NetworkConnectivityMonitor.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_217513F0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217513F64();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_217513F78())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_4_68(v1);
  *(v0 + 32) = swift_getKeyPath(byte_217772A80);
  KeyPath = swift_getKeyPath("pc=e");
  *(v0 + 48) = OUTLINED_FUNCTION_0_75(KeyPath);
  return sub_2175150A0;
}

void (*sub_217514008())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_4_68(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E08, &qword_217772B60);
  OUTLINED_FUNCTION_1_68(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_3_67();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E00, &qword_217772B58);
  sub_217751BD8();
  swift_endAccess();
  return sub_21751410C;
}

uint64_t sub_217514124@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21751417C();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_217514190())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_4_68(v1);
  *(v0 + 32) = swift_getKeyPath("Xc=e");
  KeyPath = swift_getKeyPath("8c=e");
  *(v0 + 48) = OUTLINED_FUNCTION_0_75(KeyPath);
  return sub_217514208;
}

uint64_t sub_21751420C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E08, &qword_217772B60);
  OUTLINED_FUNCTION_0_0();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v8);
  return a5(v10);
}

void (*sub_2175142F4())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_4_68(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E08, &qword_217772B60);
  OUTLINED_FUNCTION_1_68(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_3_67();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E00, &qword_217772B58);
  sub_217751BD8();
  swift_endAccess();
  return sub_2175143F8;
}

void sub_217514410(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_2175144D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217514530();
  *a1 = result & 1;
  return result;
}

uint64_t sub_217514544(const char *a1, const char *a2)
{
  swift_getKeyPath(a1);
  swift_getKeyPath(a2);
  sub_217751C08();

  return v4;
}

uint64_t (*sub_2175145B0())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_4_68(v1);
  *(v0 + 32) = swift_getKeyPath(" c=e");
  KeyPath = swift_getKeyPath(byte_217772B38);
  *(v0 + 48) = OUTLINED_FUNCTION_0_75(KeyPath);
  return sub_2175150A0;
}

void sub_217514628(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_21751469C(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E00, &qword_217772B58);
  sub_217751BD8();
  return swift_endAccess();
}

uint64_t sub_217514718(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E08, &qword_217772B60);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  (*(v5 + 16))(&v10 - v8, a1, v3, v7);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E00, &qword_217772B58);
  sub_217751BE8();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*sub_217514844())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_4_68(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E08, &qword_217772B60);
  OUTLINED_FUNCTION_1_68(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_3_67();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E00, &qword_217772B58);
  sub_217751BD8();
  swift_endAccess();
  return sub_217514948;
}

uint64_t sub_21751496C(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 status] == 1;
  }

  else
  {
    v2 = 0;
  }

  if (v2 != (sub_217513F64() & 1))
  {
    sub_2175138D4(v2);
  }

  if (v1)
  {
    v3 = [v1 isConstrained];
  }

  else
  {
    v3 = 0;
  }

  if (v3 != (sub_21751417C() & 1))
  {
    sub_2175138E8(v3);
  }

  if (v1)
  {
    v1 = [v1 isExpensive];
  }

  result = sub_217514530();
  if (v1 != (result & 1))
  {

    return sub_2175138FC(v1);
  }

  return result;
}

uint64_t sub_217514A54@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NetworkConnectivityMonitor(0);
  result = sub_217751B88();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for NetworkConnectivityMonitor(uint64_t a1)
{
  result = qword_280BE3378;
  if (!qword_280BE3378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_217514AE8(uint64_t a1)
{
  sub_217514E44();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_217514E44()
{
  if (!qword_280BE73D0)
  {
    v0 = sub_217751C28();
    if (!v1)
    {
      atomic_store(v0, &qword_280BE73D0);
    }
  }
}

uint64_t sub_217514EA8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E10, &unk_217772C28) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_217514FAC;

  return sub_217513BC8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_217514FAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t NotificationObserver.__allocating_init(name:object:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_69();
  v8 = swift_allocObject();
  NotificationObserver.init(name:object:handler:)(a1, a2, a3, a4);
  return v8;
}

void *NotificationObserver.init(name:object:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  v4[2] = a1;
  swift_unknownObjectWeakAssign();
  v4[5] = a3;
  v4[6] = a4;
  v8 = objc_opt_self();
  v9 = a1;

  v10 = [v8 defaultCenter];
  v4[4] = v10;
  v11 = v4[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = v10;

  v14 = v11;
  [v13 addObserver:v4 selector:sel_handleNotification_ name:v14 object:Strong];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_217515268(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  OUTLINED_FUNCTION_1_69();
  v12 = swift_allocObject();
  swift_unknownObjectRetain();

  NotificationObserver.init(name:object:handler:)(a1, a2, a6, v11);
  return v12;
}

uint64_t sub_2175152FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2177513E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_217752538();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  (*(v7 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v13 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a2;
  *(v14 + 5) = a3;
  (*(v7 + 32))(&v14[v13], &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_21765A6D8(0, 0, v11, &unk_217772CD8, v14);
}

uint64_t sub_2175154C4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v6 + 16) = v8;
  *v8 = v6;
  v8[1] = sub_2173BA694;

  return v10(a6);
}

uint64_t sub_2175155BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2177513E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_217752538();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a1, v6);
  sub_217752518();

  v14 = sub_217752508();
  v15 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 2) = v14;
  *(v16 + 3) = v17;
  *(v16 + 4) = a2;
  *(v16 + 5) = a3;
  (*(v7 + 32))(&v16[v15], v9, v6);
  sub_21765A6D8(0, 0, v12, &unk_217772CE8, v16);
}

uint64_t sub_2175157B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_217752518();
  v6[3] = sub_217752508();
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_2175158CC;

  return v11(a6);
}

uint64_t sub_2175158CC()
{
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  v4 = sub_217752498();

  return MEMORY[0x2822009F8](sub_2175159FC, v4, v3);
}

uint64_t sub_2175159FC()
{
  OUTLINED_FUNCTION_10();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NotificationObserver.deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v1;
  v5 = v2;
  [v4 removeObserver:v0 name:v5 object:Strong];

  swift_unknownObjectRelease();
  sub_217515AF0(v0 + 24);

  return v0;
}

uint64_t NotificationObserver.__deallocating_deinit()
{
  NotificationObserver.deinit();
  v0 = OUTLINED_FUNCTION_1_69();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t NotificationObserver.description.getter()
{
  v1 = v0;
  MEMORY[0x21CEA23B0](60, 0xE100000000000000);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  v4 = sub_217751F48();
  v6 = v5;

  MEMORY[0x21CEA23B0](v4, v6);

  MEMORY[0x21CEA23B0](8250, 0xE200000000000000, v7);
  sub_217752C78();
  v8 = sub_217751F48();
  MEMORY[0x21CEA23B0](v8);

  MEMORY[0x21CEA23B0](34, 0xE100000000000000, v9);
  MEMORY[0x21CEA23B0](0x3D20656D616E203BLL, 0xEA00000000002220);

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRetain();
    v10 = sub_217751FA8();
    MEMORY[0x21CEA23B0](v10);

    MEMORY[0x21CEA23B0](0x7463656A626F203BLL, 0xEB00000000203D20, v11);
    swift_unknownObjectRelease();
  }

  sub_217515F5C();
  v12 = *(v1 + 32);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 defaultCenter];
  v16 = sub_2177528A8();

  if (v16)
  {
    MEMORY[0x21CEA23B0](0xD000000000000013, 0x80000002177AFB10);
  }

  else
  {
    v18 = [v14 description];
    v19 = sub_217751F48();
    v21 = v20;

    MEMORY[0x21CEA23B0](v19, v21);

    MEMORY[0x21CEA23B0](0x7265746E6563203BLL, 0xEB00000000203D20, v22);
  }

  MEMORY[0x21CEA23B0](62, 0xE100000000000000, v17);
  return 0;
}

unint64_t sub_217515F5C()
{
  result = qword_27CB28E18;
  if (!qword_27CB28E18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CB28E18);
  }

  return result;
}

uint64_t sub_217515FF0()
{
  sub_2177513E8();
  OUTLINED_FUNCTION_4_69();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_0_76(v1);

  return sub_2175154C4(v2, v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_7Tm()
{
  v1 = sub_2177513E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217516198()
{
  sub_2177513E8();
  OUTLINED_FUNCTION_4_69();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_0_76(v1);

  return sub_2175157B0(v2, v3, v4, v5, v6, v7);
}

uint64_t TitledSection.title.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t TitledSection.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217752AA8();

  strcpy(v5, "titledSection:");
  MEMORY[0x21CEA23B0](v1, v2, v3);
  return v5[0];
}

uint64_t static TitledSection.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_217753058();
  }
}

uint64_t TitledSection.hashValue.getter()
{
  sub_2177531E8();
  sub_217751FF8();
  return sub_217753238();
}

uint64_t sub_2175163B8@<X0>(uint64_t *a1@<X8>)
{
  result = TitledSection.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2175163E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28E20[0];
  if (!qword_27CB28E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB28E20);
  }

  return result;
}

uint64_t MusicItemTypeValue.catalogResourceTypes.getter()
{
  if (dynamic_cast_existential_1_conditional(*v0, *v0, &protocol descriptor for CatalogMusicItemRepresentable))
  {
    return (*(v1 + 8))();
  }

  sub_217752AA8();

  v3 = sub_217753348();
  MEMORY[0x21CEA23B0](v3);

  MEMORY[0x21CEA23B0](46, 0xE100000000000000, v4);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t MusicItemTypeValueCollection.catalogResourceTypes.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26F98, qword_217768A20);
  swift_getWitnessTable();
  sub_2173DB3EC();
  v1 = sub_2177521B8();
  sub_2173DAE08(v1);
  v3 = v2;

  return v3;
}

uint64_t sub_2175165F0@<X0>(uint64_t *a1@<X8>)
{
  result = MusicItemTypeValue.catalogResourceTypes.getter();
  *a1 = result;
  return result;
}

uint64_t sub_217516658(uint64_t a1)
{
  result = sub_217516BCC();
  if (v2 <= 0x3F)
  {
    result = _s14UpdateTriggersV8IteratorCMa(319);
    if (v3 <= 0x3F)
    {
      result = sub_2177528F8();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_217516700(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = v10 + ((v9 + 24) & ~v9);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_28:
      if ((v7 & 0x80000000) != 0)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9, v6, v4);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_2175168BC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = (v12 + 24) & ~v12;
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = v13 + v14;
  v16 = 8 * (v13 + v14);
  v17 = a3 >= v11;
  v18 = a3 - v11;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v19 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v19))
      {
        v6 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v6 = v20;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v11 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_62:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v10 & 0x80000000) != 0)
          {
            v25 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12);
            if (v10 >= a2)
            {
              v29 = a2 + 1;
              v30 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;

              __swift_storeEnumTagSinglePayload(v30, v29, v9, v7);
            }

            else
            {
              if (v14 <= 3)
              {
                v26 = ~(-1 << (8 * v14));
              }

              else
              {
                v26 = -1;
              }

              if (v14)
              {
                v27 = v26 & (~v10 + a2);
                if (v14 <= 3)
                {
                  v28 = v14;
                }

                else
                {
                  v28 = 4;
                }

                bzero(v25, v14);
                switch(v28)
                {
                  case 2:
                    *v25 = v27;
                    break;
                  case 3:
                    *v25 = v27;
                    v25[2] = BYTE2(v27);
                    break;
                  case 4:
                    *v25 = v27;
                    break;
                  default:
                    *v25 = v27;
                    break;
                }
              }
            }
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v24 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v24 = a2 - 1;
            }

            *a1 = v24;
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v11 + a2;
    if (v15 < 4)
    {
      v22 = (v21 >> v16) + 1;
      if (v15)
      {
        v23 = v21 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v15 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v21;
      v22 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v15] = v22;
        break;
      case 2:
        *&a1[v15] = v22;
        break;
      case 3:
        goto LABEL_62;
      case 4:
        *&a1[v15] = v22;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_217516BCC()
{
  result = qword_27CB28EA8;
  if (!qword_27CB28EA8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27CB28EA8);
  }

  return result;
}

uint64_t sub_217516C14()
{
  OUTLINED_FUNCTION_10();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(v2 + 16);
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27230, &qword_217769A30);
  v1[9] = swift_task_alloc();
  v5 = sub_2177528F8();
  v1[10] = v5;
  v1[11] = *(v5 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_217516D84, 0, 0);
}

uint64_t sub_217516D84()
{
  __swift_storeEnumTagSinglePayload(v0[2], 1, 1, v0[5]);
  v1 = v0[13];
  OUTLINED_FUNCTION_4_70();
  v0[14] = v2;
  v0[15] = v3;
  v2(v1);
  if (OUTLINED_FUNCTION_6_51() == 1)
  {
    v4 = v0[13];
    v5 = v0[10];
    v6 = v0[11];
    v7 = *(v6 + 8);
    v0[16] = v7;
    v0[17] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);
    v8 = swift_task_alloc();
    v0[18] = v8;
    *v8 = v0;
    OUTLINED_FUNCTION_1_70(v8);

    return sub_2174E5EEC();
  }

  else
  {
    (*(v0[11] + 8))(v0[13], v0[10]);
    v10 = OUTLINED_FUNCTION_0_77();
    v11(v10);

    OUTLINED_FUNCTION_20_0();

    return v12();
  }
}

uint64_t sub_217516F00()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_217516FEC, 0, 0);
}

uint64_t sub_217516FEC()
{
  v1 = v0[9];
  updated = _s13UpdateTriggerOMa(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, updated) == 1)
  {
    sub_2173DA2E4(v1);
    v3 = OUTLINED_FUNCTION_0_77();
    v4(v3);

    OUTLINED_FUNCTION_20_0();

    return v5();
  }

  else
  {
    v7 = v0[4];
    sub_2173DA2E4(v1);
    v10 = (*v7 + **v7);
    v8 = swift_task_alloc();
    v0[19] = v8;
    *v8 = v0;
    v8[1] = sub_217517194;
    v9 = v0[8];

    return v10(v9);
  }
}

uint64_t sub_217517194()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *(v4 + 160) = v0;

  if (v0)
  {
    v5 = sub_217517554;
  }

  else
  {
    v5 = sub_217517298;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_217517298()
{
  (*(v0 + 112))(*(v0 + 96), *(v0 + 32) + *(*(v0 + 24) + 44), *(v0 + 80));
  if (OUTLINED_FUNCTION_6_51() == 1)
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 96);
    v3 = *(v0 + 80);
    v4 = *(v0 + 64);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    v7 = *(v0 + 16);
    v1(v7, v3);
    v1(v2, v3);
    (*(v6 + 32))(v7, v4, v5);
    v8 = v7;
    v9 = v5;
  }

  else
  {
    v10 = *(v0 + 56);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    v13 = *(v12 + 32);
    v13(v10, *(v0 + 96), v11);
    v14 = sub_217751F08();
    v15 = *(v12 + 8);
    v15(v10, v11);
    if (v14)
    {
      v15(*(v0 + 64), *(v0 + 40));
      goto LABEL_7;
    }

    v16 = *(v0 + 64);
    v17 = *(v0 + 40);
    v18 = *(v0 + 16);
    (*(v0 + 128))(v18, *(v0 + 80));
    v13(v18, v16, v17);
    v8 = v18;
    v9 = v17;
  }

  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
LABEL_7:
  v19 = *(v0 + 104);
  OUTLINED_FUNCTION_4_70();
  *(v0 + 120) = v20;
  v21(v19);
  v22 = OUTLINED_FUNCTION_6_51();
  v23 = *(v0 + 104);
  v24 = *(v0 + 80);
  v25 = *(v0 + 88);
  if (v22 == 1)
  {
    v26 = *(v25 + 8);
    *(v0 + 128) = v26;
    *(v0 + 136) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v23, v24);
    v27 = swift_task_alloc();
    *(v0 + 144) = v27;
    *v27 = v0;
    OUTLINED_FUNCTION_1_70(v27);

    return sub_2174E5EEC();
  }

  else
  {
    (*(v25 + 8))(v23, v24);
    v29 = OUTLINED_FUNCTION_0_77();
    v30(v29);

    OUTLINED_FUNCTION_20_0();

    return v31();
  }
}

uint64_t sub_217517554()
{
  (*(v0 + 128))(*(v0 + 16), *(v0 + 80));

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2175175FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_217282D8C;

  return sub_217516C14();
}

uint64_t sub_2175176A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_217517778;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_217517778()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  OUTLINED_FUNCTION_20_0();

  return v6();
}

uint64_t MusicCatalogChartKind.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t MusicCatalogChartKind.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_2171FF30C(a1, v12);
  v8 = sub_21737F4D4(v5, v6, v7);
  sub_2175179AC(v8, v9, v10);
  sub_217752258();
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    *a2 = v12[47];
  }

  return result;
}

unint64_t sub_2175179AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28EB0;
  if (!qword_27CB28EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28EB0);
  }

  return result;
}

uint64_t MusicCatalogChartKind.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_217517A68(a1, a2, a3);
  sub_2175179AC(v3, v4, v5);
  return sub_217752208();
}

unint64_t sub_217517A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28EB8;
  if (!qword_27CB28EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28EB8);
  }

  return result;
}

uint64_t MusicCatalogChartKind.description.getter()
{
  v1 = 0x706F54797469632ELL;
  if (*v0 != 1)
  {
    v1 = 0x6C47796C6961642ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x616C5074736F6D2ELL;
  }
}

unint64_t sub_217517B60()
{
  result = qword_27CB28EC0;
  if (!qword_27CB28EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB28EC8, &qword_217772E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28EC0);
  }

  return result;
}

unint64_t sub_217517BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28ED0;
  if (!qword_27CB28ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28ED0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicCatalogChartKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t AnyPropertyProviderExtendedStorage.subscript.getter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_71();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  return (*(v2 + 40))(a1, v1, v2);
}

uint64_t AnyPropertyProviderExtendedStorage.subscript.setter(uint64_t a1, uint64_t a2)
{
  sub_217517DEC(a1, v9);
  v6 = OUTLINED_FUNCTION_1_71();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  (*(v3 + 48))(v9, a2, v2, v3);
  return sub_2171F0790(a1, &qword_27CB2AD40, &qword_2177583F0);
}

uint64_t sub_217517DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PropertyProviderExtendedStorage.eraseToAnyPropertyProviderExtendedStorage()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  __swift_allocate_boxed_opaque_existential_0(a3);
  OUTLINED_FUNCTION_41_0();
  v4 = *(v3 + 16);

  return v4();
}

uint64_t AnyPropertyProviderExtendedStorage.merge<A>(_:with:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a1;
  sub_2171FF30C(a2, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
  if (swift_dynamicCast())
  {
    v16[0] = v12;
    v16[1] = v13;
    v17 = v14;
    v7 = *(v3 + 24);
    v8 = *(v3 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v3, v7);
    (*(v8 + 64))(a1, v16, *(v6 + 216), v7, v8);
    return sub_217350E74(v16);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_2171F0790(&v12, &qword_27CB24BA8, &unk_217772FF0);
    v10 = *(v3 + 24);
    v11 = *(v3 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v3, v10);
    return (*(v11 + 64))(a1, a2, *(v6 + 216), v10, v11);
  }
}

uint64_t PropertyProviderExtendedStorage.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(a4 + 40))(v9, a1, a2, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  v7 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a5, v7 ^ 1u, 1, a3);
}

uint64_t PropertyProviderExtendedStorage<>.isEqual<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[1] = a5;
  v8 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  (*(v24 + 16))(v17, a1, a3);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, a2);
    (*(v19 + 32))(v23, v13, a2);
    v25 = sub_217751F08();
    (*(v19 + 8))(v23, a2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, a2);
    (*(v10 + 8))(v13, v8);
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t PropertyProviderExtendedStorage.update<A>(_:_:)()
{
  OUTLINED_FUNCTION_0();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 16))(&v5 - v2, v1);
  OUTLINED_FUNCTION_56_0();
  return swift_setAtWritableKeyPath();
}

uint64_t PropertyProviderExtendedStorage.update<A>(_:_:)(void *a1)
{
  v1 = *(*a1 + *MEMORY[0x277D84308] + 8);
  MEMORY[0x28223BE20](a1);
  v3 = &v8[-v2];
  sub_217517DEC(v4, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  v5 = *(v1 + 16);
  v6 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v3, v6 ^ 1u, 1, v5);
  OUTLINED_FUNCTION_56_0();
  return swift_setAtWritableKeyPath();
}

uint64_t PropertyProviderExtendedStorage.update<A>(_:_:)(uint64_t *a1, uint64_t a2)
{
  sub_217517DEC(a2, v3);
  if (v3[3])
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
      v6 = 0u;
      v7 = 0u;
      v4 = 0u;
      v5 = 0u;
    }
  }

  else
  {
    sub_2171F0790(v3, &qword_27CB2AD40, &qword_2177583F0);
    v4 = 0u;
    v5 = 0u;
    v6 = 0u;
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
  }

  OUTLINED_FUNCTION_56_0();
  return swift_setAtWritableKeyPath();
}

uint64_t AnyPropertyProviderExtendedStorage.wrappedExtendedStorage.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_2171F3F0C(a1, v1);
}

uint64_t AnyPropertyProviderExtendedStorage.init(from:)(void *a1)
{
  v2 = sub_217752B38();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217753298();
  sub_217752B08();
  sub_217752B48();
  swift_allocError();
  v10 = v9;
  (*(v4 + 16))(v9, v8, v2);
  OUTLINED_FUNCTION_41_0();
  (*(v11 + 104))(v10);
  swift_willThrow();
  (*(v4 + 8))(v8, v2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AnyPropertyProviderExtendedStorage.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_217752B68();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532D8();
  sub_217752B08();
  sub_217752B78();
  swift_allocError();
  v12 = v11;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26EC0, &qword_217786330) + 48);
  v12[3] = &type metadata for AnyPropertyProviderExtendedStorage;
  v14 = swift_allocObject();
  *v12 = v14;
  sub_2173511EC(v2, v14 + 16);
  (*(v6 + 16))(v12 + v13, v10, v4);
  OUTLINED_FUNCTION_41_0();
  (*(v15 + 104))(v12);
  swift_willThrow();
  return (*(v6 + 8))(v10, v4);
}

uint64_t static AnyPropertyProviderExtendedStorage.== infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 80);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
  return v5(a2, v6, v3, v4) & 1;
}

uint64_t sub_217518AB4(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 88))(a1, v3, v4);
}

uint64_t sub_217518B10(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  sub_217517DEC(a1, v5);

  return AnyPropertyProviderExtendedStorage.subscript.setter(v5, v3);
}

void (*AnyPropertyProviderExtendedStorage.subscript.modify(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x70uLL);
  *a1 = v5;
  v5[12] = a2;
  v5[13] = v2;
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  (*(v7 + 40))(a2, v6, v7);
  return sub_217518BF8;
}

void sub_217518BF8(uint64_t *a1, char a2)
{
  v5 = *a1;
  v6 = *(*a1 + 96);
  if (a2)
  {
    sub_217517DEC(*a1, (v5 + 32));
    sub_217517DEC((v5 + 32), (v5 + 64));
    v7 = OUTLINED_FUNCTION_1_71();
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    OUTLINED_FUNCTION_5_54();
    v4(v5 + 64, v6, v2, v3);
    sub_2171F0790((v5 + 32), &qword_27CB2AD40, &qword_2177583F0);
  }

  else
  {
    sub_217517DEC(*a1, (v5 + 32));
    v9 = OUTLINED_FUNCTION_1_71();
    __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
    OUTLINED_FUNCTION_5_54();
    v4(v5 + 32, v6, v2, v3);
  }

  sub_2171F0790(v5, &qword_27CB2AD40, &qword_2177583F0);

  free(v5);
}

uint64_t AnyPropertyProviderExtendedStorage.knownProperties.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 72))(v1, v2);
}

uint64_t AnyPropertyProviderExtendedStorage.hashValue.getter()
{
  sub_2177531E8();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = OUTLINED_FUNCTION_56_0();
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v2 + 88))(v6, v1, v2);
  return sub_217753238();
}

void (*sub_217518DE8(void *a1, uint64_t a2))(void *a1)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = AnyPropertyProviderExtendedStorage.subscript.modify(v4, a2);
  return sub_2174C6BD0;
}

uint64_t sub_217518E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_217519048(a1, a2, a3);

  return PropertyProviderExtendedStorage<>.isEqual<A>(to:)(a1, a3, a2, v6, v7);
}

uint64_t sub_217518EFC(uint64_t a1)
{
  sub_2177531E8();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 88))(v5, v2, v3);
  return sub_217753238();
}

unint64_t sub_217518F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217518F9C(a1, a2, a3);
  *(a1 + 8) = v4;
  result = sub_217518FF0(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_217518F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE2E20;
  if (!qword_280BE2E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2E20);
  }

  return result;
}

unint64_t sub_217518FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE2E28;
  if (!qword_280BE2E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2E28);
  }

  return result;
}

unint64_t sub_217519048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28ED8;
  if (!qword_27CB28ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28ED8);
  }

  return result;
}

void *CloudAttribute<A>.convertToPreviewAsset()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(__src, v1, sizeof(__src));
  OUTLINED_FUNCTION_104(__src);
  if (v4)
  {
    sub_2172A497C(v13);
  }

  else
  {
    memcpy(v13, __src, 0x1B8uLL);
    memcpy(v9, __dst, sizeof(v9));
    sub_2171F5110(v9, v12, &qword_27CB243F0, &qword_21775D690);
    CloudAttribute<A>.convertToArtwork()(v11);
    memcpy(v10, v13, sizeof(v10));
    sub_2171F0738(v10, &qword_27CB243F0, &qword_21775D690);
    memcpy(v12, v11, 0x221uLL);
    nullsub_1();
    memcpy(v13, v12, 0x221uLL);
  }

  v5 = type metadata accessor for CloudPreviewAsset(0);
  v6 = *(v5 + 20);
  v7 = type metadata accessor for PreviewAsset(0);
  sub_2171F5110(v2 + v6, a1 + *(v7 + 20), &unk_27CB277C0, &qword_217758DC0);
  sub_2171F5110(v2 + *(v5 + 24), a1 + *(v7 + 24), &unk_27CB277C0, &qword_217758DC0);
  return memcpy(a1, v13, 0x221uLL);
}

uint64_t type metadata accessor for CloudPreviewAsset(uint64_t a1)
{
  result = qword_280BE3D68;
  if (!qword_280BE3D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void PreviewAsset.convertToCloudPreviewAssetAttribute()()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  type metadata accessor for CloudPreviewAsset(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v6 = (v5 - v4);
  memcpy(v15, v0, sizeof(v15));
  memcpy(v16, v0, 0x221uLL);
  OUTLINED_FUNCTION_104(v16);
  if (v7)
  {
    sub_2172E22C0(v10);
  }

  else
  {
    memcpy(v10, v16, 0x221uLL);
    memcpy(v11, v15, 0x221uLL);
    sub_217284028(v11, v12);
    Artwork.convertToCloudArtworkAttribute()(v13);
    memcpy(v12, v10, 0x221uLL);
    sub_217284084(v12);
    memcpy(v14, v13, sizeof(v14));
    nullsub_1();
    memcpy(v10, v14, 0x1B8uLL);
  }

  v8 = type metadata accessor for PreviewAsset(0);
  OUTLINED_FUNCTION_17_32(*(v8 + 20));
  OUTLINED_FUNCTION_17_32(*(v8 + 24));
  memcpy(v6, v10, 0x1B8uLL);
  sub_217519534(v6, v2);
  v9 = sub_217751DC8();
  sub_217519598(v6);
  *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A68, &qword_217759030) + 28)) = v9;
  OUTLINED_FUNCTION_13();
}

uint64_t sub_217519534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudPreviewAsset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217519598(uint64_t a1)
{
  v2 = type metadata accessor for CloudPreviewAsset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static CloudPreviewAsset.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0);
  v2 = v1;
  v4 = v3;
  v5 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v13 = OUTLINED_FUNCTION_45_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_1();
  v72 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v68 - v17;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_1();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v68 - v24;
  OUTLINED_FUNCTION_12_33();
  memcpy(v26, v27, v28);
  OUTLINED_FUNCTION_11_3();
  memcpy(v29, v30, v31);
  OUTLINED_FUNCTION_12_33();
  memcpy(v32, v33, v34);
  OUTLINED_FUNCTION_11_3();
  memcpy(v35, v36, v37);
  OUTLINED_FUNCTION_12_33();
  memcpy(v38, v39, v40);
  OUTLINED_FUNCTION_104(&v82);
  if (v41)
  {
    OUTLINED_FUNCTION_19_26(v77);
    OUTLINED_FUNCTION_104(v77);
    if (v41)
    {
      v70 = v11;
      v71 = v7;
      memcpy(v79, v78, sizeof(v79));
      OUTLINED_FUNCTION_23_2(v80, v76);
      OUTLINED_FUNCTION_23_2(v81, v76);
      sub_2171F0738(v79, &qword_27CB25000, &unk_21776EA00);
      goto LABEL_10;
    }

LABEL_8:
    memcpy(v77, v78, sizeof(v77));
    sub_2171F5110(v80, v79, &qword_27CB25000, &unk_21776EA00);
    sub_2171F5110(v81, v79, &qword_27CB25000, &unk_21776EA00);
    v42 = &unk_27CB25008;
    v43 = &unk_21778F850;
    v44 = v77;
LABEL_29:
    sub_2171F0738(v44, v42, v43);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_19_26(v76);
  OUTLINED_FUNCTION_104(v76);
  if (v41)
  {
    goto LABEL_8;
  }

  v70 = v11;
  v71 = v7;
  OUTLINED_FUNCTION_19_26(v74);
  OUTLINED_FUNCTION_19_26(v77);
  memcpy(v79, v78, sizeof(v79));
  sub_2171F5110(v80, v75, &qword_27CB25000, &unk_21776EA00);
  sub_2171F5110(v81, v75, &qword_27CB25000, &unk_21776EA00);
  sub_2172A92BC();
  v46 = v45;
  sub_2171F0738(v74, &qword_27CB25000, &unk_21776EA00);
  memcpy(v75, v78, sizeof(v75));
  sub_2171F0738(v75, &qword_27CB25000, &unk_21776EA00);
  if ((v46 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_10:
  v69 = v22;
  v68 = type metadata accessor for CloudPreviewAsset(0);
  v47 = *(v68 + 20);
  v48 = *(v73 + 48);
  OUTLINED_FUNCTION_23_2(v4 + v47, v25);
  OUTLINED_FUNCTION_23_2(v2 + v47, &v25[v48]);
  OUTLINED_FUNCTION_73(v25);
  if (!v41)
  {
    sub_2171F5110(v25, v18, &unk_27CB277C0, &qword_217758DC0);
    OUTLINED_FUNCTION_73(&v25[v48]);
    if (!v49)
    {
      v51 = v70;
      v50 = v71;
      (*(v71 + 32))(v70, &v25[v48], v5);
      OUTLINED_FUNCTION_0_78();
      sub_21751AFC8(v52, v53, MEMORY[0x277CC9278]);
      v54 = sub_217751F08();
      v55 = *(v50 + 8);
      v55(v51, v5);
      v55(v18, v5);
      sub_2171F0738(v25, &unk_27CB277C0, &qword_217758DC0);
      if ((v54 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    (*(v71 + 8))(v18, v5);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_73(&v25[v48]);
  if (!v41)
  {
LABEL_18:
    v42 = &qword_27CB24840;
    v43 = &unk_217758DD0;
    v44 = v25;
    goto LABEL_29;
  }

  sub_2171F0738(v25, &unk_27CB277C0, &qword_217758DC0);
LABEL_20:
  v56 = *(v68 + 24);
  v57 = *(v73 + 48);
  v58 = v4 + v56;
  v59 = v69;
  OUTLINED_FUNCTION_23_2(v58, v69);
  OUTLINED_FUNCTION_23_2(v2 + v56, v59 + v57);
  OUTLINED_FUNCTION_73(v59);
  if (!v41)
  {
    v60 = v72;
    sub_2171F5110(v59, v72, &unk_27CB277C0, &qword_217758DC0);
    OUTLINED_FUNCTION_73(v59 + v57);
    if (!v61)
    {
      v62 = v71;
      v63 = v59 + v57;
      v64 = v70;
      (*(v71 + 32))(v70, v63, v5);
      OUTLINED_FUNCTION_0_78();
      sub_21751AFC8(v65, v66, MEMORY[0x277CC9278]);
      sub_217751F08();
      v67 = *(v62 + 8);
      v67(v64, v5);
      v67(v60, v5);
      sub_2171F0738(v59, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_30;
    }

    (*(v71 + 8))(v60, v5);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_73(v59 + v57);
  if (!v41)
  {
LABEL_28:
    v42 = &qword_27CB24840;
    v43 = &unk_217758DD0;
    v44 = v59;
    goto LABEL_29;
  }

  sub_2171F0738(v59, &unk_27CB277C0, &qword_217758DC0);
LABEL_30:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_217519C50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7107189 && a2 == 0xE300000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C7255736C68 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_217753058();

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

uint64_t sub_217519D5C(char a1)
{
  if (!a1)
  {
    return 0x6B726F77747261;
  }

  if (a1 == 1)
  {
    return 7107189;
  }

  return 0x6C7255736C68;
}

uint64_t sub_217519DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217519C50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217519DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21751AE44(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217519E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21751AE44(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudPreviewAsset.encode(to:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28EE0, &qword_217773170);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21751AE44(v6, v7, v8);
  sub_2177532F8();
  OUTLINED_FUNCTION_11_3();
  memcpy(v9, v10, v11);
  OUTLINED_FUNCTION_11_3();
  memcpy(v12, v13, v14);
  v27 = 0;
  sub_2171F5110(&v25, v23, &qword_27CB25000, &unk_21776EA00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  sub_21751AE98(&qword_280BE42D8, &protocol conformance descriptor for <A> CloudAttribute<A>);
  sub_217752F38();
  memcpy(v23, v24, sizeof(v23));
  sub_2171F0738(v23, &qword_27CB25000, &unk_21776EA00);
  if (!v2)
  {
    v18 = type metadata accessor for CloudPreviewAsset(0);
    v19 = *(v18 + 20);
    v26 = 1;
    sub_2177516D8();
    OUTLINED_FUNCTION_0_78();
    sub_21751AFC8(v20, v21, MEMORY[0x277CC9268]);
    OUTLINED_FUNCTION_7_46(v3 + v19);
    v22 = *(v18 + 24);
    v26 = 2;
    OUTLINED_FUNCTION_7_46(v3 + v22);
  }

  v15 = OUTLINED_FUNCTION_13_2();
  return v16(v15);
}

void CloudPreviewAsset.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v11 = OUTLINED_FUNCTION_45_0(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_1();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v31[-v16];
  OUTLINED_FUNCTION_18_34(v32);
  v18 = *(v0 + 432);
  OUTLINED_FUNCTION_18_34(v33);
  v33[54] = v18;
  OUTLINED_FUNCTION_104(v33);
  if (v19)
  {
    sub_217753208();
  }

  else
  {
    memcpy(v31, v32, sizeof(v31));
    sub_217753208();
    CloudArtwork.hash(into:)(v2);
    sub_217751DE8();
    sub_217265A08(v2, v18);
  }

  v20 = type metadata accessor for CloudPreviewAsset(0);
  sub_2171F5110(v0 + *(v20 + 20), v17, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v3) == 1)
  {
    sub_217753208();
  }

  else
  {
    (*(v5 + 32))(v9, v17, v3);
    sub_217753208();
    OUTLINED_FUNCTION_0_78();
    v23 = sub_21751AFC8(v21, v22, MEMORY[0x277CC9270]);
    OUTLINED_FUNCTION_84_0(v23);
    v24 = OUTLINED_FUNCTION_13_2();
    v25(v24);
  }

  sub_2171F5110(v0 + *(v20 + 24), v14, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v3) == 1)
  {
    sub_217753208();
  }

  else
  {
    (*(v5 + 32))(v9, v14, v3);
    sub_217753208();
    OUTLINED_FUNCTION_0_78();
    v28 = sub_21751AFC8(v26, v27, MEMORY[0x277CC9270]);
    OUTLINED_FUNCTION_84_0(v28);
    v29 = OUTLINED_FUNCTION_13_2();
    v30(v29);
  }

  OUTLINED_FUNCTION_13();
}

void CloudPreviewAsset.hashValue.getter()
{
  OUTLINED_FUNCTION_12();
  v1 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v9 = OUTLINED_FUNCTION_45_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v25[-v14];
  sub_2177531E8();
  OUTLINED_FUNCTION_18_34(v27);
  v16 = *(v0 + 432);
  OUTLINED_FUNCTION_18_34(v28);
  v28[54] = v16;
  OUTLINED_FUNCTION_104(v28);
  if (v17)
  {
    sub_217753208();
  }

  else
  {
    memcpy(v25, v27, sizeof(v25));
    sub_217753208();
    CloudArtwork.hash(into:)(v26);
    sub_217751DE8();
    sub_217265A08(v26, v16);
  }

  v18 = type metadata accessor for CloudPreviewAsset(0);
  sub_2171F5110(v0 + *(v18 + 20), v15, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v1) == 1)
  {
    sub_217753208();
  }

  else
  {
    (*(v3 + 32))(v7, v15, v1);
    sub_217753208();
    OUTLINED_FUNCTION_0_78();
    v21 = sub_21751AFC8(v19, v20, MEMORY[0x277CC9270]);
    OUTLINED_FUNCTION_15_40(v21);
    (*(v3 + 8))(v7, v1);
  }

  sub_2171F5110(v0 + *(v18 + 24), v12, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v1) == 1)
  {
    sub_217753208();
  }

  else
  {
    (*(v3 + 32))(v7, v12, v1);
    sub_217753208();
    OUTLINED_FUNCTION_0_78();
    v24 = sub_21751AFC8(v22, v23, MEMORY[0x277CC9270]);
    OUTLINED_FUNCTION_15_40(v24);
    (*(v3 + 8))(v7, v1);
  }

  sub_217753238();
  OUTLINED_FUNCTION_13();
}

uint64_t CloudPreviewAsset.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_1();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = v35 - v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28EE8, &qword_217773178);
  OUTLINED_FUNCTION_0_0();
  v38 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = v35 - v13;
  v15 = type metadata accessor for CloudPreviewAsset(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v19 = (v18 - v17);
  v20 = a1[3];
  v42 = a1;
  v21 = __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_21751AE44(v21, v22, v23);
  v39 = v14;
  v24 = v41;
  sub_2177532C8();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v41 = v10;
  v36 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  v44[463] = 0;
  sub_21751AE98(&qword_280BE42D0, &protocol conformance descriptor for <A> CloudAttribute<A>);
  sub_217752E58();
  v25 = v19;
  memcpy(v19, v44, 0x1B8uLL);
  v26 = sub_2177516D8();
  v43 = 1;
  OUTLINED_FUNCTION_0_78();
  v29 = sub_21751AFC8(v27, v28, MEMORY[0x277CC9280]);
  v30 = v41;
  v35[0] = v29;
  v35[1] = v26;
  sub_217752E58();
  sub_21751AF10(v30, v25 + *(v15 + 20));
  v43 = 2;
  v31 = v36;
  sub_217752E58();
  v32 = OUTLINED_FUNCTION_6_52();
  v33(v32);
  sub_21751AF10(v31, v25 + *(v15 + 24));
  sub_217519534(v25, v37);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return sub_217519598(v25);
}

uint64_t sub_21751AAE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2177516D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v15[-v12];
  sub_2177531E8();
  memcpy(v17, v2, sizeof(v17));
  memcpy(v18, v2, sizeof(v18));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v18) == 1)
  {
    sub_217753208();
  }

  else
  {
    memcpy(v16, v17, sizeof(v16));
    sub_217753208();
    sub_2172DE90C(v15);
  }

  sub_2171F5110(v2 + *(a2 + 20), v13, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) == 1)
  {
    sub_217753208();
  }

  else
  {
    (*(v5 + 32))(v7, v13, v4);
    sub_217753208();
    sub_21751AFC8(&qword_27CB24320, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_217751EB8();
    (*(v5 + 8))(v7, v4);
  }

  sub_2171F5110(v2 + *(a2 + 24), v10, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
  {
    sub_217753208();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_217753208();
    sub_21751AFC8(&qword_27CB24320, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_217751EB8();
    (*(v5 + 8))(v7, v4);
  }

  return sub_217753238();
}

unint64_t sub_21751AE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3D98;
  if (!qword_280BE3D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3D98);
  }

  return result;
}

uint64_t sub_21751AE98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB243F0, &qword_21775D690);
    v9 = sub_2172DEF40(v4, v5, v6);
    sub_2172DEF94(v9, v7, v8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21751AF10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21751AFC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21751B038(uint64_t a1)
{
  sub_21751B0BC(319);
  if (v1 <= 0x3F)
  {
    sub_2172E2DB0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21751B0BC(uint64_t a1)
{
  if (!qword_280BE7DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB243F0, &qword_21775D690);
    v1 = sub_2177528F8();
    if (!v2)
    {
      atomic_store(v1, &qword_280BE7DF0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CloudPreviewAsset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21751B200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28EF8;
  if (!qword_27CB28EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28EF8);
  }

  return result;
}

unint64_t sub_21751B258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3D88;
  if (!qword_280BE3D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3D88);
  }

  return result;
}

unint64_t sub_21751B2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3D90;
  if (!qword_280BE3D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3D90);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_40(uint64_t a1)
{

  return sub_217751EB8();
}

void *OUTLINED_FUNCTION_18_34(void *a1)
{

  return memcpy(a1, v1, 0x1B0uLL);
}

uint64_t LegacyModelCodableMusicItemConvertible<>.init(usingLegacyModelCodableResourceFrom:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a5;
  v29 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = a2;
  v11 = *(swift_getAssociatedConformanceWitness() + 8);
  v13 = type metadata accessor for CloudResource(0, AssociatedTypeWitness, v11, v12);
  OUTLINED_FUNCTION_0_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v27 - v20;
  sub_2171FF30C(a1, v31);
  v22 = v31[6];
  CloudResource<>.init(from:)(v31, AssociatedTypeWitness, v11, a4, v30, v21);
  if (!v22)
  {
    (*(v15 + 16))(v18, v21, v13);
    v23 = a1[3];
    v24 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v23);
    Decoder.dataRequestConfiguration.getter(v23, v24);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v25 = Decoder.sharedRelatedItemStore.getter();
    (*(a3 + 24))(v18, v31, v25, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration, v28, a3);
    (*(v15 + 8))(v21, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t LegacyModelCodableMusicItemConvertible<>.encodeLegacyModelCodableResource(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v22 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for CloudResource(0, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8), v10);
  OUTLINED_FUNCTION_0_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  Encoder.dataRequestConfiguration.getter(v17, v18);
  (*(a3 + 32))(v23, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration, a2, a3);
  sub_21733AB9C(v23);
  CloudResource<>.encode(to:)(a1, v11, v21, v22);
  return (*(v13 + 8))(v16, v11);
}

uint64_t CloudQueryParameters.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  result = MEMORY[0x21CEA3550](v3);
  if (v3)
  {
    v5 = *(sub_217751428() - 8);
    v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    sub_2173B8358();
    do
    {
      result = sub_217751EB8();
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t CloudQueryParameters.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  sub_21727D208(v3, v1);
  return sub_217753238();
}

uint64_t sub_21751B880(uint64_t a1)
{
  v2 = *v1;
  sub_2177531E8();
  sub_21727D208(v4, v2);
  return sub_217753238();
}

uint64_t CloudQueryParameters.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB285E8, &qword_2177733C0);
    sub_2174BF708(&qword_27CB285F0, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_217753098();
    sub_2174BEF8C(v8[6]);
    v6 = v5;
    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CloudQueryParameters.encode(to:)(void *a1)
{
  sub_2174BF360(*v1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532E8();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB285E8, &qword_2177733C0);
  sub_2174BF708(&qword_27CB28600, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_2177530F8();

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

unint64_t sub_21751BB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28F00;
  if (!qword_27CB28F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicAPI(_BYTE *result, int a2, int a3)
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

MusicKit::HomeSharingAsset_optional __swiftcall HomeSharingAsset.init(rawStorageDictionary:)(Swift::OpaquePointer rawStorageDictionary)
{
  v2 = v1;
  v3 = sub_21729EBC8(rawStorageDictionary._rawValue);

  sub_2173ACAFC(v3);

  if (!v9)
  {
    LOBYTE(v4) = sub_217380914(v8);
    goto LABEL_5;
  }

  v4 = swift_dynamicCast();
  if (!v4)
  {
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v5 = v7;
LABEL_6:
  *v2 = v5;
  return v4;
}

void HomeSharingAsset.LegacyModelHomeSharingAssetPropertyKey.init(rawValue:)(BOOL *a2@<X8>)
{
  v3 = sub_217752DC8();

  *a2 = v3 != 0;
}

unint64_t sub_21751BDC0@<X0>(void *a1@<X8>)
{
  result = HomeSharingAsset.LegacyModelHomeSharingAssetPropertyKey.rawValue.getter();
  *a1 = 0xD000000000000028;
  a1[1] = v3;
  return result;
}

unint64_t sub_21751BE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE88E8;
  if (!qword_280BE88E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE88E8);
  }

  return result;
}

unint64_t sub_21751BE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172A5284(a1, a2, a3);
  *(a1 + 8) = v4;
  result = sub_21751BE84(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21751BE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28F08;
  if (!qword_27CB28F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F08);
  }

  return result;
}

unint64_t sub_21751BEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28F10;
  if (!qword_27CB28F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F10);
  }

  return result;
}

_BYTE *_s38LegacyModelHomeSharingAssetPropertyKeyOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_21751C000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21751C0BC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21751C03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21751C0BC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_21751C0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28F20;
  if (!qword_27CB28F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F20);
  }

  return result;
}

uint64_t sub_21751C190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21751C24C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21751C1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21751C24C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_21751C24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28F30;
  if (!qword_27CB28F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F30);
  }

  return result;
}

uint64_t sub_21751C2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21751C37C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21751C2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21751C37C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_21751C37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28F40;
  if (!qword_27CB28F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F40);
  }

  return result;
}

uint64_t sub_21751C3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21751C5AC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21751C42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21751C5AC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_21751C4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_0_0();
  v30 = v29;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v23();
  sub_2177532F8();
  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_21751C5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28F50;
  if (!qword_27CB28F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F50);
  }

  return result;
}

uint64_t CloudTrack.id.getter()
{
  v1 = type metadata accessor for CloudMusicVideo(0);
  v2 = OUTLINED_FUNCTION_45_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v5 = v4 - v3;
  v6 = type metadata accessor for CloudSong(0);
  v7 = OUTLINED_FUNCTION_45_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  type metadata accessor for CloudTrack(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_55();
  OUTLINED_FUNCTION_2_80();
  v12 = OUTLINED_FUNCTION_154();
  sub_21751F60C(v12, v13);
  OUTLINED_FUNCTION_204();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_13_37();
    sub_21751F5B4(v0, v5);
    sub_217751DE8();
    v14 = v5;
    v15 = v10;
  }

  else
  {
    sub_21751F5B4(v0, v10);
    sub_217751DE8();
    v14 = v10;
    v15 = type metadata accessor for CloudSong;
  }

  sub_21751CB70(v14, v15);
  return OUTLINED_FUNCTION_154();
}

uint64_t type metadata accessor for CloudTrack(uint64_t a1)
{
  result = qword_27CB28FE0;
  if (!qword_27CB28FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static CloudTrack.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_12();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for CloudMusicVideo(0);
  v27 = OUTLINED_FUNCTION_45_0(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  v31 = type metadata accessor for CloudSong(0);
  v32 = OUTLINED_FUNCTION_45_0(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1();
  v35 = (v34 - v33);
  type metadata accessor for CloudTrack(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_1();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &a9 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28F58, &qword_217773620);
  OUTLINED_FUNCTION_45_0(v43);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v44);
  v46 = &a9 - v45;
  v48 = *(v47 + 56);
  sub_21751F60C(v25, &a9 - v45);
  sub_21751F60C(v23, &v46[v48]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_2_80();
    sub_21751F60C(v46, v39);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_13_37();
      sub_21751F5B4(&v46[v48], v30);
      static CloudMusicVideo.== infix(_:_:)();
      sub_21751CB70(v30, v35);
      v49 = v39;
      v50 = v35;
LABEL_9:
      sub_21751CB70(v49, v50);
      OUTLINED_FUNCTION_11_44();
      sub_21751CB70(v46, v53);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_1_72();
    v52 = v39;
  }

  else
  {
    OUTLINED_FUNCTION_2_80();
    sub_21751F60C(v46, v42);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21751F5B4(&v46[v48], v35);
      static CloudSong.== infix(_:_:)();
      sub_21751CB70(v35, type metadata accessor for CloudSong);
      v49 = v42;
      v50 = type metadata accessor for CloudSong;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_0_79();
    v52 = v42;
  }

  sub_21751CB70(v52, v51);
  sub_2171F0738(v46, &qword_27CB28F58, &qword_217773620);
LABEL_10:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21751CB70(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

void CloudTrack.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v4 = v3;
  v5 = type metadata accessor for CloudMusicVideo(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_55();
  v7 = type metadata accessor for CloudSong(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_6_53();
  type metadata accessor for CloudTrack(v9);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_2_80();
  sub_21751F60C(v0, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_4_71();
    sub_21751F5B4(v13, v1);
    MEMORY[0x21CEA3550](1);
    sub_217751FF8();
    CloudMusicVideo.Attributes.hash(into:)();
    sub_217264574(v4);
    sub_21738C4B0(v1 + *(v5 + 28), v33, &qword_27CB24A90, &unk_21775D5B0);
    if (*&v33[1] == 1)
    {
      sub_217753208();
    }

    else
    {
      memcpy(v32, v33, 0x100uLL);
      sub_217753208();
      sub_217264414(v4, v14, v15, v16, v17, v18, v19, v20);
      sub_217264414(v4, v21, v22, v23, v24, v25, v26, v27);
      sub_2172844EC(v32);
    }

    sub_217264490(v4, *(v1 + *(v5 + 32)), *(v1 + *(v5 + 32) + 8), *(v1 + *(v5 + 32) + 16), *(v1 + *(v5 + 32) + 24));
    OUTLINED_FUNCTION_1_72();
    v29 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_3_68();
    sub_21751F5B4(v13, v2);
    MEMORY[0x21CEA3550](0);
    sub_217751FF8();
    CloudSong.Attributes.hash(into:)();
    sub_21738C4B0(v2 + *(v7 + 24), v33, &qword_27CB24A78, &qword_217759040);
    if (*&v33[1] == 1)
    {
      sub_217753208();
    }

    else
    {
      memcpy(v32, v33, sizeof(v32));
      sub_217753208();
      CloudSong.Relationships.hash(into:)();
      sub_217284234(v32);
    }

    sub_217753208();
    v30 = v2 + *(v7 + 32);
    v31 = *(v30 + 16);
    v33[0] = *v30;
    v33[1] = v31;
    *&v33[2] = *(v30 + 32);
    sub_217263F54();
    OUTLINED_FUNCTION_0_79();
    v29 = v2;
  }

  sub_21751CB70(v29, v28);
  OUTLINED_FUNCTION_13();
}

uint64_t CloudTrack.hashValue.getter()
{
  sub_2177531E8();
  CloudTrack.hash(into:)();
  return sub_217753238();
}

uint64_t sub_21751CF1C(uint64_t a1)
{
  sub_2177531E8();
  CloudTrack.hash(into:)();
  return sub_217753238();
}

void CloudTrack.decodeRawAttributes(from:)()
{
  OUTLINED_FUNCTION_171();
  v24 = v4;
  v5 = type metadata accessor for CloudMusicVideo.Attributes(0);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_55();
  v7 = type metadata accessor for CloudMusicVideo(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v9 = OUTLINED_FUNCTION_60_0();
  v10 = type metadata accessor for CloudSong.Attributes(v9);
  v11 = OUTLINED_FUNCTION_45_0(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v12 = OUTLINED_FUNCTION_37_10();
  v13 = type metadata accessor for CloudSong(v12);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  type metadata accessor for CloudTrack(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  OUTLINED_FUNCTION_2_80();
  sub_21751F60C(v0, v21);
  OUTLINED_FUNCTION_93();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_14_35();
    sub_21751F5B4(v21, v2);
    sub_2171FF30C(v24, v25);
    sub_21751F60C(v2 + *(v7 + 20), v1);
    sub_21738598C();
    OUTLINED_FUNCTION_68_2();
    v22 = v2;
    v23 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_12_34();
    sub_21751F5B4(v21, v17);
    sub_2171FF30C(v24, v25);
    sub_21751F60C(v17 + *(v13 + 20), v3);
    sub_217385938();
    OUTLINED_FUNCTION_68_2();
    v22 = v17;
    v23 = v1;
  }

  sub_21751CB70(v22, v23);
  OUTLINED_FUNCTION_170();
}

void CloudTrack.decodeRawRelationships(from:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_34_0();
  v34 = v3;
  v4 = type metadata accessor for CloudMusicVideo(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_6_53();
  v7 = type metadata accessor for CloudSong(v6);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v9 = OUTLINED_FUNCTION_71_0();
  type metadata accessor for CloudTrack(v9);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  sub_217751DC8();
  OUTLINED_FUNCTION_2_80();
  sub_21751F60C(v2, v13);
  OUTLINED_FUNCTION_154();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_3_68();
    sub_21751F5B4(v13, v1);
    sub_21738C4B0(v1 + *(v7 + 24), v35, &qword_27CB24A78, &qword_217759040);
    if (v36 == 1)
    {
      OUTLINED_FUNCTION_0_79();
      sub_21751CB70(v1, v17);
      v15 = &qword_27CB24A78;
      v16 = &qword_217759040;
      goto LABEL_6;
    }

    sub_2171F0738(v35, &qword_27CB24A78, &qword_217759040);
    sub_2171FF30C(v34, v35);
    OUTLINED_FUNCTION_84();
    v27 = sub_217751DE8();
    v28 = sub_217383824(v27);

    Dictionary<>.init(from:skippingValuesFor:)(v35, v28, v29, v30, v31, v32, v33);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_0_79();
    v26 = v1;
LABEL_9:
    sub_21751CB70(v26, v25);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_71();
  sub_21751F5B4(v13, v0);
  sub_21738C4B0(v0 + *(v4 + 24), v35, &qword_27CB243A8, &unk_217777720);
  if (v36 != 1)
  {

    sub_2171F0738(v35, &qword_27CB243A8, &unk_217777720);
    sub_2171FF30C(v34, v35);
    OUTLINED_FUNCTION_84();
    v18 = sub_217751DE8();
    v19 = sub_217383844(v18);

    Dictionary<>.init(from:skippingValuesFor:)(v35, v19, v20, v21, v22, v23, v24);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_1_72();
    v26 = v0;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_72();
  sub_21751CB70(v0, v14);
  v15 = &qword_27CB243A8;
  v16 = &unk_217777720;
LABEL_6:
  sub_2171F0738(v35, v15, v16);
LABEL_10:
  OUTLINED_FUNCTION_170();
}

void CloudTrack.decodeRawAssociations(from:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_34_0();
  *&v37 = v3;
  v4 = type metadata accessor for CloudMusicVideo(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_6_53();
  v7 = type metadata accessor for CloudSong(v6);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v9 = OUTLINED_FUNCTION_71_0();
  type metadata accessor for CloudTrack(v9);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  sub_217751DC8();
  OUTLINED_FUNCTION_2_80();
  sub_21751F60C(v2, v13);
  OUTLINED_FUNCTION_154();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_3_68();
    sub_21751F5B4(v13, v1);
    if (*(v1 + *(v7 + 28)))
    {
      OUTLINED_FUNCTION_0_79();
      sub_21751CB70(v1, v15);
      goto LABEL_11;
    }

    sub_2171FF30C(v37, &v37 + 8);
    if (qword_27CB23E08 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2C158, v24, v25, v26, v27, v28, v29, v30, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
    Dictionary<>.init(from:skippingValuesFor:)(&v37 + 1, v31, v32, v33, v34, v35, v36);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_0_79();
    v23 = v1;
LABEL_10:
    sub_21751CB70(v23, v22);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_4_71();
  sub_21751F5B4(v13, v0);
  sub_21738C4B0(v0 + *(v4 + 28), &v37 + 8, &qword_27CB24A90, &unk_21775D5B0);
  if (v39 != 1)
  {

    sub_2171F0738(&v37 + 8, &qword_27CB24A90, &unk_21775D5B0);
    sub_2171FF30C(v37, &v37 + 8);
    v16 = sub_217383A2C(&unk_28295F000);
    Dictionary<>.init(from:skippingValuesFor:)(&v37 + 1, v16, v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_1_72();
    v23 = v0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_72();
  sub_21751CB70(v0, v14);
  sub_2171F0738(&v37 + 8, &qword_27CB24A90, &unk_21775D5B0);
LABEL_11:
  OUTLINED_FUNCTION_170();
}

void CloudTrack.decodeRawMetadata(from:skippingValuesFor:)()
{
  OUTLINED_FUNCTION_171();
  v27 = v4;
  v5 = type metadata accessor for CloudMusicVideo(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v7 = OUTLINED_FUNCTION_60_0();
  v8 = type metadata accessor for CloudSong(v7);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v10 = OUTLINED_FUNCTION_71_0();
  type metadata accessor for CloudTrack(v10);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_55();
  sub_217751DC8();
  OUTLINED_FUNCTION_2_80();
  sub_21751F60C(v0, v1);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_3_68();
    v17 = OUTLINED_FUNCTION_85();
    sub_21751F5B4(v17, v18);
    v19 = v3 + *(v8 + 32);
    if (*(v19 + 24) == 1)
    {
      OUTLINED_FUNCTION_0_79();
      v16 = v3;
      goto LABEL_6;
    }

    sub_2171FF30C(v27, v29);
    v26 = *(v19 + 16);
    v30[0] = *v19;
    v30[1] = v26;
    v31 = *(v19 + 32);
    sub_21738C4B0(v30, &v28, &qword_27CB25748, &qword_21775D870);
    sub_217751DE8();
    sub_217387700();
    OUTLINED_FUNCTION_0_79();
    v25 = v3;
LABEL_9:
    sub_21751CB70(v25, v24);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_71();
  v12 = OUTLINED_FUNCTION_204();
  sub_21751F5B4(v12, v13);
  v14 = v2 + *(v5 + 32);
  if (*(v14 + 24) != 1)
  {

    sub_2171FF30C(v27, v29);
    v20 = *(v14 + 16);
    v21 = *(v14 + 24);
    sub_217751DE8();
    v22 = OUTLINED_FUNCTION_154();
    sub_21733C3CC(v22, v23, v20, v21);
    sub_2173878F0();
    OUTLINED_FUNCTION_1_72();
    v25 = v2;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_72();
  v16 = v2;
LABEL_6:
  sub_21751CB70(v16, v15);
LABEL_10:
  OUTLINED_FUNCTION_170();
}

void CloudTrack.mergeAttributes(with:for:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_101();
  v6 = type metadata accessor for CloudMusicVideo(v5);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_6_53();
  v9 = type metadata accessor for CloudSong(v8);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v11 = OUTLINED_FUNCTION_37_10();
  type metadata accessor for CloudTrack(v11);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_2_80();
  sub_21751F60C(v0, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_14_35();
    sub_21751F5B4(v15, v1);
    sub_2173886A0(v1 + *(v6 + 20), v4, v0);
    OUTLINED_FUNCTION_68_2();
    v16 = v1;
    v17 = v9;
  }

  else
  {
    sub_21751F5B4(v15, v2);
    sub_21738864C(v2 + *(v9 + 20), v4, v0);
    OUTLINED_FUNCTION_68_2();
    v16 = v2;
    v17 = type metadata accessor for CloudSong;
  }

  sub_21751CB70(v16, v17);
  OUTLINED_FUNCTION_170();
}

void CloudTrack.mergeRelationships(with:for:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_34_0();
  v5 = OUTLINED_FUNCTION_101();
  v6 = type metadata accessor for CloudMusicVideo(v5);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v8 = OUTLINED_FUNCTION_71_0();
  v9 = type metadata accessor for CloudSong(v8);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v11 = OUTLINED_FUNCTION_37_10();
  type metadata accessor for CloudTrack(v11);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_55();
  if (*(v0 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_2_80();
  sub_21751F60C(v4, v1);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_3_68();
    sub_21751F5B4(v1, v3);
    sub_21738C4B0(v3 + *(v9 + 24), v24, &qword_27CB24A78, &qword_217759040);
    if (v24[2] == 1)
    {
      OUTLINED_FUNCTION_0_79();
      sub_21751CB70(v3, v18);
      v16 = &qword_27CB24A78;
      v17 = &qword_217759040;
      goto LABEL_8;
    }

    memcpy(v25, v24, 0x600uLL);
    OUTLINED_FUNCTION_27_4();
    sub_2173888E8();
    sub_217284234(v25);
    OUTLINED_FUNCTION_0_79();
    v23 = v3;
LABEL_11:
    sub_21751CB70(v23, v22);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_4_71();
  v13 = OUTLINED_FUNCTION_85();
  sub_21751F5B4(v13, v14);
  sub_21738C4B0(v2 + *(v6 + 24), v24, &qword_27CB243A8, &unk_217777720);
  if (v24[2] != 1)
  {

    memcpy(v25, v24, 0x300uLL);
    OUTLINED_FUNCTION_27_4();
    sub_217388950(v19, v20, v21);
    sub_21726A3FC(v25);
    OUTLINED_FUNCTION_1_72();
    v23 = v2;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1_72();
  sub_21751CB70(v2, v15);
  v16 = &qword_27CB243A8;
  v17 = &unk_217777720;
LABEL_8:
  sub_2171F0738(v24, v16, v17);
LABEL_12:
  OUTLINED_FUNCTION_170();
}

void CloudTrack.mergeAssociations(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_34_0();
  v35 = v15;
  v16 = OUTLINED_FUNCTION_101();
  v17 = type metadata accessor for CloudMusicVideo(v16);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v19 = OUTLINED_FUNCTION_71_0();
  v20 = type metadata accessor for CloudSong(v19);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v22 = OUTLINED_FUNCTION_37_10();
  type metadata accessor for CloudTrack(v22);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_55();
  if (*(v10 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_2_80();
  sub_21751F60C(v14, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_4_71();
    v24 = OUTLINED_FUNCTION_85();
    sub_21751F5B4(v24, v25);
    sub_21738C4B0(v12 + *(v17 + 28), v36, &qword_27CB24A90, &unk_21775D5B0);
    if (v36[2] == 1)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21751CB70(v12, v26);
      sub_2171F0738(v36, &qword_27CB24A90, &unk_21775D5B0);
    }

    else
    {

      memcpy(v37, v36, 0x100uLL);
      OUTLINED_FUNCTION_27_4();
      sub_217388CF8(v27, v28, v29);
      sub_2172844EC(v37);
      OUTLINED_FUNCTION_1_72();
      sub_21751CB70(v12, v30);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_68();
    sub_21751F5B4(v11, v13);
    if ((*(v13 + *(v20 + 28)) & 1) == 0)
    {

      sub_2171FF30C(v35, v37);
      v31 = sub_2174D5760(v37);
      if (!a10)
      {
        v32 = v31;
        v33 = sub_217751DE8();
        sub_2174D37FC(v33, v32);
      }
    }

    OUTLINED_FUNCTION_0_79();
    sub_21751CB70(v13, v34);
  }

  OUTLINED_FUNCTION_170();
}

void CloudTrack.mergeMetadata(with:for:)()
{
  OUTLINED_FUNCTION_171();
  v33 = v5;
  v6 = OUTLINED_FUNCTION_101();
  v7 = type metadata accessor for CloudMusicVideo(v6);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v9 = OUTLINED_FUNCTION_60_0();
  v10 = type metadata accessor for CloudSong(v9);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_6_53();
  type metadata accessor for CloudTrack(v12);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_55();
  if (*(v0 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_2_80();
  sub_21751F60C(v0, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_4_71();
    v14 = OUTLINED_FUNCTION_204();
    sub_21751F5B4(v14, v15);
    v16 = v3 + *(v7 + 32);
    v17 = *(v16 + 24);
    if (v17 != 1)
    {
      v20 = *(v16 + 16);
      v22 = *v16;
      v21 = *(v16 + 8);
      sub_217221020(*v16);
      sub_217751DE8();

      sub_2171FF30C(v33, v34);
      v23 = sub_2174D5C54(v22, v21, v20 & 1, v17, v34);
      if (!v1)
      {
        v29 = v23;
        v30 = sub_217751DE8();
        sub_2174D37FC(v30, v29);
      }
    }

    OUTLINED_FUNCTION_1_72();
    v25 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_3_68();
    sub_21751F5B4(v2, v4);
    v18 = v4 + *(v10 + 32);
    v19 = *(v18 + 24);
    if (v19 != 1)
    {
      v26 = *(v18 + 32);
      v27 = *(v18 + 16);
      v35 = *v18;
      v36 = v27 & 1;
      v37 = v19;
      v38 = v26;
      sub_217221020(v35);
      sub_217751DE8();
      sub_217751DE8();

      sub_2171FF30C(v33, v34);
      v28 = sub_2174D5DD4(&v35);
      if (!v1)
      {
        v31 = v28;
        v32 = sub_217751DE8();
        sub_2174D37FC(v32, v31);
      }
    }

    OUTLINED_FUNCTION_0_79();
    v25 = v4;
  }

  sub_21751CB70(v25, v24);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_21751E33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21751F560(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21751E378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21751F560(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudTrack.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v50 = sub_217752B38();
  OUTLINED_FUNCTION_0_0();
  v52 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v51 = v7 - v6;
  v8 = OUTLINED_FUNCTION_206();
  v9 = type metadata accessor for CloudMusicVideo(v8);
  v10 = OUTLINED_FUNCTION_45_0(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v53 = v12 - v11;
  v13 = OUTLINED_FUNCTION_206();
  v14 = type metadata accessor for CloudSong(v13);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28F60, &qword_217773628);
  OUTLINED_FUNCTION_0_0();
  v54 = v20;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_71_0();
  v23 = type metadata accessor for CloudTrack(v22);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1();
  v27 = v26 - v25;
  v28 = v3;
  v29 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_21751F560(v29, v30, v31);
  v32 = sub_2177532C8();
  if (!v0)
  {
    v49 = v27;
    v60 = v23;
    sub_21733BE84(v32, v33, v34);
    sub_217752EA8();
    v35 = v55;
    v36 = v56;
    v37 = v57;
    if (qword_280BE7620 != -1)
    {
      swift_once();
    }

    if (static Array<A>.~= infix(_:_:)(off_280BE7628, &v55))
    {
      goto LABEL_12;
    }

    if (qword_280BE24E8 != -1)
    {
      swift_once();
    }

    v38 = qword_280BE24F0 == v35 && *algn_280BE24F8 == v36;
    if (v38 || (sub_217753058() & 1) != 0)
    {
LABEL_12:

      sub_2171FF30C(v28, &v55);
      CloudSong.init(from:)();
      (*(v54 + 8))(v1, v19);
      OUTLINED_FUNCTION_3_68();
      sub_21751F5B4(v18, v49);
    }

    else
    {
      if (qword_280BE6EA0 != -1)
      {
        swift_once();
      }

      v55 = v35;
      v56 = v36;
      v57 = v37;
      if (!static Array<A>.~= infix(_:_:)(off_280BE6EA8, &v55))
      {
        if (qword_280BE6EC8 != -1)
        {
          swift_once();
        }

        v41 = qword_280BE6ED0 == v35 && *algn_280BE6ED8 == v36;
        if (!v41 && (sub_217753058() & 1) == 0)
        {
          __swift_project_boxed_opaque_existential_1(v28, v28[3]);
          OUTLINED_FUNCTION_204();
          sub_217753298();
          v55 = 0;
          v56 = 0xE000000000000000;
          sub_217752AA8();

          v55 = 0xD000000000000011;
          v56 = 0x80000002177ADC50;
          v58 = 34;
          v59 = 0xE100000000000000;
          MEMORY[0x21CEA23B0](v35, v36, v42);
          MEMORY[0x21CEA23B0](34, 0xE100000000000000);

          MEMORY[0x21CEA23B0](v58, v59, v43);

          MEMORY[0x21CEA23B0](0xD00000000000001DLL, 0x80000002177AFE10, v44);
          sub_217752B08();
          v45 = sub_217752B48();
          swift_allocError();
          v47 = v46;
          v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
          *v47 = v60;
          (*(v52 + 16))(v47 + v48, v51, v50);
          (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
          swift_willThrow();
          (*(v52 + 8))(v51, v50);
          (*(v54 + 8))(v1, v19);
          goto LABEL_14;
        }
      }

      sub_2171FF30C(v28, &v55);
      CloudMusicVideo.init(from:)();
      (*(v54 + 8))(v1, v19);
      OUTLINED_FUNCTION_4_71();
      sub_21751F5B4(v53, v49);
    }

    swift_storeEnumTagMultiPayload();
    v39 = OUTLINED_FUNCTION_154();
    sub_21751F5B4(v39, v40);
  }

LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudTrack.encode(to:)()
{
  v3 = OUTLINED_FUNCTION_101();
  v4 = type metadata accessor for CloudMusicVideo(v3);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_55();
  v6 = type metadata accessor for CloudSong(0);
  v7 = OUTLINED_FUNCTION_45_0(v6);
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_6_53();
  type metadata accessor for CloudTrack(v8);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_2_80();
  sub_21751F60C(v0, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21751F5B4(v12, v1);
    CloudMusicVideo.encode(to:)();
    v13 = OUTLINED_FUNCTION_204();
  }

  else
  {
    OUTLINED_FUNCTION_12_34();
    sub_21751F5B4(v12, v2);
    CloudSong.encode(to:)();
    v13 = v2;
    v14 = v1;
  }

  return sub_21751CB70(v13, v14);
}

void Track.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  v109 = v0;
  v110 = v1;
  v3 = v2;
  v111 = v4;
  v6 = v5;
  v113 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_1();
  v102 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v100 = &v91 - v13;
  v14 = OUTLINED_FUNCTION_206();
  v15 = type metadata accessor for CloudMusicVideo(v14);
  v16 = OUTLINED_FUNCTION_45_0(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v104 = (v18 - v17);
  v112 = v3;
  v108 = *(v3 - 8);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v107 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_1();
  v101 = v24 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v91 - v27;
  v29 = type metadata accessor for CloudSong(0);
  v30 = OUTLINED_FUNCTION_45_0(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1();
  v103 = (v32 - v31);
  v33 = OUTLINED_FUNCTION_206();
  type metadata accessor for CloudTrack(v33);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_1();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v91 - v39;
  v41 = v6;
  sub_21751F60C(v6, &v91 - v39);
  v105 = v40;
  sub_21751F60C(v40, v37);
  OUTLINED_FUNCTION_204();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_4_71();
    v103 = v42;
    v43 = v104;
    sub_21751F5B4(v37, v104);
    v44 = v100;
    sub_21751F60C(v43, v100);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
    v46 = v45[10];
    v47 = v6 + v45[9];
    v48 = *v47;
    v98 = *(v47 + 8);
    v49 = v98;
    LODWORD(v93) = *(v47 + 16);
    v50 = v6 + v46;
    v51 = *(v6 + v46);
    v52 = *(v50 + 8);
    v94 = v48;
    v95 = v51;
    v96 = v52;
    v92 = v45[11];
    memcpy(v116, (v41 + v92), 0x180uLL);
    v53 = v45[13];
    v97 = *(v41 + v45[12]);
    v54 = v97;
    v55 = *(v41 + v53);
    v56 = v45[15];
    v99 = *(v41 + v45[14]);
    v57 = v99;
    v101 = *(v41 + v56);
    v58 = v101;
    v59 = v44 + v8[9];
    *v59 = v94;
    *(v59 + 8) = v49;
    *(v59 + 16) = v93;
    v60 = (v44 + v8[10]);
    *v60 = v95;
    v60[1] = v52;
    memcpy((v44 + v8[11]), (v41 + v92), 0x180uLL);
    *(v44 + v8[12]) = v54;
    *(v44 + v8[13]) = v55;
    *(v44 + v8[14]) = v57;
    *(v44 + v8[15]) = v58;
    sub_21738C4B0(v44, v102, &qword_27CB24808, &qword_217758D90);
    v61 = v108;
    v63 = v111;
    v62 = v112;
    (*(v108 + 16))(v107, v111, v112);
    sub_217751DE8();
    sub_217751DE8();
    sub_21738C4B0(v116, v114, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    MusicVideo.init<A>(_:configuration:sharedRelatedItemStore:)();
    (*(v61 + 8))(v63, v62);
    sub_2171F0738(v41, &qword_27CB24820, &unk_2177650E0);
    sub_2171F0738(v44, &qword_27CB24808, &qword_217758D90);
    v65 = v103;
    v64 = v104;
  }

  else
  {
    OUTLINED_FUNCTION_3_68();
    v104 = v66;
    sub_21751F5B4(v37, v103);
    v67 = OUTLINED_FUNCTION_85();
    sub_21751F60C(v67, v68);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
    v70 = v69[10];
    v71 = v6 + v69[9];
    v72 = *v71;
    v99 = *(v71 + 8);
    v73 = v99;
    LODWORD(v94) = *(v71 + 16);
    v74 = v6 + v70;
    v75 = *(v6 + v70);
    v76 = *(v74 + 8);
    v95 = v72;
    v96 = v75;
    v97 = v76;
    v93 = v69[11];
    memcpy(v116, (v6 + v93), 0x180uLL);
    v77 = v69[13];
    v98 = *(v6 + v69[12]);
    v78 = v98;
    v79 = *(v6 + v77);
    v80 = v69[15];
    v100 = *(v6 + v69[14]);
    v81 = v100;
    v102 = *(v6 + v80);
    v82 = v102;
    v83 = &v28[v22[9]];
    *v83 = v95;
    *(v83 + 1) = v73;
    v83[16] = v94;
    v84 = &v28[v22[10]];
    *v84 = v96;
    *(v84 + 1) = v76;
    memcpy(&v28[v22[11]], (v6 + v93), 0x180uLL);
    *&v28[v22[12]] = v78;
    *&v28[v22[13]] = v79;
    *&v28[v22[14]] = v81;
    *&v28[v22[15]] = v82;
    sub_21738C4B0(v28, v101, &qword_27CB24748, &unk_217758CD0);
    v85 = v108;
    v87 = v111;
    v86 = v112;
    (*(v108 + 16))(v107, v111, v112);
    sub_217751DE8();
    sub_217751DE8();
    sub_21738C4B0(v116, v114, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    Song.init<A>(_:configuration:sharedRelatedItemStore:)();
    (*(v85 + 8))(v87, v86);
    sub_2171F0738(v6, &qword_27CB24820, &unk_2177650E0);
    sub_2171F0738(v28, &qword_27CB24748, &unk_217758CD0);
    v64 = v103;
    v65 = v104;
  }

  sub_21751CB70(v64, v65);
  OUTLINED_FUNCTION_11_44();
  sub_21751CB70(v105, v88);
  v89 = v114[1];
  v90 = v113;
  *v113 = v114[0];
  v90[1] = v89;
  v90[2] = v114[2];
  *(v90 + 6) = v115;
  *(v90 + 56) = EnumCaseMultiPayload == 1;
  OUTLINED_FUNCTION_13();
}

void Track.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  sub_217275710(v0, v38);
  if (v38[56])
  {
    OUTLINED_FUNCTION_8_2();
    MusicVideo.convertToCloudResource<A>(configuration:)();
    sub_217283C08(v37);
    OUTLINED_FUNCTION_4_71();
    sub_21751F5B4(v6, v2);
    type metadata accessor for CloudTrack(0);
    swift_storeEnumTagMultiPayload();
    v11 = &v6[v3[9]];
    v12 = *v11;
    v13 = *(v11 + 1);
    v14 = v11[16];
    v15 = *&v6[v3[12]];
    v35 = v3[11];
    v36 = v15;
    v34 = *&v6[v3[13]];
    v16 = *&v6[v3[15]];
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
    v18 = v2 + *(v17 + 36);
    *v18 = v12;
    *(v18 + 8) = v13;
    *(v18 + 16) = v14;
    v19 = OUTLINED_FUNCTION_23_35(v17);
    memcpy(v19, &v6[v20], 0x180uLL);
    OUTLINED_FUNCTION_18_35();
    *(v2 + v21) = v16;
  }

  else
  {
    OUTLINED_FUNCTION_8_2();
    Song.convertToCloudResource<A>(configuration:)();
    sub_217283B58(v37);
    OUTLINED_FUNCTION_3_68();
    sub_21751F5B4(v10, v2);
    type metadata accessor for CloudTrack(0);
    swift_storeEnumTagMultiPayload();
    v22 = &v10[v7[9]];
    v23 = *v22;
    v24 = *(v22 + 1);
    v25 = v22[16];
    v26 = *&v10[v7[12]];
    v35 = v7[11];
    v36 = v26;
    v34 = *&v10[v7[13]];
    v27 = *&v10[v7[15]];
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
    v29 = v2 + *(v28 + 36);
    *v29 = v23;
    *(v29 + 8) = v24;
    *(v29 + 16) = v25;
    v30 = OUTLINED_FUNCTION_23_35(v28);
    memcpy(v30, &v10[v31], 0x180uLL);
    OUTLINED_FUNCTION_18_35();
    *(v2 + v32) = v27;
  }

  OUTLINED_FUNCTION_13();
}

unint64_t sub_21751F560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28F68;
  if (!qword_27CB28F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F68);
  }

  return result;
}

uint64_t sub_21751F5B4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v4(v3);
  OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return a2;
}

uint64_t sub_21751F60C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v4(v3);
  OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return a2;
}

unint64_t sub_21751F668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28F70;
  if (!qword_27CB28F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F70);
  }

  return result;
}

unint64_t sub_21751F6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28F78;
  if (!qword_27CB28F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F78);
  }

  return result;
}

unint64_t sub_21751F718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28F80;
  if (!qword_27CB28F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F80);
  }

  return result;
}

unint64_t sub_21751F770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28F88;
  if (!qword_27CB28F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F88);
  }

  return result;
}

unint64_t sub_21751F7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28F90;
  if (!qword_27CB28F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F90);
  }

  return result;
}

unint64_t sub_21751F820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28F98;
  if (!qword_27CB28F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F98);
  }

  return result;
}

unint64_t sub_21751F878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28FA0;
  if (!qword_27CB28FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28FA0);
  }

  return result;
}

unint64_t sub_21751F8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28FA8;
  if (!qword_27CB28FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28FA8);
  }

  return result;
}

unint64_t sub_21751F928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28FB0;
  if (!qword_27CB28FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28FB0);
  }

  return result;
}

unint64_t sub_21751F980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28FB8;
  if (!qword_27CB28FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28FB8);
  }

  return result;
}

unint64_t sub_21751F9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28FC0;
  if (!qword_27CB28FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28FC0);
  }

  return result;
}

unint64_t sub_21751FA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28FC8;
  if (!qword_27CB28FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28FC8);
  }

  return result;
}

uint64_t sub_21751FAEC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CloudTrack(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21751FB30(uint64_t a1)
{
  result = type metadata accessor for CloudSong(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CloudMusicVideo(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *sub_21751FBE4(_BYTE *result, int a2, int a3)
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

unint64_t sub_21751FCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28FF0;
  if (!qword_27CB28FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28FF0);
  }

  return result;
}

unint64_t sub_21751FD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28FF8;
  if (!qword_27CB28FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28FF8);
  }

  return result;
}

unint64_t sub_21751FD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29000;
  if (!qword_27CB29000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29000);
  }

  return result;
}

unint64_t sub_21751FDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29008;
  if (!qword_27CB29008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29008);
  }

  return result;
}

unint64_t sub_21751FE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29010;
  if (!qword_27CB29010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29010);
  }

  return result;
}

unint64_t sub_21751FE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29018;
  if (!qword_27CB29018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29018);
  }

  return result;
}

unint64_t sub_21751FEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29020;
  if (!qword_27CB29020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29020);
  }

  return result;
}

unint64_t sub_21751FF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29028;
  if (!qword_27CB29028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29028);
  }

  return result;
}

unint64_t sub_21751FF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29030;
  if (!qword_27CB29030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29030);
  }

  return result;
}

unint64_t sub_21751FFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29038;
  if (!qword_27CB29038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29038);
  }

  return result;
}

unint64_t sub_217520044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29040;
  if (!qword_27CB29040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29040);
  }

  return result;
}

void OUTLINED_FUNCTION_18_35()
{
  *(v0 + v1[12]) = *(v3 - 216);
  *(v0 + v1[13]) = *(v3 - 232);
  *(v0 + v1[14]) = v2;
}

uint64_t SharedInstanceManager.__allocating_init(_:)()
{
  OUTLINED_FUNCTION_143();
  v0 = swift_allocObject();
  SharedInstanceManager.init(_:)();
  return v0;
}

uint64_t sub_2175201C0()
{
  v1 = sub_217752338();
  sub_21720BA74();
  sub_21720BA7C();

  return v1;
}

void sub_21752024C(uint64_t a1, uint64_t *a2)
{
  v40 = a1;
  v3 = *a2;
  v4 = *(*a2 + 88);
  v39 = sub_2177528F8();
  v32 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v6 = &v30 - v5;
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v7);
  v38 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v30 - v10;
  v11 = *(v3 + 80);
  v12 = *(v11 - 8);
  v31 = *(v12 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  sub_21720BEDC(v16, v17);
  v18 = *(v3 + 96);
  v19 = sub_217751E08();

  v45 = v19;
  v20 = sub_217752418();
  sub_217751DF8();
  swift_getWitnessTable();
  v36 = v20;
  sub_2177523B8();
  v43 = a2;
  sub_21720C114(v21, &v45);
  v44 = v45;
  v42 = type metadata accessor for WeakValuesDictionary(0, v11, v4, v18);
  v22 = WeakValuesDictionary.keys.getter(v42);

  sub_217751DE8();
  v23 = sub_2177522A8();

  v45 = v23;
  if (v23 == sub_217752388())
  {
LABEL_2:

    return;
  }

  v41 = (v12 + 16);
  v34 = (v33 + 2);
  v35 = (v33 + 4);
  ++v32;
  ++v33;
  while (1)
  {
    v24 = sub_217752358();
    sub_2177522D8();
    if ((v24 & 1) == 0)
    {
      break;
    }

    (*(v12 + 16))(v15, v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v23, v11);
LABEL_6:
    sub_2177523E8();
    sub_21720C114(v25, &v44);
    WeakValuesDictionary.subscript.getter();

    (*(v12 + 8))(v15, v11, v26);
    if (__swift_getEnumTagSinglePayload(v6, 1, v4) == 1)
    {
      (*v32)(v6, v39);
    }

    else
    {
      v27 = v37;
      (*v35)(v37, v6, v4);
      (*v34)(v38, v27, v4);
      sub_2177523C8();
      (*v33)(v27, v4);
    }

    v28 = sub_217752388();
    v23 = v45;
    if (v45 == v28)
    {
      goto LABEL_2;
    }
  }

  v29 = sub_217752AC8();
  if (v31 == 8)
  {
    v44 = v29;
    (*v41)(v15, &v44, v11);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_21752074C()
{
  OUTLINED_FUNCTION_143();
  sub_21720BA74();
  sub_21720BA7C();
}

uint64_t sub_217520818(uint64_t *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v34 = a4;
  v39 = a3;
  v5 = *a1;
  v6 = *(*a1 + 80);
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v35 = &v31 - v7;
  v8 = *(v5 + 88);
  v9 = sub_2177528F8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v36 = &v31 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  sub_21720BEDC(v17, v18);
  v19 = *(v5 + 96);
  v37 = a2;
  v38 = v6;
  sub_217751E68();

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v8);
  v21 = *(v10 + 8);
  v22 = v9;
  result = v21(v16, v9);
  if (EnumTagSinglePayload == 1)
  {
    v25 = v39;
    sub_21720C114(v24, v40);
    v26 = type metadata accessor for WeakValuesDictionary(0, v38, v8, v19);
    v27 = v36;
    v28 = v37;
    v31 = v26;
    WeakValuesDictionary.subscript.getter();

    v29 = __swift_getEnumTagSinglePayload(v27, 1, v8);
    result = v21(v27, v22);
    if (v29 == 1)
    {
      (*(v32 + 16))(v35, v28, v38);
      v30 = v33;
      (*(*(v8 - 8) + 16))(v33, v34, v8);
      __swift_storeEnumTagSinglePayload(v30, 0, 1, v8);
      swift_beginAccess();
      WeakValuesDictionary.subscript.setter();
      return swift_endAccess();
    }

    else
    {
      *v25 = 1;
    }
  }

  else
  {
    *v39 = 1;
  }

  return result;
}

void sub_217520B98(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v30 = v25 - v6;
  v29 = *(v3 + 88);
  v7 = sub_2177528F8();
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  sub_217212474(v13, v14);
  v15 = *(v3 + 96);
  sub_217751E68();

  v19 = v33;
  if (v34)
  {
    v19 = 0;
  }

  v20 = v19 - 1;
  if (__OFSUB__(v19, 1))
  {
    __break(1u);
  }

  else if (v20 <= 0)
  {
    sub_21720BEDC(v16, v17);
    v25[0] = v12;
    sub_217751E68();

    swift_beginAccess();
    sub_217751E38();
    sub_217751DB8();
    v22 = v27;
    v21 = v28;
    v23 = *(v27 + 8);
    v25[1] = v27 + 8;
    v26 = v23;
    v23(v9, v28);
    swift_endAccess();
    (*(v5 + 16))(v30, a2, v4);
    v24 = v25[0];
    (*(v22 + 16))(v9, v25[0], v21);
    swift_beginAccess();
    type metadata accessor for WeakValuesDictionary(0, v4, v29, v15);
    WeakValuesDictionary.subscript.setter();
    swift_endAccess();
    swift_beginAccess();
    sub_217751E38();
    sub_217751DB8();
    swift_endAccess();
    v26(v24, v21);
  }

  else
  {
    (*(v5 + 16))(v30, a2, v4, v18);
    v31 = v20;
    v32 = 0;
    swift_beginAccess();
    sub_217751E38();
    sub_217751E78();
    swift_endAccess();
  }
}

uint64_t SharedInstanceManager.deinit()
{

  return v0;
}

uint64_t SharedInstanceManager.__deallocating_deinit()
{
  SharedInstanceManager.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t static CloudArtist.== infix(_:_:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_169();
  v4 = *v3 == *v1 && *(v2 + 8) == v1[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for CloudArtist(0);
  static CloudArtist.Attributes.== infix(_:_:)();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5[6];
  OUTLINED_FUNCTION_95_13(v2 + v7, v23);
  OUTLINED_FUNCTION_95_13(v1 + v7, v25);
  if (v24 != 1)
  {
    sub_2172E3D54();
    if (*&v25[16] != 1)
    {
      memcpy(v21, v25, 0x380uLL);
      v10 = static CloudArtist.Relationships.== infix(_:_:)();
      sub_21726A204(v21);
      sub_21726A204(v22);
      sub_2171F0738(v23, &qword_27CB24328, &unk_21775D440);
      if (!v10)
      {
        return 0;
      }

      goto LABEL_14;
    }

    sub_21726A204(v22);
LABEL_12:
    v8 = &unk_27CB29048;
    v9 = &unk_217773E58;
LABEL_20:
    sub_2171F0738(v23, v8, v9);
    return 0;
  }

  if (*&v25[16] != 1)
  {
    goto LABEL_12;
  }

  sub_2171F0738(v23, &qword_27CB24328, &unk_21775D440);
LABEL_14:
  v11 = v5[7];
  OUTLINED_FUNCTION_95_13(v2 + v11, v23);
  OUTLINED_FUNCTION_95_13(v1 + v11, &v25[512]);
  if (v24 == 1)
  {
    if (*&v25[528] == 1)
    {
      sub_2171F0738(v23, &qword_27CB24AB0, &qword_217759088);
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  sub_2172E3D54();
  if (*&v25[528] == 1)
  {
    sub_21728463C(v22);
LABEL_19:
    v8 = &unk_27CB29050;
    v9 = &unk_217773E60;
    goto LABEL_20;
  }

  memcpy(v21, &v25[512], sizeof(v21));
  v14 = static CloudArtist.Associations.== infix(_:_:)();
  sub_21728463C(v21);
  sub_21728463C(v22);
  sub_2171F0738(v23, &qword_27CB24AB0, &qword_217759088);
  if (v14)
  {
LABEL_24:
    v15 = v5[8];
    v16 = *(v2 + v15);
    v12 = *(v1 + v15);
    if (v16 == 1)
    {
      sub_217221020(1);
      if (v12 == 1)
      {
        sub_217221020(1);
        sub_217221010(1);
        return v12;
      }

      sub_217221020(v12);
      goto LABEL_30;
    }

    if (v12 == 1)
    {
      sub_217221020(v16);
      sub_217221020(1);
      sub_217221020(v16);

LABEL_30:
      sub_217221010(v16);
      v17 = v12;
LABEL_41:
      sub_217221010(v17);
      return 0;
    }

    if (v16)
    {
      if (v12)
      {
        sub_217221020(v16);
        sub_217221020(v12);
        sub_217221020(v16);
        sub_217221020(v12);
        sub_21726F358();
        v19 = v18;
        sub_217221010(v12);
        sub_217221010(v12);
        if ((v19 & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_37:

        sub_217221010(v16);
        return 1;
      }

      sub_217221020(v16);
      v20 = v16;
    }

    else
    {
      sub_217221020(0);
      v20 = 0;
      if (!v12)
      {
        sub_217221020(0);
        sub_217221020(0);
        sub_217221010(0);
        goto LABEL_37;
      }
    }

    sub_217221020(v12);
    sub_217221020(v20);
    sub_217221010(v12);
LABEL_40:

    v17 = v16;
    goto LABEL_41;
  }

  return 0;
}

void CloudArtist.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  type metadata accessor for CloudArtist.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29058, &qword_217773E68);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v8 = type metadata accessor for CloudArtist(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v34 = (v12 - v11);
  v35 = *(v10 + 32);
  *(v12 - v11 + v35) = 1;
  v13 = OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_21752AD18(v13, v14, v15);
  v16 = sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_217221010(*(v34 + v35));
  }

  else
  {
    sub_2172E1C68(v16, v17, v18);
    OUTLINED_FUNCTION_29_29();
    OUTLINED_FUNCTION_56_14();
    sub_217752EA8();
    v19 = v36[1];
    *v34 = v36[0];
    v34[1] = v19;
    LOBYTE(v36[0]) = 1;
    OUTLINED_FUNCTION_49_21();
    sub_21752AF24(v20);
    sub_217752EA8();
    v21 = sub_21752AD6C(v6, v34 + v8[5]);
    sub_21752ADD0(v21, v22, v23);
    OUTLINED_FUNCTION_29_29();
    sub_217752E58();
    v24 = memcpy(v34 + v8[6], v36, 0x380uLL);
    sub_21752AE24(v24, v25, v26);
    OUTLINED_FUNCTION_29_29();
    sub_217752E58();
    v27 = memcpy(v34 + v8[7], v36, 0x580uLL);
    sub_21752AE78(v27, v28, v29);
    OUTLINED_FUNCTION_29_29();
    sub_217752E58();
    v30 = OUTLINED_FUNCTION_55_17();
    v31(v30);
    v32 = v36[0];
    sub_217221010(*(v34 + v35));
    *(v34 + v35) = v32;
    OUTLINED_FUNCTION_6_54();
    sub_21752BBD4();
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_14_36();
    sub_21752AECC(v34, v33);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t CloudArtist.encode(to:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29060, &qword_217773E70);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_67_1();
  v6 = OUTLINED_FUNCTION_160(a1, a1[3]);
  v9 = sub_21752AD18(v6, v7, v8);
  v11 = OUTLINED_FUNCTION_105(&type metadata for CloudArtist.CodingKeys, v10, v9);
  sub_2172E1B18(v11, v12, v13);
  OUTLINED_FUNCTION_44_2();
  sub_217752F88();
  if (!v2)
  {
    v14 = type metadata accessor for CloudArtist(0);
    type metadata accessor for CloudArtist.Attributes(0);
    OUTLINED_FUNCTION_49_21();
    sub_21752AF24(v15);
    OUTLINED_FUNCTION_42_1();
    v16 = sub_217752F88();
    sub_21733C2D0(v16, v17, v18);
    OUTLINED_FUNCTION_44_2();
    v19 = sub_217752F38();
    sub_21733C27C(v19, v20, v21);
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
    v28 = *(v3 + *(v14 + 32));
    v22 = sub_217221020(v28);
    sub_2174C74A0(v22, v23, v24);
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
    sub_217221010(v28);
  }

  v25 = OUTLINED_FUNCTION_113_3();
  return v26(v25);
}

void Artist.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0);
  v417 = v1;
  v409 = v2;
  v410 = v3;
  v407 = v5;
  v408 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v389 = &v374 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25670, &unk_21775D6A0);
  OUTLINED_FUNCTION_45_0(v11);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v383 = &v374 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v374 = (&v374 - v16);
  v415 = type metadata accessor for CloudArtist(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v418 = v19 - v18;
  v20 = type metadata accessor for ArtistPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v24 = (v23 - v22);
  if (qword_280BE6270 != -1)
  {
    swift_once();
  }

  v429 = 0u;
  v430 = 0u;
  v431 = 0u;
  v432 = 0u;
  v433 = 0u;
  v434 = 0u;
  v435 = 0u;
  v436 = 0;
  sub_2172DA77C();
  memcpy(v438, v423, sizeof(v438));
  v411 = v423[35];
  memcpy(v437, &v423[36], sizeof(v437));
  v25 = v14[10];
  v26 = (v7 + v14[9]);
  v27 = *v26;
  v28 = v26[1];
  v413 = v7;
  v414 = v27;
  LODWORD(v382) = *(v26 + 16);
  v29 = *(v7 + v25 + 8);
  v381 = *(v7 + v25);
  v30 = *(v7 + v14[12]);
  v378 = *(v7 + v14[13]);
  v31 = v14[15];
  v32 = *(v7 + v14[14]);
  v376 = v29;
  v377 = v32;
  v33 = *(v7 + v31);
  sub_2172A497C(v439);
  memcpy(v24, v439, 0x221uLL);
  v34 = v20[6];
  v35 = sub_2177516D8();
  v384 = v34;
  OUTLINED_FUNCTION_15_10(&v24[v34]);
  v36 = &v24[v20[8]];
  *v36 = xmmword_2177586D0;
  *(v36 + 1) = 0u;
  *(v36 + 2) = 0u;
  *(v36 + 3) = 0u;
  v385 = v36;
  v24[v20[14]] = 2;
  memcpy(&v24[v20[15]], v439, 0x221uLL);
  v37 = v20[17];
  v386 = v35;
  v387 = v37;
  OUTLINED_FUNCTION_15_10(&v24[v37]);
  OUTLINED_FUNCTION_45_22(v20[18]);
  OUTLINED_FUNCTION_45_22(v20[19]);
  OUTLINED_FUNCTION_45_22(v20[20]);
  OUTLINED_FUNCTION_45_22(v20[21]);
  v416 = v24;
  v38 = v20[22];
  sub_2177517D8();
  v39 = v416 + v38;
  v40 = v416;
  OUTLINED_FUNCTION_15_10(v39);
  *(v40 + v20[23]) = 3;
  OUTLINED_FUNCTION_15_10(v40 + v20[24]);
  OUTLINED_FUNCTION_45_22(v20[25]);
  v41 = v40 + v20[26];
  *(v41 + 12) = 0;
  *(v41 + 4) = 0u;
  *(v41 + 5) = 0u;
  *(v41 + 2) = 0u;
  *(v41 + 3) = 0u;
  *v41 = 0u;
  *(v41 + 1) = 0u;
  v388 = v41;
  OUTLINED_FUNCTION_13_6(v20[27], 0);
  v390 = v42;
  v43 = (v40 + v20[28]);
  v43[6] = v44;
  v43[7] = v44;
  v43[4] = v44;
  v43[5] = v44;
  v43[2] = v44;
  v43[3] = v44;
  *v43 = v44;
  v43[1] = v44;
  v391 = v43;
  OUTLINED_FUNCTION_13_6(v20[29], v44);
  v392 = v45;
  OUTLINED_FUNCTION_13_6(v20[30], v46);
  v393 = v47;
  OUTLINED_FUNCTION_13_6(v20[31], v48);
  v394 = v49;
  OUTLINED_FUNCTION_13_6(v20[32], v50);
  v395 = v51;
  OUTLINED_FUNCTION_13_6(v20[33], v52);
  v396 = v53;
  OUTLINED_FUNCTION_13_6(v20[34], v54);
  v397 = v55;
  OUTLINED_FUNCTION_13_6(v20[35], v56);
  v398 = v57;
  OUTLINED_FUNCTION_13_6(v20[36], v58);
  v399 = v59;
  OUTLINED_FUNCTION_13_6(v20[37], v60);
  v400 = v61;
  OUTLINED_FUNCTION_13_6(v20[38], v62);
  v401 = v63;
  OUTLINED_FUNCTION_13_6(v20[39], v64);
  v402 = v65;
  OUTLINED_FUNCTION_13_6(v20[40], v66);
  v403 = v67;
  OUTLINED_FUNCTION_13_6(v20[41], v68);
  v404 = v69;
  OUTLINED_FUNCTION_13_6(v20[42], v70);
  v405 = v71;
  v412 = v20;
  OUTLINED_FUNCTION_13_6(v20[43], v72);
  v406 = v73;
  v74 = qword_280BE3968;
  v380 = v28;
  v75 = v376;
  sub_217751DE8();
  sub_217751DE8();
  v379 = v30;
  sub_217751DE8();
  v76 = v378;
  sub_217751DE8();
  v77 = v377;
  sub_217751DE8();
  sub_217751DE8();
  if (v74 != -1)
  {
    swift_once();
  }

  v375 = v14;
  v78 = qword_280C01FC8;
  if (qword_280C01FC8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    OUTLINED_FUNCTION_997();
    sub_217751DE8();
    sub_217752D28();
    OUTLINED_FUNCTION_997();

    v78 = v74;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v79 = v411;
  v80 = v412;
  *(v40 + v412[45]) = v78;
  v81 = (v40 + v80[48]);
  v82 = (v40 + v80[46]);
  memcpy(v82, v438, 0x118uLL);
  v82[35] = v79;
  memcpy(v82 + 36, v437, 0x41uLL);
  v83 = v40 + v80[47];
  v84 = v380;
  *v83 = v414;
  *(v83 + 1) = v84;
  v83[16] = v382;
  *v81 = v381;
  v81[1] = v75;
  *(v40 + v80[49]) = v379;
  *(v40 + v80[50]) = v76;
  *(v40 + v80[51]) = v77;
  *(v40 + v80[52]) = v33;
  OUTLINED_FUNCTION_6_54();
  v85 = v418;
  sub_21752BBD4();
  v414 = v415[6];
  sub_2172E3D54();
  OUTLINED_FUNCTION_37_24();
  if (v86)
  {
    sub_2171F0738(v423, &qword_27CB24328, &unk_21775D440);
    v87 = v383;
    v88 = v375;
LABEL_20:
    v101 = OUTLINED_FUNCTION_188_1();
    __swift_storeEnumTagSinglePayload(v101, v102, 1, v88);
    goto LABEL_21;
  }

  sub_2172E3D54();
  sub_21726A204(v423);
  v87 = v383;
  v88 = v375;
  if (!v426[2])
  {
    sub_2171F0738(v426, &qword_27CB24280, &unk_21775D680);
    goto LABEL_20;
  }

  sub_217751DE8();
  sub_2171F0738(v426, &qword_27CB24288, &qword_217758F80);
  sub_2172CE7E0();

  v89 = OUTLINED_FUNCTION_188_1();
  if (__swift_getEnumTagSinglePayload(v89, v90, v88) == 1)
  {
LABEL_21:
    v99 = &qword_27CB25670;
    v100 = &unk_21775D6A0;
    goto LABEL_22;
  }

  v87 = v374;
  sub_2172E21DC();
  v92 = *v87;
  v91 = v87[1];
  sub_217751DE8();

  v82[2] = v92;
  v82[3] = v91;
  *(v82 + 32) = 0;
  v423[1] = 0;
  v423[0] = 0;
  MEMORY[0x28223BE20](v93);
  *(&v374 - 2) = v423;
  if (!sub_2173DDA80())
  {
    v94 = v82[35];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82[35] = v94;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2172B1F4C(0, *(v94 + 16) + 1, 1, v94);
      v94 = v372;
      v82[35] = v372;
    }

    v97 = *(v94 + 16);
    v96 = *(v94 + 24);
    if (v97 >= v96 >> 1)
    {
      sub_2172B1F4C(v96 > 1, v97 + 1, 1, v94);
      v94 = v373;
    }

    *(v94 + 16) = v97 + 1;
    v98 = v94 + 16 * v97;
    *(v98 + 32) = 0;
    *(v98 + 40) = 0;
    v82[35] = v94;
  }

  v85 = v418;
  sub_21752AECC(v418, type metadata accessor for CloudArtist);
  OUTLINED_FUNCTION_6_54();
  sub_21752BBD4();
  v99 = &qword_27CB24728;
  v100 = &qword_217758CB0;
LABEL_22:
  sub_2171F0738(v87, v99, v100);
  v103 = v85 + v415[5];
  memcpy(v427, v103, sizeof(v427));
  memcpy(v428, v103, sizeof(v428));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v428) == 1)
  {
    v104 = v439;
  }

  else
  {
    memcpy(v423, v428, 0x1B8uLL);
    memcpy(v419, v427, 0x1B8uLL);
    OUTLINED_FUNCTION_95_13(v419, v426);
    CloudAttribute<A>.convertToArtwork()(v425);
    memcpy(v420, v423, 0x1B8uLL);
    OUTLINED_FUNCTION_63(v420);
    memcpy(v423, v425, 0x221uLL);
    nullsub_1();
    v104 = v423;
  }

  memcpy(v426, v104, 0x221uLL);
  v105 = v80[7];
  memcpy(v425, v40, 0x221uLL);
  sub_2171F0738(v425, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v40, v426, 0x221uLL);
  v106 = *(v103 + 448);
  v40[69] = *(v103 + 440);
  v40[70] = v106;
  v107 = type metadata accessor for CloudArtist.Attributes(0);
  v108 = v107[6];
  sub_217751DE8();
  v383 = v108;
  sub_2172E1ECC(&v108[v103], v40 + v384);
  *(v40 + v105) = *(v103 + v107[7]);
  v109 = (v103 + v107[8]);
  v110 = v109[8];
  v411 = v103;
  if (v110)
  {
    v111 = v109[7];
    v382 = v109[6];
    v112 = v109[4];
    v113 = v109[5];
    v114 = v109[3];
    v379 = v109[2];
    v380 = v112;
    v115 = v109[1];
    v378 = *v109;
    v384 = v111;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    v381 = v113;
    sub_217751DE8();
  }

  else
  {
    v378 = 0;
    v379 = 0;
    v114 = 0;
    v380 = 0;
    v381 = 0;
    v382 = 0;
    v384 = 0;
    v115 = 1;
  }

  v116 = v80[9];
  v117 = v80[10];
  v118 = v80[11];
  v377 = v80[12];
  v119 = v385;
  v120 = *(v385 + 1);
  v424[0] = *v385;
  v424[1] = v120;
  v121 = *(v385 + 3);
  v424[2] = *(v385 + 2);
  v424[3] = v121;
  sub_217751DE8();
  sub_2171F0738(v424, &qword_27CB24B70, &unk_217759460);
  v122 = v379;
  *v119 = v378;
  *(v119 + 1) = v115;
  *(v119 + 2) = v122;
  *(v119 + 3) = v114;
  v123 = v381;
  *(v119 + 4) = v380;
  *(v119 + 5) = v123;
  v124 = v384;
  *(v119 + 6) = v382;
  *(v119 + 7) = v124;
  v125 = v411;
  v126 = v416;
  *(v416 + v116) = *(v411 + v107[9]);
  *(v126 + v117) = *(v125 + v107[10]);
  *(v126 + v118) = *(v125 + v107[11]);
  *(v126 + v377) = *(v125 + v107[12]);
  v127 = v389;
  sub_2172E3D54();
  LODWORD(v386) = __swift_getEnumTagSinglePayload(v127, 1, v386) != 1;
  v128 = v80[13];
  v129 = (v126 + v80[16]);
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v127, &unk_27CB277C0, &qword_217758DC0);
  *(v126 + v128) = v386;
  v130 = (v125 + v107[13]);
  v131 = v130[1];
  *v129 = *v130;
  v129[1] = v131;
  v132 = v107[14];
  sub_217751DE8();
  sub_2172E1ECC(v125 + v132, v126 + v387);
  v133 = v418;
  sub_2172E3D54();
  OUTLINED_FUNCTION_37_24();
  if (v86)
  {
    sub_2171F0738(v423, &qword_27CB24328, &unk_21775D440);
    v134 = v413;
    v136 = v409;
    v135 = v410;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A204(v423);
    v136 = v409;
    v135 = v410;
    if (v420[2])
    {
      *&v137 = OUTLINED_FUNCTION_41_21();
      v421 = v137;
      v422 = v137;
      v138 = OUTLINED_FUNCTION_16_0();
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(v138, v139);
      sub_2172E2038(v133, v140, v141);
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v142, v143, v144, v145, &type metadata for Album, v146, v147, &protocol witness table for Album, v374);
      sub_2171F0738(&v421, &qword_27CB24188, &dword_217758930);
      v148 = OUTLINED_FUNCTION_42_21();
      OUTLINED_FUNCTION_99_12(v148, v149);
      v134 = v413;
      goto LABEL_35;
    }

    sub_2171F0738(v420, &qword_27CB24270, &unk_21775D640);
    v134 = v413;
  }

  OUTLINED_FUNCTION_0_81();
LABEL_35:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_59_12();
  OUTLINED_FUNCTION_37_24();
  if (v86)
  {
    v150 = &qword_27CB24328;
    v151 = &unk_21775D440;
    v152 = v423;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A204(v423);
    if (v420[2])
    {
      *&v153 = OUTLINED_FUNCTION_41_21();
      v421 = v153;
      v422 = v153;
      v154 = OUTLINED_FUNCTION_16_0();
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(v154, v155);
      sub_2172E2188(v133, v156, v157);
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v158, v159, v160, v161, &type metadata for Artist, v162, v163, &protocol witness table for Artist, v374);
      sub_2171F0738(&v421, &qword_27CB24188, &dword_217758930);
      v164 = OUTLINED_FUNCTION_42_21();
      OUTLINED_FUNCTION_99_12(v164, v165);
      goto LABEL_42;
    }

    v150 = &qword_27CB24280;
    v151 = &unk_21775D680;
    v152 = v420;
  }

  sub_2171F0738(v152, v150, v151);
  OUTLINED_FUNCTION_0_81();
LABEL_42:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_59_12();
  OUTLINED_FUNCTION_37_24();
  if (v86)
  {
    sub_2171F0738(v423, &qword_27CB24328, &unk_21775D440);
    memset(v420, 0, 128);
  }

  else
  {
    sub_2172E3D54();
    sub_21726A204(v423);
  }

  sub_2172E1F3C();
  OUTLINED_FUNCTION_59_12();
  OUTLINED_FUNCTION_37_24();
  if (v86)
  {
    v166 = &qword_27CB24328;
    v167 = &unk_21775D440;
    v168 = v423;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A204(v423);
    if (v420[2])
    {
      *&v169 = OUTLINED_FUNCTION_41_21();
      v421 = v169;
      v422 = v169;
      v170 = OUTLINED_FUNCTION_16_0();
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(v170, v171);
      sub_2172E2134(v133, v172, v173);
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v174, v175, v176, v177, &type metadata for Genre, v178, v179, &protocol witness table for Genre, v374);
      sub_2171F0738(&v421, &qword_27CB24188, &dword_217758930);
      v180 = OUTLINED_FUNCTION_42_21();
      OUTLINED_FUNCTION_99_12(v180, v181);
      goto LABEL_52;
    }

    v166 = &qword_27CB243B0;
    v167 = &unk_21775D670;
    v168 = v420;
  }

  sub_2171F0738(v168, v166, v167);
  OUTLINED_FUNCTION_0_81();
LABEL_52:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_59_12();
  OUTLINED_FUNCTION_37_24();
  if (v86)
  {
    v182 = &qword_27CB24328;
    v183 = &unk_21775D440;
    v184 = v423;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A204(v423);
    if (v420[2])
    {
      *&v185 = OUTLINED_FUNCTION_41_21();
      v421 = v185;
      v422 = v185;
      v186 = OUTLINED_FUNCTION_16_0();
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(v186, v187);
      sub_2172E1FE4(v133, v188, v189);
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v190, v191, v192, v193, &type metadata for MusicVideo, v194, v195, &protocol witness table for MusicVideo, v374);
      sub_2171F0738(&v421, &qword_27CB24188, &dword_217758930);
      v196 = OUTLINED_FUNCTION_42_21();
      OUTLINED_FUNCTION_99_12(v196, v197);
      goto LABEL_59;
    }

    v182 = &qword_27CB242B0;
    v183 = &unk_21775D630;
    v184 = v420;
  }

  sub_2171F0738(v184, v182, v183);
  OUTLINED_FUNCTION_0_81();
LABEL_59:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_59_12();
  OUTLINED_FUNCTION_37_24();
  if (v86)
  {
    v198 = &qword_27CB24328;
    v199 = &unk_21775D440;
    v200 = v423;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A204(v423);
    if (v420[2])
    {
      *&v201 = OUTLINED_FUNCTION_41_21();
      v421 = v201;
      v422 = v201;
      v202 = OUTLINED_FUNCTION_16_0();
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(v202, v203);
      sub_2172E208C(v133, v204, v205);
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v206, v207, v208, v209, &type metadata for Playlist, v210, v211, &protocol witness table for Playlist, v374);
      sub_2171F0738(&v421, &qword_27CB24188, &dword_217758930);
      v212 = OUTLINED_FUNCTION_42_21();
      OUTLINED_FUNCTION_99_12(v212, v213);
      goto LABEL_66;
    }

    v198 = &qword_27CB242C0;
    v199 = &unk_21775D650;
    v200 = v420;
  }

  sub_2171F0738(v200, v198, v199);
  OUTLINED_FUNCTION_0_81();
LABEL_66:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_59_12();
  OUTLINED_FUNCTION_37_24();
  if (v86)
  {
    v214 = &qword_27CB24328;
    v215 = &unk_21775D440;
    v216 = v423;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A204(v423);
    if (v420[2])
    {
      *&v217 = OUTLINED_FUNCTION_41_21();
      v421 = v217;
      v422 = v217;
      v218 = OUTLINED_FUNCTION_16_0();
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(v218, v219);
      sub_2173692A0(v133, v220, v221);
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v222, v223, v224, v225, &type metadata for Station, v226, v227, &protocol witness table for Station, v374);
      sub_2171F0738(&v421, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_73;
    }

    v214 = &qword_27CB242F0;
    v215 = &unk_217797B80;
    v216 = v420;
  }

  sub_2171F0738(v216, v214, v215);
  OUTLINED_FUNCTION_0_81();
LABEL_73:
  sub_2172E1F3C();
  sub_2172E3D54();
  OUTLINED_FUNCTION_37_24();
  if (v86)
  {
    v228 = &qword_27CB24AB0;
    v229 = &qword_217759088;
    v230 = v423;
  }

  else
  {
    sub_2172E3D54();
    sub_21728463C(v423);
    if (v420[2])
    {
      OUTLINED_FUNCTION_7_47();
      v231 = OUTLINED_FUNCTION_16_0();
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(v231, v232);
      sub_2172E2038(v133, v233, v234);
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v235, v236, v237, v238, &type metadata for Album, v239, v240, &protocol witness table for Album, v374);
      sub_2171F0738(&v421, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_80;
    }

    v228 = &qword_27CB24270;
    v229 = &unk_21775D640;
    v230 = v420;
  }

  sub_2171F0738(v230, v228, v229);
  OUTLINED_FUNCTION_0_81();
LABEL_80:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_46_21();
  OUTLINED_FUNCTION_37_24();
  if (v86)
  {
    v241 = &qword_27CB24AB0;
    v242 = &qword_217759088;
    v243 = v423;
  }

  else
  {
    sub_2172E3D54();
    sub_21728463C(v423);
    if (v420[2])
    {
      OUTLINED_FUNCTION_7_47();
      v244 = OUTLINED_FUNCTION_16_0();
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(v244, v245);
      sub_2172E2038(v133, v246, v247);
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v248, v249, v250, v251, &type metadata for Album, v252, v253, &protocol witness table for Album, v374);
      sub_2171F0738(&v421, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_87;
    }

    v241 = &qword_27CB24270;
    v242 = &unk_21775D640;
    v243 = v420;
  }

  sub_2171F0738(v243, v241, v242);
  OUTLINED_FUNCTION_0_81();
LABEL_87:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_46_21();
  OUTLINED_FUNCTION_37_24();
  if (v86)
  {
    v254 = &qword_27CB24AB0;
    v255 = &qword_217759088;
    v256 = v423;
  }

  else
  {
    sub_2172E3D54();
    sub_21728463C(v423);
    if (v420[2])
    {
      OUTLINED_FUNCTION_7_47();
      v257 = OUTLINED_FUNCTION_16_0();
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(v257, v258);
      sub_2172E2038(v133, v259, v260);
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v261, v262, v263, v264, &type metadata for Album, v265, v266, &protocol witness table for Album, v374);
      sub_2171F0738(&v421, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_94;
    }

    v254 = &qword_27CB24270;
    v255 = &unk_21775D640;
    v256 = v420;
  }

  sub_2171F0738(v256, v254, v255);
  OUTLINED_FUNCTION_0_81();
LABEL_94:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_46_21();
  OUTLINED_FUNCTION_37_24();
  if (v86)
  {
    v267 = &qword_27CB24AB0;
    v268 = &qword_217759088;
    v269 = v423;
  }

  else
  {
    sub_2172E3D54();
    sub_21728463C(v423);
    if (v420[2])
    {
      OUTLINED_FUNCTION_7_47();
      v270 = OUTLINED_FUNCTION_16_0();
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(v270, v271);
      sub_2172E208C(v133, v272, v273);
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v274, v275, v276, v277, &type metadata for Playlist, v278, v279, &protocol witness table for Playlist, v374);
      sub_2171F0738(&v421, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_101;
    }

    v267 = &qword_27CB242C0;
    v268 = &unk_21775D650;
    v269 = v420;
  }

  sub_2171F0738(v269, v267, v268);
  OUTLINED_FUNCTION_0_81();
LABEL_101:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_46_21();
  OUTLINED_FUNCTION_37_24();
  if (v86)
  {
    v280 = &qword_27CB24AB0;
    v281 = &qword_217759088;
    v282 = v423;
  }

  else
  {
    sub_2172E3D54();
    sub_21728463C(v423);
    if (v420[2])
    {
      OUTLINED_FUNCTION_7_47();
      v283 = OUTLINED_FUNCTION_16_0();
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(v283, v284);
      sub_2172E2038(v133, v285, v286);
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v287, v288, v289, v290, &type metadata for Album, v291, v292, &protocol witness table for Album, v374);
      sub_2171F0738(&v421, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_108;
    }

    v280 = &qword_27CB24270;
    v281 = &unk_21775D640;
    v282 = v420;
  }

  sub_2171F0738(v282, v280, v281);
  OUTLINED_FUNCTION_0_81();
LABEL_108:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_46_21();
  OUTLINED_FUNCTION_37_24();
  if (v86)
  {
    v293 = &qword_27CB24AB0;
    v294 = &qword_217759088;
    v295 = v423;
  }

  else
  {
    sub_2172E3D54();
    sub_21728463C(v423);
    if (v420[2])
    {
      OUTLINED_FUNCTION_7_47();
      v296 = OUTLINED_FUNCTION_16_0();
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(v296, v297);
      sub_2172E2038(v133, v298, v299);
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v300, v301, v302, v303, &type metadata for Album, v304, v305, &protocol witness table for Album, v374);
      sub_2171F0738(&v421, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_115;
    }

    v293 = &qword_27CB24270;
    v294 = &unk_21775D640;
    v295 = v420;
  }

  sub_2171F0738(v295, v293, v294);
  OUTLINED_FUNCTION_0_81();
LABEL_115:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_46_21();
  OUTLINED_FUNCTION_37_24();
  if (v86)
  {
    v306 = &qword_27CB24AB0;
    v307 = &qword_217759088;
    v308 = v423;
  }

  else
  {
    sub_2172E3D54();
    sub_21728463C(v423);
    if (v420[2])
    {
      OUTLINED_FUNCTION_7_47();
      v309 = OUTLINED_FUNCTION_16_0();
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(v309, v310);
      sub_2172E2038(v133, v311, v312);
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v313, v314, v315, v316, &type metadata for Album, v317, v318, &protocol witness table for Album, v374);
      sub_2171F0738(&v421, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_122;
    }

    v306 = &qword_27CB24270;
    v307 = &unk_21775D640;
    v308 = v420;
  }

  sub_2171F0738(v308, v306, v307);
  OUTLINED_FUNCTION_0_81();
LABEL_122:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_46_21();
  OUTLINED_FUNCTION_37_24();
  if (v86)
  {
    v319 = &qword_27CB24AB0;
    v320 = &qword_217759088;
    v321 = v423;
  }

  else
  {
    sub_2172E3D54();
    sub_21728463C(v423);
    if (v420[2])
    {
      OUTLINED_FUNCTION_7_47();
      v322 = OUTLINED_FUNCTION_16_0();
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(v322, v323);
      sub_2172E2188(v133, v324, v325);
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v326, v327, v328, v329, &type metadata for Artist, v330, v331, &protocol witness table for Artist, v374);
      sub_2171F0738(&v421, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_129;
    }

    v319 = &qword_27CB24280;
    v320 = &unk_21775D680;
    v321 = v420;
  }

  sub_2171F0738(v321, v319, v320);
  OUTLINED_FUNCTION_0_81();
LABEL_129:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_46_21();
  OUTLINED_FUNCTION_37_24();
  if (v86)
  {
    v332 = &qword_27CB24AB0;
    v333 = &qword_217759088;
    v334 = v423;
  }

  else
  {
    sub_2172E3D54();
    sub_21728463C(v423);
    if (v420[2])
    {
      OUTLINED_FUNCTION_7_47();
      v335 = OUTLINED_FUNCTION_16_0();
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(v335, v336);
      sub_2172E2038(v133, v337, v338);
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v339, v340, v341, v342, &type metadata for Album, v343, v344, &protocol witness table for Album, v374);
      sub_2171F0738(&v421, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_136;
    }

    v332 = &qword_27CB24270;
    v333 = &unk_21775D640;
    v334 = v420;
  }

  sub_2171F0738(v334, v332, v333);
  OUTLINED_FUNCTION_0_81();
LABEL_136:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_46_21();
  OUTLINED_FUNCTION_37_24();
  if (v86)
  {
    v345 = &qword_27CB24AB0;
    v346 = &qword_217759088;
    v347 = v423;
  }

  else
  {
    sub_2172E3D54();
    sub_21728463C(v423);
    if (v420[2])
    {
      OUTLINED_FUNCTION_7_47();
      v348 = OUTLINED_FUNCTION_16_0();
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(v348, v349);
      sub_2172E1FE4(v133, v350, v351);
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v352, v353, v354, v355, &type metadata for MusicVideo, v356, v357, &protocol witness table for MusicVideo, v374);
      sub_2171F0738(&v421, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_143;
    }

    v345 = &qword_27CB242B0;
    v346 = &unk_21775D630;
    v347 = v420;
  }

  sub_2171F0738(v347, v345, v346);
  OUTLINED_FUNCTION_0_81();
LABEL_143:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_46_21();
  OUTLINED_FUNCTION_37_24();
  if (v86)
  {
    sub_2171F0738(v423, &qword_27CB24AB0, &qword_217759088);
    v358 = v412;
  }

  else
  {
    sub_2172E3D54();
    sub_21728463C(v423);
    v358 = v412;
    if (v420[2])
    {
      OUTLINED_FUNCTION_7_47();
      v359 = OUTLINED_FUNCTION_16_0();
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(v359, v360);
      sub_2173626DC(v133, v361, v362);
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v363, v364, v365, v366, &type metadata for Song, v367, v368, &protocol witness table for Song, v374);
      sub_2171F0738(&v421, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_150;
    }

    sub_2171F0738(v420, &qword_27CB242E0, &unk_21777EEE0);
  }

  OUTLINED_FUNCTION_0_81();
LABEL_150:
  sub_2172E1F3C();
  if (*(v133 + v415[8]) == 1)
  {
    v369 = 0;
  }

  else
  {
    v369 = sub_217751DE8();
  }

  v370 = v416;
  *(v416 + *(v358 + 176)) = v369;
  v423[3] = v358;
  v423[4] = &protocol witness table for ArtistPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v423);
  sub_21752BBD4();
  Artist.init(propertyProvider:)(v423, v407);

  (*(*(v135 - 8) + 8))(v136, v135);
  sub_2171F0738(v134, &qword_27CB24728, &qword_217758CB0);
  OUTLINED_FUNCTION_14_36();
  sub_21752AECC(v133, v371);
  sub_21752AECC(v370, type metadata accessor for ArtistPropertyProvider);
  OUTLINED_FUNCTION_13();
}

void Artist.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v777 = v10;
  v753 = type metadata accessor for CloudArtist(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v798 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v14);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_105_11();
  v17 = type metadata accessor for CloudArtist.Attributes(v16);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v819 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255A0, &unk_21775D430);
  swift_allocObject();
  *&v349 = MEMORY[0x277D84F90];
  *(&v349 + 1) = MEMORY[0x277D84F90];
  v21 = sub_2173C381C(0x6B726F77747261, 0xE700000000000000, 0, 0, 0, 0, 2, 0, v349, MEMORY[0x277D84F90], qword_282959AF8);
  sub_2176CB030(v21, v22, v23, v24, v25, v26, v27, v28, v350, v374, v398, v422, v446, v470, v494, v518, v542, v566, v589, v613, v637, v661, v685, v708, v730, v753);

  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v886) == 1)
  {
    sub_2172E22C0(v885);
  }

  else
  {
    memcpy(v850, v886, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v880);
    v29 = OUTLINED_FUNCTION_35_23();
    memcpy(v29, v850, 0x221uLL);
    v30 = OUTLINED_FUNCTION_35_23();
    sub_217284084(v30);
    memcpy(v850, v880, 0x1B8uLL);
    nullsub_1();
    memcpy(v885, v850, sizeof(v885));
  }

  if (qword_280BE6A48 != -1)
  {
    swift_once();
  }

  v31 = sub_2172A3FF0();
  v614 = v32;
  v638 = v31;
  if (qword_280BE69D8 != -1)
  {
    swift_once();
  }

  sub_2176CA788(qword_280C021B8, v32, v33, v34, v35, v36, v37, v38, v351, v375, v399, v423, v447, v471, v495, v519, v543, v567, v590, v614, v638, v662, v686, v709, v731, v754, v777, v798, v819, v840);
  if (qword_280BE68F0 != -1)
  {
    swift_once();
  }

  v591 = sub_2172A494C(qword_280C02170);
  if (qword_280BE6998 != -1)
  {
    swift_once();
  }

  sub_2176CA7A8(qword_280C021A0, v39, v40, v41, v42, v43, v44, v45, v352, v376, v400, v424, v448, v472, v496, v520, v544, v568, v591, v615, v639, v1, v687, v7, v732, v755);
  v881 = v864;
  v882 = v865[0];
  v883 = v865[1];
  v884 = v865[2];
  v46 = *(&v864 + 1);
  if (*(&v864 + 1) == 1)
  {
    v425 = 0;
    v449 = 0;
    v46 = 0;
    v473 = 0;
    v497 = 0;
    v521 = 0;
    v545 = 0uLL;
    v401 = 0;
  }

  else
  {
    v545 = v884;
    v47 = *(&v883 + 1);
    v497 = v883;
    v48 = *(&v882 + 1);
    v425 = v881;
    v449 = v882;
    sub_217751DE8();
    sub_217751DE8();
    v473 = v48;
    sub_217751DE8();
    v521 = v47;
    sub_217751DE8();
    v401 = sub_217751DC8();
    sub_2171F0738(&v881, &qword_27CB24B70, &unk_217759460);
  }

  if (qword_280BE68D0 != -1)
  {
    swift_once();
  }

  v377 = sub_2172A4930(qword_280C02158);
  if (qword_280BE6A28 != -1)
  {
    swift_once();
  }

  v353 = sub_2172A4364(qword_280C021D0);
  if (qword_280BE6928 != -1)
  {
    swift_once();
  }

  sub_2172A4358(qword_280C02180, v49, v50, v51, v52, v53, v54, v55, v353, v377, v401, v425, v449, v473, SWORD2(v473), SBYTE6(v473), HIBYTE(v473), v497, v521, v545, *(&v545 + 1), v592, v616, v640, v663);
  v64 = v63;
  if (qword_280BE6A50 != -1)
  {
    swift_once();
  }

  v733 = v5;
  sub_2172A4358(qword_280C021E0, v56, v57, v58, v59, v60, v61, v62, v354, v378, v402, v426, v450, v474, SWORD2(v474), SBYTE6(v474), HIBYTE(v474), v498, v522, v546, v569, v593, v617, v641, v664);
  v66 = v65;
  if (qword_280BE6898 != -1)
  {
    swift_once();
  }

  v688 = v9;
  v67 = sub_2172A3FF0();
  if (v68)
  {
    v75 = v67;
  }

  else
  {
    v75 = 0;
  }

  if (v68)
  {
    v76 = v68;
  }

  else
  {
    v76 = 0xE000000000000000;
  }

  if (qword_280BE68A0 != -1)
  {
    swift_once();
  }

  v77 = v820;
  sub_2176CA788(qword_280C02140, v68, v69, v70, v71, v72, v73, v74, v355, v379, v403, v427, v451, v475, v499, v523, v547, v570, v594, v618, v642, v665, v688, v710, v733, v756, v778, v799, v820, v840);
  memcpy(v77, v885, 0x1B8uLL);
  v77[55] = v643;
  v77[56] = v619;
  sub_2172E21DC();
  *(v77 + v17[7]) = v595;
  v78 = (v77 + v17[8]);
  *v78 = v428;
  v78[1] = v46;
  v78[2] = v452;
  v78[3] = v476;
  v78[4] = v500;
  v78[5] = v524;
  v78[6] = v548;
  v78[7] = v571;
  v78[8] = v404;
  *(v77 + v17[9]) = v380;
  *(v77 + v17[10]) = v356;
  *(v77 + v17[11]) = v64;
  *(v77 + v17[12]) = v66;
  v79 = (v77 + v17[13]);
  *v79 = v75;
  v79[1] = v76;
  v880[1] = 0;
  v880[0] = 0;
  v880[2] = 1;
  bzero(&v880[3], 0x368uLL);
  if (qword_280BE6880 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6888, v80, v81, v82, v83, v84, v85, v86, v356, v380, v404, v428, v452, v476, v500, v524, v548, v571, v595, v619, v643, v666, v689, v711, v734, v757, v779, v800, v821, v840);
  if (qword_280BE69A8 != -1)
  {
    swift_once();
  }

  sub_2176CB03C(qword_280C021A8, v87, v88, v89, v90, v91, v92, v93, v357, v381, v405, v429, v453, v477, v501, v525, v549, v572, v596, v620, v644, v667, v690, v712, v735, v758, v780, v801, v822, v840);
  if (qword_280BE68E0 != -1)
  {
    swift_once();
  }

  sub_2176CB058(qword_280C02168, v94, v95, v96, v97, v98, v99, v100, v358, v382, v406, v430, v454, v478, v502, v526, v550, v573, v597, v621, v645, v668, v691, v713, v736, v759, v781, v802, v823, v840);
  if (qword_280BE6870 != -1)
  {
    swift_once();
  }

  sub_2176CA750(qword_280BE6878, v101, v102, v103, v104, v105, v106, v107, v359, v383, v407, v431, v455, v479, v503, v527, v551, v574, v598, v622, v646, v669, v692, v714, v737, v760, v782, v803, v824, v840);
  if (qword_280BE69E8 != -1)
  {
    swift_once();
  }

  sub_2176CA69C(qword_280BE69F0, v108, v109, v110, v111, v112, v113, v114, v360, v384, v408, v432, v456, v480, v504, v528, v552, v575, v599, v623, v647, v670, v693, v715, v738, v761, v783, v804, v825, v840);
  if (qword_280BE6820 != -1)
  {
    swift_once();
  }

  sub_2176CA4F0(qword_280BE6828, v115, v116, v117, v118, v119, v120, v121, v361, v385, v409, v433, v457, v481, v505, v529, v553, v576, v600, v624, v648, v671, v694, v716, v739, v762, v784, v805, v826, v840);
  if (qword_280BE6848 != -1)
  {
    swift_once();
  }

  sub_2176CA450(qword_280BE6850, v122, v123, v124, v125, v126, v127, v128, v362, v386, v410, v434, v458, v482, v506, v530, v554, v577, v601, v625, v649, v672, v695, v717, v740, v763, v785, v806, v827, v840);
  if (v879[11] || v878[11] || v877[2] || v876[11] || v875[11] || v874[11] || v873[11])
  {
    OUTLINED_FUNCTION_65_17();
    v129 = sub_2172E3D54();
    if (v866)
    {
      sub_2172E2038(v129, v130, v131);
      OUTLINED_FUNCTION_28_31(v852);
      v851[0] = v852[0];
      v132 = OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_13_38(v132, v851, v132);
      OUTLINED_FUNCTION_33_24();
    }

    else
    {
      v133 = OUTLINED_FUNCTION_35_23();
      sub_2171F0738(v133, v134, v135);
      memset(v850, 0, 128);
    }

    OUTLINED_FUNCTION_65_17();
    v136 = sub_2172E3D54();
    if (v866)
    {
      sub_2172E2188(v136, v137, v138);
      OUTLINED_FUNCTION_28_31(v851);
      LOBYTE(v849[0]) = v851[0];
      v139 = OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_13_38(v139, v849, v139);
      OUTLINED_FUNCTION_33_24();
    }

    else
    {
      v140 = OUTLINED_FUNCTION_35_23();
      sub_2171F0738(v140, v141, v142);
      OUTLINED_FUNCTION_60_18();
    }

    sub_2172E3D54();
    OUTLINED_FUNCTION_65_17();
    v143 = sub_2172E3D54();
    if (v866)
    {
      sub_2172E2134(v143, v144, v145);
      OUTLINED_FUNCTION_28_31(v848);
      v847[0] = v848[0];
      v146 = OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_13_38(v146, v847, v146);
      OUTLINED_FUNCTION_33_24();
    }

    else
    {
      v147 = OUTLINED_FUNCTION_35_23();
      sub_2171F0738(v147, v148, v149);
      OUTLINED_FUNCTION_89_12();
    }

    OUTLINED_FUNCTION_65_17();
    v150 = sub_2172E3D54();
    if (v866)
    {
      sub_2172E1FE4(v150, v151, v152);
      OUTLINED_FUNCTION_28_31(v847);
      v846[0] = v847[0];
      v153 = OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_13_38(v153, v846, v153);
      OUTLINED_FUNCTION_33_24();
    }

    else
    {
      v154 = OUTLINED_FUNCTION_35_23();
      sub_2171F0738(v154, v155, v156);
      OUTLINED_FUNCTION_90_11();
    }

    OUTLINED_FUNCTION_65_17();
    v157 = sub_2172E3D54();
    if (v866)
    {
      sub_2172E208C(v157, v158, v159);
      OUTLINED_FUNCTION_28_31(v846);
      v845[0] = v846[0];
      v160 = OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_13_38(v160, v845, v160);
      OUTLINED_FUNCTION_33_24();
    }

    else
    {
      v161 = OUTLINED_FUNCTION_35_23();
      sub_2171F0738(v161, v162, v163);
      OUTLINED_FUNCTION_87_14();
    }

    OUTLINED_FUNCTION_65_17();
    v164 = sub_2172E3D54();
    if (v866)
    {
      sub_2173692A0(v164, v165, v166);
      OUTLINED_FUNCTION_28_31(v845);
      v844[0] = v845[0];
      v167 = OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_13_38(v167, v844, v167);
      v168 = OUTLINED_FUNCTION_86_11();
      sub_2171F0738(v168, v169, v170);
      OUTLINED_FUNCTION_33_24();
    }

    else
    {
      v171 = OUTLINED_FUNCTION_86_11();
      sub_2171F0738(v171, v172, v173);
      v174 = OUTLINED_FUNCTION_35_23();
      sub_2171F0738(v174, v175, v176);
      OUTLINED_FUNCTION_88_10();
    }

    v177 = OUTLINED_FUNCTION_35_23();
    memcpy(v177, v850, 0x80uLL);
    memcpy(v867, v852, sizeof(v867));
    memcpy(v868, v851, sizeof(v868));
    memcpy(v869, v849, sizeof(v869));
    memcpy(v870, v848, sizeof(v870));
    memcpy(v871, v847, sizeof(v871));
    memcpy(v872, v846, sizeof(v872));
    OUTLINED_FUNCTION_86_11();
    OUTLINED_FUNCTION_65_17();
    memcpy(v178, v179, 0x380uLL);
  }

  v864 = 0uLL;
  *&v865[0] = 1;
  bzero(v865 + 8, 0x568uLL);
  if (qword_280BE6950 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6958, v180, v181, v182, v183, v184, v185, v186, v363, v387, v411, v435, v459, v483, v507, v531, v555, v578, v602, v626, v650, v673, v696, v718, v741, v764, v786, v807, v828, v840);
  if (qword_280BE6908 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6910, v187, v188, v189, v190, v191, v192, v193, v364, v388, v412, v436, v460, v484, v508, v532, v556, v579, v603, v627, v651, v674, v697, v719, v742, v765, v787, v808, v829, v840);
  if (qword_280BE6980 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6988, v194, v195, v196, v197, v198, v199, v200, v365, v389, v413, v437, v461, v485, v509, v533, v557, v580, v604, v628, v652, v675, v698, v720, v743, v766, v788, v809, v830, v840);
  if (qword_280BE68F8 != -1)
  {
    swift_once();
  }

  sub_2176CA4F0(qword_280BE6900, v201, v202, v203, v204, v205, v206, v207, v366, v390, v414, v438, v462, v486, v510, v534, v558, v581, v605, v629, v653, v676, v699, v721, v744, v767, v789, v810, v831, v840);
  if (qword_280BE6A30 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6A38, v208, v209, v210, v211, v212, v213, v214, v367, v391, v415, v439, v463, v487, v511, v535, v559, v582, v606, v630, v654, v677, v700, v722, v745, v768, v790, v811, v832, v840);
  if (qword_280BE69C8 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE69D0, v215, v216, v217, v218, v219, v220, v221, v368, v392, v416, v440, v464, v488, v512, v536, v560, v583, v607, v631, v655, v678, v701, v723, v746, v769, v791, v812, v833, v840);
  if (qword_280BE6A10 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6A18, v222, v223, v224, v225, v226, v227, v228, v369, v393, v417, v441, v465, v489, v513, v537, v561, v584, v608, v632, v656, v679, v702, v724, v747, v770, v792, v813, v834, v840);
  if (qword_280BE6968 != -1)
  {
    swift_once();
  }

  sub_2176CB03C(qword_280BE6970, v229, v230, v231, v232, v233, v234, v235, v370, v394, v418, v442, v466, v490, v514, v538, v562, v585, v609, v633, v657, v680, v703, v725, v748, v771, v793, v814, v835, v840);
  if (qword_280BE6860 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6868, v236, v237, v238, v239, v240, v241, v242, v371, v395, v419, v443, v467, v491, v515, v539, v563, v586, v610, v634, v658, v681, v704, v726, v749, v772, v794, v815, v836, v840);
  if (qword_280BE6A58 != -1)
  {
    swift_once();
  }

  sub_2176CA69C(qword_280BE6A60, v243, v244, v245, v246, v247, v248, v249, v372, v396, v420, v444, v468, v492, v516, v540, v564, v587, v611, v635, v659, v682, v705, v727, v750, v773, v795, v816, v837, v840);
  if (qword_280BE6830 != -1)
  {
    swift_once();
  }

  sub_2176CB104(qword_280BE6838, v250, v251, v252, v253, v254, v255, v256, v373, v397, v421, v445, v469, v493, v517, v541, v565, v588, v612, v636, v660, v683, v706, v728, v751, v774, v796, v817, v838, v840);
  if (v863[11] || v862[11] || v861[11] || v860[11] || v859[11] || v858[11] || v857[11] || v856[11] || v855[11] || v854[11] || v853[11])
  {
    v257 = sub_2172E3D54();
    if (*(&v850[5] + 1))
    {
      sub_2172E2038(v257, v258, v259);
      OUTLINED_FUNCTION_28_31(v851);
      LOBYTE(v849[0]) = v851[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_11_45();
      OUTLINED_FUNCTION_43_15();
    }

    else
    {
      sub_2171F0738(v850, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_60_18();
    }

    v260 = sub_2172E3D54();
    if (*(&v850[5] + 1))
    {
      sub_2172E2038(v260, v261, v262);
      OUTLINED_FUNCTION_28_31(v849);
      LOBYTE(v848[0]) = v849[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_11_45();
      OUTLINED_FUNCTION_43_15();
    }

    else
    {
      sub_2171F0738(v850, &qword_27CB25318, &qword_2177657C0);
      memset(v851, 0, 128);
    }

    v263 = sub_2172E3D54();
    if (*(&v850[5] + 1))
    {
      sub_2172E2038(v263, v264, v265);
      OUTLINED_FUNCTION_28_31(v848);
      v847[0] = v848[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_11_45();
      OUTLINED_FUNCTION_43_15();
    }

    else
    {
      sub_2171F0738(v850, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_89_12();
    }

    v266 = sub_2172E3D54();
    if (*(&v850[5] + 1))
    {
      sub_2172E208C(v266, v267, v268);
      OUTLINED_FUNCTION_28_31(v847);
      v846[0] = v847[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_11_45();
      OUTLINED_FUNCTION_43_15();
    }

    else
    {
      sub_2171F0738(v850, &qword_27CB25330, &unk_21775E9B0);
      OUTLINED_FUNCTION_90_11();
    }

    v269 = sub_2172E3D54();
    if (*(&v850[5] + 1))
    {
      sub_2172E2038(v269, v270, v271);
      OUTLINED_FUNCTION_28_31(v846);
      v845[0] = v846[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_11_45();
      OUTLINED_FUNCTION_43_15();
    }

    else
    {
      sub_2171F0738(v850, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_87_14();
    }

    v272 = sub_2172E3D54();
    if (*(&v850[5] + 1))
    {
      sub_2172E2038(v272, v273, v274);
      OUTLINED_FUNCTION_28_31(v845);
      v844[0] = v845[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_11_45();
      OUTLINED_FUNCTION_43_15();
    }

    else
    {
      sub_2171F0738(v850, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_88_10();
    }

    v275 = sub_2172E3D54();
    if (*(&v850[5] + 1))
    {
      sub_2172E2038(v275, v276, v277);
      OUTLINED_FUNCTION_28_31(v844);
      v843[0] = v844[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_11_45();
      OUTLINED_FUNCTION_43_15();
    }

    else
    {
      sub_2171F0738(v850, &qword_27CB25318, &qword_2177657C0);
      memset(v845, 0, sizeof(v845));
    }

    v278 = sub_2172E3D54();
    if (*(&v850[5] + 1))
    {
      sub_2172E2188(v278, v279, v280);
      OUTLINED_FUNCTION_28_31(v843);
      v842[0] = v843[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_11_45();
      OUTLINED_FUNCTION_43_15();
    }

    else
    {
      sub_2171F0738(v850, &qword_27CB25310, &unk_21775D3D0);
      memset(v844, 0, sizeof(v844));
    }

    v281 = sub_2172E3D54();
    if (*(&v850[5] + 1))
    {
      sub_2172E2038(v281, v282, v283);
      OUTLINED_FUNCTION_28_31(v842);
      v841[0] = v842[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_11_45();
      OUTLINED_FUNCTION_43_15();
    }

    else
    {
      sub_2171F0738(v850, &qword_27CB25318, &qword_2177657C0);
      memset(v843, 0, sizeof(v843));
    }

    v284 = sub_2172E3D54();
    if (*(&v850[5] + 1))
    {
      sub_2172E1FE4(v284, v285, v286);
      OUTLINED_FUNCTION_28_31(v841);
      HIBYTE(v840) = v841[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_11_45();
      OUTLINED_FUNCTION_43_15();
    }

    else
    {
      sub_2171F0738(v850, &qword_27CB25338, &unk_21775D3E0);
      memset(v842, 0, sizeof(v842));
    }

    v287 = sub_2172E3D54();
    if (*(&v850[5] + 1))
    {
      sub_2173626DC(v287, v288, v289);
      OUTLINED_FUNCTION_28_31(&v840 + 7);
      BYTE6(v840) = HIBYTE(v840);
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_11_45();
      v290 = OUTLINED_FUNCTION_35_23();
      sub_2171F0738(v290, v291, v292);
      OUTLINED_FUNCTION_43_15();
    }

    else
    {
      v293 = OUTLINED_FUNCTION_35_23();
      sub_2171F0738(v293, v294, v295);
      sub_2171F0738(v850, &qword_27CB255A8, &unk_21775D450);
      memset(v841, 0, sizeof(v841));
    }

    memcpy(v850, v852, 0x80uLL);
    memcpy(&v850[8], v851, 0x80uLL);
    memcpy(&v850[16], v849, 0x80uLL);
    memcpy(&v850[24], v848, 0x80uLL);
    memcpy(&v850[32], v847, 0x80uLL);
    memcpy(&v850[40], v846, 0x80uLL);
    memcpy(&v850[48], v845, 0x80uLL);
    memcpy(&v850[56], v844, 0x80uLL);
    memcpy(&v850[64], v843, 0x80uLL);
    memcpy(&v850[72], v842, 0x80uLL);
    memcpy(&v850[80], v841, 0x80uLL);
    v296 = OUTLINED_FUNCTION_35_23();
    memcpy(v296, v850, 0x580uLL);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254A0, &qword_217794FF0);
  swift_allocObject();
  v297 = sub_2172E3DC4();
  sub_2172A44E0(v297);
  OUTLINED_FUNCTION_5_4();

  if ((v3 + 2) <= 1)
  {
    v298 = 1;
  }

  else
  {
    v298 = (v3 + 2);
  }

  v300 = *v3;
  v299 = v3[1];
  OUTLINED_FUNCTION_16_42();
  sub_21752BBD4();
  OUTLINED_FUNCTION_86_11();
  sub_2172E3D54();
  OUTLINED_FUNCTION_35_23();
  sub_2172E3D54();
  *v818 = v300;
  v818[1] = v299;
  *(v818 + *(v775 + 32)) = v298;
  v301 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  v302 = *(v301 + 24);
  sub_217751DE8();
  v303 = OUTLINED_FUNCTION_16_0();
  v302(v303);
  nullsub_1();
  memcpy(v852, v851, 0x161uLL);
  OUTLINED_FUNCTION_6_54();
  sub_21752BBD4();
  OUTLINED_FUNCTION_146();
  v304 = OUTLINED_FUNCTION_16_0();
  v305(v304);
  __swift_project_boxed_opaque_existential_1(v850, *(&v850[1] + 1));
  v306 = OUTLINED_FUNCTION_5_4();
  v307(v306);
  __swift_destroy_boxed_opaque_existential_1(v850);
  v752 = v848[1];
  v776 = v848[0];
  v729 = v848[2];
  OUTLINED_FUNCTION_146();
  v308 = OUTLINED_FUNCTION_16_0();
  v309(v308);
  OUTLINED_FUNCTION_67(v850, *(&v850[1] + 1));
  v310 = OUTLINED_FUNCTION_5_4();
  v312 = v311(v310);
  v684 = v313;
  v707 = v312;
  __swift_destroy_boxed_opaque_existential_1(v850);
  memcpy(v850, v852, 0x168uLL);
  *(&v850[22] + 1) = 0;
  v850[23] = 0uLL;
  nullsub_1();
  OUTLINED_FUNCTION_146();
  v314 = OUTLINED_FUNCTION_16_0();
  v315(v314);
  v316 = v849[3];
  v317 = OUTLINED_FUNCTION_101_8();
  OUTLINED_FUNCTION_67(v317, v316);
  v318 = OUTLINED_FUNCTION_5_4();
  v320 = v319(v318);
  __swift_destroy_boxed_opaque_existential_1(v849);
  OUTLINED_FUNCTION_146();
  v321 = OUTLINED_FUNCTION_16_0();
  v322(v321);
  v323 = v849[3];
  v324 = OUTLINED_FUNCTION_101_8();
  OUTLINED_FUNCTION_67(v324, v323);
  v325 = OUTLINED_FUNCTION_5_4();
  v327 = v326(v325);
  __swift_destroy_boxed_opaque_existential_1(v849);
  v328 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  v329 = OUTLINED_FUNCTION_997();
  v330(v329, v328);
  v331 = v849[3];
  v332 = OUTLINED_FUNCTION_101_8();
  OUTLINED_FUNCTION_67(v332, v331);
  v333 = OUTLINED_FUNCTION_997();
  v335 = v334(v333);
  __swift_destroy_boxed_opaque_existential_1(v849);
  v336 = v3[5];
  v337 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v336);
  (*(v337 + 96))(v849, v336, v337);
  v338 = v849[3];
  v339 = OUTLINED_FUNCTION_101_8();
  OUTLINED_FUNCTION_67(v339, v338);
  v341 = (*(v340 + 88))(v338);
  OUTLINED_FUNCTION_14_36();
  sub_21752AECC(v818, v342);
  v343 = OUTLINED_FUNCTION_35_23();
  sub_2171F0738(v343, &qword_27CB24AB0, &qword_217759088);
  v344 = OUTLINED_FUNCTION_86_11();
  sub_2171F0738(v344, &qword_27CB24328, &unk_21775D440);
  OUTLINED_FUNCTION_15_41();
  sub_21752AECC(v839, v345);
  __swift_destroy_boxed_opaque_existential_1(v849);
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  v347 = v797 + v346[9];
  *v347 = v776;
  *(v347 + 8) = v752;
  *(v347 + 16) = v729;
  v348 = (v797 + v346[10]);
  *v348 = v707;
  v348[1] = v684;
  memcpy((v797 + v346[11]), v850, 0x180uLL);
  *(v797 + v346[12]) = v320;
  *(v797 + v346[13]) = v327;
  *(v797 + v346[14]) = v335;
  *(v797 + v346[15]) = v341;
  OUTLINED_FUNCTION_63(v863);
  OUTLINED_FUNCTION_63(v879);
  sub_2171F0738(v853, &qword_27CB255A8, &unk_21775D450);
  sub_2171F0738(v854, &qword_27CB25338, &unk_21775D3E0);
  OUTLINED_FUNCTION_63(v855);
  OUTLINED_FUNCTION_169_1(v856);
  OUTLINED_FUNCTION_63(v857);
  OUTLINED_FUNCTION_63(v858);
  OUTLINED_FUNCTION_63(v859);
  sub_2171F0738(v860, &qword_27CB25330, &unk_21775E9B0);
  OUTLINED_FUNCTION_63(v861);
  OUTLINED_FUNCTION_63(v862);
  sub_2171F0738(v873, &qword_27CB255B0, &unk_217793B50);
  sub_2171F0738(v874, &qword_27CB25330, &unk_21775E9B0);
  sub_2171F0738(v875, &qword_27CB25338, &unk_21775D3E0);
  sub_2171F0738(v876, &qword_27CB25320, &unk_21776E020);
  sub_2171F0738(v877, &qword_27CB24330, &unk_21775D460);
  OUTLINED_FUNCTION_169_1(v878);
  OUTLINED_FUNCTION_13();
}

uint64_t CloudArtist.Attributes.artwork.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_93();
  memcpy(v1, v2, 0x1B8uLL);
  return sub_2172E3D54();
}

void static CloudArtist.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  v3 = v2;
  v5 = v4;
  v6 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_67_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v11 = OUTLINED_FUNCTION_45_0(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_1();
  v107 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v100[-v15];
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_1();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v100[-v22];
  OUTLINED_FUNCTION_12_33();
  memcpy(v24, v25, v26);
  v27 = OUTLINED_FUNCTION_109_9();
  memcpy(v27, v3, 0x1B8uLL);
  OUTLINED_FUNCTION_12_33();
  memcpy(v28, v29, v30);
  memcpy(&v121[55], v3, 0x1B8uLL);
  OUTLINED_FUNCTION_12_33();
  memcpy(v31, v32, v33);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(&v124) == 1)
  {
    OUTLINED_FUNCTION_120_8(v120);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v120) == 1)
    {
      v104 = v20;
      v105 = v0;
      v106 = v8;
      memcpy(v122, v121, sizeof(v122));
      OUTLINED_FUNCTION_62_15();
      OUTLINED_FUNCTION_109_9();
      OUTLINED_FUNCTION_62_15();
      sub_2171F0738(v122, &qword_27CB25000, &unk_21776EA00);
      goto LABEL_9;
    }

LABEL_5:
    memcpy(v120, v121, sizeof(v120));
    OUTLINED_FUNCTION_225_0(v123, v122);
    v34 = OUTLINED_FUNCTION_109_9();
    OUTLINED_FUNCTION_225_0(v34, v122);
    v35 = &unk_27CB25008;
    v36 = &unk_21778F850;
    v37 = v120;
LABEL_6:
    sub_2171F0738(v37, v35, v36);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_120_8(v118);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v118) == 1)
  {
    goto LABEL_5;
  }

  v104 = v20;
  v105 = v0;
  v106 = v8;
  OUTLINED_FUNCTION_120_8(v109);
  OUTLINED_FUNCTION_120_8(v120);
  memcpy(v122, v121, sizeof(v122));
  OUTLINED_FUNCTION_95_13(v123, v110);
  v38 = OUTLINED_FUNCTION_109_9();
  OUTLINED_FUNCTION_95_13(v38, v110);
  sub_2172A92BC();
  v40 = v39;
  OUTLINED_FUNCTION_63(v109);
  memcpy(v110, v121, sizeof(v110));
  OUTLINED_FUNCTION_63(v110);
  if ((v40 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v41 = *(v5 + 448);
  v42 = v3[56];
  if (v41)
  {
    if (!v42)
    {
      goto LABEL_7;
    }

    v43 = *(v5 + 440) == v3[55] && v41 == v42;
    if (!v43 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v42)
  {
    goto LABEL_7;
  }

  v102 = type metadata accessor for CloudArtist.Attributes(0);
  v103 = v6;
  v44 = *(v108 + 48);
  OUTLINED_FUNCTION_62_15();
  v45 = v103;
  OUTLINED_FUNCTION_62_15();
  OUTLINED_FUNCTION_73(v23);
  if (v43)
  {
    OUTLINED_FUNCTION_73(&v23[v44]);
    if (v43)
    {
      sub_2171F0738(v23, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  sub_2172E3D54();
  OUTLINED_FUNCTION_73(&v23[v44]);
  if (v46)
  {
    (*(v106 + 8))(v16, v45);
LABEL_26:
    v35 = &qword_27CB24840;
    v36 = &unk_217758DD0;
    v37 = v23;
    goto LABEL_6;
  }

  v47 = v105;
  v48 = v106;
  (*(v106 + 32))(v105, &v23[v44], v45);
  OUTLINED_FUNCTION_1_74();
  sub_21752AF24(v49);
  v101 = sub_217751F08();
  v50 = *(v48 + 8);
  v50(v47, v45);
  v50(v16, v45);
  sub_2171F0738(v23, &unk_27CB277C0, &qword_217758DC0);
  if ((v101 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_28:
  v51 = v102;
  v52 = *(v102 + 28);
  v53 = *(v3 + v52);
  if (*(v5 + v52))
  {
    if (!v53)
    {
      goto LABEL_7;
    }

    sub_217751DE8();
    sub_217262A00();
    v55 = v54;

    if ((v55 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v53)
  {
    goto LABEL_7;
  }

  v56 = (v5 + v51[8]);
  memcpy(v109, v56, 0x48uLL);
  v57 = (v3 + v51[8]);
  memcpy(v110, v57, 0x48uLL);
  v58 = v56[1];
  v114 = *v56;
  v115 = v58;
  v59 = v56[3];
  v116 = v56[2];
  v117 = v59;
  v60 = v109[8];
  if (v109[8])
  {
    if (v110[8])
    {
      v61 = v57[1];
      v111[0] = *v57;
      v111[1] = v61;
      v62 = v57[3];
      v111[2] = v57[2];
      v111[3] = v62;
      *&v111[4] = v110[8];
      memcpy(v121, v111, 0x48uLL);
      v63 = v56[1];
      v118[0] = *v56;
      v118[1] = v63;
      v64 = v56[3];
      v118[2] = v56[2];
      v118[3] = v64;
      v119 = v109[8];
      sub_2172E3D54();
      sub_2172E3D54();
      sub_2172A9570();
      v66 = v65;
      sub_2171F0738(v111, &qword_27CB25010, &qword_21775B4F8);
      v112[0] = v114;
      v112[1] = v115;
      v112[2] = v116;
      v112[3] = v117;
      v113 = v60;
      sub_2171F0738(v112, &qword_27CB25010, &qword_21775B4F8);
      if ((v66 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_40;
    }

    goto LABEL_38;
  }

  if (v110[8])
  {
LABEL_38:
    OUTLINED_FUNCTION_74_12();
    v67 = v57[1];
    *&v121[9] = *v57;
    *&v121[11] = v67;
    v68 = v57[3];
    *&v121[13] = v57[2];
    *&v121[15] = v68;
    v121[8] = v60;
    v121[17] = v69;
    OUTLINED_FUNCTION_225_0(v109, v118);
    OUTLINED_FUNCTION_225_0(v110, v118);
    v35 = &unk_27CB25018;
    v36 = &unk_21775B500;
    v37 = v121;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_74_12();
  v121[8] = 0;
  OUTLINED_FUNCTION_62_15();
  OUTLINED_FUNCTION_62_15();
  sub_2171F0738(v121, &qword_27CB25010, &qword_21775B4F8);
LABEL_40:
  v70 = v51[9];
  v71 = *(v3 + v70);
  if (*(v5 + v70))
  {
    if (!v71)
    {
      goto LABEL_7;
    }

    sub_217751DE8();
    sub_217262CB4();
    v73 = v72;

    if ((v73 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v71)
  {
    goto LABEL_7;
  }

  v74 = v51[10];
  v75 = *(v3 + v74);
  if (*(v5 + v74))
  {
    if (!v75)
    {
      goto LABEL_7;
    }

    sub_217270790();
    if ((v76 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v75)
  {
    goto LABEL_7;
  }

  v77 = v51[11];
  v78 = *(v5 + v77);
  v79 = *(v3 + v77);
  if (v78 == 2)
  {
    if (v79 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v79 == 2 || ((v79 ^ v78) & 1) != 0)
  {
    goto LABEL_7;
  }

  v80 = v51[12];
  v81 = *(v5 + v80);
  v82 = *(v3 + v80);
  if (v81 == 2)
  {
    if (v82 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v82 == 2 || ((v82 ^ v81) & 1) != 0)
  {
    goto LABEL_7;
  }

  v83 = v51[13];
  v84 = (v5 + v83);
  v85 = *(v5 + v83 + 8);
  v86 = (v3 + v83);
  v87 = v86[1];
  if (!v85)
  {
    if (v87)
    {
      goto LABEL_7;
    }

    goto LABEL_69;
  }

  if (v87)
  {
    v88 = *v84 == *v86 && v85 == v87;
    if (v88 || (sub_217753058() & 1) != 0)
    {
LABEL_69:
      v89 = *(v108 + 48);
      v90 = v104;
      OUTLINED_FUNCTION_62_15();
      OUTLINED_FUNCTION_62_15();
      v91 = OUTLINED_FUNCTION_188_1();
      if (__swift_getEnumTagSinglePayload(v91, v92, v103) == 1)
      {
        v93 = v90;
        OUTLINED_FUNCTION_73(v90 + v89);
        if (v43)
        {
          sub_2171F0738(v90, &unk_27CB277C0, &qword_217758DC0);
          goto LABEL_7;
        }
      }

      else
      {
        sub_2172E3D54();
        v93 = v90;
        OUTLINED_FUNCTION_73(v90 + v89);
        if (!v43)
        {
          v94 = v106;
          v95 = v103;
          (*(v106 + 32))(v105, v90 + v89, v103);
          OUTLINED_FUNCTION_1_74();
          sub_21752AF24(v96);
          v97 = v107;
          sub_217751F08();
          v98 = *(v94 + 8);
          v99 = OUTLINED_FUNCTION_13_2();
          v98(v99);
          (v98)(v97, v95);
          sub_2171F0738(v90, &unk_27CB277C0, &qword_217758DC0);
          goto LABEL_7;
        }

        (*(v106 + 8))(v107, v103);
      }

      v35 = &qword_27CB24840;
      v36 = &unk_217758DD0;
      v37 = v93;
      goto LABEL_6;
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2175261CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6942747369747261 && a2 == 0xE90000000000006FLL;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6163697373616C63 && a2 == 0xEC0000006C72556CLL;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000002177AB890 == a2;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x73756E6F42736168 && a2 == 0xEF746E65746E6F43;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x636973754D736168 && a2 == 0xEE0073746E657645;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 1701667182 && a2 == 0xE400000000000000;
                    if (v14 || (sub_217753058() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 7107189 && a2 == 0xE300000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_217753058();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_217526560(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0x6942747369747261;
      break;
    case 2:
      result = 0x6163697373616C63;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
    case 5:
      result = 0x6169726F74696465;
      break;
    case 6:
      result = 0x6D614E65726E6567;
      break;
    case 7:
      result = 0x73756E6F42736168;
      break;
    case 8:
      result = 0x636973754D736168;
      break;
    case 9:
      result = 1701667182;
      break;
    case 10:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2175266CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2175261CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2175266F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217526558();
  *a1 = result;
  return result;
}

uint64_t sub_21752671C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21752BC2C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217526758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21752BC2C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudArtist.Attributes.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_171();
  a23 = v26;
  a24 = v27;
  v28 = v24;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29068, &qword_217773E78);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  v32 = OUTLINED_FUNCTION_160(v30, v30[3]);
  sub_21752BC2C(v32, v33, v34);
  sub_2177532F8();
  OUTLINED_FUNCTION_12_33();
  memcpy(v35, v36, v37);
  OUTLINED_FUNCTION_12_33();
  memcpy(v38, v39, v40);
  a14 = 0;
  sub_2172E3D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  v41 = sub_2172DEEB4();
  OUTLINED_FUNCTION_28_12(v67, &a14, v42, v43, v41);
  memcpy(v66, v67, sizeof(v66));
  if (v25)
  {
    sub_2171F0738(v66, &qword_27CB25000, &unk_21776EA00);
  }

  else
  {
    sub_2171F0738(v66, &qword_27CB25000, &unk_21776EA00);
    OUTLINED_FUNCTION_38_7();
    sub_217752EF8();
    v60 = type metadata accessor for CloudArtist.Attributes(0);
    v64[0] = 2;
    sub_2177516D8();
    OUTLINED_FUNCTION_1_74();
    sub_21752AF24(v44);
    OUTLINED_FUNCTION_38_7();
    sub_217752F38();
    v65 = *(v28 + v60[7]);
    a13 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
    v45 = sub_217361D3C(&unk_280BE23A0);
    OUTLINED_FUNCTION_28_12(&v65, &a13, v46, v47, v45);
    v50 = v60[8];
    memcpy(v64, (v28 + v50), sizeof(v64));
    memcpy(v63, (v28 + v50), sizeof(v63));
    a12 = 4;
    sub_2172E3D54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25040, &qword_21775B518);
    v51 = sub_2172DF104();
    OUTLINED_FUNCTION_28_12(v63, &a12, v52, v53, v51);
    memcpy(v62, v63, sizeof(v62));
    sub_2171F0738(v62, &qword_27CB25010, &qword_21775B4F8);
    v61 = *(v28 + v60[9]);
    a11 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
    v54 = sub_217361B60(&qword_280BE23B0);
    OUTLINED_FUNCTION_28_12(&v61, &a11, v55, v56, v54);
    v61 = *(v28 + v60[10]);
    a11 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    v57 = sub_2172DF950(&unk_280BE2328);
    OUTLINED_FUNCTION_28_12(&v61, &a11, v58, v59, v57);
    LOBYTE(v61) = 7;
    OUTLINED_FUNCTION_38_7();
    sub_217752F08();
    LOBYTE(v61) = 8;
    OUTLINED_FUNCTION_38_7();
    sub_217752F08();
    LOBYTE(v61) = 9;
    OUTLINED_FUNCTION_38_7();
    sub_217752EF8();
    LOBYTE(v61) = 10;
    OUTLINED_FUNCTION_38_7();
    sub_217752F38();
  }

  v48 = OUTLINED_FUNCTION_13_2();
  v49(v48);
  OUTLINED_FUNCTION_170();
}

void CloudArtist.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v35 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v10 = OUTLINED_FUNCTION_45_0(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_1();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  memcpy(v37, v0, sizeof(v37));
  v17 = v0[54];
  memcpy(v38, v0, sizeof(v38));
  v39 = v17;
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v38) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v36, v37, sizeof(v36));
    OUTLINED_FUNCTION_119();
    CloudArtwork.hash(into:)(v2);
    sub_217751DE8();
    sub_217265A08(v2, v17);
  }

  if (v0[56])
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v18 = type metadata accessor for CloudArtist.Attributes(0);
  sub_2172E3D54();
  if (__swift_getEnumTagSinglePayload(v16, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    (*(v35 + 32))(v8, v16, v3);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_1_74();
    v20 = sub_21752AF24(v19);
    OUTLINED_FUNCTION_84_0(v20);
    v21 = OUTLINED_FUNCTION_13_2();
    v22(v21);
  }

  if (*(v0 + v18[7]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v23 = v0 + v18[8];
  if (*(v23 + 8))
  {
    v24 = *(v23 + 1);
    v36[0] = *v23;
    v36[1] = v24;
    v25 = *(v23 + 3);
    v36[2] = *(v23 + 2);
    v36[3] = v25;
    OUTLINED_FUNCTION_119();
    CloudEditorialNotes.hash(into:)(v2);
    sub_217751DE8();
    v26 = OUTLINED_FUNCTION_185_0();
    sub_217265A08(v26, v27);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v18[9]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v18[10]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_217281100();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v18[11]) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  if (*(v0 + v18[12]) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  if (*(v0 + v18[13] + 8))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  sub_2172E3D54();
  v28 = OUTLINED_FUNCTION_188_1();
  if (__swift_getEnumTagSinglePayload(v28, v29, v3) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    (*(v35 + 32))(v8, v13, v3);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_1_74();
    v31 = sub_21752AF24(v30);
    OUTLINED_FUNCTION_84_0(v31);
    v32 = OUTLINED_FUNCTION_13_2();
    v33(v32);
  }

  OUTLINED_FUNCTION_13();
}

void CloudArtist.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  a22 = v25;
  a23 = v26;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v30 = OUTLINED_FUNCTION_45_0(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_1();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29070, &qword_217773E80);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35);
  v36 = OUTLINED_FUNCTION_105_11();
  v66 = type metadata accessor for CloudArtist.Attributes(v36);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1();
  v65 = (v39 - v38);
  v40 = v28[4];
  v41 = OUTLINED_FUNCTION_160(v28, v28[3]);
  sub_21752BC2C(v41, v42, v43);
  sub_2177532C8();
  if (v23)
  {
    OUTLINED_FUNCTION_24_29();
    __swift_destroy_boxed_opaque_existential_1(v28);
    if (v33)
    {
      v44 = v66;
      sub_2171F0738(v65 + v66[6], &unk_27CB277C0, &qword_217758DC0);
      if ((v24 & 1) == 0)
      {
LABEL_9:
        if (!v40)
        {
          goto LABEL_11;
        }

LABEL_10:
        memcpy(v69, v65 + v44[8], 0x48uLL);
        sub_2171F0738(v69, &qword_27CB25010, &qword_21775B4F8);
        goto LABEL_11;
      }
    }

    else
    {
      v44 = v66;
      if (!v24)
      {
        goto LABEL_9;
      }
    }

    if ((v40 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  a13 = 0;
  sub_2172DF600();
  sub_217752E58();
  memcpy(v65, v69, 0x1B8uLL);
  v65[55] = sub_217752E18();
  v65[56] = v45;
  sub_2177516D8();
  LOBYTE(v68[0]) = 2;
  OUTLINED_FUNCTION_1_74();
  sub_21752AF24(v46);
  sub_217752E58();
  sub_2172E21DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
  LOBYTE(v67) = 3;
  v47 = sub_217361D3C(&unk_280BE2398);
  OUTLINED_FUNCTION_52_19(v47, &v67, v48, v49, v47);
  *(v65 + v66[7]) = v68[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25040, &qword_21775B518);
  a12 = 4;
  v50 = sub_2172DF7DC();
  OUTLINED_FUNCTION_52_19(v50, &a12, v51, v52, v50);
  memcpy(v65 + v66[8], v68, 0x48uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
  HIBYTE(a11) = 5;
  v53 = sub_217361B60(&qword_280BE23A8);
  OUTLINED_FUNCTION_52_19(v53, &a11 + 1, v54, v55, v53);
  *(v65 + v66[9]) = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
  HIBYTE(a11) = 6;
  v56 = sub_2172DF950(&unk_280BE2318);
  OUTLINED_FUNCTION_52_19(v56, &a11 + 1, v57, v58, v56);
  *(v65 + v66[10]) = v67;
  LOBYTE(v67) = 7;
  *(v65 + v66[11]) = sub_217752E28();
  LOBYTE(v67) = 8;
  *(v65 + v66[12]) = sub_217752E28();
  LOBYTE(v67) = 9;
  v59 = sub_217752E18();
  v60 = (v65 + v66[13]);
  *v60 = v59;
  v60[1] = v61;
  LOBYTE(v67) = 10;
  sub_217752E58();
  v62 = OUTLINED_FUNCTION_81_12();
  v63(v62);
  sub_2172E21DC();
  OUTLINED_FUNCTION_16_42();
  sub_21752BBD4();
  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_15_41();
  sub_21752AECC(v65, v64);
LABEL_11:
  OUTLINED_FUNCTION_170();
}

MusicKit::CloudArtist::Relationships::CodingKeys_optional __swiftcall CloudArtist.Relationships.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217752DC8();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

MusicKit::CloudArtist::Relationships::CodingKeys_optional __swiftcall CloudArtist.Relationships.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = CloudArtist.Relationships.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_217527A3C()
{
  result = 0x736D75626C61;
  switch(*v0)
  {
    case 1:
      result = 0x676F6C61746163;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x7365726E6567;
      break;
    case 4:
      result = 0x69762D636973756DLL;
      break;
    case 5:
      result = 0x7473696C79616C70;
      break;
    case 6:
      result = 0x6E6F6974617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217527B38@<X0>(uint64_t *a1@<X8>)
{
  result = CloudArtist.Relationships.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_217527B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21738C408(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217527BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21738C408(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

BOOL static CloudArtist.Relationships.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27_32(v2, v3, v4, v5, v6, v7, v8, v9, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316[0]);
  OUTLINED_FUNCTION_62_15();
  if (!v317)
  {
    if (!v318)
    {
      sub_2171F0738(v316, &qword_27CB24270, &unk_21775D640);
      goto LABEL_7;
    }

LABEL_12:
    v94 = &unk_27CB25070;
    v95 = &unk_21777EF10;
    goto LABEL_58;
  }

  v10 = OUTLINED_FUNCTION_159_1();
  if (!v318)
  {
    sub_2171F0738(&v300, &qword_27CB24278, &unk_217759070);
    goto LABEL_12;
  }

  v18 = OUTLINED_FUNCTION_75(v10, v11, v12, v13, v14, v15, v16, v17, v284);
  v26 = OUTLINED_FUNCTION_87_1(v18, v19, v20, v21, v22, v23, v24, v25, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
  v28 = sub_2172DDD44(v26, v27);
  v29 = v28;
  v37 = OUTLINED_FUNCTION_69_0(v28, v30, v31, v32, v33, v34, v35, v36, v284);
  OUTLINED_FUNCTION_68_0(v37, v38, v39, v40, v41, v42, v43, v44, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299);
  sub_2171F0738(v316, &qword_27CB24270, &unk_21775D640);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  OUTLINED_FUNCTION_27_32(v1 + 128, v45, v46, v47, v48, v49, v50, v51, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316[0]);
  OUTLINED_FUNCTION_32_26(v0 + 128);
  if (!v317)
  {
    if (!v318)
    {
      sub_2171F0738(v316, &qword_27CB24280, &unk_21775D680);
      goto LABEL_15;
    }

LABEL_20:
    v94 = &qword_27CB25068;
    v95 = &qword_21775B528;
    goto LABEL_58;
  }

  v52 = OUTLINED_FUNCTION_159_1();
  if (!v318)
  {
    sub_2171F0738(&v300, &qword_27CB24288, &qword_217758F80);
    goto LABEL_20;
  }

  v60 = OUTLINED_FUNCTION_75(v52, v53, v54, v55, v56, v57, v58, v59, v284);
  v68 = OUTLINED_FUNCTION_87_1(v60, v61, v62, v63, v64, v65, v66, v67, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
  v70 = sub_2172DE010(v68, v69);
  v71 = v70;
  v79 = OUTLINED_FUNCTION_69_0(v70, v72, v73, v74, v75, v76, v77, v78, v284);
  OUTLINED_FUNCTION_68_0(v79, v80, v81, v82, v83, v84, v85, v86, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299);
  sub_2171F0738(v316, &qword_27CB24280, &unk_21775D680);
  if ((v71 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  OUTLINED_FUNCTION_27_32(v1 + 256, v87, v88, v89, v90, v91, v92, v93, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316[0]);
  OUTLINED_FUNCTION_32_26(v0 + 256);
  if (!v317)
  {
    if (!v318)
    {
      sub_2171F0738(v316, &qword_27CB24330, &unk_21775D460);
      goto LABEL_23;
    }

LABEL_28:
    v94 = &unk_27CB29078;
    v95 = &unk_217773E88;
    goto LABEL_58;
  }

  v96 = OUTLINED_FUNCTION_159_1();
  if (!v318)
  {
    sub_2171F0738(&v300, &qword_27CB24338, &unk_217796E10);
    goto LABEL_28;
  }

  v104 = OUTLINED_FUNCTION_75(v96, v97, v98, v99, v100, v101, v102, v103, v284);
  v112 = OUTLINED_FUNCTION_87_1(v104, v105, v106, v107, v108, v109, v110, v111, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
  v114 = sub_2172DE160(v112, v113);
  v115 = v114;
  v123 = OUTLINED_FUNCTION_69_0(v114, v116, v117, v118, v119, v120, v121, v122, v284);
  OUTLINED_FUNCTION_68_0(v123, v124, v125, v126, v127, v128, v129, v130, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299);
  sub_2171F0738(v316, &qword_27CB24330, &unk_21775D460);
  if ((v115 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  OUTLINED_FUNCTION_27_32(v1 + 384, v131, v132, v133, v134, v135, v136, v137, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316[0]);
  OUTLINED_FUNCTION_32_26(v0 + 384);
  if (!v317)
  {
    if (!v318)
    {
      sub_2171F0738(v316, &qword_27CB243B0, &unk_21775D670);
      goto LABEL_31;
    }

LABEL_36:
    v94 = &unk_27CB25078;
    v95 = &unk_21775B530;
    goto LABEL_58;
  }

  v138 = OUTLINED_FUNCTION_159_1();
  if (!v318)
  {
    sub_2171F0738(&v300, &qword_27CB243B8, &qword_2177586B0);
    goto LABEL_36;
  }

  v146 = OUTLINED_FUNCTION_75(v138, v139, v140, v141, v142, v143, v144, v145, v284);
  v154 = OUTLINED_FUNCTION_87_1(v146, v147, v148, v149, v150, v151, v152, v153, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
  v156 = sub_2172DDD5C(v154, v155);
  v157 = v156;
  v165 = OUTLINED_FUNCTION_69_0(v156, v158, v159, v160, v161, v162, v163, v164, v284);
  OUTLINED_FUNCTION_68_0(v165, v166, v167, v168, v169, v170, v171, v172, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299);
  sub_2171F0738(v316, &qword_27CB243B0, &unk_21775D670);
  if ((v157 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  OUTLINED_FUNCTION_27_32(v1 + 512, v173, v174, v175, v176, v177, v178, v179, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316[0]);
  OUTLINED_FUNCTION_32_26(v0 + 512);
  if (!v317)
  {
    if (!v318)
    {
      sub_2171F0738(v316, &qword_27CB242B0, &unk_21775D630);
      goto LABEL_39;
    }

LABEL_44:
    v94 = &qword_27CB251A0;
    v95 = &unk_21777EF30;
    goto LABEL_58;
  }

  v180 = OUTLINED_FUNCTION_159_1();
  if (!v318)
  {
    sub_2171F0738(&v300, &qword_27CB242B8, &unk_21777EEA0);
    goto LABEL_44;
  }

  v188 = OUTLINED_FUNCTION_75(v180, v181, v182, v183, v184, v185, v186, v187, v284);
  v196 = OUTLINED_FUNCTION_87_1(v188, v189, v190, v191, v192, v193, v194, v195, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
  v198 = sub_2172DE088(v196, v197);
  v199 = v198;
  v207 = OUTLINED_FUNCTION_69_0(v198, v200, v201, v202, v203, v204, v205, v206, v284);
  OUTLINED_FUNCTION_68_0(v207, v208, v209, v210, v211, v212, v213, v214, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299);
  sub_2171F0738(v316, &qword_27CB242B0, &unk_21775D630);
  if ((v199 & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  OUTLINED_FUNCTION_27_32(v1 + 640, v215, v216, v217, v218, v219, v220, v221, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316[0]);
  OUTLINED_FUNCTION_32_26(v0 + 640);
  if (v317)
  {
    v222 = OUTLINED_FUNCTION_159_1();
    if (v318)
    {
      v230 = OUTLINED_FUNCTION_75(v222, v223, v224, v225, v226, v227, v228, v229, v284);
      v238 = OUTLINED_FUNCTION_87_1(v230, v231, v232, v233, v234, v235, v236, v237, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
      v240 = sub_2172DE118(v238, v239);
      v241 = v240;
      v249 = OUTLINED_FUNCTION_69_0(v240, v242, v243, v244, v245, v246, v247, v248, v284);
      OUTLINED_FUNCTION_68_0(v249, v250, v251, v252, v253, v254, v255, v256, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299);
      sub_2171F0738(v316, &qword_27CB242C0, &unk_21775D650);
      if ((v241 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_47;
    }

    sub_2171F0738(&v300, &qword_27CB242C8, &unk_217758970);
LABEL_52:
    v94 = &qword_27CB25198;
    v95 = &qword_21775B550;
    goto LABEL_58;
  }

  if (v318)
  {
    goto LABEL_52;
  }

  sub_2171F0738(v316, &qword_27CB242C0, &unk_21775D650);
LABEL_47:
  OUTLINED_FUNCTION_27_32(v1 + 768, v257, v258, v259, v260, v261, v262, v263, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316[0]);
  OUTLINED_FUNCTION_32_26(v0 + 768);
  if (v317)
  {
    v264 = OUTLINED_FUNCTION_159_1();
    if (v318)
    {
      v272 = OUTLINED_FUNCTION_75(v264, v265, v266, v267, v268, v269, v270, v271, v284);
      v280 = OUTLINED_FUNCTION_87_1(v272, v273, v274, v275, v276, v277, v278, v279, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300);
      v282 = sub_2172DE0A0(v280, v281);
      OUTLINED_FUNCTION_169_1(&v284);
      OUTLINED_FUNCTION_169_1(&v300);
      sub_2171F0738(v316, &qword_27CB242F0, &unk_217797B80);
      return (v282 & 1) != 0;
    }

    sub_2171F0738(&v300, &qword_27CB242F8, &qword_21775D6C0);
  }

  else if (!v318)
  {
    sub_2171F0738(v316, &qword_27CB242F0, &unk_217797B80);
    return 1;
  }

  v94 = &unk_27CB29080;
  v95 = &unk_21777EF50;
LABEL_58:
  sub_2171F0738(v316, v94, v95);
  return 0;
}

uint64_t CloudArtist.Relationships.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29088, &qword_217773E90);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_67_1();
  v4 = OUTLINED_FUNCTION_160(a1, a1[3]);
  v7 = sub_21738C408(v4, v5, v6);
  OUTLINED_FUNCTION_105(&type metadata for CloudArtist.Relationships.CodingKeys, v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
  sub_2172DFCDC();
  OUTLINED_FUNCTION_42_1();
  sub_217752F38();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24288, &qword_217758F80);
    sub_2172DFB70();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24338, &unk_217796E10);
    sub_21752BC80();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243B8, &qword_2177586B0);
    sub_2172DFEA0();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242B8, &unk_21777EEA0);
    sub_2172E0BF8();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
    sub_2172E0A8C();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242F8, &qword_21775D6C0);
    sub_21752BDEC();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
  }

  v9 = OUTLINED_FUNCTION_113_3();
  return v10(v9);
}

uint64_t CloudArtist.Relationships.hash(into:)()
{
  v0 = sub_2172E3D54();
  if (v80)
  {
    OUTLINED_FUNCTION_10_1(v0, v1, v2, v3, v4, v5, v6, v7, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
    OUTLINED_FUNCTION_24();
    v8 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6DC(v8);
    sub_2171F0738(&v64, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v9 = sub_2172E3D54();
  if (v80)
  {
    OUTLINED_FUNCTION_10_1(v9, v10, v11, v12, v13, v14, v15, v16, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
    OUTLINED_FUNCTION_24();
    v17 = OUTLINED_FUNCTION_11_7();
    sub_2172DE754(v17);
    sub_2171F0738(&v64, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v18 = sub_2172E3D54();
  if (v80)
  {
    OUTLINED_FUNCTION_10_1(v18, v19, v20, v21, v22, v23, v24, v25, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
    OUTLINED_FUNCTION_24();
    v26 = OUTLINED_FUNCTION_11_7();
    sub_2172DE76C(v26);
    sub_2171F0738(&v64, &qword_27CB24338, &unk_217796E10);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v27 = sub_2172E3D54();
  if (v80)
  {
    OUTLINED_FUNCTION_10_1(v27, v28, v29, v30, v31, v32, v33, v34, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
    OUTLINED_FUNCTION_24();
    v35 = OUTLINED_FUNCTION_11_7();
    sub_2172DE70C(v35);
    sub_2171F0738(&v64, &qword_27CB243B8, &qword_2177586B0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v36 = sub_2172E3D54();
  if (v80)
  {
    OUTLINED_FUNCTION_10_1(v36, v37, v38, v39, v40, v41, v42, v43, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
    OUTLINED_FUNCTION_24();
    v44 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6F4(v44);
    sub_2171F0738(&v64, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v45 = sub_2172E3D54();
  if (v80)
  {
    OUTLINED_FUNCTION_10_1(v45, v46, v47, v48, v49, v50, v51, v52, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
    OUTLINED_FUNCTION_24();
    v53 = OUTLINED_FUNCTION_11_7();
    sub_2172DE724(v53);
    sub_2171F0738(&v64, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v54 = sub_2172E3D54();
  if (!v80)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v54, v55, v56, v57, v58, v59, v60, v61, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
  OUTLINED_FUNCTION_24();
  v62 = OUTLINED_FUNCTION_11_7();
  sub_2172DE664(v62);
  return sub_2171F0738(&v64, &qword_27CB242F8, &qword_21775D6C0);
}

uint64_t CloudArtist.Relationships.hashValue.getter()
{
  sub_2177531E8();
  v0 = sub_2172E3D54();
  if (v81)
  {
    OUTLINED_FUNCTION_180(v0, v1, v2, v3, v4, v5, v6, v7, v64, v65[0], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_157_0();
    v8 = OUTLINED_FUNCTION_89_0();
    sub_2172DE6DC(v8);
    sub_2171F0738(v65, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v9 = sub_2172E3D54();
  if (v81)
  {
    OUTLINED_FUNCTION_180(v9, v10, v11, v12, v13, v14, v15, v16, v64, v65[0], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_157_0();
    v17 = OUTLINED_FUNCTION_89_0();
    sub_2172DE754(v17);
    sub_2171F0738(v65, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v18 = sub_2172E3D54();
  if (v81)
  {
    OUTLINED_FUNCTION_180(v18, v19, v20, v21, v22, v23, v24, v25, v64, v65[0], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_157_0();
    v26 = OUTLINED_FUNCTION_89_0();
    sub_2172DE76C(v26);
    sub_2171F0738(v65, &qword_27CB24338, &unk_217796E10);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v27 = sub_2172E3D54();
  if (v81)
  {
    OUTLINED_FUNCTION_180(v27, v28, v29, v30, v31, v32, v33, v34, v64, v65[0], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_157_0();
    v35 = OUTLINED_FUNCTION_89_0();
    sub_2172DE70C(v35);
    sub_2171F0738(v65, &qword_27CB243B8, &qword_2177586B0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v36 = sub_2172E3D54();
  if (v81)
  {
    OUTLINED_FUNCTION_180(v36, v37, v38, v39, v40, v41, v42, v43, v64, v65[0], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_157_0();
    v44 = OUTLINED_FUNCTION_89_0();
    sub_2172DE6F4(v44);
    sub_2171F0738(v65, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v45 = sub_2172E3D54();
  if (v81)
  {
    OUTLINED_FUNCTION_180(v45, v46, v47, v48, v49, v50, v51, v52, v64, v65[0], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_157_0();
    v53 = OUTLINED_FUNCTION_89_0();
    sub_2172DE724(v53);
    sub_2171F0738(v65, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v54 = sub_2172E3D54();
  if (v81)
  {
    OUTLINED_FUNCTION_180(v54, v55, v56, v57, v58, v59, v60, v61, v64, v65[0], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_157_0();
    v62 = OUTLINED_FUNCTION_89_0();
    sub_2172DE664(v62);
    sub_2171F0738(v65, &qword_27CB242F8, &qword_21775D6C0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  return sub_217753238();
}

void CloudArtist.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB290D0, &qword_217773E98);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_160(v2, v2[3]);
  v9 = sub_21738C408(v6, v7, v8);
  OUTLINED_FUNCTION_114_7(&type metadata for CloudArtist.Relationships.CodingKeys, v10, v9);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
    v11 = sub_2172E0450();
    OUTLINED_FUNCTION_8_47(v11);
    OUTLINED_FUNCTION_168_2(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24288, &qword_217758F80);
    v12 = sub_2172E02E4();
    OUTLINED_FUNCTION_8_47(v12);
    OUTLINED_FUNCTION_168_2(&v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24338, &unk_217796E10);
    v13 = sub_21752BF58();
    OUTLINED_FUNCTION_8_47(v13);
    OUTLINED_FUNCTION_168_2(&v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243B8, &qword_2177586B0);
    v14 = sub_2172E05BC();
    OUTLINED_FUNCTION_8_47(v14);
    OUTLINED_FUNCTION_168_2(&v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242B8, &unk_21777EEA0);
    v15 = sub_2172E0ED0();
    OUTLINED_FUNCTION_8_47(v15);
    OUTLINED_FUNCTION_168_2(&v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
    v16 = sub_2172E0D64();
    OUTLINED_FUNCTION_8_47(v16);
    OUTLINED_FUNCTION_168_2(&v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242F8, &qword_21775D6C0);
    v17 = sub_21752C0C4();
    OUTLINED_FUNCTION_8_47(v17);
    v18 = OUTLINED_FUNCTION_22_34();
    v19(v18);
    OUTLINED_FUNCTION_168_2(&v26);
    sub_21738C174(v20, v4);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_21726A204(v20);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_217528EC8(uint64_t a1)
{
  sub_2177531E8();
  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6DC(v4);
    sub_2171F0738(__dst, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE754(v4);
    sub_2171F0738(__dst, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE76C(v4);
    sub_2171F0738(__dst, &qword_27CB24338, &unk_217796E10);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE70C(v4);
    sub_2171F0738(__dst, &qword_27CB243B8, &qword_2177586B0);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6F4(v4);
    sub_2171F0738(__dst, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE724(v4);
    sub_2171F0738(__dst, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE664(v4);
    sub_2171F0738(__dst, &qword_27CB242F8, &qword_21775D6C0);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

MusicKit::CloudArtist::Associations::CodingKeys_optional __swiftcall CloudArtist.Associations.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217752DC8();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

MusicKit::CloudArtist::Associations::CodingKeys_optional __swiftcall CloudArtist.Associations.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = CloudArtist.Associations.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t sub_2175292E8()
{
  result = 0x6465727574616566;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      v2 = 1819047270;
      goto LABEL_11;
    case 5:
      result = 0x722D74736574616CLL;
      break;
    case 6:
      v2 = 1702259052;
LABEL_11:
      result = v2 | 0x626C612D00000000;
      break;
    case 7:
      result = 0x2D72616C696D6973;
      break;
    case 8:
      result = 0x73656C676E6973;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 0xA:
      result = 0x676E6F732D706F74;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_217529474@<X0>(uint64_t *a1@<X8>)
{
  result = CloudArtist.Associations.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2175294B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21738C360(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175294F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21738C360(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

BOOL static CloudArtist.Associations.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27_32(v2, v3, v4, v5, v6, v7, v8, v9, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484[0]);
  OUTLINED_FUNCTION_62_15();
  if (v485)
  {
    v10 = OUTLINED_FUNCTION_159_1();
    if (!v486)
    {
      goto LABEL_55;
    }

    v18 = OUTLINED_FUNCTION_75(v10, v11, v12, v13, v14, v15, v16, v17, v452);
    v26 = OUTLINED_FUNCTION_87_1(v18, v19, v20, v21, v22, v23, v24, v25, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468);
    v28 = sub_2172DDD44(v26, v27);
    v29 = v28;
    v37 = OUTLINED_FUNCTION_69_0(v28, v30, v31, v32, v33, v34, v35, v36, v452);
    OUTLINED_FUNCTION_68_0(v37, v38, v39, v40, v41, v42, v43, v44, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467);
    sub_2171F0738(v484, &qword_27CB24270, &unk_21775D640);
    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v486)
    {
      goto LABEL_56;
    }

    sub_2171F0738(v484, &qword_27CB24270, &unk_21775D640);
  }

  OUTLINED_FUNCTION_27_32(v1 + 128, v45, v46, v47, v48, v49, v50, v51, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484[0]);
  OUTLINED_FUNCTION_32_26(v0 + 128);
  if (v485)
  {
    v52 = OUTLINED_FUNCTION_159_1();
    if (!v486)
    {
      goto LABEL_55;
    }

    v60 = OUTLINED_FUNCTION_75(v52, v53, v54, v55, v56, v57, v58, v59, v452);
    v68 = OUTLINED_FUNCTION_87_1(v60, v61, v62, v63, v64, v65, v66, v67, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468);
    v70 = sub_2172DDD44(v68, v69);
    v71 = v70;
    v79 = OUTLINED_FUNCTION_69_0(v70, v72, v73, v74, v75, v76, v77, v78, v452);
    OUTLINED_FUNCTION_68_0(v79, v80, v81, v82, v83, v84, v85, v86, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467);
    sub_2171F0738(v484, &qword_27CB24270, &unk_21775D640);
    if ((v71 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v486)
    {
      goto LABEL_56;
    }

    sub_2171F0738(v484, &qword_27CB24270, &unk_21775D640);
  }

  OUTLINED_FUNCTION_27_32(v1 + 256, v87, v88, v89, v90, v91, v92, v93, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484[0]);
  OUTLINED_FUNCTION_32_26(v0 + 256);
  if (v485)
  {
    v94 = OUTLINED_FUNCTION_159_1();
    if (!v486)
    {
      goto LABEL_55;
    }

    v102 = OUTLINED_FUNCTION_75(v94, v95, v96, v97, v98, v99, v100, v101, v452);
    v110 = OUTLINED_FUNCTION_87_1(v102, v103, v104, v105, v106, v107, v108, v109, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468);
    v112 = sub_2172DDD44(v110, v111);
    v113 = v112;
    v121 = OUTLINED_FUNCTION_69_0(v112, v114, v115, v116, v117, v118, v119, v120, v452);
    OUTLINED_FUNCTION_68_0(v121, v122, v123, v124, v125, v126, v127, v128, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467);
    sub_2171F0738(v484, &qword_27CB24270, &unk_21775D640);
    if ((v113 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v486)
    {
      goto LABEL_56;
    }

    sub_2171F0738(v484, &qword_27CB24270, &unk_21775D640);
  }

  OUTLINED_FUNCTION_27_32(v1 + 384, v129, v130, v131, v132, v133, v134, v135, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484[0]);
  OUTLINED_FUNCTION_32_26(v0 + 384);
  if (!v485)
  {
    if (!v486)
    {
      sub_2171F0738(v484, &qword_27CB242C0, &unk_21775D650);
      goto LABEL_25;
    }

LABEL_30:
    v220 = &qword_27CB25198;
    v221 = &qword_21775B550;
LABEL_57:
    sub_2171F0738(v484, v220, v221);
    return 0;
  }

  v136 = OUTLINED_FUNCTION_159_1();
  if (!v486)
  {
    sub_2171F0738(&v468, &qword_27CB242C8, &unk_217758970);
    goto LABEL_30;
  }

  v144 = OUTLINED_FUNCTION_75(v136, v137, v138, v139, v140, v141, v142, v143, v452);
  v152 = OUTLINED_FUNCTION_87_1(v144, v145, v146, v147, v148, v149, v150, v151, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468);
  v154 = sub_2172DE118(v152, v153);
  v155 = v154;
  v163 = OUTLINED_FUNCTION_69_0(v154, v156, v157, v158, v159, v160, v161, v162, v452);
  OUTLINED_FUNCTION_68_0(v163, v164, v165, v166, v167, v168, v169, v170, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467);
  sub_2171F0738(v484, &qword_27CB242C0, &unk_21775D650);
  if ((v155 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  OUTLINED_FUNCTION_27_32(v1 + 512, v171, v172, v173, v174, v175, v176, v177, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484[0]);
  OUTLINED_FUNCTION_32_26(v0 + 512);
  if (v485)
  {
    v178 = OUTLINED_FUNCTION_159_1();
    if (!v486)
    {
      goto LABEL_55;
    }

    v186 = OUTLINED_FUNCTION_75(v178, v179, v180, v181, v182, v183, v184, v185, v452);
    v194 = OUTLINED_FUNCTION_87_1(v186, v187, v188, v189, v190, v191, v192, v193, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468);
    v196 = sub_2172DDD44(v194, v195);
    v197 = v196;
    v205 = OUTLINED_FUNCTION_69_0(v196, v198, v199, v200, v201, v202, v203, v204, v452);
    OUTLINED_FUNCTION_68_0(v205, v206, v207, v208, v209, v210, v211, v212, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467);
    sub_2171F0738(v484, &qword_27CB24270, &unk_21775D640);
    if ((v197 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v486)
    {
      goto LABEL_56;
    }

    sub_2171F0738(v484, &qword_27CB24270, &unk_21775D640);
  }

  OUTLINED_FUNCTION_27_32(v1 + 640, v213, v214, v215, v216, v217, v218, v219, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484[0]);
  OUTLINED_FUNCTION_32_26(v0 + 640);
  if (v485)
  {
    v222 = OUTLINED_FUNCTION_159_1();
    if (v486)
    {
      v230 = OUTLINED_FUNCTION_75(v222, v223, v224, v225, v226, v227, v228, v229, v452);
      v238 = OUTLINED_FUNCTION_87_1(v230, v231, v232, v233, v234, v235, v236, v237, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468);
      v240 = sub_2172DDD44(v238, v239);
      v241 = v240;
      v249 = OUTLINED_FUNCTION_69_0(v240, v242, v243, v244, v245, v246, v247, v248, v452);
      OUTLINED_FUNCTION_68_0(v249, v250, v251, v252, v253, v254, v255, v256, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467);
      sub_2171F0738(v484, &qword_27CB24270, &unk_21775D640);
      if ((v241 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_39;
    }

LABEL_55:
    sub_2171F0738(&v468, &qword_27CB24278, &unk_217759070);
    goto LABEL_56;
  }

  if (v486)
  {
    goto LABEL_56;
  }

  sub_2171F0738(v484, &qword_27CB24270, &unk_21775D640);
LABEL_39:
  OUTLINED_FUNCTION_27_32(v1 + 768, v257, v258, v259, v260, v261, v262, v263, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484[0]);
  OUTLINED_FUNCTION_32_26(v0 + 768);
  if (!v485)
  {
    if (!v486)
    {
      sub_2171F0738(v484, &qword_27CB24270, &unk_21775D640);
      goto LABEL_45;
    }

LABEL_56:
    v220 = &unk_27CB25070;
    v221 = &unk_21777EF10;
    goto LABEL_57;
  }

  v264 = OUTLINED_FUNCTION_159_1();
  if (!v486)
  {
    goto LABEL_55;
  }

  v272 = OUTLINED_FUNCTION_75(v264, v265, v266, v267, v268, v269, v270, v271, v452);
  v280 = OUTLINED_FUNCTION_87_1(v272, v273, v274, v275, v276, v277, v278, v279, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468);
  v282 = sub_2172DDD44(v280, v281);
  v283 = v282;
  v291 = OUTLINED_FUNCTION_69_0(v282, v284, v285, v286, v287, v288, v289, v290, v452);
  OUTLINED_FUNCTION_68_0(v291, v292, v293, v294, v295, v296, v297, v298, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467);
  sub_2171F0738(v484, &qword_27CB24270, &unk_21775D640);
  if ((v283 & 1) == 0)
  {
    return 0;
  }

LABEL_45:
  OUTLINED_FUNCTION_27_32(v1 + 896, v299, v300, v301, v302, v303, v304, v305, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484[0]);
  OUTLINED_FUNCTION_32_26(v0 + 896);
  if (!v485)
  {
    if (!v486)
    {
      sub_2171F0738(v484, &qword_27CB24280, &unk_21775D680);
      goto LABEL_51;
    }

LABEL_61:
    v220 = &qword_27CB25068;
    v221 = &qword_21775B528;
    goto LABEL_57;
  }

  v306 = OUTLINED_FUNCTION_159_1();
  if (!v486)
  {
    sub_2171F0738(&v468, &qword_27CB24288, &qword_217758F80);
    goto LABEL_61;
  }

  v314 = OUTLINED_FUNCTION_75(v306, v307, v308, v309, v310, v311, v312, v313, v452);
  v322 = OUTLINED_FUNCTION_87_1(v314, v315, v316, v317, v318, v319, v320, v321, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468);
  v324 = sub_2172DE010(v322, v323);
  v325 = v324;
  v333 = OUTLINED_FUNCTION_69_0(v324, v326, v327, v328, v329, v330, v331, v332, v452);
  OUTLINED_FUNCTION_68_0(v333, v334, v335, v336, v337, v338, v339, v340, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467);
  sub_2171F0738(v484, &qword_27CB24280, &unk_21775D680);
  if ((v325 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  OUTLINED_FUNCTION_27_32(v1 + 1024, v341, v342, v343, v344, v345, v346, v347, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484[0]);
  OUTLINED_FUNCTION_32_26(v0 + 1024);
  if (!v485)
  {
    if (!v486)
    {
      sub_2171F0738(v484, &qword_27CB24270, &unk_21775D640);
      goto LABEL_64;
    }

    goto LABEL_56;
  }

  v348 = OUTLINED_FUNCTION_159_1();
  if (!v486)
  {
    goto LABEL_55;
  }

  v356 = OUTLINED_FUNCTION_75(v348, v349, v350, v351, v352, v353, v354, v355, v452);
  v364 = OUTLINED_FUNCTION_87_1(v356, v357, v358, v359, v360, v361, v362, v363, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468);
  v366 = sub_2172DDD44(v364, v365);
  v367 = v366;
  v375 = OUTLINED_FUNCTION_69_0(v366, v368, v369, v370, v371, v372, v373, v374, v452);
  OUTLINED_FUNCTION_68_0(v375, v376, v377, v378, v379, v380, v381, v382, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467);
  sub_2171F0738(v484, &qword_27CB24270, &unk_21775D640);
  if ((v367 & 1) == 0)
  {
    return 0;
  }

LABEL_64:
  OUTLINED_FUNCTION_27_32(v1 + 1152, v383, v384, v385, v386, v387, v388, v389, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484[0]);
  OUTLINED_FUNCTION_32_26(v0 + 1152);
  if (!v485)
  {
    if (!v486)
    {
      sub_2171F0738(v484, &qword_27CB242B0, &unk_21775D630);
      goto LABEL_70;
    }

    goto LABEL_75;
  }

  v391 = OUTLINED_FUNCTION_159_1();
  if (!v486)
  {
    sub_2171F0738(&v468, &qword_27CB242B8, &unk_21777EEA0);
LABEL_75:
    v220 = &qword_27CB251A0;
    v221 = &unk_21777EF30;
    goto LABEL_57;
  }

  v399 = OUTLINED_FUNCTION_75(v391, v392, v393, v394, v395, v396, v397, v398, v452);
  v407 = OUTLINED_FUNCTION_87_1(v399, v400, v401, v402, v403, v404, v405, v406, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468);
  v409 = sub_2172DE088(v407, v408);
  v410 = v409;
  v418 = OUTLINED_FUNCTION_69_0(v409, v411, v412, v413, v414, v415, v416, v417, v452);
  OUTLINED_FUNCTION_68_0(v418, v419, v420, v421, v422, v423, v424, v425, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467);
  sub_2171F0738(v484, &qword_27CB242B0, &unk_21775D630);
  if ((v410 & 1) == 0)
  {
    return 0;
  }

LABEL_70:
  OUTLINED_FUNCTION_27_32(v1 + 1280, v426, v427, v428, v429, v430, v431, v432, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484[0]);
  OUTLINED_FUNCTION_32_26(v0 + 1280);
  if (!v485)
  {
    if (!v486)
    {
      sub_2171F0738(v484, &qword_27CB242E0, &unk_21777EEE0);
      return 1;
    }

    goto LABEL_80;
  }

  v433 = OUTLINED_FUNCTION_159_1();
  if (!v486)
  {
    sub_2171F0738(&v468, &qword_27CB242E8, &unk_21775D6B0);
LABEL_80:
    v220 = &unk_27CB25D00;
    v221 = &unk_21775F668;
    goto LABEL_57;
  }

  v441 = OUTLINED_FUNCTION_75(v433, v434, v435, v436, v437, v438, v439, v440, v452);
  v449 = OUTLINED_FUNCTION_87_1(v441, v442, v443, v444, v445, v446, v447, v448, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468);
  v451 = sub_2172DE040(v449, v450);
  OUTLINED_FUNCTION_169_1(&v452);
  OUTLINED_FUNCTION_169_1(&v468);
  sub_2171F0738(v484, &qword_27CB242E0, &unk_21777EEE0);
  return (v451 & 1) != 0;
}