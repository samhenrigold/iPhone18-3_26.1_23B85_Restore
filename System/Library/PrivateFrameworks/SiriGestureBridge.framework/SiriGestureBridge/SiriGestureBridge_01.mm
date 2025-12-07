void sub_266E3E68C(void *a1, uint64_t a2, void *a3)
{
  v27 = a1;
  v4 = sub_266E4642C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_266E4646C();
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  v12 = objc_opt_self();
  v13 = a3;
  v14 = [v12 currentQueue];
  v15 = [v14 underlyingQueue];

  if (v15 && (sub_266E408CC(0, &qword_281320A48, 0x277D85C78), v16 = v27, v17 = sub_266E4666C(), v16, v15, (v17 & 1) != 0))
  {
    v18 = *&v13[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_hgManager];
    if (v18)
    {
      v19 = v18;
      v27 = sub_266E45BBC();

      AFIsInternalInstall();
      sub_266E45B3C();

      v20 = v27;
    }

    else
    {
    }
  }

  else
  {
    v21 = swift_allocObject();
    *(v21 + 16) = sub_266E4090C;
    *(v21 + 24) = v11;
    aBlock[4] = sub_266E40A50;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_266E3A218;
    aBlock[3] = &block_descriptor_213;
    v22 = _Block_copy(aBlock);

    sub_266E4643C();
    v28 = MEMORY[0x277D84F90];
    sub_266E40994(&qword_281320A80, MEMORY[0x277D85198]);
    v25 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82A8, &unk_266E47880);
    v24 = v13;
    sub_266E409D8(&unk_281320A70, &qword_2800E82A8, &unk_266E47880);
    sub_266E466CC();
    MEMORY[0x26D5F42C0](0, v10, v7, v22);
    _Block_release(v22);
    (*(v5 + 8))(v7, v4);
    (*(v26 + 8))(v10, v8);
  }
}

uint64_t sub_266E3EAD4(void *a1, uint64_t a2, void *a3)
{
  v26 = a1;
  v4 = sub_266E4642C();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_266E4646C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  v12 = objc_opt_self();
  v25 = a3;
  v13 = [v12 currentQueue];
  v14 = [v13 underlyingQueue];

  if (v14 && (sub_266E408CC(0, &qword_281320A48, 0x277D85C78), v15 = v26, v16 = sub_266E4666C(), v15, v14, (v16 & 1) != 0))
  {
    v17 = v25;
    sub_266E3B058();
  }

  else
  {
    v19 = swift_allocObject();
    *(v19 + 16) = sub_266E40860;
    *(v19 + 24) = v11;
    aBlock[4] = sub_266E40A50;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_266E3A218;
    aBlock[3] = &block_descriptor_155;
    v20 = _Block_copy(aBlock);

    v21 = v10;
    sub_266E4643C();
    v27 = MEMORY[0x277D84F90];
    sub_266E40994(&qword_281320A80, MEMORY[0x277D85198]);
    v22 = v24;
    v23[0] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82A8, &unk_266E47880);
    v23[1] = v11;
    sub_266E409D8(&unk_281320A70, &qword_2800E82A8, &unk_266E47880);
    sub_266E466CC();
    MEMORY[0x26D5F42C0](0, v21, v6, v20);
    _Block_release(v20);
    (*(v22 + 8))(v6, v4);
    (*(v8 + 8))(v21, v23[0]);
  }
}

void sub_266E3EEBC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v27 = a1;
  v6 = sub_266E4642C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_266E4646C();
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = v4;
  v14 = objc_opt_self();
  v26 = a3;
  v15 = [v14 currentQueue];
  v16 = [v15 underlyingQueue];

  if (v16 && (sub_266E408CC(0, &qword_281320A48, 0x277D85C78), v17 = v27, v18 = sub_266E4666C(), v17, v16, (v18 & 1) != 0))
  {
    v19 = v26;
    v20 = sub_266E45BBC();
    v27 = sub_266E45B2C();

    sub_266E45B8C();

    v21 = v27;
  }

  else
  {
    v24[1] = v13;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_266E40854;
    *(v22 + 24) = v13;
    aBlock[4] = sub_266E40A50;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_266E3A218;
    aBlock[3] = &block_descriptor_145;
    v23 = _Block_copy(aBlock);

    sub_266E4643C();
    v28 = MEMORY[0x277D84F90];
    sub_266E40994(&qword_281320A80, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82A8, &unk_266E47880);
    sub_266E409D8(&unk_281320A70, &qword_2800E82A8, &unk_266E47880);
    sub_266E466CC();
    MEMORY[0x26D5F42C0](0, v12, v9, v23);
    _Block_release(v23);
    (*(v7 + 8))(v9, v6);
    (*(v25 + 8))(v12, v10);
  }
}

uint64_t sub_266E3F2C8(void *a1, uint64_t a2, void *a3, char a4)
{
  v26 = a1;
  v6 = sub_266E4642C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_266E4646C();
  v24 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v14 = objc_opt_self();
  v25 = a3;
  v15 = [v14 currentQueue];
  v16 = [v15 underlyingQueue];

  if (v16 && (sub_266E408CC(0, &qword_281320A48, 0x277D85C78), v17 = v26, v18 = sub_266E4666C(), v17, v16, (v18 & 1) != 0))
  {
    v19 = v25;
    sub_266E3A41C(v25, a4);
  }

  else
  {
    v23[1] = v13;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_266E40868;
    *(v21 + 24) = v13;
    aBlock[4] = sub_266E40A50;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_266E3A218;
    aBlock[3] = &block_descriptor_165;
    v22 = _Block_copy(aBlock);

    sub_266E4643C();
    v27 = MEMORY[0x277D84F90];
    sub_266E40994(&qword_281320A80, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82A8, &unk_266E47880);
    sub_266E409D8(&unk_281320A70, &qword_2800E82A8, &unk_266E47880);
    sub_266E466CC();
    MEMORY[0x26D5F42C0](0, v12, v9, v22);
    _Block_release(v22);
    (*(v7 + 8))(v9, v6);
    (*(v24 + 8))(v12, v10);
  }
}

void sub_266E3F6B4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v30 = a1;
  v6 = sub_266E4642C();
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_266E4646C();
  v28 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v13 = objc_opt_self();
  v29 = a3;
  v14 = a4;
  v15 = [v13 currentQueue];
  v16 = [v15 underlyingQueue];

  if (v16 && (sub_266E408CC(0, &qword_281320A48, 0x277D85C78), v17 = v30, v18 = sub_266E4666C(), v17, v16, (v18 & 1) != 0))
  {
    v19 = v29;
    sub_266E399DC(v29);
  }

  else
  {
    v20 = swift_allocObject();
    *(v20 + 16) = sub_266E4087C;
    *(v20 + 24) = v12;
    aBlock[4] = sub_266E40A50;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_266E3A218;
    aBlock[3] = &block_descriptor_178;
    v21 = _Block_copy(aBlock);

    v22 = v11;
    sub_266E4643C();
    v31 = MEMORY[0x277D84F90];
    sub_266E40994(&qword_281320A80, MEMORY[0x277D85198]);
    v26 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82A8, &unk_266E47880);
    v23 = v27;
    v25 = v9;
    sub_266E409D8(&unk_281320A70, &qword_2800E82A8, &unk_266E47880);
    sub_266E466CC();
    MEMORY[0x26D5F42C0](0, v22, v8, v21);
    _Block_release(v21);
    (*(v23 + 8))(v8, v6);
    (*(v28 + 8))(v22, v25);
  }
}

void sub_266E3FA88(void *a1, uint64_t a2, char a3, void *a4, void *a5)
{
  v32 = a1;
  v8 = sub_266E4642C();
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_266E4646C();
  v29 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = a5;
  v15 = objc_opt_self();
  v30 = a4;
  v31 = a5;
  v16 = [v15 currentQueue];
  v17 = [v16 underlyingQueue];

  if (v17 && (sub_266E408CC(0, &qword_281320A48, 0x277D85C78), v18 = v32, v19 = sub_266E4666C(), v18, v17, (v19 & 1) != 0))
  {
    v21 = v30;
    v20 = v31;
    sub_266E3D834(a3 & 1, v30, v31);
  }

  else
  {
    v22 = swift_allocObject();
    *(v22 + 16) = sub_266E406C8;
    *(v22 + 24) = v14;
    aBlock[4] = sub_266E40A50;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_266E3A218;
    aBlock[3] = &block_descriptor_127;
    v23 = _Block_copy(aBlock);

    v24 = v13;
    sub_266E4643C();
    v33 = MEMORY[0x277D84F90];
    sub_266E40994(&qword_281320A80, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82A8, &unk_266E47880);
    v25 = v28;
    v27 = v11;
    sub_266E409D8(&unk_281320A70, &qword_2800E82A8, &unk_266E47880);
    sub_266E466CC();
    MEMORY[0x26D5F42C0](0, v24, v10, v23);
    _Block_release(v23);
    (*(v25 + 8))(v10, v8);
    (*(v29 + 8))(v24, v27);

    v20 = v31;
  }
}

void sub_266E3FE6C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v24 = v4;
  v5 = sub_266E4642C();
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v23 = sub_266E4646C();
  OUTLINED_FUNCTION_5();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  v18 = [objc_opt_self() currentQueue];
  v19 = [v18 underlyingQueue];

  if (v19 && (sub_266E408CC(0, &qword_281320A48, 0x277D85C78), v20 = v24, OUTLINED_FUNCTION_75(), v21 = sub_266E4666C(), v20, v19, (v21 & 1) != 0))
  {
    v3();
  }

  else
  {
    v22 = swift_allocObject();
    *(v22 + 16) = v3;
    *(v22 + 24) = v1;
    v25[4] = sub_266E405F4;
    v25[5] = v22;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 1107296256;
    v25[2] = sub_266E3A218;
    v25[3] = &block_descriptor;
    _Block_copy(v25);
    OUTLINED_FUNCTION_74();

    sub_266E4643C();
    sub_266E40994(&qword_281320A80, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82A8, &unk_266E47880);
    sub_266E409D8(&unk_281320A70, &qword_2800E82A8, &unk_266E47880);
    sub_266E466CC();
    MEMORY[0x26D5F42C0](0, v17, v11, v3);
    _Block_release(v3);
    (*(v7 + 8))(v11, v5);
    (*(v13 + 8))(v17, v23);
  }

  OUTLINED_FUNCTION_32();
}

id sub_266E401C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GestureController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GestureController(uint64_t a1)
{
  result = qword_281320ED8;
  if (!qword_281320ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266E4038C(uint64_t a1)
{
  sub_266E405A4(319, qword_281320C88, type metadata accessor for GestureMapping);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EventDeduper(319);
    if (v2 <= 0x3F)
    {
      sub_266E405A4(319, &qword_281320F00, MEMORY[0x277D5CE58]);
      if (v3 <= 0x3F)
      {
        sub_266E405A4(319, &qword_281320F18, MEMORY[0x277CC95F0]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_266E405A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_72();
    v4 = sub_266E4668C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_266E40634(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v10 = sub_266E4650C();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithName:v10 options:a3 queue:a4 delegate:a5];

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_266E406F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GestureMapping(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E4075C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GestureMapping(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_266E407C0()
{
  v1 = *(type metadata accessor for GestureMapping(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = (v3 + *(v1 + 64));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];

  sub_266E3B91C(v2, v3, v5, v6, v7, v8);
}

uint64_t sub_266E40894(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_266E408BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_266E408CC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_266E4093C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_266E40994(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_72();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266E409D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_33_0@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(result + 4) = a2;
  *(result + 8) = 1024;
  return result;
}

void OUTLINED_FUNCTION_48(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_61()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_66@<X0>(uint64_t result@<X0>, __int16 a2@<W8>)
{
  *(result + 10) = v2;
  *(result + 14) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_70()
{
}

void OUTLINED_FUNCTION_86(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_87()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_88()
{
}

uint64_t OUTLINED_FUNCTION_89()
{
}

uint64_t OUTLINED_FUNCTION_90(uint64_t a1, uint64_t a2)
{

  return sub_266E4615C();
}

uint64_t OUTLINED_FUNCTION_91()
{

  return MEMORY[0x28211CB18](v0);
}

BOOL sub_266E40C5C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v12 = *v6;

    v9 = a1(&v12);
    if (v3)
    {

      return v7 != 0;
    }

    v10 = v9;

    ++v6;
  }

  while ((v10 & 1) == 0);
  return v7 != 0;
}

uint64_t sub_266E40D10(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_266E45AEC();
  OUTLINED_FUNCTION_17_2(v6);
  v7 = (v2 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_currentAssistantId);
  *v7 = 0;
  v7[1] = 0;
  v8 = sub_266E4629C();
  OUTLINED_FUNCTION_17_2(v8);
  v9 = type metadata accessor for GestureResponse(0);
  OUTLINED_FUNCTION_17_2(v9);
  v10 = (v2 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureRequestId);
  *v10 = 0;
  v10[1] = 0;
  if (qword_281320A88 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_281320A88);
  }

  v11 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v11, qword_281320F28);
  v12 = sub_266E463FC();
  v13 = sub_266E465BC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_26();
    *v14 = 0;
    _os_log_impl(&dword_266E28000, v12, v13, "Initializing gesture output submitter", v14, 2u);
    OUTLINED_FUNCTION_14_0();
  }

  sub_266E2CE9C(a1, v3 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_messagePublisher);
  *(v3 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_serviceHelper) = a2;
  return v3;
}

void sub_266E40E58()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = type metadata accessor for GestureResponse(0);
  v3 = OUTLINED_FUNCTION_12(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  if (qword_281320A88 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_281320A88);
  }

  v7 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v7, qword_281320F28);
  sub_266E44528(v1, v6);
  v8 = sub_266E463FC();
  v9 = sub_266E465BC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_21();
    v11 = OUTLINED_FUNCTION_23_0();
    v16 = v11;
    *v10 = 136315138;
    v12 = sub_266E3662C();
    v14 = v13;
    sub_266E442A0(v6);
    v15 = sub_266E2B0EC(v12, v14, &v16);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_266E28000, v8, v9, "Gesture response received: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_14_0();
  }

  else
  {

    sub_266E442A0(v6);
  }

  sub_266E410A0(v1);
  OUTLINED_FUNCTION_32();
}

void sub_266E40FE0()
{
  if (qword_281320A88 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_281320A88);
  }

  v1 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v1, qword_281320F28);
  oslog = sub_266E463FC();
  sub_266E465CC();
  OUTLINED_FUNCTION_35_1();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = OUTLINED_FUNCTION_26();
    *v3 = 0;
    _os_log_impl(&dword_266E28000, oslog, v0, "‼️ Gesture controller error", v3, 2u);
    OUTLINED_FUNCTION_14_0();
  }
}

void sub_266E410A0(uint64_t *a1)
{
  v1 = *a1;
  if (qword_281320A88 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_281320A88);
  }

  v2 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v2, qword_281320F28);
  v3 = sub_266E463FC();
  v4 = sub_266E465BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_21();
    v6 = OUTLINED_FUNCTION_23_0();
    v21 = v6;
    *v5 = 136315138;
    v7 = sub_266E352EC(v1);
    v9 = sub_266E2B0EC(v7, v8, &v21);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_266E28000, v3, v4, "🫡 Handling user intent: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_14_0();
  }

  if ((v1 - 1) >= 2)
  {
    if (v1 == 4)
    {
      OUTLINED_FUNCTION_62();

      sub_266E412D0();
    }

    else
    {
      oslog = sub_266E463FC();
      v12 = sub_266E465CC();
      if (os_log_type_enabled(oslog, v12))
      {
        v13 = OUTLINED_FUNCTION_21();
        v14 = OUTLINED_FUNCTION_23_0();
        v21 = v14;
        *v13 = 136315138;
        v15 = sub_266E352EC(v1);
        v17 = sub_266E2B0EC(v15, v16, &v21);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_266E28000, oslog, v12, "‼️ Unsupported user intent: %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v14);
        OUTLINED_FUNCTION_14_0();
        OUTLINED_FUNCTION_14_0();
      }

      OUTLINED_FUNCTION_62();
    }
  }

  else
  {
    OUTLINED_FUNCTION_62();

    sub_266E413DC();
  }
}

id sub_266E412D0()
{
  v1 = v0;
  if (qword_281320A88 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_281320A88);
  }

  v2 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v2, qword_281320F28);
  v3 = sub_266E463FC();
  v4 = sub_266E465BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_26();
    *v5 = 0;
    _os_log_impl(&dword_266E28000, v3, v4, "🙅‍♀️ Dismissing Siri", v5, 2u);
    OUTLINED_FUNCTION_14_0();
  }

  v6 = *(v1 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_serviceHelper);
  result = [v6 respondsToSelector_];
  if (result)
  {

    return [v6 deactivateCurrentAnnouncementRequestForReason_];
  }

  return result;
}

void sub_266E413DC()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for GestureResponse(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83A8, &qword_266E479C8);
  OUTLINED_FUNCTION_12(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_2();
  v12 = *v4;
  if ((*v4 - 1) >= 2)
  {
    if (qword_281320A88 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_281320A88);
    }

    v42 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v42, qword_281320F28);
    v54 = sub_266E463FC();
    sub_266E465CC();
    OUTLINED_FUNCTION_35_1();
    if (os_log_type_enabled(v54, v43))
    {
      v44 = OUTLINED_FUNCTION_21();
      v45 = OUTLINED_FUNCTION_23_0();
      v55[0] = v45;
      *v44 = 136315138;
      v46 = sub_266E352EC(v12);
      v48 = sub_266E2B0EC(v46, v47, v55);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_266E28000, v54, v9, "‼️ Can't produce payload for unsupported user intent: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_14_0();

LABEL_17:
      OUTLINED_FUNCTION_32();
      return;
    }

    OUTLINED_FUNCTION_32();
  }

  else
  {
    v13 = sub_266E45AFC();
    v15 = v14;
    sub_266E44418();

    v16 = sub_266E41900(v13, v15);
    v17 = objc_opt_self();
    v18 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
    v53 = v16;
    v19 = [v17 runSiriKitExecutorCommandWithContext:v18 payload:v16];

    v52 = v19;
    v20 = [v17 wrapCommandInStartLocalRequest_];
    v21 = [objc_allocWithZone(MEMORY[0x277CEF378]) init];
    [v21 setActivationEvent_];
    [v21 setStartLocalRequest_];
    v22 = *(v2 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_serviceHelper);
    if ([v22 respondsToSelector_])
    {
      [v22 submitExternalActivationRequest:v21 completion:0];
    }

    v23 = v20;
    v24 = sub_266E444B8(v23);
    v25 = (v2 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureRequestId);
    *v25 = v24;
    v25[1] = v26;

    v51 = sub_266E444B8(v23);
    if (v27)
    {
      v28 = v27;

      sub_266E44528(v4, v1);
      OUTLINED_FUNCTION_13();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v5);
      v32 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureResponse;
      swift_beginAccess();
      sub_266E441CC(v1, v2 + v32);
      swift_endAccess();
      if (qword_281320A88 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_281320A88);
      }

      v33 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v33, qword_281320F28);
      sub_266E44528(v4, v9);

      v34 = sub_266E463FC();
      v35 = sub_266E465BC();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v55[0] = swift_slowAlloc();
        *v36 = 136315394;
        v37 = sub_266E2B0EC(v51, v28, v55);

        *(v36 + 4) = v37;
        *(v36 + 12) = 2080;
        v38 = sub_266E3662C();
        v40 = v39;
        sub_266E442A0(v9);
        v41 = sub_266E2B0EC(v38, v40, v55);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_266E28000, v34, v35, "Pending: Gesture requestId: %s, Gesture response: %s", v36, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_14_0();
        OUTLINED_FUNCTION_14_0();
      }

      else
      {

        sub_266E442A0(v9);
      }

      goto LABEL_17;
    }

    __break(1u);
  }
}

id sub_266E41900(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_266E4650C();

  v4 = [v2 initWithIdentifier_];

  return v4;
}

void sub_266E41974()
{
  OUTLINED_FUNCTION_31();
  v115 = v3;
  v116 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83B0, &unk_266E479D0);
  OUTLINED_FUNCTION_12(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_31_1();
  v117 = v7;
  OUTLINED_FUNCTION_55();
  v118 = sub_266E4621C();
  OUTLINED_FUNCTION_5();
  v125 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v124 = v10;
  OUTLINED_FUNCTION_55();
  v122 = sub_266E4622C();
  OUTLINED_FUNCTION_5();
  v128 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v114 = v13;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83B8, &unk_266E47A70);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_31_1();
  v121 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83C0, &unk_266E479E0);
  v17 = OUTLINED_FUNCTION_12(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_1();
  v119 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_33_1();
  v21 = MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_30_1(v21, v22, v23, v24, v25, v26, v27, v28, v111);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
  OUTLINED_FUNCTION_12(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v30);
  v31 = OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_5();
  v126 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_0();
  v123 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83A8, &qword_266E479C8);
  OUTLINED_FUNCTION_12(v35);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_20_2();
  v37 = type metadata accessor for GestureResponse(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_8();
  v41 = v40 - v39;
  v42 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureResponse;
  OUTLINED_FUNCTION_38();
  sub_266E4436C(v0 + v42, v2, &qword_2800E83A8, &qword_266E479C8);
  if (__swift_getEnumTagSinglePayload(v2, 1, v37) != 1)
  {
    v112 = v0;
    sub_266E4423C(v2, v41);
    sub_266E4436C(v41 + *(v37 + 28), v0, &qword_2800E81E8, &unk_266E474D0);
    v49 = OUTLINED_FUNCTION_29_0();
    v51 = v41;
    v113 = v31;
    if (__swift_getEnumTagSinglePayload(v49, v50, v31) == 1)
    {
      sub_266E2BE40(v0, &qword_2800E81E8, &unk_266E474D0);
      if (qword_281320A88 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_281320A88);
      }

      v52 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v52, qword_281320F28);
      v53 = sub_266E463FC();
      v54 = sub_266E465CC();
      if (OUTLINED_FUNCTION_23(v54))
      {
        v55 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_30_0(v55);
        OUTLINED_FUNCTION_8_0(&dword_266E28000, v56, v57, "‼️ Unable to find promptInfo associated with the gesture input.");
        OUTLINED_FUNCTION_11_0();
      }

      goto LABEL_37;
    }

    v58 = v126;
    v59 = v123;
    (*(v126 + 32))(v123, v0, v113);
    sub_266E4613C();
    (*(v128 + 104))(v1, *MEMORY[0x277D5CFB0], v122);
    OUTLINED_FUNCTION_13();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v122);
    v63 = *(v120 + 48);
    sub_266E4436C(v127, v121, &qword_2800E83C0, &unk_266E479E0);
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_7_1(v121);
    if (v66)
    {
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_21_2(v127);
      OUTLINED_FUNCTION_7_1(v121 + v63);
      v65 = v124;
      v64 = v125;
      if (v66)
      {
        sub_266E2BE40(v121, &qword_2800E83C0, &unk_266E479E0);
LABEL_30:
        if (qword_281320A88 != -1)
        {
          OUTLINED_FUNCTION_0_1(&qword_281320A88);
        }

        v101 = sub_266E4640C();
        OUTLINED_FUNCTION_17_0(v101, qword_281320F28);
        v74 = sub_266E463FC();
        v102 = sub_266E465BC();
        if (!OUTLINED_FUNCTION_23(v102))
        {
          goto LABEL_35;
        }

        v103 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_30_0(v103);
        v79 = "‼️ Gesture response is for IFGestureBasedCandidateMessage";
        goto LABEL_34;
      }
    }

    else
    {
      sub_266E4436C(v121, v119, &qword_2800E83C0, &unk_266E479E0);
      OUTLINED_FUNCTION_7_1(v121 + v63);
      v65 = v124;
      if (!v66)
      {
        OUTLINED_FUNCTION_28_1();
        v87(v114);
        v88 = sub_266E44314();
        HIDWORD(v111) = OUTLINED_FUNCTION_25_0(v88);
        v120 = v51;
        v89 = off_2800E83C8;
        v90 = OUTLINED_FUNCTION_67();
        v89(v90);
        OUTLINED_FUNCTION_14_1();
        sub_266E2BE40(v91, v92, v93);
        OUTLINED_FUNCTION_14_1();
        sub_266E2BE40(v94, v95, v96);
        (v89)(v119, v122);
        v65 = v124;
        v59 = v123;
        OUTLINED_FUNCTION_14_1();
        v100 = sub_266E2BE40(v97, v98, v99);
        v64 = v125;
        if ((v111 & 0x100000000) != 0)
        {
          goto LABEL_30;
        }

LABEL_22:
        MEMORY[0x28223BE20](v100);
        *(&v111 - 2) = v51;
        v69 = v117;
        sub_266E461DC();
        v70 = OUTLINED_FUNCTION_29_0();
        v71 = v118;
        if (__swift_getEnumTagSinglePayload(v70, v72, v118) != 1)
        {
          v120 = v51;
          OUTLINED_FUNCTION_14_1();
          v81 = v80();
          MEMORY[0x28223BE20](v81);
          v83 = v115;
          v82 = v116;
          *(&v111 - 6) = v112;
          *(&v111 - 5) = v83;
          *(&v111 - 4) = v82;
          *(&v111 - 3) = v65;
          *(&v111 - 2) = v59;
          objc_allocWithZone(sub_266E45FDC());
          v84 = sub_266E45F4C();
          if (v84)
          {
            v85 = v84;
            sub_266E4278C(v84);

            (*(v64 + 8))(v65, v71);
            (*(v58 + 8))(v59, v113);
            v86 = v120;
LABEL_38:
            sub_266E442A0(v86);
            goto LABEL_39;
          }

          if (qword_281320AA0 != -1)
          {
            OUTLINED_FUNCTION_3_0(&qword_281320AA0);
          }

          v104 = sub_266E4640C();
          OUTLINED_FUNCTION_17_0(v104, qword_281320F58);
          v105 = sub_266E463FC();
          v106 = sub_266E465CC();
          v107 = OUTLINED_FUNCTION_23(v106);
          v51 = v120;
          if (v107)
          {
            v108 = OUTLINED_FUNCTION_26();
            OUTLINED_FUNCTION_30_0(v108);
            OUTLINED_FUNCTION_8_0(&dword_266E28000, v109, v110, "GestureBasedResultCandidateMessage could not be created.");
            OUTLINED_FUNCTION_11_0();
          }

          (*(v64 + 8))(v65, v71);
          goto LABEL_36;
        }

        sub_266E2BE40(v69, &qword_2800E83B0, &unk_266E479D0);
        if (qword_281320A88 != -1)
        {
          OUTLINED_FUNCTION_0_1(&qword_281320A88);
        }

        v73 = sub_266E4640C();
        OUTLINED_FUNCTION_17_0(v73, qword_281320F28);
        v74 = sub_266E463FC();
        v75 = sub_266E465CC();
        if (!OUTLINED_FUNCTION_23(v75))
        {
LABEL_35:

LABEL_36:
          (*(v58 + 8))(v59, v113);
LABEL_37:
          v86 = v51;
          goto LABEL_38;
        }

        v76 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_30_0(v76);
        v79 = "‼️ Unable to create gestureInput.";
LABEL_34:
        OUTLINED_FUNCTION_8_0(&dword_266E28000, v77, v78, v79);
        OUTLINED_FUNCTION_11_0();
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_21_2(v127);
      v67 = OUTLINED_FUNCTION_67();
      v68(v67);
      v64 = v125;
    }

    v100 = sub_266E2BE40(v121, &qword_2800E83B8, &unk_266E47A70);
    goto LABEL_22;
  }

  sub_266E2BE40(v2, &qword_2800E83A8, &qword_266E479C8);
  if (qword_281320A88 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_281320A88);
  }

  v43 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v43, qword_281320F28);
  v44 = sub_266E463FC();
  v45 = sub_266E465BC();
  if (OUTLINED_FUNCTION_23(v45))
  {
    v46 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_30_0(v46);
    OUTLINED_FUNCTION_8_0(&dword_266E28000, v47, v48, "No pending gesture response to create RC");
    OUTLINED_FUNCTION_11_0();
  }

LABEL_39:
  OUTLINED_FUNCTION_32();
}

uint64_t sub_266E422FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a6;
  v34 = a5;
  v32[0] = a4;
  v32[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
  MEMORY[0x28223BE20](v7 - 8);
  v35 = v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8098, &qword_266E479F0);
  MEMORY[0x28223BE20](v9 - 8);
  v33 = v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83B0, &unk_266E479D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v32 - v12;
  v14 = sub_266E45AEC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8080, &qword_266E479C0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v32 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E8398, &qword_266E479B8);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v32 - v22;
  v24 = *MEMORY[0x277D5CDF8];
  v25 = sub_266E460CC();
  (*(*(v25 - 8) + 104))(v23, v24, v25);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v25);
  MEMORY[0x26D5F3C40](v23);

  sub_266E45F7C();
  v26 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_currentSessionId;
  swift_beginAccess();
  sub_266E4436C(a2 + v26, v20, &qword_2800E8080, &qword_266E479C0);
  sub_266E45FCC();

  sub_266E45FBC();
  sub_266E45ADC();
  sub_266E45ABC();
  (*(v15 + 8))(v17, v14);
  sub_266E45F5C();
  v27 = sub_266E4621C();
  (*(*(v27 - 8) + 16))(v13, v34, v27);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v27);
  sub_266E45FAC();
  v28 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_sessionUserId;
  swift_beginAccess();
  sub_266E4436C(a2 + v28, v33, &qword_2800E8098, &qword_266E479F0);
  sub_266E45F9C();
  v29 = sub_266E4619C();
  v30 = v35;
  (*(*(v29 - 8) + 16))(v35, v36, v29);
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
  return sub_266E45F6C();
}

uint64_t sub_266E4278C(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83A8, &qword_266E479C8);
  OUTLINED_FUNCTION_12(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_40_0();
  sub_266E43860(a1);
  v6 = type metadata accessor for GestureResponse(0);
  OUTLINED_FUNCTION_41_0(v6);
  v7 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureResponse;
  OUTLINED_FUNCTION_42_0();
  sub_266E441CC(v2, v1 + v7);
  swift_endAccess();
  OUTLINED_FUNCTION_34_1(OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureRequestId);
  *v8 = 0;
  v8[1] = 0;
}

void sub_266E42844()
{
  OUTLINED_FUNCTION_31();
  v111 = v3;
  v112 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83B0, &unk_266E479D0);
  OUTLINED_FUNCTION_12(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_31_1();
  v116 = v7;
  OUTLINED_FUNCTION_55();
  v117 = sub_266E4621C();
  OUTLINED_FUNCTION_5();
  v113 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v123 = v10;
  OUTLINED_FUNCTION_55();
  v121 = sub_266E4622C();
  OUTLINED_FUNCTION_5();
  v126 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v114 = v13;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83B8, &unk_266E47A70);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_31_1();
  v120 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83C0, &unk_266E479E0);
  v17 = OUTLINED_FUNCTION_12(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_1();
  v118 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_33_1();
  v21 = MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_30_1(v21, v22, v23, v24, v25, v26, v27, v28, v109);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
  OUTLINED_FUNCTION_12(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v30);
  v31 = OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_5();
  v124 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_0();
  v122 = v34;
  v35 = OUTLINED_FUNCTION_67();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
  OUTLINED_FUNCTION_12(v37);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_20_2();
  v39 = type metadata accessor for GestureResponse(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_8();
  v43 = v42 - v41;
  v44 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureResponse;
  OUTLINED_FUNCTION_38();
  sub_266E4436C(v0 + v44, v2, &qword_2800E83A8, &qword_266E479C8);
  if (__swift_getEnumTagSinglePayload(v2, 1, v39) != 1)
  {
    v110 = v0;
    sub_266E4423C(v2, v43);
    sub_266E4436C(v43 + *(v39 + 28), v0, &qword_2800E81E8, &unk_266E474D0);
    v51 = OUTLINED_FUNCTION_29_0();
    v115 = v43;
    if (__swift_getEnumTagSinglePayload(v51, v52, v31) == 1)
    {
      sub_266E2BE40(v0, &qword_2800E81E8, &unk_266E474D0);
      if (qword_281320A88 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_281320A88);
      }

      v53 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v53, qword_281320F28);
      v54 = sub_266E463FC();
      v55 = sub_266E465CC();
      if (OUTLINED_FUNCTION_23(v55))
      {
        v56 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_30_0(v56);
        OUTLINED_FUNCTION_8_0(&dword_266E28000, v57, v58, "‼️ Unable to find promptInfo associated with the gesture input.");
        OUTLINED_FUNCTION_11_0();
      }

      goto LABEL_35;
    }

    v59 = v31;
    v60 = v124;
    v61 = v122;
    (*(v124 + 32))(v122, v0, v59);
    sub_266E4613C();
    (*(v126 + 104))(v1, *MEMORY[0x277D5CFB0], v121);
    OUTLINED_FUNCTION_13();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v121);
    v65 = *(v119 + 48);
    sub_266E4436C(v125, v120, &qword_2800E83C0, &unk_266E479E0);
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_7_1(v120);
    if (v68)
    {
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_21_2(v125);
      OUTLINED_FUNCTION_7_1(v120 + v65);
      v66 = v123;
      if (v68)
      {
        v67 = sub_266E2BE40(v120, &qword_2800E83C0, &unk_266E479E0);
LABEL_27:
        MEMORY[0x28223BE20](v67);
        v91 = v116;
        *(&v109 - 2) = v115;
        sub_266E461DC();
        v92 = OUTLINED_FUNCTION_29_0();
        v93 = v117;
        if (__swift_getEnumTagSinglePayload(v92, v94, v117) != 1)
        {
          v98 = v113;
          OUTLINED_FUNCTION_14_1();
          v100 = v99();
          MEMORY[0x28223BE20](v100);
          v101 = v111;
          *(&v109 - 6) = v110;
          *(&v109 - 5) = v101;
          *(&v109 - 4) = v112;
          *(&v109 - 3) = v66;
          *(&v109 - 2) = v61;
          objc_allocWithZone(sub_266E45F0C());
          v102 = sub_266E45E7C();
          if (v102)
          {
            v103 = v102;
            sub_266E437B4();
          }

          else
          {
            if (qword_281320AA0 != -1)
            {
              OUTLINED_FUNCTION_3_0(&qword_281320AA0);
            }

            v104 = sub_266E4640C();
            OUTLINED_FUNCTION_17_0(v104, qword_281320F58);
            v103 = sub_266E463FC();
            v105 = sub_266E465CC();
            if (OUTLINED_FUNCTION_23(v105))
            {
              v106 = OUTLINED_FUNCTION_26();
              OUTLINED_FUNCTION_30_0(v106);
              OUTLINED_FUNCTION_8_0(&dword_266E28000, v107, v108, "IFGestureBasedCandidateMessage could not be created.");
              OUTLINED_FUNCTION_11_0();
            }
          }

          (*(v98 + 8))(v66, v93);
          goto LABEL_34;
        }

        sub_266E2BE40(v91, &qword_2800E83B0, &unk_266E479D0);
        if (qword_281320A88 != -1)
        {
          OUTLINED_FUNCTION_0_1(&qword_281320A88);
        }

        v95 = sub_266E4640C();
        OUTLINED_FUNCTION_17_0(v95, qword_281320F28);
        v72 = sub_266E463FC();
        v96 = sub_266E465CC();
        if (!OUTLINED_FUNCTION_23(v96))
        {
LABEL_33:

LABEL_34:
          (*(v60 + 8))(v61, v59);
LABEL_35:
          sub_266E442A0(v115);
          goto LABEL_36;
        }

        v97 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_30_0(v97);
        v77 = "‼️ Unable to create gestureInput.";
LABEL_32:
        OUTLINED_FUNCTION_8_0(&dword_266E28000, v75, v76, v77);
        OUTLINED_FUNCTION_11_0();
        goto LABEL_33;
      }
    }

    else
    {
      sub_266E4436C(v120, v118, &qword_2800E83C0, &unk_266E479E0);
      OUTLINED_FUNCTION_7_1(v120 + v65);
      if (!v68)
      {
        OUTLINED_FUNCTION_28_1();
        v78(v114);
        v79 = sub_266E44314();
        LODWORD(v119) = OUTLINED_FUNCTION_25_0(v79);
        v80 = off_2800E83C8;
        v81 = OUTLINED_FUNCTION_67();
        v80(v81);
        OUTLINED_FUNCTION_14_1();
        sub_266E2BE40(v82, v83, v84);
        OUTLINED_FUNCTION_14_1();
        sub_266E2BE40(v85, v86, v87);
        (v80)(v118, v121);
        v66 = v123;
        v61 = v122;
        v60 = v124;
        OUTLINED_FUNCTION_14_1();
        v67 = sub_266E2BE40(v88, v89, v90);
        if (v119)
        {
          goto LABEL_27;
        }

LABEL_22:
        if (qword_281320A88 != -1)
        {
          OUTLINED_FUNCTION_0_1(&qword_281320A88);
        }

        v71 = sub_266E4640C();
        OUTLINED_FUNCTION_17_0(v71, qword_281320F28);
        v72 = sub_266E463FC();
        v73 = sub_266E465BC();
        if (!OUTLINED_FUNCTION_23(v73))
        {
          goto LABEL_33;
        }

        v74 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_30_0(v74);
        v77 = "‼️ Gesture response is not for IFGestureBasedCandidateMessage";
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_21_2(v125);
      v69 = OUTLINED_FUNCTION_67();
      v70(v69);
    }

    sub_266E2BE40(v120, &qword_2800E83B8, &unk_266E47A70);
    goto LABEL_22;
  }

  sub_266E2BE40(v2, &qword_2800E83A8, &qword_266E479C8);
  if (qword_281320A88 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_281320A88);
  }

  v45 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v45, qword_281320F28);
  v46 = sub_266E463FC();
  v47 = sub_266E465BC();
  if (OUTLINED_FUNCTION_23(v47))
  {
    v48 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_30_0(v48);
    OUTLINED_FUNCTION_8_0(&dword_266E28000, v49, v50, "No pending gesture response to create RC");
    OUTLINED_FUNCTION_11_0();
  }

LABEL_36:
  OUTLINED_FUNCTION_32();
}

uint64_t sub_266E43180(uint64_t a1, char *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83E0, &qword_266E479F8);
  OUTLINED_FUNCTION_12(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83E8, &qword_266E47A00);
  OUTLINED_FUNCTION_12(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = *(type metadata accessor for GestureResponse(0) + 24);
  v12 = sub_266E461CC();
  OUTLINED_FUNCTION_10();
  (*(v13 + 16))(v10, &a2[v11], v12);
  OUTLINED_FUNCTION_13();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
  MEMORY[0x26D5F3EA0](v10);
  v17 = *a2;
  v18 = sub_266E4623C();
  OUTLINED_FUNCTION_10();
  v20 = MEMORY[0x277D5CFC8];
  v21 = MEMORY[0x277D5CFD0];
  if (v17 != 2)
  {
    v21 = MEMORY[0x277D5CFD8];
  }

  if (v17 != 1)
  {
    v20 = v21;
  }

  (*(v19 + 104))(v6, *v20, v18);
  OUTLINED_FUNCTION_13();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v18);
  sub_266E461FC();
  sub_266E36D64();
  return sub_266E4620C();
}

uint64_t sub_266E43324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a6;
  v34 = a5;
  v32[0] = a4;
  v32[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
  MEMORY[0x28223BE20](v7 - 8);
  v35 = v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8098, &qword_266E479F0);
  MEMORY[0x28223BE20](v9 - 8);
  v33 = v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83B0, &unk_266E479D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v32 - v12;
  v14 = sub_266E45AEC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8080, &qword_266E479C0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v32 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E8398, &qword_266E479B8);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v32 - v22;
  v24 = *MEMORY[0x277D5CDF8];
  v25 = sub_266E460CC();
  (*(*(v25 - 8) + 104))(v23, v24, v25);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v25);
  sub_266E45EBC();

  sub_266E45EAC();
  v26 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_currentSessionId;
  swift_beginAccess();
  sub_266E4436C(a2 + v26, v20, &qword_2800E8080, &qword_266E479C0);
  sub_266E45EFC();

  sub_266E45EEC();
  sub_266E45ADC();
  sub_266E45ABC();
  (*(v15 + 8))(v17, v14);
  sub_266E45E8C();
  v27 = sub_266E4621C();
  (*(*(v27 - 8) + 16))(v13, v34, v27);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v27);
  sub_266E45EDC();
  v28 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_sessionUserId;
  swift_beginAccess();
  sub_266E4436C(a2 + v28, v33, &qword_2800E8098, &qword_266E479F0);
  sub_266E45ECC();
  v29 = sub_266E4619C();
  v30 = v35;
  (*(*(v29 - 8) + 16))(v35, v36, v29);
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
  return sub_266E45E9C();
}

uint64_t sub_266E437B4()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83A8, &qword_266E479C8);
  OUTLINED_FUNCTION_12(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_40_0();
  v4 = type metadata accessor for GestureResponse(0);
  OUTLINED_FUNCTION_41_0(v4);
  v5 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureResponse;
  OUTLINED_FUNCTION_42_0();
  sub_266E441CC(v1, v0 + v5);
  swift_endAccess();
  OUTLINED_FUNCTION_34_1(OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureRequestId);
  *v6 = 0;
  v6[1] = 0;
}

void sub_266E43860(uint64_t a1)
{
  v2 = v1;
  v3 = objc_allocWithZone(sub_266E45CEC());
  v4 = sub_266E45CDC();
  if (v4)
  {
    v5 = v4;
    if (qword_281320AA0 != -1)
    {
      OUTLINED_FUNCTION_3_0(&qword_281320AA0);
    }

    v6 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v6, qword_281320F58);
    v7 = v5;
    v8 = sub_266E463FC();
    v9 = sub_266E465AC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v10 = 136315394;
      swift_getObjectType();
      v11 = sub_266E467BC();
      v13 = sub_266E2B0EC(v11, v12, &v26);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2080;
      v14 = [v7 debugDescription];
      v15 = sub_266E4651C();
      v17 = v16;

      v18 = sub_266E2B0EC(v15, v17, &v26);

      *(v10 + 14) = v18;
      OUTLINED_FUNCTION_37(&dword_266E28000, v19, v20, "Posting %s: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_14_0();
    }

    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_messagePublisher), *(v2 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_messagePublisher + 24));
    sub_266E460AC();
  }

  else
  {
    if (qword_281320AA0 != -1)
    {
      OUTLINED_FUNCTION_3_0(&qword_281320AA0);
    }

    v21 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v21, qword_281320F58);
    v7 = sub_266E463FC();
    v22 = sub_266E465CC();
    if (OUTLINED_FUNCTION_23(v22))
    {
      v23 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_30_0(v23);
      OUTLINED_FUNCTION_8_0(&dword_266E28000, v24, v25, "‼️ ResultSelectedMessage could not be created.");
      OUTLINED_FUNCTION_11_0();
    }
  }
}

uint64_t sub_266E43ACC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E8398, &qword_266E479B8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8080, &qword_266E479C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  sub_266E45E3C();
  sub_266E45D1C();
  sub_266E460BC();
  sub_266E45CFC();
  sub_266E4609C();
  v6 = sub_266E45AEC();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  sub_266E45D4C();
  sub_266E4608C();
  sub_266E45D3C();
  sub_266E45D0C();
  v7 = *MEMORY[0x277D5CDF8];
  v8 = sub_266E460CC();
  (*(*(v8 - 8) + 104))(v2, v7, v8);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v8);
  return sub_266E45D2C();
}

void sub_266E43C74(void *a1)
{
  v2 = v1;
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_281320AA0);
  }

  v4 = sub_266E4640C();
  __swift_project_value_buffer(v4, qword_281320F58);
  v5 = a1;
  v6 = sub_266E463FC();
  v7 = sub_266E465AC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v8 = 136315394;
    swift_getObjectType();
    v9 = sub_266E467BC();
    v11 = sub_266E2B0EC(v9, v10, &v19);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = [v5 debugDescription];
    v13 = sub_266E4651C();
    v15 = v14;

    v16 = sub_266E2B0EC(v13, v15, &v19);

    *(v8 + 14) = v16;
    OUTLINED_FUNCTION_37(&dword_266E28000, v17, v18, "Posting %s: %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_14_0();
  }

  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_messagePublisher), *(v2 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_messagePublisher + 24));
  sub_266E460AC();
  OUTLINED_FUNCTION_62();
}

uint64_t sub_266E43E38()
{
  sub_266E2BE40(v0 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_currentSessionId, &qword_2800E8080, &qword_266E479C0);
  OUTLINED_FUNCTION_34_1(OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_currentAssistantId);

  sub_266E2BE40(v0 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_sessionUserId, &qword_2800E8098, &qword_266E479F0);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_messagePublisher));
  swift_unknownObjectRelease();
  sub_266E2BE40(v0 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureResponse, &qword_2800E83A8, &qword_266E479C8);
  OUTLINED_FUNCTION_34_1(OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureRequestId);

  return v0;
}

uint64_t sub_266E43EF0()
{
  sub_266E43E38();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for GestureOutputSubmitter(uint64_t a1)
{
  result = qword_281320EC8;
  if (!qword_281320EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266E43F9C(uint64_t a1)
{
  sub_266E44110(319, &qword_281320F18, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    sub_266E44110(319, &qword_281320EF0, MEMORY[0x277D5D298]);
    if (v2 <= 0x3F)
    {
      sub_266E44110(319, qword_281320BE8, type metadata accessor for GestureResponse);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_266E44110(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_266E4668C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_266E44164()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E8400, &unk_266E47A10);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_266E441CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83A8, &qword_266E479C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E4423C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GestureResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E442A0(uint64_t a1)
{
  v2 = type metadata accessor for GestureResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266E44314()
{
  result = qword_2800E83D0;
  if (!qword_2800E83D0)
  {
    sub_266E4622C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E83D0);
  }

  return result;
}

uint64_t sub_266E4436C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_10();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_266E44418()
{
  result = qword_2800E83F0;
  if (!qword_2800E83F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800E83F0);
  }

  return result;
}

BOOL sub_266E4445C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 != a3 || a2 != a4)
    {
      return sub_266E4673C() & 1;
    }

    return 1;
  }

  return v4;
}

uint64_t sub_266E444B8(void *a1)
{
  v2 = [a1 aceId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266E4651C();

  return v3;
}

uint64_t sub_266E44528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GestureResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_0(uint64_t a1)
{

  return sub_266E464FC();
}

uint64_t OUTLINED_FUNCTION_40_0()
{

  return sub_266E42840();
}

uint64_t OUTLINED_FUNCTION_41_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_43()
{

  return sub_266E4436C(v2, v4 + v3, v0, v1);
}

void sub_266E446DC(void *a1)
{
  v2 = v1;
  v4 = sub_266E4626C();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_2();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_281320AA0);
  }

  v14 = sub_266E4640C();
  __swift_project_value_buffer(v14, qword_281320F58);
  v15 = a1;
  v16 = sub_266E463FC();
  v17 = sub_266E465BC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_21();
    v32 = v4;
    v19 = v18;
    v31[0] = OUTLINED_FUNCTION_23_0();
    v33 = v31[0];
    *v19 = 136315138;
    v20 = [v15 debugDescription];
    v21 = sub_266E4651C();
    v31[1] = v15;
    v22 = v21;
    v23 = v13;
    v24 = v10;
    v25 = v2;
    v27 = v26;

    v28 = sub_266E2B0EC(v22, v27, &v33);
    v2 = v25;
    v10 = v24;
    v13 = v23;

    *(v19 + 4) = v28;
    _os_log_impl(&dword_266E28000, v16, v17, "Handling StoppedListeningForSpeechContinuationMessage: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31[0]);
    OUTLINED_FUNCTION_15_1();
    v4 = v32;
    OUTLINED_FUNCTION_14_0();
  }

  sub_266E4603C();
  (*(v6 + 104))(v10, *MEMORY[0x277D5D280], v4);
  v29 = sub_266E35708(v13, v10);
  v30 = *(v6 + 8);
  v30(v10, v4);
  v30(v13, v4);
  if (v29)
  {
    if (*(v2 + qword_281320D00))
    {
      sub_266E2D4E8(2);
    }
  }
}

void sub_266E44974(void *a1)
{
  v2 = v1;
  if (qword_281320AA0 != -1)
  {
LABEL_16:
    OUTLINED_FUNCTION_3_0(&qword_281320AA0);
  }

  v4 = sub_266E4640C();
  __swift_project_value_buffer(v4, qword_281320F58);
  v5 = a1;
  v6 = sub_266E463FC();
  v7 = sub_266E465BC();

  v27 = v2;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_21();
    v9 = OUTLINED_FUNCTION_23_0();
    v29 = v9;
    *v8 = 136315138;
    v10 = [v5 debugDescription];
    v11 = sub_266E4651C();
    v13 = v12;

    v14 = sub_266E2B0EC(v11, v13, &v29);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_266E28000, v6, v7, "Handling TRPCandidateRequestMessage: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_15_1();
  }

  a1 = sub_266E45DEC();
  v15 = 0;
  v16 = a1[2];
  v17 = a1 + 4;
  v2 = &v29;
  while (1)
  {
    if (v16 == v15)
    {

      return;
    }

    if (v15 >= a1[2])
    {
      __break(1u);
      goto LABEL_16;
    }

    sub_266E4436C(v17, &v29, &qword_2800E8410, &unk_266E47A50);
    v18 = v29;
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    if ([v18 speechEvent])
    {
      break;
    }

    ++v15;
    v17 += 6;
  }

  v19 = v18;
  v20 = sub_266E463FC();
  v21 = sub_266E465BC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_21();
    v23 = OUTLINED_FUNCTION_23_0();
    v28 = v23;
    *v22 = 136315138;
    [v19 speechEvent];
    type metadata accessor for AFSpeechEvent(0);
    v24 = sub_266E4652C();
    v26 = sub_266E2B0EC(v24, v25, &v28);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_266E28000, v20, v21, "TCUPackage with speech event %s received, assuming that user replied with speech", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_14_0();
  }

  if (*(v27 + qword_281320D00))
  {
    sub_266E2D4E8(2);
  }
}

void sub_266E44C68(void *a1)
{
  v2 = v1;
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_281320AA0);
  }

  v4 = sub_266E4640C();
  __swift_project_value_buffer(v4, qword_281320F58);
  v5 = a1;
  v6 = sub_266E463FC();
  v7 = sub_266E465BC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_21();
    v9 = OUTLINED_FUNCTION_23_0();
    v18 = v9;
    *v8 = 136315138;
    v10 = [v5 debugDescription];
    v11 = sub_266E4651C();
    v13 = v12;

    v14 = sub_266E2B0EC(v11, v13, &v18);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_266E28000, v6, v7, "Handling NLResultCandidateMessage: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_14_0();
  }

  if ((AFDeviceSupportsMedoc() & 1) == 0)
  {
    v15 = sub_266E463FC();
    v16 = sub_266E465BC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_266E28000, v15, v16, "Device doesn't support Medoc, assuming the NLResultCandidateMessage is for an LAS speech request", v17, 2u);
      OUTLINED_FUNCTION_14_0();
    }

    if (*(v2 + qword_281320D00))
    {
      sub_266E2D4E8(2);
    }
  }
}

uint64_t sub_266E44FA0()
{
  v1 = v0 + qword_281320FC0;

  return sub_266E31EC0(v1);
}

uint64_t sub_266E44FE0(uint64_t a1)
{
  result = type metadata accessor for EventDeduper(319);
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

uint64_t sub_266E450A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266E45164()
{
  v0 = sub_266E4640C();
  __swift_allocate_value_buffer(v0, qword_281320F58);
  OUTLINED_FUNCTION_0_2();
  sub_266E4667C();
  return sub_266E4641C();
}

uint64_t sub_266E451E8()
{
  v0 = sub_266E4640C();
  __swift_allocate_value_buffer(v0, qword_281320F28);
  OUTLINED_FUNCTION_0_2();
  sub_266E4667C();
  return sub_266E4641C();
}

uint64_t sub_266E45268()
{
  v0 = sub_266E4640C();
  __swift_allocate_value_buffer(v0, qword_281320F40);
  OUTLINED_FUNCTION_0_2();
  sub_266E4667C();
  return sub_266E4641C();
}

void static SignpostLogger.begin(_:enableTelemetry:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    sub_266E45760(a1, a2, a3, a5, a6);
  }

  else
  {
    (*(a6 + 24))(a1, a2, a3, 0, 0, 256, 0, 0, a5, a6);
  }
}

void static SignpostLogger.begin(name:parameterOverrideOptions:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a10 + 8);
  v12(a9, a10);
  sub_266E463CC();
  if ((a6 & 0x100) != 0 || !a8)
  {
    sub_266E4663C();
    v16 = (v12)(a9, a10);
    OUTLINED_FUNCTION_1_1();
    sub_266E463BC();
  }

  else
  {

    sub_266E4663C();
    v13 = (v12)(a9, a10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8428, qword_266E47A90);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_266E47A80;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_266E4585C();
    *(v14 + 32) = a7;
    *(v14 + 40) = a8;
    OUTLINED_FUNCTION_1_1();
    sub_266E463AC();
  }
}

void static SignpostLogger.end(_:_:)()
{
  sub_266E4662C();
  v0 = OUTLINED_FUNCTION_2_2();
  v2 = v1(v0);
  OUTLINED_FUNCTION_1_1();
  sub_266E463BC();
}

uint64_t static SignpostLogger.event(_:)()
{
  v0 = sub_266E463EC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266E4664C();
  v4 = OUTLINED_FUNCTION_2_2();
  v6 = v5(v4);
  sub_266E463DC();
  OUTLINED_FUNCTION_1_1();
  sub_266E463BC();

  return (*(v1 + 8))(v3, v0);
}

void sub_266E45760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 8);
  v7(a4, a5);
  sub_266E463CC();
  sub_266E4663C();
  v8 = (v7)(a4, a5);
  sub_266E463AC();
}

unint64_t sub_266E4585C()
{
  result = qword_2800E8430;
  if (!qword_2800E8430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E8430);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_266E45988()
{
  result = qword_281320A38;
  if (!qword_281320A38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281320A38);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_0_2()
{
  __swift_project_value_buffer(v0, v1);

  return sub_266E45988();
}