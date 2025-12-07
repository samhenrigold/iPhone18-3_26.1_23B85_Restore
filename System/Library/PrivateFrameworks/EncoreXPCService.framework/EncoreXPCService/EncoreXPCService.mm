uint64_t sub_24A037528(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_24A037574()
{
  result = qword_28131A078;
  if (qword_28131A078 || (v1 = [objc_allocWithZone(type metadata accessor for EncoreService(0)) init], v2 = qword_28131A078, qword_28131A078 = v1, v2, (result = qword_28131A078) != 0))
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24A0375D8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16EncoreXPCService12AsyncService_events;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30A60, &unk_24A0471E0);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

__n128 sub_24A0376AC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

void *sub_24A0376D0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_24A037728@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_24A037764@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27EF30A70;
  return result;
}

uint64_t sub_24A0377B0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27EF30A70 = v1;
  return result;
}

void *_s16EncoreXPCService11ServiceNameVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_24A037844()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_24A037884@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___EncoreService_endpoint;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_24A0378F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24A046290();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24A03799C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A046290();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A037A44()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A037A8C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A037AC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E00, &qword_24A047920);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24A037B58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A037B90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A037BCC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t static AnySynchronizableState.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v9 = a1;
  swift_unknownObjectRetain();
  v6 = swift_readAtKeyPath();
  (*(*(*(v5 + *MEMORY[0x277D84568] + 8) - 8) + 16))(a4);
  v6(v8, 0);
  return swift_unknownObjectRelease();
}

uint64_t sub_24A037D84(uint64_t a1)
{
  MEMORY[0x28223BE20](a1, a1);
  v2 = &v9 - v1;
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  (*(v7 + 16))(&v9 - v1);
  swift_unknownObjectRetain();

  return static AnySynchronizableState.subscript.setter(v2, v4, v5, v6);
}

uint64_t static AnySynchronizableState.subscript.setter(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v97 = a1;
  v95 = a3;
  v6 = *(*a4 + *MEMORY[0x277D84568] + 8);
  v7 = *(v6 + 32);
  v8 = (*a3 + *MEMORY[0x277D84568]);
  v9 = *v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness, v10);
  v78[1] = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v81 = v78 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v88 = v78 - v17;
  v86 = v7;
  v92 = *(v7 + 8);
  v91 = swift_getAssociatedTypeWitness();
  v80 = *(v91 - 8);
  v19 = MEMORY[0x28223BE20](v91, v18);
  v79 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v23 = v8[1];
  v24 = *(v23 - 8);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = v78 - v27;
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v26, v30);
  v32 = v78 - v31;
  v98[0] = a2;
  swift_unknownObjectRetain();

  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  (*(v24 + 16))(v28, v32, v23);
  v33 = *(v29 + 8);
  v82 = v32;
  v84 = v29 + 8;
  v83 = v33;
  v33(v32, v6);
  v85 = v6;
  LOBYTE(v32) = sub_24A046370();
  v34 = *(v24 + 8);
  v96 = v23;
  v93 = v34;
  v94 = v24 + 8;
  v34(v28, v23);
  if (v32)
  {

    if (qword_28131A040 != -1)
    {
      swift_once();
    }

    v35 = sub_24A0462E0();
    __swift_project_value_buffer(v35, qword_28131A090);
    v36 = sub_24A0462D0();
    v37 = sub_24A046530();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v97;
    if (v38)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_24A036000, v36, v37, "#AnySynchronizableState: Instance value is already set to newValue. Skipping.", v40, 2u);
      MEMORY[0x24C20E160](v40, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v67 = v39;
    return v93(v67, v96);
  }

  v89 = a4;
  sub_24A046300();
  sub_24A046320();
  v41 = v91;
  v42 = a2;
  if (!swift_dynamicCast())
  {

    if (qword_28131A040 != -1)
    {
      swift_once();
    }

    v68 = sub_24A0462E0();
    __swift_project_value_buffer(v68, qword_28131A090);
    swift_unknownObjectRetain();
    v69 = sub_24A0462D0();
    v70 = sub_24A046540();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v98[0] = v72;
      *v71 = 136315138;
      v73 = v79;
      sub_24A046300();
      swift_getDynamicType();
      (*(v80 + 8))(v73, v41);
      v74 = sub_24A046790();
      v76 = sub_24A0391F4(v74, v75, v98);

      *(v71 + 4) = v76;
      _os_log_impl(&dword_24A036000, v69, v70, "#AnySynchronizableState: Failed to cast publisher; unexpected type %s. Not updating instance value.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x24C20E160](v72, -1, -1);
      MEMORY[0x24C20E160](v71, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v67 = v97;
    return v93(v67, v96);
  }

  v92 = v9;
  v43 = v98[0];
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v44 = sub_24A0462E0();
  __swift_project_value_buffer(v44, qword_28131A090);
  v45 = sub_24A0462D0();
  v46 = sub_24A046530();
  v47 = os_log_type_enabled(v45, v46);
  v48 = v97;
  if (v47)
  {
    v49 = v97;
    v50 = v42;
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_24A036000, v45, v46, "#AnySynchronizableState: Publishing change to instance", v51, 2u);
    v52 = v51;
    v42 = v50;
    v48 = v49;
    MEMORY[0x24C20E160](v52, -1, -1);
  }

  v91 = v43;
  sub_24A046310();
  v98[4] = v42;
  swift_unknownObjectRetain();
  v53 = swift_modifyAtReferenceWritableKeyPath();
  (*(v24 + 24))(v54, v48, v96);
  v53(v98, 0);
  swift_unknownObjectRelease();
  v55 = sub_24A0462D0();
  v56 = sub_24A046530();
  v57 = os_log_type_enabled(v55, v56);
  v58 = AssociatedTypeWitness;
  if (v57)
  {
    v59 = AssociatedTypeWitness;
    v60 = v42;
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_24A036000, v55, v56, "#AnySynchronizableState: Property value updated to newValue. Attempting to publish to SnippetService.", v61, 2u);
    v62 = v61;
    v42 = v60;
    v58 = v59;
    MEMORY[0x24C20E160](v62, -1, -1);
  }

  v98[0] = v42;
  swift_unknownObjectRetain();
  v63 = v82;
  swift_getAtKeyPath();
  swift_unknownObjectRelease();

  v64 = v85;
  v65 = *&v63[*(v85 + 52)];

  v83(v63, v64);
  v66 = v88;
  v65(v48);

  SynchronizableObject.publish(change:)(v66, v92, v86);
  swift_unknownObjectRelease();

  v93(v48, v96);
  return (*(v87 + 8))(v66, v58);
}

void (*static AnySynchronizableState.subscript.modify(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a3;
  v9[2] = a4;
  *v9 = a2;
  v11 = *(*a3 + *MEMORY[0x277D84568] + 8);
  v9[3] = v11;
  v12 = *(v11 - 8);
  v9[4] = v12;
  v13 = *(v12 + 64);
  if (v8)
  {
    v9[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(v13);
    v14 = malloc(v13);
  }

  v10[6] = v14;
  static AnySynchronizableState.subscript.getter(a2, a3, v14);
  return sub_24A038C28;
}

void sub_24A038C28(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v8 = v2[1];
    v7 = v2[2];
    v9 = *v2;
    (*(v6 + 16))((*a1)[5], v4, v5);

    swift_unknownObjectRetain();
    static AnySynchronizableState.subscript.setter(v3, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v11 = v2[1];
    v10 = v2[2];
    v12 = *v2;

    swift_unknownObjectRetain();
    static AnySynchronizableState.subscript.setter(v4, v12, v11, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_24A038D68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v7[0] = *(a1 + a2 - 32);
  v7[1] = v4;
  v5 = type metadata accessor for AnySynchronizableState(0, v7);
  return AnySynchronizableState.wrappedValue.getter(v5, a3);
}

uint64_t sub_24A038DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 32);
  v5 = *(a3 + a4 - 8);
  v11 = *(a3 + a4 - 24);
  MEMORY[0x28223BE20](a1, a1);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6);
  v12 = v4;
  v13 = v11;
  v14 = v5;
  v9 = type metadata accessor for AnySynchronizableState(0, &v12);
  return AnySynchronizableState.wrappedValue.setter(v7, v9);
}

void (*AnySynchronizableState.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *(a2 + 24);
  v6[1] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v6[2] = v9;
  v6[3] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  (*(v10 + 16))();
  return sub_24A039004;
}

void sub_24A039004(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 32), v4, v7);
    (*(v5 + 40))(v8, v3, v7);
    (*(v6 + 8))(v4, v7);
  }

  else
  {
    (*(v2[2] + 40))(*v2, v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t AnySynchronizableState.init(wrappedValue:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a5 - 8) + 32))(a8, a1, a5);
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  result = type metadata accessor for AnySynchronizableState(0, v17);
  v16 = (a8 + *(result + 52));
  *v16 = a2;
  v16[1] = a3;
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

unint64_t sub_24A0391F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24A039A2C(v11, 0, 0, 1, a1, a2);
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
    sub_24A039B38(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_24A03932C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_24A0393C8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = v10[1];
    v12 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v10;
    v12[1] = v11;
  }

  return v3;
}

uint64_t sub_24A0394BC(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 24) - 8) + 8))();
}

uint64_t sub_24A03952C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  return a1;
}

uint64_t sub_24A0395AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  return a1;
}

uint64_t sub_24A039638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_24A0396B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_24A039738(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_24A039874(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_24A039A2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24A039B94(a5, a6);
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
    result = sub_24A046660();
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

uint64_t sub_24A039B38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_24A039B94(uint64_t a1, unint64_t a2)
{
  v3 = sub_24A039BE0(a1, a2);
  sub_24A039D10(&unk_285D2CCF8);
  return v3;
}

void *sub_24A039BE0(uint64_t a1, unint64_t a2)
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

  v6 = sub_24A039DFC(v5, 0);
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

  result = sub_24A046660();
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
        v10 = sub_24A046410();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24A039DFC(v10, 0);
        result = sub_24A046620();
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

uint64_t sub_24A039D10(uint64_t result)
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

  result = sub_24A039E70(result, v11, 1, v3);
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

void *sub_24A039DFC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30A58, &qword_24A0471C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24A039E70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30A58, &qword_24A0471C8);
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

uint64_t sub_24A039FB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16EncoreXPCService12AsyncService_events;
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30A60, &unk_24A0471E0);
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_24A03A048(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30A60, &unk_24A0471E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC16EncoreXPCService12AsyncService_events;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

id sub_24A03A168()
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30A68, &qword_24A047218);
  v1 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v2);
  v4 = &v19 - v3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30A60, &unk_24A0471E0);
  v5 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v6);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30DD0, &unk_24A047220);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC16EncoreXPCService12AsyncService_continuation;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF30C70, &qword_24A047210);
  v15 = *(*(v14 - 8) + 56);
  v15(&v0[v13], 1, 1, v14);
  v15(v12, 1, 1, v14);
  v21 = v12;
  type metadata accessor for EncoreEvent();
  (*(v1 + 104))(v4, *MEMORY[0x277D85778], v19);
  sub_24A0464D0();
  (*(v5 + 32))(&v0[OBJC_IVAR____TtC16EncoreXPCService12AsyncService_events], v8, v20);
  swift_beginAccess();
  sub_24A03A838(v12, &v0[v13]);
  swift_endAccess();
  v16 = type metadata accessor for AsyncService(0);
  v22.receiver = v0;
  v22.super_class = v16;
  v17 = objc_msgSendSuper2(&v22, sel_init);
  sub_24A03A8A8(v12);
  return v17;
}

uint64_t sub_24A03A444(uint64_t a1, uint64_t a2)
{
  sub_24A03A8A8(a2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF30C70, &qword_24A047210);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

id AsyncService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AsyncService(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AsyncService(uint64_t a1)
{
  result = qword_28131A048;
  if (!qword_28131A048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A03A648(uint64_t a1)
{
  sub_24A03A72C(319);
  if (v1 <= 0x3F)
  {
    sub_24A03A784(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24A03A72C(uint64_t a1)
{
  if (!qword_28131A020)
  {
    type metadata accessor for EncoreEvent();
    v1 = sub_24A0464C0();
    if (!v2)
    {
      atomic_store(v1, &qword_28131A020);
    }
  }
}

void sub_24A03A784(uint64_t a1)
{
  if (!qword_28131A028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF30C70, &qword_24A047210);
    v1 = sub_24A0465B0();
    if (!v2)
    {
      atomic_store(v1, &qword_28131A028);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24A03A838(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30DD0, &unk_24A047220);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A03A8A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30DD0, &unk_24A047220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ServiceName.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static ServiceName.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24A0466E0();
  }
}

uint64_t sub_24A03A978()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24A03A9A8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24A0466E0();
  }
}

uint64_t static EncoreEvent.secureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27EF30A70 = a1;
  return result;
}

uint64_t EncoreEvent.id.getter()
{
  v1 = *(v0 + OBJC_IVAR___EncoreEvent_id);

  return v1;
}

uint64_t EncoreEvent.data.getter()
{
  v1 = *(v0 + OBJC_IVAR___EncoreEvent_data);
  sub_24A03AB80(v1, *(v0 + OBJC_IVAR___EncoreEvent_data + 8));
  return v1;
}

uint64_t sub_24A03AB80(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t EncoreEvent.serviceName.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___EncoreEvent_serviceName + 8);
  *a1 = *(v1 + OBJC_IVAR___EncoreEvent_serviceName);
  a1[1] = v2;
}

unint64_t sub_24A03AC54()
{
  v1 = sub_24A0463C0();
  MEMORY[0x28223BE20](v1 - 8, v2);
  sub_24A0463B0();
  v3 = sub_24A0463A0();
  v5 = v4;
  sub_24A046630();

  MEMORY[0x24C20D840](*(v0 + OBJC_IVAR___EncoreEvent_id), *(v0 + OBJC_IVAR___EncoreEvent_id + 8));
  MEMORY[0x24C20D840](0x636976726573202CLL, 0xEF203A656D614E65);
  if (*(v0 + OBJC_IVAR___EncoreEvent_serviceName + 8))
  {
    v6 = *(v0 + OBJC_IVAR___EncoreEvent_serviceName);
    v7 = *(v0 + OBJC_IVAR___EncoreEvent_serviceName + 8);
  }

  else
  {
    v7 = 0xE500000000000000;
    v6 = 0x3E6C696E3CLL;
  }

  if (!v5)
  {
    v5 = 0xE90000000000003ELL;
    v3 = 0x6E776F6E6B6E753CLL;
  }

  MEMORY[0x24C20D840](v6, v7);

  MEMORY[0x24C20D840](8236, 0xE200000000000000);
  MEMORY[0x24C20D840](v3, v5);

  MEMORY[0x24C20D840](41, 0xE100000000000000);
  return 0xD000000000000010;
}

char *EncoreEvent.init(value:serviceName:id:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v21 = *a2;
  v23 = a2[1];
  v10 = OBJC_IVAR___EncoreEvent_jsonEncoder;
  sub_24A046240();
  swift_allocObject();
  *(v4 + v10) = sub_24A046230();
  v11 = OBJC_IVAR___EncoreEvent_jsonDecoder;
  sub_24A046210();
  swift_allocObject();
  *(v4 + v11) = sub_24A046200();
  v12 = (v4 + OBJC_IVAR___EncoreEvent_id);
  *v12 = a3;
  v12[1] = a4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  v13 = sub_24A046220();
  if (v5)
  {

    __swift_destroy_boxed_opaque_existential_0(a1);

    type metadata accessor for EncoreEvent();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v13;
    v16 = v14;

    v17 = (v4 + OBJC_IVAR___EncoreEvent_data);
    *v17 = v15;
    v17[1] = v16;
    v18 = (v4 + OBJC_IVAR___EncoreEvent_serviceName);
    v19 = v23;
    *v18 = v21;
    v18[1] = v19;
    v22.receiver = v4;
    v22.super_class = type metadata accessor for EncoreEvent();
    v6 = objc_msgSendSuper2(&v22, sel_init);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v6;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_24A03B0D0(void *a1)
{
  v3 = sub_24A046380();
  v4 = sub_24A046380();
  [a1 encodeObject:v3 forKey:v4];

  v5 = sub_24A046260();
  v6 = sub_24A046380();
  [a1 encodeObject:v5 forKey:v6];

  if (*(v1 + OBJC_IVAR___EncoreEvent_serviceName + 8))
  {
    v7 = sub_24A046380();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_24A046380();
  [a1 encodeObject:v7 forKey:v8];
}

id EncoreEvent.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___EncoreEvent_jsonEncoder;
  sub_24A046240();
  swift_allocObject();
  *&v1[v4] = sub_24A046230();
  v5 = OBJC_IVAR___EncoreEvent_jsonDecoder;
  sub_24A046210();
  swift_allocObject();
  *&v1[v5] = sub_24A046200();
  sub_24A03C48C(0, &qword_27EF30AA0, 0x277CCACA8);
  v6 = sub_24A046590();
  if (v6)
  {
    v7 = v6;
    sub_24A03C48C(0, &qword_27EF30AA8, 0x277CBEA90);
    v8 = sub_24A046590();
    if (v8)
    {
      v9 = v8;
      v10 = sub_24A046390();
      v11 = &v1[OBJC_IVAR___EncoreEvent_id];
      *v11 = v10;
      v11[1] = v12;
      v13 = sub_24A046270();
      v14 = &v1[OBJC_IVAR___EncoreEvent_data];
      *v14 = v13;
      v14[1] = v15;
      v16 = sub_24A046590();
      if (v16)
      {
        v17 = v16;
        v18 = sub_24A046390();
        v20 = v19;
      }

      else
      {

        v18 = 0;
        v20 = 0;
      }

      v26 = &v2[OBJC_IVAR___EncoreEvent_serviceName];
      *v26 = v18;
      v26[1] = v20;
      v28.receiver = v2;
      v28.super_class = type metadata accessor for EncoreEvent();
      v27 = objc_msgSendSuper2(&v28, sel_init);

      return v27;
    }
  }

  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v21 = sub_24A0462E0();
  __swift_project_value_buffer(v21, qword_28131A090);
  v22 = sub_24A0462D0();
  v23 = sub_24A046540();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_24A036000, v22, v23, "Missing required key values", v24, 2u);
    MEMORY[0x24C20E160](v24, -1, -1);
  }

  type metadata accessor for EncoreEvent();
  swift_deallocPartialClassInstance();
  return 0;
}

id EncoreEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EncoreEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EncoreEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SystemEvents.asDirectInvocation.getter()
{
  v24[5] = *MEMORY[0x277D85DE8];
  v1 = sub_24A0462C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 96;
  v6 = *v0;
  v24[3] = &type metadata for SystemEvents;
  v24[4] = sub_24A03C4D4();
  LOBYTE(v24[0]) = v6;
  v23[0] = 0;
  v23[1] = 0;
  sub_24A0462B0();
  v7 = sub_24A0462A0();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  v10 = objc_allocWithZone(type metadata accessor for EncoreEvent());
  v11 = EncoreEvent.init(value:serviceName:id:)(v24, v23, v7, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30AB8, &qword_24A047240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A047230;
  v24[0] = 0xD000000000000011;
  v24[1] = 0x800000024A048EE0;
  sub_24A046610();
  v13 = objc_opt_self();
  v24[0] = 0;
  v14 = [v13 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:v24];
  if (v14)
  {
    v15 = v14;
    v16 = v24[0];
    v17 = sub_24A046270();
    v19 = v18;

    *(inited + 96) = MEMORY[0x277CC9318];
    *(inited + 72) = v17;
    *(inited + 80) = v19;
    sub_24A03C528(inited);
    swift_setDeallocating();
    sub_24A03C644(inited + 32);

    return 0xD000000000000025;
  }

  else
  {
    v21 = v24[0];
    sub_24A046250();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t sub_24A03B9B0()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_24A03B9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024A049010 == a2 || (sub_24A0466E0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024A049030 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24A0466E0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24A03BAE4(uint64_t a1)
{
  v2 = sub_24A03C6AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A03BB20(uint64_t a1)
{
  v2 = sub_24A03C6AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A03BB68(uint64_t a1)
{
  v2 = sub_24A03C700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A03BBA4(uint64_t a1)
{
  v2 = sub_24A03C700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A03BBE0(uint64_t a1)
{
  v2 = sub_24A03C754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A03BC1C(uint64_t a1)
{
  v2 = sub_24A03C754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SystemEvents.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30AC8, &qword_24A047250);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v21 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30AD0, &qword_24A047258);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30AD8, &qword_24A047260);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v19 - v13;
  v15 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A03C6AC();
  sub_24A046760();
  v16 = (v11 + 8);
  if (v15)
  {
    v25 = 1;
    sub_24A03C700();
    v17 = v21;
    sub_24A0466D0();
    (*(v22 + 8))(v17, v23);
  }

  else
  {
    v24 = 0;
    sub_24A03C754();
    sub_24A0466D0();
    (*(v19 + 8))(v9, v20);
  }

  return (*v16)(v14, v10);
}

uint64_t SystemEvents.hashValue.getter()
{
  v1 = *v0;
  sub_24A046720();
  MEMORY[0x24C20DB70](v1);
  return sub_24A046740();
}

uint64_t SystemEvents.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30AF8, &qword_24A047268);
  v4 = *(v3 - 8);
  v30 = v3;
  v31 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30B00, &qword_24A047270);
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30B08, &qword_24A047278);
  v32 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v27 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A03C6AC();
  v16 = v34;
  sub_24A046750();
  if (v16)
  {
    goto LABEL_7;
  }

  v28 = v8;
  v34 = a1;
  v18 = v32;
  v17 = v33;
  v19 = v15;
  v20 = sub_24A0466C0();
  if (*(v20 + 16) != 1)
  {
    v22 = sub_24A046650();
    swift_allocError();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30B10, &qword_24A047280);
    *v24 = &type metadata for SystemEvents;
    sub_24A0466B0();
    sub_24A046640();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v18 + 8))(v19, v12);
    swift_unknownObjectRelease();
    a1 = v34;
LABEL_7:
    v25 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v25);
  }

  v27 = v20;
  v21 = *(v20 + 32);
  if (v21)
  {
    v36 = 1;
    sub_24A03C700();
    sub_24A0466A0();
    (*(v31 + 8))(v7, v30);
  }

  else
  {
    v35 = 0;
    sub_24A03C754();
    sub_24A0466A0();
    (*(v29 + 8))(v11, v28);
  }

  (*(v18 + 8))(v19, v12);
  swift_unknownObjectRelease();
  *v17 = v21;
  v25 = v34;
  return __swift_destroy_boxed_opaque_existential_0(v25);
}

uint64_t sub_24A03C3D0()
{
  v1 = *v0;
  sub_24A046720();
  MEMORY[0x24C20DB70](v1);
  return sub_24A046740();
}

uint64_t sub_24A03C418(uint64_t a1)
{
  v2 = *v1;
  sub_24A046720();
  MEMORY[0x24C20DB70](v2);
  return sub_24A046740();
}

uint64_t sub_24A03C48C(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_24A03C4D4()
{
  result = qword_27EF30AB0;
  if (!qword_27EF30AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30AB0);
  }

  return result;
}

unint64_t sub_24A03C528(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF30BD0, &qword_24A047738);
    v3 = sub_24A046690();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A03CF28(v4, v13);
      result = sub_24A0404B4(v13);
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
      result = sub_24A03CF98(&v15, (v3[7] + 32 * result));
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

uint64_t sub_24A03C644(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30AC0, &qword_24A047248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24A03C6AC()
{
  result = qword_27EF30AE0;
  if (!qword_27EF30AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30AE0);
  }

  return result;
}

unint64_t sub_24A03C700()
{
  result = qword_27EF30AE8;
  if (!qword_27EF30AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30AE8);
  }

  return result;
}

unint64_t sub_24A03C754()
{
  result = qword_27EF30AF0;
  if (!qword_27EF30AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30AF0);
  }

  return result;
}

unint64_t sub_24A03C7AC()
{
  result = qword_27EF30B18;
  if (!qword_27EF30B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30B18);
  }

  return result;
}

unint64_t sub_24A03C810()
{
  result = qword_27EF30B20;
  if (!qword_27EF30B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30B20);
  }

  return result;
}

unint64_t sub_24A03C880()
{
  result = qword_27EF30B28;
  if (!qword_27EF30B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30B28);
  }

  return result;
}

void *assignWithCopy for ServiceName(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void *assignWithTake for ServiceName(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for ServiceName(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for ServiceName(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_24A03CAFC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

uint64_t sub_24A03CB8C(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A03CC70()
{
  result = qword_27EF30B98;
  if (!qword_27EF30B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30B98);
  }

  return result;
}

unint64_t sub_24A03CCC8()
{
  result = qword_27EF30BA0;
  if (!qword_27EF30BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30BA0);
  }

  return result;
}

unint64_t sub_24A03CD20()
{
  result = qword_27EF30BA8;
  if (!qword_27EF30BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30BA8);
  }

  return result;
}

unint64_t sub_24A03CD78()
{
  result = qword_27EF30BB0;
  if (!qword_27EF30BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30BB0);
  }

  return result;
}

unint64_t sub_24A03CDD0()
{
  result = qword_27EF30BB8;
  if (!qword_27EF30BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30BB8);
  }

  return result;
}

unint64_t sub_24A03CE28()
{
  result = qword_27EF30BC0;
  if (!qword_27EF30BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30BC0);
  }

  return result;
}

unint64_t sub_24A03CE80()
{
  result = qword_27EF30BC8;
  if (!qword_27EF30BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF30BC8);
  }

  return result;
}

uint64_t sub_24A03CED4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24A03CF28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30AC0, &qword_24A047248);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_24A03CF98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_24A03D014(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___EncoreService_endpoint;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_24A03D074()
{
  v1 = OBJC_IVAR___EncoreService_endpoint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id sub_24A03D124()
{
  result = qword_28131A078;
  if (qword_28131A078 || (v1 = objc_allocWithZone(type metadata accessor for EncoreService(0)), v2 = sub_24A03D31C(0, 0), v3 = qword_28131A078, qword_28131A078 = v2, v3, (result = qword_28131A078) != 0))
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_24A03D18C()
{
  v0 = objc_allocWithZone(type metadata accessor for EncoreService(0));
  v1 = sub_24A03D31C(0xD000000000000021, 0x800000024A049050);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v2 = qword_28131A040;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = sub_24A0462E0();
  __swift_project_value_buffer(v4, qword_28131A090);
  v5 = sub_24A0462D0();
  v6 = sub_24A046530();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A036000, v5, v6, "EncoreService: init", v7, 2u);
    MEMORY[0x24C20E160](v7, -1, -1);
  }

  return v3;
}

void *sub_24A03D31C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a2;
  v24[1] = a1;
  v26 = sub_24A046560();
  v4 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A046550();
  MEMORY[0x28223BE20](v8, v9);
  v10 = sub_24A046360();
  MEMORY[0x28223BE20](v10 - 8, v11);
  *&v2[OBJC_IVAR___EncoreService_listener] = 0;
  v12 = &v2[OBJC_IVAR___EncoreService_eventHandler];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v2[OBJC_IVAR___EncoreService_endpoint] = 0;
  v25 = OBJC_IVAR___EncoreService_queue;
  v13 = sub_24A041D80();
  v24[2] = "returnedToVoiceMode";
  v24[3] = v13;
  sub_24A046350();
  v29 = MEMORY[0x277D84F90];
  sub_24A041DCC(&qword_28131A018, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF30D40, &qword_24A047858);
  sub_24A041E14(&qword_28131A038, &unk_27EF30D40, &qword_24A047858);
  sub_24A0465D0();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v26);
  v14 = sub_24A046580();
  v15 = v27;
  *&v3[v25] = v14;
  v16 = type metadata accessor for EncoreService(0);
  v28.receiver = v3;
  v28.super_class = v16;
  v17 = objc_msgSendSuper2(&v28, sel_init);
  v18 = v17;
  if (v15)
  {
    v19 = objc_allocWithZone(MEMORY[0x277CCAE98]);
    v20 = v18;
    v21 = sub_24A046380();

    v22 = [v19 initWithMachServiceName_];

    [v22 setDelegate_];
    [v22 resume];
  }

  else
  {
    v22 = v17;
    sub_24A03D660();
  }

  return v18;
}

void sub_24A03D660()
{
  v1 = v0;
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v2 = sub_24A0462E0();
  __swift_project_value_buffer(v2, qword_28131A090);
  v3 = sub_24A0462D0();
  v4 = sub_24A046530();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A036000, v3, v4, "EncoreService: initTestingLoopback", v5, 2u);
    MEMORY[0x24C20E160](v5, -1, -1);
  }

  v6 = [objc_opt_self() anonymousListener];
  v7 = *(v1 + OBJC_IVAR___EncoreService_listener);
  *(v1 + OBJC_IVAR___EncoreService_listener) = v6;
  v8 = v6;

  v9 = [v8 endpoint];
  v10 = OBJC_IVAR___EncoreService_endpoint;
  swift_beginAccess();
  v11 = *(v1 + v10);
  *(v1 + v10) = v9;

  [v8 setDelegate_];
  [v8 resume];
}

uint64_t sub_24A03D7EC(void *a1)
{
  v3 = sub_24A046330();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A046360();
  v8 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v9);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v1 + OBJC_IVAR___EncoreService_queue);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  aBlock[4] = sub_24A03DDA8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A041F30;
  aBlock[3] = &block_descriptor;
  v13 = _Block_copy(aBlock);
  v14 = a1;
  sub_24A046340();
  v18 = MEMORY[0x277D84F90];
  sub_24A041DCC(&qword_27EF30C50, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30C58, &unk_24A047760);
  sub_24A041E14(&qword_27EF30C60, &qword_27EF30C58, &unk_24A047760);
  sub_24A0465D0();
  MEMORY[0x24C20D9B0](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v17);
}

uint64_t sub_24A03DAAC(void *a1)
{
  v25 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30D38, &qword_24A047850);
  MEMORY[0x28223BE20](v24, v1);
  v3 = (&v24 - v2);
  if (qword_28131A040 != -1)
  {
LABEL_20:
    swift_once();
  }

  v4 = sub_24A0462E0();
  __swift_project_value_buffer(v4, qword_28131A090);
  v5 = sub_24A0462D0();
  v6 = sub_24A046530();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    if (qword_27EF309D0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    *(v7 + 4) = *(off_27EF30C40 + 2);
    _os_log_impl(&dword_24A036000, v5, v6, "EncoreService: broadcast to clients: %ld", v7, 0xCu);
    MEMORY[0x24C20E160](v7, -1, -1);
  }

  if (qword_27EF309D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = off_27EF30C40;
  v9 = 1 << *(off_27EF30C40 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(off_27EF30C40 + 8);
  v12 = (v9 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_16:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v14 << 6);
      v17 = v8[7];
      v18 = (v8[6] + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      v21 = v17 + *(*(type metadata accessor for ClientConnection(0) - 8) + 72) * v16;
      v22 = *(v24 + 48);
      sub_24A03FAD4(v21, v3 + v22);
      *v3 = v19;
      v3[1] = v20;

      sub_24A04119C(v3 + v22, v25);
      sub_24A041D20(v3, &qword_27EF30D38, &qword_24A047850);
      if (!v11)
      {
        goto LABEL_12;
      }
    }
  }

  while (1)
  {
LABEL_12:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = v8[v14 + 8];
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_16;
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A03DEA4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF30C70, &qword_24A047210);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30DD0, &unk_24A047220);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF30C80, &unk_24A047770);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v34 - v15;
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v17 = sub_24A0462E0();
  __swift_project_value_buffer(v17, qword_28131A090);
  v18 = a1;
  v19 = sub_24A0462D0();
  v20 = sub_24A046530();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = v5;
    v22 = v8;
    v23 = v21;
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v18;
    *v24 = v18;
    v25 = v18;
    _os_log_impl(&dword_24A036000, v19, v20, "EncoreService: handleEvent %@", v23, 0xCu);
    sub_24A041D20(v24, &qword_27EF30C68, &unk_24A047870);
    MEMORY[0x24C20E160](v24, -1, -1);
    v26 = v23;
    v8 = v22;
    v5 = v35;
    MEMORY[0x24C20E160](v26, -1, -1);
  }

  v27 = *(v2 + OBJC_IVAR___EncoreService_eventHandler);
  if (v27)
  {
    v28 = *(v2 + OBJC_IVAR___EncoreService_eventHandler + 8);

    v27(v18);
    sub_24A03FA34(v27, v28);
  }

  v29 = OBJC_IVAR____TtC16EncoreXPCService12AsyncService_continuation;
  swift_beginAccess();
  sub_24A03FA44(v2 + v29, v12);
  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_24A041D20(v12, &qword_27EF30DD0, &unk_24A047220);
    v30 = 1;
  }

  else
  {
    (*(v5 + 16))(v8, v12, v4);
    sub_24A041D20(v12, &qword_27EF30DD0, &unk_24A047220);
    v36 = v18;
    v31 = v18;
    sub_24A046490();
    (*(v5 + 8))(v8, v4);
    v30 = 0;
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30C90, &qword_24A047880);
  (*(*(v32 - 8) + 56))(v16, v30, 1, v32);
  return sub_24A041D20(v16, &unk_27EF30C80, &unk_24A047770);
}

uint64_t sub_24A03E30C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v6 = sub_24A0462E0();
  __swift_project_value_buffer(v6, qword_28131A090);
  v7 = sub_24A0462D0();
  v8 = sub_24A046530();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24A036000, v7, v8, "EncoreService: subscribe", v9, 2u);
    MEMORY[0x24C20E160](v9, -1, -1);
  }

  v10 = (v3 + OBJC_IVAR___EncoreService_eventHandler);
  v11 = *(v3 + OBJC_IVAR___EncoreService_eventHandler);
  v12 = *(v3 + OBJC_IVAR___EncoreService_eventHandler + 8);
  *v10 = a1;
  v10[1] = a2;

  return sub_24A03FA34(v11, v12);
}

uint64_t sub_24A03E4C4(void *a1, const char *a2, ...)
{
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v4 = sub_24A0462E0();
  __swift_project_value_buffer(v4, qword_28131A090);
  v5 = a1;
  v6 = sub_24A0462D0();
  v7 = sub_24A046530();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_24A036000, v6, v7, a2, v8, 0xCu);
    sub_24A041D20(v9, &qword_27EF30C68, &unk_24A047870);
    MEMORY[0x24C20E160](v9, -1, -1);
    MEMORY[0x24C20E160](v8, -1, -1);
  }

  return sub_24A03D7EC(v5);
}

uint64_t sub_24A03E68C(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() interfaceWithProtocol_];
  [a2 setExportedInterface_];

  [a2 setExportedObject_];
  [a2 resume];
  return 1;
}

void sub_24A03E7E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v58 = a3;
  v62 = a5;
  v63 = a4;
  v57 = a2;
  v6 = type metadata accessor for ClientConnection(0);
  v7 = *(v6 - 1);
  v55 = v6;
  v56 = v7;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v61 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v54 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = (&v54 - v16);
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v18 = sub_24A0462E0();
  v60 = __swift_project_value_buffer(v18, qword_28131A090);
  v19 = sub_24A0462D0();
  v20 = sub_24A046530();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_24A036000, v19, v20, "EncoreService: register new connection", v21, 2u);
    MEMORY[0x24C20E160](v21, -1, -1);
  }

  v22 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithListenerEndpoint_];
  v23 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30C98, qword_24A047780);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_24A047230;
  v25 = type metadata accessor for EncoreEvent();
  *(v24 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30CA0, &qword_24A047910);
  *(v24 + 32) = v25;
  v26 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v27 = sub_24A046420();

  v28 = [v26 initWithArray_];

  aBlock = 0;
  sub_24A046510();
  if (aBlock)
  {

    v29 = sub_24A046500();

    [v23 setClasses:v29 forSelector:sel_handleEventWithEvent_ argumentIndex:0 ofReply:0];

    [v22 setRemoteObjectInterface_];
    [v22 resume];
    v30 = [v22 remoteObjectProxy];
    sub_24A0465C0();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30CA8, &qword_24A047798);
    if (swift_dynamicCast())
    {
      v54 = v23;
      swift_unknownObjectRelease();
      v31 = v58;

      v32 = v22;
      v55 = v32;
      sub_24A046280();
      *v17 = v57;
      v17[1] = v31;
      v17[2] = v32;
      sub_24A03FAD4(v17, v14);
      v33 = (*(v56 + 80) + 16) & ~*(v56 + 80);
      v34 = (v8 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      sub_24A03FB38(v14, v35 + v33);
      v36 = v17;
      v37 = v14;
      v38 = v59;
      *(v35 + v34) = v59;
      v68 = sub_24A03FB9C;
      v69 = v35;
      aBlock = MEMORY[0x277D85DD0];
      v65 = 1107296256;
      v66 = sub_24A041F30;
      v67 = &block_descriptor_6;
      v39 = _Block_copy(&aBlock);
      v40 = v38;

      v41 = v55;
      [v55 setInterruptionHandler_];
      _Block_release(v39);
      sub_24A03FAD4(v36, v37);
      v42 = swift_allocObject();
      v43 = v37;
      v44 = v36;
      sub_24A03FB38(v43, v42 + v33);
      *(v42 + v34) = v40;
      v68 = sub_24A03FCAC;
      v69 = v42;
      aBlock = MEMORY[0x277D85DD0];
      v65 = 1107296256;
      v66 = sub_24A041F30;
      v67 = &block_descriptor_12;
      v45 = _Block_copy(&aBlock);
      v40;

      [v41 setInvalidationHandler_];

      _Block_release(v45);
      v46 = v61;
      sub_24A03FAD4(v36, v61);
      v47 = sub_24A0462D0();
      v48 = sub_24A046530();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        aBlock = v50;
        *v49 = 136315138;
        v51 = *v46;
        v52 = v46[1];

        sub_24A03FD48(v46);
        v53 = sub_24A0391F4(v51, v52, &aBlock);

        *(v49 + 4) = v53;
        _os_log_impl(&dword_24A036000, v47, v48, "EncoreService: registered new client %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x24C20E160](v50, -1, -1);
        MEMORY[0x24C20E160](v49, -1, -1);
      }

      else
      {

        sub_24A03FD48(v46);
      }

      sub_24A03F19C(v44);
      (v63)(1);

      sub_24A03FD48(v44);
    }

    else
    {
      v63();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24A03EED4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_24A03EF18(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = type metadata accessor for ClientConnection(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v9 = sub_24A0462E0();
  __swift_project_value_buffer(v9, qword_28131A090);
  sub_24A03FAD4(a1, v8);
  v10 = sub_24A0462D0();
  v11 = sub_24A046530();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v14 = *v8;
    v15 = v8[1];

    sub_24A03FD48(v8);
    v16 = sub_24A0391F4(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_24A036000, v10, v11, a3, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C20E160](v13, -1, -1);
    MEMORY[0x24C20E160](v12, -1, -1);
  }

  else
  {

    sub_24A03FD48(v8);
  }

  return sub_24A03F4BC(a1);
}

uint64_t sub_24A03F1C4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30D28, &qword_24A047840);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v10 - v4;
  if (qword_27EF309D0 != -1)
  {
    swift_once();
  }

  v6 = *a1;
  v7 = a1[1];
  sub_24A03FAD4(a1, v5);
  v8 = type metadata accessor for ClientConnection(0);
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  swift_beginAccess();

  sub_24A03F2FC(v5, v6, v7);
  return swift_endAccess();
}

uint64_t sub_24A03F2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30D28, &qword_24A047840);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for ClientConnection(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_24A041D20(a1, &qword_27EF30D28, &qword_24A047840);
    sub_24A0406F0(a2, a3, v10);

    return sub_24A041D20(v10, &qword_27EF30D28, &qword_24A047840);
  }

  else
  {
    sub_24A03FB38(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_24A040D70(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  return result;
}

uint64_t sub_24A03F4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v23[0] = a2;
  v6 = sub_24A046330();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24A046360();
  v11 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ClientConnection(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8, v18);
  v23[1] = *(v4 + OBJC_IVAR___EncoreService_queue);
  sub_24A03FAD4(a1, v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = swift_allocObject();
  sub_24A03FB38(v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  aBlock[4] = v24;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A041F30;
  aBlock[3] = v25;
  v21 = _Block_copy(aBlock);
  sub_24A046340();
  v27 = MEMORY[0x277D84F90];
  sub_24A041DCC(&qword_27EF30C50, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30C58, &unk_24A047760);
  sub_24A041E14(&qword_27EF30C60, &qword_27EF30C58, &unk_24A047760);
  sub_24A0465D0();
  MEMORY[0x24C20D9B0](0, v14, v10, v21);
  _Block_release(v21);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v26);
}

uint64_t sub_24A03F828(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30D28, &qword_24A047840);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  if (qword_27EF309D0 != -1)
  {
    swift_once();
  }

  v7 = *a1;
  v6 = a1[1];
  swift_beginAccess();
  sub_24A0406F0(v7, v6, v5);
  swift_endAccess();
  return sub_24A041D20(v5, &qword_27EF30D28, &qword_24A047840);
}

void sub_24A03F928()
{
  sub_24A03FA34(*(v0 + OBJC_IVAR___EncoreService_eventHandler), *(v0 + OBJC_IVAR___EncoreService_eventHandler + 8));

  v1 = *(v0 + OBJC_IVAR___EncoreService_queue);
}

id EncoreService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EncoreService(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A03FA34(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24A03FA44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30DD0, &unk_24A047220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A03FAD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientConnection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A03FB38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientConnection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_2Tm()
{
  v1 = (type metadata accessor for ClientConnection(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[8];
  v7 = sub_24A046290();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_24A03FCB8(const char *a1, ...)
{
  v3 = *(type metadata accessor for ClientConnection(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_24A03EF18(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_24A03FD48(uint64_t a1)
{
  v2 = type metadata accessor for ClientConnection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_24A04000C(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    v6 = *(a2 + 2);
    *(a1 + 2) = v6;
    v7 = *(a3 + 24);
    v9 = sub_24A046290();
    v10 = *(*(v9 - 8) + 16);

    v11 = v6;
    v10(&v3[v7], &a2[v7], v9);
  }

  return v3;
}

uint64_t sub_24A0400F8(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = sub_24A046290();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

char *sub_24A040174(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a2 + 2);
  *(a1 + 2) = v6;
  v7 = *(a3 + 24);
  v8 = sub_24A046290();
  v9 = *(*(v8 - 8) + 16);

  v10 = v6;
  v9(&a1[v7], &a2[v7], v8);
  return a1;
}

char *sub_24A040214(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = *(a2 + 2);
  v7 = *(a1 + 2);
  *(a1 + 2) = v6;
  v8 = v6;

  v9 = *(a3 + 24);
  v10 = sub_24A046290();
  (*(*(v10 - 8) + 24))(&a1[v9], &a2[v9], v10);
  return a1;
}

uint64_t sub_24A0402BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 24);
  v6 = sub_24A046290();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

char *sub_24A04033C(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a1 + 2);
  *(a1 + 2) = *(a2 + 2);

  v8 = *(a3 + 24);
  v9 = sub_24A046290();
  (*(*(v9 - 8) + 40))(&a1[v8], &a2[v8], v9);
  return a1;
}

uint64_t sub_24A0403F8(uint64_t a1)
{
  result = sub_24A046290();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_24A0404B4(uint64_t a1)
{
  v2 = sub_24A0465F0();

  return sub_24A040570(a1, v2);
}

unint64_t sub_24A0404F8(uint64_t a1, uint64_t a2)
{
  sub_24A046720();
  sub_24A0463F0();
  v4 = sub_24A046740();

  return sub_24A040638(a1, a2, v4);
}

unint64_t sub_24A040570(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_24A041E68(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C20DA40](v9, a1);
      sub_24A041EC4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24A040638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24A0466E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24A0406F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_24A0404F8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24A040F6C();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for ClientConnection(0);
    v19 = *(v12 - 8);
    sub_24A03FB38(v11 + *(v19 + 72) * v8, a3);
    sub_24A040B84(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for ClientConnection(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_24A040848(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ClientConnection(0);
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30D30, &qword_24A047848);
  v41 = v4;
  result = sub_24A046680();
  v10 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v39 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v40 + 72);
      v29 = v24 + v28 * v23;
      if (v41)
      {
        sub_24A03FB38(v29, v42);
      }

      else
      {
        sub_24A03FAD4(v29, v42);
      }

      sub_24A046720();
      sub_24A0463F0();
      result = sub_24A046740();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v26;
      v19[1] = v27;
      result = sub_24A03FB38(v42, *(v10 + 56) + v28 * v18);
      ++*(v10 + 16);
      v8 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

unint64_t sub_24A040B84(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A0465E0() + 1) & ~v5;
    while (1)
    {
      sub_24A046720();

      sub_24A0463F0();
      v9 = sub_24A046740();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for ClientConnection(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A040D70(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24A0404F8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_24A040F6C();
      goto LABEL_7;
    }

    sub_24A040848(v15, a4 & 1);
    v22 = sub_24A0404F8(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_24A046700();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for ClientConnection(0) - 8) + 72) * v12;

    return sub_24A041CBC(a1, v20);
  }

LABEL_13:
  sub_24A040ED4(v12, a2, a3, a1, v18);
}

uint64_t sub_24A040ED4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ClientConnection(0);
  result = sub_24A03FB38(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_24A040F6C()
{
  v1 = v0;
  v2 = type metadata accessor for ClientConnection(0);
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30D30, &qword_24A047848);
  v5 = *v0;
  v6 = sub_24A046670();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_24A03FAD4(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_24A03FB38(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_24A04119C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ClientConnection(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v8 = sub_24A0462E0();
  __swift_project_value_buffer(v8, qword_28131A090);
  sub_24A03FAD4(a1, v7);
  v9 = a2;
  v10 = sub_24A0462D0();
  v11 = sub_24A046530();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v15 = *v7;
    v16 = v7[1];
    v17 = v9;

    sub_24A03FD48(v7);
    v18 = sub_24A0391F4(v15, v16, v22);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_24A036000, v10, v11, "EncoreService: broadcast %@ to %s", v12, 0x16u);
    sub_24A041D20(v13, &qword_27EF30C68, &unk_24A047870);
    MEMORY[0x24C20E160](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C20E160](v14, -1, -1);
    MEMORY[0x24C20E160](v12, -1, -1);
  }

  else
  {

    sub_24A03FD48(v7);
  }

  v19 = [*(a1 + 16) remoteObjectProxy];
  sub_24A0465C0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30CA8, &qword_24A047798);
  result = swift_dynamicCast();
  if (result)
  {
    [v21[1] handleEventWithEvent_];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24A041444(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (**a5)(void, void))
{
  v56 = a5;
  v52 = a3;
  v53 = a4;
  v51 = a2;
  v6 = type metadata accessor for ClientConnection(0);
  v7 = *(v6 - 1);
  v49[1] = v6;
  v50 = v7;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v55 = (v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = v49 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = (v49 - v16);
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v18 = sub_24A0462E0();
  v54 = __swift_project_value_buffer(v18, qword_28131A090);
  v19 = sub_24A0462D0();
  v20 = sub_24A046530();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_24A036000, v19, v20, "EncoreService: register new connection", v21, 2u);
    MEMORY[0x24C20E160](v21, -1, -1);
  }

  v22 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithListenerEndpoint_];
  v23 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30C98, qword_24A047780);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_24A047230;
  v25 = type metadata accessor for EncoreEvent();
  *(v24 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30CA0, &qword_24A047910);
  *(v24 + 32) = v25;
  v26 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v27 = sub_24A046420();

  v28 = [v26 initWithArray_];

  aBlock = 0;
  sub_24A046510();
  if (aBlock)
  {

    v29 = sub_24A046500();

    [v23 setClasses:v29 forSelector:sel_handleEventWithEvent_ argumentIndex:0 ofReply:0];

    [v22 setRemoteObjectInterface_];
    [v22 resume];
    v30 = [v22 remoteObjectProxy];
    sub_24A0465C0();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30CA8, &qword_24A047798);
    if (swift_dynamicCast())
    {
      v49[0] = v23;
      swift_unknownObjectRelease();
      v31 = v52;

      v32 = v22;
      sub_24A046280();
      *v17 = v51;
      v17[1] = v31;
      v17[2] = v32;
      sub_24A03FAD4(v17, v14);
      v33 = (*(v50 + 80) + 16) & ~*(v50 + 80);
      v34 = (v8 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      sub_24A03FB38(v14, v35 + v33);
      v36 = v53;
      *(v35 + v34) = v53;
      v61 = sub_24A041F34;
      v62 = v35;
      aBlock = MEMORY[0x277D85DD0];
      v58 = 1107296256;
      v59 = sub_24A041F30;
      v60 = &block_descriptor_45;
      v37 = _Block_copy(&aBlock);
      v38 = v36;

      [v32 setInterruptionHandler_];
      _Block_release(v37);
      sub_24A03FAD4(v17, v14);
      v39 = swift_allocObject();
      sub_24A03FB38(v14, v39 + v33);
      *(v39 + v34) = v38;
      v61 = sub_24A041F38;
      v62 = v39;
      aBlock = MEMORY[0x277D85DD0];
      v58 = 1107296256;
      v59 = sub_24A041F30;
      v60 = &block_descriptor_52;
      v40 = _Block_copy(&aBlock);
      v38;

      [v32 setInvalidationHandler_];

      _Block_release(v40);
      v41 = v55;
      sub_24A03FAD4(v17, v55);
      v42 = sub_24A0462D0();
      v43 = sub_24A046530();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        aBlock = v45;
        *v44 = 136315138;
        v46 = *v41;
        v47 = v41[1];

        sub_24A03FD48(v41);
        v48 = sub_24A0391F4(v46, v47, &aBlock);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_24A036000, v42, v43, "EncoreService: registered new client %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x24C20E160](v45, -1, -1);
        MEMORY[0x24C20E160](v44, -1, -1);
      }

      else
      {

        sub_24A03FD48(v41);
      }

      sub_24A03F19C(v17);
      v56[2](v56, 1);

      sub_24A03FD48(v17);
    }

    else
    {
      v56[2](v56, 0);
    }
  }

  else
  {
    _Block_release(v56);
    __break(1u);
  }
}

uint64_t objectdestroy_34Tm()
{
  v1 = (type metadata accessor for ClientConnection(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_24A046290();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24A041C48(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ClientConnection(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24A041CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientConnection(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A041D20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_24A041D80()
{
  result = qword_28131A010;
  if (!qword_28131A010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131A010);
  }

  return result;
}

uint64_t sub_24A041DCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A041E14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24A041F54()
{
  v0 = sub_24A0462E0();
  __swift_allocate_value_buffer(v0, qword_28131A090);
  __swift_project_value_buffer(v0, qword_28131A090);
  sub_24A04204C();
  sub_24A0465A0();
  return sub_24A0462F0();
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

unint64_t sub_24A04204C()
{
  result = qword_28131A008;
  if (!qword_28131A008)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131A008);
  }

  return result;
}

uint64_t SnippetService.serviceName.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName);
  a1[1] = v2;
}

char *sub_24A042100(uint64_t *a1, id *a2)
{
  v4 = &v2[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_eventHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v2[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_encore] = 0;
  *&v2[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_connection] = 0;
  v6 = *a1;
  v5 = a1[1];
  v7 = &v2[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName];
  *v7 = *a1;
  *(v7 + 1) = v5;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for SnippetService(0);

  v8 = objc_msgSendSuper2(&v30, sel_init);
  v9 = v8;
  v10 = *a2;
  if (*a2)
  {
    v11 = v8;
  }

  else
  {
    v12 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v13 = v9;
    v14 = sub_24A046380();
    v10 = [v12 initWithMachServiceName:v14 options:0];

    *a2 = v10;
    if (!v10)
    {

      goto LABEL_5;
    }
  }

  v15 = [objc_opt_self() interfaceWithProtocol_];
  [v10 setRemoteObjectInterface_];

  [v10 resume];
  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  *(v16 + 24) = v5;
  v28 = sub_24A044524;
  v29 = v16;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_24A041F30;
  v27 = &block_descriptor_39;
  v17 = _Block_copy(&v24);

  [v10 setInvalidationHandler_];
  _Block_release(v17);
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = v5;
  v28 = sub_24A044548;
  v29 = v18;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_24A041F30;
  v27 = &block_descriptor_45_0;
  v19 = _Block_copy(&v24);

  [v10 setInterruptionHandler_];
  _Block_release(v19);
LABEL_5:
  v20 = OBJC_IVAR____TtC16EncoreXPCService14SnippetService_connection;
  swift_beginAccess();
  v21 = *(v9 + v20);
  *(v9 + v20) = v10;
  v22 = v10;

  return v9;
}

void sub_24A0423F4(uint64_t a1, unint64_t a2, const char *a3)
{
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v6 = sub_24A0462E0();
  __swift_project_value_buffer(v6, qword_28131A090);

  oslog = sub_24A0462D0();
  v7 = sub_24A046520();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_24A0391F4(a1, a2, &v11);
    _os_log_impl(&dword_24A036000, oslog, v7, a3, v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C20E160](v9, -1, -1);
    MEMORY[0x24C20E160](v8, -1, -1);
  }
}

char *SnippetService.__allocating_init(serviceName:)(uint64_t *a1)
{
  v1 = *a1;
  v5[1] = a1[1];
  v6 = 0;
  v5[0] = v1;
  v2 = objc_allocWithZone(type metadata accessor for SnippetService(0));
  v3 = sub_24A042100(v5, &v6);

  return v3;
}

uint64_t type metadata accessor for SnippetService(uint64_t a1)
{
  result = qword_27EF30DE8;
  if (!qword_27EF30DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A0425F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_24A042668()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC16EncoreXPCService14SnippetService_connection;
  swift_beginAccess();
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_24A042728;

  return sub_24A042A30(v1 + v2);
}

uint64_t sub_24A042728(char a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24A042880, 0, 0);
  }

  else
  {
    swift_endAccess();
    v5 = *(v4 + 8);

    return v5(a1 & 1);
  }
}

uint64_t sub_24A042880()
{
  swift_endAccess();
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_24A0462E0();
  __swift_project_value_buffer(v2, qword_28131A090);
  v3 = v1;
  v4 = sub_24A0462D0();
  v5 = sub_24A046540();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24A036000, v4, v5, "SnippetService register failed %@", v8, 0xCu);
    sub_24A041D20(v9, &qword_27EF30C68, &unk_24A047870);
    MEMORY[0x24C20E160](v9, -1, -1);
    MEMORY[0x24C20E160](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_24A042A30(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_24A042A50, 0, 0);
}

uint64_t sub_24A042A50()
{
  v1 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30DF8, &qword_24A047918);
  v2 = swift_allocBox();
  v4 = v3;
  v0[15] = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E00, &qword_24A047920);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = *v1;
  if (v6)
  {
    v0[6] = sub_24A0443BC;
    v0[7] = v2;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_24A043064;
    v0[5] = &block_descriptor_0;
    v7 = _Block_copy(v0 + 2);

    v8 = [v6 remoteObjectProxyWithErrorHandler_];
    _Block_release(v7);
    sub_24A0465C0();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E08, &qword_24A047928);
    v9 = swift_dynamicCast();
    v10 = v0[12];
    if (!v9)
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v0[14];
  *(v11 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_encore) = v10;
  swift_unknownObjectRelease();
  v12 = [objc_opt_self() anonymousListener];
  v0[16] = v12;
  [v12 setDelegate_];
  [v12 resume];
  v13 = swift_task_alloc();
  v0[17] = v13;
  v13[2] = v4;
  v13[3] = v11;
  v13[4] = v12;
  v14 = swift_task_alloc();
  v0[18] = v14;
  *v14 = v0;
  v14[1] = sub_24A042D24;
  v15 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 20, 0, 0, 0xD000000000000015, 0x800000024A0491D0, sub_24A0443DC, v13, v15);
}

uint64_t sub_24A042D24()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24A042EB0;
  }

  else
  {

    v2 = sub_24A042E40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24A042E40()
{

  v1 = *(v0 + 160);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24A042EB0()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_24A042F2C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E00, &qword_24A047920);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9[-v5];
  v7 = swift_projectBox();
  swift_beginAccess();
  result = (*(v3 + 48))(v7, 1, v2);
  if (!result)
  {
    (*(v3 + 16))(v6, v7, v2);
    v9[7] = 0;
    sub_24A046440();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_24A043064(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_24A0430CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v24 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E00, &qword_24A047920);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &aBlock[-1] - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30DF8, &qword_24A047918);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &aBlock[-1] - v14;
  v16 = *(v8 + 16);
  v16(&aBlock[-1] - v14, a1, v7);
  (*(v8 + 56))(v15, 0, 1, v7);
  swift_beginAccess();
  sub_24A0443E8(v15, a2);
  v17 = [a4 endpoint];
  v16(v11, a1, v7);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  (*(v8 + 32))(v19 + v18, v11, v7);
  v20 = *(v24 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_encore);
  if (v20)
  {
    swift_unknownObjectRetain();
    v21 = sub_24A046380();
    v22 = swift_allocObject();
    *(v22 + 16) = sub_24A044458;
    *(v22 + 24) = v19;
    aBlock[4] = sub_24A0444FC;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A0425F4;
    aBlock[3] = &block_descriptor_33;
    v23 = _Block_copy(aBlock);

    [v20 registerWithClient:v17 name:v21 with:v23];
    _Block_release(v23);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24A04344C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v6 = sub_24A0462E0();
  __swift_project_value_buffer(v6, qword_28131A090);
  v7 = sub_24A0462D0();
  v8 = sub_24A046520();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24A036000, v7, v8, "SnippetService: subscribe", v9, 2u);
    MEMORY[0x24C20E160](v9, -1, -1);
  }

  v10 = (v3 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_eventHandler);
  v11 = *(v3 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_eventHandler);
  v12 = *(v3 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_eventHandler + 8);
  *v10 = a1;
  v10[1] = a2;

  return sub_24A03FA34(v11, v12);
}

uint64_t sub_24A0435F8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF30C70, &qword_24A047210);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30DD0, &unk_24A047220);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF30C80, &unk_24A047770);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v34 - v15;
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v17 = sub_24A0462E0();
  __swift_project_value_buffer(v17, qword_28131A090);
  v18 = a1;
  v19 = sub_24A0462D0();
  v20 = sub_24A046520();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = v5;
    v22 = v8;
    v23 = v21;
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v18;
    *v24 = v18;
    v25 = v18;
    _os_log_impl(&dword_24A036000, v19, v20, "SnippetService: handleEvent%@", v23, 0xCu);
    sub_24A041D20(v24, &qword_27EF30C68, &unk_24A047870);
    MEMORY[0x24C20E160](v24, -1, -1);
    v26 = v23;
    v8 = v22;
    v5 = v35;
    MEMORY[0x24C20E160](v26, -1, -1);
  }

  v27 = *(v2 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_eventHandler);
  if (v27)
  {
    v28 = *(v2 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_eventHandler + 8);

    v27(v18);
    sub_24A03FA34(v27, v28);
  }

  v29 = OBJC_IVAR____TtC16EncoreXPCService12AsyncService_continuation;
  swift_beginAccess();
  sub_24A03FA44(v2 + v29, v12);
  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_24A041D20(v12, &qword_27EF30DD0, &unk_24A047220);
    v30 = 1;
  }

  else
  {
    (*(v5 + 16))(v8, v12, v4);
    sub_24A041D20(v12, &qword_27EF30DD0, &unk_24A047220);
    v36 = v18;
    v31 = v18;
    sub_24A046490();
    (*(v5 + 8))(v8, v4);
    v30 = 0;
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30C90, &qword_24A047880);
  (*(*(v32 - 8) + 56))(v16, v30, 1, v32);
  return sub_24A041D20(v16, &unk_27EF30C80, &unk_24A047770);
}

id sub_24A043AF0(void *a1, const char *a2, const char **a3, ...)
{
  v6 = v3;
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v8 = sub_24A0462E0();
  __swift_project_value_buffer(v8, qword_28131A090);
  v9 = a1;
  v10 = sub_24A0462D0();
  v11 = sub_24A046520();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_24A036000, v10, v11, a2, v12, 0xCu);
    sub_24A041D20(v13, &qword_27EF30C68, &unk_24A047870);
    MEMORY[0x24C20E160](v13, -1, -1);
    MEMORY[0x24C20E160](v12, -1, -1);
  }

  result = *(v6 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_encore);
  if (result)
  {
    v16 = *a3;

    return [result v16];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24A043D04()
{

  sub_24A03FA34(*(v0 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_eventHandler), *(v0 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_eventHandler + 8));
  swift_unknownObjectRelease();
  v1 = *(v0 + OBJC_IVAR____TtC16EncoreXPCService14SnippetService_connection);
}

id SnippetService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnippetService(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A043E18(void *a1)
{
  [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30C98, qword_24A047780);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24A047230;
  v2 = type metadata accessor for EncoreEvent();
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30CA0, &qword_24A047910);
  *(v1 + 32) = v2;
  v3 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v4 = sub_24A046420();

  [v3 initWithArray_];

  result = sub_24A046510();
  __break(1u);
  return result;
}

uint64_t dispatch thunk of SnippetService.register()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x118);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24A044180;

  return v5();
}

uint64_t sub_24A044180(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A0443E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30DF8, &qword_24A047918);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A044458(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E00, &qword_24A047920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E00, &qword_24A047920);
  return sub_24A046440();
}

void SynchronizableObject.publish(change:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_24A0462C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v27[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28[3] = AssociatedTypeWitness;
  v28[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
  v14 = *(a3 + 64);
  v26 = v3;
  v15 = v14(a2, a3);
  v17 = *&v15[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName];
  v16 = *&v15[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName + 8];

  v27[0] = v17;
  v27[1] = v16;
  sub_24A0462B0();
  v18 = sub_24A0462A0();
  v20 = v19;
  (*(v8 + 8))(v11, v7);
  v21 = objc_allocWithZone(type metadata accessor for EncoreEvent());
  v22 = v28[6];
  v23 = EncoreEvent.init(value:serviceName:id:)(v28, v27, v18, v20);
  if (!v22)
  {
    v24 = v23;
    v25 = v14(a2, a3);
    sub_24A043A60(v24);
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t SynchronizableObject.registerAndListenForChanges(handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E10, &qword_24A047940);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v22 - v12;
  if ((*(a4 + 40))(a3, a4))
  {
    if (qword_28131A040 != -1)
    {
      swift_once();
    }

    v14 = sub_24A0462E0();
    __swift_project_value_buffer(v14, qword_28131A090);
    v15 = sub_24A0462D0();
    v16 = sub_24A046530();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24A036000, v15, v16, "#SynchronizableObject: Cancelling existing subscription before updating.", v17, 2u);
      MEMORY[0x24C20E160](v17, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E18, &qword_24A047958);
    sub_24A0464E0();
  }

  v18 = sub_24A046480();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = v5;
  v19[7] = a1;
  v19[8] = a2;
  swift_unknownObjectRetain();

  v20 = sub_24A045B7C(0, 0, v13, &unk_24A047950, v19);
  return (*(a4 + 48))(v20, a3, a4);
}

uint64_t sub_24A044A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v8[16] = *(AssociatedTypeWitness - 8);
  v8[17] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30A60, &unk_24A0471E0);
  v8[18] = v10;
  v8[19] = *(v10 - 8);
  v8[20] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF30E20, &qword_24A047988);
  v8[21] = v11;
  v8[22] = *(v11 - 8);
  v8[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A044C34, 0, 0);
}

uint64_t sub_24A044C34()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = *(v1 + 64);
  v0[24] = v3;
  v0[25] = (v1 + 64) & 0xFFFFFFFFFFFFLL | 0xE179000000000000;
  v4 = v3(v2, v1);
  v5 = &v4[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName];
  v0[26] = *&v4[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName];
  v0[27] = *(v5 + 1);

  v0[28] = v3(v2, v1);
  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  v6[1] = sub_24A044D48;

  return sub_24A042648();
}

uint64_t sub_24A044D48(char a1)
{
  v2 = *(*v1 + 224);
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_24A044E64, 0, 0);
}

uint64_t sub_24A044E64()
{
  v29 = v0;
  if (*(v0 + 288) == 1)
  {
    if (qword_28131A040 != -1)
    {
      swift_once();
    }

    v1 = sub_24A0462E0();
    *(v0 + 240) = __swift_project_value_buffer(v1, qword_28131A090);

    v2 = sub_24A0462D0();
    v3 = sub_24A046530();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 216);
    if (v4)
    {
      v6 = *(v0 + 208);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v28 = v8;
      *v7 = 136446210;
      v9 = sub_24A0391F4(v6, v5, &v28);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_24A036000, v2, v3, "#SynchronizableObject: Registered SceneHost: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x24C20E160](v8, -1, -1);
      MEMORY[0x24C20E160](v7, -1, -1);
    }

    else
    {
    }

    v20 = *(v0 + 152);
    v19 = *(v0 + 160);
    v21 = *(v0 + 144);
    v22 = (*(v0 + 192))(*(v0 + 104), *(v0 + 112));
    v23 = OBJC_IVAR____TtC16EncoreXPCService12AsyncService_events;
    swift_beginAccess();
    (*(v20 + 16))(v19, &v22[v23], v21);

    sub_24A0464A0();
    (*(v20 + 8))(v19, v21);
    *(v0 + 248) = 0;
    v24 = swift_task_alloc();
    *(v0 + 256) = v24;
    *v24 = v0;
    v24[1] = sub_24A045284;
    v25 = *(v0 + 168);

    return MEMORY[0x2822003E8](v0 + 64, 0, 0, v25);
  }

  else
  {
    if (qword_28131A040 != -1)
    {
      swift_once();
    }

    v10 = sub_24A0462E0();
    __swift_project_value_buffer(v10, qword_28131A090);

    v11 = sub_24A0462D0();
    v12 = sub_24A046540();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 216);
    if (v13)
    {
      v15 = *(v0 + 208);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136446210;
      v18 = sub_24A0391F4(v15, v14, &v28);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_24A036000, v11, v12, "#SynchronizableObject: Failed to register SceneHost: %{public}s. Please check logs for SnippetService.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x24C20E160](v17, -1, -1);
      MEMORY[0x24C20E160](v16, -1, -1);
    }

    else
    {
    }

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_24A045284()
{

  return MEMORY[0x2822009F8](sub_24A045380, 0, 0);
}

uint64_t sub_24A045380()
{
  v21 = v0;
  v1 = v0[8];
  v0[33] = v1;
  if (!v1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);

    v12 = v0[1];
LABEL_20:

    return v12();
  }

  v2 = v0[24];
  v4 = v0[13];
  v3 = v0[14];
  v6 = *&v1[OBJC_IVAR___EncoreEvent_serviceName];
  v5 = *&v1[OBJC_IVAR___EncoreEvent_serviceName + 8];

  v7 = v2(v4, v3);
  v9 = *&v7[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName];
  v8 = *&v7[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName + 8];

  if (!v5)
  {
    if (!v8)
    {
      goto LABEL_17;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  if (v6 != v9 || v5 != v8)
  {
    v11 = sub_24A0466E0();

    if (v11)
    {
      goto LABEL_18;
    }

LABEL_13:

    v0[31] = v0[31];
    v13 = swift_task_alloc();
    v0[32] = v13;
    *v13 = v0;
    v13[1] = sub_24A045284;
    v14 = v0[21];

    return MEMORY[0x2822003E8](v0 + 8, 0, 0, v14);
  }

LABEL_17:

LABEL_18:
  v15 = v0[31];
  sub_24A0464F0();
  if (v15)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);

    v12 = v0[1];
    goto LABEL_20;
  }

  v16 = v0[15];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24A03B088(v16, AssociatedConformanceWitness);
  v0[34] = 0;
  sub_24A046460();
  v0[35] = sub_24A046450();
  v19 = sub_24A046430();

  return MEMORY[0x2822009F8](sub_24A045848, v19, v18);
}

uint64_t sub_24A045848()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);

  v2(v1);

  return MEMORY[0x2822009F8](sub_24A0458CC, 0, 0);
}

uint64_t sub_24A0458CC()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);

  (*(v2 + 8))(v1, v3);
  *(v0 + 248) = *(v0 + 272);
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = sub_24A045284;
  v5 = *(v0 + 168);

  return MEMORY[0x2822003E8](v0 + 64, 0, 0, v5);
}

uint64_t sub_24A0459AC(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24A045A88;

  return sub_24A044A84(a1, v6, v7, v8, v9, v10, v4, v5);
}

uint64_t sub_24A045A88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24A045B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E10, &qword_24A047940);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  sub_24A046118(a3, v23 - v10);
  v12 = sub_24A046480();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24A046188(v11);
  }

  else
  {
    sub_24A046470();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24A046430();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24A0463E0() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_24A046188(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24A046188(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SynchronizableObject.publishViewDisappeared()()
{
  v2 = v1;
  v3 = v0;
  v24 = sub_24A0462C0();
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v5);
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131A040 != -1)
  {
    swift_once();
  }

  v8 = sub_24A0462E0();
  __swift_project_value_buffer(v8, qword_28131A090);
  v9 = sub_24A0462D0();
  v10 = sub_24A046530();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24A036000, v9, v10, "#SynchronizableObject: Publishing that view will disappear and marking as cancelled", v11, 2u);
    MEMORY[0x24C20E160](v11, -1, -1);
  }

  if ((*(v2 + 40))(v3, v2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E18, &qword_24A047958);
    sub_24A0464E0();
  }

  v26[3] = &type metadata for SystemEvents;
  v26[4] = sub_24A03C4D4();
  LOBYTE(v26[0]) = 0;
  v12 = *(v2 + 64);
  v13 = v12(v3, v2);
  v15 = *&v13[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName];
  v14 = *&v13[OBJC_IVAR____TtC16EncoreXPCService14SnippetService_serviceName + 8];

  v25[0] = v15;
  v25[1] = v14;
  sub_24A0462B0();
  v16 = sub_24A0462A0();
  v18 = v17;
  (*(v4 + 8))(v7, v24);
  v19 = objc_allocWithZone(type metadata accessor for EncoreEvent());
  v20 = v26[6];
  v21 = EncoreEvent.init(value:serviceName:id:)(v26, v25, v16, v18);
  if (!v20)
  {
    v22 = v21;
    v23 = v12(v3, v2);
    sub_24A043A60(v22);
  }
}

uint64_t sub_24A046118(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E10, &qword_24A047940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A046188(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF30E10, &qword_24A047940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}