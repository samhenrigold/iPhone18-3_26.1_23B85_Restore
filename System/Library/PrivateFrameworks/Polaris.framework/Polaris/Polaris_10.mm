uint64_t sub_25EB32E98(uint64_t a1)
{
  v2 = sub_25EB33D14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25EB32ED4(uint64_t a1)
{
  v2 = sub_25EB33D14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PSSGGraphIDSwift.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12588, &qword_25EB79A48);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB33D14();
  sub_25EB6EA78();
  v12 = 0;
  v8 = v10[3];
  sub_25EB6E928();
  if (!v8)
  {
    v11 = 1;
    sub_25EB6E928();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PSSGGraphIDSwift.hash(into:)(uint64_t a1)
{
  sub_25EB6E2D8();

  return sub_25EB6E2D8();
}

uint64_t PSSGGraphIDSwift.hashValue.getter()
{
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6E2D8();
  return sub_25EB6EA58();
}

uint64_t PSSGGraphIDSwift.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12598, &qword_25EB79A50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB33D14();
  sub_25EB6EA68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = 0;
  v9 = sub_25EB6E8D8();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_25EB6E8D8();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_25EB3338C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25EB6E988(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_25EB6E988();
    }
  }

  return result;
}

uint64_t sub_25EB33430()
{
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6E2D8();
  return sub_25EB6EA58();
}

uint64_t sub_25EB33498(uint64_t a1)
{
  sub_25EB6E2D8();

  return sub_25EB6E2D8();
}

uint64_t sub_25EB334E8(uint64_t a1)
{
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6E2D8();
  return sub_25EB6EA58();
}

uint64_t PSSGResourceID.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___PSSGResourceID_name);

  return v1;
}

uint64_t PSSGResourceID.session.getter()
{
  v1 = *(v0 + OBJC_IVAR___PSSGResourceID_session);

  return v1;
}

id PSSGResourceID.init(localWithName:session:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_25EB6E258();

  v6 = sub_25EB6E258();

  v7 = [v4 initLocalWithName:v5 session:v6];

  return v7;
}

{
  v5 = (v4 + OBJC_IVAR___PSSGResourceID_name);
  *v5 = a1;
  v5[1] = a2;
  v6 = (v4 + OBJC_IVAR___PSSGResourceID_session);
  *v6 = a3;
  v6[1] = a4;
  v8.super_class = PSSGResourceID;
  return objc_msgSendSuper2(&v8, sel_init);
}

id PSSGResourceID.init(globalWithName:)(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_25EB6E258();

  v4 = [v2 initGlobalWithName_];

  return v4;
}

{
  v3 = (v2 + OBJC_IVAR___PSSGResourceID_name);
  *v3 = a1;
  v3[1] = a2;
  v4 = (v2 + OBJC_IVAR___PSSGResourceID_session);
  *v4 = 0;
  v4[1] = 0;
  v6.super_class = PSSGResourceID;
  return objc_msgSendSuper2(&v6, sel_init);
}

id PSSGResourceID.init(name:session:storageMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_25EB6E258();

  v8 = sub_25EB6E258();

  v9 = [v6 initWithName:v7 session:v8 storageMode:a5];

  return v9;
}

{
  if (a5 == 2)
  {

    v7 = sub_25EB6E258();

    v8 = [v5 initGlobalWithName_];
  }

  else
  {
    if (a5 != 1)
    {

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return 0;
    }

    v6 = sub_25EB6E258();

    v7 = sub_25EB6E258();

    v8 = [v5 initLocalWithName:v6 session:v7];
  }

  return v8;
}

void sub_25EB33B24(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 name];
  v5 = sub_25EB6E268();
  v7 = v6;

  v8 = [a1 session];
  if (v8)
  {
    v9 = v8;
    v10 = sub_25EB6E268();
    v12 = v11;
  }

  else
  {

    v10 = 0;
    v12 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v10;
  a2[3] = v12;
}

uint64_t sub_25EB33BD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12030, &qword_25EB78E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25EB33C44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12030, &qword_25EB78E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25EB33CC0()
{
  result = qword_27FD12580;
  if (!qword_27FD12580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12580);
  }

  return result;
}

unint64_t sub_25EB33D14()
{
  result = qword_27FD12590;
  if (!qword_27FD12590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12590);
  }

  return result;
}

uint64_t PSSGResourceID.isEqual(_:)(uint64_t a1)
{
  v2 = sub_25EB33BD4(a1, v25);
  if (v26)
  {
    type metadata accessor for PSSGResourceID(v2);
    if (swift_dynamicCast())
    {
      v3 = [v1 name];
      v4 = sub_25EB6E268();
      v6 = v5;

      v7 = [v24 name];
      v8 = sub_25EB6E268();
      v10 = v9;

      if (v4 == v8 && v6 == v10)
      {
      }

      else
      {
        v13 = sub_25EB6E988();

        if ((v13 & 1) == 0)
        {

          goto LABEL_7;
        }
      }

      v14 = [v1 session];
      if (v14)
      {
        v15 = v14;
        v16 = sub_25EB6E268();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      v19 = [v24 session];
      if (v19)
      {
        v20 = v19;
        v21 = sub_25EB6E268();
        v23 = v22;

        if (!v18)
        {

          if (!v23)
          {
            v11 = 1;
            return v11 & 1;
          }

          goto LABEL_7;
        }

        if (v23)
        {
          if (v16 != v21 || v18 != v23)
          {
            v11 = sub_25EB6E988();

            return v11 & 1;
          }

          goto LABEL_22;
        }
      }

      else if (!v18)
      {
LABEL_22:

        v11 = 1;
        return v11 & 1;
      }
    }
  }

  else
  {
    sub_25EB33C44(v25);
  }

LABEL_7:
  v11 = 0;
  return v11 & 1;
}

uint64_t sub_25EB33FD0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_25EB6E548();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_25EB33C44(v10);
  return v8 & 1;
}

uint64_t PSSGResourceID.hash.getter()
{
  v1 = [v0 name];
  sub_25EB6E268();

  sub_25EB33CC0();
  v2 = sub_25EB6E538();

  v3 = [v0 session];
  if (v3)
  {
    v4 = v3;
    sub_25EB6E268();
  }

  v5 = sub_25EB6E538();

  return v5 ^ v2;
}

uint64_t PSSGResourceID.description.getter()
{
  v1 = v0;
  v2 = [v0 session];
  if (v2)
  {
    v3 = v2;
    v4 = sub_25EB6E268();

    MEMORY[0x25F8C69B0](8250, 0xE200000000000000);

    v5 = v4;
    v6 = [v1 name];
    v7 = sub_25EB6E268();
    v9 = v8;

    MEMORY[0x25F8C69B0](v7, v9);
  }

  else
  {
    v11 = [v0 name];
    v5 = sub_25EB6E268();
  }

  return v5;
}

uint64_t sub_25EB3430C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 session];
  v5 = [v2 name];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      sub_25EB6E268();
      v6 = sub_25EB6E258();
    }

    v7 = [objc_allocWithZone(PSSGResourceID) initLocalWithName:v6 session:v4];
  }

  else
  {
    if (!v5)
    {
      sub_25EB6E268();
      v6 = sub_25EB6E258();
    }

    v7 = [objc_allocWithZone(PSSGResourceID) initGlobalWithName_];
    v4 = v6;
  }

  result = type metadata accessor for PSSGResourceID(v8);
  a1[3] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_25EB3442C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  v5 = a1;
  a4(v8);

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = sub_25EB6E978();
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t static PSSGResourceIDSwift.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25EB6E988(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_25EB6E988() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_25EB345E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_25EB6E988() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973736573 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25EB6E988();

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

uint64_t sub_25EB346C4(uint64_t a1)
{
  v2 = sub_25EB348D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25EB34700(uint64_t a1)
{
  v2 = sub_25EB348D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PSSGResourceIDSwift.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD125B0, &qword_25EB79A58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB348D0();
  sub_25EB6EA78();
  v12 = 0;
  v8 = v10[3];
  sub_25EB6E928();
  if (!v8)
  {
    v11 = 1;
    sub_25EB6E908();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_25EB348D0()
{
  result = qword_27FD125B8;
  if (!qword_27FD125B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD125B8);
  }

  return result;
}

uint64_t PSSGResourceIDSwift.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_25EB6E2D8();
  if (!v2)
  {
    return sub_25EB6EA48();
  }

  sub_25EB6EA48();

  return sub_25EB6E2D8();
}

uint64_t PSSGResourceIDSwift.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6EA48();
  if (v1)
  {
    sub_25EB6E2D8();
  }

  return sub_25EB6EA58();
}

uint64_t PSSGResourceIDSwift.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD125C0, &qword_25EB79A60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB348D0();
  sub_25EB6EA68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = 0;
  v9 = sub_25EB6E8D8();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_25EB6E8B8();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_25EB34C5C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25EB6E988(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_25EB6E988() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_25EB34CFC()
{
  v1 = *(v0 + 24);
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6EA48();
  if (v1)
  {
    sub_25EB6E2D8();
  }

  return sub_25EB6EA58();
}

uint64_t sub_25EB34D88(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_25EB6E2D8();
  if (!v2)
  {
    return sub_25EB6EA48();
  }

  sub_25EB6EA48();

  return sub_25EB6E2D8();
}

uint64_t sub_25EB34E04(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6EA48();
  if (v2)
  {
    sub_25EB6E2D8();
  }

  return sub_25EB6EA58();
}

unint64_t sub_25EB34E90()
{
  result = qword_27FD125C8;
  if (!qword_27FD125C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD125C8);
  }

  return result;
}

unint64_t sub_25EB34EE8()
{
  result = qword_27FD125D0;
  if (!qword_27FD125D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD125D0);
  }

  return result;
}

uint64_t sub_25EB34F54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25EB34F9C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_25EB35010()
{
  result = qword_27FD125E8;
  if (!qword_27FD125E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD125E8);
  }

  return result;
}

unint64_t sub_25EB35068()
{
  result = qword_27FD125F0;
  if (!qword_27FD125F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD125F0);
  }

  return result;
}

unint64_t sub_25EB350C0()
{
  result = qword_27FD125F8;
  if (!qword_27FD125F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD125F8);
  }

  return result;
}

unint64_t sub_25EB35118()
{
  result = qword_27FD12600;
  if (!qword_27FD12600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12600);
  }

  return result;
}

unint64_t sub_25EB35170()
{
  result = qword_27FD12608;
  if (!qword_27FD12608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12608);
  }

  return result;
}

unint64_t sub_25EB351C8()
{
  result = qword_27FD12610;
  if (!qword_27FD12610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12610);
  }

  return result;
}

uint64_t ps_ca_check_frameid_error(uint64_t *a1, unint64_t a2)
{
  if (a1[6])
  {
    return 1;
  }

  v3 = a1[4];
  v4 = a1[2];
  v5 = v3 + v4;
  if (__CFADD__(v3, v4))
  {
    v6 = HIWORD(a2) != 0;
  }

  else
  {
    v6 = HIWORD(a2) != 0;
    if (!HIWORD(a2) && v3 < a2 && v5 <= a2)
    {
      result = 0;
      a1[4] = a2;
      return result;
    }
  }

  if (v6 || (*(a1 + 50) & 1) != 0)
  {
    a1[5] = a2;
    v9 = *a1;
    if (*a1)
    {
      (*(v9 + 16))(v9, 12, a1 + 1, 40);
    }

    result = 1;
    *(a1 + 48) = 1;
  }

  else
  {
    result = 0;
    a1[4] = a2;
    *(a1 + 50) = 1;
  }

  return result;
}

void ps_ca_bucketing_aggregator_add_entry_cold_1(uint64_t a1, _BYTE *a2, void *a3)
{
  (*(*(a1 + 56) + 16))();
  bzero(*a1, 2 * *(a1 + 8));
  *a2 = 0;
  *a3 = 0;
}

uint64_t ps_reservation_start_cold_1(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "ps_reservation_start", "stride % sizeof(atomic_uint_fast64_t) == 0");
  v3 = __PSUtilitiesLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSUtilitiesLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_reservation_complete_get_updated_mask_cold_1(v19);
}

uint64_t ps_reservation_complete_get_updated_mask_cold_1(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "ps_reservation_complete_get_updated_mask", "index < count");
  v3 = __PSUtilitiesLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSUtilitiesLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_reservation_clear_get_updated_mask_cold_1(v19);
}

uint64_t ps_reservation_clear_get_updated_mask_cold_1(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "ps_reservation_clear_get_updated_mask", "index < count");
  v3 = __PSUtilitiesLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSUtilitiesLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_reservation_set_mask_value_at_index_cold_1(v19);
}

void ps_reservation_set_mask_value_at_index_cold_1(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "ps_reservation_set_mask_value_at_index", "index < 64");
  v3 = __PSUtilitiesLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v19, v20);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSUtilitiesLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  __PSUtilitiesLogSharedInstance_cold_1();
}

void ps_util_check_process_entitlements_cold_1(const void *a1, BOOL *a2)
{
  v4 = CFGetTypeID(a1);
  v8 = v4 == CFDictionaryGetTypeID() && (Value = CFDictionaryGetValue(a1, @"com.apple.polaris.client")) != 0 && (v6 = Value, v7 = CFGetTypeID(Value), v7 == CFBooleanGetTypeID()) && CFBooleanGetValue(v6) != 0;
  *a2 = v8;
  CFRelease(a1);
}

uint64_t ps_util_check_process_entitlements_cold_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], (a1 + 8), a2 - 8, *MEMORY[0x277CBED00]);
  if (v7)
  {
    v8 = v7;
    v9 = CFPropertyListCreateWithData(v6, v7, 0, 0, 0);
    *a3 = v9;
    CFRelease(v8);
    if (v9)
    {
      return 0;
    }
  }

  *a4 = 0;
  return 1;
}

uint64_t ps_exec_add_task_cold_1(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "Failed to allocate memory for task->key");
  v2 = __PSExecutorLogSharedInstance(v1);
  if (OUTLINED_FUNCTION_5(v2))
  {
    *v19 = 136315394;
    *&v19[4] = "ps_exec_add_task";
    *&v19[12] = 1024;
    *&v19[14] = 94;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d Failed to allocate memory for task->key", v5, v6, v7, v8, *v19, *&v19[8], *&v19[16]);
  }

  v9 = OSLogFlushBuffers();
  if (v9)
  {
    v10 = __PSExecutorLogSharedInstance(v9);
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_exec_add_task_cold_2(v17);
}

void ps_exec_add_task_cold_2(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "Invalid task key");
  v2 = __PSExecutorLogSharedInstance(v1);
  if (OUTLINED_FUNCTION_5(v2))
  {
    *v19 = 136315394;
    *&v19[4] = "ps_exec_add_task";
    *&v19[12] = 1024;
    *&v19[14] = 85;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d Invalid task key", v5, v6, v7, v8, *v19, *&v19[8], *&v19[16]);
  }

  v9 = OSLogFlushBuffers();
  if (v9)
  {
    v10 = __PSExecutorLogSharedInstance(v9);
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  ps_exec_add_dependency_cold_1(v17, v18);
}

void ps_exec_add_dependency_cold_1(char **a1, NSObject *a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "%s:%d - downstream_idx %u greater than %u", "ps_exec_add_dependency", 123, a2, 64);
  v4 = __PSExecutorLogSharedInstance(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *buf = 136316418;
    v9 = "ps_exec_add_dependency";
    v10 = 1024;
    v11 = 123;
    v12 = 2080;
    v13 = "ps_exec_add_dependency";
    v14 = 1024;
    v15 = 123;
    v16 = 1024;
    v17 = a2;
    v18 = 1024;
    v19 = 64;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_FAULT, "%s:%d %s:%d - downstream_idx %u greater than %u", buf, 0x2Eu);
  }

  v5 = OSLogFlushBuffers();
  if (v5)
  {
    v6 = v5;
    v7 = __PSExecutorLogSharedInstance(v5);
    if (OUTLINED_FUNCTION_6(v7))
    {
      *buf = 136315394;
      v9 = "ps_exec_add_dependency";
      v10 = 1024;
      v11 = v6;
      _os_log_impl(&dword_25EA3A000, a2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  ps_exec_destroy_shared_thread_pool_cold_1();
}

unint64_t ps_exec_init_graph_cold_1(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "Failed to malloc graph");
  v2 = __PSExecutorLogSharedInstance(v1);
  if (OUTLINED_FUNCTION_5(v2))
  {
    *v20 = 136315394;
    *&v20[4] = "ps_exec_init_graph";
    *&v20[12] = 1024;
    *&v20[14] = 240;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d Failed to malloc graph", v5, v6, v7, v8, *v20, *&v20[8], *&v20[16]);
  }

  v9 = OSLogFlushBuffers();
  if (v9)
  {
    v10 = __PSExecutorLogSharedInstance(v9);
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return _tail_workload(v17, v18);
}

void _tail_workload(uint64_t a1, int a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = mach_absolute_time();
  if (*(v4 + 64) != -1 && *(v4 + 56))
  {
    _X0 = 0;
    _X1 = 0;
    v8 = 0xFFFFFFFFLL;
    if (v5 - **(v4 + 48) < 0xFFFFFFFF)
    {
      v8 = v5 - **(v4 + 48);
    }

    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    do
    {
      if (_X0 == -1)
      {
        break;
      }

      v14 = v8 <= (_X0 >> 4) ? _X0 : _X0 & 0xFFFFFFF00000000FLL | (16 * v8);
      _X2 = v14 & 0xFFFFFFFFFLL | (v8 << 36);
      _X5 = 0;
      __asm { CASPAL          X4, X5, X2, X3, [X8] }

      _ZF = _X4 == _X0;
      _X0 = _X4;
    }

    while (!_ZF);
  }

  if (v5 - *(v4 + 576) <= *(v4 + 552))
  {
    v18 = *(v4 + 584);
  }

  else
  {
    ps_ca_notify_deadline_missed(*(v4 + 6808));
    v18 = *(v4 + 584) | 1;
    *(v4 + 584) = v18;
    v19 = -1 << *(v4 + 560);
    v20 = vcnt_s8((v18 & ~v19));
    v20.i16[0] = vaddlv_u8(v20);
    if (v20.u32[0] >= *(v4 + 564))
    {
      v21 = *(v4 + 592);
      if (v21)
      {
        v21(v4, *(v4 + 600));
        v18 = *(v4 + 584);
      }

      v18 &= v19;
    }
  }

  *(v4 + 584) = 2 * v18;
  if ((*(v4 + 513) & 1) == 0)
  {
    v22 = *(v4 + 416);
    if (v22)
    {
      v22(v4, *(v4 + 432));
    }
  }

  if (a2 != 1 && *(a1 + 360) && (*(v4 + 512) & 1) == 0 && *(a1 + 4))
  {
    os_workgroup_interval_data_set_flags();
    v23 = os_workgroup_interval_finish(*(a1 + 360), (a1 + 376));
    if (v23)
    {
      v40 = 0;
      v27 = *(a1 + 360);
      v28 = v23;
      v29 = strerror(v23);
      v30 = v28;
      v31 = asprintf(&v40, "os_workgroup_interval_finish(%p) failed with %s (%d)", v27, v29, v28);
      v32 = __PSExecutorLogSharedInstance(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        v33 = *(a1 + 360);
        strerror(v30);
        OUTLINED_FUNCTION_12();
        v42 = 445;
        v43 = 2048;
        v44 = v33;
        v45 = 2080;
        v46 = v34;
        v47 = v35;
        v48 = v30;
        _os_log_impl(&dword_25EA3A000, v32, OS_LOG_TYPE_FAULT, "%s:%d os_workgroup_interval_finish(%p) failed with %s (%d)", buf, 0x2Cu);
      }

      v36 = OSLogFlushBuffers();
      if (v36)
      {
        v37 = v36;
        v38 = __PSExecutorLogSharedInstance(v36);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_12();
          v42 = v37;
          _os_log_impl(&dword_25EA3A000, v38, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
        }
      }

      else
      {
        OUTLINED_FUNCTION_7();
      }

      v39 = abort_with_reason();
      ps_exec_sem_timed_wait_cold_1(v39);
    }

    ps_ca_notify_workgroup_interval_finish(*(v4 + 6808), a1 + 440);
    atomic_store(0, (a1 + 369));
  }

  v24 = *(v4 + 448);
  if (v24)
  {
    v24(*(v4 + 456));
  }

  if ((*(v4 + 544) & 0xFFFFFFFFFFFFLL) == 0xFFFFFFFFFFFELL)
  {
    _request_remove_subgraph((v4 - *v4), v4, 0, 0);
  }

  v25 = *(v4 + 616);
  if (v25)
  {
    v25(v4, *(v4 + 624));
    if (a2)
    {
      return;
    }
  }

  else if (a2)
  {
    return;
  }

  ps_frame_history_notify_end_frame_data(*(v4 + 6816), *(v4 + 6824), v5, 0, 0);
  ps_frame_history_buffer_relinquish_data_entry(*(v4 + 6816));
  v26 = *(v4 + 6808);

  ps_ca_notify_graph_exec_end(v26, v5);
}

void ps_exec_sem_timed_wait_cold_1(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "Semaphore wait failed!\n");
  v2 = __PSExecutorLogSharedInstance(v1);
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_14();
    v16 = 54;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d Semaphore wait failed!\n", v5, v6, v7, v8);
  }

  v9 = OSLogFlushBuffers();
  if (v9)
  {
    v10 = v9;
    v11 = __PSExecutorLogSharedInstance(v9);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_14();
      v16 = v10;
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v14 = OUTLINED_FUNCTION_0();
  ps_exec_sem_signal_cold_1(v14);
}

void ps_exec_sem_signal_cold_1(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "Semaphore signal failed!\n");
  v2 = __PSExecutorLogSharedInstance(v1);
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_14();
    v17 = 64;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d Semaphore signal failed!\n", v5, v6, v7, v8);
  }

  v9 = OSLogFlushBuffers();
  if (v9)
  {
    v10 = v9;
    v11 = __PSExecutorLogSharedInstance(v9);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_14();
      v17 = v10;
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v16);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v14 = OUTLINED_FUNCTION_0();
  _request_remove_subgraph_cold_1(v14, v15);
}

void _request_remove_subgraph_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  v2 = asprintf(a1, "Subgraph %s not found to removed ****************\n", (a2 + 113));
  v3 = __PSExecutorLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Subgraph %s not found to removed ****************\n", v6, v7, v8, v9, v18, v19);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PSExecutorLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  _request_remove_subgraph_cold_2();
}

void *_request_remove_subgraph_cold_4(char **a1, uint64_t a2)
{
  *a1 = 0;
  v2 = asprintf(a1, "Unexpected removal of graph %s", (a2 + 113));
  v3 = __PSExecutorLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Unexpected removal of graph %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PSExecutorLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return _set_executing_subgraph_cold_1(v18, v19);
}

void *_set_executing_subgraph_cold_1(void *result, uint64_t a2)
{
  if (!*result)
  {
    __assert_rtn("_set_executing_subgraph", "PSExecutionEngine.c", 597, "thread_pool->executing_subgraph");
  }

  *(a2 + 64) = 0;
  return result;
}

uint64_t _set_executing_subgraph_cold_3(uint64_t a1, atomic_uint *a2, _BYTE *a3, uint64_t a4)
{
  _process_subgraph_terminate(a1);
  add = atomic_fetch_add(a2, 0xFFFFFFFF);
  if (add <= 0)
  {
    __assert_rtn("_set_executing_subgraph", "PSExecutionEngine.c", 544, "active_subgraph_count > 0");
  }

  if (add != 1 || (*a3 & 1) != 0)
  {
    return 1;
  }

  ps_exec_terminate_shared_thread_pool(a4);
  return 0;
}

uint64_t _set_executing_subgraph_cold_4(char **a1, uint64_t a2)
{
  *a1 = 0;
  v4 = a2 + 72;
  v5 = asprintf(a1, "No subgraph found to execute for thread_pool (%s) with ID (%llu)", (a2 + 72), *(a2 + 32));
  v6 = __PSExecutorLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = *(a2 + 32);
    *buf = 136315906;
    v22 = "_set_executing_subgraph";
    v23 = 1024;
    v24 = 531;
    v25 = 2080;
    v26 = v4;
    v27 = 2048;
    v28 = v7;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d No subgraph found to execute for thread_pool (%s) with ID (%llu)", buf, 0x26u);
  }

  v8 = OSLogFlushBuffers();
  if (v8)
  {
    v9 = __PSExecutorLogSharedInstance(v8);
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return thread_workloop_unshared_path_cold_1(v16, v17);
}

uint64_t thread_workloop_unshared_path_cold_1(void *a1, uint64_t a2)
{
  *a1 = 0;
  result = *(a2 + 464);
  if (result)
  {
    v4 = *(a2 + 480);
    if (v4)
    {
      result = v4();
    }
  }

  v5 = *(a2 + 72);
  if (v5)
  {
    *(a2 + 112) = 1;
    return v5(a2 + 113, *(a2 + 88));
  }

  return result;
}

uint64_t thread_workloop_unshared_path_cold_2(void *a1)
{
  v1 = OUTLINED_FUNCTION_13(a1);
  v2 = asprintf(v1, "Unknown PSGraphWorkloadWait value %d: crashing here", v21);
  v3 = __PSExecutorLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_9(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v4, v5, "%s:%d Unknown PSGraphWorkloadWait value %d: crashing here", v6, v7, v8, v9, v22, v23);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PSExecutorLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return thread_workloop_unshared_path_cold_3(v18, v19);
}

uint64_t thread_workloop_unshared_path_cold_3(char **a1, uint64_t a2)
{
  *a1 = 0;
  v2 = asprintf(a1, "An error has occurred for subgraph %s! No task is available but I was woken from my slumber.", (a2 + 113));
  v3 = __PSExecutorLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d An error has occurred for subgraph %s! No task is available but I was woken from my slumber.", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PSExecutorLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return thread_workloop_unshared_path_cold_4(v18, v19);
}

uint64_t thread_workloop_unshared_path_cold_4(uint64_t a1, atomic_ushort *a2)
{
  if (*a1)
  {
    v3 = pthread_self();
    policy_info = 1;
    v4 = pthread_mach_thread_np(v3);
    a1 = thread_policy_set(v4, 1u, &policy_info, 1u);
  }

  ps_telemetry_deinit_thread(a1, a2);
  pbs_ringbuffer_get_global_dump_on_exit();
  result = pbs_ringbufferlogger_destroy_thread_log();
  atomic_fetch_add(a2, 0xFFFFu);
  return result;
}

void *thread_workloop_shared_path_cold_2(char **a1, const char *a2)
{
  *a1 = 0;
  v4 = asprintf(a1, "ThreadPool %s was unable to set executing subgraph", a2);
  v5 = __PSExecutorLogSharedInstance(v4);
  if (OUTLINED_FUNCTION_9(v5))
  {
    OUTLINED_FUNCTION_11();
    v20 = 832;
    v21 = 2080;
    v22 = a2;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d ThreadPool %s was unable to set executing subgraph", buf, 0x1Cu);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v7 = __PSExecutorLogSharedInstance(v6);
    if (OUTLINED_FUNCTION_6(v7))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v8, v9, "%s() failed to flush buffers with error code: %d", v10, v11, v12, v13, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v14 = OUTLINED_FUNCTION_0();
  return thread_workloop_shared_path_cold_3(v14, v15);
}

void *thread_workloop_shared_path_cold_3(void *result, uint64_t a2)
{
  *result = 0;
  v2 = *(a2 + 72);
  if (v2)
  {
    *(a2 + 112) = 1;
    return v2(a2 + 113, *(a2 + 88));
  }

  return result;
}

void thread_workloop_shared_path_cold_4(uint64_t a1)
{
  if ((*(a1 + 513) & 1) == 0)
  {
    v2 = *(a1 + 408);
    if (v2)
    {
      v2(a1, *(a1 + 424));
    }
  }

  v3 = mach_absolute_time();
  v4 = *(a1 + 64);
  if (v4 != -1)
  {
    ps_liveness_reset_deadline_if_needed(v4, *(a1 + 544) & 0xFFFFFFFFFFFFLL);
    v5 = *(a1 + 48);
    if (v5)
    {
      *v5 = v3;
    }
  }

  *(a1 + 576) = v3;
  ps_frame_history_notify_start_frame_data(*(a1 + 6816), *(a1 + 6824), *(a1 + 544) & 0xFFFFFFFFFFFFLL, v3, HIWORD(*(a1 + 544)) & 0x3FF, 0);
}

uint64_t start_thread_pool_thread_workloop_cold_1(void *a1)
{
  v1 = OUTLINED_FUNCTION_13(a1);
  v2 = asprintf(v1, "pthread_attr_init failed with ret %d", v20);
  v3 = __PSExecutorLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_9(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v4, v5, "%s:%d pthread_attr_init failed with ret %d", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PSExecutorLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return start_thread_pool_thread_workloop_cold_2(v18);
}

uint64_t start_thread_pool_thread_workloop_cold_2(void *a1)
{
  v1 = OUTLINED_FUNCTION_13(a1);
  v2 = asprintf(v1, "pthread_attr_setschedpolicy failed with ret %d", v20);
  v3 = __PSExecutorLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_9(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v4, v5, "%s:%d pthread_attr_setschedpolicy failed with ret %d", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PSExecutorLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return start_thread_pool_thread_workloop_cold_3(v18);
}

uint64_t start_thread_pool_thread_workloop_cold_3(void *a1)
{
  v1 = OUTLINED_FUNCTION_13(a1);
  v2 = asprintf(v1, "pthread_attr_getschedparam failed with ret %d", v20);
  v3 = __PSExecutorLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_9(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v4, v5, "%s:%d pthread_attr_getschedparam failed with ret %d", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PSExecutorLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return start_thread_pool_thread_workloop_cold_4(v18);
}

uint64_t start_thread_pool_thread_workloop_cold_4(void *a1)
{
  v1 = OUTLINED_FUNCTION_13(a1);
  v2 = asprintf(v1, "pthread_attr_setschedparam failed with ret %d", v20);
  v3 = __PSExecutorLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_9(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v4, v5, "%s:%d pthread_attr_setschedparam failed with ret %d", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PSExecutorLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return start_thread_pool_thread_workloop_cold_5(v18);
}

uint64_t start_thread_pool_thread_workloop_cold_5(void *a1)
{
  v1 = OUTLINED_FUNCTION_13(a1);
  v2 = asprintf(v1, "pthread_attr_setdetachstate failed with ret %d", v21);
  v3 = __PSExecutorLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_9(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v4, v5, "%s:%d pthread_attr_setdetachstate failed with ret %d", v6, v7, v8, v9, v22, v23);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PSExecutorLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return start_thread_pool_thread_workloop_cold_6(v18, v19);
}

uint64_t start_thread_pool_thread_workloop_cold_6(char **a1, int __errnum)
{
  *a1 = 0;
  v5 = strerror(__errnum);
  v6 = asprintf(a1, "pthread_create() failed with %s (%d)", v5, __errnum);
  v7 = __PSExecutorLogSharedInstance(v6);
  if (OUTLINED_FUNCTION_9(v7))
  {
    strerror(__errnum);
    OUTLINED_FUNCTION_11();
    v23 = 995;
    v24 = 2080;
    v25 = v8;
    v26 = v9;
    v27 = __errnum;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d pthread_create() failed with %s (%d)", buf, 0x22u);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PSExecutorLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return start_thread_pool_thread_workloop_cold_7(v18);
}

uint64_t start_thread_pool_thread_workloop_cold_7(void *a1)
{
  v1 = OUTLINED_FUNCTION_13(a1);
  v2 = asprintf(v1, "_set_pthread_rt_annotation failed with ret %d", v21);
  v3 = __PSExecutorLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_9(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v4, v5, "%s:%d _set_pthread_rt_annotation failed with ret %d", v6, v7, v8, v9, v22, v23);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PSExecutorLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return _request_terminate_subgraph_cold_1(v18, v19);
}

void _request_terminate_subgraph_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  v2 = asprintf(a1, "Subgraph %s not found to removed ****************\n", (a2 + 113));
  v3 = __PSExecutorLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Subgraph %s not found to removed ****************\n", v6, v7, v8, v9, v19, v20);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PSExecutorLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  ps_exec_init_cold_1(v18);
}

void ps_exec_init_cold_1(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "Could not create a ps_executor instance, malloc returned NULL.");
  v2 = __PSExecutorLogSharedInstance(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v6 = 136315394;
    v7 = "ps_exec_init";
    v8 = 1024;
    v9 = 21;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d Could not create a ps_executor instance, malloc returned NULL.", &v6, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = __PSExecutorLogSharedInstance(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "ps_exec_init";
      v8 = 1024;
      v9 = v4;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v6, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  __PSExecutorLogSharedInstance_cold_1();
}

void imuIOHIDEventCallback(uint64_t a1)
{
  v2 = __PLSLogSharedInstance(a1);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

{
  v2 = __PLSLogSharedInstance(a1);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

{
  v2 = __PLSLogSharedInstance(a1);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v3, v4, v5, v6, v7, 0x14u);
  }
}

void biomotionIOHIDEventCallback(uint64_t a1)
{
  v2 = __PLSLogSharedInstance(a1);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

{
  v2 = __PLSLogSharedInstance(a1);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

{
  v2 = __PLSLogSharedInstance(a1);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

void visIOHIDEventCallback(uint64_t a1)
{
  v2 = __PLSLogSharedInstance(a1);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

{
  v2 = __PLSLogSharedInstance(a1);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

void _timerNotificationFunc_cold_1(char **a1, mach_error_t error_value)
{
  v26 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = mach_error_string(error_value);
  v5 = asprintf(a1, "Timer failed with error: %s", v4);
  v6 = __PLSLogSharedInstance(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v21 = "_timerNotificationFunc";
    v22 = 1024;
    v23 = 134;
    v24 = 2080;
    v25 = mach_error_string(error_value);
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Timer failed with error: %s", v9, v10, v11, v12, v18, v19);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = v13;
    v15 = __PLSLogSharedInstance(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "_timerNotificationFunc";
      v22 = 1024;
      v23 = v14;
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  OUTLINED_FUNCTION_0();
  ps_system_stream_context_create_cold_1();
}

void ps_system_stream_context_create_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "OOM!");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d OOM!", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  ps_system_stream_context_set_writer_inst_cold_1(v18);
}

void ps_system_stream_context_set_writer_inst_cold_1(uint64_t a1)
{
  v2 = __PLSLogSharedInstance(a1);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    LODWORD(v9) = 136315138;
    *(&v9 + 4) = "ps_system_stream_context_set_writer_inst";
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v3, v4, "(%s): Invalid argument", v5, v6, v7, v8, v9, DWORD2(v9));
  }
}

void ps_system_stream_context_get_writer_inst_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "Invalid argument");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid argument", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  ps_system_stream_context_set_ps_resource_cold_1(v18);
}

void ps_system_stream_context_set_ps_resource_cold_1(uint64_t a1)
{
  v2 = __PLSLogSharedInstance(a1);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    LODWORD(v9) = 136315138;
    *(&v9 + 4) = "ps_system_stream_context_set_ps_resource";
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v3, v4, "(%s): Invalid argument", v5, v6, v7, v8, v9, DWORD2(v9));
  }
}

void ps_system_stream_context_get_ps_resource_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "Invalid argument");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid argument", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  ps_system_stream_context_set_ariadne_id_cold_1(v18);
}

void ps_system_stream_context_set_ariadne_id_cold_1(uint64_t a1)
{
  v2 = __PLSLogSharedInstance(a1);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    LODWORD(v9) = 136315138;
    *(&v9 + 4) = "ps_system_stream_context_set_ariadne_id";
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v3, v4, "(%s): Invalid argument", v5, v6, v7, v8, v9, DWORD2(v9));
  }
}

void ps_system_stream_context_get_ariadne_id_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "Invalid argument");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid argument", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  ps_system_stream_context_increment_sample_count_cold_1(v18);
}

void ps_system_stream_context_increment_sample_count_cold_1(uint64_t a1)
{
  v2 = __PLSLogSharedInstance(a1);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    LODWORD(v9) = 136315138;
    *(&v9 + 4) = "ps_system_stream_context_increment_sample_count";
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v3, v4, "(%s): Invalid argument", v5, v6, v7, v8, v9, DWORD2(v9));
  }
}

void ps_system_stream_context_get_sample_count_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "Invalid argument");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid argument", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  ps_system_stream_context_set_keep_running_cold_1(v18);
}

void ps_system_stream_context_set_keep_running_cold_1(uint64_t a1)
{
  v2 = __PLSLogSharedInstance(a1);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    LODWORD(v9) = 136315138;
    *(&v9 + 4) = "ps_system_stream_context_set_keep_running";
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v3, v4, "(%s): Invalid argument", v5, v6, v7, v8, v9, DWORD2(v9));
  }
}

void ps_system_stream_context_get_keep_running_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "Invalid argument");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid argument", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  ps_system_stream_context_set_stream_context_cold_1(v18);
}

void ps_system_stream_context_set_stream_context_cold_1(uint64_t a1)
{
  v2 = __PLSLogSharedInstance(a1);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    LODWORD(v9) = 136315138;
    *(&v9 + 4) = "ps_system_stream_context_set_stream_context";
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v3, v4, "(%s): Invalid argument", v5, v6, v7, v8, v9, DWORD2(v9));
  }
}

void ps_system_stream_context_get_stream_context_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "Invalid argument");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid argument", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  ps_system_stream_context_set_wait_semaphore_cold_1(v18);
}

void ps_system_stream_context_set_wait_semaphore_cold_1(uint64_t a1)
{
  v2 = __PLSLogSharedInstance(a1);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    LODWORD(v9) = 136315138;
    *(&v9 + 4) = "ps_system_stream_context_set_wait_semaphore";
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v3, v4, "(%s): Invalid argument", v5, v6, v7, v8, v9, DWORD2(v9));
  }
}

void ps_system_stream_context_semaphore_wait_cold_1(uint64_t a1)
{
  v2 = __PLSLogSharedInstance(a1);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    LODWORD(v9) = 136315138;
    *(&v9 + 4) = "ps_system_stream_context_semaphore_wait";
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v3, v4, "(%s): Invalid argument", v5, v6, v7, v8, v9, DWORD2(v9));
  }
}

void ps_system_stream_context_semaphore_signal_cold_1(uint64_t a1)
{
  v2 = __PLSLogSharedInstance(a1);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    LODWORD(v9) = 136315138;
    *(&v9 + 4) = "ps_system_stream_context_semaphore_signal";
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v3, v4, "(%s): Invalid argument", v5, v6, v7, v8, v9, DWORD2(v9));
  }
}

void ps_system_stream_context_reset_cold_1(uint64_t a1)
{
  v2 = __PLSLogSharedInstance(a1);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    LODWORD(v9) = 136315138;
    *(&v9 + 4) = "ps_system_stream_context_reset";
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v3, v4, "(%s): Invalid argument", v5, v6, v7, v8, v9, DWORD2(v9));
  }
}

void ps_system_stream_context_destroy_cold_1(uint64_t a1)
{
  v2 = __PLSLogSharedInstance(a1);
  if (OUTLINED_FUNCTION_1_1(v2))
  {
    LODWORD(v9) = 136315138;
    *(&v9 + 4) = "ps_system_stream_context_destroy";
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v3, v4, "(%s): Invalid argument", v5, v6, v7, v8, v9, DWORD2(v9));
  }
}

uint64_t allocatedCVPixelBufferIndexer_cold_1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 resourceStream];
  v5 = [v4 key];
  asprintf(a1, "Indexer for key:(%s) called more times that the number of buffers allocated.", [v5 UTF8String]);

  v7 = __PLSLogSharedInstance(v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    v8 = [a2 resourceStream];
    v9 = [v8 key];
    [v9 UTF8String];
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v10, v11, "%s:%d Indexer for key:(%s) called more times that the number of buffers allocated.", v12, v13, v14, v15, v27, v28);
  }

  v16 = OSLogFlushBuffers();
  if (v16)
  {
    v17 = __PLSLogSharedInstance(v16);
    if (OUTLINED_FUNCTION_6(v17))
    {
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v18, v19, "%s() failed to flush buffers with error code: %d", v20, v21, v22, v23, v27, v28);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v24 = OUTLINED_FUNCTION_0();
  return allocatedIOSurfaceBufferIndexer_cold_1(v24, v25);
}

uint64_t allocatedIOSurfaceBufferIndexer_cold_1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 resourceStream];
  v5 = [v4 key];
  asprintf(a1, "Indexer for key:(%s) called more times that the number of buffers allocated.", [v5 UTF8String]);

  v7 = __PLSLogSharedInstance(v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    v8 = [a2 resourceStream];
    v9 = [v8 key];
    [v9 UTF8String];
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v10, v11, "%s:%d Indexer for key:(%s) called more times that the number of buffers allocated.", v12, v13, v14, v15, v27, v28);
  }

  v16 = OSLogFlushBuffers();
  if (v16)
  {
    v17 = __PLSLogSharedInstance(v16);
    if (OUTLINED_FUNCTION_6(v17))
    {
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v18, v19, "%s() failed to flush buffers with error code: %d", v20, v21, v22, v23, v27, v28);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v24 = OUTLINED_FUNCTION_0();
  return allocatedCVDataBufferIndexer_cold_1(v24, v25);
}

void allocatedCVDataBufferIndexer_cold_1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 resourceStream];
  v5 = [v4 key];
  asprintf(a1, "Indexer for key:(%s) called more times that the number of buffers allocated.", [v5 UTF8String]);

  v7 = __PLSLogSharedInstance(v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    v8 = [a2 resourceStream];
    v9 = [v8 key];
    [v9 UTF8String];
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v10, v11, "%s:%d Indexer for key:(%s) called more times that the number of buffers allocated.", v12, v13, v14, v15, v26, v27);
  }

  v16 = OSLogFlushBuffers();
  if (v16)
  {
    v17 = __PLSLogSharedInstance(v16);
    if (OUTLINED_FUNCTION_6(v17))
    {
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v18, v19, "%s() failed to flush buffers with error code: %d", v20, v21, v22, v23, v26, v27);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v24 = OUTLINED_FUNCTION_0();
  [(PSBufferIndexer *)v24 allocateResources];
}

void ps_graph_compute_policy_apply_cold_1(uint64_t a1)
{
  v1 = __PLSLogSharedInstance(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "ps_graph_compute_policy_apply";
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v2, v3, "%s called on a non real-time graph", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

void ps_graph_compute_policy_apply_cold_2(uint64_t a1)
{
  v1 = __PLSLogSharedInstance(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "ps_graph_compute_policy_apply";
    OUTLINED_FUNCTION_0_1(&dword_25EA3A000, v2, v3, "%s called before graph was submitted for execution", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

uint64_t _prm_thread_creator_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "Pthread failure");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Pthread failure", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return _prm_thread_creator_cold_2(v18);
}

uint64_t _prm_thread_creator_cold_2()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "Pthread failure");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Pthread failure", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return _prm_thread_creator_cold_3(v18);
}

uint64_t _prm_thread_creator_cold_3()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "Pthread failure");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Pthread failure", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return _prm_thread_creator_cold_4(v18);
}

uint64_t _prm_thread_creator_cold_4()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "Pthread failure");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Pthread failure", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return _prm_thread_creator_cold_5(v18);
}

uint64_t _prm_thread_creator_cold_5()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "Pthread failure");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Pthread failure", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return _prm_thread_creator_cold_6(v18);
}

uint64_t _prm_thread_creator_cold_6()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "Pthread failure");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Pthread failure", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler deadlineThresholdsForCriticality:v18];
}

uint64_t ps_frame_history_buffer_service_allocate_buffer(PSFrameHistoryBufferServiceClient *a1, PSFrameHistoryBufferServiceClient **a2, uint64_t a3)
{
  if (a1 && a2)
  {
    return PSFrameHistoryBufferServiceClient::reserveBuffer(a1, a3, a2);
  }

  else
  {
    return OUTLINED_FUNCTION_9_0();
  }
}

uint64_t ps_frame_history_buffer_service_deallocate_buffer(PSFrameHistoryBufferServiceClient *this, _DWORD *a2)
{
  if (this && a2)
  {
    return PSFrameHistoryBufferServiceClient::relinquishBuffer(this, a2);
  }

  else
  {
    return OUTLINED_FUNCTION_9_0();
  }
}

uint64_t ps_frame_history_buffer_service_map_string_with_hash(PSFrameHistoryBufferServiceClient *this, const char *a2, unint64_t a3)
{
  if (this && a2)
  {
    return PSFrameHistoryBufferServiceClient::mapStringWithHash(this, a2, a3);
  }

  else
  {
    return OUTLINED_FUNCTION_9_0();
  }
}

uint64_t ps_frame_history_buffer_service_request_snapshot(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return PSFrameHistoryBufferServiceClient::requestFrameHistoryDump(a1, a2);
  }

  return a1;
}

uint64_t _getBufferHeader(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "_getBufferHeader", "buffer_desc.freq_idx < PS_FRAME_HISTORY_BUFFER_POOL_MAP_LENGTH && buffer_desc.buffer_idx < _frameHistoryBufferPoolDesc.bufferPoolDesc[buffer_desc.freq_idx].buffer_count");
  v4 = __PSUtilitiesLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSUtilitiesLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return _getBufferHeader(v20);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "_getBufferHeader", "buffer_header->buffer_header_magic == PS_FRAME_HISTORY_BUFFER_SERVICE_BUFFER_HDR_MAGIC");
  v4 = __PSUtilitiesLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSUtilitiesLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return PSFrameHistoryBufferServiceClient::init(v20);
}

uint64_t PSFrameHistoryBufferServiceClient::init(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "init", "_ctrl_header->frame_history_buffer_service_magic == PS_FRAME_HISTORY_BUFFER_SERVICE_CTRL_HDR_MAGIC");
  v4 = __PSUtilitiesLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSUtilitiesLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return PSFrameHistoryBufferServiceClient::relinquishBuffer(v20);
}

uint64_t PSFrameHistoryBufferServiceClient::relinquishBuffer(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "relinquishBuffer", "buffer_header->buffer_header_magic == PS_FRAME_HISTORY_BUFFER_SERVICE_BUFFER_HDR_MAGIC");
  v4 = __PSUtilitiesLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSUtilitiesLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return PSFrameHistoryBufferServiceClient::relinquishBuffer(v20);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "_sendRequestToServerDeallocate", "ioret == kIOReturnSuccess");
  v4 = __PSUtilitiesLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSUtilitiesLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return ps_frame_history_buffer_acquire_data_entry_cold_1(v20);
}

uint64_t ps_frame_history_buffer_acquire_data_entry_cold_1(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "ps_frame_history_buffer_acquire_data_entry", "counter.exec_state == NOT_IN_USE");
  v4 = __PSUtilitiesLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSUtilitiesLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return ps_frame_history_buffer_relinquish_data_entry_cold_1(v20);
}

uint64_t ps_frame_history_buffer_relinquish_data_entry_cold_1(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "ps_frame_history_buffer_relinquish_data_entry", "counter.exec_state != NOT_IN_USE");
  v4 = __PSUtilitiesLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSUtilitiesLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return _sendWaitRequestToServer(v20, v21);
}

uint64_t _sendWaitRequestToServer(char **a1, int a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "PSFrameHistoryBufferService: Failed to send request to server for msg action (%u)", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_10_0(&dword_25EA3A000, v5, v6, "%s:%d PSFrameHistoryBufferService: Failed to send request to server for msg action (%u)", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return _sendWaitRequestToServer(v19, v20);
}

{
  *a1 = 0;
  v3 = asprintf(a1, "PSFrameHistoryBufferService: Unknown reply received from server for msg action (%u)", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_10_0(&dword_25EA3A000, v5, v6, "%s:%d PSFrameHistoryBufferService: Unknown reply received from server for msg action (%u)", v7, v8, v9, v10, v21, v22);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_frame_history_graph_metadata_set_submission_timestamp(v19);
}

uint64_t ps_frame_history_graph_metadata_set_submission_timestamp(uint64_t result)
{
  if (result)
  {
    graph_metadata = ps_frame_history_buffer_get_graph_metadata(result);
    result = mach_continuous_time();
    *(graph_metadata + 8) = result;
  }

  return result;
}

uint64_t ps_frame_history_graph_metadata_set_removal_timestamp(uint64_t result)
{
  if (result)
  {
    graph_metadata = ps_frame_history_buffer_get_graph_metadata(result);
    result = mach_continuous_time();
    *(graph_metadata + 24) = result;
  }

  return result;
}

uint64_t ps_frame_history_graph_metadata_set_graph_name(uint64_t result, uint64_t a2, const char *a3, char a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (result && a2)
  {
    if (a3)
    {
      v7 = -2128831035;
      v8 = *a3;
      if (*a3)
      {
        v9 = a3 + 1;
        do
        {
          v7 = 16777619 * (v7 ^ v8);
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }
    }

    else
    {
      v7 = 0;
    }

    v11 = ps_frame_history_buffer_service_map_string_with_hash(result, a3, v7);
    if ((v11 & 1) == 0)
    {
      v13 = __PSUtilitiesLogSharedInstance(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315394;
        v15 = a3;
        v16 = 1024;
        v17 = v7;
        _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_ERROR, "Failed to map frame history graph name (%s) with hash (%u)", &v14, 0x12u);
      }
    }

    result = ps_frame_history_buffer_get_graph_metadata(a2);
    *(result + 52) = v7;
    *(result + 66) = a4;
  }

  return result;
}

void ps_frame_history_graph_metadata_set_domain(PSFrameHistoryBufferServiceClient *a1, uint64_t a2, const char *a3)
{
  if (a1 && a2)
  {
    graph_metadata = ps_frame_history_buffer_get_graph_metadata(a2);
    if (a3)
    {
      OUTLINED_FUNCTION_4_1();
      if (v7)
      {
        OUTLINED_FUNCTION_6_1();
        do
        {
          OUTLINED_FUNCTION_5_1();
        }

        while (v8);
      }

      v9 = ps_frame_history_buffer_service_map_string_with_hash(a1, a3, v3);
      if ((v9 & 1) == 0)
      {
        v11 = __PSUtilitiesLogSharedInstance(v9, v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_1_3();
          OUTLINED_FUNCTION_3_3(&dword_25EA3A000, v12, v13, "Failed to map frame history domain (%s) with hash (%u)", v14, v15, v16, v17);
        }
      }

      v18 = 1;
    }

    else
    {
      v18 = 0;
      v3 = 0;
    }

    *(graph_metadata + 67) = v18;
    *(graph_metadata + 60) = v3;
  }
}

void ps_frame_history_graph_metadata_add_input(PSFrameHistoryBufferServiceClient *a1, uint64_t a2, const char *a3)
{
  if (a1 && a2)
  {
    if (a3)
    {
      OUTLINED_FUNCTION_4_1();
      if (v6)
      {
        OUTLINED_FUNCTION_6_1();
        do
        {
          OUTLINED_FUNCTION_5_1();
        }

        while (v7);
      }
    }

    else
    {
      v3 = 0;
    }

    v8 = ps_frame_history_buffer_service_map_string_with_hash(a1, a3, v3);
    if ((v8 & 1) == 0)
    {
      v10 = __PSUtilitiesLogSharedInstance(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_1_3();
        OUTLINED_FUNCTION_3_3(&dword_25EA3A000, v11, v12, "Failed to map frame history input (%s) with hash (%u)", v13, v14, v15, v16);
      }
    }

    graph_metadata = ps_frame_history_buffer_get_graph_metadata(a2);
    v19 = *(graph_metadata + 64);
    if (v19 < 0x41)
    {
      *(graph_metadata + 4 * v19 + 72) = v3;
      *(graph_metadata + 64) = v19 + 1;
    }

    else
    {
      v20 = __PSUtilitiesLogSharedInstance(graph_metadata, v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_2_3(&dword_25EA3A000, v21, v22, "Frame History Graph Metadata - graph_metadata->input_hashes_len=%u > FRAME_HISTORY_MAX_INPUTS=%u", v23, v24, v25, v26);
      }
    }
  }
}

uint64_t ps_frame_history_graph_metadata_set_frequency(uint64_t result, unsigned int a2)
{
  if (result)
  {
    result = ps_frame_history_buffer_get_graph_metadata(result);
    *(result + 40) = a2;
  }

  return result;
}

uint64_t ps_frame_history_graph_metadata_set_deadline(uint64_t result, uint64_t a2)
{
  if (result)
  {
    result = ps_frame_history_buffer_get_graph_metadata(result);
    *(result + 32) = a2;
  }

  return result;
}

void ps_frame_history_graph_metadata_add_output(PSFrameHistoryBufferServiceClient *a1, uint64_t a2, const char *a3)
{
  if (a1 && a2)
  {
    if (a3)
    {
      OUTLINED_FUNCTION_4_1();
      if (v6)
      {
        OUTLINED_FUNCTION_6_1();
        do
        {
          OUTLINED_FUNCTION_5_1();
        }

        while (v7);
      }
    }

    else
    {
      v3 = 0;
    }

    v8 = ps_frame_history_buffer_service_map_string_with_hash(a1, a3, v3);
    if ((v8 & 1) == 0)
    {
      v10 = __PSUtilitiesLogSharedInstance(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_1_3();
        OUTLINED_FUNCTION_3_3(&dword_25EA3A000, v11, v12, "Failed to map frame history output (%s) with hash (%u)", v13, v14, v15, v16);
      }
    }

    graph_metadata = ps_frame_history_buffer_get_graph_metadata(a2);
    v19 = *(graph_metadata + 65);
    if (v19 < 0x41)
    {
      *(graph_metadata + 4 * v19 + 328) = v3;
      *(graph_metadata + 65) = v19 + 1;
    }

    else
    {
      v20 = __PSUtilitiesLogSharedInstance(graph_metadata, v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_2_3(&dword_25EA3A000, v21, v22, "Frame History Graph Metadata - graph_metadata->output_hashes_len=%u > FRAME_HISTORY_MAX_OUTPUTS=%u", v23, v24, v25, v26);
      }
    }
  }
}

void ps_frame_history_graph_metadata_set_stride_and_offset(uint64_t a1, int a2, int a3)
{
  if (a1)
  {
    graph_metadata = ps_frame_history_buffer_get_graph_metadata(a1);
    if (*(graph_metadata + 65) < 0x41u)
    {
      *(graph_metadata + 56) = a2;
      *(graph_metadata + 48) = a3;
    }

    else
    {
      v7 = __PSUtilitiesLogSharedInstance(graph_metadata, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_2_3(&dword_25EA3A000, v8, v9, "Frame History Graph Metadata - graph_metadata->output_hashes_len=%u > FRAME_HISTORY_MAX_OUTPUTS=%u", v10, v11, v12, v13);
      }
    }
  }
}

uint64_t ps_reader_block_acquire_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "Unable to change state to _ACQUIRED. Ret %lu.", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Unable to change state to _ACQUIRED. Ret %lu.", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_reader_block_relinquish_cold_1(v19, v20);
}

uint64_t ps_reader_block_relinquish_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "Unable to change state to _READY. Ret %lu.", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Unable to change state to _READY. Ret %lu.", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSReaderBlock initWithReader:v19 graph:v20 readerOptions:? resourceOptions:? withPRMManager:? forCABufferExpiry:? withFrameHistoryClientHandle:?];
}

uint64_t source_writer_func_cold_1(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "Something is wrong. Aborting!");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v23 = 136315394;
    *&v23[4] = "source_writer_func";
    *&v23[12] = 1024;
    *&v23[14] = 69;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Something is wrong. Aborting!", v6, v7, v8, v9, *v23, *&v23[8], *&v23[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = v10;
    v12 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v12))
    {
      *v22 = 136315394;
      *&v22[4] = "source_writer_func";
      *&v22[12] = 1024;
      *&v22[14] = v11;
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, *v22, *&v22[8], *&v22[16]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [(PSSourceWriterBlock *)v19 getWriterInstForKey:v20];
}

uint64_t ps_exec_block_create_cold_1(char **a1)
{
  v14 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v1 = asprintf(a1, "OOM!");
  v2 = __PLSLogSharedInstance(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v10 = 136315394;
    v11 = "ps_exec_block_create";
    v12 = 1024;
    v13 = 89;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d OOM!", &v10, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = __PLSLogSharedInstance(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "ps_exec_block_create";
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v10, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = abort_with_reason();
  return ps_exec_block_execute_task_instance_cold_1(v6, v7, v8);
}

uint64_t ps_exec_block_execute_task_instance_cold_1(int64x2_t *a1, int64x2_t *a2, char *a3)
{
  result = ps_util_check_sandbox_for_syscall_threadself();
  if (result)
  {
    thread_selfcounts();
    v7 = task_end_pmus();
    v8 = *(v7 + 16);
    a2[4] = vsubq_s64(*a1, *v7);
    a2[5] = vsubq_s64(a1[1], v8);
    v9 = *(v7 + 48);
    a2[6] = vsubq_s64(a1[2], *(v7 + 32));
    a2[7] = vsubq_s64(a1[3], v9);
    result = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    a2[8].i64[0] = result;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10;
  return result;
}

uint64_t ps_exec_block_execute_task_instance_cold_2(uint64_t result, int64x2_t *a2, int64x2_t *a3)
{
  if (result)
  {
    result = ps_util_check_sandbox_for_syscall_threadself();
    if (result)
    {
      v5 = task_end_pmus();
      thread_selfcounts();
      *a3 = vsubq_s64(*v5, *a2);
      a3[1] = vsubq_s64(v5[1], a2[1]);
      a3[2] = vsubq_s64(v5[2], a2[2]);
      a3[3] = vsubq_s64(v5[3], a2[3]);
      return ps_telemetry_emit_event_internal(5, a3->i8, 0x98uLL, 8);
    }
  }

  return result;
}

void cvdataBufferAllocator_cold_1(uint64_t a1, uint64_t a2)
{
  v3 = _polarisdLogSharedInstance(a1, a2);
  if (OUTLINED_FUNCTION_1_1(v3))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }
}

void cvdataBufferAllocator_cold_2(uint64_t a1, uint64_t a2)
{
  v3 = _polarisdLogSharedInstance(a1, a2);
  if (OUTLINED_FUNCTION_1_1(v3))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0x20u);
  }
}

__uint64_t ps_task_wrapper_execute_sync_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  v2 = asprintf(a1, "Unexpected outputs for task:%s", (a2 + 72));
  v3 = __PLSLogSharedInstance(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Unexpected outputs for task:%s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v21, v22);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_task_wrapper_execute_sync_cold_2(v18, v19);
}

uint64_t ps_task_wrapper_execute_sync_cold_2(int64x2_t *a1, char *a2)
{
  result = ps_util_check_sandbox_for_syscall_threadself();
  if (result)
  {
    thread_selfcounts();
    task_end_pmus_0();
    v5 = task_counters_0();
    v7 = v6[1];
    v5[4] = vsubq_s64(*a1, *v6);
    v5[5] = vsubq_s64(a1[1], v7);
    v8 = v6[3];
    v5[6] = vsubq_s64(a1[2], v6[2]);
    v5[7] = vsubq_s64(a1[3], v8);
    result = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v5[8].i64[0] = result;
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9;
  return result;
}

uint64_t ps_task_wrapper_execute_sync_cold_3(uint64_t result, int64x2_t *a2)
{
  if (result)
  {
    result = ps_util_check_sandbox_for_syscall_threadself();
    if (result)
    {
      v3 = task_end_pmus_0();
      thread_selfcounts();
      v4 = task_counters_0();
      v5 = vsubq_s64(v3[1], a2[1]);
      *v4 = vsubq_s64(*v3, *a2);
      *(v4 + 16) = v5;
      v6 = vsubq_s64(v3[3], a2[3]);
      *(v4 + 32) = vsubq_s64(v3[2], a2[2]);
      *(v4 + 48) = v6;
      return ps_telemetry_emit_event_internal(5, v4, 0x98uLL, 8);
    }
  }

  return result;
}

uint64_t ps_task_wrapper_execute_sync_cold_4(char **a1, uint64_t a2)
{
  *a1 = 0;
  v2 = asprintf(a1, "Unexpected outputs for task:%s", (a2 + 72));
  v3 = __PLSLogSharedInstance(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Unexpected outputs for task:%s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v20, v21);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_task_wrapper_create_cold_1(v18);
}

uint64_t ps_task_wrapper_create_cold_1(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "Calloc failed for resource: %s", 0);
  v2 = __PLSLogSharedInstance(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Calloc failed for resource: %s", v5, v6, v7, v8, v20, v21);
  }

  v9 = OSLogFlushBuffers();
  if (v9)
  {
    v10 = __PLSLogSharedInstance(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v20, v21);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v17 = OUTLINED_FUNCTION_0();
  return [(PSTransitionBlock *)v17 stringWithGraphFrequencyType:v18];
}

uint64_t _handleTimeoutBranching_cold_1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 localizedDescription];
  asprintf(a1, "%s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 localizedDescription];
    [v7 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return ps_writer_block_acquire_cold_1(v22, v23);
}

uint64_t ps_writer_block_acquire_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "Unable to change state to _ACQUIRED. Ret %lu.", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Unable to change state to _ACQUIRED. Ret %lu.", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_writer_block_relinquish_cold_1(v19, v20);
}

uint64_t ps_writer_block_relinquish_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "Unable to change state to _RELINQUISHED. Ret %lu.", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Unable to change state to _RELINQUISHED. Ret %lu.", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_writer_block_publish_cold_1(v19, v20);
}

uint64_t ps_writer_block_publish_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "Unable to change state to _READY. Ret %lu.", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Unable to change state to _READY. Ret %lu.", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSWriterBlock initWithWriter:v19 graph:v20 withStream:? withWriterOptions:? withPRMManager:? withDevice:? withResourceOptions:? withCAWriterDimensions:? withFrameHistoryClientHandle:?];
}

uint64_t ps_grouped_source_pool_create_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "out of memory creating array to hold failed resources instances");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d out of memory creating array to hold failed resources instances", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_create_cold_2(v18);
}

uint64_t ps_grouped_source_pool_create_cold_2()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "out of memory creating array to hold array of working set dictionaries");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d out of memory creating array to hold array of working set dictionaries", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_create_cold_3(v18);
}

uint64_t ps_grouped_source_pool_create_cold_3()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "out of memory creating array to hold _is_ane_wait_input");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d out of memory creating array to hold _is_ane_wait_input", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_create_cold_4(v18);
}

uint64_t ps_grouped_source_pool_create_cold_4()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "out of memory creating array to hold _is_lastn_input");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d out of memory creating array to hold _is_lastn_input", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_create_cold_5(v18);
}

uint64_t ps_grouped_source_pool_create_cold_5()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "out of memory creating array to hold _input_policy");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d out of memory creating array to hold _input_policy", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_create_cold_6(v18);
}

uint64_t ps_grouped_source_pool_create_cold_6()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "out of memory creating array to hold reader instances");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d out of memory creating array to hold reader instances", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_create_cold_7(v18);
}

void ps_grouped_source_pool_create_cold_7()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "out of memory creating grouped source pool");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d out of memory creating grouped source pool", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  ps_grouped_source_pool_add_input_cold_1();
}

uint64_t ps_grouped_source_pool_add_input_cold_2(char **a1, uint64_t a2)
{
  *a1 = 0;
  resource_key = ps_prm_opts_get_resource_key(a2);
  v6 = asprintf(a1, "Synced input %s not allowed on GSP. Add to tasks", resource_key);
  v7 = __PLSLogSharedInstance(v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    ps_prm_opts_get_resource_key(a2);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Synced input %s not allowed on GSP. Add to tasks", v10, v11, v12, v13, v24, v25);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_acquire_cold_1(v22);
}

uint64_t ps_grouped_source_pool_acquire_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "Synced input is not allowed in GSP");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Synced input is not allowed in GSP", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_data_cold_1(v18, v19);
}

uint64_t ps_grouped_source_pool_copy_data_cold_1(char **a1, const char *a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "An object item %s must contain an object", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d An object item %s must contain an object", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_object_cold_1(v19, v20);
}

uint64_t ps_grouped_source_pool_copy_object_cold_1(char **a1, const char *a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "An object item %s must contain an object", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d An object item %s must contain an object", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_opaque_cold_1(v19, v20);
}

uint64_t ps_grouped_source_pool_copy_opaque_cold_1(char **a1, const char *a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "An opaque item %s must contain an opaque object", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d An opaque item %s must contain an opaque object", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_surface_cold_1(v19, v20);
}

uint64_t ps_grouped_source_pool_copy_surface_cold_1(char **a1, const char *a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "A surface item %s must contain an IOSurface", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d A surface item %s must contain an IOSurface", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_pixel_buffer_cold_1(v19, v20);
}

uint64_t ps_grouped_source_pool_copy_pixel_buffer_cold_1(char **a1, const char *a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "Invalid metadata type found for resource %s", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Invalid metadata type found for resource %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_pixel_buffer_cold_2(v19, v20);
}

uint64_t ps_grouped_source_pool_copy_pixel_buffer_cold_2(char **a1, const char *a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "A pixel buffer item %s must contain a pixel buffer", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d A pixel buffer item %s must contain a pixel buffer", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_data_buffer_cold_1(v19, v20);
}

uint64_t ps_grouped_source_pool_copy_data_buffer_cold_1(char **a1, const char *a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "Invalid metadata type found for resource %s", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Invalid metadata type found for resource %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_data_buffer_cold_2(v19, v20);
}

uint64_t ps_grouped_source_pool_copy_data_buffer_cold_2(char **a1, const char *a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "A data buffer item %s must contain a data buffer", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d A data buffer item %s must contain a data buffer", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_jasper_buffer_cold_1(v19, v20);
}

uint64_t ps_grouped_source_pool_copy_jasper_buffer_cold_1(char **a1, const char *a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "'None' metadata not supported for Jasper, key %s", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d 'None' metadata not supported for Jasper, key %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_jasper_buffer_cold_2(v19, v20);
}

uint64_t ps_grouped_source_pool_copy_jasper_buffer_cold_2(char **a1, const char *a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "Invalid metadata type found for resource %s", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Invalid metadata type found for resource %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_jasper_buffer_cold_3(v19, v20);
}

uint64_t ps_grouped_source_pool_copy_jasper_buffer_cold_3(char **a1, const char *a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "A jasper buffer item %s must contain a jasper buffer", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d A jasper buffer item %s must contain a jasper buffer", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_ane_buffer_cold_1(v19, v20);
}

uint64_t ps_grouped_source_pool_copy_ane_buffer_cold_1(char **a1, const char *a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "A jasper buffer item %s must contain a jasper buffer", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d A jasper buffer item %s must contain a jasper buffer", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_pearl_buffer_cold_1(v19, v20);
}

uint64_t ps_grouped_source_pool_copy_pearl_buffer_cold_1(char **a1, const char *a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "'None' metadata not supported for Pearl, key %s", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d 'None' metadata not supported for Pearl, key %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_pearl_buffer_cold_2(v19, v20);
}

uint64_t ps_grouped_source_pool_copy_pearl_buffer_cold_2(char **a1, const char *a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "Invalid metadata type found for resource %s", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Invalid metadata type found for resource %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_pearl_buffer_cold_3(v19, v20);
}

uint64_t ps_grouped_source_pool_copy_pearl_buffer_cold_3(char **a1, const char *a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "A pearl buffer item %s must contain a pearl buffer", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d A pearl buffer item %s must contain a pearl buffer", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_resource_cold_1(v19, v20);
}

uint64_t ps_grouped_source_pool_copy_resource_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  key = ps_resource_get_key();
  v5 = asprintf(a1, "Received an invalid class type for resource %s", key);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    ps_resource_get_key();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Received an invalid class type for resource %s", v9, v10, v11, v12, v23, v24);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_resource_cold_2(v21);
}

uint64_t ps_grouped_source_pool_copy_resource_cold_2()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "task capacity is higher");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d task capacity is higher", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_resource_cold_3(v18);
}

uint64_t ps_grouped_source_pool_copy_resource_cold_3()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "null task resource");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d null task resource", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_copy_resource_cold_4(v18);
}

uint64_t ps_grouped_source_pool_copy_resource_cold_4()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "null task resource");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d null task resource", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_task_input_resource_create_cold_1(v18);
}

uint64_t ps_task_input_resource_create_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "Input Policy should be PSInputTypePullOptional/PSInputTypePull for a 3rdParty Session");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Input Policy should be PSInputTypePullOptional/PSInputTypePull for a 3rdParty Session", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_task_input_resource_create_cold_2(v18);
}

uint64_t ps_task_input_resource_create_cold_2()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "Failed to allocate memory!");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Failed to allocate memory!", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_task_input_resource_create_cold_3(v18);
}

uint64_t ps_task_input_resource_create_cold_3()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "PSInputTypeSynced with no valid synced resource");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d PSInputTypeSynced with no valid synced resource", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_task_input_resource_create_cold_4(v18);
}

uint64_t ps_task_input_resource_create_cold_4()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "Failed to allocate memory!");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Failed to allocate memory!", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  return ps_task_input_resource_set_buffer_expiry_offset_cold_1();
}

uint64_t ps_task_input_resource_set_buffer_expiry_offset_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "Invalid call to set buffer expiry on uninitialized ps_task_input_resource_t");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid call to set buffer expiry on uninitialized ps_task_input_resource_t", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  return ps_task_input_resource_acquire_cold_1();
}

uint64_t ps_task_input_resource_acquire_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "GSP isn't passed in for a synced input. Cause it is acquired at a task boundary");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d GSP isn't passed in for a synced input. Cause it is acquired at a task boundary", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_task_input_resource_acquire_cold_2(v18, v19);
}

uint64_t ps_task_input_resource_acquire_cold_2(char **a1, void *a2)
{
  *a1 = 0;
  key = ps_resource_get_key();
  v5 = asprintf(a1, "Buffer expiry not set for key (%s)", key);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    ps_resource_get_key();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Buffer expiry not set for key (%s)", v9, v10, v11, v12, v24, v25);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return ps_task_input_check_buffer_expiration_cold_1(v21, v22);
}

uint64_t ps_task_input_check_buffer_expiration_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  key = ps_resource_get_key();
  v5 = asprintf(a1, "Buffer usage completion was not set for resource %s", key);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    ps_resource_get_key();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Buffer usage completion was not set for resource %s", v9, v10, v11, v12, v23, v24);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return ps_task_output_resource_create_cold_1(v21);
}

uint64_t ps_task_output_resource_create_cold_1(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "OOM!");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v20 = 136315394;
    *&v20[4] = "ps_task_output_resource_create";
    *&v20[12] = 1024;
    *&v20[14] = 92;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d OOM!", v6, v7, v8, v9, *v20, *&v20[8], *&v20[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_task_output_resource_create_cold_2(v18);
}

uint64_t ps_task_output_resource_create_cold_2(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "OOM!");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v20 = 136315394;
    *&v20[4] = "ps_task_output_resource_create";
    *&v20[12] = 1024;
    *&v20[14] = 85;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d OOM!", v6, v7, v8, v9, *v20, *&v20[8], *&v20[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_task_output_resource_create_cold_3(v18);
}

uint64_t ps_task_output_resource_create_cold_3(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "OOM!");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v20 = 136315394;
    *&v20[4] = "ps_task_output_resource_create";
    *&v20[12] = 1024;
    *&v20[14] = 78;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d OOM!", v6, v7, v8, v9, *v20, *&v20[8], *&v20[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_task_output_resource_create_cold_4(v18);
}

void ps_task_output_resource_create_cold_4(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "OOM!");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v19 = 136315394;
    *&v19[4] = "ps_task_output_resource_create";
    *&v19[12] = 1024;
    *&v19[14] = 67;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d OOM!", v6, v7, v8, v9, *v19, *&v19[8], *&v19[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  ps_task_output_resource_create_cold_5(v18);
}

void ps_task_output_resource_create_cold_5(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "Failed to allocate memory!");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v18 = 136315394;
    *&v18[4] = "ps_task_output_resource_create";
    *&v18[12] = 1024;
    *&v18[14] = 38;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Failed to allocate memory!", v6, v7, v8, v9, *v18, *&v18[8], *&v18[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  ps_task_output_resource_attach_retained_input_cold_1();
}

void ps_task_output_resource_destroy_cold_1(char **a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  key = ps_resource_get_key();
  v5 = asprintf(a1, "Unreleased retained input found for output %s. Plaese destroy retained inputs first.", key);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    *buf = 136315650;
    v11 = "ps_task_output_resource_destroy";
    v12 = 1024;
    v13 = 141;
    v14 = 2080;
    v15 = ps_resource_get_key();
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d Unreleased retained input found for output %s. Plaese destroy retained inputs first.", buf, 0x1Cu);
  }

  v7 = OSLogFlushBuffers();
  if (v7)
  {
    v8 = v7;
    v9 = __PLSLogSharedInstance(v7);
    if (OUTLINED_FUNCTION_6(v9))
    {
      *buf = 136315394;
      v11 = "ps_task_output_resource_destroy";
      v12 = 1024;
      v13 = v8;
      _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  ps_task_output_resource_destroy_retained_inputs_cold_1();
}

uint64_t ps_task_resources_create_cold_2(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "Failed to allocate memory!");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v20 = 136315394;
    *&v20[4] = "ps_task_resources_create";
    *&v20[12] = 1024;
    *&v20[14] = 71;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Failed to allocate memory!", v6, v7, v8, v9, *v20, *&v20[8], *&v20[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_task_resources_create_cold_3(v18);
}

uint64_t ps_task_resources_create_cold_3(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "Failed to allocate memory!");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v20 = 136315394;
    *&v20[4] = "ps_task_resources_create";
    *&v20[12] = 1024;
    *&v20[14] = 66;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Failed to allocate memory!", v6, v7, v8, v9, *v20, *&v20[8], *&v20[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_task_resources_create_cold_4(v18);
}

void ps_task_resources_create_cold_4(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "Failed to allocate memory!");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v19 = 136315394;
    *&v19[4] = "ps_task_resources_create";
    *&v19[12] = 1024;
    *&v19[14] = 46;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Failed to allocate memory!", v6, v7, v8, v9, *v19, *&v19[8], *&v19[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  ps_task_resources_destroy_cold_1(v18);
}

void ps_task_resources_destroy_cold_1(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "Task resources (inputs or outputs) not freed before freeing the parent.");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v18 = 136315394;
    *&v18[4] = "ps_task_resources_destroy";
    *&v18[12] = 1024;
    *&v18[14] = 124;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Task resources (inputs or outputs) not freed before freeing the parent.", v6, v7, v8, v9, *v18, *&v18[8], *&v18[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  ps_task_resources_add_input_cold_1();
}

void ps_task_resources_add_input_cold_3(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "no valid synced resource ID provided for synced input");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v18 = 136315394;
    *&v18[4] = "ps_task_resources_add_input";
    *&v18[12] = 1024;
    *&v18[14] = 151;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d no valid synced resource ID provided for synced input", v6, v7, v8, v9, *v18, *&v18[8], *&v18[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  ps_task_resources_add_output_cold_1();
}

void PRMANEReaderInstance::PRMANEReaderInstance(NSObject *a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "PRMANEReaderInstance";
    v6 = 1024;
    v7 = a2;
    _os_log_impl(&dword_25EA3A000, a1, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v4, 0x12u);
  }
}

void PRMANEReaderInstance::waitForNewResourceWithFrameID(char **a1, PRMReaderInstance *this)
{
  *a1 = 0;
  Key = PRMReaderInstance::getKey(this);
  v5 = asprintf(a1, "waitForNewResourceWithFrameID Not Suported for key %s", Key);
  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    PRMReaderInstance::getKey(this);
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d waitForNewResourceWithFrameID Not Suported for key %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v16 = __PSResourceManagerLogSharedInstance(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v17, v18, "%s() failed to flush buffers with error code: %d", v19, v20, v21, v22, v25, v26);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v23 = OUTLINED_FUNCTION_0();
  PRMANEReaderInstance::waitForNewResourceAndGetFrameID(v23, v24);
}

void PRMANEReaderInstance::waitForNewResourceAndGetFrameID(char **a1, PRMReaderInstance *this)
{
  *a1 = 0;
  Key = PRMReaderInstance::getKey(this);
  v5 = asprintf(a1, "waitForNewResourceAndGetFrameID Not Suported for key %s", Key);
  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    PRMReaderInstance::getKey(this);
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d waitForNewResourceAndGetFrameID Not Suported for key %s", v10, v11, v12, v13, v23, v24);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v16 = __PSResourceManagerLogSharedInstance(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v17, v18, "%s() failed to flush buffers with error code: %d", v19, v20, v21, v22, v23, v24);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  OUTLINED_FUNCTION_0();
  PRMAneWriter::init();
}

void PRMAneWriter::init()
{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    v8 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, v8);
  }
}

{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    v8 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, v8);
  }
}

{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    v8 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, v8);
  }
}

{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    v8 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, v8);
  }
}

{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    v8 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, v8);
  }
}

void PRMAneWriter::publish()
{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    v8 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, v8);
  }
}

void PRM::Camera::SurfaceList::SurfaceList()
{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v0))
  {
    v7 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v1, v2, "%s() failed to flush buffers with error code: %d", v3, v4, v5, v6, v7);
  }
}

void PRM::Camera::PixelBufferList::PixelBufferList()
{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v0))
  {
    v7 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v1, v2, "%s() failed to flush buffers with error code: %d", v3, v4, v5, v6, v7);
  }
}

void PRM::Camera::DataBufferList::DataBufferList()
{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v0))
  {
    v7 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v1, v2, "%s() failed to flush buffers with error code: %d", v3, v4, v5, v6, v7);
  }
}

void PRM::Camera::SurfaceList::getBufferWithIndex(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "bufferIndex < m_size");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::SurfaceList::getBufferWithIndex(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "iosurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::SurfaceList::getBufferWithIndex(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "m_size > 0");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::SurfaceList::getBufferWithIndex(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "m_surfaceListBufflet");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getBufferWithIndex(v19);
}

void PRM::Camera::PixelBufferList::getBufferWithIndex(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "bufferIndex < m_size");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getBufferWithIndex(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "cvpixelbuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getBufferWithIndex(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "m_size > 0");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getBufferWithIndex(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "m_pixelbufferListBufflet");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getBufferWithIndex(v19);
}

void PRM::Camera::DataBufferList::getBufferWithIndex(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "bufferIndex < m_size");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getBufferWithIndex(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "cvdatabuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getBufferWithIndex(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "m_size > 0");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getBufferWithIndex(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithIndex", "m_databufferListBufflet");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::SurfaceList::getIndexWithBuffer(v19);
}

void PRM::Camera::SurfaceList::getIndexWithBuffer(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer.buffer_type == m_bufferType");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::SurfaceList::getIndexWithBuffer(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer_index < m_size");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::SurfaceList::getIndexWithBuffer(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer_index_int >= 0");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::SurfaceList::getIndexWithBuffer(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer.iosurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::SurfaceList::getIndexWithBuffer(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "m_size > 0");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::SurfaceList::getIndexWithBuffer(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "m_surfaceListBufflet");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getIndexWithBuffer(v19);
}

void PRM::Camera::PixelBufferList::getIndexWithBuffer(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer.buffer_type == m_bufferType");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getIndexWithBuffer(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer_index < m_size || buffer_index == BufferIndexInvalid");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getIndexWithBuffer(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer_index >= 0 || buffer_index == BufferIndexInvalid");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getIndexWithBuffer(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer.cvpixelbuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getIndexWithBuffer(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "m_size > 0");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getIndexWithBuffer(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "m_pixelbufferListBufflet");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getIndexWithBuffer(v19);
}

void PRM::Camera::DataBufferList::getIndexWithBuffer(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer.buffer_type == m_bufferType");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getIndexWithBuffer(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer_index < m_size");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getIndexWithBuffer(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer_index >= 0");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getIndexWithBuffer(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "buffer.cvdatabuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getIndexWithBuffer(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "m_size > 0");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getIndexWithBuffer(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getIndexWithBuffer", "m_databufferListBufflet");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::SurfaceList::getSize(v19);
}

void PRM::Camera::SurfaceList::getSize(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getSize", "m_size > 0");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::SurfaceList::getSize(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getSize", "m_surfaceListBufflet");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getSize(v19);
}

void PRM::Camera::PixelBufferList::getSize(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getSize", "m_size > 0");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferList::getSize(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getSize", "m_pixelbufferListBufflet");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getSize(v19);
}

void PRM::Camera::DataBufferList::getSize(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getSize", "m_size > 0");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferList::getSize(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getSize", "m_databufferListBufflet");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::ViewIndexBufferIndexMap::ViewIndexBufferIndexMap(v19);
}

void PRM::Camera::ViewIndexBufferIndexMap::ViewIndexBufferIndexMap(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "ViewIndexBufferIndexMap", "m_size > 0");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::ViewIndexBufferIndexMap::ViewIndexBufferIndexMap(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "ViewIndexBufferIndexMap", "bufflet");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v19);
}

void PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferIndexWithView", "viewIndex < m_size");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferIndexWithView", "*buffer_index_ref >= 0 || *buffer_index_ref == BufferIndexInvalid");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferIndexWithView", "buffer_index_ref");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferIndexWithView", "m_size > 0");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferIndexWithView", "m_bufflet");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(v19);
}

void PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferIndexWithView", "viewIndex < m_size");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferIndexWithView", "buffer_index_ref");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferIndexWithView", "m_size > 0");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferIndexWithView", "m_bufflet");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::BufferPool::BufferPool(v19);
}

void PRM::Camera::BufferPool::BufferPool(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "m_bufferList->getSize() >= m_viewIndexBufferIndexMap->getSize()");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "m_bufferList");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "viewIndexBufferIndexMap");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "bufferListBufflet");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "m_bufferList->getSize() >= m_viewIndexBufferIndexMap->getSize()");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "m_bufferList");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "viewIndexBufferIndexMap");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "bufferListBufflet");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "m_bufferList->getSize() >= m_viewIndexBufferIndexMap->getSize()");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "m_bufferList");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "viewIndexBufferIndexMap");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "BufferPool", "bufferListBufflet");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

uint64_t PRM::Camera::BufferPool::getBufferListSize(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferListSize", "m_bufferList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getBufferList(v19);
}

uint64_t PRM::Camera::BufferPool::getBufferList(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferList", "buffer.buffer_type == m_bufferType");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getBufferList(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "Invalid option detected: %s", "BufferTypeUnused");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid option detected: %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getBufferList(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferList", "iosurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getBufferList(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferList", "buffer.cvpixelbuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getBufferList(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferList", "iosurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getBufferList(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferList", "buffer.cvdatabuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getBufferList(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferList", "buffer.iosurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getBufferList(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "Unknown option detected for type: %s", "buffer.buffer_type");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Unknown option detected for type: %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getBufferList(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferList", "m_bufferList->getSize()");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getBufferList(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferList", "iosurfaceList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getBufferList(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferList", "m_bufferList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getSurface(v19);
}

uint64_t PRM::Camera::BufferPool::getSurface(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getSurface", "buffer.buffer_type == m_bufferType");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getSurface(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getSurface", "buffer.cvdatabuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getSurface(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getSurface", "buffer.cvpixelbuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getSurface(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getSurface", "buffer.iosurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getSurface(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getSurface", "m_bufferType != BufferTypeUnused");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::incrementPolarisUseCount(v19);
}

uint64_t PRM::Camera::BufferPool::incrementPolarisUseCount(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "incrementPolarisUseCount", "iosurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::decrementPolarisUseCount(v19);
}

uint64_t PRM::Camera::BufferPool::decrementPolarisUseCount(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "decrementPolarisUseCount", "iosurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::BufferPool::getInUse(v19);
}

uint64_t PRM::Camera::BufferPool::getInUse(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getInUse", "iosurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::getBufferWithResource(v19);
}

uint64_t PRM::Camera::OpenLoopBufferPool::getBufferWithResource(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "view_index < m_viewIndexBufferIndexMap->getSize()");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::getBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "buffer_index < m_bufferList->getSize()");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::getBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "buffer.buffer_type == m_bufferType");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::getBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "resource");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::getBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "m_bufferType != BufferTypeUnused");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::getBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "m_viewIndexBufferIndexMap");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::getBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "m_bufferList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v19);
}

uint64_t PRM::Camera::OpenLoopBufferPool::setBufferWithResource(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "buffer.buffer_type == m_bufferType");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "view_index < m_viewIndexBufferIndexMap->getSize()");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "buffer_index < m_bufferList->getSize()");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "view_index >= 0");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "resource");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "m_bufferType != BufferTypeUnused");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "m_viewIndexBufferIndexMap");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "m_bufferList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::reserveBuffers(v19);
}

uint64_t PRM::Camera::ClosedLoopBufferPool::reserveBuffers(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "reserveBuffers", "m_bufferList->getSize() > m_viewIndexBufferIndexMap->getSize()");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::reserveBuffers(v19);
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion (%s). %s", "reserveBuffers", "view_index == m_viewIndexBufferIndexMap->getSize()", "Unable to reserve enough buffers");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    *buf = 136316162;
    v12 = "reserveBuffers";
    v13 = 1024;
    v14 = 464;
    v15 = 2080;
    v16 = "reserveBuffers";
    v17 = 2080;
    v18 = "view_index == m_viewIndexBufferIndexMap->getSize()";
    v19 = 2080;
    v20 = "Unable to reserve enough buffers";
    _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion (%s). %s", buf, 0x30u);
  }

  v5 = OSLogFlushBuffers();
  if (v5)
  {
    v7 = v5;
    v8 = __PSResourceManagerLogSharedInstance(v5, v6);
    if (OUTLINED_FUNCTION_6(v8))
    {
      *buf = 136315394;
      v12 = "reserveBuffers";
      v13 = 1024;
      v14 = v7;
      _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v9 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::reserveBuffers(v9);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "reserveBuffers", "m_bufferType != BufferTypeUnused");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::reserveBuffers(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "reserveBuffers", "m_viewIndexBufferIndexMap");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::reserveBuffers(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "reserveBuffers", "m_bufferList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::deinitialize(v19);
}

uint64_t PRM::Camera::ClosedLoopBufferPool::deinitialize(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "deinitialize", "m_bufferList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::deinitialize(v19);
}

void PRM::Camera::ClosedLoopBufferPool::deinitialize(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "deinitialize", "m_viewIndexBufferIndexMap");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v19, v20);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  PRM::Camera::ClosedLoopBufferPool::~ClosedLoopBufferPool();
}

void PRM::Camera::ClosedLoopBufferPool::~ClosedLoopBufferPool()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    v4[0] = 136315394;
    OUTLINED_FUNCTION_4_2();
    *(&v4[3] + 2) = v0;
    OUTLINED_FUNCTION_9_2(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4);
  }

  OUTLINED_FUNCTION_20();
}

uint64_t PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "view_index < m_viewIndexBufferIndexMap->getSize()");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "buffer_index < m_bufferList->getSize()");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "buffer.buffer_type == m_bufferType");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "view_index >= 0");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "resource");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "m_bufferType != BufferTypeUnused");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "m_viewIndexBufferIndexMap");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "m_bufferList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v19);
}

uint64_t PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "incomingBuffer.buffer_type == m_bufferType");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "view_index < m_viewIndexBufferIndexMap->getSize()");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "reserved_buffer_index < m_bufferList->getSize()");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "reserved_buffer.buffer_type == m_bufferType");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "incoming_buffer_index < m_bufferList->getSize()");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "view_index >= 0");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "resource");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "m_bufferType != BufferTypeUnused");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "m_viewIndexBufferIndexMap");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "m_bufferList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::initialize(v19);
}

uint64_t PRM::Camera::HybridLoopBufferPool::initialize(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_bufferType != BufferTypeUnused");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::initialize(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_viewIndexBufferIndexMap");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::initialize(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_bufferList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::getBufferWithResource(v19);
}