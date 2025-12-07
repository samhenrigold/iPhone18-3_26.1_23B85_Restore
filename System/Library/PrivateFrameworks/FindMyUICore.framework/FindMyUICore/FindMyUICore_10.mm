uint64_t sub_24B0EB79C(uint64_t *a1, uint64_t a2)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *a2;
  if (*a2)
  {
    v4 = *(a2 + 24);
    v7 = *(a2 + 8);
    v8 = v4;
    v9 = *(a2 + 40);
    sub_24B0EB930(a2, v6);
    sub_24B2D3784();
    [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
    sub_24B2D4BB4();
    CGImageGetWidth(v3);
    CGImageGetHeight(v3);
    sub_24B2D5184();
    sub_24B2D3774();

    sub_24B0EBC14(a2);
  }

  else
  {
  }
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24B0EB9AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24B0EB9F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B0EBA54(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
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

uint64_t sub_24B0EBAB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_24B0EBB24()
{
  result = qword_27EFCB208;
  if (!qword_27EFCB208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCB200, &qword_24B2E7BD0);
    sub_24B0EBBB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB208);
  }

  return result;
}

unint64_t sub_24B0EBBB0()
{
  result = qword_27EFCB210;
  if (!qword_27EFCB210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCB1F8, &qword_24B2E7BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB210);
  }

  return result;
}

uint64_t Text.init(_:localizationTable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24B2D1444();
  sub_24B2D1424();
  v6 = sub_24B2D45E4();
  v7 = sub_24B2D1454();
  (*(*(v7 - 8) + 8))(a5, v7);
  return v6;
}

uint64_t get_enum_tag_for_layout_string_12FindMyUICore9MockErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_24B0EBD58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B0EBDA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_24B0EBDE4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t type metadata accessor for OpenFindMyAction.Destination(uint64_t a1)
{
  result = qword_27EFCB218;
  if (!qword_27EFCB218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B0EBE58(uint64_t a1)
{
  result = sub_24B2D15F4();
  if (v2 <= 0x3F)
  {
    result = sub_24B2D1F24();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24B0EBEDC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24B2D15F4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_24B2D22D4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for OpenFindMyAction.Destination(0);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B0EC04C, 0, 0);
}

uint64_t sub_24B0EC04C()
{
  v21 = v0;
  sub_24B0EC76C(v0[2], v0[14]);
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[14];
  if (v3)
  {
    v5 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    sub_24B0EC76C(v4, v5);
    v8 = sub_24B2D53C4();
    v10 = v9;
    sub_24B0EC7D0(v4);
    v11 = sub_24AFF321C(v8, v10, &v20);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_24AFD2000, v1, v2, "Directions: Will run action for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C23D530](v7, -1, -1);
    MEMORY[0x24C23D530](v6, -1, -1);
  }

  else
  {

    sub_24B0EC7D0(v4);
  }

  sub_24B0EC76C(v0[2], v0[12]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      return sub_24B2D5D94();
    }

    (*(v0[5] + 32))(v0[6], v0[12], v0[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7980, &qword_24B2DFC00);
    sub_24B2D1704();
    v13 = swift_allocObject();
    v0[16] = v13;
    *(v13 + 16) = xmmword_24B2DE430;
    sub_24B2D15A4();
    sub_24B2D5694();
    v0[17] = sub_24B2D5684();
    v14 = sub_24B2D5604();
    v16 = v15;
    v17 = sub_24B0EC580;
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      return sub_24B2D5D94();
    }

    sub_24B2D5694();
    v0[15] = sub_24B2D5684();
    v14 = sub_24B2D5604();
    v16 = v18;
    v17 = sub_24B0EC3B4;
  }

  return MEMORY[0x2822009F8](v17, v14, v16);
}

uint64_t sub_24B0EC3B4()
{
  v1 = v0[10];

  sub_24B00CDE8(0, 0, 1u, v1);
  v2 = [objc_opt_self() defaultWorkspace];
  if (v2)
  {
    v3 = v2;
    v4 = sub_24B2D2294();
    v5 = sub_24B2D51D4();
    [v3 openSensitiveURL:v4 withOptions:v5];
  }

  (*(v0[8] + 8))(v0[10], v0[7]);

  return MEMORY[0x2822009F8](sub_24B0EC4D8, 0, 0);
}

uint64_t sub_24B0EC4D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B0EC580()
{
  v1 = v0[16];
  v2 = v0[9];

  sub_24B00CDE8(v1, 0, 1u, v2);

  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    v5 = sub_24B2D2294();
    v6 = sub_24B2D51D4();
    [v4 openSensitiveURL:v5 withOptions:v6];
  }

  (*(v0[8] + 8))(v0[9], v0[7]);

  return MEMORY[0x2822009F8](sub_24B0EC6AC, 0, 0);
}

uint64_t sub_24B0EC6AC()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24B0EC76C(uint64_t a1, uint64_t a2)
{
  My = type metadata accessor for OpenFindMyAction.Destination(0);
  (*(*(My - 8) + 16))(a2, a1, My);
  return a2;
}

uint64_t sub_24B0EC7D0(uint64_t a1)
{
  My = type metadata accessor for OpenFindMyAction.Destination(0);
  (*(*(My - 8) + 8))(a1, My);
  return a1;
}

uint64_t EnvironmentValues.serverImageCache.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B0EC868(a1, a2, a3);
  sub_24B2D3C74();
  return v4;
}

unint64_t sub_24B0EC868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB228;
  if (!qword_27EFCB228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB228);
  }

  return result;
}

void *sub_24B0EC8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_24B0EC868(a1, a2, a3);
  result = sub_24B2D3C74();
  *a4 = v6;
  return result;
}

uint64_t sub_24B0EC90C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_24B0EC868(a1, a2, a3);

  return sub_24B2D3C84();
}

uint64_t (*EnvironmentValues.serverImageCache.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = v3;
  a1[3] = sub_24B0EC868(a1, a2, a3);
  sub_24B2D3C74();
  return sub_24B0ECA08;
}

uint64_t sub_24B0ECA08(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_24B2D3C84();
  }

  sub_24B2D3C84();
}

uint64_t ServerImageCacheRequest.init(info:detailedImage:displayScale:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_24B2D1D34();
  (*(*(v8 - 8) + 32))(a3, a1, v8);
  result = type metadata accessor for ServerImageCacheRequest(0);
  *(a3 + *(result + 20)) = a2;
  *(a3 + *(result + 24)) = a4;
  return result;
}

uint64_t type metadata accessor for ServerImageCacheRequest(uint64_t a1)
{
  result = qword_27EFCB258;
  if (!qword_27EFCB258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ServerImageCacheRequest.identifier.getter()
{
  v0 = sub_24B2D1D04();
  v58 = *(v0 - 8);
  v59 = v0;
  MEMORY[0x28223BE20](v0);
  v57 = v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_24B2D2024();
  v61 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = 0;
  v66 = 0xE000000000000000;
  v63 = sub_24B2D1D24();
  v64 = v6;
  v7 = sub_24B2D2014();
  v10 = sub_24AFFE0A4(v7, v8, v9);
  v11 = MEMORY[0x277D837D0];
  v12 = sub_24B2D5AD4();
  v14 = v13;
  v16 = *(v3 + 8);
  v15 = v3 + 8;
  v60 = v16;
  v16(v5, v2);

  if (v14)
  {
    v17 = v12;
  }

  else
  {
    v17 = 0x6E776F6E6B6E75;
  }

  if (!v14)
  {
    v14 = 0xE700000000000000;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A78, &qword_24B2E36E0);
  v19 = swift_allocObject();
  v62 = xmmword_24B2DE430;
  *(v19 + 16) = xmmword_24B2DE430;
  *(v19 + 56) = v11;
  v22 = sub_24B075024(v19, v20, v21);
  *(v19 + 64) = v22;
  *(v19 + 32) = v17;
  *(v19 + 40) = v14;
  v23 = sub_24B2D53A4();
  MEMORY[0x24C23BC10](v23);

  v24 = v56[4];
  v63 = sub_24B2D1CE4();
  v64 = v25;
  sub_24B2D2014();
  v56[2] = v10;
  v26 = sub_24B2D5AD4();
  v28 = v27;
  v56[1] = v15;
  v60(v5, v61);

  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v26 = 0x6E776F6E6B6E75;
    v29 = 0xE700000000000000;
  }

  v30 = v24;
  v56[3] = v18;
  v31 = swift_allocObject();
  *(v31 + 16) = v62;
  *(v31 + 56) = v11;
  *(v31 + 64) = v22;
  *(v31 + 32) = v26;
  *(v31 + 40) = v29;
  v32 = sub_24B2D53A4();
  MEMORY[0x24C23BC10](v32);

  v33 = sub_24B2D1CD4();
  if (v34)
  {
    v63 = v33;
    v64 = v34;
    sub_24B2D2014();
    v35 = MEMORY[0x277D837D0];
    v36 = sub_24B2D5AD4();
    v38 = v37;
    v60(v5, v61);

    if (v38)
    {
      v39 = swift_allocObject();
      *(v39 + 16) = v62;
      *(v39 + 56) = v35;
      *(v39 + 64) = v22;
      *(v39 + 32) = v36;
      *(v39 + 40) = v38;
      v40 = sub_24B2D53A4();
      MEMORY[0x24C23BC10](v40);
    }
  }

  MEMORY[0x24C23BC10](45, 0xE100000000000000);
  v41 = v57;
  sub_24B2D1D14();
  v42 = sub_24B2D1CF4();
  v44 = v43;
  (*(v58 + 8))(v41, v59);
  v63 = v42;
  v64 = v44;

  MEMORY[0x24C23BC10](45, 0xE100000000000000);

  MEMORY[0x24C23BC10](v63, v64);

  v45 = type metadata accessor for ServerImageCacheRequest(0);
  if (*(v30 + *(v45 + 20)))
  {
    v46 = 0x786F626F666E69;
  }

  else
  {
    v46 = 0x696C656372756F73;
  }

  if (*(v30 + *(v45 + 20)))
  {
    v47 = 0xE700000000000000;
  }

  else
  {
    v47 = 0xEA00000000007473;
  }

  MEMORY[0x24C23BC10](v46, v47);

  v48 = *(v30 + *(v45 + 24));
  if (v48 == 1.0)
  {
    v49 = 0;
    v50 = 0xE000000000000000;
  }

  else
  {
    v51 = swift_allocObject();
    *(v51 + 16) = v62;
    *(v51 + 56) = MEMORY[0x277D85048];
    *(v51 + 64) = sub_24B0ED0BC(v51, v52, v53);
    *(v51 + 32) = v48;
    v49 = sub_24B2D53A4();
    v50 = v54;
  }

  MEMORY[0x24C23BC10](v49, v50);

  MEMORY[0x24C23BC10](1735290926, 0xE400000000000000);
  return v65;
}

unint64_t sub_24B0ED0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB230;
  if (!qword_27EFCB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB230);
  }

  return result;
}

uint64_t sub_24B0ED110@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v1 = sub_24B2D1D04();
  v58 = *(v1 - 8);
  v59 = v1;
  MEMORY[0x28223BE20](v1);
  v57 = v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24B2D2024();
  v62 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = 0xD000000000000037;
  v67 = 0x800000024B2DB520;
  v64 = sub_24B2D1D24();
  v65 = v7;
  v8 = sub_24B2D2014();
  v11 = sub_24AFFE0A4(v8, v9, v10);
  v12 = MEMORY[0x277D837D0];
  v13 = sub_24B2D5AD4();
  v15 = v14;
  v17 = *(v4 + 8);
  v16 = v4 + 8;
  v61 = v17;
  v17(v6, v3);

  if (v15)
  {
    v18 = v13;
  }

  else
  {
    v18 = 0x6E776F6E6B6E75;
  }

  if (!v15)
  {
    v15 = 0xE700000000000000;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A78, &qword_24B2E36E0);
  v20 = swift_allocObject();
  v63 = xmmword_24B2DE430;
  *(v20 + 16) = xmmword_24B2DE430;
  *(v20 + 56) = v12;
  v23 = sub_24B075024(v20, v21, v22);
  *(v20 + 64) = v23;
  *(v20 + 32) = v18;
  *(v20 + 40) = v15;
  v24 = sub_24B2D53A4();
  MEMORY[0x24C23BC10](v24);

  v25 = v56[3];
  v64 = sub_24B2D1CE4();
  v65 = v26;
  sub_24B2D2014();
  v56[1] = v11;
  v27 = sub_24B2D5AD4();
  v29 = v28;
  v56[0] = v16;
  v61(v6, v62);

  if (v29)
  {
    v30 = v29;
  }

  else
  {
    v27 = 0x6E776F6E6B6E75;
    v30 = 0xE700000000000000;
  }

  v56[2] = v19;
  v31 = swift_allocObject();
  *(v31 + 16) = v63;
  *(v31 + 56) = v12;
  *(v31 + 64) = v23;
  *(v31 + 32) = v27;
  *(v31 + 40) = v30;
  v32 = sub_24B2D53A4();
  MEMORY[0x24C23BC10](v32);

  v33 = sub_24B2D1CD4();
  if (v34)
  {
    v64 = v33;
    v65 = v34;
    sub_24B2D2014();
    v35 = MEMORY[0x277D837D0];
    v36 = sub_24B2D5AD4();
    v38 = v37;
    v61(v6, v62);

    if (v38)
    {
      v39 = swift_allocObject();
      *(v39 + 16) = v63;
      *(v39 + 56) = v35;
      *(v39 + 64) = v23;
      *(v39 + 32) = v36;
      *(v39 + 40) = v38;
      v40 = sub_24B2D53A4();
      MEMORY[0x24C23BC10](v40);
    }
  }

  MEMORY[0x24C23BC10](47, 0xE100000000000000);
  v41 = v57;
  sub_24B2D1D14();
  v42 = sub_24B2D1CF4();
  v44 = v43;
  (*(v58 + 8))(v41, v59);
  v64 = v42;
  v65 = v44;

  MEMORY[0x24C23BC10](45, 0xE100000000000000);

  MEMORY[0x24C23BC10](v64, v65);

  v45 = type metadata accessor for ServerImageCacheRequest(0);
  if (*(v25 + *(v45 + 20)))
  {
    v46 = 0x786F626F666E69;
  }

  else
  {
    v46 = 0x696C656372756F73;
  }

  if (*(v25 + *(v45 + 20)))
  {
    v47 = 0xE700000000000000;
  }

  else
  {
    v47 = 0xEA00000000007473;
  }

  MEMORY[0x24C23BC10](v46, v47);

  v48 = *(v25 + *(v45 + 24));
  if (v48 == 1.0)
  {
    v49 = 0;
    v50 = 0xE000000000000000;
  }

  else
  {
    v51 = swift_allocObject();
    *(v51 + 16) = v63;
    *(v51 + 56) = MEMORY[0x277D85048];
    *(v51 + 64) = sub_24B0ED0BC(v51, v52, v53);
    *(v51 + 32) = v48;
    v49 = sub_24B2D53A4();
    v50 = v54;
  }

  MEMORY[0x24C23BC10](v49, v50);

  MEMORY[0x24C23BC10](1735290926, 0xE400000000000000);
  sub_24B2D22B4();
}

uint64_t ServerImageCacheRequest.produceData()()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC9330, &unk_24B2E0480);
  v1[3] = swift_task_alloc();
  v2 = sub_24B2D22D4();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B0ED760, 0, 0);
}

uint64_t sub_24B0ED760()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_24B0ED110(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = sub_24B00D684(v0[3]);
    sub_24B0EDBC4(v4, v5, v6);
    swift_allocError();
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
    v9 = [objc_opt_self() defaultSessionConfiguration];
    v0[7] = v9;
    [v9 setHTTPShouldUsePipelining_];
    v0[8] = [objc_opt_self() sessionWithConfiguration_];
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_24B0ED938;
    v11 = v0[6];

    return MEMORY[0x28211ED00](v11, 0);
  }
}

uint64_t sub_24B0ED938(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *v4;
  *(*v4 + 80) = v3;

  if (v3)
  {
    v9 = sub_24B0EDB20;
  }

  else
  {

    *(v8 + 88) = a2;
    *(v8 + 96) = a1;
    v9 = sub_24B0EDA74;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_24B0EDA74()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);

  return v5(v6, v7);
}

uint64_t sub_24B0EDB20()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_24B0EDBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB238;
  if (!qword_27EFCB238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB238);
  }

  return result;
}

BOOL static ServerImageCacheRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x24C2384A0]() & 1) != 0 && (v4 = type metadata accessor for ServerImageCacheRequest(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t ServerImageCacheRequest.hash(into:)(uint64_t a1)
{
  sub_24B2D1D34();
  sub_24B0EDFEC(&qword_27EFCB240, MEMORY[0x277D08DF0], MEMORY[0x277D08DF8]);
  sub_24B2D5254();
  v2 = type metadata accessor for ServerImageCacheRequest(0);
  sub_24B2D6104();
  v3 = *(v1 + *(v2 + 24));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return MEMORY[0x24C23C8F0](*&v3);
}

uint64_t ServerImageCacheRequest.hashValue.getter()
{
  sub_24B2D60E4();
  sub_24B2D1D34();
  sub_24B0EDFEC(&qword_27EFCB240, MEMORY[0x277D08DF0], MEMORY[0x277D08DF8]);
  sub_24B2D5254();
  v1 = type metadata accessor for ServerImageCacheRequest(0);
  sub_24B2D6104();
  v2 = *(v0 + *(v1 + 24));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x24C23C8F0](*&v2);
  return sub_24B2D6124();
}

uint64_t sub_24B0EDE04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24B0E66F4;

  return ServerImageCacheRequest.produceData()();
}

uint64_t sub_24B0EDE98(uint64_t a1, uint64_t a2)
{
  sub_24B2D60E4();
  sub_24B2D1D34();
  sub_24B0EDFEC(&qword_27EFCB240, MEMORY[0x277D08DF0], MEMORY[0x277D08DF8]);
  sub_24B2D5254();
  sub_24B2D6104();
  v4 = *(v2 + *(a2 + 24));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x24C23C8F0](*&v4);
  return sub_24B2D6124();
}

uint64_t sub_24B0EDFEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B0EE0C4(uint64_t a1)
{
  result = sub_24B2D1D34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24B0EE15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB268;
  if (!qword_27EFCB268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB268);
  }

  return result;
}

uint64_t _s12FindMyUICore22ServerImageCacheResultV4dataAC10Foundation4DataV_t0aB4Core0jfG19InitializationErrorOYKcfC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_24B0E6D60(a1, a2);
  v9 = sub_24B2D22E4();
  v10 = [v8 initWithData_];

  sub_24AFF7AE8(a1, a2);
  if (v10)
  {
    result = sub_24AFF7AE8(a1, a2);
    *a4 = v10;
  }

  else
  {
    v12 = *MEMORY[0x277D08D40];
    v13 = sub_24B2D1A34();
    (*(*(v13 - 8) + 104))(a3, v12, v13);
    sub_24B0E6DB4();
    swift_willThrowTypedImpl();
    return sub_24AFF7AE8(a1, a2);
  }

  return result;
}

uint64_t _s12FindMyUICore22ServerImageCacheResultV3urlAC10Foundation3URLV_t0aB4Core04DatafG19InitializationErrorOYKcfC(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D08D40];
  v5 = sub_24B2D1A34();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  sub_24B0E6DB4();
  swift_willThrowTypedImpl();
  v6 = sub_24B2D22D4();
  return (*(*(v6 - 8) + 8))(a1, v6);
}

uint64_t ServerImageCacheResult.data.getter()
{
  v1 = UIImagePNGRepresentation(*v0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24B2D2304();

  return v3;
}

uint64_t sub_24B0EE408@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v16 = a3;
  v7 = sub_24B2D1A34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_24B0E6D60(a1, a2);
  v12 = sub_24B2D22E4();
  v13 = [v11 initWithData_];

  sub_24AFF7AE8(a1, a2);
  if (v13)
  {
    result = sub_24AFF7AE8(a1, a2);
    *a4 = v13;
  }

  else
  {
    (*(v8 + 104))(v10, *MEMORY[0x277D08D40], v7);
    sub_24B0E6DB4();
    swift_willThrowTypedImpl();
    sub_24AFF7AE8(a1, a2);
    return (*(v8 + 32))(v16, v10, v7);
  }

  return result;
}

uint64_t Text(separating:_:)(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_24B2D2214();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB270, &unk_24B2EBD40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v41 - v14;
  sub_24B0EE8F4(a1, v41 - v14);
  v16 = *(v4 + 48);
  v17 = v16(v15, 1, v3);
  v44 = 0;
  v45 = 0;
  v18 = 0;
  v19 = 0;
  if (v17 != 1)
  {
    (*(v4 + 32))(v9, v15, v3);
    (*(v4 + 16))(v6, v9, v3);
    v20 = sub_24B2D45F4();
    v44 = v21;
    v45 = v20;
    v18 = v22;
    v24 = v23;
    (*(v4 + 8))(v9, v3);
    v19 = v24 & 1;
  }

  v42 = v19;
  sub_24B0EE8F4(v43, v12);
  v25 = v18;
  if (v16(v12, 1, v3) == 1)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
  }

  else
  {
    (*(v4 + 32))(v9, v12, v3);
    (*(v4 + 16))(v6, v9, v3);
    v26 = sub_24B2D45F4();
    v27 = v30;
    v32 = v31;
    v29 = v33;
    (*(v4 + 8))(v9, v3);
    v28 = v32 & 1;
  }

  v34 = v44;
  v35 = v45;
  v36 = v42;
  v37 = Text(separating:_:)(v45, v25, v42, v44, v26, v27, v28, v29);
  v43 = v38;
  v41[1] = v39;
  sub_24B09ADC8(v35, v25, v36, v34);
  sub_24B09ADC8(v26, v27, v28, v29);
  return v37;
}

uint64_t sub_24B0EE8F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB270, &unk_24B2EBD40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Text(separating:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v16 = sub_24B2D3D64();
  MEMORY[0x28223BE20](v16 - 8);
  if (a4)
  {
    if (a8)
    {
      sub_24B09AD84(a1, a2, a3, a4);
      sub_24B09AD84(a5, a6, a7, a8);
      sub_24B2D3D54();
      sub_24B2D3D44();
      sub_24B2D3D24();
      sub_24B2D3D44();
      sub_24B2D3D24();
      sub_24B2D3D44();
      v17 = sub_24B2D3D84();
      v23 = v18;
      v24 = v17;
      type metadata accessor for UIBaseModule();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v20 = [objc_opt_self() bundleForClass_];
      v21 = sub_24B2D45E4();
      sub_24B083C34(a5, a6, a7 & 1);

      sub_24B083C34(a1, a2, a3 & 1);

      return v21;
    }

    else
    {
      sub_24B083C44(a1, a2, a3 & 1);
    }
  }

  else
  {
    if (a8)
    {
      sub_24B083C44(a5, a6, a7 & 1);
    }

    return a5;
  }

  return a1;
}

uint64_t ItemModel.ImageDefinition.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24B2D1D84();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D08E00])
  {
    (*(v5 + 96))(v8, v4);
    v10 = sub_24B2D1D34();
    (*(*(v10 - 8) + 32))(a1, v8, v10);
    type metadata accessor for Icon(0);
    return swift_storeEnumTagMultiPayload();
  }

  else if (v9 == *MEMORY[0x277D08E18])
  {
    (*(v5 + 96))(v8, v4);
    v12 = sub_24B2D1D74();
    (*(*(v12 - 8) + 32))(a1, v8, v12);
    type metadata accessor for Icon(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_24B2D1D54();
    type metadata accessor for Icon(0);
    swift_storeEnumTagMultiPayload();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t ItemWithLocationModel.symbol()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24B2D1CA4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24B2D1F24();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2, v12);
  sub_24B2D1CB4();
  (*(v11 + 8))(v14, v10);
  v15 = (*(v7 + 88))(v9, v6);
  if (v15 == *MEMORY[0x277D08DE8])
  {
    v16 = sub_24B2D1BB4();
    return (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
  }

  else if (v15 == *MEMORY[0x277D08DE0] || v15 == *MEMORY[0x277D08DD0] || v15 == *MEMORY[0x277D08DD8])
  {
    sub_24B2D1AF4();
    v20 = sub_24B2D1BB4();
    return (*(*(v20 - 8) + 56))(a3, 0, 1, v20);
  }

  else
  {
    v21 = sub_24B2D1BB4();
    (*(*(v21 - 8) + 56))(a3, 1, 1, v21);
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t ItemWithLocationModel.componentsInfo(forceNowRecencyKey:maxLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char *a6, uint64_t a7, uint64_t a8)
{
  v79 = a6;
  LODWORD(v76) = a5;
  v84 = a3;
  v85 = a4;
  v82 = a1;
  v83 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278, &unk_24B2EC3C0);
  MEMORY[0x28223BE20](v11 - 8);
  v78 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB280, &qword_24B2F4430);
  MEMORY[0x28223BE20](v13 - 8);
  v70 = &v69 - v14;
  v75 = sub_24B2D1C84();
  v91 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_24B2D1F24();
  v90 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB270, &unk_24B2EBD40);
  MEMORY[0x28223BE20](v18 - 8);
  v81 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v80 = &v69 - v21;
  MEMORY[0x28223BE20](v22);
  v87 = &v69 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v69 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v69 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB290, &qword_24B2F47B0);
  MEMORY[0x28223BE20](v30);
  v88 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v86 = &v69 - v33;
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v69 - v36;
  v89 = v38;
  (*(a8 + 16))(a7, a8, v35);
  v39 = *(a8 + 32);
  v72 = a7;
  v39(a7, a8);
  v77 = v37;
  sub_24B2D1884();
  sub_24AFF8258(v29, &qword_27EFCB288, &unk_24B2EBD20);
  v76 = *(a8 + 8);
  v71 = v8;
  v76(a7, a8);
  v40 = v73;
  sub_24B2D1C94();
  v41 = *(v90 + 8);
  v90 += 8;
  v42 = v17;
  v43 = v74;
  v41(v17, v74);
  v79 = v26;
  sub_24B2D1C64();
  v44 = *(v91 + 8);
  v91 += 8;
  v45 = v75;
  v44(v40, v75);
  v46 = v72;
  v76(v72, a8);
  sub_24B2D1C94();
  v41(v42, v43);
  sub_24B2D1C74();
  v44(v40, v45);
  v47 = v78;
  (*(a8 + 24))(v46, a8);
  v48 = sub_24B2D1824();
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v47, 1, v48) == 1)
  {
    v50 = &qword_27EFCB278;
    v51 = &unk_24B2EC3C0;
    v52 = v47;
LABEL_5:
    sub_24AFF8258(v52, v50, v51);
    v56 = 1;
    v57 = v80;
    goto LABEL_7;
  }

  v53 = v70;
  sub_24B2D1814();
  (*(v49 + 8))(v47, v48);
  v54 = sub_24B2D1F54();
  v55 = *(v54 - 8);
  if ((*(v55 + 48))(v53, 1, v54) == 1)
  {
    v50 = &qword_27EFCB280;
    v51 = &qword_24B2F4430;
    v52 = v53;
    goto LABEL_5;
  }

  v57 = v80;
  sub_24B2D1F34();
  (*(v55 + 8))(v53, v54);
  v56 = 0;
LABEL_7:
  v58 = sub_24B2D2214();
  v59 = *(v58 - 8);
  v91 = *(v59 + 56);
  (v91)(v57, v56, 1, v58);
  v60 = v77;
  v61 = v86;
  sub_24B008890(v77, v86, &qword_27EFCB290, &qword_24B2F47B0);
  sub_24B0391CC(v61, v82, &qword_27EFCB270, &unk_24B2EBD40);
  v62 = v60;
  v63 = v88;
  sub_24B0391CC(v62, v88, &qword_27EFCB290, &qword_24B2F47B0);
  sub_24B0391CC(v63 + *(v89 + 48), v83, &qword_27EFCB298, &qword_24B2F42E0);
  v64 = v81;
  sub_24B0391CC(v79, v81, &qword_27EFCB270, &unk_24B2EBD40);
  v65 = *(v59 + 48);
  if (v65(v64, 1, v58) == 1)
  {
    sub_24B0391CC(v57, v84, &qword_27EFCB270, &unk_24B2EBD40);
    if (v65(v64, 1, v58) != 1)
    {
      sub_24AFF8258(v64, &qword_27EFCB270, &unk_24B2EBD40);
    }
  }

  else
  {
    sub_24AFF8258(v57, &qword_27EFCB270, &unk_24B2EBD40);
    v66 = v84;
    (*(v59 + 32))(v84, v64, v58);
    (v91)(v66, 0, 1, v58);
  }

  v67 = *(v89 + 48);
  sub_24B0391CC(v87, v85, &qword_27EFCB270, &unk_24B2EBD40);
  sub_24AFF8258(v88, &qword_27EFCB270, &unk_24B2EBD40);
  return sub_24AFF8258(v86 + v67, &qword_27EFCB298, &qword_24B2F42E0);
}

uint64_t ItemWithLocationModel.componentsInfo(canShowOnershipStatus:excluding:detailLevel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t (*a8)(char *, uint64_t), uint64_t a9, uint64_t a10)
{
  v121 = a8;
  v94 = a7;
  v98 = a6;
  v118 = a4;
  v119 = a5;
  v116 = a2;
  v117 = a3;
  v115 = a1;
  v97 = sub_24B2D1E44();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_24B2D1DE4();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278, &unk_24B2EC3C0);
  MEMORY[0x28223BE20](v13 - 8);
  v104 = &v92 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB280, &qword_24B2F4430);
  MEMORY[0x28223BE20](v15 - 8);
  v92 = &v92 - v16;
  v102 = sub_24B2D1C84();
  v127 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v101 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24B2D1F24();
  v129 = *(v18 - 8);
  v130 = v18;
  MEMORY[0x28223BE20](v18);
  v106 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v92 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB270, &unk_24B2EBD40);
  MEMORY[0x28223BE20](v23 - 8);
  v114 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v110 = &v92 - v26;
  MEMORY[0x28223BE20](v27);
  v123 = &v92 - v28;
  MEMORY[0x28223BE20](v29);
  v126 = &v92 - v30;
  MEMORY[0x28223BE20](v31);
  v124 = &v92 - v32;
  MEMORY[0x28223BE20](v33);
  v122 = &v92 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v92 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB2A0, &unk_24B2F4B50);
  MEMORY[0x28223BE20](v38);
  v111 = &v92 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v112 = &v92 - v41;
  MEMORY[0x28223BE20](v42);
  v113 = &v92 - v43;
  v45 = MEMORY[0x28223BE20](v44);
  v47 = &v92 - v46;
  v125 = v48;
  (*(a10 + 16))(a9, a10, v45);
  v49 = *(a10 + 32);
  v128 = v10;
  v49(a9, a10);
  v105 = v47;
  sub_24B2D1894();
  sub_24AFF8258(v37, &qword_27EFCB288, &unk_24B2EBD20);
  v100 = a10;
  v50 = *(a10 + 8);
  v120 = a10 + 8;
  v50(a9, a10);
  v51 = v101;
  sub_24B2D1C94();
  v53 = v129 + 8;
  v52 = *(v129 + 8);
  v54 = v22;
  v52(v22, v130);
  sub_24B2D1C64();
  v55 = *(v127 + 1);
  v127 += 8;
  v99 = v55;
  v56 = v102;
  v55(v51, v102);
  v57 = v100;
  v103 = v50;
  v50(a9, v100);
  sub_24B2D1C94();
  v93 = v54;
  v129 = v53;
  v121 = v52;
  v52(v54, v130);
  v58 = v104;
  sub_24B2D1C74();
  v99(v51, v56);
  v59 = v57;
  (*(v57 + 24))(a9, v57);
  v60 = sub_24B2D1824();
  v61 = *(v60 - 8);
  if ((*(v61 + 48))(v58, 1, v60) == 1)
  {
    v62 = &qword_27EFCB278;
    v63 = &unk_24B2EC3C0;
    v64 = v58;
  }

  else
  {
    v65 = v92;
    sub_24B2D1814();
    (*(v61 + 8))(v58, v60);
    v66 = sub_24B2D1F54();
    v67 = *(v66 - 8);
    if ((*(v67 + 48))(v65, 1, v66) != 1)
    {
      sub_24B2D1F34();
      (*(v67 + 8))(v65, v66);
      v68 = 0;
      goto LABEL_7;
    }

    v62 = &qword_27EFCB280;
    v63 = &qword_24B2F4430;
    v64 = v65;
  }

  sub_24AFF8258(v64, v62, v63);
  v68 = 1;
LABEL_7:
  v69 = v103;
  v70 = sub_24B2D2214();
  v103 = *(v70 - 8);
  v71 = *(v103 + 7);
  v127 = v103 + 56;
  v71(v126, v68, 1, v70);
  v72 = v106;
  v69(a9, v59);
  v73 = v107;
  sub_24B2D1E24();
  v121(v72, v130);
  v74 = sub_24B2D1DD4();
  (*(v108 + 8))(v73, v109);
  v104 = v71;
  if (v74 & 1) != 0 && (v98)
  {
    v75 = v93;
    v69(a9, v59);
    v76 = v95;
    sub_24B2D1E54();
    v121(v75, v130);
    sub_24B2D1E34();
    (*(v96 + 8))(v76, v97);
  }

  else
  {
    v71(v123, 1, 1, v70);
  }

  v77 = v105;
  v78 = v113;
  sub_24B008890(v105, v113, &qword_27EFCB2A0, &unk_24B2F4B50);
  sub_24B0391CC(v78, v115, &qword_27EFCB270, &unk_24B2EBD40);
  v79 = v112;
  sub_24B008890(v77, v112, &qword_27EFCB2A0, &unk_24B2F4B50);
  v80 = v125;
  sub_24B0391CC(v79 + *(v125 + 48), v116, &qword_27EFCB270, &unk_24B2EBD40);
  v81 = v111;
  sub_24B0391CC(v77, v111, &qword_27EFCB2A0, &unk_24B2F4B50);
  sub_24B0391CC(v81 + *(v80 + 64), v117, &qword_27EFCB298, &qword_24B2F42E0);
  v82 = v110;
  sub_24B0391CC(v122, v110, &qword_27EFCB270, &unk_24B2EBD40);
  v83 = v103;
  v84 = *(v103 + 6);
  if (v84(v82, 1, v70) == 1)
  {
    sub_24B0391CC(v126, v118, &qword_27EFCB270, &unk_24B2EBD40);
    v85 = v84(v82, 1, v70);
    v86 = v114;
    if (v85 != 1)
    {
      sub_24AFF8258(v82, &qword_27EFCB270, &unk_24B2EBD40);
    }
  }

  else
  {
    sub_24AFF8258(v126, &qword_27EFCB270, &unk_24B2EBD40);
    v87 = v118;
    v83[4](v118, v82, v70);
    (v104)(v87, 0, 1, v70);
    v86 = v114;
  }

  sub_24B0391CC(v123, v86, &qword_27EFCB270, &unk_24B2EBD40);
  if (v84(v86, 1, v70) == 1)
  {
    sub_24B0391CC(v124, v119, &qword_27EFCB270, &unk_24B2EBD40);
    if (v84(v86, 1, v70) != 1)
    {
      sub_24AFF8258(v86, &qword_27EFCB270, &unk_24B2EBD40);
    }
  }

  else
  {
    sub_24AFF8258(v124, &qword_27EFCB270, &unk_24B2EBD40);
    v88 = v119;
    v83[4](v119, v86, v70);
    (v104)(v88, 0, 1, v70);
  }

  v89 = *(v125 + 48);
  v90 = *(v125 + 64);
  sub_24AFF8258(v81 + v89, &qword_27EFCB270, &unk_24B2EBD40);
  sub_24AFF8258(v81, &qword_27EFCB270, &unk_24B2EBD40);
  sub_24AFF8258(v79 + v90, &qword_27EFCB298, &qword_24B2F42E0);
  sub_24AFF8258(v79, &qword_27EFCB270, &unk_24B2EBD40);
  sub_24AFF8258(v78 + v90, &qword_27EFCB298, &qword_24B2F42E0);
  return sub_24AFF8258(v78 + v89, &qword_27EFCB270, &unk_24B2EBD40);
}

uint64_t ItemWithLocationModel.detailSymbol(includeBatteryOnlyIfLow:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a2;
  v46 = sub_24B2D1ED4();
  v43 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = sub_24B2D1DE4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_24B2D1F24();
  v16 = *(v50 - 8);
  v18 = MEMORY[0x28223BE20](v50);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a3 + 8);
  v44 = a4;
  if (a1)
  {
    v49 = 1;
  }

  else
  {
    v22 = v17;
    v48 = v11;
    v23 = v21;
    v21(v51, v17, v18);
    sub_24B2D1E24();
    (*(v16 + 8))(v20, v50);
    v49 = sub_24B2D1DD4();
    (*(v13 + 8))(v15, v12);
    v21 = v23;
    v11 = v48;
    v17 = v22;
  }

  v24 = v17;
  v47 = v21;
  v21(v51, v17, v18);
  sub_24B2D1EE4();
  v48 = *(v16 + 8);
  (v48)(v20, v50);
  sub_24B2D1EC4();
  v25 = sub_24B0F0F04();
  v26 = v46;
  v45 = v25;
  v27 = sub_24B2D5B24();
  v28 = *(v43 + 8);
  v28(v8, v26);
  v28(v11, v26);
  if ((v27 & 1) == 0)
  {
    v47(v51, v24);
    sub_24B2D1EE4();
    (v48)(v20, v50);
    sub_24B2D1E64();
    v34 = sub_24B2D5B24();
    v28(v8, v26);
    v28(v11, v26);
    if (v49 & 1 | ((v34 & 1) == 0))
    {
      v47(v51, v24);
      sub_24B2D1EE4();
      (v48)(v20, v50);
      sub_24B2D1E94();
      v35 = sub_24B2D5B24();
      v28(v8, v26);
      v28(v11, v26);
      if (v49 & 1 | ((v35 & 1) == 0))
      {
        v47(v51, v24);
        sub_24B2D1EE4();
        (v48)(v20, v50);
        sub_24B2D1EA4();
        v36 = sub_24B2D5B24();
        v28(v8, v26);
        v28(v11, v26);
        if (v49 & 1 | ((v36 & 1) == 0))
        {
          v47(v51, v24);
          sub_24B2D1EE4();
          (v48)(v20, v50);
          sub_24B2D1E74();
          v37 = sub_24B2D5B24();
          v28(v8, v26);
          v28(v11, v26);
          if (v37)
          {
            v33 = v44;
            sub_24B2D1AC4();
          }

          else
          {
            v47(v51, v24);
            sub_24B2D1EE4();
            (v48)(v20, v50);
            sub_24B2D1EB4();
            v42 = sub_24B2D5B24();
            v28(v8, v26);
            v28(v11, v26);
            if ((v42 & 1) == 0)
            {
              goto LABEL_6;
            }

            v33 = v44;
            sub_24B2D1B14();
          }
        }

        else
        {
          v33 = v44;
          sub_24B2D1B04();
        }
      }

      else
      {
        v33 = v44;
        sub_24B2D1AE4();
      }
    }

    else
    {
      v33 = v44;
      sub_24B2D1B44();
    }

LABEL_18:
    v32 = 0;
    goto LABEL_19;
  }

  v29 = v24;
  v30 = v48;
  v31 = v50;
  if ((v49 & 1) == 0)
  {
    v47(v51, v29);
    sub_24B2D1EE4();
    v30(v20, v31);
    sub_24B2D1E84();
    v38 = v46;
    v39 = sub_24B2D5B24();
    v28(v8, v38);
    v28(v11, v38);
    v33 = v44;
    if (v39)
    {
      sub_24B2D1B34();
    }

    else
    {
      sub_24B2D1B24();
    }

    goto LABEL_18;
  }

LABEL_6:
  v32 = 1;
  v33 = v44;
LABEL_19:
  v40 = sub_24B2D1BB4();
  return (*(*(v40 - 8) + 56))(v33, v32, 1, v40);
}

unint64_t sub_24B0F0F04()
{
  result = qword_27EFCB2A8;
  if (!qword_27EFCB2A8)
  {
    sub_24B2D1ED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB2A8);
  }

  return result;
}

uint64_t PersonWithLocationModel.symbol(allowsRelationship:allowsFavorite:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v87 = a2;
  v82 = a1;
  v92 = a5;
  v8 = sub_24B2D1744();
  v77 = *(v8 - 8);
  v78 = v8;
  MEMORY[0x28223BE20](v8);
  v76 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24B2D1544();
  v74 = *(v10 - 8);
  v75 = v10;
  MEMORY[0x28223BE20](v10);
  v73 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24B2D1794();
  v85 = *(v12 - 8);
  v86 = v12;
  MEMORY[0x28223BE20](v12);
  v83 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_24B2D1844();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_24B2D18D4();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v66 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80, &qword_24B2E8E00);
  MEMORY[0x28223BE20](v23 - 8);
  v67 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v90 = &v66 - v26;
  MEMORY[0x28223BE20](v27);
  v91 = &v66 - v28;
  MEMORY[0x28223BE20](v29);
  v84 = &v66 - v30;
  MEMORY[0x28223BE20](v31);
  v81 = &v66 - v32;
  MEMORY[0x28223BE20](v33);
  v93 = &v66 - v34;
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v66 - v37;
  v39 = *(a4 + 16);
  v88 = v5;
  v89 = a4;
  v94 = a3;
  v79 = v39;
  (v39)(a3, a4, v36);
  v40 = sub_24B2D1944();
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  v43 = v42(v22, 1, v40);
  v80 = v38;
  if (v43 == 1)
  {
    sub_24AFF8258(v22, &qword_27EFCB288, &unk_24B2EBD20);
    v44 = sub_24B2D1BB4();
    (*(*(v44 - 8) + 56))(v38, 1, 1, v44);
  }

  else
  {
    sub_24B2D18E4();
    (*(v41 + 8))(v22, v40);
    sub_24B2D18C4();
    (*(v68 + 8))(v16, v69);
  }

  v45 = v89;
  v79(v94, v89);
  if (v42(v19, 1, v40) == 1)
  {
    sub_24AFF8258(v19, &qword_27EFCB288, &unk_24B2EBD20);
    v46 = sub_24B2D1BB4();
    (*(*(v46 - 8) + 56))(v93, 1, 1, v46);
  }

  else
  {
    v47 = v70;
    sub_24B2D1854();
    (*(v41 + 8))(v19, v40);
    sub_24B2D1834();
    (*(v71 + 8))(v47, v72);
  }

  v49 = v90;
  v48 = v91;
  v50 = v84;
  v51 = v81;
  if (v82)
  {
    v52 = v83;
    (*(v45 + 8))(v94, v45);
    v53 = v73;
    sub_24B2D1554();
    (*(v85 + 8))(v52, v86);
    sub_24B2D1504();
    (*(v74 + 8))(v53, v75);
    if ((v87 & 1) == 0)
    {
LABEL_9:
      v54 = sub_24B2D1BB4();
      (*(*(v54 - 8) + 56))(v50, 1, 1, v54);
      goto LABEL_12;
    }
  }

  else
  {
    v55 = sub_24B2D1BB4();
    (*(*(v55 - 8) + 56))(v51, 1, 1, v55);
    if ((v87 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v56 = v83;
  (*(v45 + 8))(v94, v45);
  v57 = v76;
  sub_24B2D1774();
  (*(v85 + 8))(v56, v86);
  sub_24B2D1734();
  (*(v77 + 8))(v57, v78);
LABEL_12:
  sub_24B0F1AC4(v80, v48);
  v58 = sub_24B2D1BB4();
  v59 = *(v58 - 8);
  v60 = *(v59 + 48);
  if (v60(v48, 1, v58) == 1)
  {
    sub_24B0F1AC4(v93, v49);
    if (v60(v49, 1, v58) == 1)
    {
      v61 = v67;
      sub_24B0F1AC4(v51, v67);
      if (v60(v61, 1, v58) == 1)
      {
        sub_24B0F1AC4(v50, v92);
        if (v60(v61, 1, v58) != 1)
        {
          sub_24AFF8258(v61, &qword_27EFC8A80, &qword_24B2E8E00);
        }
      }

      else
      {
        sub_24AFF8258(v50, &qword_27EFC8A80, &qword_24B2E8E00);
        v65 = v92;
        (*(v59 + 32))(v92, v61, v58);
        (*(v59 + 56))(v65, 0, 1, v58);
      }

      if (v60(v49, 1, v58) != 1)
      {
        sub_24AFF8258(v49, &qword_27EFC8A80, &qword_24B2E8E00);
      }
    }

    else
    {
      sub_24AFF8258(v50, &qword_27EFC8A80, &qword_24B2E8E00);
      sub_24AFF8258(v51, &qword_27EFC8A80, &qword_24B2E8E00);
      v64 = v92;
      (*(v59 + 32))(v92, v49, v58);
      (*(v59 + 56))(v64, 0, 1, v58);
    }

    result = (v60)(v48, 1, v58);
    if (result != 1)
    {
      return sub_24AFF8258(v48, &qword_27EFC8A80, &qword_24B2E8E00);
    }
  }

  else
  {
    sub_24AFF8258(v50, &qword_27EFC8A80, &qword_24B2E8E00);
    sub_24AFF8258(v51, &qword_27EFC8A80, &qword_24B2E8E00);
    sub_24AFF8258(v93, &qword_27EFC8A80, &qword_24B2E8E00);
    v62 = v92;
    (*(v59 + 32))(v92, v48, v58);
    return (*(v59 + 56))(v62, 0, 1, v58);
  }

  return result;
}

uint64_t sub_24B0F1AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80, &qword_24B2E8E00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PersonWithLocationModel.componentsInfo(forceNowRecencyKey:maxLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v81 = a6;
  v82 = a4;
  v77 = a5;
  v84 = a2;
  v85 = a3;
  v83 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278, &unk_24B2EC3C0);
  MEMORY[0x28223BE20](v11 - 8);
  v72 = v66 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB280, &qword_24B2F4430);
  MEMORY[0x28223BE20](v13 - 8);
  v66[0] = v66 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB270, &unk_24B2EBD40);
  MEMORY[0x28223BE20](v15 - 8);
  v86 = v66 - v16;
  v76 = sub_24B2D1524();
  v68 = *(v76 - 1);
  MEMORY[0x28223BE20](v76);
  v67 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24B2D1544();
  v19 = *(v18 - 8);
  v88 = v18;
  v89 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_24B2D1794();
  v22 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v24 = v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = v66 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB290, &qword_24B2F47B0);
  MEMORY[0x28223BE20](v28);
  v80 = v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v79 = v66 - v31;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = v66 - v34;
  v78 = v36;
  v66[1] = *(v36 + 48);
  (*(a8 + 16))(a7, a8, v33);
  v37 = a7;
  (*(a8 + 32))(a7, a8);
  v70 = *(a8 + 8);
  v71 = a8 + 8;
  v70(a7, a8);
  sub_24B2D1554();
  v38 = *(v22 + 8);
  v73 = v22 + 8;
  v74 = v24;
  v69 = v38;
  v38(v24, v87);
  v39 = v67;
  sub_24B2D1534();
  v40 = *(v89 + 8);
  v75 = v21;
  v41 = v21;
  v42 = v40;
  v89 += 8;
  v40(v41, v88);
  sub_24B2D1514();
  v43 = v39;
  v44 = v72;
  (*(v68 + 8))(v43, v76);
  v76 = v35;
  sub_24B2D1884();
  sub_24AFF8258(v27, &qword_27EFCB288, &unk_24B2EBD20);
  v45 = *(a8 + 24);
  v81 = v8;
  v45(a7, a8);
  v46 = sub_24B2D1824();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v44, 1, v46) == 1)
  {
    v48 = &qword_27EFCB278;
    v49 = &unk_24B2EC3C0;
    v50 = v44;
  }

  else
  {
    v51 = v66[0];
    sub_24B2D1814();
    (*(v47 + 8))(v44, v46);
    v52 = sub_24B2D1F54();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v51, 1, v52) != 1)
    {
      sub_24B2D1F34();
      (*(v53 + 8))(v51, v52);
      v54 = 0;
      goto LABEL_7;
    }

    v48 = &qword_27EFCB280;
    v49 = &qword_24B2F4430;
    v50 = v51;
  }

  sub_24AFF8258(v50, v48, v49);
  v54 = 1;
LABEL_7:
  v55 = sub_24B2D2214();
  v56 = v86;
  (*(*(v55 - 8) + 56))(v86, v54, 1, v55);
  v57 = v74;
  v70(v37, a8);
  v58 = v75;
  sub_24B2D1554();
  v69(v57, v87);
  sub_24B2D14F4();
  v42(v58, v88);
  v59 = v76;
  v60 = v79;
  sub_24B008890(v76, v79, &qword_27EFCB290, &qword_24B2F47B0);
  v61 = v78;
  v62 = *(v78 + 48);
  sub_24B0391CC(v60, v83, &qword_27EFCB270, &unk_24B2EBD40);
  v63 = v59;
  v64 = v80;
  sub_24B0391CC(v63, v80, &qword_27EFCB290, &qword_24B2F47B0);
  sub_24B0391CC(v64 + *(v61 + 48), v84, &qword_27EFCB298, &qword_24B2F42E0);
  sub_24B0391CC(v56, v85, &qword_27EFCB270, &unk_24B2EBD40);
  sub_24AFF8258(v64, &qword_27EFCB270, &unk_24B2EBD40);
  return sub_24AFF8258(v60 + v62, &qword_27EFCB298, &qword_24B2F42E0);
}

uint64_t PersonWithLocationModel.componentsInfo(canShowRelationshipStatus:excluding:detailLevel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v87 = a8;
  v69 = a7;
  v92 = a6;
  v93 = a5;
  v90 = a3;
  v91 = a4;
  v88 = a1;
  v89 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278, &unk_24B2EC3C0);
  MEMORY[0x28223BE20](v11 - 8);
  v80 = &v67 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB280, &qword_24B2F4430);
  MEMORY[0x28223BE20](v13 - 8);
  v68 = &v67 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB270, &unk_24B2EBD40);
  MEMORY[0x28223BE20](v15 - 8);
  v97 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v94 = &v67 - v18;
  v75 = sub_24B2D1524();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_24B2D1544();
  v20 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_24B2D1794();
  v23 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v67 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB2A0, &unk_24B2F4B50);
  MEMORY[0x28223BE20](v29);
  v83 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v85 = &v67 - v32;
  MEMORY[0x28223BE20](v33);
  v86 = &v67 - v34;
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v67 - v37;
  v72 = *(v39 + 48);
  v84 = v39;
  v71 = *(v39 + 64);
  (*(a10 + 16))(a9, a10, v36);
  v70 = (*(a10 + 32))(a9, a10);
  v78 = *(a10 + 8);
  v79 = a10 + 8;
  v78(a9, a10);
  sub_24B2D1554();
  v40 = *(v23 + 8);
  v81 = v25;
  v77 = v40;
  v40(v25, v95);
  v41 = v73;
  sub_24B2D1534();
  v42 = *(v20 + 8);
  v82 = v20 + 8;
  v76 = v42;
  v42(v22, v96);
  sub_24B2D1514();
  (*(v74 + 8))(v41, v75);
  sub_24B2D1894();
  sub_24AFF8258(v28, &qword_27EFCB288, &unk_24B2EBD20);
  v43 = *(a10 + 24);
  v44 = v80;
  v87 = a9;
  v43(a9, a10);
  v45 = v44;
  v46 = sub_24B2D1824();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    v48 = &qword_27EFCB278;
    v49 = &unk_24B2EC3C0;
    v50 = v45;
LABEL_5:
    sub_24AFF8258(v50, v48, v49);
    v54 = 1;
    goto LABEL_7;
  }

  v51 = v68;
  sub_24B2D1814();
  (*(v47 + 8))(v45, v46);
  v52 = sub_24B2D1F54();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v51, 1, v52) == 1)
  {
    v48 = &qword_27EFCB280;
    v49 = &qword_24B2F4430;
    v50 = v51;
    goto LABEL_5;
  }

  sub_24B2D1F34();
  (*(v53 + 8))(v51, v52);
  v54 = 0;
LABEL_7:
  v55 = sub_24B2D2214();
  v56 = *(v55 - 8);
  v57 = v94;
  v80 = *(v56 + 56);
  v75 = v56 + 56;
  (v80)(v94, v54, 1, v55);
  v58 = v81;
  v78(v87, a10);
  sub_24B2D1554();
  v77(v58, v95);
  sub_24B2D14F4();
  v76(v22, v96);
  v59 = v86;
  sub_24B008890(v38, v86, &qword_27EFCB2A0, &unk_24B2F4B50);
  sub_24B0391CC(v59, v88, &qword_27EFCB270, &unk_24B2EBD40);
  v60 = v85;
  sub_24B008890(v38, v85, &qword_27EFCB2A0, &unk_24B2F4B50);
  v61 = v84;
  sub_24B0391CC(v60 + *(v84 + 48), v89, &qword_27EFCB270, &unk_24B2EBD40);
  v62 = v38;
  v63 = v83;
  sub_24B0391CC(v62, v83, &qword_27EFCB2A0, &unk_24B2F4B50);
  sub_24B0391CC(v63 + *(v61 + 64), v90, &qword_27EFCB298, &qword_24B2F42E0);
  sub_24B0391CC(v57, v91, &qword_27EFCB270, &unk_24B2EBD40);
  if (v92)
  {
    sub_24B0391CC(v97, v93, &qword_27EFCB270, &unk_24B2EBD40);
  }

  else
  {
    sub_24AFF8258(v97, &qword_27EFCB270, &unk_24B2EBD40);
    (v80)(v93, 1, 1, v55);
  }

  v64 = *(v61 + 48);
  v65 = *(v61 + 64);
  sub_24AFF8258(v63 + v64, &qword_27EFCB270, &unk_24B2EBD40);
  sub_24AFF8258(v63, &qword_27EFCB270, &unk_24B2EBD40);
  sub_24AFF8258(v60 + v65, &qword_27EFCB298, &qword_24B2F42E0);
  sub_24AFF8258(v60, &qword_27EFCB270, &unk_24B2EBD40);
  sub_24AFF8258(v59 + v65, &qword_27EFCB298, &qword_24B2F42E0);
  return sub_24AFF8258(v59 + v64, &qword_27EFCB270, &unk_24B2EBD40);
}

uint64_t sub_24B0F2CB4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_24B2D5884();
  if (!v19)
  {
    return sub_24B2D5584();
  }

  v41 = v19;
  v45 = sub_24B2D5D34();
  v32 = sub_24B2D5D44();
  sub_24B2D5CE4();
  result = sub_24B2D5874();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_24B2D58B4();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_24B2D5D24();
      result = sub_24B2D58A4();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AlertInfo.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AlertInfo.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AlertInfo.init(title:message:actions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t AlertInfo.resolved(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = *v5;
  v7 = v5[1];
  v10 = v5[2];
  v9 = v5[3];
  v20 = v5[4];
  v18 = *(a2 + 16);
  v19 = a1;
  type metadata accessor for AlertInfo.ActionInfo(255, v18, a4, a5);
  v11 = sub_24B2D55E4();

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8080, &qword_24B2DFCE0);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_24B0F2CB4(sub_24B0F34CC, &v17, v11, v12, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v14);

  *a3 = v8;
  a3[1] = v7;
  a3[2] = v10;
  a3[3] = v9;
  a3[4] = v15;
  return result;
}

double sub_24B0F3268@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v30 = a2;
  v29 = a3;
  v31 = type metadata accessor for AlertInfo.ActionInfo(0, a3, a3, a5);
  v7 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v9 = &v24 - v8;
  v25 = &v24 - v8;
  v10 = sub_24B2D5644();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v24 - v14;
  v16 = *a1;
  v27 = a1[1];
  v28 = v16;
  v17 = *(a1 + 16);
  if (v17 == 2)
  {
    v18 = 2;
  }

  else
  {
    v18 = v17 & 1;
  }

  v26 = v18;
  (*(v11 + 16))(v15, v30, v10, v13);
  (*(v7 + 16))(v9, a1, v31);
  v19 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v20 = (v12 + *(v7 + 80) + v19) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v29;
  (*(v11 + 32))(v21 + v19, v15, v10);
  (*(v7 + 32))(v21 + v20, v25, v31);
  *(a4 + 24) = sub_24B0F4574;
  *(a4 + 32) = v21;
  v22 = v27;
  *a4 = v28;
  *(a4 + 8) = v22;
  *(a4 + 16) = v26;

  return result;
}

uint64_t sub_24B0F3504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AlertInfo.ActionInfo(0, v8, v8, v9);
  (*(v5 + 16))(v7, a2 + *(v10 + 32), a3);
  sub_24B2D5644();
  return sub_24B2D5634();
}

uint64_t AlertInfo.ActionInfo.init(title:style:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v9;
  v10 = type metadata accessor for AlertInfo.ActionInfo(0, a5, a3, a4);
  v11 = *(*(a5 - 8) + 32);
  v12 = a6 + *(v10 + 32);

  return v11(v12, a4, a5);
}

uint64_t AlertInfo.ActionInfo.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AlertInfo.ActionInfo.Style.role.getter@<X0>(void *a2@<X8>)
{
  if (*v2)
  {
    sub_24B2D32B4();
  }

  else
  {
    sub_24B2D32D4();
  }

  v4 = sub_24B2D32E4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t AlertInfo.ActionInfo.Style.hashValue.getter()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

uint64_t sub_24B0F3820(uint64_t a1)
{
  sub_24B2D60E4();
  AlertInfo.ActionInfo.Style.hash(into:)();
  return sub_24B2D6124();
}

uint64_t sub_24B0F3860()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  if (qword_27EFC7648 != -1)
  {
    swift_once();
  }

  v3 = sub_24B2D1454();
  v4 = __swift_project_value_buffer(v3, qword_27EFCB478);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v2, v4, v3);
  (*(v5 + 56))(v2, 0, 1, v3);
  v6 = sub_24B2D52D4();
  v8 = v7;
  result = sub_24B0C6490(v2);
  qword_27EFCB2B0 = v6;
  *algn_27EFCB2B8 = v8;
  byte_27EFCB2C0 = 2;
  return result;
}

uint64_t static AlertInfo.ActionInfo.okAction(withValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  if (qword_27EFC7648 != -1)
  {
    swift_once();
  }

  v12 = sub_24B2D1454();
  v13 = __swift_project_value_buffer(v12, qword_27EFCB478);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v11, v13, v12);
  (*(v14 + 56))(v11, 0, 1, v12);
  v15 = sub_24B2D52D4();
  v17 = v16;
  sub_24B0C6490(v11);
  (*(v6 + 16))(v8, a1, a2);
  *a3 = v15;
  *(a3 + 8) = v17;
  *(a3 + 16) = 2;
  v20 = type metadata accessor for AlertInfo.ActionInfo(0, a2, v18, v19);
  return (*(v6 + 32))(a3 + *(v20 + 32), v8, a2);
}

double static AlertInfo.ActionInfo<>.okAction.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27EFC7630 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = *algn_27EFCB2B8;
  v3 = byte_27EFCB2C0;
  *a1 = qword_27EFCB2B0;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

uint64_t sub_24B0F3C88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  if (qword_27EFC7648 != -1)
  {
    swift_once();
  }

  v3 = sub_24B2D1454();
  v4 = __swift_project_value_buffer(v3, qword_27EFCB478);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v2, v4, v3);
  (*(v5 + 56))(v2, 0, 1, v3);
  v6 = sub_24B2D52D4();
  v8 = v7;
  result = sub_24B0C6490(v2);
  qword_27EFCB2C8 = v6;
  unk_27EFCB2D0 = v8;
  word_27EFCB2D8 = 0;
  return result;
}

double static AlertInfo.ActionInfo<>.cancelAction.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27EFC7638 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = unk_27EFCB2D0;
  v3 = word_27EFCB2D8;
  v4 = HIBYTE(word_27EFCB2D8);
  *a1 = qword_27EFCB2C8;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;

  return result;
}

uint64_t sub_24B0F3E74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  if (qword_27EFC7648 != -1)
  {
    swift_once();
  }

  v3 = sub_24B2D1454();
  v4 = __swift_project_value_buffer(v3, qword_27EFCB478);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v2, v4, v3);
  (*(v5 + 56))(v2, 0, 1, v3);
  v6 = sub_24B2D52D4();
  v8 = v7;
  result = sub_24B0C6490(v2);
  qword_27EFCB2E0 = v6;
  *algn_27EFCB2E8 = v8;
  word_27EFCB2F0 = 258;
  return result;
}

double static AlertInfo.ActionInfo<>.continueAction.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27EFC7640 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *algn_27EFCB2E8;
  v3 = word_27EFCB2F0;
  v4 = HIBYTE(word_27EFCB2F0);
  *a1 = qword_27EFCB2E0;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;

  return result;
}

uint64_t sub_24B0F4080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24B0F40D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AlertInfo.ActionInfo.Style(255, *(a1 + 16), a3, a4);
  result = sub_24B2D5A84();
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24B0F4180(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 17) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_24B0F4304(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 17) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
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
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 17] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_24B0F4574()
{
  v1 = *(v0 + 16);
  v2 = *(sub_24B2D5644() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v7 = *(type metadata accessor for AlertInfo.ActionInfo(0, v1, v5, v6) - 8);
  v8 = v0 + ((v3 + v4 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_24B0F3504(v0 + v3, v8, v1);
}

uint64_t Collection<>.centerLocation()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_24B2D5894())
  {
    v6 = 1;
  }

  else
  {
    type metadata accessor for MKMapPoint(0);
    v9 = sub_24B0F2CB4(sub_24B0F47EC, 0, a1, v7, MEMORY[0x277D84A98], a2, MEMORY[0x277D84AC0], v8);
    v10 = *(v9 + 16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_24B006AD8(0, v10, 0, v9);
    }

    MKMapRectBoundingMapPoints();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v23.origin.x = v12;
    v23.origin.y = v14;
    v23.size.width = v16;
    v23.size.height = v18;
    v24 = MKCoordinateRegionForMapRect(v23);
    [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v24.center.latitude longitude:v24.center.longitude];
    sub_24B2D1BC4();
    v6 = 0;
  }

  v19 = sub_24B2D1C44();
  v20 = *(*(v19 - 8) + 56);

  return v20(a3, v6, 1, v19);
}

void sub_24B0F47EC(MKMapPoint *a2@<X8>)
{
  v3 = sub_24B2D1BD4();
  [v3 coordinate];
  v5 = v4;
  v7 = v6;

  v8.latitude = v5;
  v8.longitude = v7;
  *a2 = MKMapPointForCoordinate(v8);
}

uint64_t sub_24B0F487C()
{
  v0 = sub_24B2D1454();
  __swift_allocate_value_buffer(v0, qword_27EFCB478);
  __swift_project_value_buffer(v0, qword_27EFCB478);
  type metadata accessor for UIBaseModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  return sub_24B2D1434();
}

uint64_t static FindMyLocalizationTable.uiBase.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFC7648 != -1)
  {
    swift_once();
  }

  v2 = sub_24B2D1454();
  v3 = __swift_project_value_buffer(v2, qword_27EFCB478);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24B0F49BC@<X0>(void *a1@<X8>)
{
  v3 = sub_24B2D3C64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB490, &qword_24B2ED950);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AnnotationPin(0);
  sub_24B008890(v1 + *(v10 + 36), v9, &qword_27EFCB490, &qword_24B2ED950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24B2D3354();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24B2D5924();
    v13 = sub_24B2D42A4();
    sub_24B2D3154();

    sub_24B2D3C54();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

__n128 AnnotationPin.init(icon:shape:showTail:badge:style:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  v12 = type metadata accessor for AnnotationPin(0);
  v13 = v12[9];
  *(a6 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB490, &qword_24B2ED950);
  swift_storeEnumTagMultiPayload();
  v14 = a6 + v12[10];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  sub_24B0F6494(a1, a6, type metadata accessor for Icon);
  *(a6 + v12[5]) = v11;
  *(a6 + v12[6]) = a3;
  sub_24B0391CC(a4, a6 + v12[7], &qword_27EFC8A80, &qword_24B2E8E00);
  v15 = a6 + v12[8];
  v16 = *(a5 + 80);
  *(v15 + 64) = *(a5 + 64);
  *(v15 + 80) = v16;
  *(v15 + 96) = *(a5 + 96);
  *(v15 + 112) = *(a5 + 112);
  v17 = *(a5 + 16);
  *v15 = *a5;
  *(v15 + 16) = v17;
  result = *(a5 + 32);
  v19 = *(a5 + 48);
  *(v15 + 32) = result;
  *(v15 + 48) = v19;
  return result;
}

uint64_t type metadata accessor for AnnotationPin(uint64_t a1)
{
  result = qword_27EFCB4B8;
  if (!qword_27EFCB4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AnnotationPin.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB498, &qword_24B2E82D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for AnnotationPin(0);
  v7 = *(v1 + *(v6 + 32) + 104);
  *v5 = sub_24B2D3DF4();
  *(v5 + 1) = v7;
  v5[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB4A0, &qword_24B2E82D8);
  sub_24B0F4E4C(v1, &v5[*(v8 + 44)]);
  if (*(v1 + *(v6 + 24)))
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  sub_24AFDE7A0(v5, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB4A8, &qword_24B2E82E0);
  *(a1 + *(result + 36)) = v9;
  return result;
}

uint64_t sub_24B0F4E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v47 = type metadata accessor for AnnotationPin(0);
  v46 = *(v47 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v47);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB4F8, &qword_24B2E83B8);
  MEMORY[0x28223BE20](v4);
  v6 = (&v44 - v5);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB500, &qword_24B2E83C0);
  MEMORY[0x28223BE20](v45);
  v50 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  sub_24B2D5694();
  v48 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_24B0F547C();
  sub_24B0F5534(v6 + *(v4 + 52));
  *v6 = v11;
  *(v6 + *(v4 + 56)) = 256;
  sub_24B039184(&qword_27EFCB508, &qword_27EFCB4F8, &qword_24B2E83B8, MEMORY[0x277CDF3A0]);
  sub_24B2D4674();
  sub_24AFF8258(v6, &qword_27EFCB4F8, &qword_24B2E83B8);
  v12 = sub_24B2D5044();
  v14 = v13;
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B0F657C(a1, &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AnnotationPin);
  v15 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v16 = swift_allocObject();
  sub_24B0F6494(&v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for AnnotationPin);

  v17 = &v10[*(v45 + 36)];
  *v17 = sub_24B0F64FC;
  v17[1] = v16;
  v17[2] = v12;
  v17[3] = v14;
  v18 = v10;
  if (*(a1 + *(v47 + 24)) == 1)
  {
    sub_24B2D5064();
    sub_24B2D3494();
    v47 = v57[12];
    v19 = v58;
    v46 = v59;
    v20 = v60;
    v21 = v61;
    v22 = v62;
    if (qword_27EFC7658 != -1)
    {
      swift_once();
    }

    v23 = qword_27EFCB560;
    LOBYTE(v57[0]) = v19;
    LOBYTE(v51) = v20;
    v24 = v19;
    v25 = v20;
    if (qword_27EFC7650 != -1)
    {
      swift_once();
    }

    v26 = qword_27EFCB558;
    v27 = sub_24B075808;
    v28 = sub_24B0F5DC4;
  }

  else
  {
    v47 = 0;
    v46 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v28 = 0;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    v24 = 0;
  }

  v44 = v18;
  v29 = v50;
  sub_24AFDEE40(v18, v50);
  v30 = v29;
  v31 = v49;
  sub_24AFDEE40(v30, v49);
  v32 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB510, &qword_24B2E83C8) + 48));
  v33 = v47;
  *&v51 = v47;
  v34 = v24;
  *(&v51 + 1) = v24;
  v35 = v46;
  *&v52 = v46;
  *(&v52 + 1) = v25;
  *&v53 = v21;
  *(&v53 + 1) = v22;
  *&v54 = v23;
  *(&v54 + 1) = v28;
  *&v55 = 0;
  v36 = v26;
  *(&v55 + 1) = v26;
  v56 = v27;
  v37 = v27;
  v38 = v52;
  *v32 = v51;
  v32[1] = v38;
  v39 = v54;
  v32[2] = v53;
  v32[3] = v39;
  v40 = v56;
  v32[4] = v55;
  v32[5] = v40;
  v41 = v33;
  v42 = v35;
  sub_24B008890(&v51, v57, &qword_27EFCB518, &qword_24B2E83D0);
  sub_24AFDEEB0(v44);
  v57[0] = v41;
  v57[1] = v34;
  v57[2] = v42;
  v57[3] = v25;
  v57[4] = v21;
  v57[5] = v22;
  v57[6] = v23;
  v57[7] = v28;
  v57[8] = 0;
  v57[9] = v36;
  v57[10] = v37;
  v57[11] = 0;
  sub_24AFF8258(v57, &qword_27EFCB518, &qword_24B2E83D0);
  sub_24AFDEEB0(v50);
}

uint64_t sub_24B0F547C()
{
  v1 = type metadata accessor for AnnotationPin(0);
  if (*(v0 + *(v1 + 20)))
  {
    sub_24B0F6640(v1, v2, v3);
  }

  else
  {
    sub_24B0F6694(v1, v2, v3);
  }

  return sub_24B2D4F34();
}

uint64_t sub_24B0F5534@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_24B2D3354();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v44 = sub_24B2D3394();
  v39 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v33 - v10;
  MEMORY[0x28223BE20](v11);
  v34 = &v33 - v12;
  v13 = sub_24B2D3084();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB530, &qword_24B2E83E8);
  MEMORY[0x28223BE20](v17);
  v19 = (&v33 - v18);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB538, &qword_24B2E83F0);
  MEMORY[0x28223BE20](v35);
  v36 = &v33 - v20;
  if (qword_27EFC7818 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v13, qword_27EFE4708);
  (*(v14 + 16))(v16, v21, v13);
  v33 = sub_24B2D4B84();
  sub_24B2D4AC4();
  sub_24B0F49BC(v7);
  v41 = *MEMORY[0x277CDF3C0];
  v22 = *(v2 + 104);
  v42 = v2 + 104;
  v43 = v22;
  v22(v4);
  sub_24B2D3334();
  v23 = *(v2 + 8);
  v23(v4, v1);
  v23(v7, v1);
  sub_24B2D4B44();

  type metadata accessor for AnnotationPin(0);
  v24 = v34;
  sub_24B2D3384();

  v25 = *(v17 + 36);
  v39 = *(v39 + 32);
  (v39)(v19 + v25, v24, v44);
  *v19 = v33;
  sub_24B2D4AC4();
  sub_24B0F49BC(v7);
  v43(v4, v41, v1);
  sub_24B2D3334();
  v23(v4, v1);
  v23(v7, v1);
  sub_24B2D4B44();

  v26 = v37;
  sub_24B2D3384();

  v27 = v36;
  sub_24B0391CC(v19, v36, &qword_27EFCB530, &qword_24B2E83E8);
  v28 = v39;
  (v39)(v27 + *(v35 + 36), v26, v44);
  sub_24B2D4AC4();
  sub_24B0F49BC(v7);
  v43(v4, v41, v1);
  sub_24B2D3334();
  v23(v4, v1);
  v23(v7, v1);
  sub_24B2D4B44();

  v29 = v38;
  sub_24B2D3384();

  v30 = v40;
  sub_24B0391CC(v27, v40, &qword_27EFCB538, &qword_24B2E83F0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB540, &qword_24B2E83F8);
  return v28(v30 + *(v31 + 36), v29, v44);
}

__n128 sub_24B0F5BA4@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B0F657C(a1, a2, type metadata accessor for Icon);
  v4 = type metadata accessor for AnnotationPin(0);
  v5 = *(a1 + v4[5]);
  *(a2 + *(type metadata accessor for IconAndPlatter(0) + 20)) = v5;
  sub_24B2D3514();
  v6 = (a1 + v4[8]);
  v7 = sub_24B2D42F4();
  sub_24B2D32F4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB520, &qword_24B2E83D8) + 36);
  *v16 = v7;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  v17 = v4[7];
  v18 = v6[5];
  v33 = v6[4];
  v34 = v18;
  v35 = *(v6 + 12);
  v19 = v6[1];
  v29 = *v6;
  v30 = v19;
  v20 = v6[3];
  v31 = v6[2];
  v32 = v20;
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB528, &qword_24B2E83E0) + 36);
  sub_24B008890(a1 + v17, v21, &qword_27EFC8A80, &qword_24B2E8E00);
  v22 = type metadata accessor for BadgeViewModifier(0);
  v23 = v21 + *(v22 + 24);
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = v21 + *(v22 + 20);
  sub_24B0F65E4(&v29, v28);

  v25 = v34;
  *(v24 + 64) = v33;
  *(v24 + 80) = v25;
  *(v24 + 96) = v35;
  v26 = v30;
  *v24 = v29;
  *(v24 + 16) = v26;
  result = v32;
  *(v24 + 32) = v31;
  *(v24 + 48) = result;
  return result;
}

__n128 AnnotationPin.Style.init(badge:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 104) = xmmword_24B2E8240;
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_24B0F5E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB498, &qword_24B2E82D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = *(v2 + *(a1 + 32) + 104);
  *v7 = sub_24B2D3DF4();
  *(v7 + 1) = v8;
  v7[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB4A0, &qword_24B2E82D8);
  sub_24B0F4E4C(v2, &v7[*(v9 + 44)]);
  if (*(v2 + *(a1 + 24)))
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  sub_24AFDE7A0(v7, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB4A8, &qword_24B2E82E0);
  *(a2 + *(result + 36)) = v10;
  return result;
}

uint64_t sub_24B0F5F48(uint64_t a1)
{
  v2 = sub_24B2D3354();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24B2D39E4();
}

void sub_24B0F6080(uint64_t a1)
{
  type metadata accessor for Icon(319);
  if (v1 <= 0x3F)
  {
    sub_24B0F61B4(319, &qword_27EFCB4C8, MEMORY[0x277D08DA8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24B0F61B4(319, &qword_27EFCB4D0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_24B0F6218();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B0F61B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_24B0F6218()
{
  if (!qword_27EFCB4D8)
  {
    v0 = sub_24B2D3374();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCB4D8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12FindMyUICore10BadgeStyleV6BorderVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24B0F62AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
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

uint64_t sub_24B0F6308(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_24B0F6388()
{
  result = qword_27EFCB4E0;
  if (!qword_27EFCB4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCB4A8, &qword_24B2E82E0);
    v3 = sub_24B039184(&qword_27EFCB4E8, &qword_27EFCB498, &qword_24B2E82D0, MEMORY[0x277CE1198]);
    sub_24B0F6440(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB4E0);
  }

  return result;
}

unint64_t sub_24B0F6440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB4F0;
  if (!qword_27EFCB4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB4F0);
  }

  return result;
}

uint64_t sub_24B0F6494(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_24B0F64FC@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnnotationPin(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  *&result = sub_24B0F5BA4(v4, a1).n128_u64[0];
  return result;
}

uint64_t sub_24B0F657C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B0F6640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB548;
  if (!qword_27EFCB548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB548);
  }

  return result;
}

unint64_t sub_24B0F6694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB550;
  if (!qword_27EFCB550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB550);
  }

  return result;
}

uint64_t sub_24B0F66E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B0F6CD8(a1, a2, a3);
  result = sub_24B2D3CE4();
  qword_27EFCB558 = result;
  return result;
}

uint64_t sub_24B0F673C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B0F6C84(a1, a2, a3);
  result = sub_24B2D3E24();
  qword_27EFCB560 = result;
  return result;
}

uint64_t sub_24B0F6790(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_24B0F67D8()
{
  if (qword_27EFC7658 != -1)
  {
    result = swift_once();
  }

  v0 = qword_27EFCB560;
  if (qword_27EFC7650 != -1)
  {
    result = swift_once();
  }

  qword_27EFCB568 = v0;
  unk_27EFCB570 = qword_27EFCB558;
  return result;
}

uint64_t static Alignment.annotationPin.getter()
{
  if (qword_27EFC7660 != -1)
  {
    swift_once();
  }

  return qword_27EFCB568;
}

CGFloat sub_24B0F68E0@<D0>(uint64_t a1@<X8>, double a2@<D0>, CGFloat a3@<D1>, double a4@<D2>)
{
  v14.a = 1.0;
  v14.b = 0.0;
  v14.c = 0.0;
  v14.d = 1.0;
  v14.tx = 0.0;
  v14.ty = 0.0;
  CGAffineTransformTranslate(&v13, &v14, a2 * 0.5, a3);
  v8 = *&v13.tx;
  v9 = sin(a4 * 3.14159265);
  *&v14.a = *&v13.a;
  *&v14.c = *&v13.c;
  *&v14.tx = v8;
  CGAffineTransformRotate(&v13, &v14, v9 * 5.0 * 0.0174532925);
  v14 = v13;
  CGAffineTransformTranslate(&v13, &v14, a2 * -0.5, -a3);
  result = v13.a;
  v11 = *&v13.c;
  v12 = *&v13.tx;
  *a1 = *&v13.a;
  *(a1 + 16) = 0;
  *(a1 + 24) = v11;
  *(a1 + 40) = 0;
  *(a1 + 48) = v12;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

__n128 sub_24B0F69D8@<Q0>(uint64_t a1@<X8>, double a2@<D0>, CGFloat a3@<D1>)
{
  sub_24B0F68E0(v7, a2, a3, *v3);
  v5 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v5;
  *(a1 + 64) = v8;
  result = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = result;
  return result;
}

double sub_24B0F6A30@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double sub_24B0F6A3C(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

unint64_t sub_24B0F6A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB578;
  if (!qword_27EFCB578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB578);
  }

  return result;
}

uint64_t sub_24B0F6AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24B0F6C30(a1, a2, a3);

  return MEMORY[0x282130D98](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_24B0F6B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24B0F6C30(a1, a2, a3);

  return MEMORY[0x282130D80](a1, a2, a3, a4, a5, v10);
}

unint64_t sub_24B0F6C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB580;
  if (!qword_27EFCB580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB580);
  }

  return result;
}

unint64_t sub_24B0F6C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB588;
  if (!qword_27EFCB588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB588);
  }

  return result;
}

unint64_t sub_24B0F6CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB590;
  if (!qword_27EFCB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB590);
  }

  return result;
}

uint64_t (*AsyncButton.init(role:action:label:wantsDefaultProgressView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>))()
{
  v16 = type metadata accessor for AsyncButton(0, a7, a8, a4);
  v17 = a9 + v16[12];
  sub_24B2D4CC4();
  *v17 = v24;
  *(v17 + 8) = v25;
  v18 = a9 + v16[13];
  sub_24B2D4CC4();
  *v18 = v24;
  *(v18 + 8) = v25;
  sub_24B0391CC(a1, a9, &qword_27EFC9310, &qword_24B2E2190);
  v19 = (a9 + v16[9]);
  *v19 = a2;
  v19[1] = a3;
  result = swift_allocObject();
  *(result + 2) = a7;
  *(result + 3) = a8;
  *(result + 4) = a4;
  *(result + 5) = a5;
  v21 = (a9 + v16[10]);
  *v21 = sub_24B0F72A0;
  v21[1] = result;
  *(a9 + v16[11]) = a6 ^ 1;
  return result;
}

uint64_t sub_24B0F6EB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8, &qword_24B2E2930);
  sub_24B2D4CD4();
  return v1;
}

uint64_t sub_24B0F6F7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8, &qword_24B2E2930);
  sub_24B2D4CD4();
  return v1;
}

uint64_t AsyncButton.init(role:action:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = type metadata accessor for AsyncButton(0, a6, a7, a4);
  v15 = a8 + v14[12];
  sub_24B2D4CC4();
  *v15 = v20;
  *(v15 + 8) = v21;
  v16 = a8 + v14[13];
  sub_24B2D4CC4();
  *v16 = v20;
  *(v16 + 8) = v21;
  result = sub_24B0391CC(a1, a8, &qword_27EFC9310, &qword_24B2E2190);
  v18 = (a8 + v14[9]);
  *v18 = a2;
  v18[1] = a3;
  v19 = (a8 + v14[10]);
  *v19 = a4;
  v19[1] = a5;
  *(a8 + v14[11]) = 1;
  return result;
}

uint64_t AsyncButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = *(a1 - 8);
  v44 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9310, &qword_24B2E2190);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v32 = &v32 - v7;
  v42 = *(a1 + 16);
  sub_24B2D37B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCB598, &qword_24B2E8598);
  v9 = sub_24B2D37B4();
  v38 = *(a1 + 24);
  v53 = v38;
  v54 = MEMORY[0x277CDF900];
  v43 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v11 = sub_24B039184(qword_27EFCB5A0, &qword_27EFCB598, &qword_24B2E8598, MEMORY[0x277CDFC88]);
  v51 = WitnessTable;
  v52 = v11;
  v37 = v9;
  v36 = swift_getWitnessTable();
  v12 = sub_24B2D4D74();
  v40 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v33 = &v32 - v13;
  v14 = sub_24B2D37B4();
  v41 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v34 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v35 = &v32 - v17;
  sub_24B0F77B4(v2, v8);
  v18 = v4;
  v19 = *(v4 + 16);
  v20 = v39;
  v21 = a1;
  v19(v39, v2, a1);
  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v23 = swift_allocObject();
  v24 = v42;
  v25 = v38;
  *(v23 + 16) = v42;
  *(v23 + 24) = v25;
  (*(v18 + 32))(v23 + v22, v20, v21);
  v46 = v24;
  v47 = v25;
  v48 = v2;
  v26 = v33;
  sub_24B2D4D24();
  sub_24B0F6EB8();
  v27 = swift_getWitnessTable();
  v28 = v34;
  sub_24B2D47A4();
  (*(v40 + 8))(v26, v12);
  v49 = v27;
  v50 = MEMORY[0x277CE0770];
  swift_getWitnessTable();
  v29 = v35;
  sub_24B091A64();
  v30 = *(v41 + 8);
  v30(v28, v14);
  sub_24B091A64();
  return (v30)(v29, v14);
}

uint64_t sub_24B0F77B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9310, &qword_24B2E2190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_24B0F7824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v40 = a2;
  v5 = type metadata accessor for AsyncButton(0, a2, a3, a4);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = sub_24B2D5694();
  v37 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B0F6F18(1, v5);
  v14 = sub_24B2D56D4();
  v15 = *(v14 - 8);
  v35 = *(v15 + 56);
  v36 = v15 + 56;
  v35(v12, 1, 1, v14);
  v32 = a1;
  v33 = *(v6 + 16);
  v33(v9, a1, v5);
  v16 = sub_24B2D5684();
  v34 = v13;
  v17 = *(v6 + 80);
  v38 = v12;
  v18 = (v17 + 48) & ~v17;
  v19 = v18 + v7;
  v20 = swift_allocObject();
  *(v20 + 2) = v16;
  v21 = v39;
  v22 = v40;
  *(v20 + 3) = MEMORY[0x277D85700];
  *(v20 + 4) = v22;
  *(v20 + 5) = v21;
  v31 = *(v6 + 32);
  v31(&v20[v18], v9, v5);
  v23 = v38;
  v24 = sub_24B00A9A4(0, 0, v38, &unk_24B2E8628, v20);
  v35(v23, 1, 1, v14);
  v33(v9, v32, v5);

  v25 = sub_24B2D5684();
  v26 = (v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = v25;
  v28 = v39;
  v29 = v40;
  *(v27 + 3) = MEMORY[0x277D85700];
  *(v27 + 4) = v29;
  *(v27 + 5) = v28;
  v31(&v27[v18], v9, v5);
  *&v27[v26] = v24;
  sub_24B00A9A4(0, 0, v38, &unk_24B2E8638, v27);

  return result;
}

double sub_24B0F7B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for AsyncButton(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_24B0F7824(v9, v5, v6, v7);
}

uint64_t sub_24B0F7C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_24B2D5D64();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  sub_24B2D5694();
  v6[8] = sub_24B2D5684();
  v9 = sub_24B2D5604();
  v6[9] = v9;
  v6[10] = v8;

  return MEMORY[0x2822009F8](sub_24B0F7D18, v9, v8);
}

uint64_t sub_24B0F7D18(uint64_t a1)
{
  v2 = sub_24B2D62A4();
  v4 = v3;
  sub_24B2D6084();
  v5 = swift_task_alloc();
  *(v1 + 88) = v5;
  *v5 = v1;
  v5[1] = sub_24B0F7DF8;

  return sub_24B09A030(v2, v4, 0, 0, 1);
}

uint64_t sub_24B0F7DF8()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[7];
  v5 = v2[6];
  v6 = v2[5];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_24B0F8E88;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_24B0F7F8C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_24B0F7F8C()
{

  if ((sub_24B2D5784() & 1) == 0)
  {
    v2 = type metadata accessor for AsyncButton(0, v0[3], v0[4], v1);
    sub_24B0F6FDC(1, v2);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B0F8018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_24B2D5694();
  v7[6] = sub_24B2D5684();
  v9 = sub_24B2D5604();
  v7[7] = v9;
  v7[8] = v8;

  return MEMORY[0x2822009F8](sub_24B0F80B4, v9, v8);
}

uint64_t sub_24B0F80B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = type metadata accessor for AsyncButton(0, v4[4], v4[5], a4);
  v4[9] = v6;
  v9 = (*(v5 + *(v6 + 36)) + **(v5 + *(v6 + 36)));
  v7 = swift_task_alloc();
  v4[10] = v7;
  *v7 = v4;
  v7[1] = sub_24B0F81B8;

  return v9();
}

uint64_t sub_24B0F81B8()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24B0F82D8, v3, v2);
}

uint64_t sub_24B0F82D8()
{
  v1 = *(v0 + 72);

  sub_24B2D5764();
  sub_24B0F6FDC(0, v1);
  sub_24B0F6F18(0, v1);
  v2 = *(v0 + 8);

  return v2();
}

double sub_24B0F8384@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v31 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24B2D37B4();
  v36 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = &v30 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCB598, &qword_24B2E8598);
  v34 = v9;
  v11 = sub_24B2D37B4();
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v35 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v37 = &v30 - v14;
  sub_24B2D5694();
  v33 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = type metadata accessor for AsyncButton(0, a2, a3, v15);
  if (sub_24B0F6F7C())
  {
    v17 = *(a1 + *(v16 + 44)) ^ 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a1 + *(v16 + 40));
  v19 = sub_24B0F6F7C();
  v18(v19 & 1);
  v20 = v17 & 1;
  v21 = v32;
  sub_24B2D4954();
  v22 = (v31[1])(v8, a2);
  v31 = &v30;
  MEMORY[0x28223BE20](v22);
  *(&v30 - 16) = v20;
  sub_24B2D5064();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB630, &qword_24B2E8618);
  v42 = a3;
  v43 = MEMORY[0x277CDF900];
  v23 = v34;
  WitnessTable = swift_getWitnessTable();
  sub_24B0F8B84();
  v25 = v35;
  sub_24B2D4964();
  (*(v36 + 8))(v21, v23);
  v26 = sub_24B039184(qword_27EFCB5A0, &qword_27EFCB598, &qword_24B2E8598, MEMORY[0x277CDFC88]);
  v40 = WitnessTable;
  v41 = v26;
  swift_getWitnessTable();
  v27 = v37;
  sub_24B091A64();
  v28 = *(v38 + 8);
  v28(v25, v11);
  sub_24B091A64();
  v28(v27, v11);

  return result;
}

void sub_24B0F8870(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94F8, &qword_24B2E2B20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB630, &qword_24B2E8618);
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D33E4();
  if (a1)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = 0.0;
  }

  (*(v5 + 32))(v10, v7, v4);
  *&v10[*(v8 + 36)] = v11;
  sub_24B0391CC(v10, a2, &qword_27EFCB630, &qword_24B2E8618);
}

void sub_24B0F8A50(uint64_t a1)
{
  sub_24B0F8B24(319);
  if (v1 <= 0x3F)
  {
    sub_24B07A804();
    if (v2 <= 0x3F)
    {
      sub_24B0BA5A4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B0F8B24(uint64_t a1)
{
  if (!qword_27EFCB628)
  {
    sub_24B2D32E4();
    v1 = sub_24B2D5A84();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFCB628);
    }
  }
}

unint64_t sub_24B0F8B84()
{
  result = qword_27EFCB638;
  if (!qword_27EFCB638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCB630, &qword_24B2E8618);
    sub_24B039184(qword_27EFC9500, &qword_27EFC94F8, &qword_24B2E2B20, MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB638);
  }

  return result;
}

uint64_t sub_24B0F8C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for AsyncButton(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_24AFFDE44;

  return sub_24B0F7C20(a1, v11, v12, v4 + v10, v7, v8);
}

uint64_t sub_24B0F8D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = v4[4];
  v8 = v4[5];
  v10 = *(type metadata accessor for AsyncButton(0, v9, v8, a4) - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = v4[2];
  v13 = v4[3];
  v14 = *(v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_24AFFD370;

  return sub_24B0F8018(a1, v12, v13, v4 + v11, v14, v9, v8);
}

__n128 AsyncEmojiView.init(info:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u64[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB048, &qword_24B2E7BC0);
  sub_24B2D4CC4();
  *(a2 + 56) = v9;
  *(a2 + 72) = v10;
  *(a2 + 88) = v11;
  *(a2 + 104) = v12;
  *(a2 + 40) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB650, &qword_24B2E8650);
  sub_24B2D4CC4();
  *(a2 + 120) = 0u;
  *(a2 + 136) = swift_getKeyPath();
  *(a2 + 144) = 0;
  result = v7;
  *a2 = v7;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

uint64_t AsyncEmojiView.body.getter()
{
  v1 = v0[7];
  v2 = v0[8];
  v44 = v0[6];
  v45 = v1;
  v46 = v2;
  v47 = *(v0 + 144);
  v3 = v0[3];
  v40 = v0[2];
  v41 = v3;
  v4 = v0[5];
  v42 = v0[4];
  v43 = v4;
  v5 = v0[1];
  v38 = *v0;
  v39 = v5;
  v6 = v0[1];
  v48 = *v0;
  v49 = v6;
  v50 = *(v0 + 4);
  v36 = v48;
  *v37 = *(v0 + 2);
  v7 = *(v0 + 56);
  v8 = *(v0 + 88);
  v23 = *(v0 + 72);
  v24 = v8;
  v25 = *(v0 + 104);
  v21 = *(v0 + 40);
  v22 = v7;
  sub_24B0F9D24(&v48, &v30);
  sub_24B0F9D24(&v48, &v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB658, &qword_24B2E8688);
  sub_24B2D4CD4();
  *&v37[8] = v51;
  *&v37[56] = v54;
  *&v37[72] = v55;
  *&v37[40] = v53;
  *&v37[24] = v52;
  v32 = *&v37[16];
  v33 = *&v37[32];
  v34 = *&v37[48];
  v35 = *&v37[64];
  v30 = v36;
  v31 = *v37;
  v27 = v48;
  v28 = v49;
  v29 = v50;
  v9 = swift_allocObject();
  v10 = v45;
  *(v9 + 112) = v44;
  *(v9 + 128) = v10;
  *(v9 + 144) = v46;
  *(v9 + 160) = v47;
  v11 = v41;
  *(v9 + 48) = v40;
  *(v9 + 64) = v11;
  v12 = v43;
  *(v9 + 80) = v42;
  *(v9 + 96) = v12;
  v13 = v39;
  *(v9 + 16) = v38;
  *(v9 + 32) = v13;
  v14 = sub_24B0F9D64(&v38, &v21);
  v17 = sub_24B0F9D9C(v14, v15, v16);
  sub_24B0F9DF0(v17, v18, v19);
  sub_24B2D49B4();

  v23 = v32;
  v24 = v33;
  v25 = v34;
  v26 = v35;
  v21 = v30;
  v22 = v31;
  return sub_24B0F9E44(&v21);
}

double sub_24B0F9188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  sub_24B2D5694();
  sub_24B2D5684();
  v7 = MEMORY[0x277D85700];
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = *(a3 + 120);
  v17[0] = *(a3 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB678, &qword_24B2E88C8);
  sub_24B2D4CD4();
  if (v18)
  {
    sub_24B2D5764();
  }

  v8 = sub_24B2D56D4();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_24B0F9D64(a3, v17);
  v9 = sub_24B2D5684();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v7;
  v11 = *(a3 + 112);
  *(v10 + 128) = *(a3 + 96);
  *(v10 + 144) = v11;
  *(v10 + 160) = *(a3 + 128);
  *(v10 + 176) = *(a3 + 144);
  v12 = *(a3 + 48);
  *(v10 + 64) = *(a3 + 32);
  *(v10 + 80) = v12;
  v13 = *(a3 + 80);
  *(v10 + 96) = *(a3 + 64);
  *(v10 + 112) = v13;
  v14 = *(a3 + 16);
  *(v10 + 32) = *a3;
  *(v10 + 48) = v14;
  v15 = sub_24B00A9A4(0, 0, v6, &unk_24B2E88D8, v10);
  v17[0] = v19;
  v18 = v15;
  sub_24B2D4CE4();

  return result;
}

uint64_t sub_24B0F93C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[63] = a4;
  v5 = sub_24B2D3C64();
  v4[64] = v5;
  v4[65] = *(v5 - 8);
  v4[66] = swift_task_alloc();
  sub_24B2D5694();
  v4[67] = sub_24B2D5684();
  v7 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B0F94BC, v7, v6);
}

uint64_t sub_24B0F94BC()
{
  v1 = *(v0 + 504);

  v2 = *(v1 + 144);
  *(v0 + 480) = *(v1 + 136);
  *(v0 + 488) = v2;
  if (*(v0 + 488) != 1)
  {
    v3 = *(v0 + 528);
    v4 = *(v0 + 520);
    v5 = *(v0 + 512);

    sub_24B2D5924();
    v6 = sub_24B2D42A4();
    sub_24B2D3154();

    sub_24B2D3C54();
    swift_getAtKeyPath();
    sub_24AFF8258(v0 + 480, &qword_27EFCB680, &unk_24B2E88E0);
    (*(v4 + 8))(v3, v5);
  }

  v7 = *(*(v0 + 504) + 24);
  *v26 = 0x3FF0000000000000;
  *&v26[8] = 0u;
  *&v26[24] = 0x3FF0000000000000;
  v8 = sub_24B2D2C34();
  if (v8)
  {
    v10 = *v26;
    v9 = *&v26[16];
    v11 = v7;
    v12 = 0u;
  }

  else
  {
    v11 = 0;
    v9 = 0uLL;
    v12 = 0uLL;
    v10 = 0uLL;
  }

  *(v0 + 336) = v8;
  *(v0 + 344) = v10;
  *(v0 + 360) = v9;
  *(v0 + 376) = v12;
  *(v0 + 392) = v11;
  *(v0 + 400) = v11;
  sub_24B2D5794();
  v13 = *(v0 + 504);
  *(v0 + 16) = *(v13 + 40);
  v14 = *(v13 + 72);
  v15 = *(v13 + 104);
  v16 = *(v13 + 56);
  *(v0 + 64) = *(v13 + 88);
  *(v0 + 80) = v15;
  *(v0 + 32) = v16;
  *(v0 + 48) = v14;
  v17 = *(v13 + 104);
  v18 = *(v13 + 88);
  v19 = *(v13 + 72);
  *(v0 + 192) = *(v13 + 56);
  *(v0 + 208) = v19;
  *(v0 + 224) = v18;
  *(v0 + 240) = v17;
  *(v0 + 176) = *(v13 + 40);
  *(v0 + 472) = *(v0 + 400);
  v20 = *(v0 + 384);
  *(v0 + 440) = *(v0 + 368);
  *(v0 + 456) = v20;
  v21 = *(v0 + 352);
  *(v0 + 408) = *(v0 + 336);
  *(v0 + 424) = v21;
  sub_24B0FA1AC(v0 + 16, v0 + 256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB658, &qword_24B2E8688);
  sub_24B2D4CE4();
  v22 = *(v0 + 224);
  *(v0 + 128) = *(v0 + 208);
  *(v0 + 144) = v22;
  *(v0 + 160) = *(v0 + 240);
  v23 = *(v0 + 192);
  *(v0 + 96) = *(v0 + 176);
  *(v0 + 112) = v23;
  sub_24AFF8258(v0 + 96, &qword_27EFCB658, &qword_24B2E8688);

  v24 = *(v0 + 8);

  return v24();
}

double AsyncEmojiView.Info.emoji.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;

  return result;
}

__n128 AsyncEmojiView.Info.size.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

__n128 AsyncEmojiView.Info.init(emoji:size:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *a2;
  *(a3 + 24) = *a2;
  return result;
}

FindMyUICore::AsyncEmojiView::Info::Size __swiftcall AsyncEmojiView.Info.Size.init(length:inset:)(Swift::Double length, Swift::Double inset)
{
  *v2 = length;
  v2[1] = inset;
  result.inset = inset;
  result.length = length;
  return result;
}

double sub_24B0F9904()
{
  result = 100.0;
  xmmword_27EFCB640 = xmmword_24B2E8640;
  return result;
}

double static AsyncEmojiView.Info.Size.list.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_27EFC7668 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_27EFCB640;
  *a1 = xmmword_27EFCB640;
  return result;
}

uint64_t AsyncEmojiView.Info.Size.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x24C23C8F0](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x24C23C8F0](*&v3);
}

uint64_t AsyncEmojiView.Info.Size.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B2D60E4();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x24C23C8F0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x24C23C8F0](*&v4);
  return sub_24B2D6124();
}

uint64_t sub_24B0F9AB0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_24B2D60E4();
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x24C23C8F0](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x24C23C8F0](*&v5);
  return sub_24B2D6124();
}

uint64_t AsyncEmojiView.Info.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_24B2D5404();
  sub_24B2D6104();
  if (v2)
  {
    sub_24B2D4AA4();
  }

  if (v4 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  MEMORY[0x24C23C8F0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  return MEMORY[0x24C23C8F0](*&v6);
}

uint64_t AsyncEmojiView.Info.hashValue.getter()
{
  v1 = *(v0 + 16);
  *&v3[72] = *v0;
  v4 = v1;
  v5 = *(v0 + 24);
  sub_24B2D60E4();
  AsyncEmojiView.Info.hash(into:)(v3);
  return sub_24B2D6124();
}

uint64_t sub_24B0F9C14()
{
  v1 = *(v0 + 16);
  *&v3[72] = *v0;
  v4 = v1;
  v5 = *(v0 + 24);
  sub_24B2D60E4();
  AsyncEmojiView.Info.hash(into:)(v3);
  return sub_24B2D6124();
}

uint64_t sub_24B0F9C74(uint64_t a1)
{
  v2 = *(v1 + 16);
  *&v4[72] = *v1;
  v5 = v2;
  v6 = *(v1 + 24);
  sub_24B2D60E4();
  AsyncEmojiView.Info.hash(into:)(v4);
  return sub_24B2D6124();
}

unint64_t sub_24B0F9D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB660;
  if (!qword_27EFCB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB660);
  }

  return result;
}

unint64_t sub_24B0F9DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB668;
  if (!qword_27EFCB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB668);
  }

  return result;
}

BOOL _s12FindMyUICore14AsyncEmojiViewV4InfoV2eeoiySbAE_AEtFZ_0(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v6 = a1[3];
  v5 = a1[4];
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v11 = a2[3];
  v10 = a2[4];
  v14[0] = v2;
  v14[1] = v3;
  v14[2] = v4;
  v13[0] = v7;
  v13[1] = v8;
  v13[2] = v9;

  LOBYTE(v3) = _s12FindMyUICore9EmojiViewV4InfoV2eeoiySbAE_AEtFZ_0(v14, v13);

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  if (v5 == v10)
  {
    return v6 == v11;
  }

  return 0;
}

unint64_t sub_24B0F9F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB670;
  if (!qword_27EFCB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB670);
  }

  return result;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_24B0FA01C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t sub_24B0FA064(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B0FA0FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AFFD370;

  return sub_24B0F93C8(a1, v4, v5, v1 + 32);
}

uint64_t sub_24B0FA1AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB658, &qword_24B2E8688);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AvatarView.init(contact:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v3 = sub_24B2D1494();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688, &qword_24B2E88F0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB690, &qword_24B2E88F8);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  v21 = a1;
  sub_24B0FA56C(a1, v15 + v14);
  sub_24B2D5694();
  sub_24B0FA56C(v15 + v14, v13);
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B0FA5DC(v13, v10);

  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    sub_24B0FA64C(v10);
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    v17 = *(v4 + 32);
    v17(v6, v10, v3);
    v16 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_24B006BDC(0, *(v16 + 2) + 1, 1, v16);
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    if (v19 >= v18 >> 1)
    {
      v16 = sub_24B006BDC((v18 > 1), v19 + 1, 1, v16);
    }

    *(v16 + 2) = v19 + 1;
    v17(&v16[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19], v6, v3);
  }

  sub_24B0FA64C(v21);
  swift_setDeallocating();
  sub_24B0FA64C(v15 + v14);
  result = swift_deallocClassInstance();
  *v22 = v16;
  return result;
}

uint64_t sub_24B0FA56C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688, &qword_24B2E88F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B0FA5DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688, &qword_24B2E88F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B0FA64C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688, &qword_24B2E88F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double AvatarView.body.getter@<D0>(uint64_t a1@<X8>)
{
  if ([objc_opt_self() authorizationStatusForEntityType_] == 3)
  {
    v2 = objc_opt_self();

    [v2 defaultSettings];
  }

  else
  {
    sub_24B2D4A94();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB698, &qword_24B2E8900);
  sub_24B0FA934(v3, v4, v5);
  sub_24B0FA988();
  sub_24B2D3ED4();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 18) = v9;
  return result;
}

id sub_24B0FA7CC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBDBF0]) initWithSettings_];
  v2 = [v1 view];
  [v2 setUserInteractionEnabled_];

  return v1;
}

uint64_t sub_24B0FA844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B0FAAB8(a1, a2, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24B0FA8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B0FAAB8(a1, a2, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24B0FA90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B0FAAB8(a1, a2, a3);
  sub_24B2D41E4();
  __break(1u);
}

unint64_t sub_24B0FA934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB6A0;
  if (!qword_27EFCB6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB6A0);
  }

  return result;
}

unint64_t sub_24B0FA988()
{
  result = qword_27EFCB6A8;
  if (!qword_27EFCB6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCB698, &qword_24B2E8900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB6A8);
  }

  return result;
}

unint64_t sub_24B0FAA18()
{
  result = qword_27EFCB6B0;
  if (!qword_27EFCB6B0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCB6B8, &qword_24B2E8998);
    sub_24B0FA934(v1, v2, v3);
    sub_24B0FA988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB6B0);
  }

  return result;
}

unint64_t sub_24B0FAAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB6C0;
  if (!qword_27EFCB6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB6C0);
  }

  return result;
}

void sub_24B0FAB0C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24B2D1494();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  if (v9)
  {
    v16 = a1;
    v18 = MEMORY[0x277D84F90];
    sub_24B2D5CF4();
    v11 = *(v6 + 16);
    v10 = v6 + 16;
    v17 = v11;
    v12 = a3 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v13 = *(v10 + 56);
    do
    {
      v17(v8, v12, v5);
      sub_24B2D1484();
      (*(v10 - 8))(v8, v5);
      sub_24B2D5CC4();
      sub_24B2D5D04();
      sub_24B2D5D14();
      sub_24B2D5CD4();
      v12 += v13;
      --v9;
    }

    while (v9);
    a1 = v16;
  }

  sub_24AFFF54C();
  v14 = sub_24B2D5524();

  [a1 setContacts_];
}

uint64_t BackgroundBaseView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24B2D3084();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EFC7820 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_27EFE4720);
  (*(v3 + 16))(v5, v6, v2);
  result = sub_24B2D4B84();
  *a1 = result;
  return result;
}

uint64_t sub_24B0FADDC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24B2D3084();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EFC7820 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_27EFE4720);
  (*(v3 + 16))(v5, v6, v2);
  result = sub_24B2D4B84();
  *a1 = result;
  return result;
}

uint64_t BackgroundBlurView.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_24B2D3DF4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB6C8, &qword_24B2E8B30);
  if (qword_27EFC7670 != -1)
  {
    swift_once();
  }

  v12 = qword_27EFE4530;
  KeyPath = swift_getKeyPath();

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB6D0, &qword_24B2E8B58);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB6D8, &qword_24B2E8B60);
  v6 = sub_24B0FB6AC();
  v7 = sub_24B039184(&qword_27EFCB6F8, &qword_27EFCB6D8, &qword_24B2E8B60, MEMORY[0x277CE1138]);
  sub_24B2D4ED4(&v12, KeyPath, sub_24B0FB15C, 0, v4, v5, v6, MEMORY[0x277D83B98], v7);

  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB700, &unk_24B2E8B70) + 36);
  sub_24B2D4FF4();
  LOBYTE(v4) = sub_24B2D42F4();
  *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8CF8, &qword_24B2E20E8) + 36)) = v4;
  v9 = sub_24B2D3804();
  LOBYTE(v4) = sub_24B2D42F4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB708, &qword_24B2E8B80);
  v11 = a2 + *(result + 36);
  *v11 = v9;
  *(v11 + 8) = v4;
  return result;
}

double sub_24B0FB15C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_24B2D3CD4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB758, &qword_24B2E8CB8);
  v8 = v3;
  KeyPath = swift_getKeyPath();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8110, &unk_24B2DFD70);
  v6 = sub_24B0FBC84();
  sub_24B2D4ED4(&v8, KeyPath, sub_24B0FB2F8, 0, v5, MEMORY[0x277CE0F78], v6, MEMORY[0x277D83B98], MEMORY[0x277CE0F70]);

  return result;
}

void sub_24B0FB2F8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_24B0FB39C(v3);

  *a2 = v4;
}

uint64_t sub_24B0FB39C(unsigned __int8 a1)
{
  v2 = sub_24B2D3084();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 1u)
  {
    if (a1)
    {
      if (qword_27EFC7848 != -1)
      {
        swift_once();
      }

      v6 = qword_27EFE4798;
    }

    else
    {
      if (qword_27EFC7838 != -1)
      {
        swift_once();
      }

      v6 = qword_27EFE4768;
    }
  }

  else if (a1 == 2)
  {
    if (qword_27EFC7830 != -1)
    {
      swift_once();
    }

    v6 = qword_27EFE4750;
  }

  else if (a1 == 3)
  {
    if (qword_27EFC7840 != -1)
    {
      swift_once();
    }

    v6 = qword_27EFE4780;
  }

  else
  {
    if (qword_27EFC7828 != -1)
    {
      swift_once();
    }

    v6 = qword_27EFE4738;
  }

  v7 = __swift_project_value_buffer(v2, v6);
  (*(v3 + 16))(v5, v7, v2);
  return sub_24B2D4B84();
}

uint64_t sub_24B0FB5B4()
{
  v5 = MEMORY[0x277D84F90];
  sub_24B007934(0, 20, 0);
  v0 = 0x20u;
  do
  {
    v1 = *(&unk_285E48A60 + v0);
    v2 = *(v5 + 16);
    v3 = *(v5 + 24);

    if (v2 >= v3 >> 1)
    {
      sub_24B007934((v3 > 1), v2 + 1, 1);
    }

    *(v5 + 16) = v2 + 1;
    *(v5 + 8 * v2 + 32) = v1;
    v0 += 8;
  }

  while (v0 != 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB748, qword_24B2E8C10);
  result = swift_arrayDestroy();
  qword_27EFE4530 = v5;
  return result;
}

unint64_t sub_24B0FB6AC()
{
  result = qword_27EFCB6E0;
  if (!qword_27EFCB6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCB6D0, &qword_24B2E8B58);
    sub_24B039184(&qword_27EFCB6E8, &qword_27EFCB6F0, &qword_24B2E8B68, MEMORY[0x277D83980]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB6E0);
  }

  return result;
}

uint64_t sub_24B0FB788@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_24B2D3DF4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB6C8, &qword_24B2E8B30);
  if (qword_27EFC7670 != -1)
  {
    swift_once();
  }

  v12 = qword_27EFE4530;
  KeyPath = swift_getKeyPath();

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB6D0, &qword_24B2E8B58);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB6D8, &qword_24B2E8B60);
  v6 = sub_24B0FB6AC();
  v7 = sub_24B039184(&qword_27EFCB6F8, &qword_27EFCB6D8, &qword_24B2E8B60, MEMORY[0x277CE1138]);
  sub_24B2D4ED4(&v12, KeyPath, sub_24B0FB15C, 0, v4, v5, v6, MEMORY[0x277D83B98], v7);

  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB700, &unk_24B2E8B70) + 36);
  sub_24B2D4FF4();
  LOBYTE(v4) = sub_24B2D42F4();
  *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8CF8, &qword_24B2E20E8) + 36)) = v4;
  v9 = sub_24B2D3804();
  LOBYTE(v4) = sub_24B2D42F4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB708, &qword_24B2E8B80);
  v11 = a2 + *(result + 36);
  *v11 = v9;
  *(v11 + 8) = v4;
  return result;
}

unint64_t sub_24B0FB9DC()
{
  result = qword_27EFCB710;
  if (!qword_27EFCB710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCB708, &qword_24B2E8B80);
    sub_24B0FBA68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB710);
  }

  return result;
}

unint64_t sub_24B0FBA68()
{
  result = qword_27EFCB718;
  if (!qword_27EFCB718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCB720, &qword_24B2E8BF8);
    sub_24B0FBAF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB718);
  }

  return result;
}

unint64_t sub_24B0FBAF4()
{
  result = qword_27EFCB728;
  if (!qword_27EFCB728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCB700, &unk_24B2E8B70);
    sub_24B039184(&qword_27EFCB730, &qword_27EFCB738, &qword_24B2E8C00, MEMORY[0x277CE1198]);
    sub_24B039184(&qword_27EFC8D10, &qword_27EFC8CF8, &qword_24B2E20E8, MEMORY[0x277CE0490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB728);
  }

  return result;
}

unint64_t sub_24B0FBC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB750;
  if (!qword_27EFCB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB750);
  }

  return result;
}

unint64_t sub_24B0FBC84()
{
  result = qword_27EFCB760;
  if (!qword_27EFCB760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8110, &unk_24B2DFD70);
    sub_24B039184(&qword_27EFCB768, &qword_27EFCB748, qword_24B2E8C10, MEMORY[0x277D83980]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB760);
  }

  return result;
}

uint64_t BackgroundGridView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = sub_24B0FBE78;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

double sub_24B0FBD9C@<D0>(uint64_t *a2@<X8>, double a3@<D0>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_24B2D5064();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB7A0, &qword_24B2E8D80);
  sub_24B0FBE9C(a2 + *(v6 + 44), a3);

  return result;
}

void sub_24B0FBE9C(uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB7A8, &qword_24B2E8D88);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v18 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB7B0, &qword_24B2E8D90);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v18 - v15);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v16 = sub_24B2D3DF4();
  v16[1] = a3;
  *(v16 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB7B8, &qword_24B2E8D98);
  sub_24B0FC168(a3);
  *v10 = sub_24B2D3CD4();
  v10[1] = a3;
  *(v10 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB7C0, &qword_24B2E8DA0);
  sub_24B0FC404(a3);
  sub_24B008890(v16, v13, &qword_27EFCB7B0, &qword_24B2E8D90);
  sub_24B008890(v10, v7, &qword_27EFCB7A8, &qword_24B2E8D88);
  sub_24B008890(v13, a2, &qword_27EFCB7B0, &qword_24B2E8D90);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB7C8, &unk_24B2E8DA8);
  sub_24B008890(v7, a2 + *(v17 + 48), &qword_27EFCB7A8, &qword_24B2E8D88);
  sub_24AFF8258(v10, &qword_27EFCB7A8, &qword_24B2E8D88);
  sub_24AFF8258(v16, &qword_27EFCB7B0, &qword_24B2E8D90);
  sub_24AFF8258(v7, &qword_27EFCB7A8, &qword_24B2E8D88);
  sub_24AFF8258(v13, &qword_27EFCB7B0, &qword_24B2E8D90);
}

void sub_24B0FC168(double a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3514();
  v3 = ceil(v2 / a1) + 4.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v9[0] = 0;
    v9[1] = v3;
    KeyPath = swift_getKeyPath();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB7D0, &qword_24B2E8DD0);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB7D8, &qword_24B2E8DD8);
    v7 = sub_24B0FC7F0();
    v8 = sub_24B0FC8D0();
    sub_24B2D4ED4(v9, KeyPath, sub_24B0FC30C, 0, v5, v6, v7, MEMORY[0x277D83B98], v8);

    return;
  }

LABEL_11:
  __break(1u);
}

__n128 sub_24B0FC30C@<Q0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_24B2D3FC4();
  sub_24B2D5064();
  sub_24B2D3494();

  *&v4[2] = v5;
  *&v4[18] = v6;
  *&v4[34] = v7;
  *(a1 + 6) = *v4;
  *a1 = v2;
  *(a1 + 4) = 256;
  *(a1 + 22) = *&v4[16];
  result = *&v4[32];
  *(a1 + 38) = *&v4[32];
  *(a1 + 54) = HIWORD(v7);
  return result;
}

void sub_24B0FC404(double a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3514();
  v3 = ceil(v2 / a1) + 4.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v9[0] = 0;
    v9[1] = v3;
    KeyPath = swift_getKeyPath();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB7D0, &qword_24B2E8DD0);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB7D8, &qword_24B2E8DD8);
    v7 = sub_24B0FC7F0();
    v8 = sub_24B0FC8D0();
    sub_24B2D4ED4(v9, KeyPath, sub_24B0FC5A8, 0, v5, v6, v7, MEMORY[0x277D83B98], v8);

    return;
  }

LABEL_11:
  __break(1u);
}

__n128 sub_24B0FC5A8@<Q0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_24B2D3FC4();
  sub_24B2D5064();
  sub_24B2D3494();

  *&v4[2] = v5;
  *&v4[18] = v6;
  *&v4[34] = v7;
  *(a1 + 6) = *v4;
  *a1 = v2;
  *(a1 + 4) = 256;
  *(a1 + 22) = *&v4[16];
  result = *&v4[32];
  *(a1 + 38) = *&v4[32];
  *(a1 + 54) = HIWORD(v7);
  return result;
}

uint64_t sub_24B0FC6A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = sub_24B0FC988;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

unint64_t sub_24B0FC70C()
{
  result = qword_27EFCB770;
  if (!qword_27EFCB770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCB778, &qword_24B2E8D68);
    sub_24B039184(&qword_27EFCB780, &qword_27EFCB788, &qword_24B2E8D70, MEMORY[0x277CDF7D8]);
    sub_24B039184(&qword_27EFCB790, &qword_27EFCB798, &qword_24B2E8D78, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB770);
  }

  return result;
}

unint64_t sub_24B0FC7F0()
{
  result = qword_27EFCB7E0;
  if (!qword_27EFCB7E0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCB7D0, &qword_24B2E8DD0);
    sub_24B0FC87C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB7E0);
  }

  return result;
}

unint64_t sub_24B0FC87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB7E8;
  if (!qword_27EFCB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB7E8);
  }

  return result;
}

unint64_t sub_24B0FC8D0()
{
  result = qword_27EFCB7F0;
  if (!qword_27EFCB7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCB7D8, &qword_24B2E8DD8);
    sub_24B039184(&qword_27EFCB7F8, &qword_27EFCB800, &unk_24B2E8DE0, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB7F0);
  }

  return result;
}

uint64_t View.badge(_:style:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32[0] = a4;
  v32[2] = a5;
  v8 = type metadata accessor for BadgeViewModifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24B2D37B4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v32 - v16;
  v18 = a2[4];
  v19 = a2[5];
  v20 = a2[2];
  v37 = a2[3];
  v38 = v18;
  v39 = v19;
  v40 = *(a2 + 12);
  v21 = a2[1];
  v34 = *a2;
  v35 = v21;
  v36 = v20;
  sub_24B0FCC74(a1, v10);
  v22 = &v10[*(v8 + 24)];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = &v10[*(v8 + 20)];
  v24 = v37;
  v25 = v39;
  *(v23 + 4) = v38;
  *(v23 + 5) = v25;
  v26 = v35;
  v27 = v36;
  *v23 = v34;
  *(v23 + 1) = v26;
  *(v23 + 12) = v40;
  *(v23 + 2) = v27;
  *(v23 + 3) = v24;
  sub_24B0F65E4(&v34, v33);
  v28 = v32[0];
  MEMORY[0x24C23B180](v10, a3, v8, v32[0]);
  sub_24B0FE7C4(v10);
  v29 = sub_24B0FE820();
  v32[3] = v28;
  v32[4] = v29;
  swift_getWitnessTable();
  sub_24B091A64();
  v30 = *(v12 + 8);
  v30(v14, v11);
  sub_24B091A64();
  return (v30)(v17, v11);
}

uint64_t type metadata accessor for BadgeViewModifier(uint64_t a1)
{
  result = qword_27EFCB818;
  if (!qword_27EFCB818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B0FCC74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80, &qword_24B2E8E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B0FCCE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(v3 + *(type metadata accessor for BadgeViewModifier(0) + 20) + 24);
  if (v6 < 0)
  {
    if (v6)
    {
      if (qword_27EFC7698 != -1)
      {
        swift_once();
      }

      v7 = qword_27EFCB8E8;
      if (qword_27EFC7680 != -1)
      {
        swift_once();
      }

      v8 = &qword_27EFCB8D0;
    }

    else
    {
      if (qword_27EFC7698 != -1)
      {
        swift_once();
      }

      v7 = qword_27EFCB8E8;
      if (qword_27EFC7678 != -1)
      {
        swift_once();
      }

      v8 = &qword_27EFCB8C8;
    }
  }

  else if (v6)
  {
    if (qword_27EFC76A0 != -1)
    {
      swift_once();
    }

    v7 = qword_27EFCB8F0;
    if (qword_27EFC7690 != -1)
    {
      swift_once();
    }

    v8 = &qword_27EFCB8E0;
  }

  else
  {
    if (qword_27EFC76A0 != -1)
    {
      swift_once();
    }

    v7 = qword_27EFCB8F0;
    if (qword_27EFC7688 != -1)
    {
      swift_once();
    }

    v8 = &qword_27EFCB8D8;
  }

  v9 = *v8;
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB828, &qword_24B2E9018) + 36);
  sub_24B0FCF90(v3, v10);
  v11 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB830, &qword_24B2E9020) + 36));
  *v11 = v7;
  v11[1] = v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB838, &qword_24B2E9028);
  v13 = *(*(v12 - 8) + 16);

  return v13(a2, a1, v12);
}

double sub_24B0FCF90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a1;
  v20 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB840, &qword_24B2E9030);
  v2 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80, &qword_24B2E8E00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_24B2D1BB4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB848, &qword_24B2E9038);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - v13;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B0FCC74(v18, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_24B0FED48(v7);
    v15 = 1;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_24B0FD2B4(v11, v4);
    (*(v9 + 8))(v11, v8);
    sub_24B0391CC(v4, v14, &qword_27EFCB840, &qword_24B2E9030);
    v15 = 0;
  }

  (*(v2 + 56))(v14, v15, 1, v19);
  sub_24B0391CC(v14, v20, &qword_27EFCB848, &qword_24B2E9038);

  return result;
}

uint64_t sub_24B0FD2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v126 = a2;
  v5 = type metadata accessor for BadgeViewModifier(0);
  v6 = v5 - 8;
  v109 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v125 = v7;
  v8 = &v98[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24B2D1BB4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v104 = &v98[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80, &qword_24B2E8E00);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v98[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v98[-v16];
  v103 = type metadata accessor for SymbolView(0);
  MEMORY[0x28223BE20](v103);
  v102 = &v98[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v106 = &v98[-v20];
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB850, &qword_24B2E9040);
  MEMORY[0x28223BE20](v105);
  v108 = &v98[-v21];
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB858, &qword_24B2E9048);
  MEMORY[0x28223BE20](v107);
  v111 = &v98[-v22];
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB860, &qword_24B2E9050);
  MEMORY[0x28223BE20](v110);
  v114 = &v98[-v23];
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB868, &qword_24B2E9058);
  MEMORY[0x28223BE20](v112);
  v116 = &v98[-v24];
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB870, &qword_24B2E9060);
  MEMORY[0x28223BE20](v115);
  v118 = &v98[-v25];
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB878, &qword_24B2E9068);
  MEMORY[0x28223BE20](v117);
  v120 = &v98[-v26];
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB880, &qword_24B2E9070);
  MEMORY[0x28223BE20](v119);
  v123 = &v98[-v27];
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB888, &qword_24B2E9078);
  v28 = MEMORY[0x28223BE20](v122);
  v124 = &v98[-v29];
  (*(v10 + 16))(v17, a1, v9, v28);
  (*(v10 + 56))(v17, 0, 1, v9);
  v30 = *(v6 + 28);
  v121 = v3;
  v31 = (v3 + v30);
  v32 = *v31;
  v101 = *(v31 + 8);
  v100 = *(v31 + 9);
  v99 = *(v31 + 10);
  v113 = v31;
  v33 = v31[2];
  sub_24B0FCC74(v17, v14);
  v34 = *(v10 + 48);
  v35 = v14;
  LODWORD(v14) = v34(v14, 1, v9);

  if (v14 == 1)
  {
    v36 = v104;
    sub_24B2D1B94();
    sub_24B0FED48(v17);
    v37 = v34(v35, 1, v9);
    v38 = v36;
    if (v37 == 1)
    {
      goto LABEL_6;
    }

    v39 = v36;
    sub_24B0FED48(v35);
  }

  else
  {
    sub_24B0FED48(v17);
    v39 = v104;
    (*(v10 + 32))(v104, v35, v9);
  }

  v38 = v39;
LABEL_6:
  v40 = v102;
  (*(v10 + 32))(v102, v38, v9);
  v41 = v40 + *(v103 + 20);
  *v41 = v32;
  *(v41 + 8) = v101;
  *(v41 + 9) = v100;
  *(v41 + 10) = v99;
  *(v41 + 16) = v33;
  v42 = v106;
  sub_24B0FEE14(v40, v106, type metadata accessor for SymbolView);
  if (qword_27EFC7678 != -1)
  {
    swift_once();
  }

  v43 = qword_27EFCB8C8;
  v44 = v121;
  sub_24B0FEDB0(v121, v8);
  v45 = (*(v109 + 80) + 16) & ~*(v109 + 80);
  v46 = swift_allocObject();
  sub_24B0FEE14(v8, v46 + v45, type metadata accessor for BadgeViewModifier);
  v47 = v108;
  sub_24B0FEE14(v42, v108, type metadata accessor for SymbolView);
  v48 = &v47[*(v105 + 36)];
  *v48 = v43;
  v48[1] = sub_24B0FEE7C;
  v48[2] = v46;
  v49 = v118;
  if (qword_27EFC7680 != -1)
  {
    swift_once();
  }

  v50 = qword_27EFCB8D0;
  sub_24B0FEDB0(v44, v8);
  v51 = swift_allocObject();
  sub_24B0FEE14(v8, v51 + v45, type metadata accessor for BadgeViewModifier);
  v52 = v111;
  sub_24B0391CC(v47, v111, &qword_27EFCB850, &qword_24B2E9040);
  v53 = &v52[*(v107 + 36)];
  *v53 = v50;
  v53[1] = sub_24B0FEE94;
  v53[2] = v51;
  if (qword_27EFC7698 != -1)
  {
    swift_once();
  }

  v54 = qword_27EFCB8E8;
  sub_24B0FEDB0(v44, v8);
  v55 = swift_allocObject();
  sub_24B0FEE14(v8, v55 + v45, type metadata accessor for BadgeViewModifier);
  v56 = v52;
  v57 = v114;
  sub_24B0391CC(v56, v114, &qword_27EFCB858, &qword_24B2E9048);
  v58 = &v57[*(v110 + 36)];
  *v58 = v54;
  v58[1] = sub_24B0FEF60;
  v58[2] = v55;
  if (qword_27EFC7688 != -1)
  {
    swift_once();
  }

  v59 = qword_27EFCB8D8;
  sub_24B0FEDB0(v44, v8);
  v60 = swift_allocObject();
  sub_24B0FEE14(v8, v60 + v45, type metadata accessor for BadgeViewModifier);
  v61 = v57;
  v62 = v116;
  sub_24B0391CC(v61, v116, &qword_27EFCB860, &qword_24B2E9050);
  v63 = &v62[*(v112 + 36)];
  *v63 = v59;
  v63[1] = sub_24B0FEFA0;
  v63[2] = v60;
  if (qword_27EFC7690 != -1)
  {
    swift_once();
  }

  v64 = qword_27EFCB8E0;
  sub_24B0FEDB0(v44, v8);
  v65 = swift_allocObject();
  sub_24B0FEE14(v8, v65 + v45, type metadata accessor for BadgeViewModifier);
  sub_24B0391CC(v62, v49, &qword_27EFCB868, &qword_24B2E9058);
  v66 = (v49 + *(v115 + 36));
  *v66 = v64;
  v66[1] = sub_24B0FF03C;
  v66[2] = v65;
  v67 = v113;
  if (qword_27EFC76A0 != -1)
  {
    swift_once();
  }

  v68 = qword_27EFCB8F0;
  sub_24B0FEDB0(v44, v8);
  v69 = swift_allocObject();
  sub_24B0FEE14(v8, v69 + v45, type metadata accessor for BadgeViewModifier);
  v70 = v120;
  sub_24B0391CC(v49, v120, &qword_27EFCB870, &qword_24B2E9060);
  v71 = &v70[*(v117 + 36)];
  *v71 = v68;
  v71[1] = sub_24B0FF1DC;
  v71[2] = v69;
  LOBYTE(v69) = sub_24B2D42F4();
  sub_24B2D32F4();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v80 = v123;
  sub_24B0391CC(v70, v123, &qword_27EFCB878, &qword_24B2E9068);
  v81 = &v80[*(v119 + 36)];
  *v81 = v69;
  *(v81 + 1) = v73;
  *(v81 + 2) = v75;
  *(v81 + 3) = v77;
  *(v81 + 4) = v79;
  v81[40] = 0;
  v82 = sub_24B2D5064();
  v84 = v83;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v85 = v67[4];
  if (v85)
  {

    v86 = 256;
  }

  else
  {
    v86 = 0;
  }

  v87 = v80;
  v88 = v124;
  sub_24B0391CC(v87, v124, &qword_27EFCB880, &qword_24B2E9070);
  v89 = &v88[*(v122 + 36)];
  *v89 = v85;
  *(v89 + 4) = v86;
  *(v89 + 2) = v82;
  *(v89 + 3) = v84;
  v90 = sub_24B2D5064();
  v92 = v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB840, &qword_24B2E9030);
  v94 = v126;
  v95 = v126 + *(v93 + 36);
  sub_24B0FE190(v44, v95);
  v96 = (v95 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB890, &qword_24B2E9080) + 36));
  *v96 = v90;
  v96[1] = v92;
  return sub_24B0391CC(v88, v94, &qword_27EFCB888, &qword_24B2E9078);
}

double sub_24B0FE000(uint64_t a1, uint64_t a2)
{
  v3 = sub_24B2D3CD4();
  v4 = MEMORY[0x24C239EC0](v3);
  return v4 * (*(a2 + *(type metadata accessor for BadgeViewModifier(0) + 20) + 88) + 1.0);
}

double sub_24B0FE058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), double (*a4)(uint64_t))
{
  v6 = a3();
  v7 = a4(v6);
  return v7 * (1.0 - *(a2 + *(type metadata accessor for BadgeViewModifier(0) + 20) + 88));
}

double sub_24B0FE0C4(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24B2D3CB4();
  v5 = MEMORY[0x24C239EC0](v4);
  v6 = sub_24B2D3CC4();
  v7 = MEMORY[0x24C239EC0](v6);
  return v5 + v7 * *(a3 + *(type metadata accessor for BadgeViewModifier(0) + 20) + 96);
}

double sub_24B0FE124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), double (*a4)(uint64_t))
{
  v6 = a3();
  v7 = a4(v6);
  return v7 * (1.0 - *(a2 + *(type metadata accessor for BadgeViewModifier(0) + 20) + 96));
}

void sub_24B0FE190(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B2D3C64();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB898, &qword_24B2E9088);
  v6 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB8A0, &qword_24B2E9090);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - v10;
  sub_24B2D5694();
  v42 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = type metadata accessor for BadgeViewModifier(0);
  v13 = (a1 + *(v12 + 20));
  v14 = v13[4];
  if (v14 && (v15 = v13[7]) != 0)
  {
    v16 = v12;
    v17 = v13[6];
    v18 = v13[8];
    v19 = v13[4];
    v37 = v13[5];
    v38 = a2;
    v35 = v18;
    v36 = v17;
    sub_24B0FF21C(v19, v37, v17, v15);

    sub_24B2D3384();
    *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB8A8, &qword_24B2E9098) + 56)] = 256;
    v20 = a1 + *(v16 + 24);
    v21 = *v20;
    if (*(v20 + 8) != 1)
    {

      sub_24B2D5924();
      v22 = sub_24B2D42A4();
      sub_24B2D3154();

      v23 = v39;
      sub_24B2D3C54();
      swift_getAtKeyPath();
      sub_24AFEFDB8(v21, 0);
      (*(v40 + 8))(v23, v41);
    }

    v24 = sub_24B2D42F4();
    sub_24B2D32F4();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    sub_24B0FF260(v14, v37, v36, v15);

    v33 = v43;
    v34 = &v8[*(v43 + 36)];
    *v34 = v24;
    *(v34 + 1) = v26;
    *(v34 + 2) = v28;
    *(v34 + 3) = v30;
    *(v34 + 4) = v32;
    v34[40] = 0;
    sub_24B0391CC(v8, v11, &qword_27EFCB898, &qword_24B2E9088);
    (*(v6 + 56))(v11, 0, 1, v33);
    a2 = v38;
  }

  else
  {
    (*(v6 + 56))(v11, 1, 1, v43);
  }

  sub_24B0391CC(v11, a2, &qword_27EFCB8A0, &qword_24B2E9090);
}

__n128 BadgeStyle.init(badgeIconFont:supportsDynamicSize:placement:border:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  v6 = *(a4 + 48);
  *(a5 + 88) = xmmword_24B2E8DF0;
  *a5 = a1;
  *(a5 + 8) = 1;
  *(a5 + 9) = a2;
  *(a5 + 10) = 1;
  *(a5 + 16) = 0;
  *(a5 + 24) = v5;
  v7 = *(a4 + 16);
  *(a5 + 32) = *a4;
  *(a5 + 48) = v7;
  result = *(a4 + 32);
  *(a5 + 64) = result;
  *(a5 + 80) = v6;
  return result;
}

uint64_t BadgeStyle.Placement.Alignment.hashValue.getter()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

double BadgeStyle.Border.shadow.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 24);
  a1[1] = v2;

  return result;
}

__n128 BadgeStyle.Border.init(color:additionalWidth:shadow:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = Symbol.Color.uiColor.getter();
  v11 = sub_24B2D1B74();
  v13 = a4[1];
  v14 = *a4;
  (*(*(v11 - 8) + 8))(a1, v11);
  *a5 = v10;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  result = v14;
  *(a5 + 40) = v13;
  *(a5 + 24) = v14;
  return result;
}

__n128 BadgeStyle.Border.init(specificColor:additionalWidth:shadow:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  result = *a4;
  v6 = *(a4 + 16);
  *(a5 + 24) = *a4;
  *(a5 + 40) = v6;
  return result;
}

uint64_t BadgeStyle.Shadow.init(color:radius:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  return result;
}

uint64_t sub_24B0FE7C4(uint64_t a1)
{
  v2 = type metadata accessor for BadgeViewModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B0FE820()
{
  result = qword_27EFCB808;
  if (!qword_27EFCB808)
  {
    type metadata accessor for BadgeViewModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB808);
  }

  return result;
}

unint64_t sub_24B0FE87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB810;
  if (!qword_27EFCB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB810);
  }

  return result;
}

uint64_t sub_24B0FE8D0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
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

uint64_t sub_24B0FE92C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BadgeStyle.Placement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for BadgeStyle.Placement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24B0FEB6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24B0FEBB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24B0FEC48(uint64_t a1)
{
  sub_24B0FECD4(319);
  if (v1 <= 0x3F)
  {
    sub_24B0F6218();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B0FECD4(uint64_t a1)
{
  if (!qword_27EFCB4C8)
  {
    sub_24B2D1BB4();
    v1 = sub_24B2D5A84();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFCB4C8);
    }
  }
}

uint64_t sub_24B0FED48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80, &qword_24B2E8E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B0FEDB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BadgeViewModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B0FEE14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B0FEFB8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for BadgeViewModifier(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroyTm_13()
{
  v1 = type metadata accessor for BadgeViewModifier(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_24B2D1BB4();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = v5 + *(v1 + 20);

  if (*(v8 + 32))
  {
  }

  sub_24AFEFDB8(*(v5 + *(v1 + 24)), *(v5 + *(v1 + 24) + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_24B0FF21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

double sub_24B0FF260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_24B0FF2A0()
{
  result = qword_27EFCB8B0;
  if (!qword_27EFCB8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCB828, &qword_24B2E9018);
    sub_24B039184(&qword_27EFCB8B8, &qword_27EFCB838, &qword_24B2E9028, MEMORY[0x277CE04B0]);
    sub_24B039184(&qword_27EFCB8C0, &qword_27EFCB830, &qword_24B2E9020, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB8B0);
  }

  return result;
}

uint64_t sub_24B0FF384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B0FFE2C(a1, a2, a3);
  result = sub_24B2D3CE4();
  qword_27EFCB8C8 = result;
  return result;
}

uint64_t sub_24B0FF3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B0FFDD8(a1, a2, a3);
  result = sub_24B2D3CE4();
  qword_27EFCB8D0 = result;
  return result;
}

uint64_t sub_24B0FF42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B0FFD84(a1, a2, a3);
  result = sub_24B2D3CE4();
  qword_27EFCB8D8 = result;
  return result;
}

uint64_t sub_24B0FF480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B0FFD30(a1, a2, a3);
  result = sub_24B2D3CE4();
  qword_27EFCB8E0 = result;
  return result;
}

uint64_t sub_24B0FF4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B0FFCDC(a1, a2, a3);
  result = sub_24B2D3E24();
  qword_27EFCB8E8 = result;
  return result;
}

uint64_t sub_24B0FF530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B0FFC88(a1, a2, a3);
  result = sub_24B2D3E24();
  qword_27EFCB8F0 = result;
  return result;
}

void sub_24B0FF584()
{
  sub_24B2D36C4();
  sub_24B2D36D4();
  sub_24B2D36C4();
  sub_24B2D36C4();
}

uint64_t View.alignmentGuide(badge:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v6 = sub_24B2D37B4();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = sub_24B2D37B4();
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  if (qword_27EFC7698 != -1)
  {
    swift_once();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  sub_24B2D4734();

  if (qword_27EFC7678 != -1)
  {
    swift_once();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v13;
  v16 = MEMORY[0x277CE0760];
  v27 = a3;
  v28 = MEMORY[0x277CE0760];
  WitnessTable = swift_getWitnessTable();
  sub_24B2D4734();

  (*(v21 + 8))(v8, v6);
  if (qword_27EFC7680 != -1)
  {
    swift_once();
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  *(v18 + 24) = v13;
  v25 = WitnessTable;
  v26 = v16;
  v19 = v23;
  swift_getWitnessTable();
  sub_24B2D4734();

  return (*(v22 + 8))(v11, v19);
}

void sub_24B0FFA40()
{
  sub_24B2D36C4();
  sub_24B2D36D4();
  sub_24B2D36D4();
  sub_24B2D36D4();
}

void sub_24B0FFB0C()
{
  sub_24B2D36C4();
  sub_24B2D36D4();
  sub_24B2D36D4();
  sub_24B2D36D4();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BadgeOffsetStyleV2(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BadgeOffsetStyleV2(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_24B0FFC3C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B0FFC58(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_24B0FFC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB8F8;
  if (!qword_27EFCB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB8F8);
  }

  return result;
}

unint64_t sub_24B0FFCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB900;
  if (!qword_27EFCB900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB900);
  }

  return result;
}

unint64_t sub_24B0FFD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB908;
  if (!qword_27EFCB908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB908);
  }

  return result;
}

unint64_t sub_24B0FFD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB910;
  if (!qword_27EFCB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB910);
  }

  return result;
}

unint64_t sub_24B0FFDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB918;
  if (!qword_27EFCB918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB918);
  }

  return result;
}

unint64_t sub_24B0FFE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB920;
  if (!qword_27EFCB920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB920);
  }

  return result;
}

uint64_t sub_24B0FFEE8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_24B0FFF44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_24B0FFFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB928;
  if (!qword_27EFCB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB928);
  }

  return result;
}

id sub_24B100000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = [objc_opt_self() viewControllerForContact_];

    return v4;
  }

  else if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFCE7C0, &qword_24B2DEAA8);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_24B2DE430;
    *(v8 + 32) = a3;
    *(v8 + 40) = a4;

    v9 = sub_24B2D5524();

    v10 = [objc_opt_self() contactWithDisplayName:0 handleStrings:v9];

    v11 = [objc_opt_self() viewControllerForUnknownContact_];
    return v11;
  }

  else
  {
    v12 = objc_allocWithZone(MEMORY[0x277CBDC48]);

    return [v12 init];
  }
}

uint64_t sub_24B100170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B100260(a1, a2, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24B1001D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B100260(a1, a2, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24B100238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B100260(a1, a2, a3);
  sub_24B2D41E4();
  __break(1u);
}

unint64_t sub_24B100260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB930;
  if (!qword_27EFCB930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB930);
  }

  return result;
}

uint64_t CountDownTimerText.init(date:isNarrow:localizerContainer:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_24B2D24A4();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for CountDownTimerText(0);
  *(a5 + *(result + 20)) = a2;
  v12 = (a5 + *(result + 24));
  *v12 = a3;
  v12[1] = a4;
  return result;
}

double CountDownTimerText.body.getter@<D0>(_OWORD *a1@<X8>)
{
  v61 = a1;
  v2 = type metadata accessor for CountDownTimerText.FormatStyle(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB938, &qword_24B2E93A0);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for CountDownTimerText(0);
  v7 = (v1 + *(v6 + 24));
  v8 = *v7;
  if (*v7)
  {
    v59 = v7[1];
    v60 = v8;

    sub_24B2D36B4();
    sub_24B100808(*(v1 + *(v6 + 20)), v4);
    sub_24B1016CC(&qword_27EFCB940, type metadata accessor for CountDownTimerText.FormatStyle, &unk_24B2E9544);
    v9 = sub_24B2D45D4();
    v11 = v10;
    v57 = v12;
    v58 = v13;
    sub_24B2D36B4();
    sub_24B100808(0, v4);
    v14 = sub_24B2D45D4();
    v16 = v15;
    v18 = v17;
    v19 = v9;
    v20 = sub_24B2D45A4();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    sub_24B083C34(v14, v16, v18 & 1);

    sub_24B083C34(v19, v11, v57 & 1);

    v28 = v59;
    v27 = v60;
    v29 = v60(v20, v22, v24 & 1, v26);
    v31 = v30;
    LOBYTE(v16) = v32;
    v34 = v33;
    sub_24B083C34(v20, v22, v24 & 1);

    v35 = v16 & 1;
    v62 = v29;
    v63 = v31;
    v64 = v35;
    v65 = v34;
    v66 = 0;
    sub_24B083C44(v29, v31, v35);

    sub_24B2D3ED4();
    sub_24AFD5890(v27, v28);
    sub_24B083C34(v29, v31, v35);
  }

  else
  {
    sub_24B2D36B4();
    sub_24B100808(*(v1 + *(v6 + 20)), v4);
    sub_24B1016CC(&qword_27EFCB940, type metadata accessor for CountDownTimerText.FormatStyle, &unk_24B2E9544);
    v36 = sub_24B2D45D4();
    v38 = v37;
    v40 = v39;
    sub_24B2D36B4();
    sub_24B100808(0, v4);
    v41 = sub_24B2D45D4();
    v43 = v42;
    v45 = v44;
    v46 = sub_24B2D45A4();
    v59 = v47;
    v60 = v46;
    v49 = v48;
    v51 = v50;
    sub_24B083C34(v41, v43, v45 & 1);

    sub_24B083C34(v36, v38, v40 & 1);

    v62 = v60;
    v63 = v49;
    v64 = v51 & 1;
    v65 = v59;
    v66 = 1;
    sub_24B2D3ED4();
  }

  result = *&v67;
  v53 = v68;
  v54 = v69;
  v55 = v61;
  *v61 = v67;
  v55[1] = v53;
  *(v55 + 32) = v54;
  return result;
}

uint64_t sub_24B100808@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v30 = a2;
  v29 = sub_24B2D5FD4();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_24B2D61C4();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D61A4();
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24B2D6254();
  v21 = *(v9 - 8);
  v22 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24B2D6264();
  v19 = *(v12 - 8);
  v20 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8240, &qword_24B2E95A0);
  sub_24B2D6204();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24B2DEAD0;
  sub_24B2D61E4();
  sub_24B2D61F4();
  sub_24B134838(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v23)
  {
    sub_24B2D6244();
  }

  else
  {
    sub_24B2D6224();
  }

  sub_24B2D6194();
  v16 = v27;
  v17 = v29;
  (*(v27 + 104))(v3, *MEMORY[0x277D84668], v29);
  sub_24B2D61B4();
  (*(v16 + 8))(v3, v17);
  sub_24B2D1F74();

  (*(v26 + 8))(v5, v28);
  (*(v24 + 8))(v8, v25);
  (*(v21 + 8))(v11, v22);
  return (*(v19 + 32))(v30, v14, v20);
}

uint64_t sub_24B100CA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_24B2D6264();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v22 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB9A0, &qword_24B2E9590);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for CountDownTimerText.FormatStyle(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B101834(v12, v13, v14);
  sub_24B2D6134();
  if (!v2)
  {
    v15 = v19;
    v16 = v21;
    sub_24B1016CC(&qword_27EFCB9B0, MEMORY[0x277CC9FF0], MEMORY[0x277CCA008]);
    sub_24B2D5EA4();
    (*(v20 + 8))(v8, v6);
    (*(v15 + 32))(v11, v22, v4);
    sub_24B101888(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_24B100F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001BLL && 0x800000024B2DB740 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24B2D6004();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24B100FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24B101834(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_24B10101C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24B101834(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_24B101088@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  return result;
}

uint64_t sub_24B1010F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void, uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  result = a4(*a1, a1[1], a2, a3);
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8 & 1;
  return result;
}

uint64_t sub_24B10113C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_24B2D6164();
  if (v3 < 0 && (v4 = __OFSUB__(0, v3), result = -v3, v4))
  {
    __break(1u);
  }

  else
  {
    result = sub_24B2D6214();
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_24B1011C8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB9B8, &qword_24B2E9598);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B101834(v6, v7, v8);
  sub_24B2D6144();
  sub_24B2D6264();
  sub_24B1016CC(&qword_27EFCB9C0, MEMORY[0x277CC9FF0], MEMORY[0x277CC9FF8]);
  sub_24B2D5F24();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24B101340()
{
  sub_24B2D60E4();
  sub_24B2D6264();
  sub_24B1016CC(&qword_27EFCB9C8, MEMORY[0x277CC9FF0], MEMORY[0x277CCA000]);
  sub_24B2D5254();
  return sub_24B2D6124();
}

uint64_t sub_24B1013C8(uint64_t a1)
{
  sub_24B2D6264();
  sub_24B1016CC(&qword_27EFCB9C8, MEMORY[0x277CC9FF0], MEMORY[0x277CCA000]);

  return sub_24B2D5254();
}

uint64_t sub_24B10144C(uint64_t a1)
{
  sub_24B2D60E4();
  sub_24B2D6264();
  sub_24B1016CC(&qword_27EFCB9C8, MEMORY[0x277CC9FF0], MEMORY[0x277CCA000]);
  sub_24B2D5254();
  return sub_24B2D6124();
}

void sub_24B101500(uint64_t a1)
{
  sub_24B2D24A4();
  if (v1 <= 0x3F)
  {
    sub_24B10158C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B10158C(uint64_t a1)
{
  if (!qword_27EFCB958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCB960, &unk_24B2E9418);
    v1 = sub_24B2D5A84();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFCB958);
    }
  }
}

uint64_t sub_24B101618(uint64_t a1)
{
  result = sub_24B2D6264();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24B1016CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B101834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB9A8;
  if (!qword_27EFCB9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB9A8);
  }

  return result;
}

uint64_t sub_24B101888(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CountDownTimerText.FormatStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B101900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB9D0;
  if (!qword_27EFCB9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB9D0);
  }

  return result;
}

unint64_t sub_24B101958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB9D8;
  if (!qword_27EFCB9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB9D8);
  }

  return result;
}

unint64_t sub_24B1019B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCB9E0;
  if (!qword_27EFCB9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB9E0);
  }

  return result;
}

uint64_t sub_24B101A28@<X0>(void *a1@<X8>)
{
  v3 = sub_24B2D3C64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97E0, &qword_24B2E2F90);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for DismissButton(0);
  sub_24B10257C(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24B2D34F4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24B2D5924();
    v13 = sub_24B2D42A4();
    sub_24B2D3154();

    sub_24B2D3C54();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t DismissButton.init(role:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for DismissButton(0) + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97E0, &qword_24B2E2F90);
  swift_storeEnumTagMultiPayload();
  v5 = sub_24B2D32E4();
  v6 = *(*(v5 - 8) + 32);

  return v6(a2, a1, v5);
}

uint64_t type metadata accessor for DismissButton(uint64_t a1)
{
  result = qword_27EFCB9E8;
  if (!qword_27EFCB9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DismissButton.body.getter()
{
  v1 = type metadata accessor for DismissButton(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = sub_24B2D32E4();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v0, v5);
  sub_24B101FF0(v0, &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  sub_24B102054(&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  return MEMORY[0x24C23B520](v7, sub_24B1020B8, v10);
}

double sub_24B101EAC()
{
  v0 = sub_24B2D34F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B101A28(v3);
  sub_24B2D34E4();
  (*(v1 + 8))(v3, v0);

  return result;
}

uint64_t sub_24B101FF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DismissButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B102054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DismissButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B1020D8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D32E4();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v2, v7);
  sub_24B101FF0(v2, v5);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_24B102054(v5, v12 + v11);
  return MEMORY[0x24C23B520](v9, sub_24B1025EC, v12);
}

void sub_24B102290(uint64_t a1)
{
  sub_24B2D32E4();
  if (v1 <= 0x3F)
  {
    sub_24B102314(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B102314(uint64_t a1)
{
  if (!qword_27EFC9B78)
  {
    sub_24B2D34F4();
    v1 = sub_24B2D3374();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFC9B78);
    }
  }
}

unint64_t sub_24B10236C()
{
  result = qword_27EFCB9F8;
  if (!qword_27EFCB9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBA00, &unk_24B2E9760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCB9F8);
  }

  return result;
}

uint64_t objectdestroyTm_14()
{
  v1 = (type metadata accessor for DismissButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_24B2D32E4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97E0, &qword_24B2E2F90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24B2D34F4();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_24B10251C()
{
  type metadata accessor for DismissButton(0);

  return sub_24B101EAC();
}

uint64_t sub_24B10257C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97E0, &qword_24B2E2F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

FindMyUICore::DynamicControlsStack __swiftcall DynamicControlsStack.init(controls:isSameWidthWhenHorizontal:isSameWidthWhenVertical:)(FindMyUICore::DynamicControlsStack controls, Swift::Bool isSameWidthWhenHorizontal, Swift::Bool isSameWidthWhenVertical)
{
  *v3 = controls.controls._rawValue;
  *(v3 + 8) = isSameWidthWhenHorizontal;
  *(v3 + 9) = isSameWidthWhenVertical;
  controls.isSameWidthWhenHorizontal = isSameWidthWhenHorizontal;
  return controls;
}

uint64_t DynamicControlsStack.body.getter@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v26 = sub_24B2D3F04();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBA08, &qword_24B2E9770);
  MEMORY[0x28223BE20](v24);
  v6 = &v21[-v5];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBA10, &unk_24B2E9778);
  v7 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v9 = &v21[-v8];
  v23 = *v1;
  v22 = *(v1 + 8);
  v10 = *(v1 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8C28, &unk_24B2E1EC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B2DEAD0;
  v12 = sub_24B2D42B4();
  *(inited + 32) = v12;
  v13 = sub_24B2D42D4();
  *(inited + 33) = v13;
  v14 = sub_24B2D42C4();
  sub_24B2D42C4();
  if (sub_24B2D42C4() != v12)
  {
    v14 = sub_24B2D42C4();
  }

  sub_24B2D42C4();
  if (sub_24B2D42C4() != v13)
  {
    v14 = sub_24B2D42C4();
  }

  *v6 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBA18, &qword_24B2E9788);
  if (v10)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  sub_24B102974(v23, v16 | v22, &v6[*(v15 + 44)]);
  sub_24B2D3EF4();
  sub_24B039184(&qword_27EFCBA20, &qword_27EFCBA08, &qword_24B2E9770, MEMORY[0x277CDD828]);
  sub_24B2D4824();
  (*(v2 + 8))(v4, v26);
  sub_24AFF8258(v6, &qword_27EFCBA08, &qword_24B2E9770);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBA28, &unk_24B2E9790);
  v18 = v27;
  v19 = (v27 + *(v17 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E10, &qword_24B2E9E00);
  sub_24B2D3954();
  *v19 = swift_getKeyPath();
  return (*(v7 + 32))(v18, v9, v25);
}

double sub_24B102974@<D0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBA38, &qword_24B2E9868);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v34 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBA40, &qword_24B2E9870);
  MEMORY[0x28223BE20](v10 - 8);
  v40 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  sub_24B2D5694();
  v39 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v35 = v9;
  *v14 = sub_24B2D3CD4();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v34 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBA48, &qword_24B2E9878);
  v43 = a1;
  v15 = swift_allocObject();
  v16 = a2 & 1;
  *(v15 + 16) = a2 & 1;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2 & 1;
  v17 = (a2 >> 8) & 1;
  *(v15 + 33) = v17;
  v37 = a1;
  swift_bridgeObjectRetain_n();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBA50, &qword_24B2E9880);
  v19 = sub_24B039184(&qword_27EFCBA58, &qword_27EFCBA50, &qword_24B2E9880, MEMORY[0x277D83980]);
  v22 = sub_24B10328C(v19, v20, v21);
  sub_24B1032E0(v22, v23, v24);
  v38 = v18;
  v36 = v19;
  sub_24B2D4EE4();

  v25 = sub_24B2D3E04();
  v26 = v35;
  *v35 = v25;
  *(v26 + 8) = 0;
  *(v26 + 16) = 1;
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBA70, &qword_24B2E9888);
  v27 = v37;
  v43 = v37;
  v28 = swift_allocObject();
  *(v28 + 16) = v17;
  *(v28 + 24) = v27;
  *(v28 + 32) = v16;
  *(v28 + 33) = v17;
  swift_bridgeObjectRetain_n();
  sub_24B2D4EE4();

  v29 = v40;
  sub_24B008890(v14, v40, &qword_27EFCBA40, &qword_24B2E9870);
  v30 = v42;
  sub_24B008890(v26, v42, &qword_27EFCBA38, &qword_24B2E9868);
  v31 = v41;
  sub_24B008890(v29, v41, &qword_27EFCBA40, &qword_24B2E9870);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBA78, &qword_24B2E9890);
  sub_24B008890(v30, v31 + *(v32 + 48), &qword_27EFCBA38, &qword_24B2E9868);
  sub_24AFF8258(v26, &qword_27EFCBA38, &qword_24B2E9868);
  sub_24AFF8258(v14, &qword_27EFCBA40, &qword_24B2E9870);
  sub_24AFF8258(v30, &qword_27EFCBA38, &qword_24B2E9868);
  sub_24AFF8258(v29, &qword_27EFCBA40, &qword_24B2E9870);

  return result;
}

__n128 sub_24B102E60@<Q0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1[3];
  v22 = a1[2];
  v23 = v7;
  v24 = *(a1 + 8);
  v8 = a1[1];
  v20 = *a1;
  v21 = v8;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
  }

  else
  {
    a3 = MEMORY[0x277D84F90];
  }

  v19[0] = 0;
  sub_24B103358(&v20, v17);
  sub_24B2D4CC4();
  v9 = v17[0];
  v10 = v18;
  KeyPath = swift_getKeyPath();
  v17[0] = 0;
  v12 = swift_getKeyPath();

  v13 = v17[0];
  v14 = v23;
  *(a4 + 32) = v22;
  *(a4 + 48) = v14;
  v15 = v24;
  result = v21;
  *a4 = v20;
  *(a4 + 16) = result;
  *(a4 + 64) = v15;
  *(a4 + 72) = a3;
  *(a4 + 80) = v9;
  *(a4 + 88) = v10;
  *(a4 + 96) = KeyPath;
  *(a4 + 104) = v13;
  *(a4 + 112) = v12;
  *(a4 + 120) = 0;
  return result;
}

uint64_t sub_24B102FE4(uint64_t a1)
{
  v2 = sub_24B2D3964();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24B2D3AF4();
}

uint64_t sub_24B1030C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_24B103110(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B103160()
{
  result = qword_27EFCBA30;
  if (!qword_27EFCBA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBA28, &unk_24B2E9790);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBA08, &qword_24B2E9770);
    sub_24B039184(&qword_27EFCBA20, &qword_27EFCBA08, &qword_24B2E9770, MEMORY[0x277CDD828]);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC8F00, &qword_27EFC8E10, &qword_24B2E9E00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBA30);
  }

  return result;
}

unint64_t sub_24B10328C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCBA60;
  if (!qword_27EFCBA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBA60);
  }

  return result;
}

unint64_t sub_24B1032E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCBA68;
  if (!qword_27EFCBA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBA68);
  }

  return result;
}

uint64_t sub_24B1033B8()
{
  v1 = sub_24B2D3C64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for EmojiImageView(0) + 24);
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_24B2D5924();
    v8 = sub_24B2D42A4();
    sub_24B2D3154();

    sub_24B2D3C54();
    swift_getAtKeyPath();
    v9 = j__swift_release(v6);
    (*(v2 + 8))(v4, v1, v9);
    return v11[1];
  }

  return v6;
}

double sub_24B10350C()
{
  v1 = sub_24B2D3C64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for EmojiImageView(0) + 28));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_24B2D5924();
  v8 = sub_24B2D42A4();
  sub_24B2D3154();

  sub_24B2D3C54();
  swift_getAtKeyPath();
  sub_24AFEFDB8(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_24B103668@<X0>(void *a1@<X8>)
{
  v3 = sub_24B2D3C64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBAA8, &qword_24B2E9908);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for EmojiImageView(0);
  sub_24B008890(v1 + *(v10 + 32), v9, &qword_27EFCBAA8, &qword_24B2E9908);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24B2D37A4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24B2D5924();
    v13 = sub_24B2D42A4();
    sub_24B2D3154();

    sub_24B2D3C54();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24B103870()
{
  v0 = sub_24B2D3184();
  __swift_allocate_value_buffer(v0, qword_27EFCBA80);
  __swift_project_value_buffer(v0, qword_27EFCBA80);
  return sub_24B2D3174();
}

uint64_t EmojiImageView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for EmojiImageView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_24B2D5064();
  a1[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBA98, &qword_24B2E98F0);
  sub_24B103AEC(v1, a1 + *(v8 + 44));
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBAA0, &qword_24B2E98F8) + 36);
  *v9 = 0;
  *(v9 + 4) = 1;
  sub_24B104F80(v1, v6);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_24B105A4C(v6, v11 + v10, type metadata accessor for EmojiImageView);
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBAB0, &qword_24B2E9918) + 36));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBAB8, &qword_24B2E9920);
  sub_24B2D56A4();
  result = sub_24B008890(v1, v12 + *(v13 + 40), &qword_27EFCBAC0, &qword_24B2E9928);
  *v12 = &unk_24B2E9910;
  v12[1] = v11;
  return result;
}

uint64_t type metadata accessor for EmojiImageView(uint64_t a1)
{
  result = qword_27EFCBAD0;
  if (!qword_27EFCBAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_24B103AEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v48 = a1;
  v2 = sub_24B2D40E4();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94F8, &qword_24B2E2B20);
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBB40, &qword_24B2E9A48);
  MEMORY[0x28223BE20](v42);
  v40 = &v36 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBB48, &qword_24B2E9A50);
  MEMORY[0x28223BE20](v44);
  v10 = &v36 - v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBB50, &qword_24B2E9A58);
  MEMORY[0x28223BE20](v41);
  v12 = (&v36 - v11);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBB58, &qword_24B2E9A60);
  MEMORY[0x28223BE20](v46);
  v43 = &v36 - v13;
  v14 = sub_24B2D4BD4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBB60, &qword_24B2E9A68);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v36 - v19;
  sub_24B2D5694();
  v45 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v50 = *(v48 + *(type metadata accessor for EmojiImageView(0) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBB38, &qword_24B2E9A40);
  sub_24B2D4CD4();
  v21 = v49;
  if ((~v49 & 0xF000000000000007) != 0)
  {
    if (v49 >> 62)
    {
      if (v49 >> 62 == 1)
      {
        sub_24B105B44(v49);
        LOBYTE(v49) = 0;
        goto LABEL_8;
      }

      sub_24B2D33E4();
      sub_24B2D40D4();
      sub_24B039184(qword_27EFC9500, &qword_27EFC94F8, &qword_24B2E2B20, MEMORY[0x277CDD7F8]);
      sub_24B105D2C();
      v27 = v39;
      v28 = v40;
      v29 = v37;
      sub_24B2D46A4();
      (*(v38 + 8))(v4, v27);
      (*(v36 + 8))(v7, v29);
      v30 = (v28 + *(v42 + 36));
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E20, &qword_24B2EEC30) + 28);
      v32 = *MEMORY[0x277CDF438];
      v33 = sub_24B2D3364();
      (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
      *v30 = swift_getKeyPath();
      v24 = &qword_24B2E9A48;
      sub_24B008890(v28, v12, &qword_27EFCBB40, &qword_24B2E9A48);
      swift_storeEnumTagMultiPayload();
      sub_24B105BE4();
      v34 = v43;
      sub_24B2D3ED4();
      sub_24B008890(v34, v10, &qword_27EFCBB58, &qword_24B2E9A60);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBB68, &qword_24B2E9A70);
      sub_24B105B58();
      sub_24B105D84();
      sub_24B2D3ED4();
      sub_24AFF8258(v34, &qword_27EFCBB58, &qword_24B2E9A60);
      v25 = v28;
      v26 = &qword_27EFCBB40;
    }

    else
    {
      (*(v15 + 104))(v17, *MEMORY[0x277CE0FE0], v14);
      v22 = sub_24B2D4C14();
      (*(v15 + 8))(v17, v14);
      *v12 = v22;
      swift_storeEnumTagMultiPayload();
      sub_24B105BE4();
      swift_retain_n();
      v23 = v43;
      sub_24B2D3ED4();
      v24 = &qword_24B2E9A60;
      sub_24B008890(v23, v10, &qword_27EFCBB58, &qword_24B2E9A60);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBB68, &qword_24B2E9A70);
      sub_24B105B58();
      sub_24B105D84();
      sub_24B2D3ED4();
      sub_24B105B44(v21);

      v25 = v23;
      v26 = &qword_27EFCBB58;
    }

    sub_24AFF8258(v25, v26, v24);
    goto LABEL_12;
  }

  LOBYTE(v49) = 1;
LABEL_8:
  sub_24B2D3ED4();
  *v10 = v50;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBB68, &qword_24B2E9A70);
  sub_24B105B58();
  sub_24B105D84();
  sub_24B2D3ED4();
LABEL_12:
  sub_24AFE0304(v20, v47);

  return result;
}

uint64_t sub_24B104300(uint64_t a1)
{
  v1[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  v1[13] = swift_task_alloc();
  v2 = sub_24B2D37A4();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = type metadata accessor for EmojiImageCacheRequest(0);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBAC0, &qword_24B2E9928);
  v1[21] = swift_task_alloc();
  v3 = sub_24B2D1D74();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  sub_24B2D5694();
  v1[26] = sub_24B2D5684();
  v5 = sub_24B2D5604();
  v1[27] = v5;
  v1[28] = v4;

  return MEMORY[0x2822009F8](sub_24B104514, v5, v4);
}

uint64_t sub_24B104514()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  sub_24B008890(*(v0 + 96), v3, &qword_27EFCBAC0, &qword_24B2E9928);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 168);
    v5 = *(v0 + 96);

    sub_24AFF8258(v4, &qword_27EFCBAC0, &qword_24B2E9928);
    *(v0 + 16) = *(v5 + *(type metadata accessor for EmojiImageView(0) + 36));
    *(v0 + 64) = 0xF000000000000007;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBB38, &qword_24B2E9A40);
    sub_24B2D4CE4();
LABEL_14:

    v40 = *(v0 + 8);

    return v40();
  }

  v6 = *(v0 + 192);
  v7 = *(v0 + 200);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  v10 = *(v0 + 152);
  v45 = *(v0 + 144);
  v46 = *(v0 + 160);
  v11 = *(v0 + 136);
  v41 = *(v0 + 128);
  v12 = *(v0 + 112);
  v13 = *(v0 + 120);
  v14 = *(v0 + 96);
  v43 = v6;
  v44 = *(v8 + 32);
  v44(v7, *(v0 + 168), v9);
  (*(v8 + 16))(v6, v7, v9);
  v15 = type metadata accessor for EmojiImageView(0);
  *(v0 + 232) = v15;
  v42 = *(v14 + *(v15 + 20));
  v16 = sub_24B10350C();
  sub_24B103668(v11);
  (*(v13 + 104))(v41, *MEMORY[0x277CDFA90], v12);
  v17 = sub_24B2D3794();
  v18 = *(v13 + 8);
  v18(v41, v12);
  v18(v11, v12);
  v19 = sub_24B2D1274();
  v21 = v20;
  *(v10 + v45[9]) = 0;
  *(v10 + v45[10]) = 1;
  v44(v10, v43, v9);
  v22 = 34.0;
  if (v42)
  {
    v22 = 100.0;
  }

  *(v10 + v45[5]) = v22;
  *(v10 + v45[6]) = v16;
  *(v10 + v45[7]) = v17 & 1;
  v23 = (v10 + v45[8]);
  *v23 = v19;
  v23[1] = v21;
  sub_24B105A4C(v10, v46, type metadata accessor for EmojiImageCacheRequest);
  v24 = sub_24B1033B8();
  *(v0 + 240) = v24;
  if (!v24)
  {

    if (qword_27EFC76A8 != -1)
    {
      swift_once();
    }

    v31 = sub_24B2D3184();
    __swift_project_value_buffer(v31, qword_27EFCBA80);
    v32 = sub_24B2D3164();
    v33 = sub_24B2D5914();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 200);
    v36 = *(v0 + 176);
    v37 = *(v0 + 184);
    v38 = *(v0 + 160);
    if (v34)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_24AFD2000, v32, v33, "EmojiServerImageCache is nil", v39, 2u);
      MEMORY[0x24C23D530](v39, -1, -1);
    }

    sub_24B105AB4(v38);
    (*(v37 + 8))(v35, v36);
    goto LABEL_14;
  }

  v25 = *(v0 + 104);
  sub_24B2D56B4();
  v26 = sub_24B2D56D4();
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  v47 = (*MEMORY[0x277D08DC8] + MEMORY[0x277D08DC8]);
  v27 = swift_task_alloc();
  *(v0 + 248) = v27;
  *v27 = v0;
  v27[1] = sub_24B104A1C;
  v28 = *(v0 + 160);
  v29 = *(v0 + 104);

  return v47(v0 + 72, v28, v29);
}

uint64_t sub_24B104A1C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  *(*v1 + 256) = v0;

  sub_24AFF8258(v3, &qword_27EFC8580, &qword_24B2E0010);
  v4 = *(v2 + 224);
  v5 = *(v2 + 216);
  if (v0)
  {
    v6 = sub_24B104D14;
  }

  else
  {
    v6 = sub_24B104B84;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_24B104B84()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 184);
  v12 = *(v0 + 176);
  v13 = *(v0 + 200);
  v3 = *(v0 + 160);
  v4 = *(v0 + 96);

  v5 = *(v0 + 72);
  v6 = sub_24B2D4BB4();
  v7 = (v4 + *(v1 + 36));
  v8 = *v7;
  v9 = v7[1];
  *(v0 + 48) = *v7;
  *(v0 + 56) = v9;
  *(v0 + 88) = v6;
  sub_24B105B10(v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBB38, &qword_24B2E9A40);
  sub_24B2D4CE4();

  sub_24B105B44(v8);

  sub_24B105AB4(v3);
  (*(v2 + 8))(v13, v12);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24B104D14()
{

  if (qword_27EFC76A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 256);
  v2 = sub_24B2D3184();
  __swift_project_value_buffer(v2, qword_27EFCBA80);
  v3 = v1;
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5914();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 256);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24AFD2000, v4, v5, "Failed to load image: %@", v7, 0xCu);
    sub_24AFF8258(v8, &qword_27EFC7BB8, &unk_24B2DEAF0);
    MEMORY[0x24C23D530](v8, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  v11 = *(v0 + 256);
  v12 = *(v0 + 232);
  v13 = *(v0 + 200);
  v14 = *(v0 + 176);
  v15 = *(v0 + 184);
  v16 = *(v0 + 160);
  v17 = *(v0 + 96);

  *(v0 + 32) = *(v17 + *(v12 + 36));
  *(v0 + 80) = v11 | 0x4000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBB38, &qword_24B2E9A40);
  sub_24B2D4CE4();
  sub_24B105AB4(v16);
  (*(v15 + 8))(v13, v14);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_24B104F80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmojiImageView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_24B104FE8(unint64_t a1)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }
}

uint64_t sub_24B105008()
{
  v2 = *(type metadata accessor for EmojiImageView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AFFDE44;

  return sub_24B104300(v0 + v3);
}

uint64_t sub_24B1050F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_24B2D5064();
  a2[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBA98, &qword_24B2E98F0);
  sub_24B103AEC(v2, a2 + *(v8 + 44));
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBAA0, &qword_24B2E98F8) + 36);
  *v9 = 0;
  *(v9 + 4) = 1;
  sub_24B104F80(v2, v6);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_24B105A4C(v6, v11 + v10, type metadata accessor for EmojiImageView);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBAB0, &qword_24B2E9918) + 36));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBAB8, &qword_24B2E9920);
  sub_24B2D56A4();
  result = sub_24B008890(v2, v12 + *(v13 + 40), &qword_27EFCBAC0, &qword_24B2E9928);
  *v12 = &unk_24B2E9A38;
  v12[1] = v11;
  return result;
}

void sub_24B1052CC(uint64_t a1)
{
  sub_24B105458(319, &qword_27EFCBAE0, MEMORY[0x277D08E08], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24B1054BC(319, &qword_27EFCBAE8, &qword_27EFCBAF0, &qword_24B2E99A8, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_24B0F6218();
      if (v3 <= 0x3F)
      {
        sub_24B105458(319, &qword_27EFCBAF8, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_24B1054BC(319, &qword_27EFCBB00, &qword_27EFCBB08, &qword_24B2E99B0, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24B105458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_24B1054BC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_24B105520()
{
  result = qword_27EFCBB10;
  if (!qword_27EFCBB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBAB0, &qword_24B2E9918);
    sub_24B1055D8();
    sub_24B039184(&qword_27EFCBB30, &qword_27EFCBAB8, &qword_24B2E9920, MEMORY[0x277CDDEB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBB10);
  }

  return result;
}

unint64_t sub_24B1055D8()
{
  result = qword_27EFCBB18;
  if (!qword_27EFCBB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBAA0, &qword_24B2E98F8);
    sub_24B039184(&qword_27EFCBB20, &qword_27EFCBB28, &qword_24B2E99B8, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBB18);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_12FindMyUICore14EmojiImageViewV5StateO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_24B1056AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24B105708(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_24B105768(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t objectdestroyTm_15()
{
  v1 = type metadata accessor for EmojiImageView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_24B2D1D74();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  j__swift_release(*(v5 + v1[6]));
  sub_24AFEFDB8(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBAA8, &qword_24B2E9908);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24B2D37A4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = *(v5 + v1[9]);
  if ((~v10 & 0xF000000000000007) != 0)
  {
    sub_24B104FE8(v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B105980()
{
  v2 = *(type metadata accessor for EmojiImageView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AFFD370;

  return sub_24B104300(v0 + v3);
}

uint64_t sub_24B105A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B105AB4(uint64_t a1)
{
  v2 = type metadata accessor for EmojiImageCacheRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24B105B10(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    sub_24B105B24(result);
  }
}

void sub_24B105B24(unint64_t a1)
{
  if (a1 >> 62 == 1)
  {
    v1 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
  }

  else if (!(a1 >> 62))
  {
  }
}

void sub_24B105B44(unint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    sub_24B104FE8(a1);
  }
}

unint64_t sub_24B105B58()
{
  result = qword_27EFCBB70;
  if (!qword_27EFCBB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBB58, &qword_24B2E9A60);
    sub_24B105BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBB70);
  }

  return result;
}

unint64_t sub_24B105BE4()
{
  result = qword_27EFCBB78;
  if (!qword_27EFCBB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBB40, &qword_24B2E9A48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC94F8, &qword_24B2E2B20);
    sub_24B2D40E4();
    sub_24B039184(qword_27EFC9500, &qword_27EFC94F8, &qword_24B2E2B20, MEMORY[0x277CDD7F8]);
    sub_24B105D2C();
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC8F08, &qword_27EFC8E20, &qword_24B2EEC30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBB78);
  }

  return result;
}

unint64_t sub_24B105D2C()
{
  result = qword_27EFCBB80;
  if (!qword_27EFCBB80)
  {
    sub_24B2D40E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBB80);
  }

  return result;
}

unint64_t sub_24B105D84()
{
  result = qword_27EFCBB88;
  if (!qword_27EFCBB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBB68, &qword_24B2E9A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBB88);
  }

  return result;
}

uint64_t EmojiView.Info.init(emoji:platter:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  a4[1] = a2;
  a4[2] = v4;
  return result;
}

__n128 EmojiView.init(info:imageAndTransform:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  v3 = *a2;
  *(a3 + 40) = a2[1];
  result = a2[2];
  v5 = a2[3];
  *(a3 + 56) = result;
  *(a3 + 72) = v5;
  *(a3 + 16) = *(a1 + 16);
  *(a3 + 88) = *(a2 + 8);
  *(a3 + 24) = v3;
  return result;
}

uint64_t EmojiView.body.getter(uint64_t a1)
{
  v2 = v1[3];
  v16[2] = v1[2];
  v16[3] = v2;
  v3 = v1[5];
  v16[4] = v1[4];
  v16[5] = v3;
  v4 = v1[1];
  v16[0] = *v1;
  v16[1] = v4;
  v5 = sub_24B2D5064();
  v7 = v6;
  sub_24B105FF0(v16, &v25);
  v19 = v27;
  v20 = v28;
  v21 = v29;
  v22 = v30;
  v17 = v25;
  v18 = v26;
  v24 = v30;
  v23[2] = v27;
  v23[3] = v28;
  v23[4] = v29;
  v23[0] = v25;
  v23[1] = v26;
  sub_24B008890(&v17, &v9, &qword_27EFCBB90, &qword_24B2E9AD0);
  sub_24AFF8258(v23, &qword_27EFCBB90, &qword_24B2E9AD0);
  v12 = v19;
  v13 = v20;
  v14 = v21;
  v15 = v22;
  v10 = v17;
  v11 = v18;
  *&v9 = v5;
  *(&v9 + 1) = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBB98, &qword_24B2E9AD8);
  sub_24B1061AC();
  sub_24B2D47D4();

  v29 = v13;
  v30 = v14;
  v31 = v15;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  return sub_24AFF8258(&v25, &qword_27EFCBB98, &qword_24B2E9AD8);
}

double sub_24B105FF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 16);
  v15 = *(a1 + 40);
  v16 = *(a1 + 56);
  v17 = *(a1 + 72);
  v18 = *(a1 + 88);
  v14 = *(a1 + 24);
  v21[1] = v15;
  v21[2] = v16;
  v21[3] = v17;
  v22 = v18;
  v23 = v4;
  v21[0] = v14;
  v19[0] = v14;
  v20 = v18;
  v19[3] = v17;
  v19[2] = v16;
  v19[1] = v15;
  *&v13[6] = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *(a1 + 72);
  *&v13[70] = *(a1 + 88);
  *&v13[54] = v7;
  *&v13[38] = v6;
  *&v13[22] = v5;
  *a2 = v4;
  *(a2 + 8) = (v4 != 0) << 8;
  v8 = *&v13[16];
  *(a2 + 10) = *v13;
  v9 = *&v13[32];
  v10 = *&v13[48];
  *(a2 + 72) = *&v13[62];
  *(a2 + 58) = v10;
  *(a2 + 42) = v9;
  *(a2 + 26) = v8;
  sub_24B008890(&v23, v12, &qword_27EFCBBE0, &qword_24B2E9D28);
  sub_24B008890(&v14, v12, &qword_27EFCB048, &qword_24B2E7BC0);

  sub_24B0EB930(v19, v12);
  sub_24B0EBC14(v21);

  return result;
}

unint64_t sub_24B1061AC()
{
  result = qword_27EFCBBA0;
  if (!qword_27EFCBBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBB98, &qword_24B2E9AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBBA0);
  }

  return result;
}

uint64_t EmojiView.Info.emoji.getter()
{
  v1 = *v0;

  return v1;
}

double EmojiView.Info.platter.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

uint64_t EmojiView.Info.Platter.hashValue.getter()
{
  sub_24B2D60E4();
  sub_24B2D4AA4();
  return sub_24B2D6124();
}

uint64_t sub_24B1062C4()
{
  sub_24B2D60E4();
  sub_24B2D4AA4();
  return sub_24B2D6124();
}

uint64_t sub_24B106314(uint64_t a1)
{
  sub_24B2D60E4();
  sub_24B2D4AA4();
  return sub_24B2D6124();
}

uint64_t EmojiView.Info.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_24B2D5404();
  if (!v2)
  {
    return sub_24B2D6104();
  }

  sub_24B2D6104();

  return sub_24B2D4AA4();
}

uint64_t EmojiView.Info.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_24B2D60E4();
  sub_24B2D5404();
  sub_24B2D6104();
  if (v1)
  {
    sub_24B2D4AA4();
  }

  return sub_24B2D6124();
}

uint64_t sub_24B106458()
{
  v1 = *(v0 + 16);
  sub_24B2D60E4();
  sub_24B2D5404();
  sub_24B2D6104();
  if (v1)
  {
    sub_24B2D4AA4();
  }

  return sub_24B2D6124();
}

uint64_t sub_24B1064D8(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_24B2D5404();
  if (!v2)
  {
    return sub_24B2D6104();
  }

  sub_24B2D6104();

  return sub_24B2D4AA4();
}

uint64_t sub_24B106550(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_24B2D60E4();
  sub_24B2D5404();
  sub_24B2D6104();
  if (v2)
  {
    sub_24B2D4AA4();
  }

  return sub_24B2D6124();
}

uint64_t static EmojiView.generateImage(info:displayScale:layoutDirectionIsRTL:)(double *a1, int a2, double a3)
{
  v34 = a2;
  v5 = sub_24B2D37A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBBA8, &qword_24B2E9AE0);
  MEMORY[0x28223BE20](v9);
  v36 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v33[-v12];
  v15 = *a1;
  v14 = *(a1 + 1);
  v35 = *(a1 + 2);
  v16 = *(a1 + 3);
  *&v45[8] = 0u;
  *v45 = 0x3FF0000000000000;
  *&v45[24] = 0x3FF0000000000000;
  v46 = 0u;
  v17 = sub_24B2D2C34();
  if (v17)
  {
    v18 = *v45;
    v19 = *&v45[16];
    v20 = v16;
    v21 = v46;
  }

  else
  {
    v20 = 0;
    v19 = 0uLL;
    v21 = 0uLL;
    v18 = 0uLL;
  }

  *(v43 + 8) = v18;
  *(&v43[1] + 8) = v19;
  *(&v43[2] + 8) = v21;
  *&v43[0] = v17;
  *(&v43[3] + 1) = v20;
  v44 = v20;
  if (!v17)
  {
    return 0;
  }

  v40 = v43[2];
  v41 = v43[3];
  v42 = v44;
  v38 = v43[0];
  v39 = v43[1];
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = MEMORY[0x277CDFA90];
  if ((v34 & 1) == 0)
  {
    v24 = MEMORY[0x277CDFA88];
  }

  (*(v6 + 104))(v8, *v24, v5);
  v25 = &v13[*(v9 + 36)];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBBB0, &qword_24B2E9B48);
  (*(v6 + 32))(v25 + *(v26 + 28), v8, v5);
  *v25 = v23;
  v27 = v39;
  *(v13 + 24) = v38;
  v28 = v40;
  *(v13 + 72) = v41;
  *(v13 + 56) = v28;
  *v13 = v15;
  *(v13 + 1) = v14;
  v29 = v36;
  *(v13 + 2) = v35;
  v30 = v42;
  *(v13 + 40) = v27;
  *(v13 + 11) = v30;
  *(v13 + 12) = KeyPath;
  *(v13 + 13) = a3;
  sub_24B008890(v13, v29, &qword_27EFCBBA8, &qword_24B2E9AE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBBB8, &qword_24B2E9B50);
  swift_allocObject();

  sub_24B008890(v43, &v37, &qword_27EFCB048, &qword_24B2E7BC0);
  MEMORY[0x24C239D40](v29);
  sub_24B2D3544();
  v31 = sub_24B2D3534();

  sub_24AFF8258(v43, &qword_27EFCB048, &qword_24B2E7BC0);
  sub_24AFF8258(v13, &qword_27EFCBBA8, &qword_24B2E9AE0);
  return v31;
}

uint64_t sub_24B1069A4(uint64_t a1)
{
  v2 = sub_24B2D37A4();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24B2D3AB4();
}

UIImage_optional __swiftcall View.generateImage(displayScale:)(Swift::Double displayScale)
{
  v3 = v1;
  v4 = *(v1 - 8);
  (MEMORY[0x28223BE20])();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D3574();
  (*(v4 + 16))(v6, v2, v3);
  MEMORY[0x24C239D30](v6);
  sub_24B2D3544();
  v7 = sub_24B2D3534();

  v9 = v7;
  result.value.super.isa = v9;
  result.is_nil = v8;
  return result;
}

BOOL _s12FindMyUICore9EmojiViewV4InfoV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_24B2D6004(), result = 0, (v5 & 1) != 0))
  {
    if (v2)
    {
      if (v3)
      {
        swift_retain_n();

        v7 = sub_24B2D4A64();

        return (v7 & 1) != 0;
      }
    }

    else if (!v3)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_24B106C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCBBC0;
  if (!qword_27EFCBBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBBC0);
  }

  return result;
}

unint64_t sub_24B106CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCBBC8;
  if (!qword_27EFCBBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBBC8);
  }

  return result;
}

unint64_t sub_24B106D4C()
{
  result = qword_27EFCBBD0;
  if (!qword_27EFCBBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBBD8, &qword_24B2E9D20);
    sub_24B1061AC();
    sub_24B0D56CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBBD0);
  }

  return result;
}

uint64_t sub_24B106E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_24B2D3764();
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B2D3D14();
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  MEMORY[0x28223BE20](v5);
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAA68, &qword_24B2E5D90);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v47 - v9;
  v49 = sub_24B2D3844();
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24B2D4284();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9310, &qword_24B2E2190);
  MEMORY[0x28223BE20](v15 - 8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBBE8, &qword_24B2E9D90);
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v17 = &v47 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBBF0, &qword_24B2E9D98);
  MEMORY[0x28223BE20](v51);
  v19 = &v47 - v18;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBBF8, &qword_24B2E9DA0);
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v47 - v20;
  sub_24B2D4244();
  v21 = a1;
  (*(v13 + 16))(&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v22 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v23 = swift_allocObject();
  (*(v13 + 32))(v23 + v22, &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v63 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBC00, &qword_24B2E9DA8);
  sub_24B107954();
  sub_24B2D4D24();
  sub_24B2D3834();
  sub_24B039184(&qword_27EFCBC30, &qword_27EFCBBE8, &qword_24B2E9D90, MEMORY[0x277CDF028]);
  sub_24B107DEC(&qword_27EFCAFA8, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
  v24 = v47;
  v25 = v49;
  sub_24B2D46D4();
  (*(v50 + 8))(v11, v25);
  (*(v48 + 8))(v17, v24);
  v26 = sub_24B2D43B4();
  v27 = v53;
  (*(*(v26 - 8) + 56))(v53, 1, 1, v26);
  v28 = sub_24B2D4404();
  sub_24B107AC8(v27);
  KeyPath = swift_getKeyPath();
  v30 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBC38, &qword_24B2E9DF0) + 36)];
  *v30 = KeyPath;
  v30[1] = v28;
  sub_24B2D5064();
  sub_24B2D3494();
  v31 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBC40, &qword_24B2E9DF8) + 36)];
  v32 = v69;
  *v31 = v68;
  *(v31 + 1) = v32;
  *(v31 + 2) = v70;
  v33 = v51;
  v34 = &v19[*(v51 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E10, &qword_24B2E9E00);
  sub_24B2D3944();
  *v34 = swift_getKeyPath();
  v35 = v56;
  sub_24B2D3D04();
  v36 = sub_24B107B30();
  v37 = sub_24B107DEC(&qword_27EFCBC60, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  v38 = v52;
  v39 = v33;
  v40 = v57;
  sub_24B2D46C4();
  v41 = v40;
  (*(v58 + 8))(v35, v40);
  sub_24AFE044C(v19);
  v42 = v59;
  v43 = v60;
  v44 = v61;
  (*(v60 + 104))(v59, *MEMORY[0x277CDF9D8], v61);
  v64 = v39;
  v65 = v41;
  v66 = v36;
  v67 = v37;
  swift_getOpaqueTypeConformance2();
  v45 = v54;
  sub_24B2D4764();
  (*(v43 + 8))(v42, v44);
  return (*(v55 + 8))(v38, v45);
}