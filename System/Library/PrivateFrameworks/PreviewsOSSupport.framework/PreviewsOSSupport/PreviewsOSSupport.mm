id UVShellConnectionInterface(uint64_t a1)
{
  v1 = [MEMORY[0x277CF3278] interfaceWithIdentifier:a1];
  v2 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_28718A7C0];
  [v1 setServer:v2];

  v3 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_28718A7C0];
  [v1 setClient:v3];

  return v1;
}

uint64_t ClientRole.handleActivation(_:)(void *a1)
{
  v3 = sub_25F5025E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90180, &qword_25F503780);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v15 - v9;
  v11 = [a1 remoteToken];
  sub_25F4D6100(v1, v10);

  v12 = *(v8 + 56);
  sub_25F5025F8();
  if (v11)
  {
    v15[1] = v11;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90190, &qword_25F503788);
    sub_25F4D8FF0(&qword_27FD90198, &qword_27FD90190, &qword_25F503788, MEMORY[0x277D405D8]);
    sub_25F5022D8();
  }

  else
  {
    sub_25F4D6170();
    v11 = swift_allocError();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90190, &qword_25F503788);
    sub_25F4D8FF0(&qword_27FD90198, &qword_27FD90190, &qword_25F503788, MEMORY[0x277D405D8]);
    sub_25F5022C8();
  }

  (*(v4 + 8))(v6, v3);

  return (*(*(v13 - 8) + 8))(&v10[v12], v13);
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

uint64_t sub_25F4D6100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90180, &qword_25F503780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F4D6170()
{
  result = qword_27FD90188;
  if (!qword_27FD90188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90188);
  }

  return result;
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

Swift::Void __swiftcall ClientRole.handleInvalidation()()
{
  v1 = sub_25F5025E8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90180, &qword_25F503780);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  sub_25F4D6100(v0, &v11 - v7);

  v9 = *(v6 + 56);
  sub_25F5025F8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90190, &qword_25F503788);
  sub_25F4D8FF0(&qword_27FD90198, &qword_27FD90190, &qword_25F503788, MEMORY[0x277D405D8]);
  sub_25F5022B8();
  (*(v2 + 8))(v4, v1);
  (*(*(v10 - 8) + 8))(&v8[v9], v10);
}

uint64_t sub_25F4D6420()
{
  v1 = sub_25F5025E8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90180, &qword_25F503780);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  sub_25F4D6100(v0, &v12 - v7);

  v9 = *(v6 + 56);
  sub_25F5025F8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90190, &qword_25F503788);
  sub_25F4D8FF0(&qword_27FD90198, &qword_27FD90190, &qword_25F503788, MEMORY[0x277D405D8]);
  sub_25F5022B8();
  (*(v2 + 8))(v4, v1);
  return (*(*(v10 - 8) + 8))(&v8[v9], v10);
}

uint64_t ServerRole.clientContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F502258();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id ServerRole.clientAuditToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for ServerRole(0) + 20));

  return v1;
}

uint64_t ShellConnection<>.serverAuditToken.getter()
{
  v1[3] = v0;
  v1[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90180, &qword_25F503780);
  v1[5] = swift_task_alloc();
  type metadata accessor for ClientRole(0);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F4D67DC, 0, 0);
}

uint64_t sub_25F4D67DC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  sub_25F4D8F08(*(v0 + 24) + *(**(v0 + 24) + 136), v2, type metadata accessor for ClientRole);
  sub_25F4D6C28(v2, v1);
  v4 = *v1;
  *(v0 + 56) = *v1;
  *(v0 + 80) = *(v3 + 48);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = sub_25F4D8634(0, &unk_27FD901A0, 0x277CF0B98);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A50, &qword_25F503DF0);
  *v5 = v0;
  v5[1] = sub_25F4D6918;
  v8 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 16, v4, v6, v7, v8);
}

uint64_t sub_25F4D6918()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_25F4D6B10;
  }

  else
  {
    v2 = sub_25F4D6A48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F4D6A48()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90190, &qword_25F503788);
  (*(*(v4 - 8) + 8))(v2 + v1, v4);

  v5 = *(v0 + 8);

  return v5(v3);
}

uint64_t sub_25F4D6B10()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90190, &qword_25F503788);
  (*(*(v3 - 8) + 8))(v2 + v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25F4D6BF0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F4D6C28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90180, &qword_25F503780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_25F4D6CCC(void *a1)
{
  v2 = sub_25F5021A8();
  v3 = sub_25F502778();
  [a1 encodeObject:v2 forKey:v3];
}

uint64_t sub_25F4D6D54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

unint64_t sub_25F4D6DA8()
{
  sub_25F5029B8();

  v0 = ShellService.description.getter();
  MEMORY[0x25F8DED60](v0);

  MEMORY[0x25F8DED60](10272, 0xE200000000000000);
  sub_25F4D9098(0, &qword_27FD903D0, _s17MachLookupFailureVMa);
  sub_25F501EB8();
  sub_25F4D95E8();
  v1 = sub_25F502A28();
  MEMORY[0x25F8DED60](v1);

  MEMORY[0x25F8DED60](41, 0xE100000000000000);
  return 0xD000000000000022;
}

uint64_t sub_25F4D6EB4()
{
  sub_25F4D9098(0, &qword_27FD903D0, _s17MachLookupFailureVMa);
  v2 = ShellService.Domain.machName(for:)(v0 + *(v1 + 20));
  MEMORY[0x25F8DED60](v2);

  return 0x6D616E206863614DLL;
}

uint64_t sub_25F4D6FAC(uint64_t a1)
{
  v2 = sub_25F4D90FC(&qword_27FD90508, &qword_27FD903D0, _s17MachLookupFailureVMa, &unk_25F503AB8);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F4D702C(uint64_t a1)
{
  v2 = sub_25F4D90FC(&qword_27FD90508, &qword_27FD903D0, _s17MachLookupFailureVMa, &unk_25F503AB8);

  return MEMORY[0x2821A07F0](a1, v2);
}

unint64_t sub_25F4D70A0()
{
  sub_25F5029B8();

  v0 = ShellService.description.getter();
  MEMORY[0x25F8DED60](v0);

  return 0xD00000000000002FLL;
}

uint64_t sub_25F4D7128()
{
  v1 = [*(v0 + 8) description];
  v2 = sub_25F502788();
  v4 = v3;

  MEMORY[0x25F8DED60](v2, v4);

  return 0x746E696F70646E45;
}

uint64_t sub_25F4D71BC(uint64_t a1)
{
  v2 = sub_25F4D90FC(&unk_27FD90510, &qword_27FD903B0, _s25EndpointConnectionFailureVMa, &unk_25F5039A8);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F4D7230(uint64_t a1)
{
  v2 = sub_25F4D90FC(&unk_27FD90510, &qword_27FD903B0, _s25EndpointConnectionFailureVMa, &unk_25F5039A8);

  return MEMORY[0x2821A07F0](a1, v2);
}

void *ShellConnection<>.init(connection:context:service:)(void *a1, void *a2, unsigned __int8 *a3)
{
  v30 = a1;
  v31 = type metadata accessor for ServerRole(0);
  MEMORY[0x28223BE20](v31);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F502028();
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD901B0, &qword_25F5037A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  v13 = sub_25F502258();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a3;
  sub_25F4D8634(0, &qword_27FD901B8, 0x277D40FE8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = sub_25F502778();
  v32 = a2;
  v19 = [a2 decodeObjectOfClass:ObjCClassFromMetadata forKey:v18];

  if (v19)
  {
    sub_25F502968();
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
    sub_25F4D867C(v36, &unk_27FD901C0, &qword_25F5037A8);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v20 = 0;
    goto LABEL_10;
  }

  v20 = v33[0];
  if (v33[0])
  {
    v21 = v33[0];
    sub_25F502938();

    sub_25F502008();
    (*(v27 + 8))(v9, v28);
    (*(v14 + 56))(v12, 0, 1, v13);
    (*(v14 + 32))(v16, v12, v13);
    goto LABEL_12;
  }

LABEL_10:
  (*(v14 + 56))(v12, 1, 1, v13);
  _s17PreviewsOSSupport15ShellConnectionCA2A10ClientRoleVRszrlE16createByEndpoint_3for13clientContextACyAEGSo09BSServicedI0C_AA0C7ServiceO0A12FoundationOS12PropertyListVtKFZfA1__0();
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_25F4D867C(v12, &qword_27FD901B0, &qword_25F5037A0);
  }

LABEL_12:
  (*(v14 + 16))(v6, v16, v13);
  v22 = v30;
  v23 = [v22 remoteToken];
  *&v6[*(v31 + 20)] = v23;
  swift_allocObject();
  v24 = sub_25F4D86DC(v22, v29, v6);
  swift_unknownObjectRelease();

  (*(v14 + 8))(v16, v13);
  return v24;
}

id ShellConnection<>.clientAuditToken.getter()
{
  v1 = v0 + *(*v0 + 136);
  v2 = *(v1 + *(type metadata accessor for ServerRole(0) + 20));

  return v2;
}

uint64_t ShellConnection<>.clientContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 136);
  v4 = sub_25F502258();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t default argument 2 of ShellConnectionSender<>.send<A>(endpoint:context:expecting:)(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t sub_25F4D7820(uint64_t a1, uint64_t a2)
{
  v3 = sub_25F5025E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(a2 + 32) invalidate];
  type metadata accessor for ClientRole(0);
  sub_25F4D6420();
  sub_25F5025F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90330, &qword_25F503890);
  sub_25F4D8FF0(qword_27FD90B80, &qword_27FD90330, &qword_25F503890, MEMORY[0x277D405D8]);
  sub_25F5022B8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_25F4D79BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_25F5025E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(a2 + 32) invalidate];
  sub_25F5025F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90330, &qword_25F503890);
  sub_25F4D8FF0(qword_27FD90B80, &qword_27FD90330, &qword_25F503890, MEMORY[0x277D405D8]);
  sub_25F5022B8();
  return (*(v4 + 8))(v6, v3);
}

void *sub_25F4D7B2C(void *a1, int a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v23 = a1;
  v5 = *v3;
  v25 = a3;
  v26 = v5;
  v22 = sub_25F5025E8();
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90330, &qword_25F503890);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  v13 = sub_25F502468();
  MEMORY[0x28223BE20](v13);
  (*(v15 + 104))(&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D404B8]);
  sub_25F502558();
  swift_allocObject();
  v3[2] = sub_25F502548();
  v16 = qword_27FD90A58;
  sub_25F5025F8();
  v17 = sub_25F5028B8();
  (*(v6 + 8))(v8, v22);
  (*(v10 + 32))(v4 + v16, v12, v9);
  v4[5] = v17;
  v18 = v23;
  v4[4] = v23;
  *(v4 + 24) = v24;
  v19 = v25;
  sub_25F4D8F08(v25, v4 + *(*v4 + 136), type metadata accessor for ClientRole);
  v27 = v4;
  sub_25F4D8FF0(&qword_27FD903C8, &qword_27FD903C0, &qword_25F504A40, &protocol conformance descriptor for ShellConnection<A>);
  v20 = v18;

  sub_25F5024C8();

  sub_25F4D9038(v19, type metadata accessor for ClientRole);
  return v4;
}

void *sub_25F4D7F04(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = sub_25F5025E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for ClientRole(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a2;
  v24 = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_25F4D8F78;
  *(v14 + 24) = v23;
  aBlock[4] = sub_25F4D8F90;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F4D6D54;
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);
  v16 = objc_opt_self();

  v17 = [v16 connectionWithEndpoint:a1 clientContextBuilder:v15];
  _Block_release(v15);

  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90180, &qword_25F503780);
      v19 = v17;
      sub_25F5025F8();
      sub_25F4D8634(0, &unk_27FD901A0, 0x277CF0B98);
      v20 = sub_25F5028B8();
      (*(v7 + 8))(v9, v6);
      *v12 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD903C0, &qword_25F504A40);
      swift_allocObject();
      v13 = sub_25F4D7B2C(v19, v13, v12);
    }

    else
    {
      sub_25F4D9098(0, &qword_27FD903B0, _s25EndpointConnectionFailureVMa);
      sub_25F4D90FC(&qword_27FD903B8, &qword_27FD903B0, _s25EndpointConnectionFailureVMa, &unk_25F503B98);
      swift_allocError();
      *v21 = v13;
      *(v21 + 8) = a1;
      swift_willThrow();
      v22 = a1;
    }

    return v13;
  }

  return result;
}

void *sub_25F4D82A4(unsigned __int8 *a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v4 = *a1;
  if (v4 <= 9)
  {
    v5 = 1;
    if (((1 << v4) & 0x3CC) != 0)
    {
      v6 = 0;
      goto LABEL_4;
    }

    if (v4 == 4)
    {
LABEL_14:
      v22 = v5;
      ShellService.Domain.machName(for:)(a2);
      goto LABEL_15;
    }

    if (v4 == 5)
    {
      v5 = 2;
      goto LABEL_14;
    }
  }

  v6 = 3;
LABEL_4:
  v22 = v6;
  ShellService.Domain.machName(for:)(a2);
  if (v4 > 5)
  {
    if (v4 > 7)
    {
      if (v4 == 8)
      {
        v7 = 0;
      }

      else
      {
        if (v4 != 9)
        {
          goto LABEL_29;
        }

        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_22;
  }

  if ((v4 - 4) < 2)
  {
LABEL_15:
    v7 = 0;
    goto LABEL_22;
  }

  if (v4 != 2)
  {
    if (v4 == 3)
    {
      v7 = 0;
      goto LABEL_22;
    }

LABEL_29:
    if (v4)
    {
      v7 = 0xED00006563697672;
    }

    else
    {
      v7 = 0xEC00000065636976;
    }

    goto LABEL_22;
  }

  v7 = 0;
LABEL_22:
  v8 = sub_25F502778();

  v9 = sub_25F502778();

  if (v7)
  {
    v10 = sub_25F502778();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() endpointForMachName:v8 service:v9 instance:v10];

  if (v11)
  {
    v21 = v4;
    v12 = v11;
    v3 = sub_25F4D7F04(v12, &v21, a3);
  }

  else
  {
    sub_25F4D9098(0, &qword_27FD903D0, _s17MachLookupFailureVMa);
    v14 = v13;
    sub_25F4D90FC(qword_27FD903D8, &qword_27FD903D0, _s17MachLookupFailureVMa, &unk_25F503B58);
    swift_allocError();
    v16 = v15;
    *v15 = v4;
    v17 = *(v14 + 20);
    v18 = sub_25F501EB8();
    (*(*(v18 - 8) + 16))(&v16[v17], v3, v18);
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_25F4D8634(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_25F4D867C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_25F4D86DC(void *a1, int a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v23 = a1;
  v5 = *v3;
  v25 = a3;
  v26 = v5;
  v22 = sub_25F5025E8();
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90330, &qword_25F503890);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  v13 = sub_25F502468();
  MEMORY[0x28223BE20](v13);
  (*(v15 + 104))(&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D404B8]);
  sub_25F502558();
  swift_allocObject();
  v3[2] = sub_25F502548();
  v16 = qword_27FD90A58;
  sub_25F5025F8();
  v17 = sub_25F5028B8();
  (*(v6 + 8))(v8, v22);
  (*(v10 + 32))(v4 + v16, v12, v9);
  v4[5] = v17;
  v18 = v23;
  v4[4] = v23;
  *(v4 + 24) = v24;
  v19 = v25;
  sub_25F4D8F08(v25, v4 + *(*v4 + 136), type metadata accessor for ServerRole);
  v27 = v4;
  sub_25F4D8FF0(&qword_27FD90338, &unk_27FD90340, qword_25F503898, &protocol conformance descriptor for ShellConnection<A>);
  v20 = v18;

  sub_25F5024C8();

  sub_25F4D9038(v19, type metadata accessor for ServerRole);
  return v4;
}

uint64_t sub_25F4D8AC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90180, &qword_25F503780);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F4D8B54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90180, &qword_25F503780);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_25F4D8BD0(uint64_t a1)
{
  sub_25F4D8C3C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25F4D8C3C(uint64_t a1)
{
  if (!qword_27FD901E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD901E8, "dG");
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD90190, &qword_25F503788);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FD901E0);
    }
  }
}

uint64_t sub_25F4D8CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F502258();
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

uint64_t sub_25F4D8DAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F502258();
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

uint64_t sub_25F4D8E64(uint64_t a1)
{
  result = sub_25F502258();
  if (v2 <= 0x3F)
  {
    result = sub_25F4D8634(319, &unk_27FD901A0, 0x277CF0B98);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F4D8F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F4D8FF0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_25F4D9038(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25F4D9098(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25F4D90FC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_25F4D9098(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F4D9148(uint64_t a1)
{
  result = sub_25F501EB8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F4D91D8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 246)
  {
    v4 = *a1;
    if (v4 <= 9)
    {
      v5 = 9;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 9;
    if (v4 >= 2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_25F501EB8();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_25F4D929C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 246)
  {
    *result = a2 + 9;
  }

  else
  {
    v7 = sub_25F501EB8();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25F4D933C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25F4D9384(uint64_t a1, int a2)
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

uint64_t sub_25F4D93CC(uint64_t result, int a2, int a3)
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

unint64_t sub_25F4D95E8()
{
  result = qword_27FD90500;
  if (!qword_27FD90500)
  {
    sub_25F501EB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90500);
  }

  return result;
}

uint64_t sub_25F4D9688()
{
  v1 = *v0;
  sub_25F502B08();
  MEMORY[0x25F8DF0B0](v1);
  return sub_25F502B38();
}

uint64_t sub_25F4D96FC(uint64_t a1)
{
  v2 = *v1;
  sub_25F502B08();
  MEMORY[0x25F8DF0B0](v2);
  return sub_25F502B38();
}

uint64_t sub_25F4D9740()
{
  v1 = *(v0 + 4);
  sub_25F502B08();
  sub_25F502B28();
  MEMORY[0x25F8DF0B0](v1);
  return sub_25F502B38();
}

uint64_t sub_25F4D97A0()
{
  v1 = *(v0 + 4);
  sub_25F502B28();
  return MEMORY[0x25F8DF0B0](v1);
}

uint64_t sub_25F4D97E0(uint64_t a1)
{
  v2 = *(v1 + 4);
  sub_25F502B08();
  sub_25F502B28();
  MEMORY[0x25F8DF0B0](v2);
  return sub_25F502B38();
}

unint64_t sub_25F4D9868(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if (!*(v6 + 16) || (v7 = a2 | (a1 << 32), result = sub_25F501880(v7), (v9 & 1) == 0))
  {
    v16 = sub_25F502778();
    v17 = sub_25F502778();
    v18 = [objc_opt_self() attributeWithDomain:v16 name:v17];

    if (a1 > 1u)
    {
      v20 = v18;
      v22 = sub_25F502778();
      v21 = [objc_opt_self() targetWithPid:a2 environmentIdentifier:v22];
    }

    else
    {
      v19 = objc_opt_self();
      v20 = v18;
      v21 = [v19 targetWithPid_];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD905A0, &qword_25F503C90);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_25F503BE0;
    *(v23 + 32) = v20;
    v24 = objc_allocWithZone(MEMORY[0x277D46DB8]);
    v25 = v21;
    v26 = sub_25F502778();

    sub_25F4DAB1C();
    v27 = sub_25F5027E8();

    v28 = [v24 initWithExplanation:v26 target:v25 attributes:v27];

    v15 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v3;
    sub_25F4FE27C(v15, 1, a2 | (a1 << 32), isUniquelyReferenced_nonNull_native);

    goto LABEL_9;
  }

  v10 = *(v6 + 56) + 16 * result;
  v11 = *(v10 + 8);
  v12 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    v13 = *v10;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v3;
    sub_25F4FE27C(v13, v12, v7, v14);
    v15 = 0;
LABEL_9:
    *v3 = v30;
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_25F4D9C94()
{
  type metadata accessor for PreviewAssertionManager();
  v0 = swift_allocObject();
  sub_25F500858(MEMORY[0x277D84F90]);
  result = sub_25F5026C8();
  *(v0 + 16) = result;
  qword_27FD90580 = v0;
  return result;
}

uint64_t static PreviewAssertionManager.shared.getter()
{
  if (qword_27FD90160 != -1)
  {
    swift_once();
  }
}

uint64_t PreviewAssertionManager.takeActivePreviewAssertion(for:)(uint64_t a1)
{
  v2 = a1;
  sub_25F4D9E0C(0, a1);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return sub_25F502318();
}

void sub_25F4D9E0C(char a1, int a2)
{
  v5 = sub_25F5025E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  aBlock[7] = *(v2 + 16);

  sub_25F5025F8();
  v13[16] = a1;
  v14 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90588, &qword_25F503C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90590, &qword_25F503C88);
  sub_25F4DA9A0();
  sub_25F502528();
  (*(v6 + 8))(v8, v5);

  v9 = aBlock[0];
  if (aBlock[0])
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = v2;
    *(v10 + 32) = a1;
    aBlock[4] = sub_25F4DAA84;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25F4DA854;
    aBlock[3] = &block_descriptor_0;
    v11 = _Block_copy(aBlock);
    v12 = v9;

    [v12 acquireWithInvalidationHandler_];

    _Block_release(v11);
  }
}

void sub_25F4DA074(uint64_t a1, int a2)
{
  v4 = sub_25F5025E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a1 + 16);

  sub_25F5025F8();
  v10 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90588, &qword_25F503C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90590, &qword_25F503C88);
  sub_25F4DA9A0();
  sub_25F502528();
  (*(v5 + 8))(v7, v4);

  v8 = v12;
  [v12 invalidate];
}

uint64_t sub_25F4DA218()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

void sub_25F4DA25C(uint64_t *result@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16))
  {
    v6 = a2;
    v7 = sub_25F501880(a2);
    if (v8)
    {
      v9 = *(v4 + 56) + 16 * v7;
      v10 = *v9;
      v11 = *(v9 + 8);
      if (v11 < 2)
      {
        v15 = v10;
        sub_25F4F9DFC(0, 0, v6);
      }

      else
      {
        v12 = v11 - 1;
        v13 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = *result;
        sub_25F4FE27C(v13, v12, v6, isUniquelyReferenced_nonNull_native);
        v15 = 0;
        *result = v16;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  *a3 = v15;
}

uint64_t sub_25F4DA35C(uint64_t a1, void *a2, int a3, uint64_t a4, int a5)
{
  v41 = a5;
  v40 = a1;
  v8 = sub_25F5025E8();
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F502718();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v43 = a3;
  if (a2)
  {
    v39 = v8;
    v18 = a2;
    sub_25F5026D8();
    v19 = a2;
    v20 = sub_25F5026F8();
    v21 = sub_25F502918();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v38 = a4;
      v23 = v22;
      v24 = swift_slowAlloc();
      v37 = v11;
      v25 = v24;
      v44 = v24;
      *v23 = 67240450;
      *(v23 + 4) = a3;
      *(v23 + 8) = 2080;
      swift_getErrorValue();
      v26 = sub_25F502A98();
      v28 = sub_25F4DE2EC(v26, v27, &v44);

      *(v23 + 10) = v28;
      _os_log_impl(&dword_25F4D4000, v20, v21, "Assertion error for pid %{public}d: %s", v23, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x25F8DF6E0](v25, -1, -1);
      v29 = v23;
      a4 = v38;
      MEMORY[0x25F8DF6E0](v29, -1, -1);

      (*(v12 + 8))(v17, v37);
    }

    else
    {

      (*(v12 + 8))(v17, v11);
    }

    v8 = v39;
  }

  else
  {
    v30 = v11;
    sub_25F5026D8();
    v31 = sub_25F5026F8();
    v32 = sub_25F502908();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 67240192;
      *(v33 + 4) = v43;
      _os_log_impl(&dword_25F4D4000, v31, v32, "Assertion invalidated for pid %{public}d", v33, 8u);
      MEMORY[0x25F8DF6E0](v33, -1, -1);
    }

    (*(v12 + 8))(v15, v30);
  }

  v44 = *(a4 + 16);

  v34 = sub_25F5025F8();
  MEMORY[0x28223BE20](v34);
  *(&v36 - 2) = v40;
  *(&v36 - 8) = v41;
  *(&v36 - 1) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90588, &qword_25F503C80);
  sub_25F4DA9A0();
  sub_25F502528();
  (*(v42 + 8))(v10, v8);
}

void sub_25F4DA7C4(uint64_t *result, uint64_t a2, unsigned __int8 a3, unsigned int a4)
{
  v4 = *result;
  if (*(*result + 16))
  {
    v6 = a4 | (a3 << 32);
    v7 = sub_25F501880(v6);
    if ((v8 & 1) != 0 && *(*(v4 + 56) + 16 * v7) == a2)
    {
      sub_25F4F9DFC(0, 0, v6);
    }
  }
}

void sub_25F4DA854(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t PreviewAssertionManager.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_25F4DA9A0()
{
  result = qword_27FD90598;
  if (!qword_27FD90598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD90588, &qword_25F503C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90598);
  }

  return result;
}

unint64_t sub_25F4DAA04@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25F4D9868(*(v1 + 16), *(v1 + 20));
  *a1 = result;
  return result;
}

uint64_t sub_25F4DAA4C()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

unint64_t sub_25F4DAB1C()
{
  result = qword_27FD905A8;
  if (!qword_27FD905A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD905A8);
  }

  return result;
}

uint64_t sub_25F4DAB68(uint64_t *a1, int a2)
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

uint64_t sub_25F4DABB0(uint64_t result, int a2, int a3)
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

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PreviewAssertionManager.Storage.Key(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PreviewAssertionManager.Storage.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_25F4DACB0()
{
  result = qword_27FD905B0;
  if (!qword_27FD905B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD905B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewAssertionManager.AssertionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PreviewAssertionManager.AssertionType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F4DAE74()
{
  result = qword_27FD905B8;
  if (!qword_27FD905B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD905B8);
  }

  return result;
}

uint64_t ShellConnectionMessage<>.reply.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {

    sub_25F4D8634(255, &qword_27FD905C0, 0x277CF3288);
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v8 = sub_25F501FA8();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(v8 - 8) + 32))(a2, v4 + *(TupleTypeMetadata2 + 48), v8);
      return (*(*(AssociatedTypeWitness - 8) + 8))(v4, AssociatedTypeWitness);
    }

    if (EnumCaseMultiPayload != 2)
    {
      result = sub_25F502A58();
      __break(1u);
      return result;
    }

    sub_25F4D8634(255, &qword_27FD905C8, 0x277CCAEA0);
  }

  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_25F501FA8();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v14 = *(TupleTypeMetadata3 + 48);
  (*(*(v12 - 8) + 32))(a2, v4 + *(TupleTypeMetadata3 + 64), v12);
  return (*(*(v11 - 8) + 8))(v4 + v14, v11);
}

uint64_t ShellConnectionMessage<>.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v7 = sub_25F501FA8();
    v8 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(AssociatedTypeWitness - 8) + 32))(a2, v4, AssociatedTypeWitness);
    return (*(*(v7 - 8) + 8))(&v4[v8], v7);
  }

  else
  {
    result = sub_25F502A58();
    __break(1u);
  }

  return result;
}

uint64_t ShellConnectionSender.transportDescription.getter()
{
  v0 = sub_25F4DE894();

  return v0;
}

uint64_t ShellConnectionSender.messageRelay.getter()
{
  v0 = sub_25F4DE89C();

  return v0;
}

uint64_t sub_25F4DB37C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  type metadata accessor for ShellConnection(0, *(*a1 + 80), *(*a1 + 88), a5);
  swift_getWitnessTable();
  sub_25F502A48();
  *a4 = 0;
  a4[1] = 0xE000000000000000;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;
  a4[2] = sub_25F4DF8A8;
  a4[3] = v9;
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;
  a4[4] = sub_25F4DF884;
  a4[5] = v10;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a1;
  a4[6] = sub_25F4DF860;
  a4[7] = v11;
  return swift_retain_n();
}

uint64_t sub_25F4DB4D8()
{
  v0 = sub_25F4DE894();

  return v0;
}

uint64_t sub_25F4DB510()
{
  v0 = sub_25F4DE89C();

  return v0;
}

uint64_t ShellConnectionSender<>.send(endpoint:context:reply:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a5;
  v49 = a1;
  v50 = a3;
  v52 = a2;
  v51 = sub_25F502028();
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v46 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F502258();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  v15 = sub_25F502718();
  v38 = *(v15 - 8);
  v39 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v5[1];
  v35 = *v5;
  v41 = v5[4];
  v19 = v5[5];
  sub_25F5026E8();
  v20 = *(v10 + 16);
  v42 = AssociatedTypeWitness;
  v36 = v20;
  v20(v14, v52, AssociatedTypeWitness);

  v21 = sub_25F5026F8();
  v22 = sub_25F5028F8();

  v40 = v19;

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v53[0] = v24;
    *v23 = 136446466;

    v25 = sub_25F4DE2EC(v35, v18, v53);
    LODWORD(v35) = v22;
    v26 = v25;

    *(v23 + 4) = v26;
    *(v23 + 12) = 2082;
    v27 = v42;
    v36(v37, v14, v42);
    v28 = sub_25F502798();
    v30 = v29;
    (*(v10 + 8))(v14, v27);
    v31 = sub_25F4DE2EC(v28, v30, v53);

    *(v23 + 14) = v31;
    _os_log_impl(&dword_25F4D4000, v21, v35, "%{public}s sending xpc endpoint: %{public}s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8DF6E0](v24, -1, -1);
    MEMORY[0x25F8DF6E0](v23, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v14, v42);
  }

  (*(v38 + 8))(v17, v39);
  v32 = v43;
  sub_25F5024D8();
  v33 = v46;
  sub_25F502198();
  (*(v44 + 8))(v32, v45);
  v41(v49, v33, v50);
  return (*(v48 + 8))(v33, v51);
}

{
  v47 = a5;
  v49 = a1;
  v50 = a3;
  v52 = a2;
  v51 = sub_25F502028();
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v46 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F502258();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  v15 = sub_25F502718();
  v38 = *(v15 - 8);
  v39 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v5[1];
  v35 = *v5;
  v41 = v5[6];
  v19 = v5[7];
  sub_25F5026E8();
  v20 = *(v10 + 16);
  v42 = AssociatedTypeWitness;
  v36 = v20;
  v20(v14, v52, AssociatedTypeWitness);

  v21 = sub_25F5026F8();
  v22 = sub_25F5028F8();
  v40 = v19;

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v53[0] = v24;
    *v23 = 136446466;

    v25 = sub_25F4DE2EC(v35, v18, v53);
    LODWORD(v35) = v22;
    v26 = v25;

    *(v23 + 4) = v26;
    *(v23 + 12) = 2082;
    v27 = v42;
    v36(v37, v14, v42);
    v28 = sub_25F502798();
    v30 = v29;
    (*(v10 + 8))(v14, v27);
    v31 = sub_25F4DE2EC(v28, v30, v53);

    *(v23 + 14) = v31;
    _os_log_impl(&dword_25F4D4000, v21, v35, "%{public}s sending bs endpoint: %{public}s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8DF6E0](v24, -1, -1);
    MEMORY[0x25F8DF6E0](v23, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v14, v42);
  }

  (*(v38 + 8))(v17, v39);
  v32 = v43;
  sub_25F5024D8();
  v33 = v46;
  sub_25F502198();
  (*(v44 + 8))(v32, v45);
  v41(v49, v33, v50);
  return (*(v48 + 8))(v33, v51);
}

uint64_t ShellConnectionSender<>.send(endpoint:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_25F4DBFCC(a1, a2, a3, a4, 71, 75, ShellConnectionSender<>.send(endpoint:context:reply:));
}

{
  return sub_25F4DBFCC(a1, a2, a3, a4, 104, 108, ShellConnectionSender<>.send(endpoint:context:reply:));
}

uint64_t ShellConnectionSender<>.send<A>(endpoint:context:expecting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return sub_25F4DC32C(a1, a2, a3, a4, a5, a6, a7, 85, 89, ShellConnectionSender<>.send(endpoint:context:reply:));
}

{
  return sub_25F4DC32C(a1, a2, a3, a4, a5, a6, a7, 118, 122, ShellConnectionSender<>.send(endpoint:context:reply:));
}

uint64_t sub_25F4DBFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v35 = a4;
  v36 = a7;
  v29[1] = a5;
  v29[2] = a6;
  v8 = v7;
  v34 = a3;
  v31 = a1;
  v32 = a2;
  v33 = sub_25F501FA8();
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F5025E8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD905D0, &unk_25F503DE0);
  v16 = v15 - 8;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = (v29 - v20);
  v22 = v8[1];
  v37 = *v8;
  v38 = v22;
  v23 = v8[3];
  v39 = v8[2];
  v40 = v23;
  sub_25F5025F8();
  v24 = sub_25F5028B8();
  (*(v12 + 8))(v14, v11);
  *v21 = v24;
  sub_25F5025F8();
  sub_25F4DE8A4(v21, v19);

  sub_25F501F98();
  v36(v31, v32, v10, v34, v35);
  (*(v30 + 8))(v10, v33);
  sub_25F4DE914(v21, v19);
  v25 = *v19;
  v26 = *(v16 + 56);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90330, &qword_25F503890);
  (*(*(v27 - 8) + 8))(&v19[v26], v27);
  return v25;
}

uint64_t sub_25F4DC32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v28[1] = a8;
  v37 = a4;
  v38 = a7;
  v33 = a1;
  v35 = a2;
  v36 = a10;
  v30 = a9;
  v31 = a6;
  v34 = sub_25F501FA8();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = sub_25F5025E8();
  v13 = *(v28[0] - 8);
  MEMORY[0x28223BE20](v28[0]);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD90A50, &qword_25F503DF0);
  sub_25F5028E8();
  v29 = sub_25F5028C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  v18 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v20 = v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = (v28 - v21);
  v23 = v10[1];
  v39 = *v10;
  v40 = v23;
  v24 = v10[3];
  v41 = v10[2];
  v42 = v24;
  sub_25F5025F8();
  v25 = sub_25F5028B8();
  (*(v13 + 8))(v15, v28[0]);
  *v22 = v25;
  sub_25F5025F8();
  (*(v17 + 16))(v20, v22, TupleTypeMetadata2);

  sub_25F501F88();
  v36(v33, v35, v12, v37, v38);
  (*(v32 + 8))(v12, v34);
  (*(v17 + 32))(v20, v22, TupleTypeMetadata2);
  v26 = *v20;
  (*(*(v29 - 8) + 8))(&v20[*(TupleTypeMetadata2 + 48)]);
  return v26;
}

uint64_t ShellConnection.makeSender<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a1;
  v5[4] = a3;
  v6 = *v4;
  v5[2] = v4;
  v7 = swift_task_alloc();
  v5[7] = v7;
  WitnessTable = swift_getWitnessTable();
  *v7 = v5;
  v7[1] = sub_25F4DC7EC;

  return MEMORY[0x2821A1860](v6, WitnessTable);
}

uint64_t sub_25F4DC7EC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_25F4DC980;
  }

  else
  {
    v2 = sub_25F4DC900;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F4DC900()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];

  sub_25F4DB37C(v4, v2, v1, v3, v5);
  v6 = v0[1];

  return v6();
}

uint64_t ShellConnection.activate<A>(forReceiving:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ShellConnectionMessage(255, a2, a3, a4);
  v7 = sub_25F502848();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13[-v8];
  v14 = a2;
  v15 = a3;
  v16 = v4;
  swift_checkMetadataState();
  v10 = *MEMORY[0x277D85778];
  v11 = sub_25F502848();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  return sub_25F5028A8();
}

uint64_t sub_25F4DCAB8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v38 = *a2;
  v8 = v38;
  type metadata accessor for ShellConnectionMessage(255, a3, a4, a4);
  v37 = sub_25F502878();
  v34 = *(v37 - 8);
  v36 = *(v34 + 64);
  MEMORY[0x28223BE20](v37);
  v35 = v28 - v9;
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  v43 = a2;
  swift_getWitnessTable();
  sub_25F502A48();
  v42 = *(&v44 + 1);
  v33 = v44;
  v46 = v8;
  WitnessTable = swift_getWitnessTable();
  v47 = WitnessTable;
  *&v44 = a2;

  v40 = sub_25F4DCEFC(&v44, a1, a3, a4, &unk_287185F68, sub_25F4DF77C, MEMORY[0x277D40AB0]);
  v41 = v11;
  __swift_destroy_boxed_opaque_existential_0(&v44);
  v46 = v8;
  v47 = WitnessTable;
  *&v44 = a2;

  v39 = sub_25F4DCEFC(&v44, a1, a3, a4, &unk_287185F40, sub_25F4DFA44, MEMORY[0x277D40AB8]);
  v13 = v12;
  v29 = v12;
  __swift_destroy_boxed_opaque_existential_0(&v44);
  v46 = v8;
  v47 = WitnessTable;
  v28[1] = v8;
  *&v44 = a2;
  v14 = sub_25F4DD078(&v44, a1, a3, a4);
  v31 = v14;
  v16 = v15;
  v30 = v15;

  __swift_destroy_boxed_opaque_existential_0(&v44);
  v46 = v8;
  v47 = WitnessTable;
  *&v44 = a2;
  v17 = sub_25F4DD240(&v44, a1, a3, a4);
  v19 = v18;
  v32 = v18;

  __swift_destroy_boxed_opaque_existential_0(&v44);
  *&v44 = v33;
  *(&v44 + 1) = v42;
  v45 = v40;
  v46 = v41;
  v47 = v39;
  v48 = v13;
  v49 = v14;
  v50 = v16;
  v51 = v17;
  v52 = v19;
  sub_25F4E81A8(&v44);
  v43 = a2;
  v20 = v34;
  v21 = v35;
  v22 = v37;
  (*(v34 + 16))(v35, a1, v37);
  v23 = v20;
  v24 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v25 = swift_allocObject();
  v26 = v38;
  *(v25 + 2) = *(v38 + 80);
  *(v25 + 3) = a3;
  *(v25 + 4) = *(v26 + 88);
  *(v25 + 5) = a4;
  (*(v23 + 32))(&v25[v24], v21, v22);
  swift_getWitnessTable();
  sub_25F5024C8();

  sub_25F4DF408(v40, v41);
  sub_25F4DF408(v39, v29);
  sub_25F4DF408(v31, v30);
  sub_25F4DF408(v17, v32);
}

uint64_t sub_25F4DCEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  v19 = a6;
  v20 = a7;
  type metadata accessor for ShellConnectionMessage(255, a3, a4, a4);
  v11 = sub_25F502878();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  (*(v12 + 16))(&v19 - v13, a2, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  (*(v12 + 32))(v16 + v15, v14, v11);
  v17 = v20(a1, v19, v16, a3, *(a4 + 8));

  return v17;
}

uint64_t (*sub_25F4DD078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ShellConnectionMessage(255, a3, a4, a4);
  v9 = sub_25F502878();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  if (swift_getAssociatedTypeWitness() == MEMORY[0x277D84A98])
  {
    return 0;
  }

  (*(v10 + 16))(v13, a2, v9);
  sub_25F4DF418(a1, v19);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  (*(v10 + 32))(v16 + v14, v13, v9);
  *(v16 + v15) = v4;
  sub_25F4DF47C(v19, v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_25F4DF5CC;
}

uint64_t (*sub_25F4DD240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ShellConnectionMessage(255, a3, a4, a4);
  v9 = sub_25F502878();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  if (swift_getAssociatedTypeWitness() == MEMORY[0x277D84A98])
  {
    return 0;
  }

  (*(v10 + 16))(v13, a2, v9);
  sub_25F4DF418(a1, v19);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  (*(v10 + 32))(v16 + v14, v13, v9);
  *(v16 + v15) = v4;
  sub_25F4DF47C(v19, v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_25F4DF494;
}

Swift::Void __swiftcall ShellConnection.activate()()
{
  *&v0[0] = 0;
  *(&v0[0] + 1) = 0xE000000000000000;
  swift_getWitnessTable();
  sub_25F502A48();
  memset(&v0[1], 0, 64);
  sub_25F4E81A8(v0);
}

uint64_t sub_25F4DD4C4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_25F4DD4F4()
{
  v1 = *(v0 + 16);
  sub_25F4DFA0C(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_25F4DD528()
{
  v1 = *(v0 + 32);
  sub_25F4DFA0C(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_25F4DD55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v8 = sub_25F501FA8();
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v29 = &v26 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v4, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v26 = *(TupleTypeMetadata2 + 48);
    v27 = v11;
    v28 = a3;
    v19 = v29;
    v20 = *(v30 + 32);
    v20(v29, v16, AssociatedTypeWitness);
    v30 = a2;
    v21 = *(v31 + 32);
    v21(v10, &v16[v26], v8);
    v22 = *(TupleTypeMetadata2 + 48);
    v20(v28, v19, AssociatedTypeWitness);
    v11 = v27;
    v21(&v28[v22], v10, v8);
    a2 = v30;
  }

  else
  {
    v24 = swift_getAssociatedTypeWitness();
    (*(*(v24 - 8) + 32))(a3, v16, v24);
  }

  type metadata accessor for ShellConnectionMessage(0, v11, a2, v23);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F4DD894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ShellConnectionMessage(0, a3, a4, a4);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_25F502838();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  v12 = sub_25F502048();
  sub_25F4DD55C(v12, a4, v7);
  sub_25F502878();
  sub_25F502858();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_25F4DDA0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a6;
  v32 = a5;
  v27 = a4;
  v33 = a3;
  v30 = a2;
  v11 = sub_25F502718();
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = type metadata accessor for ShellConnectionMessage(0, a7, a8, v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  v16 = sub_25F502838();
  v25 = *(v16 - 8);
  v26 = v16;
  MEMORY[0x28223BE20](v16);
  v24 = &v23 - v17;
  sub_25F4D8634(255, &qword_27FD905C8, 0x277CCAEA0);
  swift_getAssociatedTypeWitness();
  v18 = sub_25F501FA8();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  *v15 = a1;
  v20 = a1;
  sub_25F502068();
  (*(*(v18 - 8) + 16))(&v15[*(TupleTypeMetadata3 + 64)], v33, v18);
  swift_storeEnumTagMultiPayload();
  sub_25F502878();
  v21 = v24;
  sub_25F502858();
  return (*(v25 + 8))(v21, v26);
}

uint64_t sub_25F4DDE0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a6;
  v32 = a5;
  v27 = a4;
  v33 = a3;
  v30 = a2;
  v11 = sub_25F502718();
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = type metadata accessor for ShellConnectionMessage(0, a7, a8, v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  v16 = sub_25F502838();
  v25 = *(v16 - 8);
  v26 = v16;
  MEMORY[0x28223BE20](v16);
  v24 = &v23 - v17;
  sub_25F4D8634(255, &qword_27FD905C0, 0x277CF3288);
  swift_getAssociatedTypeWitness();
  v18 = sub_25F501FA8();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  *v15 = a1;
  v20 = a1;
  sub_25F502068();
  (*(*(v18 - 8) + 16))(&v15[*(TupleTypeMetadata3 + 64)], v33, v18);
  swift_storeEnumTagMultiPayload();
  sub_25F502878();
  v21 = v24;
  sub_25F502858();
  return (*(v25 + 8))(v21, v26);
}

uint64_t sub_25F4DE20C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_25F4DE258(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_25F4DE290(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_25F4DE2EC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_25F4DE2EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25F4DE3B8(v11, 0, 0, 1, a1, a2);
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
    sub_25F4DF8CC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25F4DE3B8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25F4DE4C4(a5, a6);
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
    result = sub_25F5029C8();
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

void *sub_25F4DE4C4(uint64_t a1, unint64_t a2)
{
  v3 = sub_25F4DE510(a1, a2);
  sub_25F4DE640(&unk_287185528);
  return v3;
}

void *sub_25F4DE510(uint64_t a1, unint64_t a2)
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

  v6 = sub_25F4DE72C(v5, 0);
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

  result = sub_25F5029C8();
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
        v10 = sub_25F5027D8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25F4DE72C(v10, 0);
        result = sub_25F5029A8();
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

uint64_t sub_25F4DE640(uint64_t result)
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

  result = sub_25F4DE7A0(result, v11, 1, v3);
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

void *sub_25F4DE72C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD906D8, &qword_25F503F68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25F4DE7A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD906D8, &qword_25F503F68);
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

uint64_t sub_25F4DE8A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD905D0, &unk_25F503DE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F4DE914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD905D0, &unk_25F503DE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F4DE9BC(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_25F501FA8();
    result = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      sub_25F4D8634(255, &qword_27FD905C8, 0x277CCAEA0);
      swift_getAssociatedTypeWitness();
      result = swift_getTupleTypeMetadata3();
      if (v4 <= 0x3F)
      {
        sub_25F4D8634(255, &qword_27FD905C0, 0x277CF3288);
        swift_getAssociatedTypeWitness();
        result = swift_getTupleTypeMetadata3();
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_25F4DEB74(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v7 = *(sub_25F501FA8() - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  if (((v6 + v8) & ~v8) + v9 > v5)
  {
    v5 = ((v6 + v8) & ~v8) + v9;
  }

  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = ((*(v10 + 64) + v8 + ((*(v10 + 80) + 8) & ~*(v10 + 80))) & ~v8) + v9;
  if (v11 > v5)
  {
    v5 = v11;
  }

  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = ((*(v12 + 64) + v8 + ((*(v12 + 80) + 8) & ~*(v12 + 80))) & ~v8) + v9;
  if (v13 <= v5)
  {
    v14 = v5;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_30;
  }

  v15 = v14 + 1;
  v16 = 8 * (v14 + 1);
  if ((v14 + 1) <= 3)
  {
    v19 = ((a2 + ~(-1 << v16) - 252) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v19 < 2)
    {
LABEL_30:
      v21 = *(a1 + v14);
      if (v21 >= 4)
      {
        return (v21 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_30;
  }

LABEL_19:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 > 3)
    {
      LODWORD(v15) = 4;
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        LODWORD(v15) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v15) = *a1;
      }
    }

    else if (v15 == 1)
    {
      LODWORD(v15) = *a1;
    }

    else
    {
      LODWORD(v15) = *a1;
    }
  }

  return (v15 | v20) + 253;
}

void sub_25F4DEE78(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = *(sub_25F501FA8() - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  if (((v8 + v10) & ~v10) + v11 > v7)
  {
    v7 = ((v8 + v10) & ~v10) + v11;
  }

  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = ((*(v12 + 64) + v10 + ((*(v12 + 80) + 8) & ~*(v12 + 80))) & ~v10) + v11;
  if (v13 > v7)
  {
    v7 = v13;
  }

  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = ((*(v14 + 64) + v10 + ((*(v14 + 80) + 8) & ~*(v14 + 80))) & ~v10) + v11;
  if (v15 <= v7)
  {
    v15 = v7;
  }

  v16 = v15 + 1;
  if (a3 < 0xFD)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 + ~(-1 << (8 * v16)) - 252) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (a2 > 0xFC)
  {
    v18 = a2 - 253;
    if (v16 >= 4)
    {
      bzero(a1, v15 + 1);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v19 = (v18 >> (8 * v16)) + 1;
    if (v15 != -1)
    {
      v22 = v18 & ~(-1 << (8 * v16));
      bzero(a1, v16);
      if (v16 != 3)
      {
        if (v16 == 2)
        {
          *a1 = v22;
          if (v17 > 1)
          {
LABEL_43:
            if (v17 == 2)
            {
              *&a1[v16] = v19;
            }

            else
            {
              *&a1[v16] = v19;
            }

            return;
          }
        }

        else
        {
          *a1 = v18;
          if (v17 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v17)
        {
          a1[v16] = v19;
        }

        return;
      }

      *a1 = v22;
      a1[2] = BYTE2(v22);
    }

    if (v17 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v17 <= 1)
  {
    if (v17)
    {
      a1[v16] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v15] = -a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v17 == 2)
  {
    *&a1[v16] = 0;
    goto LABEL_28;
  }

  *&a1[v16] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

uint64_t sub_25F4DF1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F4DF24C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_25F4DF294(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F4DF2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ShellConnectionMessage(255, *(v4 + 24), *(v4 + 40), a4);
  v5 = sub_25F502878();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 48) & ~v7;
  v9 = *(v6 + 64);
  (*(v6 + 8))(v4 + v8, v5);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_25F4DF398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ShellConnectionMessage(255, *(v4 + 24), *(v4 + 40), a4);
  sub_25F502878();
  return sub_25F502868();
}

uint64_t sub_25F4DF408(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F4DF418(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25F4DF47C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25F4DF4AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD90AF0, &qword_25F503F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_9Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ShellConnectionMessage(255, *(v4 + 16), *(v4 + 24), a4);
  v5 = sub_25F502878();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = (((*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v6 + 8))(v4 + v8, v5);
  __swift_destroy_boxed_opaque_existential_0((v4 + v9));

  return MEMORY[0x2821FE8E8](v4, v9 + 40, v7 | 7);
}

uint64_t sub_25F4DF5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  type metadata accessor for ShellConnectionMessage(255, v8, v9, a4);
  v10 = *(sub_25F502878() - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v4 + v12);

  return a4(a1, a2, a3, v4 + v11, v13, v4 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8), v8, v9);
}

uint64_t objectdestroy_15Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ShellConnectionMessage(255, *(v4 + 16), *(v4 + 24), a4);
  v5 = sub_25F502878();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(v6 + 64);
  (*(v6 + 8))(v4 + v8, v5);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_25F4DF794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  type metadata accessor for ShellConnectionMessage(255, v6, v7, a4);
  v8 = *(sub_25F502878() - 8);
  return sub_25F4DD894(a1, v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7);
}

uint64_t sub_25F4DF828()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F4DF8CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_19PreviewsMessagingOS16LazyPropertyListOIeghn_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_25F4DF960(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_25F4DF9A8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_25F4DFA0C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t ShellAgentSystem.AgentEndpoint.Identity.streamID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F501EA8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for ShellAgentSystem.AgentEndpoint.Identity(uint64_t a1)
{
  result = qword_27FD90720;
  if (!qword_27FD90720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShellAgentSystem.AgentEndpoint.Identity.init(streamID:agentPid:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_25F501EA8();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ShellAgentSystem.AgentEndpoint.Identity(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_25F4DFBD4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x646950746E656761;
  }

  else
  {
    v2 = 0x44496D6165727473;
  }

  if (*a2)
  {
    v3 = 0x646950746E656761;
  }

  else
  {
    v3 = 0x44496D6165727473;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25F502A68();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25F4DFC5C()
{
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4DFCD4(uint64_t a1)
{
  sub_25F5027B8();
}

uint64_t sub_25F4DFD30(uint64_t a1)
{
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4DFDA4@<X0>(char *a2@<X8>)
{
  v3 = sub_25F502A18();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_25F4DFE04(uint64_t *a1@<X8>)
{
  v2 = 0x44496D6165727473;
  if (*v1)
  {
    v2 = 0x646950746E656761;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

uint64_t sub_25F4DFE3C()
{
  if (*v0)
  {
    return 0x646950746E656761;
  }

  else
  {
    return 0x44496D6165727473;
  }
}

uint64_t sub_25F4DFEAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90738, &qword_25F504368);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD90740, &qword_25F504370);
  v6 = v5 - 8;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  v12 = *(v6 + 56);
  *(v17 - v10) = 0;
  v13 = sub_25F501EA8();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v11[v12], a1, v13);
  LODWORD(v12) = *(a1 + *(type metadata accessor for ShellAgentSystem.AgentEndpoint.Identity(0) + 20));
  sub_25F4E1104(v11, v9);
  LOBYTE(a1) = *v9;
  (*(v14 + 32))(v4, &v9[*(v6 + 56)], v13);
  (*(v14 + 56))(v4, 0, 1, v13);
  v20 = a1;
  v19 = 1;
  v17[2] = v12;
  v18 = 0;
  sub_25F4E035C();
  v15 = sub_25F502458();
  sub_25F4D867C(v4, &qword_27FD90738, &qword_25F504368);
  sub_25F4D867C(v11, &unk_27FD90740, &qword_25F504370);
  return v15;
}

uint64_t ShellAgentSystem.AgentEndpoint.Identity.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25F501EA8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &type metadata for ShellAgentSystem.AgentEndpoint.Identity.Key;
  v9 = sub_25F4E035C();
  v17 = v9;
  LOBYTE(v15[0]) = 0;
  sub_25F5021C8();
  if (v2)
  {
    v10 = sub_25F502258();
    (*(*(v10 - 8) + 8))(a1, v10);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v15);
    v16 = &type metadata for ShellAgentSystem.AgentEndpoint.Identity.Key;
    v17 = v9;
    LOBYTE(v15[0]) = 1;
    sub_25F5021C8();
    v12 = sub_25F502258();
    (*(*(v12 - 8) + 8))(a1, v12);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v13 = v14[1];
    (*(v6 + 32))(a2, v8, v5);
    result = type metadata accessor for ShellAgentSystem.AgentEndpoint.Identity(0);
    *(a2 + *(result + 20)) = v13;
  }

  return result;
}

unint64_t sub_25F4E035C()
{
  result = qword_27FD906E0;
  if (!qword_27FD906E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD906E0);
  }

  return result;
}

BOOL static ShellAgentSystem.AgentEndpoint.Identity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_25F501E98() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ShellAgentSystem.AgentEndpoint.Identity(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t ShellAgentSystem.AgentEndpoint.Identity.hash(into:)(uint64_t a1)
{
  sub_25F501EA8();
  sub_25F4E0B98(&qword_27FD906E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25F502758();
  type metadata accessor for ShellAgentSystem.AgentEndpoint.Identity(0);
  return sub_25F502B28();
}

uint64_t ShellAgentSystem.AgentEndpoint.Identity.hashValue.getter()
{
  sub_25F502B08();
  sub_25F501EA8();
  sub_25F4E0B98(&qword_27FD906E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25F502758();
  type metadata accessor for ShellAgentSystem.AgentEndpoint.Identity(0);
  sub_25F502B28();
  return sub_25F502B38();
}

uint64_t sub_25F4E0530(uint64_t a1)
{
  sub_25F502B08();
  sub_25F501EA8();
  sub_25F4E0B98(&qword_27FD906E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25F502758();
  sub_25F502B28();
  return sub_25F502B38();
}

uint64_t sub_25F4E05D4(uint64_t a1, uint64_t a2)
{
  sub_25F501EA8();
  sub_25F4E0B98(&qword_27FD906E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25F502758();
  return sub_25F502B28();
}

uint64_t sub_25F4E0660(uint64_t a1, uint64_t a2)
{
  sub_25F502B08();
  sub_25F501EA8();
  sub_25F4E0B98(&qword_27FD906E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25F502758();
  sub_25F502B28();
  return sub_25F502B38();
}

uint64_t static ShellAgentSystem.AgentEndpoint.encode(context:)(uint64_t a1)
{
  sub_25F502058();
  sub_25F4E0B98(&qword_27FD906F0, MEMORY[0x277D40A08], MEMORY[0x277D40A00]);
  return sub_25F502238();
}

uint64_t sub_25F4E084C(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0x747865746E6F63;
  a1[1] = 0xE700000000000000;
  v5 = sub_25F502058();
  v8 = *(v5 - 8);
  (*(v8 + 16))(a2, a3, v5);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t static ShellAgentSystem.AgentEndpoint.decode(context:)()
{
  v1[3] = MEMORY[0x277D837D0];
  v1[4] = MEMORY[0x277D405A0];
  v1[0] = 0x747865746E6F63;
  v1[1] = 0xE700000000000000;
  sub_25F502058();
  sub_25F4E0B98(&qword_27FD906F0, MEMORY[0x277D40A08], MEMORY[0x277D40A00]);
  sub_25F5021C8();
  return __swift_destroy_boxed_opaque_existential_0(v1);
}

unint64_t sub_25F4E0A60()
{
  result = qword_27FD906F8;
  if (!qword_27FD906F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD906F8);
  }

  return result;
}

uint64_t sub_25F4E0B98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25F4E0BE0()
{
  result = qword_27FD90718;
  if (!qword_27FD90718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90718);
  }

  return result;
}

uint64_t sub_25F4E0C34(uint64_t a1)
{
  sub_25F502058();
  sub_25F4E0B98(&qword_27FD906F0, MEMORY[0x277D40A08], MEMORY[0x277D40A00]);
  return sub_25F502238();
}

uint64_t sub_25F4E0CD8()
{
  v1[3] = MEMORY[0x277D837D0];
  v1[4] = MEMORY[0x277D405A0];
  v1[0] = 0x747865746E6F63;
  v1[1] = 0xE700000000000000;
  sub_25F502058();
  sub_25F4E0B98(&qword_27FD906F0, MEMORY[0x277D40A08], MEMORY[0x277D40A00]);
  sub_25F5021C8();
  return __swift_destroy_boxed_opaque_existential_0(v1);
}

uint64_t sub_25F4E0DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F501EA8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F4E0E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F501EA8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25F4E0EDC(uint64_t a1)
{
  result = sub_25F501EA8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShellService.Instance(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ShellService.Instance(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25F4E10B0()
{
  result = qword_27FD90730;
  if (!qword_27FD90730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90730);
  }

  return result;
}

uint64_t sub_25F4E1104(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD90740, &qword_25F504370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F4E1180(uint64_t a1)
{
  result = sub_25F4E11A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F4E11A8()
{
  result = qword_27FD90750;
  if (!qword_27FD90750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90750);
  }

  return result;
}

unint64_t sub_25F4E11FC(uint64_t a1)
{
  result = sub_25F4E1224();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F4E1224()
{
  result = qword_27FD90758;
  if (!qword_27FD90758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90758);
  }

  return result;
}

uint64_t sub_25F4E12D8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD90E50, &qword_25F504560);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_25F502818();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v2;

  sub_25F4E1FA0(0, 0, v7, &unk_25F5045F8, v9);
}

uint64_t sub_25F4E13F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v6[10] = *MEMORY[0x277D85000] & *a4;
  v7 = sub_25F502718();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F4E14F4, 0, 0);
}

uint64_t sub_25F4E14F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[10];
  v6 = *(v4[7] + qword_27FD90768);
  v4[14] = v6;
  v4[5] = type metadata accessor for ServiceHubPipeService.ServiceHubTransport(0, *(v5 + 80), *(v5 + 88), a4);
  v4[6] = swift_getWitnessTable();
  v4[2] = v6;

  v7 = swift_task_alloc();
  v4[15] = v7;
  *v7 = v4;
  v7[1] = sub_25F4E15F8;

  return MEMORY[0x2821A0EA0](v4 + 2);
}

uint64_t sub_25F4E15F8()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_25F4E17B4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v3 = sub_25F4E1714;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F4E1714()
{
  v1 = v0[14];
  v2 = v0[8];

  v2(sub_25F4E4F48, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_25F4E17B4()
{
  v1 = v0[16];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_25F5026D8();
  v2 = v1;
  v3 = sub_25F5026F8();
  v4 = sub_25F502918();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_25F4D4000, v3, v4, "Failed to attach host transport to message pipe: %@", v6, 0xCu);
    sub_25F4D867C(v7, &unk_27FD90AF0, &qword_25F503F60);
    MEMORY[0x25F8DF6E0](v7, -1, -1);
    MEMORY[0x25F8DF6E0](v6, -1, -1);
  }

  v10 = v0[16];
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[11];

  (*(v12 + 8))(v11, v13);
  sub_25F4E1D28();

  v14 = v0[1];

  return v14();
}

uint64_t sub_25F4E1948(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90908, &unk_25F504A50);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD909B0, &qword_25F504608);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - v9;
  sub_25F4E4F4C(v1 + qword_27FD90858, v6, &qword_27FD90908, &unk_25F504A50);
  v11 = *(v4 + 56);
  v23[0] = a1;
  a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90920, qword_25F5045B0);
  sub_25F502858();
  (*(*(v12 - 8) + 8))(&v6[v11], v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90918, &unk_25F504A60);
  (*(*(v13 - 8) + 8))(v6, v13);
  if ((*(v8 + 88))(v10, v7) != *MEMORY[0x277D85748])
  {
    return (*(v8 + 8))(v10, v7);
  }

  (*(v8 + 8))(v10, v7);
  v25 = v1;
  swift_getWitnessTable();
  sub_25F502108();
  v14 = v24;
  v15 = __swift_project_boxed_opaque_existential_1(v23, v24);
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18);
  v19 = sub_25F502A38();
  if (v19)
  {
    v20 = v19;
    (*(v16 + 8))(v18, v14);
  }

  else
  {
    v20 = swift_allocError();
    (*(v16 + 32))(v22, v18, v14);
  }

  sub_25F4F3394(v20);

  return __swift_destroy_boxed_opaque_existential_0(v23);
}

uint64_t sub_25F4E1D28()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD90E50, &qword_25F504560);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - v5;
  v7 = sub_25F502338();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v1[qword_27FD90768];
  type metadata accessor for ServiceHubPipeService.ServiceHubTransport(0, *((v3 & v2) + 0x50), *((v3 & v2) + 0x58), v11);

  swift_getWitnessTable();
  sub_25F502328();
  sub_25F502308();
  (*(v8 + 8))(v10, v7);

  v12 = sub_25F502818();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v1;
  v14 = v1;
  sub_25F4E1FA0(0, 0, v6, &unk_25F5045E8, v13);
}

uint64_t sub_25F4E1FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD90E50, &qword_25F504560);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25F4E4F4C(a3, v25 - v10, &unk_27FD90E50, &qword_25F504560);
  v12 = sub_25F502818();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25F4D867C(v11, &unk_27FD90E50, &qword_25F504560);
  }

  else
  {
    sub_25F502808();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25F5027F8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25F5027A8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_25F4D867C(a3, &unk_27FD90E50, &qword_25F504560);

      return v23;
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

  sub_25F4D867C(a3, &unk_27FD90E50, &qword_25F504560);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_25F4E22D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_25F5025E8();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F4E2398, 0, 0);
}

uint64_t sub_25F4E2398()
{
  sub_25F5025F8();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_25F4E2470;
  v2 = *(v0 + 40);

  return MEMORY[0x2821A0EB8](v2);
}

uint64_t sub_25F4E2470()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

void sub_25F4E25C8(void *a1)
{
  v1 = a1;
  sub_25F4E1D28();
}

uint64_t sub_25F4E2610(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x277D85000];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  type metadata accessor for ServiceHubPipeService.ServiceHubTransport(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58), v8);

  swift_getWitnessTable();
  sub_25F5024C8();
}

uint64_t sub_25F4E275C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

void sub_25F4E27F0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v15[1] = a4;
  v16 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90900, &unk_25F504590);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  v10 = sub_25F502028();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4E3B08();
  (*(v11 + 16))(v13, a1, v10);
  sub_25F4E4F4C(a2, v9, &qword_27FD90900, &unk_25F504590);
  v14 = sub_25F4E2A90(v13, v9);
  v16();
}

void *sub_25F4E2A90(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v4 = sub_25F501FA8();
  v27 = *(v4 - 8);
  v28 = v4;
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90900, &unk_25F504590);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_25F502258();
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_25F502008();
  if (v2)
  {

    sub_25F4D867C(v30, &qword_27FD90900, &unk_25F504590);
    v14 = sub_25F502028();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  else
  {
    v25 = a1;
    v26 = v13;
    sub_25F5021F8();
    (*(v10 + 8))(v12, v9);
    v15 = sub_25F502728();

    v16 = v30;
    sub_25F4E4F4C(v30, v8, &qword_27FD90900, &unk_25F504590);
    v17 = v27;
    if ((*(v27 + 48))(v8, 1, v28) == 1)
    {
      sub_25F4D867C(v8, &qword_27FD90900, &unk_25F504590);
      v18 = 0;
    }

    else
    {
      v19 = v28;
      (*(v17 + 16))(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v28);
      v20 = (*(v17 + 80) + 16) & ~*(v17 + 80);
      v21 = swift_allocObject();
      v16 = v30;
      (*(v17 + 32))(v21 + v20, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
      (*(v17 + 8))(v8, v19);
      aBlock[4] = sub_25F4E503C;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25F4E3C08;
      aBlock[3] = &block_descriptor_1;
      v18 = _Block_copy(aBlock);
    }

    v22 = v25;
    v9 = [v26 initWithMessageType:0 payload:v15 replyHandler:v18];
    _Block_release(v18);

    sub_25F4D867C(v16, &qword_27FD90900, &unk_25F504590);
    v23 = sub_25F502028();
    (*(*(v23 - 8) + 8))(v22, v23);
  }

  return v9;
}

uint64_t sub_25F4E2ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_25F502258();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90900, &unk_25F504590);
  v6[11] = swift_task_alloc();
  v8 = sub_25F502028();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90908, &unk_25F504A50);
  v6[16] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90910, &unk_25F5045A0);
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F4E30D4, 0, 0);
}

uint64_t sub_25F4E30D4()
{
  v2 = v0[15];
  v1 = v0[16];
  sub_25F4E4F4C(v0[5] + qword_27FD90858, v1, &qword_27FD90908, &unk_25F504A50);
  v3 = *(v2 + 48);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90918, &unk_25F504A60);
  sub_25F502888();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90920, qword_25F5045B0);
  (*(*(v5 - 8) + 8))(v1 + v3, v5);
  (*(*(v4 - 8) + 8))(v1, v4);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_25F4E3250;
  v7 = v0[17];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v7);
}

uint64_t sub_25F4E3250()
{

  return MEMORY[0x2822009F8](sub_25F4E334C, 0, 0);
}

uint64_t sub_25F4E334C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = [*(v0 + 16) payload];
    if (v2 && (*(v0 + 24) = v2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90990, &qword_25F5045C8), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90998, &qword_25F5045D0), swift_dynamicCast()))
    {
      v4 = *(v0 + 72);
      v3 = *(v0 + 80);
      v5 = *(v0 + 64);
      sub_25F5021E8();
      sub_25F502198();
      (*(v4 + 8))(v3, v5);
      v6 = [v1 replyHandler];
      if (v6)
      {
        v7 = v6;
        v8 = swift_allocObject();
        *(v8 + 16) = v7;
        v9 = swift_allocObject();
        *(v9 + 16) = sub_25F4E4C50;
        *(v9 + 24) = v8;
        sub_25F501F48();
        v10 = 0;
      }

      else
      {
        v10 = 1;
      }

      v18 = *(v0 + 104);
      v17 = *(v0 + 112);
      v20 = *(v0 + 88);
      v19 = *(v0 + 96);
      v21 = *(v0 + 48);
      v22 = sub_25F501FA8();
      (*(*(v22 - 8) + 56))(v20, v10, 1, v22);
      v21(v17, v20);

      sub_25F4D867C(v20, &qword_27FD90900, &unk_25F504590);
      (*(v18 + 8))(v17, v19);
    }

    else
    {
      v11 = [v1 payload];
      if (v11)
      {
        ObjectType = swift_getObjectType();
      }

      else
      {
        ObjectType = 0;
      }

      sub_25F4E4BC4();
      v15 = swift_allocError();
      *v16 = v11;
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      *(v16 + 24) = ObjectType;
      *(v16 + 32) = 0;
      swift_willThrow();
      sub_25F4F3394(v15);
    }

    v23 = swift_task_alloc();
    *(v0 + 160) = v23;
    *v23 = v0;
    v23[1] = sub_25F4E3250;
    v24 = *(v0 + 136);

    return MEMORY[0x2822003E8](v0 + 16, 0, 0, v24);
  }

  else
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_25F4E36F4()
{

  sub_25F4D867C(v0 + qword_27FD90858, &qword_27FD90908, &unk_25F504A50);
  return v0;
}

uint64_t sub_25F4E373C()
{
  v0 = sub_25F4E36F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25F4E37B4()
{
  v2 = *v0;
  v4 = *(*v0 + 24);
  v3 = *(v2 + 32);
  v6 = *(v1 + 8);

  return v6(v4, v3);
}

uint64_t sub_25F4E3864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A09D0](a1, a2, a3, WitnessTable);
}

id sub_25F4E3910()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25F4E3948(uint64_t a1)
{
}

void sub_25F4E39C0(uint64_t a1)
{
  v4 = MEMORY[0x277D83428] + 64;
  v5 = MEMORY[0x277D84F88] + 64;
  sub_25F4E3B54(319, &qword_27FD908E0, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_25F4E3B54(319, &unk_27FD908F0, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v6 = &v3;
      swift_initClassMetadata2();
    }
  }
}

unint64_t sub_25F4E3B08()
{
  result = qword_27FD908E8;
  if (!qword_27FD908E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD908E8);
  }

  return result;
}

void sub_25F4E3B54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_25F4E3B08();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_25F4E3C08(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_25F4E3C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_25F501DE8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_25F4E3CF8(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v24 = sub_25F5025E8();
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD909B8, &qword_25F504610);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD909C0, &qword_25F504618);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v21 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v21 - v18;
  sub_25F4E3FCC(a1, v22, &v25);
  swift_storeEnumTagMultiPayload();
  sub_25F4E50D4(v14, v17);
  sub_25F4E50D4(v17, v19);
  sub_25F501F68();
  sub_25F5025F8();
  sub_25F502188();
  (*(v4 + 8))(v6, v24);
  (*(v8 + 8))(v10, v7);
  return sub_25F4D867C(v19, &unk_27FD909C0, &qword_25F504618);
}

uint64_t sub_25F4E3FCC(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = sub_25F502258();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23[0] = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90990, &qword_25F5045C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90998, &qword_25F5045D0);
    if (swift_dynamicCast())
    {
      sub_25F5021E8();
      sub_25F502198();
      return (*(v7 + 8))(v9, v6);
    }

    if (a2)
    {
      goto LABEL_7;
    }

    a2 = swift_getObjectType();
LABEL_12:
    sub_25F4E4BC4();
    v20 = swift_allocError();
    *v21 = a1;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *(v21 + 24) = a2;
    *(v21 + 32) = 1;
    swift_willThrow();
    *a3 = v20;
    return swift_unknownObjectRetain();
  }

  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_7:
  swift_getErrorValue();
  v11 = a2;
  sub_25F502AA8();
  v12 = v24;
  v13 = __swift_project_boxed_opaque_existential_1(v23, v24);
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16);
  v17 = sub_25F502A38();
  if (v17)
  {
    v18 = v17;
    (*(v14 + 8))(v16, v12);
  }

  else
  {
    v18 = swift_allocError();
    (*(v14 + 32))(v19, v16, v12);
  }

  swift_willThrow();

  result = __swift_destroy_boxed_opaque_existential_0(v23);
  *a3 = v18;
  return result;
}

uint64_t sub_25F4E42F0(uint64_t a1, void (*a2)(void *, void *))
{
  v4 = sub_25F502258();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD909A0, &qword_25F5045D8);
  MEMORY[0x28223BE20](v8);
  v10 = (&v16[-1] - v9);
  sub_25F4E4F4C(a1, &v16[-1] - v9, &unk_27FD909A0, &qword_25F5045D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    swift_getErrorValue();
    sub_25F502AA8();
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v12 = sub_25F5023E8();
    a2(0, v12);

    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_25F5021F8();
    v14 = sub_25F502728();

    a2(v14, 0);

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_25F4E453C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F4E4634;

  return v6(a1);
}

uint64_t sub_25F4E4634()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F4E472C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD90E50, &qword_25F504560);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_25F502818();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_25F4E1FA0(0, 0, v7, &unk_25F504570, v9);
}

uint64_t sub_25F4E4850()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25F4E4898(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F4E4960;

  return sub_25F4E2ED8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25F4E4960()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F4E4A54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F4E5158;

  return sub_25F4E453C(a1, v4);
}

uint64_t sub_25F4E4B0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F4E4960;

  return sub_25F4E453C(a1, v4);
}

unint64_t sub_25F4E4BC4()
{
  result = qword_27FD90928;
  if (!qword_27FD90928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90928);
  }

  return result;
}

uint64_t sub_25F4E4C18()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F4E4C58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25F4E4D3C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F4E4D7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F4E5158;

  return sub_25F4E22D8(a1, v4, v5, v6);
}

uint64_t sub_25F4E4E38()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25F4E4E80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F4E5158;

  return sub_25F4E13F8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25F4E4F4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25F4E4FB4()
{
  v1 = sub_25F501FA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F4E503C(uint64_t a1, void *a2)
{
  v5 = *(sub_25F501FA8() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_25F4E3CF8(a1, a2, v6);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F4E50D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD909C0, &qword_25F504618);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ShellService.Domain.machName(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD909D0, &qword_25F504620);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v4 + 56);
  *(&v14 - v5) = *v1;
  v8 = sub_25F501EB8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v6[v7], a1, v8);
  v10 = *v6;
  v11 = (*(v9 + 88))(&v6[v7], v8);
  v12 = *MEMORY[0x277D40F58];
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      if (v11 == v12)
      {
        return 0xD000000000000034;
      }

      if (v11 == *MEMORY[0x277D40F50])
      {
        return 0xD000000000000035;
      }
    }

    else
    {
      if (v11 == v12)
      {
        return 0xD000000000000030;
      }

      if (v11 == *MEMORY[0x277D40F50])
      {
        return 0xD000000000000034;
      }
    }
  }

  else
  {
    if (!v10)
    {
      if (v11 == v12)
      {
        return 0xD000000000000027;
      }

      if (v11 == *MEMORY[0x277D40F50])
      {
        return 0xD00000000000002BLL;
      }

      goto LABEL_19;
    }

    if (v11 == v12)
    {
      return 0xD000000000000030;
    }

    if (v11 == *MEMORY[0x277D40F50])
    {
      return 0xD000000000000034;
    }
  }

LABEL_19:
  sub_25F4E53C0(v6);
  return 0x6E776F6E6B6E75;
}

uint64_t sub_25F4E53C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD909D0, &qword_25F504620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t ShellService.serviceIdentifier.getter()
{
  result = 0xD000000000000028;
  v2 = *v0;
  if (v2 > 6)
  {
    if (v2 != 7)
    {
      if (v2 == 8 || v2 == 9)
      {
        return result;
      }

      return 0xD000000000000019;
    }

    return 0xD000000000000022;
  }

  if (v2 == 2)
  {
    return 0xD000000000000022;
  }

  if (v2 == 3)
  {
    return 0xD000000000000023;
  }

  if (v2 != 6)
  {
    return 0xD000000000000019;
  }

  return result;
}

uint64_t ShellService.instanceIdentifier.getter()
{
  v1 = 0x7265732D74736F68;
  if (*v0)
  {
    v1 = 0x65732D746E656761;
  }

  if ((*v0 - 2) >= 8u)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t ShellService.Instance.hashValue.getter()
{
  v1 = *v0;
  sub_25F502B08();
  MEMORY[0x25F8DF0B0](v1);
  return sub_25F502B38();
}

unint64_t ShellService.description.getter()
{
  v1 = *v0;
  if (v1 <= 5)
  {
    if (*v0 > 3u)
    {
      if (v1 == 4)
      {
        return 0xD00000000000001ALL;
      }

      if (v1 == 5)
      {
        return 0xD00000000000001BLL;
      }

      goto LABEL_20;
    }

    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0xD000000000000016;
      }

      goto LABEL_20;
    }

    return 0xD000000000000015;
  }

  if (*v0 <= 7u)
  {
    if (v1 == 6)
    {
      return 0xD00000000000001BLL;
    }

    if (v1 != 7)
    {
      goto LABEL_20;
    }

    return 0xD000000000000015;
  }

  if (v1 == 8)
  {
    return 0xD00000000000001BLL;
  }

  if (v1 == 9)
  {
    return 0xD00000000000001BLL;
  }

LABEL_20:
  sub_25F5029B8();

  if (v1)
  {
    v3 = 0x697320746E656761;
  }

  else
  {
    v3 = 0x6469732074736F68;
  }

  if (v1)
  {
    v4 = 0xEA00000000006564;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  MEMORY[0x25F8DED60](v3, v4);

  return 0xD00000000000001CLL;
}

uint64_t ShellService.Domain.hashValue.getter()
{
  v1 = *v0;
  sub_25F502B08();
  MEMORY[0x25F8DF0B0](v1);
  return sub_25F502B38();
}

unint64_t ShellService.domainIdentifier.getter()
{
  result = 0xD00000000000001ELL;
  v2 = *v0;
  if (v2 > 9)
  {
    return 0xD000000000000027;
  }

  if (((1 << v2) & 0x3CC) != 0)
  {
    return result;
  }

  if (v2 == 5)
  {
    return 0xD000000000000028;
  }

  else
  {
    return 0xD000000000000027;
  }
}

uint64_t ShellService.Instance.description.getter()
{
  if (*v0)
  {
    return 0x697320746E656761;
  }

  else
  {
    return 0x6469732074736F68;
  }
}

uint64_t sub_25F4E5924()
{
  if (*v0)
  {
    return 0x697320746E656761;
  }

  else
  {
    return 0x6469732074736F68;
  }
}

unint64_t sub_25F4E596C()
{
  result = qword_27FD909D8;
  if (!qword_27FD909D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD909D8);
  }

  return result;
}

unint64_t sub_25F4E59C4()
{
  result = qword_27FD909E0;
  if (!qword_27FD909E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD909E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShellService(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_20;
  }

  v2 = a2 + 9;
  if (a2 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 9;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 9;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 9)
  {
    return v8 - 8;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ShellService(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 9;
  if (a3 + 9 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF7)
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_25F4E5B70(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_25F4E5B84(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShellService.Domain(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShellService.Domain(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25F4E5DC4(uint64_t a1)
{
  v2 = sub_25F4E60D8();

  return MEMORY[0x2821A0AC0](a1, v2);
}

unint64_t sub_25F4E5E80(uint64_t a1)
{
  result = sub_25F4E5EA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F4E5EA8()
{
  result = qword_27FD909E8;
  if (!qword_27FD909E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD909E8);
  }

  return result;
}

unint64_t sub_25F4E5F00()
{
  result = qword_27FD909F0;
  if (!qword_27FD909F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD909F0);
  }

  return result;
}

unint64_t sub_25F4E5F58()
{
  result = qword_27FD909F8;
  if (!qword_27FD909F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD909F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShellToControlAgent(unsigned int *a1, int a2)
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

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ShellToControlAgent(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_25F4E60D8()
{
  result = qword_27FD90A00;
  if (!qword_27FD90A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90A00);
  }

  return result;
}

uint64_t sub_25F4E616C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_25F502258();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_25F501EB8();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F4E6288, 0, 0);
}

uint64_t sub_25F4E6288()
{
  v12 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v11[0] = 0;
  (*(v2 + 104))(v1, *MEMORY[0x277D40F58], v3);
  _s17PreviewsOSSupport15ShellConnectionCA2A10ClientRoleVRszrlE16createByEndpoint_3for13clientContextACyAEGSo09BSServicedI0C_AA0C7ServiceO0A12FoundationOS12PropertyListVtKFZfA1__0();
  v7 = sub_25F4D82A4(v11, v1, v4);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v8 = v0[2];
  v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD903C0, &qword_25F504A40);
  v8[4] = sub_25F4D8FF0(&qword_27FD90E60, &qword_27FD903C0, &qword_25F504A40, &protocol conformance descriptor for ShellConnection<A>);
  *v8 = v7;

  v9 = v0[1];

  return v9();
}

uint64_t sub_25F4E6420(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_25F502258();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_25F501EB8();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F4E653C, 0, 0);
}

uint64_t sub_25F4E653C()
{
  v12 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v11[0] = 4;
  (*(v2 + 104))(v1, *MEMORY[0x277D40F58], v3);
  _s17PreviewsOSSupport15ShellConnectionCA2A10ClientRoleVRszrlE16createByEndpoint_3for13clientContextACyAEGSo09BSServicedI0C_AA0C7ServiceO0A12FoundationOS12PropertyListVtKFZfA1__0();
  v7 = sub_25F4D82A4(v11, v1, v4);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v8 = v0[2];
  v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD903C0, &qword_25F504A40);
  v8[4] = sub_25F4D8FF0(&qword_27FD90E60, &qword_27FD903C0, &qword_25F504A40, &protocol conformance descriptor for ShellConnection<A>);
  *v8 = v7;

  v9 = v0[1];

  return v9();
}

void *sub_25F4E66D8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A38, &qword_25F504A48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v9 = sub_25F502468();
  MEMORY[0x28223BE20](v9);
  (*(v11 + 104))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D404B8]);
  sub_25F502558();
  swift_allocObject();
  v2[2] = sub_25F502548();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90908, &unk_25F504A50);
  sub_25F4E3B08();
  (*(v6 + 104))(v8, *MEMORY[0x277D85778], v5);
  sub_25F502828();
  (*(v6 + 8))(v8, v5);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v2[3] = sub_25F4E795C;
  v2[4] = v12;
  v15 = v2;
  sub_25F4D8FF0(&qword_27FD90A48, &qword_27FD90A10, &qword_25F5049B8, &unk_25F5044E0);

  sub_25F5024C8();

  return v2;
}

void *sub_25F4E6A08(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A38, &qword_25F504A48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v9 = sub_25F502468();
  MEMORY[0x28223BE20](v9);
  (*(v11 + 104))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D404B8]);
  sub_25F502558();
  swift_allocObject();
  v2[2] = sub_25F502548();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90908, &unk_25F504A50);
  sub_25F4E3B08();
  (*(v6 + 104))(v8, *MEMORY[0x277D85778], v5);
  sub_25F502828();
  (*(v6 + 8))(v8, v5);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v2[3] = sub_25F4E7890;
  v2[4] = v12;
  v15 = v2;
  sub_25F4D8FF0(&qword_27FD90A40, &qword_27FD90A28, &qword_25F5049D8, &unk_25F5044E0);

  sub_25F5024C8();

  return v2;
}

uint64_t sub_25F4E6D38(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90908, &unk_25F504A50);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  sub_25F4E7898(a2 + qword_27FD90858, &v11 - v5);
  v7 = *(v4 + 56);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90920, qword_25F5045B0);
  sub_25F502868();
  (*(*(v8 - 8) + 8))(&v6[v7], v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90918, &unk_25F504A60);
  return (*(*(v9 - 8) + 8))(v6, v9);
}

id static _UVServiceHubServiceFactory.makeAgentPipeService(messageHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A08, &qword_25F5049B0);
  v5 = objc_allocWithZone(v4);
  v6 = qword_27FD90760;
  sub_25F502448();
  swift_allocObject();

  v9 = 2;
  *&v5[v6] = sub_25F502438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A10, &qword_25F5049B8);
  swift_allocObject();

  *&v5[qword_27FD90768] = sub_25F4E66D8(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A18, &qword_25F5049C0);
  *&v5[qword_27FD90770] = sub_25F501ED8();
  v10.receiver = v5;
  v10.super_class = v4;
  v7 = objc_msgSendSuper2(&v10, sel_init, v9, 0, 0);

  return v7;
}

id static _UVServiceHubServiceFactory.makeShellPipeService(messageHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A20, &qword_25F5049D0);
  v5 = objc_allocWithZone(v4);
  v6 = qword_27FD90760;
  sub_25F502448();
  swift_allocObject();

  v9 = 2;
  *&v5[v6] = sub_25F502438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A28, &qword_25F5049D8);
  swift_allocObject();

  *&v5[qword_27FD90768] = sub_25F4E6A08(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A30, &qword_25F5049E0);
  *&v5[qword_27FD90770] = sub_25F501ED8();
  v10.receiver = v5;
  v10.super_class = v4;
  v7 = objc_msgSendSuper2(&v10, sel_init, v9, 0, 0);

  return v7;
}

id static _UVServiceHubServiceFactory.makePreviewService()()
{
  v1 = sub_25F502258();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25F501EB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = 2;
  (*(v6 + 104))(v8, *MEMORY[0x277D40F58], v5);
  _s17PreviewsOSSupport15ShellConnectionCA2A10ClientRoleVRszrlE16createByEndpoint_3for13clientContextACyAEGSo09BSServicedI0C_AA0C7ServiceO0A12FoundationOS12PropertyListVtKFZfA1__0();
  v9 = sub_25F4D82A4(&v14, v8, v4);
  if (v0)
  {
    (*(v2 + 8))(v4, v1);
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    v11 = v9;
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
    v12 = objc_allocWithZone(type metadata accessor for ServiceHubPreviewService());
    return sub_25F4F3F80(v11);
  }
}

id _UVServiceHubServiceFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _UVServiceHubServiceFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id _UVServiceHubServiceFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25F4E7844()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F4E7898(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90908, &unk_25F504A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F4E7908()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F4E7970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90900, &unk_25F504590);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_25F502718();
  MEMORY[0x28223BE20](v5);
  sub_25F4E96E0();
  swift_getObjectType();
  sub_25F4E9838(a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_25F4E7CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F502718();
  MEMORY[0x28223BE20](v6);
  sub_25F4E96E0();
  ObjectType = swift_getObjectType();
  sub_25F4E9B88(a1, a2, a3, ObjectType, 154, 104, &block_descriptor_5, &selRef_sendXPCEndpoint_context_replyHandler_);

  return swift_unknownObjectRelease();
}

uint64_t sub_25F4E7F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F502718();
  MEMORY[0x28223BE20](v6);
  sub_25F4E96E0();
  ObjectType = swift_getObjectType();
  sub_25F4E9B88(a1, a2, a3, ObjectType, 158, 103, &block_descriptor_2, &selRef_sendBSEndpoint_context_replyHandler_);

  return swift_unknownObjectRelease();
}

void sub_25F4E81A8(__int128 *a1)
{
  sub_25F4EAD84();
  v27 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v5 = *(a1 + 4);
  v4 = *(a1 + 5);
  v6 = *(a1 + 6);
  v7 = *(a1 + 7);
  v8 = *(a1 + 9);
  v23 = *(a1 + 8);
  v24 = swift_allocObject();
  v9 = a1[3];
  v24[3] = a1[2];
  v24[4] = v9;
  v24[5] = a1[4];
  v10 = a1[1];
  v24[1] = *a1;
  v24[2] = v10;
  v11 = swift_allocObject();
  v12 = a1[3];
  v11[3] = a1[2];
  v11[4] = v12;
  v11[5] = a1[4];
  v13 = a1[1];
  v11[1] = *a1;
  v11[2] = v13;
  v14 = swift_allocObject();
  v15 = a1[3];
  v14[3] = a1[2];
  v14[4] = v15;
  v14[5] = a1[4];
  v16 = a1[1];
  v14[1] = *a1;
  v14[2] = v16;
  sub_25F4EAEC8(&v27, aBlock);
  sub_25F4DFA0C(v2, v3);
  sub_25F4DFA0C(v5, v4);
  sub_25F4DFA0C(v6, v7);
  sub_25F4DFA0C(v23, v8);
  sub_25F4EAEC8(&v27, aBlock);
  sub_25F4DFA0C(v2, v3);
  sub_25F4DFA0C(v5, v4);
  sub_25F4DFA0C(v6, v7);
  sub_25F4DFA0C(v23, v8);
  sub_25F4EAEC8(&v27, aBlock);
  sub_25F4DFA0C(v2, v3);
  sub_25F4DFA0C(v5, v4);
  sub_25F4DFA0C(v6, v7);
  sub_25F4DFA0C(v23, v8);
  v17 = sub_25F4E8B54(sub_25F4EADD4, v24, sub_25F4EAE40, v11, sub_25F4EAEC0, v14);
  v18 = *(v25 + 32);
  v19 = swift_allocObject();
  *(v19 + 16) = v25;
  *(v19 + 24) = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_25F4EAF64;
  *(v20 + 24) = v19;
  aBlock[4] = sub_25F4EAF7C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F4D6D54;
  aBlock[3] = &block_descriptor_60;
  v21 = _Block_copy(aBlock);

  v22 = v17;

  [v18 configureConnection_];
  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    [v18 activate];
  }
}

uint64_t ShellConnection.invalidationHandle.getter()
{
  sub_25F4EA864();
}

uint64_t sub_25F4E8530(uint64_t a1, void (*a2)(uint64_t, char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90900, &unk_25F504590);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_25F501FA8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  a2(a1, v6);
  return sub_25F4D867C(v6, &qword_27FD90900, &unk_25F504590);
}

uint64_t sub_25F4E8620(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90900, &unk_25F504590);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_25F501FA8();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a2, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  a3(a1, v8);
  return sub_25F4D867C(v8, &qword_27FD90900, &unk_25F504590);
}

uint64_t sub_25F4E87C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90900, &unk_25F504590);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = *(a4 + 48);
  if (v11)
  {
    v12 = *(a4 + 56);

    v11(a1, a2, a3);

    return sub_25F4DF408(v11, v12);
  }

  else
  {
    v14 = *(a4 + 48);
    v18[2] = *(a4 + 32);
    v18[3] = v14;
    v18[4] = *(a4 + 64);
    v15 = *(a4 + 16);
    v18[0] = *a4;
    v18[1] = v15;
    v16 = sub_25F501FA8();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v10, a3, v16);
    (*(v17 + 56))(v10, 0, 1, v16);
    sub_25F4EAD1C();
    sub_25F5020B8();
    return sub_25F4D867C(v10, &qword_27FD90900, &unk_25F504590);
  }
}

uint64_t sub_25F4E8990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90900, &unk_25F504590);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = *(a4 + 64);
  if (v11)
  {
    v12 = *(a4 + 72);

    v11(a1, a2, a3);

    return sub_25F4DF408(v11, v12);
  }

  else
  {
    v14 = *(a4 + 48);
    v18[2] = *(a4 + 32);
    v18[3] = v14;
    v18[4] = *(a4 + 64);
    v15 = *(a4 + 16);
    v18[0] = *a4;
    v18[1] = v15;
    v16 = sub_25F501FA8();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v10, a3, v16);
    (*(v17 + 56))(v10, 0, 1, v16);
    sub_25F4EAD1C();
    sub_25F5020B8();
    return sub_25F4D867C(v10, &qword_27FD90900, &unk_25F504590);
  }
}

id sub_25F4E8B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v25 = sub_25F4EACC0;
  v26 = v13;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_25F4EA4DC;
  v24 = &block_descriptor_11;
  v14 = _Block_copy(&v21);

  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v25 = sub_25F4EACC8;
  v26 = v15;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_25F4EA59C;
  v24 = &block_descriptor_17;
  v16 = _Block_copy(&v21);

  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v25 = sub_25F4EB0A8;
  v26 = v17;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_25F4EA774;
  v24 = &block_descriptor_23;
  v18 = _Block_copy(&v21);

  v19 = [v12 initWithMessageHandler:v14 xpcEndpointHandler:v16 bsEndpointHandler:v18];

  _Block_release(v18);
  _Block_release(v16);
  _Block_release(v14);
  return v19;
}

void sub_25F4E8DB0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F502778();

  v7 = UVShellConnectionInterface(v6);

  [a1 setInterface_];
  v8 = [objc_opt_self() userInteractive];
  [a1 setServiceQuality_];

  [a1 setInterfaceTarget_];
  v15 = sub_25F4EAF84;
  v16 = a2;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_25F4F6138;
  v14 = &block_descriptor_63;
  v9 = _Block_copy(&v11);

  [a1 setInvalidationHandler_];
  _Block_release(v9);
  v15 = sub_25F4EAF8C;
  v16 = a2;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_25F4F6138;
  v14 = &block_descriptor_66;
  v10 = _Block_copy(&v11);

  [a1 setActivationHandler_];
  _Block_release(v10);
}

uint64_t sub_25F4E9058(uint64_t a1, uint64_t *a2)
{
  v3 = sub_25F502338();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = a2;
  swift_getWitnessTable();
  sub_25F4E22D4();
  sub_25F502308();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_25F4E91BC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = sub_25F5025E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F5025F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90330, &qword_25F503890);
  sub_25F4EAF94();
  sub_25F5022E8();
  (*(v5 + 8))(v7, v4);
  return (*(*(v3 + 88) + 8))(a1, *(v3 + 80));
}

uint64_t sub_25F4E9370()
{
  v1 = *(*(v0 + 16) + 40);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A50, &qword_25F503DF0);
  *v2 = v0;
  v2[1] = sub_25F4E943C;
  v4 = MEMORY[0x277D84950];
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v3, v1, v5, v3, v4);
}

uint64_t sub_25F4E943C()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_25F4E95D8;
  }

  else
  {
    v2 = sub_25F4E9550;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F4E9550()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(sub_25F4EAD70, v1);
}

uint64_t ShellConnection.description.getter()
{
  v1 = *v0;
  sub_25F5029B8();
  v2 = (*(*(v1 + 88) + 24))();

  MEMORY[0x25F8DED60](0x7463656E6E6F6320, 0xEF206E6F206E6F69);
  v3 = ShellService.description.getter();
  MEMORY[0x25F8DED60](v3);

  return v2;
}

uint64_t sub_25F4E96E0()
{
  v1 = *v0;
  if ([v0[4] remoteTarget])
  {
    sub_25F502968();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD90B00, qword_25F505AB0);
    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
    sub_25F4D867C(v7, &unk_27FD901C0, &qword_25F5037A8);
  }

  type metadata accessor for ShellConnection.RemoteTargetError(0, *(v1 + 80), *(v1 + 88), v2);
  swift_getWitnessTable();
  swift_allocError();
  *v4 = v0;
  swift_willThrow();
}

void sub_25F4E9838(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_25F5025E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90900, &unk_25F504590);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = aBlock - v10;
  v12 = sub_25F501FA8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4EAC18(a2, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_25F4D867C(v11, &qword_27FD90900, &unk_25F504590);
    v16 = sub_25F502018();
    [v3 sendMessage_];
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v17 = sub_25F502018();
    sub_25F5025F8();
    v18 = sub_25F501F38();
    v20 = v19;
    (*(v6 + 8))(v8, v5);
    aBlock[4] = v18;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25F4EA278;
    aBlock[3] = &block_descriptor_8;
    v21 = _Block_copy(aBlock);

    [v3 sendMessage:v17 replyHandler:v21];
    _Block_release(v21);

    (*(v13 + 8))(v15, v12);
  }
}

void sub_25F4E9B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v20 = a8;
  v10 = sub_25F5025E8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F502018();
  sub_25F5025F8();
  v15 = sub_25F501F38();
  v17 = v16;
  (*(v11 + 8))(v13, v10);
  aBlock[4] = v15;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F4EA278;
  aBlock[3] = a7;
  v18 = _Block_copy(aBlock);

  [v19 *v20];
  _Block_release(v18);
}

uint64_t sub_25F4E9D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25F5029B8();
  type metadata accessor for ShellConnection(0, a2, a3, v5);
  swift_getWitnessTable();
  sub_25F502A48();
  MEMORY[0x25F8DED60](0xD00000000000004ALL, 0x800000025F507610);
  return 0;
}

uint64_t sub_25F4E9E0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0810](a1, WitnessTable);
}

uint64_t sub_25F4E9E60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A07F0](a1, WitnessTable);
}

id *ShellConnection.deinit()
{
  v1 = *v0;

  v2 = qword_27FD90A58;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90330, &qword_25F503890);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 17));
  return v0;
}

uint64_t ShellConnection.__deallocating_deinit()
{
  ShellConnection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25F4EA014()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25F4EA0A4;

  return ShellConnection.sender.getter();
}

uint64_t sub_25F4EA0A4(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_25F4EA1B4()
{
  sub_25F4EA864();
}

uint64_t sub_25F4EA20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A09D0](a1, a2, a3, WitnessTable);
}

void sub_25F4EA278(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_25F4EA304(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *, char *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90900, &unk_25F504590);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_25F502028();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F502938();
  if (a2)
  {
    sub_25F4DFA0C(a2, a3);
    v15 = a1;
    sub_25F501F58();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_25F501FA8();
  (*(*(v17 - 8) + 56))(v10, v16, 1, v17);
  a4(v14, v10);
  sub_25F4D867C(v10, &qword_27FD90900, &unk_25F504590);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_25F4EA4DC(uint64_t a1, void *a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_25F4EB0CC;
  }

  else
  {
    v6 = 0;
  }

  v7 = a2;
  v4();

  sub_25F4DF408(v5, v6);
}

uint64_t sub_25F4EA5BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, char *, char *), uint64_t a6)
{
  v18 = a6;
  v19 = a5;
  v8 = sub_25F501FA8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F502028();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F502938();

  v16 = a2;
  sub_25F501F58();
  v19(a1, v15, v11);
  (*(v9 + 8))(v11, v8);
  return (*(v13 + 8))(v15, v12);
}

void sub_25F4EA794(uint64_t a1, void *a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = *(a1 + 32);
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;

  v13 = a2;
  v12 = a3;
  v9(v13, v12, a6, v11);
}

uint64_t _s17PreviewsOSSupport15ShellConnectionC8activate8receiver19interruptionHandleryy0A11MessagingOS16LazyPropertyListO_AG14TransportReplyVSgtYbc_yyYbctF_0(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  sub_25F502A48();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *&v7 = 0;
  *(&v7 + 1) = 0xE000000000000000;
  v8 = sub_25F4EAD74;
  v9 = v4;
  v10 = sub_25F4EAD7C;
  v11 = v5;
  v12 = 0u;
  v13 = 0u;
  swift_retain_n();
  sub_25F4E81A8(&v7);
}

void sub_25F4EAA48(uint64_t a1)
{
  sub_25F4EAB70(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_25F4EAB70(uint64_t a1)
{
  if (!qword_27FD90AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD90A50, &qword_25F503DF0);
    v1 = sub_25F5028C8();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD90AE8);
    }
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F4EAC18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90900, &unk_25F504590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F4EAC88()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F4EACE4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_25F4EAD1C()
{
  result = qword_27FD90B10;
  if (!qword_27FD90B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90B10);
  }

  return result;
}

unint64_t sub_25F4EAD84()
{
  result = qword_27FD90B18;
  if (!qword_27FD90B18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD90B18);
  }

  return result;
}

uint64_t objectdestroy_44Tm()
{

  if (v0[4])
  {
  }

  if (v0[6])
  {
  }

  if (v0[8])
  {
  }

  if (v0[10])
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_25F4EAF24()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_25F4EAF94()
{
  result = qword_27FD90B80[0];
  if (!qword_27FD90B80[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD90330, &qword_25F503890);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD90B80);
  }

  return result;
}

uint64_t sub_25F4EAFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F4EB0F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0x4C525579706F63;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x800000025F506560;
  }

  if (*a2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0x4C525579706F63;
  }

  if (*a2)
  {
    v6 = 0x800000025F506560;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F502A68();
  }

  return v8 & 1;
}

uint64_t sub_25F4EB19C()
{
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4EB224(uint64_t a1)
{
  sub_25F5027B8();
}

uint64_t sub_25F4EB298(uint64_t a1)
{
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

void sub_25F4EB328(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F506560;
  v3 = 0x4C525579706F63;
  if (*v1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25F4EB36C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4ECF60();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F4EB430(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7107189;
  }

  else
  {
    v3 = 0x696D697263736964;
  }

  if (v2)
  {
    v4 = 0xEC000000746E616ELL;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7107189;
  }

  else
  {
    v5 = 0x696D697263736964;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xEC000000746E616ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F502A68();
  }

  return v8 & 1;
}

uint64_t sub_25F4EB4D8()
{
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4EB55C(uint64_t a1)
{
  sub_25F5027B8();
}

uint64_t sub_25F4EB5CC(uint64_t a1)
{
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

void sub_25F4EB658(uint64_t *a1@<X8>)
{
  v2 = 7107189;
  if (!*v1)
  {
    v2 = 0x696D697263736964;
  }

  v3 = 0xEC000000746E616ELL;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F4EB698()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t ShellToControlAgent.TwoWayMessage.propertyListValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90C70, &qword_25F504DB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13[-v2];
  v4 = sub_25F502098();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ShellToControlAgent.TwoWayMessage(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v0;
  v11 = sub_25F4EBA88();
  sub_25F4EBADC();
  sub_25F502238();
  sub_25F4EBB30(v0, v10);
  swift_getEnumCaseMultiPayload();
  (*(v5 + 32))(v7, v10, v4);
  (*(v5 + 16))(v3, v7, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  v15[3] = &type metadata for ShellToControlAgent.TwoWayMessage.Key;
  v15[4] = v11;
  LOBYTE(v15[0]) = 1;
  sub_25F4EBB94();
  sub_25F5021B8();
  sub_25F4EBBEC(v3);
  (*(v5 + 8))(v7, v4);
  return __swift_destroy_boxed_opaque_existential_0(v15);
}

uint64_t type metadata accessor for ShellToControlAgent.TwoWayMessage(uint64_t a1)
{
  result = qword_27FD90CA8;
  if (!qword_27FD90CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F4EB998(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for ShellToControlAgent.TwoWayMessage(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  sub_25F4EBB30(a3, v8);
  LOBYTE(a3) = swift_getEnumCaseMultiPayload() == 1;
  v9 = sub_25F502098();
  result = (*(*(v9 - 8) + 8))(v8, v9);
  *a2 = a3;
  return result;
}

unint64_t sub_25F4EBA88()
{
  result = qword_27FD90C78;
  if (!qword_27FD90C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90C78);
  }

  return result;
}

unint64_t sub_25F4EBADC()
{
  result = qword_27FD90C80;
  if (!qword_27FD90C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90C80);
  }

  return result;
}

uint64_t sub_25F4EBB30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShellToControlAgent.TwoWayMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F4EBB94()
{
  result = qword_27FD90C88;
  if (!qword_27FD90C88)
  {
    sub_25F502098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90C88);
  }

  return result;
}

uint64_t sub_25F4EBBEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90C70, &qword_25F504DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ShellToControlAgent.TwoWayMessage.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ShellToControlAgent.TwoWayMessage(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  v17 = &type metadata for ShellToControlAgent.TwoWayMessage.Key;
  v11 = sub_25F4EBA88();
  v18 = v11;
  LOBYTE(v16[0]) = 0;
  sub_25F4EBADC();
  sub_25F5021C8();
  if (v2)
  {
    v12 = sub_25F502258();
    (*(*(v12 - 8) + 8))(a1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v16);
    v17 = &type metadata for ShellToControlAgent.TwoWayMessage.Key;
    v18 = v11;
    LOBYTE(v16[0]) = 1;
    if (v19)
    {
      sub_25F502098();
      sub_25F4EBB94();
      sub_25F5021C8();
      v14 = sub_25F502258();
      (*(*(v14 - 8) + 8))(a1, v14);
      __swift_destroy_boxed_opaque_existential_0(v16);
      swift_storeEnumTagMultiPayload();
      v10 = v8;
    }

    else
    {
      sub_25F502098();
      sub_25F4EBB94();
      sub_25F5021C8();
      v15 = sub_25F502258();
      (*(*(v15 - 8) + 8))(a1, v15);
      __swift_destroy_boxed_opaque_existential_0(v16);
      swift_storeEnumTagMultiPayload();
    }

    return sub_25F4EBED0(v10, a2);
  }
}

uint64_t sub_25F4EBED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShellToControlAgent.TwoWayMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F4EBF5C()
{
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4EC008(uint64_t a1)
{
  sub_25F5027B8();
}

uint64_t sub_25F4EC0A0(uint64_t a1)
{
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

unint64_t sub_25F4EC148@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F4EC8C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F4EC178(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000017;
  v3 = "ission";
  v4 = "createPreviewSceneAgent";
  v5 = 0xD000000000000016;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000017;
    v4 = "connectHostToAgentPipe";
  }

  if (*v1)
  {
    v3 = "createPreviewNonUIAgent";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_25F4EC1E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4ECFB4();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F4EC2A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656449656E656373;
  }

  else
  {
    v3 = 0x696D697263736964;
  }

  if (v2)
  {
    v4 = 0xEC000000746E616ELL;
  }

  else
  {
    v4 = 0xEF7265696669746ELL;
  }

  if (*a2)
  {
    v5 = 0x656449656E656373;
  }

  else
  {
    v5 = 0x696D697263736964;
  }

  if (*a2)
  {
    v6 = 0xEF7265696669746ELL;
  }

  else
  {
    v6 = 0xEC000000746E616ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F502A68();
  }

  return v8 & 1;
}

uint64_t sub_25F4EC364()
{
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4EC3FC(uint64_t a1)
{
  sub_25F5027B8();
}

uint64_t sub_25F4EC480(uint64_t a1)
{
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4EC520@<X0>(char *a3@<X8>)
{
  v4 = sub_25F502A18();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_25F4EC57C(uint64_t *a1@<X8>)
{
  v2 = 0x696D697263736964;
  if (*v1)
  {
    v2 = 0x656449656E656373;
  }

  v3 = 0xEC000000746E616ELL;
  if (*v1)
  {
    v3 = 0xEF7265696669746ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F4EC5D0()
{
  if (*v0)
  {
    return 0x656449656E656373;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t ShellToControlAgent.BSEndpointContext.propertyListValue.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_25F4EC710();
  sub_25F4EC764();
  result = sub_25F502238();
  if (a2 >= 3)
  {
    v6[5] = a1;
    v6[6] = a2;
    v6[3] = &type metadata for ShellToControlAgent.BSEndpointContext.Key;
    v6[4] = v4;
    LOBYTE(v6[0]) = 1;
    sub_25F5021B8();
    return __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return result;
}

_BYTE *sub_25F4EC6E8(_BYTE *result, _BYTE *a2)
{
  v3 = *(v2 + 24);
  *result = 0;
  v4 = v3 >= 3;
  v5 = 0x30200u >> (8 * v3);
  if (v4)
  {
    LOBYTE(v5) = 1;
  }

  *a2 = v5;
  return result;
}

unint64_t sub_25F4EC710()
{
  result = qword_27FD90C90;
  if (!qword_27FD90C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90C90);
  }

  return result;
}

unint64_t sub_25F4EC764()
{
  result = qword_27FD90C98;
  if (!qword_27FD90C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90C98);
  }

  return result;
}

uint64_t sub_25F4EC7D0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = sub_25F4EC710();
  sub_25F4EC764();
  result = sub_25F502238();
  if (v1 >= 3)
  {
    v5[5] = v2;
    v5[6] = v1;
    v5[3] = &type metadata for ShellToControlAgent.BSEndpointContext.Key;
    v5[4] = v3;
    LOBYTE(v5[0]) = 1;
    sub_25F5021B8();
    return __swift_destroy_boxed_opaque_existential_0(v5);
  }

  return result;
}

uint64_t sub_25F4EC898@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_25F4EC910(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_25F4EC8C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F502A18();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F4EC910(uint64_t a1)
{
  v10 = &type metadata for ShellToControlAgent.BSEndpointContext.Key;
  v3 = sub_25F4EC710();
  v11 = v3;
  LOBYTE(v9[0]) = 0;
  sub_25F4EC764();
  sub_25F5021C8();
  if (v1)
  {
    v4 = sub_25F502258();
    (*(*(v4 - 8) + 8))(a1, v4);
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v9);
    if (v8 <= 1u && v8)
    {
      v10 = &type metadata for ShellToControlAgent.BSEndpointContext.Key;
      v11 = v3;
      LOBYTE(v9[0]) = 1;
      sub_25F5021C8();
      v7 = sub_25F502258();
      (*(*(v7 - 8) + 8))(a1, v7);
      __swift_destroy_boxed_opaque_existential_0(v9);
      return v8;
    }

    else
    {
      v6 = sub_25F502258();
      (*(*(v6 - 8) + 8))(a1, v6);
      return 0;
    }
  }
}

unint64_t sub_25F4ECB34(uint64_t a1)
{
  result = sub_25F4ECB5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F4ECB5C()
{
  result = qword_27FD90CA0;
  if (!qword_27FD90CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90CA0);
  }

  return result;
}

void sub_25F4ECC10(uint64_t a1)
{
  sub_25F4ECC70();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_25F4ECC70()
{
  if (!qword_27FD90CB8)
  {
    v0 = sub_25F502098();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD90CB8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_17PreviewsOSSupport19ShellToControlAgentO17BSEndpointContextO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25F4ECCD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F4ECD2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_25F4ECD7C(void *result, int a2)
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

unint64_t sub_25F4ECDF8()
{
  result = qword_27FD90CC0;
  if (!qword_27FD90CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90CC0);
  }

  return result;
}

unint64_t sub_25F4ECE50()
{
  result = qword_27FD90CC8;
  if (!qword_27FD90CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90CC8);
  }

  return result;
}

unint64_t sub_25F4ECEA8()
{
  result = qword_27FD90CD0;
  if (!qword_27FD90CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90CD0);
  }

  return result;
}

unint64_t sub_25F4ECF00()
{
  result = qword_27FD90CD8;
  if (!qword_27FD90CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90CD8);
  }

  return result;
}

unint64_t sub_25F4ECF60()
{
  result = qword_27FD90CE0;
  if (!qword_27FD90CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90CE0);
  }

  return result;
}

unint64_t sub_25F4ECFB4()
{
  result = qword_27FD90CE8;
  if (!qword_27FD90CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90CE8);
  }

  return result;
}

uint64_t static LSBundleRecord.canLaunch(agentBundle:)(uint64_t a1)
{
  v2 = sub_25F501FD8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v58 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - v6;
  v8 = sub_25F502718();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  sub_25F5026D8();
  v15 = *(v3 + 16);
  v57 = a1;
  v52 = v15;
  v53 = v3 + 16;
  v15(v7, a1, v2);
  v16 = sub_25F5026F8();
  v17 = sub_25F502908();
  v18 = os_log_type_enabled(v16, v17);
  v55 = v3;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v56 = v9;
    v20 = v19;
    v21 = swift_slowAlloc();
    v51 = v8;
    v22 = v21;
    v59 = v21;
    *v20 = 136315138;
    sub_25F4EDD5C();
    v23 = sub_25F502A28();
    v24 = v3;
    v25 = v12;
    v27 = v26;
    v54 = *(v24 + 8);
    v54(v7, v2);
    v28 = sub_25F4DE2EC(v23, v27, &v59);
    v12 = v25;

    *(v20 + 4) = v28;
    _os_log_impl(&dword_25F4D4000, v16, v17, "Checking if %s is a valid development process", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v29 = v22;
    v8 = v51;
    MEMORY[0x25F8DF6E0](v29, -1, -1);
    v30 = v20;
    v9 = v56;
    MEMORY[0x25F8DF6E0](v30, -1, -1);
  }

  else
  {

    v54 = *(v3 + 8);
    v54(v7, v2);
  }

  v31 = *(v9 + 8);
  v31(v14, v8);
  v32 = v57;
  v33 = sub_25F4EDA7C();
  v34 = v58;
  if (v33 & 1) != 0 || (sub_25F4EDC48())
  {
    return 1;
  }

  sub_25F5026D8();
  v52(v34, v32, v2);
  v36 = sub_25F5026F8();
  v37 = sub_25F502918();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v56 = v9;
    v39 = v38;
    v40 = v8;
    v41 = swift_slowAlloc();
    v59 = v41;
    *v39 = 136315138;
    sub_25F4EDD5C();
    v42 = sub_25F502A28();
    v43 = v34;
    v44 = v12;
    v46 = v45;
    v54(v43, v2);
    v47 = sub_25F4DE2EC(v42, v46, &v59);

    *(v39 + 4) = v47;
    _os_log_impl(&dword_25F4D4000, v36, v37, "can't do anything with non-development agent %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x25F8DF6E0](v41, -1, -1);
    MEMORY[0x25F8DF6E0](v39, -1, -1);

    v48 = v44;
    v49 = v40;
  }

  else
  {

    v54(v34, v2);
    v48 = v12;
    v49 = v8;
  }

  v31(v48, v49);
  return 0;
}

id sub_25F4ED500()
{
  v1 = [v0 entitlements];
  v2 = sub_25F502778();
  sub_25F4EDDB4();
  v3 = [v1 objectForKey:v2 ofClass:swift_getObjCClassFromMetadata()];

  if (v3)
  {
    sub_25F502968();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      v4 = [v6 BOOLValue];

      return v4;
    }
  }

  else
  {
    sub_25F4EDE00(v9);
  }

  return 0;
}

id sub_25F4ED634(uint64_t a1, char a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = sub_25F501E28();
  v15[0] = 0;
  v7 = [v3 initWithURL:v6 allowPlaceholder:a2 & 1 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_25F501E48();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15[0];
    sub_25F501DF8();

    swift_willThrow();
    v13 = sub_25F501E48();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

id sub_25F4ED788(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_25F502778();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_25F501DF8();

    swift_willThrow();
  }

  return v6;
}

id sub_25F4ED864(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_25F501E28();
  v13[0] = 0;
  v5 = [v2 initWithURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_25F501E48();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_25F501DF8();

    swift_willThrow();
    v11 = sub_25F501E48();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

id sub_25F4ED9B0(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_25F502778();

  v8[0] = 0;
  v4 = [v2 initWithBundleIdentifier:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_25F501DF8();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_25F4EDA7C()
{
  v0 = sub_25F501E48();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F501FB8();
  if (v3)
  {
    sub_25F501E18();

    v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    v5 = sub_25F4ED634(v2, 0);
  }

  else
  {
    v8 = sub_25F501FC8();
    v10 = v9;
    v11 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    v5 = sub_25F4ED788(v8, v10, 0);
  }

  if (v5)
  {
    v12 = v5;
    v13 = [v12 managementDomain];
    v14 = sub_25F502788();
    v16 = v15;

    if (v14 == 0xD000000000000011 && 0x800000025F507680 == v16)
    {

      v6 = 1;
    }

    else
    {
      v18 = sub_25F502A68();

      if (v18)
      {

        v6 = 1;
      }

      else
      {
        v19 = v12;
        v6 = sub_25F4ED500();
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_25F4EDC48()
{
  v0 = sub_25F501E48();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F501FB8();
  if (v3)
  {
    sub_25F501E18();

    v4 = objc_allocWithZone(MEMORY[0x277CC1E50]);
    v5 = sub_25F4ED864(v2);
  }

  else
  {
    v7 = sub_25F501FC8();
    v9 = v8;
    v10 = objc_allocWithZone(MEMORY[0x277CC1E50]);
    v5 = sub_25F4ED9B0(v7, v9);
  }

  if (v5)
  {
    v11 = v5;
    v6 = sub_25F4ED500();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_25F4EDD5C()
{
  result = qword_27FD90CF0;
  if (!qword_27FD90CF0)
  {
    sub_25F501FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90CF0);
  }

  return result;
}

unint64_t sub_25F4EDDB4()
{
  result = qword_27FD90CF8;
  if (!qword_27FD90CF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD90CF8);
  }

  return result;
}

uint64_t sub_25F4EDE00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD901C0, &qword_25F5037A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RefinedPreviewPayload.previewPayload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F501F08();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RefinedPreviewPayload.previewPayload.setter(uint64_t a1)
{
  v3 = sub_25F501F08();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RefinedPreviewPayload.requestedGroupIndex.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RefinedPreviewPayload(0) + 20);

  return sub_25F4EE004(a1, v3);
}

uint64_t sub_25F4EE004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D00, &qword_25F5052A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RefinedPreviewPayload.init(previewPayload:requestedGroupIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for RefinedPreviewPayload(0) + 20);
  v7 = sub_25F5020E8();
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = sub_25F501F08();
  (*(*(v8 - 8) + 32))(a3, a1, v8);

  return sub_25F4EE004(a2, a3 + v6);
}

uint64_t sub_25F4EE18C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0x5077656976657270;
  }

  if (v2)
  {
    v4 = 0xEE0064616F6C7961;
  }

  else
  {
    v4 = 0x800000025F506630;
  }

  if (*a2)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x5077656976657270;
  }

  if (*a2)
  {
    v6 = 0x800000025F506630;
  }

  else
  {
    v6 = 0xEE0064616F6C7961;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F502A68();
  }

  return v8 & 1;
}

uint64_t sub_25F4EE244()
{
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4EE2D8(uint64_t a1)
{
  sub_25F5027B8();
}

uint64_t sub_25F4EE358(uint64_t a1)
{
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

void sub_25F4EE3F4(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F506630;
  v3 = 0x5077656976657270;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xEE0064616F6C7961;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25F4EE444()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x5077656976657270;
  }
}

uint64_t sub_25F4EE4DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90E08, &qword_25F5059E8);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90E10, &qword_25F5059F0);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90E18, &qword_25F5059F8);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  v18 = *(v12 + 56);
  *(&v27 - v16) = 0;
  v19 = sub_25F501F08();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v17[v18], a1, v19);
  v21 = *(v5 + 56);
  *v10 = 1;
  v22 = type metadata accessor for RefinedPreviewPayload(0);
  sub_25F4E4F4C(a1 + *(v22 + 20), &v10[v21], &qword_27FD90D00, &qword_25F5052A0);
  sub_25F4E4F4C(v17, v15, &qword_27FD90E18, &qword_25F5059F8);
  LOBYTE(v21) = *v15;
  v23 = v27;
  (*(v20 + 32))(v27, &v15[*(v12 + 56)], v19);
  (*(v20 + 56))(v23, 0, 1, v19);
  v29 = v21;
  sub_25F4E4F4C(v10, v8, &qword_27FD90E10, &qword_25F5059F0);
  v24 = *(v5 + 56);
  v28 = *v8;
  sub_25F5020E8();
  sub_25F4EED9C();
  sub_25F4F1FC0(&qword_27FD90D10, MEMORY[0x277D40840], MEMORY[0x277D40838]);
  sub_25F4F1FC0(&qword_27FD90D18, MEMORY[0x277D40CA0], MEMORY[0x277D40C98]);
  v25 = sub_25F502458();
  sub_25F4D867C(v23, &qword_27FD90E08, &qword_25F5059E8);
  sub_25F4D867C(v10, &qword_27FD90E10, &qword_25F5059F0);
  sub_25F4D867C(v17, &qword_27FD90E18, &qword_25F5059F8);
  sub_25F4D867C(&v8[v24], &qword_27FD90D00, &qword_25F5052A0);
  return v25;
}

uint64_t RefinedPreviewPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F502258();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v29 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D00, &qword_25F5052A0);
  MEMORY[0x28223BE20](v6 - 8);
  v27 = (v25 - v7);
  v8 = sub_25F501F08();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v32 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v25 - v12;
  v14 = *(type metadata accessor for RefinedPreviewPayload(0) + 20);
  v15 = sub_25F5020E8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v36 = a2;
  v25[1] = v16 + 56;
  v26 = v17;
  v17(&v14[a2], 1, 1, v15);
  v34 = &type metadata for RefinedPreviewPayload.Key;
  v18 = sub_25F4EED9C();
  v35 = v18;
  LOBYTE(v33[0]) = 0;
  v28 = sub_25F4F1FC0(&qword_27FD90D10, MEMORY[0x277D40840], MEMORY[0x277D40838]);
  v19 = v30;
  sub_25F5021C8();
  if (v19)
  {
    v25[0] = v15;
    v27 = v9;
    v30 = v14;
    v21 = v31;
    __swift_destroy_boxed_opaque_existential_0(v33);
    (*(v21 + 16))(v29, a1, v4);
    sub_25F5024E8();
    (*(v21 + 8))(a1, v4);

    v22 = v36;
    v27[4](v36, v32, v8);
    v23 = v30;
    sub_25F4D867C(&v30[v22], &qword_27FD90D00, &qword_25F5052A0);
    return v26(&v23[v22], 1, 1, v25[0]);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v33);
    v9[4](v36, v13, v8);
    v34 = &type metadata for RefinedPreviewPayload.Key;
    v35 = v18;
    LOBYTE(v33[0]) = 1;
    sub_25F4F1FC0(&qword_27FD90D18, MEMORY[0x277D40CA0], MEMORY[0x277D40C98]);
    v20 = v27;
    sub_25F502208();
    (*(v31 + 8))(a1, v4);
    __swift_destroy_boxed_opaque_existential_0(v33);
    return sub_25F4EE004(v20, &v14[v36]);
  }
}

unint64_t sub_25F4EED9C()
{
  result = qword_27FD90D08;
  if (!qword_27FD90D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90D08);
  }

  return result;
}

BOOL PreviewStructure.previewCount.getter()
{
  v1 = type metadata accessor for PreviewStructure(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4EF04C(v0, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D20, &qword_25F5052A8);
  v5 = (*(*(v4 - 8) + 48))(v3, 2, v4);
  if (v5)
  {
    return v5 == 1;
  }

  v7 = *(v4 + 48);
  v8 = sub_25F5026B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 32))(v11, v3, v8);
  v12 = PreviewGroupMetadata.previewCount.getter();
  (*(v9 + 8))(v11, v8);
  v13 = sub_25F5020E8();
  (*(*(v13 - 8) + 8))(&v3[v7], v13);
  return v12;
}

uint64_t sub_25F4EF04C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewStructure(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PreviewGroupMetadata.previewCount.getter()
{
  v0 = sub_25F502658();
  v1 = sub_25F5026A8();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_25F502648();
  v5 = sub_25F502678();
  v21 = v2[1];
  v6 = v21(&v20 - v4, v1);
  MEMORY[0x28223BE20](v6);
  v7 = &v20 - v4;
  v8 = *(v0 + 16);
  if (v8)
  {
    v11 = v2[2];
    v10 = v2 + 2;
    v9 = v11;
    v12 = *(v10 + 64);
    v20 = v0;
    v13 = v0 + ((v12 + 32) & ~v12);
    v14 = v10[7];
    v15 = v10;
    while (1)
    {
      v16 = v15;
      v9(v7, v13, v1);
      v17 = sub_25F502678();
      result = v21(v7, v1);
      v19 = __OFADD__(v5, v17);
      v5 += v17;
      if (v19)
      {
        break;
      }

      v13 += v14;
      --v8;
      v15 = v16;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    return v5;
  }

  return result;
}

uint64_t sub_25F4EF264(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x77656976657270;
  }

  else
  {
    v2 = 0x6E6F6974636573;
  }

  if (*a2)
  {
    v3 = 0x77656976657270;
  }

  else
  {
    v3 = 0x6E6F6974636573;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25F502A68();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25F4EF2EC()
{
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4EF364(uint64_t a1)
{
  sub_25F5027B8();
}

uint64_t sub_25F4EF3C0(uint64_t a1)
{
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

void sub_25F4EF440(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F6974636573;
  if (*v1)
  {
    v2 = 0x77656976657270;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t sub_25F4EF478()
{
  if (*v0)
  {
    return 0x77656976657270;
  }

  else
  {
    return 0x6E6F6974636573;
  }
}

uint64_t sub_25F4EF4E8()
{
  sub_25F502628();
  sub_25F502608();
  sub_25F4F1D5C();
  return sub_25F502458();
}

uint64_t PreviewGroupIndex.init(propertyListValue:)(uint64_t a1)
{
  v8 = &_s3KeyON_1;
  v3 = sub_25F4F1D5C();
  v9 = v3;
  LOBYTE(v7[0]) = 0;
  sub_25F5021C8();
  if (v1)
  {
    v4 = sub_25F502258();
    (*(*(v4 - 8) + 8))(a1, v4);
    return __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v7);
    v8 = &_s3KeyON_1;
    v9 = v3;
    LOBYTE(v7[0]) = 1;
    sub_25F5021C8();
    __swift_destroy_boxed_opaque_existential_0(v7);
    sub_25F502618();
    v5 = sub_25F502258();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }
}

uint64_t sub_25F4EF728(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7463655365726F6DLL;
  }

  else
  {
    v3 = 0x6365537473726966;
  }

  if (v2)
  {
    v4 = 0xEC0000006E6F6974;
  }

  else
  {
    v4 = 0xEC000000736E6F69;
  }

  if (*a2)
  {
    v5 = 0x7463655365726F6DLL;
  }

  else
  {
    v5 = 0x6365537473726966;
  }

  if (*a2)
  {
    v6 = 0xEC000000736E6F69;
  }

  else
  {
    v6 = 0xEC0000006E6F6974;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F502A68();
  }

  return v8 & 1;
}

uint64_t sub_25F4EF7E0()
{
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4EF874(uint64_t a1)
{
  sub_25F5027B8();
}

uint64_t sub_25F4EF8F4(uint64_t a1)
{
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

void sub_25F4EF990(uint64_t *a1@<X8>)
{
  v2 = 0x6365537473726966;
  if (*v1)
  {
    v2 = 0x7463655365726F6DLL;
  }

  v3 = 0xEC0000006E6F6974;
  if (*v1)
  {
    v3 = 0xEC000000736E6F69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F4EF9E0()
{
  if (*v0)
  {
    return 0x7463655365726F6DLL;
  }

  else
  {
    return 0x6365537473726966;
  }
}

uint64_t sub_25F4EFA68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90DF0, &qword_25F5059D0);
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v3 = 0;
  sub_25F502648();
  v4 = sub_25F502658();
  MEMORY[0x28223BE20](v4);
  sub_25F4E4F4C(v3, v3, &qword_27FD90DF0, &qword_25F5059D0);
  v5 = *v3;
  v6 = *(v1 + 56);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90DF8, &qword_25F5059D8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_25F5026A8();
  v11 = *(v10 - 8);
  (*(v11 + 32))(v9, &v3[v6], v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v16 = v5;
  v15 = 1;
  v14 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D40, &qword_25F5052B0);
  sub_25F4F1DB8();
  sub_25F4F1FC0(&qword_27FD90D38, MEMORY[0x28220A608], &protocol conformance descriptor for PreviewGroupMetadata.Section);
  sub_25F4F1E0C();
  v12 = sub_25F502458();

  sub_25F4D867C(v9, &qword_27FD90DF8, &qword_25F5059D8);
  sub_25F4D867C(v3, &qword_27FD90DF0, &qword_25F5059D0);
  return v12;
}

uint64_t PreviewGroupMetadata.init(propertyListValue:)(uint64_t a1)
{
  v3 = sub_25F5026A8();
  MEMORY[0x28223BE20](v3);
  v9 = &_s3KeyON_0;
  v4 = sub_25F4F1DB8();
  v10 = v4;
  LOBYTE(v8[0]) = 0;
  sub_25F4F1FC0(&qword_27FD90D38, MEMORY[0x28220A608], &protocol conformance descriptor for PreviewGroupMetadata.Section);
  sub_25F5021C8();
  if (v1)
  {
    v5 = sub_25F502258();
    (*(*(v5 - 8) + 8))(a1, v5);
    return __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v8);
    v9 = &_s3KeyON_0;
    v10 = v4;
    LOBYTE(v8[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D40, &qword_25F5052B0);
    sub_25F4F1E0C();
    sub_25F5021C8();
    __swift_destroy_boxed_opaque_existential_0(v8);
    sub_25F502638();
    v7 = sub_25F502258();
    return (*(*(v7 - 8) + 8))(a1, v7);
  }
}

uint64_t sub_25F4EFFAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4377656976657270;
  }

  else
  {
    v3 = 0x656C746974;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xEC000000746E756FLL;
  }

  if (*a2)
  {
    v5 = 0x4377656976657270;
  }

  else
  {
    v5 = 0x656C746974;
  }

  if (*a2)
  {
    v6 = 0xEC000000746E756FLL;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F502A68();
  }

  return v8 & 1;
}

uint64_t sub_25F4F0058()
{
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4F00E0(uint64_t a1)
{
  sub_25F5027B8();
}

uint64_t sub_25F4F0154(uint64_t a1)
{
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

void sub_25F4F01E4(uint64_t *a1@<X8>)
{
  v2 = 0x656C746974;
  if (*v1)
  {
    v2 = 0x4377656976657270;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEC000000746E756FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F4F0228()
{
  if (*v0)
  {
    return 0x4377656976657270;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_25F4F02A4()
{
  sub_25F502698();
  sub_25F502678();
  sub_25F4F1EBC();
  v0 = sub_25F502458();

  return v0;
}

uint64_t PreviewGroupMetadata.Section.init(propertyListValue:)(uint64_t a1)
{
  v8 = &_s3KeyON;
  v3 = sub_25F4F1EBC();
  v9 = v3;
  LOBYTE(v7[0]) = 0;
  sub_25F502208();
  if (v1)
  {
    v4 = sub_25F502258();
    (*(*(v4 - 8) + 8))(a1, v4);
    return __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v7);
    v8 = &_s3KeyON;
    v9 = v3;
    LOBYTE(v7[0]) = 1;
    sub_25F5021C8();
    __swift_destroy_boxed_opaque_existential_0(v7);
    sub_25F502688();
    v6 = sub_25F502258();
    return (*(*(v6 - 8) + 8))(a1, v6);
  }
}

uint64_t sub_25F4F0558(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4777656976657270;
  v4 = 0xEC00000070756F72;
  v5 = 0x800000025F5066A0;
  if (v2 != 1)
  {
    v3 = 0xD000000000000011;
    v4 = 0x800000025F5066A0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x7250656C676E6973;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xED00007765697665;
  }

  v8 = 0x4777656976657270;
  if (*a2 == 1)
  {
    v5 = 0xEC00000070756F72;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7250656C676E6973;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xED00007765697665;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F502A68();
  }

  return v11 & 1;
}

uint64_t sub_25F4F066C()
{
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4F0728(uint64_t a1)
{
  sub_25F5027B8();
}

uint64_t sub_25F4F07D0(uint64_t a1)
{
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

unint64_t sub_25F4F0888@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F4F28A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F4F08B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00007765697665;
  v4 = 0xEC00000070756F72;
  v5 = 0x4777656976657270;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000025F5066A0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7250656C676E6973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F4F0930(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4F2850();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F4F09F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x617461646174656DLL;
  if (v2 != 1)
  {
    v4 = 0x6579616C70736964;
    v3 = 0xEE007865646E4964;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x696D697263736964;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC000000746E616ELL;
  }

  v7 = 0xE800000000000000;
  v8 = 0x617461646174656DLL;
  if (*a2 != 1)
  {
    v8 = 0x6579616C70736964;
    v7 = 0xEE007865646E4964;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696D697263736964;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC000000746E616ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F502A68();
  }

  return v11 & 1;
}

uint64_t sub_25F4F0B14()
{
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4F0BCC(uint64_t a1)
{
  sub_25F5027B8();
}

uint64_t sub_25F4F0C70(uint64_t a1)
{
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

unint64_t sub_25F4F0D24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F4F28F0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F4F0D54(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E616ELL;
  v4 = 0xE800000000000000;
  v5 = 0x617461646174656DLL;
  if (v2 != 1)
  {
    v5 = 0x6579616C70736964;
    v4 = 0xEE007865646E4964;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696D697263736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F4F0DC8()
{
  v1 = 0x617461646174656DLL;
  if (*v0 != 1)
  {
    v1 = 0x6579616C70736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t PreviewStructure.propertyListValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D00, &qword_25F5052A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v25 - v5;
  v7 = sub_25F5020E8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PreviewStructure(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[6] = v2;
  v14 = sub_25F4F1F18();
  sub_25F4F1F6C();
  sub_25F502238();
  sub_25F4EF04C(v2, v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D20, &qword_25F5052A8);
  result = (*(*(v15 - 8) + 48))(v13, 2, v15);
  if (!result)
  {
    v25[2] = a1;
    v17 = *(v15 + 48);
    v18 = sub_25F5026B8();
    v25[3] = v25;
    v19 = *(v18 - 8);
    MEMORY[0x28223BE20](v18);
    v21 = v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 32))(v21, v13, v18);
    (*(v8 + 32))(v10, &v13[v17], v7);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D68, &qword_25F5052B8);
    v25[1] = v25;
    MEMORY[0x28223BE20](v22 - 8);
    v24 = v25 - v23;
    (*(v19 + 16))(v25 - v23, v21, v18);
    (*(v19 + 56))(v24, 0, 1, v18);
    v27 = &type metadata for PreviewStructure.Key;
    v28 = v14;
    LOBYTE(v26[0]) = 1;
    sub_25F4F1FC0(&qword_27FD90D70, MEMORY[0x28220A618], &protocol conformance descriptor for PreviewGroupMetadata);
    sub_25F5021B8();
    sub_25F4D867C(v24, &qword_27FD90D68, &qword_25F5052B8);
    __swift_destroy_boxed_opaque_existential_0(v26);
    (*(v8 + 16))(v6, v10, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    v27 = &type metadata for PreviewStructure.Key;
    v28 = v14;
    LOBYTE(v26[0]) = 2;
    sub_25F4F1FC0(&qword_27FD90D18, MEMORY[0x277D40CA0], MEMORY[0x277D40C98]);
    sub_25F5021B8();
    sub_25F4D867C(v6, &qword_27FD90D00, &qword_25F5052A0);
    (*(v8 + 8))(v10, v7);
    (*(v19 + 8))(v21, v18);
    return __swift_destroy_boxed_opaque_existential_0(v26);
  }

  return result;
}

uint64_t sub_25F4F1304(_BYTE *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for PreviewStructure(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  sub_25F4EF04C(a3, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D20, &qword_25F5052A8);
  result = (*(*(v9 - 8) + 48))(v8, 2, v9);
  if (result)
  {
    v11 = 0;
    if (result != 1)
    {
      v11 = 2;
    }
  }

  else
  {
    v12 = *(v9 + 48);
    v13 = sub_25F5020E8();
    (*(*(v13 - 8) + 8))(&v8[v12], v13);
    v14 = sub_25F5026B8();
    result = (*(*(v14 - 8) + 8))(v8, v14);
    v11 = 1;
  }

  *a2 = v11;
  return result;
}

uint64_t PreviewStructure.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PreviewStructure(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &type metadata for PreviewStructure.Key;
  v8 = sub_25F4F1F18();
  v20 = v8;
  LOBYTE(v18[0]) = 0;
  sub_25F4F1F6C();
  sub_25F5021C8();
  if (v2)
  {
    v9 = sub_25F502258();
    (*(*(v9 - 8) + 8))(a1, v9);
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v18);
    if (v21)
    {
      if (v21 == 1)
      {
        v19 = &type metadata for PreviewStructure.Key;
        v20 = v8;
        LOBYTE(v18[0]) = 1;
        sub_25F5026B8();
        sub_25F4F1FC0(&qword_27FD90D70, MEMORY[0x28220A618], &protocol conformance descriptor for PreviewGroupMetadata);
        sub_25F5021C8();
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D20, &qword_25F5052A8);
        __swift_destroy_boxed_opaque_existential_0(v18);
        v19 = &type metadata for PreviewStructure.Key;
        v20 = v8;
        LOBYTE(v18[0]) = 2;
        sub_25F5020E8();
        sub_25F4F1FC0(&qword_27FD90D18, MEMORY[0x277D40CA0], MEMORY[0x277D40C98]);
        sub_25F5021C8();
        v16 = sub_25F502258();
        (*(*(v16 - 8) + 8))(a1, v16);
        __swift_destroy_boxed_opaque_existential_0(v18);
        (*(*(v11 - 8) + 56))(v7, 0, 2, v11);
        return sub_25F4F2008(v7, a2);
      }

      else
      {
        v14 = sub_25F502258();
        (*(*(v14 - 8) + 8))(a1, v14);
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D20, &qword_25F5052A8);
        return (*(*(v15 - 8) + 56))(a2, 2, 2, v15);
      }
    }

    else
    {
      v12 = sub_25F502258();
      (*(*(v12 - 8) + 8))(a1, v12);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D20, &qword_25F5052A8);
      return (*(*(v13 - 8) + 56))(a2, 1, 2, v13);
    }
  }
}

uint64_t _s17PreviewsOSSupport16PreviewStructureO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F5020E8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = type metadata accessor for PreviewStructure(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90E00, &qword_25F5059E0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v36 - v16;
  v18 = &v36 + *(v15 + 56) - v16;
  sub_25F4EF04C(a1, &v36 - v16);
  sub_25F4EF04C(a2, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D20, &qword_25F5052A8);
  v20 = *(*(v19 - 8) + 48);
  v21 = v20(v17, 2, v19);
  if (!v21)
  {
    sub_25F4EF04C(v17, v13);
    v41 = *(v19 + 48);
    if (!v20(v18, 2, v19))
    {
      v25 = sub_25F5026B8();
      v39 = &v36;
      v40 = v25;
      v37 = *(v25 - 8);
      MEMORY[0x28223BE20](v25);
      v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 32))(v27, v18);
      v29 = *(v5 + 32);
      v38 = v5;
      v30 = v41;
      v29(v10, &v41[v13], v4);
      v29(v8, &v30[v18], v4);
      v31 = v37;
      v41 = v27;
      v32 = MEMORY[0x25F8DEC00](v13, v27);
      v33 = *(v31 + 8);
      v33(v13, v40);
      if (v32)
      {
        v23 = sub_25F5020D8();
        v34 = *(v38 + 8);
        v34(v8, v4);
        v34(v10, v4);
        v33(v41, v40);
        sub_25F4F293C(v17);
        return v23 & 1;
      }

      v35 = *(v38 + 8);
      v35(v8, v4);
      v35(v10, v4);
      v33(v41, v40);
      sub_25F4F293C(v17);
      goto LABEL_10;
    }

    (*(v5 + 8))(&v41[v13], v4);
    v22 = sub_25F5026B8();
    (*(*(v22 - 8) + 8))(v13, v22);
    goto LABEL_9;
  }

  if (v21 != 1)
  {
    if (v20(v18, 2, v19) == 2)
    {
      goto LABEL_8;
    }

LABEL_9:
    sub_25F4D867C(v17, &qword_27FD90E00, &qword_25F5059E0);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  if (v20(v18, 2, v19) != 1)
  {
    goto LABEL_9;
  }

LABEL_8:
  sub_25F4F293C(v17);
  v23 = 1;
  return v23 & 1;
}