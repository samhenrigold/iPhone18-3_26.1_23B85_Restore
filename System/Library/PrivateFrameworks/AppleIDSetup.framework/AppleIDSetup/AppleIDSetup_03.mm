unint64_t sub_2405BD46C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73A0, &qword_240762648);
    v3 = sub_24075AA04();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2405BB37C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_2405BD570(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7390, &qword_240762638);
    v3 = sub_24075AA04();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_2405BB37C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_2405BD674(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73C8, &unk_240762670);
    v3 = sub_24075AA04();
    v4 = a1 + 32;

    while (1)
    {
      sub_2405B044C(v4, v13, &unk_27E4B73D0, &qword_240770790);
      result = sub_2405BB338(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2405BE38C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_2405BD7B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73C0, &qword_24076F0F0);
    v3 = sub_24075AA04();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_2405BB3F4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
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

unint64_t sub_2405BD890(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7398, &qword_240762640);
    v3 = sub_24075AA04();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_2405BB2A4(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

void sub_2405BD990(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a7;
  v38 = a4;
  v39 = a6;
  v37 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73E0, &qword_240762688);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = sub_240759E04();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    if (qword_27E4B5E98 != -1)
    {
      swift_once();
    }

    v17 = sub_240759AE4();
    __swift_project_value_buffer(v17, qword_27E4B71B0);
    v18 = sub_240759AC4();
    v19 = sub_24075A5E4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_240579000, v18, v19, "** Incoming message was not signed (but expected) **", v20, 2u);
      MEMORY[0x245CC76B0](v20, -1, -1);
    }

    type metadata accessor for MessageUnpacker.Failure(0, v39, v44, v21);
    swift_getWitnessTable();
    swift_allocError();
    *v22 = xmmword_240762440;
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    swift_willThrow();
    return;
  }

  v23 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  sub_2405B044C(a5 + *(v24 + 40), v12, &qword_27E4B73E0, &qword_240762688);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2405BB9D4(a1, a2);
    sub_2405B8A50(v12, &qword_27E4B73E0, &qword_240762688);
LABEL_15:
    if (qword_27E4B5E98 != -1)
    {
      swift_once();
    }

    v30 = sub_240759AE4();
    __swift_project_value_buffer(v30, qword_27E4B71B0);
    v31 = sub_240759AC4();
    v32 = sub_24075A5E4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_240579000, v31, v32, "** Incoming message signature is not valid (and enforced) **", v33, 2u);
      MEMORY[0x245CC76B0](v33, -1, -1);
    }

    type metadata accessor for MessageUnpacker.Failure(0, v39, v44, v34);
    swift_getWitnessTable();
    swift_allocError();
    *v35 = xmmword_240762430;
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    swift_willThrow();
    sub_24058C9E4(a1, v23);
    return;
  }

  (*(v14 + 32))(v16, v12, v13);
  v42 = v37;
  v43 = v38;
  v40 = a1;
  v41 = a2;
  sub_2405BB9D4(a1, a2);
  sub_2405BE3F8();
  v25 = sub_240759DD4();
  (*(v14 + 8))(v16, v13);
  if ((v25 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (qword_27E4B5E98 != -1)
  {
    swift_once();
  }

  v26 = sub_240759AE4();
  __swift_project_value_buffer(v26, qword_27E4B71B0);
  v27 = sub_240759AC4();
  v28 = sub_24075A5D4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_240579000, v27, v28, "Validated signature", v29, 2u);
    MEMORY[0x245CC76B0](v29, -1, -1);
  }

  sub_24058C9E4(a1, v23);
}

void sub_2405BDF54(uint64_t a1)
{
  if (!qword_27E4B7280[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B71D0, &unk_240770200);
    v1 = sub_24075A714();
    if (!v2)
    {
      atomic_store(v1, qword_27E4B7280);
    }
  }
}

void sub_2405BDFB8()
{
  if (!qword_27E4B6CB0)
  {
    v0 = sub_24075A714();
    if (!v1)
    {
      atomic_store(v0, &qword_27E4B6CB0);
    }
  }
}

void sub_2405BE020(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  a4(319, a2, a3);
  if (v4 <= 0x3F)
  {
    sub_2405BDF54(319);
    if (v5 <= 0x3F)
    {
      sub_2405BDFB8();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71C8, &unk_240762450);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71C8, &unk_240762450);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2405BE254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup15MessageUnpackerV7FailureOyx_G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2405BE2B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 32))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2405BE308(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_2405BE368(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

_OWORD *sub_2405BE38C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2405BE3F8()
{
  result = qword_27E4B73E8;
  if (!qword_27E4B73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B73E8);
  }

  return result;
}

unint64_t sub_2405BE4A8()
{
  result = qword_27E4B7410;
  if (!qword_27E4B7410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B7408, &qword_2407626A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7410);
  }

  return result;
}

uint64_t sub_2405BE560()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E506810);
  __swift_project_value_buffer(v0, qword_27E506810);
  return sub_240759AD4();
}

uint64_t sub_2405BE5E0()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4B7420);
  v1 = __swift_project_value_buffer(v0, qword_27E4B7420);
  if (qword_27E4B5EA0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27E506810);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static _Coordinated.CommonError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v5 != 2)
      {
        goto LABEL_19;
      }

      sub_2405BE874(*a1, 2uLL);
      v7 = v4;
      v8 = 2;
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_10;
      }

      if (v5 != 3)
      {
        goto LABEL_19;
      }

      sub_2405BE874(*a1, 3uLL);
      v7 = v4;
      v8 = 3;
    }

LABEL_18:
    sub_2405BE874(v7, v8);
    return 1;
  }

  if (!v3)
  {
    if (v5)
    {
      goto LABEL_19;
    }

    sub_2405BE874(*a1, 0);
    v7 = v4;
    v8 = 0;
    goto LABEL_18;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      v6 = 1;
      sub_2405BE874(*a1, 1uLL);
      sub_2405BE874(v4, 1uLL);
      return v6;
    }

LABEL_19:
    sub_2405BE860(*a2, a2[1]);
    sub_2405BE860(v2, v3);
    sub_2405BE874(v2, v3);
    sub_2405BE874(v4, v5);
    return 0;
  }

LABEL_10:
  if (v5 < 4)
  {
    goto LABEL_19;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_2405BE860(*a1, v3);
    sub_2405BE860(v2, v3);
    sub_2405BE874(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_18;
  }

  v10 = sub_24075ACF4();
  sub_2405BE860(v4, v5);
  sub_2405BE860(v2, v3);
  sub_2405BE874(v2, v3);
  sub_2405BE874(v4, v5);
  return v10 & 1;
}

uint64_t sub_2405BE860(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_2405BE874(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_2405BE88C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = &v5 - v1;
  (*(v3 + 16))(&v5 - v1);
  return sub_2405BE9EC(v2);
}

uint64_t sub_2405BE94C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_2405BE9EC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t _Coordinated.receiver.getter()
{
  v1 = *(v0 + *(*v0 + 104));

  return v1;
}

uint64_t sub_2405BEB4C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(*v2 + 120));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_24058CA60(v4, v5);
}

uint64_t sub_2405BEBE8()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  if (*(v0 + v2) == -1)
  {
    *(v0 + v2) = 0;
    v1 = *v0;
  }

  v3 = *(v1 + 136);
  v4 = *(v0 + v3);
  v5 = __CFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v0 + v3) = v6;
    return *(v0 + *(*v0 + 136));
  }

  return result;
}

uint64_t sub_2405BEC58(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*v1 + 80);
  v2[4] = v3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v4 = sub_24075AEE4();
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for _Coordinated.ValueUpdate.Response(0, v3, v5, v6);
  v2[8] = v7;
  v2[9] = *(v7 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405BEDCC, v1, 0);
}

uint64_t sub_2405BEDCC()
{
  v31 = v0;
  if (qword_27E4B5EA8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[2];
  v5 = sub_240759AE4();
  v0[13] = __swift_project_value_buffer(v5, qword_27E4B7420);
  v6 = *(v3 + 16);
  v0[14] = v6;
  v0[15] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_240759AC4();
  v8 = sub_24075A5D4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  if (v9)
  {
    v11 = v0[11];
    v13 = v0[8];
    v12 = v0[9];
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v14 = 136315138;
    v6(v11, v10, v13);
    v15 = sub_24075A0E4();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v10, v13);
    v19 = sub_2405BBA7C(v15, v17, &v30);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_240579000, v7, v8, "Received _Coordinated value update: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x245CC76B0](v29, -1, -1);
    MEMORY[0x245CC76B0](v14, -1, -1);
  }

  else
  {
    v20 = v0[8];
    v21 = v0[9];

    v18 = *(v21 + 8);
    v18(v10, v20);
  }

  v0[16] = v18;
  if (*(v0[3] + *(*v0[3] + 128)))
  {
    v22 = sub_240759AC4();
    v23 = sub_24075A5E4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_240579000, v22, v23, "_Coordinated value is actually invalidated, rejecting this update", v24, 2u);
      MEMORY[0x245CC76B0](v24, -1, -1);
    }

    v25 = v0[1];

    return v25(0);
  }

  else
  {
    (*(*(v0[4] - 8) + 16))(v0[7], v0[2] + *(v0[8] + 32));
    swift_storeEnumTagMultiPayload();
    v27 = swift_task_alloc();
    v0[17] = v27;
    *v27 = v0;
    v27[1] = sub_2405BF18C;
    v28 = v0[2];

    return sub_2405BFD7C(v28);
  }
}

uint64_t sub_2405BF18C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_2405BF97C;
  }

  else
  {
    v4 = sub_2405BF2B8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2405BF2B8(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (**(v1 + 16) == *(v2 + *(*v2 + 136)))
  {
    v3 = (v2 + *(*v2 + 120));
    v4 = *v3;
    *(v1 + 152) = *v3;
    v5 = v3[1];
    *(v1 + 160) = v5;
    if (v4)
    {
      sub_24057B5BC(v4, v5);
      v26 = (v4 + *v4);
      v6 = swift_task_alloc();
      *(v1 + 168) = v6;
      *v6 = v1;
      v6[1] = sub_2405BF668;
      v7 = *(v1 + 56);

      return v26(v7);
    }

    v18 = sub_240759AC4();
    v19 = sub_24075A5D4();
    v20 = os_log_type_enabled(v18, v19);
    v22 = *(v1 + 48);
    v21 = *(v1 + 56);
    v23 = *(v1 + 40);
    if (v20)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_240579000, v18, v19, "Ignoring value update response because we do not have an active update handler", v24, 2u);
      MEMORY[0x245CC76B0](v24, -1, -1);
    }

    (*(v22 + 8))(v21, v23);
  }

  else
  {
    (*(v1 + 112))(*(v1 + 80));

    v9 = sub_240759AC4();
    v10 = sub_24075A5E4();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v1 + 128);
    v13 = *(v1 + 80);
    v14 = *(v1 + 64);
    v15 = *(v1 + 24);
    if (v11)
    {
      v16 = swift_slowAlloc();
      *v16 = 134218240;
      v17 = *v13;
      v12(v13, v14);
      *(v16 + 4) = v17;
      *(v16 + 12) = 2048;
      *(v16 + 14) = *(v15 + *(*v15 + 136));

      _os_log_impl(&dword_240579000, v9, v10, "Received update with sequence ID %llu but we're currently at %llu", v16, 0x16u);
      MEMORY[0x245CC76B0](v16, -1, -1);
    }

    else
    {
      v12(*(v1 + 80), *(v1 + 64));
    }

    (*(*(v1 + 48) + 8))(*(v1 + 56), *(v1 + 40));
  }

  v25 = *(v1 + 8);

  return v25(0);
}

uint64_t sub_2405BF668(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_2405BF780, v2, 0);
}

uint64_t sub_2405BF780(uint64_t a1)
{
  v2 = *(v1 + 176);
  v3 = sub_240759AC4();
  v4 = sub_24075A5D4();
  v5 = os_log_type_enabled(v3, v4);
  if (v2 == 1)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_240579000, v3, v4, "Clearing current update handler", v6, 2u);
      MEMORY[0x245CC76B0](v6, -1, -1);
    }

    v8 = *(v1 + 152);
    v7 = *(v1 + 160);
    v10 = *(v1 + 48);
    v9 = *(v1 + 56);
    v11 = *(v1 + 40);
    v12 = *(v1 + 24);

    v13 = (v12 + *(*v12 + 120));
    v14 = *v13;
    v15 = v13[1];
    *v13 = 0;
    v13[1] = 0;
    sub_24058CA60(v14, v15);
    sub_24058CA60(v8, v7);
    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v17 = *(v1 + 152);
    v16 = *(v1 + 160);
    v19 = *(v1 + 48);
    v18 = *(v1 + 56);
    v20 = *(v1 + 40);
    if (v5)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_240579000, v3, v4, "Not clearing current update handler", v21, 2u);
      MEMORY[0x245CC76B0](v21, -1, -1);
    }

    sub_24058CA60(v17, v16);

    (*(v19 + 8))(v18, v20);
  }

  v22 = *(v1 + 8);

  return v22(v2);
}

uint64_t sub_2405BF97C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 56);
  (*(*(v0 + 48) + 8))(v2, *(v0 + 40));
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v3 = *(v0 + 24);
  if (**(v0 + 16) == *(v3 + *(*v3 + 136)))
  {
    v4 = (v3 + *(*v3 + 120));
    v5 = *v4;
    *(v0 + 152) = *v4;
    v6 = v4[1];
    *(v0 + 160) = v6;
    if (v5)
    {
      sub_24057B5BC(v5, v6);
      v27 = (v5 + *v5);
      v7 = swift_task_alloc();
      *(v0 + 168) = v7;
      *v7 = v0;
      v7[1] = sub_2405BF668;
      v8 = *(v0 + 56);

      return v27(v8);
    }

    v19 = sub_240759AC4();
    v20 = sub_24075A5D4();
    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 48);
    v22 = *(v0 + 56);
    v24 = *(v0 + 40);
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_240579000, v19, v20, "Ignoring value update response because we do not have an active update handler", v25, 2u);
      MEMORY[0x245CC76B0](v25, -1, -1);
    }

    (*(v23 + 8))(v22, v24);
  }

  else
  {
    (*(v0 + 112))(*(v0 + 80));

    v10 = sub_240759AC4();
    v11 = sub_24075A5E4();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 128);
    v14 = *(v0 + 80);
    v15 = *(v0 + 64);
    v16 = *(v0 + 24);
    if (v12)
    {
      v17 = swift_slowAlloc();
      *v17 = 134218240;
      v18 = *v14;
      v13(v14, v15);
      *(v17 + 4) = v18;
      *(v17 + 12) = 2048;
      *(v17 + 14) = *(v16 + *(*v16 + 136));

      _os_log_impl(&dword_240579000, v10, v11, "Received update with sequence ID %llu but we're currently at %llu", v17, 0x16u);
      MEMORY[0x245CC76B0](v17, -1, -1);
    }

    else
    {
      v13(*(v0 + 80), *(v0 + 64));
    }

    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  }

  v26 = *(v0 + 8);

  return v26(0);
}

uint64_t sub_2405BFD7C(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *v1;
  v4 = sub_2407597B4();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v5 = *(v3 + 80);
  v2[26] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v2[27] = v6;
  v2[28] = type metadata accessor for _Coordinated.AsyncThrowingTapHandle(255, v5, v6, MEMORY[0x277D84950]);
  v2[29] = swift_getTupleTypeMetadata2();
  v7 = sub_24075A714();
  v2[30] = v7;
  v2[31] = *(v7 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405BFF58, v1, 0);
}

uint64_t sub_2405BFF58()
{
  v66 = v0;
  if (qword_27E4B5EA8 != -1)
  {
    swift_once();
  }

  v1 = sub_240759AE4();
  *(v0 + 272) = __swift_project_value_buffer(v1, qword_27E4B7420);

  v2 = sub_240759AC4();
  v3 = sub_24075A5D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    swift_beginAccess();
    sub_2405D5548(&qword_27E4B7438, MEMORY[0x277CC9600]);

    v5 = sub_240759F94();

    *(v4 + 4) = v5;

    _os_log_impl(&dword_240579000, v2, v3, "Expected to pre-process value update with %ld taps", v4, 0xCu);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }

  else
  {
  }

  v6 = *(v0 + 144);
  v7 = *(*v6 + 112);
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v0 + 280) = v8;
  v9 = *(v8 + 32);
  *(v0 + 352) = v9;
  v10 = -1;
  v11 = -1 << v9;
  if (-(-1 << v9) < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v8 + 64);

  if (v12)
  {
    v13 = 0;
LABEL_13:
    v16 = *(v0 + 256);
    v17 = *(v0 + 232);
    v18 = *(v0 + 200);
    v19 = *(v0 + 152);
    v20 = *(v0 + 160);
    v21 = (v12 - 1) & v12;
    v22 = __clz(__rbit64(v12)) | (v13 << 6);
    (*(v20 + 16))(v18, *(v8 + 48) + *(v20 + 72) * v22, v19);
    v23 = *(*(v8 + 56) + 8 * v22);
    v24 = *(v17 + 48);
    (*(v20 + 32))(v16, v18, v19);
    *(v16 + v24) = v23;
    v25 = *(v17 - 8);
    (*(v25 + 56))(v16, 0, 1, v17);

    v15 = v13;
  }

  else
  {
    v14 = 0;
    v15 = ((63 - v11) >> 6) - 1;
    while (v15 != v14)
    {
      v13 = v14 + 1;
      v12 = *(v8 + 72 + 8 * v14++);
      if (v12)
      {
        goto LABEL_13;
      }
    }

    v25 = *(*(v0 + 232) - 8);
    (*(v25 + 56))(*(v0 + 256), 1, 1);
    v21 = 0;
  }

  *(v0 + 288) = v21;
  *(v0 + 296) = v15;
  v26 = *(v0 + 264);
  v27 = *(v0 + 232);
  (*(*(v0 + 248) + 32))(v26, *(v0 + 256), *(v0 + 240));
  v28 = (*(v25 + 48))(v26, 1, v27);
  v29 = *(v0 + 264);
  if (v28 == 1)
  {

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    v33 = *(v0 + 184);
    v32 = *(v0 + 192);
    v34 = *(v0 + 152);
    v35 = *(v0 + 160);
    v36 = *(v29 + *(*(v0 + 232) + 48));
    *(v0 + 304) = v36;
    (*(v35 + 32))(v32, v29, v34);
    v37 = *(v35 + 16);
    *(v0 + 312) = v37;
    *(v0 + 320) = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v37(v33, v32, v34);

    v38 = sub_240759AC4();
    v39 = sub_24075A5D4();

    if (os_log_type_enabled(v38, v39))
    {
      v63 = v39;
      v40 = *(v0 + 184);
      v42 = *(v0 + 152);
      v41 = *(v0 + 160);
      v43 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v65 = v62;
      *v43 = 136315394;
      sub_2405D5548(&qword_27E4B7458, MEMORY[0x277CC9628]);
      v44 = sub_24075AC34();
      v46 = v45;
      v47 = *(v41 + 8);
      v47(v40, v42);
      v48 = sub_2405BBA7C(v44, v46, &v65);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2080;
      *(v0 + 128) = v36;

      v49 = sub_24075A0E4();
      v51 = sub_2405BBA7C(v49, v50, &v65);

      *(v43 + 14) = v51;
      _os_log_impl(&dword_240579000, v38, v63, "Pre-processing value update with tap (id:%s): %s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC76B0](v62, -1, -1);
      MEMORY[0x245CC76B0](v43, -1, -1);
    }

    else
    {
      v54 = *(v0 + 184);
      v55 = *(v0 + 152);
      v56 = *(v0 + 160);

      v47 = *(v56 + 8);
      v47(v54, v55);
    }

    *(v0 + 328) = v47;
    v57 = *(v0 + 208);
    v58 = *(v0 + 136);
    v59 = *(v36 + 32);
    *(v0 + 40) = *(v0 + 224);
    *(v0 + 48) = &off_285269CF0;
    *(v0 + 16) = v36;
    v60 = *(type metadata accessor for _Coordinated.ValueUpdate.Response(0, v57, v52, v53) + 32);

    v64 = (v59 + *v59);
    v61 = swift_task_alloc();
    *(v0 + 336) = v61;
    *v61 = v0;
    v61[1] = sub_2405C06B0;

    return v64(v0 + 16, v58 + v60);
  }
}

uint64_t sub_2405C06B0()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_2405C0DB8;
  }

  else
  {
    v5 = *(v2 + 144);
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v4 = sub_2405C07D8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2405C07D8()
{
  v61 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 192);
  v3 = *(v0 + 152);

  result = v1(v2, v3);
  v5 = *(v0 + 288);
  v6 = *(v0 + 296);
  if (v5)
  {
    v7 = *(v0 + 280);
LABEL_11:
    v12 = *(v0 + 256);
    v13 = *(v0 + 232);
    v14 = *(v0 + 200);
    v15 = *(v0 + 152);
    v16 = *(v0 + 160);
    v17 = (v5 - 1) & v5;
    v18 = __clz(__rbit64(v5)) | (v6 << 6);
    (*(v16 + 16))(v14, *(v7 + 48) + *(v16 + 72) * v18, v15);
    v19 = *(*(v7 + 56) + 8 * v18);
    v20 = *(v13 + 48);
    (*(v16 + 32))(v12, v14, v15);
    *(v12 + v20) = v19;
    v21 = *(v13 - 8);
    (*(v21 + 56))(v12, 0, 1, v13);

    v10 = v6;
LABEL_12:
    *(v0 + 288) = v17;
    *(v0 + 296) = v10;
    v22 = *(v0 + 264);
    v23 = *(v0 + 232);
    (*(*(v0 + 248) + 32))(v22, *(v0 + 256), *(v0 + 240));
    v24 = (*(v21 + 48))(v22, 1, v23);
    v25 = *(v0 + 264);
    if (v24 == 1)
    {

      v26 = *(v0 + 8);

      return v26();
    }

    else
    {
      v28 = *(v0 + 184);
      v27 = *(v0 + 192);
      v29 = *(v0 + 152);
      v30 = *(v0 + 160);
      v31 = *(v25 + *(*(v0 + 232) + 48));
      *(v0 + 304) = v31;
      (*(v30 + 32))(v27, v25, v29);
      v32 = *(v30 + 16);
      *(v0 + 312) = v32;
      *(v0 + 320) = (v30 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v32(v28, v27, v29);

      v33 = sub_240759AC4();
      v34 = sub_24075A5D4();

      if (os_log_type_enabled(v33, v34))
      {
        v58 = v34;
        v35 = *(v0 + 184);
        v37 = *(v0 + 152);
        v36 = *(v0 + 160);
        v38 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v60 = v57;
        *v38 = 136315394;
        sub_2405D5548(&qword_27E4B7458, MEMORY[0x277CC9628]);
        v39 = sub_24075AC34();
        v41 = v40;
        v42 = *(v36 + 8);
        v42(v35, v37);
        v43 = sub_2405BBA7C(v39, v41, &v60);

        *(v38 + 4) = v43;
        *(v38 + 12) = 2080;
        *(v0 + 128) = v31;

        v44 = sub_24075A0E4();
        v46 = sub_2405BBA7C(v44, v45, &v60);

        *(v38 + 14) = v46;
        _os_log_impl(&dword_240579000, v33, v58, "Pre-processing value update with tap (id:%s): %s", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245CC76B0](v57, -1, -1);
        MEMORY[0x245CC76B0](v38, -1, -1);
      }

      else
      {
        v49 = *(v0 + 184);
        v50 = *(v0 + 152);
        v51 = *(v0 + 160);

        v42 = *(v51 + 8);
        v42(v49, v50);
      }

      *(v0 + 328) = v42;
      v52 = *(v0 + 208);
      v53 = *(v0 + 136);
      v54 = *(v31 + 32);
      *(v0 + 40) = *(v0 + 224);
      *(v0 + 48) = &off_285269CF0;
      *(v0 + 16) = v31;
      v55 = *(type metadata accessor for _Coordinated.ValueUpdate.Response(0, v52, v47, v48) + 32);

      v59 = (v54 + *v54);
      v56 = swift_task_alloc();
      *(v0 + 336) = v56;
      *v56 = v0;
      v56[1] = sub_2405C06B0;

      return v59(v0 + 16, v53 + v55);
    }
  }

  else
  {
    v8 = ((1 << *(v0 + 352)) + 63) >> 6;
    if (v8 <= (v6 + 1))
    {
      v9 = v6 + 1;
    }

    else
    {
      v9 = ((1 << *(v0 + 352)) + 63) >> 6;
    }

    v10 = v9 - 1;
    while (1)
    {
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        v21 = *(*(v0 + 232) - 8);
        (*(v21 + 56))(*(v0 + 256), 1, 1);
        v17 = 0;
        goto LABEL_12;
      }

      v7 = *(v0 + 280);
      v5 = *(v7 + 8 * v11 + 64);
      ++v6;
      if (v5)
      {
        v6 = v11;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2405C0DB8()
{
  v115 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 208);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 104) = v1;
  v3 = v1;
  type metadata accessor for _Coordinated.HaltingTapError(0, v2, v4, v5);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 312);
    v7 = *(v0 + 192);
    v8 = *(v0 + 176);
    v9 = *(v0 + 152);

    v10 = *(v0 + 112);
    v6(v8, v7, v9);
    v11 = v10;
    v12 = sub_240759AC4();
    v13 = sub_24075A5C4();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 328);
    v16 = *(v0 + 176);
    v17 = *(v0 + 152);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v114[0] = v112;
      *v18 = 136315394;
      sub_2405D5548(&qword_27E4B7458, MEMORY[0x277CC9628]);
      v19 = sub_24075AC34();
      v106 = v13;
      v20 = v10;
      v22 = v21;
      v15(v16, v17);
      v23 = sub_2405BBA7C(v19, v22, v114);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2112;
      swift_getWitnessTable();
      swift_allocError();
      *v24 = v20;
      v25 = v20;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v26;
      *v109 = v26;
      _os_log_impl(&dword_240579000, v12, v106, "Halting coordination for tap (id:%s): %@", v18, 0x16u);
      sub_2405B8A50(v109, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v109, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v112);
      MEMORY[0x245CC76B0](v112, -1, -1);
      MEMORY[0x245CC76B0](v18, -1, -1);

      if (!v20)
      {
        goto LABEL_9;
      }
    }

    else
    {

      v15(v16, v17);
      if (!v10)
      {
LABEL_9:
        swift_getWitnessTable();
        swift_allocError();
        *v51 = 0;
      }
    }

    v52 = *(v0 + 328);
    v53 = *(v0 + 192);
    v54 = *(v0 + 152);
    swift_willThrow();

    v52(v53, v54);

    v55 = *(v0 + 8);
LABEL_23:

    return v55();
  }

  v27 = *(v0 + 312);
  v28 = *(v0 + 192);
  v29 = *(v0 + 168);
  v30 = *(v0 + 152);

  v27(v29, v28, v30);

  v31 = sub_240759AC4();
  v32 = sub_24075A5E4();

  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 328);
  v35 = *(v0 + 304);
  if (!v33)
  {
    v56 = *(v0 + 192);
    v57 = *(v0 + 168);
    v58 = *(v0 + 152);

    v34(v57, v58);
    result = (v34)(v56, v58);
    v48 = *(v0 + 288);
    v49 = *(v0 + 296);
    if (v48)
    {
      goto LABEL_7;
    }

LABEL_12:
    v59 = ((1 << *(v0 + 352)) + 63) >> 6;
    if (v59 <= (v49 + 1))
    {
      v60 = v49 + 1;
    }

    else
    {
      v60 = ((1 << *(v0 + 352)) + 63) >> 6;
    }

    v61 = v60 - 1;
    while (1)
    {
      v62 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v62 >= v59)
      {
        v72 = *(*(v0 + 232) - 8);
        (*(v72 + 56))(*(v0 + 256), 1, 1);
        v68 = 0;
        goto LABEL_21;
      }

      v50 = *(v0 + 280);
      v48 = *(v50 + 8 * v62 + 64);
      ++v49;
      if (v48)
      {
        v49 = v62;
        goto LABEL_20;
      }
    }

    __break(1u);
    return result;
  }

  v107 = *(v0 + 344);
  v110 = *(v0 + 192);
  v36 = *(v0 + 168);
  v37 = *(v0 + 152);
  v38 = swift_slowAlloc();
  v105 = swift_slowAlloc();
  v114[0] = v105;
  *v38 = 136315394;
  sub_2405D5548(&qword_27E4B7458, MEMORY[0x277CC9628]);
  v39 = sub_24075AC34();
  v40 = v35;
  v42 = v41;
  v34(v36, v37);
  v43 = sub_2405BBA7C(v39, v42, v114);

  *(v38 + 4) = v43;
  *(v38 + 12) = 2080;
  *(v0 + 120) = v40;

  v44 = sub_24075A0E4();
  v46 = sub_2405BBA7C(v44, v45, v114);

  *(v38 + 14) = v46;
  _os_log_impl(&dword_240579000, v31, v32, "Ignoring non-halting error in tap (id:%s): %s", v38, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x245CC76B0](v105, -1, -1);
  MEMORY[0x245CC76B0](v38, -1, -1);

  result = (v34)(v110, v37);
  v48 = *(v0 + 288);
  v49 = *(v0 + 296);
  if (!v48)
  {
    goto LABEL_12;
  }

LABEL_7:
  v50 = *(v0 + 280);
LABEL_20:
  v63 = *(v0 + 256);
  v64 = *(v0 + 232);
  v65 = *(v0 + 200);
  v66 = *(v0 + 152);
  v67 = *(v0 + 160);
  v68 = (v48 - 1) & v48;
  v69 = __clz(__rbit64(v48)) | (v49 << 6);
  (*(v67 + 16))(v65, *(v50 + 48) + *(v67 + 72) * v69, v66);
  v70 = *(*(v50 + 56) + 8 * v69);
  v71 = *(v64 + 48);
  (*(v67 + 32))(v63, v65, v66);
  *(v63 + v71) = v70;
  v72 = *(v64 - 8);
  (*(v72 + 56))(v63, 0, 1, v64);

  v61 = v49;
LABEL_21:
  *(v0 + 288) = v68;
  *(v0 + 296) = v61;
  v73 = *(v0 + 264);
  v74 = *(v0 + 232);
  (*(*(v0 + 248) + 32))(v73, *(v0 + 256), *(v0 + 240));
  if ((*(v72 + 48))(v73, 1, v74) == 1)
  {

    v55 = *(v0 + 8);
    goto LABEL_23;
  }

  v76 = *(v0 + 184);
  v75 = *(v0 + 192);
  v78 = *(v0 + 152);
  v77 = *(v0 + 160);
  v79 = *(*(v0 + 264) + *(*(v0 + 232) + 48));
  *(v0 + 304) = v79;
  (*(v77 + 32))(v75);
  v80 = *(v77 + 16);
  *(v0 + 312) = v80;
  *(v0 + 320) = (v77 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v80(v76, v75, v78);

  v81 = sub_240759AC4();
  v82 = sub_24075A5D4();

  if (os_log_type_enabled(v81, v82))
  {
    v111 = v82;
    v83 = *(v0 + 184);
    v85 = *(v0 + 152);
    v84 = *(v0 + 160);
    v86 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v114[0] = v108;
    *v86 = 136315394;
    sub_2405D5548(&qword_27E4B7458, MEMORY[0x277CC9628]);
    v87 = sub_24075AC34();
    v89 = v88;
    v90 = *(v84 + 8);
    v90(v83, v85);
    v91 = sub_2405BBA7C(v87, v89, v114);

    *(v86 + 4) = v91;
    *(v86 + 12) = 2080;
    *(v0 + 128) = v79;

    v92 = sub_24075A0E4();
    v94 = sub_2405BBA7C(v92, v93, v114);

    *(v86 + 14) = v94;
    _os_log_impl(&dword_240579000, v81, v111, "Pre-processing value update with tap (id:%s): %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v108, -1, -1);
    MEMORY[0x245CC76B0](v86, -1, -1);
  }

  else
  {
    v97 = *(v0 + 184);
    v98 = *(v0 + 152);
    v99 = *(v0 + 160);

    v90 = *(v99 + 8);
    v90(v97, v98);
  }

  *(v0 + 328) = v90;
  v100 = *(v0 + 208);
  v101 = *(v0 + 136);
  v102 = *(v79 + 32);
  *(v0 + 40) = *(v0 + 224);
  *(v0 + 48) = &off_285269CF0;
  *(v0 + 16) = v79;
  v103 = *(type metadata accessor for _Coordinated.ValueUpdate.Response(0, v100, v95, v96) + 32);

  v113 = (v102 + *v102);
  v104 = swift_task_alloc();
  *(v0 + 336) = v104;
  *v104 = v0;
  v104[1] = sub_2405C06B0;

  return v113(v0 + 16, v101 + v103);
}

uint64_t _Coordinated.__allocating_init(coordinating:receiver:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  _Coordinated.init(coordinating:receiver:)(a1, a2, a3);
  return v6;
}

uint64_t *_Coordinated.init(coordinating:receiver:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  swift_defaultActor_initialize();
  v8 = *(*v3 + 112);
  v9 = sub_2407597B4();
  v10 = *(v7 + 80);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v12 = type metadata accessor for _Coordinated.AsyncThrowingTapHandle(255, v10, v11, MEMORY[0x277D84950]);
  swift_getTupleTypeMetadata2();
  v13 = sub_24075A2E4();
  v14 = sub_2405D5548(&qword_27E4B7438, MEMORY[0x277CC9600]);
  v15 = sub_2405D487C(v13, v9, v12, v14);

  *(v3 + v8) = v15;
  v16 = (v3 + *(*v3 + 120));
  *v16 = 0;
  v16[1] = 0;
  *(v3 + *(*v3 + 128)) = 0;
  *(v3 + *(*v3 + 136)) = 0;
  (*(*(v10 - 8) + 32))(v3 + *(*v3 + 96), a1, v10);
  v17 = (v3 + *(*v3 + 104));
  *v17 = a2;
  v17[1] = a3;
  return v3;
}

uint64_t sub_2405C1B48(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_2405C1C40;

  return v7(a2);
}

uint64_t sub_2405C1C40(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2405C1D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v7 = sub_24075AEE4();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405C1E3C, 0, 0);
}

uint64_t sub_2405C1E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[7];
  v6 = v4[2];
  type metadata accessor for _Coordinated.CommonError(0, v4[4], a3, a4);
  swift_getWitnessTable();
  v7 = swift_allocError();
  *v8 = xmmword_240762430;
  *v5 = v7;
  swift_storeEnumTagMultiPayload();
  v12 = (v6 + *v6);
  v9 = swift_task_alloc();
  v4[8] = v9;
  *v9 = v4;
  v9[1] = sub_2405C1FA0;
  v10 = v4[7];

  return v12(v10);
}

uint64_t sub_2405C1FA0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2405C20F8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_2405C2140, v1, 0);
}

uint64_t sub_2405C2140()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = *(v1 + 80);
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2405C2210;

  return sub_2405C23B0(sub_2405D50A4, v3);
}

uint64_t sub_2405C2210()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x2822009F8](sub_2405C234C, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_2405C234C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2405C23B0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*v2 + 80);
  v3[8] = v4;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for _Coordinated.ValueUpdate(0, v4, v5, v6);
  v3[10] = v7;
  v3[11] = *(v7 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405C24B8, v2, 0);
}

uint64_t sub_2405C24B8()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = *(*v1 + 96);
  swift_beginAccess();
  v2(v1 + v3);
  swift_endAccess();
  sub_2405C6240();
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[8];
  v7 = sub_2405BEBE8();
  sub_2405BE94C(v5);
  sub_2405C2878(v7, 0, v5, 0, v6, v4);
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_2405C263C;
  v11 = v0[12];

  return sub_2405C5970(v11, 0, v9, v10);
}

uint64_t sub_2405C263C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_2405C27F0;
  }

  else
  {
    v4 = sub_2405C2768;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2405C2768()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2405C27F0()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2405C2878@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  v10 = type metadata accessor for _Coordinated.ValueUpdate(0, a5, a3, a4);
  v11 = *(a5 - 8);
  (*(v11 + 16))(a6 + *(v10 + 32), a3, a5);
  v12 = *(v10 + 36);
  v13 = sub_2405C8984(a4);
  result = (*(v11 + 8))(a3, a5);
  *(a6 + v12) = v13;
  return result;
}

uint64_t sub_2405C2944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *v5;
  return MEMORY[0x2822009F8](sub_2405C2994, v5, 0);
}

uint64_t sub_2405C2994()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[9] = v4;
  v4[2] = *(v1 + 80);
  v4[3] = v2;
  v4[4] = v3;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_2405C2A78;
  v6 = v0[6];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];

  return sub_2405C2C18(v9, sub_2405D5174, v4, v7, v8, v6);
}

uint64_t sub_2405C2A78()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v3 = v2[7];

    return MEMORY[0x2822009F8](sub_2405C2BB4, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_2405C2BB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2405C2C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v8 = *(*v6 + 80);
  v7[12] = v8;
  v7[13] = swift_getTupleTypeMetadata2();
  v7[14] = swift_task_alloc();
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v11 = type metadata accessor for _Coordinated.ValueUpdate(0, v8, v9, v10);
  v7[18] = v11;
  v7[19] = *(v11 - 8);
  v7[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v7[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405C2DE0, v6, 0);
}

uint64_t sub_2405C2DE0()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = *(*v1 + 96);
  swift_beginAccess();
  v2(v1 + v3);
  swift_endAccess();
  sub_2405C6240();
  v0[22] = 0;
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[17];
  v7 = v0[12];
  v8 = v0[11];
  v21 = v0[10];
  v22 = v0[13];
  v9 = v0[9];
  v20 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7440, &qword_240762718);
  v10 = swift_allocObject();
  v0[23] = v10;
  swift_defaultActor_initialize();
  v11 = *(*v10 + 104);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7448, &qword_240762720);
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  v10[112] = 0;
  v13 = sub_24075A3D4();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  type metadata accessor for _Coordinated(255, v7, v14, v15);
  WitnessTable = swift_getWitnessTable();
  v17 = swift_allocObject();
  v17[2] = v8;
  v17[3] = WitnessTable;
  v17[4] = v21;
  v17[5] = v8;
  v17[6] = v20;
  v17[7] = v9;
  v17[8] = v10;
  swift_retain_n();

  v0[24] = sub_2405C56EC(0, 0, v5, &unk_240762730, v17, v22);
  v18 = sub_2405BEBE8();
  sub_2405BE94C(v6);
  sub_2405C2878(v18, 1, v6, 0, v7, v4);

  return MEMORY[0x2822009F8](sub_2405C30E8, v10, 0);
}

uint64_t sub_2405C30E8()
{
  v1 = v0[22];
  sub_2405D4184();
  if (v1)
  {
    v0[29] = v1;
    v2 = v0[11];

    return MEMORY[0x2822009F8](sub_2405C35BC, v2, 0);
  }

  else
  {
    v3 = v0[23];
    v4 = sub_240590128(&qword_27E4B7450, &qword_27E4B7440, &qword_240762718, &protocol conformance descriptor for ValueIntercept<A>);
    v5 = swift_task_alloc();
    v0[25] = v5;
    *v5 = v0;
    v5[1] = sub_2405C3248;
    v6 = v0[23];
    v7 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v5, v3, v4, 0xD000000000000012, 0x80000002407863C0, sub_2405D5324, v6, v7);
  }
}

uint64_t sub_2405C3248()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);
    v4 = sub_2405C3598;
  }

  else
  {
    v3 = *(v2 + 88);
    v4 = sub_2405C3360;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2405C3360()
{
  v1 = v0[11];
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_2405C3400;
  v5 = v0[20];

  return sub_2405C5970(v5, v1, v3, v4);
}

uint64_t sub_2405C3400()
{
  v2 = *v1;
  v2[28] = v0;

  if (v0)
  {
    v3 = v2[11];

    return MEMORY[0x2822009F8](sub_2405C3950, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[30] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
    *v4 = v2;
    v4[1] = sub_2405C3688;
    v6 = v2[24];
    v8 = v2[13];
    v7 = v2[14];
    v9 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v7, v6, v8, v5, v9);
  }
}

uint64_t sub_2405C35BC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2405C3688()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_2405C3A1C;
  }

  else
  {
    v4 = sub_2405C37B4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2405C37B4()
{
  v13 = v0[20];
  v1 = v0[19];
  v12 = v0[18];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[10];
  v8 = v0[5];
  v9 = *(v0[13] + 48);
  (*(v5 + 32))(v3, v4, v6);
  (*(*(v7 - 8) + 32))(v8, v4 + v9, v7);
  (*(v5 + 16))(v2, v3, v6);
  sub_2405BE9EC(v2);

  (*(v5 + 8))(v3, v6);
  (*(v1 + 8))(v13, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2405C3950()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2405C3A1C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2405C3AE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  v8[8] = *a4;
  return MEMORY[0x2822009F8](sub_2405C3B38, a4, 0);
}

uint64_t sub_2405C3B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 56);
  type metadata accessor for _Coordinated(255, *(*(v4 + 64) + 80), a3, a4);
  WitnessTable = swift_getWitnessTable();
  v7 = swift_task_alloc();
  *(v4 + 72) = v7;
  v13 = *(v4 + 24);
  v8 = *(v4 + 40);
  *(v7 + 16) = v5;
  *(v7 + 24) = v13;
  *(v7 + 40) = v8;
  v9 = swift_task_alloc();
  *(v4 + 80) = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *v9 = v4;
  v9[1] = sub_2405C3C9C;
  v11 = *(v4 + 16);

  return MEMORY[0x2822008A0](v11, v13, WitnessTable, 0xD000000000000024, 0x8000000240786540, sub_2405DA18C, v7, TupleTypeMetadata2);
}

uint64_t sub_2405C3C9C()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x2822009F8](sub_2405DA4F0, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_2405C3DD8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - v13;
  v15 = *(v11 + 80);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v16 = sub_24075A374();
  v17 = sub_24071B2EC(v16);
  v18 = swift_allocObject();
  v18[2] = v15;
  v18[3] = a6;
  v18[4] = v17;
  v18[5] = a3;
  v18[6] = a4;
  v19 = (a2 + *(*a2 + 120));
  v20 = *v19;
  v21 = v19[1];
  *v19 = &unk_240763448;
  v19[1] = v18;
  swift_retain_n();

  sub_24058CA60(v20, v21);

  v22 = sub_24075A3D4();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = a5;

  sub_240603208(0, 0, v14, &unk_240763458, v23);
}

uint64_t sub_2405C3FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v6[10] = swift_getTupleTypeMetadata2();
  v6[11] = swift_task_alloc();
  v6[12] = *(a6 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v6[16] = sub_24075A374();
  v9 = sub_24075A714();
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  type metadata accessor for CoordinatedDecision(0, a6, v10, v11);
  v6[22] = swift_task_alloc();
  v12 = sub_24075AEE4();
  v6[23] = v12;
  v6[24] = *(v12 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = *(a5 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405C42F8, 0, 0);
}

uint64_t sub_2405C42F8()
{
  (*(v0[24] + 16))(v0[25], v0[4], v0[23]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = *v0[25];
    if (qword_27E4B5EA8 != -1)
    {
      swift_once();
    }

    v2 = sub_240759AE4();
    __swift_project_value_buffer(v2, qword_27E4B7420);
    v3 = v1;
    v4 = sub_240759AC4();
    v5 = sub_24075A5E4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_240579000, v4, v5, "Failed to coordinate with error: %@", v6, 0xCu);
      sub_2405B8A50(v7, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v7, -1, -1);
      MEMORY[0x245CC76B0](v6, -1, -1);
    }

    v10 = v0[21];
    v11 = v0[16];

    sub_24071B444();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v10, 1, v11);
    v14 = v0[21];
    if (v13 == 1)
    {
      v15 = v0[17];
      v12 = v0[18];
    }

    else
    {
      v15 = v0[16];
      v0[2] = v1;
      v21 = v1;
      sub_24075A354();
    }

    (*(v12 + 8))(v14, v15);

    v22 = v0[1];

    return v22(1);
  }

  else
  {
    v16 = v0[6];
    (*(v0[26] + 32))(v0[31], v0[25], v0[8]);
    v23 = (v16 + *v16);
    v17 = swift_task_alloc();
    v0[32] = v17;
    *v17 = v0;
    v17[1] = sub_2405C471C;
    v18 = v0[31];
    v19 = v0[22];

    return v23(v19, v18);
  }
}

uint64_t sub_2405C471C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_2405C4FE8;
  }

  else
  {
    v2 = sub_2405C4830;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2405C4830()
{
  v101 = v0;
  v1 = v0[22];
  v2 = v0[12];
  v3 = v0[9];
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = v4;
  if (v4 == 1)
  {
    if (qword_27E4B5EA8 != -1)
    {
      swift_once();
    }

    v37 = v0[31];
    v38 = v0[28];
    v39 = v0[26];
    v40 = v0[8];
    v41 = sub_240759AE4();
    __swift_project_value_buffer(v41, qword_27E4B7420);
    v42 = *(v39 + 16);
    v42(v38, v37, v40);
    v43 = sub_240759AC4();
    v44 = sub_24075A5D4();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v0[31];
    if (v45)
    {
      v48 = v0[28];
      v47 = v0[29];
      v94 = v0[26];
      v49 = v0[8];
      v50 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v98 = v46;
      v100 = v97;
      *v50 = 136315138;
      v51 = v48;
      v52 = v48;
      v53 = v49;
      v42(v47, v51, v49);
      v54 = sub_24075A0E4();
      v56 = v55;
      v57 = *(v94 + 8);
      v57(v52, v53);
      v58 = sub_2405BBA7C(v54, v56, &v100);

      *(v50 + 4) = v58;
      _os_log_impl(&dword_240579000, v43, v44, "Continuing to wait for coordination to complete: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v97);
      MEMORY[0x245CC76B0](v97, -1, -1);
      v59 = v50;
      v5 = 1;
      MEMORY[0x245CC76B0](v59, -1, -1);

      v57(v98, v53);
    }

    else
    {
      v74 = v0[28];
      v75 = v0[26];
      v76 = v0[8];

      v77 = *(v75 + 8);
      v77(v74, v76);
      v77(v46, v76);
    }
  }

  else
  {
    v99 = v4;
    (*(v2 + 32))(v0[15], v1, v3);
    if (qword_27E4B5EA8 != -1)
    {
      swift_once();
    }

    v7 = v0[30];
    v6 = v0[31];
    v8 = v0[26];
    v9 = v0[14];
    v92 = v0[15];
    v10 = v0[12];
    v12 = v0[8];
    v11 = v0[9];
    v13 = sub_240759AE4();
    __swift_project_value_buffer(v13, qword_27E4B7420);
    v14 = *(v8 + 16);
    v14(v7, v6, v12);
    v96 = *(v10 + 16);
    v96(v9, v92, v11);
    v15 = sub_240759AC4();
    v16 = sub_24075A5D4();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[30];
    v91 = v14;
    if (v17)
    {
      v93 = v16;
      v19 = v0[29];
      v20 = v0[26];
      v85 = v0[13];
      v86 = v0[14];
      v21 = v0[12];
      v22 = v0[8];
      v23 = v0[9];
      log = v15;
      v24 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v100 = v89;
      *v24 = 136315394;
      v14(v19, v18, v22);
      v25 = sub_24075A0E4();
      v27 = v26;
      v28 = v22;
      v29 = *(v20 + 8);
      v29(v18, v28);
      v30 = sub_2405BBA7C(v25, v27, &v100);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2080;
      v96(v85, v86, v23);
      v31 = sub_24075A0E4();
      v33 = v32;
      v34 = v23;
      v35 = *(v21 + 8);
      v35(v86, v34);
      v36 = sub_2405BBA7C(v31, v33, &v100);

      *(v24 + 14) = v36;
      _os_log_impl(&dword_240579000, log, v93, "Accepting / completing coordination for inValue (%s) with outValue: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC76B0](v89, -1, -1);
      MEMORY[0x245CC76B0](v24, -1, -1);
    }

    else
    {
      v60 = v0[26];
      v61 = v0[14];
      v62 = v0[12];
      v64 = v0[8];
      v63 = v0[9];

      v35 = *(v62 + 8);
      v35(v61, v63);
      v29 = *(v60 + 8);
      v29(v18, v64);
    }

    v65 = v0[20];
    v66 = v0[16];

    sub_24071B444();
    v67 = *(v66 - 8);
    v68 = (*(v67 + 48))(v65, 1, v66);
    v69 = v0[31];
    v70 = v0[20];
    if (v68 == 1)
    {
      v71 = v0[17];
      v72 = v0[18];
      v73 = v0[8];
      v35(v0[15], v0[9]);
      v29(v69, v73);
      (*(v72 + 8))(v70, v71);
    }

    else
    {
      v78 = v0[15];
      v79 = v0[11];
      v87 = v0[16];
      v95 = v29;
      v80 = v0[9];
      v90 = v35;
      v81 = v0[8];
      v82 = *(v0[10] + 48);
      v91(v79, v69, v81);
      v96(v79 + v82, v78, v80);
      sub_24075A364();
      v90(v78, v80);
      v95(v69, v81);
      (*(v67 + 8))(v70, v87);
    }

    v5 = v99;
  }

  v83 = v0[1];

  return v83(v5 != 1);
}

uint64_t sub_2405C4FE8()
{
  v42 = v0;
  if (qword_27E4B5EA8 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = v0[31];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[8];
  v6 = sub_240759AE4();
  __swift_project_value_buffer(v6, qword_27E4B7420);
  v7 = *(v4 + 16);
  v7(v3, v2, v5);
  v8 = v1;
  v9 = sub_240759AC4();
  v10 = sub_24075A5E4();

  if (os_log_type_enabled(v9, v10))
  {
    v39 = v0[33];
    v11 = v0[29];
    v13 = v0[26];
    v12 = v0[27];
    v14 = v0[8];
    v15 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v40;
    *v15 = 136315394;
    v7(v11, v12, v14);
    v16 = sub_24075A0E4();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_2405BBA7C(v16, v18, &v41);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    v21 = v39;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v22;
    *v38 = v22;
    _os_log_impl(&dword_240579000, v9, v10, "Failed to handle incoming value (%s) with error: %@", v15, 0x16u);
    sub_2405B8A50(v38, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x245CC76B0](v40, -1, -1);
    MEMORY[0x245CC76B0](v15, -1, -1);
  }

  else
  {
    v24 = v0[26];
    v23 = v0[27];
    v25 = v0[8];

    v19 = *(v24 + 8);
    v19(v23, v25);
  }

  v26 = v0[19];
  v27 = v0[16];

  sub_24071B444();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 48))(v26, 1, v27);
  v30 = v0[33];
  v31 = v0[31];
  v32 = v0[19];
  if (v29 == 1)
  {
    v33 = v0[17];
    v28 = v0[18];
    v19(v0[31], v0[8]);
  }

  else
  {
    v33 = v0[16];
    v34 = v0[8];
    v0[3] = v30;
    v35 = v30;
    sub_24075A354();

    v19(v31, v34);
  }

  (*(v28 + 8))(v32, v33);

  v36 = v0[1];

  return v36(1);
}

uint64_t sub_2405C5420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7A88, &qword_240763428);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7448, &qword_240762720);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405C5534, a4, 0);
}

uint64_t sub_2405C5534()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(*v4 + 104);
  swift_beginAccess();
  sub_2405B044C(v4 + v5, v3, &qword_27E4B7A88, &qword_240763428);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2405B8A50(*(v0 + 88), &qword_27E4B7A88, &qword_240763428);
    v6 = 1;
  }

  else
  {
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = *(v0 + 96);
    v10 = *(v0 + 80);
    (*(v8 + 32))(v7, *(v0 + 88), v9);
    (*(v8 + 56))(v10, 1, 1, v9);
    swift_beginAccess();
    sub_2405DA11C(v10, v4 + v5);
    swift_endAccess();
    sub_24075A364();
    (*(v8 + 8))(v7, v9);
    v6 = 0;
  }

  **(v0 + 64) = v6;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2405C56EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  sub_2405B044C(a3, &v24[-1] - v11, &unk_27E4B9BF0, &qword_240762710);
  v13 = sub_24075A3D4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2405B8A50(v12, &unk_27E4B9BF0, &qword_240762710);
  }

  else
  {
    sub_24075A3C4();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_24075A344();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_24075A104();
      sub_2405D46B4(v20 + 32, v24);

      v21 = v24[0];
      sub_2405B8A50(a3, &unk_27E4B9BF0, &qword_240762710);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2405B8A50(a3, &unk_27E4B9BF0, &qword_240762710);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2405C5970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a2;
  v5[4] = v4;
  v5[2] = a1;
  v6 = *(*v4 + 80);
  v5[5] = v6;
  v7 = type metadata accessor for _Coordinated.ValueUpdate.Response(0, v6, a3, a4);
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405C5A4C, v4, 0);
}

uint64_t sub_2405C5A4C()
{
  if (qword_27E4B5EA8 != -1)
  {
    swift_once();
  }

  v1 = sub_240759AE4();
  v0[9] = __swift_project_value_buffer(v1, qword_27E4B7420);
  v2 = sub_240759AC4();
  v3 = sub_24075A5D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_240579000, v2, v3, "Running taps with echo response for update", v4, 2u);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }

  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[2];

  v10 = type metadata accessor for _Coordinated.ValueUpdate(0, v6, v8, v9);
  _Coordinated.ValueUpdate.response(withUpdatedValue:)(v7 + *(v10 + 32), v10, v5);
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_2405C5BD0;
  v12 = v0[8];

  return sub_2405BFD7C(v12);
}

uint64_t sub_2405C5BD0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_2405C602C;
  }

  else
  {
    v4 = sub_2405C5CFC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2405C5CFC(uint64_t a1)
{
  v2 = sub_240759AC4();
  v3 = sub_24075A5D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_240579000, v2, v3, "Finished running taps, calling receiver", v4, 2u);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }

  v5 = v1[4];

  v10 = (*(v5 + *(*v5 + 104)) + **(v5 + *(*v5 + 104)));
  v6 = swift_task_alloc();
  v1[12] = v6;
  *v6 = v1;
  v6[1] = sub_2405C5E80;
  v7 = v1[2];
  v8 = v1[3];

  return v10(v8, v7);
}

uint64_t sub_2405C5E80()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_2405C60AC;
  }

  else
  {
    v4 = sub_2405C5FAC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2405C5FAC()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2405C602C()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2405C60AC()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t _Coordinated.ValueUpdate.response(withUpdatedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  (*(v6 + 16))(v8);
  v10 = sub_2405C89D8();
  *a3 = v9;
  v13 = type metadata accessor for _Coordinated.ValueUpdate.Response(0, v5, v11, v12);
  result = (*(v6 + 32))(&a3[*(v13 + 32)], v8, v5);
  *(a3 + 1) = v10;
  return result;
}

void sub_2405C6240()
{
  v1 = *v0;
  if (*(v0 + *(*v0 + 128)))
  {
    if (qword_27E4B5EA8 != -1)
    {
      swift_once();
    }

    v2 = sub_240759AE4();
    __swift_project_value_buffer(v2, qword_27E4B7420);

    v3 = sub_240759AC4();
    v4 = sub_24075A5C4();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v26 = v6;
      *v5 = 136315138;
      v7 = *(v1 + 80);
      type metadata accessor for _Coordinated(0, v7, v8, v9);

      v10 = sub_24075A0E4();
      v12 = sub_2405BBA7C(v10, v11, &v26);

      *(v5 + 4) = v12;
      _os_log_impl(&dword_240579000, v3, v4, "Coordinator %s is invalidated", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x245CC76B0](v6, -1, -1);
      MEMORY[0x245CC76B0](v5, -1, -1);
    }

    else
    {

      v7 = *(v1 + 80);
    }

    type metadata accessor for _Coordinated.CommonError(0, v7, v13, v14);
    swift_getWitnessTable();
    swift_allocError();
    *v25 = xmmword_240762430;
    swift_willThrow();
  }

  else
  {
    if (qword_27E4B5EA8 != -1)
    {
      swift_once();
    }

    v15 = sub_240759AE4();
    __swift_project_value_buffer(v15, qword_27E4B7420);

    v16 = sub_240759AC4();
    v17 = sub_24075A5D4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315138;
      type metadata accessor for _Coordinated(0, *(v1 + 80), v20, v21);

      v22 = sub_24075A0E4();
      v24 = sub_2405BBA7C(v22, v23, &v26);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_240579000, v16, v17, "Checked that %s is not invalidated & ready to coordinate", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x245CC76B0](v19, -1, -1);
      MEMORY[0x245CC76B0](v18, -1, -1);
    }
  }
}

uint64_t sub_2405C65AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x2822009F8](sub_2405C65F8, v3, 0);
}

uint64_t sub_2405C65F8()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = *(v1 + 80);
  v4[3] = v3;
  v4[4] = v2;

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_2405C66EC;
  v6 = v0[2];

  return sub_2405C6D34(v6, &unk_240762748, v4);
}

uint64_t sub_2405C66EC()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_2405DA4F8, v1, 0);
}

uint64_t sub_2405C67FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2405C6820, 0, 0);
}

uint64_t sub_2405C6820()
{
  (*(v0 + 32))(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2405C688C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x2822009F8](sub_2405C68D8, v3, 0);
}

uint64_t sub_2405C68D8()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = *(v1 + 80);
  v4[3] = v3;
  v4[4] = v2;

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_2405C69CC;
  v6 = v0[2];

  return sub_2405C6D34(v6, &unk_240762768, v4);
}

uint64_t sub_2405C69CC()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_2405C6ADC, v1, 0);
}

uint64_t sub_2405C6ADC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2405C6B3C(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2405C6C3C;

  return v8(a1, a2);
}

uint64_t sub_2405C6C3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2405C6D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  v5 = sub_2407597B4();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405C6E4C, v3, 0);
}

uint64_t sub_2405C6E4C()
{
  v54 = v0;
  sub_2407597A4();
  if (qword_27E4B5EA8 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[7];
  v3 = v0[8];
  v5 = sub_240759AE4();
  __swift_project_value_buffer(v5, qword_27E4B7420);
  v49 = *(v3 + 16);
  v49(v2, v1, v4);
  v6 = sub_240759AC4();
  v7 = sub_24075A5D4();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[12];
  v11 = v0[7];
  v10 = v0[8];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v53 = v13;
    *v12 = 136315138;
    sub_2405D5548(&qword_27E4B7458, MEMORY[0x277CC9628]);
    v14 = sub_24075AC34();
    v16 = v15;
    v52 = *(v10 + 8);
    v52(v9, v11);
    v17 = sub_2405BBA7C(v14, v16, &v53);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_240579000, v6, v7, "Tapping with with id: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x245CC76B0](v13, -1, -1);
    MEMORY[0x245CC76B0](v12, -1, -1);
  }

  else
  {

    v52 = *(v10 + 8);
    v52(v9, v11);
  }

  v18 = v0[13];
  v19 = v0[11];
  v21 = v0[8];
  v20 = v0[9];
  v22 = v0[7];
  v47 = v0[4];
  v48 = v0[10];
  v45 = v18;
  v46 = v0[3];
  v23 = *(v0[6] + 80);
  v44 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v51 = type metadata accessor for _Coordinated.AsyncThrowingTapHandle(0, v23, v24, MEMORY[0x277D84950]);
  v25 = swift_allocObject();
  swift_weakInit();
  v49(v19, v18, v22);
  v26 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v44;
  (*(v21 + 32))(v27 + v26, v19, v22);
  *(v27 + ((v20 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
  v28 = swift_allocObject();
  v28[4] = v46;
  v28[5] = v47;
  v28[2] = sub_2405D54AC;
  v28[3] = v27;
  v49(v48, v45, v22);

  v29 = sub_240759AC4();
  v30 = sub_24075A5D4();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v0[10];
  v33 = v0[7];
  if (v31)
  {
    v34 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v34 = 136315138;
    sub_2405D5548(&qword_27E4B7458, MEMORY[0x277CC9628]);
    v35 = sub_24075AC34();
    v37 = v36;
    v52(v32, v33);
    v38 = sub_2405BBA7C(v35, v37, &v53);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_240579000, v29, v30, "Adding tap with id: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x245CC76B0](v50, -1, -1);
    MEMORY[0x245CC76B0](v34, -1, -1);
  }

  else
  {

    v52(v32, v33);
  }

  v39 = v0[13];
  v40 = v0[7];
  v41 = v0[2];
  sub_2405C79F0(v28, v39);
  v41[3] = v51;
  v41[4] = &off_285269CF0;
  *v41 = v28;
  v52(v39, v40);

  v42 = v0[1];

  return v42();
}

uint64_t sub_2405C7380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a3;
  v64 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v4 - 8);
  v62 = &v55 - v5;
  v6 = sub_2407597B4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v55 - v11;
  v59 = v13;
  MEMORY[0x28223BE20](v10);
  v15 = &v55 - v14;
  if (qword_27E4B5EA8 != -1)
  {
    swift_once();
  }

  v16 = sub_240759AE4();
  v17 = __swift_project_value_buffer(v16, qword_27E4B7420);
  v18 = v7 + 16;
  v19 = *(v7 + 16);
  v19(v15, a1, v6);
  v57 = v17;
  v20 = sub_240759AC4();
  v21 = sub_24075A5D4();
  v22 = os_log_type_enabled(v20, v21);
  v61 = v7;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v55 = v12;
    v24 = v23;
    v25 = swift_slowAlloc();
    v56 = v19;
    v26 = v25;
    v66[0] = v25;
    *v24 = 136315138;
    sub_2405D5548(&qword_27E4B7458, MEMORY[0x277CC9628]);
    v27 = sub_24075AC34();
    v58 = v7 + 16;
    v28 = a1;
    v30 = v29;
    v31 = *(v7 + 8);
    v31(v15, v6);
    v32 = sub_2405BBA7C(v27, v30, v66);
    a1 = v28;
    v18 = v58;

    *(v24 + 4) = v32;
    _os_log_impl(&dword_240579000, v20, v21, "Called to untap with %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v33 = v26;
    v19 = v56;
    MEMORY[0x245CC76B0](v33, -1, -1);
    v34 = v24;
    v12 = v55;
    MEMORY[0x245CC76B0](v34, -1, -1);
  }

  else
  {

    v31 = *(v7 + 8);
    v31(v15, v6);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v56 = v31;
    v64 = result;
    v19(v12, a1, v6);
    v36 = sub_240759AC4();
    v37 = sub_24075A5D4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v65 = v39;
      *v38 = 136315138;
      sub_2405D5548(&qword_27E4B7458, MEMORY[0x277CC9628]);
      v40 = sub_24075AC34();
      v58 = v18;
      v41 = a1;
      v43 = v42;
      v44 = v12;
      v45 = v61;
      (v56)(v44, v6);
      v46 = sub_2405BBA7C(v40, v43, &v65);
      a1 = v41;

      *(v38 + 4) = v46;
      v47 = v37;
      v48 = v45;
      _os_log_impl(&dword_240579000, v36, v47, "Untapping with %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x245CC76B0](v39, -1, -1);
      MEMORY[0x245CC76B0](v38, -1, -1);
    }

    else
    {

      v48 = v61;
      (v56)(v12, v6);
    }

    v49 = sub_24075A3D4();
    v50 = v62;
    (*(*(v49 - 8) + 56))(v62, 1, 1, v49);
    v51 = v60;
    v19(v60, a1, v6);
    v52 = (*(v48 + 80) + 48) & ~*(v48 + 80);
    v53 = swift_allocObject();
    *(v53 + 2) = 0;
    *(v53 + 3) = 0;
    v54 = v64;
    *(v53 + 4) = v63;
    *(v53 + 5) = v54;
    (*(v48 + 32))(&v53[v52], v51, v6);
    sub_240602F08(0, 0, v50, &unk_240763420, v53);
  }

  return result;
}

uint64_t sub_2405C791C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2405C793C, a4, 0);
}

uint64_t sub_2405C793C()
{
  sub_2405C7D84(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void *sub_2405C799C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[4] = a1;
  result[5] = a2;
  result[2] = a3;
  result[3] = a4;
  return result;
}

uint64_t sub_2405C79F0(uint64_t a1, uint64_t a2)
{
  v31 = *v2;
  v5 = sub_2407597B4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  if (qword_27E4B5EA8 != -1)
  {
    swift_once();
  }

  v12 = sub_240759AE4();
  __swift_project_value_buffer(v12, qword_27E4B7420);
  v29 = *(v6 + 16);
  v30 = a2;
  v29(v11, a2, v5);
  v13 = sub_240759AC4();
  v14 = sub_24075A5D4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = a1;
    v16 = v15;
    v26 = swift_slowAlloc();
    v32[0] = v26;
    *v16 = 136315138;
    sub_2405D5548(&qword_27E4B7458, MEMORY[0x277CC9628]);
    v17 = sub_24075AC34();
    v28 = v9;
    v19 = v18;
    (*(v6 + 8))(v11, v5);
    v20 = sub_2405BBA7C(v17, v19, v32);
    v9 = v28;

    *(v16 + 4) = v20;
    _os_log_impl(&dword_240579000, v13, v14, "Actually adding the tap with id now: %s", v16, 0xCu);
    v21 = v26;
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x245CC76B0](v21, -1, -1);
    v22 = v16;
    a1 = v27;
    MEMORY[0x245CC76B0](v22, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v11, v5);
  }

  v29(v9, v30, v5);
  v32[3] = a1;
  swift_beginAccess();
  v23 = *(v31 + 80);

  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  type metadata accessor for _Coordinated.AsyncThrowingTapHandle(255, v23, v24, MEMORY[0x277D84950]);
  sub_2405D5548(&qword_27E4B7438, MEMORY[0x277CC9600]);
  sub_240759FA4();
  sub_240759FE4();
  return swift_endAccess();
}

uint64_t sub_2405C7D84(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_2407597B4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  if (qword_27E4B5EA8 != -1)
  {
    swift_once();
  }

  v11 = sub_240759AE4();
  __swift_project_value_buffer(v11, qword_27E4B7420);
  v29 = *(v5 + 16);
  v30 = a1;
  v29(v10, a1, v4);
  v12 = sub_240759AC4();
  v13 = sub_24075A5D4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = v3;
    v15 = v14;
    v26 = swift_slowAlloc();
    v31[0] = v26;
    *v15 = 136315138;
    sub_2405D5548(&qword_27E4B7458, MEMORY[0x277CC9628]);
    v16 = sub_24075AC34();
    v28 = v8;
    v18 = v17;
    (*(v5 + 8))(v10, v4);
    v19 = sub_2405BBA7C(v16, v18, v31);
    v8 = v28;

    *(v15 + 4) = v19;
    _os_log_impl(&dword_240579000, v12, v13, "Removing tap with id: %s", v15, 0xCu);
    v20 = v26;
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x245CC76B0](v20, -1, -1);
    v21 = v15;
    v3 = v27;
    MEMORY[0x245CC76B0](v21, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v10, v4);
  }

  v29(v8, v30, v4);
  v31[3] = 0;
  swift_beginAccess();
  v22 = *(v3 + 80);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  type metadata accessor for _Coordinated.AsyncThrowingTapHandle(255, v22, v23, MEMORY[0x277D84950]);
  sub_2405D5548(&qword_27E4B7438, MEMORY[0x277CC9600]);
  sub_240759FA4();
  sub_240759FE4();
  return swift_endAccess();
}

uint64_t _Coordinated.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  sub_24058CA60(*(v0 + *(*v0 + 120)), *(v0 + *(*v0 + 120) + 8));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t _Coordinated.__deallocating_deinit()
{
  _Coordinated.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2405C8208(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2405C8228, v1, 0);
}

uint64_t sub_2405C8228()
{
  sub_2405BE94C(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2405C8288(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2405DA4D8;

  return sub_2405BEC58(a1);
}

uint64_t sub_2405C831C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2405DA4B0;

  return sub_2405C20F8(a1);
}

uint64_t sub_2405C83B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2405DA4B0;

  return sub_2405C23B0(a1, a2);
}

uint64_t sub_2405C8454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2405DA4B0;

  return sub_2405C2944(a1, a2, a3, a4, a5);
}

uint64_t sub_2405C851C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2405DA4B0;

  return sub_2405C2C18(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2405C85F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return sub_2405C65AC(a1, a2, a3);
}

uint64_t sub_2405C86A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return sub_2405C688C(a1, a2, a3);
}

uint64_t sub_2405C8754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return sub_2405C6D34(a1, a2, a3);
}

uint64_t sub_2405C8804()
{
  v1 = *(v0 + 16);

  v1(v2);
}

uint64_t sub_2405C885C()
{

  sub_2405C8804();

  return v0;
}

uint64_t sub_2405C8890()
{
  sub_2405C885C();

  return swift_deallocClassInstance();
}

id _Coordinated.HaltingTapError.underlyingError.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_2405C8984(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7460, &qword_240762770);
  swift_allocObject();
  return sub_2407598C4();
}

void (*sub_2405C89D8())(void *, void)
{
  sub_2407598E4();
  if (v2[0] == -1)
  {
    v2[0] = 0;
    sub_2407598F4();
  }

  result = sub_2407598D4();
  if (*v1 == -1)
  {
    __break(1u);
  }

  else
  {
    ++*v1;
    result(v2, 0);
    sub_2407598E4();
    return v2[0];
  }

  return result;
}

uint64_t sub_2405C8A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for _Coordinated.ValueUpdate.Response(0, a4, a3, a4);
  result = (*(*(a4 - 8) + 32))(&a5[*(v9 + 32)], a2, a4);
  *(a5 + 1) = a3;
  return result;
}

uint64_t sub_2405C8B10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6575716573 && a2 == 0xEA00000000004449;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6964726F6F437369 && a2 == 0xED0000646574616ELL || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5664657461647075 && a2 == 0xEC00000065756C61 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002407864A0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24075ACF4();

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

unint64_t sub_2405C8C90(unsigned __int8 a1)
{
  v1 = 0x65636E6575716573;
  v2 = 0x5664657461647075;
  if (a1 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (a1)
  {
    v1 = 0x6964726F6F437369;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2405C8D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405C8B10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2405C8D78@<X0>(_BYTE *a2@<X8>)
{
  result = sub_2405D5658();
  *a2 = result;
  return result;
}

uint64_t sub_2405C8DA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2405C8DF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2405C8E84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6575716573 && a2 == 0xEA00000000004449;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002407864C0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5664657461647075 && a2 == 0xEC00000065756C61)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_2405C8FB0(unsigned __int8 a1)
{
  sub_24075AE64();
  MEMORY[0x245CC6BA0](a1);
  return sub_24075AED4();
}

uint64_t sub_2405C8FF8(char a1)
{
  if (!a1)
  {
    return 0x65636E6575716573;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x5664657461647075;
}

uint64_t sub_2405C9060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void, void))
{
  sub_24075AE64();
  a4(v8, *v4, *(a2 + 16));
  return sub_24075AED4();
}

uint64_t sub_2405C90C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405C8E84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2405C90F0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_2405D5660();
  *a2 = result;
  return result;
}

uint64_t sub_2405C911C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2405C9170(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t _Coordinated.ValueUpdate<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v31 = a4;
  v32 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _Coordinated.ValueUpdate.CodingKeys(255, v7, v8, v9);
  swift_getWitnessTable();
  v37 = sub_24075AB44();
  v33 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v11 = &v28 - v10;
  v14 = type metadata accessor for _Coordinated.ValueUpdate(0, a2, v12, v13);
  v30 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v36 = v11;
  v17 = v38;
  sub_24075AF34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v34;
  v38 = a1;
  v19 = v33;
  v43 = 0;
  v20 = v36;
  *v16 = sub_24075AB24();
  v42 = 1;
  v21 = sub_24075AAD4();
  v29 = v16;
  v16[8] = v21 & 1;
  v41 = 2;
  sub_24075AAF4();
  v22 = v18;
  v23 = *(v32 + 32);
  v24 = v29;
  v35 = *(v14 + 32);
  v23(&v29[v35], v22, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7460, &qword_240762770);
  v40 = 3;
  sub_2405D55A4(&qword_27E4B7468, MEMORY[0x277D84D68], MEMORY[0x277CE4620]);
  v25 = v37;
  sub_24075AAF4();
  (*(v19 + 8))(v20, v25);
  *&v24[*(v14 + 36)] = v39;
  v26 = v30;
  (*(v30 + 16))(v31, v24, v14);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return (*(v26 + 8))(v24, v14);
}

uint64_t _Coordinated.ValueUpdate<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v5 = v4;
  v17 = a2;
  v16 = *(a2 + 16);
  type metadata accessor for _Coordinated.ValueUpdate.CodingKeys(255, v16, a3, a4);
  swift_getWitnessTable();
  v7 = sub_24075AC24();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF74();
  v24 = 0;
  v11 = v19;
  sub_24075AC14();
  if (v11)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v13 = v8;
  v14 = v17;
  v23 = 1;
  sub_24075ABC4();
  v22 = 2;
  sub_24075ABE4();
  v20 = *(v5 + *(v14 + 36));
  v21 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7460, &qword_240762770);
  sub_2405D55A4(&qword_27E4B7470, MEMORY[0x277D84D40], MEMORY[0x277CE4610]);
  sub_24075ABE4();
  return (*(v13 + 8))(v10, v7);
}

uint64_t static _Coordinated.ValueUpdate<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for _Coordinated.ValueUpdate(0, a3, a3, a4);
  if ((sub_24075A054() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7460, &qword_240762770);
  return sub_240759914() & 1;
}

uint64_t _Coordinated.ValueUpdate<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x245CC6BE0](*v3);
  sub_24075AE94();
  sub_24075A004();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7460, &qword_240762770);
  sub_2405D55A4(qword_27E4B7478, MEMORY[0x277D84D48], MEMORY[0x277CE4618]);
  return sub_24075A004();
}

uint64_t _Coordinated.ValueUpdate.Response<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v24 = a4;
  v23 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v26 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _Coordinated.ValueUpdate.Response.CodingKeys(255, v7, v8, v9);
  swift_getWitnessTable();
  v28 = sub_24075AB44();
  v25 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v11 = &v22 - v10;
  v14 = type metadata accessor for _Coordinated.ValueUpdate.Response(0, a2, v12, v13);
  v22 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = (&v22 - v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v29;
  sub_24075AF34();
  if (v17)
  {
    v21 = a1;
  }

  else
  {
    v29 = a1;
    v19 = v25;
    v18 = v26;
    v32 = 0;
    *v16 = sub_24075AB24();
    v31 = 1;
    v16[1] = sub_24075AB24();
    v30 = 2;
    sub_24075AAF4();
    (*(v19 + 8))(v11, v28);
    (*(v23 + 32))(v16 + *(v14 + 32), v18, a2);
    (*(v22 + 32))(v24, v16, v14);
    v21 = v29;
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t _Coordinated.ValueUpdate.Response<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[2] = a3;
  v11[1] = a2;
  v11[0] = *(a2 + 16);
  type metadata accessor for _Coordinated.ValueUpdate.Response.CodingKeys(255, v11[0], a3, a4);
  swift_getWitnessTable();
  v5 = sub_24075AC24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF74();
  v14 = 0;
  v9 = v11[3];
  sub_24075AC14();
  if (!v9)
  {
    v13 = 1;
    sub_24075AC14();
    v12 = 2;
    sub_24075ABE4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t static _Coordinated.ValueUpdate.Response<A>.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for _Coordinated.ValueUpdate.Response(0, a3, a3, a4);
  return sub_24075A054() & 1;
}

uint64_t _Coordinated.ValueUpdate.Response<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x245CC6BE0](*v3);
  MEMORY[0x245CC6BE0](v3[1]);
  return sub_24075A004();
}

uint64_t sub_2405CA0F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  sub_24075AE64();
  a3(v7, a1, a2);
  return sub_24075AED4();
}

uint64_t sub_2405CA178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  v6 = *(a3 - 8);
  sub_24075AE64();
  a4(v8, a2, v6);
  return sub_24075AED4();
}

void *CoordinationProtocol.coercing<A>(derive:mutator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for _Coordinated.Coerced(0, AssociatedTypeWitness, a6, v15);
  v16 = CoordinationProtocol.into()(a5, a7);
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;

  return v17;
}

uint64_t CoordinationProtocol.into()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for _AnyCoordinated(0, AssociatedTypeWitness, v5, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = a2;
  swift_unknownObjectRetain();
  return v7;
}

void *sub_2405CA304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

uint64_t CoordinationProtocol.coercing<A>(to:derive:mutator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v11 = sub_24075A714();
  v9[11] = v11;
  v9[12] = *(v11 - 8);
  v9[13] = swift_task_alloc();
  v9[14] = *(a7 - 8);
  v9[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405CA488, 0, 0);
}

uint64_t sub_2405CA488()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v22 = *(v0 + 88);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for _Coordinated.Coerced(0, AssociatedTypeWitness, v5, v9);
  v20 = *(v0 + 40);
  v21 = *(v0 + 24);
  v10 = CoordinationProtocol.into()(v6, v4);
  v11 = swift_allocObject();
  *(v0 + 128) = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v21;
  *(v11 + 40) = v20;
  (*(v3 + 16))(v1, v7, v22);
  if ((*(v2 + 48))(v1, 1, v5) == 1)
  {
    v12 = *(v0 + 88);
    v13 = *(*(v0 + 96) + 8);
    v14 = *(v0 + 104);

    v13(v14, v12);

    v15 = *(v0 + 8);
    v16 = *(v0 + 128);

    return v15(v16);
  }

  else
  {
    (*(*(v0 + 112) + 32))(*(v0 + 120), *(v0 + 104), *(v0 + 64));

    v18 = swift_task_alloc();
    *(v0 + 136) = v18;
    *v18 = v0;
    v18[1] = sub_2405CA6D0;
    v19 = *(v0 + 120);

    return sub_2405CB87C(v19);
  }
}

uint64_t sub_2405CA6D0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2405CA874;
  }

  else
  {
    v2 = sub_2405CA7E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2405CA7E4()
{
  (*(v0[14] + 8))(v0[15], v0[8]);

  v1 = v0[1];
  v2 = v0[16];

  return v1(v2);
}

uint64_t sub_2405CA874()
{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[8];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2405CA948(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  type metadata accessor for _Coordinated.Coerced(0, v4, *(v3 + 88), v5);
  swift_getWitnessTable();
  v7 = sub_24075A344();
  v2[7] = v7;
  v2[8] = v6;

  return MEMORY[0x2822009F8](sub_2405CAA78, v7, v6);
}

uint64_t sub_2405CAA78()
{
  v1 = v0[3];
  v0[9] = *(v1 + 24);
  v0[10] = *(v1 + 32);

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_2405CAB2C;
  v6 = v0[6];

  return sub_2405CED84(v6, v2, v3, v4);
}

uint64_t sub_2405CAB2C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_2405CAC4C, v3, v2);
}

uint64_t sub_2405CAC4C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v0 + 72))(v1);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

void *sub_2405CACF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t sub_2405CAD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a2;
  v5[4] = v4;
  v5[2] = a1;
  type metadata accessor for _Coordinated.Coerced(0, *(*v4 + 80), *(*v4 + 88), a4);
  swift_getWitnessTable();
  v7 = sub_24075A344();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_2405CADD4, v7, v6);
}

uint64_t sub_2405CADD4()
{
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_2405CAE70;
  v5 = *(v0 + 16);

  return sub_2405CED84(v5, v1, v2, v3);
}

uint64_t sub_2405CAE70()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_2405CAF90, v3, v2);
}

uint64_t sub_2405CAF90()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + 40);

  v3(v2, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2405CB020(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v2[4] = v4;
  v2[5] = swift_task_alloc();
  v7 = type metadata accessor for _Coordinated.ValueUpdate.Response(0, v4, v5, v6);
  v2[6] = v7;
  v2[7] = *(v7 - 8);
  v2[8] = swift_task_alloc();
  v8 = *(v3 + 88);
  v2[9] = v8;
  type metadata accessor for _Coordinated.Coerced(0, v4, v8, v9);
  swift_getWitnessTable();
  v11 = sub_24075A344();
  v2[10] = v11;
  v2[11] = v10;

  return MEMORY[0x2822009F8](sub_2405CB188, v11, v10);
}

uint64_t sub_2405CB188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[9];
  v6 = v4[2];
  v4[12] = *(v4[3] + 16);
  v4[13] = *v6;
  v7 = *(type metadata accessor for _Coordinated.ValueUpdate.Response(0, v5, a3, a4) + 32);
  v10 = swift_task_alloc();
  v4[14] = v10;
  *v10 = v4;
  v10[1] = sub_2405CB250;
  v11 = v4[5];

  return sub_2405CAD04(v11, v6 + v7, v8, v9);
}

uint64_t sub_2405CB250()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_2405CB370, v3, v2);
}

uint64_t sub_2405CB370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[8];
  v6 = v4[4];
  v7 = v4[5];
  v8 = *(v4[2] + 8);
  *v5 = v4[13];
  v9 = type metadata accessor for _Coordinated.ValueUpdate.Response(0, v6, a3, a4);
  (*(*(v6 - 8) + 32))(&v5[*(v9 + 32)], v7, v6);
  *(v5 + 1) = v8;
  v10 = swift_task_alloc();
  v4[15] = v10;
  *v10 = v4;
  v10[1] = sub_2405CB470;
  v14 = v4[8];

  return sub_2405CF380(v14, v11, v12, v13);
}

uint64_t sub_2405CB470(uint64_t a1)
{
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v8 = *v1;

  (*(v4 + 8))(v3, v5);

  v6 = *(v8 + 8);

  return v6(a1);
}

uint64_t sub_2405CB5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v10 = *(*v4 + 88);
  v11 = a1;
  v6 = type metadata accessor for _AnyCoordinated(0, *(v5 + 80), a3, a4);
  WitnessTable = swift_getWitnessTable();
  return sub_2405CB6C8(sub_2405D5668, v9, "AppleIDSetup/Coordinated.swift", 30, 2u, 530, v6, MEMORY[0x277D84F78] + 8, WitnessTable);
}

uint64_t sub_2405CB6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_24075A344();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a9;
  v15[5] = a1;
  v15[6] = a2;
  sub_2405D4770(sub_2405D9FD0, v15, v9, a7, a8, a9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_24075A864();
    MEMORY[0x245CC5E60](0xD00000000000003FLL, 0x8000000240786500);
    sub_24075ACC4();
    MEMORY[0x245CC5E60](46, 0xE100000000000000);
    result = sub_24075A9C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_2405CB87C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  type metadata accessor for _Coordinated.Coerced(0, v4, *(v3 + 88), v5);
  swift_getWitnessTable();
  v7 = sub_24075A344();
  v2[7] = v7;
  v2[8] = v6;

  return MEMORY[0x2822009F8](sub_2405CB9AC, v7, v6);
}

uint64_t sub_2405CB9AC()
{
  v0[9] = *(v0[3] + 16);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_2405CBA50;
  v4 = v0[6];
  v5 = v0[2];

  return sub_2405CAD04(v4, v5, v1, v2);
}

uint64_t sub_2405CBA50()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  *v3 = v2;
  v3[1] = sub_2405CBBA8;
  v7 = *(v1 + 48);

  return sub_2405CFB50(v7, v4, v5, v6);
}

uint64_t sub_2405CBBA8()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *v1;
  v5[12] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[7];
    v7 = v5[8];

    return MEMORY[0x2822009F8](sub_2405CBD4C, v6, v7);
  }

  else
  {

    v8 = v5[1];

    return v8();
  }
}

uint64_t sub_2405CBD4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2405CBDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a2;
  v5[4] = v4;
  v5[2] = a1;
  v6 = *v4;
  v7 = *(*v4 + 80);
  v5[5] = v7;
  v8 = *(v6 + 88);
  v5[6] = v8;
  type metadata accessor for _Coordinated.Coerced(0, v7, v8, a4);
  swift_getWitnessTable();
  v10 = sub_24075A344();
  v5[7] = v10;
  v5[8] = v9;

  return MEMORY[0x2822009F8](sub_2405CBE88, v10, v9);
}

uint64_t sub_2405CBE88()
{
  v1 = *(v0 + 32);
  v3 = v1[5];
  v2 = v1[6];
  *(v0 + 72) = v2;
  v5 = v1[3];
  v4 = v1[4];
  *(v0 + 80) = v4;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = *(v0 + 16);
  *(v6 + 16) = *(v0 + 40);
  *(v6 + 32) = v5;
  *(v6 + 40) = v4;
  *(v6 + 48) = v7;
  *(v6 + 64) = v3;
  *(v6 + 72) = v2;

  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_2405CBF90;

  return sub_2405D01B4(sub_2405D569C, v6, v9, v10);
}

uint64_t sub_2405CBF90()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {
    v3 = v2[7];
    v4 = v2[8];

    return MEMORY[0x2822009F8](sub_2405CC0E0, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_2405CC0E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2405CC158(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, void (*a6)(uint64_t, char *), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a9 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16(v13);
  a4(v15);
  a6(a1, v15);
  return (*(v12 + 8))(v15, a9);
}

uint64_t sub_2405CC268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v8 = *(*v5 + 80);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v9 = *(v7 + 88);
  v6[11] = v9;
  type metadata accessor for _Coordinated.Coerced(0, v8, v9, v10);
  swift_getWitnessTable();
  v12 = sub_24075A344();
  v6[12] = v12;
  v6[13] = v11;

  return MEMORY[0x2822009F8](sub_2405CC3A4, v12, v11);
}

uint64_t sub_2405CC3A4()
{
  v0[14] = *(v0[7] + 16);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_2405CC44C;
  v4 = v0[10];
  v5 = v0[3];

  return sub_2405CAD04(v4, v5, v1, v2);
}

uint64_t sub_2405CC44C()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_2405CC56C, v3, v2);
}

uint64_t sub_2405CC56C()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];
  v8 = *(v2 + 24);
  v7 = *(v2 + 32);
  v0[16] = v7;
  v9 = swift_allocObject();
  v0[17] = v9;
  v9[2] = v3;
  v9[3] = v1;
  v9[4] = v5;
  v9[5] = v8;
  v9[6] = v7;
  v9[7] = v6;
  v9[8] = v4;
  swift_retain_n();

  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_2405CC698;
  v11 = v0[10];
  v12 = v0[6];
  v13 = v0[2];

  return sub_2405D0968(v13, v11, &unk_2407627D8, v9, v12);
}

uint64_t sub_2405CC698()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 152) = v0;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v7 = *(v2 + 96);
    v8 = *(v2 + 104);

    return MEMORY[0x2822009F8](sub_2405CC87C, v7, v8);
  }

  else
  {

    v9 = *(v6 + 8);

    return v9();
  }
}

uint64_t sub_2405CC87C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2405CC8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a6;
  v8[8] = a8;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v8[9] = *(a8 - 8);
  v8[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405CC9B0, 0, 0);
}

uint64_t sub_2405CC9B0()
{
  v1 = *(v0 + 48);
  (*(v0 + 32))(*(v0 + 24));
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_2405CCABC;
  v3 = *(v0 + 80);
  v4 = *(v0 + 16);

  return v6(v4, v3);
}

uint64_t sub_2405CCABC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_2405CCC50;
  }

  else
  {
    v2 = sub_2405CCBD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2405CCBD0()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2405CCC50()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2405CCCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *v6;
  v9 = *(*v6 + 80);
  v7[9] = v9;
  v10 = *(v8 + 88);
  v7[10] = v10;
  type metadata accessor for _Coordinated.Coerced(0, v9, v10, a4);
  swift_getWitnessTable();
  v12 = sub_24075A344();
  v7[11] = v12;
  v7[12] = v11;

  return MEMORY[0x2822009F8](sub_2405CCDB0, v12, v11);
}

uint64_t sub_2405CCDB0()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v18 = *(v0 + 40);
  v19 = *(v0 + 48);
  v6 = v4[5];
  v5 = v4[6];
  *(v0 + 104) = v5;
  v7 = v4[3];
  v8 = v4[4];
  *(v0 + 112) = v8;
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  v10 = *(v0 + 24);
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  *(v9 + 32) = v3;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  *(v9 + 56) = v10;
  *(v9 + 72) = v6;
  *(v9 + 80) = v5;
  v11 = v4[3];
  v12 = v4[4];
  *(v0 + 128) = v12;
  v13 = swift_allocObject();
  *(v0 + 136) = v13;
  v13[2] = v2;
  v13[3] = v1;
  v13[4] = v3;
  v13[5] = v11;
  v13[6] = v12;
  v13[7] = v18;
  v13[8] = v19;
  swift_retain_n();

  v14 = swift_task_alloc();
  *(v0 + 144) = v14;
  *v14 = v0;
  v14[1] = sub_2405CCF4C;
  v15 = *(v0 + 56);
  v16 = *(v0 + 16);

  return sub_2405D15E8(v16, sub_2405D57C0, v9, &unk_2407627F8, v13, v15);
}

uint64_t sub_2405CCF4C()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {
    v3 = v2[11];
    v4 = v2[12];

    return MEMORY[0x2822009F8](sub_2405CD0BC, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_2405CD0BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2405CD150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a6;
  v8[8] = a8;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v8[9] = *(a8 - 8);
  v8[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405CD214, 0, 0);
}

uint64_t sub_2405CD214()
{
  v1 = *(v0 + 48);
  (*(v0 + 32))(*(v0 + 24));
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_2405CD320;
  v3 = *(v0 + 80);
  v4 = *(v0 + 16);

  return v6(v4, v3);
}

uint64_t sub_2405CD320()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_2405DA4C4;
  }

  else
  {
    v2 = sub_2405DA4C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2405CD434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = *v4;
  v7 = *(*v4 + 80);
  v5[6] = v7;
  v8 = *(v6 + 88);
  v5[7] = v8;
  type metadata accessor for _Coordinated.Coerced(0, v7, v8, a4);
  swift_getWitnessTable();
  v10 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405CD50C, v10, v9);
}

uint64_t sub_2405CD50C()
{
  v6 = *(*(v0 + 40) + 24);
  v7 = *(v0 + 24);
  *(v0 + 64) = *(&v6 + 1);
  v1 = swift_allocObject();
  *(v0 + 72) = v1;
  v1[1] = *(v0 + 48);
  v1[2] = v7;
  v1[3] = v6;
  swift_retain_n();

  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_2405DA4CC;
  v4 = *(v0 + 16);

  return sub_2405D2298(v4, sub_2405D5928, v1, v2);
}

uint64_t sub_2405CD634(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15(v14);
  a3(a1, v13);
  return (*(v11 + 8))(v13, a8);
}

uint64_t sub_2405CD728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = *v4;
  v7 = *(*v4 + 80);
  v5[6] = v7;
  v8 = *(v6 + 88);
  v5[7] = v8;
  type metadata accessor for _Coordinated.Coerced(0, v7, v8, a4);
  swift_getWitnessTable();
  v10 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405CD800, v10, v9);
}

uint64_t sub_2405CD800()
{
  v6 = *(*(v0 + 40) + 24);
  v7 = *(v0 + 24);
  *(v0 + 64) = *(&v6 + 1);
  v1 = swift_allocObject();
  *(v0 + 72) = v1;
  v1[1] = *(v0 + 48);
  v1[2] = v7;
  v1[3] = v6;
  swift_retain_n();

  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_2405DA4CC;
  v4 = *(v0 + 16);

  return sub_2405D27F4(v4, &unk_240762828, v1, v2);
}

uint64_t sub_2405CD928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a6;
  v8[8] = a8;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v8[9] = *(a8 - 8);
  v8[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405CD9E8, 0, 0);
}

uint64_t sub_2405CD9E8()
{
  v1 = *(v0 + 32);
  (*(v0 + 48))(*(v0 + 24));
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_2405CDAF4;
  v3 = *(v0 + 80);
  v4 = *(v0 + 16);

  return v6(v4, v3);
}

uint64_t sub_2405CDAF4()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2405CDC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = *v4;
  v7 = *(*v4 + 80);
  v5[6] = v7;
  v8 = *(v6 + 88);
  v5[7] = v8;
  type metadata accessor for _Coordinated.Coerced(0, v7, v8, a4);
  swift_getWitnessTable();
  v10 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405CDD24, v10, v9);
}

uint64_t sub_2405CDD24()
{
  v6 = *(*(v0 + 40) + 24);
  v7 = *(v0 + 24);
  *(v0 + 64) = *(&v6 + 1);
  v1 = swift_allocObject();
  *(v0 + 72) = v1;
  v1[1] = *(v0 + 48);
  v1[2] = v7;
  v1[3] = v6;
  swift_retain_n();

  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_2405CDE4C;
  v4 = *(v0 + 16);

  return sub_2405D2F98(v4, &unk_240762848, v1, v2);
}

uint64_t sub_2405CDE4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2405CDF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a6;
  v8[8] = a8;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v8[9] = *(a8 - 8);
  v8[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405CE038, 0, 0);
}

uint64_t sub_2405CE038()
{
  v1 = *(v0 + 32);
  (*(v0 + 48))(*(v0 + 24));
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_2405CE144;
  v3 = *(v0 + 80);
  v4 = *(v0 + 16);

  return v6(v4, v3);
}

uint64_t sub_2405CE144()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2405CE2EC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_2405CE2EC()
{

  v1 = *(v0 + 8);

  return v1();
}

void *_Coordinated.Coerced.deinit()
{

  return v0;
}

uint64_t _Coordinated.Coerced.__deallocating_deinit()
{
  _Coordinated.Coerced.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2405CE3B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2405CE450;

  return sub_2405CA948(a1);
}

uint64_t sub_2405CE450()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2405CE544(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2405CE5D8;

  return sub_2405CB020(a1);
}

uint64_t sub_2405CE5D8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2405CE6D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2405DA4B0;

  return sub_2405CB87C(a1);
}

uint64_t sub_2405CE768(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2405DA4B0;

  return sub_2405CBDB0(a1, a2, v6, v7);
}

uint64_t sub_2405CE80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2405CE450;

  return sub_2405CC268(a1, a2, a3, a4, a5);
}

uint64_t sub_2405CE8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2405DA4B0;

  return sub_2405CCCD0(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2405CE9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_2405CD434(a1, a2, a3, v7);
}

uint64_t sub_2405CEA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_2405CD728(a1, a2, a3, v7);
}

uint64_t sub_2405CEB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_2405CDC4C(a1, a2, a3, v7);
}

uint64_t _AnyCoordinated.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a3;
  return result;
}

uint64_t _TypeEraser.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  return v2;
}

uint64_t _TypeEraser.init(wrappedValue:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = a1;
  return v1;
}

uint64_t _TypeEraser.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = CoordinationProtocol.into()(a2, a3);
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = v3;
  swift_unknownObjectRelease();
  return v4;
}

uint64_t _TypeEraser.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t _TypeEraser.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2405CED84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  type metadata accessor for _AnyCoordinated(0, *(*v4 + 80), a3, a4);
  swift_getWitnessTable();
  v7 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405CEE38, v7, v6);
}

uint64_t sub_2405CEE38()
{
  v1 = v0[3];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_2405CEEF4;
  v6 = v0[2];
  v7 = v0[3];

  return sub_2405CEFE8(v6, v3, v7, ObjectType, v2);
}

uint64_t sub_2405CEEF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2405CEFE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a3;
  v5[4] = *a3;
  v5[5] = swift_getAssociatedTypeWitness();
  v8 = swift_task_alloc();
  v5[6] = v8;
  v11 = (*(a5 + 24) + **(a5 + 24));
  v9 = swift_task_alloc();
  v5[7] = v9;
  *v9 = v5;
  v9[1] = sub_2405CF18C;

  return v11(v8, a4, a5);
}

uint64_t sub_2405CF18C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);

  v3 = *(v2 + 80);
  *(v1 + 64) = v3;
  type metadata accessor for _AnyCoordinated(0, v3, v4, v5);
  swift_getWitnessTable();
  v7 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405CF2FC, v7, v6);
}

uint64_t sub_2405CF2FC()
{
  swift_dynamicCast();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _AnyCoordinated.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return v3;
}

uint64_t sub_2405CF380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  type metadata accessor for _AnyCoordinated(0, *(*v4 + 80), a3, a4);
  swift_getWitnessTable();
  v7 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405CF434, v7, v6);
}

uint64_t sub_2405CF434()
{
  v1 = v0[3];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_2405CF4EC;
  v6 = v0[2];
  v7 = v0[3];

  return sub_2405CF5E8(v3, v6, v7, ObjectType, v2);
}

uint64_t sub_2405CF4EC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2405CF5E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v6 = *a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for _Coordinated.ValueUpdate.Response(0, AssociatedTypeWitness, v8, v9);
  v5[6] = v10;
  v5[7] = *(v10 - 8);
  v5[8] = swift_task_alloc();
  v11 = *(v6 + 80);
  v14 = type metadata accessor for _Coordinated.ValueUpdate.Response(0, v11, v12, v13);
  v5[9] = v14;
  v5[10] = *(v14 - 8);
  v5[11] = swift_task_alloc();
  type metadata accessor for _AnyCoordinated(0, v11, v15, v16);
  swift_getWitnessTable();
  v18 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405CF794, v18, v17);
}

uint64_t sub_2405CF794()
{
  v7 = v0[5];
  (*(v0[10] + 16))(v0[11], v0[3], v0[9]);
  swift_dynamicCast();
  v6 = (*(v7 + 32) + **(v7 + 32));
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_2405CF8F8;
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[5];

  return v6(v2, v3, v4);
}

uint64_t sub_2405CF8F8(uint64_t a1)
{
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v8 = *v1;

  (*(v4 + 8))(v3, v5);

  v6 = *(v8 + 8);

  return v6(a1);
}

uint64_t sub_2405CFA7C(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[3];
  ObjectType = swift_getObjectType();
  v14 = a1;
  v8 = *(v3 + 80);
  v9 = ObjectType;
  v10 = v4;
  v11 = sub_2405D5B28;
  v12 = &v13;
  return sub_2405CB6C8(sub_2405D5B8C, v7, "AppleIDSetup/Coordinated.swift", 30, 2u, 649, ObjectType, MEMORY[0x277D84F78] + 8, *(*(v4 + 8) + 16));
}

uint64_t sub_2405CFB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  type metadata accessor for _AnyCoordinated(0, *(*v4 + 80), a3, a4);
  swift_getWitnessTable();
  v7 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405CFC04, v7, v6);
}

uint64_t sub_2405CFC04()
{
  v1 = v0[3];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_2405CEEF4;
  v6 = v0[2];
  v7 = v0[3];

  return sub_2405CFCBC(v3, v6, v7, ObjectType, v2);
}

uint64_t sub_2405CFCBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v6 = *a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[6] = AssociatedTypeWitness;
  v5[7] = *(AssociatedTypeWitness - 8);
  v5[8] = swift_task_alloc();
  v8 = *(v6 + 80);
  v5[9] = v8;
  v5[10] = *(v8 - 8);
  v5[11] = swift_task_alloc();
  type metadata accessor for _AnyCoordinated(0, v8, v9, v10);
  swift_getWitnessTable();
  v12 = sub_24075A344();
  v5[12] = v12;
  v5[13] = v11;

  return MEMORY[0x2822009F8](sub_2405CFE54, v12, v11);
}

uint64_t sub_2405CFE54()
{
  v7 = v0[5];
  (*(v0[10] + 16))(v0[11], v0[3], v0[9]);
  swift_dynamicCast();
  v6 = (*(v7 + 40) + **(v7 + 40));
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_2405CFFB8;
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[5];

  return v6(v2, v3, v4);
}

uint64_t sub_2405CFFB8()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {
    v3 = v2[12];
    v4 = v2[13];

    return MEMORY[0x2822009F8](sub_2405D0128, v3, v4);
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_2405D0128()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2405D01B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a2;
  v5[4] = v4;
  v5[2] = a1;
  type metadata accessor for _AnyCoordinated(0, *(*v4 + 80), a3, a4);
  swift_getWitnessTable();
  v7 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405D026C, v7, v6);
}

uint64_t sub_2405D026C()
{
  v1 = v0[4];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_2405D0328;
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return sub_2405D041C(v3, v8, v6, v7, ObjectType, v2);
}

uint64_t sub_2405D0328()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2405D041C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v7 = *(*a4 + 80);
  v6[7] = v7;
  type metadata accessor for _AnyCoordinated(0, v7, a3, a4);
  swift_getWitnessTable();
  v9 = sub_24075A344();
  v6[8] = v9;
  v6[9] = v8;

  return MEMORY[0x2822009F8](sub_2405D04E0, v9, v8);
}

uint64_t sub_2405D04E0()
{
  v1 = *(v0 + 56);
  v10 = *(v0 + 48);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v10;
  *(v3 + 40) = v4;
  v9 = (*(v10 + 48) + **(v10 + 48));
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_2405D0634;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);

  return v9(sub_2405D9FC0, v3, v6, v7);
}

uint64_t sub_2405D0634()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[8];
    v4 = v2[9];

    return MEMORY[0x2822009F8](sub_2405CE2EC, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_2405D076C(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v21 - v11;
  v13 = *(a4 - 8);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v21 - v17;
  (*(v19 + 32))(v12, a1, AssociatedTypeWitness);
  swift_dynamicCast();
  a2(v18);
  (*(v13 + 16))(v16, v18, a4);
  swift_dynamicCast();
  return (*(v13 + 8))(v18, a4);
}

uint64_t sub_2405D0968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  type metadata accessor for _AnyCoordinated(0, *(*v5 + 80), a3, a4);
  swift_getWitnessTable();
  v8 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405D0A24, v8, v7);
}

uint64_t sub_2405D0A24()
{
  v1 = *(v0[7] + 16);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_2405D0AEC;
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return sub_2405D0BE0(v8, v1, v9, v6, v7, v4, v5, ObjectType);
}

uint64_t sub_2405D0AEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2405D0BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v18;
  v8[6] = a5;
  v8[7] = a7;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = *a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v8[11] = *(AssociatedTypeWitness - 8);
  v8[12] = swift_task_alloc();
  v11 = *(v9 + 80);
  v8[13] = v11;
  v8[14] = *(v11 - 8);
  v8[15] = swift_task_alloc();
  type metadata accessor for _AnyCoordinated(0, v11, v12, v13);
  swift_getWitnessTable();
  v15 = sub_24075A344();
  v8[16] = v15;
  v8[17] = v14;

  return MEMORY[0x2822009F8](sub_2405D0D80, v15, v14);
}

uint64_t sub_2405D0D80()
{
  v1 = *(v0 + 104);
  v15 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v13 = *(v0 + 56);
  (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 32), v1);
  swift_dynamicCast();
  v4 = swift_allocObject();
  *(v0 + 144) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v13;
  *(v4 + 40) = v15;
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
  v5 = *(v15 + 56);

  v14 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  *v6 = v0;
  v6[1] = sub_2405D0F50;
  v7 = *(v0 + 96);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  v10 = *(v0 + 56);
  v11 = *(v0 + 16);

  return v14(v11, v7, &unk_240763410, v4, v10, v8, v9);
}

uint64_t sub_2405D0F50()
{
  v2 = *v1;
  v2[20] = v0;

  if (v0)
  {
    v3 = v2[16];
    v4 = v2[17];

    return MEMORY[0x2822009F8](sub_2405D10CC, v3, v4);
  }

  else
  {
    v6 = v2[11];
    v5 = v2[12];
    v7 = v2[10];

    (*(v6 + 8))(v5, v7);

    v8 = v2[1];

    return v8();
  }
}

uint64_t sub_2405D10CC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2405D116C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v8[7] = *(a5 - 8);
  v8[8] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[9] = AssociatedTypeWitness;
  v8[10] = *(AssociatedTypeWitness - 8);
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405D12A4, 0, 0);
}

uint64_t sub_2405D12A4()
{
  v1 = v0[4];
  (*(v0[10] + 16))(v0[11], v0[3], v0[9]);
  swift_dynamicCast();
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_2405D13E8;
  v3 = v0[8];
  v4 = v0[2];

  return v6(v4, v3);
}

uint64_t sub_2405D13E8()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2405D155C, 0, 0);
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_2405D155C()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2405D15E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  type metadata accessor for _AnyCoordinated(0, *(*v6 + 80), a3, a4);
  swift_getWitnessTable();
  v9 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405D16A8, v9, v8);
}

uint64_t sub_2405D16A8()
{
  v1 = *(v0[8] + 16);
  swift_getObjectType();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_2405D1770;
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_2405D1864(v9, v1, v7, v8, v5, v6, v3, v4);
}

uint64_t sub_2405D1770()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2405D1864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = v14;
  v8[10] = v15;
  v8[7] = a6;
  v8[8] = a8;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = *(*a7 + 80);
  v8[11] = v9;
  type metadata accessor for _AnyCoordinated(0, v9, a3, a4);
  swift_getWitnessTable();
  v11 = sub_24075A344();
  v8[12] = v11;
  v8[13] = v10;

  return MEMORY[0x2822009F8](sub_2405D1938, v11, v10);
}

uint64_t sub_2405D1938()
{
  v1 = *(v0 + 88);
  v17 = *(v0 + 80);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  v7 = *(v0 + 32);
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  *(v6 + 40) = v17;
  *(v6 + 48) = v7;
  v8 = swift_allocObject();
  *(v0 + 120) = v8;
  v8[2] = v1;
  v8[3] = v3;
  v8[4] = v2;
  v8[5] = v17;
  v8[6] = v5;
  v8[7] = v4;
  v9 = *(v17 + 64);

  v16 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *v10 = v0;
  v10[1] = sub_2405D1B00;
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  v13 = *(v0 + 64);
  v14 = *(v0 + 16);

  return (v16)(v14, sub_2405D9DF8, v6, &unk_240763400, v8, v13, v11, v12);
}

uint64_t sub_2405D1B00()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {
    v3 = v2[12];
    v4 = v2[13];

    return MEMORY[0x2822009F8](sub_2405D1C44, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_2405D1C44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2405D1CB0(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v22 - v12;
  v14 = *(a4 - 8);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v22 - v18;
  (*(v20 + 32))(v13, a1, AssociatedTypeWitness);
  swift_dynamicCast();
  a2(v19);
  (*(v14 + 16))(v17, v19, a4);
  swift_dynamicCast();
  return (*(v14 + 8))(v19, a4);
}

uint64_t sub_2405D1EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v8[7] = *(a5 - 8);
  v8[8] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[9] = AssociatedTypeWitness;
  v8[10] = *(AssociatedTypeWitness - 8);
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405D1FE0, 0, 0);
}

uint64_t sub_2405D1FE0()
{
  v1 = v0[4];
  (*(v0[10] + 16))(v0[11], v0[3], v0[9]);
  swift_dynamicCast();
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_2405D2124;
  v3 = v0[8];
  v4 = v0[2];

  return v6(v4, v3);
}

uint64_t sub_2405D2124()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2405DA4B8, 0, 0);
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_2405D2298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  type metadata accessor for _AnyCoordinated(0, *(*v4 + 80), a3, a4);
  swift_getWitnessTable();
  v7 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405D2350, v7, v6);
}

uint64_t sub_2405D2350()
{
  v1 = v0[5];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2405DA4BC;
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return sub_2405D2410(v8, v3, v9, v6, v7, ObjectType, v2);
}

uint64_t sub_2405D2410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v8 = *(*a5 + 80);
  v7[8] = v8;
  type metadata accessor for _AnyCoordinated(0, v8, a3, a4);
  swift_getWitnessTable();
  v10 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405D24D4, v10, v9);
}

uint64_t sub_2405D24D4()
{
  v1 = v0[8];
  v13 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  v5 = swift_allocObject();
  v0[9] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v13;
  v5[5] = v4;
  v5[6] = v2;
  v6 = *(v13 + 72);

  v12 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_2405DA4AC;
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[2];

  return (v12)(v10, sub_2405D9DE8, v5, v8, v9);
}

uint64_t sub_2405D264C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *), uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v14 + 16))(&v16 - v13, a2, AssociatedTypeWitness);
  swift_dynamicCast();
  a3(a1, v11);
  return (*(v9 + 8))(v11, a5);
}

uint64_t sub_2405D27F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  type metadata accessor for _AnyCoordinated(0, *(*v4 + 80), a3, a4);
  swift_getWitnessTable();
  v7 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405D28AC, v7, v6);
}

uint64_t sub_2405D28AC()
{
  v1 = v0[5];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2405DA4BC;
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return sub_2405D296C(v8, v3, v9, v6, v7, ObjectType, v2);
}

uint64_t sub_2405D296C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v8 = *(*a5 + 80);
  v7[8] = v8;
  type metadata accessor for _AnyCoordinated(0, v8, a3, a4);
  swift_getWitnessTable();
  v10 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405D2A30, v10, v9);
}

uint64_t sub_2405D2A30()
{
  v1 = v0[8];
  v13 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  v5 = swift_allocObject();
  v0[9] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v13;
  v5[5] = v4;
  v5[6] = v2;
  v6 = *(v13 + 80);

  v12 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_2405DA4AC;
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[2];

  return (v12)(v10, &unk_2407633F0, v5, v8, v9);
}

uint64_t sub_2405D2BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[7] = *(a5 - 8);
  v7[8] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[9] = AssociatedTypeWitness;
  v7[10] = *(AssociatedTypeWitness - 8);
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405D2CE0, 0, 0);
}

uint64_t sub_2405D2CE0()
{
  v1 = v0[4];
  (*(v0[10] + 16))(v0[11], v0[3], v0[9]);
  swift_dynamicCast();
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_2405D2E24;
  v3 = v0[8];
  v4 = v0[2];

  return v6(v4, v3);
}

uint64_t sub_2405D2E24()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2405D2F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  type metadata accessor for _AnyCoordinated(0, *(*v4 + 80), a3, a4);
  swift_getWitnessTable();
  v7 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405D3050, v7, v6);
}

uint64_t sub_2405D3050()
{
  v1 = v0[5];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2405D3110;
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return sub_2405D3204(v8, v3, v9, v6, v7, ObjectType, v2);
}

uint64_t sub_2405D3110()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2405D3204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v8 = *(*a5 + 80);
  v7[8] = v8;
  type metadata accessor for _AnyCoordinated(0, v8, a3, a4);
  swift_getWitnessTable();
  v10 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405D32C8, v10, v9);
}

uint64_t sub_2405D32C8()
{
  v1 = v0[8];
  v13 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  v5 = swift_allocObject();
  v0[9] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v13;
  v5[5] = v4;
  v5[6] = v2;
  v6 = *(v13 + 88);

  v12 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_2405D3440;
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[2];

  return (v12)(v10, &unk_2407633E0, v5, v8, v9);
}

uint64_t sub_2405D3440()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2405D3550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[7] = *(a5 - 8);
  v7[8] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[9] = AssociatedTypeWitness;
  v7[10] = *(AssociatedTypeWitness - 8);
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405D3688, 0, 0);
}

uint64_t sub_2405D3688()
{
  v1 = v0[4];
  (*(v0[10] + 16))(v0[11], v0[3], v0[9]);
  swift_dynamicCast();
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_2405D2124;
  v3 = v0[8];
  v4 = v0[2];

  return v6(v4, v3);
}

uint64_t _AnyCoordinated.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2405D3828(uint64_t a1)
{
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2405DA4B0;

  return sub_2405CED84(a1, v3, v4, v5);
}

uint64_t sub_2405D38C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2405DA4D8;

  return sub_2405CF380(a1, v4, v5, v6);
}

uint64_t sub_2405D3954(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2405DA4B0;

  return sub_2405CFB50(a1, v4, v5, v6);
}

uint64_t sub_2405D39E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2405DA4B0;

  return sub_2405D01B4(a1, a2, v6, v7);
}

uint64_t sub_2405D3A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2405DA4B0;

  return sub_2405D0968(a1, a2, a3, a4, a5);
}

uint64_t sub_2405D3B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2405DA4B0;

  return sub_2405D15E8(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2405D3C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_2405D2298(a1, a2, a3, v7);
}

uint64_t sub_2405D3CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_2405D27F4(a1, a2, a3, v7);
}

uint64_t sub_2405D3D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_2405D2F98(a1, a2, a3, v7);
}

Swift::Void __swiftcall CoordinationProtocol.invalidate()()
{
  v2 = v1;
  v3 = v0;
  if (qword_27E4B5EA8 != -1)
  {
    swift_once();
  }

  v4 = sub_240759AE4();
  __swift_project_value_buffer(v4, qword_27E4B7420);
  v5 = sub_240759AC4();
  v6 = sub_24075A5C4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v9 = sub_24075AFC4();
    v11 = sub_2405BBA7C(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_240579000, v5, v6, "%s invalidating by cancelling", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CC76B0](v8, -1, -1);
    MEMORY[0x245CC76B0](v7, -1, -1);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for _Coordinated.CommonError(0, AssociatedTypeWitness, v13, v14);
  swift_getWitnessTable();
  v15 = swift_allocError();
  *v16 = xmmword_240762430;
  v17 = v15;
  (*(*(v2 + 8) + 24))(&v17, v3);
}

uint64_t sub_2405D4040(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7A88, &qword_240763428);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7448, &qword_240762720);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = *(*a2 + 104);
  swift_beginAccess();
  sub_2405DA11C(v6, a2 + v9);
  return swift_endAccess();
}

uint64_t sub_2405D4184()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7A88, &qword_240763428);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7448, &qword_240762720);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  v11 = *(*v0 + 104);
  swift_beginAccess();
  sub_2405B044C(&v0[v11], v6, &qword_27E4B7A88, &qword_240763428);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_2405B8A50(v6, &qword_27E4B7A88, &qword_240763428);
  }

  (*(v8 + 32))(v10, v6, v7);
  if (v0[112])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7A90, &qword_240763430);
    sub_240590128(&qword_27E4B7A98, &qword_27E4B7A90, &qword_240763430, &protocol conformance descriptor for ValueIntercept<A>.DroppedPending);
    v13[0] = swift_allocError();
    sub_24075A354();
    (*(v8 + 8))(v10, v7);
    (*(v8 + 56))(v4, 1, 1, v7);
    swift_beginAccess();
    sub_2405DA11C(v4, &v0[v11]);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AA0, &qword_240763438);
    sub_240590128(&qword_27E4B7AA8, &qword_27E4B7AA0, &qword_240763438, &protocol conformance descriptor for ValueIntercept<A>.DroppedNew);
    swift_allocError();
    swift_willThrow();
    return (*(v8 + 8))(v10, v7);
  }
}

unint64_t sub_2405D44D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240759FF4();

  return sub_2405D452C(a1, v6, a2, a3);
}

unint64_t sub_2405D452C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_24075A054();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_2405D46B4@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2405D4770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;

  v14 = a3;
  sub_2405D9FF8(&v14);
}

void *sub_2405D4820(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_2405D4840(uint64_t (*a1)(void))
{
  a1();

  return sub_24075AFC4();
}

unint64_t sub_2405D487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_24075A304())
  {
    sub_24075AA14();
    v13 = sub_24075AA04();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_24075A304();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_24075A2F4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_24075A884();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_2405D44D0(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

void sub_2405D4B80()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37[-1] - v4;
  if (qword_27E4B5EA8 != -1)
  {
    swift_once();
  }

  v6 = sub_240759AE4();
  __swift_project_value_buffer(v6, qword_27E4B7420);
  v7 = sub_240759AC4();
  v8 = sub_24075A5C4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37[0] = v10;
    *v9 = 136315138;
    v11 = sub_24075AFC4();
    v13 = sub_2405BBA7C(v11, v12, v37);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_240579000, v7, v8, "%s Handling cancellation for error:", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  *(v0 + (*v0)[16].isa) = 1;
  v14 = (v0 + (*v0)[15].isa);
  v15 = *v14;
  if (*v14)
  {
    v16 = v14[1];
    *v14 = 0;
    v14[1] = 0;

    sub_24058CA60(v15, v16);
    sub_24057B5BC(v15, v16);

    v17 = sub_240759AC4();
    v18 = sub_24075A5C4();

    sub_24058CA60(v15, v16);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38 = v20;
      *v19 = 136315394;
      v37[0] = v1;
      isa = v2[10].isa;
      type metadata accessor for _Coordinated(0, isa, v22, v23);
      v36 = v2;

      v24 = sub_24075A0E4();
      v26 = sub_2405BBA7C(v24, v25, &v38);

      *(v19 + 4) = v26;
      *(v19 + 12) = 2080;
      v27 = swift_allocObject();
      v27[2] = isa;
      v27[3] = v15;
      v27[4] = v16;
      v37[0] = &unk_240763480;
      v37[1] = v27;

      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
      sub_24075AEE4();
      swift_getFunctionTypeMetadata1();
      v28 = sub_24075A0E4();
      v30 = sub_2405BBA7C(v28, v29, &v38);
      v2 = v36;

      *(v19 + 14) = v30;
      _os_log_impl(&dword_240579000, v17, v18, "Invalidating %s with currentUpdateHandler: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC76B0](v20, -1, -1);
      MEMORY[0x245CC76B0](v19, -1, -1);
    }

    v31 = sub_24075A3D4();
    (*(*(v31 - 8) + 56))(v5, 1, 1, v31);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v2[10].isa;
    v32[5] = v15;
    v32[6] = v16;
    sub_240602F08(0, 0, v5, &unk_240763470, v32);
  }

  else
  {
    v36 = sub_240759AC4();
    v33 = sub_24075A5D4();
    if (os_log_type_enabled(v36, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_240579000, v36, v33, "Nothing to actively invalidate", v34, 2u);
      MEMORY[0x245CC76B0](v34, -1, -1);
    }

    v35 = v36;
  }
}

uint64_t sub_2405D50A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v7 = *(v4 - 8);
  (*(v7 + 8))(a1, v4);
  v5 = *(v7 + 16);

  return v5(a1, v3, v4);
}

uint64_t sub_2405D5174(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v7 = *(v3 - 8);
  (*(v7 + 8))(a1, v3);
  v5 = *(v7 + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_2405D5248(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2405DA4B0;

  return sub_2405C3AE8(a1, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t sub_2405D532C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_2405C67FC(a1, a2, v6, v7);
}

uint64_t sub_2405D53EC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return sub_2405C6B3C(a1, a2, v6);
}

uint64_t sub_2405D54AC()
{
  v1 = *(v0 + 16);
  v2 = *(sub_2407597B4() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2405C7380(v0 + v3, v4, v1);
}

uint64_t sub_2405D5548(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2407597B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2405D55A4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B7460, &qword_240762770);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2405D56D0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2405DA4B0;

  return sub_2405CC8EC(a1, a2, v8, v9, v10, v11, v6, v7);
}

uint64_t objectdestroy_41Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2405D5838(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2405DA4B0;

  return sub_2405CD150(a1, a2, v8, v9, v10, v11, v6, v7);
}

uint64_t sub_2405D5938(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2405DA4B0;

  return sub_2405CD928(a1, a2, v8, v9, v11, v10, v6, v7);
}

uint64_t objectdestroy_54Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2405D5A50(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2405DA4B0;

  return sub_2405CDF78(a1, a2, v8, v9, v11, v10, v6, v7);
}

uint64_t sub_2405D5B28(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  ObjectType = swift_getObjectType();
  v7 = v4;
  return (*(*(a2 + 8) + 24))(&v7, ObjectType);
}

uint64_t sub_2405D5BD8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2405D5C14(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2405D5CEC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2405D5D28(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2405D5D64(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2405D5DA0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t dispatch thunk of CoordinationProtocol.wrappedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CoordinationProtocol.submit(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4D8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CoordinationProtocol.updateWithoutCoordination(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CoordinationProtocol.updatingWithoutCoordination(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2405DA4B0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CoordinationProtocol.updateWithCoordination<A>(to:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 56) + **(a7 + 56));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2405DA4B0;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of CoordinationProtocol.updatingWithCoordination<A>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 64) + **(a8 + 64));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_2405DA4B0;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of CoordinationProtocol.tapping(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 72) + **(a5 + 72));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2405DA4B0;

  return v13(a1, a2, a3, a4, a5);
}

{
  v13 = (*(a5 + 80) + **(a5 + 80));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2405DA4B0;

  return v13(a1, a2, a3, a4, a5);
}

{
  v13 = (*(a5 + 88) + **(a5 + 88));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2405DA4B0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_2405D6914(uint64_t a1)
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

uint64_t dispatch thunk of _Coordinated.submit(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 272) + **(*v1 + 272));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2405DA4D8;

  return v6(a1);
}

uint64_t dispatch thunk of _Coordinated.updateWithoutCoordination(to:)(uint64_t a1)
{
  v6 = (*(*v1 + 304) + **(*v1 + 304));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2405DA4B0;

  return v6(a1);
}

uint64_t dispatch thunk of _Coordinated.updatingWithoutCoordination(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 312) + **(*v2 + 312));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2405DA4B0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of _Coordinated.updateWithCoordination<A>(to:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 320) + **(*v5 + 320));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_2405CE450;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of _Coordinated.updatingWithCoordination<A>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 328) + **(*v6 + 328));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_2405DA4B0;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of _Coordinated.tapping(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 352) + **(*v3 + 352));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2405DA4B0;

  return v10(a1, a2, a3);
}

{
  v10 = (*(*v3 + 360) + **(*v3 + 360));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2405DA4B0;

  return v10(a1, a2, a3);
}

{
  v10 = (*(*v3 + 368) + **(*v3 + 368));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2405DA4B0;

  return v10(a1, a2, a3);
}

uint64_t sub_2405D74C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup12_CoordinatedC11CommonErrorOyx_G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2405D7514(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2405D7568(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_2405D75C4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_2405D762C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2405D7674(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_2405D76D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_2405D774C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_2405D7B20();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2405D77EC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 9) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 9) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_2405D7944(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 9] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = a2 - 1;
        }

        *v20 = v21;
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

void sub_2405D7B20()
{
  if (!qword_27E4B7700[0])
  {
    v0 = sub_240759924();
    if (!v1)
    {
      atomic_store(v0, qword_27E4B7700);
    }
  }
}

uint64_t sub_2405D7B70(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2405D7BF0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_2405D7D58(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

  v18(v19);
}

uint64_t sub_2405D7F84(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2405D7FE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_2405D8160(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t dispatch thunk of _Coordinated.Coerced.wrappedValue.getter(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2405DA4B0;

  return v6(a1);
}

uint64_t dispatch thunk of _Coordinated.Coerced.submit(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 200) + **(*v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2405DA4D8;

  return v6(a1);
}

uint64_t dispatch thunk of _Coordinated.Coerced.updateWithoutCoordination(to:)(uint64_t a1)
{
  v6 = (*(*v1 + 216) + **(*v1 + 216));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2405DA4B0;

  return v6(a1);
}

uint64_t dispatch thunk of _Coordinated.Coerced.updatingWithoutCoordination(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 224) + **(*v2 + 224));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2405DA4B0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of _Coordinated.Coerced.updateWithCoordination<A>(to:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 232) + **(*v5 + 232));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_2405DA4B0;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of _Coordinated.Coerced.updatingWithCoordination<A>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 240) + **(*v6 + 240));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_2405DA4B0;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of _Coordinated.Coerced.tapping(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 248) + **(*v3 + 248));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2405DA4B0;

  return v10(a1, a2, a3);
}

{
  v10 = (*(*v3 + 256) + **(*v3 + 256));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2405DA4B0;

  return v10(a1, a2, a3);
}

{
  v10 = (*(*v3 + 264) + **(*v3 + 264));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2405DA4B0;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of _AnyCoordinated.wrappedValue.getter(uint64_t a1)
{
  v6 = (*(*v1 + 104) + **(*v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2405DA4B0;

  return v6(a1);
}

uint64_t dispatch thunk of _AnyCoordinated.submit(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2405DA4D8;

  return v6(a1);
}

uint64_t dispatch thunk of _AnyCoordinated.updateWithoutCoordination(to:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2405DA4B0;

  return v6(a1);
}

uint64_t dispatch thunk of _AnyCoordinated.updatingWithoutCoordination(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2405DA4B0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of _AnyCoordinated.updateWithCoordination<A>(to:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 152) + **(*v5 + 152));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_2405DA4B0;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of _AnyCoordinated.updatingWithCoordination<A>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 160) + **(*v6 + 160));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_2405DA4B0;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of _AnyCoordinated.tapping(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 168) + **(*v3 + 168));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2405DA4B0;

  return v10(a1, a2, a3);
}

{
  v10 = (*(*v3 + 176) + **(*v3 + 176));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2405DA4B0;

  return v10(a1, a2, a3);
}

{
  v10 = (*(*v3 + 184) + **(*v3 + 184));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2405DA4B0;

  return v10(a1, a2, a3);
}

uint64_t sub_2405D9C40(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2405DA4B0;

  return sub_2405D3550(a1, a2, v9, v10, v6, v7, v8);
}

uint64_t sub_2405D9D14(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2405DA4B0;

  return sub_2405D2BA8(a1, a2, v9, v10, v6, v7, v8);
}

uint64_t sub_2405D9E08(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2405DA4B0;

  return sub_2405D1EA8(a1, a2, v11, v10, v6, v7, v8, v9);
}

uint64_t sub_2405D9EE4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2405DA4B0;

  return sub_2405D116C(a1, a2, v11, v10, v6, v7, v8, v9);
}

uint64_t sub_2405DA024(uint64_t a1)
{
  v4 = *(sub_2407597B4() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[5];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2405DA4B0;

  return sub_2405C791C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2405DA11C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7A88, &qword_240763428);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2405DA19C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2405CE5D8;

  return sub_2405C3FF8(a1, v6, v7, v8, v4, v5);
}

uint64_t sub_2405DA260(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405CE450;

  return sub_2405C5420(a1, v4, v5, v6);
}

uint64_t sub_2405DA314(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2405DA4B0;

  return sub_2405C1D50(a1, v4, v5, v7, v8, v6);
}

uint64_t sub_2405DA3DC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return sub_2405C1B48(a1, a2, v6);
}

uint64_t sub_2405DA504(__int128 *a1)
{
  v3 = type metadata accessor for IdMSAccount(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v19 - v8;
  MEMORY[0x245CC6BE0](*v1);
  sub_24075AE94();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
  v11 = v1 + *(v10 + 32);
  sub_2405E1930(v11, v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_24075AE94();
  }

  else
  {
    sub_2405E1A54(v9, v6, type metadata accessor for IdMSAccount);
    sub_24075AE94();
    IdMSAccount.hash(into:)(a1);
    sub_2405E19A0(v6, type metadata accessor for IdMSAccount);
  }

  v12 = type metadata accessor for AgeMigrationModel(0);
  v13 = v11 + *(v12 + 20);
  v14 = *(v13 + 16);
  v15 = *v13;
  v17 = *(v13 + 24);
  v13 += 24;
  v16 = v17;
  LOWORD(v17) = *(v13 + 4);
  LOBYTE(v13) = *(v13 + 6);
  v19[0] = v15;
  *&v19[1] = v14;
  BYTE14(v19[1]) = v13;
  WORD6(v19[1]) = v17;
  DWORD2(v19[1]) = v16;
  RemoteRole.hash(into:)(a1);
  memcpy(v19, (v11 + *(v12 + 24)), 0x131uLL);
  DiscoveryModel.hash(into:)(a1);
  AgeMigrationModel.State.hash(into:)(a1);
  *&v19[0] = *(v1 + *(v10 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7460, &qword_240762770);
  sub_2405E6D2C();
  return sub_24075A004();
}

uint64_t sub_2405DA794(__int128 *a1)
{
  MEMORY[0x245CC6BE0](*v1);
  sub_24075AE94();
  v3 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0) + 32);
  sub_24075A114();
  v4 = type metadata accessor for RepairModel(0);
  v5.n128_f64[0] = SetupModel.hash(into:)(a1);
  v6 = v3[*(v4 + 24) + 40];
  if (v6 <= 0xFC)
  {
    if (v6 == 251)
    {
      v7 = 5;
    }

    else
    {
      if (v6 != 252)
      {
        MEMORY[0x245CC6BA0](4);
        RepairError.hash(into:)(a1);
        goto LABEL_10;
      }

      v7 = 3;
    }
  }

  else if (v6 == 253)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6 == 254;
  }

  MEMORY[0x245CC6BA0](v7, v5);
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7460, &qword_240762770);
  sub_2405E6D2C();
  return sub_24075A004();
}

uint64_t sub_2405DA908(__int128 *a1)
{
  v3 = type metadata accessor for IdMSAccount(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  MEMORY[0x245CC6BE0](*v1);
  MEMORY[0x245CC6BE0](v1[1]);
  v10 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AD0, &unk_24076CCE0) + 32);
  sub_2405E1930(v10, v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_24075AE94();
  }

  else
  {
    sub_2405E1A54(v9, v6, type metadata accessor for IdMSAccount);
    sub_24075AE94();
    IdMSAccount.hash(into:)(a1);
    sub_2405E19A0(v6, type metadata accessor for IdMSAccount);
  }

  v11 = type metadata accessor for AgeMigrationModel(0);
  v12 = v10 + *(v11 + 20);
  v13 = *(v12 + 16);
  v14 = *v12;
  v16 = *(v12 + 24);
  v12 += 24;
  v15 = v16;
  LOWORD(v16) = *(v12 + 4);
  LOBYTE(v12) = *(v12 + 6);
  v18[0] = v14;
  *&v18[1] = v13;
  BYTE14(v18[1]) = v12;
  WORD6(v18[1]) = v16;
  DWORD2(v18[1]) = v15;
  RemoteRole.hash(into:)(a1);
  memcpy(v18, (v10 + *(v11 + 24)), 0x131uLL);
  DiscoveryModel.hash(into:)(a1);
  return AgeMigrationModel.State.hash(into:)(a1);
}

unint64_t MachAgeMigrationMessage.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AgeMigrationModel(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MachAgeMigrationMessage(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2405DAF80(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_2405E19A0(v7, type metadata accessor for MachAgeMigrationMessage);
        v10 = 0xEF74736575716552;
        v11 = 0x6574746573696E61;
      }

      else
      {
        sub_2405E1A54(v7, v4, type metadata accessor for AgeMigrationModel);
        *&v27 = 0x286574617267696DLL;
        *(&v27 + 1) = 0xE800000000000000;
        v9 = AgeMigrationModel.description.getter();
        MEMORY[0x245CC5E60](v9);

        MEMORY[0x245CC5E60](41, 0xE100000000000000);
        v10 = *(&v27 + 1);
        v11 = v27;
        sub_2405E19A0(v4, type metadata accessor for AgeMigrationModel);
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v10 = 0x80000002407865D0;
      sub_2405E19A0(v7, type metadata accessor for MachAgeMigrationMessage);
      v11 = 0xD000000000000010;
      goto LABEL_17;
    }

    v20 = *(v7 + 1);
    v27 = *v7;
    v28 = v20;
    v29 = *(v7 + 4);
    v25 = 0x2874726F706572;
    v26 = 0xE700000000000000;
    v21 = AgeMigrationReport.description.getter();
    v23 = v22;
    sub_2405DB080(&v27);
    MEMORY[0x245CC5E60](v21, v23);

LABEL_15:
    v11 = v25;
    v10 = v26;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      v10 = 0xE700000000000000;
      v11 = 0x74706965636572;
      goto LABEL_17;
    }

    v12 = *v7;
    v13 = *(v7 + 1);
    v14 = *(v7 + 2);
    v15 = *(v7 + 3);
    v16 = *(v7 + 4);
    v25 = 0x286572756C696166;
    v26 = 0xE800000000000000;
    *&v27 = v12;
    *(&v27 + 1) = v13;
    *&v28 = v14;
    *(&v28 + 1) = v15;
    v29 = v16;
    sub_2405DAFE4();
    v17 = sub_24075AE04();
    v19 = v18;
    sub_2405DB038(v12, v13, v14, v15, v16);
    MEMORY[0x245CC5E60](v17, v19);

    MEMORY[0x245CC5E60](41, 0xE100000000000000);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v10 = 0x80000002407865B0;
    sub_2405E19A0(v7, type metadata accessor for MachAgeMigrationMessage);
    v11 = 0xD000000000000016;
  }

  else
  {
    v10 = 0x8000000240786590;
    sub_2405E19A0(v7, type metadata accessor for MachAgeMigrationMessage);
    v11 = 0xD000000000000018;
  }

LABEL_17:
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_24075A864();

  v25 = 0xD000000000000018;
  v26 = 0x8000000240786570;
  MEMORY[0x245CC5E60](v11, v10);

  return v25;
}

uint64_t type metadata accessor for MachAgeMigrationMessage(uint64_t a1)
{
  result = qword_27E4B7DA0;
  if (!qword_27E4B7DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2405DAF80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MachAgeMigrationMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2405DAFE4()
{
  result = qword_27E4B7AB0;
  if (!qword_27E4B7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7AB0);
  }

  return result;
}

void sub_2405DB038(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 0x14)
  {
  }
}

uint64_t sub_2405DB0E0(uint64_t a1)
{
  v2 = sub_2405E1770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DB11C(uint64_t a1)
{
  v2 = sub_2405E1770();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DB158(uint64_t a1)
{
  v2 = sub_2405E171C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DB194(uint64_t a1)
{
  v2 = sub_2405E171C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2405DB1D0()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x74706965636572;
    if (v1 != 6)
    {
      v5 = 0x6572756C696166;
    }

    v6 = 0xD000000000000018;
    if (v1 == 4)
    {
      v6 = 0xD000000000000016;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6574617267696DLL;
    v3 = 0xD000000000000010;
    if (v1 != 2)
    {
      v3 = 0x74726F706572;
    }

    if (*v0)
    {
      v2 = 0x6574746573696E61;
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
}

uint64_t sub_2405DB2E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2405E2338(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2405DB308(uint64_t a1)
{
  v2 = sub_2405E1368();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DB344(uint64_t a1)
{
  v2 = sub_2405E1368();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DB380(uint64_t a1)
{
  v2 = sub_2405E14B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DB3BC(uint64_t a1)
{
  v2 = sub_2405E14B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DB3F8(uint64_t a1)
{
  v2 = sub_2405E1574();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DB434(uint64_t a1)
{
  v2 = sub_2405E1574();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DB470(uint64_t a1)
{
  v2 = sub_2405E13BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DB4AC(uint64_t a1)
{
  v2 = sub_2405E13BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DB4E8(uint64_t a1)
{
  v2 = sub_2405E18AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DB524(uint64_t a1)
{
  v2 = sub_2405E18AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DB560(uint64_t a1)
{
  v2 = sub_2405E1464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DB59C(uint64_t a1)
{
  v2 = sub_2405E1464();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DB5D8(uint64_t a1)
{
  v2 = sub_2405E1664();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DB614(uint64_t a1)
{
  v2 = sub_2405E1664();

  return MEMORY[0x2821FE720](a1, v2);
}

void MachAgeMigrationMessage.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AB8, &qword_240763490);
  v99 = *(v2 - 8);
  v100 = v2;
  MEMORY[0x28223BE20](v2);
  v98 = &v71 - v3;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AC0, &qword_240763498);
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v91 = &v71 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AC8, &unk_2407634A0);
  v96 = *(v5 - 8);
  v97 = v5;
  MEMORY[0x28223BE20](v5);
  v95 = &v71 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AD0, &unk_24076CCE0);
  MEMORY[0x28223BE20](v89);
  v93 = &v71 - v7;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AD8, &qword_2407634B0);
  v88 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v87 = &v71 - v8;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
  MEMORY[0x28223BE20](v85);
  v86 = &v71 - v9;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE8, &qword_2407634C0);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v71 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AF0, &qword_2407634C8);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v71 - v11;
  v77 = type metadata accessor for AnisetteCommand.Response(0);
  MEMORY[0x28223BE20](v77);
  v78 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AF8, &qword_2407634D0);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v71 - v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7B00, &qword_2407634D8);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v15 = &v71 - v14;
  v16 = type metadata accessor for AgeMigrationModel(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MachAgeMigrationMessage(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7B08, &unk_2407634E0);
  v23 = *(v22 - 8);
  v103 = v22;
  v104 = v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v71 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405E1368();
  v102 = v25;
  sub_24075AF74();
  sub_2405DAF80(v101, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v49 = *(v21 + 1);
        v101 = *v21;
        v50 = v101;
        v51 = *(v21 + 2);
        v52 = *(v21 + 3);
        v53 = v21[32];
        LOBYTE(v105) = 1;
        sub_2405E1770();
        v54 = v74;
        v56 = v102;
        v55 = v103;
        sub_24075AB54();
        v105 = v50;
        v106 = v49;
        v107 = v51;
        v108 = v52;
        LOBYTE(v109) = v53;
        sub_2405E17C4();
        v57 = v76;
        sub_24075ABE4();
        (*(v75 + 8))(v54, v57);
        (*(v104 + 8))(v56, v55);
        sub_2405E1818(v101, v49, v51, v52, v53);
      }

      else
      {
        sub_2405E1A54(v21, v18, type metadata accessor for AgeMigrationModel);
        LOBYTE(v105) = 0;
        sub_2405E18AC();
        v28 = v102;
        v27 = v103;
        sub_24075AB54();
        sub_2405E4C80(&qword_27E4B7B40, type metadata accessor for AgeMigrationModel, &protocol conformance descriptor for AgeMigrationModel);
        v29 = v73;
        sub_24075ABE4();
        (*(v72 + 8))(v15, v29);
        sub_2405E19A0(v18, type metadata accessor for AgeMigrationModel);
        (*(v104 + 8))(v28, v27);
      }

      return;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v61 = *v21;
      v60 = *(v21 + 1);
      v62 = *(v21 + 2);
      v63 = *(v21 + 3);
      v64 = *(v21 + 4);
      LOBYTE(v105) = 3;
      sub_2405E1664();
      v65 = v82;
      v67 = v102;
      v66 = v103;
      sub_24075AB54();
      v101 = v61;
      v105 = v61;
      v106 = v60;
      v107 = v62;
      v108 = v63;
      v109 = v64;
      sub_2405E16B8();
      v68 = v84;
      sub_24075ABE4();
      (*(v83 + 8))(v65, v68);
      (*(v104 + 8))(v67, v66);
      sub_2405E170C(v101, v60, v62, v63, v64);
      return;
    }

    v37 = v78;
    sub_2405E1A54(v21, v78, type metadata accessor for AnisetteCommand.Response);
    LOBYTE(v105) = 2;
    sub_2405E171C();
    v38 = v79;
    v33 = v102;
    v30 = v103;
    sub_24075AB54();
    sub_2405E4C80(&qword_27E4B7B70, type metadata accessor for AnisetteCommand.Response, &protocol conformance descriptor for AnisetteCommand.Response);
    v39 = v81;
    sub_24075ABE4();
    (*(v80 + 8))(v38, v39);
    sub_2405E19A0(v37, type metadata accessor for AnisetteCommand.Response);
LABEL_15:
    (*(v104 + 8))(v33, v30);
    return;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v30 = v103;
    if (EnumCaseMultiPayload == 4)
    {
      v31 = v86;
      sub_2405E150C(v21, v86, &qword_27E4B7AE0, &qword_2407634B8);
      LOBYTE(v105) = 4;
      sub_2405E1574();
      v32 = v87;
      v33 = v102;
      sub_24075AB54();
      sub_2405E15C8(&qword_27E4B7B50, &qword_27E4B7B40, &protocol conformance descriptor for AgeMigrationModel, &protocol conformance descriptor for <A> _Coordinated<A>.ValueUpdate);
      v34 = v90;
      sub_24075ABE4();
      (*(v88 + 8))(v32, v34);
      v35 = &qword_27E4B7AE0;
      v36 = &qword_2407634B8;
    }

    else
    {
      v31 = v93;
      sub_2405E150C(v21, v93, &qword_27E4B7AD0, &unk_24076CCE0);
      LOBYTE(v105) = 5;
      sub_2405E14B8();
      v58 = v95;
      v33 = v102;
      sub_24075AB54();
      sub_2405E1ABC(&qword_27E4B7B38, &qword_27E4B7B40, &protocol conformance descriptor for AgeMigrationModel, &protocol conformance descriptor for <A> _Coordinated<A>.ValueUpdate.Response);
      v59 = v97;
      sub_24075ABE4();
      (*(v96 + 8))(v58, v59);
      v35 = &qword_27E4B7AD0;
      v36 = &unk_24076CCE0;
    }

    sub_2405B8A50(v31, v35, v36);
    goto LABEL_15;
  }

  v40 = v103;
  if (EnumCaseMultiPayload == 6)
  {
    v42 = *v21;
    v41 = *(v21 + 1);
    v43 = *(v21 + 2);
    v44 = *(v21 + 3);
    v45 = *(v21 + 4);
    LOBYTE(v105) = 7;
    sub_2405E13BC();
    v46 = v98;
    v47 = v102;
    sub_24075AB54();
    v101 = v42;
    v105 = v42;
    v106 = v41;
    v107 = v43;
    v108 = v44;
    v109 = v45;
    sub_2405E1410();
    v48 = v100;
    sub_24075ABE4();
    (*(v99 + 8))(v46, v48);
    (*(v104 + 8))(v47, v40);
    sub_2405DB038(v101, v41, v43, v44, v45);
  }

  else
  {
    LOBYTE(v105) = 6;
    sub_2405E1464();
    v69 = v91;
    v70 = v102;
    sub_24075AB54();
    (*(v92 + 8))(v69, v94);
    (*(v104 + 8))(v70, v40);
  }
}