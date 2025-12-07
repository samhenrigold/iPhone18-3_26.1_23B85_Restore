uint64_t sub_2723011F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 + OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_runtimeParams;
  swift_beginAccess();
  v7 = *(v6 + 80);
  if (*(v7 + 16) && (v8 = sub_27220038C(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v11 = sub_272301A2C(v10);

  v20[8] = v11;

  sub_27230249C(v12);

  v13 = *(v11 + 16);
  if (!v13)
  {

    v14 = MEMORY[0x277D84F90];
LABEL_9:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v6 + 80);
    *(v6 + 80) = 0x8000000000000000;
    sub_272300908(v14, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v6 + 80) = v19;
    return swift_endAccess();
  }

  v14 = sub_2722702A8(v13, 0);
  v15 = sub_2722A02C4(v20, v14 + 4, v13, v11);
  v16 = v20[0];

  result = sub_272270484(v16);
  if (v15 == v13)
  {
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_2723013BC(void *a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2722C389C();
  (*(v3 + 16))(v5, v6, v2);
  v7 = a1;
  v8 = sub_27237725C();
  v9 = sub_272377E7C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    v12 = [v7 debugDescription];
    v13 = sub_27237782C();
    v15 = v14;

    v16 = sub_2721FFD04(v13, v15, &v19);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_2721E4000, v8, v9, "VANRDelegateBridge speech results: %s", v10, 0xCu);
    sub_2722039C8(v11);
    MEMORY[0x2743C69C0](v11, -1, -1);
    MEMORY[0x2743C69C0](v10, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2723015D0(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_280882BF8, &qword_2723841A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_2721F065C(&qword_280882C00, &unk_2723841B0);
    v7 = sub_2723783EC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2721F07F4(v9, v5, &qword_280882BF8, &qword_2723841A8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_27220038C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for VANRNameConfiguration(0);
      result = sub_2723019C4(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for VANRNameConfiguration);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2723017B8(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_280882BE8, &qword_272384198);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_2721F065C(&qword_280882BF0, &qword_2723841A0);
    v7 = sub_2723783EC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2721F07F4(v9, v5, &qword_280882BE8, &qword_272384198);
      v11 = *v5;
      v12 = v5[1];
      result = sub_27220038C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for VANRCollectedEnrollment(0);
      result = sub_2723019C4(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for VANRCollectedEnrollment);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2723019C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_272301A2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2743C4F00](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2722AB1B4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_272301AC4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_272301AFC()
{
  v1 = (type metadata accessor for VANRNameConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (((((((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = sub_272376E5C();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = v1[9];
  v8 = sub_272376EBC();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_272301C88()
{
  v2 = *(type metadata accessor for VANRNameConfiguration(0) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_272219D80;

  return sub_2722FA5E8(v9, v10, v11, v4, v5, v0 + v3, v7, v8);
}

uint64_t sub_272301DE4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_272301E2C()
{
  v1 = sub_272376EBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_272301F34()
{
  v2 = *(sub_272376EBC() - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_272211DBC;

  return sub_2722FC560(v8, v9, v10, v4, v5, v6, v0 + v3, v7);
}

unint64_t sub_27230206C()
{
  result = qword_280882BB0;
  if (!qword_280882BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882BB0);
  }

  return result;
}

uint64_t sub_2723020E8(uint64_t a1)
{
  result = type metadata accessor for VARuntimeParameters(319);
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

void sub_2723021BC(uint64_t a1)
{
  sub_2723022B8(319);
  if (v1 <= 0x3F)
  {
    sub_27237834C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2723022B8(uint64_t a1)
{
  if (!qword_280882BC0)
  {
    sub_27237832C();
    v1 = sub_27237801C();
    if (!v2)
    {
      atomic_store(v1, &qword_280882BC0);
    }
  }
}

__n128 sub_272302310(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_272302324(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_27230236C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2723023D0(uint64_t a1)
{
  result = type metadata accessor for VARuntimeParameters(319);
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

uint64_t sub_27230249C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_2722AB1B4(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_27230250C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_272302544(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2721F065C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2723025AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_27230260C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_272302674(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2723026BC()
{
  result = qword_280882BE0;
  if (!qword_280882BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882BE0);
  }

  return result;
}

uint64_t sub_272302710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void *sub_272302780(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = a1;
  result[5] = a2;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      v6 = sub_272377B5C();
      *(v6 + 16) = a2;
      bzero((v6 + 32), 4 * a2);
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    v7 = sub_27220392C(v6, a1);

    v5[2] = v7;
    return v5;
  }

  return result;
}

uint64_t sub_272302824(uint64_t a1)
{
  v4 = *(v1 + 16);
  if (!v4[2])
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = a1;
  if (*(a1 + 16) != *(v4[4] + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = *(v1 + 24);

  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v4;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_11:
  result = sub_272200344(v4);
  v4 = result;
  *(v1 + 16) = result;
  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v3 >= v4[2])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4[v3 + 4] = v2;
  *(v1 + 16) = v4;
  v6 = *(v1 + 24);

  if (__OFADD__(v6, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = v4[2];
  if (v7)
  {
    *(v1 + 24) = (v6 + 1) % v7;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_2723028F8()
{
  v1 = v0[4];
  if (v1 < 0)
  {
LABEL_17:
    __break(1u);
    return;
  }

  if (v1)
  {
    v2 = 0;
    v3 = MEMORY[0x277D84F90];
    while (1)
    {
      v4 = v0[3];
      v5 = __OFADD__(v2, v4);
      v6 = v2 + v4;
      if (v5)
      {
        break;
      }

      v7 = v6 % v1;
      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_15;
      }

      v8 = v0[2];
      if (v7 >= *(v8 + 16))
      {
        goto LABEL_16;
      }

      v9 = *(v8 + 8 * v7 + 32);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_272241E04(0, v3[2] + 1, 1, v3);
      }

      v11 = v3[2];
      v10 = v3[3];
      if (v11 >= v10 >> 1)
      {
        v3 = sub_272241E04((v10 > 1), v11 + 1, 1, v3);
      }

      ++v2;
      v3[2] = v11 + 1;
      v3[v11 + 4] = v9;
      if (v1 == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }
}

void sub_272302A10()
{
  v1 = v0[5];
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = sub_272377B5C();
      *(v2 + 16) = v1;
      bzero((v2 + 32), 4 * v1);
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    v3 = sub_27220392C(v2, v0[4]);

    v0[2] = v3;

    v0[3] = 0;
  }
}

uint64_t sub_272302A9C()
{
  v0 = sub_27237862C();
  MEMORY[0x2743C4AD0](v0);

  MEMORY[0x2743C4AD0](23389, 0xE200000000000000);
  v1 = sub_27237862C();
  MEMORY[0x2743C4AD0](v1);

  MEMORY[0x2743C4AD0](93, 0xE100000000000000);
  return 0x5B323374616F6C46;
}

uint64_t VACircularMatrixBuffer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t VAA2TEncoderV2.__allocating_init(computeUnits:)(char *a1)
{
  v2 = swift_allocObject();
  VAA2TEncoderV2.init(computeUnits:)(a1);
  return v2;
}

uint64_t VAA2TEncoderV2.init(computeUnits:)(char *a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF30]) init];
  sub_2722595A4();
  sub_272377A8C();
  sub_272377A8C();
  if (v11 == v9 && v12 == v10)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_27237865C();

    if (v5)
    {
      v4 = 0;
    }

    else
    {
      sub_272377A8C();
      sub_272377A8C();
      if (v11 == v9 && v12 == v10)
      {
      }

      else
      {
        v6 = sub_27237865C();

        if ((v6 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v4 = 3;
    }
  }

  [v3 setComputeUnits_];
LABEL_12:
  type metadata accessor for at_encoder_rdr_125141826();
  v7 = sub_272290B00(v3);
  if (v2)
  {

    type metadata accessor for VAA2TEncoderV2();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = v7;
  }

  return v1;
}

void (*sub_272302EA8(uint64_t a1))(_BYTE *, uint64_t)
{
  v3 = v1;
  v5 = ((*v1)[18])(v20);
  sub_272256A38(a1, v6);
  if (v2)
  {
    v5(v20, 1);
  }

  else
  {
    v8 = (v5)(v20, 0);
    v9 = ((*v3)[16])(v8);
    if (v9)
    {
      v10 = v9;
      type metadata accessor for at_encoder_rdr_125141826Input();
      v11 = v10;
      sub_272276D68(v11);
      v12 = (*(*v3[2] + 136))();
      v14 = (*(*v12 + 88))(v12);

      v15 = ((*v3)[15])(v20);
      sub_272256CF4(v14, v16);
      v17 = v15(v20, 0);
      v18 = ((*v3)[13])(v17);
      if (v18)
      {
        v5 = v18;
      }

      else
      {
        v5 = 0x800000027238AEC0;
        sub_2722032B4();
        swift_allocError();
        *v19 = 0xD00000000000001ELL;
        v19[1] = 0x800000027238AEC0;
        swift_willThrow();
      }
    }

    else
    {
      v5 = 0x800000027238FA50;
      sub_2722032B4();
      swift_allocError();
      *v13 = 0xD00000000000001DLL;
      v13[1] = 0x800000027238FA50;
      swift_willThrow();
    }
  }

  return v5;
}

uint64_t VAA2TEncoderV2.deinit()
{

  return v0;
}

uint64_t VAA2TEncoderV2.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_272303294@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_delegate;
  swift_beginAccess();
  return sub_272277044(v1 + v3, a1);
}

uint64_t sub_2723032EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_delegate;
  swift_beginAccess();
  sub_2722E48E4(a1, v1 + v3);
  return swift_endAccess();
}

double sub_2723033AC()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_2723033F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_embeddings;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2723034AC()
{
  v1 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_processedAudioSamples;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2723034F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_processedAudioSamples;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2723035A0()
{
  v1 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_newSamples;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2723035E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_newSamples;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t VAA2AAudioEnrollerV2.__allocating_init(encoder:keywordIdentifier:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  VAA2AAudioEnrollerV2.init(encoder:keywordIdentifier:delegate:)(a1, a2, a3, a4);
  return v8;
}

void *VAA2AAudioEnrollerV2.init(encoder:keywordIdentifier:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_272376E5C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D84F90];
  v4[5] = MEMORY[0x277D84F90];
  v4[6] = v13;
  v14 = v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_delegate;
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_embeddings) = v13;
  *(v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_numEmbeddingsPerEnrollment) = 48;
  *(v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_maxSamplesPerEnrollment) = 31920;
  *(v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_processedAudioSamples) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_newSamples) = 0;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  sub_272376E4C();
  (*(v10 + 32))(v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_id, v12, v9);
  v15 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_delegate;
  swift_beginAccess();
  sub_2722E48E4(a4, v4 + v15);
  swift_endAccess();
  return v4;
}

uint64_t (*sub_272303894(objc_class *a1))(__int128 *, void)
{
  v3 = v1;
  v5 = type metadata accessor for VASingleEnrollmentData(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VARuntimeParameters(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v1 + 288))(v9) || (v17 = v1[2], VARuntimeParameters.init()(v11), (*(*v17 + 96))(v11), result = sub_2723049EC(v11, type metadata accessor for VARuntimeParameters), !v2))
  {
    v12 = (*(*v3 + 208))(&v40);
    v13.super.super.isa = a1;
    VAfp16AVAudioBufferToFP32Array(buffer:floatBuffer:)(v13, v14);
    if (v15)
    {
      return v12(&v40, 1);
    }

    else
    {
      v18 = v12(&v40, 0);
      v19 = *(*v3 + 192);
      v20 = v19(v18);
      v21 = (*(*v3 + 184))(&v40);
      sub_272207944(v20);
      v22 = v21(&v40, 0);
      v23 = *(v19(v22) + 16);

      result = (*(*v3 + 304))(&v40);
      if (__OFADD__(*v24, v23))
      {
        __break(1u);
      }

      else
      {
        *v24 += v23;
        v25 = result(&v40, 0);
        v26 = *(*v3 + 168);
        v27 = *(v26(v25) + 16);

        if (v27 >= 0x7CB1)
        {
          sub_2721F065C(&qword_280882040, &unk_27237E470);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_27237AF80;
          *(v29 + 56) = MEMORY[0x277D837D0];
          *(v29 + 32) = 0xD00000000000002ALL;
          *(v29 + 40) = 0x800000027238FAA0;
          sub_27237872C();

          v31 = v26(v30);
          v32 = sub_272222744(0x7CB0uLL, v31);
          v28 = (*(*v3 + 176))(v32);
        }

        v33 = *(v26(v28) + 16);

        if (v33 == 31920)
        {
          (*(*v3 + 216))(&v40, result);
          if (*(&v41 + 1))
          {
            sub_27221629C(&v40, v37);
            sub_27227B688(&v40);
            v34 = v38;
            v35 = v39;
            sub_27220300C(v37, v38);
            (*(*v3 + 344))();
            (*(v35 + 8))(v7, v34, v35);
            sub_2723049EC(v7, type metadata accessor for VASingleEnrollmentData);
            sub_2722039C8(v37);
          }

          else
          {
            sub_27227B688(&v40);
          }

          v42 = 0;
          v40 = 0u;
          v41 = 0u;
          return (*(*v3 + 224))(&v40);
        }
      }
    }
  }

  return result;
}

uint64_t sub_272303DD8()
{
  v1 = v0;
  type metadata accessor for VAStrideConfiguration();
  v2 = static VAStrideConfiguration.forFlexibleA2Av2()();
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v2) + 0xB8))();
  v27 = v2;
  v5 = (*((*v3 & *v2) + 0xD0))();
  v6 = (*(*v1 + 264))();
  v28 = *(*v1 + 168);
  v7 = *(v28() + 16);

  v29 = v7 - v4;
  if (__OFSUB__(v7, v4))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    return result;
  }

  if (!v5)
  {
    goto LABEL_52;
  }

  v9 = v29 >= v6;
  if (v5 > 0)
  {
    v9 = v6 >= v29;
  }

  if (!v9)
  {
    while (1)
    {
      v12 = __OFADD__(v6, v5) ? ((v6 + v5) >> 63) ^ 0x8000000000000000 : v6 + v5;
      v13 = v6 + v4;
      if (__OFADD__(v6, v4))
      {
        break;
      }

      if (v13 < v6)
      {
        goto LABEL_46;
      }

      result = (v28)(result);
      if (v6 < 0)
      {
        goto LABEL_47;
      }

      v14 = result;
      v15 = *(result + 16);
      if (v15 < v6 || v15 < v13)
      {
        goto LABEL_48;
      }

      if (v15 != v4)
      {
        v22 = MEMORY[0x277D84F90];
        if (v13 != v6)
        {
          if (v4 < 1)
          {
            v23 = 4 * v4;
          }

          else
          {
            sub_2721F065C(&qword_280881848, &unk_27237C250);
            v23 = 4 * v4;
            v22 = swift_allocObject();
            v24 = j__malloc_size(v22);
            v25 = v24 - 32;
            if (v24 < 32)
            {
              v25 = v24 - 29;
            }

            v22[2] = v4;
            v22[3] = 2 * (v25 >> 2);
          }

          memcpy(v22 + 4, (v14 + 4 * v6 + 32), v23);
        }

        v14 = v22;
      }

      if (*(v14 + 16) == v4)
      {
        v10 = v1[2];
        v17 = v31;
        (*(*v10 + 80))(v14);
        v31 = v17;
        if (v17)
        {

LABEL_43:

          return v10;
        }

        type metadata accessor for VAFeatureExtractingEncoderOutput();
        result = swift_dynamicCastClass();
        if (!result)
        {

          swift_unknownObjectRelease();
          sub_2722032B4();
          swift_allocError();
          *v26 = 0xD00000000000001ELL;
          v26[1] = 0x800000027238B8F0;
          swift_willThrow();
          goto LABEL_43;
        }

        if (*(result + 16) == 1)
        {
          v18 = *(result + 40);
          if (!v18)
          {
            goto LABEL_53;
          }

          if (!*(v18 + 16))
          {
            goto LABEL_50;
          }

          v19 = *(*v1 + 248);

          v19(v20);
        }

        else
        {
        }

        result = (*(*v1 + 280))(v30);
        if (__OFADD__(*v21, v5))
        {
          goto LABEL_49;
        }

        *v21 += v5;
        (result)(v30, 0);
        result = swift_unknownObjectRelease();
      }

      else
      {
      }

      v11 = v29 >= v12;
      if (v5 > 0)
      {
        v11 = v12 >= v29;
      }

      v6 = v12;
      if (v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_6:
  v10 = (*(*v1 + 240))(result);

  return v10;
}

uint64_t sub_272304250@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 168);
  v4 = *(v3() + 16);

  v6 = *((v3)(v5) + 16);

  return sub_2722AFC10(v4, 31920, v6 >> 4 > 0x7CA, a1);
}

int *sub_2723042E8@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_272376E5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(v5 + 16))(v7, v1 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_id, v4);
  v9 = (*(*v1 + 328))(v8);
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v11 = v9;
  v12 = v1[3];
  v13 = v1[4];
  v14 = *(*v1 + 168);

  v16 = v14(v15);
  v20 = 1;
  v17 = sub_2722AFA60();
  v18 = sub_2722AFA60();
  return sub_2722AFA68(v7, v11, v12, v13, v16, v17, v18, &v20, a1);
}

char *VAA2AAudioEnrollerV2.deinit()
{

  v1 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_id;
  v2 = sub_272376E5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_27227B688(v0 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_delegate);

  return v0;
}

uint64_t VAA2AAudioEnrollerV2.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_id;
  v2 = sub_272376E5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_27227B688(v0 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV2_delegate);

  return swift_deallocClassInstance();
}

uint64_t VAA2AAudioEnrollerFactoryV2.__allocating_init(encoder:delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0;
  *(v4 + 24) = 0u;
  *(v4 + 16) = a1;
  swift_beginAccess();
  sub_2722E48E4(a2, v4 + 24);
  swift_endAccess();
  return v4;
}

uint64_t VAA2AAudioEnrollerFactoryV2.init(encoder:delegate:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 16) = a1;
  swift_beginAccess();
  sub_2722E48E4(a2, v2 + 24);
  swift_endAccess();
  return v2;
}

void *sub_272304858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = (*(*v3 + 96))();
  v8 = *(*v3 + 120);

  v8(v13, v9);
  v10 = type metadata accessor for VAA2AAudioEnrollerV2(0);
  v11 = swift_allocObject();
  result = VAA2AAudioEnrollerV2.init(encoder:keywordIdentifier:delegate:)(v7, a1, a2, v13);
  a3[3] = v10;
  a3[4] = &protocol witness table for VAA2AAudioEnrollerV2;
  *a3 = v11;
  return result;
}

uint64_t VAA2AAudioEnrollerFactoryV2.deinit()
{

  sub_27227B688(v0 + 24);
  return v0;
}

uint64_t VAA2AAudioEnrollerFactoryV2.__deallocating_deinit()
{

  sub_27227B688(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2723049EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for VAA2AAudioEnrollerV2(uint64_t a1)
{
  result = qword_28088F100;
  if (!qword_28088F100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_272304AA0(uint64_t a1)
{
  result = sub_272376E5C();
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

float sub_272304CF0(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return INFINITY;
  }

  v6 = a2;
  v7 = a1;
  v8 = sub_272377B5C();
  *(v8 + 16) = v2;
  memset_pattern16((v8 + 32), &unk_272384350, 4 * v2);
  v32 = v3;
  v9 = sub_27220392C(v8, v3);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_41;
  }

  if (!v9[2])
  {
    goto LABEL_42;
  }

LABEL_9:
  v8 = v9[4];
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v9[4] = v8;
  if (v11)
  {
    if (*(v8 + 16))
    {
      goto LABEL_11;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  while (1)
  {
    v8 = sub_2722002AC(v8);
    v9[4] = v8;
    if (!*(v8 + 16))
    {
      goto LABEL_44;
    }

LABEL_11:
    *(v8 + 32) = 0;
    v12 = v32;
    if (v2 == 1)
    {
      break;
    }

    v30 = v7 + 32;
    v29 = (v6 + 40);
    v15 = 1;
    v31 = v2;
    while (v15 != v2)
    {
      if (v12 != 1)
      {
        v2 = (v9 + 5);
        v6 = *&v30[8 * v15];
        v16 = 4 * (v15 - 1);
        v17 = v29;
        v18 = 1;
        while (1)
        {
          v7 = *v17;
          v8 = *(v6 + 16);
          __C = NAN;

          vDSP_svesq((v6 + 32), 1, &__C, v8);
          v19 = __C;
          v20 = *(v7 + 2);
          __C = NAN;
          vDSP_svesq(v7 + 8, 1, &__C, v20);
          v21 = *(v6 + 16);
          if (v21 != *(v7 + 2))
          {
            break;
          }

          v22 = __C;
          __C = NAN;
          vDSP_dotpr((v6 + 32), 1, v7 + 8, 1, &__C, v21);
          v23 = __C;

          if (v18 >= v9[2])
          {
            goto LABEL_36;
          }

          v7 = *v2;
          if (v15 > *(*v2 + 2))
          {
            goto LABEL_37;
          }

          v24 = *(v2 - 1);
          if (v15 >= *(v24 + 16))
          {
            goto LABEL_38;
          }

          v25 = *&v7[v16 + 32];
          v26 = v24 + 32;
          if (*(v26 + 4 * v15) < v25)
          {
            v25 = *(v26 + 4 * v15);
          }

          if (*(v26 + v16) >= v25)
          {
            v27 = v25;
          }

          else
          {
            v27 = *(v26 + v16);
          }

          v28 = swift_isUniquelyReferenced_nonNull_native();
          *v2 = v7;
          if ((v28 & 1) == 0)
          {
            v7 = sub_2722002AC(v7);
            *v2 = v7;
          }

          v12 = v32;
          if (v15 >= *(v7 + 2))
          {
            goto LABEL_39;
          }

          ++v18;
          *&v7[4 * v15 + 32] = (1.0 - ((v23 / sqrtf(v19)) / sqrtf(v22))) + v27;
          ++v2;
          ++v17;
          if (v32 == v18)
          {
            goto LABEL_17;
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
        break;
      }

LABEL_17:
      ++v15;
      v2 = v31;
      if (v15 == v31)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_41:
    v9 = sub_272200344(v9);
    if (v9[2])
    {
      goto LABEL_9;
    }

LABEL_42:
    __break(1u);
  }

LABEL_12:
  if (v12 > v9[2])
  {
    goto LABEL_45;
  }

  v13 = v9[v12 + 3];
  if (v2 > *(v13 + 16))
  {
    goto LABEL_46;
  }

  v5 = *(v13 + 4 * v2 + 28);

  return v5;
}

char *sub_27230505C(char *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_57;
  }

  v3 = *(result + 2);
  v4 = a2 + 32;
  v35 = v3;
  v36 = *(*(a2 + 32) + 16);
  if (v3)
  {
    v5 = result + 32;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = *v5;
      v8 = *(*v5 + 16);
      v9 = *(v6 + 2);
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
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

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v10 <= *(v6 + 3) >> 1)
      {
        if (!*(v7 + 16))
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v11 = v9 + v8;
        }

        else
        {
          v11 = v9;
        }

        result = sub_2721FF8B4(result, v11, 1, v6);
        v6 = result;
        if (!*(v7 + 16))
        {
LABEL_4:

          if (v8)
          {
            goto LABEL_52;
          }

          goto LABEL_5;
        }
      }

      v12 = *(v6 + 2);
      if ((*(v6 + 3) >> 1) - v12 < v8)
      {
        goto LABEL_54;
      }

      memcpy(&v6[4 * v12 + 32], (v7 + 32), 4 * v8);

      if (v8)
      {
        v13 = *(v6 + 2);
        v14 = __OFADD__(v13, v8);
        v15 = v13 + v8;
        if (v14)
        {
          goto LABEL_56;
        }

        *(v6 + 2) = v15;
      }

LABEL_5:
      v5 += 8;
      if (!--v3)
      {
        goto LABEL_20;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_20:
  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  do
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v19 = *(v4 + 8 * v16);
    v20 = *(v19 + 16);
    v21 = *(v17 + 2);
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      goto LABEL_49;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v22 <= *(v17 + 3) >> 1)
    {
      if (*(v19 + 16))
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v21 <= v22)
      {
        v23 = v21 + v20;
      }

      else
      {
        v23 = v21;
      }

      result = sub_2721FF8B4(result, v23, 1, v17);
      v17 = result;
      if (*(v19 + 16))
      {
LABEL_33:
        v24 = *(v17 + 2);
        if ((*(v17 + 3) >> 1) - v24 < v20)
        {
          goto LABEL_53;
        }

        memcpy(&v17[4 * v24 + 32], (v19 + 32), 4 * v20);

        if (v20)
        {
          v25 = *(v17 + 2);
          v14 = __OFADD__(v25, v20);
          v26 = v25 + v20;
          if (v14)
          {
            goto LABEL_55;
          }

          *(v17 + 2) = v26;
        }

        goto LABEL_22;
      }
    }

    if (v20)
    {
      goto LABEL_50;
    }

LABEL_22:
    ++v16;
  }

  while (v18 != v2);
  v27 = v2 * v36;
  if ((v2 * v36) >> 64 != (v2 * v36) >> 63)
  {
    goto LABEL_58;
  }

  if (v27 < 0)
  {
    goto LABEL_59;
  }

  if (v27)
  {
    v28 = sub_272377B5C();
    *(v28 + 16) = v27;
    bzero((v28 + 32), 4 * v27);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  vDSP_mtrans(v17 + 8, 1, (v28 + 32), 1, v36, v2);

  v29 = v2 * v35;
  if ((v2 * v35) >> 64 == (v2 * v35) >> 63)
  {
    if (v29 < 0)
    {
      goto LABEL_61;
    }

    if (v29)
    {
      v30 = sub_272377B5C();
      *(v30 + 16) = v29;
      bzero((v30 + 32), 4 * v29);
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }

    vDSP_mmul(v6 + 8, 1, (v28 + 32), 1, (v30 + 32), 1, v35, v2, v36);

    v31 = MEMORY[0x28223BE20](*(v30 + 16));
    v32 = sub_272305630(v31, sub_272305844);

    v33 = MEMORY[0x28223BE20](*(v32 + 16));
    v34 = sub_272305630(v33, sub_272305860);

    return v34;
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_272305464(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = sub_27230505C(a1, a2);
  v5 = sub_272377B5C();
  v6 = v5;
  *(v5 + 16) = v3 + 1;
  if (v3)
  {
    memset_pattern16((v5 + 36), &unk_272384350, 4 * v3);
  }

  *(v6 + 32) = 0;
  result = sub_272377B5C();
  *(result + 16) = v3 + 1;
  *(result + 32) = 0;
  if (v3)
  {
    v8 = result;
    bzero((result + 36), 4 * v3);
    result = v8;
  }

  if (v2)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = result;
      if (!*(result + 16))
      {
        break;
      }

      result = v6;
      *(v11 + 32) = 2139095040;
      if (v3)
      {
        if ((v10 * v3) >> 64 != (v10 * v3) >> 63)
        {
          goto LABEL_28;
        }

        if (v3 >= *(v6 + 16))
        {
          goto LABEL_29;
        }

        v12 = *(v4 + 2);
        v13 = (v6 + 36);
        v14 = (v11 + 36);
        v15 = INFINITY;
        v16 = 1;
        v17 = v3;
        v18 = v9;
        while (v18 < v12)
        {
          if (v16 >= *(v11 + 16))
          {
            goto LABEL_26;
          }

          v19 = *v13;
          if (*v13 >= *(v13 - 1))
          {
            v19 = *(v13 - 1);
          }

          if (v15 >= v19)
          {
            v15 = v19;
          }

          v15 = *&v4[4 * v18 + 32] + v15;
          *v14++ = v15;
          ++v18;
          ++v13;
          ++v16;
          if (!--v17)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
        break;
      }

LABEL_7:
      ++v10;
      v9 += v3;
      v6 = v11;
      if (v10 == v2)
      {

        v6 = v11;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_23:

    if (v3 < *(v6 + 16))
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_272305630(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_272377B5C();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = v5 + 32;
  v8 = 0;
  v7[0] = v5 + 32;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_272305730(void *a1, void *a2, uint64_t *a3, float a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  if (*(*a3 + 16) != a1[1])
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v7 = a4;
  if (!*a1)
  {
    goto LABEL_5;
  }

  result = MEMORY[0x2743C6BF0](v4 + 32, 1, &v7, *a1, 1);
  *a2 = *(v4 + 16);
  return result;
}

void *sub_2723057D8(void *result, void *a2, uint64_t *a3)
{
  v3 = *a3;
  if (*(*a3 + 16) == result[1])
  {
    if (*result)
    {
      result = MEMORY[0x2743C6BE0](v3 + 32, 1, *result, 1);
      *a2 = *(v3 + 16);
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

uint64_t sub_272305880@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_delegate;
  swift_beginAccess();
  return sub_272277044(v1 + v3, a1);
}

uint64_t sub_2723058D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_delegate;
  swift_beginAccess();
  sub_2722E48E4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_272305998()
{
  v1 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_newSamples;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2723059DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_newSamples;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t VAA2AAudioEnrollerV3.__allocating_init(encoder:keywordIdentifier:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  VAA2AAudioEnrollerV3.init(encoder:keywordIdentifier:delegate:)(a1, a2, a3, a4);
  return v8;
}

void *VAA2AAudioEnrollerV3.init(encoder:keywordIdentifier:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_272376E5C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D84F90];
  v4[5] = MEMORY[0x277D84F90];
  v4[6] = v13;
  v14 = v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_delegate;
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_numEmbeddingsPerEnrollment) = 48;
  *(v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_maxSamplesPerEnrollment) = 31920;
  *(v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_newSamples) = 0;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  sub_272376E4C();
  (*(v10 + 32))(v4 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_id, v12, v9);
  v15 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_delegate;
  swift_beginAccess();
  sub_2722E48E4(a4, v4 + v15);
  swift_endAccess();
  return v4;
}

void sub_272305C74(void *a1)
{
  v4 = type metadata accessor for VASingleEnrollmentData(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_27237728C();
  v61 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VARuntimeParameters(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VAKeywordSpotterBase();
  v13 = [a1 format];
  static VAKeywordSpotterBase.checkSupportedAudioFormat(_:)(v13);

  if (!v2)
  {
    v14 = v9;
    v15 = v1;
    if (!(*(*v1 + 224))())
    {
      v21 = v1[2];
      VARuntimeParameters.init()(v12);
      (*(*v21 + 96))(v12);
      sub_2723049EC(v12, type metadata accessor for VARuntimeParameters);
    }

    v16 = v7;
    v17 = (*(*v15 + 192))(&v58);
    v18.super.super.isa = a1;
    VAfp16AVAudioBufferToFP32Array(buffer:floatBuffer:)(v18, v19);
    if (v20)
    {
      v17(&v58, 1);
    }

    else
    {
      v22 = v14;
      v53 = v16;
      v54 = v6;
      v23 = (v17)(&v58, 0);
      v24 = *(*v15 + 176);
      v25 = v24(v23);
      v26 = (*(*v15 + 168))(&v58);
      sub_272207944(v25);
      v27 = v26(&v58, 0);
      v28 = *(v24(v27) + 16);

      v29 = (*(*v15 + 240))(&v58);
      if (__OFADD__(*v30, v28))
      {
        __break(1u);
      }

      else
      {
        *v30 += v28;
        v31 = v29(&v58, 0);
        v32 = *(*v15 + 152);
        v33 = *((v32)(v31) + 16);

        v35 = v54;
        v36 = v61;
        if (v33 >= 0x7CB1)
        {
          v37 = sub_2722C389C();
          (*(v36 + 16))(v22, v37, v53);
          swift_retain_n();
          v38 = sub_27237725C();
          v39 = sub_272377E8C();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 134218240;
            v41 = v38;
            v42 = *(v32() + 16);

            *(v40 + 4) = v42;

            *(v40 + 12) = 2048;
            *(v40 + 14) = 31920;

            _os_log_impl(&dword_2721E4000, v41, v39, "Enrollment is running long, need to reduce %ld samples > %ld max", v40, 0x16u);
            v43 = v40;
            v36 = v61;
            MEMORY[0x2743C69C0](v43, -1, -1);

            v35 = v54;
          }

          else
          {
          }

          v44 = (*(v36 + 8))(v22, v53);
          v45 = (v32)(v44);
          if (*(v45 + 16) >= 0x7CB1uLL)
          {
            sub_272241D34(v45, v45 + 32, 0, 0xF961uLL);
            v47 = v46;

            v45 = v47;
          }

          v34 = (*(*v15 + 160))(v45);
        }

        v48 = *((v32)(v34) + 16);

        if (v48 == 31920)
        {
          (*(*v15 + 200))(&v58, v49);
          if (*(&v59 + 1))
          {
            sub_27221629C(&v58, v55);
            sub_27227B688(&v58);
            v50 = v56;
            v51 = v57;
            sub_27220300C(v55, v56);
            (*(*v15 + 280))();
            (*(v51 + 8))(v35, v50, v51);
            sub_2723049EC(v35, type metadata accessor for VASingleEnrollmentData);
            sub_2722039C8(v55);
          }

          else
          {
            sub_27227B688(&v58);
          }

          v60 = 0;
          v58 = 0u;
          v59 = 0u;
          (*(*v15 + 208))(&v58);
        }
      }
    }
  }
}

void *sub_272306340()
{
  type metadata accessor for VAStrideConfiguration();
  v1 = static VAStrideConfiguration.forFlexibleA2Av3()();
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x118))();
  v4 = (*((*v2 & *v1) + 0x130))();
  type metadata accessor for VAFeatureExtractingEncoderOutput();
  v5 = VAFeatureExtractingEncoderOutput.__allocating_init(hasNewFeature:featureExtractionBuffer:vadBuffer:encoderOutput:)(0, 0, 0, 0);
  v31 = v0;
  v29 = *(*v0 + 152);
  v6 = *(v29() + 16);

  v28 = (v6 - v3);
  if (__OFSUB__(v6, v3))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v27 = v1;
  v30 = v6 + 1 - v3;
  if (__OFSUB__(v6 + 1, v3))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (!v4)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v8 = v30 >= 0;
  if (v4 > 0)
  {
    v8 = v30 < 1;
  }

  if (!v8)
  {
    v12 = 0;
    while (1)
    {
      v1 = (__OFADD__(v12, v4) ? ((v12 + v4) >> 63) ^ 0x8000000000000000 : v12 + v4);
      v13 = (v12 + v3);
      if (__OFADD__(v12, v3))
      {
        break;
      }

      if (v13 < v12)
      {
        goto LABEL_46;
      }

      result = (v29)(result);
      if (v12 < 0)
      {
        goto LABEL_47;
      }

      v14 = result;
      v15 = result[2];
      if (v15 < v12 || v15 < v13)
      {
        goto LABEL_48;
      }

      if (v15 != v3)
      {
        v19 = MEMORY[0x277D84F90];
        if (v13 != v12)
        {
          if (v3 < 1)
          {
            v20 = 4 * v3;
          }

          else
          {
            sub_2721F065C(&qword_280881848, &unk_27237C250);
            v20 = 4 * v3;
            v19 = swift_allocObject();
            v21 = j__malloc_size(v19);
            v22 = v21 - 32;
            if (v21 < 32)
            {
              v22 = v21 - 29;
            }

            v19[2] = v3;
            v19[3] = 2 * (v22 >> 2);
          }

          memcpy(v19 + 4, (v14 + 4 * v12 + 32), v20);
        }

        v14 = v19;
      }

      if (*(v14 + 16) != v3)
      {

        sub_2722032B4();
        swift_allocError();
        *v26 = 0xD00000000000002DLL;
        v26[1] = 0x800000027238FB60;
        swift_willThrow();

        v10 = v27;
        goto LABEL_43;
      }

      v17 = (*(**(v31 + 16) + 312))(v14, v12 == v28);
      if (v32)
      {

        v10 = v27;
        goto LABEL_43;
      }

      v9 = v17;

      v18 = v30 >= v1;
      if (v4 > 0)
      {
        v18 = v1 >= v30;
      }

      v12 = v1;
      if (v18)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v9 = v5;
LABEL_8:
  v10 = v27;
  if ((*(v9 + 16) & 1) == 0)
  {
    v23 = 0x800000027238FB90;
    sub_2722032B4();
    swift_allocError();
    v25 = 0xD000000000000019;
    goto LABEL_42;
  }

  v11 = *(v9 + 40);
  if (!v11)
  {
    v23 = 0x800000027238FBB0;
    sub_272306E74();
    swift_allocError();
    v25 = 0xD00000000000002FLL;
LABEL_42:
    *v24 = v25;
    v24[1] = v23;
    swift_willThrow();

LABEL_43:

    return v1;
  }

  if (*(v11 + 16))
  {
    v1 = *(v11 + 32);

    return v1;
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_2723067CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 152);
  v4 = *(v3() + 16);

  v6 = *((v3)(v5) + 16);

  return sub_2722AFC10(v4, 31920, v6 >> 4 > 0x7CA, a1);
}

int *sub_272306864@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_272376E5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(v5 + 16))(v7, v1 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_id, v4);
  v9 = (*(*v1 + 264))(v8);
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v11 = v9;
  v12 = v1[3];
  v13 = v1[4];
  v14 = *(*v1 + 152);

  v16 = v14(v15);
  v20 = 1;
  v17 = sub_2722AFA60();
  v18 = sub_2722AFA60();
  return sub_2722AFA68(v7, v11, v12, v13, v16, v17, v18, &v20, a1);
}

char *VAA2AAudioEnrollerV3.deinit()
{

  v1 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_id;
  v2 = sub_272376E5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_27227B688(v0 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_delegate);
  return v0;
}

uint64_t VAA2AAudioEnrollerV3.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_id;
  v2 = sub_272376E5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_27227B688(v0 + OBJC_IVAR____TtC12VoiceActions20VAA2AAudioEnrollerV3_delegate);

  return swift_deallocClassInstance();
}

__n128 VAA2AAudioEnrollerFactoryV3.__allocating_init(encoder:delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(v4 + 24) = *a2;
  *(v4 + 40) = v6;
  *(v4 + 56) = *(a2 + 32);
  return result;
}

uint64_t VAA2AAudioEnrollerFactoryV3.init(encoder:delegate:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v3 = *(a2 + 16);
  *(v2 + 24) = *a2;
  *(v2 + 40) = v3;
  *(v2 + 56) = *(a2 + 32);
  return v2;
}

void *sub_272306D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 16);
  sub_272277044(v3 + 24, v11);
  v8 = type metadata accessor for VAA2AAudioEnrollerV3(0);
  v9 = swift_allocObject();

  result = VAA2AAudioEnrollerV3.init(encoder:keywordIdentifier:delegate:)(v7, a1, a2, v11);
  a3[3] = v8;
  a3[4] = &protocol witness table for VAA2AAudioEnrollerV3;
  *a3 = v9;
  return result;
}

uint64_t VAA2AAudioEnrollerFactoryV3.deinit()
{

  sub_27227B688(v0 + 24);
  return v0;
}

uint64_t VAA2AAudioEnrollerFactoryV3.__deallocating_deinit()
{

  sub_27227B688(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_272306E74()
{
  result = qword_280882C08;
  if (!qword_280882C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882C08);
  }

  return result;
}

uint64_t type metadata accessor for VAA2AAudioEnrollerV3(uint64_t a1)
{
  result = qword_28088F110;
  if (!qword_28088F110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_272306F1C(uint64_t a1)
{
  result = sub_272376E5C();
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

uint64_t sub_272307168()
{
  sub_27237874C();
  sub_27237790C();
  return sub_27237878C();
}

uint64_t sub_2723071DC(uint64_t a1)
{
  sub_27237874C();
  sub_27237790C();
  return sub_27237878C();
}

uint64_t sub_272307230@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_27237840C();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_2723072C0@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_27237840C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_272307318(uint64_t a1)
{
  v2 = sub_27230C4B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272307354(uint64_t a1)
{
  v2 = sub_27230C4B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VAA2AEnrollmentMap.__allocating_init(jsonFile:)(void *a1, unint64_t a2)
{
  v4 = swift_allocObject();
  VAA2AEnrollmentMap.init(jsonFile:)(a1, a2);
  return v4;
}

void *VAA2AEnrollmentMap.init(jsonFile:)(void *a1, unint64_t a2)
{
  v4 = v2;
  v4[2] = 0;
  v4[3] = 0;
  v7 = MEMORY[0x277D84F90];
  v4[6] = sub_272216188(MEMORY[0x277D84F90]);
  v4[7] = sub_27230A49C(v7, &qword_280882710, &qword_272384170);
  v8 = sub_27230BA68(a1, a2);
  if (v3)
  {

    type metadata accessor for VAA2AEnrollmentMap();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v8;

    swift_beginAccess();
    v4[4] = v9[4];
    swift_beginAccess();
    v4[5] = v9[5];
    v10 = *(*v9 + 216);

    v12 = v10(v11);
    swift_beginAccess();
    v4[7] = v12;

    v14 = (*(*v9 + 120))(v13);
    v16 = v15;

    swift_beginAccess();
    v4[2] = v14;
    v4[3] = v16;
  }

  return v4;
}

char *sub_2723075C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v105 = v2;

  v5 = sub_272307D7C(v4);

  v6 = sub_272301A2C(v5);

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 0;
    v94 = MEMORY[0x277D84F90];
    v9 = v6 + 56;
    v103 = *(a1 + 16);
    v104 = v6;
    v102 = v6 + 56;
    while (1)
    {
      v10 = sub_2723778AC();
      v12 = v11;
      if (*(v6 + 16))
      {
        v13 = v10;
        sub_27237874C();

        sub_27237790C();
        v14 = sub_27237878C();
        v15 = -1 << *(v6 + 32);
        v16 = v14 & ~v15;
        if ((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          while (1)
          {
            v18 = (*(v6 + 48) + 16 * v16);
            v19 = *v18 == v13 && v18[1] == v12;
            if (v19 || (sub_27237865C() & 1) != 0)
            {
              break;
            }

            v16 = (v16 + 1) & v17;
            if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v108 = v8;

          v20 = *(v105 + 40);
          v23 = *(v20 + 64);
          v22 = v20 + 64;
          v21 = v23;
          v24 = 1 << *(*(v105 + 40) + 32);
          if (v24 < 64)
          {
            v25 = ~(-1 << v24);
          }

          else
          {
            v25 = -1;
          }

          v26 = v25 & v21;
          v27 = (v24 + 63) >> 6;
          v110 = *(v105 + 40);

          v28 = 0;
          if (v26)
          {
            while (1)
            {
              v29 = v28;
LABEL_22:
              v30 = __clz(__rbit64(v26));
              v26 &= v26 - 1;
              v31 = v30 | (v29 << 6);
              v32 = (*(v110 + 48) + 16 * v31);
              v33 = v32[1];
              v34 = *(*(v110 + 56) + 8 * v31);
              v109 = *v32;
              v35 = sub_2723778AC();
              v37 = v36;
              if (v35 == sub_2723778AC() && v37 == v38)
              {
                break;
              }

              v40 = sub_27237865C();

              if (v40)
              {
                goto LABEL_31;
              }

LABEL_28:

              v28 = v29;
              if (!v26)
              {
                goto LABEL_19;
              }
            }

LABEL_31:
            v41 = 0;
            v98 = v34 + 64;
            v42 = 1 << *(v34 + 32);
            if (v42 < 64)
            {
              v43 = ~(-1 << v42);
            }

            else
            {
              v43 = -1;
            }

            v44 = v43 & *(v34 + 64);
            v100 = (v42 + 63) >> 6;
            v107 = v34;
LABEL_35:
            while (v44)
            {
LABEL_40:
              v46 = __clz(__rbit64(v44));
              v44 &= v44 - 1;
              v47 = v46 | (v41 << 6);
              v48 = (*(v107 + 48) + 16 * v47);
              v50 = *v48;
              v49 = v48[1];
              v106 = *(*(v107 + 56) + 8 * v47);
              v51 = *v48 == 0x6F69647561 && v49 == 0xE500000000000000;
              if (!v51 && (sub_27237865C() & 1) == 0)
              {
                v52 = v50 == 1954047348 && v49 == 0xE400000000000000;
                if (!v52 && (sub_27237865C() & 1) == 0)
                {
                  continue;
                }
              }

              v53 = 1 << *(v106 + 32);
              if (v53 < 64)
              {
                v54 = ~(-1 << v53);
              }

              else
              {
                v54 = -1;
              }

              v55 = v54 & *(v106 + 64);
              v95 = (v53 + 63) >> 6;
              v57 = v50 == 1954047348 && v49 == 0xE400000000000000;
              v99 = v57;
              v58 = v106;

              v59 = 0;
              v60 = 0;
              while (2)
              {
                v61 = v106 + 64;
                v62 = v95;
                while (1)
                {
                  while (1)
                  {
                    if (!v55)
                    {
                      while (1)
                      {
                        v63 = v60 + 1;
                        if (__OFADD__(v60, 1))
                        {
                          goto LABEL_97;
                        }

                        if (v63 >= v62)
                        {

                          goto LABEL_35;
                        }

                        v55 = *(v61 + 8 * v63);
                        ++v60;
                        if (v55)
                        {
                          v60 = v63;
                          break;
                        }
                      }
                    }

                    v64 = __clz(__rbit64(v55));
                    v55 &= v55 - 1;
                    v65 = (*(v58 + 56) + ((v60 << 10) | (16 * v64)));
                    v96 = *v65;
                    v97 = v65[1];
                    if (!v99)
                    {
                      break;
                    }

                    if (v59 < a2)
                    {
                      goto LABEL_73;
                    }
                  }

                  v66 = v59;
                  if ((sub_27237865C() & 1) == 0)
                  {
                    break;
                  }

                  v59 = v66;
                  v67 = v66 < a2;
                  v61 = v106 + 64;
                  v62 = v95;
                  v58 = v106;
                  if (v67)
                  {
                    goto LABEL_73;
                  }
                }

                v59 = v66;
LABEL_73:
                v93 = v59 + 1;
                if (__OFADD__(v59, 1))
                {
                  goto LABEL_98;
                }

                swift_bridgeObjectRetain_n();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v94 = sub_2721FFBF8(0, *(v94 + 2) + 1, 1, v94);
                }

                v69 = *(v94 + 2);
                v68 = *(v94 + 3);
                v70 = v69 + 1;
                if (v69 >= v68 >> 1)
                {
                  v81 = sub_2721FFBF8((v68 > 1), v69 + 1, 1, v94);
                  v70 = v69 + 1;
                  v94 = v81;
                }

                *(v94 + 2) = v70;
                v71 = &v94[16 * v69];
                *(v71 + 4) = v96;
                *(v71 + 5) = v97;
                swift_beginAccess();

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v72 = *(v105 + 48);
                *(v105 + 48) = 0x8000000000000000;
                v74 = sub_27220038C(v96, v97);
                v75 = v72[2];
                v76 = (v73 & 1) == 0;
                v77 = v75 + v76;
                if (!__OFADD__(v75, v76))
                {
                  if (v72[3] >= v77)
                  {
                    if (isUniquelyReferenced_nonNull_native)
                    {
                      if ((v73 & 1) == 0)
                      {
                        goto LABEL_87;
                      }
                    }

                    else
                    {
                      v92 = v74;
                      v89 = v73;
                      sub_272215E14();
                      v74 = v92;
                      if ((v89 & 1) == 0)
                      {
                        goto LABEL_87;
                      }
                    }
                  }

                  else
                  {
                    v88 = v73;
                    sub_272215B54(v77, isUniquelyReferenced_nonNull_native);
                    v78 = sub_27220038C(v96, v97);
                    if ((v88 & 1) != (v79 & 1))
                    {
                      goto LABEL_101;
                    }

                    v74 = v78;
                    if ((v88 & 1) == 0)
                    {
LABEL_87:
                      v72[(v74 >> 6) + 8] |= 1 << v74;
                      v82 = (v72[6] + 16 * v74);
                      *v82 = v96;
                      v82[1] = v97;
                      v83 = (v72[7] + 16 * v74);
                      *v83 = v109;
                      v83[1] = v33;
                      v84 = v72[2];
                      v85 = __OFADD__(v84, 1);
                      v86 = v84 + 1;
                      if (v85)
                      {
                        goto LABEL_100;
                      }

                      v72[2] = v86;
                      goto LABEL_89;
                    }
                  }

                  v91 = v74;

                  v80 = (v72[7] + 16 * v91);
                  *v80 = v109;
                  v80[1] = v33;

LABEL_89:
                  *(v105 + 48) = v72;
                  swift_endAccess();
                  v58 = v106;
                  v59 = v93;
                  continue;
                }

                goto LABEL_99;
              }
            }

            while (1)
            {
              v45 = v41 + 1;
              if (__OFADD__(v41, 1))
              {
                break;
              }

              if (v45 >= v100)
              {

                goto LABEL_28;
              }

              v44 = *(v98 + 8 * v45);
              ++v41;
              if (v44)
              {
                v41 = v45;
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_19:
            while (1)
            {
              v29 = v28 + 1;
              if (__OFADD__(v28, 1))
              {
                break;
              }

              if (v29 >= v27)
              {

                v7 = v103;
                v6 = v104;
                v8 = v108;
                v9 = v102;
                goto LABEL_3;
              }

              v26 = *(v22 + 8 * v29);
              ++v28;
              if (v26)
              {
                goto LABEL_22;
              }
            }

            __break(1u);
          }

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
          result = sub_2723786BC();
          __break(1u);
          return result;
        }

LABEL_13:
      }

LABEL_3:
      ++v8;

      if (v8 == v7)
      {
        goto LABEL_94;
      }
    }
  }

  v94 = MEMORY[0x277D84F90];
LABEL_94:

  return v94;
}

uint64_t sub_272307D7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_27220056C(0, v1, 0);
  v2 = v26;
  v25 = a1 + 64;
  result = sub_27237816C();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_2723778AC();
    v13 = *(v26 + 16);
    v12 = *(v26 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_27220056C((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    *(v26 + 16) = v13 + 1;
    v14 = v26 + 16 * v13;
    *(v14 + 32) = result;
    *(v14 + 40) = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_2722CB07C(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_2722CB07C(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_272307FA4(uint64_t a1)
{
  v2 = v1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_12:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7)))));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a1 + 16);

    if (v16 && (v17 = sub_27220038C(v15, v14), (v18 & 1) != 0))
    {
      v19 = *(*(a1 + 56) + 8 * v17);

      swift_beginAccess();
      if (v19)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = v2[4];
        sub_272309F7C(v19, v15, v14, isUniquelyReferenced_nonNull_native, &qword_280882C68, &qword_2723846F8);

        v2[4] = v38;
        goto LABEL_21;
      }
    }

    else
    {
      swift_beginAccess();
    }

    v21 = sub_27220038C(v15, v14);
    v23 = v22;

    if (v23)
    {
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v25 = v2[4];
      if (!v24)
      {
        sub_272309E1C(&qword_280882C68, &qword_2723846F8);
      }

      sub_27223CF60(v21, v25);
      v2[4] = v25;
    }

LABEL_21:
    v26 = swift_endAccess();
    v27 = (*(*v2 + 120))(v26);
    if (!v28)
    {
      goto LABEL_31;
    }

    v29 = sub_27230A598(v27, v28, a1);

    if (*(v29 + 16) && (v30 = sub_27220038C(v15, v14), (v31 & 1) != 0))
    {
      v10 = *(*(v29 + 56) + 8 * v30);

      swift_beginAccess();
      if (v10)
      {
        v11 = swift_isUniquelyReferenced_nonNull_native();
        v37 = v2[5];
        sub_272309F7C(v10, v15, v14, v11, &qword_280882C60, &unk_2723846E8);

        v2[5] = v37;
        goto LABEL_6;
      }
    }

    else
    {

      swift_beginAccess();
    }

    v32 = sub_27220038C(v15, v14);
    v34 = v33;

    if (v34)
    {
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v36 = v2[5];
      if (!v35)
      {
        sub_272309E1C(&qword_280882C60, &unk_2723846E8);
      }

      sub_27223CF60(v32, v36);
      v2[5] = v36;
    }

LABEL_6:
    v7 &= v7 - 1;
    swift_endAccess();
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      v9 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_27230834C(uint64_t a1)
{
  v2 = v1;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);

  swift_beginAccess();
  swift_beginAccess();
  v7 = 0;
  v8 = (v4 + 63) >> 6;
  v51 = v8;
  v52 = v3;
LABEL_6:
  if (v6)
  {
    v9 = v7;
LABEL_11:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = v11[1];
    v57 = *v11;
    v13 = *(v2 + 32);
    v14 = v13 + 64;
    v15 = 1 << *(v13 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v13 + 64);
    v18 = (v15 + 63) >> 6;

    v54 = v13;

    v19 = 0;
    v56 = v12;
    while (v17)
    {
LABEL_22:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v22 = (*(v54 + 48) + ((v19 << 10) | (16 * v21)));
      v24 = *v22;
      v23 = v22[1];
      v25 = *v22 == v57 && v23 == v12;
      if (v25 || (sub_27237865C() & 1) != 0)
      {
        swift_beginAccess();

        v26 = sub_27220038C(v24, v23);
        if (v27)
        {
          v28 = v26;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v30 = *(v2 + 32);
          *(v2 + 32) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_272309E1C(&qword_280882C68, &qword_2723846F8);
          }

          sub_27223CF60(v28, v30);
          *(v2 + 32) = v30;
        }

        swift_endAccess();

        v12 = v56;
      }
    }

    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_51;
      }

      if (v20 >= v18)
      {
        break;
      }

      v17 = *(v14 + 8 * v20);
      ++v19;
      if (v17)
      {
        v19 = v20;
        goto LABEL_22;
      }
    }

    v31 = *(v2 + 40);
    v34 = *(v31 + 64);
    v33 = v31 + 64;
    v32 = v34;
    v35 = 1 << *(*(v2 + 40) + 32);
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v37 = v36 & v32;
    v38 = (v35 + 63) >> 6;
    v55 = *(v2 + 40);

    v39 = 0;
    while (v37)
    {
LABEL_41:
      v41 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v42 = (*(v55 + 48) + ((v39 << 10) | (16 * v41)));
      v44 = *v42;
      v43 = v42[1];
      v45 = *v42 == v57 && v43 == v12;
      if (v45 || (sub_27237865C() & 1) != 0)
      {
        swift_beginAccess();

        v46 = sub_27220038C(v44, v43);
        if (v47)
        {
          v48 = v46;
          v49 = swift_isUniquelyReferenced_nonNull_native();
          v50 = *(v2 + 40);
          *(v2 + 40) = 0x8000000000000000;
          if (!v49)
          {
            sub_272309E1C(&qword_280882C60, &unk_2723846E8);
          }

          sub_27223CF60(v48, v50);
          *(v2 + 40) = v50;
        }

        swift_endAccess();

        v12 = v56;
      }
    }

    while (1)
    {
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v40 >= v38)
      {

        v7 = v9;
        v8 = v51;
        v3 = v52;
        goto LABEL_6;
      }

      v37 = *(v33 + 8 * v40);
      ++v39;
      if (v37)
      {
        v39 = v40;
        goto LABEL_41;
      }
    }

LABEL_51:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v9 >= v8)
      {

        return;
      }

      v6 = *(v3 + 8 * v9);
      ++v7;
      if (v6)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
}

uint64_t sub_272308770()
{
  sub_2722032B4();
  swift_allocError();
  *v0 = 0xD000000000000021;
  v0[1] = 0x800000027238FC80;
  return swift_willThrow();
}

uint64_t sub_2723087D4(uint64_t a1, uint64_t a2)
{
  v108[2] = a2;
  v108[1] = a1;
  v2 = sub_272376D5C();
  v119 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v118 = v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v108 - v6;
  MEMORY[0x28223BE20](v5);
  v141 = v108 - v8;
  v9 = sub_272376AFC();
  MEMORY[0x28223BE20](v9);
  sub_272376B3C();
  swift_allocObject();
  v10 = sub_272376B2C();
  sub_2721F065C(&qword_280881C70, &unk_27237D640);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_27237AFB0;
  sub_272376ADC();
  sub_272376ACC();
  v12 = v10;
  sub_272376AEC();
  v140 = v11;
  sub_27230CDC4(&qword_280881C78, 255, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_2721F065C(&qword_280881C80, qword_27237D8B0);
  sub_27222F414();
  sub_27237815C();
  v13 = v111;
  v110 = v12;
  v14 = sub_272376B0C();
  v15 = (*v13 + 120);
  v109 = *v15;
  v108[4] = v15;
  v109(v14);
  if (!v16)
  {
    goto LABEL_68;
  }

  sub_272376CAC();

  v17 = v141;
  sub_272376CFC();
  v19 = v119 + 8;
  v18 = *(v119 + 8);
  v18(v7, v2);
  v131 = sub_272376D2C();
  v21 = v20;
  v108[0] = v18;
  v18(v17, v2);
  v22 = sub_27230A49C(MEMORY[0x277D84F90], &qword_280882C68, &qword_2723846F8);
  swift_beginAccess();
  v23 = v13[4];
  v24 = v23 + 64;
  v25 = 1 << *(v23 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v116 = v26 & *(v23 + 64);
  v114 = (v25 + 63) >> 6;
  v113 = v23;

  v27 = 0;
  v28 = v118;
  v132 = v21;
  v112 = v24;
  v117 = v2;
  v119 = v19;
LABEL_7:
  v29 = v116;
  if (v116)
  {
    v30 = v21;
    v31 = v22;
    v32 = v27;
    goto LABEL_13;
  }

  while (1)
  {
    v32 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_63;
    }

    if (v32 >= v114)
    {
      break;
    }

    v29 = *(v24 + 8 * v32);
    ++v27;
    if (v29)
    {
      v30 = v21;
      v31 = v22;
LABEL_13:
      v116 = (v29 - 1) & v29;
      v115 = v32;
      v33 = __clz(__rbit64(v29)) | (v32 << 6);
      v34 = (*(v113 + 48) + 16 * v33);
      v36 = *v34;
      v35 = v34[1];
      v37 = *(*(v113 + 56) + 8 * v33);

      v38 = sub_27230A49C(MEMORY[0x277D84F90], &qword_280882710, &qword_272384170);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v138 = v31;
      v123 = v36;
      sub_272309F7C(v38, v36, v35, isUniquelyReferenced_nonNull_native, &qword_280882C68, &qword_2723846F8);
      v124 = v35;

      v22 = v138;
      v40 = v37 + 64;
      v41 = 1 << *(v37 + 32);
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      else
      {
        v42 = -1;
      }

      v43 = v42 & *(v37 + 64);
      v44 = (v41 + 63) >> 6;
      v122 = v37;

      v45 = v43;
      v46 = 0;
      v21 = v30;
      v120 = v44;
      v121 = v40;
      while (2)
      {
        if (!v45)
        {
          while (1)
          {
            v47 = v46 + 1;
            if (__OFADD__(v46, 1))
            {
              break;
            }

            if (v47 >= v44)
            {

              v27 = v115;
              v24 = v112;
              goto LABEL_7;
            }

            v45 = *(v40 + 8 * v47);
            ++v46;
            if (v45)
            {
              v130 = v22;
              v46 = v47;
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          result = sub_2723786BC();
          __break(1u);
          return result;
        }

        v130 = v22;
LABEL_25:
        v125 = v46;
        v126 = v45;
        v48 = __clz(__rbit64(v45)) | (v46 << 6);
        v49 = *(v122 + 56);
        v50 = (*(v122 + 48) + 16 * v48);
        v51 = v50[1];
        v128 = *v50;
        v129 = v51;
        v52 = *(v49 + 8 * v48);
        v53 = *(v52 + 16);
        v127 = v52;
        if (v53)
        {

          v54 = sub_272203AC4();
          v55 = (v52 + 40);
          v56 = MEMORY[0x277D84F90];
          v133 = v54;
          do
          {
            v141 = v56;
            v60 = *(v55 - 1);
            v59 = *v55;
            v138 = v60;
            v139 = v59;
            v61 = v131;
            v136 = v131;
            v137 = v21;

            if (sub_27237813C())
            {
              v138 = v60;
              v139 = v59;
              v136 = v61;
              v137 = v21;
              v134 = 0x726944746F6F7224;
              v135 = 0xE800000000000000;
              v60 = sub_2723780FC();
              v57 = v62;

              v56 = v141;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v56 = sub_2721FFBF8(0, *(v56 + 2) + 1, 1, v56);
              }

              v64 = *(v56 + 2);
              v63 = *(v56 + 3);
              v65 = v64 + 1;
              if (v64 >= v63 >> 1)
              {
                v56 = sub_2721FFBF8((v63 > 1), v64 + 1, 1, v56);
              }
            }

            else
            {
              v56 = v141;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v56 = sub_2721FFBF8(0, *(v56 + 2) + 1, 1, v56);
              }

              v64 = *(v56 + 2);
              v66 = *(v56 + 3);
              v65 = v64 + 1;
              if (v64 >= v66 >> 1)
              {
                v56 = sub_2721FFBF8((v66 > 1), v64 + 1, 1, v56);
              }

              v57 = v59;
            }

            *(v56 + 2) = v65;
            v58 = &v56[16 * v64];
            *(v58 + 4) = v60;
            *(v58 + 5) = v57;
            v55 += 2;
            --v53;
            v21 = v132;
          }

          while (v53);
        }

        else
        {

          v56 = MEMORY[0x277D84F90];
        }

        v67 = v130;
        v68 = swift_isUniquelyReferenced_nonNull_native();
        v138 = v67;
        v70 = sub_27220038C(v123, v124);
        v71 = v67[2];
        v72 = (v69 & 1) == 0;
        v73 = v71 + v72;
        if (__OFADD__(v71, v72))
        {
          goto LABEL_64;
        }

        v74 = v69;
        v75 = v56;
        if (v67[3] >= v73)
        {
          v2 = v117;
          v79 = v128;
          v78 = v129;
          if (v68)
          {
            if ((v69 & 1) == 0)
            {
              goto LABEL_65;
            }
          }

          else
          {
            sub_272309E1C(&qword_280882C68, &qword_2723846F8);
            if ((v74 & 1) == 0)
            {
              goto LABEL_65;
            }
          }
        }

        else
        {
          sub_272309B7C(v73, v68, &qword_280882C68, &qword_2723846F8);
          v76 = sub_27220038C(v123, v124);
          v2 = v117;
          v79 = v128;
          v78 = v129;
          if ((v74 & 1) != (v77 & 1))
          {
            goto LABEL_70;
          }

          v70 = v76;
          if ((v74 & 1) == 0)
          {
            goto LABEL_65;
          }
        }

        v80 = *(v138[7] + 8 * v70);

        v81 = swift_isUniquelyReferenced_nonNull_native();
        v136 = v80;
        v82 = sub_27220038C(v79, v78);
        v84 = v80[2];
        v85 = (v83 & 1) == 0;
        v86 = __OFADD__(v84, v85);
        v87 = v84 + v85;
        if (v86)
        {
          goto LABEL_66;
        }

        v88 = v83;
        if (v80[3] >= v87)
        {
          if (v81)
          {
            goto LABEL_51;
          }

          v94 = v82;
          sub_272309E1C(&qword_280882710, &qword_272384170);
          v82 = v94;
          v21 = v132;
          v90 = v136;
          if (v88)
          {
            goto LABEL_17;
          }

LABEL_52:
          v90[(v82 >> 6) + 8] |= 1 << v82;
          v91 = (v90[6] + 16 * v82);
          *v91 = v79;
          v91[1] = v78;
          *(v90[7] + 8 * v82) = v75;
          v92 = v90[2];
          v86 = __OFADD__(v92, 1);
          v93 = v92 + 1;
          if (v86)
          {
            goto LABEL_67;
          }

          v90[2] = v93;
        }

        else
        {
          sub_272309B7C(v87, v81, &qword_280882710, &qword_272384170);
          v82 = sub_27220038C(v79, v78);
          if ((v88 & 1) != (v89 & 1))
          {
            goto LABEL_70;
          }

LABEL_51:
          v90 = v136;
          if ((v88 & 1) == 0)
          {
            goto LABEL_52;
          }

LABEL_17:
          *(v90[7] + 8 * v82) = v75;
        }

        v46 = v125;
        v45 = (v126 - 1) & v126;
        v22 = v138;
        *(v138[7] + 8 * v70) = v90;
        v28 = v118;
        v40 = v121;
        v44 = v120;
        continue;
      }
    }
  }

  v96 = (v109)(v95);
  if (!v97)
  {
    goto LABEL_69;
  }

  v98 = v96;
  v99 = v97;

  type metadata accessor for VAA2AEnrollmentMap();
  swift_allocObject();
  v100 = sub_27230C3E8(v22, v98, v99);

  v138 = v100;
  sub_27230CDC4(&qword_280882C10, v101, type metadata accessor for VAA2AEnrollmentMap, &protocol conformance descriptor for VAA2AEnrollmentMap);
  v102 = v108[3];
  v103 = sub_272376B1C();
  if (!v102)
  {
    v105 = v103;
    v106 = v104;
    sub_272376CAC();
    sub_272376D9C();
    (v108[0])(v28, v2);
    sub_2721F05C8(v105, v106);
  }
}

void *sub_2723093C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_27230C3E8(a1, a2, a3);

  return v6;
}

uint64_t VAA2AEnrollmentMap.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  VAA2AEnrollmentMap.init(from:)(a1);
  return v2;
}

void VAA2AEnrollmentMap.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882C18, &qword_272384440);
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v8 = (v1 + 16);
  v9 = MEMORY[0x277D84F90];
  v8[4] = sub_272216188(MEMORY[0x277D84F90]);
  v8[5] = sub_27230A49C(v9, &qword_280882710, &qword_272384170);
  sub_27220300C(a1, a1[3]);
  sub_27230C4B8();
  sub_2723787AC();
  if (v2)
  {
LABEL_3:

    type metadata accessor for VAA2AEnrollmentMap();
    swift_deallocPartialClassInstance();
    v10 = a1;
LABEL_4:
    sub_2722039C8(v10);
    return;
  }

  sub_2721F065C(&qword_280882C20, &qword_272384448);
  sub_27230C970(&qword_280882C28, sub_27230C50C, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_2723784FC();
  v29 = a1;
  v30 = v7;
  v28 = v5;
  v11 = v32 + 64;
  v12 = 1 << *(v32 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v32 + 64);
  v15 = (v12 + 63) >> 6;
  v31 = v32;

  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_13:
      v19 = (*(v31 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v14)))));
      v20 = *v19;
      v21 = v19[1];

      if ((sub_27230C5B8(v20, v21) & 1) == 0)
      {
        break;
      }

      v14 &= v14 - 1;

      v16 = v17;
      if (!v14)
      {
        goto LABEL_9;
      }
    }

    v32 = 0;
    v33 = 0xE000000000000000;
    sub_27237820C();

    v32 = 544826699;
    v33 = 0xE400000000000000;
    MEMORY[0x2743C4AD0](v20, v21);

    MEMORY[0x2743C4AD0](0xD00000000000001DLL, 0x800000027238FCB0);
    v24 = v32;
    v25 = v33;
    sub_27230C91C();
    swift_allocError();
    *v26 = v24;
    v26[1] = v25;
    swift_willThrow();

    (*(v34 + 8))(v30, v28);
    a1 = v29;
    goto LABEL_3;
  }

LABEL_9:
  v18 = v30;
  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {
      v22 = v31;

      *(v3 + 32) = v22;
      v23 = sub_27230A49C(MEMORY[0x277D84F90], &qword_280882C60, &unk_2723846E8);
      (*(v34 + 8))(v18, v28);
      *(v3 + 40) = v23;
      swift_beginAccess();
      *v8 = 0;
      v8[1] = 0;

      v10 = v29;
      goto LABEL_4;
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_2723098B0(void *a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_280882C48, &qword_272384460);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  sub_27220300C(a1, a1[3]);
  sub_27230C4B8();
  sub_2723787CC();
  swift_beginAccess();
  v9 = *(v2 + 32);
  sub_2721F065C(&qword_280882C20, &qword_272384448);
  sub_27230C970(&qword_280882C50, sub_27230C9F4, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_2723785DC();
  return (*(v5 + 8))(v7, v4);
}

void *VAA2AEnrollmentMap.deinit()
{

  return v0;
}

uint64_t VAA2AEnrollmentMap.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_272309AF4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 312))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_272309B7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_2721F065C(a3, a4);
  v36 = v6;
  result = sub_2723783DC();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

void sub_272309E1C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_2721F065C(a1, a2);
  v4 = *v2;
  v5 = sub_2723783CC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_272309F7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_27220038C(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_272309B7C(v20, a4 & 1, a5, a6);
      v15 = sub_27220038C(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_2723786BC();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_272309E1C(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

unint64_t sub_27230A11C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_27230A26C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_2723781FC();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_27237825C() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_27230A26C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_27230A304(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_27230A378(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_27230A304(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_2722013B8(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_27230A378(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_27237825C();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_27230A49C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2721F065C(a2, a3);
    v5 = sub_2723783EC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_27220038C(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_27230A598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_272376D5C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v124 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v99 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v99 - v11;
  v113 = sub_27230A49C(MEMORY[0x277D84F90], &qword_280882C60, &unk_2723846E8);
  sub_272376CAC();
  sub_272376CFC();
  v13 = *(v5 + 8);
  v13(v10, v4);
  v114 = sub_272376D2C();
  v115 = v14;
  v117 = v12;
  v125 = v5 + 8;
  v123 = v13;
  v13(v12, v4);
  v15 = *(a3 + 64);
  v101 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v103 = v17 & v15;
  v100 = (v16 + 63) >> 6;
  v99 = a3;

  v18 = 0;
  v116 = v4;
LABEL_6:
  v19 = v103;
  if (!v103)
  {
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_68;
      }

      if (v20 >= v100)
      {
        break;
      }

      v19 = *(v101 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_11;
      }
    }

LABEL_61:

    return v113;
  }

  v20 = v18;
LABEL_11:
  v103 = (v19 - 1) & v19;
  v102 = v20;
  v21 = __clz(__rbit64(v19)) | (v20 << 6);
  v22 = (*(v99 + 48) + 16 * v21);
  v24 = *v22;
  v23 = v22[1];
  v25 = *(*(v99 + 56) + 8 * v21);

  v26 = sub_27230A49C(MEMORY[0x277D84F90], &qword_280882C70, &qword_272384700);

  v27 = v113;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v130 = v27;
  v107 = v24;
  sub_272309F7C(v26, v24, v23, isUniquelyReferenced_nonNull_native, &qword_280882C60, &unk_2723846E8);
  v108 = v23;

  v113 = v130;
  v29 = v25 + 64;
  v30 = 1 << *(v25 + 32);
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  else
  {
    v31 = -1;
  }

  v32 = v31 & *(v25 + 64);
  v33 = (v30 + 63) >> 6;
  v106 = v25;

  v34 = 0;
  v105 = v25 + 64;
  for (i = v33; ; v33 = i)
  {
    if (!v32)
    {
      while (1)
      {
        v35 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_65;
        }

        if (v35 >= v33)
        {
          break;
        }

        v32 = *(v29 + 8 * v35);
        ++v34;
        if (v32)
        {
          goto LABEL_22;
        }
      }

      v18 = v102;
      goto LABEL_6;
    }

    v35 = v34;
LABEL_22:
    v111 = v35;
    v112 = v32;
    v36 = __clz(__rbit64(v32)) | (v35 << 6);
    v37 = *(v106 + 56);
    v38 = (*(v106 + 48) + 16 * v36);
    v39 = v38[1];
    v109 = *v38;
    v40 = *(v37 + 8 * v36);
    v110 = v39;

    v41 = sub_272216188(MEMORY[0x277D84F90]);
    v119 = *(v40 + 16);
    if (v119)
    {
      break;
    }

LABEL_50:

    v85 = v113;
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v130 = v85;
    v88 = sub_27220038C(v107, v108);
    v89 = *(v85 + 16);
    v90 = (v87 & 1) == 0;
    v91 = v89 + v90;
    if (__OFADD__(v89, v90))
    {
      goto LABEL_69;
    }

    v92 = v87;
    if (*(v85 + 24) >= v91)
    {
      if (v86)
      {
        if ((v87 & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        sub_272309E1C(&qword_280882C60, &unk_2723846E8);
        if ((v92 & 1) == 0)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      sub_272309B7C(v91, v86, &qword_280882C60, &unk_2723846E8);
      v93 = sub_27220038C(v107, v108);
      if ((v92 & 1) != (v94 & 1))
      {
        goto LABEL_70;
      }

      v88 = v93;
      if ((v92 & 1) == 0)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }
    }

    v32 = (v112 - 1) & v112;
    v95 = v130;
    v96 = *(v130[7] + 8 * v88);

    v97 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v96;
    sub_272309F7C(v41, v109, v110, v97, &qword_280882C70, &qword_272384700);

    v113 = v95;
    if (v128)
    {
      *(*(v95 + 56) + 8 * v88) = v128;
    }

    else
    {
      sub_272203A70(*(v95 + 48) + 16 * v88);
      sub_27223CF60(v88, v95);
    }

    v34 = v111;
    v29 = v105;
  }

  v42 = 0;
  v43 = (v40 + 40);
  v118 = v40;
  while (v42 < *(v40 + 16))
  {
    v120 = v42;
    v47 = *(v43 - 1);
    v48 = *v43;

    sub_272376CAC();
    v49 = v117;
    sub_272376CDC();
    v50 = sub_272376CBC();
    v52 = v51;
    v123(v49, v4);
    v130 = v50;
    v131 = v52;
    v128 = 45;
    v129 = 0xE100000000000000;
    v126 = 95;
    v127 = 0xE100000000000000;
    sub_272203AC4();
    sub_2723780FC();

    v121 = sub_2723778AC();
    v122 = v53;

    v130 = v47;
    v131 = v48;
    v128 = 0x726944746F6F7224;
    v129 = 0xE800000000000000;
    if ((sub_27237813C() & 1) == 0)
    {
      v66 = swift_isUniquelyReferenced_nonNull_native();
      v130 = v41;
      v67 = sub_27220038C(v47, v48);
      v69 = v41[2];
      v70 = (v68 & 1) == 0;
      v62 = __OFADD__(v69, v70);
      v71 = v69 + v70;
      if (v62)
      {
        goto LABEL_64;
      }

      v72 = v68;
      if (v41[3] < v71)
      {
        sub_272215B54(v71, v66);
        v67 = sub_27220038C(v47, v48);
        v4 = v116;
        if ((v72 & 1) != (v73 & 1))
        {
          goto LABEL_70;
        }

        goto LABEL_43;
      }

      v4 = v116;
      if (v66)
      {
LABEL_43:
        if ((v72 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v80 = v67;
        sub_272215E14();
        v67 = v80;
        if ((v72 & 1) == 0)
        {
LABEL_48:
          v41 = v130;
          v130[(v67 >> 6) + 8] |= 1 << v67;
          v81 = (v41[6] + 16 * v67);
          *v81 = v47;
          v81[1] = v48;
          v82 = (v41[7] + 16 * v67);
          v83 = v122;
          *v82 = v121;
          v82[1] = v83;
          v123(v124, v4);
          v84 = v41[2];
          v62 = __OFADD__(v84, 1);
          v78 = v84 + 1;
          if (v62)
          {
            goto LABEL_67;
          }

          goto LABEL_49;
        }
      }

      v44 = v67;
      goto LABEL_25;
    }

    v130 = v47;
    v131 = v48;
    v128 = 0x726944746F6F7224;
    v129 = 0xE800000000000000;
    v126 = v114;
    v127 = v115;
    v54 = sub_2723780FC();
    v56 = v55;

    v57 = swift_isUniquelyReferenced_nonNull_native();
    v130 = v41;
    v58 = sub_27220038C(v54, v56);
    v60 = v41[2];
    v61 = (v59 & 1) == 0;
    v62 = __OFADD__(v60, v61);
    v63 = v60 + v61;
    if (v62)
    {
      goto LABEL_63;
    }

    v64 = v59;
    if (v41[3] >= v63)
    {
      v4 = v116;
      if ((v57 & 1) == 0)
      {
        v79 = v58;
        sub_272215E14();
        v58 = v79;
        if ((v64 & 1) == 0)
        {
LABEL_39:
          v41 = v130;
          v130[(v58 >> 6) + 8] |= 1 << v58;
          v74 = (v41[6] + 16 * v58);
          *v74 = v54;
          v74[1] = v56;
          v75 = (v41[7] + 16 * v58);
          v76 = v122;
          *v75 = v121;
          v75[1] = v76;
          v123(v124, v4);
          v77 = v41[2];
          v62 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v62)
          {
            goto LABEL_66;
          }

LABEL_49:
          v41[2] = v78;
          goto LABEL_26;
        }

        goto LABEL_24;
      }
    }

    else
    {
      sub_272215B54(v63, v57);
      v58 = sub_27220038C(v54, v56);
      v4 = v116;
      if ((v64 & 1) != (v65 & 1))
      {
        goto LABEL_70;
      }
    }

    if ((v64 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_24:
    v44 = v58;
LABEL_25:

    v41 = v130;
    v45 = (v130[7] + 16 * v44);
    v46 = v122;
    *v45 = v121;
    v45[1] = v46;

    v123(v124, v4);
LABEL_26:
    v40 = v118;
    v42 = v120 + 1;
    v43 += 2;
    if (v119 == v120 + 1)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

unint64_t sub_27230AF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_272376D5C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v79 - v9;
  v11 = sub_27230A49C(MEMORY[0x277D84F90], &qword_280882C68, &qword_2723846F8);
  sub_272376CAC();
  sub_272376CFC();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v96 = sub_272376D2C();
  v97 = v13;
  v12(v10, v4);
  v14 = *(a3 + 64);
  v82 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v84 = v16 & v14;
  v81 = (v15 + 63) >> 6;
  v80 = a3;

  v17 = 0;
LABEL_6:
  v18 = v84;
  if (v84)
  {
    v19 = v17;
  }

  else
  {
    do
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_58;
      }

      if (v19 >= v81)
      {

        return v11;
      }

      v18 = *(v82 + 8 * v19);
      ++v17;
    }

    while (!v18);
  }

  v83 = v19;
  v84 = (v18 - 1) & v18;
  v20 = __clz(__rbit64(v18)) | (v19 << 6);
  v21 = (*(v80 + 48) + 16 * v20);
  v23 = *v21;
  v22 = v21[1];
  v24 = *(*(v80 + 56) + 8 * v20);

  v25 = sub_27230A49C(MEMORY[0x277D84F90], &qword_280882710, &qword_272384170);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v102 = v11;
  v88 = v23;
  sub_272309F7C(v25, v23, v22, isUniquelyReferenced_nonNull_native, &qword_280882C68, &qword_2723846F8);
  v89 = v22;

  v11 = v102;
  v27 = v24 + 64;
  v28 = 1 << *(v24 + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & *(v24 + 64);
  v31 = (v28 + 63) >> 6;
  v87 = v24;

  v32 = 0;
  v85 = v31;
  v86 = v24 + 64;
  while (v30)
  {
LABEL_22:
    v90 = v32;
    v91 = v30;
    v34 = __clz(__rbit64(v30)) | (v32 << 6);
    v35 = *(v87 + 56);
    v36 = (*(v87 + 48) + 16 * v34);
    v37 = v36[1];
    v93 = *v36;
    v94 = v11;
    v38 = *(v35 + 8 * v34);
    v39 = *(v38 + 16);
    v95 = v37;
    v92 = v38;
    if (v39)
    {

      sub_272203AC4();
      v40 = (v38 + 40);
      v41 = MEMORY[0x277D84F90];
      do
      {
        v44 = *(v40 - 1);
        v45 = *v40;
        v102 = v44;
        v103 = v45;
        v100 = 0x726944746F6F7224;
        v101 = 0xE800000000000000;

        if (sub_27237813C())
        {
          v102 = v44;
          v103 = v45;
          v100 = 0x726944746F6F7224;
          v101 = 0xE800000000000000;
          v98 = v96;
          v99 = v97;
          v44 = sub_2723780FC();
          v42 = v46;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_2721FFBF8(0, *(v41 + 2) + 1, 1, v41);
          }

          v48 = *(v41 + 2);
          v47 = *(v41 + 3);
          v49 = v48 + 1;
          if (v48 >= v47 >> 1)
          {
            v41 = sub_2721FFBF8((v47 > 1), v48 + 1, 1, v41);
          }
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_2721FFBF8(0, *(v41 + 2) + 1, 1, v41);
          }

          v48 = *(v41 + 2);
          v50 = *(v41 + 3);
          v49 = v48 + 1;
          if (v48 >= v50 >> 1)
          {
            v41 = sub_2721FFBF8((v50 > 1), v48 + 1, 1, v41);
          }

          v42 = v45;
        }

        *(v41 + 2) = v49;
        v43 = &v41[16 * v48];
        *(v43 + 4) = v44;
        *(v43 + 5) = v42;
        v40 += 2;
        --v39;
      }

      while (v39);
    }

    else
    {

      v41 = MEMORY[0x277D84F90];
    }

    v51 = v94;
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v102 = v51;
    v54 = sub_27220038C(v88, v89);
    v55 = *(v51 + 16);
    v56 = (v53 & 1) == 0;
    v57 = v55 + v56;
    if (__OFADD__(v55, v56))
    {
      goto LABEL_59;
    }

    v58 = v53;
    if (*(v51 + 24) >= v57)
    {
      v61 = v93;
      if (v52)
      {
        if ((v53 & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        sub_272309E1C(&qword_280882C68, &qword_2723846F8);
        if ((v58 & 1) == 0)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      sub_272309B7C(v57, v52, &qword_280882C68, &qword_2723846F8);
      v59 = sub_27220038C(v88, v89);
      v61 = v93;
      if ((v58 & 1) != (v60 & 1))
      {
        goto LABEL_63;
      }

      v54 = v59;
      if ((v58 & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    v11 = v102;
    v62 = *(*(v102 + 56) + 8 * v54);

    v63 = swift_isUniquelyReferenced_nonNull_native();
    v100 = v62;
    v64 = sub_27220038C(v61, v95);
    v66 = *(v62 + 16);
    v67 = (v65 & 1) == 0;
    v68 = __OFADD__(v66, v67);
    v69 = v66 + v67;
    if (v68)
    {
      goto LABEL_61;
    }

    v70 = v65;
    if (*(v62 + 24) < v69)
    {
      sub_272309B7C(v69, v63, &qword_280882710, &qword_272384170);
      v71 = v95;
      v64 = sub_27220038C(v61, v95);
      if ((v70 & 1) != (v72 & 1))
      {
        goto LABEL_63;
      }

LABEL_49:
      v73 = v100;
      if (v70)
      {
        goto LABEL_15;
      }

      goto LABEL_50;
    }

    if (v63)
    {
      v71 = v95;
      goto LABEL_49;
    }

    v77 = v64;
    sub_272309E1C(&qword_280882710, &qword_272384170);
    v64 = v77;
    v71 = v95;
    v73 = v100;
    if (v70)
    {
LABEL_15:
      *(v73[7] + 8 * v64) = v41;

      goto LABEL_16;
    }

LABEL_50:
    v73[(v64 >> 6) + 8] |= 1 << v64;
    v74 = (v73[6] + 16 * v64);
    *v74 = v61;
    v74[1] = v71;
    *(v73[7] + 8 * v64) = v41;
    v75 = v73[2];
    v68 = __OFADD__(v75, 1);
    v76 = v75 + 1;
    if (v68)
    {
      goto LABEL_62;
    }

    v73[2] = v76;
LABEL_16:
    v32 = v90;
    v30 = (v91 - 1) & v91;
    *(*(v11 + 56) + 8 * v54) = v73;
    v31 = v85;
    v27 = v86;
  }

  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v31)
    {

      v17 = v83;
      goto LABEL_6;
    }

    v30 = *(v27 + 8 * v33);
    ++v32;
    if (v30)
    {
      v32 = v33;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

void *sub_27230B70C(uint64_t a1)
{
  v2 = sub_27230A49C(MEMORY[0x277D84F90], &qword_280882710, &qword_272384170);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v42 = a1;

  v8 = 0;
  v41 = v7;
LABEL_6:
  if (v6)
  {
    v9 = v8;
  }

  else
  {
    do
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_38;
      }

      if (v9 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
    }

    while (!v6);
  }

  v10 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v11 = v10 | (v9 << 6);
  v12 = (*(v42 + 48) + 16 * v11);
  v13 = *(*(v42 + 56) + 8 * v11);
  v43 = *v12;
  v44 = v12[1];
  v14 = 1 << *(v13 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v13 + 64);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  while (v16)
  {
LABEL_20:
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v21 = v20 | (v18 << 6);
    v22 = (*(v13 + 48) + 16 * v21);
    v23 = *(*(v13 + 56) + 8 * v21);
    v24 = *v22 == 0x636E756F6E6F7270 && v22[1] == 0xEE006E6F69746169;
    if (v24 || (sub_27237865C() & 1) != 0)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = sub_27220038C(v43, v44);
      v27 = v2[2];
      v28 = (v25 & 1) == 0;
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        goto LABEL_39;
      }

      if (v2[3] >= v29)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v25 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v38 = v25;
          v40 = v26;
          sub_272309E1C(&qword_280882710, &qword_272384170);
          v26 = v40;
          if ((v38 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

LABEL_32:
        *(v2[7] + 8 * v26) = v23;
      }

      else
      {
        v37 = v25;
        sub_272309B7C(v29, isUniquelyReferenced_nonNull_native, &qword_280882710, &qword_272384170);
        v30 = sub_27220038C(v43, v44);
        if ((v37 & 1) != (v31 & 1))
        {
          goto LABEL_41;
        }

        v26 = v30;
        if (v37)
        {
          goto LABEL_32;
        }

LABEL_34:
        v2[(v26 >> 6) + 8] |= 1 << v26;
        v32 = (v2[6] + 16 * v26);
        *v32 = v43;
        v32[1] = v44;
        *(v2[7] + 8 * v26) = v23;
        v33 = v2[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_40;
        }

        v2[2] = v35;
      }
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      v8 = v9;
      v7 = v41;
      goto LABEL_6;
    }

    v16 = *(v13 + 64 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

void *sub_27230BA68(void *a1, unint64_t a2)
{
  v5 = sub_27237728C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v79 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v78 = &v69 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v69 - v11;
  v13 = sub_272376D5C();
  v82 = *(v13 - 8);
  v83 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = (&v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = a1;
  sub_272376CAC();
  v16 = [objc_opt_self() defaultManager];
  sub_272376D2C();
  v17 = sub_2723777FC();

  v18 = [v16 fileExistsAtPath_];

  if ((v18 & 1) == 0)
  {
    v80 = v15;
    v22 = sub_2722C389C();
    (*(v6 + 16))(v12, v22, v5);

    v23 = sub_27237725C();
    v24 = sub_272377E8C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v85 = v26;
      *v25 = 136315138;
      v15 = v81;
      *(v25 + 4) = sub_2721FFD04(v81, a2, &v85);
      _os_log_impl(&dword_2721E4000, v23, v24, "No such enrollment JSON file: %s", v25, 0xCu);
      sub_2722039C8(v26);
      MEMORY[0x2743C69C0](v26, -1, -1);
      MEMORY[0x2743C69C0](v25, -1, -1);

      (*(v6 + 8))(v12, v5);
    }

    else
    {

      (*(v6 + 8))(v12, v5);
      v15 = v81;
    }

    v85 = 0;
    v86 = 0xE000000000000000;
    sub_27237820C();

    v85 = 0xD00000000000001ELL;
    v86 = 0x800000027238FD50;
    MEMORY[0x2743C4AD0](v15, a2);
    v27 = v85;
    v28 = v86;
    sub_2722032B4();
    swift_allocError();
    *v29 = v27;
    v29[1] = v28;
    swift_willThrow();
    (*(v82 + 8))(v80, v83);
    return v15;
  }

  v77 = v6;
  v19 = sub_272376D6C();
  v21 = v15;
  if (v2)
  {
    (*(v82 + 8))(v15, v83);
    return v15;
  }

  v31 = v19;
  v32 = v20;
  sub_272376ABC();
  swift_allocObject();
  v33 = sub_272376AAC();
  type metadata accessor for VAA2AEnrollmentMap();
  sub_27230CDC4(&qword_280882C78, v34, type metadata accessor for VAA2AEnrollmentMap, &protocol conformance descriptor for VAA2AEnrollmentMap);
  sub_272376A9C();
  v74 = v33;
  v75 = v31;
  v76 = v32;
  v15 = v85;
  swift_beginAccess();
  v15[2] = v81;
  v15[3] = a2;

  v35 = sub_2722C389C();
  v36 = v77;
  v37 = v78;
  v38 = *(v77 + 16);
  v73 = v35;
  v72 = v38;
  v71 = v77 + 16;
  (v38)(v78);

  v39 = sub_27237725C();
  v70 = sub_272377E7C();
  v40 = os_log_type_enabled(v39, v70);
  v80 = v21;
  if (!v40)
  {

    v49 = *(v36 + 8);
    v48 = v37;
    v50 = v5;
    goto LABEL_13;
  }

  v69 = v39;
  v41 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  v84[0] = v42;
  *v41 = 136315138;
  v43 = (*(*v15 + 120))();
  v45 = v44;

  if (v45)
  {
    v46 = sub_2721FFD04(v43, v45, v84);

    *(v41 + 4) = v46;
    v47 = v69;
    _os_log_impl(&dword_2721E4000, v69, v70, "Enrolling commands from dir : %s", v41, 0xCu);
    sub_2722039C8(v42);
    MEMORY[0x2743C69C0](v42, -1, -1);
    MEMORY[0x2743C69C0](v41, -1, -1);

    v48 = v78;
    v49 = *(v77 + 8);
    v50 = v5;
LABEL_13:
    v78 = v49;
    (v49)(v48, v50);
    swift_beginAccess();
    v51 = v15[4];

    v52 = v81;
    v53 = sub_27230A598(v81, a2, v51);

    swift_beginAccess();
    v15[5] = v53;

    v54 = v15[4];

    v55 = sub_27230AF80(v52, a2, v54);

    v15[4] = v55;

    v56 = sub_27230B70C(v55);

    swift_beginAccess();
    v15[7] = v56;

    v57 = v79;
    v72(v79, v73, v5);

    v58 = sub_27237725C();
    v59 = sub_272377E6C();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v81 = v5;
      v61 = v60;
      v62 = swift_slowAlloc();
      v87 = v62;
      *v61 = 136315138;
      (*(*v15 + 216))();
      sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
      v63 = sub_27237773C();
      v65 = v64;

      v66 = sub_2721FFD04(v63, v65, &v87);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_2721E4000, v58, v59, "Pronounciations: %s", v61, 0xCu);
      sub_2722039C8(v62);
      MEMORY[0x2743C69C0](v62, -1, -1);
      MEMORY[0x2743C69C0](v61, -1, -1);

      sub_2721F05C8(v75, v76);

      v67 = v79;
      v68 = v81;
    }

    else
    {

      sub_2721F05C8(v75, v76);

      v67 = v57;
      v68 = v5;
    }

    (v78)(v67, v68);
    (*(v82 + 8))(v80, v83);
    return v15;
  }

  __break(1u);
  return result;
}

void *sub_27230C3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = 0;
  v3[2] = 0;
  v7 = MEMORY[0x277D84F90];
  v3[6] = sub_272216188(MEMORY[0x277D84F90]);
  v3[7] = sub_27230A49C(v7, &qword_280882710, &qword_272384170);
  v3[4] = a1;
  swift_beginAccess();
  v3[2] = a2;
  v3[3] = a3;

  v3[5] = sub_27230A598(a2, a3, a1);
  return v3;
}

unint64_t sub_27230C4B8()
{
  result = qword_28088F120[0];
  if (!qword_28088F120[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088F120);
  }

  return result;
}

unint64_t sub_27230C50C()
{
  result = qword_280882C30;
  if (!qword_280882C30)
  {
    sub_2721F214C(&qword_280882C38, &unk_272384450);
    sub_27228F60C(&qword_280881800, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882C30);
  }

  return result;
}

uint64_t sub_27230C5B8(uint64_t a1, unint64_t a2)
{
  v27 = sub_2723787FC();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[0] = 32;
  v31[1] = 0xE100000000000000;
  v30 = v31;

  v7 = 1;
  result = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272204258, v29, a1, a2, v8);
  v10 = result;
  v28 = *(result + 16);
  if (!v28)
  {
LABEL_38:

    return v7;
  }

  v11 = 0;
  v12 = (v4 + 8);
  v13 = result + 56;
  while (v11 < *(v10 + 16))
  {
    if ((*(v13 - 16) ^ *(v13 - 24)) < 0x4000)
    {
      goto LABEL_37;
    }

    result = sub_27237807C();
    if ((v14 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(v14) & 0xF;
    }

    else
    {
      v15 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {
      goto LABEL_40;
    }

    v16 = result;
    v17 = v14;
    if ((v14 & 0x1000000000000000) != 0)
    {
      v22 = sub_2723778EC();
    }

    else
    {
      if ((v14 & 0x2000000000000000) != 0)
      {
        v19 = result;
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          v18 = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v18 = sub_27237825C();
        }

        v19 = *v18;
      }

      v20 = v19;
      v21 = (__clz(~v19) - 24) << 16;
      if (v20 < 0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 65541;
      }
    }

    v23 = 4 * v15;
    if (4 * v15 == v22 >> 14)
    {
      result = sub_27230A11C(v16, v17);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_41;
      }

      sub_27237880C();
      v24 = sub_2723787DC();
      (*v12)(v6, v27);
      if (v24)
      {
LABEL_31:

        goto LABEL_32;
      }
    }

    if ((sub_27237779C() & 1) == 0)
    {

LABEL_37:
      v7 = 0;
      goto LABEL_38;
    }

    if ((v17 & 0x1000000000000000) != 0)
    {
      if (v23 != sub_2723778EC() >> 14)
      {
        goto LABEL_28;
      }
    }

    else if (v23 != ((4 * sub_2723781EC()) & 0x3FFFFFFFFFFFFLL))
    {
      goto LABEL_28;
    }

    result = sub_27230A11C(v16, v17);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_42;
    }

    sub_27237880C();
    v25 = sub_2723787EC();
    (*v12)(v6, v27);
    if (v25)
    {
      goto LABEL_31;
    }

LABEL_28:
    if ((sub_27237779C() & 1) == 0)
    {
      goto LABEL_31;
    }

    v26 = sub_27237778C();

    if (v26)
    {
      goto LABEL_37;
    }

LABEL_32:
    ++v11;
    v13 += 32;
    if (v28 == v11)
    {
      v7 = 1;
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_27230C91C()
{
  result = qword_280882C40;
  if (!qword_280882C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882C40);
  }

  return result;
}

uint64_t sub_27230C970(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(&qword_280882C20, &qword_272384448);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27230C9F4()
{
  result = qword_280882C58;
  if (!qword_280882C58)
  {
    sub_2721F214C(&qword_280882C38, &unk_272384450);
    sub_27228F60C(&qword_2808824F0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882C58);
  }

  return result;
}

unint64_t sub_27230CCC0()
{
  result = qword_28088F430[0];
  if (!qword_28088F430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088F430);
  }

  return result;
}

unint64_t sub_27230CD18()
{
  result = qword_28088F540;
  if (!qword_28088F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088F540);
  }

  return result;
}

unint64_t sub_27230CD70()
{
  result = qword_28088F548[0];
  if (!qword_28088F548[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088F548);
  }

  return result;
}

uint64_t sub_27230CDC4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_27230CE0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x70536F5474786574;
  }

  else
  {
    v3 = 0x79426E656B6F7073;
  }

  if (v2)
  {
    v4 = 0xEC00000072657355;
  }

  else
  {
    v4 = 0xEC00000068636565;
  }

  if (*a2)
  {
    v5 = 0x70536F5474786574;
  }

  else
  {
    v5 = 0x79426E656B6F7073;
  }

  if (*a2)
  {
    v6 = 0xEC00000068636565;
  }

  else
  {
    v6 = 0xEC00000072657355;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_27237865C();
  }

  return v8 & 1;
}

uint64_t sub_27230CEC4()
{
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_27230CF58(uint64_t a1)
{
  sub_27237790C();
}

uint64_t sub_27230CFD8(uint64_t a1)
{
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_27230D068@<X0>(char *a2@<X8>)
{
  v3 = sub_27237840C();

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

void sub_27230D0C8(uint64_t *a1@<X8>)
{
  v2 = 0x79426E656B6F7073;
  if (*v1)
  {
    v2 = 0x70536F5474786574;
  }

  v3 = 0xEC00000072657355;
  if (*v1)
  {
    v3 = 0xEC00000068636565;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_27230D1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72756769666E6F63 && a2 == 0xEF73656D614E6465)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_27237865C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_27230D27C(uint64_t a1)
{
  v2 = sub_27230D480();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27230D2B8(uint64_t a1)
{
  v2 = sub_27230D480();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27230D2F4(void *a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882C90, &qword_272384710);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  sub_27220300C(a1, a1[3]);
  sub_27230D480();
  sub_2723787CC();
  v9[1] = a2;
  sub_2721F065C(&qword_280882C98, &qword_272384718);
  sub_272318894(&qword_280882CA0, sub_27230D4D4, MEMORY[0x277D83948]);
  sub_2723785DC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_27230D480()
{
  result = qword_28088F5E0;
  if (!qword_28088F5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088F5E0);
  }

  return result;
}

unint64_t sub_27230D4D4()
{
  result = qword_280882CA8;
  if (!qword_280882CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882CA8);
  }

  return result;
}

void *sub_27230D528@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_272315CEC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_27230D570()
{
  v1 = 25705;
  v2 = 0x656D6C6C6F726E65;
  if (*v0 != 2)
  {
    v2 = 0x656C61636F6CLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_27230D5E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_272315FC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_27230D610(uint64_t a1)
{
  v2 = sub_272315EA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27230D64C(uint64_t a1)
{
  v2 = sub_272315EA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27230D688(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882CB0, &qword_272384720);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  sub_27220300C(a1, a1[3]);
  sub_272315EA0();
  sub_2723787CC();
  v13 = 0;
  sub_27237858C();
  if (!v2)
  {
    v12 = 1;
    sub_27237858C();
    v11 = *(v3 + 32);
    v10[15] = 2;
    sub_2721F065C(&qword_280882CB8, &qword_272384728);
    sub_272315EF4(&qword_280882CC0, sub_272315F6C, MEMORY[0x277D83948]);
    sub_2723785DC();
    v10[14] = 3;
    sub_27237858C();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_27230D8CC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_272316124(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_27230D934()
{
  v1 = 0x6C69466F69647561;
  if (*v0 != 1)
  {
    v1 = 0x656372756F73;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_27230D984@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_272316520(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_27230D9AC(uint64_t a1)
{
  v2 = sub_272316478();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27230D9E8(uint64_t a1)
{
  v2 = sub_272316478();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27230DA24(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882CD0, &qword_272384730);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  sub_27220300C(a1, a1[3]);
  sub_272316478();
  sub_2723787CC();
  v10[15] = 0;
  sub_27237858C();
  if (!v2)
  {
    v10[14] = 1;
    sub_27237858C();
    v10[13] = *(v3 + 32);
    v10[12] = 2;
    sub_2723164CC();
    sub_2723785DC();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_27230DC04@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_272316634(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

void *sub_27230DC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v155 = a2;
  v156 = a3;
  v121 = a5;
  v170[2] = *MEMORY[0x277D85DE8];
  v8 = sub_272376EBC();
  MEMORY[0x28223BE20](v8 - 8);
  v127 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VANRNameConfiguration(0);
  v126 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v134 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VANRCollectedEnrollment(0);
  v143 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v160 = &v116 - v16;
  v17 = sub_2721F065C(&qword_280881D10, &qword_2723857A0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v128 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v146 = &v116 - v20;
  v21 = sub_272376E5C();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v125 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v133 = &v116 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v142 = &v116 - v28;
  MEMORY[0x28223BE20](v27);
  v159 = &v116 - v29;
  v30 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  MEMORY[0x28223BE20](v30 - 8);
  v154 = &v116 - v31;
  v157 = sub_272376D5C();
  v32 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v162 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_27237728C();
  MEMORY[0x28223BE20](v129);
  v130 = *(a1 + 16);
  if (v130)
  {
    v37 = 0;
    v38 = a1 + 32;
    v118 = (v34 + 16);
    v117 = (v34 + 8);
    v152 = (v32 + 48);
    v145 = (v32 + 32);
    v153 = (v22 + 48);
    v150 = (v22 + 32);
    v149 = (v22 + 16);
    v148 = (v22 + 8);
    v144 = (v32 + 8);
    v124 = (a4 + 40);
    v39 = MEMORY[0x277D84F90];
    *&v36 = 136315138;
    v116 = v36;
    v122 = v5;
    v120 = a4;
    v151 = v21;
    v140 = v15;
    v119 = &v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    v123 = a1 + 32;
    while (1)
    {
      v139 = v39;
      v136 = v37;
      v40 = (v38 + 56 * v37);
      v41 = v40[1];
      v132 = *v40;
      v42 = v40[3];
      v163 = v40[2];
      v43 = v40[4];
      v131 = v40[5];
      v44 = v40[6];
      v138 = v41;
      v137 = v44;
      if (a4)
      {
        v45 = a4;
        v46 = *(a4 + 16);

        v47 = v43;

        v48 = v46 + 1;
        v49 = v124;
        while (--v48)
        {
          v51 = *(v49 - 1);
          v50 = *v49;

          v52 = sub_27235374C(v51, v50);
          v54 = v53;

          if (v52 == sub_27235374C(v163, v42) && v54 == v55)
          {

            goto LABEL_16;
          }

          v49 += 2;
          v57 = sub_27237865C();

          if (v57)
          {
            goto LABEL_16;
          }
        }

        v58 = sub_2722C389C();
        v59 = v119;
        (*v118)(v119, v58, v129);

        v60 = sub_27237725C();
        v61 = sub_272377E6C();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          LODWORD(v165) = v61;
          v63 = v62;
          v64 = swift_slowAlloc();
          v170[0] = v64;
          *v63 = v116;

          v65 = sub_2721FFD04(v163, v42, v170);

          *(v63 + 4) = v65;
          _os_log_impl(&dword_2721E4000, v60, v165, "Skipping enrollment for name %s because it is not in the limit names list.", v63, 0xCu);
          sub_2722039C8(v64);
          MEMORY[0x2743C69C0](v64, -1, -1);
          MEMORY[0x2743C69C0](v63, -1, -1);

          (*v117)(v119, v129);
        }

        else
        {

          (*v117)(v59, v129);
        }

        v39 = v139;
        a4 = v45;
      }

      else
      {

        v47 = v43;

LABEL_16:
        v135 = v42;
        v66 = v47;
        v67 = *(v47 + 16);

        v147 = v67;
        if (v67)
        {
          v68 = 0;
          v69 = (v47 + 64);
          v165 = MEMORY[0x277D84F90];
          v70 = v157;
          v141 = v47;
          while (1)
          {
            if (v68 >= *(v66 + 16))
            {
              __break(1u);
LABEL_53:
              __break(1u);
LABEL_54:
              __break(1u);
LABEL_55:
              __break(1u);
            }

            v72 = *(v69 - 4);
            v71 = *(v69 - 3);
            v158 = *v69;
            v73 = *(v69 - 1);
            v170[0] = *(v69 - 2);
            v170[1] = v73;
            v168 = 0x726944746F6F7224;
            v169 = 0xE800000000000000;
            v166 = v155;
            v167 = v156;
            sub_272203AC4();

            v164 = v71;

            v74 = sub_2723780FC();
            v75 = v154;
            v161 = v76;
            sub_272376D3C();
            if ((*v152)(v75, 1, v70) == 1)
            {

              swift_bridgeObjectRelease_n();

              sub_2721F40F0(v75, &qword_280881A50, &unk_27237CA30);
              strcpy(v170, "Invalid URL: ");
              HIWORD(v170[1]) = -4864;
              MEMORY[0x2743C4AD0](v74, v161);

              goto LABEL_46;
            }

            (*v145)(v162, v75, v70);
            v77 = objc_allocWithZone(MEMORY[0x277CB8398]);
            v78 = sub_272376CCC();
            v170[0] = 0;
            v79 = [v77 initForReading:v78 commonFormat:3 interleaved:0 error:v170];

            if (!v79)
            {
              v110 = v170[0];
              sub_272376C6C();

              swift_willThrow();
LABEL_49:
              (*v144)(v162, v157);

              swift_bridgeObjectRelease_n();
            }

            v80 = v170[0];
            v81 = [v79 processingFormat];
            v82 = [v79 length];
            if ((v82 & 0x8000000000000000) != 0)
            {
              goto LABEL_53;
            }

            if (HIDWORD(v82))
            {
              goto LABEL_54;
            }

            v83 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v81 frameCapacity:v82];

            if (!v83)
            {
              goto LABEL_55;
            }

            v170[0] = 0;
            if (([v79 readIntoBuffer:v83 error:v170] & 1) == 0)
            {
              v111 = v170[0];
              sub_272376C6C();

              swift_willThrow();
              goto LABEL_49;
            }

            v84 = v170[0];

            v85 = v146;
            sub_272376E0C();
            v86 = v151;
            if ((*v153)(v85, 1, v151) == 1)
            {
              break;
            }

            v87 = v159;
            (*v150)(v159, v85, v86);
            v88 = v142;
            v89 = v87;
            v90 = v86;
            (*v149)(v142, v89, v86);

            LOBYTE(v170[0]) = v158 ^ 1;
            v91 = v83;
            v92 = v160;
            VANRCollectedEnrollment.init(id:audioSample:source:debugAudioFileLocation:)(v88, v91, v170, v74, v161, v160);
            v93 = v140;
            sub_2723186C4(v92, v140);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v165 = sub_272315B10(0, v165[2] + 1, 1, v165, &qword_280882E00, &qword_2723852C8, type metadata accessor for VANRCollectedEnrollment);
            }

            v95 = v165[2];
            v94 = v165[3];
            v66 = v141;
            if (v95 >= v94 >> 1)
            {
              v165 = sub_272315B10((v94 > 1), v95 + 1, 1, v165, &qword_280882E00, &qword_2723852C8, type metadata accessor for VANRCollectedEnrollment);
            }

            ++v68;

            sub_272318728(v160);
            (*v148)(v159, v86);
            v70 = v157;
            (*v144)(v162, v157);
            v96 = v165;
            v165[2] = v95 + 1;
            sub_272318784(v93, v96 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v95, type metadata accessor for VANRCollectedEnrollment);
            v69 += 40;
            if (v147 == v68)
            {
              goto LABEL_33;
            }
          }

          swift_bridgeObjectRelease_n();

          sub_2721F40F0(v85, &qword_280881D10, &qword_2723857A0);
          v170[0] = 0;
          v170[1] = 0xE000000000000000;
          sub_27237820C();

          strcpy(v170, "Invalid UUID: ");
          HIBYTE(v170[1]) = -18;
          v112 = v164;

          MEMORY[0x2743C4AD0](v72, v112);

          swift_bridgeObjectRelease_n();
          v113 = v170[0];
          v114 = v170[1];
          sub_27230206C();
          swift_allocError();
          *v115 = v113;
          v115[1] = v114;
          swift_willThrow();

          return (*v144)(v162, v157);
        }

        v165 = MEMORY[0x277D84F90];
        v90 = v151;
LABEL_33:

        v97 = v128;
        v98 = v132;
        v99 = v138;
        sub_272376E0C();
        if ((*v153)(v97, 1, v90) == 1)
        {

          sub_2721F40F0(v97, &qword_280881D10, &qword_2723857A0);
          v170[0] = 0;
          v170[1] = 0xE000000000000000;
          sub_27237820C();

          strcpy(v170, "Invalid UUID: ");
          HIBYTE(v170[1]) = -18;

          MEMORY[0x2743C4AD0](v98, v99);

          swift_bridgeObjectRelease_n();
LABEL_46:
          v107 = v170[0];
          v108 = v170[1];
          sub_27230206C();
          swift_allocError();
          *v109 = v107;
          v109[1] = v108;
          return swift_willThrow();
        }

        v100 = v133;
        (*v150)(v133, v97, v90);
        v101 = v125;
        (*v149)(v125, v100, v90);
        v102 = v135;

        v103 = v127;
        sub_272376E6C();
        VANRNameConfiguration.init(id:humanReadableName:enrollments:locale:)(v101, v163, v102, v165, v103, v134);

        v39 = v139;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_272315B10(0, v39[2] + 1, 1, v39, &qword_280882DF8, &qword_2723852C0, type metadata accessor for VANRNameConfiguration);
        }

        a4 = v120;
        v105 = v39[2];
        v104 = v39[3];
        if (v105 >= v104 >> 1)
        {
          v39 = sub_272315B10((v104 > 1), v105 + 1, 1, v39, &qword_280882DF8, &qword_2723852C0, type metadata accessor for VANRNameConfiguration);
        }

        (*v148)(v133, v90);
        v39[2] = v105 + 1;
        sub_272318784(v134, v39 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v105, type metadata accessor for VANRNameConfiguration);
      }

      v37 = v136 + 1;
      v38 = v123;
      if (v136 + 1 == v130)
      {
        return VANRUserConfiguration.init(configuredNames:)(v39).configuredNames._rawValue;
      }
    }
  }

  v39 = MEMORY[0x277D84F90];
  return VANRUserConfiguration.init(configuredNames:)(v39).configuredNames._rawValue;
}

uint64_t static VANRUserConfigurationJsonLoader.load(from:replacingRootWith:limitNames:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_272376D6C();
  if (!v5)
  {
    v12 = result;
    v13 = v11;
    sub_272376ABC();
    swift_allocObject();
    sub_272376AAC();
    sub_272316894();
    sub_272376A9C();

    sub_27230DC64(v14, a2, a3, a4, a5);

    return sub_2721F05C8(v12, v13);
  }

  return result;
}

unint64_t sub_27230F148(char a1)
{
  result = 0x6C65536C65646F6DLL;
  switch(a1)
  {
    case 1:
    case 13:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD000000000000027;
      break;
    case 5:
    case 14:
      result = 0xD000000000000028;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
    case 10:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000025;
      break;
    case 9:
      result = 0xD000000000000024;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x75626544706D7564;
      break;
    case 16:
      result = 0xD000000000000016;
      break;
    case 17:
      result = 0x4D4C6D6F74737563;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27230F3B8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_27230F148(*a1);
  v5 = v4;
  if (v3 == sub_27230F148(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_27237865C();
  }

  return v8 & 1;
}

uint64_t sub_27230F440()
{
  v1 = *v0;
  sub_27237874C();
  sub_27230F148(v1);
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_27230F4A4(uint64_t a1)
{
  sub_27230F148(*v1);
  sub_27237790C();
}

uint64_t sub_27230F4F8(uint64_t a1)
{
  v2 = *v1;
  sub_27237874C();
  sub_27230F148(v2);
  sub_27237790C();

  return sub_27237878C();
}

unint64_t sub_27230F558@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2723168E8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_27230F588@<X0>(unint64_t *a1@<X8>)
{
  result = sub_27230F148(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_27230F5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2723168E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27230F5F8(uint64_t a1)
{
  v2 = sub_27231693C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27230F634(uint64_t a1)
{
  v2 = sub_27231693C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27230F670(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882CE8, &qword_272384738);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29[-v7];
  sub_27220300C(a1, a1[3]);
  sub_27231693C();
  v9 = sub_2723787CC();
  (*(*v3 + 376))(&v31, v9);
  v30 = 0;
  sub_272316990();
  v10 = sub_27237857C();
  if (!v2)
  {
    (*(*v3 + 424))(v10);
    LOBYTE(v31) = 1;
    v11 = sub_27237853C();
    (*(*v3 + 448))(v11);
    LOBYTE(v31) = 2;
    v12 = sub_27237853C();
    (*(*v3 + 472))(v12);
    LOBYTE(v31) = 3;
    v30 = 0;
    v13 = sub_27237855C();
    (*(*v3 + 1024))(v13);
    LOBYTE(v31) = 4;
    v14 = sub_27237854C();
    (*(*v3 + 1048))(v14);
    LOBYTE(v31) = 5;
    v15 = sub_27237854C();
    (*(*v3 + 520))(v15);
    LOBYTE(v31) = 6;
    v16 = sub_27237853C();
    (*(*v3 + 568))(v16);
    LOBYTE(v31) = 7;
    v17 = sub_27237856C();
    (*(*v3 + 592))(v17);
    LOBYTE(v31) = 8;
    v18 = sub_27237856C();
    (*(*v3 + 616))(v18);
    LOBYTE(v31) = 9;
    v19 = sub_27237856C();
    (*(*v3 + 712))(v19);
    LOBYTE(v31) = 10;
    v20 = sub_27237855C();
    (*(*v3 + 736))(v20);
    LOBYTE(v31) = 11;
    v21 = sub_27237855C();
    (*(*v3 + 952))(&v31, v21);
    v30 = 12;
    sub_2723169E4();
    v22 = sub_27237857C();
    (*(*v3 + 976))(&v31, v22);
    v30 = 13;
    sub_272316A38();
    v23 = sub_27237857C();
    (*(*v3 + 1000))(v23);
    LOBYTE(v31) = 14;
    v24 = sub_27237853C();
    (*(*v3 + 640))(v24);
    LOBYTE(v31) = 15;
    v25 = sub_27237853C();
    (*(*v3 + 1144))(v25);
    LOBYTE(v31) = 17;
    v26 = sub_27237854C();
    v27 = (*(*v3 + 496))(v26);
    (*(*v27 + 232))(&v31);

    v30 = v31;
    v29[3] = 16;
    sub_272316A8C();
    sub_27237857C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t VANRSystemConfigCodable.init(from:)(void *a1)
{
  v3 = sub_2721F065C(&qword_280882D18, &qword_272384740);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - v5;
  v7 = _s12VoiceActions23VANRSystemConfigCodableCACycfc_0();
  sub_27220300C(a1, a1[3]);
  sub_27231693C();
  sub_2723787AC();
  if (v1)
  {
  }

  else
  {
    v29 = 0;
    sub_272316AE0();
    sub_2723784FC();
    v29 = v30;
    (*(*v7 + 384))(&v29);
    v30 = 1;
    v8 = sub_2723784BC();
    (*(*v7 + 432))(v8 & 1);
    v30 = 2;
    v9 = sub_2723784BC();
    (*(*v7 + 456))(v9 & 1);
    v30 = 3;
    v10 = sub_2723784DC();
    (*(*v7 + 480))(v10);
    v30 = 5;
    v11 = sub_27237845C();
    (*(*v7 + 1056))(v11, v12 & 1);
    v30 = 4;
    v13 = sub_27237845C();
    (*(*v7 + 1032))(v13, v14 & 1);
    v30 = 6;
    v15 = sub_2723784BC();
    (*(*v7 + 528))(v15 & 1);
    v30 = 7;
    v16 = sub_2723784EC();
    (*(*v7 + 576))(v16);
    v30 = 8;
    v17 = sub_2723784EC();
    (*(*v7 + 600))(v17);
    v30 = 9;
    v18 = sub_2723784EC();
    (*(*v7 + 624))(v18);
    v30 = 15;
    v19 = sub_2723784BC();
    (*(*v7 + 648))(v19 & 1);
    v30 = 10;
    v20 = sub_27237846C();
    (*(*v7 + 720))(v20 | ((HIDWORD(v20) & 1) << 32));
    v30 = 11;
    v21 = sub_27237846C();
    (*(*v7 + 744))(v21 | ((HIDWORD(v21) & 1) << 32));
    v30 = 17;
    v22 = sub_27237845C();
    (*(*v7 + 1152))(v22, v23 & 1);
    v29 = 12;
    sub_272316B34();
    sub_27237848C();
    v29 = v30;
    (*(*v7 + 960))(&v29);
    v29 = 13;
    sub_272316B88();
    sub_27237848C();
    v29 = v30;
    (*(*v7 + 984))(&v29);
    v30 = 14;
    v24 = sub_27237844C();
    (*(*v7 + 1008))(v24);
    v29 = 16;
    sub_272316BDC();
    sub_27237848C();
    v26 = v30;
    if (v30 != 11)
    {
      type metadata accessor for VAStringMatchingStrategy(0);
      v30 = v26;
      v27 = static VAStringMatchingStrategy.build(name:)(&v30);
      (*(*v7 + 504))(v27);
    }

    (*(v4 + 8))(v6, v3);
  }

  sub_2722039C8(a1);
  return v7;
}

void *static VANRSystemConfigCodable.load(_:)(uint64_t a1)
{
  v2 = sub_272376D5C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v35 - v7;
  v9 = sub_27237728C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v41 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v35 - v13;
  v15 = sub_2722C389C();
  v16 = *(v10 + 16);
  v35[4] = v15;
  v35[5] = v10 + 16;
  v35[3] = v16;
  v16(v14);
  v17 = *(v3 + 16);
  v40 = a1;
  v35[1] = v17;
  v35[2] = v3 + 16;
  v17(v8, a1, v2);
  v18 = sub_27237725C();
  v19 = sub_272377E7C();
  v20 = os_log_type_enabled(v18, v19);
  v38 = v3;
  v39 = v9;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v35[0] = v6;
    v22 = v21;
    v37 = swift_slowAlloc();
    v42 = v37;
    *v22 = 136315138;
    sub_272316C54(&qword_280881A48, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v23 = sub_27237862C();
    v24 = v10;
    v26 = v25;
    v36 = *(v3 + 8);
    v36(v8, v2);
    v27 = sub_2721FFD04(v23, v26, &v42);
    v10 = v24;

    *(v22 + 4) = v27;
    _os_log_impl(&dword_2721E4000, v18, v19, "Loading system config from %s", v22, 0xCu);
    v28 = v37;
    sub_2722039C8(v37);
    v29 = v28;
    v9 = v39;
    MEMORY[0x2743C69C0](v29, -1, -1);
    MEMORY[0x2743C69C0](v22, -1, -1);
  }

  else
  {

    v36 = *(v3 + 8);
    v36(v8, v2);
  }

  v37 = *(v10 + 8);
  (v37)(v14, v9);
  v30 = sub_272376D6C();
  v32 = v31;
  sub_272376ABC();
  swift_allocObject();
  sub_272376AAC();
  type metadata accessor for VANRSystemConfigCodable();
  sub_272316C54(&qword_280882D40, v33, type metadata accessor for VANRSystemConfigCodable, &protocol conformance descriptor for VANRSystemConfigCodable);
  sub_272376A9C();
  sub_2721F05C8(v30, v32);

  return v42;
}

uint64_t sub_272310D80(uint64_t a1)
{
  v2 = v1;
  v4 = sub_272376D5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_27237728C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v54 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  v14 = sub_2722C389C();
  v15 = *(v9 + 16);
  v50 = v14;
  v51 = v9 + 16;
  v52 = v8;
  v49 = v15;
  (v15)(v13);
  v16 = *(v5 + 16);
  v48 = a1;
  v16(v7, a1, v4);
  v17 = sub_27237725C();
  v18 = sub_272377E7C();
  v19 = os_log_type_enabled(v17, v18);
  v55 = v9;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v47 = v1;
    v21 = v20;
    v46 = swift_slowAlloc();
    v56 = v46;
    *v21 = 136315138;
    sub_272316C54(&qword_280881A48, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v22 = sub_27237862C();
    v24 = v23;
    (*(v5 + 8))(v7, v4);
    v25 = sub_2721FFD04(v22, v24, &v56);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_2721E4000, v17, v18, "Saving system config to %s", v21, 0xCu);
    v26 = v46;
    sub_2722039C8(v46);
    MEMORY[0x2743C69C0](v26, -1, -1);
    v27 = v21;
    v2 = v47;
    MEMORY[0x2743C69C0](v27, -1, -1);

    v28 = *(v55 + 8);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    v28 = *(v9 + 8);
  }

  v29 = v52;
  v28(v13, v52);
  sub_272376B3C();
  swift_allocObject();
  sub_272376B2C();
  v56 = v53;
  type metadata accessor for VANRSystemConfigCodable();
  sub_272316C54(&qword_280882D48, v30, type metadata accessor for VANRSystemConfigCodable, &protocol conformance descriptor for VANRSystemConfigCodable);
  v31 = sub_272376B1C();
  v33 = v2;
  v34 = v54;
  if (v2)
  {

    v49(v34, v50, v29);
    v37 = v2;
    v38 = sub_27237725C();
    v39 = sub_272377E8C();

    if (os_log_type_enabled(v38, v39))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = v33;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_2721E4000, v38, v39, "Error saving system config: %@", v41, 0xCu);
      sub_2721F40F0(v42, &qword_280881A40, &unk_27237D620);
      MEMORY[0x2743C69C0](v42, -1, -1);
      MEMORY[0x2743C69C0](v41, -1, -1);
    }

    else
    {
    }

    return (v28)(v34, v29);
  }

  else
  {
    v35 = v31;
    v36 = v32;
    sub_272376D9C();
    sub_2721F05C8(v35, v36);
  }
}

char *sub_2723112E0()
{
  v2 = sub_27237788C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_272376AFC();
  MEMORY[0x28223BE20](v5 - 8);
  sub_272376B3C();
  swift_allocObject();
  sub_272376B2C();
  sub_272376ACC();
  sub_272376B0C();
  v16 = v0;
  type metadata accessor for VANRSystemConfigCodable();
  sub_272316C54(&qword_280882D48, v6, type metadata accessor for VANRSystemConfigCodable, &protocol conformance descriptor for VANRSystemConfigCodable);
  v7 = sub_272376B1C();
  if (!v1)
  {
    v9 = v7;
    v10 = v8;
    sub_27237787C();
    v11 = sub_27237784C();
    if (v12)
    {
      v4 = v11;
      sub_2721F05C8(v9, v10);

      return v4;
    }

    v4 = 0x800000027238FDC0;
    sub_2722032B4();
    swift_allocError();
    *v14 = 0xD00000000000003BLL;
    v14[1] = 0x800000027238FDC0;
    swift_willThrow();
    sub_2721F05C8(v9, v10);
  }

  return v4;
}

uint64_t VANRSystemConfigCodable.__deallocating_deinit()
{
  VANRSystemConfiguration.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_272311524@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 1208))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2723115F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_272376DFC();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 144))(v6);
}

uint64_t sub_272311754@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2723117A0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 168);

  return v4(v2, v3);
}

float sub_272311914()
{
  v1 = v0 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_score;
  swift_beginAccess();
  return *v1;
}

void sub_27231195C(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_score);
  swift_beginAccess();
  *v3 = a1;
}

uint64_t sub_272311A10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_272311A5C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 216);

  return v4(v2, v3);
}

uint64_t sub_272311B3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_272311B88(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 240);

  return v4(v2, v3);
}

uint64_t sub_272311BFC(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_272311C5C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_272311D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_272316C9C(a1, &v8 - v5);
  return (*(**a2 + 264))(v6);
}

uint64_t sub_272311E2C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_audioBytesSavedTo;
  swift_beginAccess();
  return sub_272316C9C(v1 + v3, a1);
}

uint64_t sub_272311E84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_audioBytesSavedTo;
  swift_beginAccess();
  sub_2722AD1C0(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_272311F44@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_272311FEC()
{
  v1 = OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_wasAsrMatch;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_272312030(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_wasAsrMatch;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

unint64_t sub_2723120E0()
{
  v1 = *v0;
  v2 = 0x6D617473656D6974;
  v3 = 0xD000000000000011;
  if (v1 != 5)
  {
    v3 = 0x614D727341736177;
  }

  v4 = 0x696B6F6F4C727361;
  if (v1 != 3)
  {
    v4 = 0x747365424E727361;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x64726F7779656BLL;
  if (v1 != 1)
  {
    v5 = 0x65726F6373;
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

uint64_t sub_2723121D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2723181A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2723121FC(uint64_t a1)
{
  v2 = sub_272316D0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272312238(uint64_t a1)
{
  v2 = sub_272316D0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VANRDebugEvent.deinit()
{
  v1 = OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_timestamp;
  v2 = sub_272376DFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_audioBytesSavedTo, &qword_280881A50, &unk_27237CA30);
  return v0;
}

uint64_t VANRDebugEvent.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_timestamp;
  v2 = sub_272376DFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_audioBytesSavedTo, &qword_280881A50, &unk_27237CA30);

  return swift_deallocClassInstance();
}

uint64_t sub_272312428(void *a1)
{
  v2 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  MEMORY[0x28223BE20](v2 - 8);
  v25 = &v24 - v3;
  v4 = sub_272376DFC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2721F065C(&qword_280882D50, &qword_272384748);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  sub_27220300C(a1, a1[3]);
  sub_272316D0C();
  v12 = v26;
  v13 = sub_2723787CC();
  (*(*v12 + 136))(v13);
  v34 = 0;
  sub_272316C54(&qword_280882D58, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  v14 = v27;
  sub_2723785DC();
  if (v14)
  {
    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v16 = (*(v5 + 8))(v7, v4);
    (*(*v12 + 160))(v16);
    v33 = 1;
    sub_27237858C();

    (*(*v12 + 184))(v17);
    v32 = 2;
    v19 = v9;
    v18 = sub_2723785BC();
    (*(*v12 + 208))(v18);
    v31 = 3;
    sub_27237852C();

    (*(*v12 + 232))(v20);
    v30 = 4;
    sub_27237852C();

    v22 = v25;
    (*(*v12 + 256))(v21);
    v29 = 5;
    sub_272376D5C();
    sub_272316C54(&qword_280882D60, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_27237857C();
    v23 = sub_2721F40F0(v22, &qword_280881A50, &unk_27237CA30);
    (*(*v12 + 280))(v23);
    v28 = 6;
    sub_27237859C();
    return (*(v19 + 8))(v11, 0);
  }
}

uint64_t sub_2723129A8()
{
  v0 = swift_allocObject();
  sub_272376DEC();
  v1 = (v0 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_keyword);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_score) = 1065353216;
  v2 = (v0 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_asrLookingFor);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_asrNBest);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_audioBytesSavedTo;
  v5 = sub_272376D5C();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_wasAsrMatch) = 0;
  return v0;
}

uint64_t VANRDebugEvent.init(from:)(void *a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = v43 - v5;
  v53 = sub_272376DFC();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2721F065C(&qword_280882D68, &unk_272384750);
  v50 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v8 = v43 - v7;
  v49 = OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_timestamp;
  sub_272376DEC();
  v9 = (v2 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_keyword);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v48 = v9;
  v47 = (v2 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_score);
  *(v2 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_score) = 1065353216;
  v10 = (v2 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_asrLookingFor);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v2 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_asrNBest);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_audioBytesSavedTo;
  v13 = sub_272376D5C();
  v14 = *(*(v13 - 8) + 56);
  v45 = v12;
  v14(v2 + v12, 1, 1, v13);
  v15 = OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_wasAsrMatch;
  *(v2 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_wasAsrMatch) = 0;
  v16 = a1[3];
  v57 = a1;
  sub_27220300C(a1, v16);
  sub_272316D0C();
  v55 = v8;
  v17 = v56;
  sub_2723787AC();
  if (v17)
  {
  }

  else
  {
    v18 = v49;
    v19 = v51;
    v56 = v10;
    v44 = v11;
    v43[1] = v13;
    v43[0] = v15;
    v20 = v50;
    v62 = 0;
    sub_272316C54(&qword_280882D70, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v22 = v52;
    v21 = v53;
    v23 = v54;
    sub_2723784FC();
    swift_beginAccess();
    (*(v19 + 40))(v2 + v18, v22, v21);
    swift_endAccess();
    v62 = 1;
    v24 = sub_2723784AC();
    v26 = v25;
    v27 = v48;
    swift_beginAccess();
    *v27 = v24;
    v27[1] = v26;

    v61 = 2;
    sub_2723784DC();
    v29 = v28;
    v30 = v47;
    swift_beginAccess();
    *v30 = v29;
    v60 = 3;
    v31 = sub_27237843C();
    v33 = v32;
    v34 = v56;
    swift_beginAccess();
    *v34 = v31;
    v34[1] = v33;

    v59 = 4;
    v35 = sub_27237843C();
    v37 = v36;
    v38 = v44;
    swift_beginAccess();
    *v38 = v35;
    v38[1] = v37;

    v58 = 5;
    sub_272316C54(&qword_280882D78, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v39 = v46;
    sub_27237848C();
    v40 = v45;
    swift_beginAccess();
    sub_2722AD1C0(v39, v2 + v40);
    swift_endAccess();
    v58 = 6;
    LOBYTE(v40) = sub_2723784BC();
    (*(v20 + 8))(v55, v23);
    v42 = v43[0];
    swift_beginAccess();
    *(v2 + v42) = v40 & 1;
  }

  sub_2722039C8(v57);
  return v2;
}

uint64_t sub_2723130E0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 320))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t static VANRDebugInfo.buildVersion.getter()
{
  swift_beginAccess();
  v0 = *a20250625;

  return v0;
}

uint64_t static VANRDebugInfo.buildVersion.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *a20250625 = a1;
  *&a20250625[8] = a2;
}

double sub_272313270@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&a20250625[8];
  *a1 = *a20250625;
  a1[1] = v2;

  return result;
}

uint64_t sub_2723132C0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *a20250625 = v2;
  *&a20250625[8] = v1;
}

uint64_t sub_272313324@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_272313370(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 144);

  return v2(v3);
}

uint64_t sub_2723133C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_272313410(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 168);

  return v2(v3);
}

uint64_t sub_2723134A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_272376DFC();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 192))(v6);
}

uint64_t sub_272313650(uint64_t a1, uint64_t a2)
{
  v4 = sub_272376DFC();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 216))(v6);
}

uint64_t sub_2723137F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_272376DFC();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 240))(v6);
}

uint64_t sub_2723138F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = sub_272376DFC();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_272313980(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = sub_272376DFC();
  (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t sub_272313A6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_272313AC0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 264);

  return v4(v2, v3);
}

uint64_t sub_272313BA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_272313BFC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 288);

  return v4(v2, v3);
}

uint64_t sub_272313CE4(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_272376D5C();
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_272376DFC();
  v8 = *(v41 - 8);
  v9 = MEMORY[0x28223BE20](v41);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v40 = &v35 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v17 = (*(*a1 + 208))(v43, v14);
  v39 = v6;
  if (v43[1])
  {
    v36 = v2;
    v18 = v44;
    v35 = (*(*v4 + 176))(v42);
    v20 = v19;
    v21 = *v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v20 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2721FF8B4(0, *(v21 + 2) + 1, 1, v21);
      *v20 = v21;
    }

    v24 = *(v21 + 2);
    v23 = *(v21 + 3);
    if (v24 >= v23 >> 1)
    {
      v21 = sub_2721FF8B4((v23 > 1), v24 + 1, 1, v21);
      *v20 = v21;
    }

    *(v21 + 2) = v24 + 1;
    *&v21[4 * v24 + 32] = v18;
    v35(v42, 0);
    v17 = sub_2721F40F0(v43, &qword_2808819E0, &qword_27237D890);
    v3 = v36;
  }

  v25 = (*(*v4 + 160))(v17);
  v26 = sub_272222744(0x64uLL, v25);
  v27 = (*(*v4 + 168))(v26);
  (*(*v4 + 232))(v27);
  sub_272376DEC();
  v28 = v40;
  sub_272376DAC();
  v29 = *(v8 + 8);
  v30 = v11;
  v31 = v41;
  v29(v30, v41);
  v32 = sub_272376DCC();
  v29(v28, v31);
  v29(v16, v31);
  if (v32)
  {
    sub_272376DEC();
    (*(*v4 + 240))(v16);
    v33 = v37;
    sub_272376CAC();
    (*(*v4 + 312))(v33);
    if (v3)
    {
      return (*(v38 + 8))(v33, v39);
    }

    (*(v38 + 8))(v33, v39);
  }

  sub_272376DEC();
  return (*(*v4 + 216))(v16);
}

uint64_t static VANRDebugInfo.load(_:)(uint64_t a1)
{
  v1 = sub_272376D6C();
  v3 = v2;
  sub_272376ABC();
  swift_allocObject();
  sub_272376AAC();
  type metadata accessor for VANRDebugInfo(0);
  sub_272316C54(&qword_280882D80, 255, type metadata accessor for VANRDebugInfo, &protocol conformance descriptor for VANRDebugInfo);
  sub_272376A9C();
  sub_2721F05C8(v1, v3);

  return v5;
}

uint64_t sub_2723142B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_272376D5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_27237728C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v53 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  v14 = sub_2722C389C();
  v15 = *(v9 + 16);
  v49 = v14;
  v50 = v9 + 16;
  v51 = v8;
  v48 = v15;
  (v15)(v13);
  v16 = *(v5 + 16);
  v47 = a1;
  v16(v7, a1, v4);
  v17 = sub_27237725C();
  v18 = sub_272377E7C();
  v19 = os_log_type_enabled(v17, v18);
  v54 = v9;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v46 = v1;
    v21 = v20;
    v45 = swift_slowAlloc();
    v55 = v45;
    *v21 = 136315138;
    sub_272316C54(&qword_280881A48, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v22 = sub_27237862C();
    v24 = v23;
    (*(v5 + 8))(v7, v4);
    v25 = sub_2721FFD04(v22, v24, &v55);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_2721E4000, v17, v18, "Saving debug to %s", v21, 0xCu);
    v26 = v45;
    sub_2722039C8(v45);
    MEMORY[0x2743C69C0](v26, -1, -1);
    v27 = v21;
    v2 = v46;
    MEMORY[0x2743C69C0](v27, -1, -1);

    v28 = *(v54 + 8);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    v28 = *(v9 + 8);
  }

  v29 = v51;
  v28(v13, v51);
  sub_272376B3C();
  swift_allocObject();
  sub_272376B2C();
  v55 = v52;
  type metadata accessor for VANRDebugInfo(0);
  sub_272316C54(&qword_280882D88, 255, type metadata accessor for VANRDebugInfo, &protocol conformance descriptor for VANRDebugInfo);
  v30 = sub_272376B1C();
  v32 = v2;
  v33 = v53;
  if (v2)
  {

    v48(v33, v49, v29);
    v36 = v2;
    v37 = sub_27237725C();
    v38 = sub_272377E8C();

    if (os_log_type_enabled(v37, v38))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = v32;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_2721E4000, v37, v38, "Error saving debug: %@", v40, 0xCu);
      sub_2721F40F0(v41, &qword_280881A40, &unk_27237D620);
      MEMORY[0x2743C69C0](v41, -1, -1);
      MEMORY[0x2743C69C0](v40, -1, -1);
    }

    else
    {
    }

    return (v28)(v33, v29);
  }

  else
  {
    v34 = v30;
    v35 = v31;
    sub_272376D9C();
    sub_2721F05C8(v34, v35);
  }
}

uint64_t sub_272314818()
{
  v1 = *v0;
  v2 = 0x73746E657665;
  v3 = 0x69666E6F43737973;
  if (v1 != 5)
  {
    v3 = 0x726556646C697562;
  }

  v4 = 0x616470557473616CLL;
  if (v1 != 3)
  {
    v4 = 0x657661537473616CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0x5264657472617473;
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

uint64_t sub_272314920@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_272318404(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_272314948(uint64_t a1)
{
  v2 = sub_272316D80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272314984(uint64_t a1)
{
  v2 = sub_272316D80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VANRDebugInfo.deinit()
{

  v1 = OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_startedRunning;
  v2 = sub_272376DFC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_lastUpdated, v2);
  v3(v0 + OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_lastSaved, v2);

  return v0;
}

uint64_t VANRDebugInfo.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_startedRunning;
  v2 = sub_272376DFC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_lastUpdated, v2);
  v3(v0 + OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_lastSaved, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_272314BC4(void *a1)
{
  v2 = v1;
  v4 = sub_272376DFC();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v30 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v31 = v29 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = v29 - v9;
  v11 = sub_2721F065C(&qword_280882D90, &qword_272384760);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v29 - v13;
  sub_27220300C(a1, a1[3]);
  sub_272316D80();
  v15 = sub_2723787CC();
  v36 = (*(*v2 + 136))(v15);
  v35 = 0;
  sub_2721F065C(&qword_280882D98, &unk_272384768);
  sub_272316DF4(&qword_280882DA0, &qword_280882DA8, &protocol conformance descriptor for VANRDebugEvent, MEMORY[0x277D83948]);
  v16 = v34;
  sub_2723785DC();
  if (v16)
  {

    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v34 = v12;
    v18 = v33;

    v36 = (*(*v2 + 160))(v19);
    v35 = 1;
    sub_2721F065C(&qword_280881858, &unk_27237C260);
    sub_2722B00A0(&qword_2808827F0, MEMORY[0x277D83AA0], MEMORY[0x277D83948]);
    sub_2723785DC();

    (*(*v2 + 184))(v20);
    LOBYTE(v36) = 2;
    v21 = sub_272316C54(&qword_280882D58, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_2723785DC();
    v32 = *(v32 + 8);
    v22 = (v32)(v10, v18);
    v23 = v31;
    (*(*v2 + 208))(v22);
    LOBYTE(v36) = 3;
    v29[1] = v21;
    sub_2723785DC();
    v24 = v32;
    v25 = (v32)(v23, v18);
    v26 = v30;
    (*(*v2 + 232))(v25);
    LOBYTE(v36) = 4;
    sub_2723785DC();
    v27 = v24(v26, v18);
    (*(*v2 + 256))(v27);
    LOBYTE(v36) = 5;
    sub_27237858C();

    (*(*v2 + 280))(v28);
    LOBYTE(v36) = 6;
    sub_27237858C();
    (*(v34 + 8))(v14, v11);
  }
}

uint64_t sub_272315248()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = v1;
  sub_272376DEC();
  sub_272376DEC();
  sub_272376DEC();
  v2 = (v0 + OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_sysConfigString);
  *v2 = 0x524F525245;
  v2[1] = 0xE500000000000000;
  v3 = (v0 + OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_buildVersion);
  swift_beginAccess();
  v4 = *&a20250625[8];
  *v3 = *a20250625;
  v3[1] = v4;

  return v0;
}

uint64_t sub_272315348(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t VANRDebugInfo.init(from:)(void *a1)
{
  v2 = v1;
  v53 = sub_272376DFC();
  v51 = *(v53 - 8);
  v4 = MEMORY[0x28223BE20](v53);
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v50 = &v43 - v7;
  MEMORY[0x28223BE20](v6);
  v52 = &v43 - v8;
  v57 = sub_2721F065C(&qword_280882DB0, &qword_272384778);
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v10 = &v43 - v9;
  v11 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  v54 = (v1 + 16);
  *(v1 + 24) = v11;
  v12 = (v1 + 24);
  v49 = OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_startedRunning;
  sub_272376DEC();
  v47 = OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_lastUpdated;
  sub_272376DEC();
  v46 = OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_lastSaved;
  sub_272376DEC();
  v13 = (v1 + OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_sysConfigString);
  *v13 = 0x524F525245;
  v13[1] = 0xE500000000000000;
  v14 = (v1 + OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_buildVersion);
  swift_beginAccess();
  v15 = *&a20250625[8];
  *v14 = *a20250625;
  v14[1] = v15;
  v16 = a1[3];
  v63 = a1;
  sub_27220300C(a1, v16);
  sub_272316D80();

  v56 = v10;
  v17 = v58;
  sub_2723787AC();
  if (v17)
  {

    v18 = v2;
  }

  else
  {
    v19 = v54;
    v58 = v12;
    v45 = v13;
    v44 = v14;
    v20 = v55;
    sub_2721F065C(&qword_280882D98, &unk_272384768);
    v62 = 0;
    sub_272316DF4(&qword_280882DB8, &qword_280882DC0, &protocol conformance descriptor for VANRDebugEvent, MEMORY[0x277D83978]);
    v21 = v57;
    v22 = v56;
    sub_2723784FC();
    v23 = v61;
    swift_beginAccess();
    *v19 = v23;

    sub_2721F065C(&qword_280881858, &unk_27237C260);
    LOBYTE(v61) = 1;
    sub_2722B00A0(&qword_280882820, MEMORY[0x277D83AC8], MEMORY[0x277D83978]);
    sub_2723784FC();
    v18 = v2;
    v24 = v60;
    v25 = v58;
    swift_beginAccess();
    *v25 = v24;

    LOBYTE(v60) = 2;
    sub_272316C54(&qword_280882D70, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v26 = v52;
    v27 = v53;
    sub_2723784FC();
    v28 = v49;
    swift_beginAccess();
    v29 = *(v51 + 40);
    v51 += 40;
    v58 = v29;
    (v29)(v18 + v28, v26, v27);
    swift_endAccess();
    LOBYTE(v60) = 3;
    v30 = v50;
    sub_2723784FC();
    v31 = v47;
    swift_beginAccess();
    (v58)(v18 + v31, v30, v27);
    swift_endAccess();
    LOBYTE(v60) = 4;
    v32 = v48;
    sub_2723784FC();
    v33 = v46;
    swift_beginAccess();
    (v58)(v18 + v33, v32, v27);
    swift_endAccess();
    LOBYTE(v60) = 5;
    v34 = sub_2723784AC();
    v36 = v35;
    v37 = v45;
    swift_beginAccess();
    *v37 = v34;
    v37[1] = v36;

    v59 = 6;
    v39 = sub_2723784AC();
    v41 = v40;
    (*(v20 + 8))(v22, v21);
    v42 = v44;
    swift_beginAccess();
    *v42 = v39;
    v42[1] = v41;
  }

  sub_2722039C8(v63);
  return v18;
}

uint64_t sub_272315A88@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 336))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_272315B10(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2721F065C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

void *sub_272315CEC(void *a1)
{
  v3 = sub_2721F065C(&qword_280882E30, &unk_2723852E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = sub_27220300C(a1, a1[3]);
  sub_27230D480();
  sub_2723787AC();
  if (v1)
  {
    sub_2722039C8(a1);
  }

  else
  {
    sub_2721F065C(&qword_280882C98, &qword_272384718);
    sub_272318894(&qword_280882E38, sub_27231890C, MEMORY[0x277D83978]);
    sub_2723784FC();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_2722039C8(a1);
  }

  return v7;
}

unint64_t sub_272315EA0()
{
  result = qword_28088F5E8;
  if (!qword_28088F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088F5E8);
  }

  return result;
}

uint64_t sub_272315EF4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(&qword_280882CB8, &qword_272384728);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_272315F6C()
{
  result = qword_280882CC8;
  if (!qword_280882CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882CC8);
  }

  return result;
}

uint64_t sub_272315FC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000027238FFA0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6C6C6F726E65 && a2 == 0xEB0000000073746ELL || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_272316124@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2721F065C(&qword_280882E18, &qword_2723852D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  sub_27220300C(a1, a1[3]);
  sub_272315EA0();
  sub_2723787AC();
  if (v2)
  {
    return sub_2722039C8(a1);
  }

  v32 = 0;
  v9 = sub_2723784AC();
  v11 = v10;
  v26 = v9;
  v31 = 1;
  v12 = sub_2723784AC();
  v27 = v13;
  v25 = v12;
  sub_2721F065C(&qword_280882CB8, &qword_272384728);
  v30 = 2;
  sub_272315EF4(&qword_280882E20, sub_272318840, MEMORY[0x277D83978]);
  sub_2723784FC();
  v24 = v28;
  v29 = 3;
  v14 = sub_2723784AC();
  v16 = v15;
  v17 = *(v6 + 8);
  v23 = v14;
  v17(v8, v5);

  v18 = v27;

  v19 = v24;

  sub_2722039C8(a1);

  v21 = v25;
  *a2 = v26;
  a2[1] = v11;
  a2[2] = v21;
  a2[3] = v18;
  v22 = v23;
  a2[4] = v19;
  a2[5] = v22;
  a2[6] = v16;
  return result;
}

unint64_t sub_272316478()
{
  result = qword_28088F5F0;
  if (!qword_28088F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088F5F0);
  }

  return result;
}

unint64_t sub_2723164CC()
{
  result = qword_280882CD8;
  if (!qword_280882CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882CD8);
  }

  return result;
}

uint64_t sub_272316520(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C69466F69647561 && a2 == 0xE900000000000065 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_27237865C();

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

uint64_t sub_272316634@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2721F065C(&qword_280882E08, &qword_2723852D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  sub_27220300C(a1, a1[3]);
  sub_272316478();
  sub_2723787AC();
  if (v2)
  {
    return sub_2722039C8(a1);
  }

  v23 = 0;
  v9 = sub_2723784AC();
  v11 = v10;
  v19 = v9;
  v22 = 1;
  v17 = sub_2723784AC();
  v18 = v12;
  v20 = 2;
  sub_2723187EC();
  sub_2723784FC();
  (*(v6 + 8))(v8, v5);
  v13 = v21;
  result = sub_2722039C8(a1);
  *a2 = v19;
  *(a2 + 8) = v11;
  v15 = v18;
  *(a2 + 16) = v17;
  *(a2 + 24) = v15;
  *(a2 + 32) = v13;
  return result;
}

unint64_t sub_272316894()
{
  result = qword_280882CE0;
  if (!qword_280882CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882CE0);
  }

  return result;
}

unint64_t sub_2723168E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_27237869C();

  if (v2 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_27231693C()
{
  result = qword_280882CF0;
  if (!qword_280882CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882CF0);
  }

  return result;
}

unint64_t sub_272316990()
{
  result = qword_280882CF8;
  if (!qword_280882CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882CF8);
  }

  return result;
}

unint64_t sub_2723169E4()
{
  result = qword_280882D00;
  if (!qword_280882D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882D00);
  }

  return result;
}

unint64_t sub_272316A38()
{
  result = qword_280882D08;
  if (!qword_280882D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882D08);
  }

  return result;
}

unint64_t sub_272316A8C()
{
  result = qword_280882D10;
  if (!qword_280882D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882D10);
  }

  return result;
}

unint64_t sub_272316AE0()
{
  result = qword_280882D20;
  if (!qword_280882D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882D20);
  }

  return result;
}

unint64_t sub_272316B34()
{
  result = qword_280882D28;
  if (!qword_280882D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882D28);
  }

  return result;
}

unint64_t sub_272316B88()
{
  result = qword_280882D30;
  if (!qword_280882D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882D30);
  }

  return result;
}

unint64_t sub_272316BDC()
{
  result = qword_280882D38;
  if (!qword_280882D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882D38);
  }

  return result;
}

uint64_t sub_272316C54(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_272316C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_272316D0C()
{
  result = qword_28088F5F8;
  if (!qword_28088F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088F5F8);
  }

  return result;
}

unint64_t sub_272316D80()
{
  result = qword_28088F600[0];
  if (!qword_28088F600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088F600);
  }

  return result;
}

uint64_t sub_272316DF4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(&qword_280882D98, &unk_272384768);
    sub_272316C54(a2, 255, type metadata accessor for VANRDebugEvent, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_272316E98()
{
  result = qword_280882DC8;
  if (!qword_280882DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882DC8);
  }

  return result;
}

unint64_t sub_272316EF0()
{
  result = qword_280882DD0;
  if (!qword_280882DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882DD0);
  }

  return result;
}

unint64_t sub_272316F48()
{
  result = qword_280882DD8;
  if (!qword_280882DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882DD8);
  }

  return result;
}

unint64_t sub_272316FA0()
{
  result = qword_280882DE0;
  if (!qword_280882DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882DE0);
  }

  return result;
}

__n128 sub_272317014(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_272317030(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_272317078(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2723170D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_27231711C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_272317298(uint64_t a1)
{
  sub_272376DFC();
  if (v1 <= 0x3F)
  {
    sub_272317730(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_272317730(uint64_t a1)
{
  if (!qword_280882DE8)
  {
    sub_272376D5C();
    v1 = sub_27237801C();
    if (!v2)
    {
      atomic_store(v1, &qword_280882DE8);
    }
  }
}

uint64_t sub_272317790(uint64_t a1)
{
  result = sub_272376DFC();
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

unint64_t sub_272317C80()
{
  result = qword_2808902B0[0];
  if (!qword_2808902B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808902B0);
  }

  return result;
}

unint64_t sub_272317CD8()
{
  result = qword_2808904C0[0];
  if (!qword_2808904C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808904C0);
  }

  return result;
}

unint64_t sub_272317D30()
{
  result = qword_2808906D0[0];
  if (!qword_2808906D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808906D0);
  }

  return result;
}

unint64_t sub_272317D88()
{
  result = qword_2808908E0[0];
  if (!qword_2808908E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808908E0);
  }

  return result;
}

unint64_t sub_272317DE0()
{
  result = qword_280890AF0;
  if (!qword_280890AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280890AF0);
  }

  return result;
}

unint64_t sub_272317E38()
{
  result = qword_280890C00;
  if (!qword_280890C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280890C00);
  }

  return result;
}

unint64_t sub_272317E90()
{
  result = qword_280890C08[0];
  if (!qword_280890C08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280890C08);
  }

  return result;
}

unint64_t sub_272317EE8()
{
  result = qword_280890C90;
  if (!qword_280890C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280890C90);
  }

  return result;
}

unint64_t sub_272317F40()
{
  result = qword_280890C98[0];
  if (!qword_280890C98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280890C98);
  }

  return result;
}

unint64_t sub_272317F98()
{
  result = qword_280890D20;
  if (!qword_280890D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280890D20);
  }

  return result;
}

unint64_t sub_272317FF0()
{
  result = qword_280890D28[0];
  if (!qword_280890D28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280890D28);
  }

  return result;
}

unint64_t sub_272318048()
{
  result = qword_280890DB0;
  if (!qword_280890DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280890DB0);
  }

  return result;
}