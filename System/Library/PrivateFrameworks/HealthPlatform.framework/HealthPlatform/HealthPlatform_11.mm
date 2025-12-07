Swift::Void __swiftcall PreferredSummaryTransactionInputSignal.stopObservation()()
{
  v1 = v0;
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DE9DF8);
  v3 = sub_22855CA8C();
  v4 = sub_22855D6AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = sub_22855E34C();
    v9 = sub_2283F8938(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2283ED000, v3, v4, "[%{public}s] Stopping observation", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AABAD40](v6, -1, -1);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  v10 = *(v1 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_protectedState);
  os_unfair_lock_lock((v10 + 24));
  sub_228434D9C(*(v10 + 16));
  *(v10 + 16) = 0;

  os_unfair_lock_unlock((v10 + 24));
}

uint64_t PreferredSummaryTransactionInputSignal.deinit()
{
  v1 = OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_identifier;
  v2 = sub_22855C85C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_transactionSelector));
  return v0;
}

uint64_t PreferredSummaryTransactionInputSignal.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_identifier;
  v2 = sub_22855C85C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_transactionSelector));

  return swift_deallocClassInstance();
}

uint64_t sub_2284E1270@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_identifier;
  v5 = sub_22855C85C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_2284E136C()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2284E1F1C(0, &qword_280DE8F50, sub_22842DFA0, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228560580;
  *(v1 + 56) = sub_22855C83C();
  *(v1 + 64) = sub_2284E1A58(&qword_280DE9F08, MEMORY[0x277D11C38], MEMORY[0x277D11C30]);
  __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  sub_22855C84C();
  sub_22855C82C();
  return v1;
}

uint64_t sub_2284E14D0(uint64_t a1)
{
  v2 = sub_2284E1A58(&qword_27D840018, type metadata accessor for PreferredSummaryTransactionInputSignal, &protocol conformance descriptor for PreferredSummaryTransactionInputSignal);

  return MEMORY[0x28216B080](a1, v2);
}

uint64_t sub_2284E153C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v12 = a3;
  v13 = &type metadata for PreferredSummaryTransactionSelector;
  v14 = &protocol witness table for PreferredSummaryTransactionSelector;
  *(&v12 + 1) = a4;
  sub_22855C84C();
  v8 = OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_protectedState;
  sub_2284E200C(0);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  *(a5 + v8) = v9;
  v10 = (a5 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_observer);
  *v10 = a1;
  v10[1] = a2;
  sub_2283FAB3C(&v12, a5 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_transactionSelector);
  return a5;
}

uint64_t sub_2284E1608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a5;
  v18 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  sub_22855C84C();
  v12 = OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_protectedState;
  sub_2284E200C(0);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  *(a4 + v12) = v13;
  v14 = (a4 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_observer);
  *v14 = a1;
  v14[1] = a2;
  sub_2283FAB3C(&v16, a4 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_transactionSelector);
  return a4;
}

uint64_t sub_2284E1704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a3, a5);
  return sub_2284E1608(a1, a2, v13, v14, a5, a6);
}

void _s14HealthPlatform38PreferredSummaryTransactionInputSignalC16beginObservation4from14configurationsy0A13Orchestration31SecureCodingOptionalValueAnchorVySo08HKShareddE0CAkG0mN6ObjectAAyHCg_GSg_SayAG21IdentityConfigurationVGtF_0()
{
  v1 = v0;
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DE9DF8);
  v3 = sub_22855CA8C();
  v4 = sub_22855D6AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = sub_22855E34C();
    v9 = sub_2283F8938(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2283ED000, v3, v4, "[%{public}s] Starting observation", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AABAD40](v6, -1, -1);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  v10 = *(v1 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_protectedState);
  os_unfair_lock_lock((v10 + 24));
  sub_2284E0DD0((v10 + 16), &v11);
  os_unfair_lock_unlock((v10 + 24));
  if (v11)
  {
    sub_2284E0990(v11);
  }
}

uint64_t sub_2284E1A58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2284E1B24()
{
  result = qword_280DE9280;
  if (!qword_280DE9280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE9280);
  }

  return result;
}

uint64_t sub_2284E1B78(uint64_t a1)
{
  result = sub_22855C85C();
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

uint64_t get_enum_tag_for_layout_string_14HealthPlatform38PreferredSummaryTransactionInputSignalC5State33_0BA8518CF65B81333900B765ECC2E16DLLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2284E1C6C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_2284E1CC0(uint64_t result, unsigned int a2, unsigned int a3)
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

double sub_2284E1D2C(unint64_t a1)
{
  if (a1 >= 2)
  {
  }

  return result;
}

void sub_2284E1D78(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t, uint64_t))
{
  if (!*a2)
  {
    v10 = sub_2284E1B24();
    v11 = sub_2284E1A58(a3, sub_2284E1B24, a4);
    v12 = a5(a1, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

void sub_2284E1E10(uint64_t a1)
{
  if (!qword_280DE9E50)
  {
    sub_2284E1D3C(255);
    sub_2284E1A58(&qword_280DE9520, sub_2284E1D3C, MEMORY[0x277D11CE0]);
    sub_2284E1A58(&qword_280DE9518, sub_2284E1D3C, MEMORY[0x277D83B60]);
    sub_2284E1A58(&unk_280DE9288, sub_2284E1B24, &protocol conformance descriptor for HKSharedSummaryTransaction);
    v1 = sub_22855C8FC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9E50);
    }
  }
}

void sub_2284E1F1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2284E1F80(uint64_t a1)
{
  sub_2284E1F1C(0, &qword_27D840028, sub_2284E1E10, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2284E200C(uint64_t a1)
{
  if (!qword_27D840038)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D840038);
    }
  }
}

void sub_2284E206C(uint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_22855DAFC();
    sub_2284E94A8();
    sub_22842D238();
    sub_22855D56C();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_228407958(v2);
      return;
    }

    while (1)
    {
      sub_228483254(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_22855DB8C())
      {
        sub_2284E94A8();
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_2284E2230(uint64_t a1, void *a2)
{
  v3 = 0;
  v11[1] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_228483784(v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_2284E2320(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_228406318(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2284E2424(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_228484DA4(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t PluginIdentifierSet.description.getter(uint64_t a1)
{
  if (a1)
  {
    return sub_22855D52C();
  }

  else
  {
    return 7105633;
  }
}

uint64_t PluginIdentifierSet.union(_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a2)
  {
    if (a1)
    {

      return sub_2284E2320(a1, a2);
    }
  }

  return result;
}

uint64_t static PluginIdentifierSet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return sub_22844230C(a1, a2);
    }

    return 0;
  }

  return !a2;
}

uint64_t sub_2284E25AC(uint64_t a1)
{
  v2 = sub_2284E2CA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284E25E8(uint64_t a1)
{
  v2 = sub_2284E2CA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2284E2624()
{
  if (*v0)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_2284E2660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v5 || (sub_22855E15C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEB00000000737265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22855E15C();

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

uint64_t sub_2284E2740(uint64_t a1)
{
  v2 = sub_2284E2CF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284E277C(uint64_t a1)
{
  v2 = sub_2284E2CF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2284E27C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22855E15C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2284E2844(uint64_t a1)
{
  v2 = sub_2284E2C50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284E2880(uint64_t a1)
{
  v2 = sub_2284E2C50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PluginIdentifierSet.encode(to:)(void *a1, uint64_t a2)
{
  v23 = a2;
  v3 = MEMORY[0x277D84538];
  sub_2284E9440(0, &qword_27D840040, sub_2284E2C50, &type metadata for PluginIdentifierSet.IdentifiersCodingKeys, MEMORY[0x277D84538]);
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  sub_2284E9440(0, &qword_27D840050, sub_2284E2CA4, &type metadata for PluginIdentifierSet.AllCodingKeys, v3);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  sub_2284E9440(0, &qword_27D840060, sub_2284E2CF8, &type metadata for PluginIdentifierSet.CodingKeys, v3);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284E2CF8();
  v15 = v23;
  sub_22855E31C();
  if (v15)
  {
    v26 = 1;
    sub_2284E2C50();
    sub_22855E06C();
    v24 = v15;
    sub_22845D390();
    sub_22845D84C(&qword_27D83F780, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    v16 = v22;
    sub_22855E0CC();
    (*(v21 + 8))(v6, v16);
  }

  else
  {
    v25 = 0;
    sub_2284E2CA4();
    sub_22855E06C();
    (*(v19 + 8))(v9, v20);
  }

  return (*(v12 + 8))(v14, v11);
}

unint64_t sub_2284E2C50()
{
  result = qword_27D840048;
  if (!qword_27D840048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840048);
  }

  return result;
}

unint64_t sub_2284E2CA4()
{
  result = qword_27D840058;
  if (!qword_27D840058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840058);
  }

  return result;
}

unint64_t sub_2284E2CF8()
{
  result = qword_27D840068;
  if (!qword_27D840068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840068);
  }

  return result;
}

uint64_t sub_2284E2D64()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
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

uint64_t sub_2284E2D98()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
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

uint64_t sub_2284E2DCC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return sub_22844230C(v2, v3);
    }

    return 0;
  }

  return !v3;
}

void *sub_2284E2DF4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2284E7750(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2284E2E3C()
{
  if (*v0)
  {
    return sub_22855D52C();
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_2284E2E98()
{
  if (*v0)
  {
    return 0x6D65744964656566;
  }

  else
  {
    return 0x656C626172616873;
  }
}

uint64_t sub_2284E2EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C626172616873 && a2 == 0xEE00736C65646F4DLL;
  if (v6 || (sub_22855E15C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D65744964656566 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22855E15C();

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

uint64_t sub_2284E2FD0(uint64_t a1)
{
  v2 = sub_2284E7D40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284E300C(uint64_t a1)
{
  v2 = sub_2284E7D40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2284E3048(uint64_t a1)
{
  v2 = sub_2284E7C98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284E3084(uint64_t a1)
{
  v2 = sub_2284E7C98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2284E30C0(uint64_t a1)
{
  v2 = sub_2284E7CEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284E30FC(uint64_t a1)
{
  v2 = sub_2284E7CEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenerationPhase.encode(to:)(void *a1)
{
  v3 = MEMORY[0x277D84538];
  sub_2284E9440(0, &qword_27D840070, sub_2284E7C98, &type metadata for GenerationPhase.FeedItemsCodingKeys, MEMORY[0x277D84538]);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - v5;
  sub_2284E9440(0, &qword_27D840080, sub_2284E7CEC, &type metadata for GenerationPhase.SharableModelsCodingKeys, v3);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v20 = &v19 - v7;
  sub_2284E9440(0, &qword_27D840090, sub_2284E7D40, &type metadata for GenerationPhase.CodingKeys, v3);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284E7D40();
  sub_22855E31C();
  v14 = (v10 + 8);
  if (v13)
  {
    v27 = 1;
    sub_2284E7C98();
    v15 = v23;
    sub_22855E06C();
    v17 = v24;
    v16 = v25;
  }

  else
  {
    v26 = 0;
    sub_2284E7CEC();
    v15 = v20;
    sub_22855E06C();
    v17 = v21;
    v16 = v22;
  }

  (*(v17 + 8))(v15, v16);
  return (*v14)(v12, v9);
}

uint64_t GenerationPhase.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v32 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_2284E9440(0, &qword_27D8400A0, sub_2284E7C98, &type metadata for GenerationPhase.FeedItemsCodingKeys, MEMORY[0x277D844C8]);
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = v26 - v5;
  sub_2284E9440(0, &qword_27D8400A8, sub_2284E7CEC, &type metadata for GenerationPhase.SharableModelsCodingKeys, v3);
  v7 = v6;
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - v8;
  sub_2284E9440(0, &qword_27D8400B0, sub_2284E7D40, &type metadata for GenerationPhase.CodingKeys, v3);
  v11 = v10;
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v26 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284E7D40();
  v14 = v34;
  sub_22855E30C();
  if (v14)
  {
    goto LABEL_7;
  }

  v27 = v7;
  v34 = a1;
  v15 = v31;
  v16 = v32;
  v17 = v13;
  v18 = sub_22855E04C();
  v19 = v11;
  if (*(v18 + 16) != 1)
  {
    v21 = sub_22855DCEC();
    swift_allocError();
    v23 = v22;
    sub_2284E7D94(0);
    *v23 = &type metadata for GenerationPhase;
    sub_22855DFDC();
    sub_22855DCCC();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
    swift_willThrow();
    (*(v33 + 8))(v13, v19);
    swift_unknownObjectRelease();
    a1 = v34;
LABEL_7:
    v24 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v24);
  }

  v26[1] = v18;
  v35 = *(v18 + 32);
  if (v35)
  {
    v37 = 1;
    sub_2284E7C98();
    sub_22855DFCC();
    v20 = v33;
    (*(v29 + 8))(v15, v30);
  }

  else
  {
    v36 = 0;
    sub_2284E7CEC();
    sub_22855DFCC();
    v20 = v33;
    (*(v28 + 8))(v9, v27);
  }

  (*(v20 + 8))(v17, v11);
  swift_unknownObjectRelease();
  *v16 = v35;
  v24 = v34;
  return __swift_destroy_boxed_opaque_existential_0(v24);
}

uint64_t BackgroundGenerationWorkDescription.pluginIdentifierSetToRun.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t BackgroundGenerationWorkDescription.generationPhases.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

unint64_t sub_2284E3A50()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_2284E3AA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2284E9110(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2284E3AD0(uint64_t a1)
{
  v2 = sub_2284E7E50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284E3B0C(uint64_t a1)
{
  v2 = sub_2284E7E50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BackgroundGenerationWorkDescription.encode(to:)(void *a1)
{
  sub_2284E9440(0, &qword_27D8400C0, sub_2284E7E50, &type metadata for BackgroundGenerationWorkDescription.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v12 = v1[1];
  v11[1] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284E7E50();

  sub_22855E31C();
  v15 = v8;
  v14 = 0;
  sub_2284E7EA4();
  v9 = v13;
  sub_22855E0CC();
  if (v9)
  {
  }

  else
  {

    v15 = v12;
    v14 = 1;
    sub_2284E9440(0, &qword_27D8400D8, sub_22848CD68, &type metadata for GenerationPhase, MEMORY[0x277D83B48]);
    sub_2284E7FA0(&qword_27D8400E0, sub_2284E7EF8, MEMORY[0x277D83B50]);
    sub_22855E0CC();
    LOBYTE(v15) = 2;
    sub_22855E09C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t BackgroundGenerationWorkDescription.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_2284E9440(0, &qword_27D8400F0, sub_2284E7E50, &type metadata for BackgroundGenerationWorkDescription.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284E7E50();
  sub_22855E30C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = v6;
  v10 = v18;
  v19 = 0;
  sub_2284E7F4C();
  v11 = v5;
  sub_22855E03C();
  v12 = v20;
  sub_2284E9440(0, &qword_27D8400D8, sub_22848CD68, &type metadata for GenerationPhase, MEMORY[0x277D83B48]);
  v19 = 1;
  sub_2284E7FA0(&qword_27D840100, sub_2284E8044, MEMORY[0x277D83B70]);
  sub_22855E03C();
  v17 = v20;
  LOBYTE(v20) = 2;
  v13 = sub_22855E00C();
  (*(v9 + 8))(v8, v11);
  v14 = v17;
  *v10 = v12;
  *(v10 + 8) = v14;
  *(v10 + 16) = v13 & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t GenerationWorkRequest.pluginIdentifierSetToRun.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t GenerationWorkRequest.generationPhases.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_2284E4250(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 32) = sub_2284E9234;
  *(a2 + 40) = v5;
  return result;
}

uint64_t GenerationWorkRequest.makeGenerationWorkBlock.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t GenerationWorkRequest.makeGenerationWorkBlock.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_2284E4348(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 48) = sub_2284E94FC;
  *(a2 + 56) = v5;
  return result;
}

uint64_t GenerationWorkRequest.completionBlock.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t GenerationWorkRequest.completionBlock.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_2284E4440(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 64) = sub_22849D60C;
  *(a2 + 72) = v5;
  return result;
}

uint64_t GenerationWorkRequest.notStartedCancellationBlock.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t GenerationWorkRequest.notStartedCancellationBlock.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t GenerationWorkRequest.init(environment:pluginIdentifierSetToRun:generationPhases:commitUrgentTransaction:makeGenerationWorkBlock:completionBlock:notStartedCancellationBlock:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result & 1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

uint64_t sub_2284E455C(uint64_t a1, uint64_t a2, int a3)
{
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 8);
  result = v6(ObjectType, a2);
  if ((result ^ a3))
  {
    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0x2074736575716552, 0xED00002068746977);
    if (a3)
    {
      v8 = 0x65746E4972657375;
    }

    else
    {
      v8 = 0x756F72676B636162;
    }

    if (a3)
    {
      v9 = 0xEF65766974636172;
    }

    else
    {
      v9 = 0xEA0000000000646ELL;
    }

    MEMORY[0x22AAB92A0](v8, v9);

    MEMORY[0x22AAB92A0](0xD000000000000021, 0x8000000228571C70);
    v10 = v6(ObjectType, a2);
    v11 = (v10 & 1) == 0;
    if (v10)
    {
      v12 = 0x65746E4972657375;
    }

    else
    {
      v12 = 0x756F72676B636162;
    }

    if (v11)
    {
      v13 = 0xEA0000000000646ELL;
    }

    else
    {
      v13 = 0xEF65766974636172;
    }

    MEMORY[0x22AAB92A0](v12, v13);

    MEMORY[0x22AAB92A0](0x6E6F7269766E6520, 0xEC000000746E656DLL);
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t sub_2284E4738@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[3];
  v89 = a1[2];
  v90 = v4;
  v91 = a1[4];
  v5 = a1[1];
  v87 = *a1;
  v88 = v5;
  v6 = v2[1];
  v7 = v2[3];
  v84 = v2[2];
  v85 = v7;
  v86 = v2[4];
  v8 = v2[1];
  v82 = *v2;
  v83 = v8;
  v77 = v82;
  v78 = v6;
  v9 = *(&v82 + 1);
  v79 = v84;
  v10 = swift_allocObject();
  v11 = v2[3];
  v10[3] = v2[2];
  v10[4] = v11;
  v12 = v2[1];
  v10[1] = *v2;
  v10[2] = v12;
  v13 = a1[2];
  v14 = a1[3];
  v15 = *a1;
  v10[7] = a1[1];
  v10[8] = v13;
  v16 = a1[4];
  v10[9] = v14;
  v10[10] = v16;
  v10[5] = v2[4];
  v10[6] = v15;
  *&v80 = sub_2284E92E8;
  *(&v80 + 1) = v10;
  sub_22842DCDC(&v82, v76);
  sub_22842DCDC(&v82, v76);
  sub_22842DCDC(&v87, v76);

  v17 = swift_allocObject();
  v18 = v85;
  v17[3] = v84;
  v17[4] = v18;
  v19 = v83;
  v17[1] = v82;
  v17[2] = v19;
  v20 = v89;
  v21 = v90;
  v22 = v87;
  v17[7] = v88;
  v17[8] = v20;
  v23 = v91;
  v17[9] = v21;
  v17[10] = v23;
  v17[5] = v86;
  v17[6] = v22;
  *&v81 = sub_2284E93A0;
  *(&v81 + 1) = v17;
  sub_22842DCDC(&v82, v76);
  sub_22842DCDC(&v87, v76);

  v24 = *(&v87 + 1);
  v92[0] = *(&v87 + 1);
  if (v9)
  {
    if (*(&v87 + 1))
    {
      sub_2284E93D8(v92, v76);
      sub_2284E93D8(v92, v76);

      v25 = sub_2284E2320(v24, v9);
      goto LABEL_6;
    }
  }

  else
  {
    sub_2284E93D8(v92, v76);
  }

  v25 = 0;
LABEL_6:
  *(&v77 + 1) = v25;
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v26 = sub_22855CABC();
  __swift_project_value_buffer(v26, qword_280DEEBD0);
  sub_22842DCDC(&v82, v76);
  sub_22842DCDC(&v87, v76);
  v27 = sub_22855CA8C();
  v28 = sub_22855D6AC();
  sub_2284E8384(&v82);
  sub_2284E8384(&v87);
  v29 = &unk_228563000;
  if (os_log_type_enabled(v27, v28))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v76[0] = v31;
    *v30 = 136446978;
    *(v30 + 4) = sub_2283F8938(0xD000000000000015, 0x8000000228566DA0, v76);
    *(v30 + 12) = 2082;
    if (v9)
    {
      v32 = sub_22855D52C();
      v34 = v33;
    }

    else
    {
      v34 = 0xE300000000000000;
      v32 = 7105633;
    }

    v35 = sub_2283F8938(v32, v34, v76);

    *(v30 + 14) = v35;
    *(v30 + 22) = 2082;
    if (v92[0])
    {
      v36 = sub_22855D52C();
      v38 = v37;
      sub_2284E9410(v92);
    }

    else
    {
      v38 = 0xE300000000000000;
      v36 = 7105633;
    }

    v39 = sub_2283F8938(v36, v38, v76);

    *(v30 + 24) = v39;
    *(v30 + 32) = 2082;
    if (v25)
    {

      v40 = sub_22855D52C();
      v42 = v41;

      v29 = &unk_228563000;
    }

    else
    {
      v42 = 0xE300000000000000;
      v29 = &unk_228563000;
      v40 = 7105633;
    }

    v43 = sub_2283F8938(v40, v42, v76);

    *(v30 + 34) = v43;
    _os_log_impl(&dword_2283ED000, v27, v28, "[%{public}s] Coalesced pluginIdentifierSetToRun %{public}s and %{public}s into %{public}s", v30, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v31, -1, -1);
    MEMORY[0x22AABAD40](v30, -1, -1);
  }

  else
  {
    sub_2284E9410(v92);
  }

  v44 = BYTE8(v83);
  v45 = BYTE8(v83) | BYTE8(v88);
  swift_beginAccess();
  v46 = v45 & 1;
  BYTE8(v78) = v45 & 1;
  sub_22842DCDC(&v82, v76);
  sub_22842DCDC(&v87, v76);
  v47 = sub_22855CA8C();
  v48 = sub_22855D6AC();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v76[0] = v50;
    *v49 = v29[461];
    *(v49 + 4) = sub_2283F8938(0xD000000000000015, 0x8000000228566DA0, v76);
    *(v49 + 12) = 1026;
    *(v49 + 14) = v44 & 1;
    sub_2284E8384(&v82);
    *(v49 + 18) = 1026;
    *(v49 + 20) = BYTE8(v88) & 1;
    sub_2284E8384(&v87);
    *(v49 + 24) = 1026;
    *(v49 + 26) = v46;
    _os_log_impl(&dword_2283ED000, v47, v48, "[%{public}s] Coalesced commitUrgentTransaction %{BOOL,public}d and %{BOOL,public}d into %{BOOL,public}d", v49, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x22AABAD40](v50, -1, -1);
    MEMORY[0x22AABAD40](v49, -1, -1);
  }

  else
  {
    sub_2284E8384(&v87);
    sub_2284E8384(&v82);
  }

  v51 = v83;

  *&v78 = sub_2284E2424(v52, v51);

  sub_22842DCDC(&v82, v76);
  sub_22842DCDC(&v87, v76);
  v53 = sub_22855CA8C();
  v54 = sub_22855D6AC();
  sub_2284E8384(&v82);
  sub_2284E8384(&v87);
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v76[0] = v56;
    *v55 = v29[461];
    *(v55 + 4) = sub_2283F8938(0xD000000000000015, 0x8000000228566DA0, v76);
    *(v55 + 12) = 2082;
    sub_22848CD68();
    v57 = sub_22855D52C();
    v59 = sub_2283F8938(v57, v58, v76);

    *(v55 + 14) = v59;
    *(v55 + 22) = 2082;
    v60 = sub_22855D52C();
    v62 = sub_2283F8938(v60, v61, v76);

    *(v55 + 24) = v62;
    *(v55 + 32) = 2082;

    v63 = sub_22855D52C();
    v65 = v64;

    v66 = sub_2283F8938(v63, v65, v76);

    *(v55 + 34) = v66;
    _os_log_impl(&dword_2283ED000, v53, v54, "[%{public}s] Coalesced generationPhases %{public}s and %{public}s into %{public}s", v55, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v56, -1, -1);
    MEMORY[0x22AABAD40](v55, -1, -1);
  }

  v67 = v79;
  v68 = v80;
  v75[2] = v79;
  v75[3] = v80;
  v69 = v81;
  v75[4] = v81;
  v71 = v77;
  v70 = v78;
  v75[0] = v77;
  v75[1] = v78;
  a2[2] = v79;
  a2[3] = v68;
  a2[4] = v69;
  *a2 = v71;
  a2[1] = v70;
  v76[2] = v67;
  v76[3] = v68;
  v76[0] = v71;
  v76[1] = v70;
  v76[4] = v69;
  sub_22842DCDC(v75, v74);
  return sub_2284E8384(v76);
}

BOOL static GenerationQueue.EnqueueResult.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

BOOL sub_2284E4F7C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

void sub_2284E4FD4(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 128);
  os_unfair_lock_lock(*(v3 + 16));
  v4 = *(v1 + 80);
  v12 = *(v1 + 64);
  v13 = v4;
  v6 = *(v1 + 112);
  v14 = *(v1 + 96);
  v5 = v14;
  v15 = v6;
  v7 = *(v1 + 48);
  v11[0] = *(v1 + 32);
  v8 = v11[0];
  v11[1] = v7;
  a1[2] = v12;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  *a1 = v8;
  a1[1] = v7;
  v9 = *(v3 + 16);
  sub_2284E8098(v11, &v10);
  os_unfair_lock_unlock(v9);
}

uint64_t GenerationQueue.__allocating_init()()
{
  v0 = swift_allocObject();
  GenerationQueue.init()();
  return v0;
}

uint64_t GenerationQueue.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v2 = sub_22855D17C();
  [v1 setName_];

  [v1 setMaxConcurrentOperationCount_];
  *(v0 + 16) = v1;
  v3 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v4 = sub_22855D17C();
  [v3 setName_];

  [v3 setMaxConcurrentOperationCount_];
  *(v0 + 24) = v3;
  *(v0 + 32) = xmmword_228566A20;
  type metadata accessor for UnfairLock();
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  *(v0 + 128) = v5;
  return v0;
}

uint64_t GenerationQueue.deinit()
{
  v1 = *(v0 + 128);
  os_unfair_lock_lock(*(v1 + 16));
  sub_2284E73E8();
  os_unfair_lock_unlock(*(v1 + 16));

  sub_2284E80D0(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  return v0;
}

uint64_t GenerationQueue.__deallocating_deinit()
{
  os_unfair_lock_lock(*(*(v0 + 128) + 16));
  sub_2284E73E8();
  os_unfair_lock_unlock(*(*(v0 + 128) + 16));

  sub_2284E80D0(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  return swift_deallocClassInstance();
}

void sub_2284E52FC(__int128 *a1@<X0>, char *a2@<X8>)
{
  v4 = *v2;
  v5 = a1[3];
  v179 = a1[2];
  v180 = v5;
  v181 = a1[4];
  v6 = a1[1];
  v177 = *a1;
  v178 = v6;
  v7 = v2[16];
  v8 = v4;
  os_unfair_lock_lock(*(v7 + 16));
  v9 = [objc_opt_self() sharedBehavior];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 healthAppHiddenOrNotInstalled];

    if (v11)
    {
      if (qword_280DEEBC8 != -1)
      {
        swift_once();
      }

      v12 = sub_22855CABC();
      __swift_project_value_buffer(v12, qword_280DEEBD0);
      v13 = sub_22855CA8C();
      v14 = sub_22855D6AC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *&v160 = v16;
        *v15 = 136315138;
        *&v171 = v8;
        swift_getMetatypeMetadata();
        v17 = sub_22855D1BC();
        v19 = sub_2283F8938(v17, v18, &v160);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_2283ED000, v13, v14, "[%s] health is not installed or is hidden, exiting generation immediately", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x22AABAD40](v16, -1, -1);
        MEMORY[0x22AABAD40](v15, -1, -1);
      }

      (v181)();
      v20 = 1;
      goto LABEL_54;
    }

    v21 = *(v2 + 5);
    v173 = *(v2 + 4);
    v174 = v21;
    v22 = *(v2 + 7);
    v175 = *(v2 + 6);
    v176 = v22;
    v23 = *(v2 + 3);
    v171 = *(v2 + 2);
    v172 = v23;
    v24 = *(&v171 + 1);
    if (*(&v171 + 1) >> 62)
    {
      if (*(&v171 + 1) >> 62 != 1)
      {
        v65 = v2;
        if (v177)
        {
          if (qword_280DEEBC8 != -1)
          {
            swift_once();
          }

          v66 = sub_22855CABC();
          __swift_project_value_buffer(v66, qword_280DEEBD0);
          v67 = sub_22855CA8C();
          v68 = sub_22855D6AC();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            *&v160 = v70;
            *v69 = 136446210;
            v71 = sub_22855E34C();
            v73 = sub_2283F8938(v71, v72, &v160);

            *(v69 + 4) = v73;
            _os_log_impl(&dword_2283ED000, v67, v68, "[%{public}s] Queue is idle, starting foreground generation", v69, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v70);
            MEMORY[0x22AABAD40](v70, -1, -1);
            MEMORY[0x22AABAD40](v69, -1, -1);
          }

          if (qword_280DEC790 != -1)
          {
            swift_once();
          }

          v74 = off_280DEC798;
          os_unfair_lock_lock(off_280DEC798 + 4);

          *(v74 + 3) = MEMORY[0x277D84F98];
          os_unfair_lock_unlock(v74 + 4);
          v162 = v179;
          v163 = v180;
          v164 = v181;
          v160 = v177;
          v161 = v178;
          v75 = (v179)(&v160);
          v77 = v76;
          v162 = v179;
          v163 = v180;
          v164 = v181;
          v160 = v177;
          v161 = v178;
          sub_2284E455C(v75, v76, 1);
          v78 = *(v65 + 5);
          v162 = *(v65 + 4);
          v163 = v78;
          v79 = *(v65 + 7);
          v164 = *(v65 + 6);
          v165 = v79;
          v80 = *(v65 + 3);
          v160 = *(v65 + 2);
          v161 = v80;
          v65[4] = v75;
          v65[5] = v77 & 0xFFFFFFFFFFFFFF8;
          v81 = v75;
          sub_2284E8354(&v160);
          sub_2284E61EC(v81, v77, v180, *(&v180 + 1));

          v20 = 2;
          goto LABEL_54;
        }

        if (qword_280DEEBC8 != -1)
        {
          swift_once();
        }

        v112 = sub_22855CABC();
        __swift_project_value_buffer(v112, qword_280DEEBD0);
        v113 = sub_22855CA8C();
        v114 = sub_22855D6AC();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          *&v160 = v116;
          *v115 = 136446210;
          v117 = sub_22855E34C();
          v119 = sub_2283F8938(v117, v118, &v160);

          *(v115 + 4) = v119;
          _os_log_impl(&dword_2283ED000, v113, v114, "[%{public}s] Queue is idle, starting background generation", v115, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v116);
          MEMORY[0x22AABAD40](v116, -1, -1);
          MEMORY[0x22AABAD40](v115, -1, -1);
        }

        v162 = v179;
        v163 = v180;
        v164 = v181;
        v160 = v177;
        v161 = v178;
        v120 = (v179)(&v160);
        v122 = v121;
        v162 = v179;
        v163 = v180;
        v164 = v181;
        v160 = v177;
        v161 = v178;
        sub_2284E455C(v120, v121, 0);
        v123 = *(v65 + 5);
        v162 = *(v65 + 4);
        v163 = v123;
        v124 = *(v65 + 7);
        v164 = *(v65 + 6);
        v165 = v124;
        v125 = *(v65 + 3);
        v160 = *(v65 + 2);
        v161 = v125;
        v65[4] = v120;
        v65[5] = v122 & 0xFFFFFFFFFFFFFF8 | 0x4000000000000000;
        *(v65 + 3) = 0u;
        *(v65 + 4) = 0u;
        *(v65 + 5) = 0u;
        *(v65 + 6) = 0u;
        *(v65 + 7) = 0u;
        v45 = v120;
        sub_2284E8354(&v160);
        v62 = *(&v180 + 1);
        v61 = v180;
        v63 = v45;
        v64 = v122;
        goto LABEL_47;
      }

      *(&v171 + 1) &= 0x3FFFFFFFFFFFFFFFuLL;
      v25 = v173;
      v26 = v171;
      if (!v177)
      {
        v170 = *(v2 + 3);
        v82 = *(v2 + 11);
        v166 = *(v2 + 9);
        v167 = v82;
        v168 = *(v2 + 13);
        v169 = v2[15];
        if (v173)
        {
          v83 = *(v2 + 5);
          v162 = *(v2 + 4);
          v163 = v83;
          v84 = *(v2 + 7);
          v164 = *(v2 + 6);
          v165 = v84;
          v85 = *(v2 + 2);
          v86 = *(v2 + 3);
          v146 = v2;
          *&v160 = v2[4];
          v161 = v86;
          *(&v160 + 1) = *(&v85 + 1) & 0x3FFFFFFFFFFFFFFFLL;
          sub_2284E81F8(&v160, &v154);
          if (qword_280DEEBC8 != -1)
          {
            swift_once();
          }

          v87 = sub_22855CABC();
          __swift_project_value_buffer(v87, qword_280DEEBD0);
          v88 = sub_22855CA8C();
          v89 = sub_22855D6AC();
          if (os_log_type_enabled(v88, v89))
          {
            v144 = v26;
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            *&v154 = v91;
            *v90 = 136446210;
            v92 = sub_22855E34C();
            v94 = sub_2283F8938(v92, v93, &v154);

            *(v90 + 4) = v94;
            _os_log_impl(&dword_2283ED000, v88, v89, "[%{public}s] Queue is running background generation, coalescing background generation request with existing enqueued generation request", v90, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v91);
            MEMORY[0x22AABAD40](v91, -1, -1);
            v95 = v90;
            v26 = v144;
            MEMORY[0x22AABAD40](v95, -1, -1);
          }

          v149 = v25;
          v150 = v166;
          v151 = v167;
          v152 = v168;
          v153 = v169;
          v147[2] = v179;
          v147[3] = v180;
          v147[4] = v181;
          v148 = v170;
          v147[0] = v177;
          v147[1] = v178;
          sub_2284E4738(v147, &v154);
          sub_22842DC5C(&v172);
          v96 = v154;
          v97 = v155;
          v98 = v156;
          v99 = v157;
          v100 = v158;
          v101 = *(v146 + 5);
          v156 = *(v146 + 4);
          v157 = v101;
          v102 = *(v146 + 7);
          v158 = *(v146 + 6);
          v159 = v102;
          v103 = *(v146 + 3);
          v154 = *(v146 + 2);
          v155 = v103;
          v146[4] = v26;
          v146[5] = v24 & 0xFFFFFFFFFFFFFF8 | 0x4000000000000000;
          *(v146 + 3) = v96;
          *(v146 + 4) = v97;
          *(v146 + 5) = v98;
          *(v146 + 6) = v99;
          *(v146 + 7) = v100;
        }

        else
        {
          v126 = *(v2 + 5);
          v162 = *(v2 + 4);
          v163 = v126;
          v127 = *(v2 + 7);
          v164 = *(v2 + 6);
          v165 = v127;
          v128 = *(v2 + 3);
          v129 = v2;
          v160 = *(v2 + 2);
          v161 = v128;
          *(&v160 + 1) &= 0x3FFFFFFFFFFFFFFFuLL;
          sub_2284E81F8(&v160, &v154);
          if (qword_280DEEBC8 != -1)
          {
            swift_once();
          }

          v130 = sub_22855CABC();
          __swift_project_value_buffer(v130, qword_280DEEBD0);
          v131 = sub_22855CA8C();
          v132 = sub_22855D6AC();
          if (os_log_type_enabled(v131, v132))
          {
            v145 = v26;
            v133 = swift_slowAlloc();
            v134 = swift_slowAlloc();
            *&v154 = v134;
            *v133 = 136446210;
            v135 = sub_22855E34C();
            v137 = sub_2283F8938(v135, v136, &v154);

            *(v133 + 4) = v137;
            _os_log_impl(&dword_2283ED000, v131, v132, "[%{public}s] Queue is running background generation, enqueuing background generation request", v133, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v134);
            MEMORY[0x22AABAD40](v134, -1, -1);
            v138 = v133;
            v26 = v145;
            MEMORY[0x22AABAD40](v138, -1, -1);
          }

          v139 = *(v129 + 5);
          v156 = *(v129 + 4);
          v157 = v139;
          v140 = *(v129 + 7);
          v158 = *(v129 + 6);
          v159 = v140;
          v141 = *(v129 + 3);
          v154 = *(v129 + 2);
          v155 = v141;
          v129[4] = v26;
          v129[5] = v24 & 0xFFFFFFFFFFFFFF8 | 0x4000000000000000;
          v142 = v178;
          *(v129 + 3) = v177;
          *(v129 + 4) = v142;
          v143 = v180;
          *(v129 + 5) = v179;
          *(v129 + 6) = v143;
          *(v129 + 7) = v181;
          sub_22842DCDC(&v177, &v148);
        }

        sub_2284E8354(&v154);
        v20 = 3;
        goto LABEL_54;
      }

      v27 = *(v2 + 5);
      v162 = *(v2 + 4);
      v163 = v27;
      v28 = *(v2 + 7);
      v164 = *(v2 + 6);
      v165 = v28;
      v29 = *(v2 + 3);
      v30 = v2;
      v160 = *(v2 + 2);
      v161 = v29;
      *(&v160 + 1) &= 0x3FFFFFFFFFFFFFFFuLL;
      sub_2284E81F8(&v160, &v154);
      sub_22842DC5C(&v172);

      if (qword_280DEEBC8 != -1)
      {
        swift_once();
      }

      v31 = sub_22855CABC();
      __swift_project_value_buffer(v31, qword_280DEEBD0);
      v32 = sub_22855CA8C();
      v33 = sub_22855D6AC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&v154 = v35;
        *v34 = 136446210;
        v36 = sub_22855E34C();
        v38 = sub_2283F8938(v36, v37, &v154);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_2283ED000, v32, v33, "[%{public}s] Queue is running background generation, cancelling and starting foreground generation", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x22AABAD40](v35, -1, -1);
        MEMORY[0x22AABAD40](v34, -1, -1);
      }

      sub_2284E73E8();
      v156 = v179;
      v157 = v180;
      v158 = v181;
      v154 = v177;
      v155 = v178;
      v39 = (v179)(&v154);
      v41 = v40;
      v156 = v179;
      v157 = v180;
      v158 = v181;
      v154 = v177;
      v155 = v178;
      sub_2284E455C(v39, v40, 1);
      v42 = *(v30 + 5);
      v156 = *(v30 + 4);
      v157 = v42;
      v43 = *(v30 + 7);
      v158 = *(v30 + 6);
      v159 = v43;
      v44 = *(v30 + 3);
      v154 = *(v30 + 2);
      v155 = v44;
      v30[4] = v39;
      v30[5] = v41 & 0xFFFFFFFFFFFFFF8;
      v45 = v39;
      v46 = &v154;
    }

    else
    {
      *(&v171 + 1) &= 0x3FFFFFFFFFFFFFFFuLL;
      if (!v177)
      {
        if (qword_280DEEBC8 != -1)
        {
          swift_once();
        }

        v104 = sub_22855CABC();
        __swift_project_value_buffer(v104, qword_280DEEBD0);
        sub_22842DCDC(&v177, &v160);
        v105 = sub_22855CA8C();
        v106 = sub_22855D6AC();
        sub_2284E8384(&v177);
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          *&v160 = v108;
          *v107 = 136446466;
          v109 = sub_22855E34C();
          v111 = sub_2283F8938(v109, v110, &v160);

          *(v107 + 4) = v111;
          *(v107 + 12) = 2082;
          *(v107 + 14) = sub_2283F8938(0x756F72676B636162, 0xEA0000000000646ELL, &v160);
          _os_log_impl(&dword_2283ED000, v105, v106, "[%{public}s] Queue is running foreground generation, dropping generation request with environment %{public}s", v107, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AABAD40](v108, -1, -1);
          MEMORY[0x22AABAD40](v107, -1, -1);
        }

        (v181)();
        *a2 = 0;
        goto LABEL_55;
      }

      v47 = v2;
      if (qword_280DEEBC8 != -1)
      {
        swift_once();
      }

      v48 = sub_22855CABC();
      __swift_project_value_buffer(v48, qword_280DEEBD0);
      v49 = sub_22855CA8C();
      v50 = sub_22855D6AC();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *&v160 = v52;
        *v51 = 136446210;
        v53 = sub_22855E34C();
        v55 = sub_2283F8938(v53, v54, &v160);

        *(v51 + 4) = v55;
        _os_log_impl(&dword_2283ED000, v49, v50, "[%{public}s] Queue is running foreground generation, cancelling and restarting foreground generation", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x22AABAD40](v52, -1, -1);
        MEMORY[0x22AABAD40](v51, -1, -1);
      }

      sub_2284E73E8();
      v162 = v179;
      v163 = v180;
      v164 = v181;
      v160 = v177;
      v161 = v178;
      v56 = (v179)(&v160);
      v41 = v57;
      v162 = v179;
      v163 = v180;
      v164 = v181;
      v160 = v177;
      v161 = v178;
      sub_2284E455C(v56, v57, 1);
      v58 = *(v47 + 5);
      v162 = *(v47 + 4);
      v163 = v58;
      v59 = *(v47 + 7);
      v164 = *(v47 + 6);
      v165 = v59;
      v60 = *(v47 + 3);
      v160 = *(v47 + 2);
      v161 = v60;
      v47[4] = v56;
      v47[5] = v41 & 0xFFFFFFFFFFFFFF8;
      v45 = v56;
      v46 = &v160;
    }

    sub_2284E8354(v46);
    v62 = *(&v180 + 1);
    v61 = v180;
    v63 = v45;
    v64 = v41;
LABEL_47:
    sub_2284E61EC(v63, v64, v61, v62);

    v20 = 2;
LABEL_54:
    *a2 = v20;
LABEL_55:
    os_unfair_lock_unlock(*(v7 + 16));
    return;
  }

  __break(1u);
}

void sub_2284E61EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_assert_owner(*(*(v4 + 128) + 16));
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v4;
  v9[5] = a1;
  v9[6] = a2;
  v14[4] = sub_2284E929C;
  v14[5] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_228401F54;
  v14[3] = &block_descriptor_19;
  v10 = _Block_copy(v14);
  v11 = objc_opt_self();

  v12 = a1;
  v13 = [v11 blockOperationWithBlock_];
  _Block_release(v10);

  [v13 addDependency_];
  [*(v4 + 24) addOperation_];
  [*(v4 + 16) addOperation_];
}

void sub_2284E6354(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 128);
  os_unfair_lock_lock(*(v6 + 16));
  v7 = *(v3 + 80);
  v179 = *(v3 + 64);
  v180 = v7;
  v8 = *(v3 + 112);
  v181 = *(v3 + 96);
  v182 = v8;
  v9 = *(v3 + 48);
  v178[0] = *(v3 + 32);
  v178[1] = v9;
  v185 = v179;
  v186 = v7;
  v187 = v181;
  v188 = v8;
  v183 = v178[0];
  v184 = v9;
  if (!(*(&v178[0] + 1) >> 62))
  {
    v162 = a2;
    v36 = *(&v178[0] + 1) & 0x3FFFFFFFFFFFFFFFLL;
    *(&v183 + 1) = *(&v178[0] + 1) & 0x3FFFFFFFFFFFFFFFLL;
    ObjectType = swift_getObjectType();
    v38 = swift_getObjectType();
    v39 = qword_280DEEBC8;
    v40 = *&v178[0];
    if (v183 != a1)
    {
      if (v39 != -1)
      {
        swift_once();
      }

      v41 = sub_22855CABC();
      __swift_project_value_buffer(v41, qword_280DEEBD0);
      v42 = a1;
      sub_2284E8098(v178, &v170);
      v43 = sub_22855CA8C();
      v44 = sub_22855D6AC();

      sub_2284E8354(v178);
      if (os_log_type_enabled(v43, v44))
      {
        v166 = v6;
        v45 = swift_slowAlloc();
        v161 = v38;
        v46 = swift_slowAlloc();
        *&v170 = v46;
        *v45 = 136446722;
        v47 = sub_22855E34C();
        v49 = sub_2283F8938(v47, v48, &v170);

        *(v45 + 4) = v49;
        *(v45 + 12) = 2082;
        v50 = (*(v162 + 8))(ObjectType);
        v51 = (v50 & 1) == 0;
        if (v50)
        {
          v52 = 0x65746E4972657375;
        }

        else
        {
          v52 = 0x756F72676B636162;
        }

        if (v51)
        {
          v53 = 0xEA0000000000646ELL;
        }

        else
        {
          v53 = 0xEF65766974636172;
        }

        v54 = sub_2283F8938(v52, v53, &v170);

        *(v45 + 14) = v54;
        *(v45 + 22) = 2082;
        v55 = (*(v36 + 8))(v161, v36);
        v56 = (v55 & 1) == 0;
        if (v55)
        {
          v57 = 0x65746E4972657375;
        }

        else
        {
          v57 = 0x756F72676B636162;
        }

        if (v56)
        {
          v58 = 0xEA0000000000646ELL;
        }

        else
        {
          v58 = 0xEF65766974636172;
        }

        v59 = sub_2283F8938(v57, v58, &v170);

        *(v45 + 24) = v59;
        _os_log_impl(&dword_2283ED000, v43, v44, "[%{public}s] work with environment %{public}s completed, but active work (environment: %{public}s) is already different, keeping state as foregroundGeneration", v45, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v46, -1, -1);
        v60 = v45;
        v6 = v166;
        MEMORY[0x22AABAD40](v60, -1, -1);
        sub_2284E8354(v178);

        goto LABEL_69;
      }

      v110 = v178;
LABEL_68:
      sub_2284E8354(v110);
      goto LABEL_69;
    }

    log = ObjectType;
    if (v39 != -1)
    {
      swift_once();
    }

    v93 = sub_22855CABC();
    __swift_project_value_buffer(v93, qword_280DEEBD0);
    v94 = a1;
    v95 = sub_22855CA8C();
    v96 = sub_22855D6AC();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *&v170 = v98;
      *v97 = 136446466;
      v99 = sub_22855E34C();
      v101 = sub_2283F8938(v99, v100, &v170);

      *(v97 + 4) = v101;
      *(v97 + 12) = 2082;
      v102 = (*(v162 + 8))(log, v162);
      v103 = (v102 & 1) == 0;
      if (v102)
      {
        v104 = 0x65746E4972657375;
      }

      else
      {
        v104 = 0x756F72676B636162;
      }

      if (v103)
      {
        v105 = 0xEA0000000000646ELL;
      }

      else
      {
        v105 = 0xEF65766974636172;
      }

      v106 = sub_2283F8938(v104, v105, &v170);

      *(v97 + 14) = v106;
      _os_log_impl(&dword_2283ED000, v95, v96, "[%{public}s] work with environment %{public}s completed, updating state from foregroundGeneration to idle", v97, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v98, -1, -1);
      MEMORY[0x22AABAD40](v97, -1, -1);
    }

    sub_2284E8354(v178);

LABEL_67:
    v107 = *(v3 + 80);
    v172 = *(v3 + 64);
    v173 = v107;
    v108 = *(v3 + 112);
    v174 = *(v3 + 96);
    v175 = v108;
    v109 = *(v3 + 48);
    v170 = *(v3 + 32);
    v171 = v109;
    *(v3 + 32) = xmmword_228566A20;
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
    *(v3 + 80) = 0u;
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
    v110 = &v170;
    goto LABEL_68;
  }

  if (*(&v178[0] + 1) >> 62 != 1)
  {
    if (qword_280DEEBC8 != -1)
    {
      swift_once();
    }

    v61 = sub_22855CABC();
    __swift_project_value_buffer(v61, qword_280DEEBD0);
    v62 = a1;
    v63 = sub_22855CA8C();
    v64 = sub_22855D6AC();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v170 = v66;
      *v65 = 136446466;
      v67 = sub_22855E34C();
      v69 = sub_2283F8938(v67, v68, &v170);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2082;
      v70 = swift_getObjectType();
      v71 = (*(a2 + 8))(v70, a2);
      v72 = (v71 & 1) == 0;
      if (v71)
      {
        v73 = 0x65746E4972657375;
      }

      else
      {
        v73 = 0x756F72676B636162;
      }

      if (v72)
      {
        v74 = 0xEA0000000000646ELL;
      }

      else
      {
        v74 = 0xEF65766974636172;
      }

      v75 = sub_2283F8938(v73, v74, &v170);

      *(v65 + 14) = v75;
      _os_log_impl(&dword_2283ED000, v63, v64, "[%{public}s] work with environment %{public}s completed, but state is already idle", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v66, -1, -1);
      MEMORY[0x22AABAD40](v65, -1, -1);
    }

    goto LABEL_67;
  }

  v165 = v6;
  v10 = v185;
  *(&v183 + 1) = *(&v178[0] + 1) & 0x3FFFFFFFFFFFFFFFLL;
  v11 = v183;
  v12 = v184;
  v177[0] = *(v3 + 49);
  *(v177 + 7) = *(v3 + 56);
  v13 = *(&v186 + 1);
  v159 = v186;
  v160 = *(&v185 + 1);
  v14 = *(&v187 + 1);
  v176 = *(v3 + 112);
  v15 = swift_getObjectType();
  if (!v185)
  {
    v76 = v15;
    if (v183 != a1)
    {
      v77 = *(v3 + 80);
      v172 = *(v3 + 64);
      v173 = v77;
      v78 = *(v3 + 112);
      v174 = *(v3 + 96);
      v175 = v78;
      v79 = *(v3 + 48);
      v170 = *(v3 + 32);
      v171 = v79;
      *(&v170 + 1) &= 0x3FFFFFFFFFFFFFFFuLL;
      sub_2284E81F8(&v170, v169);

      v6 = v165;
      if (qword_280DEEBC8 != -1)
      {
        swift_once();
      }

      v80 = sub_22855CABC();
      __swift_project_value_buffer(v80, qword_280DEEBD0);
      v81 = a1;
      v22 = sub_22855CA8C();
      v82 = sub_22855D6AC();

      if (!os_log_type_enabled(v22, v82))
      {
        goto LABEL_55;
      }

      v24 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v169[0] = v83;
      *v24 = 136446466;
      v84 = sub_22855E34C();
      v86 = a2;
      v87 = sub_2283F8938(v84, v85, v169);

      *(v24 + 4) = v87;
      *(v24 + 12) = 2082;
      v88 = (*(v86 + 8))(v76, v86);
      v89 = (v88 & 1) == 0;
      if (v88)
      {
        v90 = 0x65746E4972657375;
      }

      else
      {
        v90 = 0x756F72676B636162;
      }

      if (v89)
      {
        v91 = 0xEA0000000000646ELL;
      }

      else
      {
        v91 = 0xEF65766974636172;
      }

      v92 = sub_2283F8938(v90, v91, v169);

      *(v24 + 14) = v92;
      _os_log_impl(&dword_2283ED000, v22, v82, "[%{public}s] work with environment %{public}s completed, no enqueued background generation, but active work is already different, keeping state as backgroundGeneration(_, nil)", v24, 0x16u);
      swift_arrayDestroy();
      v35 = v83;
      goto LABEL_54;
    }

    v164 = a2;
    v133 = *(v3 + 80);
    v172 = *(v3 + 64);
    v173 = v133;
    v134 = *(v3 + 112);
    v174 = *(v3 + 96);
    v175 = v134;
    v135 = *(v3 + 48);
    v170 = *(v3 + 32);
    v171 = v135;
    *(&v170 + 1) &= 0x3FFFFFFFFFFFFFFFuLL;
    sub_2284E81F8(&v170, v169);
    v6 = v165;
    if (qword_280DEEBC8 != -1)
    {
      swift_once();
    }

    v136 = sub_22855CABC();
    __swift_project_value_buffer(v136, qword_280DEEBD0);
    v137 = a1;
    v138 = sub_22855CA8C();
    v139 = sub_22855D6AC();

    if (os_log_type_enabled(v138, v139))
    {
      v157 = v11;
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      *&v169[0] = v141;
      *v140 = 136446466;
      v142 = sub_22855E34C();
      v144 = sub_2283F8938(v142, v143, v169);

      *(v140 + 4) = v144;
      *(v140 + 12) = 2082;
      v145 = (*(v164 + 8))(v76);
      v146 = (v145 & 1) == 0;
      if (v145)
      {
        v147 = 0x65746E4972657375;
      }

      else
      {
        v147 = 0x756F72676B636162;
      }

      if (v146)
      {
        v148 = 0xEA0000000000646ELL;
      }

      else
      {
        v148 = 0xEF65766974636172;
      }

      v149 = sub_2283F8938(v147, v148, v169);

      *(v140 + 14) = v149;
      _os_log_impl(&dword_2283ED000, v138, v139, "[%{public}s] work with environment %{public}s completed, no enqueued background generation, updating state to idle", v140, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v141, -1, -1);
      MEMORY[0x22AABAD40](v140, -1, -1);
    }

    else
    {
    }

    v150 = *(v3 + 80);
    v169[2] = *(v3 + 64);
    v169[3] = v150;
    v151 = *(v3 + 112);
    v169[4] = *(v3 + 96);
    v169[5] = v151;
    v152 = *(v3 + 48);
    v169[0] = *(v3 + 32);
    v169[1] = v152;
    *(v3 + 32) = xmmword_228566A20;
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
    *(v3 + 80) = 0u;
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
    v110 = v169;
    goto LABEL_68;
  }

  v158 = v187;
  if (v183 != a1)
  {
    v16 = v15;
    v17 = *(v3 + 80);
    v172 = *(v3 + 64);
    v173 = v17;
    v18 = *(v3 + 112);
    v174 = *(v3 + 96);
    v175 = v18;
    v19 = *(v3 + 48);
    v170 = *(v3 + 32);
    v171 = v19;
    *(&v170 + 1) &= 0x3FFFFFFFFFFFFFFFuLL;
    sub_2284E81F8(&v170, v169);

    sub_22842DC5C(&v184);
    if (qword_280DEEBC8 != -1)
    {
      swift_once();
    }

    v20 = sub_22855CABC();
    __swift_project_value_buffer(v20, qword_280DEEBD0);
    v21 = a1;
    v22 = sub_22855CA8C();
    v23 = sub_22855D6AC();

    v6 = v165;
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_55;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v169[0] = v25;
    *v24 = 136446466;
    v26 = sub_22855E34C();
    v28 = a2;
    v29 = sub_2283F8938(v26, v27, v169);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2082;
    v30 = (*(v28 + 8))(v16, v28);
    v31 = (v30 & 1) == 0;
    if (v30)
    {
      v32 = 0x65746E4972657375;
    }

    else
    {
      v32 = 0x756F72676B636162;
    }

    if (v31)
    {
      v33 = 0xEA0000000000646ELL;
    }

    else
    {
      v33 = 0xEF65766974636172;
    }

    v34 = sub_2283F8938(v32, v33, v169);

    *(v24 + 14) = v34;
    _os_log_impl(&dword_2283ED000, v22, v23, "[%{public}s] work with environment %{public}s completed, had enqueued background generation request, but activeWork is already different, keeping state as backgroundGeneration(some)", v24, 0x16u);
    swift_arrayDestroy();
    v35 = v25;
LABEL_54:
    MEMORY[0x22AABAD40](v35, -1, -1);
    MEMORY[0x22AABAD40](v24, -1, -1);
LABEL_55:

    goto LABEL_69;
  }

  v153 = v15;
  v163 = a2;
  sub_2284E8098(v178, &v170);
  sub_22842DBD4(&v184, &v170);
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v156 = v11;
  v111 = sub_22855CABC();
  __swift_project_value_buffer(v111, qword_280DEEBD0);
  v112 = a1;
  v113 = sub_22855CA8C();
  v114 = sub_22855D6AC();

  v154 = v14;
  v155 = v13;
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    *&v170 = v116;
    *v115 = 136446466;
    v117 = sub_22855E34C();
    loga = v113;
    v119 = v114;
    v120 = sub_2283F8938(v117, v118, &v170);

    *(v115 + 4) = v120;
    *(v115 + 12) = 2082;
    v121 = (*(v163 + 8))(v153);
    v122 = (v121 & 1) == 0;
    if (v121)
    {
      v123 = 0x65746E4972657375;
    }

    else
    {
      v123 = 0x756F72676B636162;
    }

    if (v122)
    {
      v124 = 0xEA0000000000646ELL;
    }

    else
    {
      v124 = 0xEF65766974636172;
    }

    v125 = sub_2283F8938(v123, v124, &v170);

    *(v115 + 14) = v125;
    v113 = loga;
    _os_log_impl(&dword_2283ED000, loga, v119, "[%{public}s] work with environment %{public}s completed, has enqueued background generation request, updating state to backgroundGeneration(nil) and starting enqueued background generation request", v115, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v116, -1, -1);
    MEMORY[0x22AABAD40](v115, -1, -1);
  }

  LOBYTE(v170) = v12;
  *(&v170 + 1) = v177[0];
  *(&v170 + 1) = *(v177 + 7);
  *&v171 = v10;
  *(&v171 + 1) = v160;
  *&v172 = v159;
  *(&v172 + 1) = v155;
  *&v173 = v158;
  *(&v173 + 1) = v154;
  v174 = v176;
  v126 = v159(&v170);
  v128 = v127;
  LOBYTE(v170) = v12;
  *(&v170 + 1) = v177[0];
  *(&v170 + 1) = *(v177 + 7);
  *&v171 = v10;
  *(&v171 + 1) = v160;
  *&v172 = v159;
  *(&v172 + 1) = v155;
  *&v173 = v158;
  *(&v173 + 1) = v154;
  v174 = v176;
  sub_2284E455C(v126, v127, v12 & 1);
  v129 = *(v3 + 80);
  v172 = *(v3 + 64);
  v173 = v129;
  v130 = *(v3 + 112);
  v174 = *(v3 + 96);
  v175 = v130;
  v131 = *(v3 + 48);
  v170 = *(v3 + 32);
  v171 = v131;
  *(v3 + 32) = v126;
  *(v3 + 40) = v128 & 0xFFFFFFFFFFFFFF8 | 0x4000000000000000;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  v132 = v126;
  sub_2284E8354(&v170);
  sub_2284E61EC(v132, v128, v158, v154);

  sub_22842DC5C(&v184);
  sub_22842DC5C(&v184);
  v6 = v165;
LABEL_69:
  os_unfair_lock_unlock(*(v6 + 16));
}

uint64_t sub_2284E73E8()
{
  v1 = v0;
  os_unfair_lock_assert_owner(*(*(v0 + 128) + 16));
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DEEBD0);
  v3 = sub_22855CA8C();
  v4 = sub_22855D6AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v36 = v6;
    *v5 = 136446210;
    v7 = sub_22855E34C();
    v9 = sub_2283F8938(v7, v8, &v36);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2283ED000, v3, v4, "[%{public}s] Cancelling all operations", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AABAD40](v6, -1, -1);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  [*(v0 + 16) cancelAllOperations];
  v10 = *(v0 + 80);
  v38 = *(v0 + 64);
  v39 = v10;
  v11 = *(v0 + 112);
  v40 = *(v0 + 96);
  v41 = v11;
  v12 = *(v0 + 48);
  v36 = *(v0 + 32);
  v37 = v12;
  if (*(&v36 + 1) >> 62 == 1)
  {
    *(&v36 + 1) &= 0x3FFFFFFFFFFFFFFFuLL;
    v13 = v36;
    v14 = *(v0 + 80);
    v32 = *(v0 + 64);
    v33 = v14;
    v15 = *(v0 + 112);
    v34 = *(v0 + 96);
    v35 = v15;
    v16 = *(v0 + 48);
    v30 = *(v0 + 32);
    v31 = v16;
    *(&v30 + 1) &= 0x3FFFFFFFFFFFFFFFuLL;
    sub_2284E81F8(&v30, v29);

    if (v38)
    {
      v17 = v41;
      v18 = sub_22855CA8C();
      v19 = sub_22855D6AC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v29[0] = v21;
        *v20 = 136446210;
        v22 = sub_22855E34C();
        v24 = sub_2283F8938(v22, v23, v29);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_2283ED000, v18, v19, "[%{public}s] Calling notStartedCancellationBlock of enqueued work requests", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x22AABAD40](v21, -1, -1);
        MEMORY[0x22AABAD40](v20, -1, -1);
      }

      v17();
      sub_22842DC5C(&v37);
    }
  }

  v25 = v1[5];
  v32 = v1[4];
  v33 = v25;
  v26 = v1[7];
  v34 = v1[6];
  v35 = v26;
  v27 = v1[3];
  v30 = v1[2];
  v31 = v27;
  v1[2] = xmmword_228566A20;
  v1[3] = 0u;
  v1[4] = 0u;
  v1[5] = 0u;
  v1[6] = 0u;
  v1[7] = 0u;
  return sub_2284E8354(&v30);
}

void sub_2284E7710()
{
  v1 = *(v0 + 128);
  os_unfair_lock_lock(*(v1 + 16));
  sub_2284E73E8();
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

void *sub_2284E7750(void *a1)
{
  v2 = MEMORY[0x277D844C8];
  sub_2284E9440(0, &qword_27D8401B8, sub_2284E2C50, &type metadata for PluginIdentifierSet.IdentifiersCodingKeys, MEMORY[0x277D844C8]);
  v4 = *(v3 - 8);
  v30 = v3;
  v31 = v4;
  MEMORY[0x28223BE20](v3);
  v33 = &v28 - v5;
  sub_2284E9440(0, &qword_27D8401C0, sub_2284E2CA4, &type metadata for PluginIdentifierSet.AllCodingKeys, v2);
  v7 = v6;
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  sub_2284E9440(0, &qword_27D8401C8, sub_2284E2CF8, &type metadata for PluginIdentifierSet.CodingKeys, v2);
  v11 = v10;
  v32 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284E2CF8();
  v15 = v34;
  sub_22855E30C();
  if (v15)
  {
    goto LABEL_7;
  }

  v16 = v9;
  v28 = v7;
  v17 = v32;
  v18 = v33;
  v34 = a1;
  v19 = sub_22855E04C();
  v20 = v11;
  if (*(v19 + 16) != 1)
  {
    v24 = sub_22855DCEC();
    swift_allocError();
    v26 = v25;
    sub_2284E7D94(0);
    v14 = v13;
    *v26 = &type metadata for PluginIdentifierSet;
    sub_22855DFDC();
    sub_22855DCCC();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
    swift_willThrow();
    (*(v17 + 8))(v13, v11);
    swift_unknownObjectRelease();
    a1 = v34;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v14;
  }

  v21 = v17;
  if (*(v19 + 32))
  {
    v37 = 1;
    sub_2284E2C50();
    v22 = v18;
    sub_22855DFCC();
    sub_22845D390();
    sub_22845D84C(&qword_27D83F778, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    v23 = v30;
    sub_22855E03C();
    (*(v31 + 8))(v22, v23);
    (*(v21 + 8))(v13, v20);
    swift_unknownObjectRelease();
    v14 = v35;
  }

  else
  {
    v36 = 0;
    sub_2284E2CA4();
    sub_22855DFCC();
    (*(v29 + 8))(v16, v28);
    (*(v17 + 8))(v13, v20);
    swift_unknownObjectRelease();
    v14 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v34);
  return v14;
}

unint64_t sub_2284E7C98()
{
  result = qword_27D840078;
  if (!qword_27D840078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840078);
  }

  return result;
}

unint64_t sub_2284E7CEC()
{
  result = qword_27D840088;
  if (!qword_27D840088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840088);
  }

  return result;
}

unint64_t sub_2284E7D40()
{
  result = qword_27D840098;
  if (!qword_27D840098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840098);
  }

  return result;
}

void sub_2284E7D94(uint64_t a1)
{
  if (!qword_27D8400B8)
  {
    sub_2284E7E04();
    sub_22855DCDC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8400B8);
    }
  }
}

unint64_t sub_2284E7E04()
{
  result = qword_27D8409E0;
  if (!qword_27D8409E0)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27D8409E0);
  }

  return result;
}

unint64_t sub_2284E7E50()
{
  result = qword_27D8400C8;
  if (!qword_27D8400C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8400C8);
  }

  return result;
}

unint64_t sub_2284E7EA4()
{
  result = qword_27D8400D0;
  if (!qword_27D8400D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8400D0);
  }

  return result;
}

unint64_t sub_2284E7EF8()
{
  result = qword_27D8400E8;
  if (!qword_27D8400E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8400E8);
  }

  return result;
}

unint64_t sub_2284E7F4C()
{
  result = qword_27D8400F8;
  if (!qword_27D8400F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8400F8);
  }

  return result;
}

uint64_t sub_2284E7FA0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2284E9440(255, &qword_27D8400D8, sub_22848CD68, &type metadata for GenerationPhase, MEMORY[0x277D83B48]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2284E8044()
{
  result = qword_27D840108;
  if (!qword_27D840108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840108);
  }

  return result;
}

void sub_2284E80D0(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2 >> 62 == 1)
  {

    sub_2284E8188(a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  }

  else if (!(a2 >> 62))
  {
  }
}

void sub_2284E8188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a3)
  {
  }
}

uint64_t sub_2284E81F8(uint64_t a1, uint64_t a2)
{
  sub_2284E825C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2284E825C(uint64_t a1)
{
  if (!qword_280DEC070)
  {
    sub_2284E82F4();
    sub_2283F8898(255, &qword_280DEBC00, &type metadata for GenerationWorkRequest, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DEC070);
    }
  }
}

unint64_t sub_2284E82F4()
{
  result = qword_280DEC068;
  if (!qword_280DEC068)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DEC068);
  }

  return result;
}

unint64_t sub_2284E83B8()
{
  result = qword_280DEBF90;
  if (!qword_280DEBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBF90);
  }

  return result;
}

unint64_t sub_2284E8410()
{
  result = qword_27D840110;
  if (!qword_27D840110)
  {
    sub_2283F8898(255, &qword_27D840118, &type metadata for GenerationPhase, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840110);
  }

  return result;
}

unint64_t sub_2284E8490()
{
  result = qword_27D840120;
  if (!qword_27D840120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840120);
  }

  return result;
}

uint64_t sub_2284E8538(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2284E8580(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2284E85EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2284E8634(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerationQueue.EnqueueResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GenerationQueue.EnqueueResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2284E88AC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2284E88C0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14HealthPlatform21GenerationWorkRequestVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t get_enum_tag_for_layout_string_14HealthPlatform15GenerationQueueC5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2284E8940(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 96))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2284E899C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 80) = 0u;
    }
  }

  return result;
}

uint64_t sub_2284E8A28(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0x8000000000000000;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
  }

  return result;
}

unint64_t sub_2284E8AE4()
{
  result = qword_27D840128;
  if (!qword_27D840128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840128);
  }

  return result;
}

unint64_t sub_2284E8B3C()
{
  result = qword_27D840130;
  if (!qword_27D840130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840130);
  }

  return result;
}

unint64_t sub_2284E8B94()
{
  result = qword_27D840138;
  if (!qword_27D840138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840138);
  }

  return result;
}

unint64_t sub_2284E8BEC()
{
  result = qword_27D840140;
  if (!qword_27D840140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840140);
  }

  return result;
}

unint64_t sub_2284E8C44()
{
  result = qword_27D840148;
  if (!qword_27D840148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840148);
  }

  return result;
}

unint64_t sub_2284E8C9C()
{
  result = qword_27D840150;
  if (!qword_27D840150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840150);
  }

  return result;
}

unint64_t sub_2284E8CF4()
{
  result = qword_27D840158;
  if (!qword_27D840158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840158);
  }

  return result;
}

unint64_t sub_2284E8D4C()
{
  result = qword_27D840160;
  if (!qword_27D840160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840160);
  }

  return result;
}

unint64_t sub_2284E8DA4()
{
  result = qword_27D840168;
  if (!qword_27D840168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840168);
  }

  return result;
}

unint64_t sub_2284E8DFC()
{
  result = qword_27D840170;
  if (!qword_27D840170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840170);
  }

  return result;
}

unint64_t sub_2284E8E54()
{
  result = qword_27D840178;
  if (!qword_27D840178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840178);
  }

  return result;
}

unint64_t sub_2284E8EAC()
{
  result = qword_27D840180;
  if (!qword_27D840180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840180);
  }

  return result;
}

unint64_t sub_2284E8F04()
{
  result = qword_27D840188;
  if (!qword_27D840188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840188);
  }

  return result;
}

unint64_t sub_2284E8F5C()
{
  result = qword_27D840190;
  if (!qword_27D840190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840190);
  }

  return result;
}

unint64_t sub_2284E8FB4()
{
  result = qword_27D840198;
  if (!qword_27D840198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840198);
  }

  return result;
}

unint64_t sub_2284E900C()
{
  result = qword_27D8401A0;
  if (!qword_27D8401A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8401A0);
  }

  return result;
}

unint64_t sub_2284E9064()
{
  result = qword_27D8401A8;
  if (!qword_27D8401A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8401A8);
  }

  return result;
}

unint64_t sub_2284E90BC()
{
  result = qword_27D8401B0;
  if (!qword_27D8401B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8401B0);
  }

  return result;
}

uint64_t sub_2284E9110(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x8000000228571C10 == a2;
  if (v3 || (sub_22855E15C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000228571C30 == a2 || (sub_22855E15C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000228571C50 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_22855E15C();

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

uint64_t sub_2284E926C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_2284E929C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  (*(v0 + 16))();
  sub_2284E6354(v1, v2);
}

uint64_t objectdestroy_89Tm()
{

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

void sub_2284E9440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_2284E94A8()
{
  result = qword_280DED160;
  if (!qword_280DED160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DED160);
  }

  return result;
}

uint64_t DiskHealthExperienceStore.deinit()
{

  return v0;
}

uint64_t sub_2284E9548()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_228454EC4((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t sub_2284E959C()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_2284ECB08((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

id sub_2284E95F0()
{
  v0 = sub_228400874();
  v1 = [v0 persistentStoreCoordinator];

  return v1;
}

void (*sub_2284E9640(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_228400874();
  return sub_2284E9688;
}

void sub_2284E9688(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
}

id sub_2284E9698()
{
  v0 = sub_228400874();
  v1 = [v0 newBackgroundContext];

  [v1 setAutomaticallyMergesChangesFromParent_];
  v2 = [objc_allocWithZone(MEMORY[0x277CBE460]) initWithMergeType_];
  [v1 setMergePolicy_];

  return v1;
}

void sub_2284E9720()
{
  v1 = v0;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DEEC98);
  v3 = sub_22855CA8C();
  v4 = sub_22855D6AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2283ED000, v3, v4, "deleteAllObjects - removeAllFeedItemNotifications", v5, 2u);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  sub_2284E9E64();
  v6 = v1[4];
  os_unfair_lock_lock((v6 + 24));
  sub_2284EDA2C((v6 + 16), &v9);
  os_unfair_lock_unlock((v6 + 24));
  v7 = v9;
  v8 = (*(*v1 + 120))();
  sub_2284E98E4(v7, v8);
}

void sub_2284E9884(uint64_t a1, uint64_t a2)
{
  sub_2284E9720();
  sub_22855DEDC();
  __break(1u);
}

id sub_2284E98E4(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_18:
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    v25 = sub_22855DB4C();
  }

  else
  {
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v21 = &v28;
  while (v25 != v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x22AAB9D20](v3, a1);
    }

    else
    {
      if (v3 >= *(v22 + 16))
      {
        goto LABEL_16;
      }

      v6 = *(a1 + 8 * v3 + 32);
    }

    v7 = v6;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    result = [v6 name];
    if (!result)
    {
      goto LABEL_20;
    }

    v9 = result;
    v10 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

    [v10 setIncludesPropertyValues_];
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = v10;
    v11[4] = v24;
    v12 = a2;
    v13 = v10;

    sub_228416CF8(v4, v5);
    v14 = swift_allocObject();
    v4 = sub_2284ED8D0;
    *(v14 + 16) = sub_2284ED8D0;
    *(v14 + 24) = v11;
    v30 = sub_228466000;
    v31 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_228417B68;
    v29 = &block_descriptor_40;
    v15 = _Block_copy(&aBlock);

    [v12 performBlockAndWait_];

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    ++v3;
    v5 = v11;
    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_17;
    }
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = v24;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2284ED8DC;
  *(v18 + 24) = v17;
  v30 = sub_228492FA4;
  v31 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_228417B68;
  v29 = &block_descriptor_50;
  v19 = _Block_copy(&aBlock);
  v20 = a2;

  [v20 performBlockAndWait_];
  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  sub_228416CF8(v4, v5);

  if ((v19 & 1) == 0)
  {
    return result;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_2284E9CC0()
{
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v0 = sub_22855CABC();
  __swift_project_value_buffer(v0, qword_280DEEC98);
  v1 = sub_22855CA8C();
  v2 = sub_22855D6AC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = sub_22855E34C();
    v7 = sub_2283F8938(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_2283ED000, v1, v2, "%s destroyPersistentContainerDescription", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x22AABAD40](v4, -1, -1);
    MEMORY[0x22AABAD40](v3, -1, -1);
  }

  sub_2284E9E64();
  v8 = sub_2283F64E4();
  sub_22854EEE0();
}

uint64_t sub_2284E9E64()
{
  v1 = v0;
  v2 = *(v0 + 32);
  os_unfair_lock_lock((v2 + 24));
  sub_2284EB538((v2 + 16), &v9);
  os_unfair_lock_unlock((v2 + 24));
  v3 = *(v9 + 16);
  if (v3)
  {
    v4 = (v9 + 40);
    do
    {
      v5 = *v4;
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 8);
      swift_unknownObjectRetain();
      v7(v1, ObjectType, v5);
      swift_unknownObjectRelease();
      v4 += 2;
      --v3;
    }

    while (v3);
  }
}

id sub_2284E9F40(char *a1)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22855C06C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v25 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v25 - v10;
  v12 = *a1;
  v33 = 0;
  v34[0] = 0;
  v13 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) init];
  type metadata accessor for StorageLocations();
  static StorageLocations.homeMobileDirectory.getter();
  sub_22855BFCC();
  v14 = *(v3 + 8);
  v14(v6, v2);
  sub_22855BFCC();
  v14(v9, v2);
  v15 = sub_22855BFBC();
  v14(v11, v2);
  v16 = v25[1];
  v17 = swift_allocObject();
  *(v17 + 16) = v34;
  *(v17 + 24) = v16;
  *(v17 + 32) = v12;
  *(v17 + 40) = &v33;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2284ECB88;
  *(v18 + 24) = v17;
  v30 = sub_22845D554;
  v31 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_2284EB734;
  v29 = &block_descriptor_20;
  v19 = _Block_copy(&aBlock);

  aBlock = 0;
  [v13 coordinateWritingItemAtURL:v15 options:8 error:&aBlock byAccessor:v19];
  _Block_release(v19);

  v20 = aBlock;
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  if (v33)
  {
    swift_willThrow();

    v21 = v34[0];

    return v20;
  }

  if (v20)
  {
    aBlock = 0;
    v27 = 0xE000000000000000;
    sub_22855DC6C();
    v32 = v16;
    type metadata accessor for DiskHealthExperienceStore();
    sub_22855DDDC();
    MEMORY[0x22AAB92A0](0xD000000000000020, 0x8000000228571DF0);
    v32 = v20;
    sub_2284ECBEC(0, &unk_27D8401D0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277D83D88]);
    v23 = v20;
    v24 = sub_22855D1BC();
    MEMORY[0x22AAB92A0](v24);
  }

  else
  {
    v20 = v34[0];
    if (v34[0])
    {

      return v20;
    }

    aBlock = 0;
    v27 = 0xE000000000000000;
    sub_22855DC6C();
    v32 = v16;
    type metadata accessor for DiskHealthExperienceStore();
    sub_22855DDDC();
    MEMORY[0x22AAB92A0](0xD000000000000048, 0x8000000228571DA0);
  }

  result = sub_22855DEDC();
  __break(1u);
  return result;
}

void sub_2284EA450()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_2284ECC54((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_2284EA4A4()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_2284ECC70((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t DiskHealthExperienceStore.State.hashValue.getter()
{
  v1 = *v0;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v1);
  return sub_22855E27C();
}

uint64_t sub_2284EA580()
{
  sub_2283F4798(v0 + OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_overrideStoreLocation, &qword_280DEE390, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2283F1380);

  return swift_deallocClassInstance();
}

uint64_t DiskHealthExperienceStore.__allocating_init(overrideStoreLocation:observeExternalChanges:)(uint64_t a1, int a2)
{
  v4 = swift_allocObject();
  DiskHealthExperienceStore.init(overrideStoreLocation:observeExternalChanges:)(a1, a2);
  return v4;
}

id sub_2284EA6DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_sharedBackgroundContext;
  v5 = *(*a1 + OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_sharedBackgroundContext);
  if (v5)
  {
    v6 = *(*a1 + OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_sharedBackgroundContext);
  }

  else
  {
    v7 = sub_228400874();
    v8 = [v7 newBackgroundContext];

    [v8 setAutomaticallyMergesChangesFromParent_];
    v9 = [objc_allocWithZone(MEMORY[0x277CBE460]) initWithMergeType_];
    [v8 setMergePolicy_];

    v10 = *(v3 + v4);
    *(v3 + v4) = v8;
    v6 = v8;

    v5 = 0;
  }

  *a2 = v6;
  return v5;
}

double sub_2284EA7C4@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_allEntities;
  v5 = *(*a1 + OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_allEntities);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = sub_228400874();
    v8 = [v7 managedObjectModel];

    v9 = [v8 entities];
    sub_2283EF310(0, &qword_27D840278, 0x277CBE408);
    v6 = sub_22855D3AC();

    *(v3 + v4) = v6;
  }

  *a2 = v6;

  return result;
}

uint64_t sub_2284EA8B8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2284EA910();
  }

  return result;
}

void sub_2284EA910()
{
  v1 = v0;
  if (qword_280DEEC90 != -1)
  {
LABEL_18:
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DEEC98);

  v3 = sub_22855CA8C();
  v4 = sub_22855D66C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock[0] = v6;
    *v5 = 136315138;
    v7 = DiskHealthExperienceStore.debugDescription.getter();
    v9 = sub_2283F8938(v7, v8, aBlock);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2283ED000, v3, v4, "%s mergeExternalChanges() starting", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AABAD40](v6, -1, -1);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  v10 = sub_228400874();
  v11 = [v10 newBackgroundContext];

  v12 = *(*v1 + 112);
  v13 = *v1 + 112;
  v14 = MEMORY[0x277D84F68];
  v45 = v1;
  do
  {

    v15 = sub_22855CA8C();
    v16 = sub_22855D66C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      v19 = DiskHealthExperienceStore.debugDescription.getter();
      v21 = v11;
      v22 = v13;
      v23 = v12;
      v24 = v14;
      v25 = sub_2283F8938(v19, v20, aBlock);

      *(v17 + 4) = v25;
      v14 = v24;
      v12 = v23;
      v13 = v22;
      v11 = v21;
      v1 = v45;
      _os_log_impl(&dword_2283ED000, v15, v16, "%s mergeExternalChangesUsing(tempMoc:) merging", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x22AABAD40](v18, -1, -1);
      MEMORY[0x22AABAD40](v17, -1, -1);
    }

    v26 = v12();
    sub_2283F88E8(0, &qword_280DED000, v14 + 8, MEMORY[0x277D84560]);
    v27 = swift_allocObject();
    if (v26)
    {
      *(v27 + 16) = xmmword_228563E50;
      *(v27 + 32) = (*(*v1 + 120))();
      v28 = sub_228400874();
      v29 = [v28 viewContext];

      *(v27 + 40) = v29;
    }

    else
    {
      *(v27 + 16) = xmmword_228560690;
      *(v27 + 32) = (*(*v1 + 120))();
    }

    v47 = 0;
    v30 = swift_allocObject();
    v30[2] = v1;
    v30[3] = v11;
    v30[4] = v27;
    v30[5] = &v47;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_2284ED8F4;
    *(v31 + 24) = v30;
    aBlock[4] = sub_228492FA4;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228417B68;
    aBlock[3] = &block_descriptor_82_0;
    v32 = _Block_copy(aBlock);

    v33 = v11;

    [v33 performBlockAndWait_];
    _Block_release(v32);
    LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

    if (v32)
    {
      __break(1u);
      goto LABEL_18;
    }

    v34 = v47;
  }

  while (v34 == 1);
  if (v34)
  {

    sub_2284ED900(v34);
    v35 = sub_22855CA8C();
    v36 = sub_22855D69C();

    sub_2284ED910(v34);
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v37 = 136315394;
      v40 = DiskHealthExperienceStore.debugDescription.getter();
      v42 = sub_2283F8938(v40, v41, aBlock);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2112;
      v43 = v34;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v44;
      *v38 = v44;
      _os_log_impl(&dword_2283ED000, v35, v36, "%s mergeExternalChanges() abandoning merge after too many errors: %@", v37, 0x16u);
      sub_22841DC98(v38);
      MEMORY[0x22AABAD40](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AABAD40](v39, -1, -1);
      MEMORY[0x22AABAD40](v37, -1, -1);

      sub_2284ED910(v34);
    }

    else
    {

      sub_2284ED910(v34);
    }
  }

  else
  {
  }
}

uint64_t sub_2284EB0DC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_22846618C();
  v4 = sub_22855D97C();
  v5 = v4;
  if (v4 >> 62)
  {
    sub_2283EF310(0, &unk_27D840268, 0x277CBE438);

    v13 = sub_22855DEFC();
    swift_bridgeObjectRelease_n();
    v5 = v13;
  }

  else
  {
    v6 = v4 & 0xFFFFFFFFFFFFFF8;

    sub_22855E16C();
    sub_2283EF310(0, &unk_27D840268, 0x277CBE438);
    if (swift_dynamicCastMetatype() || (v11 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_3:
    }

    else
    {
      v12 = v6 + 32;
      while (1)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          break;
        }

        v12 += 8;
        if (!--v11)
        {
          goto LABEL_3;
        }
      }

      v5 = v6 | 1;
    }
  }

  if (v5 >> 62)
  {
    v7 = sub_22855DB4C();
    if (!v7)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_20;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    sub_22855DC6C();
    type metadata accessor for DiskHealthExperienceStore();
    sub_22855DDDC();
    MEMORY[0x22AAB92A0](0xD000000000000063, 0x80000002285720A0);
    sub_2283F9B94(0, &qword_280DECFE0, MEMORY[0x277D84948]);
    sub_22855DDDC();
    result = sub_22855DEDC();
    __break(1u);
    return result;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x22AAB9D20](i, v5);
    }

    else
    {
      v9 = *(v5 + 8 * i + 32);
    }

    v10 = v9;
    [a1 deleteObject_];
  }

LABEL_20:
}

id sub_2284EB3B0(void *a1, uint64_t a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [a1 save_];
  v3 = v6[0];
  if (v2)
  {

    return v3;
  }

  else
  {
    v5 = v6[0];
    sub_22855BF3C();

    swift_willThrow();
    v6[0] = 0;
    v6[1] = 0xE000000000000000;
    sub_22855DC6C();
    type metadata accessor for DiskHealthExperienceStore();
    sub_22855DDDC();
    MEMORY[0x22AAB92A0](0xD000000000000059, 0x8000000228572040);
    sub_2283F9B94(0, &qword_280DECFE0, MEMORY[0x277D84948]);
    sub_22855DDDC();
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

void sub_2284EB538(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_observers;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = *(v5 + 16);

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
LABEL_2:
  v9 = v5 + 40 + 16 * v7;
  while (1)
  {
    if (v6 == v7)
    {

      *a2 = v8;
      return;
    }

    if (v7 >= *(v5 + 16))
    {
      break;
    }

    ++v7;
    v10 = v9 + 16;
    v11 = *(v9 - 8);

    v11(&v18, v12);

    v9 = v10;
    if (v18)
    {
      v17 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_228426B00(0, v8[2] + 1, 1, v8);
      }

      v14 = v8[2];
      v13 = v8[3];
      v15 = v17;
      if (v14 >= v13 >> 1)
      {
        v16 = sub_228426B00((v13 > 1), v14 + 1, 1, v8);
        v15 = v17;
        v8 = v16;
      }

      v8[2] = v14 + 1;
      *&v8[2 * v14 + 4] = v15;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_2284EB6A0(uint64_t a1, id *a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = a4;
  *a2 = sub_2283F25F8(&v5, 1);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2284EB734(uint64_t a1, uint64_t a2)
{
  v3 = sub_22855C06C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_22855C00C();
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

id sub_2284EB818(void *a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [a1 save_];
  v2 = v5[0];
  if (v1)
  {

    return v2;
  }

  else
  {
    v4 = v5[0];
    sub_22855BF3C();

    swift_willThrow();
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

unint64_t sub_2284EB90C()
{
  v1 = [v0 userInfo];
  v2 = sub_22855D0EC();

  v3 = sub_22855D1AC();
  if (!*(v2 + 16))
  {

    goto LABEL_6;
  }

  v5 = sub_2283F6D18(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  sub_2283F6E48(*(v2 + 56) + 32 * v5, v13);

  sub_2283EF310(0, &qword_280DED090, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v10 = 0;
    v9 = 1;
    return v10 | (v9 << 32);
  }

  v8 = [v12 intValue];

  v9 = 0;
  v10 = v8;
  return v10 | (v9 << 32);
}

void sub_2284EBA5C(void *a1)
{
  v1 = [a1 viewContext];
  [v1 setAutomaticallyMergesChangesFromParent_];
}

uint64_t sub_2284EBAB4(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_observers;
  swift_beginAccess();
  v8 = *(v6 + v7);
  v9 = *(v8 + 16);

  if (v9)
  {
    v10 = 0;
    v11 = v8 + 40;
    while (v10 < *(v8 + 16))
    {
      v12 = *(v11 - 8);

      v12(&v19, v13);

      v3 = v19;
      if (v19)
      {
        swift_unknownObjectRelease();
        if (v3 == a2)
        {
        }
      }

      ++v10;
      v11 += 16;
      if (v9 == v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_8:

  v3 = swift_allocObject();
  v3[3] = a3;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  a2 = *(v6 + v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + v7) = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_13:
    a2 = sub_228426C4C(0, a2[2] + 1, 1, a2);
    *(v6 + v7) = a2;
  }

  v17 = a2[2];
  v16 = a2[3];
  if (v17 >= v16 >> 1)
  {
    a2 = sub_228426C4C((v16 > 1), v17 + 1, 1, a2);
  }

  a2[2] = v17 + 1;
  v18 = &a2[2 * v17];
  v18[4] = sub_2284ED884;
  v18[5] = v3;
  *(v6 + v7) = a2;
  swift_endAccess();
}

uint64_t sub_2284EBC94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_observers;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v7 = sub_2284ED6DC((v5 + v6), a2);
  if (!v3)
  {
    v8 = v7;
    swift_unknownObjectRelease();
    v9 = *(*(v5 + v6) + 16);
    if (v9 >= v8)
    {
      sub_2284FD2DC(v8, v9);
      return swift_endAccess();
    }

    __break(1u);
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t DiskHealthExperienceStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_2284EBE30()
{
  v0 = sub_22855C06C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v4 = sub_22855CABC();
  __swift_project_value_buffer(v4, qword_280DEEC98);
  v13 = sub_22855CA8C();
  v5 = sub_22855D68C();
  if (os_log_type_enabled(v13, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    sub_2283F6EA4();
    sub_2283F2298(&qword_27D83FC20, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v8 = sub_22855E11C();
    v10 = v9;
    (*(v1 + 8))(v3, v0);
    v11 = sub_2283F8938(v8, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_2283ED000, v13, v5, "Store cache file has been deleted! Store File URL: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AABAD40](v7, -1, -1);
    MEMORY[0x22AABAD40](v6, -1, -1);
  }

  else
  {
    v12 = v13;
  }
}

void sub_2284EC124(uint64_t a1, void *a2, uint64_t a3, void **a4)
{
  v8 = MEMORY[0x22AABA4B0]();
  sub_2284EC358(a1, a2, a3, a4, &v10);
  objc_autoreleasePoolPop(v8);
  v9 = *(a1 + 32);
  os_unfair_lock_lock((v9 + 24));
  *(*(v9 + 16) + 16) = 0;
  os_unfair_lock_unlock((v9 + 24));
}

void sub_2284EC358(uint64_t a1, void *a2, uint64_t a3, void **a4, uint64_t *a5)
{
  v68 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  os_unfair_lock_lock((v8 + 24));
  v57 = v8 + 16;
  v9 = *(*(v8 + 16) + 24);
  v58 = v8;
  os_unfair_lock_unlock((v8 + 24));
  v10 = [objc_opt_self() fetchHistoryAfterToken_];
  [v10 setFetchLimit_];
  v11 = [objc_opt_self() fetchRequest];
  if (v11)
  {
    v12 = v11;
    v60 = a2;
    sub_22840A70C(0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_228560570;
    *(v13 + 56) = MEMORY[0x277D837D0];
    v14 = sub_22840A7C8();
    *(v13 + 64) = v14;
    *(v13 + 32) = 0x4449656C646E7562;
    *(v13 + 40) = 0xE800000000000000;
    v15 = [objc_opt_self() mainBundle];
    v16 = [v15 bundleIdentifier];

    if (v16)
    {
      v55 = a1;
      v17 = a5;
      v18 = v10;
      v19 = sub_22855D1AC();
      v21 = v20;

      v22 = (v13 + 72);
      *(v13 + 96) = MEMORY[0x277D837D0];
      *(v13 + 104) = v14;
      if (v21)
      {
        *v22 = v19;
        v10 = v18;
        a5 = v17;
LABEL_8:
        *(v13 + 80) = v21;
        sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
        v23 = sub_22855D62C();
        [v12 setPredicate_];

        [v10 setFetchRequest_];
        a2 = v60;
        goto LABEL_9;
      }

      v10 = v18;
      a5 = v17;
    }

    else
    {
      v22 = (v13 + 72);
      *(v13 + 96) = MEMORY[0x277D837D0];
      *(v13 + 104) = v14;
    }

    *v22 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_8;
  }

LABEL_9:
  *&v67[0] = 0;
  v24 = [a2 executeRequest:v10 error:{v67, v55}];
  v25 = *&v67[0];
  if (!v24)
  {
    v30 = *&v67[0];
    v31 = sub_22855BF3C();

    swift_willThrow();
    v32 = v9;
LABEL_33:

    *a5 = v31;
    return;
  }

  v26 = v24;
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (!v27)
  {
    v54 = v25;

    *&v67[0] = 0;
    *(&v67[0] + 1) = 0xE000000000000000;
    sub_22855DC6C();
    type metadata accessor for DiskHealthExperienceStore();
    sub_22855DDDC();
    MEMORY[0x22AAB92A0](0xD000000000000030, 0x80000002285722B0);
    v35 = sub_22855DEDC();
    __break(1u);
    goto LABEL_36;
  }

  v28 = v27;
  v29 = v25;
  if ([v28 result])
  {
    sub_22855DA7C();
    swift_unknownObjectRelease();
  }

  else
  {
    v65 = 0u;
    v66 = 0u;
  }

  v67[0] = v65;
  v67[1] = v66;
  if (!*(&v66 + 1))
  {
    v63 = v10;
    sub_2283F4798(v67, &qword_280DECFD0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2283F88E8);
LABEL_27:
    v61 = v9;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v38 = sub_22855CABC();
    __swift_project_value_buffer(v38, qword_280DEEC98);
    v32 = v26;

    v39 = sub_22855CA8C();
    v40 = sub_22855D68C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v67[0] = v42;
      *v41 = 136315650;
      v43 = DiskHealthExperienceStore.debugDescription.getter();
      v45 = a5;
      v46 = sub_2283F8938(v43, v44, v67);

      *(v41 + 4) = v46;
      *(v41 + 12) = 2048;
      v47 = [v28 resultType];

      *(v41 + 14) = v47;
      *(v41 + 22) = 2080;
      v32 = v32;
      v48 = [v28 description];
      v49 = sub_22855D1AC();
      v51 = v50;

      v52 = v49;
      a5 = v45;
      v53 = sub_2283F8938(v52, v51, v67);

      *(v41 + 24) = v53;
      _os_log_impl(&dword_2283ED000, v39, v40, "%s could not get transactions from result of type %ld: %s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v42, -1, -1);
      MEMORY[0x22AABAD40](v41, -1, -1);
    }

    else
    {
    }

    sub_2284ED920();
    v31 = swift_allocError();
    swift_willThrow();

    v10 = v63;
    goto LABEL_33;
  }

  sub_2284ECBEC(0, &qword_280DED238, &qword_280DED0D0, 0x277CBE4C8, MEMORY[0x277D83940]);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v63 = v10;
    goto LABEL_27;
  }

  v33 = sub_22842C344(v64, a3);
  if (v33)
  {
    v34 = v33;
    MEMORY[0x28223BE20](v33);
    os_unfair_lock_lock(v58 + 6);
    sub_2284ED974(v57);
    v35 = v58 + 6;
    if (!v62)
    {
      os_unfair_lock_unlock(v35);

      goto LABEL_20;
    }

LABEL_36:
    os_unfair_lock_unlock(v35);
    __break(1u);
    return;
  }

LABEL_20:
  if (v64 >> 62)
  {
    v36 = sub_22855DB4C();
  }

  else
  {
    v36 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v36 == 50)
  {
    v37 = *a4;
    *a4 = 1;
    sub_2284ED910(v37);
  }
}

uint64_t sub_2284ECB2C(uint64_t a1)
{
  v2 = type metadata accessor for FileMonitorPublisher(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2284ECB98()
{
  result = qword_27D8401E0;
  if (!qword_27D8401E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8401E0);
  }

  return result;
}

void sub_2284ECBEC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2283EF310(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2284ECC90()
{
  result = qword_27D8401F0;
  if (!qword_27D8401F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8401F0);
  }

  return result;
}

uint64_t sub_2284ED03C(void *a1)
{
  v43 = sub_22855C29C();
  v2 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [a1 persistentStoreCoordinator];
  v5 = [v4 persistentStores];

  sub_2283EF310(0, &qword_280DED150, 0x277CBE4D0);
  v6 = sub_22855D3AC();

  if (v6 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22855DB4C())
  {
    v8 = 0;
    v38 = "or failed with: ";
    v39 = "tity for Profile";
    v41 = v6 & 0xC000000000000001;
    v35 = v6 & 0xFFFFFFFFFFFFFF8;
    v37 = v2 + 1;
    v9 = MEMORY[0x277D84F70];
    v40 = v6;
    v36 = i;
    while (1)
    {
      if (v41)
      {
        v10 = MEMORY[0x22AAB9D20](v8, v6);
      }

      else
      {
        if (v8 >= *(v35 + 16))
        {
          goto LABEL_17;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v44 = v8 + 1;
      v12 = v9;
      v13 = [a1 persistentStoreCoordinator];
      v14 = [v13 metadataForPersistentStore_];

      v15 = MEMORY[0x277D837D0];
      v16 = sub_22855D0EC();

      if (qword_280DEE228 != -1)
      {
        swift_once();
      }

      v47 = v15;
      aBlock = xmmword_280DEE230;
      sub_228400400(&aBlock, v51);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v16;
      sub_22845AC64(v51, 0xD000000000000023, v39 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
      v18 = v50;
      v19 = v42;
      sub_22855C25C();
      v20 = sub_2283F79F8();
      v22 = v21;
      (v37->isa)(v19, v43);
      v47 = v15;
      *&aBlock = v20;
      *(&aBlock + 1) = v22;
      sub_228400400(&aBlock, v51);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v50 = v18;
      sub_22845AC64(v51, 0xD000000000000022, v38 | 0x8000000000000000, v23);
      v24 = [a1 persistentStoreCoordinator];
      v9 = v12;
      v25 = sub_22855D0DC();

      [v24 setMetadata:v25 forPersistentStore:v11];

      if (qword_280DEEC90 != -1)
      {
        swift_once();
      }

      v26 = sub_22855CABC();
      __swift_project_value_buffer(v26, qword_280DEEC98);
      v2 = sub_22855CA8C();
      v27 = sub_22855D6AC();
      if (os_log_type_enabled(v2, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_2283ED000, v2, v27, "Saved new store version and localization for database.", v28, 2u);
        MEMORY[0x22AABAD40](v28, -1, -1);
      }

      ++v8;
      v6 = v40;
      if (v44 == v36)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  v29 = [a1 newBackgroundContext];
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_2284ED8E4;
  *(v31 + 24) = v30;
  v48 = sub_228492FA4;
  v49 = v31;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v46 = sub_228417B68;
  v47 = &block_descriptor_66;
  v32 = _Block_copy(&aBlock);
  v33 = v29;

  [v33 performBlockAndWait_];

  _Block_release(v32);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2284ED610(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  for (i = a1 + 40; ; i += 16)
  {
    v6 = *(i - 8);

    v6(&v10, v7);
    v8 = v10;

    if (v8)
    {
      swift_unknownObjectRelease();
      if (v8 == a2)
      {
        break;
      }
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_2284ED6DC(uint64_t *a1, uint64_t a2)
{
  v21 = a1;
  v4 = *a1;
  result = sub_2284ED610(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    return v4[2];
  }

  v8 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v10 = v4 + 2;
    v9 = v4[2];
    if (v8 == v9)
    {
      return v7;
    }

    v11 = 2 * result;
    while (v8 < v9)
    {
      v12 = &v4[v11];
      v13 = v4[v11 + 6];

      v13(&v20, v14);
      v15 = v20;

      if (!v15 || (result = swift_unknownObjectRelease(), v15 != a2))
      {
        if (v8 != v7)
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          if (v7 >= *v10)
          {
            goto LABEL_24;
          }

          if (v8 >= *v10)
          {
            goto LABEL_25;
          }

          v17 = v12[6];
          v16 = v12[7];
          v19 = *&v4[2 * v7 + 4];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_22847C59C(v4);
          }

          v18 = &v4[2 * v7];
          v18[4] = v17;
          v18[5] = v16;

          if (v8 >= v4[2])
          {
            goto LABEL_26;
          }

          *&v4[v11 + 6] = v19;

          *v21 = v4;
        }

        ++v7;
      }

      ++v8;
      v10 = v4 + 2;
      v9 = v4[2];
      v11 += 2;
      if (v8 == v9)
      {
        return v7;
      }
    }

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

  __break(1u);
  return result;
}

uint64_t sub_2284ED884@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 24);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_2284ED900(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_2284ED910(id a1)
{
  if (a1 >= 2)
  {
  }
}

unint64_t sub_2284ED920()
{
  result = qword_27D840280;
  if (!qword_27D840280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840280);
  }

  return result;
}

id sub_2284ED974(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(*a1 + 24);
  *(*a1 + 24) = v2;

  return v2;
}

unint64_t sub_2284ED9C4()
{
  result = qword_27D840288;
  if (!qword_27D840288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840288);
  }

  return result;
}

id sub_2284EDB7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_2284EDDA0(a1, a2, a3, a4, a5);
  if (!v5 && !result)
  {
    v10 = objc_opt_self();
    (*(a5 + 16))(a4, a5);
    v11 = sub_22855D17C();

    v12 = [v10 insertNewObjectForEntityForName:v11 inManagedObjectContext:a1];

    return swift_dynamicCastUnknownClassUnconditional();
  }

  return result;
}

uint64_t sub_2284EDC48()
{
  sub_22855E22C();
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_2284EDCBC(uint64_t a1)
{
  sub_22855E22C();
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_2284EDD10@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_22855DFBC();

  *a2 = v3 != 0;
  return result;
}

id sub_2284EDDA0(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v31 = a3;
  sub_2283EF310(0, &qword_280DED1D0, 0x277CBE428);
  v12 = (*(a5 + 16))(a4, a5);
  v14 = v13;
  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v16 = sub_2284EE848(v12, v14);
  [v16 setPredicate_];
  v17 = sub_22855D97C();
  if (!v6)
  {
    v30 = v7;
    v19 = v17;
    if (sub_22855D44C() <= 1)
    {
      v33 = v19;
      sub_22855D47C();
      swift_getWitnessTable();
      sub_22855D5CC();

      v16 = v32;

      return v16;
    }

    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v29 = a1;
    v20 = sub_22855CABC();
    __swift_project_value_buffer(v20, qword_280DEEC98);
    v21 = sub_22855CA8C();
    v22 = sub_22855D68C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2283ED000, v21, v22, "Error: duplicate feed item created...", v23, 2u);
      MEMORY[0x22AABAD40](v23, -1, -1);
    }

    v24 = sub_22855D47C();
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x22AAB9350](&v33, v24, WitnessTable);

    v28[1] = v28;
    v32 = v33;
    v27 = MEMORY[0x28223BE20](v26);
    MEMORY[0x28223BE20](v27);
    sub_22855DF0C();
    swift_getWitnessTable();
    sub_22855D32C();

    sub_2284EE340(v29, v31 & 1, a4);
    sub_22843D108();
    swift_allocError();
    swift_willThrow();
  }

  return v16;
}

void sub_2284EE178(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v5 = sub_22855CABC();
  __swift_project_value_buffer(v5, qword_280DEEC98);
  v6 = a2;
  oslog = sub_22855CA8C();
  v7 = sub_22855D68C();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 134218242;
    *(v8 + 4) = a1;
    *(v8 + 12) = 2080;
    swift_getWitnessTable();
    v10 = sub_22855E11C();
    v12 = sub_2283F8938(v10, v11, &v14);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_2283ED000, oslog, v7, "Existing item %ld: %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AABAD40](v9, -1, -1);
    MEMORY[0x22AABAD40](v8, -1, -1);
  }

  else
  {
  }
}

void sub_2284EE340(void *a1, char a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = [a1 persistentStoreCoordinator];
  if (!v5)
  {
    if (qword_280DEEC90 == -1)
    {
LABEL_11:
      v16 = sub_22855CABC();
      __swift_project_value_buffer(v16, qword_280DEEC98);
      v17 = sub_22855CA8C();
      v18 = sub_22855D69C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_2283ED000, v17, v18, "No coordinator, unable to reset cache version", v19, 2u);
        MEMORY[0x22AABAD40](v19, -1, -1);
      }

      return;
    }

LABEL_23:
    swift_once();
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [v5 persistentStores];
  sub_2283EF310(0, &qword_280DED150, 0x277CBE4D0);
  v8 = sub_22855D3AC();

  if (v8 >> 62)
  {
    if (sub_22855DB4C())
    {
      goto LABEL_4;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x22AAB9D20](0, v8);
LABEL_7:
      v10 = v9;

      v11 = [v6 metadataForPersistentStore_];
      sub_22855D0EC();

      sub_22845A864(0xD000000000000023, 0x800000022856E7D0, v27);
      sub_22843D15C(v27);
      v12 = sub_22855D0DC();
      [v6 setMetadata:v12 forPersistentStore:v10];

      *&v27[0] = 0;
      v13 = [a1 save_];
      v14 = *&v27[0];
      if (v13)
      {
        if (a2)
        {
          *&v27[0] = 0;
          *(&v27[0] + 1) = 0xE000000000000000;
          v25 = v14;
          sub_22855DC6C();
          MEMORY[0x22AAB92A0](0xD000000000000018, 0x800000022856E800);
          swift_getMetatypeMetadata();
          v26 = sub_22855D1BC();
          MEMORY[0x22AAB92A0](v26);

          MEMORY[0x22AAB92A0](0xD000000000000039, 0x800000022856E820);
          sub_22855DEDC();
          __break(1u);
        }

        else
        {
          v15 = *&v27[0];
        }
      }

      else
      {
        v20 = *&v27[0];

        sub_22855BF3C();

        swift_willThrow();
      }

      return;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v8 + 32);
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v21 = sub_22855CABC();
  __swift_project_value_buffer(v21, qword_280DEEC98);
  v22 = sub_22855CA8C();
  v23 = sub_22855D69C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2283ED000, v22, v23, "No persistent stores, unable to reset cache version", v24, 2u);
    MEMORY[0x22AABAD40](v24, -1, -1);
  }
}

id sub_2284EE848(uint64_t a1, uint64_t a2)
{
  v3 = sub_22855D17C();

  v4 = [v2 initWithEntityName_];

  return v4;
}

unint64_t sub_2284EE8B4()
{
  result = qword_27D840290;
  if (!qword_27D840290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840290);
  }

  return result;
}

uint64_t PreferredSummaryTransactionSelector.init(currentDateProvider:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

id PreferredSummaryTransactionSelector.selectTransaction<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22855C16C();
  v10 = *(v23 - 8);
  v11 = MEMORY[0x28223BE20](v23);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  v14 = *(v3 + 8);
  (*v3)(v11);
  v16 = *(v7 + 16);
  v22 = a1;
  v16(v9, a1, a2);
  v24 = v13;
  v17 = sub_22855D2FC();
  if (v17 >> 62)
  {
    v19 = v17;
    v20 = sub_22855DB4C();
    v17 = v19;
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_5:

    v25 = v15;
    v26 = v14;
    v18 = sub_2284EF140(v22, a2, a3);
    goto LABEL_6;
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = sub_2284EED74(v17, v15, v14);

LABEL_6:
  (*(v10 + 8))(v13, v23);
  return v18;
}

uint64_t PreferredSummaryTransactionSelector.currentDateProvider.getter()
{
  v1 = *v0;

  return v1;
}

BOOL sub_2284EEB74()
{
  sub_2284EFAC4(0, &qword_280DEE380, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_22855C16C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  HKSharedSummaryTransaction.dateCommitted.getter(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_2284EFB18(v2, &qword_280DEE380, MEMORY[0x277CC9578]);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    sub_22855C0EC();
    v9 = v8;
    (*(v4 + 8))(v6, v3);
    return v9 <= 259200.0;
  }
}

id sub_2284EED74(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8 = v7;
  if (!v7)
  {
    return 0;
  }

  while (1)
  {
    v9 = a1 & 0xC000000000000001;
    if (v8 == 1)
    {
      if (v9)
      {
        return MEMORY[0x22AAB9D20](0, a1);
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return *(a1 + 32);
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      swift_once();
      goto LABEL_13;
    }

    if (v9)
    {
      swift_retain_n();
      v11 = MEMORY[0x22AAB9D20](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v10 = *(a1 + 32);
      swift_retain_n();
      v11 = v10;
    }

    v12 = v11;
    if (v7 == 1)
    {
      break;
    }

    v27 = 1;
    while (1)
    {
      if (v9)
      {
        v28 = MEMORY[0x22AAB9D20](v27, a1);
      }

      else
      {
        if ((v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v27 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v28 = *(a1 + 8 * v27 + 32);
      }

      v3 = v28;
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v32[0] = a2;
      v32[1] = a3;
      if (sub_2284EF470(v12, v28))
      {

        v12 = v3;
        ++v27;
        if (v29 == v7)
        {
          goto LABEL_12;
        }
      }

      else
      {

        ++v27;
        if (v29 == v7)
        {
          goto LABEL_11;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    if ((a1 & 0x8000000000000000) != 0)
    {
      v3 = a1;
    }

    else
    {
      v3 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v30 = sub_22855DB4C();
    if (!v30)
    {
      return 0;
    }

    v7 = v30;
    v8 = sub_22855DB4C();
  }

LABEL_11:
  v3 = v12;
LABEL_12:

  if (qword_280DEEC90 != -1)
  {
    goto LABEL_42;
  }

LABEL_13:
  v13 = sub_22855CABC();
  __swift_project_value_buffer(v13, qword_280DEEC98);
  v14 = v3;
  v15 = sub_22855CA8C();
  v16 = sub_22855D6AC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32[0] = v18;
    *v17 = 136315394;
    sub_2284EFAC4(0, &qword_280DE9278, sub_2284E1B24);
    v19 = v14;
    v20 = sub_22855D1CC();
    v22 = sub_2283F8938(v20, v21, v32);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = [v19 metadata];
    sub_22855D0EC();

    sub_2284EFAC4(0, &qword_280DE96C8, sub_2284AD42C);
    v24 = sub_22855D1BC();
    v26 = sub_2283F8938(v24, v25, v32);

    *(v17 + 14) = v26;
    _os_log_impl(&dword_2283ED000, v15, v16, "[Transaction] Selecting transaction %s. Transaction metadata: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v18, -1, -1);
    MEMORY[0x22AABAD40](v17, -1, -1);
  }

  return v3;
}

id sub_2284EF140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v4 = v3[1];
  v6 = 0;
  if ((sub_22855D5AC() & 1) == 0)
  {
    if (sub_22855D59C() == 1)
    {
      sub_22855D5CC();
      return v23;
    }

    else
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v4;
      MEMORY[0x28223BE20](v7);

      sub_22855D2EC();

      v6 = v23;
      if (qword_280DEEC90 != -1)
      {
        swift_once();
      }

      v8 = sub_22855CABC();
      __swift_project_value_buffer(v8, qword_280DEEC98);
      v9 = v23;
      v10 = sub_22855CA8C();
      v11 = sub_22855D6AC();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v23 = v13;
        *v12 = 136315394;
        sub_2284EFAC4(0, &qword_280DE9278, sub_2284E1B24);
        v14 = v9;
        v15 = sub_22855D1CC();
        v17 = sub_2283F8938(v15, v16, &v23);

        *(v12 + 4) = v17;
        *(v12 + 12) = 2080;
        if (v6)
        {
          v18 = [v14 metadata];
          sub_22855D0EC();
        }

        sub_2284EFAC4(0, &qword_280DE96C8, sub_2284AD42C);
        v19 = sub_22855D1BC();
        v21 = sub_2283F8938(v19, v20, &v23);

        *(v12 + 14) = v21;
        _os_log_impl(&dword_2283ED000, v10, v11, "[Transaction] Selecting transaction %s. Transaction metadata: %s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v13, -1, -1);
        MEMORY[0x22AABAD40](v12, -1, -1);
      }
    }
  }

  return v6;
}

uint64_t sub_2284EF470(void *a1, void *a2)
{
  v57 = a2;
  sub_2284EFAC4(0, &qword_280DEE380, MEMORY[0x277CC9578]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v54 - v7;
  v9 = sub_22855C16C();
  v56 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - v13;
  sub_2284EFAC4(0, &qword_280DECD58, MEMORY[0x277CC9788]);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54 - v16;
  v18 = HKSharedSummaryTransaction.bundleVersion.getter();
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    v55 = v12;
    v22 = v6;
    v23 = a1;
    v24 = HKSharedSummaryTransaction.bundleVersion.getter();
    if (v25)
    {
      v26 = v24;
      v27 = v25;
      if ((v20 != v24 || v21 != v25) && (sub_22855E15C() & 1) == 0)
      {
        v60 = v20;
        v61 = v21;
        v58 = v26;
        v59 = v27;
        v51 = sub_22855C29C();
        (*(*(v51 - 8) + 56))(v17, 1, 1, v51);
        sub_2283F79A4();
        v52 = sub_22855DA6C();
        sub_2284EFB18(v17, &qword_280DECD58, MEMORY[0x277CC9788]);

        LOBYTE(v33) = v52 == -1;
        return v33 & 1;
      }
    }

    a1 = v23;
    v6 = v22;
    v12 = v55;
  }

  v28 = HKSharedSummaryTransaction.hasPairedDeviceData.getter();
  if (v28 == 2 || (v32 = v28, v33 = HKSharedSummaryTransaction.hasPairedDeviceData.getter(), v33 == 2) || ((v33 ^ v32) & 1) == 0)
  {
    HKSharedSummaryTransaction.dateCommitted.getter(v8);
    v29 = v56;
    v30 = *(v56 + 48);
    v31 = v30(v8, 1, v9);
    v54 = a1;
    if (v31 == 1)
    {
      sub_22855C0DC();
      if (v30(v8, 1, v9) != 1)
      {
        sub_2284EFB18(v8, &qword_280DEE380, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      (*(v29 + 32))(v14, v8, v9);
    }

    sub_22855C0CC();
    v35 = v34;
    v36 = v56;
    v37 = *(v56 + 8);
    v37(v14, v9);
    v38 = round(v35 / 259200.0);
    HKSharedSummaryTransaction.dateCommitted.getter(v6);
    if (v30(v6, 1, v9) == 1)
    {
      sub_22855C0DC();
      if (v30(v6, 1, v9) != 1)
      {
        sub_2284EFB18(v6, &qword_280DEE380, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      (*(v36 + 32))(v12, v6, v9);
    }

    sub_22855C0CC();
    v40 = v39;
    v37(v12, v9);
    v41 = round(v40 / 259200.0);
    if (v38 == v41)
    {
      v42 = [v54 sourceDeviceIdentifier];
      v43 = sub_22855D1AC();
      v45 = v44;

      v46 = [v57 sourceDeviceIdentifier];
      v47 = sub_22855D1AC();
      v49 = v48;

      if (v43 == v47 && v45 == v49)
      {

        LOBYTE(v33) = 0;
      }

      else
      {
        v50 = sub_22855E15C();

        LOBYTE(v33) = v50;
      }
    }

    else
    {
      LOBYTE(v33) = v38 < v41;
    }
  }

  return v33 & 1;
}

void sub_2284EFAC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855DA2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2284EFB18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2284EFAC4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id FeedItem.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id FeedItem.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FeedItem();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id FeedItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static InputSignalSet.LookupKey.medicalIDUpdate.getter()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for MedicalIDChangesInputSignal();
  return sub_22855C61C();
}

uint64_t static MedicalIDChangesInputSignal.identityConfiguration.getter()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  return sub_22855C82C();
}

uint64_t sub_2284EFE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, void *, void *, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v16 = a7(a1, a3, a4, a5, a6, v7, ObjectType, a2);
  swift_unknownObjectRelease();

  return v16;
}

void sub_2284EFF20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_medicalIDStore);
    v5 = Strong;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a2;
    aBlock[4] = sub_2284F1238;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22842F0A4;
    aBlock[3] = &block_descriptor_14;
    v7 = _Block_copy(aBlock);
    v8 = v4;
    v9 = v5;

    [v8 fetchMedicalIDDataWithCompletion_];
    _Block_release(v7);
  }
}

uint64_t sub_2284F0044(void *a1, void *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v38 = a4;
  v36 = a1;
  v8 = sub_22855C85C();
  MEMORY[0x28223BE20](v8 - 8);
  sub_2284F1048(0);
  v10 = v9;
  v37 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v35 = v10;
    v13 = a2;
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v14 = sub_22855CABC();
    __swift_project_value_buffer(v14, qword_280DE9DF8);
    v15 = a2;
    v16 = sub_22855CA8C();
    v17 = sub_22855D6AC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v33 = a5;
      v20 = v19;
      v21 = swift_slowAlloc();
      v34 = a3;
      v22 = v21;
      v39 = v21;
      *v18 = 136315394;
      v23 = sub_22855E34C();
      v25 = sub_2283F8938(v23, v24, &v39);

      *(v18 + 4) = v25;
      *(v18 + 12) = 2112;
      v26 = a2;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v27;
      *v20 = v27;
      _os_log_impl(&dword_2283ED000, v16, v17, v33, v18, 0x16u);
      sub_22841DC98(v20);
      MEMORY[0x22AABAD40](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v22);
      v28 = v22;
      a3 = v34;
      MEMORY[0x22AABAD40](v28, -1, -1);
      MEMORY[0x22AABAD40](v18, -1, -1);
    }

    else
    {
    }

    v10 = v35;
  }

  swift_getObjectType();
  sub_22855C84C();
  sub_2283EF310(0, &qword_280DE9408, 0x277CCDDF0);
  sub_2284F10BC();
  v29 = v36;
  sub_22855C9BC();
  v39 = a3;
  sub_2284F0FB4(&qword_280DEAE78, v30, type metadata accessor for MedicalIDChangesInputSignal, &protocol conformance descriptor for MedicalIDChangesInputSignal);
  sub_22855C78C();
  return (*(v37 + 8))(v12, v10);
}

uint64_t MedicalIDChangesInputSignal.description.getter()
{
  v0 = sub_22855C85C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855C84C();
  sub_2284F0FB4(&qword_280DE9E98, 255, MEMORY[0x277D11C40], MEMORY[0x277D11C50]);
  v4 = sub_22855E11C();
  (*(v1 + 8))(v3, v0);
  return v4;
}

id MedicalIDChangesInputSignal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MedicalIDChangesInputSignal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2284F0884(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v37 = a8;
  v38 = a3;
  v34 = a5;
  v35 = a4;
  v33 = a2;
  v36 = a1;
  ObjectType = swift_getObjectType();
  v32 = sub_22855D81C();
  v9 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22855D7BC();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22855CFEC();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_protectedState;
  sub_2284F125C(0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *&a6[v14] = v15;
  v31 = OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_observerQueue;
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_22855CFDC();
  v41 = MEMORY[0x277D84F90];
  sub_2284F0FB4(&unk_280DED140, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_2284F12BC(0);
  sub_2284F0FB4(&qword_280DED240, 255, sub_2284F12BC, MEMORY[0x277D83970]);
  v16 = v33;
  v17 = v34;
  sub_22855DA9C();
  (*(v9 + 104))(v11, *MEMORY[0x277D85260], v32);
  v18 = v31;
  v19 = v35;
  *&a6[v18] = sub_22855D84C();
  v20 = &a6[OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_context];
  v21 = v37;
  *v20 = v36;
  *(v20 + 1) = v21;
  v22 = &a6[OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_observer];
  v23 = v38;
  *v22 = v16;
  *(v22 + 1) = v23;
  *&a6[OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_healthStore] = v19;
  if (v17)
  {
    swift_unknownObjectRetain();
    v24 = v19;
    v25 = v17;
  }

  else
  {
    v26 = objc_allocWithZone(MEMORY[0x277CCD5E8]);
    swift_unknownObjectRetain();
    v25 = [v26 initWithHealthStore_];
  }

  *&a6[OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_medicalIDStore] = v25;
  v27 = *&a6[v18];
  sub_22855C4AC();
  swift_allocObject();
  v28 = v17;
  v29 = v27;
  *&a6[OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_observerToken] = sub_22855C48C();
  v40.receiver = a6;
  v40.super_class = ObjectType;
  return objc_msgSendSuper2(&v40, sel_init);
}

id sub_2284F0C40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, Class a6, uint64_t a7, uint64_t a8)
{
  v15 = objc_allocWithZone(a6);

  return sub_2284F0884(a1, a2, a3, a4, a5, v15, a7, a8);
}

void _s14HealthPlatform27MedicalIDChangesInputSignalC16beginObservation4from14configurationsy0A13Orchestration31SecureCodingOptionalValueAnchorVySo16_HKMedicalIDDataCAkG0lM6ObjectAAyHCg_GSg_SayAG21IdentityConfigurationVGtF_0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_22855C49C();
  if (qword_280DEEBE8 != -1)
  {
    swift_once();
  }

  v3 = sub_22855CABC();
  __swift_project_value_buffer(v3, qword_280DEEBF0);
  v4 = sub_22855CA8C();
  v5 = sub_22855D6AC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17[0] = v7;
    *v6 = 136315138;
    v8 = sub_22855E34C();
    v10 = sub_2283F8938(v8, v9, v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2283ED000, v4, v5, "[%s] Beginning Observation", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AABAD40](v7, -1, -1);
    MEMORY[0x22AABAD40](v6, -1, -1);
  }

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = ObjectType;

  sub_22855C46C();

  v13 = *&v1[OBJC_IVAR____TtC14HealthPlatform27MedicalIDChangesInputSignal_medicalIDStore];
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = ObjectType;
  v17[4] = sub_2284F1214;
  v17[5] = v14;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22842F0A4;
  v17[3] = &block_descriptor_21;
  v15 = _Block_copy(v17);
  v16 = v1;

  [v13 fetchMedicalIDDataWithCompletion_];
  _Block_release(v15);
}

uint64_t sub_2284F0FB4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2284F1048(uint64_t a1)
{
  if (!qword_280DE9E38)
  {
    sub_2283EF310(255, &qword_280DE9408, 0x277CCDDF0);
    sub_2284F10BC();
    v1 = sub_22855C9CC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9E38);
    }
  }
}

unint64_t sub_2284F10BC()
{
  result = qword_280DE9410;
  if (!qword_280DE9410)
  {
    sub_2283EF310(255, &qword_280DE9408, 0x277CCDDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE9410);
  }

  return result;
}

uint64_t sub_2284F1150(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_2284F11AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_2284F125C(uint64_t a1)
{
  if (!qword_280DE9138)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9138);
    }
  }
}

void sub_2284F12BC(uint64_t a1)
{
  if (!qword_280DED250)
  {
    sub_22855D7BC();
    v1 = sub_22855D47C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DED250);
    }
  }
}

uint64_t static FeedItemPredicate.itemWithIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  sub_2284F13B0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560580;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v5 = sub_22845FFC8(inited);
  swift_setDeallocating();
  sub_2284F1618(inited + 32);
  return v5;
}

void sub_2284F13B0()
{
  if (!qword_280DEE7A0)
  {
    v0 = sub_22855E12C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEE7A0);
    }
  }
}

uint64_t _s14HealthPlatform17FeedItemPredicateO2eeoiySbAC_ACtFZ_0(void *a1, void *a2, uint64_t a3, char a4, void *a5, void *a6, void *a7, char a8)
{
  if (!a4)
  {
    if (a8)
    {
      return 0;
    }

    v12 = a6;
    if ((sub_22844230C(a1, a5) & 1) == 0)
    {
      return 0;
    }

    if (a2 == 1)
    {
      if (v12 == 1)
      {
        return v12;
      }

      return 0;
    }

    if (v12 == 1)
    {
      return 0;
    }

    if (a2)
    {
      if (!v12)
      {
        return 0;
      }

LABEL_33:
      sub_2284185F4();
      v18 = v12;
      v19 = sub_22855D9AC();
      sub_228451F7C(v12);
      return (v19 & 1) != 0;
    }

    return !v12;
  }

  if (a4 == 1)
  {
    if (a8 != 1)
    {
      return 0;
    }

    if (a1 != a5 || a2 != a6)
    {
      v8 = a3;
      v9 = a7;
      v10 = sub_22855E15C();
      a3 = v8;
      a7 = v9;
      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }

    if (a3 == 1)
    {
      return a7 == 1;
    }

    if (a7 != 1)
    {
      if (a3)
      {
        if (!a7)
        {
          return 0;
        }

        v12 = a7;
        goto LABEL_33;
      }

      if (!a7)
      {
        return 1;
      }
    }

    return 0;
  }

  if (a8 != 2)
  {
    return 0;
  }

  if (a1 != 1)
  {
    if (a5 == 1)
    {
      v13 = 1;
    }

    else
    {
      if (!a1)
      {
        if (a5)
        {
          return 0;
        }

        sub_2284506A4(0);
        return 1;
      }

      if (a5)
      {
        v15 = a7;
        sub_2284185F4();
        sub_2284506A4(a5);
        v17 = sub_22855D9AC();
        sub_228451F14(a5, a6, v15, 2);
        return (v17 & 1) != 0;
      }

      v13 = 0;
    }

    sub_2284506A4(v13);
    return 0;
  }

  if (a5 != 1)
  {
    return 0;
  }

  v12 = 1;
  sub_2284506A4(1);
  return v12;
}

uint64_t get_enum_tag_for_layout_string_14HealthPlatform13SourceProfileOSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2284F169C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2284F16E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t (*MockHealthPlatformOrchestrationContext.feedItemStorageHandler.getter())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2284F5F48(0, &qword_27D8402D0, sub_2284F18B4, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  v6 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__feedItemStorageHandler;
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_22855C94C();
  (*(v3 + 8))(v5, v2);
  *(swift_allocObject() + 16) = v8;
  return sub_2284F1B30;
}

unint64_t sub_2284F18B4()
{
  result = qword_27D8402D8;
  if (!qword_27D8402D8)
  {
    sub_22842BFBC(255, &qword_27D8402E0, &protocol descriptor for FeedItemStorage, 1);
    sub_22842BFBC(255, &qword_280DE9E30, MEMORY[0x277D11CB8], 0);
    sub_2283EF310(255, &qword_280DED1E0, 0x277CCAC30);
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_27D8402D8);
  }

  return result;
}

void *sub_2284F1968@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for MockFeedItemStorage();
  result = swift_allocObject();
  result[2] = sub_22851D830;
  result[3] = 0;
  result[4] = sub_22851D830;
  result[5] = 0;
  result[6] = sub_22851D830;
  result[7] = 0;
  result[8] = sub_22851CC04;
  result[9] = 0;
  a1[3] = v2;
  a1[4] = &protocol witness table for MockFeedItemStorage;
  *a1 = result;
  return result;
}

uint64_t sub_2284F1A10(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2284F73FC;
  *(v5 + 24) = v4;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D8402D0, sub_2284F18B4, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t MockHealthPlatformOrchestrationContext.feedItemStorageHandler.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D8402D0, sub_2284F18B4, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

void (*MockHealthPlatformOrchestrationContext.feedItemStorageHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D8402D0, sub_2284F18B4, MEMORY[0x277D11C80]);
  v3[9] = sub_22855C93C();
  v3[10] = v4;
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v3[7] = sub_2284F73FC;
  v3[8] = v7;

  return sub_2284F1D54;
}

uint64_t MockHealthPlatformOrchestrationContext.feedItemStorage(for:bundleIdentifier:scope:)(void (*a1)(void, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2284F5F48(0, &qword_27D8402D0, sub_2284F18B4, MEMORY[0x277D11C80]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v18[-1] - v12;
  v14 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__feedItemStorageHandler;
  swift_beginAccess();
  (*(v11 + 16))(v13, v5 + v14, v10);
  sub_22855C94C();
  (*(v11 + 8))(v13, v10);
  v15 = v18[0];
  v18[0] = a1;
  v18[1] = a2;
  v19 = a5;
  v15(v18, &v19);
}

uint64_t (*MockHealthPlatformOrchestrationContext.anchorStorageHandler.getter())(uint64_t a1, uint64_t a2)
{
  sub_2284F5F48(0, &qword_27D8402F0, sub_2284F2094, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  v6 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__anchorStorageHandler;
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_22855C94C();
  (*(v3 + 8))(v5, v2);
  *(swift_allocObject() + 16) = v8;
  return sub_2284F23E4;
}

unint64_t sub_2284F2094()
{
  result = qword_27D8402F8;
  if (!qword_27D8402F8)
  {
    sub_22842BFBC(255, &qword_27D840300, &protocol descriptor for AnchorStorage, 1);
    sub_22842BFBC(255, &qword_27D840308, MEMORY[0x277D11CA8], 0);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_27D8402F8);
  }

  return result;
}

double sub_2284F2128@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X5>, _OWORD *a5@<X8>)
{
  sub_2284F5F48(0, a2, a3, MEMORY[0x277D11C80]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  v13 = *a1;
  v14 = *a4;
  swift_beginAccess();
  (*(v10 + 16))(v12, v13 + v14, v9);
  sub_22855C94C();
  (*(v10 + 8))(v12, v9);
  result = v16[0];
  *a5 = *v16;
  return result;
}

void *sub_2284F2264@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for MockAnchorStorage();
  swift_allocObject();
  result = MockAnchorStorage.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for MockAnchorStorage;
  *a1 = result;
  return result;
}

uint64_t sub_2284F22C4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2284F73B4;
  *(v5 + 24) = v4;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D8402F0, sub_2284F2094, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t MockHealthPlatformOrchestrationContext.anchorStorageHandler.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D8402F0, sub_2284F2094, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

void (*MockHealthPlatformOrchestrationContext.anchorStorageHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D8402F0, sub_2284F2094, MEMORY[0x277D11C80]);
  v3[9] = sub_22855C93C();
  v3[10] = v4;
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v3[7] = sub_2284F73B4;
  v3[8] = v7;

  return sub_2284F261C;
}

uint64_t MockHealthPlatformOrchestrationContext.anchorStorage(for:)(void (*a1)(void), uint64_t a2)
{
  sub_2284F5F48(0, &qword_27D8402F0, sub_2284F2094, MEMORY[0x277D11C80]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__anchorStorageHandler;
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v10, v6);
  sub_22855C94C();
  (*(v7 + 8))(v9, v6);
  v11 = v14[0];
  v14[0] = a1;
  v14[1] = a2;
  v11(v14);
}

uint64_t (*MockHealthPlatformOrchestrationContext.notificationManagerHandler.getter())()
{
  sub_2284F5F48(0, &qword_27D840318, sub_2284F2950, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  v6 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__notificationManagerHandler;
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_22855C94C();
  (*(v3 + 8))(v5, v2);
  *(swift_allocObject() + 16) = v8;
  return sub_2284F2B74;
}

unint64_t sub_2284F2950()
{
  result = qword_27D840320;
  if (!qword_27D840320)
  {
    sub_22842BFBC(255, &qword_27D840328, &protocol descriptor for PluginNotificationManager, 0);
    sub_22842BFBC(255, &qword_280DE9E30, MEMORY[0x277D11CB8], 0);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_27D840320);
  }

  return result;
}

uint64_t sub_2284F29E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MockPluginNotificationManager();
  memset(v3, 0, sizeof(v3));
  v4 = 0;
  swift_allocObject();
  result = MockPluginNotificationManager.init(contentStateManager:)(v3);
  *a1 = result;
  a1[1] = &protocol witness table for MockPluginNotificationManager;
  return result;
}

uint64_t sub_2284F2A54(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2284F736C;
  *(v5 + 24) = v4;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840318, sub_2284F2950, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t MockHealthPlatformOrchestrationContext.notificationManagerHandler.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840318, sub_2284F2950, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

void (*MockHealthPlatformOrchestrationContext.notificationManagerHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840318, sub_2284F2950, MEMORY[0x277D11C80]);
  v3[9] = sub_22855C93C();
  v3[10] = v4;
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v3[7] = sub_2284F736C;
  v3[8] = v7;

  return sub_2284F2D94;
}

uint64_t MockHealthPlatformOrchestrationContext.notificationManager(for:)(void (*a1)(uint64_t *__return_ptr, void), uint64_t a2)
{
  sub_2284F5F48(0, &qword_27D840318, sub_2284F2950, MEMORY[0x277D11C80]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__notificationManagerHandler;
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  sub_22855C94C();
  (*(v8 + 8))(v10, v7);
  v12 = v16[0];
  v16[0] = a1;
  v16[1] = a2;
  v12(&v15, v16);

  if (!v3)
  {
    return v15;
  }

  return result;
}

uint64_t (*MockHealthPlatformOrchestrationContext.sharedSummaryTransactionBuilderHandler.getter())(uint64_t a1, uint64_t a2)
{
  sub_2284F5F48(0, &qword_27D840338, sub_2284F30C8, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  v6 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharedSummaryTransactionBuilderHandler;
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_22855C94C();
  (*(v3 + 8))(v5, v2);
  *(swift_allocObject() + 16) = v8;
  return sub_2284F337C;
}

void sub_2284F3114(void (**a1)(id *))
{
  v1 = *a1;
  v2 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v3 = sub_22855D17C();
  v4 = [v2 initWithDomain:v3 code:-1 userInfo:0];

  v5 = v4;
  v6 = 1;
  v1(&v5);
}

uint64_t sub_2284F31C8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2284F735C;
  *(v5 + 24) = v4;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840338, sub_2284F30C8, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t sub_2284F32E8(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[0] = sub_22841C0FC;
  v8[1] = v6;
  a3(v8);
}

uint64_t MockHealthPlatformOrchestrationContext.sharedSummaryTransactionBuilderHandler.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840338, sub_2284F30C8, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

void (*MockHealthPlatformOrchestrationContext.sharedSummaryTransactionBuilderHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840338, sub_2284F30C8, MEMORY[0x277D11C80]);
  v3[9] = sub_22855C93C();
  v3[10] = v4;
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v3[7] = sub_2284F735C;
  v3[8] = v7;

  return sub_2284F3578;
}

uint64_t MockHealthPlatformOrchestrationContext.sharedSummaryTransactionBuilder(completion:)(uint64_t a1, uint64_t a2)
{
  sub_2284F5F48(0, &qword_27D840338, sub_2284F30C8, MEMORY[0x277D11C80]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-1] - v8;
  v10 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharedSummaryTransactionBuilderHandler;
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v10, v6);
  sub_22855C94C();
  (*(v7 + 8))(v9, v6);
  v11 = v15[0];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v15[0] = sub_22841B3C0;
  v15[1] = v12;
  v11(v15);
}

uint64_t (*MockHealthPlatformOrchestrationContext.sharingSummaryProfileTransactionBuilderHandler.getter())()
{
  sub_2284F5F48(0, &qword_27D840358, sub_2284F38C0, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  v6 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharingSummaryProfileTransactionBuilderHandler;
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_22855C94C();
  (*(v3 + 8))(v5, v2);
  *(swift_allocObject() + 16) = v8;
  return sub_2284F3A8C;
}

unint64_t sub_2284F38C0()
{
  result = qword_27D840360;
  if (!qword_27D840360)
  {
    sub_2284F5F48(255, qword_280DEA1E8, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277D83D88]);
    sub_2283EF310(255, &qword_280DE9280, 0x277CCD940);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_27D840360);
  }

  return result;
}

uint64_t sub_2284F396C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2284F7414;
  *(v5 + 24) = v4;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840358, sub_2284F38C0, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t MockHealthPlatformOrchestrationContext.sharingSummaryProfileTransactionBuilderHandler.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840358, sub_2284F38C0, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t sub_2284F3B70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

void (*MockHealthPlatformOrchestrationContext.sharingSummaryProfileTransactionBuilderHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840358, sub_2284F38C0, MEMORY[0x277D11C80]);
  v3[9] = sub_22855C93C();
  v3[10] = v4;
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v3[7] = sub_2284F7414;
  v3[8] = v7;

  return sub_2284F3CB4;
}

uint64_t MockHealthPlatformOrchestrationContext.sharingSummaryProfileTransactionBuilder(transaction:)(uint64_t a1)
{
  sub_2284F5F48(0, &qword_27D840358, sub_2284F38C0, MEMORY[0x277D11C80]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharingSummaryProfileTransactionBuilderHandler;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_22855C94C();
  (*(v5 + 8))(v7, v4);
  v9 = v12;
  v12 = a1;
  v9(&v11, &v12);

  return v11;
}

uint64_t (*MockHealthPlatformOrchestrationContext.sharableModelStorage.getter())(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2284F5F48(0, &qword_27D840370, sub_2284F3FC4, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  v6 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharableModelStorage;
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_22855C94C();
  (*(v3 + 8))(v5, v2);
  *(swift_allocObject() + 16) = v8;
  return sub_2284F4440;
}

unint64_t sub_2284F3FC4()
{
  result = qword_27D840378;
  if (!qword_27D840378)
  {
    sub_2284F4050(255, &qword_27D840380, sub_2284F40B4, 67108865);
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_27D840378);
  }

  return result;
}

uint64_t sub_2284F4050(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2284F40B4(uint64_t a1)
{
  if (!qword_280DE8EA8)
  {
    sub_22842BFBC(255, &qword_280DEBC60, &protocol descriptor for SharableModelStorage, 1);
    sub_22842BFBC(255, &qword_280DECFE0, MEMORY[0x277D84948], 1);
    v1 = sub_22855E2FC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE8EA8);
    }
  }
}

uint64_t sub_2284F414C(uint64_t a1, void (**a2)(void *))
{
  v2 = *a2;
  v3 = type metadata accessor for MockSharableModelStorage(0);
  swift_allocObject();

  v5[3] = v3;
  v5[4] = &protocol witness table for MockSharableModelStorage;
  v5[0] = MockSharableModelStorage.init()();
  v6 = 0;
  v2(v5);
  sub_228480F94(v5);
}

uint64_t sub_2284F41D8(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;

  a3(v4, v5, sub_22845D52C, v8);
}

uint64_t sub_2284F427C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2284F7364;
  *(v5 + 24) = v4;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840370, sub_2284F3FC4, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t sub_2284F439C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, void *))
{
  v11[0] = a1;
  v11[1] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[0] = sub_2284F7360;
  v10[1] = v8;

  a5(v11, v10);
}

uint64_t MockHealthPlatformOrchestrationContext.sharableModelStorage.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840370, sub_2284F3FC4, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

void (*MockHealthPlatformOrchestrationContext.sharableModelStorage.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840370, sub_2284F3FC4, MEMORY[0x277D11C80]);
  v3[9] = sub_22855C93C();
  v3[10] = v4;
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v3[7] = sub_2284F7364;
  v3[8] = v7;

  return sub_2284F4640;
}

uint64_t MockHealthPlatformOrchestrationContext.sharableModelStorage(for:completion:)(void (*a1)(void, void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2284F5F48(0, &qword_27D840370, sub_2284F3FC4, MEMORY[0x277D11C80]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v19[-1] - v12;
  v14 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharableModelStorage;
  swift_beginAccess();
  (*(v11 + 16))(v13, v4 + v14, v10);
  sub_22855C94C();
  (*(v11 + 8))(v13, v10);
  v15 = v20[0];
  v20[0] = a1;
  v20[1] = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v19[0] = sub_22845D554;
  v19[1] = v16;

  v15(v20, v19);
}

uint64_t (*MockHealthPlatformOrchestrationContext.sharableModelReadableStorage.getter())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2284F5F48(0, &qword_27D840390, sub_2284F49A8, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  v6 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharableModelReadableStorage;
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_22855C94C();
  (*(v3 + 8))(v5, v2);
  *(swift_allocObject() + 16) = v8;
  return sub_2284F1B30;
}

unint64_t sub_2284F49A8()
{
  result = qword_27D840398;
  if (!qword_27D840398)
  {
    sub_22842BFBC(255, &qword_27D8403A0, &protocol descriptor for SharableModelReadableStorage, 1);
    sub_2283EF310(255, &qword_280DE9280, 0x277CCD940);
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_27D840398);
  }

  return result;
}

uint64_t sub_2284F4A40@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MockSharableModelReadableStorage();
  v3 = swift_allocObject();
  type metadata accessor for MockSharableModelStorage(0);
  swift_allocObject();
  result = MockSharableModelStorage.init()();
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &protocol witness table for MockSharableModelReadableStorage;
  *a1 = v3;
  return result;
}

uint64_t sub_2284F4AC4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2284F73FC;
  *(v5 + 24) = v4;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840390, sub_2284F49A8, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t MockHealthPlatformOrchestrationContext.sharableModelReadableStorage.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840390, sub_2284F49A8, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

void (*MockHealthPlatformOrchestrationContext.sharableModelReadableStorage.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840390, sub_2284F49A8, MEMORY[0x277D11C80]);
  v3[9] = sub_22855C93C();
  v3[10] = v4;
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v3[7] = sub_2284F73FC;
  v3[8] = v7;

  return sub_2284F4DF0;
}

uint64_t MockHealthPlatformOrchestrationContext.sharableModelReadableStorage(for:transaction:)(void (*a1)(void, uint64_t *), uint64_t a2, uint64_t a3)
{
  sub_2284F5F48(0, &qword_27D840390, sub_2284F49A8, MEMORY[0x277D11C80]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v16[-1] - v10;
  v12 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharableModelReadableStorage;
  swift_beginAccess();
  (*(v9 + 16))(v11, v3 + v12, v8);
  sub_22855C94C();
  (*(v9 + 8))(v11, v8);
  v13 = v16[0];
  v16[0] = a1;
  v16[1] = a2;
  v17 = a3;
  v13(v16, &v17);
}

void *MockHealthPlatformOrchestrationContext.optionalHealthStore.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_optionalHealthStore);
  v2 = v1;
  return v1;
}

uint64_t MockHealthPlatformOrchestrationContext.__allocating_init(healthStore:primaryProfileHealthStore:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  MockHealthPlatformOrchestrationContext.init(healthStore:primaryProfileHealthStore:)(a1, a2);
  return v4;
}

uint64_t MockHealthPlatformOrchestrationContext.init(healthStore:primaryProfileHealthStore:)(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v3 = MEMORY[0x277D11C80];
  sub_2284F5F48(0, &qword_27D840390, sub_2284F49A8, MEMORY[0x277D11C80]);
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = &v39 - v5;
  sub_2284F5F48(0, &qword_27D840370, sub_2284F3FC4, v3);
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6);
  v47 = &v39 - v7;
  sub_2284F5F48(0, &qword_27D840358, sub_2284F38C0, v3);
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  v44 = &v39 - v9;
  sub_2284F5F48(0, &qword_27D840338, sub_2284F30C8, v3);
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x28223BE20](v10);
  v41 = &v39 - v11;
  sub_2284F5F48(0, &qword_27D840318, sub_2284F2950, v3);
  v40 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  sub_2284F5F48(0, &qword_27D8402F0, sub_2284F2094, v3);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  sub_2284F5F48(0, &qword_27D8402D0, sub_2284F18B4, v3);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v39 - v24;
  v26 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__feedItemStorageHandler;
  v55 = sub_2284F1968;
  v56 = 0;
  sub_2284F18B4();
  sub_22855C92C();
  (*(v23 + 32))(v2 + v26, v25, v22);
  v27 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__anchorStorageHandler;
  v55 = sub_2284F2264;
  v56 = 0;
  sub_2284F2094();
  sub_22855C92C();
  (*(v18 + 32))(v2 + v27, v20, v17);
  v28 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__notificationManagerHandler;
  v55 = sub_2284F29E4;
  v56 = 0;
  sub_2284F2950();
  sub_22855C92C();
  (*(v13 + 32))(v2 + v28, v15, v40);
  v29 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharedSummaryTransactionBuilderHandler;
  v55 = sub_2284F3114;
  v56 = 0;
  sub_2284F30C8(0);
  v30 = v41;
  sub_22855C92C();
  (*(v42 + 32))(v2 + v29, v30, v43);
  v31 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharingSummaryProfileTransactionBuilderHandler;
  v55 = sub_22840E02C;
  v56 = 0;
  sub_2284F38C0();
  v32 = v44;
  sub_22855C92C();
  (*(v45 + 32))(v2 + v31, v32, v46);
  v33 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharableModelStorage;
  v55 = sub_2284F414C;
  v56 = 0;
  sub_2284F3FC4();
  v34 = v47;
  sub_22855C92C();
  (*(v48 + 32))(v2 + v33, v34, v49);
  v35 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharableModelReadableStorage;
  v55 = sub_2284F4A40;
  v56 = 0;
  sub_2284F49A8();
  v36 = v50;
  sub_22855C92C();
  (*(v51 + 32))(v2 + v35, v36, v52);
  sub_22855CAAC();
  v37 = v54;
  *(v2 + OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_optionalHealthStore) = v53;
  *(v2 + OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_primaryProfileHealthStore) = v37;
  return v2;
}

uint64_t MockHealthPlatformOrchestrationContext.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_logger;
  swift_beginAccess();
  v4 = sub_22855CABC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t MockHealthPlatformOrchestrationContext.logger.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_logger;
  swift_beginAccess();
  v4 = sub_22855CABC();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_2284F58A0()
{
  if (*v0)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_2284F58D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_22855E15C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22855E15C();

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

uint64_t sub_2284F59BC(uint64_t a1)
{
  v2 = sub_2284F5BFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284F59F8(uint64_t a1)
{
  v2 = sub_2284F5BFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MockHealthPlatformOrchestrationContext.Description.encode(to:)(void *a1)
{
  sub_2284F5FAC(0, &qword_27D8403B0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284F5BFC();
  sub_22855E31C();
  v9[15] = 0;
  sub_22855E0BC();
  if (!v1)
  {
    type metadata accessor for MockHealthPlatformOrchestrationContext.Description(0);
    v9[14] = 1;
    sub_22855C1DC();
    sub_2284F6010(&qword_27D83FE50, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_22855E07C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2284F5BFC()
{
  result = qword_27D8403B8;
  if (!qword_27D8403B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8403B8);
  }

  return result;
}

uint64_t MockHealthPlatformOrchestrationContext.Description.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_2284F5F48(0, &qword_280DECD68, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  sub_2284F5FAC(0, &qword_27D8403C0, MEMORY[0x277D844C8]);
  v17 = *(v7 - 8);
  v18 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for MockHealthPlatformOrchestrationContext.Description(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284F5BFC();
  sub_22855E30C();
  if (!v2)
  {
    v15 = v10;
    v13 = v17;
    v20 = 0;
    *v12 = sub_22855E02C();
    sub_22855C1DC();
    v19 = 1;
    sub_2284F6010(&qword_27D83FE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_22855DFEC();
    (*(v13 + 8))(v9, v18);
    sub_2284F6058(v6, v12 + *(v15 + 20));
    sub_2284F60EC(v12, v16);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void sub_2284F5F48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2284F5FAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2284F5BFC();
    v7 = a3(a1, &type metadata for MockHealthPlatformOrchestrationContext.Description.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2284F6010(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2284F6058(uint64_t a1, uint64_t a2)
{
  sub_2284F5F48(0, &qword_280DECD68, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2284F60EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MockHealthPlatformOrchestrationContext.Description(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MockHealthPlatformOrchestrationContext.contextDescription.getter@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_optionalHealthStore);
  if (v3 && (v4 = [v3 profileIdentifier]) != 0)
  {
    v5 = v4;
    v6 = [v4 type];
    v7 = *(type metadata accessor for MockHealthPlatformOrchestrationContext.Description(0) + 20);
    v8 = [v5 identifier];
    sub_22855C1BC();

    v9 = sub_22855C1DC();
    result = (*(*(v9 - 8) + 56))(&a1[v7], 0, 1, v9);
  }

  else
  {
    v11 = *(type metadata accessor for MockHealthPlatformOrchestrationContext.Description(0) + 20);
    v12 = sub_22855C1DC();
    result = (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
    v6 = 0;
  }

  *a1 = v6;
  return result;
}

uint64_t MockHealthPlatformOrchestrationContext.deinit()
{
  v1 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__feedItemStorageHandler;
  v2 = MEMORY[0x277D11C80];
  sub_2284F5F48(0, &qword_27D8402D0, sub_2284F18B4, MEMORY[0x277D11C80]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__anchorStorageHandler;
  sub_2284F5F48(0, &qword_27D8402F0, sub_2284F2094, v2);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__notificationManagerHandler;
  sub_2284F5F48(0, &qword_27D840318, sub_2284F2950, v2);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharedSummaryTransactionBuilderHandler;
  sub_2284F5F48(0, &qword_27D840338, sub_2284F30C8, v2);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharingSummaryProfileTransactionBuilderHandler;
  sub_2284F5F48(0, &qword_27D840358, sub_2284F38C0, v2);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharableModelStorage;
  sub_2284F5F48(0, &qword_27D840370, sub_2284F3FC4, v2);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharableModelReadableStorage;
  sub_2284F5F48(0, &qword_27D840390, sub_2284F49A8, v2);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);

  v16 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_logger;
  v17 = sub_22855CABC();
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  return v0;
}

uint64_t MockHealthPlatformOrchestrationContext.__deallocating_deinit()
{
  MockHealthPlatformOrchestrationContext.deinit();

  return swift_deallocClassInstance();
}

void *sub_2284F66A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_optionalHealthStore);
  v2 = v1;
  return v1;
}

uint64_t sub_2284F66E8(void (*a1)(void), uint64_t a2)
{
  sub_2284F5F48(0, &qword_27D8402F0, sub_2284F2094, MEMORY[0x277D11C80]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-1] - v8;
  v10 = *v2;
  v11 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__anchorStorageHandler;
  swift_beginAccess();
  (*(v7 + 16))(v9, v10 + v11, v6);
  sub_22855C94C();
  (*(v7 + 8))(v9, v6);
  v12 = v15[0];
  v15[0] = a1;
  v15[1] = a2;
  v12(v15);
}

uint64_t sub_2284F6878@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_logger;
  swift_beginAccess();
  v4 = sub_22855CABC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t _s14HealthPlatform04MockaB20OrchestrationContextC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_optionalHealthStore);
  if (v3)
  {
    v4 = [v3 profileIdentifier];
    v5 = *(a2 + OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_optionalHealthStore);
    if (!v5)
    {
      if (!v4)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v5 = *(a2 + OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_optionalHealthStore);
    if (!v5)
    {
      goto LABEL_15;
    }

    v4 = 0;
  }

  v6 = [v5 profileIdentifier];
  v7 = v6;
  if (!v4)
  {
    if (v6)
    {
      v8 = 0;
      goto LABEL_14;
    }

LABEL_15:
    v8 = 1;
    return v8 & 1;
  }

  if (!v6)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  sub_2283EF310(0, &qword_280DEE7B0, 0x277CCD7C8);
  v8 = sub_22855D9AC();

LABEL_11:
  v7 = v4;
LABEL_14:

  return v8 & 1;
}

uint64_t sub_2284F6A80(uint64_t a1)
{
  result = sub_2284F6010(&qword_27D8403D8, type metadata accessor for MockHealthPlatformOrchestrationContext, &protocol conformance descriptor for MockHealthPlatformOrchestrationContext);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2284F6AF8(uint64_t a1)
{
  result = sub_2284F6010(&qword_27D8403E0, type metadata accessor for MockHealthPlatformOrchestrationContext, &protocol conformance descriptor for MockHealthPlatformOrchestrationContext);
  *(a1 + 8) = result;
  return result;
}

void sub_2284F6BE8(uint64_t a1)
{
  sub_2284F5F48(319, &qword_27D8402D0, sub_2284F18B4, MEMORY[0x277D11C80]);
  if (v1 <= 0x3F)
  {
    sub_2284F5F48(319, &qword_27D8402F0, sub_2284F2094, MEMORY[0x277D11C80]);
    if (v2 <= 0x3F)
    {
      sub_2284F5F48(319, &qword_27D840318, sub_2284F2950, MEMORY[0x277D11C80]);
      if (v3 <= 0x3F)
      {
        sub_2284F5F48(319, &qword_27D840338, sub_2284F30C8, MEMORY[0x277D11C80]);
        if (v4 <= 0x3F)
        {
          sub_2284F5F48(319, &qword_27D840358, sub_2284F38C0, MEMORY[0x277D11C80]);
          if (v5 <= 0x3F)
          {
            sub_2284F5F48(319, &qword_27D840370, sub_2284F3FC4, MEMORY[0x277D11C80]);
            if (v6 <= 0x3F)
            {
              sub_2284F5F48(319, &qword_27D840390, sub_2284F49A8, MEMORY[0x277D11C80]);
              if (v7 <= 0x3F)
              {
                sub_22855CABC();
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2284F6FD4(uint64_t a1)
{
  sub_2284F5F48(319, &qword_280DECD68, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_2284F7094()
{
  result = qword_27D840418;
  if (!qword_27D840418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840418);
  }

  return result;
}

unint64_t sub_2284F70EC()
{
  result = qword_27D840420;
  if (!qword_27D840420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840420);
  }

  return result;
}

unint64_t sub_2284F7144()
{
  result = qword_27D840428;
  if (!qword_27D840428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840428);
  }

  return result;
}

uint64_t sub_2284F7198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[1] = a2;
  v4 = *(v3 + 16);
  v6[0] = a1;
  v7 = a3;
  return v4(v6, &v7);
}

uint64_t sub_2284F71D8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_2284F7218(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v4[1] = *a1;
  return v2(sub_22841C06C, v4);
}

void *sub_2284F7268(uint64_t a1, uint64_t a2)
{
  v7[1] = a2;
  v4 = *(v2 + 16);
  v7[0] = a1;
  result = v4(&v6, v7);
  if (!v3)
  {
    return v6;
  }

  return result;
}

uint64_t sub_2284F72B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_2284F72EC(uint64_t a1, uint64_t a2)
{
  v5[1] = a2;
  v3 = *(v2 + 16);
  v5[0] = a1;
  return v3(v5);
}

id static FeedSection.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t Publisher.signposted(dso:log:name:signpostID:metadata:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10)
{
  v29 = a7;
  v28 = a5;
  v26 = a3;
  v27 = a4;
  sub_2284F9810(0, &qword_280DED490, MEMORY[0x277D85AD8], MEMORY[0x277D83D88]);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v26 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v11, a9);
  sub_2284F7658(a6, v20);
  v24 = a2;

  return Publishers.Signpost.init(_:dso:log:name:signpostID:metadata:)(v22, a1, v24, v26, v27, v28, v20, v29, x8_0, a8, a9, a10);
}

uint64_t sub_2284F7658(uint64_t a1, uint64_t a2)
{
  sub_2284F9810(0, &qword_280DED490, MEMORY[0x277D85AD8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Publishers.Signpost.init(_:dso:log:name:signpostID:metadata:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v41 = a7;
  v40 = a6;
  v38 = a4;
  v39 = a5;
  v37 = a2;
  v44 = a10;
  v45 = a8;
  sub_2284F9810(0, &qword_280DED490, MEMORY[0x277D85AD8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v36 - v16;
  v18 = sub_22855CA5C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a11 - 8);
  v23 = *(v22 + 16);
  v43 = a1;
  v23(a9, a1, a11);
  v42 = a11;
  v25 = type metadata accessor for Publishers.Signpost(0, a11, a12, v24);
  v26 = v38;
  *(a9 + v25[9]) = v37;
  v27 = v25[10];
  v37 = a3;
  *(a9 + v27) = a3;
  v28 = a9 + v25[11];
  v29 = v39;
  *v28 = v26;
  *(v28 + 8) = v29;
  *(v28 + 16) = v40;
  v30 = v41;
  sub_2284F7658(v41, v17);
  v31 = *(v19 + 48);
  if (v31(v17, 1, v18) == 1)
  {
    v32 = v37;
    sub_22855CA4C();
    sub_2284F79E8(v30);
    (*(v22 + 8))(v43, v42);
    if (v31(v17, 1, v18) != 1)
    {
      sub_2284F79E8(v17);
    }
  }

  else
  {
    sub_2284F79E8(v30);
    (*(v22 + 8))(v43, v42);
    (*(v19 + 32))(v21, v17, v18);
  }

  result = (*(v19 + 32))(a9 + v25[12], v21, v18);
  v34 = (a9 + v25[13]);
  v35 = v44;
  *v34 = v45;
  v34[1] = v35;
  return result;
}

uint64_t sub_2284F79E8(uint64_t a1)
{
  sub_2284F9810(0, &qword_280DED490, MEMORY[0x277D85AD8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Publishers.Signpost.signpostID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_22855CA5C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Publishers.Signpost.metadata.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));

  return v2;
}

uint64_t Publishers.Signpost.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = sub_22855CA5C();
  v10 = *(v32 - 8);
  v11 = MEMORY[0x28223BE20](v32);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 24);
  v33 = *(a2 + 16);
  v34 = v17;
  v35[0] = v33;
  v35[1] = a3;
  v35[2] = v17;
  v35[3] = a4;
  _s8SignpostV5InnerCMa(0, v35);
  (*(v14 + 16))(v16, a1, a3);
  v18 = *(v5 + *(a2 + 36));
  v19 = *(v5 + *(a2 + 40));
  v20 = *(a2 + 48);
  v21 = v5 + *(a2 + 44);
  v22 = *(v21 + 8);
  v30 = *v21;
  v31 = v18;
  v23 = *(v21 + 16);
  (*(v10 + 16))(v13, v5 + v20, v32);
  v24 = (v5 + *(a2 + 52));
  v25 = *v24;
  v26 = v24[1];
  swift_allocObject();
  v35[0] = sub_2284F7E8C(v16, v31, v19, v30, v22, v23, v13, v25, v26);
  v27 = v19;

  swift_getWitnessTable();
  sub_22855CF6C();
}

uint64_t *sub_2284F7DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a6;
  swift_allocObject();
  return sub_2284F7E8C(a1, a2, a3, a4, a5, v11, a7, a8, a9);
}

uint64_t *sub_2284F7E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *v9;
  v18 = *(*v9 + 160);
  sub_2284F9874(0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v9 + v18) = v19;
  v20 = v9 + *(*v9 + 168);
  *(v20 + 32) = 0;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 40) = 2;
  (*(*(*(v17 + 88) - 8) + 32))(v9 + *(*v9 + 112), a1);
  *(v9 + *(*v9 + 120)) = a2;
  *(v9 + *(*v9 + 128)) = a3;
  v21 = v9 + *(*v9 + 136);
  *v21 = a4;
  *(v21 + 8) = a5;
  *(v21 + 16) = a6;
  v22 = *(*v9 + 144);
  v23 = sub_22855CA5C();
  (*(*(v23 - 8) + 32))(v9 + v22, a7, v23);
  v24 = (v9 + *(*v9 + 152));
  *v24 = a8;
  v24[1] = a9;
  return v9;
}

uint64_t sub_2284F8074()
{
  v1 = sub_22855E2AC();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284F9810(0, &qword_27D83F748, MEMORY[0x277D84C20], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v10 = v0;
  v7 = sub_22855E29C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_228455A50(v3);

  return sub_22855E2DC();
}

void sub_2284F8204(void *a1@<X8>)
{
  a1[3] = MEMORY[0x277D837D0];
  *a1 = 0x74736F706E676953;
  a1[1] = 0xE800000000000000;
}

uint64_t sub_2284F822C(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + *(*v1 + 160));
  os_unfair_lock_lock(v4 + 4);
  v5 = *(*v1 + 168);
  swift_beginAccess();
  sub_228439384(v1 + v5, &v22);
  if (v25 == 2 && (v6 = vorrq_s8(v23, v24), !(*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v22)))
  {
    sub_2284393E0(&v22);
    sub_2283F9B10(a1, &v22);
    v25 = 0;
    swift_beginAccess();
    sub_228439238(&v22, v1 + v5);
    swift_endAccess();
    os_unfair_lock_unlock(v4 + 4);
    v21 = sub_22855D93C();
    v8 = *v1;
    v20 = *(v1 + *(*v1 + 120));
    v9 = *(v1 + *(*v1 + 128));
    v10 = v1 + *(*v1 + 136);
    v11 = *v10;
    v12 = *(v10 + 1);
    v13 = *(*v1 + 144);
    v14 = v10[16];
    sub_2284F9810(0, &qword_280DED008, sub_22840A764, MEMORY[0x277D84560]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_228560580;
    v16 = (v1 + *(v8 + 152));
    v17 = *v16;
    v18 = v16[1];
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_22840A7C8();
    *(v15 + 32) = v17;
    *(v15 + 40) = v18;

    v19 = 2;
    sub_22855CA3C(v21, v20, v9, v11, v12, v14, v1 + v13, "%{public}@", 10, v19, v15);

    v24.i64[0] = v3;
    v24.i64[1] = swift_getWitnessTable();
    v22 = v1;

    sub_22855CC5C();
    return __swift_destroy_boxed_opaque_existential_0(&v22);
  }

  else
  {
    sub_2284393E0(&v22);
    os_unfair_lock_unlock(v4 + 4);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    return sub_22855CC7C();
  }
}

void sub_2284F85B0(uint64_t a1)
{
  v43 = a1;
  v45 = *v1;
  v2 = v45;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v36[-v4];
  swift_getAssociatedConformanceWitness();
  v6 = sub_22855CC8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36[-v8];
  v10 = *(v1 + *(v2 + 160));
  os_unfair_lock_lock(v10 + 4);
  v11 = *(*v1 + 168);
  swift_beginAccess();
  sub_228439384(v1 + v11, &v46);
  v12 = v49;
  sub_2284393E0(&v46);
  if (v12)
  {
    os_unfair_lock_unlock(v10 + 4);
  }

  else
  {
    v13 = v5;
    v46 = 1;
    v47 = 0u;
    v48 = 0u;
    v49 = 2;
    swift_beginAccess();
    sub_228439238(&v46, v1 + v11);
    swift_endAccess();
    os_unfair_lock_unlock(v10 + 4);
    (*(v7 + 16))(v9, v43, v6);
    v14 = v44;
    if ((*(v44 + 48))(v9, 1, AssociatedTypeWitness) == 1)
    {
      LODWORD(v44) = sub_22855D92C();
      v15 = *v1;
      v42 = *(v1 + *(*v1 + 120));
      v41 = *(v1 + v15[16]);
      v16 = v1 + v15[17];
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = v15[18];
      v20 = *(v16 + 16);
      sub_2284F9810(0, &qword_280DED008, sub_22840A764, MEMORY[0x277D84560]);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_228560580;
      v22 = (v1 + v15[19]);
      v23 = *v22;
      v24 = v22[1];
      *(v21 + 56) = MEMORY[0x277D837D0];
      *(v21 + 64) = sub_22840A7C8();
      *(v21 + 32) = v23;
      *(v21 + 40) = v24;

      v34 = 2;
      sub_22855CA3C(v44, v42, v41, v17, v18, v20, v1 + v19, "%{public}@", 10, v34, v21);
    }

    else
    {
      v25 = v13;
      (*(v14 + 32))(v13, v9, AssociatedTypeWitness);
      LODWORD(v42) = sub_22855D92C();
      v26 = *v1;
      v41 = *(v1 + *(*v1 + 120));
      v40 = *(v1 + v26[16]);
      v27 = v1 + v26[17];
      v28 = *v27;
      v38 = *(v27 + 8);
      v39 = v28;
      v29 = v26[18];
      v37 = *(v27 + 16);
      sub_2284F9810(0, &qword_280DED008, sub_22840A764, MEMORY[0x277D84560]);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_228560580;
      v31 = sub_22855E1CC();
      v33 = v32;
      *(v30 + 56) = MEMORY[0x277D837D0];
      *(v30 + 64) = sub_22840A7C8();
      *(v30 + 32) = v31;
      *(v30 + 40) = v33;
      v35 = 2;
      sub_22855CA3C(v42, v41, v40, v39, v38, v37, v1 + v29, "error: %{public}@", 17, v35, v30);

      (*(v14 + 8))(v25, AssociatedTypeWitness);
    }

    sub_22855CC4C();
  }
}

void sub_2284F8B94(uint64_t a1)
{
  v2 = *(v1 + *(*v1 + 160));
  os_unfair_lock_lock(v2 + 4);
  v3 = *(*v1 + 168);
  swift_beginAccess();
  sub_228439384(v1 + v3, v4);
  if (v5)
  {
    sub_2284393E0(v4);
    os_unfair_lock_unlock(v2 + 4);
  }

  else
  {
    sub_2283FAB3C(v4, v6);
    os_unfair_lock_unlock(v2 + 4);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_22855CCDC();
    __swift_destroy_boxed_opaque_existential_0(v6);
  }
}

void sub_2284F8C74()
{
  v1 = *(v0 + *(*v0 + 160));
  os_unfair_lock_lock(v1 + 4);
  v2 = *(*v0 + 168);
  swift_beginAccess();
  sub_228439384(v0 + v2, &v4);
  if (v7)
  {
    sub_2284393E0(&v4);
    os_unfair_lock_unlock(v1 + 4);
  }

  else
  {
    sub_2283FAB3C(&v4, v8);
    v4 = 1;
    v5 = 0u;
    v6 = 0u;
    v7 = 2;
    swift_beginAccess();
    sub_228439238(&v4, v0 + v2);
    swift_endAccess();
    os_unfair_lock_unlock(v1 + 4);
    v3 = sub_22855D92C();
    sub_22855CA3C(v3, *(v0 + *(*v0 + 120)), *(v0 + *(*v0 + 128)), *(v0 + *(*v0 + 136)), *(v0 + *(*v0 + 136) + 8), *(v0 + *(*v0 + 136) + 16), v0 + *(*v0 + 144), "cancelled", 9, 2, MEMORY[0x277D84F90]);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_22855CC7C();
    __swift_destroy_boxed_opaque_existential_0(v8);
  }
}

uint64_t sub_2284F8E24()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 112));

  v1 = *(*v0 + 144);
  v2 = sub_22855CA5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_2284393E0(v0 + *(*v0 + 168));
  return v0;
}

uint64_t sub_2284F8F5C()
{
  sub_2284F8E24();

  return swift_deallocClassInstance();
}

unint64_t sub_2284F90D8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_22840367C();
    if (v3 <= 0x3F)
    {
      result = sub_22855CA5C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2284F9190(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_22855CA5C();
  v9 = *(v8 - 8);
  v10 = *(v6 + 64);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v11 + 17;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((*(*(v8 - 8) + 64) + ((v14 + ((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v13 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v7 == v13)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  else
  {
    v25 = ((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v12 & 0x80000000) != 0)
    {
      v27 = *(v9 + 48);

      return v27((v14 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v11);
    }

    else
    {
      v26 = *v25;
      if (*v25 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }
  }
}

void sub_2284F9414(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v26 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_22855CA5C() - 8);
  v11 = *(v8 + 64);
  v12 = *(v10 + 80);
  if (v9 <= *(v10 + 84))
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((*(v10 + 64) + ((v12 + 17 + ((((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v14 >= a3)
  {
    v18 = 0;
    v19 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v10 + 64) + ((v12 + 17 + ((((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a3 - v14 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      if (v9 == v14)
      {
        v22 = *(v26 + 56);

        v22(a1, a2, v9, v7);
      }

      else
      {
        v23 = ((((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v13 & 0x80000000) != 0)
        {
          v25 = *(v10 + 56);

          v25((v12 + 17 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v12, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v24 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v24 = (a2 - 1);
          }

          *v23 = v24;
        }
      }

      return;
    }
  }

  if (((*(v10 + 64) + ((v12 + 17 + ((((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((*(v10 + 64) + ((v12 + 17 + ((((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v14 + a2;
    bzero(a1, v15);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

uint64_t sub_2284F96E4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_22855CA5C();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}