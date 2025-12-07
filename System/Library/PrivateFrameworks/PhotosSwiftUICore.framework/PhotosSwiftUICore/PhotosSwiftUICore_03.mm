unint64_t sub_1C0FE5B9C()
{
  result = qword_1EDE76EC8;
  if (!qword_1EDE76EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90850, &qword_1C12A46A0);
    sub_1C0FE4E94();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE906D0, &qword_1C12A4360);
    sub_1C0FE4D5C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76EC8);
  }

  return result;
}

unint64_t sub_1C0FE5C6C()
{
  result = qword_1EDE76E68;
  if (!qword_1EDE76E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90858, qword_1C12A46A8);
    sub_1C0FE5CF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E68);
  }

  return result;
}

unint64_t sub_1C0FE5CF0()
{
  result = qword_1EDE76E70;
  if (!qword_1EDE76E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90748, &qword_1C12A44A8);
    sub_1C0FE5024();
    sub_1C0FE54C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetCountView.Variant(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C0FE5E94()
{
  result = qword_1EBE908A0;
  if (!qword_1EBE908A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE908A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_8(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_30_1()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_31_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t sub_1C0FE5F3C()
{
  v1 = v0;
  v2 = sub_1C0FE6A3C();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v2();
    sub_1C0FCF004(v4, v5);
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));

  sub_1C0FCF004(*(v1 + 64), *(v1 + 72));
  sub_1C0FCF004(*(v1 + 80), *(v1 + 88));
  sub_1C0FCF004(*(v1 + 96), *(v1 + 104));
  swift_unknownObjectRelease();
  sub_1C0FCF004(*(v1 + 144), *(v1 + 152));
  swift_weakDestroy();
  v6 = OBJC_IVAR____TtC17PhotosSwiftUICore23PhotosInlinePlayerModel___observationRegistrar;
  v7 = sub_1C1261F70();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  return v1;
}

uint64_t sub_1C0FE600C()
{
  sub_1C0FE5F3C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for PhotosInlinePlayerModel(uint64_t a1)
{
  result = qword_1EDE81AB8;
  if (!qword_1EDE81AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C0FE60B8(uint64_t a1)
{
  result = sub_1C1261F70();
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

void sub_1C0FE619C(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1C0FE71FC(&v3);
  if (v1 != v3)
  {
    sub_1C0FE62A4(0);
    v2 = v1;
    sub_1C0FE6DC4(&v2);

    sub_1C0FE7758();
  }
}

void sub_1C0FE620C(id a1)
{
  v3 = *(v1 + 56);
  if (a1)
  {
    if (v3)
    {
      sub_1C0FE7B20();
      v4 = v3;
      v5 = a1;
      v6 = sub_1C12666B0();

      if (v6)
      {
        return;
      }
    }
  }

  else if (!v3)
  {
    return;
  }

  [a1 invalidate];
}

void sub_1C0FE62A4(void *a1)
{
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
  v2 = a1;
  sub_1C0FE620C(v3);
}

void sub_1C0FE62FC(double a1)
{
  LOBYTE(v6[0]) = 3;
  sub_1C0FE619C(v6);
  if (a1 != INFINITY)
  {
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    swift_weakInit();
    v6[4] = sub_1C0FE7B10;
    v6[5] = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1C10CB7AC;
    v6[3] = &block_descriptor_1;
    v4 = _Block_copy(v6);

    v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:a1];
    _Block_release(v4);
    sub_1C0FE62A4(v5);
  }
}

double sub_1C0FE642C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C0FE6484();
  }

  return result;
}

void sub_1C0FE6484()
{
  sub_1C0FE62A4(0);
  sub_1C0FE71FC(&v4);
  if (v4 == 3)
  {
    v3 = 2;
    sub_1C0FE619C(&v3);
    v1 = *(v0 + 80);
    if (v1)
    {
      v2 = *(v0 + 88);

      v1(v0);

      sub_1C0FCF004(v1, v2);
    }
  }
}

double sub_1C0FE652C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C0FE76C0();
  v6 = v4;
  if (a1)
  {
    if (v4)
    {

      if (v6 == a1)
      {
LABEL_11:

        return result;
      }
    }
  }

  else
  {
    if (!v4)
    {
      return result;
    }
  }

  if (sub_1C0FE76C0())
  {
    sub_1C10CD7F0(v2);
  }

  result = sub_1C0FE7114(v7);
  if (a1)
  {

    sub_1C10CD7D8(v2);

    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1C0FE65FC(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v4 = sub_1C0FE72E0();
  v5 = v4;
  if (a1)
  {
    if (v4)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v5 == a1)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else if (!v4)
  {
    goto LABEL_10;
  }

  swift_unknownObjectRelease();
LABEL_7:
  v6 = swift_unknownObjectRetain();
  sub_1C0FE6E44(v6, a2);
  if (a1)
  {
    ObjectType = swift_getObjectType();
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = *(a2 + 40);
    swift_unknownObjectRetain();

    v9(sub_1C0FE7B08, v8, ObjectType, a2);
    swift_unknownObjectRelease();
  }

  sub_1C0FE7758();
LABEL_10:

  return swift_unknownObjectRelease();
}

double sub_1C0FE673C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + 80);
    if (v4)
    {
      v5 = *(Strong + 88);

      v4(v3);
      sub_1C0FCF004(v4, v5);
    }
  }

  return result;
}

uint64_t sub_1C0FE67C4(uint64_t a1)
{
  result = sub_1C0FE72E0();
  if (result)
  {
    swift_unknownObjectRelease();
    if (qword_1EDE81AD8 != -1)
    {
      swift_once();
    }

    v2 = sub_1C1262720();
    __swift_project_value_buffer(v2, qword_1EDE9B6C0);

    v3 = sub_1C12626F0();
    v4 = sub_1C12663F0();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136315138;
      v7 = sub_1C1266FB0();
      v9 = sub_1C0FA0E80(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1C0F96000, v3, v4, "Resetting player for inline playback PhotosInlinePlayerModel.%s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v6);
      MEMORY[0x1C68F1630](v6, -1, -1);
      MEMORY[0x1C68F1630](v5, -1, -1);
    }

    return sub_1C0FE65FC(0, 0);
  }

  return result;
}

uint64_t sub_1C0FE69A4(char a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v5 = a1 & 1;
  result = a2();
  if ((result & 1) != v5)
  {
    result = a3(v5);
    v7 = *(v3 + 64);
    if (v7)
    {
      v8 = *(v3 + 72);

      v7(v3);

      return sub_1C0FCF004(v7, v8);
    }
  }

  return result;
}

uint64_t sub_1C0FE6A3C()
{
  swift_getKeyPath();
  v1 = sub_1C0FE7964();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v12, v0);
  sub_1C1261F30();

  v9 = OUTLINED_FUNCTION_5_5();
  sub_1C0FCF1B4(v9, v10);
  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C0FE6AB0@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_1C0FE6A3C();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1C0FE7B00;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

double sub_1C0FE6B20(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1C0FE7AD8;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1C0FCF1B4(v1, v2);
  return sub_1C0FE6BD8(v4, v3);
}

uint64_t sub_1C0FE6C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 96);
  v4 = *(a1 + 104);
  *(a1 + 96) = a2;
  *(a1 + 104) = a3;
  sub_1C0FCF1B4(a2, a3);
  return sub_1C0FCF004(v3, v4);
}

uint64_t sub_1C0FE6C58()
{
  swift_getKeyPath();
  v1 = sub_1C0FE7964();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 112);
}

double sub_1C0FE6CF8(uint64_t a1, char a2)
{
  if ((*(v2 + 120) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 112) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 112) = a1;
    *(v2 + 120) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v9[2] = v2;
  v9[3] = a1;
  v10 = a2 & 1;
  OUTLINED_FUNCTION_4_10(v6, v7, v9);

  return result;
}

double sub_1C0FE6DC4(unsigned __int8 *a1)
{
  if (*(v1 + 122) != *a1)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_4_10(v3, v4, v5);
  }

  return result;
}

uint64_t sub_1C0FE6E44(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  sub_1C0FE78BC(KeyPath, sub_1C0FE7A74, &v7);

  return swift_unknownObjectRelease();
}

double sub_1C0FE6EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v13 = v5;
  v14 = a1;
  v15 = a2;
  sub_1C0FE78BC(KeyPath, a4, &v12);
  a5(a1, a2);

  return result;
}

void sub_1C0FE6F7C(char a1)
{
  if (*(v1 + 160) == (a1 & 1))
  {
    *(v1 + 160) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_4_10(v3, v4, v5);
  }
}

void sub_1C0FE7004(char a1)
{
  if (*(v1 + 161) == (a1 & 1))
  {
    *(v1 + 161) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_4_10(v3, v4, v5);
  }
}

void sub_1C0FE708C(char a1)
{
  if (*(v1 + 162) == (a1 & 1))
  {
    *(v1 + 162) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_4_10(v3, v4, v5);
  }
}

double sub_1C0FE7114(uint64_t a1)
{
  Strong = swift_weakLoadStrong();

  if (Strong == a1)
  {
    swift_weakAssign();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v8[2] = v1;
    v8[3] = a1;
    OUTLINED_FUNCTION_4_10(v6, v7, v8);
  }

  return result;
}

void sub_1C0FE71FC(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v3 = sub_1C0FE7964();
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v11, v1);
  sub_1C1261F30();

  *a1 = *(v1 + 122);
}

uint64_t sub_1C0FE72E0()
{
  swift_getKeyPath();
  v1 = sub_1C0FE7964();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return swift_unknownObjectRetain();
}

uint64_t sub_1C0FE7350(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  return sub_1C0FE6E44(v3, v2);
}

uint64_t sub_1C0FE738C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 128) = a2;
  *(a1 + 136) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C0FE73C8()
{
  swift_getKeyPath();
  v1 = sub_1C0FE7964();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v12, v0);
  sub_1C1261F30();

  v9 = OUTLINED_FUNCTION_5_5();
  sub_1C0FCF1B4(v9, v10);
  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C0FE743C@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_1C0FE73C8();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1C0FE7A44;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

double sub_1C0FE74AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1C0FE7A0C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1C0FCF1B4(v1, v2);
  return sub_1C0FE6EC8(v4, v3);
}

uint64_t sub_1C0FE753C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 144);
  v4 = *(a1 + 152);
  *(a1 + 144) = a2;
  *(a1 + 152) = a3;
  sub_1C0FCF1B4(a2, a3);
  return sub_1C0FCF004(v3, v4);
}

uint64_t sub_1C0FE7588()
{
  swift_getKeyPath();
  v1 = sub_1C0FE7964();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 160);
}

uint64_t sub_1C0FE75F0()
{
  swift_getKeyPath();
  v1 = sub_1C0FE7964();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 161);
}

uint64_t sub_1C0FE7658()
{
  swift_getKeyPath();
  v1 = sub_1C0FE7964();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 162);
}

uint64_t sub_1C0FE76C0()
{
  swift_getKeyPath();
  v1 = sub_1C0FE7964();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return swift_weakLoadStrong();
}

void sub_1C0FE7758()
{
  sub_1C0FE71FC(&v12);
  if ((v12 & 0xFE) == 2)
  {
    if (sub_1C0FE72E0())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v0 = sub_1C0FE73C8();
      if (v0)
      {
        v2 = v0;
        v3 = v1;
        v4 = v0();
        v6 = v5;
        sub_1C0FCF004(v2, v3);
      }

      else
      {
        v4 = 0;
        v6 = 0;
      }

      sub_1C0FE65FC(v4, v6);
    }
  }

  if (sub_1C0FE72E0())
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    sub_1C0FE71FC(&v10);
    (*(v8 + 16))(&v10, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  sub_1C0FE71FC(&v11);
  if ((v11 & 0xFE) != 2 && sub_1C0FE72E0())
  {
    swift_unknownObjectRelease();

    sub_1C0FE65FC(0, 0);
  }
}

unint64_t sub_1C0FE7964()
{
  result = qword_1EDE81AC8;
  if (!qword_1EDE81AC8)
  {
    type metadata accessor for PhotosInlinePlayerModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE81AC8);
  }

  return result;
}

uint64_t sub_1C0FE7A44@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1C0FE7AA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 112) = *(v0 + 24);
  *(v1 + 120) = v2;
}

unint64_t sub_1C0FE7B20()
{
  result = qword_1EBE908A8;
  if (!qword_1EBE908A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE908A8);
  }

  return result;
}

uint64_t sub_1C0FE7B64(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v11);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 1;
  *(a3 + 122) = 0;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 159) = 0;
  swift_weakInit();
  sub_1C1261F60();
  sub_1C0F9DDE4(&v11, a3 + 16);
  *(a3 + 121) = a2;
  return a3;
}

uint64_t PhotosMockFeaturedPhoto.__allocating_init(identifier:title:subtitle:keyAsset:selectionIdentifier:isContentPrivacyEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_15_9();
  v17 = swift_allocObject();
  PhotosMockFeaturedPhoto.init(identifier:title:subtitle:keyAsset:selectionIdentifier:isContentPrivacyEnabled:)(v15, v14, v13, v12, v11, v10, a7, a8, a9, a10);
  return v17;
}

uint64_t PhotosMockFeaturedPhoto.init(identifier:title:subtitle:keyAsset:selectionIdentifier:isContentPrivacyEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_15_9();
  *(v10 + 104) = 0;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0;
  *(v10 + 112) = 1;
  sub_1C1261F60();

  *(v10 + 16) = v16;
  *(v10 + 24) = v15;

  *(v10 + 32) = v14;
  *(v10 + 40) = v13;

  *(v10 + 48) = v12;
  *(v10 + 56) = v11;
  v19 = *(v10 + 64);
  v20 = a7;

  *(v10 + 64) = a7;
  *(v10 + 88) = a8;
  *(v10 + 96) = a9;

  *(v10 + 72) = xmmword_1C12A4AC0;
  *(v10 + 104) = 0;
  *(v10 + 112) = 1;
  *(v10 + 113) = a10;
  return v10;
}

uint64_t sub_1C0FE7DC8()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5(v1 + 16);
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_17_6(v8, v9, v10);
  }

  else
  {
    *(v1 + 16) = v2;
    *(v1 + 24) = v0;
  }
}

uint64_t sub_1C0FE7E74()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5(v1 + 32);
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_17_6(v8, v9, v10);
  }

  else
  {
    *(v1 + 32) = v2;
    *(v1 + 40) = v0;
  }
}

uint64_t sub_1C0FE7F20()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5(v1 + 48);
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_17_6(v8, v9, v10);
  }

  else
  {
    *(v1 + 48) = v2;
    *(v1 + 56) = v0;
  }
}

void sub_1C0FE7FCC(void *a1)
{
  OUTLINED_FUNCTION_9_5(v1 + 64);
  v3 = *(v1 + 64);
  v4 = v3;
  LOBYTE(v3) = sub_1C0FDFE74(v3, a1);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[2] = v1;
    v9[3] = a1;
    OUTLINED_FUNCTION_17_6(v6, v7, v9);
  }

  else
  {
    v8 = *(v1 + 64);
    *(v1 + 64) = a1;
  }
}

uint64_t sub_1C0FE809C()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5(v1 + 88);
  v3 = *(v1 + 88) == v2 && *(v1 + 96) == v0;
  if (v3 || (OUTLINED_FUNCTION_15_3(), (sub_1C1266D50() & 1) != 0))
  {
    *(v1 + 88) = v2;
    *(v1 + 96) = v0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_17_6(v6, v7, v8);
  }
}

uint64_t sub_1C0FE8158()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5(v1 + 72);
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_17_6(v8, v9, v10);
  }

  else
  {
    *(v1 + 72) = v2;
    *(v1 + 80) = v0;
  }
}

double sub_1C0FE8204(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_9_5(v2 + 104);
  if ((*(v2 + 112) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 104) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 104) = a1;
    *(v2 + 112) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v9[2] = v2;
  v9[3] = a1;
  v10 = a2 & 1;
  OUTLINED_FUNCTION_17_6(v7, v8, v9);

  return result;
}

void sub_1C0FE82D8(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 113) == v2)
  {
    *(v1 + 113) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v6[2] = v1;
    v7 = v2;
    OUTLINED_FUNCTION_17_6(v4, v5, v6);
  }
}

uint64_t sub_1C0FE838C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C0FE83D0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0FE83D0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_7();
  v3 = sub_1C0FE99CC(v1, v2, &protocol conformance descriptor for PhotosMockFeaturedPhoto);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 16, v5);

  return OUTLINED_FUNCTION_5_5();
}

void sub_1C0FE8464()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_7();
  v5 = sub_1C0FE99CC(v3, v4, &protocol conformance descriptor for PhotosMockFeaturedPhoto);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDEEC4();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C0FE8530@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C0FE8574();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0FE8574()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_7();
  v3 = sub_1C0FE99CC(v1, v2, &protocol conformance descriptor for PhotosMockFeaturedPhoto);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 32, v5);

  return OUTLINED_FUNCTION_5_5();
}

void sub_1C0FE8608()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_7();
  v5 = sub_1C0FE99CC(v3, v4, &protocol conformance descriptor for PhotosMockFeaturedPhoto);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF120();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C0FE86D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C0FE8718();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0FE8718()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_7();
  v3 = sub_1C0FE99CC(v1, v2, &protocol conformance descriptor for PhotosMockFeaturedPhoto);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 48, v5);

  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C0FE87AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
}

void sub_1C0FE8818()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_7();
  v5 = sub_1C0FE99CC(v3, v4, &protocol conformance descriptor for PhotosMockFeaturedPhoto);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF350();
  OUTLINED_FUNCTION_18_4();
}

void *sub_1C0FE8928@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C0FE8984();
  *a1 = result;
  return result;
}

void sub_1C0FE8954(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C0FE7FCC(v1);
}

void *sub_1C0FE8984()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_7();
  v3 = sub_1C0FE99CC(v1, v2, &protocol conformance descriptor for PhotosMockFeaturedPhoto);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 64, v5);
  v6 = *(v0 + 64);
  v7 = v6;
  return v6;
}

void sub_1C0FE8A14(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 64);
  *(a1 + 64) = a2;
  v5 = a2;
}

void sub_1C0FE8A74()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_7();
  v5 = sub_1C0FE99CC(v3, v4, &protocol conformance descriptor for PhotosMockFeaturedPhoto);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FE88E4();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C0FE8B40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C0FE8BCC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0FE8B84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1C0FE8BCC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_7();
  v3 = sub_1C0FE99CC(v1, v2, &protocol conformance descriptor for PhotosMockFeaturedPhoto);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 72, v5);

  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C0FE8C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
}

void sub_1C0FE8CCC()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_7();
  v5 = sub_1C0FE99CC(v3, v4, &protocol conformance descriptor for PhotosMockFeaturedPhoto);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF860();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C0FE8DDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C0FE8E48();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0FE8E48()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_7();
  v3 = sub_1C0FE99CC(v1, v2, &protocol conformance descriptor for PhotosMockFeaturedPhoto);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 88, v5);

  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C0FE8EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 88) = a2;
  *(a1 + 96) = a3;
}

void sub_1C0FE8F48()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_7();
  v5 = sub_1C0FE99CC(v3, v4, &protocol conformance descriptor for PhotosMockFeaturedPhoto);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FE8D98();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C0FE9058@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C0FE90C0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C0FE90C0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_7();
  v3 = sub_1C0FE99CC(v1, v2, &protocol conformance descriptor for PhotosMockFeaturedPhoto);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 104, v5);
  return *(v0 + 104);
}

uint64_t sub_1C0FE914C(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *(a1 + 104) = a2;
  *(a1 + 112) = a3 & 1;
  return result;
}

void sub_1C0FE91AC()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_7();
  v5 = sub_1C0FE99CC(v3, v4, &protocol conformance descriptor for PhotosMockFeaturedPhoto);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FE9014();
  OUTLINED_FUNCTION_18_4();
}

double sub_1C0FE9278(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = 1;
  a2(&v4);

  return result;
}

uint64_t sub_1C0FE933C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C0FE9394();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C0FE9394()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_7();
  v3 = sub_1C0FE99CC(v1, v2, &protocol conformance descriptor for PhotosMockFeaturedPhoto);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 113, v5);
  return *(v0 + 113);
}

uint64_t sub_1C0FE941C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 113) = a2;
  return result;
}

void sub_1C0FE9470()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_7();
  v5 = sub_1C0FE99CC(v3, v4, &protocol conformance descriptor for PhotosMockFeaturedPhoto);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FE92F8();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C0FE953C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_7();
  sub_1C0FE99CC(v3, v4, &protocol conformance descriptor for PhotosMockFeaturedPhoto);
  return sub_1C1261F20();
}

uint64_t type metadata accessor for PhotosMockFeaturedPhoto(uint64_t a1)
{
  result = qword_1EBE908D0;
  if (!qword_1EBE908D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosMockFeaturedPhoto.deinit()
{

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore23PhotosMockFeaturedPhoto___observationRegistrar;
  v2 = sub_1C1261F70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotosMockFeaturedPhoto.__deallocating_deinit()
{
  PhotosMockFeaturedPhoto.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *sub_1C0FE986C@<X0>(void *a1@<X8>)
{
  result = sub_1C0FE8984();
  *a1 = result;
  return result;
}

double sub_1C0FE9898(void (*a1)(char *), uint64_t a2)
{
  v5 = *v2;

  return sub_1C0FE9278(v5, a1, a2);
}

uint64_t sub_1C0FE99CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C0FE9A1C(uint64_t a1)
{
  result = sub_1C1261F70();
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

uint64_t sub_1C0FE9FEC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1265EA0();
  v4 = v3;
  if (v2 == sub_1C1265EA0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_2();
    v7 = sub_1C1266D50();
  }

  return v7 & 1;
}

uint64_t sub_1C0FEA06C(char a1, char a2)
{
  v2 = 0x6E776F6E6B6E55;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 5391443;
    }

    else
    {
      v3 = 5391432;
    }

    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E55;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 5391443;
    }

    else
    {
      v2 = 5391432;
    }

    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (v3 == v2 && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C1266D50();
  }

  return v7 & 1;
}

uint64_t sub_1C0FEA138(unsigned __int8 a1, char a2)
{
  v2 = 0x656C706F6570;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x656C706F6570;
  switch(v4)
  {
    case 1:
      v5 = 0x79726F6D656DLL;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x6D75626C61;
      break;
    case 3:
      v5 = 0x6E756F4674786574;
      v3 = 0xE900000000000064;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1885958772;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v5 = 0x746E657665;
      break;
    case 6:
      v5 = 0x707954616964656DLL;
      v3 = 0xE900000000000065;
      break;
    case 7:
      v3 = 0xE700000000000000;
      v5 = 0x7974696C697475;
      break;
    case 8:
      v5 = 0x6C6F686563616C70;
      v3 = 0xEB00000000726564;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x79726F6D656DLL;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x6D75626C61;
      break;
    case 3:
      v2 = 0x6E756F4674786574;
      v6 = 0xE900000000000064;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1885958772;
      break;
    case 5:
      v6 = 0xE500000000000000;
      v2 = 0x746E657665;
      break;
    case 6:
      v2 = 0x707954616964656DLL;
      v6 = 0xE900000000000065;
      break;
    case 7:
      v6 = 0xE700000000000000;
      v2 = 0x7974696C697475;
      break;
    case 8:
      v2 = 0x6C6F686563616C70;
      v6 = 0xEB00000000726564;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C1266D50();
  }

  return v8 & 1;
}

BOOL sub_1C0FEA368(char a1, char a2)
{
  v2 = 1.0;
  if (a1)
  {
    v3 = 0.75;
  }

  else
  {
    v3 = 1.0;
  }

  if (a2)
  {
    v2 = 0.75;
  }

  return v3 == v2;
}

BOOL OneUpChromeEnvironment.badgeInfoHasCenteredBadge.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 240))(v5, a1);
  v2 = v5[1];

  v3 = *(v2 + 16);

  return v3 != 0;
}

uint64_t OneUpChromeEnvironment.isSharedCollectionOrSharedAlbumAsset.getter()
{
  OUTLINED_FUNCTION_18_0();
  if ((*(v0 + 72))())
  {
    return 1;
  }

  v2 = OUTLINED_FUNCTION_2();

  return v3(v2);
}

uint64_t sub_1C0FEA468(uint64_t a1)
{
  sub_1C1266E90();
  OneUpAssetImportState.hash(into:)();
  return sub_1C1266EE0();
}

PhotosSwiftUICore::OneUpBadgeInfo __swiftcall OneUpBadgeInfo.init(leadingBadgeSpecs:centerBadgeSpecs:trailingBadgeSpecs:)(Swift::OpaquePointer leadingBadgeSpecs, Swift::OpaquePointer centerBadgeSpecs, Swift::OpaquePointer trailingBadgeSpecs)
{
  v3->_rawValue = leadingBadgeSpecs._rawValue;
  v3[1]._rawValue = centerBadgeSpecs._rawValue;
  v3[2]._rawValue = trailingBadgeSpecs._rawValue;
  result.trailingBadgeSpecs = trailingBadgeSpecs;
  result.centerBadgeSpecs = centerBadgeSpecs;
  result.leadingBadgeSpecs = leadingBadgeSpecs;
  return result;
}

PhotosSwiftUICore::OneUpBadgeInfo __swiftcall OneUpBadgeInfo.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v1;
  v0[2] = v1;
  return result;
}

uint64_t static OneUpBadgeInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1C0FEA54C(*a1, *a2) & 1) == 0 || (sub_1C0FEA54C(v2, v3) & 1) == 0)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_18();

  return sub_1C0FEA54C(v4, v5);
}

uint64_t sub_1C0FEA54C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  for (i = (a2 + 32); ; i += 4)
  {
    v5 = i[1];
    v48 = *i;
    v49 = v5;
    v6 = i[3];
    v8 = *i;
    v7 = i[1];
    v50 = i[2];
    v51 = v6;
    v9 = v3[1];
    v44 = *v3;
    v45 = v9;
    v52[0] = v44;
    v52[1] = v9;
    v10 = v3[3];
    v46 = v3[2];
    v47 = v10;
    v52[2] = v46;
    v52[3] = v10;
    v52[4] = v8;
    v52[5] = v7;
    v11 = i[3];
    v52[6] = i[2];
    v52[7] = v11;
    v12 = v44;
    if ((((v10 >> 8) | (((DWORD1(v10) >> 8) | (SBYTE7(v10) << 16)) << 32)) & 0x8000000000000000) != 0)
    {
      break;
    }

    if (((*(&v51 + 1) | ((*(&v51 + 5) | (SBYTE7(v51) << 16)) << 32)) & 0x8000000000000000) != 0)
    {
      v30 = v3[1];
      v39 = *v3;
      v40 = v30;
      v32 = v3[2];
      v31 = v3[3];
      goto LABEL_42;
    }

    v14 = *(&v45 + 1);
    v13 = v45;
    v16 = *(&v46 + 1);
    v15 = v46;
    v17 = v49;
    v18 = v50;
    v34 = *(&v51 + 1);
    v35 = *(&v47 + 1);
    v36 = v51;
    v37 = v47;
    if (*(&v44 + 1))
    {
      if (!*(&v48 + 1) || (v44 == v48 ? (v19 = *(&v44 + 1) == *(&v48 + 1)) : (v19 = 0), !v19 && (v20 = v46, v21 = v45, v22 = sub_1C1266D50(), v13 = v21, v16 = *(&v20 + 1), v15 = v20, (v22 & 1) == 0)))
      {
LABEL_39:
        sub_1C0FF526C(&v44, &v39);
        sub_1C0FF526C(&v48, &v39);
        goto LABEL_43;
      }
    }

    else if (*(&v48 + 1))
    {
      goto LABEL_39;
    }

    if (v14)
    {
      if (!*(&v17 + 1))
      {
        goto LABEL_39;
      }

      if (v13 != v17 || v14 != *(&v17 + 1))
      {
        v25 = v15;
        v26 = sub_1C1266D50();
        v15 = v25;
        if ((v26 & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    else if (*(&v17 + 1))
    {
      goto LABEL_39;
    }

    if (v15 == v18 && v16 == *(&v18 + 1))
    {
      sub_1C0FF526C(&v48, &v39);
      sub_1C0FF526C(&v44, &v39);
      sub_1C0FF526C(&v44, &v39);
      sub_1C0FF526C(&v48, &v39);
      sub_1C0FF526C(&v44, &v39);
      sub_1C0FF526C(&v48, &v39);
      sub_1C0FD1A5C(v52, &qword_1EBE90928, &unk_1C12CBD30);
    }

    else
    {
      v28 = sub_1C1266D50();
      sub_1C0FF526C(&v48, &v39);
      sub_1C0FF526C(&v44, &v39);
      sub_1C0FF526C(&v44, &v39);
      sub_1C0FF526C(&v48, &v39);
      sub_1C0FF526C(&v44, &v39);
      sub_1C0FF526C(&v48, &v39);
      sub_1C0FD1A5C(v52, &qword_1EBE90928, &unk_1C12CBD30);
      if ((v28 & 1) == 0)
      {
        sub_1C0FF52C8(&v48);
        sub_1C0FF52C8(&v44);
        sub_1C0FF52C8(&v48);
        sub_1C0FF52C8(&v44);
        return 0;
      }
    }

    sub_1C0FF52C8(&v48);
    sub_1C0FF52C8(&v44);
    sub_1C0FF52C8(&v48);
    sub_1C0FF52C8(&v44);
    if (((v37 ^ v36) & 1) != 0 || v35 != v34)
    {
      return 0;
    }

LABEL_37:
    v3 += 4;
    if (!--v2)
    {
      return 1;
    }
  }

  if ((v51 & 0x8000000000000000) != 0)
  {
    v23 = v48;
    sub_1C0FD1A5C(v52, &qword_1EBE90928, &unk_1C12CBD30);
    if (v12 != v23)
    {
      return 0;
    }

    goto LABEL_37;
  }

  v33 = i[1];
  v39 = *i;
  v40 = v33;
  v32 = i[2];
  v31 = i[3];
LABEL_42:
  v41 = v32;
  v43 = *(&v31 + 1);
  v42 = v31 & 0x7FFFFFFFFFFFFFFFLL;
  sub_1C0FF5210(&v39, v38, &qword_1EBE90920, &unk_1C12A5DF0);
LABEL_43:
  sub_1C0FD1A5C(v52, &qword_1EBE90928, &unk_1C12CBD30);
  return 0;
}

uint64_t sub_1C0FEA8FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        sub_1C0FF4B88(v3, v8);
        sub_1C0FF4B88(v4, v7);
        v5 = MEMORY[0x1C68F0200](v8, v7);
        sub_1C0FD1A08(v7);
        sub_1C0FD1A08(v8);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 40;
        v4 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1C0FEA9BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 32;
    for (i = a2 + 32; ; i += 56)
    {
      sub_1C0FF4CC0(v3, v9);
      sub_1C0FF4CC0(i, v8);
      if ((MEMORY[0x1C68F0200](v9, v8) & 1) == 0)
      {
        break;
      }

      if (v10 == v8[5] && v11 == v8[6])
      {
        sub_1C0FF4D1C(v8);
        sub_1C0FF4D1C(v9);
      }

      else
      {
        v6 = sub_1C1266D50();
        sub_1C0FF4D1C(v8);
        sub_1C0FF4D1C(v9);
        if ((v6 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 56;
      if (!--v2)
      {
        return 1;
      }
    }

    sub_1C0FF4D1C(v8);
    sub_1C0FF4D1C(v9);
  }

  return 0;
}

uint64_t sub_1C0FEAAF0(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C1266BB0())
  {
    if (a2 >> 62)
    {
      result = sub_1C1266BB0();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_1C0FDE8F8(0, &qword_1EBE90668, 0x1E69C45E0);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = MEMORY[0x1C68F02D0](v13 - 4, v24);
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = MEMORY[0x1C68F02D0](v13 - 4, a2);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_1C12666B0();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0FEACC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1C1266D50() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C0FEAD90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), uint64_t (*a5)(uint64_t))
{
  v9 = a3(0) - 8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  v16 = *(a1 + 16);
  if (v16 == *(a2 + 16))
  {
    if (!v16 || a1 == a2)
    {
      v22 = 1;
    }

    else
    {
      v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = *(v13 + 72);
      do
      {
        sub_1C0FF4C0C(v18, v15, a4);
        sub_1C0FF4C0C(v19, v11, a4);
        v21 = OUTLINED_FUNCTION_46();
        v22 = a5(v21);
        sub_1C0FF4C68(v11, a4);
        sub_1C0FF4C68(v15, a4);
        if ((v22 & 1) == 0)
        {
          break;
        }

        v19 += v20;
        v18 += v20;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

void sub_1C0FEAF28()
{
  OUTLINED_FUNCTION_19_4();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = (v0 + 64);
    v4 = (v1 + 64);
    do
    {
      if (*(v3 - 4) != *(v4 - 4))
      {
        break;
      }

      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = *(v3 - 3) == *(v4 - 3) && *(v3 - 2) == *(v4 - 2);
      if (!v9 && (sub_1C1266D50() & 1) == 0)
      {
        break;
      }

      if (v5 != v7 || v6 != v8)
      {
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_31_2();
        if ((sub_1C1266D50() & 1) == 0)
        {
          break;
        }
      }

      v3 += 5;
      v4 += 5;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_18_4();
}

BOOL static OneUpCloudLinkAssetType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t OneUpContentPrivacyState.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t _s17PhotosSwiftUICore21OneUpAssetImportStateO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t EnvironmentValues.oneUpChromeEnvironment.getter()
{
  sub_1C0FEB1F8();
  sub_1C12637F0();
  if (v1)
  {
    swift_unknownObjectWeakLoadStrong();
  }

  return OUTLINED_FUNCTION_18();
}

unint64_t sub_1C0FEB1F8()
{
  result = qword_1EDE7C9B8;
  if (!qword_1EDE7C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C9B8);
  }

  return result;
}

uint64_t EnvironmentValues.oneUpChromeEnvironment.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakChromeEnvironmentReference();
  swift_allocObject();
  v3 = swift_unknownObjectRetain();
  sub_1C0FEB470(v3, a2);
  sub_1C0FEB1F8();
  sub_1C1263800();
  return swift_unknownObjectRelease();
}

uint64_t EnvironmentValues.oneUpChromeEnvironment.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v3[4] = sub_1C0FEB1F8();
  sub_1C12637F0();
  v4 = v3[2];
  if (v4)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = *(v4 + 24);
  }

  else
  {
    Strong = 0;
    v6 = 0;
  }

  *v3 = Strong;
  v3[1] = v6;
  return OUTLINED_FUNCTION_36();
}

void sub_1C0FEB3AC()
{
  OUTLINED_FUNCTION_19_4();
  v1 = v0;
  v3 = *v2;
  v4 = *(*v2 + 8);
  type metadata accessor for WeakChromeEnvironmentReference();
  swift_allocObject();
  v5 = swift_unknownObjectRetain();
  if (v1)
  {
    v6 = swift_unknownObjectRetain();
    v7 = sub_1C0FEB470(v6, v4);
    *(v3 + 16) = v7;
    OUTLINED_FUNCTION_48(v7, &type metadata for OneUpChromeEnvironmentKey);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = sub_1C0FEB470(v5, v4);
    *(v3 + 16) = v8;
    OUTLINED_FUNCTION_48(v8, &type metadata for OneUpChromeEnvironmentKey);
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_18_4();

  free(v9);
}

uint64_t sub_1C0FEB470(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  if (a1)
  {
    *(v2 + 24) = a2;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  else
  {

    return 0;
  }

  return v2;
}

uint64_t sub_1C0FEB4DC()
{
  sub_1C0FF4BE4(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t DefaultCloudSharedProperties.__allocating_init(isLiked:numberOfLikes:numberOfComments:sensitiveAssetMoreHelpMenu:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  return result;
}

uint64_t DefaultCloudLinkProperties.__allocating_init(linkType:)(_BYTE *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  return result;
}

uint64_t DefaultDuplicateMergingProperties.__allocating_init(selectionCount:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t DefaultChromeEnvironment.__allocating_init(videoModel:assetDebugInfo:visualAnalysisState:assetCloudSharedProperties:isChromeVisible:contentPrivacyState:isInSelectionMode:isAccessoryViewVisible:isPresentedForPreview:hasUserZoomedIn:isSharedAlbumAsset:isSharedCollectionAsset:isMacSyncedAsset:isSyndicationLibraryAsset:isHDRAsset:isScrubbing:currentAssetNormalizedOffset:localizedTitle:localizedSubtitle:assetCollectionKind:assetIsFavorite:assetMediaType:assetCloudLinkProperties:assetSyndicationState:assetSyndicationIdentifier:duplicateMergingProperties:badgeInfo:performableActionProperties:isInEditMode:assetExists:isDeviceLocked:isAnimatingPresentationSize:isAssetContentRequiringSensitivityProtection:useSystemBars:presentingViewController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  OUTLINED_FUNCTION_13_6(a1, a2, a3, a4, a5, a6, a7, a8);
  v8 = OUTLINED_FUNCTION_10_10();
  return sub_1C0FF1798(v9, v10, v11, v12, v13, v14, v15, v16, v8, v18, SBYTE1(v18), SBYTE2(v18), SBYTE3(v18), SBYTE4(v18), SBYTE5(v18), SBYTE6(v18), SHIBYTE(v18), v19, SHIBYTE(v19), v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v37);
}

uint64_t DefaultChromeEnvironment.init(videoModel:assetDebugInfo:visualAnalysisState:assetCloudSharedProperties:isChromeVisible:contentPrivacyState:isInSelectionMode:isAccessoryViewVisible:isPresentedForPreview:hasUserZoomedIn:isSharedAlbumAsset:isSharedCollectionAsset:isMacSyncedAsset:isSyndicationLibraryAsset:isHDRAsset:isScrubbing:currentAssetNormalizedOffset:localizedTitle:localizedSubtitle:assetCollectionKind:assetIsFavorite:assetMediaType:assetCloudLinkProperties:assetSyndicationState:assetSyndicationIdentifier:duplicateMergingProperties:badgeInfo:performableActionProperties:isInEditMode:assetExists:isDeviceLocked:isAnimatingPresentationSize:isAssetContentRequiringSensitivityProtection:useSystemBars:presentingViewController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  OUTLINED_FUNCTION_13_6(a1, a2, a3, a4, a5, a6, a7, a8);
  v8 = OUTLINED_FUNCTION_10_10();
  return sub_1C0FF1A18(v9, v8, v10, v11, v12, v13, v14, v15, v16, v18, SBYTE1(v18), SBYTE2(v18), SBYTE3(v18), SBYTE4(v18), SBYTE5(v18), SBYTE6(v18), SHIBYTE(v18), v19, SHIBYTE(v19), v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v37, v38);
}

void sub_1C0FEB688(__int128 *a1)
{
  v2 = a1[1];
  v16 = *a1;
  v17 = v2;
  v18 = *(a1 + 32);
  v3 = *(v1 + 96);
  v19[0] = *(v1 + 80);
  v19[1] = v3;
  v20 = *(v1 + 112);
  sub_1C0FF5080(v19, v15);
  v4 = sub_1C0FF1114(v19, &v16);
  sub_1C0FF50DC(v19);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v6 - 16) = v1;
    *(v6 - 8) = &v16;
    OUTLINED_FUNCTION_22_4(v7, v8, v9);
    sub_1C0FF50DC(&v16);
  }

  else
  {
    v10 = *(v1 + 80);
    v11 = *(v1 + 88);
    v12 = *(v1 + 96);
    v13 = *(v1 + 104);
    v14 = v17;
    *(v1 + 80) = v16;
    *(v1 + 96) = v14;
    *(v1 + 112) = v18;
    sub_1C0FF2048(v10, v11, v12, v13);
  }
}

void sub_1C0FEB77C(char a1)
{
  if (*(v1 + 136) == (a1 & 1))
  {
    *(v1 + 136) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_4(v3, v4, v5);
  }
}

void sub_1C0FEB804(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == *(v1 + 137))
  {
    *(v1 + 137) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_4(v4, v5, v6);
  }
}

void sub_1C0FEB88C(char a1)
{
  if (*(v1 + 138) == (a1 & 1))
  {
    *(v1 + 138) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_4(v3, v4, v5);
  }
}

void sub_1C0FEB914(char a1)
{
  if (*(v1 + 139) == (a1 & 1))
  {
    *(v1 + 139) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_4(v3, v4, v5);
  }
}

void sub_1C0FEB99C(char a1)
{
  if (*(v1 + 140) == (a1 & 1))
  {
    *(v1 + 140) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_4(v3, v4, v5);
  }
}

void sub_1C0FEBA24(char a1)
{
  if (*(v1 + 141) == (a1 & 1))
  {
    *(v1 + 141) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_4(v3, v4, v5);
  }
}

void sub_1C0FEBAAC(char a1)
{
  if (*(v1 + 142) == (a1 & 1))
  {
    *(v1 + 142) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_4(v3, v4, v5);
  }
}

void sub_1C0FEBB34(char a1)
{
  if (*(v1 + 143) == (a1 & 1))
  {
    *(v1 + 143) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_4(v3, v4, v5);
  }
}

void sub_1C0FEBBBC(char a1)
{
  if (*(v1 + 144) == (a1 & 1))
  {
    *(v1 + 144) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_4(v3, v4, v5);
  }
}

void sub_1C0FEBC44(char a1)
{
  if (*(v1 + 145) == (a1 & 1))
  {
    *(v1 + 145) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_4(v3, v4, v5);
  }
}

void sub_1C0FEBCCC(char a1)
{
  if (*(v1 + 146) == (a1 & 1))
  {
    *(v1 + 146) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_4(v3, v4, v5);
  }
}

void sub_1C0FEBD54(char a1)
{
  if (*(v1 + 147) == (a1 & 1))
  {
    *(v1 + 147) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_4(v3, v4, v5);
  }
}

void sub_1C0FEBDDC(double a1)
{
  if (*(v1 + 152) == a1)
  {
    *(v1 + 152) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v4 - 16) = v1;
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_22_4(v5, v6, v7);
  }
}

void sub_1C0FEBE7C(char a1)
{
  if (*(v1 + 160) == (a1 & 1))
  {
    *(v1 + 160) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_4(v3, v4, v5);
  }
}

uint64_t sub_1C0FEBF04()
{
  OUTLINED_FUNCTION_18_0();
  if (OUTLINED_FUNCTION_38_1(*(v1 + 168)))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_5_6();
    *(v4 - 16) = v0;
    OUTLINED_FUNCTION_22_4(v5, v6, v7);
  }

  else
  {
    *(v1 + 168) = v2;
    *(v1 + 176) = v0;
  }
}

uint64_t sub_1C0FEBFCC()
{
  OUTLINED_FUNCTION_18_0();
  if (OUTLINED_FUNCTION_38_1(*(v1 + 184)))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_5_6();
    *(v4 - 16) = v0;
    OUTLINED_FUNCTION_22_4(v5, v6, v7);
  }

  else
  {
    *(v1 + 184) = v2;
    *(v1 + 192) = v0;
  }
}

double sub_1C0FEC094(unsigned __int8 *a1)
{
  if (*(v1 + 200) != *a1)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_4(v3, v4, v5);
  }

  return result;
}

void sub_1C0FEC114(char a1)
{
  if (*(v1 + 201) == (a1 & 1))
  {
    *(v1 + 201) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_4(v3, v4, v5);
  }
}

double sub_1C0FEC19C(uint64_t a1)
{
  if (*(v1 + 208) != a1)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_2_7();
    *(v4 - 16) = v1;
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_22_4(v5, v6, v7);
  }

  return result;
}

double sub_1C0FEC22C(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (*(v1 + 232) != v2)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_4(v5, v6, v7);
  }

  return result;
}

uint64_t sub_1C0FEC2C0()
{
  OUTLINED_FUNCTION_18_0();
  swift_beginAccess();
  if (OUTLINED_FUNCTION_38_1(*(v1 + 240)))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_5_6();
    *(v4 - 16) = v0;
    OUTLINED_FUNCTION_22_4(v5, v6, v7);
  }

  else
  {
    *(v1 + 240) = v2;
    *(v1 + 248) = v0;
  }
}

uint64_t sub_1C0FEC37C(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_39_1(KeyPath, v2, v3, v4, v5, v6, v7, v8, v10);

  return swift_unknownObjectRelease();
}

void sub_1C0FEC3F4()
{
  OUTLINED_FUNCTION_19_4();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[36];

  v8 = sub_1C0FF1164(v5, v6, v7, v2, v3, v4);

  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[2] = v0;
    v13[3] = v2;
    v13[4] = v3;
    v13[5] = v4;
    OUTLINED_FUNCTION_22_4(v10, v11, v13);

    OUTLINED_FUNCTION_18_4();
  }

  else
  {
    v0[34] = v2;
    v0[35] = v3;
    v0[36] = v4;

    OUTLINED_FUNCTION_18_4();
  }
}

void sub_1C0FEC548(char a1)
{
  if (*(v1 + 312) == (a1 & 1))
  {
    *(v1 + 312) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_4(v3, v4, v5);
  }
}

void sub_1C0FEC5D0(char a1)
{
  if (*(v1 + 313) == (a1 & 1))
  {
    *(v1 + 313) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_4(v3, v4, v5);
  }
}

double sub_1C0FEC658(uint64_t a1, int a2)
{
  v3 = a2;
  v4 = *(v2 + 328);
  if (v4 & 1) != 0 || (a2)
  {
    if (v4 & a2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = *(v2 + 320);
    if (result == *&a1)
    {
LABEL_4:
      *(v2 + 320) = *&a1;
      *(v2 + 328) = a2 & 1;
      return result;
    }
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_20_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_6();
  *(v7 - 16) = v3 & 1;
  OUTLINED_FUNCTION_22_4(v8, v9, v10);

  return result;
}

double sub_1C0FEC718(uint64_t a1, int a2)
{
  v3 = a2;
  v4 = *(v2 + 344);
  if (v4 & 1) != 0 || (a2)
  {
    if (v4 & a2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = *(v2 + 336);
    if (result == *&a1)
    {
LABEL_4:
      *(v2 + 336) = *&a1;
      *(v2 + 344) = a2 & 1;
      return result;
    }
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_20_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_6();
  *(v7 - 16) = v3 & 1;
  OUTLINED_FUNCTION_22_4(v8, v9, v10);

  return result;
}

void sub_1C0FEC7D8(char a1)
{
  if (*(v1 + 345) == (a1 & 1))
  {
    *(v1 + 345) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_4(v3, v4, v5);
  }
}

void sub_1C0FEC860(char a1)
{
  if (*(v1 + 346) == (a1 & 1))
  {
    *(v1 + 346) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_4(v3, v4, v5);
  }
}

void sub_1C0FEC8E8(char a1)
{
  if (*(v1 + 347) == (a1 & 1))
  {
    *(v1 + 347) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_4(v3, v4, v5);
  }
}

void sub_1C0FEC970(char a1)
{
  if (*(v1 + 348) == (a1 & 1))
  {
    *(v1 + 348) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_22_4(v3, v4, v5);
  }
}

void sub_1C0FEC9F8(void *a1)
{
  v3 = *(v1 + 352);
  v4 = OUTLINED_FUNCTION_2();
  v6 = sub_1C0FF11D0(v4, v5);

  if (v6)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_7();
    *(v8 - 16) = v1;
    *(v8 - 8) = a1;
    OUTLINED_FUNCTION_22_4(v9, v10, v11);
  }

  else
  {
    v12 = *(v1 + 352);
    *(v1 + 352) = a1;
  }
}

uint64_t sub_1C0FECAD0(uint64_t a1)
{
  sub_1C0FECD7C();
  OUTLINED_FUNCTION_31_2();
  sub_1C0FF5210(v2, v3, v4, v5);
  OUTLINED_FUNCTION_31_2();
  sub_1C0FF5210(v6, v7, v8, v9);
  if (!v23)
  {
    sub_1C0FD1A5C(v27, &qword_1EBE8FE30, &unk_1C12A1CC0);
    if (!*(&v25 + 1))
    {
      sub_1C0FD1A5C(v22, &qword_1EBE8FE30, &unk_1C12A1CC0);
      goto LABEL_7;
    }

LABEL_9:
    sub_1C0FD1A5C(v22, &qword_1EBE908E0, &qword_1C12B3B50);
LABEL_10:
    OUTLINED_FUNCTION_31_2();
    sub_1C0FF5210(v14, v15, v16, v17);
    sub_1C0FECE58(v22);
    v13 = OUTLINED_FUNCTION_34_2();
    return sub_1C0FD1A5C(v13, v11, v12);
  }

  sub_1C0FF5210(v22, v21, &qword_1EBE8FE30, &unk_1C12A1CC0);
  if (!*(&v25 + 1))
  {
    sub_1C0FD1A5C(v27, &qword_1EBE8FE30, &unk_1C12A1CC0);
    sub_1C0FD1A08(v21);
    goto LABEL_9;
  }

  v19[0] = v24;
  v19[1] = v25;
  v20 = v26;
  v10 = MEMORY[0x1C68F0200](v21, v19);
  sub_1C0FD1A08(v19);
  sub_1C0FD1A5C(v27, &qword_1EBE8FE30, &unk_1C12A1CC0);
  sub_1C0FD1A08(v21);
  sub_1C0FD1A5C(v22, &qword_1EBE8FE30, &unk_1C12A1CC0);
  if ((v10 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v11 = &qword_1EBE8FE30;
  v12 = &unk_1C12A1CC0;
  v13 = a1;
  return sub_1C0FD1A5C(v13, v11, v12);
}

uint64_t sub_1C0FECC98(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  v3[10] = v1;
  sub_1C0FECD7C();
  return OUTLINED_FUNCTION_36();
}

void sub_1C0FECCF8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_31_2();
    sub_1C0FF5210(v3, v4, v5, v6);
    sub_1C0FECAD0(v2 + 40);
    v7 = OUTLINED_FUNCTION_34_2();
    sub_1C0FD1A5C(v7, v8, v9);
  }

  else
  {
    sub_1C0FECAD0(*a1);
  }

  free(v2);
}

uint64_t sub_1C0FECD7C()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v12, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4(v0 + 16, v10);
  return sub_1C0FF5210(v0 + 16, v1, &qword_1EBE8FE30, &unk_1C12A1CC0);
}

uint64_t sub_1C0FECE58(uint64_t a1)
{
  swift_beginAccess();
  OUTLINED_FUNCTION_31_2();
  sub_1C0FF5210(v3, v4, v5, v6);
  v7 = sub_1C0FF125C(v14, a1);
  sub_1C0FD1A5C(v14, &qword_1EBE8FE30, &unk_1C12A1CC0);
  if (v7)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_2_7();
    *(v9 - 16) = v1;
    *(v9 - 8) = a1;
    OUTLINED_FUNCTION_22_4(v10, v11, v12);
  }

  else
  {
    sub_1C0FF5210(a1, v14, &qword_1EBE8FE30, &unk_1C12A1CC0);
    swift_beginAccess();
    sub_1C0FF5184(v14, v1 + 16);
    swift_endAccess();
  }

  return sub_1C0FD1A5C(a1, &qword_1EBE8FE30, &unk_1C12A1CC0);
}

uint64_t sub_1C0FECF94(uint64_t a1, uint64_t a2)
{
  sub_1C0FF5210(a2, v4, &qword_1EBE8FE30, &unk_1C12A1CC0);
  swift_beginAccess();
  sub_1C0FF5184(v4, a1 + 16);
  return swift_endAccess();
}

uint64_t sub_1C0FED00C()
{
  OUTLINED_FUNCTION_18_0();
  swift_unknownObjectRetain();
  result = sub_1C0FED16C();
  v2 = result;
  if (!v0)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (!result)
  {
LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v2 == v0)
  {

    return swift_unknownObjectRelease();
  }

LABEL_9:
  v3 = OUTLINED_FUNCTION_2();

  return sub_1C0FED218(v3);
}

uint64_t sub_1C0FED0BC(uint64_t a1)
{
  OUTLINED_FUNCTION_19_5(a1);
  *v1 = sub_1C0FED16C();
  v1[1] = v2;
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_1C0FED0FC(void *a1, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1C0FED00C();
  }

  swift_unknownObjectRetain();
  sub_1C0FED00C();

  return swift_unknownObjectRelease();
}

uint64_t sub_1C0FED16C()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return swift_unknownObjectRetain();
}

uint64_t sub_1C0FED1DC()
{
  OUTLINED_FUNCTION_33_0();
  v2 = swift_unknownObjectRetain();
  return v0(v2, v1);
}

uint64_t sub_1C0FED218(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_39_1(KeyPath, v2, v3, v4, v5, v6, v7, v8, v10);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C0FED290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1C0FED2F8(uint64_t a1)
{

  v2 = sub_1C0FED440();
  v3 = v2;
  if (!a1)
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:

    goto LABEL_9;
  }

  if (v3 == a1)
  {

    return;
  }

LABEL_9:

  sub_1C0FED4D8();
}

uint64_t sub_1C0FED3A8(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C0FED440();
  return OUTLINED_FUNCTION_17_3();
}

void sub_1C0FED3E8(uint64_t *a1, char a2)
{
  if (a2)
  {

    sub_1C0FED2F8(v2);
  }

  else
  {
    sub_1C0FED2F8(*a1);
  }
}

uint64_t sub_1C0FED440()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();
}

double sub_1C0FED4D8()
{
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_39_1(KeyPath, v1, v2, v3, v4, v5, v6, v7, v9);

  return result;
}

void sub_1C0FED540(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = a2;
}

void sub_1C0FED57C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *(a1 + 32);
  *&v16 = *a1;
  *(&v16 + 1) = v2;
  v17 = v3;
  v18 = v4;
  v19 = v5;
  sub_1C0FED750();
  v10 = v13;
  v11 = v14;
  v12 = v15;
  v6 = static OneUpVisualAnalysisState.== infix(_:_:)(&v16, &v10);
  sub_1C0FF2048(v10, *(&v10 + 1), v11, *(&v11 + 1));
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_34_2();

    sub_1C0FF2048(v7, v8, v9, v4);
  }

  else
  {
    *&v16 = v1;
    *(&v16 + 1) = v2;
    v17 = v3;
    v18 = v4;
    v19 = v5;
    sub_1C0FEB688(&v16);
  }
}

uint64_t sub_1C0FED65C(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  sub_1C0FED750();
  return OUTLINED_FUNCTION_36();
}

void sub_1C0FED6BC(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  v9[0] = v4;
  v9[1] = v5;
  v9[2] = v6;
  v9[3] = v7;
  v10 = v8;
  if (a2)
  {
    sub_1C0FF2090(v4, v5, v6, v7);
    sub_1C0FED57C(v9);
    sub_1C0FF2048(*v3, v3[1], v3[2], v3[3]);
  }

  else
  {
    sub_1C0FED57C(v9);
  }

  free(v3);
}

double sub_1C0FED750()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v15, v0);
  sub_1C1261F30();

  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  v13 = *(v0 + 104);
  *v1 = v10;
  *(v1 + 8) = v11;
  *(v1 + 16) = v12;
  *(v1 + 24) = v13;
  *(v1 + 32) = *(v0 + 112);
  return sub_1C0FF2090(v10, v11, v12, v13);
}

double sub_1C0FED7D0()
{
  OUTLINED_FUNCTION_13_1();
  v1(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *v0 = v5[0];
  *(v0 + 16) = v4;
  *(v0 + 32) = v2;
  return result;
}

uint64_t sub_1C0FED814(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, double))
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v13[0] = *a1;
  v13[1] = v7;
  v13[2] = v8;
  v13[3] = v9;
  v14 = v10;
  v11 = sub_1C0FF2090(v13[0], v7, v8, v9);
  return a6(v13, v11);
}

void sub_1C0FED870(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(a2 + 16);
  *(a1 + 80) = *a2;
  *(a1 + 96) = v6;
  *(a1 + 112) = *(a2 + 32);
  sub_1C0FF5080(a2, v7);
  sub_1C0FF2048(v2, v3, v4, v5);
}

uint64_t sub_1C0FED8F0()
{
  OUTLINED_FUNCTION_18_0();
  swift_getObjectType();
  OUTLINED_FUNCTION_8_8();
  return OUTLINED_FUNCTION_42_2(v0, v1, v2, v3, v4, v5, sub_1C0FF5064);
}

uint64_t sub_1C0FED948(uint64_t a1)
{
  OUTLINED_FUNCTION_19_5(a1);
  *v1 = sub_1C0FED9BC();
  v1[1] = v2;
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_1C0FED9BC()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return swift_unknownObjectRetain();
}

uint64_t sub_1C0FEDA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 120) = a2;
  *(a1 + 128) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1C0FEDA68(char a1)
{
  v1 = a1 & 1;
  sub_1C0FEDB24();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C0FEB77C(v1);
  }
}

uint64_t (*sub_1C0FEDAB8(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C0FEDB24();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C0FEDAF8;
}

uint64_t sub_1C0FEDB24()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 136);
}

void *sub_1C0FEDB8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C0FEDC48(&v3);
  *a1 = v3;
  return result;
}

void sub_1C0FEDC00(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1C0FEDCD8();
  if (v1 != v2[1])
  {
    v2[0] = v1;
    sub_1C0FEB804(v2);
  }
}

uint64_t sub_1C0FEDC4C(void *a1)
{
  OUTLINED_FUNCTION_43(a1);
  sub_1C0FEDCD8();
  return OUTLINED_FUNCTION_36();
}

void sub_1C0FEDC90(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v2 = &v3;
  }

  else
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  sub_1C0FEDC00(v2);
}

void sub_1C0FEDCD8()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v10, v0);
  sub_1C1261F30();

  *v1 = *(v0 + 137);
}

void sub_1C0FEDDB8(char a1)
{
  v1 = a1 & 1;
  sub_1C0FEDE74();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C0FEB88C(v1);
  }
}

uint64_t (*sub_1C0FEDE08(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C0FEDE74();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C0FEDE48;
}

uint64_t sub_1C0FEDE74()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 138);
}

void sub_1C0FEDEDC(char a1)
{
  v1 = a1 & 1;
  sub_1C0FEDF98();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C0FEB914(v1);
  }
}

uint64_t (*sub_1C0FEDF2C(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C0FEDF98();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C0FEDF6C;
}

uint64_t sub_1C0FEDF98()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 139);
}

void sub_1C0FEE000(char a1)
{
  v1 = a1 & 1;
  sub_1C0FEE0BC();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C0FEB99C(v1);
  }
}

uint64_t (*sub_1C0FEE050(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C0FEE0BC();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C0FEE090;
}

uint64_t sub_1C0FEE0BC()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 140);
}

void sub_1C0FEE124(char a1)
{
  v1 = a1 & 1;
  sub_1C0FEE1E0();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C0FEBA24(v1);
  }
}

uint64_t (*sub_1C0FEE174(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C0FEE1E0();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C0FEE1B4;
}

uint64_t sub_1C0FEE1E0()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 141);
}

void sub_1C0FEE248(char a1)
{
  v1 = a1 & 1;
  sub_1C0FEE304();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C0FEBAAC(v1);
  }
}

uint64_t (*sub_1C0FEE298(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C0FEE304();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C0FEE2D8;
}

uint64_t sub_1C0FEE304()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 142);
}

void sub_1C0FEE36C(char a1)
{
  v1 = a1 & 1;
  sub_1C0FEE428();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C0FEBB34(v1);
  }
}

uint64_t (*sub_1C0FEE3BC(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C0FEE428();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C0FEE3FC;
}

uint64_t sub_1C0FEE428()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 143);
}

void sub_1C0FEE490(char a1)
{
  v1 = a1 & 1;
  sub_1C0FEE54C();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C0FEBBBC(v1);
  }
}

uint64_t (*sub_1C0FEE4E0(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C0FEE54C();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C0FEE520;
}

uint64_t sub_1C0FEE54C()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 144);
}

void sub_1C0FEE5B4(char a1)
{
  v1 = a1 & 1;
  sub_1C0FEE670();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C0FEBC44(v1);
  }
}

uint64_t (*sub_1C0FEE604(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C0FEE670();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C0FEE644;
}

uint64_t sub_1C0FEE670()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 145);
}

void sub_1C0FEE6D8(char a1)
{
  v1 = a1 & 1;
  sub_1C0FEE794();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C0FEBCCC(v1);
  }
}

uint64_t (*sub_1C0FEE728(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C0FEE794();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C0FEE768;
}

uint64_t sub_1C0FEE794()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 146);
}

void sub_1C0FEE7FC(char a1)
{
  v1 = a1 & 1;
  sub_1C0FEE8B8();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C0FEBD54(v1);
  }
}

uint64_t (*sub_1C0FEE84C(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C0FEE8B8();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C0FEE88C;
}

uint64_t sub_1C0FEE8B8()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 147);
}

void sub_1C0FEE920(double a1)
{
  if (sub_1C0FEE9F0() != a1)
  {

    sub_1C0FEBDDC(a1);
  }
}

uint64_t sub_1C0FEE970(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C0FEE9F0();
  return OUTLINED_FUNCTION_17_3();
}

void sub_1C0FEE9B0(double *a1)
{
  v1 = *a1;
  if (v1 != sub_1C0FEE9F0())
  {
    sub_1C0FEBDDC(v1);
  }
}

double sub_1C0FEE9F0()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 152);
}

void sub_1C0FEEA5C(char a1)
{
  v1 = a1 & 1;
  sub_1C0FEEB14();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C0FEBE7C(v1);
  }
}

uint64_t (*sub_1C0FEEAA8(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C0FEEB14();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C0FEEAE8;
}

uint64_t sub_1C0FEEB14()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 160);
}

uint64_t sub_1C0FEEBAC(uint64_t a1)
{
  OUTLINED_FUNCTION_19_5(a1);
  *v1 = sub_1C0FEEC04();
  v1[1] = v2;
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_1C0FEEC04()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v11, v0);
  sub_1C1261F30();

  v9 = *(v0 + 168);

  return v9;
}

uint64_t sub_1C0FEEC7C()
{
  OUTLINED_FUNCTION_33_0();

  v1 = OUTLINED_FUNCTION_46();
  return v0(v1);
}

uint64_t sub_1C0FEECB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 168) = a2;
  *(a1 + 176) = a3;
}

uint64_t sub_1C0FEED20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_18_0();
  result = v6();
  if (v4)
  {
    if (v8)
    {
      if (result == v5 && v8 == v4)
      {

LABEL_15:
      }

      OUTLINED_FUNCTION_2();
      v10 = sub_1C1266D50();

      if (v10)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (!v8)
    {
      return result;
    }
  }

  v11 = OUTLINED_FUNCTION_2();

  return a4(v11);
}

uint64_t sub_1C0FEEE20(uint64_t a1)
{
  OUTLINED_FUNCTION_19_5(a1);
  *v1 = sub_1C0FEEEF0();
  v1[1] = v2;
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_1C0FEEE78(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {

    v4 = OUTLINED_FUNCTION_46();
    a3(v4);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_46();
    return a3(v6);
  }
}

uint64_t sub_1C0FEEEF0()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v11, v0);
  sub_1C1261F30();

  v9 = *(v0 + 184);

  return v9;
}

uint64_t sub_1C0FEEF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 184) = a2;
  *(a1 + 192) = a3;
}

void *sub_1C0FEEFA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C0FEF060(&v3);
  *a1 = v3;
  return result;
}

double sub_1C0FEF018(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1C0FEF0F0();
  if (v1 != v3[1])
  {
    v3[0] = v1;
    return sub_1C0FEC094(v3);
  }

  return result;
}

uint64_t sub_1C0FEF064(void *a1)
{
  OUTLINED_FUNCTION_43(a1);
  sub_1C0FEF0F0();
  return OUTLINED_FUNCTION_36();
}

double sub_1C0FEF0A8(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  else
  {
    v5 = *(a1 + 8);
    v2 = &v5;
  }

  return sub_1C0FEF018(v2);
}

void sub_1C0FEF0F0()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v10, v0);
  sub_1C1261F30();

  *v1 = *(v0 + 200);
}

void sub_1C0FEF1D0(char a1)
{
  v1 = a1 & 1;
  sub_1C0FEF28C();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C0FEC114(v1);
  }
}

uint64_t (*sub_1C0FEF220(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C0FEF28C();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C0FEF260;
}

uint64_t sub_1C0FEF28C()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 201);
}

double sub_1C0FEF2F4(uint64_t a1)
{
  if (sub_1C0FEF3B8() != a1)
  {

    return sub_1C0FEC19C(a1);
  }

  return result;
}

uint64_t sub_1C0FEF344(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C0FEF3B8();
  return OUTLINED_FUNCTION_17_3();
}

double sub_1C0FEF384(uint64_t *a1)
{
  v1 = *a1;
  if (v1 != sub_1C0FEF3B8())
  {
    return sub_1C0FEC19C(v1);
  }

  return result;
}

uint64_t sub_1C0FEF3B8()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 208);
}

void sub_1C0FEF420()
{
  OUTLINED_FUNCTION_19_4();
  v1 = *v0;
  ObjectType = swift_getObjectType();
  v3 = swift_unknownObjectRetain();
  OUTLINED_FUNCTION_29_0(v3, v1, ObjectType);
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C0FEF480()
{
  OUTLINED_FUNCTION_18_0();
  swift_getObjectType();
  OUTLINED_FUNCTION_6_9();
  return OUTLINED_FUNCTION_42_2(v0, v1, v2, v3, v4, v5, sub_1C0FF4F14);
}

uint64_t sub_1C0FEF4D8(uint64_t a1)
{
  OUTLINED_FUNCTION_19_5(a1);
  *v1 = sub_1C0FEF5F0();
  v1[1] = v2;
  return OUTLINED_FUNCTION_17_3();
}

void sub_1C0FEF54C()
{
  OUTLINED_FUNCTION_19_4();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  ObjectType = swift_getObjectType();
  v6 = v3[2];
  if (v1)
  {
    v7 = swift_unknownObjectRetain();
    OUTLINED_FUNCTION_29_0(v7, v6, ObjectType);
    OUTLINED_FUNCTION_18_4();

    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_29_0(v4, v6, ObjectType);
    OUTLINED_FUNCTION_18_4();
  }
}

uint64_t sub_1C0FEF5F0()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return swift_unknownObjectRetain();
}

uint64_t sub_1C0FEF660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 216) = a2;
  *(a1 + 224) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void *sub_1C0FEF6EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C0FEF760();
  *a1 = v3;
  return result;
}

uint64_t sub_1C0FEF760()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v12, v0);
  sub_1C1261F30();

  result = OUTLINED_FUNCTION_7_4(v0 + 232, v10);
  *v1 = *(v0 + 232);
  return result;
}

uint64_t sub_1C0FEF7D4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 232) = a2;
  return result;
}

void sub_1C0FEF828()
{
  OUTLINED_FUNCTION_19_4();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *v2 = v3;
  v3[4] = v0;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC17PhotosSwiftUICore24DefaultChromeEnvironment___observationRegistrar;
  *v3 = v0;
  v4 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_1_6(v4);

  *v3 = v0;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_2_3(KeyPath);

  v3[7] = sub_1C0FEF69C(v3);
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C0FEF944@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C0FEF988();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0FEF988()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v12, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4(v0 + 240, v9);
  v10 = *(v0 + 240);

  return v10;
}

uint64_t sub_1C0FEFA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 240) = a2;
  *(a1 + 248) = a3;
}

void sub_1C0FEFA74()
{
  OUTLINED_FUNCTION_19_4();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *v2 = v3;
  v3[4] = v0;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC17PhotosSwiftUICore24DefaultChromeEnvironment___observationRegistrar;
  *v3 = v0;
  v4 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_1_6(v4);

  *v3 = v0;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_2_3(KeyPath);

  v3[7] = sub_1C0FEF8F4(v3);
  OUTLINED_FUNCTION_18_4();
}

void sub_1C0FEFB40(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  OUTLINED_FUNCTION_2();
  sub_1C1261F40();

  free(v3);
}

uint64_t sub_1C0FEFBD0()
{
  OUTLINED_FUNCTION_18_0();
  swift_unknownObjectRetain();
  v1 = sub_1C0FEFD08();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v1 == v0)
  {

    return swift_unknownObjectRelease();
  }

  else
  {

    return sub_1C0FEC37C(v0);
  }
}

uint64_t sub_1C0FEFC58(uint64_t a1)
{
  OUTLINED_FUNCTION_19_5(a1);
  *v1 = sub_1C0FEFD08();
  v1[1] = v2;
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_1C0FEFC98(void *a1, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1C0FEFBD0();
  }

  swift_unknownObjectRetain();
  sub_1C0FEFBD0();

  return swift_unknownObjectRelease();
}

uint64_t sub_1C0FEFD08()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return swift_unknownObjectRetain();
}

uint64_t sub_1C0FEFD78()
{
  OUTLINED_FUNCTION_33_0();
  v2 = swift_unknownObjectRetain();
  return v0(v2, v1);
}

uint64_t sub_1C0FEFDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 256) = a2;
  *(a1 + 264) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1C0FEFDF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  sub_1C0FEFFC4();
  if (sub_1C0FEA54C(v1, v5) & 1) != 0 && (sub_1C0FEA54C(v2, v6))
  {
    v4 = sub_1C0FEA54C(v3, v7);

    if (v4)
    {

      return;
    }
  }

  else
  {
  }

  sub_1C0FEC3F4();
}

uint64_t sub_1C0FEFED8(void *a1)
{
  a1[3] = v1;
  sub_1C0FEFFC4();
  return OUTLINED_FUNCTION_17_3();
}

void sub_1C0FEFF1C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  if (a2)
  {
    v4 = *a1;
    v5 = v2;
    v6 = v3;

    sub_1C0FEFDF0(&v4);
  }

  else
  {
    v4 = *a1;
    v5 = v2;
    v6 = v3;
    sub_1C0FEFDF0(&v4);
  }
}

double sub_1C0FEFFC4()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v14, v0);
  sub_1C1261F30();

  v10 = v0[34];
  v11 = v0[35];
  v12 = v0[36];
  *v1 = v10;
  v1[1] = v11;
  v1[2] = v12;

  return result;
}

double sub_1C0FF004C()
{
  OUTLINED_FUNCTION_13_1();
  v1(&v4);
  v2 = v5;
  result = *&v4;
  *v0 = v4;
  *(v0 + 16) = v2;
  return result;
}

uint64_t sub_1C0FF0090(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, __n128))
{
  v6 = a1[1];
  v7 = a1[2];
  v9[0] = *a1;
  v9[1] = v6;
  v9[2] = v7;

  return (a5)(v9);
}

uint64_t sub_1C0FF00F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[34] = a2;
  a1[35] = a3;
  a1[36] = a4;
}

uint64_t sub_1C0FF0174()
{
  OUTLINED_FUNCTION_18_0();
  swift_getObjectType();
  OUTLINED_FUNCTION_7_9();
  return OUTLINED_FUNCTION_42_2(v0, v1, v2, v3, v4, v5, sub_1C0FF4E40);
}

uint64_t sub_1C0FF01CC(uint64_t a1)
{
  OUTLINED_FUNCTION_19_5(a1);
  *v1 = sub_1C0FF0240();
  v1[1] = v2;
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_1C0FF0240()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return swift_unknownObjectRetain();
}

uint64_t sub_1C0FF02B0(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = *a2;
  v10 = swift_unknownObjectRetain();
  return sub_1C0FF4E98(v10, v9, v11, v8, a5, a6);
}

uint64_t sub_1C0FF0308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 296) = a2;
  *(a1 + 304) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1C0FF0344(char a1)
{
  v1 = a1 & 1;
  sub_1C0FF0400();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C0FEC548(v1);
  }
}

uint64_t (*sub_1C0FF0394(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C0FF0400();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C0FF03D4;
}

uint64_t sub_1C0FF0400()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 312);
}

void sub_1C0FF0468(char a1)
{
  v1 = a1 & 1;
  sub_1C0FF0524();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C0FEC5D0(v1);
  }
}

uint64_t (*sub_1C0FF04B8(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C0FF0524();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C0FF04F8;
}

uint64_t sub_1C0FF0524()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 313);
}

uint64_t sub_1C0FF0608(uint64_t a1)
{
  OUTLINED_FUNCTION_19_5(a1);
  v1 = sub_1C0FF066C();
  OUTLINED_FUNCTION_32(v1, v2);
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_1C0FF066C()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 320);
}

unint64_t sub_1C0FF0788(unint64_t a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(unint64_t, void, __n128, __n128))
{
  *&result = COERCE_DOUBLE(a3());
  if (a2)
  {
    if (v7)
    {
      return result;
    }
  }

  else if ((v7 & 1) == 0)
  {
    v8.n128_u64[0] = result;
    v9.n128_u64[0] = a1;
    if (*&a1 == *&result)
    {
      return result;
    }
  }

  *&result = COERCE_DOUBLE(a4(a1, a2 & 1, v8, v9));
  return result;
}

uint64_t sub_1C0FF081C(uint64_t a1)
{
  OUTLINED_FUNCTION_19_5(a1);
  v1 = sub_1C0FF0880();
  OUTLINED_FUNCTION_32(v1, v2);
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_1C0FF0880()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 336);
}

void sub_1C0FF0920(char a1)
{
  v1 = a1 & 1;
  sub_1C0FF09DC();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C0FEC7D8(v1);
  }
}

uint64_t (*sub_1C0FF0970(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C0FF09DC();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C0FF09B0;
}

uint64_t sub_1C0FF09DC()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 345);
}

void sub_1C0FF0A44(char a1)
{
  v1 = a1 & 1;
  sub_1C0FF0B00();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C0FEC860(v1);
  }
}

uint64_t (*sub_1C0FF0A94(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C0FF0B00();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C0FF0AD4;
}

uint64_t sub_1C0FF0B00()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 346);
}

void sub_1C0FF0B68(char a1)
{
  v1 = a1 & 1;
  sub_1C0FF0C24();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C0FEC8E8(v1);
  }
}

uint64_t (*sub_1C0FF0BB8(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C0FF0C24();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C0FF0BF8;
}

uint64_t sub_1C0FF0C24()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 347);
}

void sub_1C0FF0C8C(char a1)
{
  v1 = a1 & 1;
  sub_1C0FF0D98();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C0FEC970(v1);
  }
}

uint64_t (*sub_1C0FF0CDC(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C0FF0D98();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C0FF0D1C;
}

uint64_t sub_1C0FF0D48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v5 = *(a1 + 8);
  result = a3();
  if (v5 != (result & 1))
  {
    return a4(v5);
  }

  return result;
}

uint64_t sub_1C0FF0D98()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 348);
}

void sub_1C0FF0E00(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C0FF0E30(v1);
}

void sub_1C0FF0E30(void *a1)
{
  v2 = sub_1C0FF0FB8();
  v3 = v2;
  if (a1)
  {
    if (v2)
    {
      sub_1C0FDE8F8(0, &qword_1EDE7B648, 0x1E69DD258);
      v5 = a1;
      v4 = sub_1C12666B0();

      if (v4)
      {

        return;
      }
    }
  }

  else
  {
    if (!v2)
    {
      return;
    }
  }

  sub_1C0FEC9F8(a1);
}

uint64_t sub_1C0FF0F10(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C0FF0FB8();
  return OUTLINED_FUNCTION_17_3();
}

void sub_1C0FF0F50(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1C0FF0E30(v2);
  }

  else
  {
    sub_1C0FF0E30(*a1);
  }
}

void *sub_1C0FF0FB8()
{
  swift_getKeyPath();
  v1 = sub_1C0FF20D8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v12, v0);
  sub_1C1261F30();

  v9 = *(v0 + 352);
  v10 = v9;
  return v9;
}

void sub_1C0FF1028(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C0FEC9F8(v1);
}

void sub_1C0FF1058(uint64_t a1, void *a2)
{
  v2 = *(a1 + 352);
  *(a1 + 352) = a2;
  v3 = a2;
}

BOOL sub_1C0FF1114(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return (static OneUpVisualAnalysisState.== infix(_:_:)(v7, v5) & 1) == 0;
}

uint64_t sub_1C0FF1164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_1C0FEA54C(a1, a4) & 1) != 0 && (sub_1C0FEA54C(a2, a5))
  {
    v10 = sub_1C0FEA54C(a3, a6) ^ 1;
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

BOOL sub_1C0FF11D0(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_1C0FDE8F8(0, &qword_1EDE7B648, 0x1E69DD258);
    v5 = a1;
    v6 = a2;
    v2 = sub_1C12666B0();
  }

  return (v2 & 1) == 0;
}

uint64_t sub_1C0FF125C(uint64_t a1, uint64_t a2)
{
  sub_1C0FF5210(a1, v9, &qword_1EBE8FE30, &unk_1C12A1CC0);
  sub_1C0FF5210(a2, &v11, &qword_1EBE8FE30, &unk_1C12A1CC0);
  if (!v10)
  {
    if (!*(&v12 + 1))
    {
      sub_1C0FD1A5C(v9, &qword_1EBE8FE30, &unk_1C12A1CC0);
      v4 = 0;
      return v4 & 1;
    }

LABEL_7:
    sub_1C0FD1A5C(v9, &qword_1EBE908E0, &qword_1C12B3B50);
    v4 = 1;
    return v4 & 1;
  }

  sub_1C0FF5210(v9, v8, &qword_1EBE8FE30, &unk_1C12A1CC0);
  if (!*(&v12 + 1))
  {
    sub_1C0FD1A08(v8);
    goto LABEL_7;
  }

  v6[0] = v11;
  v6[1] = v12;
  v7 = v13;
  v3 = MEMORY[0x1C68F0200](v8, v6);
  sub_1C0FD1A08(v6);
  sub_1C0FD1A08(v8);
  sub_1C0FD1A5C(v9, &qword_1EBE8FE30, &unk_1C12A1CC0);
  v4 = v3 ^ 1;
  return v4 & 1;
}

uint64_t DefaultChromeEnvironment.deinit()
{
  sub_1C0FD1A5C(v0 + 16, &qword_1EBE8FE30, &unk_1C12A1CC0);
  swift_unknownObjectRelease();

  sub_1C0FF2048(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore24DefaultChromeEnvironment___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t DefaultChromeEnvironment.__deallocating_deinit()
{
  DefaultChromeEnvironment.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1C0FF15B0(void **a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1C0FF0FB8();
  return sub_1C0FF0F50;
}

void *DefaultCloudSharedProperties.sensitiveAssetMoreHelpMenu.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t DefaultCloudSharedProperties.init(isLiked:numberOfLikes:numberOfComments:sensitiveAssetMoreHelpMenu:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return OUTLINED_FUNCTION_24_1();
}

uint64_t DefaultCloudSharedProperties.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

BOOL sub_1C0FF170C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t DefaultOneUpPerformableActionProperties.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C0FF1798(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, char a7, char *a8, double a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char *a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 *a33, uint64_t a34, uint64_t a35, char a36, char a37, char a38, char a39, char a40, char a41, void *a42)
{
  type metadata accessor for DefaultChromeEnvironment(0);
  v53 = swift_allocObject();

  return sub_1C0FF1A18(a1, a9, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, v53);
}

uint64_t sub_1C0FF1A18(uint64_t a1, double a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, char a8, char *a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char *a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 *a33, uint64_t a34, uint64_t a35, char a36, char a37, char a38, char a39, char a40, char a41, void *a42, uint64_t a43)
{
  v61 = a8 & 1;
  swift_unknownObjectRelease();
  v67 = *(a5 + 32);
  v60 = *a9;
  v63 = *a24;
  v64 = *a29;
  v66 = *a33;
  v65 = *(a33 + 2);
  type metadata accessor for DefaultCloudSharedProperties();
  *(a43 + 16) = 0u;
  *(a43 + 32) = 0u;
  *(a43 + 48) = 0u;
  *(a43 + 64) = 0u;
  *(a43 + 80) = 0u;
  *(a43 + 96) = 0u;
  *(a43 + 112) = 0;
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 32) = 0;
  *(v46 + 40) = 0;
  *(v46 + 24) = 0;
  *(a43 + 120) = v46;
  *(a43 + 128) = &protocol witness table for DefaultCloudSharedProperties;
  *(a43 + 152) = 0;
  *(a43 + 160) = 0;
  *(a43 + 208) = 0;
  type metadata accessor for DefaultCloudLinkProperties();
  *(a43 + 136) = 0;
  *(a43 + 144) = 0;
  *(a43 + 168) = 0u;
  *(a43 + 184) = 0u;
  *(a43 + 200) = 0;
  v47 = swift_allocObject();
  *(v47 + 16) = 3;
  *(a43 + 216) = v47;
  *(a43 + 224) = &protocol witness table for DefaultCloudLinkProperties;
  *(a43 + 232) = 0;
  type metadata accessor for DefaultDuplicateMergingProperties();
  *(a43 + 240) = 0;
  *(a43 + 248) = 0;
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(a43 + 256) = v48;
  *(a43 + 264) = &protocol witness table for DefaultDuplicateMergingProperties;
  v49 = MEMORY[0x1E69E7CC0];
  *(a43 + 272) = MEMORY[0x1E69E7CC0];
  *(a43 + 280) = v49;
  *(a43 + 288) = v49;
  type metadata accessor for DefaultOneUpPerformableActionProperties();
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  *(a43 + 296) = v50;
  *(a43 + 304) = &protocol witness table for DefaultOneUpPerformableActionProperties;
  *(a43 + 312) = 0;
  *(a43 + 320) = 0;
  *(a43 + 328) = 1;
  *(a43 + 336) = 0;
  *(a43 + 344) = 1;
  *(a43 + 345) = 0x10000;
  *(a43 + 352) = 0;
  sub_1C1261F60();
  swift_unknownObjectRetain();
  sub_1C0FED00C();

  sub_1C0FED2F8(v51);
  v52 = a5[1];
  v68 = *a5;
  v69 = v52;
  v70 = v67;
  sub_1C0FED57C(&v68);
  ObjectType = swift_getObjectType();
  v54 = swift_unknownObjectRetain();
  sub_1C0FF217C(v54, a43, ObjectType, a7, sub_1C0FED9BC, &unk_1C12A5D28, sub_1C0FF5064);
  if ((sub_1C0FEDB24() & 1) != v61)
  {
    sub_1C0FEB77C(v61);
  }

  LOBYTE(v68) = v60;
  sub_1C0FEDC00(&v68);
  if ((sub_1C0FEDE74() & 1) != (a10 & 1))
  {
    sub_1C0FEB88C(a10 & 1);
  }

  if ((sub_1C0FEDF98() & 1) != (a11 & 1))
  {
    sub_1C0FEB914(a11 & 1);
  }

  if ((sub_1C0FEE0BC() & 1) != (a12 & 1))
  {
    sub_1C0FEB99C(a12 & 1);
  }

  if ((sub_1C0FEE1E0() & 1) != (a13 & 1))
  {
    sub_1C0FEBA24(a13 & 1);
  }

  if ((sub_1C0FEE304() & 1) != (a14 & 1))
  {
    sub_1C0FEBAAC(a14 & 1);
  }

  if ((sub_1C0FEE428() & 1) != (a15 & 1))
  {
    sub_1C0FEBB34(a15 & 1);
  }

  if ((sub_1C0FEE54C() & 1) != (a16 & 1))
  {
    sub_1C0FEBBBC(a16 & 1);
  }

  if ((sub_1C0FEE670() & 1) != (a17 & 1))
  {
    sub_1C0FEBC44(a17 & 1);
  }

  if ((sub_1C0FEE794() & 1) != (a18 & 1))
  {
    sub_1C0FEBCCC(a18 & 1);
  }

  if ((sub_1C0FEE8B8() & 1) != (a19 & 1))
  {
    sub_1C0FEBD54(a19 & 1);
  }

  if (sub_1C0FEE9F0() != a2)
  {
    sub_1C0FEBDDC(a2);
  }

  sub_1C0FEEB7C(a20, a21);
  sub_1C0FEECF4(a22, a23);
  LOBYTE(v68) = v63;
  sub_1C0FEF018(&v68);
  if ((sub_1C0FEF28C() & 1) != (a25 & 1))
  {
    sub_1C0FEC114(a25 & 1);
  }

  if (sub_1C0FEF3B8() != a26)
  {
    sub_1C0FEC19C(a26);
  }

  v55 = swift_getObjectType();
  v56 = swift_unknownObjectRetain();
  sub_1C0FF217C(v56, a43, v55, a28, sub_1C0FEF5F0, &unk_1C12A5A08, sub_1C0FF4F14);
  LOBYTE(v68) = v64;
  sub_1C0FEC22C(&v68);
  sub_1C0FEC2C0();
  v68 = v66;
  *&v69 = v65;
  sub_1C0FEFDF0(&v68);
  v57 = swift_getObjectType();
  v58 = swift_unknownObjectRetain();
  sub_1C0FF217C(v58, a43, v57, a35, sub_1C0FF0240, &unk_1C12A5990, sub_1C0FF4E40);
  if ((sub_1C0FF0400() & 1) != (a36 & 1))
  {
    sub_1C0FEC548(a36 & 1);
  }

  if ((sub_1C0FF0524() & 1) != (a37 & 1))
  {
    sub_1C0FEC5D0(a37 & 1);
  }

  if ((sub_1C0FF09DC() & 1) != (a38 & 1))
  {
    sub_1C0FEC7D8(a38 & 1);
  }

  if ((sub_1C0FF0B00() & 1) != (a39 & 1))
  {
    sub_1C0FEC860(a39 & 1);
  }

  if ((sub_1C0FF0C24() & 1) != (a40 & 1))
  {
    sub_1C0FEC8E8(a40 & 1);
  }

  if ((sub_1C0FF0D98() & 1) != (a41 & 1))
  {
    sub_1C0FEC970(a41 & 1);
  }

  sub_1C0FF0E30(a42);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return a43;
}

void sub_1C0FF2048(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 4)
  {
  }
}

double sub_1C0FF2090(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 4)
  {
  }

  return result;
}

unint64_t sub_1C0FF20D8()
{
  result = qword_1EDE78658;
  if (!qword_1EDE78658)
  {
    type metadata accessor for DefaultChromeEnvironment(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE78658);
  }

  return result;
}

uint64_t type metadata accessor for DefaultChromeEnvironment(uint64_t a1)
{
  result = qword_1EDE78648;
  if (!qword_1EDE78648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C0FF217C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v13 = swift_unknownObjectRetain();
  v14 = a5(v13);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v14 != a1)
  {
    return sub_1C0FF4E98(a1, a2, v15, a4, a6, a7);
  }

  return swift_unknownObjectRelease();
}

unint64_t sub_1C0FF2228()
{
  result = qword_1EDE7CB20;
  if (!qword_1EDE7CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7CB20);
  }

  return result;
}

unint64_t sub_1C0FF2280()
{
  result = qword_1EBE908E8;
  if (!qword_1EBE908E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE908E8);
  }

  return result;
}

unint64_t sub_1C0FF22D8()
{
  result = qword_1EBE908F0;
  if (!qword_1EBE908F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE908F0);
  }

  return result;
}

unint64_t sub_1C0FF2330()
{
  result = qword_1EBE908F8;
  if (!qword_1EBE908F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE908F8);
  }

  return result;
}

unint64_t sub_1C0FF2388()
{
  result = qword_1EBE90900;
  if (!qword_1EBE90900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90900);
  }

  return result;
}

unint64_t sub_1C0FF23E0()
{
  result = qword_1EBE90908;
  if (!qword_1EBE90908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90908);
  }

  return result;
}

unint64_t sub_1C0FF2438()
{
  result = qword_1EBE90910;
  if (!qword_1EBE90910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90918, &qword_1C12A50F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90910);
  }

  return result;
}

unint64_t sub_1C0FF249C(uint64_t a1)
{
  result = sub_1C0FF20D8();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for OneUpPerformableAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OneUpPerformableAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C0FF29C4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C0FF2A04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for OneUpCloudLinkAssetType(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 3;
    v8 = v6 - 3;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
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

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 3);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpCloudLinkAssetType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C0FF2C4C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1C0FF2C60(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OneUpCloudLinkAssetSavedState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OneUpCloudLinkAssetSavedState(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for OneUpContentPrivacyState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PhotosLoadingStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OneUpAssetSyndicationState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for OneUpAssetImportState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OneUpAssetImportState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OneUpAssetCollectionKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OneUpAssetCollectionKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C0FF32F4(uint64_t a1)
{
  result = sub_1C1261F70();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of DefaultChromeEnvironment.__allocating_init(videoModel:assetDebugInfo:visualAnalysisState:assetCloudSharedProperties:isChromeVisible:contentPrivacyState:isInSelectionMode:isAccessoryViewVisible:isPresentedForPreview:hasUserZoomedIn:isSharedAlbumAsset:isSharedCollectionAsset:isMacSyncedAsset:isSyndicationLibraryAsset:isHDRAsset:isScrubbing:currentAssetNormalizedOffset:localizedTitle:localizedSubtitle:assetCollectionKind:assetIsFavorite:assetMediaType:assetCloudLinkProperties:assetSyndicationState:assetSyndicationIdentifier:duplicateMergingProperties:badgeInfo:performableActionProperties:isInEditMode:assetExists:isDeviceLocked:isAnimatingPresentationSize:isAssetContentRequiringSensitivityProtection:useSystemBars:presentingViewController:)()
{
  v1 = *(v0 + 400);

  return v1();
}

uint64_t sub_1C0FF4C0C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_18();
  v5(v4);
  return a2;
}

uint64_t sub_1C0FF4C68(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1C0FF4DCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 336) = *(v0 + 24);
  *(v1 + 344) = v2;
}

uint64_t keypath_get_88Tm()
{
  OUTLINED_FUNCTION_13_1();
  v1 = v0();
  return OUTLINED_FUNCTION_32(v1, v2);
}

void sub_1C0FF4E0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 320) = *(v0 + 24);
  *(v1 + 328) = v2;
}

uint64_t sub_1C0FF4E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  KeyPath = swift_getKeyPath();
  v12[2] = a2;
  v12[3] = a1;
  v12[4] = a4;
  sub_1C0FF108C(KeyPath, a6, v12);

  return swift_unknownObjectRelease();
}

double sub_1C0FF4F94()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 152) = result;
  return result;
}

uint64_t sub_1C0FF5184(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE8FE30, &unk_1C12A1CC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0FF5210(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_18();
  v6(v5);
  return a2;
}

BOOL OUTLINED_FUNCTION_38_1(uint64_t a1)
{

  return sub_1C0FDFDE0(a1, v3, v2, v1);
}

uint64_t OUTLINED_FUNCTION_39_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1C0FF108C(a1, v9, &a9);
}

uint64_t OUTLINED_FUNCTION_42_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{

  return sub_1C0FF217C(v9, v8, a3, v7, a5, a6, a7);
}

uint64_t PhotosSectionedButtonFooter.init(buttonTitle:isEnabled:buttonAction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t PhotosSectionedButtonFooter.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C1263A70();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90560, &qword_1C12A5E00);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22[-v13];
  v15 = v1[1];
  v25 = *v1;
  v26 = v15;
  v27 = *(v1 + 4);
  v16 = swift_allocObject();
  v17 = v1[1];
  *(v16 + 16) = *v1;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(v1 + 4);
  v23 = &v25;
  sub_1C0FF5704(&v25, v24);
  sub_1C1265480();
  sub_1C1263A60();
  sub_1C0FDB6D4(&qword_1EBE90930, &qword_1EBE90560, &qword_1C12A5E00, MEMORY[0x1E697D680]);
  sub_1C0FF573C();
  sub_1C12649F0();
  (*(v5 + 8))(v8, v3);
  (*(v11 + 8))(v14, v9);
  LOBYTE(v8) = v26;
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = (v8 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90940, &qword_1C12A5E38);
  v21 = (a1 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = sub_1C0FF57FC;
  v21[2] = v19;
  return result;
}

double sub_1C0FF56E0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];

  return result;
}

unint64_t sub_1C0FF573C()
{
  result = qword_1EBE90938;
  if (!qword_1EBE90938)
  {
    sub_1C1263A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90938);
  }

  return result;
}

uint64_t sub_1C0FF5798@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1263780();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C0FF5828(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1C0FF5868(uint64_t result, int a2, int a3)
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

unint64_t sub_1C0FF58C0()
{
  result = qword_1EBE90948;
  if (!qword_1EBE90948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90940, &qword_1C12A5E38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90560, &qword_1C12A5E00);
    sub_1C1263A70();
    sub_1C0FDB6D4(&qword_1EBE90930, &qword_1EBE90560, &qword_1C12A5E00, MEMORY[0x1E697D680]);
    sub_1C0FF573C();
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&unk_1EDE7B8D0, &unk_1EBE91970, &unk_1C12A5EE0, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90948);
  }

  return result;
}

__n128 __swift_memcpy17_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotosPlaceholderColor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PhotosPlaceholderColor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 9) = 0;
    *(result + 4) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1C0FF5A6C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0FF5A88(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  return result;
}

float sub_1C0FF5AB8()
{
  v2 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16) == 1)
  {
    switch(*v0)
    {
      case 1:
        if (qword_1EDE7B890 != -1)
        {
          goto LABEL_12;
        }

        goto LABEL_9;
      case 2:
        if (qword_1EBE8FC28 != -1)
        {
LABEL_12:
          swift_once();
        }

LABEL_9:
        sub_1C0FF5CB0(v7);
        sub_1C1265200();
        OUTLINED_FUNCTION_1_8();
        goto LABEL_10;
      case 3:
        sub_1C1265230();
        sub_1C0FF5CB0(v7);
        sub_1C1265200();
        OUTLINED_FUNCTION_1_8();

LABEL_10:
        (*(v4 + 8))(v7, v2);
        break;
      default:
        ColorScheme.px_resolvedThumbnailPlaceholderColor.getter();
        OUTLINED_FUNCTION_1_8();
        break;
    }
  }

  else
  {
    LODWORD(v1) = *v0;
  }

  return v1;
}

void sub_1C0FF5CB0(uint64_t a1@<X8>)
{
  if (qword_1EDE7C9D0 != -1)
  {
    swift_once();
  }

  v3 = off_1EDE7C9D8;
  if (!*(off_1EDE7C9D8 + 2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = sub_1C0FFE0D8(v1);
  if ((v5 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v4;
  v7 = v3[7];
  v8 = sub_1C12637E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v7 + *(v9 + 72) * v6;

  v10(a1, v11, v8);
}

uint64_t sub_1C0FF5D84()
{
  v0 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v44 - v7;
  v60 = sub_1C12629F0();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v61 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v56 = v44 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v59 = v44 - v16;
  v17 = sub_1C12629E0();
  v55 = *(v17 + 16);
  if (v55)
  {
    v18 = 0;
    v54 = v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v58 = v10 + 16;
    v53 = (v2 + 16);
    v44[2] = v2 + 32;
    v49 = v2 + 8;
    v50 = (v10 + 8);
    v19 = MEMORY[0x1E69E7CC8];
    v44[1] = v2 + 40;
    v51 = v8;
    v52 = v5;
    v45 = v17;
    v46 = v10;
    v47 = v2;
    v48 = v0;
    while (v18 < *(v17 + 16))
    {
      v57 = *(v10 + 72);
      v20 = *(v10 + 16);
      v21 = v5;
      v23 = v59;
      v22 = v60;
      v20(v59, v54 + v57 * v18, v60);
      sub_1C12637D0();
      v20(v56, v23, v22);
      sub_1C12634C0();
      v24 = v61;
      v20(v61, v23, v22);
      (*v53)(v21, v8, v0);
      swift_isUniquelyReferenced_nonNull_native();
      v62 = v19;
      v25 = sub_1C0FFE0D8(v24);
      if (__OFADD__(*(v19 + 16), (v26 & 1) == 0))
      {
        goto LABEL_17;
      }

      v27 = v25;
      v5 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE90950, &unk_1C12A5F20);
      if (sub_1C1266B30())
      {
        v28 = sub_1C0FFE0D8(v61);
        if ((v5 & 1) != (v29 & 1))
        {
          goto LABEL_19;
        }

        v27 = v28;
      }

      v19 = v62;
      if (v5)
      {
        OUTLINED_FUNCTION_3_13();
        v30();
        v31 = *v50;
        v32 = v60;
        (*v50)(v61, v60);
        v33 = OUTLINED_FUNCTION_2_8();
        v34(v33);
        v31(v59, v32);
      }

      else
      {
        *(v62 + 8 * (v27 >> 6) + 64) |= 1 << v27;
        v35 = v60;
        v8 = v61;
        v20((*(v19 + 48) + v27 * v57), v61, v60);
        OUTLINED_FUNCTION_3_13();
        v36();
        v37 = *v50;
        (*v50)(v8, v35);
        v38 = OUTLINED_FUNCTION_2_8();
        v39(v38);
        v37(v59, v35);
        v40 = *(v19 + 16);
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_18;
        }

        *(v19 + 16) = v42;
      }

      v17 = v45;
      v10 = v46;
      if (v55 == ++v18)
      {

        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    result = sub_1C1266DA0();
    __break(1u);
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC8];
LABEL_15:
    off_1EDE7C9D8 = v19;
  }

  return result;
}

void *sub_1C0FF6214@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.photosUserInterfaceIdiom.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1C0FF6288(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1C1266BB0();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void PhotosAlbumOnePlusTwoCollageView.init(_:spacing:)(unint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  KeyPath = swift_getKeyPath();
  if (!a1)
  {
    goto LABEL_25;
  }

  v7 = sub_1C0FF6288(a1);
  if (v7 <= 3)
  {
    v8 = v7;
    if (v7 >= 1)
    {
      goto LABEL_5;
    }

LABEL_25:
    sub_1C0FF71FC(0, 1);
    v12 = 0;
    v11 = MEMORY[0x1E69E7CC0];
LABEL_26:
    *a2 = 0;
    *(a2 + 8) = v12;
    *(a2 + 16) = v11;
    *(a2 + 24) = a3;
    *(a2 + 32) = KeyPath;
    *(a2 + 40) = 0;
    return;
  }

  v8 = 3;
LABEL_5:
  v19 = a2;
  v9 = 0;
  v10 = a1 & 0xC000000000000001;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = 1;
  while (!v9)
  {
    if (v10)
    {
      v16 = MEMORY[0x1C68F02D0](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v16 = *(a1 + 32);
      swift_unknownObjectRetain();
    }

    sub_1C0FF71FC(0, v12);
    v12 = v16;
LABEL_20:
    if (v8 == ++v9)
    {

      a2 = v19;
      goto LABEL_26;
    }
  }

  if (v10)
  {
    v13 = MEMORY[0x1C68F02D0](v9, a1);
LABEL_11:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C0FE408C();
      v11 = v17;
    }

    v14 = *(v11 + 16);
    if (v14 >= *(v11 + 24) >> 1)
    {
      sub_1C0FE408C();
      v11 = v18;
    }

    *(v11 + 16) = v14 + 1;
    v15 = v11 + 16 * v14;
    *(v15 + 32) = v9;
    *(v15 + 40) = v13;
    goto LABEL_20;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    v13 = *(a1 + 8 * v9 + 32);
    swift_unknownObjectRetain();
    goto LABEL_11;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t PhotosAlbumOnePlusTwoCollageView.body.getter@<X0>(uint64_t a2@<X8>)
{
  *v7 = *(v2 + 16);
  *&v7[9] = *(v2 + 25);
  v4 = *(*(v2 + 16) + 16);
  *a2 = sub_1C12638E0();
  *(a2 + 8) = *&v7[8];
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90960, &qword_1C12A5F58);
  return sub_1C0FF6524(v4, a2 + *(v5 + 44));
}

uint64_t sub_1C0FF6524@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v63 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90980, &qword_1C12A61E8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v56 - v4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90988, &qword_1C12A61F0);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v56 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90990, &qword_1C12A61F8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v66 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v56 - v10;
  v11 = sub_1C12637E0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PhotosAssetView(0);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v67 = &v56 - v22;
  v81[0] = *v21;
  v23 = *(&v81[0] + 1);
  if (*(&v81[0] + 1) == 1)
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v3);
  }

  else
  {
    v58 = v20;
    v59 = v5;
    v60 = v3;
    v61 = a2;
    v80 = *(v21 + 40);
    v57 = v21;
    v25 = *(v21 + 32);
    v79 = v25;
    if (v80 == 1)
    {
      v26 = v25;
      sub_1C0FDB800(v81, v77, &qword_1EBE90998, &qword_1C12A6200);
      sub_1C0FDB800(v81, v77, &qword_1EBE90998, &qword_1C12A6200);
    }

    else
    {
      sub_1C0FDB800(v81, v77, &qword_1EBE90998, &qword_1C12A6200);
      sub_1C0FDB800(v81, v77, &qword_1EBE90998, &qword_1C12A6200);
      sub_1C0FDB800(&v79, v77, &qword_1EBE909A0, &qword_1C12A6208);
      sub_1C1266420();
      v27 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(&v79, &qword_1EBE909A0, &qword_1C12A6208);
      (*(v12 + 8))(v14, v11);
      v26 = LOBYTE(v77[0]);
    }

    if (v23)
    {
      v28 = 0;
    }

    else
    {
      v28 = v26 == 5;
    }

    v29 = v28;
    v30 = sub_1C1200D04();
    [v30 setNetworkAccessAllowed_];
    *(v18 + 19) = swift_getKeyPath();
    v18[160] = 0;
    v31 = v15[12];
    *&v18[v31] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
    swift_storeEnumTagMultiPayload();
    v32 = &v18[v15[13]];
    *v32 = swift_getKeyPath();
    v32[8] = 0;
    v33 = &v18[v15[14]];
    *v33 = swift_getKeyPath();
    v33[8] = 0;
    *v18 = 0;
    *(v18 + 4) = 0;
    *(v18 + 5) = 0;
    v18[48] = 1;
    v18[8] = v29;
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 34) = 256;
    *(v18 + 52) = 0;
    *(v18 + 60) = 0;
    *(v18 + 9) = 0;
    v18[80] = 1;
    *(v18 + 11) = v23;
    *(v18 + 12) = 0;
    *(v18 + 13) = v30;
    *(v18 + 7) = 0u;
    *(v18 + 8) = 0u;
    v18[144] = 2;
    sub_1C0FF7598(v18, v67);
    if (v63 < 1)
    {
      v49 = v64;
      v46 = v65;
      v47 = v65;
      v48 = 1;
    }

    else
    {
      v34 = v63 != 1;
      v35 = v57;
      v63 = *(v57 + 24);
      v36 = sub_1C1263AA0();
      v73 = 0;
      sub_1C0FF6C98(v34, v35, &v69);
      v74 = v69;
      v75 = v70;
      v76[0] = v71[0];
      *(v76 + 10) = *(v71 + 10);
      v77[0] = v69;
      v77[1] = v70;
      v78[0] = v71[0];
      *(v78 + 10) = *(v71 + 10);
      sub_1C0FDB800(&v74, &v68, &qword_1EBE909B0, &qword_1C12A6218);
      sub_1C0FD1A5C(v77, &qword_1EBE909B0, &qword_1C12A6218);
      *&v72[7] = v74;
      *&v72[23] = v75;
      *&v72[39] = v76[0];
      *&v72[49] = *(v76 + 10);
      v37 = v73;
      v38 = sub_1C12659A0();
      v40 = v39;
      v41 = v64;
      v42 = v62;
      v43 = &v62[*(v64 + 36)];
      sub_1C0FF6D7C(v34, v35, v43);
      v44 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE909B8, &qword_1C12A6220) + 36));
      *v44 = v38;
      v44[1] = v40;
      v45 = v63;
      *v42 = v36;
      *(v42 + 8) = v45;
      *(v42 + 16) = v37;
      memcpy((v42 + 17), v72, 0x41uLL);
      v46 = v65;
      sub_1C0FDB71C(v42, v65, &qword_1EBE90988, &qword_1C12A61F0);
      v47 = v46;
      v48 = 0;
      v49 = v41;
    }

    __swift_storeEnumTagSinglePayload(v47, v48, 1, v49);
    v50 = v67;
    v51 = v58;
    sub_1C0FF74D8(v67, v58);
    v52 = v66;
    sub_1C0FDB800(v46, v66, &qword_1EBE90990, &qword_1C12A61F8);
    v53 = v59;
    sub_1C0FF74D8(v51, v59);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE909A8, &qword_1C12A6210);
    sub_1C0FDB800(v52, v53 + *(v54 + 48), &qword_1EBE90990, &qword_1C12A61F8);
    sub_1C0FD1A5C(v81, &qword_1EBE90998, &qword_1C12A6200);
    sub_1C0FD1A5C(v46, &qword_1EBE90990, &qword_1C12A61F8);
    sub_1C0FF753C(v50);
    sub_1C0FD1A5C(v52, &qword_1EBE90990, &qword_1C12A61F8);
    sub_1C0FF753C(v51);
    v55 = v61;
    sub_1C0FDB71C(v53, v61, &qword_1EBE90980, &qword_1C12A61E8);
    return __swift_storeEnumTagSinglePayload(v55, 0, 1, v60);
  }
}

uint64_t sub_1C0FF6C98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 1) == 0)
  {
    v6 = 0;
    v8 = 0;
    v7 = 1;
    v9 = 1;
    goto LABEL_6;
  }

  v4 = *(a2 + 16);
  v5 = v4[2];
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v4[4];
  v7 = v4[5];
  result = swift_unknownObjectRetain();
  if (v5 == 1)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = v4[6];
  v9 = v4[7];
  swift_unknownObjectRetain();
LABEL_6:
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = 0x3FF0000000000000;
  *(a3 + 24) = 0;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  *(a3 + 48) = 0x3FF0000000000000;
  *(a3 + 56) = 0;
  sub_1C0FF74C4(v6, v7);
  sub_1C0FF74C4(v8, v9);
  sub_1C0FF71FC(v8, v9);

  return sub_1C0FF71FC(v6, v7);
}

void sub_1C0FF6D7C(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PhotosAssetView(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
  }

  else
  {
    v9 = *(a2 + 16);
    if (*(v9 + 16))
    {
      v10 = *(v9 + 40);
      swift_unknownObjectRetain();
      v11 = sub_1C1200D04();
      [v11 setNetworkAccessAllowed_];
      *(v8 + 19) = swift_getKeyPath();
      v8[160] = 0;
      v12 = v6[12];
      *&v8[v12] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
      swift_storeEnumTagMultiPayload();
      v13 = &v8[v6[13]];
      *v13 = swift_getKeyPath();
      v13[8] = 0;
      v14 = &v8[v6[14]];
      *v14 = swift_getKeyPath();
      v14[8] = 0;
      *v8 = 0;
      *(v8 + 4) = 0;
      *(v8 + 5) = 0;
      v8[48] = 1;
      v8[8] = 0;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      *(v8 + 34) = 256;
      *(v8 + 52) = 0;
      *(v8 + 60) = 0;
      *(v8 + 9) = 0;
      v8[80] = 1;
      *(v8 + 11) = v10;
      *(v8 + 12) = 0;
      *(v8 + 13) = v11;
      *(v8 + 7) = 0u;
      *(v8 + 8) = 0u;
      v8[144] = 2;
      sub_1C0FF7598(v8, a3);
      __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1C0FF6F6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90978, &unk_1C12A6120);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v14 - v2);
  v4 = type metadata accessor for PhotosAssetView(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[1];
  if (v7 == 1)
  {
    *v3 = sub_1C1265170();
    swift_storeEnumTagMultiPayload();
    sub_1C0FF746C();
    return sub_1C1263C20();
  }

  else
  {
    v9 = *v0;
    sub_1C0FF74C4(*v0, v0[1]);
    swift_unknownObjectRetain();
    v10 = sub_1C1200D04();
    [v10 setNetworkAccessAllowed_];
    *(v6 + 19) = swift_getKeyPath();
    v6[160] = 0;
    v11 = v4[12];
    *&v6[v11] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
    swift_storeEnumTagMultiPayload();
    v12 = &v6[v4[13]];
    *v12 = swift_getKeyPath();
    v12[8] = 0;
    v13 = &v6[v4[14]];
    *v13 = swift_getKeyPath();
    v13[8] = 0;
    *v6 = 0;
    *(v6 + 4) = 0;
    *(v6 + 5) = 0;
    v6[48] = 1;
    v6[8] = 0;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    *(v6 + 34) = 256;
    *(v6 + 52) = 0;
    *(v6 + 60) = 0;
    *(v6 + 9) = 0;
    v6[80] = 1;
    *(v6 + 11) = v7;
    *(v6 + 12) = 0;
    *(v6 + 13) = v10;
    *(v6 + 7) = 0u;
    *(v6 + 8) = 0u;
    v6[144] = 2;
    sub_1C0FF74D8(v6, v3);
    swift_storeEnumTagMultiPayload();
    sub_1C0FF746C();
    sub_1C1263C20();
    sub_1C0FF71FC(v9, v7);
    return sub_1C0FF753C(v6);
  }
}

uint64_t sub_1C0FF71FC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1C0FF7210(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17PhotosSwiftUICore0A18MultiAssetViewItemVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C0FF7294(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C0FF72D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C0FF7330()
{
  result = qword_1EBE90968;
  if (!qword_1EBE90968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90970, &qword_1C12A6078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90968);
  }

  return result;
}

uint64_t sub_1C0FF7394(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 16))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FF73F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1C0FF746C()
{
  result = qword_1EDE7E9C0[0];
  if (!qword_1EDE7E9C0[0])
  {
    type metadata accessor for PhotosAssetView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7E9C0);
  }

  return result;
}

uint64_t sub_1C0FF74C4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1C0FF74D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosAssetView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0FF753C(uint64_t a1)
{
  v2 = type metadata accessor for PhotosAssetView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C0FF7598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosAssetView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C0FF75FC()
{
  result = qword_1EBE909C0;
  if (!qword_1EBE909C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE909C8, &qword_1C12A6228);
    sub_1C0FF746C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE909C0);
  }

  return result;
}

uint64_t sub_1C0FF7690()
{
  type metadata accessor for PhotosTestableScrollViewTestInfoRepository(0);
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  result = sub_1C1261F60();
  qword_1EDE7F460 = v0;
  return result;
}

uint64_t static PhotosTestableScrollViewTestInfoRepository.shared.getter()
{
  if (qword_1EDE7F458 != -1)
  {
    swift_once();
  }
}

double sub_1C0FF7744(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_1C1262720();
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  v13 = *(a1 + 16);
  sub_1C0FF7D28();

  v14 = sub_1C12626F0();
  v15 = sub_1C1266430();

  v16 = os_log_type_enabled(v14, v15);
  v31 = v13;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v30 = v8;
    v18 = v17;
    v29 = swift_slowAlloc();
    v33 = v29;
    v34 = v12;
    *v18 = 136315394;
    v35 = v11;
    v36 = v13;

    v19 = sub_1C1265ED0();
    v28 = v12;
    v21 = sub_1C0FA0E80(v19, v20, &v33);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1C0FA0E80(a2, a3, &v33);
    v22 = v15;
    v23 = v28;
    _os_log_impl(&dword_1C0F96000, v14, v22, "Setting %s for scroll view with AX identifier %s", v18, 0x16u);
    v24 = v29;
    swift_arrayDestroy();
    MEMORY[0x1C68F1630](v24, -1, -1);
    MEMORY[0x1C68F1630](v18, -1, -1);

    (*(v32 + 8))(v10, v30);
  }

  else
  {

    (*(v32 + 8))(v10, v8);
    v23 = v12;
  }

  swift_getKeyPath();
  v34 = v4;
  sub_1C0FF7DA0();

  OUTLINED_FUNCTION_6_10();
  sub_1C1261F30();

  v34 = v4;
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_10();
  sub_1C1261F50();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v4 + 16);
  sub_1C0FF820C(v23, v11, v31, a2, a3, isUniquelyReferenced_nonNull_native);
  *(v4 + 16) = v33;

  swift_endAccess();
  v34 = v4;
  swift_getKeyPath();
  sub_1C1261F40();

  return result;
}

double sub_1C0FF7AA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C0FF7C0C();
  v7 = v6;
  if (*(v6 + 16) && (v8 = sub_1C0FA4574(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(v7 + 56) + 24 * v8;
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);

    *a3 = v12;
    *(a3 + 8) = v11;
    *(a3 + 16) = v13;
  }

  else
  {

    if (qword_1EDE79438 != -1)
    {
      swift_once();
    }

    v15 = *algn_1EDE79448;
    v16 = byte_1EDE79450;
    *a3 = qword_1EDE79440;
    *(a3 + 8) = v15;
    *(a3 + 16) = v16;
  }

  return result;
}

uint64_t sub_1C0FF7B98(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_1C0FF7E44(KeyPath, sub_1C0FF8B58, &v5);
}

double sub_1C0FF7C0C()
{
  swift_getKeyPath();
  sub_1C0FF7DA0();
  sub_1C1261F30();

  swift_beginAccess();

  return result;
}

uint64_t sub_1C0FF7CC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t sub_1C0FF7D28()
{
  swift_getMetatypeMetadata();
  sub_1C1265ED0();
  sub_1C12626E0();
}

unint64_t sub_1C0FF7DA0()
{
  result = qword_1EDE7F450;
  if (!qword_1EDE7F450)
  {
    type metadata accessor for PhotosTestableScrollViewTestInfoRepository(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F450);
  }

  return result;
}

uint64_t type metadata accessor for PhotosTestableScrollViewTestInfoRepository(uint64_t a1)
{
  result = qword_1EDE7F440;
  if (!qword_1EDE7F440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosTestableScrollViewTestInfoRepository.deinit()
{

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore42PhotosTestableScrollViewTestInfoRepository___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosTestableScrollViewTestInfoRepository.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore42PhotosTestableScrollViewTestInfoRepository___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t PhotosTestableScrollViewTestInfo.testName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PhotosTestableScrollViewTestInfo.ScrollStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

PhotosSwiftUICore::PhotosTestableScrollViewTestInfo __swiftcall PhotosTestableScrollViewTestInfo.init(testName:scrollStyle:)(PhotosSwiftUICore::PhotosTestableScrollViewTestInfo testName, PhotosSwiftUICore::PhotosTestableScrollViewTestInfo::ScrollStyle scrollStyle)
{
  v3 = *scrollStyle;
  *v2 = testName.testName;
  *(v2 + 16) = v3;
  testName.scrollStyle = scrollStyle;
  return testName;
}

uint64_t sub_1C0FF80A0()
{
  sub_1C0FF8BD0();
  sub_1C12637F0();
  return v1;
}

uint64_t sub_1C0FF8118()
{
  if (qword_1EDE7F458 != -1)
  {
    swift_once();
  }

  qword_1EDE7F238 = qword_1EDE7F460;
}

uint64_t sub_1C0FF817C@<X0>(void *a1@<X8>)
{
  if (qword_1EDE7F230 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EDE7F238;
}

void sub_1C0FF81E8()
{
  qword_1EDE79440 = 0x3E656E6F6E3CLL;
  *algn_1EDE79448 = 0xE600000000000000;
  byte_1EDE79450 = 0;
}

void sub_1C0FF820C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_1C0FA4574(a4, a5);
  if (__OFADD__(*(v13 + 16), (v15 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v14;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90A00, &qword_1C12A63C8);
  if ((sub_1C1266B30() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = sub_1C0FA4574(a4, a5);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    sub_1C1266DA0();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v7;
  if (v17)
  {
    v21 = *(v20 + 56) + 24 * v16;
    *v21 = a1;
    *(v21 + 8) = a2;
    *(v21 + 16) = a3;
  }

  else
  {
    sub_1C1209AAC(v16, a4, a5, a1, a2, a3, v20);
  }
}

unint64_t sub_1C0FF8374()
{
  result = qword_1EBE909D0;
  if (!qword_1EBE909D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE909D0);
  }

  return result;
}

uint64_t sub_1C0FF83D0(uint64_t a1)
{
  result = sub_1C1261F70();
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C0FF84C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1C0FF8500(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PhotosTestableScrollViewTestInfo.ScrollStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C0FF862C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_9(a1, a2, a3);
  OUTLINED_FUNCTION_0_9();
  if (v9)
  {
    __break(1u);
LABEL_14:
    sub_1C1266DA0();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE909F8, &qword_1C12A63C0);
  if (OUTLINED_FUNCTION_2_9(v12))
  {
    sub_1C0FA4574(v5, v3);
    OUTLINED_FUNCTION_3_14();
    if (!v14)
    {
      goto LABEL_14;
    }

    v10 = v13;
  }

  if (v11)
  {
    v15 = *(*v6 + 56) + 48 * v10;

    sub_1C0FF8C80(v4, v15);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_5_12();
    sub_1C1209B00(v16, v17, v18, v19, v20);
  }
}

void sub_1C0FF871C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_9(a1, a2, a3);
  OUTLINED_FUNCTION_0_9();
  if (v9)
  {
    __break(1u);
LABEL_14:
    sub_1C1266DA0();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE909F0, &qword_1C12A63B8);
  if (OUTLINED_FUNCTION_2_9(v12))
  {
    sub_1C0FA4574(v5, v3);
    OUTLINED_FUNCTION_3_14();
    if (!v14)
    {
      goto LABEL_14;
    }

    v10 = v13;
  }

  if (v11)
  {
    v15 = *(*v6 + 56) + 112 * v10;

    sub_1C0FF8C24(v4, v15);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_5_12();
    sub_1C1209B40(v16, v17, v18, v19, v20);
  }
}

void sub_1C0FF880C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1C0FFE15C(a3);
  OUTLINED_FUNCTION_0_9();
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_1C1266DA0();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE909E8, &qword_1C12A63B0);
  if (OUTLINED_FUNCTION_2_9(v12))
  {
    sub_1C0FFE15C(a3);
    OUTLINED_FUNCTION_3_14();
    if (!v14)
    {
      goto LABEL_12;
    }

    v10 = v13;
  }

  v15 = *v3;
  if (v11)
  {
    v16 = *(v15 + 56) + 16 * v10;
    *v16 = a1;
    *(v16 + 8) = a2;
  }

  else
  {
    sub_1C0FF8B74(a3, v17);
    sub_1C1209B8C(v10, v17, a1, a2, v15);
  }
}

unint64_t sub_1C0FF892C(char a1, double a2, double a3, double a4)
{
  sub_1C0FFE230(a3, a4);
  OUTLINED_FUNCTION_0_9();
  if (v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE909D8, &unk_1C12A63A0);
  result = sub_1C1266B30();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1C0FFE230(a3, a4);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_11:
    result = sub_1C1266DA0();
    __break(1u);
    return result;
  }

  v11 = result;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    *(*(v15 + 56) + 8 * v11) = a2;
  }

  else
  {

    return sub_1C1209BE8(v11, v15);
  }

  return result;
}

unint64_t sub_1C0FF8A4C(uint64_t a1, char a2, double a3, double a4)
{
  sub_1C0FFE25C(a3, a4);
  OUTLINED_FUNCTION_0_9();
  if (v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE909E0, &unk_1C12A8C80);
  result = sub_1C1266B30();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1C0FFE25C(a3, a4);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_11:
    type metadata accessor for CGPoint(0);
    result = sub_1C1266DA0();
    __break(1u);
    return result;
  }

  v11 = result;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    *(*(v15 + 56) + 8 * v11) = a1;
  }

  else
  {

    return sub_1C1209CC4(v11, a1, v15);
  }

  return result;
}

unint64_t sub_1C0FF8BD0()
{
  result = qword_1EDE7F228;
  if (!qword_1EDE7F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F228);
  }

  return result;
}

uint64_t sub_1C0FF8CF8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FF8D38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

double sub_1C0FF8DA8(uint64_t a1, uint64_t a2)
{
  v5[0] = swift_getKeyPath();
  v5[1] = 0;
  v6 = 0;
  MEMORY[0x1C68EE920](v5, a1, &type metadata for OneUpBarLockedModifier, a2);

  return result;
}

uint64_t sub_1C0FF8E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_1C12637E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    swift_unknownObjectRetain();
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_1C1266420();
  v14 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  v15 = sub_1C0FF9034(a2, a3, 0);
  (*(v11 + 8))(v13, v10, v15);
  LOBYTE(a2) = v19[0];
  a3 = v19[1];
  if (v19[0])
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    (*(a3 + 24))(v19, ObjectType, a3);
    swift_unknownObjectRelease();
    LOBYTE(a2) = v19[0];
  }

LABEL_6:
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90A08, &qword_1C12A6518);
  (*(*(v17 - 8) + 16))(a5, a1, v17);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90A10, &qword_1C12A6520);
  *(a5 + *(result + 36)) = a2;
  return result;
}

double sub_1C0FF9034(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

unint64_t sub_1C0FF9040()
{
  result = qword_1EDE77440;
  if (!qword_1EDE77440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90A10, &qword_1C12A6520);
    sub_1C0FF90CC();
    sub_1C0FF9130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77440);
  }

  return result;
}

unint64_t sub_1C0FF90CC()
{
  result = qword_1EDE76DF0;
  if (!qword_1EDE76DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90A08, &qword_1C12A6518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76DF0);
  }

  return result;
}

unint64_t sub_1C0FF9130()
{
  result = qword_1EDE7E488;
  if (!qword_1EDE7E488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7E488);
  }

  return result;
}

uint64_t PhotosDetailsNavigationMediaRepository.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t sub_1C0FF91B4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 3) == 1)
  {
    sub_1C0F9E21C(a1, &qword_1EBE8FE10, qword_1C12A1CA0);
    sub_1C103385C();

    return sub_1C0F9E21C(&v9, &qword_1EBE8FE10, qword_1C12A1CA0);
  }

  else
  {
    v7 = a1[1];
    v9 = *a1;
    v10[0] = v7;
    *(v10 + 9) = *(a1 + 25);
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1C0FF862C(&v9, a2, a3);

    *v3 = v8;
  }

  return result;
}

uint64_t sub_1C0FF9294(void *__src, uint64_t a2, uint64_t a3)
{
  if (*(__src + 3))
  {
    memcpy(__dst, __src, sizeof(__dst));
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_1C0FF871C(__dst, a2, a3);

    *v3 = v7;
  }

  else
  {
    sub_1C0F9E21C(__src, &unk_1EBE90A18, &qword_1C12A6648);
    sub_1C103391C();

    return sub_1C0F9E21C(__dst, &unk_1EBE90A18, &qword_1C12A6648);
  }

  return result;
}

uint64_t PhotosDetailsNavigationMediaRepository.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

double sub_1C0FF9388@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  swift_beginAccess();
  v6 = *(v2 + 16);
  if (*(v6 + 16))
  {

    v7 = sub_1C0FA4574(v4, v5);
    if (v8)
    {
      sub_1C0FF9584(*(v6 + 56) + 48 * v7, a2);

      return result;
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *&result = 1;
  *(a2 + 24) = xmmword_1C12A6550;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1C0FF9434(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  sub_1C0FF95BC(a1, v5);
  swift_beginAccess();

  sub_1C0FF91B4(v5, v2, v3);
  return swift_endAccess();
}

uint64_t PhotosDetailsNavigationMediaRepository.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

__n128 PhotosDetailsNavigationMediaInfo.init(media:layoutKind:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 40) = v3;
  return result;
}

BOOL static PhotosDetailsNavigationMediaInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((areEqual(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 40);
  v5 = *(a2 + 40);
  result = v5 == 2 && v4 == 2;
  if (v4 != 2 && v5 != 2)
  {
    return ((v5 ^ v4) & 1) == 0;
  }

  return result;
}

uint64_t sub_1C0FF95BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE8FE10, qword_1C12A1CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_17PhotosSwiftUICore0A16DisplayableMedia_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C0FF96DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_1C0FF9730(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

PhotosSwiftUICore::PhotosCollectionSearchResultItemType_optional __swiftcall PhotosCollectionSearchResultItemType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C1266BF0();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PhotosCollectionSearchResultItemType.rawValue.getter()
{
  result = 0x656C706F6570;
  switch(*v0)
  {
    case 1:
      result = 0x79726F6D656DLL;
      break;
    case 2:
      result = 0x6D75626C61;
      break;
    case 3:
      result = 0x6E756F4674786574;
      break;
    case 4:
      result = 1885958772;
      break;
    case 5:
      result = 0x746E657665;
      break;
    case 6:
      result = 0x707954616964656DLL;
      break;
    case 7:
      result = 0x7974696C697475;
      break;
    case 8:
      result = 0x6C6F686563616C70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C0FF9928@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosCollectionSearchResultItemType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C0FF9954()
{
  result = qword_1EBE90A28;
  if (!qword_1EBE90A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90A30, &qword_1C12A66F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90A28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosCollectionSearchResultItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhotosCollectionSearchResultItemType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t EnvironmentValues.shelfHeightOverride.getter()
{
  sub_1C0FF9CD0();
  sub_1C12637F0();
  return v1;
}

unint64_t sub_1C0FF9CD0()
{
  result = qword_1EDE80908[0];
  if (!qword_1EDE80908[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE80908);
  }

  return result;
}

uint64_t (*EnvironmentValues.shelfHeightOverride.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_1C0FF9CD0();
  sub_1C12637F0();
  v4 = *(v3 + 24);
  *v3 = v3[2];
  *(v3 + 8) = v4;
  return sub_1C0FF9DF4;
}

void sub_1C0FF9DF4(void **a1)
{
  v2 = *(*a1 + 8);
  v1 = *a1;
  *(v1 + 2) = **a1;
  v1[24] = v2;
  sub_1C1263800();

  free(v1);
}

unint64_t sub_1C0FF9E60()
{
  result = qword_1EBE90A38;
  if (!qword_1EBE90A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93690, &qword_1C12B32F0);
    sub_1C0FF9EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90A38);
  }

  return result;
}

unint64_t sub_1C0FF9EE4()
{
  result = qword_1EDE82EF0;
  if (!qword_1EDE82EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82EF0);
  }

  return result;
}

uint64_t PhotosNotificationCellTextView.init(_:title:description:subtitle:isUnread:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = *(a1 + 16);
  v14 = a1[3];
  v15 = *(a1 + 32);
  v16 = a1[5];
  v17 = type metadata accessor for PhotosNotificationCellTextView(0);
  v18 = a8 + v17[9];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *a8 = v11;
  *(a8 + 8) = v12;
  *(a8 + 16) = v13;
  *(a8 + 24) = v14;
  *(a8 + 32) = v15;
  *(a8 + 40) = v16;
  *(a8 + 48) = a2;
  *(a8 + 56) = a3;
  v19 = v17[6];
  sub_1C1261AD0();
  OUTLINED_FUNCTION_0_10();
  result = (*(v20 + 32))(a8 + v19, a4);
  v22 = (a8 + v17[7]);
  *v22 = a5;
  v22[1] = a6;
  *(a8 + v17[8]) = a7 & 1;
  return result;
}