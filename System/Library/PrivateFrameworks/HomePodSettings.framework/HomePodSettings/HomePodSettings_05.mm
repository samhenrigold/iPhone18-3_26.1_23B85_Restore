uint64_t sub_25433DCC0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_33_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_3(v1);

  return sub_2543351B8(v3, v4);
}

uint64_t sub_25433DD4C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_33_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_3(v1);

  return sub_2543356E4(v3, v4, v5, v6);
}

uint64_t sub_25433DDD8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_33_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_3(v1);

  return sub_2543368C4(v3, v4);
}

uint64_t sub_25433DE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  return sub_254332FDC(v5, a2, a3);
}

uint64_t sub_25433DEA0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_30_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25433DEE4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 16);
  *(v6 + 16) = *a6;
  *(v6 + 32) = v12;
  *(v6 + 48) = *(a6 + 32);
  *(v6 + 64) = *(a6 + 48);
  v13 = swift_task_alloc();
  *(v6 + 72) = v13;
  *v13 = v6;
  v13[1] = sub_25433DFC8;

  return sub_2543330FC(a1, a2, a3, a4, a5, v6 + 16);
}

uint64_t sub_25433DFC8()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_25433E0A8()
{
  swift_unknownObjectRelease();

  sub_2542D7D40(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_25433E100(uint64_t a1)
{
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v2[1] = sub_2542DB160;
  OUTLINED_FUNCTION_59_2();

  return v4();
}

void OUTLINED_FUNCTION_33_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, os_log_type_t a11)
{

  _os_log_impl(a1, v11, a11, a4, v12, 0xCu);
}

uint64_t OUTLINED_FUNCTION_51_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_56_1()
{
}

uint64_t OUTLINED_FUNCTION_83_0()
{

  return sub_2542D5198(v0);
}

void OUTLINED_FUNCTION_99_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_100_0()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_102_1(uint64_t a1)
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_103_1()
{
}

uint64_t CarrySettings.DataModelUpdateRequest.data.getter(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22DataModelUpdateRequest_data;
  OUTLINED_FUNCTION_0_16(a1, v5);
  v3 = *v2;
  sub_2542D61B4(*v2, *(v2 + 8));
  return v3;
}

uint64_t CarrySettings.DataModelUpdateRequest.data.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22DataModelUpdateRequest_data);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_2542D7D40(v6, v7);
}

uint64_t CarrySettings.DataModelUpdateRequest.additionalInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22DataModelUpdateRequest_additionalInfo;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id CarrySettings.DataModelUpdateRequest.init(data:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22DataModelUpdateRequest_additionalInfo] = MEMORY[0x277D84F98];
  v6 = &v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22DataModelUpdateRequest_data];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_25433E790(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22DataModelUpdateRequest_additionalInfo] = MEMORY[0x277D84F98];
  sub_25430DB88();
  v5 = sub_2543A3088();
  if (v5)
  {
    v6 = v5;
    v10 = 0;
    sub_2543A1EE8();
  }

  v7 = &v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22DataModelUpdateRequest_data];
  *v7 = 0;
  *(v7 + 1) = 0xC000000000000000;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v11, sel_init, v10);

  return v8;
}

Swift::Void __swiftcall CarrySettings.DataModelUpdateRequest.encode(with:)(NSCoder with)
{
  v3 = (v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22DataModelUpdateRequest_data);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  sub_2542D61B4(v5, v4);
  v6 = sub_2543A1EC8();
  sub_2542D7D40(v5, v4);
  v7 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
}

uint64_t CarrySettings.DataModelUpdateRequest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_2542E576C(a1, v15);
  if (!v16)
  {
    sub_2542E1050(v15);
    goto LABEL_6;
  }

  v3 = swift_dynamicCast();
  if ((v3 & 1) == 0)
  {
LABEL_6:
    v12 = 0;
    return v12 & 1;
  }

  v4 = v14[0];
  if (v14[0] == v1)
  {

    v12 = 1;
  }

  else
  {
    v5 = &v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22DataModelUpdateRequest_data];
    v6 = OUTLINED_FUNCTION_0_16(v3, v15);
    v7 = *v5;
    v8 = v5[1];
    v9 = (v14[0] + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22DataModelUpdateRequest_data);
    OUTLINED_FUNCTION_0_16(v6, v14);
    v10 = *v9;
    v11 = v9[1];
    sub_2542D61B4(v7, v8);
    sub_2542D61B4(v10, v11);
    v12 = MEMORY[0x259C089B0](v7, v8, v10, v11);

    sub_2542D7D40(v10, v11);
    sub_2542D7D40(v7, v8);
  }

  return v12 & 1;
}

id CarrySettings.DataModelUpdateRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CarrySettings.DataModelUpdateRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25433ECA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657461657263 && a2 == 0xE600000000000000;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656C6564 && a2 == 0xE600000000000000;
    if (v6 || (sub_2543A3608() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7373696D736964 && a2 == 0xE700000000000000;
      if (v7 || (sub_2543A3608() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x657461647075 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2543A3608();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_25433EDF4(char a1)
{
  result = 0x657461657263;
  switch(a1)
  {
    case 1:
      result = 0x6574656C6564;
      break;
    case 2:
      result = 0x7373696D736964;
      break;
    case 3:
      result = 0x657461647075;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25433EE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25433ECA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25433EEA4(uint64_t a1)
{
  v2 = sub_25433F4C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25433EEE0(uint64_t a1)
{
  v2 = sub_25433F4C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25433EF1C(uint64_t a1)
{
  v2 = sub_25433F618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25433EF58(uint64_t a1)
{
  v2 = sub_25433F618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25433EF94(uint64_t a1)
{
  v2 = sub_25433F5C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25433EFD0(uint64_t a1)
{
  v2 = sub_25433F5C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25433F00C(uint64_t a1)
{
  v2 = sub_25433F570();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25433F048(uint64_t a1)
{
  v2 = sub_25433F570();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25433F084(uint64_t a1)
{
  v2 = sub_25433F51C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25433F0C0(uint64_t a1)
{
  v2 = sub_25433F51C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HPTimerOperation.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1270, &qword_2543ACDD0);
  OUTLINED_FUNCTION_3();
  v49 = v4;
  v50 = v3;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_0();
  v48 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1278, &qword_2543ACDD8);
  OUTLINED_FUNCTION_3();
  v46 = v8;
  v47 = v7;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_0();
  v45 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1280, &qword_2543ACDE0);
  OUTLINED_FUNCTION_3();
  v43 = v12;
  v44 = v11;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_0();
  v42 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1288, &qword_2543ACDE8);
  OUTLINED_FUNCTION_3();
  v40 = v16;
  v41 = v15;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1290, &qword_2543ACDF0);
  OUTLINED_FUNCTION_3();
  v22 = v21;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v23);
  v25 = &v40 - v24;
  v26 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25433F4C8();
  sub_2543A3778();
  switch(v26)
  {
    case 1:
      v52 = 1;
      v36 = sub_25433F5C4();
      v28 = v42;
      OUTLINED_FUNCTION_7_0(&type metadata for HPTimerOperation.DeleteCodingKeys, &v52, v37, v38, v36);
      v32 = v43;
      v31 = v44;
      goto LABEL_6;
    case 2:
      v53 = 2;
      v27 = sub_25433F570();
      v28 = v45;
      OUTLINED_FUNCTION_7_0(&type metadata for HPTimerOperation.DismissCodingKeys, &v53, v29, v30, v27);
      v32 = v46;
      v31 = v47;
      goto LABEL_6;
    case 3:
      v54 = 3;
      v33 = sub_25433F51C();
      v28 = v48;
      OUTLINED_FUNCTION_7_0(&type metadata for HPTimerOperation.UpdateCodingKeys, &v54, v34, v35, v33);
      v32 = v49;
      v31 = v50;
LABEL_6:
      (*(v32 + 8))(v28, v31);
      break;
    default:
      v51 = 0;
      sub_25433F618();
      sub_2543A3508();
      (*(v40 + 8))(v19, v41);
      break;
  }

  return (*(v22 + 8))(v25, v20);
}

unint64_t sub_25433F4C8()
{
  result = qword_27F5E1298;
  if (!qword_27F5E1298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1298);
  }

  return result;
}

unint64_t sub_25433F51C()
{
  result = qword_27F5E12A0;
  if (!qword_27F5E12A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E12A0);
  }

  return result;
}

unint64_t sub_25433F570()
{
  result = qword_27F5E12A8;
  if (!qword_27F5E12A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E12A8);
  }

  return result;
}

unint64_t sub_25433F5C4()
{
  result = qword_27F5E12B0;
  if (!qword_27F5E12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E12B0);
  }

  return result;
}

unint64_t sub_25433F618()
{
  result = qword_27F5E12B8;
  if (!qword_27F5E12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E12B8);
  }

  return result;
}

uint64_t HPTimerOperation.hashValue.getter()
{
  v1 = *v0;
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](v1);
  return sub_2543A3728();
}

uint64_t HPTimerOperation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v74 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E12C0, &qword_2543ACDF8);
  OUTLINED_FUNCTION_3();
  v73 = v3;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_0();
  v76 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E12C8, &qword_2543ACE00);
  OUTLINED_FUNCTION_3();
  v70 = v7;
  v71 = v6;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_0();
  v72 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E12D0, &qword_2543ACE08);
  OUTLINED_FUNCTION_3();
  v68 = v11;
  v69 = v10;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v12);
  v14 = &v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E12D8, &qword_2543ACE10);
  OUTLINED_FUNCTION_3();
  v67 = v16;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E12E0, &unk_2543ACE18);
  OUTLINED_FUNCTION_3();
  v75 = v21;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v22);
  v24 = &v61 - v23;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25433F4C8();
  v25 = v78;
  sub_2543A3768();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v64 = v15;
  v65 = v19;
  v66 = v14;
  v26 = v76;
  v27 = v77;
  v78 = a1;
  v28 = v24;
  v29 = sub_2543A34E8();
  sub_2542DF254(v29, 0);
  if (v31 == v32 >> 1)
  {
    goto LABEL_8;
  }

  v63 = 0;
  if (v31 >= (v32 >> 1))
  {
    __break(1u);
    JUMPOUT(0x25433FCE0);
  }

  v33 = *(v30 + v31);
  sub_2542DF244(v31 + 1);
  v35 = v34;
  v37 = v36;
  swift_unknownObjectRelease();
  if (v35 != v37 >> 1)
  {
LABEL_8:
    v46 = v75;
    v47 = sub_2543A32E8();
    swift_allocError();
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14E0, &unk_2543A6DE0);
    *v49 = &type metadata for HPTimerOperation;
    sub_2543A3468();
    sub_2543A32D8();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v46 + 8))(v28, v20);
    a1 = v78;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v38 = v74;
  v39 = v75;
  v62 = v33;
  v40 = v33;
  v41 = v73;
  switch(v40)
  {
    case 1:
      v80 = 1;
      v58 = sub_25433F5C4();
      v52 = v66;
      OUTLINED_FUNCTION_8_0(&type metadata for HPTimerOperation.DeleteCodingKeys, &v80, v59, v60, v58);
      swift_unknownObjectRelease();
      v56 = v68;
      v55 = v69;
      goto LABEL_18;
    case 2:
      v81[0] = 2;
      v51 = sub_25433F570();
      v52 = v72;
      OUTLINED_FUNCTION_8_0(&type metadata for HPTimerOperation.DismissCodingKeys, v81, v53, v54, v51);
      swift_unknownObjectRelease();
      v56 = v70;
      v55 = v71;
LABEL_18:
      (*(v56 + 8))(v52, v55);
      goto LABEL_19;
    case 3:
      v81[1] = 3;
      sub_25433F51C();
      v57 = v63;
      sub_2543A3458();
      if (v57)
      {
        (*(v39 + 8))(v28, v20);
        swift_unknownObjectRelease();
        a1 = v78;
        return __swift_destroy_boxed_opaque_existential_0(a1);
      }

      swift_unknownObjectRelease();
      (*(v41 + 8))(v26, v27);
LABEL_19:
      (*(v39 + 8))(v28, v20);
      *v38 = v62;
      result = __swift_destroy_boxed_opaque_existential_0(v78);
      break;
    default:
      v79 = 0;
      v42 = sub_25433F618();
      v43 = v65;
      OUTLINED_FUNCTION_8_0(&type metadata for HPTimerOperation.CreateCodingKeys, &v79, v44, v45, v42);
      swift_unknownObjectRelease();
      (*(v67 + 8))(v43, v64);
      goto LABEL_19;
  }

  return result;
}

unint64_t sub_25433FD30()
{
  result = qword_27F5E12E8;
  if (!qword_27F5E12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E12E8);
  }

  return result;
}

_BYTE *sub_25433FD98(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x25433FE64);
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

unint64_t sub_25433FEE0()
{
  result = qword_27F5E12F0;
  if (!qword_27F5E12F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E12F0);
  }

  return result;
}

unint64_t sub_25433FF38()
{
  result = qword_27F5E12F8;
  if (!qword_27F5E12F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E12F8);
  }

  return result;
}

unint64_t sub_25433FF90()
{
  result = qword_27F5E1300;
  if (!qword_27F5E1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1300);
  }

  return result;
}

unint64_t sub_25433FFE8()
{
  result = qword_27F5E1308;
  if (!qword_27F5E1308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1308);
  }

  return result;
}

unint64_t sub_254340040()
{
  result = qword_27F5E1310;
  if (!qword_27F5E1310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1310);
  }

  return result;
}

unint64_t sub_254340098()
{
  result = qword_27F5E1318;
  if (!qword_27F5E1318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1318);
  }

  return result;
}

unint64_t sub_2543400F0()
{
  result = qword_27F5E1320;
  if (!qword_27F5E1320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1320);
  }

  return result;
}

unint64_t sub_254340148()
{
  result = qword_27F5E1328;
  if (!qword_27F5E1328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1328);
  }

  return result;
}

unint64_t sub_2543401A0()
{
  result = qword_27F5E1330;
  if (!qword_27F5E1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1330);
  }

  return result;
}

unint64_t sub_2543401F8()
{
  result = qword_27F5E1338;
  if (!qword_27F5E1338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1338);
  }

  return result;
}

unint64_t sub_254340250()
{
  result = qword_27F5E1340;
  if (!qword_27F5E1340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1340);
  }

  return result;
}

uint64_t HPAlarm.mtAlarmData.getter()
{
  v1 = *v0;
  sub_2542D61B4(*v0, *(v0 + 8));
  return v1;
}

uint64_t HPAlarm.init(mtAlarmData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_2543402F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x446D72616C41746DLL && a2 == 0xEB00000000617461)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2543A3608();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_254340398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2543402F8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2543403C4(uint64_t a1)
{
  v2 = sub_254340594();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254340400(uint64_t a1)
{
  v2 = sub_254340594();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HPAlarm.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1348, &qword_2543AD358);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2542D61B4(v9, v10);
  sub_254340594();
  sub_2543A3778();
  v12 = v9;
  v13 = v10;
  sub_25431A9E4();
  sub_2543A3578();
  sub_2542D7D40(v12, v13);
  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_254340594()
{
  result = qword_27F5E1350;
  if (!qword_27F5E1350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1350);
  }

  return result;
}

uint64_t HPAlarm.hashValue.getter()
{
  sub_2543A36E8();
  sub_2543A1F08();
  return sub_2543A3728();
}

uint64_t HPAlarm.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1358, &qword_2543AD360);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_254340594();
  sub_2543A3768();
  if (!v2)
  {
    sub_25431AA38();
    sub_2543A34D8();
    (*(v7 + 8))(v10, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2543407DC(uint64_t a1)
{
  sub_2543A36E8();
  sub_2543A1F08();
  return sub_2543A3728();
}

unint64_t sub_254340828()
{
  result = qword_27F5E1360;
  if (!qword_27F5E1360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1360);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HPAlarm.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x254340928);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_254340964()
{
  result = qword_27F5E1368;
  if (!qword_27F5E1368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1368);
  }

  return result;
}

unint64_t sub_2543409BC()
{
  result = qword_27F5E1370;
  if (!qword_27F5E1370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1370);
  }

  return result;
}

unint64_t sub_254340A14()
{
  result = qword_27F5E1378;
  if (!qword_27F5E1378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1378);
  }

  return result;
}

void static OpalTransport.coordinationServerTransport<A, B>(handshakeHandler:sessionToMember:requestHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v32 = a2;
  v33 = a3;
  v30 = *(a7 - 8);
  v31 = a1;
  MEMORY[0x28223BE20](a1);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a9;
  v17[6] = a10;
  v17[7] = a4;
  v17[8] = a5;
  sub_2542D6250(0, &qword_27F5E1380, 0x277D27480);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v19 = [ObjCClassFromMetadata predicateForType];
  v20 = [objc_opt_self() realmWithPredicate_];

  sub_2542D6250(0, &qword_27F5E1388, 0x277CFD080);
  v21 = v20;
  v22 = OUTLINED_FUNCTION_1_23();
  v26 = sub_254341784(v22, v23, v24, v25, v21);
  if (v26)
  {
    v27 = v26;
    v34[0] = a6;
    v34[1] = a7;
    v34[2] = a8;
    v34[3] = a9;
    v34[4] = a10;
    type metadata accessor for CoordinationTransportServer(0, v34);
    v28 = [objc_opt_self() clusterWithConfiguration_];

    (*(v30 + 16))(v16, v31, a7);

    sub_25430519C();
  }

  else
  {
    sub_254341860();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_254340CF8(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  *v6 = v3;
  v6[1] = sub_254340E04;

  return v8(v3 + 16, a1, a2);
}

uint64_t sub_254340E04()
{
  OUTLINED_FUNCTION_28();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *(v4 + 64) = v0;

  if (v0)
  {
    v5 = sub_254341CC4;
  }

  else
  {
    v5 = sub_254341CB0;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_254340F0C()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_254340F44()
{
  OUTLINED_FUNCTION_2_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_254341CC0;
  OUTLINED_FUNCTION_3_18();

  return sub_254340CF8(v2, v3, v4);
}

id sub_254341018(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CoordinationResponse(0, v7, v8, v9);
  (*(v4 + 16))(v6, a1, a2);
  return sub_2542C6F64(v6);
}

void static OpalTransport.coordinationClientTransport<A>(introductionToMember:requestHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a1;
  v14[6] = a2;
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a3;
  v15[6] = a4;
  sub_2542D6250(0, &qword_27F5E1380, 0x277D27480);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v17 = [ObjCClassFromMetadata predicateForType];
  v18 = [objc_opt_self() realmWithPredicate_];

  sub_2542D6250(0, &qword_27F5E1388, 0x277CFD080);
  v19 = v18;
  v20 = OUTLINED_FUNCTION_1_23();
  v24 = sub_254341784(v20, v21, v22, v23, v19);
  if (v24)
  {
    v25 = v24;
    v27[0] = a5;
    v27[1] = type metadata accessor for OpalHandshakeIntroduction();
    v27[2] = a6;
    v27[3] = a7;
    v27[4] = &protocol witness table for OpalHandshakeIntroduction;
    type metadata accessor for CoordinationTransportClient(0, v27);
    v26 = [objc_opt_self() clusterWithConfiguration_];

    sub_2543434B4(v26, 1818325071, 0xE400000000000000, sub_2543418EC, v14, &unk_2543AD5F8, v15);
  }

  else
  {
    sub_254341860();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_254341334(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = [a1 member];
  v7 = [v6 IDSIdentifier];

  if (v7)
  {
    v8 = sub_2543A2878();
    v10 = v9;

    a3(v8, v10, a2);
  }

  else
  {
    v12 = [a1 member];
    sub_254341C58();
    swift_allocError();
    *v13 = v12;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_25434144C(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  *v6 = v3;
  v6[1] = sub_254341554;

  return v8(v3 + 16, a1, a2);
}

uint64_t sub_254341554()
{
  OUTLINED_FUNCTION_28();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *(v4 + 64) = v0;

  if (v0)
  {
    v5 = sub_2543416E0;
  }

  else
  {
    v5 = sub_25434165C;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_25434165C()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[5];
  v2 = __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  v3 = sub_254341018(v2, v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v4 = v0[1];

  return v4(v3);
}

uint64_t static OpalTransport.registerAllowedRequests(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    if (qword_27F5DF088 != -1)
    {
      swift_once();
    }

    v3 = (v2 + 40);
    do
    {
      result = sub_25436A2AC(*(v3 - 1), *(v3 - 1), *v3);
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

id sub_254341784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_2543A2858();

  v9 = [swift_getObjCClassFromMetadata() configurationWithDomain:v8 requiredServices:a3 options:a4 realm:a5];

  return v9;
}

BOOL sub_254341814(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

unint64_t sub_254341860()
{
  result = qword_27F5E1390;
  if (!qword_27F5E1390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1390);
  }

  return result;
}

uint64_t sub_2543418B4()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_254341910()
{
  OUTLINED_FUNCTION_2_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2543419CC;
  OUTLINED_FUNCTION_3_18();

  return sub_25434144C(v2, v3, v4);
}

uint64_t sub_2543419CC()
{
  OUTLINED_FUNCTION_28();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

_BYTE *storeEnumTagSinglePayload for OpalTransport(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x254341B58);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254341B90(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = v1;
  type metadata accessor for CoordinationTransportServer(255, v4);
  return swift_getWitnessTable();
}

uint64_t sub_254341BE4(uint64_t a1)
{
  v3[0] = *a1;
  v3[1] = type metadata accessor for OpalHandshakeIntroduction();
  v4 = *(a1 + 8);
  v5 = &protocol witness table for OpalHandshakeIntroduction;
  type metadata accessor for CoordinationTransportClient(255, v3);
  return swift_getWitnessTable();
}

unint64_t sub_254341C58()
{
  result = qword_27F5E1398;
  if (!qword_27F5E1398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1398);
  }

  return result;
}

uint64_t sub_254341D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a6;
  v7[10] = v6;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  return MEMORY[0x2822009F8](sub_254341D38);
}

uint64_t sub_254341D38()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v9 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v5;
  *(v4 + 48) = v9;
  *(v4 + 64) = v2;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E13A0, &qword_2543AD628);
  *v6 = v0;
  v6[1] = sub_254341E64;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000002FLL, 0x80000002543B9550, sub_254342258, v4, v7);
}

uint64_t sub_254341E64()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_254341F9C;
  }

  else
  {

    v2 = sub_254341F80;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_254341F9C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_254342000(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v19 = a1;
  v20 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E13A8, &qword_2543AD630);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v13 = sub_2543A2858();
  v14 = sub_2543A2708();
  v15 = sub_2543A2858();
  if (a8)
  {
    a8 = sub_2543A2708();
  }

  (*(v10 + 16))(v12, v19, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v16, v12, v9);
  aBlock[4] = sub_254342390;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_254342424;
  aBlock[3] = &block_descriptor_4;
  v18 = _Block_copy(aBlock);

  [v20 sendRequestID:v13 request:v14 destinationID:v15 options:a8 responseHandler:v18];
  _Block_release(v18);
}

uint64_t sub_25434226C(uint64_t a1, uint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E13A8, &qword_2543AD630);
    return sub_2543A2B68();
  }

  else
  {
    sub_2543A2768();
    sub_2543A2768();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E13A8, &qword_2543AD630);
    return sub_2543A2B78();
  }
}

uint64_t sub_2543422FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E13A8, &qword_2543AD630);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_254342390(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E13A8, &qword_2543AD630);

  return sub_25434226C(a1, a2, a3);
}

uint64_t sub_254342424(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_2543A2718();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a3)
  {
LABEL_3:
    v5 = sub_2543A2718();
  }

LABEL_4:

  v8 = a4;
  v6(v7, v5, a4);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id OpalHandshakeIntroduction.__allocating_init(name:model:buildVersion:deviceColor:pairID:pairName:roomID:roomName:mediaRouteID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_9_9();
  v26 = objc_allocWithZone(v18);
  return OpalHandshakeIntroduction.init(name:model:buildVersion:deviceColor:pairID:pairName:roomID:roomName:mediaRouteID:)(v24, v23, v22, v21, v20, v19, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

id OpalHandshakeIntroduction.init(name:model:buildVersion:deviceColor:pairID:pairName:roomID:roomName:mediaRouteID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_9_9();
  ObjectType = swift_getObjectType();
  v26 = &v18[OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_name];
  *v26 = v24;
  *(v26 + 1) = v23;
  v27 = &v18[OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_model];
  *v27 = v22;
  *(v27 + 1) = v21;
  v28 = &v18[OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_buildVersion];
  *v28 = v20;
  *(v28 + 1) = v19;
  v29 = &v18[OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_deviceColor];
  *v29 = a7;
  *(v29 + 1) = a8;
  v30 = &v18[OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_pairID];
  *v30 = a9;
  *(v30 + 1) = a10;
  v31 = &v18[OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_pairName];
  *v31 = a11;
  *(v31 + 1) = a12;
  v32 = &v18[OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_roomID];
  *v32 = a13;
  *(v32 + 1) = a14;
  v33 = &v18[OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_roomName];
  *v33 = a15;
  *(v33 + 1) = a16;
  v34 = &v18[OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_mediaRouteID];
  *v34 = a17;
  *(v34 + 1) = a18;
  v38.receiver = v18;
  v38.super_class = ObjectType;
  return objc_msgSendSuper2(&v38, sel_init);
}

id sub_2543428D4(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  sub_25430CAE0();
  v6 = sub_2543A3088();
  if (!v6 || (OUTLINED_FUNCTION_3_19(v6, v7, v8, v9, v10, v11, v12, v13, v86.receiver, v86.super_class, v87, v88), v2, (v14 = v88) == 0))
  {

LABEL_13:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v15 = &v3[OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_name];
  *v15 = v87;
  *(v15 + 1) = v14;
  v16 = sub_2543A3088();
  if (!v16 || (OUTLINED_FUNCTION_3_19(v16, v17, v18, v19, v20, v21, v22, v23, v86.receiver, v86.super_class, v87, v88), v2, !v88))
  {

LABEL_12:

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_6_15(v88);
  v24 = sub_2543A3088();
  if (!v24 || (OUTLINED_FUNCTION_3_19(v24, v25, v26, v27, v28, v29, v30, v31, v86.receiver, v86.super_class, v87, v88), v2, !v88))
  {

    OUTLINED_FUNCTION_6_1(OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_model);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_6_15(v88);
  v32 = sub_2543A3088();
  if (v32)
  {
    OUTLINED_FUNCTION_3_19(v32, v33, v34, v35, v36, v37, v38, v39, v86.receiver, v86.super_class, v87, v88);

    OUTLINED_FUNCTION_1_24();
  }

  else
  {
    OUTLINED_FUNCTION_8_13();
  }

  OUTLINED_FUNCTION_6_15(v40);
  v44 = OUTLINED_FUNCTION_11_12(v43, 1919508816);
  if (v44)
  {
    OUTLINED_FUNCTION_3_19(v44, v45, v46, v47, v48, v49, v50, v51, v86.receiver, v86.super_class, v87, v88);

    OUTLINED_FUNCTION_1_24();
  }

  else
  {
    OUTLINED_FUNCTION_8_13();
  }

  OUTLINED_FUNCTION_6_15(v52);
  v54 = OUTLINED_FUNCTION_10_12(v53, 0x72696150u);
  if (v54)
  {
    OUTLINED_FUNCTION_3_19(v54, v55, v56, v57, v58, v59, v60, v61, v86.receiver, v86.super_class, v87, v88);

    OUTLINED_FUNCTION_1_24();
  }

  else
  {
    OUTLINED_FUNCTION_8_13();
  }

  OUTLINED_FUNCTION_6_15(v62);
  v64 = OUTLINED_FUNCTION_11_12(v63, 1836019538);
  if (v64)
  {
    OUTLINED_FUNCTION_3_19(v64, v65, v66, v67, v68, v69, v70, v71, v86.receiver, v86.super_class, v87, v88);

    OUTLINED_FUNCTION_1_24();
  }

  else
  {
    OUTLINED_FUNCTION_8_13();
  }

  OUTLINED_FUNCTION_6_15(v72);
  v74 = OUTLINED_FUNCTION_10_12(v73, 0x6D6F6F52u);
  if (v74)
  {
    OUTLINED_FUNCTION_3_19(v74, v75, v76, v77, v78, v79, v80, v81, v86.receiver, v86.super_class, v87, v88);

    OUTLINED_FUNCTION_1_24();
  }

  else
  {
    OUTLINED_FUNCTION_8_13();
  }

  OUTLINED_FUNCTION_6_15(v82);
  v83 = sub_2543A3088();
  if (v83)
  {
    v84 = v83;
    v87 = 0;
    v88 = 0;
    sub_2543A2868();

    OUTLINED_FUNCTION_1_24();
  }

  else
  {
    OUTLINED_FUNCTION_8_13();
  }

  OUTLINED_FUNCTION_6_15(v85);
  v86.receiver = v3;
  v86.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v86, sel_init);

  return v41;
}

Swift::Void __swiftcall OpalHandshakeIntroduction.encode(with:)(NSCoder with)
{
  v2 = sub_2543A2858();
  v3 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];

  v4 = sub_2543A2858();
  v5 = sub_2543A2858();
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_7_10();
  if (v6)
  {
    sub_2543A2858();
  }

  v7 = sub_2543A2858();
  OUTLINED_FUNCTION_1_6(v7);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_7_10();
  if (v8)
  {
    sub_2543A2858();
  }

  v9 = sub_2543A2858();
  OUTLINED_FUNCTION_1_6(v9);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_7_10();
  if (v10)
  {
    sub_2543A2858();
  }

  v11 = sub_2543A2858();
  OUTLINED_FUNCTION_1_6(v11);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_7_10();
  if (v12)
  {
    sub_2543A2858();
  }

  v13 = sub_2543A2858();
  OUTLINED_FUNCTION_1_6(v13);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_7_10();
  if (v14)
  {
    sub_2543A2858();
  }

  v15 = sub_2543A2858();
  OUTLINED_FUNCTION_1_6(v15);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_7_10();
  if (v16)
  {
    sub_2543A2858();
  }

  v17 = sub_2543A2858();
  OUTLINED_FUNCTION_1_6(v17);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_7_10();
  if (v18)
  {
    v19 = sub_2543A2858();
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];
  swift_unknownObjectRelease();
}

id OpalHandshakeIntroduction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OpalHandshakeIntroduction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_3_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_2543A2868();
}

void OUTLINED_FUNCTION_6_15(uint64_t a1@<X8>)
{
  v4 = (v3 + v2);
  *v4 = v1;
  v4[1] = a1;
}

uint64_t OUTLINED_FUNCTION_10_12(uint64_t a1, unsigned int a2)
{

  return sub_2543A3088();
}

uint64_t OUTLINED_FUNCTION_11_12(uint64_t a1, uint64_t a2)
{

  return sub_2543A3088();
}

_BYTE *storeEnumTagSinglePayload for ClientError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2543432C8);
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

unint64_t sub_254343304()
{
  result = qword_27F5E13F8[0];
  if (!qword_27F5E13F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5E13F8);
  }

  return result;
}

id sub_2543433F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 member];
  *a2 = result;
  return result;
}

id sub_254343434()
{
  v1 = *(v0 + 24);
  [v1 lock];
  OUTLINED_FUNCTION_64_0(v0 + 16, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5E1480, &qword_2543ADA38);
  sub_2543A27A8();
  swift_endAccess();
  return [v1 unlock];
}

uint64_t sub_2543434B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = swift_allocObject();
  sub_25434353C();
  return v7;
}

void sub_25434353C()
{
  OUTLINED_FUNCTION_88();
  v1 = v0;
  v42 = v2;
  v43 = v3;
  v40 = v4;
  v41 = v5;
  v38 = v7;
  v39 = v6;
  v37 = v8;
  v9 = *v0;
  v34 = sub_2543A3068();
  OUTLINED_FUNCTION_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9();
  v15 = v14 - v13;
  v16 = sub_2543A3058();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9();
  v17 = sub_2543A2168();
  v18 = OUTLINED_FUNCTION_110(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9();
  swift_defaultActor_initialize();
  v35 = *(v9 + 96);
  v44 = *(v9 + 80);
  v33 = v44;
  v45 = v35;
  v46 = *(v9 + 104);
  v36 = v46;
  v19 = type metadata accessor for CoordinationTransportClient(255, &v44);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for ObservationManager(0, v19, WitnessTable, v21);
  v1[15] = sub_25431D0D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF270, &qword_2543A6850);
  swift_allocObject();
  v1[16] = sub_2542D4F6C();
  sub_2542D6250(0, &qword_27F5DF2B0, 0x277D85C78);
  sub_2543A2158();
  *&v44 = MEMORY[0x277D84F90];
  sub_254308E3C(&qword_27F5DF2B8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF2C0, &qword_2543A6870);
  sub_2543094F8();
  sub_2543A3188();
  (*(v11 + 104))(v15, *MEMORY[0x277D85260], v34);
  v1[17] = sub_2543A3078();
  sub_2543A1F88();
  sub_2543A2C28();
  OUTLINED_FUNCTION_58_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_57_0();
  sub_2543A2A88();
  OUTLINED_FUNCTION_1_13();
  sub_254308E3C(v22, v23, MEMORY[0x277CC9600]);
  v1[24] = sub_2543A2748();
  OUTLINED_FUNCTION_57_0();
  sub_2543A2A88();
  v1[25] = sub_2543A2748();
  v24 = OUTLINED_FUNCTION_58_0();
  v26 = sub_2542D6250(v24, v25, 0x277CFD0D8);
  v27 = *(v35 + 8);
  OUTLINED_FUNCTION_0_17();
  v30 = sub_2543094B4(v28, &qword_27F5DF368, 0x277CFD0D8, v29);
  v1[26] = sub_25437D744(v33, v26, v36, v27, v30);
  v1[27] = v31;
  v1[28] = v32;
  v1[29] = 0;
  *&v46 = sub_2542D6250(0, &qword_27F5E04B8, 0x277CFD078);
  *&v44 = v37;
  objc_allocWithZone(MEMORY[0x277CFD0D0]);
  sub_2543A2768();
  v1[14] = sub_254346FD4(v39, v38, &v44);
  v1[18] = v40;
  v1[19] = v41;
  v1[20] = v42;
  v1[21] = v43;
  v1[22] = v39;
  v1[23] = v38;
  OUTLINED_FUNCTION_86();
}

uint64_t sub_2543439B4()
{
  *(v1 + 216) = v0;
  *(v1 + 224) = *v0;
  return OUTLINED_FUNCTION_17_6(sub_2543439F8);
}

uint64_t sub_2543439F8()
{
  v1 = v0;
  v31 = v0 + 16;
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  *(v0 + 184) = v3;
  v4 = v2[10];
  v5 = v2[11];
  v28 = v2[13];
  v29 = v2[12];
  v6 = v2[14];
  *(v0 + 144) = v4;
  *(v0 + 152) = v5;
  *(v0 + 160) = v29;
  *(v0 + 168) = v28;
  *(v0 + 176) = v6;
  v7 = type metadata accessor for CoordinationTransportClient(0, v0 + 144);
  *(v0 + 232) = v7;
  extended = sub_2542DF684() & 1;
  *(v0 + 264) = extended;
  v8._countAndFlagsBits = 0x6574617669746361;
  v8._object = 0xEA00000000002928;
  Logging.ulog(_:extended:)(v8, extended);
  v9 = v3[20];
  v10 = v3[21];
  WitnessTable = swift_getWitnessTable();
  sub_25436BAB8(v9, v10, v7, WitnessTable);
  v12 = OUTLINED_FUNCTION_19_4();
  type metadata accessor for MessageSessionProducerObserver(v12, v13, v14, v15);
  OUTLINED_FUNCTION_67();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = v5;
  v17[4] = v29;
  v17[5] = v28;
  v17[6] = v6;
  v17[7] = v16;
  OUTLINED_FUNCTION_67();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v4;
  v19[3] = v5;
  v19[4] = v29;
  v19[5] = v28;
  v19[6] = v6;
  v19[7] = v18;
  v20 = sub_254366BB0(&unk_2543ADA48, v17, &unk_2543ADA58, v19);
  v1[30] = v20;
  v21 = v3[14];
  v22 = sub_2543A2858();
  [v21 addSessionProducerWithSubTopic:v22 delegate:v20 dispatchQueue:v3[17]];

  v23 = v3[29];
  v3[29] = v20;
  v24 = v20;

  v1[24] = v3;
  v25._object = 0x80000002543B9720;
  v25._countAndFlagsBits = 0xD000000000000020;
  Logging.ulog(_:extended:)(v25, extended);
  v1[2] = v1;
  v1[3] = sub_254343D24;
  v26 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF588, &qword_2543A6D40);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2542C9210;
  v1[13] = &block_descriptor_5;
  v1[14] = v26;
  [v21 activateWithCompletion_];

  return MEMORY[0x282200938](v31);
}

uint64_t sub_254343D24()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 48);
  *(v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_254344098;
  }

  else
  {
    v2 = sub_254343E3C;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_254343E3C()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 264);
  *(v0 + 200) = *(v0 + 216);
  v2._object = 0x80000002543B8750;
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  Logging.ulog(_:extended:)(v2, v1);
  v3 = swift_task_alloc();
  *(v0 + 256) = v3;
  *v3 = v0;
  v3[1] = sub_254343F08;
  v4 = *(v0 + 216);

  return sub_25431D598(v4);
}

uint64_t sub_254343F08()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_254344008);
}

uint64_t sub_254344008()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  *(v0 + 208) = *(v0 + 216);
  v3._object = 0x80000002543B8770;
  v3._countAndFlagsBits = 0xD000000000000027;
  Logging.ulog(_:extended:)(v3, v1);

  OUTLINED_FUNCTION_27();

  return v4();
}

uint64_t sub_254344098(uint64_t a1)
{
  v2 = *(v1 + 240);
  swift_willThrow();

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_254344104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_254344128);
}

uint64_t sub_254344128()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v2);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v3();
  }
}

uint64_t sub_2543441C4()
{
  OUTLINED_FUNCTION_28();
  sub_254345B0C();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_254344228(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_254344248);
}

uint64_t sub_254344248()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_2542E7588;

    return sub_2543460E8();
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v4();
  }
}

uint64_t sub_254344320()
{
  *(v1 + 104) = v0;
  *(v1 + 112) = *v0;
  return OUTLINED_FUNCTION_17_6(sub_254344364);
}

void sub_254344364()
{
  v2 = v0[13];
  v1 = v0[14];
  v0[7] = v2;
  v3 = v1[10];
  v5 = v1[12];
  v4 = v1[13];
  v32 = v1[11];
  v33 = v1[14];
  v0[2] = v3;
  v6 = v3;
  v0[3] = v32;
  v0[4] = v5;
  v7 = v5;
  v31 = v5;
  v0[5] = v4;
  v0[6] = v33;
  v8 = v4;
  v34 = v4;
  v9 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for CoordinationTransportClient(v9, v10);
  v11 = sub_2542DF684();
  v12._object = 0xEC00000029286574;
  v13 = v11 & 1;
  v12._countAndFlagsBits = 0x6176697463616564;
  Logging.ulog(_:extended:)(v12, v13);
  OUTLINED_FUNCTION_97((v2 + 24), (v0 + 2));
  v0[7] = v2[24];
  v14 = swift_task_alloc();
  v14[2] = v6;
  v14[3] = v32;
  v14[4] = v7;
  v14[5] = v8;
  v14[6] = v33;
  sub_2543A1F88();
  sub_2543A2C28();
  OUTLINED_FUNCTION_1_13();
  sub_254308E3C(v15, v16, MEMORY[0x277CC9600]);
  OUTLINED_FUNCTION_58_0();
  sub_2543A27B8();
  sub_2543A2768();
  OUTLINED_FUNCTION_3_8();
  swift_getWitnessTable();
  sub_2543A29E8();

  OUTLINED_FUNCTION_97((v2 + 25), (v0 + 7));
  v0[10] = v2[25];
  v17 = swift_task_alloc();
  v17[2] = v6;
  v17[3] = v32;
  v17[4] = v31;
  v17[5] = v34;
  v17[6] = v33;
  sub_2543A2768();
  sub_2543A29E8();

  sub_254343434();
  v18 = v2[29];
  v2[29] = 0;

  OUTLINED_FUNCTION_97((v2 + 26), (v0 + 10));
  v19 = v2[26];
  v20 = v2[27];
  v21 = v2[28];
  v22 = sub_2542D6250(0, &qword_27F5DF368, 0x277CFD0D8);
  OUTLINED_FUNCTION_0_17();
  sub_2543094B4(v23, &qword_27F5DF368, 0x277CFD0D8, v24);
  sub_2543A2768();
  sub_2543A2768();
  sub_2543A2768();
  v25 = sub_25437DC0C(v19, v20, v21, v6, v22, v34);

  v26 = sub_254372808(v25);
  for (i = 0; v26 != i; ++i)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x259C09DA0](i, v25);
    }

    else
    {
      if (i >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v28 = *(v25 + 8 * i + 32);
    }

    v29 = v28;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    [v28 stopWithNotice_];
  }

  OUTLINED_FUNCTION_27();

  v30();
}

void sub_254344714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_39_1();
  a25 = v27;
  a26 = v28;
  v32 = v29;
  OUTLINED_FUNCTION_97(v26 + 208, &a11);
  sub_2542D6250(0, &qword_27F5DF368, 0x277CFD0D8);
  OUTLINED_FUNCTION_0_17();
  sub_2543094B4(v30, &qword_27F5DF368, 0x277CFD0D8, v31);
  sub_2543A2768();
  sub_2543A2768();
  sub_2543A2768();
  sub_25437D87C(v32);

  OUTLINED_FUNCTION_38_0();
}

void sub_254344998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_39_1();
  a25 = v27;
  a26 = v28;
  v43 = v29;
  v30 = *v26;
  OUTLINED_FUNCTION_97((v26 + 26), &a12);
  v31 = v26[26];
  v32 = v26[27];
  v33 = v26[28];
  v34 = v30[10];
  v35 = OUTLINED_FUNCTION_19_4();
  v38 = sub_2542D6250(v35, v36, v37);
  v39 = v30[13];
  v40 = *(v30[12] + 8);
  OUTLINED_FUNCTION_0_17();
  sub_2543094B4(v41, &qword_27F5DF368, 0x277CFD0D8, v42);
  sub_2543A2768();
  sub_2543A2768();
  sub_2543A2768();
  sub_25437DB58(v43, v31, v32, v33, v34, v38, v39, v40);

  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_254344AC8(uint64_t a1, uint64_t *a2)
{
  v23 = a1;
  v21 = *a2;
  v3 = v21;
  v20 = *(v21 + 80);
  v4 = sub_2543A2C28();
  v5 = sub_2543A30C8();
  MEMORY[0x28223BE20](v5 - 8);
  v22 = &v19 - v6;
  v7 = sub_2543A1F88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  sub_2543A1F78();
  v19 = *(v8 + 16);
  v19(v10, v13, v7);
  v14 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v20;
  *(v15 + 24) = *(v3 + 88);
  *(v15 + 32) = *(v21 + 96);
  *(v15 + 48) = *(v3 + 112);
  *(v15 + 56) = a2;
  (*(v8 + 32))(v15 + v14, v10, v7);

  v16 = v23;
  sub_2543A2BE8();
  v19(v10, v13, v7);
  v17 = v22;
  (*(*(v4 - 8) + 16))(v22, v16, v4);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v4);
  swift_beginAccess();
  sub_254308E3C(&qword_27F5DF518, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2543A27B8();
  sub_2543A27E8();
  swift_endAccess();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_254344E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_254344E4C);
}

uint64_t sub_254344E4C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v2);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_27();

    return v3();
  }
}

uint64_t sub_254344EF4()
{
  OUTLINED_FUNCTION_28();
  sub_254344F60();

  return MEMORY[0x2822009F8](sub_2543095A8);
}

void sub_254344F60()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_4();
  sub_2543A2C28();
  v2 = sub_2543A30C8();
  OUTLINED_FUNCTION_110(v2);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_31_2(v4, v12);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9();
  v14 = v0;
  OUTLINED_FUNCTION_6_16();
  sub_2543A3298();

  OUTLINED_FUNCTION_32_0();
  v13[0] = 0xD000000000000036;
  v13[1] = v6;
  OUTLINED_FUNCTION_9_5();
  sub_254308E3C(v7, v1, MEMORY[0x277CC9628]);
  v8 = sub_2543A35A8();
  MEMORY[0x259C093D0](v8);

  OUTLINED_FUNCTION_24_4();
  v9 = sub_2542DF684();
  OUTLINED_FUNCTION_23_2(v9);

  v10 = OUTLINED_FUNCTION_28_1();
  v11(v10);
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_64_0(v0 + 192, v13);
  OUTLINED_FUNCTION_12_6(&qword_27F5DF518);
  OUTLINED_FUNCTION_57_0();
  sub_2543A27B8();
  sub_2543A27E8();
  swift_endAccess();
  OUTLINED_FUNCTION_86();
}

uint64_t sub_254345184()
{
  v0 = sub_2543A2BF8();
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - v2;
  nullsub_1();
  sub_2542FEED4(v3);
  return sub_2543A2C38();
}

uint64_t sub_254345240(uint64_t a1, uint64_t *a2)
{
  v23 = a1;
  v21 = *a2;
  v3 = v21;
  v20 = *(v21 + 80);
  v4 = sub_2543A2C28();
  v5 = sub_2543A30C8();
  MEMORY[0x28223BE20](v5 - 8);
  v22 = &v19 - v6;
  v7 = sub_2543A1F88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  sub_2543A1F78();
  v19 = *(v8 + 16);
  v19(v10, v13, v7);
  v14 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v20;
  *(v15 + 24) = *(v3 + 88);
  *(v15 + 32) = *(v21 + 96);
  *(v15 + 48) = *(v3 + 112);
  *(v15 + 56) = a2;
  (*(v8 + 32))(v15 + v14, v10, v7);

  v16 = v23;
  sub_2543A2BE8();
  v19(v10, v13, v7);
  v17 = v22;
  (*(*(v4 - 8) + 16))(v22, v16, v4);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v4);
  swift_beginAccess();
  sub_254308E3C(&qword_27F5DF518, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2543A27B8();
  sub_2543A27E8();
  swift_endAccess();
  return (*(v8 + 8))(v13, v7);
}

void sub_25434559C()
{
  OUTLINED_FUNCTION_88();
  v1 = v0;
  v19[0] = *v3;
  v2 = v19[0];
  v19[1] = v4;
  v5 = sub_2543A1F88();
  OUTLINED_FUNCTION_3();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v11);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v12);
  v14 = v19 - v13;
  v15 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  OUTLINED_FUNCTION_67();
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v5);
  v17 = (*(v7 + 80) + 80) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v2[10];
  *(v18 + 40) = v2[11];
  *(v18 + 48) = *(v19[0] + 96);
  *(v18 + 64) = v2[14];
  *(v18 + 72) = v16;
  (*(v7 + 32))(v18 + v17, v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_2542CD000(0, 0, v14);

  OUTLINED_FUNCTION_86();
}

uint64_t sub_2543457C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_2543457EC);
}

uint64_t sub_2543457EC()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v2);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_27();

    return v3();
  }
}

uint64_t sub_254345894()
{
  OUTLINED_FUNCTION_28();
  sub_254345900();

  return MEMORY[0x2822009F8](sub_254307944);
}

void sub_254345900()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_4();
  sub_2543A2C28();
  v2 = sub_2543A30C8();
  OUTLINED_FUNCTION_110(v2);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_31_2(v4, v12);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9();
  v14 = v0;
  OUTLINED_FUNCTION_6_16();
  sub_2543A3298();

  OUTLINED_FUNCTION_32_0();
  v13[0] = 0xD000000000000030;
  v13[1] = v6;
  OUTLINED_FUNCTION_9_5();
  sub_254308E3C(v7, v1, MEMORY[0x277CC9628]);
  v8 = sub_2543A35A8();
  MEMORY[0x259C093D0](v8);

  OUTLINED_FUNCTION_24_4();
  v9 = sub_2542DF684();
  OUTLINED_FUNCTION_23_2(v9);

  v10 = OUTLINED_FUNCTION_28_1();
  v11(v10);
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_64_0(v0 + 200, v13);
  OUTLINED_FUNCTION_12_6(&qword_27F5DF518);
  OUTLINED_FUNCTION_57_0();
  sub_2543A27B8();
  sub_2543A27E8();
  swift_endAccess();
  OUTLINED_FUNCTION_86();
}

void sub_254345B0C()
{
  OUTLINED_FUNCTION_88();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v48 = v4;
  v6 = *v0;
  v7 = *v0;
  v8 = *(*v0 + 80);
  v44 = *(v8 - 8);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v50 = v0;
  OUTLINED_FUNCTION_6_16();
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD000000000000027, 0x80000002543B96C0);
  MEMORY[0x259C093D0](0x6E6F697373657320, 0xE90000000000003DLL);
  v12 = [v5 description];
  v13 = sub_2543A2878();
  v15 = v14;

  MEMORY[0x259C093D0](v13, v15);

  MEMORY[0x259C093D0](0x75646F72746E6920, 0xEE003D6E6F697463);
  v54 = v3;
  v16 = *(v6 + 88);
  WitnessTable = swift_getWitnessTable();
  sub_2543A35D8();
  v17 = v6;
  countAndFlagsBits = v51._countAndFlagsBits;
  object = v51._object;
  v20 = *(v7 + 96);
  v21 = *(v17 + 112);
  v45 = v8;
  v51._countAndFlagsBits = v8;
  v51._object = v16;
  v49 = v20;
  v52 = v20;
  v43 = v21;
  v53 = v21;
  type metadata accessor for CoordinationTransportClient(0, &v51);
  LOBYTE(v13) = sub_2542DF684();
  v22._countAndFlagsBits = countAndFlagsBits;
  v22._object = object;
  Logging.ulog(_:extended:)(v22, v13 & 1);

  v23 = v1[18];
  v24 = v11;
  v25 = v48;
  v47 = v3;
  v23(v48, v3);
  v50 = v1;
  OUTLINED_FUNCTION_6_16();
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD000000000000029, 0x80000002543B96F0);
  v26 = v45;
  sub_2543A35C8();
  Logging.ulog(_:extended:)(v51, v13 & 1);

  v54 = v25;
  OUTLINED_FUNCTION_64_0((v1 + 26), &v50);
  OUTLINED_FUNCTION_35_3();
  v30 = sub_2542D6250(v27, v28, v29);
  v31 = *(v49 + 8);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_35_3();
  v36 = sub_2543094B4(v32, v33, v34, v35);
  v51._countAndFlagsBits = v26;
  v51._object = v30;
  *&v52 = *(&v49 + 1);
  *(&v52 + 1) = v31;
  v53 = v36;
  v37 = type metadata accessor for MemberConnectionCache(0, &v51);
  sub_25437DCA0(&v54, v24, v37);
  swift_endAccess();
  v38 = OUTLINED_FUNCTION_97((v1 + 24), &v51);
  v50 = v1[24];
  MEMORY[0x28223BE20](v38);
  *&v39 = v26;
  *(&v39 + 1) = v16;
  v40 = v49;
  *(&v43 - 3) = v39;
  *(&v43 - 2) = v40;
  *(&v43 - 2) = v43;
  *(&v43 - 1) = v24;
  sub_2543A1F88();
  sub_2543A2C28();
  OUTLINED_FUNCTION_1_13();
  sub_254308E3C(v41, v42, MEMORY[0x277CC9600]);
  OUTLINED_FUNCTION_35_3();
  sub_2543A27B8();
  sub_2543A2768();
  OUTLINED_FUNCTION_3_8();
  swift_getWitnessTable();
  sub_2543A29E8();

  (*(v44 + 8))(v24, v26);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_2543460E8()
{
  OUTLINED_FUNCTION_28();
  v1[22] = v2;
  v1[23] = v0;
  OUTLINED_FUNCTION_15_4();
  v1[24] = v3;
  v5 = *(v4 + 80);
  v1[25] = v5;
  v6 = sub_2543A30C8();
  v1[26] = v6;
  v1[27] = *(v6 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = *(v5 - 8);
  v1[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254346234);
}

uint64_t sub_254346234(uint64_t a1)
{
  v3 = v1[24];
  v2 = v1[25];
  v4 = v1[22];
  v44 = v1[23];
  v45 = v1[28];
  v1[18] = v44;
  OUTLINED_FUNCTION_32_0();
  v46._countAndFlagsBits = v6;
  v46._object = v5;
  v7 = [v4 description];
  v8 = sub_2543A2878();
  v10 = v9;

  MEMORY[0x259C093D0](v8, v10);

  v11 = v3[11];
  v12 = v3[12];
  v14 = v3[13];
  v13 = v3[14];
  v1[2] = v2;
  v43 = v11;
  v1[3] = v11;
  v1[4] = v12;
  v1[5] = v14;
  v1[6] = v13;
  v41 = v13;
  v15 = type metadata accessor for CoordinationTransportClient(0, (v1 + 2));
  v16 = sub_2542DF684() & 1;
  Logging.ulog(_:extended:)(v46, v16);

  v1[19] = v4;
  OUTLINED_FUNCTION_64_0(v44 + 208, (v1 + 12));
  v17 = sub_2542D6250(255, &qword_27F5DF368, 0x277CFD0D8);
  v42 = v12;
  v18 = *(v12 + 8);
  OUTLINED_FUNCTION_0_17();
  v21 = sub_2543094B4(v19, &qword_27F5DF368, 0x277CFD0D8, v20);
  v1[7] = v2;
  v1[8] = v17;
  v1[9] = v14;
  v1[10] = v18;
  v1[11] = v21;
  v22 = type metadata accessor for MemberConnectionCache(0, (v1 + 7));
  sub_25437E024((v1 + 19), v22, v45);
  swift_endAccess();
  if (__swift_getEnumTagSinglePayload(v45, 1, v2) == 1)
  {
    v24 = v1[22];
    v23 = v1[23];
    (*(v1[27] + 8))(v1[28], v1[26]);
    v1[20] = v23;
    sub_2543A3298();

    OUTLINED_FUNCTION_32_0();
    v47 = v25;
    v26 = [v24 member];
    v27 = [v26 description];
    v28 = sub_2543A2878();
    v30 = v29;

    MEMORY[0x259C093D0](v28, v30);

    MEMORY[0x259C093D0](0x2074276E6143202ELL, 0xEE0065766F6D6572);
    v31 = sub_2542DF684();
    Logging.ulog(_:_:extended:)(90, 0xD000000000000021, v47, v31 & 1, v15, &off_286649950);

    OUTLINED_FUNCTION_27();

    return v32();
  }

  else
  {
    v34 = v1[30];
    v35 = v1[25];
    v36 = v1[23];
    (*(v1[29] + 32))(v34, v1[28], v35);
    OUTLINED_FUNCTION_97(v36 + 200, (v1 + 15));
    v1[21] = *(v36 + 200);
    v37 = swift_task_alloc();
    v37[2] = v35;
    v37[3] = v43;
    v37[4] = v42;
    v37[5] = v14;
    v37[6] = v41;
    v37[7] = v34;
    sub_2543A1F88();
    sub_2543A2C28();
    OUTLINED_FUNCTION_1_13();
    sub_254308E3C(v38, v39, MEMORY[0x277CC9600]);
    OUTLINED_FUNCTION_58_0();
    sub_2543A27B8();
    sub_2543A2768();
    OUTLINED_FUNCTION_3_8();
    swift_getWitnessTable();
    sub_2543A29E8();

    v1[31] = *(v36 + 120);
    v40 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v40);
  }
}

uint64_t sub_2543466BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = a1;
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_9();
  v8 = v7 - v6;
  v9 = sub_2543A2BD8();
  OUTLINED_FUNCTION_3();
  v11 = v10;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v12);
  v14 = v16 - v13;
  sub_2543A1F88();
  sub_2543A2C28();
  OUTLINED_FUNCTION_19_4();
  swift_getTupleTypeMetadata2();
  (*(v5 + 16))(v8, a2, a3);
  sub_2543A2C08();
  return (*(v11 + 8))(v14, v9);
}

id *sub_254346860()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2543468FC()
{
  sub_254346860();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25434694C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542D32CC;

  return sub_2543439B4();
}

uint64_t sub_2543469D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542D32CC;

  return sub_254344320();
}

uint64_t sub_254346A6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542DB160;

  return sub_2543439B4();
}

uint64_t sub_254346AF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542DB160;

  return sub_254344320();
}

uint64_t sub_254346B84(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_254346BC0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254346BFC(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_254346C5C(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_254346D44()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_67();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_254346D7C()
{
  v0 = OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_36_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_39(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_11_5(v2);

  return sub_2543457C4(v4, v5, v6, v7, v8);
}

void sub_254346E7C()
{
  v0 = sub_2543A1F88();
  OUTLINED_FUNCTION_110(v0);
  sub_25434559C();
}

uint64_t sub_254346EF8()
{
  v0 = OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_36_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_39(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_11_5(v2);

  return sub_254344E24(v4, v5, v6, v7, v8);
}

id sub_254346FD4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2543A2858();

  __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v6 = [v3 initWithTopic:v5 cluster:sub_2543A35F8()];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(a3);
  return v6;
}

uint64_t sub_254347060()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_254347098(uint64_t a1)
{
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_39(v1);
  *v2 = v3;
  v2[1] = sub_2542DB160;
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_33_3();

  return sub_254344104(v4, v5, v6);
}

uint64_t sub_25434715C(uint64_t a1)
{
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_39(v1);
  *v2 = v3;
  v2[1] = sub_2542DB160;
  OUTLINED_FUNCTION_33_3();

  return sub_254344228(v4, v5);
}

uint64_t OUTLINED_FUNCTION_24_4()
{
  *(v2 - 128) = v1;
  *(v2 - 120) = *(v0 + 88);
  *(v2 - 104) = *(v0 + 104);
  return type metadata accessor for CoordinationTransportClient(0, v2 - 128);
}

uint64_t OUTLINED_FUNCTION_26_3()
{
  v2 = *(v0 - 144);
  v3 = *(v0 - 136);

  return __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
}

void sub_254347304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1540, &unk_2543ADF80);
  sub_254348EBC(&qword_27F5E1558, sub_254348F34, MEMORY[0x277D83B50]);
  sub_2543A3018();
  if (v4)
  {
  }

  else
  {
    [v6 finishEncoding];
    v7 = [v6 encodedData];
    v8 = sub_2543A1EF8();
    v10 = v9;

    v11 = sub_2543A1EC8();
    sub_2542D7D40(v8, v10);
    v12 = sub_2543A2858();
    [v5 encodeObject:v11 forKey:v12];
  }
}

uint64_t sub_254347490(uint64_t a1, uint64_t a2)
{
  v3 = sub_25430DA38(a1, a2);
  result = 0;
  if (v2 >> 60 != 15)
  {
    v5 = v2;
    v6 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_2542D61B4(v3, v5);
    v7 = sub_25430DAA8(v3, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1540, &unk_2543ADF80);
    sub_254348EBC(&qword_27F5E1548, sub_254348E68, MEMORY[0x277D83B70]);
    sub_2543A3028();

    sub_2542E5880(v3, v5);
    return v8;
  }

  return result;
}

id TransportDeviceIdentity.__allocating_init(identifiers:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC15HomePodSettings23TransportDeviceIdentity_identitySections] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id TransportDeviceIdentity.init(identifiers:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC15HomePodSettings23TransportDeviceIdentity_identitySections] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TransportDeviceIdentity();
  return objc_msgSendSuper2(&v3, sel_init);
}

id TransportDeviceIdentity.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_254347490(0xD000000000000010, 0x80000002543B9780);
  if (v4)
  {
    *&v2[OBJC_IVAR____TtC15HomePodSettings23TransportDeviceIdentity_identitySections] = v4;
    v7.receiver = v2;
    v7.super_class = type metadata accessor for TransportDeviceIdentity();
    v5 = objc_msgSendSuper2(&v7, sel_init);
  }

  else
  {

    type metadata accessor for TransportDeviceIdentity();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

id TransportDeviceIdentity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TransportDeviceIdentity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransportDeviceIdentity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static TransportIdentitySection.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      if (v3 != v5 || v2 != v4)
      {
        v7 = sub_2543A3608();
        OUTLINED_FUNCTION_2_12();
        OUTLINED_FUNCTION_2_25();
        OUTLINED_FUNCTION_2_25();
        sub_254347AF8();
        OUTLINED_FUNCTION_2_12();
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_2_25();
      OUTLINED_FUNCTION_2_25();
      sub_254347AF8();
      sub_254347AF8();
      return 1;
    }

LABEL_9:
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_2_25();
    OUTLINED_FUNCTION_2_25();
    sub_254347AF8();
    OUTLINED_FUNCTION_2_12();
    sub_254347AF8();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v8 = 1;
    OUTLINED_FUNCTION_1_25();
    sub_254347AF0();
    OUTLINED_FUNCTION_1_25();
    sub_254347AF0();
    OUTLINED_FUNCTION_1_25();
    sub_254347AF8();
    OUTLINED_FUNCTION_1_25();
    sub_254347AF8();
    return v8;
  }

  v7 = sub_2543A3608();
  OUTLINED_FUNCTION_2_12();
  sub_254347AF0();
  OUTLINED_FUNCTION_1_25();
  sub_254347AF0();
  OUTLINED_FUNCTION_1_25();
  sub_254347AF8();
  OUTLINED_FUNCTION_2_12();
LABEL_16:
  sub_254347AF8();
  return v7 & 1;
}

uint64_t sub_254347B00(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7562345 && a2 == 0xE300000000000000;
  if (v3 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74726F70706172 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2543A3608();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_254347BC8(char a1)
{
  if (a1)
  {
    return 0x74726F70706172;
  }

  else
  {
    return 7562345;
  }
}

uint64_t sub_254347C14(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2543A3608();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_254347C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254347B00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254347CC4(uint64_t a1)
{
  v2 = sub_254348120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254347D00(uint64_t a1)
{
  v2 = sub_254348120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254347D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254347C14(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_254347D6C(uint64_t a1)
{
  v2 = sub_2543481C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254347DA8(uint64_t a1)
{
  v2 = sub_2543481C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254347DE4(uint64_t a1)
{
  v2 = sub_254348174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254347E20(uint64_t a1)
{
  v2 = sub_254348174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransportIdentitySection.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1498, &qword_2543ADA60);
  OUTLINED_FUNCTION_3();
  v27 = v4;
  v28 = v3;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v5);
  v26 = &v24 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14A0, &qword_2543ADA68);
  OUTLINED_FUNCTION_3();
  v24 = v8;
  v25 = v7;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14A8, &qword_2543ADA70);
  OUTLINED_FUNCTION_3();
  v14 = v13;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  v18 = *v1;
  v29 = v1[1];
  v30 = v18;
  v19 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_254348120();
  sub_2543A3778();
  if (v19)
  {
    v32 = 1;
    sub_254348174();
    v20 = v26;
    sub_2543A3508();
    v21 = v28;
    sub_2543A3548();
    (*(v27 + 8))(v20, v21);
  }

  else
  {
    v31 = 0;
    sub_2543481C8();
    sub_2543A3508();
    v22 = v25;
    sub_2543A3548();
    (*(v24 + 8))(v11, v22);
  }

  return (*(v14 + 8))(v17, v12);
}

unint64_t sub_254348120()
{
  result = qword_27F5E14B0;
  if (!qword_27F5E14B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E14B0);
  }

  return result;
}

unint64_t sub_254348174()
{
  result = qword_27F5E14B8;
  if (!qword_27F5E14B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E14B8);
  }

  return result;
}

unint64_t sub_2543481C8()
{
  result = qword_27F5E14C0;
  if (!qword_27F5E14C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E14C0);
  }

  return result;
}

uint64_t TransportIdentitySection.hash(into:)(uint64_t a1)
{
  MEMORY[0x259C0A1D0](*(v1 + 16));

  return sub_2543A28C8();
}

uint64_t TransportIdentitySection.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](v1);
  sub_2543A28C8();
  return sub_2543A3728();
}

void TransportIdentitySection.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14C8, &qword_2543ADA78);
  OUTLINED_FUNCTION_3();
  v56 = v3;
  v57 = v4;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14D0, &qword_2543ADA80);
  OUTLINED_FUNCTION_3();
  v55 = v7;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v8);
  v10 = v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14D8, &unk_2543ADA88);
  OUTLINED_FUNCTION_3();
  v58 = v12;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v13);
  v15 = v53 - v14;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_254348120();
  v16 = v60;
  sub_2543A3768();
  if (v16)
  {
    goto LABEL_9;
  }

  v53[2] = v6;
  v54 = v10;
  v60 = a1;
  v17 = v59;
  v18 = sub_2543A34E8();
  sub_2542DE280(v18, 0);
  if (v20 == v21 >> 1)
  {
    goto LABEL_7;
  }

  v53[1] = 0;
  if (v20 >= (v21 >> 1))
  {
    __break(1u);
    return;
  }

  v22 = *(v19 + v20);
  v23 = sub_2542DF244(v20 + 1);
  v25 = v24;
  v27 = v26;
  swift_unknownObjectRelease();
  if (v25 != v27 >> 1)
  {
LABEL_7:
    v36 = sub_2543A32E8();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14E0, &unk_2543A6DE0);
    *v38 = &type metadata for TransportIdentitySection;
    sub_2543A3468();
    sub_2543A32D8();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    v39 = OUTLINED_FUNCTION_5_15();
    v40(v39, v11);
    a1 = v60;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return;
  }

  v28 = v11;
  v29 = v22;
  if (v22)
  {
    LODWORD(v55) = v22;
    v62 = 1;
    v30 = sub_254348174();
    OUTLINED_FUNCTION_8_14(&type metadata for TransportIdentitySection.RapportCodingKeys, &v62, v31, v32, v30);
    v33 = v17;
    v54 = v23;
    v34 = sub_2543A34A8();
    v35 = v58;
    v45 = v34;
    v47 = v46;
    swift_unknownObjectRelease();
    v48 = OUTLINED_FUNCTION_7_11();
    v49(v48);
    v29 = v55;
  }

  else
  {
    v61 = 0;
    v41 = sub_2543481C8();
    OUTLINED_FUNCTION_8_14(&type metadata for TransportIdentitySection.IdsCodingKeys, &v61, v42, v43, v41);
    v33 = v17;
    v44 = sub_2543A34A8();
    v47 = v50;
    v57 = v44;
    swift_unknownObjectRelease();
    v51 = OUTLINED_FUNCTION_6_17();
    v52(v51);
    v45 = v57;
    v35 = v58;
  }

  (*(v35 + 8))(v15, v28);
  *v33 = v45;
  *(v33 + 8) = v47;
  *(v33 + 16) = v29;
  __swift_destroy_boxed_opaque_existential_0(v60);
}

uint64_t sub_2543487E8(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](v2);
  sub_2543A28C8();
  return sub_2543A3728();
}

unint64_t sub_254348880()
{
  result = qword_27F5E14E8;
  if (!qword_27F5E14E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E14E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TransportIdentitySection.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x254348A30);
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

_BYTE *sub_254348A7C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x254348B18);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_254348B54()
{
  result = qword_27F5E14F8;
  if (!qword_27F5E14F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E14F8);
  }

  return result;
}

unint64_t sub_254348BAC()
{
  result = qword_27F5E1500;
  if (!qword_27F5E1500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1500);
  }

  return result;
}

unint64_t sub_254348C04()
{
  result = qword_27F5E1508;
  if (!qword_27F5E1508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1508);
  }

  return result;
}

unint64_t sub_254348C5C()
{
  result = qword_27F5E1510;
  if (!qword_27F5E1510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1510);
  }

  return result;
}

unint64_t sub_254348CB4()
{
  result = qword_27F5E1518;
  if (!qword_27F5E1518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1518);
  }

  return result;
}

unint64_t sub_254348D0C()
{
  result = qword_27F5E1520;
  if (!qword_27F5E1520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1520);
  }

  return result;
}

unint64_t sub_254348D64()
{
  result = qword_27F5E1528;
  if (!qword_27F5E1528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1528);
  }

  return result;
}

unint64_t sub_254348DBC()
{
  result = qword_27F5E1530;
  if (!qword_27F5E1530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1530);
  }

  return result;
}

unint64_t sub_254348E14()
{
  result = qword_27F5E1538;
  if (!qword_27F5E1538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1538);
  }

  return result;
}

unint64_t sub_254348E68()
{
  result = qword_27F5E1550;
  if (!qword_27F5E1550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1550);
  }

  return result;
}

uint64_t sub_254348EBC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E1540, &unk_2543ADF80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_254348F34()
{
  result = qword_27F5E1560;
  if (!qword_27F5E1560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1560);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2543A3458();
}

uint64_t CarrySettings.InstallProfileResponse.success.getter()
{
  v1 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_success;
  OUTLINED_FUNCTION_97(v0 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_success, v3);
  return *(v0 + v1);
}

uint64_t CarrySettings.InstallProfileResponse.success.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_success;
  result = OUTLINED_FUNCTION_2_5(a1);
  *(v1 + v3) = v2;
  return result;
}

void *CarrySettings.InstallProfileResponse.error.getter()
{
  v1 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error;
  OUTLINED_FUNCTION_97(v0 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error, v5);
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CarrySettings.InstallProfileResponse.error.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error;
  OUTLINED_FUNCTION_2_5(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CarrySettings.InstallProfileResponse.init(result:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v5 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error;
  *&v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error] = 0;
  if (v4 == 1)
  {
    v4 = 0;
    v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_success] = 1;
  }

  else
  {
    v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_success] = 0;
  }

  swift_beginAccess();
  *&v1[v5] = v4;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id CarrySettings.InstallProfileResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CarrySettings.InstallProfileResponse.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error;
  *&v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error] = 0;
  v6 = sub_2543A2858();
  v7 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_success] = v7;
  sub_2542F464C();
  v8 = sub_2543A3088();
  swift_beginAccess();
  v9 = *&v2[v5];
  *&v2[v5] = v8;

  v12.receiver = v2;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

Swift::Void __swiftcall CarrySettings.InstallProfileResponse.encode(with:)(NSCoder with)
{
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_success;
  OUTLINED_FUNCTION_97(v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_success, v11);
  v4 = *(v1 + v3);
  v5 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeBool:v4 forKey:v5];

  v6 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error;
  OUTLINED_FUNCTION_97(v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error, &v10);
  v7 = *(v1 + v6);
  if (v7)
  {
    v8 = v7;
    v9 = sub_2543A2858();
    [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];
  }
}

uint64_t CarrySettings.InstallProfileResponse.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_2542E576C(a1, v18);
  if (!v19)
  {
    sub_2542E1050(v18);
    return 0;
  }

  if (swift_dynamicCast())
  {
    v3 = v17[0];
    if (v17[0] == v1)
    {
    }

    else
    {
      v4 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_success;
      OUTLINED_FUNCTION_97(&v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_success], v18);
      LODWORD(v4) = v1[v4];
      v5 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_success;
      OUTLINED_FUNCTION_97(v17[0] + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_success, v17);
      if (v4 != v3[v5])
      {
LABEL_5:

        return 0;
      }

      v7 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error;
      OUTLINED_FUNCTION_97(&v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error], v16);
      v8 = *&v1[v7];
      v9 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error;
      OUTLINED_FUNCTION_97(&v3[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error], v15);
      v10 = *&v3[v9];
      if (v8)
      {
        if (!v10)
        {
          goto LABEL_5;
        }

        sub_2542F464C();
        v11 = v10;
        v12 = v8;
        v13 = sub_2543A30B8();

        if ((v13 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = v10;

        if (v10)
        {
          v3 = v14;
          goto LABEL_5;
        }
      }
    }

    return 1;
  }

  return 0;
}

id CarrySettings.InstallProfileResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CarrySettings.InstallProfileResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CarrySettings.InstallProfileResponse.description.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error;
  OUTLINED_FUNCTION_97(v0 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error, v15);
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = [v3 localizedDescription];
    v5 = sub_2543A2878();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  v12[1] = 0xE000000000000000;
  sub_2543A3298();
  v13 = 0;
  v14 = 0xE000000000000000;
  MEMORY[0x259C093D0](0xD000000000000018, 0x80000002543B9850);
  v12[0] = v1;
  sub_2543A3358();
  MEMORY[0x259C093D0](0x736563637573203ALL, 0xEA00000000003D73);
  v8 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_success;
  OUTLINED_FUNCTION_97(v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_success, v12);
  if (*(v1 + v8))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v1 + v8))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x259C093D0](v9, v10);

  MEMORY[0x259C093D0](0x3D727265202CLL, 0xE600000000000000);
  MEMORY[0x259C093D0](v5, v7);

  MEMORY[0x259C093D0](62, 0xE100000000000000);
  return v13;
}

uint64_t get_enum_tag_for_layout_string_15HomePodSettings05CarryC0O22InstallProfileResponseC6ResultO(unint64_t *a1)
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

uint64_t sub_254349A4C(uint64_t a1)
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

id sub_254349B40()
{
  OUTLINED_FUNCTION_3_4();
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_8_15();
  v10 = *((v9 & v8) + 0x50);
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v1[*(v7 + 112)], v5, v10);
  OUTLINED_FUNCTION_8_15();
  v13 = &v1[*(v12 + 96)];
  *v13 = v4;
  *(v13 + 1) = v3;
  OUTLINED_FUNCTION_8_15();
  v15 = &v1[*(v14 + 104)];
  *v15 = v2;
  *(v15 + 1) = v0;
  v18.receiver = v1;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v11 + 8))(v5, v10);
  return v16;
}

uint64_t sub_254349C78(void *a1, void *a2)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_1_26();
  sub_2543A3298();

  OUTLINED_FUNCTION_32_0();
  v13 = v4;
  v5 = [a1 description];
  sub_2543A2878();

  OUTLINED_FUNCTION_13_8();

  MEMORY[0x259C093D0](0x656D75736E6F6320, 0xEA00000000003D72);
  v6 = [a2 description];
  v7 = sub_2543A2878();
  v9 = v8;

  MEMORY[0x259C093D0](v7, v9);

  v10 = sub_2542DF684() & 1;
  v11._countAndFlagsBits = 0xD00000000000001BLL;
  v11._object = v13;
  Logging.ulog(_:extended:)(v11, v10);
}

void sub_254349DBC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_254349C78(v6, v7);
}

uint64_t sub_254349E38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_1_26();
  sub_2543A3298();
  OUTLINED_FUNCTION_12_12();
  MEMORY[0x259C093D0](0x6C656E6E61686320, 0xE90000000000003DLL);
  v5 = [a1 description];
  sub_2543A2878();

  OUTLINED_FUNCTION_13_8();

  v6 = OUTLINED_FUNCTION_65_1();
  MEMORY[0x259C093D0](v6, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  sub_2543A3358();
  v7 = sub_2542DF684();
  OUTLINED_FUNCTION_6_18(v7);
}

void sub_254349F60(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  sub_2543A2878();
  v8 = a3;
  v12 = a5;
  v9 = a1;
  sub_254349E38(v8, v10, v11, v12);
}

uint64_t sub_254349FF4()
{
  OUTLINED_FUNCTION_28();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[12] = swift_getObjectType();
  v1[13] = *MEMORY[0x277D85000] & *v0;

  return MEMORY[0x2822009F8](sub_25434A09C);
}

uint64_t sub_25434A09C()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  *(v0 + 32) = *(v0 + 88);
  sub_2543A3298();

  OUTLINED_FUNCTION_32_0();
  v23 = v4;
  v5 = [v3 description];
  v6 = sub_2543A2878();
  v8 = v7;

  MEMORY[0x259C093D0](v6, v8);

  v9 = OUTLINED_FUNCTION_19_5();
  MEMORY[0x259C093D0](v9, 0xE800000000000000);
  v10 = [v2 description];
  v11 = sub_2543A2878();
  v13 = v12;

  MEMORY[0x259C093D0](v11, v13);

  v14 = sub_2542DF684() & 1;
  *(v0 + 25) = v14;
  v15._countAndFlagsBits = 0xD00000000000003BLL;
  v15._object = v23;
  Logging.ulog(_:extended:)(v15, v14);

  v16 = *(v1 + 88);
  *(v0 + 112) = v16;
  v17 = *(v16 + 24);
  v18 = *(v1 + 80);
  *(v0 + 120) = v18;
  v22 = (v17 + *v17);
  v19 = swift_task_alloc();
  *(v0 + 128) = v19;
  *v19 = v0;
  v19[1] = sub_25434A324;
  v20 = *(v0 + 80);

  return v22(v0 + 16, v20, v18, v16);
}

uint64_t sub_25434A324()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_25434A410);
}

uint64_t sub_25434A410()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2)
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    sub_25434B7E8(*(v0 + 16));
    *(v0 + 40) = v4;
    v5 = sub_2542DF684();
    Logging.ulog(_:_:extended:)(60, 0xD000000000000015, 0x80000002543B9A00, v5 & 1, v3, &off_286649E88);
    v1 = 0;
  }

  else
  {
    *(v0 + 48) = *(v0 + 88);
    v6 = *(v0 + 25);
    sub_2543A3298();
    MEMORY[0x259C093D0](0xD00000000000001FLL, 0x80000002543B9A20);
    *(v0 + 56) = v1;
    swift_getAssociatedTypeWitness();
    swift_getWitnessTable();
    sub_2543A35D8();
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    Logging.ulog(_:extended:)(v7, v6);
  }

  v8 = *(v0 + 8);

  return v8(v2 ^ 1u, v1);
}

uint64_t sub_25434A5D8(void *a1, int a2, void *a3, void *a4, void *a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = a1;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a1;

  return sub_254366AA8(&unk_2543AE0A8, v11);
}

uint64_t sub_25434A67C(void *a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  v12 = a3;
  a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_25434A76C;

  return sub_254349FF4();
}

uint64_t sub_25434A76C(char a1, void *a2)
{
  OUTLINED_FUNCTION_41();
  v6 = v5[6];
  v7 = v5[5];
  v8 = v5[4];
  v9 = v5[3];
  v10 = v5[2];
  v11 = *v2;
  OUTLINED_FUNCTION_7();
  *v12 = v11;

  (v6)[2](v6, a1 & 1, a2);
  _Block_release(v6);

  v13 = *(v11 + 8);

  return v13();
}

uint64_t sub_25434A90C(void *a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_16_6();
  sub_2543A3298();

  OUTLINED_FUNCTION_32_0();
  v19 = v7;
  v8 = [a1 description];
  sub_2543A2878();

  v9 = OUTLINED_FUNCTION_9_10();
  MEMORY[0x259C093D0](v9);

  OUTLINED_FUNCTION_10_13();
  v10 = [a2 description];
  sub_2543A2878();

  v11 = OUTLINED_FUNCTION_9_10();
  MEMORY[0x259C093D0](v11);

  v12 = sub_2542DF684() & 1;
  v13._countAndFlagsBits = 0xD00000000000001FLL;
  v13._object = v19;
  Logging.ulog(_:extended:)(v13, v12);

  v14 = sub_2543A2BB8();
  OUTLINED_FUNCTION_20_4(v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v3;
  v15[5] = a2;
  v16 = v3;
  v17 = a2;
  OUTLINED_FUNCTION_14_7();
}

uint64_t sub_25434AAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_25434AAF8);
}

uint64_t sub_25434AAF8()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_29();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_11_13(v1);

  return v3(v2);
}

void sub_25434ABCC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_25434A90C(v6, v7);
}

uint64_t sub_25434AC48(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_16_6();
  sub_2543A3298();

  OUTLINED_FUNCTION_32_0();
  v11 = [a1 description];
  v12 = sub_2543A2878();
  v14 = v13;

  MEMORY[0x259C093D0](v12, v14);

  OUTLINED_FUNCTION_10_13();
  v15 = [a2 description];
  v16 = sub_2543A2878();
  v18 = v17;

  MEMORY[0x259C093D0](v16, v18);

  v19 = OUTLINED_FUNCTION_65_1();
  MEMORY[0x259C093D0](v19, 0xE700000000000000);
  v20 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF340, &qword_2543A68E8);
  v21 = sub_2543A2888();
  MEMORY[0x259C093D0](v21);

  sub_2542DF684();
  v22._countAndFlagsBits = OUTLINED_FUNCTION_9_10();
  Logging.ulog(_:extended:)(v22, v23);

  v24 = sub_2543A2BB8();
  OUTLINED_FUNCTION_20_4(v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v6;
  v25[5] = a2;
  v26 = v6;
  v27 = a2;
  OUTLINED_FUNCTION_14_7();
}

uint64_t sub_25434AE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_25434AE90);
}

uint64_t sub_25434AE90()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_29();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_11_13(v1);

  return v3(v2);
}

uint64_t sub_25434AF64()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void sub_25434B048(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a1;
  v19 = a7;
  sub_25434AC48(v12, v13, v17, v18, a7);
}

uint64_t sub_25434B100(void *a1, void *a2, uint64_t a3)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_1_26();
  sub_2543A3298();
  OUTLINED_FUNCTION_12_12();
  MEMORY[0x259C093D0](0x656375646F727020, 0xEA00000000003D72);
  v5 = [a1 description];
  v6 = sub_2543A2878();
  v8 = v7;

  MEMORY[0x259C093D0](v6, v8);

  v9 = OUTLINED_FUNCTION_19_5();
  MEMORY[0x259C093D0](v9, 0xE800000000000000);
  v10 = [a2 description];
  sub_2543A2878();

  OUTLINED_FUNCTION_13_8();

  v11 = OUTLINED_FUNCTION_65_1();
  MEMORY[0x259C093D0](v11, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  sub_2543A3358();
  v12 = sub_2542DF684();
  OUTLINED_FUNCTION_6_18(v12);
}

void sub_25434B284(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = a1;
  sub_25434B100(v8, v9, v11);
}

uint64_t sub_25434B354(uint64_t *a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x277D85000];

  OUTLINED_FUNCTION_18_5();

  OUTLINED_FUNCTION_18_5();
  v5 = *(*(*((v3 & v2) + 0x50) - 8) + 8);
  v6 = a1 + *(v4 + 112);

  return v5(v6);
}

uint64_t sub_25434B440(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25434B7FC;
  OUTLINED_FUNCTION_2_26();

  return sub_25434AE70(v3, v4, v5, v6, v7);
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_25434B53C(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25434B7FC;
  OUTLINED_FUNCTION_2_26();

  return sub_25434AAD8(v3, v4, v5, v6, v7);
}

uint64_t sub_25434B5F0()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_25434B648()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25434B704;
  OUTLINED_FUNCTION_2_26();

  return v2();
}

uint64_t sub_25434B704()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void OUTLINED_FUNCTION_6_18(char a1)
{

  Logging.ulog(_:_:extended:)(90, v2, v3, a1 & 1, v1, v4);
}

void OUTLINED_FUNCTION_10_13()
{

  JUMPOUT(0x259C093D0);
}

void OUTLINED_FUNCTION_12_12()
{

  JUMPOUT(0x259C093D0);
}

void OUTLINED_FUNCTION_13_8()
{

  JUMPOUT(0x259C093D0);
}

void OUTLINED_FUNCTION_14_7()
{

  sub_2542CCD54(0, 0, v0);
}

uint64_t OUTLINED_FUNCTION_20_4(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t sub_25434B9B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657461647075 && a2 == 0xE700000000000000;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646570706F7473 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2543A3608();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_25434BA84(char a1)
{
  if (a1)
  {
    return 0x646570706F7473;
  }

  else
  {
    return 0x64657461647075;
  }
}

uint64_t sub_25434BAB4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x566C616974696E69 && a2 == 0xEC00000065756C61)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2543A3608();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_25434BB90(uint64_t a1)
{
  sub_2543A36E8();
  sub_2542F70BC(v3, *v1);
  return sub_2543A3728();
}

uint64_t sub_25434BBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25434B9B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25434BC50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2542F70B4();
  *a1 = result;
  return result;
}

uint64_t sub_25434BC84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25434BCD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_25434BD3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2542DC370(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_25434BD8C@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_1();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25434BDC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25434BE18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_25434BED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25434BAB4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_25434BF0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25434BF60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void ObservationLifeCycleResponse.ObservationResult.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_16_1();
  v85 = v23;
  v86 = v24;
  v26 = v25;
  v28 = *(v27 + 16);
  v29 = *(v27 + 32);
  v30 = v27;
  v82 = v27;
  v31 = OUTLINED_FUNCTION_8_16();
  v34 = type metadata accessor for ObservationLifeCycleResponse.ObservationResult.StoppedCodingKeys(v31, v32, v33, v29);
  OUTLINED_FUNCTION_2_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v79 = v35;
  v80 = v34;
  sub_2543A3588();
  OUTLINED_FUNCTION_3();
  v77 = v37;
  v78 = v36;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_10_0();
  v73 = v39;
  v40 = OUTLINED_FUNCTION_8_16();
  v43 = type metadata accessor for ObservationLifeCycleResponse.ObservationResult.UpdatedCodingKeys(v40, v41, v42, v29);
  OUTLINED_FUNCTION_4_14();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v72 = v43;
  v70[1] = v44;
  sub_2543A3588();
  OUTLINED_FUNCTION_3();
  v75 = v46;
  v76 = v45;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_10_0();
  v71 = v48;
  v74 = *(v28 - 8);
  MEMORY[0x28223BE20](v49);
  v70[0] = v70 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(v30 - 8);
  MEMORY[0x28223BE20](v52);
  v54 = v70 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = OUTLINED_FUNCTION_8_16();
  v81 = v29;
  type metadata accessor for ObservationLifeCycleResponse.ObservationResult.CodingKeys(v55, v56, v57, v29);
  OUTLINED_FUNCTION_1_27();
  swift_getWitnessTable();
  sub_2543A3588();
  OUTLINED_FUNCTION_3();
  v83 = v59;
  v84 = v58;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v60);
  v62 = v70 - v61;
  __swift_project_boxed_opaque_existential_0(v26, v26[3]);
  sub_2543A3778();
  (*(v51 + 16))(v54, v85, v82);
  if (__swift_getEnumTagSinglePayload(v54, 1, v28) == 1)
  {
    v63 = v73;
    v64 = v84;
    sub_2543A3508();
    (*(v77 + 8))(v63, v78);
    (*(v83 + 8))(v62, v64);
  }

  else
  {
    v65 = v74;
    v66 = v70[0];
    (*(v74 + 32))(v70[0], v54, v28);
    v67 = v71;
    v68 = v84;
    sub_2543A3508();
    v69 = v76;
    sub_2543A3578();
    (*(v75 + 8))(v67, v69);
    (*(v65 + 8))(v66, v28);
    (*(v83 + 8))(v62, v68);
  }

  OUTLINED_FUNCTION_15_3();
}

void ObservationLifeCycleResponse.ObservationResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_1();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v101 = v30;
  v31 = type metadata accessor for ObservationLifeCycleResponse.ObservationResult.StoppedCodingKeys(255, v26, v24, v22);
  OUTLINED_FUNCTION_2_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v99 = v32;
  v100 = v31;
  v93 = sub_2543A34F8();
  OUTLINED_FUNCTION_3();
  v92 = v33;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_10_0();
  v98 = v35;
  v36 = OUTLINED_FUNCTION_9_11();
  v40 = type metadata accessor for ObservationLifeCycleResponse.ObservationResult.UpdatedCodingKeys(v36, v37, v38, v39);
  OUTLINED_FUNCTION_4_14();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v95 = v41;
  v96 = v40;
  v91 = sub_2543A34F8();
  OUTLINED_FUNCTION_3();
  v90 = v42;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_10_0();
  v97 = v44;
  v45 = OUTLINED_FUNCTION_9_11();
  type metadata accessor for ObservationLifeCycleResponse.ObservationResult.CodingKeys(v45, v46, v47, v48);
  OUTLINED_FUNCTION_1_27();
  swift_getWitnessTable();
  v104 = sub_2543A34F8();
  OUTLINED_FUNCTION_3();
  v106 = v49;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v50);
  v51 = OUTLINED_FUNCTION_13_9();
  v105 = v27;
  v94 = v25;
  type metadata accessor for ObservationLifeCycleResponse.ObservationResult(v51, v27, v25, v23);
  OUTLINED_FUNCTION_3();
  v102 = v53;
  v103 = v52;
  MEMORY[0x28223BE20](v52);
  v55 = &v86 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v58 = &v86 - v57;
  __swift_project_boxed_opaque_existential_0(v29, v29[3]);
  sub_2543A3768();
  v59 = v29;
  if (!v20)
  {
    v87 = v55;
    v88 = v58;
    v61 = v103;
    v60 = v104;
    v62 = v105;
    v110 = v59;
    v89 = v21;
    *&v107[0] = sub_2543A34E8();
    sub_2543A2B38();
    swift_getWitnessTable();
    *&v108 = sub_2543A3178();
    *(&v108 + 1) = v63;
    *&v109 = v64;
    *(&v109 + 1) = v65;
    sub_2543A3168();
    swift_getWitnessTable();
    sub_2543A2F68();
    v66 = v107[0];
    if (LOBYTE(v107[0]) == 2 || (v86 = v108, v107[0] = v108, v107[1] = v109, (sub_2543A2F88() & 1) == 0))
    {
      v74 = sub_2543A32E8();
      swift_allocError();
      v76 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14E0, &unk_2543A6DE0);
      *v76 = v61;
      v77 = v89;
      sub_2543A3468();
      sub_2543A32D8();
      (*(*(v74 - 8) + 104))(v76, *MEMORY[0x277D84160], v74);
      swift_willThrow();
      (*(v106 + 8))(v77, v60);
      swift_unknownObjectRelease();
    }

    else if (v66)
    {
      LOBYTE(v107[0]) = 1;
      v67 = v98;
      OUTLINED_FUNCTION_14_8(v100, v107, v60, v100, v99);
      v68 = v62;
      v69 = v101;
      v70 = v102;
      (*(v92 + 8))(v67, v93);
      v71 = OUTLINED_FUNCTION_7_12();
      v72(v71);
      OUTLINED_FUNCTION_6_19();
      swift_unknownObjectRelease();
      v73 = v88;
      __swift_storeEnumTagSinglePayload(v88, 1, 1, v68);
      (*(v70 + 32))(v69, v73, v61);
    }

    else
    {
      LOBYTE(v107[0]) = 0;
      OUTLINED_FUNCTION_14_8(v96, v107, v60, v96, v95);
      v78 = v102;
      sub_2543A34D8();
      v79 = OUTLINED_FUNCTION_12_13();
      v80(v79);
      v81 = OUTLINED_FUNCTION_7_12();
      v82(v81);
      OUTLINED_FUNCTION_6_19();
      swift_unknownObjectRelease();
      v83 = v87;
      __swift_storeEnumTagSinglePayload(v87, 0, 1, v62);
      v84 = *(v78 + 32);
      v85 = v88;
      v84(v88, v83, v61);
      v84(v101, v85, v61);
    }

    v59 = v110;
  }

  __swift_destroy_boxed_opaque_existential_0(v59);
  OUTLINED_FUNCTION_15_3();
}

uint64_t ObservationLifeCycleResponse.result.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ObservationLifeCycleResponse.ObservationResult(0, a1[2], a1[3], a1[4]);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_25434CB70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2543A3608();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_25434CBF8(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void))
{
  sub_2543A36E8();
  a4(v7, a2[2], a2[3], a2[4]);
  return sub_2543A3728();
}

uint64_t sub_25434CC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25434CB70(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_25434CCC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25434CD14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void ObservationLifeCycleResponse.encode(to:)()
{
  OUTLINED_FUNCTION_16_1();
  v15 = v0;
  v2 = v1;
  v4 = v3[2];
  v13 = v3[3];
  v14 = v4;
  v5 = v3[4];
  type metadata accessor for ObservationLifeCycleResponse.CodingKeys(255, v4, v13, v5);
  OUTLINED_FUNCTION_3_20();
  swift_getWitnessTable();
  v6 = sub_2543A3588();
  OUTLINED_FUNCTION_3();
  v8 = v7;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v9);
  v11 = &v12 - v10;
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  sub_2543A3778();
  type metadata accessor for ObservationLifeCycleResponse.ObservationResult(0, v14, v13, v5);
  swift_getWitnessTable();
  sub_2543A3578();
  (*(v8 + 8))(v11, v6);
  OUTLINED_FUNCTION_15_3();
}

void ObservationLifeCycleResponse.init(from:)()
{
  OUTLINED_FUNCTION_16_1();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v31 = v10;
  type metadata accessor for ObservationLifeCycleResponse.ObservationResult(0, v6, v4, v2);
  OUTLINED_FUNCTION_3();
  v34 = v12;
  v35 = v11;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_0();
  v36 = v14;
  type metadata accessor for ObservationLifeCycleResponse.CodingKeys(255, v7, v5, v3);
  OUTLINED_FUNCTION_3_20();
  swift_getWitnessTable();
  sub_2543A34F8();
  OUTLINED_FUNCTION_3();
  v32 = v16;
  v33 = v15;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_13_9();
  v19 = type metadata accessor for ObservationLifeCycleResponse(v18, v7, v5, v3);
  OUTLINED_FUNCTION_3();
  v30 = v20;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v21);
  v23 = &v29 - v22;
  __swift_project_boxed_opaque_existential_0(v9, v9[3]);
  sub_2543A3768();
  if (!v0)
  {
    v29 = v23;
    v37 = v19;
    v24 = v32;
    v26 = v34;
    v25 = v35;
    swift_getWitnessTable();
    v27 = v33;
    sub_2543A34D8();
    (*(v24 + 8))(v1, v27);
    v28 = v29;
    (*(v26 + 32))(v29, v36, v25);
    (*(v30 + 32))(v31, v28, v37);
  }

  __swift_destroy_boxed_opaque_existential_0(v9);
  OUTLINED_FUNCTION_15_3();
}

uint64_t sub_25434D1C0(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25434D220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for ObservationLifeCycleResponse.ObservationResult(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 32);

  return v8(a5, a1, v7);
}

uint64_t sub_25434D2C8(uint64_t *a1)
{
  result = type metadata accessor for ObservationLifeCycleResponse.ObservationResult(319, a1[2], a1[3], a1[4]);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25434D340(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
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
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_25434D4CC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v8 + 64);
  if (v9)
  {
    v12 = *(v8 + 64);
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = 8 * v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 != 0 && v14)
  {
    if (v12 <= 3)
    {
      v16 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v16))
      {
        v6 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v6 = v17;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 < a2)
  {
    v18 = ~v10 + a2;
    if (v12 < 4)
    {
      v19 = (v18 >> v13) + 1;
      if (v12)
      {
        v20 = v18 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v12 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v18;
      v19 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v12] = v19;
        return;
      case 2:
        *&a1[v12] = v19;
        return;
      case 3:
        goto LABEL_57;
      case 4:
        *&a1[v12] = v19;
        return;
      default:
        return;
    }
  }

  switch(v6)
  {
    case 1:
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_57:
      __break(1u);
      JUMPOUT(0x25434D774);
    case 4:
      *&a1[v12] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v9 >= 2)
        {
          if (a2 >= v9)
          {
            if (v11 <= 3)
            {
              v22 = ~(-1 << (8 * v11));
            }

            else
            {
              v22 = -1;
            }

            if (v11)
            {
              v23 = v22 & (a2 - v9);
              if (v11 <= 3)
              {
                v24 = v11;
              }

              else
              {
                v24 = 4;
              }

              bzero(a1, v11);
              switch(v24)
              {
                case 2:
                  *a1 = v23;
                  break;
                case 3:
                  *a1 = v23;
                  a1[2] = BYTE2(v23);
                  break;
                case 4:
                  *a1 = v23;
                  break;
                default:
                  *a1 = v23;
                  break;
              }
            }
          }

          else
          {
            v21 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v21, v9, v7);
          }
        }
      }

      return;
  }
}

_BYTE *sub_25434D7AC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x25434D878);
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

_BYTE *sub_25434D8A4(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x25434D940);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2543A3458();
}

void sub_25434DBA4()
{
  OUTLINED_FUNCTION_88();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v6);
  v8 = v18 - v7;
  sub_254350378(v2, v18 - v7, &qword_27F5DF328, &qword_2543A68B0);
  v9 = sub_2543A2BB8();
  OUTLINED_FUNCTION_2_28(v9);
  if (&qword_2543A68B0 == 1)
  {
    sub_2542DE3E4(v8, &qword_27F5DF328, &qword_2543A68B0);
  }

  else
  {
    sub_2543A2BA8();
    OUTLINED_FUNCTION_1_28();
    (*(v10 + 8))(v8, &qword_27F5DF328);
  }

  OUTLINED_FUNCTION_25_4();

  if (v0)
  {
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_24_5(ObjectType);
    OUTLINED_FUNCTION_12_14();
    if (v4)
    {
LABEL_6:
      v18[0] = v4;
      v12 = sub_2543A28A8() + 32;
      sub_254350598();

      if (&qword_2543A68B0 | v8)
      {
        OUTLINED_FUNCTION_6_20();
      }

      else
      {
        v13 = 0;
      }

      v18[1] = 7;
      v18[2] = v13;
      v18[3] = v12;
      swift_task_create();

      sub_2542DE3E4(v2, &qword_27F5DF328, &qword_2543A68B0);

      goto LABEL_15;
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_5();
    if (v4)
    {
      goto LABEL_6;
    }
  }

  sub_2542DE3E4(v2, &qword_27F5DF328, &qword_2543A68B0);
  sub_254350598();
  OUTLINED_FUNCTION_16_7();
  if (v16)
  {
    OUTLINED_FUNCTION_4_15();
  }

  else
  {
    v17 = 0;
  }

  OUTLINED_FUNCTION_10_14(v14, v17, v15);
LABEL_15:
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_86();
}

void sub_25434DDBC()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_7_13();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_0_30();
  sub_254350378(v6, v7, &qword_27F5DF328, &qword_2543A68B0);
  v8 = sub_2543A2BB8();
  OUTLINED_FUNCTION_2_28(v8);
  if (&qword_2543A68B0 == 1)
  {
    sub_2542DE3E4(v0, &qword_27F5DF328, &qword_2543A68B0);
  }

  else
  {
    sub_2543A2BA8();
    OUTLINED_FUNCTION_1_28();
    (*(v9 + 8))(v0, &qword_27F5DF328);
  }

  OUTLINED_FUNCTION_25_4();

  if (!v3)
  {
    OUTLINED_FUNCTION_20_5();
    if (v1)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_2542DE3E4(v2, &qword_27F5DF328, &qword_2543A68B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF590, &qword_2543A6D58);
    OUTLINED_FUNCTION_16_7();
    if (v16)
    {
      OUTLINED_FUNCTION_4_15();
    }

    else
    {
      v17 = 0;
    }

    OUTLINED_FUNCTION_10_14(v14, v17, v15);
    goto LABEL_14;
  }

  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_24_5(ObjectType);
  OUTLINED_FUNCTION_12_14();
  if (!v1)
  {
    goto LABEL_10;
  }

LABEL_6:
  sub_2543A28A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF590, &qword_2543A6D58);
  OUTLINED_FUNCTION_16_7();
  if (v11)
  {
    OUTLINED_FUNCTION_6_20();
  }

  OUTLINED_FUNCTION_13_10(v11);
  OUTLINED_FUNCTION_10_14(v12, &v18, v13);

  sub_2542DE3E4(v2, &qword_27F5DF328, &qword_2543A68B0);

LABEL_14:
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_86();
}

void sub_25434DFA4()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_7_13();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_0_30();
  sub_254350378(v6, v7, &qword_27F5DF328, &qword_2543A68B0);
  v8 = sub_2543A2BB8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v8);

  if (EnumTagSinglePayload == 1)
  {
    sub_2542DE3E4(v0, &qword_27F5DF328, &qword_2543A68B0);
  }

  else
  {
    EnumTagSinglePayload = sub_2543A2BA8();
    (*(*(v8 - 8) + 8))(v0, v8);
  }

  OUTLINED_FUNCTION_25_4();

  if (v3)
  {
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_24_5(ObjectType);
    OUTLINED_FUNCTION_12_14();
    if (v1)
    {
LABEL_6:
      sub_2543A28A8();

      if (EnumTagSinglePayload | v0)
      {
        OUTLINED_FUNCTION_6_20();
      }

      else
      {
        v11 = 0;
      }

      OUTLINED_FUNCTION_13_10(v11);
      OUTLINED_FUNCTION_23_3();

      sub_2542DE3E4(v2, &qword_27F5DF328, &qword_2543A68B0);

      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_5();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_2542DE3E4(v2, &qword_27F5DF328, &qword_2543A68B0);
  if (EnumTagSinglePayload | v0)
  {
    OUTLINED_FUNCTION_4_15();
  }

  OUTLINED_FUNCTION_23_3();
LABEL_14:
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_86();
}

void sub_25434E1A4()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_7_13();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_0_30();
  sub_254350378(v6, v7, &qword_27F5DF328, &qword_2543A68B0);
  v8 = sub_2543A2BB8();
  OUTLINED_FUNCTION_2_28(v8);
  if (&qword_2543A68B0 == 1)
  {
    sub_2542DE3E4(v0, &qword_27F5DF328, &qword_2543A68B0);
  }

  else
  {
    sub_2543A2BA8();
    OUTLINED_FUNCTION_1_28();
    (*(v9 + 8))(v0, &qword_27F5DF328);
  }

  OUTLINED_FUNCTION_25_4();

  if (!v3)
  {
    OUTLINED_FUNCTION_20_5();
    if (v1)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_2542DE3E4(v2, &qword_27F5DF328, &qword_2543A68B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
    OUTLINED_FUNCTION_16_7();
    if (v16)
    {
      OUTLINED_FUNCTION_4_15();
    }

    else
    {
      v17 = 0;
    }

    OUTLINED_FUNCTION_10_14(v14, v17, v15);
    goto LABEL_14;
  }

  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_24_5(ObjectType);
  OUTLINED_FUNCTION_12_14();
  if (!v1)
  {
    goto LABEL_10;
  }

LABEL_6:
  sub_2543A28A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
  OUTLINED_FUNCTION_16_7();
  if (v11)
  {
    OUTLINED_FUNCTION_6_20();
  }

  OUTLINED_FUNCTION_13_10(v11);
  OUTLINED_FUNCTION_10_14(v12, &v18, v13);

  sub_2542DE3E4(v2, &qword_27F5DF328, &qword_2543A68B0);

LABEL_14:
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_86();
}

uint64_t CarrySettings.SyncManager.__allocating_init(withModel:)()
{
  OUTLINED_FUNCTION_28();
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25434E430;

  return CarrySettings.SyncManager.init(withModel:)();
}

uint64_t sub_25434E430()
{
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_41();
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

void sub_25434E51C()
{
  OUTLINED_FUNCTION_88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1960, &qword_2543AE650);
  OUTLINED_FUNCTION_17_7();
  v2 = v1;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v3);
  v5 = v6 - v4;
  v6[1] = sub_2543A2548();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1970, &qword_2543AE658);
  type metadata accessor for CarrySettings.DataModel(0);
  sub_2542EE9CC(&qword_27F5E1978, &qword_27F5E1970, &qword_2543AE658, MEMORY[0x277CBCD90]);
  sub_2543A2108();

  sub_2542EE9CC(&qword_27F5E1980, &qword_27F5E1960, &qword_2543AE650, MEMORY[0x277CBCC08]);
  sub_2543A20E8();
  (*(v2 + 8))(v5, v0);
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_86();
}

uint64_t sub_25434E6BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFA80, &unk_2543A7B60);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1A10, &qword_2543AE688);
  sub_2543A2648();
  v3 = _s13DataModelCRDTVMa(0);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  return sub_254382290(v2);
}

uint64_t sub_25434E77C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1990, &qword_2543AE660);
  sub_2542EE9CC(&qword_27F5E1998, &qword_27F5E1990, &qword_2543AE660, MEMORY[0x277CBCE20]);
  return sub_2543A20E8();
}

uint64_t CarrySettings.SyncManager.init(withModel:)()
{
  OUTLINED_FUNCTION_28();
  v1[69] = v0;
  v1[68] = v2;
  v3 = sub_2543A2598();
  v1[70] = v3;
  v1[71] = *(v3 - 8);
  v1[72] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E19A0, &qword_2543AE668);
  OUTLINED_FUNCTION_110(v4);
  v1[73] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0368, &qword_2543A9910);
  v1[74] = v5;
  OUTLINED_FUNCTION_110(v5);
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v6 = _s13DataModelCRDTVMa(0);
  v1[77] = v6;
  OUTLINED_FUNCTION_110(v6);
  v1[78] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25434E974);
}

uint64_t sub_25434E974()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 600);
  v24 = *(v0 + 584);
  v25 = *(v0 + 568);
  v26 = *(v0 + 576);
  v27 = *(v0 + 560);
  v5 = *(v0 + 552);
  swift_defaultActor_initialize();
  v23 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings11SyncManager_capsule;
  *(v1 + *(v2 + 20)) = MEMORY[0x277D84F98];
  v6 = _s29AppleConnectSettingsMergeableVMa(0);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
  sub_254350378(v3, v4, &qword_27F5E0368, &qword_2543A9910);
  sub_25434F5E4();
  sub_2543A2188();
  OUTLINED_FUNCTION_59_2();
  sub_2542DE3E4(v7, v8, v9);
  v10 = _s20CarryDeviceMergeableVMa(0);
  sub_2543036DC((v0 + 16));
  memcpy((v0 + 184), (v0 + 16), 0xA8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27F5E0388, &unk_2543A9920);
  OUTLINED_FUNCTION_59_2();
  sub_25434F698(v11, v12, v13, v14);
  sub_2543A2188();
  sub_25434F768();
  sub_25434F7BC();
  sub_2543A2478();
  *(v0 + 432) = 0;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0u;
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 352) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E19E0, &qword_2543AE670);
  OUTLINED_FUNCTION_59_2();
  sub_25434F698(v15, v16, v17, v18);
  sub_2543A2188();
  *(v1 + *(v10 + 32)) = MEMORY[0x277D84F98];
  sub_2543504F4(&qword_27F5E19F8, _s13DataModelCRDTVMa, &unk_2543B3738);
  sub_2543A2668();
  v19 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings11SyncManager_broadcaster;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1990, &qword_2543AE660);
  swift_allocObject();
  *(v5 + v19) = sub_2543A2068();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1A00, &qword_2543AE678);
  sub_2543A26C8();
  *(v0 + 440) = 0u;
  *(v0 + 456) = 0u;
  *(v0 + 472) = 0;
  MEMORY[0x259C09190](0, v0 + 440);
  sub_2542DE3E4(v0 + 440, &qword_27F5E1A08, &qword_2543AE680);
  swift_beginAccess();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1A10, &qword_2543AE688);
  OUTLINED_FUNCTION_26();
  (*(v21 + 16))(v24, v5 + v23, v20);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v20);
  (*(v25 + 104))(v26, *MEMORY[0x277CFB6A8], v27);
  *(v5 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings11SyncManager_multicast) = sub_2543A2558();

  return MEMORY[0x2822009F8](sub_25434ED98);
}

uint64_t sub_25434ED98()
{
  v1 = v0[68];
  v0[63] = &_s15SyncManagerLinkVN;
  v0[64] = sub_25434F864();
  v0[60] = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  sub_2543A2538();
  sub_2542DE3E4(v1, &qword_27F5DFA88, &unk_2543ACB80);
  __swift_destroy_boxed_opaque_existential_0(v0 + 60);

  v2 = v0[1];
  v3 = v0[69];

  return v2(v3);
}

uint64_t sub_25434EED4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_25434EEF8);
}

uint64_t sub_25434EEF8()
{
  OUTLINED_FUNCTION_28();
  *(v0 + 16) = *(v0 + 32);

  sub_2543A2048();

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_25434EF80(uint64_t a1)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1A10, &qword_2543AE688);
  OUTLINED_FUNCTION_17_7();
  v6 = v5;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v7);
  v9 = &v12[-v8];
  v13 = a1;
  v10 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings11SyncManager_capsule;
  swift_beginAccess();
  sub_2543A2618();
  swift_endAccess();
  (*(v6 + 16))(v9, v3 + v10, v1);
  sub_2543A2518();
  return (*(v6 + 8))(v9, v1);
}

uint64_t sub_25434F0DC(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v30 = a1;
  v2 = sub_2543A2428();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0368, &qword_2543A9910);
  MEMORY[0x28223BE20](v26);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0370, &qword_2543B1EB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for CarrySettings.CarryDevice(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s20CarryDeviceMergeableVMa(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v25 - v20;
  sub_25435042C(v29, v15);
  sub_25430366C(v15, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v16) == 1)
  {
    sub_2542DE3E4(v12, &qword_27F5E0370, &qword_2543B1EB0);
    swift_getKeyPath();
    v22 = _s29AppleConnectSettingsMergeableVMa(0);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v22);
    sub_254350378(v9, v6, &qword_27F5E0368, &qword_2543A9910);
    sub_25434F5E4();
    sub_2543A2188();
    sub_2542DE3E4(v9, &qword_27F5E0368, &qword_2543A9910);
    sub_2543036DC(v32);
    memcpy(v31, v32, sizeof(v31));
    __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27F5E0388, &unk_2543A9920);
    sub_25434F698(&qword_27F5E19C0, &dword_27F5E0388, &unk_2543A9920, sub_25434F714);
    sub_2543A2188();
    sub_25434F768();
    sub_25434F7BC();
    sub_2543A2478();
    memset(v31, 0, 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E19E0, &qword_2543AE670);
    sub_25434F698(&qword_27F5E19E8, &qword_27F5E19E0, &qword_2543AE670, sub_25434F810);
    sub_2543A2188();
    *&v18[*(v16 + 32)] = MEMORY[0x277D84F98];
    return sub_2543A2638();
  }

  else
  {
    sub_254350490(v12, v21);
    swift_getKeyPath();
    v24 = sub_2543A2628();
    sub_2543504F4(&qword_27F5E1A40, _s20CarryDeviceMergeableVMa, &unk_2543B3038);
    sub_2543A23B8();
    (*(v27 + 8))(v4, v28);
    v24(v32, 0);

    return sub_25435053C(v21);
  }
}

unint64_t sub_25434F5E4()
{
  result = qword_27F5E19B0;
  if (!qword_27F5E19B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0368, &qword_2543A9910);
    sub_2543504F4(&qword_27F5E19B8, _s29AppleConnectSettingsMergeableVMa, &unk_2543B3898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E19B0);
  }

  return result;
}

uint64_t sub_25434F698(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25434F714()
{
  result = qword_27F5E19C8;
  if (!qword_27F5E19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E19C8);
  }

  return result;
}

unint64_t sub_25434F768()
{
  result = qword_27F5E19D0;
  if (!qword_27F5E19D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E19D0);
  }

  return result;
}

unint64_t sub_25434F7BC()
{
  result = qword_27F5E19D8;
  if (!qword_27F5E19D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E19D8);
  }

  return result;
}

unint64_t sub_25434F810()
{
  result = qword_27F5E19F0;
  if (!qword_27F5E19F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E19F0);
  }

  return result;
}

unint64_t sub_25434F864()
{
  result = qword_27F5E1A18;
  if (!qword_27F5E1A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1A18);
  }

  return result;
}

uint64_t sub_25434F8B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t CarrySettings.SyncManager.deinit()
{
  v1 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings11SyncManager_capsule;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1A10, &qword_2543AE688);
  OUTLINED_FUNCTION_26();
  (*(v2 + 8))(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CarrySettings.SyncManager.__deallocating_deinit()
{
  CarrySettings.SyncManager.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for CarrySettings.SyncManager(uint64_t a1)
{
  result = qword_27F5E1A20;
  if (!qword_27F5E1A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25434FA6C(uint64_t a1)
{
  sub_25434FCD0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of CarrySettings.SyncManager.__allocating_init(withModel:)(uint64_t a1)
{
  v6 = (*(v1 + 176) + **(v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25434E430;

  return v6(a1);
}

void sub_25434FCD0(uint64_t a1)
{
  if (!qword_27F5E1A30)
  {
    _s13DataModelCRDTVMa(255);
    sub_2543504F4(&qword_27F5E19F8, _s13DataModelCRDTVMa, &unk_2543B3738);
    v1 = sub_2543A2658();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5E1A30);
    }
  }
}

uint64_t sub_25434FD64(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25434FD84(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_25434FDBC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v6);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v7);
  v9 = &v14[-v8 - 8];
  v10 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  sub_254350200(v3, v14);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  sub_254350280(v14, (v11 + 4));
  v11[5] = a1;
  v11[6] = a2;
  sub_2542D61B4(a1, a2);
  sub_25434DFA4();
}

uint64_t sub_25434FED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_25434FEF4);
}

uint64_t sub_25434FEF4()
{
  Strong = swift_weakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_254350004;
    v4 = v0[3];
    v3 = v0[4];

    return sub_25434EED4(v4, v3);
  }

  else
  {
    sub_2543503D8();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
    OUTLINED_FUNCTION_27();

    return v7();
  }
}

uint64_t sub_254350004()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *(v4 + 56) = v0;

  if (v0)
  {
    v5 = sub_254350164;
  }

  else
  {
    v5 = sub_254350108;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_254350108()
{
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_254350164()
{
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_254350238()
{
  swift_unknownObjectRelease();
  swift_weakDestroy();
  sub_2542D7D40(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2543502B8()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2542D32CC;
  OUTLINED_FUNCTION_59_2();

  return sub_25434FED0(v5, v6, v7, v8, v2, v3);
}

uint64_t sub_254350378(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_26();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_2543503D8()
{
  result = qword_27F5E1A38;
  if (!qword_27F5E1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1A38);
  }

  return result;
}

uint64_t sub_25435042C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarrySettings.CarryDevice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254350490(uint64_t a1, uint64_t a2)
{
  v4 = _s20CarryDeviceMergeableVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2543504F4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25435053C(uint64_t a1)
{
  v2 = _s20CarryDeviceMergeableVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_254350598()
{
  result = qword_27F5DF370;
  if (!qword_27F5DF370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5DF370);
  }

  return result;
}

_BYTE *_s9SyncErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2543506A8);
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

unint64_t sub_2543506E4()
{
  result = qword_27F5E1A48;
  if (!qword_27F5E1A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1A48);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_28(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);
}

void OUTLINED_FUNCTION_4_15()
{
  *(v2 - 112) = 0;
  *(v2 - 104) = 0;
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

void OUTLINED_FUNCTION_6_20()
{
  *(v2 - 144) = 0;
  *(v2 - 136) = 0;
  *(v2 - 128) = v0;
  *(v2 - 120) = v1;
}

uint64_t OUTLINED_FUNCTION_10_14(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_12_14()
{

  return swift_unknownObjectRelease();
}

void OUTLINED_FUNCTION_13_10(uint64_t a1@<X8>)
{
  *(v2 - 168) = 7;
  *(v2 - 160) = a1;
  *(v2 - 152) = v1;
}

uint64_t OUTLINED_FUNCTION_23_3()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_24_5(uint64_t a1)
{

  return sub_2543A2B58();
}

uint64_t OUTLINED_FUNCTION_25_4()
{

  return swift_unknownObjectRetain();
}

uint64_t static CustomStringConvertibleViaMirror.description(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2543A3758();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 + 40);
  v72 = a3;
  v16 = v15(a2, a3, v12);
  countAndFlagsBits = 0;
  object = 0;
  v71 = a2;
  if (v16)
  {
    v19 = static Logging.className.getter(a2);
    v21 = v20;
    *&v84 = v19;
    *(&v84 + 1) = v20;
    DynamicType = swift_getDynamicType();
    if (dynamic_cast_existential_0_class_conditional(DynamicType, DynamicType))
    {
      (*(v10 + 16))(v14, a1, a2);
      v23 = sub_2543A35F8();
      (*(v10 + 8))(v14, a2);
      swift_unknownObjectRelease();
      v81._countAndFlagsBits = 0;
      v81._object = 0xE000000000000000;
      MEMORY[0x259C093D0](32, 0xE100000000000000);
      v78 = v23;
      sub_2543A3358();
      MEMORY[0x259C093D0](v81._countAndFlagsBits, v81._object);

      v21 = *(&v84 + 1);
      v19 = v84;
    }

    v81._countAndFlagsBits = 60;
    v81._object = 0xE100000000000000;
    MEMORY[0x259C093D0](v19, v21);

    sub_2543A2768();
    MEMORY[0x259C093D0](62, 0xE100000000000000);

    object = v81._object;
    countAndFlagsBits = v81._countAndFlagsBits;
    a2 = v71;
  }

  *&v64 = countAndFlagsBits;
  *(&v64 + 1) = object;
  *(&v85 + 1) = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v84);
  (*(v10 + 16))(boxed_opaque_existential_1, a1, a2);
  sub_2543A3738();
  sub_2543A3748();
  (*(v7 + 8))(v9, v6);
  sub_2543A3348();
  v25 = 0;
  v75 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2543A3428();
    if (!*(&v86 + 1))
    {
      break;
    }

    v81 = v84;
    v82[0] = v85;
    v82[1] = v86;
    sub_254351280(&v81, v71, v72, &v78);
    sub_2542F5064(&v81, &qword_27F5E1A60, &qword_2543AE860);
    v26 = v78;
    if (v78)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2542F0F3C();
        v75 = v29;
      }

      v27 = *(v75 + 16);
      if (v27 >= *(v75 + 24) >> 1)
      {
        sub_2542F0F3C();
        v75 = v30;
      }

      v28 = v75;
      *(v75 + 16) = v27 + 1;
      *(v28 + 8 * v27 + 32) = v26;
      v25 = 0;
    }

    else
    {
    }
  }

  v63[1] = 0;

  v31 = v71;
  v32 = (*(v72 + 24))(v71);
  v33 = *(v32 + 16);
  if (v33)
  {
    v83 = MEMORY[0x277D84F90];
    sub_2542F15C8(0, v33, 0);
    v74 = v83;
    v36 = sub_254351C80(v32);
    v37 = 0;
    v38 = v32 + 64;
    v66 = v34;
    v65 = v32 + 72;
    v69 = xmmword_2543A7DE0;
    v67 = v33;
    v68 = v32 + 64;
    while ((v36 & 0x8000000000000000) == 0 && v36 < 1 << *(v32 + 32))
    {
      v39 = v36 >> 6;
      if ((*(v38 + 8 * (v36 >> 6)) & (1 << v36)) == 0)
      {
        goto LABEL_37;
      }

      if (*(v32 + 36) != v34)
      {
        goto LABEL_38;
      }

      v73 = v34;
      v70 = v35;
      v40 = (*(v32 + 48) + 16 * v36);
      v42 = *v40;
      v41 = v40[1];
      sub_2542D62F0(*(v32 + 56) + 32 * v36, &v85);
      v81._countAndFlagsBits = v42;
      v81._object = v41;
      sub_2542F50C4(&v85, v82);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC90, &unk_2543AE850);
      v43 = swift_allocObject();
      *(v43 + 16) = v69;
      v25 = &unk_2543B4A10;
      sub_2542F4FFC(&v81, &v78, &qword_27F5DFC80, &unk_2543B4A10);
      v44 = v79;
      *(v43 + 32) = v78;
      *(v43 + 40) = v44;
      v76 = 0;
      v77 = 0xE000000000000000;
      sub_2543A2768();
      sub_2543A3358();
      v45 = v77;
      *(v43 + 48) = v76;
      *(v43 + 56) = v45;
      sub_2542F5064(&v81, &qword_27F5DFC80, &unk_2543B4A10);
      __swift_destroy_boxed_opaque_existential_0(v80);
      v46 = v74;
      v83 = v74;
      v48 = *(v74 + 16);
      v47 = *(v74 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_2542F15C8(v47 > 1, v48 + 1, 1);
        v46 = v83;
      }

      *(v46 + 16) = v48 + 1;
      *(v46 + 8 * v48 + 32) = v43;
      v49 = 1 << *(v32 + 32);
      if (v36 >= v49)
      {
        goto LABEL_39;
      }

      v38 = v68;
      v50 = *(v68 + 8 * v39);
      if ((v50 & (1 << v36)) == 0)
      {
        goto LABEL_40;
      }

      v74 = v46;
      if (*(v32 + 36) != v73)
      {
        goto LABEL_41;
      }

      v51 = v50 & (-2 << (v36 & 0x3F));
      if (v51)
      {
        v49 = __clz(__rbit64(v51)) | v36 & 0x7FFFFFFFFFFFFFC0;
        v52 = v67;
      }

      else
      {
        v53 = v39 << 6;
        v54 = v39 + 1;
        v55 = (v65 + 8 * v39);
        v52 = v67;
        while (v54 < (v49 + 63) >> 6)
        {
          v57 = *v55++;
          v56 = v57;
          v53 += 64;
          ++v54;
          if (v57)
          {
            sub_254351BC8(v36, v73, v70 & 1);
            v49 = __clz(__rbit64(v56)) + v53;
            goto LABEL_32;
          }
        }

        sub_254351BC8(v36, v73, v70 & 1);
      }

LABEL_32:
      v35 = 0;
      ++v37;
      v36 = v49;
      v34 = v66;
      if (v37 == v52)
      {

        v31 = v71;
        v58 = v74;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);

    sub_2542F5064(&v81, &qword_27F5E1A60, &qword_2543AE860);

    __break(1u);
  }

  else
  {

    v58 = MEMORY[0x277D84F90];
LABEL_35:
    *&v84 = v75;
    sub_2542F1628(v58);
    v59 = v84;
    v84 = v64;
    *&v85 = 0;
    *(&v85 + 1) = v59;
    *&v86 = 0;
    v60._countAndFlagsBits = (*(v72 + 32))(v31);
    v87.value = 0;
    v87.is_nil = 1;
    v61 = TableFormatter.Table.string(colSeparator:maxColWidth:)(v60, v87);

    swift_bridgeObjectRelease_n();

    v81 = v61;
    v78 = 10;
    v79 = 0xE100000000000000;
    v76 = 2105354;
    v77 = 0xE300000000000000;
    sub_254351B20();
    sub_254351B74();
    sub_2543A2FB8();

    return v84;
  }

  return result;
}

uint64_t sub_254351280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_2542F4FFC(a1, &v42, &qword_27F5E1A60, &qword_2543AE860);
  if (*(&v42 + 1))
  {
    v35 = v42;
    *&v32[0] = 0xD000000000000012;
    *(&v32[0] + 1) = 0x80000002543B9B00;
    sub_254351B74();
    sub_2543A2EE8();

    __swift_destroy_boxed_opaque_existential_0(v43);
    v9 = MEMORY[0x259C09390](v38, *(&v38 + 1), v39, v40);
    v11 = v10;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v43);
    v11 = 0xE100000000000000;
    v9 = 63;
  }

  if ((*(a3 + 64))(v9, v11, a2, a3))
  {
    v44 = v4;
    if (((*(a3 + 48))(a2, a3) & 1) == 0)
    {

      v11 = 0xE100000000000000;
      v9 = 45;
    }

    sub_2543A2898();
    v12 = sub_2543A2918();

    if (v12)
    {
      sub_2542F4FFC(a1, &v42, &qword_27F5E1A60, &qword_2543AE860);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1A78, &unk_2543B4A30);
      if (swift_dynamicCast())
      {
        sub_2542DA8C0(&v35, &v38);
        *&v42 = 40;
        *(&v42 + 1) = 0xE100000000000000;
        __swift_project_boxed_opaque_existential_0(&v38, v40);
        *&v35 = sub_2543A2EF8();
        v13 = sub_2543A35A8();
        MEMORY[0x259C093D0](v13);

        MEMORY[0x259C093D0](41, 0xE100000000000000);
        v15 = *(&v42 + 1);
        v14 = v42;
        __swift_destroy_boxed_opaque_existential_0(&v38);
LABEL_31:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC90, &unk_2543AE850);
        result = swift_allocObject();
        *(result + 16) = xmmword_2543A7DE0;
        *(result + 32) = v9;
        *(result + 40) = v11;
        *(result + 48) = v14;
        *(result + 56) = v15;
        goto LABEL_32;
      }

      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      sub_2542F5064(&v35, &qword_27F5E1A80, &unk_2543AE8C0);
    }

    sub_2542F4FFC(a1, &v42, &qword_27F5E1A60, &qword_2543AE860);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1A68, &unk_2543B4A20);
    if (swift_dynamicCast())
    {
      sub_2542DA8C0(&v35, &v38);
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_2543004CC(&v38, &v42);
      sub_2542F4FFC(&v42, &v35, &qword_27F5E1A70, &unk_2543AE8B0);
      if (*(&v36 + 1))
      {
        sub_2542DA8C0(&v35, v32);
        sub_2543004CC(v32, v31);
        v17 = sub_2543A2888();
        v19 = v18;
        __swift_destroy_boxed_opaque_existential_0(v32);
      }

      else
      {
        v17 = 7104878;
        v19 = 0xE300000000000000;
      }

      sub_2542F5064(&v42, &qword_27F5E1A70, &unk_2543AE8B0);
      MEMORY[0x259C093D0](v17, v19);

      v14 = v33;
      v15 = v34;
      goto LABEL_24;
    }

    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    sub_2542F5064(&v35, &qword_27F5E1A70, &unk_2543AE8B0);
    sub_2542F4FFC(a1, &v42, &qword_27F5E1A60, &qword_2543AE860);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1A78, &unk_2543B4A30);
    if (swift_dynamicCast())
    {
      sub_2542DA8C0(&v35, &v38);
      sub_2542F4FFC(a1, &v42, &qword_27F5E1A60, &qword_2543AE860);

      sub_2542F50C4(v43, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E1A98, &unk_2543AE8E0);
      if (!swift_dynamicCast())
      {
        v22 = v40;
        v23 = v41;
        v24 = __swift_project_boxed_opaque_existential_0(&v38, v40);
        MEMORY[0x28223BE20](v24);
        v30[2] = a2;
        v30[3] = v22;
        v30[4] = a3;
        v30[5] = v23;
        v30[6] = sub_254351AB4;
        v30[7] = 0;
        *&v42 = sub_254369100(sub_254351CC0, v30, v22, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v23, MEMORY[0x277D84AC0], v25);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC28, &unk_2543A81D0);
        sub_2542F16FC();
        v14 = sub_2543A2818();
        v15 = v26;

        goto LABEL_24;
      }

      __swift_destroy_boxed_opaque_existential_0(&v35);
      __swift_destroy_boxed_opaque_existential_0(&v38);
    }

    else
    {
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      sub_2542F5064(&v35, &qword_27F5E1A80, &unk_2543AE8C0);
    }

    if ((*(a3 + 56))(a2, a3))
    {
      sub_2542F4FFC(a1, &v42, &qword_27F5E1A60, &qword_2543AE860);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1A88, &qword_2543AE8D0);
      if (swift_dynamicCast())
      {
        sub_2542DA8C0(&v35, &v38);
        __swift_project_boxed_opaque_existential_0(&v38, v40);
        *&v42 = sub_2543145EC();
        *(&v42 + 1) = v20;
        v14 = sub_2543A2888();
        v15 = v21;
LABEL_24:
        __swift_destroy_boxed_opaque_existential_0(&v38);
        goto LABEL_31;
      }

      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      sub_2542F5064(&v35, &qword_27F5E1A90, &qword_2543AE8D8);
    }

    v33 = 0;
    v34 = 0xE000000000000000;
    sub_2542F4FFC(a1, &v42, &qword_27F5E1A60, &qword_2543AE860);

    sub_2542F50C4(v43, &v38);
    sub_2542F4FFC(&v38, &v35, &unk_27F5DFA00, &unk_2543A76C0);
    if (*(&v36 + 1))
    {
      sub_2542F50C4(&v35, v32);
      sub_2542D62F0(v32, v31);
      v27 = sub_2543A2888();
      v29 = v28;
      __swift_destroy_boxed_opaque_existential_0(v32);
    }

    else
    {
      v27 = 7104878;
      v29 = 0xE300000000000000;
    }

    sub_2542F5064(&v38, &unk_27F5DFA00, &unk_2543A76C0);
    MEMORY[0x259C093D0](v27, v29);

    v14 = v33;
    v15 = v34;
    goto LABEL_31;
  }

  result = 0;
LABEL_32:
  *a4 = result;
  return result;
}

uint64_t sub_254351AB4(uint64_t a1)
{
  MEMORY[0x259C093D0](8237, 0xE200000000000000);
  sub_2543A3358();
  return 0;
}

unint64_t sub_254351B20()
{
  result = qword_27F5E1A50;
  if (!qword_27F5E1A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1A50);
  }

  return result;
}

unint64_t sub_254351B74()
{
  result = qword_27F5E1A58;
  if (!qword_27F5E1A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1A58);
  }

  return result;
}

uint64_t sub_254351BC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254351D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = swift_allocObject();
  sub_254351DD0();
  return v3;
}

void sub_254351DD0()
{
  OUTLINED_FUNCTION_88();
  v1 = v0;
  v31 = v2;
  v32 = v3;
  v29 = *v0;
  v30 = v4;
  v28 = sub_2543A3068();
  OUTLINED_FUNCTION_0_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9();
  v10 = v9 - v8;
  sub_2543A3058();
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9();
  v12 = sub_2543A2168();
  v13 = OUTLINED_FUNCTION_110(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9();
  swift_defaultActor_initialize();
  sub_2542D6250(0, &qword_27F5DF2B0, 0x277D85C78);
  sub_2543A2158();
  sub_254357C2C(&qword_27F5DF2B8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF2C0, &qword_2543A6870);
  sub_2543094F8();
  sub_2543A3188();
  (*(v6 + 104))(v10, *MEMORY[0x277D85260], v28);
  v0[17] = sub_2543A3078();
  v0[18] = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  v14 = v29[10];
  v15 = v29[11];
  v16 = v29[12];
  type metadata accessor for RapportTransport(255, v14, v15, v16);
  swift_getWitnessTable();
  v17 = OUTLINED_FUNCTION_38_1();
  type metadata accessor for ObservationManager(v17, v18, v19, v20);
  v0[19] = sub_25431D0D8();
  v21 = sub_2542D6250(0, &qword_27F5E1B20, 0x277D44170);
  v22 = *(v15 + 8);
  v23 = sub_254357F48();
  v1[20] = sub_25437D744(v14, v21, v16, v22, v23);
  v1[21] = v24;
  v1[22] = v25;
  sub_2543A1F88();
  sub_2543A2C28();
  OUTLINED_FUNCTION_38_1();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_92_0();
  sub_2543A2A88();
  OUTLINED_FUNCTION_6_21();
  sub_254357C2C(v26, v27, MEMORY[0x277CC9600]);
  v1[23] = sub_2543A2748();
  OUTLINED_FUNCTION_92_0();
  sub_2543A2A88();
  v1[24] = sub_2543A2748();
  v1[14] = v30;
  v1[15] = v31;
  v1[16] = v32;
  OUTLINED_FUNCTION_86();
}

uint64_t sub_254352190()
{
  *(v1 + 256) = v0;
  *(v1 + 264) = *v0;
  return OUTLINED_FUNCTION_17_6(sub_2543521D4);
}

uint64_t sub_2543521D4()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v0[32];
  v1 = v0[33];
  v0[30] = v2;
  v0[34] = type metadata accessor for RapportTransport(0, v1[10], v1[11], v1[12]);
  v3 = sub_2542DF684() & 1;
  *(v0 + 296) = v3;
  v4._countAndFlagsBits = 0x6574617669746361;
  v4._object = 0xEA00000000002928;
  Logging.ulog(_:extended:)(v4, v3);
  v5 = *(v2 + 144);
  [v5 setDispatchQueue_];
  [v5 setControlFlags_];
  v0[22] = sub_254352810(v2);
  v0[23] = v6;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_254352850;
  v0[21] = &block_descriptor_6;
  v7 = _Block_copy(v0 + 18);

  [v5 setDeviceFoundHandler_];
  _Block_release(v7);
  v0[28] = sub_2543528B8(v2);
  v0[29] = v8;
  v0[24] = MEMORY[0x277D85DD0];
  v0[25] = 1107296256;
  v0[26] = sub_254352850;
  v0[27] = &block_descriptor_71;
  v9 = _Block_copy(v0 + 24);

  [v5 setDeviceLostHandler_];
  _Block_release(v9);
  sub_2543528F8();
  sub_254352AC8();
  v0[2] = v0;
  v0[3] = sub_25435247C;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF588, &qword_2543A6D40);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2542C9210;
  v0[13] = &block_descriptor_74;
  v0[14] = v10;
  [v5 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25435247C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 48);
  *(v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_2543527AC;
  }

  else
  {
    v2 = sub_254352594;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_254352594()
{
  OUTLINED_FUNCTION_28();
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = sub_25435262C;
  v2 = *(v0 + 256);

  return sub_25431D598(v2);
}

uint64_t sub_25435262C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_254352724()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 296);
  *(v0 + 248) = *(v0 + 256);
  v2._object = 0x80000002543B9DE0;
  v2._countAndFlagsBits = 0xD000000000000013;
  Logging.ulog(_:extended:)(v2, v1);
  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_2543527AC()
{
  OUTLINED_FUNCTION_31();
  swift_willThrow();
  OUTLINED_FUNCTION_27();

  return v0();
}

void sub_254352850(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_2543528F8()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v10[0] = v0;
  type metadata accessor for RapportTransport(0, v2[10], v2[11], v2[12]);
  v4 = sub_2542DF684();
  v5._countAndFlagsBits = 0xD000000000000018;
  v5._object = 0x80000002543B9E90;
  Logging.ulog(_:extended:)(v5, v4 & 1);
  v6 = v0[18];
  v7 = sub_2543A2858();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v3;
  v10[4] = sub_25435C29C;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_254358DC4;
  v10[3] = &block_descriptor_96;
  v9 = _Block_copy(v10);

  [v6 registerRequestID:v7 options:0 handler:v9];
  _Block_release(v9);
}

void sub_254352AC8()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v10[0] = v0;
  type metadata accessor for RapportTransport(0, v2[10], v2[11], v2[12]);
  v4 = sub_2542DF684();
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000002543B9E00;
  Logging.ulog(_:extended:)(v5, v4 & 1);
  v6 = v0[18];
  v7 = sub_2543A2858();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v3;
  v10[4] = sub_25435C134;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_254358DC4;
  v10[3] = &block_descriptor_82;
  v9 = _Block_copy(v10);

  [v6 registerRequestID:v7 options:0 handler:v9];
  _Block_release(v9);
}

uint64_t sub_254352C98()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return OUTLINED_FUNCTION_17_6(sub_254352CDC);
}

uint64_t sub_254352CDC()
{
  OUTLINED_FUNCTION_69_0();
  v20 = v0;
  v0[2] = v0[3];
  type metadata accessor for RapportTransport(0, *(v0[4] + 80), *(v0[4] + 88), *(v0[4] + 96));
  v1 = sub_2542DF684();
  v2._object = 0xEC00000029286574;
  v3 = v1 & 1;
  v2._countAndFlagsBits = 0x6176697463616564;
  Logging.ulog(_:extended:)(v2, v3);
  v19[0] = MEMORY[0x277D84F90];
  sub_2542F1568(0, 2, 0);
  v4 = v19[0];
  v5 = 0x80000002543B9BC0;
  v7 = *(v19[0] + 16);
  v6 = *(v19[0] + 24);
  v8 = v6 >> 1;
  v9 = v7 + 1;
  if (v6 >> 1 <= v7)
  {
LABEL_12:
    sub_2542F1568(v6 > 1, v9, 1);
    v4 = v19[0];
    v6 = *(v19[0] + 24);
    v8 = v6 >> 1;
  }

  *(v4 + 16) = v9;
  v10 = v4 + 16 * v7;
  *(v10 + 32) = 0xD000000000000021;
  *(v10 + 40) = v5;
  v7 += 2;
  if (v8 <= v9)
  {
    sub_2542F1568(v6 > 1, v7, 1);
    v4 = v19[0];
  }

  v5 = 0;
  v11 = 0;
  OUTLINED_FUNCTION_32_0();
  *(v4 + 16) = v7;
  v12 = v4 + 16 * v9;
  *(v12 + 32) = 0xD000000000000016;
  *(v12 + 40) = v13;
  v14 = *(v4 + 16);
  v15 = (v4 + 40);
  while (v14 != v11)
  {
    v6 = *(v4 + 16);
    if (v11 >= v6)
    {
      __break(1u);
      goto LABEL_12;
    }

    v9 = v0[3];
    ++v11;
    v7 = *v15;
    v19[0] = *(v15 - 1);
    v19[1] = v7;
    sub_2543A2768();
    sub_254352EEC(v19, v9);

    v15 += 2;
  }

  v16 = v0[3];

  [*(v16 + 144) invalidate];
  OUTLINED_FUNCTION_27();

  return v17();
}

void sub_254352EEC(void *a1, uint64_t a2)
{
  v2 = *(a2 + 144);
  v3 = sub_2543A2858();
  [v2 deregisterRequestID_];
}

void sub_254352F48()
{
  OUTLINED_FUNCTION_88();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v5 = *(*v0 + 80);
  OUTLINED_FUNCTION_0_2();
  v41 = v6;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v47 = v0;
  OUTLINED_FUNCTION_32_0();
  v42 = v11;
  v43 = v10;
  v13 = [v12 description];
  v14 = sub_2543A2878();
  v16 = v15;

  MEMORY[0x259C093D0](v14, v16);

  v18 = v42;
  v17 = v43;
  v19 = *(v4 + 88);
  v20 = OUTLINED_FUNCTION_45_0();
  v40 = v21;
  v23 = type metadata accessor for RapportTransport(v20, v22, v19, v21);
  v24 = sub_2542DF684() & 1;
  v25._countAndFlagsBits = v18;
  v25._object = v17;
  Logging.ulog(_:extended:)(v25, v24);

  (v1[15])(v3);
  v47 = v1;
  OUTLINED_FUNCTION_57_1();
  sub_2543A3298();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000017);
  sub_2543A35C8();
  v26 = v42;
  v27 = v43;
  v39 = v19;
  v28 = sub_2542DF684();
  Logging.ulog(_:_:extended:)(20, v26, v27, v28 & 1, v23, &off_28664A398);

  v48 = v3;
  swift_beginAccess();
  v29 = sub_2542D6250(255, &qword_27F5E1B20, 0x277D44170);
  v30 = v39;
  v31 = *(v39 + 8);
  v32 = sub_254357F48();
  v42 = v5;
  v43 = v29;
  v33 = v40;
  v44 = v40;
  v45 = v31;
  v46 = v32;
  v34 = type metadata accessor for MemberConnectionCache(0, &v42);
  sub_25437DCA0(&v48, v9, v34);
  swift_endAccess();
  v35 = OUTLINED_FUNCTION_97((v1 + 23), &v42);
  v47 = v1[23];
  MEMORY[0x28223BE20](v35);
  *(&v38 - 4) = v5;
  *(&v38 - 3) = v30;
  *(&v38 - 2) = v33;
  *(&v38 - 1) = v9;
  sub_2543A1F88();
  sub_2543A2C28();
  OUTLINED_FUNCTION_6_21();
  sub_254357C2C(v36, v37, MEMORY[0x277CC9600]);
  OUTLINED_FUNCTION_38_1();
  sub_2543A27B8();
  sub_2543A2768();
  OUTLINED_FUNCTION_3_8();
  swift_getWitnessTable();
  sub_2543A29E8();

  (*(v41 + 8))(v9, v5);
  OUTLINED_FUNCTION_86();
}

void sub_254353390()
{
  OUTLINED_FUNCTION_88();
  v1 = v0;
  v3 = v2;
  v71 = v2;
  v4 = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v6);
  v70 = &v66 - v7;
  v8 = v4[10];
  OUTLINED_FUNCTION_92_0();
  sub_2543A30C8();
  OUTLINED_FUNCTION_0_2();
  v66 = v10;
  v67 = v9;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v11);
  v13 = &v66 - v12;
  OUTLINED_FUNCTION_0_2();
  v74 = v14;
  MEMORY[0x28223BE20](v15);
  v68 = v16;
  v69 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v72 = &v66 - v18;
  v80 = v0;
  OUTLINED_FUNCTION_32_0();
  v75 = 0xD000000000000016;
  v76 = v19;
  v20 = [v3 description];
  v21 = sub_2543A2878();
  v23 = v22;

  MEMORY[0x259C093D0](v21, v23);

  v25 = v75;
  v24 = v76;
  v26 = v4[11];
  v27 = v4[12];
  v28 = OUTLINED_FUNCTION_92_0();
  v30 = type metadata accessor for RapportTransport(v28, v29, v26, v27);
  v31 = sub_2542DF684() & 1;
  v32._countAndFlagsBits = v25;
  v32._object = v24;
  v73 = v30;
  v33 = v71;
  Logging.ulog(_:extended:)(v32, v31);

  v81 = v33;
  swift_beginAccess();
  v34 = sub_2542D6250(255, &qword_27F5E1B20, 0x277D44170);
  v35 = *(v26 + 8);
  v36 = sub_254357F48();
  v75 = v8;
  v76 = v34;
  v77 = v27;
  v78 = v35;
  v79 = v36;
  v37 = type metadata accessor for MemberConnectionCache(0, &v75);
  sub_25437E024(&v81, v37, v13);
  swift_endAccess();
  if (__swift_getEnumTagSinglePayload(v13, 1, v8) == 1)
  {
    (*(v66 + 8))(v13, v67);
    v80 = v1;
    OUTLINED_FUNCTION_57_1();
    sub_2543A3298();

    OUTLINED_FUNCTION_32_0();
    v75 = 0xD000000000000020;
    v76 = v38;
    v39 = [v33 description];
    v40 = sub_2543A2878();
    v42 = v41;

    MEMORY[0x259C093D0](v40, v42);

    MEMORY[0x259C093D0](0x2074276E6143202ELL, 0xEE0065766F6D6572);
    v43 = v75;
    v44 = v76;
    v45 = v73;
    v46 = sub_2542DF684();
    Logging.ulog(_:_:extended:)(60, v43, v44, v46 & 1, v45, &off_28664A398);
  }

  else
  {
    v47 = v74;
    v48 = *(v74 + 32);
    v67 = v74 + 32;
    v71 = v48;
    v49 = v72;
    v48();
    v50 = OUTLINED_FUNCTION_97((v1 + 24), &v75);
    v80 = v1[24];
    MEMORY[0x28223BE20](v50);
    *(&v66 - 4) = v8;
    *(&v66 - 3) = v26;
    *(&v66 - 2) = v27;
    *(&v66 - 1) = v49;
    sub_2543A1F88();
    sub_2543A2C28();
    OUTLINED_FUNCTION_6_21();
    sub_254357C2C(v51, v52, MEMORY[0x277CC9600]);
    OUTLINED_FUNCTION_38_1();
    sub_2543A27B8();
    sub_2543A2768();
    OUTLINED_FUNCTION_3_8();
    swift_getWitnessTable();
    sub_2543A29E8();

    v53 = sub_2543A2BB8();
    v54 = v70;
    OUTLINED_FUNCTION_120_0(v70, v55, v56, v53);
    v57 = v47;
    v58 = *(v47 + 16);
    v59 = v69;
    v60 = v72;
    v58(v69, v72, v8);
    OUTLINED_FUNCTION_0_32();
    WitnessTable = swift_getWitnessTable();
    v62 = (*(v57 + 80) + 64) & ~*(v57 + 80);
    v63 = swift_allocObject();
    v63[2] = v1;
    v63[3] = WitnessTable;
    v63[4] = v8;
    v63[5] = v26;
    v63[6] = v27;
    v63[7] = v1;
    (v71)(v63 + v62, v59, v8);
    swift_retain_n();
    v64 = OUTLINED_FUNCTION_43_0();
    sub_2542CCD54(v64, v65, v54);

    (*(v74 + 8))(v60, v8);
  }

  OUTLINED_FUNCTION_86();
}

uint64_t sub_254353988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = a1;
  OUTLINED_FUNCTION_0_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9();
  v10 = v9 - v8;
  v11 = sub_2543A2BD8();
  OUTLINED_FUNCTION_0_2();
  v13 = v12;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v14);
  v16 = v18 - v15;
  sub_2543A1F88();
  sub_2543A2C28();
  swift_getTupleTypeMetadata2();
  (*(v6 + 16))(v10, a2, a3);
  sub_2543A2C08();
  return (*(v13 + 8))(v16, v11);
}

uint64_t sub_254353B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_254353B50);
}

uint64_t sub_254353B70()
{
  OUTLINED_FUNCTION_28();
  sub_254325DAC();
  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_254353BC8()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_254353C4C()
{
  sub_254353BC8();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_254353C90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542D32CC;

  return sub_254352190();
}

uint64_t sub_254353D1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542D32CC;

  return sub_254352C98();
}

uint64_t sub_254353E30()
{
  OUTLINED_FUNCTION_92_0();
  v0 = sub_2543A2BF8();
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - v2;
  nullsub_1();
  sub_2542FEED4(v3);
  return sub_2543A2C38();
}

uint64_t sub_254353EE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542DB160;

  return sub_254352190();
}

uint64_t sub_254353F74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542DB160;

  return sub_254352C98();
}

uint64_t sub_254354000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_2542DB160;

  return sub_2543540C8();
}

uint64_t sub_2543540C8()
{
  OUTLINED_FUNCTION_28();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v1[13] = *v0;
  v1[14] = *(v4 - 8);
  v1[15] = OUTLINED_FUNCTION_146();
  v7 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_254354198()
{
  OUTLINED_FUNCTION_46_0();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v21 = v0[11];
  v5 = v0[8];
  v0[6] = v0[12];
  sub_2543A3298();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD00000000000001BLL);
  MEMORY[0x259C093D0](0x6567617373656D20, 0xE90000000000003DLL);
  sub_2543A35C8();
  v6 = OUTLINED_FUNCTION_12_15();
  MEMORY[0x259C093D0](v6 & 0xFFFFFFFFFFFFLL | 0x3D72000000000000, 0xE800000000000000);
  v7 = v3[10];
  sub_2543A35C8();
  type metadata accessor for RapportTransport(0, v7, v3[11], v3[12]);
  sub_2542DF684();
  v8._countAndFlagsBits = OUTLINED_FUNCTION_30_3();
  v8._object = 0xE000000000000000;
  Logging.ulog(_:extended:)(v8, v9);

  v10 = type metadata accessor for TransportRequestObject();
  (*(v2 + 16))(v1, v5, v4);
  v11 = OUTLINED_FUNCTION_42_2();
  v13 = sub_25435F378(v11, v12, v21);
  v0[16] = v13;
  v0[5] = v10;
  v0[2] = v13;
  v14 = v13;
  v15 = swift_task_alloc();
  v0[17] = v15;
  *v15 = v0;
  v15[1] = sub_254354384;
  OUTLINED_FUNCTION_128();

  return sub_254359B14(v16, v17, v18);
}

uint64_t sub_254354384()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *v4 = *v1;
  v3[18] = v5;
  v3[19] = v6;
  v3[20] = v0;

  if (v0)
  {
    v7 = sub_254354674;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v7 = sub_2543544A0;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2543544A0()
{
  OUTLINED_FUNCTION_69_0();
  v1 = v0[20];
  sub_2542D6250(0, &qword_27F5DF800, 0x277CCAAC8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = OUTLINED_FUNCTION_45_0();
  type metadata accessor for RapportResponse(v3, v4, v5, v6);
  v7 = sub_2543A3038();
  if (v1)
  {
    v8 = v0[18];
    v9 = v0[19];
    v10 = v0[16];
LABEL_3:
    sub_2542D7D40(v8, v9);

    OUTLINED_FUNCTION_27();
    goto LABEL_6;
  }

  v12 = v7;
  v14 = v0[18];
  v13 = v0[19];
  v10 = v0[16];
  if (!v7)
  {
    v17 = sub_25435A638();
    v18 = OUTLINED_FUNCTION_100(&type metadata for RapportTransportError, v17);
    OUTLINED_FUNCTION_76_2(v18, v19);
    v8 = v14;
    v9 = v13;
    goto LABEL_3;
  }

  v15 = v0[7];

  sub_2542D7D40(v14, v13);
  (*(*(AssociatedTypeWitness - 8) + 16))(v15, &v12[*((*MEMORY[0x277D85000] & *v12) + 0x60)], AssociatedTypeWitness);

  OUTLINED_FUNCTION_25();
LABEL_6:

  return v11();
}

uint64_t sub_254354674()
{
  OUTLINED_FUNCTION_28();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_2543546E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_2542DB160;

  return sub_2543547A8();
}

uint64_t sub_2543547A8()
{
  OUTLINED_FUNCTION_28();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  OUTLINED_FUNCTION_15_4();
  v1[11] = v7;
  v1[12] = *(v8 + 80);
  OUTLINED_FUNCTION_45_0();
  v9 = sub_2543A30C8();
  v1[13] = v9;
  OUTLINED_FUNCTION_8(v9);
  v1[14] = v10;
  v1[15] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_16_8();
  v1[16] = v11;
  v1[17] = OUTLINED_FUNCTION_146();
  v12 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_2543548D0()
{
  OUTLINED_FUNCTION_46_0();
  v1 = v0[15];
  v2 = v0[11];
  OUTLINED_FUNCTION_97(v0[10] + 160, (v0 + 2));
  sub_2542D6250(0, &qword_27F5E1B20, 0x277D44170);
  v3 = *(*(v2 + 88) + 8);
  sub_254357F48();
  sub_2543A2768();
  sub_2543A2768();
  sub_2543A2768();
  OUTLINED_FUNCTION_51_3();
  sub_25437DB58(v4, v5, v6, v7, v8, v9, v10, v3);

  OUTLINED_FUNCTION_14_0(v1);
  if (v11)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
    v12 = sub_254357FB0();
    v13 = OUTLINED_FUNCTION_100(&type metadata for TransportMessagingError, v12);
    OUTLINED_FUNCTION_4_16(v13, v14);

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();

    __asm { BRAA            X1, X16 }
  }

  (*(v0[16] + 32))(v0[17], v0[15], v0[12]);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[18] = v17;
  *v17 = v18;
  v17[1] = sub_254354AB4;
  OUTLINED_FUNCTION_128();

  return sub_2543540C8();
}

uint64_t sub_254354AB4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v0;

  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_254354BC8()
{
  OUTLINED_FUNCTION_28();
  (*(v0[16] + 8))(v0[17], v0[12]);

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_254354C48()
{
  OUTLINED_FUNCTION_28();
  (*(v0[16] + 8))(v0[17], v0[12]);

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_254354CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_2542DB160;

  return sub_254354D90();
}

uint64_t sub_254354D90()
{
  OUTLINED_FUNCTION_28();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  OUTLINED_FUNCTION_15_4();
  v1[12] = v7;
  v1[13] = *(v8 + 80);
  OUTLINED_FUNCTION_45_0();
  v9 = sub_2543A30C8();
  v1[14] = v9;
  OUTLINED_FUNCTION_8(v9);
  v1[15] = v10;
  v1[16] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_16_8();
  v1[17] = v11;
  v1[18] = OUTLINED_FUNCTION_146();
  v12 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_254354EB8()
{
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000020);
  v3 = OUTLINED_FUNCTION_34_2();
  MEMORY[0x259C093D0](v3, 0xE600000000000000);
  v4 = sub_2543A37B8();
  MEMORY[0x259C093D0](v4);

  OUTLINED_FUNCTION_12_15();
  OUTLINED_FUNCTION_93_1();
  v5 = *(v0 + 88);
  OUTLINED_FUNCTION_91_0();
  swift_getAssociatedTypeWitness();
  sub_2543A35C8();
  v6 = *(v0 + 96);
  v7 = OUTLINED_FUNCTION_45_0();
  type metadata accessor for RapportTransport(v7, v8, v5, v6);
  sub_2542DF684();
  v9 = OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_89_2(v9, v10, v11);

  OUTLINED_FUNCTION_97(v2 + 160, v34);
  sub_2542D6250(0, &qword_27F5E1B20, 0x277D44170);
  sub_254357F48();
  sub_2543A2768();
  sub_2543A2768();
  v12 = sub_2543A2768();
  OUTLINED_FUNCTION_31_4(v12, v13, v14, v15, v16, v17, v18, v19, v32, v33);

  OUTLINED_FUNCTION_52_1(v2);
  if (v20)
  {
    (*(v1[15] + 8))(v1[16], v1[14]);
    v21 = sub_254357FB0();
    v22 = OUTLINED_FUNCTION_100(&type metadata for TransportMessagingError, v21);
    OUTLINED_FUNCTION_4_16(v22, v23);

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_98_0();

    __asm { BRAA            X1, X16 }
  }

  v26 = OUTLINED_FUNCTION_63_2();
  v27(v26);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v1[19] = v28;
  *v28 = v29;
  OUTLINED_FUNCTION_69_3(v28);
  OUTLINED_FUNCTION_98_0();

  return sub_25432866C();
}

uint64_t sub_254355124()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v0;

  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_254355238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = swift_task_alloc();
  *(v6 + 16) = v7;
  *v7 = v6;
  v7[1] = sub_2542DB160;

  return sub_254355310();
}

uint64_t sub_254355310()
{
  OUTLINED_FUNCTION_28();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v1[7] = v7;
  OUTLINED_FUNCTION_15_4();
  v1[14] = v8;
  v1[15] = *(v9 + 80);
  OUTLINED_FUNCTION_45_0();
  v10 = sub_2543A30C8();
  v1[16] = v10;
  OUTLINED_FUNCTION_8(v10);
  v1[17] = v11;
  v1[18] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_16_8();
  v1[19] = v12;
  v1[20] = OUTLINED_FUNCTION_146();
  v13 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v13);
}

uint64_t sub_25435543C()
{
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD00000000000002ALL);
  v2 = OUTLINED_FUNCTION_34_2();
  MEMORY[0x259C093D0](v2, 0xE600000000000000);
  v3 = sub_2543A37B8();
  MEMORY[0x259C093D0](v3);

  OUTLINED_FUNCTION_12_15();
  OUTLINED_FUNCTION_92_1();
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_97_0(v4, v5, v6, MEMORY[0x277D840C0], MEMORY[0x277D83340]);
  sub_2543A35C8();
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_60_2(v7, v8, v9, v10, v11, v12, v13, v14, v51, v54, v57, v60);
  v19 = OUTLINED_FUNCTION_94_2(v15, v16, v17, v18, &associated type descriptor for TransportObservationUpdate.Target);
  OUTLINED_FUNCTION_95_1(v19, v20, v21, v22, &associated conformance descriptor for TransportObservationUpdate.TransportObservationUpdate.Target: Hashable);
  sub_2543A2EB8();
  OUTLINED_FUNCTION_47_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_77_2();
  sub_2542DF684();
  v23 = OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_91_1(v23, v24, v25, v26, v27, v28, v29, v30, v52, v55, v58, v61, v63, v65, v67);

  OUTLINED_FUNCTION_97(v0 + 160, v62);
  sub_2542D6250(0, &qword_27F5E1B20, 0x277D44170);
  v31 = sub_254357F48();
  sub_2543A2768();
  sub_2543A2768();
  v32 = sub_2543A2768();
  OUTLINED_FUNCTION_28_3(v32, v33, v34, v35, v36, v37, v38, v39, v53, v56, v59, v62, v64, v66);

  OUTLINED_FUNCTION_52_1(v31);
  if (v40)
  {
    (*(v1[17] + 8))(v1[18], v1[16]);
    v41 = sub_254357FB0();
    v42 = OUTLINED_FUNCTION_100(&type metadata for TransportMessagingError, v41);
    OUTLINED_FUNCTION_4_16(v42, v43);

    OUTLINED_FUNCTION_127();

    __asm { BRAA            X1, X16 }
  }

  v46 = OUTLINED_FUNCTION_71_2();
  v47(v46);
  v48 = swift_task_alloc();
  v1[21] = v48;
  *v48 = v1;
  OUTLINED_FUNCTION_68_1(v48);
  OUTLINED_FUNCTION_127();

  return sub_2543289EC();
}

uint64_t sub_2543556E0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v0;

  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2543557F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_2542DB160;

  return sub_2543558BC();
}

uint64_t sub_2543558BC()
{
  OUTLINED_FUNCTION_28();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  OUTLINED_FUNCTION_15_4();
  v1[12] = v7;
  v1[13] = *(v8 + 80);
  OUTLINED_FUNCTION_45_0();
  v9 = sub_2543A30C8();
  v1[14] = v9;
  OUTLINED_FUNCTION_8(v9);
  v1[15] = v10;
  v1[16] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_16_8();
  v1[17] = v11;
  v1[18] = OUTLINED_FUNCTION_146();
  v12 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_2543559E4()
{
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000020);
  v3 = OUTLINED_FUNCTION_34_2();
  MEMORY[0x259C093D0](v3, 0xE600000000000000);
  v4 = sub_2543A37B8();
  MEMORY[0x259C093D0](v4);

  OUTLINED_FUNCTION_12_15();
  OUTLINED_FUNCTION_93_1();
  v5 = *(v0 + 88);
  OUTLINED_FUNCTION_91_0();
  swift_getAssociatedTypeWitness();
  sub_2543A35C8();
  v6 = *(v0 + 96);
  v7 = OUTLINED_FUNCTION_45_0();
  type metadata accessor for RapportTransport(v7, v8, v5, v6);
  sub_2542DF684();
  v9 = OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_89_2(v9, v10, v11);

  OUTLINED_FUNCTION_97(v2 + 160, v34);
  sub_2542D6250(0, &qword_27F5E1B20, 0x277D44170);
  sub_254357F48();
  sub_2543A2768();
  sub_2543A2768();
  v12 = sub_2543A2768();
  OUTLINED_FUNCTION_31_4(v12, v13, v14, v15, v16, v17, v18, v19, v32, v33);

  OUTLINED_FUNCTION_52_1(v2);
  if (v20)
  {
    (*(v1[15] + 8))(v1[16], v1[14]);
    v21 = sub_254357FB0();
    v22 = OUTLINED_FUNCTION_100(&type metadata for TransportMessagingError, v21);
    OUTLINED_FUNCTION_4_16(v22, v23);

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_98_0();

    __asm { BRAA            X1, X16 }
  }

  v26 = OUTLINED_FUNCTION_63_2();
  v27(v26);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v1[19] = v28;
  *v28 = v29;
  OUTLINED_FUNCTION_69_3(v28);
  OUTLINED_FUNCTION_98_0();

  return sub_254328EDC();
}

uint64_t sub_254355C50()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v0;

  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_254355D64()
{
  OUTLINED_FUNCTION_28();
  (*(v0[17] + 8))(v0[18], v0[13]);

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_254355DE4()
{
  OUTLINED_FUNCTION_28();
  (*(v0[17] + 8))(v0[18], v0[13]);

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_254355E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = swift_task_alloc();
  *(v6 + 16) = v7;
  *v7 = v6;
  v7[1] = sub_2542DB160;

  return sub_254355F3C();
}

uint64_t sub_254355F3C()
{
  OUTLINED_FUNCTION_28();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v1[7] = v7;
  OUTLINED_FUNCTION_15_4();
  v1[14] = v8;
  v1[15] = *(v9 + 80);
  OUTLINED_FUNCTION_45_0();
  v10 = sub_2543A30C8();
  v1[16] = v10;
  OUTLINED_FUNCTION_8(v10);
  v1[17] = v11;
  v1[18] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_16_8();
  v1[19] = v12;
  v1[20] = OUTLINED_FUNCTION_146();
  v13 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v13);
}

uint64_t sub_254356068()
{
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD00000000000002ALL);
  v2 = OUTLINED_FUNCTION_34_2();
  MEMORY[0x259C093D0](v2, 0xE600000000000000);
  v3 = sub_2543A37B8();
  MEMORY[0x259C093D0](v3);

  OUTLINED_FUNCTION_12_15();
  OUTLINED_FUNCTION_92_1();
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_97_0(v4, v5, v6, MEMORY[0x277D840C0], MEMORY[0x277D83340]);
  sub_2543A35C8();
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_60_2(v7, v8, v9, v10, v11, v12, v13, v14, v51, v54, v57, v60);
  v19 = OUTLINED_FUNCTION_94_2(v15, v16, v17, v18, &associated type descriptor for TransportObservationUpdate.Target);
  OUTLINED_FUNCTION_95_1(v19, v20, v21, v22, &associated conformance descriptor for TransportObservationUpdate.TransportObservationUpdate.Target: Hashable);
  sub_2543A2EB8();
  OUTLINED_FUNCTION_47_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_77_2();
  sub_2542DF684();
  v23 = OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_91_1(v23, v24, v25, v26, v27, v28, v29, v30, v52, v55, v58, v61, v63, v65, v67);

  OUTLINED_FUNCTION_97(v0 + 160, v62);
  sub_2542D6250(0, &qword_27F5E1B20, 0x277D44170);
  v31 = sub_254357F48();
  sub_2543A2768();
  sub_2543A2768();
  v32 = sub_2543A2768();
  OUTLINED_FUNCTION_28_3(v32, v33, v34, v35, v36, v37, v38, v39, v53, v56, v59, v62, v64, v66);

  OUTLINED_FUNCTION_52_1(v31);
  if (v40)
  {
    (*(v1[17] + 8))(v1[18], v1[16]);
    v41 = sub_254357FB0();
    v42 = OUTLINED_FUNCTION_100(&type metadata for TransportMessagingError, v41);
    OUTLINED_FUNCTION_4_16(v42, v43);

    OUTLINED_FUNCTION_127();

    __asm { BRAA            X1, X16 }
  }

  v46 = OUTLINED_FUNCTION_71_2();
  v47(v46);
  v48 = swift_task_alloc();
  v1[21] = v48;
  *v48 = v1;
  OUTLINED_FUNCTION_68_1(v48);
  OUTLINED_FUNCTION_127();

  return sub_254329C2C();
}

uint64_t sub_25435630C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v0;

  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_254356420()
{
  OUTLINED_FUNCTION_28();
  (*(v0[19] + 8))(v0[20], v0[15]);

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_2543564A0()
{
  OUTLINED_FUNCTION_28();
  (*(v0[19] + 8))(v0[20], v0[15]);

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_254356520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2543565DC;

  return sub_2543566CC(a1, a2, a3, a4);
}

uint64_t sub_2543565DC()
{
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_41();
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_2543566CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v5[11] = *v4;
  v5[12] = *v4;
  return OUTLINED_FUNCTION_17_6(sub_254356740);
}

uint64_t sub_254356740()
{
  v1 = *(v0 + 96);
  v18 = *(v0 + 88);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v16 = *(v0 + 48);
  *(v0 + 16) = v2;
  v17 = *(v0 + 64);
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD00000000000001CLL, 0x80000002543B9BF0);
  MEMORY[0x259C093D0](0x3D65746164707520, 0xE800000000000000);
  sub_2543A35C8();
  MEMORY[0x259C093D0](0x6576726573626F20, 0xEB000000005B7372);
  v4 = *(v1 + 96);
  *(v0 + 24) = sub_2543A2E28();
  v5 = sub_2543A35A8();
  MEMORY[0x259C093D0](v5);

  MEMORY[0x259C093D0](15709, 0xE200000000000000);
  *(v0 + 32) = v3;
  OUTLINED_FUNCTION_91_0();
  sub_2543A2EB8();
  OUTLINED_FUNCTION_47_1();
  swift_getWitnessTable();
  sub_2543A35D8();
  v6 = OUTLINED_FUNCTION_91_0();
  type metadata accessor for RapportTransport(v6, v7, v8, v4);
  sub_2542DF684();
  v9._countAndFlagsBits = OUTLINED_FUNCTION_30_3();
  v9._object = 0xE000000000000000;
  Logging.ulog(_:extended:)(v9, v10);

  OUTLINED_FUNCTION_0_32();
  swift_getWitnessTable();
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *(v11 + 16) = v17;
  *(v11 + 32) = v3;
  *(v11 + 40) = v2;
  *(v11 + 48) = v16;
  *(v11 + 56) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1B50, &qword_2543AEB98);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 112) = v12;
  *v12 = v13;
  v12[1] = sub_2543569FC;
  OUTLINED_FUNCTION_98_0();

  return MEMORY[0x282200740]();
}

uint64_t sub_2543569FC()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    v7 = sub_254356B28;
  }

  else
  {

    v7 = sub_254356B0C;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_254356B28()
{
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_254356B90(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_254356BCC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_32();
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254356BF8(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_254356C78(uint64_t a1, uint64_t *a2)
{
  v24 = a1;
  v22 = *a2;
  v21 = *(v22 + 80);
  v3 = sub_2543A2C28();
  v4 = sub_2543A30C8();
  MEMORY[0x28223BE20](v4 - 8);
  v23 = &v20 - v5;
  v6 = sub_2543A1F88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  sub_2543A1F78();
  v13 = *(v7 + 16);
  v13(v9, v12, v6);
  v14 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v16 = v22;
  *(v15 + 2) = v21;
  *(v15 + 3) = *(v16 + 88);
  *(v15 + 4) = *(v16 + 96);
  *(v15 + 5) = a2;
  (*(v7 + 32))(&v15[v14], v9, v6);

  v17 = v24;
  sub_2543A2BE8();
  v13(v9, v12, v6);
  v18 = v23;
  (*(*(v3 - 8) + 16))(v23, v17, v3);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v3);
  swift_beginAccess();
  sub_254357C2C(&qword_27F5DF518, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2543A27B8();
  sub_2543A27E8();
  swift_endAccess();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_254356F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_254356FB4);
}

uint64_t sub_254356FB4()
{
  OUTLINED_FUNCTION_28();
  sub_25435700C(*(v0 + 24));
  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_25435700C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v20 = sub_2543A2C28();
  v5 = sub_2543A30C8();
  MEMORY[0x28223BE20](v5 - 8);
  v19 = &v17 - v6;
  v7 = sub_2543A1F88();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v18 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v1;
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_2543A3298();

  v21 = 0xD000000000000036;
  v22 = 0x80000002543B86E0;
  v10 = MEMORY[0x277CC95F0];
  sub_254357C2C(&qword_27F5DF378, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v11 = sub_2543A35A8();
  MEMORY[0x259C093D0](v11);

  v13 = v21;
  v12 = v22;
  type metadata accessor for RapportTransport(0, v4, *(v3 + 88), *(v3 + 96));
  v14 = sub_2542DF684() & 1;
  v15._countAndFlagsBits = v13;
  v15._object = v12;
  Logging.ulog(_:extended:)(v15, v14);

  (*(v8 + 16))(v18, a1, v7);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  swift_beginAccess();
  sub_254357C2C(&qword_27F5DF518, v10, MEMORY[0x277CC9600]);
  sub_2543A27B8();
  sub_2543A27E8();
  return swift_endAccess();
}

uint64_t sub_2543572EC(uint64_t a1, uint64_t *a2)
{
  v24 = a1;
  v22 = *a2;
  v21 = *(v22 + 80);
  v3 = sub_2543A2C28();
  v4 = sub_2543A30C8();
  MEMORY[0x28223BE20](v4 - 8);
  v23 = &v20 - v5;
  v6 = sub_2543A1F88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  sub_2543A1F78();
  v13 = *(v7 + 16);
  v13(v9, v12, v6);
  v14 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v16 = v22;
  *(v15 + 2) = v21;
  *(v15 + 3) = *(v16 + 88);
  *(v15 + 4) = *(v16 + 96);
  *(v15 + 5) = a2;
  (*(v7 + 32))(&v15[v14], v9, v6);

  v17 = v24;
  sub_2543A2BE8();
  v13(v9, v12, v6);
  v18 = v23;
  (*(*(v3 - 8) + 16))(v23, v17, v3);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v3);
  swift_beginAccess();
  sub_254357C2C(&qword_27F5DF518, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2543A27B8();
  sub_2543A27E8();
  swift_endAccess();
  return (*(v7 + 8))(v12, v6);
}

void sub_254357610()
{
  OUTLINED_FUNCTION_88();
  v23[1] = v0;
  v2 = v1;
  v4 = v3;
  v5 = *v3;
  v6 = *v3;
  v7 = sub_2543A1F88();
  OUTLINED_FUNCTION_0_2();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v13);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v14);
  v16 = v23 - v15;
  v17 = sub_2543A2BB8();
  OUTLINED_FUNCTION_120_0(v16, v18, v19, v17);
  (*(v9 + 16))(v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v7);
  OUTLINED_FUNCTION_83_1();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = *(v6 + 80);
  *(v20 + 48) = *(v5 + 96);
  *(v20 + 56) = v4;
  (*(v9 + 32))(v20 + v2, v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  v21 = OUTLINED_FUNCTION_43_0();
  sub_2542CCD54(v21, v22, v16);

  OUTLINED_FUNCTION_86();
}

uint64_t sub_254357808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_254357828);
}

uint64_t sub_254357828()
{
  OUTLINED_FUNCTION_28();
  sub_25435794C(*(v0 + 24));
  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_254357880()
{
  OUTLINED_FUNCTION_40();
  v0 = sub_2543A1F88();
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_83_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_10_15(v2);

  return sub_254357808(v4, v5, v6, v7, v8);
}

uint64_t sub_25435794C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v20 = sub_2543A2C28();
  v5 = sub_2543A30C8();
  MEMORY[0x28223BE20](v5 - 8);
  v19 = &v17 - v6;
  v7 = sub_2543A1F88();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v18 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v1;
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_2543A3298();

  v21 = 0xD000000000000030;
  v22 = 0x80000002543B86A0;
  v10 = MEMORY[0x277CC95F0];
  sub_254357C2C(&qword_27F5DF378, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v11 = sub_2543A35A8();
  MEMORY[0x259C093D0](v11);

  v13 = v21;
  v12 = v22;
  type metadata accessor for RapportTransport(0, v4, *(v3 + 88), *(v3 + 96));
  v14 = sub_2542DF684() & 1;
  v15._countAndFlagsBits = v13;
  v15._object = v12;
  Logging.ulog(_:extended:)(v15, v14);

  (*(v8 + 16))(v18, a1, v7);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  swift_beginAccess();
  sub_254357C2C(&qword_27F5DF518, v10, MEMORY[0x277CC9600]);
  sub_2543A27B8();
  sub_2543A27E8();
  return swift_endAccess();
}

uint64_t sub_254357C2C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_2()
{
  sub_2543A1F88();
  OUTLINED_FUNCTION_0_2();

  v0 = OUTLINED_FUNCTION_67_2();
  v1(v0);
  v2 = OUTLINED_FUNCTION_54_0();

  return MEMORY[0x2821FE8E8](v2);
}

void sub_254357D48()
{
  v0 = sub_2543A1F88();
  OUTLINED_FUNCTION_110(v0);
  sub_254357610();
}

uint64_t objectdestroy_8Tm()
{
  sub_2543A1F88();
  OUTLINED_FUNCTION_0_2();
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_67_2();
  v1(v0);
  v2 = OUTLINED_FUNCTION_54_0();

  return MEMORY[0x2821FE8E8](v2);
}

uint64_t sub_254357E7C()
{
  OUTLINED_FUNCTION_40();
  v0 = sub_2543A1F88();
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_83_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_10_15(v2);

  return sub_254356F94(v4, v5, v6, v7, v8);
}

unint64_t sub_254357F48()
{
  result = qword_27F5E1B28;
  if (!qword_27F5E1B28)
  {
    sub_2542D6250(255, &qword_27F5E1B20, 0x277D44170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1B28);
  }

  return result;
}

unint64_t sub_254357FB0()
{
  result = qword_27F5E1B30;
  if (!qword_27F5E1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1B30);
  }

  return result;
}

uint64_t sub_254358004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = v14;
  v8[33] = v15;
  v8[30] = a7;
  v8[31] = a8;
  v8[28] = a5;
  v8[29] = a6;
  v8[27] = a4;
  v9 = *a4;
  v8[34] = *a4;
  v10 = *(v9 + 80);
  v8[35] = v10;
  v11 = sub_2543A30C8();
  v8[36] = v11;
  v8[37] = *(v11 - 8);
  v8[38] = swift_task_alloc();
  v8[39] = *(v10 - 8);
  v8[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254358174);
}

uint64_t sub_254358388()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 336) = v0;

  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_25435849C()
{
  OUTLINED_FUNCTION_46_0();
  v24 = v0;
  v1 = v0[42];
  v2 = sub_254358850(v0 + 15);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 15);
    v4 = v0[30];
    v21 = v1;
    v22 = 0;
    v23 = 0;
    v5 = v1;
    sub_25435889C(&v21);
    sub_25435C2A4(v21, v22, v23);
    OUTLINED_FUNCTION_139();
    v4();

    v6 = OUTLINED_FUNCTION_42_2();
    v7(v6);
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v11 = v0[39];
    v10 = v0[40];
    v12 = v0[35];
    v13 = v0[30];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1B40, &unk_2543AEB68);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_23_4(inited, xmmword_2543A7E00);
    sub_2543A3228();
    inited[6].n128_u64[0] = MEMORY[0x277CC9318];
    inited[4].n128_u64[1] = v8;
    inited[5].n128_u64[0] = v9;
    v15 = OUTLINED_FUNCTION_42_2();
    sub_2542D61B4(v15, v16);
    sub_2543A2748();
    OUTLINED_FUNCTION_139();
    v13();

    v17 = OUTLINED_FUNCTION_42_2();
    sub_2542D7D40(v17, v18);
    (*(v11 + 8))(v10, v12);
    __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  }

  OUTLINED_FUNCTION_73_2();

  OUTLINED_FUNCTION_27();

  return v19();
}

uint64_t sub_25435867C()
{
  OUTLINED_FUNCTION_46_0();
  v12 = v0;
  __swift_deallocate_boxed_opaque_existential_1((v0 + 15));
  v1 = v0[42];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[35];
  v5 = v0[30];
  v9 = v1;
  v10 = 0;
  v11 = 0;
  v6 = v1;
  sub_25435889C(&v9);
  sub_25435C2A4(v9, v10, v11);
  OUTLINED_FUNCTION_139();
  v5();

  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_73_2();

  OUTLINED_FUNCTION_27();

  return v7();
}