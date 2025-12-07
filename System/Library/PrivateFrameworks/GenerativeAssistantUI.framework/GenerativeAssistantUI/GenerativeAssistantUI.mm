void sub_24FE5242C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSiriSimpleActivationSourceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SiriActivationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SiriActivationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27969A3A0;
    v6 = 0;
    SiriActivationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SiriActivationLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SiriSimpleActivationSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSiriSimpleActivationSourceClass_block_invoke_cold_1();
  }

  getSiriSimpleActivationSourceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SiriActivationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SiriActivationLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t sub_24FE525FC()
{

  return swift_deallocClassInstance();
}

void type metadata accessor for Key()
{
  if (!qword_27F3A46B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F3A46B8);
    }
  }
}

uint64_t sub_24FE526B8(uint64_t a1, id *a2)
{
  result = sub_24FEDE1D4();
  *a2 = 0;
  return result;
}

uint64_t sub_24FE52730(uint64_t a1, id *a2)
{
  v3 = sub_24FEDE1E4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24FE527B0@<X0>(uint64_t *a1@<X8>)
{
  sub_24FEDE1F4();
  v2 = sub_24FEDE1C4();

  *a1 = v2;
  return result;
}

uint64_t sub_24FE527F4()
{
  v0 = sub_24FEDE1F4();
  v1 = MEMORY[0x25305A4A0](v0);

  return v1;
}

uint64_t sub_24FE52830(uint64_t a1)
{
  sub_24FEDE1F4();
  sub_24FEDE254();
}

uint64_t sub_24FE52884(uint64_t a1)
{
  sub_24FEDE1F4();
  sub_24FEDE904();
  sub_24FEDE254();
  v1 = sub_24FEDE924();

  return v1;
}

uint64_t sub_24FE528F8(void *a1, uint64_t *a2)
{
  v2 = sub_24FEDE1F4();
  v4 = v3;
  if (v2 == sub_24FEDE1F4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24FEDE844();
  }

  return v7 & 1;
}

uint64_t sub_24FE52980@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_24FEDE1C4();

  *a2 = v3;
  return result;
}

uint64_t sub_24FE529C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24FEDE1F4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24FE529F4(uint64_t a1)
{
  v2 = sub_24FE52B28(&qword_27F3A46D8, &unk_24FEDFB10);
  v3 = sub_24FE52B28(&qword_27F3A46E0, &unk_24FEDFA64);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24FE52B28(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24FE52B9C()
{
  v1 = *v0;
  sub_24FEDE904();
  MEMORY[0x25305AB10](v1);
  return sub_24FEDE924();
}

uint64_t sub_24FE52C10(uint64_t a1)
{
  v2 = *v1;
  sub_24FEDE904();
  MEMORY[0x25305AB10](v2);
  return sub_24FEDE924();
}

unint64_t sub_24FE52C54()
{
  v1 = *v0;
  v2 = 0xD000000000000020;
  if (v1 != 5)
  {
    v2 = 0xD00000000000001CLL;
  }

  v3 = 0xD00000000000001ALL;
  if (v1 != 3)
  {
    v3 = 0xD00000000000001CLL;
  }

  if (*v0 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000022;
  if (v1 == 1)
  {
    v4 = 0xD000000000000019;
  }

  if (!*v0)
  {
    v4 = 0xD00000000000001FLL;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24FE52D18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24FE564C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24FE52D58(uint64_t a1)
{
  v2 = sub_24FE54038();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE52D94(uint64_t a1)
{
  v2 = sub_24FE54038();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24FE52DE4(uint64_t a1)
{
  v2 = sub_24FE540F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE52E20(uint64_t a1)
{
  v2 = sub_24FE540F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24FE52E9C(uint64_t a1)
{
  v2 = sub_24FE542E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE52ED8(uint64_t a1)
{
  v2 = sub_24FE542E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24FE52F14(uint64_t a1)
{
  v2 = sub_24FE54390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE52F50(uint64_t a1)
{
  v2 = sub_24FE54390();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24FE52F8C(uint64_t a1)
{
  v2 = sub_24FE543E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE52FC8(uint64_t a1)
{
  v2 = sub_24FE543E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24FE53004(uint64_t a1)
{
  v2 = sub_24FE541EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE53040(uint64_t a1)
{
  v2 = sub_24FE541EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24FE5307C(uint64_t a1)
{
  v2 = sub_24FE5448C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE530B8(uint64_t a1)
{
  v2 = sub_24FE5448C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24FE530F4()
{
  sub_24FEDE904();
  MEMORY[0x25305AB10](0);
  return sub_24FEDE924();
}

uint64_t sub_24FE53138(uint64_t a1)
{
  sub_24FEDE904();
  MEMORY[0x25305AB10](0);
  return sub_24FEDE924();
}

uint64_t sub_24FE53178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24FEDE844();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24FE531F8(uint64_t a1)
{
  v2 = sub_24FE54144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE53234(uint64_t a1)
{
  v2 = sub_24FE54144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenerativeResultModels.encode(to:)(void *a1)
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A46E8, &qword_24FEDFB60);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v52 - v2;
  v65 = type metadata accessor for GenerativeResultAttributionSnippetModel(0);
  MEMORY[0x28223BE20](v65);
  v66 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A46F0, &qword_24FEDFB68);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v60 = &v52 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A46F8, &qword_24FEDFB70);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = &v52 - v5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4700, &qword_24FEDFB78);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v52 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4708, &qword_24FEDFB80);
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v75 = &v52 - v7;
  v54 = type metadata accessor for GenerativeMediaConfirmationSnippetModel(0);
  MEMORY[0x28223BE20](v54);
  v74 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4710, &qword_24FEDFB88);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v52 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4718, &qword_24FEDFB90);
  v52 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v11 = &v52 - v10;
  v12 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for GenerativeResultModels(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4720, &qword_24FEDFB98);
  v79 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v19 = &v52 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE54038();
  v76 = v19;
  sub_24FEDE944();
  sub_24FE5408C(v77, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v77 = v12;
    v25 = v14;
    v26 = v71;
    v27 = v70;
    v28 = v72;
    v29 = v73;
    v30 = v75;
    if (!EnumCaseMultiPayload)
    {
      v40 = v25;
      sub_24FE555AC(v17, v25, type metadata accessor for GenerativeRichTextResultSnippetModel);
      LOBYTE(v85) = 0;
      sub_24FE5448C();
      v41 = v78;
      v42 = v76;
      sub_24FEDE7A4();
      sub_24FE557F4(&qword_27F3A4798, type metadata accessor for GenerativeRichTextResultSnippetModel, &protocol conformance descriptor for GenerativeRichTextResultSnippetModel);
      sub_24FEDE804();
      (*(v52 + 8))(v11, v27);
      sub_24FE544E0(v40, type metadata accessor for GenerativeRichTextResultSnippetModel);
      return (*(v79 + 8))(v42, v41);
    }

    if (EnumCaseMultiPayload != 1)
    {
      v43 = v74;
      sub_24FE555AC(v17, v74, type metadata accessor for GenerativeMediaConfirmationSnippetModel);
      LOBYTE(v85) = 2;
      sub_24FE54390();
      v21 = v78;
      v22 = v76;
      sub_24FEDE7A4();
      sub_24FE557F4(&qword_27F3A4778, type metadata accessor for GenerativeMediaConfirmationSnippetModel, &protocol conformance descriptor for GenerativeMediaConfirmationSnippetModel);
      v44 = v53;
      sub_24FEDE804();
      (*(v55 + 8))(v30, v44);
      sub_24FE544E0(v43, type metadata accessor for GenerativeMediaConfirmationSnippetModel);
      return (*(v79 + 8))(v22, v21);
    }

    v32 = *v17;
    v31 = *(v17 + 1);
    LOBYTE(v85) = 1;
    sub_24FE543E4();
    v33 = v78;
    v34 = v76;
    sub_24FEDE7A4();
    *&v85 = v32;
    *(&v85 + 1) = v31;
    sub_24FE54438();
    sub_24FEDE804();
    (*(v28 + 8))(v26, v29);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload > 4)
  {
    v33 = v78;
    v34 = v76;
    if (EnumCaseMultiPayload != 5)
    {
      v49 = v66;
      sub_24FE555AC(v17, v66, type metadata accessor for GenerativeResultAttributionSnippetModel);
      LOBYTE(v85) = 6;
      sub_24FE540F0();
      v50 = v67;
      sub_24FEDE7A4();
      sub_24FE557F4(&qword_27F3A4738, type metadata accessor for GenerativeResultAttributionSnippetModel, &protocol conformance descriptor for GenerativeResultAttributionSnippetModel);
      v51 = v69;
      sub_24FEDE804();
      (*(v68 + 8))(v50, v51);
      sub_24FE544E0(v49, type metadata accessor for GenerativeResultAttributionSnippetModel);
      return (*(v79 + 8))(v34, v33);
    }

    v36 = *v17;
    v35 = *(v17 + 1);
    LOBYTE(v85) = 5;
    sub_24FE54144();
    v37 = v60;
    sub_24FEDE7A4();
    *&v85 = v36;
    *(&v85 + 1) = v35;
    sub_24FE54198();
    v38 = v64;
    sub_24FEDE804();
    (*(v63 + 8))(v37, v38);
LABEL_10:
    (*(v79 + 8))(v34, v33);
  }

  v21 = v78;
  v22 = v76;
  if (EnumCaseMultiPayload == 3)
  {
    LOBYTE(v85) = 3;
    sub_24FE542E8();
    v23 = v56;
    sub_24FEDE7A4();
    sub_24FE5433C();
    v24 = v58;
    sub_24FEDE804();
    (*(v57 + 8))(v23, v24);
    return (*(v79 + 8))(v22, v21);
  }

  v45 = *(v17 + 3);
  v87 = *(v17 + 2);
  v88 = v45;
  v89 = *(v17 + 4);
  v46 = *(v17 + 1);
  v85 = *v17;
  v86 = v46;
  LOBYTE(v80) = 4;
  sub_24FE541EC();
  v47 = v59;
  sub_24FEDE7A4();
  v82 = v87;
  v83 = v88;
  v84 = v89;
  v80 = v85;
  v81 = v86;
  sub_24FE54240();
  v48 = v62;
  sub_24FEDE804();
  (*(v61 + 8))(v47, v48);
  (*(v79 + 8))(v22, v21);
  return sub_24FE54294(&v85);
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

uint64_t type metadata accessor for GenerativeResultModels(uint64_t a1)
{
  result = qword_27F3A4830;
  if (!qword_27F3A4830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24FE54038()
{
  result = qword_27F3A4728;
  if (!qword_27F3A4728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4728);
  }

  return result;
}

uint64_t sub_24FE5408C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeResultModels(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24FE540F0()
{
  result = qword_27F3A4730;
  if (!qword_27F3A4730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4730);
  }

  return result;
}

unint64_t sub_24FE54144()
{
  result = qword_27F3A4740;
  if (!qword_27F3A4740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4740);
  }

  return result;
}

unint64_t sub_24FE54198()
{
  result = qword_27F3A4748;
  if (!qword_27F3A4748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4748);
  }

  return result;
}

unint64_t sub_24FE541EC()
{
  result = qword_27F3A4750;
  if (!qword_27F3A4750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4750);
  }

  return result;
}

unint64_t sub_24FE54240()
{
  result = qword_27F3A4758;
  if (!qword_27F3A4758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4758);
  }

  return result;
}

unint64_t sub_24FE542E8()
{
  result = qword_27F3A4760;
  if (!qword_27F3A4760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4760);
  }

  return result;
}

unint64_t sub_24FE5433C()
{
  result = qword_27F3A4768;
  if (!qword_27F3A4768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4768);
  }

  return result;
}

unint64_t sub_24FE54390()
{
  result = qword_27F3A4770;
  if (!qword_27F3A4770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4770);
  }

  return result;
}

unint64_t sub_24FE543E4()
{
  result = qword_27F3A4780;
  if (!qword_27F3A4780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4780);
  }

  return result;
}

unint64_t sub_24FE54438()
{
  result = qword_27F3A4788;
  if (!qword_27F3A4788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4788);
  }

  return result;
}

unint64_t sub_24FE5448C()
{
  result = qword_27F3A4790;
  if (!qword_27F3A4790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4790);
  }

  return result;
}

uint64_t sub_24FE544E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t GenerativeResultModels.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A47A0, &qword_24FEDFBA0);
  v112 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v115 = &v90 - v3;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A47A8, &qword_24FEDFBA8);
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v121 = &v90 - v4;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A47B0, &qword_24FEDFBB0);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v113 = &v90 - v5;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A47B8, &qword_24FEDFBB8);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v114 = &v90 - v6;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A47C0, &qword_24FEDFBC0);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v120 = &v90 - v7;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A47C8, &qword_24FEDFBC8);
  v102 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v119 = &v90 - v8;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A47D0, &qword_24FEDFBD0);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v118 = &v90 - v9;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A47D8, &qword_24FEDFBD8);
  v117 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v11 = &v90 - v10;
  v116 = type metadata accessor for GenerativeResultModels(0);
  MEMORY[0x28223BE20](v116);
  v98 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v96 = (&v90 - v14);
  MEMORY[0x28223BE20](v15);
  v97 = &v90 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v90 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v90 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v90 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v90 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v90 - v30;
  v32 = a1[3];
  v124 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_24FE54038();
  v33 = v130;
  sub_24FEDE934();
  v130 = v33;
  if (v33)
  {
    goto LABEL_13;
  }

  v91 = v25;
  v93 = v28;
  v92 = v19;
  v94 = v22;
  v35 = v118;
  v34 = v119;
  v37 = v120;
  v36 = v121;
  v95 = v31;
  v38 = v122;
  v39 = sub_24FEDE794();
  if (*(v39 + 16) != 1 || (v40 = *(v39 + 32), v40 == 7))
  {
    v47 = sub_24FEDE664();
    v48 = swift_allocError();
    v50 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A47E0, &qword_24FEDFBE0);
    *v50 = v116;
    v51 = v123;
    sub_24FEDE714();
    sub_24FEDE654();
    (*(*(v47 - 8) + 104))(v50, *MEMORY[0x277D84160], v47);
    v130 = v48;
    swift_willThrow();
    goto LABEL_11;
  }

  if (*(v39 + 32) > 2u)
  {
    if (*(v39 + 32) <= 4u)
    {
      v41 = v117;
      if (v40 == 3)
      {
        LOBYTE(v125) = 3;
        sub_24FE542E8();
        v42 = v114;
        v43 = v123;
        v44 = v130;
        sub_24FEDE704();
        v130 = v44;
        if (v44)
        {
LABEL_31:
          (*(v41 + 8))(v11, v43);
          goto LABEL_12;
        }

        sub_24FE556BC();
        v45 = v106;
        v46 = v130;
        sub_24FEDE774();
        v130 = v46;
        if (v46)
        {
          (*(v105 + 8))(v42, v45);
          goto LABEL_31;
        }

        (*(v105 + 8))(v42, v45);
        (*(v41 + 8))(v11, v43);
        swift_unknownObjectRelease();
        v85 = v92;
      }

      else
      {
        LOBYTE(v125) = 4;
        sub_24FE541EC();
        v73 = v113;
        v43 = v123;
        v74 = v130;
        sub_24FEDE704();
        v130 = v74;
        if (v74)
        {
          goto LABEL_31;
        }

        sub_24FE55668();
        v80 = v108;
        v81 = v130;
        sub_24FEDE774();
        v82 = (v107 + 8);
        v83 = (v41 + 8);
        v130 = v81;
        if (v81)
        {
          (*v82)(v73, v80);
          (*v83)(v11, v123);
          goto LABEL_12;
        }

        (*v82)(v73, v80);
        (*v83)(v11, v123);
        swift_unknownObjectRelease();
        v88 = v128;
        v85 = v97;
        *(v97 + 2) = v127;
        *(v85 + 3) = v88;
        *(v85 + 4) = v129;
        v89 = v126;
        *v85 = v125;
        *(v85 + 1) = v89;
      }

      goto LABEL_44;
    }

    if (v40 == 5)
    {
      LOBYTE(v125) = 5;
      sub_24FE54144();
      v57 = v36;
      v43 = v123;
      v58 = v130;
      sub_24FEDE704();
      v41 = v117;
      v130 = v58;
      if (v58)
      {
        goto LABEL_31;
      }

      sub_24FE55614();
      v59 = v109;
      v60 = v130;
      sub_24FEDE774();
      v130 = v60;
      if (v60)
      {
        (*(v110 + 8))(v57, v59);
        goto LABEL_31;
      }

      (*(v110 + 8))(v57, v59);
      (*(v41 + 8))(v11, v43);
      swift_unknownObjectRelease();
      v87 = *(&v125 + 1);
      v85 = v96;
      *v96 = v125;
      v85[1] = v87;
      goto LABEL_44;
    }

    LOBYTE(v125) = 6;
    sub_24FE540F0();
    v61 = v123;
    v75 = v130;
    sub_24FEDE704();
    v130 = v75;
    if (!v75)
    {
      type metadata accessor for GenerativeResultAttributionSnippetModel(0);
      sub_24FE557F4(&qword_27F3A47E8, type metadata accessor for GenerativeResultAttributionSnippetModel, &protocol conformance descriptor for GenerativeResultAttributionSnippetModel);
      v76 = v98;
      v77 = v111;
      v78 = v115;
      v79 = v130;
      sub_24FEDE774();
      v130 = v79;
      if (v79)
      {
        (*(v112 + 8))(v78, v77);
        goto LABEL_35;
      }

      (*(v112 + 8))(v78, v77);
      (*(v117 + 8))(v11, v61);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v86 = v76;
LABEL_45:
      v67 = v95;
      sub_24FE555AC(v86, v95, type metadata accessor for GenerativeResultModels);
      v66 = v124;
      goto LABEL_46;
    }

LABEL_35:
    (*(v117 + 8))(v11, v61);
    goto LABEL_12;
  }

  if (!*(v39 + 32))
  {
    LOBYTE(v125) = 0;
    sub_24FE5448C();
    v61 = v123;
    v62 = v130;
    sub_24FEDE704();
    v130 = v62;
    if (!v62)
    {
      type metadata accessor for GenerativeRichTextResultSnippetModel(0);
      sub_24FE557F4(&qword_27F3A4818, type metadata accessor for GenerativeRichTextResultSnippetModel, &protocol conformance descriptor for GenerativeRichTextResultSnippetModel);
      v63 = v93;
      v64 = v100;
      v65 = v130;
      sub_24FEDE774();
      (*(v99 + 8))(v35, v64);
      (*(v117 + 8))(v11, v61);
      swift_unknownObjectRelease();
      v52 = v124;
      v130 = v65;
      if (v65)
      {
        return __swift_destroy_boxed_opaque_existential_1(v52);
      }

      v66 = v124;
      swift_storeEnumTagMultiPayload();
      v67 = v95;
      sub_24FE555AC(v63, v95, type metadata accessor for GenerativeResultModels);
LABEL_46:
      sub_24FE555AC(v67, v38, type metadata accessor for GenerativeResultModels);
      v52 = v66;
      return __swift_destroy_boxed_opaque_existential_1(v52);
    }

    goto LABEL_35;
  }

  v51 = v123;
  if (v40 == 1)
  {
    LOBYTE(v125) = 1;
    sub_24FE543E4();
    v54 = v130;
    sub_24FEDE704();
    v130 = v54;
    if (!v54)
    {
      sub_24FE55710();
      v55 = v101;
      v56 = v130;
      sub_24FEDE774();
      v130 = v56;
      if (!v56)
      {
        (*(v102 + 8))(v34, v55);
        (*(v117 + 8))(v11, v51);
        swift_unknownObjectRelease();
        v84 = *(&v125 + 1);
        v85 = v91;
        *v91 = v125;
        v85[1] = v84;
LABEL_44:
        swift_storeEnumTagMultiPayload();
        v86 = v85;
        goto LABEL_45;
      }

      (*(v102 + 8))(v34, v55);
    }

    goto LABEL_11;
  }

  LOBYTE(v125) = 2;
  sub_24FE54390();
  v68 = v130;
  sub_24FEDE704();
  v130 = v68;
  if (v68)
  {
LABEL_11:
    (*(v117 + 8))(v11, v51);
    goto LABEL_12;
  }

  type metadata accessor for GenerativeMediaConfirmationSnippetModel(0);
  sub_24FE557F4(&qword_27F3A4808, type metadata accessor for GenerativeMediaConfirmationSnippetModel, &protocol conformance descriptor for GenerativeMediaConfirmationSnippetModel);
  v69 = v94;
  v70 = v103;
  v71 = v130;
  sub_24FEDE774();
  v72 = v117;
  v130 = v71;
  if (!v71)
  {
    (*(v104 + 8))(v37, v70);
    (*(v72 + 8))(v11, v51);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v86 = v69;
    goto LABEL_45;
  }

  (*(v104 + 8))(v37, v70);
  (*(v72 + 8))(v11, v51);
LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:
  v52 = v124;
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_24FE555AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24FE55614()
{
  result = qword_27F3A47F0;
  if (!qword_27F3A47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A47F0);
  }

  return result;
}

unint64_t sub_24FE55668()
{
  result = qword_27F3A47F8;
  if (!qword_27F3A47F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A47F8);
  }

  return result;
}

unint64_t sub_24FE556BC()
{
  result = qword_27F3A4800;
  if (!qword_27F3A4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4800);
  }

  return result;
}

unint64_t sub_24FE55710()
{
  result = qword_27F3A4810;
  if (!qword_27F3A4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4810);
  }

  return result;
}

uint64_t sub_24FE557F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FE5583C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24FE55914(uint64_t a1)
{
  result = type metadata accessor for GenerativeRichTextResultSnippetModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for GenerativeMediaConfirmationSnippetModel(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for GenerativeResultAttributionSnippetModel(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeResultModels.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerativeResultModels.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeDismissalSnippetModel(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for GenerativeDismissalSnippetModel(_WORD *result, int a2, int a3)
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

unint64_t sub_24FE55C84()
{
  result = qword_27F3A4840;
  if (!qword_27F3A4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4840);
  }

  return result;
}

unint64_t sub_24FE55CDC()
{
  result = qword_27F3A4848;
  if (!qword_27F3A4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4848);
  }

  return result;
}

unint64_t sub_24FE55D34()
{
  result = qword_27F3A4850;
  if (!qword_27F3A4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4850);
  }

  return result;
}

unint64_t sub_24FE55D8C()
{
  result = qword_27F3A4858;
  if (!qword_27F3A4858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4858);
  }

  return result;
}

unint64_t sub_24FE55DE4()
{
  result = qword_27F3A4860;
  if (!qword_27F3A4860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4860);
  }

  return result;
}

unint64_t sub_24FE55E3C()
{
  result = qword_27F3A4868;
  if (!qword_27F3A4868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4868);
  }

  return result;
}

unint64_t sub_24FE55E94()
{
  result = qword_27F3A4870;
  if (!qword_27F3A4870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4870);
  }

  return result;
}

unint64_t sub_24FE55EEC()
{
  result = qword_27F3A4878;
  if (!qword_27F3A4878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4878);
  }

  return result;
}

unint64_t sub_24FE55F44()
{
  result = qword_27F3A4880;
  if (!qword_27F3A4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4880);
  }

  return result;
}

unint64_t sub_24FE55F9C()
{
  result = qword_27F3A4888;
  if (!qword_27F3A4888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4888);
  }

  return result;
}

unint64_t sub_24FE55FF4()
{
  result = qword_27F3A4890;
  if (!qword_27F3A4890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4890);
  }

  return result;
}

unint64_t sub_24FE5604C()
{
  result = qword_27F3A4898;
  if (!qword_27F3A4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4898);
  }

  return result;
}

unint64_t sub_24FE560A4()
{
  result = qword_27F3A48A0;
  if (!qword_27F3A48A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48A0);
  }

  return result;
}

unint64_t sub_24FE560FC()
{
  result = qword_27F3A48A8;
  if (!qword_27F3A48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48A8);
  }

  return result;
}

unint64_t sub_24FE56154()
{
  result = qword_27F3A48B0;
  if (!qword_27F3A48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48B0);
  }

  return result;
}

unint64_t sub_24FE561AC()
{
  result = qword_27F3A48B8;
  if (!qword_27F3A48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48B8);
  }

  return result;
}

unint64_t sub_24FE56204()
{
  result = qword_27F3A48C0;
  if (!qword_27F3A48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48C0);
  }

  return result;
}

unint64_t sub_24FE5625C()
{
  result = qword_27F3A48C8;
  if (!qword_27F3A48C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48C8);
  }

  return result;
}

unint64_t sub_24FE562B4()
{
  result = qword_27F3A48D0;
  if (!qword_27F3A48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48D0);
  }

  return result;
}

unint64_t sub_24FE5630C()
{
  result = qword_27F3A48D8;
  if (!qword_27F3A48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48D8);
  }

  return result;
}

unint64_t sub_24FE56364()
{
  result = qword_27F3A48E0;
  if (!qword_27F3A48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48E0);
  }

  return result;
}

unint64_t sub_24FE563BC()
{
  result = qword_27F3A48E8;
  if (!qword_27F3A48E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48E8);
  }

  return result;
}

unint64_t sub_24FE56414()
{
  result = qword_27F3A48F0;
  if (!qword_27F3A48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48F0);
  }

  return result;
}

unint64_t sub_24FE5646C()
{
  result = qword_27F3A48F8;
  if (!qword_27F3A48F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48F8);
  }

  return result;
}

uint64_t sub_24FE564C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001FLL && 0x800000024FEE94A0 == a2;
  if (v3 || (sub_24FEDE844() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FEE94C0 == a2 || (sub_24FEDE844() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000022 && 0x800000024FEE94E0 == a2 || (sub_24FEDE844() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024FEE9510 == a2 || (sub_24FEDE844() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024FEE9530 == a2 || (sub_24FEDE844() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x800000024FEE9550 == a2 || (sub_24FEDE844() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024FEE9580 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24FEDE844();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t DisabledResponseView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  *a1 = sub_24FEDD504();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4900, &qword_24FEE0670);
  return sub_24FE56798(v5, v4, v3);
}

uint64_t sub_24FE56798(uint64_t a1, uint64_t a2, double a3)
{
  sub_24FE56B40();

  v3 = sub_24FEDD9F4();
  v5 = v4;
  v7 = v6;
  sub_24FEDD7E4();
  v8 = sub_24FEDD994();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_24FE56B94(v3, v5, v7 & 1);

  LOBYTE(v3) = sub_24FEDD744();
  sub_24FEDD014();
  *&v20 = v8;
  *(&v20 + 1) = v10;
  LOBYTE(v21) = v12 & 1;
  *(&v21 + 1) = v14;
  LOBYTE(v22) = v3;
  *(&v22 + 1) = v15;
  *v23 = v16;
  *&v23[8] = v17;
  *&v23[16] = v18;
  v23[24] = 0;
  sub_24FEDD824();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4918, &unk_24FEE0730);
  sub_24FE56BA4();
  sub_24FEDDAA4();
  v24[2] = v22;
  v25[0] = *v23;
  *(v25 + 9) = *&v23[9];
  v24[0] = v20;
  v24[1] = v21;
  return sub_24FE56C28(v24);
}

GenerativeAssistantUI::DisabledResponseView __swiftcall DisabledResponseView.init(model:)(GenerativeAssistantUI::GenerativeNoResultSnippetModel model)
{
  v2 = *model.result._countAndFlagsBits;
  v3 = *(model.result._countAndFlagsBits + 8);
  *v1 = 0x4024000000000000;
  v1[1] = v2;
  v1[2] = v3;
  result.snippetModel = model;
  return result;
}

uint64_t sub_24FE56970@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  *a1 = sub_24FEDD504();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4900, &qword_24FEE0670);
  return sub_24FE56798(v5, v4, v3);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24FE569F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24FE56A40(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24FE56A94()
{
  result = qword_27F3A4908;
  if (!qword_27F3A4908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4910, &qword_24FEE0728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4908);
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

unint64_t sub_24FE56B40()
{
  result = qword_27F3A4CB0;
  if (!qword_27F3A4CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4CB0);
  }

  return result;
}

uint64_t sub_24FE56B94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_24FE56BA4()
{
  result = qword_27F3A4920;
  if (!qword_27F3A4920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4918, &unk_24FEE0730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4920);
  }

  return result;
}

uint64_t sub_24FE56C28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4918, &unk_24FEE0730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FE56C90@<X0>(void *a1@<X8>)
{
  v116 = a1;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4930, &qword_24FEE0758);
  MEMORY[0x28223BE20](v102);
  v103 = (&v101 - v1);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4938, &qword_24FEE0760);
  MEMORY[0x28223BE20](v112);
  v104 = &v101 - v2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4940, &qword_24FEE0768);
  MEMORY[0x28223BE20](v110);
  v115 = &v101 - v3;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4948, &qword_24FEE0770);
  MEMORY[0x28223BE20](v107);
  v105 = (&v101 - v4);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4950, &qword_24FEE0778);
  MEMORY[0x28223BE20](v113);
  v6 = &v101 - v5;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4958, &unk_24FEE0D60);
  MEMORY[0x28223BE20](v108);
  v114 = &v101 - v7;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4960, &qword_24FEE0780);
  MEMORY[0x28223BE20](v111);
  v106 = &v101 - v8;
  v9 = sub_24FEDDCD4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4968, &qword_24FEE0788);
  MEMORY[0x28223BE20](v13);
  v15 = &v101 - v14;
  v16 = sub_24FEDCEB4();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v109, v16, v18);
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == *MEMORY[0x277D0D690])
  {
    goto LABEL_2;
  }

  v49 = v6;
  v6 = v114;
  v109 = v13;
  if (v21 == *MEMORY[0x277D0D6C0])
  {
    v50 = v49;
    if (qword_27F3A4670 == -1)
    {
LABEL_5:
      v51 = qword_27F3B30D8;
      sub_24FEDDD14();
      (*(v10 + 104))(v12, *MEMORY[0x277CE0FE0], v9);
      v52 = sub_24FEDDD04();

      (*(v10 + 8))(v12, v9);
      sub_24FEDDF34();
      sub_24FEDD0F4();
      *(v118 + 6) = v122;
      *(&v118[1] + 6) = *v123;
      *(&v118[2] + 6) = *&v123[16];
      *v121 = v52;
      *&v121[8] = 0;
      *&v121[16] = 257;
      *&v121[18] = v118[0];
      *&v121[34] = v118[1];
      *&v121[50] = v118[2];
      v53 = *&v123[24];
      *&v121[64] = *&v123[24];
      v54 = *&v121[16];
      *v50 = v52;
      *(v50 + 16) = v54;
      v55 = *&v121[48];
      *(v50 + 32) = *&v121[32];
      *(v50 + 48) = v55;
      *(v50 + 64) = v53;
      swift_storeEnumTagMultiPayload();
      sub_24FE58B14(v121, v118, &unk_27F3A4D70, &qword_24FEE07C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4D70, &qword_24FEE07C0);
      sub_24FE58674();
      sub_24FE58564();
      sub_24FEDD5F4();
      sub_24FE58B14(v6, v105, &qword_27F3A4958, &unk_24FEE0D60);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4970, &unk_24FEE0D90);
      sub_24FE589FC();
      sub_24FE584E0();
      v56 = v106;
      sub_24FEDD5F4();
      sub_24FE58B7C(v6, &qword_27F3A4958, &unk_24FEE0D60);
      v57 = &qword_27F3A4960;
      v58 = &qword_24FEE0780;
      sub_24FE58B14(v56, v115, &qword_27F3A4960, &qword_24FEE0780);
      swift_storeEnumTagMultiPayload();
      sub_24FE58970();
      sub_24FE58A88();
      sub_24FEDD5F4();
      v59 = v121;
LABEL_6:
      sub_24FE58B7C(v59, &unk_27F3A4D70, &qword_24FEE07C0);
      v46 = v56;
LABEL_18:
      v47 = v57;
      v48 = v58;
      return sub_24FE58B7C(v46, v47, v48);
    }

LABEL_32:
    swift_once();
    goto LABEL_5;
  }

  if (v21 == *MEMORY[0x277D0D6A0])
  {
    sub_24FEDDCB4();
    (*(v10 + 104))(v12, *MEMORY[0x277CE0FE0], v9);
    v114 = sub_24FEDDD04();

    (*(v10 + 8))(v12, v9);
    sub_24FEDDF34();
    sub_24FEDD0F4();
    LOBYTE(v122) = 1;
    *&v125[6] = *v121;
    *&v125[22] = *&v121[16];
    *&v125[38] = *&v121[32];
    LODWORD(v113) = sub_24FEDD744();
    sub_24FEDD014();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    LOBYTE(v118[0]) = 0;
    v108 = sub_24FEDDC54();
    KeyPath = swift_getKeyPath();
    sub_24FEDDC24();
    v69 = sub_24FEDDC64();

    v70 = sub_24FEDD744();
    v71 = &v15[*(v109 + 36)];
    v72 = *(sub_24FEDD284() + 20);
    v73 = *MEMORY[0x277CE0118];
    v74 = sub_24FEDD4E4();
    (*(*(v74 - 8) + 104))(&v71[v72], v73, v74);
    __asm { FMOV            V0.2D, #10.0 }

    *v71 = _Q0;
    *&v71[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4D80, &unk_24FEE0D50) + 36)] = 256;
    *v15 = v114;
    *(v15 + 1) = 0;
    *(v15 + 8) = 1;
    *(v15 + 18) = *v125;
    *(v15 + 34) = *&v125[16];
    *(v15 + 50) = *&v125[32];
    *(v15 + 8) = *&v125[46];
    v15[72] = v113;
    *(v15 + 10) = v61;
    *(v15 + 11) = v63;
    *(v15 + 12) = v65;
    *(v15 + 13) = v67;
    v15[112] = 0;
    v76 = v108;
    *(v15 + 15) = KeyPath;
    *(v15 + 16) = v76;
    *(v15 + 17) = v69;
    v15[144] = v70;
    sub_24FE58B14(v15, v103, &qword_27F3A4968, &qword_24FEE0788);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4970, &unk_24FEE0D90);
    sub_24FE584E0();
    sub_24FE58674();
    v77 = v104;
    sub_24FEDD5F4();
    sub_24FE58B14(v77, v115, &qword_27F3A4938, &qword_24FEE0760);
    swift_storeEnumTagMultiPayload();
    sub_24FE58970();
    sub_24FE58A88();
    sub_24FEDD5F4();
    sub_24FE58B7C(v77, &qword_27F3A4938, &qword_24FEE0760);
    v46 = v15;
    v47 = &qword_27F3A4968;
    v48 = &qword_24FEE0788;
    return sub_24FE58B7C(v46, v47, v48);
  }

  v50 = v115;
  if (v21 == *MEMORY[0x277D0D6D0])
  {
    if (qword_27F3A4670 != -1)
    {
      swift_once();
    }

    v78 = qword_27F3B30D8;
    sub_24FEDDD14();
    (*(v10 + 104))(v12, *MEMORY[0x277CE0FE0], v9);
    v79 = v9;
    v80 = sub_24FEDDD04();

    (*(v10 + 8))(v12, v79);
    sub_24FEDDF34();
    sub_24FEDD0F4();
    *&v121[6] = v126;
    *&v121[22] = v127;
    *&v121[38] = v128;
    v122 = v80;
    *v123 = 257;
    *&v123[2] = *v121;
    *&v123[18] = *&v121[16];
    *&v123[34] = *&v121[32];
    *&v123[48] = *(&v128 + 1);
    v118[0] = v80;
    v118[1] = *v123;
    v118[2] = *&v123[16];
    v118[3] = *&v123[32];
    v119 = *(&v128 + 1);
    v124 = 0;
    v120 = 0;
    sub_24FE58B14(&v122, v121, &unk_27F3A4D70, &qword_24FEE07C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4D70, &qword_24FEE07C0);
    sub_24FE58564();
    sub_24FEDD5F4();
    v81 = *&v121[48];
    v82 = v105;
    v105[2] = *&v121[32];
    v82[3] = v81;
    *(v82 + 57) = *&v121[57];
    v83 = *&v121[16];
    *v82 = *v121;
    v82[1] = v83;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4970, &unk_24FEE0D90);
    sub_24FE589FC();
    sub_24FE584E0();
    v84 = v106;
    sub_24FEDD5F4();
    v57 = &qword_27F3A4960;
    v58 = &qword_24FEE0780;
    sub_24FE58B14(v84, v50, &qword_27F3A4960, &qword_24FEE0780);
    swift_storeEnumTagMultiPayload();
    sub_24FE58970();
    sub_24FE58A88();
LABEL_17:
    sub_24FEDD5F4();
    sub_24FE58B7C(&v122, &unk_27F3A4D70, &qword_24FEE07C0);
    v46 = v84;
    goto LABEL_18;
  }

  if (v21 == *MEMORY[0x277D0D6B0])
  {
    if (qword_27F3A4670 != -1)
    {
      swift_once();
    }

    v85 = qword_27F3B30D8;
    sub_24FEDDD14();
    (*(v10 + 104))(v12, *MEMORY[0x277CE0FE0], v9);
    v86 = v9;
    v87 = sub_24FEDDD04();

    (*(v10 + 8))(v12, v86);
    sub_24FEDDF34();
    sub_24FEDD0F4();
    *&v121[6] = v126;
    *&v121[22] = v127;
    *&v121[38] = v128;
    v122 = v87;
    *v123 = 257;
    *&v123[2] = *v121;
    *&v123[18] = *&v121[16];
    *&v123[34] = *&v121[32];
    *&v123[48] = *(&v128 + 1);
    v118[0] = v87;
    v118[1] = *v123;
    v118[2] = *&v123[16];
    v118[3] = *&v123[32];
    v119 = *(&v128 + 1);
    v124 = 1;
    v120 = 1;
    sub_24FE58B14(&v122, v121, &unk_27F3A4D70, &qword_24FEE07C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4D70, &qword_24FEE07C0);
    sub_24FE58564();
    sub_24FEDD5F4();
    v88 = *&v121[48];
    v89 = v105;
    v105[2] = *&v121[32];
    v89[3] = v88;
    *(v89 + 57) = *&v121[57];
    v90 = *&v121[16];
    *v89 = *v121;
    v89[1] = v90;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4970, &unk_24FEE0D90);
    sub_24FE589FC();
    sub_24FE584E0();
    v84 = v106;
    sub_24FEDD5F4();
    v57 = &qword_27F3A4960;
    v58 = &qword_24FEE0780;
    sub_24FE58B14(v84, v50, &qword_27F3A4960, &qword_24FEE0780);
    swift_storeEnumTagMultiPayload();
    sub_24FE58970();
    sub_24FE58A88();
    goto LABEL_17;
  }

  if (v21 == *MEMORY[0x277D0D698])
  {
    if (qword_27F3A4670 != -1)
    {
      swift_once();
    }

    v92 = qword_27F3B30D8;
    sub_24FEDDD14();
    (*(v10 + 104))(v12, *MEMORY[0x277CE0FE0], v9);
    v93 = v9;
    v94 = sub_24FEDDD04();

    (*(v10 + 8))(v12, v93);
    sub_24FEDDF34();
    sub_24FEDD0F4();
    *&v121[6] = v126;
    *&v121[22] = v127;
    *&v121[38] = v128;
    v122 = v94;
    *v123 = 257;
    *&v123[2] = *v121;
    *&v123[18] = *&v121[16];
    *&v123[34] = *&v121[32];
    *&v123[48] = *(&v128 + 1);
    v118[0] = v94;
    v118[1] = *v123;
    v118[2] = *&v123[16];
    v118[3] = *&v123[32];
    v119 = *(&v128 + 1);
    v124 = 0;
    v120 = 0;
LABEL_28:
    sub_24FE58B14(&v122, v121, &unk_27F3A4D70, &qword_24FEE07C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4D70, &qword_24FEE07C0);
    sub_24FE58564();
    sub_24FEDD5F4();
    v98 = *&v121[48];
    v99 = v103;
    v103[2] = *&v121[32];
    v99[3] = v98;
    *(v99 + 57) = *&v121[57];
    v100 = *&v121[16];
    *v99 = *v121;
    v99[1] = v100;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4970, &unk_24FEE0D90);
    sub_24FE584E0();
    sub_24FE58674();
    v56 = v104;
    sub_24FEDD5F4();
    v57 = &qword_27F3A4938;
    v58 = &qword_24FEE0760;
    sub_24FE58B14(v56, v50, &qword_27F3A4938, &qword_24FEE0760);
    swift_storeEnumTagMultiPayload();
    sub_24FE58970();
    sub_24FE58A88();
    sub_24FEDD5F4();
    v59 = &v122;
    goto LABEL_6;
  }

  if (v21 == *MEMORY[0x277D0D6A8])
  {
    if (qword_27F3A4670 != -1)
    {
      swift_once();
    }

    v95 = qword_27F3B30D8;
    sub_24FEDDD14();
    (*(v10 + 104))(v12, *MEMORY[0x277CE0FE0], v9);
    v96 = v9;
    v97 = sub_24FEDDD04();

    (*(v10 + 8))(v12, v96);
    sub_24FEDDF34();
    sub_24FEDD0F4();
    *&v121[6] = v126;
    *&v121[22] = v127;
    *&v121[38] = v128;
    v122 = v97;
    *v123 = 257;
    *&v123[2] = *v121;
    *&v123[18] = *&v121[16];
    *&v123[34] = *&v121[32];
    *&v123[48] = *(&v128 + 1);
    v118[0] = v97;
    v118[1] = *v123;
    v118[2] = *&v123[16];
    v118[3] = *&v123[32];
    v119 = *(&v128 + 1);
    v124 = 1;
    v120 = 1;
    goto LABEL_28;
  }

  v13 = v109;
  v6 = v49;
  if (v21 != *MEMORY[0x277D0D6B8] && v21 != *MEMORY[0x277D0D6C8])
  {
    sub_24FEDE834();
    __break(1u);
    goto LABEL_32;
  }

LABEL_2:
  sub_24FEDDCB4();
  (*(v10 + 104))(v12, *MEMORY[0x277CE0FE0], v9);
  v109 = sub_24FEDDD04();

  (*(v10 + 8))(v12, v9);
  sub_24FEDDF34();
  sub_24FEDD0F4();
  LOBYTE(v122) = 1;
  *&v117[6] = *v121;
  *&v117[22] = *&v121[16];
  *&v117[38] = *&v121[32];
  LODWORD(v104) = sub_24FEDD744();
  sub_24FEDD014();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  LOBYTE(v118[0]) = 0;
  v103 = sub_24FEDDC54();
  v30 = swift_getKeyPath();
  sub_24FEDDC24();
  v31 = sub_24FEDDC64();

  v32 = sub_24FEDD744();
  v33 = &v15[*(v13 + 36)];
  v34 = *(sub_24FEDD284() + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_24FEDD4E4();
  (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
  __asm { FMOV            V0.2D, #10.0 }

  *v33 = _Q0;
  *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4D80, &unk_24FEE0D50) + 36)] = 256;
  v42 = *&v117[16];
  *(v15 + 18) = *v117;
  *v15 = v109;
  *(v15 + 1) = 0;
  *(v15 + 8) = 1;
  *(v15 + 34) = v42;
  *(v15 + 50) = *&v117[32];
  *(v15 + 8) = *&v117[46];
  v15[72] = v104;
  *(v15 + 10) = v23;
  *(v15 + 11) = v25;
  *(v15 + 12) = v27;
  *(v15 + 13) = v29;
  v15[112] = 0;
  v43 = v103;
  *(v15 + 15) = v30;
  *(v15 + 16) = v43;
  *(v15 + 17) = v31;
  v15[144] = v32;
  sub_24FE58B14(v15, v6, &qword_27F3A4968, &qword_24FEE0788);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4D70, &qword_24FEE07C0);
  sub_24FE58674();
  sub_24FE58564();
  v44 = v114;
  sub_24FEDD5F4();
  sub_24FE58B14(v44, v105, &qword_27F3A4958, &unk_24FEE0D60);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4970, &unk_24FEE0D90);
  sub_24FE589FC();
  sub_24FE584E0();
  v45 = v106;
  sub_24FEDD5F4();
  sub_24FE58B7C(v44, &qword_27F3A4958, &unk_24FEE0D60);
  sub_24FE58B14(v45, v115, &qword_27F3A4960, &qword_24FEE0780);
  swift_storeEnumTagMultiPayload();
  sub_24FE58970();
  sub_24FE58A88();
  sub_24FEDD5F4();
  sub_24FE58B7C(v45, &qword_27F3A4960, &qword_24FEE0780);
  v46 = v15;
  v47 = &qword_27F3A4968;
  v48 = &qword_24FEE0788;
  return sub_24FE58B7C(v46, v47, v48);
}

void sub_24FE583A8()
{
  v0 = sub_24FEDE1C4();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_27F3B30D8 = v1;
}

uint64_t sub_24FE58418(float a1)
{
  if (a1 >= 1.0)
  {
    v1 = a1;
  }

  else
  {
    v1 = a1 * 1024.0;
  }

  if (a1 >= 1.0)
  {
    v2 = 0x424D2066322E25;
  }

  else
  {
    v2 = 0x424B2066302E25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4928, &qword_24FEE0750);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24FEE0740;
  v4 = MEMORY[0x277D83B08];
  *(v3 + 56) = MEMORY[0x277D83A90];
  *(v3 + 64) = v4;
  *(v3 + 32) = v1;

  return MEMORY[0x28211E920](v2, 0xE700000000000000, v3);
}

unint64_t sub_24FE584E0()
{
  result = qword_27F3A4E00;
  if (!qword_27F3A4E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4970, &unk_24FEE0D90);
    sub_24FE58564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4E00);
  }

  return result;
}

unint64_t sub_24FE58564()
{
  result = qword_27F3A4978;
  if (!qword_27F3A4978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F3A4D70, &qword_24FEE07C0);
    sub_24FE585F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4978);
  }

  return result;
}

unint64_t sub_24FE585F0()
{
  result = qword_27F3A4C40;
  if (!qword_27F3A4C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4980, &qword_24FEE0C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4C40);
  }

  return result;
}

unint64_t sub_24FE58674()
{
  result = qword_27F3A4DB0;
  if (!qword_27F3A4DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4968, &qword_24FEE0788);
    sub_24FE5872C();
    sub_24FE58928(&unk_27F3A49B0, &qword_27F3A4D80, &unk_24FEE0D50, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4DB0);
  }

  return result;
}

unint64_t sub_24FE5872C()
{
  result = qword_27F3A4DC0;
  if (!qword_27F3A4DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4988, &unk_24FEE0D70);
    sub_24FE587E4();
    sub_24FE58928(&unk_27F3A4DF0, &qword_27F3A49A8, qword_24FEE07D8, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4DC0);
  }

  return result;
}

unint64_t sub_24FE587E4()
{
  result = qword_27F3A4DD0;
  if (!qword_27F3A4DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4990, &qword_24FEE07C8);
    sub_24FE5889C();
    sub_24FE58928(&unk_27F3A4D10, &qword_27F3A49A0, &qword_24FEE07D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4DD0);
  }

  return result;
}

unint64_t sub_24FE5889C()
{
  result = qword_27F3A4DE0;
  if (!qword_27F3A4DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4998, &unk_24FEE0D80);
    sub_24FE58564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4DE0);
  }

  return result;
}

uint64_t sub_24FE58928(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_24FE58970()
{
  result = qword_27F3A4D90;
  if (!qword_27F3A4D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4960, &qword_24FEE0780);
    sub_24FE589FC();
    sub_24FE584E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4D90);
  }

  return result;
}

unint64_t sub_24FE589FC()
{
  result = qword_27F3A4DA0;
  if (!qword_27F3A4DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4958, &unk_24FEE0D60);
    sub_24FE58674();
    sub_24FE58564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4DA0);
  }

  return result;
}

unint64_t sub_24FE58A88()
{
  result = qword_27F3A4E10;
  if (!qword_27F3A4E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4938, &qword_24FEE0760);
    sub_24FE584E0();
    sub_24FE58674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4E10);
  }

  return result;
}

uint64_t sub_24FE58B14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24FE58B7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for ResourceBundleHelper()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

id sub_24FE58C10()
{
  type metadata accessor for ResourceBundleHelper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F3B30E0 = result;
  return result;
}

void sub_24FE58C68()
{
  v1 = v0;
  v2 = *(v0 + *(type metadata accessor for AttachmentConfirmationView(0) + 60));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4E28, &unk_24FEE0DA8);
  sub_24FEDDD44();
  sub_24FEDDD54();

  sub_24FEDDD44();
  v3 = 0;
  v4 = 0;
  if (v2 == 1)
  {
    v3 = *(v1 + 48);
  }

  qword_27F3A49C0 = v3;
  qword_27F3A49C8 = v4;

  sub_24FE58D70();
}

void sub_24FE58D70()
{
  v1 = sub_24FEDDFA4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24FEDDFC4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + *(type metadata accessor for AttachmentConfirmationView(0) + 68));
  if (v9)
  {
    v10 = v9;
    v11 = sub_24FEDE0F4();

    if (v11)
    {
      sub_24FE62F4C(0, &qword_27F3A4E38, 0x277D85C78);
      v19 = sub_24FEDE504();
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_24FE62FCC;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24FE5CE20;
      aBlock[3] = &block_descriptor;
      v13 = _Block_copy(aBlock);
      v18 = v11;
      v14 = v13;

      sub_24FEDDFB4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_24FE62254(&qword_27F3A4EA0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4EA8, &qword_24FEE0DB8);
      v17 = v5;
      sub_24FE58928(&qword_27F3A4EB0, &qword_27F3A4EA8, &qword_24FEE0DB8, MEMORY[0x277D83970]);
      sub_24FEDE594();
      v15 = v19;
      MEMORY[0x25305A710](0, v8, v4, v14);
      _Block_release(v14);
      swift_unknownObjectRelease();

      (*(v2 + 8))(v4, v1);
      (*(v6 + 8))(v8, v17);
    }
  }

  else
  {
    sub_24FEDE134();
    sub_24FE62254(&qword_27F3A4A30, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    sub_24FEDD2B4();
    __break(1u);
  }
}

uint64_t AttachmentConfirmationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49D0, &qword_24FEE0850);
  MEMORY[0x28223BE20](v28);
  v27 = &v23 - v2;
  v3 = type metadata accessor for AttachmentConfirmationView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v23 = v6;
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49D8, &qword_24FEE0858);
  MEMORY[0x28223BE20](v25);
  v9 = &v23 - v8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49E0, &qword_24FEE0860);
  MEMORY[0x28223BE20](v26);
  v11 = &v23 - v10;
  *v9 = sub_24FEDD514();
  *(v9 + 1) = 0x402C000000000000;
  v9[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49E8, &qword_24FEE0868);
  sub_24FE59570(v1, &v9[*(v12 + 44)]);
  v13 = *(v1 + *(v4 + 60));
  v24 = v1;
  v30 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49F0, &qword_24FEE0870);
  sub_24FEDDD44();
  sub_24FE6229C(v1, v7, type metadata accessor for AttachmentConfirmationView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_24FE62404(v7, v15 + v14, type metadata accessor for AttachmentConfirmationView);
  sub_24FE58928(&qword_27F3A49F8, &qword_27F3A49D8, &qword_24FEE0858, MEMORY[0x277CE1198]);
  sub_24FEDDBC4();

  sub_24FE58B7C(v9, &qword_27F3A49D8, &qword_24FEE0858);
  sub_24FE6229C(v24, v7, type metadata accessor for AttachmentConfirmationView);
  v16 = swift_allocObject();
  sub_24FE62404(v7, v16 + v14, type metadata accessor for AttachmentConfirmationView);
  v17 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4A00, &qword_24FEE0878) + 36)];
  *v17 = sub_24FE5CB78;
  v17[1] = v16;
  v17[2] = 0;
  v17[3] = 0;
  v18 = sub_24FEDD7E4();
  KeyPath = swift_getKeyPath();
  v20 = v27;
  v21 = &v11[*(v26 + 36)];
  *v21 = KeyPath;
  v21[1] = v18;
  sub_24FE5C100(0, v20);
  sub_24FE60984();
  sub_24FE58928(&qword_27F3A4A28, &qword_27F3A49D0, &qword_24FEE0850, MEMORY[0x277D83660]);
  sub_24FEDDB64();
  sub_24FE58B7C(v20, &qword_27F3A49D0, &qword_24FEE0850);
  return sub_24FE58B7C(v11, &qword_27F3A49E0, &qword_24FEE0860);
}

uint64_t sub_24FE59570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v199 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4EB8, &qword_24FEE0DC0);
  v197 = *(v3 - 8);
  v198 = v3;
  MEMORY[0x28223BE20](v3);
  v182 = &v159 - v4;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4EC0, &qword_24FEE0DC8);
  MEMORY[0x28223BE20](v161);
  v170 = (&v159 - v5);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4EC8, &qword_24FEE0DD0);
  MEMORY[0x28223BE20](v166);
  v167 = &v159 - v6;
  v7 = type metadata accessor for QuickLookPreview(0);
  MEMORY[0x28223BE20](v7 - 8);
  v160 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4ED0, &qword_24FEE0DD8);
  MEMORY[0x28223BE20](v159);
  v169 = &v159 - v9;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4ED8, &qword_24FEE0DE0);
  MEMORY[0x28223BE20](v162);
  v165 = &v159 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4EE0, &qword_24FEE0DE8);
  v180 = *(v11 - 8);
  v181 = v11;
  MEMORY[0x28223BE20](v11);
  v164 = &v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v163 = &v159 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  MEMORY[0x28223BE20](v15 - 8);
  v171 = &v159 - v16;
  v17 = sub_24FEDC9E4();
  v172 = *(v17 - 8);
  v173 = v17;
  MEMORY[0x28223BE20](v17);
  v168 = &v159 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4EE8, &qword_24FEE0DF0);
  MEMORY[0x28223BE20](v19 - 8);
  v179 = &v159 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v183 = &v159 - v22;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4EF0, &qword_24FEE0DF8);
  MEMORY[0x28223BE20](v175);
  v174 = (&v159 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4EF8, &qword_24FEE0E00);
  v177 = *(v24 - 8);
  v178 = v24;
  MEMORY[0x28223BE20](v24);
  v176 = &v159 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v194 = &v159 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F00, &qword_24FEE0E08);
  MEMORY[0x28223BE20](v28 - 8);
  v196 = &v159 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v200 = &v159 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F08, &qword_24FEE0E10);
  v33 = *(v32 - 8);
  v190 = v32;
  v191 = v33;
  MEMORY[0x28223BE20](v32);
  v186 = &v159 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F10, &qword_24FEE0E18);
  v192 = *(v35 - 8);
  v193 = v35;
  MEMORY[0x28223BE20](v35);
  v187 = &v159 - v36;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F18, &qword_24FEE0E20) - 8;
  MEMORY[0x28223BE20](v189);
  v195 = &v159 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v188 = &v159 - v39;
  MEMORY[0x28223BE20](v40);
  v201 = &v159 - v41;
  v185 = a1;
  *&v210 = sub_24FE627A8();
  *(&v210 + 1) = v42;
  sub_24FE56B40();

  v184 = sub_24FEDD9F4();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = sub_24FE5A70C();
  v51 = v50;
  KeyPath = swift_getKeyPath();
  v53 = sub_24FEDD854();
  v54 = swift_getKeyPath();
  v55 = v46 & 1;
  LOBYTE(v210) = v46 & 1;
  v51 &= 1u;
  LOBYTE(v203) = v51;
  v56 = sub_24FEDDC74();
  v57 = swift_getKeyPath();
  *&v210 = v184;
  *(&v210 + 1) = v44;
  LOBYTE(v211) = v55;
  *(&v211 + 1) = v48;
  *&v212 = KeyPath;
  *(&v212 + 1) = v49;
  LOBYTE(v213) = v51;
  v58 = v185;
  *(&v213 + 1) = v54;
  *&v214 = v53;
  *(&v214 + 1) = v57;
  *&v215 = v56;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F20, &qword_24FEE0E28);
  v60 = sub_24FE62FEC();
  v61 = v186;
  sub_24FEDDB24();
  v217[2] = v212;
  v217[3] = v213;
  v217[4] = v214;
  v218 = v215;
  v217[0] = v210;
  v217[1] = v211;
  sub_24FE58B7C(v217, &qword_27F3A4F20, &qword_24FEE0E28);
  *&v210 = v59;
  *(&v210 + 1) = v60;
  v62 = 1;
  swift_getOpaqueTypeConformance2();
  v63 = v187;
  v64 = v190;
  sub_24FEDDB84();
  (*(v191 + 8))(v61, v64);
  sub_24FEDDF44();
  sub_24FEDD294();
  v65 = v188;
  (*(v192 + 32))(v188, v63, v193);
  v66 = (v65 + *(v189 + 44));
  v67 = v208;
  v66[4] = v207;
  v66[5] = v67;
  v66[6] = v209;
  v68 = v204;
  *v66 = v203;
  v66[1] = v68;
  v69 = v206;
  v66[2] = v205;
  v66[3] = v69;
  sub_24FE6315C(v65, v201, &qword_27F3A4F18, &qword_24FEE0E20);
  v70 = type metadata accessor for AttachmentConfirmationView(0);
  v71 = v58 + *(v70 + 56);
  v72 = *v71;
  v73 = *(v71 + 8);
  LOBYTE(v210) = v72;
  *(&v210 + 1) = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4E28, &unk_24FEE0DA8);
  sub_24FEDDD44();
  if (v202 == 1)
  {
    v74 = sub_24FEDD434();
    v75 = v174;
    *v174 = v74;
    *(v75 + 8) = 0x402C000000000000;
    *(v75 + 16) = 0;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F48, &qword_24FEE0E40);
    sub_24FE5A7D4(v58, v75 + *(v76 + 44));
    sub_24FE58928(&qword_27F3A4F50, &qword_27F3A4EF0, &qword_24FEE0DF8, MEMORY[0x277CE1138]);
    v77 = v194;
    sub_24FEDDA54();
    sub_24FE58B7C(v75, &qword_27F3A4EF0, &qword_24FEE0DF8);
    v78 = v58 + *(v70 + 60);
    v79 = *v78;
    v80 = *(v78 + 8);
    LOBYTE(v210) = v79;
    *(&v210 + 1) = v80;
    sub_24FEDDD44();
    if (v202 == 1)
    {
      v81 = v171;
      sub_24FE5C5B8(v171);
      v83 = v172;
      v82 = v173;
      v84 = (*(v172 + 48))(v81, 1, v173);
      v85 = v183;
      if (v84 == 1)
      {
        sub_24FE58B7C(v81, &unk_27F3A4A40, &qword_24FEE08C0);
      }

      else
      {
        v88 = v168;
        (*(v83 + 32))(v168, v81, v82);
        v89 = sub_24FEDC9C4();
        v90 = objc_opt_self();
        v91 = sub_24FEDC974();
        v92 = [v90 canPreviewItem_];

        if (v89)
        {
          sub_24FEDC9A4();
        }

        if (v92)
        {
          v93 = v160;
          (*(v83 + 16))(v160, v88, v82);
          sub_24FEDDF34();
          sub_24FEDD294();
          v94 = v93;
          v95 = v169;
          sub_24FE62404(v94, v169, type metadata accessor for QuickLookPreview);
          v96 = (v95 + *(v159 + 36));
          v97 = v215;
          v96[4] = v214;
          v96[5] = v97;
          v96[6] = v216;
          v98 = v211;
          *v96 = v210;
          v96[1] = v98;
          v99 = v213;
          v96[2] = v212;
          v96[3] = v99;
          v100 = *(sub_24FEDD284() + 20);
          v101 = *MEMORY[0x277CE0118];
          v102 = sub_24FEDD4E4();
          v103 = v170;
          (*(*(v102 - 8) + 104))(v170 + v100, v101, v102);
          __asm { FMOV            V0.2D, #20.0 }

          *v103 = _Q0;
          v109 = sub_24FEDD624();
          v110 = v161;
          *(v103 + *(v161 + 52)) = v109;
          *(v103 + *(v110 + 56)) = 256;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F60, &qword_24FEE0E50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_24FEE0830;
          LOBYTE(v101) = sub_24FEDD734();
          *(inited + 32) = v101;
          v112 = sub_24FEDD754();
          *(inited + 33) = v112;
          v113 = sub_24FEDD784();
          sub_24FEDD784();
          if (sub_24FEDD784() != v101)
          {
            v113 = sub_24FEDD784();
          }

          sub_24FEDD784();
          if (sub_24FEDD784() != v112)
          {
            v113 = sub_24FEDD784();
          }

          sub_24FEDD014();
          v115 = v114;
          v117 = v116;
          v119 = v118;
          v121 = v120;
          v122 = v167;
          sub_24FE6315C(v170, v167, &qword_27F3A4EC0, &qword_24FEE0DC8);
          v123 = v122 + *(v166 + 36);
          *v123 = v113;
          *(v123 + 8) = v115;
          *(v123 + 16) = v117;
          *(v123 + 24) = v119;
          *(v123 + 32) = v121;
          *(v123 + 40) = 0;
          v124 = sub_24FEDDF34();
          v126 = v125;
          v127 = v165;
          v128 = &v165[*(v162 + 36)];
          sub_24FE6315C(v122, v128, &qword_27F3A4EC8, &qword_24FEE0DD0);
          v129 = (v128 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F68, &qword_24FEE0E58) + 36));
          *v129 = v124;
          v129[1] = v126;
          sub_24FE6315C(v169, v127, &qword_27F3A4ED0, &qword_24FEE0DD8);
          LOBYTE(v126) = sub_24FEDD754();
          sub_24FEDD014();
          v131 = v130;
          v133 = v132;
          v135 = v134;
          v137 = v136;
          (*(v83 + 8))(v88, v82);
          v138 = v164;
          sub_24FE6315C(v127, v164, &qword_27F3A4ED8, &qword_24FEE0DE0);
          v139 = v181;
          v140 = v138 + *(v181 + 36);
          *v140 = v126;
          *(v140 + 8) = v131;
          *(v140 + 16) = v133;
          *(v140 + 24) = v135;
          *(v140 + 32) = v137;
          *(v140 + 40) = 0;
          v141 = v138;
          v142 = v163;
          sub_24FE6315C(v141, v163, &qword_27F3A4EE0, &qword_24FEE0DE8);
          v85 = v183;
          sub_24FE6315C(v142, v183, &qword_27F3A4EE0, &qword_24FEE0DE8);
          v87 = v139;
          v86 = 0;
          goto LABEL_16;
        }

        (*(v83 + 8))(v88, v82);
      }

      v86 = 1;
      v87 = v181;
    }

    else
    {
      v86 = 1;
      v87 = v181;
      v85 = v183;
    }

LABEL_16:
    (*(v180 + 56))(v85, v86, 1, v87);
    v143 = v176;
    v144 = v177;
    v145 = *(v177 + 16);
    v146 = v178;
    v145(v176, v77, v178);
    v147 = v179;
    sub_24FE58B14(v85, v179, &qword_27F3A4EE8, &qword_24FEE0DF0);
    v148 = v85;
    v149 = v182;
    v145(v182, v143, v146);
    v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F58, &qword_24FEE0E48);
    sub_24FE58B14(v147, v149 + *(v150 + 48), &qword_27F3A4EE8, &qword_24FEE0DF0);
    sub_24FE58B7C(v148, &qword_27F3A4EE8, &qword_24FEE0DF0);
    v151 = *(v144 + 8);
    v151(v194, v146);
    sub_24FE58B7C(v147, &qword_27F3A4EE8, &qword_24FEE0DF0);
    v151(v143, v146);
    sub_24FE6315C(v149, v200, &qword_27F3A4EB8, &qword_24FEE0DC0);
    v62 = 0;
  }

  v152 = v200;
  (*(v197 + 56))(v200, v62, 1, v198);
  v153 = v201;
  v154 = v195;
  sub_24FE58B14(v201, v195, &qword_27F3A4F18, &qword_24FEE0E20);
  v155 = v196;
  sub_24FE58B14(v152, v196, &qword_27F3A4F00, &qword_24FEE0E08);
  v156 = v199;
  sub_24FE58B14(v154, v199, &qword_27F3A4F18, &qword_24FEE0E20);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F40, &qword_24FEE0E38);
  sub_24FE58B14(v155, v156 + *(v157 + 48), &qword_27F3A4F00, &qword_24FEE0E08);
  sub_24FE58B7C(v152, &qword_27F3A4F00, &qword_24FEE0E08);
  sub_24FE58B7C(v153, &qword_27F3A4F18, &qword_24FEE0E20);
  sub_24FE58B7C(v155, &qword_27F3A4F00, &qword_24FEE0E08);
  return sub_24FE58B7C(v154, &qword_27F3A4F18, &qword_24FEE0E20);
}

BOOL sub_24FE5A70C()
{
  type metadata accessor for AttachmentConfirmationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4E28, &unk_24FEE0DA8);
  sub_24FEDDD44();
  result = 0;
  if (v1 == 1)
  {
    sub_24FEDDD44();
    if (v1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_24FE5A7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v187 = a2;
  v184 = type metadata accessor for RemoveAttachmentButton(0);
  v183 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v170 = &v159 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F70, &qword_24FEE0E60);
  MEMORY[0x28223BE20](v4 - 8);
  v186 = &v159 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v185 = &v159 - v7;
  v168 = type metadata accessor for FileDetailsView(0);
  MEMORY[0x28223BE20](v168);
  v169 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F78, &qword_24FEE0E68);
  MEMORY[0x28223BE20](v198);
  v192 = &v159 - v9;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F80, &qword_24FEE0E70);
  v164 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v163 = &v159 - v10;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F88, &qword_24FEE0E78);
  MEMORY[0x28223BE20](v178);
  v180 = &v159 - v11;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4E20, &qword_24FEE0DA0);
  MEMORY[0x28223BE20](v173);
  v174 = &v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v172 = &v159 - v14;
  v191 = sub_24FEDD234();
  v190 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v189 = &v159 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v188 = &v159 - v17;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49D0, &qword_24FEE0850);
  MEMORY[0x28223BE20](v177);
  v175 = &v159 - v18;
  v161 = type metadata accessor for ImageDetailsView(0);
  MEMORY[0x28223BE20](v161);
  v162 = &v159 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F90, &qword_24FEE0E80);
  MEMORY[0x28223BE20](v197);
  v171 = &v159 - v20;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F98, &qword_24FEE0E88);
  v160 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v159 = &v159 - v21;
  v195 = sub_24FEDCEB4();
  v194 = *(v195 - 8);
  v22 = v194;
  MEMORY[0x28223BE20](v195);
  v196 = &v159 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4FA0, &qword_24FEE0E90);
  MEMORY[0x28223BE20](v24 - 8);
  v181 = &v159 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v200 = &v159 - v27;
  v28 = type metadata accessor for AttachmentConfirmationView(0);
  v193 = *(v28 - 8);
  v29 = *(v193 + 8);
  MEMORY[0x28223BE20](v28);
  v30 = type metadata accessor for ThumbnailView(0);
  MEMORY[0x28223BE20](v30);
  v32 = (&v159 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4FA8, &qword_24FEE0E98);
  v34 = v33 - 8;
  MEMORY[0x28223BE20](v33);
  v179 = &v159 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v159 - v37;
  v39 = sub_24FE5BF08();
  v201 = v28;
  v40 = *(v28 + 36);
  v41 = v22 + 16;
  v42 = *(v22 + 16);
  v43 = v32 + *(v30 + 20);
  v44 = v195;
  v166 = v41;
  v165 = v42;
  v42(v43, a1 + v40, v195);
  *v32 = v39;
  sub_24FE6229C(a1, &v159 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AttachmentConfirmationView);
  v45 = a1;
  v46 = (v193[80] + 16) & ~v193[80];
  v47 = swift_allocObject();
  sub_24FE62404(&v159 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v47 + v46, type metadata accessor for AttachmentConfirmationView);
  sub_24FE62254(&qword_27F3A4FB0, type metadata accessor for ThumbnailView, &unk_24FEE09F0);
  sub_24FEDDB14();

  sub_24FE63220(v32);
  sub_24FEDDC34();
  v48 = sub_24FEDDC64();

  v49 = *(v34 + 44);
  v193 = v38;
  v50 = &v38[v49];
  v51 = v45;
  *v50 = v48;
  *(v50 + 8) = xmmword_24FEE0840;
  *(v50 + 3) = 0x4000000000000000;
  v52 = v194;
  v53 = v196;
  v54 = v44;
  (*(v194 + 104))(v196, *MEMORY[0x277D0D6A0], v44);
  v167 = v40;
  v55 = v53;
  LOBYTE(v53) = sub_24FEDCEA4();
  v56 = v54;
  (*(v52 + 8))(v55, v54);
  v199 = v51;
  if ((v53 & 1) == 0)
  {
    v96 = v201[13];
    v97 = *(v51 + v201[12]);
    v98 = *(v51 + 48);
    v99 = *(v51 + 56);
    v100 = *(v51 + v96 + 8);
    v204 = *(v51 + v96);
    v101 = v204;
    v205 = v100;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49F0, &qword_24FEE0870);
    sub_24FEDDD64();
    v102 = v208;
    v196 = v209;
    *&v208 = v101;
    *(&v208 + 1) = v100;
    result = sub_24FEDDD44();
    if ((v204 & 0x8000000000000000) == 0)
    {
      if (v204 < *(v97 + 16))
      {
        v103 = v97 + 40 * v204;
        LODWORD(v194) = *(v103 + 64);
        LODWORD(v171) = *(v103 + 68);
        v104 = v99;
        v105 = v199;
        v106 = *(v199 + 72);
        v162 = *(v199 + 64);
        v107 = v168;
        v108 = v169;
        v165(&v169[*(v168 + 36)], v199 + v167, v56);
        v109 = v201;
        sub_24FE58B14(v105 + v201[10], v108 + *(v107 + 40), &qword_27F3A4A38, &unk_24FEE1340);
        sub_24FE58B14(v105 + v109[11], v108 + *(v107 + 44), &unk_27F3A4A40, &qword_24FEE08C0);
        *v108 = v98;
        *(v108 + 8) = v104;
        *(v108 + 16) = v97;
        *(v108 + 24) = v102;
        v110 = v196;
        *(v108 + 32) = *(&v102 + 1);
        *(v108 + 40) = v110;
        *(v108 + 48) = v194;
        *(v108 + 52) = v171;
        *(v108 + 56) = v162;
        *(v108 + 64) = v106;

        sub_24FEDDF44();
        sub_24FEDD294();
        v111 = v192;
        sub_24FE62404(v108, v192, type metadata accessor for FileDetailsView);
        v112 = (v111 + *(v198 + 36));
        v113 = v213;
        v112[4] = v212;
        v112[5] = v113;
        v112[6] = v214;
        v114 = v209;
        *v112 = v208;
        v112[1] = v114;
        v115 = v211;
        v112[2] = v210;
        v112[3] = v115;
        v116 = v190;
        v117 = *(v190 + 104);
        v118 = v188;
        v119 = v191;
        v117(v188, *MEMORY[0x277CDF9F8], v191);
        v120 = v189;
        v117(v189, *MEMORY[0x277CDFA10], v119);
        sub_24FE62254(&qword_27F3A4E30, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
        result = sub_24FEDE184();
        if (result)
        {
          v121 = *(v116 + 32);
          v122 = v172;
          v121(v172, v118, v119);
          v123 = v173;
          v121((v122 + *(v173 + 48)), v120, v119);
          v124 = v174;
          sub_24FE58B14(v122, v174, &qword_27F3A4E20, &qword_24FEE0DA0);
          v125 = *(v123 + 48);
          v126 = v175;
          v121(v175, v124, v119);
          v127 = *(v116 + 8);
          v127(v124 + v125, v119);
          sub_24FE6315C(v122, v124, &qword_27F3A4E20, &qword_24FEE0DA0);
          v128 = *(v123 + 48);
          v129 = v177;
          v121((v126 + *(v177 + 36)), (v124 + v128), v119);
          v127(v124, v119);
          v196 = sub_24FE6327C();
          v130 = sub_24FE58928(&qword_27F3A4A28, &qword_27F3A49D0, &qword_24FEE0850, MEMORY[0x277D83660]);
          v131 = v163;
          v132 = v198;
          v133 = v192;
          sub_24FEDDB64();
          sub_24FE58B7C(v126, &qword_27F3A49D0, &qword_24FEE0850);
          sub_24FE58B7C(v133, &qword_27F3A4F78, &qword_24FEE0E68);
          v134 = v164;
          v135 = v182;
          (*(v164 + 16))(v180, v131, v182);
          swift_storeEnumTagMultiPayload();
          v136 = sub_24FE63338();
          v204 = v197;
          v205 = v129;
          v206 = v136;
          v207 = v130;
          swift_getOpaqueTypeConformance2();
          v204 = v132;
          v205 = v129;
          v206 = v196;
          v207 = v130;
          swift_getOpaqueTypeConformance2();
          sub_24FEDD5F4();
          (*(v134 + 8))(v131, v135);
          v95 = v199;
          goto LABEL_12;
        }

        goto LABEL_21;
      }

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v57 = v201;
  v58 = v201[13];
  v59 = *(v51 + v201[12]);
  v60 = *(v51 + v58);
  v61 = *(v51 + v58 + 8);
  *&v208 = v60;
  *(&v208 + 1) = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49F0, &qword_24FEE0870);
  result = sub_24FEDDD44();
  if ((v204 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v204 >= *(v59 + 16))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v63 = *(v59 + 32 + 40 * v204 + 37);
  *&v208 = v60;
  *(&v208 + 1) = v61;
  result = sub_24FEDDD44();
  if ((v204 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v204 >= *(v59 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v64 = v59 + 32 + 40 * v204;
  v65 = *(v64 + 32);
  v66 = *(v64 + 36);
  v67 = v162;
  sub_24FE58B14(v51 + v57[11], &v162[*(v161 + 24)], &unk_27F3A4A40, &qword_24FEE08C0);
  *v67 = v63;
  *(v67 + 4) = v65;
  *(v67 + 8) = v66;
  sub_24FEDDF44();
  sub_24FEDD294();
  v68 = v171;
  sub_24FE62404(v67, v171, type metadata accessor for ImageDetailsView);
  v69 = (v68 + *(v197 + 36));
  v70 = v213;
  v69[4] = v212;
  v69[5] = v70;
  v69[6] = v214;
  v71 = v209;
  *v69 = v208;
  v69[1] = v71;
  v72 = v211;
  v69[2] = v210;
  v69[3] = v72;
  v73 = v190;
  v74 = *(v190 + 104);
  v75 = v188;
  v76 = v191;
  v74(v188, *MEMORY[0x277CDF9F8], v191);
  v77 = v189;
  v74(v189, *MEMORY[0x277CDFA10], v76);
  sub_24FE62254(&qword_27F3A4E30, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  result = sub_24FEDE184();
  if ((result & 1) == 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v78 = *(v73 + 32);
  v79 = v172;
  v78(v172, v75, v76);
  v80 = v173;
  v78((v79 + *(v173 + 48)), v77, v76);
  v81 = v174;
  sub_24FE58B14(v79, v174, &qword_27F3A4E20, &qword_24FEE0DA0);
  v82 = *(v80 + 48);
  v83 = v175;
  v78(v175, v81, v76);
  v84 = *(v73 + 8);
  v84(v81 + v82, v76);
  sub_24FE6315C(v79, v81, &qword_27F3A4E20, &qword_24FEE0DA0);
  v85 = *(v80 + 48);
  v86 = v177;
  v78((v83 + *(v177 + 36)), (v81 + v85), v76);
  v84(v81, v76);
  v87 = sub_24FE63338();
  v88 = sub_24FE58928(&qword_27F3A4A28, &qword_27F3A49D0, &qword_24FEE0850, MEMORY[0x277D83660]);
  v89 = v159;
  v90 = v197;
  v91 = v171;
  sub_24FEDDB64();
  sub_24FE58B7C(v83, &qword_27F3A49D0, &qword_24FEE0850);
  sub_24FE58B7C(v91, &qword_27F3A4F90, &qword_24FEE0E80);
  v92 = v160;
  v93 = v176;
  (*(v160 + 16))(v180, v89, v176);
  swift_storeEnumTagMultiPayload();
  v204 = v90;
  v205 = v86;
  v206 = v87;
  v207 = v88;
  swift_getOpaqueTypeConformance2();
  v94 = sub_24FE6327C();
  v204 = v198;
  v205 = v86;
  v206 = v94;
  v207 = v88;
  swift_getOpaqueTypeConformance2();
  sub_24FEDD5F4();
  v95 = v199;
  (*(v92 + 8))(v89, v93);
LABEL_12:
  v137 = *(v95 + 56);
  v138 = v185;
  v139 = v184;
  if (v137)
  {
    v198 = *(v95 + 48);
    v140 = v201;
    v141 = (v95 + v201[14]);
    v142 = *v141;
    v143 = *(v141 + 1);
    v202 = v142;
    v203 = v143;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4E28, &unk_24FEE0DA8);
    sub_24FEDDD64();
    v144 = v204;
    v145 = v205;
    v146 = v206;
    v147 = (v95 + v140[16]);
    v149 = *v147;
    v148 = v147[1];

    v150 = v170;
    _s21GenerativeAssistantUI0A13DismissalViewVACycfC_0();
    *v150 = v198;
    *(v150 + 8) = v137;
    *(v150 + 16) = v144;
    *(v150 + 24) = v145;
    *(v150 + 32) = v146;
    *(v150 + 40) = v149;
    *(v150 + 48) = v148;
    sub_24FE62404(v150, v138, type metadata accessor for RemoveAttachmentButton);
    v151 = 0;
  }

  else
  {
    v151 = 1;
  }

  (*(v183 + 56))(v138, v151, 1, v139);
  v152 = v193;
  v153 = v179;
  sub_24FE58B14(v193, v179, &qword_27F3A4FA8, &qword_24FEE0E98);
  v154 = v200;
  v155 = v181;
  sub_24FE58B14(v200, v181, &qword_27F3A4FA0, &qword_24FEE0E90);
  v156 = v186;
  sub_24FE58B14(v138, v186, &qword_27F3A4F70, &qword_24FEE0E60);
  v157 = v187;
  sub_24FE58B14(v153, v187, &qword_27F3A4FA8, &qword_24FEE0E98);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4FD8, &qword_24FEE0EA0);
  sub_24FE58B14(v155, v157 + *(v158 + 48), &qword_27F3A4FA0, &qword_24FEE0E90);
  sub_24FE58B14(v156, v157 + *(v158 + 64), &qword_27F3A4F70, &qword_24FEE0E60);
  sub_24FE58B7C(v138, &qword_27F3A4F70, &qword_24FEE0E60);
  sub_24FE58B7C(v154, &qword_27F3A4FA0, &qword_24FEE0E90);
  sub_24FE58B7C(v152, &qword_27F3A4FA8, &qword_24FEE0E98);
  sub_24FE58B7C(v156, &qword_27F3A4F70, &qword_24FEE0E60);
  sub_24FE58B7C(v155, &qword_27F3A4FA0, &qword_24FEE0E90);
  return sub_24FE58B7C(v153, &qword_27F3A4FA8, &qword_24FEE0E98);
}

uint64_t sub_24FE5BF08()
{
  v1 = *(v0 + *(type metadata accessor for AttachmentConfirmationView(0) + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49F0, &qword_24FEE0870);
  result = sub_24FEDDD44();
  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v3 = *(v1 + 16);
  if (v17 >= v3)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v4 = v1 + 40 * v17;
  v5 = *(v4 + 48);
  if (v5 >> 60 == 15)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
LABEL_5:
    v8 = v1 + 40 * v6;
    while (v3 != v6)
    {
      if (v6 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      ++v6;
      v9 = (v8 + 40);
      v10 = *(v8 + 48);
      v8 += 40;
      if (v10 >> 60 != 15)
      {
        v11 = *v9;
        sub_24FE62C94(*v9, v10);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_24FE70C70(0, *(v7 + 16) + 1, 1, v7);
          v7 = result;
        }

        v13 = *(v7 + 16);
        v12 = *(v7 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_24FE70C70((v12 > 1), v13 + 1, 1, v7);
          v7 = result;
        }

        *(v7 + 16) = v13 + 1;
        v14 = v7 + 16 * v13;
        *(v14 + 32) = v11;
        *(v14 + 40) = v10;
        goto LABEL_5;
      }
    }

    if (*(v7 + 16))
    {
      v15 = *(v7 + 32);
      v5 = *(v7 + 40);
      sub_24FE62C94(v15, v5);

      goto LABEL_17;
    }

    return 0;
  }

  else
  {
    v15 = *(v4 + 40);
    sub_24FE62C94(v15, *(v4 + 48));
LABEL_17:
    sub_24FE62F4C(0, &unk_27F3A4BB8, 0x277D755B8);
    v16 = sub_24FEDE534();
    sub_24FE62CE8(v15, v5);
  }

  return v16;
}

uint64_t sub_24FE5C100@<X0>(char a1@<W0>, char *a2@<X8>)
{
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4E20, &qword_24FEE0DA0);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v36 - v8;
  v9 = sub_24FEDD234();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v16 = &v36 - v14;
  if (a1)
  {
    v17 = v10[13];
    v17(&v36 - v14, *MEMORY[0x277CDF9F8], v9, v15);
    (v17)(v12, *MEMORY[0x277CDFA10], v9);
    sub_24FE62254(&qword_27F3A4E30, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    v2 = v9;
    if (sub_24FEDE184())
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v18 = type metadata accessor for AttachmentConfirmationView(0);
  v19 = v2 + *(v18 + 56);
  v20 = *v19;
  v21 = *(v19 + 8);
  v40 = v20;
  v41 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4E28, &unk_24FEE0DA8);
  sub_24FEDDD44();
  if (v39 == 1)
  {
    v22 = v2 + *(v18 + 60);
    v23 = *v22;
    v24 = *(v22 + 8);
    v40 = v23;
    v41 = v24;
    sub_24FEDDD44();
    if (v39 == 1)
    {
      v25 = v10[13];
      v25(v16, *MEMORY[0x277CDF9F8], v9);
      v25(v12, *MEMORY[0x277CDFA10], v9);
      sub_24FE62254(&qword_27F3A4E30, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
      if ((sub_24FEDE184() & 1) == 0)
      {
        __break(1u);
        goto LABEL_8;
      }

LABEL_9:
      v28 = v6;
      v30 = v37;
      v29 = v38;
      v31 = v10[4];
      v31(v38, v16, v9);
      v31((v29 + *(v4 + 48)), v12, v9);
      sub_24FE58B14(v29, v28, &qword_27F3A4E20, &qword_24FEE0DA0);
      v32 = *(v4 + 48);
      v31(v30, v28, v9);
      v33 = v10[1];
      v33(v28 + v32, v9);
      sub_24FE6315C(v29, v28, &qword_27F3A4E20, &qword_24FEE0DA0);
      v34 = *(v4 + 48);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49D0, &qword_24FEE0850);
      v31(&v30[*(v35 + 36)], (v28 + v34), v9);
      return (v33)(v28, v9);
    }
  }

LABEL_8:
  v26 = v10[13];
  v26(v16, *MEMORY[0x277CDF9F8], v9);
  v26(v12, *MEMORY[0x277CDF9D0], v9);
  sub_24FE62254(&qword_27F3A4E30, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  result = sub_24FEDE184();
  if (result)
  {
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void *sub_24FE5C5B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for AttachmentConfirmationView(0) + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49F0, &qword_24FEE0870);
  result = sub_24FEDDD44();
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 >= *(v3 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (*(v3 + 40 * v6 + 56))
  {

    sub_24FEDCDC4();
  }

  else
  {
    v5 = sub_24FEDC9E4();
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

void sub_24FE5C6A8(uint64_t a1)
{
  type metadata accessor for AttachmentConfirmationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4E28, &unk_24FEE0DA8);
  sub_24FEDDD44();
  if (v1 != 1 || (sub_24FEDDD44(), (v1 & 1) == 0))
  {
    sub_24FE58C68();
  }
}

void sub_24FE5C794(uint64_t a1)
{
  v2 = sub_24FEDCEF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = *(a1 + 48);
    v8 = sub_24FEDCEC4();
    MEMORY[0x28223BE20](v8);
    v9[-4] = a1;
    v9[-3] = v5;
    v9[-2] = v7;
    v9[-1] = v6;
    v9[1] = sub_24FEDD0A4();
    sub_24FEDD094();
    sub_24FEDD274();

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for AttachmentConfirmationView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[9];
  v7 = sub_24FEDCEB4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[10];
  v9 = sub_24FEDCA34();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = v1[11];
  v12 = sub_24FEDC9E4();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24FE5CBA4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_24FE5CC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24FEDCED4();
  type metadata accessor for AttachmentConfirmationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4E28, &unk_24FEE0DA8);
  sub_24FEDDD54();
  sub_24FEDCEE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49F0, &qword_24FEE0870);
  result = sub_24FEDDD54();
  if (qword_27F3A49C8)
  {
    if (qword_27F3A49C0 == a3 && qword_27F3A49C8 == a4)
    {
      return sub_24FEDDD54();
    }

    result = sub_24FEDE844();
    if (result)
    {
      return sub_24FEDDD54();
    }
  }

  return result;
}

void *sub_24FE5CDA0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    if ([result respondsToSelector_])
    {
      [v2 informHostOfViewResize_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24FE5CE20(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t AttachmentConfirmationView.init(payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttachmentConfirmationView(0);
  v5 = v4[13];
  sub_24FEDDD34();
  *(a2 + v5) = v22;
  v6 = a2 + v4[14];
  sub_24FEDDD34();
  *v6 = v22;
  *(v6 + 8) = *(&v22 + 1);
  v7 = a2 + v4[15];
  sub_24FEDDD34();
  *v7 = v22;
  *(v7 + 8) = *(&v22 + 1);
  v8 = (a2 + v4[17]);
  sub_24FEDE134();
  sub_24FE62254(&qword_27F3A4A30, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  *v8 = sub_24FEDD2C4();
  v8[1] = v9;
  v10 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v10;
  *(a2 + 16) = *(a1 + 16);
  v11 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = v11;
  *(a2 + 48) = *(a1 + 48);
  v12 = *(a1 + 72);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = v12;
  v13 = type metadata accessor for AttachmentConfirmationPayload(0);
  v14 = v13[9];
  v15 = v4[9];
  v16 = sub_24FEDCEB4();
  (*(*(v16 - 8) + 32))(a2 + v15, a1 + v14, v16);
  sub_24FE6315C(a1 + v13[10], a2 + v4[10], &qword_27F3A4A38, &unk_24FEE1340);
  result = sub_24FE6315C(a1 + v13[11], a2 + v4[11], &unk_27F3A4A40, &qword_24FEE08C0);
  *(a2 + v4[12]) = *(a1 + v13[12]);
  v18 = (a1 + v13[13]);
  v20 = *v18;
  v19 = v18[1];
  v21 = (a2 + v4[16]);
  *v21 = v20;
  v21[1] = v19;
  return result;
}

uint64_t sub_24FE5D078@<X0>(void *a1@<X8>)
{
  v30[1] = a1;
  v30[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4D48, &qword_24FEE0D30);
  MEMORY[0x28223BE20](v30[0]);
  v3 = (v30 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4D50, &qword_24FEE0D38);
  MEMORY[0x28223BE20](v4);
  v6 = v30 - v5;
  v7 = sub_24FEDDCD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4D58, &unk_24FEE0D40);
  MEMORY[0x28223BE20](v11);
  v13 = v30 - v12;
  if (*v1)
  {
    v14 = *v1;
    sub_24FEDDCA4();
    (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v7);
    v15 = sub_24FEDDD04();

    (*(v8 + 8))(v10, v7);
    sub_24FEDDF14();
    sub_24FEDD0F4();
    v32 = 1;
    *&v31[6] = v33;
    *&v31[22] = v34;
    *&v31[38] = v35;
    v16 = &v13[*(v11 + 36)];
    v17 = *(sub_24FEDD284() + 20);
    v18 = *MEMORY[0x277CE0118];
    v19 = sub_24FEDD4E4();
    (*(*(v19 - 8) + 104))(&v16[v17], v18, v19);
    __asm { FMOV            V0.2D, #10.0 }

    *v16 = _Q0;
    *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4D80, &unk_24FEE0D50) + 36)] = 256;
    v25 = *&v31[16];
    *(v13 + 18) = *v31;
    *v13 = v15;
    *(v13 + 1) = 0;
    *(v13 + 8) = 257;
    *(v13 + 34) = v25;
    *(v13 + 50) = *&v31[32];
    *(v13 + 8) = *&v31[46];
    v26 = &qword_27F3A4D58;
    v27 = &unk_24FEE0D40;
    sub_24FE58B14(v13, v6, &qword_27F3A4D58, &unk_24FEE0D40);
    swift_storeEnumTagMultiPayload();
    sub_24FE62D50();
    sub_24FE62EA0();
    sub_24FEDD5F4();

    v28 = v13;
  }

  else
  {
    type metadata accessor for ThumbnailView(0);
    sub_24FE56C90(v3);
    v26 = &qword_27F3A4D48;
    v27 = &qword_24FEE0D30;
    sub_24FE58B14(v3, v6, &qword_27F3A4D48, &qword_24FEE0D30);
    swift_storeEnumTagMultiPayload();
    sub_24FE62D50();
    sub_24FE62EA0();
    sub_24FEDD5F4();
    v28 = v3;
  }

  return sub_24FE58B7C(v28, v26, v27);
}

uint64_t sub_24FE5D490@<X0>(uint64_t a2@<X8>)
{
  sub_24FEDD4B4();
  if (qword_27F3A4678 != -1)
  {
    swift_once();
  }

  v3 = qword_27F3B30E0;
  LOWORD(v26) = 256;
  v4 = sub_24FEDD9D4();
  v6 = v5;
  v8 = v7;
  sub_24FEDD804();
  v9 = sub_24FEDD8E4();
  v28 = v10;
  v29 = v9;
  v27 = v11;
  v30 = v12;
  sub_24FE56B94(v4, v6, v8 & 1);

  v13 = sub_24FE5D708();
  v15 = v14;
  LOBYTE(v6) = v16;
  v17 = [objc_opt_self() systemGrayColor];
  sub_24FEDDC94();
  v18 = sub_24FEDD964();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_24FE56B94(v13, v15, v6 & 1);

  *a2 = v29;
  *(a2 + 8) = v28;
  *(a2 + 16) = v27 & 1;
  *(a2 + 24) = v30;
  *(a2 + 32) = v18;
  *(a2 + 40) = v20;
  *(a2 + 48) = v22 & 1;
  *(a2 + 56) = v24;
  sub_24FE629DC(v29, v28, v27 & 1);

  sub_24FE629DC(v18, v20, v22 & 1);

  sub_24FE56B94(v18, v20, v22 & 1);

  sub_24FE56B94(v29, v28, v27 & 1);
}

uint64_t sub_24FE5D708()
{
  if (*v0 != 1)
  {
    if (*(v0 + 8))
    {
      sub_24FEDD4B4();
      if (qword_27F3A4678 != -1)
      {
        swift_once();
      }

      v3 = qword_27F3B30E0;
      v4 = sub_24FEDD9D4();
      v34 = v5;
      v35 = v4;
      v7 = v6;
    }

    else
    {
      sub_24FE58418(*(v0 + 4));
      sub_24FE56B40();
      v13 = sub_24FEDD9F4();
      v15 = v14;
      v17 = v16;
      sub_24FEDD7C4();
      v18 = sub_24FEDD994();
      v34 = v19;
      v35 = v18;
      v7 = v20;

      sub_24FE56B94(v13, v15, v17 & 1);
    }

    sub_24FEDD4B4();
    if (qword_27F3A4678 != -1)
    {
      swift_once();
    }

    v21 = qword_27F3B30E0;
    v22 = sub_24FEDD9D4();
    v24 = v23;
    v26 = v25;
    sub_24FEDD7C4();
    v27 = sub_24FEDD994();
    v29 = v28;
    v31 = v30;

    sub_24FE56B94(v22, v24, v26 & 1);

    v33 = sub_24FEDD984();
    sub_24FE56B94(v27, v29, v31 & 1);

    sub_24FE56B94(v35, v34, v7 & 1);
    v2 = v33;
    goto LABEL_15;
  }

  if ((*(v0 + 8) & 1) == 0)
  {
    sub_24FE58418(*(v0 + 4));
    sub_24FE56B40();
    v8 = sub_24FEDD9F4();
    v10 = v9;
    v12 = v11;
    sub_24FEDD7C4();
    v2 = sub_24FEDD994();

    sub_24FE56B94(v8, v10, v12 & 1);
LABEL_15:

    return v2;
  }

  sub_24FEDD4B4();
  if (qword_27F3A4678 != -1)
  {
    swift_once();
  }

  v1 = qword_27F3B30E0;
  return sub_24FEDD9D4();
}

__n128 sub_24FE5DB10@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_24FEDD514();
  sub_24FE5D490(v6);
  *&v5[55] = v6[3];
  *&v5[39] = v6[2];
  *&v5[23] = v6[1];
  *&v5[7] = v6[0];
  *(a2 + 33) = *&v5[16];
  result = *&v5[32];
  *(a2 + 49) = *&v5[32];
  *(a2 + 65) = *&v5[48];
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 80) = *&v5[63];
  *(a2 + 17) = *v5;
  return result;
}

uint64_t sub_24FE5DBA0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4C98, &qword_24FEE0C60);
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x28223BE20](v3);
  v66 = &v65 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4CA0, &qword_24FEE0C68);
  MEMORY[0x28223BE20](v5 - 8);
  v73 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v76 = &v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4CA8, &qword_24FEE0C70);
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x28223BE20](v9);
  v70 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v65 - v12;
  v67 = a1;
  v14 = *(a1 + 64);
  v77 = *(a1 + 56);
  v78 = v14;
  v15 = sub_24FE56B40();

  v65 = v15;
  v16 = sub_24FEDD9F4();
  v18 = v17;
  LOBYTE(v14) = v19;
  v21 = v20;
  KeyPath = swift_getKeyPath();
  v77 = v16;
  v78 = v18;
  v79 = v14 & 1;
  v80 = v21;
  v81 = KeyPath;
  v23 = 1;
  v82 = 1;
  v83 = 0;
  sub_24FEDD804();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4CB8, &qword_24FEE0CA8);
  sub_24FE62924();
  v75 = v13;
  v25 = v68;
  v24 = v69;
  sub_24FEDDAA4();
  v26 = v16;
  v27 = v67;
  v28 = v18;
  v29 = v76;
  sub_24FE56B94(v26, v28, v14 & 1);

  if (*(*(v27 + 16) + 16) >= 2uLL)
  {
    MEMORY[0x28223BE20](v30);
    MEMORY[0x28223BE20](v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4CE0, &qword_24FEE0CC0);
    sub_24FE629FC();
    sub_24FE62BD4();
    v32 = v66;
    sub_24FEDD8C4();
    (*(v25 + 32))(v29, v32, v24);
    v23 = 0;
  }

  (*(v25 + 56))(v29, v23, 1, v24);
  if (*(v27 + 52))
  {
    sub_24FEDD4B4();
    if (qword_27F3A4678 != -1)
    {
      swift_once();
    }

    v33 = qword_27F3B30E0;
    v34 = sub_24FEDD9D4();
    v36 = v35;
    v38 = v37;
  }

  else
  {
    v77 = sub_24FE58418(*(v27 + 48));
    v78 = v39;
    v40 = sub_24FEDD9F4();
    v42 = v41;
    v44 = v43;
    sub_24FEDD7C4();
    v34 = sub_24FEDD994();
    v36 = v45;
    v38 = v46;

    sub_24FE56B94(v40, v42, v44 & 1);
  }

  v47 = [objc_opt_self() systemGrayColor];
  sub_24FEDDC94();
  v48 = sub_24FEDD964();
  v50 = v49;
  LODWORD(v68) = v51;
  v69 = v52;

  sub_24FE56B94(v34, v36, v38 & 1);

  v54 = v70;
  v53 = v71;
  v55 = *(v71 + 16);
  v56 = v72;
  v55(v70, v75, v72);
  v57 = v76;
  v58 = v73;
  sub_24FE58B14(v76, v73, &qword_27F3A4CA0, &qword_24FEE0C68);
  v59 = v74;
  v55(v74, v54, v56);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4CD8, &qword_24FEE0CB8);
  sub_24FE58B14(v58, &v59[*(v60 + 48)], &qword_27F3A4CA0, &qword_24FEE0C68);
  v61 = &v59[*(v60 + 64)];
  *v61 = v48;
  *(v61 + 1) = v50;
  v62 = v68;
  LOBYTE(v60) = v68 & 1;
  v61[16] = v68 & 1;
  *(v61 + 3) = v69;
  sub_24FE629DC(v48, v50, v62 & 1);

  sub_24FE58B7C(v57, &qword_27F3A4CA0, &qword_24FEE0C68);
  v63 = *(v53 + 8);
  v63(v75, v56);
  sub_24FE56B94(v48, v50, v60);

  sub_24FE58B7C(v58, &qword_27F3A4CA0, &qword_24FEE0C68);
  return (v63)(v54, v56);
}

__n128 sub_24FE5E260@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4D30, &qword_24FEE0D18);
  sub_24FEDDE44();
  result = v7;
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_24FE5E2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24FEDD414();
  v16 = 0;
  sub_24FE5E598(a1, &v29);
  v23 = v35;
  v24 = v36;
  v25 = v37;
  v19 = v31;
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v17 = v29;
  v18 = v30;
  v27[6] = v35;
  v27[7] = v36;
  v27[8] = v37;
  v27[2] = v31;
  v27[3] = v32;
  v27[4] = v33;
  v27[5] = v34;
  v26 = v38;
  v28 = v38;
  v27[0] = v29;
  v27[1] = v30;
  sub_24FE58B14(&v17, &v12, &qword_27F3A4D28, &qword_24FEE0CE0);
  sub_24FE58B7C(v27, &qword_27F3A4D28, &qword_24FEE0CE0);
  *&v15[103] = v23;
  *&v15[119] = v24;
  *&v15[135] = v25;
  *&v15[39] = v19;
  *&v15[55] = v20;
  *&v15[71] = v21;
  *&v15[87] = v22;
  *&v15[7] = v17;
  *&v15[151] = v26;
  *&v15[23] = v18;
  v5 = v16;
  v6 = sub_24FEDD7C4();
  KeyPath = swift_getKeyPath();
  *&v13[97] = *&v15[96];
  *&v13[113] = *&v15[112];
  *&v13[129] = *&v15[128];
  *&v13[144] = *&v15[143];
  *&v13[33] = *&v15[32];
  *&v13[49] = *&v15[48];
  *&v13[65] = *&v15[64];
  *&v13[81] = *&v15[80];
  *&v13[1] = *v15;
  *&v12 = v4;
  *(&v12 + 1) = 0x4022000000000000;
  v13[0] = v5;
  *&v13[17] = *&v15[16];
  *&v14 = KeyPath;
  *(&v14 + 1) = v6;
  sub_24FEDD814();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4CF0, &qword_24FEE0CC8);
  sub_24FE62AF0();
  sub_24FEDDAA4();
  v37 = *&v13[112];
  v38 = *&v13[128];
  v39 = *&v13[144];
  v40 = v14;
  v33 = *&v13[48];
  v34 = *&v13[64];
  v35 = *&v13[80];
  v36 = *&v13[96];
  v29 = v12;
  v30 = *v13;
  v31 = *&v13[16];
  v32 = *&v13[32];
  sub_24FE58B7C(&v29, &qword_27F3A4CF0, &qword_24FEE0CC8);
  v8 = sub_24FEDDC14();
  v9 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4CE0, &qword_24FEE0CC0);
  v11 = (a2 + *(result + 36));
  *v11 = v9;
  v11[1] = v8;
  return result;
}

uint64_t sub_24FE5E598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24FEDDCD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = *(a1 + 40);
  v92 = *(a1 + 24);
  v93 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4D30, &qword_24FEE0D18);
  MEMORY[0x25305A020](&v84, v11);
  if ((v84 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v84 >= *(v9 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v69 = v8;
  v70 = v6;
  v71 = v5;
  v12 = v9 + 40 * v84;
  v13 = *(v12 + 32);
  v15 = *(v12 + 40);
  v14 = *(v12 + 48);
  v16 = *(v12 + 56);
  sub_24FE62C80(v15, v14);
  v68 = v16;

  if ((v13 & 1) == 0)
  {
    v75 = sub_24FEDD4B4();
    if (qword_27F3A4678 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v75 = sub_24FEDD4B4();
  if (qword_27F3A4678 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_7:
  v17 = qword_27F3B30E0;
  v18 = sub_24FEDD9D4();
  v74 = v19;
  v75 = v18;
  v73 = v20;
  v72 = v21;
  v2 = &v77;
  sub_24FE62CE8(v15, v14);

  sub_24FEDD4B4();
  if (qword_27F3A4678 != -1)
  {
LABEL_11:
    swift_once();
  }

  v22 = qword_27F3B30E0;
  v23 = sub_24FEDD9D4();
  v66 = v24;
  v67 = v23;
  v65 = v25;
  v68 = v26;
  v64 = sub_24FEDDF34();
  v28 = v27;
  sub_24FEDDCB4();
  v29 = v69;
  v30 = v70;
  v31 = v71;
  (*(v70 + 104))(v69, *MEMORY[0x277CE0FE0], v71);
  v32 = sub_24FEDDD04();

  (*(v30 + 8))(v29, v31);
  v33 = sub_24FEDD7A4();
  sub_24FEDD014();
  v2[15] = v32;
  v2[16] = 0x3FE999999999999ALL;
  *(v2 + 68) = 256;
  *(v2 + 138) = *(v2 + 98);
  *(v2 + 71) = *(v2 + 51);
  v79[24] = v33;
  *(v2 + 37) = *(v2 + 94);
  v34 = v78;
  *(v2 + 145) = v78;
  v2[19] = v35;
  v2[20] = v36;
  v2[21] = v37;
  v2[22] = v38;
  v79[64] = 0;
  *(v2 + 47) = *(&v84 + 3);
  *(v2 + 185) = v84;
  v39 = v64;
  v2[24] = v64;
  v2[25] = v28;
  v76[0] = v65 & 1;
  v40 = *(v2 + 21);
  *(v2 + 2) = *(v2 + 19);
  *(v2 + 3) = v40;
  *(v2 + 4) = *(v2 + 23);
  v2[10] = v28;
  v41 = *(v2 + 17);
  *v2 = *(v2 + 15);
  *(v2 + 1) = v41;
  v2[26] = v32;
  v2[27] = 0x3FE999999999999ALL;
  *(v2 + 112) = 256;
  v42 = *(v2 + 98);
  *(v2 + 115) = *(v2 + 51);
  *(v2 + 226) = v42;
  v80[24] = v33;
  *(v2 + 59) = *(v2 + 94);
  *(v2 + 233) = v34;
  v2[30] = v35;
  v2[31] = v36;
  v2[32] = v37;
  v2[33] = v38;
  v80[64] = 0;
  v43 = v84;
  *(v2 + 69) = *(&v84 + 3);
  v81 = v43;
  v82 = v39;
  v83 = v28;
  sub_24FE58B14(v79, &v92, &qword_27F3A4D38, &qword_24FEE0D20);
  sub_24FE58B7C(v80, &qword_27F3A4D38, &qword_24FEE0D20);
  v44 = v76[0];
  v46 = v66;
  v45 = v67;
  *&v84 = v67;
  *(&v84 + 1) = v66;
  LOBYTE(v85) = v76[0];
  *(&v85 + 1) = *(v2 + 113);
  DWORD1(v85) = *(v2 + 29);
  v47 = v68;
  *(&v85 + 1) = v68;
  v48 = *(v2 + 1);
  v88 = *(v2 + 2);
  v49 = *(v2 + 2);
  v89 = *(v2 + 3);
  v50 = *(v2 + 3);
  v90 = *(v2 + 4);
  v51 = *(v2 + 1);
  v86 = *v2;
  v52 = *v2;
  v87 = v51;
  v53 = v85;
  *(a2 + 32) = v84;
  *(a2 + 48) = v53;
  v54 = v86;
  v55 = v90;
  v56 = v88;
  *(a2 + 112) = v89;
  *(a2 + 128) = v55;
  v57 = v87;
  *(a2 + 64) = v54;
  *(a2 + 80) = v57;
  *(a2 + 96) = v56;
  v97 = v49;
  v98 = v50;
  v99 = *(v2 + 4);
  LOBYTE(v29) = v72 & 1;
  v76[120] = v72 & 1;
  *(a2 + 16) = v72 & 1;
  v58 = v2[10];
  v60 = v74;
  v59 = v75;
  v61 = v73;
  *a2 = v75;
  *(a2 + 8) = v61;
  *(a2 + 24) = v60;
  v91 = v58;
  *&v92 = v45;
  *(a2 + 144) = v58;
  *(&v92 + 1) = v46;
  LOBYTE(v93) = v44;
  *(&v93 + 1) = *(v2 + 113);
  HIDWORD(v93) = *(v2 + 29);
  v94 = v47;
  v100 = v2[10];
  v95 = v52;
  v96 = v48;
  sub_24FE629DC(v59, v61, v29);

  sub_24FE58B14(&v84, v76, &qword_27F3A4D40, &qword_24FEE0D28);
  sub_24FE58B7C(&v92, &qword_27F3A4D40, &qword_24FEE0D28);
  sub_24FE56B94(v59, v61, v29);
}

uint64_t sub_24FE5EBE0@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_24FEDD514();
  *(a2 + 8) = 0x4008000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4C90, &qword_24FEE0C58);
  return sub_24FE5DBA0(v2, (a2 + *(v4 + 44)));
}

uint64_t sub_24FE5EC34@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5010, &qword_24FEE0F60);
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5018, &qword_24FEE0F68);
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v9 = *(v1 + 3);
  v8 = *(v1 + 4);
  v10 = *(v1 + 5);
  *&v29 = v9;
  *(&v29 + 1) = v8;
  v22 = v10;
  v23 = v8;
  v30 = v10;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4D30, &qword_24FEE0D18);
  sub_24FEDDE44();
  sub_24FEDD4B4();
  if (qword_27F3A4678 != -1)
  {
    swift_once();
  }

  v11 = qword_27F3B30E0;
  *&v29 = sub_24FEDD9D4();
  *(&v29 + 1) = v12;
  LOBYTE(v30) = v13 & 1;
  v31 = v14;
  MEMORY[0x28223BE20](v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5020, &qword_24FEE0F70);
  sub_24FE636C8();
  sub_24FEDDDB4();
  v15 = sub_24FE58928(&qword_27F3A5030, &qword_27F3A5010, &qword_24FEE0F60, MEMORY[0x277CDF038]);
  v16 = v24;
  sub_24FEDDB04();
  (*(v2 + 8))(v4, v16);
  *&v29 = v9;
  *(&v29 + 1) = v23;
  v30 = v22;
  MEMORY[0x25305A020](&v28, v21);
  v29 = *v1;
  v33 = *(v1 + 2);
  v34 = v9;
  v17 = swift_allocObject();
  v18 = v1[1];
  v17[1] = *v1;
  v17[2] = v18;
  v17[3] = v1[2];
  sub_24FE58B14(&v29, v32, &qword_27F3A5038, &qword_24FEE0F78);
  sub_24FE58B14(&v33, v32, &qword_27F3A5040, &unk_24FEE0F80);
  sub_24FE63750(&v34, v32);

  v32[0] = v16;
  v32[1] = v15;
  swift_getOpaqueTypeConformance2();
  v19 = v26;
  sub_24FEDDBC4();

  return (*(v25 + 8))(v7, v19);
}

uint64_t sub_24FE5F0A0(__int128 *a1)
{
  v11 = *(a1 + 2);
  v2 = *(v11 + 16);
  v7 = 0;
  v8 = v2;
  swift_getKeyPath();
  v10 = *a1;
  v9 = *(a1 + 3);
  v3 = swift_allocObject();
  v4 = a1[1];
  v3[1] = *a1;
  v3[2] = v4;
  v3[3] = a1[2];
  sub_24FE58B14(&v10, v6, &qword_27F3A5038, &qword_24FEE0F78);
  sub_24FE58B14(&v11, v6, &qword_27F3A5040, &unk_24FEE0F80);
  sub_24FE63750(&v9, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5048, &qword_24FEE0FA8);
  sub_24FE63804();
  return sub_24FEDDE94();
}

uint64_t sub_24FE5F1E8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a2 + 16);
  if (v6 >= *(v7 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7 + 40 * v6;
  v9 = *(v8 + 32);
  v3 = *(v8 + 40);
  v4 = *(v8 + 48);
  sub_24FE62C80(v3, v4);

  if (v9)
  {
    sub_24FEDD4B4();
    if (qword_27F3A4678 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  sub_24FEDD4B4();
  if (qword_27F3A4678 != -1)
  {
LABEL_10:
    swift_once();
  }

LABEL_7:
  v10 = qword_27F3B30E0;
  v11 = sub_24FEDD9D4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_24FE62CE8(v3, v4);

  *a3 = v11;
  *(a3 + 8) = v13;
  *(a3 + 16) = v15 & 1;
  *(a3 + 24) = v17;
  return result;
}

uint64_t sub_24FE5F3D8(uint64_t result)
{
  if (*(result + 8))
  {
    v3 = *(result + 24);
    v4 = *(result + 40);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4D30, &qword_24FEE0D18);
    MEMORY[0x25305A020](&v2, v1);
    return sub_24FEDCF04();
  }

  return result;
}

uint64_t sub_24FE5F494(uint64_t a1)
{
  v2 = sub_24FEDE0B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RemoveAttachmentButton(0);
  sub_24FEDE044();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4C80, &qword_24FEE0C48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FEE0740;
  v11[1] = 0x7972657571;
  v11[2] = 0xE500000000000000;
  v7 = MEMORY[0x277D837D0];
  sub_24FEDE5C4();
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  *(inited + 96) = v7;
  *(inited + 72) = v9;
  *(inited + 80) = v8;

  sub_24FE71840(inited);
  swift_setDeallocating();
  sub_24FE58B7C(inited + 32, &qword_27F3A4C88, &qword_24FEE0C50);
  sub_24FEDE0A4();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24FE5F644@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24FEDDCD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FEDDCB4();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_24FEDDD04();

  (*(v3 + 8))(v5, v2);
  LOBYTE(v2) = sub_24FEDD744();
  sub_24FEDD014();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  LOBYTE(v57) = 1;
  LOBYTE(v51) = 0;
  LODWORD(v5) = sub_24FEDD664();
  v15 = sub_24FEDD7C4();
  KeyPath = swift_getKeyPath();
  v57 = v6;
  LOWORD(v58) = 257;
  BYTE8(v58) = v2;
  *&v59 = v8;
  *(&v59 + 1) = v10;
  *&v60 = v12;
  *(&v60 + 1) = v14;
  LOBYTE(v61) = 0;
  DWORD1(v61) = v5;
  *(&v61 + 1) = KeyPath;
  v62 = v15;
  sub_24FEDD804();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4C10, &qword_24FEE0C18);
  sub_24FE62618();
  v39 = a1;
  sub_24FEDDAA4();
  v47[2] = v59;
  v47[3] = v60;
  v47[4] = v61;
  v48 = v62;
  v47[0] = v57;
  v47[1] = v58;
  sub_24FE58B7C(v47, &qword_27F3A4C10, &qword_24FEE0C18);
  sub_24FEDDF34();
  sub_24FEDD0F4();
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4C08, &qword_24FEE0C10) + 36));
  v18 = v40[7];
  *v17 = v40[6];
  v17[1] = v18;
  v17[2] = v40[8];
  v19 = sub_24FEDDC44();
  LODWORD(v5) = sub_24FEDD654();
  v38 = v5;
  sub_24FEDD084();
  v20 = v41;
  v21 = v42;
  LODWORD(v3) = v43;
  v22 = v44;
  v23 = v45;
  v24 = v46;
  v25 = sub_24FEDDF34();
  v27 = v26;
  v28 = sub_24FEDDF34();
  v30 = v29;
  *&v51 = v20;
  *(&v51 + 1) = __PAIR64__(v3, v21);
  *&v52 = v22;
  *(&v52 + 1) = v23;
  *&v53 = v24;
  DWORD2(v53) = v5;
  WORD6(v53) = 256;
  *&v54 = v19;
  WORD4(v54) = 256;
  *(&v54 + 10) = v49;
  HIWORD(v54) = v50;
  *&v55 = v25;
  *(&v55 + 1) = v27;
  *&v56 = v28;
  *(&v56 + 1) = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4BF0, &qword_24FEE0C08);
  v32 = (v39 + *(v31 + 36));
  v33 = v54;
  v32[2] = v53;
  v32[3] = v33;
  v34 = v56;
  v32[4] = v55;
  v32[5] = v34;
  v35 = v52;
  *v32 = v51;
  v32[1] = v35;
  *&v57 = v20;
  *(&v57 + 1) = __PAIR64__(v3, v21);
  *&v58 = v22;
  *(&v58 + 1) = v23;
  *&v59 = v24;
  DWORD2(v59) = v38;
  WORD6(v59) = 256;
  *&v60 = v19;
  WORD4(v60) = 256;
  HIWORD(v60) = v50;
  *(&v60 + 10) = v49;
  *&v61 = v25;
  *(&v61 + 1) = v27;
  v62 = v28;
  v63 = v30;
  sub_24FE58B14(&v51, v40, &qword_27F3A4C68, &qword_24FEE0C40);
  return sub_24FE58B7C(&v57, &qword_27F3A4C68, &qword_24FEE0C40);
}

uint64_t sub_24FE5FA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v4 = sub_24FEDD614();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4BE8, &qword_24FEE0C00);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - v13;
  sub_24FE6229C(v2, v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RemoveAttachmentButton);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_24FE62404(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for RemoveAttachmentButton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4BF0, &qword_24FEE0C08);
  sub_24FE62498();
  sub_24FEDDD84();
  sub_24FEDD604();
  sub_24FE58928(&qword_27F3A4C70, &qword_27F3A4BE8, &qword_24FEE0C00, MEMORY[0x277CDF028]);
  sub_24FE62254(&qword_27F3A4C78, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  sub_24FEDDAB4();
  (*(v5 + 8))(v7, v4);
  return (*(v12 + 8))(v14, v11);
}

id sub_24FE5FD68()
{
  v0 = sub_24FEDCF74();
  MEMORY[0x28223BE20](v0);
  v1 = [objc_allocWithZone(MEMORY[0x277CDAA58]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4BD0, &qword_24FEE0BF8);
  sub_24FEDD704();
  [v1 setDataSource_];

  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  [v1 setBackgroundColor_];

  v4 = [v2 clearColor];
  [v1 setFullscreenBackgroundColor_];

  v5 = v1;
  sub_24FEDE4E4();
  sub_24FEDCF64();
  sub_24FEDE4F4();

  return v5;
}

id sub_24FE5FEF4(void *a1)
{
  v2 = v1;
  v12 = a1;
  v3 = sub_24FEDC9E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4BD0, &qword_24FEE0BF8);
  sub_24FEDD704();
  v7 = v13;
  v8 = OBJC_IVAR____TtCV21GenerativeAssistantUIP33_E13B720E09BAE9A3AC6F33E81C90395E16QuickLookPreview11Coordinator_fileURL;
  swift_beginAccess();
  v9 = *(v4 + 16);
  v9(v6, v7 + v8, v3);

  sub_24FE62254(&qword_27F3A4BD8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  LOBYTE(v7) = sub_24FEDE194();
  result = (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    sub_24FEDD704();
    v9(v6, v2, v3);
    sub_24FE600E0(v6);

    return [v12 reloadData];
  }

  return result;
}

uint64_t sub_24FE600E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24FEDC9E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtCV21GenerativeAssistantUIP33_E13B720E09BAE9A3AC6F33E81C90395E16QuickLookPreview11Coordinator_fileURL;
  swift_beginAccess();
  v12 = v5[2];
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  v13 = v5[3];
  v19 = a1;
  v13(v2 + v11, a1, v4);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCV21GenerativeAssistantUIP33_E13B720E09BAE9A3AC6F33E81C90395E16QuickLookPreview11Coordinator_isAccessing;
  if (*(v2 + OBJC_IVAR____TtCV21GenerativeAssistantUIP33_E13B720E09BAE9A3AC6F33E81C90395E16QuickLookPreview11Coordinator_isAccessing) == 1)
  {
    sub_24FEDC9A4();
  }

  v12(v7, v2 + v11, v4);
  v15 = sub_24FEDC9C4();
  v16 = v5[1];
  v16(v19, v4);
  v16(v7, v4);
  result = (v16)(v10, v4);
  *(v2 + v14) = v15 & 1;
  return result;
}

uint64_t sub_24FE602C8()
{
  v1 = v0;
  v2 = sub_24FEDC9E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtCV21GenerativeAssistantUIP33_E13B720E09BAE9A3AC6F33E81C90395E16QuickLookPreview11Coordinator_isAccessing))
  {
    v6 = OBJC_IVAR____TtCV21GenerativeAssistantUIP33_E13B720E09BAE9A3AC6F33E81C90395E16QuickLookPreview11Coordinator_fileURL;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v6, v2);
    sub_24FEDC9A4();
    v7 = *(v3 + 8);
    v7(v5, v2);
  }

  else
  {
    v7 = *(v3 + 8);
  }

  v7((v1 + OBJC_IVAR____TtCV21GenerativeAssistantUIP33_E13B720E09BAE9A3AC6F33E81C90395E16QuickLookPreview11Coordinator_fileURL), v2);
  return swift_deallocClassInstance();
}

uint64_t sub_24FE6057C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_24FEDC9E4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 16);
  v8(v7, v1, v3, v5);
  type metadata accessor for QuickLookPreview.Coordinator(0);
  v9 = swift_allocObject();
  (v8)(v9 + OBJC_IVAR____TtCV21GenerativeAssistantUIP33_E13B720E09BAE9A3AC6F33E81C90395E16QuickLookPreview11Coordinator_fileURL, v7, v3);
  v10 = sub_24FEDC9C4();
  result = (*(v4 + 8))(v7, v3);
  *(v9 + OBJC_IVAR____TtCV21GenerativeAssistantUIP33_E13B720E09BAE9A3AC6F33E81C90395E16QuickLookPreview11Coordinator_isAccessing) = v10 & 1;
  *a1 = v9;
  return result;
}

uint64_t sub_24FE606FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FE62254(&qword_27F3A4BE0, type metadata accessor for QuickLookPreview, &unk_24FEE0B80);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24FE60790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FE62254(&qword_27F3A4BE0, type metadata accessor for QuickLookPreview, &unk_24FEE0B80);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24FE60824(uint64_t a1)
{
  sub_24FE62254(&qword_27F3A4BE0, type metadata accessor for QuickLookPreview, &unk_24FEE0B80);
  sub_24FEDD6E4();
  __break(1u);
}

uint64_t sub_24FE6087C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24FEDD354();
  *a1 = result;
  return result;
}

uint64_t sub_24FE608D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24FEDD374();
  *a1 = result;
  return result;
}

uint64_t sub_24FE60900@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24FEDD374();
  *a1 = result;
  return result;
}

unint64_t sub_24FE60984()
{
  result = qword_27F3A4A08;
  if (!qword_27F3A4A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A49E0, &qword_24FEE0860);
    sub_24FE60A3C();
    sub_24FE58928(&qword_27F3A4A18, &qword_27F3A4A20, &unk_24FEE08B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4A08);
  }

  return result;
}

unint64_t sub_24FE60A3C()
{
  result = qword_27F3A4A10;
  if (!qword_27F3A4A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4A00, &qword_24FEE0878);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A49D8, &qword_24FEE0858);
    sub_24FE58928(&qword_27F3A49F8, &qword_27F3A49D8, &qword_24FEE0858, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4A10);
  }

  return result;
}

uint64_t sub_24FE60B7C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_24FEDCEB4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4A38, &unk_24FEE1340);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24FE60D14(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_24FEDCEB4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4A38, &unk_24FEE1340);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

void sub_24FE60E98(uint64_t a1)
{
  sub_24FE61BF4(319, &qword_27F3A4A60, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24FEDCEB4();
    if (v2 <= 0x3F)
    {
      sub_24FE61090(319, &qword_27F3A4A68, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        sub_24FE61090(319, &qword_27F3A4A70, MEMORY[0x277CC9260]);
        if (v4 <= 0x3F)
        {
          sub_24FE61BF4(319, &qword_27F3A4A78, &type metadata for Attachment, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            sub_24FE61BF4(319, &qword_27F3A4A80, MEMORY[0x277D83B88], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_24FE61BF4(319, &qword_27F3A4A88, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_24FE610E4(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_24FE61090(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24FEDE554();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24FE610E4(uint64_t a1)
{
  if (!qword_27F3A4A90)
  {
    sub_24FEDE134();
    sub_24FE62254(&qword_27F3A4A30, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    v1 = sub_24FEDD2D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F3A4A90);
    }
  }
}

uint64_t sub_24FE611A0(uint64_t a1)
{
  result = sub_24FEDC9E4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24FE61238()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A49E0, &qword_24FEE0860);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A49D0, &qword_24FEE0850);
  sub_24FE60984();
  sub_24FE58928(&qword_27F3A4A28, &qword_27F3A49D0, &qword_24FEE0850, MEMORY[0x277D83660]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24FE61310(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FEDC9E4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24FE61390(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FEDC9E4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24FE61420(uint64_t a1)
{
  result = sub_24FEDC9E4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24FE614A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24FEDE064();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24FE61560(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24FEDE064();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24FE61624(uint64_t a1)
{
  sub_24FE61BF4(319, &unk_27F3A4B50, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_24FEDE064();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24FE616F0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_24FEDCEB4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4A38, &unk_24FEE1340);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24FE61888(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = sub_24FEDCEB4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4A38, &unk_24FEE1340);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

void sub_24FE61A2C(uint64_t a1)
{
  sub_24FE61BF4(319, &qword_27F3A4A60, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24FE61BF4(319, &qword_27F3A4A78, &type metadata for Attachment, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_24FE61BF4(319, &qword_27F3A4B70, MEMORY[0x277D83B88], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_24FE61BF4(319, &unk_27F3A4B78, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24FEDCEB4();
          if (v5 <= 0x3F)
          {
            sub_24FE61090(319, &qword_27F3A4A68, MEMORY[0x277CC9578]);
            if (v6 <= 0x3F)
            {
              sub_24FE61090(319, &qword_27F3A4A70, MEMORY[0x277CC9260]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_24FE61BF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_24FE61C58(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_24FE61D28(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24FE61DF4(uint64_t a1)
{
  sub_24FE61BF4(319, &unk_27F3A4B78, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24FE61090(319, &qword_27F3A4A70, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24FE61EDC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_24FEDCEB4();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_24FE61FA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_24FEDCEB4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24FE6206C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24FE620A4(uint64_t a1)
{
  sub_24FE62128(319);
  if (v1 <= 0x3F)
  {
    sub_24FEDCEB4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24FE62128(uint64_t a1)
{
  if (!qword_27F3A4BB0)
  {
    sub_24FE62F4C(255, &unk_27F3A4BB8, 0x277D755B8);
    v1 = sub_24FEDE554();
    if (!v2)
    {
      atomic_store(v1, &qword_27F3A4BB0);
    }
  }
}

uint64_t sub_24FE62254(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FE6229C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FE62304()
{
  v1 = (type metadata accessor for RemoveAttachmentButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = sub_24FEDE064();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24FE62404(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24FE62498()
{
  result = qword_27F3A4BF8;
  if (!qword_27F3A4BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4BF0, &qword_24FEE0C08);
    sub_24FE62550();
    sub_24FE58928(&qword_27F3A4C60, &qword_27F3A4C68, &qword_24FEE0C40, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4BF8);
  }

  return result;
}

unint64_t sub_24FE62550()
{
  result = qword_27F3A4C00;
  if (!qword_27F3A4C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4C08, &qword_24FEE0C10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4C10, &qword_24FEE0C18);
    sub_24FE62618();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4C00);
  }

  return result;
}

unint64_t sub_24FE62618()
{
  result = qword_27F3A4C18;
  if (!qword_27F3A4C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4C10, &qword_24FEE0C18);
    sub_24FE626D0();
    sub_24FE58928(&qword_27F3A4A18, &qword_27F3A4A20, &unk_24FEE08B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4C18);
  }

  return result;
}

unint64_t sub_24FE626D0()
{
  result = qword_27F3A4C20;
  if (!qword_27F3A4C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4C28, &qword_24FEE0C20);
    sub_24FE62E28(&qword_27F3A4C30, &qword_27F3A4C38, &qword_24FEE0C28);
    sub_24FE58928(&qword_27F3A4C50, &qword_27F3A4C58, &qword_24FEE0C38, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4C20);
  }

  return result;
}

uint64_t sub_24FE627A8()
{
  type metadata accessor for AttachmentConfirmationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4E28, &unk_24FEE0DA8);
  sub_24FEDDD44();
  if (v4 == 1)
  {
    sub_24FEDDD44();
    sub_24FEDDD44();
    v1 = 16;
    if (!v4)
    {
      v1 = 0;
    }

    v2 = v0 + v1;
  }

  else
  {
    v2 = v0 + 32;
  }

  return *v2;
}

uint64_t sub_24FE628C0@<X0>(uint64_t a1@<X8>)
{
  result = sub_24FEDD3B4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_24FE62924()
{
  result = qword_27F3A4CC0;
  if (!qword_27F3A4CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4CB8, &qword_24FEE0CA8);
    sub_24FE58928(&qword_27F3A4CC8, &qword_27F3A4CD0, &qword_24FEE0CB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4CC0);
  }

  return result;
}

uint64_t sub_24FE629DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_24FE629FC()
{
  result = qword_27F3A4CE8;
  if (!qword_27F3A4CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4CE0, &qword_24FEE0CC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4CF0, &qword_24FEE0CC8);
    sub_24FE62AF0();
    swift_getOpaqueTypeConformance2();
    sub_24FE58928(&unk_27F3A4D10, &qword_27F3A49A0, &qword_24FEE07D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4CE8);
  }

  return result;
}

unint64_t sub_24FE62AF0()
{
  result = qword_27F3A4CF8;
  if (!qword_27F3A4CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4CF0, &qword_24FEE0CC8);
    sub_24FE58928(&qword_27F3A4D00, &qword_27F3A4D08, &unk_24FEE0CD0, MEMORY[0x277CE1138]);
    sub_24FE58928(&qword_27F3A4A18, &qword_27F3A4A20, &unk_24FEE08B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4CF8);
  }

  return result;
}

unint64_t sub_24FE62BD4()
{
  result = qword_27F3A4D20;
  if (!qword_27F3A4D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4D20);
  }

  return result;
}

uint64_t sub_24FE62C28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24FEDD354();
  *a1 = result;
  return result;
}

uint64_t sub_24FE62C80(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24FE62C94(result, a2);
  }

  return result;
}

uint64_t sub_24FE62C94(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24FE62CE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24FE62CFC(a1, a2);
  }

  return a1;
}

uint64_t sub_24FE62CFC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_24FE62D50()
{
  result = qword_27F3A4D60;
  if (!qword_27F3A4D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4D58, &unk_24FEE0D40);
    sub_24FE62E28(&qword_27F3A4978, &unk_27F3A4D70, &qword_24FEE07C0);
    sub_24FE58928(&unk_27F3A49B0, &qword_27F3A4D80, &unk_24FEE0D50, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4D60);
  }

  return result;
}

uint64_t sub_24FE62E28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_24FE585F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24FE62EA0()
{
  result = qword_27F3A4D88;
  if (!qword_27F3A4D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4D48, &qword_24FEE0D30);
    sub_24FE58970();
    sub_24FE58A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4D88);
  }

  return result;
}

uint64_t sub_24FE62F4C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_24FE62F94()
{
  MEMORY[0x25305B3B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24FE62FEC()
{
  result = qword_27F3A4F28;
  if (!qword_27F3A4F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4F20, &qword_24FEE0E28);
    sub_24FE630A4();
    sub_24FE58928(&unk_27F3A4D10, &qword_27F3A49A0, &qword_24FEE07D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4F28);
  }

  return result;
}

unint64_t sub_24FE630A4()
{
  result = qword_27F3A4F30;
  if (!qword_27F3A4F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4F38, &qword_24FEE0E30);
    sub_24FE62924();
    sub_24FE58928(&qword_27F3A4A18, &qword_27F3A4A20, &unk_24FEE08B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4F30);
  }

  return result;
}

uint64_t sub_24FE6315C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24FE63220(uint64_t a1)
{
  v2 = type metadata accessor for ThumbnailView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24FE6327C()
{
  result = qword_27F3A4FB8;
  if (!qword_27F3A4FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4F78, &qword_24FEE0E68);
    sub_24FE62254(&qword_27F3A4FC0, type metadata accessor for FileDetailsView, &unk_24FEE0A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4FB8);
  }

  return result;
}

unint64_t sub_24FE63338()
{
  result = qword_27F3A4FC8;
  if (!qword_27F3A4FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4F90, &qword_24FEE0E80);
    sub_24FE62254(&qword_27F3A4FD0, type metadata accessor for ImageDetailsView, "y\n32Ġ");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4FC8);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_24FE63408(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24FE63450(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24FE634AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4BE8, &qword_24FEE0C00);
  sub_24FEDD614();
  sub_24FE58928(&qword_27F3A4C70, &qword_27F3A4BE8, &qword_24FEE0C00, MEMORY[0x277CDF028]);
  sub_24FE62254(&qword_27F3A4C78, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24FE63618()
{
  result = qword_27F3A5000;
  if (!qword_27F3A5000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5008, &qword_24FEE0F08);
    sub_24FE62D50();
    sub_24FE62EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5000);
  }

  return result;
}

unint64_t sub_24FE636C8()
{
  result = qword_27F3A5028;
  if (!qword_27F3A5028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5020, &qword_24FEE0F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5028);
  }

  return result;
}

uint64_t objectdestroy_93Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_24FE63804()
{
  result = qword_27F3A5050;
  if (!qword_27F3A5050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5048, &qword_24FEE0FA8);
    sub_24FE63890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5050);
  }

  return result;
}

unint64_t sub_24FE63890()
{
  result = qword_27F3A5058;
  if (!qword_27F3A5058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5058);
  }

  return result;
}

uint64_t sub_24FE638E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5018, &qword_24FEE0F68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5010, &qword_24FEE0F60);
  sub_24FE58928(&qword_27F3A5030, &qword_27F3A5010, &qword_24FEE0F60, MEMORY[0x277CDF038]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void __swiftcall GenerativeRateLimitedSnippetModel.init(message:query:modelDisclaimer:)(GenerativeAssistantUI::GenerativeRateLimitedSnippetModel *__return_ptr retstr, Swift::String message, Swift::String query, GenerativeAssistantUI::ModelDisclaimer_optional *modelDisclaimer)
{
  retstr->message = message;
  retstr->query = query;
  displayUrl = modelDisclaimer->value.displayUrl;
  retstr->modelDisclaimer.value.message = modelDisclaimer->value.message;
  retstr->modelDisclaimer.value.displayUrl = displayUrl;
  retstr->modelDisclaimer.value.url = modelDisclaimer->value.url;
}

uint64_t sub_24FE63A00()
{
  v1 = 0x7972657571;
  if (*v0 != 1)
  {
    v1 = 0x7369446C65646F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567617373656DLL;
  }
}

uint64_t sub_24FE63A64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24FE645D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24FE63A98(uint64_t a1)
{
  v2 = sub_24FE63D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE63AD4(uint64_t a1)
{
  v2 = sub_24FE63D50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenerativeRateLimitedSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A50C0, &qword_24FEE0FC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = v1[2];
  v24 = v1[3];
  v25 = v7;
  v8 = v1[4];
  v22 = v1[5];
  v23 = v8;
  v9 = v1[6];
  v20 = v1[7];
  v21 = v9;
  v10 = v1[8];
  v18 = v1[9];
  v19 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE63D50();
  sub_24FEDE944();
  LOBYTE(v27) = 0;
  v11 = v26;
  sub_24FEDE7E4();
  if (!v11)
  {
    v14 = v20;
    v13 = v21;
    v16 = v22;
    v15 = v23;
    LOBYTE(v27) = 1;
    sub_24FEDE7E4();
    v27 = v15;
    v28 = v16;
    v29 = v13;
    v30 = v14;
    v31 = v19;
    v32 = v18;
    v33 = 2;
    sub_24FE63DA4(v15, v16, v13, v14, v19, v18);
    sub_24FE63DF4();
    sub_24FEDE7D4();
    sub_24FE63E48(v27, v28, v29, v30, v31, v32);
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24FE63D50()
{
  result = qword_27F3A50C8;
  if (!qword_27F3A50C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A50C8);
  }

  return result;
}

void sub_24FE63DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

unint64_t sub_24FE63DF4()
{
  result = qword_27F3A50D0;
  if (!qword_27F3A50D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A50D0);
  }

  return result;
}

void sub_24FE63E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t GenerativeRateLimitedSnippetModel.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A50D8, &qword_24FEE0FC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE63D50();
  sub_24FEDE934();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v33[0]) = 0;
  v9 = sub_24FEDE754();
  v11 = v10;
  v31 = a2;
  v12 = v9;
  LOBYTE(v33[0]) = 1;
  v13 = sub_24FEDE754();
  *(&v30 + 1) = v14;
  *&v30 = v13;
  v37 = 2;
  sub_24FE641D8();
  sub_24FEDE744();
  (*(v6 + 8))(v8, v5);
  v29 = v34;
  v15 = v35;
  v28 = *(&v34 + 1);
  v16 = *(&v35 + 1);
  v27 = *(&v36 + 1);
  v17 = v36;
  *&v32[0] = v12;
  *(&v32[0] + 1) = v11;
  v18 = v30;
  v32[1] = v30;
  v19 = *(&v30 + 1);
  v32[2] = v34;
  v32[3] = v35;
  v32[4] = v36;
  v20 = v32[0];
  v21 = v30;
  v22 = v36;
  v23 = v31;
  v24 = v34;
  v31[3] = v35;
  v23[4] = v22;
  v23[1] = v21;
  v23[2] = v24;
  *v23 = v20;
  sub_24FE6422C(v32, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33[0] = v12;
  v33[1] = v11;
  v33[2] = v18;
  v33[3] = v19;
  v33[4] = v29;
  v33[5] = v28;
  v33[6] = v15;
  v33[7] = v16;
  v33[8] = v17;
  v33[9] = v27;
  return sub_24FE54294(v33);
}

unint64_t sub_24FE641D8()
{
  result = qword_27F3A50E0;
  if (!qword_27F3A50E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A50E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21GenerativeAssistantUI15ModelDisclaimerVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_24FE642D0(uint64_t a1, int a2)
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

uint64_t sub_24FE64318(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for GenerativeRateLimitedSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GenerativeRateLimitedSnippetModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24FE644D0()
{
  result = qword_27F3A50E8;
  if (!qword_27F3A50E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A50E8);
  }

  return result;
}

unint64_t sub_24FE64528()
{
  result = qword_27F3A50F0;
  if (!qword_27F3A50F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A50F0);
  }

  return result;
}

unint64_t sub_24FE64580()
{
  result = qword_27F3A50F8;
  if (!qword_27F3A50F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A50F8);
  }

  return result;
}

uint64_t sub_24FE645D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_24FEDE844() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000 || (sub_24FEDE844() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7369446C65646F6DLL && a2 == 0xEF72656D69616C63)
  {

    return 2;
  }

  else
  {
    v6 = sub_24FEDE844();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

GenerativeAssistantUI::GenerativeSearchWebButtonView __swiftcall GenerativeSearchWebButtonView.init(snippetModel:)(GenerativeAssistantUI::GenerativeSearchWebButtonView snippetModel)
{
  v2 = *(snippetModel.snippetModel.query._countAndFlagsBits + 8);
  *v1 = *snippetModel.snippetModel.query._countAndFlagsBits;
  v1[1] = v2;
  return snippetModel;
}

uint64_t GenerativeSearchWebButtonView.body.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  type metadata accessor for SearchWebButton(0);
  sub_24FE6487C();

  return sub_24FEDE004();
}

uint64_t sub_24FE6479C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  _s21GenerativeAssistantUI0A13DismissalViewVACycfC_0();
  result = type metadata accessor for SearchWebButton(0);
  v7 = (a3 + *(result + 20));
  *v7 = a1;
  v7[1] = a2;
  return result;
}

uint64_t sub_24FE647F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t type metadata accessor for SearchWebButton(uint64_t a1)
{
  result = qword_27F3A5118;
  if (!qword_27F3A5118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24FE6487C()
{
  result = qword_27F3A5100;
  if (!qword_27F3A5100)
  {
    type metadata accessor for SearchWebButton(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5100);
  }

  return result;
}

uint64_t sub_24FE648F0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  type metadata accessor for SearchWebButton(0);
  sub_24FE6487C();

  return sub_24FEDE004();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24FE6499C(uint64_t a1, int a2)
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

uint64_t sub_24FE649E4(uint64_t result, int a2, int a3)
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

uint64_t sub_24FE64A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDE064();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24FE64B5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FEDE064();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24FE64C18(uint64_t a1)
{
  result = sub_24FEDE064();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24FE64CA8(uint64_t a1)
{
  v2 = sub_24FEDE0B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FEDE044();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4C80, &qword_24FEE0C48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FEE0740;
  v12[1] = 0x7972657571;
  v12[2] = 0xE500000000000000;
  v7 = MEMORY[0x277D837D0];
  sub_24FEDE5C4();
  v8 = (a1 + *(type metadata accessor for SearchWebButton(0) + 20));
  v10 = *v8;
  v9 = v8[1];
  *(inited + 96) = v7;
  *(inited + 72) = v10;
  *(inited + 80) = v9;

  sub_24FE71840(inited);
  swift_setDeallocating();
  sub_24FE65264(inited + 32);
  sub_24FEDE0A4();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24FE64E48@<X0>(uint64_t a1@<X8>)
{
  sub_24FEDD4B4();
  if (qword_27F3A4678 != -1)
  {
    swift_once();
  }

  v2 = qword_27F3B30E0;
  result = sub_24FEDD9D4();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_24FE64F30(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_24FE65050(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_24FE651A0(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  return sub_24FEDDD84();
}

uint64_t sub_24FE65050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchWebButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE650B4()
{
  v1 = *(type metadata accessor for SearchWebButton(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_24FEDE064();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24FE651A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchWebButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE65204()
{
  v1 = *(type metadata accessor for SearchWebButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24FE64CA8(v2);
}

uint64_t sub_24FE65264(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4C88, &qword_24FEE0C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *Attachment.init(localizedName:thumbnailImage:file:fileSizeInMB:isScreenshot:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = *result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 36) = BYTE4(a5) & 1;
  *(a7 + 37) = a6;
  return result;
}

uint64_t AttachmentConfirmationPayload.init(message:condensedMessage:attachmentRemovedMessage:sessionId:contentName:sourceContentType:sourceContentCreationDate:webpageURL:availableAttachments:userQuery:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  *(a9 + 8) = a10;
  *(a9 + 9) = a11;
  v18 = type metadata accessor for AttachmentConfirmationPayload(0);
  v19 = v18[9];
  v20 = sub_24FEDCEB4();
  (*(*(v20 - 8) + 32))(&a9[v19], a12, v20);
  sub_24FE6315C(a13, &a9[v18[10]], &qword_27F3A4A38, &unk_24FEE1340);
  result = sub_24FE6315C(a14, &a9[v18[11]], &unk_27F3A4A40, &qword_24FEE08C0);
  *&a9[v18[12]] = a15;
  v22 = &a9[v18[13]];
  *v22 = a16;
  *(v22 + 1) = a17;
  return result;
}

uint64_t sub_24FE6546C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentConfirmationPayload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE654D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentConfirmationPayload(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE655A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24FEDE844();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24FE6562C(uint64_t a1)
{
  v2 = sub_24FE6581C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE65668(uint64_t a1)
{
  v2 = sub_24FE6581C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenerativeMediaConfirmationSnippetModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5138, &qword_24FEE1350);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE6581C();
  sub_24FEDE944();
  type metadata accessor for AttachmentConfirmationPayload(0);
  sub_24FE65B04(&qword_27F3A5148, type metadata accessor for AttachmentConfirmationPayload, &protocol conformance descriptor for AttachmentConfirmationPayload);
  sub_24FEDE804();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24FE6581C()
{
  result = qword_27F3A5140;
  if (!qword_27F3A5140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5140);
  }

  return result;
}

uint64_t GenerativeMediaConfirmationSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for AttachmentConfirmationPayload(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5150, &qword_24FEE1358);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for GenerativeMediaConfirmationSnippetModel(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE6581C();
  sub_24FEDE934();
  if (!v2)
  {
    v12 = v15;
    sub_24FE65B04(&qword_27F3A5158, type metadata accessor for AttachmentConfirmationPayload, &protocol conformance descriptor for AttachmentConfirmationPayload);
    v13 = v17;
    sub_24FEDE774();
    (*(v16 + 8))(v8, v6);
    sub_24FE65B4C(v13, v11, type metadata accessor for AttachmentConfirmationPayload);
    sub_24FE65B4C(v11, v12, type metadata accessor for GenerativeMediaConfirmationSnippetModel);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24FE65B04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FE65B4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FE65BCC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5138, &qword_24FEE1350);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE6581C();
  sub_24FEDE944();
  type metadata accessor for AttachmentConfirmationPayload(0);
  sub_24FE65B04(&qword_27F3A5148, type metadata accessor for AttachmentConfirmationPayload, &protocol conformance descriptor for AttachmentConfirmationPayload);
  sub_24FEDE804();
  return (*(v3 + 8))(v5, v2);
}

GenerativeAssistantUI::Attachment::LocalizedName_optional __swiftcall Attachment.LocalizedName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24FEDE6F4();

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

  *v2 = v5;
  return result;
}

uint64_t Attachment.LocalizedName.rawValue.getter()
{
  if (*v0)
  {
    return 0x68736E6565726373;
  }

  else
  {
    return 0x746E6F436C6C7566;
  }
}

uint64_t sub_24FE65DF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x68736E6565726373;
  }

  else
  {
    v3 = 0x746E6F436C6C7566;
  }

  if (v2)
  {
    v4 = 0xEB00000000746E65;
  }

  else
  {
    v4 = 0xEA0000000000746FLL;
  }

  if (*a2)
  {
    v5 = 0x68736E6565726373;
  }

  else
  {
    v5 = 0x746E6F436C6C7566;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000746FLL;
  }

  else
  {
    v6 = 0xEB00000000746E65;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24FEDE844();
  }

  return v8 & 1;
}

uint64_t sub_24FE65EA4()
{
  sub_24FEDE904();
  sub_24FEDE254();

  return sub_24FEDE924();
}

uint64_t sub_24FE65F34(uint64_t a1)
{
  sub_24FEDE254();
}

uint64_t sub_24FE65FB0(uint64_t a1)
{
  sub_24FEDE904();
  sub_24FEDE254();

  return sub_24FEDE924();
}

uint64_t sub_24FE6603C@<X0>(char *a2@<X8>)
{
  v3 = sub_24FEDE6F4();

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

void sub_24FE6609C(uint64_t *a1@<X8>)
{
  v2 = 0x746E6F436C6C7566;
  if (*v1)
  {
    v2 = 0x68736E6565726373;
  }

  v3 = 0xEB00000000746E65;
  if (*v1)
  {
    v3 = 0xEA0000000000746FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t Attachment.thumbnailImage.getter()
{
  v1 = *(v0 + 8);
  sub_24FE62C80(v1, *(v0 + 16));
  return v1;
}

uint64_t sub_24FE66210()
{
  v1 = *v0;
  v2 = 0x657A696C61636F6CLL;
  v3 = 1701603686;
  v4 = 0x657A6953656C6966;
  if (v1 != 3)
  {
    v4 = 0x6E65657263537369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x69616E626D756874;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24FE662CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24FE68BB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24FE66300(uint64_t a1)
{
  v2 = sub_24FE66618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE6633C(uint64_t a1)
{
  v2 = sub_24FE66618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Attachment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5160, &qword_24FEE1360);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 2);
  v16 = *(v1 + 3);
  v17 = v8;
  v15 = *(v1 + 8);
  v21 = v1[36];
  v14[3] = v1[37];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE66618();
  sub_24FEDE944();
  LOBYTE(v19) = v7;
  v22 = 0;
  sub_24FE6666C();
  v10 = v18;
  sub_24FEDE804();
  if (!v10)
  {
    v11 = v16;
    v12 = v21;
    v19 = v17;
    v20 = v9;
    v22 = 1;
    sub_24FE62C80(v17, v9);
    sub_24FE666C0();
    sub_24FEDE7D4();
    sub_24FE62CE8(v19, v20);
    v19 = v11;
    v22 = 2;
    sub_24FEDCDD4();
    sub_24FE65B04(&qword_27F3A5180, MEMORY[0x277D74498], MEMORY[0x277D744A0]);
    sub_24FEDE7D4();
    LOBYTE(v19) = 3;
    v22 = v12;
    sub_24FEDE7C4();
    LOBYTE(v19) = 4;
    sub_24FEDE7F4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24FE66618()
{
  result = qword_27F3A5168;
  if (!qword_27F3A5168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5168);
  }

  return result;
}

unint64_t sub_24FE6666C()
{
  result = qword_27F3A5170;
  if (!qword_27F3A5170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5170);
  }

  return result;
}

unint64_t sub_24FE666C0()
{
  result = qword_27F3A5178;
  if (!qword_27F3A5178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5178);
  }

  return result;
}

uint64_t Attachment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5188, &qword_24FEE1368);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE66618();
  sub_24FEDE934();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  sub_24FE66A8C();
  sub_24FEDE774();
  v21 = v19;
  v22 = 1;
  sub_24FE66AE0();
  sub_24FEDE744();
  v9 = v19;
  v18 = v20;
  sub_24FEDCDD4();
  v22 = 2;
  sub_24FE65B04(&qword_27F3A51A0, MEMORY[0x277D74498], MEMORY[0x277D744A8]);
  sub_24FEDE744();
  v17 = v19;
  LOBYTE(v19) = 3;
  v10 = sub_24FEDE734();
  LOBYTE(v19) = 4;
  v11 = sub_24FEDE764();
  (*(v6 + 8))(v8, v5);
  v13 = v11 & 1;
  *a2 = v21;
  v14 = v9;
  *(a2 + 8) = v9;
  v15 = v17;
  v16 = v18;
  *(a2 + 16) = v18;
  *(a2 + 24) = v15;
  *(a2 + 32) = v10;
  *(a2 + 36) = BYTE4(v10) & 1;
  *(a2 + 37) = v13;
  sub_24FE62C80(v14, v16);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_24FE62CE8(v14, v16);
}

unint64_t sub_24FE66A8C()
{
  result = qword_27F3A5190;
  if (!qword_27F3A5190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5190);
  }

  return result;
}

unint64_t sub_24FE66AE0()
{
  result = qword_27F3A5198;
  if (!qword_27F3A5198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5198);
  }

  return result;
}

uint64_t sub_24FE66B34(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x5565676170626577;
    v6 = 0xD000000000000014;
    if (a1 != 8)
    {
      v6 = 0x7265755172657375;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000019;
    if (a1 == 5)
    {
      v7 = 0xD000000000000011;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6567617373656DLL;
    v2 = 0xD000000000000018;
    v3 = 0x496E6F6973736573;
    if (a1 != 3)
    {
      v3 = 0x4E746E65746E6F63;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24FE66CD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24FE68D80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24FE66D0C(uint64_t a1)
{
  v2 = sub_24FE6719C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE66D48(uint64_t a1)
{
  v2 = sub_24FE6719C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AttachmentConfirmationPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A51A8, &unk_24FEE1370);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE6719C();
  sub_24FEDE944();
  LOBYTE(v12) = 0;
  sub_24FEDE7E4();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_24FEDE7E4();
    LOBYTE(v12) = 2;
    sub_24FEDE7E4();
    LOBYTE(v12) = 3;
    sub_24FEDE7B4();
    LOBYTE(v12) = 4;
    sub_24FEDE7E4();
    v9 = type metadata accessor for AttachmentConfirmationPayload(0);
    LOBYTE(v12) = 5;
    sub_24FEDCEB4();
    sub_24FE65B04(&qword_27F3A51B8, MEMORY[0x277D0D6D8], MEMORY[0x277D0D6E0]);
    sub_24FEDE804();
    LOBYTE(v12) = 6;
    sub_24FEDCA34();
    sub_24FE65B04(&qword_27F3A51C0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_24FEDE7D4();
    LOBYTE(v12) = 7;
    sub_24FEDC9E4();
    sub_24FE65B04(&qword_27F3A51C8, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_24FEDE7D4();
    v12 = *(v3 + *(v9 + 48));
    v11[7] = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5040, &unk_24FEE0F80);
    sub_24FE67AE4(&qword_27F3A51D0, sub_24FE671F0, MEMORY[0x277D83948]);
    sub_24FEDE804();
    LOBYTE(v12) = 9;
    sub_24FEDE7E4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24FE6719C()
{
  result = qword_27F3A51B0;
  if (!qword_27F3A51B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A51B0);
  }

  return result;
}

unint64_t sub_24FE671F0()
{
  result = qword_27F3A51D8;
  if (!qword_27F3A51D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A51D8);
  }

  return result;
}

uint64_t AttachmentConfirmationPayload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4A38, &unk_24FEE1340);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v50 - v6;
  v8 = sub_24FEDCEB4();
  v55 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A51E0, &qword_24FEE1380);
  v56 = *(v11 - 8);
  v57 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v14 = type metadata accessor for AttachmentConfirmationPayload(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_24FE6719C();
  v58 = v13;
  v18 = v59;
  sub_24FEDE934();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v19 = v7;
  v20 = v56;
  v21 = v57;
  v52 = v14;
  v59 = v8;
  v22 = v16;
  LOBYTE(v62) = 0;
  v24 = v16;
  *v16 = sub_24FEDE754();
  v16[1] = v25;
  LOBYTE(v62) = 1;
  v16[2] = sub_24FEDE754();
  v16[3] = v26;
  LOBYTE(v62) = 2;
  v50 = 0;
  v16[4] = sub_24FEDE754();
  v16[5] = v27;
  LOBYTE(v62) = 3;
  v16[6] = sub_24FEDE724();
  v16[7] = v28;
  LOBYTE(v62) = 4;
  v29 = sub_24FEDE754();
  v51 = 0;
  v16[8] = v29;
  v16[9] = v30;
  LOBYTE(v62) = 5;
  sub_24FE65B04(&qword_27F3A51E8, MEMORY[0x277D0D6D8], MEMORY[0x277D0D6E8]);
  v31 = v10;
  v32 = v59;
  v33 = v51;
  sub_24FEDE774();
  v51 = v33;
  if (!v33)
  {
    v35 = v52;
    (*(v55 + 32))(v22 + v52[9], v31, v32);
    sub_24FEDCA34();
    LOBYTE(v62) = 6;
    sub_24FE65B04(&qword_27F3A51F0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v36 = v19;
    v37 = v51;
    sub_24FEDE744();
    v38 = v37;
    if (v37)
    {
      (*(v20 + 8))(v58, v21);
      v39 = 0;
      v51 = v37;
    }

    else
    {
      sub_24FE6315C(v36, v22 + v35[10], &qword_27F3A4A38, &unk_24FEE1340);
      sub_24FEDC9E4();
      LOBYTE(v62) = 7;
      sub_24FE65B04(&qword_27F3A51F8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
      v40 = v54;
      sub_24FEDE744();
      v51 = 0;
      sub_24FE6315C(v40, v22 + v52[11], &unk_27F3A4A40, &qword_24FEE08C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5040, &unk_24FEE0F80);
      v61 = 8;
      sub_24FE67AE4(&qword_27F3A5200, sub_24FE67B5C, MEMORY[0x277D83978]);
      v41 = v51;
      sub_24FEDE774();
      v51 = v41;
      if (!v41)
      {
        *(v22 + v52[12]) = v62;
        LOBYTE(v62) = 9;
        v42 = sub_24FEDE754();
        v51 = 0;
        v45 = v42;
        v47 = v46;
        (*(v20 + 8))(v58, v57);
        v48 = v53;
        v49 = (v22 + v52[13]);
        *v49 = v45;
        v49[1] = v47;
        sub_24FE6546C(v22, v48);
        __swift_destroy_boxed_opaque_existential_1(v60);
        return sub_24FE67BB0(v22);
      }

      (*(v20 + 8))(v58, v21);
      v39 = 1;
    }

    v43 = v59;
    __swift_destroy_boxed_opaque_existential_1(v60);

    v44 = v52;
    result = (*(v55 + 8))(v24 + v52[9], v43);
    if (v38)
    {
      if (!v39)
      {
        return result;
      }
    }

    else
    {
      result = sub_24FE58B7C(v24 + v44[10], &qword_27F3A4A38, &unk_24FEE1340);
      if ((v39 & 1) == 0)
      {
        return result;
      }
    }

    return sub_24FE58B7C(v24 + v44[11], &unk_27F3A4A40, &qword_24FEE08C0);
  }

  (*(v20 + 8))(v58, v21);
  v34 = v50;
  __swift_destroy_boxed_opaque_existential_1(v60);

  if (!v34)
  {
  }
}

uint64_t sub_24FE67AE4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5040, &unk_24FEE0F80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24FE67B5C()
{
  result = qword_27F3A5208;
  if (!qword_27F3A5208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5208);
  }

  return result;
}

uint64_t sub_24FE67BB0(uint64_t a1)
{
  v2 = type metadata accessor for AttachmentConfirmationPayload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24FE67CA0()
{
  result = qword_27F3A5210;
  if (!qword_27F3A5210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5210);
  }

  return result;
}

uint64_t sub_24FE67D38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentConfirmationPayload(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24FE67DB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentConfirmationPayload(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24FE67E28(uint64_t a1)
{
  result = type metadata accessor for AttachmentConfirmationPayload(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy38_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24FE67EEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 38))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_24FE67F48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 38) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 38) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Attachment.LocalizedName(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Attachment.LocalizedName(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24FE68124(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_24FEDCEB4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4A38, &unk_24FEE1340);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24FE682BC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_24FEDCEB4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4A38, &unk_24FEE1340);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

void sub_24FE68440(uint64_t a1)
{
  sub_24FE685A0(319, &qword_27F3A4A60, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24FEDCEB4();
    if (v2 <= 0x3F)
    {
      sub_24FE61090(319, &qword_27F3A4A68, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        sub_24FE61090(319, &qword_27F3A4A70, MEMORY[0x277CC9260]);
        if (v4 <= 0x3F)
        {
          sub_24FE685A0(319, &qword_27F3A4A78, &type metadata for Attachment, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24FE685A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AttachmentConfirmationPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AttachmentConfirmationPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Attachment.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Attachment.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24FE688A4()
{
  result = qword_27F3A5238;
  if (!qword_27F3A5238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5238);
  }

  return result;
}

unint64_t sub_24FE688FC()
{
  result = qword_27F3A5240;
  if (!qword_27F3A5240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5240);
  }

  return result;
}

unint64_t sub_24FE68954()
{
  result = qword_27F3A5248;
  if (!qword_27F3A5248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5248);
  }

  return result;
}

unint64_t sub_24FE689AC()
{
  result = qword_27F3A5250;
  if (!qword_27F3A5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5250);
  }

  return result;
}

unint64_t sub_24FE68A04()
{
  result = qword_27F3A5258;
  if (!qword_27F3A5258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5258);
  }

  return result;
}

unint64_t sub_24FE68A5C()
{
  result = qword_27F3A5260;
  if (!qword_27F3A5260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5260);
  }

  return result;
}

unint64_t sub_24FE68AB4()
{
  result = qword_27F3A5268;
  if (!qword_27F3A5268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5268);
  }

  return result;
}

unint64_t sub_24FE68B0C()
{
  result = qword_27F3A5270;
  if (!qword_27F3A5270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5270);
  }

  return result;
}

unint64_t sub_24FE68B64()
{
  result = qword_27F3A5278;
  if (!qword_27F3A5278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5278);
  }

  return result;
}

uint64_t sub_24FE68BB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A696C61636F6CLL && a2 == 0xED0000656D614E64;
  if (v4 || (sub_24FEDE844() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xEE006567616D496CLL || (sub_24FEDE844() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701603686 && a2 == 0xE400000000000000 || (sub_24FEDE844() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A6953656C6966 && a2 == 0xEC000000424D6E49 || (sub_24FEDE844() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E65657263537369 && a2 == 0xEC000000746F6873)
  {

    return 4;
  }

  else
  {
    v6 = sub_24FEDE844();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24FE68D80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_24FEDE844() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FEE98F0 == a2 || (sub_24FEDE844() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FEE9910 == a2 || (sub_24FEDE844() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064 || (sub_24FEDE844() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4E746E65746E6F63 && a2 == 0xEB00000000656D61 || (sub_24FEDE844() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FEE9930 == a2 || (sub_24FEDE844() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FEE9950 == a2 || (sub_24FEDE844() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5565676170626577 && a2 == 0xEA00000000004C52 || (sub_24FEDE844() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FEE9970 == a2 || (sub_24FEDE844() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7265755172657375 && a2 == 0xE900000000000079)
  {

    return 9;
  }

  else
  {
    v6 = sub_24FEDE844();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

unint64_t sub_24FE690BC()
{
  result = qword_27F3A5280;
  if (!qword_27F3A5280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5280);
  }

  return result;
}

void __swiftcall GenerativeRateLimitedView.init(snippetModel:)(GenerativeAssistantUI::GenerativeRateLimitedView *__return_ptr retstr, GenerativeAssistantUI::GenerativeRateLimitedSnippetModel *snippetModel)
{
  displayUrl = snippetModel->modelDisclaimer.value.displayUrl;
  retstr->snippetModel.modelDisclaimer.value.message = snippetModel->modelDisclaimer.value.message;
  retstr->snippetModel.modelDisclaimer.value.displayUrl = displayUrl;
  retstr->snippetModel.modelDisclaimer.value.url = snippetModel->modelDisclaimer.value.url;
  query = snippetModel->query;
  retstr->snippetModel.message = snippetModel->message;
  retstr->snippetModel.query = query;
}

uint64_t GenerativeRateLimitedView.body.getter()
{
  v1 = v0[3];
  v8[2] = v0[2];
  v8[3] = v1;
  v8[4] = v0[4];
  v2 = v0[1];
  v8[0] = *v0;
  v8[1] = v2;
  v3 = swift_allocObject();
  v4 = v0[3];
  v3[3] = v0[2];
  v3[4] = v4;
  v3[5] = v0[4];
  v5 = v0[1];
  v3[1] = *v0;
  v3[2] = v5;
  sub_24FE696FC(v8, &v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5288, &qword_24FEE1A30);
  sub_24FE58928(&qword_27F3A5290, &qword_27F3A5288, &qword_24FEE1A30, MEMORY[0x277CE14C0]);
  return sub_24FEDE004();
}

uint64_t sub_24FE69240@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v47 = a2;
  v49 = type metadata accessor for SearchWebButton(0);
  MEMORY[0x28223BE20](v49);
  v52 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - v5;
  v7 = type metadata accessor for RateLimitTextView(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A52A8, &qword_24FEE1B38);
  MEMORY[0x28223BE20](v11 - 8);
  v51 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  v16 = *a1;
  v17 = a1[1];
  v72 = *(a1 + 1);
  v60 = v16;
  v61 = v17;
  sub_24FE56B40();

  v50 = sub_24FEDD9F4();
  v54 = v18;
  v55 = v19;
  v21 = v20;
  v48 = sub_24FEDD764();
  sub_24FEDD014();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v53 = v21 & 1;
  LOBYTE(v60) = v21 & 1;
  LOBYTE(v56) = 0;
  v30 = *(a1 + 3);
  v74[0] = *(a1 + 2);
  v74[1] = v30;
  v74[2] = *(a1 + 4);
  v31 = *(&v74[0] + 1);
  if (*(&v74[0] + 1))
  {
    v32 = *&v74[0];
    *v10 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A52C0, &qword_24FEE1EA0);
    swift_storeEnumTagMultiPayload();
    v33 = v10 + *(v7 + 20);
    *v33 = v32;
    *(v33 + 1) = v31;
    v34 = *(a1 + 4);
    *(v33 + 1) = *(a1 + 3);
    *(v33 + 2) = v34;
    sub_24FE699BC(v10, v15);
    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  (*(v8 + 56))(v15, v35, 1, v7);
  v73 = v72;
  sub_24FE58B14(v74, &v60, &qword_27F3A52B0, &qword_24FEE1B40);
  sub_24FE698FC(&v73, &v60);
  _s21GenerativeAssistantUI0A13DismissalViewVACycfC_0();
  *&v6[*(v49 + 5)] = v73;
  v36 = v51;
  sub_24FE58B14(v15, v51, &qword_27F3A52A8, &qword_24FEE1B38);
  v37 = v52;
  sub_24FE65050(v6, v52);
  v38 = v50;
  v49 = v15;
  *&v56 = v50;
  *(&v56 + 1) = v54;
  LOBYTE(v57) = v53;
  *(&v57 + 1) = v76[0];
  DWORD1(v57) = *(v76 + 3);
  v46 = v6;
  *(&v57 + 1) = v55;
  v39 = v48;
  LOBYTE(v58) = v48;
  *(&v58 + 1) = *v75;
  DWORD1(v58) = *&v75[3];
  *(&v58 + 1) = v23;
  *&v59[0] = v25;
  *(&v59[0] + 1) = v27;
  *&v59[1] = v29;
  BYTE8(v59[1]) = 0;
  v40 = v56;
  v41 = v57;
  v42 = v47;
  *(v47 + 57) = *(v59 + 9);
  v43 = v59[0];
  v42[2] = v58;
  v42[3] = v43;
  *v42 = v40;
  v42[1] = v41;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A52B8, &unk_24FEE1B48);
  sub_24FE58B14(v36, v42 + *(v44 + 48), &qword_27F3A52A8, &qword_24FEE1B38);
  sub_24FE65050(v37, v42 + *(v44 + 64));
  sub_24FE58B14(&v56, &v60, &qword_27F3A4918, &unk_24FEE0730);
  sub_24FE69958(v46);
  sub_24FE58B7C(v49, &qword_27F3A52A8, &qword_24FEE1B38);
  sub_24FE69958(v37);
  sub_24FE58B7C(v36, &qword_27F3A52A8, &qword_24FEE1B38);
  v60 = v38;
  v61 = v54;
  v62 = v53;
  *v63 = v76[0];
  *&v63[3] = *(v76 + 3);
  v64 = v55;
  v65 = v39;
  *v66 = *v75;
  *&v66[3] = *&v75[3];
  v67 = v23;
  v68 = v25;
  v69 = v27;
  v70 = v29;
  v71 = 0;
  return sub_24FE58B7C(&v60, &qword_27F3A4918, &unk_24FEE0730);
}

uint64_t sub_24FE69750()
{
  v1 = v0[3];
  v8[2] = v0[2];
  v8[3] = v1;
  v8[4] = v0[4];
  v2 = v0[1];
  v8[0] = *v0;
  v8[1] = v2;
  v3 = swift_allocObject();
  v4 = v0[3];
  v3[3] = v0[2];
  v3[4] = v4;
  v3[5] = v0[4];
  v5 = v0[1];
  v3[1] = *v0;
  v3[2] = v5;
  sub_24FE696FC(v8, &v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5288, &qword_24FEE1A30);
  sub_24FE58928(&qword_27F3A5290, &qword_27F3A5288, &qword_24FEE1A30, MEMORY[0x277CE14C0]);
  return sub_24FEDE004();
}

uint64_t objectdestroyTm_0()
{

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_24FE69958(uint64_t a1)
{
  v2 = type metadata accessor for SearchWebButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FE699BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RateLimitTextView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TextGenerationView.PresentationOptions.FontConfiguration.init(majorFont:regularFont:bulletFont:inlineCodeFont:inlineCodeMajorHeadingFont:codeBlockFont:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t *TextGenerationView.PresentationOptions.init(fontConfiguration:hideTopLevelShareButton:forceShowAttribution:)@<X0>(uint64_t *result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *result;
  if (*result)
  {
    v9 = result[4];
    v8 = result[5];
    v11 = result[2];
    v10 = result[3];
    v12 = result[1];
    MarkdownFontConfiguration.init(majorFont:regularFont:bulletFont:inlineCodeFont:inlineCodeMajorHeadingFont:codeBlockFont:)(*result, v12, v11, v10, v9, v8, v19);
    v17 = v19[1];
    v18 = v19[0];
    v16 = v19[2];

    result = sub_24FE708C4(v7, v12, v11, v10, v9, v8);
    v14 = v16;
    v13 = v17;
    v15 = v18;
  }

  else
  {
    v15 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *a4 = v15;
  *(a4 + 16) = v13;
  *(a4 + 32) = v14;
  *(a4 + 48) = a2 & 1;
  *(a4 + 49) = a3 & 1;
  return result;
}

uint64_t sub_24FE69B78@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDD3E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5370, &qword_24FEE1C00);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TextGenerationView(0);
  sub_24FE58B14(v1 + *(v10 + 24), v9, &qword_27F3A5370, &qword_24FEE1C00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24FEDD234();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24FEDE4D4();
    v13 = sub_24FEDD714();
    sub_24FEDCF14();

    sub_24FEDD3D4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t TextGenerationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5328, &qword_24FEE1B90);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5330, &qword_24FEE1B98);
  v6 = *(v5 - 8);
  v19 = v5;
  v20 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5338, &qword_24FEE1BA0);
  v21 = *(v9 - 8);
  v22 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  *v4 = sub_24FEDD514();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5340, &qword_24FEE1BA8);
  sub_24FE6A0C0(v1, &v4[*(v12 + 44)]);
  v24 = *(v1 + *(type metadata accessor for TextGenerationView(0) + 44));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5348, &qword_24FEE1BB0);
  v14 = sub_24FE58928(&qword_27F3A5350, &qword_27F3A5328, &qword_24FEE1B90, MEMORY[0x277CE1198]);
  sub_24FEDDA24();
  sub_24FE58B7C(v4, &qword_27F3A5328, &qword_24FEE1B90);
  type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  v24 = v2;
  v25 = v13;
  v26 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = v19;
  sub_24FEDDA44();
  (*(v20 + 8))(v8, v16);
  v24 = v16;
  v25 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v17 = v22;
  sub_24FEDDB14();
  return (*(v21 + 8))(v11, v17);
}

uint64_t sub_24FE6A0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5520, &qword_24FEE1F38);
  v129 = *(v3 - 8);
  v130 = v3;
  MEMORY[0x28223BE20](v3);
  v115 = &v114 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5528, &unk_24FEE1F40);
  MEMORY[0x28223BE20](v5 - 8);
  v133 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v132 = &v114 - v8;
  v9 = type metadata accessor for RateLimitTextView(0);
  v127 = *(v9 - 8);
  v128 = v9;
  MEMORY[0x28223BE20](v9);
  v120 = (&v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A52A8, &qword_24FEE1B38);
  MEMORY[0x28223BE20](v11 - 8);
  v131 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v135 = &v114 - v14;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5530, &qword_24FEE1F50);
  MEMORY[0x28223BE20](v123);
  v125 = &v114 - v15;
  v16 = type metadata accessor for DocumentView(0);
  MEMORY[0x28223BE20](v16 - 8);
  v116 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v114 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5538, &qword_24FEE1F58);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v114 - v25;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5540, &qword_24FEE1F60);
  MEMORY[0x28223BE20](v122);
  v28 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v114 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v114 - v33;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5548, &qword_24FEE1F68);
  MEMORY[0x28223BE20](v117);
  v118 = &v114 - v35;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5550, &qword_24FEE1F70);
  MEMORY[0x28223BE20](v121);
  v37 = &v114 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v119 = &v114 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5558, &qword_24FEE1F78);
  MEMORY[0x28223BE20](v40 - 8);
  v126 = &v114 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v136 = &v114 - v43;
  v44 = type metadata accessor for TextGenerationView(0);
  v45 = *(a1 + v44[14]);
  v46 = a1;
  v47 = *(a1 + v44[13]);
  v124 = v44;
  if (v45 == 1)
  {
    if (v47)
    {
      v48 = MEMORY[0x277D84F90];
      v49 = v46;
    }

    else
    {
      v49 = a1;
      v48 = *(a1 + v44[12]);
    }

    DocumentView.init(viewModel:linkTapped:contentsToShare:forceOffsetFirstElement:)(0, 0, v48, 0, v20);
    sub_24FE728F8(v20, v26, type metadata accessor for DocumentView);
    v52 = sub_24FEDD764();
    sub_24FE6AE48();
    sub_24FEDD014();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    sub_24FE6315C(v26, v34, &qword_27F3A5538, &qword_24FEE1F58);
    v61 = &v34[*(v122 + 36)];
    *v61 = v52;
    *(v61 + 1) = v54;
    *(v61 + 2) = v56;
    *(v61 + 3) = v58;
    *(v61 + 4) = v60;
    v61[40] = 0;
    v62 = objc_allocWithZone(sub_24FEDE134());
    v63 = sub_24FEDE124();
    sub_24FE73100(&qword_27F3A4A30, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    v64 = sub_24FEDCF84();
    v65 = v118;
    sub_24FE6315C(v34, v118, &qword_27F3A5540, &qword_24FEE1F60);
    v66 = (v65 + *(v117 + 36));
    *v66 = v64;
    v66[1] = v63;
    sub_24FEDE0D4();
    swift_allocObject();
    v67 = sub_24FEDE0C4();
    sub_24FE73100(&qword_27F3A55B0, MEMORY[0x277D63F18], MEMORY[0x277D63F10]);
    v68 = sub_24FEDCF84();
    sub_24FE6315C(v65, v37, &qword_27F3A5548, &qword_24FEE1F68);
    v69 = &v37[*(v121 + 36)];
    *v69 = v68;
    v69[1] = v67;
    v70 = v119;
    sub_24FE6315C(v37, v119, &qword_27F3A5550, &qword_24FEE1F70);
    sub_24FE58B14(v70, v125, &qword_27F3A5550, &qword_24FEE1F70);
    swift_storeEnumTagMultiPayload();
    sub_24FE72D80();
    sub_24FE72EF0();
    sub_24FEDD5F4();
    sub_24FE58B7C(v70, &qword_27F3A5550, &qword_24FEE1F70);
    v71 = v135;
  }

  else
  {
    if (v47)
    {
      v50 = MEMORY[0x277D84F90];
    }

    else
    {
      v50 = *(a1 + v44[12]);
    }

    v51 = v135;

    v72 = v116;
    DocumentView.init(viewModel:linkTapped:contentsToShare:forceOffsetFirstElement:)(0, 0, v50, 0, v116);
    sub_24FE728F8(v72, v23, type metadata accessor for DocumentView);
    v73 = sub_24FEDD764();
    sub_24FE6AE48();
    sub_24FEDD014();
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v81 = v80;
    sub_24FE6315C(v23, v28, &qword_27F3A5538, &qword_24FEE1F58);
    v82 = &v28[*(v122 + 36)];
    *v82 = v73;
    *(v82 + 1) = v75;
    *(v82 + 2) = v77;
    *(v82 + 3) = v79;
    *(v82 + 4) = v81;
    v82[40] = 0;
    sub_24FE6315C(v28, v31, &qword_27F3A5540, &qword_24FEE1F60);
    sub_24FE58B14(v31, v125, &qword_27F3A5540, &qword_24FEE1F60);
    swift_storeEnumTagMultiPayload();
    sub_24FE72D80();
    sub_24FE72EF0();
    sub_24FEDD5F4();
    sub_24FE58B7C(v31, &qword_27F3A5540, &qword_24FEE1F60);
    v49 = a1;
    v71 = v51;
  }

  v83 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  if (*(*(v49 + *(v83 + 40)) + 16))
  {

    sub_24FE6B338(v140);

    memcpy(v139, v140, 0x139uLL);
    nullsub_1();
    memcpy(v140, v139, 0x139uLL);
  }

  else
  {
    sub_24FE7300C(v140);
  }

  v84 = (v49 + *(v83 + 44));
  v85 = *v84;
  v86 = v84[1];
  v88 = v84[2];
  v87 = v84[3];
  v90 = v84[4];
  v89 = v84[5];
  v125 = v87;
  v122 = v85;
  v123 = v88;
  if (v86)
  {
    KeyPath = swift_getKeyPath();
    v92 = v49;
    v93 = v120;
    *v120 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A52C0, &qword_24FEE1EA0);
    swift_storeEnumTagMultiPayload();
    v94 = v128;
    v95 = (v93 + *(v128 + 20));
    *v95 = v85;
    v95[1] = v86;
    v95[2] = v88;
    v95[3] = v87;
    v96 = v90;
    v95[4] = v90;
    v95[5] = v89;
    v97 = v89;
    v98 = v93;
    v49 = v92;
    v71 = v135;
    sub_24FE728F8(v98, v135, type metadata accessor for RateLimitTextView);
    v99 = 0;
  }

  else
  {
    v96 = v90;
    v97 = v89;
    v99 = 1;
    v94 = v128;
  }

  (*(v127 + 56))(v71, v99, 1, v94);
  v100 = v49 + v124[15];
  if (*v100 != 1 && (*(v100 + 48) & 0x100) != 0)
  {
    sub_24FE63DA4(v122, v86, v123, v125, v96, v97);
    v102 = v115;
    sub_24FE6B574(v115);
    v104 = v129;
    v103 = v130;
    v101 = v132;
    (*(v129 + 32))(v132, v102, v130);
    (*(v104 + 56))(v101, 0, 1, v103);
  }

  else
  {
    v101 = v132;
    (*(v129 + 56))(v132, 1, 1, v130);
    sub_24FE63DA4(v122, v86, v123, v125, v96, v97);
  }

  v105 = v126;
  sub_24FE58B14(v136, v126, &qword_27F3A5558, &qword_24FEE1F78);
  memcpy(v137, v140, sizeof(v137));
  v106 = v131;
  sub_24FE58B14(v71, v131, &qword_27F3A52A8, &qword_24FEE1B38);
  v107 = v133;
  sub_24FE58B14(v101, v133, &qword_27F3A5528, &unk_24FEE1F40);
  v108 = v134;
  sub_24FE58B14(v105, v134, &qword_27F3A5558, &qword_24FEE1F78);
  v109 = v101;
  v110 = v71;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A55A0, &qword_24FEE1F90);
  v112 = v111[12];
  memcpy(v138, v137, 0x139uLL);
  memcpy((v108 + v112), v137, 0x139uLL);
  sub_24FE58B14(v106, v108 + v111[16], &qword_27F3A52A8, &qword_24FEE1B38);
  sub_24FE58B14(v107, v108 + v111[20], &qword_27F3A5528, &unk_24FEE1F40);
  sub_24FE58B14(v138, v139, &qword_27F3A55A8, &qword_24FEE1F98);
  sub_24FE58B7C(v109, &qword_27F3A5528, &unk_24FEE1F40);
  sub_24FE58B7C(v110, &qword_27F3A52A8, &qword_24FEE1B38);
  sub_24FE58B7C(v136, &qword_27F3A5558, &qword_24FEE1F78);
  sub_24FE58B7C(v107, &qword_27F3A5528, &unk_24FEE1F40);
  sub_24FE58B7C(v106, &qword_27F3A52A8, &qword_24FEE1B38);
  memcpy(v139, v137, 0x139uLL);
  sub_24FE58B7C(v139, &qword_27F3A55A8, &qword_24FEE1F98);
  return sub_24FE58B7C(v105, &qword_27F3A5558, &qword_24FEE1F78);
}

uint64_t sub_24FE6AE48()
{
  v26 = type metadata accessor for DocumentParagraphElement(0);
  MEMORY[0x28223BE20](v26);
  v25 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54F0, &qword_24FEE1F20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for DocumentOutlineElement(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DocumentCodeBlockElement(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  type metadata accessor for TextGenerationView(0);
  v15 = DocumentViewModel.elements.getter();
  v16 = *(v15 + 16);
  if (v16)
  {
    v24 = v0;
    sub_24FE72D1C(v15 + 40 * v16 - 8, v28);

    sub_24FE71ADC(v28, v29);
    sub_24FE72D1C(v29, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54B0, &qword_24FEE1EE0);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v29);
      return sub_24FE73150(v14, type metadata accessor for DocumentCodeBlockElement);
    }

    sub_24FE72D1C(v29, v28);
    if (swift_dynamicCast())
    {
      (*(v6 + 56))(v4, 0, 1, v5);
      sub_24FE728F8(v4, v8, type metadata accessor for DocumentOutlineElement);
      v18 = *&v8[*(v5 + 20)];
      v19 = *(v18 + 16);
      if (v19 && (v20 = *(v18 + 8 * v19 + 24), (v21 = *(v20 + 16)) != 0))
      {
        sub_24FE72D1C(v20 + 40 * v21 - 8, v27);
        __swift_destroy_boxed_opaque_existential_1(v29);
        sub_24FE71ADC(v27, v28);
        sub_24FE71ADC(v28, v27);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54F8, &qword_24FEE1F28);
        if (swift_dynamicCast())
        {
          sub_24FE73150(v11, type metadata accessor for DocumentCodeBlockElement);
          return sub_24FE73150(v8, type metadata accessor for DocumentOutlineElement);
        }

        sub_24FE73150(v8, type metadata accessor for DocumentOutlineElement);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v29);
        sub_24FE73150(v8, type metadata accessor for DocumentOutlineElement);
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v29);
      (*(v6 + 56))(v4, 1, 1, v5);
      sub_24FE58B7C(v4, &qword_27F3A54F0, &qword_24FEE1F20);
    }
  }

  else
  {
  }

  v22 = *(DocumentViewModel.elements.getter() + 16);

  if (v22 == 1)
  {
    result = DocumentViewModel.elements.getter();
    if (*(result + 16))
    {
      sub_24FE72D1C(result + 32, v29);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54B0, &qword_24FEE1EE0);
      v23 = v25;
      result = swift_dynamicCast();
      if (result)
      {
        return sub_24FE73150(v23, type metadata accessor for DocumentParagraphElement);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_24FE6B338(uint64_t a3@<X8>)
{
  v4 = sub_24FEDD424();
  v41 = 1;
  sub_24FE6ED48(&v27);
  v52 = v37;
  v53 = v38;
  v48 = v33;
  v49 = v34;
  v50 = v35;
  v51 = v36;
  v44 = v29;
  v45 = v30;
  v46 = v31;
  v47 = v32;
  v42 = v27;
  v43 = v28;
  v55[10] = v37;
  v55[11] = v38;
  v55[6] = v33;
  v55[7] = v34;
  v55[8] = v35;
  v55[9] = v36;
  v55[2] = v29;
  v55[3] = v30;
  v55[4] = v31;
  v55[5] = v32;
  v54 = v39;
  v56 = v39;
  v55[0] = v27;
  v55[1] = v28;
  sub_24FE58B14(&v42, &v26, &qword_27F3A55D8, &qword_24FEE1FE0);
  sub_24FE58B7C(v55, &qword_27F3A55D8, &qword_24FEE1FE0);
  *&v40[151] = v51;
  *&v40[167] = v52;
  *&v40[183] = v53;
  *&v40[87] = v47;
  *&v40[103] = v48;
  *&v40[119] = v49;
  *&v40[135] = v50;
  *&v40[23] = v43;
  *&v40[39] = v44;
  *&v40[55] = v45;
  *&v40[71] = v46;
  *&v40[199] = v54;
  *&v40[7] = v42;
  v5 = v41;
  v6 = sub_24FEDD754();
  type metadata accessor for TextGenerationView(0);
  sub_24FEDD014();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  LOBYTE(v27) = 0;
  v15 = sub_24FEDD764();
  sub_24FEDD014();
  v16 = *&v40[128];
  *(a3 + 161) = *&v40[144];
  v17 = *&v40[176];
  *(a3 + 177) = *&v40[160];
  *(a3 + 193) = v17;
  *(a3 + 208) = *&v40[191];
  v18 = *&v40[64];
  *(a3 + 97) = *&v40[80];
  v19 = *&v40[112];
  *(a3 + 113) = *&v40[96];
  *(a3 + 129) = v19;
  *(a3 + 145) = v16;
  v20 = *v40;
  *(a3 + 33) = *&v40[16];
  v21 = *&v40[48];
  *(a3 + 49) = *&v40[32];
  *(a3 + 65) = v21;
  *(a3 + 81) = v18;
  *a3 = v4;
  *(a3 + 8) = 0;
  *(a3 + 16) = v5;
  *(a3 + 17) = v20;
  *(a3 + 224) = v6;
  *(a3 + 232) = v8;
  *(a3 + 240) = v10;
  *(a3 + 248) = v12;
  *(a3 + 256) = v14;
  *(a3 + 264) = 0;
  *(a3 + 272) = v15;
  *(a3 + 280) = v22;
  *(a3 + 288) = v23;
  *(a3 + 296) = v24;
  *(a3 + 304) = v25;
  *(a3 + 312) = 0;
}