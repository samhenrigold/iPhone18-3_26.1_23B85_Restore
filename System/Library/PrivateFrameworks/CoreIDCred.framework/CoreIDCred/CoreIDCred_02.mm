unint64_t sub_245652F00()
{
  result = qword_27EE1AD10[0];
  if (!qword_27EE1AD10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EE1AD10);
  }

  return result;
}

void *SendableXPCConnection.__allocating_init(machServiceName:interface:invalidationHandler:interruptionHandler:exportedInterface:exportedObject:connectionErrorMapper:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v16 = sub_24565BB14();

  v17 = [v15 initWithMachServiceName:v16 options:4096];

  sub_24563D310(a9, v22);
  swift_allocObject();
  v18 = sub_245656110(v17, a3, a4, a5, a6, a7, a8, v22, a10, a11);

  sub_2456564BC(a6, a7);
  sub_2456564BC(a4, a5);

  sub_245636C48(a9, &unk_27EE1A8A0, &qword_2456618A0);
  return v18;
}

uint64_t SendableXPCConnection.interruptionHandler.setter(uint64_t a1, uint64_t a2)
{
  sub_2456565F8(a1, a2, &block_descriptor_87, &selRef_setInterruptionHandler_);

  return sub_2456564BC(a1, a2);
}

uint64_t SendableXPCConnection.performWithRemoteObjectProxy<A>(_:onCancel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_24565312C, 0, 0);
}

uint64_t sub_24565312C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = *(v0 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v6;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v7[2] = v2;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v1;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_24565324C;
  v9 = *(v0 + 56);
  v10 = *(v0 + 16);

  return MEMORY[0x282200830](v10, &unk_245662318, v5, sub_24565658C, v7, 0, 0, v9);
}

uint64_t sub_24565324C()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_245653394, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_245653394()
{

  v1 = *(v0 + 8);

  return v1();
}

id SendableXPCConnection.wrapped.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

void SendableXPCConnection.exportedObject.getter(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  if ([*(v3 + 16) exportedObject])
  {
    sub_24565BCF4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  *a1 = v4;
  a1[1] = v5;

  os_unfair_lock_unlock((v3 + 24));
}

uint64_t SendableXPCConnection.exportedObject.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  sub_24563D310(a1, v12);
  v5 = v13;
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = *(v5 - 8);
    MEMORY[0x28223BE20](v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_24565BEC4();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = 0;
  }

  [v4 setExportedObject_];
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v3 + 24));
  return sub_245636C48(a1, &unk_27EE1A8A0, &qword_2456618A0);
}

void (*SendableXPCConnection.exportedObject.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 64) = v1;
  SendableXPCConnection.exportedObject.getter(v3);
  return sub_2456536C4;
}

void sub_2456536C4(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_24563D310(*a1, v2 + 32);
    SendableXPCConnection.exportedObject.setter(v2 + 32);
    sub_245636C48(v2, &unk_27EE1A8A0, &qword_2456618A0);
  }

  else
  {
    SendableXPCConnection.exportedObject.setter(*a1);
  }

  free(v2);
}

uint64_t (*SendableXPCConnection.interruptionHandler.getter())()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = [*(v1 + 16) interruptionHandler];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_2456565C0;
    *(v5 + 24) = v4;
    os_unfair_lock_unlock((v1 + 24));
    v6 = swift_allocObject();
    *(v6 + 16) = sub_2456565D0;
    *(v6 + 24) = v5;
    return sub_245656598;
  }

  else
  {
    os_unfair_lock_unlock((v1 + 24));
    return 0;
  }
}

uint64_t sub_245653830@<X0>(uint64_t (**a1)()@<X8>)
{
  result = SendableXPCConnection.interruptionHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_245656BE0;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_2456538A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_245656BC8;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_24561100C(v1, v2);
  sub_2456565F8(v4, v3, &block_descriptor_87, &selRef_setInterruptionHandler_);

  return sub_2456564BC(v4, v3);
}

uint64_t (*SendableXPCConnection.interruptionHandler.modify(uint64_t (**a1)()))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = SendableXPCConnection.interruptionHandler.getter();
  a1[1] = v3;
  return sub_2456539A0;
}

uint64_t (*SendableXPCConnection.invalidationHandler.getter())()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = [*(v1 + 16) invalidationHandler];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_245656BC4;
    *(v5 + 24) = v4;
    os_unfair_lock_unlock((v1 + 24));
    v6 = swift_allocObject();
    *(v6 + 16) = sub_245656BE0;
    *(v6 + 24) = v5;
    return sub_245656BC8;
  }

  else
  {
    os_unfair_lock_unlock((v1 + 24));
    return 0;
  }
}

uint64_t sub_245653AA8@<X0>(uint64_t (**a1)()@<X8>)
{
  result = SendableXPCConnection.invalidationHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_245656BE0;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_245653B18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_245656BC8;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_24561100C(v1, v2);
  sub_2456565F8(v4, v3, &block_descriptor_71, &selRef_setInvalidationHandler_);

  return sub_2456564BC(v4, v3);
}

uint64_t SendableXPCConnection.invalidationHandler.setter(uint64_t a1, uint64_t a2)
{
  sub_2456565F8(a1, a2, &block_descriptor_71, &selRef_setInvalidationHandler_);

  return sub_2456564BC(a1, a2);
}

uint64_t (*SendableXPCConnection.invalidationHandler.modify(uint64_t (**a1)()))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = SendableXPCConnection.invalidationHandler.getter();
  a1[1] = v3;
  return sub_245653C70;
}

uint64_t sub_245653C84(uint64_t *a1, char a2, uint64_t a3, SEL *a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a1;
  if (a2)
  {
    sub_24561100C(v6, v5);
    sub_2456565F8(v4, v5, a3, a4);
    sub_2456564BC(v4, v5);
  }

  else
  {
    sub_2456565F8(v6, v5, a3, a4);
  }

  return sub_2456564BC(v4, v5);
}

void *SendableXPCConnection.__allocating_init(listenerEndpoint:interface:invalidationHandler:interruptionHandler:exportedInterface:exportedObject:connectionErrorMapper:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithListenerEndpoint_];
  sub_24563D310(a8, v21);
  swift_allocObject();
  v17 = sub_245656110(v16, a2, a3, a4, a5, a6, a7, v21, a9, a10);

  sub_2456564BC(a5, a6);
  sub_2456564BC(a3, a4);

  sub_245636C48(a8, &unk_27EE1A8A0, &qword_2456618A0);
  return v17;
}

uint64_t sub_245653EB4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(void *, void *, uint64_t, uint64_t, uint64_t, uint64_t, void *, uint64_t, uint64_t, uint64_t))
{
  v18 = a11(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);

  sub_2456564BC(a5, a6);
  sub_2456564BC(a3, a4);

  return v18;
}

uint64_t SendableXPCConnection.deinit()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  [*(v1 + 16) invalidate];
  os_unfair_lock_unlock((v1 + 24));

  return v0;
}

Swift::Void __swiftcall SendableXPCConnection.invalidate()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  [*(v1 + 16) invalidate];

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t SendableXPCConnection.__deallocating_deinit()
{
  SendableXPCConnection.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_245654030(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *a2;
  return MEMORY[0x2822009F8](sub_245654080, 0, 0);
}

uint64_t sub_245654080()
{
  v1 = v0[7];
  v0[8] = SendableXPCConnection.wrapped.getter();
  v2 = *(v1 + 80);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_245654138;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];
  v8 = v0[2];

  return NSXPCConnection.performWithRemoteObjectProxy<A, B>(of:_:)(v8, v3, v7, v5, v2, v6);
}

uint64_t sub_245654138()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_245654274, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_245654274()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t NSXPCConnection.performWithRemoteObjectProxy<A, B>(of:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a3;
  return MEMORY[0x2822009F8](sub_245654300, 0, 0);
}

uint64_t sub_245654300()
{
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAE0, &qword_245661688);
  v2 = swift_allocObject();
  *(v0 + 64) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = *(v0 + 40);
  *(v3 + 32) = v2;
  *(v3 + 40) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_24565443C;
  v7 = *(v0 + 48);
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000023, 0x8000000245664120, sub_2456566D8, v3, v7);
}

uint64_t sub_24565443C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2456545BC;
  }

  else
  {

    v2 = sub_245654558;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245654558()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2456545BC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_245654628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  if (a1)
  {
    v11 = sub_24565BC24();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = a4;
    v12[5] = a3;
    v12[6] = a1;
    v12[7] = a2;
    sub_24561100C(a1, a2);

    sub_24564871C(0, 0, v10, &unk_2456623A0, v12);
  }

  else
  {
    if (qword_27EE1A220 != -1)
    {
      swift_once();
    }

    v13 = sub_24565BAC4();
    __swift_project_value_buffer(v13, qword_27EE1A228);
    v18 = sub_24565BAA4();
    v14 = sub_24565BC84();
    if (os_log_type_enabled(v18, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24560F000, v18, v14, "SendableXPCConnection onCancel is nil", v15, 2u);
      MEMORY[0x245D6D730](v15, -1, -1);
    }

    v16 = v18;
  }
}

uint64_t sub_24565483C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = *a4;
  return MEMORY[0x2822009F8](sub_245654888, 0, 0);
}

uint64_t sub_245654888()
{
  if (qword_27EE1A220 != -1)
  {
    swift_once();
  }

  v1 = sub_24565BAC4();
  v0[7] = __swift_project_value_buffer(v1, qword_27EE1A228);
  v2 = sub_24565BAA4();
  v3 = sub_24565BC74();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24560F000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x245D6D730](v4, -1, -1);
  }

  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];

  v0[8] = SendableXPCConnection.wrapped.getter();
  v9 = swift_allocObject();
  v0[9] = v9;
  v10 = *(v5 + 80);
  v9[2] = v10;
  v9[3] = v6;
  v9[4] = v8;
  v9[5] = v7;

  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_245654A58;
  v13 = MEMORY[0x277D84F78] + 8;

  return NSXPCConnection.performWithRemoteObjectProxy<A, B>(of:_:)(v11, v12, &unk_2456623B0, v9, v10, v13);
}

uint64_t sub_245654A58()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_245654B78;
  }

  else
  {
    v4 = *(v2 + 64);

    v3 = sub_245647E94;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_245654B78()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v1;
  v4 = sub_24565BAA4();
  v5 = sub_24565BC94();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24560F000, v4, v5, "SendableXPCConnection error occurred when cancelling the task: %@", v8, 0xCu);
    sub_245636C48(v9, &qword_27EE1AAD8, &qword_245661680);
    MEMORY[0x245D6D730](v9, -1, -1);
    MEMORY[0x245D6D730](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_245654CE4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24564ABF0;

  return v7(a2);
}

uint64_t SendableXPCConnection.performSynchronouslyWithRemoteObjectProxy<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v26[0] = a3;
  v26[1] = a2;
  v4 = *(*v3 + 80);
  v5 = sub_24565BCE4();
  v28 = *(v5 - 8);
  v29 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v26 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x28223BE20](v6);
  v11 = v26 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = SendableXPCConnection.wrapped.getter();
  v34 = sub_2456566E8;
  v35 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_245655278;
  v33 = &block_descriptor_0;
  v14 = _Block_copy(&aBlock);
  v36[5] = v12;

  v15 = [v13 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v14);

  sub_24565BCF4();
  swift_unknownObjectRelease();
  sub_24564CDB4(v36, &aBlock);
  v16 = swift_dynamicCast();
  v17 = *(v9 + 56);
  if (v16)
  {
    v17(v8, 0, 1, v4);
    (*(v9 + 32))(v11, v8, v4);
    swift_beginAccess();
    v18 = *(v12 + 16);
    if (!v18)
    {
      v27(v11);
      (*(v9 + 8))(v11, v4);
      __swift_destroy_boxed_opaque_existential_1(v36);
    }

    v19 = v3[3];
    v20 = v18;
    v19(v18);
    swift_willThrow();

    (*(v9 + 8))(v11, v4);
  }

  else
  {
    v17(v8, 1, 1, v4);
    (*(v28 + 8))(v8, v29);
    aBlock = 0;
    v31 = 0xE000000000000000;
    sub_24565BD44();
    MEMORY[0x245D6CBA0](0xD000000000000014, 0x8000000245664170);
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    sub_24565BEB4();
    MEMORY[0x245D6CBA0](0xD000000000000013, 0x8000000245664190);
    v21 = sub_24565BFF4();
    MEMORY[0x245D6CBA0](v21);

    v22 = aBlock;
    v23 = v31;
    sub_24564CE10();
    swift_allocError();
    *v24 = 2;
    *(v24 + 8) = v22;
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v36);
}

id sub_245655224(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_245655278(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2456552E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1AAD0, &qword_2456615E0);
  v10 = sub_24565BC04();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v23 - v16;
  v18 = sub_24565BC24();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v11 + 16))(v14, a1, v10);
  v19 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = v23;
  *(v20 + 5) = a6;
  *(v20 + 6) = a2;
  (*(v11 + 32))(&v20[v19], v14, v10);
  v21 = &v20[(v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v21 = v24;
  v21[1] = a4;

  sub_24564871C(0, 0, v17, &unk_245662390, v20);
}

uint64_t sub_245655524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v13;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v8[18] = swift_task_alloc();
  v10 = sub_24565BCE4();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();
  v8[22] = *(a8 - 8);
  v8[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245655670, 0, 0);
}

uint64_t sub_245655670()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[12];
  v3 = v0[13];
  os_unfair_lock_lock((v4 + 24));
  sub_245655CF8((v4 + 16), v3, v1, v2, v0 + 2);
  os_unfair_lock_unlock((v4 + 24));
  v5 = v0[22];
  sub_24564CDB4((v0 + 2), (v0 + 6));
  v6 = swift_dynamicCast();
  v7 = *(v5 + 56);
  if (v6)
  {
    v9 = v0[22];
    v8 = v0[23];
    v10 = v0[21];
    v11 = v0[16];
    v12 = v0[14];
    v7(v10, 0, 1, v11);
    (*(v9 + 32))(v8, v10, v11);
    v24 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[24] = v13;
    *v13 = v0;
    v13[1] = sub_245655A0C;
    v14 = v0[23];
    v15 = v0[18];

    return v24(v15, v14);
  }

  else
  {
    v18 = v0[20];
    v17 = v0[21];
    v19 = v0[19];
    v7(v17, 1, 1, v0[16]);
    (*(v18 + 8))(v17, v19);
    sub_24565BD44();
    MEMORY[0x245D6CBA0](0xD000000000000014, 0x8000000245664170);
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_24565BEB4();
    MEMORY[0x245D6CBA0](0xD000000000000013, 0x8000000245664190);
    v20 = sub_24565BFF4();
    MEMORY[0x245D6CBA0](v20);

    sub_24564CE10();
    v21 = swift_allocError();
    *v22 = 2;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0xE000000000000000;
    *(v22 + 24) = 0;
    v0[10] = v21;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1AAD0, &qword_2456615E0);
    sub_24565BC04();
    sub_24565BBE4();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_245655A0C()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_245655C10;
  }

  else
  {
    v2 = sub_245655B20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245655B20()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1AAD0, &qword_2456615E0);
  sub_24565BC04();
  sub_24565BBF4();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_245655C10()
{
  v1 = v0[25];
  (*(v0[22] + 8))(v0[23], v0[16]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1AAD0, &qword_2456615E0);
  sub_24565BC04();
  sub_24565BBE4();

  v2 = v0[1];

  return v2();
}

uint64_t sub_245655CF8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v19[1] = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1AAD0, &qword_2456615E0);
  v9 = sub_24565BC04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - v11;
  v13 = *a1;
  (*(v10 + 16))(v19 - v11, a2, v9);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  (*(v10 + 32))(v15 + v14, v12, v9);
  aBlock[4] = sub_245656928;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245655278;
  aBlock[3] = &block_descriptor_62;
  v16 = _Block_copy(aBlock);

  v17 = [v13 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_24565BCF4();
  return swift_unknownObjectRelease();
}

uint64_t sub_245655F04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27EE1A220 != -1)
  {
    swift_once();
  }

  v5 = sub_24565BAC4();
  __swift_project_value_buffer(v5, qword_27EE1A228);
  v6 = a1;
  v7 = sub_24565BAA4();
  v8 = sub_24565BC94();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_24565BF44();
    v13 = sub_24564B55C(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_24560F000, v7, v8, "XPC connection error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D6D730](v10, -1, -1);
    MEMORY[0x245D6D730](v9, -1, -1);
  }

  sub_24564CE10();
  v14 = swift_allocError();
  *v15 = 4;
  *(v15 + 8) = 0xD000000000000014;
  *(v15 + 16) = 0x80000002456641D0;
  *(v15 + 24) = a1;
  v18 = v14;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1AAD0, &qword_2456615E0);
  sub_24565BC04();
  return sub_24565BBE4();
}

void *sub_245656110(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  [a1 setRemoteObjectInterface_];
  if (a3)
  {
    v31 = a3;
    v32 = a4;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_245646920;
    v30 = &block_descriptor_68;
    a3 = _Block_copy(&aBlock);
  }

  [a1 setInvalidationHandler_];
  _Block_release(a3);
  if (a5)
  {
    v31 = a5;
    v32 = a6;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_245646920;
    v30 = &block_descriptor_65;
    a5 = _Block_copy(&aBlock);
  }

  [a1 setInterruptionHandler_];
  _Block_release(a5);
  [a1 setExportedInterface_];
  sub_24563D310(a8, &aBlock);
  v18 = v30;
  if (v30)
  {
    v19 = __swift_project_boxed_opaque_existential_1(&aBlock, v30);
    v20 = *(v18 - 1);
    MEMORY[0x28223BE20](v19);
    v22 = &aBlock - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v22);
    v23 = sub_24565BEC4();
    (*(v20 + 8))(v22, v18);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    v23 = 0;
  }

  [a1 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAE0, &qword_245661688);
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  *(v24 + 16) = a1;
  v10[2] = v24;
  v10[3] = a9;
  v10[4] = a10;
  v25 = a1;

  [v25 activate];
  sub_245636C48(a8, &unk_27EE1A8A0, &qword_2456618A0);
  return v10;
}

uint64_t sub_2456564BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2456564CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24564ABF0;

  return sub_245654030(a1, v5, v7, v6, v4);
}

void sub_2456565F8(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v9 = *(v4 + 16);
  os_unfair_lock_lock((v9 + 24));
  v10 = *(v9 + 16);
  if (a1)
  {
    v12[4] = a1;
    v12[5] = a2;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_245646920;
    v12[3] = a3;
    v11 = _Block_copy(v12);
  }

  else
  {
    v11 = 0;
  }

  [v10 *a4];
  _Block_release(v11);
  os_unfair_lock_unlock((v9 + 24));
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2456567AC(uint64_t a1)
{
  v3 = v2;
  v16 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1AAD0, &qword_2456615E0);
  v5 = *(sub_24565BC04() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24564EB28;

  return sub_245655524(a1, v7, v8, v9, v1 + v6, v11, v12, v16);
}

uint64_t sub_245656928(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1AAD0, &qword_2456615E0);
  v5 = *(sub_24565BC04() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_245655F04(a1, v6, v3, v4);
}

uint64_t sub_2456569D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24564ABF0;

  return sub_24565483C(a1, v4, v5, v7, v9, v8, v6);
}

uint64_t sub_245656AA4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24564EB28;

  return sub_245654CE4(a1, a2, v6);
}