uint64_t NDOLocalWarrantyDownloader.init(loaderProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return v2;
}

uint64_t sub_22DDED854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 56);

  v8(&v21, a1);

  swift_beginAccess();
  v9 = *(&v22 + 1);
  if (*(v4 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v4 + 16));
    if (v9)
    {
LABEL_3:
      sub_22DDEDA18(&v21, v4 + 16);
      goto LABEL_6;
    }
  }

  else if (*(&v22 + 1))
  {
    goto LABEL_3;
  }

  v10 = v22;
  *(v4 + 16) = v21;
  *(v4 + 32) = v10;
  *(v4 + 48) = v23;
LABEL_6:
  result = swift_endAccess();
  if (*(v4 + 40))
  {
    result = sub_22DDEDAAC(v4 + 16, &v21);
    if (!*(&v22 + 1))
    {
      return result;
    }
  }

  else
  {
    v12 = *(v4 + 32);
    v21 = *(v4 + 16);
    v22 = v12;
    v23 = *(v4 + 48);
    if (!*(&v12 + 1))
    {
      return result;
    }
  }

  sub_22DDEDAAC(&v21, v18);
  if (*(&v22 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  v13 = v19;
  v14 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a2;
  v16[4] = a3;
  v17 = *(v14 + 16);

  v17(sub_22DDF0E14, v16, v13, v14);

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_22DDEDA18(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22DDEDA30()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22DDEDA68()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22DDEDAAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_22DDEDC0C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22DDEDCD8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_22DDEDDE4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_22DDEDCD8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22DDEEFA4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_22DEC4F64();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_22DDEDDE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t static NDOResponseMapper.Warranty.deviceCoverageCachePathForSerial(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEC46F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28145E4C0 != -1)
  {
    swift_once();
  }

  v8 = sub_22DEC4764();
  __swift_project_value_buffer(v8, qword_28145E4C8);
  v10[0] = a1;
  v10[1] = a2;

  MEMORY[0x2318DB350](0x6E6F736A2ELL, 0xE500000000000000);
  (*(v5 + 104))(v7, *MEMORY[0x277CC91D8], v4);
  sub_22DDEDFE0();
  sub_22DEC4754();
  (*(v5 + 8))(v7, v4);
}

unint64_t sub_22DDEDFE0()
{
  result = qword_28145ADA8;
  if (!qword_28145ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145ADA8);
  }

  return result;
}

void NDOAppleAccountSignedInUrlClient.load(request:with:)(uint64_t a1, void (*a2)(void *, void, void, uint64_t), uint64_t a3)
{
  if ((*(v3 + 56))())
  {
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);
    __swift_project_boxed_opaque_existential_1((v3 + 16), v7);
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a2;
    v10[4] = a3;
    v11 = *(v8 + 8);

    v11(a1, sub_22DDEF2E4, v10, v7, v8);
  }

  else
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v12 = sub_22DEC4B44();
    __swift_project_value_buffer(v12, qword_281462270);
    v13 = sub_22DEC4B24();
    v14 = sub_22DEC4E44();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22DDEC000, v13, v14, "Not executing request due to apple account being signed out", v15, 2u);
      MEMORY[0x2318DBF00](v15, -1, -1);
    }

    type metadata accessor for NDOErrors(0);
    sub_22DDFE48C();
    v16 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    a2(v16, 0, 0, 1);
  }
}

uint64_t sub_22DDEE2A8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22DDEE2E0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void NDOURLSessionClient.load(request:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_22DEC4694();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v12 = sub_22DEC4B44();
  __swift_project_value_buffer(v12, qword_281462270);
  (*(v9 + 16))(v11, a1, v8);
  v13 = sub_22DEC4B24();
  v14 = sub_22DEC4E54();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v32 = v3;
    v18 = v17;
    aBlock[0] = v17;
    *v16 = 136315138;
    sub_22DDEE6C8();
    v19 = sub_22DEC50A4();
    v31[1] = a1;
    v20 = a2;
    v22 = v21;
    (*(v9 + 8))(v11, v8);
    v23 = sub_22DDEDC0C(v19, v22, aBlock);
    a2 = v20;

    *(v16 + 4) = v23;
    _os_log_impl(&dword_22DDEC000, v13, v14, "Loading request: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v24 = v18;
    v4 = v32;
    MEMORY[0x2318DBF00](v24, -1, -1);
    v25 = v16;
    a3 = v33;
    MEMORY[0x2318DBF00](v25, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v26 = *(v4 + 16);
  v27 = sub_22DEC4664();
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = a3;
  aBlock[4] = sub_22DDEE818;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22DDEE750;
  aBlock[3] = &block_descriptor;
  v29 = _Block_copy(aBlock);

  v30 = [v26 dataTaskWithRequest:v27 completionHandler:v29];
  _Block_release(v29);

  [v30 resume];
}

uint64_t sub_22DDEE690()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_22DDEE6C8()
{
  result = qword_28145E560;
  if (!qword_28145E560)
  {
    sub_22DEC4694();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145E560);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22DDEE750(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_22DEC47A4();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_22DDEEF3C(v6, v10);
}

void sub_22DDEE820(uint64_t a1, unint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, unint64_t, void *, uint64_t), uint64_t a6)
{
  v11 = sub_22DEC4C64();
  MEMORY[0x28223BE20](v11 - 8);
  if (a4)
  {
    v12 = a4;
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v13 = sub_22DEC4B44();
    __swift_project_value_buffer(v13, qword_281462270);
    v14 = a4;
    v15 = sub_22DEC4B24();
    v16 = sub_22DEC4E44();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = a4;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_22DDEC000, v15, v16, "Loading failed: %@", v17, 0xCu);
      sub_22DDEF284(v18, &qword_27DA379D8, qword_22DEC6E70);
      MEMORY[0x2318DBF00](v18, -1, -1);
      MEMORY[0x2318DBF00](v17, -1, -1);
    }

    v21 = a4;
    a5(a4, 0, 0, 1);
  }

  else if (a2 >> 60 == 15 || !a3)
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v39 = sub_22DEC4B44();
    __swift_project_value_buffer(v39, qword_281462270);
    v40 = sub_22DEC4B24();
    v41 = sub_22DEC4E44();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_22DDEC000, v40, v41, "Unexpected data task completion", v42, 2u);
      MEMORY[0x2318DBF00](v42, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA379E8, &qword_22DEC6528);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22DEC5F50;
    *(inited + 32) = 0x726F727265;
    v44 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = 0xD000000000000036;
    *(inited + 56) = 0x800000022DED17B0;
    sub_22DE04EEC(inited);
    swift_setDeallocating();
    sub_22DDEF284(v44, &qword_27DA379F0, &unk_22DEC6530);
    v45 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v46 = sub_22DEC4C04();
    v47 = sub_22DEC4B84();

    v48 = [v45 initWithDomain:v46 code:-1 userInfo:v47];

    a5(v48, 0, 0, 1);
  }

  else
  {
    v51 = a5;
    sub_22DDEEED4(a1, a2);
    v22 = qword_28145AE68;
    v23 = a3;
    if (v22 != -1)
    {
      swift_once();
    }

    v24 = sub_22DEC4B44();
    __swift_project_value_buffer(v24, qword_281462270);
    sub_22DDEEED4(a1, a2);
    v25 = v23;
    v26 = sub_22DEC4B24();
    v27 = sub_22DEC4E54();

    sub_22DDEEF3C(a1, a2);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v52 = v50;
      *v28 = 138412802;
      *(v28 + 4) = v25;
      *v49 = a3;
      *(v28 + 12) = 2080;
      sub_22DDEEED4(a1, a2);
      v29 = v25;
      v30 = sub_22DEC4784();
      v32 = v31;
      sub_22DDEEF3C(a1, a2);
      v33 = sub_22DDEDC0C(v30, v32, &v52);

      *(v28 + 14) = v33;
      *(v28 + 22) = 2080;
      sub_22DEC4C54();
      v34 = sub_22DEC4C44();
      if (v35)
      {
        v36 = v35;
      }

      else
      {
        v34 = 1819047278;
        v36 = 0xE400000000000000;
      }

      v37 = sub_22DDEDC0C(v34, v36, &v52);

      *(v28 + 24) = v37;
      _os_log_impl(&dword_22DDEC000, v26, v27, "Received response: %@ data:%s json:%s", v28, 0x20u);
      sub_22DDEF284(v49, &qword_27DA379D8, qword_22DEC6E70);
      MEMORY[0x2318DBF00](v49, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x2318DBF00](v50, -1, -1);
      MEMORY[0x2318DBF00](v28, -1, -1);
    }

    sub_22DDEEED4(a1, a2);
    v38 = v25;
    v51(a1, a2, a3, 0);
    sub_22DDEEF50(a1, a2);

    sub_22DDEEF3C(a1, a2);
  }
}

uint64_t sub_22DDEEED4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22DDEEEE8(a1, a2);
  }

  return a1;
}

uint64_t sub_22DDEEEE8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_22DDEEF3C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22DDEEF50(result, a2);
  }

  return result;
}

uint64_t sub_22DDEEF50(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_22DDEEFA4(uint64_t a1, unint64_t a2)
{
  v3 = sub_22DDEEFF0(a1, a2);
  sub_22DDEF198(&unk_28418CDC0);
  return v3;
}

void *sub_22DDEEFF0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22DDEF120(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22DEC4F64();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22DEC4CB4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22DDEF120(v10, 0);
        result = sub_22DEC4F24();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_22DDEF120(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA379D0, &unk_22DEC63B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_22DDEF198(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22DE01618(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22DDEF284(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_22DDEF2F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    a6(a1, a2, a3, a4 & 1);
  }

  else
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v11 = sub_22DEC4B44();
    __swift_project_value_buffer(v11, qword_281462270);
    v12 = sub_22DEC4B24();
    v13 = sub_22DEC4E44();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22DDEC000, v12, v13, "Instance is deallocated. Not handling results", v14, 2u);
      MEMORY[0x2318DBF00](v14, -1, -1);
    }
  }
}

id sub_22DDEF440(void *a1, unint64_t a2, void *a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    sub_22DDEEEE8(a1, a2);
    a1 = a3;
  }

  return a1;
}

void sub_22DDEF48C(void *a1, unint64_t a2, void *a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    sub_22DDEEF50(a1, a2);
    a1 = a3;
  }
}

uint64_t static NDOResponseMapper.Warranty.decodeSingleCoverage(_:)(uint64_t a1, unint64_t a2)
{
  v5 = sub_22DEC48E4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  sub_22DEC48D4();
  sub_22DEC48C4();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0);
  (*(v6 + 16))(v9, v11, v5);
  sub_22DDEEEE8(a1, a2);
  sub_22DDEF81C(&qword_28145C208, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
  sub_22DEC4A14();
  (*(v6 + 8))(v11, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37978, &qword_22DEC60C8);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22DDEF7E4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DDEF81C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22DDEF888@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, uint64_t a5@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v9 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t sub_22DDEF928@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_22DEC4B14();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_22DDEF9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = *(v7 + v14);
    a5(0);
    swift_allocObject();
    v16 = a6(v17);
    *(v10 + v14) = v16;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t sub_22DDEFB34(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E08, &qword_22DECE2B8);
  MEMORY[0x28223BE20](v4 - 8);
  v29 = &v27 - v5;
  *(v1 + 32) = 0u;
  v6 = (v1 + 32);
  *(v1 + 16) = 0u;
  *(v1 + 48) = 2;
  v7 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__settingsCoverageSection;
  v28 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__settingsCoverageSection;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = v1 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__foregroundCacheTtl;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (v1 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__coverageHash);
  *v10 = 0;
  v10[1] = 0;
  v30 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__sections;
  *(v1 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__sections) = MEMORY[0x277D84F90];
  swift_beginAccess();
  v12 = *(a1 + 16);
  v27 = *(a1 + 24);
  v11 = v27;
  swift_beginAccess();
  *(v1 + 16) = v12;
  *(v1 + 24) = v11;
  swift_beginAccess();
  v14 = *(a1 + 32);
  v13 = *(a1 + 40);
  swift_beginAccess();
  *v6 = v14;
  *(v2 + 40) = v13;
  swift_beginAccess();
  LOBYTE(v6) = *(a1 + 48);
  swift_beginAccess();
  *(v2 + 48) = v6;
  v15 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__settingsCoverageSection;
  swift_beginAccess();
  v16 = v29;
  sub_22DDF0028(a1 + v15, v29, &qword_27DA38E08, &qword_22DECE2B8);
  v17 = v28;
  swift_beginAccess();

  sub_22DDF0208(v16, v2 + v17, &qword_27DA38E08, &qword_22DECE2B8);
  swift_endAccess();
  v18 = (a1 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__foregroundCacheTtl);
  swift_beginAccess();
  v19 = *v18;
  LOBYTE(v18) = *(v18 + 8);
  swift_beginAccess();
  *v9 = v19;
  *(v9 + 8) = v18;
  v20 = (a1 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__coverageHash);
  swift_beginAccess();
  v22 = *v20;
  v21 = v20[1];
  swift_beginAccess();
  *v10 = v22;
  v10[1] = v21;

  v23 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__sections;
  swift_beginAccess();
  v24 = *(a1 + v23);

  v25 = v30;
  swift_beginAccess();
  *(v2 + v25) = v24;

  return v2;
}

uint64_t __swift_store_extra_inhabitant_index_157Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = sub_22DEC48B4();
  v13 = *(result - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + *(a4 + 24);

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_22DDF0028(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_index_156Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_22DEC48B4();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else if (a2 == 2147483646)
  {
    v14 = *(a1 + *(a3 + 20) + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + *(a3 + 24);

    return v17(v18, a2, v16);
  }
}

uint64_t sub_22DDF0208(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_22DDF0270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          sub_22DDF03C8(a2, a1, a3, a4);
          break;
        case 2:
          sub_22DDF044C(a2, a1, a3, a4);
          break;
        case 3:
          sub_22DDF04D0(a2, a1, a3, a4);
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_22DDF0AD4(a2, a1, a3, a4);
      }

      else if (result == 7)
      {
        sub_22DEA638C(a2, a1, a3, a4);
      }
    }

    else if (result == 4)
    {
      sub_22DDF0554(a2, a1, a3, a4);
    }

    else
    {
      sub_22DDF0A48(a2, a1, a3, a4);
    }
  }

  return result;
}

uint64_t sub_22DDF03C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22DEC49C4();
  return swift_endAccess();
}

uint64_t sub_22DDF044C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22DEC49C4();
  return swift_endAccess();
}

uint64_t sub_22DDF04D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22DEC4974();
  return swift_endAccess();
}

uint64_t sub_22DDF0554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0);
  sub_22DDF25F4(&qword_28145AFF8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DDF0668@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v6 = *(a1 + 20);
  v7 = *(a1 + 24);
  v8 = (a3 + v6);
  *v8 = 0;
  v8[1] = 0;
  v9 = a2(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a3 + v7, 1, 1, v9);
}

uint64_t sub_22DDF070C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22DEC48B4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22DDF085C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 4)
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0);
      sub_22DEC49C4();
    }

    else if (result == 5)
    {
      sub_22DEA758C(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_22DDF0A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22DEC49A4();
  return swift_endAccess();
}

uint64_t sub_22DDF0AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22DEC49C4();
  return swift_endAccess();
}

void sub_22DDF0B60(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t))
{
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37978, &qword_22DEC60C8);
  MEMORY[0x28223BE20](v9);
  v11 = (&v20 - v10);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_22DDF0E20(a1, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = *v11;
      v13 = *v11;
      a3(v12, 1);
    }

    else
    {
      sub_22DDF0E90(v11, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37980, &unk_22DEC60D0);
      v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v19 = swift_allocObject();
      v19[1] = xmmword_22DEC5F50;
      sub_22DDF0EF4(v8, v19 + v18);
      a3(v19, 0);

      sub_22DDF2684(v8);
    }
  }

  else
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v14 = sub_22DEC4B44();
    __swift_project_value_buffer(v14, qword_281462270);
    v15 = sub_22DEC4B24();
    v16 = sub_22DEC4E44();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22DDEC000, v15, v16, "NDOLocalWarrantyDownloader is deallocated. Dropping results", v17, 2u);
      MEMORY[0x2318DBF00](v17, -1, -1);
    }
  }
}

uint64_t sub_22DDF0E20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37978, &qword_22DEC60C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DDF0E90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DDF0EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Message.ensure(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v30[-v9];
  sub_22DEC51E4();
  if (!sub_22DEC4D34())
  {
    return 1;
  }

  for (i = 0; ; ++i)
  {
    v12 = sub_22DEC4D24();
    sub_22DEC4D04();
    if (v12)
    {
      v13 = *(a1 + 8 * i + 32);

      v14 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v13 = sub_22DEC4F44();
      v14 = i + 1;
      if (__OFADD__(i, 1))
      {
LABEL_10:
        __break(1u);
        return 1;
      }
    }

    swift_getAtKeyPath();
    if ((v34 & 1) == 0)
    {
      break;
    }

    if (v14 == sub_22DEC4D34())
    {
      return 1;
    }
  }

  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v16 = sub_22DEC4B44();
  __swift_project_value_buffer(v16, qword_281462270);
  v17 = *(v5 + 16);
  v17(v10, v2, a2);

  v18 = sub_22DEC4B24();
  v19 = sub_22DEC4E54();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = v19;
    v21 = v20;
    v32 = swift_slowAlloc();
    v34 = v32;
    *v21 = 136315394;
    v17(v8, v10, a2);
    v22 = sub_22DEC4C74();
    v24 = v23;
    (*(v5 + 8))(v10, a2);
    v25 = sub_22DDEDC0C(v22, v24, &v34);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v33 = v13;

    v26 = sub_22DEC4C74();
    v28 = sub_22DDEDC0C(v26, v27, &v34);

    *(v21 + 14) = v28;
    _os_log_impl(&dword_22DDEC000, v18, v31, "%s has required keypath not explicitly set: %s", v21, 0x16u);
    v29 = v32;
    swift_arrayDestroy();
    MEMORY[0x2318DBF00](v29, -1, -1);
    MEMORY[0x2318DBF00](v21, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v10, a2);
  }

  return 0;
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.hasSerialNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20));
  swift_beginAccess();
  return *(v1 + 24) != 0;
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.hasCoverageLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20));
  swift_beginAccess();
  return *(v1 + 40) != 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.serialNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20));
  swift_beginAccess();
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.hasTheftAndLossBenefit_p.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20));
  swift_beginAccess();
  return *(v1 + 48) & 1;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.coverageLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20));
  swift_beginAccess();
  if (*(v1 + 40))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Message.getOptional<A>(_:_:)@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getAtKeyPath();
  if (v7 == 1)
  {
    swift_getAtKeyPath();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  return (*(*(*(v4 + *MEMORY[0x277D84DE8] + 8) - 8) + 56))(a3, v5, 1);
}

uint64_t sub_22DDF15BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E08, &qword_22DECE2B8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20));
  v8 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__settingsCoverageSection;
  swift_beginAccess();
  sub_22DDF0028(v7 + v8, v6, &qword_27DA38E08, &qword_22DECE2B8);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_22DDF1788(v6, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = (a2 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  v12 = *(v9 + 24);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA38E08, &qword_22DECE2B8);
  }

  return result;
}

uint64_t sub_22DDF1788(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DDF1820@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 20));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.settingsCoverageSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E08, &qword_22DECE2B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20));
  v7 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__settingsCoverageSection;
  swift_beginAccess();
  sub_22DDF0028(v6 + v7, v5, &qword_27DA38E08, &qword_22DECE2B8);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_22DDF1788(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = (a1 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  v11 = *(v8 + 24);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA38E08, &qword_22DECE2B8);
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection.offer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E10, &qword_22DECE2C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0);
  sub_22DDF0028(v1 + *(v6 + 24), v5, &qword_27DA38E10, &qword_22DECE2C0);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22DDF1788(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v9 = v7[5];
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = (a1 + v7[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v7[7]);
  *v12 = 0;
  v12[1] = 0;
  v13 = a1 + v7[8];
  *v13 = 0;
  *(v13 + 8) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA38E10, &qword_22DECE2C0);
  }

  return result;
}

uint64_t sub_22DDF1C50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22DEC48B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.link.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  sub_22DDF0028(v1 + *(v6 + 20), v5, &qword_27DA37D88, &unk_22DEC8210);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22DDF1788(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v9 = (a1 + v7[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v7[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = v7[7];
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA37D88, &unk_22DEC8210);
  }

  return result;
}

uint64_t sub_22DDF1F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_22DDF20BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22DEC48B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 248)
  {
    *(a1 + *(a4 + 20)) = a2 + 7;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D78, &unk_22DEC8150);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void *sub_22DDF21FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22DEC48B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22DDF2304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 248)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 7)
    {
      v11 = 7;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 7;
    if (v10 >= 7)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D78, &unk_22DEC8150);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_22DDF244C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22DEC48B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22DDF24F8(uint64_t a1)
{
  v2 = sub_22DDF25AC(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DDF2564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22DDF25AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22DDF25F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t NDOLocalWarrantyDownloader.__deallocating_deinit()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_22DDF2684(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *NDOMappingLoader.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t NDOMappingLoader.__deallocating_deinit()
{
  NDOMappingLoader.deinit();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_22DDF2744()
{

  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__settingsCoverageSection, &qword_27DA38E08, &qword_22DECE2B8);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22DDF2830@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22DEC4C34();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22DDF286C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22DDF28B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22DDF2900@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  *a2 = *(a1 + *(result + 20) + 8) != 0;
  return result;
}

uint64_t sub_22DDF2944@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  *a2 = *(a1 + *(result + 28) + 8) != 0;
  return result;
}

uint64_t sub_22DDF2988@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  *a2 = *(a1 + *(result + 44) + 8) != 0;
  return result;
}

uint64_t sub_22DDF29CC()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v5 = sub_22DEC48B4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_22DDF2B24()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22DDF2B60()
{
  v1 = sub_22DEC4694();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22DDF2C6C()
{
  v1 = sub_22DEC4764();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22DDF2CF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22DDF2D2C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22DDF2D6C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22DDF2DA4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22DDF2DF4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22DDF2E2C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22DDF2F6C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22DDF2FA4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22DDF2FE4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22DDF301C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22DDF3054()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22DDF309C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22DDF30DC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22DDF3114@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  *a2 = *(a1 + *(result + 52) + 8) != 0;
  return result;
}

uint64_t sub_22DDF3158@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  *a2 = *(a1 + *(result + 56) + 8) != 0;
  return result;
}

uint64_t sub_22DDF319C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  *a2 = *(a1 + *(result + 60) + 8) != 0;
  return result;
}

uint64_t sub_22DDF31FC@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  *a2 = *(a1 + *(result + 24) + 8) != 0;
  return result;
}

uint64_t sub_22DDF3240@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  *a2 = *(a1 + *(result + 28) + 8) != 0;
  return result;
}

uint64_t sub_22DDF32AC()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v17 = *(v2 + 80);
  v3 = (v17 + 48) & ~v17;
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  v6 = *(*(v5 - 8) + 80);
  v15 = *(*(v5 - 8) + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  v16 = (v3 + v4 + v6) & ~v6;
  v7 = sub_22DEC48B4();
  v8 = (*(v7 - 8) + 8);
  v14 = *v8;
  (*v8)(v0 + v16, v7);

  v9 = v0 + v16 + *(v5 + 32);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v11 = *(*(v10 - 8) + 48);
  if (!v11(v9, 1, v10))
  {
    v14(v9, v7);
  }

  v12 = v0 + v16 + *(v5 + 36);
  if (!v11(v12, 1, v10))
  {
    v14(v12, v7);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v17 | v6 | 7);
}

uint64_t sub_22DDF3568()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22DDF35A4@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 24) != 0;
  return result;
}

uint64_t sub_22DDF3604@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 48) != 0;
  return result;
}

uint64_t sub_22DDF369C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  *a2 = *(a1 + *(result + 20)) != 7;
  return result;
}

uint64_t sub_22DDF36DC@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  *a2 = *(a1 + *(result + 20) + 8) != 0;
  return result;
}

uint64_t sub_22DDF3720()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = sub_22DEC48B4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  __swift_destroy_boxed_opaque_existential_1((v0 + v4));

  return MEMORY[0x2821FE8E8](v0, v4 + 40, v2 | 7);
}

uint64_t sub_22DDF3824()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_22DDF385C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22DDF38A4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22DDF38FC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22DDF3934@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfig;
  swift_beginAccess();
  return sub_22DDF0028(v3 + v4, a2, &qword_27DA37E00, &qword_22DEC7B70);
}

uint64_t sub_22DDF39A8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22DDF3A08@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
  v5 = *(a1 + *(result + 20));
  if (v5 == 5)
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_22DDF3A48(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t sub_22DDF3A9C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22DEC48B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22DDF3B48(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22DEC48B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22DDF3BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_22DDF3CB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22DEC48B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_22DDF3D7C@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_22DDF3D98()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void *sub_22DDF3DAC@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_22DDF3DCC(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_22DDF3EB4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
  v5 = *(a1 + *(result + 24));
  if (v5 == 7)
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_22DDF3EF4(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
  *(a2 + *(result + 24)) = v3;
  return result;
}

uint64_t sub_22DDF3FE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
  v5 = (a1 + *(result + 28));
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_22DDF4030(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
  v5 = a2 + *(result + 28);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_22DDF406C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
  v5 = *(a1 + *(result + 28));
  if (v5 == 7)
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_22DDF40AC(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
  *(a2 + *(result + 28)) = v3;
  return result;
}

uint64_t sub_22DDF4388@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
  *a2 = *(a1 + *(result + 32)) & 1;
  return result;
}

uint64_t sub_22DDF43C4(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
  *(a2 + *(result + 32)) = v3;
  return result;
}

uint64_t sub_22DDF43F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  *a2 = *(a1 + *(result + 20)) & 1;
  return result;
}

uint64_t sub_22DDF4434(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t sub_22DDF4648@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 32) & 1;
  return result;
}

uint64_t sub_22DDF46D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  result = swift_beginAccess();
  v5 = *(v3 + 136);
  if (*(v3 + 144))
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_22DDF4748@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 168) & 1;
  return result;
}

uint64_t sub_22DDF4910@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0);
  *a2 = *(a1 + *(result + 24)) & 1;
  return result;
}

uint64_t sub_22DDF494C(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0);
  *(a2 + *(result + 24)) = v3;
  return result;
}

uint64_t sub_22DDF4B38@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  v5 = *(a1 + *(result + 40));
  if (v5 == 4)
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_22DDF4B78(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  *(a2 + *(result + 40)) = v3;
  return result;
}

uint64_t sub_22DDF4DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC8, qword_22DEC7358);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_22DDF4F4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22DEC48B4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC8, qword_22DEC7358);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_22DDF50B0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22DEC48B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_22DDF515C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22DEC48B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22DDF5200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_22DEC48B4();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22DDF5330(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_22DEC48B4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22DDF5460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_22DDF552C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22DEC48B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_22DDF55F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C10, &unk_22DEC7590);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_22DDF5730(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22DEC48B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C10, &unk_22DEC7590);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22DDF58D4(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  *(a2 + *(result + 20)) = 0;
  return result;
}

uint64_t sub_22DDF5904(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  *(a2 + *(result + 24)) = 0;
  return result;
}

uint64_t sub_22DDF5934(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  *(a2 + *(result + 28)) = 0;
  return result;
}

uint64_t sub_22DDF5974@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0);
  v5 = (a1 + *(result + 32));
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_22DDF59BC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0);
  v5 = a2 + *(result + 32);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_22DDF5A00@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
  v5 = (a1 + *(result + 28));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_22DDF5A48(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
  v5 = a2 + *(result + 28);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t sub_22DDF5A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22DDF5B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22DDF5B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38450, &qword_22DECA320);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22DDF5C74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22DEC48B4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38450, &qword_22DECA320);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_22DDF5D7C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22DEC48B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_22DDF5E28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22DEC48B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22DDF5ECC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22DEC48B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38458, &qword_22DECA328);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_22DDF5FFC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_22DEC48B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38458, &qword_22DECA328);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22DDF6204@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v5 = (a1 + *(result + 24));
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_22DDF624C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v5 = a2 + *(result + 24);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_22DDF6340@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5 = (a1 + *(result + 28));
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_22DDF6388(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5 = a2 + *(result + 28);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_22DDF63C4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22DEC48B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22DDF6470(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22DEC48B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22DDF6514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AD8, &qword_22DECB040);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_22DDF6654(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22DEC48B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AD8, &qword_22DECB040);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22DDF6788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_22DDF6854(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22DEC48B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_22DDF69C8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
  *a2 = *(a1 + *(result + 28)) & 1;
  return result;
}

uint64_t sub_22DDF6A04(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
  *(a2 + *(result + 28)) = v3;
  return result;
}

uint64_t sub_22DDF6A38@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
  v5 = (a1 + *(result + 32));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_22DDF6A80(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
  v5 = a2 + *(result + 32);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t sub_22DDF6B6C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0);
  v5 = *(a1 + *(result + 24));
  if (v5 == 5)
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_22DDF6BAC(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0);
  *(a2 + *(result + 24)) = v3;
  return result;
}

uint64_t sub_22DDF737C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22DDF7438(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22DEC48B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22DDF74F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DD0, &qword_22DECBB20);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_22DDF7648(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22DEC48B4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DD0, &qword_22DECBB20);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_22DDF77B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22DEC48B4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 <= 5)
  {
    v15 = 5;
  }

  else
  {
    v15 = *(a1 + *(a3 + 24));
  }

  v16 = v15 - 5;
  if (v14 >= 5)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22DDF78D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22DEC48B4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 5;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22DDF79E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_22DDF7AB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22DEC48B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_22DDF7B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_22DDF7CB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22DEC48B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22DDF7DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_22DDF7F24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22DEC48B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22DDF8058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 44);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_22DDF8198(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22DEC48B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22DDF82CC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38898, &qword_22DECBB28);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[9];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_22DDF8468(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_22DEC48B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38898, &qword_22DECBB28);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_22DDF85F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22DDF86F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22DEC48B4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_22DDF888C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22DDF8948(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22DEC48B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22DDF8A00(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22DEC48B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_22DDF8AAC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22DEC48B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22DDF8C58@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  *a2 = *(a1 + *(result + 24)) & 1;
  return result;
}

uint64_t sub_22DDF8C94(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  *(a2 + *(result + 24)) = v3;
  return result;
}

uint64_t sub_22DDF8E40@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  *a2 = *(a1 + *(result + 56)) & 1;
  return result;
}

uint64_t sub_22DDF8E7C(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  *(a2 + *(result + 56)) = v3;
  return result;
}

uint64_t sub_22DDF8EB0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  *a2 = *(a1 + *(result + 60)) & 1;
  return result;
}

uint64_t sub_22DDF8EEC(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  *(a2 + *(result + 60)) = v3;
  return result;
}

uint64_t sub_22DDF8F20@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  *a2 = *(a1 + *(result + 64)) & 1;
  return result;
}

uint64_t sub_22DDF8F5C(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  *(a2 + *(result + 64)) = v3;
  return result;
}

uint64_t sub_22DDF90A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v5 = (a1 + *(result + 44));
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_22DDF90E8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v5 = a2 + *(result + 44);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_22DDF928C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(a1 + *(result + 20));
  if (v5 == 7)
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_22DDF92CC(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t sub_22DDF93B8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22DEC48B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22DDF9464(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22DEC48B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22DDF9510(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22DEC48B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A28, &unk_22DEC6560);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_22DDF9640(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_22DEC48B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A28, &unk_22DEC6560);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22DDF97FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 48) & 1;
  return result;
}

uint64_t sub_22DDF9994@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  v5 = (a1 + *(result + 32));
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_22DDF99DC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  v5 = a2 + *(result + 32);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_22DDF9AC8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem(0);
  v5 = *(a1 + *(result + 24));
  if (v5 == 5)
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_22DDF9B08(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem(0);
  *(a2 + *(result + 24)) = v3;
  return result;
}

uint64_t sub_22DDF9E98@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  *a2 = *(a1 + *(result + 28)) & 1;
  return result;
}

uint64_t sub_22DDF9ED4(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  *(a2 + *(result + 28)) = v3;
  return result;
}

uint64_t sub_22DDFA218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DC0, &qword_22DECE2A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_22DDFA370(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22DEC48B4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DC0, &qword_22DECE2A0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_22DDFA4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22DEC48B4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 <= 5)
  {
    v15 = 5;
  }

  else
  {
    v15 = *(a1 + *(a3 + 24));
  }

  v16 = v15 - 5;
  if (v14 >= 5)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22DDFA5FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22DEC48B4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 5;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22DDFA710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_22DDFA850(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22DEC48B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22DDFA9AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22DDFAA18(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22DDFAAC8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
  v5 = *(a1 + *(result + 28));
  if (v5 == 5)
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_22DDFAB08(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
  *(a2 + *(result + 28)) = v3;
  return result;
}

uint64_t sub_22DDFAB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_22DDFAC10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22DEC48B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_22DDFACCC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22DEC48B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_22DDFADFC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_22DEC48B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22DDFAF2C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v5 = (a1 + *(result + 20));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_22DDFAF74(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v5 = a2 + *(result + 20);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t sub_22DDFAFB8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0);
  v5 = *(a1 + *(result + 24));
  if (v5 == 5)
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_22DDFAFF8(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0);
  *(a2 + *(result + 24)) = v3;
  return result;
}

uint64_t sub_22DDFB03C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  v5 = (a1 + *(result + 44));
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_22DDFB084(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  v5 = a2 + *(result + 44);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_22DDFB0E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22DDFB14C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22DDFB1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 <= 5)
  {
    v15 = 5;
  }

  else
  {
    v15 = *(a1 + *(a3 + 24));
  }

  v16 = v15 - 5;
  if (v14 >= 5)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22DDFB2DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22DEC48B4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 5;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22DDFB3F0(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_22DEC48B4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39180, &qword_22DED0500);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[12]];

  return v15(v16, a2, v14);
}

char *sub_22DDFB574(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_22DEC48B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39180, &qword_22DED0500);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[12]];

  return v15(v16, a2, a2, v14);
}

unsigned __int8 *sub_22DDFB71C@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 <= 0xF7)
  {
    v3 = v2 & (v2 >> 7) & 0x7F;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_22DDFB75C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22DEC48B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_22DDFB88C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_22DEC48B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22DDFB9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22DEC48B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22DDFBA68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22DEC48B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_22DDFBB64()
{
  result = sub_22DE04CF0(MEMORY[0x277D84F90]);
  off_27DA37718 = result;
  return result;
}

id sub_22DDFBE10()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC6NDOAPI22DynamicUrlProtocolStub_stub];
  v3 = *&v0[OBJC_IVAR____TtC6NDOAPI22DynamicUrlProtocolStub_stub];
  if (!v3 || (v5 = v2[4], v4 = v2[5], v7 = v2[2], v6 = v2[3], v8 = v2[1], , sub_22DDFC2DC(v3, v8, v7, v6, v5, v4), v9 = sub_22DDFC32C(v3, v8, v7, v6, v5, v4), v10 = v3(v9), v12 = v11, , v12 >> 60 == 15))
  {
LABEL_5:
    v16 = *v2;
    if (!*v2)
    {
      goto LABEL_18;
    }

    goto LABEL_6;
  }

  v13 = [v1 client];
  if (v13)
  {
    v14 = v13;
    v15 = sub_22DEC4794();
    [v14 URLProtocol:v1 didLoadData:v15];
    sub_22DDEEF3C(v10, v12);

    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  sub_22DDEEF3C(v10, v12);
  v16 = *v2;
  if (!*v2)
  {
    goto LABEL_18;
  }

LABEL_6:
  v18 = v2[4];
  v17 = v2[5];
  v20 = v2[2];
  v19 = v2[3];
  v21 = v2[1];

  sub_22DDFC2DC(v16, v21, v20, v19, v18, v17);
  v22 = sub_22DDFC32C(v16, v21, v20, v19, v18, v17);
  v23 = v20(v22);

  if (v23)
  {
    v24 = [v1 client];
    if (!v24)
    {

      v25 = *v2;
      if (!*v2)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    [v24 URLProtocol:v1 didReceiveResponse:v23 cacheStoragePolicy:2];

    swift_unknownObjectRelease();
  }

  v25 = *v2;
  if (!*v2)
  {
    goto LABEL_18;
  }

LABEL_10:
  v27 = v2[4];
  v26 = v2[5];
  v29 = v2[2];
  v28 = v2[3];
  v30 = v2[1];

  sub_22DDFC2DC(v25, v30, v29, v28, v27, v26);
  v31 = sub_22DDFC32C(v25, v30, v29, v28, v27, v26);
  v32 = v27(v31);

  if (v32)
  {
    v33 = [v1 client];
    if (v33)
    {
      v34 = v33;
      v35 = sub_22DEC46D4();
      [v34 URLProtocol:v1 didFailWithError:v35];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_18:
  result = [v1 client];
  if (result)
  {
    [result URLProtocolDidFinishLoading_];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_22DDFC188()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicUrlProtocolStub();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22DDFC238(uint64_t *a1, int a2)
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

uint64_t sub_22DDFC280(uint64_t result, int a2, int a3)
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

uint64_t sub_22DDFC2DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22DDFC32C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

BOOL sub_22DDFC390(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_22DDFC3E8(uint64_t a1, id *a2)
{
  result = sub_22DEC4C14();
  *a2 = 0;
  return result;
}

uint64_t sub_22DDFC460(uint64_t a1, id *a2)
{
  v3 = sub_22DEC4C24();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_22DDFC4E0@<X0>(uint64_t *a2@<X8>)
{
  sub_22DEC4C34();
  v3 = sub_22DEC4C04();

  *a2 = v3;
  return result;
}

uint64_t sub_22DDFC524(uint64_t a1)
{
  v2 = sub_22DDFCEBC(&qword_27DA37968, type metadata accessor for FLUserInfoProperty, &unk_22DEC5CEC);
  v3 = sub_22DDFCEBC(&qword_27DA37970, type metadata accessor for FLUserInfoProperty, &unk_22DEC5C8C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22DDFC5E0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_22DEC4C04();

  *a2 = v3;
  return result;
}

uint64_t sub_22DDFC628(uint64_t a1)
{
  v2 = sub_22DDFCEBC(&qword_27DA37958, type metadata accessor for FLNotificationOptions, &unk_22DEC5E90);
  v3 = sub_22DDFCEBC(&qword_27DA37960, type metadata accessor for FLNotificationOptions, &unk_22DEC5DE4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22DDFC6E4()
{
  v0 = sub_22DEC4C34();
  v1 = MEMORY[0x2318DB370](v0);

  return v1;
}

uint64_t sub_22DDFC720(uint64_t a1)
{
  sub_22DEC4C34();
  sub_22DEC4C94();
}

uint64_t sub_22DDFC774(uint64_t a1)
{
  sub_22DEC4C34();
  sub_22DEC5184();
  sub_22DEC4C94();
  v1 = sub_22DEC51A4();

  return v1;
}

uint64_t sub_22DDFC7E8(void *a1, uint64_t *a2)
{
  v2 = sub_22DEC4C34();
  v4 = v3;
  if (v2 == sub_22DEC4C34() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22DEC50E4();
  }

  return v7 & 1;
}

id sub_22DDFC870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - v9;
  v11 = &v3[OBJC_IVAR____TtC6NDOAPI22DynamicUrlProtocolStub_stub];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  if (qword_27DA37710 != -1)
  {
    swift_once();
  }

  sub_22DEC4684();
  v12 = sub_22DEC4764();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v10, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v15 = off_27DA37718;
    v16 = *(off_27DA37718 + 2);
    v40 = a3;
    v41 = a1;
    v38 = v4;
    v39 = a2;
    if (v16 && (v17 = sub_22DE1015C(v10), (v18 & 1) != 0))
    {
      v19 = (v15[7] + 48 * v17);
      v21 = *v19;
      v20 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = v19[4];
      v25 = v19[5];
    }

    else
    {
      v21 = 0;
      v20 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
    }

    swift_endAccess();
    v26 = *v11;
    v27 = v11[1];
    v28 = v11[2];
    v29 = v11[3];
    v30 = v11[4];
    v31 = v11[5];
    *v11 = v21;
    v11[1] = v20;
    v11[2] = v22;
    v11[3] = v23;
    v11[4] = v24;
    v11[5] = v25;
    sub_22DDFC32C(v26, v27, v28, v29, v30, v31);
    (*(v13 + 8))(v10, v12);
    v32 = v41;
    v33 = sub_22DEC4664();
    v34 = type metadata accessor for DynamicUrlProtocolStub();
    v42.receiver = v38;
    v42.super_class = v34;
    v35 = objc_msgSendSuper2(&v42, sel_initWithRequest_cachedResponse_client_, v33, v39, v40);

    v36 = sub_22DEC4694();
    (*(*(v36 - 8) + 8))(v32, v36);
    return v35;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22DDFCB48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_22DEC4764();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEC4684();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_22DDFCD50(v2);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    if (qword_27DA37710 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (*(off_27DA37718 + 2))
    {
      sub_22DE1015C(v6);
      if (v7)
      {
        swift_endAccess();
        (*(v4 + 8))(v6, v3);
        return 1;
      }
    }

    swift_endAccess();
    (*(v4 + 8))(v6, v3);
  }

  return 0;
}

uint64_t sub_22DDFCD50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22DDFCDE0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_22DDFCEBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t NDOPostProcessingURLClient.__allocating_init(internalClient:postProcessor:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_22DDEDA18(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

uint64_t NDOPostProcessingURLClient.init(internalClient:postProcessor:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_22DDEDA18(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

uint64_t sub_22DDFD0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = a3;
  v11 = *(v8 + 8);

  v11(a1, sub_22DDFD37C, v10, v7, v8);
}

void sub_22DDFD1F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + 56);

    v12(a1, a2, a3, a4 & 1);

    a6(a1, a2, a3, a4 & 1);
  }

  else
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v13 = sub_22DEC4B44();
    __swift_project_value_buffer(v13, qword_281462270);
    v14 = sub_22DEC4B24();
    v15 = sub_22DEC4E44();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22DDEC000, v14, v15, "Instance is deallocated. Not handling results", v16, 2u);
      MEMORY[0x2318DBF00](v16, -1, -1);
    }
  }
}

uint64_t NDOPostProcessingURLClient.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t NDOPostProcessingURLClient.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_22DDFD3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v7[5];
  v9 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v8);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a2;
  v11[4] = a3;
  v12 = *(v9 + 8);

  v12(a1, sub_22DDFD5B4, v11, v8, v9);
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

double NDOLocalWarrantyDownloader.__allocating_init(loaderProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  result = 0.0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  *(v4 + 56) = a1;
  *(v4 + 64) = a2;
  return result;
}

void *NDOLocalWarrantyDownloader.deinit()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return v0;
}

uint64_t NDOWarrantyLoaderWithFallback.__allocating_init(primary:fallback:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_22DDEDA18(a1, v4 + 16);
  sub_22DDEDA18(a2, v4 + 56);
  return v4;
}

uint64_t NDOWarrantyLoaderWithFallback.init(primary:fallback:)(__int128 *a1, __int128 *a2)
{
  sub_22DDEDA18(a1, v2 + 16);
  sub_22DDEDA18(a2, v2 + 56);
  return v2;
}

uint64_t sub_22DDFD6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = v5[5];
  v11 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v10);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;
  v14 = *(v11 + 8);

  v14(a1, a2, sub_22DDFE288, v13, v10, v11);
}

void sub_22DDFD7FC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void), uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v14 = Strong[10];
      v15 = Strong[11];
      __swift_project_boxed_opaque_existential_1(Strong + 7, v14);
      (*(v15 + 8))(a4, a5, a6, a7, v14, v15);
    }

    else
    {
      a6(a1, 0);
    }
  }

  else
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v16 = sub_22DEC4B44();
    __swift_project_value_buffer(v16, qword_281462270);
    v17 = sub_22DEC4B24();
    v18 = sub_22DEC4E44();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22DDEC000, v17, v18, "NDOWarrantyLoaderWithFallback is deallocated. Dropping results", v19, 2u);
      MEMORY[0x2318DBF00](v19, -1, -1);
    }
  }
}

uint64_t NDOWarrantyLoaderWithFallback.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t NDOWarrantyLoaderWithFallback.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_22DDFDA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = v9[5];
  v11 = v9[6];
  __swift_project_boxed_opaque_existential_1(v9 + 2, v10);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;
  v14 = *(v11 + 8);

  v14(a1, a2, sub_22DDFE520, v13, v10, v11);
}

uint64_t NDOWarrantyLoader.__allocating_init(configLoader:warrantyLoaderProvider:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0;
  sub_22DDEDA18(a1, v6 + 16);
  *(v6 + 96) = a2;
  *(v6 + 104) = a3;
  return v6;
}

uint64_t NDOWarrantyLoader.init(configLoader:warrantyLoaderProvider:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 88) = 0;
  *(v3 + 72) = 0u;
  *(v3 + 56) = 0u;
  sub_22DDEDA18(a1, v3 + 16);
  *(v3 + 96) = a2;
  *(v3 + 104) = a3;
  return v3;
}

uint64_t sub_22DDFDBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[5];
  v10 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v9);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a1;
  v12[6] = a2;
  v13 = *(v10 + 16);

  v13(sub_22DDFE28C, v12, v9, v10);
}

void sub_22DDFDCF4(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_22DEC4764();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_22DE19164(4, v13);
    (*(v15 + 96))(&v34, v13, a5, a6);
    swift_beginAccess();
    v22 = *(&v35 + 1);
    if (*(v15 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1((v15 + 56));
      if (v22)
      {
LABEL_10:
        sub_22DDEDA18(&v34, v15 + 56);
        goto LABEL_13;
      }
    }

    else if (*(&v35 + 1))
    {
      goto LABEL_10;
    }

    v23 = v35;
    *(v15 + 56) = v34;
    *(v15 + 72) = v23;
    *(v15 + 88) = v36;
LABEL_13:
    swift_endAccess();
    if (*(v15 + 80))
    {
      sub_22DDEDAAC(v15 + 56, &v34);
      if (*(&v35 + 1))
      {
LABEL_15:
        sub_22DDEDAAC(&v34, v31);
        if (*(&v35 + 1))
        {
          __swift_destroy_boxed_opaque_existential_1(&v34);
        }

        v24 = v32;
        v25 = v33;
        __swift_project_boxed_opaque_existential_1(v31, v32);
        v26 = swift_allocObject();
        *(v26 + 16) = a3;
        *(v26 + 24) = a4;
        v27 = *(v25 + 16);

        v27(sub_22DDFE4E4, v26, v24, v25);

        (*(v11 + 8))(v13, v10);
        v28 = v31;
LABEL_21:
        __swift_destroy_boxed_opaque_existential_1(v28);
        return;
      }
    }

    else
    {
      v29 = *(v15 + 72);
      v34 = *(v15 + 56);
      v35 = v29;
      v36 = *(v15 + 88);
      if (*(&v29 + 1))
      {
        goto LABEL_15;
      }
    }

    (*(v11 + 8))(v13, v10);

    if (!*(&v35 + 1))
    {
      return;
    }

    v28 = &v34;
    goto LABEL_21;
  }

  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v16 = sub_22DEC4B44();
  __swift_project_value_buffer(v16, qword_281462270);
  v17 = sub_22DEC4B24();
  v18 = sub_22DEC4E44();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_22DDEC000, v17, v18, "NDOWarrantyLoader is deallocated. Dropping results", v19, 2u);
    MEMORY[0x2318DBF00](v19, -1, -1);
  }

  type metadata accessor for NDOErrors(0);
  sub_22DDFE48C();
  v20 = swift_allocError();
  *v21 = 0xD000000000000011;
  v21[1] = 0x800000022DEC6080;
  swift_storeEnumTagMultiPayload();
  a3(v20, 1);
}

void *NDOWarrantyLoader.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  return v0;
}

uint64_t NDOWarrantyLoader.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_22DDFE178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = v9[5];
  v11 = v9[6];
  __swift_project_boxed_opaque_existential_1(v9 + 2, v10);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a1;
  v13[6] = a2;
  v14 = *(v11 + 16);

  v14(sub_22DDFE51C, v13, v10, v11);
}

uint64_t objectdestroy_8Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_2Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_22DDFE48C()
{
  result = qword_28145AE60;
  if (!qword_28145AE60)
  {
    type metadata accessor for NDOErrors(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145AE60);
  }

  return result;
}

uint64_t NotificationData.init(passthroughData:notificationID:notificationContext:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22DDFE570(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_22DDFE5B8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22DDFE61C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_22DDFE678(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_22DDFE7EC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAA40]);
  v1 = sub_22DEC4724();
  v2 = sub_22DEC4C04();
  v3 = [v0 initWithURL:v1 statusCode:200 HTTPVersion:v2 headerFields:0];

  return v3;
}

uint64_t sub_22DDFE878()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_22DEC4C04();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_22DEC4EC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36[0] = v34;
  v36[1] = v35;
  if (!*(&v35 + 1))
  {
    return sub_22DDEF284(v36, &qword_27DA37988, &unk_22DEC6210);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  if (v32 == 0x6C61636F6CLL && v33 == 0xE500000000000000)
  {
  }

  else
  {
    v4 = sub_22DEC50E4();

    if ((v4 & 1) == 0)
    {
      return result;
    }
  }

  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v5 = sub_22DEC4B44();
  __swift_project_value_buffer(v5, qword_281462270);
  v6 = sub_22DEC4B24();
  v7 = sub_22DEC4E54();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22DDEC000, v6, v7, "Enabling file based network stubbing.", v8, 2u);
    MEMORY[0x2318DBF00](v8, -1, -1);
  }

  v9 = 0xEE007473696C702ELL;
  v10 = 0x6F646E2D62757473;

  type metadata accessor for DynamicUrlProtocolStub();
  v11 = objc_opt_self();
  [v11 registerClass_];
  v12 = 0xD00000000000001ELL;
  if (byte_28418CE08 == 5)
  {
    v13 = 0x800000022DED15D0;
  }

  else
  {
    v12 = 0xD00000000000001DLL;
    v13 = 0x800000022DED15B0;
  }

  v14 = 0xD000000000000019;
  if (byte_28418CE08 == 3)
  {
    v15 = 0x800000022DED15F0;
  }

  else
  {
    v14 = 0x6B63612D62757473;
    v15 = 0xED00006E6F736A2ELL;
  }

  if (byte_28418CE08 <= 4u)
  {
    v12 = v14;
    v13 = v15;
  }

  v16 = 0xD000000000000012;
  if (byte_28418CE08 == 1)
  {
    v16 = 0xD000000000000010;
    v17 = 0x800000022DED1630;
  }

  else
  {
    v17 = 0x800000022DED1610;
  }

  if (!byte_28418CE08)
  {
    v16 = 0x6F646E2D62757473;
    v17 = 0xEE007473696C702ELL;
  }

  if (byte_28418CE08 <= 2u)
  {
    v18 = v16;
  }

  else
  {
    v18 = v12;
  }

  if (byte_28418CE08 <= 2u)
  {
    v19 = v17;
  }

  else
  {
    v19 = v13;
  }

  sub_22DDFF9BC(v18, v19);

  if (byte_28418CE09 <= 2u)
  {
    v22 = 0xD000000000000012;
    if (byte_28418CE09 == 1)
    {
      v22 = 0xD000000000000010;
      v23 = 0x800000022DED1630;
    }

    else
    {
      v23 = 0x800000022DED1610;
    }

    if (byte_28418CE09)
    {
      v20 = v22;
    }

    else
    {
      v20 = 0x6F646E2D62757473;
    }

    if (byte_28418CE09)
    {
      v21 = v23;
    }

    else
    {
      v21 = 0xEE007473696C702ELL;
    }
  }

  else if (byte_28418CE09 > 4u)
  {
    if (byte_28418CE09 == 5)
    {
      v20 = 0xD00000000000001ELL;
      v21 = 0x800000022DED15D0;
    }

    else
    {
      v20 = 0xD00000000000001DLL;
      v21 = 0x800000022DED15B0;
    }
  }

  else
  {
    if (byte_28418CE09 == 3)
    {
      v20 = 0xD000000000000019;
    }

    else
    {
      v20 = 0x6B63612D62757473;
    }

    if (byte_28418CE09 == 3)
    {
      v21 = 0x800000022DED15F0;
    }

    else
    {
      v21 = 0xED00006E6F736A2ELL;
    }
  }

  sub_22DDFF9BC(v20, v21);

  if (byte_28418CE0A <= 2u)
  {
    if (byte_28418CE0A)
    {
      if (byte_28418CE0A == 1)
      {
        v24 = 0xD000000000000010;
        v25 = 0x800000022DED1630;
      }

      else
      {
        v24 = 0xD000000000000012;
        v25 = 0x800000022DED1610;
      }
    }

    else
    {
      v24 = 0x6F646E2D62757473;
      v25 = 0xEE007473696C702ELL;
    }
  }

  else if (byte_28418CE0A > 4u)
  {
    if (byte_28418CE0A == 5)
    {
      v24 = 0xD00000000000001ELL;
      v25 = 0x800000022DED15D0;
    }

    else
    {
      v24 = 0xD00000000000001DLL;
      v25 = 0x800000022DED15B0;
    }
  }

  else if (byte_28418CE0A == 3)
  {
    v24 = 0xD000000000000019;
    v25 = 0x800000022DED15F0;
  }

  else
  {
    v24 = 0x6B63612D62757473;
    v25 = 0xED00006E6F736A2ELL;
  }

  sub_22DDFF9BC(v24, v25);

  if (byte_28418CE0B <= 2u)
  {
    if (byte_28418CE0B)
    {
      if (byte_28418CE0B == 1)
      {
        v26 = 0xD000000000000010;
        v27 = 0x800000022DED1630;
      }

      else
      {
        v26 = 0xD000000000000012;
        v27 = 0x800000022DED1610;
      }
    }

    else
    {
      v26 = 0x6F646E2D62757473;
      v27 = 0xEE007473696C702ELL;
    }
  }

  else if (byte_28418CE0B > 4u)
  {
    if (byte_28418CE0B == 5)
    {
      v26 = 0xD00000000000001ELL;
      v27 = 0x800000022DED15D0;
    }

    else
    {
      v26 = 0xD00000000000001DLL;
      v27 = 0x800000022DED15B0;
    }
  }

  else if (byte_28418CE0B == 3)
  {
    v26 = 0xD000000000000019;
    v27 = 0x800000022DED15F0;
  }

  else
  {
    v26 = 0x6B63612D62757473;
    v27 = 0xED00006E6F736A2ELL;
  }

  sub_22DDFF9BC(v26, v27);

  if (byte_28418CE0C <= 2u)
  {
    if (byte_28418CE0C)
    {
      if (byte_28418CE0C == 1)
      {
        v28 = 0xD000000000000010;
        v29 = 0x800000022DED1630;
      }

      else
      {
        v28 = 0xD000000000000012;
        v29 = 0x800000022DED1610;
      }
    }

    else
    {
      v28 = 0x6F646E2D62757473;
      v29 = 0xEE007473696C702ELL;
    }
  }

  else if (byte_28418CE0C > 4u)
  {
    if (byte_28418CE0C == 5)
    {
      v28 = 0xD00000000000001ELL;
      v29 = 0x800000022DED15D0;
    }

    else
    {
      v28 = 0xD00000000000001DLL;
      v29 = 0x800000022DED15B0;
    }
  }

  else if (byte_28418CE0C == 3)
  {
    v28 = 0xD000000000000019;
    v29 = 0x800000022DED15F0;
  }

  else
  {
    v28 = 0x6B63612D62757473;
    v29 = 0xED00006E6F736A2ELL;
  }

  sub_22DDFF9BC(v28, v29);

  if (byte_28418CE0D <= 2u)
  {
    if (byte_28418CE0D)
    {
      if (byte_28418CE0D == 1)
      {
        v30 = 0xD000000000000010;
        v31 = 0x800000022DED1630;
      }

      else
      {
        v30 = 0xD000000000000012;
        v31 = 0x800000022DED1610;
      }
    }

    else
    {
      v30 = 0x6F646E2D62757473;
      v31 = 0xEE007473696C702ELL;
    }
  }

  else if (byte_28418CE0D > 4u)
  {
    if (byte_28418CE0D == 5)
    {
      v30 = 0xD00000000000001ELL;
      v31 = 0x800000022DED15D0;
    }

    else
    {
      v30 = 0xD00000000000001DLL;
      v31 = 0x800000022DED15B0;
    }
  }

  else if (byte_28418CE0D == 3)
  {
    v30 = 0xD000000000000019;
    v31 = 0x800000022DED15F0;
  }

  else
  {
    v30 = 0x6B63612D62757473;
    v31 = 0xED00006E6F736A2ELL;
  }

  sub_22DDFF9BC(v30, v31);

  if (byte_28418CE0E <= 2u)
  {
    if (byte_28418CE0E)
    {
      if (byte_28418CE0E == 1)
      {
        v10 = 0xD000000000000010;
        v9 = 0x800000022DED1630;
      }

      else
      {
        v10 = 0xD000000000000012;
        v9 = 0x800000022DED1610;
      }
    }
  }

  else if (byte_28418CE0E > 4u)
  {
    if (byte_28418CE0E == 5)
    {
      v10 = 0xD00000000000001ELL;
      v9 = 0x800000022DED15D0;
    }

    else
    {
      v10 = 0xD00000000000001DLL;
      v9 = 0x800000022DED15B0;
    }
  }

  else if (byte_28418CE0E == 3)
  {
    v10 = 0xD000000000000019;
    v9 = 0x800000022DED15F0;
  }

  else
  {
    v10 = 0x6B63612D62757473;
    v9 = 0xED00006E6F736A2ELL;
  }

  sub_22DDFF9BC(v10, v9);
}

uint64_t sub_22DDFEFF0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_22DDFF03C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22DEC4764();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37990, &qword_22DEC6A90);
  v46 = v4;
  result = sub_22DEC4FE4();
  v11 = result;
  if (*(v9 + 16))
  {
    v50 = v8;
    v51 = v5;
    v42 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v43 = (v6 + 16);
    v44 = v6;
    v47 = (v6 + 32);
    v18 = result + 64;
    v45 = v9;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v26 = v23 | (v12 << 6);
      v27 = *(v9 + 48);
      v49 = *(v6 + 72);
      v28 = v27 + v49 * v26;
      if (v46)
      {
        (*v47)(v50, v28, v51);
        v29 = (*(v9 + 56) + 48 * v26);
        v30 = v29[1];
        v48 = *v29;
        v52 = v29[2];
        v53 = v30;
      }

      else
      {
        (*v43)(v50, v28, v51);
        v31 = (*(v9 + 56) + 48 * v26);
        v32 = *v31;
        v33 = v31[1];
        v52 = v31[2];
        v53 = v33;
        v48 = v32;
      }

      sub_22DE001E0();
      result = sub_22DEC4BD4();
      v34 = -1 << *(v11 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v18 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v6 = v44;
        v9 = v45;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v18 + 8 * v36);
          if (v40 != -1)
          {
            v19 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v35) & ~*(v18 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v6 = v44;
      v9 = v45;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v47)(*(v11 + 48) + v49 * v19, v50, v51);
      v20 = (*(v11 + 56) + 48 * v19);
      v21 = v52;
      v22 = v53;
      *v20 = v48;
      v20[1] = v22;
      v20[2] = v21;
      ++*(v11 + 16);
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v16 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v41 = 1 << *(v9 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v13, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v41;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_22DDFF42C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22DEC4764();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_22DE1015C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_22DDFF6F0();
      goto LABEL_7;
    }

    sub_22DDFF03C(v17, a3 & 1);
    v24 = sub_22DE1015C(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_22DDFF624(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_22DEC5124();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 48 * v14);
  v22 = a1[1];
  *v21 = *a1;
  v21[1] = v22;
  v21[2] = a1[2];
}

uint64_t sub_22DDFF624(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22DEC4764();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = (a4[7] + 48 * a1);
  v12 = a3[2];
  v11[1] = a3[1];
  v11[2] = v12;
  *v11 = *a3;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

char *sub_22DDFF6F0()
{
  v1 = v0;
  v38 = sub_22DEC4764();
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37990, &qword_22DEC6A90);
  v3 = *v0;
  v4 = sub_22DEC4FD4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v39 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v34 = v40 + 32;
    v35 = v40 + 16;
    v36 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v42 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v40;
        v20 = *(v40 + 72) * v18;
        v21 = v37;
        v22 = v38;
        (*(v40 + 16))(v37, *(v3 + 48) + v20, v38);
        v23 = 48 * v18;
        v24 = *(v3 + 56) + 48 * v18;
        v25 = *v24;
        v26 = *(v24 + 40);
        v27 = v39;
        v28 = *(v39 + 48);
        v29 = *(v19 + 32);
        v41 = *(v24 + 8);
        v43 = *(v24 + 24);
        v29(v28 + v20, v21, v22);
        v30 = *(v27 + 56) + v23;
        *v30 = v25;
        v3 = v36;
        *(v30 + 8) = v41;
        *(v30 + 24) = v43;
        *(v30 + 40) = v26;

        v13 = v42;
      }

      while (v42);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v32;
        v5 = v39;
        goto LABEL_18;
      }

      v17 = *(v33 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v42 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_22DDFF9BC(void (*a1)(char *, char *, uint64_t), uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - v5;
  v7 = sub_22DEC46F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22DEC4764();
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v48 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v47 = &v47 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v50 = &v47 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v47 - v18;
  if (qword_28145E520 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v11, qword_28145E528);
  *&v54 = a1;
  *(&v54 + 1) = a2;
  (*(v8 + 104))(v10, *MEMORY[0x277CC91D8], v7);
  sub_22DDEDFE0();
  v49 = a1;

  v52 = v19;
  sub_22DEC4754();
  (*(v8 + 8))(v10, v7);

  v20 = [objc_opt_self() standardUserDefaults];
  v21 = sub_22DEC4C04();
  v22 = [v20 stringForKey_];

  v23 = v51;
  if (!v22)
  {
    goto LABEL_6;
  }

  v24 = sub_22DEC4C34();
  v26 = v25;

  *&v54 = v24;
  *(&v54 + 1) = v26;

  MEMORY[0x2318DB350](v49, a2);

  sub_22DEC4744();

  if ((*(v23 + 48))(v6, 1, v11) == 1)
  {
    sub_22DDEF284(v6, &qword_27DA37910, &qword_22DEC5BB0);
LABEL_6:
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v27 = sub_22DEC4B44();
    __swift_project_value_buffer(v27, qword_281462270);
    v28 = sub_22DEC4B24();
    v29 = sub_22DEC4E54();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v52;
    if (v30)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_22DDEC000, v28, v29, "Failed to register local stub due to invalid base path or url", v32, 2u);
      MEMORY[0x2318DBF00](v32, -1, -1);
    }

    return (*(v23 + 8))(v31, v11);
  }

  v34 = *(v23 + 32);
  v35 = v50;
  v34(v50, v6, v11);
  v36 = v34;
  v49 = *(v23 + 16);
  v37 = v47;
  v49(v47, v52, v11);
  v38 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v39 = swift_allocObject();
  v34(v39 + v38, v37, v11);
  v40 = v48;
  v49(v48, v35, v11);
  v41 = swift_allocObject();
  v42 = v40;
  v43 = v11;
  v36(v41 + v38, v42, v11);
  *&v54 = sub_22DE00098;
  *(&v54 + 1) = v39;
  v55 = sub_22DE00180;
  v56 = v41;
  v57 = sub_22DDFE870;
  v58 = 0;
  if (qword_27DA37710 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = off_27DA37718;
  off_27DA37718 = 0x8000000000000000;
  v45 = v50;
  sub_22DDFF42C(&v54, v50, isUniquelyReferenced_nonNull_native);
  off_27DA37718 = v53;
  swift_endAccess();

  v46 = *(v51 + 8);
  v46(v45, v43);
  return (v46)(v52, v43);
}

uint64_t sub_22DE00098()
{
  v1 = *(sub_22DEC4764() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_22DDFE7A8(v2);
}

uint64_t objectdestroyTm()
{
  v1 = sub_22DEC4764();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id sub_22DE00180()
{
  sub_22DEC4764();

  return sub_22DDFE7EC();
}

unint64_t sub_22DE001E0()
{
  result = qword_27DA37998;
  if (!qword_27DA37998)
  {
    sub_22DEC4764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37998);
  }

  return result;
}

uint64_t NDOShowNotificationActionHandler.__allocating_init(userNotificationCenter:keyValueStore:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_22DDEDA18(a1, v4 + 16);
  sub_22DE002CC(a2, (v4 + 56));
  return v4;
}

uint64_t NDOShowNotificationActionHandler.init(userNotificationCenter:keyValueStore:)(__int128 *a1, __int128 *a2)
{
  sub_22DDEDA18(a1, v2 + 16);
  sub_22DE002CC(a2, (v2 + 56));
  return v2;
}

_OWORD *sub_22DE002CC(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

void sub_22DE002E4(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v7 = *v3;
  v65 = v3;
  v66 = v7;
  v63 = sub_22DEC4854();
  v60 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v59 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v57 - v10;
  v12 = sub_22DEC4764();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v69 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  v61 = *(v70 - 8);
  v15 = MEMORY[0x28223BE20](v70);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v57 - v18;
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v20 = sub_22DEC4B44();
  __swift_project_value_buffer(v20, qword_281462270);
  sub_22DE017A4(a1, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
  v21 = sub_22DEC4B24();
  v22 = sub_22DEC4E54();
  v23 = os_log_type_enabled(v21, v22);
  v64 = v17;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v68 = a2;
    v25 = v24;
    v26 = swift_slowAlloc();
    v67 = v12;
    v58 = a3;
    v27 = v26;
    *&v71[0] = v26;
    *v25 = 136315138;
    sub_22DE017A4(v19, v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
    v28 = sub_22DEC4C74();
    v57 = v11;
    v29 = v13;
    v31 = v30;
    sub_22DE0180C(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
    v32 = sub_22DDEDC0C(v28, v31, v71);
    v13 = v29;
    v11 = v57;

    *(v25 + 4) = v32;
    _os_log_impl(&dword_22DDEC000, v21, v22, "Handling show notification action %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v33 = v27;
    a3 = v58;
    v12 = v67;
    MEMORY[0x2318DBF00](v33, -1, -1);
    v34 = v25;
    a2 = v68;
    MEMORY[0x2318DBF00](v34, -1, -1);
  }

  else
  {

    sub_22DE0180C(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA379A0, &qword_22DEC77D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22DEC6270;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  v36 = sub_22DE00C6C(inited, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData, &qword_27DA379E0, &unk_22DEC63C0);
  swift_setDeallocating();
  swift_arrayDestroy();
  if ((v36 & 1) == 0)
  {
    goto LABEL_9;
  }

  v37 = v70;

  sub_22DEC4744();

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_22DDEF284(v11, &qword_27DA37910, &qword_22DEC5BB0);
LABEL_9:
    type metadata accessor for NDOErrors(0);
    sub_22DDFE48C();
    v38 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    a2(v38, 1);

    return;
  }

  (*(v13 + 32))(v69, v11, v12);
  v39 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];

  v40 = sub_22DEC4C04();

  [v39 setTitle_];

  [v39 setInterruptionLevel_];
  v41 = sub_22DEC4724();
  [v39 setDefaultActionURL_];

  if (*(a1 + v37[6] + 8))
  {

    v42 = sub_22DEC4C04();

    [v39 setHeader_];
  }

  v67 = v12;
  if (*(a1 + v37[8] + 8))
  {

    v43 = sub_22DEC4C04();

    [v39 setBody_];
  }

  v58 = v13;
  v68 = a2;
  if (*(a1 + v37[9] + 8))
  {

    v44 = sub_22DEC4C04();

    [v39 setFooter_];
  }

  v45 = v59;
  sub_22DEC4844();
  sub_22DEC4834();
  (*(v60 + 8))(v45, v63);
  v46 = v39;
  v47 = sub_22DEC4C04();

  v48 = [objc_opt_self() requestWithIdentifier:v47 content:v46 trigger:0];

  v49 = v65;
  v50 = v65[5];
  v51 = v65[6];
  __swift_project_boxed_opaque_existential_1(v65 + 2, v50);
  sub_22DE014AC((v49 + 7), v71);
  v52 = v64;
  sub_22DE017A4(a1, v64, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
  v53 = (*(v61 + 80) + 80) & ~*(v61 + 80);
  v54 = (v62 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  *(v55 + 16) = v68;
  *(v55 + 24) = a3;
  sub_22DE002CC(v71, (v55 + 32));
  sub_22DE01510(v52, v55 + v53);
  *(v55 + v54) = v66;
  v56 = *(v51 + 8);

  v56(v48, sub_22DE01574, v55, v50, v51);

  (*(v58 + 8))(v69, v67);
}

uint64_t sub_22DE00C6C(unint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v10 = a2(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v35 - v15;
  if (a1 >> 62)
  {
LABEL_20:
    v34 = v14;
    v17 = sub_22DEC4FC4();
    v14 = v34;
    if (v17)
    {
      goto LABEL_3;
    }

    return 1;
  }

  v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    return 1;
  }

LABEL_3:
  v35 = v14;
  v36 = a4;
  v37 = a5;
  v38 = a3;
  v18 = 0;
  a5 = (a1 & 0xC000000000000001);
  a4 = (a1 & 0xFFFFFFFFFFFFFF8);
  while (a5)
  {
    a3 = MEMORY[0x2318DB600](v18, a1);
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_12;
    }

LABEL_7:
    swift_getAtKeyPath();
    if ((v40 & 1) == 0)
    {
      goto LABEL_13;
    }

    ++v18;
    if (v19 == v17)
    {
      return 1;
    }
  }

  if (v18 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_20;
  }

  a3 = *(a1 + 8 * v18 + 32);

  v19 = v18 + 1;
  if (!__OFADD__(v18, 1))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v20 = sub_22DEC4B44();
  __swift_project_value_buffer(v20, qword_281462270);
  v21 = v38;
  sub_22DE017A4(v5, v16, v38);

  v22 = sub_22DEC4B24();
  v23 = sub_22DEC4E54();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v40 = v25;
    *v24 = 136315394;
    sub_22DE017A4(v16, v13, v21);
    v26 = sub_22DEC4C74();
    v28 = v27;
    sub_22DE0180C(v16, v21);
    v29 = sub_22DDEDC0C(v26, v28, &v40);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    v39 = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
    v30 = sub_22DEC4C74();
    v32 = sub_22DDEDC0C(v30, v31, &v40);

    *(v24 + 14) = v32;
    _os_log_impl(&dword_22DDEC000, v22, v23, "%s has required keypath not explicitly set: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DBF00](v25, -1, -1);
    MEMORY[0x2318DBF00](v24, -1, -1);
  }

  else
  {

    sub_22DE0180C(v16, v21);
  }

  return 0;
}

void sub_22DE01080(void *a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v8 = a1;
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v9 = sub_22DEC4B44();
    __swift_project_value_buffer(v9, qword_281462270);
    v10 = a1;
    v11 = sub_22DEC4B24();
    v12 = sub_22DEC4E44();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = a1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_22DDEC000, v11, v12, "Failed to post user notification with error: %@", v13, 0xCu);
      sub_22DDEF284(v14, &qword_27DA379D8, qword_22DEC6E70);
      MEMORY[0x2318DBF00](v14, -1, -1);
      MEMORY[0x2318DBF00](v13, -1, -1);
    }

    type metadata accessor for NDOErrors(0);
    sub_22DDFE48C();
    v17 = swift_allocError();
    v19 = v18;
    swift_getErrorValue();
    *v19 = sub_22DEC5134();
    v19[1] = v20;
    swift_storeEnumTagMultiPayload();
    a2(v17, 1);
  }

  else
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v23 = sub_22DEC4B44();
    __swift_project_value_buffer(v23, qword_281462270);
    v24 = sub_22DEC4B24();
    v25 = sub_22DEC4E54();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22DDEC000, v24, v25, "Sucessfully posted user notification", v26, 2u);
      MEMORY[0x2318DBF00](v26, -1, -1);
    }

    v27 = (a5 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0) + 20));
    if (v27[1])
    {
      v28 = *v27;
      v29 = v27[1];
    }

    else
    {
      v28 = 0;
      v29 = 0xE000000000000000;
    }

    sub_22DE25B70(a4, v28, v29);

    a2(0, 0);
  }
}

uint64_t NDOShowNotificationActionHandler.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t NDOShowNotificationActionHandler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_22DE01450(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_22DDEDC0C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_22DE014AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22DE01510(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22DE01574(void *a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0) - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_22DE01080(a1, v5, v6, v1 + 32, v1 + v4, v7);
}

char *sub_22DE01618(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA379D0, &unk_22DEC63B0);
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

_BYTE **sub_22DE0170C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_22DE017A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE0180C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NDOAppleAccountSignedInUrlClient.__allocating_init(_:isSignedIn:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_22DDEDA18(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

uint64_t NDOAppleAccountSignedInUrlClient.init(_:isSignedIn:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_22DDEDA18(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

uint64_t NDOAppleAccountSignedInUrlClient.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t NDOAppleAccountSignedInUrlClient.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t NDORemoveWarrantyActionHandler.init(deletionFunc:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t NDORemoveWarrantyActionHandler.handle(action:completion:)(uint64_t a1, uint64_t (*a2)(void, void))
{
  v4 = *(*a1 + 16);
  if (v4)
  {
    v5 = *v2;
    v6 = (*a1 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      v5(v7, v8);

      v6 += 2;
      --v4;
    }

    while (v4);
  }

  return a2(0, 0);
}

uint64_t sub_22DE01A54(uint64_t a1, uint64_t (*a2)(void, void))
{
  v4 = *(*a1 + 16);
  if (v4)
  {
    v5 = *v2;
    v6 = (*a1 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      v5(v7, v8);

      v6 += 2;
      --v4;
    }

    while (v4);
  }

  return a2(0, 0);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22DE01AF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22DE01B3C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t NDOURLSessionClient.__allocating_init(session:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t NDOURLSessionClient.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void __swiftcall RequestDeviceInfo.init(serialNumber:primary:deviceType:deviceName:deviceModel:deviceColor:deviceEnclosureColor:deviceCoverGlassColor:isTinkerPaired:isActiveWatch:)(NDOAPI::RequestDeviceInfo *__return_ptr retstr, Swift::String serialNumber, Swift::Bool primary, Swift::String deviceType, Swift::String_optional deviceName, Swift::String_optional deviceModel, Swift::String_optional deviceColor, Swift::String_optional deviceEnclosureColor, Swift::String_optional deviceCoverGlassColor, Swift::Bool_optional isTinkerPaired, Swift::Bool_optional isActiveWatch)
{
  retstr->serialNumber = serialNumber;
  retstr->primary = primary;
  retstr->deviceType = deviceType;
  retstr->deviceName = deviceName;
  retstr->deviceModel.value._countAndFlagsBits = deviceModel.value._countAndFlagsBits;
  *&retstr->deviceModel.value._object = *&deviceModel.value._object;
  *&retstr->deviceColor.value._object = *(&deviceEnclosureColor - 8);
  *&retstr->deviceEnclosureColor.value._object = *&deviceEnclosureColor.value._object;
  retstr->deviceCoverGlassColor.value._object = deviceCoverGlassColor.value._object;
  *&retstr->isTinkerPaired.value = *&isTinkerPaired;
}

unint64_t sub_22DE01CA8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000015;
    v6 = 0x72656B6E69547369;
    if (a1 != 8)
    {
      v6 = 0x6576697463417369;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6F43656369766564;
    if (a1 != 5)
    {
      v7 = 0xD000000000000014;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x754E6C6169726573;
    v2 = 0x7954656369766564;
    v3 = 0x614E656369766564;
    if (a1 != 3)
    {
      v3 = 0x6F4D656369766564;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7972616D697270;
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
}

uint64_t sub_22DE01E2C()
{
  v1 = *v0;
  sub_22DEC5184();
  MEMORY[0x2318DB840](v1);
  return sub_22DEC51A4();
}

uint64_t sub_22DE01EA0(uint64_t a1)
{
  v2 = *v1;
  sub_22DEC5184();
  MEMORY[0x2318DB840](v2);
  return sub_22DEC51A4();
}

uint64_t sub_22DE01EEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22DE05E9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22DE01F2C(uint64_t a1)
{
  v2 = sub_22DE02280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DE01F68(uint64_t a1)
{
  v2 = sub_22DE02280();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RequestDeviceInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA379F8, &qword_22DEC6540);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  v28 = *(v1 + 16);
  v7 = *(v1 + 24);
  v26 = *(v1 + 32);
  v27 = v7;
  v8 = *(v1 + 40);
  v24 = *(v1 + 48);
  v25 = v8;
  v9 = *(v1 + 56);
  v22 = *(v1 + 64);
  v23 = v9;
  v10 = *(v1 + 80);
  v20 = *(v1 + 72);
  v21 = v10;
  v11 = *(v1 + 96);
  v18 = *(v1 + 88);
  v19 = v11;
  v12 = *(v1 + 112);
  v16 = *(v1 + 104);
  v17 = v12;
  LODWORD(v9) = *(v1 + 120);
  v15[0] = *(v1 + 121);
  v15[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DE02280();
  sub_22DEC51D4();
  v39 = 0;
  v13 = v29;
  sub_22DEC5084();
  if (v13)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v38 = 1;
  sub_22DEC5094();
  v37 = 2;
  sub_22DEC5084();
  v36 = 3;
  sub_22DEC5064();
  v35 = 4;
  sub_22DEC5064();
  v34 = 5;
  sub_22DEC5064();
  v33 = 6;
  sub_22DEC5064();
  v32 = 7;
  sub_22DEC5064();
  v31 = 8;
  sub_22DEC5074();
  v30 = 9;
  sub_22DEC5074();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22DE02280()
{
  result = qword_27DA37A00;
  if (!qword_27DA37A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37A00);
  }

  return result;
}

uint64_t RequestDeviceInfo.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A08, &qword_22DEC6548);
  v5 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v7 = &v32 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DE02280();
  sub_22DEC51C4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  LOBYTE(v56[0]) = 0;
  v9 = sub_22DEC5044();
  v11 = v10;
  LOBYTE(v56[0]) = 1;
  v72 = sub_22DEC5054();
  LOBYTE(v56[0]) = 2;
  v44 = sub_22DEC5044();
  v46 = v12;
  LOBYTE(v56[0]) = 3;
  v43 = sub_22DEC5024();
  v45 = v13;
  LOBYTE(v56[0]) = 4;
  v42 = sub_22DEC5024();
  v47 = v14;
  LOBYTE(v56[0]) = 5;
  v38 = sub_22DEC5024();
  v40 = v15;
  LOBYTE(v56[0]) = 6;
  v16 = sub_22DEC5024();
  v39 = v17;
  v35 = v16;
  LOBYTE(v56[0]) = 7;
  v37 = 0;
  v34 = sub_22DEC5024();
  v36 = v18;
  LOBYTE(v56[0]) = 8;
  v33 = sub_22DEC5034();
  v41 = 0;
  v73 = 9;
  v19 = sub_22DEC5034();
  v41 = 0;
  v20 = v19;
  v72 &= 1u;
  v21 = v72;
  (*(v8 + 8))(v7, v48);
  *&v49 = v9;
  *(&v49 + 1) = v11;
  LOBYTE(v50) = v21;
  v23 = v45;
  v22 = v46;
  *(&v50 + 1) = v44;
  *&v51 = v46;
  *(&v51 + 1) = v43;
  *&v52 = v45;
  v24 = v47;
  *(&v52 + 1) = v42;
  *&v53 = v47;
  *(&v53 + 1) = v38;
  *&v54 = v40;
  *(&v54 + 1) = v35;
  *&v55[0] = v39;
  *(&v55[0] + 1) = v34;
  *&v55[1] = v36;
  BYTE8(v55[1]) = v33;
  BYTE9(v55[1]) = v20;
  v25 = v49;
  v26 = v50;
  v27 = v52;
  a2[2] = v51;
  a2[3] = v27;
  *a2 = v25;
  a2[1] = v26;
  v28 = v53;
  v29 = v54;
  v30 = v55[0];
  *(a2 + 106) = *(v55 + 10);
  a2[5] = v29;
  a2[6] = v30;
  a2[4] = v28;
  sub_22DE02870(&v49, v56);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v56[0] = v9;
  v56[1] = v11;
  v57 = v72;
  v58 = v44;
  v59 = v22;
  v60 = v43;
  v61 = v23;
  v62 = v42;
  v63 = v24;
  v64 = v38;
  v65 = v40;
  v66 = v35;
  v67 = v39;
  v68 = v34;
  v69 = v36;
  v70 = v33;
  v71 = v20;
  return sub_22DE028A8(v56);
}

uint64_t sub_22DE02908@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  v3 = (v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = v1[1];
  v41 = *(v1 + 16);
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1[8];
  v39 = v1[7];
  v40 = v8;
  v13 = v1[9];
  v14 = v1[10];
  v42 = v6;
  v43 = v13;
  v15 = v1[11];
  v16 = v1[12];
  v36 = v10;
  v37 = v15;
  v17 = v1[14];
  v38 = v1[13];
  v44 = *(v1 + 120);
  v18 = *(v1 + 121);

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v19 = &v5[v3[7]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = v3[8];
  v5[v20] = 2;
  v21 = &v5[v3[9]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v5[v3[10]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v5[v3[11]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v5[v3[12]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = &v5[v3[13]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v5[v3[14]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v5[v3[15]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v5[v3[16]] = 2;
  v28 = v3[17];
  v5[v28] = 2;
  v29 = v3[18];
  v5[v29] = 2;
  *v19 = v42;
  *(v19 + 1) = v7;
  v5[v20] = v41;
  v30 = v39;
  *v21 = v40;
  *(v21 + 1) = v9;
  if (v12)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v32 = 0xE000000000000000;
  if (v12)
  {
    v33 = v12;
  }

  else
  {
    v33 = 0xE000000000000000;
  }

  *v22 = v31;
  *(v22 + 1) = v33;
  if (v11)
  {
    *v26 = v36;
    *(v26 + 1) = v11;
  }

  v34 = v43;
  if (v14)
  {
    v32 = v14;
  }

  else
  {
    v34 = 0;
  }

  *v23 = v34;
  *(v23 + 1) = v32;
  if (v16)
  {
    *v24 = v37;
    *(v24 + 1) = v16;
  }

  if (v17)
  {
    *v25 = v38;
    *(v25 + 1) = v17;
  }

  if (v44 != 2)
  {
    v5[v28] = v44;
  }

  if (v18 != 2)
  {
    v5[v29] = v18;
  }

  sub_22DE0625C(v5, v45, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData);
}

NDOAPI::WarrantyHashInfo __swiftcall WarrantyHashInfo.init(serial:warrantyHash:)(Swift::String serial, Swift::String warrantyHash)
{
  *v2 = serial;
  v2[1] = warrantyHash;
  result.warrantyHash = warrantyHash;
  result.serial = serial;
  return result;
}

uint64_t sub_22DE02B48()
{
  if (*v0)
  {
    return 0x79746E6172726177;
  }

  else
  {
    return 0x6C6169726573;
  }
}

uint64_t sub_22DE02B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6169726573 && a2 == 0xE600000000000000;
  if (v6 || (sub_22DEC50E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79746E6172726177 && a2 == 0xEC00000068736148)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22DEC50E4();

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

uint64_t sub_22DE02C70(uint64_t a1)
{
  v2 = sub_22DE02E7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DE02CAC(uint64_t a1)
{
  v2 = sub_22DE02E7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WarrantyHashInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A10, &qword_22DEC6550);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DE02E7C();
  sub_22DEC51D4();
  v12 = 0;
  v8 = v10[3];
  sub_22DEC5084();
  if (!v8)
  {
    v11 = 1;
    sub_22DEC5084();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22DE02E7C()
{
  result = qword_27DA37A18;
  if (!qword_27DA37A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37A18);
  }

  return result;
}

uint64_t WarrantyHashInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A20, &qword_22DEC6558);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DE02E7C();
  sub_22DEC51C4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_22DEC5044();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_22DEC5044();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void __swiftcall UserInfo.init(iTunesAppleId:iTunesDSID:iTunesAltDSID:)(NDOAPI::UserInfo_optional *__return_ptr retstr, Swift::String iTunesAppleId, Swift::String iTunesDSID, Swift::String iTunesAltDSID)
{
  v4 = HIBYTE(iTunesAppleId._object) & 0xF;
  if ((iTunesAppleId._object & 0x2000000000000000) == 0)
  {
    v4 = iTunesAppleId._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    goto LABEL_10;
  }

  v5 = HIBYTE(iTunesDSID._object) & 0xF;
  if ((iTunesDSID._object & 0x2000000000000000) == 0)
  {
    v5 = iTunesDSID._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    goto LABEL_10;
  }

  v6 = HIBYTE(iTunesAltDSID._object) & 0xF;
  if ((iTunesAltDSID._object & 0x2000000000000000) == 0)
  {
    v6 = iTunesAltDSID._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
LABEL_10:
    retstr->value.iTunesAppleId = iTunesAppleId;
    retstr->value.iTunesDSID = iTunesDSID;
    retstr->value.iTunesAltDSID = iTunesAltDSID;
  }

  else
  {

    retstr->value.iTunesDSID = 0u;
    retstr->value.iTunesAltDSID = 0u;
    retstr->value.iTunesAppleId = 0u;
  }
}

__n128 RequestMetaData.init(requestID:requestEpoch:preferredLanguages:deviceLanguage:deviceRegion:deviceTimezone:closestCity:storefrontCountry:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  return result;
}

uint64_t sub_22DE031C4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v40 = *(v3 - 1);
  v4 = MEMORY[0x28223BE20](v3);
  v46 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = (&v33 - v6);
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[3];
  v33 = v1[2];
  v34 = v8;
  v11 = v1[4];
  v38 = v1[5];
  v39 = v10;
  v12 = v1[7];
  v44 = v1[6];
  v45 = v11;
  v13 = v1[8];
  v36 = v1[9];
  v37 = v12;
  v14 = v1[11];
  v42 = v1[10];
  v43 = v13;
  v35 = v14;
  v15 = v1[12];
  v16 = v1[13];
  v41 = v15;

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v18 = (a1 + v17[5]);
  *v18 = 0;
  v18[1] = 0;
  v19 = a1 + v17[6];
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v17[7];
  v21 = *(v40 + 56);
  v21(a1 + v20, 1, 1, v3);
  v22 = v33;
  *v18 = v34;
  v18[1] = v9;
  *v19 = v22;
  *(v19 + 8) = 0;
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v23 = (v7 + v3[6]);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v7 + v3[7]);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v7 + v3[8]);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v7 + v3[9]);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v7 + v3[10]);
  *v7 = v39;
  v28 = v38;
  *v23 = v45;
  v23[1] = v28;
  *v24 = v44;
  v24[1] = v37;
  v29 = v36;
  *v25 = v43;
  v25[1] = v29;
  v30 = v35;
  *v26 = v42;
  v26[1] = v30;
  *v27 = v41;
  v27[1] = v16;
  v31 = v46;
  sub_22DE061F4(v7, v46, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale);
  sub_22DDEF284(a1 + v20, &qword_27DA37AD8, &qword_22DECB040);
  sub_22DE0625C(v31, a1 + v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale);
  v21(a1 + v20, 0, 1, v3);
  return sub_22DE062C4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale);
}

__n128 NDORequestPayloadProvider.DataProviders.init(deviceInfoProvider:warrantyHashesProvider:displayedAlertsAndNotificationsIDsProvider:postedAppleCareFollowUpIDsProvider:postedMercuryFollowUpIDsProvider:userInfoProvider:requestMetaProvider:nextCheckInEpoch:configIdProvider:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __n128 a13, uint64_t a14)
{
  sub_22DDEDA18(a1, a9);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  *(a9 + 112) = a11;
  result = a13;
  *(a9 + 128) = a12;
  *(a9 + 144) = a13;
  *(a9 + 160) = a14;
  return result;
}

__n128 NDORequestPayloadProvider.__allocating_init(dataProviders:headersHelper:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = *(a1 + 144);
  *(v6 + 144) = *(a1 + 128);
  *(v6 + 160) = v7;
  v8 = *(a1 + 160);
  v9 = *(a1 + 80);
  *(v6 + 80) = *(a1 + 64);
  *(v6 + 96) = v9;
  v10 = *(a1 + 112);
  *(v6 + 112) = *(a1 + 96);
  *(v6 + 128) = v10;
  v11 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v11;
  result = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = result;
  *(v6 + 176) = v8;
  *(v6 + 184) = a2;
  *(v6 + 192) = a3;
  return result;
}

uint64_t NDORequestPayloadProvider.init(dataProviders:headersHelper:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 144);
  *(v3 + 144) = *(a1 + 128);
  *(v3 + 160) = v4;
  v5 = *(a1 + 160);
  v6 = *(a1 + 80);
  *(v3 + 80) = *(a1 + 64);
  *(v3 + 96) = v6;
  v7 = *(a1 + 112);
  *(v3 + 112) = *(a1 + 96);
  *(v3 + 128) = v7;
  v8 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v8;
  v9 = *(a1 + 48);
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = v9;
  *(v3 + 176) = v5;
  *(v3 + 184) = a2;
  *(v3 + 192) = a3;
  return v3;
}

uint64_t sub_22DE03604@<X0>(uint64_t a1@<X8>)
{
  (*(v1 + 136))(&v4);
  sub_22DE031C4(a1);
  return sub_22DE03678(&v4);
}

uint64_t sub_22DE036A8@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v71 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v74 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v12;
  *(a1 + 2) = v12;
  *(a1 + 3) = v12;
  *(a1 + 4) = v12;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v14 = *(v3 + 56);
  v68 = v13[10];
  v73 = v2;
  v72 = v3 + 56;
  v69 = v14;
  v15 = v14(&a1[v68], 1, 1, v2);
  v16 = &a1[v13[11]];
  *v16 = 0;
  v67 = v16;
  v16[8] = 1;
  v17 = &a1[v13[12]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &a1[v13[13]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v70 = v18;
  *v17 = 0xD000000000000012;
  *(v17 + 1) = 0x800000022DED17F0;
  v19 = (*(v76 + 56))(v15);
  v20 = *(v19 + 16);
  v75 = a1;
  if (v20)
  {
    v66 = v6;
    *&v77 = v12;
    sub_22DE047A0(0, v20, 0);
    v12 = v77;
    v65 = v19;
    v21 = (v19 + 56);
    do
    {
      v23 = *(v21 - 3);
      v22 = *(v21 - 2);
      v25 = *(v21 - 1);
      v24 = *v21;

      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      v26 = &v11[*(v8 + 20)];
      *v26 = 0;
      *(v26 + 1) = 0;
      v27 = &v11[*(v8 + 24)];
      *v26 = v23;
      *(v26 + 1) = v22;
      *v27 = v25;
      *(v27 + 1) = v24;
      *&v77 = v12;
      v29 = *(v12 + 16);
      v28 = *(v12 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_22DE047A0((v28 > 1), v29 + 1, 1);
        v12 = v77;
      }

      *(v12 + 16) = v29 + 1;
      sub_22DE0625C(v11, v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v29, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey);
      v21 += 4;
      --v20;
    }

    while (v20);

    a1 = v75;
    v6 = v66;
  }

  else
  {
  }

  *a1 = v12;
  v30 = v76;
  v31 = *(v76 + 40);
  v32 = *(v76 + 48);
  __swift_project_boxed_opaque_existential_1((v76 + 16), v31);
  v33 = (*(v32 + 8))(v31, v32);
  v34 = *(v33 + 16);
  v35 = v74;
  if (v34)
  {
    v84 = MEMORY[0x277D84F90];
    sub_22DE0475C(0, v34, 0);
    v36 = 32;
    v37 = v84;
    do
    {
      v38 = *(v33 + v36 + 80);
      v81 = *(v33 + v36 + 64);
      v82 = v38;
      v83[0] = *(v33 + v36 + 96);
      *(v83 + 10) = *(v33 + v36 + 106);
      v39 = *(v33 + v36 + 16);
      v77 = *(v33 + v36);
      v78 = v39;
      v40 = *(v33 + v36 + 48);
      v79 = *(v33 + v36 + 32);
      v80 = v40;
      sub_22DE02908(v35);
      v84 = v37;
      v41 = v35;
      v43 = *(v37 + 16);
      v42 = *(v37 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_22DE0475C((v42 > 1), v43 + 1, 1);
        v37 = v84;
      }

      *(v37 + 16) = v43 + 1;
      sub_22DE0625C(v41, v37 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v43, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData);
      v36 += 128;
      --v34;
      v35 = v41;
    }

    while (v34);

    a1 = v75;
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  *(a1 + 1) = v37;
  v45 = (*(v30 + 72))(v44);
  *(a1 + 4) = v45;
  v46 = (*(v30 + 88))(v45);
  *(a1 + 2) = v46;
  v47 = (*(v30 + 104))(v46);
  *(a1 + 3) = v47;
  v48 = (*(v30 + 152))(v47);
  if ((v49 & 1) == 0)
  {
    v50 = v67;
    *v67 = v48;
    *(v50 + 8) = 0;
  }

  v51 = (*(v30 + 120))(&v77, v48);
  v52 = *(&v77 + 1);
  if (*(&v77 + 1))
  {
    v53 = v79;
    v54 = v78;
    v55 = v77;

    v56 = v71;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    sub_22DE047E4(v55, v52, v54, *(&v54 + 1), v53, *(&v53 + 1));
    v57 = v73;
    v58 = (v56 + *(v73 + 20));
    *v58 = 0;
    v58[1] = 0;
    v59 = (v56 + *(v57 + 24));
    *v59 = 0;
    v59[1] = 0;
    v60 = (v56 + *(v57 + 28));
    *v58 = v54;
    *v60 = v53;
    *v59 = v55;
    v59[1] = v52;
    v61 = v68;
    sub_22DDEF284(&a1[v68], &qword_27DA37A28, &unk_22DEC6560);
    sub_22DE0625C(v56, &a1[v61], type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData);
    v51 = v69(&a1[v61], 0, 1, v57);
  }

  result = (*(v30 + 168))(v51);
  if (v63)
  {
    v64 = v70;
    *v70 = result;
    *(v64 + 1) = v63;
  }

  return result;
}

uint64_t sub_22DE03D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a7;
  v60 = a6;
  v70 = a5;
  v59 = a4;
  v66 = a3;
  v69 = a2;
  v58 = a1;
  v84 = sub_22DEC4904();
  v75 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v74 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A30, &qword_22DECCFC0);
  MEMORY[0x28223BE20](v9 - 8);
  v73 = &v57 - v10;
  v72 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  v71 = *(v72 - 8);
  v11 = MEMORY[0x28223BE20](v72);
  v67 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = (&v57 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v15 - 8);
  v64 = &v57 - v16;
  v63 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v57 - v19;
  v21 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v65 = v25;
  v28 = *(v25 + 20);
  if (qword_27DA37880 != -1)
  {
    swift_once();
  }

  *&v27[v28] = qword_27DA38BE8;

  v29 = v7;
  sub_22DE036A8(v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *&v27[v28];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
    swift_allocObject();
    v31 = sub_22DE84CE8(v31);
    *&v27[v28] = v31;
  }

  sub_22DE0625C(v24, v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  (*(v22 + 56))(v20, 0, 1, v21);
  v32 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0208(v20, v31 + v32, &qword_27DA37A40, &unk_22DEC7330);
  v33 = swift_endAccess();
  (*(v29 + 136))(v83, v33);
  v80 = v83[4];
  v81 = v83[5];
  v82 = v83[6];
  v76 = v83[0];
  v77 = v83[1];
  v79 = v83[3];
  v78 = v83[2];
  v34 = v61;
  sub_22DE031C4(v61);
  sub_22DE03678(v83);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *&v27[v28];
  if ((v35 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
    swift_allocObject();
    v36 = sub_22DE84CE8(v36);
    *&v27[v28] = v36;
  }

  v37 = v72;
  v38 = v69;
  v39 = v34;
  v40 = v64;
  sub_22DE0625C(v39, v64, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  (*(v62 + 56))(v40, 0, 1, v63);
  v41 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0208(v40, v36 + v41, &qword_27DA37A38, &unk_22DEC6570);
  swift_endAccess();
  v42 = MEMORY[0x277D84F90];
  *v14 = MEMORY[0x277D84F90];
  sub_22DE0501C(v42);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v43 = (v14 + *(v37 + 28));
  *v43 = 0;
  v43[1] = 0;
  v44 = (v14 + *(v37 + 32));
  *v44 = 0;
  v44[1] = 0;
  v45 = v66;

  v14[1] = v45;
  if (v38)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A50, &qword_22DEC6580);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_22DEC5F50;
    *(v46 + 32) = v58;
    *(v46 + 40) = v38;
    *v14 = v46;
  }

  v47 = v70;
  v48 = v67;
  if (v70)
  {
    *v43 = v59;
    v43[1] = v47;
  }

  v49 = v68;
  if (v68)
  {
    *v44 = v60;
    v44[1] = v49;
  }

  sub_22DE061F4(v14, v48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *&v27[v28];
  v52 = v74;
  if ((v50 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
    swift_allocObject();
    v51 = sub_22DE84CE8(v51);
    *&v27[v28] = v51;
  }

  v53 = v73;
  sub_22DE0625C(v48, v73, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  (*(v71 + 56))(v53, 0, 1, v37);
  v54 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0208(v53, v51 + v54, &qword_27DA37A30, &qword_22DECCFC0);
  swift_endAccess();
  sub_22DEC48F4();
  sub_22DE05130();
  v55 = sub_22DEC4A04();
  (*(v75 + 8))(v52, v84);
  sub_22DE062C4(v27, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest);
  sub_22DE062C4(v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  return v55;
}

uint64_t NDORequestPayloadProvider.deinit()
{
  sub_22DE05188(v0 + 16);

  return v0;
}

uint64_t NDORequestPayloadProvider.__deallocating_deinit()
{
  sub_22DE05188(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 200, 7);
}

uint64_t sub_22DE0469C@<X0>(uint64_t a1@<X8>)
{
  (*(*v1 + 136))(&v4);
  sub_22DE031C4(a1);
  return sub_22DE03678(&v4);
}

void *sub_22DE0475C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE04A08(a1, a2, a3, *v3, &qword_27DA37AC8, &qword_22DEC6AC8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData);
  *v3 = result;
  return result;
}

void *sub_22DE047A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE04A08(a1, a2, a3, *v3, &qword_27DA37AD0, &unk_22DEC6AD0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey);
  *v3 = result;
  return result;
}

void sub_22DE047E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

char *sub_22DE04834(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE048FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22DE04854(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE04A08(a1, a2, a3, *v3, &qword_27DA37AB0, &qword_22DEC6AB0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
  *v3 = result;
  return result;
}

void *sub_22DE04898(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE04A08(a1, a2, a3, *v3, &qword_27DA37A88, &qword_22DEC6A80, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
  *v3 = result;
  return result;
}

char *sub_22DE048DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE04BE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22DE048FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AB8, &qword_22DEC6AB8);
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

void *sub_22DE04A08(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

char *sub_22DE04BE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A50, &qword_22DEC6580);
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

unint64_t sub_22DE04CF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A90, &qword_22DEC6A88);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37990, &qword_22DEC6A90);
    v7 = sub_22DEC4FF4();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22DDF0028(v9, v5, &qword_27DA37A90, &qword_22DEC6A88);
      result = sub_22DE1015C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_22DEC4764();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 48 * v13);
      v17 = *(v8 + 1);
      v18 = *(v8 + 2);
      *v16 = *v8;
      v16[1] = v17;
      v16[2] = v18;
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

unint64_t sub_22DE04EEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AE0, &unk_22DEC6AE0);
    v3 = sub_22DEC4FF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_22DDF0028(v4, &v13, &qword_27DA379F0, &unk_22DEC6530);
      v5 = v13;
      v6 = v14;
      result = sub_22DE100E4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22DE06324(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_22DE0501C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AC0, &qword_22DEC6AC0);
    v3 = sub_22DEC4FF4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_22DE100E4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_22DE05130()
{
  result = qword_27DA37A48;
  if (!qword_27DA37A48)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37A48);
  }

  return result;
}

__n128 __swift_memcpy122_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_22DE051E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 122))
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

uint64_t sub_22DE0522C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 122) = 1;
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

    *(result + 122) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}