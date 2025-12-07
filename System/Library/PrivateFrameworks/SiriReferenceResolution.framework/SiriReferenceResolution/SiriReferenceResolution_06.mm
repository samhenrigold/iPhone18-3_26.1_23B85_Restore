uint64_t dispatch thunk of SiriReferenceResolutionService.getSalientEntities(filter:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  OUTLINED_FUNCTION_52();
  v6 = (*(v3 + 280) + **(v3 + 280));
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = sub_1DD2E4430;

  return v6(v2);
}

uint64_t dispatch thunk of SiriReferenceResolutionService.getOnScreenContent()()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v4 = (*(v1 + 288) + **(v1 + 288));
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1DD2DB138;

  return v4();
}

uint64_t sub_1DD30B0AC()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_2(v7);
  *v8 = v9;
  v8[1] = sub_1DD2BE86C;

  return sub_1DD305D54(v4, v2, v6, v5);
}

uint64_t sub_1DD30B154(uint64_t a1)
{
  v3 = v2;
  v5 = sub_1DD334890();
  OUTLINED_FUNCTION_69_0(v5);
  v7 = (*(v6 + 80) + 44) & ~*(v6 + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = *(v1 + 40);
  v13 = *(v1 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1DD2BEDE4;

  return sub_1DD306508(a1, v9, v10, v11, v12, v1 + v7, v13);
}

uint64_t sub_1DD30B288()
{
  OUTLINED_FUNCTION_64_4();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[9];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_2(v6);
  *v7 = v8;
  v7[1] = sub_1DD2BEDE4;

  return sub_1DD3060E0(v2, v3, v4, (v0 + 4), v5);
}

uint64_t sub_1DD30B33C()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2(v4);
  *v5 = v6;
  v5[1] = sub_1DD2BE86C;

  return sub_1DD28286C(v2, v3);
}

uint64_t sub_1DD30B3E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD335CD0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RRLNService();
  v12 = &protocol witness table for RRLNService;
  *&v10 = a1;
  v9 = type metadata accessor for RROnScreenAppEntityPuller(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6990, &qword_1DD33A2B8);
  sub_1DD336630();
  sub_1DD335CC0();
  (*(v5 + 32))(a2 + OBJC_IVAR____TtC23SiriReferenceResolution25RROnScreenAppEntityPuller_logger, v7, v4);
  sub_1DD289CE4(&v10, a2 + OBJC_IVAR____TtC23SiriReferenceResolution25RROnScreenAppEntityPuller_lnService);
  return a2;
}

uint64_t sub_1DD30B54C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCD62A8, "be");
    sub_1DD30B5E4(a2, MEMORY[0x1E69D28A0], a3);
    OUTLINED_FUNCTION_41();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD30B5E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_98_2()
{
}

uint64_t OUTLINED_FUNCTION_101_1(uint64_t a1)
{

  return sub_1DD335CB0();
}

void OUTLINED_FUNCTION_102_1(float a1)
{
  *v1 = a1;

  JUMPOUT(0x1E12AC670);
}

uint64_t OUTLINED_FUNCTION_120_0(uint64_t a1)
{

  return sub_1DD335DD0();
}

unint64_t OUTLINED_FUNCTION_124_1(uint64_t a1, unint64_t a2)
{

  return sub_1DD27DBF0(a1, a2, (v2 - 192));
}

uint64_t sub_1DD30B7A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DD30D110;

  return RRLNServiceProviding.fetchEntitiesFromActiveApplications(interactionIDs:bundleIDs:)();
}

uint64_t sub_1DD30B844()
{
  OUTLINED_FUNCTION_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6978, &qword_1DD33A2A0);
  sub_1DD336530();
  OUTLINED_FUNCTION_47_0();

  return v0();
}

uint64_t sub_1DD30B8D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return OUTLINED_FUNCTION_14_9();
}

uint64_t sub_1DD30B8E8()
{
  v1 = v0[19];
  if (v1)
  {
    sub_1DD27D80C(0, &qword_1ECCD6F58, 0x1E696AD98);
    v1 = sub_1DD336800();
  }

  v0[21] = v1;
  if (v0[20])
  {
    v2 = sub_1DD336800();
  }

  else
  {
    v2 = 0;
  }

  v0[22] = v2;
  sub_1DD27D80C(0, &qword_1EE027518, 0x1E69ACD70);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DD30BA84;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6F50, &qword_1DD33ACF8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DD30BC70;
  v0[13] = &block_descriptor_8;
  v0[14] = v4;
  [ObjCClassFromMetadata fetchEntitiesFromActiveApplicationsWithInteractionIDs:v1 bundleIdentifiers:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DD30BA84()
{
  OUTLINED_FUNCTION_4();
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1DD30BBF8;
  }

  else
  {
    v2 = sub_1DD30BB90;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD30BB90()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);

  OUTLINED_FUNCTION_47_0();

  return v3(v2);
}

uint64_t sub_1DD30BBF8(uint64_t a1)
{
  v2 = v1[22];
  v3 = v1[21];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_1DD30BC70(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1DD30BD24(v4, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6978, &qword_1DD33A2A0);
    v7 = sub_1DD336510();

    return sub_1DD30BD90(v4, v7);
  }
}

uint64_t sub_1DD30BD24(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_1DD30BDB0(uint64_t a1, uint64_t (**a2)(uint64_t a1), uint64_t a3, uint64_t a4)
{
  v87 = a3;
  v88 = a4;
  v75 = a2;
  v74 = a1;
  sub_1DD3363A0();
  OUTLINED_FUNCTION_1_0();
  v83 = v5;
  v84 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v80 = (v7 - v6);
  v82 = sub_1DD336420();
  OUTLINED_FUNCTION_1_0();
  v81 = v8;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v78 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v79 = v69 - v12;
  v86 = sub_1DD3363C0();
  OUTLINED_FUNCTION_1_0();
  v73 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12();
  v85 = v16 - v15;
  v77 = sub_1DD3369C0();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_12();
  v22 = v21 - v20;
  v23 = sub_1DD336980();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_12();
  v72 = sub_1DD336400();
  OUTLINED_FUNCTION_1_0();
  v71 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_12();
  v28 = v27 - v26;
  OUTLINED_FUNCTION_60();
  v90 = swift_allocObject();
  *(v90 + 16) = 0;
  OUTLINED_FUNCTION_60();
  v89 = swift_allocObject();
  *(v89 + 16) = 0;
  v76 = sub_1DD27D80C(0, &qword_1EE028598, 0x1E69E9610);
  sub_1DD3363E0();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1DD2955A0(&qword_1EE0285A0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6708, &qword_1DD339E50);
  sub_1DD27F454(&qword_1EE0285E8, &qword_1ECCD6708, &qword_1DD339E50);
  sub_1DD336B10();
  (*(v18 + 104))(v22, *MEMORY[0x1E69E8090], v77);
  v70 = v28;
  v29 = sub_1DD336A10();
  v30 = v74;
  v31 = v29;
  OUTLINED_FUNCTION_60();
  v32 = swift_allocObject();
  v33 = dispatch_group_create();
  *(v32 + 16) = v33;
  v76 = v32 + 16;
  dispatch_group_enter(v33);
  v77 = v31;
  if (v30)
  {
    sub_1DD27D80C(0, &qword_1ECCD6F58, 0x1E696AD98);
    v34 = sub_1DD336800();
  }

  else
  {
    v34 = 0;
  }

  v35 = v87;
  v37 = v89;
  v36 = v90;
  if (v75)
  {
    v38 = sub_1DD336800();
  }

  else
  {
    v38 = 0;
  }

  sub_1DD27D80C(0, &qword_1EE027518, 0x1E69ACD70);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  OUTLINED_FUNCTION_83();
  v40 = swift_allocObject();
  v40[2] = v36;
  v40[3] = v37;
  v40[4] = v32;
  v97 = sub_1DD30C858;
  v98 = v40;
  aBlock = MEMORY[0x1E69E9820];
  v94 = 1107296256;
  v95 = sub_1DD30C864;
  v96 = &block_descriptor_13;
  v41 = _Block_copy(&aBlock);
  sub_1DD335860();
  sub_1DD335860();
  sub_1DD335860();

  [ObjCClassFromMetadata fetchEntitiesFromActiveApplicationsWithInteractionIDs:v34 bundleIdentifiers:v38 completionHandler:v41];
  _Block_release(v41);

  OUTLINED_FUNCTION_83();
  v42 = swift_allocObject();
  v42[2] = v32;
  v42[3] = v35;
  v42[4] = v88;
  v97 = sub_1DD30C9C4;
  v98 = v42;
  aBlock = MEMORY[0x1E69E9820];
  v94 = 1107296256;
  v75 = &v95;
  v95 = sub_1DD2811BC;
  v96 = &block_descriptor_19;
  _Block_copy(&aBlock);
  v92[0] = MEMORY[0x1E69E7CC0];
  v43 = sub_1DD2955A0(&qword_1EE027F38, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1DD335860();
  sub_1DD335860();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6710, &qword_1DD339620);
  v45 = sub_1DD27F454(&qword_1EE027ED0, &qword_1ECCD6710, &qword_1DD339620);
  v46 = v85;
  v69[1] = v44;
  v69[0] = v45;
  v47 = v86;
  v74 = v43;
  sub_1DD336B10();
  sub_1DD336460();
  swift_allocObject();
  v48 = sub_1DD336440();

  v49 = v32;
  v50 = v78;
  sub_1DD336410();
  v51 = v80;
  *v80 = 1000;
  v53 = v83;
  v52 = v84;
  (*(v83 + 104))(v51, *MEMORY[0x1E69E7F38], v84);
  v54 = v79;
  MEMORY[0x1E12AC2C0](v50, v51);
  (*(v53 + 8))(v51, v52);
  v55 = v47;
  v56 = *(v81 + 8);
  v57 = v82;
  v56(v50, v82);
  v58 = v77;
  sub_1DD336990();
  v56(v54, v57);
  swift_beginAccess();
  v59 = *(v49 + 16);
  if (v59)
  {
    v60 = swift_allocObject();
    v61 = v87;
    v62 = v88;
    v60[2] = v48;
    v60[3] = v61;
    v64 = v89;
    v63 = v90;
    v60[4] = v62;
    v60[5] = v63;
    v60[6] = v64;
    v97 = sub_1DD30CA80;
    v98 = v60;
    aBlock = MEMORY[0x1E69E9820];
    v94 = 1107296256;
    v95 = sub_1DD2811BC;
    v96 = &block_descriptor_25;
    v65 = _Block_copy(&aBlock);
    sub_1DD335860();
    sub_1DD335860();
    sub_1DD335860();
    v66 = v59;
    sub_1DD335860();
    v88 = v49;
    v67 = v70;
    sub_1DD3363E0();
    v91 = MEMORY[0x1E69E7CC0];
    sub_1DD336B10();
    sub_1DD336970();
    _Block_release(v65);

    (*(v73 + 8))(v46, v55);
    (*(v71 + 8))(v67, v72);
  }

  else
  {
  }
}

void sub_1DD30C798(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  *(a3 + 16) = a1;

  swift_beginAccess();
  v10 = *(a4 + 16);
  *(a4 + 16) = a2;
  v11 = a2;

  swift_beginAccess();
  v12 = *(a5 + 16);
  if (v12)
  {
    dispatch_group_leave(v12);
  }
}

uint64_t sub_1DD30C864(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6978, &qword_1DD33A2A0);
    v4 = sub_1DD336510();
  }

  sub_1DD335860();
  v6 = a3;
  v5(v4, a3);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DD335860();
}

void sub_1DD30C92C(uint64_t a1, void (*a2)(void, void *))
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;

  sub_1DD30D0A8();
  v5 = swift_allocError();
  *v6 = 1;
  a2(0, v5);
}

uint64_t sub_1DD30C9D0(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DD336450();
  swift_beginAccess();
  v8 = *(a4 + 16);
  swift_beginAccess();
  v9 = *(a5 + 16);

  v10 = v9;
  a2(v8, v9);
}

uint64_t sub_1DD30CB1C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD30CBB8;

  return sub_1DD30B8D4(a1, a2);
}

uint64_t sub_1DD30CBB8()
{
  OUTLINED_FUNCTION_4();
  v2 = v1;

  OUTLINED_FUNCTION_47_0();
  if (!v0)
  {
    v3 = v2;
  }

  return v4(v3);
}

uint64_t dispatch thunk of RRLNServiceProviding.fetchEntitiesFromActiveApplications(interactionIDs:bundleIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DD30D104;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of RRLNService.fetchEntitiesFromActiveApplications(interactionIDs:bundleIDs:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 96) + **(*v2 + 96));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DD30CF6C;

  return v8(a1, a2);
}

uint64_t sub_1DD30CF6C()
{
  OUTLINED_FUNCTION_4();
  v1 = v0;

  OUTLINED_FUNCTION_47_0();

  return v2(v1);
}

unint64_t sub_1DD30D0A8()
{
  result = qword_1ECCD6F60;
  if (!qword_1ECCD6F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6F60);
  }

  return result;
}

const char *sub_1DD30D128(char a1)
{
  result = "self_resolve";
  switch(a1)
  {
    case 1:
      result = "self_gather_salient_entities";
      break;
    case 2:
      result = "curare_access";
      break;
    case 3:
      result = "search_object";
      break;
    case 4:
      result = "if_ui_context";
      break;
    case 5:
      result = "if_onscreen_appentity";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD30D1E0(unsigned __int8 a1)
{
  sub_1DD336EC0();
  MEMORY[0x1E12ACD20](a1);
  return sub_1DD336EF0();
}

uint64_t sub_1DD30D244(uint64_t a1)
{
  v2 = *v1;
  sub_1DD336EC0();
  MEMORY[0x1E12ACD20](v2);
  return sub_1DD336EF0();
}

unint64_t sub_1DD30D2A4()
{
  result = qword_1EE028948[0];
  if (!qword_1EE028948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE028948);
  }

  return result;
}

Swift::Bool __swiftcall SRRFeatureFlagsImpl.isUsoEntitySpanEnabled()()
{
  v2[3] = &type metadata for UsoEntitySpanFeatureFlag;
  v2[4] = sub_1DD30D360();
  v0 = sub_1DD334A70();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

unint64_t sub_1DD30D360()
{
  result = qword_1EE0277F8;
  if (!qword_1EE0277F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0277F8);
  }

  return result;
}

uint64_t sub_1DD30D3C4(char a1)
{
  v4[3] = &type metadata for Features;
  v4[4] = sub_1DD30D2A4();
  LOBYTE(v4[0]) = a1;
  v2 = sub_1DD334A70();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

_BYTE *sub_1DD30D57C(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Features(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for Features(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD30D79C()
{
  result = qword_1ECCD6F68;
  if (!qword_1ECCD6F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6F68);
  }

  return result;
}

unint64_t sub_1DD30D7F4()
{
  result = qword_1ECCD6F70;
  if (!qword_1ECCD6F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6F70);
  }

  return result;
}

uint64_t sub_1DD30D898()
{
  sub_1DD336EC0();
  MEMORY[0x1E12ACD20](0);
  return sub_1DD336EF0();
}

uint64_t _s23SiriReferenceResolution18RRLinkServiceErrorO9hashValueSivg_0()
{
  OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_9_11();
  return sub_1DD336EF0();
}

uint64_t _s23SiriReferenceResolution13RRPullerErrorO9hashValueSivg_0()
{
  OUTLINED_FUNCTION_8_8();
  MEMORY[0x1E12ACD20](0);
  return sub_1DD336EF0();
}

uint64_t sub_1DD30DA30(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_8_8();
  MEMORY[0x1E12ACD20](a1);
  return sub_1DD336EF0();
}

uint64_t sub_1DD30DAB0(char a1)
{
  OUTLINED_FUNCTION_8_8();
  MEMORY[0x1E12ACD20](a1 & 1);
  return sub_1DD336EF0();
}

uint64_t sub_1DD30DAF0(uint64_t a1)
{
  sub_1DD336EC0();
  OUTLINED_FUNCTION_9_11();
  return sub_1DD336EF0();
}

unint64_t sub_1DD30DB30()
{
  result = qword_1ECCD6F78;
  if (!qword_1ECCD6F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6F78);
  }

  return result;
}

unint64_t sub_1DD30DB88()
{
  result = qword_1ECCD6F80;
  if (!qword_1ECCD6F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6F80);
  }

  return result;
}

unint64_t sub_1DD30DBE0()
{
  result = qword_1ECCD6F88;
  if (!qword_1ECCD6F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6F88);
  }

  return result;
}

unint64_t sub_1DD30DC38()
{
  result = qword_1ECCD6F90;
  if (!qword_1ECCD6F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6F90);
  }

  return result;
}

unint64_t sub_1DD30DC90()
{
  result = qword_1ECCD6F98;
  if (!qword_1ECCD6F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6F98);
  }

  return result;
}

unint64_t sub_1DD30DCE8()
{
  result = qword_1ECCD6FA0;
  if (!qword_1ECCD6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6FA0);
  }

  return result;
}

unint64_t sub_1DD30DD40()
{
  result = qword_1ECCD6FA8;
  if (!qword_1ECCD6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6FA8);
  }

  return result;
}

unint64_t sub_1DD30DD98()
{
  result = qword_1ECCD6FB0;
  if (!qword_1ECCD6FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6FB0);
  }

  return result;
}

unint64_t sub_1DD30DDF0()
{
  result = qword_1ECCD6FB8;
  if (!qword_1ECCD6FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6FB8);
  }

  return result;
}

unint64_t sub_1DD30DE48()
{
  result = qword_1ECCD6FC0;
  if (!qword_1ECCD6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6FC0);
  }

  return result;
}

unint64_t sub_1DD30DEA0()
{
  result = qword_1ECCD6FC8;
  if (!qword_1ECCD6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6FC8);
  }

  return result;
}

uint64_t sub_1DD30DF48(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_7_9(a1);
}

_BYTE *sub_1DD30DF94(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RREntityStorageError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for RREntityStorageError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DD30E19C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_6_10(-1);
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
      return OUTLINED_FUNCTION_6_10((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_6_10((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_6_10((*a1 | (v4 << 8)) - 3);
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

  return OUTLINED_FUNCTION_6_10(v8);
}

_BYTE *sub_1DD30E220(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_7(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_3_12(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_4_11(result, v6);
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
          result = OUTLINED_FUNCTION_1_9(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD30E2F4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_6_10(-1);
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
      return OUTLINED_FUNCTION_6_10((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_6_10((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_6_10((*a1 | (v4 << 8)) - 4);
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

  return OUTLINED_FUNCTION_6_10(v8);
}

_BYTE *sub_1DD30E378(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_7(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_3_12(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_4_11(result, v6);
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
          result = OUTLINED_FUNCTION_1_9(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD30E444()
{
  result = qword_1ECCD6FD0;
  if (!qword_1ECCD6FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6FD0);
  }

  return result;
}

uint64_t sub_1DD30E498(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_6_10(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_6_10((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_6_10((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_6_10((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_6_10(v8);
}

_BYTE *sub_1DD30E51C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_7(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_3_12(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_4_11(result, v6);
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
          result = OUTLINED_FUNCTION_1_9(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD30E5E8()
{
  result = qword_1ECCD6FD8;
  if (!qword_1ECCD6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6FD8);
  }

  return result;
}

uint64_t *RRBiomePuller.deinit()
{
  v1 = qword_1EE02A6A0;
  sub_1DD335CD0();
  OUTLINED_FUNCTION_4_0();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 96);
  sub_1DD334A40();
  sub_1DD336AD0();
  OUTLINED_FUNCTION_4_0();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t RRBiomePuller.__deallocating_deinit()
{
  RRBiomePuller.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD30E824(uint64_t a1)
{
  result = sub_1DD335CD0();
  if (v2 <= 0x3F)
  {
    sub_1DD334A40();
    result = sub_1DD336AD0();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_1DD30E970()
{
  result = sub_1DD30E990();
  qword_1EE027F30 = result;
  return result;
}

id sub_1DD30E990()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6798, &qword_1DD33A070);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_1DD334940();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1DD30EE70(0xD000000000000019, 0x80000001DD33E950, v7);
  sub_1DD3348A0();
  v8 = sub_1DD3348F0();
  (*(v4 + 8))(v6, v3);
  [v7 setLocale_];

  sub_1DD3349C0();
  v9 = sub_1DD3349F0();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) != 1)
  {
    v10 = sub_1DD3349D0();
    (*(*(v9 - 8) + 8))(v2, v9);
  }

  [v7 setTimeZone_];

  return v7;
}

id dateFormatter.getter()
{
  if (qword_1EE027F28 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_1EE027F28);
  }

  OUTLINED_FUNCTION_1_10();
  v0 = qword_1EE027F30;

  return v0;
}

void dateFormatter.setter(uint64_t a1)
{
  if (qword_1EE027F28 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_1EE027F28);
  }

  swift_beginAccess();
  v2 = qword_1EE027F30;
  qword_1EE027F30 = a1;
}

uint64_t (*dateFormatter.modify())(uint64_t a1)
{
  if (qword_1EE027F28 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_1EE027F28);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1DD30ECF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  __src = a1;
  v15 = WORD2(a2);
  v14 = a2;
  v6 = MEMORY[0x1E69E7CC0];
  switch(a4 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a3), a3))
      {
        __break(1u);
LABEL_10:
        __break(1u);
      }

      v9 = HIDWORD(a3) - a3;
LABEL_6:
      if (v9)
      {
        v6 = sub_1DD29684C(v9, 0);
        memcpy(v6 + 4, &__src, v9);
      }

LABEL_8:
      result = sub_1DD290274(a3, a4);
      *a5 = v6;
      return result;
    case 2uLL:
      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = v10 - v11;
      if (!__OFSUB__(v10, v11))
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    case 3uLL:
      goto LABEL_8;
    default:
      v9 = BYTE6(a4);
      goto LABEL_6;
  }
}

void type metadata accessor for ComparisonResult()
{
  if (!qword_1ECCD7048)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECCD7048);
    }
  }
}

void sub_1DD30EE70(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD3365A0();

  [a3 setDateFormat_];
}

uint64_t sub_1DD30EEDC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 + 16);
  v10(v22, a3, a5);
  v11 = v22[3];
  v18 = v22[2];

  sub_1DD288AB8(v22);
  v10(v23, a3, a5);
  v13 = v23[6];
  v12 = v23[7];

  sub_1DD288AB8(v23);
  (*(a6 + 40))(v18, v11, v13, v12, a4, a6);
  v10(v21, a3, a5);
  (*(a6 + 24))(v21, a4, a6);
  v14 = *(a6 + 32);

  v15 = v14(v21, a4, a6);
  *v16 = a1;
  *(v16 + 8) = a2;

  return v15(v21, 0);
}

uint64_t sub_1DD30F07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  OUTLINED_FUNCTION_49_6();
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  v11 = OUTLINED_FUNCTION_51_7(v10);
  OUTLINED_FUNCTION_69_6(v11, xmmword_1DD339380);
  sub_1DD2855A0(v9, v12);

  sub_1DD28C254(v13);
  sub_1DD30EEDC(a5, v11, v6, v6, *(v5 + 8), *(v5 + 8));
}

uint64_t sub_1DD30F1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_49_6();
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  v9 = OUTLINED_FUNCTION_51_7(v8);
  *(v9 + 16) = xmmword_1DD339380;
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(v9 + 64) = &protocol witness table for Expression<A>;
  v7(v18, v17);
  OUTLINED_FUNCTION_3_10();
  a5(v10, v11, v12, v13, v14, v15);
}

uint64_t SchemaType.select<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1DD30F2D4();
}

{
  return sub_1DD30F3B8();
}

uint64_t SchemaType.select<A>(distinct:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1DD30F2D4();
}

{
  return sub_1DD30F3B8();
}

uint64_t sub_1DD30F2D4()
{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_49_6();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  v7 = OUTLINED_FUNCTION_51_7(v6);
  *(v7 + 16) = xmmword_1DD339380;
  v10 = type metadata accessor for Expression(0, v1, v8, v9);
  v11 = OUTLINED_FUNCTION_64_5(v10, &protocol witness table for Expression<A>);
  v14 = type metadata accessor for ScalarQuery(v11, v1, v12, v13);
  v15 = *(v0 + 8);

  sub_1DD30EEDC(v3, v7, v5, v14, v15, &protocol witness table for ScalarQuery<A>);
  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DD30F3B8()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  v9 = OUTLINED_FUNCTION_51_7(v8);
  *(v9 + 16) = xmmword_1DD339380;
  sub_1DD336AD0();
  v10 = OUTLINED_FUNCTION_37_5();
  v14 = type metadata accessor for Expression(v10, v11, v12, v13);
  v15 = OUTLINED_FUNCTION_64_5(v14, &protocol witness table for Expression<A>);
  v18 = type metadata accessor for ScalarQuery(v15, v5, v16, v17);
  v19 = *(v3 + 8);

  sub_1DD30EEDC(v1, v9, v7, v18, v19, &protocol witness table for ScalarQuery<A>);
  OUTLINED_FUNCTION_24_1();
}

uint64_t SchemaType.count.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_61_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  v16 = &protocol witness table for Expression<A>;
  v12 = 42;
  v13 = 0xE100000000000000;
  v14 = MEMORY[0x1E69E7CC0];
  v15 = v3;
  MEMORY[0x1E12AC540](40, 0xE100000000000000);
  v4 = __swift_project_boxed_opaque_existential_1(&v12, v15);

  v5 = OUTLINED_FUNCTION_31_2();
  MEMORY[0x1E12AC540](v5);

  MEMORY[0x1E12AC540](41, 0xE100000000000000);
  v6 = v4[2];

  __swift_destroy_boxed_opaque_existential_1(&v12);
  v12 = 0x746E756F63;
  v13 = 0xE500000000000000;
  v14 = v6;
  OUTLINED_FUNCTION_30_5();
  SchemaType.select<A>(_:)(v7, v8, v9, a2, v10);
}

uint64_t QueryType.union(_:)()
{
  OUTLINED_FUNCTION_28_9();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_22();
  (*(v7 + 16))(v6, v0, v2);
  v8 = (*(v1 + 32))(v14, v2, v1);
  v10 = v9;
  OUTLINED_FUNCTION_57_3();
  sub_1DD31337C();
  v11 = *(*(v10 + 160) + 16);
  sub_1DD313140(v11);
  v12 = *(v10 + 160);
  *(v12 + 16) = v11 + 1;
  sub_1DD2855A0(v4, v12 + 40 * v11 + 32);
  return v8(v14, 0);
}

uint64_t QueryType.join(_:on:)()
{
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_61_5();

  v0 = OUTLINED_FUNCTION_39_8();
  QueryType.join(_:on:)(v0, v1, v2, v3, v4);

  OUTLINED_FUNCTION_79_4();
}

uint64_t QueryType.join(_:on:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v9 = 1;
  v7 = v5;
  v8 = *(a2 + 1);
  return QueryType.join(_:_:on:)(&v9, a1, &v7, a3, a4, a5);
}

uint64_t QueryType.join(_:_:on:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = *a1;
  v12 = *a3;
  v11 = a3[1];
  v13 = a3[2];
  OUTLINED_FUNCTION_22();
  (*(v14 + 16))(a6, v6, v15);
  sub_1DD2855A0(a2, v47);
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  v18 = OUTLINED_FUNCTION_31_2();
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v17 + 16))(v48, v16, v17);
  v20 = v48[9];
  v21 = v48[10];
  v22 = v48[11];
  OUTLINED_FUNCTION_32_8();
  sub_1DD28C838(v23, v24, v25);
  sub_1DD288AB8(v48);
  if (v21 && (*&__src[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7068, &qword_1DD33BAB0), *&__src[32] = &protocol witness table for Expression<A>, v45 = *&__src[24], v46 = &protocol witness table for Expression<A>, *&v43 = v12, *(&v43 + 1) = v11, v44 = v13, v41[3] = *&__src[24], v41[4] = &protocol witness table for Expression<A>, v41[0] = v20, v41[1] = v21, v41[2] = v22, OUTLINED_FUNCTION_32_8(), sub_1DD28C838(v26, v27, v28), , , sub_1DD28512C(&v43, v41, 1, 4476481, 0xE300000000000000, __src), __swift_destroy_boxed_opaque_existential_1(v41), __swift_destroy_boxed_opaque_existential_1(&v43), OUTLINED_FUNCTION_32_8(), sub_1DD28D008(v29, v30, v31), *&__src[24]))
  {
    sub_1DD289CE4(__src, &v43);
  }

  else
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7068, &qword_1DD33BAB0);
    v46 = &protocol witness table for Expression<A>;
    *&v43 = v12;
    *(&v43 + 1) = v11;
    v44 = v13;
  }

  __src[0] = v40;
  sub_1DD289CE4(v47, &__src[8]);
  sub_1DD289CE4(&v43, &__src[48]);
  v32 = (*(a5 + 32))(v41, a4, a5);
  v34 = v33;
  sub_1DD3133E0(sub_1DD3131F8);
  v35 = *(*(v34 + 64) + 16);
  v36 = OUTLINED_FUNCTION_41_0();
  sub_1DD31318C(v36, v37);
  v38 = *(v34 + 64);
  *(v38 + 16) = v35 + 1;
  memcpy((v38 + 88 * v35 + 32), __src, 0x58uLL);
  return v32(v41, 0);
}

uint64_t QueryType.join(_:_:on:)()
{
  OUTLINED_FUNCTION_82_2();
  v1 = v0;
  v3 = v2;

  OUTLINED_FUNCTION_30_5();
  QueryType.join(_:_:on:)(v4, v5, v6, v3, v1, v7);

  OUTLINED_FUNCTION_79_4();
}

uint64_t sub_1DD30FB7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  (*(*(a3 - 8) + 16))(a5, v5);
  v12 = *(a4 + 32);

  sub_1DD28C838(v9, v10, v11);
  v13 = v12(v20, a3, a4);
  v15 = v14[12];
  v16 = v14[13];
  v17 = v14[14];
  v18 = v14[15];
  v14[12] = a1;
  v14[13] = v9;
  v14[14] = v10;
  v14[15] = v11;
  sub_1DD314830(v15, v16, v17, v18);
  return v13(v20, 0);
}

uint64_t QueryType.group(_:having:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DD30FCAC(a1, a2, a3, a4, QueryType.group(_:having:));
}

{
  return sub_1DD30FCAC(a1, a2, a3, a4, QueryType.group(_:having:));
}

uint64_t sub_1DD30FCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__n128 *, uint64_t *, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_35_8();
  v11 = *v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  v13 = OUTLINED_FUNCTION_51_7(v12);
  OUTLINED_FUNCTION_69_6(v13, xmmword_1DD339380);
  sub_1DD2855A0(v7, v14);
  v16 = v11;
  v17 = *(v6 + 8);
  a5(v13, &v16, v5, a4);
}

void _s8RRSQLite9QueryTypePAAE5group_6havingxSayAA11Expressible_pG_AA10ExpressionVySbGtF_0()
{
  OUTLINED_FUNCTION_61_5();
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];

  v1 = OUTLINED_FUNCTION_39_8();
  sub_1DD30FB7C(v1, v2, v3, v4, v5);

  sub_1DD28D008(v6, v7, v8);
}

void QueryType.order(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_82_2();
  a21 = v25;
  a22 = v26;
  v28 = v27;
  v30 = v29;
  OUTLINED_FUNCTION_61_5();
  OUTLINED_FUNCTION_22();
  (*(v31 + 16))(v24, v22, v30);
  v32 = *(v28 + 32);

  v33 = v32(&a9, v30, v28);
  *(v34 + 128) = v23;

  v33(&a9, 0);
  OUTLINED_FUNCTION_79_4();
}

uint64_t sub_1DD30FEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA60;
  v6 = *(a2 + 16);
  v6(v42, a1, a2);
  sub_1DD288AB8(v42);
  if (LOBYTE(v42[0]))
  {
    v7 = 0x44205443454C4553;
  }

  else
  {
    v7 = 0x5443454C4553;
  }

  if (LOBYTE(v42[0]))
  {
    v8 = 0xEF54434E49545349;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  v10 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v9;
  v6(&v25, a1, a2);
  v11 = v26;

  sub_1DD288AB8(&v25);
  sub_1DD284AFC(v11, 8236, 0xE200000000000000, v12, v13, v14, v15, v16, a3, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);

  *(inited + 136) = v9;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 1297044038;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = v10;
  sub_1DD28C4F0();
  sub_1DD284AFC(inited, 32, 0xE100000000000000, v17, v18, v19, v20, v21, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  swift_setDeallocating();
  return sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
}

uint64_t sub_1DD31009C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v6(v30);
  v7 = v30[8];

  sub_1DD288AB8(v30);
  v8 = *(v7 + 16);

  if (v8)
  {
    (v6)(v29, a1, a2);
    v10 = v29[8];

    sub_1DD288AB8(v29);
    v11 = *(v10 + 16);
    if (v11)
    {
      v21 = a3;
      v28 = MEMORY[0x1E69E7CC0];
      sub_1DD296F20();
      v12 = 0;
      v13 = v28;
      v14 = v10 + 32;
      while (v12 < *(v10 + 16))
      {
        sub_1DD2892A8(v14, v23, &qword_1ECCD7138, "\bK");
        sub_1DD3102B4(v23);
        sub_1DD3147D8(v23, &qword_1ECCD7138);
        v28 = v13;
        v15 = *(v13 + 16);
        if (v15 >= *(v13 + 24) >> 1)
        {
          sub_1DD296F20();
          v13 = v28;
        }

        ++v12;
        *(v13 + 16) = v15 + 1;
        sub_1DD289CE4(&v24, v13 + 40 * v15 + 32);
        v14 += 88;
        if (v11 == v12)
        {

          goto LABEL_11;
        }
      }

      __break(1u);
      sub_1DD3147D8(v23, &qword_1ECCD7138);

      __break(1u);
    }

    else
    {

      v13 = MEMORY[0x1E69E7CC0];
LABEL_11:
      sub_1DD284AFC(v13, 32, 0xE100000000000000, v16, v17, v18, v19, v20, v21, v22, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9], v23[10], v24, *(&v24 + 1), v25, v26, v27);
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DD3102B4(uint64_t a1)
{
  sub_1DD2892A8(a1, &v35, &qword_1ECCD7138, "\bK");
  v1 = v35;
  sub_1DD289CE4(&v36, v39);
  sub_1DD289CE4(&v37, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA60;
  v35 = 0;
  *&v36 = 0xE000000000000000;
  v3 = 0xE500000000000000;
  v4 = 0x52454E4E49;
  if (v1 != 1)
  {
    v4 = 0x54554F205446454CLL;
    v3 = 0xEA00000000005245;
  }

  if (v1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x53534F5243;
  }

  if (v1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1E12AC540](v5, v6);

  MEMORY[0x1E12AC540](0x4E494F4A20, 0xE500000000000000);
  v7 = v35;
  v8 = v36;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  v10 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v9;
  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  sub_1DD28C4F0();
  *(inited + 136) = v9;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 20047;
  *(inited + 120) = 0xE200000000000000;
  *(inited + 128) = v10;
  sub_1DD2855A0(v38, inited + 152);
  sub_1DD284AFC(inited, 32, 0xE100000000000000, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  swift_setDeallocating();
  sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t JoinType.rawValue.getter()
{
  v1 = 0x52454E4E49;
  if (*v0 != 1)
  {
    v1 = 0x54554F205446454CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53534F5243;
  }
}

uint64_t sub_1DD31050C(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1DD28E6F4(0, v5, 0);
  v6 = v19;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v17[0] = *(i - 1);
    v17[1] = v9;

    a1(v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v18[0];
    v10 = v18[1];
    v19 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1DD28E6F4((v12 > 1), v13 + 1, 1);
      v6 = v19;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD310634@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v103);
  v4 = v104;
  v3 = v105;
  v6 = v106;
  v5 = v107;
  sub_1DD314780(v104, v105, v106, v107);
  result = sub_1DD288AB8(v103);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD3391F0;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
    *(inited + 64) = &protocol witness table for Expression<A>;
    *(inited + 32) = 0x59422050554F5247;
    *(inited + 40) = 0xE800000000000000;
    v10 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 56) = v9;
    sub_1DD284AFC(v4, 8236, 0xE200000000000000, v11, v12, v13, v14, v15, 2, 4, v38, v42, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98);
    sub_1DD284AFC(inited, 32, 0xE100000000000000, v16, v17, v18, v19, v20, v33, v36, v39, v43, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99);
    swift_setDeallocating();
    sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);

    if (v6)
    {
      v21 = swift_initStackObject();
      *(v21 + 16) = v34;
      sub_1DD2855A0(v102, v21 + 32);
      v22 = swift_initStackObject();
      *(v22 + 16) = v34;
      *(v22 + 56) = v9;
      *(v22 + 64) = &protocol witness table for Expression<A>;
      *(v22 + 32) = 0x474E49564148;
      *(v22 + 40) = 0xE600000000000000;
      *(v22 + 48) = v10;
      *(v22 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7068, &qword_1DD33BAB0);
      *(v22 + 104) = &protocol witness table for Expression<A>;
      *(v22 + 72) = v3;
      *(v22 + 80) = v6;
      *(v22 + 88) = v5;
      sub_1DD284AFC(v22, 32, 0xE100000000000000, v23, v24, v25, v26, v27, v34, *(&v34 + 1), v40, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100);
      swift_setDeallocating();
      sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
      sub_1DD284AFC(v21, 32, 0xE100000000000000, v28, v29, v30, v31, v32, v35, v37, v41, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101);
      swift_setDeallocating();
      sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
      return __swift_destroy_boxed_opaque_existential_1(v102);
    }

    else
    {
      return sub_1DD289CE4(v102, a2);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DD31088C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v6(v53);
  v7 = v53[20];

  sub_1DD288AB8(v53);
  v8 = *(v7 + 16);

  if (v8)
  {
    (v6)(v52, a1, a2);
    v10 = v52[20];

    sub_1DD288AB8(v52);
    v11 = *(v10 + 16);
    if (v11)
    {
      v31 = a3;
      v51 = MEMORY[0x1E69E7CC0];
      sub_1DD296F20();
      v12 = v51;
      v30 = v10;
      v13 = v10 + 32;
      v32 = xmmword_1DD3391F0;
      do
      {
        sub_1DD2855A0(v13, v47);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
        inited = swift_initStackObject();
        *(inited + 16) = v32;
        *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
        *(inited + 64) = &protocol witness table for Expression<A>;
        *(inited + 32) = 0x4E4F494E55;
        *(inited + 40) = 0xE500000000000000;
        *(inited + 48) = MEMORY[0x1E69E7CC0];
        v15 = v48;
        v16 = v49;
        v17 = __swift_project_boxed_opaque_existential_1(v47, v48);
        *(inited + 96) = v15;
        *(inited + 104) = *(v16 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
        (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v17, v15);
        sub_1DD284AFC(inited, 32, 0xE100000000000000, v19, v20, v21, v22, v23, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
        swift_setDeallocating();
        sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
        __swift_destroy_boxed_opaque_existential_1(v47);
        v51 = v12;
        v24 = *(v12 + 16);
        if (v24 >= *(v12 + 24) >> 1)
        {
          sub_1DD296F20();
          v12 = v51;
        }

        *(v12 + 16) = v24 + 1;
        sub_1DD289CE4(&v50, v12 + 40 * v24 + 32);
        v13 += 40;
        --v11;
      }

      while (v11);
    }

    else
    {

      v12 = MEMORY[0x1E69E7CC0];
    }

    sub_1DD284AFC(v12, 32, 0xE100000000000000, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t QueryType.alias(_:)()
{
  OUTLINED_FUNCTION_49_6();
  OUTLINED_FUNCTION_71_0();
  v5 = v4;
  OUTLINED_FUNCTION_22();
  (*(v6 + 16))(v5, v1);
  v7 = *(v3 + 16);
  v8 = OUTLINED_FUNCTION_41_0();
  v7(v8);
  v10 = v21;
  v9 = v22;

  sub_1DD288AB8(v20);
  v11 = OUTLINED_FUNCTION_41_0();
  v7(v11);
  v13 = v24;
  v12 = v25;

  sub_1DD288AB8(v23);
  OUTLINED_FUNCTION_3_10();
  v15 = v14();
  v17 = v16;
  v16[2] = v10;
  v16[3] = v9;

  v17[4] = v2;
  v17[5] = v0;

  v17[6] = v13;
  v17[7] = v12;

  return v15(v19, 0);
}

RRSQLite::Insert __swiftcall QueryType.insert(or:_:)(RRSQLite::OnConflict or, Swift::OpaquePointer _)
{
  v8 = *or;
  v5 = sub_1DD28BCA0(&v8, _._rawValue, v2, v3, v4);
  result.bindings._rawValue = v7;
  result.template._object = v6;
  result.template._countAndFlagsBits = v5;
  return result;
}

uint64_t OnConflict.rawValue.getter()
{
  result = 0x4543414C504552;
  switch(*v0)
  {
    case 1:
      result = 0x4B4341424C4C4F52;
      break;
    case 2:
      result = 0x54524F4241;
      break;
    case 3:
      result = 1279869254;
      break;
    case 4:
      result = 0x45524F4E4749;
      break;
    default:
      return result;
  }

  return result;
}

RRSQLite::Insert __swiftcall QueryType.insert()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA70;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  OUTLINED_FUNCTION_23_8();
  *(inited + 32) = v2;
  *(inited + 40) = v3;
  v4 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v5;
  sub_1DD28C4F0();
  *(inited + 136) = v1;
  *(inited + 144) = &protocol witness table for Expression<A>;
  strcpy((inited + 112), "DEFAULT VALUES");
  *(inited + 127) = -18;
  *(inited + 128) = v4;
  OUTLINED_FUNCTION_24_6(inited, v6, v7, v8, v9, v10, v11, v12, v26, v28, v30, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
  swift_setDeallocating();
  sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  OUTLINED_FUNCTION_5_8(v47);
  v13 = OUTLINED_FUNCTION_2_5();
  v15 = v14(v13);
  v23 = OUTLINED_FUNCTION_56_7(v15, v16, v17, v18, v19, v20, v21, v22, v27, v29, v31);
  result.bindings._rawValue = v25;
  result.template._object = v24;
  result.template._countAndFlagsBits = v23;
  return result;
}

uint64_t QueryType.insert(_:)()
{
  OUTLINED_FUNCTION_35_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA70;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  OUTLINED_FUNCTION_23_8();
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v5;
  OUTLINED_FUNCTION_3_10();
  sub_1DD28C4F0();
  v6 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v6);
  OUTLINED_FUNCTION_36_8();
  *(inited + 136) = v2;
  *(inited + 144) = &protocol witness table for Expression<A>;
  v8 = v7(v6);
  OUTLINED_FUNCTION_19_5(v8, v9, v10, v11, v12, v13, v14, v15, v27, v29, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
  swift_setDeallocating();
  sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  OUTLINED_FUNCTION_5_8(v48);
  v16 = OUTLINED_FUNCTION_2_5();
  v18 = v17(v16);
  return OUTLINED_FUNCTION_56_7(v18, v19, v20, v21, v22, v23, v24, v25, v28, v30, v32);
}

RRSQLite::Delete __swiftcall QueryType.delete()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA90;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x46204554454C4544;
  *(inited + 40) = 0xEB000000004D4F52;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v3;
  sub_1DD28C4F0();
  OUTLINED_FUNCTION_47();
  sub_1DD28C6EC(v4, v5);
  v6 = OUTLINED_FUNCTION_47();
  sub_1DD29709C(v6, v7, v8);
  OUTLINED_FUNCTION_47();
  v11 = sub_1DD297224(v9, v10);
  for (i = 32; i != 232; i += 40)
  {
    v20 = OUTLINED_FUNCTION_26_7(v11, v12, v13, v14, v15, v16, v17, v18, v52, *(&v52 + 1), v53, v54, v55, v56, v57, v58, *(&v58 + 1), v59, v60);
    OUTLINED_FUNCTION_3_13(v20, v21, v22, v23, v24, v25, v26, v27, v52, *(&v52 + 1), v53, v54, v55, v56, v57, v58, *(&v58 + 1), v59, v60, v61, v62, v63);
    if (v28)
    {
      sub_1DD289CE4(&v52, &v57);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_1_11();
        sub_1DD28C3A8();
      }

      OUTLINED_FUNCTION_38_8();
      if (v36)
      {
        OUTLINED_FUNCTION_45(v35);
        OUTLINED_FUNCTION_18_2();
        sub_1DD28C3A8();
      }

      v11 = OUTLINED_FUNCTION_25_4(v29, v30, v31, v32, v33, v34);
    }

    else
    {
      OUTLINED_FUNCTION_83_1();
      v11 = sub_1DD3147D8(v37, v38);
    }
  }

  swift_setDeallocating();
  v39 = sub_1DD284AB0(&qword_1ECCD7070, &qword_1DD33BAB8);
  OUTLINED_FUNCTION_22_9(v39, v40, v41, v42, v43, v44, v45, v46, v52, *(&v52 + 1), v53, v54, v55, v56, v57, v58, *(&v58 + 1), v59, v60, v61, v62, v63, *(&v63 + 1), v64, *v65, *&v65[8]);

  OUTLINED_FUNCTION_5_8(&v61);
  v47 = OUTLINED_FUNCTION_2_5();
  v48(v47);
  *v1 = v57;
  *(v1 + 8) = v58;
  v49 = __swift_destroy_boxed_opaque_existential_1(&v61);
  result.bindings._rawValue = v51;
  result.template._object = v50;
  result.template._countAndFlagsBits = v49;
  return result;
}

uint64_t QueryType.exists.getter()
{
  OUTLINED_FUNCTION_14_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD3391F0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  strcpy((inited + 32), "SELECT EXISTS");
  *(inited + 46) = -4864;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v4;
  v5 = *(*(v1 + 8) + 8);
  v36[3] = v4;
  v36[4] = &protocol witness table for Expression<A>;
  v5(v36, v2);
  *(inited + 96) = v4;
  *(inited + 104) = &protocol witness table for Expression<A>;
  sub_1DD285320(v36, 0, 0xE000000000000000, (inited + 72));
  v6 = __swift_destroy_boxed_opaque_existential_1(v36);
  OUTLINED_FUNCTION_19_5(v6, v7, v8, v9, v10, v11, v12, v13, v17, v19, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36[0]);
  swift_setDeallocating();
  sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  OUTLINED_FUNCTION_5_8(v36);
  v14 = OUTLINED_FUNCTION_2_5();
  v15(v14);
  *v0 = v18;
  *(v0 + 8) = v20;
  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t QueryType.namespace<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = type metadata accessor for Expression(0, a3, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_70_5(inited, xmmword_1DD3391F0);
  OUTLINED_FUNCTION_3_10();
  sub_1DD28C4F0();
  inited[6].n128_u64[0] = v7;
  inited[6].n128_u64[1] = &protocol witness table for Expression<A>;
  inited[4].n128_u64[1] = v5;
  inited[5].n128_u64[0] = v4;
  inited[5].n128_u64[1] = v6;

  sub_1DD284AFC(inited, 46, 0xE100000000000000, v9, v10, v11, v12, v13, v20, v21, v22, *(&v22 + 1), v23, v24, *(&v24 + 1), v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10]);
  swift_setDeallocating();
  sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v14 = OUTLINED_FUNCTION_34_7();
  v15(v14);
  v21 = v23;
  v22 = v24;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  WitnessTable = swift_getWitnessTable();
  v18 = sub_1DD31471C(&qword_1ECCD7080, &qword_1ECCD7060, &qword_1DD33BAA8, &protocol conformance descriptor for Expression<A>);
  ExpressionType.init<A>(_:)(&v21, v7, v16, WitnessTable, v18);
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t QueryType.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v6 = sub_1DD336AD0();
  return QueryType.namespace<A>(_:)(&v8, a2, v6, a4);
}

{
  OUTLINED_FUNCTION_59_4();
  v5(v12, v11, v10);
  v11[0] = v12[0];
  v11[1] = v12[1];
  v11[2] = v12[2];
  OUTLINED_FUNCTION_30_5();
  QueryType.namespace<A>(_:)(v6, v7, v8, a4);
}

void sub_1DD311684(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a1)
  {

    sub_1DD28C4F0();
  }

  else
  {
    v7 = *(a3 + 16);
    v7(v37, a2, a3);
    v8 = v37[4];
    v9 = v37[5];

    sub_1DD288AB8(v37);
    if (!v9)
    {
      v7(v20, a2, a3);
      v8 = v21;
      v9 = v22;

      sub_1DD288AB8(v20);
    }

    a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
    a4[4] = &protocol witness table for Expression<A>;
    v10 = OUTLINED_FUNCTION_50_5();
    sub_1DD289A78(v10, v11, v8, v9, v12, v13, v14, v15, v20[0], v20[1], v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
    v17 = v16;
    v19 = v18;

    *a4 = v17;
    a4[1] = v19;
    a4[2] = MEMORY[0x1E69E7CC0];
  }
}

void QueryType.expression.getter()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_70_5(inited, xmmword_1DD33A620);
  v1 = OUTLINED_FUNCTION_41_0();
  sub_1DD30FEDC(v1, v2, v3);
  v4 = OUTLINED_FUNCTION_41_0();
  sub_1DD31009C(v4, v5, v6);
  OUTLINED_FUNCTION_41_0();
  sub_1DD28C6EC(v7, v8);
  OUTLINED_FUNCTION_41_0();
  sub_1DD310634(v9, v10);
  v11 = OUTLINED_FUNCTION_41_0();
  sub_1DD31088C(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_41_0();
  sub_1DD29709C(v14, v15, v16);
  OUTLINED_FUNCTION_41_0();
  v19 = sub_1DD297224(v17, v18);
  for (i = 32; i != 312; i += 40)
  {
    v28 = OUTLINED_FUNCTION_26_7(v19, v20, v21, v22, v23, v24, v25, v26, v57, *(&v57 + 1), v58, v59, v60, v61, v62[0], v62[1], v62[2], v62[3], v62[4]);
    OUTLINED_FUNCTION_3_13(v28, v29, v30, v31, v32, v33, v34, v35, v57, *(&v57 + 1), v58, v59, v60, v61, v62[0], v62[1], v62[2], v62[3], v62[4], v63, v64, v65);
    if (v36)
    {
      sub_1DD289CE4(&v57, v62);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_1_11();
        sub_1DD28C3A8();
      }

      OUTLINED_FUNCTION_38_8();
      if (v44)
      {
        OUTLINED_FUNCTION_45(v43);
        OUTLINED_FUNCTION_18_2();
        sub_1DD28C3A8();
      }

      v19 = OUTLINED_FUNCTION_25_4(v37, v38, v39, v40, v41, v42);
    }

    else
    {
      OUTLINED_FUNCTION_83_1();
      v19 = sub_1DD3147D8(v45, v46);
    }
  }

  swift_setDeallocating();
  v47 = sub_1DD284AB0(&qword_1ECCD7070, &qword_1DD33BAB8);
  OUTLINED_FUNCTION_22_9(v47, v48, v49, v50, v51, v52, v53, v54, v57, *(&v57 + 1), v58, v59, v60, v61, v62[0], v62[1], v62[2], v62[3], v62[4], v63, v64, v65, *(&v65 + 1), v66, *v67, *&v67[8]);

  OUTLINED_FUNCTION_5_8(&v63);
  v55 = OUTLINED_FUNCTION_2_5();
  v56(v55);
  __swift_destroy_boxed_opaque_existential_1(&v63);
  OUTLINED_FUNCTION_24_1();
}

void *Table.clauses.setter()
{
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_13_9();
  memcpy(v0, v1, v2);
  sub_1DD31343C(v4);
  return OUTLINED_FUNCTION_54_6();
}

void *View.clauses.setter()
{
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_13_9();
  memcpy(v0, v1, v2);
  sub_1DD31346C(v4);
  return OUTLINED_FUNCTION_54_6();
}

void *VirtualTable.clauses.setter()
{
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_13_9();
  memcpy(v0, v1, v2);
  sub_1DD31349C(v4);
  return OUTLINED_FUNCTION_54_6();
}

uint64_t ScalarQuery.clauses.getter()
{
  OUTLINED_FUNCTION_13_9();
  memcpy(v0, v1, v2);
  OUTLINED_FUNCTION_13_9();
  memcpy(v3, v4, v5);
  return sub_1DD289514(v8, v7);
}

void *ScalarQuery.clauses.setter()
{
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_13_9();
  memcpy(v3, v4, v5);
  OUTLINED_FUNCTION_22();
  (*(v6 + 8))(v8, v0);
  return memcpy(v1, v2, 0xA8uLL);
}

double ScalarQuery.init(_:database:)()
{
  OUTLINED_FUNCTION_14_11();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  *(OUTLINED_FUNCTION_51_7(v0) + 16) = xmmword_1DD339380;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  OUTLINED_FUNCTION_58_6(&protocol witness table for Expression<A>);
  return OUTLINED_FUNCTION_6_11(v1, MEMORY[0x1E69E7CC0]);
}

uint64_t (*sub_1DD311CE0(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = ScalarQuery.clauses.modify();
  return sub_1DD311D3C;
}

void sub_1DD311D3C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t Select.template.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Select.template.setter()
{
  OUTLINED_FUNCTION_71_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Select.bindings.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1DD311E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
}

uint64_t Delete.template.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Delete.template.setter()
{
  OUTLINED_FUNCTION_71_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Delete.bindings.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

RRSQLite::Row_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RowIterator.failableNext()()
{
  v2 = v0;
  v3 = *(v1 + 8);
  v7 = Statement.failableNext()();
  if (!v6)
  {
    if (v7.value._rawValue)
    {
      *v2 = v3;
      v2[1] = v7.value._rawValue;
    }

    else
    {
      *v2 = 0;
      v2[1] = 0;
    }
  }

  result.value.columnNames._rawValue = v7.value._rawValue;
  LOBYTE(result.value.values._rawValue) = v7.is_nil;
  *(&result.value.values._rawValue + 1) = *(&v4 + 1);
  *(&result.value.values._rawValue + 5) = *(&v4 + 5);
  HIBYTE(result.value.values._rawValue) = HIBYTE(v4);
  result.is_nil = v5;
  return result;
}

void RowIterator.map<A>(_:)()
{
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v2);
  v3 = *(v0 + 8);
  sub_1DD3364F0();
  while (1)
  {
    v4 = Statement.failableNext()();
    if (v5)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_6;
    }

    v6[0] = v3;
    v6[1] = v4;

    v1(v6);

    sub_1DD336880();
    sub_1DD336870();
  }

LABEL_6:
  OUTLINED_FUNCTION_53();
}

uint64_t Connection.prepare(_:)(void *a1)
{
  v3 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  OUTLINED_FUNCTION_36_8();
  v4(v10, v3);
  v5 = v10[2];
  Connection.prepare(_:_:)(v10[0], v10[1], MEMORY[0x1E69E7CC0]);
  if (v1)
  {
  }

  else
  {
    v7 = Statement.bind(_:)(v5);

    v8 = sub_1DD28D810(a1);
    OUTLINED_FUNCTION_72_4();
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7088, &qword_1DD33BAC8);
    OUTLINED_FUNCTION_72_4();
    result = swift_allocObject();
    *(result + 16) = sub_1DD3134CC;
    *(result + 24) = v9;
  }

  return result;
}

uint64_t sub_1DD3122DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7148, ">K");
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DD314700;
  *(v7 + 24) = v6;
  *a3 = v7;
  sub_1DD335860();
}

void sub_1DD31237C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = Statement.failableNext()();
  if (v5)
  {

LABEL_3:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  if (!v4)
  {
    goto LABEL_3;
  }

  *a2 = a1;
  a2[1] = v4;
}

uint64_t sub_1DD3123FC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DD28C4F0();
  v6 = v14;
  v7 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v7 + 8))(v12, v6, v7);
  v8 = v12[0];
  v9 = v12[1];

  v16 = v8;
  v17 = v9;
  __swift_destroy_boxed_opaque_existential_1(v13);
  MEMORY[0x1E12AC540](46, 0xE100000000000000);
  result = MEMORY[0x1E12AC540](v4, v5);
  v11 = v17;
  *a3 = v16;
  a3[1] = v11;
  return result;
}

uint64_t Connection.scalar<A>(_:)()
{
  OUTLINED_FUNCTION_65_4();
  memcpy(__dst, v3, sizeof(__dst));
  type metadata accessor for ScalarQuery(0, v2, v4, v5);
  QueryType.expression.getter();
  OUTLINED_FUNCTION_80_3(v9);

  if (!v1)
  {
    OUTLINED_FUNCTION_30_5();
    sub_1DD328F3C(v7, v8, v0);
    return sub_1DD3147D8(__dst, &qword_1ECCD7090);
  }

  return result;
}

{
  OUTLINED_FUNCTION_65_4();
  v10 = *v2;
  v11 = *(v2 + 1);
  v6 = type metadata accessor for Select(0, v3, v4, v5);
  ExpressionType.expression.getter(v6, &protocol witness table for Select<A>, &v12);
  OUTLINED_FUNCTION_80_3(v12);

  if (!v1)
  {
    OUTLINED_FUNCTION_30_5();
    sub_1DD328F3C(v8, v9, v0);
    return sub_1DD3147D8(&v10, &qword_1ECCD7090);
  }

  return result;
}

void Connection.scalar<A>(_:)()
{
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_63_5();
  v37 = v3;
  v36 = v4;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_37_5();
  v5 = sub_1DD336AD0();
  OUTLINED_FUNCTION_8_9();
  v35 = v6;
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v34 - v8;
  OUTLINED_FUNCTION_8_9();
  v34[1] = v10;
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v34 - v12;
  OUTLINED_FUNCTION_13_9();
  memcpy(v14, v15, v16);
  v17 = sub_1DD336AD0();
  type metadata accessor for ScalarQuery(0, v17, v18, v19);
  QueryType.expression.getter();
  OUTLINED_FUNCTION_77_3(v38);

  if (!v1)
  {
    v20 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7090, &qword_1DD33CA20);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_46_7();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
      v25 = OUTLINED_FUNCTION_33_7();
      v26(v25);
      v27 = OUTLINED_FUNCTION_60_6();
      v28(v27);
      (*(v0 + 8))(v13, v2);
    }

    else
    {
      OUTLINED_FUNCTION_46_7();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
      (*(v20 + 8))(v9, v5);
    }

    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_74_2(AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_53();
}

{
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_63_5();
  v35 = v4;
  v36 = v5;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_37_5();
  v6 = sub_1DD336AD0();
  OUTLINED_FUNCTION_8_9();
  v34 = v7;
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  OUTLINED_FUNCTION_8_9();
  v33 = v11;
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v37 = *v1;
  v38 = *(v1 + 1);
  v15 = sub_1DD336AD0();
  v18 = type metadata accessor for Select(0, v15, v16, v17);
  ExpressionType.expression.getter(v18, &protocol witness table for Select<A>, &v39);
  OUTLINED_FUNCTION_77_3(v39);

  if (!v2)
  {
    v19 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7090, &qword_1DD33CA20);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_46_7();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
      v24 = OUTLINED_FUNCTION_33_7();
      v25(v24);
      v26 = OUTLINED_FUNCTION_60_6();
      v27(v26);
      (*(v0 + 8))(v14, v3);
    }

    else
    {
      OUTLINED_FUNCTION_46_7();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
      (*(v19 + 8))(v10, v6);
    }

    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_74_2(AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_53();
}

uint64_t sub_1DD312BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  OUTLINED_FUNCTION_48_4(a1, a2);
  result = Connection.run(_:_:)();
  if (!v3)
  {

    v6 = Connection.handle.getter();
    result = sqlite3_last_insert_rowid(v6);
    *a3 = result;
  }

  return result;
}

uint64_t sub_1DD312C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  OUTLINED_FUNCTION_48_4(a1, a2);
  result = Connection.run(_:_:)();
  if (!v3)
  {

    v6 = Connection.handle.getter();
    result = sqlite3_changes(v6);
    *a3 = result;
  }

  return result;
}

uint64_t sub_1DD312C88(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  sub_1DD31F568(*(a1 + 16), 0);
  OUTLINED_FUNCTION_40_9();
  v5 = sub_1DD328CB0(v4, (v1 + 32), v3, a1);
  sub_1DD29607C(v7);
  if (v5 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1DD312D14(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1E12AC540](a2, a3);
  v3 = sub_1DD336740();

  return v3 & 1;
}

char *sub_1DD312D8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_1DD31F568(*(a1 + 16), 0);
  OUTLINED_FUNCTION_40_9();
  v5 = sub_1DD328CB0(v4, (v1 + 32), v2, a1);

  v6 = OUTLINED_FUNCTION_57_3();
  sub_1DD29607C(v6);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:
    v1 = MEMORY[0x1E69E7CC0];
  }

  v8 = v1;
  sub_1DD313CA4(&v8);
  return v8;
}

RRSQLite::JoinType_optional __swiftcall JoinType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD336D80();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DD312EF4@<X0>(uint64_t *a1@<X8>)
{
  result = JoinType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

RRSQLite::OnConflict_optional __swiftcall OnConflict.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD336D80();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DD312FA8@<X0>(uint64_t *a1@<X8>)
{
  result = OnConflict.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1DD31304C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_87(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DD28B9A4(v4, 1, sub_1DD28583C);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_9();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v6 + 40 * v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7090, &qword_1DD33CA20);
  OUTLINED_FUNCTION_83_5(v9 + 32, v11, v12, v10);

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v13 = *(v6 + 16);
  v5 = __OFADD__(v13, v1);
  v14 = v13 + v1;
  if (!v5)
  {
    *(v6 + 16) = v14;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1DD313140(uint64_t a1)
{
  v2 = *(*v1 + 24);
  if (a1 + 1 > (v2 >> 1))
  {
    OUTLINED_FUNCTION_45(v2);
    sub_1DD28C3A8();
    *v1 = v3;
  }
}

uint64_t sub_1DD31318C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void *sub_1DD3131F8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7178, &qword_1DD33C128);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[11 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7138, "\bK");
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1DD31337C()
{
  OUTLINED_FUNCTION_28_9();
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    OUTLINED_FUNCTION_46_7();
    OUTLINED_FUNCTION_75_6();
    *v0 = v3;
  }
}

uint64_t sub_1DD3133E0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

unint64_t sub_1DD3134EC()
{
  result = qword_1ECCD7098;
  if (!qword_1ECCD7098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD7098);
  }

  return result;
}

unint64_t sub_1DD313540(uint64_t a1)
{
  result = sub_1DD313568();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DD313568()
{
  result = qword_1ECCD70A0;
  if (!qword_1ECCD70A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD70A0);
  }

  return result;
}

unint64_t sub_1DD3135C0()
{
  result = qword_1ECCD70A8;
  if (!qword_1ECCD70A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD70A8);
  }

  return result;
}

unint64_t sub_1DD313618()
{
  result = qword_1ECCD70B0[0];
  if (!qword_1ECCD70B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCD70B0);
  }

  return result;
}

uint64_t sub_1DD3136F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DD31372C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DD313768(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_6_10(-1);
  }

  if (a2 < 0 && *(a1 + 24))
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

  return OUTLINED_FUNCTION_6_10(v2);
}

uint64_t sub_1DD3137A4(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_52_5(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_52_5(result, a2);
    }
  }

  return result;
}

uint64_t sub_1DD3137F4(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for JoinType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for JoinType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for OnConflict(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DD313A5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_6_10(-1);
  }

  if (a2 < 0 && *(a1 + 168))
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

  return OUTLINED_FUNCTION_6_10(v2);
}

uint64_t sub_1DD313A98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

      return OUTLINED_FUNCTION_52_5(result, a2);
    }

    *(result + 168) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_52_5(result, a2);
    }
  }

  return result;
}

void *sub_1DD313B38(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD313B58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DD313B58(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7140, &qword_1DD33CC30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7090, &qword_1DD33CA20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DD313CA4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DD313C90(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1DD313D10(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1DD313D10(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DD336DA0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1DD336850();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1DD313ECC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1DD313E04(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DD313E04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1DD336E00();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DD313ECC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1DD336E00();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1DD336E00()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1DD336E00() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD2BBCF8(0, *(v8 + 16) + 1, 1, v8);
        v8 = v83;
      }

      v40 = *(v8 + 16);
      v39 = *(v8 + 24);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_1DD2BBCF8(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      *(v8 + 16) = v41;
      v42 = v8 + 32;
      v43 = (v8 + 32 + 16 * v40);
      *v43 = v9;
      v43[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = (v42 + 16 * (v41 - 1));
          v46 = (v8 + 16 * v41);
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = *(v8 + 32);
            v48 = *(v8 + 40);
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_69:
            if (v50)
            {
              goto LABEL_109;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_117;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v41 < 2)
          {
            goto LABEL_111;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_84:
          if (v65)
          {
            goto LABEL_114;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (v72 < v64)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v76 = (v42 + 16 * (v44 - 1));
          v77 = *v76;
          v78 = (v42 + 16 * v44);
          v79 = v78[1];
          sub_1DD314500((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v79 < v77)
          {
            goto LABEL_104;
          }

          v80 = v8;
          v81 = *(v8 + 16);
          if (v44 > v81)
          {
            goto LABEL_105;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_106;
          }

          v41 = v81 - 1;
          memmove((v42 + 16 * v44), v78 + 2, 16 * (v81 - 1 - v44));
          *(v80 + 16) = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          if (!v82)
          {
            goto LABEL_98;
          }
        }

        v51 = v42 + 16 * v41;
        v52 = *(v51 - 64);
        v53 = *(v51 - 56);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 48);
        v55 = *(v51 - 40);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_110;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1DD3143D4(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_1DD3143D4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DD30A7CC(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1DD314500((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1DD314500(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_1DD336E00() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 16;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v14;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_29:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (sub_1DD336E00() & 1) != 0)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_46:
  v19 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v19])
  {
    memmove(v6, v4, 16 * v19);
  }

  return 1;
}

uint64_t objectdestroyTm_0()
{

  OUTLINED_FUNCTION_72_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1DD31471C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_48_4(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DD314780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {

    sub_1DD28C838(a2, a3, a4);
  }
}

uint64_t sub_1DD3147D8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_48_4(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_22();
  (*(v5 + 8))(a1);
  return a1;
}

void sub_1DD314830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {

    sub_1DD28D008(a2, a3, a4);
  }
}

uint64_t OUTLINED_FUNCTION_74_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_77_3(uint64_t a1)
{

  return Connection.scalar(_:_:)();
}

__n128 sub_1DD314964@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  v10 = type metadata accessor for Expression(0, a3, a3, a4);
  *(a5 + 24) = v10;
  *(a5 + 32) = &protocol witness table for Expression<A>;
  *a5 = v8;
  *(a5 + 8) = *(a1 + 1);
  *(a5 + 64) = v10;
  *(a5 + 72) = &protocol witness table for Expression<A>;
  *(a5 + 40) = v9;
  result = *(a2 + 1);
  *(a5 + 48) = result;
  return result;
}

__n128 sub_1DD3149D8@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  v10 = sub_1DD336AD0();
  *(a4 + 24) = type metadata accessor for Expression(0, v10, v11, v12);
  *(a4 + 32) = &protocol witness table for Expression<A>;
  *a4 = v8;
  *(a4 + 8) = *(a1 + 1);
  *(a4 + 64) = type metadata accessor for Expression(0, a3, v13, v14);
  *(a4 + 72) = &protocol witness table for Expression<A>;
  *(a4 + 40) = v9;
  result = *(a2 + 1);
  *(a4 + 48) = result;
  return result;
}

__n128 sub_1DD314A70@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *a2;
  v9 = sub_1DD336AD0();
  v12 = type metadata accessor for Expression(0, v9, v10, v11);
  *(a4 + 24) = v12;
  *(a4 + 32) = &protocol witness table for Expression<A>;
  *a4 = v7;
  *(a4 + 8) = *(a1 + 1);
  *(a4 + 64) = v12;
  *(a4 + 72) = &protocol witness table for Expression<A>;
  *(a4 + 40) = v8;
  result = *(a2 + 1);
  *(a4 + 48) = result;
  return result;
}

uint64_t <- infix<A>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  return sub_1DD314B54(a1, a2, a3, a4, sub_1DD314964);
}

{
  return sub_1DD314B54(a1, a2, a3, a4, sub_1DD3149D8);
}

{
  return sub_1DD314B54(a1, a2, a3, a4, sub_1DD314A70);
}

uint64_t sub_1DD314B54(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, void *))
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v12[0] = *a1;
  v12[1] = v5;
  v12[2] = v6;
  v11[0] = v7;
  v11[1] = v8;
  v11[2] = v9;
  (a5)(v12, v11, a3, a4);
}

uint64_t += infix(_:_:)(uint64_t a1, uint64_t a2)
{
  return sub_1DD314D38(a1, a2, &qword_1ECCD65A8, &qword_1DD339260, sub_1DD312FF8);
}

{
  return sub_1DD314D38(a1, a2, &qword_1ECCD65C0, &qword_1DD339278, sub_1DD31300C);
}

uint64_t += infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1DD314E30(a1, a2, a3, &qword_1ECCD65A8, &qword_1DD339260, sub_1DD312FF8);
}

{
  return sub_1DD314E30(a1, a2, a3, &qword_1ECCD65C0, &qword_1DD339278, sub_1DD31300C);
}

uint64_t += infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1DD314F88(a1, a2, a3, a4, a5, + infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD315068(a1, a2, a3, a4, a5, + infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD314F88(a1, a2, a3, a4, a5, + infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD314F88(a1, a2, a3, a4, a5, + infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD315068(a1, a2, a3, a4, a5, + infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t sub_1DD314F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  OUTLINED_FUNCTION_0_14();
  v10 = OUTLINED_FUNCTION_2_6(v8, v9);
  v11(v10);
  OUTLINED_FUNCTION_4_13();
  a7();
}

uint64_t sub_1DD315068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_6_12();
  v8();
  OUTLINED_FUNCTION_4_13();
  a7();
}

uint64_t -= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1DD314F88(a1, a2, a3, a4, a5, - infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD315068(a1, a2, a3, a4, a5, - infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD314F88(a1, a2, a3, a4, a5, - infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD314F88(a1, a2, a3, a4, a5, - infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD315068(a1, a2, a3, a4, a5, - infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t sub_1DD315148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11[4] = &protocol witness table for Expression<A>;
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6660, &qword_1DD339358);
  v10[3] = MEMORY[0x1E69E6530];
  v10[4] = &protocol witness table for Int;
  v10[0] = a4;

  sub_1DD313020(v11, v10, 1, a5, 0xE100000000000000, a6);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t *= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1DD314F88(a1, a2, a3, a4, a5, * infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD315068(a1, a2, a3, a4, a5, * infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD314F88(a1, a2, a3, a4, a5, * infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD314F88(a1, a2, a3, a4, a5, * infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD315068(a1, a2, a3, a4, a5, * infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t /= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1DD314F88(a1, a2, a3, a4, a5, / infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD315068(a1, a2, a3, a4, a5, / infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD314F88(a1, a2, a3, a4, a5, / infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD314F88(a1, a2, a3, a4, a5, / infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD315068(a1, a2, a3, a4, a5, / infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t %= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DD3154D0(a1, a2, a3, a4, % infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, % infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, % infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, % infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, % infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t sub_1DD3154D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  OUTLINED_FUNCTION_0_14();
  v9 = OUTLINED_FUNCTION_2_6(v7, v8);
  v10(v9);
  OUTLINED_FUNCTION_4_13();
  a6();
}

uint64_t sub_1DD3155B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_6_12();
  v7();
  OUTLINED_FUNCTION_4_13();
  a6();
}

uint64_t <<= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DD3154D0(a1, a2, a3, a4, << infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, << infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, << infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, << infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, << infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t >>= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DD3154D0(a1, a2, a3, a4, >> infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, >> infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, >> infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, >> infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, >> infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t &= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DD3154D0(a1, a2, a3, a4, & infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, & infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, & infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, & infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, & infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t |= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DD3154D0(a1, a2, a3, a4, | infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, | infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, | infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, | infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, | infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t ^= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DD3154D0(a1, a2, a3, a4, ^ infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, ^ infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, ^ infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, ^ infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, ^ infix<A>(_:_:), <- infix<A>(_:_:));
}

double ++ postfix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1DD315A9C();
}

{
  return sub_1DD315B48();
}

double -- postfix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1DD315A9C();
}

{
  return sub_1DD315B48();
}

double sub_1DD315A9C()
{
  OUTLINED_FUNCTION_9_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6660, &qword_1DD339358);
  type metadata accessor for Expression(0, v0, v4, v5);
  sub_1DD315BF8();

  v6 = OUTLINED_FUNCTION_3_14();
  v14 = OUTLINED_FUNCTION_8_10(v6, v7, v8, v9, v10, v11, v12, v13, v3);
  OUTLINED_FUNCTION_5_9(v14, v15, v16, v17, v18, v19, v20, v21, v23, v1, v2, v26, v27, v28);
  *&result = OUTLINED_FUNCTION_7_10(v24, v24, v25).n128_u64[0];
  return result;
}

double sub_1DD315B48()
{
  OUTLINED_FUNCTION_9_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6660, &qword_1DD339358);
  v3 = sub_1DD336AD0();
  type metadata accessor for Expression(0, v3, v4, v5);
  sub_1DD315BF8();

  v6 = OUTLINED_FUNCTION_3_14();
  v14 = OUTLINED_FUNCTION_8_10(v6, v7, v8, v9, v10, v11, v12, v13, v2);
  OUTLINED_FUNCTION_5_9(v14, v15, v16, v17, v18, v19, v20, v21, v23, v0, v1, v26, v27, v28);
  *&result = OUTLINED_FUNCTION_7_10(v24, v24, v25).n128_u64[0];
  return result;
}

unint64_t sub_1DD315BF8()
{
  result = qword_1ECCD7180;
  if (!qword_1ECCD7180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCD6660, &qword_1DD339358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD7180);
  }

  return result;
}

uint64_t sub_1DD315C64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1DD315CA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t QueryError.description.getter()
{
  v1 = *(v0 + 16);
  switch(*(v0 + 24))
  {
    case 1:
      OUTLINED_FUNCTION_1_13();
      sub_1DD336C00();

      OUTLINED_FUNCTION_2_7();
      v12 = v8;
      v9 = OUTLINED_FUNCTION_0_15();
      MEMORY[0x1E12AC540](v9);
      MEMORY[0x1E12AC540](0x6C6F63206E692060, 0xED000020736E6D75);
      v10 = MEMORY[0x1E12AC670](v1, MEMORY[0x1E69E6158]);
      MEMORY[0x1E12AC540](v10);

      return v12;
    case 2:
      OUTLINED_FUNCTION_1_13();
      sub_1DD336C00();

      v12 = 0xD000000000000012;
      v4 = OUTLINED_FUNCTION_0_15();
      MEMORY[0x1E12AC540](v4);
      MEMORY[0x1E12AC540](0xD000000000000018, 0x80000001DD33E9C0);
      v5 = MEMORY[0x1E12AC670](v1, MEMORY[0x1E69E6158]);
      MEMORY[0x1E12AC540](v5);

      v2 = 41;
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_1_13();
      sub_1DD336C00();

      OUTLINED_FUNCTION_2_7();
      v12 = v6 + 18;
      v7 = OUTLINED_FUNCTION_0_15();
      MEMORY[0x1E12AC540](v7);
      v2 = 96;
LABEL_5:
      v3 = 0xE100000000000000;
      goto LABEL_6;
    default:
      OUTLINED_FUNCTION_1_13();
      sub_1DD336C00();

      v12 = 0x2068637573206F4ELL;
      v2 = OUTLINED_FUNCTION_0_15();
LABEL_6:
      MEMORY[0x1E12AC540](v2, v3);
      return v12;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1DD315F04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 25))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 3)
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

uint64_t sub_1DD315F44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

Swift::String __swiftcall SchemaType.drop(ifExists:)(Swift::Bool ifExists)
{
  sub_1DD2C68C4();
  sub_1DD28C4F0();
  sub_1DD31620C(0x454C424154, 0xE500000000000000, v5, ifExists);
  OUTLINED_FUNCTION_28_10();
  v2 = OUTLINED_FUNCTION_13_10(v5);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_1DD31620C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA70;
  *&v33 = 0x20504F5244;
  *(&v33 + 1) = 0xE500000000000000;
  MEMORY[0x1E12AC540](a1, a2);
  v9 = v33;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v9;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v10;
  if (a4)
  {
    v11 = xmmword_1DD33C2C0;
    v12 = MEMORY[0x1E69E7CC0];
    v13 = &protocol witness table for Expression<A>;
  }

  else
  {
    v10 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0uLL;
  }

  *(inited + 96) = v10;
  *(inited + 104) = v13;
  *(inited + 72) = v11;
  *(inited + 88) = v12;
  sub_1DD2855A0(a3, inited + 112);
  v14 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 152; i += 40)
  {
    sub_1DD2892A8(inited + i, &v33, &qword_1ECCD7070, &qword_1DD33BAB8);
    v26 = v33;
    v27 = v34;
    v28 = v35;
    if (*(&v34 + 1))
    {
      sub_1DD3148E8(&v26, &v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3131D4();
        v14 = v17;
      }

      v16 = *(v14 + 16);
      if (v16 >= *(v14 + 24) >> 1)
      {
        sub_1DD3131D4();
        v14 = v18;
      }

      *(v14 + 16) = v16 + 1;
      sub_1DD3148E8(&v29, v14 + 40 * v16 + 32);
    }

    else
    {
      sub_1DD28C87C(&v26, &qword_1ECCD7070, &qword_1DD33BAB8);
    }
  }

  swift_setDeallocating();
  sub_1DD313344();
  sub_1DD284AFC(v14, 32, 0xE100000000000000, v19, v20, v21, v22, v23, v26, *(&v26 + 1), v27, *(&v27 + 1), v28, v29, *(&v29 + 1), v30, v31, v32, v33, *(&v33 + 1), v34, *(&v34 + 1), v35, v36[0], v36[1], v36[2]);

  __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
  countAndFlagsBits = Expressible.asSQL()()._countAndFlagsBits;
  __swift_destroy_boxed_opaque_existential_1(&v33);
  return countAndFlagsBits;
}

void Table.create(temporary:ifNotExists:withoutRowid:block:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_88_4();
  type metadata accessor for TableBuilder();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC0];
  v1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA70;
  if (!v57)
  {
  }

  sub_1DD289944(&v54);

  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  sub_1DD316784(0x454C424154, 0xE500000000000000, &v54, v9, v5 & 1);
  __swift_destroy_boxed_opaque_existential_1(&v54);
  swift_beginAccess();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 96) = v10;
  *(inited + 104) = &protocol witness table for Expression<A>;

  sub_1DD284AFC(v11, 8236, 0xE200000000000000, v12, v13, v14, v15, v16, v44, *(&v44 + 1), v45, *(&v45 + 1), v46, v47, *(&v47 + 1), v48, v49, v50, v51, v52, v53, v54, *(&v54 + 1), v55, *(&v55 + 1), v56);

  sub_1DD314890(&v54, (inited + 72), 0, 0xE000000000000000);
  __swift_destroy_boxed_opaque_existential_1(&v54);
  if (v3)
  {
    v17 = xmmword_1DD33C2D0;
    v18 = MEMORY[0x1E69E7CC0];
    v19 = &protocol witness table for Expression<A>;
  }

  else
  {
    v10 = 0;
    *&v17 = OUTLINED_FUNCTION_77_4();
  }

  *(inited + 136) = v10;
  *(inited + 144) = v19;
  *(inited + 112) = v17;
  v20 = 32;
  *(inited + 128) = v18;
  v21 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1DD2892A8(inited + v20, &v54, &qword_1ECCD7070, &qword_1DD33BAB8);
    v44 = v54;
    v45 = v55;
    OUTLINED_FUNCTION_70_6();
    if (v30)
    {
      sub_1DD3148E8(&v44, &v47);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3131D4();
        v21 = v35;
      }

      v32 = *(v21 + 16);
      v31 = *(v21 + 24);
      if (v32 >= v31 >> 1)
      {
        OUTLINED_FUNCTION_45(v31);
        sub_1DD3131D4();
        v21 = v36;
      }

      *(v21 + 16) = v32 + 1;
      OUTLINED_FUNCTION_111_2(v21 + 40 * v32, v44, *(&v44 + 1), v45, *(&v45 + 1), v46, v47);
    }

    else
    {
      v33 = OUTLINED_FUNCTION_60_7(v22, v23, v24, v25, v26, v27, v28, v29, v44);
      sub_1DD28C87C(v33, v34, &qword_1DD33BAB8);
    }

    v20 += 40;
  }

  while (v20 != 152);
  swift_setDeallocating();
  sub_1DD313344();
  OUTLINED_FUNCTION_24_6(v21, v37, v38, v39, v40, v41, v42, v43, v44, *(&v44 + 1), v45, *(&v45 + 1), v46, v47, *(&v47 + 1), v48, v49, v50, v51, v52, v53, v54, *(&v54 + 1), v55, *(&v55 + 1), v56);

  __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
  OUTLINED_FUNCTION_47_5();
  Expressible.asSQL()();
  OUTLINED_FUNCTION_84_6();

  __swift_destroy_boxed_opaque_existential_1(&v54);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DD316784(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5)
{
  v10 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA90;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x455441455243;
  *(inited + 40) = 0xE600000000000000;
  v13 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v12;
  if (v10 == 2)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v14 = 0x455551494E55;
    if (a4)
    {
      v14 = 0x5241524F504D4554;
    }

    v15 = 0xE900000000000059;
    if ((a4 & 1) == 0)
    {
      v15 = 0xE600000000000000;
    }

    v18 = &protocol witness table for Expression<A>;
    v16 = MEMORY[0x1E69E7CC0];
    v17 = v12;
  }

  *(inited + 72) = v14;
  *(inited + 80) = v15;
  *(inited + 88) = v16;
  *(inited + 96) = v17;
  *(inited + 136) = v12;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 104) = v18;
  *(inited + 112) = a1;
  *(inited + 120) = a2;
  *(inited + 128) = v13;
  if (a5)
  {
    v19 = xmmword_1DD33C2E0;
    v20 = MEMORY[0x1E69E7CC0];
    v21 = &protocol witness table for Expression<A>;
  }

  else
  {
    *&v19 = OUTLINED_FUNCTION_77_4();
  }

  *(inited + 176) = v12;
  *(inited + 184) = v21;
  *(inited + 152) = v19;
  *(inited + 168) = v20;
  sub_1DD2855A0(a3, inited + 192);

  v22 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 232; i += 40)
  {
    sub_1DD2892A8(inited + i, &v45, &qword_1ECCD7070, &qword_1DD33BAB8);
    v38 = v45;
    v39 = v46;
    OUTLINED_FUNCTION_70_6();
    if (v24)
    {
      if ((OUTLINED_FUNCTION_90_4(&v38, &v41) & 1) == 0)
      {
        OUTLINED_FUNCTION_9_14();
        v22 = v27;
      }

      v26 = *(v22 + 16);
      v25 = *(v22 + 24);
      if (v26 >= v25 >> 1)
      {
        OUTLINED_FUNCTION_64_6(v25 > 1, v26 + 1);
        v22 = v28;
      }

      *(v22 + 16) = v26 + 1;
      OUTLINED_FUNCTION_111_2(v22 + 40 * v26, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, v41);
    }

    else
    {
      sub_1DD28C87C(&v38, &qword_1ECCD7070, &qword_1DD33BAB8);
    }
  }

  swift_setDeallocating();
  v29 = sub_1DD313344();
  OUTLINED_FUNCTION_19_5(v29, v30, v31, v32, v33, v34, v35, v36, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, v41, *(&v41 + 1), v42, v43, v44, v45, *(&v45 + 1), v46, *(&v46 + 1), v47, v48[0], v48[1], v48[2]);
}

void Table.addColumn<A>(_:check:defaultValue:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  OUTLINED_FUNCTION_73_4(v1);
  v14 = OUTLINED_FUNCTION_22_10();
  v41[3] = type metadata accessor for Expression(v14, v15, v16, v17);
  v41[4] = &protocol witness table for Expression<A>;
  v41[0] = v8;
  v41[1] = v7;
  v41[2] = v9;
  v18 = *(v3 + 40);

  v19 = OUTLINED_FUNCTION_96_1();
  v18(v19);
  v40 = 2;
  if (v12)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6588, &qword_1DD339240);
    v21 = &protocol witness table for Expression<A>;
    v22 = v11;
    v23 = v12;
    v24 = v13;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_0_16();
  }

  v39[0] = v22;
  v39[1] = v23;
  v39[2] = v24;
  v39[3] = v20;
  v39[4] = v21;
  v25 = *(v3 + 8);
  v38[3] = v5;
  v38[4] = v25;
  __swift_allocate_boxed_opaque_existential_1(v38);
  OUTLINED_FUNCTION_10_9();
  (*(v26 + 16))();
  v36 = xmmword_1DD33C2F0;
  memset(v37, 0, sizeof(v37));
  sub_1DD28C838(v11, v12, v13);
  OUTLINED_FUNCTION_71_7();
  sub_1DD316BD8(v27, v28, v29, v30, v31, v32, v33, v34, v35, v37, &v36);

  sub_1DD28C87C(v37, &qword_1ECCD7188, &qword_1DD33C320);
  OUTLINED_FUNCTION_56_8(v38);
  OUTLINED_FUNCTION_56_8(v39);
  __swift_destroy_boxed_opaque_existential_1(v41);
  sub_1DD317118(v42);
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_13_10(v42);
  OUTLINED_FUNCTION_24_1();
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v49 = v6;
  v9 = *v7;
  v8 = v7[1];
  v10 = v7[2];
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  OUTLINED_FUNCTION_79_5(v61, v1);
  v15 = OUTLINED_FUNCTION_22_10();
  v60[3] = type metadata accessor for Expression(v15, v16, v17, v18);
  v60[4] = &protocol witness table for Expression<A>;
  v60[0] = v9;
  v60[1] = v8;
  v60[2] = v10;
  v19 = *(v3 + 40);

  v20 = v19(v5, v3);
  v22 = v21;
  v59[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7068, &qword_1DD33BAB0);
  v59[4] = &protocol witness table for Expression<A>;
  v59[0] = v12;
  v59[1] = v13;
  v59[2] = v14;
  v23 = *(v3 + 8);
  v58[3] = v5;
  v58[4] = v23;
  __swift_allocate_boxed_opaque_existential_1(v58);
  OUTLINED_FUNCTION_10_9();
  (*(v24 + 16))();
  OUTLINED_FUNCTION_99_3();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  v26 = OUTLINED_FUNCTION_89_3(v25);
  *(v26 + 16) = xmmword_1DD33C300;
  sub_1DD2855A0(v60, v26 + 32);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(v26 + 104) = &protocol witness table for Expression<A>;
  *(v26 + 72) = v20;
  *(v26 + 80) = v22;
  v28 = MEMORY[0x1E69E7CC0];
  *(v26 + 88) = MEMORY[0x1E69E7CC0];
  *(v26 + 96) = v27;
  *(v26 + 112) = 0u;
  *(v26 + 128) = 0u;
  *(v26 + 176) = v27;
  *(v26 + 184) = &protocol witness table for Expression<A>;
  *(v26 + 144) = 0;
  *(v26 + 152) = 0x4C4C554E20544F4ELL;
  *(v26 + 160) = 0xE800000000000000;
  *(v26 + 168) = v28;
  *(v26 + 192) = 0u;
  *(v26 + 208) = 0u;
  *(v26 + 224) = 0;
  sub_1DD2892A8(v59, __src, &qword_1ECCD7070, &qword_1DD33BAB8);
  if (*(&__src[1] + 1))
  {
    sub_1DD3148E8(__src, __dst);

    sub_1DD31E688(__dst);
    __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_98_3();
  }

  sub_1DD2892A8(v58, __src, &qword_1ECCD7070, &qword_1DD33BAB8);
  if (*(&__src[1] + 1))
  {
    sub_1DD3148E8(__src, __dst);
    OUTLINED_FUNCTION_3_15();
    *&v52 = v29;
    *(&v52 + 1) = v30;
    OUTLINED_FUNCTION_86_3();
    v31 = v52;
    *(v26 + 296) = v27;
    *(v26 + 304) = &protocol witness table for Expression<A>;
    sub_1DD314890(__dst, (v26 + 272), v31, *(&v31 + 1));

    __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  else
  {
    *(v26 + 304) = 0;
    *(v26 + 272) = 0u;
    *(v26 + 288) = 0u;
  }

  sub_1DD2892A8(v57, __src, &qword_1ECCD7188, &qword_1DD33C320);
  if (*(&__src[1] + 1))
  {
    memcpy(__dst, __src, sizeof(__dst));
    OUTLINED_FUNCTION_92_3(__dst);
    sub_1DD28C87C(__dst, &qword_1ECCD7190, &qword_1DD33C328);
  }

  else
  {
    OUTLINED_FUNCTION_19_6();
  }

  *(v26 + 384) = 0;
  *(v26 + 352) = 0u;
  *(v26 + 368) = 0u;
  v32 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 392; i += 40)
  {
    OUTLINED_FUNCTION_57_4();
    sub_1DD2892A8(v34, v35, v36, v37);
    v52 = __src[0];
    v53 = __src[1];
    v54 = *&__src[2];
    if (*(&__src[1] + 1))
    {
      if ((OUTLINED_FUNCTION_90_4(&v52, __dst) & 1) == 0)
      {
        OUTLINED_FUNCTION_9_14();
        v32 = v39;
      }

      v38 = *(v32 + 16);
      if (v38 >= *(v32 + 24) >> 1)
      {
        OUTLINED_FUNCTION_25_5();
        v32 = v40;
      }

      *(v32 + 16) = v38 + 1;
      sub_1DD3148E8(__dst, v32 + 40 * v38 + 32);
    }

    else
    {
      sub_1DD28C87C(&v52, &qword_1ECCD7070, &qword_1DD33BAB8);
    }
  }

  swift_setDeallocating();
  v41 = sub_1DD313344();
  OUTLINED_FUNCTION_19_5(v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), v52, *(&v52 + 1), v53, *(&v53 + 1), v54, v55);

  sub_1DD28C87C(v57, &qword_1ECCD7188, &qword_1DD33C320);
  OUTLINED_FUNCTION_56_8(v58);
  OUTLINED_FUNCTION_56_8(v59);
  __swift_destroy_boxed_opaque_existential_1(v60);
  sub_1DD317118(__src);
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_13_10(__src);
  OUTLINED_FUNCTION_24_1();
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v72 = v6;
  v8 = v7;
  v10 = v9;
  v11 = sub_1DD336AD0();
  OUTLINED_FUNCTION_1_0();
  v77 = v12;
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v70 - v14;
  v16 = *v10;
  v15 = v10[1];
  v17 = v10[2];
  v18 = v8[1];
  v71 = *v8;
  v19 = v8[2];
  memcpy(v90, v1, sizeof(v90));
  v74 = v11;
  v89[3] = type metadata accessor for Expression(0, v11, v20, v21);
  v89[4] = &protocol witness table for Expression<A>;
  v89[0] = v16;
  v89[1] = v15;
  v89[2] = v17;
  v22 = *(v3 + 40);

  v23 = OUTLINED_FUNCTION_95_2();
  v76 = v22(v23);
  v78 = v24;
  v73 = v19;
  if (v18)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6588, &qword_1DD339240);
    v26 = &protocol witness table for Expression<A>;
    v27 = v71;
  }

  else
  {
    v27 = 0;
    v19 = 0;
    v25 = 0;
    v26 = 0;
  }

  v88[0] = v27;
  v88[1] = v18;
  v88[2] = v19;
  v88[3] = v25;
  v88[4] = v26;
  v28 = v75;
  (*(v77 + 16))(v75, v72, v74);
  OUTLINED_FUNCTION_74_3(v28);
  if (v29)
  {
    v30 = OUTLINED_FUNCTION_68_5();
    sub_1DD28C838(v30, v31, v73);
    v32 = OUTLINED_FUNCTION_79();
    v33(v32);
    v87 = 0;
    v85 = 0u;
    v86 = 0u;
  }

  else
  {
    v34 = *(v3 + 8);
    *(&v86 + 1) = v5;
    v87 = v34;
    __swift_allocate_boxed_opaque_existential_1(&v85);
    OUTLINED_FUNCTION_10_9();
    (*(v35 + 32))();
    v36 = OUTLINED_FUNCTION_68_5();
    sub_1DD28C838(v36, v37, v73);
  }

  OUTLINED_FUNCTION_99_3();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  v39 = OUTLINED_FUNCTION_89_3(v38);
  *(v39 + 16) = xmmword_1DD33C300;
  sub_1DD2855A0(v89, v39 + 32);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(v39 + 104) = &protocol witness table for Expression<A>;
  v41 = v78;
  *(v39 + 72) = v76;
  *(v39 + 80) = v41;
  OUTLINED_FUNCTION_63_6(v40, MEMORY[0x1E69E7CC0]);
  sub_1DD2892A8(v88, v83, &qword_1ECCD7070, &qword_1DD33BAB8);
  if (*(&v83[1] + 1))
  {
    sub_1DD3148E8(v83, v80);

    sub_1DD31E688(v80);
    __swift_destroy_boxed_opaque_existential_1(v80);
  }

  else
  {
    OUTLINED_FUNCTION_53_6();
  }

  sub_1DD2892A8(&v85, v83, &qword_1ECCD7070, &qword_1DD33BAB8);
  if (*(&v83[1] + 1))
  {
    sub_1DD3148E8(v83, v80);
    OUTLINED_FUNCTION_3_15();
    *&v81[0] = v42;
    *(&v81[0] + 1) = v43;
    OUTLINED_FUNCTION_86_3();
    v44 = v81[0];
    *(v39 + 296) = v40;
    *(v39 + 304) = &protocol witness table for Expression<A>;
    sub_1DD314890(v80, (v39 + 272), v44, *(&v44 + 1));

    __swift_destroy_boxed_opaque_existential_1(v80);
  }

  else
  {
    OUTLINED_FUNCTION_78_4();
  }

  sub_1DD2892A8(v84, v83, &qword_1ECCD7188, &qword_1DD33C320);
  if (*(&v83[1] + 1))
  {
    memcpy(v80, v83, sizeof(v80));
    OUTLINED_FUNCTION_92_3(v80);
    sub_1DD28C87C(v80, &qword_1ECCD7190, &qword_1DD33C328);
  }

  else
  {
    OUTLINED_FUNCTION_19_6();
  }

  *(v39 + 384) = 0;
  *(v39 + 352) = 0u;
  *(v39 + 368) = 0u;
  v45 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 392; i += 40)
  {
    OUTLINED_FUNCTION_57_4();
    sub_1DD2892A8(v47, v48, v49, v50);
    v81[0] = v83[0];
    v81[1] = v83[1];
    v82 = *&v83[2];
    if (*(&v83[1] + 1))
    {
      if ((OUTLINED_FUNCTION_90_4(v81, v80) & 1) == 0)
      {
        OUTLINED_FUNCTION_9_14();
        v45 = v53;
      }

      v52 = *(v45 + 16);
      v51 = *(v45 + 24);
      if (v52 >= v51 >> 1)
      {
        v54 = OUTLINED_FUNCTION_45(v51);
        OUTLINED_FUNCTION_64_6(v54, v52 + 1);
        v45 = v55;
      }

      *(v45 + 16) = v52 + 1;
      sub_1DD3148E8(v80, v45 + 40 * v52 + 32);
    }

    else
    {
      sub_1DD28C87C(v81, &qword_1ECCD7070, &qword_1DD33BAB8);
    }
  }

  swift_setDeallocating();
  v56 = sub_1DD313344();
  OUTLINED_FUNCTION_19_5(v56, v57, v58, v59, v60, v61, v62, v63, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, *&v80[0], *(&v80[0] + 1), *&v80[1], *(&v80[1] + 1), *&v80[2], *(&v80[2] + 1), *&v80[3], *(&v80[3] + 1));

  sub_1DD28C87C(v84, &qword_1ECCD7188, &qword_1DD33C320);
  OUTLINED_FUNCTION_46_8();
  sub_1DD28C87C(v64, v65, v66);
  OUTLINED_FUNCTION_46_8();
  sub_1DD28C87C(v67, v68, v69);
  __swift_destroy_boxed_opaque_existential_1(v89);
  sub_1DD317118(v83);
  OUTLINED_FUNCTION_84_6();
  __swift_destroy_boxed_opaque_existential_1(v83);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_24_1();
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v65 = v6;
  v8 = v7;
  v10 = v9;
  v11 = sub_1DD336AD0();
  OUTLINED_FUNCTION_1_0();
  v64 = v12;
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v61 - v14;
  v15 = *v10;
  v16 = v10[1];
  v17 = v10[2];
  v18 = v8[1];
  v61 = *v8;
  v62 = v18;
  v19 = v8[2];
  memcpy(v79, v1, sizeof(v79));
  v78[3] = type metadata accessor for Expression(0, v11, v20, v21);
  v78[4] = &protocol witness table for Expression<A>;
  v78[0] = v15;
  v78[1] = v16;
  v78[2] = v17;
  v22 = *(v3 + 40);

  v23 = v3;
  v24 = v22(v5, v3);
  v25 = v19;
  v66 = v24;
  v27 = v26;
  v77[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7068, &qword_1DD33BAB0);
  v77[4] = &protocol witness table for Expression<A>;
  v28 = v63;
  v29 = v64;
  v77[0] = v61;
  v77[1] = v62;
  v77[2] = v25;
  (*(v64 + 16))(v63, v65, v11);
  OUTLINED_FUNCTION_74_3(v28);
  if (v30)
  {
    v31 = *(v29 + 8);

    v31(v28, v11);
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
  }

  else
  {
    v32 = *(v23 + 8);
    *(&v75 + 1) = v5;
    v76 = v32;
    __swift_allocate_boxed_opaque_existential_1(&v74);
    OUTLINED_FUNCTION_10_9();
    OUTLINED_FUNCTION_39_9();
    v33();
  }

  memset(v73, 0, sizeof(v73));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  v35 = OUTLINED_FUNCTION_89_3(v34);
  *(v35 + 16) = xmmword_1DD33C300;
  sub_1DD2855A0(v78, v35 + 32);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(v35 + 104) = &protocol witness table for Expression<A>;
  *(v35 + 72) = v66;
  *(v35 + 80) = v27;
  OUTLINED_FUNCTION_63_6(v36, MEMORY[0x1E69E7CC0]);
  sub_1DD2892A8(v77, v72, &qword_1ECCD7070, &qword_1DD33BAB8);
  if (*(&v72[1] + 1))
  {
    sub_1DD3148E8(v72, v69);

    sub_1DD31E688(v69);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    OUTLINED_FUNCTION_53_6();
  }

  sub_1DD2892A8(&v74, v72, &qword_1ECCD7070, &qword_1DD33BAB8);
  if (*(&v72[1] + 1))
  {
    sub_1DD3148E8(v72, v69);
    OUTLINED_FUNCTION_3_15();
    *&v70[0] = v37;
    *(&v70[0] + 1) = v38;
    OUTLINED_FUNCTION_86_3();
    v39 = v70[0];
    *(v35 + 296) = v36;
    *(v35 + 304) = &protocol witness table for Expression<A>;
    sub_1DD314890(v69, (v35 + 272), v39, *(&v39 + 1));

    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    OUTLINED_FUNCTION_78_4();
  }

  sub_1DD2892A8(v73, v72, &qword_1ECCD7188, &qword_1DD33C320);
  v67 = v27;
  if (*(&v72[1] + 1))
  {
    memcpy(v69, v72, sizeof(v69));
    OUTLINED_FUNCTION_92_3(v69);
    sub_1DD28C87C(v69, &qword_1ECCD7190, &qword_1DD33C328);
  }

  else
  {
    OUTLINED_FUNCTION_19_6();
  }

  *(v35 + 384) = 0;
  *(v35 + 352) = 0u;
  *(v35 + 368) = 0u;
  v40 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 392; i += 40)
  {
    sub_1DD2892A8(v35 + i, v72, &qword_1ECCD7070, &qword_1DD33BAB8);
    v70[0] = v72[0];
    v70[1] = v72[1];
    v71 = *&v72[2];
    if (*(&v72[1] + 1))
    {
      if ((OUTLINED_FUNCTION_90_4(v70, v69) & 1) == 0)
      {
        OUTLINED_FUNCTION_9_14();
        v40 = v44;
      }

      v43 = *(v40 + 16);
      v42 = *(v40 + 24);
      if (v43 >= v42 >> 1)
      {
        v45 = OUTLINED_FUNCTION_45(v42);
        OUTLINED_FUNCTION_64_6(v45, v43 + 1);
        v40 = v46;
      }

      *(v40 + 16) = v43 + 1;
      sub_1DD3148E8(v69, v40 + 40 * v43 + 32);
    }

    else
    {
      sub_1DD28C87C(v70, &qword_1ECCD7070, &qword_1DD33BAB8);
    }
  }

  swift_setDeallocating();
  v47 = sub_1DD313344();
  OUTLINED_FUNCTION_19_5(v47, v48, v49, v50, v51, v52, v53, v54, v61, v62, v63, v64, v65, v66, v67, v68, *&v69[0], *(&v69[0] + 1), *&v69[1], *(&v69[1] + 1), *&v69[2], *(&v69[2] + 1), *&v69[3], *(&v69[3] + 1), *&v69[4], *(&v69[4] + 1));

  sub_1DD28C87C(v73, &qword_1ECCD7188, &qword_1DD33C320);
  OUTLINED_FUNCTION_46_8();
  sub_1DD28C87C(v55, v56, v57);
  OUTLINED_FUNCTION_46_8();
  sub_1DD28C87C(v58, v59, v60);
  __swift_destroy_boxed_opaque_existential_1(v78);
  sub_1DD317118(v72);
  OUTLINED_FUNCTION_84_6();
  __swift_destroy_boxed_opaque_existential_1(v72);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DD316BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11)
{
  v58 = a9;
  v18 = *a4;
  v19 = a11[1];
  v57 = *a11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33C300;
  sub_1DD2855A0(a1, inited + 32);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  v22 = v21;
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = a2;
  *(inited + 80) = a3;
  *(inited + 88) = MEMORY[0x1E69E7CC0];
  *(inited + 96) = v21;
  if (v18 == 2)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v24 = 0x80000001DD33EA30;
    v23 = 0x205952414D495250;
    if (v18)
    {
      v23 = 0xD000000000000019;
    }

    else
    {
      v24 = 0xEB0000000059454BLL;
    }

    v27 = &protocol witness table for Expression<A>;
    v25 = MEMORY[0x1E69E7CC0];
    v26 = v21;
  }

  *(inited + 112) = v23;
  *(inited + 120) = v24;
  *(inited + 128) = v25;
  *(inited + 136) = v26;
  *(inited + 144) = v27;
  v28 = MEMORY[0x1E69E7CC0];
  if (a5)
  {
    v29 = MEMORY[0x1E69E7CC0];
    v30 = 0;
    v31 = 0;
    v28 = 0;
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v31 = 0xE800000000000000;
    v30 = 0x4C4C554E20544F4ELL;
    v29 = MEMORY[0x1E69E7CC0];
    v32 = v21;
    v33 = &protocol witness table for Expression<A>;
  }

  *(inited + 152) = v30;
  *(inited + 160) = v31;
  *(inited + 168) = v28;
  *(inited + 176) = v32;
  *(inited + 184) = v33;
  if (a6)
  {
    v34 = xmmword_1DD33C310;
    v35 = MEMORY[0x1E69E7CC0];
    v36 = &protocol witness table for Expression<A>;
    v37 = v21;
  }

  else
  {
    v37 = 0;
    v36 = 0;
    v35 = 0;
    v34 = 0uLL;
  }

  *(inited + 216) = v37;
  *(inited + 224) = v36;
  *(inited + 192) = v34;
  *(inited + 208) = v35;
  sub_1DD2892A8(a7, __src, &qword_1ECCD7070, &qword_1DD33BAB8);
  if (*(&__src[1] + 1))
  {
    sub_1DD3148E8(__src, __dst);

    sub_1DD31E688(__dst);
    __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  else
  {
    *(inited + 264) = 0;
    *(inited + 248) = 0u;
    *(inited + 232) = 0u;
  }

  sub_1DD2892A8(a8, __src, &qword_1ECCD7070, &qword_1DD33BAB8);
  if (*(&__src[1] + 1))
  {
    sub_1DD3148E8(__src, __dst);
    *&v65[0] = 0x544C5541464544;
    *(&v65[0] + 1) = 0xE700000000000000;
    MEMORY[0x1E12AC540](32, 0xE100000000000000);
    v38 = v65[0];
    *(inited + 296) = v22;
    *(inited + 304) = &protocol witness table for Expression<A>;
    sub_1DD314890(__dst, (inited + 272), v38, *(&v38 + 1));

    __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  else
  {
    *(inited + 304) = 0;
    *(inited + 272) = 0u;
    *(inited + 288) = 0u;
  }

  sub_1DD2892A8(a10, __src, &qword_1ECCD7188, &qword_1DD33C320);
  if (*(&__src[1] + 1))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_1DD31E37C(__dst, &__dst[2] + 8);
    sub_1DD28C87C(__dst, &qword_1ECCD7190, &qword_1DD33C328);
  }

  else
  {
    *(inited + 344) = 0;
    *(inited + 312) = 0u;
    *(inited + 328) = 0u;
  }

  if (v19 == 3)
  {
    *(inited + 384) = 0;
    *(inited + 352) = 0u;
    *(inited + 368) = 0u;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_1DD3391F0;
    *(v39 + 32) = 0x4554414C4C4F43;
    *(v39 + 40) = 0xE700000000000000;
    *(v39 + 48) = v29;
    *(v39 + 56) = v22;
    *(v39 + 96) = &type metadata for Collation;
    *(v39 + 104) = &protocol witness table for Collation;
    *(v39 + 64) = &protocol witness table for Expression<A>;
    *(v39 + 72) = v57;
    *(v39 + 80) = v19;
    sub_1DD31F198(v57, v19);
    sub_1DD284AFC(v39, 32, 0xE100000000000000, v40, v41, v42, v43, v44, v56, v57, v58, v59, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), v61, v62, v63, v64);
    swift_setDeallocating();
    sub_1DD313330();
  }

  v45 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 392; i += 40)
  {
    sub_1DD2892A8(inited + i, __src, &qword_1ECCD7070, &qword_1DD33BAB8);
    v65[0] = __src[0];
    v65[1] = __src[1];
    v66 = *&__src[2];
    if (*(&__src[1] + 1))
    {
      sub_1DD3148E8(v65, __dst);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3131D4();
        v45 = v48;
      }

      v47 = *(v45 + 16);
      if (v47 >= *(v45 + 24) >> 1)
      {
        sub_1DD3131D4();
        v45 = v49;
      }

      *(v45 + 16) = v47 + 1;
      sub_1DD3148E8(__dst, v45 + 40 * v47 + 32);
    }

    else
    {
      sub_1DD28C87C(v65, &qword_1ECCD7070, &qword_1DD33BAB8);
    }
  }

  swift_setDeallocating();
  sub_1DD313344();
  sub_1DD284AFC(v45, 32, 0xE100000000000000, v50, v51, v52, v53, v54, v56, v57, v58, v59, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), v61, v62, v63, v64);
}

uint64_t sub_1DD317118(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA60;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x4154205245544C41;
  *(inited + 40) = 0xEB00000000454C42;
  v5 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v4;
  if (!__dst[5])
  {
  }

  sub_1DD289944((inited + 72));

  *(inited + 136) = v4;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 0x554C4F4320444441;
  *(inited + 120) = 0xEA00000000004E4DLL;
  *(inited + 128) = v5;
  sub_1DD2855A0(a1, inited + 152);
  sub_1DD284AFC(inited, 32, 0xE100000000000000, v6, v7, v8, v9, v10, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  swift_setDeallocating();
  sub_1DD313330();
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  countAndFlagsBits = Expressible.asSQL()()._countAndFlagsBits;
  __swift_destroy_boxed_opaque_existential_1(v31);
  return countAndFlagsBits;
}

void Table.addColumn<A>(_:unique:check:references:_:)()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  v33 = v3;
  v6 = *v4;
  v5 = v4[1];
  v7 = v4[2];
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v29 = *v13;
  v30 = v12;
  v31 = v13[1];
  v32 = v13[2];
  OUTLINED_FUNCTION_73_4(v0);
  v14 = OUTLINED_FUNCTION_22_10();
  v18 = type metadata accessor for Expression(v14, v15, v16, v17);
  v45[3] = v18;
  v45[4] = &protocol witness table for Expression<A>;
  v45[0] = v6;
  v45[1] = v5;
  v45[2] = v7;
  v19 = *(v2 + 40);

  v20 = OUTLINED_FUNCTION_95_2();
  v21 = v19(v20);
  v23 = v22;
  v44 = 2;
  if (v10)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6588, &qword_1DD339240);
    v25 = &protocol witness table for Expression<A>;
    v26 = v9;
    v27 = v10;
    v28 = v11;
  }

  else
  {
    v24 = OUTLINED_FUNCTION_0_16();
  }

  v43[0] = v26;
  v43[1] = v27;
  v43[2] = v28;
  v43[3] = v24;
  v43[4] = v25;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  sub_1DD2855A0(v30, v35);
  v39 = v18;
  v40 = &protocol witness table for Expression<A>;
  v36 = v29;
  v37 = v31;
  v38 = v32;
  v34 = xmmword_1DD33C2F0;
  sub_1DD28C838(v9, v10, v11);

  sub_1DD316BD8(v45, v21, v23, &v44, 0, v33 & 1, v43, v41, v46, v35, &v34);

  OUTLINED_FUNCTION_56_8(v41);
  sub_1DD28C87C(v35, &qword_1ECCD7188, &qword_1DD33C320);
  OUTLINED_FUNCTION_56_8(v43);
  __swift_destroy_boxed_opaque_existential_1(v45);
  sub_1DD317118(v46);
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_13_10(v46);
  OUTLINED_FUNCTION_24_1();
}

{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  HIDWORD(v80) = v3;
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v9 = v8[1];
  v81 = *v8;
  v10 = v8[2];
  v78 = *v12;
  v79 = v11;
  v76 = v12[1];
  v77 = v12[2];
  OUTLINED_FUNCTION_79_5(v110, v0);
  v13 = OUTLINED_FUNCTION_22_10();
  v17 = type metadata accessor for Expression(v13, v14, v15, v16);
  v109[3] = v17;
  v109[4] = &protocol witness table for Expression<A>;
  v109[0] = v5;
  v109[1] = v6;
  v109[2] = v7;
  v18 = *(v2 + 40);

  v19 = OUTLINED_FUNCTION_47_5();
  v20 = v18(v19);
  v22 = v21;
  v108[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7068, &qword_1DD33BAB0);
  v108[4] = &protocol witness table for Expression<A>;
  v108[0] = v81;
  v108[1] = v9;
  v82 = v9;
  v23 = v22;
  v108[2] = v10;
  v107 = 0;
  memset(v106, 0, sizeof(v106));
  sub_1DD2855A0(v79, v100);
  v104 = v17;
  v105 = &protocol witness table for Expression<A>;
  v101 = v78;
  v102 = v76;
  v103 = v77;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  v25 = OUTLINED_FUNCTION_89_3(v24);
  *(v25 + 16) = xmmword_1DD33C300;
  sub_1DD2855A0(v109, v25 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *&v29 = OUTLINED_FUNCTION_81_4();
  v30 = MEMORY[0x1E69E7CC0];
  *(v25 + 88) = MEMORY[0x1E69E7CC0];
  *(v25 + 96) = v31;
  *(v25 + 144) = 0;
  *(v25 + 152) = 0x4C4C554E20544F4ELL;
  *(v25 + 160) = 0xE800000000000000;
  *(v25 + 168) = v30;
  *(v25 + 104) = &protocol witness table for Expression<A>;
  *(v25 + 72) = v20;
  *(v25 + 80) = v23;
  *(v25 + 112) = v29;
  *(v25 + 128) = v29;
  *(v25 + 176) = v31;
  *(v25 + 184) = &protocol witness table for Expression<A>;
  if ((v80 & 0x100000000) != 0)
  {
    v29 = xmmword_1DD33C310;
    v26 = MEMORY[0x1E69E7CC0];
    v28 = &protocol witness table for Expression<A>;
    v27 = v6;
  }

  *(v25 + 216) = v27;
  *(v25 + 224) = v28;
  *(v25 + 192) = v29;
  *(v25 + 208) = v26;
  v32 = sub_1DD2892A8(v108, &v98, &qword_1ECCD7070, &qword_1DD33BAB8);
  if (v99)
  {
    OUTLINED_FUNCTION_112_1(v32, v33, v34, v35, v36, v37, v38, v39, v75, v76, v77, v78, v79, v80, v82, v83, v84, *(&v84 + 1), v85, v86, v87, v88, v89, v90, v91, v92, v93, *(&v93 + 1), v94, v95, v96, v97, v98);

    sub_1DD31E688(&v84);
    __swift_destroy_boxed_opaque_existential_1(&v84);
  }

  else
  {
    *(v25 + 264) = 0;
    *(v25 + 248) = 0u;
    *(v25 + 232) = 0u;
  }

  v40 = sub_1DD2892A8(v106, &v98, &qword_1ECCD7070, &qword_1DD33BAB8);
  if (v99)
  {
    OUTLINED_FUNCTION_112_1(v40, v41, v42, v43, v44, v45, v46, v47, v75, v76, v77, v78, v79, v80, v82, v83, v84, *(&v84 + 1), v85, v86, v87, v88, v89, v90, v91, v92, v93, *(&v93 + 1), v94, v95, v96, v97, v98);
    OUTLINED_FUNCTION_3_15();
    *&v93 = v48;
    *(&v93 + 1) = v49;
    OUTLINED_FUNCTION_86_3();
    v50 = v93;
    *(v25 + 296) = v6;
    *(v25 + 304) = &protocol witness table for Expression<A>;
    sub_1DD314890(&v84, (v25 + 272), v50, *(&v50 + 1));

    __swift_destroy_boxed_opaque_existential_1(&v84);
  }

  else
  {
    *(v25 + 304) = 0;
    *(v25 + 272) = 0u;
    *(v25 + 288) = 0u;
  }

  v51 = sub_1DD2892A8(v100, &v98, &qword_1ECCD7188, &qword_1DD33C320);
  if (v99)
  {
    OUTLINED_FUNCTION_109_2(v51, v52, v53, v54, v55, v56, v57, v58, v75, v76, v77, v78, v79, v80, v82, v83, v84, *(&v84 + 1), v85, v86, v87, v88, v89, v90, v91, v92, v93, *(&v93 + 1), v94, v95, v96, v97);
    OUTLINED_FUNCTION_92_3(&v84);
    sub_1DD28C87C(&v84, &qword_1ECCD7190, &qword_1DD33C328);
  }

  else
  {
    OUTLINED_FUNCTION_19_6();
  }

  *(v25 + 384) = 0;
  *(v25 + 352) = 0u;
  *(v25 + 368) = 0u;
  v59 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 392; i += 40)
  {
    sub_1DD2892A8(v25 + i, &v98, &qword_1ECCD7070, &qword_1DD33BAB8);
    OUTLINED_FUNCTION_101_2();
    if (v61)
    {
      if ((OUTLINED_FUNCTION_90_4(&v93, &v84) & 1) == 0)
      {
        OUTLINED_FUNCTION_9_14();
        v59 = v64;
      }

      v63 = *(v59 + 16);
      v62 = *(v59 + 24);
      if (v63 >= v62 >> 1)
      {
        v65 = OUTLINED_FUNCTION_45(v62);
        OUTLINED_FUNCTION_64_6(v65, v63 + 1);
        v59 = v66;
      }

      *(v59 + 16) = v63 + 1;
      sub_1DD3148E8(&v84, v59 + 40 * v63 + 32);
    }

    else
    {
      sub_1DD28C87C(&v93, &qword_1ECCD7070, &qword_1DD33BAB8);
    }
  }

  swift_setDeallocating();
  v67 = sub_1DD313344();
  OUTLINED_FUNCTION_19_5(v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v82, v83, v84, *(&v84 + 1), v85, v86, v87, v88, v89, v90, v91, v92);

  OUTLINED_FUNCTION_56_8(v106);
  sub_1DD28C87C(v100, &qword_1ECCD7188, &qword_1DD33C320);
  OUTLINED_FUNCTION_56_8(v108);
  __swift_destroy_boxed_opaque_existential_1(v109);
  sub_1DD317118(&v98);
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_13_10(&v98);
  OUTLINED_FUNCTION_24_1();
}

{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  v36 = v3;
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v13 = v12[1];
  v33 = *v12;
  v34 = v14;
  v35 = v12[2];
  OUTLINED_FUNCTION_73_4(v0);
  v15 = OUTLINED_FUNCTION_93_2();
  v48[3] = OUTLINED_FUNCTION_65_5(v15, v16, v17, v18);
  v48[4] = &protocol witness table for Expression<A>;
  v48[0] = v5;
  v48[1] = v6;
  v48[2] = v7;
  v19 = *(v2 + 40);

  v20 = OUTLINED_FUNCTION_95_2();
  v21 = v19(v20);
  v23 = v22;
  v47 = 2;
  if (v10)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6588, &qword_1DD339240);
    v25 = &protocol witness table for Expression<A>;
    v26 = v9;
    v27 = v10;
    v28 = v11;
  }

  else
  {
    v24 = OUTLINED_FUNCTION_0_16();
  }

  v46[0] = v26;
  v46[1] = v27;
  v46[2] = v28;
  v46[3] = v24;
  v46[4] = v25;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  sub_1DD2855A0(v34, v38);
  v29 = OUTLINED_FUNCTION_22_10();
  v42 = type metadata accessor for Expression(v29, v30, v31, v32);
  v43 = &protocol witness table for Expression<A>;
  v39 = v33;
  v40 = v13;
  v41 = v35;
  v37 = xmmword_1DD33C2F0;
  sub_1DD28C838(v9, v10, v11);

  sub_1DD316BD8(v48, v21, v23, &v47, 1, v36 & 1, v46, v44, v49, v38, &v37);

  OUTLINED_FUNCTION_56_8(v44);
  sub_1DD28C87C(v38, &qword_1ECCD7188, &qword_1DD33C320);
  OUTLINED_FUNCTION_56_8(v46);
  __swift_destroy_boxed_opaque_existential_1(v48);
  sub_1DD317118(v49);
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_13_10(v49);
  OUTLINED_FUNCTION_24_1();
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  HIDWORD(v84) = v6;
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v12 = v11[1];
  v13 = v11[2];
  v82 = *v15;
  v83 = v14;
  v81 = v15[1];
  v79 = *v11;
  v80 = v15[2];
  OUTLINED_FUNCTION_79_5(v112, v1);
  v16 = OUTLINED_FUNCTION_93_2();
  v111[3] = OUTLINED_FUNCTION_65_5(v16, v17, v18, v19);
  v111[4] = &protocol witness table for Expression<A>;
  v111[0] = v8;
  v111[1] = v9;
  v111[2] = v10;
  v20 = *(v3 + 40);

  v21 = v20(v5, v3);
  v23 = v22;
  v110[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7068, &qword_1DD33BAB0);
  v110[4] = &protocol witness table for Expression<A>;
  v110[0] = v79;
  v110[1] = v12;
  v110[2] = v13;
  v109 = 0;
  memset(v108, 0, sizeof(v108));
  sub_1DD2855A0(v83, v102);
  v24 = OUTLINED_FUNCTION_22_10();
  v106 = type metadata accessor for Expression(v24, v25, v26, v27);
  v107 = &protocol witness table for Expression<A>;
  v103 = v82;
  v104 = v81;
  v105 = v80;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  v29 = OUTLINED_FUNCTION_89_3(v28);
  *(v29 + 16) = xmmword_1DD33C300;
  sub_1DD2855A0(v111, v29 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *&v33 = OUTLINED_FUNCTION_81_4();
  *(v29 + 88) = MEMORY[0x1E69E7CC0];
  *(v29 + 96) = v34;
  *(v29 + 104) = &protocol witness table for Expression<A>;
  *(v29 + 72) = v21;
  *(v29 + 80) = v23;
  *(v29 + 112) = v33;
  *(v29 + 128) = v33;
  *(v29 + 144) = v33;
  *(v29 + 160) = v33;
  *(v29 + 176) = v33;
  if ((v84 & 0x100000000) != 0)
  {
    v33 = xmmword_1DD33C310;
    v30 = MEMORY[0x1E69E7CC0];
    v32 = &protocol witness table for Expression<A>;
    v31 = v9;
  }

  *(v29 + 216) = v31;
  *(v29 + 224) = v32;
  *(v29 + 192) = v33;
  *(v29 + 208) = v30;
  v35 = sub_1DD2892A8(v110, &v100, &qword_1ECCD7070, &qword_1DD33BAB8);
  if (v101)
  {
    OUTLINED_FUNCTION_112_1(v35, v36, v37, v38, v39, v40, v41, v42, v78, v79, v80, v81, v82, v83, v84, v85, v86, *(&v86 + 1), v87, v88, v89, v90, v91, v92, v93, v94, v95, *(&v95 + 1), v96, v97, v98, v99, v100);

    sub_1DD31E688(&v86);
    __swift_destroy_boxed_opaque_existential_1(&v86);
  }

  else
  {
    OUTLINED_FUNCTION_98_3();
  }

  v43 = sub_1DD2892A8(v108, &v100, &qword_1ECCD7070, &qword_1DD33BAB8);
  if (v101)
  {
    OUTLINED_FUNCTION_112_1(v43, v44, v45, v46, v47, v48, v49, v50, v78, v79, v80, v81, v82, v83, v84, v85, v86, *(&v86 + 1), v87, v88, v89, v90, v91, v92, v93, v94, v95, *(&v95 + 1), v96, v97, v98, v99, v100);
    OUTLINED_FUNCTION_3_15();
    *&v95 = v51;
    *(&v95 + 1) = v52;
    OUTLINED_FUNCTION_86_3();
    v53 = v95;
    *(v29 + 296) = v9;
    *(v29 + 304) = &protocol witness table for Expression<A>;
    sub_1DD314890(&v86, (v29 + 272), v53, *(&v53 + 1));

    __swift_destroy_boxed_opaque_existential_1(&v86);
  }

  else
  {
    *(v29 + 304) = 0;
    *(v29 + 272) = 0u;
    *(v29 + 288) = 0u;
  }

  v54 = sub_1DD2892A8(v102, &v100, &qword_1ECCD7188, &qword_1DD33C320);
  if (v101)
  {
    OUTLINED_FUNCTION_109_2(v54, v55, v56, v57, v58, v59, v60, v61, v78, v79, v80, v81, v82, v83, v84, v85, v86, *(&v86 + 1), v87, v88, v89, v90, v91, v92, v93, v94, v95, *(&v95 + 1), v96, v97, v98, v99);
    OUTLINED_FUNCTION_92_3(&v86);
    sub_1DD28C87C(&v86, &qword_1ECCD7190, &qword_1DD33C328);
  }

  else
  {
    OUTLINED_FUNCTION_19_6();
  }

  *(v29 + 384) = 0;
  *(v29 + 352) = 0u;
  *(v29 + 368) = 0u;
  for (i = 32; i != 392; i += 40)
  {
    OUTLINED_FUNCTION_57_4();
    sub_1DD2892A8(v63, v64, v65, v66);
    OUTLINED_FUNCTION_101_2();
    if (v67)
    {
      if ((OUTLINED_FUNCTION_90_4(&v95, &v86) & 1) == 0)
      {
        OUTLINED_FUNCTION_9_14();
      }

      OUTLINED_FUNCTION_29_5();
      if (v68)
      {
        OUTLINED_FUNCTION_25_5();
      }

      OUTLINED_FUNCTION_80_4();
      sub_1DD3148E8(&v86, v69 + 32);
    }

    else
    {
      sub_1DD28C87C(&v95, &qword_1ECCD7070, &qword_1DD33BAB8);
    }
  }

  swift_setDeallocating();
  v70 = sub_1DD313344();
  OUTLINED_FUNCTION_19_5(v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, *(&v86 + 1), v87, v88, v89, v90, v91, v92, v93, v94);

  OUTLINED_FUNCTION_56_8(v108);
  sub_1DD28C87C(v102, &qword_1ECCD7188, &qword_1DD33C320);
  OUTLINED_FUNCTION_56_8(v110);
  __swift_destroy_boxed_opaque_existential_1(v111);
  sub_1DD317118(&v100);
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_13_10(&v100);
  OUTLINED_FUNCTION_24_1();
}

void Table.addColumn<A>(_:check:defaultValue:collate:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v15 = v14[1];
  v37 = *v14;
  OUTLINED_FUNCTION_73_4(v1);
  v16 = OUTLINED_FUNCTION_22_10();
  v44[3] = type metadata accessor for Expression(v16, v17, v18, v19);
  v44[4] = &protocol witness table for Expression<A>;
  v44[0] = v7;
  v44[1] = v8;
  v44[2] = v9;
  v20 = *(v3 + 40);

  v20(v5, v3);
  v43 = 2;
  if (v12)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6588, &qword_1DD339240);
    v22 = &protocol witness table for Expression<A>;
    v23 = v11;
    v24 = v12;
    v25 = v13;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_0_16();
  }

  v42[0] = v23;
  v42[1] = v24;
  v42[2] = v25;
  v42[3] = v21;
  v42[4] = v22;
  v26 = *(v3 + 8);
  v41[3] = v5;
  v41[4] = v26;
  __swift_allocate_boxed_opaque_existential_1(v41);
  OUTLINED_FUNCTION_10_9();
  (*(v27 + 16))();
  memset(v40, 0, sizeof(v40));
  v38 = v37;
  v39 = v15;
  sub_1DD28C838(v11, v12, v13);
  sub_1DD31E784(v37, v15);
  OUTLINED_FUNCTION_71_7();
  sub_1DD316BD8(v28, v29, v30, v31, v32, v33, v34, v35, v36, v40, &v38);

  sub_1DD31E798(v38, v39);
  sub_1DD28C87C(v40, &qword_1ECCD7188, &qword_1DD33C320);
  OUTLINED_FUNCTION_56_8(v41);
  OUTLINED_FUNCTION_56_8(v42);
  __swift_destroy_boxed_opaque_existential_1(v44);
  sub_1DD317118(v45);
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_13_10(v45);
  OUTLINED_FUNCTION_24_1();
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];
  v59 = v14;
  v61 = *v15;
  v63 = v15[1];
  OUTLINED_FUNCTION_79_5(v77, v1);
  v16 = OUTLINED_FUNCTION_22_10();
  v76[3] = type metadata accessor for Expression(v16, v17, v18, v19);
  v76[4] = &protocol witness table for Expression<A>;
  v76[0] = v7;
  v76[1] = v8;
  v76[2] = v9;
  v20 = *(v3 + 40);

  v21 = OUTLINED_FUNCTION_96_1();
  v22 = v20(v21);
  v24 = v23;
  v75[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7068, &qword_1DD33BAB0);
  v75[4] = &protocol witness table for Expression<A>;
  v75[0] = v12;
  v75[1] = v11;
  v75[2] = v13;
  v25 = *(v3 + 8);
  v74[3] = v5;
  v74[4] = v25;
  __swift_allocate_boxed_opaque_existential_1(v74);
  OUTLINED_FUNCTION_10_9();
  (*(v26 + 16))();
  memset(v73, 0, sizeof(v73));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  v28 = OUTLINED_FUNCTION_89_3(v27);
  *(v28 + 16) = xmmword_1DD33C300;
  sub_1DD2855A0(v76, v28 + 32);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(v28 + 104) = &protocol witness table for Expression<A>;
  *(v28 + 72) = v22;
  *(v28 + 80) = v24;
  v30 = MEMORY[0x1E69E7CC0];
  *(v28 + 88) = MEMORY[0x1E69E7CC0];
  *(v28 + 96) = v29;
  *(v28 + 112) = 0u;
  *(v28 + 128) = 0u;
  *(v28 + 176) = v29;
  *(v28 + 184) = &protocol witness table for Expression<A>;
  *(v28 + 144) = 0;
  *(v28 + 152) = 0x4C4C554E20544F4ELL;
  *(v28 + 160) = 0xE800000000000000;
  *(v28 + 168) = v30;
  *(v28 + 192) = 0u;
  *(v28 + 208) = 0u;
  *(v28 + 224) = 0;
  sub_1DD2892A8(v75, __src, &qword_1ECCD7070, &qword_1DD33BAB8);
  if (*(&__src[1] + 1))
  {
    sub_1DD3148E8(__src, __dst);

    v31 = v61;
    sub_1DD31E784(v61, v63);

    sub_1DD31E688(__dst);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    v32 = v63;
  }

  else
  {
    OUTLINED_FUNCTION_53_6();

    v31 = v61;
    v32 = v63;
    sub_1DD31E784(v61, v63);
  }

  sub_1DD2892A8(v74, __src, &qword_1ECCD7070, &qword_1DD33BAB8);
  if (*(&__src[1] + 1))
  {
    sub_1DD3148E8(__src, __dst);
    OUTLINED_FUNCTION_3_15();
    *&v69 = v33;
    *(&v69 + 1) = v34;
    OUTLINED_FUNCTION_86_3();
    v35 = v69;
    *(v28 + 296) = v29;
    *(v28 + 304) = &protocol witness table for Expression<A>;
    sub_1DD314890(__dst, (v28 + 272), v35, *(&v35 + 1));

    __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_78_4();
  }

  sub_1DD2892A8(v73, __src, &qword_1ECCD7188, &qword_1DD33C320);
  if (*(&__src[1] + 1))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_1DD31E37C(__dst, &__dst[2] + 8);
    sub_1DD28C87C(__dst, &qword_1ECCD7190, &qword_1DD33C328);
  }

  else
  {
    OUTLINED_FUNCTION_19_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1DD3391F0;
  *(v36 + 32) = 0x4554414C4C4F43;
  *(v36 + 40) = 0xE700000000000000;
  *(v36 + 48) = v30;
  *(v36 + 56) = v29;
  *(v36 + 96) = &type metadata for Collation;
  *(v36 + 104) = &protocol witness table for Collation;
  *(v36 + 64) = &protocol witness table for Expression<A>;
  *(v36 + 72) = v31;
  *(v36 + 80) = v32;
  sub_1DD31E784(v31, v32);
  v37 = 32;
  OUTLINED_FUNCTION_24_6(v36, v38, v39, v40, v41, v42, v43, v44, v59, v61, v63, v66, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), v69, *(&v69 + 1), v70, *(&v70 + 1));
  swift_setDeallocating();
  sub_1DD313330();

  do
  {
    sub_1DD2892A8(v28 + v37, __src, &qword_1ECCD7070, &qword_1DD33BAB8);
    v69 = __src[0];
    v70 = __src[1];
    v71 = *&__src[2];
    if (*(&__src[1] + 1))
    {
      sub_1DD3148E8(&v69, __dst);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3131D4();
        v30 = v50;
      }

      v46 = *(v30 + 16);
      v45 = *(v30 + 24);
      if (v46 >= v45 >> 1)
      {
        OUTLINED_FUNCTION_45(v45);
        sub_1DD3131D4();
        v30 = v51;
      }

      *(v30 + 16) = v46 + 1;
      sub_1DD3148E8(__dst, v30 + 40 * v46 + 32);
    }

    else
    {
      OUTLINED_FUNCTION_46_8();
      sub_1DD28C87C(v47, v48, v49);
    }

    v37 += 40;
  }

  while (v37 != 392);
  swift_setDeallocating();
  sub_1DD313344();
  OUTLINED_FUNCTION_24_6(v30, v52, v53, v54, v55, v56, v57, v58, v60, v62, v64, v67, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), v69, *(&v69 + 1), v70, *(&v70 + 1));

  sub_1DD31E7A8(v31, v65);
  sub_1DD28C87C(v73, &qword_1ECCD7188, &qword_1DD33C320);
  OUTLINED_FUNCTION_56_8(v74);
  OUTLINED_FUNCTION_56_8(v75);
  __swift_destroy_boxed_opaque_existential_1(v76);
  sub_1DD317118(__src);
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_13_10(__src);
  OUTLINED_FUNCTION_24_1();
}

{
  OUTLINED_FUNCTION_23_0();
  v58 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v55 = v9;
  v12 = OUTLINED_FUNCTION_110_2(v10, v11, v9, v7, v5);
  OUTLINED_FUNCTION_1_0();
  v59 = v13;
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v53 - v15;
  v16 = *v2;
  v17 = v2[1];
  v18 = v2[2];
  v19 = v1[1];
  v54 = *v1;
  v20 = v1[2];
  v21 = *v8;
  v61 = v8[1];
  v62 = v21;
  memcpy(v77, v58, sizeof(v77));
  v57 = v12;
  v75[3] = type metadata accessor for Expression(0, v12, v22, v23);
  v75[4] = &protocol witness table for Expression<A>;
  v75[0] = v16;
  v75[1] = v17;
  v75[2] = v18;
  v24 = *(v4 + 40);

  v25 = OUTLINED_FUNCTION_95_2();
  v58 = v24(v25);
  v56 = v26;
  v74 = 2;
  if (v19)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6588, &qword_1DD339240);
    v28 = &protocol witness table for Expression<A>;
    v29 = v54;
    v30 = v54;
    v31 = v19;
    v32 = v20;
  }

  else
  {
    v32 = v20;
    v30 = v54;
    v29 = 0;
    v31 = 0;
    v20 = 0;
    v27 = 0;
    v28 = 0;
  }

  v69 = v29;
  v70 = v31;
  v71 = v20;
  v72 = v27;
  v73 = v28;
  v34 = v59;
  v33 = v60;
  v35 = v57;
  (*(v59 + 16))(v60, v55, v57);
  OUTLINED_FUNCTION_74_3(v33);
  if (v36)
  {
    sub_1DD28C838(v30, v19, v32);
    (*(v34 + 8))(v33, v35);
    v68 = 0;
    v66 = 0u;
    v67 = 0u;
  }

  else
  {
    v37 = *(v4 + 8);
    *(&v67 + 1) = v6;
    v68 = v37;
    __swift_allocate_boxed_opaque_existential_1(&v66);
    OUTLINED_FUNCTION_10_9();
    (*(v38 + 32))();
    sub_1DD28C838(v30, v19, v32);
  }

  memset(v65, 0, sizeof(v65));
  v63 = v62;
  v64 = v61;
  sub_1DD31E784(v62, v61);
  OUTLINED_FUNCTION_38_9();
  sub_1DD316BD8(v39, v40, v41, v42, v43, 0, v44, v45, v46, v65, &v63);

  sub_1DD31E798(v63, v64);
  sub_1DD28C87C(v65, &qword_1ECCD7188, &qword_1DD33C320);
  OUTLINED_FUNCTION_46_8();
  sub_1DD28C87C(v47, v48, v49);
  OUTLINED_FUNCTION_46_8();
  sub_1DD28C87C(v50, v51, v52);
  __swift_destroy_boxed_opaque_existential_1(v75);
  sub_1DD317118(v76);
  OUTLINED_FUNCTION_84_6();
  __swift_destroy_boxed_opaque_existential_1(v76);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_24_1();
}

{
  OUTLINED_FUNCTION_23_0();
  v3 = v0;
  v47 = v4;
  v6 = v5;
  v8 = v7;
  v49 = v9;
  v12 = OUTLINED_FUNCTION_110_2(v10, v11, v9, v7, v5);
  OUTLINED_FUNCTION_1_0();
  v48 = v13;
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  v17 = *v2;
  v18 = v2[1];
  v19 = v2[2];
  v20 = *v1;
  v45 = v1[1];
  v46 = v20;
  v21 = v1[2];
  v22 = *v8;
  v50 = v8[1];
  v51 = v22;
  memcpy(v62, v3, sizeof(v62));
  v60[3] = type metadata accessor for Expression(0, v12, v23, v24);
  v60[4] = &protocol witness table for Expression<A>;
  v60[0] = v17;
  v60[1] = v18;
  v60[2] = v19;
  v25 = *(v47 + 40);
  v26 = v47;

  v27 = v25(v6, v26);
  v28 = v45;
  v29 = v27;
  v31 = v30;
  v59 = 2;
  v58[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7068, &qword_1DD33BAB0);
  v58[4] = &protocol witness table for Expression<A>;
  v32 = v48;
  v58[0] = v46;
  v58[1] = v28;
  v58[2] = v21;
  (*(v48 + 16))(v16, v49, v12);
  OUTLINED_FUNCTION_74_3(v16);
  if (v33)
  {
    v34 = *(v32 + 8);

    v35 = OUTLINED_FUNCTION_31_2();
    v34(v35);
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
  }

  else
  {
    v36 = *(v26 + 8);
    *(&v56 + 1) = v6;
    v57 = v36;
    __swift_allocate_boxed_opaque_existential_1(&v55);
    OUTLINED_FUNCTION_10_9();
    (*(v37 + 32))();
  }

  memset(v54, 0, sizeof(v54));
  v52 = v51;
  v53 = v50;
  sub_1DD31E784(v51, v50);
  sub_1DD316BD8(v60, v29, v31, &v59, 1, 0, v58, &v55, v61, v54, &v52);

  sub_1DD31E798(v52, v53);
  sub_1DD28C87C(v54, &qword_1ECCD7188, &qword_1DD33C320);
  OUTLINED_FUNCTION_46_8();
  sub_1DD28C87C(v38, v39, v40);
  OUTLINED_FUNCTION_46_8();
  sub_1DD28C87C(v41, v42, v43);
  __swift_destroy_boxed_opaque_existential_1(v60);
  sub_1DD317118(v61);
  OUTLINED_FUNCTION_84_6();
  __swift_destroy_boxed_opaque_existential_1(v61);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DD319B5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA60;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x4154205245544C41;
  *(inited + 40) = 0xEB00000000454C42;
  v3 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v2;
  if (!*(v0 + 40))
  {
  }

  sub_1DD289944((inited + 72));

  *(inited + 136) = v2;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 0x5420454D414E4552;
  *(inited + 120) = 0xE90000000000004FLL;
  *(inited + 128) = v3;
  *(inited + 176) = v2;
  *(inited + 184) = &protocol witness table for Expression<A>;
  v4 = OUTLINED_FUNCTION_50_5();
  sub_1DD289A78(v4, v5, v6, v7, v8, v9, v10, v11, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55);
  *(inited + 152) = v12;
  *(inited + 160) = v13;
  *(inited + 168) = v3;
  OUTLINED_FUNCTION_24_6(inited, v13, v14, v15, v16, v17, v18, v19, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56);
  swift_setDeallocating();
  sub_1DD313330();
  OUTLINED_FUNCTION_18_3(v57);
  OUTLINED_FUNCTION_28_10();
  return OUTLINED_FUNCTION_13_10(v57);
}

void Table.createIndex(_:unique:ifNotExists:)()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v60 = *v0;
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  memcpy(v64, (v0 + 48), sizeof(v64));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA60;
  *&v61 = v8;
  *(&v61 + 1) = v7;
  v62 = v9;
  v63 = v10;
  sub_1DD319F3C(v6, v65);
  if (v4)
  {
    v12 = 0;
  }

  else
  {
    v12 = 2;
  }

  sub_1DD316784(0x5845444E49, 0xE500000000000000, v65, v12, v2);
  __swift_destroy_boxed_opaque_existential_1(v65);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = 20047;
  *(inited + 80) = 0xE200000000000000;
  v14 = MEMORY[0x1E69E7CC0];
  *(inited + 88) = MEMORY[0x1E69E7CC0];
  *(inited + 96) = v13;
  if (v10)
  {
    v7 = v10;
  }

  else
  {

    v9 = v8;
  }

  *(inited + 136) = v13;
  *(inited + 144) = &protocol witness table for Expression<A>;

  v15 = OUTLINED_FUNCTION_50_5();
  sub_1DD289A78(v15, v16, v9, v7, v17, v18, v19, v20, v56, *(&v56 + 1), v57, *(&v57 + 1), v58, v59, v60, *(&v60 + 1), v61, *(&v61 + 1), v62, v63, v64[0], v64[1], v64[2], v64[3], v64[4], v64[5]);
  v22 = v21;
  v24 = v23;

  *(inited + 112) = v22;
  *(inited + 120) = v24;
  *(inited + 128) = v14;
  *(inited + 176) = v13;
  *(inited + 184) = &protocol witness table for Expression<A>;
  sub_1DD284AFC(v6, 8236, 0xE200000000000000, v25, v26, v27, v28, v29, v56, *(&v56 + 1), v57, *(&v57 + 1), v58, v59, v60, *(&v60 + 1), v61, *(&v61 + 1), v62, v63, v64[0], v64[1], v64[2], v64[3], v64[4], v64[5]);
  sub_1DD314890(&v60, (inited + 152), 0, 0xE000000000000000);
  __swift_destroy_boxed_opaque_existential_1(&v60);
  for (i = 32; i != 192; i += 40)
  {
    OUTLINED_FUNCTION_57_4();
    sub_1DD2892A8(v31, v32, v33, v34);
    v56 = v60;
    v57 = v61;
    OUTLINED_FUNCTION_70_6();
    if (v43)
    {
      if ((OUTLINED_FUNCTION_90_4(&v56, v65) & 1) == 0)
      {
        OUTLINED_FUNCTION_9_14();
      }

      OUTLINED_FUNCTION_29_5();
      if (v44)
      {
        OUTLINED_FUNCTION_25_5();
      }

      OUTLINED_FUNCTION_80_4();
      sub_1DD3148E8(v65, v45 + 32);
    }

    else
    {
      v46 = OUTLINED_FUNCTION_60_7(v35, v36, v37, v38, v39, v40, v41, v42, v56);
      sub_1DD28C87C(v46, v47, &qword_1DD33BAB8);
    }
  }

  swift_setDeallocating();
  v48 = sub_1DD313344();
  OUTLINED_FUNCTION_19_5(v48, v49, v50, v51, v52, v53, v54, v55, v56, *(&v56 + 1), v57, *(&v57 + 1), v58, v59, v60, *(&v60 + 1), v61, *(&v61 + 1), v62, v63, v64[0], v64[1], v64[2], v64[3], v64[4], v64[5]);

  OUTLINED_FUNCTION_18_3(&v60);
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_13_10(&v60);
  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DD319F3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  memcpy(__dst, v2, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6848, &unk_1DD339948);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DD33BA70;
  *(v5 + 32) = 0x7865646E69;
  *(v5 + 40) = 0xE500000000000000;
  v6 = __dst[3];
  *(v5 + 48) = __dst[2];
  *(v5 + 56) = v6;
  *(v5 + 64) = 28271;
  *(v5 + 72) = 0xE200000000000000;
  v7 = *(a1 + 16);
  if (v7)
  {
    v40 = MEMORY[0x1E69E7CC0];

    sub_1DD28E6F4(0, v7, 0);
    v8 = v40;
    v9 = a1 + 32;
    do
    {
      sub_1DD2855A0(v9, v37);
      v10 = v38;
      v11 = v39;
      __swift_project_boxed_opaque_existential_1(v37, v38);
      (*(v11 + 8))(&v35, v10, v11);
      v12 = v35;
      v13 = v36;

      __swift_destroy_boxed_opaque_existential_1(v37);
      v40 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1DD28E6F4((v14 > 1), v15 + 1, 1);
        v8 = v40;
      }

      *(v8 + 16) = v15 + 1;
      v16 = v8 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      v9 += 40;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v37[0] = v5;
  sub_1DD2AADF8(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67E8, &qword_1DD339848);
  sub_1DD2BC1F4();
  sub_1DD336570();

  v17 = sub_1DD336640();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  v37[0] = v17;
  v37[1] = v19;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  v37[2] = 0;
  v38 = v20;

  v21 = 0;
  for (i = 0xE000000000000000; ; i = v36)
  {
    while (1)
    {
      v23 = sub_1DD336720();
      if (!v24)
      {

        sub_1DD289944(a2);
      }

      v25 = v23;
      v26 = v24;
      v27 = v23 == 34 && v24 == 0xE100000000000000;
      if (!v27 && (sub_1DD336E00() & 1) == 0)
      {
        break;
      }
    }

    result = sub_1DD336E00();
    if (result)
    {
      break;
    }

    if (v25 == 97 && v26 == 0xE100000000000000)
    {
      goto LABEL_28;
    }

    if ((sub_1DD336E00() & 1) == 0)
    {
      if (v25 == 122 && v26 == 0xE100000000000000)
      {
        goto LABEL_41;
      }

LABEL_28:
      if ((sub_1DD336E00() & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    result = sub_1DD336E00();
    if (result)
    {
      goto LABEL_45;
    }

    if (v25 == 48 && v26 == 0xE100000000000000)
    {
      goto LABEL_39;
    }

    if (sub_1DD336E00())
    {
      goto LABEL_40;
    }

    if (v25 != 57 || v26 != 0xE100000000000000)
    {
LABEL_39:
      if (sub_1DD336E00())
      {
LABEL_40:
        v35 = v21;
        v36 = i;

        v33 = 95;
        v34 = 0xE100000000000000;
        goto LABEL_42;
      }
    }

LABEL_41:
    v35 = v21;
    v36 = i;

    v33 = v25;
    v34 = v26;
LABEL_42:
    MEMORY[0x1E12AC540](v33, v34);

    v21 = v35;
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t Table.dropIndex(_:ifExists:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_60_7(a1, a2, a3, a4, a5, a6, a7, a8, v13);
  memcpy(v10, v11, 0xA8uLL);
  sub_1DD319F3C(a1, v14);
  sub_1DD31602C(0x5845444E49, 0xE500000000000000, v14, a2);
  OUTLINED_FUNCTION_28_10();
  return OUTLINED_FUNCTION_13_10(v14);
}

void sub_1DD31A3A4()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_88_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA70;
  if (!v54[24])
  {
  }

  sub_1DD289944(&v51);

  if (v7)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  sub_1DD316784(v3, v1, &v51, v11, v5 & 1);
  __swift_destroy_boxed_opaque_existential_1(&v51);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = 21313;
  *(inited + 80) = 0xE200000000000000;
  *(inited + 88) = MEMORY[0x1E69E7CC0];
  *(inited + 96) = v12;
  v13 = v9[3];
  v14 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v13);
  *(inited + 136) = v13;
  *(inited + 144) = *(v14 + 8);
  __swift_allocate_boxed_opaque_existential_1((inited + 112));
  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_39_9();
  v15();
  for (i = 32; i != 152; i += 40)
  {
    OUTLINED_FUNCTION_57_4();
    sub_1DD2892A8(v17, v18, v19, v20);
    v43 = v51;
    v44 = v52;
    OUTLINED_FUNCTION_70_6();
    if (v29)
    {
      if ((OUTLINED_FUNCTION_90_4(&v43, &v47) & 1) == 0)
      {
        OUTLINED_FUNCTION_9_14();
      }

      OUTLINED_FUNCTION_29_5();
      if (v31)
      {
        OUTLINED_FUNCTION_64_6(v30 > 1, v14);
      }

      OUTLINED_FUNCTION_80_4();
      sub_1DD3148E8(&v47, v32 + 32);
    }

    else
    {
      v33 = OUTLINED_FUNCTION_60_7(v21, v22, v23, v24, v25, v26, v27, v28, v43);
      sub_1DD28C87C(v33, v34, &qword_1DD33BAB8);
    }
  }

  swift_setDeallocating();
  v35 = sub_1DD313344();
  OUTLINED_FUNCTION_19_5(v35, v36, v37, v38, v39, v40, v41, v42, v43, *(&v43 + 1), v44, *(&v44 + 1), v45, v46, v47, *(&v47 + 1), v48, v49, v50, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, v54[0], v54[1]);

  OUTLINED_FUNCTION_18_3(&v51);
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_13_10(&v51);
  OUTLINED_FUNCTION_24_1();
}

Swift::String __swiftcall View.drop(ifExists:)(Swift::Bool ifExists)
{
  memcpy(__dst, v1, sizeof(__dst));
  if (!__dst[5])
  {
  }

  sub_1DD289944(v6);

  sub_1DD31602C(1464158550, 0xE400000000000000, v6, ifExists);
  OUTLINED_FUNCTION_28_10();
  v3 = OUTLINED_FUNCTION_13_10(v6);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

void VirtualTable.create(_:ifNotExists:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  OUTLINED_FUNCTION_88_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA70;
  if (!v45[24])
  {
  }

  sub_1DD289944(&v42);

  sub_1DD316784(0x204C415554524956, 0xED0000454C424154, &v42, 2u, v1 & 1);
  __swift_destroy_boxed_opaque_existential_1(&v42);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 72) = 0x474E495355;
  *(inited + 80) = 0xE500000000000000;
  *(inited + 136) = &type metadata for Module;
  *(inited + 144) = &protocol witness table for Module;
  *(inited + 88) = MEMORY[0x1E69E7CC0];
  *(inited + 96) = v7;
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 112) = v4;
  *(inited + 120) = v3;
  *(inited + 128) = v5;

  for (i = 32; i != 152; i += 40)
  {
    OUTLINED_FUNCTION_57_4();
    sub_1DD2892A8(v9, v10, v11, v12);
    v34 = v42;
    v35 = v43;
    OUTLINED_FUNCTION_70_6();
    if (v21)
    {
      if ((OUTLINED_FUNCTION_90_4(&v34, &v38) & 1) == 0)
      {
        OUTLINED_FUNCTION_9_14();
      }

      OUTLINED_FUNCTION_29_5();
      if (v22)
      {
        OUTLINED_FUNCTION_25_5();
      }

      OUTLINED_FUNCTION_80_4();
      sub_1DD3148E8(&v38, v23 + 32);
    }

    else
    {
      v24 = OUTLINED_FUNCTION_60_7(v13, v14, v15, v16, v17, v18, v19, v20, v34);
      sub_1DD28C87C(v24, v25, &qword_1DD33BAB8);
    }
  }

  swift_setDeallocating();
  v26 = sub_1DD313344();
  OUTLINED_FUNCTION_19_5(v26, v27, v28, v29, v30, v31, v32, v33, v34, *(&v34 + 1), v35, *(&v35 + 1), v36, v37, v38, *(&v38 + 1), v39, v40, v41, v42, *(&v42 + 1), v43, *(&v43 + 1), v44, v45[0], v45[1]);

  OUTLINED_FUNCTION_18_3(&v42);
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_13_10(&v42);
  OUTLINED_FUNCTION_24_1();
}

uint64_t VirtualTable.rename(_:)(void *__src)
{
  memcpy(v3, __src, sizeof(v3));
  memcpy(__dst, v1, sizeof(__dst));
  return sub_1DD319B5C();
}

uint64_t TableBuilder.column<A>(_:unique:check:defaultValue:collate:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_62_5();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v7 = v6[1];
  v28 = *v6;
  v8 = v6[2];
  v30 = v9[1];
  v31 = *v9;
  OUTLINED_FUNCTION_61_6(v10);
  v12 = *(v11 + 40);

  v13 = OUTLINED_FUNCTION_96_1();
  v29 = v12(v13);
  v15 = v14;
  v37[47] = 2;
  if (v4)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6588, &qword_1DD339240);
    v17 = &protocol witness table for Expression<A>;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_0_16();
  }

  OUTLINED_FUNCTION_6_13(v16, v17);
  v18 = OUTLINED_FUNCTION_93_2();
  v35 = OUTLINED_FUNCTION_65_5(v18, v19, v20, v21);
  v36 = &protocol witness table for Expression<A>;
  v34[0] = v28;
  v34[1] = v7;
  v34[2] = v8;
  memset(v33, 0, sizeof(v33));
  sub_1DD28C838(v3, v4, v5);

  sub_1DD31E784(v31, v30);
  v22 = OUTLINED_FUNCTION_2_8();
  sub_1DD31E7BC(v22, v29, v15, v23, 1, a2 & 1, v37, v34, v25, v26, v27, v35, &protocol witness table for Expression<A>);

  sub_1DD31E798(v31, v30);
  sub_1DD28C87C(v33, &qword_1ECCD7188, &qword_1DD33C320);
  OUTLINED_FUNCTION_56_8(v34);
  OUTLINED_FUNCTION_17_11();
}

uint64_t TableBuilder.primaryKey<A>(_:)(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  v7 = OUTLINED_FUNCTION_104_2(inited, xmmword_1DD339380);
  inited[3].n128_u64[1] = type metadata accessor for Expression(v7, a2, v8, v9);
  inited[4].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[2].n128_u64[0] = v4;
  inited[2].n128_u64[1] = v3;
  inited[3].n128_u64[0] = v5;

  OUTLINED_FUNCTION_8_11();
  sub_1DD31D8B0();
  swift_setDeallocating();
  return sub_1DD313330();
}

uint64_t TableBuilder.primaryKey<A, B>(_:_:)(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  v11 = OUTLINED_FUNCTION_104_2(inited, xmmword_1DD3391F0);
  inited[3].n128_u64[1] = type metadata accessor for Expression(v11, a3, v12, v13);
  inited[4].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[2].n128_u64[0] = v5;
  inited[2].n128_u64[1] = v4;
  inited[3].n128_u64[0] = v6;
  v14 = OUTLINED_FUNCTION_83_0();
  inited[6].n128_u64[0] = type metadata accessor for Expression(v14, v15, v16, v17);
  inited[6].n128_u64[1] = &protocol witness table for Expression<A>;
  inited[4].n128_u64[1] = v8;
  inited[5].n128_u64[0] = v7;
  inited[5].n128_u64[1] = v9;

  OUTLINED_FUNCTION_8_11();
  sub_1DD31D8B0();
  swift_setDeallocating();
  return sub_1DD313330();
}

uint64_t TableBuilder.primaryKey<A, B, C>(_:_:_:)(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v11 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v13 = a3[1];
  v25 = *a3;
  v14 = a3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  v16 = OUTLINED_FUNCTION_104_2(inited, xmmword_1DD33BA70);
  inited[3].n128_u64[1] = type metadata accessor for Expression(v16, a4, v17, v18);
  inited[4].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[2].n128_u64[0] = v7;
  inited[2].n128_u64[1] = v8;
  inited[3].n128_u64[0] = v9;
  inited[6].n128_u64[0] = type metadata accessor for Expression(0, a5, v19, v20);
  inited[6].n128_u64[1] = &protocol witness table for Expression<A>;
  inited[4].n128_u64[1] = v11;
  inited[5].n128_u64[0] = v10;
  inited[5].n128_u64[1] = v12;
  inited[8].n128_u64[1] = type metadata accessor for Expression(0, a6, v21, v22);
  inited[9].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[7].n128_u64[0] = v25;
  inited[7].n128_u64[1] = v13;
  inited[8].n128_u64[0] = v14;

  OUTLINED_FUNCTION_8_11();
  sub_1DD31D8B0();
  swift_setDeallocating();
  return sub_1DD313330();
}

void TableBuilder.primaryKey<A, B, C, D>(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  OUTLINED_FUNCTION_43_6();
  v87 = v54;
  v81 = v55;
  v57 = v56;
  v59 = *v58;
  v60 = v58[1];
  v61 = v58[2];
  v63 = *v62;
  v64 = v62[1];
  v65 = v62[2];
  v67 = v66[1];
  v82 = *v66;
  v83 = v68;
  v69 = v66[2];
  v84 = v70[1];
  v85 = *v70;
  v86 = v70[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  v72 = OUTLINED_FUNCTION_104_2(inited, xmmword_1DD33BA60);
  inited[3].n128_u64[1] = type metadata accessor for Expression(v72, v57, v73, v74);
  inited[4].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[2].n128_u64[0] = v59;
  inited[2].n128_u64[1] = v60;
  inited[3].n128_u64[0] = v61;
  inited[6].n128_u64[0] = type metadata accessor for Expression(0, v81, v75, v76);
  inited[6].n128_u64[1] = &protocol witness table for Expression<A>;
  inited[4].n128_u64[1] = v63;
  inited[5].n128_u64[0] = v64;
  inited[5].n128_u64[1] = v65;
  inited[8].n128_u64[1] = type metadata accessor for Expression(0, v83, v77, v78);
  inited[9].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[7].n128_u64[0] = v82;
  inited[7].n128_u64[1] = v67;
  inited[8].n128_u64[0] = v69;
  inited[11].n128_u64[0] = type metadata accessor for Expression(0, v87, v79, v80);
  inited[11].n128_u64[1] = &protocol witness table for Expression<A>;
  inited[9].n128_u64[1] = v85;
  inited[10].n128_u64[0] = v84;
  inited[10].n128_u64[1] = v86;

  OUTLINED_FUNCTION_8_11();
  sub_1DD31D8B0();
  swift_setDeallocating();
  sub_1DD313330();
  OUTLINED_FUNCTION_42_7();
}

uint64_t sub_1DD31D8B0()
{
  sub_1DD329390(v3);
  swift_beginAccess();
  sub_1DD313358();
  OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_82_3();
  sub_1DD3148E8(v3, v1 + 32);
  *(v0 + 16) = v0 + 16;
  return swift_endAccess();
}

uint64_t TableBuilder.check(_:)(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = v2;

  TableBuilder.check(_:)(v4);
}

{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7068, &qword_1DD33BAB0);
  v16 = &protocol witness table for Expression<A>;
  v12 = v4;
  v13 = v3;
  v14 = v5;
  *&v17 = 0x4B43454843;
  *(&v17 + 1) = 0xE500000000000000;

  OUTLINED_FUNCTION_86_3();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  v19 = &protocol witness table for Expression<A>;
  OUTLINED_FUNCTION_46_8();
  sub_1DD314890(v6, v9, v7, v8);

  __swift_destroy_boxed_opaque_existential_1(&v12);
  swift_beginAccess();
  sub_1DD313358();
  OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_82_3();
  OUTLINED_FUNCTION_111_2(v10, v12, v13, v14, v15, v16, v17);
  *(v2 + 16) = v2 + 16;
  return swift_endAccess();
}

RRSQLite::TableBuilder::Dependency_optional __swiftcall TableBuilder.Dependency.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD336D80();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TableBuilder.Dependency.rawValue.getter()
{
  result = 0x4F49544341204F4ELL;
  switch(*v0)
  {
    case 1:
      result = 0x5443495254534552;
      break;
    case 2:
      result = 0x4C4C554E20544553;
      break;
    case 3:
      result = 0x4146454420544553;
      break;
    case 4:
      result = 0x45444143534143;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD31DBC8@<X0>(uint64_t *a1@<X8>)
{
  result = TableBuilder.Dependency.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TableBuilder.foreignKey<A>(_:references:_:update:delete:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = type metadata accessor for Expression(0, a6, a3, a4);

  OUTLINED_FUNCTION_58_7();
  sub_1DD31E904(v7, v8, v9, v10, v11, v12, v6, v6, v14, v15);
}

{
  v7 = sub_1DD336AD0();
  v11 = OUTLINED_FUNCTION_65_5(v7, v8, v9, v10);
  v14 = type metadata accessor for Expression(0, a6, v12, v13);

  OUTLINED_FUNCTION_58_7();
  sub_1DD31E904(v15, v16, v17, v18, v19, v20, v11, v14, v22, v23);
}

void TableBuilder.foreignKey<A, B>(_:references:_:update:delete:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_23_0();
  v94 = v21;
  v23 = v22;
  v80 = v24;
  v27 = *v25;
  v26 = v25[1];
  v28 = v25[2];
  v30 = v29[1];
  v73 = *v29;
  v31 = v29[2];
  v76 = v32[1];
  v78 = v32[2];
  v82 = *v32;
  v84 = v33[1];
  v86 = v33[2];
  v88 = *v33;
  LODWORD(v90) = *v35;
  HIDWORD(v90) = *v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD3391F0;

  v39 = type metadata accessor for Expression(0, v23, v37, v38);
  *(inited + 56) = v39;
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v27;
  *(inited + 40) = v26;
  *(inited + 48) = v28;
  v42 = type metadata accessor for Expression(0, a21, v40, v41);
  *(inited + 96) = v42;
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = v73;
  *(inited + 80) = v30;
  *(inited + 88) = v31;

  OUTLINED_FUNCTION_67_6(v43, v44, v45, v46, v47, v48, v49, v50, v67, v69, v71, v73, 2, 4, v76, v78, v80, v82, v84, v86, v88, v90, v94, v97, v98, v99);
  swift_setDeallocating();
  sub_1DD313330();
  sub_1DD2855A0(v81, v103);
  v51 = swift_initStackObject();
  *(v51 + 16) = v75;

  *(v51 + 32) = v83;
  *(v51 + 40) = v77;
  *(v51 + 48) = v52;
  *(v51 + 56) = v39;
  *(v51 + 96) = v42;
  *(v51 + 104) = &protocol witness table for Expression<A>;
  *(v51 + 64) = &protocol witness table for Expression<A>;
  *(v51 + 72) = v89;
  *(v51 + 80) = v85;
  *(v51 + 88) = v87;

  OUTLINED_FUNCTION_67_6(v53, v54, v55, v56, v57, v58, v59, v60, v68, v70, v72, v74, v75, *(&v75 + 1), v77, v79, v81, v83, v85, v87, v89, v91, v95, v97, v98, v99);
  swift_setDeallocating();
  sub_1DD313330();
  sub_1DD2892A8(v103, &v98, &qword_1ECCD7190, &qword_1DD33C328);
  HIBYTE(v97) = v93;
  BYTE6(v97) = v92;
  v61 = v105;
  v62 = v106;
  v63 = __swift_project_boxed_opaque_existential_1(v104, v105);
  v64 = v101;
  v65 = v102;
  v66 = __swift_project_boxed_opaque_existential_1(v100, v101);
  sub_1DD31E904(v63, &v98, v66, &v97 + 7, &v97 + 6, v96, v61, v64, v62, v65);
  OUTLINED_FUNCTION_56_8(v103);
  __swift_destroy_boxed_opaque_existential_1(v104);
  __swift_destroy_boxed_opaque_existential_1(v100);
  __swift_destroy_boxed_opaque_existential_1(&v98);
  OUTLINED_FUNCTION_24_1();
}

void TableBuilder.foreignKey<A, B, C>(_:references:_:update:delete:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_23_0();
  v106 = v24;
  v91 = v25;
  v27 = *v26;
  v28 = v26[1];
  v29 = v26[2];
  v31 = v30[1];
  v75 = *v30;
  v32 = v30[2];
  v85 = *v33;
  v79 = v33[1];
  v81 = v33[2];
  v35 = v34[1];
  v36 = v34[2];
  v38 = v37[1];
  v93 = *v34;
  v95 = v37[2];
  v97 = *v37;
  v99 = v39[1];
  v101 = v39[2];
  v103 = *v39;
  v104 = *a21;
  v105 = *v40;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA70;

  v83 = type metadata accessor for Expression(0, a22, v42, v43);
  *(inited + 56) = v83;
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v27;
  *(inited + 40) = v28;
  *(inited + 48) = v29;

  v77 = type metadata accessor for Expression(0, a23, v44, v45);
  *(inited + 96) = v77;
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = v75;
  *(inited + 80) = v31;
  *(inited + 88) = v32;

  v48 = type metadata accessor for Expression(0, a24, v46, v47);
  *(inited + 136) = v48;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = v85;
  *(inited + 120) = v79;
  *(inited + 128) = v81;
  OUTLINED_FUNCTION_67_6(v48, v49, v50, v51, v52, v53, v54, v55, v71, v73, v75, v77, v79, v81, v83, v85, 3, 6, a24, v89, v91, v93, v95, v97, v99, v101);
  swift_setDeallocating();
  sub_1DD313330();
  sub_1DD2855A0(v92, v113);
  v56 = swift_initStackObject();
  *(v56 + 16) = v87;

  *(v56 + 32) = v94;
  *(v56 + 40) = v35;
  *(v56 + 56) = v84;
  *(v56 + 64) = &protocol witness table for Expression<A>;
  *(v56 + 48) = v36;

  *(v56 + 72) = v98;
  *(v56 + 80) = v38;
  *(v56 + 96) = v78;
  *(v56 + 104) = &protocol witness table for Expression<A>;
  *(v56 + 88) = v96;

  *(v56 + 136) = v48;
  *(v56 + 144) = &protocol witness table for Expression<A>;
  *(v56 + 112) = v103;
  *(v56 + 120) = v100;
  *(v56 + 128) = v102;
  OUTLINED_FUNCTION_67_6(v57, v58, v59, v60, v61, v62, v63, v64, v72, v74, v76, v78, v80, v82, v84, v86, v87, *(&v87 + 1), v88, v90, v92, v94, v96, v98, v100, v102);
  swift_setDeallocating();
  sub_1DD313330();
  sub_1DD2892A8(v113, v109, &qword_1ECCD7190, &qword_1DD33C328);
  v108 = v105;
  v107 = v104;
  v65 = v115;
  v66 = v116;
  v67 = __swift_project_boxed_opaque_existential_1(v114, v115);
  v68 = v111;
  v69 = v112;
  v70 = __swift_project_boxed_opaque_existential_1(v110, v111);
  sub_1DD31E904(v67, v109, v70, &v108, &v107, v106, v65, v68, v66, v69);
  OUTLINED_FUNCTION_56_8(v113);
  __swift_destroy_boxed_opaque_existential_1(v114);
  __swift_destroy_boxed_opaque_existential_1(v110);
  __swift_destroy_boxed_opaque_existential_1(v109);
  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DD31E37C(uint64_t a1, uint64_t a2)
{
  sub_1DD2855A0(a1, v31);
  sub_1DD2855A0(a2, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA70;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x434E455245464552;
  *(inited + 40) = 0xEA00000000005345;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v4;
  v5 = v32;
  v6 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  sub_1DD311684(0, v5, v6, (inited + 72));
  *(inited + 136) = v4;
  *(inited + 144) = &protocol witness table for Expression<A>;
  sub_1DD314890(v34, (inited + 112), 0, 0xE000000000000000);
  sub_1DD284AFC(inited, 32, 0xE100000000000000, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  swift_setDeallocating();
  sub_1DD313330();
  return sub_1DD28C87C(v31, &qword_1ECCD7190, &qword_1DD33C328);
}

uint64_t TableBuilder.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t PrimaryKey.hashValue.getter()
{
  v1 = *v0;
  sub_1DD336EC0();
  MEMORY[0x1E12ACD20](v1);
  return sub_1DD336EF0();
}

uint64_t sub_1DD31E688(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD3391F0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x4B43454843;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v3;
  sub_1DD2855A0(a1, inited + 72);
  sub_1DD284AFC(inited, 32, 0xE100000000000000, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  swift_setDeallocating();
  return sub_1DD313330();
}

uint64_t sub_1DD31E784(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_1DD31E798(uint64_t result, unint64_t a2)
{
  if (a2 != 3)
  {
    return sub_1DD31E7A8(result, a2);
  }

  return result;
}

uint64_t sub_1DD31E7A8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_1DD31E7BC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, _OWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v28[3] = a12;
  v28[4] = a13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a12 - 8) + 16))(boxed_opaque_existential_1, a1, a12);
  v26 = *a4;
  *v25 = *a10;
  sub_1DD316BD8(v28, a2, a3, &v26, a5, a6, a7, a8, v27, a9, v25);
  swift_beginAccess();
  sub_1DD313358();
  v20 = *(*(a11 + 16) + 16);
  sub_1DD31311C(v20);
  v21 = *(a11 + 16);
  *(v21 + 16) = v20 + 1;
  sub_1DD3148E8(v27, v21 + 40 * v20 + 32);
  *(a11 + 16) = v21;
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_1DD31E904(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v59[3] = a7;
  v59[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a1, a7);
  v58[3] = a8;
  v58[4] = a10;
  v19 = __swift_allocate_boxed_opaque_existential_1(v58);
  (*(*(a8 - 8) + 16))(v19, a3, a8);
  sub_1DD2855A0(a2, v56);
  sub_1DD2855A0(v58, &v57);
  v20 = *a4;
  v21 = *a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA60;
  *&v52 = 0x204E474945524F46;
  *(&v52 + 1) = 0xEB0000000059454BLL;
  MEMORY[0x1E12AC540](32, 0xE100000000000000);
  v23 = v52;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 56) = v24;
  *(inited + 64) = &protocol witness table for Expression<A>;
  sub_1DD314890(v59, (inited + 32), v23, *(&v23 + 1));

  sub_1DD2892A8(v56, &v52, &qword_1ECCD7190, &qword_1DD33C328);
  sub_1DD31E37C(&v52, v55);
  __swift_destroy_boxed_opaque_existential_1(v55);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  v25 = MEMORY[0x1E69E7CC0];
  if (v20 == 5)
  {
    *(inited + 144) = 0;
    *(inited + 112) = 0u;
    *(inited + 128) = 0u;
  }

  else
  {
    v26 = 0x4F49544341204F4ELL;
    *&v52 = 0x5441445055204E4FLL;
    *(&v52 + 1) = 0xEA00000000002045;
    v27 = 0xE90000000000004ELL;
    switch(v20)
    {
      case 1:
        v27 = 0xE800000000000000;
        v26 = 0x5443495254534552;
        break;
      case 2:
        v27 = 0xE800000000000000;
        v26 = 0x4C4C554E20544553;
        break;
      case 3:
        v26 = 0x4146454420544553;
        v27 = 0xEB00000000544C55;
        break;
      case 4:
        v27 = 0xE700000000000000;
        v26 = 0x45444143534143;
        break;
      default:
        break;
    }

    MEMORY[0x1E12AC540](v26, v27);

    v28 = v52;
    *(inited + 136) = v24;
    *(inited + 144) = &protocol witness table for Expression<A>;
    *(inited + 112) = v28;
    *(inited + 128) = v25;
  }

  if (v21 == 5)
  {
    *(inited + 184) = 0;
    *(inited + 168) = 0u;
    *(inited + 152) = 0u;
  }

  else
  {
    v29 = 0x4F49544341204F4ELL;
    *&v52 = 0x54454C4544204E4FLL;
    *(&v52 + 1) = 0xEA00000000002045;
    v30 = 0xE90000000000004ELL;
    switch(v21)
    {
      case 1:
        v30 = 0xE800000000000000;
        v29 = 0x5443495254534552;
        break;
      case 2:
        v30 = 0xE800000000000000;
        v29 = 0x4C4C554E20544553;
        break;
      case 3:
        v29 = 0x4146454420544553;
        v30 = 0xEB00000000544C55;
        break;
      case 4:
        v30 = 0xE700000000000000;
        v29 = 0x45444143534143;
        break;
      default:
        break;
    }

    MEMORY[0x1E12AC540](v29, v30);

    v31 = v52;
    *(inited + 176) = v24;
    *(inited + 184) = &protocol witness table for Expression<A>;
    *(inited + 152) = v31;
    *(inited + 168) = v25;
  }

  v32 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 192; i += 40)
  {
    sub_1DD2892A8(inited + i, &v52, &qword_1ECCD7070, &qword_1DD33BAB8);
    v45 = v52;
    v46 = v53;
    v47 = v54;
    if (*(&v53 + 1))
    {
      sub_1DD3148E8(&v45, &v48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3131D4();
        v32 = v35;
      }

      v34 = *(v32 + 16);
      if (v34 >= *(v32 + 24) >> 1)
      {
        sub_1DD3131D4();
        v32 = v36;
      }

      *(v32 + 16) = v34 + 1;
      sub_1DD3148E8(&v48, v32 + 40 * v34 + 32);
    }

    else
    {
      sub_1DD28C87C(&v45, &qword_1ECCD7070, &qword_1DD33BAB8);
    }
  }

  swift_setDeallocating();
  sub_1DD313344();
  sub_1DD284AFC(v32, 32, 0xE100000000000000, v37, v38, v39, v40, v41, v45, *(&v45 + 1), v46, *(&v46 + 1), v47, v48, *(&v48 + 1), v49, v50, v51, v52, *(&v52 + 1), v53, *(&v53 + 1), v54, v55[0], v55[1], v55[2]);

  swift_beginAccess();
  sub_1DD313358();
  v42 = *(*(a6 + 16) + 16);
  sub_1DD31311C(v42);
  v43 = *(a6 + 16);
  *(v43 + 16) = v42 + 1;
  sub_1DD3148E8(&v52, v43 + 40 * v42 + 32);
  *(a6 + 16) = v43;
  swift_endAccess();
  sub_1DD28C87C(v56, &qword_1ECCD7190, &qword_1DD33C328);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return __swift_destroy_boxed_opaque_existential_1(v58);
}

unint64_t sub_1DD31EE84()
{
  result = qword_1ECCD7198;
  if (!qword_1ECCD7198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD7198);
  }

  return result;
}

unint64_t sub_1DD31EEDC()
{
  result = qword_1ECCD71A0;
  if (!qword_1ECCD71A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD71A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TableBuilder.Dependency(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PrimaryKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PrimaryKey(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DD31F198(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return sub_1DD31E784(a1, a2);
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_91_3()
{
}

uint64_t OUTLINED_FUNCTION_92_3(uint64_t a1)
{

  return sub_1DD31E37C(a1, v1 + 40);
}

double OUTLINED_FUNCTION_98_3()
{
  *(v0 + 264) = 0;
  result = 0.0;
  *(v0 + 248) = 0u;
  *(v0 + 232) = 0u;
  return result;
}

double OUTLINED_FUNCTION_99_3()
{
  result = 0.0;
  v0[8] = 0u;
  v0[9] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[5] = 0u;
  return result;
}

void OUTLINED_FUNCTION_108_2()
{
  v2 = *(*(v0 + 16) + 16);

  sub_1DD31311C(v2);
}

uint64_t OUTLINED_FUNCTION_111_2@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 a7)
{

  return sub_1DD3148E8(&a7, a1 + 32);
}

Swift::String __swiftcall Blob.toHex()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1DD28E6F4(0, v2, 0);
    v3 = (v1 + 32);
    sub_1DD31F5E4();
    do
    {
      v4 = *v3++;
      v5 = v4 >= 0x10;
      if (v4 >= 0x10)
      {
        v6 = 0;
      }

      else
      {
        v6 = 48;
      }

      if (v5)
      {
        v7 = 0xE000000000000000;
      }

      else
      {
        v7 = 0xE100000000000000;
      }

      v8 = sub_1DD336760();
      v10 = v9;

      MEMORY[0x1E12AC540](v8, v10);

      v12 = *(v20 + 16);
      v11 = *(v20 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1DD28E6F4((v11 > 1), v12 + 1, 1);
      }

      *(v20 + 16) = v12 + 1;
      v13 = v20 + 16 * v12;
      *(v13 + 32) = v6;
      *(v13 + 40) = v7;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67E8, &qword_1DD339848);
  sub_1DD2BC1F4();
  v14 = sub_1DD336570();
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

uint64_t Blob.description.getter()
{
  countAndFlagsBits = Blob.toHex()()._countAndFlagsBits;
  MEMORY[0x1E12AC540](countAndFlagsBits);

  MEMORY[0x1E12AC540](39, 0xE100000000000000);
  return 10104;
}

uint64_t sub_1DD31F50C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DD31F568(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6848, &unk_1DD339948);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

unint64_t sub_1DD31F5E4()
{
  result = qword_1ECCD71A8;
  if (!qword_1ECCD71A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD71A8);
  }

  return result;
}

uint64_t sub_1DD31F638(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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