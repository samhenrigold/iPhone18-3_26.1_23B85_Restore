uint64_t sub_257C7837C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CA0, &qword_257EE7C00);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v6 = v32 - v5;
  v32[0] = sub_257ECCA10();
  v7 = *(v32[0] - 8);
  MEMORY[0x28223BE20](v32[0], v8, v9, v10, v11);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_257ECCD90();
  MEMORY[0x28223BE20](v14 - 8, v15, v16, v17, v18);
  v19 = sub_257ECF4B0();
  MEMORY[0x28223BE20](v19 - 8, v20, v21, v22, v23);
  v24 = sub_257ECCA30();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26, v27, v28, v29);
  v30 = sub_257ECC660();
  __swift_allocate_value_buffer(v30, qword_27F8F6BE8);
  __swift_project_value_buffer(v30, qword_27F8F6BE8);
  sub_257ECF460();
  sub_257ECCD80();
  (*(v7 + 104))(v13, *MEMORY[0x277CC9110], v32[0]);
  sub_257ECCA40();
  (*(v25 + 56))(v6, 1, 1, v24);
  return sub_257ECC650();
}

uint64_t static DetectionTypeEnum.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8F45D0 != -1)
  {
    swift_once();
  }

  v2 = sub_257ECC660();
  v3 = __swift_project_value_buffer(v2, qword_27F8F6BE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257C78700()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CD0, &unk_257EF19F0);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v67 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CA0, &qword_257EE7C00);
  MEMORY[0x28223BE20](v6 - 8, v7, v8, v9, v10);
  v83 = &v63 - v11;
  v81 = sub_257ECCA10();
  v12 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v13, v14, v15, v16);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_257ECCD90();
  MEMORY[0x28223BE20](v19 - 8, v20, v21, v22, v23);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_257ECF4B0();
  MEMORY[0x28223BE20](v26 - 8, v27, v28, v29, v30);
  v32 = &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_257ECCA30();
  v72 = v33;
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v35, v36, v37, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CD8, &unk_257EDEC10);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56F0, &qword_257EDA650);
  v84 = v39;
  v40 = *(v39 - 8);
  v76 = *(v40 + 72);
  v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v42 = swift_allocObject();
  v68 = v42;
  *(v42 + 16) = xmmword_257EDBE50;
  v66 = *(v39 + 48);
  *(v42 + v41) = 0;
  v43 = v42 + v41;
  sub_257ECF460();
  sub_257ECCD80();
  v82 = *MEMORY[0x277CC9110];
  v74 = *(v12 + 104);
  v75 = v12 + 104;
  v44 = v81;
  v74(v18);
  v45 = v18;
  sub_257ECCA40();
  v46 = *(v34 + 56);
  v73 = v34 + 56;
  v79 = v46;
  v46(v83, 1, 1, v33);
  v47 = v67;
  sub_257ECC560();
  v78 = sub_257ECC570();
  v48 = *(v78 - 8);
  v77 = *(v48 + 56);
  v71 = v48 + 56;
  v77(v47, 0, 1, v78);
  v80 = v43;
  sub_257ECC580();
  v49 = v76;
  v66 = *(v84 + 48);
  *(v43 + v76) = 1;
  v69 = v32;
  sub_257ECF460();
  v70 = v25;
  sub_257ECCD80();
  v63 = v45;
  v50 = v45;
  v51 = v74;
  (v74)(v50, v82, v44);
  sub_257ECCA40();
  v52 = v72;
  v79(v83, 1, 1, v72);
  sub_257ECC560();
  v77(v47, 0, 1, v78);
  sub_257ECC580();
  v66 = 2 * v49;
  v64 = (v80 + 2 * v49);
  v65 = *(v84 + 48);
  *v64 = 2;
  sub_257ECF460();
  sub_257ECCD80();
  v53 = v63;
  (v51)(v63, v82, v81);
  v54 = v53;
  sub_257ECCA40();
  v55 = v83;
  v56 = v52;
  v57 = v79;
  v79(v83, 1, 1, v56);
  sub_257ECC560();
  v58 = v77;
  v59 = v78;
  v77(v47, 0, 1, v78);
  sub_257ECC580();
  v60 = (v80 + v66 + v76);
  v76 = *(v84 + 48);
  *v60 = 3;
  sub_257ECF460();
  sub_257ECCD80();
  (v74)(v54, v82, v81);
  sub_257ECCA40();
  v57(v55, 1, 1, v72);
  sub_257ECC560();
  v58(v47, 0, 1, v59);
  sub_257ECC580();
  v61 = sub_257BE96FC(v68);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F8F6C00 = v61;
  return result;
}

uint64_t static DetectionTypeEnum.caseDisplayRepresentations.getter()
{
  if (qword_27F8F45D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

double static DetectionTypeEnum.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_27F8F45D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27F8F6C00 = a1;

  return result;
}

uint64_t (*static DetectionTypeEnum.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27F8F45D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_257C790C8@<X0>(void *a1@<X8>)
{
  if (qword_27F8F45D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27F8F6C00;
}

double sub_257C79148(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = qword_27F8F45D8;

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27F8F6C00 = v2;

  return result;
}

MagnifierSupport::DetectionTypeEnum_optional __swiftcall DetectionTypeEnum.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_257ED04B0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DetectionTypeEnum.rawValue.getter()
{
  v1 = 0x656C706F6570;
  v2 = 1954047348;
  if (*v0 != 2)
  {
    v2 = 0x727574696E727566;
  }

  if (*v0)
  {
    v1 = 0x73726F6F64;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_257C792B8()
{
  result = qword_27F8F6C08;
  if (!qword_27F8F6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C08);
  }

  return result;
}

uint64_t sub_257C7930C()
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

double sub_257C793C4(uint64_t a1)
{
  sub_257ECF5D0();

  return result;
}

uint64_t sub_257C79468(uint64_t a1)
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

void sub_257C79528(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x656C706F6570;
  v4 = 0xE400000000000000;
  v5 = 1954047348;
  if (*v1 != 2)
  {
    v5 = 0x727574696E727566;
    v4 = 0xE900000000000065;
  }

  if (*v1)
  {
    v3 = 0x73726F6F64;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_257C795A0()
{
  result = qword_27F8F6C10;
  if (!qword_27F8F6C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C10);
  }

  return result;
}

unint64_t sub_257C795F8()
{
  result = qword_27F8F6C18;
  if (!qword_27F8F6C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C18);
  }

  return result;
}

unint64_t sub_257C79650()
{
  result = qword_27F8F6C20;
  if (!qword_27F8F6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C20);
  }

  return result;
}

unint64_t sub_257C796B4()
{
  result = qword_27F8F6C28;
  if (!qword_27F8F6C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C28);
  }

  return result;
}

unint64_t sub_257C79708()
{
  result = qword_27F8F6C30;
  if (!qword_27F8F6C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C30);
  }

  return result;
}

unint64_t sub_257C7975C()
{
  result = qword_27F8F6C38;
  if (!qword_27F8F6C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C38);
  }

  return result;
}

unint64_t sub_257C797B4()
{
  result = qword_27F8F6C40;
  if (!qword_27F8F6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C40);
  }

  return result;
}

unint64_t sub_257C79894()
{
  result = qword_27F8F6C48;
  if (!qword_27F8F6C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C48);
  }

  return result;
}

uint64_t sub_257C798E8(uint64_t a1)
{
  v2 = sub_257C79894();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_257C79938()
{
  result = qword_27F8F6C50;
  if (!qword_27F8F6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C50);
  }

  return result;
}

unint64_t sub_257C79990()
{
  result = qword_27F8F6C58;
  if (!qword_27F8F6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C58);
  }

  return result;
}

unint64_t sub_257C799E8()
{
  result = qword_27F8F6C60;
  if (!qword_27F8F6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C60);
  }

  return result;
}

uint64_t sub_257C79A3C()
{
  if (qword_27F8F45D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_257C79AB4(uint64_t a1)
{
  v2 = sub_257C797B4();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_257C79B58()
{
  result = qword_27F8F6C78;
  if (!qword_27F8F6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C78);
  }

  return result;
}

unint64_t sub_257C79BB0()
{
  result = qword_27F8F6C80;
  if (!qword_27F8F6C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C80);
  }

  return result;
}

uint64_t sub_257C79C3C()
{
  v0 = sub_257ECCA30();
  __swift_allocate_value_buffer(v0, qword_27F912F20);
  __swift_project_value_buffer(v0, qword_27F912F20);
  return sub_257ECCA00();
}

uint64_t sub_257C79CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = sub_257ECDA30();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  sub_257ECF900();
  v4[18] = sub_257ECF8F0();
  v7 = sub_257ECF8B0();
  v4[19] = v7;
  v4[20] = v6;

  return MEMORY[0x2822009F8](sub_257C79DB8, v7, v6);
}

uint64_t sub_257C79DB8()
{
  sub_257ECC360();
  if (*(v0 + 33) > 1u)
  {
    if (*(v0 + 33) == 2)
    {
      if (qword_27F8F4770 != -1)
      {
        swift_once();
      }

      *(v0 + 40) = xmmword_257EDA120;
      v1 = v0 + 40;
      *(v0 + 56) = 7;
      v2 = swift_task_alloc();
      *(v0 + 200) = v2;
      *v2 = v0;
      v3 = sub_257C7A348;
    }

    else
    {
      if (qword_27F8F4770 != -1)
      {
        swift_once();
      }

      *(v0 + 16) = xmmword_257EDE760;
      v1 = v0 + 16;
      *(v0 + 32) = 7;
      v2 = swift_task_alloc();
      *(v0 + 216) = v2;
      *v2 = v0;
      v3 = sub_257C7A488;
    }
  }

  else if (*(v0 + 33))
  {
    if (qword_27F8F4770 != -1)
    {
      swift_once();
    }

    *(v0 + 64) = xmmword_257EDE770;
    v1 = v0 + 64;
    *(v0 + 80) = 7;
    v2 = swift_task_alloc();
    *(v0 + 184) = v2;
    *v2 = v0;
    v3 = sub_257C7A208;
  }

  else
  {
    if (qword_27F8F4770 != -1)
    {
      swift_once();
    }

    *(v0 + 88) = xmmword_257EDE780;
    v1 = v0 + 88;
    *(v0 + 104) = 7;
    v2 = swift_task_alloc();
    *(v0 + 168) = v2;
    *v2 = v0;
    v3 = sub_257C7A060;
  }

  v2[1] = v3;

  return MAGActionHandler.send(_:)(v1);
}

uint64_t sub_257C7A060()
{
  v2 = *v1;
  *(v2 + 176) = v0;

  sub_257C6DA74(*(v2 + 88), *(v2 + 96), *(v2 + 104));
  v3 = *(v2 + 152);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_257C7A5C8;
  }

  else
  {
    v5 = sub_257C7A1A0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257C7A1A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C7A208()
{
  v2 = *v1;
  *(v2 + 192) = v0;

  sub_257C6DA74(*(v2 + 64), *(v2 + 72), *(v2 + 80));
  v3 = *(v2 + 152);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_257C7A744;
  }

  else
  {
    v5 = sub_257C7B80C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257C7A348()
{
  v2 = *v1;
  *(v2 + 208) = v0;

  sub_257C6DA74(*(v2 + 40), *(v2 + 48), *(v2 + 56));
  v3 = *(v2 + 152);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_257C7A8C0;
  }

  else
  {
    v5 = sub_257C7B80C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257C7A488()
{
  v2 = *v1;
  *(v2 + 224) = v0;

  sub_257C6DA74(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  v3 = *(v2 + 152);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_257C7AA3C;
  }

  else
  {
    v5 = sub_257C7B80C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257C7A5C8()
{

  v1 = v0[22];
  sub_257ECD3A0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete StartDetectionTypeIntent: %@", v5, 0xCu);
    sub_257C11B14(v6);
    MEMORY[0x259C74820](v6, -1, -1);
    MEMORY[0x259C74820](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[16] + 8))(v0[17], v0[15]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_257C7A744()
{

  v1 = v0[24];
  sub_257ECD3A0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete StartDetectionTypeIntent: %@", v5, 0xCu);
    sub_257C11B14(v6);
    MEMORY[0x259C74820](v6, -1, -1);
    MEMORY[0x259C74820](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[16] + 8))(v0[17], v0[15]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_257C7A8C0()
{

  v1 = v0[26];
  sub_257ECD3A0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete StartDetectionTypeIntent: %@", v5, 0xCu);
    sub_257C11B14(v6);
    MEMORY[0x259C74820](v6, -1, -1);
    MEMORY[0x259C74820](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[16] + 8))(v0[17], v0[15]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_257C7AA3C()
{

  v1 = v0[28];
  sub_257ECD3A0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete StartDetectionTypeIntent: %@", v5, 0xCu);
    sub_257C11B14(v6);
    MEMORY[0x259C74820](v6, -1, -1);
    MEMORY[0x259C74820](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[16] + 8))(v0[17], v0[15]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_257C7ABF0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_257C7AC98(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CB8, &qword_257EDEBC8);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CC0, &qword_257EDEBD0);
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  sub_257ECC5F0();
  sub_257ECC5E0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CC8, &unk_257EDEC00);
  sub_257ECC5D0();

  sub_257ECC5E0();
  sub_257ECC600();
  return sub_257ECC5C0();
}

uint64_t sub_257C7AE3C(uint64_t a1)
{
  v2[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  v3 = swift_task_alloc();
  v4 = *v1;
  v2[3] = v3;
  v2[4] = v4;
  v2[5] = sub_257ECF900();
  v2[6] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257C7AF14, v6, v5);
}

uint64_t sub_257C7AF14()
{
  v1 = v0[3];
  v2 = v0[4];

  v3 = sub_257ECF930();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_257ECC3F0();
  v4 = sub_257ECF8F0();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = v2;
  sub_257C3FBD4(0, 0, v1, &unk_257EDEBB8, v5);

  sub_257ECC350();

  v7 = v0[1];

  return v7();
}

uint64_t sub_257C7B038@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257C7B0BC();
  *a1 = result;
  return result;
}

uint64_t sub_257C7B060(uint64_t a1)
{
  v2 = sub_257C7B704();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_257C7B0BC()
{
  v37 = sub_257ECC610();
  v0 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v1, v2, v3, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6C98, &unk_257EDEB90);
  MEMORY[0x28223BE20](v7 - 8, v8, v9, v10, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v20 = &v37 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CA0, &qword_257EE7C00);
  MEMORY[0x28223BE20](v21 - 8, v22, v23, v24, v25);
  v27 = &v37 - v26;
  v28 = sub_257ECCA30();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30, v31, v32, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CA8, &unk_257EDEBA0);
  sub_257ECCA00();
  (*(v29 + 56))(v27, 1, 1, v28);
  v38 = 4;
  v34 = sub_257ECC340();
  v35 = *(*(v34 - 8) + 56);
  v35(v20, 1, 1, v34);
  v35(v13, 1, 1, v34);
  (*(v0 + 104))(v6, *MEMORY[0x277CBA308], v37);
  sub_257C79894();
  return sub_257ECC390();
}

uint64_t sub_257C7B3C8(unsigned __int8 *a1)
{
  v42 = sub_257ECC610();
  v2 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v3, v4, v5, v6);
  v8 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6C98, &unk_257EDEB90);
  MEMORY[0x28223BE20](v9 - 8, v10, v11, v12, v13);
  v15 = &v40[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v22 = &v40[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CA0, &qword_257EE7C00);
  MEMORY[0x28223BE20](v23 - 8, v24, v25, v26, v27);
  v29 = &v40[-v28];
  v30 = sub_257ECCA30();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v32, v33, v34, v35);
  v41 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CA8, &unk_257EDEBA0);
  sub_257ECCA00();
  (*(v31 + 56))(v29, 1, 1, v30);
  v44 = 4;
  v36 = sub_257ECC340();
  v37 = *(*(v36 - 8) + 56);
  v37(v22, 1, 1, v36);
  v37(v15, 1, 1, v36);
  (*(v2 + 104))(v8, *MEMORY[0x277CBA308], v42);
  sub_257C79894();
  v38 = sub_257ECC390();
  v43 = v41;
  sub_257ECC3F0();
  sub_257ECC370();

  return v38;
}

unint64_t sub_257C7B704()
{
  result = qword_27F8F6CB0;
  if (!qword_27F8F6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6CB0);
  }

  return result;
}

uint64_t sub_257C7B758(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257BE3DE0;

  return sub_257C79CC4(a1, v4, v5, v6);
}

void sub_257C7BA74()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v32 == 1)
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    v10 = sub_257ECF4C0();
    v11 = sub_257ECF4C0();
    v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

    if (!v12)
    {
      sub_257ECF500();
      v12 = sub_257ECF4C0();
    }

    UIAccessibilitySpeak();

    sub_257ECD440();
    v13 = sub_257ECDA20();
    v14 = sub_257ECFBD0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      _os_log_impl(&dword_257BAC000, v13, v14, "Setting detectionModeOn to %{BOOL}d", v15, 8u);
      MEMORY[0x259C74820](v15, -1, -1);
    }

    (*(v1 + 8))(v7, v0);
    swift_getKeyPath();
    swift_getKeyPath();
    v29[10] = 0;
    sub_257ECC3F0();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v31 == 1)
    {
      type metadata accessor for MAGUtilities();
      v16 = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass_];
      v18 = sub_257ECF4C0();
      v19 = sub_257ECF4C0();
      v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

      if (!v20)
      {
        sub_257ECF500();
        v20 = sub_257ECF4C0();
      }

      v21 = *MEMORY[0x277D74010];
      v22 = AXAttributedStringForBetterPronuciation();

      if (!v22)
      {
        __break(1u);
        return;
      }

      UIAccessibilitySpeak();

      swift_getKeyPath();
      swift_getKeyPath();
      v29[11] = 0;
      sub_257ECC3F0();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v30 && v30 == 1)
      {
      }

      else
      {
        v23 = sub_257ED0640();

        if ((v23 & 1) == 0)
        {
          return;
        }
      }

      type metadata accessor for MAGUtilities();
      v24 = swift_getObjCClassFromMetadata();
      v25 = [objc_opt_self() bundleForClass_];
      v26 = sub_257ECF4C0();
      v27 = sub_257ECF4C0();
      v28 = [v25 localizedStringForKey:v26 value:0 table:v27];

      if (!v28)
      {
        sub_257ECF500();
        v28 = sub_257ECF4C0();
      }

      UIAccessibilitySpeak();

      swift_getKeyPath();
      swift_getKeyPath();
      v29[12] = 0;
      sub_257ECC3F0();
    }
  }

  sub_257ECDD70();
}

unint64_t sub_257C7C0F8()
{
  result = qword_281543E30;
  if (!qword_281543E30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281543E30);
  }

  return result;
}

void sub_257C7C144(void *a1)
{
  v2 = type metadata accessor for DetectedTextBlock(0);
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v23 = &v22 - v14;
  v15 = a1[2];
  if (v15 < 2)
  {
    return;
  }

  v16 = 0;
  v17 = v15 >> 1;
  for (i = v15 - 1; ; --i)
  {
    if (v16 == i)
    {
      goto LABEL_5;
    }

    v19 = a1[2];
    if (v16 >= v19)
    {
      break;
    }

    v20 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v21 = *(v22 + 72);
    sub_257C7E2F0(a1 + v20 + v21 * v16, v23);
    if (i >= v19)
    {
      goto LABEL_14;
    }

    sub_257C7E2F0(a1 + v20 + v21 * i, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_257C7DEEC(a1);
    }

    sub_257C7E354(v8, a1 + v20 + v21 * v16);
    if (i >= a1[2])
    {
      goto LABEL_15;
    }

    sub_257C7E354(v23, a1 + v20 + v21 * i);
LABEL_5:
    if (v17 == ++v16)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_257C7C2F4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  if (v3 < 2)
  {
    return;
  }

  v4 = 0;
  v5 = 0;
  v6 = v3 >> 1;
  v7 = v3 - 1;
  for (i = 16 * v3 + 24; ; i -= 16)
  {
    if (v5 == v7)
    {
      goto LABEL_5;
    }

    v10 = *(v2 + 2);
    if (v5 >= v10)
    {
      break;
    }

    if (v7 >= v10)
    {
      goto LABEL_14;
    }

    v12 = *&v2[v4 + 32];
    v11 = *&v2[v4 + 40];
    v14 = *&v2[i - 8];
    v13 = *&v2[i];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_257C7DF28(v2);
    }

    v15 = &v2[v4];
    *(v15 + 4) = v14;
    *(v15 + 5) = v13;

    if (v7 >= *(v2 + 2))
    {
      goto LABEL_15;
    }

    v9 = &v2[i];
    *(v9 - 1) = v12;
    *v9 = v11;

LABEL_5:
    ++v5;
    --v7;
    v4 += 16;
    if (v6 == v5)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

unint64_t sub_257C7C40C(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_257ED0210();
    if (v19)
    {
      v20 = v19;
      v1 = sub_257C69A4C();
      sub_257EB4BE8(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_257ED0210();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x259C72E20]();
          v11 = MEMORY[0x259C72E20](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_257C7DF3C(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_257C7DF3C(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

void sub_257C7C61C()
{
  v0 = sub_257ECF120();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v8 = qword_281548348;
  swift_beginAccess();
  v9 = v8[11];
  v10 = v8[12];
  v170 = v8;
  v11 = v8[13];
  v176[0] = v9;
  v176[1] = v10;
  v176[2] = v11;
  v12 = qword_2815447E0;

  if (v12 != -1)
  {
    v13 = swift_once();
  }

  v18 = qword_2815447E8;
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
  v171 = v18;
  sub_257ECFD50();

  v20 = v175[0];
  v21 = *(v175[0] + 16);
  if (v21)
  {
    v22 = sub_257C63CC4(*(v175[0] + 16), 0, v19);
    v23 = sub_257C67A48(v176, v22 + 4, v21, v20);
    sub_257C02520(v176[0]);
    if (v23 == v21)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v22 = MEMORY[0x277D84F90];
LABEL_9:
  v176[0] = v22;
  sub_257ECC3F0();
  sub_257C63C58(v176);
  v24 = v170;

  v26 = v176[0];
  if (!*(v176[0] + 2))
  {
    swift_beginAccess();
    v175[1] = 0;
    v175[0] = 0;
    v27 = sub_257ECF110();
    MEMORY[0x28223BE20](v27, v28, v29, v30, v31);
    sub_257ECFD40();
    (*(v1 + 8))(v7, v0);
    swift_endAccess();
  }

  sub_257C7C2F4(v26, v25);
  v33 = v32;
  v177 = MEMORY[0x277D84F90];
  v34 = *(v32 + 16);
  v161 = v34;
  if (v34)
  {
    v165 = objc_opt_self();
    v164 = sub_257BD2C2C(0, &unk_281543D90, 0x277D750C8);
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v35 = objc_opt_self();
    v162 = v35;
    v168 = v34 - 1;
    v160 = v33;
    for (i = (v33 + 40); ; i = v167 + 2)
    {
      v41 = *(i - 1);
      v42 = *i;
      v167 = i;
      v43 = v24[12];
      v44 = v24[13];
      v176[0] = v24[11];
      v176[1] = v43;
      v176[2] = v44;
      MEMORY[0x28223BE20](v35, v36, v37, v38, v39);

      sub_257ECFD50();

      v45 = v175[0];
      if (*(v175[0] + 16) && (v46 = sub_257C03F6C(v41, v42), (v47 & 1) != 0))
      {
        v48 = (*(v45 + 56) + 296 * v46);
        memcpy(v175, v48, sizeof(v175));
        memmove(v176, v48, 0x128uLL);
        sub_257C09C58(v175, v174);

        CGSizeMake();
      }

      else
      {

        sub_257C10998(v175);
        memcpy(v176, v175, sizeof(v176));
      }

      memcpy(v175, v176, sizeof(v175));
      if (sub_257C108C4(v175) == 1)
      {
        memcpy(v173, v176, sizeof(v173));
        sub_257C109C8(v173);
        sub_257D54F8C(v172);
        memcpy(v174, v172, sizeof(v174));

        sub_257C63C04(v174);
      }

      else
      {
        memcpy(v174, v176, sizeof(v174));

        sub_257C109C8(v174);
      }

      v49 = sub_257ECF4C0();

      v50 = [v165 systemImageNamed_];

      v51 = v162;
      v52 = [v162 bundleForClass_];
      v53 = sub_257ECF4C0();
      v54 = sub_257ECF4C0();
      v55 = [v52 localizedStringForKey:v53 value:0 table:v54];

      sub_257ECF500();
      v56 = [v51 mainBundle];
      sub_257ECC900();

      v57 = swift_allocObject();
      v58 = v166;
      v57[2] = v166;
      v57[3] = v41;
      v57[4] = v42;

      v59 = v50;
      v60 = v58;
      v61 = sub_257ECFF90();
      v62 = v170[12];
      v63 = v170[13];
      v174[0] = v170[11];
      v174[1] = v62;
      v174[2] = v63;
      MEMORY[0x28223BE20](v61, v64, v65, v66, v67);

      sub_257ECFD50();

      v68 = v173[0];
      if (*(v173[0] + 16))
      {
        v69 = sub_257C03F6C(v41, v42);
        v71 = v70;

        if (v71)
        {
          v72 = (*(v68 + 56) + 296 * v69);
          memcpy(v173, v72, sizeof(v173));
          memmove(v174, v72, 0x128uLL);
          sub_257C09C58(v173, v172);

          CGSizeMake();
          goto LABEL_25;
        }
      }

      else
      {
      }

      sub_257C10998(v173);
      memcpy(v174, v173, sizeof(v174));
LABEL_25:
      v24 = v170;
      memcpy(v173, v174, sizeof(v173));
      if (sub_257C108C4(v173) == 1)
      {
        memcpy(v172, v174, sizeof(v172));
        sub_257C109C8(v172);
        v73 = 0;
      }

      else
      {
        v73 = LOBYTE(v174[0]);
        memcpy(v172, v174, sizeof(v172));
        sub_257C109C8(v172);
      }

      [v61 setState_];
      v74 = v61;
      MEMORY[0x259C72300]();
      if (*((v177 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_257ECF830();
      }

      sub_257ECF860();

      if (!v168)
      {
        v75 = v177;

        goto LABEL_34;
      }

      --v168;
    }
  }

  v75 = MEMORY[0x277D84F90];
LABEL_34:
  v167 = v75;
  if (v75 >> 62)
  {
    sub_257BD2C2C(0, &unk_281543F80, 0x277D75720);

    sub_257ED0420();
  }

  else
  {

    sub_257ED0660();
    sub_257BD2C2C(0, &unk_281543F80, 0x277D75720);
  }

  v168 = sub_257BD2C2C(0, qword_281543E10, 0x277D75710);
  v169 = sub_257ECFEA0();
  v76 = sub_257ECF4C0();
  v159 = objc_opt_self();
  v77 = [v159 systemImageNamed_];

  v78 = sub_257BD2C2C(0, &unk_281543D90, 0x277D750C8);
  type metadata accessor for MAGUtilities();
  v79 = swift_getObjCClassFromMetadata();
  v162 = objc_opt_self();
  ObjCClassFromMetadata = v79;
  v80 = [v162 bundleForClass_];
  v81 = sub_257ECF4C0();
  v82 = sub_257ECF4C0();
  v83 = [v80 localizedStringForKey:v81 value:0 table:v82];

  sub_257ECF500();
  v84 = swift_allocObject();
  v85 = v166;
  *(v84 + 16) = v166;
  v86 = v85;
  v87 = v77;
  v160 = v78;
  v88 = sub_257ECFF90();
  v89 = v88;
  if (!v161)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
    v109 = swift_allocObject();
    *(v109 + 16) = xmmword_257ED9BF0;
    *(v109 + 32) = v89;
    v110 = v89;
    v111 = sub_257ECFEA0();
    v112 = sub_257D83270();
    [v112 setMenu_];
    v113 = v86;
    v108 = v87;
    v114 = v169;
    goto LABEL_52;
  }

  v164 = v88;
  v165 = v86;
  v166 = v87;
  v90 = swift_beginAccess();
  v91 = v24[16];
  v92 = v24[17];
  v93 = v24[18];
  v176[0] = v24[15];
  v176[1] = v91;
  v176[2] = v92;
  v176[3] = v93;
  MEMORY[0x28223BE20](v90, v94, v95, v96, v97);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
  sub_257ECFD50();

  v98 = v174[1];
  if (!v174[1])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
    v115 = swift_allocObject();
    *(v115 + 16) = xmmword_257ED9BE0;
    v89 = v164;
    v114 = v169;
    *(v115 + 32) = v164;
    *(v115 + 40) = v114;
    v116 = v89;
    v117 = v114;
    v111 = sub_257ECFEA0();
    v113 = v165;
    v112 = sub_257D83270();
    [v112 setMenu_];
    v108 = v166;
    goto LABEL_52;
  }

  v99 = v174[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (LOBYTE(v176[0]) != 1)
  {
    v108 = v166;
    goto LABEL_46;
  }

  v161 = v99;
  v158 = v98;
  v105 = v24[16];
  v106 = v24[17];
  v107 = v24[18];
  v176[0] = v24[15];
  v176[1] = v105;
  v176[2] = v106;
  v176[3] = v107;
  MEMORY[0x28223BE20](v100, v101, v102, v103, v104);

  sub_257ECFD50();

  v108 = v166;
  if (v174[1])
  {
    if (v174[0] == 0xD000000000000010 && v174[1] == 0x8000000257EFBEB0)
    {

      v24 = v170;
LABEL_46:
      v89 = v164;
      v113 = v165;

LABEL_47:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_257ED9BE0;
      v114 = v169;
      *(v118 + 32) = v89;
      *(v118 + 40) = v114;
      v119 = v89;
      v120 = v114;
      v111 = sub_257ECFEA0();
      v112 = sub_257D83270();
      [v112 setMenu_];
      goto LABEL_52;
    }

    v121 = sub_257ED0640();

    if (v121)
    {
      v24 = v170;
      v89 = v164;
      v113 = v165;
      goto LABEL_47;
    }
  }

  else
  {
  }

  v122 = sub_257ECF4C0();
  v167 = [v159 systemImageNamed_];

  v123 = [v162 bundleForClass_];
  v124 = sub_257ECF4C0();
  v125 = sub_257ECF4C0();
  v126 = [v123 localizedStringForKey:v124 value:0 table:v125];

  sub_257ECF500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_257ED6D30;
  v128 = [v162 bundleForClass_];
  v129 = v158;
  v130 = sub_257ECF4C0();
  v131 = sub_257ECF4C0();
  v132 = [v128 localizedStringForKey:v130 value:0 table:v131];

  v133 = sub_257ECF500();
  v135 = v134;

  *(v127 + 56) = MEMORY[0x277D837D0];
  *(v127 + 64) = sub_257BFB13C();
  *(v127 + 32) = v133;
  *(v127 + 40) = v135;
  sub_257ECF540();

  v136 = swift_allocObject();
  v137 = v165;
  v138 = v161;
  v136[2] = v165;
  v136[3] = v138;
  v136[4] = v129;
  v139 = v137;
  v140 = v167;
  v141 = sub_257ECFF90();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v142 = swift_allocObject();
  *(v142 + 16) = xmmword_257EDED10;
  v89 = v164;
  *(v142 + 32) = v164;
  *(v142 + 40) = v141;
  v143 = v169;
  *(v142 + 48) = v169;
  v144 = v89;
  v167 = v141;
  v145 = v143;
  v111 = sub_257ECFEA0();
  v113 = v137;
  v108 = v166;
  v112 = sub_257D83270();
  [v112 setMenu_];

  v114 = v143;
  v24 = v170;
LABEL_52:

  v146 = v24 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__activityInstructionsDisplayed;
  v147 = swift_beginAccess();
  v148 = *(v146 + 1);
  v149 = v146[16];
  v174[0] = *v146;
  v174[1] = v148;
  LOBYTE(v174[2]) = v149;
  MEMORY[0x28223BE20](v147, v150, v151, v152, v153);

  sub_257ECFD50();

  v154 = LOBYTE(v173[0]);
  v155 = sub_257D83270();
  v156 = v155;
  if (v154 == 1)
  {
    [v155 setShowsMenuAsPrimaryAction_];
  }

  else
  {
    [v155 addTarget:v113 action:sel_didTapActivitiesButton_ forControlEvents:64];
  }

  sub_257D832D0();
}

double sub_257C7DAA8(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = a4;
    v8[4] = v7;

    sub_257ECC3F0();
    sub_257D61CE8(a3, a4, 0, sub_257C7E064, v8);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_257C7DBE4(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_257DF6348();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_257C7DC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_257DF6A74(a3, a4);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_257C7DD1C(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a2 = v3;
}

uint64_t sub_257C7DD9C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257C7DF3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_257ED0210();
  }

  return sub_257ED0310();
}

uint64_t sub_257C7DFC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_257D13000(*a1, a1[1], a1[2], a1[3]);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_257C7E070()
{
  v1 = sub_257ECF120();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  v10 = objc_allocWithZone(type metadata accessor for ActivityOnboardingViewController());
  v11 = v0;
  v12 = sub_257C32C80(sub_257C7E2D8, v9);
  v13 = [v11 navigationController];
  if (v13)
  {
    v14 = v13;
    [v13 presentViewController:v12 animated:1 completion:0];
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v15 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__activityInstructionsDisplayed;
  swift_beginAccess();
  v22 = 1;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v16 = sub_257ECF110();
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  *&v21[-16] = &v22;
  *&v21[-8] = v15;
  sub_257ECFD40();
  (*(v2 + 8))(v8, v1);
  swift_endAccess();
}

uint64_t sub_257C7E2F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedTextBlock(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257C7E354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedTextBlock(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_257C7E3BC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MagnifierSupport8MFSlider_trackColor;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.7 alpha:1.0];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport8MFSlider_extraTouchInset] = 0xC020000000000000;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_257ED9BF0;
  if ((a1 & 0x100000000) != 0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = *&a1;
  }

  v8 = objc_allocWithZone(MEMORY[0x277D76258]);
  v9 = v5;
  *&v10 = v7;
  *(v6 + 32) = [v8 initWithPosition:0 title:0 image:v10];
  v11 = objc_allocWithZone(MEMORY[0x277D76250]);
  sub_257C7EE4C();
  v12 = sub_257ECF7F0();

  v13 = [v11 initWithTicks:v12 behavior:2];

  [v9 _setSliderConfiguration_];
  sub_257C7E558();

  return v9;
}

void sub_257C7E558()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = objc_opt_self();
  v24 = [v4 imageNamed:v3 inBundle:v2];

  if (v24)
  {
    v5 = [v24 CGImage];
    if (v5)
    {

      v6 = [v24 CGImage];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      [v24 scale];
      v9 = v8 * 1.1;
      v10 = [v24 imageOrientation];
      v11 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v7 scale:v10 orientation:v9];

      v12 = v11;
      [v0 setThumbImage:v12 forState:0];
      [v0 setThumbImage:v12 forState:4];
      [v0 setThumbImage:v12 forState:1];

      v13 = sub_257ECF4C0();
      v14 = [v4 systemImageNamed_];

      if (v14)
      {
        v15 = [objc_opt_self() configurationWithPointSize:5 weight:2 scale:25.0];
        v16 = [v14 imageByApplyingSymbolConfiguration_];
      }

      else
      {
        v16 = 0;
      }

      [v0 setMinimumValueImage_];

      v18 = sub_257ECF4C0();
      v19 = [v4 systemImageNamed_];

      if (v19)
      {
        v20 = [objc_opt_self() configurationWithPointSize:5 weight:2 scale:25.0];
        v21 = [v19 imageByApplyingSymbolConfiguration_];
      }

      else
      {
        v21 = 0;
      }

      [v0 setMaximumValueImage_];

      v22 = *&v0[OBJC_IVAR____TtC16MagnifierSupport8MFSlider_trackColor];
      [v0 setMinimumTrackTintColor_];
      [v0 setMaximumTrackTintColor_];
      v23 = [objc_opt_self() whiteColor];
      [v0 setTintColor_];

      v17 = v23;
    }

    else
    {
      v17 = v24;
    }
  }
}

uint64_t sub_257C7EA44(void *a1)
{
  [a1 locationInView_];
  v48 = v3;
  v49 = v2;
  [v1 bounds];
  [v1 minimumValueImageRectForBounds_];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v1 bounds];
  [v1 maximumValueImageRectForBounds_];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v53.origin.x = v5;
  v53.origin.y = v7;
  v47 = v9;
  v53.size.width = v9;
  v53.size.height = v11;
  v54 = CGRectInset(v53, -8.0, -8.0);
  x = v54.origin.x;
  y = v54.origin.y;
  width = v54.size.width;
  height = v54.size.height;
  v54.origin.x = v13;
  v54.origin.y = v15;
  v46 = v17;
  v54.size.width = v17;
  v54.size.height = v19;
  v55 = CGRectInset(v54, -8.0, -8.0);
  v24 = v55.origin.x;
  v25 = v55.origin.y;
  v26 = v55.size.width;
  v27 = v55.size.height;
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  v50.x = v49;
  v50.y = v48;
  if (CGRectContainsPoint(v55, v50))
  {
    return 3;
  }

  v56.origin.x = v24;
  v56.origin.y = v25;
  v56.size.width = v26;
  v56.size.height = v27;
  v51.x = v49;
  v51.y = v48;
  if (CGRectContainsPoint(v56, v51))
  {
    return 4;
  }

  [v1 bounds];
  v58 = CGRectInset(v57, 0.0, -8.0);
  v52.x = v49;
  v52.y = v48;
  result = CGRectContainsPoint(v58, v52);
  if (result)
  {
    [v1 bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33 - (v47 + v46);
    v36 = v47 + v35;
    [v1 value];
    v38 = v37;
    [v1 minimumValue];
    v40 = v38 - v39;
    [v1 maximumValue];
    v42 = v41;
    [v1 minimumValue];
    v44 = v34 * (v40 / (v42 - v43));
    if ([v1 effectiveUserInterfaceLayoutDirection] == 1)
    {
      v59.origin.x = v36;
      v59.origin.y = v30;
      v59.size.width = v34;
      v59.size.height = v32;
      v45 = CGRectGetMaxX(v59) - v44;
    }

    else
    {
      v45 = v36 + v44;
    }

    if (CGFAbs(v45 - v49) > 40.0)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t sub_257C7EE4C()
{
  result = qword_27F8F6CF8;
  if (!qword_27F8F6CF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F6CF8);
  }

  return result;
}

BOOL sub_257C7EE98(void *a1)
{
  v2 = sub_257C7EA44(a1);
  if (v2 <= 2)
  {
    return v2 >= 2;
  }

  if (v2 == 3)
  {
    [v1 value];
    v5 = roundf(v4 * 10.0) / 10.0;
    [v1 maximumValue];
    v7 = v6;
    [v1 minimumValue];
    v9 = v5 + ((v7 - v8) * -0.1);
    [v1 minimumValue];
    if (v9 > *&v10)
    {
      *&v10 = v9;
    }
  }

  else
  {
    [v1 value];
    v12 = roundf(v11 * 10.0) / 10.0;
    [v1 maximumValue];
    v14 = v13;
    [v1 minimumValue];
    v16 = v12 + ((v14 - v15) * 0.1);
    [v1 maximumValue];
    if (*&v10 >= v16)
    {
      *&v10 = v16;
    }
  }

  [v1 setValue:1 animated:v10];
  [v1 sendActionsForControlEvents_];
  return 0;
}

void sub_257C7EFF8(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_primaryButtonRow) + OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons);
  v4 = *(*(v2 + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow) + OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons);
  v5 = *(v3 + 16);
  v6 = *(MEMORY[0x277D84F90] + 16);
  v7 = v6 + v5;
  v8 = __OFADD__(v6, v5);

  if (v8)
  {
    goto LABEL_32;
  }

  v9 = MEMORY[0x277D84F90];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v7 <= v9[3] >> 1)
  {
    if (*(v3 + 16))
    {
LABEL_8:
      if ((v9[3] >> 1) - v9[2] < v5)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FBBC0, &unk_257EDB120);
      swift_arrayInitWithCopy();

      v11 = v9[2];
      if (v5)
      {
        v12 = __OFADD__(v11, v5);
        v11 += v5;
        if (v12)
        {
          goto LABEL_35;
        }

        v9[2] = v11;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (v6 <= v7)
    {
      v13 = v6 + v5;
    }

    else
    {
      v13 = v6;
    }

    v9 = sub_257BFD91C(isUniquelyReferenced_nonNull_native, v13, 1, MEMORY[0x277D84F90]);
    if (*(v3 + 16))
    {
      goto LABEL_8;
    }
  }

  if (v5)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v11 = v9[2];
LABEL_18:
  v14 = *(v4 + 16);
  v15 = v11 + v14;
  if (__OFADD__(v11, v14))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v16 = swift_isUniquelyReferenced_nonNull_native();
  if (v16 && v15 <= v9[3] >> 1)
  {
    if (*(v4 + 16))
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  if (v11 <= v15)
  {
    v19 = v11 + v14;
  }

  else
  {
    v19 = v11;
  }

  v9 = sub_257BFD91C(v16, v19, 1, v9);
  if (!*(v4 + 16))
  {
LABEL_30:

    if (!v14)
    {
      goto LABEL_31;
    }

    goto LABEL_33;
  }

LABEL_22:
  if ((v9[3] >> 1) - v9[2] < v14)
  {
    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FBBC0, &unk_257EDB120);
  swift_arrayInitWithCopy();

  if (!v14)
  {
LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D18, &unk_257EDEDC0);
    swift_arrayDestroy();
    sub_257EB7770(v9);

    return;
  }

  v17 = v9[2];
  v12 = __OFADD__(v17, v14);
  v18 = v17 + v14;
  if (!v12)
  {
    v9[2] = v18;
    goto LABEL_31;
  }

LABEL_35:
  __break(1u);
}

char *sub_257C7F260(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
  *&v5[v11] = sub_257BE98E4(MEMORY[0x277D84F90]);
  v12 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_primaryButtonRow;
  v13 = type metadata accessor for UnifiedButtonRow();
  v14 = objc_allocWithZone(v13);
  *&v5[v12] = sub_257E8A7CC(0);
  v15 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow;
  v16 = objc_allocWithZone(v13);
  *&v5[v15] = sub_257E8A7CC(1);
  v20.receiver = v5;
  v20.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  sub_257C7F820();
  sub_257C7F9D0(0);
  [v17 addSubview_];
  [v17 addSubview_];
  sub_257C7F3E4();
  v18 = [objc_opt_self() defaultCenter];
  [v18 addObserver:v17 selector:sel_deviceOrientationDidChange_ name:*MEMORY[0x277D76878] object:0];

  return v17;
}

void sub_257C7F3E4()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow] setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_primaryButtonRow];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257EDED80;
  v5 = [v2 topAnchor];
  v6 = [v0 topAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v2 leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:0.0];

  *(v4 + 40) = v10;
  v11 = [v2 trailingAnchor];
  v12 = [v0 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-0.0];

  *(v4 + 48) = v13;
  v14 = [*&v0[v1] leadingAnchor];
  v15 = [v0 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:0.0];

  *(v4 + 56) = v16;
  v17 = [*&v0[v1] trailingAnchor];
  v18 = [v0 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-0.0];

  *(v4 + 64) = v19;
  v20 = [*&v0[v1] bottomAnchor];
  v21 = [v0 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v4 + 72) = v22;
  sub_257C80FFC();
  v23 = sub_257ECF7F0();

  [v3 activateConstraints_];
}

void sub_257C7F820()
{
  v1 = sub_257BE98E4(MEMORY[0x277D84F90]);
  v2 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
  swift_beginAccess();
  *(v0 + v2) = v1;

  v3 = byte_2869037B0;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037B1;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037B2;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037B3;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037B4;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037B5;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037B6;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037B7;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037B8;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037B9;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037BA;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037BB;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037BC;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037BD;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037BE;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037BF;
  sub_257C800E0(&v3, v0);
}

void sub_257C7F9D0(char a1)
{
  v2 = v1;
  if (qword_281544FE0 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v3 = qword_281548348;
    v4 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__primaryControls);
    swift_beginAccess();
    v5 = v4[1];
    v6 = v4[2];
    aBlock = *v4;
    v78 = v5;
    v79 = v6;
    v7 = qword_2815447E0;

    if (v7 != -1)
    {
      v8 = swift_once();
    }

    MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0, &qword_257EDFFC0);
    sub_257ECFD50();

    v13 = *(v84 + 16);
    if (v13)
    {
      v14 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      v15 = (v84 + 32);
      v16 = MEMORY[0x277D84F90];
      do
      {
        v18 = *v15++;
        v17 = v18;
        swift_beginAccess();
        v19 = *&v2[v14];
        if (*(v19 + 16) && (v20 = sub_257C040E4(v17), (v21 & 1) != 0))
        {
          v75 = *(*(v19 + 56) + 16 * v20);
          swift_endAccess();
          v22 = v75;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_257BFD91C(0, v16[2] + 1, 1, v16);
          }

          v24 = v16[2];
          v23 = v16[3];
          if (v24 >= v23 >> 1)
          {
            v16 = sub_257BFD91C((v23 > 1), v24 + 1, 1, v16);
          }

          v16[2] = v24 + 1;
          *&v16[2 * v24 + 4] = v75;
        }

        else
        {
          swift_endAccess();
        }

        --v13;
      }

      while (v13);
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    v25 = (v3 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__secondaryControls);
    v26 = swift_beginAccess();
    v27 = v25[1];
    v72 = v25;
    v28 = v25[2];
    aBlock = *v25;
    v78 = v27;
    v79 = v28;
    MEMORY[0x28223BE20](v26, v29, v30, v31, v32);

    sub_257ECFD50();
    v71 = 0;

    v33 = *(v83 + 16);
    if (v33)
    {
      v34 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      v35 = (v83 + 32);
      v36 = MEMORY[0x277D84F90];
      do
      {
        v38 = *v35++;
        v37 = v38;
        swift_beginAccess();
        v39 = *&v2[v34];
        if (*(v39 + 16) && (v40 = sub_257C040E4(v37), (v41 & 1) != 0))
        {
          v76 = *(*(v39 + 56) + 16 * v40);
          swift_endAccess();
          v42 = v76;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_257BFD91C(0, v36[2] + 1, 1, v36);
          }

          v44 = v36[2];
          v43 = v36[3];
          if (v44 >= v43 >> 1)
          {
            v36 = sub_257BFD91C((v43 > 1), v44 + 1, 1, v36);
          }

          v36[2] = v44 + 1;
          *&v36[2 * v44 + 4] = v76;
        }

        else
        {
          swift_endAccess();
        }

        --v33;
      }

      while (v33);
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
    }

    sub_257C7EFF8(v45, v46);
    v48 = v47;
    v73 = v36;
    if (v47 >> 62)
    {
      break;
    }

    v49 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v49)
    {
      goto LABEL_42;
    }

LABEL_30:
    v50 = 0;
    while (1)
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x259C72E20](v50, v48);
      }

      else
      {
        if (v50 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v51 = *(v48 + 8 * v50 + 32);
      }

      v52 = v51;
      v53 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      [v51 setAlpha_];
      [v52 removeFromSuperview];

      ++v50;
      if (v53 == v49)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

  v49 = sub_257ED0210();
  if (v49)
  {
    goto LABEL_30;
  }

LABEL_42:

  sub_257E8A5B8(v16);

  v55 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow;
  v56 = v72[1];
  v57 = v72[2];
  aBlock = *v72;
  v78 = v56;
  v79 = v57;
  MEMORY[0x28223BE20](v54, v58, v59, v60, v61);
  v63 = v62;

  sub_257ECFD50();

  v64 = *(v83 + 16);

  v63[OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_style] = v64 > 2;

  v65 = *&v2[v55];
  sub_257E8A5B8(v73);

  if (a1)
  {
    v66 = 0.3;
  }

  else
  {
    v66 = 0.0;
  }

  v67 = objc_opt_self();
  v68 = swift_allocObject();
  *(v68 + 16) = v2;
  v81 = sub_257C80BCC;
  v82 = v68;
  aBlock = MEMORY[0x277D85DD0];
  v78 = 1107296256;
  v79 = sub_257D231C0;
  v80 = &block_descriptor_15;
  v69 = _Block_copy(&aBlock);
  v70 = v2;

  [v67 animateWithDuration:0x10000 delay:v69 options:0 animations:v66 completion:0.0];
  _Block_release(v69);
}

void sub_257C800E0(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  switch(*a1)
  {
    case 3u:
      v46[0] = 3;
      v4 = objc_allocWithZone(type metadata accessor for ScrubberButton());
      v5 = sub_257D30B64(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_28690D558;
      v10 = v7;
      v11 = 3;
      break;
    case 4u:
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v28 = sub_257ECF4C0();
      v29 = MGGetBoolAnswer();

      if (v29)
      {
        v46[0] = 4;
        v30 = objc_allocWithZone(type metadata accessor for SliderButton());
        v7 = sub_257D49560(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
        v31 = v7;
        v32 = &off_28690E098;
      }

      else
      {
        v32 = 0;
        v7 = 0;
      }

      swift_beginAccess();
      sub_257CBA13C(v7, v32, 4);
      goto LABEL_38;
    case 5u:
      if (qword_27F8F4618 != -1)
      {
        swift_once();
      }

      if (byte_27F8F78A0 != 1)
      {
        return;
      }

      v46[0] = 5;
      v22 = objc_allocWithZone(type metadata accessor for ToggleButton());
      v23 = sub_257CA18EC(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_28690A770;
      v10 = v7;
      v11 = 5;
      break;
    case 6u:
      v46[0] = 6;
      v24 = objc_allocWithZone(type metadata accessor for ToggleButton());
      v25 = sub_257CA18EC(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_28690A770;
      v10 = v7;
      v11 = 6;
      break;
    case 7u:
      v46[0] = 7;
      v14 = objc_allocWithZone(type metadata accessor for MenuButton());
      sub_257CFA1E8(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v16 = v15;
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_28690C2B8;
      v10 = v7;
      v11 = 7;
      break;
    case 8u:
      v46[0] = 8;
      v33 = objc_allocWithZone(type metadata accessor for SegmentedButton());
      v34 = sub_257DBA4F4(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_286910C18;
      v10 = v7;
      v11 = 8;
      break;
    case 9u:
      if (qword_27F8F4618 != -1)
      {
        swift_once();
      }

      if (byte_27F8F78A0 != 1)
      {
        return;
      }

      v46[0] = 9;
      v39 = objc_allocWithZone(type metadata accessor for ToggleButton());
      v40 = sub_257CA18EC(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_28690A770;
      v10 = v7;
      v11 = 9;
      break;
    case 0xAu:
      if (qword_27F8F4618 != -1)
      {
        swift_once();
      }

      if (byte_27F8F78A0 != 1)
      {
        return;
      }

      v46[0] = 10;
      v26 = objc_allocWithZone(type metadata accessor for ToggleButton());
      v27 = sub_257CA18EC(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_28690A770;
      v10 = v7;
      v11 = 10;
      break;
    case 0xBu:
      if (qword_27F8F4618 != -1)
      {
        swift_once();
      }

      if (byte_27F8F78A0 != 1)
      {
        return;
      }

      v46[0] = 11;
      v43 = objc_allocWithZone(type metadata accessor for ToggleButton());
      v44 = sub_257CA18EC(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v44;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_28690A770;
      v10 = v7;
      v11 = 11;
      break;
    case 0xCu:
      v46[0] = 12;
      v20 = objc_allocWithZone(type metadata accessor for ToggleButton());
      v21 = sub_257CA18EC(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_28690A770;
      v10 = v7;
      v11 = 12;
      break;
    case 0xDu:
      if (qword_27F8F4618 != -1)
      {
        swift_once();
      }

      if (byte_27F8F78A0 != 1)
      {
        return;
      }

      v46[0] = 13;
      v41 = objc_allocWithZone(type metadata accessor for ToggleButton());
      v42 = sub_257CA18EC(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_28690A770;
      v10 = v7;
      v11 = 13;
      break;
    case 0xEu:
      if (qword_27F8F4618 != -1)
      {
        swift_once();
      }

      if (byte_27F8F78A0 != 1)
      {
        return;
      }

      v46[0] = 14;
      v12 = objc_allocWithZone(type metadata accessor for ToggleButton());
      v13 = sub_257CA18EC(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_28690A770;
      v10 = v7;
      v11 = 14;
      break;
    case 0xFu:
      v46[0] = 15;
      v17 = objc_allocWithZone(type metadata accessor for MenuButton());
      sub_257CFA1E8(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v19 = v18;
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_28690C2B8;
      v10 = v7;
      v11 = 15;
      break;
    default:
      v46[0] = *a1;
      v35 = objc_allocWithZone(type metadata accessor for SliderButton());
      v36 = sub_257D49560(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v37 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v36;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v37);
      *(a2 + v37) = 0x8000000000000000;
      sub_257C80BF4(v7, v3, v38, &v45, &off_28690E098);
      *(a2 + v37) = v45;
      goto LABEL_38;
  }

  sub_257C80BF4(v10, v11, isUniquelyReferenced_nonNull_native, &v45, v9);
  *(a2 + v6) = v45;
LABEL_38:
  swift_endAccess();
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

void sub_257C80BF4(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v10 = *a4;
  v11 = sub_257C040E4(a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_257EC4E74(v16, a3 & 1);
      v11 = sub_257C040E4(a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_257ED06C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_257C08F9C();
      v11 = v19;
    }
  }

  v21 = *a4;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    *(v21[6] + v11) = a2;
    v24 = (v21[7] + 16 * v11);
    *v24 = a1;
    v24[1] = a5;
    v25 = v21[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v15)
    {
      v21[2] = v26;
      return;
    }

    goto LABEL_15;
  }

  v22 = v21[7] + 16 * v11;
  v23 = *v22;
  *v22 = a1;
  *(v22 + 8) = a5;
}

void sub_257C80D54()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 currentDevice];
  v5 = [v4 orientation];

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v5;
  v19 = sub_257C80FF4;
  v20 = v8;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_257D231C0;
  v18 = &block_descriptor_12_0;
  v9 = _Block_copy(&v15);

  _Block_release(v9);
  v10 = [v2 currentDevice];
  v11 = [v10 orientation];

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v19 = sub_257C81050;
  v20 = v13;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_257D231C0;
  v18 = &block_descriptor_20_0;
  v14 = _Block_copy(&v15);

  _Block_release(v14);
}

unint64_t sub_257C80FFC()
{
  result = qword_281543EF0;
  if (!qword_281543EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281543EF0);
  }

  return result;
}

void sub_257C8105C()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_2815447E0;

  if (v1 != -1)
  {
    v2 = swift_once();
  }

  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  sub_257ECFD50();

  v27 = v0;
  if (v28 && v28 != 1)
  {
    goto LABEL_10;
  }

  v7 = sub_257ED0640();

  if ((v7 & 1) == 0)
  {
    MEMORY[0x28223BE20](v8, v9, v10, v11, v12);

    sub_257ECFD50();

    if (v28 && v28 == 1)
    {
LABEL_10:

      goto LABEL_13;
    }

    sub_257ED0640();
  }

LABEL_13:
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_opt_self();
  v15 = [v14 bundleForClass_];
  v16 = sub_257ECF4C0();
  v17 = sub_257ECF4C0();
  v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

  sub_257ECF500();

  MEMORY[0x259C72150](8236, 0xE200000000000000);

  v19 = [v14 bundleForClass_];
  v20 = sub_257ECF4C0();
  v21 = sub_257ECF4C0();
  v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

  v23 = sub_257ECF500();
  v25 = v24;

  MEMORY[0x259C72150](v23, v25);

  v26 = sub_257ECF4C0();

  [v27 setAccessibilityLabel_];
}

id sub_257C817BC()
{
  [v0 addSubview_];
  [v0 setIsAccessibilityElement_];
  sub_257C8105C();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  if (!v5)
  {
    sub_257ECF500();
    v5 = sub_257ECF4C0();
  }

  [v0 setAccessibilityHint_];

  return [v0 setAccessibilityRespondsToUserInteraction_];
}

void sub_257C81928()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport9MFGrabber_backgroundView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257EDBE40;
  v5 = [v2 topAnchor];
  v6 = [v1 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:*MEMORY[0x277D77580] + -3.0];

  *(v4 + 32) = v7;
  v8 = [v2 bottomAnchor];
  v9 = [v1 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [v2 centerXAnchor];
  v12 = [v1 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [v2 leftAnchor];
  v15 = [v1 leftAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 56) = v16;
  sub_257C80FFC();
  v17 = sub_257ECF7F0();

  [v3 activateConstraints_];
}

void sub_257C81D24()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport9MFGrabber_backgroundView];
  v3 = [*&v2[OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronLayer] path];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = [objc_opt_self() sharedApplication];
  v6 = sub_257CA7574();

  if (!v6)
  {

LABEL_6:
    v9.receiver = v0;
    v9.super_class = ObjectType;
    objc_msgSendSuper2(&v9, sel_accessibilityFrame);
    return;
  }

  PathBoundingBox = CGPathGetPathBoundingBox(v4);
  [v2 convertRect:v6 toCoordinateSpace:{PathBoundingBox.origin.x, PathBoundingBox.origin.y, PathBoundingBox.size.width, PathBoundingBox.size.height}];
  v7 = [v0 superview];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];
  }
}

uint64_t sub_257C81FEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656C6464696DLL;
  if (v2 != 1)
  {
    v3 = 0x6D6F74746F62;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 7368564;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  v6 = 0x656C6464696DLL;
  if (*a2 != 1)
  {
    v6 = 0x6D6F74746F62;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 7368564;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_257ED0640();
  }

  return v9 & 1;
}

uint64_t sub_257C820D8()
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

double sub_257C8216C(uint64_t a1)
{
  sub_257ECF5D0();

  return result;
}

uint64_t sub_257C821EC(uint64_t a1)
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

unint64_t sub_257C8227C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257C8247C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_257C822AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0x656C6464696DLL;
  if (v2 != 1)
  {
    v4 = 0x6D6F74746F62;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 7368564;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_257C823C0()
{
  result = qword_27F8F6D28;
  if (!qword_27F8F6D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6D30, qword_257EDEE90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6D28);
  }

  return result;
}

unint64_t sub_257C82428()
{
  result = qword_27F8F6D38;
  if (!qword_27F8F6D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6D38);
  }

  return result;
}

unint64_t sub_257C8247C(uint64_t a1, uint64_t a2)
{
  v2 = sub_257ED04B0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_257C824C8()
{
  result = qword_27F8F6D40;
  if (!qword_27F8F6D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6D40);
  }

  return result;
}

double sub_257C82520(uint64_t a1, char a2)
{
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0 && (a1 - 1) < 4)
  {
    return dbl_257EDEF78[a1 - 1];
  }

  sub_257ECD470();
  v13 = sub_257ECDA20();
  v14 = sub_257ECFBE0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_257BAC000, v13, v14, "Unable to get valid video rotation angle.", v15, 2u);
    MEMORY[0x259C74820](v15, -1, -1);
  }

  (*(v5 + 8))(v11, v4);
  return 0.0;
}

uint64_t static UIInterfaceOrientation.fromDeviceOrientation(_:)(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

void _sSo22UIInterfaceOrientationV16MagnifierSupportE6windowABvgZ_0()
{
  v0 = sub_257ECDA30();
  v52 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v1, v2, v3, v4);
  v49 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7, v8, v9, v10);
  v12 = &v49 - v11;
  v13 = [objc_opt_self() sharedApplication];
  v14 = [v13 connectedScenes];

  v15 = sub_257BD2C2C(0, &unk_281543DE0, 0x277D75940);
  sub_257C82BC4();
  v53 = v15;
  v16 = sub_257ECFA70();

  v17 = v16 & 0xC000000000000001;
  if ((v16 & 0xC000000000000001) != 0)
  {
    if (sub_257ED0210() < 2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_257ECD470();

    v23 = sub_257ECDA20();
    v24 = sub_257ECFBE0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v51 = v16 & 0xC000000000000001;
      v26 = v25;
      v27 = swift_slowAlloc();
      v56[0] = v27;
      *v26 = 136315138;
      v28 = sub_257ECFA80();
      v30 = sub_257BF1FC8(v28, v29, v56);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_257BAC000, v23, v24, "Unexpectedly had multiple scenes: %s", v26, 0xCu);
      v31 = __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x259C74820](v27, -1, -1, v31);
      v32 = v26;
      v17 = v51;
      MEMORY[0x259C74820](v32, -1, -1);
    }

    (*(v52 + 8))(v12, v0);
    v50 = v0;
    if (v17)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(v16 + 16) >= 2)
  {
    goto LABEL_6;
  }

LABEL_3:
  v50 = v0;
  if (v17)
  {
LABEL_4:
    swift_unknownObjectRetain();
    sub_257ED01D0();
    sub_257ECFAA0();
    v19 = v56[0];
    v18 = v56[1];
    v21 = v56[2];
    v20 = v56[3];
    v22 = v56[4];
    goto LABEL_13;
  }

LABEL_9:
  v33 = -1 << *(v16 + 32);
  v18 = v16 + 56;
  v21 = ~v33;
  v34 = -v33;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  else
  {
    v35 = -1;
  }

  v22 = v35 & *(v16 + 56);

  v20 = 0;
  v19 = v16;
LABEL_13:
  v51 = v21;
  v36 = (v21 + 64) >> 6;
  if (v19 < 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  v37 = v20;
  v38 = v22;
  v39 = v20;
  if (v22)
  {
LABEL_18:
    v40 = (v38 - 1) & v38;
    v41 = *(*(v19 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v38)))));
    if (v41)
    {
      while (1)
      {
        sub_257BD2C2C(0, &qword_27F8F6D48, 0x277D75DA8);
        if ([v41 isKindOfClass_])
        {
          break;
        }

        v20 = v39;
        v22 = v40;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_20:
        v42 = sub_257ED0230();
        if (v42)
        {
          v54 = v42;
          swift_dynamicCast();
          v41 = v55;
          v39 = v20;
          v40 = v22;
          if (v55)
          {
            continue;
          }
        }

        goto LABEL_25;
      }

      sub_257C02520(v19);

      objc_opt_self();
      v48 = swift_dynamicCastObjCClass();
      if (v48)
      {
        [v48 interfaceOrientation];

        return;
      }
    }

    else
    {
LABEL_25:
      sub_257C02520(v19);
    }

    v44 = v49;
    v43 = v50;
    sub_257ECD470();
    v45 = sub_257ECDA20();
    v46 = sub_257ECFBE0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_257BAC000, v45, v46, "Unexpectedly had no window scene.", v47, 2u);
      MEMORY[0x259C74820](v47, -1, -1);
    }

    (*(v52 + 8))(v44, v43);
  }

  else
  {
    while (1)
    {
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v39 >= v36)
      {
        goto LABEL_25;
      }

      v38 = *(v18 + 8 * v39);
      ++v37;
      if (v38)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }
}

unint64_t sub_257C82BC4()
{
  result = qword_281543DD8;
  if (!qword_281543DD8)
  {
    sub_257BD2C2C(255, &unk_281543DE0, 0x277D75940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543DD8);
  }

  return result;
}

void sub_257C82C5C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  if (v6)
  {
    v13[1] = MEMORY[0x277D84F90];
    sub_257ED0360();
    for (i = (a3 + 56); ; i += 4)
    {
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;
      v12[0] = *(i - 3);
      v12[1] = v9;
      v12[2] = v10;
      v12[3] = v11;

      a1(v13, v12);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_257ED0330();
      sub_257ED0370();
      sub_257ED0380();
      sub_257ED0340();
      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_257C82D88(uint64_t a1, float32x4_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v28 = MEMORY[0x277D84F90];
    sub_257BF2664(0, v2, 0);
    v3 = v28;
    v4 = a1 + 56;
    v5 = sub_257ED0190();
    v6 = a1;
    v7 = 0;
    v25 = v2;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
    {
      v10 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      v27 = *(v6 + 36);
      v11 = v6;
      sub_257E4FDE8(a2);
      v13 = v3;
      v29 = v3;
      v14 = *(v3 + 16);
      v15 = *(v13 + 24);
      if (v14 >= v15 >> 1)
      {
        v23 = v12;
        sub_257BF2664((v15 > 1), v14 + 1, 1);
        v12 = v23;
        v13 = v29;
      }

      *(v13 + 16) = v14 + 1;
      *(v13 + 16 * v14 + 32) = v12;
      v8 = 1 << *(v11 + 32);
      if (v5 >= v8)
      {
        goto LABEL_22;
      }

      v16 = *(v4 + 8 * v10);
      if ((v16 & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      v6 = v11;
      v3 = v13;
      if (v27 != *(v11 + 36))
      {
        goto LABEL_24;
      }

      v17 = v16 & (-2 << (v5 & 0x3F));
      if (v17)
      {
        v8 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v9 = v25;
      }

      else
      {
        v18 = v10 << 6;
        v19 = v10 + 1;
        v20 = (a1 + 64 + 8 * v10);
        v9 = v25;
        while (v19 < (v8 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_257C58A64(v5, v27, 0);
            v6 = a1;
            v8 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        sub_257C58A64(v5, v27, 0);
        v6 = a1;
      }

LABEL_4:
      ++v7;
      v5 = v8;
      if (v7 == v9)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_257C82FF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v25 = MEMORY[0x277D84F90];
    sub_257BF26A4(0, v1, 0);
    v24 = a1 + 56;
    v3 = sub_257ED0190();
    v4 = 0;
    v23 = v1;
    while ((v3 & 0x8000000000000000) == 0 && v3 < 1 << *(a1 + 32))
    {
      v7 = v3 >> 6;
      if ((*(v24 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
      {
        goto LABEL_21;
      }

      v8 = *(a1 + 36);
      v9 = sub_257ECF500();
      v12 = *(v25 + 16);
      v11 = *(v25 + 24);
      if (v12 >= v11 >> 1)
      {
        v21 = v10;
        v22 = v9;
        sub_257BF26A4((v11 > 1), v12 + 1, 1);
        v10 = v21;
        v9 = v22;
      }

      *(v25 + 16) = v12 + 1;
      v13 = v25 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      v5 = 1 << *(a1 + 32);
      if (v3 >= v5)
      {
        goto LABEL_22;
      }

      v14 = *(v24 + 8 * v7);
      if ((v14 & (1 << v3)) == 0)
      {
        goto LABEL_23;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v15 = v14 & (-2 << (v3 & 0x3F));
      if (v15)
      {
        v5 = __clz(__rbit64(v15)) | v3 & 0x7FFFFFFFFFFFFFC0;
        v6 = v23;
      }

      else
      {
        v16 = v7 << 6;
        v17 = v7 + 1;
        v6 = v23;
        v18 = (a1 + 64 + 8 * v7);
        while (v17 < (v5 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            sub_257C58A64(v3, v8, 0);
            v5 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        sub_257C58A64(v3, v8, 0);
      }

LABEL_4:
      ++v4;
      v3 = v5;
      if (v4 == v6)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_257C8321C(void (*a1)(void *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = a2;
  v5 = *(a3 + 16);
  if (v5)
  {
    v35 = MEMORY[0x277D84F90];
    sub_257BF26A4(0, v5, 0);
    v7 = v35;
    v8 = (a3 + 32);
    for (i = v5 - 1; ; --i)
    {
      v10 = v8[3];
      v11 = v8[1];
      v32 = v8[2];
      v33 = v10;
      v12 = v8[3];
      v34[0] = v8[4];
      *(v34 + 12) = *(v8 + 76);
      v13 = v8[1];
      v31[0] = *v8;
      v31[1] = v13;
      v27 = v32;
      v28 = v12;
      v29[0] = v8[4];
      *(v29 + 12) = *(v8 + 76);
      v25 = v31[0];
      v26 = v11;
      sub_257C58DDC(v31, &v20);
      a1(v30, &v25);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v22 = v27;
      v23 = v28;
      v24[0] = v29[0];
      *(v24 + 12) = *(v29 + 12);
      v20 = v25;
      v21 = v26;
      sub_257C58E38(&v20);
      v14 = v30[0];
      v15 = v30[1];
      v35 = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_257BF26A4((v16 > 1), v17 + 1, 1);
        v7 = v35;
      }

      *(v7 + 16) = v17 + 1;
      v18 = v7 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      if (!i)
      {
        return;
      }

      v8 += 6;
    }

    v22 = v27;
    v23 = v28;
    v24[0] = v29[0];
    *(v24 + 12) = *(v29 + 12);
    v20 = v25;
    v21 = v26;
    sub_257C58E38(&v20);

    __break(1u);
  }
}

void sub_257C833D4(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v17 = MEMORY[0x277D84F90];
    sub_257BF26A4(0, v5, 0);
    v7 = v17;
    for (i = (a3 + 32); ; ++i)
    {
      v15 = *i;

      a1(v16, &v15);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v10 = v16[0];
      v9 = v16[1];
      v17 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_257BF26A4((v11 > 1), v12 + 1, 1);
        v7 = v17;
      }

      *(v7 + 16) = v12 + 1;
      v13 = v7 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_257C834FC(uint64_t a1)
{
  v39 = sub_257ECCCF0();
  v3 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v4, v5, v6, v7);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v37 = v9;
    v33[1] = v1;
    v42 = MEMORY[0x277D84F90];
    sub_257BF2904(0, v10, 0);
    v11 = v42;
    v12 = a1 + 56;
    v13 = sub_257ED0190();
    v14 = 0;
    v38 = v3;
    v35 = v10;
    v36 = v3 + 32;
    v34 = a1 + 64;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v17 = v13 >> 6;
      if ((*(v12 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_23;
      }

      v18 = *(a1 + 36);
      v40 = v14;
      v41 = v18;
      v19 = a1;
      v20 = *(*(a1 + 48) + 80 * v13);
      v21 = [v20 identifier];
      if (!v21)
      {
        goto LABEL_27;
      }

      v22 = v21;
      v23 = v37;
      sub_257ECCCD0();

      v42 = v11;
      v25 = *(v11 + 16);
      v24 = *(v11 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_257BF2904((v24 > 1), v25 + 1, 1);
        v11 = v42;
      }

      *(v11 + 16) = v25 + 1;
      (*(v38 + 32))(v11 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v25, v23, v39);
      v15 = 1 << *(v19 + 32);
      if (v13 >= v15)
      {
        goto LABEL_24;
      }

      v26 = *(v12 + 8 * v17);
      if ((v26 & (1 << v13)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v19;
      if (v41 != *(v19 + 36))
      {
        goto LABEL_26;
      }

      v27 = v26 & (-2 << (v13 & 0x3F));
      if (v27)
      {
        v15 = __clz(__rbit64(v27)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v16 = v40;
      }

      else
      {
        v28 = v17 << 6;
        v29 = v17 + 1;
        v30 = (v34 + 8 * v17);
        while (v29 < (v15 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            sub_257C58A64(v13, v41, 0);
            v15 = __clz(__rbit64(v31)) + v28;
            goto LABEL_20;
          }
        }

        sub_257C58A64(v13, v41, 0);
LABEL_20:
        v16 = v40;
      }

      v14 = v16 + 1;
      v13 = v15;
      if (v14 == v35)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t sub_257C83814(void (*a1)(__int128 *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v5 = sub_257ECCCF0();
  MEMORY[0x28223BE20](v5, v6, v7, v8, v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3 + 56;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a3 + 56);
  v17 = (v14 + 63) >> 6;
  v37 = v10 + 16;
  v38 = v10;
  v40 = (v10 + 8);
  v47 = a3;

  v19 = 0;
  v36 = MEMORY[0x277D84F90];
LABEL_4:
  v20 = v19;
  if (!v16)
  {
    goto LABEL_6;
  }

  do
  {
    v19 = v20;
LABEL_9:
    (*(v38 + 16))(v12, *(v47 + 48) + *(v38 + 72) * (__clz(__rbit64(v16)) | (v19 << 6)), v5);
    v39(&v42, v12);
    if (v3)
    {
      (*v40)(v12, v5);

LABEL_19:

      return v36;
    }

    v16 &= v16 - 1;
    v21 = v5;
    (*v40)(v12, v5);
    v22 = v42;
    if (v42)
    {
      v35 = v43;
      v34 = v44;
      v33 = v45;
      v32 = v46;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_257BFD7D4(0, *(v36 + 2) + 1, 1, v36);
        v36 = result;
      }

      v24 = *(v36 + 2);
      v23 = *(v36 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v31 = v24 + 1;
        v30 = v24;
        result = sub_257BFD7D4((v23 > 1), v24 + 1, 1, v36);
        v25 = v31;
        v24 = v30;
        v36 = result;
      }

      v26 = v36;
      *(v36 + 2) = v25;
      v27 = &v26[80 * v24];
      *(v27 + 4) = v22;
      v28 = v34;
      *(v27 + 3) = v35;
      *(v27 + 4) = v28;
      v29 = v32;
      *(v27 + 5) = v33;
      *(v27 + 6) = v29;
      v5 = v21;
      goto LABEL_4;
    }

    v41[2] = v44;
    v41[3] = v45;
    v41[4] = v46;
    v41[0] = v42;
    v41[1] = v43;
    result = sub_257BE4084(v41, &qword_27F8F9C90, &unk_257EDCBD0);
    v20 = v19;
    v5 = v21;
  }

  while (v16);
LABEL_6:
  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v17)
    {
      goto LABEL_19;
    }

    v16 = *(v13 + 8 * v19);
    ++v20;
    if (v16)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_257C83BA8(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 32);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v5[3];
    v9 = v5[1];
    v38 = v5[2];
    v39 = v8;
    v10 = v5[3];
    v40[0] = v5[4];
    *(v40 + 12) = *(v5 + 76);
    v11 = v5[1];
    v37[0] = *v5;
    v37[1] = v11;
    v34 = v38;
    v35 = v10;
    v36[0] = v5[4];
    *(v36 + 12) = *(v5 + 76);
    v32 = v37[0];
    v33 = v9;
    sub_257C58DDC(v37, &v22);
    a1(&v27, &v32);
    if (v3)
    {
      break;
    }

    v24 = v34;
    v25 = v35;
    v26[0] = v36[0];
    *(v26 + 12) = *(v36 + 12);
    v22 = v32;
    v23 = v33;
    sub_257C58E38(&v22);
    v12 = v28;
    if (v28)
    {
      v13 = v27;
      v14 = v29;
      v15 = v30;
      v21 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_257BFDBE4(0, v6[2] + 1, 1, v6);
      }

      v17 = v6[2];
      v16 = v6[3];
      v18 = v6;
      if (v17 >= v16 >> 1)
      {
        v18 = sub_257BFDBE4((v16 > 1), v17 + 1, 1, v6);
      }

      v18[2] = v17 + 1;
      v6 = v18;
      v7 = &v18[6 * v17];
      v7[4] = v13;
      v7[5] = v12;
      v7[6] = v14;
      v7[7] = v15;
      *(v7 + 4) = v21;
    }

    v5 += 6;
    if (!--v4)
    {
      return v6;
    }
  }

  v24 = v34;
  v25 = v35;
  v26[0] = v36[0];
  *(v26 + 12) = *(v36 + 12);
  v22 = v32;
  v23 = v33;
  sub_257C58E38(&v22);

  return v6;
}

uint64_t static MAGOutputEvent.objectUnderstanding(detectedObject:cameraPosition:detectedOccupants:source:environment:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>, __n128 a6@<Q0>)
{
  v25 = a6;
  v11 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v11, v11, v12, v13, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v28 = a1[2];
  v29 = v17;
  v30 = a1[4];
  v18 = v30;
  v19 = a1[1];
  v27[0] = *a1;
  v20 = v27[0];
  v27[1] = v19;
  LOBYTE(a3) = *a3;
  LOBYTE(a4) = *a4;
  *(v16 + 2) = v28;
  *(v16 + 3) = v17;
  *v16 = v20;
  *(v16 + 1) = v19;
  v21 = v25;
  *(v16 + 4) = v18;
  *(v16 + 5) = v21;
  *(v16 + 12) = a2;
  swift_storeEnumTagMultiPayload();
  sub_257BE401C(v27, v26, &qword_27F8F9C90, &unk_257EDCBD0);

  sub_257ECCCE0();
  v22 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v16, a5 + v22[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a5 + v22[6]) = a3;
  *(a5 + v22[7]) = a4;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v23 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v16, type metadata accessor for MAGOutputEvent.EventType);
  *(a5 + v22[8]) = v23;
  return result;
}

uint64_t static MAGOutputEvent.objectUnderstanding(detectedObjectGroup:cameraPosition:detectedOccupants:source:environment:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>, __n128 a6@<Q0>)
{
  v21 = a6;
  v11 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v11, v11, v12, v13, v14);
  v16 = (&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(a3) = *a3;
  v17 = *a4;
  v16->n128_u64[0] = a1;
  v16[1] = v21;
  v16[2].n128_u64[0] = a2;
  swift_storeEnumTagMultiPayload();

  sub_257ECCCE0();
  v18 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v16, a5 + v18[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a5 + v18[6]) = a3;
  *(a5 + v18[7]) = v17;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v19 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v16, type metadata accessor for MAGOutputEvent.EventType);
  *(a5 + v18[8]) = v19;
  return result;
}

uint64_t static MAGOutputEvent.objectUnderstanding(furnitureDetections:cameraPosition:source:environment:)@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v19 = a5;
  v9 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v9, v9, v10, v11, v12);
  v14 = (&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(a2) = *a2;
  v15 = *a3;
  v14->n128_u64[0] = a1;
  v14[1] = v19;
  swift_storeEnumTagMultiPayload();

  sub_257ECCCE0();
  v16 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v14, a4 + v16[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a4 + v16[6]) = a2;
  *(a4 + v16[7]) = v15;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v17 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v14, type metadata accessor for MAGOutputEvent.EventType);
  *(a4 + v16[8]) = v17;
  return result;
}

uint64_t static MAGOutputEvent.doorDetection(_:_:openStateConfidenceThreshold:source:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>, float a6@<S0>)
{
  v12 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a3) = *a3;
  v19 = *a4;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38, &qword_257EDC128);
  v21 = *(v20 + 48);
  v22 = *(v20 + 64);
  sub_257C9A79C(a1, v18, type metadata accessor for DetectedDoor);
  *&v18[v21] = a2;
  *&v18[v22] = a6;
  swift_storeEnumTagMultiPayload();

  sub_257ECCCE0();
  v23 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v18, a5 + v23[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a5 + v23[6]) = a3;
  *(a5 + v23[7]) = v19;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v24 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v18, type metadata accessor for MAGOutputEvent.EventType);
  *(a5 + v23[8]) = v24;
  return result;
}

uint64_t MAGOutputEvent.UserCoachingInstruction.displayContent.getter()
{
  sub_257C95DE4();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();

  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t sub_257C844F0@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v9, v9, v10, v11, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = *a2;
  LOBYTE(a3) = *a3;
  *v14 = *a1;
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  v15 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v14, a5 + v15[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a5 + v15[6]) = a2;
  *(a5 + v15[7]) = a3;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v16 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v14, type metadata accessor for MAGOutputEvent.EventType);
  *(a5 + v15[8]) = v16;
  return result;
}

MagnifierSupport::MAGOutputEventCategory_optional __swiftcall MAGOutputEventCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_257ED0670();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MAGOutputEventCategory.rawValue.getter()
{
  result = 0x746C7561666564;
  switch(*v0)
  {
    case 1:
      result = 0x6544656C706F6570;
      break;
    case 2:
      v2 = 1919905636;
      goto LABEL_15;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x7061436567616D69;
      break;
    case 5:
      result = 0x646E41746E696F70;
      break;
    case 6:
      v2 = 1954047348;
LABEL_15:
      result = v2 | 0x6574654400000000;
      break;
    case 7:
      result = 0x746E656D75636F64;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x7061546B636162;
      break;
    case 0xA:
      result = 0x65636E756F6E6E61;
      break;
    case 0xB:
      result = 0x6F72506C65646F6DLL;
      break;
    case 0xC:
      result = 0x6E616353706F6F6CLL;
      break;
    case 0xD:
    case 0xE:
      result = 0x65636E6164697567;
      break;
    case 0xF:
      result = 0x75476E4F6B636F6CLL;
      break;
    case 0x10:
      result = 0x4766664F6B636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_257C848DC()
{
  v0 = MAGOutputEventCategory.rawValue.getter();
  v2 = v1;
  if (v0 == MAGOutputEventCategory.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_257ED0640();
  }

  return v5 & 1;
}

uint64_t sub_257C84984@<X0>(uint64_t *a1@<X8>)
{
  result = MAGOutputEventCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_257C849AC()
{
  sub_257ED07B0();
  MAGOutputEventCategory.rawValue.getter();
  sub_257ECF5D0();

  return sub_257ED0800();
}

double sub_257C84A14(uint64_t a1)
{
  MAGOutputEventCategory.rawValue.getter();
  sub_257ECF5D0();

  return result;
}

uint64_t sub_257C84A78(uint64_t a1)
{
  sub_257ED07B0();
  MAGOutputEventCategory.rawValue.getter();
  sub_257ECF5D0();

  return sub_257ED0800();
}

uint64_t MAGOutputEventEnvironment.hashValue.getter()
{
  v1 = *v0;
  sub_257ED07B0();
  MEMORY[0x259C732E0](v1);
  return sub_257ED0800();
}

uint64_t MAGOutputEvent.init(_:source:environment:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  sub_257ECCCE0();
  v8 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(a1, a4 + v8[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a4 + v8[6]) = v6;
  *(a4 + v8[7]) = v7;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v9 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(a1, type metadata accessor for MAGOutputEvent.EventType);
  *(a4 + v8[8]) = v9;
  return result;
}

uint64_t sub_257C84CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, _BYTE *a4@<X3>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v11, v11, v12, v13, v14);
  v16 = (&v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(a3) = *a3;
  LOBYTE(a4) = *a4;
  *v16 = a1;
  v16[1] = a2;
  swift_storeEnumTagMultiPayload();

  sub_257ECCCE0();
  v17 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v16, a6 + v17[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a6 + v17[6]) = a3;
  *(a6 + v17[7]) = a4;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v18 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v16, type metadata accessor for MAGOutputEvent.EventType);
  *(a6 + v17[8]) = v18;
  return result;
}

uint64_t sub_257C84E34@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v7, v7, v8, v9, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  LOBYTE(a2) = *a2;
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  v13 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v12, a4 + v13[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a4 + v13[6]) = a1;
  *(a4 + v13[7]) = a2;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v14 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v12, type metadata accessor for MAGOutputEvent.EventType);
  *(a4 + v13[8]) = v14;
  return result;
}

uint64_t static MAGOutputEvent.backTap(attributedLabel:source:environment:)@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v8, v8, v9, v10, v11);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(a2) = *a2;
  v14 = *a3;
  *v13 = a1;
  swift_storeEnumTagMultiPayload();
  v15 = a1;
  sub_257ECCCE0();
  v16 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v13, a4 + v16[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a4 + v16[6]) = a2;
  *(a4 + v16[7]) = v14;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v17 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v13, type metadata accessor for MAGOutputEvent.EventType);
  *(a4 + v16[8]) = v17;
  return result;
}

uint64_t sub_257C850DC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v9, v9, v10, v11, v12);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(a2) = *a2;
  LOBYTE(a3) = *a3;
  *v14 = a1;
  swift_storeEnumTagMultiPayload();

  sub_257ECCCE0();
  v15 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v14, a5 + v15[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a5 + v15[6]) = a2;
  *(a5 + v15[7]) = a3;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v16 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v14, type metadata accessor for MAGOutputEvent.EventType);
  *(a5 + v15[8]) = v16;
  return result;
}

uint64_t static MAGOutputEvent.peopleDetection(closestPerson:depth:source:environment:)@<X0>(void *a1@<X0>, int a2@<W1>, _BYTE *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v10, v10, v11, v12, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a3) = *a3;
  v16 = *a4;
  *v15 = a1;
  *(v15 + 2) = a2;
  swift_storeEnumTagMultiPayload();
  v17 = a1;
  sub_257ECCCE0();
  v18 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v15, a5 + v18[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a5 + v18[6]) = a3;
  *(a5 + v18[7]) = v16;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v19 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v15, type metadata accessor for MAGOutputEvent.EventType);
  *(a5 + v18[8]) = v19;
  return result;
}

uint64_t static MAGOutputEvent.peopleDetection(closestPerson:depth:closestPersonAction:source:environment:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v14, v14, v15, v16, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a5) = *a5;
  v20 = *a6;
  *v19 = a1;
  *(v19 + 2) = a2;
  *(v19 + 2) = a3;
  *(v19 + 3) = a4;
  swift_storeEnumTagMultiPayload();
  v21 = a1;

  sub_257ECCCE0();
  v22 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v19, a7 + v22[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a7 + v22[6]) = a5;
  *(a7 + v22[7]) = v20;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v23 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v19, type metadata accessor for MAGOutputEvent.EventType);
  *(a7 + v22[8]) = v23;
  return result;
}

uint64_t static MAGOutputEvent.objectUnderstanding(surfaceLabel:depth:source:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _BYTE *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v12, v12, v13, v14, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a4) = *a4;
  v18 = *a5;
  *v17 = a1;
  *(v17 + 1) = a2;
  *(v17 + 4) = a3;
  swift_storeEnumTagMultiPayload();

  sub_257ECCCE0();
  v19 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v17, a6 + v19[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a6 + v19[6]) = a4;
  *(a6 + v19[7]) = v18;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v20 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v17, type metadata accessor for MAGOutputEvent.EventType);
  *(a6 + v19[8]) = v20;
  return result;
}

uint64_t MAGOutputEvent.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECCCF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MAGOutputEvent.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MAGOutputEvent(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t MAGOutputEvent.environment.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MAGOutputEvent(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t MAGOutputEvent.category.getter@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v1 + *(v10 + 20), v9, type metadata accessor for MAGOutputEvent.EventType);
  result = swift_getEnumCaseMultiPayload();
  v12 = 10;
  switch(result)
  {
    case 0:
    case 1:
      result = sub_257C9A804(v9, type metadata accessor for MAGOutputEvent.EventType);
      v12 = 1;
      break;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38, &qword_257EDC128);

      result = sub_257C9A804(v9, type metadata accessor for DetectedDoor);
      v12 = 2;
      break;
    case 3:
    case 4:
    case 5:
    case 6:
      result = sub_257C9A804(v9, type metadata accessor for MAGOutputEvent.EventType);
      v12 = 3;
      break;
    case 7:
      result = sub_257C9A804(v9, type metadata accessor for MAGOutputEvent.EventType);
      v12 = 4;
      break;
    case 8:
      result = sub_257C9A804(v9, type metadata accessor for MAGOutputEvent.EventType);
      v12 = 5;
      break;
    case 9:
      result = sub_257C9A804(v9, type metadata accessor for MAGOutputEvent.EventType);
      v12 = 6;
      break;
    case 12:
      result = sub_257C9A804(v9, type metadata accessor for MAGOutputEvent.EventType);
      v12 = 7;
      break;
    case 13:
      result = sub_257C9A804(v9, type metadata accessor for MAGOutputEvent.EventType);
      v12 = 9;
      break;
    case 15:
      break;
    case 17:
      v12 = 8;
      break;
    case 25:
      v12 = 11;
      break;
    case 26:
      v12 = 12;
      break;
    case 27:
      v12 = 13;
      break;
    case 28:
      v12 = 14;
      break;
    case 29:
      v12 = 15;
      break;
    case 30:
      v12 = 16;
      break;
    default:
      result = sub_257C9A804(v9, type metadata accessor for MAGOutputEvent.EventType);
      v12 = 0;
      break;
  }

  *a1 = v12;
  return result;
}

uint64_t MAGOutputEvent.replacesEventsWithSameCategory.getter()
{
  v1 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v0 + *(v8 + 20), v7, type metadata accessor for MAGOutputEvent.EventType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = type metadata accessor for MAGOutputEvent.EventType;
  if (EnumCaseMultiPayload > 0x18)
  {
    goto LABEL_6;
  }

  v11 = 1;
  if (((1 << EnumCaseMultiPayload) & 0x33E3) != 0)
  {
LABEL_7:
    sub_257C9A804(v7, v10);
    return v11;
  }

  if (((1 << EnumCaseMultiPayload) & 0x1FE8000) == 0)
  {
    if (EnumCaseMultiPayload == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38, &qword_257EDC128);

      v10 = type metadata accessor for DetectedDoor;
      goto LABEL_7;
    }

LABEL_6:
    v11 = 0;
    v10 = type metadata accessor for MAGOutputEvent.EventType;
    goto LABEL_7;
  }

  return v11;
}

Swift::Bool __swiftcall MAGOutputEvent.interruptsSpeechEventsWithCategory(_:)(MagnifierSupport::MAGOutputEventCategory a1)
{
  v2 = a1;
  v3 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = *v2;
  v11 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v1 + *(v11 + 20), v9, type metadata accessor for MAGOutputEvent.EventType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload < 2)
    {
      sub_257C9A804(v9, type metadata accessor for MAGOutputEvent.EventType);
      MAGOutputEvent.category.getter(v35);
      v35[1] = v10;
      v19 = MAGOutputEventCategory.rawValue.getter();
      v21 = v20;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 3)
    {
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v14 = *v9;

      MAGOutputEvent.category.getter(v36);
      v36[1] = v10;
      v15 = MAGOutputEventCategory.rawValue.getter();
      v17 = v16;
      if (v15 == MAGOutputEventCategory.rawValue.getter() && v17 == v18)
      {
      }

      else
      {
        v29 = sub_257ED0640();

        if ((v29 & 1) == 0)
        {

          goto LABEL_34;
        }
      }

      v13 = v14 != 0;

      return v13 & 1;
    }

LABEL_29:
    sub_257C9A804(v9, type metadata accessor for MAGOutputEvent.EventType);
LABEL_34:
    v13 = 0;
    return v13 & 1;
  }

  if (EnumCaseMultiPayload > 0x1B)
  {
LABEL_15:
    if ((EnumCaseMultiPayload - 5) < 2)
    {
LABEL_16:
      sub_257C9A804(v9, type metadata accessor for MAGOutputEvent.EventType);
      MAGOutputEvent.category.getter(v37);
      v37[1] = v10;
      v19 = MAGOutputEventCategory.rawValue.getter();
      v21 = v22;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 8)
    {
      sub_257C9A804(v9, type metadata accessor for MAGOutputEvent.EventType);
      MAGOutputEvent.category.getter(v34);
      v34[1] = v10;
      v25 = MAGOutputEventCategory.rawValue.getter();
      v27 = v26;
      if (v25 == MAGOutputEventCategory.rawValue.getter() && v27 == v28)
      {
      }

      else
      {
        v31 = sub_257ED0640();

        if (v31)
        {
          goto LABEL_4;
        }

        HIBYTE(v33) = v10;
        if (MAGOutputEventCategory.rawValue.getter() != 0x6574654474786574 || v32 != 0xED00006E6F697463)
        {
          v13 = sub_257ED0640();
LABEL_22:

          return v13 & 1;
        }
      }

      v13 = 1;
      return v13 & 1;
    }

    goto LABEL_29;
  }

  if (((1 << EnumCaseMultiPayload) & 0x9FE8000) == 0)
  {
    if (EnumCaseMultiPayload == 9)
    {
      sub_257C9A804(v9, type metadata accessor for MAGOutputEvent.EventType);
      MAGOutputEvent.category.getter(&v33 + 5);
      BYTE6(v33) = v10;
      v19 = MAGOutputEventCategory.rawValue.getter();
      v21 = v30;
LABEL_17:
      if (v19 == MAGOutputEventCategory.rawValue.getter() && v21 == v23)
      {
        v13 = 1;
      }

      else
      {
        v13 = sub_257ED0640();
      }

      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 13)
    {
      sub_257C9A804(v9, type metadata accessor for MAGOutputEvent.EventType);
      v13 = 1;
      return v13 & 1;
    }

    goto LABEL_15;
  }

LABEL_4:
  v13 = 1;
  return v13 & 1;
}

void MAGOutputEvent.soundEffect.getter(char *a1@<X8>)
{
  v3 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v1 + *(v10 + 20), v9, type metadata accessor for MAGOutputEvent.EventType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 22)
  {
    if (EnumCaseMultiPayload > 30)
    {
      switch(EnumCaseMultiPayload)
      {
        case 31:
          v22 = 12;
          goto LABEL_39;
        case 32:
          v22 = 13;
          goto LABEL_39;
        case 33:
          v22 = 0;
          goto LABEL_39;
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 23:
LABEL_22:
          v22 = 10;
          goto LABEL_39;
        case 24:
          v22 = 11;
          goto LABEL_39;
        case 25:
          v22 = 14;
          goto LABEL_39;
      }
    }

LABEL_36:
    sub_257C9A804(v9, type metadata accessor for MAGOutputEvent.EventType);
    goto LABEL_38;
  }

  if (EnumCaseMultiPayload > 19)
  {
    v22 = 9;
    if (EnumCaseMultiPayload != 21)
    {
      goto LABEL_39;
    }

    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 8)
  {
    v23 = *v9;
    v24 = (*(v1 + *(v10 + 32)) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
    swift_beginAccess();
    v25 = v24[1];
    v26 = v24[2];
    v46 = *v24;
    v47 = v25;
    v48 = v26;
    v27 = qword_2815447E0;

    if (v27 != -1)
    {
      v28 = swift_once();
    }

    MEMORY[0x28223BE20](v28, v29, v30, v31, v32);
    *(&v45 - 2) = &v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90, &unk_257EDC2B0);
    sub_257ECFD50();

    v33 = sub_257C592D0(2u, v49);

    if (v33)
    {
      v34 = *(v23 + 16);

      if (v34)
      {
        v22 = 6;
        goto LABEL_39;
      }
    }

    else
    {
    }

LABEL_38:
    v22 = 20;
    goto LABEL_39;
  }

  if (EnumCaseMultiPayload != 18)
  {
    if (EnumCaseMultiPayload == 19)
    {
      v12 = (*(v1 + *(v10 + 32)) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPauseDetectionModeFeedbacks);
      swift_beginAccess();
      v13 = v12[1];
      v14 = v12[2];
      v46 = *v12;
      v47 = v13;
      v48 = v14;
      v15 = qword_2815447E0;

      if (v15 != -1)
      {
        v16 = swift_once();
      }

      MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
      *(&v45 - 2) = &v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080, qword_257EDD2B0);
      sub_257ECFD50();

      v21 = sub_257C592D0(1u, v49);

      if (v21)
      {
        v22 = 8;
      }

      else
      {
        v22 = 20;
      }

      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v35 = (*(v1 + *(v10 + 32)) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPauseDetectionModeFeedbacks);
  swift_beginAccess();
  v36 = v35[1];
  v37 = v35[2];
  v46 = *v35;
  v47 = v36;
  v48 = v37;
  v38 = qword_2815447E0;

  if (v38 != -1)
  {
    v39 = swift_once();
  }

  MEMORY[0x28223BE20](v39, v40, v41, v42, v43);
  *(&v45 - 2) = &v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080, qword_257EDD2B0);
  sub_257ECFD50();

  v44 = sub_257C592D0(1u, v49);

  if (v44)
  {
    v22 = 7;
  }

  else
  {
    v22 = 20;
  }

LABEL_39:
  *a1 = v22;
}

void MAGOutputEvent.hapticEffect.getter(char *a1@<X8>)
{
  v3 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = (&v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v1 + *(v10 + 20), v9, type metadata accessor for MAGOutputEvent.EventType);
  v11 = 0;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v12 = *v9;
      if (*v9)
      {
        goto LABEL_26;
      }

      goto LABEL_36;
    case 1u:
      v12 = *v9;

      if (!v12)
      {
        goto LABEL_36;
      }

LABEL_26:

      v50 = (*(v1 + *(v10 + 32)) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPeopleDetectionFeedbacks);
      swift_beginAccess();
      v51 = v50[1];
      v52 = v50[2];
      v61 = *v50;
      v62 = v51;
      v63 = v52;
      v53 = qword_2815447E0;

      if (v53 != -1)
      {
        v54 = swift_once();
      }

      MEMORY[0x28223BE20](v54, v55, v56, v57, v58);
      *(&v60 - 2) = &v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8, &unk_257EE35D0);
      sub_257ECFD50();

      v59 = sub_257C592D0(3u, v64);

      if (v59)
      {
        v11 = 1;
      }

      else
      {
        v11 = 11;
      }

      goto LABEL_37;
    case 2u:
      v39 = (*(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38, &qword_257EDC128) + 48)))[2];

      if (!v39)
      {
        goto LABEL_33;
      }

      v40 = (*(v1 + *(v10 + 32)) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedDoorDetectionFeedbacks);
      swift_beginAccess();
      v41 = v40[1];
      v42 = v40[2];
      v61 = *v40;
      v62 = v41;
      v63 = v42;
      v43 = qword_2815447E0;

      if (v43 != -1)
      {
        v44 = swift_once();
      }

      MEMORY[0x28223BE20](v44, v45, v46, v47, v48);
      *(&v60 - 2) = &v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880, qword_257EDACA0);
      sub_257ECFD50();

      v49 = sub_257C592D0(3u, v64);

      if (v49)
      {
        v11 = 2;
      }

      else
      {
LABEL_33:
        v11 = 11;
      }

      sub_257C9A804(v9, type metadata accessor for DetectedDoor);
      goto LABEL_37;
    case 8u:
      v13 = *v9;
      v14 = (*(v1 + *(v10 + 32)) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
      swift_beginAccess();
      v15 = v14[1];
      v16 = v14[2];
      v61 = *v14;
      v62 = v15;
      v63 = v16;
      v17 = qword_2815447E0;

      if (v17 != -1)
      {
        v18 = swift_once();
      }

      MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
      *(&v60 - 2) = &v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90, &unk_257EDC2B0);
      sub_257ECFD50();

      v23 = sub_257C592D0(3u, v64);

      if (v23)
      {
        v24 = v13[2];

        if (v24)
        {
LABEL_10:
          v11 = 3;
          goto LABEL_37;
        }
      }

      else
      {
      }

LABEL_36:
      v11 = 11;
LABEL_37:
      *a1 = v11;
      return;
    case 0x11u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x1Fu:
    case 0x20u:
      goto LABEL_37;
    case 0x12u:
      v34 = (*(v1 + *(v10 + 32)) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPauseDetectionModeFeedbacks);
      swift_beginAccess();
      v35 = v34[1];
      v36 = v34[2];
      v61 = *v34;
      v62 = v35;
      v63 = v36;
      v37 = qword_2815447E0;

      if (v37 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_38;
    case 0x13u:
      v25 = (*(v1 + *(v10 + 32)) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPauseDetectionModeFeedbacks);
      swift_beginAccess();
      v26 = v25[1];
      v27 = v25[2];
      v61 = *v25;
      v62 = v26;
      v63 = v27;
      v28 = qword_2815447E0;

      if (v28 == -1)
      {
        goto LABEL_15;
      }

LABEL_38:
      v29 = swift_once();
LABEL_15:
      MEMORY[0x28223BE20](v29, v30, v31, v32, v33);
      *(&v60 - 2) = &v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080, qword_257EDD2B0);
      sub_257ECFD50();

      v38 = sub_257C592D0(2u, v64);

      if (v38)
      {
        v11 = 0;
      }

      else
      {
        v11 = 11;
      }

      goto LABEL_37;
    case 0x18u:
      v11 = 5;
      goto LABEL_37;
    case 0x1Au:
      v11 = 6;
      goto LABEL_37;
    case 0x1Bu:
      v11 = 7;
      goto LABEL_37;
    case 0x1Cu:
      v11 = 8;
      goto LABEL_37;
    case 0x1Du:
      v11 = 9;
      goto LABEL_37;
    case 0x1Eu:
      v11 = 10;
      goto LABEL_37;
    case 0x22u:
      goto LABEL_10;
    default:
      sub_257C9A804(v9, type metadata accessor for MAGOutputEvent.EventType);
      goto LABEL_36;
  }
}

uint64_t MAGOutputEvent.speechContent(withPreviousEvent:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v609 = a1;
  v613 = a2;
  v611.i64[0] = sub_257ECD1A0();
  v591 = *(v611.i64[0] - 8);
  MEMORY[0x28223BE20](v611.i64[0], v2, v3, v4, v5);
  v590 = &v587 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50, &unk_257EDEFA0);
  MEMORY[0x28223BE20](v7 - 8, v8, v9, v10, v11);
  v600 = &v587 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  v597 = &v587 - v18;
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v601 = &v587 - v24;
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  v598 = &v587 - v30;
  v31 = type metadata accessor for MAGOutputEvent(0);
  v608 = *(v31 - 1);
  MEMORY[0x28223BE20](v31, v32, v33, v34, v35);
  v596 = &v587 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v38, v39, v40, v41);
  v594 = &v587 - v42;
  MEMORY[0x28223BE20](v43, v44, v45, v46, v47);
  v599 = &v587 - v48;
  MEMORY[0x28223BE20](v49, v50, v51, v52, v53);
  v595 = &v587 - v54;
  v55 = type metadata accessor for DetectedDoor(0);
  MEMORY[0x28223BE20](v55 - 8, v56, v57, v58, v59);
  v607 = &v587 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v61, v62, v63, v64, v65);
  v606 = &v587 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67, v68, v69, v70, v71);
  v610 = (&v587 - v72);
  MEMORY[0x28223BE20](v73, v74, v75, v76, v77);
  v605 = (&v587 - v78);
  MEMORY[0x28223BE20](v79, v80, v81, v82, v83);
  v604 = &v587 - v84;
  MEMORY[0x28223BE20](v85, v86, v87, v88, v89);
  v603 = &v587 - v90;
  MEMORY[0x28223BE20](v91, v92, v93, v94, v95);
  v602 = &v587 - v96;
  MEMORY[0x28223BE20](v97, v98, v99, v100, v101);
  v592 = &v587 - v102;
  MEMORY[0x28223BE20](v103, v104, v105, v106, v107);
  v588 = (&v587 - v108);
  MEMORY[0x28223BE20](v109, v110, v111, v112, v113);
  v115 = (&v587 - v114);
  MEMORY[0x28223BE20](v116, v117, v118, v119, v120);
  v593 = &v587 - v121;
  MEMORY[0x28223BE20](v122, v123, v124, v125, v126);
  v589 = &v587 - v127;
  MEMORY[0x28223BE20](v128, v129, v130, v131, v132);
  v134 = &v587 - v133;
  MEMORY[0x28223BE20](v135, v136, v137, v138, v139);
  v141 = &v587 - v140;
  MEMORY[0x28223BE20](v142, v143, v144, v145, v146);
  v148 = &v587 - v147;
  MEMORY[0x28223BE20](v149, v150, v151, v152, v153);
  v155 = &v587 - v154;
  MEMORY[0x28223BE20](v156, v157, v158, v159, v160);
  v162 = &v587 - v161;
  MEMORY[0x28223BE20](v163, v164, v165, v166, v167);
  v169 = &v587 - v168;
  v612 = v31;
  sub_257C9A79C(v615 + v31[5], &v587 - v168, type metadata accessor for MAGOutputEvent.EventType);
  v614 = v169;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_257C9A79C(v614, v162, type metadata accessor for MAGOutputEvent.EventType);
      v208 = *v162;
      v209 = *(v162 + 2);
      v210 = v612;
      v211 = v615;
      if ((*(v615 + v612[7]) & 1) == 0)
      {
        v310 = (*(v615 + v612[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPeopleDetectionFeedbacks);
        swift_beginAccess();
        v311 = v310[1];
        v312 = v310[2];
        *&v622 = *v310;
        *(&v622 + 1) = v311;
        *&v623 = v312;
        v313 = qword_2815447E0;

        if (v313 != -1)
        {
          v314 = swift_once();
        }

        MEMORY[0x28223BE20](v314, v315, v316, v317, v318);
        *(&v587 - 2) = &v622;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8, &unk_257EE35D0);
        sub_257ECFD50();

        v319 = sub_257C592D0(1u, v616);

        if (v319)
        {
          sub_257C8AB74(v208, v209, v609, v613);
        }

        else
        {
          v436 = v613;
          v613[4] = 0;
          *v436 = 0u;
          *(v436 + 1) = 0u;
        }

        goto LABEL_298;
      }

      sub_257C8AB74(*v162, *(v162 + 2), v609, &v628);
      v212 = *(v211 + v210[6]);
      v213 = [objc_opt_self() sharedInstance];
      v214 = v213;
      if (v212 != 2)
      {
        goto LABEL_162;
      }

      goto LABEL_20;
    case 1u:
      sub_257C9A79C(v614, v155, type metadata accessor for MAGOutputEvent.EventType);
      v208 = *v155;
      v215 = *(v155 + 2);
      v217 = *(v155 + 2);
      v216 = *(v155 + 3);
      v218 = v612;
      v219 = v615;
      if ((*(v615 + v612[7]) & 1) == 0)
      {
        v320 = (*(v615 + v612[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPeopleDetectionFeedbacks);
        swift_beginAccess();
        v321 = v320[1];
        v322 = v320[2];
        *&v622 = *v320;
        *(&v622 + 1) = v321;
        *&v623 = v322;
        v323 = qword_2815447E0;

        if (v323 != -1)
        {
          v324 = swift_once();
        }

        MEMORY[0x28223BE20](v324, v325, v326, v327, v328);
        *(&v587 - 2) = &v622;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8, &unk_257EE35D0);
        sub_257ECFD50();

        v329 = sub_257C592D0(1u, v616);

        if (v329)
        {
          sub_257C8B51C(v208, v215, v217, v216, v609, v613);
        }

        else
        {
          v441 = v613;
          v613[4] = 0;
          *v441 = 0u;
          *(v441 + 1) = 0u;
        }

        goto LABEL_298;
      }

      sub_257C8B51C(v208, v215, v217, v216, v609, &v628);

      v220 = *(v219 + v218[6]);
      v213 = [objc_opt_self() sharedInstance];
      v214 = v213;
      if (v220 == 2)
      {
LABEL_20:
        v221 = [v213 liveRecognitionActivity];

        if (v221)
        {
          v198 = [v221 peopleFeedbacksSpeech];

          goto LABEL_53;
        }

        goto LABEL_165;
      }

LABEL_162:
      v437 = [v213 liveRecognitionPeopleFeedbacks];

      if (!v437)
      {
LABEL_165:
        __swift_destroy_boxed_opaque_existential_0(&v628);

        goto LABEL_297;
      }

      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      sub_257C9CE74();
      v438 = sub_257ECFA70();

      v439 = sub_257ECFAC0();
      v440 = sub_257C409E8(v439, v438);

      if (v440)
      {
        goto LABEL_182;
      }

      goto LABEL_212;
    case 2u:
      sub_257C9A79C(v614, v148, type metadata accessor for MAGOutputEvent.EventType);
      v190 = *&v148[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38, &qword_257EDC128) + 48)];
      v191 = v607;
      sub_257C9CF58(v148, v607, type metadata accessor for DetectedDoor);
      if (!*(v190 + 16))
      {
        goto LABEL_153;
      }

      v192 = v612;
      v193 = v615;
      if ((*(v615 + v612[7]) & 1) == 0)
      {
        v420 = (*(v615 + v612[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedDoorDetectionFeedbacks);
        swift_beginAccess();
        v421 = v420[1];
        v422 = v420[2];
        *&v622 = *v420;
        *(&v622 + 1) = v421;
        *&v623 = v422;
        v423 = qword_2815447E0;

        if (v423 != -1)
        {
          goto LABEL_332;
        }

        goto LABEL_151;
      }

      sub_257C8C0BC(v191, v190, &v628);

      v194 = *(v193 + v192[6]);
      v195 = [objc_opt_self() sharedInstance];
      v196 = v195;
      if (v194 == 2)
      {
        v197 = [v195 liveRecognitionActivity];

        if (v197)
        {
          v198 = [v197 doorsFeedbacksSpeech];

          sub_257C9A804(v191, type metadata accessor for DetectedDoor);
          goto LABEL_53;
        }

        __swift_destroy_boxed_opaque_existential_0(&v628);
        sub_257C9A804(v191, type metadata accessor for DetectedDoor);
        goto LABEL_297;
      }

      v491 = [v195 liveRecognitionDoorsFeedbacks];

      if (!v491)
      {
        __swift_destroy_boxed_opaque_existential_0(&v628);
        sub_257C9A804(v191, type metadata accessor for DetectedDoor);
        v530 = v613;
        *v613 = 0u;
        *(v530 + 1) = 0u;
        v530[4] = 0;
        goto LABEL_298;
      }

      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      sub_257C9CE74();
      v492 = sub_257ECFA70();

      v493 = sub_257ECFAC0();
      v494 = sub_257C409E8(v493, v492);

      sub_257C9A804(v191, type metadata accessor for DetectedDoor);
      if (v494)
      {
        goto LABEL_182;
      }

      goto LABEL_212;
    case 3u:
      sub_257C9A79C(v614, v141, type metadata accessor for MAGOutputEvent.EventType);
      v246 = *v141;
      v245 = *(v141 + 1);
      v247 = *(v141 + 4);
      v248 = v612;
      v249 = v615;
      if (*(v615 + v612[7]))
      {
        sub_257C8D0E0(*v141, *(v141 + 1), *(v141 + 4), v609, &v628);

        v250 = *(v249 + v248[6]);
        v228 = [objc_opt_self() sharedInstance];
        v229 = v228;
        if (v250 != 2)
        {
          goto LABEL_168;
        }

        goto LABEL_36;
      }

      v350 = (*(v615 + v612[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
      swift_beginAccess();
      v351 = v350[1];
      v352 = v350[2];
      *&v622 = *v350;
      *(&v622 + 1) = v351;
      *&v623 = v352;
      v353 = qword_2815447E0;

      if (v353 != -1)
      {
        v354 = swift_once();
      }

      MEMORY[0x28223BE20](v354, v355, v356, v357, v358);
      *(&v587 - 2) = &v622;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90, &unk_257EE35E0);
      sub_257ECFD50();

      v359 = sub_257C592D0(1u, v616);

      if (v359)
      {
        sub_257C8D0E0(v246, v245, v247, v609, v613);
        goto LABEL_97;
      }

      goto LABEL_96;
    case 4u:
      sub_257C9A79C(v614, v134, type metadata accessor for MAGOutputEvent.EventType);
      v253 = *(v134 + 4);
      v611 = *(v134 + 5);
      v254 = *(v134 + 2);
      v631 = *(v134 + 3);
      v632 = v253;
      v255 = *v134;
      v629 = *(v134 + 1);
      v630 = v254;
      v628 = v255;
      v256 = *(v134 + 12);
      v257 = v612;
      if (*(v615 + v612[7]))
      {
        v258 = v601;
        sub_257BE401C(v609, v601, &qword_27F8F6D50, &unk_257EDEFA0);
        if ((*(v608 + 48))(v258, 1, v257) == 1)
        {
          sub_257BE4084(v258, &qword_27F8F6D50, &unk_257EDEFA0);
          goto LABEL_280;
        }

        v450 = v599;
        sub_257C9CF58(v258, v599, type metadata accessor for MAGOutputEvent);
        v451 = MAGOutputEvent.itemIDs.getter();
        v452 = MAGOutputEvent.itemIDs.getter();
        if (v451)
        {
          if (v452)
          {
            sub_257C943E4(v451, v452);
            v454 = v453;

            if ((v454 & 1) == 0)
            {
              goto LABEL_242;
            }

LABEL_230:
            v513 = v593;
            sub_257C9A79C(v450 + v257[5], v593, type metadata accessor for MAGOutputEvent.EventType);
            if (swift_getEnumCaseMultiPayload() == 4)
            {
              v514 = *(v513 + 16);
              v622 = *v513;
              v623 = v514;
              v515 = *(v513 + 48);
              v624 = *(v513 + 32);
              v625 = v515;
              v626 = *(v513 + 64);
              v516 = *(v513 + 96);
              if (v622)
              {
                v517 = *(v513 + 80);
                v616 = v622;
                v618 = v623;
                v619 = v624;
                v620 = v625;
                v621 = v626;
                sub_257C97430(&v616, v516, 1, &v633, v517);
                v518 = v633;
                v519 = v634;
                v520 = v635;
                v521 = v636;
                v522 = v637;
                v523 = v638;

                sub_257C9A804(v450, type metadata accessor for MAGOutputEvent);
                sub_257BE4084(&v622, &qword_27F8F9C90, &unk_257EDCBD0);
                goto LABEL_281;
              }

              sub_257C9A804(v450, type metadata accessor for MAGOutputEvent);
            }

            else
            {
              sub_257C9A804(v450, type metadata accessor for MAGOutputEvent);
              sub_257C9A804(v513, type metadata accessor for MAGOutputEvent.EventType);
            }

LABEL_280:
            v518 = 0;
            v519 = 0;
            v520 = 0;
            v521 = 0;
            v522 = 0;
            v523 = 0;
LABEL_281:
            v616 = v518;
            v617 = v519;
            *&v618 = v520;
            *(&v618 + 1) = v521;
            *&v619 = v522;
            *(&v619 + 1) = v523;
            if (v628)
            {
              *&v622 = v628;
              v623 = v629;
              v624 = v630;
              v625 = v631;
              v626 = v632;
              v566 = v628;
              sub_257C97430(&v622, v256, 1, &v639, v611);

              if (v640)
              {
                v611.i64[0] = v518;
                v567 = v615;
                sub_257C98BE4(v639, v640, v641, v642, v643, v644, &v616);
                v568 = v519;
                v569 = v567;
                sub_257C9CF08(v611.i64[0], v568, v520, v521, v522, v523);

                sub_257BE4084(&v628, &qword_27F8F9C90, &unk_257EDCBD0);
                goto LABEL_287;
              }

              sub_257C9CF08(v518, v519, v520, v521, v522, v523);
              sub_257BE4084(&v628, &qword_27F8F9C90, &unk_257EDCBD0);
            }

            else
            {

              sub_257C9CF08(v518, v519, v520, v521, v522, v523);
            }

            v569 = v615;
            v627[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D60, &unk_257EDEFC0);
            v627[4] = sub_257BD2D4C(&qword_27F8F6D68, &qword_27F8F6D60, &unk_257EDEFC0, MEMORY[0x277D703A8]);
            v627[0] = MEMORY[0x277D84F90];
LABEL_287:
            v570 = *(v569 + v612[6]);
            v571 = [objc_opt_self() sharedInstance];
            v572 = v571;
            if (v570 == 2)
            {
              v573 = [v571 liveRecognitionActivity];

              if (!v573)
              {
                __swift_destroy_boxed_opaque_existential_0(v627);
                sub_257BE4084(&v628, &qword_27F8F9C90, &unk_257EDCBD0);
                goto LABEL_297;
              }

              v574 = [v573 furnitureFeedbacksSpeech];
              sub_257BE4084(&v628, &qword_27F8F9C90, &unk_257EDCBD0);

              v277 = v627;
              if (v574)
              {
                goto LABEL_183;
              }
            }

            else
            {
              v575 = [v571 liveRecognitionFurnitureFeedbacks];

              if (v575)
              {
                sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
                sub_257C9CE74();
                v576 = sub_257ECFA70();

                v577 = sub_257ECFAC0();
                v578 = sub_257C409E8(v577, v576);
                sub_257BE4084(&v628, &qword_27F8F9C90, &unk_257EDCBD0);

                v277 = v627;
                if (v578)
                {
                  goto LABEL_183;
                }
              }

              else
              {
                sub_257BE4084(&v628, &qword_27F8F9C90, &unk_257EDCBD0);
                v277 = v627;
              }
            }

            goto LABEL_296;
          }
        }

        else if (!v452)
        {
          goto LABEL_230;
        }

LABEL_242:
        sub_257C9A804(v450, type metadata accessor for MAGOutputEvent);
        goto LABEL_280;
      }

      v360 = (*(v615 + v612[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
      swift_beginAccess();
      v361 = v360[1];
      v362 = v360[2];
      *&v622 = *v360;
      *(&v622 + 1) = v361;
      *&v623 = v362;
      v363 = qword_2815447E0;

      if (v363 != -1)
      {
        v364 = swift_once();
      }

      MEMORY[0x28223BE20](v364, v365, v366, v367, v368);
      *(&v587 - 2) = &v622;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90, &unk_257EE35E0);
      sub_257ECFD50();

      v369 = sub_257C592D0(1u, v616);

      if (!v369)
      {
        v455 = v613;
        v613[4] = 0;
        *v455 = 0u;
        *(v455 + 1) = 0u;

        sub_257BE4084(&v628, &qword_27F8F9C90, &unk_257EDCBD0);
        goto LABEL_298;
      }

      v370 = v598;
      sub_257BE401C(v609, v598, &qword_27F8F6D50, &unk_257EDEFA0);
      if ((*(v608 + 48))(v370, 1, v257) == 1)
      {
        sub_257BE4084(v370, &qword_27F8F6D50, &unk_257EDEFA0);
        goto LABEL_302;
      }

      v506 = v595;
      sub_257C9CF58(v370, v595, type metadata accessor for MAGOutputEvent);
      v507 = MAGOutputEvent.itemIDs.getter();
      v508 = MAGOutputEvent.itemIDs.getter();
      if (v507)
      {
        if (v508)
        {
          sub_257C943E4(v507, v508);
          v510 = v509;

          if (v510)
          {
LABEL_247:
            v533 = v589;
            sub_257C9A79C(v506 + v257[5], v589, type metadata accessor for MAGOutputEvent.EventType);
            if (swift_getEnumCaseMultiPayload() == 4)
            {
              v534 = *(v533 + 16);
              v622 = *v533;
              v623 = v534;
              v535 = *(v533 + 48);
              v624 = *(v533 + 32);
              v625 = v535;
              v626 = *(v533 + 64);
              v536 = *(v533 + 96);
              if (v622)
              {
                v537 = *(v533 + 80);
                v616 = v622;
                v618 = v623;
                v619 = v624;
                v620 = v625;
                v621 = v626;
                sub_257C97430(&v616, v536, 1, &v633, v537);
                v538 = v633;
                v539 = v634;
                v540 = v635;
                v541 = v636;
                v542 = v637;
                v543 = v638;

                sub_257C9A804(v506, type metadata accessor for MAGOutputEvent);
                sub_257BE4084(&v622, &qword_27F8F9C90, &unk_257EDCBD0);
LABEL_303:
                v616 = v538;
                v617 = v539;
                *&v618 = v540;
                *(&v618 + 1) = v541;
                *&v619 = v542;
                *(&v619 + 1) = v543;
                if (v628)
                {
                  *&v622 = v628;
                  v623 = v629;
                  v624 = v630;
                  v625 = v631;
                  v626 = v632;
                  v580 = v628;
                  sub_257C97430(&v622, v256, 1, &v639, v611);

                  v581 = v640;
                  if (v640)
                  {
                    v612 = v539;
                    v582 = v644;
                    v610 = v643;
                    v611.i64[0] = v538;
                    v583 = v641;
                    v584 = v642;
                    v585 = v639;
                    sub_257BE4084(&v628, &qword_27F8F9C90, &unk_257EDCBD0);
                    sub_257C98BE4(v585, v581, v583, v584, v610, v582, &v616);
                    sub_257C9CF08(v611.i64[0], v612, v540, v541, v542, v543);

                    sub_257BE4084(&v628, &qword_27F8F9C90, &unk_257EDCBD0);
                    goto LABEL_298;
                  }

                  sub_257C9CF08(v538, v539, v540, v541, v542, v543);
                  sub_257BE4084(&v628, &qword_27F8F9C90, &unk_257EDCBD0);
                }

                else
                {

                  sub_257C9CF08(v538, v539, v540, v541, v542, v543);
                }

                v586 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D60, &unk_257EDEFC0);
                v565 = v613;
                v613[3] = v586;
                v565[4] = sub_257BD2D4C(&qword_27F8F6D68, &qword_27F8F6D60, &unk_257EDEFC0, MEMORY[0x277D703A8]);
                sub_257BE4084(&v628, &qword_27F8F9C90, &unk_257EDCBD0);
                goto LABEL_309;
              }

              sub_257C9A804(v506, type metadata accessor for MAGOutputEvent);
            }

            else
            {
              sub_257C9A804(v506, type metadata accessor for MAGOutputEvent);
              sub_257C9A804(v533, type metadata accessor for MAGOutputEvent.EventType);
            }

LABEL_302:
            v538 = 0;
            v539 = 0;
            v540 = 0;
            v541 = 0;
            v542 = 0;
            v543 = 0;
            goto LABEL_303;
          }

LABEL_271:
          sub_257C9A804(v506, type metadata accessor for MAGOutputEvent);
          goto LABEL_302;
        }
      }

      else if (!v508)
      {
        goto LABEL_247;
      }

      goto LABEL_271;
    case 5u:
      sub_257C9A79C(v614, v115, type metadata accessor for MAGOutputEvent.EventType);
      v141 = v115->i64[0];
      v611 = v115[1];
      v199 = v115[2].u64[0];
      v200 = v612;
      if (*(v615 + v612[7]))
      {
        v201 = v600;
        sub_257BE401C(v609, v600, &qword_27F8F6D50, &unk_257EDEFA0);
        if ((*(v608 + 48))(v201, 1, v200) == 1)
        {
          sub_257BE4084(v201, &qword_27F8F6D50, &unk_257EDEFA0);
          v202 = 0;
          v203 = 0;
          v204 = 0;
          v205 = 0;
          v206 = 0;
          v207 = 0;
          goto LABEL_253;
        }

        v610 = v199;
        v430 = v596;
        sub_257C9CF58(v201, v596, type metadata accessor for MAGOutputEvent);
        v431 = MAGOutputEvent.itemIDs.getter();
        v432 = MAGOutputEvent.itemIDs.getter();
        if (v431)
        {
          if (!v432)
          {

            sub_257C9A804(v430, type metadata accessor for MAGOutputEvent);
            v202 = 0;
            v203 = 0;
            v204 = 0;
            v205 = 0;
            v206 = 0;
            v207 = 0;
            goto LABEL_252;
          }

          sub_257C943E4(v431, v432);
          v434 = v433;

          if (v434)
          {
            goto LABEL_233;
          }
        }

        else
        {
          if (!v432)
          {
LABEL_233:
            v524 = v592;
            sub_257C9A79C(v430 + v200[5], v592, type metadata accessor for MAGOutputEvent.EventType);
            if (swift_getEnumCaseMultiPayload() == 5)
            {
              v525 = *v524;
              v526 = *(v524 + 16);
              v608 = *(v524 + 32);
              sub_257C97B70(v525, v608, 1, &v616, v526);
              v202 = v616;
              v527 = v430;
              v203 = v617;
              v528 = *(&v618 + 1);
              v609 = v618;
              v529 = v619;

              sub_257C9A804(v527, type metadata accessor for MAGOutputEvent);
              v207 = *(&v529 + 1);
              v206 = v529;
              v205 = v528;
              v204 = v609;
LABEL_252:
              v199 = v610;
LABEL_253:
              *&v628 = v202;
              *(&v628 + 1) = v203;
              v544 = v204;
              *&v629 = v204;
              *(&v629 + 1) = v205;
              v545 = v205;
              v546 = v206;
              *&v630 = v206;
              *(&v630 + 1) = v207;
              v610 = v207;
              sub_257C97B70(v141, v199, 1, &v622, v611);

              if (*(&v622 + 1))
              {
                sub_257C98BE4(v622, *(&v622 + 1), v623, *(&v623 + 1), v624, *(&v624 + 1), &v628);
                sub_257C9CF08(v202, v203, v544, v545, v546, v610);
              }

              else
              {
                sub_257C9CF08(v202, v203, v544, v545, v546, v610);
                v642 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D60, &unk_257EDEFC0);
                v643 = sub_257BD2D4C(&qword_27F8F6D68, &qword_27F8F6D60, &unk_257EDEFC0, MEMORY[0x277D703A8]);
                v639 = MEMORY[0x277D84F90];
              }

              v547 = *(v615 + v612[6]);
              v548 = [objc_opt_self() sharedInstance];
              v549 = v548;
              if (v547 == 2)
              {
                v550 = [v548 liveRecognitionActivity];

                if (v550)
                {
                  v551 = [v550 furnitureFeedbacksSpeech];

                  v277 = &v639;
                  if (v551)
                  {
                    goto LABEL_183;
                  }

                  goto LABEL_296;
                }
              }

              else
              {
                v552 = [v548 liveRecognitionFurnitureFeedbacks];

                if (v552)
                {
                  sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
                  sub_257C9CE74();
                  v553 = sub_257ECFA70();

                  v554 = sub_257ECFAC0();
                  v555 = sub_257C409E8(v554, v553);

                  if (v555)
                  {
                    v277 = &v639;
                    goto LABEL_183;
                  }
                }
              }

              v277 = &v639;
              goto LABEL_296;
            }

            sub_257C9A804(v430, type metadata accessor for MAGOutputEvent);
            v511 = type metadata accessor for MAGOutputEvent.EventType;
            v512 = v524;
LABEL_251:
            sub_257C9A804(v512, v511);
            v202 = 0;
            v203 = 0;
            v204 = 0;
            v205 = 0;
            v206 = 0;
            v207 = 0;
            goto LABEL_252;
          }
        }

        v511 = type metadata accessor for MAGOutputEvent;
        v512 = v430;
        goto LABEL_251;
      }

      v293 = (*(v615 + v612[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
      swift_beginAccess();
      v294 = v293[1];
      v295 = v293[2];
      *&v628 = *v293;
      *(&v628 + 1) = v294;
      *&v629 = v295;
      v296 = qword_2815447E0;

      if (v296 != -1)
      {
        goto LABEL_330;
      }

      goto LABEL_62;
    case 6u:
      v222 = v602;
      sub_257C9A79C(v614, v602, type metadata accessor for MAGOutputEvent.EventType);
      v223 = *v222;
      v224 = *(v222 + 16);
      v225 = v612;
      v226 = v615;
      if ((*(v615 + v612[7]) & 1) == 0)
      {
        v611 = v224;
        v330 = (*(v615 + v612[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
        swift_beginAccess();
        v331 = v330[1];
        v332 = v330[2];
        *&v622 = *v330;
        *(&v622 + 1) = v331;
        *&v623 = v332;
        v333 = qword_2815447E0;

        if (v333 != -1)
        {
          v334 = swift_once();
        }

        MEMORY[0x28223BE20](v334, v335, v336, v337, v338);
        *(&v587 - 2) = &v622;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90, &unk_257EE35E0);
        sub_257ECFD50();

        v339 = sub_257C592D0(1u, v616);

        if (v339)
        {
          sub_257C8D780(v223, v609, v613, v611);
        }

        else
        {
          v443 = v613;
          v613[4] = 0;
          *v443 = 0u;
          *(v443 + 1) = 0u;
        }

        goto LABEL_97;
      }

      sub_257C8D780(v223, v609, &v628, v224);

      v227 = *(v226 + v225[6]);
      v228 = [objc_opt_self() sharedInstance];
      v229 = v228;
      if (v227 != 2)
      {
LABEL_168:
        v442 = [v228 liveRecognitionFurnitureFeedbacks];
        goto LABEL_180;
      }

LABEL_36:
      v251 = [v228 liveRecognitionActivity];

      if (!v251)
      {
        goto LABEL_212;
      }

      v252 = [v251 furnitureFeedbacksSpeech];
      goto LABEL_52;
    case 7u:
      sub_257C9A79C(v614, v603, type metadata accessor for MAGOutputEvent.EventType);
      if ((*(v615 + v612[7]) & 1) == 0)
      {
        v340 = (*(v615 + v612[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedImageCaptionFeedbacks);
        swift_beginAccess();
        v341 = v340[1];
        v342 = v340[2];
        *&v622 = *v340;
        *(&v622 + 1) = v341;
        *&v623 = v342;
        v343 = qword_2815447E0;

        if (v343 != -1)
        {
          v344 = swift_once();
        }

        MEMORY[0x28223BE20](v344, v345, v346, v347, v348);
        *(&v587 - 2) = &v622;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8470, &unk_257EDEFB0);
        sub_257ECFD50();

        v349 = sub_257C592E8(1, v616);

        if (v349)
        {
          goto LABEL_172;
        }

        goto LABEL_96;
      }

      v230 = *(v615 + v612[6]);
      v231 = [objc_opt_self() sharedInstance];
      v232 = v231;
      if (v230 == 2)
      {
        v233 = [v231 liveRecognitionActivity];

        if (!v233)
        {
          goto LABEL_154;
        }

        if ([v233 sceneFeedbacksSpeech])
        {
          v234 = v590;
          sub_257ECD1B0();
          v235 = MEMORY[0x277D70398];
          v236 = v613;
          v237 = v611.i64[0];
          v613[3] = v611.i64[0];
          v236[4] = v235;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v236);
          (*(v591 + 32))(boxed_opaque_existential_1, v234, v237);

          goto LABEL_298;
        }

        goto LABEL_297;
      }

      v444 = [v231 liveRecognitionSceneFeedbacks];

      if (!v444)
      {
        goto LABEL_154;
      }

      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      sub_257C9CE74();
      v445 = sub_257ECFA70();

      v446 = sub_257ECFAC0();
      v447 = sub_257C409E8(v446, v445);

      if ((v447 & 1) == 0)
      {
        goto LABEL_154;
      }

      goto LABEL_172;
    case 8u:
      v268 = sub_257C9A79C(v614, v604, type metadata accessor for MAGOutputEvent.EventType);
      v273 = v612;
      v274 = v615;
      if ((*(v615 + v612[7]) & 1) == 0)
      {
        v371 = v615;
        v372 = (*(v615 + v612[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
        swift_beginAccess();
        v373 = v372[1];
        v374 = v372[2];
        *&v628 = *v372;
        *(&v628 + 1) = v373;
        *&v629 = v374;
        v375 = qword_2815447E0;

        if (v375 != -1)
        {
          v376 = swift_once();
        }

        MEMORY[0x28223BE20](v376, v377, v378, v379, v380);
        *(&v587 - 2) = &v628;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90, &unk_257EDC2B0);
        sub_257ECFD50();

        v381 = sub_257C592D0(1u, v622);

        if (v381)
        {
          MEMORY[0x28223BE20](v382, v383, v384, v385, v386);
          *(&v587 - 2) = v371;
          *(&v623 + 1) = sub_257ECD1C0();
          *&v624 = MEMORY[0x277D703A0];
          __swift_allocate_boxed_opaque_existential_1(&v622);
          type metadata accessor for DetectedTextBlock(0);
          goto LABEL_219;
        }

LABEL_96:
        v387 = v613;
        v613[4] = 0;
        *v387 = 0u;
        *(v387 + 1) = 0u;
LABEL_97:

        goto LABEL_298;
      }

      MEMORY[0x28223BE20](v268, v269, v270, v271, v272);
      *(&v587 - 2) = v274;
      *(&v618 + 1) = sub_257ECD1C0();
      *&v619 = MEMORY[0x277D703A0];
      __swift_allocate_boxed_opaque_existential_1(&v616);
      type metadata accessor for DetectedTextBlock(0);
      sub_257ECD1D0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v616);
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v622);
      v275 = *(v274 + v273[6]);
      v276 = [objc_opt_self() sharedInstance];
      v229 = v276;
      if (v275 == 2)
      {
        v251 = [v276 liveRecognitionActivity];

        if (!v251)
        {
          goto LABEL_212;
        }

        v252 = [v251 pointAndSpeakFeedbacksSpeech];
LABEL_52:
        v198 = v252;

LABEL_53:
        v277 = &v628;
        if (!v198)
        {
          goto LABEL_296;
        }
      }

      else
      {
        v442 = [v276 liveRecognitionPointAndSpeakFeedbacks];
LABEL_180:
        v456 = v442;

        if (!v456 || (sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0), sub_257C9CE74(), v457 = sub_257ECFA70(), v456, v458 = sub_257ECFAC0(), v459 = sub_257C409E8(v458, v457), v458, , (v459 & 1) == 0))
        {
LABEL_212:
          v277 = &v628;
LABEL_296:
          __swift_destroy_boxed_opaque_existential_0(v277);
          goto LABEL_297;
        }

LABEL_182:
        v277 = &v628;
      }

LABEL_183:
      sub_257BE40E4(v277, v613);
      goto LABEL_298;
    case 9u:
      v259 = v605;
      sub_257C9A79C(v614, v605, type metadata accessor for MAGOutputEvent.EventType);
      v200 = *v259;
      if (*(v615 + v612[6]))
      {
        if (*(v615 + v612[6]) == 1)
        {
          if (*(v615 + v612[7]))
          {
            v260 = [objc_opt_self() sharedInstance];
            v261 = [v260 liveRecognitionTextFeedbacks];

            if (v261)
            {
              sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
              sub_257C9CE74();
              v262 = sub_257ECFA70();

              v263 = sub_257ECFAC0();
              v264 = sub_257C409E8(v263, v262);

              if (v264)
              {
                v265 = *(v200 + 2);
                if (v265)
                {
                  v266 = 0;
                  v199 = (v200 + 8);
                  v267 = MEMORY[0x277D84F90];
                  while (v266 < *(v200 + 2))
                  {
                    v190 = *(v199 + 8 * v266);
                    v388 = *(v190 + 16);
                    v389 = v267[2];
                    v141 = (v389 + v388);
                    if (__OFADD__(v389, v388))
                    {
                      goto LABEL_324;
                    }

                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    if (!isUniquelyReferenced_nonNull_native || v141 > v267[3] >> 1)
                    {
                      if (v389 <= v141)
                      {
                        v391 = v389 + v388;
                      }

                      else
                      {
                        v391 = v389;
                      }

                      v267 = sub_257BFD440(isUniquelyReferenced_nonNull_native, v391, 1, v267);
                    }

                    if (*(v190 + 16))
                    {
                      v191 = v267[2];
                      v141 = ((v267[3] >> 1) - v191);
                      type metadata accessor for DetectedTextBlock(0);
                      if (v141 < v388)
                      {
                        goto LABEL_328;
                      }

                      swift_arrayInitWithCopy();

                      if (v388)
                      {
                        v392 = v267[2];
                        v393 = __OFADD__(v392, v388);
                        v394 = v392 + v388;
                        if (v393)
                        {
                          __break(1u);
LABEL_332:
                          v424 = swift_once();
LABEL_151:
                          MEMORY[0x28223BE20](v424, v425, v426, v427, v428);
                          *(&v587 - 2) = &v622;
                          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880, qword_257EDACA0);
                          sub_257ECFD50();

                          v429 = sub_257C592D0(1u, v616);

                          if (v429)
                          {
                            sub_257C8C0BC(v191, v190, v613);

                            sub_257C9A804(v191, type metadata accessor for DetectedDoor);
                            goto LABEL_298;
                          }

LABEL_153:
                          sub_257C9A804(v191, type metadata accessor for DetectedDoor);
                          goto LABEL_154;
                        }

                        v267[2] = v394;
                      }
                    }

                    else
                    {

                      if (v388)
                      {
                        goto LABEL_326;
                      }
                    }

                    if (v265 == ++v266)
                    {
                      goto LABEL_218;
                    }
                  }

                  __break(1u);
LABEL_324:
                  __break(1u);
LABEL_325:
                  __break(1u);
LABEL_326:
                  __break(1u);
LABEL_327:
                  __break(1u);
LABEL_328:
                  __break(1u);
LABEL_329:
                  __break(1u);
LABEL_330:
                  v297 = swift_once();
LABEL_62:
                  MEMORY[0x28223BE20](v297, v298, v299, v300, v301);
                  *(&v587 - 2) = &v628;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90, &unk_257EE35E0);
                  sub_257ECFD50();

                  v302 = sub_257C592D0(1u, v622);

                  if (!v302)
                  {
                    v435 = v613;
                    v613[4] = 0;
                    *v435 = 0u;
                    *(v435 + 1) = 0u;

                    goto LABEL_298;
                  }

                  v303 = v597;
                  sub_257BE401C(v609, v597, &qword_27F8F6D50, &unk_257EDEFA0);
                  if ((*(v608 + 48))(v303, 1, v200) == 1)
                  {
                    sub_257BE4084(v303, &qword_27F8F6D50, &unk_257EDEFA0);
LABEL_65:
                    v304 = 0;
                    v305 = 0;
                    v306 = 0;
                    v307 = 0;
                    v308 = 0;
                    v309 = 0;
LABEL_274:
                    *&v628 = v304;
                    *(&v628 + 1) = v305;
                    *&v629 = v306;
                    *(&v629 + 1) = v307;
                    *&v630 = v308;
                    *(&v630 + 1) = v309;
                    sub_257C97B70(v141, v199, 1, &v622, v611);

                    if (*(&v622 + 1))
                    {
                      v612 = v309;
                      sub_257C98BE4(v622, *(&v622 + 1), v623, *(&v623 + 1), v624, *(&v624 + 1), &v628);
                      sub_257C9CF08(v304, v305, v306, v307, v308, v612);

                      goto LABEL_298;
                    }

                    sub_257C9CF08(v304, v305, v306, v307, v308, v309);
                    v564 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D60, &unk_257EDEFC0);
                    v565 = v613;
                    v613[3] = v564;
                    v565[4] = sub_257BD2D4C(&qword_27F8F6D68, &qword_27F8F6D60, &unk_257EDEFC0, MEMORY[0x277D703A8]);
LABEL_309:
                    *v565 = MEMORY[0x277D84F90];
                    goto LABEL_298;
                  }

                  v496 = v594;
                  sub_257C9CF58(v303, v594, type metadata accessor for MAGOutputEvent);
                  v497 = MAGOutputEvent.itemIDs.getter();
                  v498 = MAGOutputEvent.itemIDs.getter();
                  if (v497)
                  {
                    if (!v498)
                    {

                      sub_257C9A804(v496, type metadata accessor for MAGOutputEvent);
                      goto LABEL_65;
                    }

                    sub_257C943E4(v497, v498);
                    v500 = v499;

                    if (v500)
                    {
                      goto LABEL_264;
                    }
                  }

                  else
                  {
                    if (!v498)
                    {
LABEL_264:
                      v556 = v588;
                      sub_257C9A79C(v496 + v200[5], v588, type metadata accessor for MAGOutputEvent.EventType);
                      if (swift_getEnumCaseMultiPayload() == 5)
                      {
                        v610 = v199;
                        sub_257C97B70(v556->i64[0], v556[2].i64[0], 1, &v616, v556[1]);
                        v612 = v616;
                        v609 = v617;
                        v557 = v496;
                        v307 = *(&v618 + 1);
                        v306 = v618;
                        v309 = *(&v619 + 1);
                        v308 = v619;
                        v199 = v610;

                        v558 = v557;
                        v304 = v612;
                        v305 = v609;
                        sub_257C9A804(v558, type metadata accessor for MAGOutputEvent);
                        goto LABEL_274;
                      }

                      sub_257C9A804(v496, type metadata accessor for MAGOutputEvent);
                      v531 = type metadata accessor for MAGOutputEvent.EventType;
                      v532 = v556;
LABEL_273:
                      sub_257C9A804(v532, v531);
                      v304 = 0;
                      v305 = 0;
                      v306 = 0;
                      v307 = 0;
                      v308 = 0;
                      v309 = 0;
                      goto LABEL_274;
                    }
                  }

                  v531 = type metadata accessor for MAGOutputEvent;
                  v532 = v496;
                  goto LABEL_273;
                }

                goto LABEL_218;
              }

LABEL_213:
              v495 = v613;
              v613[4] = 0;
              *v495 = 0u;
              *(v495 + 1) = 0u;

              goto LABEL_298;
            }

LABEL_154:

            goto LABEL_297;
          }

          v470 = (*(v615 + v612[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedTextDetectionFeedbacks);
          swift_beginAccess();
          v471 = v470[1];
          v472 = v470[2];
          *&v628 = *v470;
          *(&v628 + 1) = v471;
          *&v629 = v472;
          v473 = qword_2815447E0;

          if (v473 != -1)
          {
            v474 = swift_once();
          }

          MEMORY[0x28223BE20](v474, v475, v476, v477, v478);
          *(&v587 - 2) = &v628;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5540, qword_257ED9FD0);
          sub_257ECFD50();

          v479 = sub_257C592E8(1, v622);

          if (!v479)
          {
            goto LABEL_213;
          }

          v480 = *(v200 + 2);
          if (v480)
          {
            v199 = 0;
            v481 = MEMORY[0x277D84F90];
            while (v199 < *(v200 + 2))
            {
              v482 = *&v200[2 * v199 + 8];
              v483 = *(v482 + 16);
              v484 = v481[2];
              v485 = v484 + v483;
              if (__OFADD__(v484, v483))
              {
                goto LABEL_319;
              }

              v486 = swift_isUniquelyReferenced_nonNull_native();
              if (!v486 || v485 > v481[3] >> 1)
              {
                if (v484 <= v485)
                {
                  v487 = v484 + v483;
                }

                else
                {
                  v487 = v484;
                }

                v481 = sub_257BFD440(v486, v487, 1, v481);
              }

              if (*(v482 + 16))
              {
                v141 = v481[2];
                v488 = (v481[3] >> 1) - v141;
                type metadata accessor for DetectedTextBlock(0);
                if (v488 < v483)
                {
                  goto LABEL_325;
                }

                swift_arrayInitWithCopy();

                if (v483)
                {
                  v489 = v481[2];
                  v393 = __OFADD__(v489, v483);
                  v490 = v489 + v483;
                  if (v393)
                  {
                    goto LABEL_329;
                  }

                  v481[2] = v490;
                }
              }

              else
              {

                if (v483)
                {
                  goto LABEL_320;
                }
              }

              if (v480 == ++v199)
              {
                goto LABEL_218;
              }
            }

            goto LABEL_318;
          }

LABEL_218:

          MEMORY[0x28223BE20](v501, v502, v503, v504, v505);
          *(&v587 - 2) = v615;
          *(&v623 + 1) = sub_257ECD1C0();
          *&v624 = MEMORY[0x277D703A0];
          __swift_allocate_boxed_opaque_existential_1(&v622);
          type metadata accessor for DetectedTextBlock(0);
LABEL_219:
          sub_257ECD1D0();
          sub_257ECD130();
          __swift_destroy_boxed_opaque_existential_0(&v622);
          sub_257ECD130();
LABEL_220:
          __swift_destroy_boxed_opaque_existential_0(&v628);
          goto LABEL_298;
        }

        v407 = [objc_opt_self() sharedInstance];
        v408 = [v407 liveRecognitionActivity];

        if (!v408)
        {
          goto LABEL_154;
        }

        if ([v408 textFeedbacksSpeech])
        {
          v612 = v408;
          v409 = *(v200 + 2);
          if (v409)
          {
            v199 = 0;
            v410 = MEMORY[0x277D84F90];
            while (v199 < *(v200 + 2))
            {
              v411 = *&v200[2 * v199 + 8];
              v412 = *(v411 + 16);
              v413 = v410[2];
              v414 = v413 + v412;
              if (__OFADD__(v413, v412))
              {
                goto LABEL_316;
              }

              v415 = swift_isUniquelyReferenced_nonNull_native();
              if (!v415 || v414 > v410[3] >> 1)
              {
                if (v413 <= v414)
                {
                  v416 = v413 + v412;
                }

                else
                {
                  v416 = v413;
                }

                v410 = sub_257BFD440(v415, v416, 1, v410);
              }

              if (*(v411 + 16))
              {
                v141 = v410[2];
                v417 = (v410[3] >> 1) - v141;
                type metadata accessor for DetectedTextBlock(0);
                if (v417 < v412)
                {
                  goto LABEL_321;
                }

                swift_arrayInitWithCopy();

                if (v412)
                {
                  v418 = v410[2];
                  v393 = __OFADD__(v418, v412);
                  v419 = v418 + v412;
                  if (v393)
                  {
                    goto LABEL_327;
                  }

                  v410[2] = v419;
                }
              }

              else
              {

                if (v412)
                {
                  goto LABEL_317;
                }
              }

              if (v409 == ++v199)
              {
                goto LABEL_267;
              }
            }

            goto LABEL_315;
          }

LABEL_267:

          MEMORY[0x28223BE20](v559, v560, v561, v562, v563);
          *(&v587 - 2) = v615;
          *(&v623 + 1) = sub_257ECD1C0();
          *&v624 = MEMORY[0x277D703A0];
          __swift_allocate_boxed_opaque_existential_1(&v622);
          type metadata accessor for DetectedTextBlock(0);
          sub_257ECD1D0();
          sub_257ECD130();
          __swift_destroy_boxed_opaque_existential_0(&v622);
          sub_257ECD130();

          goto LABEL_220;
        }

LABEL_297:
        v579 = v613;
        v613[4] = 0;
        *v579 = 0u;
        *(v579 + 1) = 0u;
        goto LABEL_298;
      }

      v395 = *(v200 + 2);
      if (!v395)
      {
        goto LABEL_218;
      }

      v396 = 0;
      v397 = MEMORY[0x277D84F90];
      break;
    case 0xAu:
    case 0x10u:
      v170 = v614;
      sub_257C9A79C(v614, v610, type metadata accessor for MAGOutputEvent.EventType);
      sub_257C9A804(v170, type metadata accessor for MAGOutputEvent.EventType);
      v171 = MEMORY[0x277D70398];
      v172 = v613;
      v613[3] = v611.i64[0];
      v172[4] = v171;
      __swift_allocate_boxed_opaque_existential_1(v172);
      return sub_257ECD1B0();
    case 0xBu:
    case 0xCu:
      v174 = v614;
      sub_257C9A79C(v614, v610, type metadata accessor for MAGOutputEvent.EventType);
      v175 = MEMORY[0x277D70398];
      v176 = v613;
      v613[3] = v611.i64[0];
      v176[4] = v175;
      __swift_allocate_boxed_opaque_existential_1(v176);
      sub_257ECD1B0();
      v177 = v174;
      return sub_257C9A804(v177, type metadata accessor for MAGOutputEvent.EventType);
    case 0xDu:
      v239 = v614;
      v240 = v610;
      sub_257C9A79C(v614, v610, type metadata accessor for MAGOutputEvent.EventType);
      v241 = *v240;
      sub_257D3EF70(v613);

      v177 = v239;
      return sub_257C9A804(v177, type metadata accessor for MAGOutputEvent.EventType);
    case 0xFu:
      v242 = v606;
      sub_257C9A79C(v614, v606, type metadata accessor for MAGOutputEvent.EventType);
      v243 = *v242;
      v244 = 1 << *v242;
      if ((v244 & 0x7EFE) != 0)
      {
        LOBYTE(v628) = *v242;
      }

      else if ((v244 & 0x101) != 0)
      {
        v460 = (*(v615 + v612[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedTextDetectionFeedbacks);
        swift_beginAccess();
        v461 = v460[1];
        v462 = v460[2];
        *&v622 = *v460;
        *(&v622 + 1) = v461;
        *&v623 = v462;
        v463 = qword_2815447E0;

        if (v463 != -1)
        {
          v464 = swift_once();
        }

        MEMORY[0x28223BE20](v464, v465, v466, v467, v468);
        *(&v587 - 2) = &v622;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5540, qword_257ED9FD0);
        sub_257ECFD50();

        v469 = sub_257C592E8(1, v616);

        if (!v469)
        {
          goto LABEL_297;
        }

        LOBYTE(v622) = v243;
      }

      else
      {
        if (!UIAccessibilityIsVoiceOverRunning())
        {
          goto LABEL_297;
        }

        LOBYTE(v628) = 15;
      }

      MAGOutputAnnouncement.displayContent.getter();
      goto LABEL_172;
    case 0x11u:
    case 0x16u:
    case 0x17u:
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v289 = [objc_opt_self() bundleForClass_];
      v290 = sub_257ECF4C0();
      v291 = sub_257ECF4C0();
      v292 = [v289 localizedStringForKey:v290 value:0 table:v291];

      sub_257ECF500();
      goto LABEL_172;
    case 0x12u:
      v278 = (*(v615 + v612[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPauseDetectionModeFeedbacks);
      swift_beginAccess();
      v279 = v278[1];
      v280 = v278[2];
      *&v622 = *v278;
      *(&v622 + 1) = v279;
      *&v623 = v280;
      v281 = qword_2815447E0;

      if (v281 != -1)
      {
        v282 = swift_once();
      }

      MEMORY[0x28223BE20](v282, v283, v284, v285, v286);
      *(&v587 - 2) = &v622;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080, qword_257EDD2B0);
      sub_257ECFD50();

      v287 = sub_257C592D0(0, v616);

      if (!v287)
      {
        goto LABEL_297;
      }

      v188 = "detectionEnabled";
      v189 = 0xD00000000000001FLL;
      goto LABEL_59;
    case 0x13u:
      v178 = (*(v615 + v612[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPauseDetectionModeFeedbacks);
      swift_beginAccess();
      v179 = v178[1];
      v180 = v178[2];
      *&v622 = *v178;
      *(&v622 + 1) = v179;
      *&v623 = v180;
      v181 = qword_2815447E0;

      if (v181 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_322;
    default:
      goto LABEL_297;
  }

  while (v396 < *(v200 + 2))
  {
    v398 = *&v200[2 * v396 + 8];
    v399 = *(v398 + 16);
    v400 = v397[2];
    v401 = v400 + v399;
    if (__OFADD__(v400, v399))
    {
      goto LABEL_311;
    }

    v402 = swift_isUniquelyReferenced_nonNull_native();
    if (v402 && v401 <= v397[3] >> 1)
    {
      if (*(v398 + 16))
      {
        goto LABEL_127;
      }
    }

    else
    {
      if (v400 <= v401)
      {
        v403 = v400 + v399;
      }

      else
      {
        v403 = v400;
      }

      v397 = sub_257BFD440(v402, v403, 1, v397);
      if (*(v398 + 16))
      {
LABEL_127:
        v404 = (v397[3] >> 1) - v397[2];
        type metadata accessor for DetectedTextBlock(0);
        if (v404 < v399)
        {
          goto LABEL_313;
        }

        swift_arrayInitWithCopy();

        if (v399)
        {
          v405 = v397[2];
          v393 = __OFADD__(v405, v399);
          v406 = v405 + v399;
          if (v393)
          {
            goto LABEL_314;
          }

          v397[2] = v406;
        }

        goto LABEL_116;
      }
    }

    if (v399)
    {
      goto LABEL_312;
    }

LABEL_116:
    if (v395 == ++v396)
    {
      goto LABEL_218;
    }
  }

  __break(1u);
LABEL_311:
  __break(1u);
LABEL_312:
  __break(1u);
LABEL_313:
  __break(1u);
LABEL_314:
  __break(1u);
LABEL_315:
  __break(1u);
LABEL_316:
  __break(1u);
LABEL_317:
  __break(1u);
LABEL_318:
  __break(1u);
LABEL_319:
  __break(1u);
LABEL_320:
  __break(1u);
LABEL_321:
  __break(1u);
LABEL_322:
  v182 = swift_once();
LABEL_5:
  MEMORY[0x28223BE20](v182, v183, v184, v185, v186);
  *(&v587 - 2) = &v622;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080, qword_257EDD2B0);
  sub_257ECFD50();

  v187 = sub_257C592D0(0, v616);

  if (!v187)
  {
    goto LABEL_297;
  }

  v188 = "framing.hold.steady";
  v189 = 0xD000000000000020;
LABEL_59:
  String.localized.getter(v189, v188 | 0x8000000000000000);
LABEL_172:
  v448 = MEMORY[0x277D70398];
  v449 = v613;
  v613[3] = v611.i64[0];
  v449[4] = v448;
  __swift_allocate_boxed_opaque_existential_1(v449);
  sub_257ECD1B0();
LABEL_298:
  v177 = v614;
  return sub_257C9A804(v177, type metadata accessor for MAGOutputEvent.EventType);
}

double sub_257C8AB74@<D0>(void *a1@<X0>, Swift::Int32 a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v71 = a3;
  v72 = a4;
  v69 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v69, v6, v7, v8, v9);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50, &unk_257EDEFA0);
  MEMORY[0x28223BE20](v12 - 8, v13, v14, v15, v16);
  v18 = &v67 - v17;
  v19 = type metadata accessor for MAGOutputEvent(0);
  v20 = *(v19 - 8);
  *&v25 = MEMORY[0x28223BE20](v19, v21, v22, v23, v24).n128_u64[0];
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v28 = [a1 faceName];
    if (v28)
    {
      v29 = v28;
      v30 = sub_257ECF500();
      v32 = v31;

      v33 = generateTextToDisplay(depth:longUnitStyle:)(a2, 1);
      countAndFlagsBits = v33._countAndFlagsBits;
      object = v33._object;
      v70 = v30;
      goto LABEL_6;
    }
  }

  v68 = v27;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v37 = [objc_opt_self() bundleForClass_];
  v38 = sub_257ECF4C0();
  v39 = sub_257ECF4C0();
  v40 = [v37 localizedStringForKey:v38 value:0 table:v39];

  sub_257ECF500();
  v41 = sub_257ECF540();

  v42 = generateTextToDisplay(depth:longUnitStyle:)(a2, 1);
  object = v42._object;
  if (a1)
  {
    v70 = v41;
    countAndFlagsBits = v42._countAndFlagsBits;
    v32 = 0;
    v30 = 0;
    v27 = v68;
LABEL_6:
    sub_257BE401C(v71, v18, &qword_27F8F6D50, &unk_257EDEFA0);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {

      sub_257BE4084(v18, &qword_27F8F6D50, &unk_257EDEFA0);
LABEL_25:
      v57 = sub_257ECD1A0();
      v58 = MEMORY[0x277D70398];
      *(&v78 + 1) = v57;
      v79 = MEMORY[0x277D70398];
      __swift_allocate_boxed_opaque_existential_1(&v77);
      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v77);
      *(&v78 + 1) = v57;
      v79 = v58;
      __swift_allocate_boxed_opaque_existential_1(&v77);
      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v77);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00, &qword_257EDB260);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_257ED9BD0;
      sub_257C024BC(v76, v59 + 32);
      sub_257C024BC(v75, v59 + 72);
      MEMORY[0x259C6FC60](v74, v59);

      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(v74);
      __swift_destroy_boxed_opaque_existential_0(v75);
      __swift_destroy_boxed_opaque_existential_0(v76);
LABEL_26:
      sub_257ECD130();
      sub_257C024BC(v76, v75);
      sub_257ECD180();
      sub_257BE4084(v75, &qword_27F8F6E68, &qword_257EDF540);
      __swift_destroy_boxed_opaque_existential_0(v76);
      __swift_destroy_boxed_opaque_existential_0(&v77);
      goto LABEL_27;
    }

    sub_257C9CF58(v18, v27, type metadata accessor for MAGOutputEvent);
    sub_257C9A79C(&v27[*(v19 + 20)], v11, type metadata accessor for MAGOutputEvent.EventType);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_257C9A804(v27, type metadata accessor for MAGOutputEvent);

      v43 = type metadata accessor for MAGOutputEvent.EventType;
      v44 = v11;
LABEL_24:
      sub_257C9A804(v44, v43);
      goto LABEL_25;
    }

    v45 = object;
    v46 = *v11;
    v47 = *(v11 + 2);
    v48 = MAGOutputEvent.itemIDs.getter();
    v68 = v27;
    v49 = MAGOutputEvent.itemIDs.getter();
    if (v48)
    {
      if (v49)
      {
        sub_257C943E4(v48, v49);
        v51 = v50;

        if ((v51 & 1) == 0)
        {

LABEL_23:

          v43 = type metadata accessor for MAGOutputEvent;
          v44 = v68;
          goto LABEL_24;
        }

LABEL_16:
        if (v46 && (v52 = [v46 faceName]) != 0)
        {
          v53 = v52;
          v54 = sub_257ECF500();
          v56 = v55;

          if (v32)
          {
            if (v54 == v30 && v32 == v56)
            {

LABEL_32:

              v61 = v45;
              v79 = 0;
              v77 = 0u;
              v78 = 0u;
              sub_257ECD180();
              sub_257BE4084(&v77, &qword_27F8F6E68, &qword_257EDF540);
              goto LABEL_33;
            }

            v62 = sub_257ED0640();

            if (v62)
            {
              goto LABEL_32;
            }

LABEL_30:
            v76[3] = sub_257ECD1A0();
            v76[4] = MEMORY[0x277D70398];
            __swift_allocate_boxed_opaque_existential_1(v76);
            sub_257ECD1B0();
            sub_257ECD130();
            __swift_destroy_boxed_opaque_existential_0(v76);
            sub_257ECD130();
            sub_257C024BC(v75, v74);
            sub_257ECD180();
            sub_257BE4084(v74, &qword_27F8F6E68, &qword_257EDF540);
            __swift_destroy_boxed_opaque_existential_0(v75);
            __swift_destroy_boxed_opaque_existential_0(&v77);
            v61 = v45;
LABEL_33:
            v63 = generateTextToDisplay(depth:longUnitStyle:)(v47, 1);
            if (countAndFlagsBits == v63._countAndFlagsBits && v61 == v63._object)
            {
            }

            else
            {
              v64 = sub_257ED0640();

              if ((v64 & 1) == 0)
              {
                v75[3] = sub_257ECD1A0();
                v75[4] = MEMORY[0x277D70398];
                __swift_allocate_boxed_opaque_existential_1(v75);
                sub_257ECD1B0();
                sub_257ECD130();
                __swift_destroy_boxed_opaque_existential_0(v75);
                sub_257ECD130();
                sub_257C024BC(v74, v73);
                sub_257ECD180();
                sub_257BE4084(v73, &qword_27F8F6E68, &qword_257EDF540);
                __swift_destroy_boxed_opaque_existential_0(v74);
                __swift_destroy_boxed_opaque_existential_0(&v77);
                v65 = v68;
                goto LABEL_39;
              }
            }

            v65 = v68;

            v79 = 0;
            v77 = 0u;
            v78 = 0u;
            sub_257ECD180();
            sub_257BE4084(&v77, &qword_27F8F6E68, &qword_257EDF540);
LABEL_39:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00, &qword_257EDB260);
            v66 = swift_allocObject();
            *(v66 + 16) = xmmword_257ED9BD0;
            sub_257C024BC(v76, v66 + 32);
            sub_257C024BC(v75, v66 + 72);
            MEMORY[0x259C6FC60](v74, v66);

            sub_257ECD130();

            __swift_destroy_boxed_opaque_existential_0(v74);
            __swift_destroy_boxed_opaque_existential_0(v75);
            __swift_destroy_boxed_opaque_existential_0(v76);
            sub_257C9A804(v65, type metadata accessor for MAGOutputEvent);
            goto LABEL_26;
          }
        }

        else if (!v32)
        {
          goto LABEL_32;
        }

        goto LABEL_30;
      }
    }

    else if (!v49)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  sub_257ECD180();
  sub_257BE4084(&v77, &qword_27F8F6E68, &qword_257EDF540);
LABEL_27:
  sub_257ECD130();
  return __swift_destroy_boxed_opaque_existential_0(&v80);
}

double sub_257C8B51C@<D0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v86 = a5;
  v87 = a3;
  LODWORD(countAndFlagsBits) = a2;
  v81 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v81, v9, v10, v11, v12);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50, &unk_257EDEFA0);
  MEMORY[0x28223BE20](v15 - 8, v16, v17, v18, v19);
  v21 = &v77 - v20;
  v22 = type metadata accessor for MAGOutputEvent(0);
  v23 = *(v22 - 8);
  *&v28 = MEMORY[0x28223BE20](v22, v24, v25, v26, v27).n128_u64[0];
  v82 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v30 = [a1 faceName];
    if (v30)
    {
      v31 = v30;
      v32 = sub_257ECF500();
      v33 = v23;
      v34 = v22;
      v35 = a4;
      v36 = v14;
      v38 = v37;

      v39 = generateTextToDisplay(depth:longUnitStyle:)(countAndFlagsBits, 1);
      countAndFlagsBits = v39._countAndFlagsBits;
      object = v39._object;
      v84 = v38;
      v85 = v38;
      v14 = v36;
      v41 = v35;
      v22 = v34;
      v23 = v33;
      v78 = v32;
      v83 = v32;
      goto LABEL_6;
    }
  }

  v79 = a6;
  v80 = a4;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v43 = [objc_opt_self() bundleForClass_];
  v44 = sub_257ECF4C0();
  v45 = sub_257ECF4C0();
  v46 = [v43 localizedStringForKey:v44 value:0 table:v45];

  sub_257ECF500();
  v47 = sub_257ECF540();
  v49 = v48;

  v50 = generateTextToDisplay(depth:longUnitStyle:)(countAndFlagsBits, 1);
  object = v50._object;
  if (a1)
  {
    v83 = v47;
    v84 = 0;
    v85 = v49;
    countAndFlagsBits = v50._countAndFlagsBits;
    v78 = 0;
    v41 = v80;
LABEL_6:
    sub_257BE401C(v86, v21, &qword_27F8F6D50, &unk_257EDEFA0);
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {

      sub_257BE4084(v21, &qword_27F8F6D50, &unk_257EDEFA0);
LABEL_26:
      v64 = sub_257ECD1A0();
      v65 = MEMORY[0x277D70398];
      *(&v95 + 1) = v64;
      v96 = MEMORY[0x277D70398];
      __swift_allocate_boxed_opaque_existential_1(&v94);
      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v94);
      *(&v95 + 1) = v64;
      v96 = v65;
      __swift_allocate_boxed_opaque_existential_1(&v94);
      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v94);
      *(&v95 + 1) = v64;
      v96 = v65;
      __swift_allocate_boxed_opaque_existential_1(&v94);

      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v94);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00, &qword_257EDB260);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_257EDBBA0;
      sub_257C024BC(v93, v66 + 32);
      sub_257C024BC(v92, v66 + 72);
      sub_257C024BC(v91, v66 + 112);
      MEMORY[0x259C6FC60](v90, v66);

      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(v90);
      __swift_destroy_boxed_opaque_existential_0(v91);
      __swift_destroy_boxed_opaque_existential_0(v92);
      __swift_destroy_boxed_opaque_existential_0(v93);
LABEL_27:
      sub_257ECD130();
      sub_257C024BC(v93, v92);
      sub_257ECD180();
      sub_257BE4084(v92, &qword_27F8F6E68, &qword_257EDF540);
      __swift_destroy_boxed_opaque_existential_0(v93);
      __swift_destroy_boxed_opaque_existential_0(&v94);
      goto LABEL_28;
    }

    v51 = object;
    v52 = v82;
    sub_257C9CF58(v21, v82, type metadata accessor for MAGOutputEvent);
    sub_257C9A79C(v52 + *(v22 + 20), v14, type metadata accessor for MAGOutputEvent.EventType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_257C9A804(v52, type metadata accessor for MAGOutputEvent);

      sub_257C9A804(v14, type metadata accessor for MAGOutputEvent.EventType);
      goto LABEL_26;
    }

    v80 = v41;
    v53 = *v14;
    LODWORD(v79) = *(v14 + 2);
    v54 = *(v14 + 3);
    v81 = *(v14 + 2);
    v55 = MAGOutputEvent.itemIDs.getter();
    v56 = MAGOutputEvent.itemIDs.getter();
    if (v55)
    {
      if (!v56)
      {

        goto LABEL_25;
      }

      v86 = v54;
      sub_257C943E4(v55, v56);
      v58 = v57;

      if ((v58 & 1) == 0)
      {

LABEL_17:

LABEL_25:
        sub_257C9A804(v52, type metadata accessor for MAGOutputEvent);
        goto LABEL_26;
      }
    }

    else
    {
      v86 = v54;
      if (v56)
      {

        goto LABEL_17;
      }
    }

    v77 = v53;
    if (v53 && (v59 = [v53 faceName]) != 0)
    {
      v60 = v59;
      v61 = sub_257ECF500();
      v63 = v62;

      if (v84)
      {
        if (v61 == v78 && v84 == v63)
        {

LABEL_30:

          v68 = v87;
          v69 = v79;
          v96 = 0;
          v94 = 0u;
          v95 = 0u;
          sub_257ECD180();
          sub_257BE4084(&v94, &qword_27F8F6E68, &qword_257EDF540);
LABEL_33:
          v70 = generateTextToDisplay(depth:longUnitStyle:)(v69, 1);
          if (countAndFlagsBits == v70._countAndFlagsBits && v51 == v70._object)
          {

            v71 = v80;
          }

          else
          {
            v72 = sub_257ED0640();

            v71 = v80;
            if ((v72 & 1) == 0)
            {
              v92[3] = sub_257ECD1A0();
              v92[4] = MEMORY[0x277D70398];
              __swift_allocate_boxed_opaque_existential_1(v92);
              sub_257ECD1B0();
              sub_257ECD130();
              __swift_destroy_boxed_opaque_existential_0(v92);
              sub_257ECD130();
              sub_257C024BC(v91, v90);
              sub_257ECD180();
              sub_257BE4084(v90, &qword_27F8F6E68, &qword_257EDF540);
              __swift_destroy_boxed_opaque_existential_0(v91);
              __swift_destroy_boxed_opaque_existential_0(&v94);
              goto LABEL_39;
            }
          }

          v96 = 0;
          v94 = 0u;
          v95 = 0u;
          sub_257ECD180();
          sub_257BE4084(&v94, &qword_27F8F6E68, &qword_257EDF540);
LABEL_39:
          v73 = v77;
          if (v81 == v68 && v86 == v71)
          {
          }

          else
          {
            v74 = sub_257ED0640();

            if ((v74 & 1) == 0)
            {
              v91[3] = sub_257ECD1A0();
              v91[4] = MEMORY[0x277D70398];
              __swift_allocate_boxed_opaque_existential_1(v91);

              sub_257ECD1B0();
              sub_257ECD130();
              __swift_destroy_boxed_opaque_existential_0(v91);
              sub_257ECD130();
              sub_257C024BC(v90, v89);
              sub_257ECD180();
              sub_257BE4084(v89, &qword_27F8F6E68, &qword_257EDF540);
              __swift_destroy_boxed_opaque_existential_0(v90);
              __swift_destroy_boxed_opaque_existential_0(&v94);
              goto LABEL_45;
            }
          }

          v96 = 0;
          v94 = 0u;
          v95 = 0u;
          sub_257ECD180();
          sub_257BE4084(&v94, &qword_27F8F6E68, &qword_257EDF540);
LABEL_45:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00, &qword_257EDB260);
          v75 = swift_allocObject();
          *(v75 + 16) = xmmword_257EDBBA0;
          sub_257C024BC(v93, v75 + 32);
          sub_257C024BC(v92, v75 + 72);
          sub_257C024BC(v91, v75 + 112);
          MEMORY[0x259C6FC60](v90, v75);

          sub_257ECD130();

          __swift_destroy_boxed_opaque_existential_0(v90);
          __swift_destroy_boxed_opaque_existential_0(v91);
          __swift_destroy_boxed_opaque_existential_0(v92);
          __swift_destroy_boxed_opaque_existential_0(v93);
          sub_257C9A804(v52, type metadata accessor for MAGOutputEvent);
          goto LABEL_27;
        }

        v76 = sub_257ED0640();

        if (v76)
        {
          goto LABEL_30;
        }

LABEL_32:
        v93[3] = sub_257ECD1A0();
        v93[4] = MEMORY[0x277D70398];
        __swift_allocate_boxed_opaque_existential_1(v93);
        sub_257ECD1B0();
        sub_257ECD130();
        __swift_destroy_boxed_opaque_existential_0(v93);
        sub_257ECD130();
        sub_257C024BC(v92, v91);
        sub_257ECD180();
        sub_257BE4084(v91, &qword_27F8F6E68, &qword_257EDF540);
        __swift_destroy_boxed_opaque_existential_0(v92);
        __swift_destroy_boxed_opaque_existential_0(&v94);
        v68 = v87;
        v69 = v79;
        goto LABEL_33;
      }
    }

    else if (!v84)
    {
      goto LABEL_30;
    }

    goto LABEL_32;
  }

  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  sub_257ECD180();
  sub_257BE4084(&v94, &qword_27F8F6E68, &qword_257EDF540);
LABEL_28:
  sub_257ECD130();
  return __swift_destroy_boxed_opaque_existential_0(v97);
}

void sub_257C8C0BC(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90[1] = a3;
  *&v93 = sub_257C96638(a1);
  v94 = v7;
  v90[0] = type metadata accessor for DetectedDoor(0);
  v8 = &a1[*(v90[0] + 44)];
  v9 = *v8;
  v10 = *(a2 + 16);
  v11 = MEMORY[0x277D70398];
  v91 = a1;
  if (v10 < 2)
  {
    memset(v117, 0, 40);
    sub_257ECD180();
    sub_257BE4084(v117, &qword_27F8F6E68, &qword_257EDF540);
  }

  else
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    v14 = sub_257ECF4C0();
    v15 = sub_257ECF4C0();
    v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

    sub_257ECF500();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D83B88];
    *(v17 + 16) = xmmword_257ED6D30;
    v19 = MEMORY[0x277D83C10];
    *(v17 + 56) = v18;
    *(v17 + 64) = v19;
    *(v17 + 32) = v10;
    sub_257ECF540();

    *(&v106 + 1) = sub_257ECD1A0();
    *&v107 = v11;
    __swift_allocate_boxed_opaque_existential_1(&v105);
    sub_257ECD1B0();
    sub_257ECD130();
    __swift_destroy_boxed_opaque_existential_0(&v105);
    sub_257ECD130();
    sub_257C024BC(&v105, &v100);
    sub_257ECD180();
    sub_257BE4084(&v100, &qword_27F8F6E68, &qword_257EDF540);
    __swift_destroy_boxed_opaque_existential_0(&v105);
    __swift_destroy_boxed_opaque_existential_0(v117);
  }

  v20 = *(v4 + *(type metadata accessor for MAGOutputEvent(0) + 32));
  v21 = (v20 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedAttributes);
  swift_beginAccess();
  v22 = v21[1];
  v23 = v21[2];
  *&v117[0] = *v21;
  *(&v117[0] + 1) = v22;
  *&v117[1] = v23;
  v24 = qword_2815447E0;

  if (v24 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5A90, qword_257EDB420);
    sub_257ECFD50();

    sub_257C592D0(4u, v105);

    type metadata accessor for MAGUtilities();
    v30 = swift_getObjCClassFromMetadata();
    v31 = [objc_opt_self() bundleForClass_];
    sub_257ECC900();
    v32 = MEMORY[0x277D70398];

    v33 = sub_257ECD1A0();
    *(&v117[1] + 1) = v33;
    *&v117[2] = v32;
    __swift_allocate_boxed_opaque_existential_1(v117);
    sub_257ECD1B0();
    sub_257ECD130();
    __swift_destroy_boxed_opaque_existential_0(v117);
    v92 = v33;
    if (v94)
    {
      *(&v106 + 1) = v33;
      *&v107 = v32;
      __swift_allocate_boxed_opaque_existential_1(&v105);
      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v105);
      sub_257ECD130();
      sub_257C024BC(&v105, &v100);
      sub_257ECD180();
      sub_257BE4084(&v100, &qword_27F8F6E68, &qword_257EDF540);
      __swift_destroy_boxed_opaque_existential_0(&v105);
      __swift_destroy_boxed_opaque_existential_0(v117);
    }

    else
    {
      memset(v117, 0, 40);
      sub_257ECD180();
      sub_257BE4084(v117, &qword_27F8F6E68, &qword_257EDF540);
    }

    v34 = v20 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionAttributes;
    v35 = swift_beginAccess();
    v36 = *(v34 + 8);
    v37 = *(v34 + 16);
    *&v117[0] = *v34;
    *(&v117[0] + 1) = v36;
    LOBYTE(v117[1]) = v37;
    MEMORY[0x28223BE20](v35, v38, v39, v40, v41);

    sub_257ECFD50();

    if (v105 == 1)
    {
      if (v9)
      {
        *&v117[0] = v9;
        *(&v117[2] + 8) = *(v8 + 40);
        *(&v117[3] + 8) = *(v8 + 56);
        *(&v117[4] + 8) = *(v8 + 72);
        *(&v117[5] + 8) = *(v8 + 88);
        *(v117 + 8) = *(v8 + 8);
        *(&v117[1] + 8) = *(v8 + 24);
        sub_257D7634C();
      }

      *(&v101 + 1) = v92;
      *&v102 = v32;
      __swift_allocate_boxed_opaque_existential_1(&v100);
      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v100);
      sub_257ECD130();
      sub_257C024BC(&v100, v96);
      sub_257ECD180();
      sub_257BE4084(v96, &qword_27F8F6E68, &qword_257EDF540);
      __swift_destroy_boxed_opaque_existential_0(&v100);
      __swift_destroy_boxed_opaque_existential_0(&v105);
    }

    else
    {
      memset(v117, 0, 40);
      sub_257ECD180();
      sub_257BE4084(v117, &qword_27F8F6E68, &qword_257EDF540);
    }

    v42 = v20 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
    v43 = swift_beginAccess();
    v44 = *(v42 + 8);
    v45 = *(v42 + 16);
    *&v105 = *v42;
    *(&v105 + 1) = v44;
    LOBYTE(v106) = v45;
    MEMORY[0x28223BE20](v43, v46, v47, v48, v49);

    sub_257ECFD50();

    if (v100 != 1)
    {
      *&v102 = 0;
      v100 = 0u;
      v101 = 0u;
      sub_257ECD180();
      sub_257BE4084(&v100, &qword_27F8F6E68, &qword_257EDF540);
      goto LABEL_35;
    }

    v50 = *&v91[*(v90[0] + 48)];
    sub_257C96B18(v50);
    if (v51)
    {
      *(&v101 + 1) = v92;
      *&v102 = v32;
      __swift_allocate_boxed_opaque_existential_1(&v100);
      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v100);
      sub_257ECD130();
      sub_257C024BC(&v100, v96);
      sub_257ECD180();
      sub_257BE4084(v96, &qword_27F8F6E68, &qword_257EDF540);
      __swift_destroy_boxed_opaque_existential_0(&v100);
      __swift_destroy_boxed_opaque_existential_0(&v105);
    }

    else
    {
      *&v107 = 0;
      v105 = 0u;
      v106 = 0u;
      sub_257ECD180();
      sub_257BE4084(&v105, &qword_27F8F6E68, &qword_257EDF540);
    }

    sub_257C966D8(v50);
    v52 = &unk_257ED9000;
    v94 = v53;
    if (!v53)
    {
      break;
    }

    v54 = *(v94 + 16);
    v9 = MEMORY[0x277D84F90];
    if (!v54)
    {
LABEL_32:

      MEMORY[0x259C6FC40](&v105, v9);

      sub_257ECD130();
      sub_257C024BC(v96, v111);
      sub_257ECD180();
      sub_257BE4084(v111, &qword_27F8F6E68, &qword_257EDF540);
      __swift_destroy_boxed_opaque_existential_0(v96);
      __swift_destroy_boxed_opaque_existential_0(&v105);
      v52 = &unk_257ED9000;
      goto LABEL_34;
    }

    v55 = 0;
    v56 = (v94 + 32);
    v91 = "coration.type.sign";
    v93 = xmmword_257ED9BD0;
    while (v55 < v54)
    {
      v100 = *v56;
      v57 = v56[1];
      v58 = v56[2];
      v59 = v56[3];
      v104 = *(v56 + 8);
      v102 = v58;
      v103 = v59;
      v101 = v57;
      memmove(&v105, v56, 0x48uLL);
      if (v55)
      {
        v99 = 0;
        v97 = 0u;
        v98 = 0u;
        sub_257C241DC(&v100, v96);
        sub_257ECD180();
        sub_257BE4084(&v97, &qword_27F8F6E68, &qword_257EDF540);
      }

      else
      {
        type metadata accessor for MAGUtilities();
        v60 = swift_getObjCClassFromMetadata();
        v61 = objc_opt_self();
        sub_257C241DC(&v100, v96);
        v62 = [v61 bundleForClass_];
        v63 = sub_257ECF4C0();
        v64 = sub_257ECF4C0();
        v65 = [v62 localizedStringForKey:v63 value:0 table:v64];

        sub_257ECF500();
        v111[3] = v92;
        v111[4] = MEMORY[0x277D70398];
        __swift_allocate_boxed_opaque_existential_1(v111);
        sub_257ECD1B0();
        sub_257ECD130();
        __swift_destroy_boxed_opaque_existential_0(v111);
        sub_257ECD130();
        sub_257C024BC(&v97, v95);
        sub_257ECD180();
        sub_257BE4084(v95, &qword_27F8F6E68, &qword_257EDF540);
        __swift_destroy_boxed_opaque_existential_0(&v97);
        __swift_destroy_boxed_opaque_existential_0(v96);
      }

      v95[3] = &type metadata for DoorDecorationBlock;
      v66 = sub_257C9F1D4();
      v95[4] = v66;
      v67 = swift_allocObject();
      v95[0] = v67;
      v68 = v108;
      *(v67 + 48) = v107;
      *(v67 + 64) = v68;
      *(v67 + 80) = v109;
      v69 = v106;
      *(v67 + 16) = v105;
      *(v67 + 32) = v69;
      __swift_project_boxed_opaque_existential_1(v95, &type metadata for DoorDecorationBlock);
      v70 = *(v66 + 16);
      sub_257C241DC(&v105, v96);
      v71 = v70(&type metadata for DoorDecorationBlock, v66);
      MEMORY[0x28223BE20](v71, v72, v73, v74, v75);
      *(&v98 + 1) = sub_257ECD1C0();
      v99 = MEMORY[0x277D703A0];
      __swift_allocate_boxed_opaque_existential_1(&v97);
      sub_257ECD1D0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v97);
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(v96);
      __swift_destroy_boxed_opaque_existential_0(v95);
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00, &qword_257EDB260);
      v76 = swift_allocObject();
      *(v76 + 16) = v93;
      sub_257C024BC(v111, v76 + 32);
      sub_257C024BC(v96, v76 + 72);
      MEMORY[0x259C6FC60](&v97, v76);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_257BFDA78(0, v9[2] + 1, 1, v9);
        v110 = v9;
      }

      v79 = v9[2];
      v78 = v9[3];
      if (v79 >= v78 >> 1)
      {
        v9 = sub_257BFDA78((v78 > 1), v79 + 1, 1, v9);
        sub_257C24238(&v105);
        v110 = v9;
      }

      else
      {
        sub_257C24238(&v105);
      }

      ++v55;
      __swift_destroy_boxed_opaque_existential_0(v96);
      __swift_destroy_boxed_opaque_existential_0(v111);
      v80 = *(&v98 + 1);
      v20 = v99;
      v81 = __swift_mutable_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
      v85 = MEMORY[0x28223BE20](v81, v81, v82, v83, v84);
      v8 = v90 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v87 + 16))(v8, v85);
      sub_257C9D038(v79, v8, &v110, v80, v20);
      __swift_destroy_boxed_opaque_existential_0(&v97);
      v54 = *(v94 + 16);
      v56 = (v56 + 72);
      if (v55 == v54)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_37:
    v25 = swift_once();
  }

  *&v107 = 0;
  v105 = 0u;
  v106 = 0u;
  sub_257ECD180();
  sub_257BE4084(&v105, &qword_27F8F6E68, &qword_257EDF540);
LABEL_34:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00, &qword_257EDB260);
  v88 = swift_allocObject();
  *(v88 + 16) = v52[189];
  sub_257C024BC(v112, v88 + 32);
  sub_257C024BC(&v100, v88 + 72);
  MEMORY[0x259C6FC60](v96, v88);

  sub_257C024BC(v96, v111);
  sub_257ECD180();
  sub_257BE4084(v111, &qword_27F8F6E68, &qword_257EDF540);
  __swift_destroy_boxed_opaque_existential_0(v96);
  __swift_destroy_boxed_opaque_existential_0(&v100);
  __swift_destroy_boxed_opaque_existential_0(v112);
LABEL_35:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00, &qword_257EDB260);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_257EDC1F0;
  sub_257C024BC(v116, v89 + 32);
  sub_257C024BC(v115, v89 + 72);
  sub_257C024BC(v114, v89 + 112);
  sub_257C024BC(v113, v89 + 152);
  sub_257C024BC(&v105, v89 + 192);
  MEMORY[0x259C6FC60](v89);

  __swift_destroy_boxed_opaque_existential_0(&v105);
  __swift_destroy_boxed_opaque_existential_0(v113);
  __swift_destroy_boxed_opaque_existential_0(v114);
  __swift_destroy_boxed_opaque_existential_0(v115);
  __swift_destroy_boxed_opaque_existential_0(v116);
}

double sub_257C8D0E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Swift::Int32 a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v48 = a5;
  v9 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50, &unk_257EDEFA0);
  MEMORY[0x28223BE20](v16 - 8, v17, v18, v19, v20);
  v22 = &v46 - v21;
  v23 = type metadata accessor for MAGOutputEvent(0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25, v26, v27, v28);
  v30 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = generateTextToDisplay(depth:longUnitStyle:)(a3, 1);
  if (a2)
  {
    countAndFlagsBits = v31._countAndFlagsBits;
    sub_257BE401C(a4, v22, &qword_27F8F6D50, &unk_257EDEFA0);
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {

      sub_257BE4084(v22, &qword_27F8F6D50, &unk_257EDEFA0);
LABEL_14:
      v36 = sub_257ECD1A0();
      v37 = MEMORY[0x277D70398];
      *(&v53 + 1) = v36;
      v54 = MEMORY[0x277D70398];
      __swift_allocate_boxed_opaque_existential_1(&v52);
      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v52);
      *(&v53 + 1) = v36;
      v54 = v37;
      __swift_allocate_boxed_opaque_existential_1(&v52);
      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00, &qword_257EDB260);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_257ED9BD0;
      sub_257C024BC(v55, v38 + 32);
      sub_257C024BC(v51, v38 + 72);
      MEMORY[0x259C6FC60](v50, v38);

      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(v50);
      __swift_destroy_boxed_opaque_existential_0(v51);
      __swift_destroy_boxed_opaque_existential_0(v55);
LABEL_27:
      sub_257ECD130();
      sub_257C024BC(v51, v50);
      sub_257ECD180();
      sub_257BE4084(v50, &qword_27F8F6E68, &qword_257EDF540);
      __swift_destroy_boxed_opaque_existential_0(v51);
      __swift_destroy_boxed_opaque_existential_0(&v52);
      goto LABEL_28;
    }

    sub_257C9CF58(v22, v30, type metadata accessor for MAGOutputEvent);
    sub_257C9A79C(&v30[*(v23 + 20)], v15, type metadata accessor for MAGOutputEvent.EventType);
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      sub_257C9A804(v30, type metadata accessor for MAGOutputEvent);
      sub_257C9A804(v15, type metadata accessor for MAGOutputEvent.EventType);
      goto LABEL_14;
    }

    v32 = *(v15 + 1);
    if (v32)
    {
      v33 = *(v15 + 4);
      if (*v15 == a1 && v32 == a2)
      {
      }

      else
      {
        v35 = sub_257ED0640();

        if ((v35 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v39 = generateTextToDisplay(depth:longUnitStyle:)(v33, 1);
      if (countAndFlagsBits == v39._countAndFlagsBits && v31._object == v39._object)
      {

        goto LABEL_25;
      }

      v41 = sub_257ED0640();

      if (v41)
      {

LABEL_25:

        v54 = 0;
        v53 = 0u;
        v52 = 0u;
        sub_257ECD180();
        sub_257BE4084(&v52, &qword_27F8F6E68, &qword_257EDF540);
        goto LABEL_26;
      }
    }

    else
    {
    }

LABEL_23:
    v42 = sub_257ECD1A0();
    v43 = MEMORY[0x277D70398];
    v56 = v42;
    v57 = MEMORY[0x277D70398];
    __swift_allocate_boxed_opaque_existential_1(v55);
    sub_257ECD1B0();
    sub_257ECD130();
    __swift_destroy_boxed_opaque_existential_0(v55);
    v56 = v42;
    v57 = v43;
    __swift_allocate_boxed_opaque_existential_1(v55);
    sub_257ECD1B0();
    sub_257ECD130();
    __swift_destroy_boxed_opaque_existential_0(v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00, &qword_257EDB260);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_257ED9BD0;
    sub_257C024BC(&v52, v44 + 32);
    sub_257C024BC(v51, v44 + 72);
    MEMORY[0x259C6FC60](v50, v44);

    sub_257C024BC(v50, v49);
    sub_257ECD180();
    sub_257BE4084(v49, &qword_27F8F6E68, &qword_257EDF540);
    __swift_destroy_boxed_opaque_existential_0(v50);
    __swift_destroy_boxed_opaque_existential_0(v51);
    __swift_destroy_boxed_opaque_existential_0(&v52);
LABEL_26:
    sub_257ECD130();
    sub_257ECD130();
    __swift_destroy_boxed_opaque_existential_0(v51);
    __swift_destroy_boxed_opaque_existential_0(v55);
    sub_257C9A804(v30, type metadata accessor for MAGOutputEvent);
    goto LABEL_27;
  }

  v54 = 0;
  v53 = 0u;
  v52 = 0u;
  sub_257ECD180();
  sub_257BE4084(&v52, &qword_27F8F6E68, &qword_257EDF540);
LABEL_28:
  sub_257ECD130();
  return __swift_destroy_boxed_opaque_existential_0(v55);
}

void sub_257C8D780(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v61 = a4;
  v62 = a3;
  v63 = a1;
  v64 = 0;
  v6 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v6, v7, v8, v9, v10);
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50, &unk_257EDEFA0);
  MEMORY[0x28223BE20](v13 - 8, v14, v15, v16, v17);
  v19 = v59 - v18;
  v20 = type metadata accessor for MAGOutputEvent(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22, v23, v24, v25);
  v27 = v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BE401C(a2, v19, &qword_27F8F6D50, &unk_257EDEFA0);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_257BE4084(v19, &qword_27F8F6D50, &unk_257EDEFA0);
LABEL_17:
    v40 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  sub_257C9CF58(v19, v27, type metadata accessor for MAGOutputEvent);
  v28 = v4;
  v29 = MAGOutputEvent.itemIDs.getter();
  v30 = MAGOutputEvent.itemIDs.getter();
  if (v29)
  {
    if (!v30)
    {
LABEL_12:
      v4 = v28;
      goto LABEL_13;
    }

    sub_257C943E4(v29, v30);
    v32 = v31;

    if ((v32 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v30)
  {
LABEL_13:

LABEL_14:
    v38 = type metadata accessor for MAGOutputEvent;
    v39 = v27;
LABEL_16:
    sub_257C9A804(v39, v38);
    goto LABEL_17;
  }

  sub_257C9A79C(&v27[*(v20 + 20)], v12, type metadata accessor for MAGOutputEvent.EventType);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_257C9A804(v27, type metadata accessor for MAGOutputEvent);
    v38 = type metadata accessor for MAGOutputEvent.EventType;
    v39 = v12;
    goto LABEL_16;
  }

  v33 = *v12;
  v60 = *(v12 + 1);
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = sub_257C63CD8(*(v33 + 16), 0);
    v36 = sub_257C67308(v65, v35 + 32, v34, v33);
    v37 = v65[0];
    v28 = v65[2];
    v59[1] = v65[4];

    sub_257C02520(v37);
    if (v36 != v34)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

  v65[0] = v35;
  v41 = v64;
  sub_257C9AA00(v65);
  if (v41)
  {
    goto LABEL_28;
  }

  v54 = v65[0];
  MEMORY[0x28223BE20](v53, v55, v56, v57, v58);
  v59[-4] = v4;
  *&v59[-2] = v60;
  v40 = sub_257C83BA8(sub_257C9F3CC, &v59[-6], v54);
  v64 = 0;

  sub_257C9A804(v27, type metadata accessor for MAGOutputEvent);
LABEL_18:
  v41 = v63;
  v42 = v63[2];
  if (v42)
  {
    v63 = v4;
    v43 = sub_257C63CD8(v42, 0);
    v44 = sub_257C67308(v65, v43 + 32, v42, v41);
    v45 = v65[0];

    sub_257C02520(v45);
    if (v44 != v42)
    {
      __break(1u);
      goto LABEL_28;
    }

    v4 = v63;
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
  }

  v65[0] = v43;
  v41 = v64;
  sub_257C9AA00(v65);
  if (!v41)
  {
    v51 = v65[0];
    MEMORY[0x28223BE20](v46, v47, v48, v49, v50);
    v59[-4] = v4;
    *&v59[-2] = v61;
    v52 = sub_257C83BA8(sub_257C9F280, &v59[-6], v51);

    sub_257C991C0(v52, v40, v62);

    return;
  }

LABEL_28:

  __break(1u);
}

uint64_t MAGOutputEvent.displayContent.getter()
{
  v1 = type metadata accessor for DetectedDoor(0);
  MEMORY[0x28223BE20](v1 - 8, v2, v3, v4, v5);
  v7 = &v194 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = (&v194 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v0 + v15[5], v14, type metadata accessor for MAGOutputEvent.EventType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      v68 = v14->i64[0];
      v69 = v14->i32[2];
      if ((*(v0 + v15[7]) & 1) == 0)
      {
        v70 = (*(v0 + v15[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPeopleDetectionFeedbacks);
        swift_beginAccess();
        v71 = v70[1];
        v72 = v70[2];
        v197.i64[0] = *v70;
        v197.i64[1] = v71;
        v198.i64[0] = v72;
        v73 = qword_2815447E0;

        if (v73 != -1)
        {
          v74 = swift_once();
        }

        MEMORY[0x28223BE20](v74, v75, v76, v77, v78);
        *(&v194 - 2) = &v197;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8, &unk_257EE35D0);
        sub_257ECFD50();

        v79 = sub_257C592D0(0, v196[0]);

        if (!v79)
        {
          goto LABEL_80;
        }
      }

      v80 = sub_257C8F16C(v68, v69);
      goto LABEL_32;
    case 1:
      v68 = v14->i64[0];
      v81 = v14->i32[2];
      v83 = v14[1].i64[0];
      v82 = v14[1].i64[1];
      if ((*(v0 + v15[7]) & 1) == 0)
      {
        v84 = (*(v0 + v15[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPeopleDetectionFeedbacks);
        swift_beginAccess();
        v85 = v84[1];
        v86 = v84[2];
        v197.i64[0] = *v84;
        v197.i64[1] = v85;
        v198.i64[0] = v86;
        v87 = qword_2815447E0;

        if (v87 != -1)
        {
          v88 = swift_once();
        }

        MEMORY[0x28223BE20](v88, v89, v90, v91, v92);
        *(&v194 - 2) = &v197;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8, &unk_257EE35D0);
        sub_257ECFD50();

        v93 = sub_257C592D0(0, v196[0]);

        if (!v93)
        {

LABEL_80:

          return 0;
        }
      }

      v80 = sub_257C8F480(v68, v81, v83, v82);

LABEL_32:

      return v80;
    case 2:
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38, &qword_257EDC128);
      v34 = *(v14->i64 + *(v33 + 48));
      v35 = *(v14->f32 + *(v33 + 64));
      sub_257C9CF58(v14, v7, type metadata accessor for DetectedDoor);
      v36 = *(v34 + 16);
      if (*(v0 + v15[7]))
      {
        if (v36)
        {
          v37 = v7;
          v38 = v34;
          v39 = v35;
LABEL_54:
          v154 = sub_257C8F7CC(v37, v38, v39);

          goto LABEL_56;
        }
      }

      else if (v36)
      {
        v144 = (*(v0 + v15[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedDoorDetectionFeedbacks);
        swift_beginAccess();
        v145 = v144[1];
        v146 = v144[2];
        v197.i64[0] = *v144;
        v197.i64[1] = v145;
        v198.i64[0] = v146;
        v147 = qword_2815447E0;

        if (v147 != -1)
        {
          v148 = swift_once();
        }

        MEMORY[0x28223BE20](v148, v149, v150, v151, v152);
        *(&v194 - 2) = &v197;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880, qword_257EDACA0);
        sub_257ECFD50();

        v153 = sub_257C592D0(0, v196[0]);

        if (v153)
        {
          v37 = v7;
          v38 = v34;
          v39 = v35;
          goto LABEL_54;
        }
      }

      v154 = 0;
LABEL_56:
      sub_257C9A804(v7, type metadata accessor for DetectedDoor);
      return v154;
    case 3:
      v41 = v14->i64[0];
      v40 = v14->i64[1];
      v42 = v14[1].i32[0];
      if ((*(v0 + v15[7]) & 1) == 0)
      {
        v43 = (*(v0 + v15[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
        swift_beginAccess();
        v44 = v43[1];
        v45 = v43[2];
        v197.i64[0] = *v43;
        v197.i64[1] = v44;
        v198.i64[0] = v45;
        v46 = qword_2815447E0;

        if (v46 != -1)
        {
          v47 = swift_once();
        }

        MEMORY[0x28223BE20](v47, v48, v49, v50, v51);
        *(&v194 - 2) = &v197;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90, &unk_257EE35E0);
        sub_257ECFD50();

        v52 = sub_257C592D0(0, v196[0]);

        if (!v52)
        {
          goto LABEL_82;
        }
      }

      if (!v40)
      {
        return 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_257ED9BD0;
      v54 = MEMORY[0x277D837D0];
      *(v53 + 56) = MEMORY[0x277D837D0];
      v55 = sub_257BFB13C();
      *(v53 + 64) = v55;
      *(v53 + 32) = v41;
      *(v53 + 40) = v40;
      v56 = generateTextToDisplay(depth:longUnitStyle:)(v42, 0);
      *(v53 + 96) = v54;
      *(v53 + 104) = v55;
      *(v53 + 72) = v56;
      return sub_257ECF540();
    case 4:
      v23 = v14[4];
      v22 = v14[5];
      v24 = v14[2];
      v205 = v14[3];
      v206 = v23;
      v25 = *v14;
      v203 = v14[1];
      v204 = v24;
      v202 = v25;
      v26 = v14[6].i64[0];
      if (*(v0 + v15[7]))
      {
        v27 = v14[3];
        v199 = v14[2];
        v200 = v27;
        v201 = v14[4];
        v28 = *v14;
        v198 = v14[1];
        v197 = v28;
        v29 = v26;
LABEL_47:
        v80 = sub_257C907B4(&v197, v29, v22);

        sub_257BE4084(&v202, &qword_27F8F9C90, &unk_257EDCBD0);
        return v80;
      }

      v194 = v22;
      v114 = (*(v0 + v15[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
      swift_beginAccess();
      v115 = v114[1];
      v116 = v114[2];
      v197.i64[0] = *v114;
      v197.i64[1] = v115;
      v198.i64[0] = v116;
      v117 = qword_2815447E0;

      if (v117 != -1)
      {
        v118 = swift_once();
      }

      MEMORY[0x28223BE20](v118, v119, v120, v121, v122);
      *(&v194 - 2) = &v197;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90, &unk_257EE35E0);
      sub_257ECFD50();

      v123 = sub_257C592D0(0, v195);

      if (v123)
      {
        v199 = v204;
        v200 = v205;
        v201 = v206;
        v198 = v203;
        v197 = v202;
        v22 = v194;
        v29 = v26;
        goto LABEL_47;
      }

      sub_257BE4084(&v202, &qword_27F8F9C90, &unk_257EDCBD0);
      return 0;
    case 5:
      v94 = v14->i64[0];
      v95 = v14[1];
      v96 = v14[2].i64[0];
      if (*(v0 + v15[7]))
      {
        v97 = v14->i64[0];
        v98 = v14[2].i64[0];
LABEL_61:
        v80 = sub_257C90A14(v97, v98, v95);

        goto LABEL_68;
      }

      v194 = v14[1];
      v155 = (*(v0 + v15[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
      swift_beginAccess();
      v156 = v155[1];
      v157 = v155[2];
      v197.i64[0] = *v155;
      v197.i64[1] = v156;
      v198.i64[0] = v157;
      v158 = qword_2815447E0;

      if (v158 != -1)
      {
        v159 = swift_once();
      }

      MEMORY[0x28223BE20](v159, v160, v161, v162, v163);
      *(&v194 - 2) = &v197;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90, &unk_257EE35E0);
      sub_257ECFD50();

      v164 = sub_257C592D0(0, v196[0]);

      if (v164)
      {
        v97 = v94;
        v95 = v194;
        v98 = v96;
        goto LABEL_61;
      }

LABEL_82:

      return 0;
    case 6:
      v99 = v14->i64[0];
      v100 = v14[1];
      if (*(v0 + v15[7]))
      {
        v101 = v14->i64[0];
      }

      else
      {
        v194 = v14[1];
        v165 = (*(v0 + v15[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
        swift_beginAccess();
        v166 = v165[1];
        v167 = v165[2];
        v197.i64[0] = *v165;
        v197.i64[1] = v166;
        v198.i64[0] = v167;
        v168 = qword_2815447E0;

        if (v168 != -1)
        {
          v169 = swift_once();
        }

        MEMORY[0x28223BE20](v169, v170, v171, v172, v173);
        *(&v194 - 2) = &v197;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90, &unk_257EE35E0);
        sub_257ECFD50();

        v174 = sub_257C592D0(0, v196[0]);

        if (!v174)
        {
          goto LABEL_82;
        }

        v101 = v99;
        v100 = v194;
      }

      v113 = sub_257C90C08(v101, v100);
LABEL_67:
      v80 = v113;
LABEL_68:

      return v80;
    case 7:
      result = v14->i64[0];
      if (*(v0 + v15[7]))
      {
        return result;
      }

      v57 = v14->i64[0];
      v58 = (*(v0 + v15[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedImageCaptionFeedbacks);
      swift_beginAccess();
      v59 = v58[1];
      v60 = v58[2];
      v197.i64[0] = *v58;
      v197.i64[1] = v59;
      v198.i64[0] = v60;
      v61 = qword_2815447E0;

      if (v61 != -1)
      {
        v62 = swift_once();
      }

      MEMORY[0x28223BE20](v62, v63, v64, v65, v66);
      *(&v194 - 2) = &v197;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8470, &unk_257EDEFB0);
      sub_257ECFD50();

      v67 = sub_257C592E8(0, v196[0]);

      if (!v67)
      {
        goto LABEL_76;
      }

      return v57;
    case 8:
      v102 = v14->i64[0];
      if ((*(v0 + v15[7]) & 1) == 0)
      {
        v103 = (*(v0 + v15[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
        swift_beginAccess();
        v104 = v103[1];
        v105 = v103[2];
        v197.i64[0] = *v103;
        v197.i64[1] = v104;
        v198.i64[0] = v105;
        v106 = qword_2815447E0;

        if (v106 != -1)
        {
          v107 = swift_once();
        }

        MEMORY[0x28223BE20](v107, v108, v109, v110, v111);
        *(&v194 - 2) = &v197;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90, &unk_257EDC2B0);
        sub_257ECFD50();

        v112 = sub_257C592D0(0, v196[0]);

        if (!v112)
        {
          goto LABEL_76;
        }
      }

      sub_257C90DC8(v102, 1);
      goto LABEL_67;
    case 9:
      v30 = v14->i64[0];
      if (*(v0 + v15[6]) != 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
        v124 = swift_allocObject();
        *(v124 + 16) = xmmword_257ED9BD0;
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v126 = [objc_opt_self() bundleForClass_];
        v127 = sub_257ECF4C0();
        v128 = sub_257ECF4C0();
        v129 = [v126 localizedStringForKey:v127 value:0 table:v128];

        v130 = sub_257ECF500();
        v132 = v131;

        v133 = MEMORY[0x277D837D0];
        *(v124 + 56) = MEMORY[0x277D837D0];
        v134 = sub_257BFB13C();
        *(v124 + 64) = v134;
        *(v124 + 32) = v130;
        *(v124 + 40) = v132;
        MEMORY[0x28223BE20](v134, v135, v136, v137, v138);
        *(&v194 - 2) = v0;
        sub_257C833D4(sub_257C9CFC0, (&v194 - 2), v30);
        v140 = v139;

        v202.i64[0] = v140;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90, &qword_257EDEFD0);
        sub_257BD2D4C(&qword_27F8F6D70, &qword_27F8F9D90, &qword_257EDEFD0, MEMORY[0x277D83958]);
        v141 = sub_257ECF420();
        v143 = v142;

        *(v124 + 96) = v133;
        *(v124 + 104) = v134;
        *(v124 + 72) = v141;
        *(v124 + 80) = v143;
        return sub_257ECF540();
      }

      if (*(v0 + v15[7]))
      {
        MEMORY[0x28223BE20](EnumCaseMultiPayload, v17, v18, v19, v20);
        *(&v194 - 2) = v0;
        sub_257C833D4(sub_257C9F324, (&v194 - 2), v30);
        v32 = v31;

        v202.i64[0] = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90, &qword_257EDEFD0);
        sub_257BD2D4C(&qword_27F8F6D70, &qword_27F8F9D90, &qword_257EDEFD0, MEMORY[0x277D83958]);
LABEL_75:
        v193 = sub_257ECF420();

        return v193;
      }

      v175 = v0;
      v176 = (*(v0 + v15[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedTextDetectionFeedbacks);
      swift_beginAccess();
      v177 = v176[1];
      v178 = v176[2];
      v197.i64[0] = *v176;
      v197.i64[1] = v177;
      v198.i64[0] = v178;
      v179 = qword_2815447E0;

      if (v179 != -1)
      {
        v180 = swift_once();
      }

      MEMORY[0x28223BE20](v180, v181, v182, v183, v184);
      *(&v194 - 2) = &v197;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5540, qword_257ED9FD0);
      sub_257ECFD50();

      v185 = sub_257C592E8(0, v196[0]);

      if (v185)
      {
        MEMORY[0x28223BE20](v186, v187, v188, v189, v190);
        *(&v194 - 2) = v175;
        sub_257C833D4(sub_257C9F324, (&v194 - 2), v30);
        v192 = v191;

        v197.i64[0] = v192;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90, &qword_257EDEFD0);
        sub_257BD2D4C(&qword_27F8F6D70, &qword_27F8F9D90, &qword_257EDEFD0, MEMORY[0x277D83958]);
        goto LABEL_75;
      }

LABEL_76:

      return 0;
    case 10:
    case 11:
    case 12:
      return v14->i64[0];
    default:
      sub_257C9A804(v14, type metadata accessor for MAGOutputEvent.EventType);
      return 0;
  }
}

uint64_t sub_257C8F16C(void *a1, Swift::Int32 a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = [a1 faceName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_257ECF500();
    v7 = v6;

    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7 == 0xE000000000000000;
    }

    if (!v8 && (sub_257ED0640() & 1) == 0)
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = [objc_opt_self() bundleForClass_];
      v20 = sub_257ECF4C0();
      v21 = sub_257ECF4C0();
      v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

      sub_257ECF500();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_257ED9BD0;
      v24 = MEMORY[0x277D837D0];
      *(v23 + 56) = MEMORY[0x277D837D0];
      v25 = sub_257BFB13C();
      *(v23 + 64) = v25;
      *(v23 + 32) = v5;
      *(v23 + 40) = v7;
      v26 = generateTextToDisplay(depth:longUnitStyle:)(a2, 0);
      *(v23 + 96) = v24;
      *(v23 + 104) = v25;
      *(v23 + 72) = v26;
      goto LABEL_10;
    }
  }

  type metadata accessor for MAGUtilities();
  v9 = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_257ECF4C0();
  v12 = sub_257ECF4C0();
  v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

  sub_257ECF500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_257ED6D30;
  v15 = generateTextToDisplay(depth:longUnitStyle:)(a2, 0);
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_257BFB13C();
  *(v14 + 32) = v15;
LABEL_10:
  v16 = sub_257ECF540();

  return v16;
}

uint64_t sub_257C8F480(void *a1, Swift::Int32 a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = [a1 faceName];
  if (v7)
  {
    v8 = v7;
    v9 = sub_257ECF500();
    v11 = v10;

    if (v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 == 0xE000000000000000;
    }

    if (!v12 && (sub_257ED0640() & 1) == 0)
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v25 = [objc_opt_self() bundleForClass_];
      v26 = sub_257ECF4C0();
      v27 = sub_257ECF4C0();
      v28 = [v25 localizedStringForKey:v26 value:0 table:v27];

      sub_257ECF500();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_257EDBBA0;
      v30 = MEMORY[0x277D837D0];
      *(v29 + 56) = MEMORY[0x277D837D0];
      v31 = sub_257BFB13C();
      *(v29 + 64) = v31;
      *(v29 + 32) = v9;
      *(v29 + 40) = v11;
      v32 = generateTextToDisplay(depth:longUnitStyle:)(a2, 0);
      *(v29 + 96) = v30;
      *(v29 + 104) = v31;
      *(v29 + 72) = v32;
      *(v29 + 136) = v30;
      *(v29 + 144) = v31;
      *(v29 + 112) = a3;
      *(v29 + 120) = a4;

      goto LABEL_10;
    }
  }

  type metadata accessor for MAGUtilities();
  v13 = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = sub_257ECF4C0();
  v16 = sub_257ECF4C0();
  v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

  sub_257ECF500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_257ED9BD0;
  v19 = generateTextToDisplay(depth:longUnitStyle:)(a2, 0);
  v20 = MEMORY[0x277D837D0];
  *(v18 + 56) = MEMORY[0x277D837D0];
  v21 = sub_257BFB13C();
  *(v18 + 32) = v19;
  *(v18 + 96) = v20;
  *(v18 + 104) = v21;
  *(v18 + 64) = v21;
  *(v18 + 72) = a3;
  *(v18 + 80) = a4;

LABEL_10:
  v22 = sub_257ECF540();

  return v22;
}

uint64_t sub_257C8F7CC(uint64_t a1, uint64_t a2, float a3)
{
  v174 = sub_257ECC7D0();
  v163 = *(v174 - 8);
  MEMORY[0x28223BE20](v174, v7, v8, v9, v10);
  v173 = v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v166 = sub_257C96638(a1);
  v171 = v12;
  v164 = type metadata accessor for DetectedDoor(0);
  v165 = a1;
  v13 = (a1 + v164[11]);
  if (*v13)
  {
    v14 = *(v13 + 15);
  }

  else
  {
    v14 = 0.0;
  }

  v15 = *(a2 + 16);
  v170 = *v13;
  if (v15 < 2)
  {
    v168 = 0xE000000000000000;
    v169 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
    v16 = swift_allocObject();
    v172 = xmmword_257ED6D30;
    *(v16 + 16) = xmmword_257ED6D30;
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass_];
    v19 = sub_257ECF4C0();
    v20 = sub_257ECF4C0();
    v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

    sub_257ECF500();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D83B88];
    *(v22 + 16) = v172;
    v24 = MEMORY[0x277D83C10];
    *(v22 + 56) = v23;
    *(v22 + 64) = v24;
    *(v22 + 32) = v15;
    v25 = sub_257ECF540();
    v27 = v26;

    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 64) = sub_257BFB13C();
    *(v16 + 32) = v25;
    *(v16 + 40) = v27;
    v28 = sub_257ECF540();
    v168 = v29;
    v169 = v28;
  }

  v30 = *(v3 + *(type metadata accessor for MAGOutputEvent(0) + 32));
  v31 = (v30 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedAttributes);
  swift_beginAccess();
  v32 = v31[1];
  v33 = v31[2];
  v185 = *v31;
  *&v186 = v32;
  *(&v186 + 1) = v33;
  v34 = qword_2815447E0;

  if (v34 != -1)
  {
LABEL_55:
    v35 = swift_once();
  }

  v167 = v30;
  v40 = qword_2815447E8;
  MEMORY[0x28223BE20](v35, v36, v37, v38, v39);
  v160 = &v185;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5A90, qword_257EDB420);
  *&v172 = v40;
  v30 = 0;
  sub_257ECFD50();

  v41 = sub_257C592D0(4u, v180);

  if (v41 && v170 && v14 >= a3 && v13[56] == 1)
  {
    type metadata accessor for MAGUtilities();
    v42 = swift_getObjCClassFromMetadata();
    v43 = objc_opt_self();
    v44 = [v43 bundleForClass_];
    v160 = 0xE000000000000000;
    v45 = sub_257ECC900();
    v47 = v46;

    if (v171)
    {
      goto LABEL_15;
    }
  }

  else
  {
    type metadata accessor for MAGUtilities();
    v42 = swift_getObjCClassFromMetadata();
    v43 = objc_opt_self();
    v48 = [v43 bundleForClass_];
    v160 = 0xE000000000000000;
    v45 = sub_257ECC900();
    v47 = v49;

    if (v171)
    {
LABEL_15:

      v50 = [v43 bundleForClass_];
      v160 = 0xE000000000000000;
      sub_257ECC900();
      v51 = v167;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_257ED6D30;
      v53 = MEMORY[0x277D837D0];
      *(v52 + 56) = MEMORY[0x277D837D0];
      *(v52 + 64) = sub_257BFB13C();
      v54 = v171;
      *(v52 + 32) = v166;
      *(v52 + 40) = v54;
      v45 = sub_257ECF4D0();
      v47 = v55;

      goto LABEL_17;
    }
  }

  v53 = MEMORY[0x277D837D0];
  v51 = v167;
LABEL_17:
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
  v57 = swift_allocObject();
  v166 = xmmword_257ED9BD0;
  *(v57 + 16) = xmmword_257ED9BD0;
  *(v57 + 56) = v53;
  v58 = sub_257BFB13C();
  v59 = v168;
  *(v57 + 32) = v169;
  *(v57 + 40) = v59;
  *(v57 + 96) = v53;
  *(v57 + 104) = v58;
  *(v57 + 64) = v58;
  *(v57 + 72) = v45;
  *(v57 + 80) = v47;
  v60 = sub_257ECF540();
  v168 = v61;
  v169 = v60;
  v62 = v51 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionAttributes;
  v63 = swift_beginAccess();
  v64 = *(v62 + 8);
  v65 = *(v62 + 16);
  v185 = *v62;
  *&v186 = v64;
  BYTE8(v186) = v65;
  MEMORY[0x28223BE20](v63, v66, v67, v68, v69);
  v160 = &v185;

  sub_257ECFD50();

  if (v180 == 1 && v170)
  {
    v185 = v170;
    v188 = *(v13 + 40);
    v189 = *(v13 + 56);
    v190 = *(v13 + 72);
    v191 = *(v13 + 88);
    v186 = *(v13 + 8);
    v187 = *(v13 + 24);
    sub_257D7634C();
    v72 = v71;
    v73 = v70;
    if ((v71 || v70 != 0xE000000000000000) && (sub_257ED0640() & 1) == 0)
    {
      type metadata accessor for MAGUtilities();
      v74 = swift_getObjCClassFromMetadata();
      v75 = [objc_opt_self() bundleForClass_];
      v76 = sub_257ECF4C0();
      v77 = sub_257ECF4C0();
      v78 = [v75 localizedStringForKey:v76 value:0 table:v77];
      v170 = v58;
      v79 = v56;
      v80 = v78;

      v51 = v167;
      sub_257ECF500();

      v56 = v79;
      v58 = v170;
      v81 = swift_allocObject();
      *(v81 + 16) = v166;
      *(v81 + 56) = v53;
      *(v81 + 64) = v58;
      v82 = v168;
      *(v81 + 32) = v169;
      *(v81 + 40) = v82;
      *(v81 + 96) = v53;
      *(v81 + 104) = v58;
      *(v81 + 72) = v72;
      *(v81 + 80) = v73;
      v83 = sub_257ECF540();
      v168 = v84;
      v169 = v83;
    }
  }

  v85 = v51 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
  v86 = swift_beginAccess();
  v87 = *(v85 + 8);
  v88 = *(v85 + 16);
  *&v180 = *v85;
  *(&v180 + 1) = v87;
  LOBYTE(v181) = v88;
  MEMORY[0x28223BE20](v86, v89, v90, v91, v92);
  v160 = &v180;

  sub_257ECFD50();

  if (LOBYTE(v178[0]) != 1)
  {
    return v169;
  }

  v93 = *(v165 + v164[12]);
  sub_257C96B18(v93);
  if (v95)
  {
    if (v94 || v95 != 0xE000000000000000)
    {
      *&v172 = v94;
      v96 = v95;
      if ((sub_257ED0640() & 1) == 0)
      {
        type metadata accessor for MAGUtilities();
        v97 = swift_getObjCClassFromMetadata();
        v98 = [objc_opt_self() bundleForClass_];
        v99 = sub_257ECF4C0();
        v100 = sub_257ECF4C0();
        v101 = v56;
        v102 = [v98 localizedStringForKey:v99 value:0 table:v100];

        sub_257ECF500();
        v56 = v101;
        v103 = swift_allocObject();
        *(v103 + 16) = v166;
        *(v103 + 56) = MEMORY[0x277D837D0];
        *(v103 + 64) = v58;
        v104 = v168;
        *(v103 + 32) = v169;
        *(v103 + 40) = v104;
        *(v103 + 96) = MEMORY[0x277D837D0];
        *(v103 + 104) = v58;
        *(v103 + 72) = v172;
        *(v103 + 80) = v96;
        v105 = sub_257ECF540();
        v168 = v106;
        v169 = v105;
      }
    }
  }

  sub_257C966D8(v93);
  if (!v107)
  {
    return v169;
  }

  v108 = v107;
  v170 = v58;
  v165 = v56;
  v109 = *(v107 + 16);
  if (!v109)
  {
    v111 = 0;
    v113 = 0xE000000000000000;
    goto LABEL_50;
  }

  v110 = 0;
  v111 = 0;
  v171 = (v163 + 8);
  *&v172 = v109;
  v112 = v107 + 32;
  v161[1] = "coration.type.sign";
  v162 = v109 - 1;
  v113 = 0xE000000000000000;
  v163 = v107 + 32;
  do
  {
    v164 = v111;
    v167 = v113;
    v13 = (v112 + 72 * v110);
    v114 = v110;
    while (1)
    {
      if (v114 >= *(v108 + 16))
      {
        __break(1u);
        goto LABEL_55;
      }

      v178[0] = *v13;
      v115 = *(v13 + 1);
      v116 = *(v13 + 2);
      v117 = *(v13 + 3);
      v179 = *(v13 + 8);
      v178[2] = v116;
      v178[3] = v117;
      v178[1] = v115;
      v118 = memmove(&v180, v13, 0x48uLL);
      v176[2] = v182;
      v176[3] = v183;
      v123 = v180;
      v177 = v184;
      v176[0] = v180;
      v176[1] = v181;
      if (v180)
      {
        break;
      }

      sub_257C241DC(v178, v175);
      sub_257C24238(&v180);
LABEL_37:
      ++v114;
      v13 += 72;
      if (v109 == v114)
      {
        v113 = v167;
        v111 = v164;
        goto LABEL_50;
      }
    }

    v124 = v108;
    MEMORY[0x28223BE20](v118, v119, v120, v121, v122);
    v160 = v176;
    sub_257C241DC(v178, v175);

    sub_257C82C5C(sub_257C2428C, &v161[-4], v123);
    v126 = v125;

    v127 = sub_257E5B998(v126);

    v128 = [v127 string];

    v129 = sub_257ECF500();
    v131 = v130;

    *&v176[0] = v129;
    *(&v176[0] + 1) = v131;
    v132 = v173;
    sub_257ECC7A0();
    sub_257BDAB08();
    v133 = sub_257ED0110();
    v135 = v134;
    (*v171)(v132, v174);

    if (sub_257ECF5E0() <= 0)
    {
      sub_257C24238(&v180);

      v108 = v124;
      v109 = v172;
      goto LABEL_37;
    }

    v136 = v167;
    v137 = v164;
    if (v114 && sub_257ECF5E0())
    {
      v138 = swift_allocObject();
      *(v138 + 16) = v166;
      v139 = MEMORY[0x277D837D0];
      v140 = v170;
      *(v138 + 56) = MEMORY[0x277D837D0];
      *(v138 + 64) = v140;
      *(v138 + 32) = v137;
      *(v138 + 40) = v136;
      *(v138 + 96) = v139;
      *(v138 + 104) = v140;
      *(v138 + 72) = v133;
      *(v138 + 80) = v135;

      v111 = sub_257ECF540();
      v113 = v141;
      sub_257C24238(&v180);
    }

    else
    {
      v142 = swift_allocObject();
      *(v142 + 16) = v166;
      type metadata accessor for MAGUtilities();
      v143 = swift_getObjCClassFromMetadata();
      v144 = [objc_opt_self() bundleForClass_];
      v161[0] = v144;
      v145 = sub_257ECF4C0();
      v164 = sub_257ECF4C0();
      v146 = [v144 localizedStringForKey:v145 value:0 table:v164];

      v147 = sub_257ECF500();
      v164 = v148;

      v149 = MEMORY[0x277D837D0];
      v150 = v170;
      *(v142 + 56) = MEMORY[0x277D837D0];
      *(v142 + 64) = v150;
      v151 = v164;
      *(v142 + 32) = v147;
      *(v142 + 40) = v151;
      *(v142 + 96) = v149;
      *(v142 + 104) = v150;
      *(v142 + 72) = v133;
      *(v142 + 80) = v135;
      v111 = sub_257ECF540();
      v113 = v152;
      sub_257C24238(&v180);
    }

    v110 = v114 + 1;
    v112 = v163;
    v108 = v124;
    v109 = v172;
  }

  while (v162 != v114);
LABEL_50:

  if (sub_257ECF5E0() >= 1)
  {
    v153 = swift_allocObject();
    *(v153 + 16) = v166;
    v154 = MEMORY[0x277D837D0];
    v156 = v169;
    v155 = v170;
    *(v153 + 56) = MEMORY[0x277D837D0];
    *(v153 + 64) = v155;
    v157 = v168;
    *(v153 + 32) = v156;
    *(v153 + 40) = v157;
    *(v153 + 96) = v154;
    *(v153 + 104) = v155;
    *(v153 + 72) = v111;
    *(v153 + 80) = v113;

    v158 = sub_257ECF540();

    return v158;
  }

  return v169;
}