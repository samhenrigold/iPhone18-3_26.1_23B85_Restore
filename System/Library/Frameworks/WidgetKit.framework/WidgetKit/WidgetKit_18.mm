BOOL static DimensionRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) != 0 && v2 == v3)
    {
      return *(a1 + 8) == *(a2 + 8);
    }
  }

  else if ((*(a2 + 16) & 1) == 0 && v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t DimensionRequest.description.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    v11 = 0x3C63696D616E7944;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE18, &unk_19223C580);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_19222B480;
    v4 = MEMORY[0x1E69E7DE0];
    *(v3 + 56) = MEMORY[0x1E69E7DE0];
    v5 = sub_192150ED0();
    *(v3 + 64) = v5;
    *(v3 + 32) = v1;
    v6 = sub_192227970();
    MEMORY[0x193B0A990](v6);

    MEMORY[0x193B0A990](8236, 0xE200000000000000);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_19222B480;
    *(v7 + 56) = v4;
    *(v7 + 64) = v5;
    *(v7 + 32) = v2;
  }

  else
  {
    v11 = 0x3C6465786946;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE18, &unk_19223C580);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_19222B480;
    *(v8 + 56) = MEMORY[0x1E69E7DE0];
    *(v8 + 64) = sub_192150ED0();
    *(v8 + 32) = v1;
  }

  v9 = sub_192227970();
  MEMORY[0x193B0A990](v9);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return v11;
}

uint64_t sub_1921E8198()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

double sub_1921E8250(uint64_t a1)
{
  sub_1922279B0();

  return result;
}

uint64_t sub_1921E82F4()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

unint64_t sub_1921E83A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1921E9048(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1921E83D8(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000657079;
  v3 = 0x5474736575716572;
  v4 = 7235949;
  if (*v1 != 2)
  {
    v4 = 7889261;
  }

  if (*v1)
  {
    v3 = 0x6465786966;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE300000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_1921E844C()
{
  v1 = 0x5474736575716572;
  v2 = 7235949;
  if (*v0 != 2)
  {
    v2 = 7889261;
  }

  if (*v0)
  {
    v1 = 0x6465786966;
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

unint64_t sub_1921E84BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1921E9048(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1921E84E4(uint64_t a1)
{
  v2 = sub_1921E87A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921E8520(uint64_t a1)
{
  v2 = sub_1921E87A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DimensionRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2160, &qword_1922432B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v12 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921E87A8();
  sub_192228B90();
  if (v9 == 1)
  {
    LOBYTE(v14) = 0;
    sub_192228860();
    if (!v2)
    {
      v14 = v12;
      v13 = 2;
      sub_192059A84();
      sub_1922288C0();
      v14 = v8;
      v13 = 3;
      goto LABEL_7;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
    sub_192228860();
    if (!v2)
    {
      v14 = v12;
      v13 = 1;
      sub_192059A84();
LABEL_7:
      sub_1922288C0();
    }
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1921E87A8()
{
  result = qword_1EADEE328;
  if (!qword_1EADEE328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE328);
  }

  return result;
}

uint64_t DimensionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_192228490();
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2168, &unk_1922432C0);
  v33 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v11 = sub_1921E87A8();
  v12 = v34;
  sub_192228B70();
  if (!v12)
  {
    v34 = v4;
    v13 = v33;
    v39 = 0;
    sub_192228760();
    v31 = v7;
    v15 = sub_192228700();

    if (v15 == 1)
    {
      v38 = 1;
      v22 = v31;
      sub_192228780();
      v18 = v23;
      (*(v13 + 8))(v9, v22);
      v21 = 0;
      v20 = 0;
    }

    else
    {
      if (v15)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_19222B480;
        *(v24 + 56) = &type metadata for DimensionRequest.CodingKeys;
        *(v24 + 64) = v11;
        *(v24 + 32) = 0;
        sub_192228480();
        v25 = sub_1922284A0();
        swift_allocError();
        v27 = v26;
        v28 = v32;
        v29 = v34;
        (*(v32 + 16))(v26, v6, v34);
        (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6B00], v25);
        swift_willThrow();
        (*(v28 + 8))(v6, v29);
        (*(v13 + 8))(v9, v31);
        return __swift_destroy_boxed_opaque_existential_1(v35);
      }

      v37 = 2;
      v16 = v31;
      sub_192228780();
      v18 = v17;
      v36 = 3;
      sub_192228780();
      v20 = v19;
      (*(v13 + 8))(v9, v16);
      v21 = 1;
    }

    *a2 = v18;
    *(a2 + 8) = v20;
    *(a2 + 16) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t DimensionRequest.hash(into:)()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    MEMORY[0x193B0BA90](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x193B0BAC0](v3);
    v1 = v2;
  }

  else
  {
    MEMORY[0x193B0BA90](0);
  }

  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  return MEMORY[0x193B0BAC0](v4);
}

uint64_t DimensionRequest.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_192228AD0();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v1 = 0;
  }

  if (v3)
  {
    MEMORY[0x193B0BA90](1);
    MEMORY[0x193B0BAC0](v1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v1 = v2;
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    MEMORY[0x193B0BA90](0);
  }

  MEMORY[0x193B0BAC0](v1);
  return sub_192228B30();
}

uint64_t sub_1921E8D38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_192228AD0();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v1 = 0;
  }

  if (v3)
  {
    MEMORY[0x193B0BA90](1);
    MEMORY[0x193B0BAC0](v1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v1 = v2;
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    MEMORY[0x193B0BA90](0);
  }

  MEMORY[0x193B0BAC0](v1);
  return sub_192228B30();
}

unint64_t sub_1921E8DC8()
{
  result = qword_1EADF2170;
  if (!qword_1EADF2170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2170);
  }

  return result;
}

BOOL sub_1921E8E20(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) != 0 && v2 == v3)
    {
      return *(a1 + 8) == *(a2 + 8);
    }
  }

  else if ((*(a2 + 16) & 1) == 0 && v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for DimensionRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DimensionRequest(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1921E8F44()
{
  result = qword_1EADF2178;
  if (!qword_1EADF2178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2178);
  }

  return result;
}

unint64_t sub_1921E8F9C()
{
  result = qword_1EADEE318;
  if (!qword_1EADEE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE318);
  }

  return result;
}

unint64_t sub_1921E8FF4()
{
  result = qword_1EADEE320;
  if (!qword_1EADEE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE320);
  }

  return result;
}

unint64_t sub_1921E9048(uint64_t a1, uint64_t a2)
{
  v2 = sub_192228700();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t ControlPushInfo.token.getter()
{
  v1 = *v0;
  sub_1920367C8(*v0, *(v0 + 8));
  return v1;
}

id TimelineRequest.environment.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9WidgetKit15TimelineRequest_environment);
  *a1 = v2;
  return v2;
}

uint64_t sub_1921E9114(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6D6E6F7269766E65;
  v4 = 0xEB00000000746E65;
  if (v2 != 1)
  {
    v3 = 0x646E6148656C6966;
    v4 = 0xEA0000000000656CLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746567646977;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6D6E6F7269766E65;
  v8 = 0xEB00000000746E65;
  if (*a2 != 1)
  {
    v7 = 0x646E6148656C6966;
    v8 = 0xEA0000000000656CLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746567646977;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1922289A0();
  }

  return v11 & 1;
}

uint64_t sub_1921E922C()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

double sub_1921E92D8(uint64_t a1)
{
  sub_1922279B0();

  return result;
}

uint64_t sub_1921E9370()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

unint64_t sub_1921E9418@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1921E9D08(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1921E9448(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEB00000000746E65;
  v5 = 0x6D6E6F7269766E65;
  if (v2 != 1)
  {
    v5 = 0x646E6148656C6966;
    v4 = 0xEA0000000000656CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746567646977;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1921E94B0()
{
  v1 = 0x6D6E6F7269766E65;
  if (*v0 != 1)
  {
    v1 = 0x646E6148656C6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746567646977;
  }
}

unint64_t sub_1921E9514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1921E9D08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1921E953C(uint64_t a1)
{
  v2 = sub_1921EA4FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921E9578(uint64_t a1)
{
  v2 = sub_1921EA4FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id TimelineRequest.init(widget:environment:fileHandle:)(void *a1, void **a2, uint64_t a3)
{
  v4 = sub_192077DB8(a1, a2, a3);

  return v4;
}

void sub_1921E95FC(void *a1)
{
  v3 = v1;
  v31 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2198, &qword_1922435D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921EA4FC();
  sub_192228B90();
  v29 = *(v3 + OBJC_IVAR____TtC9WidgetKit15TimelineRequest_environment);
  v9 = v29;
  v28 = 1;
  sub_1920E2830();
  v10 = v9;
  sub_1922288C0();

  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v11 = objc_opt_self();
    v12 = *(v3 + OBJC_IVAR____TtC9WidgetKit15TimelineRequest_widget);
    v29 = 0;
    v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v29];
    v14 = v29;
    if (v13)
    {
      v15 = sub_192225080();
      v27 = v16;
    }

    else
    {
      v17 = v14;
      v18 = sub_192224F90();

      swift_willThrow();
      v15 = 0;
      v27 = 0xF000000000000000;
    }

    v19 = *(v3 + OBJC_IVAR____TtC9WidgetKit15TimelineRequest_fileHandle);
    v29 = 0;
    v20 = [v11 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v29];
    v21 = v29;
    if (v20)
    {
      v26 = sub_192225080();
      v23 = v22;
    }

    else
    {
      v24 = v21;
      v25 = sub_192224F90();

      swift_willThrow();
      v26 = 0;
      v23 = 0xF000000000000000;
    }

    v29 = v15;
    v30 = v27;
    v28 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0400, &qword_192233B98);
    sub_192117B88();
    sub_1922288C0();
    v29 = v26;
    v30 = v23;
    v28 = 2;
    sub_1922288C0();
    (*(v6 + 8))(v8, v5);
    sub_192046ED4(v15, v27);
    sub_192046ED4(v26, v23);
  }
}

id TimelineRequest.init(coder:)(void *a1)
{
  sub_19202A7A8(0, &qword_1ED74BB40, 0x1E6994370);
  v2 = sub_192228140();
  type metadata accessor for WidgetEnvironment.Storage();
  v3 = sub_192228140();
  sub_19202A7A8(0, &unk_1ED74C360, 0x1E696AC00);
  v4 = sub_192228140();
  v5 = v4;
  if (v2)
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v3;
        v6 = objc_allocWithZone(type metadata accessor for TimelineRequest());
        v7 = sub_192077DB8(v2, &v9, v5);

        swift_getObjectType();
        swift_deallocPartialClassInstance();
        return v7;
      }
    }

    else
    {

      a1 = v5;
    }
  }

  else
  {

    a1 = v5;
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id TimelineRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TimelineRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimelineRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1921E9CB8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1921E9D54(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1921E9D08(uint64_t a1, uint64_t a2)
{
  v2 = sub_192228700();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void *sub_1921E9D54(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF21C8, &qword_1922437B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v50 - v5;
  v7 = a1[3];
  v60 = a1;
  v8 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = sub_1921EA4FC();
  sub_192228B70();
  if (!v1)
  {
    v59 = v4;
    v63 = 1;
    sub_192044634();
    v10 = v6;
    sub_1922287C0();
    v11 = v61;
    v63 = 0;
    sub_192047340();
    sub_1922287C0();
    v57 = v3;
    v58 = v10;
    v14 = v61;
    v13 = v62;
    sub_19202A7A8(0, &qword_1ED749280, 0x1E696ACD0);
    v15 = sub_19202A7A8(0, &qword_1ED74BB40, 0x1E6994370);
    v55 = v14;
    v56 = v13;
    v16 = sub_192228010();
    if (v16)
    {
      v22 = v16;
      v63 = 2;
      v23 = v57;
      sub_1922287C0();
      v30 = v61;
      v31 = v62;
      v32 = sub_19202A7A8(0, &unk_1ED74C360, 0x1E696AC00);
      v53 = v31;
      v54 = v30;
      v33 = v32;
      v34 = sub_192228010();
      if (v34)
      {
        v61 = v11;
        v40 = v34;
        v41 = objc_allocWithZone(type metadata accessor for TimelineRequest());
        v42 = v40;
        v8 = sub_192077DB8(v22, &v61, v42);

        sub_192039140(v54, v53);
        sub_192039140(v55, v56);

        (*(v59 + 8))(v58, v23);
        __swift_destroy_boxed_opaque_existential_1(v60);
        return v8;
      }

      v43 = v22;
      v51 = v11;
      v44 = sub_1922284A0();
      v45 = swift_allocError();
      v47 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0);
      *v47 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_19222B480;
      *(v48 + 56) = &type metadata for TimelineRequest.CodingKeys;
      *(v48 + 64) = v9;
      *(v48 + 32) = 2;
      sub_192228480();
      v49 = *MEMORY[0x1E69E6B08];
      (*(*(v44 - 8) + 104))(v47, v49, v44);
      v52 = v45;
      swift_willThrow();
      v35 = sub_1922284A0();
      swift_allocError();
      v8 = v36;
      v50[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
      *v8 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_19222B480;
      *(v37 + 56) = &type metadata for TimelineRequest.CodingKeys;
      *(v37 + 64) = v9;
      *(v37 + 32) = 2;
      v38 = v52;
      v39 = v52;
      sub_192228480();
      (*(*(v35 - 8) + 104))(v8, v49, v35);
      swift_willThrow();
      sub_192039140(v54, v53);
      sub_192039140(v55, v56);

      v21 = v38;
    }

    else
    {
      v24 = sub_1922284A0();
      v25 = swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0);
      *v27 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_19222B480;
      *(v28 + 56) = &type metadata for TimelineRequest.CodingKeys;
      *(v28 + 64) = v9;
      *(v28 + 32) = 0;
      sub_192228480();
      v29 = *MEMORY[0x1E69E6B08];
      (*(*(v24 - 8) + 104))(v27);
      swift_willThrow();
      v17 = sub_1922284A0();
      swift_allocError();
      v8 = v18;
      v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
      *v8 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_19222B480;
      *(v19 + 56) = &type metadata for TimelineRequest.CodingKeys;
      *(v19 + 64) = v9;
      *(v19 + 32) = 0;
      v20 = v25;
      sub_192228480();
      (*(*(v17 - 8) + 104))(v8, v29, v17);
      swift_willThrow();
      sub_192039140(v55, v56);

      v21 = v25;
    }

    (*(v59 + 8))(v58, v57);
  }

  __swift_destroy_boxed_opaque_existential_1(v60);
  return v8;
}

unint64_t sub_1921EA4FC()
{
  result = qword_1EADF21A0;
  if (!qword_1EADF21A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF21A0);
  }

  return result;
}

unint64_t sub_1921EA65C()
{
  result = qword_1EADF21B0;
  if (!qword_1EADF21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF21B0);
  }

  return result;
}

unint64_t sub_1921EA6B4()
{
  result = qword_1EADF21B8;
  if (!qword_1EADF21B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF21B8);
  }

  return result;
}

unint64_t sub_1921EA70C()
{
  result = qword_1EADF21C0;
  if (!qword_1EADF21C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF21C0);
  }

  return result;
}

uint64_t sub_1921EA760()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

double sub_1921EA7D8(uint64_t a1)
{
  sub_1922279B0();

  return result;
}

uint64_t sub_1921EA83C()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_1921EA8B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1802658148;
  }

  else
  {
    v3 = 0x746867696CLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1802658148;
  }

  else
  {
    v5 = 0x746867696CLL;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t sub_1921EA94C(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 1802658148;
  }

  else
  {
    v3 = 0x746867696CLL;
  }

  if (*a2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (v2)
  {
    v5 = 1802658148;
  }

  else
  {
    v5 = 0x746867696CLL;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1922289A0();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_1921EA9FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1802658148;
  }

  else
  {
    v3 = 0x746867696CLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1802658148;
  }

  else
  {
    v5 = 0x746867696CLL;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1922289A0();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_1921EAAAC(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 1802658148;
  }

  else
  {
    v3 = 0x746867696CLL;
  }

  if (*a2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (v2)
  {
    v5 = 1802658148;
  }

  else
  {
    v5 = 0x746867696CLL;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

double sub_1921EAB48(uint64_t a1, uint64_t a2)
{
  v5 = sub_192227710();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_192227790();
  v9 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v2 + 16);
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_1921ECA10;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19202AB80;
  aBlock[3] = &block_descriptor_40;
  v13 = _Block_copy(aBlock);

  sub_192227740();
  v17 = MEMORY[0x1E69E7CC0];
  sub_19202A838(&qword_1ED74C620, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v16);

  return result;
}

void *sub_1921EAE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_192030418();
  if (result)
  {
    v5 = result;
    if (a3)
    {
      v6 = sub_192227930();
    }

    else
    {
      v6 = 0;
    }

    [v5 reloadAllControlsForBundleIdentifier_];

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1921EAEA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_192227710();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_192227790();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v19 - v13;
  v19[1] = *(a2 + 16);
  (*(v11 + 16))(v19 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  (*(v11 + 32))(v16 + v15, v14, v10);
  aBlock[4] = sub_1921EC754;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19202AB80;
  aBlock[3] = &block_descriptor_8;
  v17 = _Block_copy(aBlock);

  sub_192227740();
  v23 = MEMORY[0x1E69E7CC0];
  sub_19202A838(&qword_1ED74C620, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v9, v6, v17);
  _Block_release(v17);
  (*(v22 + 8))(v6, v4);
  (*(v20 + 8))(v9, v21);

  return result;
}

uint64_t sub_1921EB238(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  v7 = sub_192030418();
  if (v7)
  {
    v8 = v7;
    (*(v4 + 16))(v6, a2, v3);
    v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v10 = swift_allocObject();
    (*(v4 + 32))(v10 + v9, v6, v3);
    v26 = sub_1921EC7C4;
    v27 = v10;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v24 = sub_1921EC514;
    v25 = &block_descriptor_14;
    v11 = _Block_copy(&aBlock);

    [v8 currentConfigurations_];
    _Block_release(v11);
    return swift_unknownObjectRelease();
  }

  else
  {
    v13 = *MEMORY[0x1E69941E8];
    v14 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v15 = sub_192227960();
    v17 = v16;
    v25 = MEMORY[0x1E69E6158];
    *&aBlock = 0xD000000000000014;
    *(&aBlock + 1) = 0x800000019224B870;
    sub_19203BEDC(&aBlock, v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v14;
    sub_19213DB28(v29, v15, v17, isUniquelyReferenced_nonNull_native);

    v19 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v20 = sub_192227830();

    v21 = [v19 initWithDomain:v13 code:1102 userInfo:v20];

    *&aBlock = v21;
    return sub_192227C80();
  }
}

void sub_1921EB518(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
LABEL_3:
      v24 = a3;
      v15 = a3;
      sub_192227C80();
      return;
    }
  }

  else
  {
    v23 = v9;
    sub_192224F30();
    swift_allocObject();
    sub_1920367C8(a1, a2);
    sub_192224F20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2260, &qword_192243A40);
    sub_1921EC858();
    sub_192224F00();

    v16 = v24;
    if (v24)
    {
      v17 = sub_192227CF0();
      (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
      v18 = v23;
      (*(v23 + 16))(v11, a4, v8);
      v19 = (*(v18 + 80) + 40) & ~*(v18 + 80);
      v20 = swift_allocObject();
      *(v20 + 2) = 0;
      *(v20 + 3) = 0;
      *(v20 + 4) = v16;
      (*(v18 + 32))(&v20[v19], v11, v8);
      v21 = v16;
      sub_19211CA04(0, 0, v14, &unk_192243A50, v20);
      sub_192046ED4(a1, a2);

      return;
    }

    sub_192046ED4(a1, a2);
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_192227C90();
}

uint64_t sub_1921EB830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 256) = a4;
  *(v5 + 264) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1921EB850, 0, 0);
}

uint64_t sub_1921EB850(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 256) + OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_controls);
  *(v3 + 272) = v4;
  if (v4 >> 62)
  {
    v5 = sub_192228340();
    *(v3 + 280) = v5;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_29:
    v7 = MEMORY[0x1E69E7CC0];
LABEL_30:
    *(v3 + 248) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38);
    sub_192227C90();
    v39 = *(v3 + 8);

    return v39();
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v3 + 280) = v5;
  if (!v5)
  {
    goto LABEL_29;
  }

LABEL_3:
  if (v5 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEDB29B0](v5, a3);
  }

  v6 = 0;
  *(v3 + 288) = *(*(v3 + 256) + OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_tokens);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v3 + 296) = v6;
    *(v3 + 304) = v7;
    v8 = *(v3 + 272);
    v9 = (v8 & 0xC000000000000001) != 0 ? MEMORY[0x193B0B410]() : *(v8 + 8 * v6 + 32);
    v10 = v9;
    *(v3 + 312) = v9;
    if (*(*(v3 + 288) + 16) && (v11 = sub_1920B7194(v9), (v12 & 1) != 0))
    {
      v13 = (*(*(v3 + 288) + 56) + 16 * v11);
      v15 = *v13;
      v14 = v13[1];
      sub_1920367C8(*v13, v14);
    }

    else
    {
      v15 = 0;
      v14 = 0xF000000000000000;
    }

    *(v3 + 320) = v15;
    *(v3 + 328) = v14;
    v16 = v10;
    sub_19206A874(v15, v14);
    *(v3 + 32) = xmmword_19222A790;
    *(v3 + 48) = v16;
    v17 = v16;
    v18 = [v17 kind];
    v19 = sub_192227960();
    v21 = v20;

    *(v3 + 16) = v19;
    *(v3 + 24) = v21;
    v22 = sub_192046ED4(*(v3 + 32), *(v3 + 40));
    *(v3 + 32) = v15;
    *(v3 + 40) = v14;
    v23 = [v17 intentReference];

    if (v23)
    {
      v24 = [v23 intent];
      *(v3 + 336) = v24;

      if (v24)
      {
        break;
      }
    }

LABEL_16:
    *(v3 + 88) = 0;
    *(v3 + 72) = 0u;
    *(v3 + 56) = 0u;
    sub_1920B2CF4(v3 + 16, v3 + 96);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v3 + 304);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_1920C301C(0, *(v7 + 2) + 1, 1, *(v3 + 304));
    }

    v28 = *(v7 + 2);
    v27 = *(v7 + 3);
    if (v28 >= v27 >> 1)
    {
      v7 = sub_1920C301C((v27 > 1), v28 + 1, 1, v7);
    }

    v29 = *(v3 + 312);
    v30 = *(v3 + 280);
    v31 = *(v3 + 296) + 1;
    sub_192046ED4(*(v3 + 320), *(v3 + 328));

    sub_1920B2D50(v3 + 16);
    *(v7 + 2) = v28 + 1;
    v32 = &v7[80 * v28];
    *(v32 + 2) = *(v3 + 96);
    v33 = *(v3 + 160);
    v35 = *(v3 + 112);
    v34 = *(v3 + 128);
    *(v32 + 5) = *(v3 + 144);
    *(v32 + 6) = v33;
    *(v32 + 3) = v35;
    *(v32 + 4) = v34;
    if (v31 == v30)
    {
      goto LABEL_30;
    }

    v6 = *(v3 + 296) + 1;
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {

    goto LABEL_16;
  }

  v36 = [v25 linkAction];
  if (v36)
  {
    v37 = v36;
    *(v3 + 240) = sub_19202A7A8(0, &qword_1EADEE500, 0x1E69AC640);
    *(v3 + 216) = v37;
  }

  else
  {
    *(v3 + 232) = 0u;
    *(v3 + 216) = 0u;
  }

  v38 = swift_task_alloc();
  *(v3 + 344) = v38;
  *v38 = v3;
  v38[1] = sub_1921EBC68;
  v5 = v3 + 176;
  a3 = v3 + 216;

  return MEMORY[0x1EEDB29B0](v5, a3);
}

uint64_t sub_1921EBC68()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_1921EC14C;
  }

  else
  {
    sub_192030F04(v2 + 216);
    v3 = sub_1921EBD94;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1921EBD94()
{
  v1 = *(v0 + 192);
  *(v0 + 56) = *(v0 + 176);
  *(v0 + 72) = v1;
  *(v0 + 88) = *(v0 + 208);
  while (1)
  {
    sub_1920B2CF4(v0 + 16, v0 + 96);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v0 + 304);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_1920C301C(0, *(v3 + 2) + 1, 1, *(v0 + 304));
    }

    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_1920C301C((v4 > 1), v5 + 1, 1, v3);
    }

    v6 = *(v0 + 312);
    v7 = *(v0 + 280);
    v8 = *(v0 + 296) + 1;
    sub_192046ED4(*(v0 + 320), *(v0 + 328));

    sub_1920B2D50(v0 + 16);
    *(v3 + 2) = v5 + 1;
    v9 = &v3[80 * v5];
    *(v9 + 2) = *(v0 + 96);
    v10 = *(v0 + 160);
    v12 = *(v0 + 112);
    v11 = *(v0 + 128);
    *(v9 + 5) = *(v0 + 144);
    *(v9 + 6) = v10;
    *(v9 + 3) = v12;
    *(v9 + 4) = v11;
    if (v8 == v7)
    {
      break;
    }

    v13 = *(v0 + 296) + 1;
    *(v0 + 296) = v13;
    *(v0 + 304) = v3;
    v14 = *(v0 + 272);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x193B0B410]();
    }

    else
    {
      v15 = *(v14 + 8 * v13 + 32);
    }

    v16 = v15;
    *(v0 + 312) = v15;
    if (*(*(v0 + 288) + 16) && (v17 = sub_1920B7194(v15), (v18 & 1) != 0))
    {
      v19 = (*(*(v0 + 288) + 56) + 16 * v17);
      v21 = *v19;
      v20 = v19[1];
      sub_1920367C8(*v19, v20);
    }

    else
    {
      v21 = 0;
      v20 = 0xF000000000000000;
    }

    *(v0 + 320) = v21;
    *(v0 + 328) = v20;
    v22 = v16;
    sub_19206A874(v21, v20);
    *(v0 + 32) = xmmword_19222A790;
    *(v0 + 48) = v22;
    v23 = v22;
    v24 = [v23 kind];
    v25 = sub_192227960();
    v27 = v26;

    *(v0 + 16) = v25;
    *(v0 + 24) = v27;
    v28 = sub_192046ED4(*(v0 + 32), *(v0 + 40));
    *(v0 + 32) = v21;
    *(v0 + 40) = v20;
    v29 = [v23 intentReference];

    if (v29)
    {
      v30 = [v29 intent];
      *(v0 + 336) = v30;

      if (v30)
      {
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (v31)
        {
          v34 = [v31 linkAction];
          if (v34)
          {
            v35 = v34;
            *(v0 + 240) = sub_19202A7A8(0, &qword_1EADEE500, 0x1E69AC640);
            *(v0 + 216) = v35;
          }

          else
          {
            *(v0 + 232) = 0u;
            *(v0 + 216) = 0u;
          }

          v36 = swift_task_alloc();
          *(v0 + 344) = v36;
          *v36 = v0;
          v36[1] = sub_1921EBC68;

          return MEMORY[0x1EEDB29B0](v0 + 176, v0 + 216);
        }
      }
    }

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
  }

  *(v0 + 248) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38);
  sub_192227C90();
  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1921EC14C()
{
  sub_192030F04(v0 + 216);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  while (1)
  {
    sub_1920B2CF4(v0 + 16, v0 + 96);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 304);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_1920C301C(0, *(v2 + 2) + 1, 1, *(v0 + 304));
    }

    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_1920C301C((v3 > 1), v4 + 1, 1, v2);
    }

    v5 = *(v0 + 312);
    v6 = *(v0 + 280);
    v7 = *(v0 + 296) + 1;
    sub_192046ED4(*(v0 + 320), *(v0 + 328));

    sub_1920B2D50(v0 + 16);
    *(v2 + 2) = v4 + 1;
    v8 = &v2[80 * v4];
    *(v8 + 2) = *(v0 + 96);
    v9 = *(v0 + 128);
    v10 = *(v0 + 160);
    v11 = *(v0 + 112);
    *(v8 + 5) = *(v0 + 144);
    *(v8 + 6) = v10;
    *(v8 + 3) = v11;
    *(v8 + 4) = v9;
    if (v7 == v6)
    {
      break;
    }

    v12 = *(v0 + 296) + 1;
    *(v0 + 296) = v12;
    *(v0 + 304) = v2;
    v13 = *(v0 + 272);
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x193B0B410]();
    }

    else
    {
      v14 = *(v13 + 8 * v12 + 32);
    }

    v15 = v14;
    *(v0 + 312) = v14;
    if (*(*(v0 + 288) + 16) && (v16 = sub_1920B7194(v14), (v17 & 1) != 0))
    {
      v18 = (*(*(v0 + 288) + 56) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      sub_1920367C8(*v18, v20);
    }

    else
    {
      v19 = 0;
      v20 = 0xF000000000000000;
    }

    *(v0 + 320) = v19;
    *(v0 + 328) = v20;
    v21 = v15;
    sub_19206A874(v19, v20);
    *(v0 + 32) = xmmword_19222A790;
    *(v0 + 48) = v21;
    v22 = v21;
    v23 = [v22 kind];
    v24 = sub_192227960();
    v26 = v25;

    *(v0 + 16) = v24;
    *(v0 + 24) = v26;
    v27 = sub_192046ED4(*(v0 + 32), *(v0 + 40));
    *(v0 + 32) = v19;
    *(v0 + 40) = v20;
    v28 = [v22 intentReference];

    if (v28)
    {
      v29 = [v28 intent];
      *(v0 + 336) = v29;

      if (v29)
      {
        objc_opt_self();
        v30 = swift_dynamicCastObjCClass();
        if (v30)
        {
          v33 = [v30 linkAction];
          if (v33)
          {
            v34 = v33;
            *(v0 + 240) = sub_19202A7A8(0, &qword_1EADEE500, 0x1E69AC640);
            *(v0 + 216) = v34;
          }

          else
          {
            *(v0 + 232) = 0u;
            *(v0 + 216) = 0u;
          }

          v35 = swift_task_alloc();
          *(v0 + 344) = v35;
          *v35 = v0;
          v35[1] = sub_1921EBC68;

          return MEMORY[0x1EEDB29B0](v0 + 176, v0 + 216);
        }
      }
    }

    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
  }

  *(v0 + 248) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38);
  sub_192227C90();
  v31 = *(v0 + 8);

  return v31();
}

double sub_1921EC514(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_192225080();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_192046ED4(v4, v8);

  return result;
}

void sub_1921EC5C0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1921EC664()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2250, &qword_192243A30);
  *v1 = v0;
  v1[1] = sub_192123A24;
  v3 = *(v0 + 24);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000017, 0x800000019224B1E0, sub_1921EC74C, v3, v2);
}

uint64_t sub_1921EC754()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1921EB238(v2, v3);
}

void sub_1921EC7C4(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  sub_1921EB518(a1, a2, a3, v8);
}

unint64_t sub_1921EC858()
{
  result = qword_1EADF2268;
  if (!qword_1EADF2268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2260, &qword_192243A40);
    sub_19202A838(&qword_1EADF2270, type metadata accessor for ControlsConfigurationXPCContainer, &protocol conformance descriptor for ControlsConfigurationXPCContainer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2268);
  }

  return result;
}

uint64_t sub_1921EC90C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920A59A8;

  return sub_1921EB830(a1, v6, v7, v8, v1 + v5);
}

__n128 sub_1921ECA38@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v2;
  v3 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v3;
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v5;
  return result;
}

uint64_t sub_1921ECA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v4[27] = swift_task_alloc();
  type metadata accessor for ControlTemplateToggle.Option(0);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v4[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC0, &unk_192231BD0);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = type metadata accessor for ExtractedControlMetadata(0);
  v4[34] = swift_task_alloc();
  v6 = *(a3 + 16);
  v4[35] = v6;
  v4[36] = *(v6 - 8);
  v4[37] = swift_task_alloc();
  v7 = sub_192225C70();
  v4[38] = v7;
  v4[39] = *(v7 - 8);
  v4[40] = swift_task_alloc();
  sub_192227CC0();
  v4[41] = sub_192227CB0();
  v9 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_1921ECCD4, v9, v8);
}

uint64_t sub_1921ECCD4()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v64 = *(v0 + 304);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v68 = *(v0 + 272);
  v70 = *(v0 + 264);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v66 = *(v0 + 192);

  v77 = *v6;
  v7 = *(v6 + 17);
  v8 = *(v6 + 18);
  v9 = *(v6 + 16);
  *(v0 + 350) = *(v6 + 32);
  *(v0 + 336) = v8;
  v75 = *(v6 + 40);
  v76 = v7;
  v10 = *(v6 + 64);
  v80 = swift_allocObject();
  *(v80 + 16) = 0;
  v73 = (v80 + 16);
  v10();
  v11 = *(v5 + 32);
  v74 = v9;
  sub_1921E6550(v9 & 1, v4, v11);
  (*(v3 + 8))(v2, v4);
  v12 = *(v6 + 16);
  *(v0 + 16) = *v6;
  *(v0 + 32) = v12;
  v13 = *(v6 + 32);
  v14 = *(v6 + 48);
  v15 = *(v6 + 80);
  *(v0 + 80) = *(v6 + 64);
  *(v0 + 96) = v15;
  *(v0 + 48) = v13;
  *(v0 + 64) = v14;
  swift_getWitnessTable();
  v16 = sub_1920FCC2C();
  v17 = v11;
  *(v0 + 152) = v11;
  *(v0 + 160) = v16;
  swift_getWitnessTable();
  sub_1921E67A4(v1, v66, v64, v68);
  if (*(v68 + *(v70 + 20)) == 1)
  {
    *v73 = 1;
  }

  v18 = *(v0 + 256);
  v19 = v77(*(v0 + 192));
  v67 = v20;
  v69 = v19;
  v78 = v21;
  sub_192226A40();
  v22 = sub_192226A90();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v25 = v24(v18, 1, v22);
  v26 = *(v0 + 256);
  if (v25 == 1)
  {
    sub_192033970(*(v0 + 256), &qword_1EADEFEC0, &unk_192231BD0);
    v71 = 0;
    v72 = 0;
  }

  else
  {
    v27 = sub_192226A80();
    (*(v23 + 8))(v26, v22);
    v28 = [v27 string];

    v29 = sub_192227960();
    v71 = v30;
    v72 = v29;
  }

  v31 = *(v0 + 248);
  sub_192226A50();
  v32 = v24(v31, 1, v22);
  v33 = *(v0 + 248);
  if (v32 == 1)
  {
    sub_192033970(*(v0 + 248), &qword_1EADEFEC0, &unk_192231BD0);
    v63 = 0;
    v65 = 0;
  }

  else
  {
    v34 = sub_192226A80();
    (*(v23 + 8))(v33, v22);
    v35 = [v34 string];

    v36 = sub_192227960();
    v63 = v37;
    v65 = v36;
  }

  v61 = *(v0 + 304);
  v62 = *(v0 + 320);
  v38 = *(v0 + 280);
  v59 = *(v0 + 272);
  v60 = *(v0 + 312);
  v39 = *(v0 + 240);
  v57 = *(v0 + 232);
  v58 = *(v0 + 224);
  v40 = *(v0 + 200);
  v41 = *(v0 + 208);
  v42 = *(v0 + 192);
  sub_192226B80();
  v43 = *(v40 + 24);
  v44 = *(v40 + 40);
  v45 = v78 & 1;
  v79 = 1;
  sub_1921ED324(1, v41, v74 & 1, v42, v39, v80, v69, v67, v57, v45, v38, v43, v17, v44);
  sub_1921ED324(0, v41, v74 & 1, v42, v39, v80, v69, v67, v58, v45, v38, v43, v17, v44);
  sub_192033970(v39, &qword_1EADEF720, &unk_19222E2F0);
  sub_1921EDD48(v59, type metadata accessor for ExtractedControlMetadata);
  (*(v60 + 8))(v62, v61);
  if ((v74 & 1) == 0)
  {
    swift_beginAccess();
    v79 = *v73;
  }

  v46 = *(v0 + 232);
  v47 = *(v0 + 216);
  v48 = *(v0 + 224);
  v49 = *(v0 + 184);
  v50 = sub_192225020();
  v51 = *(*(v50 - 8) + 56);
  v51(v47, 1, 1, v50);
  *(v0 + 136) = *(v0 + 342);
  v52 = type metadata accessor for ControlTemplateToggle(0);
  v53 = v52[8];
  v51(v49 + v53, 1, 1, v50);
  v54 = v52[11];
  *v49 = v72;
  v49[1] = v71;
  v49[2] = v65;
  v49[3] = v63;
  sub_19212F420(v46, v49 + v52[6]);
  sub_19212F420(v48, v49 + v52[7]);
  sub_19202CFFC(v0 + 136, v0 + 168, qword_1EADEF800, &unk_192231C10);
  sub_19204193C(v47, v49 + v53, &qword_1EADEEE10, &unk_19222B630);

  *(v49 + v52[9]) = v79;
  *(v49 + v52[10]) = v76;
  *(v49 + v54) = *(v0 + 136);
  *(v49 + v52[12]) = v75;

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_1921ED324@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14)
{
  v103 = a8;
  v102 = a7;
  v82 = a6;
  v81 = a5;
  v89 = a4;
  v87 = a3;
  v101 = a9;
  v93 = a13;
  v88 = a11;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v100 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v96 = &v81 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v95 = &v81 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v98 = &v81 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC0, &unk_192231BD0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v86 = &v81 - v25;
  v97 = type metadata accessor for ExtractedControlValueMetadata(0);
  MEMORY[0x1EEE9AC00](v97);
  v85 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a12 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFD70, &qword_192231780);
  v31 = sub_192225C70();
  v84 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v81 - v32;
  v104 = sub_192225C70();
  v94 = *(v104 - 8);
  v34 = MEMORY[0x1EEE9AC00](v104);
  v36 = &v81 - v35;
  v90 = *(a2 + 40);
  v37 = *(a2 + 6);
  v38 = *(a2 + 11);
  v92 = *(a2 + 10);
  v91 = v38;
  v99 = a1;
  v37(a1, v34);
  swift_getKeyPath();
  LOBYTE(v108) = 1;
  v83 = a12;
  sub_192227040();

  (*(v27 + 8))(v30, a12);
  v39 = sub_1920FCBC8();
  v114 = a14;
  v115 = v39;
  WitnessTable = swift_getWitnessTable();
  sub_1921E6550(v87, v31, WitnessTable);
  (*(v84 + 8))(v33, v31);
  v41 = a2[3];
  v110 = a2[2];
  v111 = v41;
  v42 = a2[5];
  v112 = a2[4];
  v113 = v42;
  v43 = *a2;
  v44 = a2[1];
  v45 = v85;
  v108 = v43;
  v109 = v44;
  v107[0] = v88;
  v107[1] = v83;
  v107[2] = v93;
  v107[3] = a14;
  type metadata accessor for ControlWidgetToggleParser(0, v107);
  swift_getWitnessTable();
  v46 = sub_1920FCC2C();
  v105 = WitnessTable;
  v106 = v46;
  v47 = v86;
  v48 = v104;
  swift_getWitnessTable();
  v93 = v36;
  sub_1921E6584(v36, v89, v48, v45);
  sub_192226A40();
  v49 = sub_192226A90();
  v50 = *(v49 - 8);
  if ((*(v50 + 48))(v47, 1, v49) == 1)
  {
    sub_192033970(v47, &qword_1EADEFEC0, &unk_192231BD0);
    v89 = 0;
    v88 = 0;
  }

  else
  {
    v51 = sub_192226A80();
    (*(v50 + 8))(v47, v49);
    v52 = [v51 string];

    v89 = sub_192227960();
    v88 = v53;
  }

  v54 = v95;
  sub_192226B80();
  v55 = sub_192226B70();
  v56 = *(v55 - 8);
  v57 = *(v56 + 48);
  v58 = v57(v54, 1, v55);
  v59 = v100;
  v60 = v98;
  v61 = v97;
  v62 = v96;
  if (v58 == 1)
  {
    sub_19202CFFC(v81, v98, &qword_1EADEF720, &unk_19222E2F0);
    if (v57(v54, 1, v55) != 1)
    {
      sub_192033970(v54, &qword_1EADEF720, &unk_19222E2F0);
    }
  }

  else
  {
    (*(v56 + 32))(v98, v54, v55);
    (*(v56 + 56))(v60, 0, 1, v55);
  }

  if (*(v45 + *(v61 + 24)))
  {
    v63 = v82;
    swift_beginAccess();
    *(v63 + 16) = 1;
  }

  if (v90)
  {
    v64 = 1;
  }

  else
  {
    sub_19202CFFC(v60, v62, &qword_1EADEF720, &unk_19222E2F0);
    if (v57(v62, 1, v55) == 1)
    {
      sub_192033970(v62, &qword_1EADEF720, &unk_19222E2F0);
      v64 = 0;
    }

    else
    {
      v64 = sub_192226B60();
      (*(v56 + 8))(v62, v55);
    }
  }

  LODWORD(v96) = a10;
  v92(v107, v99 & 1);
  (*(v94 + 8))(v93, v104);
  v104 = v107[0];
  if (v64)
  {
    sub_1920FD8E0(v60, v59);
  }

  else
  {
    sub_192033970(v60, &qword_1EADEF720, &unk_19222E2F0);
    (*(v56 + 56))(v59, 1, 1, v55);
  }

  v65 = v59;
  v66 = (v45 + *(v61 + 20));
  v67 = v45;
  v69 = *v66;
  v68 = v66[1];
  v71 = v66[2];
  v70 = v66[3];

  sub_1921EDD48(v67, type metadata accessor for ExtractedControlValueMetadata);
  v72 = type metadata accessor for ControlTemplateToggle.Option(0);
  v73 = v72[6];
  v74 = v101;
  (*(v56 + 56))(v101 + v73, 1, 1, v55);
  v75 = v74 + v72[7];
  v76 = (v74 + v72[8]);
  v77 = (v74 + v72[9]);
  v78 = v88;
  *v74 = v89;
  v74[1] = v78;
  v74[2] = v104;
  result = sub_19204193C(v65, v74 + v73, &qword_1EADEF720, &unk_19222E2F0);
  v80 = v103;
  *v75 = v102;
  *(v75 + 1) = v80;
  v75[16] = v96 & 1;
  *v76 = v69;
  v76[1] = v68;
  *v77 = v71;
  v77[1] = v70;
  return result;
}

uint64_t sub_1921EDD48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1921EDDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1921EDDE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1921EDE2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1921EDE84@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 6);
  *a1 = sub_1920EF8DC;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 41) = v2;
  *(a1 + 48) = v3;
  v5 = *(v1 + 2);
  *(a1 + 56) = *(v1 + 1);
  *(a1 + 72) = v5;
  *(a1 + 88) = v4;
}

__n128 sub_1921EDF18@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *(a1 + 16);
  v10 = *(a1 + 17);
  v11 = *(a1 + 40);
  *a9 = *a1;
  *(a9 + 16) = v9 & 1;
  *(a9 + 17) = v10 & 1;
  result = *(a1 + 24);
  *(a9 + 24) = result;
  *(a9 + 40) = v11 & 1;
  *(a9 + 41) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  return result;
}

uint64_t ControlWidgetToggle.body.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  v7 = *(v2 + 6);
  *&v26[7] = 0;
  *&v26[3] = 0;
  v27 = 0;
  v18 = *(v2 + 1);

  v17 = *(v2 + 2);

  *&v28 = sub_1920EF8DC;
  *(&v28 + 1) = 0;
  *v29 = 0;
  *&v29[2] = *v26;
  *&v29[17] = 0;
  v29[25] = v5;
  *&v30[8] = v18;
  *&v30[24] = v17;
  *v30 = v6;
  *&v30[40] = v7;
  v8 = *(a1 + 40);
  v31 = *(a1 + 16);
  v32 = v8;
  v9 = type metadata accessor for ControlWidgetToggleTemplateProvider(0, &v31);
  WitnessTable = swift_getWitnessTable();
  sub_192145D24(&v28, v9, &v31);
  v21 = v33;
  v22 = v34;
  v23 = v35;
  v24 = v36;
  v19 = v31;
  v20 = v32;
  v12 = type metadata accessor for TemplateDescriptorPreference(0, v9, WitnessTable, v11);
  swift_getWitnessTable();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v14(v25, &v19, v12);
  *&v29[16] = v21;
  *v30 = v22;
  *&v30[16] = v23;
  *&v30[32] = v24;
  v28 = v19;
  *v29 = v20;
  v15 = *(v13 + 8);
  v15(&v28, v12);
  v21 = v25[2];
  v22 = v25[3];
  v23 = v25[4];
  v24 = v25[5];
  v19 = v25[0];
  v20 = v25[1];
  v14(a2, &v19, v12);
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v31 = v19;
  v32 = v20;
  return (v15)(&v31, v12);
}

uint64_t static ControlWidgetToggle._controlType.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  return type metadata accessor for ControlWidgetToggle(0, v6);
}

uint64_t ControlWidgetToggle.init<>(isOn:action:label:valueLabel:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12)
{
  *a9 = a1;
  v17 = *(a10 - 8);
  v18 = (*(v17 + 80) + 64) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a7;
  *(v19 + 24) = a8;
  *(v19 + 32) = a10;
  *(v19 + 40) = a11;
  *(v19 + 56) = a12;
  result = (*(v17 + 32))(v19 + v18, a2, a10);
  *(a9 + 40) = sub_1921EE430;
  *(a9 + 48) = v19;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 8) = a5;
  *(a9 + 16) = a6;
  return result;
}

uint64_t sub_1921EE344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X7>, uint64_t *a4@<X8>)
{
  v6 = a1;
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v14 = v6;
  return ControlAction.init<A, B>(_:value:)(v10, &v14, MEMORY[0x1E69E6370], a2, a3, a4);
}

uint64_t ControlWidgetToggle.init<>(isOn:action:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v24 = a8;
  v26 = a3;
  v27 = a4;
  v25 = a1;
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v16);
  v18 = sub_1921EE614();
  v19 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a5;
  *(v20 + 3) = &type metadata for ControlWidgetToggleDefaultLabel;
  *(v20 + 4) = a6;
  *(v20 + 5) = a7;
  v21 = v24;
  *(v20 + 6) = v18;
  *(v20 + 7) = v21;
  (*(v14 + 32))(&v20[v19], v17, a6);
  result = (*(v14 + 8))(a2, a6);
  *a9 = v25;
  *(a9 + 8) = nullsub_1;
  *(a9 + 16) = 0;
  v23 = v27;
  *(a9 + 24) = v26;
  *(a9 + 32) = v23;
  *(a9 + 40) = sub_1921EE430;
  *(a9 + 48) = v20;
  return result;
}

unint64_t sub_1921EE614()
{
  result = qword_1EADF23D0[0];
  if (!qword_1EADF23D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADF23D0);
  }

  return result;
}

uint64_t ControlWidgetToggle<>.init<>(_:isOn:action:valueLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v37 = a7;
  v38 = a8;
  v36 = a5;
  v32 = a4;
  v35 = a10;
  v18 = *(a11 - 8);
  v19 = *(v18 + 64);
  v33 = a12;
  v34 = a13;
  v20 = MEMORY[0x1EEE9AC00](a1);
  v21 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v22, a11, v20);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  *(v23 + 32) = a3;
  *(v23 + 40) = v32;
  v24 = (*(v18 + 80) + 64) & ~*(v18 + 80);
  v25 = swift_allocObject();
  v26 = v35;
  *(v25 + 2) = MEMORY[0x1E6981148];
  *(v25 + 3) = v26;
  v27 = MEMORY[0x1E6981138];
  *(v25 + 4) = a11;
  *(v25 + 5) = v27;
  v28 = v34;
  *(v25 + 6) = v33;
  *(v25 + 7) = v28;
  (*(v18 + 32))(&v25[v24], v21, a11);
  result = (*(v18 + 8))(a6, a11);
  *a9 = v36;
  v30 = v38;
  *(a9 + 8) = v37;
  *(a9 + 16) = v30;
  *(a9 + 24) = sub_1921D1100;
  *(a9 + 32) = v23;
  *(a9 + 40) = sub_1921EE430;
  *(a9 + 48) = v25;
  return result;
}

uint64_t ControlWidgetToggle<>.init<A>(_:isOn:action:valueLabel:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v43 = a4;
  v44 = a5;
  v39 = a1;
  v40 = a3;
  v42 = a2;
  v41 = a12;
  v17 = *(a8 - 8);
  v18 = *(v17 + 64);
  v37 = a11;
  v45 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v38 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24);
  (*(v17 + 16))(v19, a1, a8);
  v25 = (*(v17 + 80) + 64) & ~*(v17 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = a6;
  *(v26 + 3) = a7;
  v27 = a8;
  v36 = a8;
  v28 = v45;
  *(v26 + 4) = a8;
  *(v26 + 5) = v28;
  v29 = v37;
  v30 = v41;
  *(v26 + 6) = v37;
  *(v26 + 7) = v30;
  (*(v17 + 32))(&v26[v25], v19, v27);
  v31 = (*(v21 + 80) + 64) & ~*(v21 + 80);
  v32 = swift_allocObject();
  *(v32 + 2) = MEMORY[0x1E6981148];
  *(v32 + 3) = a6;
  v33 = MEMORY[0x1E6981138];
  *(v32 + 4) = a7;
  *(v32 + 5) = v33;
  *(v32 + 6) = v45;
  *(v32 + 7) = v29;
  (*(v21 + 32))(&v32[v31], v38, a7);
  (*(v21 + 8))(v40, a7);
  result = (*(v17 + 8))(v39, v36);
  *a9 = v42;
  v35 = v44;
  *(a9 + 8) = v43;
  *(a9 + 16) = v35;
  *(a9 + 24) = sub_1921EEBE4;
  *(a9 + 32) = v26;
  *(a9 + 40) = sub_1921EE430;
  *(a9 + 48) = v32;
  return result;
}

uint64_t sub_1921EEB08@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = sub_192226FD0();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t sub_1921EEC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1921EECCC(uint64_t a1, int a2)
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

uint64_t sub_1921EED14(uint64_t result, int a2, int a3)
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

uint64_t sub_1921EED70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1921EEDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = a3;
  v4[33] = v3;
  v4[30] = a1;
  v4[31] = a2;
  sub_192227CC0();
  v4[34] = sub_192227CB0();
  v6 = sub_192227C70();
  v4[35] = v6;
  v4[36] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1921EEE68, v6, v5);
}

uint64_t sub_1921EEE68()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = sub_1921ECA38(v2, (v0 + 16));
  (*(*(v1 - 1) + 16))(v0 + 112, v2, v1, v7);
  v8 = swift_task_alloc();
  *(v0 + 296) = v8;
  *(v0 + 208) = v3;
  *(v0 + 216) = v4;
  *(v0 + 224) = v5;
  *(v0 + 232) = v6;
  v9 = type metadata accessor for ControlWidgetToggleParser(0, v0 + 208);
  *(v0 + 304) = v9;
  *v8 = v0;
  v8[1] = sub_1921EEF8C;
  v10 = *(v0 + 240);
  v11 = *(v0 + 248);

  return sub_1921ECA54(v10, v11, v9);
}

uint64_t sub_1921EEF8C()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = v2[35];
    v4 = v2[36];
    v5 = sub_1921EF134;
  }

  else
  {
    (*(*(v2[38] - 8) + 8))(v2 + 2);
    v3 = v2[35];
    v4 = v2[36];
    v5 = sub_1921EF0D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1921EF0D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1921EF134()
{
  (*(*(*(v0 + 304) - 8) + 8))(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

double sub_1921EF1CC@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;

  return result;
}

__n128 sub_1921EF228(uint64_t a1)
{

  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  result = *(a1 + 25);
  *(v1 + 25) = result;
  return result;
}

uint64_t sub_1921EF268()
{
  v2 = v0[3];
  *(v1 + 48) = v0[2];
  *(v1 + 64) = v2;
  v3 = v0[5];
  *(v1 + 80) = v0[4];
  *(v1 + 96) = v3;
  v4 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v4;
  v5 = swift_task_alloc();
  *(v1 + 112) = v5;
  *v5 = v1;
  v5[1] = sub_1921EF310;

  return sub_1921EEDAC();
}

uint64_t sub_1921EF310(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1921EF410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[3];
  *(v4 + 48) = v3[2];
  *(v4 + 64) = v8;
  v9 = v3[5];
  *(v4 + 80) = v3[4];
  *(v4 + 96) = v9;
  v10 = v3[1];
  *(v4 + 16) = *v3;
  *(v4 + 32) = v10;
  v11 = swift_task_alloc();
  *(v4 + 112) = v11;
  *v11 = v4;
  v11[1] = sub_1921EF4DC;

  return sub_1921EEDCC(a1, a2, a3);
}

uint64_t sub_1921EF4DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t IntentRecommendation.init<A>(intent:description:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a5@<X8>)
{
  v24 = a2;
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  *a5 = v11;
  (*(v8 + 16))(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v12 = a1;
  v13 = sub_192226FD0();
  v15 = v14;
  v17 = v16;
  v19 = sub_192079D80(0xD000000000000014, 0x8000000192243EA0, v13, v14, v16 & 1, v18);
  v21 = v20;
  sub_19207A338(v13, v15, v17 & 1);

  result = (*(v8 + 8))(v24, a3);
  a5[1] = v19;
  a5[2] = v21;
  return result;
}

void IntentRecommendation.init(intent:description:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  v11 = a1;
  v12 = sub_192079D80(0xD000000000000014, 0x8000000192243EA0, a2, a3, a4 & 1, a5);
  v14 = v13;
  sub_19207A338(a2, a3, a4 & 1);

  a6[1] = v12;
  a6[2] = v14;
}

void IntentRecommendation.init(intent:description:)(void *a1@<X0>, void *a6@<X8>)
{
  *a6 = a1;
  v7 = a1;
  v8 = sub_192226FC0();
  v10 = v9;
  v12 = v11;
  v14 = sub_192079D80(0xD000000000000014, 0x8000000192243EA0, v8, v9, v11 & 1, v13);
  v16 = v15;

  sub_19207A338(v8, v10, v12 & 1);

  a6[1] = v14;
  a6[2] = v16;
}

uint64_t sub_1921EF944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1921EF9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1921EFA00()
{
  v1 = (*v0 + 88);
  v2 = (*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 80);
  v5 = (*(v3 + 32))(v4, v3);
  *&v6 = v4;
  *(&v6 + 1) = *v1;
  v18 = v5;
  *&v7 = v3;
  *(&v7 + 1) = *v2;
  v17[1] = v6;
  v17[2] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentRecommendation(255, AssociatedTypeWitness, v9, v10);
  v11 = sub_192227C40();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7F8, &unk_19222E9E0);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_19204301C(sub_1921F5BEC, v17, v11, v12, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v14);

  return v15;
}

void sub_1921EFBA0(void **a1@<X0>, void **a2@<X8>)
{
  v3 = *a1;
  *a2 = *a1;
  sub_1920D89F4();
  v4 = v3;

  v5 = sub_192226FD0();
  v7 = v6;
  v9 = v8;
  v11 = sub_192079D80(0xD000000000000014, 0x8000000192243EA0, v5, v6, v8 & 1, v10);
  v13 = v12;
  sub_19207A338(v5, v7, v9 & 1);

  a2[1] = v11;
  a2[2] = v13;
}

uint64_t sub_1921EFC94(void *a1, id *a2)
{
  v111 = a1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v125 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v127 = &v104 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v104 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v128 = &v104 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v104 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v104 - v18;
  v19 = type metadata accessor for ViewableTimelineEntry(0);
  v119 = *(v19 - 8);
  v122 = v19 - 8;
  v132 = v119;
  MEMORY[0x1EEE9AC00](v19);
  v123 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v124 = &v104 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v116 = &v104 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  MEMORY[0x1EEE9AC00](v131);
  v130 = (&v104 - v25);
  v126 = sub_192225150();
  v129 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v121 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for BundleStub(0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v120 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for TimelineReloadPolicy(0);
  MEMORY[0x1EEE9AC00](v118);
  v110 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = *(v4 + 88);
  v109 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v108 = &v104 - v31;
  v32 = v4;
  v33 = *(v4 + 96);
  v114 = v32;
  v34 = *(v32 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v106 = *(AssociatedTypeWitness - 8);
  v35 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v37 = &v104 - v36;
  (*(v33 + 40))(a2, v34, v33, v35);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
  v39 = *(v132 + 80);
  v40 = (v39 + 32) & ~v39;
  v122 = v119[9];
  v112 = v39;
  v113 = v38;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_19222B480;
  v42 = *(v2 + *(*v2 + 128));
  v43 = v108;
  v105 = v37;
  v42(v37);
  v44 = *(v114 + 104);
  v114 = v40;
  v45 = v117;
  sub_19221A9D4(v43, v117, v44);
  (*(v109 + 8))(v43, v45);
  v46 = qword_1ED74B558;
  v108 = *a2;
  if (v46 != -1)
  {
LABEL_50:
    swift_once();
  }

  v47 = __swift_project_value_buffer(v118, qword_1ED74B570);
  sub_192055544(v47, v110, type metadata accessor for TimelineReloadPolicy);
  type metadata accessor for WidgetViewCollection(0);
  v48 = swift_allocObject();
  v49 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v50 = sub_192224E00();
  (*(*(v50 - 8) + 56))(v48 + v49, 1, 1, v50);
  v51 = [v111 extensionIdentity];
  v52 = v120;
  BundleStub.init(_:)(v51, v120);
  sub_1920E07FC(v52, v48 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  v53 = v121;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v54 = *(v129 + 32);
  v109 = v48;
  v54(v48 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v53, v126);
  v133[0] = v41;

  sub_19209B0C4(v133);

  v55 = v133[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v55;
  *(inited + 24) = 0;
  v57 = v114;
  v119 = MEMORY[0x1E69E7CC0];
  v118 = (MEMORY[0x1E69E7CC0] + v114);
  v59 = v132 + 7;
  v58 = v132[7];
  v60 = v130;
  v129 = *(v131 + 32);
  v131 = v58;
  v58(v130 + v129, 1, 1, v19);
  *v60 = inited;
  v60[1] = sub_1920DA3A8;
  v60[2] = 0;
  v126 = v55;
  v120 = (v55 + v57);
  v121 = inited;
  v132 = v59;
  v41 = (v59 - 1);

  v117 = 0;
  v61 = 0;
  v62 = v125;
  while (2)
  {
    (v131)(v16, 1, 1, v19);
    while (1)
    {
      v63 = *(v126 + 16);
      if (v61 == v63)
      {
        v64 = 1;
        v66 = v127;
        v65 = v128;
      }

      else
      {
        v66 = v127;
        v65 = v128;
        if (v61 >= v63)
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        sub_192055544(&v120[v61 * v122], v128, type metadata accessor for ViewableTimelineEntry);
        v64 = 0;
        *(v121 + 3) = ++v61;
      }

      (v131)(v65, v64, 1, v19);
      v67 = &unk_19222A7D0;
      sub_192033970(v16, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D8654(v65, v16);
      sub_1920D86C4(v16, v11);
      v68 = *v41;
      if ((*v41)(v11, 1, v19) == 1)
      {
        v71 = v11;
        goto LABEL_16;
      }

      sub_192033970(v11, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D86C4(v16, v66);
      if (v68(v66, 1, v19) == 1)
      {
        v71 = v66;
        goto LABEL_16;
      }

      v67 = v124;
      sub_1920E07FC(v66, v124, type metadata accessor for ViewableTimelineEntry);
      sub_1920D86C4(v130 + v129, v62);
      if (v68(v62, 1, v19) == 1)
      {
        break;
      }

      v69 = v123;
      sub_1920E07FC(v62, v123, type metadata accessor for ViewableTimelineEntry);
      v70 = sub_192225120();
      sub_192046F48(v69, type metadata accessor for ViewableTimelineEntry);
      v62 = v125;
      sub_192046F48(v67, type metadata accessor for ViewableTimelineEntry);
      if ((v70 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_192046F48(v67, type metadata accessor for ViewableTimelineEntry);
    v71 = v62;
LABEL_16:
    sub_192033970(v71, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_17:
    sub_19209B16C(v16, v130 + v129);
    v72 = v115;
    sub_1920D8654(v16, v115);
    if (v68(v72, 1, v19) != 1)
    {
      sub_1920E07FC(v72, v116, type metadata accessor for ViewableTimelineEntry);
      v73 = v122;
      if (v117)
      {
        v74 = v119;
        v75 = v117 - 1;
        if (__OFSUB__(v117, 1))
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      v76 = v119[3];
      if (((v76 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_47;
      }

      v77 = v76 & 0xFFFFFFFFFFFFFFFELL;
      if (v77 <= 1)
      {
        v78 = 1;
      }

      else
      {
        v78 = v77;
      }

      v79 = v114;
      v74 = swift_allocObject();
      v80 = _swift_stdlib_malloc_size(v74);
      if (!v73)
      {
        goto LABEL_48;
      }

      if (v80 - v79 == 0x8000000000000000 && v73 == -1)
      {
        goto LABEL_49;
      }

      v82 = v73;
      v83 = (v80 - v79) / v73;
      v74[2] = v78;
      v74[3] = 2 * v83;
      v84 = v74 + v79;
      v85 = v119;
      v86 = v119[3] >> 1;
      v87 = v86 * v82;
      if (!v119[2])
      {
LABEL_39:
        v118 = &v84[v87];
        v88 = (v83 & 0x7FFFFFFFFFFFFFFFLL) - v86;

        v89 = v88;
        v62 = v125;
        v73 = v122;
        v90 = __OFSUB__(v89, 1);
        v75 = v89 - 1;
        if (v90)
        {
          goto LABEL_46;
        }

LABEL_40:
        v117 = v75;
        v91 = v118;
        sub_1920E07FC(v116, v118, type metadata accessor for ViewableTimelineEntry);
        v118 = (v91 + v73);
        v119 = v74;
        continue;
      }

      if (v74 < v119 || v84 >= v119 + v79 + v87)
      {
        v118 = (v119[3] >> 1);
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v74 == v119)
        {
LABEL_38:
          v85[2] = 0;
          goto LABEL_39;
        }

        v118 = (v119[3] >> 1);
        swift_arrayInitWithTakeBackToFront();
      }

      v86 = v118;
      v85 = v119;
      goto LABEL_38;
    }

    break;
  }

  sub_192033970(v130, &qword_1EADEEA00, &unk_19222B660);
  sub_192033970(v72, &qword_1EADEE9F8, &unk_19222A7D0);
  v92 = v119;
  v93 = v119[3];
  v94 = v111;
  v95 = v110;
  if (v93 < 2)
  {
    goto LABEL_44;
  }

  v96 = v93 >> 1;
  v90 = __OFSUB__(v96, v117);
  v97 = v96 - v117;
  if (!v90)
  {
    v119[2] = v97;
LABEL_44:
    v98 = v92;
    swift_setDeallocating();

    v99 = v109;
    *(v109 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v98;
    *(v99 + 16) = v108;
    *(v99 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v94;
    sub_192055544(v95, v99 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
    swift_beginAccess();
    v100 = byte_1ED74B5B8;
    v101 = v94;
    sub_192046F48(v95, type metadata accessor for TimelineReloadPolicy);
    (*(v106 + 8))(v105, AssociatedTypeWitness);
    *(v99 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v100;
    *(v99 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
    return v99;
  }

  __break(1u);

  v103 = v109;
  sub_192046F48(v67 + v109, type metadata accessor for BundleStub);
  sub_192033970(v103 + *(v68 + 231), &qword_1EADEE9F0, &qword_19222A7A0);
  (*(v129 + 8))(v103 + *v61, &qword_1EADEE9F8);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1921F0B9C(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v51 = a2;
  v9 = *v4;
  v10 = sub_192227710();
  v57 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_192227790();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TimelineProviderContext(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  *&v16 = MEMORY[0x1EEE9AC00](v13 - 8).n128_u64[0];
  v17 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  v18 = [a1 intentReference];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 _typedIntent];

    if (v20)
    {
      v49 = v10;
      v50 = a3;
      v21 = v9[12];
      v22 = v9[10];
      swift_getAssociatedTypeWitness();
      v23 = swift_dynamicCastUnknownClass();
      if (v23)
      {
        v24 = v23;
        sub_19218B088();
        v47 = v21;
        v48 = sub_192228080();
        sub_192055544(v51, &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineProviderContext);
        v25 = (*(v14 + 80) + 64) & ~*(v14 + 80);
        v26 = (v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
        v51 = a4;
        v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
        v28 = swift_allocObject();
        v28[2] = v22;
        v29 = v47;
        v28[3] = v9[11];
        v28[4] = v29;
        v28[5] = v9[13];
        v28[6] = v5;
        v28[7] = v24;
        sub_1920E07FC(v17, v28 + v25, type metadata accessor for TimelineProviderContext);
        v30 = (v28 + v26);
        v31 = v51;
        *v30 = v50;
        v30[1] = v31;
        v32 = v52;
        *(v28 + v27) = v52;
        aBlock[4] = sub_1921F5948;
        aBlock[5] = v28;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_19202AB80;
        aBlock[3] = &block_descriptor_9;
        v33 = _Block_copy(aBlock);

        v34 = v20;

        v35 = v32;

        v36 = v53;
        sub_192227740();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1921F59E8(&qword_1ED74C620, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
        sub_19218B12C();
        v37 = v55;
        v38 = v49;
        sub_1922282F0();
        v39 = v48;
        MEMORY[0x193B0B040](0, v36, v37, v33);
        _Block_release(v33);

        (*(v57 + 8))(v37, v38);
        return (*(v54 + 8))(v36, v56);
      }

      a3 = v50;
    }
  }

  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v41 = sub_1922258B0();
  __swift_project_value_buffer(v41, qword_1ED74CCC8);
  v42 = sub_192225890();
  v43 = sub_192227F90();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock[0] = v45;
    *v44 = 136446210;
    *(v44 + 4) = sub_19202B8CC(0xD00000000000001ELL, 0x800000019224E970, aBlock);
    _os_log_impl(&dword_192028000, v42, v43, "No intent in %{public}s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x193B0C7F0](v45, -1, -1);
    MEMORY[0x193B0C7F0](v44, -1, -1);
  }

  return a3(0);
}

double sub_1921F1174(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v23 = a4;
  v25 = a2;
  v10 = *a1;
  v11 = type metadata accessor for TimelineProviderContext(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v10[15];
  sub_192055544(a3, v14, type metadata accessor for TimelineProviderContext);
  v15 = (*(v12 + 80) + 80) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = v10[10];
  v16[2] = v17;
  v16[3] = v10[11];
  v18 = v10[12];
  v16[4] = v18;
  v16[5] = v10[13];
  v16[6] = a1;
  v16[7] = v23;
  v16[8] = a5;
  v16[9] = a6;
  sub_1920E07FC(v14, v16 + v15, type metadata accessor for TimelineProviderContext);
  v19 = *(v18 + 48);

  v20 = a6;
  v19(v25, a3, sub_1921F5A30, v16, v17, v18);

  return result;
}

uint64_t sub_1921F1388(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v47 = a4;
  v48 = a5;
  v46 = a3;
  v9 = *a2;
  v51 = sub_192227710();
  v54 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_192227790();
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TimelineProviderContext(0);
  v44 = *(v13 - 8);
  v14 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v39 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v9;
  v43 = a2;
  v41 = *(v9 + 96);
  v40 = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v38 - v18;
  sub_19218B088();
  v45 = sub_192228080();
  (*(v16 + 16))(v19, a1, AssociatedTypeWitness);
  sub_192055544(a6, &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineProviderContext);
  v20 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v21 = (v17 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v44 + 80) + v23 + 8) & ~*(v44 + 80);
  v25 = swift_allocObject();
  v26 = v42;
  v27 = v43;
  *(v25 + 2) = v40;
  *(v25 + 3) = *(v26 + 88);
  *(v25 + 4) = v41;
  *(v25 + 5) = *(v26 + 104);
  (*(v16 + 32))(&v25[v20], v19, AssociatedTypeWitness);
  *&v25[v21] = v27;
  v28 = &v25[v22];
  v29 = v47;
  *v28 = v46;
  v28[1] = v29;
  v30 = v48;
  *&v25[v23] = v48;
  sub_1920E07FC(v39, &v25[v24], type metadata accessor for TimelineProviderContext);
  aBlock[4] = sub_1921F5AD4;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19202AB80;
  aBlock[3] = &block_descriptor_49;
  v31 = _Block_copy(aBlock);

  v32 = v30;

  v33 = v49;
  sub_192227740();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1921F59E8(&qword_1ED74C620, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19218B12C();
  v35 = v50;
  v34 = v51;
  sub_1922282F0();
  v36 = v45;
  MEMORY[0x193B0B040](0, v33, v35, v31);
  _Block_release(v31);

  (*(v54 + 8))(v35, v34);
  return (*(v52 + 8))(v33, v53);
}

void sub_1921F18C0(void *a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t a4, void *a5, id *a6)
{
  v124 = a6;
  v115 = a5;
  v108[1] = a4;
  v109 = a3;
  v123 = a1;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v128 = v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v129 = v108 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v108 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v131 = v108 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v108 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v119 = v108 - v21;
  v22 = type metadata accessor for ViewableTimelineEntry(0);
  v23 = *(v22 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v127 = v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v108 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v121 = v108 - v29;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  MEMORY[0x1EEE9AC00](v132);
  v133 = (v108 - v30);
  v31 = type metadata accessor for BundleStub(0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v125 = v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for TimelineReloadPolicy(0);
  MEMORY[0x1EEE9AC00](v120);
  v114 = v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = *(v7 + 88);
  MEMORY[0x1EEE9AC00](v34);
  v112 = v108 - v35;
  v134 = sub_192225150();
  v130 = *(v134 - 1);
  MEMORY[0x1EEE9AC00](v134);
  v37 = v108 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
  v39 = *(v23 + 72);
  v135 = v23;
  v40 = *(v23 + 80);
  v41 = (v40 + 32) & ~v40;
  v126 = v39;
  v116 = v40;
  v117 = v38;
  v42 = swift_allocObject();
  v110 = v7;
  *(v42 + 16) = xmmword_19222B480;
  v118 = v41;
  v122 = v42;
  v111 = v42 + v41;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = *(AssociatedConformanceWitness + 8);
  v45 = swift_checkMetadataState();
  v46 = v123;
  v44(v45, AssociatedConformanceWitness);
  (*(a2 + *(*a2 + 128)))(v46);
  v47 = sub_192227570();
  v48 = v22[7];
  v49 = type metadata accessor for WidgetViewMetadata(0);
  v50 = v111;
  (*(*(v49 - 8) + 56))(v111 + v48, 1, 1, v49);
  v51 = *(v130 + 32);
  v123 = v37;
  (v51)(v50, v37, v134);
  *(v50 + v22[5]) = v47;
  v52 = v50 + v22[6];
  *v52 = 0;
  *(v52 + 8) = 0;
  *(v52 + 16) = 1;
  *(v50 + v22[8]) = xmmword_19222A790;
  v53 = qword_1ED74B558;
  v112 = *v124;
  if (v53 != -1)
  {
LABEL_50:
    swift_once();
  }

  v54 = __swift_project_value_buffer(v120, qword_1ED74B570);
  sub_192055544(v54, v114, type metadata accessor for TimelineReloadPolicy);
  type metadata accessor for WidgetViewCollection(0);
  v55 = swift_allocObject();
  v56 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v57 = sub_192224E00();
  (*(*(v57 - 8) + 56))(v55 + v56, 1, 1, v57);
  v58 = [v115 extensionIdentity];
  v59 = v125;
  BundleStub.init(_:)(v58, v125);
  sub_1920E07FC(v59, v55 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  v60 = v123;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v113 = v55;
  (v51)(v55 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v60, v134);
  v136[0] = v122;

  sub_19209B0C4(v136);

  v61 = v136[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v61;
  *(inited + 24) = 0;
  v63 = v118;
  v123 = MEMORY[0x1E69E7CC0];
  v120 = MEMORY[0x1E69E7CC0] + v118;
  v64 = v133;
  v66 = v135 + 56;
  v65 = *(v135 + 56);
  v132 = *(v132 + 32);
  v134 = v65;
  v65(v133 + v132, 1, 1, v22);
  *v64 = inited;
  v64[1] = sub_1920DA3A8;
  v64[2] = 0;
  v130 = v61;
  v124 = (v61 + v63);
  v125 = inited;
  v135 = v66;
  v51 = (v66 - 8);

  v122 = 0;
  v67 = 0;
  v68 = v128;
  while (2)
  {
    v134(v19, 1, 1, v22);
    while (1)
    {
      v69 = *(v130 + 16);
      if (v67 == v69)
      {
        v70 = 1;
        v71 = v131;
      }

      else
      {
        v71 = v131;
        if (v67 >= v69)
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        sub_192055544(v124 + v67 * v126, v131, type metadata accessor for ViewableTimelineEntry);
        v70 = 0;
        *(v125 + 3) = ++v67;
      }

      v134(v71, v70, 1, v22);
      sub_192033970(v19, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D8654(v71, v19);
      sub_1920D86C4(v19, v14);
      v72 = *v51;
      if ((*v51)(v14, 1, v22) == 1)
      {
        v76 = v14;
        goto LABEL_16;
      }

      sub_192033970(v14, &qword_1EADEE9F8, &unk_19222A7D0);
      v73 = v129;
      sub_1920D86C4(v19, v129);
      if (v72(v73, 1, v22) == 1)
      {
        v76 = v73;
        goto LABEL_16;
      }

      sub_1920E07FC(v73, v27, type metadata accessor for ViewableTimelineEntry);
      sub_1920D86C4(v133 + v132, v68);
      if (v72(v68, 1, v22) == 1)
      {
        break;
      }

      v74 = v127;
      sub_1920E07FC(v68, v127, type metadata accessor for ViewableTimelineEntry);
      v75 = sub_192225120();
      sub_192046F48(v74, type metadata accessor for ViewableTimelineEntry);
      v68 = v128;
      sub_192046F48(v27, type metadata accessor for ViewableTimelineEntry);
      if ((v75 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_192046F48(v27, type metadata accessor for ViewableTimelineEntry);
    v76 = v68;
LABEL_16:
    sub_192033970(v76, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_17:
    sub_19209B16C(v19, v133 + v132);
    v77 = v119;
    sub_1920D8654(v19, v119);
    if (v72(v77, 1, v22) != 1)
    {
      sub_1920E07FC(v77, v121, type metadata accessor for ViewableTimelineEntry);
      v78 = v120;
      if (v122)
      {
        v79 = v123;
        v80 = v122 - 1;
        if (__OFSUB__(v122, 1))
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      v81 = v123[3];
      if (((v81 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_47;
      }

      v82 = v81 & 0xFFFFFFFFFFFFFFFELL;
      if (v82 <= 1)
      {
        v83 = 1;
      }

      else
      {
        v83 = v82;
      }

      v84 = v126;
      v85 = v118;
      v79 = swift_allocObject();
      v86 = _swift_stdlib_malloc_size(v79);
      if (!v84)
      {
        goto LABEL_48;
      }

      if (v86 - v85 == 0x8000000000000000 && v84 == -1)
      {
        goto LABEL_49;
      }

      v88 = v84;
      v89 = (v86 - v85) / v84;
      v79[2] = v83;
      v79[3] = 2 * v89;
      v90 = v79 + v85;
      v91 = v123;
      v92 = v123[3] >> 1;
      v93 = v92 * v88;
      if (!v123[2])
      {
LABEL_39:
        v78 = v90 + v93;
        v94 = (v89 & 0x7FFFFFFFFFFFFFFFLL) - v92;

        v95 = v94;
        v68 = v128;
        v96 = __OFSUB__(v95, 1);
        v80 = v95 - 1;
        if (v96)
        {
          goto LABEL_46;
        }

LABEL_40:
        v122 = v80;
        sub_1920E07FC(v121, v78, type metadata accessor for ViewableTimelineEntry);
        v120 = v78 + v126;
        v123 = v79;
        continue;
      }

      if (v79 < v123 || v90 >= v123 + v85 + v93)
      {
        v122 = v123[3] >> 1;
        v120 = v79 + v85;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v79 == v123)
        {
LABEL_38:
          v91[2] = 0;
          goto LABEL_39;
        }

        v122 = v123[3] >> 1;
        v120 = v79 + v85;
        swift_arrayInitWithTakeBackToFront();
      }

      v92 = v122;
      v90 = v120;
      v91 = v123;
      goto LABEL_38;
    }

    break;
  }

  sub_192033970(v133, &qword_1EADEEA00, &unk_19222B660);
  sub_192033970(v77, &qword_1EADEE9F8, &unk_19222A7D0);
  v97 = v123;
  v98 = v123[3];
  v99 = v115;
  v100 = v114;
  if (v98 < 2)
  {
    goto LABEL_44;
  }

  v101 = v98 >> 1;
  v96 = __OFSUB__(v101, v122);
  v102 = v101 - v122;
  if (!v96)
  {
    v123[2] = v102;
LABEL_44:
    v103 = v97;
    swift_setDeallocating();

    v104 = v113;
    *(v113 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v103;
    *(v104 + 16) = v112;
    *(v104 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v99;
    sub_192055544(v100, v104 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
    swift_beginAccess();
    v105 = byte_1ED74B5B8;
    v106 = v99;
    sub_192046F48(v100, type metadata accessor for TimelineReloadPolicy);
    *(v104 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v105;
    *(v104 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
    v109(v104);

    return;
  }

  __break(1u);

  v107 = v113;
  sub_192046F48(v113 + v67, type metadata accessor for BundleStub);
  sub_192033970(v107 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange, &qword_1EADEE9F0, &qword_19222A7A0);
  (*(v130 + 8))(v107 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, &qword_1EADEE9F8);
  swift_deallocPartialClassInstance();
  __break(1u);
}

double sub_1921F27C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v39 = a4;
  v40 = a5;
  v38 = a3;
  v9 = *a2;
  v10 = type metadata accessor for TimelineProviderContext(0);
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v9;
  v35 = *(v9 + 96);
  v34 = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for Timeline(0, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v33 - v19;
  (*(v16 + 16))(&v33 - v19, a1, v15, v18);
  sub_192055544(a6, &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineProviderContext);
  v21 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v37 + 80) + v24 + 8) & ~*(v37 + 80);
  v26 = swift_allocObject();
  v27 = v36;
  *(v26 + 2) = v34;
  *(v26 + 3) = *(v27 + 88);
  *(v26 + 4) = v35;
  *(v26 + 5) = *(v27 + 104);
  (*(v16 + 32))(&v26[v21], v20, v15);
  *&v26[v22] = a2;
  v28 = &v26[v23];
  v29 = v39;
  *v28 = v38;
  v28[1] = v29;
  v30 = v40;
  *&v26[v24] = v40;
  sub_1920E07FC(v33, &v26[v25], type metadata accessor for TimelineProviderContext);

  v31 = v30;
  sub_1920873B4(sub_1921F57D8, v26);

  return result;
}

uint64_t sub_1921F2AF0(void *a1, void *a2, void (*a3)(uint64_t), uint64_t a4, void *a5, void **a6)
{
  v124 = a6;
  v106 = a5;
  v103 = a4;
  v104 = a3;
  v123 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v119 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v126 = &v99 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v99 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v121 = (&v99 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v99 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v109 = (&v99 - v20);
  v21 = type metadata accessor for ViewableTimelineEntry(0);
  v116 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v117 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v125 = (&v99 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v110 = &v99 - v26;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  MEMORY[0x1EEE9AC00](v127);
  v105 = &v99 - v27;
  v122 = sub_192225150();
  v120 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v118 = (&v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for BundleStub(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v115 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TimelineReloadPolicy(0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v99 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = type metadata accessor for Timeline(0, AssociatedTypeWitness, AssociatedConformanceWitness, v35);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = (&v99 - v38);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7E8, &qword_19222E9C0);
  v41 = v40 - 8;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = (&v99 - v43);
  (*(v37 + 16))(v39, v123, v36, v42);
  sub_192203450(v39, sub_1921F592C, v114, v21, AssociatedTypeWitness, &protocol witness table for ViewableTimelineEntry, AssociatedConformanceWitness, v44);
  v123 = 0;
  v45 = *v124;
  v46 = *v44;
  v47 = *(v41 + 44);
  v101 = v44;
  v102 = v33;
  sub_192055544(v44 + v47, v33, type metadata accessor for TimelineReloadPolicy);
  v124 = type metadata accessor for WidgetViewCollection(0);
  v48 = swift_allocObject();
  v49 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v50 = sub_192224E00();
  (*(*(v50 - 8) + 56))(v48 + v49, 1, 1, v50);
  v99 = v45;
  v51 = [v106 extensionIdentity];
  v52 = v115;
  BundleStub.init(_:)(v51, v115);
  v53 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle;
  sub_1920E07FC(v52, v48 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  v54 = v118;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v55 = &OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate;
  v56 = v120;
  v57 = *(v120 + 32);
  v100 = v48;
  v58 = v122;
  v57(v48 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v54, v122);
  v128[0] = v46;

  v59 = v123;
  sub_19209B0C4(v128);
  if (v59)
  {
    goto LABEL_51;
  }

  v60 = v128[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v60;
  *(inited + 24) = 0;
  v53 = v116 + 56;
  v62 = *(v116 + 56);
  v108 = *(v116 + 80);
  v63 = (v108 + 32) & ~v108;
  AssociatedConformanceWitness = MEMORY[0x1E69E7CC0];
  v112 = MEMORY[0x1E69E7CC0] + v63;
  v122 = *(v127 + 32);
  v55 = v105;
  v123 = v62;
  (v62)(&v105[v122], 1, 1, v21);
  *v55 = inited;
  *(v55 + 8) = sub_1920DA3A8;
  *(v55 + 16) = 0;
  v120 = v60;
  v107 = v63;
  v114 = (v60 + v63);
  v124 = v53;
  v64 = (v53 - 8);
  v115 = inited;

  v111 = 0;
  v127 = 0;
  v56 = v119;
  v65 = v55;
  v118 = (v53 - 8);
  while (2)
  {
    (v123)(v18, 1, 1, v21);
    while (1)
    {
      v66 = *(v120 + 16);
      if (v127 == v66)
      {
        v67 = 1;
        v59 = v121;
      }

      else
      {
        v59 = v121;
        if (v127 >= v66)
        {
          __break(1u);
          goto LABEL_46;
        }

        v68 = v127;
        sub_192055544(v114 + *(v116 + 72) * v127, v121, type metadata accessor for ViewableTimelineEntry);
        v67 = 0;
        v127 = v68 + 1;
        *(v115 + 3) = v68 + 1;
      }

      (v123)(v59, v67, 1, v21);
      v58 = &qword_1EADEE9F8;
      v55 = &unk_19222A7D0;
      sub_192033970(v18, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D8654(v59, v18);
      sub_1920D86C4(v18, v13);
      v53 = *v64;
      if ((*v64)(v13, 1, v21) == 1)
      {
        break;
      }

      sub_192033970(v13, &qword_1EADEE9F8, &unk_19222A7D0);
      v69 = v126;
      sub_1920D86C4(v18, v126);
      if ((v53)(v69, 1, v21) == 1)
      {
        v71 = v126;
        goto LABEL_16;
      }

      sub_1920E07FC(v126, v125, type metadata accessor for ViewableTimelineEntry);
      sub_1920D86C4(v65 + v122, v56);
      if ((v53)(v56, 1, v21) == 1)
      {
        sub_192046F48(v125, type metadata accessor for ViewableTimelineEntry);
        v71 = v56;
        goto LABEL_16;
      }

      v58 = v125;
      v55 = v117;
      sub_1920E07FC(v56, v117, type metadata accessor for ViewableTimelineEntry);
      v70 = sub_192225120();
      v64 = v118;
      sub_192046F48(v55, type metadata accessor for ViewableTimelineEntry);
      v56 = v119;
      sub_192046F48(v58, type metadata accessor for ViewableTimelineEntry);
      if ((v70 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v71 = v13;
LABEL_16:
    sub_192033970(v71, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_17:
    sub_19209B16C(v18, v65 + v122);
    v59 = v109;
    sub_1920D8654(v18, v109);
    if ((v53)(v59, 1, v21) != 1)
    {
      sub_1920E07FC(v59, v110, type metadata accessor for ViewableTimelineEntry);
      v53 = v116;
      if (v111)
      {
        v59 = AssociatedConformanceWitness;
        v72 = v111 - 1;
        if (!__OFSUB__(v111, 1))
        {
          goto LABEL_40;
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v73 = *(AssociatedConformanceWitness + 24);
      if (((v73 >> 1) + 0x4000000000000000) < 0)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v74 = v73 & 0xFFFFFFFFFFFFFFFELL;
      if (v74 <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = v74;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
      v53 = *(v53 + 72);
      v75 = v107;
      v59 = swift_allocObject();
      v76 = _swift_stdlib_malloc_size(v59);
      if (!v53)
      {
        goto LABEL_48;
      }

      v77 = v76 - v75;
      if (v76 - v75 == 0x8000000000000000 && v53 == -1)
      {
        goto LABEL_49;
      }

      v79 = v75;
      v55 = v77 / v53;
      v59[2] = v56;
      v59[3] = 2 * (v77 / v53);
      v58 = (v59 + v75);
      v80 = AssociatedConformanceWitness;
      v81 = *(AssociatedConformanceWitness + 24) >> 1;
      v82 = v81 * v53;
      v64 = v118;
      v56 = v119;
      if (!*(AssociatedConformanceWitness + 16))
      {
LABEL_39:
        v112 = v58 + v82;
        v83 = (v55 & 0x7FFFFFFFFFFFFFFFLL) - v81;

        v84 = v83;
        v53 = v116;
        v85 = __OFSUB__(v84, 1);
        v72 = v84 - 1;
        if (!v85)
        {
LABEL_40:
          v111 = v72;
          v86 = v112;
          sub_1920E07FC(v110, v112, type metadata accessor for ViewableTimelineEntry);
          v55 = v86 + *(v53 + 72);
          v112 = v55;
          AssociatedConformanceWitness = v59;
          continue;
        }

        goto LABEL_46;
      }

      if (v59 < AssociatedConformanceWitness || v58 >= AssociatedConformanceWitness + v79 + v82)
      {
        v112 = *(AssociatedConformanceWitness + 24) >> 1;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v59 == AssociatedConformanceWitness)
        {
LABEL_38:
          *(v80 + 16) = 0;
          goto LABEL_39;
        }

        v112 = *(AssociatedConformanceWitness + 24) >> 1;
        swift_arrayInitWithTakeBackToFront();
      }

      v81 = v112;
      v80 = AssociatedConformanceWitness;
      goto LABEL_38;
    }

    break;
  }

  sub_192033970(v65, &qword_1EADEEA00, &unk_19222B660);
  sub_192033970(v59, &qword_1EADEE9F8, &unk_19222A7D0);
  v87 = AssociatedConformanceWitness;
  v88 = *(AssociatedConformanceWitness + 24);
  if (v88 < 2)
  {
LABEL_44:
    v91 = v87;
    swift_setDeallocating();

    v92 = v100;
    *(v100 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v91;
    *(v92 + 16) = v99;
    v93 = v106;
    *(v92 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v106;
    v94 = v102;
    sub_192055544(v102, v92 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
    swift_beginAccess();
    v95 = byte_1ED74B5B8;
    v96 = v93;
    sub_192046F48(v94, type metadata accessor for TimelineReloadPolicy);
    *(v92 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v95;
    *(v92 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
    v104(v92);

    return sub_192033970(v101, &qword_1EADEF7E8, &qword_19222E9C0);
  }

  v89 = v88 >> 1;
  v85 = __OFSUB__(v89, v111);
  v90 = v89 - v111;
  if (!v85)
  {
    *(AssociatedConformanceWitness + 16) = v90;
    goto LABEL_44;
  }

LABEL_50:
  __break(1u);
LABEL_51:

  v98 = v100;
  sub_192046F48(v100 + v53, type metadata accessor for BundleStub);
  sub_192033970(v98 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange, &qword_1EADEE9F0, &qword_19222A7A0);
  (*(v56 + 8))(v98 + *v55, v58);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

double sub_1921F3934(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v42 = a7;
  v43 = a4;
  v34 = a5;
  v37 = a3;
  v38 = a2;
  v39 = a1;
  v10 = *v7;
  v11 = type metadata accessor for TimelineProviderContext(0);
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v36 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a6;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v35 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v32 - v17;
  v41 = &v32 - v17;
  v19 = sub_192227CF0();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v13 + 16))(&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v37, a6);
  sub_192055544(v38, &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineProviderContext);
  sub_192227CC0();

  v39 = v39;

  v20 = sub_192227CB0();
  v21 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v40 + 80) + v23 + 8) & ~*(v40 + 80);
  v25 = (v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E85E0];
  *(v26 + 2) = v20;
  *(v26 + 3) = v27;
  *(v26 + 4) = v10[10];
  v28 = v33;
  *(v26 + 5) = v10[11];
  *(v26 + 6) = v28;
  *(v26 + 7) = v10[12];
  *(v26 + 8) = v10[13];
  *(v26 + 9) = v42;
  (*(v13 + 32))(&v26[v21], v35);
  *&v26[v22] = v8;
  *&v26[v23] = v39;
  sub_1920E07FC(v36, &v26[v24], type metadata accessor for TimelineProviderContext);
  v29 = &v26[v25];
  v30 = v34;
  *v29 = v43;
  v29[1] = v30;
  sub_19211CA04(0, 0, v41, &unk_192244028, v26);

  return result;
}

uint64_t sub_1921F3CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[43] = v13;
  v8[44] = v14;
  v8[41] = a7;
  v8[42] = a8;
  v8[39] = a5;
  v8[40] = a6;
  v8[38] = a4;
  v8[45] = *a5;
  v8[46] = *(v14 - 8);
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  sub_192227CC0();
  v8[49] = sub_192227CB0();
  v10 = sub_192227C70();
  v8[50] = v10;
  v8[51] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1921F3E04, v10, v9);
}

uint64_t sub_1921F3E04()
{
  v1 = *(*(v0 + 368) + 16);
  v1(*(v0 + 384), *(v0 + 304), *(v0 + 352));
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 200);
    v4 = *(v0 + 208);
    v5 = *(v0 + 216);
    v6 = *(v0 + 224);
    *(v0 + 416) = v3;
    *(v0 + 424) = v6;
    *(v0 + 232) = v2;
    *(v0 + 240) = v3;
    *(v0 + 248) = v4;
    *(v0 + 256) = v5;
    *(v0 + 264) = v6;
    v7 = swift_task_alloc();
    *(v0 + 432) = v7;
    *v7 = v0;
    v7[1] = sub_1920D58D8;
    v9 = *(v0 + 320);
    v8 = *(v0 + 328);

    return sub_1921F4108(v9, v8, v0 + 232);
  }

  else
  {
    v1(*(v0 + 376), *(v0 + 304), *(v0 + 352));
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 152);
      *(v0 + 48) = *(v0 + 136);
      *(v0 + 64) = v11;
      *(v0 + 80) = *(v0 + 168);
      *(v0 + 96) = *(v0 + 184);
      v12 = *(v0 + 120);
      *(v0 + 16) = *(v0 + 104);
      *(v0 + 32) = v12;
      v13 = swift_task_alloc();
      *(v0 + 456) = v13;
      *v13 = v0;
      v13[1] = sub_1920D5ABC;
      v15 = *(v0 + 320);
      v14 = *(v0 + 328);

      return sub_1921F4BC0(v15, v14, v0 + 16);
    }

    else
    {
      v16 = *(v0 + 360);

      *(v0 + 184) = 0;
      *(v0 + 168) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 136) = 0u;
      *(v0 + 120) = 0u;
      *(v0 + 104) = 0u;
      sub_192033970(v0 + 104, &qword_1EADEF7F0, &unk_19222F0D0);
      v17 = *(v16 + 96);
      *(v0 + 272) = *(v16 + 80);
      *(v0 + 288) = v17;
      type metadata accessor for IntentTimelineEntryProvider.Errors(0, v0 + 272);
      swift_getWitnessTable();
      v18 = swift_allocError();
      swift_willThrow();
      v19 = *(v0 + 336);
      v20 = v18;
      v19(v18, 1);

      v21 = *(v0 + 8);

      return v21();
    }
  }
}

uint64_t sub_1921F4108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 80) = a1;
  *(v4 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7E8, &qword_19222E9C0);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = type metadata accessor for TimelineReloadPolicy(0);
  *(v4 + 128) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v4 + 136) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v4 + 144) = AssociatedConformanceWitness;
  v9 = type metadata accessor for Timeline(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  *(v4 + 152) = v9;
  *(v4 + 160) = *(v9 - 8);
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = *a3;
  *(v4 + 272) = *(a3 + 16);
  *(v4 + 200) = *(a3 + 24);
  sub_192227CC0();
  *(v4 + 216) = sub_192227CB0();
  v11 = sub_192227C70();
  *(v4 + 224) = v11;
  *(v4 + 232) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1921F4324, v11, v10);
}

uint64_t sub_1921F4324()
{
  if (qword_1ED74AF20 != -1)
  {
    swift_once();
  }

  v1 = sub_1922258B0();
  *(v0 + 240) = __swift_project_value_buffer(v1, qword_1ED74CBA8);
  v2 = sub_192225890();
  v3 = sub_192227FB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_192028000, v2, v3, "Preview entries request being handled by IntentConfiguration", v4, 2u);
    MEMORY[0x193B0C7F0](v4, -1, -1);
  }

  v5 = *(v0 + 272);
  v10 = *(v0 + 184);
  v11 = *(v0 + 200);

  *(v0 + 16) = v10;
  *(v0 + 32) = v5;
  *(v0 + 40) = v11;
  v6 = swift_task_alloc();
  *(v0 + 248) = v6;
  *v6 = v0;
  v6[1] = sub_1921F44A0;
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);

  return TimelineEntryPreviewSource.unwrapTimeline<A>(for:)(v7, v7, v8);
}

uint64_t sub_1921F44A0(uint64_t a1)
{
  v3 = *v2;
  v3[32] = a1;
  v3[33] = v1;

  v4 = v3[28];
  v5 = v3[29];
  if (v1)
  {
    v6 = sub_1920D66BC;
  }

  else
  {
    v6 = sub_1921F45B4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1921F45B4()
{

  v1 = sub_192225890();
  v2 = sub_192227FB0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134349056;
    *(v3 + 4) = sub_192227C10();

    _os_log_impl(&dword_192028000, v1, v2, "IntentConfiguration resolved entry source to have %{public}ld entries", v3, 0xCu);
    MEMORY[0x193B0C7F0](v3, -1, -1);
  }

  else
  {
  }

  if (qword_1ED74B558 != -1)
  {
    swift_once();
  }

  v4 = v0[32];
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[19];
  v8 = v0[20];
  v29 = v8;
  v9 = v0[17];
  v10 = v0[18];
  v11 = v0[16];
  v12 = v0[14];
  v27 = v0[13];
  v25 = v0[12];
  v26 = v0[11];
  v28 = v0[10];
  v13 = __swift_project_value_buffer(v0[15], qword_1ED74B570);
  sub_192055544(v13, v11, type metadata accessor for TimelineReloadPolicy);
  Timeline.init(entries:policy:)(v4, v11, v9, v10, v6);
  (*(v8 + 16))(v5, v6, v7);
  v14 = type metadata accessor for ViewableTimelineEntry(0);
  sub_192203450(v5, sub_1921F5C30, v25, v14, v9, &protocol witness table for ViewableTimelineEntry, v10, v12);
  v15 = *v26;
  v16 = *v12;
  sub_192055544(v12 + *(v27 + 36), v11, type metadata accessor for TimelineReloadPolicy);
  type metadata accessor for WidgetViewCollection(0);
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v19 = sub_192224E00();
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  v20 = v15;

  v21 = [v28 extensionIdentity];
  BundleStub.init(_:)(v21, (v17 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle));
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  *(v17 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v16;
  *(v17 + 16) = v20;
  *(v17 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v28;
  sub_192055544(v11, v17 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
  swift_beginAccess();
  LOBYTE(v20) = byte_1ED74B5B8;
  v22 = v28;
  sub_192046F48(v11, type metadata accessor for TimelineReloadPolicy);
  sub_192033970(v12, &qword_1EADEF7E8, &qword_19222E9C0);
  (*(v29 + 8))(v6, v7);
  *(v17 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v20;
  *(v17 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];

  v23 = v0[1];

  return v23(v17);
}

double sub_1921F49CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a3;
  v14 = *(*a2 + 88);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, a1, AssociatedTypeWitness, v8);
  (*(a2 + *(*a2 + 128)))(a1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_19221A6E4(v10, v6, AssociatedTypeWitness, v14, AssociatedConformanceWitness, v15);
}

uint64_t sub_1921F4BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *v3;
  v4[7] = *v3;
  v6 = *(v5 + 80);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = sub_192227CC0();
  v4[12] = sub_192227CB0();
  v8 = sub_192227C70();
  v4[13] = v8;
  v4[14] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1921F4CF4, v8, v7);
}

uint64_t sub_1921F4CF4()
{
  if (qword_1ED74AF20 != -1)
  {
    swift_once();
  }

  v1 = sub_1922258B0();
  __swift_project_value_buffer(v1, qword_1ED74CBA8);
  v2 = sub_192225890();
  v3 = sub_192227FB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_192028000, v2, v3, "Preview provider request being handled by IntentConfiguration", v4, 2u);
    MEMORY[0x193B0C7F0](v4, -1, -1);
  }

  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];

  v8 = TimelineProviderPreviewSource.unwrapContent<A>(for:)(v5, v6, v6, *(v7 + 96));
  v0[15] = v8;
  v9 = v8;
  v10 = v0[10];
  v11 = v0[6];
  v13 = v0[3];
  v12 = v0[4];
  v14 = sub_192227CB0();
  v0[16] = v14;
  v15 = swift_task_alloc();
  v0[17] = v15;
  v15[2] = v11;
  v15[3] = v13;
  v15[4] = v10;
  v15[5] = v12;
  v15[6] = v9;
  v16 = swift_task_alloc();
  v0[18] = v16;
  v17 = type metadata accessor for WidgetViewCollection(0);
  *v16 = v0;
  v16[1] = sub_1921F4F64;
  v18 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v0 + 2, v14, v18, 0xD000000000000029, 0x8000000192249FF0, sub_1921F55C8, v15, v17);
}

uint64_t sub_1921F4F64()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1921F50C4, v3, v2);
}

uint64_t sub_1921F50C4()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);

  v4 = *(v0 + 16);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5(v4);
}

double sub_1921F516C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v19 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADEF938, &qword_19222F0B8);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  sub_192086E5C(a3, a4, a5, v19, sub_1920E0410, v16);

  return result;
}

uint64_t sub_1921F5370(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_192141600(a1);
}

uint64_t sub_1921F53C4(uint64_t a1)
{
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 80);
  v8 = (*(v4 + 72) + **(v4 + 72));
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1920A59A8;

  return v8(a1, v5, v4);
}

uint64_t sub_1921F552C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1920B3B44;

  return sub_1921F53C4(a1);
}

uint64_t sub_1921F55D8(uint64_t a1)
{
  v3 = v2;
  v4 = v1[6];
  v5 = (*(*(v4 - 8) + 80) + 80) & ~*(*(v4 - 8) + 80);
  v6 = (*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for TimelineProviderContext(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v16 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = v1[2];
  v12 = v1[3];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1920A59A8;

  return sub_1921F3CD4(a1, v11, v12, v1 + v5, v16, v10, v1 + v9, v13);
}

uint64_t sub_1921F57D8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(type metadata accessor for Timeline(0, AssociatedTypeWitness, AssociatedConformanceWitness, v3) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for TimelineProviderContext(0) - 8);
  v10 = *(v0 + v6);
  v11 = *(v0 + v7);
  v12 = *(v0 + v7 + 8);
  v13 = *(v0 + v8);
  v14 = (v0 + ((*(v9 + 80) + v8 + 8) & ~*(v9 + 80)));

  return sub_1921F2AF0((v0 + v5), v10, v11, v12, v13, v14);
}

double sub_1921F5948()
{
  v1 = *(type metadata accessor for TimelineProviderContext(0) - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = (v0 + v3);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v4);

  return sub_1921F1174(v5, v6, v0 + v2, v8, v9, v10);
}

uint64_t sub_1921F59E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1921F5A48(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(type metadata accessor for TimelineProviderContext(0) - 8);
  v5 = v2[6];
  v6 = v2[7];
  v7 = v2[8];
  v8 = v2[9];
  v9 = v2 + ((*(v4 + 80) + 80) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7, v8, v9);
}

void sub_1921F5AD4()
{
  v1 = *(swift_getAssociatedTypeWitness() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for TimelineProviderContext(0) - 8);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);
  v10 = *(v0 + v5);
  v11 = (v0 + ((*(v6 + 80) + v5 + 8) & ~*(v6 + 80)));

  sub_1921F18C0((v0 + v2), v7, v8, v9, v10, v11);
}

double sub_1921F5C58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*a1 + *MEMORY[0x1E69E6CE8] + 8);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, v9);
  v12 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a3;
  *(v13 + 3) = v7;
  *(v13 + 4) = a4;
  *(v13 + 5) = a1;
  (*(v8 + 32))(&v13[v12], v11, v7);

  sub_1921F6160(sub_1921F6978, v13, a3, a4);

  return result;
}

double sub_1921F5DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_192224FB0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  (*(v8 + 16))(v10, a1, v7);
  v14[0] = sub_192227980();
  v14[1] = v12;
  sub_1921F5C58(KeyPath, v14, a2, a3);

  return result;
}

double ControlWidgetConfiguration.promptsForUserConfiguration()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = 1;
  sub_1921F5C58(KeyPath, &v6, a1, a2);

  return result;
}

double ControlWidgetConfiguration.pushHandler(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v10[0] = a1;
  v10[1] = a2;
  sub_1921F5C58(KeyPath, v10, a3, a4);

  return result;
}

double ControlWidgetConfiguration.enabled(_:)(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v7 = 1;
  if ((a1 & 1) == 0)
  {
    v7 = 2;
  }

  v9 = v7;
  sub_1921F5C58(KeyPath, &v9, a2, a3);

  return result;
}

double ControlWidgetConfiguration.showsContextualMenu(_:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  sub_1921F6160(sub_1921F612C, v6, a2, a3);

  return result;
}

uint64_t sub_1921F612C(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = type metadata accessor for WidgetDescriptor(0);
  *(a1 + *(result + 148)) = v3;
  return result;
}

double sub_1921F6160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1920791AC();

  sub_192226A00();

  return result;
}

uint64_t sub_1921F6268(uint64_t a1)
{
  result = type metadata accessor for WidgetDescriptor(0);
  *(a1 + *(result + 140)) = 1;
  *(a1 + *(result + 136)) = 1;
  return result;
}

uint64_t sub_1921F62C8(uint64_t a1)
{
  result = type metadata accessor for WidgetDescriptor(0);
  *(a1 + *(result + 132)) = 1;
  *(a1 + *(result + 128)) = 1;
  return result;
}

double ControlWidgetConfiguration.preferredControlSize(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v8 = v5;
  sub_1921F5C58(KeyPath, &v8, a2, a3);

  return result;
}

double ControlWidgetConfiguration.requiresFeatureFlag(domain:featureName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;

  sub_1921F6160(sub_1921F659C, v12, a5, a6);

  return result;
}

double sub_1921F643C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_allocWithZone(MEMORY[0x1E6994298]);
  v7 = sub_192227930();
  v8 = sub_192227930();
  v9 = [v6 initWithDomain:v7 featureName:v8];

  v10 = *(type metadata accessor for WidgetDescriptor(0) + 164);
  if (*(a1 + v10))
  {
    v14 = *(a1 + v10);

    v11 = v9;
    MEMORY[0x193B0AB00]();
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_192227BB0();
    }

    sub_192227C00();

    *(a1 + v10) = v14;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
    v13 = swift_allocObject();
    *&result = 1;
    *(v13 + 16) = xmmword_19222C680;
    *(v13 + 32) = v9;
    *(a1 + v10) = v13;
  }

  return result;
}

double ControlWidgetConfiguration.requiresFeatureFlag(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192225430();
  v6 = sub_192228430();
  v8 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192225440();
  v9 = sub_192228430();
  ControlWidgetConfiguration.requiresFeatureFlag(domain:featureName:)(v6, v8, v9, v10, a2, a3);

  return result;
}

uint64_t static ControlWidgetSize.medium(vertical:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 1;
  if ((result & 1) == 0)
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1921F66D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1920791AC();

  return sub_192226A00();
}

uint64_t sub_1921F6748(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v7 - v4, v5, v2);
  return swift_setAtWritableKeyPath();
}

double ControlWidgetConfiguration.disfavoredLocations(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;

  sub_1921F6160(sub_1921F694C, v6, a2, a3);

  return result;
}

uint64_t sub_1921F68E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    type metadata accessor for WidgetDescriptor(0);
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      result = sub_1921C2028(&v7, v5);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1921F69B8@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 32);
  *a1 = sub_1920EF8DC;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = v3;
  *(a1 + 64) = *(v1 + 16);
  *(a1 + 80) = v4;
  v5 = v2;
}

__n128 sub_1921F6A3C@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a2;
  v8 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v8;
  result = *(a1 + 25);
  *(a7 + 25) = result;
  *(a7 + 48) = v7;
  *(a7 + 56) = a3;
  *(a7 + 64) = a4;
  *(a7 + 72) = a5;
  *(a7 + 80) = a6;
  return result;
}

uint64_t ControlWidgetButton.body.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 32);
  HIWORD(v21) = 0;
  v6 = *v1;
  v14 = *(v1 + 16);

  *&v28 = sub_1920EF8DC;
  *(&v28 + 1) = 0;
  *v29 = 0;
  *&v29[2] = v21;
  *&v29[17] = 0;
  *&v30 = v3;
  *(&v30 + 1) = v4;
  v31 = v14;
  v32 = v5;
  v7 = *(a1 + 40);
  v33 = *(a1 + 16);
  v34 = v7;
  v8 = type metadata accessor for ControlWidgetButtonTemplateProvider(0, &v33);
  WitnessTable = swift_getWitnessTable();
  sub_192145D24(&v28, v8, &v33);
  v17 = v35;
  v18 = v36;
  v19 = v37;
  v20 = v38;
  v15 = v33;
  v16 = v34;
  v11 = type metadata accessor for TemplateDescriptorPreference(0, v8, WitnessTable, v10);
  swift_getWitnessTable();
  sub_1921BB14C();
  *&v29[16] = v17;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v28 = v15;
  *v29 = v16;
  v12 = *(*(v11 - 8) + 8);
  v12(&v28, v11);
  sub_1921BB14C();
  v35 = v24;
  v36 = v25;
  v37 = v26;
  v38 = v27;
  v33 = v22;
  v34 = v23;
  return (v12)(&v33, v11);
}

uint64_t static ControlWidgetButton._controlType.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  return type metadata accessor for ControlWidgetButton(0, v6);
}

uint64_t ControlWidgetButton.init<>(action:label:actionLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, void *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = *(a6 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v21, v18);
  ControlAction.init<A>(_:)(v20, a6, a10, &v24);
  result = (*(v17 + 8))(a1, a6);
  *a7 = v24;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  return result;
}

uint64_t ControlWidgetButton.init<>(action:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v12 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v16, v13);
  ControlAction.init<A>(_:)(v15, a4, a5, &v19);
  result = (*(v12 + 8))(a1, a4);
  *a6 = v19;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = nullsub_1;
  a6[4] = 0;
  return result;
}

{
  v12 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v16, v13);
  ControlAction.init<A>(_:)(v15, a4, *(*(a5 + 8) + 8), &v19);
  result = (*(v12 + 8))(a1, a4);
  *a6 = v19;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = nullsub_1;
  a6[4] = 0;
  return result;
}

__n128 ControlWidgetButton<>.init<>(_:action:actionLabel:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = a6;
  v28 = a7;
  v17 = *(a9 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v21, a9, v18);
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *(v22 + 32) = a3;
  *(v22 + 40) = a4;
  ControlWidgetButton.init<>(action:label:actionLabel:)(v20, sub_1921D1100, v22, v27, v28, a9, &v29, v24, v25, a11);
  (*(v17 + 8))(a5, a9);
  *a8 = v29;
  result = v31;
  *(a8 + 8) = v30;
  *(a8 + 24) = result;
  return result;
}

__n128 ControlWidgetButton<>.init<A>(_:action:actionLabel:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v34 = a5;
  v35 = a8;
  v36 = a3;
  v37 = a4;
  v31 = a1;
  v32 = a2;
  v15 = *(a7 - 8);
  v16 = *(v15 + 64);
  v33 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v23, v21);
  (*(v15 + 16))(v17, a1, a7);
  v24 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v25 = swift_allocObject();
  v26 = v35;
  *(v25 + 2) = v34;
  *(v25 + 3) = a6;
  *(v25 + 4) = a7;
  *(v25 + 5) = v26;
  v27 = v33;
  *(v25 + 6) = a10;
  *(v25 + 7) = v27;
  (*(v15 + 32))(&v25[v24], v17, a7);
  ControlWidgetButton.init<>(action:label:actionLabel:)(v23, sub_1921F7528, v25, v36, v37, a6, &v38, v29, v30, a10);
  (*(v19 + 8))(v32, a6);
  (*(v15 + 8))(v31, a7);
  *a9 = v38;
  result = v40;
  *(a9 + 8) = v39;
  *(a9 + 24) = result;
  return result;
}

uint64_t sub_1921F744C@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = sub_192226FD0();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t sub_1921F75D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1921F7614(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1921F765C(uint64_t result, int a2, int a3)
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

uint64_t sub_1921F76B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1921F76F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 496) = a2;
  *(v4 + 504) = a3;
  *(v4 + 488) = a1;
  v5 = *(v3 + 48);
  *(v4 + 48) = *(v3 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(v3 + 64);
  *(v4 + 96) = *(v3 + 80);
  v6 = *(v3 + 16);
  *(v4 + 16) = *v3;
  *(v4 + 32) = v6;
  sub_192227CC0();
  *(v4 + 512) = sub_192227CB0();
  v8 = sub_192227C70();
  *(v4 + 520) = v8;
  *(v4 + 528) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1921F77B0, v8, v7);
}

uint64_t sub_1921F77B0()
{
  v16 = v0;
  v1 = *(v0 + 504);
  v2 = *(v0 + 64);
  v14[2] = *(v0 + 48);
  v14[3] = v2;
  v14[4] = *(v0 + 80);
  v15 = *(v0 + 96);
  v3 = *(v0 + 32);
  v14[0] = *(v0 + 16);
  v14[1] = v3;
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = sub_1920FC228(v14, v0 + 104);
  (*(*(v1 - 1) + 16))(v0 + 192, v0 + 16, v1, v8);
  v9 = swift_task_alloc();
  *(v0 + 536) = v9;
  *(v0 + 456) = v4;
  *(v0 + 464) = v5;
  *(v0 + 472) = v6;
  *(v0 + 480) = v7;
  v10 = type metadata accessor for ControlWidgetButtonParser(0, v0 + 456);
  *(v0 + 544) = v10;
  *v9 = v0;
  v9[1] = sub_1921F78F8;
  v11 = *(v0 + 488);
  v12 = *(v0 + 496);

  return sub_1920FC24C(v11, v12, v10);
}

uint64_t sub_1921F78F8()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  *(v2 + 552) = v0;

  v4 = v3 - 8;
  v5 = *(v2 + 544);
  v6 = *(v2 + 120);
  if (v0)
  {
    *(v2 + 280) = *(v2 + 104);
    *(v2 + 296) = v6;
    v7 = *(v2 + 136);
    v8 = *(v2 + 152);
    v9 = *(v2 + 168);
    *(v2 + 360) = *(v2 + 184);
    *(v2 + 328) = v8;
    *(v2 + 344) = v9;
    *(v2 + 312) = v7;
    (*(*v4 + 8))();
    v10 = *(v2 + 528);
    v11 = *(v2 + 520);
    v12 = sub_1921F7B3C;
  }

  else
  {
    *(v2 + 368) = *(v2 + 104);
    *(v2 + 384) = v6;
    v13 = *(v2 + 136);
    v14 = *(v2 + 152);
    v15 = *(v2 + 168);
    *(v2 + 448) = *(v2 + 184);
    *(v2 + 416) = v14;
    *(v2 + 432) = v15;
    *(v2 + 400) = v13;
    (*(*v4 + 8))(v2 + 368, v5);
    v10 = *(v2 + 528);
    v11 = *(v2 + 520);
    v12 = sub_1921F7AD8;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, v10);
}

uint64_t sub_1921F7AD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1921F7B3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1921F7BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920A59A8;

  return sub_1921F76F0(a1, a2, a3);
}

uint64_t ViewStatesArchiver.archiveToData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _MapStates(0, *(a1 + 16), *(a1 + 24), a4);
  swift_getWitnessTable();
  return sub_1922263C0();
}

uint64_t ViewStatesArchiver.deploymentVersion.setter(uint64_t a1)
{
  v2 = sub_192226690();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_192226430();
  return (*(v3 + 8))(a1, v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ViewStatesArchiver.archive(to:)(NSFileHandle to)
{
  type metadata accessor for _MapStates(0, *(v1 + 16), *(v1 + 24), v2);
  swift_getWitnessTable();
  sub_1922263B0();
}

uint64_t sub_1921F7EBC@<X0>(_BYTE *a1@<X8>)
{
  result = ViewStatesArchiver.encodesPreciseTextLayout.getter();
  *a1 = result & 1;
  return result;
}

uint64_t (*ViewStatesArchiver.encodesPreciseTextLayout.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_192226460() & 1;
  return sub_1921F7F4C;
}

uint64_t sub_1921F7FA0@<X0>(_BYTE *a1@<X8>)
{
  result = ViewStatesArchiver.encodesCustomFontsAsURLs.getter();
  *a1 = result & 1;
  return result;
}

uint64_t (*ViewStatesArchiver.encodesCustomFontsAsURLs.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_192226440() & 1;
  return sub_1921F8030;
}

uint64_t sub_1921F80B4(uint64_t a1)
{
  v2 = sub_192226690();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return ViewStatesArchiver.deploymentVersion.setter(v5);
}

void (*ViewStatesArchiver.deploymentVersion.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = sub_192226690();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  sub_192226420();
  return sub_1921F828C;
}

void sub_1921F828C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    ViewStatesArchiver.deploymentVersion.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    ViewStatesArchiver.deploymentVersion.setter(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1921F8340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1921F8394(uint64_t a1)
{
  sub_1921F8514(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

id sub_1921F843C(void *a1)
{
  if (!swift_weakLoadStrong())
  {
    return a1;
  }

  v2 = sub_1921F8C30(a1);

  return v2;
}

uint64_t sub_1921F84AC()
{
  swift_weakDestroy();

  sub_1921F905C(v0 + qword_1EADEDA08);
  return v0;
}

void sub_1921F8514(uint64_t a1)
{
  if (!qword_1ED74B270)
  {
    sub_192225790();
    v1 = sub_192228240();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED74B270);
    }
  }
}

uint64_t sub_1921F856C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1921F8634(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  v7 = *(v2 + 96);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  v8 = (*(*(v2 + 88) + 48))(v3);
  (*(v4 + 8))(v6, v3);
  return v8;
}

double sub_1921F8780(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v4[11];
  v6 = v4[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v8 = v4[13];

  sub_1922264C0();
  sub_1922264D0();

  v9 = *(v2 + v8);
  swift_beginAccess();
  v10 = *(v5 + 64);
  v12 = type metadata accessor for _SimpleDelegate(0, v6, v5, v11);

  WitnessTable = swift_getWitnessTable();
  v10(a1, v9, v12, WitnessTable, v6, v5);
  swift_endAccess();

  return result;
}

uint64_t sub_1921F893C()
{
  v2 = *v0;
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v15 - v6;
  v8 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  v12 = *(v2 + 96);
  swift_beginAccess();
  (*(v8 + 16))(v11, v0 + v12, v4);
  sub_192224DB0();
  swift_allocObject();
  sub_192224DA0();
  v13 = v11;
  (*(v3 + 56))(v4, v3);
  if (v1)
  {
    (*(v8 + 8))(v11, v4);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    v13 = sub_192224D90();

    (*(v16 + 8))(v7, AssociatedTypeWitness);
    (*(v8 + 8))(v11, v4);
  }

  return v13;
}

uint64_t sub_1921F8C30(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  v8 = *(v3 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  v9 = (*(*(v3 + 88) + 72))(a1, v4);
  (*(v5 + 8))(v7, v4);
  return v9;
}

uint64_t sub_1921F8D9C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

uint64_t sub_1921F8E40(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void sub_1921F8F04(uint64_t a1)
{
  if (qword_1EADEDEB0 != -1)
  {
    swift_once();
  }

  v1 = sub_1922258B0();
  __swift_project_value_buffer(v1, qword_1EAE007D8);
  oslog = sub_192225890();
  v2 = sub_192227F90();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    v5 = sub_192228BD0();
    v7 = sub_19202B8CC(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_192028000, oslog, v2, "Failed to encode %{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x193B0C7F0](v4, -1, -1);
    MEMORY[0x193B0C7F0](v3, -1, -1);
  }
}

uint64_t sub_1921F905C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13E8, &qword_19223AEB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.activityBackgroundTint(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _ActivityBackgroundTintModifier(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v8 + *(v6 + 20)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0330, &qword_192233780);
  swift_storeEnumTagMultiPayload();
  *v8 = a1;

  MEMORY[0x193B0A190](v8, a2, v6, a3);
  return sub_1921F926C(v8);
}

uint64_t type metadata accessor for _ActivityBackgroundTintModifier(uint64_t a1)
{
  result = qword_1EADEDF00;
  if (!qword_1EADEDF00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1921F926C(uint64_t a1)
{
  v2 = type metadata accessor for _ActivityBackgroundTintModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1921F92C8()
{
  result = qword_1EADEDF10;
  if (!qword_1EADEDF10)
  {
    type metadata accessor for _ActivityBackgroundTintModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDF10);
  }

  return result;
}

void sub_1921F9348(uint64_t a1)
{
  sub_1921F93CC();
  if (v1 <= 0x3F)
  {
    sub_192110C60(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1921F93CC()
{
  if (!qword_1EADEE4A8)
  {
    v0 = sub_192228240();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADEE4A8);
    }
  }
}

uint64_t sub_1921F9438@<X0>(void *a1@<X8>)
{
  v3 = sub_1922261D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0330, &qword_192233780);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for _ActivityBackgroundTintModifier(0);
  sub_1921112F0(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v4 + 32))(a1, v9, v3);
  }

  sub_192227FA0();
  v12 = sub_192226D00();
  sub_1922257A0();

  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1921F9608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1922261D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v24 - v8;
  v10 = *v2;
  if (*v2)
  {
    sub_1921F9438((&v24 - v8));
    sub_192227270();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    (*(v6 + 8))(v9, v5);
    v19 = v12 | (v14 << 32);
    v20 = v16 | (v18 << 32);
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2570, &qword_1922446F0);
  (*(*(v21 - 8) + 16))(a2, a1, v21);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2578, &qword_1922446F8);
  v23 = a2 + *(result + 36);
  *v23 = v19;
  *(v23 + 8) = v20;
  *(v23 + 16) = v10 == 0;
  return result;
}

unint64_t sub_1921F97BC()
{
  result = qword_1EADECE78;
  if (!qword_1EADECE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2578, &qword_1922446F8);
    sub_192031E74(&qword_1EADECD48, &qword_1EADF2570, &qword_1922446F0, MEMORY[0x1E697FDF8]);
    sub_192031E74(&unk_1EADEDFA0, &qword_1EADF2580, &qword_192244728, MEMORY[0x1E6980758]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE78);
  }

  return result;
}

double sub_1921F98A0(uint64_t a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v5);
  v3 = v6;
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1921F98E8(uint64_t a1)
{
  v2 = sub_1921F997C();

  return MEMORY[0x1EEDE0700](a1, v2);
}

unint64_t sub_1921F9928()
{
  result = qword_1EADED3D0;
  if (!qword_1EADED3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED3D0);
  }

  return result;
}

unint64_t sub_1921F997C()
{
  result = qword_1EADED3D8;
  if (!qword_1EADED3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED3D8);
  }

  return result;
}

void sub_1921F9A18(uint64_t a1)
{
  sub_1922251B0();
  if (v1 <= 0x3F)
  {
    sub_1921F9AC4();
    if (v2 <= 0x3F)
    {
      sub_19217F1C8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1921F9AC4()
{
  if (!qword_1EADEDFF0)
  {
    v0 = sub_192227C40();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADEDFF0);
    }
  }
}

void sub_1921F9B5C(uint64_t a1)
{
  type metadata accessor for ActivityMetricsDefinition(319);
  if (v1 <= 0x3F)
  {
    sub_1921F9C88(319);
    if (v2 <= 0x3F)
    {
      sub_19217F1C8();
      if (v3 <= 0x3F)
      {
        sub_1921F9DC0(319, &qword_1EADEE3A8, type metadata accessor for MetricsRequest);
        if (v4 <= 0x3F)
        {
          sub_1921F9DC0(319, &qword_1ED74B560, MEMORY[0x1E697F228]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1921F9C88(uint64_t a1)
{
  if (!qword_1EADEE030[0])
  {
    v4[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2588, &unk_1922447D8);
    v4[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1638, &unk_192240A20);
    v4[2] = sub_1921F9D6C(&qword_1EADEE000, &qword_1EADF2588, &unk_1922447D8);
    v4[3] = sub_1921F9D6C(&qword_1EADEE008, &qword_1EADF1638, &unk_192240A20);
    v2 = type metadata accessor for Cartesian2ProductCollection(a1, v4);
    if (!v3)
    {
      atomic_store(v2, qword_1EADEE030);
    }
  }
}

uint64_t sub_1921F9D6C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_1921F9DC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_192228240();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1921F9E14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a2 / v4;
  if (a2 / v4 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v5 >= *(a3 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = a2 % v4;
  if (((a2 % v4) & 0x8000000000000000) == 0)
  {
    v8 = result;
    v9 = *(a3 + v5 + 32);
    v10 = sub_1922261D0();
    (*(*(v10 - 8) + 16))(v8, a4 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(*(v10 - 8) + 72) * v6, v10);
    return v9;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1921F9ED0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 / v4 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((a2 / v4) >= *(a3 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = a2 % v4;
  if (a2 % v4 < 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = sub_1922261D0();
  (*(*(v8 - 8) + 16))(v7, a4 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v5, v8);
}

uint64_t sub_1921F9F9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = a3 / v5;
  if (a3 / v5 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v6 >= *(a4 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = result;
  v11 = a3 % v5;
  v12 = *(type metadata accessor for ViewableTimelineEntry(0) - 8);
  result = sub_1921FCF60(a4 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v6, v10, type metadata accessor for ViewableTimelineEntry);
  if (v11 < 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v13 = sub_1922261D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v16 = a5 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v11;

  return v15(a2, v16, v13);
}

uint64_t sub_1921FA0E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF25B8, &qword_192244898);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921FCEB8();
  sub_192228B90();
  LOBYTE(v14) = 0;
  sub_1922251B0();
  sub_1921FABAC(&qword_1EADEDEE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1922288C0();
  if (!v2)
  {
    v9 = type metadata accessor for ActivityViewStates.Metadata(0);
    v14 = *(v3 + v9[5]);
    v10 = v14;
    HIBYTE(v13) = 1;
    sub_1920E2830();
    v11 = v10;
    sub_1922288C0();

    v14 = *(v3 + v9[6]);
    HIBYTE(v13) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF05B0, &qword_192234B78);
    sub_1921FD028(&qword_1EADED3A0, sub_1921FD0A0, MEMORY[0x1E69E6300]);
    sub_1922288C0();
    v14 = *(v3 + v9[7]);
    HIBYTE(v13) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1670, &qword_192244890);
    sub_192183950(&qword_1EADED3A8, sub_1921839D4, MEMORY[0x1E69E6538], MEMORY[0x1E69E5E38]);
    sub_1922288C0();
    LOBYTE(v14) = *(v3 + v9[8]);
    HIBYTE(v13) = 4;
    sub_19214E86C();
    sub_1922288C0();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1921FA420(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_1922251B0();
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF25B0, &unk_192244880);
  v17 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v15 - v6;
  v8 = type metadata accessor for ActivityViewStates.Metadata(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921FCEB8();
  v20 = v7;
  sub_192228B70();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = v10;
    v13 = v17;
    v12 = v18;
    LOBYTE(v23) = 0;
    sub_1921FABAC(&qword_1EADED370, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v14 = v19;
    sub_1922287C0();
    (*(v12 + 32))(v11, v14, v4);
    v22 = 1;
    sub_192044634();
    sub_1922287C0();
    *(v11 + v8[5]) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF05B0, &qword_192234B78);
    v22 = 2;
    sub_1921FD028(&qword_1EADECF38, sub_1921FCF0C, MEMORY[0x1E69E6330]);
    v19 = 0;
    sub_1922287C0();
    *(v11 + v8[6]) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1670, &qword_192244890);
    v22 = 3;
    sub_192183950(&qword_1EADECF40, sub_192183894, MEMORY[0x1E69E6560], MEMORY[0x1E69E5E58]);
    sub_1922287C0();
    *(v11 + v8[7]) = v23;
    v22 = 4;
    sub_19214E968();
    sub_1922287C0();
    (*(v13 + 8))(v20, v21);
    *(v11 + v8[8]) = v23;
    sub_1921FCF60(v11, v16, type metadata accessor for ActivityViewStates.Metadata);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1921FCFC8(v11, type metadata accessor for ActivityViewStates.Metadata);
  }
}

uint64_t sub_1921FA9A4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7367615477656976;
  v4 = 0xD00000000000001CLL;
  if (v1 != 3)
  {
    v4 = 0x6465766968637261;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D6E6F7269766E65;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1921FAA4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1921FD22C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1921FAA74(uint64_t a1)
{
  v2 = sub_1921FCEB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921FAAB0(uint64_t a1)
{
  v2 = sub_1921FCEB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1921FABAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1921FABF4(uint64_t a1, uint64_t a2)
{
  v138 = a2;
  v148 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEECA0, &qword_19222B090);
  MEMORY[0x1EEE9AC00](v2 - 8);
  *&v139 = &v121 - v3;
  v141 = sub_1922259F0();
  v143 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v125 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v140 = &v121 - v6;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2598, &unk_192244860);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v124 = &v121 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  *&v137 = &v121 - v11;
  v12 = sub_192225E00();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v136 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF25A0, &unk_192244870);
  MEMORY[0x1EEE9AC00](v135);
  v134 = (&v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v150 = (&v121 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEC50, &qword_19222B040);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v129 = &v121 - v18;
  v19 = sub_1922265A0();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v121 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v121 - v27;
  MEMORY[0x1EEE9AC00](v29);
  *&v144 = &v121 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v121 - v32;
  *&v154.f64[0] = type metadata accessor for MetricsRequest(0);
  v131 = *(*&v154.f64[0] - 8);
  MEMORY[0x1EEE9AC00](*&v154.f64[0]);
  *&v133 = &v121 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v132 = &v121 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = (&v121 - v38);
  v147 = sub_1922261D0();
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v142 = &v121 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v145 = &v121 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v121 - v44;
  v149 = &v121 - v44;
  v46 = type metadata accessor for ActivityViewStates(0);
  v47 = *(v46 + 28);
  v152 = v46;
  v130 = sub_1921F9ED0(v45, v148, *(v153 + v47), *(v153 + v47 + 8));
  v126 = *(v46 + 24);
  v128 = v33;
  sub_192225EC0();
  v48 = *(v20 + 104);
  v48(v28, *MEMORY[0x1E697F680], v19);
  v48(v22, *MEMORY[0x1E697F648], v19);
  sub_1920E4394(v33, v22, v25);
  v49 = *(v20 + 8);
  v49(v22, v19);
  v50 = v144;
  sub_1920E2E24(v28, v25, v144);
  v49(v25, v19);
  v49(v28, v19);
  v127 = type metadata accessor for MetricsRequest;
  v51 = v153;
  v151 = v39;
  sub_1921FCF60(v153 + v126, v39, type metadata accessor for MetricsRequest);
  v52 = v39[3];
  v53 = v39[4];
  LODWORD(v126) = *(v39 + 40);
  v54 = v129;
  (*(v20 + 16))(v129, v50, v19);
  (*(v20 + 56))(v54, 0, 1, v19);
  v55 = v51;
  v56 = sub_192228110();
  v57 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v58 = [objc_opt_self() defaultMetrics];
  if (!v126)
  {
    v53 = v52;
  }

  v59 = v57;
  [v58 scaledValueForValue:v59 compatibleWithTraitCollection:v53];
  v61 = v60;

  v49(v144, v19);
  v49(v128, v19);
  v62 = v147;
  v63 = v150;
  v64 = v151;
  v151[3] = v52;
  *(v64 + 32) = v61;
  *(v64 + 40) = 1;
  v65 = v152;
  v66 = v152[10];
  sub_192033970(v55 + v66, &qword_1EADF1640, &qword_19223C560);
  v67 = v127;
  sub_1921FCF60(v64, v55 + v66, v127);
  (*(v131 + 56))(v55 + v66, 0, 1, *&v154.f64[0]);
  v68 = v65[11];
  sub_192033970(v55 + v68, &qword_1EADEF250, &qword_19222C6C0);
  v69 = v146;
  v70 = v146 + 16;
  v71 = *(v146 + 16);
  v72 = v149;
  v71(v55 + v68, v149, v62);
  (*(v69 + 56))(v55 + v68, 0, 1, v62);
  LOBYTE(v157) = 4;
  v73 = v151;
  v74 = v132;
  sub_1921FCF60(v151, v132, v67);
  sub_1920F7ADC(&v157, v74, v63 + *(v135 + 36));
  *v63 = v130;
  sub_19202CFFC(v63, v134, &qword_1EADF25A0, &unk_192244870);
  sub_1921FCD1C();
  *&v157 = sub_192227570();
  sub_1922264D0();
  v75 = v145;
  v71(v145, v72, v62);
  sub_192225DE0();
  sub_192225FF0();
  v135 = v70;
  v134 = v71;
  v71(v142, v75, v62);
  sub_192226360();
  v76 = v133;
  sub_1921FCF60(v73, v133, v67);
  v77 = v76;
  LOBYTE(v76) = *(v76 + 16);
  LOBYTE(v75) = *(v77 + 40);
  sub_1921FCFC8(v77, type metadata accessor for MetricsRequest);
  v78 = v73;
  LOBYTE(v157) = v76;
  LOBYTE(v155) = v75;
  sub_192226370();
  v80 = v79;
  v82 = v81;
  v83 = v73 + *(*&v154.f64[0] + 40);
  v84 = v137;
  sub_19202CFFC(v83, v137, &qword_1EADEFD38, &qword_1922316A0);
  v85 = sub_192226600();
  LODWORD(v76) = (*(*(v85 - 8) + 48))(v84, 1, v85);
  sub_192033970(v84, &qword_1EADEFD38, &qword_1922316A0);
  if (v76 != 1)
  {
    *&v87 = *(v78 + 24);
LABEL_11:
    v90 = v143;
    v91 = v139;
    v92 = v150;
    v93 = v153;
    goto LABEL_12;
  }

  if ((*(v78 + 40) & 1) == 0)
  {
    *&v87 = *(v78 + 24);
    goto LABEL_11;
  }

  v89 = *(v78 + 32);
  *&v87 = *(v78 + 24);
  if (v89 >= v82)
  {
    v89 = v82;
  }

  v90 = v143;
  v91 = v139;
  v92 = v150;
  v93 = v153;
  if (v89 > *&v87)
  {
    *&v87 = v89;
  }

LABEL_12:
  if (*(v78 + 16))
  {
    v94 = *(v78 + 8);
    *&v88 = *v78;
    if (v94 >= v80)
    {
      v94 = v80;
    }

    if (v94 > *v78)
    {
      *&v88 = v94;
    }
  }

  else
  {
    *&v88 = *v78;
  }

  v95 = *(v78 + 48);
  *&v86 = *(v78 + 104);
  *&v96.f64[0] = v88;
  *&v96.f64[1] = v87;
  v154 = v96;
  v144 = v86;
  if (*&v86 != 1.0)
  {
    v139 = v87;
    v137 = v88;
    sub_192225EA0();
    v98 = v97;
    v99 = v124;
    sub_19202CFFC(v92, v124, &qword_1EADF25A0, &unk_192244870);
    v100 = v99 + *(v123 + 36);
    v101 = v139;
    *v100 = v137;
    *(v100 + 8) = v101;
    v102 = v144;
    *(v100 + 16) = v95;
    *(v100 + 24) = v102;
    *(v100 + 32) = v98;
    sub_19202CFFC(v99, v122, &qword_1EADF2598, &unk_192244860);
    sub_1921FCDD8();
    *&v157 = sub_192227570();
    sub_1922264D0();
    sub_192225EA0();
    v154 = vmulq_n_f64(vrndmq_f64(vdivq_f64(vaddq_f64(vmulq_n_f64(v154, *&v144), vdupq_lane_s64(COERCE__INT64(1.0 / v103 * 0.5), 0)), vdupq_lane_s64(COERCE__INT64(1.0 / v103), 0))), 1.0 / v103);
    v90 = v143;
    sub_192033970(v99, &qword_1EADF2598, &unk_192244860);
  }

  sub_1921F997C();
  sub_1922263F0();
  *&v137 = *(&v157 + 1);
  *&v139 = v157;
  LODWORD(v136) = LOBYTE(v158.f64[0]);
  sub_1921FCE64();
  sub_1922263F0();
  v104 = v157;
  v105 = LOBYTE(v158.f64[0]);
  v106 = v152[12];
  if (*(v93 + v106))
  {
    v107 = 1;
    v108 = v147;
    v109 = v145;
  }

  else
  {
    LODWORD(v132) = LOBYTE(v158.f64[0]);
    v133 = v157;
    sub_192226940();
    sub_1922263F0();
    v110 = *(v90 + 48);
    v111 = v90;
    v112 = v141;
    if (v110(v91, 1, v141) == 1)
    {
      (*(v111 + 104))(v140, *MEMORY[0x1E697DBA8], v112);
      if (v110(v91, 1, v112) != 1)
      {
        sub_192033970(v91, &unk_1EADEECA0, &qword_19222B090);
      }
    }

    else
    {
      (*(v111 + 32))(v140, v91, v112);
    }

    v109 = v145;
    v113 = sub_192225FB0();
    v93 = v153;
    v114 = v143;
    if (v113)
    {
      v115 = v141;
      (*(v143 + 104))(v125, *MEMORY[0x1E697DBA8], v141);
      v116 = v140;
    }

    else
    {
      v116 = v140;
      v115 = v141;
      (*(v143 + 16))(v125, v140, v141);
    }

    sub_192225E60();
    v108 = v147;
    v134(v142, v109, v147);
    sub_192226360();
    (*(v114 + 8))(v116, v115);
    v107 = *(v93 + v106);
    v92 = v150;
    v78 = v151;
    v104 = v133;
    v105 = v132;
  }

  LOBYTE(v155) = 0;
  v156 = 0;
  v157 = 0uLL;
  v158 = v154;
  v159 = v95 * *&v144;
  v160 = 0;
  v161 = v139;
  v162 = v137;
  v163 = v136;
  v164 = v104;
  v165 = v105;
  v166 = 0;
  v167 = v107;
  v117 = v152[9];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v155 = *(v93 + v117);
  sub_19213DC78(&v157, v148, isUniquelyReferenced_nonNull_native);
  *(v93 + v117) = v155;
  sub_1922264A0();
  v119 = *(v146 + 8);
  v119(v109, v108);
  sub_192033970(v92, &qword_1EADF25A0, &unk_192244870);
  sub_1921FCFC8(v78, type metadata accessor for MetricsRequest);
  return (v119)(v149, v108);
}

CGImage *sub_1921FBD48(CGImage *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v80 = &v76 - v3;
  v4 = sub_1922261D0();
  v84 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1640, &qword_19223C560);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v76 - v7);
  v9 = type metadata accessor for MetricsRequest(0);
  v81 = *(v9 - 8);
  v82 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = 91;
  v86 = 0xE100000000000000;
  LODWORD(Width) = CGImageGetIdentifier();
  v12 = sub_192228910();
  MEMORY[0x193B0A990](v12);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  Width = CGImageGetWidth(a1);
  v13 = sub_192228910();
  MEMORY[0x193B0A990](v13);

  MEMORY[0x193B0A990](120, 0xE100000000000000);
  v79 = a1;
  Width = CGImageGetHeight(a1);
  v14 = sub_192228910();
  MEMORY[0x193B0A990](v14);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v16 = v85;
  v15 = v86;
  if (qword_1ED749B40 != -1)
  {
    swift_once();
  }

  v17 = sub_1922258B0();
  __swift_project_value_buffer(v17, qword_1ED74C788);

  v18 = sub_192225890();
  v19 = sub_192227FB0();

  v20 = os_log_type_enabled(v18, v19);
  v77 = v16;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v76 = v4;
    v22 = v21;
    v23 = v11;
    v24 = swift_slowAlloc();
    v85 = v24;
    *v22 = 136446210;
    v25 = v16;
    v26 = v15;
    *(v22 + 4) = sub_19202B8CC(v25, v15, &v85);
    _os_log_impl(&dword_192028000, v18, v19, "%{public}s Filtering image", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v27 = v24;
    v11 = v23;
    MEMORY[0x193B0C7F0](v27, -1, -1);
    v28 = v22;
    v4 = v76;
    MEMORY[0x193B0C7F0](v28, -1, -1);
  }

  else
  {
    v26 = v15;
  }

  v29 = type metadata accessor for ActivityViewStates(0);
  v30 = v83;
  sub_19202CFFC(v83 + *(v29 + 40), v8, &qword_1EADF1640, &qword_19223C560);
  if ((*(v81 + 48))(v8, 1, v82) == 1)
  {

    sub_192033970(v8, &qword_1EADF1640, &qword_19223C560);
    sub_1921FC8CC();
    swift_allocError();
    *v31 = xmmword_19223C490;
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0;
    swift_willThrow();
    return v8;
  }

  sub_1920F8D30(v8, v11);
  v32 = v30 + *(v29 + 44);
  v33 = v80;
  sub_19202CFFC(v32, v80, &qword_1EADEF250, &qword_19222C6C0);
  v34 = v26;
  if ((*(v84 + 48))(v33, 1, v4) == 1)
  {

    sub_192033970(v33, &qword_1EADEF250, &qword_19222C6C0);
    sub_1921FC8CC();
    swift_allocError();
    *v35 = 0xD000000000000013;
    *(v35 + 8) = 0x800000019224CB80;
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0;
    swift_willThrow();
LABEL_27:
    sub_1921FCFC8(v11, type metadata accessor for MetricsRequest);
    return v8;
  }

  v36 = v78;
  (*(v84 + 32))(v78, v33, v4);
  sub_192225EA0();
  v38 = v11 + 1;
  if (!*(v11 + 16))
  {
    v38 = v11;
  }

  v39 = fmax(v37 * *v38 * 1.2, 80.0);
  v40 = v11 + 3;
  if (*(v11 + 40))
  {
    v40 = v11 + 4;
  }

  v41 = fmax(v37 * *v40 * 1.2, 80.0);
  v42 = v79;
  if (v39 <= CGImageGetWidth(v79) || v41 <= CGImageGetHeight(v42))
  {
    sub_1921FC980(v39, v41);
    if (!v52)
    {

      v63 = sub_192225890();
      v64 = sub_192227FA0();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v85 = v8;
        *v65 = 136446722;
        v66 = sub_19202B8CC(v77, v34, &v85);
        v67 = v4;
        v68 = v66;

        *(v65 + 4) = v68;
        v4 = v67;
        *(v65 + 12) = 2050;
        *(v65 + 14) = v39;
        *(v65 + 22) = 2050;
        *(v65 + 24) = v41;
        _os_log_impl(&dword_192028000, v63, v64, "%{public}s Max size exceeded: %{public}fx%{public}f; unable to create placeholder image", v65, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v8);
        MEMORY[0x193B0C7F0](v8, -1, -1);
        v69 = v65;
        v42 = v79;
        MEMORY[0x193B0C7F0](v69, -1, -1);
      }

      else
      {
      }

      v70 = CGImageGetWidth(v42);
      v71 = v42;
      v72 = v70;
      Height = CGImageGetHeight(v71);
      sub_1921FC8CC();
      swift_allocError();
      *v74 = v72;
      *(v74 + 8) = Height;
      *(v74 + 16) = v39;
      *(v74 + 24) = v41;
      *(v74 + 32) = 1;
      swift_willThrow();
      (*(v84 + 8))(v36, v4);
      goto LABEL_27;
    }

    v8 = v52;

    v53 = sub_192225890();
    v54 = sub_192227FA0();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v76 = v4;
      v57 = v56;
      v85 = v56;
      *v55 = 136446722;
      v58 = sub_19202B8CC(v77, v34, &v85);
      v59 = v84;
      v60 = v11;
      v61 = v58;

      *(v55 + 4) = v61;
      *(v55 + 12) = 2050;
      *(v55 + 14) = v39;
      *(v55 + 22) = 2050;
      *(v55 + 24) = v41;
      _os_log_impl(&dword_192028000, v53, v54, "%{public}s Max size exceeded: %{public}fx%{public}f; using placeholder image", v55, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x193B0C7F0](v57, -1, -1);
      MEMORY[0x193B0C7F0](v55, -1, -1);

      (*(v59 + 8))(v36, v76);
      v62 = v60;
    }

    else
    {

      (*(v84 + 8))(v36, v4);
      v62 = v11;
    }

    sub_1921FCFC8(v62, type metadata accessor for MetricsRequest);
  }

  else
  {

    v43 = sub_192225890();
    v44 = sub_192227FB0();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v85 = v46;
      *v45 = 136446210;
      v47 = sub_19202B8CC(v77, v34, &v85);
      v48 = v84;
      v49 = v4;
      v50 = v47;

      *(v45 + 4) = v50;
      _os_log_impl(&dword_192028000, v43, v44, "%{public}s Image permitted", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x193B0C7F0](v46, -1, -1);
      v51 = v45;
      v42 = v79;
      MEMORY[0x193B0C7F0](v51, -1, -1);

      (*(v48 + 8))(v36, v49);
    }

    else
    {

      (*(v84 + 8))(v36, v4);
    }

    sub_1921FCFC8(v11, type metadata accessor for MetricsRequest);
    return v42;
  }

  return v8;
}

double sub_1921FC7F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  sub_1922251A0();
  v10 = *(v2 + 8);
  v6 = v10;
  WidgetEnvironment.filterForArchiving()();
  v7 = *(v2 + *(a1 + 36));
  LOBYTE(a1) = *(v4 + *(a1 + 48));
  v8 = type metadata accessor for ActivityViewStates.Metadata(0);
  *(a2 + v8[5]) = v10;
  *(a2 + v8[6]) = &unk_1F06A77D8;
  *(a2 + v8[7]) = v7;
  *(a2 + v8[8]) = a1;

  return result;
}

unint64_t sub_1921FC8CC()
{
  result = qword_1EADF2590;
  if (!qword_1EADF2590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2590);
  }

  return result;
}

void sub_1921FC948(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void sub_1921FC980(double a1, double a2)
{
  v4 = sub_192225400();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_13;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((a1 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_16:
    __break(1u);
    return;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9 = __CGBitmapContextCreate(a1, a2, 4 * a1, DeviceRGB);

  if (v9)
  {
    v10 = CGRectMake();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = v9;
    v20.origin.x = v10;
    v20.origin.y = v12;
    v20.size.width = v14;
    v20.size.height = v16;
    CGRectGetMinX(v20);
    v21.origin.x = v10;
    v21.origin.y = v12;
    v21.size.width = v14;
    v21.size.height = v16;
    v19[1] = CGRectGetMidX(v21);
    v22.origin.x = v10;
    v22.origin.y = v12;
    v22.size.width = v14;
    v22.size.height = v16;
    CGRectGetMaxX(v22);
    v23.origin.x = v10;
    v23.origin.y = v12;
    v23.size.width = v14;
    v23.size.height = v16;
    CGRectGetMinY(v23);
    v24.origin.x = v10;
    v24.origin.y = v12;
    v24.size.width = v14;
    v24.size.height = v16;
    CGRectGetMidY(v24);
    v25.origin.x = v10;
    v25.origin.y = v12;
    v25.size.width = v14;
    v25.size.height = v16;
    CGRectGetMaxY(v25);
    GenericRGB = CGColorCreateGenericRGB(0.25, 0.25, 0.25, 1.0);
    CGContextSetFillColorWithColor(v17, GenericRGB);

    sub_192227F10();
    sub_192227F20();
    sub_192227F20();
    sub_192227F20();
    sub_192227F20();
    CGContextClosePath(v17);
    (*(v5 + 104))(v7, *MEMORY[0x1E695EEB8], v4);
    sub_192227F30();
    (*(v5 + 8))(v7, v4);
    CGBitmapContextCreateImage(v17);
  }
}

unint64_t sub_1921FCD1C()
{
  result = qword_1EADEDE00;
  if (!qword_1EADEDE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF25A0, &unk_192244870);
    sub_1921FABAC(&qword_1EADED408, type metadata accessor for CommonActivityArchivingModifiers, &unk_192231640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE00);
  }

  return result;
}

unint64_t sub_1921FCDD8()
{
  result = qword_1EADF25A8;
  if (!qword_1EADF25A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2598, &unk_192244860);
    sub_1921FCD1C();
    sub_1921C9904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF25A8);
  }

  return result;
}

unint64_t sub_1921FCE64()
{
  result = qword_1EADED3C8;
  if (!qword_1EADED3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED3C8);
  }

  return result;
}

unint64_t sub_1921FCEB8()
{
  result = qword_1EADEE288;
  if (!qword_1EADEE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE288);
  }

  return result;
}

unint64_t sub_1921FCF0C()
{
  result = qword_1EADED160;
  if (!qword_1EADED160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED160);
  }

  return result;
}

uint64_t sub_1921FCF60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1921FCFC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1921FD028(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF05B0, &qword_192234B78);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1921FD0A0()
{
  result = qword_1EADEDA18;
  if (!qword_1EADEDA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDA18);
  }

  return result;
}

unint64_t sub_1921FD128()
{
  result = qword_1EADF25C0;
  if (!qword_1EADF25C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF25C0);
  }

  return result;
}

unint64_t sub_1921FD180()
{
  result = qword_1EADEE278;
  if (!qword_1EADEE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE278);
  }

  return result;
}

unint64_t sub_1921FD1D8()
{
  result = qword_1EADEE280;
  if (!qword_1EADEE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE280);
  }

  return result;
}

uint64_t sub_1921FD22C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7367615477656976 && a2 == 0xE800000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000019224CBD0 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465766968637261 && a2 == 0xEE00796C696D6146)
  {

    return 4;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t ControlTemplateToggle.Option.init(value:action:icon:tint:status:actionHint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = *a3;
  v17 = type metadata accessor for ControlTemplateToggle.Option(0);
  v18 = v17[6];
  v19 = sub_192226B70();
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = &a9[v17[7]];
  v21 = &a9[v17[8]];
  v22 = &a9[v17[9]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = v16;
  result = sub_19204193C(a4, &a9[v18], &qword_1EADEF720, &unk_19222E2F0);
  *v20 = a5;
  *(v20 + 1) = a6;
  v20[16] = a7 & 1;
  *v21 = a8;
  *(v21 + 1) = a10;
  *v22 = a11;
  *(v22 + 1) = a12;
  return result;
}

uint64_t ControlTemplateToggle.init(title:subtitle:on:off:associatedURL:privacySensitive:disabled:accessibilityIdentifier:rasterizedImagesAllowed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, char a11, uint64_t a12, uint64_t a13, char a14)
{
  v21 = type metadata accessor for ControlTemplateToggle(0);
  v22 = v21[8];
  v23 = sub_192225020();
  (*(*(v23 - 8) + 56))(&a9[v22], 1, 1, v23);
  v24 = &a9[v21[11]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  sub_19212F420(a5, &a9[v21[6]]);
  sub_19212F420(a6, &a9[v21[7]]);
  result = sub_19204193C(a7, &a9[v22], &qword_1EADEEE10, &unk_19222B630);
  a9[v21[9]] = a8;
  a9[v21[10]] = a11;
  *v24 = a12;
  *(v24 + 1) = a13;
  a9[v21[12]] = a14;
  return result;
}

uint64_t ControlTemplateToggle.asPlaceholder()@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v59 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v47 - v7;
  if (qword_1EADECB28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v57 = qword_1EADECB30;
  v58 = *algn_1EADECB38;
  v9 = qword_1EADECB10;

  if (v9 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v55 = qword_1EADECB18;
  v56 = qword_1EADECB20;
  v10 = qword_1EADEE988;

  if (v10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = *algn_1EADF1AC8;
  v52 = qword_1EADF1AC0;
  v12 = type metadata accessor for ControlTemplateToggle(0);
  v13 = v2 + v12[7];
  v51 = *(v13 + 16);
  v14 = type metadata accessor for ControlTemplateToggle.Option(0);
  v54 = v2;
  v15 = v14;
  v53 = *(v14 + 24);
  sub_19202CFFC(v13 + v53, v8, &qword_1EADEF720, &unk_19222E2F0);
  v17 = v15[6];
  v16 = v15[7];
  v47 = v17;
  v18 = (v13 + v16);
  v19 = *v18;
  v61 = v18[1];
  v62 = v19;
  v60 = *(v18 + 16);
  v20 = &a1[v12[6]];
  v49 = sub_192226B70();
  v21 = *(v49 - 8);
  v48 = *(v21 + 56);
  v50 = v21 + 56;
  v48(v20 + v17, 1, 1, v49);
  v22 = v20 + v15[7];
  v23 = (v20 + v15[8]);
  v24 = (v20 + v15[9]);
  v25 = v51;
  *v20 = v52;
  v20[1] = v11;
  v20[2] = v25;
  v26 = v25;

  v27 = v20 + v47;
  v28 = v8;
  sub_19204193C(v8, v27, &qword_1EADEF720, &unk_19222E2F0);
  v29 = v61;
  *v22 = v62;
  *(v22 + 1) = v29;
  v22[16] = v60;
  *v23 = 0;
  v23[1] = 0;
  *v24 = 0;
  v24[1] = 0;
  v30 = *algn_1EADF1AC8;
  v52 = qword_1EADF1AC0;
  v31 = *(v13 + 16);
  sub_19202CFFC(v13 + v53, v8, &qword_1EADEF720, &unk_19222E2F0);
  v32 = &a1[v12[7]];
  v33 = v15[6];
  v48(v32 + v33, 1, 1, v49);
  v34 = v32 + v15[7];
  v35 = (v32 + v15[8]);
  v36 = (v32 + v15[9]);
  *v32 = v52;
  v32[1] = v30;
  v32[2] = v31;
  v37 = v31;

  sub_19204193C(v28, v32 + v33, &qword_1EADEF720, &unk_19222E2F0);
  v38 = v61;
  *v34 = v62;
  *(v34 + 1) = v38;
  v34[16] = v60;
  *v35 = 0;
  v35[1] = 0;
  v39 = sub_192225020();
  *v36 = 0;
  v36[1] = 0;
  v40 = *(*(v39 - 8) + 56);
  v41 = v59;
  v40(v59, 1, 1, v39);
  v42 = v12[8];
  LOBYTE(v34) = *(v54 + v12[9]);
  LOBYTE(v31) = *(v54 + v12[10]);
  LOBYTE(v33) = *(v54 + v12[12]);
  v40(&a1[v42], 1, 1, v39);
  v43 = &a1[v12[11]];
  v44 = v58;
  *a1 = v57;
  *(a1 + 1) = v44;
  v45 = v56;
  *(a1 + 2) = v55;
  *(a1 + 3) = v45;
  result = sub_19204193C(v41, &a1[v42], &qword_1EADEEE10, &unk_19222B630);
  a1[v12[9]] = v34;
  a1[v12[10]] = v31;
  *v43 = 0;
  *(v43 + 1) = 0;
  a1[v12[12]] = v33;
  return result;
}

uint64_t ControlTemplateToggle.asTemplateWithTargetedVectorGlyphAssetLib(symbolNames:bundle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v133 = a2;
  v136 = a1;
  v146 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v147 = &v128 - v5;
  v138 = sub_192226B50();
  v135 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v142 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v131 = &v128 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v143 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v140 = &v128 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v137 = &v128 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v134 = &v128 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v128 - v18;
  v20 = sub_192226B70();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v141 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v132 = &v128 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v148 = &v128 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v139 = &v128 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v130 = &v128 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v128 - v32;
  v34 = type metadata accessor for ControlTemplateToggle.Option(0);
  MEMORY[0x1EEE9AC00](v34);
  v153 = (&v128 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v36);
  v38 = (&v128 - v37);
  v39 = *v3;
  v40 = v3[1];
  v41 = v3[3];
  v144 = v3[2];
  v145 = v39;
  v158 = type metadata accessor for ControlTemplateToggle(0);
  v42 = v158[6];
  v149 = v3;
  v150 = v34;
  v43 = v3 + v42;
  sub_19202CFFC(v3 + v42 + *(v34 + 24), v19, &qword_1EADEF720, &unk_19222E2F0);
  v44 = *(v21 + 48);
  v155 = v20;
  v156 = v44;
  v157 = v21 + 48;
  v45 = v44(v19, 1, v20);
  v46 = MEMORY[0x1E697CB08];
  v151 = v41;
  v152 = v40;
  v154 = v38;
  if (v45 == 1)
  {

    sub_192033970(v19, &qword_1EADEF720, &unk_19222E2F0);
    sub_192201E90(v43, v38, type metadata accessor for ControlTemplateToggle.Option);
    v48 = v142;
    v47 = v143;
    v49 = v21;
    v51 = v148;
    v50 = v149;
    v52 = v141;
    v53 = v155;
    v54 = v153;
  }

  else
  {
    v55 = *(v21 + 32);
    v56 = v155;
    v129 = v21 + 32;
    v128 = v55;
    v55(v33, v19, v155);
    v57 = v139;
    (*(v21 + 16))(v139, v33, v56);
    v49 = v21;
    if ((*(v21 + 88))(v57, v56) == *v46)
    {
      v58 = v139;
      (*(v21 + 96))(v139, v56);
      v59 = v135;
      v60 = v131;
      v61 = v138;
      (*(v135 + 32))(v131, v58, v138);

      v62 = sub_192226AF0();
      v64 = sub_1921B01A8(v62, v63, v136);

      v65 = v134;
      if (v64)
      {
        sub_192226AA0();
        (*(v59 + 8))(v60, v61);
        v56 = v155;
        (*(v21 + 8))(v33, v155);
      }

      else
      {
        (*(v59 + 8))(v60, v61);
        v56 = v155;
        (*(v21 + 8))(v33, v155);
        (*(v21 + 56))(v65, 1, 1, v56);
      }
    }

    else
    {
      v66 = *(v21 + 8);

      v66(v33, v56);
      v65 = v134;
      (*(v21 + 56))(v134, 1, 1, v56);
      v66(v139, v56);
    }

    v67 = v156(v65, 1, v56);
    v68 = v43;
    if (v67 == 1)
    {
      sub_192033970(v65, &qword_1EADEF720, &unk_19222E2F0);
      sub_192201E90(v43, v154, type metadata accessor for ControlTemplateToggle.Option);
      v54 = v153;
      v48 = v142;
      v47 = v143;
      v51 = v148;
      v50 = v149;
      v52 = v141;
      v53 = v155;
    }

    else
    {
      v69 = v130;
      v70 = v65;
      v53 = v155;
      v71 = v128;
      v128(v130, v70, v155);
      v72 = v68[1];
      v139 = *v68;
      v134 = v72;
      v73 = v68[2];
      v74 = v137;
      v71(v137, v69, v53);
      v75 = *(v21 + 56);
      v75(v74, 0, 1, v53);
      v76 = v150;
      v77 = v150[6];
      v78 = (v68 + v150[7]);
      v79 = v78[1];
      v131 = *v78;
      v130 = v79;
      LODWORD(v129) = *(v78 + 16);
      v80 = v154;
      v75(v154 + v77, 1, 1, v53);
      v81 = v80 + v76[7];
      v82 = (v80 + v76[8]);
      v83 = (v80 + v76[9]);
      v84 = v134;
      *v80 = v139;
      v80[1] = v84;
      v80[2] = v73;
      v85 = v73;

      sub_19204193C(v74, v80 + v77, &qword_1EADEF720, &unk_19222E2F0);
      v86 = v130;
      *v81 = v131;
      *(v81 + 1) = v86;
      v81[16] = v129;
      *v82 = 0;
      v82[1] = 0;
      *v83 = 0;
      v83[1] = 0;
      v54 = v153;
      v48 = v142;
      v47 = v143;
      v51 = v148;
      v50 = v149;
      v52 = v141;
    }
  }

  v87 = (v50 + v158[7]);
  v88 = v140;
  sub_19202CFFC(v87 + v150[6], v140, &qword_1EADEF720, &unk_19222E2F0);
  if (v156(v88, 1, v53) == 1)
  {
    sub_192033970(v88, &qword_1EADEF720, &unk_19222E2F0);
    sub_192201E90(v87, v54, type metadata accessor for ControlTemplateToggle.Option);
    v89 = v54;
  }

  else
  {
    v155 = *(v49 + 32);
    v155(v51, v88, v53);
    (*(v49 + 16))(v52, v51, v53);
    if ((*(v49 + 88))(v52, v53) == *MEMORY[0x1E697CB08])
    {
      (*(v49 + 96))(v52, v53);
      v90 = v135;
      (*(v135 + 32))(v48, v52, v138);
      v91 = v48;
      v92 = sub_192226AF0();
      v94 = sub_1921B01A8(v92, v93, v136);

      if (v94)
      {
        v95 = v148;
        sub_192226AA0();
        (*(v90 + 8))(v91, v138);
        (*(v49 + 8))(v95, v53);
      }

      else
      {
        (*(v90 + 8))(v48, v138);
        (*(v49 + 8))(v148, v53);
        (*(v49 + 56))(v47, 1, 1, v53);
      }
    }

    else
    {
      v96 = v52;
      v97 = *(v49 + 8);
      v97(v51, v53);
      (*(v49 + 56))(v47, 1, 1, v53);
      v97(v96, v53);
    }

    if (v156(v47, 1, v53) == 1)
    {
      sub_192033970(v47, &qword_1EADEF720, &unk_19222E2F0);
      v89 = v153;
      sub_192201E90(v87, v153, type metadata accessor for ControlTemplateToggle.Option);
    }

    else
    {
      v98 = v132;
      v99 = v155;
      v155(v132, v47, v53);
      v100 = v87[1];
      v157 = *v87;
      v101 = v87[2];
      v102 = v137;
      v99(v137, v98, v53);
      v103 = *(v49 + 56);
      v103(v102, 0, 1, v53);
      v104 = v150;
      v105 = v150[6];
      v106 = v87 + v150[7];
      v107 = *v106;
      v156 = *(v106 + 1);
      LODWORD(v155) = v106[16];
      v89 = v153;
      v103(v153 + v105, 1, 1, v53);
      v108 = v89 + v104[7];
      v109 = (v89 + v104[8]);
      v110 = v104[9];
      v50 = v149;
      v111 = (v89 + v110);
      *v89 = v157;
      v89[1] = v100;
      v89[2] = v101;
      v112 = v101;

      sub_19204193C(v102, v89 + v105, &qword_1EADEF720, &unk_19222E2F0);
      v113 = v156;
      *v108 = v107;
      *(v108 + 1) = v113;
      v108[16] = v155;
      *v109 = 0;
      v109[1] = 0;
      *v111 = 0;
      v111[1] = 0;
    }
  }

  v114 = v158;
  v115 = v147;
  sub_19202CFFC(v50 + v158[8], v147, &qword_1EADEEE10, &unk_19222B630);
  v116 = v114[8];
  LODWORD(v157) = *(v50 + v114[9]);
  v117 = v114[11];
  v118 = *(v50 + v114[10]);
  v120 = *(v50 + v117);
  v119 = *(v50 + v117 + 8);
  v121 = *(v50 + v114[12]);
  v122 = sub_192225020();
  v123 = v146;
  (*(*(v122 - 8) + 56))(v146 + v116, 1, 1, v122);
  v124 = (v123 + v114[11]);
  v125 = v152;
  *v123 = v145;
  v123[1] = v125;
  v126 = v151;
  v123[2] = v144;
  v123[3] = v126;
  sub_19212F420(v154, v123 + v114[6]);
  sub_19212F420(v89, v123 + v114[7]);

  result = sub_19204193C(v115, v123 + v116, &qword_1EADEEE10, &unk_19222B630);
  *(v123 + v114[9]) = v157;
  *(v123 + v114[10]) = v118;
  *v124 = v120;
  v124[1] = v119;
  *(v123 + v114[12]) = v121;
  return result;
}

uint64_t ControlTemplateToggle.vectorGlyphAssetLibraryDatas.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v33 - v2;
  v4 = sub_192226B70();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ControlTemplateToggle.Option(0);
  v8 = *(v7 - 8);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF25C8, &qword_192244AC0);
  v12 = *(v8 + 72);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v38 = swift_allocObject();
  v14 = v38 + v13;
  v15 = type metadata accessor for ControlTemplateToggle(0);
  sub_192201E90(v0 + *(v15 + 24), v14, type metadata accessor for ControlTemplateToggle.Option);
  v16 = *(v15 + 28);
  v17 = v4;
  v41 = v0;
  sub_192201E90(v0 + v16, v14 + v12, type metadata accessor for ControlTemplateToggle.Option);
  v40 = v7;
  v18 = *(v7 + 24);
  sub_192201E90(v14, v11, type metadata accessor for ControlTemplateToggle.Option);
  v37 = v18;
  sub_19202CFFC(&v11[v18], v3, &qword_1EADEF720, &unk_19222E2F0);
  sub_192201F5C(v11, type metadata accessor for ControlTemplateToggle.Option);
  v19 = (v5 + 32);
  v39 = v5;
  v20 = *(v5 + 48);
  v21 = v20(v3, 1, v17);
  v42 = (v5 + 32);
  if (v21 == 1)
  {
    sub_192033970(v3, &qword_1EADEF720, &unk_19222E2F0);
    v22 = MEMORY[0x1E69E7CC0];
    v23 = v36;
  }

  else
  {
    v23 = v36;
    v34 = *v19;
    v35 = v17;
    v34(v36, v3, v17);
    v22 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1920C2FCC(0, *(v22 + 2) + 1, 1, v22);
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      v22 = sub_1920C2FCC((v24 > 1), v25 + 1, 1, v22);
    }

    *(v22 + 2) = v25 + 1;
    v26 = &v22[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v25];
    v17 = v35;
    v34(v26, v23, v35);
  }

  sub_192201E90(v14 + v12, v11, type metadata accessor for ControlTemplateToggle.Option);
  sub_19202CFFC(&v11[v37], v3, &qword_1EADEF720, &unk_19222E2F0);
  sub_192201F5C(v11, type metadata accessor for ControlTemplateToggle.Option);
  if (v20(v3, 1, v17) == 1)
  {
    sub_192033970(v3, &qword_1EADEF720, &unk_19222E2F0);
  }

  else
  {
    v27 = *v42;
    (*v42)(v23, v3, v17);
    v28 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1920C2FCC(0, *(v22 + 2) + 1, 1, v22);
    }

    v30 = *(v22 + 2);
    v29 = *(v22 + 3);
    if (v30 >= v29 >> 1)
    {
      v22 = sub_1920C2FCC((v29 > 1), v30 + 1, 1, v22);
    }

    *(v22 + 2) = v30 + 1;
    v27(&v22[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v30], v23, v28);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v31 = sub_1920E9964(v22);

  return v31;
}

uint64_t ControlTemplateToggle.validateIcon(_:)(void (*a1)(char *), uint64_t a2)
{
  v27 = a1;
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v8 = sub_192226B70();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for ControlTemplateToggle(0);
  v15 = *(v14 + 24);
  v25 = v2;
  v16 = v2 + v15;
  v17 = type metadata accessor for ControlTemplateToggle.Option(0);
  sub_19202CFFC(v16 + *(v17 + 24), v7, &qword_1EADEF720, &unk_19222E2F0);
  v18 = *(v9 + 48);
  if (v18(v7, 1, v8) == 1)
  {
    sub_192033970(v7, &qword_1EADEF720, &unk_19222E2F0);
  }

  else
  {
    (*(v9 + 32))(v13, v7, v8);
    v19 = v28;
    v27(v13);
    if (v19)
    {
      return (*(v9 + 8))(v13, v8);
    }

    (*(v9 + 8))(v13, v8);
  }

  v20 = *(v14 + 28);
  v21 = v26;
  sub_19202CFFC(v25 + v20 + *(v17 + 24), v26, &qword_1EADEF720, &unk_19222E2F0);
  if (v18(v21, 1, v8) == 1)
  {
    return sub_192033970(v21, &qword_1EADEF720, &unk_19222E2F0);
  }

  v13 = v24;
  (*(v9 + 32))(v24, v21, v8);
  v27(v13);
  return (*(v9 + 8))(v13, v8);
}

uint64_t ControlTemplateToggle.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v53 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v49 - v4;
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000022, 0x800000019224E9B0);
  if (v0[1])
  {
    v6 = *v0;
    v7 = v0[1];
  }

  else
  {
    v7 = 0xE300000000000000;
    v6 = 7104878;
  }

  MEMORY[0x193B0A990](v6, v7);

  MEMORY[0x193B0A990](0x627573202020200ALL, 0xEF203A656C746974);
  if (v0[3])
  {
    v8 = v0[2];
    v9 = v0[3];
  }

  else
  {
    v9 = 0xE300000000000000;
    v8 = 7104878;
  }

  MEMORY[0x193B0A990](v8, v9);

  MEMORY[0x193B0A990](0x736964202020200ALL, 0xEF203A64656C6261);
  v10 = type metadata accessor for ControlTemplateToggle(0);
  if (*(v0 + v10[10]))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v0 + v10[10]))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x193B0A990](v11, v12);

  MEMORY[0x193B0A990](0xD00000000000001ELL, 0x800000019224A1C0);
  v13 = (v0 + v10[11]);
  if (v13[1])
  {
    v14 = *v13;
    v15 = v13[1];
  }

  else
  {
    v15 = 0xE300000000000000;
    v14 = 7104878;
  }

  MEMORY[0x193B0A990](v14, v15);

  MEMORY[0x193B0A990](0xD000000000000018, 0x800000019224E9E0);
  v16 = v10[6];
  v17 = (v0 + v16);
  if (*(v0 + v16 + 8))
  {
    v18 = *v17;
    v19 = *(v0 + v16 + 8);
  }

  else
  {
    v19 = 0xE300000000000000;
    v18 = 7104878;
  }

  MEMORY[0x193B0A990](v18, v19);

  v52 = "\n    on:\n        value: ";
  MEMORY[0x193B0A990](0xD000000000000011, 0x800000019224EA00);
  v54 = v17[2];
  v20 = ControlAction.description.getter();
  MEMORY[0x193B0A990](v20);

  v51 = "\n        action: ";
  MEMORY[0x193B0A990](0xD000000000000011, 0x800000019224EA20);
  v21 = type metadata accessor for ControlTemplateToggle.Option(0);
  v22 = (v17 + v21[8]);
  if (v22[1])
  {
    v23 = *v22;
    v24 = v22[1];
  }

  else
  {
    v24 = 0xE300000000000000;
    v23 = 7104878;
  }

  MEMORY[0x193B0A990](v23, v24);

  v50 = "\n        status: ";
  MEMORY[0x193B0A990](0xD000000000000015, 0x800000019224EA40);
  v25 = (v17 + v21[9]);
  if (v25[1])
  {
    v26 = *v25;
    v27 = v25[1];
  }

  else
  {
    v27 = 0xE300000000000000;
    v26 = 7104878;
  }

  MEMORY[0x193B0A990](v26, v27);

  MEMORY[0x193B0A990](0x202020202020200ALL, 0xEF203A6E6F636920);
  sub_19202CFFC(v17 + v21[6], v5, &qword_1EADEF720, &unk_19222E2F0);
  v28 = sub_192226B70();
  v29 = *(v28 - 8);
  v49 = *(v29 + 48);
  if (v49(v5, 1, v28) == 1)
  {
    sub_192033970(v5, &qword_1EADEF720, &unk_19222E2F0);
    v30 = 0xE300000000000000;
    v31 = 7104878;
  }

  else
  {
    v31 = sub_192226AB0();
    v30 = v32;
    (*(v29 + 8))(v5, v28);
  }

  MEMORY[0x193B0A990](v31, v30);

  MEMORY[0x193B0A990](0xD000000000000019, 0x800000019224EA60);
  v33 = (v0 + v10[7]);
  if (v33[1])
  {
    v34 = *v33;
    v35 = v33[1];
  }

  else
  {
    v35 = 0xE300000000000000;
    v34 = 7104878;
  }

  MEMORY[0x193B0A990](v34, v35);

  MEMORY[0x193B0A990](0xD000000000000011, v52 | 0x8000000000000000);
  v54 = v33[2];
  v36 = ControlAction.description.getter();
  MEMORY[0x193B0A990](v36);

  MEMORY[0x193B0A990](0xD000000000000011, v51 | 0x8000000000000000);
  v37 = (v33 + v21[8]);
  if (v37[1])
  {
    v38 = *v37;
    v39 = v37[1];
  }

  else
  {
    v39 = 0xE300000000000000;
    v38 = 7104878;
  }

  MEMORY[0x193B0A990](v38, v39);

  MEMORY[0x193B0A990](0xD000000000000015, v50 | 0x8000000000000000);
  v40 = (v33 + v21[9]);
  if (v40[1])
  {
    v41 = *v40;
    v42 = v40[1];
  }

  else
  {
    v42 = 0xE300000000000000;
    v41 = 7104878;
  }

  MEMORY[0x193B0A990](v41, v42);

  MEMORY[0x193B0A990](0x202020202020200ALL, 0xEF203A6E6F636920);
  v43 = v53;
  sub_19202CFFC(v33 + v21[6], v53, &qword_1EADEF720, &unk_19222E2F0);
  if (v49(v43, 1, v28) == 1)
  {
    sub_192033970(v43, &qword_1EADEF720, &unk_19222E2F0);
    v44 = 0xE300000000000000;
    v45 = 7104878;
  }

  else
  {
    v46 = sub_192226AB0();
    v44 = v47;
    (*(v29 + 8))(v43, v28);
    v45 = v46;
  }

  MEMORY[0x193B0A990](v45, v44);

  MEMORY[0x193B0A990](10506, 0xE200000000000000);
  return v55;
}

uint64_t sub_1921FF84C()
{
  v0 = type metadata accessor for ControlTemplateToggle(0);
  __swift_allocate_value_buffer(v0, qword_1EADECAE8);
  v1 = __swift_project_value_buffer(v0, qword_1EADECAE8);
  return sub_1921FF898(v1);
}

uint64_t sub_1921FF898@<X0>(char *a1@<X8>)
{
  v36 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v37 = &v34 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v34 - v4;
  v35 = &v34 - v4;
  v6 = type metadata accessor for ControlTemplateToggle.Option(0);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = sub_192226B70();
  v14 = *(*(v13 - 8) + 56);
  v14(v5, 1, 1, v13);
  v15 = v7[8];
  v14(&v12[v15], 1, 1, v13);
  v16 = &v12[v7[9]];
  v17 = &v12[v7[10]];
  v18 = &v12[v7[11]];
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = 0;
  v19 = &v12[v15];
  v20 = v35;
  sub_19204193C(v35, v19, &qword_1EADEF720, &unk_19222E2F0);
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = 1;
  *v17 = 0;
  *(v17 + 1) = 0;
  *v18 = 0;
  *(v18 + 1) = 0;
  v21 = v20;
  v14(v20, 1, 1, v13);
  v22 = v7[8];
  v14(&v9[v22], 1, 1, v13);
  v23 = &v9[v7[9]];
  v24 = &v9[v7[10]];
  v25 = &v9[v7[11]];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = 0;
  sub_19204193C(v21, &v9[v22], &qword_1EADEF720, &unk_19222E2F0);
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = 1;
  *v24 = 0;
  *(v24 + 1) = 0;
  v26 = type metadata accessor for ControlTemplateToggle(0);
  *v25 = 0;
  *(v25 + 1) = 0;
  v27 = v36;
  sub_192201E90(v9, &v36[v26[6]], type metadata accessor for ControlTemplateToggle.Option);
  sub_192201E90(v12, &v27[v26[7]], type metadata accessor for ControlTemplateToggle.Option);
  v28 = sub_192225020();
  v29 = *(*(v28 - 8) + 56);
  v30 = v37;
  v29(v37, 1, 1, v28);
  v31 = v26[8];
  v29(&v27[v31], 1, 1, v28);
  v32 = &v27[v26[11]];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  sub_19204193C(v30, &v27[v31], &qword_1EADEEE10, &unk_19222B630);
  v27[v26[9]] = 0;
  v27[v26[10]] = 0;
  *v32 = 0;
  *(v32 + 1) = 0;
  v27[v26[12]] = 0;
  sub_192201F5C(v9, type metadata accessor for ControlTemplateToggle.Option);
  return sub_192201F5C(v12, type metadata accessor for ControlTemplateToggle.Option);
}

uint64_t static ControlTemplateToggle.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADECAE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplateToggle(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADECAE8);
  swift_beginAccess();
  return sub_192201E90(v3, a1, type metadata accessor for ControlTemplateToggle);
}

uint64_t static ControlTemplateToggle.empty.setter(uint64_t a1)
{
  if (qword_1EADECAE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplateToggle(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADECAE8);
  swift_beginAccess();
  sub_192201EF8(a1, v3);
  swift_endAccess();
  return sub_192201F5C(a1, type metadata accessor for ControlTemplateToggle);
}

uint64_t (*static ControlTemplateToggle.empty.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EADECAE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for ControlTemplateToggle(0);
  __swift_project_value_buffer(v1, qword_1EADECAE8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1921FFE20@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADECAE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplateToggle(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADECAE8);
  swift_beginAccess();
  return sub_192201E90(v3, a1, type metadata accessor for ControlTemplateToggle);
}

uint64_t sub_1921FFEC0(uint64_t a1)
{
  if (qword_1EADECAE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplateToggle(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADECAE8);
  swift_beginAccess();
  sub_192201EF8(a1, v3);
  return swift_endAccess();
}

id ControlTemplateToggle.Option.action.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

void ControlTemplateToggle.Option.action.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
}

uint64_t ControlTemplateToggle.Option.tint.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for ControlTemplateToggle.Option(0);
  v8 = v3 + *(result + 28);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t ControlTemplateToggle.Option.status.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlTemplateToggle.Option(0) + 32));

  return v1;
}

void ControlTemplateToggle.Option.status.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlTemplateToggle.Option(0) + 32));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t ControlTemplateToggle.Option.actionHint.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlTemplateToggle.Option(0) + 36));

  return v1;
}

void ControlTemplateToggle.Option.actionHint.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlTemplateToggle.Option(0) + 36));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_192200308()
{
  v1 = *v0;
  v2 = 0x65756C6176;
  v3 = 1953393012;
  v4 = 0x737574617473;
  if (v1 != 4)
  {
    v4 = 0x69486E6F69746361;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F69746361;
  if (v1 != 1)
  {
    v5 = 1852793705;
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

uint64_t sub_1922003AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_192202F68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1922003D4(uint64_t a1)
{
  v2 = sub_19220291C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192200410(uint64_t a1)
{
  v2 = sub_19220291C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlTemplateToggle.Option.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF25D0, &qword_192244AC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19220291C();
  sub_192228B90();
  LOBYTE(v15) = 0;
  sub_192228830();
  if (!v2)
  {
    *&v15 = *(v3 + 16);
    v9 = v15;
    v17 = 1;
    sub_1920ECE4C();
    v10 = v9;
    sub_1922288C0();

    v11 = type metadata accessor for ControlTemplateToggle.Option(0);
    LOBYTE(v15) = 2;
    sub_192226B70();
    sub_192202970(&qword_1EADEE4B0, MEMORY[0x1E697CB10], MEMORY[0x1E697CB18]);
    sub_192228850();
    v12 = (v3 + *(v11 + 28));
    v13 = *(v12 + 16);
    v15 = *v12;
    v16 = v13;
    v17 = 3;
    sub_1920CF350();
    sub_192228850();
    LOBYTE(v15) = 4;
    sub_192228830();
    LOBYTE(v15) = 5;
    sub_192228830();
  }

  return (*(v6 + 8))(v8, v5);
}

void ControlTemplateToggle.Option.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF25D8, &qword_192244AD0);
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v9 = type metadata accessor for ControlTemplateToggle.Option(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v12 + 24);
  v14 = sub_192226B70();
  v15 = *(*(v14 - 8) + 56);
  v42 = v13;
  v16 = v11;
  v15(v11 + v13, 1, 1, v14);
  v17 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_19220291C();
  v40 = v8;
  v18 = v41;
  sub_192228B70();
  if (v18)
  {
    v21 = v42;
    __swift_destroy_boxed_opaque_existential_1(v43);

    sub_192033970(v16 + v21, &qword_1EADEF720, &unk_19222E2F0);
  }

  else
  {
    v41 = v5;
    v36 = v9;
    v20 = v38;
    v19 = v39;
    LOBYTE(v44) = 0;
    *v16 = sub_192228730();
    v16[1] = v22;
    v46 = 1;
    sub_1920ECEA0();
    sub_1922287C0();
    v23 = v42;
    v16[2] = v44;
    LOBYTE(v44) = 2;
    sub_192202970(&qword_1EADEDCE8, MEMORY[0x1E697CB10], MEMORY[0x1E697CB28]);
    v24 = v41;
    sub_192228750();
    sub_19204193C(v24, v16 + v23, &qword_1EADEF720, &unk_19222E2F0);
    v46 = 3;
    sub_1920CF44C();
    sub_192228750();
    v25 = v36;
    v26 = v16 + *(v36 + 28);
    v27 = v45;
    *v26 = v44;
    v26[16] = v27;
    LOBYTE(v44) = 4;
    v28 = sub_192228730();
    v29 = (v16 + *(v25 + 32));
    *v29 = v28;
    v29[1] = v30;
    LOBYTE(v44) = 5;
    v31 = sub_192228730();
    v32 = v25;
    v34 = v33;
    v35 = (v16 + *(v32 + 36));
    (*(v20 + 8))(v40, v19);
    *v35 = v31;
    v35[1] = v34;
    sub_192201E90(v16, v37, type metadata accessor for ControlTemplateToggle.Option);
    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_192201F5C(v16, type metadata accessor for ControlTemplateToggle.Option);
  }
}

uint64_t ControlTemplateToggle.title.getter()
{
  v1 = *v0;

  return v1;
}

void ControlTemplateToggle.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t ControlTemplateToggle.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void ControlTemplateToggle.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t ControlTemplateToggle.on.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ControlTemplateToggle(0) + 24);

  return sub_1922029B8(a1, v3);
}

uint64_t ControlTemplateToggle.off.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ControlTemplateToggle(0) + 28);

  return sub_1922029B8(a1, v3);
}

uint64_t ControlTemplateToggle.privacySensitive.setter(char a1)
{
  result = type metadata accessor for ControlTemplateToggle(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ControlTemplateToggle.disabled.setter(char a1)
{
  result = type metadata accessor for ControlTemplateToggle(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t ControlTemplateToggle.accessibilityIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlTemplateToggle(0) + 44));

  return v1;
}

void ControlTemplateToggle.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlTemplateToggle(0) + 44));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t ControlTemplateToggle.rasterizedImagesAllowed.setter(char a1)
{
  result = type metadata accessor for ControlTemplateToggle(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

unint64_t sub_192201270(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x656C746974;
    v5 = 28271;
    if (a1 != 2)
    {
      v5 = 6710895;
    }

    if (a1)
    {
      v4 = 0x656C746974627573;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x64656C6261736964;
    if (a1 != 6)
    {
      v1 = 0xD000000000000017;
    }

    v2 = 0x746169636F737361;
    if (a1 != 4)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_192201390@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_192203160(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1922013B8(uint64_t a1)
{
  v2 = sub_192202A1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1922013F4(uint64_t a1)
{
  v2 = sub_192202A1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlTemplateToggle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF25E0, &qword_192244AD8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192202A1C();
  sub_192228B90();
  v8[31] = 0;
  sub_192228830();
  if (!v1)
  {
    v8[30] = 1;
    sub_192228830();
    type metadata accessor for ControlTemplateToggle(0);
    v8[29] = 2;
    type metadata accessor for ControlTemplateToggle.Option(0);
    sub_192202970(&qword_1EADECAD8, type metadata accessor for ControlTemplateToggle.Option, &protocol conformance descriptor for ControlTemplateToggle.Option);
    sub_1922288C0();
    v8[28] = 3;
    sub_1922288C0();
    v8[27] = 4;
    sub_192225020();
    sub_192202970(&qword_1ED74BB38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_192228850();
    v8[26] = 5;
    sub_192228870();
    v8[25] = 6;
    sub_192228870();
    v8[24] = 7;
    sub_192228830();
    v8[15] = 8;
    sub_192228870();
  }

  return (*(v4 + 8))(v6, v3);
}

void ControlTemplateToggle.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = &v43 - v4;
  v5 = type metadata accessor for ControlTemplateToggle.Option(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF25E8, &qword_192244AE0);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v12 = &v43 - v11;
  v13 = type metadata accessor for ControlTemplateToggle(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = v16;
  v17 = v16[8];
  v18 = sub_192225020();
  v19 = *(*(v18 - 8) + 56);
  v53 = v17;
  v20 = v15;
  v19(v15 + v17, 1, 1, v18);
  v21 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_192202A1C();
  v50 = v12;
  v22 = v55;
  sub_192228B70();
  if (v22)
  {
    v55 = v22;
    v23 = 0;
    v24 = 0;
    v26 = v52;
    v25 = v53;
  }

  else
  {
    v45 = v18;
    v46 = v10;
    v64 = 0;
    *v15 = sub_192228730();
    v15[1] = v27;
    v63 = 1;
    v28 = sub_192228730();
    v55 = 0;
    v26 = v52;
    *(v20 + 16) = v28;
    *(v20 + 24) = v29;
    v62 = 2;
    v30 = sub_192202970(&unk_1EADED048, type metadata accessor for ControlTemplateToggle.Option, &protocol conformance descriptor for ControlTemplateToggle.Option);
    v44 = v20;
    v31 = v46;
    v43 = v30;
    v32 = v55;
    sub_1922287C0();
    v55 = v32;
    v25 = v53;
    if (v32)
    {
      (*(v49 + 8))(v50, v51);
      v23 = 0;
      v24 = 0;
      v20 = v44;
    }

    else
    {
      sub_19212F420(v31, v44 + v26[6]);
      v61 = 3;
      v33 = v55;
      sub_1922287C0();
      v55 = v33;
      if (v33)
      {
        (*(v49 + 8))(v50, v51);
        v24 = 0;
        v23 = 1;
        v20 = v44;
      }

      else
      {
        v20 = v44;
        sub_19212F420(v7, v44 + v26[7]);
        v60 = 4;
        sub_192202970(qword_1ED7488E8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
        v34 = v48;
        v35 = v55;
        sub_192228750();
        v55 = v35;
        if (!v35)
        {
          sub_19204193C(v34, v20 + v25, &qword_1EADEEE10, &unk_19222B630);
          v59 = 5;
          v36 = v55;
          v37 = sub_192228770();
          if (!v36)
          {
            *(v20 + v26[9]) = v37 & 1;
            v58 = 6;
            *(v20 + v26[10]) = sub_192228770() & 1;
            v57 = 7;
            v38 = sub_192228730();
            v39 = (v20 + v26[11]);
            *v39 = v38;
            v39[1] = v40;
            v56 = 8;
            v41 = sub_192228770();
            v55 = 0;
            v42 = v41;
            (*(v49 + 8))(v50, v51);
            *(v20 + v26[12]) = v42 & 1;
            sub_192201E90(v20, v47, type metadata accessor for ControlTemplateToggle);
            __swift_destroy_boxed_opaque_existential_1(v54);
            sub_192201F5C(v20, type metadata accessor for ControlTemplateToggle);
            return;
          }

          v55 = v36;
        }

        (*(v49 + 8))(v50, v51);
        v23 = 1;
        v24 = 1;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v54);

  if (v23)
  {
    sub_192201F5C(v20 + v26[6], type metadata accessor for ControlTemplateToggle.Option);
  }

  if (v24)
  {
    sub_192201F5C(v20 + v26[7], type metadata accessor for ControlTemplateToggle.Option);
  }

  sub_192033970(v20 + v25, &qword_1EADEEE10, &unk_19222B630);
}

uint64_t sub_192201E90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_192201EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTemplateToggle(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_192201F5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s9WidgetKit21ControlTemplateToggleV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_192225020();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7D0, &qword_19222E728);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_1922289A0() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v15)
  {
    goto LABEL_26;
  }

  v16 = a1[3];
  v17 = a2[3];
  if (v16)
  {
    if (!v17 || (a1[2] != a2[2] || v16 != v17) && (sub_1922289A0() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v17)
  {
    goto LABEL_26;
  }

  v18 = type metadata accessor for ControlTemplateToggle(0);
  if (!_s9WidgetKit21ControlTemplateToggleV6OptionV2eeoiySbAE_AEtFZ_0((a1 + v18[6]), (a2 + v18[6])) || !_s9WidgetKit21ControlTemplateToggleV6OptionV2eeoiySbAE_AEtFZ_0((a1 + v18[7]), (a2 + v18[7])))
  {
    goto LABEL_26;
  }

  v19 = v18[8];
  v20 = *(v11 + 48);
  sub_19202CFFC(a1 + v19, v13, &qword_1EADEEE10, &unk_19222B630);
  v32 = v20;
  sub_19202CFFC(a2 + v19, &v13[v20], &qword_1EADEEE10, &unk_19222B630);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) != 1)
  {
    sub_19202CFFC(v13, v10, &qword_1EADEEE10, &unk_19222B630);
    if (v21(&v13[v32], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v32], v4);
      sub_192202970(&qword_1EADECF08, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v22 = sub_192227910();
      v23 = *(v5 + 8);
      v23(v7, v4);
      v23(v10, v4);
      sub_192033970(v13, &qword_1EADEEE10, &unk_19222B630);
      if ((v22 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    (*(v5 + 8))(v10, v4);
LABEL_22:
    sub_192033970(v13, &qword_1EADEF7D0, &qword_19222E728);
    goto LABEL_26;
  }

  if (v21(&v13[v32], 1, v4) != 1)
  {
    goto LABEL_22;
  }

  sub_192033970(v13, &qword_1EADEEE10, &unk_19222B630);
LABEL_24:
  if (*(a1 + v18[9]) != *(a2 + v18[9]) || *(a1 + v18[10]) != *(a2 + v18[10]))
  {
    goto LABEL_26;
  }

  v26 = v18[11];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_1922289A0() & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_35:
    v24 = *(a1 + v18[12]) ^ *(a2 + v18[12]) ^ 1;
    return v24 & 1;
  }

  if (!v30)
  {
    goto LABEL_35;
  }

LABEL_26:
  v24 = 0;
  return v24 & 1;
}

BOOL _s9WidgetKit21ControlTemplateToggleV6OptionV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_192226B70();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7D8, qword_19222E730);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_1922289A0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v43 = v5;
  v16 = a1[2];
  v17 = a2[2];
  if (v16)
  {
    if (!v17)
    {
      return 0;
    }

    sub_1920EDA18();
    v18 = v17;
    v19 = v16;
    v20 = v18;
    v21 = v19;
    v22 = sub_1922281D0();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v42 = type metadata accessor for ControlTemplateToggle.Option(0);
  v23 = *(v42 + 24);
  v24 = *(v11 + 48);
  sub_19202CFFC(a1 + v23, v13, &qword_1EADEF720, &unk_19222E2F0);
  sub_19202CFFC(a2 + v23, &v13[v24], &qword_1EADEF720, &unk_19222E2F0);
  v25 = v43;
  v26 = *(v43 + 48);
  if (v26(v13, 1, v4) != 1)
  {
    sub_19202CFFC(v13, v10, &qword_1EADEF720, &unk_19222E2F0);
    if (v26(&v13[v24], 1, v4) != 1)
    {
      (*(v25 + 32))(v7, &v13[v24], v4);
      sub_192202970(&qword_1EADEF7E0, MEMORY[0x1E697CB10], MEMORY[0x1E697CB20]);
      v28 = sub_192227910();
      v29 = *(v25 + 8);
      v29(v7, v4);
      v29(v10, v4);
      sub_192033970(v13, &qword_1EADEF720, &unk_19222E2F0);
      if ((v28 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_22;
    }

    (*(v25 + 8))(v10, v4);
LABEL_18:
    sub_192033970(v13, &qword_1EADEF7D8, qword_19222E730);
    return 0;
  }

  if (v26(&v13[v24], 1, v4) != 1)
  {
    goto LABEL_18;
  }

  sub_192033970(v13, &qword_1EADEF720, &unk_19222E2F0);
LABEL_22:
  v30 = v42;
  v31 = *(v42 + 28);
  if (*(a1 + v31 + 16))
  {
    if ((*(a2 + v31 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + v31 + 16) & 1) != 0 || (sub_192227290() & 1) == 0)
  {
    return 0;
  }

  v32 = *(v30 + 32);
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36 || (*v33 != *v35 || v34 != v36) && (sub_1922289A0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v37 = *(v30 + 36);
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    return v41 && (*v38 == *v40 && v39 == v41 || (sub_1922289A0() & 1) != 0);
  }

  return !v41;
}

unint64_t sub_19220291C()
{
  result = qword_1EADED860;
  if (!qword_1EADED860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED860);
  }

  return result;
}

uint64_t sub_192202970(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1922029B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTemplateToggle.Option(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_192202A1C()
{
  result = qword_1EADED878;
  if (!qword_1EADED878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED878);
  }

  return result;
}

uint64_t sub_192202A70(void *a1)
{
  a1[1] = sub_192202970(&qword_1EADED848, type metadata accessor for ControlTemplateToggle, &protocol conformance descriptor for ControlTemplateToggle);
  a1[2] = sub_192202970(&qword_1EADED040, type metadata accessor for ControlTemplateToggle, &protocol conformance descriptor for ControlTemplateToggle);
  result = sub_192202970(&qword_1EADED038, type metadata accessor for ControlTemplateToggle, &protocol conformance descriptor for ControlTemplateToggle);
  a1[3] = result;
  return result;
}

void sub_192202B44(uint64_t a1)
{
  sub_192040778(319, &qword_1ED74B590, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ControlTemplateToggle.Option(319);
    if (v2 <= 0x3F)
    {
      sub_192040A00(319, &qword_1ED74C4C0, MEMORY[0x1E6968FB0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_192202C4C(uint64_t a1)
{
  sub_192040778(319, &qword_1ED74B590, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_192040A00(319, &qword_1ED74B540, MEMORY[0x1E697CB10]);
    if (v2 <= 0x3F)
    {
      sub_192040778(319, &qword_1EADEE808, MEMORY[0x1E6981540]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_192202D5C()
{
  result = qword_1EADF25F0;
  if (!qword_1EADF25F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF25F0);
  }

  return result;
}

unint64_t sub_192202DB4()
{
  result = qword_1EADF25F8;
  if (!qword_1EADF25F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF25F8);
  }

  return result;
}

unint64_t sub_192202E0C()
{
  result = qword_1EADED868;
  if (!qword_1EADED868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED868);
  }

  return result;
}

unint64_t sub_192202E64()
{
  result = qword_1EADED870;
  if (!qword_1EADED870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED870);
  }

  return result;
}

unint64_t sub_192202EBC()
{
  result = qword_1EADED850;
  if (!qword_1EADED850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED850);
  }

  return result;
}

unint64_t sub_192202F14()
{
  result = qword_1EADED858;
  if (!qword_1EADED858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED858);
  }

  return result;
}

uint64_t sub_192202F68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1953393012 && a2 == 0xE400000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69486E6F69746361 && a2 == 0xEA0000000000746ELL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1922289A0();

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

uint64_t sub_192203160(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 28271 && a2 == 0xE200000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6710895 && a2 == 0xE300000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xED00004C52556465 || (sub_1922289A0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000192249E50 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64656C6261736964 && a2 == 0xE800000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000192249E70 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000192249E90 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}