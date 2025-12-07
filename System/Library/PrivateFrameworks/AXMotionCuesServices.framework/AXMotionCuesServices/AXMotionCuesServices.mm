uint64_t sub_23D619750()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D619790()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23D6197F8()
{
  v0 = sub_23D61F700();
  __swift_allocate_value_buffer(v0, qword_27E2DFAB8);
  __swift_project_value_buffer(v0, qword_27E2DFAB8);
  return sub_23D61F6F0();
}

uint64_t MCLog.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E2DFAB0 != -1)
  {
    swift_once();
  }

  v2 = sub_23D61F700();
  v3 = __swift_project_value_buffer(v2, qword_27E2DFAB8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t MCLog.setter(uint64_t a1)
{
  if (qword_27E2DFAB0 != -1)
  {
    swift_once();
  }

  v2 = sub_23D61F700();
  v3 = __swift_project_value_buffer(v2, qword_27E2DFAB8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*MCLog.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27E2DFAB0 != -1)
  {
    swift_once();
  }

  v1 = sub_23D61F700();
  __swift_project_value_buffer(v1, qword_27E2DFAB8);
  swift_beginAccess();
  return j__swift_endAccess;
}

id AXMotionCueSharedInstance.getter()
{
  if (qword_281341250 != -1)
  {
    swift_once();
  }

  v1 = qword_281341258;

  return v1;
}

id sub_23D619B54()
{
  result = [objc_allocWithZone(type metadata accessor for AXMotionCuesService()) init];
  qword_281341258 = result;
  return result;
}

id static AXMotionCuesService.sharedInstance.getter()
{
  if (qword_281341250 != -1)
  {
    swift_once();
  }

  v1 = qword_281341258;

  return v1;
}

id sub_23D619CD4()
{
  v1 = OBJC_IVAR___AXMotionCuesService__client;
  v2 = *(v0 + OBJC_IVAR___AXMotionCuesService__client);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___AXMotionCuesService__client);
LABEL_6:
    v14 = v2;
    return v3;
  }

  v4 = v0;
  sub_23D61F810();

  v5 = [objc_opt_self() processInfo];
  [v5 processIdentifier];

  v6 = sub_23D61F870();
  MEMORY[0x23EEE5A40](v6);

  sub_23D61F760();
  v7 = objc_allocWithZone(MEMORY[0x277CE7740]);
  v8 = sub_23D61F750();

  v9 = sub_23D61F750();

  v10 = [v7 initWithIdentifier:v8 serviceBundleName:v9];

  v11 = *(v4 + v1);
  *(v4 + v1) = v10;

  result = *(v4 + v1);
  if (result)
  {
    result = [result setDelegate_];
    v13 = *(v4 + v1);
    if (v13)
    {
      v3 = v13;
      v2 = 0;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t AXMotionCuesService.enable(completionBlock:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_23D61F700();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E2DFAB0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_27E2DFAB8);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_23D61F6E0();
  v10 = sub_23D61F7B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23D618000, v9, v10, "Client requested enable for Motion Cues", v11, 2u);
    MEMORY[0x23EEE5F30](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v12 = sub_23D619CD4();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_23D61A154;
  *(v14 + 24) = v13;
  aBlock[4] = sub_23D61D3C0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D61BA18;
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);

  [v12 sendAsynchronousMessage:0 withIdentifier:1 targetAccessQueue:0 completion:v15];
  _Block_release(v15);
}

void sub_23D61A1B8(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_23D61F690();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t AXMotionCuesService.disable(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_23D61F700();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E2DFAB0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_27E2DFAB8);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_23D61F6E0();
  v10 = sub_23D61F7B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23D618000, v9, v10, "Client requested disable for Motion Cues", v11, 2u);
    MEMORY[0x23EEE5F30](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v12 = sub_23D619CD4();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_23D61D3E0;
  *(v14 + 24) = v13;
  aBlock[4] = sub_23D61F640;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D61BA18;
  aBlock[3] = &block_descriptor_13;
  v15 = _Block_copy(aBlock);

  [v12 sendAsynchronousMessage:0 withIdentifier:2 targetAccessQueue:0 completion:v15];
  _Block_release(v15);
}

void sub_23D61A4EC(void *a1, char a2, void (*a3)(void, void), uint64_t a4, const char *a5, const char *a6, ...)
{
  v12 = sub_23D61F700();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  if (a2)
  {
    v19 = a1;
    if (qword_27E2DFAB0 != -1)
    {
      swift_once();
    }

    v40 = a4;
    v20 = __swift_project_value_buffer(v12, qword_27E2DFAB8);
    swift_beginAccess();
    (*(v13 + 16))(v16, v20, v12);
    v21 = a1;
    v22 = sub_23D61F6E0();
    v23 = sub_23D61F7A0();
    sub_23D61F49C(a1, 1);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v39 = a3;
      v26 = v25;
      *v24 = 138412290;
      sub_23D61F4A8();
      swift_allocError();
      *v27 = a1;
      v28 = a1;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v29;
      *v26 = v29;
      _os_log_impl(&dword_23D618000, v22, v23, a5, v24, 0xCu);
      sub_23D61F1F8(v26, &qword_27E2DFA18, &qword_23D620030);
      v30 = v26;
      a3 = v39;
      MEMORY[0x23EEE5F30](v30, -1, -1);
      MEMORY[0x23EEE5F30](v24, -1, -1);
    }

    (*(v13 + 8))(v16, v12);
    sub_23D61F4A8();
    v31 = swift_allocError();
    *v32 = a1;
    v33 = a1;
    a3(0, v31);

    sub_23D61F49C(a1, 1);
  }

  else
  {
    if (qword_27E2DFAB0 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v12, qword_27E2DFAB8);
    swift_beginAccess();
    (*(v13 + 16))(v18, v34, v12);
    v35 = sub_23D61F6E0();
    v36 = sub_23D61F7B0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_23D618000, v35, v36, a6, v37, 2u);
      MEMORY[0x23EEE5F30](v37, -1, -1);
    }

    (*(v13 + 8))(v18, v12);
    a3(1, 0);
  }
}

uint64_t sub_23D61A91C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

Swift::Void __swiftcall AXMotionCuesService.simulateDeviceMotion(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_23D61F700();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E2DFAB0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_27E2DFAB8);
  swift_beginAccess();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_23D61F6E0();
  v9 = sub_23D61F7B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23D618000, v8, v9, "Client requested to simulate device motion", v10, 2u);
    MEMORY[0x23EEE5F30](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v11 = sub_23D619CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF900, &qword_23D61FF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D61FF70;
  aBlock = 1752457584;
  v18 = 0xE400000000000000;
  v13 = MEMORY[0x277D837D0];
  sub_23D61F7F0();
  *(inited + 96) = v13;
  *(inited + 72) = countAndFlagsBits;
  *(inited + 80) = object;

  sub_23D61EB0C(inited);
  swift_setDeallocating();
  sub_23D61F1F8(inited + 32, &qword_27E2DF908, &qword_23D61FF88);
  v14 = sub_23D61F710();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v21 = sub_23D61F640;
  v22 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_23D61BA18;
  v20 = &block_descriptor_20;
  v16 = _Block_copy(&aBlock);

  [v11 sendAsynchronousMessage:v14 withIdentifier:5 targetAccessQueue:0 completion:v16];
  _Block_release(v16);
}

uint64_t AXMotionCuesService.registerMotionCuesMoving(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v40 = a2;
  v39 = a1;
  v41 = a3;
  v5 = sub_23D61F700();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23D61F6D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v38 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v42 = &v34 - v13;
  sub_23D61F6C0();
  if (qword_27E2DFAB0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, qword_27E2DFAB8);
  swift_beginAccess();
  (*(v6 + 16))(v8, v14, v5);
  v15 = sub_23D61F6E0();
  v16 = sub_23D61F7B0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_23D618000, v15, v16, "Attempting to register handler for Motion Cues moving", v17, 2u);
    MEMORY[0x23EEE5F30](v17, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v37 = sub_23D619CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF900, &qword_23D61FF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D61FF70;
  aBlock = 0x7265747369676572;
  v44 = 0xE800000000000000;
  sub_23D61F7F0();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  sub_23D61EB0C(inited);
  swift_setDeallocating();
  sub_23D61F1F8(inited + 32, &qword_27E2DF908, &qword_23D61FF88);
  v36 = sub_23D61F710();

  v35 = [objc_opt_self() mainAccessQueue];
  v19 = v38;
  (*(v10 + 16))(v38, v42, v9);
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = v9;
  v23 = swift_allocObject();
  v24 = *(v10 + 32);
  v24(v23 + v20, v19, v9);
  *(v23 + v21) = v4;
  v25 = (v23 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = v40;
  *v25 = v39;
  v25[1] = v26;
  v47 = sub_23D61EC88;
  v48 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_23D61BA18;
  v46 = &block_descriptor_26;
  v27 = _Block_copy(&aBlock);
  v28 = v4;

  v29 = v37;
  v30 = v36;
  v31 = v35;
  [v37 sendAsynchronousMessage:v36 withIdentifier:4 targetAccessQueue:v35 completion:v27];
  _Block_release(v27);

  v32 = v41;
  v24(v41, v42, v22);
  return (*(v10 + 56))(v32, 0, 1, v22);
}

uint64_t sub_23D61B2A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a3;
  v9 = sub_23D61F6D0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23D61F700();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  if (a1)
  {
    v19 = a1;
    if (qword_27E2DFAB0 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v13, qword_27E2DFAB8);
    swift_beginAccess();
    v21 = v14;
    (*(v14 + 16))(v17, v20, v13);
    v22 = a1;
    v23 = sub_23D61F6E0();
    v24 = sub_23D61F7A0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v13;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = a1;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_23D618000, v23, v24, "Failed to register moving handler with error: %@", v26, 0xCu);
      sub_23D61F1F8(v27, &qword_27E2DFA18, &qword_23D620030);
      MEMORY[0x23EEE5F30](v27, -1, -1);
      v30 = v26;
      v13 = v25;
      MEMORY[0x23EEE5F30](v30, -1, -1);
    }

    else
    {
    }

    return (*(v21 + 8))(v17, v13);
  }

  else
  {
    v31 = &v52 - v18;
    v55 = a5;
    v56 = a4;
    if (qword_27E2DFAB0 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v13, qword_27E2DFAB8);
    swift_beginAccess();
    v33 = v14;
    (*(v14 + 16))(v31, v32, v13);
    v34 = *(v10 + 16);
    v57 = a2;
    v35 = a2;
    v36 = v9;
    v37 = v31;
    v34(v12, v35, v36);
    v38 = sub_23D61F6E0();
    v39 = sub_23D61F7B0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v60[0] = v53;
      *v40 = 136315138;
      sub_23D61F390(&qword_27E2DFA20, MEMORY[0x277CC9628]);
      v41 = sub_23D61F870();
      v54 = v13;
      v43 = v42;
      (*(v10 + 8))(v12, v36);
      v44 = sub_23D61D458(v41, v43, v60);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_23D618000, v38, v39, "Motion Cues moving registration handler received: %s", v40, 0xCu);
      v45 = v53;
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x23EEE5F30](v45, -1, -1);
      MEMORY[0x23EEE5F30](v40, -1, -1);

      (*(v33 + 8))(v37, v54);
    }

    else
    {

      (*(v10 + 8))(v12, v36);
      (*(v33 + 8))(v37, v13);
    }

    v47 = v55;
    v48 = swift_allocObject();
    *(v48 + 16) = v56;
    *(v48 + 24) = v47;
    v49 = OBJC_IVAR___AXMotionCuesService_movingHandlers;
    v50 = v58;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = *(v50 + v49);
    *(v50 + v49) = 0x8000000000000000;
    sub_23D61E408(sub_23D61F65C, v48, v57, isUniquelyReferenced_nonNull_native);
    *(v50 + v49) = v59;
    return swift_endAccess();
  }
}

uint64_t sub_23D61B84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_23D61E408(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v9 = sub_23D61F6D0();
    result = (*(*(v9 - 8) + 8))(a3, v9);
    *v3 = v22;
  }

  else
  {
    v11 = sub_23D61DA00(a3);
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v23 = *v4;
      if (!v14)
      {
        sub_23D61E6A4();
        v15 = v23;
      }

      v16 = *(v15 + 48);
      v17 = sub_23D61F6D0();
      v18 = *(v17 - 8);
      v19 = *(v18 + 8);
      v19(v16 + *(v18 + 72) * v13, v17);

      sub_23D61E100(v13, v15);
      result = (v19)(a3, v17);
      *v4 = v15;
    }

    else
    {
      v20 = sub_23D61F6D0();
      v21 = *(*(v20 - 8) + 8);

      return v21(a3, v20);
    }
  }

  return result;
}

uint64_t sub_23D61BA18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_23D61F720();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t AXMotionCuesService.registerMotionCuesVisible(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v40 = a2;
  v39 = a1;
  v41 = a3;
  v5 = sub_23D61F700();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23D61F6D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v38 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v42 = &v34 - v13;
  sub_23D61F6C0();
  if (qword_27E2DFAB0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, qword_27E2DFAB8);
  swift_beginAccess();
  (*(v6 + 16))(v8, v14, v5);
  v15 = sub_23D61F6E0();
  v16 = sub_23D61F7B0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_23D618000, v15, v16, "Attempting to register handler for Motion Cues visible", v17, 2u);
    MEMORY[0x23EEE5F30](v17, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v37 = sub_23D619CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF900, &qword_23D61FF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D61FF70;
  aBlock = 0x7265747369676572;
  v44 = 0xE800000000000000;
  sub_23D61F7F0();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  sub_23D61EB0C(inited);
  swift_setDeallocating();
  sub_23D61F1F8(inited + 32, &qword_27E2DF908, &qword_23D61FF88);
  v36 = sub_23D61F710();

  v35 = [objc_opt_self() mainAccessQueue];
  v19 = v38;
  (*(v10 + 16))(v38, v42, v9);
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = v9;
  v23 = swift_allocObject();
  v24 = *(v10 + 32);
  v24(v23 + v20, v19, v9);
  *(v23 + v21) = v4;
  v25 = (v23 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = v40;
  *v25 = v39;
  v25[1] = v26;
  v47 = sub_23D61ED50;
  v48 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_23D61BA18;
  v46 = &block_descriptor_32;
  v27 = _Block_copy(&aBlock);
  v28 = v4;

  v29 = v37;
  v30 = v36;
  v31 = v35;
  [v37 sendAsynchronousMessage:v36 withIdentifier:3 targetAccessQueue:v35 completion:v27];
  _Block_release(v27);

  v32 = v41;
  v24(v41, v42, v22);
  return (*(v10 + 56))(v32, 0, 1, v22);
}

uint64_t sub_23D61C058(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a3;
  v9 = sub_23D61F6D0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23D61F700();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  if (a1)
  {
    v19 = a1;
    if (qword_27E2DFAB0 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v13, qword_27E2DFAB8);
    swift_beginAccess();
    v21 = v14;
    (*(v14 + 16))(v17, v20, v13);
    v22 = a1;
    v23 = sub_23D61F6E0();
    v24 = sub_23D61F7A0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v13;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = a1;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_23D618000, v23, v24, "Failed to register visible handler with error: %@", v26, 0xCu);
      sub_23D61F1F8(v27, &qword_27E2DFA18, &qword_23D620030);
      MEMORY[0x23EEE5F30](v27, -1, -1);
      v30 = v26;
      v13 = v25;
      MEMORY[0x23EEE5F30](v30, -1, -1);
    }

    else
    {
    }

    return (*(v21 + 8))(v17, v13);
  }

  else
  {
    v31 = &v52 - v18;
    v55 = a5;
    v56 = a4;
    if (qword_27E2DFAB0 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v13, qword_27E2DFAB8);
    swift_beginAccess();
    v33 = v14;
    (*(v14 + 16))(v31, v32, v13);
    v34 = *(v10 + 16);
    v57 = a2;
    v35 = a2;
    v36 = v9;
    v37 = v31;
    v34(v12, v35, v36);
    v38 = sub_23D61F6E0();
    v39 = sub_23D61F7B0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v60[0] = v53;
      *v40 = 136315138;
      sub_23D61F390(&qword_27E2DFA20, MEMORY[0x277CC9628]);
      v41 = sub_23D61F870();
      v54 = v13;
      v43 = v42;
      (*(v10 + 8))(v12, v36);
      v44 = sub_23D61D458(v41, v43, v60);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_23D618000, v38, v39, "Motion cues visible registration handler received %s", v40, 0xCu);
      v45 = v53;
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x23EEE5F30](v45, -1, -1);
      MEMORY[0x23EEE5F30](v40, -1, -1);

      (*(v33 + 8))(v37, v54);
    }

    else
    {

      (*(v10 + 8))(v12, v36);
      (*(v33 + 8))(v37, v13);
    }

    v47 = v55;
    v48 = swift_allocObject();
    *(v48 + 16) = v56;
    *(v48 + 24) = v47;
    v49 = OBJC_IVAR___AXMotionCuesService_visibleHandlers;
    v50 = v58;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = *(v50 + v49);
    *(v50 + v49) = 0x8000000000000000;
    sub_23D61E408(sub_23D61F364, v48, v57, isUniquelyReferenced_nonNull_native);
    *(v50 + v49) = v59;
    return swift_endAccess();
  }
}

id sub_23D61C630(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF9F0, &qword_23D620018);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - v11;
  v13 = _Block_copy(a3);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a1;
  a6(a5, v14);

  v16 = sub_23D61F6D0();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v12, 1, v16);
  v19 = 0;
  if (v18 != 1)
  {
    v20 = sub_23D61F6A0();
    (*(v17 + 8))(v12, v16);
    v19 = v20;
  }

  return v19;
}

uint64_t sub_23D61C7B8(uint64_t a1, void *a2)
{
  v3 = sub_23D61F6D0();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  swift_beginAccess();
  sub_23D61B84C(0, 0, v5);
  return swift_endAccess();
}

uint64_t sub_23D61C8BC(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_23D61F6D0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  sub_23D61F6B0();
  (*(v6 + 16))(v9, v11, v5);
  swift_beginAccess();
  v12 = a1;
  sub_23D61B84C(0, 0, v9);
  swift_endAccess();

  return (*(v6 + 8))(v11, v5);
}

id AXMotionCuesService.userInterfaceClient(_:accessQueueForProcessingMessageWithIdentifier:)()
{
  v0 = [objc_opt_self() mainAccessQueue];

  return v0;
}

void AXMotionCuesService.connectionWithServiceWasInterrupted(forUserInterfaceClient:)(id a1)
{
  v2 = v1;
  v4 = sub_23D61F700();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = sub_23D619CD4();

  if (a1 && v11 == a1)
  {
    if (qword_27E2DFAB0 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v4, qword_27E2DFAB8);
    swift_beginAccess();
    v13 = *(v5 + 16);
    v13(v10, v12, v4);
    v14 = sub_23D61F6E0();
    v15 = sub_23D61F7A0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v22 = v2;
      v17 = v16;
      *v16 = 0;
      _os_log_impl(&dword_23D618000, v14, v15, "Connection to Motion Cues UI Service was interrupted", v16, 2u);
      MEMORY[0x23EEE5F30](v17, -1, -1);
    }

    v18 = *(v5 + 8);
    v18(v10, v4);
    if (_AXSMotionCuesEnabled())
    {
      v13(v8, v12, v4);
      v19 = sub_23D61F6E0();
      v20 = sub_23D61F790();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_23D618000, v19, v20, "Motion Cues still enabled. Will attempt to relaunch", v21, 2u);
        MEMORY[0x23EEE5F30](v21, -1, -1);
      }

      v18(v8, v4);
      AXMotionCuesService.enable(completionBlock:)(sub_23D61CEC0, 0);
    }
  }
}

uint64_t sub_23D61CEC0(char a1, void *a2)
{
  v4 = sub_23D61F700();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E2DFAB0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_27E2DFAB8);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a2;
  v10 = sub_23D61F6E0();
  v11 = sub_23D61F7B0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 67109378;
    *(v12 + 4) = a1 & 1;
    *(v12 + 8) = 2112;
    if (a2)
    {
      v14 = a2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v15;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    *(v12 + 10) = v15;
    *v13 = v16;
    _os_log_impl(&dword_23D618000, v10, v11, "Enabled Motion Cues: success %{BOOL}d, error %@", v12, 0x12u);
    sub_23D61F1F8(v13, &qword_27E2DFA18, &qword_23D620030);
    MEMORY[0x23EEE5F30](v13, -1, -1);
    MEMORY[0x23EEE5F30](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

id AXMotionCuesService.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23D61D208()
{
  MEMORY[0x23EEE5A40](0x6F72724520435049, 0xEB00000000203A72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2DFA40, &qword_23D6200F8);
  sub_23D61F830();
  return 0;
}

uint64_t sub_23D61D2B4(uint64_t result, void *a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  if (a3)
  {
    if (a2)
    {
      sub_23D61F4FC(a3, a4);
      v7 = a2;
      a3(a2, 1);

      return sub_23D61F50C(a3, a4);
    }

    else
    {
      v8 = result;
      if (result)
      {

        v9 = v8;
      }

      else
      {
        sub_23D61F4FC(a3, a4);
        v9 = sub_23D61EB0C(MEMORY[0x277D84F90]);
      }

      a3(v9, 0);
      sub_23D61F50C(a3, a4);
    }
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

unint64_t sub_23D61D458(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23D61D524(v11, 0, 0, 1, a1, a2);
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
    sub_23D61F2AC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23D61D524(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23D61D630(a5, a6);
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
    result = sub_23D61F820();
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

void *sub_23D61D630(uint64_t a1, unint64_t a2)
{
  v3 = sub_23D61D67C(a1, a2);
  sub_23D61D7AC(&unk_284FAA058);
  return v3;
}

void *sub_23D61D67C(uint64_t a1, unint64_t a2)
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

  v6 = sub_23D61D898(v5, 0);
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

  result = sub_23D61F820();
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
        v10 = sub_23D61F780();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23D61D898(v10, 0);
        result = sub_23D61F800();
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

uint64_t sub_23D61D7AC(uint64_t result)
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

  result = sub_23D61D90C(result, v11, 1, v3);
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

void *sub_23D61D898(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DFA28, &qword_23D620038);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23D61D90C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DFA28, &qword_23D620038);
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

unint64_t sub_23D61DA00(uint64_t a1)
{
  sub_23D61F6D0();
  sub_23D61F390(&qword_27E2DFA08, MEMORY[0x277CC9600]);
  v2 = sub_23D61F730();

  return sub_23D61DAC8(a1, v2);
}

unint64_t sub_23D61DA84(uint64_t a1)
{
  v2 = sub_23D61F7D0();

  return sub_23D61DC74(a1, v2);
}

unint64_t sub_23D61DAC8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_23D61F6D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_23D61F390(&qword_27E2DFA10, MEMORY[0x277CC9610]);
      v15 = sub_23D61F740();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_23D61DC74(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23D61F308(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EEE5AB0](v9, a1);
      sub_23D61F258(v9);
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

uint64_t sub_23D61DD3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_23D61F6D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DFA00, &qword_23D620028);
  v38 = v4;
  result = sub_23D61F850();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v34 = v2;
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
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v38)
      {
        (*v39)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v35)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      sub_23D61F390(&qword_27E2DFA08, MEMORY[0x277CC9600]);
      result = sub_23D61F730();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v39)(*(v11 + 48) + v41 * v19, v42, v43);
      *(*(v11 + 56) + 16 * v19) = v40;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_23D61E100(int64_t a1, uint64_t a2)
{
  v40 = sub_23D61F6D0();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_23D61F7C0();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_23D61F390(&qword_27E2DFA08, MEMORY[0x277CC9600]);
      v23 = sub_23D61F730();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_23D61E408(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_23D61F6D0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_23D61DA00(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_23D61E6A4();
      goto LABEL_9;
    }

    sub_23D61DD3C(v18, a4 & 1);
    v21 = sub_23D61DA00(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_23D61F880();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_23D61E5E4(v15, v12, v23, a2, v24);
  }
}

uint64_t sub_23D61E5E4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_23D61F6D0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void *sub_23D61E6A4()
{
  v1 = v0;
  v30 = sub_23D61F6D0();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DFA00, &qword_23D620028);
  v3 = *v0;
  v4 = sub_23D61F840();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    for (i = v32 + 32; v12; result = )
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      v24(v23 + v19, v20, v21);
      *(*(v22 + 56) + v17) = v33;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

unint64_t sub_23D61E924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF9F8, &qword_23D620020);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DFA00, &qword_23D620028);
    v7 = sub_23D61F860();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23D61F424(v9, v5, &qword_27E2DF9F8, &qword_23D620020);
      result = sub_23D61DA00(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_23D61F6D0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_23D61EB0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DFA30, qword_23D620040);
    v3 = sub_23D61F860();
    v4 = a1 + 32;

    while (1)
    {
      sub_23D61F424(v4, v13, &qword_27E2DF908, &qword_23D61FF88);
      result = sub_23D61DA84(v13);
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
      result = sub_23D61F48C(&v15, (v3[7] + 32 * result));
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

uint64_t objectdestroy_2Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_22Tm()
{
  v1 = sub_23D61F6D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_23D61ED68(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(sub_23D61F6D0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + v7);
  v9 = (v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return a3(a2, v3 + v6, v8, v10, v11);
}

uint64_t sub_23D61EE28(uint64_t a1, uint64_t a2)
{
  if (a2 == 7)
  {
    v17 = OBJC_IVAR___AXMotionCuesService_movingHandlers;
    swift_beginAccess();
    v18 = *(v2 + v17);
    v19 = 1 << *(v18 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v18 + 64);
    v22 = (v19 + 63) >> 6;

    v23 = 0;
    if (!v21)
    {
      do
      {
LABEL_28:
        v28 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
          goto LABEL_40;
        }

        if (v28 >= v22)
        {
LABEL_37:

          return sub_23D61EB0C(MEMORY[0x277D84F90]);
        }

        v21 = *(v18 + 64 + 8 * v28);
        ++v23;
      }

      while (!v21);
      v23 = v28;
      if (a1)
      {
        goto LABEL_24;
      }

      goto LABEL_41;
    }

    while (1)
    {
      if (!a1)
      {
        goto LABEL_41;
      }

LABEL_24:
      v24 = *(*(v18 + 56) + ((v23 << 10) | (16 * __clz(__rbit64(v21)))));
      v30 = 0x676E69766F6DLL;
      v31 = 0xE600000000000000;

      sub_23D61F7F0();
      if (!*(a1 + 16))
      {
        break;
      }

      v25 = sub_23D61DA84(v29);
      if ((v26 & 1) == 0)
      {
        break;
      }

      sub_23D61F2AC(*(a1 + 56) + 32 * v25, &v30);
      sub_23D61F258(v29);
      if (!swift_dynamicCast())
      {
        goto LABEL_34;
      }

      v27 = v32;
LABEL_35:
      v21 &= v21 - 1;
      v29[0] = v27;
      v24(v29);

      if (!v21)
      {
        goto LABEL_28;
      }
    }

    sub_23D61F258(v29);
LABEL_34:
    v27 = 0;
    goto LABEL_35;
  }

  if (a2 != 6)
  {
    return sub_23D61EB0C(MEMORY[0x277D84F90]);
  }

  v4 = OBJC_IVAR___AXMotionCuesService_visibleHandlers;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      if (!a1)
      {
        goto LABEL_42;
      }

LABEL_7:
      v12 = *(*(v5 + 56) + ((v11 << 10) | (16 * __clz(__rbit64(v8)))));
      v30 = 0x656C6269736976;
      v31 = 0xE700000000000000;

      sub_23D61F7F0();
      if (!*(a1 + 16))
      {
        break;
      }

      v13 = sub_23D61DA84(v29);
      if ((v14 & 1) == 0)
      {
        break;
      }

      sub_23D61F2AC(*(a1 + 56) + 32 * v13, &v30);
      sub_23D61F258(v29);
      if (!swift_dynamicCast())
      {
        goto LABEL_17;
      }

      v15 = v32;
LABEL_18:
      v8 &= v8 - 1;
      v29[0] = v15;
      v12(v29);

      if (!v8)
      {
        goto LABEL_11;
      }
    }

    sub_23D61F258(v29);
LABEL_17:
    v15 = 0;
    goto LABEL_18;
  }

LABEL_11:
  while (1)
  {
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v16 >= v9)
    {
      goto LABEL_37;
    }

    v8 = *(v5 + 64 + 8 * v16);
    ++v11;
    if (v8)
    {
      v11 = v16;
      if (a1)
      {
        goto LABEL_7;
      }

      goto LABEL_42;
    }
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_23D61F1F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23D61F2AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23D61F390(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_23D61F6D0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
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

uint64_t sub_23D61F424(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_23D61F48C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_23D61F49C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_23D61F4A8()
{
  result = qword_27E2DFA38;
  if (!qword_27E2DFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DFA38);
  }

  return result;
}

uint64_t sub_23D61F4FC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23D61F50C(uint64_t result, uint64_t a2)
{
  if (result)
  {
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

uint64_t sub_23D61F58C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_23D61F5D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}