unint64_t sub_2665BAF70()
{
  result = qword_28007E3D8;
  if (!qword_28007E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E3D8);
  }

  return result;
}

unint64_t sub_2665BAFC4()
{
  result = qword_28007E3E0;
  if (!qword_28007E3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E3E0);
  }

  return result;
}

unint64_t sub_2665BB018()
{
  result = qword_28007E3E8;
  if (!qword_28007E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E3E8);
  }

  return result;
}

uint64_t DIConfirmationResponse.init(from:)(void *a1)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E3F0, &qword_266674150);
  OUTLINED_FUNCTION_3_0();
  v60 = v2;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v58 = &v52 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E3F8, &qword_266674158);
  OUTLINED_FUNCTION_3_0();
  v57 = v5;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E400, &qword_266674160);
  OUTLINED_FUNCTION_3_0();
  v56 = v10;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E408, &unk_266674168);
  OUTLINED_FUNCTION_3_0();
  v61 = v15;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v16);
  v17 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_2665BAF1C();
  v18 = v63;
  sub_26666CBD8();
  if (v18)
  {
    goto LABEL_12;
  }

  v52 = v9;
  v53 = v13;
  v54 = v8;
  v55 = 0;
  v19 = v62;
  v63 = a1;
  sub_26666C9F8();
  result = sub_266575DD8();
  v17 = v14;
  if (v22 == v23 >> 1)
  {
    goto LABEL_10;
  }

  if (v22 < (v23 >> 1))
  {
    v24 = v14;
    v25 = *(v21 + v22);
    v26 = sub_266575DD4();
    v28 = v27;
    v30 = v29;
    swift_unknownObjectRelease();
    v31 = v59;
    v32 = v60;
    if (v28 == v30 >> 1)
    {
      v17 = v25;
      if (v25)
      {
        v56 = v26;
        v33 = v55;
        if (v25 == 1)
        {
          v65 = 1;
          sub_2665BAFC4();
          v34 = v54;
          OUTLINED_FUNCTION_5_15();
          sub_26666C968();
          if (!v33)
          {
            swift_unknownObjectRelease();
            (*(v57 + 8))(v34, v31);
            v35 = OUTLINED_FUNCTION_4_20();
            v36(v35);
LABEL_21:
            __swift_destroy_boxed_opaque_existential_1(v63);
            return v17;
          }
        }

        else
        {
          LODWORD(v59) = v25;
          v66 = 2;
          sub_2665BAF70();
          v17 = v58;
          OUTLINED_FUNCTION_5_15();
          sub_26666C968();
          if (!v33)
          {
            swift_unknownObjectRelease();
            (*(v32 + 8))(v17, v19);
            v50 = OUTLINED_FUNCTION_4_20();
            v51(v50);
            v17 = v59;
            goto LABEL_21;
          }
        }

        v46 = OUTLINED_FUNCTION_4_20();
        v47(v46);
      }

      else
      {
        v64 = 0;
        sub_2665BB018();
        v42 = v53;
        OUTLINED_FUNCTION_5_15();
        v43 = v55;
        sub_26666C968();
        if (!v43)
        {
          swift_unknownObjectRelease();
          (*(v56 + 8))(v42, v52);
          v48 = OUTLINED_FUNCTION_3_19();
          v49(v48, v24);
          goto LABEL_21;
        }

        v44 = OUTLINED_FUNCTION_3_19();
        v45(v44, v24);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v17 = v24;
LABEL_10:
    v37 = sub_26666C848();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4C0, &qword_26666F190);
    *v39 = &type metadata for DIConfirmationResponse;
    sub_26666C978();
    sub_26666C838();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    v40 = OUTLINED_FUNCTION_3_19();
    v41(v40, v17);
LABEL_11:
    a1 = v63;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_2665BB654@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = DIConfirmationResponse.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_2665BB6A0()
{
  result = qword_28007E410;
  if (!qword_28007E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E410);
  }

  return result;
}

unint64_t sub_2665BB6F4(void *a1)
{
  a1[1] = sub_266563ADC();
  a1[2] = sub_2665BB72C();
  result = sub_2665BB6A0();
  a1[3] = result;
  return result;
}

unint64_t sub_2665BB72C()
{
  result = qword_28007E418;
  if (!qword_28007E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E418);
  }

  return result;
}

_BYTE *sub_2665BB790(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2665BB8A0()
{
  result = qword_28007E420;
  if (!qword_28007E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E420);
  }

  return result;
}

unint64_t sub_2665BB8F8()
{
  result = qword_28007E428;
  if (!qword_28007E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E428);
  }

  return result;
}

unint64_t sub_2665BB950()
{
  result = qword_28007E430;
  if (!qword_28007E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E430);
  }

  return result;
}

unint64_t sub_2665BB9A8()
{
  result = qword_28007E438;
  if (!qword_28007E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E438);
  }

  return result;
}

unint64_t sub_2665BBA00()
{
  result = qword_28007E440;
  if (!qword_28007E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E440);
  }

  return result;
}

unint64_t sub_2665BBA58()
{
  result = qword_28007E448;
  if (!qword_28007E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E448);
  }

  return result;
}

unint64_t sub_2665BBAB0()
{
  result = qword_28007E450;
  if (!qword_28007E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E450);
  }

  return result;
}

unint64_t sub_2665BBB08()
{
  result = qword_28007E458;
  if (!qword_28007E458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E458);
  }

  return result;
}

unint64_t sub_2665BBB60()
{
  result = qword_28007E460;
  if (!qword_28007E460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E460);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26666CA08();
}

uint64_t sub_2665BBC30(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_2665BBC50, 0, 0);
}

uint64_t sub_2665BBC50()
{
  swift_beginAccess();
  if (sub_2665C485C())
  {
    swift_beginAccess();
    sub_2665FD55C();
    swift_endAccess();
    sub_266669868();
  }

  else
  {
    sub_2666698A8();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2665BBD18(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EachFlow();
  sub_2665BBEC8();
  return sub_266669548();
}

uint64_t sub_2665BBD74()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2665BBDF4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266553FF0;

  return sub_2665BBC30(a1);
}

uint64_t sub_2665BBE90(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EachFlow();

  return sub_266669588();
}

unint64_t sub_2665BBEC8()
{
  result = qword_28156C3C0[0];
  if (!qword_28156C3C0[0])
  {
    type metadata accessor for EachFlow();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28156C3C0);
  }

  return result;
}

uint64_t type metadata accessor for FindEventsNLv3IntentWrapper(uint64_t a1)
{
  result = qword_28007E468;
  if (!qword_28007E468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2665BBF90(uint64_t a1)
{
  result = type metadata accessor for CalendarNLv3Intent(319);
  if (v2 <= 0x3F)
  {
    result = sub_26655EC10(319, qword_28156CF58, &protocol descriptor for CalendarDateTimeResolving);
    if (v3 <= 0x3F)
    {
      result = sub_26655EC10(319, qword_28156CB10, &protocol descriptor for ContactResolving);
      if (v4 <= 0x3F)
      {
        result = sub_26655EC10(319, &qword_28156CF50, &protocol descriptor for CalendarReferenceResolving);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2665BC074()
{
  if (qword_28007CE40 != -1)
  {
    OUTLINED_FUNCTION_2_20(&qword_28007CE40);
  }

  type metadata accessor for CalendarNLv3Intent(0);
  sub_26656960C();
  OUTLINED_FUNCTION_15_2();
  sub_26666A528();
  if (v4 == 16)
  {
    v0 = 0;
  }

  else if (sub_2666315D8(v4) == 0x6574656C6564 && v1 == 0xE600000000000000)
  {

    v0 = 1;
  }

  else
  {
    v0 = sub_26666CAC8();
  }

  return v0 & 1;
}

uint64_t sub_2665BC154()
{
  if (qword_28007CE40 != -1)
  {
    OUTLINED_FUNCTION_2_20(&qword_28007CE40);
  }

  type metadata accessor for CalendarNLv3Intent(0);
  sub_26656960C();
  OUTLINED_FUNCTION_15_2();
  sub_26666A528();
  if (v4 == 16)
  {
    v0 = 0;
  }

  else if (sub_2666315D8(v4) == 1684104562 && v1 == 0xE400000000000000)
  {

    v0 = 1;
  }

  else
  {
    v0 = sub_26666CAC8();
  }

  return v0 & 1;
}

uint64_t sub_2665BC234()
{
  v0 = sub_26662E9D4();
  if (v0 == 40)
  {
    return 4;
  }

  return sub_266576A08(v0);
}

uint64_t sub_2665BC274()
{
  if (qword_28007CE60 != -1)
  {
    OUTLINED_FUNCTION_2_8(&qword_28007CE60);
  }

  type metadata accessor for CalendarNLv3Intent(0);
  sub_26656960C();
  OUTLINED_FUNCTION_15_2();
  sub_26666A528();
  if (!v1)
  {
    return 2;
  }

  return 0;
}

uint64_t sub_2665BC300()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 776) = v0;
  *(v1 + 912) = v2;
  v3 = sub_26666B5C8();
  *(v1 + 784) = v3;
  *(v1 + 792) = *(v3 - 8);
  *(v1 + 800) = swift_task_alloc();
  *(v1 + 808) = type metadata accessor for CalendarNLv3Intent(0);
  *(v1 + 816) = swift_task_alloc();
  v4 = sub_26666C0B8();
  *(v1 + 824) = v4;
  *(v1 + 832) = *(v4 - 8);
  *(v1 + 840) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2665BC44C, 0, 0);
}

uint64_t sub_2665BC44C()
{
  if (qword_28007CDA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 840);
  v2 = *(v0 + 912);
  v3 = sub_26666C0E8();
  *(v0 + 848) = __swift_project_value_buffer(v3, qword_280095698);
  sub_26666C0A8();
  *(v0 + 856) = sub_26658E0BC("FindEventsNLv3IntentWrapper#makeSiriKitIntent", 45, 2, v1);
  v4 = OUTLINED_FUNCTION_15_2();
  v5(v4);
  if (v2 == 1)
  {
    sub_26655A274(*(v0 + 816));
  }

  else
  {
    sub_2665BD5E4(*(v0 + 776), *(v0 + 816), type metadata accessor for CalendarNLv3Intent);
  }

  v6 = *(v0 + 816);
  v7 = *(v0 + 776);
  v8 = swift_task_alloc();
  *(v0 + 864) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF20, &unk_2666746B0);
  swift_asyncLet_begin();
  sub_26662DD18();
  if (v9)
  {
    v10 = *(v0 + 776);
    v11 = (v10 + *(type metadata accessor for FindEventsNLv3IntentWrapper(0) + 24));
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    if (qword_28007CED8 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 800);
    v13 = *(v0 + 792);
    v14 = *(v0 + 784);
    v15 = __swift_project_value_buffer(v14, qword_2800958C8);
    (*(v13 + 16))(v12, v15, v14);
    v16 = OUTLINED_FUNCTION_15_2();
    v18 = v17(v16);
    (*(*(v0 + 792) + 8))(*(v0 + 800), *(v0 + 784));
  }

  else
  {
    v18 = 0;
  }

  *(v0 + 872) = v18;
  if (qword_28007CE58 != -1)
  {
    swift_once();
  }

  *(v0 + 880) = sub_26656960C();
  sub_26666A528();
  *(v0 + 888) = *(v0 + 696);
  *(v0 + 896) = *(v0 + 704);

  return MEMORY[0x282200928](v0 + 16, v0 + 728, sub_2665BC780, v0 + 656);
}

uint64_t sub_2665BC794()
{
  v1 = v0[91];
  v2 = qword_28007CE60;
  v3 = v1;
  if (v2 != -1)
  {
    OUTLINED_FUNCTION_2_8(&qword_28007CE60);
  }

  v4 = sub_26666A528();
  v5 = v0[90];
  if (v5)
  {
    v6 = v0[89];
    sub_2665BD5A0();
    v7 = objc_allocWithZone(MEMORY[0x277CE41F8]);

    v8 = sub_266606794([v7 init], v6, v5, 0);
  }

  else
  {
    v8 = 0;
  }

  v9 = v0[112];
  v10 = v0[111];
  v11 = v0[109];
  v12 = v0[97];
  v13 = sub_26662EAB8(v4);
  v14 = 3;
  if (v13 == 20)
  {
    v14 = 1;
  }

  if (v13 == 21)
  {
    v14 = 2;
  }

  if (v13 == 40)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  v16 = objc_allocWithZone(MEMORY[0x277CD3C10]);
  v17 = sub_26660B190(v10, v9, v1, v11, v8, v15);
  v18 = sub_2665BC074();
  EventsNLv3IntentWrapper = type metadata accessor for FindEventsNLv3IntentWrapper(0);
  v20 = __swift_project_boxed_opaque_existential_1((v12 + *(EventsNLv3IntentWrapper + 28)), *(v12 + *(EventsNLv3IntentWrapper + 28) + 24));
  v0[113] = sub_2665BCFF4(v17, v18 & 1, *v20, v12);

  return MEMORY[0x282200920](v0 + 2, v0 + 91, sub_2665BC96C, v0 + 92);
}

uint64_t sub_2665BC980()
{
  v1 = v0[107];
  v2 = v0[102];

  sub_2665BD644(v2, type metadata accessor for CalendarNLv3Intent);
  sub_26658E2D0("FindEventsNLv3IntentWrapper#makeSiriKitIntent", 45, 2, v1);

  v3 = v0[1];
  v4 = v0[113];

  return v3(v4);
}

uint64_t sub_2665BCA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3D8, &unk_2666746C0);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2665BCB34, 0, 0);
}

uint64_t sub_2665BCB34()
{
  v1 = v0[3];
  EventsNLv3IntentWrapper = type metadata accessor for FindEventsNLv3IntentWrapper(0);
  __swift_project_boxed_opaque_existential_1((v1 + *(EventsNLv3IntentWrapper + 20)), *(v1 + *(EventsNLv3IntentWrapper + 20) + 24));
  if (qword_28007CE50 != -1)
  {
    swift_once();
  }

  type metadata accessor for CalendarNLv3Intent(0);
  sub_26656960C();
  sub_26666A528();
  if (qword_28007CDA8 != -1)
  {
    swift_once();
  }

  v3 = v0[5];
  v4 = sub_26666B628();
  __swift_project_value_buffer(v4, qword_2800956C8);
  v5 = sub_266668D38();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_2665BCCE4;

  return sub_266606830();
}

uint64_t sub_2665BCCE4()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  *(v6 + 64) = v5;

  sub_26656CAEC(v2, &qword_28007D140, &qword_26666F140);
  sub_26656CAEC(v1, &qword_28007D3D8, &unk_2666746C0);

  return MEMORY[0x2822009F8](sub_2665BCE34, 0, 0);
}

uint64_t sub_2665BCE34()
{
  OUTLINED_FUNCTION_14();
  **(v0 + 16) = *(v0 + 64);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2665BCEB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2665B8910;

  return sub_2665BC300();
}

uint64_t sub_2665BCF48(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_266557FE8;

  return sub_2665BCA5C(a1, v5, v4);
}

id sub_2665BCFF4(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  EventsNLv3IntentWrapper = type metadata accessor for FindEventsNLv3IntentWrapper(0);
  MEMORY[0x28223BE20](EventsNLv3IntentWrapper - 8);
  v10 = &v50[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52[3] = &type metadata for CalendarReferenceResolver;
  v52[4] = &off_28780BAC8;
  v52[0] = a3;

  v11 = a1;
  if (a2 & 1) != 0 && (sub_2665667CC())
  {
    v12 = sub_26662E9D4();
    if (v12 == 40 || sub_266576A08(v12) == 4)
    {
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v13 = sub_26666C168();
      __swift_project_value_buffer(v13, qword_28156D7E8);
      v14 = sub_26666C148();
      v15 = sub_26666C618();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_266549000, v14, v15, "[FindEventsIntentWrapping] All slots are empty, attempting to resolve calendar event from context", v16, 2u);
        MEMORY[0x266789690](v16, -1, -1);
      }

      v17 = __swift_project_boxed_opaque_existential_1(v52, &type metadata for CalendarReferenceResolver);
      sub_26663E15C(*v17);
      if (v18)
      {
        v19 = sub_26666C148();
        v20 = sub_26666C618();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_266549000, v19, v20, "[FindEventsIntentWrapping] Found calendar event in SRR using that as title and date search", v21, 2u);
          MEMORY[0x266789690](v21, -1, -1);
        }

        v22 = sub_26666AA08();
        v24 = v23;
        if (sub_26666A9E8())
        {
          v25 = sub_26655F060();
        }

        else
        {
          v25 = 0;
        }

        v29 = objc_allocWithZone(MEMORY[0x277CD3C10]);
        v30 = sub_26660B190(v22, v24, v25, 0, 0, 0);

        v11 = v30;
      }

      else
      {
        v26 = sub_26666C148();
        v27 = sub_26666C618();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_266549000, v26, v27, "[FindEventsIntentWrapping] No calendar event found in SRR", v28, 2u);
          MEMORY[0x266789690](v28, -1, -1);
        }
      }
    }
  }

  v31 = v11;
  v32 = sub_2665EFC38();

  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v33 = sub_26666C168();
  __swift_project_value_buffer(v33, qword_28156D7E8);
  v34 = sub_26666C148();
  v35 = sub_26666C618();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v32;
    *v37 = v32;
    v38 = v32;
    _os_log_impl(&dword_266549000, v34, v35, "[FindEventsIntentWrapping] Parsed FindEventsIntent: %@", v36, 0xCu);
    sub_26656CAEC(v37, &unk_28007DCA0, &qword_26666E370);
    MEMORY[0x266789690](v37, -1, -1);
    MEMORY[0x266789690](v36, -1, -1);
  }

  sub_2665BD5E4(a4, v10, type metadata accessor for FindEventsNLv3IntentWrapper);
  v39 = sub_26666C148();
  v40 = sub_26666C618();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v51 = v42;
    *v41 = 136315138;
    v43 = sub_26662E9D4();
    if (v43 == 40)
    {
      v44 = 4;
    }

    else
    {
      v44 = sub_266576A08(v43);
    }

    v50[15] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB50, &unk_266671C90);
    v45 = sub_26666C318();
    v47 = v46;
    sub_2665BD644(v10, type metadata accessor for FindEventsNLv3IntentWrapper);
    v48 = sub_2665BFC90(v45, v47, &v51);

    *(v41 + 4) = v48;
    _os_log_impl(&dword_266549000, v39, v40, "[FindEventsIntentWrapping] Parsed ordinal reference: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x266789690](v42, -1, -1);
    MEMORY[0x266789690](v41, -1, -1);
  }

  else
  {

    sub_2665BD644(v10, type metadata accessor for FindEventsNLv3IntentWrapper);
  }

  __swift_destroy_boxed_opaque_existential_1(v52);
  return v32;
}

unint64_t sub_2665BD5A0()
{
  result = qword_28007F370;
  if (!qword_28007F370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28007F370);
  }

  return result;
}

uint64_t sub_2665BD5E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_18_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2665BD644(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_18_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_20(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_2665BD6BC(uint64_t a1)
{
  *(v1 + 16) = a1;
}

uint64_t sub_2665BD700()
{

  sub_266583058(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents24CalendarEventParticipant7Builder_attendingStatus);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2665BD788(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  *(v1 + 16) = 0;
  *(v1 + 24) = *(a1 + 16);
  v6 = OBJC_IVAR____TtCC19SiriCalendarIntents24CalendarEventParticipant7Builder_attendingStatus;
  swift_beginAccess();
  sub_2665BE640(a1 + v6, v5);

  sub_2665BE5D0(v5, v1 + OBJC_IVAR____TtC19SiriCalendarIntents24CalendarEventParticipant_attendingStatus);
  return v1;
}

uint64_t sub_2665BD864(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CalendarEventParticipant.Builder(0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = OBJC_IVAR____TtCC19SiriCalendarIntents24CalendarEventParticipant7Builder_attendingStatus;
  v6 = sub_26666BDA8();
  __swift_storeEnumTagSinglePayload(v4 + v5, 1, 1, v6);
  sub_2665BD6BC(a1);

  v7 = OBJC_IVAR____TtCC19SiriCalendarIntents24CalendarEventParticipant7Builder_attendingStatus;
  swift_beginAccess();
  sub_2665BE6B0(a2, v4 + v7);
  swift_endAccess();
  type metadata accessor for CalendarEventParticipant(0);
  v8 = swift_allocObject();
  sub_2665BD788(v4);

  sub_266583058(a2);
  return v8;
}

uint64_t sub_2665BD954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_6_3();
  result = MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  if (a1 != 0x6E6F73726570 || a2 != 0xE600000000000000)
  {
    result = sub_26666CAC8();
    if ((result & 1) == 0)
    {
      v13 = a1 == 0x6E69646E65747461 && a2 == 0xEF73757461745367;
      if (v13 || (result = sub_26666CAC8(), (result & 1) != 0))
      {
        sub_2665BE640(v3 + OBJC_IVAR____TtC19SiriCalendarIntents24CalendarEventParticipant_attendingStatus, v10);
        v14 = sub_26666BDA8();
        if (__swift_getEnumTagSinglePayload(v10, 1, v14) != 1)
        {
          *(a3 + 24) = v14;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
          return (*(*(v14 - 8) + 32))(boxed_opaque_existential_1, v10, v14);
        }

        result = sub_266583058(v10);
      }

      goto LABEL_17;
    }
  }

  v12 = *(v3 + 24);
  if (!v12)
  {
LABEL_17:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  *(a3 + 24) = sub_26666BCA8();
  *a3 = v12;
}

uint64_t sub_2665BDB1C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26666C958();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2665BDB70(char a1)
{
  if (a1)
  {
    return 0x6E69646E65747461;
  }

  else
  {
    return 0x6E6F73726570;
  }
}

uint64_t sub_2665BDBD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2665BDB1C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2665BDC04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2665BDB70(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2665BDC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2665BDB1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2665BDC6C(uint64_t a1)
{
  v2 = sub_2665BE57C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665BDCA8(uint64_t a1)
{
  v2 = sub_2665BE57C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665BDCE4()
{

  sub_266583058(v0 + OBJC_IVAR____TtC19SiriCalendarIntents24CalendarEventParticipant_attendingStatus);
  return v0;
}

uint64_t sub_2665BDD1C()
{
  sub_2665BDCE4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2665BDD9C(uint64_t a1)
{
  sub_2665BE03C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2665BDE38(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E4D0, &qword_2666747F0);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665BE57C();
  sub_26666CBE8();
  v18 = *(v3 + 24);
  v17[7] = 0;
  sub_26666BCA8();
  OUTLINED_FUNCTION_0_22();
  sub_2665BE534(v11, v12, MEMORY[0x277D55B78]);
  OUTLINED_FUNCTION_6_9(&v18);
  if (!v2)
  {
    v13 = OBJC_IVAR____TtC19SiriCalendarIntents24CalendarEventParticipant_attendingStatus;
    v17[6] = 1;
    sub_26666BDA8();
    OUTLINED_FUNCTION_1_22();
    sub_2665BE534(v14, v15, MEMORY[0x277D55C50]);
    OUTLINED_FUNCTION_6_9(v3 + v13);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_2665BDFEC(void *a1)
{
  v2 = swift_allocObject();
  sub_2665BE158(a1);
  return v2;
}

void sub_2665BE03C(uint64_t a1)
{
  if (!qword_28007E488)
  {
    sub_26666BDA8();
    v1 = sub_26666C6B8();
    if (!v2)
    {
      atomic_store(v1, &qword_28007E488);
    }
  }
}

void sub_2665BE0BC(uint64_t a1)
{
  sub_2665BE03C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id *sub_2665BE158(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E4B0, &qword_2666747E8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665BE57C();
  sub_26666CBD8();
  if (v2)
  {

    type metadata accessor for CalendarEventParticipant(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = sub_26666BCA8();
    v20 = 0;
    OUTLINED_FUNCTION_0_22();
    sub_2665BE534(v10, v11, MEMORY[0x277D55B80]);
    OUTLINED_FUNCTION_5_16(v9, &v20);
    *(v3 + 24) = v21;
    v13 = sub_26666BDA8();
    v19 = 1;
    OUTLINED_FUNCTION_1_22();
    sub_2665BE534(v14, v15, MEMORY[0x277D55C60]);
    OUTLINED_FUNCTION_5_16(v13, &v19);
    v16 = OUTLINED_FUNCTION_2_21();
    v17(v16);
    sub_2665BE5D0(v7, v3 + OBJC_IVAR____TtC19SiriCalendarIntents24CalendarEventParticipant_attendingStatus);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_2665BE454@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2665BDFEC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2665BE534(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2665BE57C()
{
  result = qword_28007E4B8;
  if (!qword_28007E4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E4B8);
  }

  return result;
}

uint64_t sub_2665BE5D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2665BE640(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2665BE6B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for CalendarEventParticipant.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2665BE800()
{
  result = qword_28007E4E8;
  if (!qword_28007E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E4E8);
  }

  return result;
}

unint64_t sub_2665BE858()
{
  result = qword_28007E4F0;
  if (!qword_28007E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E4F0);
  }

  return result;
}

unint64_t sub_2665BE8B0()
{
  result = qword_28007E4F8;
  if (!qword_28007E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E4F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_16(uint64_t a1, uint64_t a2)
{

  return sub_26666C9A8();
}

uint64_t OUTLINED_FUNCTION_6_9(uint64_t a1)
{

  return sub_26666CA38();
}

id SAUIAppPunchOut.init(punchOutURI:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_266668C18();
  [v2 setPunchOutUri_];

  v4 = sub_266668C48();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v2;
}

id SAUIAppPunchOut.init(punchOutURIString:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2B0, &qword_26666E5F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_266668C48();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  sub_266668C38();

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2665BEBFC(v4);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v9, v11, v5);
    v12 = SAUIAppPunchOut.init(punchOutURI:)(v9);
    (*(v6 + 8))(v11, v5);
  }

  return v12;
}

uint64_t sub_2665BEBFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2B0, &qword_26666E5F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DirectInvocationCodable.init(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a4;
  v78 = *MEMORY[0x277D85DE8];
  v74 = sub_266669E48();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v71 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v70 = &v68 - v12;
  sub_26666C6B8();
  OUTLINED_FUNCTION_3_0();
  v68 = v14;
  v69 = v13;
  MEMORY[0x28223BE20](v13);
  v16 = &v68 - v15;
  v17 = sub_266669E28();
  v19 = v18;
  v20 = *(a3 + 32);
  v72 = a2;
  v21 = v20(a2, a3);
  v23 = v22;
  v25 = v24;
  v76 = v21;
  v77 = v26;

  MEMORY[0x266788710](46, 0xE100000000000000);
  MEMORY[0x266788710](v23, v25);

  if (v17 == v76 && v19 == v77)
  {
  }

  else
  {
    v28 = sub_26666CAC8();

    if ((v28 & 1) == 0)
    {
      (*(v8 + 8))(a1, v74);
      v29 = 1;
      v30 = v72;
      v31 = v73;
      return __swift_storeEnumTagSinglePayload(v31, v29, 1, v30);
    }
  }

  v32 = a1;
  if (!sub_266669E38())
  {
    sub_26666C258();
  }

  v33 = v8;
  v34 = objc_opt_self();
  v35 = sub_26666C248();

  v76 = 0;
  v36 = [v34 dataWithJSONObject:v35 options:0 error:&v76];

  v37 = v76;
  v30 = v72;
  if (v36)
  {
    v38 = sub_266668C68();
    v40 = v39;

    sub_266668918();
    swift_allocObject();
    sub_266668908();
    sub_2666688F8();
    (*(v33 + 8))(v32, v74);
    sub_266563B30(v38, v40);

    __swift_storeEnumTagSinglePayload(v16, 0, 1, v30);
    v31 = v73;
    (*(*(v30 - 8) + 32))(v73, v16, v30);
    v29 = 0;
  }

  else
  {
    v41 = v37;
    v42 = sub_266668BF8();

    swift_willThrow();
    v43 = v74;
    v45 = v70;
    v44 = v71;
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v46 = sub_26666C168();
    __swift_project_value_buffer(v46, qword_28156D7E8);
    v47 = *(v33 + 16);
    v47(v45, v32, v43);
    v47(v44, v32, v43);
    v48 = sub_26666C148();
    v49 = sub_26666C5F8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v45;
      v51 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v76 = v68;
      *v51 = 136446466;
      v52 = v30;
      v53 = sub_266669E28();
      v69 = v32;
      v54 = v43;
      v56 = v55;
      v57 = *(v33 + 8);
      v57(v50, v54);
      v58 = v53;
      v30 = v52;
      v59 = sub_2665BFC90(v58, v56, &v76);

      *(v51 + 4) = v59;
      *(v51 + 12) = 2080;
      v75 = sub_266669E38();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2E8, &unk_26666E620);
      v60 = sub_26666C318();
      v62 = v61;
      v63 = v74;
      v57(v44, v74);
      v64 = sub_2665BFC90(v60, v62, &v76);

      *(v51 + 14) = v64;
      _os_log_impl(&dword_266549000, v48, v49, "JSON Serializer failed to convert %{public}s with userData of %s to typed object", v51, 0x16u);
      v65 = v68;
      swift_arrayDestroy();
      MEMORY[0x266789690](v65, -1, -1);
      MEMORY[0x266789690](v51, -1, -1);

      v57(v69, v63);
    }

    else
    {

      v66 = *(v33 + 8);
      v66(v32, v43);
      v66(v44, v43);
      v66(v45, v43);
    }

    v29 = 1;
    v31 = v73;
  }

  return __swift_storeEnumTagSinglePayload(v31, v29, 1, v30);
}

id DirectInvocationCodable.serializeToStartLocalRequest(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = DirectInvocationCodable.serializeToAceCommand(context:)(a1, a2, a3);
  v4 = [objc_opt_self() wrapCommandInStartLocalRequest_];

  return v4;
}

uint64_t DIIdentifier.namespace.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DIIdentifier.id.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void DIIdentifier.payloadId.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x266788710](46, 0xE100000000000000);
  MEMORY[0x266788710](a3, a4);
}

id DirectInvocationCodable.asPayload.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2665BFD54();
  (*(v6 + 16))(v9, v2, a1);
  return sub_2665BF5EC(v9, a1, a2);
}

id sub_2665BF5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[6] = *MEMORY[0x277D85DE8];
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = (*(a3 + 32))(a2, a3);
  v9 = v8;
  v11 = v10;
  v28[2] = v7;
  v28[3] = v12;

  MEMORY[0x266788710](46, 0xE100000000000000);
  MEMORY[0x266788710](v9, v11);

  v13 = sub_26666C2F8();

  v14 = [v6 initWithIdentifier_];

  sub_266668948();
  swift_allocObject();
  v15 = v14;
  sub_266668938();
  v19 = sub_266668928();
  v21 = v20;

  v22 = objc_opt_self();
  v23 = sub_266668C58();
  sub_266563B30(v19, v21);
  v28[0] = 0;
  v24 = [v22 JSONObjectWithData:v23 options:0 error:v28];

  v25 = v28[0];
  if (v24)
  {
    sub_26666C718();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E508, &qword_2666749B8);
    if (swift_dynamicCast())
    {
      v16 = v28[0];
      goto LABEL_3;
    }
  }

  else
  {
    v26 = v25;
    v27 = sub_266668BF8();

    swift_willThrow();
  }

  v16 = sub_26666C258();
LABEL_3:
  sub_2665BF9C8(v16);

  v17 = sub_26666C248();

  [v15 setUserData_];

  (*(*(a2 - 8) + 8))(a1, a2);
  return v15;
}

id DirectInvocationCodable.serializeToAceCommand(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = DirectInvocationCodable.asPayload.getter(a2, a3);
  v8 = [v6 runSiriKitExecutorCommandWithContext:a1 payload:v7];

  return v8;
}

uint64_t DirectInvocationCodable.serializeToBase64(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = DirectInvocationCodable.serializeToAceCommand(context:)(a1, a2, a3);
  v4 = sub_26666C688();

  return v4;
}

uint64_t sub_2665BF9C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E510, &qword_2666749C0);
    v2 = sub_26666C948();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_2665764F4(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2665C02E0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2665C02E0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2665C02E0(v31, v32);
    result = sub_26666C798();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_2665C02E0(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_2665BFC90(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2665BFE34(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2665764F4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2665BFD54()
{
  result = qword_28007E500;
  if (!qword_28007E500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28007E500);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2665BFDA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2665BFDE4(uint64_t result, int a2, int a3)
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

unint64_t sub_2665BFE34(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2665BFF34(a5, a6);
    *a1 = v9;
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
    result = sub_26666C858();
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

uint64_t sub_2665BFF34(uint64_t a1, unint64_t a2)
{
  v3 = sub_2665BFF80(a1, a2);
  sub_2665C0098(&unk_287803EA8);
  return v3;
}

uint64_t sub_2665BFF80(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_26666C3D8())
  {
    result = sub_2665C017C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26666C7D8();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_26666C858();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2665C0098(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2665C01EC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2665C017C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E518, &qword_2666749C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2665C01EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E518, &qword_2666749C8);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

_OWORD *sub_2665C02E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2665C02F8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2665C0338(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2665C039C()
{
  OUTLINED_FUNCTION_14();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v4);
  v1[10] = OUTLINED_FUNCTION_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v5);
  v1[11] = OUTLINED_FUNCTION_19();
  v6 = sub_266669708();
  v1[12] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[13] = v7;
  v1[14] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v8);
  v1[15] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v9);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2665C050C()
{
  OUTLINED_FUNCTION_11();
  sub_26655358C(*(v0 + 72) + 8, v0 + 16);
  v1 = *(v0 + 40);
  *(v0 + 144) = v1;
  *(v0 + 160) = __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v2 = type metadata accessor for Snippet(0);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
  v9 = swift_task_alloc();
  *(v0 + 168) = v9;
  *v9 = v0;
  v9[1] = sub_2665C05FC;

  return sub_2665C0BFC();
}

uint64_t sub_2665C05FC()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  OUTLINED_FUNCTION_5_1();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  v5[22] = v0;

  if (v0)
  {
    v8 = v5[17];
    sub_266557D74(v5[16], &unk_28007DE30, &unk_26666EAF0);
    sub_266557D74(v8, &unk_28007DE30, &unk_26666EAF0);
  }

  else
  {
    v5[23] = v3;
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2665C073C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_36_0();
  sub_2666699C8();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  sub_2666696D8();
  sub_26666BB08();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  sub_266669788();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  sub_26656CFC4();
  v27 = swift_task_alloc();
  v14[24] = v27;
  *v27 = v14;
  v27[1] = sub_2665C088C;
  v28 = v14[23];
  v29 = v14[17];
  v31 = v14[15];
  v30 = v14[16];
  v32 = v14[14];
  v33 = v14[7];

  return sub_2665643AC(v33, v29, v30, v28, 0, 0, v31, v32, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2665C088C()
{
  OUTLINED_FUNCTION_5_1();
  v2 = v1[23];
  v17 = v1[17];
  v3 = v1[16];
  v4 = v1[15];
  v5 = v1[14];
  v6 = v1[13];
  v7 = v1[12];
  v8 = v1[11];
  v9 = v1[10];
  v10 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v11 = v10;

  sub_266557D74(v9, &qword_28007D330, &unk_26666EEA0);
  sub_266557D74(v8, &unk_28007DE20, &unk_26666EAE0);
  (*(v6 + 8))(v5, v7);
  sub_266557D74(v4, &qword_28007D338, &qword_26666EEB0);
  sub_266557D74(v3, &unk_28007DE30, &unk_26666EAF0);
  sub_266557D74(v17, &unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2665C0ADC()
{
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_19_5();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_2665C0B6C()
{
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_19_5();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_2665C0BFC()
{
  OUTLINED_FUNCTION_14();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v3);
  v1[9] = OUTLINED_FUNCTION_19();
  v4 = sub_266668D98();
  OUTLINED_FUNCTION_3_3(v4);
  v1[10] = OUTLINED_FUNCTION_19();
  v5 = sub_266669AE8();
  v1[11] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[12] = v6;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2665C0D04()
{
  v46 = v0;
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E520, &qword_266674A98);
  sub_266669CD8();
  v4 = sub_266669AD8();
  v6 = v5;
  v7 = *(v3 + 8);
  v7(v1, v2);

  v8 = sub_266667FA8(v4, v6);
  v9 = v8;
  if (v8 == 5)
  {
    sub_26656CBFC();
    swift_allocError();
    *v10 = v4;
    *(v10 + 8) = v6;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    v11 = 1;
LABEL_15:
    *(v10 + 32) = v11;
    swift_willThrow();

    OUTLINED_FUNCTION_24_1();

    return v34();
  }

  v12 = v8;

  if (v9 != 3)
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v26 = sub_26666C168();
    __swift_project_value_buffer(v26, qword_28156D7E8);
    v27 = sub_26666C148();
    v28 = sub_26666C608();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v45 = v30;
      *v29 = 136315138;
      v31 = sub_266667FF0(v12);
      v33 = sub_2665BFC90(v31, v32, &v45);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_266549000, v27, v28, "[FindEvents UnsupportedValueStrategy] unexpected parameter: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x266789690](v30, -1, -1);
      MEMORY[0x266789690](v29, -1, -1);
    }

    sub_26656CBFC();
    swift_allocError();
    *v10 = 0u;
    *(v10 + 16) = 0u;
    v11 = 2;
    goto LABEL_15;
  }

  v13 = sub_266669CB8();
  v14 = sub_2665C1854(v13);
  if (v14 && ((v15 = v14, v16 = v0[13], v17 = v0[11], sub_266669CD8(), v18 = sub_266669AC8(), v20 = v19, v7(v16, v17), (v20 & 1) == 0) ? (v21 = v18) : (v21 = 0), v22 = sub_2665D1730(v21, v15), , v22))
  {
    v23 = v0[8];
    sub_26666BCA8();
    __swift_project_boxed_opaque_existential_1((v23 + 48), *(v23 + 72));
    v24 = v22;
    sub_266669648();
    v25 = sub_26666BC98();
  }

  else
  {
    v25 = 0;
  }

  v0[15] = v25;
  sub_26666BDA8();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E528, &qword_266674AB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26666EED0;
  *(inited + 32) = v25;
  v41 = MEMORY[0x277D84F90];
  v45 = MEMORY[0x277D84F90];

  for (i = 0; ; i = 1)
  {
    v0[16] = v41;
    if ((i & 1) != 0 || !*(inited + 32))
    {
      break;
    }

    MEMORY[0x2667887C0](v43);
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26666C4B8();
    }

    sub_26666C4E8();
    v41 = v45;
  }

  swift_setDeallocating();
  sub_2666391DC();
  v44 = swift_task_alloc();
  v0[17] = v44;
  *v44 = v0;
  v44[1] = sub_2665C11E8;
  OUTLINED_FUNCTION_4_14();

  return sub_2665D8954();
}

uint64_t sub_2665C11E8()
{
  OUTLINED_FUNCTION_36_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 144) = v0;

  v7 = *(v4 + 72);
  if (!v0)
  {
    *(v5 + 152) = v3;
  }

  sub_266557D74(v7, &unk_28007D130, &unk_266671DF0);

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2665C1364()
{
  OUTLINED_FUNCTION_11();

  v1 = *(v0 + 8);
  v2 = *(v0 + 152);

  return v1(v2);
}

uint64_t sub_2665C13F8()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_2665C1480()
{
  OUTLINED_FUNCTION_14();
  v0[2] = v1;
  v2 = sub_266669AE8();
  v0[3] = v2;
  OUTLINED_FUNCTION_3_1(v2);
  v0[4] = v3;
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_2665C153C()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E520, &qword_266674A98);
  sub_266669CD8();
  v4 = sub_266669AD8();
  v6 = v5;
  v7 = *(v3 + 8);
  v7(v1, v2);

  v8 = sub_266667FA8(v4, v6);
  v9 = v0[5];
  if (v8 == 5)
  {
    sub_26656CBFC();
    swift_allocError();
    *v10 = v4;
    *(v10 + 8) = v6;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_4_7();

    __asm { BRAA            X1, X16 }
  }

  v13 = v8;
  v14 = v0[3];

  v15 = sub_266669CB8();
  sub_266669CD8();
  v16 = sub_266669AC8();
  v18 = v17;
  v7(v9, v14);
  sub_266566D1C(v13, v16, v18 & 1);

  OUTLINED_FUNCTION_4_7();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2665C1718()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656C894;

  return sub_2665C039C();
}

uint64_t sub_2665C17C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656FEA4;

  return sub_2665C1480();
}

uint64_t sub_2665C1854(void *a1)
{
  v2 = [a1 participants];

  if (!v2)
  {
    return 0;
  }

  sub_2665C18BC();
  v3 = sub_26666C498();

  return v3;
}

unint64_t sub_2665C18BC()
{
  result = qword_28007D148;
  if (!qword_28007D148)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28007D148);
  }

  return result;
}

uint64_t sub_2665C1900(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28007D540, &qword_26666F748);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_26666A948();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_23();
  v9 = sub_26666AE88();

  sub_26666A938();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_266557D74(v4, qword_28007D540, &qword_26666F748);
  }

  else
  {
    (*(v7 + 32))(v1, v4, v5);
    sub_26666AE58();
    (*(v7 + 8))(v1, v5);
  }

  if (sub_26666A958())
  {
    sub_26666AFB8();

    sub_2665C1B34(v10);
    sub_26666AE68();
  }

  sub_26666A968();
  if ((v11 & 1) == 0)
  {
    sub_26666AE78();
  }

  if (sub_26666A928())
  {
    sub_26666AE98();

    sub_2665C1900(v12);
    sub_26666AE48();
  }

  return v9;
}

uint64_t sub_2665C1B34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E530, &unk_266674AC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_26666ABA8();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_23();
  v9 = sub_26666AFA8();

  sub_26666AB98();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {

    sub_266557D74(v4, &qword_28007E530, &unk_266674AC0);
  }

  else
  {
    (*(v7 + 32))(v1, v4, v5);
    sub_26666AF98();

    (*(v7 + 8))(v1, v5);
  }

  return v9;
}

uint64_t type metadata accessor for CalendarContactResolver(uint64_t a1)
{
  result = qword_28156D078;
  if (!qword_28156D078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2665C1D58(uint64_t a1)
{
  result = sub_26666B348();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2665C1DCC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_26666C768();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_2665C1DF0(void (*a1)(uint64_t *__return_ptr, id *, uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26666C768())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v15 = MEMORY[0x277D84F90];
    result = sub_26666C898();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x266788B60](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a3 + 8 * j + 32);
      }

      v10 = v9;
      v13 = v9;
      a1(&v14, &v13, &v12);

      if (v3)
      {
      }

      sub_26666C868();
      sub_26666C8A8();
      sub_26666C8B8();
      sub_26666C878();
      if (v8 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return result;
}

void sub_2665C1F68()
{
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_10_11(v2, v3);
  v21 = sub_26666B448();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v23 = v8 - v7;
  if (v1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26666C768())
  {
    if (!i)
    {
LABEL_15:
      OUTLINED_FUNCTION_12_10();
      OUTLINED_FUNCTION_16_3();
      return;
    }

    v25 = MEMORY[0x277D84F90];
    v10 = OUTLINED_FUNCTION_6_10();
    sub_2666337CC(v10, v11, 0);
    if (i < 0)
    {
      break;
    }

    v12 = 0;
    v19 = v1;
    v20 = v1 & 0xC000000000000001;
    v18 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v20)
      {
        v14 = MEMORY[0x266788B60](v12, v1);
      }

      else
      {
        if (v12 >= *(v18 + 16))
        {
          goto LABEL_17;
        }

        v14 = *(v1 + 8 * v12 + 32);
      }

      v24 = v14;
      v22(&v24);
      if (v0)
      {
        goto LABEL_20;
      }

      v0 = 0;

      v16 = *(v25 + 16);
      v15 = *(v25 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2666337CC(v15 > 1, v16 + 1, 1);
      }

      *(v25 + 16) = v16 + 1;
      OUTLINED_FUNCTION_11_13();
      (*(v5 + 32))(v25 + v17 + *(v5 + 72) * v16, v23, v21);
      ++v12;
      v1 = v19;
      if (v13 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
}

uint64_t sub_2665C217C(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26666C768())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v15 = MEMORY[0x277D84F90];
    sub_26666C898();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x266788B60](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v13 = v11;
      a1(&v14, &v13);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v14;
      sub_26666C868();
      sub_26666C8A8();
      sub_26666C8B8();
      sub_26666C878();
      if (v10 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

void sub_2665C22F0()
{
  OUTLINED_FUNCTION_15_3();
  v1 = v0;
  v3 = v2;
  v22 = v4;
  v21 = sub_266669738();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = *(v3 + 16);
  if (v11)
  {
    v23 = MEMORY[0x277D84F90];
    v12 = OUTLINED_FUNCTION_6_10();
    sub_2666339E0(v12, v11, 0);
    v13 = sub_2666697B8();
    OUTLINED_FUNCTION_3_1(v13);
    v15 = v3 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = *(v16 + 72);
    while (1)
    {
      v22(v15);
      if (v1)
      {
        break;
      }

      v1 = 0;
      v18 = *(v23 + 16);
      v17 = *(v23 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2666339E0(v17 > 1, v18 + 1, 1);
      }

      *(v23 + 16) = v18 + 1;
      OUTLINED_FUNCTION_11_13();
      (*(v6 + 32))(v23 + v19 + *(v6 + 72) * v18, v10, v21);
      v15 += v20;
      if (!--v11)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_12_10();
    OUTLINED_FUNCTION_16_3();
  }
}

void sub_2665C24BC()
{
  OUTLINED_FUNCTION_15_3();
  v4 = OUTLINED_FUNCTION_10_11(v2, v3);
  v5 = type metadata accessor for Snippet.Event(v4);
  v6 = OUTLINED_FUNCTION_3_1(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  if (v1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26666C768())
  {
    if (!i)
    {
LABEL_17:
      OUTLINED_FUNCTION_12_10();
      OUTLINED_FUNCTION_16_3();
      return;
    }

    v25 = MEMORY[0x277D84F90];
    v11 = OUTLINED_FUNCTION_6_10();
    sub_266633B08(v11, v12, 0);
    if (i < 0)
    {
      break;
    }

    v13 = 0;
    v21 = i;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x266788B60](v13, v1);
      }

      else
      {
        if (v13 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v15 = *(v1 + 8 * v13 + 32);
      }

      v16 = v15;
      v24 = v15;
      v22(&v24, &v23);
      if (v0)
      {

        goto LABEL_17;
      }

      v0 = 0;

      v18 = *(v25 + 16);
      v17 = *(v25 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_266633B08(v17 > 1, v18 + 1, 1);
      }

      *(v25 + 16) = v18 + 1;
      OUTLINED_FUNCTION_11_13();
      sub_2665C47F4(v9, v25 + v19 + *(v20 + 72) * v18, type metadata accessor for Snippet.Event);
      ++v13;
      if (v14 == v21)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
}

void sub_2665C26C0()
{
  OUTLINED_FUNCTION_15_3();
  v1 = v0;
  v3 = v2;
  v22 = v4;
  v5 = type metadata accessor for Snippet.EventGroup(0);
  v6 = OUTLINED_FUNCTION_3_1(v5);
  v8 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = *(v3 + 16);
  if (v12)
  {
    v24 = MEMORY[0x277D84F90];
    v13 = OUTLINED_FUNCTION_6_10();
    sub_266633BC8(v13, v12, 0);
    v14 = _s17DayEventGroupingsV8GroupingVMa(0);
    OUTLINED_FUNCTION_3_1(v14);
    v16 = v3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v21 = *(v17 + 72);
    while (1)
    {
      v22(v16, &v23);
      if (v1)
      {
        break;
      }

      v1 = 0;
      v19 = *(v24 + 16);
      v18 = *(v24 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_266633BC8(v18 > 1, v19 + 1, 1);
      }

      *(v24 + 16) = v19 + 1;
      OUTLINED_FUNCTION_11_13();
      sub_2665C47F4(v11, v24 + v20 + *(v8 + 72) * v19, type metadata accessor for Snippet.EventGroup);
      v16 += v21;
      if (!--v12)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_16_3();
}

void sub_2665C28D0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_24(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2665C3FD0(v4, 1, sub_2665C6350);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_7_14();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2665C2988(uint64_t a1)
{
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = *(*v2 + 16);
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2665C3FD0(v7 + v6, 1, sub_2665C6350);
  v1 = *v2;
  v8 = *(*v2 + 16);
  v9 = (*(*v2 + 24) >> 1) - v8;
  v10 = sub_2665C463C(v30, (*v2 + 16 * v8 + 32), v9, v5);
  if (v10 < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v10)
  {
    v12 = *(v1 + 16);
    v13 = __OFADD__(v12, v10);
    v14 = v10 + v12;
    if (v13)
    {
      __break(1u);
LABEL_13:
      v17 = (v11 + 64) >> 6;
      while (1)
      {
        v18 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_33;
        }

        if (v18 >= v17)
        {
          v32 = v4;
          v33 = 0;
          goto LABEL_7;
        }

        v19 = *(v9 + 8 * v18);
        ++v4;
        if (v19)
        {
          v15 = (v19 - 1) & v19;
          v16 = __clz(__rbit64(v19)) | (v18 << 6);
          v4 = v18;
          goto LABEL_18;
        }
      }
    }

    *(v1 + 16) = v14;
  }

  v5 = v30[0];
  if (v10 != v9)
  {
LABEL_7:
    sub_2665C4798(v5);
    *v2 = v1;
    return;
  }

LABEL_10:
  v3 = *(v1 + 16);
  v9 = v30[1];
  v11 = v31;
  v4 = v32;
  v28 = v31;
  if (!v33)
  {
    goto LABEL_13;
  }

  v15 = (v33 - 1) & v33;
  v16 = __clz(__rbit64(v33)) | (v32 << 6);
  v17 = (v31 + 64) >> 6;
LABEL_18:
  v20 = (*(v5 + 48) + 16 * v16);
  v22 = *v20;
  v21 = v20[1];

LABEL_19:
  v29 = *(v1 + 24) >> 1;
  if (v29 < v3 + 1)
  {
    sub_2665C6350();
    v1 = v27;
    v29 = *(v27 + 24) >> 1;
  }

  while (1)
  {
    if (v3 >= v29)
    {
      *(v1 + 16) = v3;
      goto LABEL_19;
    }

    v23 = (v1 + 32 + 16 * v3);
    *v23 = v22;
    v23[1] = v21;
    ++v3;
    if (!v15)
    {
      break;
    }

    v24 = v4;
LABEL_28:
    v25 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v26 = (*(v5 + 48) + ((v24 << 10) | (16 * v25)));
    v22 = *v26;
    v21 = v26[1];
  }

  while (1)
  {
    v24 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v24 >= v17)
    {
      v31 = v28;
      v32 = v4;
      v33 = 0;
      *(v1 + 16) = v3;
      goto LABEL_7;
    }

    v15 = *(v9 + 8 * v24);
    ++v4;
    if (v15)
    {
      v4 = v24;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_2665C2BE8(unint64_t a1, void (*a2)(uint64_t, void, uint64_t))
{
  v5 = sub_2665C1DCC(a1);
  v6 = sub_2665C1DCC(*v2);
  v7 = __OFADD__(v6, v5);
  result = v6 + v5;
  if (v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_2665C3F30(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v12 < 1)
  {
LABEL_6:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2665C2C9C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_24(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2665C3FD0(v4, 1, sub_2665C6C1C);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_7_14();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E548, &qword_266674B08);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_2665C2D98(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_24(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_2665C3FD0(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2665C2E9C(uint64_t a1, uint64_t a2)
{
  v5 = sub_26666B328();
  if (!v3)
  {
    v6 = v5;
    MEMORY[0x28223BE20](v5);
    v8[2] = v2;
    v8[3] = a2;
    v2 = sub_2665C1DF0(sub_2665C3EBC, v8, v6);
  }

  return v2;
}

_UNKNOWN **sub_2665C2F48@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  result = sub_2665C2F98(*a1, a2);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

_UNKNOWN **sub_2665C2F98(_UNKNOWN **a1, uint64_t a2)
{
  if (*(v2 + *(type metadata accessor for CalendarContactResolver(0) + 20)) == 1)
  {
    v54[5] = v2;
    v54[6] = a2;
    v56 = v3;
    v57 = a1;
    v6 = sub_2665C4048(a1);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v58 = MEMORY[0x277D84F90];
    v8 = sub_2665C1DCC(v7);
    v9 = 0;
    a1 = &off_279BCF000;
    while (v8 != v9)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x266788B60](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v12 = [v10 personHandle];
      if (v12)
      {

        sub_26666C868();
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      else
      {
      }

      ++v9;
    }

    v55 = v58;
    v18 = sub_2665C4048(v57);
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v58 = MEMORY[0x277D84F90];
    v20 = sub_2665C1DCC(v19);
    for (i = 0; v20 != i; ++i)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x266788B60](i, v19);
      }

      else
      {
        if (i >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v22 = *(v19 + 8 * i + 32);
      }

      v23 = v22;
      if (__OFADD__(i, 1))
      {
        goto LABEL_50;
      }

      v24 = [v22 personHandle];
      if (v24)
      {
        v25 = v24;
      }

      else
      {
        sub_26666C868();
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }
    }

    v26 = v58;
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v27 = sub_26666C168();
    __swift_project_value_buffer(v27, qword_28156D7E8);
    v28 = v55;

    v29 = sub_26666C148();
    v30 = sub_26666C618();
    v31 = v56;
    if (os_log_type_enabled(v29, v30))
    {
      v32 = swift_slowAlloc();
      *v32 = 134218240;
      *(v32 + 4) = sub_2665C1DCC(v28);

      *(v32 + 12) = 2048;
      *(v32 + 14) = sub_2665C1DCC(v26);

      _os_log_impl(&dword_266549000, v29, v30, "[CalendarContactResolver] Alternatives with handles: %ld without: %ld ", v32, 0x16u);
      MEMORY[0x266789690](v32, -1, -1);
    }

    else
    {
    }

    MEMORY[0x28223BE20](v33);
    v54[2] = v35;
    v54[3] = v34;
    v36 = v31;
    v37 = sub_2665C3B3C(sub_2665C45B0, v54, v26);

    if (v36)
    {

      return v57;
    }

    v38 = sub_26666C148();
    v39 = sub_26666C618();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 134217984;
      *(v40 + 4) = sub_2665C1DCC(v37);

      _os_log_impl(&dword_266549000, v38, v39, "[CalendarContactResolver] resolved alternatives: %ld", v40, 0xCu);
      MEMORY[0x266789690](v40, -1, -1);
    }

    else
    {
    }

    a1 = v57;
    v58 = v55;
    sub_2665C2BE8(v37, sub_2665C4400);
    sub_2665C40B8(v58, a1);

    v41 = a1;
    v14 = sub_26666C148();
    v42 = sub_26666C618();

    if (os_log_type_enabled(v14, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v56 = 0;
      v45 = v44;
      v58 = v44;
      *v43 = 136315138;
      v46 = v41;
      v47 = [v46 description];
      v48 = sub_26666C308();
      v50 = v49;

      v51 = sub_2665BFC90(v48, v50, &v58);

      *(v43 + 4) = v51;
      _os_log_impl(&dword_266549000, v14, v42, "[CalendarContactResolver] fully resolved skeleton person: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x266789690](v45, -1, -1);
      v17 = v43;
      goto LABEL_45;
    }
  }

  else
  {
    if (qword_28156C150 != -1)
    {
LABEL_52:
      swift_once();
    }

    v13 = sub_26666C168();
    __swift_project_value_buffer(v13, qword_28156D7E8);
    v14 = sub_26666C148();
    v15 = sub_26666C618();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_266549000, v14, v15, "[CalendarContactResolver] fullyResolveHandles is false, returning skeleton", v16, 2u);
      v17 = v16;
LABEL_45:
      MEMORY[0x266789690](v17, -1, -1);
    }
  }

  v52 = a1;
  return a1;
}

uint64_t sub_2665C360C@<X0>(void **a1@<X0>, uint64_t *a3@<X8>)
{
  v42 = a3;
  v5 = sub_26666B448();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26658160C(*a1);
  if (!v9)
  {
    sub_26656CBFC();
    swift_allocError();
    *v14 = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 2;
    return swift_willThrow();
  }

  sub_26666B438();
  sub_26666B3E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3D0, &unk_26666EF70);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26666EED0;
  (*(v6 + 16))(v11 + v10, v8, v5);
  v12 = sub_26666B328();
  if (v3)
  {
    (*(v6 + 8))(v8, v5);
  }

  v40 = 0;
  v15 = v12;

  result = sub_2665C1DCC(v15);
  v16 = 0;
  v50 = v15 & 0xC000000000000001;
  v51 = result;
  v41 = v15;
  v48 = v15 + 32;
  v49 = v15 & 0xFFFFFFFFFFFFFF8;
  v53 = MEMORY[0x277D84F90];
  v47 = v8;
  v43 = v6;
  v44 = v5;
  while (1)
  {
    if (v16 == v51)
    {

      result = (*(v6 + 8))(v8, v5);
      *v42 = v53;
      return result;
    }

    if (v50)
    {
      result = MEMORY[0x266788B60](v16, v41);
      v18 = result;
      v17 = v53;
    }

    else
    {
      v17 = v53;
      if (v16 >= *(v49 + 16))
      {
        goto LABEL_47;
      }

      result = *(v48 + 8 * v16);
      v18 = result;
    }

    v19 = __OFADD__(v16, 1);
    v20 = v16 + 1;
    if (v19)
    {
      break;
    }

    v21 = sub_2665C4048(v18);

    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    if (v22 >> 62)
    {
      v23 = sub_26666C768();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = v17 >> 62;
    if (v17 >> 62)
    {
      result = sub_26666C768();
    }

    else
    {
      result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = result + v23;
    if (__OFADD__(result, v23))
    {
      goto LABEL_48;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v24)
      {
LABEL_24:
        sub_26666C768();
      }

LABEL_25:
      result = sub_26666C828();
      v53 = result;
      v26 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_26;
    }

    if (v24)
    {
      goto LABEL_24;
    }

    v26 = v17 & 0xFFFFFFFFFFFFFF8;
    if (v25 > *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_25;
    }

LABEL_26:
    v55 = v20;
    v27 = *(v26 + 16);
    v28 = (*(v26 + 24) >> 1) - v27;
    v29 = v26 + 8 * v27;
    v52 = v26;
    if (v22 >> 62)
    {
      v31 = sub_26666C768();
      if (v31)
      {
        v32 = v31;
        result = sub_26666C768();
        if (v28 < result)
        {
          goto LABEL_52;
        }

        if (v32 < 1)
        {
          goto LABEL_53;
        }

        v45 = result;
        v46 = v23;
        v33 = v29 + 32;
        sub_2665C47A0(&qword_28007E540, &qword_28007E538, &unk_266674AF8);
        for (i = 0; i != v32; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E538, &unk_266674AF8);
          v35 = sub_2665C4548(v54, i, v22);
          v37 = *v36;
          (v35)(v54, 0);
          *(v33 + 8 * i) = v37;
        }

        v6 = v43;
        v5 = v44;
        v30 = v45;
        v23 = v46;
        goto LABEL_36;
      }

LABEL_40:

      v8 = v47;
      v16 = v55;
      if (v23 > 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v30 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v30)
      {
        goto LABEL_40;
      }

      if (v28 < v30)
      {
        goto LABEL_51;
      }

      sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
      swift_arrayInitWithCopy();
LABEL_36:

      v8 = v47;
      v16 = v55;
      if (v30 < v23)
      {
        goto LABEL_49;
      }

      if (v30 > 0)
      {
        v38 = *(v52 + 16);
        v19 = __OFADD__(v38, v30);
        v39 = v38 + v30;
        if (v19)
        {
          goto LABEL_50;
        }

        *(v52 + 16) = v39;
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_2665C3B3C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  result = sub_2665C1DCC(a3);
  v7 = 0;
  v36 = a3 & 0xC000000000000001;
  v37 = result;
  v35 = a3 & 0xFFFFFFFFFFFFFF8;
  v8 = MEMORY[0x277D84F90];
  v30 = a3;
  v33 = a3 + 32;
  while (1)
  {
    if (v7 == v37)
    {
      return v8;
    }

    if (v36)
    {
      result = MEMORY[0x266788B60](v7, v30);
    }

    else
    {
      if (v7 >= *(v35 + 16))
      {
        goto LABEL_42;
      }

      result = *(v33 + 8 * v7);
    }

    v9 = result;
    v10 = __OFADD__(v7, 1);
    v11 = v7 + 1;
    if (v10)
    {
      break;
    }

    v42 = result;
    v12 = v4;
    a1(&v41, &v42);
    if (v4)
    {

      return v8;
    }

    v13 = v41;
    if (v41 >> 62)
    {
      v14 = sub_26666C768();
    }

    else
    {
      v14 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v8 >> 62;
    if (v8 >> 62)
    {
      result = sub_26666C768();
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = result + v14;
    if (__OFADD__(result, v14))
    {
      goto LABEL_43;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v39 = v14;
    if (result)
    {
      if (!v15)
      {
        v17 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_18:
      sub_26666C768();
      goto LABEL_19;
    }

    if (v15)
    {
      goto LABEL_18;
    }

LABEL_19:
    result = sub_26666C828();
    v8 = result;
    v17 = result & 0xFFFFFFFFFFFFFF8;
LABEL_20:
    v38 = v11;
    v18 = *(v17 + 16);
    v19 = (*(v17 + 24) >> 1) - v18;
    v20 = v17 + 8 * v18;
    if (v13 >> 62)
    {
      v22 = sub_26666C768();
      if (v22)
      {
        v23 = v22;
        result = sub_26666C768();
        v32 = result;
        if (v19 < result)
        {
          goto LABEL_46;
        }

        if (v23 < 1)
        {
          goto LABEL_48;
        }

        v31 = v8;
        sub_2665C47A0(&qword_28007E540, &qword_28007E538, &unk_266674AF8);
        for (i = 0; i != v23; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E538, &unk_266674AF8);
          v25 = sub_2665C4548(v40, i, v13);
          v27 = *v26;
          (v25)(v40, 0);
          *(v20 + 32 + 8 * i) = v27;
        }

        v8 = v31;
        v4 = v12;
        v21 = v32;
        goto LABEL_30;
      }
    }

    else
    {
      v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        if (v19 < v21)
        {
          goto LABEL_47;
        }

        sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
        swift_arrayInitWithCopy();
LABEL_30:

        if (v21 < v39)
        {
          goto LABEL_44;
        }

        if (v21 > 0)
        {
          v28 = *(v17 + 16);
          v10 = __OFADD__(v28, v21);
          v29 = v28 + v21;
          if (v10)
          {
            goto LABEL_45;
          }

          *(v17 + 16) = v29;
        }

        goto LABEL_35;
      }
    }

    if (v39 > 0)
    {
      goto LABEL_44;
    }

LABEL_35:
    v7 = v38;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

unint64_t sub_2665C3EDC(unint64_t result, char a2, uint64_t a3)
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

uint64_t sub_2665C3F30(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_26666C768();
LABEL_9:
  result = sub_26666C828();
  *v2 = result;
  return result;
}

uint64_t sub_2665C3FD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_2665C4048(void *a1)
{
  v1 = [a1 alternatives];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
  v3 = sub_26666C498();

  return v3;
}

void sub_2665C40B8(uint64_t a1, void *a2)
{
  sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
  v3 = sub_26666C488();
  [a2 setAlternatives_];
}

void sub_2665C4134()
{
  OUTLINED_FUNCTION_4_21();
  if (v2)
  {
    v5 = sub_26666C768();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
      return;
    }
  }

  if (!v1)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v6 = sub_2665C1DCC(v0);
  if (v6 > v3)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v2)
  {
    v7 = sub_266552C44(0, &qword_28156C098, 0x277CC5A28);
    OUTLINED_FUNCTION_13_7(v7);
    return;
  }

  if (v5 < 1)
  {
    goto LABEL_15;
  }

  v24 = v6;
  sub_2665C47A0(&qword_28007E560, &qword_28007E558, &unk_266674B10);
  do
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E558, &unk_266674B10);
    v16 = OUTLINED_FUNCTION_5_17(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25[0]);
    v19 = sub_2665C4548(v16, v17, v18);
    v21 = *v20;
    (v19)(v25, 0);
    OUTLINED_FUNCTION_9_13();
  }

  while (!v22);
}

uint64_t sub_2665C427C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_26666C768();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_2665C1DCC(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_266552C44(0, &qword_28156C110, 0x277CD3AD8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_2665C47A0(&qword_28007E550, &qword_28007E548, &qword_266674B08);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E548, &qword_266674B08);
          v9 = sub_2665C45CC(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2665C4400()
{
  OUTLINED_FUNCTION_4_21();
  if (v2)
  {
    v5 = sub_26666C768();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
      return;
    }
  }

  if (!v1)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v6 = sub_2665C1DCC(v0);
  if (v6 > v3)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v2)
  {
    v7 = sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
    OUTLINED_FUNCTION_13_7(v7);
    return;
  }

  if (v5 < 1)
  {
    goto LABEL_15;
  }

  v24 = v6;
  sub_2665C47A0(&qword_28007E540, &qword_28007E538, &unk_266674AF8);
  do
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E538, &unk_266674AF8);
    v16 = OUTLINED_FUNCTION_5_17(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25[0]);
    v19 = sub_2665C4548(v16, v17, v18);
    v21 = *v20;
    (v19)(v25, 0);
    OUTLINED_FUNCTION_9_13();
  }

  while (!v22);
}

void (*sub_2665C4548(uint64_t a1, unint64_t a2, uint64_t a3))(id *a1)
{
  OUTLINED_FUNCTION_0_24(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x266788B60](v5, v4);
  }

  *v3 = v7;
  return sub_2665C4860;
}

void (*sub_2665C45CC(uint64_t a1, unint64_t a2, uint64_t a3))(id *a1)
{
  OUTLINED_FUNCTION_0_24(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x266788B60](v5, v4);
  }

  *v3 = v7;
  return sub_2665C4634;
}

void *sub_2665C463C(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2665C47A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2665C47F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t OUTLINED_FUNCTION_0_24(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_26654E0F0(a3);

  return sub_2665C3EDC(a2, v5, a3);
}

uint64_t OUTLINED_FUNCTION_10_11(uint64_t a1, uint64_t a2)
{
  *(v2 - 112) = a1;
  *(v2 - 104) = a2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t EventEntityRepresentation.__allocating_init(_:)()
{
  sub_26666BEE8();
  OUTLINED_FUNCTION_1_25();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_22();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_0_25();
  v3(v2);
  sub_26666BF48();
  v4 = OUTLINED_FUNCTION_3_20();
  v5(v4);
  return v1;
}

uint64_t EventEntityRepresentation.init(_:)()
{
  sub_26666BEE8();
  OUTLINED_FUNCTION_1_25();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_22();
  v2 = OUTLINED_FUNCTION_0_25();
  v3(v2);
  sub_26666BF48();
  v4 = OUTLINED_FUNCTION_3_20();
  v5(v4);
  return v0;
}

uint64_t EventEntityRepresentation.__deallocating_deinit()
{
  v0 = _s19SiriCalendarIntents25EventEntityRepresentationCfd_0();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t type metadata accessor for EventEntityRepresentation(uint64_t a1)
{
  result = qword_28007E5B0;
  if (!qword_28007E5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2665C4DBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_2665C4E50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_2665C4ED8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EventEntityRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2665C4F40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_2665C4FA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26666BF08();
  *a1 = result;
  return result;
}

uint64_t sub_2665C50D0(SEL *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E5C0, &unk_266674E30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26666EED0;
  v4 = [v1 *a1];
  v5 = &off_28780B470;
  if (!v4)
  {
    v5 = 0;
  }

  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return v3;
}

void *sub_2665C5154()
{
  v1 = sub_26662571C(v0);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = sub_2665C51A0(v2);

  return v3;
}

void *sub_2665C51A0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_26666C768();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v11 = MEMORY[0x277D84F90];
  result = sub_266633BA8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v11;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x266788B60](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_26656CC50();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E5C8, &unk_26667AC90);
      swift_dynamicCast();
      v7 = v10;
      v9 = *(v11 + 16);
      v8 = *(v11 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_266633BA8((v8 > 1), v9 + 1, 1);
        v7 = v10;
      }

      ++v5;
      *(v11 + 16) = v9 + 1;
      *(v11 + 16 * v9 + 32) = v7;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2665C530C()
{
  if (!sub_26666A9F8())
  {
    return 2;
  }

  return 0;
}

uint64_t sub_2665C5338(uint64_t a1)
{
  sub_26666A218();
  v1 = sub_26666B228();

  if (*(v1 + 16))
  {
    sub_2665C53A8(1701667182, 0xE400000000000000);
    v3 = v2;
  }

  else
  {

    v3 = 0;
  }

  return v3 & 1;
}

unint64_t sub_2665C53A8(uint64_t a1, uint64_t a2)
{
  sub_26666CB88();
  sub_26666C368();
  v4 = sub_26666CBC8();

  return sub_2665C550C(a1, a2, v4);
}

unint64_t sub_2665C5420(uint64_t a1)
{
  sub_26666CB88();
  MEMORY[0x266788EE0](a1);
  v2 = sub_26666CBC8();
  return sub_2665C55C0(a1, v2);
}

unint64_t sub_2665C5488(uint64_t a1)
{
  sub_266668D38();
  sub_2665C57C8(&qword_28007E5D0, MEMORY[0x277CC9588]);
  v2 = sub_26666C268();

  return sub_2665C5620(a1, v2);
}

unint64_t sub_2665C550C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_26666CAC8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2665C55C0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_2665C5620(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_266668D38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_2665C57C8(&qword_28007E5D8, MEMORY[0x277CC9598]);
    v9 = sub_26666C2E8();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2665C57C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_266668D38();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2665C583C()
{
  v0 = sub_26666A558();
  v1 = 0;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x277D84F90];
  for (i = v0 + 32; ; i += 40)
  {
    if (v2 == v1)
    {

      sub_26666A548();
      sub_26666A578();
      return sub_26666A568();
    }

    if (v1 >= *(v0 + 16))
    {
      break;
    }

    sub_26655358C(i, v11);
    sub_2665C59F0(v11, &v8);
    __swift_destroy_boxed_opaque_existential_1(v11);
    if (v9)
    {
      sub_26654B7D8(&v8, v10);
      sub_26654B7D8(v10, &v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_2665C6424(0, v3[2] + 1, 1, v3);
      }

      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        v3 = sub_2665C6424((v5 > 1), v6 + 1, 1, v3);
      }

      v3[2] = v6 + 1;
      sub_26654B7D8(&v8, &v3[5 * v6 + 4]);
    }

    else
    {
      sub_266594028(&v8, &qword_28007E5E0, &qword_266674E60);
    }

    ++v1;
  }

  __break(1u);

  __swift_destroy_boxed_opaque_existential_1(v11);

  __break(1u);
  return result;
}

uint64_t sub_2665C59F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v3 = sub_26666A588();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = sub_26666A4B8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v35 = a1;
  sub_26655358C(a1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D238, &qword_26666E2C0);
  if (swift_dynamicCast())
  {
    (*(v11 + 32))(v14, v16, v10);
    if (sub_2665C5E5C())
    {
      v17 = MEMORY[0x277D5E670];
      v18 = v36;
      v36[3] = v10;
      v18[4] = v17;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
      (*(v11 + 16))(boxed_opaque_existential_1, v14, v10);
      (*(v11 + 8))(v14, v10);
    }

    else
    {
      (*(v11 + 8))(v14, v10);
      v22 = v36;
      v36[4] = 0;
      *v22 = 0u;
      *(v22 + 1) = 0u;
    }
  }

  else if (swift_dynamicCast())
  {
    (*(v4 + 32))(v7, v9, v3);
    v20 = MEMORY[0x277D5E728];
    v21 = v36;
    v36[3] = v3;
    v21[4] = v20;
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_2665C583C();
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v23 = sub_26666C168();
    __swift_project_value_buffer(v23, qword_28156D7E8);
    v24 = v35;
    sub_26655358C(v35, v39);
    v25 = sub_26666C148();
    v26 = sub_26666C608();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41 = v28;
      *v27 = 136315138;
      __swift_project_boxed_opaque_existential_1(v39, v39[3]);
      DynamicType = swift_getDynamicType();
      v38 = v39[4];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D240, &qword_26666E2C8);
      v29 = sub_26666C318();
      v31 = v30;
      __swift_destroy_boxed_opaque_existential_1(v39);
      v32 = sub_2665BFC90(v29, v31, &v41);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_266549000, v25, v26, "Got unknown node type: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x266789690](v28, -1, -1);
      MEMORY[0x266789690](v27, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v39);
    }

    sub_26655358C(v24, v36);
  }

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_2665C5E5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E5F0, &qword_266674E70);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E5F8, &qword_266674E78);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_26666A4A8();
  sub_2665C60BC(v6, v2);

  v7 = sub_26666A3A8();
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    v8 = &qword_28007E5F0;
    v9 = &qword_266674E70;
    v10 = v2;
  }

  else
  {
    sub_26666A398();
    OUTLINED_FUNCTION_4_5();
    (*(v11 + 8))(v2, v7);
    v12 = sub_26666A388();
    if (__swift_getEnumTagSinglePayload(v5, 1, v12) != 1)
    {
      v13 = sub_26666A378();
      OUTLINED_FUNCTION_4_5();
      (*(v14 + 8))(v5, v12);
      return v13 & 1;
    }

    v8 = &qword_28007E5F8;
    v9 = &qword_266674E78;
    v10 = v5;
  }

  sub_266594028(v10, v8, v9);
  v13 = 0;
  return v13 & 1;
}

char *sub_2665C6028(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_2665C4864();
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return MEMORY[0x266788B60](v3, a1);
  }

  result = sub_26666C768();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_2665C60BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_26666A3A8();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_26666A3A8();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

void sub_2665C6184()
{
  OUTLINED_FUNCTION_17_8();
  if (v4)
  {
    OUTLINED_FUNCTION_11_14();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16_9();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_10_12();
    }
  }

  OUTLINED_FUNCTION_13_8();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E608, &unk_26667A130);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    *(v7 + 2) = v2;
    *(v7 + 3) = 2 * ((v8 - 32) / 24);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[24 * v2] <= v9)
    {
      memmove(v9, v10, 24 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2665C627C()
{
  OUTLINED_FUNCTION_17_8();
  if (v3)
  {
    OUTLINED_FUNCTION_11_14();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16_9();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_10_12();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D250, &qword_26666E378);
    v10 = OUTLINED_FUNCTION_19_12(v9);
    _swift_stdlib_malloc_size(v10);
    OUTLINED_FUNCTION_14_11();
    *(v10 + 2) = v7;
    *(v10 + 3) = v11;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = v0 + 32;
  if (v1)
  {
    if (v10 != v0 || &v13[16 * v7] <= v12)
    {
      memmove(v12, v13, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v7);
  }
}

void sub_2665C6350()
{
  OUTLINED_FUNCTION_17_8();
  if (v4)
  {
    OUTLINED_FUNCTION_11_14();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16_9();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_10_12();
    }
  }

  OUTLINED_FUNCTION_13_8();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
    v8 = OUTLINED_FUNCTION_19_12(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_14_11();
    *(v8 + 2) = v2;
    *(v8 + 3) = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = v8 + 32;
  v11 = v0 + 32;
  if (v1)
  {
    if (v8 != v0 || &v11[16 * v2] <= v10)
    {
      memmove(v10, v11, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_2665C6424(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E5E8, &qword_266674E68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D238, &qword_26666E2C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2665C655C()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007E600, &qword_26667A0F0);
  v8 = OUTLINED_FUNCTION_6_11();
  type metadata accessor for CalendarEventAttendeeIntentNode(v8);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(type metadata accessor for CalendarEventAttendeeIntentNode, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void sub_2665C6634()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007D3D0, &unk_26666EF70);
  OUTLINED_FUNCTION_6_11();
  sub_26666B448();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(MEMORY[0x277D55FF8], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void sub_2665C670C()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007E640, &qword_266674E90);
  OUTLINED_FUNCTION_6_11();
  sub_26666C188();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(MEMORY[0x277D5FE08], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void sub_2665C67E4()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007E630, &qword_26667A150);
  OUTLINED_FUNCTION_6_11();
  sub_266669738();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(MEMORY[0x277D5BAF8], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void sub_2665C68BC()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007E658, &qword_266674EA8);
  v8 = OUTLINED_FUNCTION_6_11();
  type metadata accessor for Snippet.Event(v8);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(type metadata accessor for Snippet.Event, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void sub_2665C6994()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007E628, &unk_26667A160);
  OUTLINED_FUNCTION_6_11();
  sub_26666C228();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(MEMORY[0x277D5FEB0], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void sub_2665C6A6C()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007E650, &qword_266674EA0);
  v8 = OUTLINED_FUNCTION_6_11();
  type metadata accessor for Snippet.Participant(v8);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(type metadata accessor for Snippet.Participant, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void sub_2665C6B44()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007E638, &unk_266676EC0);
  OUTLINED_FUNCTION_6_11();
  sub_2666697B8();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(MEMORY[0x277D5BCB0], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void sub_2665C6C1C()
{
  OUTLINED_FUNCTION_17_8();
  if (v4)
  {
    OUTLINED_FUNCTION_11_14();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16_9();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_10_12();
    }
  }

  OUTLINED_FUNCTION_13_8();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD30, &qword_2666725F0);
    v8 = OUTLINED_FUNCTION_19_12(v7);
    v9 = _swift_stdlib_malloc_size(v8);
    v8[2] = v2;
    v8[3] = 2 * ((v9 - 32) / 8);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v8 != v0 || &v0[v2 + 4] <= v8 + 4)
    {
      memmove(v8 + 4, v0 + 4, 8 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E548, &qword_266674B08);
    swift_arrayInitWithCopy();
  }
}

void sub_2665C6D24()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007E648, &qword_266674E98);
  v8 = OUTLINED_FUNCTION_6_11();
  type metadata accessor for DayEventsReadingFlow.Window(v8);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(type metadata accessor for DayEventsReadingFlow.Window, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void sub_2665C6DFC()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007E618, &qword_266674E80);
  v8 = OUTLINED_FUNCTION_6_11();
  _s17DayEventGroupingsV8GroupingVMa(v8);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(_s17DayEventGroupingsV8GroupingVMa, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void sub_2665C6ED4()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007E620, &qword_266674E88);
  OUTLINED_FUNCTION_6_11();
  sub_266668D38();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(MEMORY[0x277CC9578], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void sub_2665C6FAC()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007E660, &qword_2666778D0);
  OUTLINED_FUNCTION_6_11();
  sub_266669368();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(MEMORY[0x277D5B800], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void *sub_2665C7084(uint64_t a1, uint64_t a2)
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

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v5 = OUTLINED_FUNCTION_19_12(v4);
  v6 = _swift_stdlib_malloc_size(v5);
  v5[2] = a1;
  v5[3] = (2 * ((v6 - 32) / 8)) | 1;
  return v5;
}

void *sub_2665C70FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = OUTLINED_FUNCTION_6_11();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v10)
  {
    if ((result - v11) != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_2665C71F4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_26(a3, result);
  }

  return result;
}

char *sub_2665C730C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_26(a3, result);
  }

  return result;
}

char *sub_2665C7344(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_26(a3, result);
  }

  return result;
}

void sub_2665C7364(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_4_5(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_15_10();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_15_10();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t OUTLINED_FUNCTION_4_22()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_5_18(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  sub_2665C7364(v2 + a2, v4, v3 + a2, a1);
}

void *OUTLINED_FUNCTION_12_11(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2665C70FC(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_19_12(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t type metadata accessor for UpdateEventCorrectionsIntentWrapper(uint64_t a1)
{
  result = qword_28007E668;
  if (!qword_28007E668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2665C75D4(uint64_t a1)
{
  sub_2665C7670();
  if (v1 <= 0x3F)
  {
    sub_2665C76CC(319);
    if (v2 <= 0x3F)
    {
      sub_266668D98();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2665C7670()
{
  result = qword_28156CF58[0];
  if (!qword_28156CF58[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_28156CF58);
  }

  return result;
}

void sub_2665C76CC(uint64_t a1)
{
  if (!qword_28007E678)
  {
    sub_26666AA48();
    v1 = sub_26666C6B8();
    if (!v2)
    {
      atomic_store(v1, &qword_28007E678);
    }
  }
}

void sub_2665C7724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2665C485C();
  OUTLINED_FUNCTION_12_12();
  while (v6 != v7)
  {
    if (v4)
    {
      MEMORY[0x266788B60](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_17;
      }
    }

    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_3_22();
    v11(v9, v10);
    if (v3)
    {

      return;
    }

    if (v14)
    {
      MEMORY[0x2667887C0](v12);
      OUTLINED_FUNCTION_9_14();
      if (v13)
      {
        sub_26666C4B8();
      }

      sub_26666C4E8();
    }

    ++v7;
  }
}

void sub_2665C785C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  a4(a3);
  OUTLINED_FUNCTION_12_12();
  while (v7 != v8)
  {
    if (v5)
    {
      v10 = MEMORY[0x266788B60](v8, a3);
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        goto LABEL_17;
      }

      v10 = *(a3 + 8 * v8 + 32);
    }

    v11 = v10;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_3_22();
    v12();
    if (v4)
    {

      return;
    }

    if (v14)
    {
      MEMORY[0x2667887C0]();
      OUTLINED_FUNCTION_9_14();
      if (v13)
      {
        sub_26666C4B8();
      }

      sub_26666C4E8();
    }

    ++v8;
  }
}

uint64_t sub_2665C798C()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 88) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E688, &qword_266674F18);
  *(v1 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E690, &unk_266674F20);
  *(v1 + 56) = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2665C7A5C()
{
  if (!v0[2])
  {
    goto LABEL_4;
  }

  if (sub_26655EF00())
  {

LABEL_4:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v1 = sub_26666C168();
    __swift_project_value_buffer(v1, qword_28156D7E8);
    v2 = sub_26666C148();
    v3 = sub_26666C618();
    if (os_log_type_enabled(v2, v3))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_4_0(&dword_266549000, v4, v5, "[CalendarDateTimeResolving] UsoEntity_common_DateTimeRange not present or is empty, not resolving date component range");
      OUTLINED_FUNCTION_4_1();
    }

    v6 = v0[1];

    return v6(0);
  }

  v8 = sub_26666AA58();
  if (sub_26655EFEC())
  {
    sub_26666AD28();

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v9 = sub_26666C168();
    __swift_project_value_buffer(v9, qword_28156D7E8);
    v10 = sub_26666C148();
    v11 = sub_26666C618();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_266549000, v10, v11, "[CalendarDateTimeResolving] adding recurrencePattern to dateTimeQuery", v12, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    sub_26666B958();
    sub_26666B968();
    sub_26666B918();
    sub_26666B938();
    sub_26666B928();
    sub_26666B908();
    sub_26666B998();
    v13 = swift_allocObject();
    sub_26666B868();
    OUTLINED_FUNCTION_6();

    v8 = v13;
  }

  v0[8] = v8;
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_2665C7D5C;

  return sub_26660988C();
}

uint64_t sub_2665C7D5C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 80) = v3;

  v4 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2665C7E4C()
{
  OUTLINED_FUNCTION_14();

  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2665C7ECC(uint64_t a1, uint64_t a2)
{
  result = sub_26666A3C8();
  if (result)
  {
    v3 = sub_2665C7F34();

    return v3;
  }

  return result;
}

uint64_t sub_2665C7F34()
{
  v0 = sub_26666A438();
  v2 = v1;
  v3 = sub_26666A248();
  if (!v2)
  {

    return 0;
  }

  if (v0 != v3 || v2 != v4)
  {
    v6 = sub_26666CAC8();

    if (v6)
    {
      goto LABEL_11;
    }

    return 0;
  }

LABEL_11:
  sub_26666A448();
  return v8;
}

uint64_t sub_2665C8008()
{
  v1 = *(v0 + 40);
  if (!v1 || (v2 = sub_2665C530C(), v2 == 2))
  {
    v3 = sub_2665C8290(v1, sub_2665C9108, sub_2665C90D4);
    if (*(v3 + 16) && (sub_26666CB88(), sub_26666C368(), v4 = sub_26666CBC8(), v5 = -1 << *(v3 + 32), v6 = v4 & ~v5, ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
    {
      v7 = ~v5;
      while (2)
      {
        switch(*(*(v3 + 48) + v6))
        {
          case 3:

            v2 = 0;
            break;
          default:
            v8 = sub_26666CAC8();

            if ((v8 & 1) == 0)
            {
              v6 = (v6 + 1) & v7;
              if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
              {
                continue;
              }

              goto LABEL_9;
            }

            v2 = 0;
            break;
        }

        break;
      }
    }

    else
    {
LABEL_9:
      v2 = 2;
    }
  }

  return v2;
}

uint64_t sub_2665C8290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26666A258();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x277D84FA0];
  if (a1)
  {
    v10 = sub_26666A9E8();
    if (v10)
    {

      v11 = OUTLINED_FUNCTION_4_23();
      v10 = sub_26660B444(v11, 2);
    }

    if (sub_2665C5338(v10))
    {
      v12 = OUTLINED_FUNCTION_4_23();
      sub_26660B444(v12, 1);
    }

    if (sub_26666A9F8() || sub_26666AA28())
    {

      v13 = OUTLINED_FUNCTION_4_23();
      sub_26660B444(v13, 3);
    }

    v14 = sub_26666A9D8();
    if (v14)
    {
      v15 = v14;
      v16 = OUTLINED_FUNCTION_10_13();
      v18 = v17(v16);
      MEMORY[0x28223BE20](v18);
      OUTLINED_FUNCTION_8_14();
      sub_2665C7724(a2, v19, v15);

      (*(v7 + 8))(v9, v6);
      v20 = sub_2665C485C();

      if (v20)
      {
        v21 = OUTLINED_FUNCTION_4_23();
        sub_26660B444(v21, 4);
      }
    }

    v22 = sub_26666A9D8();
    if (v22)
    {
      v23 = v22;
      v24 = OUTLINED_FUNCTION_10_13();
      v26 = v25(v24);
      MEMORY[0x28223BE20](v26);
      OUTLINED_FUNCTION_8_14();
      sub_2665C7724(a3, v27, v23);

      (*(v7 + 8))(v9, v6);
      v28 = sub_2665C485C();

      if (v28)
      {
        v29 = OUTLINED_FUNCTION_4_23();
        sub_26660B444(v29, 5);
      }
    }
  }

  return v32;
}

uint64_t sub_2665C8518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a1;
  v6[6] = a2;
  v7 = OUTLINED_FUNCTION_31();
  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2665C8544()
{
  v46 = v0;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = sub_26666C168();
  __swift_project_value_buffer(v1, qword_28156D7E8);
  OUTLINED_FUNCTION_6();

  v2 = sub_26666C148();
  v3 = sub_26666C618();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v45 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    v0[3] = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E680, &qword_266674F10);
    v8 = sub_26666C318();
    v10 = sub_2665BFC90(v8, v9, &v45);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_266549000, v2, v3, "[UpdateEventCorrectionsIntentWrapper] makeSiriKitIntent %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  v11 = v0[6];
  v12 = [objc_allocWithZone(MEMORY[0x277CD42A8]) init];
  v0[9] = v12;
  if (v11)
  {
    v13 = sub_26666C2F8();
  }

  else
  {
    v13 = 0;
  }

  v14 = v0[8];
  [v12 setTargetEventIdentifier_];

  v15 = *(v14 + 40);
  v0[10] = v15;
  if (v15)
  {
    swift_retain_n();
    v16 = sub_26666C148();
    v17 = sub_26666C618();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v45 = v19;
      *v18 = 136315138;
      v0[4] = v15;
      sub_26666AA48();

      v20 = sub_26666C318();
      v22 = sub_2665BFC90(v20, v21, &v45);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_266549000, v16, v17, "[UpdateEventCorrectionsIntentWrapper] USO Parse has correction %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    v23 = sub_26666AA08();
    v25 = v24;
    if (v24)
    {
      v26 = v23;
      v27 = v0[8];
      updated = type metadata accessor for UpdateEventCorrectionsIntentWrapper(0);
      sub_2666683AC(v27 + *(updated + 24), v26, v25);

      v25 = sub_26666C2F8();
    }

    v29 = v0[8];
    [v12 setSetTitle_];

    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    v0[11] = sub_26666A9E8();
    if (qword_28007CDB0 != -1)
    {
      swift_once();
    }

    v30 = sub_26666B628();
    __swift_project_value_buffer(v30, qword_2800956E0);
    v31 = swift_task_alloc();
    v0[12] = v31;
    *v31 = v0;
    v31[1] = sub_2665C8A3C;

    return sub_2665C798C();
  }

  else
  {
    v33 = sub_26666C148();
    v34 = sub_26666C618();
    if (os_log_type_enabled(v33, v34))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_4_0(&dword_266549000, v35, v36, "[UpdateEventCorrectionsIntentWrapper] USO Parse does not contain a target, returning intent without parameters");
      OUTLINED_FUNCTION_4_1();
    }

    v38 = v0[9];
    v37 = v0[10];

    OUTLINED_FUNCTION_1_27();
    sub_2665C8290(v37, v39, sub_2665C90D4);
    v40 = OUTLINED_FUNCTION_6();
    sub_2665C8E14(v40, v33);
    v42 = v41;

    v43 = OUTLINED_FUNCTION_2_24();

    return v44(v43, v42);
  }
}

uint64_t sub_2665C8A3C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11_2();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  *(v6 + 104) = v5;

  v7 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2665C8B48()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  [v3 setSetDateTimeRange_];

  v4 = sub_2665D9924(v2);
  [v3 setSetLocation_];

  v6 = v0[9];
  v5 = v0[10];

  OUTLINED_FUNCTION_1_27();
  sub_2665C8290(v5, v7, sub_2665C90D4);
  v8 = OUTLINED_FUNCTION_6();
  sub_2665C8E14(v8, v4);
  v10 = v9;

  v11 = OUTLINED_FUNCTION_2_24();

  return v12(v11, v10);
}

uint64_t sub_2665C8C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_2665C8CEC;

  return sub_2665C8518(a1, a2, 0, 0, a5);
}

uint64_t sub_2665C8CEC()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_2_24();

  return v6(v5, v2);
}

uint64_t sub_2665C8DE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2665C7ECC(*a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_2665C8E14(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v2 = sub_2665EFC38();
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v3 = sub_26666C168();
  __swift_project_value_buffer(v3, qword_28156D7E8);
  v4 = v2;
  v5 = sub_26666C148();
  v6 = sub_26666C618();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    v23 = v4;
    v9 = v4;
    v10 = [v9 description];
    v11 = sub_26666C308();
    v13 = v12;

    v14 = sub_2665BFC90(v11, v13, &v24);

    *(v7 + 4) = v14;
    v4 = v23;
    _os_log_impl(&dword_266549000, v5, v6, "[UpdateEventIntentWrapping] Parsed Intent: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x266789690](v8, -1, -1);
    MEMORY[0x266789690](v7, -1, -1);
  }

  v15 = sub_26666C148();
  v16 = sub_26666C618();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    sub_26659A3E0();
    v19 = sub_26666C558();
    v21 = sub_2665BFC90(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_266549000, v15, v16, "[UpdateEventIntentWrapping] Parameters to Update: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x266789690](v18, -1, -1);
    MEMORY[0x266789690](v17, -1, -1);
  }

  return v4;
}

uint64_t sub_2665C91BC()
{
  result = v0;
  *(v0 + 20) = 0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_2665C91F8(_BYTE *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1[16];
  *(v1 + 25) = a1[17];
  *(v1 + 26) = a1[18];
  *(v1 + 27) = a1[19];
  *(v1 + 28) = a1[20];
  v2 = a1[21];

  *(v1 + 29) = v2;
  return v1;
}

double sub_2665C9250@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = OUTLINED_FUNCTION_3_23();
  v10 = a1 == v7 && a2 == v8;
  if (v10 || (OUTLINED_FUNCTION_2_6(v7, v8) & 1) != 0)
  {
    v11 = v3[24];
LABEL_7:
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v11;
    return result;
  }

  v12 = a1 == 0xD000000000000012 && 0x800000026667CFE0 == a2;
  if (v12 || (OUTLINED_FUNCTION_2_6(0xD000000000000012, 0x800000026667CFE0) & 1) != 0)
  {
    v11 = v3[25];
    goto LABEL_7;
  }

  v13 = OUTLINED_FUNCTION_4_24();
  v15 = a1 == v13 && a2 == v14;
  if (v15 || (OUTLINED_FUNCTION_2_6(v13, v14) & 1) != 0)
  {
    v11 = v3[26];
    goto LABEL_7;
  }

  v16 = a1 == 0xD000000000000010 && 0x800000026667D010 == a2;
  if (v16 || (OUTLINED_FUNCTION_2_6(0xD000000000000010, 0x800000026667D010) & 1) != 0)
  {
    v11 = v3[27];
    goto LABEL_7;
  }

  v17 = a1 == 0xD000000000000015 && 0x800000026667D030 == a2;
  if (v17 || (OUTLINED_FUNCTION_2_6(0xD000000000000015, 0x800000026667D030) & 1) != 0)
  {
    v11 = v3[28];
    goto LABEL_7;
  }

  v18 = a1 == 0xD000000000000014 && 0x800000026667D050 == a2;
  if (v18 || (OUTLINED_FUNCTION_2_6(0xD000000000000014, 0x800000026667D050) & 1) != 0)
  {
    v11 = v3[29];
    goto LABEL_7;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

unint64_t sub_2665C93B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_26666C958();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2665C9404(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_3_23();
  switch(v3)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = OUTLINED_FUNCTION_4_24();
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2665C94FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2665C93B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2665C952C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_2665C9404(*v2, a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2665C9574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2665C93FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2665C95A8(uint64_t a1)
{
  v2 = sub_2665C9C08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665C95E4(uint64_t a1)
{
  v2 = sub_2665C9C08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665C9620()
{

  return MEMORY[0x2821FE8D8](v0, 30, 7);
}

uint64_t sub_2665C967C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E6B8, &qword_266675088);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665C9C08();
  sub_26666CBE8();
  v11 = v3[24];
  v24 = 0;
  OUTLINED_FUNCTION_1_13(v11, &v24);
  if (!v2)
  {
    v12 = v3[25];
    v23 = 1;
    OUTLINED_FUNCTION_1_13(v12, &v23);
    v13 = v3[26];
    v22 = 2;
    OUTLINED_FUNCTION_1_13(v13, &v22);
    v14 = v3[27];
    v21 = 3;
    OUTLINED_FUNCTION_1_13(v14, &v21);
    v15 = v3[28];
    v20 = 4;
    OUTLINED_FUNCTION_1_13(v15, &v20);
    v16 = v3[29];
    v19 = 5;
    OUTLINED_FUNCTION_1_13(v16, &v19);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_2665C982C(void *a1)
{
  v2 = swift_allocObject();
  sub_2665C98A0(a1);
  return v2;
}

uint64_t sub_2665C98A0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E6A8, &qword_266675080);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665C9C08();
  sub_26666CBD8();
  if (v2)
  {

    type metadata accessor for CalendarResultSetWindowOptions();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = 0;
    *(v1 + 24) = OUTLINED_FUNCTION_1_8(&v19) & 1;
    v18 = 1;
    *(v1 + 25) = OUTLINED_FUNCTION_1_8(&v18) & 1;
    v17 = 2;
    *(v1 + 26) = OUTLINED_FUNCTION_1_8(&v17) & 1;
    v16 = 3;
    *(v1 + 27) = OUTLINED_FUNCTION_1_8(&v16) & 1;
    v15 = 4;
    *(v1 + 28) = OUTLINED_FUNCTION_1_8(&v15) & 1;
    v14 = 5;
    v12 = OUTLINED_FUNCTION_1_8(&v14);
    (*(v7 + 8))(v10, v5);
    *(v3 + 29) = v12 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_2665C9B10@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2665C982C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2665C9BC8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CalendarResultSetWindowOptions();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2665C9C08()
{
  result = qword_28007E6B0;
  if (!qword_28007E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E6B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalendarResultSetWindowOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for CalendarResultSetWindowOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2665C9DC4()
{
  result = qword_28007E6C0;
  if (!qword_28007E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E6C0);
  }

  return result;
}

unint64_t sub_2665C9E1C()
{
  result = qword_28007E6C8;
  if (!qword_28007E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E6C8);
  }

  return result;
}

unint64_t sub_2665C9E74()
{
  result = qword_28007E6D0;
  if (!qword_28007E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E6D0);
  }

  return result;
}

uint64_t sub_2665C9F14(uint64_t a1)
{
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v2 = sub_26666C168();
  __swift_project_value_buffer(v2, qword_28156D7E8);

  v3 = sub_26666C148();
  v4 = sub_26666C5E8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_21();
    v6 = swift_slowAlloc();
    v47 = v6;
    *v5 = 136315138;
    v7 = sub_2665764B0();
    v8 = MEMORY[0x2667887F0](a1, v7);
    v10 = sub_2665BFC90(v8, v9, &v47);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_266549000, v3, v4, "#EKRecurrenceDayOfWeek array: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  result = sub_2665C485C();
  if (result)
  {
    v13 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v14 = 0;
    v15 = 0;
    v46 = a1 & 0xC000000000000001;
    *&v12 = 136315138;
    v43 = v12;
    v44 = result;
    do
    {
      if (v46)
      {
        v16 = MEMORY[0x266788B60](v15, a1);
      }

      else
      {
        v16 = *(a1 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = sub_26666C148();
      v19 = sub_26666C5E8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = OUTLINED_FUNCTION_21();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        *(v20 + 4) = v17;
        *v21 = v17;
        v22 = v17;
        _os_log_impl(&dword_266549000, v18, v19, "#EKRecurrenceDayOfWeek single: %@", v20, 0xCu);
        sub_26658FD5C(v21);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      if (qword_28007CE20 != -1)
      {
        swift_once();
      }

      v23 = qword_2800957C8;
      [v17 dayOfTheWeek];
      if (*(v23 + 16) && (v24 = sub_2665C580C(), (v25 & 1) != 0))
      {
        v26 = *(*(v23 + 56) + 8 * v24);
        v27 = sub_26666C148();
        v28 = sub_26666C5E8();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = OUTLINED_FUNCTION_21();
          v45 = v26;
          v30 = swift_slowAlloc();
          *v29 = v43;
          v47 = v30;
          type metadata accessor for INDayOfWeekOptions(0);
          v31 = sub_26666C318();
          v33 = a1;
          v34 = sub_2665BFC90(v31, v32, &v47);
          v13 = v44;

          *(v29 + 4) = v34;
          a1 = v33;
          _os_log_impl(&dword_266549000, v27, v28, "#EKRecurrenceDayOfWeek mappedWeekday: %s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v30);
          v26 = v45;
          OUTLINED_FUNCTION_4_1();
          OUTLINED_FUNCTION_4_1();
        }

        v14 |= v26;
      }

      else
      {
      }

      ++v15;
    }

    while (v13 != v15);
  }

  else
  {
    v14 = 0;
  }

  v35 = sub_26666C148();
  v36 = sub_26666C5E8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_21();
    v38 = v14;
    v39 = swift_slowAlloc();
    v47 = v39;
    *v37 = 136315138;
    type metadata accessor for INDayOfWeekOptions(0);
    v40 = sub_26666C318();
    v42 = sub_2665BFC90(v40, v41, &v47);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_266549000, v35, v36, "#EKRecurrenceDayOfWeek dayOfWeekOptions: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    v14 = v38;
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  return v14;
}

uint64_t sub_2665CA3A8()
{
  type metadata accessor for EKWeekday(0);
  type metadata accessor for INDayOfWeekOptions(0);
  sub_2665CA400();
  result = sub_26666C258();
  qword_2800957C8 = result;
  return result;
}

unint64_t sub_2665CA400()
{
  result = qword_28007E6D8;
  if (!qword_28007E6D8)
  {
    type metadata accessor for EKWeekday(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E6D8);
  }

  return result;
}

uint64_t sub_2665CA458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2665CA5A4;

  return v15(a1, a2, a3, a3, a4, a5, a6);
}

uint64_t sub_2665CA5A4(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_2665CA6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2665CA7F0;

  return v13(a1, a2, 0, 0, a3, a4, a5);
}

uint64_t sub_2665CA7F4(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  v6 = OUTLINED_FUNCTION_3_3(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_27();
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = type metadata accessor for CalendarEventConcept.Builder(0);
  OUTLINED_FUNCTION_7(v10);
  v11 = sub_2666648F4();
  sub_2665EF53C(a1);
  if (v12)
  {
    sub_26666C358();

    v13 = sub_26666BDA8();
    v14 = 0;
  }

  else
  {
    v13 = sub_26666BDA8();
    v14 = 1;
  }

  v15 = 1;
  __swift_storeEnumTagSinglePayload(v9, v14, 1, v13);
  v16 = OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_identifier;
  swift_beginAccess();
  sub_2665BE6B0(v9, v11 + v16);
  swift_endAccess();
  sub_266566494(v9, &unk_28007D130, &unk_266671DF0);
  sub_2665EF548(a1);
  if (v17)
  {
    sub_26666C358();

    v15 = 0;
  }

  v18 = sub_26666BDA8();
  __swift_storeEnumTagSinglePayload(v2, v15, 1, v18);
  v19 = OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_title;
  swift_beginAccess();
  sub_2665BE6B0(v2, v11 + v19);
  swift_endAccess();
  sub_266566494(v2, &unk_28007D130, &unk_266671DF0);
  sub_26666BB78();
  v20 = a1;
  v21 = sub_2665CB618(v20);
  sub_2666649C8(v21);

  sub_26666BD58();
  v22 = sub_2665CAF44([v20 location]);
  sub_2666649E0(v22);

  v23 = sub_2665EC9BC(a2);
  v24 = sub_266664A34(v23);

  *(v24 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_isAllDay) = sub_2665EC938() & 1;
  v25 = [v20 dateTimeRange];
  if (v25)
  {
    v26 = v25;
    sub_2665D3034();
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  *(v24 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_startAndEndEqual) = v28 & 1;
  type metadata accessor for CalendarEventRecurrence();
  v29 = v20;
  v30 = sub_2665CAE4C([v29 dateTimeRange]);

  v31 = sub_2666649D4(v30);

  v32 = type metadata accessor for CalendarEventConcept(0);
  OUTLINED_FUNCTION_7(v32);
  v33 = sub_266664B2C(v31);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v33;
}

uint64_t sub_2665CAB68(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v6 = OUTLINED_FUNCTION_3_3(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_4_25();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_27();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_12();
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = sub_26666BB58();
  OUTLINED_FUNCTION_7(v12);
  sub_26666BB48();
  v13 = [a1 startDate];
  if (v13)
  {
    v14 = v13;
    sub_266668CE8();

    v15 = sub_266668D38();
    v16 = 0;
  }

  else
  {
    v15 = sub_266668D38();
    v16 = 1;
  }

  __swift_storeEnumTagSinglePayload(v3, v16, 1, v15);
  sub_266557CE4(v3, v11);
  sub_266668D38();
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) == 1)
  {
    sub_266566494(v11, &qword_28007D140, &qword_26666F140);
  }

  else
  {
    sub_266668CC8();
    OUTLINED_FUNCTION_2_25();
    (*(v17 + 8))(v11, v15);
  }

  sub_26666BB38();

  v18 = [a1 endDate];
  if (v18)
  {
    v19 = v18;
    sub_266668CE8();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  __swift_storeEnumTagSinglePayload(v2, v20, 1, v15);
  sub_266557CE4(v2, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v15) == 1)
  {
    sub_266566494(v1, &qword_28007D140, &qword_26666F140);
  }

  else
  {
    sub_266668CC8();
    OUTLINED_FUNCTION_2_25();
    (*(v21 + 8))(v1, v15);
  }

  sub_26666BB28();

  v22 = sub_26666BB68();

  return v22;
}

uint64_t sub_2665CAE4C(void *a1)
{
  v2 = [a1 recurrenceRule];
  type metadata accessor for CalendarEventRecurrence.Builder();
  swift_initStackObject();
  v3 = sub_26663E658();
  if (v2)
  {
    *(v3 + 16) = [v2 interval];
    *(v3 + 24) = 0;
    *(v3 + 32) = [v2 frequency];
    *(v3 + 40) = 0;
    sub_2665CB964([v2 weeklyRecurrenceDays]);
    *(v3 + 48) = v4;
  }

  type metadata accessor for CalendarEventRecurrence();
  swift_allocObject();
  v5 = sub_26663E6D4(v3);

  return v5;
}

uint64_t sub_2665CAF44(void *a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  v7 = OUTLINED_FUNCTION_3_3(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_5();
  v9 = MEMORY[0x28223BE20](v8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v61 - v11;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_12();
  v14 = MEMORY[0x28223BE20](v13);
  v66 = &v61 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v61 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v61 - v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_27();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4_25();
  MEMORY[0x28223BE20](v23);
  v27 = &v61 - v26;
  if (!a1)
  {
    return 0;
  }

  v64 = v25;
  v65 = v1;
  v61 = v24;
  v28 = sub_26666BC88();
  OUTLINED_FUNCTION_7(v28);
  v29 = a1;
  sub_26666BC78();
  sub_2666111C8(v29);
  v63 = v12;
  if (v30)
  {
    sub_26666C358();

    v31 = sub_26666BDA8();
    v32 = 0;
  }

  else
  {
    v31 = sub_26666BDA8();
    v32 = 1;
  }

  v34 = 1;
  __swift_storeEnumTagSinglePayload(v27, v32, 1, v31);
  sub_26666BC68();

  sub_266566494(v27, &unk_28007D130, &unk_266671DF0);
  sub_2666111D4(v29);
  v62 = v4;
  if (v35)
  {
    sub_26666C358();

    v34 = 0;
  }

  sub_26666BDA8();
  v36 = 1;
  OUTLINED_FUNCTION_3_24(v3, v34);
  sub_26666BBC8();

  sub_266566494(v3, &unk_28007D130, &unk_266671DF0);
  sub_2666111EC(v29);
  if (v37)
  {
    sub_26666C358();

    v36 = 0;
  }

  v38 = 1;
  OUTLINED_FUNCTION_3_24(v2, v36);
  sub_26666BBD8();

  sub_266566494(v2, &unk_28007D130, &unk_266671DF0);
  sub_2666111E0(v29);
  if (v39)
  {
    sub_26666C358();

    v38 = 0;
  }

  v40 = v62;
  v41 = 1;
  OUTLINED_FUNCTION_3_24(v21, v38);
  sub_26666BBE8();

  sub_266566494(v21, &unk_28007D130, &unk_266671DF0);
  sub_266611210(v29);
  if (v42)
  {
    sub_26666C358();

    v41 = 0;
  }

  v43 = v64;
  v44 = v66;
  v45 = 1;
  OUTLINED_FUNCTION_3_24(v18, v41);
  sub_26666BC08();

  sub_266566494(v18, &unk_28007D130, &unk_266671DF0);
  sub_2665816B4(v29, &selRef_ISOcountryCode);
  if (v46)
  {
    sub_26666C358();

    v45 = 0;
  }

  v47 = v63;
  v48 = 1;
  OUTLINED_FUNCTION_3_24(v44, v45);
  sub_26666BBF8();

  sub_266566494(v44, &unk_28007D130, &unk_266671DF0);
  sub_26661121C(v29);
  if (v49)
  {
    sub_26666C358();

    v48 = 0;
  }

  v50 = 1;
  OUTLINED_FUNCTION_3_24(v40, v48);
  sub_26666BC18();

  sub_266566494(v40, &unk_28007D130, &unk_266671DF0);
  sub_2666111F8(v29);
  if (v51)
  {
    sub_26666C358();

    v50 = 0;
  }

  v52 = 1;
  OUTLINED_FUNCTION_3_24(v47, v50);
  sub_26666BC38();

  sub_266566494(v47, &unk_28007D130, &unk_266671DF0);
  sub_266611204(v29);
  if (v53)
  {
    sub_26666C358();

    v52 = 0;
  }

  OUTLINED_FUNCTION_3_24(v43, v52);
  sub_26666BC48();

  sub_266566494(v43, &unk_28007D130, &unk_266671DF0);
  sub_2665816B4(v29, &selRef_fullThoroughfare);
  if (v54)
  {
    v55 = v61;
    sub_26666C358();

    OUTLINED_FUNCTION_3_24(v55, 0);
    sub_26666BC28();

    sub_266566494(v55, &unk_28007D130, &unk_266671DF0);
  }

  v56 = sub_26666BBB8();
  OUTLINED_FUNCTION_7(v56);
  sub_26666BBA8();
  sub_26666BC58();
  sub_26666BB88();

  v57 = sub_26666BB98();

  v58 = sub_26666BD38();
  OUTLINED_FUNCTION_7(v58);
  sub_26666BD28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_26666E050;
  *(v59 + 32) = v57;

  sub_26666BD18();

  v33 = sub_26666BD48();

  return v33;
}

uint64_t sub_2665CB618(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v5 = OUTLINED_FUNCTION_3_3(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_4_25();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_27();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = sub_26666BB58();
  OUTLINED_FUNCTION_7(v13);
  sub_26666BB48();
  v14 = [a1 dateTimeRange];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 startDate];

    if (v16)
    {
      sub_266668CE8();

      v17 = sub_266668D38();
      v18 = 0;
    }

    else
    {
      v17 = sub_266668D38();
      v18 = 1;
    }

    __swift_storeEnumTagSinglePayload(v10, v18, 1, v17);
    sub_266557CE4(v10, v12);
    sub_266668D38();
    if (__swift_getEnumTagSinglePayload(v12, 1, v17) == 1)
    {
      sub_266566494(v12, &qword_28007D140, &qword_26666F140);
    }

    else
    {
      sub_266668CC8();
      (*(*(v17 - 8) + 8))(v12, v17);
    }
  }

  sub_26666BB38();

  v19 = [a1 dateTimeRange];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 endDate];

    if (v21)
    {
      sub_266668CE8();

      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    v23 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v2, v22, 1, v23);
    sub_266557CE4(v2, v1);
    if (__swift_getEnumTagSinglePayload(v1, 1, v23) == 1)
    {
      sub_266566494(v1, &qword_28007D140, &qword_26666F140);
    }

    else
    {
      sub_266668CC8();
      OUTLINED_FUNCTION_2_25();
      (*(v24 + 8))(v1, v23);
    }
  }

  sub_26666BB28();

  v25 = sub_26666BB68();

  return v25;
}

int8x8_t sub_2665CB964(unsigned int a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E6E0, &qword_266675258);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_266675240;
  *(v2 + 32) = (a1 & 0x40) != 0;
  *(v2 + 33) = a1 & 1;
  v3 = *&vshl_u16((*&vdup_n_s16(a1) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
  result = vuzp1_s8(v3, v3);
  *(v2 + 34) = result.i32[0];
  *(v2 + 38) = (a1 & 0x20) != 0;
  return result;
}

uint64_t sub_2665CB9E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26666BCE8();
  OUTLINED_FUNCTION_7(v4);
  sub_26666BCD8();
  sub_266668CC8();
  sub_26666BCC8();

  if (a2)
  {

    sub_26666BCB8();
  }

  v5 = sub_26666BCF8();

  sub_266668D38();
  OUTLINED_FUNCTION_0_5();
  (*(v6 + 8))(a1);
  return v5;
}

uint64_t OUTLINED_FUNCTION_3_24(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t sub_2665CBB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_266668D98();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2665CBBEC, 0, 0);
}

id sub_2665CBBEC()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = __swift_project_boxed_opaque_existential_1(*(v0 + 64), *(*(v0 + 64) + 24));
  sub_266668D88();
  *(v0 + 16) = sub_266668D78();
  *(v0 + 24) = v5;
  *(v0 + 32) = 45;
  *(v0 + 40) = 0xE100000000000000;
  *(v0 + 48) = 95;
  *(v0 + 56) = 0xE100000000000000;
  v23 = sub_266595F88();
  v22 = MEMORY[0x277D837D0];
  v6 = sub_26666C6F8();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v10 = result;
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v13 = type metadata accessor for StringLocalizer(0);
    v14 = sub_2665CBE50(v12, v11, 0x617A696C61636F4CLL, 0xEB00000000656C62, *(v4 + *(v13 + 20)), v6, v8, v10);
    v16 = v15;

    if (v16)
    {

      v17 = *(v0 + 8);

      return v17(v14, v16);
    }

    else
    {
      v19 = *(v0 + 72);
      v18 = *(v0 + 80);
      sub_2665CBF28();
      swift_allocError();
      *v20 = v19;
      v20[1] = v18;
      v20[2] = 0x617A696C61636F4CLL;
      v20[3] = 0xEB00000000656C62;
      v20[4] = v6;
      v20[5] = v8;
      swift_willThrow();

      v21 = *(v0 + 8);

      return v21();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2665CBE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = sub_26666C2F8();
  v11 = sub_26666C2F8();
  v12 = sub_26666C2F8();
  v13 = [a8 localizedStringForKey:v10 table:v11 bundle:a5 languageCode:v12];

  if (!v13)
  {
    return 0;
  }

  v14 = sub_26666C308();

  return v14;
}

unint64_t sub_2665CBF28()
{
  result = qword_28007E6E8[0];
  if (!qword_28007E6E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28007E6E8);
  }

  return result;
}

uint64_t sub_2665CBF7C(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    v14 = *(v2 - 8) + 64;
    v5 = swift_checkMetadataState();
    if (v6 > 0x3F)
    {
      return v5;
    }

    else
    {
      v15 = *(v5 - 8) + 64;
      v7 = *(a1 + 112);
      v11[0] = v3;
      v11[1] = v5;
      v12 = *(a1 + 96);
      v13 = v7;
      v8 = type metadata accessor for PromptWrapperFlow.State(319, v11);
      v3 = v8;
      if (v9 <= 0x3F)
      {
        v16 = *(v8 - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return v3;
}

void sub_2665CC0BC(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 112);
  v5 = *(*v2 + 96);
  v33[0] = *(*v2 + 80);
  v33[1] = v5;
  v34 = v4;
  v6 = type metadata accessor for PromptWrapperFlow.State(0, v33);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v13 = sub_26666C168();
  __swift_project_value_buffer(v13, qword_28156D7E8);
  v14 = *(v7 + 16);
  v14(v12, a1, v6);
  swift_retain_n();
  v15 = sub_26666C148();
  v16 = sub_26666C618();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v17 = 136446466;
    v14(v10, v12, v6);
    v30 = v16;
    v18 = *(v7 + 8);
    v18(v12, v6);
    v29 = v15;
    v19 = sub_2665CDC28();
    v21 = v20;
    v18(v10, v6);
    v22 = sub_2665BFC90(v19, v21, &v32);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2082;
    v23 = *(*v2 + 136);
    swift_beginAccess();
    v14(v10, v2 + v23, v6);

    v24 = sub_2665CDC28();
    v26 = v25;

    v18(v10, v6);
    v27 = sub_2665BFC90(v24, v26, &v32);

    *(v17 + 14) = v27;
    v15 = v29;
    _os_log_impl(&dword_266549000, v29, v30, "[PromptWrapperFlow] transitioned from %{public}s to %{public}s.", v17, 0x16u);
    v28 = v31;
    swift_arrayDestroy();
    MEMORY[0x266789690](v28, -1, -1);
    MEMORY[0x266789690](v17, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }
}

uint64_t sub_2665CC46C(char *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 96);
  v16[0] = *(*v1 + 80);
  v16[1] = v5;
  v17 = v4;
  v6 = type metadata accessor for PromptWrapperFlow.State(0, v16);
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v16 - v10 + 16;
  v12 = *(v3 + 136);
  OUTLINED_FUNCTION_23_4(v1 + v12, v16);
  (*(v8 + 16))(v11, v1 + v12, v6);
  swift_beginAccess();
  (*(v8 + 24))(v1 + v12, a1, v6);
  swift_endAccess();
  sub_2665CC0BC(v11);
  v13 = *(v8 + 8);
  v13(a1, v6);
  return v13(v11, v6);
}

uint64_t sub_2665CC60C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 96);
  v30 = *(v5 + 80);
  v32 = v30;
  v33 = v6;
  v29 = *(v5 + 104);
  v34 = v29;
  v7 = type metadata accessor for PromptWrapperFlow.State(0, &v32);
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8_10();
  v28 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = *(v4 + 136);
  OUTLINED_FUNCTION_23_4(&v2[v15], &v32);
  v16 = *(v9 + 16);
  v16(v14, &v2[v15], v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_266669A28();
    sub_266669778();
    OUTLINED_FUNCTION_18_2();
    return (*(v17 + 32))(a1, v14);
  }

  else
  {
    v27 = a1;
    (*(v9 + 8))(v14, v7);
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v19 = sub_26666C168();
    __swift_project_value_buffer(v19, qword_28156D7E8);

    v20 = sub_26666C148();
    v21 = sub_26666C608();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = v23;
      *v22 = 136315138;
      v16(v28, &v2[v15], v7);
      swift_getWitnessTable();
      v24 = sub_26666C328();
      v26 = sub_2665BFC90(v24, v25, &v31);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_266549000, v20, v21, "exitValue called when flow is in an invalid state %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    return sub_266669518();
  }
}

uint64_t sub_2665CC960(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  OUTLINED_FUNCTION_9_15();
  v6 = v5;
  sub_266669E18();
  OUTLINED_FUNCTION_3_0();
  v48 = v8;
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_9_15();
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_9_15();
  v14 = *(v13 + 104);
  v15 = *(v4 + 112);
  v53 = v12;
  v51 = *(v6 + 88);
  v54 = v51;
  v55 = v14;
  v56 = v15;
  v16 = type metadata accessor for PromptWrapperFlow.State(0, &v53);
  OUTLINED_FUNCTION_3_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8_10();
  v50 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v47 - v22;
  OUTLINED_FUNCTION_9_15();
  v25 = *(v24 + 136);
  OUTLINED_FUNCTION_23_4(&v2[v25], &v53);
  (*(v18 + 16))(v23, &v2[v25], v16);
  LODWORD(v25) = swift_getEnumCaseMultiPayload();
  (*(v18 + 8))(v23, v16);
  if (v25 != 2)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v39 = sub_26666C168();
    __swift_project_value_buffer(v39, qword_28156D7E8);
    v40 = sub_26666C148();
    v41 = sub_26666C618();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_17;
    }

    v42 = OUTLINED_FUNCTION_20();
    *v42 = 0;
    v43 = "[PromptWrapperFlow] Got input when not running wrapped flow. Ignoring...";
    goto LABEL_16;
  }

  if ((sub_2666694F8() & 1) == 0)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v44 = sub_26666C168();
    __swift_project_value_buffer(v44, qword_28156D7E8);
    v40 = sub_26666C148();
    v41 = sub_26666C618();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_17;
    }

    v42 = OUTLINED_FUNCTION_20();
    *v42 = 0;
    v43 = "[PromptWrapperFlow] Wrapped flow does not want to accept input. Ignoring...";
LABEL_16:
    _os_log_impl(&dword_266549000, v40, v41, v43, v42, 2u);
    OUTLINED_FUNCTION_4_1();
LABEL_17:

    return 0;
  }

  v26 = (*(v15 + 8))(a1, v51, v15);
  if (v26)
  {
    v27 = v26;
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v28 = sub_26666C168();
    __swift_project_value_buffer(v28, qword_28156D7E8);
    v29 = v48;
    v30 = v49;
    (*(v48 + 16))(v10, a1, v49);
    v31 = sub_26666C148();
    v32 = sub_26666C618();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *&v51 = swift_slowAlloc();
      v52 = v51;
      *v33 = 136315138;
      sub_2665B934C();
      v34 = sub_26666CAA8();
      v35 = v29;
      v37 = v36;
      (*(v35 + 8))(v10, v30);
      v38 = sub_2665BFC90(v34, v37, &v52);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_266549000, v31, v32, "[PromptWrapperFlow] Inserting guard flow before letting wrapped flow process input: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      (*(v29 + 8))(v10, v30);
    }

    v46 = v50;
    *v50 = v27;
    swift_storeEnumTagMultiPayload();

    sub_2665CC46C(v46);
  }

  return 1;
}

uint64_t sub_2665CCE9C(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  v3 = *v1;
  v4 = sub_266669AB8();
  *(v2 + 136) = v4;
  OUTLINED_FUNCTION_3_1(v4);
  *(v2 + 144) = v5;
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  v6 = sub_2666698C8();
  *(v2 + 168) = v6;
  OUTLINED_FUNCTION_3_1(v6);
  *(v2 + 176) = v7;
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = *(v3 + 80);
  *(v2 + 200) = *(v3 + 88);
  OUTLINED_FUNCTION_5_19();
  *(v2 + 208) = *(v8 + 96);
  OUTLINED_FUNCTION_5_19();
  *(v2 + 216) = *(v9 + 104);
  OUTLINED_FUNCTION_5_19();
  v11 = *(v10 + 112);
  *&v13 = v12;
  *(&v13 + 1) = v14;
  *&v16 = v15;
  *(&v16 + 1) = v17;
  *(v2 + 224) = v11;
  *(v2 + 32) = v16;
  *(v2 + 16) = v13;
  *(v2 + 48) = v11;
  v18 = type metadata accessor for PromptWrapperFlow.State(0, v2 + 16);
  *(v2 + 232) = v18;
  OUTLINED_FUNCTION_3_1(v18);
  *(v2 + 240) = v19;
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2665CD0AC, 0, 0);
}

uint64_t sub_2665CD0AC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 128);
  v5 = *(*v4 + 136);
  OUTLINED_FUNCTION_23_4(v4 + v5, v0 + 96);
  (*(v3 + 16))(v1, v4 + v5, v2);
  OUTLINED_FUNCTION_31_1();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2666698A8();
      v21 = OUTLINED_FUNCTION_31_1();
      v22(v21);
      goto LABEL_12;
    case 2u:
      *(v0 + 264) = *(**(v0 + 128) + 120);
      v7 = swift_task_alloc();
      *(v0 + 272) = v7;
      *v7 = v0;
      v7[1] = sub_2665CD46C;
      v8 = *(v0 + 216);
      v9 = *(v0 + 184);
      v10 = *(v0 + 192);

      return MEMORY[0x2821BA608](v9, v10, v8);
    case 3u:
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v11 = sub_26666C168();
      __swift_project_value_buffer(v11, qword_28156D7E8);
      v12 = sub_26666C148();
      v13 = sub_26666C608();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = OUTLINED_FUNCTION_20();
        *v14 = 0;
        _os_log_impl(&dword_266549000, v12, v13, "[PromptWrapperFlow] execute called while still running child flow.", v14, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      v15 = *(v0 + 248);
      v16 = *(v0 + 224);
      v25 = *(v0 + 192);
      v26 = *(v0 + 208);

      *(v0 + 56) = v25;
      *(v0 + 72) = v26;
      *(v0 + 88) = v16;
      type metadata accessor for PromptWrapperFlow.Errors(0, v0 + 56);
      swift_getWitnessTable();
      v17 = swift_allocError();
      *v18 = 1;
      *v15 = v17;
      v15[8] = 0;
      v19 = *MEMORY[0x277D5BC30];
      sub_266669A28();
      sub_266669778();
      OUTLINED_FUNCTION_18_2();
      (*(v20 + 104))(v15, v19);
      swift_storeEnumTagMultiPayload();
      sub_2665CC46C(v15);
      sub_2666698A8();
      goto LABEL_12;
    default:
      v6 = *(v0 + 248);
      swift_storeEnumTagMultiPayload();
      sub_2665CC46C(v6);

      sub_266669848();

LABEL_12:

      v23 = *(v0 + 8);

      return v23();
  }
}

uint64_t sub_2665CD46C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_2665CD560, 0, 0);
}

uint64_t sub_2665CD560()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  sub_266669818();
  (*(v4 + 104))(v2, *MEMORY[0x277D5BEC8], v3);
  v5 = sub_266669AA8();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v7 = sub_26666C168();
    __swift_project_value_buffer(v7, qword_28156D7E8);
    v8 = sub_26666C148();
    v9 = sub_26666C618();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_20();
      *v10 = 0;
      _os_log_impl(&dword_266549000, v8, v9, "[PromptWrapperFlow] wrapped flow completed.", v10, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    v11 = v0[31];

    sub_266669518();
    swift_storeEnumTagMultiPayload();
    sub_2665CC46C(v11);
  }

  (*(v0[22] + 32))(v0[15], v0[23], v0[21]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_2665CD774(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*a2 + 80);
  v3 = *(*a2 + 88);
  v4 = *(*a2 + 96);
  v5 = *(*a2 + 104);
  v6 = *(*a2 + 112);
  v25 = v2;
  v26 = v3;
  v27 = v4;
  v28 = v5;
  v29 = v6;
  v7 = type metadata accessor for PromptWrapperFlow.State(0, &v25);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  if (sub_2666692E8())
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v10 = sub_26666C168();
    __swift_project_value_buffer(v10, qword_28156D7E8);
    v11 = sub_26666C148();
    v12 = sub_26666C618();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_266549000, v11, v12, "[PromptWrapperFlow] Inserted guard flow passed. Resuming wrapped flow.", v13, 2u);
      MEMORY[0x266789690](v13, -1, -1);
    }
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v14 = sub_26666C168();
    __swift_project_value_buffer(v14, qword_28156D7E8);
    v15 = sub_26666C148();
    v16 = sub_26666C618();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v24 = v7;
      v18 = v17;
      *v17 = 0;
      _os_log_impl(&dword_266549000, v15, v16, "[PromptWrapperFlow] Inserted guard flow failed. Exiting with a (handled) error.", v17, 2u);
      MEMORY[0x266789690](v18, -1, -1);
    }

    v25 = v2;
    v26 = v3;
    v27 = v4;
    v28 = v5;
    v29 = v6;
    type metadata accessor for PromptWrapperFlow.Errors(0, &v25);
    swift_getWitnessTable();
    v19 = swift_allocError();
    *v20 = 0;
    *v9 = v19;
    v9[8] = 1;
    v21 = *MEMORY[0x277D5BC30];
    sub_266669A28();
    v22 = sub_266669778();
    (*(*(v22 - 8) + 104))(v9, v21, v22);
  }

  swift_storeEnumTagMultiPayload();
  return sub_2665CC46C(v9);
}

uint64_t sub_2665CDACC(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6961466472617567;
  }
}

uint64_t sub_2665CDB10(uint64_t a1)
{
  sub_26666CB88();
  sub_26655110C(v3, *v1);
  return sub_26666CBC8();
}

uint64_t sub_2665CDB60(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v10 = v2;
  v5 = *(v3 + 112);
  v6 = *(v4 + 96);
  v8[0] = *(v4 + 80);
  v8[1] = v6;
  v9 = v5;
  type metadata accessor for PromptWrapperFlow(0, v8);
  swift_getWitnessTable();
  return sub_266669548();
}

unint64_t sub_2665CDC28()
{
  OUTLINED_FUNCTION_3_0();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  (*(v1 + 16))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_31_1();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v5 = OUTLINED_FUNCTION_31_1();
      v6(v5);
      result = 0x6574656C706D6F63;
      break;
    case 2u:
      result = 0xD000000000000012;
      break;
    case 3u:
      result = 0xD000000000000013;
      break;
    default:

      result = 0x6E69747265736E69;
      break;
  }

  return result;
}

uint64_t sub_2665CDD94(uint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_5_19();
  v4 = v3;
  v5 = v2[10];
  (*(*(v5 - 8) + 8))(v1 + v2[15], v5);
  v6 = v2[11];
  (*(*(v6 - 8) + 8))(v1 + *(*v1 + 128), v6);
  v7 = *(*v1 + 136);
  OUTLINED_FUNCTION_5_19();
  v9 = *(v8 + 112);
  v12[0] = v5;
  v12[1] = v6;
  v13 = *(v4 + 96);
  v14 = v9;
  type metadata accessor for PromptWrapperFlow.State(0, v12);
  OUTLINED_FUNCTION_18_2();
  (*(v10 + 8))(v1 + v7);
  return v1;
}

uint64_t sub_2665CDF0C(uint64_t a1)
{
  sub_2665CDD94(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_2665CDF9C(uint64_t a1)
{
  sub_2665CE020();
  if (v1 <= 0x3F)
  {
    sub_266669A28();
    sub_266669778();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2665CE020()
{
  if (!qword_28007E7F0[0])
  {
    v0 = sub_266669388();
    if (!v1)
    {
      atomic_store(v0, qword_28007E7F0);
    }
  }
}

uint64_t sub_2665CE098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2665CE148;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2665CE148(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t sub_2665CE260(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2665CE2FC;

  return sub_2665CCE9C(a1);
}

uint64_t sub_2665CE2FC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

_BYTE *sub_2665CE434(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t static EventRecurrencePromptResult.identifier.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_7_15(a1);

  return OUTLINED_FUNCTION_6_13();
}

uint64_t static EventRecurrencePromptResult.identifier.setter(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  static EventRecurrencePromptResult.identifier = a1;
  off_28007E880 = a2;
  qword_28007E888 = a3;
  off_28007E890 = a4;
}

uint64_t sub_2665CE668(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C65636E6163 && a2 == 0xE600000000000000;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656E4F73696874 && a2 == 0xE700000000000000;
    if (v6 || (sub_26666CAC8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 7105633 && a2 == 0xE300000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26666CAC8();

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

uint64_t sub_2665CE774(char a1)
{
  if (!a1)
  {
    return 0x6C65636E6163;
  }

  if (a1 == 1)
  {
    return 0x656E4F73696874;
  }

  return 7105633;
}

uint64_t sub_2665CE7C0(uint64_t a1)
{
  v2 = sub_2665CED50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665CE7FC(uint64_t a1)
{
  v2 = sub_2665CED50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665CE838(uint64_t a1)
{
  v2 = sub_2665CEDF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665CE874(uint64_t a1)
{
  v2 = sub_2665CEDF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665CE8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2665CE668(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2665CE8E0(uint64_t a1)
{
  v2 = sub_2665CECFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665CE91C(uint64_t a1)
{
  v2 = sub_2665CECFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665CE958(uint64_t a1)
{
  v2 = sub_2665CEDA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665CE994(uint64_t a1)
{
  v2 = sub_2665CEDA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EventRecurrencePromptResult.encode(to:)(void *a1, int a2)
{
  v42 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E898, &qword_266675490);
  OUTLINED_FUNCTION_3_0();
  v40 = v4;
  v41 = v3;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v39 = &v35 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E8A0, &qword_266675498);
  OUTLINED_FUNCTION_3_0();
  v37 = v8;
  v38 = v7;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E8A8, &qword_2666754A0);
  OUTLINED_FUNCTION_3_0();
  v36 = v13;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E8B0, &qword_2666754A8);
  OUTLINED_FUNCTION_3_0();
  v19 = v18;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665CECFC();
  sub_26666CBE8();
  v23 = (v19 + 8);
  if (v42)
  {
    if (v42 == 1)
    {
      v44 = 1;
      v24 = sub_2665CEDA4();
      OUTLINED_FUNCTION_6_8(&type metadata for EventRecurrencePromptResult.ThisOneCodingKeys, &v44, v25, v26, v24);
      (*(v37 + 8))(v11, v38);
    }

    else
    {
      v45 = 2;
      v30 = sub_2665CED50();
      v31 = v39;
      OUTLINED_FUNCTION_6_8(&type metadata for EventRecurrencePromptResult.AllCodingKeys, &v45, v32, v33, v30);
      (*(v40 + 8))(v31, v41);
    }
  }

  else
  {
    v43 = 0;
    v27 = sub_2665CEDF8();
    OUTLINED_FUNCTION_6_8(&type metadata for EventRecurrencePromptResult.CancelCodingKeys, &v43, v28, v29, v27);
    (*(v36 + 8))(v16, v12);
  }

  return (*v23)(v22, v17);
}

unint64_t sub_2665CECFC()
{
  result = qword_28007E8B8;
  if (!qword_28007E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E8B8);
  }

  return result;
}

unint64_t sub_2665CED50()
{
  result = qword_28007E8C0;
  if (!qword_28007E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E8C0);
  }

  return result;
}

unint64_t sub_2665CEDA4()
{
  result = qword_28007E8C8;
  if (!qword_28007E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E8C8);
  }

  return result;
}

unint64_t sub_2665CEDF8()
{
  result = qword_28007E8D0;
  if (!qword_28007E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E8D0);
  }

  return result;
}

uint64_t EventRecurrencePromptResult.init(from:)(void *a1)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E8D8, &qword_2666754B0);
  OUTLINED_FUNCTION_3_0();
  v60 = v2;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v58 = &v52 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E8E0, &qword_2666754B8);
  OUTLINED_FUNCTION_3_0();
  v57 = v5;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E8E8, &qword_2666754C0);
  OUTLINED_FUNCTION_3_0();
  v56 = v10;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E8F0, &unk_2666754C8);
  OUTLINED_FUNCTION_3_0();
  v61 = v15;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v16);
  v17 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_2665CECFC();
  v18 = v63;
  sub_26666CBD8();
  if (v18)
  {
    goto LABEL_12;
  }

  v52 = v9;
  v53 = v13;
  v54 = v8;
  v55 = 0;
  v19 = v62;
  v63 = a1;
  sub_26666C9F8();
  result = sub_266575DD8();
  v17 = v14;
  if (v22 == v23 >> 1)
  {
    goto LABEL_10;
  }

  if (v22 < (v23 >> 1))
  {
    v24 = v14;
    v25 = *(v21 + v22);
    v26 = sub_266575DD4();
    v28 = v27;
    v30 = v29;
    swift_unknownObjectRelease();
    v31 = v59;
    v32 = v60;
    if (v28 == v30 >> 1)
    {
      v17 = v25;
      if (v25)
      {
        v56 = v26;
        v33 = v55;
        if (v25 == 1)
        {
          v65 = 1;
          sub_2665CEDA4();
          v34 = v54;
          OUTLINED_FUNCTION_5_15();
          sub_26666C968();
          if (!v33)
          {
            swift_unknownObjectRelease();
            (*(v57 + 8))(v34, v31);
            v35 = OUTLINED_FUNCTION_4_20();
            v36(v35);
LABEL_21:
            __swift_destroy_boxed_opaque_existential_1(v63);
            return v17;
          }
        }

        else
        {
          LODWORD(v59) = v25;
          v66 = 2;
          sub_2665CED50();
          v17 = v58;
          OUTLINED_FUNCTION_5_15();
          sub_26666C968();
          if (!v33)
          {
            swift_unknownObjectRelease();
            (*(v32 + 8))(v17, v19);
            v50 = OUTLINED_FUNCTION_4_20();
            v51(v50);
            v17 = v59;
            goto LABEL_21;
          }
        }

        v46 = OUTLINED_FUNCTION_4_20();
        v47(v46);
      }

      else
      {
        v64 = 0;
        sub_2665CEDF8();
        v42 = v53;
        OUTLINED_FUNCTION_5_15();
        v43 = v55;
        sub_26666C968();
        if (!v43)
        {
          swift_unknownObjectRelease();
          (*(v56 + 8))(v42, v52);
          v48 = OUTLINED_FUNCTION_3_19();
          v49(v48, v24);
          goto LABEL_21;
        }

        v44 = OUTLINED_FUNCTION_3_19();
        v45(v44, v24);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v17 = v24;
LABEL_10:
    v37 = sub_26666C848();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4C0, &qword_26666F190);
    *v39 = &type metadata for EventRecurrencePromptResult;
    sub_26666C978();
    sub_26666C838();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    v40 = OUTLINED_FUNCTION_3_19();
    v41(v40, v17);
LABEL_11:
    a1 = v63;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v17;
  }

  __break(1u);
  return result;
}