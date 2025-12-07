uint64_t sub_21AF68EFC(uint64_t a1, uint64_t a2)
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

  v8 = 0;
  while (v5)
  {
LABEL_9:
    v10 = *(*(a2 + 56) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))) + 8);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 32);
    swift_unknownObjectRetain();
    v12(a1, ObjectType, v10);
    v5 &= v5 - 1;
    result = swift_unknownObjectRelease();
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }
}

uint64_t sub_21AF6903C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      swift_unknownObjectRetain_n();

      sub_21AF761E8();
      if (v2)
      {
        break;
      }

      v6 &= v6 - 1;

      result = swift_unknownObjectRelease_n();
      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRelease_n();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for BasePoirotScalarUDF(uint64_t a1)
{
  result = qword_27CD40570;
  if (!qword_27CD40570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21AF69264(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x21CEE7910]();
  v6 = v2 + qword_27CD40568;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 32))(v2, a1, a2, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_21AF57354();
    swift_allocError();
    *v9 = 0xD000000000000012;
    *(v9 + 8) = 0x800000021AF78CB0;
    *(v9 + 16) = 1;
    swift_willThrow();
  }

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_21AF69368(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + qword_27CD40568 + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  v3 = sub_21AF762D8();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_21AF693F0()
{
  v0 = sub_21AF762E8();
  sub_21AF5732C(v0 + qword_27CD40568);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21AF69578()
{
  v0 = sub_21AF762A8();
  sub_21AF5732C(v0 + *(*v0 + qword_27CD40990 + 16));

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21AF6960C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_21AF697D0(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_21AF69668(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21AF696A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AF75F68();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + *(*v2 + qword_27CD40990 + 16) + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  (*(v5 + 104))(v7, *MEMORY[0x277D3E220], v4);
  return sub_21AF76298();
}

uint64_t sub_21AF697D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BasePoirotTableUDF(0, *(v4 + qword_27CD40990), *(v4 + qword_27CD40990 + 8), a4);
  swift_allocObject();
  return sub_21AF696A4(a1, a2);
}

uint64_t sub_21AF69830(uint64_t a1)
{
  sub_21AF6990C(a1, &v3);
  if (v4)
  {
    sub_21AF546A0(&v3, v5);
    v1 = __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    MEMORY[0x28223BE20](v1);
    sub_21AF76528();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    sub_21AF6997C(&v3);
    return sub_21AF76008();
  }
}

uint64_t sub_21AF6990C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40600, &qword_21AF78690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AF6997C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40600, &qword_21AF78690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21AF699E4(const void *a1, uint64_t a2)
{
  v4 = sub_21AF75E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21AF75E68();
  if (a1)
  {
    v9 = a2 - a1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v9 <= 0x7FFFFFFF)
  {
    v10 = v8;
    sub_21AF75E88();
    v11 = sub_21AF75E68();
    (*(v5 + 8))(v7, v4);
    sqlite3_result_blob(v10, a1, v9, v11);
    return;
  }

  __break(1u);
}

uint64_t type metadata accessor for PObjFunction(uint64_t a1)
{
  result = qword_27CD40608;
  if (!qword_27CD40608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF69BC4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_21AF76188();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (!v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  if (sub_21AF76118())
  {
    return sub_21AF76008();
  }

  v14 = v4 + qword_27CD40568;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_21AF57354();
    swift_allocError();
    *v19 = 0xD000000000000012;
    *(v19 + 8) = 0x800000021AF78CB0;
    *(v19 + 16) = 1;
    return swift_willThrow();
  }

  v15 = *(v14 + 8);
  ObjectType = swift_getObjectType();
  v17 = (*(v15 + 8))(ObjectType, v15);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    v34 = v17;
    v18 = (*(v8 + 16))(v11, v13, v7);
    MEMORY[0x28223BE20](v18);
    v31[-2] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40368, &qword_21AF784C0);
    sub_21AF760D8();
    if (v32)
    {
      swift_unknownObjectRelease();
      v20 = sub_21AF75FA8();
      sub_21AF5AF00();
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D3E258], v20);
      swift_willThrow();
      return (*(v8 + 8))(v11, v7);
    }

    v22 = v31[0];
    v23 = v31[1];
    result = (*(v8 + 8))(v11, v7);
    v33[3] = MEMORY[0x277D838B0];
    v33[4] = MEMORY[0x277D3E5B0];
    v33[0] = v22;
    v33[1] = v23;
    if (v12 != 1)
    {
      v24 = sub_21AF760E8();
      v25 = v34;
      v26 = v24;
      v28 = v27;
      v29 = MEMORY[0x277D838B0];
      v30 = __swift_project_boxed_opaque_existential_1(v33, MEMORY[0x277D838B0]);
      sub_21AF6B5C4(v30, v26, v28, a1, v25, v29, MEMORY[0x277D3E5B0]);

      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v33);
    }

LABEL_14:
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21AF69F8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21AF69FD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

void sub_21AF6A030()
{
  strcpy(&qword_27CD40618, "eventTimestamp");
  unk_27CD40627 = -18;
  word_27CD40628 = 8;
}

uint64_t static Column.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD40280 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = unk_27CD40620;
  v3 = word_27CD40628;
  v4 = HIBYTE(word_27CD40628);
  *a1 = qword_27CD40618;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

void sub_21AF6A0EC()
{
  strcpy(&qword_27CD40630, "eventMessage");
  algn_27CD40638[5] = 0;
  *&algn_27CD40638[6] = -5120;
  word_27CD40640 = 266;
}

uint64_t static Column.message.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD40288 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *algn_27CD40638;
  v3 = word_27CD40640;
  v4 = HIBYTE(word_27CD40640);
  *a1 = qword_27CD40630;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t getEnumTagSinglePayload for PStreamError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PStreamError(_WORD *result, int a2, int a3)
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

unint64_t sub_21AF6A288()
{
  result = qword_27CD40648;
  if (!qword_27CD40648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40648);
  }

  return result;
}

uint64_t sub_21AF6A2DC()
{
  sub_21AF76BE8();
  MEMORY[0x21CEE7870](0);
  return sub_21AF76C08();
}

uint64_t sub_21AF6A348(uint64_t a1)
{
  sub_21AF76BE8();
  MEMORY[0x21CEE7870](0);
  return sub_21AF76C08();
}

uint64_t sub_21AF6A388@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result)
  {
    *a3 = result;
    *(a3 + 8) = a2 + result;
    *(a3 + 16) = 0;
  }

  else
  {
    result = sub_21AF76118();
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = (result & 1) != 0;
  }

  return result;
}

uint64_t StreamElement.data.getter()
{
  v1 = *(v0 + 8);
  sub_21AF567A4(v1, *(v0 + 16));
  return v1;
}

uint64_t StreamElement.init(timestamp:data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 16) = a2;
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21AF6A468(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21AF6A4BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

id SerializableMessage<>.makeSerializedData()()
{
  result = [v0 data];
  if (result)
  {
    v2 = result;
    v3 = sub_21AF75E08();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21AF6A5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v8 = sub_21AF76488();
  v19[0] = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40338, &unk_21AF77F80);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - v15;
  v19[1] = *(type metadata accessor for AttributedMessage(0) + 20);
  v19[2] = a1;
  v19[3] = a2;
  sub_21AF765D8();
  v17 = *v5;
  sub_21AF58D88(v16, v14);
  if ((*(v19[0] + 48))(v14, 1, v8) == 1)
  {
    sub_21AF567F8(v14, &qword_27CD40338, &unk_21AF77F80);
    sub_21AF76008();
  }

  else
  {
    sub_21AF5D038(v14, v10);
    sub_21AF6AC78(v20, v17);
    sub_21AF6B194(v10);
  }

  return sub_21AF567F8(v16, &qword_27CD40338, &unk_21AF77F80);
}

uint64_t sub_21AF6A90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v6 = sub_21AF76488();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40338, &unk_21AF77F80);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - v14;
  type metadata accessor for AttributedMessage(0);
  v18[0] = a1;
  v18[1] = a2;
  sub_21AF76618();
  v16 = *v3;
  sub_21AF58D88(v15, v13);
  if ((*(v7 + 48))(v13, 1, v6) == 1)
  {
    sub_21AF567F8(v13, &qword_27CD40338, &unk_21AF77F80);
    sub_21AF76008();
  }

  else
  {
    sub_21AF5D038(v13, v9);
    sub_21AF6AC78(v19, v16);
    sub_21AF6B194(v9);
  }

  return sub_21AF567F8(v15, &qword_27CD40338, &unk_21AF77F80);
}

uint64_t type metadata accessor for AttributedMessage(uint64_t a1)
{
  result = qword_27CD40650;
  if (!qword_27CD40650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF6AC78(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v38 = a1;
  v3 = sub_21AF75E98();
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_21AF76648();
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21AF76418();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21AF76488();
  MEMORY[0x28223BE20](v12);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21AF59C28(v2, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        return sub_21AF76098();
      }

      else
      {
        return sub_21AF76048();
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      return sub_21AF76058();
    }

    else if (EnumCaseMultiPayload == 3)
    {
      return sub_21AF760A8();
    }

    else
    {
      return sub_21AF76038();
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        sub_21AF546A0(v14, v37);
        sub_21AF63F70(v37, v36);
        sub_21AF75FB8();
      }

      else
      {
        if (EnumCaseMultiPayload != 9)
        {
          v18 = v34;
          v19 = v32;
          (*(v34 + 32))(v7, v14, v32);
          if (v33)
          {
            swift_unknownObjectRetain();
            v20 = sub_21AF765C8();
            v22 = v21;
            sub_21AF765F8();
            v23 = v19;
            swift_getObjectType();
            v24 = sub_21AF76518();
            v26 = v25;
            swift_unknownObjectRelease();
            sub_21AF70688(v20, v22, v24, v26, v38);
            swift_unknownObjectRelease();

            return (*(v18 + 8))(v7, v23);
          }

          else
          {
            v27 = sub_21AF76608();
            v29 = v28;
            sub_21AF75E88();
            sub_21AF75FF8();
            sub_21AF559E4(v27, v29);
            (*(v31 + 8))(v5, v3);
            return (*(v18 + 8))(v7, v19);
          }
        }

        sub_21AF546A0(v14, v37);
        sub_21AF63F70(v37, v36);
        sub_21AF69830(v36);
      }

      sub_21AF567F8(v36, &qword_27CD40600, &qword_21AF78690);
      return __swift_destroy_boxed_opaque_existential_1(v37);
    }

    v16 = v35;
    if (EnumCaseMultiPayload == 5)
    {
      return sub_21AF76078();
    }

    else if (EnumCaseMultiPayload == 6)
    {
      return sub_21AF75FE8();
    }

    else
    {
      (*(v9 + 32))(v11, v14, v8);
      sub_21AF763F8();
      if (v16)
      {
        MEMORY[0x21CEE7B40](v16);
        sub_21AF76008();
      }

      else
      {
        sub_21AF76088();
      }

      return (*(v9 + 8))(v11, v8);
    }
  }
}

uint64_t sub_21AF6B194(uint64_t a1)
{
  v2 = sub_21AF76488();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AF6B218(uint64_t a1)
{
  result = sub_21AF6B29C();
  if (v2 <= 0x3F)
  {
    result = sub_21AF76648();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_21AF6B29C()
{
  result = qword_27CD40660;
  if (!qword_27CD40660)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CD40660);
  }

  return result;
}

uint64_t sub_21AF6B2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v9 = sub_21AF76648();
  v10 = *(v9 - 8);
  result = MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (__OFSUB__(a2, 4))
    {
      __break(1u);
    }

    else
    {
      v19 = result;
      result = sub_21AF6D964(*(a1 + a2 - 4));
      if (!v4)
      {
        v18 = a4;
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_21AF76668();
        swift_unknownObjectRelease();
        v15 = v18;
        *v18 = a3;
        *(v15 + 1) = &off_282C89A70;
        v16 = type metadata accessor for AttributedMessage(0);
        (*(v10 + 32))(&v15[*(v16 + 20)], v13, v19);
      }
    }
  }

  else
  {
    sub_21AF57354();
    swift_allocError();
    *v14 = 0xD000000000000031;
    *(v14 + 8) = 0x800000021AF794E0;
    *(v14 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_21AF6B4D8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t (*sub_21AF6B5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7))(uint64_t)
{
  v25 = a3;
  v26 = a5;
  v24 = a2;
  v11 = sub_21AF75E98();
  v27 = *(v11 - 8);
  v28 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a6;
  v34 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a1, a6);
  __swift_project_boxed_opaque_existential_1(v32, v33);
  result = sub_21AF76538();
  v16 = result + 4;
  if (__OFADD__(result, 4))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_21AF75EA8();
  if (v16 < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v16 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v29 = a4;
  v17 = result(v16);

  if (v17)
  {
    v31 = v17;
    v18 = sub_21AF76538();
    v19 = sub_21AF6D020(v24, v25);
    v26 = &v24;
    v22 = MEMORY[0x28223BE20](v19);
    *(&v24 - 2) = &v31;
    *(&v24 - 1) = v18;
    v23 = v22;
    sub_21AF76528();
    *(v30 + v18) = v23;
    sub_21AF75E88();
    sub_21AF76068();
    (*(v27 + 8))(v13, v28);
  }

  else
  {
    sub_21AF6B8E8();
    v20 = swift_allocError();
    *v21 = 3;
    swift_willThrow();
    swift_getErrorValue();
    sub_21AF76028();
    MEMORY[0x21CEE7B40](v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(v32);
}

unint64_t sub_21AF6B8E8()
{
  result = qword_27CD40668;
  if (!qword_27CD40668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40668);
  }

  return result;
}

void *sub_21AF6B93C@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  v4 = **(v2 + 16);
  result = memcpy(v4, __src, *(v2 + 24));
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

PoirotUDFs::Column __swiftcall Column.init(name:type:hidden:)(PoirotUDFs::Column name, PoirotUDFs::ColumnType type, Swift::Bool hidden)
{
  v4 = *type;
  *v3 = name.name;
  *(v3 + 16) = v4;
  *(v3 + 17) = hidden;
  name.type = type;
  return name;
}

uint64_t Column.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static Column.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = sub_21AF76B58();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v4)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

uint64_t sub_21AF6BA84()
{
  v1 = *v0;
  sub_21AF76BE8();
  MEMORY[0x21CEE7870](v1);
  return sub_21AF76C08();
}

uint64_t sub_21AF6BAF8(uint64_t a1)
{
  v2 = *v1;
  sub_21AF76BE8();
  MEMORY[0x21CEE7870](v2);
  return sub_21AF76C08();
}

uint64_t sub_21AF6BB3C()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x6E6564646968;
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

uint64_t sub_21AF6BB84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21AF6C4E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21AF6BBB8(uint64_t a1)
{
  v2 = sub_21AF6C0E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21AF6BBF4(uint64_t a1)
{
  v2 = sub_21AF6C0E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Column.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40670, &qword_21AF77FE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v11 = *(v1 + 16);
  v9[1] = *(v1 + 17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21AF6C0E0();
  sub_21AF76C28();
  v15 = 0;
  v7 = v10;
  sub_21AF76AC8();
  if (!v7)
  {
    v14 = v11;
    v13 = 1;
    sub_21AF6C134();
    sub_21AF76AF8();
    v12 = 2;
    sub_21AF76AD8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Column.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40688, &qword_21AF77FF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21AF6C0E0();
  sub_21AF76C18();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v9 = sub_21AF76A88();
  v11 = v10;
  v12 = v9;
  v18 = 1;
  sub_21AF6C188();
  sub_21AF76AA8();
  v16 = v19;
  v17 = 2;
  v14 = sub_21AF76A98();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v16;
  *(a2 + 17) = v14 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21AF6C024(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = sub_21AF76B58();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v4)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

unint64_t sub_21AF6C0E0()
{
  result = qword_27CD40678;
  if (!qword_27CD40678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40678);
  }

  return result;
}

unint64_t sub_21AF6C134()
{
  result = qword_27CD40680;
  if (!qword_27CD40680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40680);
  }

  return result;
}

unint64_t sub_21AF6C188()
{
  result = qword_27CD40690;
  if (!qword_27CD40690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40690);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_21AF6C1F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_21AF6C238(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Column.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Column.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21AF6C3DC()
{
  result = qword_27CD40698;
  if (!qword_27CD40698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40698);
  }

  return result;
}

unint64_t sub_21AF6C434()
{
  result = qword_27CD406A0;
  if (!qword_27CD406A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD406A0);
  }

  return result;
}

unint64_t sub_21AF6C48C()
{
  result = qword_27CD406A8;
  if (!qword_27CD406A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD406A8);
  }

  return result;
}

uint64_t sub_21AF6C4E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21AF76B58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_21AF76B58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6564646968 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21AF76B58();

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

uint64_t type metadata accessor for PStreamCursor(uint64_t a1)
{
  result = qword_27CD406C0;
  if (!qword_27CD406C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF6C6E4(uint64_t a1)
{
  swift_weakInit();
  type metadata accessor for PStreamConnection(0);
  if (swift_dynamicCastClass())
  {
    swift_weakAssign();
    v3 = sub_21AF6304C();
    if (!v2)
    {
      *(v1 + qword_27CD406B8) = v3;
      return sub_21AF76228();
    }
  }

  else
  {
    sub_21AF6CF40();
    swift_allocError();
    swift_willThrow();
  }

  swift_weakDestroy();
  type metadata accessor for PStreamCursor(0);
  return swift_deallocPartialClassInstance();
}

uint64_t sub_21AF6C7E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_21AF75E48();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD406D0, qword_21AF78208);
  v12 = sub_21AF75F88();
  result = v12(a1, a2, a3);
  if (!v4 && !result)
  {
    v25 = 0;
    v14 = sub_21AF725E8(a2);
    v17 = v14;
    v18 = v15;
    v19 = v16;
    sub_21AF6C9FC(v14 & 1, v15, v16, 0, a3);
    v20 = *(v3 + qword_27CD406B8);
    sub_21AF71EDC(v17 & 1, v18, v19);

    v21 = OBJC_IVAR____TtC10PoirotUDFs17PStreamEnumerator_columns;
    swift_beginAccess();
    (*(v9 + 24))(&v20[v21], v11, v8);
    swift_endAccess();
    (*(v9 + 8))(v11, v8);
    v22 = *(v20 + 5);
    v23 = *(v20 + 6);
    __swift_project_boxed_opaque_existential_1(v20 + 2, v22);
    (*(v23 + 24))(v22, v23);
    return v25;
  }

  return result;
}

uint64_t sub_21AF6C9FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = result;
  v8 = *(a5 + 16);
  if (v8)
  {
    if (v8 > *(a2 + 16))
    {
LABEL_43:
      __break(1u);
      return result;
    }

    v10 = (a2 + 32);
    v11 = *(sub_21AF76188() - 8);
    v12 = a5 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    v14 = INFINITY;
    v15 = 0.0;
    do
    {
      v16 = *v10++;
      result = sub_21AF76158();
      HIDWORD(v19) = v16 - 4;
      LODWORD(v19) = v16 - 4;
      v18 = v19 >> 2;
      if (v18 > 2)
      {
        if (v18 == 3)
        {
          if (v17 < v14)
          {
            v20 = 0.0 - v17;
            if (v20 != INFINITY)
            {
              *&v20 += (*&v20 >> 63) | 1;
            }

            v14 = -v20;
          }
        }

        else if (v18 == 7 && v15 <= v17)
        {
          v15 = v17;
        }
      }

      else if (v18)
      {
        if (v18 == 1 && v17 <= v14)
        {
          v14 = v17;
        }
      }

      else if (v15 < v17)
      {
        v15 = v17 + 0.0;
        if (v17 != INFINITY)
        {
          *&v15 += (*&v15 >> 63) | 1;
        }
      }

      v12 += v13;
      --v8;
    }

    while (v8);
  }

  else
  {
    v14 = INFINITY;
    v15 = 0.0;
  }

  if (v15 >= 0.0)
  {
    v21 = v15;
  }

  else
  {
    v21 = 0.0;
  }

  if (v14 >= 0.0)
  {
    v22 = v14;
  }

  else
  {
    v22 = 0.0;
  }

  if (v22 >= v21)
  {
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  if (v21 > v23)
  {
    __break(1u);
    goto LABEL_43;
  }

  v24 = v21 == 0.0 && v23 == INFINITY;
  if (!v24 || (v7 & 1) != 0)
  {
    v25 = *(v6 + qword_27CD406B8);
    v26 = v25[5];
    v27 = v25[6];
    __swift_project_boxed_opaque_existential_1(v25 + 2, v26);
    return (*(v27 + 16))(v7 & 1, v26, v27, v21, v23);
  }

  return result;
}

uint64_t sub_21AF6CC38(int a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD402A8, &qword_21AF77190);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v9 - v6;
  sub_21AF6FB20(a1, v9 - v6);
  if (!v2)
  {
    sub_21AF6FD4C(v7, a2);
    sub_21AF6CED8(v7);
  }

  return 0;
}

uint64_t sub_21AF6CD00()
{
  v2 = *(v0 + qword_27CD406B8);
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  result = (*(v4 + 32))(v3, v4);
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD406D0, qword_21AF78208);
    v6 = sub_21AF75F88();
    return v6();
  }

  return result;
}

uint64_t sub_21AF6CDBC()
{
  v1 = *(v0 + qword_27CD406B8);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  return (*(v3 + 40))(v2, v3) & 1;
}

uint64_t sub_21AF6CE20()
{
  swift_weakDestroy();
}

uint64_t sub_21AF6CE60()
{
  v0 = sub_21AF76218();

  swift_weakDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21AF6CED8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD402A8, &qword_21AF77190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21AF6CF40()
{
  result = qword_27CD406D8;
  if (!qword_27CD406D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD406D8);
  }

  return result;
}

unint64_t sub_21AF6D020(uint64_t a1, uint64_t a2)
{
  v7 = v2;
  swift_beginAccess();
  v10 = v2[3];
  if (v10[2])
  {

    v11 = sub_21AF66C60(a1, a2);
    if (v12)
    {
      v4 = *(v10[7] + 8 * v11);

      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_16;
      }

      if (!HIDWORD(v4))
      {
        return v4;
      }

      __break(1u);
    }
  }

  swift_beginAccess();
  v13 = *(v7[2] + 16);
  if (v13 > 0x7FFFFFFE)
  {
    sub_21AF6B8E8();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
    return v4;
  }

  v4 = v7[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  v5 = sub_21AF765A8();
  v6 = v14;
  swift_unknownObjectRelease();
  if (!v3)
  {
    v4 = v13 + 1;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v7[3];
    v7[3] = 0x8000000000000000;
    sub_21AF6D800(v13 + 1, a1, a2, isUniquelyReferenced_nonNull_native);
    v7[3] = v22;
    swift_endAccess();
    swift_beginAccess();
    v10 = v7[2];
    swift_unknownObjectRetain();
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v7[2] = v10;
    if (v16)
    {
LABEL_10:
      v18 = v10[2];
      v17 = v10[3];
      if (v18 >= v17 >> 1)
      {
        v10 = sub_21AF6D3BC((v17 > 1), v18 + 1, 1, v10);
      }

      v10[2] = v18 + 1;
      v19 = &v10[2 * v18];
      v19[4] = v5;
      v19[5] = v6;
      v7[2] = v10;
      swift_endAccess();
      swift_unknownObjectRelease();
      return v4;
    }

LABEL_16:
    v10 = sub_21AF6D3BC(0, v10[2] + 1, 1, v10);
    v7[2] = v10;
    goto LABEL_10;
  }

  return v4;
}

char *sub_21AF6D2A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40330, &qword_21AF773C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_21AF6D3BC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD406E0, &qword_21AF78268);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD406E8, &qword_21AF78270);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21AF6D4F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD406F8, &qword_21AF78288);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_21AF6D600(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40308, &qword_21AF78290);
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

char *sub_21AF6D70C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD406F0, &unk_21AF78278);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_21AF6D800(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_21AF66C60(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21AF66E40(v16, a4 & 1);
      result = sub_21AF66C60(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_21AF76B88();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_21AF7413C();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_21AF6D964(unsigned int a1)
{
  if (!a1)
  {
    sub_21AF6B8E8();
    swift_allocError();
    v5 = 2;
    goto LABEL_5;
  }

  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16) < a1)
  {
    sub_21AF6B8E8();
    swift_allocError();
    v5 = 1;
LABEL_5:
    *v4 = v5;
    return swift_willThrow();
  }

  return *(v3 + 16 * (a1 - 1) + 32);
}

uint64_t getEnumTagSinglePayload for MessageSchemaRegistry.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageSchemaRegistry.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21AF6DB78()
{
  result = qword_27CD40700;
  if (!qword_27CD40700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40700);
  }

  return result;
}

uint64_t type metadata accessor for PMessageNameFunction(uint64_t a1)
{
  result = qword_27CD40708;
  if (!qword_27CD40708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF6DC58(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for AttributedMessage(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21AF76648();
  result = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    v26 = v12;
    v27 = a1;
    v15 = *(sub_21AF76188() - 8);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    if (sub_21AF76118())
    {
      return sub_21AF76008();
    }

    else
    {
      v17 = v4 + qword_27CD40568;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v17 + 8);
        ObjectType = swift_getObjectType();
        v25 = (*(v18 + 8))(ObjectType, v18);
        result = swift_unknownObjectRelease();
        if (!v3)
        {
          v24 = off_282C89A80;
          v20 = type metadata accessor for MessageInBlobBridge();
          (v24)(a2 + v16, v20, &off_282C89A70);
          swift_unknownObjectRelease();
          v22 = v26;
          (*(v26 + 16))(v14, &v9[*(v7 + 20)], v10);
          sub_21AF57410(v9);
          sub_21AF765F8();
          (*(v22 + 8))(v14, v10);
          swift_getObjectType();
          sub_21AF76518();
          swift_unknownObjectRelease();
          sub_21AF76088();
        }
      }

      else
      {
        sub_21AF57354();
        swift_allocError();
        *v21 = 0xD000000000000012;
        *(v21 + 8) = 0x800000021AF78CB0;
        *(v21 + 16) = 1;
        return swift_willThrow();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for PEnumFunction(uint64_t a1)
{
  result = qword_27CD40718;
  if (!qword_27CD40718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF6E000(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_21AF76188();
  v4 = sub_21AF760E8();
  if (v3)
  {
    return v4;
  }

  v5 = v2 + qword_27CD40568;
  if (!swift_unknownObjectWeakLoadStrong())
  {

    sub_21AF57354();
    swift_allocError();
    *v8 = 0xD000000000000012;
    *(v8 + 8) = 0x800000021AF78CB0;
    *(v8 + 16) = 1;
    return swift_willThrow();
  }

  v6 = *(v5 + 8);
  ObjectType = swift_getObjectType();
  (*(v6 + 16))(ObjectType, v6);
  swift_unknownObjectRelease();
  swift_getObjectType();
  sub_21AF76598();

  swift_unknownObjectRelease();
  if ((sub_21AF76128() & 1) == 0)
  {
    if (sub_21AF76178())
    {
      sub_21AF76148();
      swift_getObjectType();
      sub_21AF76548();
      sub_21AF76088();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  sub_21AF760E8();
  swift_getObjectType();
  v9 = sub_21AF76558();

  if (v9 < 0xFFFFFFFF80000000)
  {
    goto LABEL_17;
  }

  if (v9 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
    return v4;
  }

  sub_21AF76048();
  return swift_unknownObjectRelease();
}

uint64_t sub_21AF6E40C()
{
  v0 = sub_21AF762A8();
  sub_21AF5732C(v0 + *(*v0 + qword_27CD409E0 + 16));

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21AF6E4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_21AF6E600(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_21AF6E4D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AF75F68();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + *(*v2 + qword_27CD409E0 + 16) + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  (*(v5 + 104))(v7, *MEMORY[0x277D3E228], v4);
  return sub_21AF76298();
}

uint64_t sub_21AF6E600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PStreamTableBase(0, *(v4 + qword_27CD409E0), *(v4 + qword_27CD409E0 + 8), a4);
  swift_allocObject();
  return sub_21AF6E4D4(a1, a2);
}

unint64_t sub_21AF6E674()
{
  result = qword_27CD407A8;
  if (!qword_27CD407A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD407A8);
  }

  return result;
}

uint64_t type metadata accessor for PBase64DecodeFunction(uint64_t a1)
{
  result = qword_27CD407B0;
  if (!qword_27CD407B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF6E754(uint64_t a1, uint64_t a2)
{
  v5 = sub_21AF76188();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21AF75E98();
  v73 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v64 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21AF767B8();
  v12 = MEMORY[0x28223BE20](v11);
  v13 = MEMORY[0x28223BE20](v12);
  v14 = MEMORY[0x28223BE20](v13);
  v19 = v56 - v18;
  v20 = *(a2 + 16);
  if ((v20 - 1) > 1)
  {
    return sub_21AF76018();
  }

  v62 = v9;
  v63 = a1;
  v58 = v17;
  v59 = v16;
  v60 = v15;
  v61 = v14;
  v21 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v22 = sub_21AF760F8();
  v24 = v6;
  if (v23 >> 60 == 15)
  {
    v25 = (*(v6 + 16))(v8, v21, v5);
    MEMORY[0x28223BE20](v25);
    v56[-2] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40368, &qword_21AF784C0);
    sub_21AF760D8();
    if (v2)
    {
      return (*(v6 + 8))(v8, v5);
    }

    v39 = v65;
    v40 = v66;
    v41 = v67;
    (*(v6 + 8))(v8, v5);
    if (v41)
    {
      v39 = 0;
      v40 = 0;
      v42 = 0;
      v43 = 0;
      v70 = 0;
    }

    else
    {
      v43 = MEMORY[0x277D3E5B0];
      v42 = MEMORY[0x277D838B0];
    }

    v68 = v39;
    v69 = v40;
    v71 = v42;
    v72 = v43;
    sub_21AF69830(&v68);
    return sub_21AF6997C(&v68);
  }

  v27 = v22;
  v28 = v23;
  v56[1] = v24;
  v57 = v2;
  sub_21AF767A8();
  sub_21AF76788();
  if (!v29)
  {
    v32 = v27;
    v34 = v28;
    v30 = v62;
    if (v20 == 2)
    {
      goto LABEL_20;
    }

LABEL_25:
    v44 = v64;
    sub_21AF75E88();
    sub_21AF75FF8();
    sub_21AF559E4(v32, v34);
    return (*(v73 + 8))(v44, v30);
  }

  v30 = v62;
  while (1)
  {
    v32 = sub_21AF75DE8();
    v34 = v33;

    if (v34 >> 60 == 15)
    {
      break;
    }

    v35 = v34 >> 62;
    if ((v34 >> 62) > 1)
    {
      if (v35 != 2 || *(v32 + 16) == *(v32 + 24))
      {
LABEL_17:
        sub_21AF6EE0C(v32, v34);
        break;
      }
    }

    else if (v35)
    {
      if (v32 == v32 >> 32)
      {
        goto LABEL_17;
      }
    }

    else if ((v34 & 0xFF000000000000) == 0)
    {
      goto LABEL_17;
    }

    sub_21AF559E4(v27, v28);
    sub_21AF767A8();
    sub_21AF76788();
    v28 = v34;
    v27 = v32;
    if (!v31)
    {
      goto LABEL_19;
    }
  }

  v32 = v27;
  v34 = v28;
LABEL_19:
  if (v20 != 2)
  {
    goto LABEL_25;
  }

LABEL_20:
  v36 = v57;
  v37 = sub_21AF760E8();
  if (v36)
  {
    return sub_21AF559E4(v32, v34);
  }

  v45 = v38;
  v46 = v37;
  if (sub_21AF767C8() == 946238581 && v47 == 0xE400000000000000)
  {
  }

  else
  {
    v49 = sub_21AF76B58();

    if ((v49 & 1) == 0)
    {
      v68 = 0;
      v69 = 0xE000000000000000;
      sub_21AF769B8();

      v68 = 0xD000000000000011;
      v69 = 0x800000021AF796D0;
      MEMORY[0x21CEE74A0](v46, v45);

      MEMORY[0x21CEE74A0](0xD000000000000011, 0x800000021AF796F0);
      sub_21AF76018();

      return sub_21AF559E4(v32, v34);
    }
  }

  v50 = v58;
  sub_21AF767A8();
  v52 = v59;
  v51 = v60;
  v53 = v50;
  v54 = v61;
  (*(v60 + 32))(v59, v53, v61);
  (*(v51 + 16))(v19, v52, v54);
  sub_21AF76788();
  if (v55)
  {
    sub_21AF76088();
    sub_21AF559E4(v32, v34);
  }

  else
  {
    sub_21AF76008();
    sub_21AF559E4(v32, v34);
  }

  return (*(v51 + 8))(v52, v61);
}

uint64_t sub_21AF6EE0C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21AF559E4(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for PGetFunction(uint64_t a1)
{
  result = qword_27CD407C0;
  if (!qword_27CD407C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF6EEAC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for AttributedMessage(0);
  result = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (!v11)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  sub_21AF76188();
  if (sub_21AF76118())
  {
    return sub_21AF76008();
  }

  v12 = v4 + qword_27CD40568;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(ObjectType, v13);
    result = swift_unknownObjectRelease();
    if (!v3)
    {
      v15 = off_282C89A80;
      type metadata accessor for MessageInBlobBridge();
      v15();
      result = swift_unknownObjectRelease();
      if (v11 != 1)
      {
        v17 = sub_21AF760E8();
        sub_21AF6A90C(v17, v18, a1);

        return sub_21AF57410(v10);
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_21AF57354();
    swift_allocError();
    *v16 = 0xD000000000000012;
    *(v16 + 8) = 0x800000021AF78CB0;
    *(v16 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t Column.columnType.getter()
{
  v1 = *(v0 + 16);
  if (v1 <= 4)
  {
    if (*(v0 + 16) > 1u)
    {
      v2 = MEMORY[0x277D849A8];
      v3 = MEMORY[0x277D84A28];
      if (v1 != 3)
      {
        v3 = MEMORY[0x277D84CC0];
      }

      v4 = v1 == 2;
      goto LABEL_10;
    }

    if (!*(v0 + 16))
    {
      return MEMORY[0x277D837D0];
    }

LABEL_18:
    v6 = MEMORY[0x277CC9318];
    sub_21AF5CE88();
    return v6;
  }

  if (*(v0 + 16) > 7u)
  {
    if (v1 == 8)
    {
      return MEMORY[0x277D839F8];
    }

    if (v1 == 9)
    {
      return MEMORY[0x277D839B0];
    }

    goto LABEL_18;
  }

  v2 = MEMORY[0x277D84D38];
  v3 = MEMORY[0x277D83A90];
  if (v1 != 6)
  {
    v3 = MEMORY[0x277D839F8];
  }

  v4 = v1 == 5;
LABEL_10:
  if (v4)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t Column.columnName.getter()
{
  v1 = *v0;

  return v1;
}

BOOL Column.isValid(_:)(void *a1)
{
  v43 = a1;
  v2 = sub_21AF76198();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v36 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v36 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v15 = *v1;
  v14 = v1[1];
  v16 = *(v1 + 16);
  v17 = *(v1 + 17);
  v47 = *v1;
  v48 = v14;
  v49 = v16;
  v50 = v17;
  sub_21AF6F9F4();
  v18 = v46;
  sub_21AF75F38();
  if (!v18)
  {
    v39 = v17;
    v51 = v16;
    v40 = v15;
    v41 = v14;
    v38 = v5;
    v42 = v13;
    v20 = v43;
    __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    sub_21AF75F18();
    v46 = 0;
    v22 = v45;
    v23 = *(v44 + 16);
    v37 = v11;
    v24 = v44;
    v23(v8, v11, v45);
    v25 = (*(v24 + 88))(v8, v22);
    v26 = *MEMORY[0x277D3E310];
    v27 = v22;
    v28 = *(v24 + 8);
    v28(v8, v27);
    if (v25 == v26)
    {
      v47 = v40;
      v48 = v41;
      v49 = v51;
      v50 = v39;
      sub_21AF6F668();
      if ((sub_21AF75EE8() & 1) == 0)
      {
        v35 = v45;
        v28(v37, v45);
        v28(v42, v35);
        return 0;
      }

      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      swift_getDynamicType();
      v29 = v38;
      v30 = v46;
      sub_21AF75F38();
      v46 = v30;
      v31 = v45;
      v32 = v37;
      if (v30)
      {
        v28(v37, v45);
        v28(v42, v31);
        return v19;
      }

      v28(v37, v45);
      (*(v44 + 32))(v32, v29, v31);
    }

    else
    {
      v32 = v37;
    }

    sub_21AF6F610();
    v33 = v45;
    sub_21AF76868();
    v34 = v42;
    sub_21AF76868();
    v28(v32, v33);
    v28(v34, v33);
    return v47 == v52;
  }

  return v19;
}

unint64_t sub_21AF6F610()
{
  result = qword_27CD407D0;
  if (!qword_27CD407D0)
  {
    sub_21AF76198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD407D0);
  }

  return result;
}

unint64_t sub_21AF6F668()
{
  result = qword_27CD407D8;
  if (!qword_27CD407D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD407D8);
  }

  return result;
}

uint64_t sub_21AF6F6E4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_21AF6F7A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    sub_21AF58834(0, v1, 0);
    v2 = v17;
    v4 = (a1 + 49);
    do
    {
      v5 = *(v4 - 17);
      v6 = *(v4 - 9);
      v7 = *(v4 - 1);
      v8 = *v4;
      v17 = v2;
      v9 = *(v2 + 16);
      v10 = *(v2 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_21AF58834((v10 > 1), v9 + 1, 1);
        v2 = v17;
      }

      v15 = &type metadata for Column;
      v16 = sub_21AF6F668();
      *&v12 = v5;
      *(&v12 + 1) = v6;
      v13 = v7;
      v14 = v8;
      *(v2 + 16) = v9 + 1;
      sub_21AF546A0(&v12, v2 + 40 * v9 + 32);
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t sub_21AF6F8BC()
{
  result = qword_27CD407E0;
  if (!qword_27CD407E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD407E0);
  }

  return result;
}

unint64_t sub_21AF6F914()
{
  result = qword_27CD407E8;
  if (!qword_27CD407E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD407E8);
  }

  return result;
}

uint64_t sub_21AF6F9A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD407F8, &qword_21AF785D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21AF6F9F4()
{
  v1 = *(v0 + 16);
  if (v1 <= 4)
  {
    if (*(v0 + 16) > 1u)
    {
      v2 = MEMORY[0x277D849A8];
      v3 = MEMORY[0x277D84A28];
      if (v1 != 3)
      {
        v3 = MEMORY[0x277D84CC0];
      }

      v4 = v1 == 2;
      goto LABEL_10;
    }

    if (!*(v0 + 16))
    {
      return MEMORY[0x277D837D0];
    }

LABEL_18:
    v6 = MEMORY[0x277CC9318];
    sub_21AF5CE88();
    return v6;
  }

  if (*(v0 + 16) > 7u)
  {
    if (v1 == 8)
    {
      return MEMORY[0x277D839F8];
    }

    if (v1 == 9)
    {
      return MEMORY[0x277D839B0];
    }

    goto LABEL_18;
  }

  v2 = MEMORY[0x277D84D38];
  v3 = MEMORY[0x277D83A90];
  if (v1 != 6)
  {
    v3 = MEMORY[0x277D839F8];
  }

  v4 = v1 == 5;
LABEL_10:
  if (v4)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21AF6FB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD402A8, &qword_21AF77190);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = v2[12];
  if (*(v13 + 16) && (v14 = sub_21AF66CD8(a1), (v15 & 1) != 0))
  {
    sub_21AF704D4(*(v13 + 56) + *(v7 + 72) * v14, v10);
    sub_21AF68394(v10, v12);
    return sub_21AF68394(v12, a2);
  }

  else
  {
    v28 = a1;
    v17 = v3[5];
    v18 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v17);
    (*(v18 + 8))(&v25, v17, v18);
    v19 = v27;
    if (v27 >> 60 == 15)
    {
      result = sub_21AF76A18();
      __break(1u);
    }

    else
    {
      v20 = v25;
      v21 = v26;
      v23 = v3[10];
      v22 = v3[11];
      __swift_project_boxed_opaque_existential_1(v3 + 7, v23);
      v25 = v20;
      v26 = v21;
      v27 = v19;
      (*(v22 + 24))(v28, &v25, v23, v22);
      return sub_21AF7091C(v20, v21, v19);
    }
  }

  return result;
}

uint64_t sub_21AF6FD4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AF76738();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD402A8, &qword_21AF77190);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_21AF766F8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  sub_21AF704D4(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_21AF567F8(v9, &qword_27CD402A8, &qword_21AF77190);
    return sub_21AF76008();
  }

  sub_21AF70544(v9, v16);
  sub_21AF705A8(v16, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_21AF76098();
      }

      else
      {
        sub_21AF76048();
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_21AF76058();
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_21AF760A8();
    }

    else
    {
      sub_21AF76038();
    }

    return sub_21AF7060C(v16);
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      sub_21AF76088();

      return sub_21AF7060C(v16);
    }

    if (EnumCaseMultiPayload == 9)
    {
      v27 = MEMORY[0x277CC9318];
      v28 = MEMORY[0x277D3E3B0];
      v26 = *v14;
      sub_21AF69830(&v26);
      sub_21AF7060C(v16);
      return sub_21AF567F8(&v26, &qword_27CD40600, &qword_21AF78690);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        *(&v24 - 4) = MEMORY[0x28223BE20](Strong);
        *(&v24 - 3) = v22;
        v23 = a2;
        sub_21AF764D8();
        sub_21AF7060C(v16);

        return swift_unknownObjectRelease();
      }

      else
      {
        result = sub_21AF76A18();
        __break(1u);
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_21AF76078();
      return sub_21AF7060C(v16);
    }

    if (EnumCaseMultiPayload == 6)
    {
      sub_21AF75FE8();
      return sub_21AF7060C(v16);
    }

    v19 = v25;
    (*(v25 + 32))(v6, v14, v4);
    v20 = v29;
    sub_21AF76728();
    if (v20)
    {
      MEMORY[0x21CEE7B40](v20);
      sub_21AF76008();
    }

    else
    {
      sub_21AF76088();
    }

    (*(v19 + 8))(v6, v4);
    return sub_21AF7060C(v16);
  }

  return result;
}

uint64_t sub_21AF70268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21AF765C8();
  v7 = v6;
  sub_21AF765F8();
  swift_getObjectType();
  v8 = sub_21AF76518();
  v10 = v9;
  swift_unknownObjectRelease();
  sub_21AF70688(v5, v7, v8, v10, a4);
}

uint64_t sub_21AF70308()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v1 = OBJC_IVAR____TtC10PoirotUDFs17PStreamEnumerator_columns;
  v2 = sub_21AF75E48();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  sub_21AF5732C(&v0[OBJC_IVAR____TtC10PoirotUDFs17PStreamEnumerator_bridge]);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for PStreamEnumerator(uint64_t a1)
{
  result = qword_280B17458;
  if (!qword_280B17458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF70420(uint64_t a1)
{
  result = sub_21AF75E48();
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

uint64_t sub_21AF704D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD402A8, &qword_21AF77190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AF70544(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AF766F8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AF705A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AF766F8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AF7060C(uint64_t a1)
{
  v2 = sub_21AF766F8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_21AF70688(const void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_21AF75E98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[3] = MEMORY[0x277D838B0];
  v24[4] = MEMORY[0x277D3E5B0];
  v24[0] = a1;
  v24[1] = a2;
  result = __swift_project_boxed_opaque_existential_1(v24, MEMORY[0x277D838B0]);
  v15 = a2 - a1;
  if (!a1)
  {
    v15 = 0;
  }

  v16 = v15 + 4;
  if (__OFADD__(v15, 4))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = result;
  result = sub_21AF75EA8();
  if (v16 < 0xFFFFFFFF80000000)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v16 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v23[1] = a5;
  v18 = (result)(v16);

  if (v18)
  {
    if (*v17)
    {
      v19 = v17[1] - *v17;
    }

    else
    {
      v19 = 0;
    }

    v22 = sub_21AF6D020(a3, a4);
    memcpy(v18, v24[0], v19);
    *&v18[v19] = v22;
    sub_21AF75E88();
    sub_21AF76068();
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    sub_21AF6B8E8();
    v20 = swift_allocError();
    *v21 = 3;
    swift_willThrow();
    swift_getErrorValue();
    sub_21AF76028();
    MEMORY[0x21CEE7B40](v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_21AF7091C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_21AF559E4(a2, a3);
  }

  return result;
}

uint64_t sub_21AF70938(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = MEMORY[0x277D84F90];
  *(v4 + 96) = sub_21AF67740(MEMORY[0x277D84F90]);
  sub_21AF75E48();
  *&v13[0] = v7;
  sub_21AF70AAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40810, &qword_21AF78698);
  sub_21AF70B04();
  sub_21AF76968();
  *(v4 + OBJC_IVAR____TtC10PoirotUDFs17PStreamEnumerator_bridge + 8) = 0;
  swift_unknownObjectWeakInit();
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 40))(v13, v8, v9);
  sub_21AF546A0(v13, v4 + 16);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 32))(v13, v10, v11);
  sub_21AF546A0(v13, v4 + 56);
  *(v4 + OBJC_IVAR____TtC10PoirotUDFs17PStreamEnumerator_bridge + 8) = a3;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

unint64_t sub_21AF70AAC()
{
  result = qword_27CD40808;
  if (!qword_27CD40808)
  {
    sub_21AF75E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40808);
  }

  return result;
}

unint64_t sub_21AF70B04()
{
  result = qword_27CD40818;
  if (!qword_27CD40818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD40810, &qword_21AF78698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40818);
  }

  return result;
}

uint64_t FieldToColumnMap.column.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

void *FieldToColumnMap.init<A>(messageColumnName:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = swift_allocObject();
  result[2] = a5;
  result[3] = a6;
  result[4] = a3;
  result[5] = a4;
  *(a7 + 24) = sub_21AF71004;
  *(a7 + 32) = result;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = 266;
  return result;
}

uint64_t sub_21AF70C38@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, char *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v24 = a2;
  v28 = a5;
  v9 = sub_21AF76908();
  v23 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = *(a4 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21AF63F70(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40820, &qword_21AF786E8);
  v16 = swift_dynamicCast();
  v17 = *(v13 + 56);
  if (v16)
  {
    v17(v12, 0, 1, a4);
    (*(v13 + 32))(v15, v12, a4);
    a3(v25, v15);
    if (v5)
    {
      return (*(v13 + 8))(v15, a4);
    }

    else
    {
      v19 = v26;
      if (v26)
      {
        v20 = v27;
        __swift_project_boxed_opaque_existential_1(v25, v26);
        (*(v20 + 16))(v24, v19, v20);
        (*(v13 + 8))(v15, a4);
        return __swift_destroy_boxed_opaque_existential_1(v25);
      }

      else
      {
        (*(v13 + 8))(v15, a4);
        sub_21AF68E64(v25);
        v21 = sub_21AF766F8();
        return (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
      }
    }
  }

  else
  {
    v17(v12, 1, 1, a4);
    (*(v23 + 8))(v12, v9);
    v25[0] = 0;
    v25[1] = 0xE000000000000000;
    sub_21AF769B8();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21AF76B28();
    MEMORY[0x21CEE74A0](0x20746F6E20736920, 0xEF2065687420666FLL);
    v22 = sub_21AF76C68();
    MEMORY[0x21CEE74A0](v22);

    MEMORY[0x21CEE74A0](0x6570797420, 0xE500000000000000);
    result = sub_21AF76A18();
    __break(1u);
  }

  return result;
}

uint64_t FieldToColumnMap.init<A, B>(name:hidden:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v15 = a3;
  v17 = a3;
  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a10;
  v18[6] = a4;
  v18[7] = a5;
  v19 = *(a10 + 8);

  v19((&v24 + 1), a7, a10);
  v20 = BYTE1(v24);
  if (v17 == 2)
  {
    v19(&v24, a7, a10);

    v15 = v24 == 10;
  }

  else
  {
  }

  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v20;
  *(a9 + 17) = v15;
  *(a9 + 24) = sub_21AF715D8;
  *(a9 + 32) = v18;
  return result;
}

uint64_t sub_21AF71148@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v35 = a2;
  v36 = a6;
  v40 = a3;
  v37 = a7;
  v10 = sub_21AF76908();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = sub_21AF76908();
  v33 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v17 = *(a4 - 8);
  MEMORY[0x28223BE20](v14);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  sub_21AF63F70(a1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40820, &qword_21AF786E8);
  v20 = swift_dynamicCast();
  v21 = *(v17 + 56);
  if (v20)
  {
    v21(v16, 0, 1, a4);
    (*(v17 + 32))(v19, v16, a4);
    v22 = v41[6];
    v23 = v40(v19);
    if (v22)
    {
      return (*(v17 + 8))(v19, a4);
    }

    else
    {
      MEMORY[0x28223BE20](v23);
      v25 = v35;
      v26 = v36;
      *(&v32 - 4) = a5;
      *(&v32 - 3) = v26;
      v31 = v25;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40428, &qword_21AF77BA0);
      v28 = sub_21AF766F8();
      v29 = v39;
      sub_21AF5D640(sub_21AF68E40, (&v32 - 6), v27, v28, v41, v37);
      (*(v38 + 8))(v12, v29);
      return (*(v17 + 8))(v19, a4);
    }
  }

  else
  {
    v21(v16, 1, 1, a4);
    (*(v33 + 8))(v16, v13);
    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    sub_21AF769B8();
    __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    sub_21AF76B28();
    MEMORY[0x21CEE74A0](0x20746F6E20736920, 0xEF2065687420666FLL);
    v30 = sub_21AF76C68();
    MEMORY[0x21CEE74A0](v30);

    MEMORY[0x21CEE74A0](0x6570797420, 0xE500000000000000);
    result = sub_21AF76A18();
    __break(1u);
  }

  return result;
}

uint64_t FieldToColumnMap.init<A, B>(name:hidden:_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a4;
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a4;
  v27[0] = 0;
  v27[1] = 0xE000000000000000;
  v26[0] = a4;
  v15 = *(v13 + *MEMORY[0x277D84DE8] + 8);
  sub_21AF76C38();

  sub_21AF76B28();
  v16 = 0xE000000000000000;
  if (a2)
  {
    v25 = a1;

    v16 = a2;
  }

  else
  {
    v26[0] = 46;
    v26[1] = 0xE100000000000000;
    sub_21AF68CE8();
    v17 = (sub_21AF76918() + 16);
    if (*v17)
    {
      v18 = &v17[2 * *v17];
      v19 = v18[1];
      v25 = *v18;

      v16 = v19;
    }

    else
    {
      v25 = v27[0];
    }
  }

  v20 = *(a6 + 8);
  v20(v27, v15, a6);
  v21 = v27[0];
  v22 = a3;
  if (a3 == 2)
  {
    v20(v26, v15, a6);

    v22 = LOBYTE(v26[0]) == 10;
  }

  else
  {
  }

  *a7 = v25;
  *(a7 + 8) = v16;
  *(a7 + 16) = v21;
  *(a7 + 17) = v22 & 1;
  *(a7 + 24) = sub_21AF71BE8;
  *(a7 + 32) = v14;
  return result;
}

uint64_t sub_21AF71820@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v28 = a2;
  v30 = a4;
  v27 = a5;
  v6 = *(*a3 + *MEMORY[0x277D84DE8] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v23 - v8;
  v11 = *v10;
  v12 = sub_21AF76908();
  v24 = *(v12 - 8);
  v25 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  v16 = *(v11 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = &v23 - v17;
  v26 = a1;
  sub_21AF63F70(a1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40820, &qword_21AF786E8);
  v19 = swift_dynamicCast();
  v20 = *(v16 + 56);
  if (v19)
  {
    v20(v15, 0, 1, v11);
    (*(v16 + 32))(v18, v15, v11);
    swift_getAtKeyPath();
    (*(v30 + 16))(v28, v6);
    (*(v7 + 8))(v9, v6);
    return (*(v16 + 8))(v18, v11);
  }

  else
  {
    v20(v15, 1, 1, v11);
    (*(v24 + 8))(v15, v25);
    v29[0] = 0;
    v29[1] = 0xE000000000000000;
    sub_21AF769B8();
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    sub_21AF76B28();
    MEMORY[0x21CEE74A0](0x20746F6E20736920, 0xEF2065687420666FLL);
    v22 = sub_21AF76C68();
    MEMORY[0x21CEE74A0](v22);

    MEMORY[0x21CEE74A0](0x6570797420, 0xE500000000000000);
    result = sub_21AF76A18();
    __break(1u);
  }

  return result;
}

char *sub_21AF71C18(char a1, unint64_t a2, uint64_t a3, int a4)
{
  v19 = a4;
  v17 = a2;
  v18 = a3;
  v5 = sub_21AF767B8();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21AF75D28();
  MEMORY[0x28223BE20](v8);
  sub_21AF75D68();
  swift_allocObject();
  sub_21AF75D58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40830, &qword_21AF786F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21AF77930;
  sub_21AF75D18();
  v20 = v9;
  sub_21AF72888();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40840, &qword_21AF786F8);
  sub_21AF728E0();
  sub_21AF76968();
  sub_21AF75D38();
  LOBYTE(v20) = a1;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  sub_21AF72944();
  v10 = v24;
  v11 = sub_21AF75D48();
  if (v10 || (v20 = v11, v21 = v12, sub_21AF767A8(), sub_21AF72998(), v7 = sub_21AF76798(), v14 = v13, sub_21AF559E4(v20, v21), v14))
  {

    return v7;
  }

  else
  {
    result = sub_21AF76A18();
    __break(1u);
  }

  return result;
}

uint64_t sub_21AF71EDC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = sub_21AF75E38();
  for (i = 0; i != 64; ++i)
  {
    if ((a3 >> i))
    {
      result = sub_21AF75E28();
    }
  }

  return result;
}

uint64_t sub_21AF71F34(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7304306;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 99;
    }

    else
    {
      v4 = 25444;
    }

    if (v3 == 2)
    {
      v5 = 0xE100000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 28532;
    }

    else
    {
      v4 = 7304306;
    }

    if (v3)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE100000000000000;
  v8 = 99;
  if (a2 != 2)
  {
    v8 = 25444;
    v7 = 0xE200000000000000;
  }

  if (a2)
  {
    v2 = 28532;
    v6 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21AF76B58();
  }

  return v11 & 1;
}

uint64_t sub_21AF72030()
{
  sub_21AF76BE8();
  sub_21AF767F8();

  return sub_21AF76C08();
}

uint64_t sub_21AF720C4(uint64_t a1)
{
  sub_21AF767F8();
}

uint64_t sub_21AF72144(uint64_t a1)
{
  sub_21AF76BE8();
  sub_21AF767F8();

  return sub_21AF76C08();
}

unint64_t sub_21AF721D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21AF72A9C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21AF72204(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7304306;
  v4 = 0xE100000000000000;
  v5 = 99;
  if (*v1 != 2)
  {
    v5 = 25444;
    v4 = 0xE200000000000000;
  }

  if (*v1)
  {
    v3 = 28532;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_21AF72254()
{
  v1 = 7304306;
  v2 = 99;
  if (*v0 != 2)
  {
    v2 = 25444;
  }

  if (*v0)
  {
    v1 = 28532;
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

unint64_t sub_21AF722A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21AF72A9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21AF722C8(uint64_t a1)
{
  v2 = sub_21AF72D94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21AF72304(uint64_t a1)
{
  v2 = sub_21AF72D94();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_21AF72340()
{
  byte_27CD40A10 = 0;
  qword_27CD40A18 = MEMORY[0x277D84F90];
  unk_27CD40A20 = 0;
  byte_27CD40A28 = 0;
}

uint64_t sub_21AF72360(void *a1, char a2, uint64_t a3, uint64_t a4, int a5)
{
  v15 = a5;
  v16 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40880, &qword_21AF78798);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21AF72D94();
  sub_21AF76C28();
  if ((a2 & 1) == 0 || (v17 = 0, sub_21AF76AE8(), !v5))
  {
    if (!*(a3 + 16) || (v21 = a3, v20 = 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40870, &qword_21AF78790), sub_21AF72DE8(&qword_27CD40888, MEMORY[0x277D84B80], MEMORY[0x277D83948]), sub_21AF76AF8(), !v5))
    {
      v19 = 2;
      sub_21AF76B08();
      if (!v5 && (v15 & 1) != 0)
      {
        v18 = 3;
        sub_21AF76AE8();
      }
    }
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_21AF72588@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_21AF72AE8(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_21AF725E8(uint64_t a1)
{
  v3 = sub_21AF767B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (qword_27CD40290 != -1)
    {
      swift_once();
    }

    LOBYTE(v7) = byte_27CD40A10;

    return v7 & 1;
  }

  sub_21AF76838();
  sub_21AF767A8();
  v7 = sub_21AF76778();
  v9 = v8;

  (*(v4 + 8))(v6, v3);
  if (v9 >> 60 != 15)
  {
    sub_21AF75D08();
    swift_allocObject();
    sub_21AF75CF8();
    sub_21AF72834();
    sub_21AF75CE8();
    sub_21AF6EE0C(v7, v9);

    if (!v1)
    {
      LOBYTE(v7) = v11;
    }

    return v7 & 1;
  }

  result = sub_21AF76A18();
  __break(1u);
  return result;
}

unint64_t sub_21AF72834()
{
  result = qword_27CD40828;
  if (!qword_27CD40828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40828);
  }

  return result;
}

unint64_t sub_21AF72888()
{
  result = qword_27CD40838;
  if (!qword_27CD40838)
  {
    sub_21AF75D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40838);
  }

  return result;
}

unint64_t sub_21AF728E0()
{
  result = qword_27CD40848;
  if (!qword_27CD40848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD40840, &qword_21AF786F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40848);
  }

  return result;
}

unint64_t sub_21AF72944()
{
  result = qword_27CD40850;
  if (!qword_27CD40850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40850);
  }

  return result;
}

unint64_t sub_21AF72998()
{
  result = qword_27CD40858;
  if (!qword_27CD40858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40858);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_21AF72A00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_21AF72A48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21AF72A9C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21AF76A58();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21AF72AE8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40860, &qword_21AF78788);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21AF72D94();
  sub_21AF76C18();
  if (!v1)
  {
    v17 = 0;
    v8 = sub_21AF76A68();
    v13 = v9;
    v10 = v8 == 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40870, &qword_21AF78790);
    v16 = 1;
    sub_21AF72DE8(&qword_27CD40878, MEMORY[0x277D84BA0], MEMORY[0x277D83978]);
    sub_21AF76A78();
    v15 = 2;
    sub_21AF76AB8();
    v14 = 3;
    sub_21AF76A68();
    v2 = v10 & ~v13;
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2 & 1;
}

unint64_t sub_21AF72D94()
{
  result = qword_27CD40868;
  if (!qword_27CD40868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40868);
  }

  return result;
}

uint64_t sub_21AF72DE8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD40870, &qword_21AF78790);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21AF72E68()
{
  result = qword_27CD40890;
  if (!qword_27CD40890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40890);
  }

  return result;
}

unint64_t sub_21AF72EC0()
{
  result = qword_27CD40898;
  if (!qword_27CD40898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40898);
  }

  return result;
}

unint64_t sub_21AF72F18()
{
  result = qword_27CD408A0;
  if (!qword_27CD408A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD408A0);
  }

  return result;
}

uint64_t sub_21AF72F6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  sub_21AF58730(0, v1, 0);
  v2 = v28;
  v4 = a1 + 64;
  result = sub_21AF76978();
  v6 = result;
  v7 = 0;
  v8 = *(a1 + 36);
  v24 = v1;
  v25 = v8;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v26 = v7;
    v11 = (*(a1 + 48) + 16 * v6);
    v12 = v11[1];
    v27 = *v11;
    v13 = *(*(a1 + 56) + v6);
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);

    if (v15 >= v14 >> 1)
    {
      result = sub_21AF58730((v14 > 1), v15 + 1, 1);
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 24 * v15;
    *(v16 + 32) = v27;
    *(v16 + 40) = v12;
    *(v16 + 48) = v13;
    *(v16 + 49) = 0;
    v9 = 1 << *(a1 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v17 = *(a1 + 64 + 8 * v10);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v25;
    if (v25 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_21AF749F4(v6, v25, 0);
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_21AF749F4(v6, v25, 0);
    }

LABEL_4:
    v7 = v26 + 1;
    v6 = v9;
    if (v26 + 1 == v24)
    {
      return v2;
    }
  }

  __break(1u);
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
  return result;
}

uint64_t sub_21AF731C0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 1954047348;
    v7 = 0x3233746E69;
    v8 = 0x3436746E69;
    if (a1 != 3)
    {
      v8 = 0x3233746E6975;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 1651469410;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x656D697465746164;
    v2 = 1819242338;
    if (a1 != 9)
    {
      v2 = 0x6567617373656DLL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x3436746E6975;
    v4 = 0x74616F6C66;
    if (a1 != 6)
    {
      v4 = 0x656C62756F64;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_21AF732EC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_21AF731C0(*a1);
  v5 = v4;
  if (v3 == sub_21AF731C0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21AF76B58();
  }

  return v8 & 1;
}

uint64_t sub_21AF73374()
{
  v1 = *v0;
  sub_21AF76BE8();
  sub_21AF731C0(v1);
  sub_21AF767F8();

  return sub_21AF76C08();
}

uint64_t sub_21AF733D8(uint64_t a1)
{
  sub_21AF731C0(*v1);
  sub_21AF767F8();
}

uint64_t sub_21AF7342C(uint64_t a1)
{
  v2 = *v1;
  sub_21AF76BE8();
  sub_21AF731C0(v2);
  sub_21AF767F8();

  return sub_21AF76C08();
}

unint64_t sub_21AF7348C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21AF749A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_21AF734BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21AF731C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21AF73598@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_21AF75E58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D3E1C0])
  {
    v9 = 0;
LABEL_21:
    result = (*(v5 + 8))(a1, v4);
    *a2 = v9;
    return result;
  }

  if (v8 == *MEMORY[0x277D3E1B0])
  {
    goto LABEL_4;
  }

  if (v8 == *MEMORY[0x277D3E1D0])
  {
    v9 = 2;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277D3E1D8])
  {
    v9 = 3;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277D3E1E8])
  {
    v9 = 4;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277D3E1F0])
  {
    v9 = 5;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277D3E1C8])
  {
    v9 = 6;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277D3E1E0])
  {
    v9 = 7;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277D3E1F8])
  {
    v9 = 8;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277D3E1B8])
  {
    v9 = 9;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277D3E1A8])
  {
LABEL_4:
    v9 = 1;
    goto LABEL_21;
  }

  result = sub_21AF76B48();
  __break(1u);
  return result;
}

uint64_t ColumnType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_21AF63F70(a1, v6);
  sub_21AF73864();
  sub_21AF738B8();
  sub_21AF76888();
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    *a2 = v6[47];
  }

  return result;
}

unint64_t sub_21AF73864()
{
  result = qword_27CD408A8;
  if (!qword_27CD408A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD408A8);
  }

  return result;
}

unint64_t sub_21AF738B8()
{
  result = qword_27CD408B0;
  if (!qword_27CD408B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD408B0);
  }

  return result;
}

uint64_t ColumnType.encode(to:)(uint64_t a1)
{
  sub_21AF73974();
  sub_21AF738B8();
  return sub_21AF76878();
}

unint64_t sub_21AF73974()
{
  result = qword_27CD408B8;
  if (!qword_27CD408B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD408B8);
  }

  return result;
}

uint64_t ColumnType.hashValue.getter()
{
  v1 = *v0;
  sub_21AF76BE8();
  MEMORY[0x21CEE7870](v1);
  return sub_21AF76C08();
}

uint64_t sub_21AF73A80@<X0>(char *a3@<X8>)
{
  v4 = sub_21AF75E58();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getDynamicType();
  sub_21AF75F28();
  return sub_21AF73598(v6, a3);
}

uint64_t sub_21AF73B30(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v43 = MEMORY[0x277D84F90];
    sub_21AF58854(0, v1, 0);
    v4 = v43;
    v5 = a1 + 64;
    v6 = sub_21AF76978();
    v7 = 0;
    v8 = *(a1 + 36);
    v31 = v1;
    v32 = v8;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v33 = v7;
      v11 = (*(a1 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_21AF63F70(*(a1 + 56) + 40 * v6, v39);
      v36[0] = v12;
      v36[1] = v13;
      sub_21AF546A0(v39, v37);
      sub_21AF74A00(v36, v34);
      v40 = v34[0];
      v41 = v34[1];
      __swift_project_boxed_opaque_existential_1(v37, v37[3]);

      sub_21AF73A80(v42);
      __swift_destroy_boxed_opaque_existential_1(v35);
      sub_21AF74A70(v36);
      v14 = v40;
      v15 = v41;
      v16 = v42[0];
      v17 = v4;
      v43 = v4;
      v18 = *(v4 + 16);
      v19 = *(v17 + 24);
      if (v18 >= v19 >> 1)
      {
        sub_21AF58854((v19 > 1), v18 + 1, 1);
        v17 = v43;
      }

      *(v17 + 16) = v18 + 1;
      v20 = v17 + 24 * v18;
      *(v20 + 32) = v14;
      *(v20 + 40) = v15;
      *(v20 + 48) = v16;
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_28;
      }

      v5 = a1 + 64;
      v21 = *(a1 + 64 + 8 * v10);
      if ((v21 & (1 << v6)) == 0)
      {
        goto LABEL_29;
      }

      v4 = v17;
      v8 = v32;
      if (v32 != *(a1 + 36))
      {
        goto LABEL_30;
      }

      v22 = v21 & (-2 << (v6 & 0x3F));
      if (v22)
      {
        v9 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v10 << 6;
        v24 = v10 + 1;
        v25 = (a1 + 72 + 8 * v10);
        while (v24 < (v9 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_21AF749F4(v6, v32, 0);
            v9 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        sub_21AF749F4(v6, v32, 0);
      }

LABEL_4:
      v7 = v33 + 1;
      v6 = v9;
      if (v33 + 1 == v31)
      {
        v2 = v4;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_21:
    if (*(v2 + 16))
    {
      v28 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD404A0, &qword_21AF77B00);
      v29 = sub_21AF76A48();
      v2 = v28;
    }

    else
    {
      v29 = MEMORY[0x277D84F98];
    }

    v38 = v29;
    sub_21AF7440C(v2, 1, &v38);
    return v38;
  }

  return result;
}

uint64_t Array<A>.udfColumns.getter(uint64_t a1)
{
  v2 = sub_21AF67C70(MEMORY[0x277D84F90]);
  v35 = *(a1 + 16);
  if (v35)
  {
    v3 = 0;
LABEL_4:
    v37 = v3 + 1;

    v4 = sub_21AF73B30(v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v2;
    v6 = v4 + 64;
    v7 = -1 << *(v4 + 32);
    if (-v7 < 64)
    {
      v8 = ~(-1 << -v7);
    }

    else
    {
      v8 = -1;
    }

    v38 = v4;
    v39 = v8 & *(v4 + 64);
    v9 = (63 - v7) >> 6;

    for (i = 0; ; i = v14)
    {
      v13 = v39;
      v14 = i;
      if (!v39)
      {
        break;
      }

LABEL_15:
      v16 = __clz(__rbit64(v13)) | (v14 << 6);
      v17 = (*(v38 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      v20 = *(*(v38 + 56) + v16);

      if (!v18)
      {
LABEL_3:
        sub_21AF74790(v38);

        v3 = v37;
        if (v37 == v35)
        {
          goto LABEL_25;
        }

        goto LABEL_4;
      }

      v21 = sub_21AF66C60(v19, v18);
      v23 = *(v2 + 16);
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_27;
      }

      v27 = v22;
      if (*(v2 + 24) >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = v21;
          sub_21AF742A4();
          v21 = v32;
        }
      }

      else
      {
        sub_21AF673A4(v26, isUniquelyReferenced_nonNull_native & 1);
        v21 = sub_21AF66C60(v19, v18);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_29;
        }
      }

      v39 = (v13 - 1) & v13;
      v2 = v40;
      if (v27)
      {
        v11 = *(v40[7] + v21);
        v12 = v21;

        *(v40[7] + v12) = v11;
      }

      else
      {
        v40[(v21 >> 6) + 8] |= 1 << v21;
        v29 = (v40[6] + 16 * v21);
        *v29 = v19;
        v29[1] = v18;
        *(v40[7] + v21) = v20;
        v30 = v40[2];
        v25 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v25)
        {
          goto LABEL_28;
        }

        v40[2] = v31;
      }

      isUniquelyReferenced_nonNull_native = 1;
    }

    v15 = i;
    while (1)
    {
      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_3;
      }

      v13 = *(v6 + 8 * v14);
      ++v15;
      if (v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    result = sub_21AF76B88();
    __break(1u);
  }

  else
  {
LABEL_25:
    v33 = sub_21AF72F6C(v2);

    return v33;
  }

  return result;
}

void *sub_21AF7413C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40488, "B");
  v2 = *v0;
  v3 = sub_21AF76A28();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21AF742A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD404A0, &qword_21AF77B00);
  v2 = *v0;
  v3 = sub_21AF76A28();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_21AF7440C(uint64_t a1, char a2, void *a3)
{
  v37 = *(a1 + 16);
  if (!v37)
  {
  }

  LOBYTE(v5) = a2;
  LOBYTE(v6) = *(a1 + 48);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  if (!v7)
  {
  }

  v9 = *a3;
  v10 = sub_21AF66C60(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_21AF673A4(v15, v5 & 1);
    v10 = sub_21AF66C60(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_21AF76B88();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v20 = v10;
  sub_21AF742A4();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();

    MEMORY[0x21CEE7B50](v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40428, &qword_21AF77BA0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return MEMORY[0x21CEE7B40](v18);
    }

    goto LABEL_28;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  *(v21[7] + v10) = v6;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_21AF769B8();
    MEMORY[0x21CEE74A0](0xD00000000000001BLL, 0x800000021AF798E0);
    sub_21AF76A08();
    MEMORY[0x21CEE74A0](39, 0xE100000000000000);
    result = sub_21AF76A18();
    __break(1u);
    return result;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = (a1 + 72);
    v6 = 1;
    while (v6 < *(a1 + 16))
    {
      v25 = *v5;
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);

      if (!v7)
      {
      }

      v26 = *a3;
      v27 = sub_21AF66C60(v8, v7);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_21AF673A4(v31, 1);
        v27 = sub_21AF66C60(v8, v7);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v8;
      v34[1] = v7;
      *(v33[7] + v27) = v25;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v6;
      v33[2] = v36;
      v5 += 24;
      if (v37 == v6)
      {
      }
    }

    goto LABEL_27;
  }
}

unint64_t sub_21AF7479C()
{
  result = qword_27CD408C0;
  if (!qword_27CD408C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD408C0);
  }

  return result;
}

uint64_t sub_21AF74800(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_21AF74890(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21AF74954()
{
  result = qword_27CD408C8;
  if (!qword_27CD408C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD408C8);
  }

  return result;
}

unint64_t sub_21AF749A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_21AF76A58();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21AF749F4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_21AF74A00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD408D0, &qword_21AF78AE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AF74A70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD408D0, &qword_21AF78AE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PJSONFunction(uint64_t a1)
{
  result = qword_27CD408D8;
  if (!qword_27CD408D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF74B74(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AttributedMessage(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    sub_21AF76188();
    if (sub_21AF76118())
    {
      return sub_21AF76008();
    }

    else
    {
      v9 = v2 + qword_27CD40568;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 8);
        ObjectType = swift_getObjectType();
        (*(v10 + 8))(ObjectType, v10);
        result = swift_unknownObjectRelease();
        if (!v3)
        {
          v12 = off_282C89A80;
          type metadata accessor for MessageInBlobBridge();
          v12();
          swift_unknownObjectRelease();
          sub_21AF76628();
          sub_21AF76088();

          return sub_21AF57410(v8);
        }
      }

      else
      {
        sub_21AF57354();
        swift_allocError();
        *v13 = 0xD000000000000012;
        *(v13 + 8) = 0x800000021AF78CB0;
        *(v13 + 16) = 1;
        return swift_willThrow();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SchemaProviding.schemaManifest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21AF76468();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t SchemaProviding.configure(withContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21AF763E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21AF66848();
  if (!v3)
  {
    swift_getObjectType();
    sub_21AF765B8();
    swift_unknownObjectRelease();
    (*(a3 + 16))(v9, a2, a3);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_21AF75044@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_21AF76388();
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D3E470];
  switch(a1)
  {
    case 'F':
      v8 = MEMORY[0x277D3E4B8];
      goto LABEL_17;
    case 'G':
      v8 = MEMORY[0x277D3E4D0];
      goto LABEL_17;
    case 'I':
      v8 = MEMORY[0x277D3E478];
      goto LABEL_17;
    case 'S':
      v8 = MEMORY[0x277D3E490];
      goto LABEL_17;
    case 'U':
      v8 = MEMORY[0x277D3E4A8];
      goto LABEL_17;
    case 'b':
      v8 = MEMORY[0x277D3E460];
      goto LABEL_17;
    case 'd':
      v8 = MEMORY[0x277D3E480];
      goto LABEL_17;
    case 'f':
      v8 = MEMORY[0x277D3E4B0];
      goto LABEL_17;
    case 'g':
      v8 = MEMORY[0x277D3E4C8];
      goto LABEL_17;
    case 'i':
      goto LABEL_17;
    case 's':
      v8 = MEMORY[0x277D3E488];
      goto LABEL_17;
    case 't':
      v8 = MEMORY[0x277D3E498];
      goto LABEL_17;
    case 'u':
      v8 = MEMORY[0x277D3E4A0];
LABEL_17:
      v11 = *v8;
      v12 = *(v5 + 104);
      v14 = v5;
      v12(v7, v11, v4);
      (*(v14 + 32))(a2, v7, v4);
      result = (*(v14 + 56))(a2, 0, 1, v4);
      break;
    default:
      v9 = *(v5 + 56);

      result = v9(a2, 1, 1, v4);
      break;
  }

  return result;
}

uint64_t sub_21AF7525C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21AF76488();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40338, &unk_21AF77F80);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v16[-v13];
  sub_21AF766C8();
  sub_21AF766D8();
  sub_21AF58D88(v14, v12);
  if ((*(v6 + 48))(v12, 1, v5) == 1)
  {
    sub_21AF5CFD0(v12);
    sub_21AF76008();
  }

  else
  {
    sub_21AF5D038(v12, v8);
    sub_21AF6AC78(a1, 0);
    sub_21AF6B194(v8);
  }

  return sub_21AF5CFD0(v14);
}

unint64_t sub_21AF75640()
{
  result = qword_27CD408F0;
  if (!qword_27CD408F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD408E8, &qword_21AF78B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD408F0);
  }

  return result;
}

uint64_t sub_21AF756A4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_21AF768D8();
  if (!v19)
  {
    return sub_21AF76898();
  }

  v41 = v19;
  v45 = sub_21AF769E8();
  v32 = sub_21AF769F8();
  sub_21AF769C8();
  result = sub_21AF768C8();
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
      v22 = sub_21AF768F8();
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
      sub_21AF769D8();
      result = sub_21AF768E8();
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

uint64_t static FinalColumnsMappedMessage.makeColumns(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[5] = (*(a3 + 16))(a2, a3);
  v11[2] = a2;
  v11[3] = a3;
  type metadata accessor for FinalFieldToColumnMap(255, a2, a3, v5);
  v6 = sub_21AF768A8();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_21AF756A4(sub_21AF75BC4, v11, v6, &type metadata for Column, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);

  return v9;
}

uint64_t sub_21AF75BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 17) = v4;
}

uint64_t FinalColumnsMappedMessage.getValue(forColumnIndex:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  (*(a4 + 16))(a3, a4);
  type metadata accessor for FinalFieldToColumnMap(0, a3, a4, v9);
  sub_21AF768B8();

  v11(v5, a2);
}